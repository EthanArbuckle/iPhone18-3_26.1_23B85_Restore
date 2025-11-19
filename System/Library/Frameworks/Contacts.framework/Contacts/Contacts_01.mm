uint64_t sub_1955E3430(uint64_t result, int a2, int a3)
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

uint64_t sub_1955E3494(uint64_t a1)
{
  v2 = sub_1955E393C(&qword_1EAECDA40, type metadata accessor for CNError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1955E3500(uint64_t a1)
{
  v2 = sub_1955E393C(&qword_1EAECDA40, type metadata accessor for CNError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1955E3570(uint64_t a1)
{
  v2 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1955E35EC(uint64_t a1)
{
  v2 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1955E3658(uint64_t a1)
{
  v2 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1955E36C4(void *a1, uint64_t a2)
{
  v4 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1955E3778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1955E37F4()
{
  sub_19565DBDC();
  sub_19565D1DC();
  return sub_19565DBFC();
}

void *sub_1955E3854@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1955E3870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1955E393C(&qword_1EAECDA78, type metadata accessor for CNError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1955E393C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1955E3B04()
{
  result = qword_1EAECDA68;
  if (!qword_1EAECDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDA68);
  }

  return result;
}

uint64_t sub_1955E3C08(uint64_t a1, int a2)
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

uint64_t sub_1955E3C28(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_1955E3C98(uint64_t a1, unint64_t *a2)
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

id CNContactPosterNameComponents.emphasizedNameComponentIndex.getter()
{
  v1 = [v0 emphasizedNameComponentIndex];
  if (v1 == sub_19565CC1C())
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_8Contacts21ManagedDuplicateErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1955E3D60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 17))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 16);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1955E3DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1955E3DF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1955E3E1C()
{
  result = qword_1EAECDC20;
  if (!qword_1EAECDC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECDC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDC20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1955E3EEC(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        sub_19565D8DC();

        v6 = 0xD000000000000022;
      }

      else
      {
        sub_19565D8DC();

        v6 = 0xD000000000000023;
      }
    }

    else if (a3)
    {
      sub_19565D8DC();

      v6 = 0xD00000000000002ALL;
    }

    else
    {
      sub_19565D8DC();

      v6 = 0xD000000000000030;
    }

    goto LABEL_16;
  }

  if (a3 <= 5u)
  {
    v12 = 0;
    if (a3 == 4)
    {
      sub_19565D8DC();
      v7 = "Failed to execute a ManagedDuplicate batch insert request. ";
    }

    else
    {
      sub_19565D8DC();
      v7 = "Failed to execute a ManagedDuplicate batch update request. ";
    }

    MEMORY[0x19A8B3270](0xD00000000000003BLL, (v7 - 32) | 0x8000000000000000);
    goto LABEL_21;
  }

  if (a3 == 6)
  {
    sub_19565D8DC();

    v6 = 0xD000000000000026;
LABEL_16:
    v12 = v6;
LABEL_21:
    MEMORY[0x19A8B3270](a1, a2);
    return v12;
  }

  if (a3 == 7)
  {
    sub_19565D8DC();

    v12 = 0xD00000000000001BLL;
    swift_getErrorValue();
    v5 = sub_19565DB8C();
    MEMORY[0x19A8B3270](v5);

    return v12;
  }

  if (a1 > 1)
  {
    v8 = a1 ^ 2 | a2;
    v9 = 0xD00000000000003ALL;
    v10 = 0xD000000000000047;
  }

  else
  {
    v8 = a1 | a2;
    v9 = 0xD000000000000028;
    v10 = 0xD000000000000040;
  }

  if (v8)
  {
    return v10;
  }

  else
  {
    return v9;
  }
}

unint64_t sub_1955E4220@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1955E3EEC(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1955E4254()
{
  result = qword_1EAECE3D0;
  if (!qword_1EAECE3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECE3D0);
  }

  return result;
}

uint64_t static CNContactEntityIdentifierProvider.entityIdentifier(for:)(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_19565D28C();

  return v2;
}

id CNContactEntityIdentifierProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CNContactEntityIdentifierProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactEntityIdentifierProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CNContactEntityIdentifierProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactEntityIdentifierProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1955E446C()
{
  v0 = sub_19565D0EC();
  __swift_allocate_value_buffer(v0, qword_1EAED0948);
  __swift_project_value_buffer(v0, qword_1EAED0948);
  return sub_19565D0DC();
}

uint64_t sub_1955E44F0()
{
  type metadata accessor for ManagedDuplicateStore();
  v0 = swift_allocObject();
  result = ManagedDuplicateStore.init(inMemory:)(0);
  qword_1EAECB870 = v0;
  return result;
}

uint64_t ManagedDuplicateStore.__allocating_init(inMemory:)(char a1)
{
  v2 = swift_allocObject();
  ManagedDuplicateStore.init(inMemory:)(a1);
  return v2;
}

uint64_t static ManagedDuplicateStore.shared.getter()
{
  if (qword_1EAECB868 != -1)
  {
    swift_once();
  }
}

uint64_t ManagedDuplicateStore.init(inMemory:)(char a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 40) = v3;
  v4 = OBJC_IVAR____TtC8Contacts21ManagedDuplicateStore____lazy_storage___persistentStoreURL;
  v5 = sub_19565CEFC();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t ManagedDuplicateStore.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  sub_1954C2698(v0 + OBJC_IVAR____TtC8Contacts21ManagedDuplicateStore____lazy_storage___persistentStoreURL, &qword_1EAECDC30);
  return v0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ManagedDuplicateStore.__deallocating_deinit()
{
  ManagedDuplicateStore.deinit();

  return swift_deallocClassInstance();
}

id sub_1955E47DC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    sub_1955E4838();
    v3 = *(v0 + 56);
    *(v0 + 56) = v4;
    v2 = v4;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1955E4838()
{
  v0 = sub_19565CEFC();
  v1 = *(v0 - 8);
  v2 = (MEMORY[0x1EEE9AC00])();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_19565D27C();
  v10 = sub_19565D27C();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_19565CEDC();

    (*(v1 + 32))(v6, v4, v0);
    v12 = objc_allocWithZone(MEMORY[0x1E695D638]);
    v13 = sub_19565CE9C();
    v14 = [v12 initWithContentsOfURL_];

    if (v14)
    {
      (*(v1 + 8))(v6, v0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1955E4A58@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC30);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC8Contacts21ManagedDuplicateStore____lazy_storage___persistentStoreURL;
  swift_beginAccess();
  sub_1955EAD0C(v1 + v9, v8);
  v10 = sub_19565CEFC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1954C2698(v8, &qword_1EAECDC30);
  sub_1955E4C38(v1);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1955EAD7C(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1955E4C38(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19565CEFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26[-v7];
  if (*(a1 + 16))
  {

    return sub_19565CE8C();
  }

  else
  {
    sub_19565CE8C();
    v10 = [objc_opt_self() defaultManager];
    v29[0] = 0;
    v11 = [v10 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:v29];

    v12 = v29[0];
    if (v11)
    {
      sub_19565CEDC();
      v13 = v12;

      (*(v3 + 8))(v8, v2);
      (*(v3 + 32))(v8, v6, v2);
    }

    else
    {
      v14 = v29[0];
      v15 = sub_19565CE6C();

      swift_willThrow();
      if (qword_1EAECB880 != -1)
      {
        swift_once();
      }

      v16 = sub_19565D0EC();
      __swift_project_value_buffer(v16, qword_1EAED0948);
      v17 = v15;
      v18 = sub_19565D0CC();
      v19 = sub_19565D69C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v29[0] = v28;
        *v20 = 136315138;
        swift_getErrorValue();
        v27 = v19;
        v21 = sub_19565DB8C();
        v23 = sub_1955EA0F8(v21, v22, v29);

        *(v20 + 4) = v23;
        _os_log_impl(&dword_1954A0000, v18, v27, "Could not get URL for ManagedDuplicateStore %s", v20, 0xCu);
        v24 = v28;
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x19A8B5DB0](v24, -1, -1);
        MEMORY[0x19A8B5DB0](v20, -1, -1);
      }

      else
      {
      }
    }

    sub_19565CEAC();
    sub_19565CEBC();
    v25 = *(v3 + 8);
    v25(v6, v2);
    return (v25)(v8, v2);
  }
}

uint64_t sub_1955E506C()
{
  v0 = sub_19565CEFC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1955E47DC();
  v5 = objc_allocWithZone(MEMORY[0x1E695D688]);
  v6 = sub_19565D27C();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = [v7 persistentStoreDescriptions];
  sub_1954C3460(0, &qword_1EAECB928);
  v9 = sub_19565D3FC();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    sub_1955E4254();
    swift_allocError();
    *v41 = 0xD000000000000032;
    *(v41 + 8) = 0x800000019568CBE0;
    *(v41 + 16) = 0;
    swift_willThrow();

    return v7;
  }

  result = sub_19565D81C();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x19A8B3850](0, v9);
    goto LABEL_6;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
LABEL_6:
    v12 = v11;
    v45 = v7;

    sub_1955E4A58(v3);
    v13 = sub_19565CE9C();
    v14 = *(v1 + 8);
    v42[1] = v1 + 8;
    v14(v3, v0);
    v43 = v12;
    [v12 setURL_];

    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v15 = sub_19565D0EC();
    __swift_project_value_buffer(v15, qword_1EAED0948);

    v16 = sub_19565D0CC();
    v17 = sub_19565D68C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315138;
      sub_1955E4A58(v3);
      sub_1955EBC28(&qword_1EAECDCC8, MEMORY[0x1E6968FB0]);
      v20 = sub_19565DAEC();
      v22 = v21;
      v14(v3, v0);
      v23 = sub_1955EA0F8(v20, v22, aBlock);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1954A0000, v16, v17, "Will attempt to use ManagedDuplicateStore at %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x19A8B5DB0](v19, -1, -1);
      MEMORY[0x19A8B5DB0](v18, -1, -1);
    }

    sub_1954C3460(0, &qword_1EAECB930);
    v24 = sub_19565D72C();
    v25 = v43;
    [v43 setOption:v24 forKey:*MEMORY[0x1E695D430]];

    v26 = sub_19565D72C();
    [v25 setOption:v26 forKey:*MEMORY[0x1E695D3C0]];

    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v28 = (v27 + 16);
    aBlock[4] = sub_1955EBC20;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19562056C;
    aBlock[3] = &block_descriptor_65;
    v29 = _Block_copy(aBlock);

    v7 = v45;
    [v45 loadPersistentStoresWithCompletionHandler_];
    _Block_release(v29);
    swift_beginAccess();
    if (*v28)
    {
      v30 = [*v28 localizedDescription];
      v31 = sub_19565D28C();
      v33 = v32;

      sub_1955E4254();
      swift_allocError();
      *v34 = v31;
      *(v34 + 8) = v33;
      *(v34 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v35 = [v7 viewContext];
      [v35 setAutomaticallyMergesChangesFromParent_];

      v36 = [v7 viewContext];
      v37 = sub_19565D27C();
      [v36 setName_];

      v38 = [v7 viewContext];
      [v38 setMergePolicy_];

      v39 = [v7 viewContext];
      [v39 setUndoManager_];

      v40 = [v7 viewContext];
      [v40 setShouldDeleteInaccessibleFaults_];
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_1955E5758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_19565CE5C();
    swift_beginAccess();
    v5 = *(a3 + 16);
    *(a3 + 16) = v4;
  }
}

void sub_1955E57B4()
{
  v1 = sub_1954C2EA8();
  if (v1)
  {
    v2 = v1;
    v3 = sub_19565D27C();
    [v2 setName_];

    v4 = sub_19565D27C();
    [v2 setTransactionAuthor_];

    MEMORY[0x1EEE9AC00](v5);
    sub_19565D6DC();
    if (v0)
    {
      swift_getErrorValue();
      v6 = sub_19565DB8C();
      v8 = v7;
      sub_1955E4254();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = v8;
      *(v9 + 16) = 3;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v10 = sub_19565D0EC();
    __swift_project_value_buffer(v10, qword_1EAED0948);
    v11 = sub_19565D0CC();
    v12 = sub_19565D69C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1954A0000, v11, v12, "Could not save duplicates", v13, 2u);
      MEMORY[0x19A8B5DB0](v13, -1, -1);
    }
  }
}

void sub_1955E5A64(unint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (qword_1EAECB880 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v4 = sub_19565D0EC();
    __swift_project_value_buffer(v4, qword_1EAED0948);

    v5 = sub_19565D0CC();
    v6 = sub_19565D68C();
    v7 = a1 >> 62;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v7 ? sub_19565D81C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v8 + 4) = v9;

      _os_log_impl(&dword_1954A0000, v5, v6, "Will save %ld managed duplicates", v8, 0xCu);
      MEMORY[0x19A8B5DB0](v8, -1, -1);
    }

    else
    {
    }

    if (v7)
    {
      break;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_21;
    }

LABEL_9:
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x19A8B3850](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      type metadata accessor for CNDuplicateSet();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
      sub_19561C250(v13, a2);

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v10 = sub_19565D81C();
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_21:
  v34[0] = 0;
  if ([a2 save_])
  {
    v16 = v34[0];
    v17 = sub_19565D0CC();
    v18 = sub_19565D68C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1954A0000, v17, v18, "Did save managed duplicates", v19, 2u);
      MEMORY[0x19A8B5DB0](v19, -1, -1);
    }
  }

  else
  {
    v20 = v34[0];
    v21 = sub_19565CE6C();

    swift_willThrow();
    v22 = v21;
    v23 = sub_19565D0CC();
    v24 = sub_19565D69C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = sub_19565DB8C();
      v29 = sub_1955EA0F8(v27, v28, v34);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1954A0000, v23, v24, "Could not save managed duplicates %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x19A8B5DB0](v26, -1, -1);
      MEMORY[0x19A8B5DB0](v25, -1, -1);
    }

    swift_getErrorValue();
    v30 = sub_19565DB8C();
    v32 = v31;
    sub_1955E4254();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    *(v33 + 16) = 3;
    swift_willThrow();
  }
}

void sub_1955E5EAC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = sub_1954C2EA8();
    if (v1)
    {
      v2 = v1;
      v3 = sub_19565D27C();
      [v2 setName_];

      v4 = sub_19565D27C();
      [v2 setTransactionAuthor_];

      MEMORY[0x1EEE9AC00](v5);
      sub_19565D6DC();
    }

    else
    {
      if (qword_1EAECB880 != -1)
      {
        swift_once();
      }

      v6 = sub_19565D0EC();
      __swift_project_value_buffer(v6, qword_1EAED0948);
      v7 = sub_19565D0CC();
      v8 = sub_19565D69C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1954A0000, v7, v8, "Could not batch insert duplicates", v9, 2u);
        MEMORY[0x19A8B5DB0](v9, -1, -1);
      }
    }
  }
}

void sub_1955E6098(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = sub_1955EBA40(a2);
  if (qword_1EAECB880 != -1)
  {
    swift_once();
  }

  v6 = sub_19565D0EC();
  __swift_project_value_buffer(v6, qword_1EAED0948);
  v7 = sub_19565D0CC();
  v8 = sub_19565D68C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1954A0000, v7, v8, "Will batch insert duplicates", v9, 2u);
    MEMORY[0x19A8B5DB0](v9, -1, -1);
  }

  *&v30[0] = 0;
  v10 = [a3 executeRequest:v5 error:v30];
  v11 = *&v30[0];
  if (!v10)
  {
    v16 = *&v30[0];
    v17 = sub_19565CE6C();

    swift_willThrow();
    swift_getErrorValue();
    *&v30[0] = sub_19565DB8C();
    *(&v30[0] + 1) = v18;
    MEMORY[0x19A8B3270](540686880, 0xE400000000000000);
    v19 = MEMORY[0x19A8B3350](a2, &type metadata for DuplicateSetProperties);
    MEMORY[0x19A8B3270](v19);

    v20 = v30[0];
    sub_1955E4254();
    swift_allocError();
    *v21 = v20;
    *(v21 + 16) = 4;
    swift_willThrow();

LABEL_21:
    return;
  }

  v12 = v10;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    v22 = v11;
    goto LABEL_18;
  }

  v14 = v13;
  v15 = v11;
  if ([v14 result])
  {
    sub_19565D7CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {

    sub_1954C2698(v30, &unk_1EAECE1F0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0 || v27 != 1)
  {
LABEL_18:

LABEL_20:
    sub_1955E4254();
    swift_allocError();
    *v26 = 0xD000000000000023;
    *(v26 + 8) = 0x800000019568CB20;
    *(v26 + 16) = 4;
    swift_willThrow();
    goto LABEL_21;
  }

  v23 = sub_19565D0CC();
  v24 = sub_19565D68C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1954A0000, v23, v24, "Successfully insert duplicates", v25, 2u);
    MEMORY[0x19A8B5DB0](v25, -1, -1);
  }
}

uint64_t sub_1955E6454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  v9 = *(a2 + 16);
  if (v9 >= a3)
  {
    return v9 >= a3;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 >= *(a4 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = DuplicateSetProperties.dictionaryValue.getter();
  sub_1955E6594(v10);

  v11 = sub_19565D16C();

  [a1 addEntriesFromDictionary_];

  result = swift_beginAccess();
  v12 = *(a2 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(a2 + 16) = v14;
    return v9 >= a3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1955E6594(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCC0);
    v2 = sub_19565DA7C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1954C2458(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1955EBBA0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1955EBBA0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1955EBBA0(v31, v32);
    result = sub_19565D85C();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1955EBBA0(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1955E685C()
{
  v1 = sub_1954C2EA8();
  if (v1)
  {
    v2 = v1;
    v3 = sub_19565D27C();
    [v2 setName:v3];

    v4 = sub_19565D27C();
    [v2 setTransactionAuthor:v4];

    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC38);
    sub_19565D6DC();
    if (v0)
    {
    }
  }

  else
  {
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v6 = sub_19565D0EC();
    __swift_project_value_buffer(v6, qword_1EAED0948);
    v2 = sub_19565D0CC();
    v7 = sub_19565D69C();
    if (os_log_type_enabled(v2, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1954A0000, v2, v7, "Could not update duplicate availability", v8, 2u);
      MEMORY[0x19A8B5DB0](v8, -1, -1);
    }
  }
}

void sub_1955E6A60(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  type metadata accessor for CNDuplicateSet();
  v6 = [swift_getObjCClassFromMetadata() entity];
  v7 = [objc_allocWithZone(MEMORY[0x1E695D560]) initWithEntity_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19567B7A0;
  *&v36[0] = 0x616C696176417369;
  *(&v36[0] + 1) = 0xEB00000000656C62;
  sub_19565D87C();
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 96) = sub_1954C3460(0, &qword_1EAECB930);
  *(inited + 72) = v9;
  sub_19562FBCC(inited);
  swift_setDeallocating();
  sub_1954C2698(inited + 32, &qword_1EAECDCB8);
  v10 = sub_19565D16C();

  [v7 setPropertiesToUpdate_];

  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_19567B7A0;
  *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v11 + 64) = sub_1955EA6F8();
  *(v11 + 32) = a1;

  v12 = sub_19565D66C();
  [v7 setPredicate_];

  if (qword_1EAECB880 != -1)
  {
    swift_once();
  }

  v13 = sub_19565D0EC();
  __swift_project_value_buffer(v13, qword_1EAED0948);
  v14 = sub_19565D0CC();
  v15 = sub_19565D68C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1954A0000, v14, v15, "Will batch update duplicate availability", v16, 2u);
    MEMORY[0x19A8B5DB0](v16, -1, -1);
  }

  *&v36[0] = 0;
  v17 = [a2 executeRequest:v7 error:v36];
  v18 = *&v36[0];
  if (!v17)
  {
    v23 = *&v36[0];
    v24 = sub_19565CE6C();

    swift_willThrow();
    swift_getErrorValue();
    v25 = sub_19565DB8C();
    v27 = v26;
    sub_1955E4254();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 5;
    swift_willThrow();

    return;
  }

  v19 = v17;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v22 = v18;
    if ([v21 result])
    {
      sub_19565D7CC();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36[0] = v34;
    v36[1] = v35;
    if (!*(&v35 + 1))
    {

      sub_1954C2698(v36, &unk_1EAECE1F0);
      goto LABEL_21;
    }

    if (swift_dynamicCast())
    {
      if (v33 == 1)
      {
        v30 = sub_19565D0CC();
        v31 = sub_19565D68C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1954A0000, v30, v31, "Successfully updated duplicate availability", v32, 2u);
          MEMORY[0x19A8B5DB0](v32, -1, -1);
        }
      }

      else
      {
      }

      goto LABEL_21;
    }
  }

  else
  {
    v29 = v18;
  }

LABEL_21:
  *a3 = 0;
}

void sub_1955E6FC4()
{
  v0 = sub_1954C2EA8();
  if (v0)
  {
    v1 = v0;
    v2 = sub_19565D27C();
    [v1 setName_];

    v3 = sub_19565D27C();
    [v1 setTransactionAuthor_];

    MEMORY[0x1EEE9AC00](v4);
    sub_19565D6DC();
  }

  else
  {
    if (qword_1EAECB880 != -1)
    {
      swift_once();
    }

    v5 = sub_19565D0EC();
    __swift_project_value_buffer(v5, qword_1EAED0948);
    v6 = sub_19565D0CC();
    v7 = sub_19565D69C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1954A0000, v6, v7, "Could not update cohort availability", v8, 2u);
      MEMORY[0x19A8B5DB0](v8, -1, -1);
    }
  }
}

void sub_1955E7194(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_19565D27C();
  v6 = [v4 initWithEntityName_];

  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19567B7A0;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v7 + 64) = sub_1955EA6F8();
  *(v7 + 32) = a1;

  v8 = sub_19565D66C();
  [v6 setPredicate_];

  v9 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v9 setResultType_];
  if (qword_1EAECB880 != -1)
  {
    swift_once();
  }

  v10 = sub_19565D0EC();
  __swift_project_value_buffer(v10, qword_1EAED0948);
  v11 = sub_19565D0CC();
  v12 = sub_19565D68C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1954A0000, v11, v12, "Will batch update duplicate cohort availability", v13, 2u);
    MEMORY[0x19A8B5DB0](v13, -1, -1);
  }

  *&v38[0] = 0;
  v14 = [a2 executeRequest:v9 error:v38];
  v15 = *&v38[0];
  if (!v14)
  {
    v21 = *&v38[0];
    v22 = sub_19565CE6C();

    swift_willThrow();
    swift_getErrorValue();
    v23 = sub_19565DB8C();
    v25 = v24;
    sub_1955E4254();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    *(v26 + 16) = 6;
    swift_willThrow();

    return;
  }

  v16 = v14;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
    v27 = v15;
    goto LABEL_18;
  }

  v18 = v17;
  v19 = v15;
  v20 = v16;
  if ([v18 result])
  {
    sub_19565D7CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {

    sub_1954C2698(v38, &unk_1EAECE1F0);
    goto LABEL_18;
  }

  v28 = swift_dynamicCast();

  if ((v28 & 1) == 0)
  {
LABEL_18:
    v32 = sub_19565D0CC();
    v33 = sub_19565D69C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1954A0000, v32, v33, "There was an unknown problem updating cohort availability.", v34, 2u);
      MEMORY[0x19A8B5DB0](v34, -1, -1);
    }

    goto LABEL_21;
  }

  v29 = sub_19565D0CC();
  v30 = sub_19565D68C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v35;
    _os_log_impl(&dword_1954A0000, v29, v30, "Removed %ld unavailable cohorts.", v31, 0xCu);
    MEMORY[0x19A8B5DB0](v31, -1, -1);
  }

LABEL_21:
}

uint64_t sub_1955E7684(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = sub_1954C2EA8();
  if (v3)
  {
    v4 = v3;
    v5 = sub_19565D27C();
    [v4 setName_];

    v6 = sub_19565D27C();
    [v4 setTransactionAuthor_];

    v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v8 = sub_19565D27C();
    v9 = [v7 initWithEntityName_];

    [v9 setPredicate_];
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v9;
    v10[4] = v2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1955E9FE8;
    *(v11 + 24) = v10;
    v22[4] = sub_1955E9FF4;
    v22[5] = v11;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1955E7E8C;
    v22[3] = &block_descriptor;
    v12 = _Block_copy(v22);
    v13 = v4;
    v14 = v9;

    [v13 performBlockAndWait_];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      swift_beginAccess();
      v15 = *(v2 + 16);

      v16 = sub_1955E9FE8;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EAECB880 != -1)
  {
LABEL_10:
    swift_once();
  }

  v17 = sub_19565D0EC();
  __swift_project_value_buffer(v17, qword_1EAED0948);
  v18 = sub_19565D0CC();
  v19 = sub_19565D69C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1954A0000, v18, v19, "Could not load managed duplicates", v20, 2u);
    MEMORY[0x19A8B5DB0](v20, -1, -1);
  }

  v15 = *(v2 + 16);

  v16 = 0;
LABEL_8:
  sub_1955E9FD8(v16);
  return v15;
}

void sub_1955E7A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAECB880 != -1)
  {
    swift_once();
  }

  v4 = sub_19565D0EC();
  v5 = __swift_project_value_buffer(v4, qword_1EAED0948);
  v6 = sub_19565D0CC();
  v7 = sub_19565D68C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1954A0000, v6, v7, "Will fetch managed duplicates from store", v8, 2u);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
  }

  type metadata accessor for CNDuplicateSet();
  v9 = sub_19565D6FC();
  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_19565D81C();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_15:

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_7:
  v20 = MEMORY[0x1E69E7CC0];
  v12 = &v20;
  sub_19565D97C();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19A8B3850](v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = objc_allocWithZone(type metadata accessor for ManagedDuplicate());
    sub_19561921C(v15);

    sub_19565D94C();
    sub_19565D98C();
    sub_19565D99C();
    sub_19565D95C();
  }

  while (v11 != v13);

  v17 = v20;
LABEL_16:
  swift_beginAccess();
  *(a3 + 16) = v17;

  v12 = sub_19565D0CC();
  LOBYTE(v11) = sub_19565D68C();
  if (os_log_type_enabled(v12, v11))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v18 = *(a3 + 16);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
      *(v5 + 4) = v19;

      _os_log_impl(&dword_1954A0000, v12, v11, "Did fetch %ld managed duplicates from store", v5, 0xCu);
      MEMORY[0x19A8B5DB0](v5, -1, -1);

      return;
    }

LABEL_22:
    v19 = sub_19565D81C();
    goto LABEL_19;
  }
}

uint64_t sub_1955E7EB4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = sub_1954C2EA8();
  if (v3)
  {
    v4 = v3;
    v5 = sub_19565D27C();
    [v4 setName_];

    v6 = sub_19565D27C();
    [v4 setTransactionAuthor_];

    v7 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
    v8 = sub_19565D27C();
    v9 = [v7 initWithEntityName_];

    [v9 setPredicate_];
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v9;
    v10[4] = v2;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1955EA07C;
    *(v11 + 24) = v10;
    v22[4] = sub_1955EBC98;
    v22[5] = v11;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = sub_1955E7E8C;
    v22[3] = &block_descriptor_20;
    v12 = _Block_copy(v22);
    v13 = v4;
    v14 = v9;

    [v13 performBlockAndWait_];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      swift_beginAccess();
      v15 = *(v2 + 16);

      v16 = sub_1955EA07C;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1EAECB880 != -1)
  {
LABEL_10:
    swift_once();
  }

  v17 = sub_19565D0EC();
  __swift_project_value_buffer(v17, qword_1EAED0948);
  v18 = sub_19565D0CC();
  v19 = sub_19565D69C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1954A0000, v18, v19, "Could not load managed cohorts", v20, 2u);
    MEMORY[0x19A8B5DB0](v20, -1, -1);
  }

  v15 = *(v2 + 16);

  v16 = 0;
LABEL_8:
  sub_1955E9FD8(v16);
  return v15;
}

void sub_1955E8254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EAECB880 != -1)
  {
    swift_once();
  }

  v4 = sub_19565D0EC();
  v5 = __swift_project_value_buffer(v4, qword_1EAED0948);
  v6 = sub_19565D0CC();
  v7 = sub_19565D68C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1954A0000, v6, v7, "Will fetch managed cohorts from store", v8, 2u);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
  }

  type metadata accessor for CNDuplicateCohort();
  v9 = sub_19565D6FC();
  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_19565D81C();
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_15:

    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_7:
  v20 = MEMORY[0x1E69E7CC0];
  v12 = &v20;
  sub_19565D97C();
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v13 = 0;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x19A8B3850](v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = objc_allocWithZone(type metadata accessor for ManagedCohort());
    sub_19561FBAC(v15);

    sub_19565D94C();
    sub_19565D98C();
    sub_19565D99C();
    sub_19565D95C();
  }

  while (v11 != v13);

  v17 = v20;
LABEL_16:
  swift_beginAccess();
  *(a3 + 16) = v17;

  v12 = sub_19565D0CC();
  LOBYTE(v11) = sub_19565D68C();
  if (os_log_type_enabled(v12, v11))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    swift_beginAccess();
    v18 = *(a3 + 16);
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
      *(v5 + 4) = v19;

      _os_log_impl(&dword_1954A0000, v12, v11, "Did fetch %ld managed cohorts from store", v5, 0xCu);
      MEMORY[0x19A8B5DB0](v5, -1, -1);

      return;
    }

LABEL_22:
    v19 = sub_19565D81C();
    goto LABEL_19;
  }
}

uint64_t sub_1955E8694(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_19567B7B0;
    *(v2 + 32) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_19567B7B0;
    *(v3 + 32) = [objc_opt_self() predicateWithValue_];
  }

  v4 = a1;
  v5 = sub_1954C34A8();

  if (*(v5 + 16))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1955E87AC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EAECB880 != -1)
  {
LABEL_28:
    swift_once();
  }

  v5 = sub_19565D0EC();
  __swift_project_value_buffer(v5, qword_1EAED0948);
  v6 = sub_19565D0CC();
  v7 = sub_19565D68C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1954A0000, v6, v7, "Will count managed duplicates in store", v8, 2u);
    MEMORY[0x19A8B5DB0](v8, -1, -1);
  }

  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = sub_19565D27C();
  v40 = [v9 initWithEntityName_];

  if (a1 >> 62)
  {
    v11 = sub_19565D81C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
LABEL_22:

    v29 = sub_19565D0CC();
    v30 = sub_19565D68C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v32;
      *v31 = 136315138;
      v33 = MEMORY[0x19A8B3350](v12, MEMORY[0x1E69E6530]);
      v35 = sub_1955EA0F8(v33, v34, &v41);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1954A0000, v29, v30, "Counted %s managed duplicates in store", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x19A8B5DB0](v32, -1, -1);
      MEMORY[0x19A8B5DB0](v31, -1, -1);
    }

LABEL_25:
    *a2 = v12;
    return;
  }

  v41 = MEMORY[0x1E69E7CC0];
  sub_1954C369C(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v36 = a2;
    v13 = 0;
    v12 = v41;
    v38 = v11;
    v39 = a1 & 0xC000000000000001;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v39)
      {
        v15 = MEMORY[0x19A8B3850](v13, a1);
      }

      else
      {
        if (v13 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v15 = a1[v13 + 4];
      }

      v16 = v15;
      [v40 setPredicate_];
      type metadata accessor for CNDuplicateSet();
      v17 = sub_19565D6EC();
      if (v2)
      {
        break;
      }

      v18 = v17;
      a2 = a1;

      v41 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1954C369C((v19 > 1), v20 + 1, 1);
        v12 = v41;
      }

      *(v12 + 16) = v20 + 1;
      *(v12 + 8 * v20 + 32) = v18;
      ++v13;
      a1 = a2;
      if (v14 == v38)
      {
        a2 = v36;
        goto LABEL_22;
      }
    }

    v21 = v2;
    v22 = sub_19565D0CC();
    v23 = sub_19565D68C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_19565DB8C();
      v28 = sub_1955EA0F8(v26, v27, &v41);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1954A0000, v22, v23, "Failed to count managed duplicates. %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x19A8B5DB0](v25, -1, -1);
      MEMORY[0x19A8B5DB0](v24, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    a2 = v36;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1955E8C7C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = sub_19565D27C();
  v5 = [v3 initWithEntityName_];

  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_19567B7A0;
  isEscapingClosureAtFileLocation = &selRef_enumerateObjectsUsingBlock_;
  v8 = [a1 identifier];
  v9 = sub_19565D28C();
  v11 = v10;

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1955EA0A4();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v12 = v5;
  v13 = sub_19565D66C();
  [v5 setPredicate_];

  v14 = sub_1954C2EA8();
  if (v14)
  {
    v15 = v14;
    v16 = sub_19565D27C();
    [v15 setName_];

    v17 = sub_19565D27C();
    [v15 setTransactionAuthor_];

    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v5;
    v18[4] = v2;
    v18[5] = a1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1955EA6EC;
    *(v19 + 24) = v18;
    aBlock[4] = sub_1955EBC98;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1955E7E8C;
    aBlock[3] = &block_descriptor_31;
    v20 = _Block_copy(aBlock);
    v21 = v15;
    v22 = v5;

    v23 = a1;

    [v21 performBlockAndWait_];

    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      swift_beginAccess();
      v24 = *(v2 + 16);

      v25 = sub_1955EA6EC;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  v5 = v2;
  if (qword_1EAECB880 != -1)
  {
LABEL_10:
    swift_once();
  }

  v26 = sub_19565D0EC();
  __swift_project_value_buffer(v26, qword_1EAED0948);
  v27 = a1;
  v28 = sub_19565D0CC();
  v29 = sub_19565D69C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = [v27 *(isEscapingClosureAtFileLocation + 2560)];
    v33 = sub_19565D28C();
    v35 = v34;

    v36 = sub_1955EA0F8(v33, v35, aBlock);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1954A0000, v28, v29, "Could not load managed duplicates for contact (%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x19A8B5DB0](v31, -1, -1);
    MEMORY[0x19A8B5DB0](v30, -1, -1);
  }

  v24 = v5[2];

  v25 = 0;
LABEL_8:
  sub_1955E9FD8(v25);
  return v24;
}

void sub_1955E918C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EAECB880 != -1)
  {
LABEL_29:
    swift_once();
  }

  v4 = sub_19565D0EC();
  __swift_project_value_buffer(v4, qword_1EAED0948);
  v5 = sub_19565D0CC();
  v6 = sub_19565D68C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1954A0000, v5, v6, "Will fetch duplicates for contact from store", v7, 2u);
    MEMORY[0x19A8B5DB0](v7, -1, -1);
  }

  type metadata accessor for CNDuplicateCohort();
  v8 = sub_19565D6FC();
  v9 = v8;
  v31[0] = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    v10 = sub_19565D81C();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v28 = a3;
    v12 = 0;
    a3 = v9 & 0xC000000000000001;
    while (1)
    {
      if (a3)
      {
        v13 = MEMORY[0x19A8B3850](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = [v13 duplicates];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = sub_1955EB6AC(v16);

      sub_1956213C8(v18);
      ++v12;
      if (v15 == v10)
      {
        v19 = v31[0];
        a3 = v28;
        v11 = MEMORY[0x1E69E7CC0];
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v20 = *(v19 + 16);
    if (v20)
    {
      v32 = v11;
      sub_19565D97C();
      v21 = v19 + 32;
      do
      {
        sub_1954C2458(v21, v31);
        sub_1954C2458(v31, v30);
        type metadata accessor for CNDuplicateSet();
        swift_dynamicCast();
        v22 = objc_allocWithZone(type metadata accessor for ManagedDuplicate());
        sub_19561921C(v29);

        __swift_destroy_boxed_opaque_existential_0(v31);
        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
        v21 += 32;
        --v20;
      }

      while (v20);

      v11 = v32;
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = v11;

    v23 = sub_19565D0CC();
    v24 = sub_19565D68C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      swift_beginAccess();
      v26 = *(a3 + 16);
      if (v26 >> 62)
      {
        v27 = sub_19565D81C();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v27;

      _os_log_impl(&dword_1954A0000, v23, v24, "Did fetch %ld duplicates for contact from store", v25, 0xCu);
      MEMORY[0x19A8B5DB0](v25, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1955E9724(uint64_t a1)
{
  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19567B7A0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v2 + 64) = sub_1955EA6F8();
  *(v2 + 32) = a1;

  v3 = sub_19565D66C();
  v4 = sub_1955E7684(v3);

  return v4;
}

uint64_t sub_1955E980C()
{
  sub_1954C3460(0, &qword_1EAECB838);
  v0 = sub_19565D66C();
  v1 = sub_1955E7684(v0);

  return v1;
}

uint64_t sub_1955E9944()
{
  sub_1954C3460(0, &qword_1EAECB838);
  v0 = sub_19565D66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19567B7B0;
  *(v1 + 32) = v0;
  v2 = v0;
  v3 = sub_1954C34A8();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1955E9A4C()
{
  sub_1954C3460(0, &qword_1EAECB838);
  v0 = sub_19565D66C();
  v1 = sub_1955E7684(v0);

  return v1;
}

uint64_t sub_1955E9B28()
{
  sub_1954C3460(0, &qword_1EAECB838);
  v0 = sub_19565D66C();
  v1 = sub_1955E7684(v0);

  return v1;
}

uint64_t sub_1955E9BA8()
{
  sub_1954C3460(0, &qword_1EAECB838);
  v0 = sub_19565D66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_19567B7B0;
  *(v1 + 32) = v0;
  v2 = v0;
  v3 = sub_1954C34A8();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1955E9CB0(uint64_t a1)
{
  sub_1954C3460(0, &qword_1EAECB838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECE010);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_19567B7A0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC50);
  *(v2 + 64) = sub_1955EA6F8();
  *(v2 + 32) = a1;

  v3 = sub_19565D66C();
  v4 = sub_1955E7684(v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v19 = MEMORY[0x1E69E7CC0];
      result = sub_1955EA77C(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        break;
      }

      v8 = 0;
      v9 = v19;
      v18 = v3;
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x19A8B3850](v8, v5);
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v5 + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = &v11[OBJC_IVAR___CNManagedDuplicate_signature];
        result = swift_beginAccess();
        v14 = *(v13 + 1);
        if (!v14)
        {
          goto LABEL_21;
        }

        v15 = *v13;

        v3 = *(v19 + 16);
        v16 = *(v19 + 24);
        if (v3 >= v16 >> 1)
        {
          sub_1955EA77C((v16 > 1), v3 + 1, 1);
        }

        *(v19 + 16) = v3 + 1;
        v17 = v19 + 16 * v3;
        *(v17 + 32) = v15;
        *(v17 + 40) = v14;
        ++v8;
        if (v10 == v6)
        {

          return v9;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v6 = sub_19565D81C();
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1955E9F0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1955E9FD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1955EA0A4()
{
  result = qword_1EAECDC48;
  if (!qword_1EAECDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECDC48);
  }

  return result;
}

unint64_t sub_1955EA0F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1955EA1C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1954C2458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1955EA1C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1955EA2D0(a5, a6);
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
    result = sub_19565D92C();
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

uint64_t sub_1955EA2D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1955EA31C(a1, a2);
  sub_1955EA44C(&unk_1F094B658);
  return v3;
}

uint64_t sub_1955EA31C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1955EA538(v5, 0);
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

  result = sub_19565D92C();
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
        v10 = sub_19565D33C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1955EA538(v10, 0);
        result = sub_19565D8CC();
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

uint64_t sub_1955EA44C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1955EA5AC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1955EA538(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1955EA5AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1955EA6F8()
{
  result = qword_1EAECB850;
  if (!qword_1EAECB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAECDC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECB850);
  }

  return result;
}

char *sub_1955EA75C(char *a1, int64_t a2, char a3)
{
  result = sub_1955EAE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1955EA77C(char *a1, int64_t a2, char a3)
{
  result = sub_1955EAF9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for ManagedDuplicateStore()
{
  result = qword_1EAECB940;
  if (!qword_1EAECB940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1955EA7F0()
{
  sub_1955EACB4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ManagedDuplicateStore.countOfManagedDuplicates(with:)()
{
  return (*(*v0 + 384))();
}

{
  return (*(*v0 + 392))();
}

uint64_t dispatch thunk of ManagedDuplicateStore.managedDuplicates(for:)()
{
  return (*(*v0 + 400))();
}

{
  return (*(*v0 + 408))();
}

void sub_1955EACB4()
{
  if (!qword_1EAECB958)
  {
    sub_19565CEFC();
    v0 = sub_19565D77C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAECB958);
    }
  }
}

uint64_t sub_1955EAD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1955EAD7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1955EADEC(void *a1, int64_t a2, char a3)
{
  result = sub_1955EB0A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1955EAE0C(void *a1, int64_t a2, char a3)
{
  result = sub_1955EB1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1955EAE2C(char *a1, int64_t a2, char a3)
{
  result = sub_1955EB310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1955EAE4C(void *a1, int64_t a2, char a3)
{
  result = sub_1955EB430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1955EAE6C(void *a1, int64_t a2, char a3)
{
  result = sub_1955EB578(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1955EAE8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1955EAF9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1955EB0A8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1955EB1DC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1955EB310(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1955EB430(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1955EB578(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1955EB6AC(void *a1)
{
  v2 = sub_19565CE7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 count];
  v7 = v6;
  if (v6)
  {
    if (v6 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE020);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 1;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 5);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = v8[3];

  result = sub_19565D71C();
  if (v7 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v11 >> 1;
  v14 = v8 + 4;
  if (v7)
  {
    v13 -= v7;
    sub_1955EBC28(&qword_1EAECDC98, MEMORY[0x1E6968EB0]);
    do
    {
      result = sub_19565D78C();
      if (!v34)
      {
        goto LABEL_38;
      }

      sub_1955EBBA0(&v33, v14);
      v14 += 2;
    }

    while (--v7);
  }

  v30 = v3;
  sub_1955EBC28(&qword_1EAECDC98, MEMORY[0x1E6968EB0]);
  sub_19565D78C();
  if (v32)
  {
    while (1)
    {
      result = sub_1955EBBA0(&v31, &v33);
      if (!v13)
      {
        v15 = v8[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE020);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 1;
        }

        v21 = v20 >> 5;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 5);
        v22 = (v18 + 4);
        v23 = v8[3] >> 1;
        if (v8[2])
        {
          v24 = v8 + 4;
          if (v18 != v8 || v22 >= v24 + 32 * v23)
          {
            memmove(v18 + 4, v24, 32 * v23);
          }

          v8[2] = 0;
        }

        v14 = (v22 + 32 * v23);
        v13 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v8 = v18;
      }

      v25 = __OFSUB__(v13--, 1);
      if (v25)
      {
        break;
      }

      sub_1955EBBA0(&v33, v14);
      v14 += 2;
      sub_19565D78C();
      if (!v32)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v30 + 8))(v5, v2);
  result = sub_1954C2698(&v31, &unk_1EAECE1F0);
  v26 = v8[3];
  if (v26 < 2)
  {
    return v8;
  }

  v27 = v26 >> 1;
  v25 = __OFSUB__(v27, v13);
  v28 = v27 - v13;
  if (!v25)
  {
    v8[2] = v28;
    return v8;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_1955EBA40(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(a1 + 16);
  type metadata accessor for CNDuplicateSet();
  v4 = [swift_getObjCClassFromMetadata() entity];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = a1;
  v6 = objc_allocWithZone(MEMORY[0x1E695D550]);
  v10[4] = sub_1955EBBB0;
  v10[5] = v5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1955E9F0C;
  v10[3] = &block_descriptor_59;
  v7 = _Block_copy(v10);

  v8 = [v6 initWithEntity:v4 dictionaryHandler:v7];

  _Block_release(v7);

  return v8;
}

_OWORD *sub_1955EBBA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1955EBC28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1955EBCE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  type metadata accessor for CNError(0);
  sub_1955EC354(&qword_1EAECDA78, type metadata accessor for CNError);
  v4 = sub_19565CE2C();
  v5 = sub_19565D28C();
  if (!*(v4 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_1954C2328(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_1954C2458(*(v4 + 56) + 32 * v7, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1955EBE38(uint64_t a1)
{
  v2 = sub_19565D85C();

  return sub_1955EBF58(a1, v2);
}

unint64_t sub_1955EBE7C(uint64_t a1)
{
  v2 = sub_19565D74C();

  return sub_1955EC0D0(a1, v2);
}

unint64_t sub_1955EBEC0(uint64_t a1)
{
  sub_19565CDCC();
  sub_1955EC354(&qword_1EAECB920, MEMORY[0x1E6968A70]);
  v2 = sub_19565D1CC();

  return sub_1955EC194(a1, v2);
}

unint64_t sub_1955EBF58(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1955EC020(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A8B37B0](v9, a1);
      sub_1955EC07C(v9);
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

unint64_t sub_1955EC0D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1955EC39C();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_19565D75C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1955EC194(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_19565CDCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1955EC354(&unk_1EAECB910, MEMORY[0x1E6968A70]);
      v15 = sub_19565D1FC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1955EC354(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1955EC39C()
{
  result = qword_1EAECE190;
  if (!qword_1EAECE190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAECE190);
  }

  return result;
}

uint64_t sub_1955EC3E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_19565D61C();
  if (!v19)
  {
    return sub_19565D46C();
  }

  v41 = v19;
  v45 = sub_19565D9BC();
  v32 = sub_19565D9CC();
  sub_19565D96C();
  result = sub_19565D60C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_19565D65C();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_19565D9AC();
      result = sub_19565D62C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1955EC808()
{
  if (qword_1EAECB8F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAECB900;
  v1 = qword_1EAECB8B8;

  if (v1 != -1)
  {
    swift_once();
  }

  result = sub_1956214C0(v2);
  qword_1EAECB8E8 = v0;
  return result;
}

uint64_t sub_1955EC8E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19567B940;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = @"nickname";
  *(v0 + 48) = @"imageData";
  *(v0 + 56) = @"imageType";
  *(v0 + 64) = @"cropRect";
  *(v0 + 72) = @"memojiMetadata";
  *(v0 + 80) = @"wallpaper";
  *(v0 + 88) = @"imageDataAvailable";
  *(v0 + 96) = @"organizationName";
  *(v0 + 104) = @"departmentName";
  *(v0 + 112) = @"jobTitle";
  *(v0 + 120) = @"previousFamilyName";
  *(v0 + 128) = @"phoneticGivenName";
  *(v0 + 136) = @"phoneticMiddleName";
  *(v0 + 144) = @"phoneticFamilyName";
  *(v0 + 152) = @"phoneticOrganizationName";
  *(v0 + 160) = @"note";
  *(v0 + 168) = @"birthday";
  *(v0 + 176) = @"nonGregorianBirthday";
  *(v0 + 184) = @"callAlert";
  *(v0 + 192) = @"textAlert";
  *(v0 + 200) = @"phoneNumbers";
  *(v0 + 208) = @"emailAddresses";
  *(v0 + 216) = @"urlAddresses";
  *(v0 + 224) = @"dates";
  *(v0 + 232) = @"instantMessageAddresses";
  *(v0 + 240) = @"contactRelations";
  *(v0 + 248) = @"socialProfiles";
  *(v0 + 256) = @"postalAddresses";
  *(v0 + 264) = @"phonemeData";
  *(v0 + 272) = @"explicitDisplayName";
  *(v0 + 280) = @"mapsData";
  *(v0 + 288) = @"sortingGivenName";
  *(v0 + 296) = @"sortingFamilyName";
  *(v0 + 304) = @"externalIdentifier";
  *(v0 + 312) = @"externalUUID";
  *(v0 + 320) = @"identifier";
  *(v0 + 328) = @"linkIdentifier";
  *(v0 + 336) = @"downtimeWhitelist";
  v41 = qword_1EAECB8D0;
  v1 = @"nickname";
  v2 = @"imageData";
  v3 = @"imageType";
  v4 = @"cropRect";
  v5 = @"memojiMetadata";
  v6 = @"wallpaper";
  v7 = @"imageDataAvailable";
  v8 = @"organizationName";
  v9 = @"departmentName";
  v10 = @"jobTitle";
  v11 = @"previousFamilyName";
  v12 = @"phoneticGivenName";
  v13 = @"phoneticMiddleName";
  v14 = @"phoneticFamilyName";
  v15 = @"phoneticOrganizationName";
  v16 = @"note";
  v17 = @"birthday";
  v18 = @"nonGregorianBirthday";
  v19 = @"callAlert";
  v20 = @"textAlert";
  v21 = @"phoneNumbers";
  v22 = @"emailAddresses";
  v23 = @"urlAddresses";
  v24 = @"dates";
  v25 = @"instantMessageAddresses";
  v26 = @"contactRelations";
  v27 = @"socialProfiles";
  v28 = @"postalAddresses";
  v29 = @"phonemeData";
  v30 = @"explicitDisplayName";
  v31 = @"mapsData";
  v32 = @"sortingGivenName";
  v33 = @"sortingFamilyName";
  v34 = @"externalIdentifier";
  v35 = @"externalUUID";
  v36 = @"identifier";
  v37 = @"linkIdentifier";
  v38 = @"downtimeWhitelist";
  if (v41 != -1)
  {
    swift_once();
  }

  result = sub_1956214C0(v39);
  qword_1EAECB900 = v0;
  return result;
}

__CFString *sub_1955ECD8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19567B950;
  *(v0 + 32) = @"pronunciationGivenName";
  *(v0 + 40) = @"pronunciationFamilyName";
  *(v0 + 48) = @"preferredChannel";
  qword_1EAECB8D8 = v0;
  v1 = @"pronunciationGivenName";
  v2 = @"pronunciationFamilyName";

  return @"preferredChannel";
}

__CFString *sub_1955ECE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19567B960;
  *(v0 + 32) = @"imageHash";
  *(v0 + 40) = @"thumbnailImageData";
  *(v0 + 48) = @"fullscreenImageData";
  *(v0 + 56) = @"preferredLikenessSource";
  *(v0 + 64) = @"preferredApplePersonaIdentifier";
  *(v0 + 72) = @"contactType";
  *(v0 + 80) = @"wallpaper";
  qword_1EAECB8C0 = v0;
  v1 = @"imageHash";
  v2 = @"thumbnailImageData";
  v3 = @"fullscreenImageData";
  v4 = @"preferredLikenessSource";
  v5 = @"preferredApplePersonaIdentifier";
  v6 = @"contactType";

  return @"wallpaper";
}

uint64_t sub_1955ECF74(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t DuplicateContacts.FindResult.debugDescription.getter()
{
  sub_19565D4CC();
  sub_19565D49C();
  v1 = sub_19565DAEC();
  MEMORY[0x19A8B3270](0x6772656D206F7420, 0xE900000000000065);
  return v1;
}

uint64_t sub_1955ED06C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v29 = a1;
  v30 = sub_1955ED4B4;
  v31 = v4;
  v5 = sub_19565D4CC();

  swift_getWitnessTable();
  sub_19565D93C();

  v26 = a1;
  v27 = sub_1955EE398;
  v28 = 0;
  sub_19565CDCC();
  sub_1955EE56C();
  swift_getWitnessTable();
  sub_19565D1BC();
  v25 = a1;
  sub_19565D1AC();
  v24 = a1;

  v34 = sub_19565D1AC();
  v23 = a1;
  v6 = sub_19565D19C();
  WitnessTable = swift_getWitnessTable();
  sub_1955EC3E8(sub_1955F53F4, v22, v6, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  type metadata accessor for DuplicateContactsModerator();
  v8 = swift_allocObject();
  *(v8 + 16) = v15;
  v19 = a1;
  v20 = sub_1955F5414;
  v21 = v8;
  static DuplicateContactsModerator.combinePotentialDuplicatesWithCommonHandles<A>(potentialDuplicates:groupedBy:)();

  v18 = a1;
  v34 = sub_19565D1AC();
  v17 = a1;
  v10 = sub_1955EC3E8(sub_1955F7B10, v16, v6, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  v33 = v10;
  v32 = sub_19565D14C();
  sub_19565D4CC();
  swift_getWitnessTable();
  sub_19565D39C();

  v11 = sub_19565D44C();

  v34 = v11;
  swift_getWitnessTable();
  result = sub_19565D93C();
  *a2 = result;
  return result;
}

BOOL sub_1955ED4F0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_19565CDCC();
  sub_19565D4CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = *a2;
  v13 = *(v4 - 8);
  (*(v13 + 16))(&v16 - v10, a1, v4);
  *&v11[*(TupleTypeMetadata2 + 48)] = v12;
  (*(v6 + 16))(v9, v11, TupleTypeMetadata2);

  v14 = sub_19565D49C();

  (*(v6 + 8))(v11, TupleTypeMetadata2);
  (*(v13 + 8))(v9, v4);
  return v14 > 1;
}

BOOL sub_1955ED6E0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_19565CDCC();
  sub_19565D4CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(v4 - 8);
  (*(v13 + 16))(v16 - v10, a1, v4);
  *&v11[*(TupleTypeMetadata2 + 48)] = v12;
  (*(v6 + 16))(v9, v11, TupleTypeMetadata2);

  v14 = sub_1955ED8C8();
  (*(v6 + 8))(v11, TupleTypeMetadata2);
  (*(v13 + 8))(v9, v4);
  return v14 > 1;
}

uint64_t sub_1955ED8C8()
{
  v17 = sub_19565CD1C();
  v18[0] = v0;
  v18[1] = sub_19565CD5C();
  v18[2] = v1;
  v18[3] = sub_19565CD3C();
  v18[4] = v2;
  result = sub_19565CD9C();
  v4 = 0;
  v18[5] = result;
  v18[6] = v5;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v4 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 + 1;
  v9 = &v18[2 * v4];
  while (1)
  {
    if (v4 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC28);
      swift_arrayDestroy();
      v16 = *(v6 + 16);

      return v16;
    }

    if (v8 == ++v4)
    {
      break;
    }

    v10 = *v9;
    if (!*v9)
    {
      goto LABEL_19;
    }

    v11 = *(v9 - 1);
    v9 += 2;
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1955EADEC(0, *(v6 + 16) + 1, 1);
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1955EADEC((v13 > 1), v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1955EDA3C(void *a1)
{
  sub_19565CDBC();
  v2 = [a1 namePrefix];
  v3 = sub_19565D28C();
  v5 = v4;

  sub_1955EE604(257, v3, v5);

  sub_19565CD8C();
  v6 = [a1 givenName];
  v7 = sub_19565D28C();
  v9 = v8;

  sub_1955EE604(257, v7, v9);

  sub_19565CD2C();
  v10 = [a1 middleName];
  v11 = sub_19565D28C();
  v13 = v12;

  sub_1955EE604(257, v11, v13);

  sub_19565CD6C();
  v14 = [a1 familyName];
  v15 = sub_19565D28C();
  v17 = v16;

  sub_1955EE604(257, v15, v17);

  sub_19565CD4C();
  v18 = [a1 nameSuffix];
  v19 = sub_19565D28C();
  v21 = v20;

  sub_1955EE604(257, v19, v21);

  return sub_19565CDAC();
}

uint64_t static DuplicateContacts.prefixAndDiacriticsComparator(_:)(void *a1)
{
  sub_19565CDBC();
  v2 = [a1 namePrefix];
  v3 = sub_19565D28C();
  v5 = v4;

  sub_1955EE604(257, v3, v5);

  sub_19565CD8C();
  v6 = [a1 givenName];
  v7 = sub_19565D28C();
  v9 = v8;

  sub_1955EE604(257, v7, v9);

  sub_19565CD2C();
  v10 = [a1 middleName];
  v11 = sub_19565D28C();
  v13 = v12;

  sub_1955EE604(257, v11, v13);

  sub_19565CD6C();
  v14 = [a1 familyName];
  v15 = sub_19565D28C();
  v17 = v16;

  sub_1955EE604(257, v15, v17);

  sub_19565CD4C();
  v18 = [a1 nameSuffix];
  v19 = sub_19565D28C();
  v21 = v20;

  sub_1955EE604(257, v19, v21);

  return sub_19565CDAC();
}

uint64_t sub_1955EDE1C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_19565CDCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  a2(a1);
  (*(v5 + 16))(v8, v10, v4);
  sub_1955EE56C();
  sub_19565D87C();
  return (*(v5 + 8))(v10, v4);
}

BOOL sub_1955EDF5C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_19565CDCC();
  sub_19565D4CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  v12 = *a2;
  v13 = *(v4 - 8);
  (*(v13 + 16))(v16 - v10, a1, v4);
  *&v11[*(TupleTypeMetadata2 + 48)] = v12;
  (*(v6 + 16))(v9, v11, TupleTypeMetadata2);

  v14 = sub_1955ED8C8();
  (*(v6 + 8))(v11, TupleTypeMetadata2);
  (*(v13 + 8))(v9, v4);
  return v14 == 1;
}

uint64_t sub_1955EE144(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  type metadata accessor for DuplicateContactsModerator();
  static DuplicateContactsModerator.groupByCommonHandles<A>(contacts:)(v4, a3);
  sub_19565D4CC();
  sub_19565D4CC();
  swift_getWitnessTable();
  return sub_19565D4AC();
}

void sub_1955EE1F4()
{
  sub_19565D4CC();
  swift_getWitnessTable();
  sub_19565D64C();
  if (v5)
  {
    v0 = [v5 linkIdentifier];

    if (v0)
    {
      sub_19565D28C();

      v1 = *MEMORY[0x1E6996570];
      if (*MEMORY[0x1E6996570])
      {
        v2 = sub_19565D27C();
        v3 = (*(v1 + 16))(v1, v2);

        if (v3)
        {
          MEMORY[0x1EEE9AC00](v4);
          swift_getWitnessTable();
          sub_19565D3BC();
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1955EE398(void *a1)
{
  sub_19565CDBC();
  v2 = [a1 givenName];
  v3 = sub_19565D28C();
  v5 = v4;

  sub_1955EE604(385, v3, v5);

  sub_19565CD2C();
  v6 = [a1 middleName];
  v7 = sub_19565D28C();
  v9 = v8;

  sub_1955EE604(385, v7, v9);

  sub_19565CD6C();
  v10 = [a1 familyName];
  v11 = sub_19565D28C();
  v13 = v12;

  sub_1955EE604(385, v11, v13);

  sub_19565CD4C();
  v14 = [a1 nameSuffix];
  v15 = sub_19565D28C();
  v17 = v16;

  sub_1955EE604(385, v15, v17);

  sub_19565CDAC();
  result = sub_1955ED8C8();
  if (result <= 0)
  {
    return sub_1955F4880();
  }

  return result;
}

unint64_t sub_1955EE56C()
{
  result = qword_1EAECB920;
  if (!qword_1EAECB920)
  {
    sub_19565CDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAECB920);
  }

  return result;
}

uint64_t sub_1955EE604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_19565CC3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v21 - v10;
  v22 = a2;
  v23 = a3;
  sub_19565CFBC();
  v12 = sub_19565CFCC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_1955F7844();
  v13 = sub_19565D7BC();
  v15 = v14;
  sub_1954C2698(v11, &unk_1EAECDFE0);
  v22 = v13;
  v23 = v15;
  v21[2] = 0x2B5D0A735C5BLL;
  v21[3] = 0xE600000000000000;
  v21[0] = 32;
  v21[1] = 0xE100000000000000;
  v16 = sub_19565D7AC();
  v18 = v17;

  v22 = v16;
  v23 = v18;
  sub_19565CC2C();
  v19 = sub_19565D79C();
  (*(v6 + 8))(v8, v5);

  return v19;
}

uint64_t sub_1955EE868(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 linkIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_19565D28C();
    v9 = v8;

    if (v7 == a2 && v9 == a3)
    {

      v12 = 0;
    }

    else
    {
      v11 = sub_19565DB1C();

      v12 = v11 ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void sub_1955EE924()
{
  qword_1EAECDCD8 = MEMORY[0x1E69E7CC0];
  unk_1EAECDCE0 = MEMORY[0x1E69E7CC0];
  qword_1EAECDCE8 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1955EE940@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(*a2 + 16);
  v10 = *a2 + 32;

  v63 = v5;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v9 != v12)
  {
    if (v12 >= *(v7 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return result;
    }

    v14 = *(v10 + 8 * v12);
    if (v14 >> 62)
    {
      result = sub_19565D81C();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v12;
    if (result > 0)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v13;
      v67 = v4;
      if ((result & 1) == 0)
      {
        result = sub_1955EAE0C(0, v13[2] + 1, 1);
        v13 = v73[0];
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1955EAE0C((v15 > 1), v16 + 1, 1);
        v13 = v73[0];
      }

      v13[2] = v16 + 1;
      v13[v16 + 4] = v14;
      v4 = v67;
    }
  }

  v73[0] = v4;

  sub_1956215B0(v13);
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v61 = v4;
  v74[0] = v3;
  v74[1] = v6;
  while (1)
  {
    v19 = v74[v17];
    v20 = v19 >> 62;
    v21 = v19 >> 62 ? sub_19565D81C() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v18 >> 62;
    if (v18 >> 62)
    {
      break;
    }

    v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v23 + v21;
    if (__OFADD__(v23, v21))
    {
      goto LABEL_44;
    }

LABEL_20:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v22)
      {
        v25 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v24 <= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_25:
      sub_19565D81C();
      goto LABEL_26;
    }

    if (v22)
    {
      goto LABEL_25;
    }

LABEL_26:
    result = sub_19565D91C();
    v18 = result;
    v25 = result & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    v70 = v21;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v20)
    {
      v29 = v25;
      result = sub_19565D81C();
      v25 = v29;
      v28 = result;
      if (!result)
      {
LABEL_14:

        if (v70 > 0)
        {
          goto LABEL_79;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v28)
      {
        goto LABEL_14;
      }
    }

    if (((v27 >> 1) - v26) < v70)
    {
      goto LABEL_81;
    }

    v30 = v25 + 8 * v26 + 32;
    v68 = v25;
    if (v20)
    {
      if (v28 < 1)
      {
        goto LABEL_85;
      }

      v64 = v18;
      sub_1955F7900();
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
        v33 = sub_1955F5264(v73, i, v19);
        v35 = *v34;
        (v33)(v73, 0);
        *(v30 + 8 * i) = v35;
      }

      v18 = v64;
      v31 = v70;
    }

    else
    {
      sub_1954C3460(0, &qword_1EAECB830);
      v31 = v70;
      swift_arrayInitWithCopy();
    }

    if (v31 > 0)
    {
      v36 = *(v68 + 16);
      v37 = __OFADD__(v36, v31);
      v38 = v36 + v31;
      if (v37)
      {
        goto LABEL_83;
      }

      *(v68 + 16) = v38;
    }

LABEL_15:
    if (++v17 == 2)
    {
      goto LABEL_45;
    }
  }

  v39 = sub_19565D81C();
  v24 = v39 + v21;
  if (!__OFADD__(v39, v21))
  {
    goto LABEL_20;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDF80);
  swift_arrayDestroy();
  v40 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  v72[0] = v63;
  v72[1] = v8;
  v65 = v18;
  while (2)
  {
    v42 = v72[v40];
    v43 = v42 >> 62;
    if (v42 >> 62)
    {
      v44 = sub_19565D81C();
    }

    else
    {
      v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v41 >> 62;
    if (!(v41 >> 62))
    {
      v46 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v46 + v44;
      if (__OFADD__(v46, v44))
      {
        goto LABEL_76;
      }

LABEL_52:

      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v66 = v40;
      if (result)
      {
        if (!v45)
        {
          v48 = v41 & 0xFFFFFFFFFFFFFF8;
          v69 = v41;
          if (v47 > *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_58:
            result = sub_19565D91C();
            v69 = result;
            v48 = result & 0xFFFFFFFFFFFFFF8;
          }

          v71 = v44;
          v49 = *(v48 + 16);
          v50 = *(v48 + 24);
          if (v43)
          {
            result = sub_19565D81C();
            v51 = result;
            if (result)
            {
              goto LABEL_63;
            }

LABEL_46:

            if (v71 > 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v51 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v51)
            {
              goto LABEL_46;
            }

LABEL_63:
            if (((v50 >> 1) - v49) < v71)
            {
              goto LABEL_82;
            }

            v52 = v48 + 8 * v49 + 32;
            if (v43)
            {
              if (v51 < 1)
              {
                goto LABEL_86;
              }

              sub_1955F7900();
              for (j = 0; j != v51; ++j)
              {
                v55 = sub_1955F5264(v73, j, v42);
                v57 = *v56;
                (v55)(v73, 0);
                *(v52 + 8 * j) = v57;
              }

              v18 = v65;
              v53 = v71;
            }

            else
            {
              sub_1954C3460(0, &qword_1EAECB830);
              v53 = v71;
              swift_arrayInitWithCopy();
            }

            if (v53 > 0)
            {
              v58 = *(v48 + 16);
              v37 = __OFADD__(v58, v53);
              v59 = v58 + v53;
              if (v37)
              {
                goto LABEL_84;
              }

              *(v48 + 16) = v59;
            }
          }

          v41 = v69;
          v40 = v66 + 1;
          if (v66 == 1)
          {
            goto LABEL_77;
          }

          continue;
        }
      }

      else if (!v45)
      {
        goto LABEL_58;
      }

      sub_19565D81C();
      goto LABEL_58;
    }

    break;
  }

  v60 = sub_19565D81C();
  v47 = v60 + v44;
  if (!__OFADD__(v60, v44))
  {
    goto LABEL_52;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  result = swift_arrayDestroy();
  *a3 = v61;
  a3[1] = v18;
  a3[2] = v41;
  return result;
}

Contacts::DuplicateContacts::MergeResult::UndoResult __swiftcall DuplicateContacts.MergeResult.undo(for:)(Swift::OpaquePointer a1)
{
  v31 = v1;
  v4 = v2[1];
  v33 = v2[2];
  v34 = *v2;
  v46 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_43;
  }

  v40 = v4 & 0xFFFFFFFFFFFFFF8;
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  rawValue = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  v43 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  if (a1._rawValue < 0)
  {
    rawValue = a1._rawValue;
  }

  v30 = rawValue;

  if (v5)
  {
    v39 = v4 & 0xC000000000000001;
    v37 = v4 + 32;
    v41 = 0;
    v42 = a1._rawValue & 0xC000000000000001;
    v32 = MEMORY[0x1E69E7CC0];
    v38 = a1._rawValue >> 62;
    v35 = v4;
    v36 = v5;
    while (1)
    {
      if (v39)
      {
        v10 = v41;
        v11 = MEMORY[0x19A8B3850]();
      }

      else
      {
        v10 = v41;
        if (v41 >= *(v40 + 16))
        {
          goto LABEL_42;
        }

        v11 = *(v37 + 8 * v41);
      }

      v44 = v11;
      v12 = __OFADD__(v10, 1);
      v13 = v10 + 1;
      if (v12)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v40 = v4 & 0xFFFFFFFFFFFFFF8;
        v5 = sub_19565D81C();
        goto LABEL_3;
      }

      v41 = v13;
      if (v38)
      {
        v14 = sub_19565D81C();
        if (v14)
        {
LABEL_13:
          v4 = 0;
          while (1)
          {
            if (v42)
            {
              v15 = MEMORY[0x19A8B3850](v4, a1._rawValue);
            }

            else
            {
              if (v4 >= *(v43 + 16))
              {
                goto LABEL_40;
              }

              v15 = *(a1._rawValue + v4 + 4);
            }

            v16 = v15;
            v17 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v18 = a1._rawValue;
            v19 = [v15 identifier];
            v20 = sub_19565D28C();
            v22 = v21;

            v23 = [v44 identifier];
            v24 = sub_19565D28C();
            v26 = v25;

            if (v20 == v24 && v22 == v26)
            {
              break;
            }

            v28 = sub_19565DB1C();

            if (v28)
            {
              goto LABEL_27;
            }

            ++v4;
            a1._rawValue = v18;
            if (v17 == v14)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          [v16 mutableCopy];

          sub_19565D7CC();
          swift_unknownObjectRelease();
          sub_1954C3460(0, &qword_1EAECB830);
          a1._rawValue = v18;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_28;
          }

          [v45 setSnapshot_];

          MEMORY[0x19A8B3320]();
          v4 = v35;
          v29 = v36;
          if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19565D42C();
            v29 = v36;
          }

          v7 = sub_19565D48C();
          v32 = v46;
          goto LABEL_29;
        }
      }

      else
      {
        v14 = *(v43 + 16);
        if (v14)
        {
          goto LABEL_13;
        }
      }

LABEL_28:

      v4 = v35;
      v29 = v36;
LABEL_29:
      if (v41 == v29)
      {
        goto LABEL_38;
      }
    }
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_38:
  *v31 = v34;
  v31[1] = v32;
  v31[2] = v33;
  result.needAdded._rawValue = v9;
  result.wereModified._rawValue = v8;
  result.needUnlinked._rawValue = v7;
  return result;
}

uint64_t sub_1955EF3A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v12 = a2;
    v13 = a3;
    v14 = MEMORY[0x1E69E7CC0];
    sub_1955EAE4C(0, v3, 0);
    v4 = v14;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6;
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1955EAE4C((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 136 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = xmmword_19567B970;
      *(v10 + 56) = 0u;
      *(v10 + 72) = 0u;
      *(v10 + 88) = 0u;
      *(v10 + 104) = 0u;
      *(v10 + 120) = 0u;
      *(v10 + 136) = 0u;
      *(v10 + 152) = 0;
      *(v10 + 160) = 0xB000000000000000;
      ++v6;
      --v3;
    }

    while (v3);
    a2 = v12;
    a3 = v13;
  }

  sub_1955EF4E4(v4, a2, a3);
}

uint64_t sub_1955EF4E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1955EAE2C(0, v4, 0);
    v5 = v53;
    v7 = a1 + 40;
    for (i = v4 - 1; ; --i)
    {
      v9 = *(v7 + 72);
      v10 = *(v7 + 104);
      v51 = *(v7 + 88);
      *v52 = v10;
      *&v52[16] = *(v7 + 120);
      v11 = *(v7 + 8);
      v12 = *(v7 + 40);
      v47 = *(v7 + 24);
      v48 = v12;
      v49 = *(v7 + 56);
      v50 = v9;
      v45 = *(v7 - 8);
      v46 = v11;
      v13 = *(v7 + 64);
      v39 = *(v7 + 48);
      v40 = v13;
      v14 = *(v7 + 96);
      v41 = *(v7 + 80);
      v42 = v14;
      v15 = *v7;
      v16 = *(v7 + 32);
      v37 = *(v7 + 16);
      v38 = v16;
      v35 = *&v52[8];
      v36 = v15;
      sub_1955F7964(&v45, v34, &qword_1EAECDC90);
      sub_1955EF768(&v36, &v35, a2, &v43);
      sub_1954C2698(&v45, &qword_1EAECDC90);
      v17 = v43;
      v18 = v44;
      v53 = v5;
      v20 = v5[2];
      v19 = v5[3];
      if (v20 >= v19 >> 1)
      {
        v31 = v43;
        sub_1955EAE2C((v19 > 1), v20 + 1, 1);
        v17 = v31;
        v5 = v53;
      }

      v5[2] = v20 + 1;
      v21 = &v5[3 * v20];
      *(v21 + 2) = v17;
      v21[6] = v18;
      if (!i)
      {
        break;
      }

      v7 += 136;
    }

    v3 = a3;
  }

  if (qword_1EAECD980 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v22 = qword_1EAECDCD8;
    v23 = unk_1EAECDCE0;
    v24 = qword_1EAECDCE8;
    v25 = v5[2];

    if (!v25)
    {
      break;
    }

    v26 = 0;
    v27 = v5 + 6;
    while (v26 < v5[2])
    {
      ++v26;
      v28 = *v27;
      v29 = *(v27 - 1);
      v34[0] = v22;
      v34[1] = v23;
      v34[2] = v24;
      v36 = v29;
      *&v37 = v28;
      sub_1955EE940(v34, &v36, &v45);

      v23 = *(&v45 + 1);
      v22 = v45;
      v27 += 3;
      v24 = v46;
      if (v25 == v26)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_13:

  *v3 = v22;
  v3[1] = v23;
  v3[2] = v24;
  return result;
}

void sub_1955EF768(__int128 *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, unint64_t *a4@<X8>)
{
  v4 = a1[5];
  v159 = a1[4];
  v160 = v4;
  v161 = a1[6];
  v5 = a1[1];
  v155 = *a1;
  v156 = v5;
  v6 = a1[3];
  v157 = a1[2];
  v158 = v6;
  v122 = *a2;
  v115 = a2[1];
  v7 = a3;

  v9 = sub_1955F57A0(v8, v7);

  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
  v109 = v9;
  while (v13)
  {
LABEL_9:
    v18 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v18 >> 62)
    {
      v19 = sub_19565D81C();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 &= v13 - 1;
    if (v19 == 1)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v145 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = &v145;
        sub_1955EAE0C(0, v16[2] + 1, 1);
        v16 = v145;
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v7 = &v145;
        sub_1955EAE0C((v21 > 1), v22 + 1, 1);
        v16 = v145;
      }

      v16[2] = v22 + 1;
      v16[v22 + 4] = v18;
      v9 = v109;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_9;
    }
  }

  v15 = 0;
  *&v145 = MEMORY[0x1E69E7CC0];
  v23 = v16[2];
  while (1)
  {
    do
    {
      while (1)
      {
        if (v23 == v15)
        {

          v25 = 1 << *(v9 + 32);
          v26 = -1;
          if (v25 < 64)
          {
            v26 = ~(-1 << v25);
          }

          v27 = v26 & *(v9 + 64);
          v28 = (v25 + 63) >> 6;

          v15 = 0;
          v7 = MEMORY[0x1E69E7CC0];
          v29 = MEMORY[0x1E69E7CC0];
          while (v27)
          {
LABEL_40:
            v31 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v27)))));
            if (v31 >> 62)
            {
              v32 = sub_19565D81C();
            }

            else
            {
              v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v27 &= v27 - 1;
            if (v32 > 1)
            {

              v33 = swift_isUniquelyReferenced_nonNull_native();
              *&v145 = v29;
              if ((v33 & 1) == 0)
              {
                sub_1955EAE0C(0, *(v29 + 16) + 1, 1);
                v29 = v145;
              }

              v35 = *(v29 + 16);
              v34 = *(v29 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_1955EAE0C((v34 > 1), v35 + 1, 1);
                v29 = v145;
              }

              *(v29 + 16) = v35 + 1;
              *(v29 + 8 * v35 + 32) = v31;
              v9 = v109;
            }
          }

          while (1)
          {
            v30 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_138;
            }

            if (v30 >= v28)
            {
              break;
            }

            v27 = *(v10 + 8 * v30);
            ++v15;
            if (v27)
            {
              v15 = v30;
              goto LABEL_40;
            }
          }

          v36 = *(v29 + 16);
          if (v36)
          {
            *&v125 = v7;
            sub_1955EAE4C(0, v36, 0);
            v37 = v7;
            v15 = v36 - 1;
            v38 = 32;
            v39 = v122;
            while (1)
            {
              v40 = *(v29 + v38);
              v149 = v159;
              v150 = v160;
              v151 = v161;
              v145 = v155;
              v146 = v156;
              v147 = v157;
              v148 = v158;

              sub_1955F7964(&v155, &v136, &qword_1EAECDD98);
              sub_1955F79CC(v39, v115);
              *&v125 = v37;
              v42 = *(v37 + 16);
              v41 = *(v37 + 24);
              v10 = v42 + 1;
              if (v42 >= v41 >> 1)
              {
                sub_1955EAE4C((v41 > 1), v42 + 1, 1);
                v39 = v122;
                v37 = v125;
              }

              *(v37 + 16) = v10;
              v43 = v37 + 136 * v42;
              *(v43 + 32) = v40;
              v44 = v145;
              v45 = v146;
              *(v43 + 72) = v147;
              *(v43 + 56) = v45;
              *(v43 + 40) = v44;
              v46 = v148;
              v47 = v149;
              v48 = v150;
              *(v43 + 136) = v151;
              *(v43 + 120) = v48;
              *(v43 + 104) = v47;
              *(v43 + 88) = v46;
              *(v43 + 152) = v39;
              *(v43 + 160) = v115;
              if (!v15)
              {
                break;
              }

              --v15;
              v38 += 8;
            }

            v7 = MEMORY[0x1E69E7CC0];
            v49 = *(v37 + 16);
            if (v49)
            {
LABEL_56:
              v154 = v7;
              v7 = &v154;
              sub_1955EAE2C(0, v49, 0);
              if (*(v37 + 16))
              {
                v50 = 0;
                v7 = v154;
                v15 = 32;
                while (1)
                {
                  v136 = *(v37 + v15);
                  v51 = *(v37 + v15 + 16);
                  v52 = *(v37 + v15 + 32);
                  v53 = *(v37 + v15 + 64);
                  v139 = *(v37 + v15 + 48);
                  v140 = v53;
                  v137 = v51;
                  v138 = v52;
                  v54 = *(v37 + v15 + 80);
                  v55 = *(v37 + v15 + 96);
                  v56 = *(v37 + v15 + 112);
                  v144 = *(v37 + v15 + 128);
                  v142 = v55;
                  v143 = v56;
                  v141 = v54;
                  v131 = v55;
                  v132 = v56;
                  v57 = v136;
                  v133 = v144;
                  v127 = v138;
                  v128 = v139;
                  v129 = v53;
                  v130 = v54;
                  v125 = v136;
                  v126 = v137;
                  sub_1955F7964(&v136, v124, &qword_1EAECDC90);
                  sub_1955F06A0(v57, (&v125 + 8), &v132 + 1, &v134);
                  v151 = v131;
                  v152 = v132;
                  v153 = v133;
                  v147 = v127;
                  v148 = v128;
                  v149 = v129;
                  v150 = v130;
                  v145 = v125;
                  v146 = v126;
                  sub_1954C2698(&v145, &qword_1EAECDC90);
                  v58 = v134;
                  v59 = v135;
                  v154 = v7;
                  v61 = *(v7 + 16);
                  v60 = *(v7 + 24);
                  v10 = v61 + 1;
                  if (v61 >= v60 >> 1)
                  {
                    v118 = v134;
                    sub_1955EAE2C((v60 > 1), v61 + 1, 1);
                    v58 = v118;
                    v7 = v154;
                  }

                  *(v7 + 16) = v10;
                  v62 = (v7 + 24 * v61);
                  *(v62 + 2) = v58;
                  v62[6] = v59;
                  if (v49 - 1 == v50)
                  {
                    break;
                  }

                  ++v50;
                  v15 += 136;
                  if (v50 >= *(v37 + 16))
                  {
                    goto LABEL_140;
                  }
                }

LABEL_66:
                v10 = v121;
                if (qword_1EAECD980 != -1)
                {
                  goto LABEL_143;
                }

                goto LABEL_67;
              }

LABEL_140:
              __break(1u);
              goto LABEL_141;
            }
          }

          else
          {

            v37 = MEMORY[0x1E69E7CC0];
            v49 = *(MEMORY[0x1E69E7CC0] + 16);
            if (v49)
            {
              goto LABEL_56;
            }
          }

          v7 = MEMORY[0x1E69E7CC0];
          goto LABEL_66;
        }

        if (v15 >= v16[2])
        {
          goto LABEL_139;
        }

        v7 = v16[v15 + 4];
        if (v7 >> 62)
        {
          break;
        }

        ++v15;
        if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }
      }

      ++v15;
    }

    while (!sub_19565D81C());
LABEL_23:
    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x19A8B3850](0, v7);

LABEL_26:
    MEMORY[0x19A8B3320](v24);
    if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19565D42C();
    }

    v7 = &v145;
    sub_19565D48C();
    v121 = v145;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v7 + 32);
    goto LABEL_26;
  }

  __break(1u);
  while (2)
  {
    v123 = sub_19565D81C();
    if (v13 >> 62)
    {
LABEL_146:
      v67 = sub_19565D81C();
      goto LABEL_74;
    }

LABEL_73:
    v67 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_74:
    if (__OFADD__(v123, v67))
    {
      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      v68 = MEMORY[0x1E69E7CC0];
      if (v123 + v67 >= 2)
      {

        v68 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDC60);
      v69 = swift_allocObject();
      *&v145 = v10;

      v70 = &v145;
      sub_1956216B4(v68);
      *(v69 + 32) = v145;
      v16 = (v69 + 32);
      v67 = *v16;
      if (!(*v16 >> 62))
      {
        v71 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_79;
      }
    }

    v70 = v67;
    v71 = sub_19565D81C();
    v67 = v70;
LABEL_79:
    v119 = v67;
    v107 = v16;
    if (!v71)
    {

      goto LABEL_105;
    }

    v111 = v71;
    v112 = v67 & 0xC000000000000001;
    if ((v67 & 0xC000000000000001) != 0)
    {
      v105 = v67;

      v73 = v105;
      v74 = MEMORY[0x19A8B3850](0, v105);
    }

    else
    {
      if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_153;
      }

      v72 = *(v67 + 32);
      v73 = v67;

      v74 = v72;
    }

    v75 = v74;
    v70 = [v74 linkIdentifier];

    if (!v70)
    {
      goto LABEL_105;
    }

    v76 = *MEMORY[0x1E6996570];
    v110 = sub_19565D28C();
    v116 = v77;
    if (!v76)
    {
      goto LABEL_155;
    }

    v78 = (*(v76 + 16))(v76, v70);

    if (v78)
    {
      v7 = 0;
      v79 = v73;
      v106 = v73 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v112)
        {
          v80 = MEMORY[0x19A8B3850](v7, v79);
        }

        else
        {
          v81 = *(v106 + 16);
          if (v7 >= v81)
          {
            __break(1u);
            goto LABEL_150;
          }

          v80 = *(v79 + 8 * v7 + 32);
        }

        v10 = v80;
        v15 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v82 = [v80 linkIdentifier];
        if (!v82)
        {

          goto LABEL_104;
        }

        v78 = v82;
        v83 = sub_19565D28C();
        v76 = v84;

        if (v83 == v110 && v76 == v116)
        {

          v79 = v119;
        }

        else
        {
          v78 = sub_19565DB1C();

          v79 = v119;
          if ((v78 & 1) == 0)
          {

LABEL_104:
            v10 = v121;
            v15 = MEMORY[0x1E69E7CC0];
            goto LABEL_105;
          }
        }

        ++v7;
        v10 = v121;
        if (v15 == v111)
        {

          v87 = MEMORY[0x1E69E7CC0];
          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_109;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_143:
        swift_once();
LABEL_67:
        v63 = qword_1EAECDCD8;
        v13 = unk_1EAECDCE0;
        v9 = qword_1EAECDCE8;
        v16 = *(v7 + 16);

        if (!v16)
        {
          break;
        }

        v64 = 0;
        v15 = v7 + 48;
        while (v64 < *(v7 + 16))
        {
          v64 = (v64 + 1);
          v65 = *v15;
          v66 = *(v15 - 16);
          *&v136 = v63;
          *(&v136 + 1) = v13;
          *&v137 = v9;
          v125 = v66;
          *&v126 = v65;
          sub_1955EE940(&v136, &v125, &v145);

          v13 = *(&v145 + 1);
          v63 = v145;
          v15 += 24;
          v9 = v146;
          if (v16 == v64)
          {
            goto LABEL_71;
          }
        }

LABEL_141:
        __break(1u);
      }

LABEL_71:

      if (v10 >> 62)
      {
        continue;
      }

      v123 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >> 62)
      {
        goto LABEL_146;
      }

      goto LABEL_73;
    }

    break;
  }

LABEL_105:
  v86 = swift_isUniquelyReferenced_nonNull_native();
  *&v125 = v15;
  v87 = v15;
  if ((v86 & 1) == 0)
  {
    sub_1955EAE0C(0, *(v15 + 16) + 1, 1);
    v87 = v125;
  }

  v78 = *(v87 + 16);
  v81 = *(v87 + 24);
  v76 = v78 + 1;
  if (v78 >= v81 >> 1)
  {
LABEL_150:
    sub_1955EAE0C((v81 > 1), v76, 1);
    v87 = v125;
  }

  *(v87 + 16) = v76;
  *(v87 + 8 * v78 + 32) = v119;
LABEL_109:
  swift_setDeallocating();
  sub_1954C2698(v107, &unk_1EAECDF80);
  swift_deallocClassInstance();
  v124[0] = v13;
  v117 = *(&v155 + 1);
  v120 = v155;
  v138 = v158;
  v139 = v159;
  v140 = v160;
  v141 = v161;
  v136 = v156;
  v137 = v157;
  v88 = v122;
  if (*(&v155 + 1) == 1)
  {

    goto LABEL_121;
  }

  if (!v123)
  {
    sub_1955F7964(&v155, &v145, &qword_1EAECDD98);

    v94 = MEMORY[0x1E69E7CC0];
LABEL_120:
    sub_1956216B4(v94);
    sub_1954C2698(&v155, &qword_1EAECDD98);
    v88 = v122;
LABEL_121:
    v95 = v123;
    if (v115 >> 60 == 11)
    {
    }

    else
    {
      if (v123)
      {
        *&v145 = v15;
        sub_1955F79E0(v88, v115);
        v70 = &v145;
        sub_19565D97C();
        if (v123 < 0)
        {
          goto LABEL_154;
        }

        v114 = v87;
        v96 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v97 = MEMORY[0x19A8B3850](v96, v10);
          }

          else
          {
            v97 = *(v10 + 8 * v96 + 32);
          }

          v98 = v97;
          if (v115 >> 60 != 15)
          {
            v99 = objc_allocWithZone(CNWallpaper);
            sub_1955F79CC(v122, v115);
            sub_1955F79CC(v122, v115);
            v100 = sub_19565CF0C();
            v101 = [v99 initWithPosterArchiveData_];

            sub_1955F7A48(v122, v115);
            [v98 setWallpaper_];

            v95 = v123;
            sub_1955F7A48(v122, v115);
          }

          ++v96;
          sub_19565D94C();
          sub_19565D98C();
          sub_19565D99C();
          sub_19565D95C();
        }

        while (v95 != v96);

        v102 = v145;
        v88 = v122;
        v87 = v114;
        v103 = v115;
      }

      else
      {
        v103 = v115;
        sub_1955F79E0(v88, v115);

        v102 = MEMORY[0x1E69E7CC0];
      }

      sub_1956216B4(v102);

      sub_1955F7A48(v88, v103);
    }

    v104 = v124[0];

    *a4 = v87;
    a4[1] = v104;
    a4[2] = v9;
    return;
  }

  *&v134 = v15;
  sub_1955F7964(&v155, &v145, &qword_1EAECDD98);

  v70 = &v134;
  sub_19565D97C();
  if ((v123 & 0x8000000000000000) == 0)
  {
    v113 = v87;
    v89 = 0;
    v90 = v10 & 0xC000000000000001;
    do
    {
      if (v90)
      {
        v91 = MEMORY[0x19A8B3850](v89, v121);
      }

      else
      {
        v91 = *(v121 + 8 * v89 + 32);
      }

      v92 = v91;
      ++v89;
      *&v145 = v120;
      *(&v145 + 1) = v117;
      v148 = v138;
      v149 = v139;
      v150 = v140;
      v151 = v141;
      v146 = v136;
      v147 = v137;
      v93 = sub_1956197F8(v91);

      sub_19565D94C();
      sub_19565D98C();
      sub_19565D99C();
      sub_19565D95C();
    }

    while (v123 != v89);
    v94 = v134;
    v10 = v121;
    v15 = MEMORY[0x1E69E7CC0];
    v87 = v113;
    goto LABEL_120;
  }

LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:

  __break(1u);
}

uint64_t sub_1955F06A0@<X0>(unint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a1;
  v7 = a2[5];
  v48 = a2[4];
  v49 = v7;
  v50 = a2[6];
  v8 = a2[1];
  v44 = *a2;
  v45 = v8;
  v9 = a2[3];
  v46 = a2[2];
  v47 = v9;
  v10 = a1 >> 62;
  v11 = *a3;
  v35 = a3[1];
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_19565D81C())
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      goto LABEL_11;
    }

    v14 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x19A8B3850](0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      v15 = *(v5 + 32);
    }

    v4 = v15;
    if (i < 1)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v10)
    {
      if (v5 < 0)
      {
        v18 = v5;
      }

      else
      {
        v18 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_19565D81C() < 1)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        swift_unknownObjectRelease();
        v21 = v14;
LABEL_27:
        sub_1955F4A70(v18, v21, v5, i);
        v5 = v24;
LABEL_34:
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      v16 = sub_19565D81C();
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        __break(1u);
LABEL_11:
        result = v13;
        v5 = v13;
        goto LABEL_54;
      }
    }

    if (v16 < i)
    {
      goto LABEL_61;
    }

    if (!v14 || i == 1)
    {

      if (!v10)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1954C3460(0, &qword_1EAECB830);

      v19 = 1;
      do
      {
        v20 = v19 + 1;
        sub_19565D8FC();
        v19 = v20;
      }

      while (i != v20);
      if (!v10)
      {
LABEL_23:
        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
        v5 = 1;
        i = (2 * i) | 1;
        if ((i & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    v18 = sub_19565DA3C();
    v5 = v22;
    i = v23;
    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_28:
    v14 = v21;
    sub_19565DB2C();
    swift_unknownObjectRetain_n();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      swift_unknownObjectRelease();
      v25 = MEMORY[0x1E69E7CC0];
    }

    v26 = *(v25 + 16);

    if (__OFSUB__(i >> 1, v5))
    {
      goto LABEL_64;
    }

    if (v26 != (i >> 1) - v5)
    {
      goto LABEL_65;
    }

    v5 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v5)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_34;
    }

LABEL_35:
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      v27 = *(v5 + 16);
      goto LABEL_38;
    }

LABEL_62:
    v27 = sub_19565D81C();
LABEL_38:
    v28 = v4;
    if (!v27)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x19A8B3850](v10, v5);
      }

      else
      {
        if (v10 >= *(v5 + 16))
        {
          goto LABEL_56;
        }

        v29 = *(v5 + 8 * v10 + 32);
      }

      v30 = v29;
      v31 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v4 = v28;
      sub_1955F0B20(v29);

      ++v10;
      if (v31 == v27)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

LABEL_47:

  if (*(&v44 + 1) != 1)
  {
    v37 = v44;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v38 = v45;
    v39 = v46;
    sub_1955F7964(&v44, v36, &qword_1EAECDD98);
    sub_1956197F8(v28);
    sub_1954C2698(&v44, &qword_1EAECDD98);
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v35 >> 60 != 11)
  {
    if (v35 >> 60 != 15)
    {
      v32 = objc_allocWithZone(CNWallpaper);
      sub_1955F79CC(v11, v35);
      sub_1955F79CC(v11, v35);
      sub_1955F79E0(v11, v35);
      v33 = sub_19565CF0C();
      v34 = [v32 initWithPosterArchiveData_];

      sub_1955F7A48(v11, v35);
      [v28 setWallpaper_];
      sub_1955F7A48(v11, v35);
    }

    sub_1955F7A48(v11, v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
  result = swift_allocObject();
  *(result + 16) = xmmword_19567B7B0;
  *(result + 32) = v28;
LABEL_54:
  *a4 = v13;
  a4[1] = result;
  a4[2] = v5;
  return result;
}

void sub_1955F0B20(void *a1)
{
  v2 = v1;
  v4 = sub_19565CCDC();
  v333 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v325 = &v316 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v326 = &v316 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDDA0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v332 = &v316 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v318 = &v316 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v319 = &v316 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v316 = &v316 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v317 = &v316 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v322 = &v316 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v320 = &v316 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v321 = &v316 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v323 = &v316 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v328 = &v316 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v324 = &v316 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v331 = (&v316 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v329 = &v316 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v327 = &v316 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v334 = &v316 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v330 = (&v316 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v316 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v316 - v44;
  sub_1955F34D4(a1);
  v46 = [v1 organizationName];
  v47 = sub_19565D28C();
  v49 = v48;

  v50 = [a1 organizationName];
  v51 = sub_19565D28C();
  v53 = v52;

  sub_1955F441C(v51, v53, v47, v49);

  v54 = sub_19565D27C();

  [v2 setOrganizationName_];

  v55 = [v2 departmentName];
  v56 = sub_19565D28C();
  v58 = v57;

  v59 = [a1 departmentName];
  v60 = sub_19565D28C();
  v62 = v61;

  sub_1955F441C(v60, v62, v56, v58);

  v63 = sub_19565D27C();

  [v2 setDepartmentName_];

  v64 = [v2 jobTitle];
  v65 = sub_19565D28C();
  v67 = v66;

  v68 = [a1 jobTitle];
  v69 = sub_19565D28C();
  v71 = v70;

  sub_1955F441C(v69, v71, v65, v67);

  v72 = sub_19565D27C();

  [v2 setJobTitle_];

  v73 = [v2 previousFamilyName];
  v74 = sub_19565D28C();
  v76 = v75;

  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v77)
  {
    v78 = [a1 previousFamilyName];
    if (!v78)
    {
      sub_19565D28C();
      v78 = sub_19565D27C();
    }

    [v2 setPreviousFamilyName_];
  }

  v79 = [v2 phoneticGivenName];
  v80 = sub_19565D28C();
  v82 = v81;

  v83 = HIBYTE(v82) & 0xF;
  if ((v82 & 0x2000000000000000) == 0)
  {
    v83 = v80 & 0xFFFFFFFFFFFFLL;
  }

  if (!v83)
  {
    v84 = [a1 phoneticGivenName];
    if (!v84)
    {
      sub_19565D28C();
      v84 = sub_19565D27C();
    }

    [v2 setPhoneticGivenName_];
  }

  v85 = [v2 phoneticMiddleName];
  v86 = sub_19565D28C();
  v88 = v87;

  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = v86 & 0xFFFFFFFFFFFFLL;
  }

  if (!v89)
  {
    v90 = [a1 phoneticMiddleName];
    if (!v90)
    {
      sub_19565D28C();
      v90 = sub_19565D27C();
    }

    [v2 setPhoneticMiddleName_];
  }

  v91 = [v2 phoneticFamilyName];
  v92 = sub_19565D28C();
  v94 = v93;

  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v92 & 0xFFFFFFFFFFFFLL;
  }

  if (!v95)
  {
    v96 = [a1 phoneticFamilyName];
    if (!v96)
    {
      sub_19565D28C();
      v96 = sub_19565D27C();
    }

    [v2 setPhoneticFamilyName_];
  }

  v97 = [v2 phoneticOrganizationName];
  v98 = sub_19565D28C();
  v100 = v99;

  v101 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v101 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (!v101)
  {
    v102 = [a1 phoneticOrganizationName];
    if (!v102)
    {
      sub_19565D28C();
      v102 = sub_19565D27C();
    }

    [v2 setPhoneticOrganizationName_];
  }

  v103 = [v2 callAlert];
  if (!v103)
  {
    v104 = [a1 callAlert];
    [v2 setCallAlert_];
    v103 = v104;
  }

  v105 = [v2 textAlert];
  if (!v105)
  {
    v106 = [a1 textAlert];
    [v2 setTextAlert_];
    v105 = v106;
  }

  v107 = [v2 phonemeData];
  if (!v107)
  {
    goto LABEL_39;
  }

  v108 = v107;
  v109 = sub_19565D28C();
  v111 = v110;

  v112 = HIBYTE(v111) & 0xF;
  if ((v111 & 0x2000000000000000) == 0)
  {
    v112 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (!v112)
  {
LABEL_39:
    v113 = [a1 phonemeData];
    [v2 setPhonemeData_];
  }

  v114 = [v2 explicitDisplayName];
  if (!v114)
  {
    goto LABEL_44;
  }

  v115 = v114;
  v116 = sub_19565D28C();
  v118 = v117;

  v119 = HIBYTE(v118) & 0xF;
  if ((v118 & 0x2000000000000000) == 0)
  {
    v119 = v116 & 0xFFFFFFFFFFFFLL;
  }

  if (!v119)
  {
LABEL_44:
    v120 = [a1 explicitDisplayName];
    [v2 setExplicitDisplayName_];
  }

  v121 = [v2 mapsData];
  if (!v121)
  {
    goto LABEL_49;
  }

  v122 = v121;
  v123 = sub_19565D28C();
  v125 = v124;

  v126 = HIBYTE(v125) & 0xF;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v126 = v123 & 0xFFFFFFFFFFFFLL;
  }

  if (!v126)
  {
LABEL_49:
    v127 = [a1 mapsData];
    [v2 setMapsData_];
  }

  v128 = [v2 birthday];
  if (v128)
  {
    v129 = v128;
    sub_19565CC8C();

    v130 = v333;
    v131 = *(v333 + 56);
    v131(v45, 0, 1, v4);
    sub_1954C2698(v45, &qword_1EAECDDA0);
    v132 = v334;
  }

  else
  {
    v130 = v333;
    v131 = *(v333 + 56);
    v131(v45, 1, 1, v4);
    sub_1954C2698(v45, &qword_1EAECDDA0);
    v133 = [a1 birthday];
    v132 = v334;
    if (v133)
    {
      v134 = v326;
      v135 = v133;
      sub_19565CC8C();

      v136 = sub_19565CC7C();
      (*(v130 + 8))(v134, v4);
    }

    else
    {
      v136 = 0;
    }

    [v2 setBirthday_];
  }

  v137 = [v2 birthday];
  v334 = v4;
  if (!v137)
  {
    v131(v43, 1, 1, v4);
    v156 = v43;
LABEL_68:
    sub_1954C2698(v156, &qword_1EAECDDA0);
    goto LABEL_69;
  }

  v138 = v137;
  sub_19565CC8C();

  v139 = 1;
  v131(v43, 0, 1, v4);
  sub_1954C2698(v43, &qword_1EAECDDA0);
  v140 = [v2 birthday];
  if (v140)
  {
    v141 = v140;
    sub_19565CC8C();

    v139 = 0;
  }

  v143 = v330;
  v142 = v331;
  v144 = v334;
  v131(v132, v139, 1, v334);
  sub_1955F7A70(v132, v143);
  v331 = *(v130 + 48);
  if (v331(v143, 1, v144) == 1)
  {
    __break(1u);
    goto LABEL_163;
  }

  sub_19565CCAC();
  v146 = v145;
  v330 = *(v130 + 8);
  v330(v143, v144);
  if ((v146 & 1) == 0)
  {
    goto LABEL_69;
  }

  v147 = [a1 birthday];
  if (!v147)
  {
    v157 = v327;
    v131(v327, 1, 1, v334);
    v156 = v157;
    goto LABEL_68;
  }

  v148 = v327;
  v149 = v147;
  sub_19565CC8C();

  v150 = 1;
  v131(v148, 0, 1, v334);
  sub_1954C2698(v148, &qword_1EAECDDA0);
  v151 = [v2 birthday];
  if (v151)
  {
    v152 = v151;
    sub_19565CC8C();

    v150 = 0;
  }

  v153 = v331;
  LODWORD(v327) = 1;
  v154 = v334;
  (v131)(v142, v150, 1);
  v155 = v329;
  sub_1955F7A70(v142, v329);
  if (v153(v155, 1, v154))
  {
    v326 = 0;
  }

  else
  {
    v274 = sub_19565CCCC();
    v155 = v329;
    v326 = v274;
    LODWORD(v327) = v275;
  }

  sub_1954C2698(v155, &qword_1EAECDDA0);
  v276 = [a1 birthday];
  v277 = v328;
  if (v276)
  {
    v278 = v276;
    sub_19565CC8C();

    v277 = v328;
    v279 = 0;
  }

  else
  {
    v279 = 1;
  }

  v131(v277, v279, 1, v154);
  v280 = v277;
  v281 = v324;
  sub_1955F7A70(v280, v324);
  if (v153(v281, 1, v154) == 1)
  {
    sub_1954C2698(v281, &qword_1EAECDDA0);
    if ((v327 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v282 = sub_19565CCCC();
    v284 = v283;
    v330(v281, v154);
    if (v327)
    {
      if ((v284 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if ((v284 & 1) != 0 || v326 != v282)
    {
      goto LABEL_69;
    }
  }

  v285 = [v2 birthday];
  if (v285)
  {
    v286 = v321;
    v287 = v285;
    sub_19565CC8C();

    v288 = v286;
    v289 = 0;
  }

  else
  {
    v289 = 1;
    v288 = v321;
  }

  v290 = v322;
  v291 = v334;
  LODWORD(v329) = 1;
  v131(v288, v289, 1, v334);
  v292 = v288;
  v293 = v323;
  sub_1955F7A70(v292, v323);
  if (v331(v293, 1, v291))
  {
    v328 = 0;
  }

  else
  {
    v294 = sub_19565CC9C();
    v293 = v323;
    v328 = v294;
    LODWORD(v329) = v295;
  }

  sub_1954C2698(v293, &qword_1EAECDDA0);
  v296 = [a1 birthday];
  if (v296)
  {
    v297 = v296;
    sub_19565CC8C();

    v298 = 0;
  }

  else
  {
    v298 = 1;
  }

  v131(v290, v298, 1, v291);
  v299 = v320;
  sub_1955F7A70(v290, v320);
  if (v331(v299, 1, v291) == 1)
  {
    sub_1954C2698(v299, &qword_1EAECDDA0);
    if (v329)
    {
      goto LABEL_148;
    }
  }

  else
  {
    v300 = sub_19565CC9C();
    v302 = v301;
    v330(v299, v291);
    if (v329)
    {
      if (v302)
      {
LABEL_148:
        v303 = [a1 birthday];
        if (v303)
        {
          v304 = v316;
          v305 = v303;
          sub_19565CC8C();

          v306 = 0;
        }

        else
        {
          v306 = 1;
          v304 = v316;
        }

        v307 = v334;
        v131(v304, v306, 1, v334);
        v308 = v317;
        sub_1955F7A70(v304, v317);
        if (v331(v308, 1, v307) == 1)
        {
          sub_1954C2698(v308, &qword_1EAECDDA0);
          v329 = 0;
        }

        else
        {
          v329 = sub_19565CCAC();
          v330(v308, v307);
        }

        v309 = [v2 birthday];
        if (v309)
        {
          v310 = v318;
          v311 = v309;
          sub_19565CC8C();

          v312 = 0;
        }

        else
        {
          v312 = 1;
          v310 = v318;
        }

        v131(v310, v312, 1, v307);
        v313 = v319;
        sub_1955F7A70(v310, v319);
        v314 = v331;
        if (v331(v313, 1, v307) != 1)
        {
          sub_19565CCBC();
          if (v314(v313, 1, v307) == 1)
          {
            v315 = 0;
          }

          else
          {
            v315 = sub_19565CC7C();
            v330(v313, v307);
          }

          [v2 setBirthday_];

          goto LABEL_69;
        }

LABEL_163:
        __break(1u);
        return;
      }
    }

    else if ((v302 & 1) == 0 && v328 == v300)
    {
      goto LABEL_148;
    }
  }

LABEL_69:
  v158 = [v2 nonGregorianBirthday];
  if (v158)
  {
    v159 = v332;
    v160 = v158;
    sub_19565CC8C();

    v131(v159, 0, 1, v334);
    sub_1954C2698(v159, &qword_1EAECDDA0);
  }

  else
  {
    v162 = v332;
    v161 = v333;
    v163 = v334;
    v131(v332, 1, 1, v334);
    sub_1954C2698(v162, &qword_1EAECDDA0);
    v164 = [a1 nonGregorianBirthday];
    if (v164)
    {
      v165 = v325;
      v166 = v164;
      sub_19565CC8C();

      v167 = sub_19565CC7C();
      (*(v161 + 8))(v165, v163);
    }

    else
    {
      v167 = 0;
    }

    [v2 setNonGregorianBirthday_];
  }

  v168 = [v2 note];
  v169 = sub_19565D28C();
  v171 = v170;

  if ((v171 & 0x2000000000000000) != 0)
  {
    v172 = HIBYTE(v171) & 0xF;
  }

  else
  {
    v172 = v169 & 0xFFFFFFFFFFFFLL;
  }

  v173 = [a1 note];
  v174 = v173;
  if (v172)
  {
    v175 = sub_19565D28C();
    v177 = v176;

    v178 = HIBYTE(v177) & 0xF;
    if ((v177 & 0x2000000000000000) == 0)
    {
      v178 = v175 & 0xFFFFFFFFFFFFLL;
    }

    if (v178)
    {
      v179 = [v2 note];
      v180 = sub_19565D28C();
      v182 = v181;

      v183 = [a1 note];
      v184 = sub_19565D28C();
      v186 = v185;

      if (v180 == v184 && v182 == v186)
      {
      }

      else
      {
        v187 = sub_19565DB1C();

        if ((v187 & 1) == 0)
        {
          v188 = [v2 note];
          v189 = sub_19565D28C();
          v191 = v190;

          v335 = v189;
          v336 = v191;
          MEMORY[0x19A8B3270](2570, 0xE200000000000000);
          v192 = [a1 note];
          v193 = sub_19565D28C();
          v195 = v194;

          MEMORY[0x19A8B3270](v193, v195);

          v196 = sub_19565D27C();

          [v2 setNote_];
        }
      }
    }
  }

  else
  {
    if (!v173)
    {
      sub_19565D28C();
      v174 = sub_19565D27C();
    }

    [v2 setNote_];
  }

  if (([v2 imageDataAvailable] & 1) == 0 && objc_msgSend(a1, sel_imageDataAvailable))
  {
    v197 = [a1 imageData];
    if (v197)
    {
      v198 = v197;
      v199 = sub_19565CF2C();
      v201 = v200;

      v202 = sub_19565CF0C();
      sub_1954C1C4C(v199, v201);
    }

    else
    {
      v202 = 0;
    }

    [v2 setImageData_];

    [a1 cropRect];
    [v2 setCropRect_];
    v203 = [a1 imageType];
    [v2 setImageType_];

    v204 = [a1 memojiMetadata];
    if (v204)
    {
      v205 = v204;
      v206 = sub_19565CF2C();
      v208 = v207;

      v209 = sub_19565CF0C();
      sub_1954C1C4C(v206, v208);
    }

    else
    {
      v209 = 0;
    }

    [v2 setMemojiMetadata_];
  }

  v210 = [v2 wallpaper];
  if (!v210)
  {
    v211 = [a1 wallpaper];
    if (!v211)
    {
      goto LABEL_103;
    }

    v212 = [a1 wallpaper];
    [v2 setWallpaper_];
    v210 = v212;
  }

LABEL_103:
  v213 = [v2 pronunciationGivenName];
  if (!v213)
  {
    goto LABEL_107;
  }

  v214 = v213;
  v215 = sub_19565D28C();
  v217 = v216;

  v218 = HIBYTE(v217) & 0xF;
  if ((v217 & 0x2000000000000000) == 0)
  {
    v218 = v215 & 0xFFFFFFFFFFFFLL;
  }

  if (!v218)
  {
LABEL_107:
    v219 = [a1 pronunciationGivenName];
    [v2 setPronunciationGivenName_];
  }

  v220 = [v2 pronunciationFamilyName];
  if (!v220)
  {
    goto LABEL_112;
  }

  v221 = v220;
  v222 = sub_19565D28C();
  v224 = v223;

  v225 = HIBYTE(v224) & 0xF;
  if ((v224 & 0x2000000000000000) == 0)
  {
    v225 = v222 & 0xFFFFFFFFFFFFLL;
  }

  if (!v225)
  {
LABEL_112:
    v226 = [a1 pronunciationFamilyName];
    [v2 setPronunciationFamilyName_];
  }

  v227 = [v2 preferredChannel];
  if (!v227)
  {
    goto LABEL_117;
  }

  v228 = v227;
  v229 = sub_19565D28C();
  v231 = v230;

  v232 = HIBYTE(v231) & 0xF;
  if ((v231 & 0x2000000000000000) == 0)
  {
    v232 = v229 & 0xFFFFFFFFFFFFLL;
  }

  if (!v232)
  {
LABEL_117:
    v233 = [a1 preferredChannel];
    [v2 setPreferredChannel_];
  }

  v234 = [v2 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1B0);
  v235 = sub_19565D3FC();

  v236 = [a1 emailAddresses];
  v237 = sub_19565D3FC();

  sub_1955F608C(v235, v237, sub_195637FD4, &qword_1EAECDD90, 0x1E696AEC0, sub_1956359FC);

  v238 = sub_19565D3EC();

  [v2 setEmailAddresses_];

  v239 = [v2 phoneNumbers];
  v240 = sub_19565D3FC();

  v241 = [a1 phoneNumbers];
  v242 = sub_19565D3FC();

  sub_1955F5A20(v240, v242);

  v243 = sub_19565D3EC();

  [v2 setPhoneNumbers_];

  v244 = [v2 urlAddresses];
  v245 = sub_19565D3FC();

  v246 = [a1 urlAddresses];
  v247 = sub_19565D3FC();

  sub_1955F608C(v245, v247, sub_195637FD4, &qword_1EAECDD90, 0x1E696AEC0, sub_1956359FC);

  v248 = sub_19565D3EC();

  [v2 setUrlAddresses_];

  v249 = [v2 dates];
  v250 = sub_19565D3FC();

  v251 = [a1 dates];
  v252 = sub_19565D3FC();

  sub_1955F608C(v250, v252, sub_1956382EC, &qword_1EAECDDB8, 0x1E695DF10, sub_1956359B4);

  v253 = sub_19565D3EC();

  [v2 setDates_];

  v254 = [v2 instantMessageAddresses];
  v255 = sub_19565D3FC();

  v256 = [a1 instantMessageAddresses];
  v257 = sub_19565D3FC();

  sub_1955F608C(v255, v257, sub_195638478, &qword_1EAECE4A0, off_1E74107F8, sub_195635990);

  v258 = sub_19565D3EC();

  [v2 setInstantMessageAddresses_];

  v259 = [v2 contactRelations];
  v260 = sub_19565D3FC();

  v261 = [a1 contactRelations];
  v262 = sub_19565D3FC();

  sub_1955F608C(v260, v262, sub_195638604, &qword_1EAECDDB0, off_1E74105F0, sub_19563596C);

  v263 = sub_19565D3EC();

  [v2 setContactRelations_];

  v264 = [v2 socialProfiles];
  v265 = sub_19565D3FC();

  v266 = [a1 socialProfiles];
  v267 = sub_19565D3FC();

  sub_1955F608C(v265, v267, sub_195638790, &qword_1EAECE470, off_1E7410A28, sub_195635948);

  v268 = sub_19565D3EC();

  [v2 setSocialProfiles_];

  v269 = [v2 postalAddresses];
  v270 = sub_19565D3FC();

  v271 = [a1 postalAddresses];
  v272 = sub_19565D3FC();

  sub_1955F608C(v270, v272, sub_19563891C, &qword_1EAECDDA8, off_1E7410950, sub_195635924);

  v273 = sub_19565D3EC();

  [v2 setPostalAddresses_];
}

uint64_t sub_1955F2C14(unint64_t a1, SEL *a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v21 = a4;
  v5 = a1;
  v26 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
  {
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    v22 = v5;
    while (1)
    {
      if (v24)
      {
        v8 = MEMORY[0x19A8B3850](v7, v5);
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 *a2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1B0);
      v12 = sub_19565D3FC();

      v13 = a3(v12);

      if (v13 >> 62)
      {
        v14 = sub_19565D81C();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = a2;
      v16 = [v9 *a2];
      v17 = sub_19565D3FC();

      if (v17 >> 62)
      {
        v18 = sub_19565D81C();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14 >= v18)
      {
      }

      else
      {
        v19 = sub_19565D3EC();

        [v9 *v21];

        sub_19565D94C();
        sub_19565D98C();
        sub_19565D99C();
        sub_19565D95C();
      }

      v5 = v22;
      a2 = v15;
      ++v7;
      if (v10 == i)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1955F2EAC(void *a1, SEL *a2, uint64_t (*a3)(uint64_t), SEL *a4)
{
  v8 = [a1 *a2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE1B0);
  v9 = sub_19565D3FC();

  v10 = a3(v9);

  if (v10 >> 62)
  {
    v11 = sub_19565D81C();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = [a1 *a2];
  v13 = sub_19565D3FC();

  if (v13 >> 62)
  {
    v14 = sub_19565D81C();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 >= v14)
  {
  }

  else
  {
    v15 = sub_19565D3EC();

    [a1 *a4];
  }

  return v11 < v14;
}

void sub_1955F3010(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAECDCF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v36 - v4;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x19A8B3850](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v8 = *(a1 + 32);
    }

    v1 = v8;
    if (i < 1)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (!v6)
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_19565D81C() < 1)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      swift_unknownObjectRelease();
      v13 = v6;
LABEL_25:
      sub_1955F4A70(a1, v13, v10, i);
      i = v16;
LABEL_32:
      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v9 = sub_19565D81C();
LABEL_15:
    if (v9 < i)
    {
      goto LABEL_53;
    }

    if ((a1 & 0xC000000000000001) == 0 || i == 1)
    {

      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1954C3460(0, &qword_1EAECB830);

      v11 = 1;
      do
      {
        v12 = v11 + 1;
        sub_19565D8FC();
        v11 = v12;
      }

      while (i != v12);
      if (!v6)
      {
LABEL_21:
        a1 &= 0xFFFFFFFFFFFFFF8uLL;
        v13 = a1 + 32;
        v10 = 1;
        i = (2 * i) | 1;
        if ((i & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    a1 = sub_19565DA3C();
    v10 = v14;
    i = v15;
    if ((v15 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_26:
    v6 = v13;
    sub_19565DB2C();
    swift_unknownObjectRetain_n();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);

    if (__OFSUB__(i >> 1, v10))
    {
      goto LABEL_57;
    }

    if (v18 != (i >> 1) - v10)
    {
      goto LABEL_58;
    }

    i = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!i)
    {
      i = MEMORY[0x1E69E7CC0];
      goto LABEL_32;
    }

LABEL_33:
    if ((i & 0x8000000000000000) == 0 && (i & 0x4000000000000000) == 0)
    {
      v19 = *(i + 16);
      if (!v19)
      {
        goto LABEL_55;
      }

      goto LABEL_36;
    }

LABEL_54:
    v19 = sub_19565D81C();
    if (!v19)
    {
LABEL_55:

      v23 = [v1 namePrefix];
      v24 = sub_19565D28C();
      v36[4] = v25;
      v36[5] = v24;

      v26 = [v1 givenName];
      v27 = sub_19565D28C();
      v36[2] = v28;
      v36[3] = v27;

      v29 = [v1 middleName];
      v30 = sub_19565D28C();
      v36[0] = v31;
      v36[1] = v30;

      v32 = [v1 familyName];
      sub_19565D28C();

      v33 = [v1 nameSuffix];
      sub_19565D28C();

      v34 = [v1 nickname];
      sub_19565D28C();

      v35 = sub_19565CDCC();
      (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
      sub_19565CD7C();

      return;
    }

LABEL_36:
    a1 = 0;
    v6 = i & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v20 = MEMORY[0x19A8B3850](a1, i);
      }

      else
      {
        if (a1 >= *(i + 16))
        {
          goto LABEL_45;
        }

        v20 = *(i + 8 * a1 + 32);
      }

      v21 = v20;
      v22 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_1955F34D4(v20);

      ++a1;
      if (v22 == v19)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  sub_19565CDBC();
}

void sub_1955F34D4(void *a1)
{
  v3 = [v1 namePrefix];
  v4 = sub_19565D28C();
  v6 = v5;

  v7 = [a1 namePrefix];
  v8 = sub_19565D28C();
  v10 = v9;

  sub_1955F441C(v8, v10, v4, v6);

  v11 = sub_19565D27C();

  [v1 setNamePrefix_];

  v12 = [v1 givenName];
  v13 = sub_19565D28C();
  v15 = v14;

  v16 = [a1 givenName];
  v17 = sub_19565D28C();
  v19 = v18;

  sub_1955F441C(v17, v19, v13, v15);

  v20 = sub_19565D27C();

  [v1 setGivenName_];

  v21 = [v1 middleName];
  v22 = sub_19565D28C();
  v24 = v23;

  v25 = [a1 middleName];
  v26 = sub_19565D28C();
  v28 = v27;

  sub_1955F441C(v26, v28, v22, v24);

  v29 = sub_19565D27C();

  [v1 setMiddleName_];

  v30 = [v1 familyName];
  v31 = sub_19565D28C();
  v33 = v32;

  v34 = [a1 familyName];
  v35 = sub_19565D28C();
  v37 = v36;

  sub_1955F441C(v35, v37, v31, v33);

  v38 = sub_19565D27C();

  [v1 setFamilyName_];

  v39 = [v1 nameSuffix];
  v40 = sub_19565D28C();
  v42 = v41;

  v43 = [a1 nameSuffix];
  v44 = sub_19565D28C();
  v46 = v45;

  sub_1955F441C(v44, v46, v40, v42);

  v47 = sub_19565D27C();

  [v1 setNameSuffix_];

  v48 = [v1 nickname];
  v49 = sub_19565D28C();
  v51 = v50;

  v52 = [a1 nickname];
  v53 = sub_19565D28C();
  v55 = v54;

  sub_1955F441C(v53, v55, v49, v51);

  v56 = sub_19565D27C();

  [v1 setNickname_];
}

uint64_t sub_1955F3944(unint64_t a1)
{
  v32 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_29;
  }

LABEL_2:
  v2 = MEMORY[0x1E69E7CD0];
LABEL_3:
  v31 = v2;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_32;
    }

    goto LABEL_5;
  }

  v3 = sub_19565D81C();
  if (v3)
  {
LABEL_5:
    sub_1954C3460(0, &qword_1EAECDD90);
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v27 = a1 + 32;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x1E69E7CC0];
    v6 = &selRef_updatedGroups;
    v25 = v3;
    v26 = a1;
    v24 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x19A8B3850](v4, a1);
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_28;
        }

        v7 = *(v27 + 8 * v4);
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        if (!sub_19565D81C())
        {
          goto LABEL_2;
        }

        sub_1955F6488(MEMORY[0x1E69E7CC0], &unk_1EAECE450, &unk_19567BAC0, &qword_1EAECDD90);
        goto LABEL_3;
      }

      v10 = v31;
      v11 = [v7 v6[36]];
      v12 = v11;
      if ((v10 & 0xC000000000000001) == 0)
      {
        break;
      }

      v13 = v11;
      v14 = sub_19565D84C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_7:
      if (v4 == v3)
      {
        v22 = v29;
        goto LABEL_33;
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_19565D74C();
      v16 = -1 << *(v10 + 32);
      v17 = v15 & ~v16;
      if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = *(*(v10 + 48) + 8 * v17);
          v20 = sub_19565D75C();

          if (v20)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v3 = v25;
        a1 = v26;
        v5 = v24;
        v6 = &selRef_updatedGroups;
        goto LABEL_7;
      }
    }

LABEL_21:

    v3 = v25;
    a1 = v26;
    v5 = v24;
    v6 = &selRef_updatedGroups;
LABEL_22:
    v21 = v8;
    MEMORY[0x19A8B3320]();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19565D42C();
    }

    sub_19565D48C();
    v29 = v32;
    sub_1956359FC(&v30, [v21 v6[36]]);

    goto LABEL_7;
  }

LABEL_32:
  v22 = MEMORY[0x1E69E7CC0];
LABEL_33:

  return v22;
}

unint64_t sub_1955F3C78(unint64_t a1)
{
  v57[0] = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_54;
  }

LABEL_2:
  v2 = MEMORY[0x1E69E7CD0];
LABEL_3:
  v56 = v2;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_57;
    }

    goto LABEL_5;
  }

  v3 = sub_19565D81C();
  if (v3)
  {
LABEL_5:
    v4 = 0;
    v50 = a1 & 0xC000000000000001;
    v46 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 + 32;
    v47 = MEMORY[0x1E69E7CC0];
    v48 = v3;
    v49 = a1;
    while (1)
    {
      if (v50)
      {
        v5 = MEMORY[0x19A8B3850](v4, a1);
      }

      else
      {
        if (v4 >= *(v46 + 16))
        {
          goto LABEL_53;
        }

        v5 = *(v45 + 8 * v4);
      }

      v6 = v5;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        if (!sub_19565D81C())
        {
          goto LABEL_2;
        }

        sub_1955F6488(MEMORY[0x1E69E7CC0], &qword_1EAECDD88, &unk_19567BAB8, &unk_1EAECE440);
        goto LABEL_3;
      }

      v51 = v8;
      v9 = v56;
      if ((v56 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19565D80C();
        a1 = sub_1954C3460(0, &unk_1EAECE440);
        sub_1955F7898();
        sub_19565D5BC();
        v9 = v57[1];
        v10 = v57[2];
        v11 = v57[3];
        v12 = v57[4];
        v13 = v57[5];
      }

      else
      {
        v14 = -1 << *(v56 + 32);
        v10 = v56 + 56;
        v15 = ~v14;
        v16 = -v14;
        v17 = v16 < 64 ? ~(-1 << v16) : -1;
        v13 = v17 & *(v56 + 56);

        v11 = v15;
        v12 = 0;
      }

      v18 = (v11 + 64) >> 6;
      v53 = v10;
      v54 = v6;
      v52 = v9;
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      while (1)
      {
        v22 = v12;
        v23 = v13;
        v20 = v12;
        if (!v13)
        {
          while (1)
          {
            v20 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v20 >= v18)
            {
              goto LABEL_37;
            }

            v23 = *(v10 + 8 * v20);
            ++v22;
            if (v23)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_27:
        v21 = (v23 - 1) & v23;
        v19 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v23)))));
        if (!v19)
        {
          goto LABEL_37;
        }

LABEL_28:
        v24 = [v6 value];
        sub_1954C3460(0, &qword_1EAECDD80);
        if (sub_19565D75C())
        {
          break;
        }

        v25 = [v19 stringValue];
        v26 = sub_19565D28C();
        a1 = v27;

        v28 = [v24 stringValue];
        v29 = sub_19565D28C();
        v31 = v30;

        if (v26 == v29 && a1 == v31)
        {

          goto LABEL_41;
        }

        v33 = sub_19565DB1C();

        if (v33)
        {
          break;
        }

        v34 = [v19 isLikePhoneNumber_];

        v9 = v52;
        v10 = v53;
        if (v34)
        {
          goto LABEL_41;
        }

        v12 = v20;
        v13 = v21;
        v6 = v54;
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_41:
      sub_1954C55E4();
      v6 = v54;
      v35 = [v54 value];
      v36 = sub_1955F4244(v35);

      if ((v36 & 1) == 0)
      {
        v37 = v54;
        sub_1955F69C4(v57, v37);
        v39 = v38;

        v4 = v51;
        if (v57[0] >> 62)
        {
          v40 = sub_19565D81C();
          if (v40 < v39)
          {
LABEL_49:
            __break(1u);
LABEL_50:
            v43 = v47;
            goto LABEL_58;
          }
        }

        else
        {
          v40 = *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40 < v39)
          {
            goto LABEL_49;
          }
        }

        sub_19562887C(v39, v40);
        v41 = sub_1955F4DC4(v19);

        goto LABEL_45;
      }

      v4 = v51;
LABEL_7:
      a1 = v49;
      if (v4 == v48)
      {
        goto LABEL_50;
      }
    }

LABEL_20:
    if (sub_19565D83C())
    {
      sub_1954C3460(0, &unk_1EAECE440);
      swift_dynamicCast();
      v19 = v55;
      v20 = v12;
      v21 = v13;
      if (v55)
      {
        goto LABEL_28;
      }
    }

LABEL_37:
    sub_1954C55E4();
    v4 = v51;
LABEL_45:
    v42 = v6;
    MEMORY[0x19A8B3320]();
    if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_19565D42C();
    }

    sub_19565D48C();
    v47 = v57[0];
    sub_1956359D8(&v55, [v42 value]);

    goto LABEL_7;
  }

LABEL_57:
  v43 = MEMORY[0x1E69E7CC0];
LABEL_58:

  return v43;
}

id sub_1955F4244(void *a1)
{
  v3 = [v1 isFullyQualified];
  if (v3 != [a1 isFullyQualified])
  {
    return [v1 isFullyQualified];
  }

  v5 = [v1 stringValue];
  sub_19565D28C();

  v6 = sub_19565D31C();

  v7 = [a1 stringValue];
  sub_19565D28C();

  v8 = sub_19565D31C();

  return (v6 >= v8);
}

id DuplicateContacts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DuplicateContacts.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateContacts();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DuplicateContacts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DuplicateContacts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1955F441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAECDFE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  if (!a2)
  {
    goto LABEL_30;
  }

  sub_1955EE604(385, a1, a2);
  v11 = sub_19565D31C();

  sub_1955EE604(385, a3, a4);
  v12 = sub_19565D31C();

  if (v11 != v12)
  {
    if (v12 < v11)
    {
      return a1;
    }

    return a3;
  }

  v42 = a1;
  v43 = a2;
  sub_19565CFBC();
  v13 = sub_19565CFCC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v41 = v14 + 56;
  v15(v10, 0, 1, v13);
  sub_1955F7844();
  v16 = sub_19565D7BC();
  v18 = v17;
  sub_1954C2698(v10, &unk_1EAECDFE0);
  if (v16 == a1 && v18 == a2)
  {

    v40 = 0;
  }

  else
  {
    v20 = sub_19565DB1C();

    v21 = 3;
    if (v20)
    {
      v21 = 0;
    }

    v40 = v21;
  }

  v42 = a1;
  v43 = a2;
  sub_19565CFBC();
  v15(v10, 0, 1, v13);
  v22 = sub_19565D7BC();
  v24 = v23;
  sub_1954C2698(v10, &unk_1EAECDFE0);
  if (v22 == a1 && v24 == a2)
  {

    v39 = 0;
  }

  else
  {
    v25 = sub_19565DB1C();

    v39 = (v25 & 1) == 0;
  }

  v42 = a3;
  v43 = a4;
  sub_19565CFBC();
  v15(v10, 0, 1, v13);
  v26 = sub_19565D7BC();
  v28 = v27;
  sub_1954C2698(v10, &unk_1EAECDFE0);
  if (v26 == a3 && v28 == a4)
  {

    v38 = 0;
  }

  else
  {
    v29 = sub_19565DB1C();

    v30 = 3;
    if (v29)
    {
      v30 = 0;
    }

    v38 = v30;
  }

  v31 = v39 + v40;
  v42 = a3;
  v43 = a4;
  sub_19565CFBC();
  v15(v10, 0, 1, v13);
  v32 = sub_19565D7BC();
  v34 = v33;
  sub_1954C2698(v10, &unk_1EAECDFE0);
  if (v32 == a3 && v34 == a4)
  {

    v35 = 0;
  }

  else
  {
    v36 = sub_19565DB1C();

    v35 = (v36 & 1) == 0;
  }

  if (v35 + v38 >= v31)
  {

LABEL_30:

    return a3;
  }

  return a1;
}

uint64_t sub_1955F4880()
{
  v0 = sub_19565CFAC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19565CF9C();
  sub_19565CF6C();
  (*(v1 + 8))(v3, v0);
  v4 = sub_19565CD1C();
  if (!v5)
  {
    return sub_19565CD2C();
  }

  v6 = v4;
  v7 = v5;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return sub_19565CD2C();
  }

  v9 = sub_19565CD5C();
  if (!v10)
  {
    return sub_19565CD6C();
  }

  v11 = v9;
  v12 = v10;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    return sub_19565CD6C();
  }

  v14 = sub_19565CD3C();
  if (!v15)
  {
    return sub_19565CD4C();
  }

  v16 = v14;
  v17 = v15;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return sub_19565CD4C();
  }

  v19 = sub_19565CD9C();
  if (!v20)
  {
    return sub_19565CDAC();
  }

  v21 = v19;
  v22 = v20;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
  }

  else
  {
    return sub_19565CDAC();
  }
}

void sub_1955F4A70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1954C3460(0, &qword_1EAECB830);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1955F4B64(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_19565D81C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1956289EC(v2, 0);

    v1 = sub_1956276DC(&v5, (v3 + 32), v2, v1);
    sub_1954C55E4();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1955F4C14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDD78);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1955F4CEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECDFC0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1955F4DC4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = sub_19565D84C();

    if (v5)
    {
      v6 = sub_1955F4F5C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_1954C3460(0, &unk_1EAECE440);
  v9 = sub_19565D74C();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_19565D75C();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_195636840();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1955F50C4(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1955F4F5C()
{
  v1 = v0;

  v2 = sub_19565D81C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_195636008(v3, v2);
  v13 = v4;

  v5 = sub_19565D74C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_1954C3460(0, &unk_1EAECE440);
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_19565D75C();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1955F50C4(v7);
  result = sub_19565D75C();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1955F50C4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_19565D7EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_19565D74C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t (*sub_1955F5264(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8B3850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1955F7B30;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1955F52E4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8B3850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1955F5364;
  }

  __break(1u);
  return result;
}

void (*sub_1955F536C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x19A8B3850](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1955F53EC;
  }

  __break(1u);
  return result;
}

uint64_t sub_1955F5498(void *a1)
{
  v1 = [a1 downtimeWhitelist];
  if (!v1)
  {
    sub_19565D28C();
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_19565D28C();
  v5 = v4;

  v6 = sub_19565D28C();
  if (!v5)
  {
LABEL_9:

    v10 = 1;
    return v10 & 1;
  }

  if (v3 == v6 && v5 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = sub_19565DB1C();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1955F557C(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_19565D28C();
    v3 = sub_19565D27C();
  }

  v4 = [objc_opt_self() predicateForContainerOfContactWithIdentifier_];

  v20[0] = 0;
  v5 = [a2 containersMatchingPredicate:v4 error:v20];
  v6 = v20[0];
  if (v5)
  {
    v7 = v5;
    sub_1954C3460(0, &unk_1EAECB840);
    v8 = sub_19565D3FC();
    v9 = v6;

    if (v8 >> 62)
    {
      v10 = sub_19565D81C();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v8 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v8 + 8 * v12 + 32);
LABEL_11:
            v14 = v13;

            v15 = [v14 identifier];

            v16 = sub_19565D28C();
            return v16;
          }

          __break(1u);
        }

        v13 = MEMORY[0x19A8B3850](v12, v8);
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v18 = v20[0];
    v19 = sub_19565CE6C();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1955F57A0(unint64_t a1, void *a2)
{
  v30 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
LABEL_24:
    v3 = sub_19565D81C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x19A8B3850](v4, a1);
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(a1 + 8 * v4 + 32);
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v29 = v9;
        v10 = v8;
        v11 = sub_1955F557C(v8, a2);
        v13 = v12;
        v15 = sub_1954C2328(v11, v12);
        v16 = v5[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v5[3] < v18)
        {
          sub_195624928(v18, 1);
          v5 = v30;
          v20 = sub_1954C2328(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {

            result = sub_19565DB5C();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v7 = (v5[7] + 8 * v15);
          MEMORY[0x19A8B3320](v6);
          if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19565D42C();
          }

          sub_19565D48C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAECE280);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_19567B7B0;
          *(v22 + 32) = v10;
          v5[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v5[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v5[7] + 8 * v15) = v22;
          v24 = v5[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v5[2] = v26;
        }

        ++v4;
        if (v29 == v3)
        {
          return v5;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1955F5A20(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v64 = a1;
  if (a1 >> 62)
  {
    v4 = sub_19565D81C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v65 = MEMORY[0x1E69E7CC0];

  result = sub_19565D97C();
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x19A8B3850](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    v9 = [v7 value];

    sub_19565D94C();
    sub_19565D98C();
    sub_19565D99C();
    sub_19565D95C();
  }

  while (v4 != v6);
  v10 = v65;
LABEL_12:
  v11 = sub_195638160(v10);

  v63 = v11;
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19565D81C())
  {
    v12 = 0;
    v54 = a2;
    v55 = a2 & 0xC000000000000001;
    v53 = a2 & 0xFFFFFFFFFFFFFF8;
    v52 = a2 + 32;
    while (1)
    {
      if (v55)
      {
        v13 = MEMORY[0x19A8B3850](v12, a2);
      }

      else
      {
        if (v12 >= *(v53 + 16))
        {
          goto LABEL_63;
        }

        v13 = *(v52 + 8 * v12);
      }

      v14 = v13;
      v15 = __OFADD__(v12, 1);
      v16 = v12 + 1;
      if (v15)
      {
        goto LABEL_62;
      }

      v57 = v3;
      v58 = v16;
      v17 = v63;
      if ((v63 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_19565D80C();
        sub_1954C3460(0, &unk_1EAECE440);
        sub_1955F7898();
        sub_19565D5BC();
        v17 = v65;
        a2 = v66;
        v18 = v67;
        v19 = v68;
        v20 = v69;
      }

      else
      {
        v21 = -1 << *(v63 + 32);
        a2 = v63 + 56;
        v22 = ~v21;
        v23 = -v21;
        v24 = v23 < 64 ? ~(-1 << v23) : -1;
        v20 = v24 & *(v63 + 56);

        v18 = v22;
        v19 = 0;
      }

      v25 = (v18 + 64) >> 6;
      v60 = v17;
      v61 = a2;
      v59 = v25;
      if ((v17 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        if (!sub_19565D83C())
        {
          goto LABEL_46;
        }

        sub_1954C3460(0, &unk_1EAECE440);
        swift_dynamicCast();
        v3 = v62;
        v28 = v19;
        v29 = v20;
        if (!v62)
        {
          goto LABEL_46;
        }

LABEL_37:
        v30 = [v14 value];
        sub_1954C3460(0, &qword_1EAECDD80);
        if (sub_19565D75C())
        {

          goto LABEL_51;
        }

        v31 = v14;
        v32 = v3;
        v33 = [v3 stringValue];
        v34 = sub_19565D28C();
        v36 = v35;

        v37 = [v30 stringValue];
        v38 = sub_19565D28C();
        v40 = v39;

        if (v34 == v38 && v36 == v40)
        {

          goto LABEL_50;
        }

        v42 = sub_19565DB1C();

        if (v42)
        {
          break;
        }

        v3 = v32;
        v43 = [v32 isLikePhoneNumber_];

        v14 = v31;
        v17 = v60;
        a2 = v61;
        if (v43)
        {
          goto LABEL_51;
        }

        v19 = v28;
        v20 = v29;
        v25 = v59;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_50:
      v14 = v31;
      v3 = v32;
LABEL_51:
      sub_1954C55E4();
      v44 = [v14 value];
      v45 = sub_1955F4244(v44);

      if ((v45 & 1) == 0)
      {
        v46 = v14;
        sub_1955F69C4(&v64, v46);
        v48 = v47;

        a2 = v54;
        if (v64 >> 62)
        {
          v49 = sub_19565D81C();
          if (v49 < v48)
          {
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }
        }

        else
        {
          v49 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49 < v48)
          {
            goto LABEL_59;
          }
        }

        sub_19562887C(v48, v49);
        v50 = sub_1955F4DC4(v3);

        goto LABEL_55;
      }

      a2 = v54;
      v3 = v57;
LABEL_16:
      v12 = v58;
      if (v58 == i)
      {
        goto LABEL_60;
      }
    }

LABEL_29:
    v26 = v19;
    v27 = v20;
    v28 = v19;
    if (v20)
    {
LABEL_33:
      v29 = (v27 - 1) & v27;
      v3 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (v3)
      {
        goto LABEL_37;
      }

LABEL_46:
      sub_1954C55E4();
      a2 = v54;
LABEL_55:
      v51 = v14;
      MEMORY[0x19A8B3320]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19565D42C();
      }

      sub_19565D48C();
      v3 = v64;
      sub_1956359D8(&v62, [v51 value]);

      goto LABEL_16;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_46;
      }

      v27 = *(a2 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

LABEL_60:

  return v3;
}