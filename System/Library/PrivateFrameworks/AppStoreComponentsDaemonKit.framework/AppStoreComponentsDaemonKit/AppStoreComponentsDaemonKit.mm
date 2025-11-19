uint64_t sub_22262B370(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v7 = MEMORY[0x277D21E70];
  *(a4 + 32) = a2;
  *(a4 + 40) = v7;
  *(a4 + 16) = a1;
  *(a4 + 24) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277D225F0]);
  v9 = a1;
  v10 = v5;
  *(a4 + 48) = [v8 init];
  *(a4 + 56) = sub_222697664(v9);
  *(a4 + 64) = v11;
  *(a4 + 72) = v12 & 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138F0, &qword_222742C88);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_222737F9C();
  *(a4 + 80) = v16;
  v20[4] = sub_22269F824;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_22269F82C;
  v20[3] = &block_descriptor_6;
  v17 = _Block_copy(v20);

  LODWORD(v5) = ASCRegisterForRebootstrapQANotification(v17);
  _Block_release(v17);
  *(a4 + 76) = v5;
  sub_22262B778();
  [v10 addObserver:a4 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];

  v18 = sub_2227374CC();
  [v10 addObserver:a4 selector:sel_appDistributorsDidChange_ name:v18 object:0];

  return a4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ASCRegisterForRebootstrapQANotification(void *a1)
{
  v1 = a1;
  if (os_variant_has_internal_content())
  {
    out_token = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __ASCRegisterForRebootstrapQANotification_block_invoke;
    v6[3] = &unk_2784B19C8;
    v7 = v1;
    v2 = notify_register_dispatch("com.apple.appstorecomponentsd.rebootstrap-for-qa", &out_token, MEMORY[0x277D85CD0], v6);
    if (v2)
    {
      v3 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCRegisterForRebootstrapQANotification_cold_1(v3);
      }

      v4 = 0xFFFFFFFFLL;
      out_token = -1;
    }

    else
    {
      v4 = out_token;
    }
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_22262B778()
{
  v1 = v0;
  v2 = sub_222737C4C();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222737C9C();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v56 = 0xD000000000000023;
  v57 = 0x8000000222748EE0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013760, &unk_2227428F0);
  v13 = ObjectType;
  sub_22262BED4(qword_281313478, &qword_27D013760, &unk_2227428F0);
  sub_2227382DC();
  if (v51 == 1)
  {
    v14 = *(v0 + 64);
    v15 = *(v0 + 72);
    aBlock = *(v0 + 56);
    v51 = v14;
    LOBYTE(v52) = v15;
    v56 = 0xD000000000000023;
    v57 = 0x8000000222748EE0;

    sub_2227382EC();
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v16 = sub_222738F6C();
    __swift_project_value_buffer(v16, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v17 = *(sub_2227381FC() - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
LABEL_18:
    sub_22273813C();
    sub_222738C5C();
  }

  v43 = 0x8000000222748EE0;
  v44 = v12;
  v45 = v2;
  v20 = v52;
  v21 = *(v1 + 64);
  v22 = *(v1 + 72);
  if (v21)
  {
    if (!v51)
    {
      goto LABEL_19;
    }

    if (*(v1 + 56) != aBlock || v21 != v51)
    {
      v23 = aBlock;
      v24 = *(v1 + 56);
      v25 = v51;
      v26 = *(v1 + 64);
      LODWORD(v41) = sub_222739B4C();
      v27 = v23;
      v13 = ObjectType;
      sub_22262CBEC(v27, v25);
      if (v41 & 1) == 0 || ((v22 ^ v20))
      {
        goto LABEL_19;
      }

LABEL_15:
      if (qword_281312E18 != -1)
      {
        swift_once();
      }

      v28 = sub_222738F6C();
      __swift_project_value_buffer(v28, qword_281315AA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v29 = *(sub_2227381FC() - 8);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      *(swift_allocObject() + 16) = xmmword_2227413C0;
      sub_22273813C();
      goto LABEL_18;
    }
  }

  else if (v51)
  {
    sub_22262CBEC(aBlock, v51);
    goto LABEL_19;
  }

  sub_22262CBEC(aBlock, v51);
  if (((v22 ^ v20) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  v42 = v13;
  sub_22262D828();
  v41 = sub_22273955C();
  v33 = *(v1 + 80);
  v54 = sub_22269773C;
  v55 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_22269F82C;
  v53 = &block_descriptor_5;
  v34 = _Block_copy(&aBlock);

  sub_222737C7C();
  aBlock = MEMORY[0x277D84F90];
  sub_222697744();
  v40 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
  sub_22262BED4(&qword_281312DE0, &qword_27D013A10, &qword_222742900);
  v35 = v46;
  v36 = v45;
  sub_2227397BC();
  v37 = v41;
  MEMORY[0x223DBE8C0](0, v8, v35, v34);
  _Block_release(v34);

  (*(v49 + 8))(v35, v36);
  (*(v47 + 8))(v8, v48);
  v38 = *(v1 + 64);
  v39 = *(v1 + 72);
  aBlock = *(v1 + 56);
  v51 = v38;
  LOBYTE(v52) = v39;
  v56 = 0xD000000000000023;
  v57 = v43;

  return sub_2227382EC();
}

uint64_t sub_22262BE8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22262BED4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_22262BF38()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_22262BF70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22262BFCC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013750, &qword_2227428E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22262C284();
  sub_222739CEC();
  if (!v1)
  {
    v10[15] = 0;
    v8 = sub_222739AAC();
    v10[14] = 1;
    sub_222739ABC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_22262C194()
{
  result = qword_2813136D8;
  if (!qword_2813136D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813136D8);
  }

  return result;
}

unint64_t sub_22262C1EC()
{
  result = qword_2813136E0;
  if (!qword_2813136E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813136E0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22262C284()
{
  result = qword_2813136E8[0];
  if (!qword_2813136E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813136E8);
  }

  return result;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t storeEnumTagSinglePayload for Feature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22262C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(*(sub_2227381BC() - 8) + 64);
  v7 = (MEMORY[0x28223BE20])();
  MEMORY[0x28223BE20](v7);
  sub_22262BF70(a1, v19);
  if (swift_dynamicCast())
  {
    v8 = sub_22273719C();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_22273718C();
    sub_22273717C();
    (*(*(a2 - 8) + 56))(a3, 0, 1, a2);

    return sub_22262CB28(v17, v18);
  }

  else
  {
    v16 = a3;
    if (qword_281312E18 != -1)
    {
      swift_once();
    }

    v11 = sub_222738F6C();
    __swift_project_value_buffer(v11, qword_281315AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v12 = *(sub_2227381FC() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v19[3] = swift_getMetatypeMetadata();
    v19[0] = a2;
    sub_22273816C();
    sub_222672BA0(v19);
    sub_22273819C();
    sub_2227381CC();
    sub_2227381AC();
    sub_22273819C();
    sub_22262BF70(a1, v19);
    sub_22273815C();
    sub_222672BA0(v19);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();

    return (*(*(a2 - 8) + 56))(v16, 1, 1, a2);
  }
}

uint64_t sub_22262CA08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22262BFCC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_22262CA3C()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6F726665726F7473;
  }

  *v0;
  return result;
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

uint64_t sub_22262CAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22262CB28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22262CB7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22262CBEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_22262CC24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_222738F4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_222738F6C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_281315A90);
  (*(v4 + 16))(v7, v9, v3);
  return sub_222738F5C();
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

uint64_t sub_22262CE10()
{
  v0 = sub_222738F4C();
  __swift_allocate_value_buffer(v0, qword_281315A90);
  __swift_project_value_buffer(v0, qword_281315A90);
  return sub_222738F3C();
}

char *sub_22262CE74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138E8, &qword_222742C80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20[-1] - v6;
  v8 = [objc_opt_self() currentProcess];
  [v8 setAccountMediaType_];
  v9 = [objc_opt_self() ams:v8 sharedAccountStoreForClient:?];

  sub_22273865C();
  v10 = sub_22273864C();
  v11 = [objc_opt_self() defaultCenter];
  type metadata accessor for RebootstrapTrigger();
  v12 = swift_allocObject();
  v13 = sub_22262B370(v9, v10, v11, v12);

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_rebootstrapTrigger] = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock] = v14;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState] = 0xC000000000000000;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, sel_init);
  v16 = *(*&v15[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_rebootstrapTrigger] + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0138F0, &qword_222742C88);
  sub_22262D128();
  v17 = v15;

  sub_22273831C();
  sub_22273832C();

  __swift_destroy_boxed_opaque_existential_1(v20);
  (*(v4 + 8))(v7, v3);

  return v17;
}

unint64_t sub_22262D128()
{
  result = qword_281312FD8;
  if (!qword_281312FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0138F0, &qword_222742C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312FD8);
  }

  return result;
}

char *sub_22262D18C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive;
  *&v0[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_keepAlive] = 0;
  ASCDumpEnvVars("Startup");
  [objc_opt_self() setDefaultMediaTypeForCurrentProcess_];
  *&v0[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_dialogHandler] = [objc_allocWithZone(type metadata accessor for CommerceDialogHandler()) init];
  v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v5 = sub_22273916C();
  v6 = [v4 initWithMachServiceName_];

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener] = v6;
  v7 = objc_allocWithZone(MEMORY[0x277CBA598]);
  v8 = sub_22273916C();
  v9 = [v7 initWithBundleIdentifier_];

  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_intentsListener] = v9;
  type metadata accessor for XPCConnectionOwner();
  v10 = swift_allocObject();
  v10[5] = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v12 = MEMORY[0x277D84F90];
  v10[2] = v11;
  v10[3] = v12;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_connections] = v10;
  v13 = [objc_allocWithZone(type metadata accessor for BootstrapSession()) init];
  v14 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_session] = v13;
  type metadata accessor for ShutdownTimer();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_shutdownTimer] = sub_22262D5C0(sub_2226A0768, 0, 0.0);
  v15 = *&v1[v14];
  v16 = *&v15[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_stateLock];
  v17 = v15;
  [v16 lock];
  v18 = *&v17[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState];
  if ((v18 >> 62) - 2 < 2)
  {
    v19 = sub_22262D930();
LABEL_6:
    v18 = v19;
    goto LABEL_7;
  }

  if (v18 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A00, &qword_222742CE0);

    v19 = sub_222738EAC();
    goto LABEL_6;
  }

  v20 = *&v17[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState];

LABEL_7:
  [v16 unlock];

  v21 = type metadata accessor for WidgetEventListener();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_listener] = 0;
  *&v22[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19WidgetEventListener_objectGraph] = v18;
  v34.receiver = v22;
  v34.super_class = v21;
  *&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_widgetEventListener] = objc_msgSendSuper2(&v34, sel_init);
  v23 = *&v1[v3];
  *&v1[v3] = 0;
  swift_unknownObjectRelease();
  v33.receiver = v1;
  v33.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  v25 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener;
  v26 = *&v24[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_listener];
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v27 = v24;
  v28 = v26;
  v29 = sub_22273955C();
  [v28 _setQueue_];

  [*&v24[v25] setDelegate_];
  v30 = *&v27[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit6Daemon_connections];
  v31 = *(v30 + 16);

  [v31 lock];
  swift_beginAccess();
  *(v30 + 40) = &off_2835C8EA8;
  swift_unknownObjectWeakAssign();
  [v31 unlock];

  return v27;
}

uint64_t sub_22262D5C0(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v18 = sub_22273954C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22273952C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_222737C9C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  *(v4 + 56) = 0;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 16) = a3;
  sub_22262D828();
  v17[1] = "timerQueue";

  sub_222737C6C();
  sub_22273955C();
  v19 = MEMORY[0x277D84F90];
  sub_22262D874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262D8CC();
  sub_2227397BC();
  (*(v8 + 104))(v11, *MEMORY[0x277D85260], v18);
  *(v4 + 40) = sub_22273958C();
  *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  return v4;
}

unint64_t sub_22262D828()
{
  result = qword_281312CC0;
  if (!qword_281312CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312CC0);
  }

  return result;
}

unint64_t sub_22262D874()
{
  result = qword_281312CD0;
  if (!qword_281312CD0)
  {
    sub_22273952C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312CD0);
  }

  return result;
}

unint64_t sub_22262D8CC()
{
  result = qword_281312DC0;
  if (!qword_281312DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D013770, &unk_222742A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312DC0);
  }

  return result;
}

uint64_t sub_22262D930()
{
  v1 = v0;
  v2 = sub_2227373FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  sub_2227373EC();
  v11 = sub_2227373CC();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v14 = objc_opt_self();
  if (qword_281313008 != -1)
  {
    v22 = v14;
    swift_once();
    v14 = v22;
  }

  [v14 bootstrapDidBeginWithTag_];
  sub_22262E020();
  v15 = sub_22262E5F8();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  v25 = sub_22273872C();
  v26 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v24);

  sub_22273871C();
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_22262D828();

  v19 = sub_22273955C();
  v25 = v18;
  v26 = MEMORY[0x277D225C0];
  v24[0] = v19;
  sub_222738E8C();

  __swift_destroy_boxed_opaque_existential_1(v24);

  v20 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState);
  *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16BootstrapSession_bootstrapState) = v15;

  sub_22269F78C(v20);
  return v15;
}

uint64_t sub_22262DD50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262DD88()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_22262DDC4()
{
  result = ASCSignpostTagCreate(0);
  qword_281315B68 = result;
  return result;
}

unint64_t ASCSignpostTagCreate(unint64_t a1)
{
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(a1, v2);
}

unint64_t ASCSignpostTagCreateForProcess(unint64_t a1, int a2)
{
  if (!(a1 >> 47))
  {
    return a2 | (a1 << 17);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __ASCSignpostTagCreateForProcess_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (ASCSignpostTagCreateForProcess_onceToken != -1)
  {
    dispatch_once(&ASCSignpostTagCreateForProcess_onceToken, block);
  }

  return a1 + a2;
}

uint64_t sub_22262E020()
{
  sub_22273858C();
  sub_22273854C();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_22262E364(0, &qword_281312D68, 0x277CB8F48);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for JSJetPackFetcher(0);
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_222738BBC();
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22262E364(0, &unk_281312D90, 0x277CEE6F0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_22273896C();
  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v0;
}

uint64_t sub_22262E364(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_22262E3AC@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() currentProcess];
  result = [v2 setAccountMediaType_];
  *a1 = v2;
  return result;
}

uint64_t sub_22262E43C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22262E474(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22262E4D8()
{
  sub_22262E474(319, &unk_281312F58, &unk_27D013DA0, &qword_222743E40, MEMORY[0x277D21D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22262E474(319, &unk_281312F48, &unk_27D013DB0, &unk_222743B30, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_22262E5F8()
{
  sub_222738EFC();
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013078, &unk_222741750);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C8, &unk_222742680);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0132A0, &unk_222742690);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_22262E364(0, &qword_281312DB0, off_2784B0638);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137C0, &qword_222742750);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  type metadata accessor for JSStackManager();
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22273897C();
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137E0, &unk_222742AE0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2227385FC();
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_22273899C();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014860, &unk_222742AF0);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013860, &unk_222742B00);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013868, &qword_222742B10);
  sub_22273898C();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_22273896C();
  v2[3] = sub_22273872C();
  v2[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_22273871C();
  type metadata accessor for ObjectGraph();
  v0 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v0;
}

uint64_t type metadata accessor for JSStackManager()
{
  result = qword_281313BA8;
  if (!qword_281313BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22262F07C()
{
  result = sub_22273842C();
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

uint64_t type metadata accessor for ObjectGraph()
{
  result = qword_281313E98;
  if (!qword_281313E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_22262F248@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22262F28C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_22273919C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

BOOL sub_22262F300(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_22262F504()
{
  v1 = (type metadata accessor for AlertAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  v8 = *(v5 + v1[8] + 8);

  v9 = *(v5 + v1[9]);

  v10 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22262F624()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262F664()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262F6AC()
{
  v1 = type metadata accessor for AppLaunchTrampolineAction();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = sub_22273731C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + v1[7]);
  if (v10[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[8];
  v14 = sub_2227383BC();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = *(v0 + v11);

  v16 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v2 | 7);
}

uint64_t sub_22262F854()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262F8A8()
{
  v1 = sub_22273793C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v5 + 48, v3 | 7);
}

uint64_t sub_22262F988()
{
  v1 = sub_222737C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22262FA60()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22262FAFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22262FB3C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FB74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FBB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FBFC()
{
  v1 = (type metadata accessor for CancelOrPauseInstallAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22262FCF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FD40()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22262FD80()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_22262FDCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013100, &qword_2227418D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22262FE64()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22262FEA4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22262FEF4()
{
  v1 = (type metadata accessor for OpenAppAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_2227383BC();
  (*(*(v6 - 8) + 8))(v5, v6);

  v7 = v1[8];
  v8 = sub_22273786C();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  v9 = *(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_22263002C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222630074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013218, &qword_222741B20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222630114()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013220, &qword_222741B28);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226301A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226301E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222630248()
{
  v1 = (type metadata accessor for WatchReinstallAction() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_2227383BC();
  (*(*(v7 - 8) + 8))(v6, v7);
  sub_2226825C0(*(v6 + v1[7]), *(v6 + v1[7] + 8), *(v6 + v1[7] + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v2 | 7);
}

uint64_t sub_222630360()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2226303B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222630404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2226304C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222630578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2227383BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2226306A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2227383BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2226307D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2226308A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_222630958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222630A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222630ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_22273786C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_222630BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_22273786C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_222630D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_222630DD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_222630E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2227383BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_222630F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2227383BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_222631004()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226310B0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226310E8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222631130()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222631170()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226311B0()
{
  v1 = *(type metadata accessor for MetricsTopicProvider() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_222738BBC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22263127C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226312C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22263131C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222631354()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22263138C()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226313C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631400()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222631440()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222631488()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226314C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226314F8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222738BBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2226315A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_222738BBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222631648()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222631680()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226316C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631704()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222631780()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226317BC()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2226318D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631914()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22263194C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226319B4()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631A78()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631B50()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631C28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222631C68()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222631CF0()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222631D9C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_222631DDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

id sub_222631E9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ams_isManagedAppleID];
  *a2 = result;
  return result;
}

id sub_222631EE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_DSID];
  *a2 = result;
  return result;
}

uint64_t sub_22263200C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273842C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632078(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273842C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2226320E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2226321C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222632210()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632248(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273731C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2226322B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22273731C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_222632348()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222632380()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2226323D8()
{
  v1 = sub_222737DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222632474()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2226324BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226324F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_222737DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2227384DC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_222632604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_222737DAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2227384DC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_222632730()
{
  v1 = sub_22273903C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226327B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632804()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222632844(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_222738ACC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2226328F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_222738ACC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222632994(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_222632A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_222632A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MetricsTopicProvider();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_222632B1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MetricsTopicProvider();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_222632BC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222632D0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222632D44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222632D7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222632DBC()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_222738BBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v15 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  __swift_destroy_boxed_opaque_existential_1((v0 + v11));
  v13 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v15 | 7);
}

uint64_t sub_222632F74()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222632FC4()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22263304C()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2226330E8()
{
  v1 = sub_22273903C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226331AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226331E4()
{
  v1 = sub_2227377BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2226332B0()
{
  v1 = sub_2227377BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222633374()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226333AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633400()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633438()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  v2 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2226334A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_222633508()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633550()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222633674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222633760()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226337B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2226337F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_222633850()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633888()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2226338D8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_222633954()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2226339CC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633A04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633A44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  v7 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_222633B48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633B80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633BB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_222633BF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222633C38()
{
  v1 = sub_2227385FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_222633D40()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633D78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222633DB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633DE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633E20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_222633E60()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633E98()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633ED0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222633F78()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222633FB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222633FE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_222634028()
{
  MEMORY[0x223DBFD80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222634060()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_222634104()
{
  v1 = sub_22273731C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_222634198()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2226341E0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_222634218()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222634258()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_222634290(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void ASCUnknownEnumCase(void *a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ does not have case with value %@", v3, v4];
  v6 = objc_alloc(MEMORY[0x277CBEAD8]);
  v10[0] = @"enumName";
  v10[1] = @"enumValue";
  v11[0] = v3;
  v11[1] = v4;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v6 initWithName:@"ASCUnknownEnumCaseException" reason:v5 userInfo:v7];
  v9 = v8;

  objc_exception_throw(v8);
}

void __ASCSignpostTagCreateForProcess_block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    __ASCSignpostTagCreateForProcess_block_invoke_cold_1(a1);
  }
}

unint64_t ASCSignpostTagUnique()
{
  add_explicit = atomic_fetch_add_explicit(&ASCSignpostTagUnique_nextValue, 1uLL, memory_order_relaxed);
  v1 = getpid();

  return ASCSignpostTagCreateForProcess(add_explicit, v1);
}

unint64_t ASCSignpostTagFromIDInProcess(void *a1, int a2)
{
  v3 = [a1 int64value];

  return ASCSignpostTagCreateForProcess(v3, a2);
}

unint64_t ASCSignpostTagFromID(void *a1)
{
  v1 = [a1 int64value];
  v2 = getpid();

  return ASCSignpostTagCreateForProcess(v1, v2);
}

id ASCMetricsFieldsGetCodableClasses()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v0 initWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];

  return v5;
}

id ASCMetricsFieldsDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCMetricsFieldsGetCodableClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

id ASCMetricsDataDecodeArrayForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id ASCOfferFlagsGetDescription(__int16 a1)
{
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"ASCOfferHasMessagesExtension"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"ASCOfferCreatesJobs"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v3 addObject:@"ASCOfferIsArcadeApp"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v3 addObject:@"ASCOfferIsPreorder"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v3 addObject:@"ASCOfferIsDisabled"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v3 addObject:@"ASCOfferForceWatchInstall"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 addObject:@"ASCOfferIsDeletableSystemApp"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 addObject:@"ASCOfferIsIOSAppOnMacOS"];
  if ((a1 & 0x100) == 0)
  {
LABEL_10:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 addObject:@"ASCOfferIsFree"];
  if ((a1 & 0x200) == 0)
  {
LABEL_11:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 addObject:@"ASCOfferIsDSIDLess"];
  if ((a1 & 0x400) == 0)
  {
LABEL_12:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 addObject:@"ASCOfferIsContingentOffer"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_13:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 addObject:@"ASCOfferIsAppDistributionOffer"];
  if ((a1 & 0x2000) == 0)
  {
LABEL_14:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  [v3 addObject:@"ASCOfferShouldOpenFromLockscreen"];
  if ((a1 & 0x4000) != 0)
  {
LABEL_15:
    [v3 addObject:@"ASCOfferIsIOSAppOnVisionOS"];
  }

LABEL_16:
  v4 = [v3 componentsJoinedByString:@" | "];

  return v4;
}

id ASCOfferTitlesDecodeForKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:v4];

  return v9;
}

id ASCOfferGetCodableClasses()
{
  if (ASCOfferGetCodableClasses_onceToken != -1)
  {
    ASCOfferGetCodableClasses_cold_1();
  }

  v1 = ASCOfferGetCodableClasses_classes;

  return v1;
}

uint64_t __ASCOfferGetCodableClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  ASCOfferGetCodableClasses_classes = [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

id ASCOfferDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCOfferGetCodableClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

double ASCArtworkCropScaleSizeToFit(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  if ((a2 != *MEMORY[0x277CBF3A8] || a3 != v11) && (a4 != v10 || a5 != v11))
  {
    if (a4 == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = a2 / a4;
    }

    if (a5 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = a3 / a5;
    }

    if ((![v9 isEqualToString:@"cc"] || a2 != a3) && (objc_msgSend(v9, "isEqualToString:", @"sr") & 1) == 0)
    {
      v16 = a4 * v15;
      if ([v9 isEqualToString:@"bb"])
      {
        if (v14 >= v15)
        {
          a2 = v16;
        }
      }

      else if (v14 < v15)
      {
        a2 = v16;
      }
    }

    v10 = floor(a2);
  }

  return v10;
}

uint64_t ASCArtworkFormatIsLayered(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  v2 = [v1 isEqualToString:@"lcr"];

  return v2;
}

uint64_t ASCArtworkDecorationHasBorder(void *a1)
{
  v1 = a1;
  +[ASCEligibility assertCurrentProcessEligibility];
  if ([v1 isEqualToString:@"none"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"circlePrerendered"))
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"] ^ 1;
  }

  return v2;
}

uint64_t ASCArtworkDecorationIsPrerendered(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"circlePrerendered"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"roundedRectPrerendered"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdGridContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adGridWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adGridWithLandscapeScreenshots"];
  }

  return v2;
}

uint64_t ASCLockupContextIsAdMaterialContext(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"adMaterialWithPortraitScreenshots"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"adMaterialWithLandscapeScreenshots"];
  }

  return v2;
}

id ASCLockupFeatureGetClasses()
{
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v18 initWithObjects:{v17, v16, v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return v10;
}

id ASCLockupFeaturesDecodeForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v4 decodeObjectOfClasses:v5 forKey:v3];

  return v6;
}

void sub_222653B7C(void *a1)
{
  objc_begin_catch(a1);
  objc_storeStrong(&ASCWorkspace_testingWorkspace, v1);
  objc_exception_rethrow();
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id ASCAppOfferStateDelegateGetInterface()
{
  if (ASCAppOfferStateDelegateGetInterface_onceToken != -1)
  {
    ASCAppOfferStateDelegateGetInterface_cold_1();
  }

  v1 = ASCAppOfferStateDelegateGetInterface_interface;

  return v1;
}

void __ASCAppOfferStateDelegateGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E59C8];
  v1 = ASCAppOfferStateDelegateGetInterface_interface;
  ASCAppOfferStateDelegateGetInterface_interface = v0;

  v2 = ASCAppOfferStateDelegateGetInterface_interface;
  v3 = ASCOfferGetCodableClasses();
  [v2 setClasses:v3 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:0 ofReply:0];

  v4 = ASCAppOfferStateDelegateGetInterface_interface;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:1 ofReply:0];

  v6 = ASCAppOfferStateDelegateGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_offer_didChangeState_withMetadata_flags_ argumentIndex:2 ofReply:0];

  v8 = ASCAppOfferStateDelegateGetInterface_interface;
  v9 = ASCOfferGetCodableClasses();
  [v8 setClasses:v9 forSelector:sel_offer_didChangeStatusText_ argumentIndex:0 ofReply:0];

  v10 = ASCAppOfferStateDelegateGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_offer_didChangeStatusText_ argumentIndex:1 ofReply:0];
}

id ASCAppOfferStateServiceGetInterface()
{
  if (ASCAppOfferStateServiceGetInterface_onceToken != -1)
  {
    ASCAppOfferStateServiceGetInterface_cold_1();
  }

  v1 = ASCAppOfferStateServiceGetInterface_interface;

  return v1;
}

void __ASCAppOfferStateServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1230];
  v1 = ASCAppOfferStateServiceGetInterface_interface;
  ASCAppOfferStateServiceGetInterface_interface = v0;

  v2 = ASCAppOfferStateServiceGetInterface_interface;
  v3 = ASCOfferGetCodableClasses();
  v4 = [v3 setByAddingObject:objc_opt_class()];
  [v2 setClasses:v4 forSelector:sel_startObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v5 = ASCAppOfferStateServiceGetInterface_interface;
  v6 = ASCOfferGetCodableClasses();
  v7 = [v6 setByAddingObject:objc_opt_class()];
  [v5 setClasses:v7 forSelector:sel_stopObservingStateOfOffers_ argumentIndex:0 ofReply:0];

  v8 = ASCAppOfferStateServiceGetInterface_interface;
  v9 = ASCOfferGetCodableClasses();
  [v8 setClasses:v9 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:0];

  v10 = ASCAppOfferStateServiceGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:1 ofReply:0];

  v12 = ASCAppOfferStateServiceGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:2 ofReply:0];

  v14 = ASCAppOfferStateServiceGetInterface_interface;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_performActionOfOffer_withActivity_inContext_withReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = ASCAppOfferStateServiceGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v18 = ASCAppOfferStateServiceGetInterface_interface;
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v18 setClasses:v19 forSelector:sel_reinstallWatchAppWithID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = ASCAppOfferStateServiceGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:0];

  v22 = ASCAppOfferStateServiceGetInterface_interface;
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v22 setClasses:v23 forSelector:sel_reinstallWatchSystemAppWithBundleID_withReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = ASCAppOfferStateServiceGetInterface_interface;
  v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v24 setClasses:v25 forSelector:sel_viewAppForAppDistributionOffer_ argumentIndex:0 ofReply:0];

  v26 = ASCAppOfferStateServiceGetInterface_interface;
  v27 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v26 setClasses:v27 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v28 = ASCAppOfferStateServiceGetInterface_interface;
  v29 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v28 setClasses:v29 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v30 = ASCAppOfferStateServiceGetInterface_interface;
  v31 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v30 setClasses:v31 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = ASCAppOfferStateServiceGetInterface_interface;
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_decorateBuyParamsForOffer_withActivity_withReplyHandler_ argumentIndex:1 ofReply:1];
}

id ASCUtilityServiceGetInterface()
{
  if (ASCUtilityServiceGetInterface_onceToken != -1)
  {
    ASCUtilityServiceGetInterface_cold_1();
  }

  v1 = ASCUtilityServiceGetInterface_interface;

  return v1;
}

void __ASCUtilityServiceGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1988];
  v1 = ASCUtilityServiceGetInterface_interface;
  ASCUtilityServiceGetInterface_interface = v0;

  v2 = ASCUtilityServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCUtilityServiceGetInterface_interface;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_openURL_withReplyHandler_ argumentIndex:0 ofReply:1];

  v6 = ASCUtilityServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_restoreAppStoreWithReplyHandler_ argumentIndex:0 ofReply:1];
}

id ASCLockupFetcherServiceGetInterface()
{
  if (ASCLockupFetcherServiceGetInterface_onceToken != -1)
  {
    ASCLockupFetcherServiceGetInterface_cold_1();
  }

  v1 = ASCLockupFetcherServiceGetInterface_interface;

  return v1;
}

void __ASCLockupFetcherServiceGetInterface_block_invoke()
{
  v38 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1480];
  v1 = ASCLockupFetcherServiceGetInterface_interface;
  ASCLockupFetcherServiceGetInterface_interface = v0;

  v2 = ASCLockupFetcherServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCLockupFetcherServiceGetInterface_interface;
  v5 = ASCLockupFeatureGetClasses();
  v6 = [v5 setByAddingObject:objc_opt_class()];
  [v4 setClasses:v6 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v7 = ASCLockupFetcherServiceGetInterface_interface;
  v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v7 setClasses:v8 forSelector:sel_getLockupWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v9 = ASCLockupFetcherServiceGetInterface_interface;
  v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v9 setClasses:v10 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v11 = ASCLockupFetcherServiceGetInterface_interface;
  v12 = ASCLockupFeatureGetClasses();
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:3];
  v14 = [v12 setByAddingObjectsFromArray:v13];
  [v11 setClasses:v14 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v15 = ASCLockupFetcherServiceGetInterface_interface;
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v15 setClasses:v16 forSelector:sel_getLockupsWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v17 = ASCLockupFetcherServiceGetInterface_interface;
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v17 setClasses:v18 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:0];

  v19 = ASCLockupFetcherServiceGetInterface_interface;
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  v21 = objc_opt_class();
  v22 = [v20 initWithObjects:{v21, objc_opt_class(), 0, v35, v36}];
  [v19 setClasses:v22 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:0 ofReply:1];

  v23 = ASCLockupFetcherServiceGetInterface_interface;
  v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v23 setClasses:v24 forSelector:sel_getLockupCollectionWithRequest_withReplyHandler_ argumentIndex:1 ofReply:1];

  v25 = ASCLockupFetcherServiceGetInterface_interface;
  v26 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v25 setClasses:v26 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:0];

  v27 = ASCLockupFetcherServiceGetInterface_interface;
  v28 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v27 setClasses:v28 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:0];

  v29 = ASCLockupFetcherServiceGetInterface_interface;
  v30 = ASCLockupFeatureGetClasses();
  v31 = [v30 setByAddingObject:objc_opt_class()];
  [v29 setClasses:v31 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:0 ofReply:1];

  v32 = ASCLockupFetcherServiceGetInterface_interface;
  v33 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v32 setClasses:v33 forSelector:sel_getLockupForBundleID_withContext_enableAppDistribution_withReplyHandler_ argumentIndex:1 ofReply:1];

  v34 = *MEMORY[0x277D85DE8];
}

id ASCMetricsServiceGetInterface()
{
  if (ASCMetricsServiceGetInterface_onceToken != -1)
  {
    ASCMetricsServiceGetInterface_cold_1();
  }

  v1 = ASCMetricsServiceGetInterface_interface;

  return v1;
}

void __ASCMetricsServiceGetInterface_block_invoke()
{
  v28[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E16A8];
  v1 = ASCMetricsServiceGetInterface_interface;
  ASCMetricsServiceGetInterface_interface = v0;

  v2 = ASCMetricsServiceGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:0];

  v4 = ASCMetricsServiceGetInterface_interface;
  v5 = ASCMetricsFieldsGetCodableClasses();
  [v4 setClasses:v5 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:1 ofReply:0];

  v6 = ASCMetricsServiceGetInterface_interface;
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:2 ofReply:0];

  v8 = ASCMetricsServiceGetInterface_interface;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_processMetricsData_pageFields_activity_withReplyHandler_ argumentIndex:0 ofReply:1];

  v10 = ASCMetricsServiceGetInterface_interface;
  v11 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v10 setClasses:v11 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v12 = ASCMetricsServiceGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_processViewRenderWithPredicate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v14 = ASCMetricsServiceGetInterface_interface;
  v15 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:0];

  v16 = ASCMetricsServiceGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:1 ofReply:0];

  v18 = ASCMetricsServiceGetInterface_interface;
  v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v18 setClasses:v19 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:2 ofReply:0];

  v20 = ASCMetricsServiceGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:3 ofReply:0];

  v22 = ASCMetricsServiceGetInterface_interface;
  v23 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v22 setClasses:v23 forSelector:sel_recordQToken_campaignToken_advertisementID_withLockup_withReplyHandler_ argumentIndex:0 ofReply:1];

  v24 = ASCMetricsFieldsGetCodableClasses();
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v26 = [v24 setByAddingObjectsFromArray:v25];

  [ASCMetricsServiceGetInterface_interface setClasses:v26 forSelector:sel_logErrorMessage_ argumentIndex:0 ofReply:0];
  v27 = *MEMORY[0x277D85DE8];
}

id ASCServiceBrokerGetInterface()
{
  if (ASCServiceBrokerGetInterface_onceToken != -1)
  {
    ASCServiceBrokerGetInterface_cold_1();
  }

  v1 = ASCServiceBrokerGetInterface_interface;

  return v1;
}

void __ASCServiceBrokerGetInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835E1888];
  v1 = ASCServiceBrokerGetInterface_interface;
  ASCServiceBrokerGetInterface_interface = v0;

  v2 = ASCServiceBrokerGetInterface_interface;
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_testConnectionWithReplyHandler_ argumentIndex:0 ofReply:1];

  v4 = ASCServiceBrokerGetInterface_interface;
  v5 = ASCAppOfferStateDelegateGetInterface();
  [v4 setInterface:v5 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:0];

  v6 = ASCServiceBrokerGetInterface_interface;
  v7 = ASCAppOfferStateServiceGetInterface();
  [v6 setInterface:v7 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v8 = ASCServiceBrokerGetInterface_interface;
  v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_getAppOfferStateServiceForDelegate_withReplyHandler_ argumentIndex:1 ofReply:1];

  v10 = ASCServiceBrokerGetInterface_interface;
  v11 = ASCUtilityServiceGetInterface();
  [v10 setInterface:v11 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v12 = ASCServiceBrokerGetInterface_interface;
  v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v12 setClasses:v13 forSelector:sel_getUtilityServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v14 = ASCServiceBrokerGetInterface_interface;
  v15 = ASCLockupFetcherServiceGetInterface();
  [v14 setInterface:v15 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v16 = ASCServiceBrokerGetInterface_interface;
  v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v16 setClasses:v17 forSelector:sel_getLockupFetcherServiceWithReplyHandler_ argumentIndex:1 ofReply:1];

  v18 = ASCServiceBrokerGetInterface_interface;
  v19 = ASCMetricsServiceGetInterface();
  [v18 setInterface:v19 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:0 ofReply:1];

  v20 = ASCServiceBrokerGetInterface_interface;
  v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v20 setClasses:v21 forSelector:sel_getMetricsServiceWithReplyHandler_ argumentIndex:1 ofReply:1];
}

__CFString *ASCStringFromNotifyStatus(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 > 8)
    {
      switch(a1)
      {
        case 9:
          v1 = @"NOTIFY_STATUS_SERVER_NOT_FOUND";
          goto LABEL_27;
        case 0xA:
          v1 = @"NOTIFY_STATUS_NULL_INPUT";
          goto LABEL_27;
        case 0xF4240:
          v1 = @"NOTIFY_STATUS_FAILED";
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a1 == 6)
    {
      v1 = @"NOTIFY_STATUS_INVALID_REQUEST";
    }

    else if (a1 == 7)
    {
      v1 = @"NOTIFY_STATUS_NOT_AUTHORIZED";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_OPT_DISABLE";
    }
  }

  else
  {
    if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          v1 = @"NOTIFY_STATUS_OK";
          goto LABEL_27;
        case 1:
          v1 = @"NOTIFY_STATUS_INVALID_NAME";
          goto LABEL_27;
        case 2:
          v1 = @"NOTIFY_STATUS_INVALID_TOKEN";
          goto LABEL_27;
      }

LABEL_26:
      v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NOTIFY_STATUS_UNKNOWN (%u)", a1];
      goto LABEL_27;
    }

    if (a1 == 3)
    {
      v1 = @"NOTIFY_STATUS_INVALID_PORT";
    }

    else if (a1 == 4)
    {
      v1 = @"NOTIFY_STATUS_INVALID_FILE";
    }

    else
    {
      v1 = @"NOTIFY_STATUS_INVALID_SIGNAL";
    }
  }

LABEL_27:

  return v1;
}

id ASCClientBuildTypeGetCurrent()
{
  if (ASCClientBuildTypeGetCurrent_onceToken != -1)
  {
    ASCClientBuildTypeGetCurrent_cold_1();
  }

  v1 = ASCClientBuildTypeGetCurrent_buildType;

  return v1;
}

uint64_t __ASCClientBuildTypeGetCurrent_block_invoke()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = @"production";
  if (has_internal_content)
  {
    v1 = @"internal";
  }

  ASCClientBuildTypeGetCurrent_buildType = v1;

  return MEMORY[0x2821F96F8]();
}

void ASCDumpEnvVars(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v20 = a1;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Environment variables (%{public}s):", buf, 0xCu);
    }

    context = objc_autoreleasePoolPush();
    v2 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v2 environment];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      v8 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v4 objectForKeyedSubscript:v10];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v20 = v10;
            v21 = 2114;
            v22 = v11;
            _os_log_impl(&dword_222629000, v8, OS_LOG_TYPE_INFO, "%{public}@=%{public}@", buf, 0x16u);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

    v12 = malloc_engaged_nano();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v20) = v12;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "malloc_engaged_nano=%{public}d", buf, 8u);
    }

    if (v12 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASCDumpEnvVars_cold_1();
    }

    objc_autoreleasePoolPop(context);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_222658F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKInstallSheetStatusUpdateRequestClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __StoreKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2784B1990;
    v7 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKInstallSheetStatusUpdateRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKInstallSheetStatusUpdateRequestClass_block_invoke_cold_1();
  }

  getSKInstallSheetStatusUpdateRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2226592DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSKPurchaseIntentClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __StoreKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2784B19A8;
    v7 = 0;
    StoreKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (StoreKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKPurchaseIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKPurchaseIntentClass_block_invoke_cold_1();
  }

  getSKPurchaseIntentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ASCPostRebootstrapNotification()
{
  if (ASCRebootstrapNotificationGetToken_onceToken != -1)
  {
    ASCPostRebootstrapNotification_cold_1();
  }

  v0 = ASCRebootstrapNotificationGetToken_token;
  state64 = 0;
  state = notify_get_state(ASCRebootstrapNotificationGetToken_token, &state64);
  if (state)
  {
    v2 = state;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASCPostRebootstrapNotification_cold_2(v2);
    }
  }

  else
  {
    v3 = notify_set_state(v0, ++state64);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCPostRebootstrapNotification_cold_3(v4);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Incremented re-bootstrap counter", v6, 2u);
    }
  }

  return notify_post("com.apple.appstorecomponentsd.rebootstrap");
}

void ASCUnregisterForRebootstrapQANotification(int a1)
{
  if (a1 != -1)
  {
    v1 = notify_cancel(a1);
    if (v1)
    {
      v2 = v1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASCUnregisterForRebootstrapQANotification_cold_1(v2);
      }
    }
  }
}

void __ASCRebootstrapNotificationGetToken_block_invoke()
{
  v0 = notify_register_check("com.apple.appstorecomponentsd.rebootstrap", &ASCRebootstrapNotificationGetToken_token);
  if (v0)
  {
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __ASCRebootstrapNotificationGetToken_block_invoke_cold_1(v1);
    }

    ASCRebootstrapNotificationGetToken_token = -1;
  }
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_222659714(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012BE8, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_222659780(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012BE8, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2226597EC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_222659858(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E08, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2226598C4(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E08, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_222659930(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2226599A4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x223DBEFF0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2226599F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_222739CBC();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_222659A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222739CCC();
  *a1 = result;
  return result;
}

uint64_t sub_222659AC8(uint64_t a1, id *a2)
{
  result = sub_22273917C();
  *a2 = 0;
  return result;
}

uint64_t sub_222659B40(uint64_t a1, id *a2)
{
  v3 = sub_22273918C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_222659BC0@<X0>(uint64_t *a1@<X8>)
{
  sub_22273919C();
  v2 = sub_22273916C();

  *a1 = v2;
  return result;
}

uint64_t sub_222659C04(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C60, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_222659C70(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C60, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_222659CDC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211CA68](a1, v2);
}

void *sub_222659D5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_222659D88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_222659DFC(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_222659E68(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_222659ED4(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_222659F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_222659FF0(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A05C(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A0C8(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A158(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A1F4(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A260(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A2CC(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A3E4(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_22265A450(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_22265A4BC(void *a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_22265A54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_22265A5C8()
{
  v2 = *v0;
  sub_222739C5C();
  sub_22273912C();
  return sub_222739C8C();
}

uint64_t sub_22265A628@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22265C908(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_22265A668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265A6EC()
{
  sub_22265AFB0(&qword_27D012D80, type metadata accessor for Kind);
  sub_22265AFB0(&qword_27D012D88, type metadata accessor for Kind);

  return sub_222739A7C();
}

uint64_t sub_22265A7A8()
{
  sub_22265AFB0(&qword_27D012D20, type metadata accessor for ASCControllerRequirement);
  sub_22265AFB0(&qword_27D012D28, type metadata accessor for ASCControllerRequirement);

  return sub_222739A7C();
}

uint64_t sub_22265A864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012E38, type metadata accessor for ASCOpenAppError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265A8E8()
{
  v2 = *v0;
  sub_22265AFB0(&qword_27D012DB0, type metadata accessor for ASCSignpostTag);
  sub_22265AFB0(&qword_27D012DB8, type metadata accessor for ASCSignpostTag);
  return sub_222739A7C();
}

uint64_t sub_22265A9A4()
{
  sub_22265AFB0(&qword_27D012D70, type metadata accessor for AMSMediaTaskPlatform);
  sub_22265AFB0(&qword_27D012D78, type metadata accessor for AMSMediaTaskPlatform);

  return sub_222739A7C();
}

uint64_t sub_22265AA60()
{
  sub_22265AFB0(&qword_27D012D90, type metadata accessor for Context);
  sub_22265AFB0(&unk_27D012D98, type metadata accessor for Context);

  return sub_222739A7C();
}

uint64_t sub_22265AB1C()
{
  sub_22265AFB0(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
  sub_22265AFB0(&qword_27D012DA8, type metadata accessor for ASCOfferTitleVariant);

  return sub_222739A7C();
}

uint64_t sub_22265ABD8()
{
  sub_22265AFB0(&qword_27D012D00, type metadata accessor for HeadingKind);
  sub_22265AFB0(&qword_27D012D08, type metadata accessor for HeadingKind);

  return sub_222739A7C();
}

uint64_t sub_22265AC94()
{
  sub_22265AFB0(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint);
  sub_22265AFB0(&qword_27D012D18, type metadata accessor for ASCMetricsInvocationPoint);

  return sub_222739A7C();
}

uint64_t sub_22265AEB0(uint64_t a1, int a2)
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

uint64_t sub_22265AED0(uint64_t result, int a2, int a3)
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

uint64_t sub_22265AFB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22265B0D0()
{
  sub_22265AFB0(&qword_27D012D50, type metadata accessor for Decoration);
  sub_22265AFB0(&qword_27D012D58, type metadata accessor for Decoration);

  return sub_222739A7C();
}

uint64_t sub_22265B18C()
{
  sub_22265AFB0(&qword_27D012D40, type metadata accessor for Crop);
  sub_22265AFB0(&qword_27D012D48, type metadata accessor for Crop);

  return sub_222739A7C();
}

uint64_t sub_22265B248()
{
  sub_22265AFB0(&qword_27D012D30, type metadata accessor for Format);
  sub_22265AFB0(&qword_27D012D38, type metadata accessor for Format);

  return sub_222739A7C();
}

uint64_t sub_22265B304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22273916C();

  *a2 = v5;
  return result;
}

uint64_t sub_22265B34C()
{
  sub_22265AFB0(&qword_27D012D60, type metadata accessor for Platform);
  sub_22265AFB0(&qword_27D012D68, type metadata accessor for Platform);

  return sub_222739A7C();
}

uint64_t sub_22265B408(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C28, type metadata accessor for AMSError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22265B474(uint64_t a1)
{
  v2 = sub_22265AFB0(&qword_27D012C28, type metadata accessor for AMSError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22265B4E0(uint64_t a1)
{
  v2 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_22265B54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&unk_27D014600, type metadata accessor for AMSError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265B5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22265AFB0(&qword_27D012C90, type metadata accessor for ASCMetricsError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_22265B9FC()
{
  v1 = *v0;
  v2 = sub_22273919C();
  v3 = MEMORY[0x223DBE650](v2);

  return v3;
}

uint64_t sub_22265BA38()
{
  v1 = *v0;
  sub_22273919C();
  sub_22273924C();
}

uint64_t sub_22265BA8C()
{
  v1 = *v0;
  sub_22273919C();
  sub_222739C5C();
  sub_22273924C();
  v2 = sub_222739C8C();

  return v2;
}

uint64_t sub_22265BB00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_22273919C();
  v6 = v5;
  if (v4 == sub_22273919C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222739B4C();
  }

  return v9 & 1;
}

unint64_t sub_22265C3C4()
{
  result = qword_27D012C10;
  if (!qword_27D012C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012C10);
  }

  return result;
}

uint64_t sub_22265C908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_22265C990(uint64_t a1, unint64_t *a2)
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

unint64_t sub_22265CCBC()
{
  result = qword_27D0131E0;
  if (!qword_27D0131E0)
  {
    type metadata accessor for AlertAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0131E0);
  }

  return result;
}

uint64_t sub_22265CD14@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_2227383CC();
  return (*(*(v3 - 8) + 104))(a1, v2, v3);
}

void sub_22265CD8C(id *a1, uint64_t a2, uint64_t *a3)
{
  v54 = *a3;
  v55 = a2;
  v4 = sub_2227383CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = [*a1 selectedActionIdentifier];
  v18 = sub_22273919C();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  v22 = v18 & 0xFFFFFFFFFFFFLL;
  if ((v20 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v20) & 0xF;
  }

  else
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {

    goto LABEL_69;
  }

  if ((v20 & 0x1000000000000000) != 0)
  {
    LOBYTE(v56) = 0;
    v26 = sub_2226B4644(v18, v20, 10);
    v44 = v49;
    goto LABEL_63;
  }

  if ((v20 & 0x2000000000000000) != 0)
  {
    v58[0] = v18;
    v58[1] = v20 & 0xFFFFFFFFFFFFFFLL;
    if (v18 == 43)
    {
      if (v21)
      {
        if (--v21)
        {
          v26 = 0;
          v36 = v58 + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v21)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v18 != 45)
      {
        if (v21)
        {
          v26 = 0;
          v41 = v58;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            v41 = (v41 + 1);
            if (!--v21)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      if (v21)
      {
        if (--v21)
        {
          v26 = 0;
          v30 = v58 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v21)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

    __break(1u);
    return;
  }

  if ((v18 & 0x1000000000000000) == 0)
  {
    goto LABEL_73;
  }

  for (i = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_22273993C())
  {
    v25 = *i;
    if (v25 == 43)
    {
      if (v22 < 1)
      {
        goto LABEL_77;
      }

      v21 = v22 - 1;
      if (v22 == 1)
      {
        goto LABEL_61;
      }

      v26 = 0;
      if (i)
      {
        v33 = i + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            goto LABEL_61;
          }

          v35 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            goto LABEL_61;
          }

          v26 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            goto LABEL_61;
          }

          ++v33;
          if (!--v21)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v25 == 45)
    {
      if (v22 < 1)
      {
        goto LABEL_75;
      }

      v21 = v22 - 1;
      if (v22 == 1)
      {
        goto LABEL_61;
      }

      v26 = 0;
      if (i)
      {
        v27 = i + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v26 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v21)
          {
            goto LABEL_62;
          }
        }

LABEL_61:
        v26 = 0;
        LOBYTE(v21) = 1;
        goto LABEL_62;
      }
    }

    else
    {
      if (!v22)
      {
        goto LABEL_61;
      }

      v26 = 0;
      if (i)
      {
        do
        {
          v39 = *i - 48;
          if (v39 > 9)
          {
            goto LABEL_61;
          }

          v40 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            goto LABEL_61;
          }

          v26 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            goto LABEL_61;
          }

          ++i;
        }

        while (--v22);
      }
    }

    LOBYTE(v21) = 0;
LABEL_62:
    LOBYTE(v56) = v21;
    v44 = v21;
LABEL_63:

    if (v44)
    {
      goto LABEL_69;
    }

    v45 = type metadata accessor for AlertAction();
    if ((v26 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_73:
    ;
  }

  v46 = *(v55 + *(v45 + 28));
  if (v26 >= *(v46 + 16))
  {
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_22265DBF4(v46 + 56 * v26 + 48, &v56);
  if (v57)
  {
    sub_222634290(&v56, v58);
    sub_222738C9C();
    v48 = v52;
    v47 = v53;
    (*(v52 + 104))(v12, *MEMORY[0x277D21E18], v53);
    sub_22273862C();
    (*(v48 + 8))(v12, v47);
    (*(v51 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return;
  }

  sub_22265DC64(&v56);
LABEL_69:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
  (*(v5 + 104))(v8, *MEMORY[0x277D21CA8], v4);
  sub_222738EAC();
}

void sub_22265D3B0(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for AlertAction();
  v34 = *(v5 - 1);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_222738C9C();
  v7 = (a1 + v5[5]);
  v8 = (a1 + v5[6]);
  v9 = *v8;
  v10 = v8[1];
  if (v7[1])
  {
    v11 = *v7;
    v12 = sub_22273916C();
  }

  else
  {
    v12 = 0;
  }

  v38 = a2;
  v35 = v6;
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10)
  {
    v10 = sub_22273916C();
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CEE488]) initWithTitle:v12 message:v10];

  v14 = v5[7];
  v37 = a1;
  v15 = *(a1 + v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    while (1)
    {
      v19 = *(v15 + 16);
      if (v17 == v19)
      {
LABEL_11:
        v24 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F60, &qword_222741248);
        v25 = [v24 present];
        sub_222738F0C();
        v26 = v36;
        sub_22265D9E4(v37, v36);
        v27 = (*(v34 + 80) + 16) & ~*(v34 + 80);
        v28 = (v35 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = swift_allocObject();
        sub_22265DA48(v26, v29 + v27);
        *(v29 + v28) = v38;
        v42 = sub_22273872C();
        v43 = MEMORY[0x277D21FB0];
        __swift_allocate_boxed_opaque_existential_1(&v40);

        sub_22273871C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
        sub_22265DB48();
        sub_222738EDC();

        goto LABEL_13;
      }

      if (v17 >= v19)
      {
        break;
      }

      v20 = v17 + 1;
      sub_22265D934(v18, &v41);

      sub_22265D990(&v41);
      v39 = v17;
      sub_222739AFC();
      v21 = sub_22273916C();

      v22 = sub_22273916C();

      v23 = [objc_opt_self() actionWithTitle:v21 identifier:v22];

      [v13 addButtonAction_];
      v18 += 56;
      v17 = v20;
      if (v16 == v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_2227390BC();
    v30 = sub_22273916C();

    v31 = [objc_opt_self() actionWithTitle_];

    [v13 addButtonAction_];
    v32 = [objc_allocWithZone(MEMORY[0x277CEE6B0]) initWithRequest_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F60, &qword_222741248);
    v33 = [v32 present];
    sub_222738F0C();
    v42 = sub_22273872C();
    v43 = MEMORY[0x277D21FB0];
    __swift_allocate_boxed_opaque_existential_1(&v40);
    sub_22273871C();
    sub_2227383CC();
    sub_222738E6C();

LABEL_13:

    __swift_destroy_boxed_opaque_existential_1(&v40);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }
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

uint64_t sub_22265D9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22265DA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22265DAAC(id *a1)
{
  v3 = *(type metadata accessor for AlertAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_22265CD8C(a1, v1 + v4, v5);
}

unint64_t sub_22265DB48()
{
  result = qword_27D0144C0;
  if (!qword_27D0144C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D012F68, &unk_222741250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0144C0);
  }

  return result;
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

uint64_t sub_22265DBF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013240, &unk_222741770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22265DC64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013240, &unk_222741770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22265DD24()
{
  result = qword_27D012F78;
  if (!qword_27D012F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D012F78);
  }

  return result;
}

uint64_t sub_22265DD78(void *a1, void *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v37 - v7;
  v8 = sub_2227383BC();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlertAction();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  sub_222738C9C();
  sub_22273839C();
  v19 = a1;
  v20 = [a1 alertTitle];
  v38 = sub_22273919C();
  v22 = v21;

  v23 = [v19 alertMessage];
  v24 = sub_22273919C();
  v26 = v25;

  v43 = a2;
  v27 = sub_2226EA7C0();
  v28 = v39;
  (*(v44 + 32))(v39, v11, v45);
  v29 = (v28 + v12[5]);
  *v29 = v38;
  v29[1] = v22;
  v30 = (v28 + v12[6]);
  *v30 = v24;
  v30[1] = v26;
  *(v28 + v12[7]) = v27;
  v47[3] = v12;
  v47[4] = sub_22265E1D4(&qword_27D0131E0, type metadata accessor for AlertAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
  sub_22265D9E4(v28, boxed_opaque_existential_1);
  v33 = v40;
  v32 = v41;
  v34 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277D21E18], v42);
  v35 = sub_22273862C();
  (*(v32 + 8))(v33, v34);
  sub_22265E21C(v28);
  (*(v46 + 8))(v18, v15);
  __swift_destroy_boxed_opaque_existential_1(v47);
  return v35;
}

uint64_t sub_22265E1D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22265E21C(uint64_t a1)
{
  v2 = type metadata accessor for AlertAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22265E28C()
{
  result = qword_27D0133B0;
  if (!qword_27D0133B0)
  {
    sub_22262E364(255, &qword_27D012F80, off_2784B0600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0133B0);
  }

  return result;
}

uint64_t sub_22265E2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[41] = a2;
  v3[42] = a3;
  v3[40] = a1;
  v4 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[44] = v5;
  v6 = *(v5 - 8);
  v3[45] = v6;
  v7 = *(v6 + 64) + 15;
  v3[46] = swift_task_alloc();
  v8 = type metadata accessor for OpenAppAction();
  v3[47] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[49] = v10;
  v11 = *(v10 - 8);
  v3[50] = v11;
  v12 = *(v11 + 64) + 15;
  v3[51] = swift_task_alloc();
  v13 = sub_22273786C();
  v3[52] = v13;
  v14 = *(v13 - 8);
  v3[53] = v14;
  v15 = *(v14 + 64) + 15;
  v3[54] = swift_task_alloc();
  v16 = sub_2227378CC();
  v3[55] = v16;
  v17 = *(v16 - 8);
  v3[56] = v17;
  v18 = *(v17 + 64) + 15;
  v3[57] = swift_task_alloc();
  v19 = sub_2227377AC();
  v3[58] = v19;
  v20 = *(v19 - 8);
  v3[59] = v20;
  v21 = *(v20 + 64) + 15;
  v3[60] = swift_task_alloc();
  v22 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v3[61] = swift_task_alloc();
  v23 = sub_2227377BC();
  v3[62] = v23;
  v24 = *(v23 - 8);
  v3[63] = v24;
  v25 = *(v24 + 64) + 15;
  v3[64] = swift_task_alloc();
  v26 = sub_22273793C();
  v3[65] = v26;
  v27 = *(v26 - 8);
  v3[66] = v27;
  v28 = *(v27 + 64) + 15;
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22265E68C, 0, 0);
}

uint64_t sub_22265E68C()
{
  v104 = v0;
  v1 = *(v0 + 328);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 488);
    v4 = *(v0 + 336);
    sub_222634290((v0 + 56), v0 + 16);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = [v4 id];
    [v6 int64value];
    sub_222737C1C();
    v94 = *(v0 + 544);
    v9 = *(v0 + 528);
    v97 = *(v0 + 520);
    v100 = *(v0 + 536);
    v10 = *(v0 + 504);
    v11 = *(v0 + 512);
    v12 = *(v0 + 488);
    v95 = *(v0 + 496);
    v13 = *(v0 + 456);
    v14 = *(v0 + 448);
    v93 = *(v0 + 440);
    v92 = *(v0 + 336);
    (*(*(v0 + 472) + 104))(*(v0 + 480), *MEMORY[0x277CEBFE8], *(v0 + 464));
    sub_22273778C();

    sub_2227113BC();
    sub_2227379EC();
    (*(v14 + 8))(v13, v93);
    (*(v10 + 8))(v11, v95);
    (*(v9 + 16))(v100, v94, v97);
    if ((*(v9 + 88))(v100, v97) == *MEMORY[0x277CEC0C0])
    {
      v15 = *(v0 + 536);
      v16 = *(v0 + 424);
      v17 = *(v0 + 432);
      v18 = *(v0 + 408);
      v19 = *(v0 + 416);
      v20 = *(v0 + 384);
      v21 = *(v0 + 392);
      v22 = *(v0 + 376);
      v96 = *(v0 + 360);
      v98 = *(v0 + 352);
      v101 = *(v0 + 368);
      v23 = *(v0 + 328);
      v24 = *(v0 + 336);
      (*(*(v0 + 528) + 96))(v15, *(v0 + 520));
      (*(v16 + 32))(v17, v15, v19);
      type metadata accessor for ObjectGraph();
      sub_222738C9C();
      sub_22265FBE8(v20);
      v25 = [v24 id];
      (*(v16 + 16))(v20 + v22[6], v17, v19);
      v26 = [v24 flags];
      *(v20 + v22[5]) = v25;
      *(v20 + v22[7]) = (v26 & 0x2000) != 0;
      *(v0 + 120) = v22;
      *(v0 + 128) = sub_2226604C8();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_222660520(v20, boxed_opaque_existential_1);
      (*(v96 + 104))(v101, *MEMORY[0x277D21E18], v98);
      v28 = *(MEMORY[0x277D21E20] + 4);
      v29 = swift_task_alloc();
      *(v0 + 552) = v29;
      *v29 = v0;
      v29[1] = sub_22265F0A0;
      v30 = *(v0 + 408);
      v31 = *(v0 + 392);
      v32 = *(v0 + 368);
      v33 = *(v0 + 320);
      v34 = *(v0 + 328);

      return MEMORY[0x28217F468](v33, v0 + 96, v32, v34, v31);
    }

    v35 = [*(v0 + 336) id];
    v36 = [v35 stringValue];

    v37 = sub_22273919C();
    v39 = v38;

    v44 = HIBYTE(v39) & 0xF;
    v45 = v37 & 0xFFFFFFFFFFFFLL;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v46 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v46 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (!v46)
    {

LABEL_79:
      v68 = *(v0 + 536);
      v69 = *(v0 + 520);
      v70 = *(v0 + 320);
      v71 = *(*(v0 + 528) + 8);
      v71(*(v0 + 544), v69);
      v72 = *MEMORY[0x277D21CA0];
      v73 = sub_2227383CC();
      (*(*(v73 - 8) + 104))(v70, v72, v73);
      v71(v68, v69);
      v74 = *(v0 + 544);
      v75 = *(v0 + 536);
      v76 = *(v0 + 512);
      v78 = *(v0 + 480);
      v77 = *(v0 + 488);
      v79 = *(v0 + 456);
      v80 = *(v0 + 432);
      v81 = *(v0 + 408);
      v82 = *(v0 + 384);
      v99 = *(v0 + 368);
      v102 = *(v0 + 344);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));

      v83 = *(v0 + 8);

      return v83();
    }

    if ((v39 & 0x1000000000000000) != 0)
    {
      v48 = sub_2226B4BD0(v37, v39, 10);
      v61 = v91;
LABEL_77:

      if (v61)
      {
        goto LABEL_79;
      }

      *(v0 + 568) = v48;
      v62 = [*(v0 + 336) appVersionId];
      v63 = sub_22273919C();
      v65 = v64;

      v66 = sub_2226B41FC(v63, v65);
      *(v0 + 576) = v66;
      if (v67)
      {
        goto LABEL_79;
      }

      v84 = v66;
      v85 = [*(v0 + 336) distributorId];
      v86 = sub_22273919C();
      v88 = v87;

      *(v0 + 584) = v88;
      v89 = *(MEMORY[0x277CD5028] + 4);
      v90 = swift_task_alloc();
      *(v0 + 592) = v90;
      *v90 = v0;
      v90[1] = sub_22265F35C;
      v40 = v86;
      v45 = v88;
      v41 = v48;
      v42 = v84;
      v43 = 0;

      return MEMORY[0x2821237A0](v40, v45, v41, v42, v43);
    }

    if ((v39 & 0x2000000000000000) != 0)
    {
      v103[0] = v37;
      v103[1] = v39 & 0xFFFFFFFFFFFFFFLL;
      if (v37 == 43)
      {
        if (v44)
        {
          if (--v44)
          {
            v48 = 0;
            v56 = v103 + 1;
            while (1)
            {
              v57 = *v56 - 48;
              if (v57 > 9)
              {
                break;
              }

              if (!is_mul_ok(v48, 0xAuLL))
              {
                break;
              }

              v51 = __CFADD__(10 * v48, v57);
              v48 = 10 * v48 + v57;
              if (v51)
              {
                break;
              }

              ++v56;
              if (!--v44)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_89:
        __break(1u);
        return MEMORY[0x2821237A0](v40, v45, v41, v42, v43);
      }

      if (v37 != 45)
      {
        if (v44)
        {
          v48 = 0;
          v59 = v103;
          while (1)
          {
            v60 = *v59 - 48;
            if (v60 > 9)
            {
              break;
            }

            if (!is_mul_ok(v48, 0xAuLL))
            {
              break;
            }

            v51 = __CFADD__(10 * v48, v60);
            v48 = 10 * v48 + v60;
            if (v51)
            {
              break;
            }

            ++v59;
            if (!--v44)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v44)
      {
        if (--v44)
        {
          v48 = 0;
          v52 = v103 + 1;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            if (!is_mul_ok(v48, 0xAuLL))
            {
              break;
            }

            v51 = 10 * v48 >= v53;
            v48 = 10 * v48 - v53;
            if (!v51)
            {
              break;
            }

            ++v52;
            if (!--v44)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v37 & 0x1000000000000000) != 0)
      {
        v40 = ((v39 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v40 = sub_22273993C();
      }

      v47 = *v40;
      if (v47 == 43)
      {
        if (v45 >= 1)
        {
          v44 = v45 - 1;
          if (v45 != 1)
          {
            v48 = 0;
            if (v40)
            {
              v54 = v40 + 1;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  goto LABEL_75;
                }

                if (!is_mul_ok(v48, 0xAuLL))
                {
                  goto LABEL_75;
                }

                v51 = __CFADD__(10 * v48, v55);
                v48 = 10 * v48 + v55;
                if (v51)
                {
                  goto LABEL_75;
                }

                ++v54;
                if (!--v44)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_88;
      }

      if (v47 != 45)
      {
        if (v45)
        {
          v48 = 0;
          if (v40)
          {
            while (1)
            {
              v58 = *v40 - 48;
              if (v58 > 9)
              {
                goto LABEL_75;
              }

              if (!is_mul_ok(v48, 0xAuLL))
              {
                goto LABEL_75;
              }

              v51 = __CFADD__(10 * v48, v58);
              v48 = 10 * v48 + v58;
              if (v51)
              {
                goto LABEL_75;
              }

              ++v40;
              if (!--v45)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v48 = 0;
        LOBYTE(v44) = 1;
        goto LABEL_76;
      }

      if (v45 >= 1)
      {
        v44 = v45 - 1;
        if (v45 != 1)
        {
          v48 = 0;
          if (v40)
          {
            v49 = v40 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                goto LABEL_75;
              }

              if (!is_mul_ok(v48, 0xAuLL))
              {
                goto LABEL_75;
              }

              v51 = 10 * v48 >= v50;
              v48 = 10 * v48 - v50;
              if (!v51)
              {
                goto LABEL_75;
              }

              ++v49;
              if (!--v44)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v44) = 0;
LABEL_76:
          v61 = v44;
          goto LABEL_77;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v8 = *(v0 + 328);
  sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

  return sub_22273851C();
}

uint64_t sub_22265F0A0()
{
  v2 = *v1;
  v3 = (*v1)[69];
  v6 = *v1;
  (*v1)[70] = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);
  if (v0)
  {
    v4 = sub_22265F604;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 12);
    v4 = sub_22265F1EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22265F1EC()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v9 = v0[50];
  sub_222660584(v0[48]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[64];
  v14 = v0[60];
  v13 = v0[61];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v21 = v0[46];
  v22 = v0[43];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_22265F35C()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v7 = *v1;
  *(*v1 + 600) = v0;

  if (v0)
  {
    v4 = sub_22265F784;
  }

  else
  {
    v5 = *(v2 + 584);

    v4 = sub_22265F478;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22265F478()
{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[40];
  v4 = *(v0[66] + 8);
  v4(v0[68], v2);
  v5 = *MEMORY[0x277D21CA8];
  v6 = sub_2227383CC();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  v4(v1, v2);
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[57];
  v13 = v0[54];
  v14 = v0[51];
  v15 = v0[48];
  v18 = v0[46];
  v19 = v0[43];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22265F604()
{
  v1 = v0[68];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[51];
  v6 = v0[52];
  v8 = v0[49];
  v9 = v0[50];
  sub_222660584(v0[48]);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[64];
  v14 = v0[60];
  v13 = v0[61];
  v15 = v0[57];
  v16 = v0[54];
  v17 = v0[51];
  v18 = v0[48];
  v21 = v0[46];
  v22 = v0[43];
  v23 = v0[70];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v19 = v0[1];

  return v19();
}

uint64_t sub_22265F784()
{
  v1 = v0;
  v2 = v0[73];

  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[66];
  v35 = v0[65];
  v36 = v0[68];
  v6 = v0[43];
  v32 = v0[42];
  v33 = v0[75];
  v37 = v0[40];
  v39 = v0[67];
  v34 = sub_222738F6C();
  __swift_project_value_buffer(v34, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10 = MEMORY[0x277D84D38];
  v0[20] = MEMORY[0x277D84D38];
  v0[17] = v4;
  sub_22273816C();
  sub_222660468((v0 + 17), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v0[24] = v10;
  v0[21] = v3;
  sub_22273816C();
  sub_222660468((v0 + 21), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v11 = [v32 distributorId];
  v12 = sub_22273919C();
  v14 = v13;

  v1[28] = MEMORY[0x277D837D0];
  v1[25] = v12;
  v1[26] = v14;
  sub_22273816C();
  sub_222660468((v1 + 25), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v16 = v1[36];
  v15 = v1[37];
  v1[32] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 29);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  sub_22273816C();
  sub_222660468((v1 + 29), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v18 = *(v5 + 8);
  v18(v36, v35);
  v19 = *MEMORY[0x277D21CA0];
  v20 = sub_2227383CC();
  (*(*(v20 - 8) + 104))(v37, v19, v20);
  v18(v39, v35);
  v21 = v1[68];
  v22 = v1[67];
  v23 = v1[64];
  v25 = v1[60];
  v24 = v1[61];
  v26 = v1[57];
  v27 = v1[54];
  v28 = v1[51];
  v29 = v1[48];
  v38 = v1[46];
  v40 = v1[43];
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);

  v30 = v1[1];

  return v30();
}

size_t sub_22265FBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2227382CC();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227386BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v13 = sub_22273937C();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_16:

    sub_2227386AC();
    return sub_2227383AC();
  }

  v14 = sub_22273984C();
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = MEMORY[0x277D84F90];
  result = sub_2226AE744(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v32 = v11;
    v33 = a1;
    v16 = 0;
    v17 = v43;
    v34 = v40 + 32;
    v35 = v13 & 0xC000000000000001;
    v37 = v13;
    v38 = v7;
    v36 = v14;
    do
    {
      if (v35)
      {
        v18 = MEMORY[0x223DBEC70](v16, v13);
      }

      else
      {
        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v19 topic];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22273919C();
        v41 = v23;
        v42 = v22;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      [v19 shouldFlush];
      v24 = [v19 fields];
      sub_22273910C();

      v25 = [v19 includingFields];
      v26 = sub_2227394CC();

      sub_2226ADE58(v26, sub_2226E92DC, 0);
      v27 = [v19 includingFields];
      v28 = sub_2227394CC();

      sub_2226AE0E4(v28, sub_2226E932C, 0);
      v29 = v38;
      sub_22273829C();

      v43 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2226AE744(v30 > 1, v31 + 1, 1);
        v17 = v43;
      }

      ++v16;
      *(v17 + 16) = v31 + 1;
      (*(v40 + 32))(v17 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v31, v29, v39);
      v13 = v37;
    }

    while (v36 != v16);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22265FFE4(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v10 = v8;
  v11 = sub_222738F2C();
  v12 = sub_22273946C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_222741380;
  v13[5] = v9;
  v13[6] = v11;

  sub_2226D4E54(0, 0, v7, &unk_222741390, v13);

  return v11;
}

uint64_t sub_22266017C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_222660228;

  return sub_22265E2F4(a1, v5, v4);
}

uint64_t sub_222660228()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22266031C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D29C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226603F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013120, &unk_222741980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222660468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2226604C8()
{
  result = qword_27D012F88;
  if (!qword_27D012F88)
  {
    type metadata accessor for OpenAppAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012F88);
  }

  return result;
}

uint64_t sub_222660520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenAppAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222660584(uint64_t a1)
{
  v2 = type metadata accessor for OpenAppAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226605F8()
{
  result = qword_27D012F90;
  if (!qword_27D012F90)
  {
    type metadata accessor for AppLaunchTrampolineAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012F90);
  }

  return result;
}

uint64_t sub_222660650()
{
  v0 = sub_2227383CC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277D21CA8], v0);
  sub_222738EEC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_22266073C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  MEMORY[0x28223BE20](v8);
  v25 = &v25 - v10;
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v11 = sub_222738F6C();
  __swift_project_value_buffer(v11, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v12 = *(sub_2227381FC() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_22273813C();
  swift_getErrorValue();
  v16 = v35[5];
  v15 = v36;
  v35[3] = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
  sub_2227381EC();
  sub_222660468(v35, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  v18 = type metadata accessor for AppLaunchTrampolineAction();
  sub_22266110C(v30 + *(v18 + 28), &v32, &unk_27D013240, &unk_222741770);
  if (v33)
  {
    sub_222634290(&v32, v35);
    type metadata accessor for ObjectGraph();
    v19 = v25;
    sub_222738C9C();
    v21 = v26;
    v20 = v27;
    (*(v26 + 104))(v7, *MEMORY[0x277D21E18], v27);
    sub_22273862C();
    (*(v21 + 8))(v7, v20);
    v22 = sub_22262D828();
    swift_retain_n();
    v23 = sub_22273955C();
    v33 = v22;
    v34 = MEMORY[0x277D225C0];
    *&v32 = v23;
    sub_222738E8C();

    (*(v29 + 8))(v19, v8);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    sub_222660468(&v32, &unk_27D013240, &unk_222741770);
    return sub_222738ECC();
  }
}

uint64_t sub_222660BBC(uint64_t *a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for AppLaunchTrampolineAction();
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = v5;
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
  v10 = sub_222738F2C();
  v11 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  v12 = *a1;
  v13 = a1[1];
  v14 = sub_22273916C();
  sub_22266110C(a1 + *(v3 + 20), v9, &qword_27D013DC0, qword_222743950);
  v15 = sub_22273731C();
  v16 = *(v15 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v9, 1, v15) != 1)
  {
    v17 = sub_2227372BC();
    (*(v16 + 8))(v9, v15);
  }

  v18 = v11;
  v19 = [v11 openApplicationWithBundleIdentifier:v14 payloadURL:v17 universalLinkRequired:*(a1 + *(v3 + 24))];

  v35 = sub_222660F94;
  v36 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_222730B40;
  v34 = &block_descriptor;
  v20 = _Block_copy(&aBlock);

  [v19 addSuccessBlock_];
  _Block_release(v20);
  v21 = v29;
  sub_222660F9C(a1, v29);
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = (v27 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_222661000(v21, v24 + v22);
  *(v24 + v23) = v30;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v35 = sub_222661064;
  v36 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_222730B48;
  v34 = &block_descriptor_3;
  v25 = _Block_copy(&aBlock);

  [v19 addErrorBlock_];
  _Block_release(v25);

  return v10;
}

uint64_t sub_222660F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTrampolineAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222661000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchTrampolineAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222661064(uint64_t a1)
{
  v3 = *(type metadata accessor for AppLaunchTrampolineAction() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22266073C(a1, v1 + v4, v6, v7);
}

uint64_t sub_22266110C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_222661198()
{
  result = qword_27D0133A0;
  if (!qword_27D0133A0)
  {
    sub_22262E364(255, &qword_27D012F98, off_2784B0610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0133A0);
  }

  return result;
}

uint64_t sub_222661200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 681) = a5;
  *(v5 + 384) = a3;
  *(v5 + 392) = a4;
  *(v5 + 368) = a1;
  *(v5 + 376) = a2;
  v6 = sub_2227383CC();
  *(v5 + 400) = v6;
  v7 = *(v6 - 8);
  *(v5 + 408) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 416) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  v10 = sub_222737C5C();
  *(v5 + 432) = v10;
  v11 = *(v10 - 8);
  *(v5 + 440) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 448) = swift_task_alloc();
  v13 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v5 + 456) = swift_task_alloc();
  v14 = sub_22273784C();
  *(v5 + 464) = v14;
  v15 = *(v14 - 8);
  *(v5 + 472) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 480) = swift_task_alloc();
  v17 = sub_2227378CC();
  *(v5 + 488) = v17;
  v18 = *(v17 - 8);
  *(v5 + 496) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 504) = swift_task_alloc();
  v20 = sub_22273793C();
  *(v5 + 512) = v20;
  v21 = *(v20 - 8);
  *(v5 + 520) = v21;
  *(v5 + 528) = *(v21 + 64);
  *(v5 + 536) = swift_task_alloc();
  *(v5 + 544) = swift_task_alloc();
  v22 = sub_2227377AC();
  *(v5 + 552) = v22;
  v23 = *(v22 - 8);
  *(v5 + 560) = v23;
  v24 = *(v23 + 64) + 15;
  *(v5 + 568) = swift_task_alloc();
  v25 = *(*(sub_222737C2C() - 8) + 64) + 15;
  *(v5 + 576) = swift_task_alloc();
  v26 = sub_2227377BC();
  *(v5 + 584) = v26;
  v27 = *(v26 - 8);
  *(v5 + 592) = v27;
  v28 = *(v27 + 64) + 15;
  *(v5 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222661594, 0, 0);
}

uint64_t sub_222661594()
{
  v1 = *(v0 + 376);
  sub_22262E364(0, &qword_27D013080, off_2784B06E8);
  type metadata accessor for ObjectGraph();
  sub_222738C9C();
  v2 = *(v0 + 352);
  *(v0 + 608) = v2;
  v3 = [v2 fields];
  v4 = sub_22273910C();

  v5 = sub_22273919C();
  if (*(v4 + 16))
  {
    v7 = sub_222688818(v5, v6);
    v9 = v8;

    if (v9)
    {
      v10 = (*(v4 + 56) + 16 * v7);
      v11 = v10[1];
      v42 = *v10;

      goto LABEL_6;
    }
  }

  else
  {
  }

  v42 = 0;
  v11 = 0;
LABEL_6:

  v12 = *(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137F0, &qword_222741520);
  sub_222738C9C();
  v13 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v12 + v13, v0 + 96);
  if (*(v0 + 120))
  {
    v14 = *(v0 + 576);
    v15 = *(v0 + 384);
    sub_222634290((v0 + 96), v0 + 56);
    v16 = [v15 id];
    [v16 int64value];
    sub_222737C1C();
    v19 = *(v0 + 600);
    v20 = *(v0 + 576);
    v41 = v11;
    v21 = *(v0 + 520);
    v22 = *(v0 + 504);
    v37 = *(v0 + 536);
    v38 = *(v0 + 512);
    v23 = *(v0 + 496);
    v34 = *(v0 + 544);
    v35 = *(v0 + 488);
    v24 = *(v0 + 472);
    v39 = v24;
    v40 = *(v0 + 464);
    v25 = *(v0 + 384);
    v36 = *(v0 + 480);
    (*(*(v0 + 560) + 104))(*(v0 + 568), *MEMORY[0x277CEBFE8], *(v0 + 552));
    sub_22273778C();

    v26 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_2227113C0();
    sub_2227379EC();
    (*(v23 + 8))(v22, v35);
    v27 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v28 = *(v21 + 16);
    *(v0 + 616) = v28;
    *(v0 + 624) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28(v37, v34, v38);
    sub_22273785C();
    sub_22273798C();
    (*(v39 + 8))(v36, v40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v29 = [v25 id];
    *(v0 + 632) = sub_2226FE014(v42, v41, v29);

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB0, &qword_222741528);
    v31 = sub_22266BC78(&qword_281312E40, &qword_27D012FB0, &qword_222741528);
    v32 = *(MEMORY[0x277D22390] + 4);
    v33 = swift_task_alloc();
    *(v0 + 640) = v33;
    *v33 = v0;
    v33[1] = sub_222661B10;

    return MEMORY[0x282180360](v0 + 680, v30, v31);
  }

  else
  {
    v17 = *(v0 + 376);
    sub_222660468(v0 + 96, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222661B10()
{
  v2 = *v1;
  v3 = *(*v1 + 640);
  v4 = *v1;
  *(v2 + 648) = v0;

  v5 = *(v2 + 632);

  if (v0)
  {
    v6 = sub_2226625A8;
  }

  else
  {
    *(v2 + 682) = *(v2 + 680);
    v6 = sub_222661C4C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222661C4C()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 682);
  v2 = *(v0 + 456);
  v3 = *(v0 + 384);
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v8 = [v3 id];
  *(v0 + 264) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 240) = v8;
  sub_22273815C();
  sub_222660468(v0 + 240, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  *(v0 + 296) = MEMORY[0x277D839B0];
  *(v0 + 272) = v1;
  sub_22273816C();
  sub_222660468(v0 + 272, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v29 = *(v0 + 616);
  v30 = *(v0 + 624);
  v9 = *(v0 + 544);
  v10 = *(v0 + 536);
  v11 = *(v0 + 520);
  v12 = *(v0 + 512);
  v14 = *(v0 + 440);
  v13 = *(v0 + 448);
  v15 = *(v0 + 432);
  v35 = *(v0 + 424);
  v34 = *(v0 + 681);
  v16 = *(v0 + 392);
  v33 = *(v0 + 384);
  v31 = *(v0 + 528);
  v32 = *(v0 + 376);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v14 + 104))(v13, *MEMORY[0x277D851C8], v15);
  v36 = sub_22273959C();
  (*(v14 + 8))(v13, v15);
  v29(v10, v9, v12);
  sub_22266BCCC(v16, v0 + 136);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v32;
  *(v18 + 24) = v33;
  (*(v11 + 32))(v18 + v17, v10, v12);
  *(v18 + v17 + v31) = v34;
  sub_222634290((v0 + 136), v18 + ((v17 + v31) & 0xFFFFFFFFFFFFFFF8) + 8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v20 = v33;
  v21 = sub_222738F2C();
  *(v0 + 656) = v21;
  v22 = sub_22273946C();
  (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_222741538;
  v23[5] = v18;
  v23[6] = v21;

  sub_2226D4E54(0, 0, v35, &unk_222741540, v23);

  v24 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
  v25 = *(MEMORY[0x277D22390] + 4);
  v26 = swift_task_alloc();
  *(v0 + 664) = v26;
  *v26 = v0;
  v26[1] = sub_222662160;
  v27 = *(v0 + 416);

  return MEMORY[0x282180360](v27, v19, v24);
}

uint64_t sub_222662160()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  v2[84] = v0;

  v5 = v2[82];
  if (v0)
  {

    v6 = sub_222662444;
  }

  else
  {
    (*(v2[51] + 8))(v2[52], v2[50]);

    v6 = sub_2226622B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2226622B8()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v12 = *(v0 + 576);
  v13 = *(v0 + 568);
  v4 = *(v0 + 544);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v14 = *(v0 + 536);
  v15 = *(v0 + 504);
  v16 = *(v0 + 480);
  v17 = *(v0 + 456);
  v18 = *(v0 + 448);
  v19 = *(v0 + 424);
  v20 = *(v0 + 416);
  v8 = *(v0 + 400);
  v7 = *(v0 + 408);
  v9 = *(v0 + 368);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v7 + 104))(v9, *MEMORY[0x277D21CA8], v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_222662444()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 544);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 600);
  v8 = *(v0 + 576);
  v9 = *(v0 + 568);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v12 = *(v0 + 504);
  v13 = *(v0 + 480);
  v14 = *(v0 + 448);
  v15 = *(v0 + 456);
  v18 = *(v0 + 424);
  v19 = *(v0 + 416);
  v20 = *(v0 + 672);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2226625A8()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 648);
  v2 = *(v0 + 456);
  v3 = *(v0 + 384);
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_27D019C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v8 = [v3 id];
  *(v0 + 200) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 176) = v8;
  sub_22273815C();
  sub_222660468(v0 + 176, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  *(v0 + 232) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 208));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9, v10);
  sub_22273816C();
  sub_222660468(v0 + 208, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v32 = *(v0 + 616);
  v33 = *(v0 + 624);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 520);
  v15 = *(v0 + 512);
  v17 = *(v0 + 440);
  v16 = *(v0 + 448);
  v18 = *(v0 + 432);
  v38 = *(v0 + 424);
  v37 = *(v0 + 681);
  v19 = *(v0 + 392);
  v36 = *(v0 + 384);
  v34 = *(v0 + 528);
  v35 = *(v0 + 376);
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v17 + 104))(v16, *MEMORY[0x277D851C8], v18);
  v39 = sub_22273959C();
  (*(v17 + 8))(v16, v18);
  v32(v13, v12, v15);
  sub_22266BCCC(v19, v0 + 136);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  *(v21 + 24) = v36;
  (*(v14 + 32))(v21 + v20, v13, v15);
  *(v21 + v20 + v34) = v37;
  sub_222634290((v0 + 136), v21 + ((v20 + v34) & 0xFFFFFFFFFFFFFFF8) + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

  v23 = v36;
  v24 = sub_222738F2C();
  *(v0 + 656) = v24;
  v25 = sub_22273946C();
  (*(*(v25 - 8) + 56))(v38, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_222741538;
  v26[5] = v21;
  v26[6] = v24;

  sub_2226D4E54(0, 0, v38, &unk_222741540, v26);

  v27 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
  v28 = *(MEMORY[0x277D22390] + 4);
  v29 = swift_task_alloc();
  *(v0 + 664) = v29;
  *v29 = v0;
  v29[1] = sub_222662160;
  v30 = *(v0 + 416);

  return MEMORY[0x282180360](v30, v22, v27);
}

id sub_222662B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_22273919C();
  v5 = v4;
  v6 = sub_22273919C();
  v8 = v7;
  v9 = sub_22273919C();
  v2(v3, v5, v6, v8, v9, v10);

  v11 = sub_22273916C();

  return v11;
}

uint64_t sub_222662C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 808) = a6;
  *(v6 + 1268) = a5;
  *(v6 + 800) = a4;
  *(v6 + 792) = a3;
  *(v6 + 784) = a2;
  *(v6 + 776) = a1;
  v7 = sub_2227378CC();
  *(v6 + 816) = v7;
  v8 = *(v7 - 8);
  *(v6 + 824) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 832) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v6 + 840) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FB8, &qword_222741548) - 8) + 64) + 15;
  *(v6 + 848) = swift_task_alloc();
  v12 = sub_22273793C();
  *(v6 + 856) = v12;
  v13 = *(v12 - 8);
  *(v6 + 864) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 880) = swift_task_alloc();
  v15 = sub_2227377AC();
  *(v6 + 888) = v15;
  v16 = *(v15 - 8);
  *(v6 + 896) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 904) = swift_task_alloc();
  v18 = sub_222737C2C();
  *(v6 + 912) = v18;
  v19 = *(v18 - 8);
  *(v6 + 920) = v19;
  *(v6 + 928) = *(v19 + 64);
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = swift_task_alloc();
  v20 = sub_2227377BC();
  *(v6 + 960) = v20;
  v21 = *(v20 - 8);
  *(v6 + 968) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 976) = swift_task_alloc();
  v23 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v6 + 984) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222662F18, 0, 0);
}

uint64_t sub_222662F18()
{
  v1 = *(v0 + 784);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 800);
    v4 = *(v0 + 792);
    v5 = *(v0 + 784);
    sub_222634290((v0 + 56), v0 + 176);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
    *(v0 + 992) = type metadata accessor for ObjectGraph();
    sub_222738C9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137A0, &qword_222741D90);
    sub_222738C9C();
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    sub_222738C9C();
    v6 = *(v0 + 712);
    v7 = sub_22266B994(v6);
    *(v0 + 1000) = v7;

    sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
    sub_222738C9C();
    *(v0 + 1008) = *(v0 + 720);
    v8 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    sub_222738C9C();
    v9 = *(v0 + 728);
    *(v0 + 1016) = sub_2226FE348(v4, v3, v7, v9, *v8);

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
    v11 = sub_22266BC78(&qword_27D012FC8, &unk_27D014490, &qword_222741560);
    v12 = *(MEMORY[0x277D22390] + 4);
    v13 = swift_task_alloc();
    *(v0 + 1024) = v13;
    *v13 = v0;
    v13[1] = sub_2226631E8;

    return MEMORY[0x282180360](v0 + 768, v10, v11);
  }

  else
  {
    v14 = *(v0 + 784);
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_2226631E8()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  v2[129] = v0;

  v5 = v2[127];

  if (v0)
  {
    v6 = sub_222663324;
  }

  else
  {
    v2[130] = v2[96];
    v6 = sub_222663458;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222663324()
{
  v1 = *(v0 + 1000);

  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 952);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 904);
  v8 = *(v0 + 880);
  v9 = *(v0 + 872);
  v10 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 1032);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_222663458()
{
  if (qword_27D0129A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1040);
  v2 = *(v0 + 984);
  v45 = *(v0 + 952);
  v48 = *(v0 + 1032);
  v3 = sub_222738F6C();
  *(v0 + 1048) = v3;
  *(v0 + 1056) = __swift_project_value_buffer(v3, qword_27D019C68);
  *(v0 + 1064) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  *(v0 + 1072) = *(v4 + 72);
  *(v0 + 1264) = *(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v5 = [v1 id];
  *(v0 + 632) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  *(v0 + 608) = v5;
  sub_22273815C();
  sub_222660468(v0 + 608, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v6 = sub_2226EC744();
  *(v0 + 408) = MEMORY[0x277D837D0];
  *(v0 + 384) = v6;
  *(v0 + 392) = v7;
  sub_22273815C();
  sub_222660468(v0 + 384, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v8 = [v1 id];
  [v8 int64value];
  sub_222737C1C();
  v9 = *(v0 + 1040);
  v10 = *(v0 + 1008);
  if (v48)
  {
    v11 = *(v0 + 1000);

LABEL_5:
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v14 = *(v0 + 952);
    v15 = *(v0 + 944);
    v16 = *(v0 + 936);
    v17 = *(v0 + 904);
    v18 = *(v0 + 880);
    v19 = *(v0 + 872);
    v20 = *(v0 + 848);
    v46 = *(v0 + 840);
    v49 = *(v0 + 832);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(v0 + 976);
  v24 = *(v0 + 952);
  v25 = *(v0 + 880);
  v26 = *(v0 + 864);
  v47 = *(v0 + 856);
  v50 = *(v0 + 1268);
  v44 = *(v0 + 800);
  (*(*(v0 + 896) + 104))(*(v0 + 904), *MEMORY[0x277CEBFE8], *(v0 + 888));
  sub_22273778C();

  sub_22262E364(0, &qword_27D012FD0, 0x277CEC400);
  (*(v26 + 16))(v25, v44, v47);
  v27 = sub_2226AFCE4(v9, v10, v25, v50);
  *(v0 + 1080) = v27;
  if (!v27)
  {
    v51 = *(v0 + 1040);
    v38 = *(v0 + 1008);
    v39 = *(v0 + 1000);
    v40 = *(v0 + 976);
    v41 = *(v0 + 968);
    v42 = *(v0 + 960);
    v43 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    sub_22273799C();
    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 744) = 1;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_22266B710(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
    sub_22273725C();
    v52 = *(v0 + 736);
    swift_willThrow();

    (*(v41 + 8))(v40, v42);
    goto LABEL_5;
  }

  v28 = v27;
  v29 = *(v0 + 984);
  v30 = *(v0 + 808);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v31 = [v28 itemID];
  v32 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 1088) = v32;
  *(v0 + 312) = v32;
  *(v0 + 288) = v31;
  sub_22273815C();
  sub_222660468(v0 + 288, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v33 = v30[3];
  v34 = v30[4];
  __swift_project_boxed_opaque_existential_1(v30, v33);
  v35 = *(v34 + 8);
  v36 = *(MEMORY[0x277CEC120] + 4);
  v37 = swift_task_alloc();
  *(v0 + 1096) = v37;
  *v37 = v0;
  v37[1] = sub_222663B6C;

  return MEMORY[0x28213E4F0](v28, v33, v35);
}

uint64_t sub_222663B6C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1096);
  v6 = *v2;
  *(*v2 + 1104) = v1;

  if (v1)
  {
    v7 = sub_222665600;
  }

  else
  {
    *(v4 + 1269) = a1 & 1;
    v7 = sub_222663C98;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222663C98()
{
  v1 = *(v0 + 1269);
  v2 = *(v0 + 1064);
  v3 = ((*(v0 + 1264) + 32) & ~*(v0 + 1264)) + *(v0 + 1072);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1080);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1048);
  if (v1 == 1)
  {
    v54 = *(v0 + 1056);
    v55 = *(v0 + 1040);
    v8 = *(v0 + 984);
    v9 = *(v0 + 920);
    v56 = *(v0 + 912);
    v10 = *(v0 + 848);
    sub_2227381AC();
    sub_22273819C();
    v11 = [v5 itemID];
    *(v0 + 440) = v4;
    *(v0 + 416) = v11;
    sub_22273815C();
    sub_222660468(v0 + 416, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    sub_2226EC9A0(v10);
    if ((*(v9 + 48))(v10, 1, v56) == 1)
    {
      sub_222660468(*(v0 + 848), &qword_27D012FB8, &qword_222741548);
    }

    else
    {
      v14 = *(v0 + 992);
      v15 = *(v0 + 944);
      v16 = *(v0 + 936);
      v57 = *(v0 + 928);
      v17 = *(v0 + 920);
      v18 = *(v0 + 912);
      v19 = *(v0 + 840);
      v20 = *(v0 + 784);
      v21 = *(v17 + 32);
      v21(v15, *(v0 + 848), v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
      sub_222738C9C();
      v22 = sub_22273946C();
      (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      sub_22266BCCC(v0 + 216, v0 + 16);
      (*(v17 + 16))(v16, v15, v18);
      v23 = (*(v17 + 80) + 72) & ~*(v17 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      sub_222634290((v0 + 16), v24 + 32);
      v21(v24 + v23, v16, v18);
      sub_222697A98(0, 0, v19, &unk_222741580, v24);

      __swift_destroy_boxed_opaque_existential_1((v0 + 216));
      (*(v17 + 8))(v15, v18);
    }

    v25 = *(v0 + 1040);
    if (sub_2226ECFE0())
    {
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      v28 = *(v0 + 1072);
      v29 = *(v0 + 1064);
      v30 = *(v0 + 1056);
      v31 = *(v0 + 1048);
      v32 = *(v0 + 984);
      v33 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v34 = [v27 itemID];
      *(v0 + 472) = v26;
      *(v0 + 448) = v34;
      sub_22273815C();
      sub_222660468(v0 + 448, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C4C();

      v35 = *(v0 + 160);
      v36 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v35);
      v37 = *(MEMORY[0x277CEC110] + 4);
      v38 = swift_task_alloc();
      *(v0 + 1112) = v38;
      *v38 = v0;
      v38[1] = sub_2226643DC;

      return MEMORY[0x28213E4D8](0, v35, v36);
    }
  }

  else
  {
    v12 = *(v0 + 984);
    sub_2227381AC();
    sub_22273819C();
    v13 = [v5 itemID];
    *(v0 + 376) = v4;
    *(v0 + 352) = v13;
    sub_22273815C();
    sub_222660468(v0 + 352, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C7C();
  }

  if ([*(v0 + 1008) shouldInstallParentApp])
  {
    v39 = swift_task_alloc();
    *(v0 + 1168) = v39;
    *v39 = v0;
    v39[1] = sub_222664D60;
    v40 = *(v0 + 976);

    return sub_2226FF0A0(v40, v0 + 176);
  }

  else
  {
    v41 = *(v0 + 976);
    v42 = *(v0 + 968);
    v43 = *(v0 + 960);
    v44 = *(v0 + 200);
    v45 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
    v46 = *(v42 + 72);
    v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_2227412F0;
    (*(v42 + 16))(v48 + v47, v41, v43);
    v49 = sub_2226DCF44(v48);
    *(v0 + 1176) = v49;
    swift_setDeallocating();
    v50 = *(v42 + 8);
    *(v0 + 1184) = v50;
    *(v0 + 1192) = (v42 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v48 + v47, v43);
    swift_deallocClassInstance();
    v51 = *(MEMORY[0x277CEC0F0] + 4);
    v52 = swift_task_alloc();
    *(v0 + 1200) = v52;
    *v52 = v0;
    v52[1] = sub_222665004;

    return MEMORY[0x28213E418](v49, 0, v44, v45);
  }
}

uint64_t sub_2226643DC()
{
  v2 = *(*v1 + 1112);
  v5 = *v1;
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v3 = sub_222665920;
  }

  else
  {
    v3 = sub_2226644F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226644F0()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1064);
  v4 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 984);
  v7 = ((*(v0 + 1264) + 32) & ~*(v0 + 1264)) + *(v0 + 1072);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v8 = [v2 itemID];
  *(v0 + 600) = v1;
  *(v0 + 576) = v8;
  sub_22273815C();
  sub_222660468(v0 + 576, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v9 = *(v0 + 976);
  v10 = *(v0 + 968);
  v11 = *(v0 + 960);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v14 = *(v10 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2227412F0;
  (*(v10 + 16))(v16 + v15, v9, v11);
  v17 = sub_2226DCF44(v16);
  *(v0 + 1128) = v17;
  swift_setDeallocating();
  v18 = *(v10 + 8);
  *(v0 + 1136) = v18;
  *(v0 + 1144) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v16 + v15, v11);
  swift_deallocClassInstance();
  v19 = *(MEMORY[0x277CEC0F0] + 4);
  v20 = swift_task_alloc();
  *(v0 + 1152) = v20;
  *v20 = v0;
  v20[1] = sub_222664768;

  return MEMORY[0x28213E418](v17, 0, v12, v13);
}

uint64_t sub_222664768()
{
  v2 = *v1;
  v3 = *(*v1 + 1152);
  v7 = *v1;
  *(*v1 + 1160) = v0;

  if (v0)
  {
    v4 = sub_222665C38;
  }

  else
  {
    v5 = *(v2 + 1128);

    v4 = sub_222664884;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222664884()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v55 = *(v0 + 856);
  v57 = *(v0 + 864);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v49 = *(v0 + 1040);
  v52 = *(v0 + 816);
  v6 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();
  v7 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_2227113C0();
  sub_2227379EC();
  (*(v5 + 8))(v4, v52);
  v8 = *(v57 + 104);
  v8(v2, *MEMORY[0x277CEC0B0], v55);
  v9 = MEMORY[0x223DBCC40](v3, v2);
  v10 = *(v57 + 8);
  v10(v2, v55);
  if (v9)
  {
    v53 = v8;
    v56 = v10;
    v11 = *(v0 + 1088);
    v12 = *(v0 + 1080);
    v13 = *(v0 + 1072);
    v14 = *(v0 + 1064);
    v15 = *(v0 + 1056);
    v16 = *(v0 + 1048);
    v17 = *(v0 + 1040);
    v18 = *(v0 + 984);
    v19 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v20 = [v12 itemID];
    *(v0 + 568) = v11;
    *(v0 + 544) = v20;
    sub_22273815C();
    sub_222660468(v0 + 544, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    LOBYTE(v11) = [v17 flags];
    v46 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    v21 = sub_22273783C();
    v22 = *(v0 + 1080);
    v47 = *(v0 + 1008);
    v48 = *(v0 + 1040);
    v23 = *(v0 + 1000);
    v24 = *(v0 + 976);
    v25 = *(v0 + 880);
    v50 = *(v0 + 872);
    v26 = *(v0 + 856);
    if ((v11 & 8) != 0)
    {
      v27 = MEMORY[0x277CEC038];
    }

    else
    {
      v27 = MEMORY[0x277CEC040];
    }

    (*(*(v21 - 8) + 104))(v25, *v27, v21);
    v53(v25, *MEMORY[0x277CEC0D0], v26);
    sub_22273794C();

    v56(v25, v26);
    v56(v50, v26);
  }

  else
  {
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1040);
    v30 = *(v0 + 1008);
    v31 = *(v0 + 872);
    v32 = *(v0 + 856);

    v10(v31, v32);
  }

  v33 = *(v0 + 1144);
  v34 = *(v0 + 984);
  v35 = *(v0 + 952);
  v36 = *(v0 + 944);
  v37 = *(v0 + 936);
  v38 = *(v0 + 904);
  v39 = *(v0 + 880);
  v51 = *(v0 + 872);
  v54 = *(v0 + 848);
  v40 = *(v0 + 840);
  v58 = *(v0 + 832);
  v41 = *(v0 + 776);
  (*(v0 + 1136))(*(v0 + 976), *(v0 + 960));
  v42 = *MEMORY[0x277D21CA8];
  v43 = sub_2227383CC();
  (*(*(v43 - 8) + 104))(v41, v42, v43);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_222664D60()
{
  v1 = *(*v0 + 1168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222664E5C, 0, 0);
}

uint64_t sub_222664E5C()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 968);

  v5 = *(v0 + 984);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = *(v0 + 936);
  v9 = *(v0 + 904);
  v10 = *(v0 + 880);
  v17 = *(v0 + 872);
  v18 = *(v0 + 848);
  v11 = *(v0 + 840);
  v19 = *(v0 + 832);
  v12 = *(v0 + 776);
  (*(v4 + 8))(*(v0 + 976), *(v0 + 960));
  v13 = *MEMORY[0x277D21CA8];
  v14 = sub_2227383CC();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_222665004()
{
  v2 = *v1;
  v3 = *(*v1 + 1200);
  v7 = *v1;
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v4 = sub_222665F60;
  }

  else
  {
    v5 = *(v2 + 1176);

    v4 = sub_222665120;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222665120()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1008);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 976);
  v6 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();

  v7 = *(v0 + 1192);
  v8 = *(v0 + 984);
  v9 = *(v0 + 952);
  v10 = *(v0 + 944);
  v11 = *(v0 + 936);
  v12 = *(v0 + 904);
  v13 = *(v0 + 880);
  v20 = *(v0 + 872);
  v21 = *(v0 + 848);
  v14 = *(v0 + 840);
  v22 = *(v0 + 832);
  v15 = *(v0 + 776);
  (*(v0 + 1184))(*(v0 + 976), *(v0 + 960));
  v16 = *MEMORY[0x277D21CA8];
  v17 = sub_2227383CC();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2226652F0()
{
  v2 = *v1;
  v3 = *(*v1 + 1248);
  v4 = *v1;
  *(*v1 + 1256) = v0;

  v5 = *(v2 + 1224);

  if (v0)
  {
    v6 = sub_222666288;
  }

  else
  {
    v6 = sub_222665424;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222665424()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1040);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 976);
  v7 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
  sub_22273799C();

  v8 = *(v0 + 1240);
  v9 = *(v0 + 984);
  v10 = *(v0 + 952);
  v11 = *(v0 + 944);
  v12 = *(v0 + 936);
  v13 = *(v0 + 904);
  v14 = *(v0 + 880);
  v21 = *(v0 + 872);
  v22 = *(v0 + 848);
  v15 = *(v0 + 840);
  v23 = *(v0 + 832);
  v16 = *(v0 + 776);
  (*(v0 + 1232))(*(v0 + 976), *(v0 + 960));
  v17 = *MEMORY[0x277D21CA8];
  v18 = sub_2227383CC();
  (*(*(v18 - 8) + 104))(v16, v17, v18);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_222665600()
{
  *(v0 + 1216) = *(v0 + 1104);
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1064);
  v23 = *(v0 + 1056);
  v5 = *(v0 + 1048);
  v6 = *(v0 + 984);
  v7 = *(v0 + 968);
  v24 = *(v0 + 960);
  v25 = *(v0 + 976);
  v8 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9 = [v2 itemID];
  *(v0 + 280) = v1;
  *(v0 + 256) = v9;
  sub_22273815C();
  sub_222660468(v0 + 256, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v10 = *(v0 + 664);
  v11 = *(v0 + 672);
  *(v0 + 344) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  sub_22273816C();
  sub_222660468(v0 + 320, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v13 = *(v0 + 200);
  v14 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v15 = *(v7 + 72);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2227412F0;
  (*(v7 + 16))(v17 + v16, v25, v24);
  v18 = sub_2226DCF44(v17);
  *(v0 + 1224) = v18;
  swift_setDeallocating();
  v19 = *(v7 + 8);
  *(v0 + 1232) = v19;
  *(v0 + 1240) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v17 + v16, v24);
  swift_deallocClassInstance();
  v20 = *(MEMORY[0x277CEC0F0] + 4);
  v21 = swift_task_alloc();
  *(v0 + 1248) = v21;
  *v21 = v0;
  v21[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v18, 0, v13, v14);
}

uint64_t sub_222665920()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v26 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 984);
  v8 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9 = [v3 itemID];
  *(v0 + 504) = v2;
  *(v0 + 480) = v9;
  sub_22273815C();
  sub_222660468(v0 + 480, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v10 = *(v0 + 688);
  v11 = *(v0 + 696);
  *(v0 + 536) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 512));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  sub_22273816C();
  sub_222660468(v0 + 512, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  v15 = *(v0 + 960);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v18 = *(v14 + 72);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2227412F0;
  (*(v14 + 16))(v20 + v19, v13, v15);
  v21 = sub_2226DCF44(v20);
  *(v0 + 1128) = v21;
  swift_setDeallocating();
  v22 = *(v14 + 8);
  *(v0 + 1136) = v22;
  *(v0 + 1144) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v20 + v19, v15);
  swift_deallocClassInstance();
  v23 = *(MEMORY[0x277CEC0F0] + 4);
  v24 = swift_task_alloc();
  *(v0 + 1152) = v24;
  *v24 = v0;
  v24[1] = sub_222664768;

  return MEMORY[0x28213E418](v21, 0, v16, v17);
}

uint64_t sub_222665C38()
{
  v1 = *(v0 + 1128);

  *(v0 + 1216) = *(v0 + 1160);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v24 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 984);
  v8 = *(v0 + 968);
  v9 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
  v25 = *(v0 + 960);
  v26 = *(v0 + 976);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10 = [v3 itemID];
  *(v0 + 280) = v2;
  *(v0 + 256) = v10;
  sub_22273815C();
  sub_222660468(v0 + 256, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v11 = *(v0 + 664);
  v12 = *(v0 + 672);
  *(v0 + 344) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  sub_22273816C();
  sub_222660468(v0 + 320, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v16 = *(v8 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2227412F0;
  (*(v8 + 16))(v18 + v17, v26, v25);
  v19 = sub_2226DCF44(v18);
  *(v0 + 1224) = v19;
  swift_setDeallocating();
  v20 = *(v8 + 8);
  *(v0 + 1232) = v20;
  *(v0 + 1240) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v18 + v17, v25);
  swift_deallocClassInstance();
  v21 = *(MEMORY[0x277CEC0F0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 1248) = v22;
  *v22 = v0;
  v22[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v19, 0, v14, v15);
}

uint64_t sub_222665F60()
{
  v1 = *(v0 + 1176);

  *(v0 + 1216) = *(v0 + 1208);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  v24 = *(v0 + 1056);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 984);
  v8 = *(v0 + 968);
  v9 = (*(v0 + 1264) + 32) & ~*(v0 + 1264);
  v25 = *(v0 + 960);
  v26 = *(v0 + 976);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10 = [v3 itemID];
  *(v0 + 280) = v2;
  *(v0 + 256) = v10;
  sub_22273815C();
  sub_222660468(v0 + 256, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v11 = *(v0 + 664);
  v12 = *(v0 + 672);
  *(v0 + 344) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  sub_22273816C();
  sub_222660468(v0 + 320, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FD8, &qword_222741568);
  v16 = *(v8 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2227412F0;
  (*(v8 + 16))(v18 + v17, v26, v25);
  v19 = sub_2226DCF44(v18);
  *(v0 + 1224) = v19;
  swift_setDeallocating();
  v20 = *(v8 + 8);
  *(v0 + 1232) = v20;
  *(v0 + 1240) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v18 + v17, v25);
  swift_deallocClassInstance();
  v21 = *(MEMORY[0x277CEC0F0] + 4);
  v22 = swift_task_alloc();
  *(v0 + 1248) = v22;
  *v22 = v0;
  v22[1] = sub_2226652F0;

  return MEMORY[0x28213E418](v19, 0, v14, v15);
}

uint64_t sub_222666288()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1008);
  v7 = *(v0 + 976);
  v8 = *(v0 + 960);

  v2(v7, v8);
  v9 = *(v0 + 984);
  v10 = *(v0 + 976);
  v11 = *(v0 + 952);
  v12 = *(v0 + 944);
  v13 = *(v0 + 936);
  v14 = *(v0 + 904);
  v15 = *(v0 + 880);
  v16 = *(v0 + 872);
  v17 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 1256);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2226663F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_222666418, 0, 0);
}

uint64_t sub_222666418()
{
  v1 = *(v0 + 32);
  v2 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = sub_222737BFC();
  *(v0 + 40) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_2226664D0;

  return sub_2226F910C(v3);
}

uint64_t sub_2226664D0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);
  v7 = *v2;

  v8 = *(v4 + 40);
  if (v1)
  {

    v9 = sub_22266663C;
  }

  else
  {

    *(v5 + 56) = a1;
    v9 = sub_22266661C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_222666658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = sub_2227373FC();
  v4[39] = v5;
  v6 = *(v5 - 8);
  v4[40] = v6;
  v7 = *(v6 + 64) + 15;
  v4[41] = swift_task_alloc();
  v8 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v9 = sub_22273784C();
  v4[43] = v9;
  v10 = *(v9 - 8);
  v4[44] = v10;
  v11 = *(v10 + 64) + 15;
  v4[45] = swift_task_alloc();
  v12 = sub_2227378CC();
  v4[46] = v12;
  v13 = *(v12 - 8);
  v4[47] = v13;
  v14 = *(v13 + 64) + 15;
  v4[48] = swift_task_alloc();
  v15 = sub_22273793C();
  v4[49] = v15;
  v16 = *(v15 - 8);
  v4[50] = v16;
  v17 = *(v16 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v18 = sub_2227377AC();
  v4[53] = v18;
  v19 = *(v18 - 8);
  v4[54] = v19;
  v20 = *(v19 + 64) + 15;
  v4[55] = swift_task_alloc();
  v21 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v22 = sub_2227377BC();
  v4[57] = v22;
  v23 = *(v22 - 8);
  v4[58] = v23;
  v24 = *(v23 + 64) + 15;
  v4[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22266694C, 0, 0);
}

uint64_t sub_22266694C()
{
  v1 = *(v0 + 288);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 448);
    v4 = *(v0 + 296);
    sub_222634290((v0 + 56), v0 + 16);
    v5 = [v4 id];
    [v5 int64value];
    sub_222737C1C();
    v6 = *(v0 + 472);
    v7 = *(v0 + 448);
    v10 = *(v0 + 416);
    v38 = *(v0 + 392);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    v33 = *(v0 + 368);
    v34 = *(v0 + 400);
    v36 = *(v0 + 408);
    v37 = *(v0 + 360);
    v39 = *(v0 + 352);
    v40 = *(v0 + 344);
    v35 = *(v0 + 296);
    (*(*(v0 + 432) + 104))(*(v0 + 440), *MEMORY[0x277CEBFE8], *(v0 + 424));
    sub_22273778C();

    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_2227113C0();
    sub_2227379EC();
    (*(v11 + 8))(v12, v33);
    v14 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    (*(v34 + 16))(v36, v10, v38);
    sub_22273785C();
    sub_22273798C();
    (*(v39 + 8))(v37, v40);
    v15 = [v35 bundleID];
    v16 = v15;
    if (!v15)
    {
      sub_22273919C();
      v16 = sub_22273916C();
    }

    v17 = [objc_allocWithZone(MEMORY[0x277CEC4B0]) initWithBundleID_];
    *(v0 + 480) = v17;

    [v17 setUserInitiated_];
    if (qword_27D0129A0 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 336);
    v19 = *(v0 + 304);
    v20 = sub_222738F6C();
    *(v0 + 488) = v20;
    *(v0 + 496) = __swift_project_value_buffer(v20, qword_27D019C68);
    *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v21 = *(sub_2227381FC() - 8);
    *(v0 + 512) = *(v21 + 72);
    *(v0 + 536) = *(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v22 = [v17 bundleID];
    v23 = sub_22273919C();
    v25 = v24;

    *(v0 + 120) = MEMORY[0x277D837D0];
    *(v0 + 96) = v23;
    *(v0 + 104) = v25;
    sub_22273815C();
    sub_222660468(v0 + 96, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v26 = v19[3];
    v27 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v26);
    v28 = *(v27 + 8);
    v29 = *(MEMORY[0x277CEC128] + 4);
    v30 = v17;
    v31 = swift_task_alloc();
    *(v0 + 520) = v31;
    *v31 = v0;
    v31[1] = sub_222666F2C;
    v32 = *(v0 + 328);

    return MEMORY[0x28213E4F8](v32, v30, v26, v28);
  }

  else
  {
    v8 = *(v0 + 288);
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222666F2C()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v7 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_222667324;
  }

  else
  {
    v5 = v2[60];
    (*(v2[40] + 8))(v2[41], v2[39]);

    v4 = sub_222667060;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222667060()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 488);
  v2 = *(v0 + 496);
  v4 = *(v0 + 480);
  v5 = *(v0 + 336);
  v6 = ((*(v0 + 536) + 32) & ~*(v0 + 536)) + *(v0 + 512);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v7 = [v4 bundleID];
  v8 = sub_22273919C();
  v10 = v9;

  *(v0 + 216) = MEMORY[0x277D837D0];
  *(v0 + 192) = v8;
  *(v0 + 200) = v10;
  sub_22273815C();
  sub_222660468(v0 + 192, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v11 = *(v0 + 472);
  v12 = *(v0 + 480);
  v13 = *(v0 + 464);
  v24 = *(v0 + 448);
  v25 = *(v0 + 440);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);
  v16 = *(v0 + 400);
  v26 = *(v0 + 408);
  v27 = *(v0 + 384);
  v28 = *(v0 + 360);
  v29 = *(v0 + 336);
  v30 = *(v0 + 328);
  v22 = *(v0 + 456);
  v23 = *(v0 + 280);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22273799C();

  (*(v16 + 8))(v14, v15);
  (*(v13 + 8))(v11, v22);
  v18 = *MEMORY[0x277D21CA8];
  v19 = sub_2227383CC();
  (*(*(v19 - 8) + 104))(v23, v18, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_222667324()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 536);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v34 = *(v0 + 496);
  v6 = *(v0 + 480);
  v7 = *(v0 + 336);

  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v8 = [v6 bundleID];
  v9 = sub_22273919C();
  v11 = v10;

  *(v0 + 152) = MEMORY[0x277D837D0];
  *(v0 + 128) = v9;
  *(v0 + 136) = v11;
  sub_22273815C();
  sub_222660468(v0 + 128, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  *(v0 + 184) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 160));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v12, v13);
  sub_22273816C();
  sub_222660468(v0 + 160, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v15 = *(v0 + 472);
  v16 = *(v0 + 480);
  v17 = *(v0 + 464);
  v28 = *(v0 + 448);
  v29 = *(v0 + 440);
  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  v20 = *(v0 + 400);
  v30 = *(v0 + 408);
  v31 = *(v0 + 384);
  v32 = *(v0 + 360);
  v33 = *(v0 + 336);
  v35 = *(v0 + 328);
  v26 = *(v0 + 456);
  v27 = *(v0 + 280);
  v21 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_22273799C();

  (*(v20 + 8))(v18, v19);
  (*(v17 + 8))(v15, v26);
  v22 = *MEMORY[0x277D21CA8];
  v23 = sub_2227383CC();
  (*(*(v23 - 8) + 104))(v27, v22, v23);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_222667678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  v3[53] = swift_task_alloc();
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v3[54] = swift_task_alloc();
  v6 = type metadata accessor for AppLaunchTrampolineAction();
  v3[55] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v3[57] = v8;
  v9 = *(v8 - 8);
  v3[58] = v9;
  v10 = *(v9 + 64) + 15;
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v11 = sub_22273731C();
  v3[61] = v11;
  v12 = *(v11 - 8);
  v3[62] = v12;
  v13 = *(v12 + 64) + 15;
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v14 = type metadata accessor for OpenAppAction();
  v3[65] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[66] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v3[67] = v16;
  v17 = *(v16 - 8);
  v3[68] = v17;
  v18 = *(v17 + 64) + 15;
  v3[69] = swift_task_alloc();
  v19 = sub_22273786C();
  v3[70] = v19;
  v20 = *(v19 - 8);
  v3[71] = v20;
  v21 = *(v20 + 64) + 15;
  v3[72] = swift_task_alloc();
  v22 = sub_22273782C();
  v3[73] = v22;
  v23 = *(v22 - 8);
  v3[74] = v23;
  v24 = *(v23 + 64) + 15;
  v3[75] = swift_task_alloc();
  v25 = sub_2227378CC();
  v3[76] = v25;
  v26 = *(v25 - 8);
  v3[77] = v26;
  v27 = *(v26 + 64) + 15;
  v3[78] = swift_task_alloc();
  v28 = sub_2227377AC();
  v3[79] = v28;
  v29 = *(v28 - 8);
  v3[80] = v29;
  v30 = *(v29 + 64) + 15;
  v3[81] = swift_task_alloc();
  v31 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v32 = sub_2227377BC();
  v3[83] = v32;
  v33 = *(v32 - 8);
  v3[84] = v33;
  v34 = *(v33 + 64) + 15;
  v3[85] = swift_task_alloc();
  v35 = sub_22273793C();
  v3[86] = v35;
  v36 = *(v35 - 8);
  v3[87] = v36;
  v37 = *(v36 + 64) + 15;
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222667B48, 0, 0);
}

uint64_t sub_222667B48()
{
  v1 = *(v0 + 408);
  v2 = qword_281313EB8;
  swift_beginAccess();
  sub_2226603F8(v1 + v2, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 656);
    v4 = *(v0 + 416);
    sub_222634290((v0 + 56), v0 + 16);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v6 = [v4 id];
    [v6 int64value];
    sub_222737C1C();
    v138 = *(v0 + 712);
    v9 = *(v0 + 696);
    v145 = *(v0 + 688);
    v148 = *(v0 + 704);
    v10 = *(v0 + 680);
    v11 = *(v0 + 672);
    v142 = *(v0 + 664);
    v12 = *(v0 + 656);
    v13 = *(v0 + 624);
    v14 = *(v0 + 616);
    v135 = *(v0 + 608);
    v132 = *(v0 + 416);
    (*(*(v0 + 640) + 104))(*(v0 + 648), *MEMORY[0x277CEBFE8], *(v0 + 632));
    sub_22273778C();

    sub_2227113C0();
    sub_2227379EC();
    (*(v14 + 8))(v13, v135);
    (*(v11 + 8))(v10, v142);
    (*(v9 + 16))(v148, v138, v145);
    v15 = (*(v9 + 88))(v148, v145);
    if (v15 == *MEMORY[0x277CEC0B8])
    {
      (*(*(v0 + 696) + 96))(*(v0 + 704), *(v0 + 688));
      v16 = swift_task_alloc();
      *(v0 + 720) = v16;
      *v16 = v0;
      v17 = sub_222668CD0;
LABEL_11:
      v16[1] = v17;
      v19 = *(v0 + 408);
      v18 = *(v0 + 416);
      v20 = *(v0 + 400);

      return sub_22266AC00(v20, v18, v19);
    }

    if (v15 == *MEMORY[0x277CEC090])
    {
      v21 = *(v0 + 704);
      v22 = *(v0 + 600);
      v23 = *(v0 + 592);
      v24 = *(v0 + 584);
      (*(*(v0 + 696) + 96))(v21, *(v0 + 688));
      (*(v23 + 32))(v22, v21, v24);
      v25 = sub_2226AAD28();
      if (!v25)
      {
        v16 = swift_task_alloc();
        *(v0 + 736) = v16;
        *v16 = v0;
        v17 = sub_222668F90;
        goto LABEL_11;
      }

      v26 = *(v0 + 712);
      v27 = *(v0 + 696);
      v28 = *(v0 + 688);
      v29 = *(v0 + 600);
      v30 = *(v0 + 592);
      v31 = *(v0 + 584);
      v32 = *(v0 + 400);
      v33 = v25;
      [v25 resume];

      (*(v30 + 8))(v29, v31);
      (*(v27 + 8))(v26, v28);
      v34 = *MEMORY[0x277D21CA8];
      v35 = sub_2227383CC();
      (*(*(v35 - 8) + 104))(v32, v34, v35);
      v36 = *(v0 + 712);
      v37 = *(v0 + 704);
      v38 = *(v0 + 680);
      v39 = *(v0 + 656);
      v40 = *(v0 + 648);
      v41 = *(v0 + 624);
      v42 = *(v0 + 600);
      v43 = *(v0 + 576);
      v44 = *(v0 + 552);
      v133 = *(v0 + 528);
      v134 = *(v0 + 512);
      v136 = *(v0 + 504);
      v139 = *(v0 + 480);
      v140 = *(v0 + 472);
      v143 = *(v0 + 448);
      v146 = *(v0 + 432);
      v149 = *(v0 + 424);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));

      v45 = *(v0 + 8);

      return v45();
    }

    else if (v15 == *MEMORY[0x277CEC0C0])
    {
      v46 = *(v0 + 704);
      v47 = *(v0 + 576);
      v48 = *(v0 + 568);
      v49 = *(v0 + 560);
      v50 = *(v0 + 552);
      v51 = *(v0 + 536);
      v52 = *(v0 + 528);
      v150 = *(v0 + 520);
      v54 = *(v0 + 408);
      v53 = *(v0 + 416);
      (*(*(v0 + 696) + 96))(v46, *(v0 + 688));
      (*(v48 + 32))(v47, v46, v49);
      type metadata accessor for ObjectGraph();
      sub_222738C9C();
      sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
      v55 = sub_222738C9C();
      v56 = *(v0 + 392);
      *(v0 + 752) = v56;
      sub_2226605E0(v55);
      v57 = [v53 id];
      (*(v48 + 16))(v52 + v150[6], v47, v49);
      v58 = [v53 flags];
      *(v52 + v150[5]) = v57;
      *(v52 + v150[7]) = (v58 & 0x2000) != 0;
      v59 = [v56 externalDeepLinkURL];
      v60 = *(v0 + 528);
      if (v59)
      {
        v62 = *(v0 + 504);
        v61 = *(v0 + 512);
        v64 = *(v0 + 488);
        v63 = *(v0 + 496);
        v137 = *(v0 + 520);
        v141 = *(v0 + 528);
        v144 = *(v0 + 464);
        v65 = *(v0 + 448);
        v147 = *(v0 + 456);
        v151 = *(v0 + 472);
        v66 = *(v0 + 440);
        v67 = *(v0 + 416);
        v68 = v59;
        sub_2227372FC();

        (*(v63 + 32))(v61, v62, v64);
        v69 = [v67 bundleID];
        v70 = sub_22273919C();
        v72 = v71;

        v73 = v66[5];
        (*(v63 + 16))(v65 + v73, v61, v64);
        (*(v63 + 56))(v65 + v73, 0, 1, v64);
        LOBYTE(v61) = [v56 universalLinkRequired];
        v74 = (v65 + v66[7]);
        v74[3] = v137;
        v74[4] = sub_22266B710(&qword_27D012F88, type metadata accessor for OpenAppAction);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
        v76 = sub_22266B758(v141, boxed_opaque_existential_1, type metadata accessor for OpenAppAction);
        v77 = v65 + v66[8];
        sub_2226605E0(v76);
        *v65 = v70;
        v65[1] = v72;
        *(v65 + v66[6]) = v61;
        *(v0 + 320) = v66;
        *(v0 + 328) = sub_22266B710(&qword_27D012F90, type metadata accessor for AppLaunchTrampolineAction);
        v78 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
        sub_22266B758(v65, v78, type metadata accessor for AppLaunchTrampolineAction);
        (*(v144 + 104))(v151, *MEMORY[0x277D21E18], v147);
        v79 = *(MEMORY[0x277D21E20] + 4);
        v80 = swift_task_alloc();
        *(v0 + 776) = v80;
        *v80 = v0;
        v80[1] = sub_222669384;
        v81 = *(v0 + 552);
        v82 = *(v0 + 536);
        v83 = *(v0 + 472);
        v84 = *(v0 + 400);
        v85 = *(v0 + 408);
        v86 = v0 + 296;
      }

      else
      {
        v118 = *(v0 + 480);
        v120 = *(v0 + 456);
        v119 = *(v0 + 464);
        *(v0 + 280) = *(v0 + 520);
        *(v0 + 288) = sub_22266B710(&qword_27D012F88, type metadata accessor for OpenAppAction);
        v121 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
        sub_22266B758(v60, v121, type metadata accessor for OpenAppAction);
        (*(v119 + 104))(v118, *MEMORY[0x277D21E18], v120);
        v122 = *(MEMORY[0x277D21E20] + 4);
        v123 = swift_task_alloc();
        *(v0 + 760) = v123;
        *v123 = v0;
        v123[1] = sub_222669238;
        v124 = *(v0 + 552);
        v82 = *(v0 + 536);
        v83 = *(v0 + 480);
        v84 = *(v0 + 400);
        v85 = *(v0 + 408);
        v86 = v0 + 256;
      }

      return MEMORY[0x28217F468](v84, v86, v83, v85, v82);
    }

    else
    {
      v87 = *(v0 + 408);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FA0, &qword_2227414C8);
      type metadata accessor for ObjectGraph();
      sub_222738C9C();
      if (*(*__swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120)) + 16))
      {
        v89 = *(v0 + 408);
        v88 = *(v0 + 416);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013280, &qword_2227414E0);
        sub_222738C9C();
        v90 = *(v0 + 168);
        __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
        v91 = [v88 bundleID];
        sub_22273919C();

        v92 = *(v90 + 8);
        LOBYTE(v89) = sub_222737AFC();

        v94 = *(v0 + 416);
        v93 = *(v0 + 424);
        v95 = *(v0 + 408);
        v96 = v0 + 136;
        if (v89)
        {
          sub_22266BCCC(v96, v0 + 216);
          v97 = swift_allocObject();
          *(v97 + 16) = v95;
          *(v97 + 24) = v94;
          sub_222634290((v0 + 216), v97 + 32);
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

          v99 = v94;
          v100 = sub_222738F2C();
          *(v0 + 808) = v100;
          v101 = sub_22273946C();
          (*(*(v101 - 8) + 56))(v93, 1, 1, v101);
          v102 = swift_allocObject();
          v102[2] = 0;
          v102[3] = 0;
          v102[4] = &unk_222741508;
          v102[5] = v97;
          v102[6] = v100;

          sub_2226D4E54(0, 0, v93, &unk_222741510, v102);

          v103 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
          v104 = *(MEMORY[0x277D22390] + 4);
          v105 = swift_task_alloc();
          *(v0 + 816) = v105;
          *v105 = v0;
          v106 = sub_222669B90;
        }

        else
        {
          sub_22266BCCC(v96, v0 + 176);
          v125 = swift_allocObject();
          *(v125 + 16) = v95;
          *(v125 + 24) = v94;
          sub_222634290((v0 + 176), v125 + 32);
          *(v125 + 72) = 0;
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);

          v126 = v94;
          v127 = sub_222738F2C();
          *(v0 + 832) = v127;
          v128 = sub_22273946C();
          (*(*(v128 - 8) + 56))(v93, 1, 1, v128);
          v129 = swift_allocObject();
          v129[2] = 0;
          v129[3] = 0;
          v129[4] = &unk_2227414F0;
          v129[5] = v125;
          v129[6] = v127;

          sub_2226D4E54(0, 0, v93, &unk_2227414F8, v129);

          v103 = sub_22266BC78(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
          v130 = *(MEMORY[0x277D22390] + 4);
          v105 = swift_task_alloc();
          *(v0 + 840) = v105;
          *v105 = v0;
          v106 = sub_22266A004;
        }

        v105[1] = v106;
        v131 = *(v0 + 400);

        return MEMORY[0x282180360](v131, v98, v103);
      }

      else
      {
        if (qword_27D0129A0 != -1)
        {
          swift_once();
        }

        v107 = *(v0 + 432);
        v108 = *(v0 + 416);
        v109 = sub_222738F6C();
        __swift_project_value_buffer(v109, qword_27D019C68);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v110 = *(sub_2227381FC() - 8);
        v111 = *(v110 + 72);
        v112 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        *(swift_allocObject() + 16) = xmmword_2227412F0;
        sub_2227381AC();
        sub_22273819C();
        v113 = [v108 id];
        *(v0 + 360) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        *(v0 + 336) = v113;
        sub_22273815C();
        sub_222660468(v0 + 336, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C7C();

        v114 = swift_task_alloc();
        *(v0 + 792) = v114;
        *v114 = v0;
        v114[1] = sub_2226698E8;
        v116 = *(v0 + 408);
        v115 = *(v0 + 416);
        v117 = *(v0 + 400);

        return sub_22266BE94(v117, v115, v116);
      }
    }
  }

  else
  {
    v8 = *(v0 + 408);
    sub_222660468(v0 + 56, &unk_27D013120, &unk_222741980);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);

    return sub_22273851C();
  }
}

uint64_t sub_222668CD0()
{
  v2 = *(*v1 + 720);
  v5 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_22266A2DC;
  }

  else
  {
    v3 = sub_222668DE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222668DE4()
{
  v1 = v0[88];
  (*(v0[87] + 8))(v0[89], v0[86]);
  v2 = sub_22273784C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[85];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[78];
  v9 = v0[75];
  v10 = v0[72];
  v11 = v0[69];
  v14 = v0[66];
  v15 = v0[64];
  v16 = v0[63];
  v17 = v0[60];
  v18 = v0[59];
  v19 = v0[56];
  v20 = v0[54];
  v21 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_222668F90()
{
  v2 = *(*v1 + 736);
  v5 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v3 = sub_22266A490;
  }

  else
  {
    v3 = sub_2226690A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226690A4()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  (*(v0[74] + 8))(v0[75], v0[73]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[66];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[54];
  v22 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_222669238()
{
  v2 = *v1;
  v3 = (*v1)[95];
  v6 = *v1;
  (*v1)[96] = v0;

  (*(v2[58] + 8))(v2[60], v2[57]);
  if (v0)
  {
    v4 = sub_22266A868;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 32);
    v4 = sub_2226696FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222669384()
{
  v2 = *v1;
  v3 = (*v1)[97];
  v6 = *v1;
  (*v1)[98] = v0;

  (*(v2[58] + 8))(v2[59], v2[57]);
  if (v0)
  {
    v4 = sub_22266A62C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 37);
    v4 = sub_2226694D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2226694D0()
{
  v1 = *(v0 + 696);
  v30 = *(v0 + 688);
  v32 = *(v0 + 712);
  v2 = *(v0 + 568);
  v26 = *(v0 + 560);
  v28 = *(v0 + 576);
  v24 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 512);
  v8 = *(v0 + 488);
  v7 = *(v0 + 496);
  v9 = *(v0 + 448);

  sub_22266B7C0(v9, type metadata accessor for AppLaunchTrampolineAction);
  (*(v7 + 8))(v6, v8);
  sub_22266B7C0(v5, type metadata accessor for OpenAppAction);
  (*(v3 + 8))(v24, v4);
  (*(v2 + 8))(v28, v26);
  (*(v1 + 8))(v32, v30);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 680);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 624);
  v16 = *(v0 + 600);
  v17 = *(v0 + 576);
  v18 = *(v0 + 552);
  v21 = *(v0 + 528);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v25 = *(v0 + 480);
  v27 = *(v0 + 472);
  v29 = *(v0 + 448);
  v31 = *(v0 + 432);
  v33 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2226696FC()
{
  v28 = *(v0 + 712);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);

  sub_22266B7C0(v9, type metadata accessor for OpenAppAction);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v28, v2);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 680);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 624);
  v16 = *(v0 + 600);
  v17 = *(v0 + 576);
  v18 = *(v0 + 552);
  v21 = *(v0 + 528);
  v22 = *(v0 + 512);
  v23 = *(v0 + 504);
  v24 = *(v0 + 480);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);
  v27 = *(v0 + 432);
  v29 = *(v0 + 424);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2226698E8()
{
  v2 = *(*v1 + 792);
  v5 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {
    v3 = sub_22266AA64;
  }

  else
  {
    v3 = sub_2226699FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226699FC()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[66];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[54];
  v22 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_222669B90()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  *(*v1 + 824) = v0;

  v5 = *(v2 + 808);

  if (v0)
  {
    v6 = sub_222669E60;
  }

  else
  {
    v6 = sub_222669CC4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222669CC4()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[66];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[54];
  v22 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_222669E60()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  v23 = v0[103];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[66];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[54];
  v22 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22266A004()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;
  *(*v1 + 848) = v0;

  v5 = *(v2 + 832);

  if (v0)
  {
    v6 = sub_22266A138;
  }

  else
  {
    v6 = sub_22266BE28;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22266A138()
{
  v1 = v0[88];
  v2 = v0[86];
  v3 = *(v0[87] + 8);
  v3(v0[89], v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3(v1, v2);
  v23 = v0[106];
  v4 = v0[89];
  v5 = v0[88];
  v6 = v0[85];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[78];
  v10 = v0[75];
  v11 = v0[72];
  v12 = v0[69];
  v15 = v0[66];
  v16 = v0[64];
  v17 = v0[63];
  v18 = v0[60];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[54];
  v22 = v0[53];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}