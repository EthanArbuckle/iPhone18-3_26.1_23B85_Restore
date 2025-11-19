uint64_t sub_23E591420()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_23E5915B8;
  }

  else
  {
    v4 = sub_23E591550;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E591550()
{
  sub_23E593610(v0 + 16);
  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_23E5915B8()
{
  sub_23E593610(v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_23E591620()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_23E59176C;
  }

  else
  {
    v4 = sub_23E591750;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E591910(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_23E5C8F40();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_23E596BF4;

  return sub_23E59109C(v5, v7);
}

uint64_t sub_23E591A04()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E000;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 604, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E591CC4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E591D3C, 0, 0);
}

uint64_t sub_23E591D3C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E5625B0;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 604, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E591E88(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23E591EA8, 0, 0);
}

void sub_23E591EA8()
{
  v1 = v0[3];
  v2 = (v0[4] + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0[2] = v1;
  v4 = *(v3 + 64);
  v5 = v1;
  v8 = v4 + *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  sub_23E593770(0, &qword_280C088C8, 0x277CE9138);
  *v7 = v0;
  v7[1] = sub_23E592040;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_23E592040()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 24);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_23E592188;
  }

  else
  {
    v4 = sub_23E59216C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59232C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_23E5923F0;

  return sub_23E591E88(v6);
}

uint64_t sub_23E5923F0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_23E5C8B80();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_23E5925C0()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E59270C;
  v7 = MEMORY[0x277D83B88];

  return (v9)(v0 + 16, 801, v7, &protocol witness table for Int, v2, v3);
}

uint64_t sub_23E59270C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23E596BE8;
  }

  else
  {
    v3 = sub_23E592820;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5929B0(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E592A28, 0, 0);
}

uint64_t sub_23E592A28()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_23E592B74;
  v7 = MEMORY[0x277D83B88];

  return (v9)(v0 + 16, 801, v7, &protocol witness table for Int, v2, v3);
}

uint64_t sub_23E592B74()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23E592D08;
  }

  else
  {
    v3 = sub_23E592C88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E592C88()
{
  v1 = *(v0 + 32);

  (*(v1 + 16))(v1, *(v0 + 16), 0);
  _Block_release(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E592D08()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = sub_23E5C8B80();
  (*(v2 + 16))(v2, 0, v3);

  _Block_release(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E592DCC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_23E58E000;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 40, 901, v7, &protocol witness table for Bool, v2, v3);
}

uint64_t sub_23E59308C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_23E593104, 0, 0);
}

uint64_t sub_23E593104()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____ASActivitySharingClient_transportClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 48);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23E5625B0;
  v7 = MEMORY[0x277D839B0];

  return (v9)(v0 + 48, 901, v7, &protocol witness table for Bool, v2, v3);
}

id ActivitySharingClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySharingClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E5932F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_23E5958CC(a3, v24 - v10, &unk_27E3466E0, &qword_23E5CE510);
  v12 = sub_23E5C9110();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23E562510(v11, &unk_27E3466E0, &qword_23E5CE510);
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

  sub_23E5C9100();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_23E5C90D0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_23E5C8F60() + 32;
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

    sub_23E562510(a3, &unk_27E3466E0, &qword_23E5CE510);

    return v22;
  }

LABEL_8:
  sub_23E562510(a3, &unk_27E3466E0, &qword_23E5CE510);
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

void *sub_23E5935F0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_23E5936B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_23E593708()
{
  result = qword_280C08FE0;
  if (!qword_280C08FE0)
  {
    sub_23E593770(255, &qword_280C08FE8, 0x277CE90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C08FE0);
  }

  return result;
}

uint64_t sub_23E593770(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of ActivitySharingClient.activate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.invalidate()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.sendFriendInvite(to:callerID:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x88);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_23E596BDC;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ActivitySharingClient.acceptFriendInvite(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.withdrawFriendInvite(to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x98);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.ignoreFriendInvite(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.setMuteEnabled(_:friendUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xA8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E596BDC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ActivitySharingClient.setActivityDataVisible(_:friendUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xB0);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23E596BDC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ActivitySharingClient.sendCompetitionInvite(to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.acceptCompetitionInvite(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.ignoreCompetitionInvite(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xC8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.completeCompetition(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.rollCompetition(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.pushActivityData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.immediateFetchActivityData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E594A1C;

  return v6();
}

uint64_t sub_23E594A1C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of ActivitySharingClient.fetchActivityData(lastFetchElapsedMinimum:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return v8(a1);
}

uint64_t dispatch thunk of ActivitySharingClient.isCloudKitAccountActive()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.expireChangeToken()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x100);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.areMultipleDevicesSharingData(forSnapshotIndex:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return v8(a1);
}

uint64_t dispatch thunk of ActivitySharingClient.allFriends()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x110);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E594A1C;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.friend(withRemoteRelationshipUUID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x118);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.removeFriend(withUUID:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x120);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ActivitySharingClient.removeAllFriends()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.handleNotificationResponse(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return v8(a1);
}

uint64_t dispatch thunk of ActivitySharingClient.appBadgeCount()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t dispatch thunk of ActivitySharingClient.pushFakeActivityData()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return v6();
}

uint64_t sub_23E595820()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E59308C(v2, v3);
}

uint64_t sub_23E5958CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23E595934(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD64;

  return sub_23E562CEC(a1, v5);
}

uint64_t sub_23E5959EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E5929B0(v2, v3);
}

uint64_t sub_23E595A98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E59232C(v2, v3, v4);
}

uint64_t sub_23E595B4C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E591CC4(v2, v3);
}

uint64_t sub_23E595BF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E591910(v2, v3, v4);
}

uint64_t sub_23E595CAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E590E0C(v2, v3, v4);
}

uint64_t sub_23E595D60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E590690(v2, v3);
}

uint64_t sub_23E595E0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58FD6C(v2, v3, v4);
}

uint64_t sub_23E595EC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E58F73C(v2, v3);
}

uint64_t sub_23E595F6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E58F298(v2, v3);
}

uint64_t objectdestroy_200Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E596058()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD64;

  return sub_23E58E878(v2, v3);
}

uint64_t sub_23E596104()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E58E288(v2, v3);
}

uint64_t sub_23E5961B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58DDC0(v2, v3, v4);
}

uint64_t sub_23E596264()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58D844(v2, v3, v4);
}

uint64_t sub_23E596318()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58D430(v2, v3, v4);
}

uint64_t sub_23E5963CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58D01C(v2, v3, v4);
}

uint64_t sub_23E596480()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58CC08(v2, v3, v4);
}

uint64_t sub_23E596534()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E55FD60;

  return sub_23E58C500(v2, v3, v4, v5);
}

uint64_t objectdestroy_365Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E596640()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E55FD60;

  return sub_23E58BB74(v2, v3, v4, v5);
}

uint64_t sub_23E596704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58B310(v2, v3, v4);
}

uint64_t sub_23E5967B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58AD30(v2, v3, v4);
}

uint64_t objectdestroy_125Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E5968B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E55FD60;

  return sub_23E58A750(v2, v3, v4);
}

uint64_t sub_23E596968()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23E55FD60;

  return sub_23E589CCC(v2, v3, v4, v5, v6);
}

uint64_t sub_23E596A30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E5894C8(v2, v3);
}

uint64_t sub_23E596ADC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E55FD60;

  return sub_23E589024(v2, v3);
}

uint64_t objectdestroy_89Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t Collection.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v9 = *(*(a4 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = *(*(sub_23E5C9210() - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = *(a3 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v6[16] = v16;
  v17 = *(v16 - 8);
  v6[17] = v17;
  v18 = *(v17 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E596E34, 0, 0);
}

uint64_t sub_23E596E34()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v0[2] = sub_23E5C9070();
  (*(v3 + 16))(v2, v6, v7);
  sub_23E5C8FE0();
  v8 = v0[18];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[15];
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[19] = v24;
    *v24 = v0;
    v24[1] = sub_23E5970A8;
    v25 = v0[12];
    v26 = v0[8];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_23E5970A8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_23E597420;
  }

  else
  {
    v5 = sub_23E5971C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E5971C4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  sub_23E5C90B0();
  sub_23E5C90A0();
  (*(v2 + 8))(v1, v3);
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v13 = v0[15];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v17 = v0[2];

    v18 = v0[1];

    return v18(v17);
  }

  else
  {
    v20 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v26 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[19] = v22;
    *v22 = v0;
    v22[1] = sub_23E5970A8;
    v23 = v0[12];
    v24 = v0[8];
    v25 = v0[4];

    return v26(v24, v23);
  }
}

uint64_t sub_23E597420()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[8];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t Collection.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v10 = sub_23E5C9210();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = *(a4 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v6[16] = v16;
  v17 = *(v16 + 64) + 15;
  v6[17] = swift_task_alloc();
  v18 = *(*(sub_23E5C9210() - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v19 = *(a3 - 8);
  v6[19] = v19;
  v20 = *(v19 + 64) + 15;
  v6[20] = swift_task_alloc();
  v21 = swift_getAssociatedTypeWitness();
  v6[21] = v21;
  v22 = *(v21 - 8);
  v6[22] = v22;
  v23 = *(v22 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5977B4, 0, 0);
}

uint64_t sub_23E5977B4()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[14];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v0[2] = sub_23E5C9070();
  (*(v3 + 16))(v2, v6, v7);
  sub_23E5C8FE0();
  v8 = v0[23];
  v9 = v0[21];
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[20];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v21 = v0[2];

    v22 = v0[1];

    return v22(v21);
  }

  else
  {
    v24 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v30 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_23E597A44;
    v27 = v0[17];
    v28 = v0[10];
    v29 = v0[4];

    return v30(v28, v27);
  }
}

uint64_t sub_23E597A44()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_23E597E9C;
  }

  else
  {
    v5 = sub_23E597B60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E597B60()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[8];
    v9 = v0[9];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_23E5C90B0();
    sub_23E5C90A0();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[16];
  v17 = v0[14];
  v18 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    (*(v0[22] + 8))(v0[23], v0[21]);
    v25 = v0[2];

    v26 = v0[1];

    return v26(v25);
  }

  else
  {
    v28 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v34 = (v28 + *v28);
    v29 = v28[1];
    v30 = swift_task_alloc();
    v0[24] = v30;
    *v30 = v0;
    v30[1] = sub_23E597A44;
    v31 = v0[17];
    v32 = v0[10];
    v33 = v0[4];

    return v34(v32, v31);
  }
}

uint64_t sub_23E597E9C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];
  v10 = v0[25];

  return v9();
}

uint64_t Collection.asyncFlatMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a3;
  v7[6] = a4;
  v7[3] = a1;
  v7[4] = a2;
  v10 = *(*(a4 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[11] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v7[12] = v12;
  v13 = *(v12 + 64) + 15;
  v7[13] = swift_task_alloc();
  v14 = *(*(sub_23E5C9210() - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v15 = *(a3 - 8);
  v7[15] = v15;
  v16 = *(v15 + 64) + 15;
  v7[16] = swift_task_alloc();
  v17 = swift_getAssociatedTypeWitness();
  v7[17] = v17;
  v18 = *(v17 - 8);
  v7[18] = v18;
  v19 = *(v18 + 64) + 15;
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5981B0, 0, 0);
}

uint64_t sub_23E5981B0()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v0[20] = swift_getAssociatedTypeWitness();
  v0[2] = sub_23E5C9070();
  (*(v3 + 16))(v2, v6, v8);
  sub_23E5C8FE0();
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];
  v15 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v16 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    v20 = v0[2];

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    v23 = v0[3];
    (*(v0[12] + 32))(v0[13], v0[14], v0[11]);
    v29 = (v23 + *v23);
    v24 = v23[1];
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_23E59844C;
    v26 = v0[13];
    v27 = v0[9];
    v28 = v0[4];

    return v29(v27, v26);
  }
}

uint64_t sub_23E59844C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);

    v5 = sub_23E5987D4;
  }

  else
  {
    v5 = sub_23E598568;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E598568()
{
  v1 = v0[20];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  sub_23E5C90B0();
  sub_23E5C9090();
  (*(v3 + 8))(v2, v4);
  v8 = v0[19];
  v9 = v0[17];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v13 = v0[10];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = v0[16];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[12] + 32))(v0[13], v0[14], v0[11]);
    v28 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_23E59844C;
    v25 = v0[13];
    v26 = v0[9];
    v27 = v0[4];

    return v28(v26, v25);
  }
}

uint64_t sub_23E5987D4()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[22];

  return v7();
}

uint64_t Collection.asyncForEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(*(sub_23E5C9210() - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[13] = v13;
  v14 = *(v13 - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E598A9C, 0, 0);
}

uint64_t sub_23E598A9C()
{
  v1 = v0[15];
  v2 = v0[6];
  (*(v0[11] + 16))(v0[12], v0[5], v0[4]);
  sub_23E5C8FE0();
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v10 = v0[12];
    v12 = v0[9];
    v11 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    v0[16] = v17;
    *v17 = v0;
    v17[1] = sub_23E598CD4;
    v18 = v0[9];
    v19 = v0[3];

    return v20(v18);
  }
}

uint64_t sub_23E598CD4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_23E598FFC;
  }

  else
  {
    v3 = sub_23E598DE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E598DE8()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[2];
    (*(v0[8] + 32))(v0[9], v0[10], v0[7]);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_23E598CD4;
    v16 = v0[9];
    v17 = v0[3];

    return v18(v16);
  }
}

uint64_t sub_23E598FFC()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t Collection.asyncFilter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v10 = *(*(sub_23E5C9210() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v11 = *(a3 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = swift_getAssociatedTypeWitness();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E5992C4, 0, 0);
}

uint64_t sub_23E5992C4()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v0[2] = sub_23E5C9070();
  (*(v3 + 16))(v2, v6, v7);
  sub_23E5C8FE0();
  v8 = v0[17];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[8];
  v14 = v0[5];
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v11 + 48))(v10, 1, v13) == 1)
  {
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    (*(v0[16] + 8))(v0[17], v0[15]);
    v19 = v0[2];

    v20 = v0[1];

    return v20(v19);
  }

  else
  {
    v22 = v0[3];
    (*(v0[9] + 32))(v0[11], v0[12], v0[8]);
    v27 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    v0[18] = v24;
    *v24 = v0;
    v24[1] = sub_23E599530;
    v25 = v0[11];
    v26 = v0[4];

    return v27(v25);
  }
}

uint64_t sub_23E599530(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    v8 = sub_23E5998D8;
  }

  else
  {
    *(v4 + 160) = a1 & 1;
    v8 = sub_23E599664;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23E599664()
{
  if (*(v0 + 160))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
    sub_23E5C90B0();
    sub_23E5C90A0();
  }

  (*(*(v0 + 72) + 8))(*(v0 + 88), *(v0 + 64));
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  swift_getAssociatedConformanceWitness();
  sub_23E5C9220();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = *(v0 + 112);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    v11 = *(v0 + 80);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    v12 = *(v0 + 16);

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v15 = *(v0 + 24);
    (*(*(v0 + 72) + 32))(*(v0 + 88), *(v0 + 96), *(v0 + 64));
    v20 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *v17 = v0;
    v17[1] = sub_23E599530;
    v18 = *(v0 + 88);
    v19 = *(v0 + 32);

    return v20(v18);
  }
}

uint64_t sub_23E5998D8()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[10];
  (*(v0[9] + 8))(v0[11], v0[8]);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v8 = v0[19];

  return v7();
}

ActivitySharingClient::SetActivityDataVisibleTransportItem __swiftcall SetActivityDataVisibleTransportItem.init(isActivityDataVisible:friendUUID:)(Swift::Bool isActivityDataVisible, Swift::String friendUUID)
{
  *v2 = isActivityDataVisible;
  *(v2 + 8) = friendUUID;
  result.friendUUID = friendUUID;
  result.isActivityDataVisible = isActivityDataVisible;
  return result;
}

uint64_t SetActivityDataVisibleTransportItem.friendUUID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t SetActivityDataVisibleTransportItem.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_23E5C92D0();

  if (v1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x23EF0D190](v4, v5);

  MEMORY[0x23EF0D190](0x55646E6569726620, 0xED0000203A444955);
  MEMORY[0x23EF0D190](v2, v3);
  MEMORY[0x23EF0D190](41, 0xE100000000000000);
  return 0xD00000000000003BLL;
}

unint64_t sub_23E599AEC()
{
  if (*v0)
  {
    result = 0x5555646E65697266;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_23E599B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000023E5D01A0 == a2 || (sub_23E5C9430() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5555646E65697266 && a2 == 0xEA00000000004449)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23E5C9430();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_23E599C2C(uint64_t a1)
{
  v2 = sub_23E599E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E599C68(uint64_t a1)
{
  v2 = sub_23E599E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SetActivityDataVisibleTransportItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346598, &qword_23E5CC860);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E599E34();
  sub_23E5C9510();
  v15 = 0;
  sub_23E5C93D0();
  if (!v2)
  {
    v14 = 1;
    sub_23E5C93C0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23E599E34()
{
  result = qword_27E3465A0;
  if (!qword_27E3465A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3465A0);
  }

  return result;
}

uint64_t SetActivityDataVisibleTransportItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465A8, &qword_23E5CC868);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E599E34();
  sub_23E5C9500();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_23E5C9390();
    v17 = 1;
    v13 = sub_23E5C9380();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_23E59A068(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E59A0B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_23E59A114()
{
  result = qword_27E3465B0;
  if (!qword_27E3465B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3465B0);
  }

  return result;
}

unint64_t sub_23E59A16C()
{
  result = qword_27E3465B8;
  if (!qword_27E3465B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3465B8);
  }

  return result;
}

unint64_t sub_23E59A1C4()
{
  result = qword_27E3465C0;
  if (!qword_27E3465C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3465C0);
  }

  return result;
}

id LocalTransport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23E59A24C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_23E59A2B4()
{
  v1 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_23E59A2FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_23E59A3B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_23E59A41C()
{
  v1 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_23E59A464(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id LocalTransport.init()()
{
  v1 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  type metadata accessor for TransportDispatchService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F98];
  *&v0[v1] = v2;
  *&v0[OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LocalTransport();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LocalTransport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalTransport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23E59A6CC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t LocalTransport.sendItem(_:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_23E59A754, 0, 0);
}

uint64_t sub_23E59A754()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_23E5CA6B0;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v5 = v0;
  v5[1] = sub_23E59A868;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59C574, v3, v6);
}

uint64_t sub_23E59A868()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_23E59A9E8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_23E59A984;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59A984()
{
  sub_23E56121C(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_23E59A9E8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t LocalTransport.sendItem<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_23E5C9210();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E59AB18, 0, 0);
}

uint64_t sub_23E59AB18()
{
  v1 = v0 + 9;
  v2 = v0[11];
  v3 = v0[6];
  (*(v0[10] + 16))(v2, v0[5], v0[9]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[10];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[11];
    v5 = (*(v0[7] + 8))(v0[6]);
    v6 = v8;
    v1 = v0 + 6;
  }

  v9 = *v1;
  v0[12] = v5;
  v0[13] = v6;
  v10 = v0[8];
  v11 = v0[4];
  (*(v4 + 8))(v0[11], v9);
  v12 = swift_task_alloc();
  v0[14] = v12;
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v6;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[15] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v14 = v0;
  v14[1] = sub_23E59AD70;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59DFB0, v12, v15);
}

uint64_t sub_23E59AD70()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_23E59AF14;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_23E59AE8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59AE8C()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_23E56121C(v0[2], v0[3]);
  sub_23E56121C(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E59AF14()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  sub_23E56121C(v3, v2);
  v4 = v0[16];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t LocalTransport.sendItem<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_23E59AFB8, 0, 0);
}

{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_23E5C9210();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E59B3B4, 0, 0);
}

uint64_t sub_23E59AFB8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_23E5CA6B0;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v5 = v0;
  v5[1] = sub_23E59B0D0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59DFB0, v3, v6);
}

uint64_t sub_23E59B0D0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_23E59B284;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_23E59B1EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59B1EC()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[7] + 16))(v0[2], v0[3]);
  v4 = v0[1];

  return v4();
}

uint64_t sub_23E59B284()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23E59B3B4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = xmmword_23E5CA6B0;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v5 = v0;
  v5[1] = sub_23E59B4CC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59DFB0, v3, v6);
}

uint64_t sub_23E59B4CC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_23E59B5E8;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_23E56203C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59B5E8()
{
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t LocalTransport.sendItem<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = sub_23E5C9210();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E59B724, 0, 0);
}

{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = sub_23E5C9210();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v12 = sub_23E5C9210();
  v8[15] = v12;
  v13 = *(v12 - 8);
  v8[16] = v13;
  v14 = *(v13 + 64) + 15;
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E59BD14, 0, 0);
}

uint64_t sub_23E59B724()
{
  v1 = v0 + 12;
  v2 = v0[14];
  v3 = v0[7];
  (*(v0[13] + 16))(v2, v0[6], v0[12]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[13];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[14];
    v5 = (*(v0[9] + 8))(v0[7]);
    v6 = v8;
    v1 = v0 + 7;
  }

  v9 = *v1;
  v0[15] = v5;
  v0[16] = v6;
  v10 = v0[11];
  v11 = v0[5];
  (*(v4 + 8))(v0[14], v9);
  v12 = swift_task_alloc();
  v0[17] = v12;
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v6;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[18] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v14 = v0;
  v14[1] = sub_23E59B980;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59DFB0, v12, v15);
}

uint64_t sub_23E59B980()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_23E59BB64;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_23E59BA9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59BA9C()
{
  v1 = v0[19];
  v2 = v0[8];
  v3 = v0[4];
  (*(v0[10] + 16))(v0[2], v0[3]);
  v4 = v0[15];
  v5 = v0[16];
  if (v1)
  {
    sub_23E56121C(v4, v5);
    v6 = v0[14];
  }

  else
  {
    v8 = v0[14];
    sub_23E56121C(v4, v5);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E59BB64()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  sub_23E56121C(v3, v2);
  v4 = v0[19];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23E59BD14()
{
  v1 = v0 + 15;
  v2 = v0[17];
  v3 = v0[7];
  (*(v0[16] + 16))(v2, v0[6], v0[15]);
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = 0;
    v4 = v0[16];
    v6 = 0xF000000000000000;
  }

  else
  {
    v7 = v0[17];
    v5 = (*(v0[9] + 8))(v0[7]);
    v6 = v8;
    v1 = v0 + 7;
  }

  v9 = *v1;
  v0[18] = v5;
  v0[19] = v6;
  v10 = v0[11];
  v11 = v0[5];
  (*(v4 + 8))(v0[17], v9);
  v12 = swift_task_alloc();
  v0[20] = v12;
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v6;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  v0[21] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465D8, &qword_23E5CDE40);
  *v14 = v0;
  v14[1] = sub_23E59BF7C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000019, 0x800000023E5D01C0, sub_23E59DFB0, v12, v15);
}

uint64_t sub_23E59BF7C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_23E59C2C4;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_23E59C098;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23E59C098()
{
  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(v3 + 16);
  sub_23E562570(v6, v5);
  v7(v6, v5, v4, v3);
  if (v1)
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_23E56121C(v6, v5);
    v10 = v9;
    v11 = v8;
LABEL_5:
    sub_23E56121C(v10, v11);
    v19 = v0[17];
    v20 = v0[14];

    v21 = v0[1];
    goto LABEL_6;
  }

  v12 = v0[14];
  v13 = v0[8];
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v17 = v0[18];
  v16 = v0[19];
  if (v15 == 1)
  {
    (*(v0[13] + 8))(v12, v0[12]);
    sub_23E56D8C8();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    sub_23E56121C(v6, v5);
    v10 = v17;
    v11 = v16;
    goto LABEL_5;
  }

  v23 = v0[17];
  v24 = v0[4];
  sub_23E56121C(v6, v5);
  sub_23E56121C(v17, v16);
  (*(v14 + 32))(v24, v12, v13);

  v21 = v0[1];
LABEL_6:

  return v21();
}

uint64_t sub_23E59C2C4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  sub_23E56121C(v3, v2);
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

void sub_23E59C34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E8, qword_23E5CCBD0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &aBlock[-1] - v12;
  v14 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_proxy;
  swift_beginAccess();
  v15 = *(a2 + v14);
  if (v15)
  {
    swift_unknownObjectRetain();
    if (a5 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_23E5C8BA0();
    }

    (*(v10 + 16))(v13, a1, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = swift_allocObject();
    (*(v10 + 32))(v18 + v17, v13, v9);
    aBlock[4] = sub_23E5617EC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23E5616A8;
    aBlock[3] = &block_descriptor_0;
    v19 = _Block_copy(aBlock);

    [v15 transportRequest:a3 data:v16 completion:v19];
    swift_unknownObjectRelease();
    _Block_release(v19);
  }
}

uint64_t sub_23E59C580(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E55FD60;

  return LocalTransport.sendItem(_:)(a1);
}

uint64_t sub_23E59C618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return LocalTransport.sendItem<A>(_:payload:)(a1, a2, a3, a4);
}

uint64_t sub_23E59C6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return LocalTransport.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E59C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E55FD60;

  return LocalTransport.sendItem<A>(_:)(a1, a2, a3, a4);
}

uint64_t sub_23E59C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23E55FD60;

  return LocalTransport.sendItem<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_23E59C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23E55FD64;

  return LocalTransport.sendItem<A, B>(_:payload:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t LocalTransport.transportRequest(_:data:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v16 = sub_23E5C8EB0();
  __swift_project_value_buffer(v16, qword_280C09128);
  sub_23E560890(0xD000000000000071, 0x800000023E5D01E0, 0xD000000000000024, 0x800000023E5D0260);
  v17 = sub_23E5C9110();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v19 = v6;
  sub_23E562570(a2, a3);

  sub_23E59D0CC(0, 0, v15, &unk_23E5CCAE8, v18);
}

uint64_t sub_23E59CBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v10;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  return MEMORY[0x2822009F8](sub_23E59CC28, 0, 0);
}

uint64_t sub_23E59CC28()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC21ActivitySharingClient14LocalTransport_transportDispatchService;
  swift_beginAccess();
  *(v0 + 112) = *(v1 + v2);
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = -1;

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_23E59CD14;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);

  return sub_23E57C360(v6, v4, v5, v0 + 40);
}

uint64_t sub_23E59CD14(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = v6[14];
    v10 = sub_23E59CEE4;
  }

  else
  {
    v11 = v6[14];

    v6[17] = a2;
    v6[18] = a1;
    v10 = sub_23E59CE5C;
    v9 = 0;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_23E59CE5C()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 104);
  (*(v0 + 96))(v1, v2, 0);
  sub_23E56121C(v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23E59CEE4()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_23E59CF4C, 0, 0);
}

uint64_t sub_23E59CF4C()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v1;
  v3(0, 0xF000000000000000, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E59CFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23E55FD60;

  return sub_23E59CBF8(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_23E59D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23E59DAA8(a3, v26 - v10);
  v12 = sub_23E5C9110();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23E59DB18(v11);
  }

  else
  {
    sub_23E5C9100();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23E5C90D0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23E5C8F60() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_23E59DB18(a3);

      return v24;
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

  sub_23E59DB18(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23E59D4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_23E59DAA8(a3, v26 - v10);
  v12 = sub_23E5C9110();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23E59DB18(v11);
  }

  else
  {
    sub_23E5C9100();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23E5C90D0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23E5C8F60() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E0, &qword_23E5CCBA8);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_23E59DB18(a3);

      return v23;
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

  sub_23E59DB18(a3);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3465E0, &qword_23E5CCBA8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23E59D9BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23E55FD64;

  return sub_23E59CBF8(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_23E59DAA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E59DB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E59DB80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23E59DC74;

  return v6(v2 + 32);
}

uint64_t sub_23E59DC74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23E59DD88(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E59DB80(a1, v5);
}

uint64_t sub_23E59DE40(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD64;

  return sub_23E59DB80(a1, v5);
}

uint64_t sub_23E59DEF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E562CEC(a1, v5);
}

uint64_t getEnumTagSinglePayload for CodableError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CodableError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E59E114()
{
  result = qword_27E3465F0;
  if (!qword_27E3465F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3465F0);
  }

  return result;
}

double SecureCloudRepairMessageProtobuf.date.getter()
{
  v1 = v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for SecureCloudRepairMessageProtobuf()
{
  result = qword_27E346678;
  if (!qword_27E346678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.date.setter(double a1)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*SecureCloudRepairMessageProtobuf.date.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_23E569668;
}

Swift::Void __swiftcall SecureCloudRepairMessageProtobuf.clearDate()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SecureCloudRepairMessageProtobuf.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_23E59E354@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_23E59E3B8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*SecureCloudRepairMessageProtobuf.identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_23E566674;
}

Swift::Void __swiftcall SecureCloudRepairMessageProtobuf.clearIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t SecureCloudRepairMessageProtobuf.secureCloudShareItem.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28));
  v2 = v1[1];
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >> 60 != 15)
  {
    v4 = v1[1];
  }

  sub_23E562570(*v1, v2);
  return v3;
}

uint64_t sub_23E59E5BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28));
  v5 = *v4;
  v6 = v4[1];
  sub_23E561880(v2, v3);
  result = sub_23E56121C(v5, v6);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.secureCloudShareItem.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28);
  result = sub_23E56121C(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*SecureCloudRepairMessageProtobuf.secureCloudShareItem.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28);
  *(a1 + 24) = v3;
  v4 = (v1 + v3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v4;
  }

  v8 = 0xC000000000000000;
  if (v6 >> 60 != 15)
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  sub_23E562570(v5, v6);
  return sub_23E576D30;
}

Swift::Void __swiftcall SecureCloudRepairMessageProtobuf.clearSecureCloudShareItem()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28);
  sub_23E56121C(*v1, *(v1 + 8));
  *v1 = xmmword_23E5CA6B0;
}

uint64_t SecureCloudRepairMessageProtobuf.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v4 = (v1 + *(result + 32));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = v1 + *(result + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t (*SecureCloudRepairMessageProtobuf.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return sub_23E576EBC;
}

Swift::Void __swiftcall SecureCloudRepairMessageProtobuf.clearType()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 32);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t SecureCloudRepairMessageProtobuf.version.getter()
{
  v1 = (v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SecureCloudRepairMessageProtobuf.version.setter(int a1)
{
  result = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*SecureCloudRepairMessageProtobuf.version.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_23E56A734;
}

Swift::Void __swiftcall SecureCloudRepairMessageProtobuf.clearVersion()()
{
  v1 = v0 + *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t SecureCloudRepairMessageProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecureCloudRepairMessageProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_23E5C8CD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t SecureCloudRepairMessageProtobuf.MessageType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.MessageType.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_23E59EB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E59F394();

  return MEMORY[0x28217E238](a1, a2, v4);
}

double SecureCloudRepairMessageProtobuf.init()@<D0>(uint64_t a1@<X8>)
{
  sub_23E5C8CC0();
  v2 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v3 = a1 + v2[5];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (a1 + v2[6]);
  *v4 = 0;
  v4[1] = 0;
  result = 0.0;
  *(a1 + v2[7]) = xmmword_23E5CA6B0;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = 256;
  v7 = a1 + v2[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t static SecureCloudRepairMessageProtobuf.MessageType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_27E3465F8 = a1;
}

uint64_t sub_23E59ECF0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27E3465F8;
}

uint64_t sub_23E59ED5C()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346600);
  __swift_project_value_buffer(v0, qword_27E346600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CA6C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "date";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "secureCloudShareItem";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "version";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t SecureCloudRepairMessageProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_23E5C8D30();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 2)
      {
        v6 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 20);
        sub_23E5C8D60();
      }

      else if (result == 3)
      {
        v5 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 24);
        sub_23E5C8D70();
      }
    }

    else
    {
      switch(result)
      {
        case 4:
          v1 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 28);
          sub_23E5C8D50();
          break;
        case 5:
          sub_23E59F170();
          break;
        case 6:
          v4 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 36);
          sub_23E5C8D80();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_23E59F170()
{
  v0 = *(type metadata accessor for SecureCloudRepairMessageProtobuf() + 32);
  sub_23E59F394();
  return sub_23E5C8D40();
}

uint64_t SecureCloudRepairMessageProtobuf.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_23E5C8E20(), !v1))
  {
    v6 = (v0 + v2[6]);
    if (!v6[1] || (v7 = *v6, result = sub_23E5C8E30(), !v1))
    {
      v8 = v1;
      v9 = v0 + v2[7];
      v10 = *(v9 + 8);
      if (v10 >> 60 != 15)
      {
        v11 = *v9;
        sub_23E561880(*v9, *(v9 + 8));
        sub_23E5C8E10();
        result = sub_23E56121C(v11, v10);
        if (v1)
        {
          return result;
        }

        v8 = 0;
      }

      v12 = (v0 + v2[8]);
      if (*(v12 + 9))
      {
        v13 = v8;
      }

      else
      {
        v16 = *v12;
        v17 = v12[1] & 1;
        sub_23E59F394();
        v13 = v8;
        result = sub_23E5C8E00();
        if (v8)
        {
          return result;
        }
      }

      v14 = (v0 + v2[9]);
      if (v14[1])
      {
        return sub_23E5C8CB0();
      }

      v15 = *v14;
      result = sub_23E5C8E40();
      if (!v13)
      {
        return sub_23E5C8CB0();
      }
    }
  }

  return result;
}

unint64_t sub_23E59F394()
{
  result = qword_27E346630;
  if (!qword_27E346630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346630);
  }

  return result;
}

uint64_t SecureCloudRepairMessageProtobuf.hashValue.getter()
{
  sub_23E5C94D0();
  type metadata accessor for SecureCloudRepairMessageProtobuf();
  sub_23E5A0334(&qword_27E346638, type metadata accessor for SecureCloudRepairMessageProtobuf);
  sub_23E5C8F10();
  return sub_23E5C94F0();
}

double sub_23E59F474@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23E5C8CC0();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  result = 0.0;
  v8 = a1[8];
  *(a2 + a1[7]) = xmmword_23E5CA6B0;
  v9 = a2 + v8;
  *v9 = 0;
  *(v9 + 8) = 256;
  v10 = a2 + a1[9];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_23E59F534(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E5A0334(&qword_27E346690, type metadata accessor for SecureCloudRepairMessageProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_23E59F5D4(uint64_t a1)
{
  v2 = sub_23E5A0334(&qword_27E3462F8, type metadata accessor for SecureCloudRepairMessageProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_23E59F640()
{
  sub_23E5A0334(&qword_27E3462F8, type metadata accessor for SecureCloudRepairMessageProtobuf);

  return sub_23E5C8DE0();
}

uint64_t sub_23E59F6C0()
{
  v0 = sub_23E5C8E80();
  __swift_allocate_value_buffer(v0, qword_27E346618);
  __swift_project_value_buffer(v0, qword_27E346618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346158, &unk_23E5CA8A0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346160, "Xh") - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CB3D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "request";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_23E5C8E60();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "response";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_23E5C8E70();
}

uint64_t sub_23E59F8D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_23E59FA60(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_23E561230(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_23E5C2890(v14, a3, a4, &v13);
  v10 = v4;
  sub_23E561230(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_23E59FA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_23E5C8B50();
  v11 = result;
  if (result)
  {
    result = sub_23E5C8B70();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_23E5C8B60();
  sub_23E5C2890(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_23E59FB18(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_23E561880(a3, a4);
          return sub_23E59F8D0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s21ActivitySharingClient32SecureCloudRepairMessageProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureCloudRepairMessageProtobuf();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    if (*v11 != *v13 || v12 != v14)
    {
      v16 = v4;
      v17 = sub_23E5C9430();
      v4 = v16;
      if ((v17 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v24 = v4;
      sub_23E562570(v20, v19);
      sub_23E562570(v23, v22);
      sub_23E56121C(v20, v19);
      v25 = v24;
      goto LABEL_23;
    }

LABEL_20:
    sub_23E562570(v20, v19);
    sub_23E562570(v23, v22);
    sub_23E56121C(v20, v19);
    sub_23E56121C(v23, v22);
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v27 = v4;
  sub_23E562570(v20, v19);
  sub_23E562570(v23, v22);
  v28 = sub_23E59FB18(v20, v19, v23, v22);
  sub_23E56121C(v23, v22);
  sub_23E56121C(v20, v19);
  v25 = v27;
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v29 = v25[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 9);
  v32 = (a2 + v29);
  v33 = *(v32 + 9);
  if (v31)
  {
    if ((*(v32 + 9) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v32 + 9))
    {
      return 0;
    }

    v39 = *v30;
    v40 = *(v30 + 8);
    v41 = *v32;
    v42 = *(v32 + 8);
    v43 = v39 != 0;
    if ((v40 & 1) == 0)
    {
      v43 = v39;
    }

    if (v42)
    {
      if (v41)
      {
        if (v43 != 1)
        {
          return 0;
        }
      }

      else if (v43)
      {
        return 0;
      }
    }

    else if (v43 != v41)
    {
      return 0;
    }
  }

  v34 = v25[9];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 4);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 4);
  if (v36)
  {
    if (v38)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (*v35 != *v37)
  {
    LOBYTE(v38) = 1;
  }

  if (v38)
  {
    return 0;
  }

LABEL_38:
  sub_23E5C8CD0();
  sub_23E5A0334(&qword_27E346150, MEMORY[0x277D216C8]);
  return sub_23E5C8F20() & 1;
}

unint64_t sub_23E59FF3C()
{
  result = qword_27E346640;
  if (!qword_27E346640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346640);
  }

  return result;
}

unint64_t sub_23E59FF94()
{
  result = qword_27E346648;
  if (!qword_27E346648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346648);
  }

  return result;
}

unint64_t sub_23E59FFEC()
{
  result = qword_27E346650;
  if (!qword_27E346650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346650);
  }

  return result;
}

unint64_t sub_23E5A0044()
{
  result = qword_27E346658;
  if (!qword_27E346658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E346660, &qword_23E5CCE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346658);
  }

  return result;
}

void sub_23E5A01F0()
{
  sub_23E5C8CD0();
  if (v0 <= 0x3F)
  {
    sub_23E56BB90(319, &qword_27E346250);
    if (v1 <= 0x3F)
    {
      sub_23E56BB90(319, &qword_27E346140);
      if (v2 <= 0x3F)
      {
        sub_23E56BB90(319, &qword_27E3463C8);
        if (v3 <= 0x3F)
        {
          sub_23E56BB90(319, &qword_27E346688);
          if (v4 <= 0x3F)
          {
            sub_23E56BB90(319, &qword_27E346260);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_23E5A0334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t InvitationDestinationError.hashValue.getter()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

unint64_t sub_23E5A040C()
{
  result = qword_27E346698;
  if (!qword_27E346698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E346698);
  }

  return result;
}

uint64_t ASCloudDevice.DeviceType.hashValue.getter()
{
  v1 = *v0;
  sub_23E5C94D0();
  MEMORY[0x23EF0D6D0](v1);
  return sub_23E5C94F0();
}

BOOL ASCloudDevice.isEligibleForMigration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466A0, &qword_23E5CD110);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v13 - v3;
  ASCloudDevice.platform.getter(v14);
  if (!LOBYTE(v14[0]))
  {
    return 1;
  }

  v5 = 808333617;
  if (LOBYTE(v14[0]) == 1)
  {
    v5 = 808335409;
  }

  v6 = [v0 osVersion];
  v7 = sub_23E5C8F40();
  v9 = v8;

  v14[0] = v7;
  v14[1] = v9;
  v13[0] = v5;
  v13[1] = 0xE400000000000000;
  v10 = sub_23E5C8C60();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_23E5609AC();
  v11 = sub_23E5C9240();
  sub_23E562510(v4, &qword_27E3466A0, &qword_23E5CD110);

  return v11 < 2;
}

uint64_t ASCloudDevice.platform.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 deviceType];
  v5 = sub_23E5C8F40();
  v7 = v6;

  sub_23E5609AC();
  LOBYTE(v4) = sub_23E5C9250();

  if (v4)
  {
    v9 = 1;
  }

  else
  {
    v10 = [v2 deviceType];
    sub_23E5C8F40();

    LOBYTE(v10) = sub_23E5C9250();

    if (v10)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  *a1 = v9;
  return result;
}

BOOL ASCloudDevice.isWithinTimeToLive.getter()
{
  v0 = sub_23E5C8C90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_23E5C8CA0();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466A8, &qword_23E5CD118);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = sub_23E5C8C20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v26 = &v25 - v19;
  sub_23E5C8C80();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9968], v0);
  sub_23E5C8C10();
  sub_23E5C8C70();
  v25 = *(v14 + 8);
  v25(v18, v13);
  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v28);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23E562510(v12, &qword_27E3466A8, &qword_23E5CD118);
    return 0;
  }

  else
  {
    v21 = v26;
    (*(v14 + 32))(v26, v12, v13);
    v22 = [v27 modificationDate];
    sub_23E5C8BF0();

    v23 = sub_23E5C8C00();
    v24 = v25;
    v25(v18, v13);
    v24(v21, v13);
    return v23 == 1;
  }
}

uint64_t ASCloudDevice.deviceName.getter()
{
  ASCloudDevice.platform.getter(&v2);
  v0 = 0x656E6F685069;
  if (v2 != 1)
  {
    v0 = 0x615720656C707041;
  }

  if (v2)
  {
    return v0;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

unint64_t sub_23E5A0BDC()
{
  result = qword_27E3466B0;
  if (!qword_27E3466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3466B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvitationDestinationReachability(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InvitationDestinationReachability(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of TransportClient.activate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD60;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TransportClient.invalidate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E55FD64;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TransportClient.sendItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E55FD60;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of TransportClient.sendItem<A>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23E55FD60;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportClient.sendItem<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 40);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23E55FD60;

  return v17(a1, a2, a3, a4, a5, a6);
}

{
  v13 = *(a6 + 48);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23E55FD60;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TransportClient.sendItem<A, B>(_:payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 56);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_23E55FD60;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

{
  v17 = *(a9 + 64);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_23E55FD64;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

id ASXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *ASXPCListener.init()()
{
  v0 = *MEMORY[0x277CE9330];
  sub_23E5C8F40();
  v1 = objc_allocWithZone(type metadata accessor for ASXPCListener());
  v2 = ASXPCListener.init(machServiceName:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

char *ASXPCListener.init(machServiceName:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v2 = sub_23E5C8F30();

  v3 = [v1 initWithMachServiceName_];

  *&v0[OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3466D0, &qword_23E5CA670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23E5CA3C0;
  v5 = *MEMORY[0x277CE9328];
  *(v4 + 32) = sub_23E5C8F40();
  *(v4 + 40) = v6;
  *&v0[OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_requiredEntitlements] = v4;
  type metadata accessor for TransportDispatchService();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 112) = MEMORY[0x277D84F98];
  *&v0[OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_transportDispatchService] = v7;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ASXPCListener();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  [*&v8[OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener] setDelegate_];
  return v8;
}

id ASXPCListener.__deallocating_deinit()
{
  v1 = v0;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0x6164696C61766E69, 0xEC00000029286574);
  v3 = OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener;
  [*&v1[OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener] setDelegate_];
  [*&v1[v3] invalidate];
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ASXPCListener();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_23E5A1CB4()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = sub_23E5C8EB0();
  __swift_project_value_buffer(v1, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0x6574617669746361, 0xEA00000000002928);
  v2 = *(v0 + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener);

  return [v2 resume];
}

id sub_23E5A1D74()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = sub_23E5C8EB0();
  __swift_project_value_buffer(v1, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0x6164696C61766E69, 0xEC00000029286574);
  v2 = *(v0 + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_listener);
  [v2 setDelegate_];

  return [v2 invalidate];
}

id sub_23E5A1E50(void *a1)
{
  v2 = v1;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  v5 = a1;
  v6 = sub_23E5C8E90();
  v7 = sub_23E5C9170();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    v11 = sub_23E560634(0xD000000000000063, 0x800000023E5D0310, 0xD000000000000014, 0x800000023E5D0400);
    v13 = sub_23E560AF0(v11, v12, &v25);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&dword_23E55E000, v6, v7, "%s Accepting new connection: %@", v8, 0x16u);
    sub_23E562510(v9, &qword_27E346750, &qword_23E5CD2A0);
    MEMORY[0x23EF0DE00](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EF0DE00](v10, -1, -1);
    MEMORY[0x23EF0DE00](v8, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v17 = [v15 interfaceWithProtocol_];
  [v5 setExportedInterface_];

  [v5 setExportedObject_];
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v29 = sub_23E5A2CF8;
  v30 = v18;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_23E5B2964;
  v28 = &block_descriptor_1;
  v19 = _Block_copy(&v25);
  v20 = v5;

  [v20 setInterruptionHandler_];
  _Block_release(v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v29 = sub_23E5A2D1C;
  v30 = v21;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_23E5B2964;
  v28 = &block_descriptor_21;
  v22 = _Block_copy(&v25);
  v23 = v20;

  [v23 setInvalidationHandler_];
  _Block_release(v22);
  return [v23 resume];
}

void sub_23E5A2224(void *a1, const char *a2)
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  v5 = a1;
  oslog = sub_23E5C8E90();
  v6 = sub_23E5C9160();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v9 = [v5 serviceName];
    if (v9)
    {
      v10 = v9;
      v11 = sub_23E5C8F40();
      v13 = v12;
    }

    else
    {
      v13 = 0xEB00000000646569;
      v11 = 0x6669636570736E75;
    }

    v14 = sub_23E560AF0(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_23E55E000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EF0DE00](v8, -1, -1);
    MEMORY[0x23EF0DE00](v7, -1, -1);
  }
}

Swift::Bool __swiftcall ASXPCListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v4 = sub_23E5A2820(shouldAcceptNewConnection.super.isa, *(v2 + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_requiredEntitlements));
  if (v4)
  {
    sub_23E5A1E50(shouldAcceptNewConnection.super.isa);
  }

  return v4 & 1;
}

uint64_t ASXPCListener.transportRequest(_:data:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3466E0, &qword_23E5CE510);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v16 = sub_23E5C8EB0();
  __swift_project_value_buffer(v16, qword_280C09128);
  sub_23E560890(0xD000000000000063, 0x800000023E5D0310, 0xD000000000000024, 0x800000023E5D0260);
  v17 = sub_23E5C9110();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v6;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v19 = v6;
  sub_23E562570(a2, a3);

  sub_23E59D0CC(0, 0, v15, &unk_23E5CD248, v18);
}

uint64_t sub_23E5A2668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  return MEMORY[0x2822009F8](sub_23E5A2698, 0, 0);
}

uint64_t sub_23E5A2698()
{
  *(v0 + 88) = *(*(v0 + 40) + OBJC_IVAR____TtC21ActivitySharingClient13ASXPCListener_transportDispatchService);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = -1;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23E560FB4;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  return sub_23E57C360(v4, v2, v3, v0 + 16);
}

uint64_t sub_23E5A2778()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v1;
  v3(0, 0xF000000000000000, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E5A2820(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = (a2 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v5 = *i;

    v7 = sub_23E5C8F30();
    v8 = [a1 valueForEntitlement_];

    if (v8)
    {
      sub_23E5C9260();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (!*(&v18 + 1))
    {
      break;
    }

    if ((swift_dynamicCast() & 1) == 0 || (v16 & 1) == 0)
    {
      goto LABEL_12;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  sub_23E562510(v19, &qword_27E346758, &qword_23E5CD2A8);
LABEL_12:
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v10 = sub_23E5C8EB0();
  __swift_project_value_buffer(v10, qword_280C09128);

  v11 = sub_23E5C8E90();
  v12 = sub_23E5C9160();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v19[0] = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    v15 = sub_23E560AF0(v6, v5, v19);

    *(v13 + 14) = v15;
    _os_log_impl(&dword_23E55E000, v11, v12, "Rejecting connection missing entitlement: %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23EF0DE00](v14, -1, -1);
    MEMORY[0x23EF0DE00](v13, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_23E5A2A8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23E55FD60;

  return sub_23E5A2668(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_23E5A2C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_23E55FD64;

  return sub_23E5A2668(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_23E5A2D48()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 6910581;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696C696261706163;
  }
}

uint64_t sub_23E5A2DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23E5A34F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23E5A2DE4(uint64_t a1)
{
  v2 = sub_23E5A3044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23E5A2E20(uint64_t a1)
{
  v2 = sub_23E5A3044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvitationDestinationEndpoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467C0, &qword_23E5CD2B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v15 = v8;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5A3044();
  sub_23E5C9510();
  v17 = v9;
  v19 = 0;
  sub_23E568CBC();
  v12 = v16;
  sub_23E5C93E0();
  if (!v12)
  {
    v17 = v15;
    v18 = v10;
    v19 = 1;
    sub_23E561880(v15, v10);
    sub_23E568E0C();
    sub_23E5C93E0();
    sub_23E561230(v17, v18);
    LOBYTE(v17) = 2;
    sub_23E5C93C0();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23E5A3044()
{
  result = qword_27E3467C8;
  if (!qword_27E3467C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3467C8);
  }

  return result;
}

uint64_t InvitationDestinationEndpoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467D0, &qword_23E5CD2B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E5A3044();
  sub_23E5C9500();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  sub_23E568C68();
  sub_23E5C93A0();
  v11 = v22;
  v24 = 1;
  sub_23E568DB8();
  sub_23E5C93A0();
  v12 = v22;
  v21 = v23;
  LOBYTE(v22) = 2;
  v13 = sub_23E5C9380();
  v15 = v14;
  v16 = *(v6 + 8);
  v20 = v13;
  v16(v9, v5);
  *a2 = v11;
  a2[1] = v12;
  v17 = v20;
  v18 = v21;
  a2[2] = v21;
  a2[3] = v17;
  a2[4] = v15;
  sub_23E561880(v12, v18);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_23E561230(v12, v18);
}

uint64_t sub_23E5A3338(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23E5A3380(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_23E5A33EC()
{
  result = qword_27E3467D8;
  if (!qword_27E3467D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3467D8);
  }

  return result;
}

unint64_t sub_23E5A3444()
{
  result = qword_27E3467E0;
  if (!qword_27E3467E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3467E0);
  }

  return result;
}

unint64_t sub_23E5A349C()
{
  result = qword_27E3467E8;
  if (!qword_27E3467E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3467E8);
  }

  return result;
}

uint64_t sub_23E5A34F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v4 || (sub_23E5C9430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEE00617461447265 || (sub_23E5C9430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23E5C9430();

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

double sub_23E5A3614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23E57C65C(a1, a2), (v7 & 1) != 0))
  {
    v8 = (*(a3 + 56) + (v6 << 6));
    v9 = v8[3];
    v11 = *v8;
    v10 = v8[1];
    v16[2] = v8[2];
    v16[3] = v9;
    v16[0] = v11;
    v16[1] = v10;
    v12 = v8[1];
    *a4 = *v8;
    a4[1] = v12;
    v13 = v8[3];
    a4[2] = v8[2];
    a4[3] = v13;
    sub_23E57EA28(v16, &v15);
  }

  else
  {
    result = 0.0;
    a4[2] = 0u;
    a4[3] = 0u;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t InvitationDestinationCache.init(invitationDestinationMap:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t InvitationDestinationCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InvitationDestinationCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t InvitationDestinationCache.addInvitationDestination(_:forDestination:serviceIdentifier:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 192) = a5;
  *(v6 + 200) = v5;
  *(v6 + 176) = a3;
  *(v6 + 184) = a4;
  *(v6 + 168) = a2;
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  v8 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v8;
  return MEMORY[0x2822009F8](sub_23E5A3768, v5, 0);
}

uint64_t sub_23E5A3768()
{
  v1 = *(v0 + 200);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v1 + 112);

    v6 = sub_23E57C65C(v4, v3);
    if (v7)
    {
      v8 = *(*(v2 + 56) + 8 * v6);

      goto LABEL_6;
    }
  }

  v8 = sub_23E5A3D84(MEMORY[0x277D84F90]);
LABEL_6:
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  sub_23E57EA28(v0 + 16, v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23E571B64((v0 + 16), v12, v11, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v14 = *(v1 + 112);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_23E5719E8(v8, v10, v9, v15);

  *(v1 + 112) = v18;
  swift_endAccess();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t InvitationDestinationCache.invitationDestination(for:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  return MEMORY[0x2822009F8](sub_23E5A3914, v5, 0);
}

uint64_t sub_23E5A3914()
{
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];

    v5 = sub_23E57C65C(v4, v3);
    if (v6)
    {
      v8 = v0[6];
      v7 = v0[7];
      v9 = v0[5];
      v10 = *(*(v2 + 56) + 8 * v5);

      sub_23E5A3614(v8, v7, v10, v9);

      goto LABEL_6;
    }
  }

  v11 = v0[5];
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = 0u;
  v11[1] = 0u;
LABEL_6:
  v12 = v0[1];

  return v12();
}

uint64_t InvitationDestinationCache.containsInvitationDestination(for:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_23E5A3A3C, v4, 0);
}

uint64_t sub_23E5A3A3C()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[7];
    v3 = v0[8];

    v5 = sub_23E57C65C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      if (*(v7 + 16))
      {
        sub_23E57C65C(v0[5], v0[6]);
        v9 = v8;

        goto LABEL_7;
      }
    }
  }

  v9 = 0;
LABEL_7:
  v10 = v0[1];

  return v10(v9 & 1);
}

uint64_t sub_23E5A3B30(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23E55FD60;

  return InvitationDestinationCache.addInvitationDestination(_:forDestination:serviceIdentifier:)(a1, a2, a3, a4, a5);
}

uint64_t sub_23E5A3BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23E55FD64;

  return InvitationDestinationCache.invitationDestination(for:serviceIdentifier:)(a1, a2, a3, a4, a5);
}

uint64_t sub_23E5A3CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23E585A78;

  return InvitationDestinationCache.containsInvitationDestination(for:serviceIdentifier:)(a1, a2, a3, a4);
}

unint64_t sub_23E5A3D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346400, &unk_23E5CB930);
  v3 = sub_23E5C9360();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v5;
  v28 = *(a1 + 96);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_23E5A4318(&v24, v23);
  result = sub_23E57C65C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v28;
    v12[2] = v27;
    v12[3] = v15;
    *v12 = v13;
    v12[1] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27 = v21;
    v28 = v10[4];
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_23E5A4318(&v24, v23);
    result = sub_23E57C65C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t dispatch thunk of InvitationDestinationCaching.addInvitationDestination(_:forDestination:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_23E55FD60;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of InvitationDestinationCaching.invitationDestination(for:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 16);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_23E55FD64;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of InvitationDestinationCaching.containsInvitationDestination(for:serviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_23E585A78;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23E5A4318(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F0, &qword_23E5CD618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t InvitationDestinationGroup.destination.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InvitationDestinationGroup.preferredDestination.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v4 = v1[4];
  v8 = v1[3];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_23E57EA28(v7, &v6);
}

unint64_t InvitationDestinationGroup.description.getter()
{
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v1 = *(v0 + 80);
  sub_23E5C92D0();

  v2 = InvitationDestination.description.getter();
  MEMORY[0x23EF0D190](v2);

  MEMORY[0x23EF0D190](2592, 0xE200000000000000);
  MEMORY[0x23EF0D190](0xD000000000000016, 0x800000023E5D04B0);

  sub_23E5C92D0();

  v3 = MEMORY[0x23EF0D250](v1, &type metadata for InvitationDestination);
  MEMORY[0x23EF0D190](v3);

  MEMORY[0x23EF0D190](0xD000000000000018, 0x800000023E5D04D0);

  return 0xD00000000000001DLL;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23E5A4590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23E5A45D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E5A465C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 16);
  v4 = swift_allocObject();
  v5 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v5;
  v4[3] = *(v0 + 48);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD6F0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1128) = v7;
  *(v7 + 16) = &unk_23E5CD700;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1136) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A47F4;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(101, &unk_23E5CD710, v7, v2, &type metadata for SendFriendInviteTransportItem, v9, v3, &protocol witness table for SendFriendInviteTransportItem);
}

uint64_t sub_23E5A47F4()
{
  v1 = *(*v0 + 1136);
  v2 = *(*v0 + 1128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A490C, 0, 0);
}

uint64_t sub_23E5A490C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 64);
  v4 = swift_allocObject();
  v5 = *(v0 + 80);
  v4[1] = *(v0 + 64);
  v4[2] = v5;
  v4[3] = *(v0 + 96);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD720;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1144) = v7;
  *(v7 + 16) = &unk_23E5CD730;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1152) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A4AA4;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(102, &unk_23E5CD740, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A4AA4()
{
  v1 = *(*v0 + 1152);
  v2 = *(*v0 + 1144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A4BBC, 0, 0);
}

uint64_t sub_23E5A4BBC()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 112);
  v4 = swift_allocObject();
  v5 = *(v0 + 128);
  v4[1] = *(v0 + 112);
  v4[2] = v5;
  v4[3] = *(v0 + 144);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD750;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1160) = v7;
  *(v7 + 16) = &unk_23E5CD758;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1168) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A4D54;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(103, &unk_23E5CD760, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A4D54()
{
  v1 = *(*v0 + 1168);
  v2 = *(*v0 + 1160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A4E6C, 0, 0);
}

uint64_t sub_23E5A4E6C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 160);
  v4 = swift_allocObject();
  v5 = *(v0 + 176);
  v4[1] = *(v0 + 160);
  v4[2] = v5;
  v4[3] = *(v0 + 192);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD770;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1176) = v7;
  *(v7 + 16) = &unk_23E5CD778;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1184) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A5004;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(104, &unk_23E5CD780, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A5004()
{
  v1 = *(*v0 + 1184);
  v2 = *(*v0 + 1176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A511C, 0, 0);
}

uint64_t sub_23E5A511C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 208);
  v4 = swift_allocObject();
  v5 = *(v0 + 224);
  v4[1] = *(v0 + 208);
  v4[2] = v5;
  v4[3] = *(v0 + 240);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD790;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1192) = v7;
  *(v7 + 16) = &unk_23E5CD7A0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1200) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A52B4;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(202, &unk_23E5CD7B0, v7, v2, &type metadata for SetMuteEnabledTransportItem, v9, v3, &protocol witness table for SetMuteEnabledTransportItem);
}

uint64_t sub_23E5A52B4()
{
  v1 = *(*v0 + 1200);
  v2 = *(*v0 + 1192);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A53CC, 0, 0);
}

uint64_t sub_23E5A53CC()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 256);
  v4 = swift_allocObject();
  v5 = *(v0 + 272);
  v4[1] = *(v0 + 256);
  v4[2] = v5;
  v4[3] = *(v0 + 288);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD7C0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1208) = v7;
  *(v7 + 16) = &unk_23E5CD7D0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1216) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A5564;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(201, &unk_23E5CD7E0, v7, v2, &type metadata for SetActivityDataVisibleTransportItem, v9, v3, &protocol witness table for SetActivityDataVisibleTransportItem);
}

uint64_t sub_23E5A5564()
{
  v1 = *(*v0 + 1216);
  v2 = *(*v0 + 1208);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A567C, 0, 0);
}

uint64_t sub_23E5A567C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 304);
  v4 = swift_allocObject();
  v5 = *(v0 + 320);
  v4[1] = *(v0 + 304);
  v4[2] = v5;
  v4[3] = *(v0 + 336);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD7F0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1224) = v7;
  *(v7 + 16) = &unk_23E5CD7F8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1232) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A5814;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(301, &unk_23E5CD800, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A5814()
{
  v1 = *(*v0 + 1232);
  v2 = *(*v0 + 1224);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A592C, 0, 0);
}

uint64_t sub_23E5A592C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 352);
  v4 = swift_allocObject();
  v5 = *(v0 + 368);
  v4[1] = *(v0 + 352);
  v4[2] = v5;
  v4[3] = *(v0 + 384);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD810;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1240) = v7;
  *(v7 + 16) = &unk_23E5CD818;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1248) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A5AC4;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(302, &unk_23E5CD820, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A5AC4()
{
  v1 = *(*v0 + 1248);
  v2 = *(*v0 + 1240);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A5BDC, 0, 0);
}

uint64_t sub_23E5A5BDC()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 400);
  v4 = swift_allocObject();
  v5 = *(v0 + 416);
  v4[1] = *(v0 + 400);
  v4[2] = v5;
  v4[3] = *(v0 + 432);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD830;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1256) = v7;
  *(v7 + 16) = &unk_23E5CD838;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1264) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A5D74;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(303, &unk_23E5CD840, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A5D74()
{
  v1 = *(*v0 + 1264);
  v2 = *(*v0 + 1256);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A5E8C, 0, 0);
}

uint64_t sub_23E5A5E8C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 448);
  v4 = swift_allocObject();
  v5 = *(v0 + 464);
  v4[1] = *(v0 + 448);
  v4[2] = v5;
  v4[3] = *(v0 + 480);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD850;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1272) = v7;
  *(v7 + 16) = &unk_23E5CD858;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1280) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6024;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(304, &unk_23E5CD860, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A6024()
{
  v1 = *(*v0 + 1280);
  v2 = *(*v0 + 1272);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A613C, 0, 0);
}

uint64_t sub_23E5A613C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 496);
  v4 = swift_allocObject();
  v5 = *(v0 + 512);
  v4[1] = *(v0 + 496);
  v4[2] = v5;
  v4[3] = *(v0 + 528);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD870;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1288) = v7;
  *(v7 + 16) = &unk_23E5CD880;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1296) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A62BC;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(401, &unk_23E5CD890, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A62BC()
{
  v1 = *(*v0 + 1296);
  v2 = *(*v0 + 1288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A63D4, 0, 0);
}

uint64_t sub_23E5A63D4()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 544);
  v4 = swift_allocObject();
  v5 = *(v0 + 560);
  v4[1] = *(v0 + 544);
  v4[2] = v5;
  v4[3] = *(v0 + 576);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD8A0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1304) = v7;
  *(v7 + 16) = &unk_23E5CD8A8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1312) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6554;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(402, &unk_23E5CD8B0, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A6554()
{
  v1 = *(*v0 + 1312);
  v2 = *(*v0 + 1304);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A666C, 0, 0);
}

uint64_t sub_23E5A666C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 592);
  v4 = swift_allocObject();
  v5 = *(v0 + 608);
  v4[1] = *(v0 + 592);
  v4[2] = v5;
  v4[3] = *(v0 + 624);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD8C0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1320) = v7;
  *(v7 + 16) = &unk_23E5CD8D0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1328) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6804;
  v9 = MEMORY[0x277D83E88];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(403, &unk_23E5CD8E0, v7, v2, v9, v10, v3, &protocol witness table for UInt);
}

uint64_t sub_23E5A6804()
{
  v1 = *(*v0 + 1328);
  v2 = *(*v0 + 1320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A691C, 0, 0);
}

uint64_t sub_23E5A691C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 640);
  v4 = swift_allocObject();
  v5 = *(v0 + 656);
  v4[1] = *(v0 + 640);
  v4[2] = v5;
  v4[3] = *(v0 + 672);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD8F0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1336) = v7;
  *(v7 + 16) = &unk_23E5CD8F8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1344) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6A9C;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(404, &unk_23E5CD900, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A6A9C()
{
  v1 = *(*v0 + 1344);
  v2 = *(*v0 + 1336);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A6BB4, 0, 0);
}

uint64_t sub_23E5A6BB4()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 688);
  v4 = swift_allocObject();
  v5 = *(v0 + 704);
  v4[1] = *(v0 + 688);
  v4[2] = v5;
  v4[3] = *(v0 + 720);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD910;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1352) = v7;
  *(v7 + 16) = &unk_23E5CD918;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1360) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6D34;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(405, &unk_23E5CD920, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A6D34()
{
  v1 = *(*v0 + 1360);
  v2 = *(*v0 + 1352);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A6E4C, 0, 0);
}

uint64_t sub_23E5A6E4C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 736);
  v4 = swift_allocObject();
  v5 = *(v0 + 752);
  v4[1] = *(v0 + 736);
  v4[2] = v5;
  v4[3] = *(v0 + 768);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD930;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1368) = v7;
  *(v7 + 16) = &unk_23E5CD940;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1376) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A6FE4;
  v9 = MEMORY[0x277D84A28];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(501, &unk_23E5CD950, v7, v2, v9, v10, v3, &protocol witness table for Int64);
}

uint64_t sub_23E5A6FE4()
{
  v1 = *(*v0 + 1376);
  v2 = *(*v0 + 1368);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A70FC, 0, 0);
}

uint64_t sub_23E5A70FC()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 784);
  v4 = swift_allocObject();
  v5 = *(v0 + 800);
  v4[1] = *(v0 + 784);
  v4[2] = v5;
  v4[3] = *(v0 + 816);
  v6 = swift_allocObject();
  *(v0 + 1384) = v6;
  *(v6 + 16) = &unk_23E5CD960;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 1392) = v7;
  v8 = sub_23E593770(0, &qword_280C08FF0, 0x277CE90A0);
  *v7 = v0;
  v7[1] = sub_23E5A7268;

  return TransportDispatching.register<A>(_:handler:)(601, &unk_23E5CD970, v6, v2, v8, v3, &protocol witness table for ASCodableFriendList);
}

uint64_t sub_23E5A7268()
{
  v1 = *(*v0 + 1392);
  v2 = *(*v0 + 1384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A7380, 0, 0);
}

uint64_t sub_23E5A7380()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 832);
  v4 = swift_allocObject();
  v5 = *(v0 + 848);
  v4[1] = *(v0 + 832);
  v4[2] = v5;
  v4[3] = *(v0 + 864);
  v6 = swift_allocObject();
  *(v0 + 1400) = v6;
  *(v6 + 16) = &unk_23E5CD980;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  *(v0 + 1408) = v7;
  v8 = sub_23E593770(0, &qword_280C088E0, 0x277CE9098);
  *v7 = v0;
  v7[1] = sub_23E5A7504;
  v9 = MEMORY[0x277D837D0];

  return TransportDispatching.register<A, B>(_:handler:)(602, &unk_23E5CD990, v6, v2, v9, v8, v3, &protocol witness table for String);
}

uint64_t sub_23E5A7504()
{
  v1 = *(*v0 + 1408);
  v2 = *(*v0 + 1400);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A761C, 0, 0);
}

uint64_t sub_23E5A761C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 880);
  v4 = swift_allocObject();
  v5 = *(v0 + 896);
  v4[1] = *(v0 + 880);
  v4[2] = v5;
  v4[3] = *(v0 + 912);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD9A0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1416) = v7;
  *(v7 + 16) = &unk_23E5CD9A8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1424) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A77B4;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(603, &unk_23E5CD9B0, v7, v2, v9, v10, v3, &protocol witness table for String);
}

uint64_t sub_23E5A77B4()
{
  v1 = *(*v0 + 1424);
  v2 = *(*v0 + 1416);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A78CC, 0, 0);
}

uint64_t sub_23E5A78CC()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 928);
  v4 = swift_allocObject();
  v5 = *(v0 + 944);
  v4[1] = *(v0 + 928);
  v4[2] = v5;
  v4[3] = *(v0 + 960);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD9C0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1432) = v7;
  *(v7 + 16) = &unk_23E5CD9C8;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1440) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A7A4C;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(604, &unk_23E5CD9D0, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A7A4C()
{
  v1 = *(*v0 + 1440);
  v2 = *(*v0 + 1432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A7B64, 0, 0);
}

uint64_t sub_23E5A7B64()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 976);
  v4 = swift_allocObject();
  v5 = *(v0 + 992);
  v4[1] = *(v0 + 976);
  v4[2] = v5;
  v4[3] = *(v0 + 1008);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CD9E0;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1448) = v7;
  *(v7 + 16) = &unk_23E5CD9F0;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1456) = v8;
  v9 = sub_23E593770(0, &qword_280C088C8, 0x277CE9138);
  *v8 = v0;
  v8[1] = sub_23E5A7D14;
  v10 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A, B>(_:handler:)(701, &unk_23E5CDA00, v7, v2, v9, v10, v3, &protocol witness table for ASUserNotificationResponse);
}

uint64_t sub_23E5A7D14()
{
  v1 = *(*v0 + 1456);
  v2 = *(*v0 + 1448);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A7E2C, 0, 0);
}

uint64_t sub_23E5A7E2C()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 1024);
  v4 = swift_allocObject();
  v5 = *(v0 + 1040);
  v4[1] = *(v0 + 1024);
  v4[2] = v5;
  v4[3] = *(v0 + 1056);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CDA10;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1464) = v7;
  *(v7 + 16) = &unk_23E5CDA20;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1472) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A7FB0;
  v9 = MEMORY[0x277D83B88];

  return TransportDispatching.register<A>(_:handler:)(801, &unk_23E5CDA30, v7, v2, v9, v3, &protocol witness table for Int);
}

uint64_t sub_23E5A7FB0()
{
  v1 = *(*v0 + 1472);
  v2 = *(*v0 + 1464);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23E5A80C8, 0, 0);
}

uint64_t sub_23E5A80C8()
{
  v1 = *(v0 + 1120);
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  sub_23E5A8560(v1, v0 + 1072);
  v4 = swift_allocObject();
  v5 = *(v0 + 1088);
  v4[1] = *(v0 + 1072);
  v4[2] = v5;
  v4[3] = *(v0 + 1104);
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_23E5CDA40;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v0 + 1480) = v7;
  *(v7 + 16) = &unk_23E5CDA48;
  *(v7 + 24) = v6;
  v8 = swift_task_alloc();
  *(v0 + 1488) = v8;
  *v8 = v0;
  v8[1] = sub_23E5A824C;
  v9 = MEMORY[0x277D839B0];

  return TransportDispatching.register<A>(_:handler:)(901, &unk_23E5CDA50, v7, v2, v9, v3, &protocol witness table for Bool);
}

uint64_t sub_23E5A824C()
{
  v1 = *(*v0 + 1488);
  v2 = *(*v0 + 1480);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23E5A835C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_23E5A8408;

  return sub_23E5A8630(v1 + 16);
}

uint64_t sub_23E5A8408(char a1)
{
  v4 = *(*v2 + 64);
  v5 = *v2;
  *(v5 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E5A8544, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_23E5A8598(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E596BDC;

  return sub_23E5A835C(a1);
}

uint64_t sub_23E5A8630(uint64_t a1)
{
  *(v2 + 144) = v1;
  *(v2 + 152) = *a1;
  *(v2 + 168) = *(a1 + 16);
  *(v2 + 176) = *(a1 + 24);
  *(v2 + 192) = *(a1 + 40);
  return MEMORY[0x2822009F8](sub_23E5A8670, 0, 0);
}

uint64_t sub_23E5A8670()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = sub_23E5C8EB0();
  __swift_project_value_buffer(v8, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000014, 0x800000023E5D08B0);
  v9 = *v7;
  v10 = sub_23E5C8F30();
  v0[25] = v10;
  v11 = sub_23E5C8F30();
  v0[26] = v11;
  v12 = sub_23E5C8F30();
  v0[27] = v12;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_23E5A8884;
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_486;
  v0[14] = v13;
  [v9 sendInviteRequestToDestination:v10 callerID:v11 serviceIdentifier:v12 completion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5A8884()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_23E5A8A14;
  }

  else
  {
    v3 = sub_23E5A8994;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5A8994()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 232);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23E5A8A14()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5(0);
}

uint64_t sub_23E5A8A9C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BB0;

  return v7(a1);
}

uint64_t sub_23E5A8B90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return sub_23E5A8A9C(a1, v5);
}

uint64_t sub_23E5A8C44(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E5B0BBC;

  return v8(a2);
}

uint64_t sub_23E5A8D3C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5A8C44(a1, a2, v7);
}

uint64_t sub_23E5A8E04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5A8F54(a1, a2);
}

uint64_t sub_23E5A8EAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5A8E04(a1, a2);
}

uint64_t sub_23E5A8F54(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5A8F78, 0, 0);
}

uint64_t sub_23E5A8F78()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000019, 0x800000023E5D0890);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_476;
  v0[14] = v7;
  [v5 acceptInviteRequestFromFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5A9140()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_23E5B0BC4;
  }

  else
  {
    v3 = sub_23E5B0BB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5A9250(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E5B0BB0;

  return v9(a1, a2);
}

uint64_t sub_23E5A9350(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E596BDC;

  return sub_23E5A9250(a1, a2, v7);
}

uint64_t sub_23E5A9414(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_23E5B0BBC;

  return v9(v4, v5);
}

uint64_t sub_23E5A9514(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5A9414(a1, a2, v7);
}

uint64_t sub_23E5A95DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5A972C(a1, a2);
}

uint64_t sub_23E5A9684(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5A95DC(a1, a2);
}

uint64_t sub_23E5A972C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5A9750, 0, 0);
}

uint64_t sub_23E5A9750()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000019, 0x800000023E5D0870);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_466;
  v0[14] = v7;
  [v5 sendWithdrawInviteRequestToFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5A9918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5A9A68(a1, a2);
}

uint64_t sub_23E5A99C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5A9918(a1, a2);
}

uint64_t sub_23E5A9A68(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5A9A8C, 0, 0);
}

uint64_t sub_23E5A9A8C()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000019, 0x800000023E5D0850);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_460;
  v0[14] = v7;
  [v5 ignoreInviteRequestFromFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5A9C54(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  v4[1] = sub_23E5A9CFC;

  return sub_23E5A9ED0(v1 + 16);
}

uint64_t sub_23E5A9CFC(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E5B0BC8, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_23E5A9E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E596BDC;

  return sub_23E5A9C54(a1);
}

uint64_t sub_23E5A9ED0(uint64_t a1)
{
  *(v2 + 185) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  *(v2 + 160) = v4;
  return MEMORY[0x2822009F8](sub_23E5A9F00, 0, 0);
}

uint64_t sub_23E5A9F00()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 185);
  v4 = *(v0 + 144);
  v5 = sub_23E5C8EB0();
  __swift_project_value_buffer(v5, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000012, 0x800000023E5D0830);
  v6 = *v4;
  v7 = sub_23E5C8F30();
  *(v0 + 168) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_23E5A9140;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23E5B0888;
  *(v0 + 104) = &block_descriptor_454;
  *(v0 + 112) = v8;
  [v6 setMuteEnabled:v3 forFriendWithUUID:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E5AA0D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return sub_23E5A8A9C(a1, v5);
}

uint64_t sub_23E5AA184(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5A8C44(a1, a2, v7);
}

uint64_t sub_23E5AA24C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  *v4 = v1;
  v4[1] = sub_23E5AA2F4;

  return sub_23E5AA4C8(v1 + 16);
}

uint64_t sub_23E5AA2F4(char a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E592188, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_23E5AA430(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E594A1C;

  return sub_23E5AA24C(a1);
}

uint64_t sub_23E5AA4C8(uint64_t a1)
{
  *(v2 + 185) = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  *(v2 + 160) = v4;
  return MEMORY[0x2822009F8](sub_23E5AA4F8, 0, 0);
}

uint64_t sub_23E5AA4F8()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 185);
  v4 = *(v0 + 144);
  v5 = sub_23E5C8EB0();
  __swift_project_value_buffer(v5, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ALL, 0x800000023E5D0810);
  v6 = *v4;
  v7 = sub_23E5C8F30();
  *(v0 + 168) = v7;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = sub_23E5AA6C8;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_23E5B0888;
  *(v0 + 104) = &block_descriptor_444;
  *(v0 + 112) = v8;
  [v6 setActivityDataVisible:v3 toFriendWithUUID:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23E5AA6C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_23E5AA844;
  }

  else
  {
    v3 = sub_23E5AA7D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AA7D8()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E5AA844()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3(0);
}

uint64_t sub_23E5AA8B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5AA9AC;

  return v7(a1);
}

uint64_t sub_23E5AA9AC(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_23E5AAADC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E594A1C;

  return sub_23E5AA8B8(a1, v5);
}

uint64_t sub_23E5AAB90(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E5AAC88;

  return v8(a2);
}

uint64_t sub_23E5AAC88(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_23E5AAD98(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD64;

  return sub_23E5AAB90(a1, a2, v7);
}

uint64_t sub_23E5AAE60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5AAF08;

  return sub_23E5AB0B8(a1, a2);
}

uint64_t sub_23E5AAF08(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_23E5AB010(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AAE60(a1, a2);
}

uint64_t sub_23E5AB0B8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5AB0DC, 0, 0);
}

uint64_t sub_23E5AB0DC()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ALL, 0x800000023E5D07F0);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_434;
  v0[14] = v7;
  [v5 sendCompetitionRequestToFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AB2A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5AB3F4(a1, a2);
}

uint64_t sub_23E5AB34C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AB2A4(a1, a2);
}

uint64_t sub_23E5AB3F4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5AB418, 0, 0);
}

uint64_t sub_23E5AB418()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ELL, 0x800000023E5D07D0);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_428;
  v0[14] = v7;
  [v5 acceptCompetitionRequestFromFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AB5E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5AB730(a1, a2);
}

uint64_t sub_23E5AB688(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AB5E0(a1, a2);
}

uint64_t sub_23E5AB730(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5AB754, 0, 0);
}

uint64_t sub_23E5AB754()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ELL, 0x800000023E5D07B0);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_422;
  v0[14] = v7;
  [v5 ignoreCompetitionRequestFromFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AB91C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5ABA6C(a1, a2);
}

uint64_t sub_23E5AB9C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AB91C(a1, a2);
}

uint64_t sub_23E5ABA6C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5ABA90, 0, 0);
}

uint64_t sub_23E5ABA90()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ALL, 0x800000023E5D0790);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_416;
  v0[14] = v7;
  [v5 completeCompetitionWithFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5ABC58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5ABD7C();
}

uint64_t sub_23E5ABCE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5ABC58();
}

uint64_t sub_23E5ABD9C()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000012, 0x800000023E5D0770);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5ABF40;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_410;
  v0[14] = v4;
  [v3 pushActivityDataToAllFriendsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5ABF40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_23E5B0BCC;
  }

  else
  {
    v3 = sub_23E596C00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AC050(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5B0BB0;

  return v5();
}

uint64_t sub_23E5AC138()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E596BDC;

  return sub_23E5AC050(v2);
}

uint64_t sub_23E5AC1E4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23E5B0BBC;

  return v6();
}

uint64_t sub_23E5AC2D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E5AC1E4(a1, v5);
}

uint64_t sub_23E5AC388()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5AC4AC();
}

uint64_t sub_23E5AC418()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5AC388();
}

uint64_t sub_23E5AC4CC()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001CLL, 0x800000023E5D0750);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5AC670;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_400;
  v0[14] = v4;
  [v3 fetchAllDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AC670()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 152) = v2;
  if (v2)
  {
    v3 = sub_23E5AC780;
  }

  else
  {
    v3 = sub_23E58C338;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AC780()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2(0);
}

uint64_t sub_23E5AC7F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5B0BD8;

  return sub_23E5AC920(a1);
}

uint64_t sub_23E5AC888(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E596BDC;

  return sub_23E5AC7F0(a1);
}

uint64_t sub_23E5AC920(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_23E5AC940, 0, 0);
}

uint64_t sub_23E5AC940()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_23E5C8EB0();
  __swift_project_value_buffer(v3, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000002BLL, 0x800000023E5D0720);
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23E5ACAE8;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_394;
  v0[14] = v5;
  [v4 fetchAllDataIfTimeSinceLastFetchIsGreaterThan:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5ACAE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_23E5ACC14;
  }

  else
  {
    v3 = sub_23E5ACBF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5ACC14()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2(0);
}

uint64_t sub_23E5ACC84(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BB0;

  return v7(a1);
}

uint64_t sub_23E5ACD78(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return sub_23E5ACC84(a1, v5);
}

uint64_t sub_23E5ACE2C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E5B0BBC;

  return v8(v4);
}

uint64_t sub_23E5ACF24(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5ACE2C(a1, a2, v7);
}

uint64_t sub_23E5ACFEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5AD110();
}

uint64_t sub_23E5AD07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5ACFEC();
}

uint64_t sub_23E5AD130()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000019, 0x800000023E5D0700);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5AC670;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346818, &qword_23E5CDB10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0954;
  v0[13] = &block_descriptor_384;
  v0[14] = v4;
  [v3 cloudKitAccountStatusWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AD2D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5AD3F8();
}

uint64_t sub_23E5AD364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5AD2D4();
}

uint64_t sub_23E5AD418()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000013, 0x800000023E5D06E0);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5ABF40;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_378;
  v0[14] = v4;
  [v3 expireChangeTokenWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AD5BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5B0BD8;

  return sub_23E5AD6EC(a1);
}

uint64_t sub_23E5AD654(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E596BDC;

  return sub_23E5AD5BC(a1);
}

uint64_t sub_23E5AD6EC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_23E5AD70C, 0, 0);
}

uint64_t sub_23E5AD70C()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_23E5C8EB0();
  __swift_project_value_buffer(v3, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000030, 0x800000023E5D0680);
  v4 = sub_23E5C94C0();
  v0[20] = v4;
  v5 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_23E5AD8C4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346818, &qword_23E5CDB10);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0954;
  v0[13] = &block_descriptor_372;
  v0[14] = v6;
  [v5 fetchAreMultipleDevicesSharingDataForSnapshotIndex:v4 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AD8C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23E5ADA40;
  }

  else
  {
    v3 = sub_23E5AD9D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AD9D4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E5ADA40()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3(0);
}

uint64_t sub_23E5ADAB4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BB0;

  return v7(a1);
}

uint64_t sub_23E5ADBA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return sub_23E5ADAB4(a1, v5);
}

uint64_t sub_23E5ADC5C(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E5B0BBC;

  return v8(v4);
}

uint64_t sub_23E5ADD54(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5ADC5C(a1, a2, v7);
}

uint64_t sub_23E5ADE1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BDC;

  return sub_23E5ADF40();
}

uint64_t sub_23E5ADEAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5ADE1C();
}

uint64_t sub_23E5ADF60()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0x6E656972466C6C61, 0xEC00000029287364);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23E5AE104;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346810, &qword_23E5CDB00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0BB4;
  v0[13] = &block_descriptor_362;
  v0[14] = v4;
  [v3 allFriendsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AE104()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23E5AE230;
  }

  else
  {
    v3 = sub_23E5AE214;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AE230()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_23E5AE29C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23E5B0BC0;

  return v6();
}

uint64_t sub_23E5AE388(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E5AE29C(a1, v5);
}

uint64_t sub_23E5AE440(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BDC;

  return sub_23E5AE590(a1, a2);
}

uint64_t sub_23E5AE4E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AE440(a1, a2);
}

uint64_t sub_23E5AE590(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_23E5AE5B4, 0, 0);
}

uint64_t sub_23E5AE5B4()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000016, 0x800000023E5D0600);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[23] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23E5AE77C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346808, &qword_23E5CDAF0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0BB4;
  v0[13] = &block_descriptor_354;
  v0[14] = v7;
  [v5 friendWithRemoteUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AE77C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_23E5AE928;
  }

  else
  {
    v3 = sub_23E5AE88C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AE88C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 codableFriendIncludingCloudKitFields_];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23E5AE928()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_23E5AE998(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_23E5AEA98;

  return v9(v4, v5);
}

uint64_t sub_23E5AEA98(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_23E5AEBA8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5AE998(a1, a2, v7);
}

uint64_t sub_23E5AEC70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BD8;

  return sub_23E5AEDC0(a1, a2);
}

uint64_t sub_23E5AED18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E596BDC;

  return sub_23E5AEC70(a1, a2);
}

uint64_t sub_23E5AEDC0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E5AEDE4, 0, 0);
}

uint64_t sub_23E5AEDE4()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_23E5C8EB0();
  __swift_project_value_buffer(v4, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000017, 0x800000023E5D05E0);
  v5 = *v2;
  v6 = sub_23E5C8F30();
  v0[21] = v6;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_23E5A9140;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_346;
  v0[14] = v7;
  [v5 removeFriendWithUUID:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AEFAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5AF0D0();
}

uint64_t sub_23E5AF03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5AEFAC();
}

uint64_t sub_23E5AF0F0()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000012, 0x800000023E5D05C0);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5ABF40;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_340;
  v0[14] = v4;
  [v3 clearFriendListWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AF294(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5B0BD8;

  return sub_23E5AF3C4(a1);
}

uint64_t sub_23E5AF32C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E596BDC;

  return sub_23E5AF294(a1);
}

uint64_t sub_23E5AF3C4(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_23E5AF3E4, 0, 0);
}

uint64_t sub_23E5AF3E4()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[19];
  v3 = sub_23E5C8EB0();
  __swift_project_value_buffer(v3, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD00000000000001ELL, 0x800000023E5D05A0);
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_23E5AF58C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_334;
  v0[14] = v5;
  [v4 handleNotificationResponse:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AF58C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_23E5B0BD0;
  }

  else
  {
    v3 = sub_23E5B0BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AF69C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E5B0BB0;

  return v7(a1);
}

uint64_t sub_23E5AF790(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E596BDC;

  return sub_23E5AF69C(a1, v5);
}

uint64_t sub_23E5AF844(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_23E5B0BBC;

  return v8(v4);
}

uint64_t sub_23E5AF93C(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E55FD60;

  return sub_23E5AF844(a1, a2, v7);
}

uint64_t sub_23E5AFA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5AFA94;

  return sub_23E5AFC28();
}

uint64_t sub_23E5AFA94(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23E5AFB94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E594A1C;

  return sub_23E5AFA04();
}

uint64_t sub_23E5AFC48()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0x6567646142707061, 0xEF2928746E756F43);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23E5AFDF0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346800, &qword_23E5CDAC8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0BB4;
  v0[13] = &block_descriptor_324;
  v0[14] = v4;
  [v3 queryAppBadgeCountWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5AFDF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_23E5B0BD4;
  }

  else
  {
    v3 = sub_23E5AFF00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E5AFF00()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_23E5AFF88(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E5B0070;

  return v5();
}

uint64_t sub_23E5B0070(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v9 = *v2;

  v7 = *(v9 + 8);
  if (!v1)
  {
    v5 = a1;
    v6 = 0;
  }

  return v7(v5, v6);
}

uint64_t sub_23E5B0174()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23E57E2F0;

  return sub_23E5AFF88(v2);
}

uint64_t sub_23E5B0220(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23E5B030C;

  return v6();
}

uint64_t sub_23E5B030C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    *(v9 + 8) = a2 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_23E5B0430(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23E55FD60;

  return sub_23E5B0220(a1, v5);
}

uint64_t sub_23E5B04E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E5B0BD8;

  return sub_23E5B06C4();
}

uint64_t sub_23E5B0578()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E596BDC;

  return sub_23E5B04E8();
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

uint64_t sub_23E5B0620(uint64_t *a1, int a2)
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

uint64_t sub_23E5B0668(uint64_t result, int a2, int a3)
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

uint64_t sub_23E5B06E4()
{
  if (qword_280C09100 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_23E5C8EB0();
  __swift_project_value_buffer(v2, qword_280C09128);
  sub_23E560890(0xD00000000000005CLL, 0x800000023E5D04F0, 0xD000000000000016, 0x800000023E5D0550);
  v3 = *v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_23E5ABF40;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3467F8, &unk_23E5CDAB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E5B0888;
  v0[13] = &block_descriptor_2;
  v0[14] = v4;
  [v3 pushFakeActivityDataToAllFriendsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E5B0888(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23E5B0954(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_23E5B0A28(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E346510, "HT");
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = a3;
    v12 = a2;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t Array<A>.init(activitySharingTransportData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for CodableObjectArray();
  sub_23E562570(a1, a2);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = v5;
  TransportSerializable<>.init(activitySharingTransportData:)(v5, &v9);
  if (v2)
  {
    sub_23E56121C(a1, a2);
  }

  else
  {
    v7 = v9;
    if (v9)
    {
      v6 = CodableObjectArray.value.getter(v5);
      sub_23E56121C(a1, a2);
    }

    else
    {
      sub_23E56121C(a1, a2);
      return 0;
    }
  }

  return v6;
}

uint64_t sub_23E5B0D08@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 + 16);
  result = Array<A>.init(activitySharingTransportData:)(a1, a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t SecureCloudWithdrawRequestProtobuf.date.setter(double a1)
{
  result = type metadata accessor for SecureCloudWithdrawRequestProtobuf();
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for SecureCloudWithdrawRequestProtobuf()
{
  result = qword_27E346908;
  if (!qword_27E346908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureCloudWithdrawRequestProtobuf.handshakeToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SecureCloudWithdrawRequestProtobuf() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}