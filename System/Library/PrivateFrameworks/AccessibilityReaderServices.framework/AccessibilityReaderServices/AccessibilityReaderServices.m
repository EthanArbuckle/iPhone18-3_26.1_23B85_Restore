uint64_t sub_23D8237B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t AccessibilityReaderError.message.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t AccessibilityReaderError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D8297EC();

  MEMORY[0x23EEED950](v1, v2);
  return 0xD00000000000001ALL;
}

unint64_t sub_23D8238D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23D8297EC();

  MEMORY[0x23EEED950](v1, v2);
  return 0xD00000000000001ALL;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23D823958(uint64_t a1, int a2)
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

uint64_t sub_23D8239A0(uint64_t result, int a2, int a3)
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

AccessibilityReaderServices::AccessibilityReaderAXUIServiceMessageID_optional __swiftcall AccessibilityReaderAXUIServiceMessageID.init(identifier:)(Swift::Int identifier)
{
  v2 = 0x5040302010006uLL >> (8 * identifier);
  if (identifier >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return identifier;
}

unint64_t sub_23D823A3C()
{
  result = qword_27E2EC720;
  if (!qword_27E2EC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EC720);
  }

  return result;
}

uint64_t sub_23D823A90()
{
  v1 = *v0;
  sub_23D8298EC();
  MEMORY[0x23EEEDB40](v1 + 1);
  return sub_23D82990C();
}

uint64_t sub_23D823B08()
{
  v1 = *v0;
  sub_23D8298EC();
  MEMORY[0x23EEEDB40](v1 + 1);
  return sub_23D82990C();
}

unint64_t sub_23D823B64(uint64_t a1)
{
  result = sub_23D823B8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23D823B8C()
{
  result = qword_27E2EC728;
  if (!qword_27E2EC728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EC728);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityReaderAXUIServiceMessageID(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityReaderAXUIServiceMessageID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_23D823DB8()
{
  v1 = OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client;
  v2 = *&v0[OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client];
  if (v2)
  {
    [v2 setDelegate_];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessibilityReaderServiceAXUIService();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_23D823E60(char a1)
{
  *(v1 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderUIViewEnabled) = a1;
  if (a1)
  {

LABEL_7:
    _AXSTripleClickRemoveOption();
    return;
  }

  v2 = _AXSTripleClickCopyOptions();
  v3 = _AXSTripleClickContainsOption();

  sub_23D82976C();
  v4 = MEMORY[0x23EEED9A0]();
  v5 = *MEMORY[0x277CE7930];
  if (v3)
  {
    swift_beginAccess();
    v6 = *&v4[v5];

    v7 = sub_23D82974C();
    if (v7)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_beginAccess();
  v8 = *&v4[v5];

  v9 = sub_23D82974C();
  if (v9)
  {
    _AXSTripleClickAddOption();
  }
}

void sub_23D823F6C()
{
  v1 = OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client;
  v2 = *(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client);
LABEL_7:
    v14 = v2;
    return;
  }

  v4 = v0;
  v5 = [objc_opt_self() processInfo];
  [v5 processIdentifier];

  v6 = sub_23D82986C();
  MEMORY[0x23EEED950](v6);

  v7 = objc_allocWithZone(MEMORY[0x277CE7740]);
  v8 = sub_23D8296EC();

  v9 = sub_23D8296EC();
  v10 = [v7 initWithIdentifier:v8 serviceBundleName:v9];

  v11 = *(v4 + v1);
  *(v4 + v1) = v10;
  v12 = v10;

  if (v12)
  {
    [v12 setDelegate_];
  }

  v13 = *(v4 + v1);
  if (v13)
  {
    v13;
    v2 = 0;
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23D824100()
{
  v1 = v0;
  v2 = sub_23D8296AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27E2EC830);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_23D82968C();
  v9 = sub_23D82979C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_23D822000, v8, v9, "Client requesting Accessibility Reader start", v10, 2u);
    MEMORY[0x23EEEDF00](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_23D823F6C();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_23D82678C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_23D82680C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D825F1C;
  aBlock[3] = &block_descriptor_45;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  [v12 sendAsynchronousMessage:0 withIdentifier:1 targetAccessQueue:0 completion:v15];
  _Block_release(v15);
}

void sub_23D8243B8()
{
  v1 = v0;
  v2 = sub_23D8296AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &aBlock[-1] - v8;
  if (*(v1 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderEnabled))
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v2, qword_27E2EC830);
    swift_beginAccess();
    (*(v3 + 16))(v7, v10, v2);
    v11 = sub_23D82968C();
    v12 = sub_23D82979C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23D822000, v11, v12, "Client requesting Accessibility Reader stop", v13, 2u);
      MEMORY[0x23EEEDF00](v13, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    sub_23D823F6C();
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_23D826758;
    *(v17 + 24) = v16;
    aBlock[4] = sub_23D82680C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D825F1C;
    aBlock[3] = &block_descriptor_35;
    v18 = _Block_copy(aBlock);
    v19 = v1;

    [v15 sendAsynchronousMessage:0 withIdentifier:2 targetAccessQueue:0 completion:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v2, qword_27E2EC830);
    swift_beginAccess();
    (*(v3 + 16))(v9, v20, v2);
    v21 = sub_23D82968C();
    v22 = sub_23D82977C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23D822000, v21, v22, "Accessibility Reader was never started, no need to stop", v23, 2u);
      MEMORY[0x23EEEDF00](v23, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_23D824794(void *a1, char a2, uint64_t a3, const char *a4, const char *a5, char a6)
{
  v12 = sub_23D8296AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  if (a2)
  {
    v20 = a1;
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v12, qword_27E2EC830);
    swift_beginAccess();
    (*(v13 + 16))(v17, v21, v12);
    v22 = a1;
    v23 = sub_23D82968C();
    v24 = sub_23D82978C();
    sub_23D826684(a1, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      sub_23D826690();
      swift_allocError();
      *v27 = a1;
      v28 = a1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v29;
      *v26 = v29;
      _os_log_impl(&dword_23D822000, v23, v24, a4, v25, 0xCu);
      sub_23D8266E4(v26);
      MEMORY[0x23EEEDF00](v26, -1, -1);
      MEMORY[0x23EEEDF00](v25, -1, -1);

      sub_23D826684(a1, 1);
    }

    else
    {
      sub_23D826684(a1, 1);
    }

    return (*(v13 + 8))(v17, v12);
  }

  else
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v12, qword_27E2EC830);
    swift_beginAccess();
    (*(v13 + 16))(v19, v30, v12);
    v31 = sub_23D82968C();
    v32 = sub_23D82979C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_23D822000, v31, v32, a5, v33, 2u);
      MEMORY[0x23EEEDF00](v33, -1, -1);
    }

    result = (*(v13 + 8))(v19, v12);
    *(a3 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderEnabled) = a6;
  }

  return result;
}

void sub_23D824B30()
{
  v1 = v0;
  v2 = sub_23D8296AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  sub_23D82976C();
  v10 = MEMORY[0x23EEED9A0]();
  v11 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v12 = *(v10 + v11);

  LOBYTE(v10) = sub_23D82974C();
  if (v10)
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_27E2EC830);
    swift_beginAccess();
    (*(v3 + 16))(v7, v13, v2);
    v14 = sub_23D82968C();
    v15 = sub_23D82979C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23D822000, v14, v15, "Client requesting to show Accessibility Reader UI View", v16, 2u);
      MEMORY[0x23EEEDF00](v16, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    sub_23D823F6C();
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23D82674C;
    *(v20 + 24) = v19;
    aBlock[4] = sub_23D82680C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D825F1C;
    aBlock[3] = &block_descriptor_25;
    v21 = _Block_copy(aBlock);
    v22 = v1;

    [v18 sendAsynchronousMessage:0 withIdentifier:5 targetAccessQueue:0 completion:v21];
    _Block_release(v21);
  }

  else
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v2, qword_27E2EC830);
    swift_beginAccess();
    (*(v3 + 16))(v9, v23, v2);
    v24 = sub_23D82968C();
    v25 = sub_23D82977C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23D822000, v24, v25, "Accessibility Reader is not enabled. Cannot show UI", v26, 2u);
      MEMORY[0x23EEEDF00](v26, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
  }
}

uint64_t sub_23D824F58(void *a1, char a2, uint64_t a3)
{
  v6 = sub_23D8296AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  if (a2)
  {
    v14 = a1;
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_27E2EC830);
    swift_beginAccess();
    (*(v7 + 16))(v11, v15, v6);
    v16 = a1;
    v17 = sub_23D82968C();
    v18 = sub_23D82978C();
    sub_23D826684(a1, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_23D826690();
      swift_allocError();
      *v21 = a1;
      v22 = a1;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v23;
      *v20 = v23;
      _os_log_impl(&dword_23D822000, v17, v18, "Failed to show Accessibility Reader UI View: %@", v19, 0xCu);
      sub_23D8266E4(v20);
      MEMORY[0x23EEEDF00](v20, -1, -1);
      MEMORY[0x23EEEDF00](v19, -1, -1);

      sub_23D826684(a1, 1);
    }

    else
    {
      sub_23D826684(a1, 1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v6, qword_27E2EC830);
    swift_beginAccess();
    (*(v7 + 16))(v13, v24, v6);
    v25 = sub_23D82968C();
    v26 = sub_23D82979C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_23D822000, v25, v26, "Client received a show Accessibility Reader UI View success callback", v27, 2u);
      MEMORY[0x23EEEDF00](v27, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    *(a3 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService_accessibilityReaderUIViewEnabled) = 1;
    return _AXSTripleClickRemoveOption();
  }
}

void sub_23D8252FC()
{
  v0 = sub_23D8296AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D823E60(0);
  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E2EC830);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_23D82968C();
  v7 = sub_23D82979C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23D822000, v6, v7, "Client requesting to hide Accessibility Reader UI View", v8, 2u);
    MEMORY[0x23EEEDF00](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_23D823F6C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_23D82558C;
  *(v11 + 24) = 0;
  aBlock[4] = sub_23D826664;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D825F1C;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [v10 sendAsynchronousMessage:0 withIdentifier:6 targetAccessQueue:0 completion:v12];
  _Block_release(v12);
}

uint64_t sub_23D82558C(void *a1, char a2)
{
  v4 = sub_23D8296AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  if (a2)
  {
    v12 = a1;
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_27E2EC830);
    swift_beginAccess();
    (*(v5 + 16))(v9, v13, v4);
    v14 = a1;
    v15 = sub_23D82968C();
    v16 = sub_23D82978C();
    sub_23D826684(a1, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_23D826690();
      swift_allocError();
      *v19 = a1;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v21;
      *v18 = v21;
      _os_log_impl(&dword_23D822000, v15, v16, "Failed to hide Accessibility Reader UI View: %@", v17, 0xCu);
      sub_23D8266E4(v18);
      MEMORY[0x23EEEDF00](v18, -1, -1);
      MEMORY[0x23EEEDF00](v17, -1, -1);

      sub_23D826684(a1, 1);
    }

    else
    {
      sub_23D826684(a1, 1);
    }
  }

  else
  {
    if (qword_27E2EC710 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_27E2EC830);
    swift_beginAccess();
    (*(v5 + 16))(v11, v22, v4);
    v23 = sub_23D82968C();
    v24 = sub_23D82979C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23D822000, v23, v24, "Client received a hide Accessibility Reader UI View success callback", v25, 2u);
      MEMORY[0x23EEEDF00](v25, -1, -1);
    }

    v9 = v11;
  }

  return (*(v5 + 8))(v9, v4);
}

void sub_23D825944(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D8296AC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC27AccessibilityReaderServices37AccessibilityReaderServiceAXUIService__client);
  if (a1)
  {
    if (v13)
    {
      v14 = v13 == a1;
    }

    else
    {
      v14 = 0;
    }

    if (!v14)
    {
      return;
    }
  }

  else if (v13)
  {
    return;
  }

  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_27E2EC830);
  swift_beginAccess();
  v27 = v5[2];
  v28 = v15;
  v27(v12, v15, v4);
  v16 = sub_23D82968C();
  v17 = sub_23D82978C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23D822000, v16, v17, "Connection to Accessibility Reader UI Service was interrupted", v18, 2u);
    MEMORY[0x23EEEDF00](v18, -1, -1);
  }

  v19 = v5[1];
  v19(v12, v4);
  sub_23D82976C();
  v20 = MEMORY[0x23EEED9A0]();
  v21 = *MEMORY[0x277CE7930];
  swift_beginAccess();
  v22 = *(v20 + v21);

  LOBYTE(v20) = sub_23D82974C();
  if (v20)
  {
    v27(v10, v28, v4);
    v23 = sub_23D82968C();
    v24 = sub_23D82977C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23D822000, v23, v24, "Accessibility Reader still enabled. Will attempt to relaunch", v25, 2u);
      MEMORY[0x23EEEDF00](v25, -1, -1);
    }

    v19(v10, v4);
    sub_23D824100();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23D825F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_23D8296BC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_23D825FC8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23D8260E0(v11, 0, 0, 1, a1, a2);
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
    sub_23D8261EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
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

unint64_t sub_23D8260E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23D826248(a5, a6);
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
    result = sub_23D8297FC();
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

uint64_t sub_23D8261EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23D826248(uint64_t a1, unint64_t a2)
{
  v4 = sub_23D826294(a1, a2);
  sub_23D8263C4(&unk_284FD1BA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23D826294(uint64_t a1, unint64_t a2)
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

  v6 = sub_23D8264B0(v5, 0);
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

  result = sub_23D8297FC();
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
        v10 = sub_23D82971C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23D8264B0(v10, 0);
        result = sub_23D8297DC();
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

uint64_t sub_23D8263C4(uint64_t result)
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

  result = sub_23D826524(result, v12, 1, v3);
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

void *sub_23D8264B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC7B0, &qword_23D82A438);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23D826524(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC7B0, &qword_23D82A438);
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23D826684(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_23D826690()
{
  result = qword_27E2EC7B8;
  if (!qword_27E2EC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EC7B8);
  }

  return result;
}

uint64_t sub_23D8266E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EC7C0, &unk_23D82A440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D826820()
{
  v0 = sub_23D8296AC();
  __swift_allocate_value_buffer(v0, qword_27E2EC830);
  __swift_project_value_buffer(v0, qword_27E2EC830);
  return sub_23D82969C();
}

uint64_t AXRLog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v2 = sub_23D8296AC();
  v3 = __swift_project_value_buffer(v2, qword_27E2EC830);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t AXRLog.setter(uint64_t a1)
{
  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v2 = sub_23D8296AC();
  v3 = __swift_project_value_buffer(v2, qword_27E2EC830);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*AXRLog.modify())()
{
  if (qword_27E2EC710 != -1)
  {
    swift_once();
  }

  v0 = sub_23D8296AC();
  __swift_project_value_buffer(v0, qword_27E2EC830);
  swift_beginAccess();
  return j__swift_endAccess;
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

id AccessibilityReader.getter()
{
  if (qword_2814FBAD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814FBAE0;

  return v1;
}

id sub_23D826BA4()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityReaderService()) init];
  qword_2814FBAE0 = result;
  return result;
}

id static AccessibilityReaderService.sharedInstance.getter()
{
  if (qword_2814FBAD8 != -1)
  {
    swift_once();
  }

  v1 = qword_2814FBAE0;

  return v1;
}

id AccessibilityReaderService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilityReaderService.startAccessibilityReader()()
{
  sub_23D826DDC(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_23D826DDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilityReaderService.stopAccessibilityReader()()
{
  sub_23D826DDC(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilityReaderService.showAccessibilityReaderUIView()()
{
  sub_23D826DDC(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 24))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilityReaderService.hideAccessibilityReaderUIView()()
{
  sub_23D826DDC(v0 + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v3);
  v1 = v4;
  v2 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_23D8273E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x4449656C646E7562;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000022;
    }

    else
    {
      v4 = 0x49737365636F7270;
    }

    if (v3 == 2)
    {
      v5 = 0x800000023D829F20;
    }

    else
    {
      v5 = 0xE900000000000044;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x4449656E656373;
    }

    else
    {
      v4 = 0x4449656C646E7562;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000022;
  v8 = 0x800000023D829F20;
  if (a2 != 2)
  {
    v7 = 0x49737365636F7270;
    v8 = 0xE900000000000044;
  }

  if (a2)
  {
    v2 = 0x4449656E656373;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D82987C();
  }

  return v11 & 1;
}

uint64_t sub_23D82752C()
{
  v1 = *v0;
  MEMORY[0x23EEED950](0x6F72724520435049, 0xEB00000000203A72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC868, &unk_23D82A6E0);
  sub_23D82980C();
  return 0;
}

AccessibilityReaderServices::AccessibilityReaderMessageKey_optional __swiftcall AccessibilityReaderMessageKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23D82985C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AccessibilityReaderMessageKey.rawValue.getter()
{
  v1 = 0x4449656C646E7562;
  v2 = 0xD000000000000022;
  if (*v0 != 2)
  {
    v2 = 0x49737365636F7270;
  }

  if (*v0)
  {
    v1 = 0x4449656E656373;
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

void sub_23D8276C0(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4449656C646E7562;
  v4 = 0x800000023D829F20;
  v5 = 0xD000000000000022;
  if (*v1 != 2)
  {
    v5 = 0x49737365636F7270;
    v4 = 0xE900000000000044;
  }

  if (*v1)
  {
    v3 = 0x4449656E656373;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23D827748()
{
  v1 = *v0;
  sub_23D8298EC();
  sub_23D8296FC();

  return sub_23D82990C();
}

uint64_t sub_23D827814()
{
  *v0;
  *v0;
  *v0;
  sub_23D8296FC();
}

uint64_t sub_23D8278CC()
{
  v1 = *v0;
  sub_23D8298EC();
  sub_23D8296FC();

  return sub_23D82990C();
}

unint64_t sub_23D8279C4()
{
  result = qword_27E2EC850;
  if (!qword_27E2EC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EC850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityReaderMessageKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityReaderMessageKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D827B68(uint64_t result, void *a2, void (*a3)(void *, uint64_t))
{
  if (a3)
  {
    if (a2)
    {
      sub_23D82814C(a3);
      v5 = a2;
      a3(a2, 1);

      return sub_23D82815C(a3);
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
        sub_23D82814C(a3);
        v7 = sub_23D828030(MEMORY[0x277D84F90]);
      }

      a3(v7, 0);
      sub_23D82815C(a3);
    }
  }

  return result;
}

unint64_t sub_23D827C74(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_23D8298EC();
  sub_23D8296FC();

  v4 = sub_23D82990C();

  return sub_23D827DAC(a1, v4);
}

unint64_t sub_23D827D68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23D8297BC();

  return sub_23D827F68(a1, v5);
}

unint64_t sub_23D827DAC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000022 : 0x49737365636F7270;
      v8 = v6 == 2 ? 0x800000023D829F20 : 0xE900000000000044;
      v9 = *(*(v2 + 48) + v4) ? 0x4449656E656373 : 0x4449656C646E7562;
      v10 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE800000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0xD000000000000022 : 0x49737365636F7270;
      v14 = v5 == 2 ? 0x800000023D829F20 : 0xE900000000000044;
      v15 = v5 ? 0x4449656E656373 : 0x4449656C646E7562;
      v16 = v5 ? 0xE700000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_23D82987C();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23D827F68(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D8281EC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEEDA10](v9, a1);
      sub_23D828248(v9);
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

unint64_t sub_23D828030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC858, &qword_23D82A5F0);
    v3 = sub_23D82984C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23D82816C(v4, v13);
      result = sub_23D827D68(v13);
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
      result = sub_23D8281DC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_23D82814C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D82815C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D82816C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC860, &qword_23D82A5F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_23D8281DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23D8282A8(uint64_t *a1, int a2)
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

uint64_t sub_23D8282F0(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for OS(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for OS(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_23D828430(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v30 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    sub_23D8281EC(*(a1 + 48) + 40 * v9, v28);
    sub_23D8261EC(*(a1 + 56) + 32 * v9, &v29);
    sub_23D8281EC(v28, &v21);
    swift_dynamicCast();
    sub_23D82985C();

    sub_23D829150(v28, &v21, &qword_27E2EC870, &qword_23D82A710);
    sub_23D8281DC(&v24, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC878, &qword_23D82A718);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC880, &qword_23D82A720);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
    }

    v5 &= v5 - 1;
    sub_23D828248(&v21);
    sub_23D828BE4(v28, &qword_27E2EC870, &qword_23D82A710);
    if (v27)
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_23D828C44(0, v30[2] + 1, 1, v30);
      }

      v11 = v30[2];
      v10 = v30[3];
      if (v11 >= v10 >> 1)
      {
        v30 = sub_23D828C44((v10 > 1), v11 + 1, 1, v30);
      }

      v12 = v30;
      v30[2] = v11 + 1;
      v13 = &v12[5 * v11];
      v14 = v21;
      v15 = v22;
      v13[8] = v23;
      *(v13 + 2) = v14;
      *(v13 + 3) = v15;
    }

    else
    {
      sub_23D828BE4(&v25, &qword_27E2EC888, &qword_23D82A728);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v16 = v30;
  if (v30[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC890, &qword_23D82A730);
    v17 = sub_23D82984C();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v28[0] = v17;
  sub_23D828D8C(v16, 1, v28);
  if (!v19)
  {
    return v28[0];
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Dictionary.axCompactMapKeys<A>(_:)()
{
  sub_23D8296DC();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  result = sub_23D82972C();
  if (!v0)
  {
    sub_23D82973C();
    swift_getWitnessTable();
    return sub_23D8296CC();
  }

  return result;
}

uint64_t sub_23D8288C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a3;
  v39 = a2;
  v35 = a6;
  v36 = a7;
  v10 = sub_23D8297AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v33 = &v32 - v12;
  v37 = a4;
  v13 = swift_getTupleTypeMetadata2();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v32 - v17;
  v19 = *(v10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v32 - v21;
  v23 = v40;
  result = v39(a1);
  if (!v23)
  {
    v25 = *(v14 + 16);
    v40 = 0;
    v25(v18, a1, v13);
    v26 = *(v13 + 48);
    v27 = v33;
    v28 = *(TupleTypeMetadata2 + 48);
    (*(v19 + 32))(v33, v22, v10);
    (*(*(a5 - 8) + 32))(&v27[v28], &v18[v26], a5);
    v29 = swift_getTupleTypeMetadata2();
    v30 = v36;
    v31 = swift_dynamicCast();
    (*(*(v29 - 8) + 56))(v30, v31 ^ 1u, 1, v29);
    return (*(*(v37 - 8) + 8))(v18);
  }

  return result;
}

uint64_t sub_23D828BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  return sub_23D8288C0(a1, *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 24), *(v2 + 32), a2);
}

uint64_t sub_23D828BE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_23D828C44(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC898, &qword_23D82A738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC880, &qword_23D82A720);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23D828D8C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_23D829150(a1 + 32, v40, &qword_27E2EC880, &qword_23D82A720);
  v7 = v40[0];
  v42 = v40[0];
  sub_23D8281DC(v41, v39);
  v8 = *a3;
  v9 = sub_23D827C74(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_23D829334(v14, a2 & 1);
    v16 = *a3;
    v9 = sub_23D827C74(v7);
    if ((v15 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_23D82988C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v9;
  sub_23D8291B8();
  v9 = v20;
  if (v15)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC868, &unk_23D82A6E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v39);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v21[6] + v9) = v7;
  sub_23D8281DC(v39, (v21[7] + 32 * v9));
  v22 = v21[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v13)
  {
    v21[2] = v23;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v24 = a1 + 72;
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      sub_23D829150(v24, v40, &qword_27E2EC880, &qword_23D82A720);
      v26 = v40[0];
      v42 = v40[0];
      sub_23D8281DC(v41, v39);
      v27 = *a3;
      v28 = sub_23D827C74(v26);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v13 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v13)
      {
        goto LABEL_23;
      }

      v33 = v29;
      if (v27[3] < v32)
      {
        sub_23D829334(v32, 1);
        v34 = *a3;
        v28 = sub_23D827C74(v26);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v33)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v36[6] + v28) = v42;
      sub_23D8281DC(v39, (v36[7] + 32 * v28));
      v37 = v36[2];
      v13 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v25;
      v36[2] = v38;
      v24 += 40;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_23D8297EC();
  MEMORY[0x23EEED950](0xD00000000000001BLL, 0x800000023D82A1D0);
  sub_23D82980C();
  MEMORY[0x23EEED950](39, 0xE100000000000000);
  sub_23D82981C();
  __break(1u);
}

uint64_t sub_23D829150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_23D8291B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC890, &qword_23D82A730);
  v2 = *v0;
  v3 = sub_23D82982C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        sub_23D8261EC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_23D8281DC(v19, (*(v4 + 56) + 32 * v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_23D829334(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EC890, &qword_23D82A730);
  v7 = sub_23D82983C();
  v8 = v7;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = (*(v5 + 56) + 32 * v24);
      if (a2)
      {
        sub_23D8281DC(v26, v35);
      }

      else
      {
        sub_23D8261EC(v26, v35);
      }

      v27 = *(v8 + 40);
      sub_23D8298EC();
      sub_23D8296FC();

      v16 = sub_23D82990C();
      v17 = -1 << *(v8 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v15 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return sub_23D82964C();
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v15 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v8 + 48) + v20) = v25;
      sub_23D8281DC(v35, (*(v8 + 56) + 32 * v20));
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}