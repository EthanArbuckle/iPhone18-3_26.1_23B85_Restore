uint64_t sub_23D619750()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D619790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D6197F8()
{
  v0 = sub_23D61F700();
  __swift_allocate_value_buffer(v0, qword_27E2DFAB8);
  __swift_project_value_buffer(v0, qword_27E2DFAB8);
  return sub_23D61F6F0();
}

uint64_t MCLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D61F700();
  v3 = __swift_project_value_buffer(v2, qword_27E2DFAB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t MCLog.setter(uint64_t a1)
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v2 = sub_23D61F700();
  v3 = __swift_project_value_buffer(v2, qword_27E2DFAB8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*MCLog.modify())()
{
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v0 = sub_23D61F700();
  __swift_project_value_buffer(v0, qword_27E2DFAB8);
  swift_beginAccess();
  return j__swift_endAccess;
}

id AXMotionCueSharedInstance.getter()
{
  if (qword_281341250 != -1)
  {
    swift_once();
  }

  v1 = qword_281341258;

  return v1;
}

id sub_23D619B54()
{
  result = [objc_allocWithZone(type metadata accessor for AXMotionCuesService()) init];
  qword_281341258 = result;
  return result;
}

id static AXMotionCuesService.sharedInstance.getter()
{
  if (qword_281341250 != -1)
  {
    swift_once();
  }

  v1 = qword_281341258;

  return v1;
}

id sub_23D619CD4()
{
  v1 = OBJC_IVAR___AXMotionCuesService__client;
  v2 = *(v0 + OBJC_IVAR___AXMotionCuesService__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AXMotionCuesService__client);
LABEL_6:
    v15 = v2;
    return v3;
  }

  v4 = v0;
  sub_23D61F810();

  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_23D61F870();
  MEMORY[0x23EEE5A40](v6);

  v7 = *MEMORY[0x277CE7C48];
  sub_23D61F760();
  v8 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v9 = sub_23D61F750();

  v10 = sub_23D61F750();

  v11 = [v8 initWithIdentifier:v9 serviceBundleName:v10];

  v12 = *(v4 + v1);
  *(v4 + v1) = v11;

  result = *(v4 + v1);
  if (result)
  {
    result = [result setDelegate_];
    v14 = *(v4 + v1);
    if (v14)
    {
      v3 = v14;
      v2 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t AXMotionCuesService.enable(completionBlock:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_23D61F6E0();
  v11 = sub_23D61F7B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23D618000, v10, v11, "Client requested enable for Motion Cues", v12, 2u);
    MEMORY[0x23EEE5F30](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = sub_23D619CD4();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23D61A154;
  *(v15 + 24) = v14;
  aBlock[4] = sub_23D61D3C0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D61BA18;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  [v13 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v16];
  _Block_release(v16);
}

void sub_23D61A1B8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23D61F690();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t AXMotionCuesService.disable(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_23D61F6E0();
  v11 = sub_23D61F7B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23D618000, v10, v11, "Client requested disable for Motion Cues", v12, 2u);
    MEMORY[0x23EEE5F30](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v13 = sub_23D619CD4();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_23D61D3E0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_23D61F640;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D61BA18;
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  [v13 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v16];
  _Block_release(v16);
}

void sub_23D61A4EC(void *a1, char a2, void (*a3)(void, void), uint64_t a4, const char *a5, const char *a6)
{
  v12 = sub_23D61F700();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  if (a2)
  {
    v20 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v41 = a4;
    v21 = __swift_project_value_buffer(v12, qword_27E2DFAB8);
    swift_beginAccess();
    (*(v13 + 16))(v17, v21, v12);
    v22 = a1;
    v23 = sub_23D61F6E0();
    v24 = sub_23D61F7A0();
    sub_23D61F49C(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = a3;
      v27 = v26;
      *v25 = 138412290;
      sub_23D61F4A8();
      swift_allocError();
      *v28 = a1;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v30;
      *v27 = v30;
      _os_log_impl(&dword_23D618000, v23, v24, a5, v25, 0xCu);
      sub_23D61F1F8(v27, &qword_27E2DFA18, &qword_23D620030);
      v31 = v27;
      a3 = v40;
      MEMORY[0x23EEE5F30](v31, -1, -1);
      MEMORY[0x23EEE5F30](v25, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    sub_23D61F4A8();
    v32 = swift_allocError();
    *v33 = a1;
    v34 = a1;
    a3(0, v32);

    sub_23D61F49C(a1, 1);
  }

  else
  {
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v12, qword_27E2DFAB8);
    swift_beginAccess();
    (*(v13 + 16))(v19, v35, v12);
    v36 = sub_23D61F6E0();
    v37 = sub_23D61F7B0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23D618000, v36, v37, a6, v38, 2u);
      MEMORY[0x23EEE5F30](v38, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    a3(1, 0);
  }
}

uint64_t sub_23D61A91C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

Swift::Void __swiftcall AXMotionCuesService.simulateDeviceMotion(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_23D61F700();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v4 + 16))(v7, v8, v3);
  v9 = sub_23D61F6E0();
  v10 = sub_23D61F7B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23D618000, v9, v10, "Client requested to simulate device motion", v11, 2u);
    MEMORY[0x23EEE5F30](v11, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v12 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 1752457584;
  v19 = 0xE400000000000000;
  v14 = MEMORY[0x277D837D0];
  sub_23D61F7F0();
  *(inited + 96) = v14;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = object;

  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v15 = sub_23D61F710();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v22 = sub_23D61F640;
  v23 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_23D61BA18;
  v21 = &block_descriptor_20;
  v17 = _Block_copy(&aBlock);

  [v12 sendAsynchronousMessage:v15 withIdentifier:5 targetAccessQueue:0 completion:v17];
  _Block_release(v17);
}

uint64_t AXMotionCuesService.registerMotionCuesMoving(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a2;
  v40 = a1;
  v42 = a3;
  v5 = sub_23D61F700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D61F6D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v35 - v14;
  sub_23D61F6C0();
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v6 + 16))(v9, v15, v5);
  v16 = sub_23D61F6E0();
  v17 = sub_23D61F7B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23D618000, v16, v17, "Attempting to register handler for Motion Cues moving", v18, 2u);
    MEMORY[0x23EEE5F30](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v38 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 0x7265747369676572;
  v45 = 0xE800000000000000;
  sub_23D61F7F0();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v37 = sub_23D61F710();

  v36 = [objc_opt_self() mainAccessQueue];
  v20 = v39;
  (*(v11 + 16))(v39, v43, v10);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v10;
  v24 = swift_allocObject();
  v25 = *(v11 + 32);
  v25(v24 + v21, v20, v10);
  *(v24 + v22) = v4;
  v26 = (v24 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v41;
  *v26 = v40;
  v26[1] = v27;
  v48 = sub_23D61EC88;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_23D61BA18;
  v47 = &block_descriptor_26;
  v28 = _Block_copy(&aBlock);
  v29 = v4;

  v30 = v38;
  v31 = v37;
  v32 = v36;
  [v38 sendAsynchronousMessage:v37 withIdentifier:4 targetAccessQueue:v36 completion:v28];
  _Block_release(v28);

  v33 = v42;
  v25(v42, v43, v23);
  return (*(v11 + 56))(v33, 0, 1, v23);
}

uint64_t sub_23D61B2A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a3;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D61F700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v21 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v14, qword_27E2DFAB8);
    swift_beginAccess();
    v23 = v15;
    (*(v15 + 16))(v19, v22, v14);
    v24 = a1;
    v25 = sub_23D61F6E0();
    v26 = sub_23D61F7A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v14;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_23D618000, v25, v26, "Failed to register moving handler with error: %@", v28, 0xCu);
      sub_23D61F1F8(v29, &qword_27E2DFA18, &qword_23D620030);
      MEMORY[0x23EEE5F30](v29, -1, -1);
      v32 = v28;
      v14 = v27;
      MEMORY[0x23EEE5F30](v32, -1, -1);
    }

    else
    {
    }

    return (*(v23 + 8))(v19, v14);
  }

  else
  {
    v33 = &v55 - v20;
    v58 = a5;
    v59 = a4;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_27E2DFAB8);
    swift_beginAccess();
    v35 = v15;
    (*(v15 + 16))(v33, v34, v14);
    v36 = *(v10 + 16);
    v60 = a2;
    v37 = a2;
    v38 = v9;
    v39 = v33;
    v36(v13, v37, v38);
    v40 = sub_23D61F6E0();
    v41 = sub_23D61F7B0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v42 = 136315138;
      sub_23D61F390(&qword_27E2DFA20);
      v43 = sub_23D61F870();
      v57 = v14;
      v45 = v44;
      (*(v10 + 8))(v13, v38);
      v46 = sub_23D61D458(v43, v45, &v63);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_23D618000, v40, v41, "Motion Cues moving registration handler received: %s", v42, 0xCu);
      v47 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x23EEE5F30](v47, -1, -1);
      MEMORY[0x23EEE5F30](v42, -1, -1);

      (*(v35 + 8))(v39, v57);
    }

    else
    {

      (*(v10 + 8))(v13, v38);
      (*(v35 + 8))(v39, v14);
    }

    v49 = v58;
    v50 = swift_allocObject();
    *(v50 + 16) = v59;
    *(v50 + 24) = v49;
    v51 = OBJC_IVAR___AXMotionCuesService_movingHandlers;
    v52 = v61;
    swift_beginAccess();

    v53 = *(v52 + v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v52 + v51);
    *(v52 + v51) = 0x8000000000000000;
    sub_23D61E408(sub_23D61F65C, v50, v60, isUniquelyReferenced_nonNull_native);
    *(v52 + v51) = v62;
    return swift_endAccess();
  }
}

uint64_t sub_23D61B84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    sub_23D61E408(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v10 = sub_23D61F6D0();
    result = (*(*(v10 - 8) + 8))(a3, v10);
    *v3 = v26;
  }

  else
  {
    v12 = *v3;
    v13 = sub_23D61DA00(a3);
    if (v14)
    {
      v15 = v13;
      v16 = *v4;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      v27 = *v4;
      if (!v17)
      {
        sub_23D61E6A4();
        v18 = v27;
      }

      v19 = *(v18 + 48);
      v20 = sub_23D61F6D0();
      v21 = *(v20 - 8);
      v22 = *(v21 + 8);
      v22(v19 + *(v21 + 72) * v15, v20);
      v23 = *(*(v18 + 56) + 16 * v15 + 8);

      sub_23D61E100(v15, v18);
      result = (v22)(a3, v20);
      *v4 = v18;
    }

    else
    {
      v24 = sub_23D61F6D0();
      v25 = *(*(v24 - 8) + 8);

      return v25(a3, v24);
    }
  }

  return result;
}

uint64_t sub_23D61BA18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23D61F720();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t AXMotionCuesService.registerMotionCuesVisible(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = v3;
  v41 = a2;
  v40 = a1;
  v42 = a3;
  v5 = sub_23D61F700();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D61F6D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v39 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v43 = &v35 - v14;
  sub_23D61F6C0();
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v6 + 16))(v9, v15, v5);
  v16 = sub_23D61F6E0();
  v17 = sub_23D61F7B0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23D618000, v16, v17, "Attempting to register handler for Motion Cues visible", v18, 2u);
    MEMORY[0x23EEE5F30](v18, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v38 = sub_23D619CD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF900, &qword_23D61FF80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D61FF70;
  aBlock = 0x7265747369676572;
  v45 = 0xE800000000000000;
  sub_23D61F7F0();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  sub_23D61EB0C(inited);
  swift_setDeallocating();
  sub_23D61F1F8(inited + 32, &qword_27E2DF908, &qword_23D61FF88);
  v37 = sub_23D61F710();

  v36 = [objc_opt_self() mainAccessQueue];
  v20 = v39;
  (*(v11 + 16))(v39, v43, v10);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = v10;
  v24 = swift_allocObject();
  v25 = *(v11 + 32);
  v25(v24 + v21, v20, v10);
  *(v24 + v22) = v4;
  v26 = (v24 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v41;
  *v26 = v40;
  v26[1] = v27;
  v48 = sub_23D61ED50;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_23D61BA18;
  v47 = &block_descriptor_32;
  v28 = _Block_copy(&aBlock);
  v29 = v4;

  v30 = v38;
  v31 = v37;
  v32 = v36;
  [v38 sendAsynchronousMessage:v37 withIdentifier:3 targetAccessQueue:v36 completion:v28];
  _Block_release(v28);

  v33 = v42;
  v25(v42, v43, v23);
  return (*(v11 + 56))(v33, 0, 1, v23);
}

uint64_t sub_23D61C058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a3;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D61F700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v21 = a1;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v14, qword_27E2DFAB8);
    swift_beginAccess();
    v23 = v15;
    (*(v15 + 16))(v19, v22, v14);
    v24 = a1;
    v25 = sub_23D61F6E0();
    v26 = sub_23D61F7A0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v14;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_23D618000, v25, v26, "Failed to register visible handler with error: %@", v28, 0xCu);
      sub_23D61F1F8(v29, &qword_27E2DFA18, &qword_23D620030);
      MEMORY[0x23EEE5F30](v29, -1, -1);
      v32 = v28;
      v14 = v27;
      MEMORY[0x23EEE5F30](v32, -1, -1);
    }

    else
    {
    }

    return (*(v23 + 8))(v19, v14);
  }

  else
  {
    v33 = &v55 - v20;
    v58 = a5;
    v59 = a4;
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v14, qword_27E2DFAB8);
    swift_beginAccess();
    v35 = v15;
    (*(v15 + 16))(v33, v34, v14);
    v36 = *(v10 + 16);
    v60 = a2;
    v37 = a2;
    v38 = v9;
    v39 = v33;
    v36(v13, v37, v38);
    v40 = sub_23D61F6E0();
    v41 = sub_23D61F7B0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v63 = v56;
      *v42 = 136315138;
      sub_23D61F390(&qword_27E2DFA20);
      v43 = sub_23D61F870();
      v57 = v14;
      v45 = v44;
      (*(v10 + 8))(v13, v38);
      v46 = sub_23D61D458(v43, v45, &v63);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_23D618000, v40, v41, "Motion cues visible registration handler received %s", v42, 0xCu);
      v47 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x23EEE5F30](v47, -1, -1);
      MEMORY[0x23EEE5F30](v42, -1, -1);

      (*(v35 + 8))(v39, v57);
    }

    else
    {

      (*(v10 + 8))(v13, v38);
      (*(v35 + 8))(v39, v14);
    }

    v49 = v58;
    v50 = swift_allocObject();
    *(v50 + 16) = v59;
    *(v50 + 24) = v49;
    v51 = OBJC_IVAR___AXMotionCuesService_visibleHandlers;
    v52 = v61;
    swift_beginAccess();

    v53 = *(v52 + v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = *(v52 + v51);
    *(v52 + v51) = 0x8000000000000000;
    sub_23D61E408(sub_23D61F364, v50, v60, isUniquelyReferenced_nonNull_native);
    *(v52 + v51) = v62;
    return swift_endAccess();
  }
}

id sub_23D61C630(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF9F0, &qword_23D620018);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = a1;
  a6(a5, v15);

  v17 = sub_23D61F6D0();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v13, 1, v17);
  v20 = 0;
  if (v19 != 1)
  {
    v21 = sub_23D61F6A0();
    (*(v18 + 8))(v13, v17);
    v20 = v21;
  }

  return v20;
}

uint64_t sub_23D61C7B8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_23D61F6D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  swift_beginAccess();
  sub_23D61B84C(0, 0, v7);
  return swift_endAccess();
}

uint64_t sub_23D61C8BC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_23D61F6D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  sub_23D61F6B0();
  (*(v7 + 16))(v11, v13, v6);
  v14 = *a4;
  swift_beginAccess();
  v15 = a1;
  sub_23D61B84C(0, 0, v11);
  swift_endAccess();

  return (*(v7 + 8))(v13, v6);
}

id AXMotionCuesService.userInterfaceClient(_:accessQueueForProcessingMessageWithIdentifier:)()
{
  v0 = [objc_opt_self() mainAccessQueue];

  return v0;
}

void AXMotionCuesService.connectionWithServiceWasInterrupted(forUserInterfaceClient:)(id a1)
{
  v2 = v1;
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = sub_23D619CD4();

  if (a1 && v12 == a1)
  {
    if (qword_27E2DFAB0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
    swift_beginAccess();
    v14 = v5[2];
    v14(v11, v13, v4);
    v15 = sub_23D61F6E0();
    v16 = sub_23D61F7A0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = v2;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_23D618000, v15, v16, "Connection to Motion Cues UI Service was interrupted", v17, 2u);
      MEMORY[0x23EEE5F30](v18, -1, -1);
    }

    v19 = v5[1];
    v19(v11, v4);
    if (_AXSMotionCuesEnabled())
    {
      v14(v9, v13, v4);
      v20 = sub_23D61F6E0();
      v21 = sub_23D61F790();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23D618000, v20, v21, "Motion Cues still enabled. Will attempt to relaunch", v22, 2u);
        MEMORY[0x23EEE5F30](v22, -1, -1);
      }

      v19(v9, v4);
      AXMotionCuesService.enable(completionBlock:)(sub_23D61CEC0, 0);
    }
  }
}

uint64_t sub_23D61CEC0(char a1, void *a2)
{
  v4 = sub_23D61F700();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DFAB0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27E2DFAB8);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a2;
  v11 = sub_23D61F6E0();
  v12 = sub_23D61F7B0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 67109378;
    *(v13 + 4) = a1 & 1;
    *(v13 + 8) = 2112;
    if (a2)
    {
      v15 = a2;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      v17 = v16;
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    *(v13 + 10) = v16;
    *v14 = v17;
    _os_log_impl(&dword_23D618000, v11, v12, "Enabled Motion Cues: success %{BOOL}d, error %@", v13, 0x12u);
    sub_23D61F1F8(v14, &qword_27E2DFA18, &qword_23D620030);
    MEMORY[0x23EEE5F30](v14, -1, -1);
    MEMORY[0x23EEE5F30](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

id AXMotionCuesService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23D61D208()
{
  v1 = *v0;
  MEMORY[0x23EEE5A40](0x6F72724520435049, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2DFA40, &qword_23D6200F8);
  sub_23D61F830();
  return 0;
}

uint64_t sub_23D61D2B4(uint64_t result, void *a2, void (*a3)(void *, uint64_t))
{
  if (a3)
  {
    if (a2)
    {
      sub_23D61F4FC(a3);
      v5 = a2;
      a3(a2, 1);

      return sub_23D61F50C(a3);
    }

    else
    {
      v6 = result;
      if (result)
      {

        v7 = v6;
      }

      else
      {
        sub_23D61F4FC(a3);
        v7 = sub_23D61EB0C(MEMORY[0x277D84F90]);
      }

      a3(v7, 0);
      sub_23D61F50C(a3);
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23D61D458(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D61D524(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_23D61F2AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23D61D524(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D61D630(a5, a6);
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
    result = sub_23D61F820();
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

uint64_t sub_23D61D630(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D61D67C(a1, a2);
  sub_23D61D7AC(&unk_284FAA058);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D61D67C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23D61D898(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23D61F820();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23D61F780();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D61D898(v10, 0);
        result = sub_23D61F800();
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

uint64_t sub_23D61D7AC(uint64_t result)
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

  result = sub_23D61D90C(result, v12, 1, v3);
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

void *sub_23D61D898(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA28, &qword_23D620038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D61D90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA28, &qword_23D620038);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_23D61DA00(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23D61F6D0();
  sub_23D61F390(&qword_27E2DFA08);
  v5 = sub_23D61F730();

  return sub_23D61DAC8(a1, v5);
}

unint64_t sub_23D61DA84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D61F7D0();

  return sub_23D61DC74(a1, v5);
}

unint64_t sub_23D61DAC8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23D61F6D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_23D61F390(&qword_27E2DFA10);
      v16 = sub_23D61F740();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_23D61DC74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D61F308(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEE5AB0](v9, a1);
      sub_23D61F258(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_23D61DD3C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23D61F6D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
  v42 = a2;
  result = sub_23D61F850();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_23D61F390(&qword_27E2DFA08);
      result = sub_23D61F730();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_23D61E100(int64_t a1, uint64_t a2)
{
  v43 = sub_23D61F6D0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23D61F7C0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23D61F390(&qword_27E2DFA08);
      v26 = sub_23D61F730();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_23D61E408(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v31 = a1;
  v9 = sub_23D61F6D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_23D61DA00(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_23D61E6A4();
      goto LABEL_9;
    }

    sub_23D61DD3C(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_23D61DA00(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23D61F880();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v31;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = v27[1];
    *v27 = v31;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_23D61E5E4(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_23D61E5E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_23D61F6D0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_23D61E6A4()
{
  v1 = v0;
  v31 = sub_23D61F6D0();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
  v4 = *v0;
  v5 = sub_23D61F840();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_23D61E924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DF9F8, &qword_23D620020);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA00, &qword_23D620028);
    v8 = sub_23D61F860();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23D61F424(v10, v6, &qword_27E2DF9F8, &qword_23D620020);
      result = sub_23D61DA00(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23D61F6D0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23D61EB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DFA30, qword_23D620040);
    v3 = sub_23D61F860();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D61F424(v4, v13, &qword_27E2DF908, &qword_23D61FF88);
      result = sub_23D61DA84(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23D61F48C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_22Tm()
{
  v1 = sub_23D61F6D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_23D61ED68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(sub_23D61F6D0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a2, v3 + v6, v8, v10, v11);
}

uint64_t sub_23D61EE28(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    v20 = OBJC_IVAR___AXMotionCuesService_movingHandlers;
    swift_beginAccess();
    v21 = *(v2 + v20);
    v22 = 1 << *(v21 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(v21 + 64);
    v25 = (v22 + 63) >> 6;
    v26 = *(v2 + v20);

    v27 = 0;
    if (!v24)
    {
      do
      {
LABEL_28:
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v34 >= v25)
        {
LABEL_37:

          return sub_23D61EB0C(MEMORY[0x277D84F90]);
        }

        v24 = *(v21 + 64 + 8 * v34);
        ++v27;
      }

      while (!v24);
      v27 = v34;
      if (a1)
      {
        goto LABEL_24;
      }

      goto LABEL_41;
    }

    while (1)
    {
      if (!a1)
      {
        goto LABEL_41;
      }

LABEL_24:
      v28 = *(v21 + 56) + ((v27 << 10) | (16 * __clz(__rbit64(v24))));
      v29 = *v28;
      v30 = *(v28 + 8);
      v36 = 0x676E69766F6DLL;
      v37 = 0xE600000000000000;

      sub_23D61F7F0();
      if (!*(a1 + 16))
      {
        break;
      }

      v31 = sub_23D61DA84(v35);
      if ((v32 & 1) == 0)
      {
        break;
      }

      sub_23D61F2AC(*(a1 + 56) + 32 * v31, &v36);
      sub_23D61F258(v35);
      if (!swift_dynamicCast())
      {
        goto LABEL_34;
      }

      v33 = v38;
LABEL_35:
      v24 &= v24 - 1;
      v35[0] = v33;
      v29(v35);

      if (!v24)
      {
        goto LABEL_28;
      }
    }

    sub_23D61F258(v35);
LABEL_34:
    v33 = 0;
    goto LABEL_35;
  }

  if (a2 != 6)
  {
    return sub_23D61EB0C(MEMORY[0x277D84F90]);
  }

  v4 = OBJC_IVAR___AXMotionCuesService_visibleHandlers;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v2 + v4);

  v12 = 0;
  if (v8)
  {
    while (1)
    {
      if (!a1)
      {
        goto LABEL_42;
      }

LABEL_7:
      v13 = *(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8))));
      v14 = *v13;
      v15 = *(v13 + 8);
      v36 = 0x656C6269736976;
      v37 = 0xE700000000000000;

      sub_23D61F7F0();
      if (!*(a1 + 16))
      {
        break;
      }

      v16 = sub_23D61DA84(v35);
      if ((v17 & 1) == 0)
      {
        break;
      }

      sub_23D61F2AC(*(a1 + 56) + 32 * v16, &v36);
      sub_23D61F258(v35);
      if (!swift_dynamicCast())
      {
        goto LABEL_17;
      }

      v18 = v38;
LABEL_18:
      v8 &= v8 - 1;
      v35[0] = v18;
      v14(v35);

      if (!v8)
      {
        goto LABEL_11;
      }
    }

    sub_23D61F258(v35);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

LABEL_11:
  while (1)
  {
    v19 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v19 >= v9)
    {
      goto LABEL_37;
    }

    v8 = *(v5 + 64 + 8 * v19);
    ++v12;
    if (v8)
    {
      v12 = v19;
      if (a1)
      {
        goto LABEL_7;
      }

      goto LABEL_42;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_23D61F1F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23D61F2AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D61F364(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_23D61F390(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23D61F6D0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23D61F424(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_23D61F48C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_23D61F49C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_23D61F4A8()
{
  result = qword_27E2DFA38;
  if (!qword_27E2DFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DFA38);
  }

  return result;
}

uint64_t sub_23D61F4FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D61F50C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_23D61F58C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23D61F5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}