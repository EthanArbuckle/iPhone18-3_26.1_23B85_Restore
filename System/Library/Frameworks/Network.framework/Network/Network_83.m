uint64_t sub_181FA7068(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return NWEndpoint.pairingData.setter(*a1, v3);
  }

  sub_181F49B44(*a1, v3);
  NWEndpoint.pairingData.setter(v2, v3);

  return sub_181D9D680(v2, v3);
}

uint64_t NWEndpoint.rawActivityLevel.getter()
{
  v1 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E180(v0, v3, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_181D8E388(v3, type metadata accessor for NWEndpoint);
  if (EnumCaseMultiPayload == 4)
  {
    NWEndpoint.txtRecord.getter(v8);
    v5 = v8[0];
    if (v8[0])
    {
      v7[0] = v8[0];
      v7[1] = v8[1];
      NWTXTRecord.subscript.getter(0x7974697669746341, 0xED00006C6576654CLL);

      sub_181AB612C(v5);
    }
  }

  return 0;
}

uint64_t NWEndpoint.screenState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  sub_181D8E180(v1, v12 - v7, type metadata accessor for NWEndpoint);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_181D8E388(v8, type metadata accessor for NWEndpoint);
    sub_181D8E180(v1, v5, type metadata accessor for NWEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_181D8E388(v5, type metadata accessor for NWEndpoint);
    if (EnumCaseMultiPayload == 4)
    {
      result = NWEndpoint.txtRecord.getter(v13);
      v11 = v13[0];
      if (v13[0])
      {
        v12[0] = v13[0];
        v12[1] = v13[1];
        NWTXTRecord.subscript.getter(0x7974697669746341, 0xED00006C6576654CLL);

        result = sub_181AB612C(v11);
      }
    }

    *a1 = 0;
  }

  else
  {
    *a1 = 0;
    return sub_181D8E388(v8, type metadata accessor for NWEndpoint);
  }

  return result;
}

uint64_t static NWEndpoint.applicationService(_:uuid:)@<X0>(uint64_t a1@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v20 = sub_182AD2238();
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v13 = sub_182AD3048();
  application_service = nw_endpoint_create_application_service((v13 + 32), &v20);

  sub_181B80998(application_service, v4);
  v15 = type metadata accessor for NWEndpoint();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v4, 1, v15))
  {
    sub_181F49A88(v4, &qword_1EA839360);
    v17 = 1;
  }

  else
  {
    sub_181B81180(v4, a1);
    v17 = 0;
  }

  return (*(v16 + 56))(a1, v17, 1, v15);
}

uint64_t NWEndpoint.hash(into:)()
{
  v1 = v0;
  v2 = sub_182AD2058();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E180(v1, v8, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *(v8 + 6);
      MEMORY[0x1865DB070](1);
      sub_182AD30E8();

      sub_182AD30E8();

      sub_182AD30E8();

      if (v17)
      {
        sub_182AD4518();
        v18 = *(v17 + 184);
        v19 = *(v17 + 185);
        MEMORY[0x1865DB070](*(v17 + 16));
        sub_182AD30E8();
        MEMORY[0x1865DB070](qword_182AEC420[v18]);
        MEMORY[0x1865DB070](qword_182AEC448[v19]);
      }

      else
      {
        return sub_182AD4518();
      }
    }

    else
    {
      v11 = *v8;
      v12 = *(v8 + 1);
      v13 = *(v8 + 2);
      v14 = v8[24];
      MEMORY[0x1865DB070](0);
      v20[0] = v11;
      v20[1] = v12;
      v20[2] = v13;
      v21 = v14;
      NWEndpoint.Host.hash(into:)();
      sub_182AD4528();
      return sub_181E605C8(v11, v12, v13, v14);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    MEMORY[0x1865DB070](2);
    sub_182AD30E8();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1865DB070](3);
    sub_181FAE948(&qword_1EA8366A0, MEMORY[0x1E6968FB0]);
    sub_182AD2EB8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    v15 = *v8;
    MEMORY[0x1865DB070](4);
    hash = nw_endpoint_get_hash(v15);
    MEMORY[0x1865DB070](hash);
    return swift_unknownObjectRelease();
  }
}

uint64_t NWEndpoint.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_182AD2058();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181D8E180(v1, v8, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return *v8;
    }

    if (EnumCaseMultiPayload == 3)
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_181FAE948(&qword_1EA8394E0, MEMORY[0x1E6968FB0]);
      v10 = sub_182AD41B8();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v18 = [*v8 description];
      v10 = sub_182AD2F88();
      swift_unknownObjectRelease();
    }

    return v10;
  }

  if (EnumCaseMultiPayload)
  {
    v20 = *v8;
    v19 = *(v8 + 1);
    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    v23 = *(v8 + 5);
    v36 = *(v8 + 4);
    v24 = *(v8 + 6);
    v25 = sub_182AD3428();
    *(v25 + 16) = 1026;
    bzero((v25 + 32), 0x402uLL);
    if (v24)
    {
      v26 = *(v24 + 48);
    }

    else
    {
      v26 = 0;
    }

    v34 = v20;
    v27 = sub_182AD3048();
    v35 = v22;
    v28 = sub_182AD3048();
    v29 = sub_182AD3048();
    if (v26)
    {
      v30 = sub_182AD3048();

      v31 = (v30 + 32);
    }

    else
    {

      v31 = 0;
    }

    v32 = nw_endpoint_construct_composite_bonjour_name((v25 + 32), 0x402uLL, (v27 + 32), (v28 + 32), (v29 + 32), v31);

    swift_unknownObjectRelease();
    if (v32)
    {

      v10 = sub_181FADC60(v25);

      return v10;
    }

    if (v24)
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      MEMORY[0x1865D9CA0](v34, v19);

      MEMORY[0x1865D9CA0](46, 0xE100000000000000);
      MEMORY[0x1865D9CA0](v35, v21);

      MEMORY[0x1865D9CA0](v36, v23);

      MEMORY[0x1865D9CA0](37, 0xE100000000000000);
      v41 = v24;
      sub_182AD3E18();
    }

    else
    {
      v37 = v34;
      v38 = v19;
      MEMORY[0x1865D9CA0](46, 0xE100000000000000);
      MEMORY[0x1865D9CA0](v35, v21);

      MEMORY[0x1865D9CA0](v36, v23);
    }

    return v37;
  }

  else
  {
    v11 = *v8;
    v12 = *(v8 + 1);
    v13 = *(v8 + 2);
    v14 = *(v8 + 13);
    v15 = v8[24];
    if (v15 == 2)
    {
      v16 = 46;
    }

    else
    {
      v16 = 58;
    }

    v41 = 0;
    v42 = 0xE000000000000000;
    v37 = v11;
    v38 = v12;
    v39 = v13;
    v40 = v15;
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](v16, 0xE100000000000000);
    LOWORD(v37) = v14;
    sub_182AD3E18();
    sub_181E605C8(v11, v12, v13, v15);
    return v41;
  }
}

uint64_t NWEndpoint.hashValue.getter()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FA7EA0()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t sub_181FA7EE4()
{
  sub_182AD44E8();
  NWEndpoint.hash(into:)();
  return sub_182AD4558();
}

uint64_t NWEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v115 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = &v88 - v4;
  v104 = sub_182AD2258();
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394F0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v88 - v17;
  v19 = a1[3];
  v108 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_181FADCAC();
  v20 = v107;
  sub_182AD45E8();
  if (v20)
  {
    v21 = v108;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v94 = v16;
  v100 = v14;
  v101 = v11;
  v102 = v8;
  LOBYTE(v111) = 0;
  sub_181C67934();
  sub_182AD3FF8();
  v24 = v113[0];
  v23 = v113[1];
  v25 = objc_opt_self();
  v26 = sub_182AD2138();
  v113[0] = 0;
  v27 = [v25 propertyListWithData:v26 options:0 format:0 error:v113];

  v28 = v108;
  if (!v27)
  {
    v32 = v113[0];
    sub_182AD1F08();

    swift_willThrow();
    sub_181C1F2E4(v24, v23);
    (*(v94 + 8))(v18, v15);
    v21 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v92 = v24;
  v29 = v113[0];
  sub_182AD3AA8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AD70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v114 = 0;
  }

  LOBYTE(v111) = 1;
  sub_181FADD00();
  sub_182AD3FF8();
  v31 = v104;
  v30 = v105;
  v88 = v23;
  v90 = v18;
  v89 = v15;
  v91 = 0;
  v33 = v113[0] + 64;
  v34 = 1 << *(v113[0] + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v113[0] + 8);
  v93 = (v34 + 63) >> 6;
  v37 = v106;
  v103 = (v106 + 16);
  v107 = (v106 + 32);
  v97 = (v106 + 8);
  v95 = v113[0];

  v38 = 0;
  for (i = v33; ; v33 = i)
  {
    v39 = v102;
    if (v36)
    {
      v40 = v38;
      goto LABEL_25;
    }

    v41 = v93 <= v38 + 1 ? v38 + 1 : v93;
    v42 = v41 - 1;
    do
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      if (v40 >= v93)
      {
        v53 = v31;
        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839508);
        v52 = v101;
        (*(*(v74 - 8) + 56))(v101, 1, 1, v74);
        v36 = 0;
        v38 = v42;
        goto LABEL_26;
      }

      v36 = *&v33[8 * v40];
      ++v38;
    }

    while (!v36);
    v38 = v40;
LABEL_25:
    v43 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v44 = v43 | (v40 << 6);
    v45 = (v95[6] + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    (*(v37 + 16))(v102, v95[7] + *(v37 + 72) * v44, v31);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839508);
    v49 = *(v48 + 48);
    v50 = v101;
    *v101 = v47;
    *(v50 + 1) = v46;
    v51 = *(v37 + 32);
    v52 = v50;
    v53 = v31;
    v51(&v50[v49], v39, v31);
    (*(*(v48 - 8) + 56))(v52, 0, 1, v48);

    v30 = v105;
LABEL_26:
    v54 = v100;
    sub_181B7D08C(v52, v100, &qword_1EA8394E8);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839508);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      break;
    }

    v57 = *v54;
    v56 = *(v54 + 1);
    v31 = v53;
    (*v107)(v30, &v54[*(v55 + 48)], v53);
    if (!v114)
    {
      (*v97)(v30, v53);
      goto LABEL_14;
    }

    *&v111 = v57;
    *(&v111 + 1) = v56;
    sub_182AD3B28();
    v112 = v53;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v111);
    (*v103)(boxed_opaque_existential_0Tm, v30, v53);
    sub_181E7BFC4(&v111, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v114;
    v109 = v114;
    v114 = 0x8000000000000000;
    v62 = sub_18224F244(v113);
    v63 = *(v60 + 16);
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_50;
    }

    v66 = v61;
    if (*(v60 + 24) >= v65)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v69 = v109;
        if (v61)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_182255BB8();
        v69 = v109;
        if (v66)
        {
          goto LABEL_36;
        }
      }

LABEL_32:
      v69[(v62 >> 6) + 8] |= 1 << v62;
      sub_181FADD54(v113, v69[6] + 40 * v62);
      sub_181E7BFC4(v110, (v69[7] + 32 * v62));
      sub_181FADDB0(v113);
      v31 = v104;
      (*v97)(v30, v104);
      v70 = v69[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (!v71)
      {
        v69[2] = v72;
        goto LABEL_37;
      }

      goto LABEL_51;
    }

    sub_182251DE4(v65, isUniquelyReferenced_nonNull_native);
    v67 = sub_18224F244(v113);
    if ((v66 & 1) != (v68 & 1))
    {
      goto LABEL_53;
    }

    v62 = v67;
    v69 = v109;
    if ((v66 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_36:
    v73 = (v69[7] + 32 * v62);
    __swift_destroy_boxed_opaque_existential_1(v73);
    sub_181E7BFC4(v110, v73);
    sub_181FADDB0(v113);
    v31 = v104;
    (*v97)(v30, v104);
LABEL_37:
    v114 = v69;
LABEL_14:

    v37 = v106;
  }

  if (v114)
  {

    v75 = sub_182AD2E48();
  }

  else
  {
    v75 = 0;
  }

  v76 = v108;
  v77 = v94;
  v78 = v99;
  v79 = v90;
  v80 = v98;
  XPCDictionaryFromNSDictionary = NWUtilsCreateXPCDictionaryFromNSDictionary(v75);

  if (!XPCDictionaryFromNSDictionary)
  {

    v84 = sub_182AD3CB8();
    swift_allocError();
    v86 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839510);
    v87 = v114;
    v86[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839518);
    *v86 = v87;

    sub_182AD3C88();
    (*(*(v84 - 8) + 104))(v86, *MEMORY[0x1E69E6B30], v84);
    swift_willThrow();
    sub_181C1F2E4(v92, v88);
    (*(v77 + 8))(v79, v89);
    goto LABEL_48;
  }

  nw_endpoint_create_from_dictionary(XPCDictionaryFromNSDictionary);
  v82 = swift_unknownObjectRetain();
  sub_181B80998(v82, v80);
  v83 = type metadata accessor for NWEndpoint();
  if (!(*(*(v83 - 8) + 48))(v80, 1, v83))
  {
    (*(v77 + 8))(v79, v89);

    sub_181C1F2E4(v92, v88);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_181B81180(v80, v78);
LABEL_48:

    v21 = v76;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  sub_181F49A88(v80, &qword_1EA839360);
  __break(1u);
LABEL_53:
  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t NWEndpoint.encode(to:)(void *a1)
{
  v109 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - v5;
  v7 = sub_182AD2258();
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839520);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v74 - v13;
  v15 = NWEndpoint.nw.getter();
  if (!v15)
  {
    v20 = sub_182AD3CB8();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839510);
    v22[3] = type metadata accessor for NWEndpoint();
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v22);
    sub_181D8E180(v1, boxed_opaque_existential_0Tm, type metadata accessor for NWEndpoint);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_182AD45F8();
    sub_182AD3C88();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6B30], v20);
    return swift_willThrow();
  }

  v16 = v15;
  v84 = v7;
  v79 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FADCAC();
  sub_182AD4638();
  v76 = nw_endpoint_copy_dictionary(v16);
  NSDictionaryFromXPCDictionary = NWUtilsCreateNSDictionaryFromXPCDictionary(v76);
  v80 = v11;
  v78 = v14;
  v77 = v16;
  v75 = v2;
  if (NSDictionaryFromXPCDictionary)
  {
    v18 = NSDictionaryFromXPCDictionary;
    v19 = sub_182AD2E58();
  }

  else
  {
    v19 = sub_18225B108(MEMORY[0x1E69E7CC0]);
  }

  v25 = v85;
  v26 = v19 + 64;
  v27 = 1 << *(v19 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v19 + 64);
  v30 = (v27 + 63) >> 6;
  v95 = (v86 + 56);
  v93 = (v86 + 32);
  v90 = (v86 + 8);
  v83 = (v86 + 16);
  v81 = v86 + 40;

  v31 = 0;
  v92 = MEMORY[0x1E69E7CC8];
  v94 = v19;
  v88 = v19;
  v32 = v84;
  v82 = v6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v29)
        {
          v33 = v25;
          v34 = v31;
          goto LABEL_20;
        }

        v35 = v30 <= v31 + 1 ? v31 + 1 : v30;
        v36 = v35 - 1;
        do
        {
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
          }

          if (v34 >= v30)
          {
            v29 = 0;
            v104 = 0;
            v102 = 0u;
            v103 = 0u;
            v31 = v36;
            v100 = 0u;
            v101 = 0u;
            goto LABEL_21;
          }

          v29 = *(v26 + 8 * v34);
          ++v31;
        }

        while (!v29);
        v33 = v25;
        v31 = v34;
LABEL_20:
        v37 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v38 = v37 | (v34 << 6);
        v39 = v94;
        sub_181FADD54(*(v94 + 48) + 40 * v38, &v97);
        sub_181C65504(*(v39 + 56) + 32 * v38, v96);
        v100 = v97;
        v101 = v98;
        *&v102 = v99;
        sub_181E7BFC4(v96, (&v102 + 8));
        v25 = v33;
LABEL_21:
        v107[0] = v102;
        v107[1] = v103;
        v108 = v104;
        v105 = v100;
        v106 = v101;
        if (!*(&v101 + 1))
        {

          v62 = objc_opt_self();
          v63 = sub_182AD2E48();

          *&v105 = 0;
          v64 = [v62 dataWithPropertyList:v63 format:200 options:0 error:&v105];

          v65 = v105;
          if (v64)
          {
            v66 = v92;
            v67 = sub_182AD2158();
            v69 = v68;

            *&v105 = v67;
            *(&v105 + 1) = v69;
            LOBYTE(v100) = 0;
            sub_181C675F8();
            v70 = v80;
            v71 = v78;
            v72 = v75;
            sub_182AD4118();
            if (v72)
            {
              (*(v79 + 8))(v71, v70);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return sub_181C1F2E4(v67, v69);
            }

            else
            {
              *&v105 = v66;
              LOBYTE(v100) = 1;
              sub_181FADE04();
              sub_182AD4118();
              sub_181C1F2E4(v67, v69);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return (*(v79 + 8))(v71, v70);
            }
          }

          else
          {
            v73 = v65;

            sub_182AD1F08();

            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            return (*(v79 + 8))(v78, v80);
          }
        }

        v100 = v105;
        v101 = v106;
        *&v102 = *&v107[0];
        sub_181E7BFC4((v107 + 8), &v97);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_181FADDB0(&v100);
        (*v95)(v6, 1, 1, v32);
        sub_181F49A88(v6, &qword_1EA8394C0);
      }

      (*v95)(v6, 0, 1, v32);
      v40 = *v93;
      (*v93)(v25, v6, v32);
      sub_181FADD54(&v100, &v97);
      if (swift_dynamicCast())
      {
        break;
      }

      (*v90)(v25, v32);
      sub_181FADDB0(&v100);
    }

    v87 = v40;
    v41 = v96[0];
    (*v83)(v91, v25, v32);
    v42 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = v42;
    v89 = v41;
    v45 = sub_181CA266C(v41, *(&v41 + 1));
    v46 = v42[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_48;
    }

    v49 = v44;
    if (v42[3] < v48)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_182255FE0();
    }

LABEL_32:
    v32 = v84;
    if (v49)
    {

      v92 = v97;
      (*(v86 + 40))(*(v97 + 56) + *(v86 + 72) * v45, v91, v32);
    }

    else
    {
      v52 = v97;
      *(v97 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v53 = (v52[6] + 16 * v45);
      *v53 = v89;
      v53[1] = *(&v41 + 1);
      v87(v52[7] + *(v86 + 72) * v45, v91, v32);
      v54 = v52[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_49;
      }

      v92 = v52;
      v52[2] = v56;
    }

    v57 = v88;
    v58 = sub_18224F244(&v100);
    v6 = v82;
    if (v59)
    {
      v60 = v58;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v96[0] = v57;
      if (!v61)
      {
        sub_182255BB8();
        v57 = *&v96[0];
      }

      sub_181FADDB0(*(v57 + 48) + 40 * v60);
      sub_181E7BFC4((*(v57 + 56) + 32 * v60), &v97);
      v88 = v57;
      sub_181FAAC04(v60, v57);
      v25 = v85;
      (*v90)(v85, v32);
      sub_181FADDB0(&v100);
    }

    else
    {
      v25 = v85;
      (*v90)(v85, v32);
      sub_181FADDB0(&v100);
      v97 = 0u;
      v98 = 0u;
    }

    sub_181F49A88(&v97, &unk_1EA83A4F0);
  }

  sub_18225243C(v48, isUniquelyReferenced_nonNull_native);
  v50 = sub_181CA266C(v89, *(&v41 + 1));
  if ((v41 & 1) == (v51 & 1))
  {
    v45 = v50;
    goto LABEL_32;
  }

  result = sub_182AD4408();
  __break(1u);
  return result;
}

uint64_t sub_181FA973C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8395F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FAE77C();
  sub_182AD4638();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8395D8);
  sub_181FAE88C();
  sub_182AD4118();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_181FA9898(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696669746E656469;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000737265;
  }

  if (*a2)
  {
    v5 = 0x696669746E656469;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xEB00000000737265;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_182AD4268();
  }

  return v8 & 1;
}

uint64_t sub_181FA9940()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FA99C4()
{
  sub_182AD30E8();
}

uint64_t sub_181FA9A34()
{
  sub_182AD44E8();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FA9AB4@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_181FA9B14(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000737265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_181FA9B54()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_181FA9B90@<X0>(char *a1@<X8>)
{
  v2 = sub_182AD3F48();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_181FA9BF4(uint64_t a1)
{
  v2 = sub_181FADCAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FA9C30(uint64_t a1)
{
  v2 = sub_181FADCAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_181FA9C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEB00000000737265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_182AD4268();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_181FA9D18(uint64_t a1)
{
  v2 = sub_181FAE77C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181FA9D54(uint64_t a1)
{
  v2 = sub_181FAE77C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_181FA9D90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_181FADADC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_181FA9E08(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v36[2] = *MEMORY[0x1E69E9840];
  v12 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v12)
    {
      goto LABEL_17;
    }

    v36[0] = a1;
    LOWORD(v36[1]) = a2;
    BYTE2(v36[1]) = BYTE2(a2);
    BYTE3(v36[1]) = BYTE3(a2);
    BYTE4(v36[1]) = BYTE4(a2);
    v13 = a7 >> 62;
    BYTE5(v36[1]) = BYTE5(a2);
    if ((a7 >> 62) > 1)
    {
      if (v13 != 2)
      {
        v28 = 0;
        goto LABEL_47;
      }

      v29 = *(a6 + 16);
      v27 = *(a6 + 24);
      v28 = v27 - v29;
      if (!__OFSUB__(v27, v29))
      {
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_31;
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    LODWORD(v12) = HIDWORD(a6) - a6;
    if (!__OFSUB__(HIDWORD(a6), a6))
    {
      goto LABEL_45;
    }

    __break(1u);
  }

  if (v12 != 2)
  {
    v27 = a7 >> 62;
    memset(v36, 0, 14);
    if ((a7 >> 62) <= 1)
    {
      if (v27)
      {
        LODWORD(v12) = HIDWORD(a6) - a6;
        if (!__OFSUB__(HIDWORD(a6), a6))
        {
LABEL_45:
          v28 = v12;
          goto LABEL_47;
        }

        goto LABEL_55;
      }

LABEL_26:
      v28 = BYTE6(a7);
LABEL_47:
      v34 = sub_182AD3048();
      swift_unknownObjectRetain();

      sub_181F49B58(a6, a7);
      swift_unknownObjectRetain();

      sub_181F49B58(a6, a7);
      nw_endpoint_set_custom_metadata_for_key(a3, v34 + 32, v36, v28);

      swift_unknownObjectRelease();

      sub_181C1F2E4(a6, a7);
LABEL_51:

      swift_unknownObjectRelease();
      sub_181C1F2E4(a6, a7);

      swift_unknownObjectRelease();
      return sub_181C1F2E4(a6, a7);
    }

LABEL_31:
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_47;
    }

    v30 = *(a6 + 16);
    v18 = *(a6 + 24);
    v28 = v18 - v30;
    if (!__OFSUB__(v18, v30))
    {
      goto LABEL_47;
    }

    __break(1u);
    goto LABEL_35;
  }

  v14 = *(a1 + 16);
  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  v15 = sub_182AD1D58();
  if (!v15)
  {
    sub_182AD1D78();
    goto LABEL_58;
  }

  v16 = v15;
  v17 = sub_182AD1D88();
  if (__OFSUB__(v14, v17))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v8 = v14 - v17 + v16;
  a1 = sub_182AD1D78();
  if (!v8)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
LABEL_35:
    if (v18 != 2)
    {
LABEL_43:
      v26 = 0;
      goto LABEL_50;
    }

    v31 = *(a6 + 16);
    v25 = *(a6 + 24);
    v26 = v25 - v31;
    if (!__OFSUB__(v25, v31))
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_39:
    if (v25 == 2)
    {
      v33 = *(a6 + 16);
      v32 = *(a6 + 24);
      v26 = v32 - v33;
      if (!__OFSUB__(v32, v33))
      {
        goto LABEL_50;
      }

      __break(1u);
    }

    goto LABEL_43;
  }

  if (!v18)
  {
LABEL_23:
    v26 = BYTE6(a7);
LABEL_50:
    v35 = sub_182AD3048();
    nw_endpoint_set_custom_metadata_for_key(a3, v35 + 32, v8, v26);

    swift_unknownObjectRelease();

    sub_181C1F2E4(a6, a7);

    swift_unknownObjectRelease();
    sub_181C1F2E4(a6, a7);
    goto LABEL_51;
  }

  v19 = HIDWORD(a6) - a6;
  if (!__OFSUB__(HIDWORD(a6), a6))
  {
    goto LABEL_49;
  }

  __break(1u);
LABEL_17:
  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_53;
  }

  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  swift_unknownObjectRetain();

  sub_181F49B58(a6, a7);
  v21 = sub_182AD1D58();
  if (!v21)
  {
LABEL_59:
    result = sub_182AD1D78();
    goto LABEL_60;
  }

  v22 = v21;
  v23 = sub_182AD1D88();
  if (__OFSUB__(v20, v23))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = v20 - v23 + v22;
  result = sub_182AD1D78();
  if (v8)
  {
    v25 = a7 >> 62;
    if ((a7 >> 62) <= 1)
    {
      if (!v25)
      {
        goto LABEL_23;
      }

      v19 = HIDWORD(a6) - a6;
      if (!__OFSUB__(HIDWORD(a6), a6))
      {
LABEL_49:
        v26 = v19;
        goto LABEL_50;
      }

LABEL_56:
      __break(1u);
    }

    goto LABEL_39;
  }

LABEL_60:
  __break(1u);
  return result;
}

_BYTE *sub_181FAA294@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_181E68460(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_181E3720C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_181C1F030(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_181FAA328(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      sub_182AD44E8();
      sub_182AD3028();

      sub_182AD30E8();

      v10 = sub_182AD4558();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (24 * v3 < (24 * v6) || v16 >= v17 + 24 || v3 != v6)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

uint64_t sub_181FAA514(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_182AD44E8();
      if (v9)
      {
        MEMORY[0x1865DB070](1);
      }

      MEMORY[0x1865DB070](v9);
      result = sub_182AD4558();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v10)
      {
LABEL_12:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
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

unint64_t sub_181FAA6B8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_182AD44E8();
      sub_182AD4518();
      if (v9 != 5)
      {
        MEMORY[0x1865DB070](v9);
      }

      result = sub_182AD4558();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for SecFramer(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_181FAA8A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_182AD44E8();
      if (v12 == 1)
      {
        MEMORY[0x1865DB070](0);
      }

      else
      {
        MEMORY[0x1865DB070](1);
        MEMORY[0x1865DB0B0](v11);
      }

      result = sub_182AD4558();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v13)
      {
LABEL_13:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + v9);
        if (16 * v3 != v9 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_181FAAA70(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_182AD44E8();
      MEMORY[0x1865DB0B0](v9);
      result = sub_182AD4558();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
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

uint64_t sub_181FAAC04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      sub_181FADD54(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_182AD3B08();
      result = sub_181FADDB0(v25);
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

void sub_181FAADA8(int64_t a1, uint64_t a2)
{
  v4 = sub_182AD3E78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_182AD3AE8();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = sub_182AD2EA8();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_181FAB05C(unint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for NWActorID();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = a1;
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (v5 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = v5;
    v13 = sub_182AD3AE8();
    v5 = v12;
    v14 = (v13 + 1) & v11;
    v15 = *(v4 + 72);
    v26 = a2 + 64;
    do
    {
      v28 = v5;
      v16 = v15;
      v17 = v15 * v10;
      sub_181D8E180(*(a2 + 48) + v15 * v10, v7, type metadata accessor for NWActorID);
      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      sub_182AD2EB8();
      v18 = sub_182AD4558();
      sub_181D8E388(v7, type metadata accessor for NWActorID);
      v5 = v28;
      v19 = v18 & v11;
      if (v28 >= v14)
      {
        if (v19 < v14)
        {
          v8 = v26;
          v15 = v16;
          goto LABEL_4;
        }

        v15 = v16;
        if (v28 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v15 = v16;
        if (v19 >= v14 || v28 >= v19)
        {
LABEL_11:
          if (v15 * v28 < v17 || *(a2 + 48) + v15 * v28 >= (*(a2 + 48) + v17 + v15))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v28;
            v8 = v26;
          }

          else
          {
            v8 = v26;
            if (v15 * v28 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v28;
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * v5);
          v22 = (v20 + 8 * v10);
          if (v5 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v5 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v26;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void sub_181FAB390(uint64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for NWActorID();
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v10 = (v9 + 1) & ~v8;
  v11 = *(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10;
  v31 = v9;
  if (v11)
  {
    v12 = ~v8;
    v13 = (sub_182AD3AE8() + 1) & ~v8;
    v14 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v15 = v14 * v10;
      sub_181D8E180(*(a2 + 48) + v14 * v10, v6, type metadata accessor for NWActorID);
      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      sub_182AD2EB8();
      v16 = sub_182AD4558();
      sub_181D8E388(v6, type metadata accessor for NWActorID);
      v17 = v16 & v12;
      v18 = v31;
      if (v31 >= v13)
      {
        if (v17 < v13)
        {
          v7 = v29;
          goto LABEL_4;
        }

        if (v31 < v17)
        {
LABEL_3:
          v7 = v29;
          goto LABEL_4;
        }
      }

      else if (v17 < v13 && v31 < v17)
      {
        goto LABEL_3;
      }

      if (v14 * v31 < v15 || *(a2 + 48) + v14 * v31 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v14 * v31 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for NWActorDiscoveryMechanism(0) - 8) + 72);
      v21 = v20 * v18;
      v22 = v19 + v20 * v18;
      v23 = v20 * v10;
      v24 = v19 + v20 * v10 + v20;
      v25 = v21 < v23 || v22 >= v24;
      v7 = v29;
      if (v25)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_24:
        v31 = v10;
        goto LABEL_4;
      }

      v31 = v10;
      if (v21 != v23)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_24;
      }

LABEL_4:
      v10 = (v10 + 1) & v12;
    }

    while (((*(v7 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v7 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v31) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_181FAB6EC(unint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for NWActorID();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = a1;
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (v5 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = v5;
    v13 = sub_182AD3AE8();
    v5 = v12;
    v14 = (v13 + 1) & v11;
    v15 = *(v4 + 72);
    v26 = a2 + 64;
    do
    {
      v28 = v5;
      v16 = v15;
      v17 = v15 * v10;
      sub_181D8E180(*(a2 + 48) + v15 * v10, v7, type metadata accessor for NWActorID);
      sub_182AD44E8();
      sub_182AD30E8();
      sub_182AD2258();
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      sub_182AD2EB8();
      v18 = sub_182AD4558();
      sub_181D8E388(v7, type metadata accessor for NWActorID);
      v5 = v28;
      v19 = v18 & v11;
      if (v28 >= v14)
      {
        if (v19 < v14)
        {
          v8 = v26;
          v15 = v16;
          goto LABEL_4;
        }

        v15 = v16;
        if (v28 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v15 = v16;
        if (v19 >= v14 || v28 >= v19)
        {
LABEL_11:
          if (v15 * v28 < v17 || *(a2 + 48) + v15 * v28 >= (*(a2 + 48) + v17 + v15))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v28;
            v8 = v26;
          }

          else
          {
            v8 = v26;
            if (v15 * v28 != v17)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v28;
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 16 * v5);
          v22 = (v20 + 16 * v10);
          if (v5 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v5 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v26;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_181FABA20(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    while (1)
    {
      sub_182AD44E8();

      sub_182AD30E8();
      v9 = sub_182AD4558();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for NWActorSystem.ServerRole() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_181FABC0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      sub_182AD44E8();
      sub_182AD44F8();
      result = sub_182AD4558();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + 16 * v3);
        v12 = (v10 + 16 * v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  *(a2 + 16) = v18;
  ++*(a2 + 36);
  return result;
}

void sub_181FABDE0(int64_t a1, uint64_t a2)
{
  v38 = sub_182AD2258();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_182AD3AE8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      v22 = sub_182AD2EA8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 16 * a1);
          v28 = (v26 + 16 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_181FAC100(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_182AD44D8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839610) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_181FAC2C4(int64_t a1, uint64_t a2)
{
  v4 = sub_182AD2258();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_182AD3AE8();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      v21 = sub_182AD2EA8();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB10) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_181FAC614(int64_t a1, uint64_t a2)
{
  v38 = sub_182AD2258();
  v4 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_182AD3AE8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_181FAE948(&qword_1EA836BF0, MEMORY[0x1E69695A8]);
      v22 = sub_182AD2EA8();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t sub_181FAC934(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_182AD3AE8() + 1) & ~v5;
    do
    {
      sub_182AD44E8();

      sub_182AD30E8();
      v9 = sub_182AD4558();

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

uint64_t sub_181FACAE4(uint64_t a1)
{
  sub_18208AFAC(a1);
  v1 = sub_182AD30B8();

  return v1;
}

uint64_t sub_181FACB3C(uint64_t a1, unint64_t a2)
{
  sub_181F49B58(a1, a2);
  sub_182084884(a1, a2);
  v4 = sub_182AD30B8();

  return v4;
}

uint64_t sub_181FACBA8(uint64_t a1, unint64_t a2)
{
  sub_18208B190(a1, a2);
  v2 = sub_182AD30B8();

  return v2;
}

uint64_t sub_181FACC00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_182AD30B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_181FACC3C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_182AD30B8();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_182AD30B8();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_182AD1D58();
  if (a1)
  {
    a1 = sub_182AD1D88();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_182AD1D58() || !__OFSUB__(v5, sub_182AD1D88()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_182AD1D78();
  return sub_182AD30B8();
}

uint64_t _s7Network10NWEndpointO4HostO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      goto LABEL_17;
    }

    v11 = v3 == v7 && v2 == v6;
    if (!v11 && (sub_182AD4268() & 1) == 0)
    {
      sub_181FAE990(v7, v6, v8, 0);
      sub_181FAE990(v3, v2, v4, 0);
      sub_181E605C8(v3, v2, v4, 0);
      v13 = v7;
      v14 = v6;
      v15 = v8;
      v16 = 0;
      goto LABEL_18;
    }

    if (v4)
    {
      if (v8)
      {
        v21 = v4;
        v18 = v8;
        v12 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v21, &v18);

        sub_181FAE990(v7, v6, v8, 0);
        sub_181FAE990(v3, v2, v4, 0);
        swift_retain_n();
        sub_181E605C8(v3, v2, v4, 0);
        sub_181E605C8(v7, v6, v8, 0);

        if ((v12 & 1) == 0)
        {
LABEL_19:
          v10 = 0;
          return v10 & 1;
        }

LABEL_22:
        v10 = 1;
        return v10 & 1;
      }

      sub_181FAE990(v7, v6, 0, 0);
      sub_181FAE990(v3, v2, v4, 0);

      sub_181E605C8(v3, v2, v4, 0);
      sub_181E605C8(v7, v6, 0, 0);
    }

    else
    {

      sub_181FAE990(v7, v6, v8, 0);
      sub_181FAE990(v3, v2, 0, 0);
      sub_181E605C8(v3, v2, 0, 0);
      sub_181E605C8(v7, v6, v8, 0);
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_19;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v21 = *a1;
      v22 = v2;
      v23 = v4;
      v18 = v7;
      v19 = v6;
      v20 = v8;
      sub_181FAE990(v7, v6, v8, 2);
      sub_181FAE990(v3, v2, v4, 2);
      sub_181FAE990(v7, v6, v8, 2);
      sub_181FAE990(v3, v2, v4, 2);
      v10 = _s7Network11IPv6AddressV2eeoiySbAC_ACtFZ_0(&v21, &v18);
      sub_181E605C8(v3, v2, v4, 2);
      sub_181E605C8(v7, v6, v8, 2);
      sub_181E605C8(v7, v6, v8, 2);
      sub_181E605C8(v3, v2, v4, 2);
      return v10 & 1;
    }

    goto LABEL_17;
  }

  if (v9 != 1)
  {
LABEL_17:
    sub_181FAE990(*a2, *(a2 + 8), v8, v9);
    sub_181FAE990(v3, v2, v4, v5);
    sub_181E605C8(v3, v2, v4, v5);
    v13 = v7;
    v14 = v6;
    v15 = v8;
    v16 = v9;
LABEL_18:
    sub_181E605C8(v13, v14, v15, v16);
    goto LABEL_19;
  }

  LODWORD(v21) = *a1;
  v22 = v2;
  LODWORD(v18) = v7;
  v19 = v6;
  sub_181FAE990(v7, v6, v8, 1);
  sub_181FAE990(v3, v2, v4, 1);
  sub_181FAE990(v7, v6, v8, 1);
  sub_181FAE990(v3, v2, v4, 1);
  v10 = _s7Network11IPv4AddressV2eeoiySbAC_ACtFZ_0(&v21, &v18);
  sub_181E605C8(v3, v2, v4, 1);
  sub_181E605C8(v7, v6, v8, 1);
  sub_181E605C8(v7, v6, v8, 1);
  sub_181E605C8(v3, v2, v4, 1);
  return v10 & 1;
}

uint64_t _s7Network10NWEndpointO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD2058();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v73 - v7;
  v8 = type metadata accessor for NWEndpoint();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v73 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v73 - v18);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839620);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v73 + *(v25 + 56) - v24;
  v27 = a1;
  v28 = &v73 - v24;
  sub_181D8E180(v27, &v73 - v24, type metadata accessor for NWEndpoint);
  sub_181D8E180(a2, v26, type metadata accessor for NWEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_181D8E180(v28, v22, type metadata accessor for NWEndpoint);
      v38 = *v22;
      v37 = *(v22 + 1);
      v39 = *(v22 + 2);
      v40 = v22[24];
      if (!swift_getEnumCaseMultiPayload())
      {
        LODWORD(v76) = *(v22 + 13);
        v60 = *v26;
        v61 = *(v26 + 1);
        v62 = *(v26 + 2);
        LODWORD(v75) = *(v26 + 13);
        v63 = v26[24];
        v79[0] = v38;
        v79[1] = v37;
        v79[2] = v39;
        v80 = v40;
        v77[0] = v60;
        v77[1] = v61;
        v77[2] = v62;
        v78 = v63;
        v64 = v28;
        v65 = _s7Network10NWEndpointO4HostO2eeoiySbAE_AEtFZ_0(v79, v77);
        sub_181E605C8(v60, v61, v62, v63);
        sub_181E605C8(v38, v37, v39, v40);
        v35 = v65 & (v76 == v75);
        v66 = v64;
LABEL_51:
        sub_181D8E388(v66, type metadata accessor for NWEndpoint);
        return v35 & 1;
      }

      sub_181E605C8(v38, v37, v39, v40);
      goto LABEL_28;
    }

    v76 = v28;
    sub_181D8E180(v28, v19, type metadata accessor for NWEndpoint);
    v45 = *v19;
    v46 = v19[1];
    v48 = v19[2];
    v47 = v19[3];
    v50 = v19[4];
    v49 = v19[5];
    v51 = v19[6];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v28 = v76;
      goto LABEL_28;
    }

    v75 = v51;
    v52 = *v26;
    v53 = *(v26 + 1);
    v55 = *(v26 + 2);
    v54 = *(v26 + 3);
    v56 = *(v26 + 5);
    v73 = *(v26 + 4);
    v74 = v56;
    v57 = *(v26 + 6);
    if (v45 == v52 && v46 == v53)
    {
    }

    else
    {
      v59 = sub_182AD4268();

      if ((v59 & 1) == 0)
      {

LABEL_39:

        v35 = 0;
        v69 = v76;
LABEL_50:
        v66 = v69;
        goto LABEL_51;
      }
    }

    if (v48 == v55 && v47 == v54)
    {
    }

    else
    {
      v68 = sub_182AD4268();

      if ((v68 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v70 = v75;
    if (v50 == v73 && v49 == v74)
    {

      v69 = v76;
    }

    else
    {
      v71 = sub_182AD4268();

      v69 = v76;
      if ((v71 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    if (v70)
    {
      if (v57)
      {
        v79[0] = v70;
        v77[0] = v57;
        v35 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(v79, v77);
        swift_retain_n();

        goto LABEL_50;
      }
    }

    else if (!v57)
    {
      v35 = 1;
      goto LABEL_50;
    }

LABEL_49:

    v35 = 0;
    goto LABEL_50;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_181D8E180(v28, v16, type metadata accessor for NWEndpoint);
    v42 = *v16;
    v41 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v42 == *v26 && v41 == *(v26 + 1))
      {
        v35 = 1;
      }

      else
      {
        v35 = sub_182AD4268();
      }

      goto LABEL_32;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_181D8E180(v28, v13, type metadata accessor for NWEndpoint);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v31 = v75;
      v30 = v76;
      v32 = *(v75 + 32);
      v33 = v73;
      v32(v73, v13, v76);
      v34 = v74;
      v32(v74, v26, v30);
      v35 = sub_182AD1FB8();
      v36 = *(v31 + 8);
      v36(v34, v30);
      v36(v33, v30);
LABEL_32:
      v66 = v28;
      goto LABEL_51;
    }

    (*(v75 + 8))(v13, v76);
  }

  else
  {
    sub_181D8E180(v28, v10, type metadata accessor for NWEndpoint);
    v44 = *v10;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v35 = [v44 isEqual_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_32;
    }

    swift_unknownObjectRelease();
  }

LABEL_28:
  sub_181F49A88(v28, &qword_1EA839620);
  v35 = 0;
  return v35 & 1;
}

BOOL _s7Network15EthernetAddressV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint8x8_t a3, uint8x8_t a4)
{
  result = 0;
  a3.i32[0] = *a1;
  a4.i32[0] = *a2;
  if ((vminv_u16(vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL))) & 1) != 0 && *(a1 + 4) == *(a2 + 4))
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  return result;
}

uint64_t sub_181FADA8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_181E605C8(a1, a2, a3, a4);
  }

  return a1;
}

void *sub_181FADADC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8395C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181FAE77C();
  sub_182AD45E8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8395D8);
    sub_181FAE7D0();
    sub_182AD3FF8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_181FADC60(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return sub_182AD30B8();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return sub_182AD30B8();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_181FADCAC()
{
  result = qword_1EA8394F8;
  if (!qword_1EA8394F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8394F8);
  }

  return result;
}

unint64_t sub_181FADD00()
{
  result = qword_1EA839500;
  if (!qword_1EA839500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839500);
  }

  return result;
}

unint64_t sub_181FADE04()
{
  result = qword_1EA839530;
  if (!qword_1EA839530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839530);
  }

  return result;
}

unint64_t sub_181FADE5C()
{
  result = qword_1EA839540;
  if (!qword_1EA839540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839540);
  }

  return result;
}

unint64_t sub_181FADEB4()
{
  result = qword_1EA839548;
  if (!qword_1EA839548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839548);
  }

  return result;
}

unint64_t sub_181FADF0C()
{
  result = qword_1EA839550;
  if (!qword_1EA839550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839550);
  }

  return result;
}

unint64_t sub_181FADF64()
{
  result = qword_1EA839558;
  if (!qword_1EA839558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839558);
  }

  return result;
}

unint64_t sub_181FADFBC()
{
  result = qword_1EA839560;
  if (!qword_1EA839560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839560);
  }

  return result;
}

unint64_t sub_181FAE014()
{
  result = qword_1EA839568;
  if (!qword_1EA839568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839568);
  }

  return result;
}

unint64_t sub_181FAE06C()
{
  result = qword_1EA839570;
  if (!qword_1EA839570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839570);
  }

  return result;
}

unint64_t sub_181FAE0D0()
{
  result = qword_1EA839578;
  if (!qword_1EA839578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839578);
  }

  return result;
}

unint64_t sub_181FAE140()
{
  result = qword_1EA839580;
  if (!qword_1EA839580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839580);
  }

  return result;
}

unint64_t sub_181FAE1A4()
{
  result = qword_1EA839588;
  if (!qword_1EA839588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839588);
  }

  return result;
}

unint64_t sub_181FAE1FC()
{
  result = qword_1EA839590;
  if (!qword_1EA839590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839590);
  }

  return result;
}

uint64_t keypath_set_47Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];

  return a5(v6, v7);
}

uint64_t sub_181FAE36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_181FAE3C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_181FAE428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_181FAE484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NWEndpoint.Port(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for NWEndpoint.Port(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_181FAE678()
{
  result = qword_1EA8395B0;
  if (!qword_1EA8395B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395B0);
  }

  return result;
}

unint64_t sub_181FAE6D0()
{
  result = qword_1EA8395B8;
  if (!qword_1EA8395B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395B8);
  }

  return result;
}

unint64_t sub_181FAE728()
{
  result = qword_1EA8395C0;
  if (!qword_1EA8395C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395C0);
  }

  return result;
}

unint64_t sub_181FAE77C()
{
  result = qword_1EA8395D0;
  if (!qword_1EA8395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395D0);
  }

  return result;
}

unint64_t sub_181FAE7D0()
{
  result = qword_1EA8395E0;
  if (!qword_1EA8395E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8395D8);
    sub_181FAE948(&qword_1EA8395E8, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395E0);
  }

  return result;
}

unint64_t sub_181FAE88C()
{
  result = qword_1EA8395F8;
  if (!qword_1EA8395F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8395D8);
    sub_181FAE948(&unk_1EA839600, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8395F8);
  }

  return result;
}

uint64_t sub_181FAE948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_181FAE990(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

    case 1:

    case 0:
  }

  return result;
}

unint64_t sub_181FAEA24()
{
  result = qword_1EA839628;
  if (!qword_1EA839628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839628);
  }

  return result;
}

unint64_t sub_181FAEA7C()
{
  result = qword_1EA839630;
  if (!qword_1EA839630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839630);
  }

  return result;
}

unint64_t sub_181FAEAD4()
{
  result = qword_1EA839638;
  if (!qword_1EA839638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839638);
  }

  return result;
}

uint64_t sub_181FAEB54(uint64_t result, uint64_t a2)
{

  return sub_181F2D138(result, a2);
}

uint64_t sub_181FAEC0C()
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(v0 + 40))
  {
    sub_182AD4518();
    sub_182AD30E8();
    if (*(v0 + 64))
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_182AD4518();
    aBlock = v8;
    v10 = v7;
    sub_182AD44F8();
    if (*(v0 + 16))
    {
      goto LABEL_4;
    }

    return sub_182AD4518();
  }

  sub_182AD4518();
  if ((*(v0 + 64) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_182AD4518();
  if (*(v0 + 16))
  {
LABEL_4:
    v1 = *(v0 + 24);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_182AE7580;
    v13 = sub_181FB0158;
    v14 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v10 = 1107296256;
    v11 = sub_18224CA7C;
    v12 = &block_descriptor_7;
    v3 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    nw_txt_record_access_bytes(v1, v3);
    _Block_release(v3);
    swift_unknownObjectRelease();
    swift_beginAccess();
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    sub_181F49B58(v4, v5);

    sub_182AD4518();
    sub_182AD2168();
    return sub_181C1F2E4(v4, v5);
  }

  return sub_182AD4518();
}

uint64_t sub_181FAEE1C()
{
  sub_182AD44E8();
  sub_181FAEC0C();
  return sub_182AD4558();
}

uint64_t sub_181FAEE84()
{
  sub_182AD44E8();
  sub_181FAEC0C();
  return sub_182AD4558();
}

void sub_181FAEEC4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_182AD2088();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v54 = 0;
  v55 = 0xE000000000000000;
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  v52 = 0;
  v8 = *a1;
  v9 = *a1 + 32;
  v10 = v9 + *(*a1 + 16);
  v47 = v9;
  v48 = v10;
  v49 = 0;
  v50 = 0;
  v51 = 1;

  sub_1820D562C(&v54, v46);
  Deserializer.uint32(_:)(&v52, &v45);
  sub_1820D562C(v53, v44);
  v11 = v49;
  if (v51 == 1)
  {
    if (v50)
    {
LABEL_15:

      v19 = 0;
      v20 = 1;
LABEL_45:
      *a2 = v20;
      a2[1] = v19;
      return;
    }

    if (v47)
    {
      v12 = v48 - v47;
    }

    else
    {
      v12 = 0;
    }

    v13 = __OFSUB__(v12, v49);
    v14 = v12 - v49;
    if (v13)
    {
      __break(1u);
    }

    else if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_8:
  v15 = *(v8 + 16);
  if (v15 < v49)
  {
    __break(1u);
  }

  else if ((v49 & 0x8000000000000000) == 0)
  {
    v16 = v8;
    if (!v49)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_48:
  sub_1822D0918(v8, v9, v11, (2 * v15) | 1);
  v16 = v41;

LABEL_11:
  *a1 = v16;

  if (!v52)
  {
    goto LABEL_29;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v17 = v16 + 32 + *(v16 + 16);
  v47 = v16 + 32;
  v48 = v17;
  v49 = 0;
  v50 = 0;
  v51 = 1;

  sub_181FAF2DC(&v47, &v52, v46);
  v18 = v49;
  if (v51 != 1)
  {
LABEL_21:
    v23 = *(v16 + 16);
    if (v23 < v49)
    {
      __break(1u);
    }

    else if ((v49 & 0x8000000000000000) == 0)
    {
      v24 = v16;
      if (!v49)
      {
LABEL_24:
        *a1 = v24;

        v25 = v45;
        v26 = *(v45 + 16);
        if (v26)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_182083570(v25);
          }

          (*(v5 + 104))(v7, *MEMORY[0x1E6969010], v4);
          v27 = sub_181F7EFE8((v25 + 32), v26, v7);
          NWTXTRecord.init(_:)(v27, v28, &v47);
          v29 = v47;
          v30 = v48;

LABEL_30:
          SystemUUID.init(uuidString:)(&v47);
          v31 = v47;
          v32 = v49;
          v34 = v54;
          v33 = v55;
          if (v49)
          {
            v35 = HIBYTE(v55) & 0xF;
            v36 = v54 & 0xFFFFFFFFFFFFLL;
            if ((v55 & 0x2000000000000000) != 0)
            {
              v37 = HIBYTE(v55) & 0xF;
            }

            else
            {
              v37 = v54 & 0xFFFFFFFFFFFFLL;
            }

            if (!(v37 | v29))
            {

              v19 = 0;
LABEL_44:
              v20 = 0;
              goto LABEL_45;
            }

            v43 = v48;
          }

          else
          {
            v43 = v48;
            v35 = HIBYTE(v55) & 0xF;
            v36 = v54 & 0xFFFFFFFFFFFFLL;
          }

          v38 = a2;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v35 = v36;
          }

          if (v35)
          {

            v39 = v33;
          }

          else
          {
            v34 = 0;
            v39 = 0;
          }

          type metadata accessor for EndpointCommon.EndpointCommonBacking();
          v19 = swift_allocObject();
          *(v19 + 16) = v29;
          *(v19 + 24) = v30;
          *(v19 + 32) = v34;
          *(v19 + 40) = v39;
          v40 = v43;
          *(v19 + 48) = v31;
          *(v19 + 56) = v40;
          *(v19 + 64) = v32;

          a2 = v38;
          goto LABEL_44;
        }

LABEL_29:
        v29 = 0;
        v30 = 0;
        goto LABEL_30;
      }

LABEL_51:
      sub_1822D0918(v16, v16 + 32, v18, (2 * v23) | 1);
      v24 = v42;

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (v50)
  {

    goto LABEL_15;
  }

  if (v47)
  {
    v21 = v48 - v47;
  }

  else
  {
    v21 = 0;
  }

  v13 = __OFSUB__(v21, v49);
  v22 = v21 - v49;
  if (v13)
  {
    goto LABEL_54;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_21;
  }

LABEL_55:
  __break(1u);
}

uint64_t sub_181FAF2DC@<X0>(uint64_t result@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (*(result + 32) == 1 && *(result + 24))
  {
    goto LABEL_7;
  }

  v7 = v5 - v4;
  if (!v4)
  {
    v7 = 0;
  }

  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if (v8)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v9 < v3)
  {
LABEL_7:
    v10 = 1;
    *(result + 24) = 1;
    *(result + 32) = 1;
    v11 = 1;
LABEL_11:
    *a3 = v10;
    *(a3 + 8) = v11;
    return result;
  }

  v12 = v6 + v3;
  if (__OFADD__(v6, v3))
  {
    goto LABEL_13;
  }

  if (v12 >= v6)
  {
    v13 = result;
    v14 = a3;
    sub_181ADF8C8(*(result + 16), v12, v4, v5);
    result = sub_1820E2C6C(v3);
    a3 = v14;
    v10 = *(v13 + 24);
    v11 = *(v13 + 32);
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_181FAF3A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v5 = sub_181FAF598(v3, v1, v2);
  sub_1820D46D8(v5);
  if (v2 && (v6 = *(v2 + 16)) != 0)
  {
    v7 = *(v2 + 24);
    aBlock[4] = sub_181FB016C;
    v14 = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18224CA7C;
    aBlock[3] = &block_descriptor_11;
    v8 = _Block_copy(aBlock);
    sub_181E6550C(v6);
    swift_unknownObjectRetain();

    nw_txt_record_access_bytes(v7, v8);
    sub_181AB612C(v6);
    _Block_release(v8);
    v9 = swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(aBlock[0]) = 0;
    LOBYTE(v14) = 3;
    sub_181F80BF8(aBlock, v17);
    v16 = v4;
    sub_181F80BF8(v17, v15);
    sub_181F80C54(v17);
    sub_1822A69B4(&v16);
    sub_181F80C54(v15);
    sub_181F80C54(aBlock);
    v9 = sub_1820D46D8(v16);
  }

  v10 = sub_181FAF774(v9, v1, v2);
  swift_beginAccess();
  sub_1820D46D8(v10);
  swift_endAccess();
  v11 = *(v3 + 16);

  return v11;
}

uint64_t sub_181FAF598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 40))
  {
    v3 = *(a3 + 32);
  }

  else
  {

    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v9[0] = v3;
  v9[1] = v4;
  v10 = 12;
  sub_181F80BF8(v9, v8);
  v7 = MEMORY[0x1E69E7CC0];
  sub_181F80BF8(v8, v6);
  sub_181F80C54(v8);
  sub_1822A69B4(&v7);
  sub_181F80C54(v6);
  sub_181F80C54(v9);
  return v7;
}

uint64_t sub_181FAF640(void *a1, unint64_t a2)
{
  v2 = sub_181FAF6A8(a1, a2, a1);
  swift_beginAccess();
  sub_1820D46D8(v2);
  swift_endAccess();
  return 1;
}

uint64_t sub_181FAF6A8(uint64_t a1, unint64_t a2, void *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    v9[0] = a2;
    v10 = 3;
    v7[0] = *a3;
    v8 = 11;
    sub_181F80BF8(v9, &v5);
    sub_181F80BF8(v7, &v6);
    v4 = MEMORY[0x1E69E7CC0];

    sub_1822A69B4(&v4);
    sub_1822A69B4(&v4);
    swift_arrayDestroy();
    sub_181F80C54(v7);
    sub_181F80C54(v9);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FAF774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && (*(a3 + 64) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](HIDWORD(*(a3 + 48)));
    v3 = sub_182AD30D8();
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v9[0] = v3;
  v9[1] = v4;
  v10 = 12;
  sub_181F80BF8(v9, v8);
  v7 = MEMORY[0x1E69E7CC0];
  sub_181F80BF8(v8, v6);
  sub_181F80C54(v8);
  sub_1822A69B4(&v7);
  sub_181F80C54(v6);
  sub_181F80C54(v9);
  return v7;
}

uint64_t EndpointCommon.hash(into:)()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC7C8[v2]);
    MEMORY[0x1865DB070](qword_182AEC7F0[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return result;
}

uint64_t EndpointCommon.hashValue.getter()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC7C8[v2]);
    MEMORY[0x1865DB070](qword_182AEC7F0[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return sub_182AD4558();
}

uint64_t sub_181FAFAA4()
{
  v1 = *v0;
  if (*v0)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC7C8[v2]);
    MEMORY[0x1865DB070](qword_182AEC7F0[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return result;
}

uint64_t sub_181FAFB90()
{
  v1 = *v0;
  sub_182AD44E8();
  if (v1)
  {
    sub_182AD44E8();
    v2 = *(v1 + 184);
    v3 = *(v1 + 185);
    MEMORY[0x1865DB070](*(v1 + 16));

    sub_182AD30E8();
    MEMORY[0x1865DB070](qword_182AEC7C8[v2]);
    MEMORY[0x1865DB070](qword_182AEC7F0[v3]);
    v4 = sub_182AD4558();
    MEMORY[0x1865DB070](v4);
  }

  return sub_182AD4558();
}

uint64_t sub_181FAFC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 32) != *(a2 + 32) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_182AD4268();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v10 = *(a2 + 48);
    v22 = *(a1 + 48);
    v23 = 0;
    if (v9)
    {
      return 0;
    }

    v21 = v10;
    v11 = a1;
    v12 = a2;
    v13 = _s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v22, &v21);
    a2 = v12;
    v14 = v13;
    a1 = v11;
    if (!v14)
    {
      return 0;
    }
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  if (v16)
  {
    if (v18)
    {
      sub_181E6550C(*(a1 + 16));
      sub_181E6550C(v18);
      is_equal = nw_txt_record_is_equal(v15, v17);
      sub_181AB612C(v18);
      sub_181AB612C(v16);
      return is_equal;
    }
  }

  else if (!v18)
  {
    sub_181E6550C(0);
    sub_181E6550C(0);
    sub_181AB612C(0);
    return 1;
  }

  sub_181E6550C(*(a1 + 16));
  sub_181E6550C(v18);
  sub_181AB612C(v16);
  sub_181AB612C(v18);
  return 0;
}

BOOL _s7Network14EndpointCommonV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  if (!*a1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

    return 0;
  }

  v9 = *a1;
  if (!v4)
  {
    goto LABEL_10;
  }

  v8 = v4;
  v5 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v9, &v8);
  swift_retain_n();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  if (!v2)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = sub_181FAFC58(v2, v3);

  return (v6 & 1) != 0;
}

unint64_t sub_181FAFEF0()
{
  result = qword_1EA839640;
  if (!qword_1EA839640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839640);
  }

  return result;
}

unint64_t sub_181FAFF48()
{
  result = qword_1EA839648;
  if (!qword_1EA839648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839648);
  }

  return result;
}

unint64_t sub_181FAFFA0()
{
  result = qword_1EA839650;
  if (!qword_1EA839650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839650);
  }

  return result;
}

unint64_t sub_181FAFFF8()
{
  result = qword_1EA839658;
  if (!qword_1EA839658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839658);
  }

  return result;
}

unint64_t sub_181FB0050()
{
  result = qword_1EA839660;
  if (!qword_1EA839660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839660);
  }

  return result;
}

unint64_t sub_181FB0104()
{
  result = qword_1EA839668;
  if (!qword_1EA839668)
  {
    type metadata accessor for EndpointCommon.EndpointCommonBacking();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839668);
  }

  return result;
}

uint64_t sub_181FB0160(uint64_t result)
{
  if (result >= 7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t static TCPProtocol.options()()
{
  if (qword_1ED410038 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411C48 + 1);
  v1 = unk_1ED411C58;
  v2 = byte_1ED411C60;
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  v8 = 0x100000201;
  v3 = xmmword_1ED411C48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DE0);
  swift_allocObject();
  v4 = sub_181AAC92C(v3, v0, v1, v2, v6);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

uint64_t ProtocolOptions<>.enableFastOpen.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 43) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.enableFastOpen.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x800) != 0)
    {
      return result;
    }

    v6 = v5 | 0x800;
  }

  else
  {
    if ((v5 & 0x800) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFF7FF;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.noFastOpenCookie.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 45) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.noFastOpenCookie.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x2000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x2000;
  }

  else
  {
    if ((v5 & 0x2000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFDFFF;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.fastOpenForceEnable.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 46) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.fastOpenForceEnable.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x4000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x4000;
  }

  else
  {
    if ((v5 & 0x4000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFBFFF;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.reduceBuffering.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return HIDWORD(*(v1 + 40)) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.reduceBuffering.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if (v5)
    {
      return result;
    }

    v6 = v5 | 1;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFFE;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.noDelay.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 33) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.noDelay.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 2) != 0)
    {
      return result;
    }

    v6 = v5 | 2;
  }

  else
  {
    if ((v5 & 2) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFFD;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.enableKeepalive.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 37) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.enableKeepalive.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x20) != 0)
    {
      return result;
    }

    v6 = v5 | 0x20;
  }

  else
  {
    if ((v5 & 0x20) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFDF;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.enableKeepaliveOffload.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 38) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.enableKeepaliveOffload.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x40) != 0)
    {
      return result;
    }

    v6 = v5 | 0x40;
  }

  else
  {
    if ((v5 & 0x40) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFBF;
  }

  *(v3 + 44) = v6;
  return result;
}

uint64_t ProtocolOptions<>.keepaliveIdleTime.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return *(v1 + 16);
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.keepaliveIdleTime.setter(int a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = a1;
  }

  return result;
}

uint64_t ProtocolOptions<>.keepaliveInterval.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return *(v1 + 20);
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.keepaliveInterval.setter(int a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = a1;
  }

  return result;
}

uint64_t ProtocolOptions<>.enableBackgroundTrafficManagement.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 41) & 1;
  }

  __break(1u);
  return result;
}

uint64_t ProtocolOptions<>.enableBackgroundTrafficManagement.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x200) != 0)
    {
      return result;
    }

    v6 = v5 | 0x200;
  }

  else
  {
    if ((v5 & 0x200) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFDFF;
  }

  *(v3 + 44) = v6;
  return result;
}

_BYTE *sub_181FB0BB0@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.maximumSegmentSize.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_181FB0C14;
}

_DWORD *(*TCPProtocol.TCPOptions.connectionTimeout.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_181FB0C60;
}

_DWORD *(*TCPProtocol.TCPOptions.persistTimeout.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return sub_181FB0CAC;
}

_DWORD *(*TCPProtocol.TCPOptions.retransmitConnectionDropTime.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 12);
  return sub_181FB0CF8;
}

_DWORD *(*TCPProtocol.TCPOptions.keepaliveIdleTime.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_181FB0D44;
}

_DWORD *(*TCPProtocol.TCPOptions.keepaliveInterval.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 20);
  return sub_181FB0D90;
}

_DWORD *(*TCPProtocol.TCPOptions.keepaliveCount.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_181FB0DDC;
}

void *(*TCPProtocol.TCPOptions.maxPacingRate.modify(void *a1))(void *result)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_181FB0E24;
}

uint64_t TCPProtocol.TCPOptions.reduceBuffering.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if (v2)
    {
      return result;
    }

    v3 = v2 | 1;
  }

  else
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFE;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.reduceBuffering.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = v2 & 1;
  return sub_181FB0EC4;
}

uint64_t sub_181FB0EC4(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 1) == 0)
    {
      v2 = v1 | 1;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if (v1)
  {
    v2 = v1 & 0xFFFFFFFE;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.noDelay.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 2) != 0)
    {
      return result;
    }

    v3 = v2 | 2;
  }

  else
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFD;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.noDelay.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return sub_181FB0F58;
}

uint64_t sub_181FB0F58(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 2) == 0)
    {
      v2 = v1 | 2;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 2) != 0)
  {
    v2 = v1 & 0xFFFFFFFD;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.noTimewait.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 4) != 0)
    {
      return result;
    }

    v3 = v2 | 4;
  }

  else
  {
    if ((v2 & 4) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFFB;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.noTimewait.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 4) != 0;
  return sub_181FB0FEC;
}

uint64_t sub_181FB0FEC(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 4) == 0)
    {
      v2 = v1 | 4;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 4) != 0)
  {
    v2 = v1 & 0xFFFFFFFB;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.noPush.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 8) != 0)
    {
      return result;
    }

    v3 = v2 | 8;
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFF7;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.noPush.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 8) != 0;
  return sub_181FB1080;
}

uint64_t sub_181FB1080(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 8) == 0)
    {
      v2 = v1 | 8;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 8) != 0)
  {
    v2 = v1 & 0xFFFFFFF7;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.noOptions.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x10) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10;
  }

  else
  {
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFEF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.noOptions.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return sub_181FB1108;
}

uint64_t sub_181FB1108(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x10) == 0)
    {
      v2 = v1 | 0x10;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x10) != 0)
  {
    v2 = v1 & 0xFFFFFFEF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.enableKeepalive.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x20) != 0)
    {
      return result;
    }

    v3 = v2 | 0x20;
  }

  else
  {
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFDF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.enableKeepalive.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return sub_181FB119C;
}

uint64_t sub_181FB119C(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x20) == 0)
    {
      v2 = v1 | 0x20;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x20) != 0)
  {
    v2 = v1 & 0xFFFFFFDF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.enableKeepaliveOffload.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x40) != 0)
    {
      return result;
    }

    v3 = v2 | 0x40;
  }

  else
  {
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFFBF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.enableKeepaliveOffload.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x40) != 0;
  return sub_181FB1230;
}

uint64_t sub_181FB1230(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x40) == 0)
    {
      v2 = v1 | 0x40;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x40) != 0)
  {
    v2 = v1 & 0xFFFFFFBF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.disableAckStretching.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x80) != 0)
    {
      return result;
    }

    v3 = v2 | 0x80;
  }

  else
  {
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFF7F;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.disableAckStretching.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x80) != 0;
  return sub_181FB12C4;
}

uint64_t sub_181FB12C4(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x80) == 0)
    {
      v2 = v1 | 0x80;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x80) != 0)
  {
    v2 = v1 & 0xFFFFFF7F;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.disableBlackholeDetection.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x100) != 0)
    {
      return result;
    }

    v3 = v2 | 0x100;
  }

  else
  {
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFEFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.disableBlackholeDetection.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return sub_181FB1358;
}

uint64_t sub_181FB1358(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x100) == 0)
    {
      v2 = v1 | 0x100;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x100) != 0)
  {
    v2 = v1 & 0xFFFFFEFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.enableBackgroundTrafficManagement.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x200) != 0)
    {
      return result;
    }

    v3 = v2 | 0x200;
  }

  else
  {
    if ((v2 & 0x200) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFDFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.enableBackgroundTrafficManagement.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x200) != 0;
  return sub_181FB13EC;
}

uint64_t sub_181FB13EC(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x200) == 0)
    {
      v2 = v1 | 0x200;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x200) != 0)
  {
    v2 = v1 & 0xFFFFFDFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.retransmitFinDrop.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x400) != 0)
    {
      return result;
    }

    v3 = v2 | 0x400;
  }

  else
  {
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFFBFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.retransmitFinDrop.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x400) != 0;
  return sub_181FB1480;
}

uint64_t sub_181FB1480(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x400) == 0)
    {
      v2 = v1 | 0x400;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x400) != 0)
  {
    v2 = v1 & 0xFFFFFBFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.enableFastOpen.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x800) != 0)
    {
      return result;
    }

    v3 = v2 | 0x800;
  }

  else
  {
    if ((v2 & 0x800) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFF7FF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.enableFastOpen.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x800) != 0;
  return sub_181FB1514;
}

uint64_t sub_181FB1514(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x800) == 0)
    {
      v2 = v1 | 0x800;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x800) != 0)
  {
    v2 = v1 & 0xFFFFF7FF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.noFastOpenCookie.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x2000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x2000;
  }

  else
  {
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFDFFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.noFastOpenCookie.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x2000) != 0;
  return sub_181FB15A8;
}

uint64_t sub_181FB15A8(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x2000) == 0)
    {
      v2 = v1 | 0x2000;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x2000) != 0)
  {
    v2 = v1 & 0xFFFFDFFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.fastOpenForceEnable.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x4000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x4000;
  }

  else
  {
    if ((v2 & 0x4000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFFBFFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.fastOpenForceEnable.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x4000) != 0;
  return sub_181FB163C;
}

uint64_t sub_181FB163C(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x4000) == 0)
    {
      v2 = v1 | 0x4000;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x4000) != 0)
  {
    v2 = v1 & 0xFFFFBFFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.disableECN.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x8000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x8000;
  }

  else
  {
    if ((v2 & 0x8000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFF7FFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.disableECN.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x8000) != 0;
  return sub_181FB16D0;
}

uint64_t sub_181FB16D0(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x8000) == 0)
    {
      v2 = v1 | 0x8000;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x8000) != 0)
  {
    v2 = v1 & 0xFFFF7FFF;
    goto LABEL_7;
  }

  return result;
}

uint64_t TCPProtocol.TCPOptions.resetLocalPort.setter(uint64_t result)
{
  v2 = *(v1 + 44);
  if (result)
  {
    if ((v2 & 0x10000) != 0)
    {
      return result;
    }

    v3 = v2 | 0x10000;
  }

  else
  {
    if ((v2 & 0x10000) == 0)
    {
      return result;
    }

    v3 = v2 & 0xFFFEFFFF;
  }

  *(v1 + 44) = v3;
  return result;
}

uint64_t (*TCPProtocol.TCPOptions.resetLocalPort.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 44);
  *(a1 + 8) = v2;
  *(a1 + 12) = BYTE2(v2) & 1;
  return sub_181FB1764;
}

uint64_t sub_181FB1764(uint64_t result)
{
  v1 = *(result + 8);
  if (*(result + 12))
  {
    if ((v1 & 0x10000) == 0)
    {
      v2 = v1 | 0x10000;
LABEL_7:
      *(*result + 44) = v2;
    }
  }

  else if ((v1 & 0x10000) != 0)
  {
    v2 = v1 & 0xFFFEFFFF;
    goto LABEL_7;
  }

  return result;
}

void TCPProtocol.TCPOptions.init()(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 513;
  *(a1 + 44) = 1;
}

Swift::OpaquePointer_optional __swiftcall TCPProtocol.TCPOptions.serialize()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

__n128 TCPProtocol.TCPOptions.deepCopy()@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

BOOL TCPProtocol.TCPOptions.isEqual(to:for:)(int32x4_t *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *v1;
  v4 = v1[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = v1[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7Network11TCPProtocolV10TCPOptionsV2eeoiySbAE_AEtFZ_0(v8, v7);
}

__n128 sub_181FB1830@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

BOOL sub_181FB1844(int32x4_t *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *v1;
  v4 = v1[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = v1[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s7Network11TCPProtocolV10TCPOptionsV2eeoiySbAE_AEtFZ_0(v8, v7);
}

double TCPProtocol.TCPMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

Swift::UInt32 __swiftcall TCPProtocol.TCPMetadata.getReceiveBufferSize()()
{
  v1 = v0[1];
  v2 = v0[8];
  if (v2)
  {
    v3 = v1 >= 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v9 = *v0;
    os_unfair_lock_lock(v9 + 4);
    v10 = (v1)(v2);
    os_unfair_lock_unlock(v9 + 4);
    return v10;
  }

  else
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843348);
    v5 = sub_182AD2678();
    v6 = sub_182AD38B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_181A37000, v5, v6, "TCPMetadata callbacks not setup for getReceiveBufferSize", v7, 2u);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    return 0;
  }
}

Swift::UInt32 __swiftcall TCPProtocol.TCPMetadata.getSendBufferSize()()
{
  v1 = v0[2];
  v2 = v0[8];
  if (v0[1] == 1 || v2 == 0 || v1 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843348);
    v6 = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_181A37000, v6, v7, "TCPMetadata callbacks not setup for getSendBufferSize", v8, 2u);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    v9 = *v0;
    os_unfair_lock_lock(v9 + 4);
    v10 = (v1)(v2);
    os_unfair_lock_unlock(v9 + 4);
    return v10;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.resetKeepalives(enableKeepalives:count:idleTime:interval:)(Swift::Bool enableKeepalives, Swift::UInt32 count, Swift::UInt32 idleTime, Swift::UInt32 interval)
{
  v5 = v4[3];
  v6 = v4[8];
  if (v4[1] == 1 || v6 == 0 || v5 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "TCPMetadata callbacks not setup for resetKeepalives", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = *&interval;
    v14 = *&idleTime;
    v15 = *&count;
    v17 = *v4;
    os_unfair_lock_lock(v17 + 4);
    LODWORD(v13) = (v5)(v6, enableKeepalives, v15, v14, v13);
    os_unfair_lock_unlock(v17 + 4);
    return v13;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoDelay(noDelay:)(Swift::Bool noDelay)
{
  v2 = v1[4];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoDelay", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noDelay);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoPush(noPush:)(Swift::Bool noPush)
{
  v2 = v1[5];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoPush", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noPush);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoWakeFromSleep(noWakeFromSleep:)(Swift::Bool noWakeFromSleep)
{
  v2 = v1[6];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoWakeFromSleep", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noWakeFromSleep);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setMaxPacingRate(maxPacingRate:)(Swift::UInt64 maxPacingRate)
{
  v3 = v1[7];
  v2 = v1[8];
  if (v1[1] == 1 || v2 == 0 || v3 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setMaxPacingRate", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    LODWORD(maxPacingRate) = (v3)(v2, maxPacingRate);
    os_unfair_lock_unlock(v11 + 4);
    return maxPacingRate;
  }
}

uint64_t TCPProtocol.TCPInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t TCPProtocol.TCPInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t TCPProtocol.TCPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t TCPProtocol.TCPInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

double TCPProtocol.newPerProtocolOptions()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x100000201;
  return result;
}

__n128 TCPProtocol.newPerProtocolOptions(from:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double TCPProtocol.newPerProtocolOptions(from:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double TCPProtocol.newPerProtocolMetadata()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_181FB2310@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x100000201;
  return result;
}

__n128 sub_181FB2328@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double sub_181FB233C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double sub_181FB2350@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_181FB23A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = HIDWORD(*(v3 + 40)) & 1;
  }

  return result;
}

void (*ProtocolOptions<>.reduceBuffering.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = HIDWORD(*(v6 + 40)) & 1;
    return sub_181FB24D0;
  }

  return result;
}

void sub_181FB24D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if (v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 1;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if (v5)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFE;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2544@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x200000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.noDelay.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x200000000) != 0;
    return sub_181FB2674;
  }

  return result;
}

void sub_181FB2674(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 2) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 2) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 2;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 2) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFD;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noTimewait.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 34) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB2750@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x400000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.noTimewait.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 4) != 0)
    {
      return result;
    }

    v6 = v5 | 4;
  }

  else
  {
    if ((v5 & 4) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noTimewait.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x400000000) != 0;
    return sub_181FB2910;
  }

  return result;
}

void sub_181FB2910(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 4) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 4) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 4;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 4) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFB;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noPush.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 35) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB29EC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x800000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.noPush.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 8) != 0)
    {
      return result;
    }

    v6 = v5 | 8;
  }

  else
  {
    if ((v5 & 8) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFF7;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noPush.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x800000000) != 0;
    return sub_181FB2BAC;
  }

  return result;
}

void sub_181FB2BAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 8) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 8) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 8;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 8) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFF7;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noOptions.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x10) != 0)
    {
      return result;
    }

    v6 = v5 | 0x10;
  }

  else
  {
    if ((v5 & 0x10) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFEF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noOptions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x1000000000) != 0;
    return sub_181FB2D70;
  }

  return result;
}

void sub_181FB2D70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x10;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x10) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFEF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2DE4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x2000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableKeepalive.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x2000000000) != 0;
    return sub_181FB2F14;
  }

  return result;
}

void sub_181FB2F14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x20;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x20) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFDF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2F88@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x4000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableKeepaliveOffload.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x4000000000) != 0;
    return sub_181FB30B8;
  }

  return result;
}

void sub_181FB30B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x40;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x40) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFBF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.disableAckStretching.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 39) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3194@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x8000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableAckStretching.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x80) != 0)
    {
      return result;
    }

    v6 = v5 | 0x80;
  }

  else
  {
    if ((v5 & 0x80) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFF7F;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableAckStretching.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x8000000000) != 0;
    return sub_181FB3354;
  }

  return result;
}

void sub_181FB3354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x80;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x80) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFF7F;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t _s7Network15ProtocolOptionsCA2A11TCPProtocolVRszrlE02noC0Sbvg_0()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 36) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3430@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x1000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableBlackholeDetection.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x100) != 0)
    {
      return result;
    }

    v6 = v5 | 0x100;
  }

  else
  {
    if ((v5 & 0x100) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFEFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableBlackholeDetection.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x1000000000) != 0;
    return sub_181FB35F0;
  }

  return result;
}

void sub_181FB35F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x100;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFEFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3664@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x20000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableBackgroundTrafficManagement.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x20000000000) != 0;
    return sub_181FB3794;
  }

  return result;
}

void sub_181FB3794(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x200) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x200;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x200) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFDFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.retransmitFinDrop.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 42) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3870@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x40000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.retransmitFinDrop.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x400) != 0)
    {
      return result;
    }

    v6 = v5 | 0x400;
  }

  else
  {
    if ((v5 & 0x400) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFBFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.retransmitFinDrop.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x40000000000) != 0;
    return sub_181FB3A30;
  }

  return result;
}

void sub_181FB3A30(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x400) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x400) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x400;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x400) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFBFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3AA4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x80000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableFastOpen.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x80000000000) != 0;
    return sub_181FB3BD4;
  }

  return result;
}

void sub_181FB3BD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x800;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x800) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFF7FF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3C48@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x200000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.noFastOpenCookie.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x200000000000) != 0;
    return sub_181FB3D78;
  }

  return result;
}

void sub_181FB3D78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x2000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x2000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFDFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3DEC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x400000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.fastOpenForceEnable.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x400000000000) != 0;
    return sub_181FB3F1C;
  }

  return result;
}

void sub_181FB3F1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x4000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x4000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFBFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.disableECN.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 47) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3FF8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x800000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableECN.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x8000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x8000;
  }

  else
  {
    if ((v5 & 0x8000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFF7FFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableECN.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x800000000000) != 0;
    return sub_181FB41B8;
  }

  return result;
}

void sub_181FB41B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x8000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x8000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x8000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFF7FFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.resetLocalPort.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return HIWORD(*(v1 + 40)) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB4294@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = HIWORD(*(v3 + 40)) & 1;
  }

  return result;
}

uint64_t ProtocolOptions<>.resetLocalPort.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x10000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x10000;
  }

  else
  {
    if ((v5 & 0x10000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFEFFFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.resetLocalPort.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = HIWORD(*(v6 + 40)) & 1;
    return sub_181FB4454;
  }

  return result;
}

void sub_181FB4454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x10000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x10000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x10000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x10000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFEFFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB44C8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
  }

  return result;
}

uint64_t sub_181FB4538(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v2;
  }

  return result;
}

void (*ProtocolOptions<>.keepaliveIdleTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = *(v6 + 16);
    return sub_181FB465C;
  }

  return result;
}

void sub_181FB465C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4 != 2)
    {
LABEL_5:
      *(v3 + 16) = *(v2 + 40);
      free(v2);
      return;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_181FB4690@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 20);
  }

  return result;
}

uint64_t sub_181FB4700(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v2;
  }

  return result;
}

void (*ProtocolOptions<>.keepaliveInterval.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = *(v6 + 20);
    return sub_181FB4824;
  }

  return result;
}

void sub_181FB4824(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4 != 2)
    {
LABEL_5:
      *(v3 + 20) = *(v2 + 40);
      free(v2);
      return;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_181FB4858(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *v14 = 1;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  v18 = *(v14 + 48);
  v23[2] = *(v14 + 32);
  v23[3] = v18;
  v24 = *(v14 + 64);
  v19 = *(v14 + 16);
  v23[0] = *v14;
  v23[1] = v19;
  v20 = *(a5 + 48);
  *(v14 + 32) = *(a5 + 32);
  *(v14 + 48) = v20;
  *(v14 + 64) = *(a5 + 64);
  v21 = *(a5 + 16);
  *v14 = *a5;
  *(v14 + 16) = v21;
  sub_181FB504C(v23);
  return v5;
}

BOOL _s7Network11TCPProtocolV11TCPMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != 1 || a2[1] != 1)
  {
    return 0;
  }

  v4 = a1[8];
  v5 = a2[8];
  if (v4)
  {
    return v5 && v4 == v5;
  }

  return !v5;
}

unint64_t sub_181FB4AC8(uint64_t a1)
{
  result = sub_181FB4AF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181FB4AF0()
{
  result = qword_1ED40F860;
  if (!qword_1ED40F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F860);
  }

  return result;
}

unint64_t sub_181FB4B44(uint64_t a1)
{
  result = sub_181FB4B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181FB4B6C()
{
  result = qword_1EA839670;
  if (!qword_1EA839670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839670);
  }

  return result;
}

unint64_t sub_181FB4BC4()
{
  result = qword_1EA839678;
  if (!qword_1EA839678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839678);
  }

  return result;
}

unint64_t sub_181FB4C1C()
{
  result = qword_1ED40F858;
  if (!qword_1ED40F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F858);
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

uint64_t sub_181FB4C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_181FB4CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_181FB4D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_181FB4DA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_181FB4E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_181FB4E98()
{
  result = qword_1EA839680;
  if (!qword_1EA839680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839680);
  }

  return result;
}

unint64_t sub_181FB4EF0()
{
  result = qword_1EA839688;
  if (!qword_1EA839688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839688);
  }

  return result;
}

unint64_t sub_181FB4F48()
{
  result = qword_1EA839690;
  if (!qword_1EA839690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839690);
  }

  return result;
}

unint64_t sub_181FB4FA0()
{
  result = qword_1EA839698;
  if (!qword_1EA839698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839698);
  }

  return result;
}

unint64_t sub_181FB4FF8()
{
  result = qword_1EA8396A0;
  if (!qword_1EA8396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396A0);
  }

  return result;
}

uint64_t sub_181FB504C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181FB50CC()
{
  v1 = *v0;
  v65 = v0[1];
  v73 = MEMORY[0x1E69E7CC0];
  v3 = v1[7];
  v2 = v1[8];
  if (sub_181CA4798(v3, v2))
  {
    v68 = v3;
    v69 = v2;

    swift_bridgeObjectRetain_n();
    sub_181FB6464(&v68);
  }

  else
  {

    sub_182289C8C(v3, v2);
  }

  sub_1820D4BB0(32, 0xE100000000000000);
  v4 = v1[7] == 0x5443454E4E4F43 && v1[8] == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {
    v5 = 22;
    v6 = 21;
    v7 = 16;
    v8 = v1[17];
    if (!v8)
    {
      goto LABEL_16;
    }

LABEL_12:
    v9 = v1[v5];
    v10 = v1[v6];
    v11 = v1[v7];
    if (sub_181CA4798(v10, v9))
    {
      v68 = v10;
      v69 = v9;
      sub_181F887D0(v11, v8);

      sub_181FB6464(&v68);
    }

    else
    {
      sub_181F887D0(v11, v8);
      sub_182289C8C(v10, v9);
    }

    sub_181D04D28(v11, v8);
    goto LABEL_16;
  }

  v5 = 29;
  v6 = 28;
  v7 = 23;
  v8 = v1[24];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_1820D4BB0(0x2E312F5054544820, 0xEB000000000A0D31);
  v12 = v1[17];
  if (v12)
  {
    v13 = v1[16];
    v14 = v1[21];
    v15 = v1[22];

    sub_1820D4BB0(0x203A74736F48, 0xE600000000000000);
    if (sub_181CA4798(v14, v15))
    {
      v68 = v14;
      v69 = v15;

      sub_181FB6464(&v68);
    }

    else
    {
      sub_182289C8C(v14, v15);
    }

    sub_181D04D28(v13, v12);
    sub_1820D4BB0(2573, 0xE200000000000000);
  }

  swift_beginAccess();
  v16 = *(v65 + 16);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_96:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return v73;
  }

  v18 = 0;
  v64 = 0;
  v61 = 0;
  while (1)
  {
    if (v18 >= v17)
    {
      goto LABEL_99;
    }

    v19 = (v16 + (v18 << 6));
    v21 = v19[4];
    v20 = v19[5];
    v22 = v19[10];
    ++v18;
    v23 = v19[6] == 0x65696B6F6F63 && v19[7] == 0xE600000000000000;
    v67 = v18;
    if (v23)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_58;
    }

    v24 = v19[9];
    v25 = sub_182AD4268();

    swift_bridgeObjectRelease_n();
    if ((v25 & 1) == 0)
    {
      break;
    }

LABEL_58:
    if (v64)
    {

      v16 = *(v65 + 16);
      v17 = *(v16 + 16);
      v64 = 1;
      if (v18 == v17)
      {
        goto LABEL_96;
      }
    }

    else
    {

      sub_1820D4BB0(v21, v20);

      sub_1820D4BB0(8250, 0xE200000000000000);
      v68 = 0x65696B6F6F43;
      v69 = 0xE600000000000000;
      v70 = 0x65696B6F6F63;
      v71 = 0xE600000000000000;
      v72 = v65;
      sub_181DE0CB8(&v68);
      v37 = v36;

      v39 = sub_181DE90B8(v38, v37);

      swift_bridgeObjectRelease_n();
      v40 = v39;
      v58 = *(v39 + 16);
      if (v58)
      {
        v64 = 0;
        v41 = 0;
        v56 = v40;
        v57 = v40 + 32;
        while (1)
        {
          if (v41 >= *(v40 + 16))
          {
            goto LABEL_102;
          }

          v42 = v57 + 56 * v41;
          v44 = *(v42 + 40);
          v43 = *(v42 + 48);

          if (v61)
          {
            sub_1820D4BB0(8251, 0xE200000000000000);
          }

          else
          {
            v64 = 1;
          }

          v66 = v41 + 1;
          if ((v43 & 0x2000000000000000) != 0)
          {
            v45 = HIBYTE(v43) & 0xF;
          }

          else
          {
            v45 = v44 & 0xFFFFFFFFFFFFLL;
          }

          v46 = (v44 >> 59) & 1;
          if ((v43 & 0x1000000000000000) == 0)
          {
            LOBYTE(v46) = 1;
          }

          v47 = 4 << v46;
          v48 = 15;
          do
          {
            while (1)
            {
              if (4 * v45 == v48 >> 14)
              {
                v68 = v44;
                v69 = v43;

                sub_181FB6464(&v68);

                goto LABEL_63;
              }

              v49 = v48 & 0xC;
              v50 = v48;
              if (v49 == v47)
              {
                v54 = v48;
                v50 = sub_18208A330(v48, v44, v43);
                v48 = v54;
              }

              v51 = v50 >> 16;
              if (v50 >> 16 >= v45)
              {
                goto LABEL_100;
              }

              if ((v43 & 0x1000000000000000) != 0)
              {
                break;
              }

              if ((v43 & 0x2000000000000000) != 0)
              {
                v68 = v44;
                v69 = v43 & 0xFFFFFFFFFFFFFFLL;
                v52 = &v68;
              }

              else
              {
                v52 = ((v43 & 0xFFFFFFFFFFFFFFFLL) + 32);
                if ((v44 & 0x1000000000000000) == 0)
                {
                  v62 = v48;
                  v52 = sub_182AD3CF8();
                  v48 = v62;
                }
              }

              v53 = *(v52 + v51);
              if (v49 == v47)
              {
                goto LABEL_90;
              }

LABEL_85:
              if ((v43 & 0x1000000000000000) != 0)
              {
                goto LABEL_86;
              }

LABEL_74:
              v48 = (v48 & 0xFFFFFFFFFFFF0000) + 65540;
              if (v53 < 0)
              {
                goto LABEL_93;
              }
            }

            v63 = v48;
            v53 = sub_182AD31C8();
            v48 = v63;
            if (v49 != v47)
            {
              goto LABEL_85;
            }

LABEL_90:
            v48 = sub_18208A330(v48, v44, v43);
            if ((v43 & 0x1000000000000000) == 0)
            {
              goto LABEL_74;
            }

LABEL_86:
            if (v45 <= v48 >> 16)
            {
              goto LABEL_101;
            }

            v48 = sub_182AD3178();
          }

          while ((v53 & 0x80) == 0);
LABEL_93:
          sub_182289C8C(v44, v43);

LABEL_63:

          v41 = v66;
          v18 = v67;
          v40 = v56;
          v61 = 1;
          if (v66 == v58)
          {

            v61 = 1;
            goto LABEL_55;
          }
        }
      }

      v64 = 0;
LABEL_55:
      sub_1820D4BB0(2573, 0xE200000000000000);
      v16 = *(v65 + 16);
      v17 = *(v16 + 16);
      if (v18 == v17)
      {
        goto LABEL_96;
      }
    }
  }

  sub_1820D4BB0(v21, v20);
  sub_1820D4BB0(8250, 0xE200000000000000);
  if ((v22 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v27 = (v24 >> 59) & 1;
  if ((v22 & 0x1000000000000000) == 0)
  {
    LOBYTE(v27) = 1;
  }

  v28 = 4 << v27;
  v29 = 15;
  while (1)
  {
    if (4 * v26 == v29 >> 14)
    {
      v68 = v24;
      v69 = v22;

      sub_181FB6464(&v68);

      goto LABEL_55;
    }

    v30 = v29 & 0xC;
    v31 = v29;
    if (v30 == v28)
    {
      v35 = v29;
      v31 = sub_18208A330(v29, v24, v22);
      v29 = v35;
    }

    v32 = v31 >> 16;
    if (v31 >> 16 >= v26)
    {
      break;
    }

    if ((v22 & 0x1000000000000000) != 0)
    {
      v60 = v29;
      v34 = sub_182AD31C8();
      v29 = v60;
      if (v30 != v28)
      {
        goto LABEL_46;
      }

LABEL_51:
      v29 = sub_18208A330(v29, v24, v22);
      if ((v22 & 0x1000000000000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_47:
      if (v26 <= v29 >> 16)
      {
        goto LABEL_98;
      }

      v29 = sub_182AD3178();
      if (v34 < 0)
      {
LABEL_54:
        sub_182289C8C(v24, v22);

        goto LABEL_55;
      }
    }

    else
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        v68 = v24;
        v69 = v22 & 0xFFFFFFFFFFFFFFLL;
        v33 = &v68;
      }

      else
      {
        v33 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v24 & 0x1000000000000000) == 0)
        {
          v59 = v29;
          v33 = sub_182AD3CF8();
          v29 = v59;
        }
      }

      v34 = *(v33 + v32);
      if (v30 == v28)
      {
        goto LABEL_51;
      }

LABEL_46:
      if ((v22 & 0x1000000000000000) != 0)
      {
        goto LABEL_47;
      }

LABEL_35:
      v29 = (v29 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v34 < 0)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}