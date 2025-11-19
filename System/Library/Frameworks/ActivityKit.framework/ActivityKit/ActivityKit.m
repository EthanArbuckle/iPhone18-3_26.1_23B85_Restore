void sub_1A2C52990(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1A2C52A20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A2C52A20()
{
  if (!qword_1ED709BF8)
  {
    sub_1A2D07F94();
    v0 = sub_1A2D087E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709BF8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11ActivityKit17ProcessDescriptorVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t static Activity.activities.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v49 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v41 - v11;
  v13 = type metadata accessor for ActivityDescriptor();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = v41 - v18;
  v54 = type metadata accessor for ActivityDescriptorContentState();
  v56 = *(v54 - 8);
  v19 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v22 = off_1ED709CF8;
  if (qword_1ED7092D8 != -1)
  {
    swift_once();
  }

  v59 = xmmword_1ED708D20;
  v23 = qword_1ED708D30;
  v58 = xmmword_1ED708D00;
  v57 = xmmword_1ED708D10;
  sub_1A2C53CD8(v22 + 32, &v64);
  v24 = v65;
  v25 = v66;
  __swift_project_boxed_opaque_existential_1(&v64, v65);
  v62[0] = v57;
  aBlock = v58;
  v62[1] = v59;
  v63 = v23;
  v26 = (*(v25 + 24))(&aBlock, v24, v25);
  *&v57 = v22;
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(&v64);
  v28 = *(v1 + 88);
  *&v59 = *(v1 + 80);
  *&v58 = v28;
  v43 = type metadata accessor for Activity();
  v29 = sub_1A2D08374();
  v64 = v29;
  v31 = *(v27 + 16);
  if (!v31)
  {

    return v29;
  }

  v32 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v41[1] = v27;
  v33 = v27 + v32;
  v56 = *(v56 + 72);
  v45 = v62;
  *&v30 = 136446466;
  v42 = v30;
  v53 = v12;
  v44 = v17;
  v55 = v21;
  do
  {
    sub_1A2C7FF28(v33, v21, type metadata accessor for ActivityDescriptorContentState);
    v34 = v60;
    sub_1A2C7FF28(v21, v60, type metadata accessor for ActivityDescriptor);
    v36 = *(v34 + 16);
    v35 = *(v34 + 24);

    ActivityAttributesType.init<A>(from:)(&aBlock);
    if (v36 == aBlock && v35 == *(&aBlock + 1))
    {
    }

    else
    {
      v38 = sub_1A2D08B34();

      if ((v38 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v39 = *(v54 + 28);
    LOBYTE(aBlock) = v21[*(v54 + 20)];
    *&aBlock = sub_1A2C838B4(v60, &v21[v39], &aBlock);
    sub_1A2D08604();
    sub_1A2D085D4();
LABEL_7:
    sub_1A2C69F84(v21, type metadata accessor for ActivityDescriptorContentState);
    sub_1A2C69F84(v60, type metadata accessor for ActivityDescriptor);
    v33 += v56;
    --v31;
  }

  while (v31);

  return v64;
}

uint64_t sub_1A2C537B0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);

  v10 = *(v0 + 32);

  v11 = v0 + v3;
  v12 = type metadata accessor for OpaqueActivityPayload(0);
  if (!(*(*(v12 - 1) + 48))(v11, 1, v12))
  {
    v33 = v8;
    v13 = sub_1A2D07FC4();
    (*(*(v13 - 8) + 8))(v11, v13);
    v14 = v12[5];
    v15 = sub_1A2D07F94();
    v16 = *(v15 - 8);
    v31 = *(v16 + 8);
    v31(v11 + v14, v15);
    sub_1A2C55840(*(v11 + v12[6]), *(v11 + v12[6] + 8));
    v17 = v11 + v12[7];
    sub_1A2C55840(*v17, *(v17 + 8));
    v18 = *(type metadata accessor for OpaqueActivityContent() + 20);
    v32 = *(v16 + 48);
    if (!v32(v17 + v18, 1, v15))
    {
      v31(v17 + v18, v15);
    }

    v19 = v11 + v12[8];
    v20 = type metadata accessor for AlertConfiguration();
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v29 = v7;
      v21 = sub_1A2D07EF4();
      v30 = *(*(v21 - 8) + 8);
      v30(v19, v21);
      v22 = v21;
      v7 = v29;
      v30(v19 + *(v20 + 20), v22);
      v23 = v19 + *(v20 + 24);
      v24 = *(v23 + 8);
    }

    v25 = v12[9];
    v8 = v33;
    if (!v32(v11 + v25, 1, v15))
    {
      v31(v11 + v25, v15);
    }
  }

  v26 = type metadata accessor for ActivityEndingOptions();
  if (!(*(*(v26 - 8) + 48))(v0 + v7, 1, v26))
  {
    v27 = sub_1A2D07F94();
    (*(*(v27 - 8) + 8))(v0 + v7, v27);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t type metadata accessor for ActivityDescriptor()
{
  result = qword_1ED70A0D8;
  if (!qword_1ED70A0D8)
  {
    return swift_getSingletonMetadata();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A2C53CD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ActivityDescriptorContentState()
{
  result = qword_1ED709900;
  if (!qword_1ED709900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityOutputClient.descriptorContentStates(matching:)(__int128 *a1)
{
  v3 = v2;
  v5 = type metadata accessor for ActivityDescriptorContentState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - v11;
  v13 = a1[1];
  v34 = *a1;
  v35 = v13;
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  v17 = *(v1 + 24);
  v18 = *(v17 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  v36 = v17;
  result = sub_1A2D08704();
  if (v2)
  {
    return v3;
  }

  v20 = v37;
  v33 = *(v37 + 16);
  v27[1] = 0;
  if (!v33)
  {
    v3 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v3;
  }

  v30 = v16;
  v31 = v15;
  v32 = v14;
  v21 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = v6;
  while (v21 < *(v20 + 16))
  {
    v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v23 = *(v6 + 72);
    sub_1A2C7BFE4(v20 + v22 + v23 * v21, v12, type metadata accessor for ActivityDescriptorContentState);
    v37 = v34;
    v38 = v35;
    v39 = v32;
    v40 = v31;
    v41 = v30;
    if (ActivityPredicate.matches(descriptor:)(v12))
    {
      sub_1A2C725C0(v12, v10, type metadata accessor for ActivityDescriptorContentState);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A2C7E858(0, *(v3 + 16) + 1, 1);
        v3 = v42;
      }

      v26 = *(v3 + 16);
      v25 = *(v3 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1A2C7E858(v25 > 1, v26 + 1, 1);
        v3 = v42;
      }

      *(v3 + 16) = v26 + 1;
      v10 = v28;
      result = sub_1A2C725C0(v28, v3 + v22 + v26 * v23, type metadata accessor for ActivityDescriptorContentState);
      v6 = v29;
    }

    else
    {
      result = sub_1A2C73F50(v12, type metadata accessor for ActivityDescriptorContentState);
    }

    if (v33 == ++v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1A2C54078(void *a1@<X8>)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for ActivityDescriptorContentState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A2C54EB4();
  if (!v8)
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v39 = sub_1A2D08094();
    __swift_project_value_buffer(v39, qword_1ED709870);
    v40 = sub_1A2D08074();
    v41 = sub_1A2D08684();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1A2C51000, v40, v41, "Remote target does not exist", v42, 2u);
      MEMORY[0x1A58E5180](v42, -1, -1);
    }

    sub_1A2CA0368();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    goto LABEL_22;
  }

  v9 = v8;
  v64[0] = 0;
  v10 = [v8 activityDescriptorContentStatesWithError_];
  v11 = v64[0];
  if (!v10)
  {
    v44 = v11;
    sub_1A2D07ED4();

    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_22:
    v51 = *MEMORY[0x1E69E9840];
    return;
  }

  v60 = v4;
  v12 = sub_1A2D07F44();
  v14 = v13;

  v61 = v12;
  v62 = v14;
  v15 = sub_1A2D07F24();
  v16 = sub_1A2D07E84();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v19 = sub_1A2D07F44();
  v21 = v20;
  sub_1A2C55894();
  sub_1A2D07E64();
  v22 = v19;
  v23 = v21;
  if (!v1)
  {
    sub_1A2C55840(v19, v21);

    v24 = v64[0];
    if (v64[0])
    {

      if (qword_1ED709860 != -1)
      {
        swift_once();
      }

      v25 = sub_1A2D08094();
      __swift_project_value_buffer(v25, qword_1ED709870);

      v26 = sub_1A2D08074();
      v27 = sub_1A2D086A4();

      if (os_log_type_enabled(v26, v27))
      {
        v58 = v27;
        v59 = 0;
        v28 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v64[0] = v56;
        v57 = v28;
        *v28 = 136446210;
        v29 = v24[2];
        v30 = MEMORY[0x1E69E7CC0];
        if (v29)
        {
          v52 = v26;
          v54 = v9;
          v55 = a1;
          v63 = MEMORY[0x1E69E7CC0];
          sub_1A2C7F170(0, v29, 0);
          v30 = v63;
          v31 = *(v60 + 80);
          v53 = v24;
          v32 = v24 + ((v31 + 32) & ~v31);
          v33 = *(v60 + 72);
          do
          {
            sub_1A2C7BFE4(v32, v7, type metadata accessor for ActivityDescriptorContentState);
            v34 = *v7;
            v35 = v7[1];

            sub_1A2C73F50(v7, type metadata accessor for ActivityDescriptorContentState);
            v63 = v30;
            v37 = *(v30 + 16);
            v36 = *(v30 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_1A2C7F170((v36 > 1), v37 + 1, 1);
              v30 = v63;
            }

            *(v30 + 16) = v37 + 1;
            v38 = v30 + 16 * v37;
            *(v38 + 32) = v34;
            *(v38 + 40) = v35;
            v32 += v33;
            --v29;
          }

          while (v29);
          a1 = v55;
          v26 = v52;
          v24 = v53;
        }

        v45 = MEMORY[0x1A58E4220](v30, MEMORY[0x1E69E6158]);
        v47 = v46;

        v48 = sub_1A2C55558(v45, v47, v64);

        v49 = v57;
        *(v57 + 1) = v48;
        _os_log_impl(&dword_1A2C51000, v26, v58, "Fetched descriptors for content states: %{public}s", v49, 0xCu);
        v50 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1A58E5180](v50, -1, -1);
        MEMORY[0x1A58E5180](v49, -1, -1);
        sub_1A2C55840(v61, v62);
        swift_unknownObjectRelease();

        *a1 = v24;
      }

      else
      {
        sub_1A2C55840(v61, v62);
        swift_unknownObjectRelease();

        *a1 = v24;
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  sub_1A2C55840(v22, v23);
  swift_unexpectedError();
  __break(1u);
}

void sub_1A2C545F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v18 - v4);
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  sub_1A2C5496C();
  v13 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v13, v1);
  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x1E69CA968])
  {
    (*(v2 + 8))(v5, v1);
    return;
  }

  (*(v2 + 96))(v5, v1);
  v1 = *v5;
  if ([*v5 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C54E38(v18, &qword_1EB0A04E0, &unk_1A2D0AA70);
    return;
  }

  memset(v18, 0, sizeof(v18));
  sub_1A2C54E38(v18, &qword_1EB0A04E0, &unk_1A2D0AA70);
  [v1 activate];
  if (qword_1ED709860 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1ED709870);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D086A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "Activated ActivityOutputClient connection", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }
}

void sub_1A2C5496C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = v28 - v7;
  v9 = sub_1A2D08344();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = sub_1A2D08364();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v16 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v8, &v0[v16], v1);
  v17 = (*(v2 + 88))(v8, v1);
  if (v17 == *MEMORY[0x1E69CA978])
  {
    (*(v2 + 8))(v8, v1);
    return;
  }

  v18 = v17;
  v19 = *MEMORY[0x1E69CA968];
  (*(v2 + 8))(v8, v1);
  if (v18 != v19)
  {
    v20 = v0;
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C58760();
    v21 = sub_1A2D08784();
    if (v21)
    {
      v22 = v21;
      v29 = v19;
      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1A2C5A184;
      *(v24 + 24) = v23;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_87;
      v25 = _Block_copy(aBlock);
      v28[1] = v20;

      [v22 configureConnection_];
      _Block_release(v25);
      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if ((v25 & 1) == 0)
      {
        *v6 = v22;
        (*(v2 + 104))(v6, v29, v1);
        swift_beginAccess();
        v26 = *(v2 + 40);
        v27 = v22;
        v26(&v20[v16], v6, v1);
        swift_endAccess();
        sub_1A2C5A5A0();

        return;
      }

      goto LABEL_11;
    }

    (*(v2 + 104))(v6, *MEMORY[0x1E69CA970], v1);
    swift_beginAccess();
    (*(v2 + 40))(&v0[v16], v6, v1);
    swift_endAccess();
  }
}

uint64_t sub_1A2C54E38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1A2C54EB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v20 - v4;
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v13 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v13, v1);
  v14 = (*(v2 + 88))(v5, v1);
  if (v14 == *MEMORY[0x1E69CA978])
  {
    (*(v2 + 96))(v5, v1);
    return *v5;
  }

  if (v14 != *MEMORY[0x1E69CA968])
  {
    if (v14 != *MEMORY[0x1E69CA970])
    {
      (*(v2 + 8))(v5, v1);
    }

    return 0;
  }

  (*(v2 + 96))(v5, v1);
  v1 = *v5;
  sub_1A2C545F0();
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C0, &qword_1A2D0AA20);
    if (swift_dynamicCast())
    {

      return v20[1];
    }
  }

  else
  {
    sub_1A2C54E38(v23, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1ED709860 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v16 = sub_1A2D08094();
  __swift_project_value_buffer(v16, qword_1ED709870);
  v17 = sub_1A2D08074();
  v18 = sub_1A2D08694();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A2C51000, v17, v18, "ActivityOutputClient: Failed to cast connection to server interface protocol", v19, 2u);
    MEMORY[0x1A58E5180](v19, -1, -1);
  }

  return 0;
}

uint64_t XPCCodableActivityDescriptorContentStates.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EB8, &unk_1A2D172C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C55468();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  sub_1A2C554BC(&qword_1EB09EE90, &unk_1EB09F050);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C55468()
{
  result = qword_1ED7093A8;
  if (!qword_1ED7093A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7093A8);
  }

  return result;
}

uint64_t sub_1A2C554BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C60E50(a2, type metadata accessor for ActivityDescriptorContentState);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2C55558(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A2C57914(v11, 0, 0, 1, a1, a2);
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
    sub_1A2C57B10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_1A2C55624(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1168, &qword_1A2D0F3A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_WORD *storeEnumTagSinglePayload for ActivityEndingOptions.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ActivityEndingOptions.CodingKeys(unsigned int *a1, int a2)
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

uint64_t OpaqueObjectiveCBridgable<>._bridgeToObjectiveC()(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D07EB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  v6 = *(a2 + 16);
  v7 = sub_1A2D07E94();
  v9 = v8;
  v10 = sub_1A2D07F24();
  sub_1A2C55840(v7, v9);

  return v10;
}

uint64_t sub_1A2C55840(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1A2C55894()
{
  result = qword_1ED709390;
  if (!qword_1ED709390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709390);
  }

  return result;
}

uint64_t XPCCodableActivityDescriptorContentStates.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1EC0, &qword_1A2D172D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C55468();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C554BC(&qword_1ED7090C8, qword_1ED7090F0);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

uint64_t sub_1A2C55B04(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A2C55B50(a1, a2);
  sub_1A2C57A24(&unk_1F1578FC8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1A2C55B50(uint64_t a1, unint64_t a2)
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

  v6 = sub_1A2C55624(v5, 0);
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

  result = sub_1A2D088B4();
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
        v10 = sub_1A2D084A4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A2C55624(v10, 0);
        result = sub_1A2D08854();
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

unint64_t sub_1A2C55C84()
{
  result = qword_1ED709FF8;
  if (!qword_1ED709FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709FF8);
  }

  return result;
}

uint64_t sub_1A2C55CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for Activity();
  result = sub_1A2D08054();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A2C55D58(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for ActivityDescriptor();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1A2C55E60()
{
  sub_1A2C55FE8();
  if (v0 <= 0x3F)
  {
    sub_1A2C560A0(319, qword_1ED70A078, &type metadata for ActivityContentSource, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A2D07F94();
      if (v2 <= 0x3F)
      {
        sub_1A2C560A0(319, &qword_1ED70A008, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A2C560A0(319, qword_1ED70A010, &type metadata for ActivityProtectionClass, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2C55FE8()
{
  if (!qword_1ED709FF0)
  {
    sub_1A2C5604C();
    v0 = sub_1A2D083C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709FF0);
    }
  }
}

unint64_t sub_1A2C5604C()
{
  result = qword_1ED70A000;
  if (!qword_1ED70A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED70A000);
  }

  return result;
}

void sub_1A2C560A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A2C56108()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A2C56150()
{
  v0 = [objc_allocWithZone(type metadata accessor for ActivityPushTokenClient()) init];
  type metadata accessor for ActivityOutputClient();
  swift_allocObject();
  v1 = ActivityOutputClient.init()();
  v2 = [objc_allocWithZone(type metadata accessor for ActivityInputClient()) init];
  v3 = [objc_allocWithZone(type metadata accessor for ActivityFrequentUpdatesObservationClient()) init];
  v4 = v0;

  v5 = sub_1A2C5CF90(v4, v1, v2, v3);

  off_1ED709CF8 = v5;
}

uint64_t sub_1A2C56268()
{
  v1 = sub_1A2D086E4();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1A2D08314();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__pushTokenPublisher;
  v9 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2C5671C(MEMORY[0x1E69E7CC0]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E00, qword_1A2D0E950);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v0[v8] = sub_1A2D081B4();
  v13 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens] = MEMORY[0x1E69E7CC8];
  v25 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue;
  v24[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082E4();
  aBlock[0] = v9;
  sub_1A2C56A30(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8090], v28);
  *&v0[v25] = sub_1A2D08724();
  v14 = *&v0[v13];
  *&v0[v13] = 0;

  v15 = type metadata accessor for ActivityPushTokenClient();
  v30.receiver = v0;
  v30.super_class = v15;
  v16 = objc_msgSendSuper2(&v30, sel_init);
  v17 = *&v16[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A2C56BC8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_53_0;
  v20 = _Block_copy(aBlock);
  v21 = v16;
  v22 = v17;

  dispatch_sync(v22, v20);

  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C566CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5671C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
    v3 = sub_1A2D08994();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1A2C5E63C(v7, v8);
      result = sub_1A2C64868(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2C56834()
{
  result = type metadata accessor for ActivityDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OpaqueActivityContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpaqueActivityContent()
{
  result = qword_1ED709BE8;
  if (!qword_1ED709BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C5691C()
{
  sub_1A2C52A20();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A2C569A0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1A2C569E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C56A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C56A78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A2C56C1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1A2C56C6C()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1A2C56EB0();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection);
  if (!v8)
  {
    return;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C599D8(v13);
    return;
  }

  memset(v13, 0, sizeof(v13));
  sub_1A2C599D8(v13);
  [v1 activate];
  if (qword_1ED7097E8 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_1A2D08094();
  __swift_project_value_buffer(v9, qword_1ED7097F0);
  v10 = sub_1A2D08074();
  v11 = sub_1A2D086A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A2C51000, v10, v11, "Activated ActivityPushTokenClient connection", v12, 2u);
    MEMORY[0x1A58E5180](v12, -1, -1);
  }
}

void sub_1A2C56EB0()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C5715C();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2C5738C;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_29_2;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C597A4();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C5715C()
{
  result = qword_1ED709D08;
  if (!qword_1ED709D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D08);
  }

  return result;
}

uint64_t sub_1A2C571B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D18 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2C57258()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D20);
  __swift_project_value_buffer(v0, qword_1ED709D20);
  return sub_1A2D08004();
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

uint64_t sub_1A2C57338(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A2C573C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1A2C573EC(void *a1, char *a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v21 = sub_1A2C577FC;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C577A8;
  v20 = &block_descriptor_32_0;
  v6 = _Block_copy(&v17);
  v7 = &unk_1F15895A0;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v21 = sub_1A2C58E74;
  v22 = v12;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_38_2;
  v13 = _Block_copy(&v17);
  v14 = a2;

  [a1 setActivationHandler_];
  _Block_release(v13);
  v21 = sub_1A2CC4998;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_41_3;
  v15 = _Block_copy(&v17);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v21 = sub_1A2CC49A4;
  v22 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A2C58E8C;
  v20 = &block_descriptor_44_2;
  v16 = _Block_copy(&v17);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
}

id sub_1A2C577A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_1A2C577FC(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

unint64_t sub_1A2C57914(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A2C55B04(a5, a6);
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
    result = sub_1A2D088B4();
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

uint64_t sub_1A2C57A24(uint64_t result)
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

  result = sub_1A2CCEFF8(result, v12, 1, v3);
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

uint64_t sub_1A2C57B10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1A2C57B6C()
{
  sub_1A2C59D1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A2C57D70(uint64_t a1)
{
  v44 = a1;
  v41 = sub_1A2D086E4();
  v2 = *(v41 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2D086C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A2D08314();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01A0, &qword_1A2D0A898);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v1[v10] = sub_1A2D08144();
  v14 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__activityPublisher;
  v15 = MEMORY[0x1E69E7CC0];
  aBlock[0] = sub_1A2C59ED4(MEMORY[0x1E69E7CC0]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A02F0, &unk_1A2D0AA60);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1A2D081B4();
  v43 = v1;
  *&v1[v14] = v19;
  v20 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities] = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_serverStartupToken] = -1;
  *&v1[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions] = v20;
  v42 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue;
  v40[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v40[5] = "utQueue";
  sub_1A2D082E4();
  aBlock[0] = v15;
  v40[4] = sub_1A2C586F0(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  v21 = *MEMORY[0x1E69E8090];
  v22 = v2 + 104;
  v23 = *(v2 + 104);
  v40[2] = v22;
  v40[0] = v5;
  v24 = v41;
  v23(v5, v21, v41);
  v25 = sub_1A2D08724();
  v26 = v43;
  *&v43[v42] = v25;
  v42 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_calloutQueue;
  sub_1A2D082E4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2D08804();
  v23(v40[0], v21, v24);
  *&v26[v42] = sub_1A2D08724();
  v27 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_target;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E8, &qword_1A2D0AA58);
  v29 = *(v28 - 8);
  v30 = v44;
  (*(v29 + 16))(&v26[v27], v44, v28);
  v31 = type metadata accessor for Singleton();
  v46.receiver = v26;
  v46.super_class = v31;
  v32 = objc_msgSendSuper2(&v46, sel_init);
  v33 = *&v32[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue];
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1A2C5873C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_78;
  v36 = _Block_copy(aBlock);
  v37 = v32;
  v38 = v33;

  dispatch_sync(v38, v36);
  _Block_release(v36);

  (*(v29 + 8))(v30, v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if ((v28 & 1) == 0)
  {
    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C58354()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C583BC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C583F4()
{
  if (!qword_1ED709648)
  {
    type metadata accessor for OpaqueActivityPayload(255);
    sub_1A2C59E7C();
    v0 = sub_1A2D083C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709648);
    }
  }
}

void sub_1A2C58460()
{
  type metadata accessor for ActivityDescriptor();
  if (v0 <= 0x3F)
  {
    sub_1A2C583F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A2C584FC()
{
  sub_1A2D07FC4();
  if (v0 <= 0x3F)
  {
    sub_1A2D07F94();
    if (v1 <= 0x3F)
    {
      type metadata accessor for OpaqueActivityContent();
      if (v2 <= 0x3F)
      {
        sub_1A2C58638(319, &qword_1ED709990, type metadata accessor for AlertConfiguration, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A2C58638(319, &qword_1ED709BF8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A2C58638(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A2C5869C()
{
  result = qword_1ED7098A0;
  if (!qword_1ED7098A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7098A0);
  }

  return result;
}

uint64_t sub_1A2C586F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A2C58760()
{
  result = qword_1ED709D38;
  if (!qword_1ED709D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D38);
  }

  return result;
}

uint64_t sub_1A2C587B4()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D50);
  __swift_project_value_buffer(v0, qword_1ED709D50);
  return sub_1A2D08004();
}

void sub_1A2C58800()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  sub_1A2C58A64();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection);
  if (!v8)
  {
    return;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();

    sub_1A2C54E38(v13, &qword_1EB0A04E0, &unk_1A2D0AA70);
    return;
  }

  memset(v13, 0, sizeof(v13));
  sub_1A2C54E38(v13, &qword_1EB0A04E0, &unk_1A2D0AA70);
  [v1 activate];
  if (qword_1ED709838 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = sub_1A2D08094();
  __swift_project_value_buffer(v9, qword_1ED709840);
  v10 = sub_1A2D08074();
  v11 = sub_1A2D086A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A2C51000, v10, v11, "Activated ActivityClient connection", v12, 2u);
    MEMORY[0x1A58E5180](v12, -1, -1);
  }
}

void sub_1A2C58A64()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C58D10();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2C58E84;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_18;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C5B104();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C58D10()
{
  result = qword_1ED709D70;
  if (!qword_1ED709D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709D70);
  }

  return result;
}

uint64_t sub_1A2C58D64()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709D90);
  __swift_project_value_buffer(v0, qword_1ED709D90);
  return sub_1A2D08004();
}

uint64_t sub_1A2C58DB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D80 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C58E8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1A2C58EF4(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v18 = sub_1A2C5CCEC;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_21;
  v10 = _Block_copy(&v14);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_1A2CA15EC;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_25;
  v12 = _Block_copy(&v14);

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v18 = sub_1A2CA0630;
  v19 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A2C58E8C;
  v17 = &block_descriptor_28;
  v13 = _Block_copy(&v14);
  [a1 setInvalidationHandler_];
  _Block_release(v13);
}

uint64_t sub_1A2C59218()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1A2C59250(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D08344();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1ED7097E8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_1A2D08094();
  __swift_project_value_buffer(v10, qword_1ED7097F0);
  v11 = sub_1A2D08074();
  v12 = sub_1A2D08674();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1A2C51000, v11, v12, "Push Service: Activated", v13, 2u);
    MEMORY[0x1A58E5180](v13, -1, -1);
  }

  sub_1A2C59424();
}

void sub_1A2C59424()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_8:
    v14 = sub_1A2D08094();
    __swift_project_value_buffer(v14, qword_1ED7097F0);
    v15 = v1;
    v16 = sub_1A2D08074();
    v17 = sub_1A2D08684();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136446210;
      v25[2] = v1;
      v20 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
      v21 = sub_1A2D08454();
      v23 = sub_1A2C55558(v21, v22, v26);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1A2C51000, v16, v17, "Could not register for push tokens: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1A58E5180](v19, -1, -1);
      MEMORY[0x1A58E5180](v18, -1, -1);
    }

    else
    {
    }

    goto LABEL_11;
  }

  v8 = sub_1A2C5ADB4();
  if (!v8)
  {
LABEL_11:
    v24 = *MEMORY[0x1E69E9840];
    return;
  }

  v26[0] = 0;
  v9 = [v8 registerForPushTokensWithError_];
  swift_unknownObjectRelease();
  v10 = v26[0];
  if (!v9)
  {
    v25[1] = v26[0];
    v13 = v26[0];
    v1 = sub_1A2D07ED4();

    swift_willThrow();
    if (qword_1ED7097E8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v11 = *MEMORY[0x1E69E9840];

  v12 = v10;
}

void sub_1A2C597A4()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CC4CEC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_20;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED7097E8 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED7097F0);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

uint64_t sub_1A2C5999C()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C599D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04E0, &unk_1A2D0AA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A2C59A40()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED7097F0);
  __swift_project_value_buffer(v0, qword_1ED7097F0);
  return sub_1A2D08084();
}

uint64_t ActivityOutputClient.init()()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 32) = v1;
  *(v0 + 40) = 2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  if (qword_1ED709888 != -1)
  {
    swift_once();
  }

  v3 = off_1ED709898;
  os_unfair_lock_lock(off_1ED709898 + 6);
  v4 = *(v3 + 2) + 1;
  *(v3 + 2) = v4;
  os_unfair_lock_unlock(v3 + 6);
  *(v0 + 16) = v4;
  if (qword_1ED709C30 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED709C40;
  *(v0 + 24) = qword_1ED709C40;
  v6 = v5;
  return v0;
}

uint64_t sub_1A2C59C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0430, &unk_1A2D0AB00);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ED709898 = result;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED709960[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_1ED709960);
    }
  }
}

id sub_1A2C59C9C()
{
  result = [objc_allocWithZone(type metadata accessor for Singleton()) init];
  qword_1ED709C40 = result;
  return result;
}

uint64_t type metadata accessor for Singleton()
{
  result = qword_1ED709C18;
  if (!qword_1ED709C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A2C59D1C()
{
  if (!qword_1ED709AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A02C0, &qword_1A2D0AA20);
    v0 = sub_1A2D08064();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED709AD8);
    }
  }
}

uint64_t type metadata accessor for AlertConfiguration()
{
  result = qword_1ED709998;
  if (!qword_1ED709998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C59DEC()
{
  result = sub_1A2D07EF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A2C59E7C()
{
  result = qword_1ED7097B0;
  if (!qword_1ED7097B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7097B0);
  }

  return result;
}

unint64_t sub_1A2C59ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0770, &qword_1A2D0BDB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0778, &qword_1A2D0D120);
    v8 = sub_1A2D08994();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1A2C6BD18(v10, v6, &qword_1EB0A0770, &qword_1A2D0BDB8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1A2C64868(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for SubscribedActivity(0);
      result = sub_1A2CAB604(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for SubscribedActivity);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2C5A0BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C5A18C(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v19 = sub_1A2C5A514;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C577A8;
  v18 = &block_descriptor_96;
  v6 = _Block_copy(&v15);
  v7 = &unk_1F1588F70;

  v8 = objc_opt_self();
  v9 = [v8 protocolForProtocol:v7 interpreter:v6];
  _Block_release(v6);

  [v5 setClient_];
  v10 = [v8 protocolForProtocol_];
  [v5 setServer_];

  v11 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1A2C5B438;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_99;
  v12 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v12);
  v19 = sub_1A2C9FCE0;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_102;
  v13 = _Block_copy(&v15);
  [a1 setInterruptionHandler_];
  _Block_release(v13);
  v19 = sub_1A2C9FCEC;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A2C58E8C;
  v18 = &block_descriptor_105;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

id sub_1A2C5A514(void *a1)
{
  [a1 selector];
  if (sub_1A2D07FD4())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_1A2C5A5A0()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA0360;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_93;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709870);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

uint64_t sub_1A2C5A798()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5A7D4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709870);
  __swift_project_value_buffer(v0, qword_1ED709870);
  return sub_1A2D08084();
}

uint64_t sub_1A2C5A8A0()
{
  v22 = sub_1A2D086E4();
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_serverStartupToken] = -1;
  v21 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue;
  v20[1] = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5AD40(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C5ACDC();
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v22);
  *&v0[v21] = sub_1A2D08724();
  *&v0[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient__queue_ephemeralActivityRequests] = MEMORY[0x1E69E7CC8];
  v10 = *&v0[v9];
  *&v0[v9] = 0;

  v11 = type metadata accessor for ActivityInputClient();
  v24.receiver = v0;
  v24.super_class = v11;
  v12 = objc_msgSendSuper2(&v24, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1A2C5AD90;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_37;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  dispatch_sync(v18, v16);

  _Block_release(v16);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if ((v16 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C5AC8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5ACDC()
{
  result = qword_1ED709E40;
  if (!qword_1ED709E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709E40);
  }

  return result;
}

uint64_t sub_1A2C5AD40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C5ADB4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  v8 = (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2C56C6C(v8);
  v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_connection);
  if (!v9)
  {
    if (qword_1ED7097E8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A2D08094();
    __swift_project_value_buffer(v10, qword_1ED7097F0);
    v1 = sub_1A2D08074();
    v11 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v11, "ActivityPushTokenClient: Failed to establish a connection", v12, 2u);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v9;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E08, &qword_1A2D0E968);
    if (swift_dynamicCast())
    {

      return v18[1];
    }
  }

  else
  {
    sub_1A2C599D8(v21);
  }

  if (qword_1ED7097E8 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1ED7097F0);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D08694();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "ActivityPushTokenClient: Failed to cast connection to server interface protocol", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

LABEL_18:
  return 0;
}

void sub_1A2C5B104()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CA15E4;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709840);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

uint64_t sub_1A2C5B2FC()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709840);
  __swift_project_value_buffer(v0, qword_1ED709840);
  return sub_1A2D08084();
}

uint64_t storeEnumTagSinglePayload for ActivitySubscriptionOptions(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1A2C5B444(uint64_t a1, const char *a2)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709870);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

id sub_1A2C5B558()
{
  result = [objc_allocWithZone(_s11ActivityKit9SingletonCMa_1()) init];
  qword_1ED709988 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for OutputClientError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A2C5B718()
{
  v33 = sub_1A2D086E4();
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A2D086C4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue;
  v9 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v31[0] = "requent-updates-observation";
  v31[1] = v9;
  sub_1A2D082E4();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v33);
  *&v0[v32] = sub_1A2D08724();
  v10 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities] = 0;
  v11 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v0[v11] = sub_1A2D08144();
  v15 = *&v0[v10];
  *&v0[v10] = 0;

  v16 = _s11ActivityKit9SingletonCMa_1();
  v40.receiver = v0;
  v40.super_class = v16;
  v17 = objc_msgSendSuper2(&v40, sel_init);
  v18 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue;
  v19 = *&v17[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A2C5BE8C;
  *(v21 + 24) = v20;
  v38 = sub_1A2C56C14;
  v39 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1A2C56C44;
  v37 = &block_descriptor_41_1;
  v22 = _Block_copy(&aBlock);
  v23 = v17;
  v24 = v19;

  dispatch_sync(v24, v22);

  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v17[v18];
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1A2C5C99C;
    *(v28 + 24) = v27;
    v38 = sub_1A2C5C998;
    v39 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1A2C56C44;
    v37 = &block_descriptor_51;
    v29 = _Block_copy(&aBlock);
    v30 = v26;

    dispatch_sync(v30, v29);

    _Block_release(v29);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return v23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C5BC4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1A2C5BCA4()
{
  result = qword_1ED709E30;
  if (!qword_1ED709E30)
  {
    sub_1A2D086C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709E30);
  }

  return result;
}

void sub_1A2C5BCFC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    sub_1A2C5BEBC();
    v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection);
    if (v8)
    {
      v9 = v8;
      if ([v9 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C599D8(v10);
      }

      else
      {
        memset(v10, 0, sizeof(v10));
        sub_1A2C599D8(v10);
        [v9 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2C5BEBC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2C5C168();
    v9 = v0;
    v10 = sub_1A2D08784();
    if (v10)
    {
      v11 = *&v0[v8];
      *&v9[v8] = v10;
      v12 = v10;

      v13 = swift_allocObject();
      *(v13 + 16) = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1A2C5C378;
      *(v14 + 24) = v13;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_23_0;
      v15 = _Block_copy(aBlock);
      v9;

      [v12 configureConnection_];
      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if ((v15 & 1) == 0)
      {
        sub_1A2C5C688();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

unint64_t sub_1A2C5C168()
{
  result = qword_1ED7099E0;
  if (!qword_1ED7099E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7099E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OutputClientError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1A2C5C254()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED709B08);
  __swift_project_value_buffer(v0, qword_1ED709B08);
  return sub_1A2D08004();
}

uint64_t sub_1A2C5C2A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709B08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1A2C5C380(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2C5D834;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_26;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CBC080;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_29_1;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CBC08C;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_32;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2C5C688()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CBC57C;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_7;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1ED709810 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1ED709820);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

uint64_t sub_1A2C5C880()
{
  MEMORY[0x1A58E5250](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1A2C5C8D8(uint64_t a1)
{
  result = sub_1A2C5C9A4();
  if (result)
  {
    v3 = [result activitiesExceedingReducedPushBudget];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1A2D08654();

      v6 = sub_1A2C5CDE8(v5);
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
    swift_beginAccess();
    v8 = *(a1 + v7);
    *(a1 + v7) = v6;
  }

  return result;
}

uint64_t sub_1A2C5C9A4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2C5BCFC();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_connection);
  if (!v8)
  {
    if (qword_1ED709810 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED709820);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "Frequent updates observation service: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B28, &qword_1A2D0D320);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C599D8(v20);
  }

  if (qword_1ED709810 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED709820);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "Frequent updates observation Service: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
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

void sub_1A2C5CCF8(uint64_t a1, const char *a2)
{
  if (qword_1ED709838 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709840);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

uint64_t sub_1A2C5CDE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
    v2 = sub_1A2D08844();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1A2CBC584(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1A2CBC3D0(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1A2C5CF90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v24 = a3;
  v23 = sub_1A2D086E4();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_1A2D086C4() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = *(*(sub_1A2D08314() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v22 = type metadata accessor for ActivityOutputClient();
  v30[3] = v22;
  v30[4] = &protocol witness table for ActivityOutputClient;
  v21 = a2;
  v30[0] = a2;
  type metadata accessor for ActivityManager();
  v11 = swift_allocObject();
  v11[2] = 0;
  v12 = sub_1A2C5D300();
  v20[0] = "bservationClient";
  v20[1] = v12;

  sub_1A2D082E4();
  *&v27 = MEMORY[0x1E69E7CC0];
  sub_1A2C5BCA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v23);
  v11[12] = sub_1A2D08724();
  sub_1A2C53CD8(v30, (v11 + 4));
  v13 = v24;
  v11[3] = v24;
  type metadata accessor for ActivityPushTokenManager();
  v14 = swift_allocObject();
  v15 = v13;
  v11[10] = sub_1A2C5D370(v25, v14);
  v28 = v22;
  v29 = &protocol witness table for ActivityOutputClient;
  *&v27 = v21;
  type metadata accessor for ActivityInstanceManager();
  v16 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = sub_1A2C5E3DC(MEMORY[0x1E69E7CC0]);
  sub_1A2C5E3C4(&v27, v16 + 32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v11[9] = v16;
  v11[11] = v26;
  return v11;
}

unint64_t sub_1A2C5D300()
{
  result = qword_1ED709E20;
  if (!qword_1ED709E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED709E20);
  }

  return result;
}

uint64_t sub_1A2C5D370(uint64_t a1, uint64_t a2)
{
  v11[3] = type metadata accessor for ActivityPushTokenClient();
  v11[4] = &off_1F157C918;
  v11[0] = a1;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(a2 + 16) = v4;
  *(a2 + 64) = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = sub_1A2C5671C(MEMORY[0x1E69E7CC0]);
  *(a2 + 80) = xmmword_1A2D0AC30;
  *(a2 + 96) = sub_1A2C5D478(v6);
  *(a2 + 104) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0668, qword_1A2D0B490);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(a2 + 112) = sub_1A2D081B4();
  sub_1A2C53CD8(v11, a2 + 24);
  sub_1A2C5D594();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return a2;
}

unint64_t sub_1A2C5D478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
    v3 = sub_1A2D08994();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_1A2C64868(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2C5D594()
{
  sub_1A2C53CD8(v0 + 24, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0660, &qword_1A2D0B488);
  sub_1A2C56A78(&qword_1ED709C10, &qword_1EB0A0660, &qword_1A2D0B488);
  sub_1A2D08284();

  __swift_destroy_boxed_opaque_existential_1(v4);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();
}

uint64_t sub_1A2C5D6EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5D79C()
{
  v2 = *(*v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__pushTokenPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E00, qword_1A2D0E950);
  sub_1A2C56A78(&qword_1ED709C08, &qword_1EB0A0E00, qword_1A2D0E950);
  return sub_1A2D081F4();
}

void sub_1A2C5D840(uint64_t a1, const char *a2)
{
  if (qword_1ED709810 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED709820);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

uint64_t sub_1A2C5D930()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED709820);
  __swift_project_value_buffer(v0, qword_1ED709820);
  return sub_1A2D08084();
}

uint64_t sub_1A2C5D9B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1[9];
  a1[9] = MEMORY[0x1E69E7CC8];

  v5 = a1[10];
  v6 = a1[11];
  *(a1 + 5) = xmmword_1A2D0AC30;
  sub_1A2C5DE40(v5, v6);
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);

  v61 = a1;
  swift_beginAccess();
  v11 = 0;
  v12 = (v8 + 63) >> 6;
  v59 = v12;
  v60 = a2 + 64;
  v58 = a2;
  while (v10)
  {
    v16 = v11;
LABEL_12:
    v17 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v18 = (v16 << 10) | (16 * v17);
    v19 = (*(a2 + 48) + v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(a2 + 56) + v18);
    v24 = *v22;
    v23 = v22[1];

    sub_1A2C5E63C(v24, v23);
    if (sub_1A2D084B4())
    {

      v13 = v61[10];
      v14 = v61[11];
      v61[10] = v24;
      v61[11] = v23;
      sub_1A2C5E63C(v24, v23);
      sub_1A2C5DE40(v13, v14);
      v15 = v61[14];
      sub_1A2D08174();
LABEL_5:
      sub_1A2C55840(v24, v23);
      goto LABEL_6;
    }

    swift_beginAccess();
    v25 = v23;
    sub_1A2C5E63C(v24, v23);
    v26 = v61[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v20;
    v29 = isUniquelyReferenced_nonNull_native;
    v30 = v61[9];
    v61[9] = 0x8000000000000000;
    v31 = v28;
    v33 = sub_1A2C64868(v28, v21);
    v34 = v30[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_30;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if ((v29 & 1) == 0)
      {
        sub_1A2CB3DDC();
      }

      v38 = v31;
    }

    else
    {
      sub_1A2CB30BC(v36, v29);
      v38 = v31;
      v39 = sub_1A2C64868(v31, v21);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_32;
      }

      v33 = v39;
    }

    v23 = v25;
    v12 = v59;
    if (v37)
    {
      v41 = (v30[7] + 16 * v33);
      v42 = *v41;
      v43 = v41[1];
      *v41 = v24;
      v41[1] = v23;
      sub_1A2C55840(v42, v43);
    }

    else
    {
      v30[(v33 >> 6) + 8] |= 1 << v33;
      v44 = (v30[6] + 16 * v33);
      *v44 = v38;
      v44[1] = v21;
      v45 = (v30[7] + 16 * v33);
      *v45 = v24;
      v45[1] = v23;
      v46 = v30[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_31;
      }

      v30[2] = v48;
    }

    v61[9] = v30;
    swift_endAccess();
    v49 = v61[12];
    a2 = v58;
    if (*(v49 + 16))
    {
      v50 = v61[12];

      v51 = sub_1A2C64868(v38, v21);
      v53 = v52;

      if (v53)
      {
        v54 = (*(v49 + 56) + 16 * v51);
        v55 = *v54;
        v56 = v54[1];
        swift_unknownObjectRetain();

        swift_getObjectType();
        sub_1A2D081E4();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }
    }

    sub_1A2C55840(v24, v23);

LABEL_6:
    v11 = v16;
    v7 = v60;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v10 = *(v7 + 8 * v16);
    ++v11;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

uint64_t sub_1A2C5DDAC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(*(result + 16) + 16);
    v4 = result;

    os_unfair_lock_lock(v3);
    sub_1A2C5D9B8(v4, v1);
    os_unfair_lock_unlock(v3);
  }

  return result;
}

uint64_t sub_1A2C5DE40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A2C55840(a1, a2);
  }

  return a1;
}

uint64_t sub_1A2C5DE54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A2D082D4();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A2D08314();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2D08344();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v2[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue];
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  v19 = sub_1A2D08364();
  (*(v13 + 8))(v16, v12);
  if (v19)
  {
    if (qword_1ED7097E8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v35[1] = v18;
  v20 = sub_1A2D08094();
  __swift_project_value_buffer(v20, qword_1ED7097F0);

  v21 = sub_1A2D08074();
  v22 = sub_1A2D086A4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35[0] = v4;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = sub_1A2D083A4();
    v28 = sub_1A2C55558(v26, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_1A2C51000, v21, v22, "Push tokens changed: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v29 = v25;
    v4 = v35[0];
    MEMORY[0x1A58E5180](v29, -1, -1);
    MEMORY[0x1A58E5180](v23, -1, -1);
  }

  v30 = *&v2[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens];
  *&v2[OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens] = a1;

  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = a1;
  aBlock[4] = sub_1A2C5E5FC;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_9;
  v32 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v33 = v2;
  sub_1A2D082E4();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1A2C56A30(&qword_1ED709AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v11, v7, v32);
  _Block_release(v32);
  (*(v38 + 8))(v7, v4);
  (*(v36 + 8))(v11, v37);
}

uint64_t sub_1A2C5E360()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A2C5E3C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1A2C5E3DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
    v3 = sub_1A2D08994();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A2C6BD18(v4, &v13, &qword_1EB0A07B0, qword_1A2D0BDE8);
      v5 = v13;
      v6 = v14;
      result = sub_1A2C64868(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1A2C5E3C4(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A2C5E510()
{
  qword_1ED708D30 = 0;
  xmmword_1ED708D10 = 0u;
  xmmword_1ED708D20 = 0u;
  xmmword_1ED708D00 = 0u;

  v0 = xmmword_1ED708D10;
  xmmword_1ED708D10 = 0u;
  xmmword_1ED708D20 = 0u;
  qword_1ED708D30 = 0;

  return sub_1A2C5E574(v0, *(&v0 + 1));
}

uint64_t sub_1A2C5E574(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A2C5E5B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1A2C5E5FC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__pushTokenPublisher);
  return sub_1A2D08174();
}

uint64_t sub_1A2C5E63C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A2C5E690()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1ED708BC0);
  __swift_project_value_buffer(v0, qword_1ED708BC0);
  return sub_1A2D08084();
}

uint64_t static Activity.activityUpdates.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  sub_1A2C5E714(*(v0 + 80), *(v0 + 80), *(v0 + 88));
  type metadata accessor for Activity();

  return sub_1A2D08044();
}

uint64_t sub_1A2C5E7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 72);

  v10 = a4(a1, a2, a3);

  return v10;
}

uint64_t sub_1A2C5E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1A2C5E898();
  v5 = a4();

  return v5;
}

uint64_t sub_1A2C5E898()
{
  v1 = *(*(v0 + 16) + 16);

  os_unfair_lock_lock(v1);
  sub_1A2C5E93C(v0, &v3);
  os_unfair_lock_unlock(v1);

  return v3;
}

uint64_t sub_1A2C5E93C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1A2D08CA4();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16))
  {
    v8 = *(a1 + 24);

    v9 = sub_1A2C64868(v4, v6);
    if (v10)
    {
      sub_1A2C53CD8(*(v7 + 56) + 40 * v9, v20);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0688, &qword_1A2D0B760);
      type metadata accessor for AttributeScopedActivityInstanceStore();
      if (swift_dynamicCast())
      {

        v12 = v19;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (qword_1ED708BB8 != -1)
  {
    swift_once();
  }

  v21 = a2;
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED708BC0);

  v14 = sub_1A2D08074();
  v15 = sub_1A2D086A4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1A2C55558(v4, v6, v20);
    _os_log_impl(&dword_1A2C51000, v14, v15, "Creating attributes table for attribute type: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1A58E5180](v17, -1, -1);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

  v18 = type metadata accessor for AttributeScopedActivityInstanceStore();
  sub_1A2C53CD8(a1 + 32, v20);
  swift_allocObject();

  v12 = sub_1A2C5ECB8(v4, v6, v20);
  v20[3] = v18;
  v20[4] = &off_1F157A7C0;
  v20[0] = v12;
  swift_beginAccess();

  sub_1A2C64638(v20, v4, v6);
  result = swift_endAccess();
  a2 = v21;
LABEL_11:
  *a2 = v12;
  return result;
}

void *sub_1A2C5ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v30 = a1;
  v5 = *v3;
  v6 = sub_1A2D086E4();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A2D086C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v26[2] = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A2D08314();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  v16 = MEMORY[0x1E69E7CD0];
  v4[9] = v14;
  v4[10] = v16;
  v17 = *(v5 + 80);
  v26[1] = *(v5 + 88);
  v18 = type metadata accessor for Activity();
  v19 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v20 = sub_1A2D08594();
  v21 = sub_1A2C5F0D8(v20, v19, v18, MEMORY[0x1E69E6168]);

  v4[11] = v21;
  sub_1A2D08154();
  v4[12] = sub_1A2D08134();
  v4[13] = sub_1A2D08134();
  sub_1A2C5D300();
  sub_1A2D082E4();
  *&v33[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C5F3C4(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  v4[14] = sub_1A2D08724();
  v4[15] = MEMORY[0x1E69E7CD0];
  v22 = v31;
  v4[2] = v30;
  v4[3] = v22;
  v23 = v32;
  sub_1A2C53CD8(v32, (v4 + 4));
  ActivityAttributesType.init<A>(from:)(v33);
  v24 = v33[0];

  sub_1A2C5E574(0, 0);
  v33[0] = v24;
  memset(&v33[1], 0, 32);
  v34 = 0;
  sub_1A2C5F480(v33);
  __swift_destroy_boxed_opaque_existential_1(v23);

  sub_1A2C5E574(0, 0);
  return v4;
}

uint64_t sub_1A2C5F0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00]();
  v12 = v23 - v11;
  if (sub_1A2D085C4())
  {
    sub_1A2D089A4();
    v13 = sub_1A2D08994();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A2D085C4();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A2D085A4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A2D08874();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A2CA8A70(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1A2C5F3C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C5F40C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ActivityAttributesType.init<A>(from:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A2D08CA4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A2C5F480(__int128 *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0690, &qword_1A2D0B768);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  v13 = a1[1];
  v35 = *a1;
  v36 = v13;
  v37 = a1[2];
  v38 = *(a1 + 6);
  sub_1A2C53CD8((v1 + 4), v32);
  v14 = v33;
  v15 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v30[0] = v35;
  v30[1] = v36;
  v30[2] = v37;
  v31 = v38;
  *&v30[0] = (*(v15 + 64))(v30, v14, v15);
  v16 = v1[14];
  v29 = v16;
  v27 = *&v30[0];
  v17 = sub_1A2D086D4();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
  v28 = v9;
  sub_1A2C5D300();
  sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980);
  sub_1A2C5F3C4(&qword_1ED709120, sub_1A2C5D300);
  sub_1A2D08264();
  sub_1A2C54E38(v7, &qword_1EB0A0570, &qword_1A2D0ADA0);

  __swift_destroy_boxed_opaque_existential_1(v32);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = *(v3 + 80);
  *(v20 + 16) = v21;
  v22 = *(v3 + 88);
  *(v20 + 24) = v22;
  *(v20 + 32) = v19;
  v23 = v36;
  *(v20 + 40) = v35;
  *(v20 + 56) = v23;
  *(v20 + 72) = v37;
  *(v20 + 88) = v38;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v24;
  sub_1A2C63D94(&v35, v30);
  sub_1A2C56A78(&qword_1ED708F18, &qword_1EB0A0690, &qword_1A2D0B768);
  sub_1A2D08224();

  (*(v28 + 8))(v12, v8);
  swift_beginAccess();
  sub_1A2D080C4();
  swift_endAccess();
}

uint64_t sub_1A2C5FB5C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C5FB94()
{
  v1 = v0[4];

  v2 = v0[6];

  if (v0[8])
  {

    v3 = v0[11];
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A2C5FBE8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t ActivityOutputClient.observeDescriptorContentStates(matching:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02A0, &qword_1A2D0A968);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02A8, &qword_1A2D0A970);
  v32 = *(v34 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B0, &qword_1A2D0A978);
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  v16 = *(a1 + 16);
  v36[0] = *a1;
  v36[1] = v16;
  v36[2] = *(a1 + 32);
  v37 = *(a1 + 48);
  v17 = ActivityOutputClient.observeDescriptorContentStates()();
  if (!v2)
  {
    v38 = v17;
    v31 = 0;
    v18 = swift_allocObject();
    v30 = v4;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = *(a1 + 48);
    sub_1A2C63D94(v36, v35);
    v26[2] = sub_1A2D080B4();
    v29 = v5;
    v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01F0, &qword_1A2D0A8D8);
    v28 = v8;
    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02B8, &qword_1A2D0A980);
    v27 = v12;
    sub_1A2C56A78(&qword_1ED708F08, &unk_1EB0A01F0, &qword_1A2D0A8D8);
    sub_1A2C56A78(&qword_1ED708F10, &qword_1EB0A02B8, &qword_1A2D0A980);
    sub_1A2D082A4();

    sub_1A2C56A78(&qword_1ED708F28, &qword_1EB0A02A8, &qword_1A2D0A970);
    sub_1A2C63CE0();
    v20 = v34;
    sub_1A2D08274();
    (*(v32 + 8))(v11, v20);
    sub_1A2C56A78(&qword_1ED708F40, &qword_1EB0A02B0, &qword_1A2D0A978);
    v21 = v27;
    v22 = sub_1A2D081F4();
    (*(v33 + 8))(v15, v21);
    v35[0] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v23 = v28;
    sub_1A2D08204();
    sub_1A2C56A78(&qword_1ED708F58, &qword_1EB0A02A0, &qword_1A2D0A968);
    v24 = v30;
    v1 = sub_1A2D081F4();

    (*(v29 + 8))(v23, v24);
  }

  return v1;
}

uint64_t ActivityOutputClient.observeDescriptorContentStates()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01D8, &qword_1A2D0A8C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01E0, &qword_1A2D0A8C8);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01E8, &qword_1A2D0A8D0);
  v26 = *(v11 - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  ActivityOutputClient.observeActivities()();
  if (!v1)
  {
    v27 = v15;
    v24 = 0;
    v20[2] = sub_1A2D080B4();
    v23 = v2;
    v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
    v21 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01F0, &qword_1A2D0A8D8);
    v22 = v3;
    sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0);
    v20[3] = sub_1A2C56A78(&qword_1ED708F08, &unk_1EB0A01F0, &qword_1A2D0A8D8);
    sub_1A2D082B4();

    sub_1A2C56A78(&qword_1ED708F20, &qword_1EB0A01E0, &qword_1A2D0A8C8);
    sub_1A2C63CE0();
    sub_1A2D08274();
    (*(v25 + 8))(v10, v7);
    sub_1A2C56A78(&unk_1ED708F30, &qword_1EB0A01E8, &qword_1A2D0A8D0);
    v16 = sub_1A2D081F4();
    (*(v26 + 8))(v14, v11);
    v27 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v17 = v21;
    sub_1A2D08204();
    sub_1A2C56A78(&unk_1ED708F48, &qword_1EB0A01D8, &qword_1A2D0A8C0);
    v18 = v23;
    v0 = sub_1A2D081F4();

    (*(v22 + 8))(v17, v18);
  }

  return v0;
}

void ActivityOutputClient.observeActivities()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0160, &qword_1A2D0A868);
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0168, &qword_1A2D0A870);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01C8, &qword_1A2D0A8B0);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A01D0, &qword_1A2D0A8B8);
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v37 - v17;
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v18 = sub_1A2D08094();
  __swift_project_value_buffer(v18, qword_1ED709870);
  v19 = sub_1A2D08074();
  v20 = sub_1A2D086A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1A2C51000, v19, v20, "Attempting to observe activities", v21, 2u);
    MEMORY[0x1A58E5180](v21, -1, -1);
  }

  v22 = *(v2[4] + 16);

  os_unfair_lock_lock(v22);
  v23 = v2[6];
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    v2[6] = v23 + 1;
    os_unfair_lock_unlock(v22);

    if (v23)
    {
      v37 = v1;
LABEL_8:
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = v2[3];
      v27 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
      swift_beginAccess();
      v46 = *(v26 + v27);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
      sub_1A2D081D4();
      v46 = *(v26 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01A0, &qword_1A2D0A898);
      sub_1A2C56A78(&qword_1ED7092A8, &qword_1EB0A0160, &qword_1A2D0A868);
      sub_1A2C56A78(&qword_1ED7092B0, &unk_1EB0A01A0, &qword_1A2D0A898);
      sub_1A2D08244();
      (*(v38 + 8))(v6, v3);
      sub_1A2C56A78(&unk_1ED7092C8, &qword_1EB0A0168, &qword_1A2D0A870);
      v28 = v40;
      v29 = sub_1A2D081F4();
      (*(v39 + 8))(v10, v28);
      v46 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A01B0, &qword_1A2D0A8A0);
      sub_1A2C56A78(&unk_1ED7092B8, &unk_1EB0A01B0, &qword_1A2D0A8A0);
      sub_1A2C63A54();
      sub_1A2D08274();

      v30 = swift_allocObject();
      *(v30 + 16) = sub_1A2CA00D0;
      *(v30 + 24) = v25;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_1A2CA00D0;
      *(v31 + 24) = v25;
      sub_1A2C56A78(&qword_1ED709148, &qword_1EB0A01C8, &qword_1A2D0A8B0);
      swift_retain_n();
      v32 = v43;
      v33 = v41;
      sub_1A2D08214();

      (*(v42 + 8))(v14, v32);
      sub_1A2C56A78(&qword_1ED709150, &qword_1EB0A01D0, &qword_1A2D0A8B8);
      v34 = v45;
      sub_1A2D081F4();

      (*(v44 + 8))(v33, v34);
      return;
    }

    v35 = v2[2];
    v36 = *(v2[3] + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
    MEMORY[0x1EEE9AC00](v24);
    sub_1A2D08704();
    if (!v1)
    {
      v37 = 0;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1A2C60CD4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A2C60D0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1A2C60D5C()
{
  result = qword_1ED709398;
  if (!qword_1ED709398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709398);
  }

  return result;
}

unint64_t sub_1A2C60DB4()
{
  result = qword_1ED7093A0;
  if (!qword_1ED7093A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7093A0);
  }

  return result;
}

uint64_t sub_1A2C60E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C60E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C60E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C60F1C(uint64_t a1, char a2, uint64_t a3)
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v6 = sub_1A2D08094();
  __swift_project_value_buffer(v6, qword_1ED709870);
  v7 = sub_1A2D08074();
  v8 = sub_1A2D086A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 134349314;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2082;
    sub_1A2D08864();

    if (a2)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a2)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    MEMORY[0x1A58E4150](v11, v12);

    v13 = sub_1A2C55558(0xD000000000000011, 0x80000001A2D18ED0, &v18);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1A2C51000, v7, v8, "Client %{public}llu subscribing with options: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1A58E5180](v10, -1, -1);
    MEMORY[0x1A58E5180](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
  swift_beginAccess();
  v15 = *(a3 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a3 + v14);
  *(a3 + v14) = 0x8000000000000000;
  sub_1A2C61164(a2 & 1, a1, isUniquelyReferenced_nonNull_native);
  *(a3 + v14) = v18;
  swift_endAccess();
  return sub_1A2C615B4();
}

unint64_t sub_1A2C61164(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A2C61290(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1A2CB36F8();
    result = v17;
    goto LABEL_8;
  }

  sub_1A2C612D4(v14, a3 & 1);
  v18 = *v4;
  result = sub_1A2C61290(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1A2D08B84();
  __break(1u);
  return result;
}

unint64_t sub_1A2C61290(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1A2D08C04();

  return sub_1A2C61538(a1, v4);
}

uint64_t sub_1A2C612D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09D0, &qword_1A2D0D198);
  result = sub_1A2D08974();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      result = sub_1A2D08C04();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1A2C61538(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A2C615B4()
{
  v2 = v0;
  v43[4] = *MEMORY[0x1E69E9840];
  v3 = sub_1A2C54EB4();
  if (!v3)
  {
    if (qword_1ED709860 != -1)
    {
      swift_once();
    }

    v31 = sub_1A2D08094();
    __swift_project_value_buffer(v31, qword_1ED709870);
    v32 = sub_1A2D08074();
    v33 = sub_1A2D08684();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1A2C51000, v32, v33, "Remote target does not exist", v34, 2u);
      MEMORY[0x1A58E5180](v34, -1, -1);
    }

    sub_1A2CA0368();
    swift_allocError();
    *v35 = 0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
  swift_beginAccess();
  if (!*(*(v2 + v5) + 16))
  {
    [v4 unsubscribe];
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1A2C62964(v43, 0, 0, 0);
    swift_unknownObjectRelease();

LABEL_15:
    v38 = *MEMORY[0x1E69E9840];
    return result;
  }

  sub_1A2C619C0(v43);
  v6 = sub_1A2D07EB4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C61B90();
  v9 = sub_1A2D07E94();
  if (!v1)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_1A2D07F24();
    sub_1A2C55840(v11, v12);

    v14 = sub_1A2D07F44();
    v16 = v15;

    v17 = sub_1A2D07F24();
    v43[0] = 0;
    v18 = [v4 subscribeWithOptions:v17 error:v43];

    v19 = v43[0];
    if (!v18)
    {
      v37 = v19;
      sub_1A2D07ED4();

      swift_willThrow();
      sub_1A2C55840(v14, v16);
      goto LABEL_14;
    }

    v20 = sub_1A2D07F44();
    v22 = v21;

    v41 = v22;
    v42 = v20;
    v23 = sub_1A2D07F24();
    v24 = sub_1A2D07E84();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v27 = sub_1A2D07F44();
    v29 = v28;
    sub_1A2C62624();
    sub_1A2D07E64();
    sub_1A2C55840(v27, v29);

    v30 = v43[0];
    if (v43[0])
    {

      v43[0] = v30;
      sub_1A2C62964(v43, 0, 0, 0);
      sub_1A2C55840(v14, v16);
      sub_1A2C55840(v42, v41);

LABEL_14:
      result = swift_unknownObjectRelease();
      goto LABEL_15;
    }

    __break(1u);
  }

  v39 = swift_unexpectedError();
  __break(1u);
  sub_1A2C55840(v39, v40);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2C619C0@<X0>(char *a1@<X8>)
{
  v3 = sub_1A2D08344();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1A2D08364();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_subscriptions;
    result = swift_beginAccess();
    v12 = 0;
    v13 = *(v1 + v11);
    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
      v18 = v12;
LABEL_11:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      if (*(*(v13 + 56) + (v19 | (v18 << 6))) == 1)
      {
        v20 = 1;
LABEL_14:
        *a1 = v20;
        return result;
      }
    }

    while (1)
    {
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18 >= v17)
      {
        v20 = 0;
        goto LABEL_14;
      }

      v16 = *(v13 + 64 + 8 * v18);
      ++v12;
      if (v16)
      {
        v12 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A2C61B90()
{
  result = qword_1ED709450;
  if (!qword_1ED709450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709450);
  }

  return result;
}

uint64_t sub_1A2C61BE4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C00, &qword_1A2D0D480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C74();
  sub_1A2D08AC4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C61D30()
{
  result = qword_1ED709458;
  if (!qword_1ED709458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709458);
  }

  return result;
}

unint64_t sub_1A2C61D88()
{
  result = qword_1ED709460;
  if (!qword_1ED709460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709460);
  }

  return result;
}

unint64_t sub_1A2C61DDC()
{
  result = qword_1ED709468;
  if (!qword_1ED709468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709468);
  }

  return result;
}

uint64_t static OpaqueObjectiveCBridgable<>._unconditionallyBridgeFromObjectiveC(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A2D087E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = *(a2 - 8);
  result = (*(v17 + 56))(&v20 - v15, 1, 1, a2, v14);
  if (a1)
  {
    v19 = *(a3 + 24);
    sub_1A2D089B4();
    (*(v9 + 16))(v12, v16, v8);
    result = (*(v17 + 48))(v12, 1, a2);
    if (result != 1)
    {
      (*(v9 + 8))(v16, v8);
      return (*(v17 + 32))(a4, v12, a2);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A2C62024(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C620FC();
  sub_1A2D07E64();
  sub_1A2C55840(v6, v8);

  *a2 = v10;
  return result;
}

unint64_t sub_1A2C620FC()
{
  result = qword_1EB09F088;
  if (!qword_1EB09F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F088);
  }

  return result;
}

uint64_t ActivitySubscriptionOptions.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C08, &qword_1A2D0D488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C64();
  if (!v2)
  {
    v11 = sub_1A2D08A34();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for ActivitySubscriptionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t XPCCodableActivityChanges.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0898, &qword_1A2D0C620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C62540();

  sub_1A2D08C74();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A0, &qword_1A2D0C628);
  sub_1A2C62594(&qword_1EB09EE80, sub_1A2CADAD4);
  sub_1A2D08AE4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C62540()
{
  result = qword_1ED709508;
  if (!qword_1ED709508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709508);
  }

  return result;
}

uint64_t sub_1A2C62594(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A08A0, &qword_1A2D0C628);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A2C62624()
{
  result = qword_1ED7094F0;
  if (!qword_1ED7094F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094F0);
  }

  return result;
}

uint64_t XPCCodableActivityChanges.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A8, &qword_1A2D0C630);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C62540();
  sub_1A2D08C64();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A08A0, &qword_1A2D0C628);
    sub_1A2C62594(&qword_1ED709288, sub_1A2C62910);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2C62854()
{
  result = qword_1ED7094F8;
  if (!qword_1ED7094F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7094F8);
  }

  return result;
}

unint64_t sub_1A2C628AC()
{
  result = qword_1ED709500;
  if (!qword_1ED709500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709500);
  }

  return result;
}

unint64_t sub_1A2C62910()
{
  result = qword_1ED7092E0;
  if (!qword_1ED7092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7092E0);
  }

  return result;
}

uint64_t sub_1A2C62964(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v153 = a4;
  v152 = a3;
  LODWORD(v167) = a2;
  v159 = sub_1A2D082D4();
  v158 = *(v159 - 8);
  v5 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v156 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1A2D08314();
  v155 = *(v157 - 8);
  v7 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02C8, &qword_1A2D0AA28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v166 = &v152 - v11;
  v173 = type metadata accessor for SubscribedActivity(0);
  v176 = *(v173 - 8);
  v12 = *(v176 + 64);
  v13 = MEMORY[0x1EEE9AC00](v173);
  v174 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v172 = &v152 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v177 = &v152 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v152 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D0, &qword_1A2D0AA30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v169 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v171 = (&v152 - v24);
  v25 = *a1;
  v175 = *(*a1 + 16);
  if (!v175)
  {
    v28 = MEMORY[0x1E69E7CC8];
LABEL_17:
    if (qword_1ED709860 != -1)
    {
      goto LABEL_80;
    }

    goto LABEL_18;
  }

  v26 = 0;
  v27 = (v25 + 48);
  v28 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      goto LABEL_75;
    }

    v33 = *(v27 - 2);
    v32 = *(v27 - 1);
    v34 = *v27;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v28;
    v36 = sub_1A2C64868(v33, v32);
    v38 = v28[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      break;
    }

    v42 = v37;
    if (v28[3] < v41)
    {
      sub_1A2C7A34C(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_1A2C64868(v33, v32);
      if ((v42 & 1) != (v43 & 1))
      {
LABEL_81:
        result = sub_1A2D08B84();
        __break(1u);
        return result;
      }

LABEL_11:
      v28 = aBlock;
      if (v42)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v48 = v36;
    sub_1A2CB36E4();
    v36 = v48;
    v28 = aBlock;
    if (v42)
    {
LABEL_3:
      v29 = (v28[7] + 24 * v36);
      v30 = v29[1];
      v31 = v29[2];
      *v29 = v33;
      v29[1] = v32;
      v29[2] = v34;

      goto LABEL_4;
    }

LABEL_12:
    v28[(v36 >> 6) + 8] |= 1 << v36;
    v44 = (v28[6] + 16 * v36);
    *v44 = v33;
    v44[1] = v32;
    v45 = (v28[7] + 24 * v36);
    *v45 = v33;
    v45[1] = v32;
    v45[2] = v34;

    v46 = v28[2];
    v40 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v40)
    {
      goto LABEL_77;
    }

    v28[2] = v47;
LABEL_4:
    v26 = (v26 + 1);
    v27 += 3;
    if (v175 == v26)
    {
      goto LABEL_17;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  swift_once();
LABEL_18:
  v49 = sub_1A2D08094();
  v50 = __swift_project_value_buffer(v49, qword_1ED709870);

  v165 = v50;
  v51 = sub_1A2D08074();
  v52 = sub_1A2D086A4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136446210;

    v55 = sub_1A2D083B4();
    v57 = v56;

    v58 = sub_1A2C55558(v55, v57, &aBlock);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_1A2C51000, v51, v52, "Activities changed: %{public}s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1A58E5180](v54, -1, -1);
    MEMORY[0x1A58E5180](v53, -1, -1);
  }

  v59 = sub_1A2C59ED4(MEMORY[0x1E69E7CC0]);
  v60 = v28[8];
  v185 = v59;
  v61 = 1 << *(v28 + 32);
  v62 = -1;
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  v63 = v62 & v60;
  v64 = (v61 + 63) >> 6;

  v65 = 0;
  if (v63)
  {
    while (1)
    {
      v66 = v65;
LABEL_28:
      v67 = __clz(__rbit64(v63));
      v63 &= v63 - 1;
      v68 = v67 | (v66 << 6);
      v69 = (v28[6] + 16 * v68);
      v70 = *v69;
      v71 = v69[1];
      v72 = (v28[7] + 24 * v68);
      v73 = *v72;
      v74 = v72[1];
      v75 = v72[2];
      aBlock = v70;
      v180 = v71;
      v181 = v73;
      v182 = v74;
      v183 = v75;

      sub_1A2C7A360(v70, v71, &v181, v170, &v185);

      if (!v63)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v66 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      goto LABEL_74;
    }

    if (v66 >= v64)
    {
      break;
    }

    v63 = v28[v66 + 8];
    ++v65;
    if (v63)
    {
      v65 = v66;
      goto LABEL_28;
    }
  }

  if ((v167 & 1) == 0)
  {
    v76 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
    v164 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton__queue_activities;
    v77 = v170;
    swift_beginAccess();
    v78 = *(v77 + v76);
    v79 = v78 + 64;
    v80 = 1 << *(v78 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v78 + 64);
    v161 = (v80 + 63) >> 6;
    v162 = (v176 + 56);
    v167 = v78;

    v83 = 0;
    *&v84 = 136446210;
    v160 = v84;
    v85 = v169;
    v163 = v79;
    v175 = v28;
    while (1)
    {
      if (!v82)
      {
        if (v161 <= v83 + 1)
        {
          v89 = v83 + 1;
        }

        else
        {
          v89 = v161;
        }

        v90 = v89 - 1;
        v91 = v171;
        while (1)
        {
          v88 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          if (v88 >= v161)
          {
            v28 = &qword_1A2D0AA38;
            v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
            (*(*(v125 - 8) + 56))(v85, 1, 1, v125);
            v82 = 0;
            v83 = v90;
            goto LABEL_49;
          }

          v82 = *(v79 + 8 * v88);
          ++v83;
          if (v82)
          {
            v83 = v88;
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v88 = v83;
LABEL_48:
      v92 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v93 = v92 | (v88 << 6);
      v94 = (*(v167 + 48) + 16 * v93);
      v96 = *v94;
      v95 = v94[1];
      v97 = v168;
      sub_1A2C7BFE4(*(v167 + 56) + *(v176 + 72) * v93, v168, type metadata accessor for SubscribedActivity);
      v28 = &qword_1A2D0AA38;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
      v99 = *(v98 + 48);
      *v85 = v96;
      v85[1] = v95;
      sub_1A2C725C0(v97, v85 + v99, type metadata accessor for SubscribedActivity);
      (*(*(v98 - 8) + 56))(v85, 0, 1, v98);

      v91 = v171;
LABEL_49:
      sub_1A2C639DC(v85, v91, &qword_1EB0A02D0, &qword_1A2D0AA30);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
      if ((*(*(v100 - 8) + 48))(v91, 1, v100) == 1)
      {

        goto LABEL_72;
      }

      v102 = *v91;
      v101 = v91[1];
      sub_1A2C725C0(v91 + *(v100 + 48), v177, type metadata accessor for SubscribedActivity);
      if (v175[2])
      {
        sub_1A2C64868(v102, v101);
        if (v103)
        {

          v85 = v169;
          goto LABEL_37;
        }
      }

      v104 = sub_1A2D08074();
      v105 = sub_1A2D086A4();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        aBlock = v107;
        *v106 = v160;
        *(v106 + 4) = sub_1A2C55558(v102, v101, &aBlock);
        _os_log_impl(&dword_1A2C51000, v104, v105, "Activity disappeared from daemon: %{public}s", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v107);
        MEMORY[0x1A58E5180](v107, -1, -1);
        MEMORY[0x1A58E5180](v106, -1, -1);
      }

      v109 = v172;
      v108 = v173;
      v110 = v177;
      sub_1A2C7BFE4(v177 + *(v173 + 24), v172 + *(v173 + 24), type metadata accessor for ActivityDescriptor);
      v111 = *(v108 + 28);
      v112 = *(v110 + v111);
      *v109 = v102;
      *(v109 + 8) = v101;
      *(v109 + 16) = 3;
      *(v109 + v111) = v112;
      sub_1A2C7BFE4(v109, v174, type metadata accessor for SubscribedActivity);

      v113 = v185;
      v114 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v113;
      v116 = sub_1A2C64868(v102, v101);
      v117 = *(v113 + 16);
      v118 = (v115 & 1) == 0;
      v119 = v117 + v118;
      if (__OFADD__(v117, v118))
      {
        goto LABEL_78;
      }

      v120 = v115;
      if (*(v113 + 24) >= v119)
      {
        if (v114)
        {
          v123 = aBlock;
          if ((v115 & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          sub_1A2CB36A8();
          v123 = aBlock;
          if ((v120 & 1) == 0)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
        sub_1A2C7D508(v119, v114);
        v121 = sub_1A2C64868(v102, v101);
        if ((v120 & 1) != (v122 & 1))
        {
          goto LABEL_81;
        }

        v116 = v121;
        v123 = aBlock;
        if ((v120 & 1) == 0)
        {
LABEL_65:
          v123[(v116 >> 6) + 8] |= 1 << v116;
          v126 = (v123[6] + 16 * v116);
          *v126 = v102;
          v126[1] = v101;
          v124 = *(v176 + 72);
          sub_1A2C725C0(v174, v123[7] + v124 * v116, type metadata accessor for SubscribedActivity);
          v127 = v123[2];
          v40 = __OFADD__(v127, 1);
          v128 = v127 + 1;
          if (v40)
          {
            goto LABEL_79;
          }

          v123[2] = v128;

          goto LABEL_67;
        }
      }

      v124 = *(v176 + 72);
      sub_1A2CA02FC(v174, v123[7] + v124 * v116);
LABEL_67:
      v185 = v123;
      v129 = v170;
      v130 = v164;
      swift_beginAccess();
      v131 = *(v129 + v130);
      v132 = sub_1A2C64868(v102, v101);
      if (v133)
      {
        v134 = v132;
        v135 = *(v129 + v130);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v137 = *(v129 + v130);
        v178 = v137;
        v85 = v169;
        if (!v136)
        {
          sub_1A2CB36A8();
          v137 = v178;
        }

        v138 = *(*(v137 + 48) + 16 * v134 + 8);

        v139 = *(v137 + 56) + v124 * v134;
        v87 = v166;
        sub_1A2C725C0(v139, v166, type metadata accessor for SubscribedActivity);
        sub_1A2CA8DFC(v134, v137);
        v86 = 0;
        *(v129 + v130) = v137;
      }

      else
      {
        v86 = 1;
        v87 = v166;
        v85 = v169;
      }

      (*v162)(v87, v86, 1, v173);

      sub_1A2C54E38(v87, &qword_1EB0A02C8, &qword_1A2D0AA28);
      swift_endAccess();
      sub_1A2C73F50(v172, type metadata accessor for SubscribedActivity);
      v79 = v163;
LABEL_37:
      sub_1A2C73F50(v177, type metadata accessor for SubscribedActivity);
    }
  }

LABEL_72:
  v140 = v170;
  v141 = v185;
  v142 = *&v170[OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_calloutQueue];
  v143 = swift_allocObject();
  v143[2] = v141;
  v143[3] = v140;
  v144 = v152;
  v145 = v153;
  v143[4] = v152;
  v143[5] = v145;
  v183 = sub_1A2C63B08;
  v184 = v143;
  aBlock = MEMORY[0x1E69E9820];
  v180 = 1107296256;
  v181 = sub_1A2C5E5B8;
  v182 = &block_descriptor;
  v146 = _Block_copy(&aBlock);

  v147 = v140;
  sub_1A2C63A44(v144);
  v148 = v154;
  sub_1A2D082E4();
  v178 = MEMORY[0x1E69E7CC0];
  sub_1A2C586F0(&qword_1ED709AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40);
  v149 = v156;
  v150 = v159;
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v148, v149, v146);
  _Block_release(v146);
  (*(v158 + 8))(v149, v150);
  (*(v155 + 8))(v148, v157);
}

uint64_t sub_1A2C6398C()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A2C639DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A2C63A44(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1A2C63A54()
{
  result = qword_1ED709138;
  if (!qword_1ED709138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0190, &qword_1A2D0A890);
    sub_1A2C586F0(&qword_1ED709280, type metadata accessor for SubscribedActivity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709138);
  }

  return result;
}

uint64_t sub_1A2C63B14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_1ED709860 != -1)
  {
    swift_once();
  }

  v6 = sub_1A2D08094();
  __swift_project_value_buffer(v6, qword_1ED709870);

  v7 = sub_1A2D08074();
  v8 = sub_1A2D086A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    type metadata accessor for SubscribedActivity(0);
    v11 = sub_1A2D083A4();
    v13 = sub_1A2C55558(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1A2C51000, v7, v8, "Sending activity changes: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1A58E5180](v10, -1, -1);
    MEMORY[0x1A58E5180](v9, -1, -1);
  }

  v14 = *(a2 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_activityDiffPublisher);
  v16 = a1;
  result = sub_1A2D08124();
  if (a3)
  {

    a3(0);
    return sub_1A2C80A04(a3);
  }

  return result;
}

unint64_t sub_1A2C63CE0()
{
  result = qword_1ED708EF8;
  if (!qword_1ED708EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    sub_1A2C586F0(qword_1ED709038, type metadata accessor for ActivityDescriptorContentState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708EF8);
  }

  return result;
}

uint64_t sub_1A2C63DF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v30 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0400, &qword_1A2D0AAE8);
  v33 = *(v35 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v31 = &v30 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02D8, &qword_1A2D0AA38);
  v7 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v9 = (&v30 - v8);
  v10 = *a1;
  v40 = MEMORY[0x1E69E7CC0];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v39 = v10;

  for (i = 0; v14; i = v17)
  {
    v17 = i;
LABEL_8:
    v18 = __clz(__rbit64(v14)) | (v17 << 6);
    v19 = *(v39 + 56);
    v20 = (*(v39 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = type metadata accessor for SubscribedActivity(0);
    sub_1A2C7BFE4(v19 + *(*(v23 - 8) + 72) * v18, v9 + *(v38 + 48), type metadata accessor for SubscribedActivity);
    *v9 = v22;
    v9[1] = v21;

    sub_1A2C7D7C0(&v40, v9);
    v14 &= v14 - 1;
    sub_1A2C54E38(v9, &qword_1EB0A02D8, &qword_1A2D0AA38);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
      v24 = v32;
      sub_1A2D081D4();
      v25 = v31;
      v26 = v36;
      sub_1A2D081C4();
      (*(v34 + 8))(v24, v26);
      sub_1A2C56A78(&unk_1ED708EC8, &unk_1EB0A0400, &qword_1A2D0AAE8);
      v27 = v35;
      v28 = sub_1A2D081F4();
      result = (*(v33 + 8))(v25, v27);
      *v37 = v28;
      return result;
    }

    v14 = *(v11 + 8 * v17);
    ++i;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1A2C54E38(v9, &qword_1EB0A02D8, &qword_1A2D0AA38);

  __break(1u);
  return result;
}

uint64_t sub_1A2C641EC@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0378, &qword_1A2D0AA90);
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0380, &qword_1A2D0AA98);
  v36 = *(v38 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v8;
  v9 = type metadata accessor for ActivityDescriptorContentState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  v18 = *a1;
  v42 = *(*a1 + 16);
  if (v42)
  {
    v19 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    v40 = v14;
    v41 = v10;
    while (v19 < *(v18 + 16))
    {
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = *(v10 + 72);
      sub_1A2C7BFE4(v18 + v21 + v22 * v19, v17, type metadata accessor for ActivityDescriptorContentState);
      v23 = a2[1];
      v43 = *a2;
      v44 = v23;
      v45 = a2[2];
      v46 = *(a2 + 6);
      if (ActivityPredicate.matches(descriptor:)(v17))
      {
        sub_1A2C725C0(v17, v14, type metadata accessor for ActivityDescriptorContentState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2C7E858(0, *(v20 + 16) + 1, 1);
          v20 = v47;
        }

        v26 = *(v20 + 16);
        v25 = *(v20 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A2C7E858(v25 > 1, v26 + 1, 1);
          v20 = v47;
        }

        *(v20 + 16) = v26 + 1;
        v27 = v20 + v21 + v26 * v22;
        v14 = v40;
        result = sub_1A2C725C0(v40, v27, type metadata accessor for ActivityDescriptorContentState);
        v10 = v41;
      }

      else
      {
        result = sub_1A2C73F50(v17, type metadata accessor for ActivityDescriptorContentState);
      }

      if (v42 == ++v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *&v43 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
    v28 = v33;
    sub_1A2D081D4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
    v29 = v34;
    v30 = v37;
    sub_1A2D081C4();
    (*(v35 + 8))(v28, v30);
    sub_1A2C56A78(&qword_1ED708ED8, &unk_1EB0A0380, &qword_1A2D0AA98);
    v31 = v38;
    v32 = sub_1A2D081F4();
    result = (*(v36 + 8))(v29, v31);
    *v39 = v32;
  }

  return result;
}

uint64_t sub_1A2C64638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A2C5E3C4(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1A2C64708(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1A2C54E38(a1, &qword_1EB0A0698, &unk_1A2D0B770);
    sub_1A2CA8CA8(a2, a3, v10);

    return sub_1A2C54E38(v10, &qword_1EB0A0698, &unk_1A2D0B770);
  }

  return result;
}

uint64_t sub_1A2C64708(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A2C64868(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1A2CB3F60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1A2C64940(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1A2C64868(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1A2D08B84();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1A2C5E3C4(a1, v23);
  }

  else
  {
    sub_1A2C64CBC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1A2C6485C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1A2C648E0(a1);
}

unint64_t sub_1A2C64868(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  v6 = sub_1A2D08C54();

  return sub_1A2C64C04(a1, a2, v6);
}

uint64_t sub_1A2C648E0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A2C64DD8(v1);
  }

  return result;
}

uint64_t sub_1A2C64940(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
  v36 = a2;
  result = sub_1A2D08974();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1A2C5E3C4(v25, v37);
      }

      else
      {
        sub_1A2C53CD8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1A2C5E3C4(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_1A2C64C04(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1A2D08B34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1A2C64CBC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A2C5E3C4(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1A2C64D2C()
{
  v4 = v0[13];
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  type metadata accessor for Activity();
  sub_1A2D08154();
  swift_getWitnessTable();
  return sub_1A2D081F4();
}

uint64_t sub_1A2C64DD8(uint64_t a1)
{
  v3 = *(v1[9] + 16);

  os_unfair_lock_lock(v3);
  sub_1A2C64E80(a1, v1);
  os_unfair_lock_unlock(v3);
}

uint64_t Activity.ActivityUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for Activity();
  sub_1A2D08054();
  result = sub_1A2D08024();
  *a2 = result;
  return result;
}

uint64_t sub_1A2C64E80(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v32 = type metadata accessor for ActivityDescriptorContentState();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v28 = a1;
    v11 = a1 + v10;
    swift_beginAccess();
    v35 = *(v5 + 72);
    v30 = "isher";
    *&v12 = 136446978;
    v29 = v12;
    v31 = v4;
    do
    {
      sub_1A2C7C04C(v11, v8, type metadata accessor for ActivityDescriptorContentState);
      v13 = v8[1];
      v14 = a2[11];
      v36[0] = *v8;
      v36[1] = v13;
      v15 = *(v4 + 80);
      v33 = *(v4 + 88);
      v34 = v15;
      type metadata accessor for Activity();

      sub_1A2D083D4();

      if (v36[2])
      {

        sub_1A2C95A6C(v8);
      }

      else
      {
        v16 = *(v32 + 28);
        LOBYTE(v36[0]) = *(v8 + *(v32 + 20));
        sub_1A2C7F36C(v8, v8 + v16, v36);
      }

      sub_1A2C73FB0(v8, type metadata accessor for ActivityDescriptorContentState);
      v11 += v35;
      --v9;
    }

    while (v9);
    a1 = v28;
  }

  else
  {
    v17 = *(v4 + 80);
    v18 = *(v4 + 88);
  }

  v36[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0200, &unk_1A2D0A8E0);
  type metadata accessor for Activity();
  sub_1A2C56A78(&qword_1ED708D70, &unk_1EB0A0200, &unk_1A2D0A8E0);
  v19 = sub_1A2D084C4();
  sub_1A2C65934(a1);
  if (sub_1A2D085C4())
  {
    v20 = 4;
    do
    {
      v21 = v20 - 4;
      v22 = sub_1A2D085A4();
      sub_1A2D08574();
      if (v22)
      {
        v23 = *(v19 + 8 * v20);

        v24 = v20 - 3;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v23 = sub_1A2D08874();
        v24 = v20 - 3;
        if (__OFADD__(v21, 1))
        {
LABEL_17:
          __break(1u);
        }
      }

      v25 = a2[12];
      v36[0] = v23;

      sub_1A2D08124();

      ++v20;
    }

    while (v24 != sub_1A2D085C4());
  }
}

uint64_t sub_1A2C6556C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDescriptor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 251)
  {
    *(a1 + *(a4 + 20)) = a2 + 4;
  }

  else
  {
    v11 = type metadata accessor for OpaqueActivityContent();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1A2C656A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A2D07F94();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A2C65758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDescriptor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 251)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 5)
    {
      return v10 - 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for OpaqueActivityContent();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1A2C65888(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1A2D07F94();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

void sub_1A2C65934(uint64_t a1)
{
  v2 = v1;
  v38 = *v2;
  v4 = *(*(type metadata accessor for ActivityDescriptor() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(type metadata accessor for ActivityDescriptorContentState() - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(v2[9] + 16));
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    swift_beginAccess();
    v37 = *(v7 + 72);
    *&v13 = 136446466;
    v33 = v13;
    v36 = v2;
    do
    {
      sub_1A2C7C04C(v12, v10, type metadata accessor for ActivityDescriptorContentState);
      sub_1A2C7C04C(v10, v6, type metadata accessor for ActivityDescriptor);
      sub_1A2C73FB0(v10, type metadata accessor for ActivityDescriptorContentState);
      v15 = *v6;
      v16 = v6[1];

      sub_1A2C73FB0(v6, type metadata accessor for ActivityDescriptor);
      v17 = v2[11];
      v39[0] = v15;
      v39[1] = v16;
      v18 = *(v38 + 80);
      v19 = *(v38 + 88);
      type metadata accessor for Activity();

      sub_1A2D083D4();

      v20 = v40;
      if (v40)
      {
        sub_1A2C8081C();
        if (LOBYTE(v39[0]) == 3)
        {
          if (qword_1ED708BB8 != -1)
          {
            swift_once();
          }

          v21 = sub_1A2D08094();
          __swift_project_value_buffer(v21, qword_1ED708BC0);

          v22 = sub_1A2D08074();
          v23 = sub_1A2D086A4();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v39[0] = v35;
            *v24 = v33;
            v34 = v23;
            v25 = v36[2];
            v26 = v36[3];

            v27 = sub_1A2C55558(v25, v26, v39);

            *(v24 + 4) = v27;
            *(v24 + 12) = 2082;
            v28 = *(v20 + 16);
            v29 = *(v20 + 24);

            v30 = sub_1A2C55558(v28, v29, v39);

            *(v24 + 14) = v30;
            _os_log_impl(&dword_1A2C51000, v22, v34, "[%{public}s] Removing dismissed activity: %{public}s", v24, 0x16u);
            v31 = v35;
            swift_arrayDestroy();
            MEMORY[0x1A58E5180](v31, -1, -1);
            v32 = v24;
            v2 = v36;
            MEMORY[0x1A58E5180](v32, -1, -1);
          }

          v14 = *(v20 + 16);
          v41 = *(v20 + 24);
          v42 = 0;
          v40 = v14;
          swift_beginAccess();
          sub_1A2D083C4();

          sub_1A2D083E4();
          swift_endAccess();
        }
      }

      v12 += v37;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1A2C65DBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A2CCBAEC;

  return Activity.ActivityUpdates.Iterator.next()();
}

uint64_t Activity.ActivityUpdates.Iterator.next()()
{
  v2 = *v0;
  v3 = *(MEMORY[0x1E69CA958] + 4);
  v6 = (*MEMORY[0x1E69CA958] + MEMORY[0x1E69CA958]);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1A2CCB9D8;

  return v6(v1 + 16);
}

uint64_t ActivityContent.init(state:staleDate:relevanceScore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v8 = type metadata accessor for ActivityContent();
  result = sub_1A2C639DC(a2, a4 + *(v8 + 52), &qword_1EB0A0E28, &unk_1A2D0EC10);
  *(a4 + *(v8 + 56)) = a5;
  return result;
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v75 = a8;
  v76 = a7;
  LODWORD(v71) = a6;
  v73 = a5;
  v72 = a4;
  v70 = a2;
  v67 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v63 = &v63 - v14;
  v15 = sub_1A2D07F94();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v10 + 80);
  v18 = *(v10 + 88);
  v78 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  *&v82 = AssociatedTypeWitness;
  *(&v82 + 1) = AssociatedConformanceWitness;
  v69 = v22;
  v83 = v22;
  v84 = v23;
  v68 = v23;
  v24 = type metadata accessor for ActivityContent();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v63 - v27;
  v28 = *(v19 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ActivityRequest();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = (&v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = *a3;
  v86 = *(a3 + 16);
  if (*(v85 + 16))
  {
    v64 = a10;
    v65 = a9;
    v37 = *(v28 + 16);
    v66 = v32;
    v38 = v67;
    v67 = v36;
    v37(v32, v38, v19);
    ActivityAttributesType.init<A>(from:)(v81);
    v80[0] = v81[0];
    v80[1] = v81[1];
    (*(v25 + 16))(v87, v70, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    v39 = AssociatedConformanceWitness;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v41 = v72;
    v42 = v73;
    *(inited + 40) = v72;
    *(inited + 48) = v42;
    *(inited + 56) = v71 & 1;
    sub_1A2C66A94(v41);
    v73 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    sub_1A2C54E38(inited + 32, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v72 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v82 = v85;
    v83 = v86;
    sub_1A2C66F58(&v85, v79);
    v43 = *(v18 + 8);
    v44 = *(v18 + 16);
    v45 = v76;

    v46 = v74;
    v71 = v18;
    v47 = v39;
    v48 = v39;
    v49 = v69;
    v50 = v68;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v19, AssociatedTypeWitness, v43, v44, v48, v69, v68);
    v62 = v49;
    v51 = v67;
    v52 = v77;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v66, v80, v87, v73, v72, &v82, v45, v75 & 1, v67, v65 & 1, v64 & 1, 0, 0, 0, 4u, v46, 0, 0, v19, AssociatedTypeWitness, v43, v44, v47, v62, v50);
    if (v52)
    {
      v53 = v78;
      sub_1A2CC6E68(v52);
      swift_willThrow();
    }

    else
    {
      v58 = v71;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for AlertConfiguration();
      v60 = v63;
      (*(*(v59 - 8) + 56))(v63, 1, 1, v59);
      v53 = sub_1A2C67380(v51, v60, v19, v58);
      sub_1A2C54E38(v60, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v51, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v54 = sub_1A2D08094();
    __swift_project_value_buffer(v54, qword_1EB09F570);
    v55 = sub_1A2D08074();
    v53 = sub_1A2D08684();
    if (os_log_type_enabled(v55, v53))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1A2C51000, v55, v53, "Cannot specify presentationOptions with no visual destinations", v56, 2u);
      MEMORY[0x1A58E5180](v56, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v57 = xmmword_1A2D0EBF0;
    *(v57 + 16) = 0u;
    *(v57 + 32) = 0u;
    *(v57 + 48) = 0u;
    *(v57 + 64) = 0;
    swift_willThrow();
  }

  return v53;
}

uint64_t type metadata accessor for ActivityRequest()
{
  result = qword_1ED7096A0;
  if (!qword_1ED7096A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ActivityUIDismissalPolicy()
{
  result = qword_1ED709478;
  if (!qword_1ED709478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A2C66840(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF8, &qword_1A2D0DFC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C74();
  sub_1A2D08AB4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A2C6697C()
{
  result = qword_1ED709B88;
  if (!qword_1ED709B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B88);
  }

  return result;
}

unint64_t sub_1A2C669D0()
{
  result = qword_1ED7093B8[0];
  if (!qword_1ED7093B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7093B8);
  }

  return result;
}

unint64_t sub_1A2C66A24()
{
  result = qword_1ED708CC0;
  if (!qword_1ED708CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708CC0);
  }

  return result;
}

uint64_t sub_1A2C66A98(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_1A2C66AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0788, &qword_1A2D0BDD0);
    v3 = sub_1A2D08994();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      sub_1A2C66A94(v6);
      result = sub_1A2C66BC0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 24 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 16) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A2C66BC0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();

  v4 = sub_1A2D08C54();

  return sub_1A2C66CF4(a1, v4);
}

unint64_t sub_1A2C66CF4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v10 = 0x63536C6C7566;
          goto LABEL_18;
        }

        if (v7 == 4)
        {
          v8 = 0x746E6569626D61;
        }

        else
        {
          v8 = 0x79616C50726163;
        }

        v9 = 0xE700000000000000;
      }

      else
      {
        if (!*(*(v2 + 48) + v4))
        {
          v10 = 0x63736B636F6CLL;
LABEL_18:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
          v9 = 0xEA00000000006E65;
          goto LABEL_19;
        }

        if (v7 == 1)
        {
          v8 = 0x72656E6E6162;
        }

        else
        {
          v8 = 0x70416D6574737973;
        }

        if (v7 == 1)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xEE00657275747265;
        }
      }

LABEL_19:
      v11 = 0x79616C50726163;
      if (v6 == 4)
      {
        v11 = 0x746E6569626D61;
      }

      v12 = 0xE700000000000000;
      if (v6 == 3)
      {
        v11 = 0x657263536C6C7566;
        v12 = 0xEA00000000006E65;
      }

      v13 = 0x70416D6574737973;
      if (v6 == 1)
      {
        v13 = 0x72656E6E6162;
      }

      v14 = 0xEE00657275747265;
      if (v6 == 1)
      {
        v14 = 0xE600000000000000;
      }

      if (!v6)
      {
        v13 = 0x657263736B636F6CLL;
        v14 = 0xEA00000000006E65;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      if (v6 <= 2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (v8 == v15 && v9 == v16)
      {

        return v4;
      }

      v17 = sub_1A2D08B34();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

uint64_t OpaqueActivityContent.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for OpaqueActivityContent();
  v6 = *(v5 + 20);
  v7 = sub_1A2D07F94();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = type metadata accessor for ActivityContent();
  sub_1A2C851E0(a1 + *(v8 + 52), &a2[v6]);
  *&a2[*(v5 + 24)] = *(a1 + *(v8 + 56));
  v9 = sub_1A2D07D84();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1A2D07D74();
  v12 = sub_1A2D07D64();
  if (v2)
  {
    (*(*(v8 - 8) + 8))(a1, v8);

    return sub_1A2C54E38(&a2[v6], &qword_1EB0A0E28, &unk_1A2D0EC10);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    (*(*(v8 - 8) + 8))(a1, v8);

    *a2 = v15;
    *(a2 + 1) = v16;
  }

  return result;
}

uint64_t sub_1A2C67178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C671E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C67248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C672C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A2D07EF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1A2C67380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a3;
  v24[2] = a4;
  v8 = sub_1A2D07F94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityDescriptor();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v17 = *(v4 + 24);
  v18 = *&v17[OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue];
  v26 = v17;
  v27 = a1;
  v28 = a2;
  v19 = v17;
  sub_1A2D08704();

  if (!v5)
  {
    v20 = type metadata accessor for ActivityRequest();
    v21 = *(v20 + 68);
    _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
    LOBYTE(v21) = sub_1A2D07F64();
    (*(v9 + 8))(v12, v8);
    v22 = *(v20 + 28);
    v29 = (v21 & 1) == 0;
    v9 = sub_1A2C838B4(v16, a1 + v22, &v29);
    sub_1A2C74010(v16, type metadata accessor for ActivityDescriptor);
  }

  return v9;
}

uint64_t sub_1A2C6758C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v142 = a2;
  v145 = a1;
  v135 = a3;
  v149 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v118 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v137 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v143 = (&v118 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v118 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v118 - v18;
  v141 = type metadata accessor for AlertConfiguration();
  v20 = *(v141 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for ActivityRequest();
  v133 = *(v144 - 8);
  v23 = *(v133 + 64);
  v24 = MEMORY[0x1EEE9AC00](v144);
  v134 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v118 - v26;
  v28 = sub_1A2D08344();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = *(v4 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  *v32 = v33;
  (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28);
  v34 = v33;
  LOBYTE(v33) = sub_1A2D08364();
  v35 = (*(v29 + 8))(v32, v28);
  if ((v33 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v36 = sub_1A2C68B54(v35);
  if (!v36)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v47 = xmmword_1A2D0AC20;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0;
    result = swift_willThrow();
LABEL_18:
    v113 = *MEMORY[0x1E69E9840];
    return result;
  }

  v139 = v36;
  if (qword_1ED709838 != -1)
  {
    goto LABEL_23;
  }

LABEL_4:
  v37 = sub_1A2D08094();
  __swift_project_value_buffer(v37, qword_1ED709840);
  sub_1A2C68E98(v145, v27, type metadata accessor for ActivityRequest);
  v38 = sub_1A2D08074();
  v39 = sub_1A2D086A4();
  v40 = os_log_type_enabled(v38, v39);
  v132 = v4;
  v131 = v8;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v147 = v42;
    *v41 = 136446210;
    v43 = ActivityRequest.description.getter();
    v45 = v44;
    sub_1A2C69F24(v27, type metadata accessor for ActivityRequest);
    v46 = sub_1A2C55558(v43, v45, &v147);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_1A2C51000, v38, v39, "Requesting an activity: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1A58E5180](v42, -1, -1);
    MEMORY[0x1A58E5180](v41, -1, -1);
  }

  else
  {

    sub_1A2C69F24(v27, type metadata accessor for ActivityRequest);
  }

  v49 = sub_1A2D07EB4();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C5AD40(&qword_1ED708D38, type metadata accessor for ActivityRequest);
  v52 = v140;
  v53 = sub_1A2D07E94();
  if (v52)
  {
    goto LABEL_25;
  }

  v55 = v53;
  v56 = v54;
  v57 = sub_1A2D07F24();
  sub_1A2C55840(v55, v56);

  v58 = sub_1A2D07F44();
  v60 = v59;

  sub_1A2C6BD18(v142, v19, &qword_1EB0A04D0, &unk_1A2D15640);
  if ((*(v20 + 48))(v19, 1, v141) == 1)
  {
    sub_1A2C54E38(v19, &qword_1EB0A04D0, &unk_1A2D15640);
    v61 = sub_1A2D07F24();
    v62 = 0;
    v63 = 0;
    v142 = 0xF000000000000000;
    v64 = v139;
    v65 = v143;
  }

  else
  {
    v106 = v19;
    v107 = v138;
    sub_1A2C7C528(v106, v138, type metadata accessor for AlertConfiguration);
    v108 = *(v49 + 48);
    v109 = *(v49 + 52);
    swift_allocObject();
    sub_1A2D07EA4();
    sub_1A2C5AD40(&qword_1EB09F308, type metadata accessor for AlertConfiguration);
    v110 = sub_1A2D07E94();
    v64 = v139;
    v65 = v143;
    v62 = v110;
    v114 = v107;
    v115 = v111;
    sub_1A2C69F24(v114, type metadata accessor for AlertConfiguration);

    v116 = sub_1A2D07F24();
    v117 = v115;
    v61 = v116;
    v142 = v117;
    if (v117 >> 60 == 15)
    {
      v63 = 0;
    }

    else
    {
      v63 = sub_1A2D07F24();
    }
  }

  *&v147 = 0;
  v66 = [v64 requestActivityWithRequest:v61 alertConfiguration:v63 error:&v147];

  v67 = v147;
  if (!v66)
  {
    v112 = v67;
    sub_1A2D07ED4();

    swift_willThrow();
    sub_1A2C55840(v58, v60);
    swift_unknownObjectRelease();
    result = sub_1A2C5DE40(v62, v142);
    goto LABEL_18;
  }

  v130 = v62;
  v138 = v58;
  v140 = v60;
  v68 = sub_1A2D07F44();
  v70 = v69;

  v128 = v68;
  v129 = v70;
  v71 = sub_1A2D07F24();
  v72 = type metadata accessor for ActivityDescriptor();
  v73 = *(v72 - 8);
  v74 = v136;
  v143 = *(v73 + 56);
  (v143)(v136, 1, 1, v72);
  v75 = sub_1A2D07E84();
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v127 = v71;
  v39 = sub_1A2D07F44();
  v49 = v78;
  sub_1A2C5AD40(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  sub_1A2D07E64();
  v141 = 0;
  sub_1A2C54E38(v74, &qword_1EB0A0210, &unk_1A2D0ACA0);
  sub_1A2C55840(v39, v49);

  (v143)(v65, 0, 1, v72);
  sub_1A2C639DC(v65, v74, &qword_1EB0A0210, &unk_1A2D0ACA0);
  v79 = v137;
  sub_1A2C6BD18(v74, v137, &qword_1EB0A0210, &unk_1A2D0ACA0);
  if ((*(v73 + 48))(v79, 1, v72) != 1)
  {
    sub_1A2C54E38(v74, &qword_1EB0A0210, &unk_1A2D0ACA0);
    v80 = v135;
    sub_1A2C7C528(v79, v135, type metadata accessor for ActivityDescriptor);

    v82 = v144;
    v81 = v145;
    if (v145[*(v144 + 48)] == 1)
    {
      v83 = *v80;
      v136 = v80[1];
      v137 = v83;
      v84 = *(v145 + 3);
      v123 = *(v145 + 2);
      v124 = v84;
      v125 = *(v145 + 4);
      v85 = v125;
      v143 = *(v145 + 5);
      v86 = v134;
      sub_1A2C68E98(&v145[*(v144 + 28)], &v134[*(v144 + 28)], type metadata accessor for OpaqueActivityContent);
      v87 = v82[9];
      v126 = *&v81[v82[8]];
      v88 = v126;
      v127 = *&v81[v87];
      v89 = v127;
      v90 = v82[11];
      v91 = &v81[v82[10]];
      v147 = *v91;
      v148 = *(v91 + 2);
      v135 = *&v81[v90];
      v92 = v135;
      v93 = v82[14];
      v120 = v81[v82[13]];
      v121 = v81[v93];
      v94 = v82[16];
      v119 = v81[v82[15]];
      v122 = v81[v94];
      v95 = v82[17];
      v96 = sub_1A2D07F94();
      (*(*(v96 - 8) + 16))(&v86[v95], &v81[v95], v96);
      v97 = &v81[v82[18]];
      v98 = *v97;
      v99 = *(v97 + 1);
      *(v86 + 2) = v123;
      *(v86 + 3) = v84;
      v100 = v143;
      *(v86 + 4) = v85;
      *(v86 + 5) = v100;
      *&v86[v82[8]] = v88;
      *&v86[v82[9]] = v89;
      v101 = &v86[v82[10]];
      *(v101 + 2) = v148;
      *v101 = v147;
      *&v86[v82[11]] = v92;
      v86[v82[12]] = 1;
      v86[v82[13]] = v120;
      v86[v82[14]] = v121;
      v86[v82[15]] = v119;
      v103 = v136;
      v102 = v137;
      *v86 = v137;
      *(v86 + 1) = v103;
      v86[v82[16]] = v122;
      v104 = &v86[v82[18]];
      *v104 = v98;
      *(v104 + 1) = v99;
      v105 = v131;
      sub_1A2C68E98(v86, v131, type metadata accessor for ActivityRequest);
      (*(v133 + 56))(v105, 0, 1, v82);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      sub_1A2C5E63C(v125, v143);

      sub_1A2C66F58(&v147, v146);

      sub_1A2C834FC(v105, v102, v103);
      swift_endAccess();
      sub_1A2C55840(v138, v140);
      sub_1A2C55840(v128, v129);
      sub_1A2C5DE40(v130, v142);
      swift_unknownObjectRelease();
      result = sub_1A2C69F24(v86, type metadata accessor for ActivityRequest);
    }

    else
    {
      sub_1A2C55840(v138, v140);
      sub_1A2C55840(v128, v129);
      swift_unknownObjectRelease();
      result = sub_1A2C5DE40(v130, v142);
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_25:
  swift_unexpectedError();
  __break(1u);
  sub_1A2C55840(v39, v49);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t SceneTarget.Request.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1760, "ʫ");
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1768, &qword_1A2D135D8);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A1770, &qword_1A2D135E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6D588();
  sub_1A2D08C74();
  v19 = (v14 + 8);
  if (v25)
  {
    LOBYTE(v28) = 1;
    sub_1A2C6D5DC();
    sub_1A2D08A84();
    v28 = v26;
    v29 = v27;
    sub_1A2C6D630();
    v20 = v24;
    sub_1A2D08AE4();
    (*(v23 + 8))(v8, v20);
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1A2CE9948();
    sub_1A2D08A84();
    v28 = v26;
    v29 = v27;
    sub_1A2C6D630();
    sub_1A2D08AE4();
    (*(v22 + 8))(v12, v9);
  }

  return (*v19)(v17, v13);
}

uint64_t ProcessDescriptor.Request.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v30 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17A8, &qword_1A2D13620);
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17B0, &qword_1A2D13628);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17B8, &qword_1A2D13630);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A17C0, &qword_1A2D13638);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6AC28();
  v20 = v32;
  sub_1A2D08C74();
  if (!v20)
  {
    v33 = 0;
    sub_1A2CE9D78();
    sub_1A2D08A84();
    (*(v25 + 8))(v13, v10);
    return (*(v15 + 8))(v18, v14);
  }

  if (v20 == 1)
  {
    v34 = 1;
    sub_1A2CE9D24();
    sub_1A2D08A84();
    (*(v26 + 8))(v9, v27);
    return (*(v15 + 8))(v18, v14);
  }

  v35 = 2;
  sub_1A2C6AC7C();
  v22 = v28;
  sub_1A2D08A84();
  v23 = v31;
  sub_1A2D08AB4();
  (*(v29 + 8))(v22, v23);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1A2C68B08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1A2C6758C(v2, v3, a1);
}

uint64_t sub_1A2C68B54()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_queue);
  *v5 = v6;
  (*(isa + 13))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  LOBYTE(v6) = sub_1A2D08364();
  (*(isa + 1))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2C58800();
  v8 = *(v0 + OBJC_IVAR____TtC11ActivityKit19ActivityInputClient_connection);
  if (!v8)
  {
    if (qword_1ED709838 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1ED709840);
    v1 = sub_1A2D08074();
    v10 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v10, "ActivityInputClient: Failed to establish a connection", v11, 2u);
      MEMORY[0x1A58E5180](v11, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v8;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0500, &unk_1A2D0ACB0);
    if (swift_dynamicCast())
    {

      return v17[1];
    }
  }

  else
  {
    sub_1A2C54E38(v20, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1ED709838 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v13 = sub_1A2D08094();
  __swift_project_value_buffer(v13, qword_1ED709840);
  v14 = sub_1A2D08074();
  v15 = sub_1A2D08694();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A2C51000, v14, v15, "ActivityInputClient: Failed to cast connection to server interface protocol", v16, 2u);
    MEMORY[0x1A58E5180](v16, -1, -1);
  }

LABEL_18:
  return 0;
}

uint64_t sub_1A2C68E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C68F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ActivityRequest.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OpaqueActivityContent();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(&v75, "Identifier: ");
  BYTE13(v75) = 0;
  HIWORD(v75) = -5120;
  v6 = v0[1];
  *&v73 = *v0;
  *(&v73 + 1) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
  v7 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v7);

  v67 = *(&v75 + 1);
  v68 = v75;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v75 = 0xD000000000000011;
  *(&v75 + 1) = 0x80000001A2D1A330;
  v8 = v0[2];
  v9 = v0[3];
  *&v73 = 0;
  *(&v73 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v73 = 0xD000000000000011;
  *(&v73 + 1) = 0x80000001A2D1A330;
  MEMORY[0x1A58E4150](v8, v9);
  MEMORY[0x1A58E4150](v73, *(&v73 + 1));

  v65 = *(&v75 + 1);
  v66 = v75;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v75 = 0xD000000000000024;
  *(&v75 + 1) = 0x80000001A2D1AF10;
  v10 = type metadata accessor for ActivityRequest();
  sub_1A2C69790(v0 + v10[7], v5, type metadata accessor for OpaqueActivityContent);
  v11 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v11);

  v63 = *(&v75 + 1);
  v64 = v75;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v75 = 0xD000000000000016;
  *(&v75 + 1) = 0x80000001A2D1AF40;
  v12 = *(v0 + v10[8]);
  sub_1A2C5604C();
  v13 = sub_1A2D083A4();
  MEMORY[0x1A58E4150](v13);

  v61 = *(&v75 + 1);
  v62 = v75;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v75 = 0xD00000000000001CLL;
  *(&v75 + 1) = 0x80000001A2D1AF60;
  v14 = *(v1 + v10[9]);
  v15 = sub_1A2D083A4();
  MEMORY[0x1A58E4150](v15);

  v59 = *(&v75 + 1);
  v60 = v75;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  v71 = 0xD000000000000016;
  v72 = 0x80000001A2D1AF80;
  v16 = v1 + v10[10];
  v73 = *v16;
  v74 = *(v16 + 2);
  v69 = *v16;
  v70 = *(v16 + 2);
  sub_1A2C66F58(&v73, &v75);
  v17 = ActivityPresentationOptions.description.getter();
  v19 = v18;
  v75 = v69;
  v76 = v70;
  sub_1A2C69EAC(&v75);
  MEMORY[0x1A58E4150](v17, v19);

  v58 = v71;
  v57 = v72;
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v69 = 0xD000000000000019;
  *(&v69 + 1) = 0x80000001A2D1AFA0;
  v20 = MEMORY[0x1A58E4220](*(v1 + v10[11]), &type metadata for ActivityContentSource.Request);
  MEMORY[0x1A58E4150](v20);

  v55 = *(&v69 + 1);
  v56 = v69;
  *&v69 = 0x6172656D65687045;
  *(&v69 + 1) = 0xEB00000000203A6CLL;
  if (*(v1 + v10[12]))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + v10[12]))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v21, v22);

  v53 = *(&v69 + 1);
  v54 = v69;
  *&v69 = 0x65646E756F626E55;
  *(&v69 + 1) = 0xEB00000000203A64;
  if (*(v1 + v10[13]))
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (*(v1 + v10[13]))
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v23, v24);

  v51 = *(&v69 + 1);
  v52 = v69;
  *&v69 = 0x7261746E656D6F4DLL;
  *(&v69 + 1) = 0xEB00000000203A79;
  if (*(v1 + v10[14]))
  {
    v25 = 1702195828;
  }

  else
  {
    v25 = 0x65736C6166;
  }

  if (*(v1 + v10[14]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v25, v26);

  v49 = *(&v69 + 1);
  v50 = v69;
  *&v69 = 0x6E6174726F706D49;
  *(&v69 + 1) = 0xEB00000000203A74;
  if (*(v1 + v10[15]))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v1 + v10[15]))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v27, v28);

  v29 = v69;
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v69 = 0xD000000000000012;
  *(&v69 + 1) = 0x80000001A2D1AFC0;
  LOBYTE(v71) = *(v1 + v10[16]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
  v30 = sub_1A2D08454();
  MEMORY[0x1A58E4150](v30);

  v31 = v69;
  strcpy(&v69, "Start Date: ");
  BYTE13(v69) = 0;
  HIWORD(v69) = -5120;
  v32 = v10[17];
  sub_1A2D07F94();
  sub_1A2C69EDC(&qword_1EB09F690, MEMORY[0x1E6969530]);
  v33 = sub_1A2D08B04();
  MEMORY[0x1A58E4150](v33);

  v34 = v69;
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  sub_1A2D08864();

  *&v69 = 0xD00000000000001BLL;
  *(&v69 + 1) = 0x80000001A2D1AFE0;

  MEMORY[0x1A58E4150](v34, *(&v34 + 1));

  v35 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1A2D14A00;
  v37 = v65;
  *(v36 + 32) = v66;
  *(v36 + 40) = v37;
  v38 = v63;
  *(v36 + 48) = v64;
  *(v36 + 56) = v38;
  v39 = v61;
  *(v36 + 64) = v62;
  *(v36 + 72) = v39;
  v40 = v59;
  *(v36 + 80) = v60;
  *(v36 + 88) = v40;
  v41 = v57;
  *(v36 + 96) = v58;
  *(v36 + 104) = v41;
  v42 = v55;
  *(v36 + 112) = v56;
  *(v36 + 120) = v42;
  v43 = v53;
  *(v36 + 128) = v54;
  *(v36 + 136) = v43;
  v44 = v51;
  *(v36 + 144) = v52;
  *(v36 + 152) = v44;
  v45 = v67;
  *(v36 + 160) = v68;
  *(v36 + 168) = v45;
  v46 = v49;
  *(v36 + 176) = v50;
  *(v36 + 184) = v46;
  *(v36 + 192) = v29;
  *(v36 + 208) = v31;
  *(v36 + 224) = v34;
  *(v36 + 240) = v35;
  v47 = MEMORY[0x1A58E4220]();

  return v47;
}

uint64_t sub_1A2C69728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2C69790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A2C6980C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t SceneTarget.Request.debugDescription.getter(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_1A2D08864();

    v16 = 0xD000000000000015;
    v5 = 0x80000001A2D1AD20;
    if (a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = a2;
    }

    if (a2 == 1)
    {
      v7 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 1)
    {
      v8 = 0x80000001A2D1AD00;
    }

    else
    {
      v8 = v5;
    }

    sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v7, v8);

    v9 = 10530;
    v10 = 0xE200000000000000;
  }

  else
  {
    sub_1A2D08864();

    v16 = 0xD00000000000002FLL;
    v11 = 0x80000001A2D1AD20;
    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (a2)
    {
      v11 = a2;
    }

    if (a2 == 1)
    {
      v13 = 0xD00000000000001FLL;
    }

    else
    {
      v13 = v12;
    }

    if (a2 == 1)
    {
      v14 = 0x80000001A2D1AD00;
    }

    else
    {
      v14 = v11;
    }

    sub_1A2C66A98(a1, a2);
    MEMORY[0x1A58E4150](v13, v14);

    v9 = 41;
    v10 = 0xE100000000000000;
  }

  MEMORY[0x1A58E4150](v9, v10);
  return v16;
}

uint64_t sub_1A2C699F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t ActivityPresentationOptions.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v36 = *(v0 + 11);
  v39 = *(v0 + 12);
  v28 = *(v0 + 14);
  v27 = v0[2];
  sub_1A2D08864();

  strcpy(v40, "Destinations: ");
  HIBYTE(v40[1]) = -18;
  v5 = MEMORY[0x1A58E4220](v1, &type metadata for ActivityPresentationOptions.ActivityPresentationDestination);
  MEMORY[0x1A58E4150](v5);

  v37 = v40[1];
  v38 = v40[0];
  sub_1A2D08864();

  v40[0] = 0xD000000000000018;
  v40[1] = 0x80000001A2D197B0;
  if (v2)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v6, v7);

  v34 = v40[1];
  v35 = v40[0];
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1A2D08864();
  MEMORY[0x1A58E4150](0xD000000000000038, 0x80000001A2D197D0);
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v8, v9);

  v32 = v40[1];
  v33 = v40[0];
  v40[0] = 0;
  v40[1] = 0xE000000000000000;
  sub_1A2D08864();
  MEMORY[0x1A58E4150](0xD000000000000033, 0x80000001A2D19810);
  if (v4)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v4)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v10, v11);

  v30 = v40[1];
  v31 = v40[0];
  sub_1A2D08864();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0878, &unk_1A2D0C170);
  v12 = sub_1A2D087D4();
  MEMORY[0x1A58E4150](v12);

  sub_1A2D08864();

  v40[0] = 0xD00000000000001CLL;
  v40[1] = 0x80000001A2D19870;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v14 = 0x80000001A2D198D0;
      v13 = 0xD000000000000015;
    }

    else
    {
      v14 = 0xEA0000000000736ELL;
      v13 = 0x6F6974704F206F4ELL;
    }
  }

  else
  {
    if (v28)
    {
      v13 = 0xD000000000000011;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (v28)
    {
      v14 = 0x80000001A2D198F0;
    }

    else
    {
      v14 = 0x80000001A2D19910;
    }
  }

  MEMORY[0x1A58E4150](v13, v14);

  v15 = v40[1];
  v29 = v40[0];
  sub_1A2D08864();

  v40[0] = 0xD000000000000019;
  v40[1] = 0x80000001A2D19890;
  if (v36)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v36)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v16, v17);

  v18 = v40[0];
  v19 = v40[1];
  sub_1A2D08864();

  v40[0] = 0xD00000000000001DLL;
  v40[1] = 0x80000001A2D198B0;
  if (v39)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v39)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v20, v21);

  v22 = v40[0];
  v23 = v40[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A2D0C140;
  *(v24 + 32) = v38;
  *(v24 + 40) = v37;
  *(v24 + 48) = v35;
  *(v24 + 56) = v34;
  *(v24 + 64) = v33;
  *(v24 + 72) = v32;
  *(v24 + 80) = v31;
  *(v24 + 88) = v30;
  *(v24 + 96) = 0xD000000000000014;
  *(v24 + 104) = 0x80000001A2D19850;
  *(v24 + 112) = v29;
  *(v24 + 120) = v15;
  *(v24 + 128) = v18;
  *(v24 + 136) = v19;
  *(v24 + 144) = v22;
  *(v24 + 152) = v23;
  v25 = MEMORY[0x1A58E4220]();

  return v25;
}

uint64_t sub_1A2C69EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A2C69F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2C69F84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ActivityRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D8, &qword_1A2D14A30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6A740();
  sub_1A2D08C74();
  v41 = *v3;
  LOBYTE(v39) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B0, &qword_1A2D14A10);
  sub_1A2C6A794();
  sub_1A2D08AE4();
  if (!v2)
  {
    v11 = *(v3 + 3);
    *&v41 = *(v3 + 2);
    *(&v41 + 1) = v11;
    LOBYTE(v39) = 1;
    sub_1A2C6ABA0();

    sub_1A2D08AE4();

    v12 = *(v3 + 5);
    *&v41 = *(v3 + 4);
    *(&v41 + 1) = v12;
    LOBYTE(v39) = 2;
    sub_1A2C5E63C(v41, v12);
    sub_1A2C669D0();
    sub_1A2D08AE4();
    sub_1A2C55840(v41, *(&v41 + 1));
    v33 = type metadata accessor for ActivityRequest();
    v13 = v33[7];
    LOBYTE(v41) = 3;
    type metadata accessor for OpaqueActivityContent();
    sub_1A2C69EDC(&qword_1ED708AD8, type metadata accessor for OpaqueActivityContent);
    sub_1A2D08AE4();
    v14 = *(v3 + v33[8]);
    v15 = *(v14 + 16);
    v30 = v14;
    if (v15)
    {
      v16 = sub_1A2C66BC0(0);
      if (v17)
      {
        v18 = *(v14 + 56) + 24 * v16;
        v19 = *v18;
        v32 = *(v18 + 8);
        v20 = *(v18 + 16);
        sub_1A2C66A94(v19);
        v15 = v32;
LABEL_8:
        v31 = v19;
        v32 = v15;
        *&v41 = v19;
        *(&v41 + 1) = v15;
        LOBYTE(v42) = v20;
        LOBYTE(v39) = 4;
        sub_1A2C66A24();
        sub_1A2D08AE4();
        sub_1A2C6AE9C(v31, v32, v20);
        *&v41 = v30;
        LOBYTE(v39) = 13;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18C8, &qword_1A2D14A20);
        sub_1A2C6AEA0(&qword_1ED708A50, sub_1A2CAA9F0, sub_1A2C66A24);
        v32 = v21;
        sub_1A2D08AE4();
        v44 = *(v3 + v33[9]);
        v43 = 14;
        sub_1A2D08AE4();
        v22 = v33;
        v23 = (v3 + v33[10]);
        v41 = *v23;
        v42 = *(v23 + 2);
        v39 = *v23;
        v40 = *(v23 + 2);
        v38 = 5;
        sub_1A2C66F58(&v41, &v36);
        sub_1A2C6B09C();
        sub_1A2D08AE4();
        v36 = v39;
        v37 = v40;
        sub_1A2C69EAC(&v36);
        *&v34 = *(v3 + v22[11]);
        v35 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18D0, &qword_1A2D14A28);
        sub_1A2C6BCA0(&qword_1ED708B80, sub_1A2CEC5B8);
        sub_1A2D08AE4();
        v24 = *(v3 + v22[12]);
        LOBYTE(v34) = 7;
        sub_1A2D08AC4();
        v25 = *(v3 + v22[13]);
        LOBYTE(v34) = 8;
        sub_1A2D08AC4();
        v26 = *(v3 + v33[14]);
        LOBYTE(v34) = 9;
        sub_1A2D08AC4();
        v27 = *(v3 + v33[15]);
        LOBYTE(v34) = 10;
        sub_1A2D08AC4();
        LOBYTE(v34) = *(v3 + v33[16]);
        v35 = 11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A18B8, &qword_1A2D17DB0);
        sub_1A2CEC60C();
        sub_1A2D08AE4();
        v28 = v33[17];
        LOBYTE(v34) = 12;
        sub_1A2D07F94();
        sub_1A2C69EDC(&qword_1ED7093B0, MEMORY[0x1E6969530]);
        sub_1A2D08AE4();
        v34 = *(v3 + v33[18]);
        v35 = 15;
        sub_1A2D08AE4();
        return (*(v6 + 8))(v9, v5);
      }

      v19 = 0;
      v15 = 0;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    goto LABEL_8;
  }

  return (*(v6 + 8))(v9, v5);
}