uint64_t static CredentialUpdaterShim.signalUnknownCredential(relyingPartyIdentifier:credentialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23B569AD4, 0, 0);
}

uint64_t sub_23B569AD4()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[6] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6B8] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23B569B94;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return MEMORY[0x28210CAF8](v9, v8, v6, v7);
}

uint64_t sub_23B569B94()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B569CD0, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23B569CD0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23B569EC0(int a1, void *a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v3[3] = sub_23B59D820();
  v3[4] = v5;
  v6 = a2;
  v7 = sub_23B59D2F0();
  v9 = v8;

  v3[5] = v7;
  v3[6] = v9;

  return MEMORY[0x2822009F8](sub_23B569F68, 0, 0);
}

uint64_t sub_23B569F68()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[7] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6B8] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23B56A028;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  return MEMORY[0x28210CAF8](v9, v8, v6, v7);
}

uint64_t sub_23B56A028()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A1B4, 0, 0);
  }

  else
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);
    v8 = *(v3 + 16);

    sub_23B56C05C(v6, v5);

    (*(v8 + 16))(v8, 0);
    _Block_release(*(v3 + 16));
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_23B56A1B4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 16);

  sub_23B56C05C(v4, v3);

  v7 = sub_23B59D290();

  (*(v6 + 16))(v6, v7);
  _Block_release(*(v0 + 16));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t static CredentialUpdaterShim.signalAllAcceptedCredentials(relyingPartyIdentifier:userHandle:acceptedCredentialIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23B56A2A0, 0, 0);
}

uint64_t sub_23B56A2A0()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[7] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6C0] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_23B56A364;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return MEMORY[0x28210CB00](v10, v8, v9, v6, v7);
}

uint64_t sub_23B56A364()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A4A0, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23B56A4A0()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_23B56A6A4(int a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  v4[3] = sub_23B59D820();
  v4[4] = v7;
  v8 = a2;
  v9 = a3;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;
  v4[7] = sub_23B59D890();

  return MEMORY[0x2822009F8](sub_23B56A770, 0, 0);
}

uint64_t sub_23B56A770()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[8] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6C0] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23B56A834;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x28210CB00](v10, v8, v9, v6, v7);
}

uint64_t sub_23B56A834()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56A9CC, 0, 0);
  }

  else
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);
    v8 = *(v3 + 32);
    v9 = *(v3 + 16);

    sub_23B56C05C(v7, v6);

    (*(v9 + 16))(v9, 0);
    _Block_release(*(v3 + 16));
    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t sub_23B56A9CC()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_23B56C05C(v5, v4);

  v8 = sub_23B59D290();

  (*(v7 + 16))(v7, v8);
  _Block_release(*(v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t static CredentialUpdaterShim.signalCurrentUserDetails(relyingPartyIdentifier:userHandle:newName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_23B56AAC4, 0, 0);
}

uint64_t sub_23B56AAC4()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[8] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6B0] + 4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23B56AB88;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  return MEMORY[0x28210CAF0](v11, v10, v8, v9, v6, v7);
}

uint64_t sub_23B56AB88()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56ACC4, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23B56ACC4()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_23B56AEC8(int a1, void *a2, void *a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  v4[3] = sub_23B59D820();
  v4[4] = v7;
  v8 = a2;
  v9 = a3;
  v10 = sub_23B59D2F0();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;
  v13 = sub_23B59D820();
  v15 = v14;

  v4[7] = v13;
  v4[8] = v15;

  return MEMORY[0x2822009F8](sub_23B56AF94, 0, 0);
}

uint64_t sub_23B56AF94()
{
  v1 = sub_23B59D3D0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[9] = sub_23B59D3C0();
  v4 = *(MEMORY[0x277CBA6B0] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_23B56B058;
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v10 = v0[4];

  return MEMORY[0x28210CAF0](v11, v10, v8, v9, v6, v7);
}

uint64_t sub_23B56B058()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23B56B1F0, 0, 0);
  }

  else
  {
    v5 = *(v3 + 64);
    v4 = *(v3 + 72);
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);
    v8 = *(v3 + 32);
    v9 = *(v3 + 16);

    sub_23B56C05C(v7, v6);

    (*(v9 + 16))(v9, 0);
    _Block_release(*(v3 + 16));
    v10 = *(v3 + 8);

    return v10();
  }
}

uint64_t sub_23B56B1F0()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  sub_23B56C05C(v5, v4);

  v8 = sub_23B59D290();

  (*(v7 + 16))(v7, v8);
  _Block_release(*(v0 + 16));
  v9 = *(v0 + 8);

  return v9();
}

id CredentialUpdaterShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CredentialUpdaterShim.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CredentialUpdaterShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_23B56B414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23B56C32C;

  return sub_23B56AEC8(v2, v3, v4, v5);
}

uint64_t sub_23B56B4DC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23B56C32C;

  return v7();
}

uint64_t sub_23B56B5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B56B4DC(v2, v3, v5);
}

uint64_t sub_23B56B688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23B56B770;

  return v8();
}

uint64_t sub_23B56B770()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B56B864(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B56C32C;

  return sub_23B56B688(a1, v4, v5, v7);
}

uint64_t sub_23B56B930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_23B56BBEC(a3, v24 - v10);
  v12 = sub_23B59D910();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23B56BC5C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23B59D900();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_23B59D8B0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_23B59D830() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_23B56BC5C(a3);

    return v22;
  }

LABEL_8:
  sub_23B56BC5C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23B56BBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B56BC5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B56BCC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B56BDBC;

  return v7(a1);
}

uint64_t sub_23B56BDBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23B56BEB4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B56BEEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56C32C;

  return sub_23B56BCC4(a1, v5);
}

uint64_t sub_23B56BFA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56B770;

  return sub_23B56BCC4(a1, v5);
}

uint64_t sub_23B56C05C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B56C100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23B56C32C;

  return sub_23B56A6A4(v2, v3, v4, v5);
}

uint64_t sub_23B56C1C8()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B56C210()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56B770;

  return sub_23B569EC0(v2, v3, v5);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B56C330(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_23B59D340();
  v8 = (v7 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  *v8 = a1;
  v8[1] = a2;
  return v7;
}

uint64_t sub_23B56C398()
{
  v1 = (v0 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_23B56C3E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_23B56C49C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_finished) = a3;
  v16 = (v15 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement);
  *v16 = a5;
  v16[1] = a6;
  *(v15 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_characterDelta) = a4;
  sub_23B59D340();
  v17 = (v15 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_range);
  *v17 = a1;
  v17[1] = a2;
  return v15;
}

uint64_t sub_23B56C55C()
{
  v1 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v2 = sub_23B59D350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC11WebKitSwift27IntelligenceTextEffectChunk11Replacement_replacement + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_23B56C60C()
{
  v1 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v2 = sub_23B59D350();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23B56C6A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  v5 = sub_23B59D350();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23B56C724()
{
  v1 = *v0;
  sub_23B59DB00();
  sub_23B59D330();
  return sub_23B59DB10();
}

uint64_t sub_23B56C7A4(uint64_t a1)
{
  result = sub_23B56C864(&qword_27E15A790, type metadata accessor for IntelligenceTextEffectChunk);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23B56C864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B56C8F4()
{
  sub_23B59DB00();
  v1 = *v0 + OBJC_IVAR____TtC11WebKitSwift27IntelligenceTextEffectChunk_id;
  sub_23B59D330();
  return sub_23B59DB10();
}

uint64_t sub_23B56C940(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23B59D310();
}

uint64_t sub_23B56C964()
{
  result = sub_23B59D350();
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

uint64_t sub_23B56CA84(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B56CB20(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = 0;
  *(v3 + 48) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_23B56CBC8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void sub_23B56CC78()
{
  v1 = v0;
  if (!v0[4])
  {
    v2 = *v0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 80);
      v4 = *(v2 + 96);
      type metadata accessor for PlatformIntelligenceTextEffectView();
      v5 = swift_unknownObjectRetain();
      v6 = sub_23B573480(v5);
      [v6 setUserInteractionEnabled_];
      v7 = v1[3];
      [v7 frame];
      [v6 setFrame_];
      v8 = [v7 superview];
      [v8 addSubview_];

      if ((*(*v1 + 256))())
      {
        [v6 setHidden_];
      }

      sub_23B5734C4();
      swift_unknownObjectRelease();
      v9 = v1[4];
      v1[4] = v6;
    }
  }
}

void sub_23B56CE00()
{
  if (!v0[5] && !v0[6])
  {
    v1 = v0[4];
    if (v1)
    {
      [v1 removeFromSuperview];
      v1 = v0[4];
    }

    v0[4] = 0;
  }
}

uint64_t sub_23B56CE58(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  sub_23B59D8F0();
  v2[11] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v2[12] = v8;
  v2[13] = v7;

  return MEMORY[0x2822009F8](sub_23B56CFAC, v8, v7);
}

uint64_t sub_23B56CFAC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v2 + 40);
  v0[14] = v3;
  if (v3)
  {
    if (!v1)
    {
      *(v2 + 40) = 0;
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[17] = Strong;
      if (Strong)
      {
        v0[2] = Strong;
        v5 = v0[6];
        v6 = *(v3 + *(*v3 + 104));
        v0[18] = v6;
        v8 = *(v5 + 80);
        v7 = *(v5 + 88);
        v9 = *(v7 + 8);

        v31 = (v9 + *v9);
        v10 = v9[1];
        v11 = swift_task_alloc();
        v0[19] = v11;
        *v11 = v0;
        v11[1] = sub_23B56D580;

        return v31(v6, 1, 1, v8, v7);
      }

      v22 = *(v0[5] + 32);
      v0[20] = v22;
      if (v22)
      {
        sub_23B56F52C(v0[14] + qword_27E15AD18, v0[9]);
        v22;
        v23 = swift_task_alloc();
        v0[21] = v23;
        *v23 = v0;
        v23[1] = sub_23B56D818;
        v24 = v0[9];

        return sub_23B573878(v24);
      }

      v29 = v0[11];

      v30 = v0[5];
      sub_23B56CE00();
      goto LABEL_13;
    }

LABEL_12:
    v18 = v0[11];
LABEL_13:

LABEL_14:
    v20 = v0[9];
    v19 = v0[10];

    v21 = v0[1];

    return v21();
  }

  if (!v1)
  {
    goto LABEL_12;
  }

  *(v2 + 40) = v1;

  sub_23B56CC78();
  v13 = *(v2 + 32);
  v0[15] = v13;
  if (!v13)
  {
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[7];
    v28 = v0[8];

    (*(v28 + 56))(v26, 1, 1, v27);
    sub_23B56F634(v0[10]);
    goto LABEL_14;
  }

  v0[3] = v1;
  v13;
  v14 = swift_task_alloc();
  v0[16] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7B0, &unk_23B59EC00);
  v16 = sub_23B56F69C(&qword_27E15A7B8, &qword_27E15A7B0, &unk_23B59EC00);
  *v14 = v0;
  v14[1] = sub_23B56D39C;
  v17 = v0[10];

  return sub_23B57352C(v17, (v0 + 3), v15, v16);
}

uint64_t sub_23B56D39C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D4DC, v5, v4);
}

uint64_t sub_23B56D4DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 56))(v2, 0, 1, v3);
  sub_23B56F634(v0[10]);
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B56D580()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v4 = *(*v0 + 136);
  v8 = *v0;

  swift_unknownObjectRelease();
  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D6E0, v6, v5);
}

uint64_t sub_23B56D6E0()
{
  v1 = *(v0[5] + 32);
  v0[20] = v1;
  if (v1)
  {
    sub_23B56F52C(v0[14] + qword_27E15AD18, v0[9]);
    v1;
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_23B56D818;
    v3 = v0[9];

    return sub_23B573878(v3);
  }

  else
  {
    v5 = v0[11];

    v6 = v0[5];
    sub_23B56CE00();

    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23B56D818()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 72);
  v8 = *v0;

  sub_23B56F590(v4);
  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23B56D974, v6, v5);
}

uint64_t sub_23B56D974()
{
  v1 = v0[11];

  v2 = v0[14];
  v3 = v0[5];
  sub_23B56CE00();

  v5 = v0[9];
  v4 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B56D9F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  sub_23B59D8F0();
  v2[9] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();
  v2[10] = v8;
  v2[11] = v7;

  return MEMORY[0x2822009F8](sub_23B56DB24, v8, v7);
}

uint64_t sub_23B56DB24()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + 48);
  v0[12] = v3;
  if (v3)
  {
    if (!v2)
    {
      *(v1 + 48) = 0;
      v4 = *(v1 + 32);
      v0[15] = v4;
      if (v4)
      {
        sub_23B56F52C(v3 + qword_27E15AD10, v0[7]);
        v4;
        v5 = swift_task_alloc();
        v0[16] = v5;
        *v5 = v0;
        v5[1] = sub_23B56DFA0;
        v6 = v0[7];

        return sub_23B573878(v6);
      }

      v17 = v0[9];

      v18 = v0[4];
      sub_23B56CE00();
      goto LABEL_13;
    }

LABEL_12:
    v13 = v0[9];
LABEL_13:

LABEL_14:
    v15 = v0[7];
    v14 = v0[8];

    v16 = v0[1];

    return v16();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  *(v1 + 48) = v2;

  sub_23B56CC78();
  v8 = *(v1 + 32);
  v0[13] = v8;
  if (!v8)
  {
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[5];
    v22 = v0[6];

    (*(v22 + 56))(v20, 1, 1, v21);
    sub_23B56F634(v0[8]);
    goto LABEL_14;
  }

  v0[2] = v2;
  v8;
  v9 = swift_task_alloc();
  v0[14] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7C0, qword_23B59EC10);
  v11 = sub_23B56F69C(&qword_27E15A7C8, &qword_27E15A7C0, qword_23B59EC10);
  *v9 = v0;
  v9[1] = sub_23B56DDBC;
  v12 = v0[8];

  return sub_23B57352C(v12, (v0 + 2), v10, v11);
}

uint64_t sub_23B56DDBC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B56DEFC, v5, v4);
}

uint64_t sub_23B56DEFC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];

  (*(v4 + 56))(v2, 0, 1, v3);
  sub_23B56F634(v0[8]);
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B56DFA0()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 56);
  v8 = *v0;

  sub_23B56F590(v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_23B56E0FC, v6, v5);
}

uint64_t sub_23B56E0FC()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[4];
  sub_23B56CE00();

  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23B56E180()
{
  v1[4] = v0;
  v1[5] = *v0;
  sub_23B59D8F0();
  v1[6] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_23B56E240, v3, v2);
}

uint64_t sub_23B56E240()
{
  if ((*(**(v0 + 32) + 256))())
  {
    v1 = *(v0 + 48);

LABEL_3:
    v2 = *(v0 + 8);

    return v2();
  }

  v4 = *(v0 + 32);
  (*(*v4 + 264))(1);
  v5 = v4[5];
  *(v0 + 72) = v5;
  if (v5 && (v6 = *(v0 + 32), v7 = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = v7) != 0))
  {
    v8 = *(v0 + 40);
    v9 = *(v5 + *(*v5 + 104));
    *(v0 + 24) = v9;
    v10 = v0 + 24;
    *(v0 + 88) = v9;
    v11 = *(v8 + 96);
    v12 = *(v11 + 32);
    v13 = *(v8 + 80);

    v25 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    *(v0 + 96) = v15;
    *v15 = v0;
    v16 = sub_23B56E5B4;
  }

  else
  {
    v17 = *(*(v0 + 32) + 48);
    *(v0 + 104) = v17;
    if (!v17 || (Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 112) = Strong) == 0))
    {
      v23 = *(v0 + 48);

      v24 = *(*(v0 + 32) + 32);
      if (v24)
      {
        [v24 setHidden_];
      }

      goto LABEL_3;
    }

    v19 = *(v0 + 40);
    v20 = *(v17 + *(*v17 + 104));
    *(v0 + 16) = v20;
    v10 = v0 + 16;
    *(v0 + 120) = v20;
    v11 = *(v19 + 96);
    v21 = *(v11 + 32);
    v13 = *(v19 + 80);

    v25 = (v21 + *v21);
    v22 = v21[1];
    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v16 = sub_23B56E90C;
  }

  v15[1] = v16;

  return v25(v10, 1, v13, v11);
}

uint64_t sub_23B56E5B4()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v8 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B56E714, v6, v5);
}

uint64_t sub_23B56E714()
{
  v1 = v0[9];

  v2 = *(v0[4] + 48);
  v0[13] = v2;
  if (v2 && (Strong = swift_unknownObjectWeakLoadStrong(), (v0[14] = Strong) != 0))
  {
    v4 = v0[5];
    v5 = *(v2 + *(*v2 + 104));
    v0[2] = v5;
    v0[15] = v5;
    v6 = *(v4 + 96);
    v7 = *(v6 + 32);
    v8 = *(v4 + 80);

    v15 = (v7 + *v7);
    v9 = v7[1];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_23B56E90C;

    return (v15)(v0 + 2, 1, v8, v6);
  }

  else
  {
    v12 = v0[6];

    v13 = *(v0[4] + 32);
    if (v13)
    {
      [v13 setHidden_];
    }

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23B56E90C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_23B56EA6C, v6, v5);
}

uint64_t sub_23B56EA6C()
{
  v1 = v0[13];
  v2 = v0[6];

  v3 = *(v0[4] + 32);
  if (v3)
  {
    [v3 setHidden_];
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_23B56EAF4()
{
  sub_23B59D8F0();
  *(v0 + 16) = sub_23B59D8E0();
  v2 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B56EB88, v2, v1);
}

uint64_t sub_23B56EB88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B56EBE8()
{
  v1[2] = v0;
  sub_23B59D8F0();
  v1[3] = sub_23B59D8E0();
  v3 = sub_23B59D8B0();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23B56EC80, v3, v2);
}

uint64_t sub_23B56EC80()
{
  v1 = v0[2];
  if (v1[5])
  {
    v12 = (*v1 + 304);
    v14 = (*v12 + **v12);
    v2 = (*v12)[1];
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v3[1] = sub_23B56EEE4;
    v4 = v0[2];
    v5 = v14;

    return v5(0);
  }

  if (v1[6])
  {
    v13 = (*v1 + 312);
    v15 = (*v13 + **v13);
    v7 = (*v13)[1];
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_23B56F168;
    v9 = v0[2];
    v5 = v15;

    return v5(0);
  }

  v10 = v0[3];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23B56EEE4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B56F004, v4, v3);
}

uint64_t sub_23B56F004()
{
  v1 = v0[2];
  if (v1[6])
  {
    v8 = (*v1 + 312);
    v9 = (*v8 + **v8);
    v2 = (*v8)[1];
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_23B56F168;
    v4 = v0[2];

    return v9(0);
  }

  else
  {
    v6 = v0[3];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23B56F168()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_23B56F288, v4, v3);
}

uint64_t sub_23B56F288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B56F2E8(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + *(*v2 + 104));
    v5 = *(*v4 + 96);
    v6 = *(v1 + 40);

    v8 = v5(v7);
    v9 = v3(v8);
    (*(*v4 + 104))(v9);
  }

  return result;
}

uint64_t sub_23B56F3E4()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    sub_23B573E60();

    v3 = v0[4];
    if (v3)
    {
      [v3 removeFromSuperview];
      v1 = v0[4];
    }

    else
    {
      v1 = 0;
    }
  }

  v0[4] = 0;

  v4 = v0[5];
  v0[5] = 0;

  v5 = v0[6];
  v0[6] = 0;

  v6 = *(*v0 + 264);

  return v6(0);
}

uint64_t sub_23B56F4B8()
{
  MEMORY[0x23EE9F290](v0 + 16);

  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_23B56F4F8()
{
  sub_23B56F4B8();

  return MEMORY[0x2821FE8D8](v0, 57, 7);
}

uint64_t sub_23B56F52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B56F590(uint64_t a1)
{
  v2 = type metadata accessor for PlatformIntelligenceTextEffectID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23B56F634(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7A8, &qword_23B59EBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B56F69C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_23B56F798(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53[2] = a2;
  v68 = sub_23B59D4E0();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 documentType];
  v7 = sub_23B59D820();
  v53[0] = v8;
  v53[1] = v7;

  v54 = a1;
  v9 = [a1 namespaces];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
  v10 = sub_23B59D7D0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D8, &qword_23B59ED30);
  v11 = sub_23B59DA60();
  v12 = 0;
  v13 = *(v10 + 64);
  v56 = v10 + 64;
  v58 = v11;
  v59 = v10;
  v14 = 1 << *(v10 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v13;
  v55 = (v14 + 63) >> 6;
  v67 = v3;
  v65 = v3 + 32;
  v57 = v11 + 64;
  if (v16)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v16));
      v60 = (v16 - 1) & v16;
LABEL_11:
      v61 = v12;
      v20 = v17 | (v12 << 6);
      v21 = *(v59 + 56);
      v22 = (*(v59 + 48) + 16 * v20);
      v23 = v22[1];
      v63 = *v22;
      v64 = v20;
      v24 = *(v21 + 8 * v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E0, &qword_23B59ED38);
      v25 = sub_23B59DA60();
      v26 = v24 + 64;
      v27 = 1 << *(v24 + 32);
      v28 = v27 < 64 ? ~(-1 << v27) : -1;
      v29 = v28 & *(v24 + 64);
      v30 = (v27 + 63) >> 6;
      v69 = v25 + 64;
      v62 = v23;
      v31 = v25;

      v71 = v24;

      v32 = 0;
      v70 = v31;
      if (v29)
      {
        break;
      }

LABEL_16:
      v34 = v32;
      while (1)
      {
        v32 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v32 >= v30)
        {
          break;
        }

        v35 = *(v26 + 8 * v32);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v29 = (v35 - 1) & v35;
          goto LABEL_21;
        }
      }

      v47 = v64;
      v48 = v58;
      *(v57 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      v49 = (v48[6] + 16 * v47);
      v50 = v62;
      *v49 = v63;
      v49[1] = v50;
      *(v48[7] + 8 * v47) = v31;
      v51 = v48[2];
      v45 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v45)
      {
        goto LABEL_31;
      }

      v48[2] = v52;
      v16 = v60;
      v12 = v61;
      if (!v60)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v33 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
LABEL_21:
      v36 = v33 | (v32 << 6);
      v37 = (*(v71 + 48) + 16 * v36);
      v38 = *v37;
      v39 = v37[1];
      v40 = *(*(v71 + 56) + 8 * v36);

      v41 = v40;
      [v41 isRetaining];
      v42 = v66;
      sub_23B59D4C0();

      v31 = v70;
      *(v69 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v43 = (v31[6] + 16 * v36);
      *v43 = v38;
      v43[1] = v39;
      (*(v67 + 32))(v31[7] + *(v67 + 72) * v36, v42, v68);
      v44 = v31[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        break;
      }

      v31[2] = v46;
      if (!v29)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v55)
      {

        sub_23B59D460();

        return;
      }

      v19 = *(v56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v60 = (v19 - 1) & v19;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_23B56FBD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v37 = sub_23B59D480();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23B59D4B0();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 documentSets];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E8, &qword_23B59ED40);
  v12 = sub_23B59D890();

  v13 = *(v12 + 16);
  if (!v13)
  {

LABEL_24:
    [a1 isMandatory];
    sub_23B59D3E0();

    return;
  }

  v27[0] = a1;
  v39 = MEMORY[0x277D84F90];
  sub_23B5704EC(0, v13, 0);
  v14 = 0;
  v15 = v39;
  v32 = v13;
  v33 = v12 + 32;
  v30 = v7;
  v31 = v7 + 32;
  v28 = v12;
  v29 = v10;
  while (v14 < *(v12 + 16))
  {
    v36 = v15;
    v16 = *(v33 + 8 * v14);
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v23 = *(v33 + 8 * v14);
      }

      v17 = sub_23B59DA50();
      v35 = v14;
      if (!v17)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v14;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    v38 = MEMORY[0x277D84F90];

    sub_23B570530(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      goto LABEL_26;
    }

    v18 = 0;
    v19 = v38;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x23EE9EAD0](v18, v16);
      }

      else
      {
        v20 = *(v16 + 8 * v18 + 32);
      }

      sub_23B56F798(v20, v6);
      v38 = v19;
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_23B570530(v21 > 1, v22 + 1, 1);
        v19 = v38;
      }

      ++v18;
      *(v19 + 16) = v22 + 1;
      (*(v3 + 32))(v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v22, v6, v37);
    }

    while (v17 != v18);
    v10 = v29;
    v7 = v30;
    v12 = v28;
LABEL_19:
    sub_23B59D490();

    v15 = v36;
    v39 = v36;
    v25 = *(v36 + 16);
    v24 = *(v36 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_23B5704EC(v24 > 1, v25 + 1, 1);
      v15 = v39;
    }

    v26 = v34;
    v14 = v35 + 1;
    *(v15 + 16) = v25 + 1;
    (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v10, v26);
    if (v14 == v32)
    {

      a1 = v27[0];
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_23B56FFCC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v37 = sub_23B59D440();
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23B59D410();
  v5 = *(v38 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 presentmentRequests];
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
  v10 = sub_23B59D890();

  if (v10 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x277D84F90];
  v32 = a1;
  if (v11)
  {
    v42 = MEMORY[0x277D84F90];
    sub_23B5705B8(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v40 = v42;
    v12 = MEMORY[0x277D84F90];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23EE9EAD0](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      sub_23B56FBD8(v14, v8);
      v15 = v40;
      v42 = v40;
      v17 = *(v40 + 2);
      v16 = *(v40 + 3);
      if (v17 >= v16 >> 1)
      {
        sub_23B5705B8(v16 > 1, v17 + 1, 1);
        v12 = MEMORY[0x277D84F90];
        v15 = v42;
      }

      ++v13;
      *(v15 + 2) = v17 + 1;
      v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v40 = v15;
      (*(v5 + 32))(&v15[v18 + *(v5 + 72) * v17], v8, v38);
    }

    while (v11 != v13);

    a1 = v32;
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  v19 = [a1 authenticationCertificates];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7F0, &qword_23B59ED48);
  v20 = sub_23B59D890();

  v21 = *(v20 + 16);
  if (v21)
  {
    v42 = v12;
    sub_23B570574(0, v21, 0);
    v22 = MEMORY[0x277D84F90];
    v23 = 0;
    v8 = v42;
    v38 = v20 + 32;
    v36 = v39 + 32;
    a1 = v35;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v11 = sub_23B59DA50();
        goto LABEL_3;
      }

      v10 = *(v38 + 8 * v23);
      if (v10 >> 62)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          v29 = *(v38 + 8 * v23);
        }

        v24 = sub_23B59DA50();
        if (!v24)
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else
      {
        v24 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_29;
        }
      }

      v41 = v22;

      sub_23B59DA10();
      if (v24 < 0)
      {
        goto LABEL_37;
      }

      v25 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x23EE9EAD0](v25, v10);
        }

        else
        {
          v26 = *(v10 + 8 * v25 + 32);
        }

        v27 = v26;
        ++v25;
        v28 = [v26 certificate];

        sub_23B59D9F0();
        v5 = *(v41 + 16);
        sub_23B59DA20();
        sub_23B59DA30();
        sub_23B59DA00();
      }

      while (v24 != v25);
      v20 = v34;
      a1 = v35;
      v22 = MEMORY[0x277D84F90];
      v21 = v33;
LABEL_30:
      sub_23B59D420();

      v42 = v8;
      v10 = *(v8 + 2);
      v30 = *(v8 + 3);
      if (v10 >= v30 >> 1)
      {
        sub_23B570574(v30 > 1, v10 + 1, 1);
        v22 = MEMORY[0x277D84F90];
        v8 = v42;
      }

      ++v23;
      *(v8 + 2) = v10 + 1;
      (*(v39 + 32))(&v8[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v10], a1, v37);
      if (v23 == v21)
      {

        a1 = v32;
        goto LABEL_35;
      }
    }
  }

LABEL_35:
  sub_23B59D4F0();
}

size_t sub_23B5704EC(size_t a1, int64_t a2, char a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A810, &qword_23B59ED68, MEMORY[0x277CD2BA8]);
  *v3 = result;
  return result;
}

size_t sub_23B570530(size_t a1, int64_t a2, char a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A808, &qword_23B59ED60, MEMORY[0x277CD2BA0]);
  *v3 = result;
  return result;
}

size_t sub_23B570574(size_t a1, int64_t a2, char a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A7F8, &qword_23B59ED50, MEMORY[0x277CD2B98]);
  *v3 = result;
  return result;
}

size_t sub_23B5705B8(size_t a1, int64_t a2, char a3)
{
  result = sub_23B570600(a1, a2, a3, *v3, &qword_27E15A800, &qword_23B59ED58, MEMORY[0x277CD2B90]);
  *v3 = result;
  return result;
}

size_t sub_23B570600(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_23B5707DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_23B5707EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(a4 + 16);
  sub_23B59D9C0();
  sub_23B59D9C0();
  LOBYTE(v12) = sub_23B59D310();
  sub_23B56F590(v9);
  sub_23B56F590(v11);
  return v12 & 1;
}

id sub_23B5708DC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  *&v3[qword_27E15A860] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_23B570934(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F598;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59F5A0;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_23B56B930(0, 0, v10, &unk_23B59F5A8, v15);
}

uint64_t sub_23B570ABC(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *MEMORY[0x277D85000] & *a3;
  sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B570B90, v5, v4);
}

uint64_t sub_23B570B90()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  *v8 = v0;
  v8[1] = sub_23B570C58;
  v11 = v0[2];

  return sub_23B578BC0(v11, v9, v10);
}

uint64_t sub_23B570C58(char a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23B570DB8(void *a1, uint64_t a2, void *a3, const void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_23B59D910();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B59F570;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B59F578;
  v15[5] = v14;
  v16 = a3;
  v17 = a1;
  sub_23B56B930(0, 0, v10, &unk_23B59F580, v15);
}

uint64_t sub_23B570F40(uint64_t a1, uint64_t a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *MEMORY[0x277D85000] & *a3;
  sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B571014, v5, v4);
}

uint64_t sub_23B571014()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  *v8 = v0;
  v8[1] = sub_23B5710DC;
  v11 = v0[2];

  return sub_23B578DB0(v11, v9, v10);
}

uint64_t sub_23B5710DC(void *a1)
{
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23B571240(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *MEMORY[0x277D85000] & *v2;
  sub_23B59D8F0();
  *(v3 + 40) = sub_23B59D8E0();
  v5 = sub_23B59D8B0();
  *(v3 + 48) = v5;
  *(v3 + 56) = v4;

  return MEMORY[0x2822009F8](sub_23B571314, v5, v4);
}

uint64_t sub_23B571314()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v28 = *(v1 + 88);
  *(v0 + 64) = v28;
  v3 = *(v1 + 80);
  *(v0 + 72) = v3;
  *(v0 + 80) = swift_getAssociatedTypeWitness();
  *(v0 + 88) = swift_getAssociatedConformanceWitness();
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    *(v0 + 96) = *(*(v0 + 24) + qword_27E15A860);
    v5 = *((*MEMORY[0x277D85000] & *v4) + qword_27E15B650 + 16);
    v6 = *(v28 + 32);
    v7 = v4;
    v8 = v2;
    swift_unknownObjectRetain();
    v26 = (v6 + *v6);
    v9 = v6[1];
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_23B5716CC;
    v11 = *(v0 + 128);
    v12 = v7 + v5;
    v13 = v3;
    v14 = v28;
    v15 = v26;
LABEL_5:

    return v15(v12, v11, v13, v14);
  }

  type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    *(v0 + 112) = *(*(v0 + 24) + qword_27E15A860);
    v17 = *((*MEMORY[0x277D85000] & *v16) + qword_27E15B6E0 + 16);
    v18 = *(v28 + 32);
    v19 = v16;
    v20 = v2;
    swift_unknownObjectRetain();
    v27 = (v18 + *v18);
    v21 = v18[1];
    v22 = swift_task_alloc();
    *(v0 + 120) = v22;
    *v22 = v0;
    v22[1] = sub_23B571A04;
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v11 = *(v0 + 128);
    v12 = v19 + v17;
    v15 = v27;
    goto LABEL_5;
  }

  v24 = *(v0 + 40);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_23B5716CC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B571810, v5, v4);
}

uint64_t sub_23B571810()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    *(v0 + 112) = *(*(v0 + 24) + qword_27E15A860);
    v5 = *((*MEMORY[0x277D85000] & *v4) + qword_27E15B6E0 + 16);
    v6 = *(*(v0 + 64) + 32);
    v7 = v4;
    v8 = v3;
    swift_unknownObjectRetain();
    v17 = (v6 + *v6);
    v9 = v6[1];
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_23B571A04;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 128);

    return v17(&v7[v5], v13, v11, v12);
  }

  else
  {
    v15 = *(v0 + 40);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_23B571A04()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B571B48, v5, v4);
}

uint64_t sub_23B571B48()
{
  v1 = v0[5];
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B571BB0(void *a1, uint64_t a2, void *a3, char a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
  v15 = sub_23B59D910();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B59F530;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B59F540;
  v17[5] = v16;
  v18 = a3;
  v19 = a1;
  sub_23B56B930(0, 0, v12, &unk_23B59F550, v17);
}

uint64_t sub_23B571D40(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_23B59D8F0();
  *(v4 + 40) = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B571DE0, v6, v5);
}

uint64_t sub_23B571DE0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_23B571EA8;
  v8 = *(v0 + 32);
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);

  return sub_23B571240(v10, v9);
}

uint64_t sub_23B571EA8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

void sub_23B572000()
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23B5790D4();
}

void sub_23B57207C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - v5;
  v7 = sub_23B59D720();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_23B59D670();
    v14 = qword_27E15A830;
    swift_beginAccess();
    v15 = *&v13[v14];
    if (*(v15 + 16) && (v16 = sub_23B576BAC(v11), (v17 & 1) != 0))
    {
      sub_23B57A610(*(v15 + 56) + 40 * v16, &v27);
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    swift_endAccess();
    (*(v8 + 8))(v11, v7);
    if (*(&v28 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A880, &qword_23B59F4F0);
      v20 = v2 + 80;
      v18 = *(v2 + 80);
      v19 = *(v20 + 8);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for PlatformIntelligenceReplacementTextEffect();
      if (swift_dynamicCast())
      {
        v21 = v26[1];
        v22 = sub_23B59D910();
        (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
        sub_23B59D8F0();

        v23 = sub_23B59D8E0();
        v24 = swift_allocObject();
        v25 = MEMORY[0x277D85700];
        v24[2] = v23;
        v24[3] = v25;
        v24[4] = v1;
        v24[5] = v21;
        sub_23B572730(0, 0, v6, &unk_23B59F500, v24);
      }

      else
      {
      }
    }

    else
    {

      sub_23B57A674(&v27, &qword_27E15A878, &qword_23B59F4E8);
    }
  }
}

uint64_t sub_23B5723C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = *a4;
  sub_23B59D8F0();
  v5[5] = sub_23B59D8E0();
  v7 = sub_23B59D8B0();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_23B572488, v7, v6);
}

uint64_t sub_23B572488()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 56);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_23B5725B0;
  v8 = v0[3];

  return v10(v8, v4, v3);
}

uint64_t sub_23B5725B0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23B5726D0, v4, v3);
}

uint64_t sub_23B5726D0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B572730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23B57AC04(a3, v27 - v11, &qword_27E15A970, &qword_23B59F4E0);
  v13 = sub_23B59D910();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23B57A674(v12, &qword_27E15A970, &qword_23B59F4E0);
  }

  else
  {
    sub_23B59D900();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23B59D8B0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23B59D830() + 32;
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

      sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);

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

  sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);
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

uint64_t sub_23B572A30()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x23EE9F290](v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_23B572A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  v9 = *(a4 + 80);
  v10 = *(a4 + 88);
  *v7 = v4;
  v7[1] = sub_23B572B0C;

  return sub_23B579104(a1, v8, v9, v10);
}

uint64_t sub_23B572B0C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23B572C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D74B18] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23B56B770;

  return MEMORY[0x2821DCE40](a1, a2, a3, a4, a5);
}

uint64_t sub_23B572CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D74B20] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_23B56C32C;

  return MEMORY[0x2821DCE40](a1, a2, a3, a4, a5);
}

void sub_23B572DCC()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + qword_27E15B650) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + qword_27E15B650 + 16)]);
  v2 = *&v0[*((*v1 & *v0) + qword_27E15B650 + 24)];
}

void sub_23B572EB0(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + qword_27E15B650) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + qword_27E15B650 + 16)]);
  v3 = *&a1[*((*v2 & *a1) + qword_27E15B650 + 24)];
}

void sub_23B572FA8()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + qword_27E15B6E0) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + qword_27E15B6E0 + 16)]);

  v2 = *&v0[*((*v1 & *v0) + qword_27E15B6E0 + 32)];
}

void sub_23B5730CC(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + qword_27E15B6E0) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + qword_27E15B6E0 + 16)]);

  v3 = *&a1[*((*v2 & *a1) + qword_27E15B6E0 + 32)];
}

uint64_t type metadata accessor for PlatformIntelligenceTextEffectID()
{
  result = qword_27E15B770;
  if (!qword_27E15B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23B573240()
{
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);
  sub_23B59D7F0();
  return sub_23B59DB10();
}

uint64_t sub_23B5732C8()
{
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);

  return sub_23B59D7F0();
}

uint64_t sub_23B57334C()
{
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);
  sub_23B59D7F0();
  return sub_23B59DB10();
}

void sub_23B5733D4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  sub_23B5797F8();
}

id sub_23B573480(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23B57988C(a1);
  swift_unknownObjectRelease();
  return v4;
}

id sub_23B5734C4()
{
  v1 = *&v0[qword_27E15A818];
  [v0 addSubview_];
  [v0 bounds];

  return [v1 setFrame_];
}

uint64_t sub_23B57352C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v8 = *v4;
  v9 = *MEMORY[0x277D85000];
  v5[6] = sub_23B59D8F0();
  v5[7] = sub_23B59D8E0();
  v10 = *(a4 + 48);
  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v5[8] = v12;
  v13 = *((v9 & v8) + 0x50);
  v14 = *((v9 & v8) + 0x58);
  *v12 = v5;
  v12[1] = sub_23B5736BC;

  return v16(v4, v13, v14, a3, a4);
}

uint64_t sub_23B5736BC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5737F8, v5, v4);
}

uint64_t sub_23B5737F8()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *(v3 + 16);
  sub_23B59D9C0();
  v7 = v0[1];

  return v7();
}

uint64_t sub_23B573878(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_23B59D720();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  sub_23B59D8F0();
  v2[15] = sub_23B59D8E0();
  v8 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5739B0, v8, v7);
}

uint64_t sub_23B5739B0()
{
  v20 = v0;
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];

  swift_beginAccess();
  sub_23B576FF0(v6, v5);
  swift_endAccess();
  if ((*(v3 + 48))(v5, 1, v2) == 1)
  {
    sub_23B57A674(v0[10], &qword_27E15A820, qword_23B59ED90);
  }

  else
  {
    v8 = v0[13];
    v7 = v0[14];
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[9];
    (*(v10 + 32))(v7, v0[10], v9);
    (*(v10 + 16))(v8, v7, v9);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    swift_beginAccess();
    sub_23B573B78(v18, v8);
    swift_endAccess();
    v12 = *(v11 + qword_27E15A818);
    sub_23B59D6D0();
    (*(v10 + 8))(v7, v9);
  }

  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[10];

  v16 = v0[1];

  return v16();
}

uint64_t sub_23B573B78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23B57ABEC(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_23B5782BC(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_23B59D720();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_23B57A674(a1, &qword_27E15A878, &qword_23B59F4E8);
    sub_23B577178(a2, v10);
    v8 = sub_23B59D720();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_23B57A674(v10, &qword_27E15A878, &qword_23B59F4E8);
  }

  return result;
}

uint64_t sub_23B573C94(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_23B59D720();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23B57A674(a1, &qword_27E15A820, qword_23B59ED90);
    sub_23B576FF0(a2, v8);
    sub_23B56F590(a2);
    return sub_23B57A674(v8, &qword_27E15A820, qword_23B59ED90);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23B5780F4(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_23B56F590(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_23B573E60()
{
  v1 = v0;
  v2 = *(v0 + qword_27E15A818);
  sub_23B59D730();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_23B5795F0(MEMORY[0x277D84F90]);
  v5 = qword_27E15A828;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v1 + v5) = v4;

  v7 = sub_23B579400(v3);
  v8 = qword_27E15A830;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = v7;
}

void sub_23B573F10(void *a1)
{
  v1 = *MEMORY[0x277D85000] & *a1;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_23B5799DC();
}

id sub_23B573FE0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23B574018(uint64_t a1)
{
  v2 = *(a1 + qword_27E15A838);
  swift_unknownObjectRelease();

  v3 = *(a1 + qword_27E15A830);

  v4 = *(a1 + qword_27E15A828);
}

uint64_t sub_23B574094(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_23B5740E4(a1, a2);
  return v7;
}

uint64_t *sub_23B5740E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_23B59D340();
  (*(*(*(v5 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  v6 = v2 + *(*v2 + 112);
  *(v6 + 48) = *(a2 + 48);
  v7 = *(a2 + 32);
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 32) = v7;
  *v6 = *a2;
  return v2;
}

double sub_23B5741B0()
{
  v1 = (v0 + *(*v0 + 112));
  if (*v1)
  {
    [*v1 size];
    v3 = v2;
  }

  else
  {
    v3 = 0.0;
  }

  [v1[1] size];
  return v4 - v3;
}

uint64_t sub_23B57421C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5742B4, v4, v3);
}

uint64_t sub_23B5742B4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v2 + *(*v2 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = v0[2];
    v5 = v0[3];
    v8 = *(v3 + 40);
    v7 = *(v3 + 48);
    v9 = *(v3 + 24);
    v10 = *(v3 + 32);
    v11 = v4;
    v12 = sub_23B5741B0();
    v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v14 = [v13 layer];
    [v14 setContents_];

    v15 = [v6 addSubview_];
    if (v12 <= 0.0)
    {
      sub_23B59D7B0();
    }

    else
    {
      MEMORY[0x23EE9E8A0](v15, 0.4, 0.7, 0.0);
    }

    sub_23B59D790();

    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v9;
    *(v16 + 32) = v10 + v12;
    *(v16 + 40) = v8;
    *(v16 + 48) = v7;
    sub_23B579A74();
    v17 = v13;
    sub_23B59D960();
  }

  v18 = v0[1];

  return v18();
}

uint64_t *sub_23B5744B8()
{
  v1 = *v0;
  sub_23B56F590(v0 + qword_27E15AD08);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  v2 = v0 + *(*v0 + 112);
  v3 = *v2;
  v4 = *(v2 + 16);

  return v0;
}

uint64_t sub_23B574574()
{
  sub_23B5744B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23B5745CC(uint64_t a1)
{
  v4 = *(**v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56C32C;

  return v8(a1);
}

uint64_t *sub_23B574784(uint64_t a1)
{
  v3 = *v1;
  sub_23B59D340();
  *(v1 + *(*v1 + 112)) = 0;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23B574834(void *a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = *v1;
  v2[37] = *v1;
  v2[38] = *MEMORY[0x277D85000] & *a1;
  v4 = *(v3 + 80);
  v2[39] = v4;
  v5 = *(v4 - 8);
  v2[40] = v5;
  v6 = *(v5 + 64) + 15;
  v2[41] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v8 = *(*(type metadata accessor for PlatformIntelligenceTextEffectID() - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v9 = sub_23B59D720();
  v2[44] = v9;
  v10 = *(v9 - 8);
  v2[45] = v10;
  v11 = *(v10 + 64) + 15;
  v2[46] = swift_task_alloc();
  v12 = sub_23B59D780();
  v2[47] = v12;
  v13 = *(v12 - 8);
  v2[48] = v13;
  v14 = *(v13 + 64) + 15;
  v2[49] = swift_task_alloc();
  sub_23B59D8F0();
  v2[50] = sub_23B59D8E0();
  v16 = sub_23B59D8B0();
  v2[51] = v16;
  v2[52] = v15;

  return MEMORY[0x2822009F8](sub_23B574AB4, v16, v15);
}

uint64_t sub_23B574AB4()
{
  v1 = v0[38];
  v2 = v0[36];
  v0[53] = *(v0[35] + qword_27E15A838);
  v3 = *(*v2 + 104);
  v0[54] = v3;
  v4 = *(v1 + 88);
  v0[55] = v4;
  v5 = *(v4 + 24);
  v6 = *(v1 + 80);
  v0[56] = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[57] = v8;
  *v8 = v0;
  v8[1] = sub_23B574C14;

  return v10(v2 + v3, v6, v4);
}

uint64_t sub_23B574C14(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 456);
  v15 = *(*v1 + 440);
  v5 = *(*v1 + 432);
  v6 = *(*v1 + 288);
  v16 = *v1;
  v3[58] = a1;

  v7 = *(v15 + 32);
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v3[59] = v9;
  *v9 = v16;
  v9[1] = sub_23B574E40;
  v10 = v2[56];
  v11 = v3[55];
  v12 = v2[53];

  return (v14)(v6 + v5, 0, v10, v11);
}

uint64_t sub_23B574E40()
{
  v1 = *v0;
  v2 = *(*v0 + 472);
  v15 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 288);
  v5 = *v0;

  v6 = *(v15 + 40);
  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v1[60] = v8;
  *v8 = v5;
  v8[1] = sub_23B575064;
  v9 = v1[56];
  v10 = v1[55];
  v11 = v1[53];
  v12 = v1[36];

  return (v14)(v1 + 16, v4 + v3, v12, v9, v10);
}

uint64_t sub_23B575064()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 480);
  v8 = *v0;
  v4 = *(*v0 + 144);
  *(v2 + 488) = v2[8];
  *(v2 + 504) = v4;
  *(v2 + 520) = v2[10];

  v5 = *(v1 + 52);
  v6 = *(v1 + 51);

  return MEMORY[0x2822009F8](sub_23B5751A0, v6, v5);
}

uint64_t sub_23B5751A0()
{
  v1 = *(v0 + 488);
  if (v1)
  {
    v2 = *(v0 + 464);
    v3 = *(v0 + 432);
    v4 = *(v0 + 392);
    v44 = *(v0 + 424);
    v45 = *(v0 + 384);
    v46 = *(v0 + 376);
    v48 = *(v0 + 440);
    v5 = *(v0 + 312);
    v6 = *(v0 + 288);
    v42 = *(v0 + 448);
    v43 = *(v0 + 280);
    *(v0 + 536) = *(*(v0 + 296) + 88);
    v7 = type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
    v8 = v2;
    v9 = v1;
    v10 = objc_allocWithZone(v7);
    ObjectType = swift_getObjectType();
    v12 = MEMORY[0x277D85000];
    (*(*(*((*MEMORY[0x277D85000] & *v10) + qword_27E15B6E0) - 8) + 16))(&v10[*((*MEMORY[0x277D85000] & *v10) + qword_27E15B6E0 + 16)], v6 + v3);
    *&v10[*((*v12 & *v10) + qword_27E15B6E0 + 24)] = v2;
    *&v10[*((*v12 & *v10) + qword_27E15B6E0 + 32)] = v9;
    *(v0 + 264) = v10;
    *(v0 + 272) = ObjectType;
    v13 = objc_msgSendSuper2((v0 + 264), sel_init, v42);
    *(v0 + 544) = v13;
    type metadata accessor for UIReplacementTextEffectDelegateAdapter();
    v14 = swift_allocObject();
    *(v0 + 552) = v14;
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v44;
    swift_unknownObjectWeakAssign();
    v15 = *(v43 + qword_27E15A818);
    *(v0 + 560) = v15;
    swift_getWitnessTable();
    swift_unknownObjectRetain();
    v16 = v13;
    v17 = v15;

    sub_23B59D770();
    sub_23B59D760();
    (*(v45 + 8))(v4, v46);
    v18 = sub_23B59D6B0();
    *(v0 + 568) = v18;
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    *(v0 + 576) = sub_23B59D680();
    v21 = *(v48 + 48);
    v47 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    *(v0 + 584) = v23;
    *v23 = v0;
    v23[1] = sub_23B5755F0;
    v25 = *(v0 + 440);
    v24 = *(v0 + 448);
    v26 = *(v0 + 424);
    v27 = *(v0 + 288);

    return v47(v27, v24, v25);
  }

  else
  {
    v29 = *(v0 + 528);
    v30 = *(v0 + 520);
    v32 = *(v0 + 504);
    v31 = *(v0 + 512);
    v33 = *(v0 + 496);
    v34 = *(v0 + 464);
    v35 = *(v0 + 400);

    sub_23B579AC0(v33);

    v36 = *(v0 + 392);
    v37 = *(v0 + 368);
    v39 = *(v0 + 336);
    v38 = *(v0 + 344);
    v40 = *(v0 + 328);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_23B5755F0()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v6 = *v0;

  v3 = *(v1 + 416);
  v4 = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_23B575710, v4, v3);
}

uint64_t sub_23B575710()
{
  v53 = v0;
  v0[22] = v0[72];
  v1 = v0[70];
  v2 = v0[45];
  v3 = v0[46];
  v4 = v0[44];
  v45 = v0[67];
  v47 = v0[43];
  v49 = v0[42];
  v50 = v0[62];
  v5 = v0[39];
  v6 = v0[35];
  v7 = v0[36];
  v8 = MEMORY[0x277D74B28];
  v0[25] = v0[71];
  v0[26] = v8;

  sub_23B59D6C0();
  (*(v2 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_23B59D670();
  v52[3] = type metadata accessor for PlatformIntelligenceReplacementTextEffect();
  v52[4] = swift_getWitnessTable();
  v52[0] = v7;
  swift_beginAccess();

  sub_23B573B78(v52, v3);
  swift_endAccess();
  sub_23B56F52C(v7 + qword_27E15AD10, v47);
  sub_23B59D670();
  (*(v2 + 56))(v49, 0, 1, v4);
  swift_beginAccess();
  sub_23B573C94(v49, v47);
  swift_endAccess();
  if (v50 == 1)
  {
    v9 = v0[72];
    v10 = v0[69];
    v11 = v0[68];
    v12 = v0[61];
    v13 = v0[58];
    v14 = v0[50];

    v15 = v0[49];
    v16 = v0[46];
    v18 = v0[42];
    v17 = v0[43];
    v19 = v0[41];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[66];
    v23 = v0[65];
    v25 = v0[63];
    v24 = v0[64];
    v26 = v0[62];
    v46 = v0[58];
    v48 = v0[67];
    v43 = v0[54];
    v44 = v0[61];
    v28 = v0[40];
    v27 = v0[41];
    v29 = v0[39];
    v42 = v0[36];
    v0[2] = v46;
    v0[3] = v44;
    v0[4] = v26;
    v0[5] = v25;
    v0[6] = v24;
    v0[7] = v23;
    v0[8] = v22;
    v30 = type metadata accessor for PlatformIntelligenceRemainderAffordanceTextEffect();
    (*(v28 + 16))(v27, v42 + v43, v29);
    sub_23B579B7C(v26);
    v31 = v44;
    v32 = v46;
    sub_23B579B7C(v26);
    v33 = type metadata accessor for PlatformIntelligenceRemainderAffordanceTextEffect.Previews();
    v0[74] = v33;
    v34 = *(v33 - 8);
    v0[75] = v34;
    (*(v34 + 16))(v0 + 9, v0 + 2, v33);
    v35 = *(v30 + 48);
    v36 = *(v30 + 52);
    v37 = swift_allocObject();
    v0[76] = v37;
    sub_23B5740E4(v27, (v0 + 2));
    v38 = *(*v37 + 136);
    v51 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    v0[77] = v40;
    *v40 = v0;
    v40[1] = sub_23B575BB8;
    v41 = v0[35];

    return v51(v41);
  }
}

uint64_t sub_23B575BB8()
{
  v1 = *v0;
  v2 = *(*v0 + 616);
  v6 = *v0;

  v3 = *(v1 + 416);
  v4 = *(v1 + 408);

  return MEMORY[0x2822009F8](sub_23B575CD8, v4, v3);
}

uint64_t sub_23B575CD8()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v18 = v0[72];
  v19 = v0[69];
  v4 = v0[66];
  v5 = v0[65];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[61];
  v9 = v0[62];
  v20 = v0[68];
  v21 = v0[58];
  v10 = v0[50];

  (*(v2 + 8))(v0 + 2, v3);
  sub_23B579AC0(v9);

  sub_23B579AC0(v9);
  v11 = v0[49];
  v12 = v0[46];
  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];

  v16 = v0[1];

  return v16();
}

uint64_t sub_23B575E44(void *a1)
{
  sub_23B57692C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_23B575E9C(uint64_t a1)
{
  v4 = *(**v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56C32C;

  return v8(a1);
}

uint64_t sub_23B576054(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

uint64_t *sub_23B5760A4(uint64_t a1)
{
  v3 = *v1;
  sub_23B59D340();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 104), a1);
  return v1;
}

uint64_t sub_23B57613C(void *a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v2[18] = *MEMORY[0x277D85000] & *a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A820, qword_23B59ED90) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = *(*(type metadata accessor for PlatformIntelligenceTextEffectID() - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v5 = sub_23B59D720();
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v7 = *(v6 + 64) + 15;
  v2[23] = swift_task_alloc();
  v8 = *(*(sub_23B59D780() - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_23B59D8F0();
  v2[25] = sub_23B59D8E0();
  v10 = sub_23B59D8B0();
  v2[26] = v10;
  v2[27] = v9;

  return MEMORY[0x2822009F8](sub_23B576320, v10, v9);
}

uint64_t sub_23B576320()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = *(v0[15] + qword_27E15A838);
  v4 = *(*v2 + 104);
  v0[28] = v4;
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = *(v5 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_23B576470;

  return v11(v2 + v4, v6, v5);
}

uint64_t sub_23B576470(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = a1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_23B576598, v5, v4);
}

uint64_t sub_23B576598()
{
  v36 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);

  if (v1)
  {
    v3 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);
    v29 = *(v0 + 168);
    v33 = *(v0 + 160);
    v34 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    v30 = *(v6 + 88);
    v31 = *(v6 + 80);
    v9 = type metadata accessor for UIPonderingTextEffectTextChunkAdapter();
    v32 = v3;
    v10 = objc_allocWithZone(v9);
    ObjectType = swift_getObjectType();
    v12 = MEMORY[0x277D85000];
    (*(*(*((*MEMORY[0x277D85000] & *v10) + qword_27E15B650) - 8) + 16))(&v10[*((*MEMORY[0x277D85000] & *v10) + qword_27E15B650 + 16)], v7 + v4);
    *&v10[*((*v12 & *v10) + qword_27E15B650 + 24)] = v32;
    *(v0 + 104) = v10;
    *(v0 + 112) = ObjectType;
    v13 = objc_msgSendSuper2((v0 + 104), sel_init);
    v14 = *(v8 + qword_27E15A818);
    v27 = v13;
    v15 = v14;
    sub_23B59D770();
    v16 = sub_23B59D700();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    *(v0 + 16) = sub_23B59D6F0();
    v19 = MEMORY[0x277D74B30];
    *(v0 + 40) = v16;
    *(v0 + 48) = v19;

    sub_23B59D6C0();
    (*(v28 + 8))(v5, v29);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_23B59D6E0();
    v35[3] = type metadata accessor for PlatformIntelligencePonderingTextEffect();
    v35[4] = swift_getWitnessTable();
    v35[0] = v7;
    swift_beginAccess();

    sub_23B573B78(v35, v5);
    swift_endAccess();
    sub_23B56F52C(v7 + qword_27E15AD18, v33);
    sub_23B59D6E0();
    (*(v28 + 56))(v34, 0, 1, v29);
    swift_beginAccess();
    sub_23B573C94(v34, v33);
    swift_endAccess();
  }

  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t *sub_23B57692C(void *a1)
{
  v2 = *v1;
  sub_23B56F590(v1 + *a1);
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 104));
  return v1;
}

uint64_t sub_23B576A0C(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56C32C;

  return v8(a1);
}

unint64_t sub_23B576BAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23B59D720();
  sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38]);
  v5 = sub_23B59D7E0();

  return sub_23B576CF8(a1, v5);
}

unint64_t sub_23B576C44(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23B59DB00();
  sub_23B59D350();
  sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);
  sub_23B59D7F0();
  v4 = sub_23B59DB10();

  return sub_23B576EB8(a1, v4);
}

unint64_t sub_23B576CF8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_23B59D720();
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
      sub_23B57A87C(&qword_27E15A890, MEMORY[0x277D74B38]);
      v16 = sub_23B59D800();
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

unint64_t sub_23B576EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for PlatformIntelligenceTextEffectID() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_23B56F52C(*(v2 + 48) + v11 * v9, v7);
      v12 = sub_23B59D310();
      sub_23B56F590(v7);
      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_23B576FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23B576C44(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B578638();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for PlatformIntelligenceTextEffectID();
    sub_23B56F590(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56);
    v15 = sub_23B59D720();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_23B577ACC(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23B59D720();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

double sub_23B577178@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23B576BAC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23B578938();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_23B59D720();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_23B57ABEC((*(v11 + 56) + 40 * v8), a2);
    sub_23B577DD0(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23B57725C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23B59D720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v56 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
  v52 = a2;
  result = sub_23B59DA70();
  v17 = result;
  if (*(v14 + 16))
  {
    v55 = v13;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v46 = v3;
    v47 = v7 + 16;
    v48 = v7;
    v49 = v6;
    v53 = (v7 + 32);
    v24 = result + 64;
    v25 = v14;
    v50 = v14;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v25 + 48);
      v54 = *(v51 + 72);
      v32 = v31 + v54 * v30;
      if (v52)
      {
        sub_23B57AB88(v32, v55);
        v33 = *(v25 + 56);
        v34 = *(v48 + 72);
        (*(v48 + 32))(v56, v33 + v34 * v30, v6);
      }

      else
      {
        sub_23B56F52C(v32, v55);
        v35 = *(v25 + 56);
        v34 = *(v48 + 72);
        (*(v48 + 16))(v56, v35 + v34 * v30, v6);
      }

      v36 = *(v17 + 40);
      sub_23B59DB00();
      sub_23B59D350();
      sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);
      sub_23B59D7F0();
      result = sub_23B59DB10();
      v37 = -1 << *(v17 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        v6 = v49;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
      v6 = v49;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_23B57AB88(v55, *(v17 + 48) + v54 * v26);
      result = (*v53)(*(v17 + 56) + v34 * v26, v56, v6);
      ++*(v17 + 16);
      v25 = v50;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_37;
    }

    v44 = 1 << *(v25 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v50 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_23B5776E8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23B59D720();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
  v42 = a2;
  result = sub_23B59DA70();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
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
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_23B57ABEC((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_23B57A610(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38]);
      result = sub_23B59D7E0();
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
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_23B57ABEC(v47, *(v14 + 56) + 40 * v22);
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

unint64_t sub_23B577ACC(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v28);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_23B59D990();
    v29 = v12;
    v30 = (v13 + 1) & v12;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_23B56F52C(*(a2 + 48) + v14 * v11, v8);
      v16 = *(a2 + 40);
      sub_23B59DB00();
      sub_23B59D350();
      sub_23B57A87C(&qword_27E15A798, MEMORY[0x277CC95F0]);
      sub_23B59D7F0();
      v17 = sub_23B59DB10();
      result = sub_23B56F590(v8);
      v18 = v17 & v12;
      if (a1 >= v30)
      {
        if (v18 >= v30 && a1 >= v18)
        {
LABEL_11:
          if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19 = *(a2 + 56);
          v20 = *(*(sub_23B59D720() - 8) + 72);
          v21 = v20 * a1;
          result = v19 + v20 * a1;
          v22 = v20 * v11;
          v23 = v19 + v20 * v11 + v20;
          if (v21 < v22 || result >= v23)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v12 = v29;
          }

          else
          {
            a1 = v11;
            v12 = v29;
            if (v21 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }
        }
      }

      else if (v18 >= v30 || a1 >= v18)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23B577DD0(int64_t a1, uint64_t a2)
{
  v45 = sub_23B59D720();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20]();
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_23B59D990();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23B57A87C(&qword_27E15A888, MEMORY[0x277D74B38]);
      v26 = sub_23B59D7E0();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_23B5780F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23B576C44(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23B578638();
      goto LABEL_7;
    }

    sub_23B57725C(v17, a3 & 1);
    v28 = *v4;
    v29 = sub_23B576C44(a2);
    if ((v18 & 1) == (v30 & 1))
    {
      v14 = v29;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_23B56F52C(a2, v11);
      return sub_23B578498(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_23B59DAC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_23B59D720();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_23B5782BC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23B59D720();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23B576BAC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23B578938();
      goto LABEL_7;
    }

    sub_23B5776E8(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23B576BAC(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23B578574(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23B59DAC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_23B57ABEC(a1, v22);
}

uint64_t sub_23B578498(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PlatformIntelligenceTextEffectID();
  sub_23B57AB88(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_23B59D720();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23B578574(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23B59D720();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23B57ABEC(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_23B578638()
{
  v1 = v0;
  v2 = sub_23B59D720();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlatformIntelligenceTextEffectID();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
  v9 = *v0;
  v10 = sub_23B59DA60();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v38 + 72) * v25;
        sub_23B56F52C(*(v9 + 48) + v26, v21);
        v28 = v40;
        v27 = v41;
        v29 = *(v41 + 72) * v25;
        v30 = v39;
        (*(v41 + 16))(v39, *(v9 + 56) + v29, v40);
        v31 = v42;
        sub_23B57AB88(v21, *(v42 + 48) + v26);
        result = (*(v27 + 32))(*(v31 + 56) + v29, v30, v28);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_23B578938()
{
  v1 = v0;
  v30 = sub_23B59D720();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
  v4 = *v0;
  v5 = sub_23B59DA60();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_23B57A610(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_23B57ABEC(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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

uint64_t sub_23B578BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B59D8F0();
  v3[5] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B578C5C, v5, v4);
}

uint64_t sub_23B578C5C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter();
  if (swift_dynamicCastClass())
  {
    v5 = 1;
  }

  else
  {
    v6 = v0[2];
    type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v5 = *(v5 + *((*MEMORY[0x277D85000] & *v5) + qword_27E15B6E0 + 24)) != 0;
    }
  }

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_23B578DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_23B59D8F0();
  v3[5] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B578E4C, v5, v4);
}

void *sub_23B578E4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIPonderingTextEffectTextChunkAdapter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = v0[5];
    v7 = v3;

    v8 = *(v5 + *((*MEMORY[0x277D85000] & *v5) + qword_27E15B650 + 24));
  }

  else
  {
    type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
    result = swift_dynamicCastClass();
    if (!result)
    {
      sub_23B59D9B0();
      MEMORY[0x23EE9E960](0xD000000000000046, 0x800000023B5A0720);
      swift_getObjectType();
      v13 = sub_23B59DB20();
      MEMORY[0x23EE9E960](v13);

      MEMORY[0x23EE9E960](46, 0xE100000000000000);
      return sub_23B59DA40();
    }

    v10 = *(result + *((*MEMORY[0x277D85000] & *result) + qword_27E15B6E0 + 24));
    if (!v10)
    {
      __break(1u);
      return result;
    }

    v11 = v0[5];
    v8 = v10;
  }

  v12 = v0[1];

  return v12(v8);
}

uint64_t sub_23B579104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  sub_23B59D8F0();
  v4[5] = sub_23B59D8E0();
  v6 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B5791A0, v6, v5);
}

uint64_t sub_23B5791A0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UIReplacementTextEffectTextChunkAdapter();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = v0[5];
    v7 = v3;

    v8 = *(v5 + *((*MEMORY[0x277D85000] & *v5) + qword_27E15B6E0 + 32));

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    sub_23B59D9B0();
    MEMORY[0x23EE9E960](0xD000000000000055, 0x800000023B5A0610);
    swift_getObjectType();
    v11 = sub_23B59DB20();
    MEMORY[0x23EE9E960](v11);

    MEMORY[0x23EE9E960](46, 0xE100000000000000);
    return sub_23B59DA40();
  }
}

unint64_t sub_23B579400(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8B0, &qword_23B59F5D0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A0, &qword_23B59F5C0);
    v8 = sub_23B59DA80();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23B57AC04(v10, v6, &qword_27E15A8B0, &qword_23B59F5D0);
      result = sub_23B576BAC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23B59D720();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_23B57ABEC(&v6[v9], v8[7] + 40 * v14);
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

unint64_t sub_23B5795F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8A8, &qword_23B59F5C8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A898, &qword_23B59F5B8);
    v8 = sub_23B59DA80();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23B57AC04(v10, v6, &qword_27E15A8A8, &qword_23B59F5C8);
      result = sub_23B576C44(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for PlatformIntelligenceTextEffectID();
      sub_23B57AB88(v6, v15 + *(*(v16 - 8) + 72) * v14);
      v17 = v8[7];
      v18 = sub_23B59D720();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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

void sub_23B5797F8()
{
  v1 = qword_27E15A830;
  v2 = MEMORY[0x277D84F90];
  *(v0 + v1) = sub_23B579400(MEMORY[0x277D84F90]);
  v3 = qword_27E15A828;
  *(v0 + v3) = sub_23B5795F0(v2);
  sub_23B59DA40();
  __break(1u);
}

id sub_23B57988C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = qword_27E15A830;
  v8 = MEMORY[0x277D84F90];
  *(v2 + v7) = sub_23B579400(MEMORY[0x277D84F90]);
  v9 = qword_27E15A828;
  *(v2 + v9) = sub_23B5795F0(v8);
  *(v2 + qword_27E15A838) = a1;
  v10 = *((v6 & v5) + 0x50);
  v11 = *((v6 & v5) + 0x58);
  type metadata accessor for UITextEffectViewSourceAdapter();
  v12 = swift_unknownObjectRetain_n();
  v13 = sub_23B5708DC(v12);
  *(v2 + qword_27E15A840) = v13;
  objc_allocWithZone(sub_23B59D750());
  v14 = v13;
  v15 = sub_23B59D740();
  *(v2 + qword_27E15A818) = v15;
  [v15 setClipsToBounds_];
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_23B579A24()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_23B579A74()
{
  result = qword_27E15A848;
  if (!qword_27E15A848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15A848);
  }

  return result;
}

void sub_23B579AC0(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

id sub_23B579B7C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23B579C90(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23B579D38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_23B579D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23B579EA8(uint64_t a1)
{
  v1 = *(a1 + qword_27E15B650);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B579F54(uint64_t a1)
{
  v1 = *(a1 + qword_27E15B6E0);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B57A020(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B59D350();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B57A0A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B59D350();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B57A110()
{
  result = sub_23B59D350();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B57A204()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23B57A268(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_23B57A2B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23B57A308(uint64_t a1)
{
  result = sub_23B59D350();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23B57A3DC(uint64_t a1)
{
  result = sub_23B59D350();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
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

uint64_t sub_23B57A4D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B57A4F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_23B57A530()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B57A578()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23B56C32C;

  return sub_23B5723C8(v4, v5, v6, v2, v3);
}

uint64_t sub_23B57A610(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B57A674(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B57A6D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B57A70C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56C32C;

  return sub_23B56BCC4(a1, v5);
}

uint64_t sub_23B57A7C4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23B56B770;

  return sub_23B56BCC4(a1, v5);
}

uint64_t sub_23B57A87C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23B57A8C4()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B57A90C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23B56C32C;

  return sub_23B571D40(v2, v3, v5, v4);
}

uint64_t sub_23B57A9D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56B770;

  return sub_23B570F40(v2, v3, v4);
}

uint64_t objectdestroy_80Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B57AAD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B570ABC(v2, v3, v4);
}

uint64_t sub_23B57AB88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatformIntelligenceTextEffectID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B57ABEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B57AC04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_23B57AC78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23B57AC98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_23B57ACE8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_23B57AD70()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15BA88);
  __swift_project_value_buffer(v0, qword_27E15BA88);
  return sub_23B59D650();
}

uint64_t sub_23B57ADF0()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = sub_23B59D630();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_23B59D620();
  sub_23B580BC4(&qword_27E15BBB0);

  sub_23B59D600();

  v5 = *(v0 + 16);
  sub_23B580BC4(qword_27E15BBB8);

  sub_23B59D610();

  return v1;
}

uint64_t sub_23B57AEE0(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v3 = sub_23B59D570();
  v2[39] = v3;
  v4 = *(v3 - 8);
  v2[40] = v4;
  v5 = *(v4 + 64) + 15;
  v2[41] = swift_task_alloc();
  v6 = sub_23B59D580();
  v2[42] = v6;
  v7 = *(v6 - 8);
  v2[43] = v7;
  v8 = *(v7 + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A978, &qword_23B59F748) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v10 = sub_23B59D540();
  v2[48] = v10;
  v11 = *(v10 - 8);
  v2[49] = v11;
  v12 = *(v11 + 64) + 15;
  v2[50] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0) - 8) + 64) + 15;
  v2[51] = swift_task_alloc();
  v14 = sub_23B59D520();
  v2[52] = v14;
  v15 = *(v14 - 8);
  v2[53] = v15;
  v16 = *(v15 + 64) + 15;
  v2[54] = swift_task_alloc();
  v2[55] = sub_23B59D8F0();
  v2[56] = sub_23B59D8E0();
  v18 = sub_23B59D8B0();
  v2[57] = v18;
  v2[58] = v17;

  return MEMORY[0x2822009F8](sub_23B57B174, v18, v17);
}

uint64_t sub_23B57B174()
{
  v59 = v0;
  if (qword_27E15BA80 != -1)
  {
    swift_once();
  }

  v1 = v0;
  v2 = *(v0 + 296);
  v3 = sub_23B59D660();
  *(v0 + 472) = __swift_project_value_buffer(v3, qword_27E15BA88);
  v4 = v2;
  v5 = sub_23B59D640();
  v6 = sub_23B59D940();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 296);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58 = v9;
    *v8 = 136315138;
    v10 = v7;
    v11 = [v10 description];
    v12 = sub_23B59D820();
    v14 = v13;

    v15 = sub_23B57F234(v12, v14, &v58);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23B568000, v5, v6, "IdentityDocumentPresentmentController performRequest called with request %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x23EE9F1D0](v9, -1, -1);
    MEMORY[0x23EE9F1D0](v8, -1, -1);
  }

  v57 = v1;
  v16 = [*(v1 + 296) mobileDocumentRequests];
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v17 = sub_23B59D890();

  if (v17 >> 62)
  {
    v18 = sub_23B59DA50();
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_17:

    v26 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_7:
  v58 = MEMORY[0x277D84F90];
  v19 = sub_23B57F860(0, v18 & ~(v18 >> 63), 0);
  if (v18 < 0)
  {
    __break(1u);
    return MEMORY[0x282200430](v19, v20, v21, v22, v23);
  }

  v24 = 0;
  v25 = v1;
  v26 = v58;
  v27 = *(v1 + 424);
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x23EE9EAD0](v24, v17);
    }

    else
    {
      v28 = *(v17 + 8 * v24 + 32);
    }

    sub_23B56FFCC(v28, *(v25 + 432));
    v58 = v26;
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_23B57F860(v29 > 1, v30 + 1, 1);
      v25 = v1;
      v26 = v58;
    }

    v31 = *(v25 + 432);
    v32 = *(v25 + 416);
    ++v24;
    *(v26 + 16) = v30 + 1;
    (*(v27 + 32))(v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, v31, v32);
  }

  while (v18 != v24);

LABEL_18:

  v33 = sub_23B59D640();
  v34 = sub_23B59D940();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v57;
    v36 = v57[52];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v58 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x23EE9E9A0](v26, v36);
    v41 = sub_23B57F234(v39, v40, &v58);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_23B568000, v33, v34, "IdentityDocumentPresentmentController build converted request %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x23EE9F1D0](v38, -1, -1);
    MEMORY[0x23EE9F1D0](v37, -1, -1);
  }

  else
  {

    v35 = v57;
  }

  v42 = v35[55];
  v43 = v35[51];
  v45 = v35[37];
  v44 = v35[38];
  v46 = sub_23B59D910();
  (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
  v47 = v45;

  v48 = sub_23B59D8E0();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v44;
  v49[5] = v26;
  v49[6] = v47;
  v51 = sub_23B57D2B8(0, 0, v43, &unk_23B59F758, v49);
  v35[60] = v51;
  v52 = *(v44 + 24);
  *(v44 + 24) = v51;

  v53 = *(MEMORY[0x277D857C8] + 4);
  v54 = swift_task_alloc();
  v35[61] = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
  v35[62] = v55;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
  v35[63] = v22;
  *v54 = v35;
  v54[1] = sub_23B57B6F4;
  v23 = MEMORY[0x277D84950];
  v19 = (v35 + 10);
  v20 = v51;
  v21 = v55;

  return MEMORY[0x282200430](v19, v20, v21, v22, v23);
}

uint64_t sub_23B57B6F4()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 512) = v0;

  v5 = *(v2 + 464);
  v6 = *(v2 + 456);
  if (v0)
  {
    v7 = sub_23B57C2D4;
  }

  else
  {
    v7 = sub_23B57B830;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23B57B830()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 448);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 376);

  sub_23B57A610(v0 + 80, v0 + 120);
  v6 = swift_dynamicCast();
  v7 = *(v4 + 56);
  if (v6)
  {
    v95 = *(v0 + 480);
    v97 = *(v0 + 432);
    v8 = *(v0 + 400);
    v10 = *(v0 + 384);
    v9 = *(v0 + 392);
    v11 = *(v0 + 376);
    v101 = *(v0 + 360);
    v103 = *(v0 + 352);
    v104 = *(v0 + 328);
    v7(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    v12 = sub_23B59D530();
    v14 = v13;
    v15 = objc_allocWithZone(WKIdentityDocumentPresentmentResponse);
    v16 = sub_23B59D810();
    v17 = sub_23B59D2E0();
    v18 = [v15 initWithProtocolString:v16 responseData:v17];

    sub_23B56C05C(v12, v14);

    (*(v9 + 8))(v8, v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));

    v19 = *(v0 + 8);

    return v19(v18);
  }

  v21 = *(v0 + 472);
  v22 = *(v0 + 376);
  v7(v22, 1, 1, *(v0 + 384));
  sub_23B57A674(v22, &qword_27E15A978, &qword_23B59F748);
  v23 = sub_23B59D640();
  v24 = sub_23B59D950();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23B568000, v23, v24, "IdentityDocumentPresentmentController unexpectedly received a response that is not of type ISO18013MobileDocumentResponse", v25, 2u);
    MEMORY[0x23EE9F1D0](v25, -1, -1);
  }

  v26 = *(v0 + 480);

  type metadata accessor for WKIdentityDocumentPresentmentError(0);
  *(v0 + 288) = 1;
  sub_23B57FBC0(MEMORY[0x277D84F90]);
  sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
  sub_23B59D280();
  v27 = *(v0 + 280);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v28 = *(v0 + 504);
  v29 = *(v0 + 368);
  v30 = *(v0 + 336);
  *(v0 + 160) = v27;
  v31 = v27;
  if (swift_dynamicCast())
  {
    v33 = *(v0 + 360);
    v32 = *(v0 + 368);
    v34 = *(v0 + 344);
    v35 = *(v0 + 352);
    v36 = *(v0 + 328);
    v37 = *(v0 + 336);
    v38 = *(v0 + 320);
    v99 = *(v0 + 312);

    v94 = *(v34 + 32);
    v94(v33, v32, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B59F620;
    v40 = *MEMORY[0x277CCA068];
    *(inited + 32) = sub_23B59D820();
    *(inited + 40) = v41;
    *(inited + 48) = sub_23B59D550();
    *(inited + 56) = v42;
    v102 = sub_23B57FD04(inited);
    swift_setDeallocating();
    sub_23B57A674(inited + 32, &qword_27E15A990, &qword_23B59F768);
    v43 = *(v34 + 16);
    v43(v35, v33, v37);
    v98 = *(v38 + 104);
    v98(v36, *MEMORY[0x277CD2BD8], v99);
    sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8]);
    v44 = swift_allocError();
    v96 = v43;
    v43(v45, v35, v37);
    LOBYTE(v35) = sub_23B59D560();
    v46 = v99;
    v100 = *(v38 + 8);
    v100(v36, v46);

    if (v35)
    {
      v47 = *(v0 + 360);
      v48 = *(v0 + 336);
      v49 = *(*(v0 + 344) + 8);
      v49(*(v0 + 352), v48);
      *(v0 + 272) = 0;
      sub_23B57D574(v102);

      sub_23B59D280();
      v50 = *(v0 + 264);
    }

    else
    {
      v52 = *(v0 + 352);
      v54 = *(v0 + 328);
      v53 = *(v0 + 336);
      v55 = *(v0 + 312);
      v98(v54, *MEMORY[0x277CD2BC8], v55);
      v56 = swift_allocError();
      v96(v57, v52, v53);
      LOBYTE(v52) = sub_23B59D560();
      v100(v54, v55);

      if (v52)
      {
        v47 = *(v0 + 360);
        v48 = *(v0 + 336);
        v49 = *(*(v0 + 344) + 8);
        v49(*(v0 + 352), v48);
        *(v0 + 256) = 1;
        sub_23B57D574(v102);

        sub_23B59D280();
        v58 = *(v0 + 248);
      }

      else
      {
        v59 = *(v0 + 352);
        v61 = *(v0 + 328);
        v60 = *(v0 + 336);
        v62 = *(v0 + 312);
        v98(v61, *MEMORY[0x277CD2BD0], v62);
        v63 = swift_allocError();
        v96(v64, v59, v60);
        LOBYTE(v59) = sub_23B59D560();
        v100(v61, v62);

        if (v59)
        {
          v47 = *(v0 + 360);
          v48 = *(v0 + 336);
          v49 = *(*(v0 + 344) + 8);
          v49(*(v0 + 352), v48);
          *(v0 + 240) = 2;
          sub_23B57D574(v102);

          sub_23B59D280();
          v65 = *(v0 + 232);
        }

        else
        {
          v66 = *(v0 + 352);
          v68 = *(v0 + 328);
          v67 = *(v0 + 336);
          v69 = *(v0 + 312);
          v98(v68, *MEMORY[0x277CD2BE0], v69);
          v70 = swift_allocError();
          v96(v71, v66, v67);
          LOBYTE(v66) = sub_23B59D560();
          v100(v68, v69);

          if ((v66 & 1) == 0)
          {
            v82 = *(v0 + 344);
            v83 = *(v0 + 352);
            v85 = *(v0 + 328);
            v84 = *(v0 + 336);
            v86 = *(v0 + 312);
            v98(v85, *MEMORY[0x277CD2BC0], v86);
            v87 = swift_allocError();
            v94(v88, v83, v84);
            LOBYTE(v83) = sub_23B59D560();
            v100(v85, v86);

            v89 = (v82 + 8);
            v90 = *(v0 + 360);
            v91 = *(v0 + 336);
            if (v83)
            {
              *(v0 + 208) = 4;
              sub_23B57D574(v102);

              sub_23B59D280();
              v92 = *(v0 + 200);
            }

            else
            {
              *(v0 + 192) = 0;
              sub_23B57D574(v102);

              sub_23B59D280();
              v93 = *(v0 + 184);
            }

            swift_willThrow();
            (*v89)(v90, v91);
            v27 = *(v0 + 160);
            goto LABEL_18;
          }

          v47 = *(v0 + 360);
          v48 = *(v0 + 336);
          v49 = *(*(v0 + 344) + 8);
          v49(*(v0 + 352), v48);
          *(v0 + 224) = 3;
          sub_23B57D574(v102);

          sub_23B59D280();
          v72 = *(v0 + 216);
        }
      }
    }

    swift_willThrow();
    v49(v47, v48);
    v27 = *(v0 + 160);
  }

  else
  {

    *(v0 + 176) = 0;
    sub_23B57FBC0(MEMORY[0x277D84F90]);
    sub_23B59D280();
    v51 = *(v0 + 168);
    swift_willThrow();
  }

LABEL_18:

  v73 = *(v0 + 432);
  v75 = *(v0 + 400);
  v74 = *(v0 + 408);
  v77 = *(v0 + 368);
  v76 = *(v0 + 376);
  v79 = *(v0 + 352);
  v78 = *(v0 + 360);
  v80 = *(v0 + 328);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_23B57C2D4()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);

  v3 = *(v0 + 512);
  *(v0 + 160) = v3;
  v4 = *(v0 + 504);
  v5 = *(v0 + 368);
  v6 = *(v0 + 336);
  v7 = v3;
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 328);
    v12 = *(v0 + 336);
    v13 = *(v0 + 320);
    v72 = *(v0 + 352);
    v73 = *(v0 + 312);

    v69 = *(v10 + 32);
    v69(v9, v8, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23B59F620;
    v15 = *MEMORY[0x277CCA068];
    *(inited + 32) = sub_23B59D820();
    *(inited + 40) = v16;
    *(inited + 48) = sub_23B59D550();
    *(inited + 56) = v17;
    v75 = sub_23B57FD04(inited);
    swift_setDeallocating();
    sub_23B57A674(inited + 32, &qword_27E15A990, &qword_23B59F768);
    v18 = *(v10 + 16);
    v18(v72, v9, v12);
    v71 = *(v13 + 104);
    v71(v11, *MEMORY[0x277CD2BD8], v73);
    sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8]);
    v19 = swift_allocError();
    v70 = v18;
    v18(v20, v72, v12);
    LOBYTE(v10) = sub_23B59D560();
    v21 = *(v13 + 8);
    v21(v11, v73);

    if (v10)
    {
      v22 = *(v0 + 360);
      v23 = *(v0 + 336);
      v24 = *(*(v0 + 344) + 8);
      v24(*(v0 + 352), v23);
      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      *(v0 + 272) = 0;
      sub_23B57D574(v75);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
      sub_23B59D280();
      v25 = *(v0 + 264);
    }

    else
    {
      v27 = *(v0 + 352);
      v29 = *(v0 + 328);
      v28 = *(v0 + 336);
      v30 = *(v0 + 312);
      v71(v29, *MEMORY[0x277CD2BC8], v30);
      v31 = swift_allocError();
      v70(v32, v27, v28);
      LOBYTE(v27) = sub_23B59D560();
      v21(v29, v30);

      if (v27)
      {
        v22 = *(v0 + 360);
        v23 = *(v0 + 336);
        v24 = *(*(v0 + 344) + 8);
        v24(*(v0 + 352), v23);
        type metadata accessor for WKIdentityDocumentPresentmentError(0);
        *(v0 + 256) = 1;
        sub_23B57D574(v75);

        sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
        sub_23B59D280();
        v33 = *(v0 + 248);
      }

      else
      {
        v34 = *(v0 + 352);
        v36 = *(v0 + 328);
        v35 = *(v0 + 336);
        v37 = *(v0 + 312);
        v71(v36, *MEMORY[0x277CD2BD0], v37);
        v38 = swift_allocError();
        v70(v39, v34, v35);
        LOBYTE(v34) = sub_23B59D560();
        v21(v36, v37);

        if (v34)
        {
          v22 = *(v0 + 360);
          v23 = *(v0 + 336);
          v24 = *(*(v0 + 344) + 8);
          v24(*(v0 + 352), v23);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          *(v0 + 240) = 2;
          sub_23B57D574(v75);

          sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
          sub_23B59D280();
          v40 = *(v0 + 232);
        }

        else
        {
          v41 = *(v0 + 352);
          v43 = *(v0 + 328);
          v42 = *(v0 + 336);
          v44 = *(v0 + 312);
          v71(v43, *MEMORY[0x277CD2BE0], v44);
          v45 = swift_allocError();
          v70(v46, v41, v42);
          LOBYTE(v41) = sub_23B59D560();
          v21(v43, v44);

          if ((v41 & 1) == 0)
          {
            v58 = *(v0 + 352);
            v74 = *(v0 + 344);
            v60 = *(v0 + 328);
            v59 = *(v0 + 336);
            v61 = *(v0 + 312);
            v71(v60, *MEMORY[0x277CD2BC0], v61);
            v62 = swift_allocError();
            v69(v63, v58, v59);
            v64 = sub_23B59D560();
            v21(v60, v61);

            v65 = *(v0 + 360);
            v66 = *(v0 + 336);
            type metadata accessor for WKIdentityDocumentPresentmentError(0);
            if (v64)
            {
              *(v0 + 208) = 4;
              sub_23B57D574(v75);

              sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
              sub_23B59D280();
              v67 = *(v0 + 200);
            }

            else
            {
              *(v0 + 192) = 0;
              sub_23B57D574(v75);

              sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
              sub_23B59D280();
              v68 = *(v0 + 184);
            }

            swift_willThrow();
            (*(v74 + 8))(v65, v66);
            v3 = *(v0 + 160);
            goto LABEL_12;
          }

          v22 = *(v0 + 360);
          v23 = *(v0 + 336);
          v24 = *(*(v0 + 344) + 8);
          v24(*(v0 + 352), v23);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          *(v0 + 224) = 3;
          sub_23B57D574(v75);

          sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
          sub_23B59D280();
          v47 = *(v0 + 216);
        }
      }
    }

    swift_willThrow();
    v24(v22, v23);
    v3 = *(v0 + 160);
  }

  else
  {

    type metadata accessor for WKIdentityDocumentPresentmentError(0);
    *(v0 + 176) = 0;
    sub_23B57FBC0(MEMORY[0x277D84F90]);
    sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
    sub_23B59D280();
    v26 = *(v0 + 168);
    swift_willThrow();
  }

LABEL_12:

  v48 = *(v0 + 432);
  v50 = *(v0 + 400);
  v49 = *(v0 + 408);
  v52 = *(v0 + 368);
  v51 = *(v0 + 376);
  v54 = *(v0 + 352);
  v53 = *(v0 + 360);
  v55 = *(v0 + 328);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_23B57CC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_23B59D2D0();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  sub_23B59D8F0();
  v6[9] = sub_23B59D8E0();
  v11 = sub_23B59D8B0();
  v6[10] = v11;
  v6[11] = v10;

  return MEMORY[0x2822009F8](sub_23B57CD6C, v11, v10);
}

uint64_t sub_23B57CD6C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = *(v0[3] + 16);
  v4 = sub_23B57D0EC(v0[4]);
  v0[12] = v4;
  v5 = [v2 origin];
  sub_23B59D2C0();

  v6 = *(MEMORY[0x277CD2C00] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_23B57CE58;
  v8 = v0[8];
  v9 = v0[2];

  return MEMORY[0x282122940](v9, v4, v8);
}

uint64_t sub_23B57CE58()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_23B57D080;
  }

  else
  {
    v11 = sub_23B57D014;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_23B57D014()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23B57D080()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_23B57D0EC(uint64_t a1)
{
  v2 = sub_23B59D520();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_23B57F880(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23B57F880((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = MEMORY[0x277CD2BB0];
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v19);
      v10(boxed_opaque_existential_0Tm, v6, v2);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_23B57ABEC(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_23B57D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A970, &qword_23B59F4E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23B57AC04(a3, v24 - v10, &qword_27E15A970, &qword_23B59F4E0);
  v12 = sub_23B59D910();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B57A674(v11, &qword_27E15A970, &qword_23B59F4E0);
  }

  else
  {
    sub_23B59D900();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23B59D8B0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23B59D830() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B57A674(a3, &qword_27E15A970, &qword_23B59F4E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8D8, &unk_23B59F640);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_23B57D574(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A8, &unk_23B59FB10);
    v2 = sub_23B59DA80();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_23B580B50(&v27, v29);
        sub_23B580B50(v29, v30);
        sub_23B580B50(v30, &v28);
        result = sub_23B57F7DC(v18, v17, sub_23B57EFA4);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_23B580B50(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_23B580B50(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_23B57D7E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_23B5809C8(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23B57D828(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  type metadata accessor for WKIdentityDocumentPresentmentRawRequest();
  sub_23B59D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A958, &qword_23B59F6F0);
  return sub_23B59D8D0();
}

uint64_t sub_23B57D898@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_23B59D590();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_23B59D8F0();
  sub_23B59D8E0();
  sub_23B59D8B0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = [v8 requestProtocol];
  v10 = sub_23B59D820();
  v12 = v11;

  if (v10 == 0x2E6F73692E67726FLL && v12 == 0xEC000000636F646DLL)
  {

    goto LABEL_16;
  }

  v14 = sub_23B59DAB0();

  if (v14)
  {
LABEL_16:
    (*(v4 + 104))(v7, *MEMORY[0x277CD2BF8], v3);
    v21 = [v8 requestData];
    sub_23B59D2F0();

    v22 = v25;
    sub_23B59D5A0();
    v23 = sub_23B59D5B0();
    (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  if (qword_27E15BA80 != -1)
  {
    swift_once();
  }

  v15 = sub_23B59D660();
  __swift_project_value_buffer(v15, qword_27E15BA88);
  v16 = sub_23B59D640();
  v17 = sub_23B59D940();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23B568000, v16, v17, "IdentityDocumentPresentmentController raw request call back encountered a non-ISO request. Skipping", v18, 2u);
    MEMORY[0x23EE9F1D0](v18, -1, -1);
  }

  v19 = sub_23B59D5B0();
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
}

id sub_23B57DC18()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong presentationAnchor];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_23B57DC70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23B572B0C;

  return sub_23B57FE2C();
}

uint64_t variable initialization expression of WKIdentityDocumentPresentmentController.base()
{
  _s4BaseCMa();
  v0 = swift_allocObject();
  sub_23B57ADF0();
  return v0;
}

uint64_t sub_23B57DEC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_23B59D8F0();
  v2[4] = sub_23B59D8E0();
  v4 = sub_23B59D8B0();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_23B57DF5C, v4, v3);
}

uint64_t sub_23B57DF5C()
{
  v1 = *(v0[3] + OBJC_IVAR___WKIdentityDocumentPresentmentController_base);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_23B57E000;
  v3 = v0[2];

  return sub_23B57AEE0(v3);
}

uint64_t sub_23B57E000(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = v4[6];
    v9 = sub_23B57E190;
  }

  else
  {
    v4[9] = a1;
    v7 = v4[5];
    v8 = v4[6];
    v9 = sub_23B57E128;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_23B57E128()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_23B57E190()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_23B57E37C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_23B59D8F0();
  v3[6] = sub_23B59D8E0();
  v5 = sub_23B59D8B0();

  return MEMORY[0x2822009F8](sub_23B57E41C, v5, v4);
}

uint64_t sub_23B57E41C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  v0[7] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v0[8] = sub_23B59D8E0();
  v9 = sub_23B59D8B0();
  v0[9] = v9;
  v0[10] = v8;

  return MEMORY[0x2822009F8](sub_23B57E4D0, v9, v8);
}

uint64_t sub_23B57E4D0()
{
  v1 = *(v0[4] + OBJC_IVAR___WKIdentityDocumentPresentmentController_base);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_23B57E574;
  v3 = v0[2];

  return sub_23B57AEE0(v3);
}

uint64_t sub_23B57E574(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  v7 = *(v3 + 80);
  v8 = *(v3 + 72);
  if (v1)
  {
    v9 = sub_23B57E768;
  }

  else
  {
    v9 = sub_23B57E6B8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23B57E6B8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v0[12];
  if (v2)
  {
    v6 = v0[7];
    v6[2](v6, v0[12], 0);

    _Block_release(v6);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23B57E768()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v0[13];
  if (v2)
  {
    v6 = v0[7];
    v7 = v0[13];
    v8 = sub_23B59D290();

    (v6)[2](v6, 0, v8);
    _Block_release(v6);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

void __swiftcall WKIdentityDocumentPresentmentController.init()(WKIdentityDocumentPresentmentController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id WKIdentityDocumentPresentmentController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WKIdentityDocumentPresentmentController_base;
  _s4BaseCMa();
  v3 = swift_allocObject();
  sub_23B57ADF0();
  *&v1[v2] = v3;
  v5.receiver = v1;
  v5.super_class = WKIdentityDocumentPresentmentController;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentController()
{
  result = qword_27E15BAA0[0];
  if (!qword_27E15BAA0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E15BAA0);
  }

  return result;
}

uint64_t sub_23B57EB20(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A9F0, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23B57EB8C(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A9F0, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_23B57EBFC(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_23B57EC88(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_23B57ECF4(uint64_t a1)
{
  v2 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_23B57ED60(void *a1, uint64_t a2)
{
  v4 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_23B57EE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_23B57EE90()
{
  v2 = *v0;
  sub_23B59DB00();
  sub_23B59D7F0();
  return sub_23B59DB10();
}

void *sub_23B57EEF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B57EF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_23B57EFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B59DAB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t sub_23B57F05C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A968, &unk_23B59F700);
  v10 = *(sub_23B59D5B0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_23B59D5B0() - 8);
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

uint64_t sub_23B57F234(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23B57F300(v11, 0, 0, 1, a1, a2);
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
    sub_23B5806A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23B57F300(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23B57F40C(a5, a6);
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
    result = sub_23B59D9E0();
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

uint64_t sub_23B57F40C(uint64_t a1, unint64_t a2)
{
  v4 = sub_23B57F458(a1, a2);
  sub_23B57F588(&unk_284E1AC98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23B57F458(uint64_t a1, unint64_t a2)
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

  v6 = sub_23B57F674(v5, 0);
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

  result = sub_23B59D9E0();
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
        v10 = sub_23B59D870();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23B57F674(v10, 0);
        result = sub_23B59D9A0();
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

uint64_t sub_23B57F588(uint64_t result)
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

  result = sub_23B57F6E8(result, v12, 1, v3);
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

void *sub_23B57F674(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A0, &unk_23B59F770);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23B57F6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A0, &unk_23B59F770);
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

uint64_t sub_23B57F7DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_23B59DB00();
  sub_23B59D840();
  v7 = sub_23B59DB10();

  return a3(a1, a2, v7);
}

size_t sub_23B57F860(size_t a1, int64_t a2, char a3)
{
  result = sub_23B57F8A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23B57F880(void *a1, int64_t a2, char a3)
{
  result = sub_23B57FA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23B57F8A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9D0, &qword_23B59F7A0);
  v10 = *(sub_23B59D520() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_23B59D520() - 8);
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

void *sub_23B57FA78(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9C0, &qword_23B59F790);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9C8, &qword_23B59F798);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_23B57FBC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9A8, &unk_23B59FB10);
    v3 = sub_23B59DA80();
    v4 = a1 + 32;

    while (1)
    {
      sub_23B57AC04(v4, &v13, &qword_27E15A9B8, &unk_23B59FB20);
      v5 = v13;
      v6 = v14;
      result = sub_23B57F7DC(v13, v14, sub_23B57EFA4);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23B580B50(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23B57FD04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A9B0, &unk_23B59F780);
    v3 = sub_23B59DA80();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23B57F7DC(v5, v6, sub_23B57EFA4);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_23B57FE2C()
{
  v1[19] = v0;
  v1[20] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A950, &qword_23B59F6E8) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v3 = sub_23B59D5B0();
  v1[22] = v3;
  v4 = *(v3 - 8);
  v1[23] = v4;
  v5 = *(v4 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A958, &qword_23B59F6F0);
  v1[26] = v6;
  v7 = *(v6 - 8);
  v1[27] = v7;
  v8 = *(v7 + 64) + 15;
  v1[28] = swift_task_alloc();
  sub_23B59D8F0();
  v1[29] = sub_23B59D8E0();
  v10 = sub_23B59D8B0();
  v1[30] = v10;
  v1[31] = v9;

  return MEMORY[0x2822009F8](sub_23B57FFF4, v10, v9);
}

uint64_t sub_23B57FFF4()
{
  v1 = v0[19];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_23B5802E4;
    swift_continuation_init();
    v0[17] = v6;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A960, &qword_23B59F6F8);
    sub_23B59D8C0();
    (*(v5 + 32))(boxed_opaque_existential_0Tm, v4, v6);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23B57D828;
    v0[13] = &block_descriptor;
    [v3 fetchRawRequestsWithCompletionHandler_];
    (*(v5 + 8))(boxed_opaque_existential_0Tm, v6);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v8 = v0[29];

    if (qword_27E15BA80 != -1)
    {
      swift_once();
    }

    v9 = sub_23B59D660();
    __swift_project_value_buffer(v9, qword_27E15BA88);
    v10 = sub_23B59D640();
    v11 = sub_23B59D950();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23B568000, v10, v11, "IdentityDocumentPresentmentController delegate is not implemented, sending no raw requests", v12, 2u);
      MEMORY[0x23EE9F1D0](v12, -1, -1);
    }

    v13 = v0[28];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[21];

    v17 = v0[1];
    v18 = MEMORY[0x277D84F90];

    return v17(v18);
  }
}

uint64_t sub_23B5802E4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23B5803EC, v2, v1);
}

uint64_t sub_23B5803EC()
{
  v34 = v0;
  v1 = v0[32];
  v2 = v0[29];

  v3 = v0[18];
  swift_unknownObjectRelease();
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23B59DA50())
  {
    v5 = 0;
    v6 = v0[23];
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    v32 = v3 & 0xC000000000000001;
    v30 = (v6 + 48);
    v28 = v6;
    v7 = (v6 + 32);
    v8 = MEMORY[0x277D84F90];
    v29 = v3;
    while (1)
    {
      if (v32)
      {
        v9 = MEMORY[0x23EE9EAD0](v5, v3);
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v13 = v0[21];
      v12 = v0[22];
      v33 = v9;
      sub_23B57D898(&v33, v13);

      if ((*v30)(v13, 1, v12) == 1)
      {
        sub_23B57A674(v0[21], &qword_27E15A950, &qword_23B59F6E8);
      }

      else
      {
        v15 = v0[24];
        v14 = v0[25];
        v16 = v0[22];
        v17 = *v7;
        (*v7)(v14, v0[21], v16);
        v17(v15, v14, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23B57F05C(0, v8[2] + 1, 1, v8);
        }

        v19 = v8[2];
        v18 = v8[3];
        if (v19 >= v18 >> 1)
        {
          v8 = sub_23B57F05C(v18 > 1, v19 + 1, 1, v8);
        }

        v20 = v0[24];
        v21 = v0[22];
        v8[2] = v19 + 1;
        v17(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19, v20, v21);
        v3 = v29;
      }

      ++v5;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_21:

  v22 = v0[28];
  v24 = v0[24];
  v23 = v0[25];
  v25 = v0[21];

  v26 = v0[1];

  return v26(v8);
}

uint64_t sub_23B5806A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23B5807FC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B580844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23B56C32C;

  return sub_23B57E37C(v2, v3, v4);
}

uint64_t sub_23B5808FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B56B770;

  return sub_23B56B688(a1, v4, v5, v7);
}

uint64_t sub_23B5809F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23B580A40(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B56B770;

  return sub_23B57CC74(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_23B580B08(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_23B580B50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23B580BC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s4BaseCMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23B580E14()
{
  result = qword_27E15AA18;
  if (!qword_27E15AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E15AA18);
  }

  return result;
}

uint64_t sub_23B580F00(uint64_t a1)
{
  v80 = sub_23B59D4E0();
  v2 = *(v80 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v80);
  v78 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v61 - v6;
  sub_23B59D470();
  v62 = sub_23B59D810();

  v63 = a1;
  v7 = sub_23B59D450();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AA90, &qword_23B59F980);
  result = sub_23B59DA60();
  v9 = 0;
  v10 = *(v7 + 64);
  v64 = v7 + 64;
  v67 = result;
  v68 = v7;
  v11 = 1 << *(v7 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v79 = v2;
  v75 = v2 + 8;
  v76 = v2 + 16;
  v66 = result + 64;
  v65 = v14;
  v15 = v77;
  v16 = v80;
  if (v13)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v13));
      v69 = (v13 - 1) & v13;
LABEL_11:
      v70 = v9;
      v20 = v17 | (v9 << 6);
      v21 = *(v68 + 56);
      v22 = (*(v68 + 48) + 16 * v20);
      v23 = v22[1];
      v72 = *v22;
      v73 = v20;
      v24 = *(v21 + 8 * v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15AA98, &qword_23B59F988);
      v25 = sub_23B59DA60();
      v26 = v25;
      v27 = *(v24 + 64);
      v74 = v24 + 64;
      v28 = 1 << *(v24 + 32);
      v29 = v28 < 64 ? ~(-1 << v28) : -1;
      v30 = v29 & v27;
      v31 = (v28 + 63) >> 6;
      v81 = v25 + 64;
      v71 = v23;

      v83 = v24;

      v32 = 0;
      v82 = v26;
      if (v30)
      {
        break;
      }

LABEL_16:
      v34 = v32;
      while (1)
      {
        v32 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v32 >= v31)
        {
          break;
        }

        v35 = *(v74 + 8 * v32);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v84 = (v35 - 1) & v35;
          goto LABEL_21;
        }
      }

      v50 = v73;
      v51 = v67;
      *(v66 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
      v52 = (v51[6] + 16 * v50);
      v53 = v71;
      *v52 = v72;
      v52[1] = v53;
      *(v51[7] + 8 * v50) = v26;
      v54 = v51[2];
      v48 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v48)
      {
        goto LABEL_31;
      }

      v51[2] = v55;
      v13 = v69;
      v9 = v70;
      v14 = v65;
      if (!v69)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v33 = __clz(__rbit64(v30));
      v84 = (v30 - 1) & v30;
LABEL_21:
      v36 = v33 | (v32 << 6);
      v85 = 16 * v36;
      v37 = *(v83 + 56);
      v38 = (*(v83 + 48) + 16 * v36);
      v39 = v38[1];
      v86 = *v38;
      v40 = v79;
      v41 = *(v79 + 16);
      v41(v15, v37 + *(v79 + 72) * v36, v16);
      v42 = v78;
      v41(v78, v15, v16);
      v43 = objc_allocWithZone(WKIdentityDocumentPresentmentMobileDocumentElementInfo);

      v44 = [v43 initWithIsRetaining_];
      v45 = *(v40 + 8);
      v45(v42, v16);
      result = (v45)(v15, v16);
      v26 = v82;
      *(v81 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v46 = (v26[6] + v85);
      *v46 = v86;
      v46[1] = v39;
      *(v26[7] + 8 * v36) = v44;
      v47 = v26[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        break;
      }

      v26[2] = v49;
      v30 = v84;
      if (!v84)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7D0, &qword_23B59ED28);
        v57 = sub_23B59D7C0();

        v58 = v62;
        v59 = [v56 initWithDocumentType:v62 namespaces:v57];

        v60 = sub_23B59D480();
        (*(*(v60 - 8) + 8))(v63, v60);
        return v59;
      }

      v19 = *(v64 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v69 = (v19 - 1) & v19;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_23B581450(uint64_t a1)
{
  v2 = sub_23B59D480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = sub_23B59D4B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v14 = sub_23B59D3F0();
  v15 = *(v14 + 16);
  if (v15)
  {
    v57 = MEMORY[0x277D84F90];
    v16 = v14;
    sub_23B581E68(0, v15, 0);
    result = v16;
    v18 = 0;
    v47 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v48 = v15;
    v19 = v57;
    v46 = v11 + 16;
    v45 = (v11 + 8);
    v20 = v44;
    v55 = v3 + 16;
    v42 = v10;
    v43 = v3;
    v40 = (v3 + 8);
    v41 = v11;
    v49 = v16;
    while (v18 < result[2])
    {
      v51 = v19;
      v52 = v18;
      (*(v11 + 16))(v20, v47 + *(v11 + 72) * v18, v10);
      v21 = sub_23B59D4A0();
      v22 = *(v21 + 16);
      if (v22)
      {
        v56 = MEMORY[0x277D84F90];
        sub_23B59DA10();
        v23 = type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentIndividualDocumentRequest(0);
        v24 = *(v3 + 80);
        v50 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v53 = *(v3 + 72);
        v54 = v23;
        v26 = *(v3 + 16);
        v27 = v40;
        do
        {
          v26(v9, v25, v2);
          v26(v7, v9, v2);
          sub_23B580F00(v7);
          (*v27)(v9, v2);
          sub_23B59D9F0();
          v28 = *(v56 + 16);
          sub_23B59DA20();
          sub_23B59DA30();
          sub_23B59DA00();
          v25 += v53;
          --v22;
        }

        while (v22);
        v20 = v44;
        v10 = v42;
        (*v45)(v44, v42);

        v29 = v56;
        v3 = v43;
        v11 = v41;
      }

      else
      {

        (*v45)(v20, v10);
        v29 = MEMORY[0x277D84F90];
      }

      v19 = v51;
      v30 = v52;
      v57 = v51;
      v32 = *(v51 + 16);
      v31 = *(v51 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23B581E68((v31 > 1), v32 + 1, 1);
        v30 = v52;
        v20 = v44;
        v19 = v57;
      }

      v18 = v30 + 1;
      *(v19 + 16) = v32 + 1;
      *(v19 + 8 * v32 + 32) = v29;
      result = v49;
      if (v18 == v48)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7E8, &qword_23B59ED40);
    v34 = sub_23B59D880();

    v35 = v39;
    v36 = [v33 initWithDocumentSets:v34 isMandatory:sub_23B59D400() & 1];

    v37 = sub_23B59D410();
    (*(*(v37 - 8) + 8))(v35, v37);
    return v36;
  }

  return result;
}

uint64_t sub_23B5818E0(uint64_t a1)
{
  v48 = sub_23B59D440();
  v54 = *(v48 - 8);
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23B59D410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_23B59D500();
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  v46 = a1;
  if (v13)
  {
    v57 = MEMORY[0x277D84F90];
    sub_23B59DA10();
    v15 = type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = *(v16 + 64);
    v51 = v12;
    v20 = v12 + ((v19 + 32) & ~v19);
    v52 = *(v16 + 56);
    v53 = v15;
    v55 = v16;
    do
    {
      v17(v11, v20, v4);
      v17(v9, v11, v4);
      sub_23B581450(v9);
      (*(v16 - 8))(v11, v4);
      sub_23B59D9F0();
      v21 = *(v57 + 16);
      sub_23B59DA20();
      sub_23B59DA30();
      sub_23B59DA00();
      v20 += v52;
      --v13;
    }

    while (v13);

    a1 = v46;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentPresentmentRequest(0);
  v22 = sub_23B59D880();

  v23 = sub_23B59D510();
  v24 = *(v23 + 16);
  if (!v24)
  {

LABEL_25:
    v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A7F0, &qword_23B59ED48);
    v42 = sub_23B59D880();

    v43 = [v41 initWithPresentmentRequests:v22 authenticationCertificates:v42];

    v44 = sub_23B59D520();
    (*(*(v44 - 8) + 8))(a1, v44);
    return v43;
  }

  v45 = v22;
  v57 = v14;
  v25 = v23;
  sub_23B581EA8(0, v24, 0);
  result = v25;
  v27 = 0;
  v53 = v25 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v28 = v57;
  v51 = v25;
  v52 = v54 + 16;
  v49 = (v54 + 8);
  v50 = v24;
  v30 = v47;
  v29 = v48;
  while (v27 < *(result + 16))
  {
    v55 = v28;
    (*(v54 + 16))(v30, v53 + *(v54 + 72) * v27, v29);
    v31 = sub_23B59D430();
    v32 = v31;
    if (v31 >> 62)
    {
      v33 = sub_23B59DA50();
      if (!v33)
      {
LABEL_19:

        (*v49)(v30, v29);
        v38 = v14;
        goto LABEL_20;
      }
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_19;
      }
    }

    v56 = v14;
    result = sub_23B59DA10();
    if (v33 < 0)
    {
      goto LABEL_27;
    }

    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x23EE9EAD0](v34, v32);
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      [objc_allocWithZone(WKIdentityDocumentPresentmentRequestAuthenticationCertificate) initWithCertificate_];

      sub_23B59D9F0();
      v37 = *(v56 + 16);
      sub_23B59DA20();
      sub_23B59DA30();
      sub_23B59DA00();
    }

    while (v33 != v34);
    v29 = v48;
    v30 = v47;
    (*v49)(v47, v48);

    v38 = v56;
    v14 = MEMORY[0x277D84F90];
LABEL_20:
    v28 = v55;
    v57 = v55;
    v40 = *(v55 + 16);
    v39 = *(v55 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_23B581EA8((v39 > 1), v40 + 1, 1);
      v28 = v57;
    }

    ++v27;
    *(v28 + 16) = v40 + 1;
    *(v28 + 8 * v40 + 32) = v38;
    result = v51;
    if (v27 == v50)
    {

      a1 = v46;
      v22 = v45;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_23B581E68(void *a1, int64_t a2, char a3)
{
  result = sub_23B581EE8(a1, a2, a3, *v3, &qword_27E15AAA8, &qword_23B59F998, &qword_27E15A7E8, &qword_23B59ED40);
  *v3 = result;
  return result;
}

void *sub_23B581EA8(void *a1, int64_t a2, char a3)
{
  result = sub_23B581EE8(a1, a2, a3, *v3, &qword_27E15AAA0, &qword_23B59F990, &qword_27E15A7F0, &qword_23B59ED48);
  *v3 = result;
  return result;
}

void *sub_23B581EE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

id sub_23B5822C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a3;
  swift_beginAccess();
  v9 = *(a1 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = sub_23B59D880();

  return v10;
}

uint64_t sub_23B582370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = sub_23B59D890();
  v9 = *a6;
  swift_beginAccess();
  v10 = *(a1 + v9);
  *(a1 + v9) = v8;
}

id _sSo035WKIdentityDocumentPresentmentMobileB11ElementInfoC11WebKitSwiftEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_23B582C30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_23B582D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id WKIdentityDocumentPresentmentRawRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentRawRequest()
{
  result = qword_27E15BE68;
  if (!qword_27E15BE68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15BE68);
  }

  return result;
}

id WKIdentityDocumentPresentmentRequest.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id WKIdentityDocumentPresentmentResponse.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for WKIdentityDocumentPresentmentResponse()
{
  result = qword_27E15BE78;
  if (!qword_27E15BE78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E15BE78);
  }

  return result;
}

id sub_23B583684(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_23B59D810();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_23B583718(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_23B59D820();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_23B583938()
{
  v0 = sub_23B59D660();
  __swift_allocate_value_buffer(v0, qword_27E15BE88);
  __swift_project_value_buffer(v0, qword_27E15BE88);
  return sub_23B59D650();
}

uint64_t variable initialization expression of WKIdentityDocumentRawRequestValidator._unsafeValidator@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_23B59D5E0();
  __swift_allocate_boxed_opaque_existential_0Tm(a1);
  return sub_23B59D5D0();
}

unint64_t sub_23B5839F4(void *a1, uint64_t a2)
{
  v146 = a2;
  v156[13] = *MEMORY[0x277D85DE8];
  v143 = sub_23B59D570();
  v142 = *(v143 - 8);
  v3 = *(v142 + 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_23B59D580();
  v151 = *(v153 - 1);
  v5 = *(v151 + 64);
  v6 = MEMORY[0x28223BE20](v153);
  v140 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v150 = &v136 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v152 = &v136 - v11;
  MEMORY[0x28223BE20](v10);
  v149 = &v136 - v12;
  v13 = sub_23B59D5E0();
  v144 = *(v13 - 8);
  v14 = *(v144 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_23B59D520();
  v137 = *(v138 - 1);
  v17 = *(v137 + 64);
  v18 = MEMORY[0x28223BE20](v138);
  v136 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v136 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A988, &qword_23B59F760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B59F9A0;
  strcpy((inited + 32), "deviceRequest");
  *(inited + 46) = -4864;
  v23 = [a1 deviceRequest];
  if (!v23)
  {
    __break(1u);
LABEL_36:
    __break(1u);
  }

  v24 = v23;
  v25 = sub_23B59D820();
  v27 = v26;

  *(inited + 48) = v25;
  *(inited + 56) = v27;
  strcpy((inited + 64), "encryptionInfo");
  *(inited + 79) = -18;
  v148 = a1;
  v28 = [a1 encryptionInfo];
  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = v28;
  v30 = sub_23B59D820();
  v32 = v31;

  *(inited + 80) = v30;
  *(inited + 88) = v32;
  sub_23B57FD04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A990, &qword_23B59F768);
  swift_arrayDestroy();
  v33 = objc_opt_self();
  v34 = sub_23B59D7C0();

  v155[0] = 0;
  v35 = [v33 dataWithJSONObject:v34 options:0 error:v155];

  v36 = v155[0];
  if (!v35)
  {
    v42 = v36;
    v41 = sub_23B59D2A0();

    swift_willThrow();
LABEL_7:
    v155[0] = v41;
    v43 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E15A8E0, &qword_23B59F9C0);
    v44 = v149;
    v45 = v153;
    v46 = swift_dynamicCast();
    v47 = v152;
    v48 = v150;
    if (!v46)
    {

      v76 = v148;
      if (qword_27E15BE80 != -1)
      {
        swift_once();
      }

      v77 = sub_23B59D660();
      __swift_project_value_buffer(v77, qword_27E15BE88);
      v78 = v41;
      v79 = v76;
      v80 = sub_23B59D640();
      v81 = sub_23B59D940();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v155[0] = v153;
        *v82 = 136315394;
        v84 = v79;
        v85 = [v84 description];
        v86 = sub_23B59D820();
        v88 = v87;

        v89 = sub_23B57F234(v86, v88, v155);

        *(v82 + 4) = v89;
        *(v82 + 12) = 2112;
        v90 = v41;
        v91 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 14) = v91;
        *v83 = v91;
        _os_log_impl(&dword_23B568000, v80, v81, "WKIdentityDocumentRawRequestValidator encountered error while validating request %s. Error: %@", v82, 0x16u);
        sub_23B57A674(v83, &qword_27E15AB38, &qword_23B59F9C8);
        MEMORY[0x23EE9F1D0](v83, -1, -1);
        v92 = v153;
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x23EE9F1D0](v92, -1, -1);
        MEMORY[0x23EE9F1D0](v82, -1, -1);
      }

      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      v156[0] = 1;
      v93 = sub_23B57FBC0(MEMORY[0x277D84F90]);
      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
      sub_23B59D280();
      swift_willThrow();
      v94 = v41;
      goto LABEL_29;
    }

    v49 = v151;
    v50 = *(v151 + 32);
    v144 = v151 + 32;
    v138 = v50;
    v50(v47, v44, v45);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_23B59F620;
    v52 = *MEMORY[0x277CCA068];
    *(v51 + 32) = sub_23B59D820();
    *(v51 + 40) = v53;
    *(v51 + 48) = sub_23B59D550();
    *(v51 + 56) = v54;
    v147 = sub_23B57FD04(v51);
    swift_setDeallocating();
    sub_23B57A674(v51 + 32, &qword_27E15A990, &qword_23B59F768);
    if (qword_27E15BE80 != -1)
    {
      swift_once();
    }

    v55 = sub_23B59D660();
    __swift_project_value_buffer(v55, qword_27E15BE88);
    v56 = *(v49 + 16);
    v56(v48, v47, v45);
    v57 = v148;
    v58 = sub_23B59D640();
    v59 = sub_23B59D940();

    v60 = os_log_type_enabled(v58, v59);
    v149 = v56;
    if (v60)
    {
      v61 = swift_slowAlloc();
      LODWORD(v146) = v59;
      v62 = v61;
      v145 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v156[0] = v148;
      *v62 = 136315394;
      v63 = v57;
      v64 = v48;
      v65 = [v63 description];
      v66 = sub_23B59D820();
      v68 = v67;

      v69 = v66;
      v47 = v152;
      v70 = sub_23B57F234(v69, v68, v156);
      v45 = v153;

      *(v62 + 4) = v70;
      *(v62 + 12) = 2112;
      sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8]);
      swift_allocError();
      (v149)(v71, v64, v45);
      v72 = _swift_stdlib_bridgeErrorToNSError();
      v73 = v64;
      v56 = v149;
      v150 = *(v49 + 8);
      (v150)(v73, v45);
      *(v62 + 14) = v72;
      v74 = v145;
      *v145 = v72;
      _os_log_impl(&dword_23B568000, v58, v146, "WKIdentityDocumentRawRequestValidator encountered IdentityDocumentPresentmentError while validating request %s. Error: %@", v62, 0x16u);
      sub_23B57A674(v74, &qword_27E15AB38, &qword_23B59F9C8);
      MEMORY[0x23EE9F1D0](v74, -1, -1);
      v75 = v148;
      __swift_destroy_boxed_opaque_existential_1(v148);
      MEMORY[0x23EE9F1D0](v75, -1, -1);
      MEMORY[0x23EE9F1D0](v62, -1, -1);
    }

    else
    {

      v150 = *(v49 + 8);
      (v150)(v48, v45);
    }

    v98 = v140;
    v56(v140, v47, v45);
    v99 = *MEMORY[0x277CD2BD8];
    v100 = v142;
    v101 = *(v142 + 13);
    v102 = v141;
    v103 = v47;
    v104 = v143;
    v145 = (v142 + 104);
    v148 = v101;
    (v101)(v141, v99, v143);
    v146 = sub_23B580B08(&qword_27E15A998, MEMORY[0x277CD2BE8]);
    v105 = swift_allocError();
    v56(v106, v98, v45);
    v107 = sub_23B59D560();
    v108 = *(v100 + 1);
    v108(v102, v104);

    if (v107)
    {
      v109 = v98;
      v110 = v153;
      v111 = v150;
      (v150)(v109, v153);
      type metadata accessor for WKIdentityDocumentPresentmentError(0);
      v154 = 0;
      v93 = sub_23B57D574(v147);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
      sub_23B59D280();
      swift_willThrow();
      v111(v103, v110);
    }

    else
    {
      (v148)(v102, *MEMORY[0x277CD2BC8], v104);
      v112 = v153;
      v113 = swift_allocError();
      (v149)(v114, v98, v112);
      LOBYTE(v112) = sub_23B59D560();
      v142 = v108;
      v108(v102, v104);

      if (v112)
      {
        v115 = v98;
        v116 = v153;
        v117 = v150;
        (v150)(v115, v153);
        type metadata accessor for WKIdentityDocumentPresentmentError(0);
        v118 = 1;
      }

      else
      {
        (v148)(v102, *MEMORY[0x277CD2BD0], v104);
        v119 = v153;
        v120 = swift_allocError();
        (v149)(v121, v98, v119);
        v122 = sub_23B59D560();
        v142(v102, v104);

        if (v122)
        {
          v123 = v98;
          v116 = v153;
          v117 = v150;
          (v150)(v123, v153);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          v118 = 2;
        }

        else
        {
          (v148)(v102, *MEMORY[0x277CD2BE0], v104);
          v124 = v153;
          v125 = swift_allocError();
          (v149)(v126, v98, v124);
          v127 = sub_23B59D560();
          v128 = v142;
          v142(v102, v104);

          if ((v127 & 1) == 0)
          {
            (v148)(v102, *MEMORY[0x277CD2BC0], v104);
            v132 = v153;
            v133 = swift_allocError();
            v138(v134, v98, v132);
            v135 = sub_23B59D560();
            v128(v102, v104);

            type metadata accessor for WKIdentityDocumentPresentmentError(0);
            if (v135)
            {
              v154 = 4;
            }

            else
            {
              v154 = 0;
            }

            v93 = sub_23B57D574(v147);

            sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
            sub_23B59D280();
            swift_willThrow();
            (v150)(v152, v132);
            goto LABEL_28;
          }

          v129 = v98;
          v116 = v153;
          v117 = v150;
          (v150)(v129, v153);
          type metadata accessor for WKIdentityDocumentPresentmentError(0);
          v118 = 3;
        }
      }

      v154 = v118;
      v93 = sub_23B57D574(v147);

      sub_23B580B08(&qword_27E15A980, type metadata accessor for WKIdentityDocumentPresentmentError);
      sub_23B59D280();
      swift_willThrow();
      v117(v152, v116);
    }

LABEL_28:
    v94 = v155[0];
LABEL_29:

    goto LABEL_30;
  }

  v37 = sub_23B59D2F0();
  v39 = v38;

  sub_23B5806A4(v145 + OBJC_IVAR___WKIdentityDocumentRawRequestValidator__unsafeValidator, v155);
  swift_dynamicCast();
  v40 = v147;
  sub_23B59D5C0();
  if (v40)
  {
    (*(v144 + 8))(v16, v13);
    sub_23B56C05C(v37, v39);
    v41 = v40;
    goto LABEL_7;
  }

  (*(v144 + 8))(v16, v13);
  type metadata accessor for WKIdentityDocumentPresentmentMobileDocumentRequest(0);
  v95 = v137;
  v96 = v136;
  v97 = v138;
  (*(v137 + 16))(v136, v21, v138);
  v93 = sub_23B5818E0(v96);
  sub_23B56C05C(v37, v39);
  (*(v95 + 8))(v21, v97);
LABEL_30:
  v130 = *MEMORY[0x277D85DE8];
  return v93;
}