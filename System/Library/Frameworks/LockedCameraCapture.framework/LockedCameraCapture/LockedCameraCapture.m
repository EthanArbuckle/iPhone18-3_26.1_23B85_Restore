uint64_t sub_238C0EA20()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238C0EAA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238C0EAEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238C0EB74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238C0EC00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238C0EC5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238C0ECA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t LockedCameraCaptureExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  return sub_238C19408();
}

uint64_t sub_238C0EE78()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 32))();
}

uint64_t sub_238C0EEE0()
{
  v0 = sub_238C19448();
  __swift_allocate_value_buffer(v0, qword_27DF6AF38);
  __swift_project_value_buffer(v0, qword_27DF6AF38);
  return sub_238C19428();
}

id LockedCameraCaptureUIScene.init(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a4;
  v47 = a5;
  v48 = a1;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = sub_238C193E8();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6AF30 != -1)
  {
    swift_once();
  }

  v51 = a2;
  v52 = a3;
  v17 = sub_238C19448();
  __swift_project_value_buffer(v17, qword_27DF6AF38);
  v18 = sub_238C19438();
  v43 = v19;
  v44 = v18;
  v20 = [objc_allocWithZone(sub_238C19478()) init];
  v21 = sub_238C194E8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v20;
  v25 = sub_238C19498();
  type metadata accessor for LockedCameraCaptureSession();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;

  v27 = sub_238C19488();
  v28 = [v27 url];

  sub_238C193D8();
  if (qword_2814F3A98 != -1)
  {
    v29 = swift_once();
  }

  v30 = qword_2814F3F20;
  MEMORY[0x28223BE20](v29);
  *(&v42 - 2) = v16;
  v31 = *(*v30 + *MEMORY[0x277D841D0] + 16);
  v32 = *(*v30 + 48) + 3;
  v42 = v16;
  v33 = v32 & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v30 + (v32 & 0x1FFFFFFFCLL)));
  sub_238C0F5A8(v30 + v31);
  os_unfair_lock_unlock((v30 + v33));
  v48(v26);

  v34 = v52;
  sub_238C19548();
  (*(v7 + 16))(v49, v12, v34);
  v35 = sub_238C19538();
  result = [v35 view];
  if (result)
  {
    v37 = result;
    v38 = [objc_opt_self() clearColor];
    [v37 setBackgroundColor_];

    sub_238C19468();

    (*(v7 + 8))(v12, v34);
    result = (*(v45 + 8))(v42, v46);
    v39 = v47;
    v40 = v43;
    v41 = v44;
    *v47 = v26;
    v39[1] = v41;
    v39[2] = v40;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_238C0F3DC(uint64_t a1, uint64_t a2)
{
  sub_238C0F788(a1);
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t LockedCameraCaptureUIScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  swift_bridgeObjectRetain_n();

  return sub_238C193F8();
}

uint64_t sub_238C0F5EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238C0F680()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238C0F6DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238C0F724(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_238C0F788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_238C0F8DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238C0F8FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814F3A20[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_2814F3A20);
    }
  }
}

uint64_t sub_238C0F974()
{
  v0 = sub_238C19518();
  __swift_allocate_value_buffer(v0, qword_2814F3F08);
  __swift_project_value_buffer(v0, qword_2814F3F08);
  return sub_238C19508();
}

void LockedCameraCaptureSession.sessionContentURL.getter()
{
  v1 = *(v0 + 16);
  v2 = sub_238C19488();
  v3 = [v2 url];

  sub_238C193D8();
}

uint64_t sub_238C0FA58()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v9 - v1;
  v3 = sub_238C193E8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B150, &qword_238C1A2D8);
  v5 = *(v4 + 52);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  v7 = swift_allocObject();
  *(v7 + ((*(*v7 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238C115A4(v2, v7 + *(*v7 + *MEMORY[0x277D841D0] + 16), &qword_27DF6B098, "h\n");
  result = sub_238C1196C(v2, &qword_27DF6B098, "h\n");
  qword_2814F3F20 = v7;
  return result;
}

BOOL static LockedCameraCaptureSession.hasActiveSession.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F3F20;
  v5 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v6));
  sub_238C115A4(v4 + v5, v3, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v4 + v6));
  v7 = sub_238C193E8();
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7) != 1;
  sub_238C1196C(v3, &qword_27DF6B098, "h\n");
  return v8;
}

uint64_t LockedCameraCaptureSession.urlsToOpen.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B100, "t\n");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = *(v0 + 16);
  v4 = sub_238C194A8();
  sub_238C19458();

  sub_238C193E8();
  sub_238C11508(&qword_27DF6B108, &qword_27DF6B100, "t\n");
  return sub_238C197B8();
}

uint64_t sub_238C0FE70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_238C0FE94);
}

uint64_t sub_238C0FE94()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) URL];
  sub_238C193D8();

  v3 = *(v0 + 8);

  return v3();
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

uint64_t LockedCameraCaptureSession.openApplication(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_238C0FFA4);
}

uint64_t sub_238C0FFA4()
{
  v1 = *(v0[3] + 16);
  v2 = *(MEMORY[0x277D4C8B8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_238C10044;
  v4 = v0[2];

  return MEMORY[0x2821AC4E0](v4);
}

uint64_t sub_238C10044()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238C10178);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_238C10178()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_238C104EC();
  swift_allocError();
  sub_238C10228(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_238C10228@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B140, &qword_238C1A2C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20[-v6];
  v8 = sub_238C194C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  v21 = a1;
  MEMORY[0x23EE756A0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B148, &qword_238C1A2D0);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v20[7];
    return result;
  }

  v21 = a1;
  MEMORY[0x23EE756A0](a1);
  v17 = swift_dynamicCast();
  v18 = *(v9 + 56);
  if (!v17)
  {
    v18(v7, 1, 1, v8);
    result = sub_238C1196C(v7, &qword_27DF6B140, &qword_238C1A2C8);
    goto LABEL_8;
  }

  v18(v7, 0, 1, v8);
  v19 = *(v9 + 32);
  v19(v15, v7, v8);
  v19(v13, v15, v8);
  result = (*(v9 + 88))(v13, v8);
  if (result == *MEMORY[0x277D4C8D0])
  {
LABEL_8:
    *a2 = 0;
    return result;
  }

  if (result == *MEMORY[0x277D4C8C0])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277D4C8C8])
  {
    *a2 = 2;
  }

  else
  {
    *a2 = 0;
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

unint64_t sub_238C104EC()
{
  result = qword_27DF6B110;
  if (!qword_27DF6B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B110);
  }

  return result;
}

uint64_t LockedCameraCaptureSession.openApplicationAfterTransitionCompletion(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_238C19618();
  v2[5] = sub_238C19608();
  v2[6] = sub_238C195F8();
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_238C10600);
}

uint64_t sub_238C10600()
{
  v1 = *(v0[3] + 16);
  v2 = *(MEMORY[0x277D4C8D8] + 4);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_238C106A0;
  v4 = v0[2];

  return MEMORY[0x2821AC4F0](v4);
}

uint64_t sub_238C106A0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_238C10840;
  }

  else
  {
    v7 = sub_238C107DC;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_238C107DC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238C10840()
{
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];

  sub_238C104EC();
  swift_allocError();
  sub_238C10228(v1, v4);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t LockedCameraCaptureSession.invalidateSessionContent()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238C10990);
}

uint64_t sub_238C10990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_238C19638();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_238C10CD4(0, 0, v2, &unk_238C1A0E0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_238C10AB4()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = sub_238C19488();
  [v2 invalidate];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238C10B2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C10BE0;

  return sub_238C10A94(a1, v4, v5, v6);
}

uint64_t sub_238C10BE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238C10CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_238C115A4(a3, v27 - v11, &qword_27DF6B118, &qword_238C1A0D0);
  v13 = sub_238C19638();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238C1196C(v12, &qword_27DF6B118, &qword_238C1A0D0);
  }

  else
  {
    sub_238C19628();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_238C195F8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_238C195C8() + 32;
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

      sub_238C1196C(a3, &qword_27DF6B118, &qword_238C1A0D0);

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

  sub_238C1196C(a3, &qword_27DF6B118, &qword_238C1A0D0);
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

unint64_t LockedCameraCaptureSession.ApplicationLaunchError.failureReason.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000042;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t LockedCameraCaptureSession.ApplicationLaunchError.hashValue.getter()
{
  v1 = *v0;
  sub_238C19868();
  MEMORY[0x23EE75380](v1);
  return sub_238C19888();
}

uint64_t sub_238C110EC()
{
  v1 = *v0;
  sub_238C19868();
  MEMORY[0x23EE75380](v1);
  return sub_238C19888();
}

uint64_t sub_238C11160()
{
  v1 = *v0;
  sub_238C19868();
  MEMORY[0x23EE75380](v1);
  return sub_238C19888();
}

unint64_t sub_238C111D0()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000042;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_238C11230(uint64_t a1)
{
  v2 = sub_238C11550();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_238C1126C(uint64_t a1)
{
  v2 = sub_238C11550();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t LockedCameraCaptureSession.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LockedCameraCaptureSession.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_238C1130C()
{
  result = qword_27DF6B120;
  if (!qword_27DF6B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockedCameraCaptureSession.ApplicationLaunchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LockedCameraCaptureSession.ApplicationLaunchError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_238C11508(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_238C11550()
{
  result = qword_27DF6B138;
  if (!qword_27DF6B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B138);
  }

  return result;
}

uint64_t sub_238C115A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238C1160C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238C11704;

  return v7(a1);
}

uint64_t sub_238C11704()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238C117FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238C119CC;

  return sub_238C1160C(a1, v5);
}

uint64_t sub_238C118B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238C10BE0;

  return sub_238C1160C(a1, v5);
}

uint64_t sub_238C1196C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

size_t sub_238C119D4(void (*a1)(void *), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A8, &qword_238C1A520);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v73 = &v58 - v11;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  v12 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_238C193E8();
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1B0, &qword_238C1A528);
  v64 = *(v62 - 8);
  v23 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v58 - v24;
  v25 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v26 = sub_238C195E8();

  v67 = a2;
  v68 = a1;
  v66 = v4;
  if (v26 >> 62)
  {
    v27 = sub_238C197D8();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  v58 = v9;
  v59 = v20;
  if (v27)
  {
    v70 = v26;
    v74[0] = MEMORY[0x277D84F90];
    result = sub_238C1791C(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v28 = v74[0];
    v31 = v70;
    v32 = v70 & 0xC000000000000001;
    v33 = v14;
    do
    {
      if (v32)
      {
        v34 = MEMORY[0x23EE752A0](v30);
      }

      else
      {
        v34 = *(v31 + 8 * v30 + 32);
      }

      v35 = v34;
      v36 = [v34 url];
      sub_238C193D8();

      v74[0] = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_238C1791C(v37 > 1, v38 + 1, 1);
        v28 = v74[0];
      }

      ++v30;
      *(v28 + 16) = v38 + 1;
      (*(v72 + 32))(v28 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v38, v22, v71);
      v31 = v70;
    }

    while (v27 != v30);
    v14 = v33;
    v26 = v70;
  }

  v40 = sub_238C17FB8(v39, v26);

  v74[0] = v28;
  v41 = v65;
  v74[4] = *(v65 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1C0, &qword_238C1A530);
  sub_238C11508(&unk_2814F3A68, &unk_27DF6B1C0, &qword_238C1A530);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260]);
  v42 = v63;
  sub_238C19598();
  v43 = *(v41 + 120);
  *(v41 + 120) = v28;

  v44 = *(v41 + 128);
  *(v41 + 128) = v40;

  if (*(v41 + 112))
  {

    v45 = v73;
    v46 = v62;
    (*(v64 + 16))(v73, v42, v62);
    v47 = *(v58 + 36);
    sub_238C11508(&qword_2814F39F8, &unk_27DF6B1B0, &qword_238C1A528);
    sub_238C19668();
    v48 = v45;
    sub_238C19678();
    v49 = *&v45[v47];
    v50 = v60;
    v51 = v61;
    v52 = v71;
    v53 = v59;
    if (v49 != v74[0])
    {
      v70 = v72 + 32;
      v65 = v72 + 16;
      v54 = (v72 + 8);
      do
      {
        v55 = sub_238C19698();
        sub_238C115A4(v56, v50, &qword_27DF6B1A0, &qword_238C1A518);
        v55(v74, 0);
        sub_238C19688();
        sub_238C18100(v50, v51);
        swift_getEnumCaseMultiPayload();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D0, &qword_238C1A538);
        (*v70)(v53, v51 + *(v57 + 48), v52);
        (*v65)(v14, v53, v52);
        swift_storeEnumTagMultiPayload();
        v68(v14);
        sub_238C180A4(v14);
        (*v54)(v53, v52);
        sub_238C19678();
        v48 = v73;
      }

      while (*&v73[v47] != v74[0]);
    }

    sub_238C1196C(v48, &qword_27DF6B1A8, &qword_238C1A520);
    return (*(v64 + 8))(v63, v46);
  }

  else
  {
    *v14 = v28;
    swift_storeEnumTagMultiPayload();
    v68(v14);
    sub_238C180A4(v14);
    result = (*(v64 + 8))(v42, v62);
    *(v41 + 112) = 1;
  }

  return result;
}

void sub_238C121A0(uint64_t a1)
{
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 128);

    sub_238C122AC(a1, v2);
    v6 = v5;

    if (*(v4 + 16) && (v7 = sub_238C17074(a1), (v8 & 1) != 0))
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      if ((v6 & 1) == 0 && ([v9 isTemporaryPath] & 1) == 0)
      {
        [v9 invalidate];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_238C122AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_238C193E8() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260]);
  v7 = 0;
  while ((sub_238C195A8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_238C123CC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_238C1240C(uint64_t (**a1)(uint64_t a1), uint64_t a2)
{
  v65 = a1;
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v60 - v5;
  v6 = sub_238C19558();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238C19578();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238C196F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_238C193E8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v2;
  if (*(v2 + 112))
  {
    v24 = *(v2 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_238C19718() & 1) == 0)
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v48 = sub_238C19518();
      __swift_project_value_buffer(v48, qword_2814F3F08);
      v73 = sub_238C194F8();
      v49 = sub_238C196A8();
      if (os_log_type_enabled(v73, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_238C0D000, v73, v49, "Already observing directory changes when beginObservingChanges called, bailing.", v50, 2u);
        MEMORY[0x23EE757D0](v50, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  v25 = objc_allocWithZone(MEMORY[0x277D243F8]);
  v26 = sub_238C195B8();
  v73 = [v25 initWithTypeIdentifier_];

  v27 = [v73 finalizedSessionsContainerURLForCurrentApplication];
  if (v27)
  {
    v28 = v27;
    sub_238C193D8();

    v64 = v23;
    sub_238C193C8();
    if (aBlock == -1)
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v56 = sub_238C19518();
      __swift_project_value_buffer(v56, qword_2814F3F08);
      v57 = sub_238C194F8();
      v58 = sub_238C196C8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_238C0D000, v57, v58, "Unable to acquire fd for session container URL", v59, 2u);
        MEMORY[0x23EE757D0](v59, -1, -1);
      }

      (*(v20 + 8))(v23, v19);
    }

    else
    {
      v61 = aBlock;
      v60 = sub_238C16ADC(0, &unk_2814F3A00, 0x277D85CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B178, &qword_238C1A4E0);
      v29 = *(v15 + 72);
      v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_238C1A2F0;
      sub_238C196E8();
      aBlock = v31;
      sub_238C18170(&unk_2814F3A10, MEMORY[0x277D85288]);
      v63 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B188, &qword_238C1A4E8);
      v62 = v19;
      sub_238C11508(&qword_2814F3A50, &qword_27DF6B188, &qword_238C1A4E8);
      sub_238C19778();
      v32 = sub_238C19708();
      (*(v15 + 8))(v18, v14);
      v33 = *(v72 + 152);
      swift_getObjectType();
      v34 = swift_allocObject();
      v34[2] = v32;
      v34[3] = v33;
      v35 = v66;
      v34[4] = v65;
      v34[5] = v35;
      v78 = sub_238C16934;
      v79 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v65 = &v76;
      v76 = sub_238C133E4;
      v77 = &block_descriptor;
      v36 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_238C19568();
      sub_238C13518();
      sub_238C19728();
      _Block_release(v36);
      v37 = v70;
      v69 = *(v69 + 8);
      (v69)(v9, v70);
      v38 = v68;
      v67 = *(v67 + 8);
      (v67)(v13, v68);

      v39 = swift_allocObject();
      *(v39 + 16) = v61;
      v78 = sub_238C16958;
      v79 = v39;
      aBlock = MEMORY[0x277D85DD0];
      v75 = 1107296256;
      v76 = sub_238C133E4;
      v77 = &block_descriptor_44;
      v40 = _Block_copy(&aBlock);
      sub_238C19568();
      sub_238C13518();
      sub_238C19738();
      _Block_release(v40);
      (v69)(v9, v37);
      (v67)(v13, v38);

      v41 = v72;
      v42 = *(v72 + 112);
      *(v72 + 112) = v32;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v43 = sub_238C19638();
      v44 = v71;
      (*(*(v43 - 8) + 56))(v71, 1, 1, v43);
      sub_238C19618();

      v45 = sub_238C19608();
      v46 = swift_allocObject();
      v47 = MEMORY[0x277D85700];
      v46[2] = v45;
      v46[3] = v47;
      v46[4] = v41;
      sub_238C10CD4(0, 0, v44, &unk_238C1A4F8, v46);
      swift_unknownObjectRelease();

      (*(v63 + 8))(v64, v62);
    }

    return;
  }

  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v51 = sub_238C19518();
  __swift_project_value_buffer(v51, qword_2814F3F08);
  v52 = sub_238C194F8();
  v53 = sub_238C196C8();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_238C0D000, v52, v53, "beginObservingChanges: Unable to build sessions container URL for current application.", v54, 2u);
    MEMORY[0x23EE757D0](v54, -1, -1);
  }

LABEL_17:
  v55 = v73;
}

uint64_t sub_238C12E6C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = sub_238C19528();
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v4 = sub_238C19518();
    __swift_project_value_buffer(v4, qword_2814F3F08);
    v5 = sub_238C194F8();
    v6 = sub_238C196C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_238C0D000, v5, v6, "unable to get fs path for sessionContainerURL", v7, 2u);
      MEMORY[0x23EE757D0](v7, -1, -1);
    }

    result = 0xFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

uint64_t sub_238C12F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_238C196F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - v17;
  swift_getObjectType();
  sub_238C19758();
  sub_238C196E8();
  sub_238C18170(&unk_2814F3A10, MEMORY[0x277D85288]);
  v19 = sub_238C19768();
  v20 = *(v12 + 8);
  v20(v16, v11);
  if (v19)
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v21 = sub_238C19518();
    __swift_project_value_buffer(v21, qword_2814F3F08);
    v22 = sub_238C194F8();
    v23 = sub_238C196D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v20;
      v25 = a2;
      v26 = a4;
      v27 = a3;
      v28 = v24;
      *v24 = 0;
      _os_log_impl(&dword_238C0D000, v22, v23, "Write event received, refreshing session URLs", v24, 2u);
      v29 = v28;
      a3 = v27;
      a4 = v26;
      a2 = v25;
      v20 = v38;
      MEMORY[0x23EE757D0](v29, -1, -1);
    }

    v30 = sub_238C19638();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a2;
    v31[5] = a3;
    v31[6] = a4;

    sub_238C10CD4(0, 0, v10, &unk_238C1A510, v31);
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v32 = sub_238C19518();
    __swift_project_value_buffer(v32, qword_2814F3F08);
    v33 = sub_238C194F8();
    v34 = sub_238C196B8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_238C0D000, v33, v34, "Event received, was not a write (or self == nil), bailing", v35, 2u);
      MEMORY[0x23EE757D0](v35, -1, -1);
    }
  }

  return (v20)(v18, v11);
}

uint64_t sub_238C1335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_238C13380);
}

uint64_t sub_238C13380()
{
  v1 = *(v0 + 16);
  sub_238C119D4(*(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238C133E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_238C13428(int a1)
{
  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v2 = sub_238C19518();
  __swift_project_value_buffer(v2, qword_2814F3F08);
  v3 = sub_238C194F8();
  v4 = sub_238C196D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238C0D000, v3, v4, "DispatchSource cancelled, closing file handle", v5, 2u);
    MEMORY[0x23EE757D0](v5, -1, -1);
  }

  return close(a1);
}

uint64_t sub_238C13518()
{
  sub_238C19558();
  sub_238C18170(&qword_2814F3A88, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B190, &qword_238C1A500);
  sub_238C11508(&unk_2814F3A58, &unk_27DF6B190, &qword_238C1A500);
  return sub_238C19778();
}

uint64_t sub_238C13604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238C19618();
  v4[3] = sub_238C19608();
  v4[4] = sub_238C195F8();
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_238C1369C);
}

uint64_t sub_238C1369C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 applicationState];

  if (v2)
  {
    v3 = v0[3];

    v4 = v0[1];

    return v4();
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v6 = sub_238C19518();
    __swift_project_value_buffer(v6, qword_2814F3F08);
    v7 = sub_238C194F8();
    v8 = sub_238C196D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_238C0D000, v7, v8, "Application is foreground, begin file system observation", v9, 2u);
      MEMORY[0x23EE757D0](v9, -1, -1);
    }

    v10 = v0[2];

    return MEMORY[0x2822009F8](sub_238C13834);
  }
}

uint64_t sub_238C13834()
{
  v1 = v0[2];
  sub_238C13918();
  v2 = v0[4];
  v3 = v0[5];

  return MEMORY[0x2822009F8](sub_238C13898);
}

uint64_t sub_238C13898()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

void sub_238C13918()
{
  if (*(v0 + 112))
  {
    v1 = v0;
    v2 = *(v0 + 112);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_238C19718() & 1) != 0 || (*(v0 + 144))
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v3 = sub_238C19518();
      __swift_project_value_buffer(v3, qword_2814F3F08);
      swift_unknownObjectRetain();

      oslog = sub_238C194F8();
      v4 = sub_238C196D8();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 67109376;
        *(v5 + 4) = *(v0 + 144);

        *(v5 + 8) = 1024;
        *(v5 + 10) = sub_238C19718() & 1;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_238C0D000, oslog, v4, "resumeObservation: Unable to resume file system observation. Already observing: %{BOOL}d, cancelled: %{BOOL}d", v5, 0xEu);
        MEMORY[0x23EE757D0](v5, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v6 = sub_238C19518();
      __swift_project_value_buffer(v6, qword_2814F3F08);
      v7 = sub_238C194F8();
      v8 = sub_238C196D8();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_238C0D000, v7, v8, "Resuming file system observation", v9, 2u);
        MEMORY[0x23EE757D0](v9, -1, -1);
      }

      sub_238C19748();
      swift_unknownObjectRelease();
      *(v1 + 144) = 1;
    }
  }
}

void sub_238C13BC4(const char *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v6 = sub_238C19518();
  __swift_project_value_buffer(v6, qword_2814F3F08);
  v7 = sub_238C194F8();
  v8 = sub_238C196D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238C0D000, v7, v8, a1, v9, 2u);
    MEMORY[0x23EE757D0](v9, -1, -1);
  }

  if (*(v5 + 112))
  {
    v10 = *(v5 + 112);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    a2(ObjectType);
    swift_unknownObjectRelease();
  }

  *(v5 + 144) = 0;
}

uint64_t sub_238C13CE0()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  v2 = v0[15];
  swift_unknownObjectRelease();
  v3 = v0[16];
  swift_unknownObjectRelease();
  v4 = v0[17];
  swift_unknownObjectRelease();
  v5 = v0[19];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

size_t sub_238C13D38()
{
  locked = type metadata accessor for LockedCameraCaptureManager(0);
  v1 = *(locked + 48);
  v2 = *(locked + 52);
  v3 = swift_allocObject();
  result = sub_238C14014();
  qword_2814F3BA0 = v3;
  return result;
}

uint64_t static LockedCameraCaptureManager.shared.getter()
{
  if (qword_2814F3B90 != -1)
  {
    swift_once();
  }
}

uint64_t LockedCameraCaptureManager.sessionContentURLs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F3F20;
  v6 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v7));
  sub_238C115A4(v5 + v6, v4, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v5 + v7));
  v8 = sub_238C193E8();
  LODWORD(v5) = (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_238C1196C(v4, &qword_27DF6B098, "h\n");
  if (v5 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = *(v0 + 32);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);

  os_unfair_lock_unlock((v9 + 24));
  return v10;
}

uint64_t LockedCameraCaptureManager.sessionContentUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

size_t sub_238C14014()
{
  v1 = v0;
  v2 = sub_238C193E8();
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v2);
  v69 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B200, &qword_238C1A580);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  v13 = *(v67 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v67);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver] = 0;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver] = 0;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver] = 0;
  type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(v9 + 104))(v12, *MEMORY[0x277D85778], v8);
  sub_238C19648();
  (*(v9 + 8))(v12, v8);
  v59 = v21;
  v60 = v18;
  v22 = *(v18 + 16);
  v61 = v17;
  v23 = v17;
  v24 = v67;
  v22(&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream], v21, v23);
  v63 = v13;
  v64 = v1;
  v25 = *(v13 + 16);
  v62 = v16;
  v25(&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesContinuation], v16, v24);
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v26 = qword_2814F3F20;
  v27 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v28));
  v29 = v26 + v27;
  v30 = v68;
  sub_238C115A4(v29, v68, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v26 + v28));
  v31 = v65;
  LODWORD(v26) = (*(v65 + 48))(v30, 1, v66);
  sub_238C1196C(v30, &qword_27DF6B098, "h\n");
  if (v26 != 1)
  {
    type metadata accessor for CaptureManagerURLs();
    v48 = swift_allocObject();
    v49 = 0;
    v50 = MEMORY[0x277D84F98];
    v35 = MEMORY[0x277D84F90];
    v52 = v62;
    v51 = v63;
    v53 = v60;
    v54 = v24;
LABEL_18:
    v56 = v64;
    swift_defaultActor_initialize();
    *(v48 + 112) = v49;
    *(v48 + 120) = v35;
    *(v48 + 128) = v50;
    *(v56 + 2) = v48;
    type metadata accessor for CaptureManagerFSObserving();
    v57 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v57 + 112) = 0u;
    *(v57 + 128) = 0u;
    *(v57 + 152) = v48;
    *(v57 + 144) = 0;
    *(v56 + 3) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B208, &qword_238C1A588);
    v58 = swift_allocObject();
    *(v58 + 24) = 0;
    *(v58 + 16) = v35;
    *(v56 + 4) = v58;
    sub_238C14BB0(&unk_284B881C0, &unk_238C1A5B0, &unk_284B881E8, &unk_238C1A5C0);
    sub_238C147CC();
    (*(v51 + 8))(v52, v54);
    (*(v53 + 8))(v59, v61);
    return v56;
  }

  v32 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v33 = sub_238C195E8();

  if (v33 >> 62)
  {
    v34 = sub_238C197D8();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  if (!v34)
  {
LABEL_17:

    v50 = sub_238C17FB8(v55, v33);

    type metadata accessor for CaptureManagerURLs();
    v48 = swift_allocObject();

    v49 = 1;
    v54 = v67;
    v52 = v62;
    v51 = v63;
    v53 = v60;
    goto LABEL_18;
  }

  v70 = MEMORY[0x277D84F90];
  result = sub_238C1791C(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v69;
    v35 = v70;
    v39 = v33;
    v68 = v33 & 0xC000000000000001;
    v40 = v31;
    v41 = v66;
    v42 = v39;
    do
    {
      if (v68)
      {
        v43 = MEMORY[0x23EE752A0](v37);
      }

      else
      {
        v43 = *(v39 + 8 * v37 + 32);
      }

      v44 = v43;
      v45 = [v43 url];
      sub_238C193D8();

      v70 = v35;
      v47 = *(v35 + 16);
      v46 = *(v35 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_238C1791C(v46 > 1, v47 + 1, 1);
        v41 = v66;
        v35 = v70;
      }

      ++v37;
      *(v35 + 16) = v47 + 1;
      (*(v40 + 32))(v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47, v38, v41);
      v39 = v42;
    }

    while (v34 != v37);
    v33 = v42;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_238C147CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v9 = qword_2814F3F20;
  v10 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v11));
  sub_238C115A4(v9 + v10, v8, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v9 + v11));
  v12 = sub_238C193E8();
  LODWORD(v9) = (*(*(v12 - 8) + 48))(v8, 1, v12);
  result = sub_238C1196C(v8, &qword_27DF6B098, "h\n");
  if (v9 == 1)
  {
    v14 = sub_238C19638();
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v0;

    sub_238C10CD4(0, 0, v4, &unk_238C1A598, v15);
  }

  return result;
}

char *LockedCameraCaptureManager.deinit()
{
  sub_238C14BB0(&unk_284B88148, &unk_238C1A568, &unk_284B88170, &unk_238C1A578);
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *&v0[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver];
  swift_unknownObjectRelease();
  v9 = *&v0[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver];
  swift_unknownObjectRelease();
  v10 = *&v0[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_238C14BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F3F20;
  v16 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v17 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v17));
  sub_238C115A4(v15 + v16, v14, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v15 + v17));
  v18 = sub_238C193E8();
  LODWORD(v15) = (*(*(v18 - 8) + 48))(v14, 1, v18);
  result = sub_238C1196C(v14, &qword_27DF6B098, "h\n");
  if (v15 == 1)
  {
    v20 = sub_238C19638();
    v21 = *(*(v20 - 8) + 56);
    v21(v10, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v6;

    sub_238C10CD4(0, 0, v10, a2, v22);

    v21(v10, 1, 1, v20);
    sub_238C19618();

    v23 = sub_238C19608();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v6;
    sub_238C10CD4(0, 0, v10, v27, v24);
  }

  return result;
}

uint64_t LockedCameraCaptureManager.__deallocating_deinit()
{
  LockedCameraCaptureManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_238C14F14()
{
  *(v0 + 24) = *(*(v0 + 16) + 16);

  return MEMORY[0x2822009F8](sub_238C14F88);
}

uint64_t sub_238C14F88()
{
  sub_238C183D8(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_238C14FF4(uint64_t a1)
{
  v3 = sub_238C193E8();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v34 - v7;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  v9 = *(*(locked - 8) + 64);
  v10 = MEMORY[0x28223BE20](locked);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B210, &qword_238C1A5A0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  sub_238C18BA4(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  sub_238C19658();
  (*(v16 + 8))(v19, v15);
  sub_238C18BA4(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v37;
      v21 = v38;
      v23 = v35;
      v24 = (*(v37 + 32))(v35, v12, v38);
      v25 = *(v1 + 32);
      MEMORY[0x28223BE20](v24);
      *(&v34 - 2) = v23;
      os_unfair_lock_lock((v25 + 24));
      sub_238C18C24((v25 + 16));
      os_unfair_lock_unlock((v25 + 24));
      return (*(v22 + 8))(v23, v21);
    }

    else
    {
      v29 = v36;
      v30 = v37;
      v31 = v38;
      v32 = (*(v37 + 32))(v36, v12, v38);
      v33 = *(v1 + 32);
      MEMORY[0x28223BE20](v32);
      *(&v34 - 2) = v29;
      os_unfair_lock_lock(v33 + 6);
      sub_238C18C08(&v33[4]);
      os_unfair_lock_unlock(v33 + 6);
      return (*(v30 + 8))(v29, v31);
    }
  }

  else
  {
    v27 = *v12;
    v28 = *(v1 + 32);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v34 - 2) = v27;
    os_unfair_lock_lock((v28 + 24));
    sub_238C18C40((v28 + 16));
    os_unfair_lock_unlock((v28 + 24));
  }
}

uint64_t sub_238C153AC(void **a1, uint64_t a2)
{
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_238C1675C(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_238C1675C(v10 > 1, v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}

uint64_t sub_238C15524(uint64_t a1, uint64_t a2)
{
  v5[2] = a2;
  result = sub_238C17B14(sub_238C18C88, v5);
  v4 = *(*a1 + 16);
  if (v4 >= result)
  {
    return sub_238C18E00(result, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_238C155AC()
{
  *(v0 + 24) = *(*(v0 + 16) + 24);

  return MEMORY[0x2822009F8](sub_238C15620);
}

uint64_t sub_238C15620()
{
  v1 = v0[3];
  sub_238C1240C(sub_238C1932C, v0[2]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_238C156A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_238C19618();
  *(v4 + 72) = sub_238C19608();
  sub_238C195F8();

  return MEMORY[0x2822009F8](sub_238C15738);
}

uint64_t sub_238C15738()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = *MEMORY[0x277D76660];
  v6 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19028;
  v0[7] = v6;
  v41 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_78;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  v9 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v7];
  _Block_release(v7);

  v10 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver;
  v11 = *(v2 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver);
    swift_unknownObjectRetain();
    v13 = [v3 defaultCenter];
    [v13 removeObserver_];

    swift_unknownObjectRelease();
    v14 = *(v2 + v10);
  }

  v15 = v0[8];
  *(v2 + v10) = v9;
  swift_unknownObjectRelease();
  v16 = [v3 defaultCenter];
  v17 = *MEMORY[0x277D76758];
  v18 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19060;
  v0[7] = v18;
  v0[2] = v41;
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_82;
  v19 = _Block_copy(v0 + 2);
  v20 = v0[7];

  v21 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v19];
  _Block_release(v19);

  v22 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver;
  v23 = *(v15 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver);
  if (v23)
  {
    v24 = *(v15 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver);
    swift_unknownObjectRetain();
    v25 = [v3 defaultCenter];
    [v25 removeObserver_];

    swift_unknownObjectRelease();
    v26 = *(v15 + v22);
  }

  v27 = v0[8];
  *(v15 + v22) = v21;
  swift_unknownObjectRelease();
  v28 = [v3 defaultCenter];
  v29 = *MEMORY[0x277D76648];
  v30 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19098;
  v0[7] = v30;
  v0[2] = v41;
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_86;
  v31 = _Block_copy(v0 + 2);
  v32 = v0[7];

  v33 = [v28 addObserverForName:v29 object:0 queue:0 usingBlock:v31];
  _Block_release(v31);

  v34 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver;
  v35 = *(v27 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver);
  if (v35)
  {
    v36 = *(v27 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver);
    swift_unknownObjectRetain();
    v37 = [v3 defaultCenter];
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    v38 = *(v27 + v34);
  }

  *(v27 + v34) = v33;
  swift_unknownObjectRelease();
  v39 = v0[1];

  return v39();
}

uint64_t sub_238C15BBC()
{
  v1 = *(v0 + 24);
  sub_238C138F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238C15C1C(uint64_t a1)
{
  v2 = sub_238C19368();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_238C19358();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_238C15D54()
{
  v1 = *(v0 + 24);
  sub_238C13918();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238C15DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = sub_238C19638();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_238C10CD4(0, 0, v8, a4, v12);
  }

  return result;
}

uint64_t sub_238C15F58()
{
  v1 = *(v0 + 24);
  sub_238C13BA4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238C15FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_238C19618();
  *(v4 + 24) = sub_238C19608();
  sub_238C195F8();

  return MEMORY[0x2822009F8](sub_238C16050);
}

uint64_t sub_238C16050()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver;
  v4 = *(v2 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver_];

    swift_unknownObjectRelease();
    v7 = *(v2 + v3);
  }

  v8 = v0[2];
  *(v2 + v3) = 0;
  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver;
  v10 = *(v8 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver);
  if (v10)
  {
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v11 defaultCenter];
    [v12 removeObserver_];

    swift_unknownObjectRelease();
    v13 = *(v8 + v9);
  }

  v14 = v0[2];
  *(v8 + v9) = 0;
  swift_unknownObjectRelease();
  v15 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver;
  v16 = *(v14 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver);
  if (v16)
  {
    v17 = objc_opt_self();
    swift_unknownObjectRetain();
    v18 = [v17 defaultCenter];
    [v18 removeObserver_];

    swift_unknownObjectRelease();
    v19 = *(v14 + v15);
  }

  *(v14 + v15) = 0;
  swift_unknownObjectRelease();
  v20 = v0[1];

  return v20();
}

uint64_t LockedCameraCaptureManager.invalidateSessionContent(at:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C16234);
}

uint64_t sub_238C16258()
{
  v1 = v0[4];
  sub_238C121A0(v0[2]);
  v2 = v0[1];

  return v2();
}

void sub_238C162E4(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 *a1];
}

void sub_238C163BC()
{
  sub_238C16574(319, &qword_2814F3A40, type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_238C16574(319, &qword_2814F3A48, type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238C1653C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238C16574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238C16628()
{
  sub_238C1669C();
  if (v0 <= 0x3F)
  {
    sub_238C16714();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238C1669C()
{
  if (!qword_2814F3A80)
  {
    sub_238C16574(0, &qword_2814F3A78, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_2814F3A80);
    }
  }
}

void sub_238C16714()
{
  if (!qword_2814F3F00)
  {
    v0 = sub_238C193E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F3F00);
    }
  }
}

size_t sub_238C1675C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1F8, &qword_238C1A558);
  v10 = *(sub_238C193E8() - 8);
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
  v15 = *(sub_238C193E8() - 8);
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238C16960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C10BE0;

  return sub_238C13604(a1, v4, v5, v6);
}

uint64_t sub_238C16A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238C119CC;

  return sub_238C1335C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238C16ADC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_238C16B24(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v57 = a4;
  v7 = sub_238C193E8();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v58 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1E0, &unk_238C1A548);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = v45 - v15;
  v16 = *(a1 + 16);

  v54 = a2;

  v49 = v16;
  if (!v16)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v17 = 0;
  v18 = v54 & 0xFFFFFFFFFFFFFF8;
  if (v54 < 0)
  {
    v19 = v54;
  }

  else
  {
    v19 = v54 & 0xFFFFFFFFFFFFFF8;
  }

  v45[1] = v19;
  v47 = a1;
  v48 = v54 & 0xC000000000000001;
  v20 = (v53 + 32);
  v50 = v54 >> 62;
  v51 = v53 + 16;
  v46 = v54 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v17 >= *(a1 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_238C19818();
      __break(1u);
      goto LABEL_36;
    }

    v21 = *(v53 + 72);
    (*(v53 + 16))(v12, a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + v21 * v17, v7);
    if (v50)
    {
      if (v17 == sub_238C197D8())
      {
LABEL_29:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (*(v53 + 8))(v12, v7);
        return;
      }
    }

    else if (v17 == *(v18 + 16))
    {
      goto LABEL_29;
    }

    v55 = v21;
    if (v48)
    {
      v22 = MEMORY[0x23EE752A0](v17, v54);
    }

    else
    {
      if (v17 >= *(v18 + 16))
      {
        goto LABEL_33;
      }

      v22 = *(v54 + 8 * v17 + 32);
    }

    v56 = v22;
    v23 = *v20;
    v24 = v52;
    v25 = v12;
    (*v20)(v52, v12, v7);
    v26 = v58;
    v27 = v7;
    v23(v58, v24, v7);
    v28 = *v57;
    v30 = sub_238C17074(v26);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_32;
    }

    v34 = v29;
    if (v28[3] < v33)
    {
      break;
    }

    if (a3)
    {
      if (v29)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_238C1710C();
      if (v34)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v39 = v58;
    v40 = *v57;
    *(*v57 + 8 * (v30 >> 6) + 64) |= 1 << v30;
    v7 = v27;
    v23((v40[6] + v30 * v55), v39, v27);
    *(v40[7] + 8 * v30) = v56;
    v41 = v40[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_34;
    }

    ++v17;
    v40[2] = v43;
    a3 = 1;
    v18 = v46;
    a1 = v47;
    v12 = v25;
    if (v49 == v17)
    {
      goto LABEL_28;
    }
  }

  v35 = v57;
  sub_238C17380(v33, a3 & 1);
  v36 = *v35;
  v37 = sub_238C17074(v58);
  if ((v34 & 1) != (v38 & 1))
  {
    goto LABEL_35;
  }

  v30 = v37;
  if ((v34 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_26:
  v44 = swift_allocError();
  swift_willThrow();
  v61 = v44;
  MEMORY[0x23EE756A0](v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B148, &qword_238C1A2D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v53 + 8))(v58, v27);

    return;
  }

LABEL_36:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_238C19788();
  MEMORY[0x23EE750E0](0xD00000000000001BLL, 0x8000000238C1A9F0);
  sub_238C197A8();
  MEMORY[0x23EE750E0](39, 0xE100000000000000);
  sub_238C197C8();
  __break(1u);
}

unint64_t sub_238C17074(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_238C193E8();
  sub_238C18170(&qword_27DF6B1F0, MEMORY[0x277CC9260]);
  v5 = sub_238C19588();

  return sub_238C1775C(a1, v5);
}

char *sub_238C1710C()
{
  v1 = v0;
  v32 = sub_238C193E8();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
  v4 = *v0;
  v5 = sub_238C197E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

uint64_t sub_238C17380(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_238C193E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
  v43 = a2;
  result = sub_238C197F8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
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
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_238C18170(&qword_27DF6B1F0, MEMORY[0x277CC9260]);
      result = sub_238C19588();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
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
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
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

unint64_t sub_238C1775C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
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
      sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260]);
      v16 = sub_238C195A8();
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

size_t sub_238C1791C(size_t a1, int64_t a2, char a3)
{
  result = sub_238C1793C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_238C1793C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1F8, &qword_238C1A558);
  v10 = *(sub_238C193E8() - 8);
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
  v15 = *(sub_238C193E8() - 8);
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

uint64_t sub_238C17B14(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_238C193E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_238C17EB8(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v10;
    v43 = v13;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_238C17FA4(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238C17EB8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_238C193E8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_238C17FB8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_238C197D8();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
    v6 = sub_238C19808();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_238C16B24(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_238C180A4(uint64_t a1)
{
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(*(locked - 8) + 8))(a1, locked);
  return a1;
}

uint64_t sub_238C18100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238C18170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238C181BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15F14(a1, v4, v5, v6);
}

uint64_t sub_238C18270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15FB8(a1, v4, v5, v6);
}

uint64_t sub_238C18324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C14EF4(a1, v4, v5, v6);
}

size_t sub_238C183D8(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v3 = sub_238C193E8();
  v73 = *(v3 - 8);
  v4 = *(v73 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  v11 = *(*(locked - 8) + 64);
  MEMORY[0x28223BE20](locked);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v59 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A8, &qword_238C1A520);
  v19 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v74 = &v59 - v20;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1B0, &qword_238C1A528);
  v66 = *(v63 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v59 - v22;
  v23 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v24 = sub_238C195E8();

  v25 = v24;
  v70 = locked;
  v71 = a2;
  v62 = v9;
  v64 = v13;
  v69 = v14;
  if (v24 >> 62)
  {
    v26 = sub_238C197D8();
  }

  else
  {
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  v72 = v3;
  if (v26)
  {
    v75[0] = MEMORY[0x277D84F90];
    result = sub_238C1791C(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = 0;
    v27 = v75[0];
    v30 = v24;
    v31 = v24 & 0xC000000000000001;
    v32 = v24;
    do
    {
      if (v31)
      {
        v33 = MEMORY[0x23EE752A0](v29, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v29 + 32);
      }

      v34 = v33;
      v35 = [v33 url];
      sub_238C193D8();

      v75[0] = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_238C1791C(v36 > 1, v37 + 1, 1);
        v27 = v75[0];
      }

      ++v29;
      *(v27 + 16) = v37 + 1;
      (*(v73 + 32))(v27 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v37, v7, v72);
      v30 = v32;
    }

    while (v26 != v29);
    v25 = v32;
  }

  v39 = sub_238C17FB8(v38, v25);

  v75[0] = v27;
  v40 = v68;
  v75[4] = *(v68 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1C0, &qword_238C1A530);
  sub_238C11508(&unk_2814F3A68, &unk_27DF6B1C0, &qword_238C1A530);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260]);
  v41 = v65;
  sub_238C19598();
  v42 = *(v40 + 120);
  *(v40 + 120) = v27;

  v43 = *(v40 + 128);
  *(v40 + 128) = v39;
  v44 = v40;

  v45 = v63;
  if (*(v40 + 112) == 1)
  {

    v46 = v74;
    (*(v66 + 16))(v74, v41, v45);
    v47 = *(v67 + 36);
    sub_238C11508(&qword_2814F39F8, &unk_27DF6B1B0, &qword_238C1A528);
    sub_238C19668();
    v48 = v46;
    sub_238C19678();
    v49 = v72;
    v51 = v61;
    v50 = v62;
    v52 = v64;
    v53 = v60;
    if (*&v46[v47] != v75[0])
    {
      v67 = v73 + 16;
      v68 = v73 + 32;
      v54 = (v73 + 8);
      do
      {
        v55 = sub_238C19698();
        sub_238C115A4(v56, v53, &qword_27DF6B1A0, &qword_238C1A518);
        v55(v75, 0);
        sub_238C19688();
        sub_238C18100(v53, v51);
        swift_getEnumCaseMultiPayload();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D0, &qword_238C1A538);
        (*v68)(v50, v51 + *(v57 + 48), v49);
        (*v67)(v52, v50, v49);
        swift_storeEnumTagMultiPayload();
        sub_238C14FF4(v52);
        sub_238C180A4(v52);
        (*v54)(v50, v49);
        sub_238C19678();
        v48 = v74;
      }

      while (*&v74[v47] != v75[0]);
    }

    sub_238C1196C(v48, &qword_27DF6B1A8, &qword_238C1A520);
    return (*(v66 + 8))(v65, v45);
  }

  else
  {
    v58 = v64;
    *v64 = v27;
    swift_storeEnumTagMultiPayload();
    sub_238C14FF4(v58);
    sub_238C180A4(v58);
    result = (*(v66 + 8))(v41, v45);
    *(v44 + 112) = 1;
  }

  return result;
}

uint64_t sub_238C18BA4(uint64_t a1, uint64_t a2)
{
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(*(locked - 8) + 16))(a2, a1, locked);
  return a2;
}

uint64_t sub_238C18C40(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
}

unint64_t sub_238C18CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_238C193E8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_238C18E00(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_238C1675C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_238C18CB8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_238C18EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C1558C(a1, v4, v5, v6);
}

uint64_t sub_238C18F74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C156A0(a1, v4, v5, v6);
}

uint64_t sub_238C190D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15ED0(a1, v4, v5, v6);
}

uint64_t sub_238C19184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15D10(a1, v4, v5, v6);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238C19278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15B78(a1, v4, v5, v6);
}