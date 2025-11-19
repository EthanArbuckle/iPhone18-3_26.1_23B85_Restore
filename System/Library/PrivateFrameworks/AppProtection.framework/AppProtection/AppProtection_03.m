uint64_t sub_185B0B928()
{
  v0 = sub_185B680DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = sub_185B67CDC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = sub_185B680EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AC7294();
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8098], v6);
  sub_185B67CBC();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_185B0C288(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  result = sub_185B6813C();
  qword_1EA8CB7C0 = result;
  return result;
}

void sub_185B0BB58()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "resuming distnoted translator", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  if (qword_1EA8CB7B8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EA8CB7C0;
  v8[4] = sub_185B0C280;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185B12CC8;
  v8[3] = &block_descriptor_9;
  v7 = _Block_copy(v8);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v7);
  _Block_release(v7);
}

uint64_t sub_185B0BD08(void *a1, uint64_t a2)
{
  v4 = sub_185B6781C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v44 = sub_185B67B8C();
  __swift_project_value_buffer(v44, qword_1EA8D2278);
  swift_unknownObjectRetain();
  v10 = sub_185B67B6C();
  v11 = sub_185B680AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v42 = v4;
    v43 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v46[0] = v14;
    *v13 = 136315138;
    v15 = v9;
    v16 = a2;
    v17 = MEMORY[0x1865FE580](a1);
    v18 = sub_185B67F1C();
    v20 = v19;
    v21 = v17;
    a2 = v16;
    v9 = v15;
    free(v21);
    v22 = sub_185ACB2C4(v18, v20, v46);

    *(v13 + 4) = v22;
    _os_log_impl(&dword_185AC1000, v10, v11, "Received distnoted event %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    v23 = v13;
    v4 = v42;
    v5 = v43;
    MEMORY[0x1865FE2F0](v23, -1, -1);
  }

  result = xpc_dictionary_get_string(a1, "Name");
  if (result)
  {
    sub_185B67F1C();
    if (xpc_dictionary_get_dictionary(a1, "UserInfo"))
    {
      result = _CFXPCCreateCFObjectFromXPCObject();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v25 = result;
      v46[0] = result;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA8CD138, &qword_185B6D1B8);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = v9;
        if (qword_1ED6F4CB0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v44, qword_1ED6F5130);
        swift_unknownObjectRetain();
        v26 = sub_185B67B6C();
        v27 = sub_185B6808C();
        swift_unknownObjectRelease();
        v44 = v26;
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v42 = a2;
          v29 = v28;
          v41 = swift_slowAlloc();
          v45 = v25;
          v46[0] = v41;
          *v29 = 136315138;
          swift_unknownObjectRetain();
          v30 = sub_185B67EBC();
          v32 = v5;
          v33 = v4;
          v34 = sub_185ACB2C4(v30, v31, v46);

          *(v29 + 4) = v34;
          v4 = v33;
          v5 = v32;
          v35 = v44;
          _os_log_impl(&dword_185AC1000, v44, v27, "unable to cast UserInfo to dictionary: %s", v29, 0xCu);
          v36 = v41;
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x1865FE2F0](v36, -1, -1);
          v37 = v29;
          a2 = v42;
          MEMORY[0x1865FE2F0](v37, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v9 = v43;
      }
    }

    sub_185B67E1C();

    v46[3] = type metadata accessor for DistnotedXPCEventStreamTranslator();
    v46[0] = a2;

    sub_185B677EC();
    v38 = *(a2 + 16);
    v39 = sub_185B677CC();
    [v38 postNotification_];

    return (*(v5 + 1))(v9, v4);
  }

  return result;
}

id sub_185B0C1D0()
{
  type metadata accessor for DistnotedXPCEventStreamTranslator();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  *(v0 + 16) = result;
  qword_1EA8D22B8 = v0;
  return result;
}

uint64_t sub_185B0C224()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_185B0C288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185B0C2D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t APDataSetAccessGrantReason.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0xD000000000000020;
      }

      goto LABEL_8;
    }

    return 0xD00000000000002ELL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD00000000000001ELL;
      }

LABEL_8:
      sub_185B6836C();

      v2 = sub_185B6856C();
      MEMORY[0x1865FCF60](v2);

      MEMORY[0x1865FCF60](41, 0xE100000000000000);
      return 0xD000000000000023;
    }

    return 0xD000000000000022;
  }
}

uint64_t sub_185B0C47C()
{
  result = sub_185B0C4A0();
  byte_1EA8D2360 = result & 1;
  return result;
}

uint64_t sub_185B0C4A0()
{
  v0 = xpc_copy_entitlement_for_self();
  if (!v0)
  {
    v3 = 0;
    return v3 & 1;
  }

  v1 = v0;
  v2 = MEMORY[0x1865FE700]();
  if (v2 != sub_185B67BCC())
  {
    v3 = 0;
LABEL_12:
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  v4 = swift_unknownObjectRetain();
  v5 = MEMORY[0x1865FE700](v4);
  if (v5 == sub_185B67BCC())
  {
    if (xpc_string_get_string_ptr(v1))
    {
      v6 = sub_185B67F1C();
      v8 = v7;
      swift_unknownObjectRelease();
      if (v6 == 0xD000000000000015 && 0x8000000185B764C0 == v8)
      {
        v3 = 1;
      }

      else
      {
        v3 = sub_185B6859C();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  result = sub_185B6842C();
  __break(1u);
  return result;
}

id sub_185B0C5F4()
{
  result = [objc_allocWithZone(APGuard) init];
  qword_1ED6F4658 = result;
  return result;
}

uint64_t sub_185B0C628()
{
  v13 = sub_185B680EC();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_185ADF590(0, &qword_1ED6F48B0, 0x1E69E9610);
  sub_185B67CBC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185ACA36C(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC73B8(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  result = sub_185B6813C();
  qword_1EA8D2348 = result;
  return result;
}

void sub_185B0C8D8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_185B67C9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_185B67CDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    aBlock = 0u;
    v32 = 0u;
    LOBYTE(v33) = 1;
    sub_185B101A8(a1, &aBlock, a2, a3);
  }

  else
  {
    if (![a1 isEffectivelyLocked])
    {
      goto LABEL_12;
    }

    if (qword_1EA8CC3D8 != -1)
    {
      swift_once();
    }

    if (byte_1EA8D2360 == 1)
    {
      v19 = v3;
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v20 = sub_185B67B8C();
      __swift_project_value_buffer(v20, qword_1ED6F5130);
      v21 = sub_185B67B6C();
      v22 = sub_185B680AC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_185AC1000, v21, v22, "authenticating for dismissal for effectively locked application", v23, 2u);
        MEMORY[0x1865FE2F0](v23, -1, -1);
      }

      v33 = a2;
      v34 = a3;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_185AC53EC;
      *(&v32 + 1) = &block_descriptor_242;
      v24 = _Block_copy(&aBlock);

      [v19 authenticateForShieldDismissalForSubject:a1 completion:v24];
      _Block_release(v24);
    }

    else
    {
LABEL_12:
      v28 = v14;
      v29 = v8;
      if (qword_1EA8CC098 != -1)
      {
        swift_once();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a3;
      v33 = sub_185ACA0B8;
      v34 = v25;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_185ACA0E8;
      *(&v32 + 1) = &block_descriptor_239;
      v26 = _Block_copy(&aBlock);

      sub_185B67CBC();
      v30 = MEMORY[0x1E69E7CC0];
      sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v18, v12, v26);
      _Block_release(v26);
      (*(v29 + 8))(v12, v7);
      (*(v28 + 8))(v18, v13);
    }
  }
}

uint64_t sub_185B0CF30(id a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t (*a7)(void, void))
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v37 = HIDWORD(a2);
  v38 = HIDWORD(a3);
  v39 = HIDWORD(a4);
  v40 = HIDWORD(a5);
  if (a1)
  {
    v14 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1ED6F5130);
    v16 = a1;
    v17 = a6;
    v18 = sub_185B67B6C();
    v19 = sub_185B6808C();

    if (os_log_type_enabled(v18, v19))
    {
      v35 = a7;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 67109634;
      atoken.val[0] = v12;
      atoken.val[1] = v37;
      atoken.val[2] = v11;
      atoken.val[3] = v38;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v20 + 4) = audit_token_to_pid(&atoken);
      *(v20 + 8) = 2112;
      *(v20 + 10) = v17;
      *v21 = v17;
      *(v20 + 18) = 2112;
      v22 = a1;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 20) = v24;
      v21[1] = v24;
      _os_log_impl(&dword_185AC1000, v18, v19, "could not mark %d as accessing %@: %@", v20, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v21, -1, -1);
      v25 = v20;
      a7 = v35;
      MEMORY[0x1865FE2F0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v26 = sub_185B67B8C();
    __swift_project_value_buffer(v26, qword_1ED6F5130);
    v27 = a6;
    v28 = sub_185B67B6C();
    v29 = sub_185B680AC();

    if (os_log_type_enabled(v28, v29))
    {
      v36 = a7;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 67109378;
      atoken.val[0] = v12;
      atoken.val[1] = v37;
      atoken.val[2] = v11;
      atoken.val[3] = v38;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v30 + 4) = audit_token_to_pid(&atoken);
      *(v30 + 8) = 2112;
      *(v30 + 10) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_185AC1000, v28, v29, "notified %d as accessing %@", v30, 0x12u);
      sub_185AC3F6C(v31);
      MEMORY[0x1865FE2F0](v31, -1, -1);
      v33 = v30;
      a7 = v36;
      MEMORY[0x1865FE2F0](v33, -1, -1);
    }
  }

  return a7(a1 == 0, a1);
}

void sub_185B0D2AC(void (*a1)(id, void))
{
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v2 = sub_185B6825C();
  a1(v2, 0);
}

void sub_185B0D434(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v18 = sub_185B126F4;
  v19 = v8;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_185B6657C;
  v17 = &block_descriptor_97_0;
  v9 = _Block_copy(&v14);

  v10 = APGetAsyncGuardProxy(v9);
  _Block_release(v9);
  v11 = [a4 effectiveBundleIdentifier];
  if (!v11)
  {
    sub_185B67E4C();
    v11 = sub_185B67E1C();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v18 = sub_185B12514;
  v19 = v12;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_185B2AF84;
  v17 = &block_descriptor_103;
  v13 = _Block_copy(&v14);

  [v10 authenticateForBundle:v11 interfacePresentationTarget:a1 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_185B0D648(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;
  v5 = a1;
}

uint64_t sub_185B0D6C0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  a5(v7);

  return 1;
}

void sub_185B0D760(id a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v44 = HIDWORD(a2);
  v45 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  v15 = HIDWORD(a5);
  if (a1)
  {
    v39 = HIDWORD(a4);
    v40 = HIDWORD(a5);
    v16 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v17 = sub_185B67B8C();
    __swift_project_value_buffer(v17, qword_1ED6F5130);
    v18 = a1;
    v19 = a6;
    v20 = sub_185B67B6C();
    v21 = sub_185B6808C();

    if (os_log_type_enabled(v20, v21))
    {
      v42 = v7;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 67109634;
      atoken.val[0] = v12;
      atoken.val[1] = v44;
      atoken.val[2] = v11;
      atoken.val[3] = v45;
      atoken.val[4] = v10;
      atoken.val[5] = v39;
      atoken.val[6] = v9;
      atoken.val[7] = v40;
      *(v22 + 4) = audit_token_to_pid(&atoken);
      *(v22 + 8) = 2112;
      *(v22 + 10) = v19;
      *v23 = v19;
      *(v22 + 18) = 2112;
      v24 = a1;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 20) = v26;
      v23[1] = v26;
      _os_log_impl(&dword_185AC1000, v20, v21, "could not mark %d as accessing %@: %@", v22, 0x1Cu);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CC820, &unk_185B6B2A0);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v23, -1, -1);
      v27 = v22;
      v7 = v42;
      MEMORY[0x1865FE2F0](v27, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1ED6F5130);
    v29 = a6;
    v30 = sub_185B67B6C();
    v31 = sub_185B680AC();

    if (os_log_type_enabled(v30, v31))
    {
      v41 = v15;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v14;
      v35 = v33;
      *v32 = 67109378;
      atoken.val[0] = v12;
      atoken.val[1] = v44;
      atoken.val[2] = v11;
      atoken.val[3] = v45;
      atoken.val[4] = v10;
      atoken.val[5] = v34;
      atoken.val[6] = v9;
      atoken.val[7] = v41;
      *(v32 + 4) = audit_token_to_pid(&atoken);
      *(v32 + 8) = 2112;
      *(v32 + 10) = v29;
      *v35 = v29;
      v36 = v29;
      _os_log_impl(&dword_185AC1000, v30, v31, "marked %d as accessing %@", v32, 0x12u);
      sub_185AC3F6C(v35);
      MEMORY[0x1865FE2F0](v35, -1, -1);
      MEMORY[0x1865FE2F0](v32, -1, -1);
    }

    v7 = a7;
  }

  swift_beginAccess();
  v37 = *(v7 + 16);
  *(v7 + 16) = a1;
  v38 = a1;
}

id sub_185B0DC1C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_185B0DC70(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

uint64_t sub_185B0DE6C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_185B0DF30(void *a1, int a2, int a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_185B67E4C();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = a1;
  a7(v11, v13, a6, v14);
}

void sub_185B0DFEC(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v14 = sub_185B0FA08;
  v15 = v5;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_10;
  v6 = _Block_copy(&v10);

  v7 = APGetAsyncGuardProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67ABC();
  v14 = a2;
  v15 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_16_1;
  v9 = _Block_copy(&v10);

  [v7 endTransactionWithUUID:v8 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_185B0E174(void *a1, uint64_t a2)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v37 - v12;
  if (a1)
  {
    v14 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v15 = sub_185B67B8C();
    __swift_project_value_buffer(v15, qword_1ED6F5130);
    (*(v5 + 16))(v10, a2, v4);
    v16 = a1;
    v17 = sub_185B67B6C();
    v18 = sub_185B6808C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v19 = 136315394;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
      v21 = sub_185B6856C();
      v23 = v22;
      (*(v5 + 8))(v10, v4);
      v24 = sub_185ACB2C4(v21, v23, &v38);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_185AC1000, v17, v18, "could not invalidate assertion %s: %@", v19, 0x16u);
      sub_185AC3F6C(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      v27 = v37;
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
      MEMORY[0x1865FE2F0](v27, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1ED6F5130);
    (*(v5 + 16))(v13, a2, v4);
    v29 = sub_185B67B6C();
    v30 = sub_185B680AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136315138;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
      v33 = sub_185B6856C();
      v35 = v34;
      (*(v5 + 8))(v13, v4);
      v36 = sub_185ACB2C4(v33, v35, &v38);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_185AC1000, v29, v30, "invalidated assertion %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x1865FE2F0](v32, -1, -1);
      MEMORY[0x1865FE2F0](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v13, v4);
    }
  }
}

void sub_185B0E6C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_185B0E888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_185B6791C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_185B0E8F8(void *a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a1;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1ED6F5130);
    (*(v10 + 16))(v14, a2, v9);
    v17 = a1;
    v18 = sub_185B67B6C();
    v19 = sub_185B6808C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v44 = a3;
      v21 = v20;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v21 = 136315394;
      sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
      v22 = sub_185B6856C();
      v24 = v23;
      (*(v10 + 8))(v14, v9);
      v25 = sub_185ACB2C4(v22, v24, &v45);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2112;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v27;
      v28 = v42;
      *v42 = v27;
      _os_log_impl(&dword_185AC1000, v18, v19, "failed to acquire assertion %s: %@", v21, 0x16u);
      sub_185AC3F6C(v28);
      MEMORY[0x1865FE2F0](v28, -1, -1);
      v29 = v43;
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x1865FE2F0](v29, -1, -1);
      v30 = v21;
      a3 = v44;
      MEMORY[0x1865FE2F0](v30, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    v41 = a1;
    (a3)(0, a1);
  }

  else
  {
    v31 = sub_185B67ABC();
    v32 = [objc_allocWithZone(APSubjectAccessAssertion) initWithSubject:a5 uuid:v31];

    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v33 = sub_185B67B8C();
    __swift_project_value_buffer(v33, qword_1ED6F5130);
    v34 = v32;
    v35 = sub_185B67B6C();
    v36 = sub_185B680AC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_185AC1000, v35, v36, "acquired assertion %@", v37, 0xCu);
      sub_185AC3F6C(v38);
      MEMORY[0x1865FE2F0](v38, -1, -1);
      MEMORY[0x1865FE2F0](v37, -1, -1);
    }

    v44 = v34;
    (a3)(v34, 0);

    v40 = v44;
  }
}

id sub_185B0EE68()
{
  v1 = v0;
  v2 = sub_185B67AFC();
  v45 = *(v2 - 8);
  v3 = v45[8];
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v40 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v40 - v15;
  v17 = *(**&v0[OBJC_IVAR___APSubjectAccessAssertion_invalidated] + 136);

  LOBYTE(v17) = atomic_load_explicit(v17(v18), memory_order_acquire);

  if ((v17 & 1) == 0)
  {
    v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v2;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1ED6F5130);
    v43 = v0;
    v20 = v0;
    v21 = sub_185B67B6C();
    v22 = sub_185B6809C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v20;
      v25 = v20;
      _os_log_impl(&dword_185AC1000, v21, v22, "deallocating valid assertion %@!", v23, 0xCu);
      sub_185AC3F6C(v24);
      MEMORY[0x1865FE2F0](v24, -1, -1);
      MEMORY[0x1865FE2F0](v23, -1, -1);
    }

    v26 = *&v20[OBJC_IVAR___APSubjectAccessAssertion_uuid];
    v44 = v16;
    sub_185B67ADC();
    v27 = v45;
    v28 = v45[2];
    v29 = v16;
    v30 = v42;
    v28(v13, v29, v42);
    v28(v9, v13, v30);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = swift_allocObject();
    v40 = v9;
    v33 = v27[4];
    v33(v32 + v31, v13, v30);
    v34 = v41;
    v28(v41, v44, v30);
    v35 = swift_allocObject();
    v33(v35 + v31, v34, v30);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = sub_185B1270C;
    v36[4] = v32;
    v36[5] = sub_185B126FC;
    v36[6] = v35;

    v37 = v40;
    sub_185B0DFEC(v40, sub_185B12700, v36);

    v38 = v45[1];
    v38(v37, v30);
    v38(v44, v30);
    v1 = v43;
  }

  v46.receiver = v1;
  v46.super_class = APSubjectAccessAssertion;
  return objc_msgSendSuper2(&v46, sel_dealloc);
}

unint64_t APSubjectAccessAssertion.description.getter()
{
  v1 = v0;
  sub_185B6836C();

  v2 = [*(v0 + OBJC_IVAR___APSubjectAccessAssertion_subject) description];
  v3 = sub_185B67E4C();
  v5 = v4;

  MEMORY[0x1865FCF60](v3, v5);

  MEMORY[0x1865FCF60](0x203A6469757520, 0xE700000000000000);
  v6 = [*(v1 + OBJC_IVAR___APSubjectAccessAssertion_uuid) description];
  v7 = sub_185B67E4C();
  v9 = v8;

  MEMORY[0x1865FCF60](v7, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t sub_185B0F4C4()
{
  v50 = sub_185B67AFC();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v50, v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v43 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v43 - v12;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v11, v15);
  v17 = &v43 - v16;
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v18 = sub_185B67B8C();
  __swift_project_value_buffer(v18, qword_1ED6F5130);
  v19 = v0;
  v20 = sub_185B67B6C();
  v21 = sub_185B680AC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_185AC1000, v20, v21, "invalidating %@", v22, 0xCu);
    sub_185AC3F6C(v23);
    MEMORY[0x1865FE2F0](v23, -1, -1);
    MEMORY[0x1865FE2F0](v22, -1, -1);
  }

  v25 = *&v19[OBJC_IVAR___APSubjectAccessAssertion_uuid];
  sub_185B67ADC();
  v26 = v1;
  v27 = *(v1 + 16);
  v28 = v50;
  v27(v13, v17, v50);
  v27(v9, v13, v28);
  v29 = *(v26 + 80);
  v45 = v17;
  v46 = v26;
  v30 = (v29 + 16) & ~v29;
  v43 = swift_allocObject();
  v44 = v9;
  v47 = v19;
  v31 = *(v26 + 32);
  v32 = v50;
  v31(v43 + v30, v13, v50);
  v33 = v49;
  v27(v49, v17, v32);
  v34 = swift_allocObject();
  v35 = v34 + v30;
  v36 = v32;
  v31(v35, v33, v32);
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = sub_185B0F9FC;
  v37[4] = v43;
  v37[5] = sub_185B0FA00;
  v37[6] = v34;

  v38 = v44;
  sub_185B0DFEC(v44, sub_185B0FA04, v37);

  v39 = *(v46 + 8);
  v39(v38, v36);
  v39(v45, v36);
  v40 = *(**&v47[OBJC_IVAR___APSubjectAccessAssertion_invalidated] + 136);

  atomic_store(1u, v40(v41));
}

void __swiftcall APSubjectAccessAssertion.init()(APSubjectAccessAssertion *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_185B0FA08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_185B0FA30(uint64_t (*a1)(), uint64_t a2)
{
  v5 = *(sub_185B67AFC() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_185B0DFEC(v6, a1, a2);
}

uint64_t objectdestroyTm()
{
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

void sub_185B0FB38(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_185B0E174(a1, v4);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

void sub_185B0FBE8(void *a1, void (**a2)(void, void, void))
{
  v4 = sub_185B67C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67CDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  if ([a1 shieldable])
  {
    if ([a1 isLocked])
    {
      v17 = swift_allocObject();
      *(v17 + 16) = sub_185ACA0F0;
      *(v17 + 24) = v16;
      v35 = sub_185B126F4;
      v36 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_185B6657C;
      v34 = &block_descriptor_258;
      v18 = _Block_copy(&aBlock);

      v19 = APGetAsyncGuardProxy(v18);
      _Block_release(v18);
      v20 = [a1 effectiveBundleIdentifier];
      if (!v20)
      {
        sub_185B67E4C();
        v20 = sub_185B67E1C();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = sub_185ACA0F0;
      *(v21 + 24) = v16;
      v35 = sub_185B12714;
      v36 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_185B2AF84;
      v34 = &block_descriptor_264;
      v22 = _Block_copy(&aBlock);

      [v19 initiateAuthenticationWithShieldingForBundle:v20 completion:v22];
      _Block_release(v22);

      swift_unknownObjectRelease();
    }

    else
    {
      v28 = v11;
      v29 = v5;
      if (qword_1EA8CC098 != -1)
      {
        swift_once();
      }

      v27 = qword_1EA8D2348;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_185ACA0F0;
      *(v25 + 24) = v16;
      v35 = sub_185ACA070;
      v36 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_185ACA0E8;
      v34 = &block_descriptor_252;
      v26 = _Block_copy(&aBlock);

      sub_185B67CBC();
      v30 = MEMORY[0x1E69E7CC0];
      sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
      sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
      sub_185B682CC();
      MEMORY[0x1865FD170](0, v15, v9, v26);
      _Block_release(v26);
      (*(v29 + 8))(v9, v4);
      (*(v28 + 8))(v15, v10);
    }
  }

  else
  {
    v23 = sub_185AD0148(1uLL, 0, 0, 62, 0xD000000000000034, 0x8000000185B764E0);
    v29 = sub_185B6791C();
    a2[2](a2, 0, v29);

    v24 = v29;
  }
}

void sub_185B101A8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2[1];
  v25 = *a2;
  v26 = v8;
  v9 = sub_185B67C9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_185B67CDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    if (a2[2])
    {
      p_aBlock = 0;
    }

    else
    {
      aBlock = v25;
      v29 = v26;
      p_aBlock = &aBlock;
    }

    sub_185B0D434(p_aBlock, a3, a4, a1);
  }

  else
  {
    *&v25 = v15;
    *&v26 = v10;
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    v30 = sub_185ACA070;
    v31 = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v29 = sub_185ACA0E8;
    *(&v29 + 1) = &block_descriptor_91;
    v23 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v27 = MEMORY[0x1E69E7CC0];
    sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v20, v14, v23);
    _Block_release(v23);
    (*(v26 + 8))(v14, v9);
    (*(v16 + 8))(v20, v25);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_185B1053C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B67CDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isLocked])
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v33 = sub_185B126F8;
    v34 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185B6657C;
    v32 = &block_descriptor_200;
    v19 = _Block_copy(&aBlock);

    v20 = APGetAsyncGuardProxy(v19);
    _Block_release(v19);
    v21 = [a1 effectiveBundleIdentifier];
    if (!v21)
    {
      sub_185B67E4C();
      v21 = sub_185B67E1C();
    }

    v33 = a2;
    v34 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185B0E6C8;
    v32 = &block_descriptor_203;
    v22 = _Block_copy(&aBlock);

    [v20 getIsChallengeCurrentlyRequiredForBundle:v21 completion:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = v12;
    v27 = v7;
    if (qword_1EA8CC098 != -1)
    {
      swift_once();
    }

    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v33 = sub_185B125AC;
    v34 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_185ACA0E8;
    v32 = &block_descriptor_194;
    v24 = _Block_copy(&aBlock);

    sub_185B67CBC();
    v28 = MEMORY[0x1E69E7CC0];
    sub_185ACA36C(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v17, v11, v24);
    _Block_release(v24);
    (*(v27 + 8))(v11, v6);
    (*(v13 + 8))(v17, v26);
  }
}

void sub_185B109C0(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v13 = sub_185B126F4;
  v14 = v4;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B6657C;
  v12 = &block_descriptor_182;
  v5 = _Block_copy(&v9);

  v6 = APGetAsyncGuardProxy(v5);
  _Block_release(v5);
  v7 = sub_185B67E1C();
  v13 = a1;
  v14 = a2;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185AC53EC;
  v12 = &block_descriptor_185;
  v8 = _Block_copy(&v9);

  [v6 authenticateUnconditionallyWithReason:v7 completion:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();
}

void sub_185B10B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v15 = sub_185B126F4;
  v16 = v6;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_185B6657C;
  v14 = &block_descriptor_169;
  v7 = _Block_copy(&v11);

  v8 = APGetAsyncGuardProxy(v7);
  _Block_release(v7);
  v9 = sub_185B67E1C();
  v15 = a3;
  v16 = a4;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_185AC53EC;
  v14 = &block_descriptor_172;
  v10 = _Block_copy(&v11);

  [v8 authenticateUnconditionallyWithReason:v9 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

id sub_185B10CD8(void *a1)
{
  if ([a1 shieldable])
  {
    result = [a1 isLocked];
    if (result)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = 0;
      v15 = sub_185B12704;
      v16 = v3;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_185B6657C;
      v14 = &block_descriptor_140;
      v4 = _Block_copy(&v11);

      v5 = APGetSyncGuardProxy(v4);
      _Block_release(v4);
      v6 = [a1 effectiveBundleIdentifier];
      if (!v6)
      {
        sub_185B67E4C();
        v6 = sub_185B67E1C();
      }

      v15 = sub_185B12708;
      v16 = v3;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_185B2AF84;
      v14 = &block_descriptor_143;
      v7 = _Block_copy(&v11);

      [v5 initiateAuthenticationWithShieldingForBundle:v6 completion:v7];
      _Block_release(v7);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v8 = *(v3 + 16);
      if (v8)
      {
        v9 = *(v3 + 16);
        swift_willThrow();
        v10 = v8;
      }
    }
  }

  else
  {
    sub_185AD0148(1uLL, 0, 0, 175, 0xD00000000000002DLL, 0x8000000185B76410);
    return swift_willThrow();
  }

  return result;
}

id sub_185B10F4C(void *a1)
{
  result = [a1 isLocked];
  if (result)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = 0;
    v15 = sub_185B12574;
    v16 = v3;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_185B6657C;
    v14 = &block_descriptor_133;
    v4 = _Block_copy(&v11);

    v5 = APGetSyncGuardProxy(v4);
    _Block_release(v4);
    v6 = [a1 effectiveBundleIdentifier];
    if (!v6)
    {
      sub_185B67E4C();
      v6 = sub_185B67E1C();
    }

    v15 = sub_185B12590;
    v16 = v3;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_185B2AF84;
    v14 = &block_descriptor_136;
    v7 = _Block_copy(&v11);

    [v5 authenticateForBundle:v6 completion:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();

    swift_beginAccess();
    v8 = *(v3 + 16);
    if (v8)
    {
      v9 = *(v3 + 16);
      swift_willThrow();
      v10 = v8;
    }
  }

  return result;
}

id sub_185B11170(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v54 = *MEMORY[0x1E69E9840];
  if ([a1 shieldable])
  {
    result = [a1 isLocked];
    if (result)
    {
      v43 = a4;
      v41 = a6;
      v13 = HIDWORD(a4);
      v14 = HIDWORD(a5);
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v15 = sub_185B67B8C();
      __swift_project_value_buffer(v15, qword_1ED6F5130);
      v16 = a1;
      v17 = sub_185B67B6C();
      v18 = sub_185B680AC();

      v42 = HIDWORD(a5);
      if (os_log_type_enabled(v17, v18))
      {
        v39 = v13;
        v13 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v13 = 67109378;
        *atoken.val = a2;
        *&atoken.val[2] = a3;
        atoken.val[4] = v43;
        atoken.val[5] = v39;
        *&atoken.val[6] = a5;
        *(v13 + 4) = audit_token_to_pid(&atoken);
        *(v13 + 8) = 2112;
        *(v13 + 10) = v16;
        *v19 = v16;
        v20 = v16;
        v21 = v18;
        LODWORD(v22) = HIDWORD(a3);
        _os_log_impl(&dword_185AC1000, v17, v21, "marking %d as accessing %@", v13, 0x12u);
        sub_185AC3F6C(v19);
        v23 = v19;
        v14 = HIDWORD(a5);
        MEMORY[0x1865FE2F0](v23, -1, -1);
        v24 = v13;
        LODWORD(v13) = v39;
        MEMORY[0x1865FE2F0](v24, -1, -1);
      }

      else
      {

        v22 = HIDWORD(a3);
      }

      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v44 = a2;
      v45 = a3;
      v46 = v22;
      v47 = v43;
      v48 = v13;
      v49 = a5;
      v50 = v14;
      v52 = sub_185B12704;
      v53 = v25;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B6657C;
      *&atoken.val[6] = &block_descriptor_123;
      v26 = _Block_copy(&atoken);

      v40 = APGetSyncGuardProxy(v26);
      _Block_release(v26);
      v27 = [v16 effectiveBundleIdentifier];
      v28 = v16;
      v29 = a5;
      v30 = v13;
      v31 = v27;
      if (!v27)
      {
        sub_185B67E4C();
        v31 = sub_185B67E1C();
      }

      v32 = swift_allocObject();
      *(v32 + 16) = a2;
      *(v32 + 24) = a3;
      *(v32 + 28) = v22;
      *(v32 + 32) = v43;
      *(v32 + 36) = v30;
      *(v32 + 40) = v29;
      *(v32 + 44) = v42;
      *(v32 + 48) = v28;
      *(v32 + 56) = v25;
      v52 = sub_185B12564;
      v53 = v32;
      *atoken.val = MEMORY[0x1E69E9820];
      *&atoken.val[2] = 1107296256;
      *&atoken.val[4] = sub_185B2AF84;
      *&atoken.val[6] = &block_descriptor_129;
      v33 = _Block_copy(&atoken);
      v34 = v28;

      [v40 initiateAuthenticationWithShieldingForBundle:v31 onBehalfOfProcessWithAuditToken:&v44 accessGrantReason:v41 completion:v33];
      _Block_release(v33);
      swift_unknownObjectRelease();

      swift_beginAccess();
      v35 = *(v25 + 16);
      if (v35)
      {
        v36 = *(v25 + 16);
        swift_willThrow();
        v37 = v35;
      }
    }
  }

  else
  {
    sub_185AD0148(1uLL, 0, 0, 205, 0xD00000000000004ALL, 0x8000000185B763C0);
    result = swift_willThrow();
  }

  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B11624()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v11 = sub_185B12704;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_116;
  v1 = _Block_copy(&v7);

  v2 = APGetSyncGuardProxy(v1);
  _Block_release(v1);
  v11 = sub_185B12710;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185AC53EC;
  v10 = &block_descriptor_119;
  v3 = _Block_copy(&v7);

  [v2 authenticateUnconditionallyWithReason:0 completion:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    swift_willThrow();
    v5 = v4;
  }
}

uint64_t sub_185B117F8()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v12 = sub_185B12704;
  v13 = v0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185B6657C;
  v11 = &block_descriptor_109;
  v1 = _Block_copy(&v8);

  v2 = APGetSyncGuardProxy(v1);
  _Block_release(v1);
  v3 = sub_185B67E1C();
  v12 = sub_185B12548;
  v13 = v0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_185AC53EC;
  v11 = &block_descriptor_112;
  v4 = _Block_copy(&v8);

  [v2 authenticateUnconditionallyWithReason:v3 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5)
  {
    swift_willThrow();
    v6 = v5;
  }
}

uint64_t sub_185B119F0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v14 = sub_185AE7948;
  v15 = v4;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B6657C;
  v13 = &block_descriptor_75;
  v5 = _Block_copy(&v10);

  v6 = APGetAsyncGuardProxy(v5);
  _Block_release(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v14 = sub_185B124D8;
  v15 = v7;
  v10 = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = sub_185B2AF84;
  v13 = &block_descriptor_81;
  v8 = _Block_copy(&v10);

  [v6 abortOngoingAuthWithCompletion_];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

void sub_185B11B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v16 = sub_185B126F4;
  v17 = v6;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B6657C;
  v15 = &block_descriptor_59;
  v7 = _Block_copy(&v12);

  v8 = APGetAsyncGuardProxy(v7);
  _Block_release(v7);
  v9 = sub_185B67E1C();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v16 = sub_185B12714;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_185B2AF84;
  v15 = &block_descriptor_65;
  v11 = _Block_copy(&v12);

  [v8 noteAllScenesDismissedForBundleID:v9 completion:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();
}

uint64_t sub_185B11D40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v74 = a8;
  v85 = a7;
  v75 = a5;
  v73 = a3;
  v72 = a2;
  v89[4] = *MEMORY[0x1E69E9840];
  v11 = sub_185B67AFC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v79 = &v66[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v66[-v18];
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v66[-v21];
  sub_185B67AEC();
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v83 = a6;
  v23 = sub_185B67B8C();
  __swift_project_value_buffer(v23, qword_1ED6F5130);
  v24 = v12[2];
  v80 = v22;
  v78 = v12 + 2;
  v77 = v24;
  v24(v19, v22, v11);
  v25 = a1;
  v26 = sub_185B67B6C();
  v27 = sub_185B680AC();

  v28 = os_log_type_enabled(v26, v27);
  v81 = v11;
  v82 = v25;
  v84 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v71 = v13;
    v30 = v29;
    v31 = swift_slowAlloc();
    v68 = v31;
    v69 = swift_slowAlloc();
    v89[0] = v69;
    *v30 = 138413058;
    *(v30 + 4) = v25;
    *v31 = v25;
    *(v30 + 12) = 1024;
    v32 = v25;
    v33 = v72;
    v34 = v73;
    *atoken.val = v72;
    *&atoken.val[2] = v73;
    *&atoken.val[4] = a4;
    v70 = a4;
    v35 = v75;
    *&atoken.val[6] = v75;
    *(v30 + 14) = audit_token_to_pid(&atoken);
    *(v30 + 18) = 2048;
    v67 = v27;
    *(v30 + 20) = v83;
    *(v30 + 28) = 2080;
    sub_185ACA36C(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v36 = sub_185B6856C();
    v38 = v37;
    v39 = v19;
    v40 = v11;
    v41 = v74;
    v42 = v85;
    v76 = v84[1];
    v76(v39, v40);
    v43 = sub_185ACB2C4(v36, v38, v89);

    *(v30 + 30) = v43;
    _os_log_impl(&dword_185AC1000, v26, v67, "Acquiring access assertion for %@ on behalf of %d reason %ld uuid %s", v30, 0x26u);
    v44 = v68;
    sub_185AC3F6C(v68);
    MEMORY[0x1865FE2F0](v44, -1, -1);
    v45 = v69;
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    MEMORY[0x1865FE2F0](v45, -1, -1);
    v46 = v30;
    v13 = v71;
    MEMORY[0x1865FE2F0](v46, -1, -1);

    v47 = v70;
    v48 = v82;
  }

  else
  {

    v76 = v12[1];
    v76(v19, v11);
    v48 = v25;
    v47 = a4;
    v35 = v75;
    v42 = v85;
    v34 = v73;
    v33 = v72;
    v41 = v74;
  }

  v89[0] = v33;
  v89[1] = v34;
  v89[2] = v47;
  v89[3] = v35;
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v41;
  v87 = sub_185B06F74;
  v88 = v49;
  *atoken.val = MEMORY[0x1E69E9820];
  *&atoken.val[2] = 1107296256;
  v74 = &atoken.val[4];
  *&atoken.val[4] = sub_185B6657C;
  *&atoken.val[6] = &block_descriptor_37_2;
  v50 = _Block_copy(&atoken);

  v75 = APGetAsyncGuardProxy(v50);
  _Block_release(v50);
  v51 = [v48 effectiveBundleIdentifier];
  if (!v51)
  {
    sub_185B67E4C();
    v51 = sub_185B67E1C();
  }

  v52 = v80;
  v73 = sub_185B67ABC();
  v53 = v79;
  v54 = v81;
  v77(v79, v52, v81);
  v55 = v84;
  v56 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v57 = (v13 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (v55[4])(v58 + v56, v53, v54);
  v59 = (v58 + v57);
  *v59 = v85;
  v59[1] = v41;
  v60 = v82;
  *(v58 + ((v57 + 23) & 0xFFFFFFFFFFFFFFF8)) = v82;
  v87 = sub_185B1242C;
  v88 = v58;
  *atoken.val = MEMORY[0x1E69E9820];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_185B2AF84;
  *&atoken.val[6] = &block_descriptor_43;
  v61 = _Block_copy(&atoken);
  v62 = v60;

  v63 = v73;
  [v75 beginTransactionForAccessOfBundle:v51 onBehalfOfProcessWithAuditToken:v89 accessGrantReason:v83 transactionUUID:v73 completion:v61];
  _Block_release(v61);
  swift_unknownObjectRelease();

  result = (v76)(v52, v54);
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185B1242C(void *a1)
{
  v3 = *(sub_185B67AFC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = *(v7 + 8);

  sub_185B0E8F8(a1, v1 + v4, v9, v10, v8);
}

uint64_t sub_185B124D8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0, a1);
}

uint64_t sub_185B12514(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0, a1);
}

id sub_185B12718()
{
  result = APGetReadServiceInterface();
  qword_1EA8D2328 = result;
  return result;
}

id sub_185B127F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B12898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APReadService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection13APReadService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t sub_185B12914(uint64_t a1)
{
  result = sub_185B12958(&qword_1EA8CBEA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B12958(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APReadClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185B12998(uint64_t a1, uint64_t a2)
{
  LOBYTE(v26[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection13APReadService_policy, v23);
      v4 = v24;
      v5 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v5 + 136))(v26, v4, v5);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      v6 = v27;
      v7 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v8 = (*(v7 + 40))(v6, v7);
      v9 = sub_185AE39B4(v8);

      v10 = *(a2 + 16);
      v11 = v9;
      v10(a2, v11, 0);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
      v22 = sub_185B6791C();
      (*(a2 + 16))(a2, 0, v22);
    }
  }

  else
  {
    v12 = *MEMORY[0x1E696A768];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_185B6BB60;
    *(inited + 32) = 0x656E694C5041;
    v14 = MEMORY[0x1E69E6530];
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 40;
    v15 = MEMORY[0x1E69E6158];
    *(inited + 72) = v14;
    *(inited + 80) = 0x636E75465041;
    *(inited + 120) = v15;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = 0xD000000000000022;
    *(inited + 104) = 0x8000000185B765C0;
    v16 = v12;
    sub_185AD038C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
    swift_arrayDestroy();
    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v18 = sub_185B67D7C();

    v19 = [v17 initWithDomain:v16 code:-4 userInfo:v18];

    v20 = sub_185B6791C();
    (*(a2 + 16))(a2, 0, v20);
  }
}

uint64_t sub_185B12CC8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void *sub_185B12D28()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_185B6791C();
  v7[0] = 0;
  v2 = [v0 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v7];

  v3 = v7[0];
  if (v2)
  {
    v4 = sub_185B67A5C();
  }

  else
  {
    v4 = v3;
    sub_185B6792C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_185B12E1C()
{
  v1 = v0;
  v2 = *v0;
  empty = xpc_dictionary_create_empty();
  v4 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v4 + 32), 1);

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v5 = sub_185B67B8C();
  __swift_project_value_buffer(v5, qword_1EA8D2278);

  v6 = sub_185B67B6C();
  v7 = sub_185B680AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v1[2];

    _os_log_impl(&dword_185AC1000, v6, v7, "pinging %llu", v8, 0xCu);
    MEMORY[0x1865FE2F0](v8, -1, -1);
  }

  else
  {
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v2;
    v13 = v1[2];
    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v18[4] = sub_185B17C88;
    v18[5] = v12;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_185B12CC8;
    v18[3] = &block_descriptor_111;
    v16 = _Block_copy(v18);
    swift_retain_n();

    xpc_event_publisher_fire_with_reply();
    _Block_release(v16);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_185B13100(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if ((sub_185B16B70(a1, *(result + 16)) & 1) == 0)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v8 = sub_185B67B8C();
    __swift_project_value_buffer(v8, qword_1EA8D2278);

    v9 = sub_185B67B6C();
    v10 = sub_185B6808C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v3 + 16);

      v12 = "subscriber %llu bad pong shape, rejecting";
LABEL_23:
      _os_log_impl(&dword_185AC1000, v9, v10, v12, v11, 0xCu);
      MEMORY[0x1865FE2F0](v11, -1, -1);

      goto LABEL_25;
    }

LABEL_24:

LABEL_25:
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    v26 = sub_185B67B6C();
    v27 = sub_185B680AC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *(v3 + 16);

      _os_log_impl(&dword_185AC1000, v26, v27, "removing tracking for subscriber %llu as it failed to provide a firm handshake", v28, 0xCu);
      MEMORY[0x1865FE2F0](v28, -1, -1);
    }

    else
    {
    }

    v29 = *(v3 + 16);
    swift_beginAccess();
    sub_185B2EB98(0, v29);
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1EA8D2278);

  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v3 + 16);

    _os_log_impl(&dword_185AC1000, v5, v6, "pong from %llu", v7, 0xCu);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  else
  {
  }

  if ((sub_185B1672C(a1, *(v3 + 16)) & 1) == 0)
  {

    v9 = sub_185B67B6C();
    v10 = sub_185B6808C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v3 + 16);

      v12 = "subscriber %llu does not pass validation";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v13 = *(v3 + 40);
  if (v13)
  {
    *(v3 + 40) = 0;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 48);
      do
      {
        v21 = *(v15 - 2);
        v20 = *(v15 - 1);
        v22 = *v15;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          if (v20)
          {
            v30 = *(v3 + 16);
            v16 = v3;
            v18 = *(Strong + 16);
            v17 = *(Strong + 24);
            aBlock[4] = v20;
            aBlock[5] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_185B12CC8;
            aBlock[3] = &block_descriptor_114;
            v19 = _Block_copy(aBlock);
            sub_185B17C90(v20);
            sub_185B17C90(v20);
            sub_185B17C90(v20);
            swift_unknownObjectRetain();

            v3 = v16;
            xpc_event_publisher_fire_with_reply();
            swift_unknownObjectRelease();
            sub_185AE20B8(v20);
            _Block_release(v19);
            swift_unknownObjectRelease();
            sub_185AE20B8(v20);
          }

          else
          {
            v24 = *(Strong + 24);
            v25 = *(v3 + 16);
            xpc_event_publisher_fire();
            swift_unknownObjectRelease();
          }
        }

        v15 += 3;
        --v14;
      }

      while (v14);
    }

    else
    {
    }
  }

  else
  {
    result = sub_185B6842C();
    __break(1u);
  }

  return result;
}

uint64_t sub_185B1367C()
{
  sub_185AD3598(v0 + 24);
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B136E0(int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_185B1375C(a1, a2, a3);
  }

  return result;
}

void sub_185B1375C(int a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v19 = sub_185B67B8C();
    __swift_project_value_buffer(v19, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v20 = sub_185B680AC();
    if (!os_log_type_enabled(oslog, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "initial barrier on event stream.";
    v23 = v20;
    v24 = oslog;
    v25 = v21;
    v26 = 2;
LABEL_22:
    _os_log_impl(&dword_185AC1000, v24, v23, v22, v25, v26);
    MEMORY[0x1865FE2F0](v21, -1, -1);
LABEL_23:

    return;
  }

  v4 = v3;
  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v7 = sub_185B67B8C();
      __swift_project_value_buffer(v7, qword_1EA8D2278);
      swift_unknownObjectRetain();
      v8 = sub_185B67B6C();
      v9 = sub_185B680AC();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v38[0] = v11;
        *v10 = 134218242;
        *(v10 + 4) = a2;
        *(v10 + 12) = 2080;
        if (a3)
        {
          v12 = MEMORY[0x1865FE580](a3);
          a3 = sub_185B67F1C();
          v14 = v13;
          free(v12);
        }

        else
        {
          v14 = 0;
        }

        v38[1] = a3;
        v38[2] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD238, &qword_185B6D570);
        v30 = sub_185B67EBC();
        v32 = sub_185ACB2C4(v30, v31, v38);

        *(v10 + 14) = v32;
        _os_log_impl(&dword_185AC1000, v8, v9, "adding event subscriber with token %llu desc %s", v10, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v11);
        MEMORY[0x1865FE2F0](v11, -1, -1);
        MEMORY[0x1865FE2F0](v10, -1, -1);
      }

      type metadata accessor for APSystemAppXPCEventStreamClient();
      v33 = swift_allocObject();
      v33[4] = 0;
      swift_unknownObjectWeakInit();
      v34 = MEMORY[0x1E69E7CC0];
      v33[2] = a2;
      v33[4] = &off_1EF4696A8;
      v33[5] = v34;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();

      v35 = *(v4 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *(v4 + 32);
      *(v4 + 32) = 0x8000000000000000;
      sub_185B528A0(v33, a2, isUniquelyReferenced_nonNull_native);
      *(v4 + 32) = v38[0];
      swift_endAccess();
      sub_185B12E1C();

      return;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v28 = sub_185B67B8C();
    __swift_project_value_buffer(v28, qword_1EA8D2278);
    oslog = sub_185B67B6C();
    v29 = sub_185B6809C();
    if (!os_log_type_enabled(oslog, v29))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = a1;
    v22 = "unknown action %u";
    v23 = v29;
    v24 = oslog;
    v25 = v21;
    v26 = 8;
    goto LABEL_22;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v15 = sub_185B67B8C();
  __swift_project_value_buffer(v15, qword_1EA8D2278);
  v16 = sub_185B67B6C();
  v17 = sub_185B680AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_185AC1000, v16, v17, "removing subscriber with token %llu", v18, 0xCu);
    MEMORY[0x1865FE2F0](v18, -1, -1);
  }

  swift_beginAccess();
  sub_185B2EB98(0, a2);
  swift_endAccess();
}

uint64_t sub_185B13C4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  empty = xpc_dictionary_create_empty();
  v9 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v9 + 32), 2);

  v10 = sub_185B67ECC();
  v11 = sub_185B67ECC();
  xpc_dictionary_set_string(empty, (v10 + 32), (v11 + 32));

  v12 = sub_185B67ECC();
  xpc_dictionary_set_BOOL(empty, (v12 + 32), a3 & 1);

  sub_185B13EA8(empty, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t sub_185B13D70(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5)
{
  empty = xpc_dictionary_create_empty();
  v9 = sub_185B67ECC();
  xpc_dictionary_set_int64(empty, (v9 + 32), 3);

  v10 = sub_185B67ECC();
  v11 = sub_185B67ECC();
  xpc_dictionary_set_string(empty, (v10 + 32), (v11 + 32));

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_185B67ECC();
    xpc_dictionary_set_int64(empty, (v13 + 32), a3);

    sub_185B13EA8(empty, a4, a5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_185B13EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a3;
  v50 = a2;
  v64 = a1;
  v52 = sub_185B67C9C();
  v57 = *(v52 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v52, v6);
  v55 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_185B67CDC();
  v54 = *(v56 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56, v9);
  v53 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = dispatch_group_create();
  swift_beginAccess();
  if (!*(*(v3 + 4) + 16))
  {
    v4 = v3;
    if (qword_1EA8CB718 != -1)
    {
LABEL_27:
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);
    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_185AC1000, v14, v15, "System app event stream: no subscribers to send message to!", v16, 2u);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    v3 = v4;
  }

  v49 = v3;
  v17 = *(v3 + 4);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v58 = &v68;

  v23 = 0;
  v61 = xmmword_185B6BB70;
  v63 = v17 + 64;
  v60 = v11;
  v59 = v12;
  v62 = v17;
  while (v21)
  {
    v24 = v23;
LABEL_14:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(v17 + 56) + ((v24 << 9) | (8 * v25)));

    dispatch_group_enter(v12);
    v27 = swift_allocObject();
    *(v27 + 16) = v11;
    *(v27 + 24) = v12;
    v4 = *(v26 + 40);
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD210, &qword_185B6E8A0);
      inited = swift_initStackObject();
      *(inited + 32) = v64;
      v11 = inited + 32;
      *(inited + 16) = v61;
      *(inited + 40) = sub_185B17C40;
      *(inited + 48) = v27;
      v29 = *(v4 + 2);

      v30 = v12;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v32 = *(v4 + 3) >> 1, v32 <= v29))
      {
        v4 = sub_185B3CB5C(isUniquelyReferenced_nonNull_native, v29 + 1, 1, v4);
        v32 = *(v4 + 3) >> 1;
      }

      v17 = v62;
      if (v32 <= *(v4 + 2))
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      swift_arrayInitWithCopy();

      ++*(v4 + 2);
      v33 = *(v26 + 40);
      *(v26 + 40) = v4;

      v23 = v24;
      v11 = v60;
      v12 = v59;
      v18 = v63;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48[2] = *(v26 + 16);
        v35 = *(Strong + 16);
        v48[0] = *(Strong + 24);
        v48[1] = v35;
        v70 = sub_185B17C40;
        v71 = v27;
        aBlock = MEMORY[0x1E69E9820];
        v67 = 1107296256;
        v68 = sub_185B12CC8;
        v69 = &block_descriptor_96;
        v48[3] = Strong;
        v36 = _Block_copy(&aBlock);
        v4 = v12;
        swift_retain_n();

        v37 = v12;

        xpc_event_publisher_fire_with_reply();

        v38 = v36;
        v18 = v63;
        _Block_release(v38);

        swift_unknownObjectRelease();
      }

      else
      {

        v39 = v12;
      }

      v23 = v24;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  v40 = *(v49 + 2);
  v41 = swift_allocObject();
  v42 = v51;
  v41[2] = v50;
  v41[3] = v42;
  v41[4] = v11;
  v70 = sub_185B17DD0;
  v71 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v67 = 1107296256;
  v68 = sub_185ACA0E8;
  v69 = &block_descriptor_102;
  v43 = _Block_copy(&aBlock);

  v44 = v53;
  sub_185B67CBC();
  v65 = MEMORY[0x1E69E7CC0];
  sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  v45 = v55;
  v46 = v52;
  sub_185B682CC();
  sub_185B680CC();
  _Block_release(v43);

  (*(v57 + 8))(v45, v46);
  (*(v54 + 8))(v44, v56);
}

void sub_185B1466C(void *a1, uint64_t a2, NSObject *a3)
{
  length[20] = *MEMORY[0x1E69E9840];
  length[0] = 0;
  v6 = sub_185B67ECC();
  data = xpc_dictionary_get_data(a1, (v6 + 32), length);

  if (data)
  {
    v8 = sub_185AE35C4(data, length[0]);
    v10 = v9;
    sub_185ADF590(0, &qword_1EA8CD218, 0x1E696ACD0);
    sub_185ADF590(0, &unk_1EA8CD220, 0x1E696ABC0);
    v11 = sub_185B680BC();
    v23 = v11;
    if (v11)
    {
      sub_185AE2FC8(v8, v10);
    }

    else
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v12 = sub_185B67B8C();
      __swift_project_value_buffer(v12, qword_1EA8D2278);
      v13 = sub_185B67B6C();
      v14 = sub_185B6809C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_185AC1000, v13, v14, "could not get error from data", v15, 2u);
        MEMORY[0x1865FE2F0](v15, -1, -1);
      }

      v16 = *MEMORY[0x1E696A250];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_185B6BB60;
      *(inited + 32) = 0x656E694C5041;
      v18 = MEMORY[0x1E69E6530];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = 222;
      v19 = MEMORY[0x1E69E6158];
      *(inited + 72) = v18;
      *(inited + 80) = 0x636E75465041;
      *(inited + 120) = v19;
      *(inited + 88) = 0xE600000000000000;
      *(inited + 96) = 0xD00000000000001BLL;
      *(inited + 104) = 0x8000000185B767E0;
      v20 = v16;
      sub_185AD038C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
      swift_arrayDestroy();
      v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v22 = sub_185B67D7C();

      v23 = [v21 initWithDomain:v20 code:4864 userInfo:v22];
      sub_185AE2FC8(v8, v10);
    }

    swift_beginAccess();
    v24 = *(a2 + 16);
    *(a2 + 16) = v23;
  }

  dispatch_group_leave(a3);
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185B149CC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void sub_185B14A8C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = MEMORY[0x1865FE700](a1);
    if (v2 != sub_185B67BFC())
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v3 = sub_185B67B8C();
      __swift_project_value_buffer(v3, qword_1ED6F5130);
      swift_unknownObjectRetain();
      v4 = sub_185B67B6C();
      v5 = sub_185B6809C();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_8;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      v8 = MEMORY[0x1865FE580](a1);
      v9 = sub_185B67F1C();
      v11 = v10;
      free(v8);
      v12 = sub_185ACB2C4(v9, v11, &v32);

      *(v6 + 4) = v12;
      v13 = "non-dictionary on event stream %s";
LABEL_7:
      _os_log_impl(&dword_185AC1000, v4, v5, v13, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x1865FE2F0](v7, -1, -1);
      MEMORY[0x1865FE2F0](v6, -1, -1);
LABEL_8:

      return;
    }

    v14 = sub_185B67ECC();
    int64 = xpc_dictionary_get_int64(a1, (v14 + 32));

    if (int64 <= 1)
    {
      if (!int64)
      {
        if (qword_1ED6F4CB0 != -1)
        {
          swift_once();
        }

        v22 = sub_185B67B8C();
        __swift_project_value_buffer(v22, qword_1ED6F5130);
        swift_unknownObjectRetain();
        v23 = sub_185B67B6C();
        v24 = sub_185B680AC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v32 = v26;
          *v25 = 136315138;
          v27 = MEMORY[0x1865FE580](a1);
          v28 = sub_185B67F1C();
          v30 = v29;
          free(v27);
          v31 = sub_185ACB2C4(v28, v30, &v32);

          *(v25 + 4) = v31;
          _os_log_impl(&dword_185AC1000, v23, v24, "unexpected none event or no event type: %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v26);
          MEMORY[0x1865FE2F0](v26, -1, -1);
          MEMORY[0x1865FE2F0](v25, -1, -1);
        }

        goto LABEL_27;
      }

      if (int64 == 1)
      {
        if (xpc_dictionary_create_reply(a1))
        {
          xpc_dictionary_send_reply();
          swift_unknownObjectRelease();
        }

        goto LABEL_27;
      }

LABEL_17:
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v16 = sub_185B67B8C();
      __swift_project_value_buffer(v16, qword_1ED6F5130);
      swift_unknownObjectRetain();
      v4 = sub_185B67B6C();
      v5 = sub_185B680AC();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_8;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      v17 = MEMORY[0x1865FE580](a1);
      v18 = sub_185B67F1C();
      v20 = v19;
      free(v17);
      v21 = sub_185ACB2C4(v18, v20, &v32);

      *(v6 + 4) = v21;
      v13 = "unexpected event %s";
      goto LABEL_7;
    }

    if (int64 == 2)
    {
      sub_185B14F24(a1);
    }

    else
    {
      if (int64 != 3)
      {
        goto LABEL_17;
      }

      sub_185B15410(a1);
    }

LABEL_27:
  }
}

void sub_185B14F24(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  v3 = sub_185B67ECC();
  string = xpc_dictionary_get_string(a1, (v3 + 32));

  if (!string)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1ED6F5130);
    swift_unknownObjectRetain();
    v17 = sub_185B67B6C();
    v18 = sub_185B6809C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136446210;
      v21 = MEMORY[0x1865FE580](a1);
      v22 = sub_185B67F1C();
      v24 = v23;
      free(v21);
      v25 = sub_185ACB2C4(v22, v24, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_185AC1000, v17, v18, "no bundleID in %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = sub_185B67F1C();
  v7 = v6;
  v8 = sub_185B67ECC();
  v9 = xpc_dictionary_get_BOOL(a1, (v8 + 32));

  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1ED6F5130);

  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_185ACB2C4(v5, v7, &v33);
    *(v13 + 12) = 1024;
    *(v13 + 14) = v9;
    _os_log_impl(&dword_185AC1000, v11, v12, "set shielded event: %s shielded -> %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = reply;
    swift_unknownObjectRetain();
    sub_185B16EA0(v5, v7, v9, sub_185B17B70, v15);
    swift_unknownObjectRelease();

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  if (reply)
  {
    v26 = sub_185AD0148(4uLL, 0, 0, 302, 0xD00000000000001ALL, 0x8000000185B767C0);
    v27 = sub_185B12D28();
    v29 = v28;

    swift_unknownObjectRetain();
    sub_185B16278(v27, v29, reply);
    xpc_dictionary_send_reply();
    sub_185AE2FC8(v27, v29);
    goto LABEL_15;
  }

  oslog = sub_185B67B6C();
  v30 = sub_185B6809C();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v30, "no delegate and no reply for set shielded event? Dropping", v31, 2u);
    MEMORY[0x1865FE2F0](v31, -1, -1);
  }
}

void sub_185B15410(void *a1)
{
  reply = xpc_dictionary_create_reply(a1);
  v3 = sub_185B67ECC();
  string = xpc_dictionary_get_string(a1, (v3 + 32));

  if (!string)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1ED6F5130);
    swift_unknownObjectRetain();
    v17 = sub_185B67B6C();
    v18 = sub_185B6809C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = MEMORY[0x1865FE580](a1);
      v22 = sub_185B67F1C();
      v24 = v23;
      free(v21);
      v25 = sub_185ACB2C4(v22, v24, &v33);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_185AC1000, v17, v18, "no bundleID in %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v19, -1, -1);
    }

    goto LABEL_15;
  }

  v5 = sub_185B67F1C();
  v7 = v6;
  v8 = sub_185B67ECC();
  int64 = xpc_dictionary_get_int64(a1, (v8 + 32));

  if (int64 < 0)
  {
    __break(1u);
  }

  else if (qword_1ED6F4CB0 == -1)
  {
    goto LABEL_4;
  }

  swift_once();
LABEL_4:
  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1ED6F5130);

  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_185ACB2C4(v5, v7, &v33);
    *(v13 + 12) = 2048;
    *(v13 + 14) = int64;
    _os_log_impl(&dword_185AC1000, v11, v12, "set shieldStyle event: %s shieldStyle -> %lld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x1865FE2F0](v14, -1, -1);
    MEMORY[0x1865FE2F0](v13, -1, -1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = swift_allocObject();
    *(v15 + 16) = reply;
    swift_unknownObjectRetain();
    sub_185B17540(v5, v7, int64, sub_185B166F0, v15);
    swift_unknownObjectRelease();

LABEL_15:

    swift_unknownObjectRelease();
    return;
  }

  if (reply)
  {
    v26 = sub_185AD0148(4uLL, 0, 0, 343, 0xD00000000000001DLL, 0x8000000185B76770);
    v27 = sub_185B12D28();
    v29 = v28;

    swift_unknownObjectRetain();
    sub_185B16278(v27, v29, reply);
    xpc_dictionary_send_reply();
    sub_185AE2FC8(v27, v29);
    goto LABEL_15;
  }

  oslog = sub_185B67B6C();
  v30 = sub_185B6809C();
  if (os_log_type_enabled(oslog, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_185AC1000, oslog, v30, "no delegate and no reply for set shielded event? Dropping", v31, 2u);
    MEMORY[0x1865FE2F0](v31, -1, -1);
  }
}

void sub_185B15910(void *a1, void *a2, double a3, int8x8_t a4, uint64_t a5, const char *a6)
{
  if (a2)
  {
    if (a1)
    {
      swift_unknownObjectRetain();
      v8 = a1;
      v21 = sub_185B12D28();
      v23 = v22;
      swift_unknownObjectRetain();
      sub_185B16278(v21, v23, a2);
      sub_185AE2FC8(v21, v23);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v11 = sub_185B67B8C();
    __swift_project_value_buffer(v11, qword_1ED6F5130);
    v12 = a1;
    oslog = sub_185B67B6C();
    v13 = sub_185B6809C();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = vuzp1_s8(a4, v16).u32[0];
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD200, &qword_185B6D558);
      v18 = sub_185B67EBC();
      v20 = sub_185ACB2C4(v18, v19, &v25);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_185AC1000, oslog, v13, a6, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_185B15C9C()
{
  sub_185AD3598(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_185B15CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  MEMORY[0x1865FCFA0]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_185B67F8C();
  }

  sub_185B67FAC();
  if (!*(a1 + 16))
  {
    v4 = *a1;
    type metadata accessor for APSystemAppClientXPCEventStream();
    v5 = swift_allocObject();
    *(v5 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v5 + 24) = &off_1EF469670;
    swift_unknownObjectWeakAssign();
    v6 = v4;

    xpc_dictionary_create_empty();
    sub_185B67ECC();
    xpc_set_event();
    swift_unknownObjectRelease();

    v7 = swift_allocObject();
    swift_weakInit();
    v12[4] = sub_185B17CA0;
    v12[5] = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_185B12CC8;
    v12[3] = &block_descriptor_120;
    v8 = _Block_copy(v12);
    v9 = v6;

    v10 = sub_185B67ECC();
    xpc_set_event_stream_handler((v10 + 32), v9, v8);

    _Block_release(v8);

    *(a1 + 16) = v5;
  }
}

void sub_185B15F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_185AE7520((a1 + 8), v3);

  v5 = *(a1 + 8);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v7 = *(a1 + 8);
    }

    v6 = sub_185B6844C();
    if (v6 >= v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 >= v4)
    {
LABEL_3:
      sub_185B570B4(v4, v6);
      return;
    }
  }

  __break(1u);
}

void sub_185B15FC8(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = a1;
    v7 = a1;
  }

  dispatch_group_leave(group);
}

void sub_185B16038(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    *a3 = v5;
    return;
  }

  if (v5 < 0)
  {
    v8 = *(a1 + 8);
  }

  v6 = sub_185B6844C();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 >= 1)
  {

    if ((v5 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1865FD3E0](i, v5);
        swift_unknownObjectRelease();
        dispatch_group_enter(a2);
      }
    }

    else
    {
      do
      {
        dispatch_group_enter(a2);
        --v6;
      }

      while (v6);
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_185B1610C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_185B1618C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_185B161DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_185B16230(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_185B16248(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_185B16278(uint64_t a1, unint64_t a2, void *a3)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      v12 = sub_185B67ECC();
      v13 = swift_unknownObjectRetain_n();
      xpc_dictionary_set_data(v13, (v12 + 32), bytes, 0);
      swift_unknownObjectRelease_n();

      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    goto LABEL_7;
  }

  if (v5)
  {
    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    swift_unknownObjectRetain();
    sub_185B16464(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    result = swift_unknownObjectRelease();
    goto LABEL_9;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v6 = BYTE6(a2);
  BYTE5(bytes[1]) = BYTE5(a2);
  v7 = sub_185B67ECC();
  v8 = swift_unknownObjectRetain_n();
  xpc_dictionary_set_data(v8, (v7 + 32), bytes, v6);
  swift_unknownObjectRelease_n();

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_185B16464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_185B6783C();
  v8 = result;
  if (result)
  {
    result = sub_185B6785C();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_185B6784C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  v12 = sub_185B67ECC();
  xpc_dictionary_set_data(a4, (v12 + 32), v8, v11);
  swift_unknownObjectRelease();
}

uint64_t sub_185B16524(void *a1)
{
  v1[4] = MEMORY[0x1E69E7CC8];
  v1[2] = a1;
  sub_185B67ECC();
  v3 = a1;
  v4 = xpc_event_publisher_create();

  if (v4)
  {
    v1[3] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    v16 = sub_185B17CA8;
    v17 = v6;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_185AE0424;
    v15 = &block_descriptor_126;
    v7 = _Block_copy(&v12);
    v8 = v4;

    xpc_event_publisher_set_handler();
    _Block_release(v7);

    v9 = v1[3];
    v16 = sub_185AE04A4;
    v17 = 0;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_185ACEA8C;
    v15 = &block_descriptor_129_0;
    v10 = _Block_copy(&v12);
    v11 = v9;
    xpc_event_publisher_set_error_handler();
    _Block_release(v10);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B1672C(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_audit_token();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v3 = sub_185B67B8C();
  __swift_project_value_buffer(v3, qword_1EA8D2278);
  v4 = sub_185B67B6C();
  v5 = sub_185B680AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a2;
    *(v6 + 12) = 1024;
    swift_beginAccess();
    memset(&atoken, 0, sizeof(atoken));
    *(v6 + 14) = audit_token_to_pid(&atoken);
    _os_log_impl(&dword_185AC1000, v4, v5, "validating %llu pid %d", v6, 0x12u);
    MEMORY[0x1865FE2F0](v6, -1, -1);
  }

  swift_beginAccess();
  v7 = xpc_copy_entitlement_for_token();
  swift_endAccess();
  if (!v7)
  {
LABEL_8:
    swift_beginAccess();
    v9 = xpc_copy_entitlement_for_token();
    swift_endAccess();
    if (v9)
    {
      if (xpc_BOOL_get_value(v9))
      {
        v10 = sub_185B67B6C();
        v11 = sub_185B680AC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 134217984;
          *(v12 + 4) = a2;
          v13 = "tok %llu is entitled";
LABEL_24:
          _os_log_impl(&dword_185AC1000, v10, v11, v13, v12, 0xCu);
          MEMORY[0x1865FE2F0](v12, -1, -1);
          goto LABEL_25;
        }

        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    v14 = sub_185B67B6C();
    v15 = sub_185B680AC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&dword_185AC1000, v14, v15, "tok %llu is NOT ENTITLED!", v16, 0xCu);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    result = 0;
    goto LABEL_26;
  }

  v8 = MEMORY[0x1865FE700](v7);
  if (v8 != sub_185B67BCC())
  {
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v18 = swift_unknownObjectRetain();
  v19 = MEMORY[0x1865FE700](v18);
  if (v19 == sub_185B67BCC())
  {
    if (xpc_string_get_string_ptr(v7))
    {
      v20 = sub_185B67F1C();
      v22 = v21;
      swift_unknownObjectRelease();
      if (v20 == 0xD000000000000015 && 0x8000000185B764C0 == v22)
      {
      }

      else
      {
        v23 = sub_185B6859C();

        if ((v23 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v10 = sub_185B67B6C();
      v11 = sub_185B680AC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = a2;
        v13 = "tok %llu is SpringBoard";
        goto LABEL_24;
      }

LABEL_25:

      swift_unknownObjectRelease();
      result = 1;
LABEL_26:
      v24 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
  }

  result = sub_185B6842C();
  __break(1u);
  return result;
}

uint64_t sub_185B16B70(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1865FE700]();
  if (v4 == sub_185B67BBC())
  {
    v17 = sub_185B67C0C();
    if (xpc_dictionary_get_string(a1, v17))
    {
      v18 = sub_185B67F1C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v22 = sub_185B67B8C();
    __swift_project_value_buffer(v22, qword_1EA8D2278);

    v7 = sub_185B67B6C();
    v23 = sub_185B6808C();

    if (!os_log_type_enabled(v7, v23))
    {

      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 134218242;
    *(v24 + 4) = a2;
    *(v24 + 12) = 2080;
    if (v20)
    {
      v26 = v18;
    }

    else
    {
      v26 = 0xD000000000000010;
    }

    if (v20)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0x8000000185B76870;
    }

    v28 = sub_185ACB2C4(v26, v27, &v29);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_185AC1000, v7, v23, "Error pinging for token %llu! %s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x1865FE2F0](v25, -1, -1);
    v16 = v24;
    goto LABEL_21;
  }

  v5 = MEMORY[0x1865FE700](a1);
  if (v5 == sub_185B67BFC())
  {
    return 1;
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  swift_unknownObjectRetain();
  v7 = sub_185B67B6C();
  v8 = sub_185B6809C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v29 = v10;
    *v9 = 134218242;
    *(v9 + 4) = a2;
    *(v9 + 12) = 2080;
    v11 = MEMORY[0x1865FE580](a1);
    v12 = sub_185B67F1C();
    v14 = v13;
    free(v11);
    v15 = sub_185ACB2C4(v12, v14, &v29);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_185AC1000, v7, v8, "Bad object type in pong from %llu! %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865FE2F0](v10, -1, -1);
    v16 = v9;
LABEL_21:
    MEMORY[0x1865FE2F0](v16, -1, -1);
  }

LABEL_23:

  return 0;
}

void sub_185B16EA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v44 = a4;
  LOBYTE(v6) = a3;
  v7 = sub_185B67C9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B67CDC();
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  v16 = dispatch_group_create();
  v43 = v5;
  v17 = *(v5 + 16);
  v58 = v16;
  v61 = v16;

  os_unfair_lock_lock(v17 + 10);
  sub_185B17BAC(&v17[4], &aBlock);
  os_unfair_lock_unlock(v17 + 10);
  v18 = aBlock;

  v19 = objc_opt_self();
  v20 = sub_185B67E1C();
  v57 = [v19 applicationWithBundleIdentifier_];

  v21 = v18;
  v51 = v7;
  v50 = v8;
  v49 = v12;
  if (v18 >> 62)
  {
    goto LABEL_12;
  }

  v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    while (v22 >= 1)
    {
      v23 = 0;
      v56 = v21 & 0xC000000000000001;
      v55 = v6 & 1;
      v54 = &v65;
      v53 = v21;
      v52 = v22;
      while (1)
      {
        v24 = v56 ? MEMORY[0x1865FD3E0](v23) : *(v21 + 8 * v23 + 32);
        v25 = v24;
        v26 = swift_allocObject();
        v18 = v58;
        *(v26 + 16) = v59;
        *(v26 + 24) = v18;
        v60 = *&v25[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
        v6 = swift_allocObject();
        v27 = v57;
        *(v6 + 16) = v25;
        *(v6 + 24) = v27;
        *(v6 + 32) = v55;
        *(v6 + 40) = sub_185B17BC8;
        *(v6 + 48) = v26;
        v28 = swift_allocObject();
        *(v28 + 16) = sub_185B17BD0;
        *(v28 + 24) = v6;
        v67 = sub_185AE7C88;
        v68 = v28;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_185AD94F4;
        v66 = &block_descriptor_83;
        v29 = _Block_copy(&aBlock);

        v30 = v18;
        v31 = v25;
        v32 = v27;

        dispatch_sync(v60, v29);

        _Block_release(v29);
        LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

        if (v26)
        {
          break;
        }

        ++v23;
        v21 = v53;
        if (v52 == v23)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      v42 = v21;
      v22 = sub_185B6844C();
      v21 = v42;
      if (!v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:

    v33 = *(v43 + 16);

    os_unfair_lock_lock((v33 + 40));
    v34 = *(v33 + 16);
    os_unfair_lock_unlock((v33 + 40));

    v35 = swift_allocObject();
    v36 = v45;
    v35[2] = v44;
    v35[3] = v36;
    v35[4] = v59;
    v67 = sub_185B17BE0;
    v68 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = sub_185ACA0E8;
    v66 = &block_descriptor_89;
    v37 = _Block_copy(&aBlock);

    v38 = v46;
    sub_185B67CBC();
    v62 = MEMORY[0x1E69E7CC0];
    sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v39 = v48;
    v40 = v51;
    sub_185B682CC();
    v41 = v58;
    sub_185B680CC();
    _Block_release(v37);

    (*(v50 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
  }
}

void sub_185B17540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v48 = a4;
  v60 = a3;
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B67CDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v52 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v17 = dispatch_group_create();
  v47 = v5;
  v18 = *(v5 + 16);
  v50 = v17;
  v62 = v17;

  os_unfair_lock_lock(v18 + 10);
  sub_185B17D8C(&v18[4], &aBlock);
  os_unfair_lock_unlock(v18 + 10);
  v54 = v11;
  v19 = aBlock;

  v20 = objc_opt_self();
  v21 = sub_185B67E1C();
  v61 = [v20 applicationWithBundleIdentifier_];

  v22 = v19;
  v56 = v7;
  v57 = v6;
  v55 = v12;
  v53 = v13;
  if (v19 >> 62)
  {
    goto LABEL_12;
  }

  v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    while (v23 >= 1)
    {
      v24 = 0;
      v58 = &v66;
      v59 = v22 & 0xC000000000000001;
      v25 = v22;
      v26 = v61;
      while (1)
      {
        v27 = v59 ? MEMORY[0x1865FD3E0](v24) : *(v22 + 8 * v24 + 32);
        v28 = v27;
        v29 = *&v27[OBJC_IVAR___APSystemAppOutlet_callbackQueue];
        v30 = swift_allocObject();
        v30[2] = v26;
        v30[3] = v28;
        v30[4] = v60;
        v31 = swift_allocObject();
        *(v31 + 16) = sub_185B17B64;
        *(v31 + 24) = v30;
        v68 = sub_185AE7934;
        v69 = v31;
        aBlock = MEMORY[0x1E69E9820];
        v65 = 1107296256;
        v66 = sub_185AD94F4;
        v67 = &block_descriptor_11;
        v32 = _Block_copy(&aBlock);
        v33 = v26;
        v34 = v28;

        dispatch_sync(v29, v32);

        _Block_release(v32);
        LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

        if (v32)
        {
          break;
        }

        ++v24;
        v22 = v25;
        if (v23 == v24)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      v44 = v22;
      v45 = sub_185B6844C();
      v22 = v44;
      v23 = v45;
      if (!v45)
      {
        goto LABEL_10;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_10:

    v35 = *(v47 + 16);

    os_unfair_lock_lock((v35 + 40));
    v36 = *(v35 + 16);
    os_unfair_lock_unlock((v35 + 40));

    v37 = swift_allocObject();
    v38 = v49;
    v37[2] = v48;
    v37[3] = v38;
    v37[4] = v51;
    v68 = sub_185B17DD0;
    v69 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v65 = 1107296256;
    v66 = sub_185ACA0E8;
    v67 = &block_descriptor_66;
    v39 = _Block_copy(&aBlock);

    v40 = v52;
    sub_185B67CBC();
    v63 = MEMORY[0x1E69E7CC0];
    sub_185AC72E0(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC73B8(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    v41 = v54;
    v42 = v57;
    sub_185B682CC();
    v43 = v50;
    sub_185B680CC();
    _Block_release(v39);

    (*(v56 + 8))(v41, v42);
    (*(v53 + 8))(v40, v55);
  }
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t objectdestroy_62Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_185B17C88(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_185B13100(a1);
}

uint64_t sub_185B17C90(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So13OS_xpc_object_pIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_185B17CC8(uint64_t *a1, int a2)
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

uint64_t sub_185B17D10(uint64_t result, int a2, int a3)
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

uint64_t sub_185B17F54(void *a1, uint64_t a2, uint64_t a3, const void *a4, void (*a5)(char *, id, void *))
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a4);
  sub_185B67ADC();
  _Block_copy(v14);
  v15 = a1;
  a5(v13, v15, v14);
  _Block_release(v14);
  _Block_release(v14);

  return (*(v9 + 8))(v13, v8);
}

id sub_185B181B8()
{
  result = APGetExtensionInfoServiceInterface();
  qword_1EA8D22F8 = result;
  return result;
}

id sub_185B18298()
{
  if (qword_1EA8CBB28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D22F8;

  return v0;
}

id sub_185B1833C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B183C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APExtensionInfoService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection22APExtensionInfoService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B18440(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for APExtensionInfoClient();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469B78;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_connection] = a1;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_185B18534(uint64_t a1, uint64_t a2)
{
  result = sub_185B18E98(&qword_1EA8CBB10, a2, type metadata accessor for APExtensionInfoClient);
  *(a1 + 8) = result;
  return result;
}

void sub_185B1858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25 = a2;
  v26 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_185B67AFC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v24 = a1;
  v15(v12, a1, v13);
  v16 = *(v14 + 56);
  v16(v12, 0, 1, v13);
  v17 = *(a4 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_connection);
  v27 = a5;
  _Block_copy(a5);
  LODWORD(v17) = [v17 processIdentifier];
  v18 = a4 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_185B1DEAC(0, 0, v12, v17, Strong, *(v18 + 8), v32);
  swift_unknownObjectRelease();
  sub_185ACF5CC(v12, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (*(&v32[0] + 1))
  {
    v33[2] = v32[2];
    v33[3] = v32[3];
    v33[4] = v32[4];
    v33[5] = v32[5];
    v33[0] = v32[0];
    v33[1] = v32[1];
    v15(v12, v24, v13);
    v16(v12, 0, 1, v13);
    v20 = sub_185B1E6B4(0, 0, v12, v25, v26);
    v22 = v21;
    sub_185ACF5CC(v12, &unk_1EA8CD9A0, &unk_185B6C2C0);
    memset(v28, 0, sizeof(v28));
    LOBYTE(v29) = -2;
    *(&v29 + 1) = v20;
    *&v30 = v22;
    WORD4(v30) = 1;
    v31 = v33[0];
    v34[2] = v29;
    v34[3] = v30;
    memset(v34, 0, 32);
    v34[4] = v33[0];
    v23 = v27;
    _Block_copy(v27);

    sub_185B031F8(v34, v33, v23);
    _Block_release(v23);
    sub_185AF6A24(v28);
    sub_185AF6A78(v33);
  }

  else
  {
    sub_185ACF5CC(v32, &qword_1EA8CD008, &unk_185B6CA30);
    v23 = v27;
    (*(v27 + 2))(v27, 1, 0);
  }

  _Block_release(v23);
}

uint64_t sub_185B1886C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185AE8F94(a1);
  if (v13)
  {
    v14 = v13;
    v15 = v12;
    v16 = a2 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v33, ObjectType, v17);
      swift_unknownObjectRelease();
      sub_185AC66F8(v33, v34);
      v19 = v35;
      v20 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v21 = (*(v20 + 64))(v15, v14, v19, v20);

      (*(a3 + 16))(a3, (v21 & 1) == 0, 0);
      return __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {

      v32 = *(a3 + 16);

      return v32(a3, 1, 0);
    }
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v23 = sub_185B67B8C();
    __swift_project_value_buffer(v23, qword_1EA8D2278);
    (*(v7 + 16))(v11, a1, v6);
    v24 = sub_185B67B6C();
    v25 = sub_185B680AC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v34[0] = v27;
      *v26 = 136446210;
      sub_185B18E98(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
      v28 = sub_185B6856C();
      v30 = v29;
      (*(v7 + 8))(v11, v6);
      v31 = sub_185ACB2C4(v28, v30, v34);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_185AC1000, v24, v25, "no containing bundle record for extension uuid %{public}s assuming unlocked", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x1865FE2F0](v27, -1, -1);
      MEMORY[0x1865FE2F0](v26, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    return (*(a3 + 16))(a3, 0, 0);
  }
}

void sub_185B18C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_185AE948C(a1);
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    v10 = sub_185AE8F94(a1);
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      v14 = a2 + OBJC_IVAR____TtC13AppProtection21APExtensionInfoClient_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v28, ObjectType, v15);
        swift_unknownObjectRelease();
        v17 = v29;
        v18 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v19 = (*(v18 + 24))(v17, v18);
        v20 = sub_185AC3A7C(v13, v12, v19);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        if (v20)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v14 + 8);
        v22 = swift_getObjectType();
        (*(v21 + 8))(v28, v22, v21);
        swift_unknownObjectRelease();
        v23 = v29;
        v24 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v25 = (*(v24 + 40))(v23, v24);
        sub_185AC3A7C(v9, v8, v25);

        __swift_destroy_boxed_opaque_existential_0Tm(v28);
LABEL_14:
        v26 = sub_185B67FBC();
        (*(a3 + 16))(a3, v26, 0);

        return;
      }

LABEL_13:

      goto LABEL_14;
    }
  }

  sub_185AD0C64();
  v27 = sub_185B6825C();
  (*(a3 + 16))(a3, v27, 0);
}

uint64_t sub_185B18E98(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_185B18EE0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_185B683DC();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    v6 = sub_185B682DC();
    v7 = *(v1 + 36);
    result = objc_opt_self();
    v8 = 0;
    v24 = v1 + 64;
    v25 = result;
    v26 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v27 = v8;
      v11 = (*(v1 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_185B67E1C();
      v15 = [v25 applicationWithBundleIdentifier_];

      sub_185B683BC();
      v16 = *(v28 + 16);
      sub_185B683EC();
      v1 = v26;
      sub_185B683FC();
      result = sub_185B683CC();
      v9 = 1 << *(v26 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v17 = *(v4 + 8 * v10);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_185B19C34(v6, v7, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = sub_185B19C34(v6, v7, 0);
      }

LABEL_4:
      v8 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v2)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_185B1919C()
{
  sub_185B19524(*v0);
  v2 = v1;

  *v0 = v2;
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
    v10 = v8;
LABEL_16:
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v2 + 48) + 8 * v14);
    sub_185ADF8F0(*(v2 + 56) + 40 * v14, v25);
    *&v26 = v15;
    sub_185AC66F8(v25, &v26 + 8);
    v16 = v15;
LABEL_17:
    v29[0] = v26;
    v29[1] = v27;
    v29[2] = v28;
    v17 = v26;
    if (!v26)
    {

      return v9;
    }

    sub_185AC66F8((v29 + 8), &v26);
    v18 = *(&v27 + 1);
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v20 = (*(v19 + 8))(v18, v19);
    if (v20)
    {
      v21 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_185B3CE08(0, v9[2] + 1, 1, v9);
      }

      v23 = v9[2];
      v22 = v9[3];
      if (v23 >= v22 >> 1)
      {
        v9 = sub_185B3CE08((v22 > 1), v23 + 1, 1, v9);
      }

      v9[2] = v23 + 1;
      v24 = &v9[2 * v23];
      v24[4] = v17;
      v24[5] = v21;
    }

    else
    {
    }

    result = __swift_destroy_boxed_opaque_existential_0Tm(&v26);
  }

  if (v6 <= v8 + 1)
  {
    v11 = v8 + 1;
  }

  else
  {
    v11 = v6;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      v5 = 0;
      v27 = 0u;
      v28 = 0u;
      v8 = v12;
      v26 = 0u;
      goto LABEL_17;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B193C8(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC13AppProtection29DefaultSubjectMonitorRegistry_mutableState);

  os_unfair_lock_lock(v3 + 6);
  v4 = sub_185B1919C();
  os_unfair_lock_unlock(v3 + 6);

  sub_185B198D0(a1, v4);
}

id sub_185B19490(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_185B19524(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_185B19858(v8, v4, a1);
      MEMORY[0x1865FE2F0](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00]();
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_185B19684(v6, v4, a1);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_185B19684(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v22 = v12;
    sub_185ADF8F0(*(a3 + 56) + 40 * v12, v28);
    v24 = v13;
    sub_185ADF8F0(v28, v25);
    v15 = v26;
    v14 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v16 = *(v14 + 8);
    v17 = v13;
    if (v16(v15, v14))
    {
      swift_unknownObjectRelease();
      sub_185B19C40(&v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);

      *(a1 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v18 = __OFADD__(v21++, 1);
      v7 = v29;
      if (v18)
      {
        __break(1u);
LABEL_16:
        sub_185B3F5C8(a1, a2, v21, a3);
        return;
      }
    }

    else
    {
      sub_185B19C40(&v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);

      v7 = v29;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_16;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_185B19858(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_185B19684(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_185B198D0(_BYTE *a1, uint64_t a2)
{
  v4 = a1[49] ^ a1[48];
  v5 = sub_185B665E4();
  v6 = sub_185B18EE0(v5);

  v22 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = [objc_opt_self() lockedMetaSubject];
    MEMORY[0x1865FCFA0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_185B67F8C();
    }

    sub_185B67FAC();
    v22 = v23;
  }

  if ((a1[51] ^ a1[50]))
  {
    v8 = [objc_opt_self() hiddenMetaSubject];
    MEMORY[0x1865FCFA0]();
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_185B67F8C();
    }

    sub_185B67FAC();
    v22 = v23;
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_subjectMask;
      if (*(v11 + OBJC_IVAR____TtC13AppProtection26DefaultSubjectMonitorToken_subjectMask))
      {
        if (v6 >> 62)
        {
          if (sub_185B6844C())
          {
            type metadata accessor for APSubject(0);
            v16 = v11;
            swift_unknownObjectRetain();

            sub_185B6843C();
LABEL_17:

            type metadata accessor for APSubject(0);
            v15 = sub_185B67F5C();

            [v12 appProtectionSubjectsChanged:v15 forSubscription:v11];

            if ((*(v11 + v13) & 2) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_22;
          }
        }

        else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          swift_bridgeObjectRetain_n();
          v14 = v11;
          swift_unknownObjectRetain();
          sub_185B685AC();
          type metadata accessor for APSubject(0);
          goto LABEL_17;
        }
      }

      v17 = v11;
      swift_unknownObjectRetain();
      if ((*(v11 + v13) & 2) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      if (v22 >> 62)
      {
        if (sub_185B6844C())
        {
LABEL_24:
          type metadata accessor for APSubject(0);
          v18 = sub_185B67F5C();
          [v12 appProtectionSubjectsChanged:v18 forSubscription:v11];
          swift_unknownObjectRelease();

          goto LABEL_12;
        }
      }

      else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

LABEL_11:

      swift_unknownObjectRelease();
LABEL_12:
      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_185B19C34(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_185B19C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD290, &qword_185B6D740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_185B19CB8()
{
  v1 = 0x55556E696769726FLL;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_185B19D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_185B1C2DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_185B19D74(uint64_t a1)
{
  v2 = sub_185B1CD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B19DB0(uint64_t a1)
{
  v2 = sub_185B1CD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B19DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_185B67AFC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD2A8, &qword_185B6D8A8);
  v28 = *(v31 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31, v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Backup(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B1CD28();
  sub_185B686EC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v19 = v28;
  v18 = v29;
  v25 = v16;
  v26 = a1;
  LOBYTE(v33) = 0;
  sub_185B1CCE0(&qword_1EA8CBFD8, MEMORY[0x1E69695A8]);
  v21 = v30;
  v20 = v31;
  sub_185B684BC();
  (*(v18 + 32))(v25, v21, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  v32 = 1;
  v30 = sub_185B1CE3C(&qword_1EA8CB688);
  sub_185B684BC();
  *&v25[*(v12 + 20)] = v33;
  v32 = 2;
  sub_185B684BC();
  (*(v19 + 8))(v11, v20);
  v22 = *(v12 + 24);
  v23 = v25;
  *&v25[v22] = v33;
  sub_185B1CD7C(v23, v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return sub_185B1CDE0(v23);
}

uint64_t sub_185B1A208(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2C0, &qword_185B6D8B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B1CD28();
  sub_185B686FC();
  LOBYTE(v16) = 0;
  sub_185B67AFC();
  sub_185B1CCE0(&unk_1EA8CBFE0, MEMORY[0x1E69695A8]);
  sub_185B6851C();
  if (!v2)
  {
    v12 = type metadata accessor for Backup(0);
    v16 = *(v3 + *(v12 + 20));
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
    sub_185B1CE3C(&qword_1EA8CD2D0);
    sub_185B6851C();
    v16 = *(v3 + *(v12 + 24));
    v15 = 2;
    sub_185B6851C();
    LOBYTE(v16) = 3;
    sub_185B6850C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_185B1A484@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_185B678DC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_185B678CC();
  v5 = type metadata accessor for Backup(0);
  sub_185B1CCE0(&unk_1EA8CB780, type metadata accessor for Backup);
  sub_185B678BC();

  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_185B1A6D8()
{
  sub_185B6836C();

  v1 = type metadata accessor for Backup(0);
  v2 = *(v0 + *(v1 + 20));
  v3 = sub_185B67FEC();
  MEMORY[0x1865FCF60](v3);

  MEMORY[0x1865FCF60](0x6E6564646968202CLL, 0xEA0000000000203ALL);
  v4 = *(v0 + *(v1 + 24));
  v5 = sub_185B67FEC();
  MEMORY[0x1865FCF60](v5);

  MEMORY[0x1865FCF60](0x6E696769726F202CLL, 0xEA0000000000203ALL);
  sub_185B67AFC();
  sub_185B1CCE0(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
  v6 = sub_185B6856C();
  MEMORY[0x1865FCF60](v6);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0x6C2870756B636142;
}

uint64_t sub_185B1A874@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B226C4(v9);
  v10 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185ACC524(sub_185ACAF24, 0);
  v12 = v11;
  v13 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185ACC524(sub_185ACB234, 0);
  v16 = v15;
  (*(v5 + 32))(a2, v9, v4);
  v17 = type metadata accessor for Backup(0);
  *(a2 + *(v17 + 20)) = v12;
  *(a2 + *(v17 + 24)) = v16;
  return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
}

uint64_t sub_185B1ABCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction);
    v2 = result;
    os_unfair_lock_lock((v1 + 24));
    v3 = *(v1 + 16);
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
    sub_185B1ACF8(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_185B1AC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction);
  os_unfair_lock_lock((v1 + 24));
  if (!*(v1 + 16))
  {
    *(v1 + 16) = os_transaction_create();
  }

  os_unfair_lock_unlock((v1 + 24));
  v2 = *(*(v0 + 24) + OBJC_IVAR____TtC13AppProtection15SaturatingTimer_state);
  os_unfair_lock_lock(v2 + 7);
  sub_185ADF7C8(&v2[4]);

  os_unfair_lock_unlock(v2 + 7);
}

uint64_t sub_185B1ACF8(uint64_t a1)
{
  v3 = sub_185B6795C();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_185B67A0C();
  v49 = *(v52 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Backup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v25 = *(a1 + 32);
  v27 = &v44 - v26;
  sub_185B6810C();
  sub_185B1CF38(v27, v23);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_185ACF5CC(v27, &unk_1EA8CD2D8, &qword_185B6D8C0);
    return sub_185ACF5CC(v23, &unk_1EA8CD2D8, &qword_185B6D8C0);
  }

  v46 = v27;
  sub_185B1CEA8(v23, v17);
  v28 = sub_185B6790C();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_185B678FC();
  sub_185B1CCE0(&qword_1EA8CD2A0, type metadata accessor for Backup);
  v31 = sub_185B678EC();
  if (!v1)
  {
    v33 = v31;
    v34 = v32;
    v45 = v17;

    v35 = v52;
    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v35, qword_1EA8CBAF8);
    v50 = 0xD000000000000019;
    v51 = 0x8000000185B76B30;
    v37 = v47;
    v36 = v48;
    (*(v47 + 104))(v7, *MEMORY[0x1E6968F70], v48);
    sub_185B1CC8C();
    sub_185B679FC();
    (*(v37 + 8))(v7, v36);
    sub_185B67A6C();
    (*(v49 + 8))(v11, v35);
    sub_185AE2FC8(v33, v34);
    v38 = v45;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v39 = sub_185B67B8C();
    __swift_project_value_buffer(v39, qword_1EA8D2278);
    v40 = sub_185B67B6C();
    v41 = sub_185B680AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_185AC1000, v40, v41, "Wrote backup.", v42, 2u);
      MEMORY[0x1865FE2F0](v42, -1, -1);
    }

    sub_185B1CDE0(v38);
    v23 = v46;
    return sub_185ACF5CC(v23, &unk_1EA8CD2D8, &qword_185B6D8C0);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_185B1B3A0@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v1 = sub_185B67AFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v103 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v98 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v111 = &v98 - v13;
  v14 = type metadata accessor for Backup(0);
  v118 = *(v14 - 8);
  v15 = *(v118 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v100 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v104 = &v98 - v20;
  v21 = sub_185B6795C();
  v115 = *(v21 - 8);
  v116 = v21;
  v22 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_185B67A0C();
  v114 = *(v117 - 8);
  v26 = *(v114 + 64);
  v28 = MEMORY[0x1EEE9AC00](v117, v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v109 = &v98 - v32;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v33 = sub_185B67B8C();
  v110 = __swift_project_value_buffer(v33, qword_1EA8D2278);
  v34 = sub_185B67B6C();
  v35 = sub_185B680AC();
  v36 = os_log_type_enabled(v34, v35);
  v37 = 0x1EA8CB000uLL;
  v38 = MEMORY[0x1E6968F70];
  v113 = v14;
  v102 = v1;
  v101 = v2;
  v99 = v9;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v119[0] = v108;
    *v39 = 136315138;
    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    v40 = v117;
    __swift_project_value_buffer(v117, qword_1EA8CBAF8);
    v120 = 0xD000000000000019;
    v121 = 0x8000000185B76B30;
    v41 = *v38;
    v43 = v115;
    v42 = v116;
    (*(v115 + 104))(v25, v41, v116);
    sub_185B1CC8C();
    v44 = v109;
    sub_185B679FC();
    (*(v43 + 8))(v25, v42);
    sub_185B1CCE0(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0]);
    v45 = sub_185B6856C();
    v47 = v46;
    (*(v114 + 8))(v44, v40);
    v48 = sub_185ACB2C4(v45, v47, v119);

    *(v39 + 4) = v48;
    _os_log_impl(&dword_185AC1000, v34, v35, "Checking for remote backup info in %s", v39, 0xCu);
    v49 = v108;
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
    MEMORY[0x1865FE2F0](v49, -1, -1);
    MEMORY[0x1865FE2F0](v39, -1, -1);

    v37 = 0x1EA8CB000;
  }

  else
  {
  }

  if (*(v37 + 2800) != -1)
  {
    swift_once();
  }

  v50 = v117;
  __swift_project_value_buffer(v117, qword_1EA8CBAF8);
  v120 = 0xD000000000000019;
  v121 = 0x8000000185B76B30;
  v108 = 0x8000000185B76B30;
  v52 = v115;
  v51 = v116;
  v53 = *(v115 + 104);
  v107 = *MEMORY[0x1E6968F70];
  v106 = v53;
  v53(v25);
  v105 = sub_185B1CC8C();
  sub_185B679FC();
  v115 = *(v52 + 8);
  (v115)(v25, v51);
  v54 = sub_185B67A1C();
  v56 = v55;
  v114 = *(v114 + 8);
  (v114)(v30, v50);
  v57 = v111;
  sub_185B1A484(v111);
  v58 = v54;
  v59 = v113;
  sub_185AE2FC8(v58, v56);
  if ((*(v118 + 48))(v57, 1, v59) == 1)
  {
    sub_185ACF5CC(v57, &unk_1EA8CD2D8, &qword_185B6D8C0);
    v60 = sub_185B67B6C();
    v61 = sub_185B680AC();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v119[0] = v63;
      *v62 = 136446210;
      v120 = 0xD000000000000019;
      v121 = v108;
      v64 = v116;
      v106(v25, v107, v116);
      v65 = v109;
      sub_185B679FC();
      (v115)(v25, v64);
      sub_185B1CCE0(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0]);
      v66 = v117;
      v67 = sub_185B6856C();
      v69 = v68;
      (v114)(v65, v66);
      v70 = sub_185ACB2C4(v67, v69, v119);

      *(v62 + 4) = v70;
      _os_log_impl(&dword_185AC1000, v60, v61, "No backup at %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      v71 = v63;
      v59 = v113;
      MEMORY[0x1865FE2F0](v71, -1, -1);
      MEMORY[0x1865FE2F0](v62, -1, -1);
    }

    return (*(v118 + 56))(v112, 1, 1, v59);
  }

  else
  {
    v73 = v57;
    v74 = v104;
    sub_185B1CEA8(v73, v104);
    v75 = v99;
    sub_185B226C4(v99);
    v76 = v100;
    sub_185B1CD7C(v74, v100);
    v77 = v101;
    v79 = v102;
    v78 = v103;
    (*(v101 + 16))(v103, v75, v102);
    v80 = sub_185B67B6C();
    v81 = sub_185B680AC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v120 = v117;
      *v82 = 136446466;
      sub_185B1CCE0(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
      v83 = sub_185B6856C();
      v85 = v84;
      sub_185B1CDE0(v76);
      v86 = sub_185ACB2C4(v83, v85, &v120);

      *(v82 + 4) = v86;
      *(v82 + 12) = 2082;
      v87 = v103;
      v88 = sub_185B6856C();
      v90 = v89;
      v91 = *(v77 + 8);
      v91(v87, v79);
      v92 = sub_185ACB2C4(v88, v90, &v120);

      *(v82 + 14) = v92;
      _os_log_impl(&dword_185AC1000, v80, v81, "Backup origin UUID is %{public}s, container instance UUID is %{public}s", v82, 0x16u);
      v93 = v117;
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v93, -1, -1);
      v94 = v82;
      v74 = v104;
      MEMORY[0x1865FE2F0](v94, -1, -1);
    }

    else
    {

      v91 = *(v77 + 8);
      v91(v78, v79);
      sub_185B1CDE0(v76);
    }

    sub_185B1CCE0(&qword_1ED6F45C0, MEMORY[0x1E69695A8]);
    v95 = sub_185B67DEC();
    v91(v75, v79);
    v96 = (v118 + 56);
    if (v95)
    {
      sub_185B1CDE0(v74);
      return (*v96)(v112, 1, 1, v113);
    }

    else
    {
      v97 = v112;
      sub_185B1CEA8(v74, v112);
      return (*v96)(v97, 0, 1, v113);
    }
  }
}

uint64_t sub_185B1BF64()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v2 = OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_originUUID;
  v3 = sub_185B67AFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC13AppProtection27ContainerBasedBackupManager_transaction);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_185B1C058()
{
  result = sub_185B67AFC();
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

uint64_t sub_185B1C158(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_185B1C190()
{
  sub_185B67AFC();
  if (v0 <= 0x3F)
  {
    sub_185B1C214();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_185B1C214()
{
  if (!qword_1EA8CB690)
  {
    v0 = sub_185B6802C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA8CB690);
    }
  }
}

uint64_t sub_185B1C2DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55556E696769726FLL && a2 == 0xEA00000000004449;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000185B76B70 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000185B76B90 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_185B6859C();

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

id sub_185B1C458()
{
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  if (qword_1EA8CBAF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EA8CBAF8);
  v16[0] = 0xD000000000000019;
  v16[1] = 0x8000000185B76B30;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v1 + 8))(v5, v0);
  sub_185B679DC();
  (*(v7 + 8))(v11, v6);
  v13 = sub_185B67E1C();

  v14 = [v12 fileExistsAtPath_];

  return v14;
}

uint64_t sub_185B1C6CC()
{
  v1 = sub_185B6795C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B67A0C();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_185B6790C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_185B678FC();
  type metadata accessor for Backup(0);
  sub_185B1CCE0(&qword_1EA8CD2A0, type metadata accessor for Backup);
  v15 = sub_185B678EC();
  if (v0)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v17 = v15;
    v18 = v16;

    if (qword_1EA8CBAF0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v7, qword_1EA8CBAF8);
    v20[0] = 0xD000000000000019;
    v20[1] = 0x8000000185B76B30;
    (*(v2 + 104))(v6, *MEMORY[0x1E6968F70], v1);
    sub_185B1CC8C();
    sub_185B679FC();
    (*(v2 + 8))(v6, v1);
    sub_185B67A6C();
    (*(v21 + 8))(v11, v7);
    return sub_185AE2FC8(v17, v18);
  }

  return result;
}

id sub_185B1C9C4()
{
  v19[2] = *MEMORY[0x1E69E9840];
  v0 = sub_185B6795C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67A0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultManager];
  if (qword_1EA8CBAF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EA8CBAF8);
  v19[0] = 0xD000000000000019;
  v19[1] = 0x8000000185B76B30;
  (*(v1 + 104))(v5, *MEMORY[0x1E6968F70], v0);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v1 + 8))(v5, v0);
  v13 = sub_185B6799C();
  (*(v7 + 8))(v11, v6);
  v19[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v19];

  if (v14)
  {
    result = v19[0];
  }

  else
  {
    v16 = v19[0];
    sub_185B6792C();

    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_185B1CC8C()
{
  result = qword_1EA8CB6D8;
  if (!qword_1EA8CB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6D8);
  }

  return result;
}

uint64_t sub_185B1CCE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_185B1CD28()
{
  result = qword_1EA8CB7A0;
  if (!qword_1EA8CB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB7A0);
  }

  return result;
}

uint64_t sub_185B1CD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Backup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B1CDE0(uint64_t a1)
{
  v2 = type metadata accessor for Backup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B1CE3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B1CEA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Backup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B1CF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2D8, &qword_185B6D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Backup.BackupCodingKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Backup.BackupCodingKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_185B1D0FC()
{
  result = qword_1EA8CD2E8;
  if (!qword_1EA8CD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD2E8);
  }

  return result;
}

unint64_t sub_185B1D154()
{
  result = qword_1EA8CB790;
  if (!qword_1EA8CB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB790);
  }

  return result;
}

unint64_t sub_185B1D1AC()
{
  result = qword_1EA8CB798;
  if (!qword_1EA8CB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB798);
  }

  return result;
}

void sub_185B1D230(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id sub_185B1D2AC()
{
  result = APGetMaintenanceServiceInterface();
  qword_1EA8D2310 = result;
  return result;
}

id sub_185B1D350()
{
  if (qword_1EA8CBBE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2310;

  return v0;
}

id sub_185B1D3F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B1D49C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APMaintenanceService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B1D518()
{
  v1 = *v0;
  v2 = type metadata accessor for APMaintenanceClient();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13AppProtection19APMaintenanceClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469D88;
  swift_unknownObjectWeakAssign();
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_185B1D598(uint64_t a1)
{
  result = sub_185B1D5DC(&qword_1EA8CBBD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B1D5DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APMaintenanceClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B1D61C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy, v11);
    swift_unknownObjectRelease();
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 120))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v6 = sub_185B67B8C();
  __swift_project_value_buffer(v6, qword_1EA8D2278);
  v7 = sub_185B67B6C();
  v8 = sub_185B680AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_185AC1000, v7, v8, "all accesses cleared.", v9, 2u);
    MEMORY[0x1865FE2F0](v9, -1, -1);
  }

  return (*(a2 + 16))(a2, 0);
}

void sub_185B1D8E0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = (Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy);
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection20APMaintenanceService_policy, v37);
    v5 = v38;
    v6 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v6 + 24))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v7 = v38;
    v8 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v8 + 16))(v7, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v9 = v38;
    v10 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    sub_185ADF8F0(v4, v37);
    v11 = v38;
    v12 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v34 = (*(v12 + 128))(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    v14 = objc_allocWithZone(APClientState);
    v15 = sub_185B67FCC();

    v16 = sub_185B67FCC();

    v17 = sub_185B67FCC();

    v18 = [v14 initWithLockedAppBundleIdentifiers:v15 hiddenAppBundleIdentifiers:v16 effectivelyLockedBundleIdentifiers:v17];

    v19 = v4[3];
    v20 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v19);
    v21 = (*(v20 + 184))(v19, v20);
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 isFeatureEnabled];

    v24 = objc_allocWithZone(APStateDump);
    v25 = _s17AccessListWrapperCMa();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357017AccessListWrapper_accesses] = v34;
    v36.receiver = v26;
    v36.super_class = v25;
    v27 = v18;
    v28 = objc_msgSendSuper2(&v36, sel_init);
    v29 = _s19AssertionMapWrapperCMa();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtCE13AppProtectionCSo11APStateDumpP33_08AD371E34EDC7245D13D99B4228357019AssertionMapWrapper_authAssertions] = v21;
    v35.receiver = v30;
    v35.super_class = v29;
    v31 = objc_msgSendSuper2(&v35, sel_init);
    v32 = [v24 initWithState:v27 accesses:v28 authAssertions:v31 dtoEnabled:v23];

    (*(a2 + 16))(a2, v32, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
    v33 = sub_185B6791C();
    (*(a2 + 16))(a2, 0, v33);
  }
}

uint64_t sub_185B1DD70()
{
  result = sub_185B1DD94();
  byte_1EA8D22E0 = result & 1;
  return result;
}

uint64_t sub_185B1DD94()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [objc_opt_self() processInfo];
    v2 = [v1 environment];

    v3 = sub_185B67D8C();
    if (*(v3 + 16))
    {
      v4 = sub_185AC9F40(0xD000000000000010, 0x8000000185B76CC0);
      if (v5)
      {
        v6 = (*(v3 + 56) + 16 * v4);
        v8 = *v6;
        v7 = v6[1];
      }
    }

    v9 = sub_185B67EFC();

    return v9 > 0;
  }

  return result;
}

double sub_185B1DEAC@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, _DWORD *a6@<X5>, uint64_t a7@<X8>)
{
  v79 = a6;
  v80 = a5;
  v78 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v72 - v14;
  v16 = sub_185B67AFC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v24, v27);
  v29 = &v72 - v28;
  if (a2)
  {
    v30 = 0x8000000185B75730;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v31 = 0xD000000000000013;
    v32 = sub_185B67B8C();
    __swift_project_value_buffer(v32, qword_1EA8D2278);

    v33 = sub_185B67B6C();
    v34 = sub_185B680AC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v82[0] = v36;
      *v35 = 136446466;
      *(v35 + 4) = sub_185ACB2C4(a1, a2, v82);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_185ACB2C4(0xD000000000000013, 0x8000000185B75730, v82);
      _os_log_impl(&dword_185AC1000, v33, v34, "Authenticating for viewSubject %{public}s inside %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v36, -1, -1);
      MEMORY[0x1865FE2F0](v35, -1, -1);
    }

    v37 = 0;
    v38 = 0;
  }

  else
  {
    sub_185AE7B2C(a3, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_185ACF5CC(v15, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v37 = 0;
      v38 = 0;
      v31 = 0;
      v30 = 0;
    }

    else
    {
      (*(v17 + 32))(v29, v15, v16);
      v37 = sub_185AE948C(v29);
      v38 = v41;
      v77 = sub_185AE8F94(v29);
      v30 = v42;
      if (!v38 || !v42)
      {

        v56 = v17;
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v57 = sub_185B67B8C();
        __swift_project_value_buffer(v57, qword_1EA8D2278);
        (*(v17 + 16))(v22, v29, v16);
        v58 = sub_185B67B6C();
        v59 = sub_185B680AC();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v79 = v60;
          v80 = swift_slowAlloc();
          *&v82[0] = v80;
          *v60 = 136446210;
          sub_185ACA328(&qword_1ED6F4640);
          v61 = sub_185B6856C();
          v63 = v62;
          v64 = *(v56 + 8);
          v64(v22, v16);
          v65 = sub_185ACB2C4(v61, v63, v82);

          v66 = v79;
          *(v79 + 1) = v65;
          v67 = v59;
          v68 = v66;
          _os_log_impl(&dword_185AC1000, v58, v67, "no containing bundle record for extension uuid %{public}s", v66, 0xCu);
          v69 = v80;
          __swift_destroy_boxed_opaque_existential_0Tm(v80);
          MEMORY[0x1865FE2F0](v69, -1, -1);
          MEMORY[0x1865FE2F0](v68, -1, -1);

          v64(v29, v16);
        }

        else
        {

          v70 = *(v56 + 8);
          v70(v22, v16);
          v70(v29, v16);
        }

        goto LABEL_15;
      }

      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v43 = sub_185B67B8C();
      __swift_project_value_buffer(v43, qword_1EA8D2278);
      v44 = v17;
      (*(v17 + 16))(v26, v29, v16);

      v45 = sub_185B67B6C();
      v46 = sub_185B680AC();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v74 = v46;
        v48 = v47;
        v75 = swift_slowAlloc();
        *&v82[0] = v75;
        *v48 = 136446466;
        sub_185ACA328(&qword_1ED6F4640);
        v76 = v45;
        v49 = sub_185B6856C();
        v51 = v50;
        v52 = *(v44 + 8);
        v72 = v49;
        v73 = v52;
        v52(v26, v16);
        v53 = sub_185ACB2C4(v72, v51, v82);

        v54 = v48;
        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        v31 = v77;
        *(v54 + 14) = sub_185ACB2C4(v77, v30, v82);
        _os_log_impl(&dword_185AC1000, v76, v74, "Authenticating for extension %{public}s inside %s", v54, 0x16u);
        v55 = v75;
        swift_arrayDestroy();
        MEMORY[0x1865FE2F0](v55, -1, -1);
        MEMORY[0x1865FE2F0](v54, -1, -1);

        v73(v29, v16);
      }

      else
      {

        v71 = *(v44 + 8);
        v71(v26, v16);
        v71(v29, v16);
        v31 = v77;
      }
    }
  }

  if (v80)
  {
    ObjectType = swift_getObjectType();
    (*(v79 + 1))(v81, ObjectType);
    sub_185AC66F8(v81, v82);
    if (v30)
    {
      sub_185AC66F8(v82, a7 + 48);
      *a7 = v31;
      *(a7 + 8) = v30;
      *(a7 + 16) = v37;
      *(a7 + 24) = v38;
      *(a7 + 32) = 0;
      *(a7 + 40) = 0;
      *(a7 + 88) = 257;
      *(a7 + 92) = v78;
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v82);
  }

  else
  {
  }

LABEL_15:
  result = 0.0;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

uint64_t sub_185B1E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v55 = a1;
  v56 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v49 - v10;
  v12 = sub_185B67AFC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = v49 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = v49 - v24;
  v26 = sub_185B67B1C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v29 = sub_185B67E0C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8, v31);
  if (!a5)
  {
    v49[1] = v18;
    v50 = v22;
    v33 = v55;
    v51 = v25;
    v52 = v13;
    v53 = 0;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v35 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    sub_185B67EAC();
    v32 = a4;
    v36 = v56;
    if (v56)
    {
      v37 = objc_allocWithZone(MEMORY[0x1E69635F8]);

      v39 = sub_185AD006C(v33, v36, 0);
    }

    else
    {
      sub_185AE7B2C(v54, v11);
      v38 = v52;
      if ((*(v52 + 48))(v11, 1, v12) == 1)
      {

        sub_185ACF5CC(v11, &unk_1EA8CD9A0, &unk_185B6C2C0);
        goto LABEL_9;
      }

      v40 = v51;
      (*(v38 + 32))(v51, v11, v12);
      v41 = v50;
      (*(v38 + 16))(v50, v40, v12);
      v42 = objc_allocWithZone(MEMORY[0x1E69635D0]);
      v39 = sub_185AE9B34(v41);
      (*(v38 + 8))(v40, v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_185B6BB70;
    v44 = [v39 localizedName];
    v45 = sub_185B67E4C();
    v47 = v46;

    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_185B06CBC();
    *(v43 + 32) = v45;
    *(v43 + 40) = v47;
    v32 = sub_185B67E7C();

    goto LABEL_9;
  }

  v32 = a4;
LABEL_9:

  return v32;
}

uint64_t sub_185B1EE48()
{
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (!v3)
  {
    v4 = 0;
    Strong = 0;
    return sub_185B56E14(v4, Strong);
  }

  v4 = 0;
  for (i = 48; ; i += 16)
  {
    if (v4 >= v2[2])
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    sub_185AE7A7C(v2 + i - 16, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_185AE7AD8(v11);
    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v3 == ++v4)
    {
      v4 = v2[2];
      Strong = v4;
      return sub_185B56E14(v4, Strong);
    }
  }

  Strong = v4 + 1;
  if (v2[2] - 1 == v4)
  {
    return sub_185B56E14(v4, Strong);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (2)
  {
    *v0 = v2;
    v6 = v2 + 4;
    v7 = v2[2];
    i += v2;
    while (1)
    {
      if (Strong >= v7)
      {
        goto LABEL_25;
      }

      sub_185AE7A7C(i, v11);
      v8 = swift_unknownObjectWeakLoadStrong();
      sub_185AE7AD8(v11);
      if (v8)
      {
        break;
      }

LABEL_13:
      ++Strong;
      v7 = v2[2];
      i += 16;
      if (Strong == v7)
      {
        goto LABEL_22;
      }
    }

    swift_unknownObjectRelease();
    if (Strong == v4)
    {
LABEL_12:
      ++v4;
      goto LABEL_13;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v9 = v2[2];
    if (v4 >= v9)
    {
      goto LABEL_27;
    }

    sub_185AE7A7C(&v6[2 * v4], v11);
    if (Strong >= v9)
    {
      goto LABEL_28;
    }

    sub_185B1F618(i, &v6[2 * v4]);
    if (Strong < v2[2])
    {
      sub_185B1F650(v11, i);
      *v0 = v2;
      goto LABEL_12;
    }

    __break(1u);
LABEL_22:
    if (Strong < v4)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = sub_185B568D0(v2);
      continue;
    }

    return sub_185B56E14(v4, Strong);
  }
}

uint64_t sub_185B1F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4, v7);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCE70, &unk_185B6C5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v40 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v40 - v24;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(ObjectType, v26);
    swift_unknownObjectRelease();
    v28 = v5[7];
    v28(v25, 0, 1, v4);
  }

  else
  {
    v28 = v5[7];
    v28(v25, 1, 1, v4);
  }

  v29 = swift_getObjectType();
  (*(v43 + 8))(v29);
  v28(v22, 0, 1, v4);
  v30 = *(v9 + 48);
  sub_185AE7B2C(v25, v13);
  sub_185AE7B2C(v22, &v13[v30]);
  v31 = v5;
  v32 = v5[6];
  if (v32(v13, 1, v4) != 1)
  {
    v34 = v41;
    sub_185AE7B2C(v13, v41);
    if (v32(&v13[v30], 1, v4) != 1)
    {
      v35 = v31;
      v36 = &v13[v30];
      v37 = v40;
      (v31[4])(v40, v36, v4);
      sub_185ACA328(&qword_1ED6F45C0);
      v33 = sub_185B67DEC();
      v38 = v35[1];
      v38(v37, v4);
      sub_185ACF5CC(v22, &unk_1EA8CD9A0, &unk_185B6C2C0);
      sub_185ACF5CC(v25, &unk_1EA8CD9A0, &unk_185B6C2C0);
      v38(v41, v4);
      sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
      return v33 & 1;
    }

    sub_185ACF5CC(v22, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185ACF5CC(v25, &unk_1EA8CD9A0, &unk_185B6C2C0);
    (v31[1])(v34, v4);
    goto LABEL_9;
  }

  sub_185ACF5CC(v22, &unk_1EA8CD9A0, &unk_185B6C2C0);
  sub_185ACF5CC(v25, &unk_1EA8CD9A0, &unk_185B6C2C0);
  if (v32(&v13[v30], 1, v4) != 1)
  {
LABEL_9:
    sub_185ACF5CC(v13, &qword_1EA8CCE70, &unk_185B6C5A0);
    v33 = 0;
    return v33 & 1;
  }

  sub_185ACF5CC(v13, &unk_1EA8CD9A0, &unk_185B6C2C0);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_185B1F4B4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v10[1] = a4;
  swift_unknownObjectWeakAssign();
  v6 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_185B3CB24(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_185B3CB24((v7 > 1), v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  sub_185B0B2D4(v10, &v6[2 * v8 + 4]);
  *a2 = v6;
  return sub_185B1EE48();
}

uint64_t sub_185B1F588(uint64_t a1, uint64_t a2)
{
  result = sub_185B56168(sub_185B1F5F8);
  v4 = *(*a2 + 16);
  if (v4 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B56E14(result, v4);
    return sub_185B1EE48();
  }

  return result;
}

id sub_185B1F698()
{
  result = APGetWriteServiceInterface();
  qword_1EA8D2368 = result;
  return result;
}

uint64_t sub_185B1F6F0(void *a1, int a2, int a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, id, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_185B67E4C();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  a6(v10, v12, a4, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

id sub_185B1F818()
{
  if (qword_1EA8CC3E0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2368;

  return v0;
}

id sub_185B1F8BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_185B1F964@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APWriteService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection14APWriteService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

id sub_185B1F9E0()
{
  v1 = *v0;
  v2 = type metadata accessor for APWriteClient();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13AppProtection13APWriteClient_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1EF469EB8;
  swift_unknownObjectWeakAssign();
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_185B1FA60(uint64_t a1)
{
  result = sub_185B1FAA4(&qword_1EA8CBDF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B1FAA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for APWriteClient();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_185B1FAE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v14[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APWriteService_policy, v14);
      swift_unknownObjectRelease();
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 56))(a1, a2, a3 & 1, v10, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    (*(a5 + 16))(a5, 0);
  }

  else
  {
    v12 = sub_185AD0148(2uLL, 0, 0, 32, 0xD000000000000029, 0x8000000185B755F0);
    v13 = sub_185B6791C();
    (*(a5 + 16))(a5, v13);
  }
}

void sub_185B1FC98(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v14[0]) = 0;
  if (AppProtectionFeatures.enabled.getter())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection14APWriteService_policy, v14);
      swift_unknownObjectRelease();
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 48))(a1, a2, a3 & 1, v10, v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    (*(a5 + 16))(a5, 0);
  }

  else
  {
    v12 = sub_185AD0148(2uLL, 0, 0, 46, 0xD000000000000029, 0x8000000185B755C0);
    v13 = sub_185B6791C();
    (*(a5 + 16))(a5, v13);
  }
}

void sub_185B1FE4C(int a1)
{
  if (notify_is_valid_token(a1))
  {
    v2 = notify_cancel(a1);
    if (v2)
    {
      v3 = v2;
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v4 = sub_185B67B8C();
      __swift_project_value_buffer(v4, qword_1ED6F5130);
      oslog = sub_185B67B6C();
      v5 = sub_185B6809C();
      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = v3;
        _os_log_impl(&dword_185AC1000, oslog, v5, "could not unregister for changes: %u", v6, 8u);
        MEMORY[0x1865FE2F0](v6, -1, -1);
      }
    }
  }
}

uint64_t sub_185B1FF78()
{
  sub_185B1FE4C(*(v0 + 32));
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 8);
  sub_185B1FE4C(v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 8);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B1FFF4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);

    os_unfair_lock_lock((v1 + 32));
    v2 = *(v1 + 24);

    os_unfair_lock_unlock((v1 + 32));

    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 40);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;

        v6(v7);

        v4 += 2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t sub_185B200C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    os_unfair_lock_lock(v1 + 12);
    sub_185B205EC(&v1[4]);
    os_unfair_lock_unlock(v1 + 12);
  }

  return result;
}

uint64_t sub_185B20150(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6F4CB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  sub_185B206C4(a1, &v27);
  v5 = sub_185B67B6C();
  v6 = sub_185B680AC();
  sub_185ACC058(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    v9 = *(a1 + 16);
    v27 = *a1;
    v28 = v9;
    v29 = *(a1 + 32);
    v30 = *(a1 + 48);
    sub_185B206C4(a1, &v25);
    v10 = sub_185B67EBC();
    v12 = sub_185ACB2C4(v10, v11, &v26);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_185AC1000, v5, v6, "diff is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }

  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(a2 + 56) + ((v18 << 10) | (16 * v19));
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(a1 + 16);
      v27 = *a1;
      v28 = v23;
      v29 = *(a1 + 32);
      v30 = *(a1 + 48);

      v22(&v27);

      if (!v15)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v18 >= v16)
    {
    }

    v15 = *(a2 + 64 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_12;
    }
  }
}

uint64_t sub_185B203B4()
{
  type metadata accessor for ServerBackedClientPolicyStore.Wrapper();
  inited = swift_initStackObject();
  *(inited + 16) = [objc_allocWithZone(APClientState) init];
  v2 = [objc_allocWithZone(APClientState) init];
  v3 = *(v0 + 16);

  os_unfair_lock_lock((v3 + 48));
  sub_185B20668((v3 + 16));
  os_unfair_lock_unlock((v3 + 48));

  return *(inited + 16);
}

uint64_t sub_185B2046C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_185B204D8(uint64_t *a1, int a2)
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

uint64_t sub_185B20520(uint64_t result, int a2, int a3)
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

uint64_t sub_185B20560(uint64_t a1, int a2)
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

uint64_t sub_185B205A8(uint64_t result, int a2, int a3)
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

uint64_t sub_185B20614(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  return v2(v6);
}

void sub_185B20668(void **a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_185AC31B8(a1);
  v5 = *a1;
  v6 = *(v3 + 16);
  *(v3 + 16) = *a1;
  v7 = v5;
}

AppProtection::ManagedAppProtectability __swiftcall ManagedAppProtectability.init(lockable:hideable:)(Swift::Bool lockable, Swift::Bool hideable)
{
  *v2 = lockable;
  v2[1] = hideable;
  result.lockable = lockable;
  return result;
}

uint64_t ManagedAppProtectability.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_185B6836C();
  MEMORY[0x1865FCF60](0xD000000000000023, 0x8000000185B76FA0);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v3, v4);

  MEMORY[0x1865FCF60](0x626165646968202CLL, 0xEC000000203A656CLL);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1865FCF60](v5, v6);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_185B208D8()
{
  if (*v0)
  {
    return 0x656C626165646968;
  }

  else
  {
    return 0x656C62616B636F6CLL;
  }
}

uint64_t sub_185B2090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C62616B636F6CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_185B6859C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626165646968 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_185B6859C();

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

uint64_t sub_185B209F4(uint64_t a1)
{
  v2 = sub_185B20BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B20A30(uint64_t a1)
{
  v2 = sub_185B20BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppProtectability.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD320, &qword_185B6DCE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  v10 = *v1;
  v14 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B20BF8();
  sub_185B686FC();
  v16 = 0;
  sub_185B684FC();
  if (!v2)
  {
    v15 = 1;
    sub_185B684FC();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_185B20BF8()
{
  result = qword_1EA8CD328;
  if (!qword_1EA8CD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD328);
  }

  return result;
}

uint64_t ManagedAppProtectability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD330, &qword_185B6DCE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B20BF8();
  sub_185B686EC();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_185B684AC();
    v16 = 1;
    v14 = sub_185B684AC();
    (*(v6 + 8))(v10, v5);
    *a2 = v12 & 1;
    a2[1] = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t ManagementInterfaceEvent.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      sub_185B6836C();

      v6 = "appLockabilityChanged(";
    }

    else
    {
      sub_185B6836C();

      v6 = "appHideabilityChanged(";
    }

    v11 = 0xD000000000000016;
    v12 = (v6 - 32) | 0x8000000000000000;
    MEMORY[0x1865FCF60](v1, v2);
    MEMORY[0x1865FCF60](8236, 0xE200000000000000);
    v7 = (v3 & 1) == 0;
  }

  else
  {
    if (v4)
    {
      sub_185B6836C();

      v5 = "deviceHideCapabilityRestrictionChanged(";
    }

    else
    {
      sub_185B6836C();

      v5 = "deviceLockCapabilityRestrictionChanged(";
    }

    v11 = 0xD000000000000027;
    v12 = (v5 - 32) | 0x8000000000000000;
    v7 = (v1 & 1) == 0;
  }

  if (v7)
  {
    v8 = 0x65736C6166;
  }

  else
  {
    v8 = 1702195828;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1865FCF60](v8, v9);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v11, v12);

  return 0xD000000000000019;
}

uint64_t getEnumTagSinglePayload for ManagedAppProtectability(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for ManagedAppProtectability(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_185B211A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_185B211F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_185B212E0()
{
  result = qword_1EA8CD338;
  if (!qword_1EA8CD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD338);
  }

  return result;
}

unint64_t sub_185B21338()
{
  result = qword_1EA8CD340;
  if (!qword_1EA8CD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD340);
  }

  return result;
}

unint64_t sub_185B21390()
{
  result = qword_1EA8CD348;
  if (!qword_1EA8CD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD348);
  }

  return result;
}

uint64_t sub_185B213E4()
{
  v0 = sub_185B680DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = sub_185B67CDC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v6 = sub_185B680EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185AC7294();
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8098], v6);
  sub_185B67CBC();
  v13[1] = MEMORY[0x1E69E7CC0];
  sub_185AE8448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AE84A0();
  sub_185B682CC();
  result = sub_185B6813C();
  qword_1EA8CB7E0 = result;
  return result;
}

void sub_185B215E4()
{
  v1 = v0;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v2 = sub_185B67B8C();
  __swift_project_value_buffer(v2, qword_1EA8D2278);
  v3 = sub_185B67B6C();
  v4 = sub_185B680AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_185AC1000, v3, v4, "resuming accountsd translator", v5, 2u);
    MEMORY[0x1865FE2F0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedSubscriber];
  v8[4] = sub_185B21B04;
  v8[5] = v1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185B21A14;
  v8[3] = &block_descriptor_13;
  v7 = _Block_copy(v8);

  [v6 registerAccountChangeEventHandler_];
  _Block_release(v7);
}

uint64_t sub_185B21784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EA8CB7D8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA8CB7E0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_185B21B0C;
  *(v5 + 24) = a3;
  v8[4] = sub_185AE7934;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_185AD94F4;
  v8[3] = &block_descriptor_4;
  v6 = _Block_copy(v8);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_185B218F0(uint64_t a1)
{
  v2 = sub_185B6781C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67E1C();
  memset(v11, 0, sizeof(v11));
  sub_185B677EC();
  v8 = *(a1 + 16);
  v9 = sub_185B677CC();
  [v8 postNotification_];

  return (*(v3 + 8))(v7, v2);
}

void sub_185B21A14(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

id sub_185B21A8C()
{
  type metadata accessor for AccountsdXPCEventStreamTranslator();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E696AD88]) init];
  *(v0 + 16) = result;
  qword_1EA8D22C0 = v0;
  return result;
}

id sub_185B21B1C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *MEMORY[0x1E696A798];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCFD0, &unk_185B6D560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_185B6BB60;
  *(inited + 32) = 0x656E694C5041;
  v14 = MEMORY[0x1E69E6530];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a4;
  *(inited + 72) = v14;
  *(inited + 80) = 0x636E75465041;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 120) = MEMORY[0x1E69E6158];
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = a5;
  *(inited + 104) = a6;
  v16 = v12;

  sub_185AD038C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD230, &unk_185B6C980);
  swift_arrayDestroy();
  if (a3)
  {
    v17 = *MEMORY[0x1E696A278];
    v18 = sub_185B67E4C();
    v20 = v19;
    v28 = v15;
    *&v27 = a2;
    *(&v27 + 1) = a3;
    sub_185AD093C(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_185ACFF1C(v26, v18, v20, isUniquelyReferenced_nonNull_native);
  }

  v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v23 = sub_185B67D7C();

  v24 = [v22 initWithDomain:v16 code:a1 userInfo:v23];

  return v24;
}

uint64_t sub_185B21D18(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      v7(v8);
      if (v2)
      {

        v4 = v2;
        v2 = 0;
      }

      else
      {
      }

      v5 += 2;
      --v3;
    }

    while (v3);
    if (v4)
    {
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_185B21DC0()
{
  v1 = *(v0 + 16);
  container_error_free();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_185B21E1C()
{
  v1 = *(*v0 + 16);
  v2 = container_error_copy_unlocalized_description();
  if (!v2)
  {
    return 0x296C6C756E28;
  }

  v3 = v2;
  v4 = sub_185B67F1C();
  free(v3);
  return v4;
}

unint64_t sub_185B21E84(unint64_t __errnum)
{
  if (__errnum >> 62)
  {
    if (__errnum >> 62 != 1)
    {
      return 0xD000000000000032;
    }

    if (strerror(__errnum))
    {
      v2 = sub_185B67F1C();
      v4 = v3;
    }

    else
    {
      sub_185B6836C();

      v10 = sub_185B6856C();
      MEMORY[0x1865FCF60](v10);

      v2 = 0x6E776F6E6B6E7528;
      v4 = 0xEF206F6E72726520;
    }

    sub_185B6836C();

    v11 = 0xD00000000000002CLL;
  }

  else
  {
    sub_185B6836C();

    v11 = 0xD000000000000022;
    v5 = *(__errnum + 16);
    v6 = container_error_copy_unlocalized_description();
    if (v6)
    {
      v7 = v6;
      v2 = sub_185B67F1C();
      v4 = v8;
      free(v7);
    }

    else
    {
      v4 = 0xE600000000000000;
      v2 = 0x296C6C756E28;
    }
  }

  MEMORY[0x1865FCF60](v2, v4);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  return v11;
}

uint64_t sub_185B22068@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC818, &qword_185B6E0C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = v27 - v7;
  v9 = sub_185B67A0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!container_query_create())
  {
    sub_185B22670();
    swift_allocError();
    *v18 = 0x8000000000000000;
    return swift_willThrow();
  }

  container_query_set_class();
  container_query_operation_set_flags();
  if (a1)
  {
    container_query_set_persona_unique_string();
  }

  if (container_query_get_single_result())
  {
    result = container_get_path();
    if (result)
    {
      (*(v10 + 56))(v8, 1, 1, v9);
      sub_185B679AC();
      sub_185ACF5CC(v8, &qword_1EA8CC818, &qword_185B6E0C0);
      v16 = container_copy_sandbox_token();
      if (v16)
      {
        v17 = v16;
        if (sandbox_extension_consume() < 0)
        {
          v25 = MEMORY[0x1865FCC70]() | 0x4000000000000000;
          sub_185B22670();
          swift_allocError();
          *v26 = v25;
          swift_willThrow();
          (*(v10 + 8))(v14, v9);
          return container_query_free();
        }

        free(v17);
      }

      else
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v21 = sub_185B67B8C();
        __swift_project_value_buffer(v21, qword_1EA8D2278);
        v22 = sub_185B67B6C();
        v23 = sub_185B680AC();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_185AC1000, v22, v23, "No sandbox token in container, hoping for the best", v24, 2u);
          MEMORY[0x1865FE2F0](v24, -1, -1);
        }
      }

      (*(v10 + 32))(a2, v14, v9);
      return container_query_free();
    }

    __break(1u);
  }

  else
  {
    result = container_query_get_last_error();
    if (result)
    {
      type metadata accessor for ContainerErrorCopy();
      v19 = swift_allocObject();
      *(v19 + 16) = container_error_copy();
      sub_185B22670();
      swift_allocError();
      *v20 = v19;
      swift_willThrow();
      return container_query_free();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B22410()
{
  v0 = sub_185B67A0C();
  __swift_allocate_value_buffer(v0, qword_1EA8CBC10);
  v1 = __swift_project_value_buffer(v0, qword_1EA8CBC10);
  return sub_185B22068(*MEMORY[0x1E69E9980], v1);
}

uint64_t sub_185B22544()
{
  v0 = sub_185B67A0C();
  __swift_allocate_value_buffer(v0, qword_1EA8CBAF8);
  v1 = __swift_project_value_buffer(v0, qword_1EA8CBAF8);
  return sub_185B22068(0, v1);
}

unint64_t sub_185B22670()
{
  result = qword_1EA8CD350;
  if (!qword_1EA8CD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD350);
  }

  return result;
}

uint64_t sub_185B226C4@<X0>(char *a1@<X8>)
{
  v96 = a1;
  v1 = sub_185B678AC();
  v91 = *(v1 - 8);
  v92 = v1;
  v2 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v94 = (&v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_185B67E9C();
  v89 = *(v5 - 8);
  v90 = v5;
  v6 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v87 - v13;
  v15 = sub_185B67AFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v99 = &v87 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v88 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v93 = &v87 - v29;
  v30 = sub_185B6795C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_185B67A0C();
  v95 = *(v36 - 8);
  v37 = *(v95 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v41 = &v87 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CBC08 != -1)
  {
    v86 = v39;
    swift_once();
    v39 = v86;
  }

  v97 = v39;
  __swift_project_value_buffer(v39, qword_1EA8CBC10);
  strcpy(v100, "InstanceUUID");
  BYTE5(v100[1]) = 0;
  HIWORD(v100[1]) = -5120;
  (*(v31 + 104))(v35, *MEMORY[0x1E6968F70], v30);
  sub_185B1CC8C();
  sub_185B679FC();
  (*(v31 + 8))(v35, v30);
  v98 = v41;
  v42 = sub_185B23394();
  if (v43 >> 60 == 15)
  {
    v44 = v15;
    (*(v16 + 56))(v14, 1, 1, v15);
    v45 = v99;
LABEL_6:
    sub_185ACF5CC(v14, &unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B67AEC();
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v49 = sub_185B67B8C();
    v50 = __swift_project_value_buffer(v49, qword_1EA8D2278);
    (*(v16 + 16))(v21, v45, v44);
    v93 = v50;
    v51 = sub_185B67B6C();
    v52 = sub_185B680AC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v100[0] = v54;
      *v53 = 136315138;
      sub_185B24474(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
      v55 = sub_185B6856C();
      v57 = v56;
      (*(v16 + 8))(v21, v44);
      v58 = sub_185ACB2C4(v55, v57, v100);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_185AC1000, v51, v52, "saving new container instance UUID %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      v59 = v54;
      v45 = v99;
      MEMORY[0x1865FE2F0](v59, -1, -1);
      MEMORY[0x1865FE2F0](v53, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v21, v44);
    }

    sub_185B67AAC();
    sub_185B67E8C();
    v60 = sub_185B67E5C();
    v62 = v61;

    (*(v89 + 8))(v9, v90);
    if (v62 >> 60 == 15)
    {
      v63 = sub_185B67B6C();
      v64 = sub_185B6809C();
      v65 = os_log_type_enabled(v63, v64);
      v66 = v98;
      if (v65)
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_185AC1000, v63, v64, "could not convert container instance UUID to string data!?", v67, 2u);
        MEMORY[0x1865FE2F0](v67, -1, -1);
      }
    }

    else
    {
      v66 = v98;
      sub_185B67A6C();
      sub_185B24210(v60, v62);
    }

    v68 = v94;
    sub_185B6789C();
    sub_185B6788C();
    sub_185B6798C();
    (*(v91 + 8))(v68, v92);
    (*(v16 + 32))(v96, v45, v44);
    v83 = v97;
    return (*(v95 + 8))(v66, v83);
  }

  v46 = v42;
  v47 = v43;
  sub_185B23698(v14);
  sub_185B24210(v46, v47);
  v44 = v15;
  v48 = (*(v16 + 48))(v14, 1, v15);
  v45 = v99;
  if (v48 == 1)
  {
    goto LABEL_6;
  }

  v69 = *(v16 + 32);
  v70 = v93;
  v69(v93, v14, v44);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v71 = sub_185B67B8C();
  __swift_project_value_buffer(v71, qword_1EA8D2278);
  v72 = v88;
  (*(v16 + 16))(v88, v70, v44);
  v73 = sub_185B67B6C();
  v74 = sub_185B680AC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v99 = v69;
    v76 = v75;
    v94 = swift_slowAlloc();
    v100[0] = v94;
    *v76 = 136315138;
    sub_185B24474(&qword_1ED6F4640, MEMORY[0x1E69695A8]);
    v77 = sub_185B6856C();
    v79 = v78;
    (*(v16 + 8))(v72, v44);
    v80 = sub_185ACB2C4(v77, v79, v100);

    *(v76 + 4) = v80;
    _os_log_impl(&dword_185AC1000, v73, v74, "loaded container instance UUID %s", v76, 0xCu);
    v81 = v94;
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
    MEMORY[0x1865FE2F0](v81, -1, -1);
    v82 = v76;
    v69 = v99;
    MEMORY[0x1865FE2F0](v82, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v72, v44);
  }

  v84 = v97;
  v66 = v98;
  sub_185B23A68(v98);
  v69(v96, v70, v44);
  v83 = v84;
  return (*(v95 + 8))(v66, v83);
}

uint64_t sub_185B23394()
{
  v0 = sub_185B67A0C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  return sub_185B67A1C();
}

uint64_t sub_185B23698@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_185B67E9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  sub_185B67E8C();
  v10 = sub_185B67E6C();
  if (v11)
  {
    v12 = v11;
    v13 = v10;
    sub_185B67A9C();
    v14 = sub_185B67AFC();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) != 1)
    {

      (*(v15 + 32))(a1, v6, v14);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    sub_185ACF5CC(v6, &unk_1EA8CD9A0, &unk_185B6C2C0);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1EA8D2278);

    v17 = sub_185B67B6C();
    v18 = sub_185B6808C();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    v21 = sub_185ACB2C4(v13, v12, &v29);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_185AC1000, v17, v18, "Could not parse %s as a UUID", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x1865FE2F0](v20, -1, -1);
    v22 = v19;
  }

  else
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v23 = sub_185B67B8C();
    __swift_project_value_buffer(v23, qword_1EA8D2278);
    v17 = sub_185B67B6C();
    v24 = sub_185B6808C();
    if (!os_log_type_enabled(v17, v24))
    {
      goto LABEL_14;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_185AC1000, v17, v24, "could not parse data as UTF-8", v25, 2u);
    v22 = v25;
  }

  MEMORY[0x1865FE2F0](v22, -1, -1);
LABEL_14:

  v27 = sub_185B67AFC();
  return (*(*(v27 - 8) + 56))(a1, 1, 1, v27);
}

void sub_185B23A68(uint64_t a1)
{
  v71[15] = *MEMORY[0x1E69E9840];
  v2 = sub_185B67A0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_185B678AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD358, &qword_185B6E0C8);
  inited = swift_initStackObject();
  v69 = xmmword_185B6BB70;
  *(inited + 16) = xmmword_185B6BB70;
  v14 = *MEMORY[0x1E695DAF0];
  *(inited + 32) = *MEMORY[0x1E695DAF0];
  v15 = v14;
  sub_185B24224(inited);
  swift_setDeallocating();
  sub_185B24418(inited + 32);
  sub_185B6796C();

  v58 = sub_185B6787C();
  (*(v8 + 8))(v12, v7);
  if (!v58)
  {
    goto LABEL_2;
  }

  v59 = *MEMORY[0x1E695DAF8];
  v60 = sub_185B67E4C();
  v62 = v61;
  if (v60 == sub_185B67E4C() && v62 == v63)
  {

    goto LABEL_19;
  }

  v65 = sub_185B6859C();

  if (v65)
  {
  }

  else
  {
LABEL_2:
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v16 = sub_185B67B8C();
    __swift_project_value_buffer(v16, qword_1EA8D2278);
    v17 = v58;
    v18 = sub_185B67B6C();
    v19 = sub_185B6808C();

    v20 = os_log_type_enabled(v18, v19);
    v68 = v17;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = v3;
      v23 = v2;
      v24 = swift_slowAlloc();
      v70 = v58;
      v71[0] = v24;
      *v21 = 136446210;
      v25 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD370, &qword_185B6E0E0);
      v26 = sub_185B67EBC();
      v28 = sub_185ACB2C4(v26, v27, v71);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_185AC1000, v18, v19, "File protection on instance UUID file was %{public}s, trying to correct...", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v29 = v24;
      v2 = v23;
      v3 = v22;
      MEMORY[0x1865FE2F0](v29, -1, -1);
      MEMORY[0x1865FE2F0](v21, -1, -1);
    }

    v30 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD360, &qword_185B6E0D0);
    v31 = swift_initStackObject();
    *(v31 + 16) = v69;
    v32 = *MEMORY[0x1E696A3A0];
    *(v31 + 32) = *MEMORY[0x1E696A3A0];
    v33 = *MEMORY[0x1E696A3A8];
    type metadata accessor for FileProtectionType(0);
    *(v31 + 64) = v34;
    *(v31 + 40) = v33;
    v35 = v32;
    v36 = v33;
    sub_185B52D50(v31);
    swift_setDeallocating();
    sub_185ACF5CC(v31 + 32, &qword_1EA8CD368, &qword_185B6E0D8);
    type metadata accessor for FileAttributeKey(0);
    sub_185B24474(&qword_1EA8CCA48, type metadata accessor for FileAttributeKey);
    v37 = sub_185B67D7C();

    sub_185B679DC();
    v38 = sub_185B67E1C();

    v71[0] = 0;
    LODWORD(v33) = [v30 setAttributes:v37 ofItemAtPath:v38 error:v71];

    if (v33)
    {
      v39 = v71[0];
    }

    else
    {
      v40 = v71[0];
      v41 = sub_185B6792C();

      swift_willThrow();
      v42 = v67;
      (*(v3 + 16))(v67, a1, v2);
      v43 = v41;
      v44 = sub_185B67B6C();
      v45 = sub_185B6808C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = v3;
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v71[0] = v49;
        *v46 = 136446466;
        sub_185B24474(&qword_1EA8CBFF0, MEMORY[0x1E6968FB0]);
        v50 = sub_185B6856C();
        v51 = v42;
        v52 = v50;
        v54 = v53;
        (*(v47 + 8))(v51, v2);
        v55 = sub_185ACB2C4(v52, v54, v71);

        *(v46 + 4) = v55;
        *(v46 + 12) = 2112;
        v56 = v41;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 14) = v57;
        *v48 = v57;
        _os_log_impl(&dword_185AC1000, v44, v45, "Could not set file protection of %{public}s: %@", v46, 0x16u);
        sub_185ACF5CC(v48, &unk_1EA8CC820, &unk_185B6B2A0);
        MEMORY[0x1865FE2F0](v48, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x1865FE2F0](v49, -1, -1);
        MEMORY[0x1865FE2F0](v46, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v42, v2);
      }
    }
  }

LABEL_19:
  v66 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185B24210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_185AE2FC8(a1, a2);
  }

  return a1;
}

uint64_t sub_185B24224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD378, &qword_185B6E0E8);
    v3 = sub_185B6834C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_185B67E4C();
      sub_185B6866C();
      v29 = v7;
      sub_185B67EEC();
      v9 = sub_185B686AC();

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
        v18 = sub_185B67E4C();
        v20 = v19;
        if (v18 == sub_185B67E4C() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_185B6859C();

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

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_185B24418(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B24474(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t get_enum_tag_for_layout_string_13AppProtection19ContainerFetchError33_D5166DC3C354ECCF2AE9EE69E5553F59LLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_185B244D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_185B24528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_185B24584(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

id sub_185B245BC(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = sub_185B67E1C();

  v10[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_185B246A4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v203 = a3;
  v209 = *MEMORY[0x1E69E9840];
  v6 = sub_185B67C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v196 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = sub_185B67CDC();
  v195 = *(v197 - 8);
  v11 = *(v195 + 64);
  MEMORY[0x1EEE9AC00](v197, v12);
  v194 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_185B67B1C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_185B67E0C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v22 = os_transaction_create();
  v23 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  v24 = *(v3 + 16);
  *(v3 + 16) = v23;
  v25 = v23;

  if (!v25)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v35 = sub_185B67B8C();
    __swift_project_value_buffer(v35, qword_1EA8D2278);
    v36 = sub_185B67B6C();
    v37 = sub_185B6808C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_185AC1000, v36, v37, "Unexpected nil LAContext", v38, 2u);
      MEMORY[0x1865FE2F0](v38, -1, -1);
    }

    v202 = sub_185AD0148(0xBuLL, 0, 0, 73, 0xD000000000000027, 0x8000000185B773C0);
    a2(0);
    swift_unknownObjectRelease();
    v39 = *MEMORY[0x1E69E9840];
    v40 = v202;

    return;
  }

  v190 = v18;
  v184 = v7;
  v185 = v6;
  v191 = v3;
  v192 = a2;
  v193 = v22;
  v26 = *(a1 + 72);
  v189 = *(a1 + 64);
  v27 = *(a1 + 48);
  v187 = *(a1 + 40);
  v28 = *(a1 + 8);
  v201 = *a1;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = *(a1 + 32);
  v202 = v25;
  v200 = v29;
  v199 = v28;
  v198 = v30;
  if (v31 >= 0xFE)
  {
    v32 = v26;
    if (!v26)
    {
      v42 = 0;
      v33 = 0;
      v188 = 0;
      goto LABEL_34;
    }

    v186 = v27;
    swift_bridgeObjectRetain_n();
    v33 = 0;
    v34 = 0;
    goto LABEL_26;
  }

  v186 = v27;
  if ((v31 & 0x80) != 0)
  {
    *aBlock.val = 0;
    v43 = v201;
    sub_185B26EC8(v201, v28, v30, v29, v31);

    sub_185B26EC8(v43, v28, v30, v29, v31);
    v44 = [v43 findApplicationRecordWithError_];
    v45 = *aBlock.val;
    if (!v44)
    {
      v51 = v45;
      v52 = sub_185B6792C();

      swift_willThrow();
      v25 = v202;

      v188 = 0;
      v53 = v28;
      v33 = v28;
      if (!v26)
      {
        goto LABEL_30;
      }

      sub_185B26DBC(v201, v28, v198, v200, v31);
      v188 = 0;
LABEL_25:
      v32 = v26;

      v34 = v188;
LABEL_26:
      sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);
      v42 = sub_185B245BC(v189, v32, 1);
      if (v34)
      {

        v42 = 0;
      }

      v188 = 0;
      v25 = v202;
      goto LABEL_33;
    }

    v188 = 0;
    v33 = v28;
    v41 = v44;
    if (!v26)
    {
LABEL_20:
      if (v41)
      {
        v47 = v41;
        v48 = [v41 bundleIdentifier];
        if (v48)
        {
          v49 = v48;
          v189 = sub_185B67E4C();
          v32 = v50;
          sub_185B26DBC(v201, v199, v198, v200, v31);
        }

        else
        {
          sub_185B26DBC(v201, v199, v198, v200, v31);
          v189 = 0;
          v32 = 0;
        }

        v42 = v47;
        goto LABEL_33;
      }

      v53 = v33;
LABEL_30:
      sub_185B26DBC(v201, v28, v198, v200, v31);
      v42 = 0;
      v189 = 0;
      v32 = 0;
      v27 = v186;
      v33 = v53;
      goto LABEL_34;
    }
  }

  else
  {
    sub_185ADF590(0, &qword_1EA8CD3B0, 0x1E6963620);

    v41 = sub_185B2EC58(v201, v28, v30, v29);
    v188 = 0;
    v33 = v31;
    v25 = v202;
    v28 = v199;
    if (!v26)
    {
      goto LABEL_20;
    }
  }

  v46 = v41;
  sub_185B26DBC(v201, v28, v198, v200, v31);
  if (!v46)
  {
    goto LABEL_25;
  }

  v42 = v46;
  v32 = v26;
LABEL_33:
  v27 = v186;
LABEL_34:
  v190 = v42;
  if (v27)
  {
    v54 = sub_185B67E1C();
    [v25 setOptionAuthenticationReason_];
LABEL_41:

    goto LABEL_42;
  }

  if (v42)
  {
    v54 = v42;
    sub_185B67DFC();
    type metadata accessor for APSettingsManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass_];
    sub_185B67B0C();
    if (v33)
    {
      sub_185B67EAC();
    }

    else
    {
      v187 = sub_185B67EAC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
      v57 = v31;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_185B6BB70;
      v59 = [v54 localizedName];
      v60 = sub_185B67E4C();
      v62 = v61;

      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = sub_185B06CBC();
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      sub_185B67E7C();

      v31 = v57;
    }

    v63 = sub_185B67E1C();

    [v25 setOptionAuthenticationReason_];

    goto LABEL_41;
  }

LABEL_42:
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v65 = (v64 + 16);
  LODWORD(v187) = *(a1 + 56);
  if (v187)
  {
    sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
    v66 = sub_185B6825C();
    [v25 setOptionNoFailureUI_];

    v67 = sub_185B6826C();
    [v25 setOptionMaxBiometryFailures_];

    v68 = v200;
    if (*(a1 + 57) & 1) != 0 && (v69 = [objc_opt_self() currentUser], v70 = objc_msgSend(v69, sel_state), v69, v71 = objc_msgSend(v70, sel_biometry), v70, v71) && (v72 = objc_msgSend(v71, sel_isUsable), v71, (v72))
    {
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v73 = sub_185B67B8C();
      __swift_project_value_buffer(v73, qword_1EA8D2278);

      v74 = sub_185B67B6C();
      v75 = sub_185B6807C();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *aBlock.val = v77;
        *v76 = 136315138;
        if (v32)
        {
          v78 = v189;
        }

        else
        {
          v78 = 0;
        }

        if (!v32)
        {
          v32 = 0xE000000000000000;
        }

        v79 = v31;
        v80 = sub_185ACB2C4(v78, v32, &aBlock);

        *(v76 + 4) = v80;
        v31 = v79;
        v25 = v202;
        _os_log_impl(&dword_185AC1000, v74, v75, "First attempt auth for %s", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x1865FE2F0](v77, -1, -1);
        MEMORY[0x1865FE2F0](v76, -1, -1);
      }

      else
      {
      }

      v81 = 4;
    }

    else
    {

      v81 = 1025;
    }
  }

  else
  {

    v81 = 1025;
    v68 = v200;
  }

  LOBYTE(aBlock.val[0]) = 1;
  if (AppProtectionFeatures.enabled.getter())
  {
    v82 = [objc_allocWithZone(MEMORY[0x1E696EE80]) initWithDomain:0 authenticationContext:0];
    *aBlock.val = 0;
    v83 = [v82 numberForKey:14 error:&aBlock];
    v84 = *aBlock.val;
    if (v83)
    {
      v85 = v64;
      v86 = v83;
      [v86 doubleValue];
      if (v87 / 1000.0 <= 86400.0)
      {
        v81 = 1;
      }

      else
      {
        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v88 = sub_185B67B8C();
        __swift_project_value_buffer(v88, qword_1EA8D2278);
        v89 = sub_185B67B6C();
        v90 = sub_185B6807C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = v31;
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_185AC1000, v89, v90, "Allowing passcode fallback after 24 hrs without successful bioauth", v92, 2u);
          v93 = v92;
          v31 = v91;
          v25 = v202;
          MEMORY[0x1865FE2F0](v93, -1, -1);
        }

        v81 = 2;
      }

      v64 = v85;
      v68 = v200;
    }

    else
    {
      v81 = 1;
    }

    if (v187)
    {
      sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
      v94 = sub_185B6825C();
      [v25 setOptionPresentingEmbeddedUI_];
    }

    v95 = sub_185B67E1C();
    [v25 setLocalizedFallbackTitle_];
  }

  *aBlock.val = *v65;
  v96 = [v25 canEvaluatePolicy:v81 error:{&aBlock, v184, v185}];
  v97 = *aBlock.val;
  v98 = *v65;
  *v65 = *aBlock.val;
  v99 = v97;

  if (!v96)
  {
    sub_185B26DBC(v201, v199, v198, v68, v31);
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v108 = sub_185B67B8C();
    __swift_project_value_buffer(v108, qword_1EA8D2278);

    v109 = sub_185B67B6C();
    v110 = sub_185B6808C();

    v111 = os_log_type_enabled(v109, v110);
    v112 = v185;
    v113 = v184;
    if (v111)
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      swift_beginAccess();
      v116 = *v65;
      *(v114 + 4) = *v65;
      *v115 = v116;
      v117 = v116;
      _os_log_impl(&dword_185AC1000, v109, v110, "Can't evaluate device owner auth! Cannot continue. %@", v114, 0xCu);
      sub_185AC3F6C(v115);
      MEMORY[0x1865FE2F0](v115, -1, -1);
      MEMORY[0x1865FE2F0](v114, -1, -1);
    }

    v118 = *(v191 + 24);
    v119 = swift_allocObject();
    v120 = v203;
    v119[2] = v192;
    v119[3] = v120;
    v119[4] = v64;
    v207 = sub_185B26DDC;
    v208 = v119;
    *aBlock.val = MEMORY[0x1E69E9820];
    *&aBlock.val[2] = 1107296256;
    *&aBlock.val[4] = sub_185ACA0E8;
    *&aBlock.val[6] = &block_descriptor_13;
    v121 = _Block_copy(&aBlock);

    v122 = v194;
    sub_185B67CBC();
    *v204.val = MEMORY[0x1E69E7CC0];
    sub_185B26D00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185B26D58();
    v123 = v196;
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v122, v123, v121);
    _Block_release(v121);
    swift_unknownObjectRelease();

    (*(v113 + 8))(v123, v112);
    (*(v195 + 8))(v122, v197);

    goto LABEL_104;
  }

  if (v81 == 1025)
  {
    sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
    v100 = sub_185B6825C();
    [v25 setOptionUseShortExpirationTimer_];
  }

  if (!_AXSClarityBoardEnabled())
  {
    v101 = sub_185B6803C();
    [v25 setOptionLightweightUIMode_];
  }

  v102 = v199;
  if (v31 >= 0xFE)
  {
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v103 = sub_185B67B8C();
    __swift_project_value_buffer(v103, qword_1EA8D2278);
    v104 = sub_185B67B6C();
    v105 = sub_185B680AC();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_185AC1000, v104, v105, "will not bind authentication UI", v106, 2u);
      v107 = v106;
      v25 = v202;
      MEMORY[0x1865FE2F0](v107, -1, -1);
    }

    goto LABEL_103;
  }

  if ((v31 & 0x80) == 0)
  {
    v124 = v31;
    v125 = v201;
    v126 = HIDWORD(v201);
    v127 = HIDWORD(v199);
    v128 = v198;
    v129 = HIDWORD(v198);
    sub_185B26DBC(v201, v199, v198, v68, v124);
    *aBlock.val = __PAIR64__(v126, v125);
    *&aBlock.val[2] = __PAIR64__(v127, v102);
    *&aBlock.val[4] = __PAIR64__(v129, v128);
    *&aBlock.val[6] = v68;
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v130 = sub_185B67B8C();
    __swift_project_value_buffer(v130, qword_1EA8D2278);
    v131 = sub_185B67B6C();
    v132 = sub_185B680AC();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 67109120;
      swift_beginAccess();
      atoken = aBlock;
      *(v133 + 4) = audit_token_to_pid(&atoken);
      _os_log_impl(&dword_185AC1000, v131, v132, "Requesting LocalAuthentication bind UI to pid %d", v133, 8u);
      MEMORY[0x1865FE2F0](v133, -1, -1);
    }

    swift_beginAccess();
    v134 = sub_185AE35C4(&aBlock, 32);
    v136 = v135;
    swift_endAccess();
    v137 = sub_185B67A4C();
    v138 = v202;
    [v202 setOptionCallerAuditToken_];

    v139 = sub_185B6803C();
    [v138 setOptionCallerAuditTokenUsage_];
LABEL_93:

    v25 = v138;
    v140 = v134;
    v141 = v136;
LABEL_102:
    sub_185AE2FC8(v140, v141);
LABEL_103:
    sub_185B532B4(MEMORY[0x1E69E7CC0]);
    v164 = sub_185B67D7C();

    v165 = swift_allocObject();
    swift_weakInit();
    v166 = swift_allocObject();
    v167 = v192;
    v166[2] = v165;
    v166[3] = v167;
    v168 = v193;
    v166[4] = v203;
    v166[5] = v168;
    v166[6] = v25;
    v207 = sub_185B26DE8;
    v208 = v166;
    *aBlock.val = MEMORY[0x1E69E9820];
    *&aBlock.val[2] = 1107296256;
    *&aBlock.val[4] = sub_185B265F0;
    *&aBlock.val[6] = &block_descriptor_22_1;
    v169 = _Block_copy(&aBlock);
    v170 = v25;

    swift_unknownObjectRetain();

    [v170 evaluatePolicy:v81 options:v164 reply:v169];

    swift_unknownObjectRelease();
    _Block_release(v169);

LABEL_104:
    v171 = *MEMORY[0x1E69E9840];
    return;
  }

  v142 = [objc_opt_self() predicateMatchingLSApplicationIdentity_];
  sub_185ADF590(0, &unk_1EA8CD390, 0x1E69C75D0);
  v143 = v142;
  v144 = v188;
  v145 = sub_185B26DF8(v143);
  if (v144)
  {
  }

  else
  {
    v172 = v145;

    if (v172)
    {
      [v172 auditToken];

      aBlock = atoken;
      v173 = v201;
      if (qword_1EA8CB718 != -1)
      {
        swift_once();
      }

      v174 = sub_185B67B8C();
      __swift_project_value_buffer(v174, qword_1EA8D2278);
      v175 = v199;
      v176 = v198;
      sub_185B26EBC(v173, v199, v198, v68, v31);
      v177 = sub_185B67B6C();
      v178 = sub_185B680AC();
      sub_185B26DBC(v173, v175, v176, v68, v31);
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        *v179 = 67109378;
        swift_beginAccess();
        v204 = aBlock;
        *(v179 + 4) = audit_token_to_pid(&v204);
        *(v179 + 8) = 2114;
        *(v179 + 10) = v173;
        *v180 = v173;
        sub_185B26EBC(v173, v199, v176, v68, v31);
        _os_log_impl(&dword_185AC1000, v177, v178, "Requesting LocalAuthentication bind UI to pid %d from identity %{public}@", v179, 0x12u);
        sub_185AC3F6C(v180);
        MEMORY[0x1865FE2F0](v180, -1, -1);
        MEMORY[0x1865FE2F0](v179, -1, -1);
      }

      swift_beginAccess();
      v134 = sub_185AE35C4(&aBlock, 32);
      v136 = v181;
      swift_endAccess();
      v182 = sub_185B67A4C();
      v138 = v202;
      [v202 setOptionCallerAuditToken_];

      v139 = sub_185B6803C();
      [v138 setOptionCallerAuditTokenUsage_];
      sub_185B26DBC(v173, v199, v176, v68, v31);
      goto LABEL_93;
    }
  }

  v146 = v201;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v147 = sub_185B67B8C();
  __swift_project_value_buffer(v147, qword_1EA8D2278);
  v148 = v199;
  v149 = v198;
  sub_185B26EBC(v146, v199, v198, v68, v31);
  v150 = sub_185B67B6C();
  v151 = sub_185B680AC();
  v152 = v149;
  sub_185B26DBC(v146, v148, v149, v68, v31);
  if (os_log_type_enabled(v150, v151))
  {
    v153 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v153 = 138412290;
    *(v153 + 4) = v146;
    *v154 = v146;
    sub_185B26EBC(v146, v199, v152, v68, v31);
    _os_log_impl(&dword_185AC1000, v150, v151, "Requesting LocalAuthentication bind UI to identity %@", v153, 0xCu);
    sub_185AC3F6C(v154);
    MEMORY[0x1865FE2F0](v154, -1, -1);
    MEMORY[0x1865FE2F0](v153, -1, -1);
  }

  v155 = objc_opt_self();
  *aBlock.val = 0;
  v156 = [v155 archivedDataWithRootObject:v146 requiringSecureCoding:1 error:&aBlock];
  v157 = *aBlock.val;
  if (v156)
  {
    v158 = sub_185B67A5C();
    v160 = v159;

    v161 = sub_185B67A4C();
    v162 = v202;
    [v202 setOptionCallerAuditToken_];

    v163 = sub_185B6803C();
    [v162 setOptionCallerAuditTokenUsage_];
    sub_185B26DBC(v146, v199, v152, v68, v31);

    v140 = v158;
    v141 = v160;
    v25 = v162;
    goto LABEL_102;
  }

  v183 = v157;
  sub_185B6792C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}