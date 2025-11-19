uint64_t _RepresentedEntityProvider.elements(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a1 + 32);
  v5 = (a1 + 40);
  v6 = (a1 + 48);
  v7 = (a1 + 56);
  v8 = *(a1 + 64);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v8 + 48) + 40 * (v14 | (v3 << 6));
    if ((*(v15 + 32) & 1) == 0)
    {
      v7 = (v15 + 24);
      v6 = (v15 + 16);
      v5 = (v15 + 8);
      v4 = v15;
    }
  }

  while (1)
  {
    result = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (result >= v12)
    {
      return (*(a3 + 8))(a2, a3, *v4, *v5, *v6, *v7);
    }

    v11 = *(v8 + 56 + 8 * result);
    ++v3;
    if (v11)
    {
      v3 = result;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t RepresentedEntityProviderWrapper.provider.getter()
{
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return sub_18F0EF200();
}

uint64_t RepresentedEntityProviderWrapper.provider.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_81();
  sub_18F0FDA38(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t RepresentedEntityProviderWrapper.__allocating_init(provider:boundingRect:)()
{
  OUTLINED_FUNCTION_77_0();
  v0 = swift_allocObject();
  RepresentedEntityProviderWrapper.init(provider:boundingRect:)();
  return v0;
}

uint64_t RepresentedEntityProviderWrapper.__deallocating_deinit()
{
  sub_18F0EF1A8(v0 + 40, &qword_1EACCFCD0);

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

BOOL sub_18F16240C()
{
  v1 = (v0 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v19 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  if (qword_1ED6FCD70 != -1)
  {
    swift_once();
  }

  v5 = *(&xmmword_1ED6FCD78 + 1);
  v6 = *&qword_1ED6FCD88;
  v7 = unk_1ED6FCD90;
  v8 = xmmword_1ED6FCD98;
  if (sub_18F27DDB0(v2, *&xmmword_1ED6FCD78) && sub_18F27DDB0(v3, v5) && sub_18F27DDB0(v4, v6) && sub_18F27DDB0(v19, v7) && sub_18F27DDB0(v17, *&v8) && sub_18F27DDB0(v16, *(&v8 + 1)))
  {
    return 1;
  }

  v10 = *v1;
  v11 = *(v1 + 3);
  v20 = *(v1 + 1);
  v18 = *(v1 + 2);
  if (sub_18F164488())
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = v18;
    v12 = v20;
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 0.0;
  v21.size.height = 0.0;
  v14 = v10;
  v15 = v11;
  return CGRectEqualToRect(*(&v12 - 1), v21);
}

BOOL sub_18F162594(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = (v4 + OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_geometry);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[3];
  v19 = *(v9 + 1);
  v18 = *(v9 + 2);
  if (sub_18F164488())
  {
    v10 = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v11 = *(MEMORY[0x1E695F050] + 16);
    v13 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v13 = v18;
    v12 = v19;
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v14 = v10;
  v15 = v11;
  return CGRectIntersectsRect(v20, *(&v12 - 1)) || sub_18F16240C();
}

void RepresentedEntityProviderWrapper.intelligenceAppIntentsPayloadDebugDescription()()
{
  OUTLINED_FUNCTION_18();
  v35 = type metadata accessor for ViewAnnotation(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v1 - v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F0EF200();
  if (v39)
  {
    sub_18F0FD0B4(&v37, v40);
    __swift_project_boxed_opaque_existential_1Tm(v40, v40[3]);
    v7 = OUTLINED_FUNCTION_43_1();
    v9 = v8(v7);
    v36 = sub_18F111FA0(v9);
    v10 = 0;
    v34 = v9 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v33 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v36 == v10)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        goto LABEL_21;
      }

      if (v34)
      {
        MEMORY[0x193ADBE10](v10, v9);
      }

      else
      {
        if (v10 >= *(v33 + 16))
        {
          goto LABEL_23;
        }
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      OUTLINED_FUNCTION_45_2();
      sub_18F0F9960();
      OUTLINED_FUNCTION_92_0();
      sub_18F0F9960();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_18F0FD0B4(v3, &v37);
          __swift_project_boxed_opaque_existential_1Tm(&v37, v39);
          v13 = OUTLINED_FUNCTION_56();
          AppEntity.fullyQualifiedIdentifier.getter(v13, v14, v15);
          v16 = EntityIdentifier.viewDebugDescription.getter();
          v18 = v17;

          OUTLINED_FUNCTION_0_3();
          sub_18F106ED8(v6, v19);

          __swift_destroy_boxed_opaque_existential_1Tm(&v37);
        }

        else
        {
          v25 = *(v3 + 16);
          v24 = *(v3 + 24);
          v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFCC8) + 48);
          v37 = *v3;
          v38 = v25;
          v39 = v24;
          v16 = EntityIdentifier.viewDebugDescription.getter();
          v18 = v27;

          OUTLINED_FUNCTION_0_3();
          sub_18F106ED8(v6, v28);

          sub_18F0EF1A8(v3 + v26, &qword_1EACD32D0);
        }
      }

      else
      {
        v20 = *v3;
        v21 = *(v3 + 16);
        *&v37 = 0x3A746E65746E493CLL;
        *(&v37 + 1) = 0xE900000000000020;
        v22 = static AppIntent._identifier.getter(v20);
        MEMORY[0x193ADB000](v22);

        MEMORY[0x193ADB000](62, 0xE100000000000000);
        sub_18F0F689C(v21);

        v18 = *(&v37 + 1);
        v16 = v37;
        OUTLINED_FUNCTION_0_3();
        sub_18F106ED8(v6, v23);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F141818();
        v11 = v31;
      }

      v29 = *(v11 + 16);
      if (v29 >= *(v11 + 24) >> 1)
      {
        sub_18F141818();
        v11 = v32;
      }

      *(v11 + 16) = v29 + 1;
      v30 = v11 + 16 * v29;
      *(v30 + 32) = v16;
      *(v30 + 40) = v18;
      ++v10;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
    sub_18F0EF1A8(&v37, &qword_1EACCFCD0);
LABEL_21:
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_18F162AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18F0FC874;

  return MEMORY[0x1EEE4BDD8](a1, a2, a3, a4, a5);
}

uint64_t sub_18F162B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18F0FC870;

  return MEMORY[0x1EEE4BDE0](a1, a2, a3, a4);
}

uint64_t sub_18F162C3C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0128);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  v23 = sub_18F52141C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_18F0EF200();
  if (!*(&v86[1] + 1))
  {
    sub_18F0EF1A8(v86, &qword_1EACCFCD0);
    if (qword_1ED6FD658 != -1)
    {
      swift_once();
    }

    v40 = sub_18F52165C();
    __swift_project_value_buffer(v40, qword_1ED707698);
    v41 = sub_18F52163C();
    v42 = sub_18F52221C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_18F0E9000, v41, v42, "No RepresentedEntityProvider currently exists", v43, 2u);
      MEMORY[0x193ADD350](v43, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_18F0FD0B4(v86, v87);
  if (qword_1ED6FD658 != -1)
  {
    swift_once();
  }

  v27 = sub_18F52165C();
  v28 = __swift_project_value_buffer(v27, qword_1ED707698);
  v29 = *(v24 + 16);
  v83 = a1;
  v29(v26, a1, v23);
  v82 = v28;
  v30 = sub_18F52163C();
  v31 = sub_18F52223C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v81 = v10;
    v33 = v32;
    v80 = swift_slowAlloc();
    *&v86[0] = v80;
    *v33 = 136446210;
    sub_18F5213FC();
    v34 = sub_18F52253C();
    v36 = v35;
    sub_18F0EF1A8(v22, &qword_1EACD0128);
    (*(v24 + 8))(v26, v23);
    v37 = sub_18F11897C(v34, v36, v86);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_18F0E9000, v30, v31, "Requesting AppEntityUIElements for %{public}s", v33, 0xCu);
    v38 = v80;
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x193ADD350](v38, -1, -1);
    v39 = v33;
    v10 = v81;
    MEMORY[0x193ADD350](v39, -1, -1);
  }

  else
  {

    (*(v24 + 8))(v26, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 56) = a5;
  *(inited + 64) = 0;
  v46 = sub_18F4521F0(inited);
  v47 = v83;
  if ((sub_18F52140C() & 1) == 0)
  {
LABEL_29:
    memset(v86, 0, 32);
    *&v86[2] = a6;
    *(&v86[2] + 1) = a7;
    *&v86[3] = a8;
    *(&v86[3] + 1) = a9;
    *&v86[4] = v46;
    BYTE8(v86[4]) = 1;
    v61 = v88;
    v62 = v89;
    __swift_project_boxed_opaque_existential_1Tm(v87, v88);
    memcpy(v84, v86, 0x49uLL);
    v63 = (*(v62 + 24))(v84, v61, v62);
    sub_18F16AA1C(v86);
    v85 = v63;
    v64 = sub_18F52163C();
    v65 = sub_18F52223C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134349056;
      *(v66 + 4) = sub_18F111F70(v63);
      _os_log_impl(&dword_18F0E9000, v64, v65, "Finished requesting AppEntityUIElements (retrieved %{public}ld", v66, 0xCu);
      MEMORY[0x193ADD350](v66, -1, -1);
    }

    v67 = sub_18F52163C();
    v68 = sub_18F52223C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_18F0E9000, v67, v68, "Beginning processing for elements returned from the provider", v69, 2u);
      MEMORY[0x193ADD350](v69, -1, -1);
    }

    *v84 = a2;
    *&v84[1] = a3;
    *&v84[2] = a4;
    *&v84[3] = a5;
    LOBYTE(v84[4]) = 0;
    v70 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v71 = sub_18F163560(v70, v84);

    swift_beginAccess();
    v85 = v71;

    if (sub_18F111F70(v71) < 101)
    {
      v73 = v71;
    }

    else
    {
      *v92 = a2;
      *&v92[1] = a3;
      *&v92[2] = a4;
      *&v92[3] = a5;
      v93 = 1;
      v72 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v73 = sub_18F163560(v72, v92);

      v85 = v73;

      v10[32] = 1;
      if (sub_18F111F70(v73) >= 101)
      {
        v10[34] = 0;
      }
    }

    if (sub_18F111F70(v73) >= 501)
    {
      v90[0] = 500;
      memset(&v90[1], 0, 24);
      v91 = 2;
      v74 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F163560(v74, v90);
      swift_bridgeObjectRelease_n();
      v10[33] = 1;
    }

    v75 = sub_18F52163C();
    v76 = sub_18F52223C();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_18F0E9000, v75, v76, "Completed processing of elements returned from the provider", v77, 2u);
      MEMORY[0x193ADD350](v77, -1, -1);
    }

    v78 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v44 = sub_18F163B2C(v78, v47);
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1Tm(v87);
    return v44;
  }

  sub_18F522EFC();
  MEMORY[0x193ADC4F0](1);
  v48 = sub_18F522F4C();
  v49 = -1 << *(v46 + 32);
  v50 = v48 & ~v49;
  if ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
  {
    v51 = ~v49;
    while ((*(*(v46 + 48) + 32 + 40 * v50) & 1) == 0)
    {
      v50 = (v50 + 1) & v51;
      if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_29;
  }

LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v84[0] = v46;
  v53 = *(v46 + 16);
  if (*(v46 + 24) <= v53)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_18F2CA324(v53 + 1);
    }

    else
    {
      sub_18F2CCB3C(v53 + 1);
    }

    v46 = v84[0];
    sub_18F522EFC();
    MEMORY[0x193ADC4F0](1);
    v54 = sub_18F522F4C();
    v55 = -1 << *(v46 + 32);
    v50 = v54 & ~v55;
    if ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
    {
      v56 = ~v55;
      while (*(*(v46 + 48) + 32 + 40 * v50) != 1)
      {
        v50 = (v50 + 1) & v56;
        if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_44;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18F2CBDE4();
    v46 = v84[0];
  }

LABEL_27:
  *(v46 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v50;
  v57 = *(v46 + 48) + 40 * v50;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 1;
  v58 = *(v46 + 16);
  v59 = __OFADD__(v58, 1);
  v60 = v58 + 1;
  if (!v59)
  {
    *(v46 + 16) = v60;
    goto LABEL_29;
  }

  __break(1u);
LABEL_44:
  result = sub_18F522E1C();
  __break(1u);
  return result;
}

unint64_t sub_18F163560(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_18F111F70(a1);
  v5 = v4;
  LODWORD(v6) = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v6 != 1)
    {
      sub_18F16A7B0(0, v3);
      sub_18F16A7B0(500, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        type metadata accessor for _RepresentedEntityElement();
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v28 = 0;
        do
        {
          v29 = v28 + 1;
          sub_18F52280C();
          v28 = v29;
        }

        while (v29 != 500);
      }

      else
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      if (!(v3 >> 62))
      {
        v30 = 0;
        v31 = v3 & 0xFFFFFFFFFFFFFF8;
        v32 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
        v33 = 1001;
        goto LABEL_39;
      }

      goto LABEL_68;
    }

    v7 = v4;
    v54 = MEMORY[0x1E69E7CC0];
    v8 = sub_18F111FA0(v3);
    v9 = 0;
    v6 = v3 & 0xC000000000000001;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8 == v9)
      {
        v3 = v54;
        LODWORD(v6) = 1;
        v5 = v7;
        goto LABEL_45;
      }

      if (v6)
      {
        v14 = OUTLINED_FUNCTION_48();
        MEMORY[0x193ADBE10](v14);
      }

      else
      {
        if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }
      }

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v10 = OUTLINED_FUNCTION_84();
      if (sub_18F162594(v10, v11, v12, v13))
      {
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
      }

      else
      {
      }

      ++v9;
    }

    __break(1u);
  }

  else
  {
    v52 = v4;
    v53 = *(a2 + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v15 = sub_18F111FA0(v3);
    v16 = 0;
    v5 = v3 & 0xC000000000000001;
    LODWORD(v6) = v3 & 0xFFFFFFF8;
    while (1)
    {
      if (v15 == v16)
      {
        v3 = v55;
        LODWORD(v6) = v53;
        v5 = v52;
        goto LABEL_45;
      }

      if (v5)
      {
        v27 = OUTLINED_FUNCTION_48();
        v17 = MEMORY[0x193ADBE10](v27);
      }

      else
      {
        if (v16 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v17 = *(v3 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        break;
      }

      v18 = OBJC_IVAR____TtC10AppIntents25_RepresentedEntityElement_state;
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      if ((*(v17 + v18) & 1) != 0 || (v19 = OUTLINED_FUNCTION_84(), sub_18F162594(v19, v20, v21, v22)))
      {
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
      }

      else
      {
        if (qword_1ED6FD658 != -1)
        {
          OUTLINED_FUNCTION_2_12();
          swift_once();
        }

        v23 = sub_18F52165C();
        __swift_project_value_buffer(v23, qword_1ED707698);
        v24 = sub_18F52163C();
        v25 = sub_18F52221C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_18F0E9000, v24, v25, "Non-selected element found outside of query rect. Removing", v26, 2u);
          OUTLINED_FUNCTION_47_2();
          MEMORY[0x193ADD350]();
        }
      }

      ++v16;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  OUTLINED_FUNCTION_2_12();
  swift_once();
  while (1)
  {
    v36 = sub_18F52165C();
    __swift_project_value_buffer(v36, qword_1ED707698);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v37 = sub_18F52163C();
    v38 = sub_18F52223C();
    if (!os_log_type_enabled(v37, v38))
    {

      return v3;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55 = v40;
    *v39 = 134218242;
    v41 = sub_18F111F70(v3);
    if (!__OFSUB__(v5, v41))
    {
      break;
    }

    __break(1u);
LABEL_68:

    v31 = sub_18F522AAC();
    v32 = v48;
    v30 = v49;
    v33 = v50;
    if (v50)
    {
LABEL_39:
      sub_18F522DBC();
      swift_unknownObjectRetain_n();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        swift_unknownObjectRelease();
        v34 = MEMORY[0x1E69E7CC0];
      }

      v35 = *(v34 + 16);

      if (__OFSUB__(v33 >> 1, v30))
      {
        __break(1u);
      }

      else if (v35 == (v33 >> 1) - v30)
      {
        v3 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v3)
        {
          swift_unknownObjectRelease();
          v3 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_45;
      }

      swift_unknownObjectRelease();
    }

    sub_18F3B869C(v31, v32, v30, v33);
    v3 = v51;
    swift_unknownObjectRelease();
LABEL_45:
    if (qword_1ED6FD658 != -1)
    {
      goto LABEL_66;
    }
  }

  *(v39 + 4) = v5 - v41;

  *(v39 + 12) = 2082;
  v42 = "Truncated to absolute threshold";
  if (v6 == 1)
  {
    v43 = 0xD000000000000020;
  }

  else
  {
    v43 = 0xD00000000000001FLL;
  }

  if (v6 != 1)
  {
    v42 = "FetchDisplayRepresentation";
  }

  if (v6)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0xD000000000000027;
  }

  if (v6)
  {
    v45 = v42;
  }

  else
  {
    v45 = "thin Query Rect)";
  }

  v46 = sub_18F11897C(v44, v45 | 0x8000000000000000, &v55);

  *(v39 + 14) = v46;
  _os_log_impl(&dword_18F0E9000, v37, v38, "Filtered out %ld elements on condition: %{public}s", v39, 0x16u);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x193ADD350]();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x193ADD350]();

  return v3;
}

uint64_t sub_18F163B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_18F52133C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18F52135C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v3 + 32) & 1) != 0 || *(v3 + 33) == 1)
  {
    v15 = *MEMORY[0x1E69DBBC0];
    v16 = *(v7 + 104);
    v32 = v12;
    v16(v9, v15, v6);
    sub_18F5212BC();
    v16(v9, v15, v6);
    sub_18F52134C();
    sub_18F52132C();
    v17 = sub_18F52131C();
    MEMORY[0x1EEE9AC00](v17);
    *(&v32 - 2) = a2;
    *(&v32 - 1) = v3;
    sub_18F3E9FE8(sub_18F16AA70, (&v32 - 4), a1, v18, v19, v20, v21, v22, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    sub_18F5212CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0138);
    v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18F53F800;
    (*(v11 + 32))(v24 + v23, v14, v32);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v12);
    *(&v32 - 2) = a2;
    *(&v32 - 1) = v3;
    sub_18F3E9FE8(sub_18F16AE60, (&v32 - 4), a1, v25, v26, v27, v28, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
    return v30;
  }

  return v24;
}

uint64_t RepresentedEntityProviding.getRegisteredAppEntity()@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD00);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  v6 = OUTLINED_FUNCTION_67_0();
  result = v7(v6);
  if (result)
  {
    v9 = result;
    StandardEntityProvider.getCurrentEntityAnnotation()();

    v10 = type metadata accessor for ViewAnnotation(0);
    OUTLINED_FUNCTION_106(v5, 1, v10);
    if (!v11)
    {
      ViewAnnotation.fullyQualifiedIdentifier.getter();
      OUTLINED_FUNCTION_0_3();
      return sub_18F106ED8(v5, v12);
    }

    result = sub_18F0EF1A8(v5, &qword_1EACCFD00);
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void static EntityIdentifier.lnValue<A>(for:identifier:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v46 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - v15;
  v47 = v10;
  v44 = *(v10 + 16);
  v45 = v5;
  v44(&v44 - v15, v5, AssociatedTypeWitness);
  v48 = v7;
  v49 = v3;
  v50 = v1;
  EntityIdentifier.init<A>(for:identifier:)(v7, v16, v1, v51);
  v17 = v51[0];
  v18 = *(v51[1] + 8);
  static AppValue._identifier.getter(v51[0], v18);
  if (dynamic_cast_existential_1_conditional(v17))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    static AppValue._identifier.getter(v17, v18);
    OUTLINED_FUNCTION_37();
    v20 = sub_18F164CE8(v19);

    v21 = v20;
    sub_18F1AF344();
  }

  sub_18F0F21A8(0, &qword_1EACCDD20);
  v22 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F166ED0();
  v24 = v23;
  v25 = [v23 description];

  sub_18F5218DC();

  OUTLINED_FUNCTION_66();
  v26 = sub_18F164414();
  if (v26)
  {
    v27 = v26;
    v28 = [objc_allocWithZone(MEMORY[0x1E69AC7C8]) initWithIdentifier_];
    v51[3] = sub_18F0F21A8(0, &qword_1ED6FE640);
    v51[0] = v28;
    v29 = static AppEntity.valueType.getter(v49, v50);
    objc_allocWithZone(MEMORY[0x1E69ACA88]);
    sub_18F166E58(v51, v29);
  }

  else
  {
    if (qword_1ED6FD658 != -1)
    {
      OUTLINED_FUNCTION_2_12();
      swift_once();
    }

    v30 = sub_18F52165C();
    __swift_project_value_buffer(v30, qword_1ED707698);
    v44(v46, v45, AssociatedTypeWitness);
    v31 = sub_18F52163C();
    v32 = sub_18F52221C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v33 = 136315138;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
      v36 = OUTLINED_FUNCTION_86_0();
      v37(v36);
      v38 = OUTLINED_FUNCTION_56();
      v41 = sub_18F11897C(v38, v39, v40);

      *(v33 + 4) = v41;
      _os_log_impl(&dword_18F0E9000, v31, v32, "Could not generate LNValue from EntityIdentifier for identifier: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    else
    {

      v42 = OUTLINED_FUNCTION_86_0();
      v43(v42);
    }
  }

  OUTLINED_FUNCTION_16();
}

id sub_18F164414()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL sub_18F164488()
{
  v2 = v0[3];
  v1 = v0[4];
  if ((~*v0 & 0x7FF0000000000000) == 0 && (*v0 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  v3 = v0[1];
  if ((~v3 & 0x7FF0000000000000) == 0 && (v3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if ((~v2 & 0x7FF0000000000000) == 0 && (v2 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    return 1;
  }

  if ((~v1 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  return (v1 & 0xFFFFFFFFFFFFFLL) != 0;
}

void sub_18F1644E8()
{
  OUTLINED_FUNCTION_18();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD08);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v30 - v3;
  v5 = type metadata accessor for ViewEntityIdentifier();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v13 = Strong;
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v33[0] = v13;
  if (((*(v15 + 8))(ObjectType, v15) & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_21:
    OUTLINED_FUNCTION_16();
    return;
  }

  v30[2] = v11;
  v30[0] = v7;
  sub_18F0FD6C4(v0 + 16, v33);
  v17 = v34;
  v18 = v35;
  __swift_project_boxed_opaque_existential_1Tm(v33, v34);
  v30[1] = v13;
  v32 = v13;
  (*(v14 + 24))(ObjectType, v14);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = sub_18F111FA0(v19);
  v21 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v20 == v21)
    {
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      goto LABEL_21;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193ADBE10](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }
    }

    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    sub_18F161C70();

    OUTLINED_FUNCTION_106(v4, 1, v5);
    if (v23)
    {
      sub_18F0EF1A8(v4, &qword_1EACCFD08);
      ++v21;
    }

    else
    {
      OUTLINED_FUNCTION_42_2();
      sub_18F0F904C();
      v24 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_18F167204();
        v24 = v28;
      }

      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      v31 = v24;
      if (v27 >= v26 >> 1)
      {
        sub_18F167204();
        v31 = v29;
      }

      *(v31 + 16) = v27 + 1;
      OUTLINED_FUNCTION_32_1();
      OUTLINED_FUNCTION_42_2();
      sub_18F0F904C();
      v21 = v22;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_18F164804()
{
  OUTLINED_FUNCTION_69();
  sub_18F521EBC();
  *(v0 + 16) = sub_18F521EAC();
  v2 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F164894, v2, v1);
}

uint64_t sub_18F164894()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1(0, 0);
}

uint64_t RepresentedEntityProviderBridgeWrapper.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_18F16A198(v0 + 56);
  return v0;
}

uint64_t RepresentedEntityProviderBridgeWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  sub_18F16A198(v0 + 56);

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_18F164964()
{
  *(v1 + 16) = v0;
  sub_18F521EBC();
  *(v1 + 24) = sub_18F521EAC();
  v3 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F1649FC, v3, v2);
}

uint64_t sub_18F1649FC()
{
  OUTLINED_FUNCTION_69();

  sub_18F1644E8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F164A60()
{
  sub_18F521EBC();
  *(v0 + 16) = sub_18F521EAC();
  v2 = sub_18F521E1C();

  return MEMORY[0x1EEE6DFA0](sub_18F164AF4, v2, v1);
}

uint64_t sub_18F164AF4()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t sub_18F164B5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F164BE8;

  return sub_18F164804();
}

uint64_t sub_18F164BE8()
{
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_80_0();
  }

  return v5(v4);
}

uint64_t sub_18F165098(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unint64_t))
{
  v12 = *a1;
  v13 = *a7;

  if (v13 != -1)
  {
    swift_once();
  }

  v24 = v12;

  swift_getAtKeyPath();

  v14 = a9(a2, a3);

  result = v14;
  if (!v14)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v16 = sub_18F52165C();
    __swift_project_value_buffer(v16, qword_1ED707790);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v17 = sub_18F52163C();
    v18 = sub_18F52220C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v19 = 136446466;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v20 = OUTLINED_FUNCTION_80_0();
      v23 = sub_18F11897C(v20, v21, v22);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_18F11897C(a2, a3, &v24);
      _os_log_impl(&dword_18F0E9000, v17, v18, "Cache miss for %{public}s:%{public}s", v19, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
      OUTLINED_FUNCTION_47_2();
      MEMORY[0x193ADD350]();
    }

    return sub_18F137F7C(a1);
  }

  return result;
}

void *sub_18F165320(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  os_unfair_lock_lock((a2 + 128));
  v15 = *(a2 + 136);
  v16 = qword_1ED6FE2D0;

  if (v16 != -1)
  {
    swift_once();
  }

  v39[0] = v15;

  swift_getAtKeyPath();

  v17 = sub_18F19ED80(a3, a4, v42);

  os_unfair_lock_unlock((a2 + 128));
  if (!v17)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED707790);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v19 = sub_18F52163C();
    v20 = sub_18F52220C();

    v35 = a5;
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v21 = 136446466;
      if (a6)
      {
        v22 = a5;
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      log = v19;
      v23 = a3;
      if (a6)
      {
        v24 = a6;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v25 = sub_18F11897C(v22, v24, v39);

      *(v21 + 4) = v25;
      v26 = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_18F11897C(v23, a4, v39);
      _os_log_impl(&dword_18F0E9000, log, v33, "Loading %{public}s:%{public}s from provider", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v34, -1, -1);
      MEMORY[0x193ADD350](v21, -1, -1);
    }

    else
    {

      v26 = a3;
    }

    sub_18F0FD6C4(a1, v39);
    v27 = v40;
    v28 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v17 = (*(v28 + 16))(v26, a4, v35, a6, a7, v27, v28);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (!v9)
    {
      v42 = v17;
      os_unfair_lock_lock((a2 + 128));
      sub_18F16A844((a2 + 136), v30, v26, a4, &v42, a8, v39);
      os_unfair_lock_unlock((a2 + 128));
    }
  }

  return v17;
}

void *sub_18F1656B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  os_unfair_lock_lock((a2 + 128));
  v15 = *(a2 + 136);
  v16 = qword_1ED6FDC90;

  if (v16 != -1)
  {
    swift_once();
  }

  v39[0] = v15;

  swift_getAtKeyPath();

  v17 = sub_18F19ED80(a3, a4, v42);

  os_unfair_lock_unlock((a2 + 128));
  if (!v17)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED707790);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v19 = sub_18F52163C();
    v20 = sub_18F52220C();

    v35 = a5;
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v21 = 136446466;
      if (a6)
      {
        v22 = a5;
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      log = v19;
      v23 = a3;
      if (a6)
      {
        v24 = a6;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v25 = sub_18F11897C(v22, v24, v39);

      *(v21 + 4) = v25;
      v26 = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_18F11897C(v23, a4, v39);
      _os_log_impl(&dword_18F0E9000, log, v33, "Loading %{public}s:%{public}s from provider", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v34, -1, -1);
      MEMORY[0x193ADD350](v21, -1, -1);
    }

    else
    {

      v26 = a3;
    }

    sub_18F0FD6C4(a1, v39);
    v27 = v40;
    v28 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v17 = (*(v28 + 40))(v26, a4, v35, a6, a7, v27, v28);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (!v9)
    {
      v42 = v17;
      os_unfair_lock_lock((a2 + 128));
      sub_18F16A8B4((a2 + 136), v30, v26, a4, &v42, a8, v39);
      os_unfair_lock_unlock((a2 + 128));
    }
  }

  return v17;
}

void *sub_18F165A40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  os_unfair_lock_lock((a2 + 128));
  v15 = *(a2 + 136);
  v16 = qword_1ED6FDDA0;

  if (v16 != -1)
  {
    swift_once();
  }

  v39[0] = v15;

  swift_getAtKeyPath();

  v17 = sub_18F19ED80(a3, a4, v42);

  os_unfair_lock_unlock((a2 + 128));
  if (!v17)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED707790);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v19 = sub_18F52163C();
    v20 = sub_18F52220C();

    v35 = a5;
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v21 = 136446466;
      if (a6)
      {
        v22 = a5;
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      log = v19;
      v23 = a3;
      if (a6)
      {
        v24 = a6;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v25 = sub_18F11897C(v22, v24, v39);

      *(v21 + 4) = v25;
      v26 = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_18F11897C(v23, a4, v39);
      _os_log_impl(&dword_18F0E9000, log, v33, "Loading %{public}s:%{public}s from provider", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v34, -1, -1);
      MEMORY[0x193ADD350](v21, -1, -1);
    }

    else
    {

      v26 = a3;
    }

    sub_18F0FD6C4(a1, v39);
    v27 = v40;
    v28 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v17 = (*(v28 + 24))(v26, a4, v35, a6, a7, v27, v28);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (!v9)
    {
      v42 = v17;
      os_unfair_lock_lock((a2 + 128));
      sub_18F16A924((a2 + 136), v30, v26, a4, &v42, a8, v39);
      os_unfair_lock_unlock((a2 + 128));
    }
  }

  return v17;
}

void *sub_18F165DD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  os_unfair_lock_lock((a2 + 128));
  v15 = *(a2 + 136);
  v16 = qword_1EACCF580;

  if (v16 != -1)
  {
    swift_once();
  }

  v39[0] = v15;

  swift_getAtKeyPath();

  v17 = sub_18F19ED80(a3, a4, v42);

  os_unfair_lock_unlock((a2 + 128));
  if (!v17)
  {
    if (qword_1ED6FED58 != -1)
    {
      swift_once();
    }

    v18 = sub_18F52165C();
    __swift_project_value_buffer(v18, qword_1ED707790);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v19 = sub_18F52163C();
    v20 = sub_18F52220C();

    v35 = a5;
    if (os_log_type_enabled(v19, v20))
    {
      v33 = v20;
      v21 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v21 = 136446466;
      if (a6)
      {
        v22 = a5;
      }

      else
      {
        v22 = 0x6E776F6E6B6E753CLL;
      }

      log = v19;
      v23 = a3;
      if (a6)
      {
        v24 = a6;
      }

      else
      {
        v24 = 0xE90000000000003ELL;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v25 = sub_18F11897C(v22, v24, v39);

      *(v21 + 4) = v25;
      v26 = v23;
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_18F11897C(v23, a4, v39);
      _os_log_impl(&dword_18F0E9000, log, v33, "Loading %{public}s:%{public}s from provider", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v34, -1, -1);
      MEMORY[0x193ADD350](v21, -1, -1);
    }

    else
    {

      v26 = a3;
    }

    sub_18F0FD6C4(a1, v39);
    v27 = v40;
    v28 = v41;
    __swift_project_boxed_opaque_existential_1Tm(v39, v40);
    v17 = (*(v28 + 32))(v26, a4, v35, a6, a7, v27, v28);
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    if (!v9)
    {
      v42 = v17;
      os_unfair_lock_lock((a2 + 128));
      sub_18F16A994((a2 + 136), v30, v26, a4, &v42, a8, v39);
      os_unfair_lock_unlock((a2 + 128));
    }
  }

  return v17;
}

uint64_t sub_18F166160(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    sub_18F34FC20(v7);
  }

  v8 = *a1;
  v9 = qword_1ED6FE2D0;

  if (v9 != -1)
  {
    swift_once();
  }

  v31 = v8;

  v10 = a5;
  v11 = swift_modifyAtReferenceWritableKeyPath();
  v13 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v13;
  sub_18F2BF84C();
  *v13 = v28;
  v11(v30, 0);

  sub_18F3E6F18(&v32);
  v14 = v41;
  v17 = sub_18F134080();
  v19 = v18;
  if (v14)
  {
    v20 = v15;
    v21 = v16;
    v40 = v32;
    sub_18F0EF1A8(&v40, &qword_1EACD4470);
    v39 = v33;
    sub_18F0EF1A8(&v39, &qword_1EACD4470);
    v38 = v34;
    sub_18F0EF1A8(&v38, &unk_1EACCFDB0);
    sub_18F16A9C8();
    result = swift_allocError();
    *v23 = v17;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
  }

  else
  {
    v37 = v32;
    sub_18F0EF1A8(&v37, &qword_1EACD4470);
    v36 = v33;
    sub_18F0EF1A8(&v36, &qword_1EACD4470);
    v35 = v34;
    sub_18F0EF1A8(&v35, &unk_1EACCFDB0);
    sub_18F136BB4(v17, v19);

    v31 = v8;

    v24 = swift_modifyAtReferenceWritableKeyPath();
    v26 = v25;
    v27 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_18F2BF84C();
    *v26 = v29;

    v24(v30, 0);
  }

  return result;
}

uint64_t sub_18F166484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    sub_18F34FC20(v7);
  }

  v8 = *a1;
  v9 = qword_1ED6FDC90;

  if (v9 != -1)
  {
    swift_once();
  }

  v31 = v8;

  v10 = a5;
  v11 = swift_modifyAtReferenceWritableKeyPath();
  v13 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v13;
  sub_18F13406C();
  *v13 = v28;
  v11(v30, 0);

  sub_18F3E6F18(&v32);
  v14 = v41;
  v17 = sub_18F134080();
  v19 = v18;
  if (v14)
  {
    v20 = v15;
    v21 = v16;
    v40 = v32;
    sub_18F0EF1A8(&v40, &qword_1EACD4470);
    v39 = v33;
    sub_18F0EF1A8(&v39, &qword_1EACD4470);
    v38 = v34;
    sub_18F0EF1A8(&v38, &unk_1EACCFDB0);
    sub_18F16A9C8();
    result = swift_allocError();
    *v23 = v17;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
  }

  else
  {
    v37 = v32;
    sub_18F0EF1A8(&v37, &qword_1EACD4470);
    v36 = v33;
    sub_18F0EF1A8(&v36, &qword_1EACD4470);
    v35 = v34;
    sub_18F0EF1A8(&v35, &unk_1EACCFDB0);
    sub_18F136BB4(v17, v19);

    v31 = v8;

    v24 = swift_modifyAtReferenceWritableKeyPath();
    v26 = v25;
    v27 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_18F13406C();
    *v26 = v29;

    v24(v30, 0);
  }

  return result;
}

uint64_t sub_18F1667A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    sub_18F34FC20(v7);
  }

  v8 = *a1;
  v9 = qword_1ED6FDDA0;

  if (v9 != -1)
  {
    swift_once();
  }

  v31 = v8;

  v10 = a5;
  v11 = swift_modifyAtReferenceWritableKeyPath();
  v13 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v13;
  sub_18F2BFA20();
  *v13 = v28;
  v11(v30, 0);

  sub_18F3E6F18(&v32);
  v14 = v41;
  v17 = sub_18F134080();
  v19 = v18;
  if (v14)
  {
    v20 = v15;
    v21 = v16;
    v40 = v32;
    sub_18F0EF1A8(&v40, &qword_1EACD4470);
    v39 = v33;
    sub_18F0EF1A8(&v39, &qword_1EACD4470);
    v38 = v34;
    sub_18F0EF1A8(&v38, &unk_1EACCFDB0);
    sub_18F16A9C8();
    result = swift_allocError();
    *v23 = v17;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
  }

  else
  {
    v37 = v32;
    sub_18F0EF1A8(&v37, &qword_1EACD4470);
    v36 = v33;
    sub_18F0EF1A8(&v36, &qword_1EACD4470);
    v35 = v34;
    sub_18F0EF1A8(&v35, &unk_1EACCFDB0);
    sub_18F166DF0();

    v31 = v8;

    v24 = swift_modifyAtReferenceWritableKeyPath();
    v26 = v25;
    v27 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_18F2BFA20();
    *v26 = v29;

    v24(v30, 0);
  }

  return result;
}

uint64_t sub_18F166ACC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    sub_18F34FC20(v7);
  }

  v8 = *a1;
  v9 = qword_1EACCF580;

  if (v9 != -1)
  {
    swift_once();
  }

  v31 = v8;

  v10 = a5;
  v11 = swift_modifyAtReferenceWritableKeyPath();
  v13 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *v13;
  sub_18F2BFC30();
  *v13 = v28;
  v11(v30, 0);

  sub_18F3E6F18(&v32);
  v14 = v41;
  v17 = sub_18F134080();
  v19 = v18;
  if (v14)
  {
    v20 = v15;
    v21 = v16;
    v40 = v32;
    sub_18F0EF1A8(&v40, &qword_1EACD4470);
    v39 = v33;
    sub_18F0EF1A8(&v39, &qword_1EACD4470);
    v38 = v34;
    sub_18F0EF1A8(&v38, &unk_1EACCFDB0);
    sub_18F16A9C8();
    result = swift_allocError();
    *v23 = v17;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
  }

  else
  {
    v37 = v32;
    sub_18F0EF1A8(&v37, &qword_1EACD4470);
    v36 = v33;
    sub_18F0EF1A8(&v36, &qword_1EACD4470);
    v35 = v34;
    sub_18F0EF1A8(&v35, &unk_1EACCFDB0);
    sub_18F166DF0();

    v31 = v8;

    v24 = swift_modifyAtReferenceWritableKeyPath();
    v26 = v25;
    v27 = v10;
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_18F2BFC30();
    *v26 = v29;

    v24(v30, 0);
  }

  return result;
}

uint64_t sub_18F166DF0()
{
  v1 = sub_18F5218AC();
  v2 = [v0 mangledTypeNameForBundleIdentifier_];

  sub_18F5218DC();
  return OUTLINED_FUNCTION_66();
}

id sub_18F166E58(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v5 = [v2 initWithValue:sub_18F522D4C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

void sub_18F166ED0()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v3 = sub_18F5218AC();

  if (v2)
  {
    OUTLINED_FUNCTION_43_1();
    v4 = sub_18F5218AC();
  }

  else
  {
    v4 = 0;
  }

  OUTLINED_FUNCTION_92_0();
  v5 = sub_18F5218AC();

  [v0 initWithTypeIdentifier:v3 bundleIdentifier:v4 instanceIdentifier:v5];

  OUTLINED_FUNCTION_101_0();
}

void sub_18F166FD8()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18F169614();
    *v0 = v3;
  }
}

uint64_t sub_18F167090(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_18F521D0C();
  }

  return result;
}

void sub_18F1670BC()
{
  OUTLINED_FUNCTION_87();
  if (!(v2 ^ v3 | v1))
  {
    sub_18F169614();
    *v0 = v4;
  }
}

void sub_18F16712C()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0138, &unk_18F53FF00);
  OUTLINED_FUNCTION_35_1();
  sub_18F52135C();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E69DBC20], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167204()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0118, &unk_18F53FEE0);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for ViewEntityIdentifier();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for ViewEntityIdentifier, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167300()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00A8);
    v7 = OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_15_5(v7);
    OUTLINED_FUNCTION_19_1(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F167414()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_73();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD18);
    v7 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_6();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_18F167524()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACCFDA8);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 72 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F16762C()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFFD0, &unk_18F53FD88);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentReminderTaskList();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentReminderTaskList, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167704()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFFC8, &unk_18F53FD80);
  v8 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentReminderTask(v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentReminderTask, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F1677DC()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFFB8, &unk_18F53FD70);
  v8 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentPerson(v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentPerson, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F1678D0()
{
  OUTLINED_FUNCTION_40_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_49_2();
  if (v3)
  {
    OUTLINED_FUNCTION_76_0(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_21_4();
    v12[2] = v2;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_95_1();
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v2] <= v14)
    {
      memmove(v14, v15, 8 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
  }
}

void sub_18F1679A8()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFFA0, &unk_18F53FD58);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentNote();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentNote, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167A80()
{
  OUTLINED_FUNCTION_29_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_26();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF98);
    v6 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v6);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v9)
    {
      v10 = v8 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      OUTLINED_FUNCTION_94();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F167B4C()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFF90, &unk_18F53FD48);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentMediaSearch();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentMediaSearch, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167C24()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFF88, &unk_18F53FD40);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentMediaItem();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentMediaItem, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167D18()
{
  OUTLINED_FUNCTION_29_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_26();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF78);
    v6 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v6);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v9)
    {
      v10 = v8 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      OUTLINED_FUNCTION_94();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F167DE4()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFF70, &unk_18F53FD28);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for IntentCalendarEvent();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for IntentCalendarEvent, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167ED8()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0080, &unk_18F53FE40);
  OUTLINED_FUNCTION_35_1();
  sub_18F520C8C();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6968FB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F167FB0()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0008, &unk_18F53FDC0);
  OUTLINED_FUNCTION_35_1();
  sub_18F52085C();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6968278], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F168088()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0000, &unk_18F53FDB8);
  OUTLINED_FUNCTION_35_1();
  sub_18F520DEC();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6969530], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F168160()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_73();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFFF8);
    v7 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_21_4();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_18F16822C()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_73();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD30);
    v7 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_21_4();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_18F16830C()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    OUTLINED_FUNCTION_76_0(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v2;
    v12[3] = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v12 != v0 || &v15[v2] <= v14)
    {
      memmove(v14, v15, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v14, v15, v2);
  }
}

void sub_18F1683CC()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFFE8, &unk_18F53FDA0);
  OUTLINED_FUNCTION_35_1();
  sub_18F5208EC();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6968848], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F1684A4()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACCFDC8, &unk_18F53FB80);
  OUTLINED_FUNCTION_35_1();
  sub_18F520F2C();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6969970], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F1685E0()
{
  OUTLINED_FUNCTION_52_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_26();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v5 = v2;
  }

  v8 = *(v0 + 16);
  v9 = sub_18F169CA8(v8, v5, v3);
  v10 = OUTLINED_FUNCTION_53();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    sub_18F169F64(v0 + v11, v8, v9 + v11);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F1689DC()
{
  OUTLINED_FUNCTION_40_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_49_2();
  if (v3)
  {
    OUTLINED_FUNCTION_76_0(v7, v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_11_6();
    v12[2] = v2;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_95_1();
  if (v1)
  {
    if (v12 != v0 || &v15[16 * v2] <= v14)
    {
      memmove(v14, v15, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
  }
}

void sub_18F168A98()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFF58);
    v7 = OUTLINED_FUNCTION_62();
    OUTLINED_FUNCTION_15_5(v7);
    OUTLINED_FUNCTION_19_1(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F168B64()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0110);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_15_5(v7);
    OUTLINED_FUNCTION_19_1(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F168C80()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0048);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 72 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F168D74()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00F0);
    v7 = OUTLINED_FUNCTION_55_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_6();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F168E40()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0040, &unk_18F53FE00);
  OUTLINED_FUNCTION_35_1();
  sub_18F520B3C();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(MEMORY[0x1E6968E10], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F168F18()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD58);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_18F168FE8()
{
  OUTLINED_FUNCTION_29_7();
  if (v6)
  {
    OUTLINED_FUNCTION_6_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0068);
    v4 = 40;
    v9 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    if (v3 != v0 || v5 + 40 * v2 <= v4)
    {
      OUTLINED_FUNCTION_94();
      v11 = OUTLINED_FUNCTION_43_1();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0070);
    OUTLINED_FUNCTION_43_1();
    swift_arrayInitWithCopy();
  }
}

void sub_18F1690F4()
{
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_52_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_26();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = v0[2];
  if (v7 <= v10)
  {
    v11 = v0[2];
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_76_0(v2, v3, v4, v5, v6);
    v12 = OUTLINED_FUNCTION_62();
    _swift_stdlib_malloc_size(v12);
    OUTLINED_FUNCTION_21_4();
    v12[2] = v10;
    v12[3] = v13;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v12 != v0 || &v0[v10 + 4] <= v12 + 4)
    {
      v15 = OUTLINED_FUNCTION_78();
      memmove(v15, v16, v17);
    }

    v0[2] = 0;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_53();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18);
    OUTLINED_FUNCTION_78();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_101_0();
}

void sub_18F1691D4()
{
  OUTLINED_FUNCTION_29_7();
  if (v6)
  {
    OUTLINED_FUNCTION_6_6();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_26();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD60);
    v9 = OUTLINED_FUNCTION_55_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_11_6();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_43_1();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD68);
    OUTLINED_FUNCTION_43_1();
    swift_arrayInitWithCopy();
  }
}

void sub_18F1692C0()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00C8);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F169390()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00C0);
    v7 = OUTLINED_FUNCTION_55_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_6();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F16945C()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00B8);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 24 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F16952C()
{
  OUTLINED_FUNCTION_29_7();
  if (v3)
  {
    OUTLINED_FUNCTION_6_6();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_26();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFFC0);
    v6 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v6);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v9)
    {
      v10 = v8 > v7;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      OUTLINED_FUNCTION_94();
      memmove(v11, v12, v13);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F169614()
{
  OUTLINED_FUNCTION_40_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_49_2();
  if (v3)
  {
    OUTLINED_FUNCTION_76_0(v7, v8, v9, v10, v11);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v2;
    v12[3] = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_95_1();
  if (v1)
  {
    if (v12 != v0 || &v15[40 * v2] <= v14)
    {
      memmove(v14, v15, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    OUTLINED_FUNCTION_103_0();
  }
}

void sub_18F1696EC()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD00B0, &unk_18F53FE70);
  OUTLINED_FUNCTION_35_1();
  type metadata accessor for _ViewAnnotationIdentifier();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for _ViewAnnotationIdentifier, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F1697E0()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0088);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    OUTLINED_FUNCTION_54_1();
    if (v11)
    {
      v12 = v10 > v8;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      memmove(v8, v9, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F1698B0()
{
  OUTLINED_FUNCTION_14_11();
  if (v4)
  {
    OUTLINED_FUNCTION_13_10();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_36_3();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_11();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_61_1(v2, v5, &qword_1EACD0078, &unk_18F53FE38);
  v8 = OUTLINED_FUNCTION_35_1();
  type metadata accessor for ViewAnnotation(v8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_32_1();
  if (v1)
  {
    OUTLINED_FUNCTION_27_8(type metadata accessor for ViewAnnotation, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_18_1();
  }
}

void sub_18F169988()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0028);
    v7 = OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_3_5(v7);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v3 != v0 || &v9[152 * v2] <= v8)
    {
      memmove(v8, v9, 152 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F169A90()
{
  OUTLINED_FUNCTION_40_1();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v8 != v9)
    {
      OUTLINED_FUNCTION_26();
      if (v8)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = *(v0 + 16);
  if (v7 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_76_0(v2, v3, v4, v5, v6);
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_15_5(v12);
    *(v11 + 16) = v10;
    *(v11 + 24) = 2 * (v13 / 56);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v11 != v0 || &v15[56 * v10] <= v14)
    {
      memmove(v14, v15, 56 * v10);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_18F169B6C()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0018);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_15_5(v7);
    OUTLINED_FUNCTION_19_1(v8);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_18F169C40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  v4 = OUTLINED_FUNCTION_62();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_11_6();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_18F169CA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = OUTLINED_FUNCTION_53();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_51(v6);
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v8)
  {
    if (result - v10 != 0x8000000000000000 || v8 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v8);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_18F169D9C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  v4 = OUTLINED_FUNCTION_62();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_18F169E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD00E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

char *sub_18F169E98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F169ED0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F169EF8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[184 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_6(result, a3, 184 * a2);
  }

  return result;
}

char *sub_18F169F18(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F169F40(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[160 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

void sub_18F169F64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_79();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_67_0(), __swift_instantiateConcreteTypeFromMangledNameV2(v8), OUTLINED_FUNCTION_10_0(), v4 + *(v9 + 72) * v3 <= a3))
  {
    v10 = OUTLINED_FUNCTION_67_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    OUTLINED_FUNCTION_30_3();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_30_3();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_18F16A02C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A04C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[96 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A074(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A094(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A0BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A0DC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F16A134(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_6(result, a3, 152 * a2);
  }

  return result;
}

char *sub_18F16A154(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[168 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_6(result, a3, 168 * a2);
  }

  return result;
}

char *sub_18F16A174(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

uint64_t type metadata accessor for _RepresentedEntityElement()
{
  result = qword_1EACCDE98;
  if (!qword_1EACCDE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18F16A214()
{
  result = type metadata accessor for ViewAnnotation(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of RepresentedEntityProviderBridgeWrapper.provider(for:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v12 = (*(*v4 + 168) + **(*v4 + 168));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_18F16A5C0;

  return v12(a1, a2, a3, a4 & 1);
}

uint64_t sub_18F16A5C0()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_80_0();

  return v4(v3);
}

char *sub_18F16A6BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0120);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_18F16A7B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_18F5226AC();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void *sub_18F16A808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10)
{
  result = sub_18F165320(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    *a10 = v10;
  }

  else
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_18F16A844(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7)
{
  result = sub_18F166160(a1, a2, a3, a4, *a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void *sub_18F16A878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10)
{
  result = sub_18F1656B0(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    *a10 = v10;
  }

  else
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_18F16A8B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7)
{
  result = sub_18F166484(a1, a2, a3, a4, *a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void *sub_18F16A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10)
{
  result = sub_18F165A40(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    *a10 = v10;
  }

  else
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_18F16A924(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7)
{
  result = sub_18F1667A8(a1, a2, a3, a4, *a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

void *sub_18F16A958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, void *a10)
{
  result = sub_18F165DD0(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    *a10 = v10;
  }

  else
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_18F16A994(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, void *a7)
{
  result = sub_18F166ACC(a1, a2, a3, a4, *a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

unint64_t sub_18F16A9C8()
{
  result = qword_1EACCF3A0;
  if (!qword_1EACCF3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF3A0);
  }

  return result;
}

uint64_t sub_18F16AAE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_18F16AB38(uint64_t a1)
{
  v3 = v2;
  v5 = sub_18F52141C();
  OUTLINED_FUNCTION_51(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = sub_18F5213AC();
  OUTLINED_FUNCTION_51(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v1 + v14);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v21 = *(v1 + v15);
  v22 = swift_task_alloc();
  *(v3 + 16) = v22;
  *v22 = v3;
  v22[1] = sub_18F0FC874;

  return sub_18F160FBC(a1, v1 + v7, v1 + v12, v17, v18, v19, v20, v21);
}

unint64_t sub_18F16ACD0()
{
  result = qword_1EACCDDB8;
  if (!qword_1EACCDDB8)
  {
    sub_18F5213DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCDDB8);
  }

  return result;
}

uint64_t sub_18F16AD7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewAnnotation(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F16ADE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F16AECC()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1ED6FE198);
  __swift_project_value_buffer(v0, qword_1ED6FE198);
  return sub_18F520ACC();
}

uint64_t sub_18F16AF24()
{
  if (qword_1ED6FE190 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_18F520B3C();

  return __swift_project_value_buffer(v0, qword_1ED6FE198);
}

uint64_t static _CopyIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FE190 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1ED6FE198);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static _CopyIntent.title.setter(uint64_t a1)
{
  if (qword_1ED6FE190 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1ED6FE198);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static _CopyIntent.title.modify())()
{
  if (qword_1ED6FE190 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v0 = sub_18F520B3C();
  __swift_project_value_buffer(v0, qword_1ED6FE198);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F16B190@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F16AF24();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18F16B20C(uint64_t a1)
{
  v2 = sub_18F16AF24();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_18F16B2B0()
{
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED7077A8);
  v2 = sub_18F52163C();
  v3 = sub_18F52221C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Unable to locate UI framework LinkBridge Copy", v4, 2u);
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  sub_18F133EDC();
  swift_allocError();
  *v5 = 3;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 7;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_18F16B40C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F10DF80;

  return _CopyIntent.perform()();
}

unint64_t sub_18F16B498(uint64_t a1)
{
  result = sub_18F16B4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F16B4C0()
{
  result = qword_1ED6FED18;
  if (!qword_1ED6FED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED18);
  }

  return result;
}

unint64_t sub_18F16B514(uint64_t a1)
{
  result = sub_18F16B53C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F16B53C()
{
  result = qword_1ED6FED10;
  if (!qword_1ED6FED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED10);
  }

  return result;
}

unint64_t sub_18F16B594()
{
  result = qword_1ED6FE2A8;
  if (!qword_1ED6FE2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE2A8);
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

_BYTE *storeEnumTagSinglePayload for _CopyIntent(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t _s10AppIntents17IntentToggleStateO9hashValueSivg_0(char a1)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a1 & 1);
  return sub_18F522F4C();
}

uint64_t sub_18F16B7A0()
{
  v1 = *v0;
  sub_18F522EFC();
  sub_18F15BA78(v3, v1);
  return sub_18F522F4C();
}

uint64_t sub_18F16B7F4(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD01F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  if (a2)
  {
    v16 = a2;
    v10 = a2;
    return sub_18F521E3C();
  }

  else
  {
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC10AppIntents28SystemIntentExecutorDelegate_continuation, v6);
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      sub_18F16BEB4();
      v12 = swift_allocError();
      *v13 = 0;
    }

    v16 = v12;
    v14 = a3;
    sub_18F521E2C();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_18F16B9EC()
{
  sub_18F16BEB4();
  swift_allocError();
  *v0 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD01F0);
  return sub_18F521E2C();
}

id sub_18F16BAA4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SystemIntentExecutorDelegate()
{
  result = qword_1EACD01C8;
  if (!qword_1EACD01C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F16BBA8()
{
  sub_18F16BC38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18F16BC38()
{
  if (!qword_1EACD01D8)
  {
    sub_18F16BCB4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
    v0 = sub_18F521E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACD01D8);
    }
  }
}

unint64_t sub_18F16BCB4()
{
  result = qword_1ED6FC240;
  if (!qword_1ED6FC240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FC240);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemIntentExecutorDelegate.ExecutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SystemIntentExecutorDelegate.ExecutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F16BE60()
{
  result = qword_1EACD01E0;
  if (!qword_1EACD01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD01E0);
  }

  return result;
}

unint64_t sub_18F16BEB4()
{
  result = qword_1EACD01E8;
  if (!qword_1EACD01E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD01E8);
  }

  return result;
}

uint64_t sub_18F16BF18()
{
  v0 = sub_18F52165C();
  __swift_allocate_value_buffer(v0, qword_1EACD0200);
  v1 = __swift_project_value_buffer(v0, qword_1EACD0200);
  if (qword_1ED6FEFE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED7077A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_18F16BFE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v53 = 95;
  v52[2] = &v53;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v6 = sub_18F341E48(0x7FFFFFFFFFFFFFFFLL, 0, sub_18F16C86C, v52, a1, a2);
  v7 = v6;
  if (*(v6 + 16) < 2uLL)
  {

    if (qword_1EACCF498 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_18F52165C();
    __swift_project_value_buffer(v8, qword_1EACD0200);
    v9 = sub_18F52163C();
    v10 = sub_18F52221C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_18F0E9000, v9, v10, "Malformed App Shortcut identifier.", v7, 2u);
    goto LABEL_17;
  }

  v11 = sub_18F1EB4E8(v6);
  v13 = v12;
  v15 = v14;

  if (!v15)
  {
    sub_18F16C88C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    v23 = 2;
LABEL_32:
    *(v22 + 16) = v23;
    goto LABEL_33;
  }

  v54 = a3;
  if ((v11 ^ v13) < 0x4000)
  {
    goto LABEL_13;
  }

  v16 = OUTLINED_FUNCTION_1_8();
  v20 = sub_18F289818(v16, v17, v18, v19, 10);
  if ((v21 & 0x100) == 0)
  {
    if ((v21 & 1) == 0)
    {
      v7 = v20;
      goto LABEL_19;
    }

LABEL_13:
    if (qword_1EACCF498 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v30 = sub_18F52165C();
    __swift_project_value_buffer(v30, qword_1EACD0200);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v9 = sub_18F52163C();
    v31 = sub_18F52221C();

    if (!os_log_type_enabled(v9, v31))
    {

      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v53 = v54;
    *v7 = 136315138;
    v32 = OUTLINED_FUNCTION_1_8();
    v33 = MEMORY[0x193ADAF70](v32);
    v35 = v34;

    v36 = sub_18F11897C(v33, v35, &v53);

    *(v7 + 4) = v36;
    _os_log_impl(&dword_18F0E9000, v9, v31, "Could not parse %s into an integer.", v7, 0xCu);
    v37 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x193ADD350](v37, -1, -1);
LABEL_17:
    MEMORY[0x193ADD350](v7, -1, -1);
LABEL_18:

    sub_18F16C88C();
    swift_allocError();
    *v38 = a1;
    *(v38 + 8) = a2;
    *(v38 + 16) = 0;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
LABEL_33:
    swift_willThrow();
    return v7;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v24 = OUTLINED_FUNCTION_1_8();
  v7 = sub_18F1DCB60(v24, v25, v26, v27, 10);
  v29 = v28;

  if (v29)
  {
    goto LABEL_13;
  }

LABEL_19:

  v39 = v54;
  if (v7 < 0)
  {
    if (qword_1EACCF498 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v49 = sub_18F52165C();
    __swift_project_value_buffer(v49, qword_1EACD0200);
    v41 = sub_18F52163C();
    v50 = sub_18F52221C();
    if (!os_log_type_enabled(v41, v50))
    {
      goto LABEL_31;
    }

    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v7;
    v44 = "Identifier rank %ld should have been >= 0.";
    v45 = v50;
    v46 = v41;
    v47 = v43;
    v48 = 12;
    goto LABEL_30;
  }

  if (v7 >= v54)
  {
    if (qword_1EACCF498 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v40 = sub_18F52165C();
    __swift_project_value_buffer(v40, qword_1EACD0200);
    v41 = sub_18F52163C();
    v42 = sub_18F52221C();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_31;
    }

    v43 = swift_slowAlloc();
    *v43 = 134218240;
    *(v43 + 4) = v7;
    *(v43 + 12) = 2048;
    *(v43 + 14) = v39;
    v44 = "Identifier rank %ld should have been less than %ld.";
    v45 = v42;
    v46 = v41;
    v47 = v43;
    v48 = 22;
LABEL_30:
    _os_log_impl(&dword_18F0E9000, v46, v45, v44, v47, v48);
    MEMORY[0x193ADD350](v43, -1, -1);
LABEL_31:

    sub_18F16C88C();
    swift_allocError();
    *v22 = v7;
    *(v22 + 8) = v39;
    v23 = 1;
    goto LABEL_32;
  }

  return v7;
}

uint64_t sub_18F16C4E4(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    sub_18F52279C();

    v10 = 0xD000000000000022;
    v7 = a1;
    v8 = a2;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v10 = 0;
    sub_18F52279C();
    MEMORY[0x193ADB000](0xD00000000000002DLL, 0x800000018F525BA0);
    v5 = sub_18F522C9C();
    MEMORY[0x193ADB000](v5);

    MEMORY[0x193ADB000](0x6E615278616D202CLL, 0xEB00000000203A6BLL);
    v6 = sub_18F522C9C();
    MEMORY[0x193ADB000](v6);

    v7 = 41;
    v8 = 0xE100000000000000;
LABEL_5:
    MEMORY[0x193ADB000](v7, v8);
    return v10;
  }

  return 0x6C616E7265746E49;
}

uint64_t sub_18F16C68C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = MEMORY[0x1E69E6158];
  v7 = sub_18F5216CC();
  v8 = sub_18F16C4E4(a1, a2, a3);
  v10 = v9;
  sub_18F5218DC();
  v14 = v6;
  *&v13 = v8;
  *(&v13 + 1) = v10;
  sub_18F118710(&v13, &v12);
  swift_isUniquelyReferenced_nonNull_native();
  sub_18F2BF860();

  return v7;
}

uint64_t sub_18F16C7F4(uint64_t a1)
{
  v2 = sub_18F16C9BC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F16C830(uint64_t a1)
{
  v2 = sub_18F16C9BC();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F16C88C()
{
  result = qword_1EACD0218;
  if (!qword_1EACD0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0218);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A33ShortcutIdentifierExtractionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18F16C910(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F16C950(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_18F16C994(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_18F16C9BC()
{
  result = qword_1EACD0220;
  if (!qword_1EACD0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0220);
  }

  return result;
}

uint64_t AppEntityUIElementsContext.init(bounds:requests:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 48) = a5;
  *(a2 + 56) = a6;
  *(a2 + 64) = result;
  return result;
}

BOOL static AppEntityUIElementsContext.ElementsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  return CGRectEqualToRect(*a1, *a2);
}

uint64_t AppEntityUIElementsContext.ElementsRequest.hash(into:)()
{
  if (*(v0 + 32))
  {
    return MEMORY[0x193ADC4F0](1);
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *v0;
  v4 = *(v0 + 8);
  MEMORY[0x193ADC4F0](0);

  return sub_18F16CC14(v5, v4, v3, v2);
}

uint64_t AppEntityUIElementsContext.ElementsRequest.hashValue.getter()
{
  OUTLINED_FUNCTION_1_9();
  sub_18F522EFC();
  if (v0)
  {
    MEMORY[0x193ADC4F0](1);
  }

  else
  {
    MEMORY[0x193ADC4F0](0);
    OUTLINED_FUNCTION_0_6();
  }

  return sub_18F522F4C();
}

uint64_t sub_18F16CB9C()
{
  OUTLINED_FUNCTION_1_9();
  sub_18F522EFC();
  if (v0)
  {
    MEMORY[0x193ADC4F0](1);
  }

  else
  {
    MEMORY[0x193ADC4F0](0);
    OUTLINED_FUNCTION_0_6();
  }

  return sub_18F522F4C();
}

uint64_t sub_18F16CC14(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x193ADC520](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x193ADC520](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x193ADC520](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x193ADC520](*&v9);
}

unint64_t sub_18F16CC9C()
{
  result = qword_1EACCE6E0;
  if (!qword_1EACCE6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE6E0);
  }

  return result;
}

uint64_t sub_18F16CCF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F16CD38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AppEntityUIElementsContext.ElementsRequest(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppEntityUIElementsContext.ElementsRequest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppEntityUIElementsContext.ElementsRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_18F16CE34(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F16CE50(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 32) = v2;
  return result;
}

uint64_t AppContext.updateProperties(_:withQuery:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 352) = a1;
  *(v2 + 360) = a2;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F16CEB0()
{
  OUTLINED_FUNCTION_37_2();
  *(v0 + 336) = *(v0 + 352);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0228);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  *(v0 + 368) = *(v0 + 344);
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || (v2 = v1, v3 = sub_18F170578(v1), !v4))
  {
    swift_unknownObjectRelease();

LABEL_12:
    sub_18F17043C();
    v17 = OUTLINED_FUNCTION_28();
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_19_2(v17, v18);
    goto LABEL_13;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_18F5227BC();
  if (!v7 || (v8 = dynamic_cast_existential_1_conditional(v7), *(v0 + 376) = v8, *(v0 + 384) = v9, !v8))
  {
    OUTLINED_FUNCTION_43_4();
    sub_18F52279C();

    MEMORY[0x193ADB000](0xD000000000000019, 0x800000018F525C30);
    sub_18F17043C();
    OUTLINED_FUNCTION_28();
    *v21 = v5;
    *(v21 + 8) = v6;
LABEL_17:
    *(v21 + 16) = 1;
LABEL_18:
    swift_willThrow();
LABEL_19:
    swift_unknownObjectRelease();
LABEL_13:
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_18_3();

    __asm { BRAA            X1, X16 }
  }

  v10 = v8;
  v11 = v9;

  switch([v2 requestType])
  {
    case 0uLL:
      v12 = sub_18F1705DC(v2);
      *(v0 + 616) = v12;
      if (v12)
      {
        OUTLINED_FUNCTION_38_1();
        *(v0 + 624) = swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_11_0();
        *(v0 + 632) = v13;
        *(v0 + 640) = OUTLINED_FUNCTION_34_0();
        (*(v11 + 32))(v10, v11);
        v14 = swift_task_alloc();
        *(v0 + 648) = v14;
        swift_getAssociatedConformanceWitness();
        *v14 = v0;
        v14[1] = sub_18F16E6FC;
        OUTLINED_FUNCTION_18_3();

        return sub_18F16EBFC();
      }

      if (qword_1ED6FEF38 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v37 = sub_18F52165C();
      __swift_project_value_buffer(v37, qword_1ED707778);
      v38 = sub_18F52163C();
      v39 = sub_18F52221C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        OUTLINED_FUNCTION_42(&dword_18F0E9000, v41, v42, "identifiersToMatch is required for query resolution by identifiers");
        MEMORY[0x193ADD350](v40, -1, -1);
      }

      sub_18F17043C();
      v33 = OUTLINED_FUNCTION_28();
      *v34 = 0;
      v34[1] = 0;
LABEL_39:
      OUTLINED_FUNCTION_19_2(v33, v34);
      goto LABEL_19;
    case 1uLL:

      if (qword_1ED6FEF38 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v27 = sub_18F52165C();
      __swift_project_value_buffer(v27, qword_1ED707778);
      v28 = sub_18F52163C();
      v29 = sub_18F52221C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        OUTLINED_FUNCTION_42(&dword_18F0E9000, v31, v32, "String query not supported");
        MEMORY[0x193ADD350](v30, -1, -1);
      }

      sub_18F17043C();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_26_3();
      *v34 = v35 + 11;
      v34[1] = 0x800000018F525C80;
      goto LABEL_39;
    case 2uLL:
      OUTLINED_FUNCTION_43_4();
      sub_18F17043C();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_26_3();
      *v21 = v22 + 13;
      *(v21 + 8) = 0x800000018F525C50;
      goto LABEL_17;
    case 3uLL:
      v23 = *(v11 + 8);
      swift_getAssociatedTypeWitness();
      swift_task_alloc();
      v24 = *(v23 + 56);
      v24(v10, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0238);
      if (!swift_dynamicCast())
      {
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        sub_18F0EF148(v0 + 56, &qword_1EACD0240);

        swift_task_alloc();
        v24(v10, v23);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0248);
        if (swift_dynamicCast())
        {
          sub_18F0FD0B4((v0 + 136), v0 + 96);

          __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
          v25 = swift_task_alloc();
          *(v0 + 504) = v25;
          *v25 = v0;
          v26 = sub_18F16DECC;
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_43_4();
        *(v0 + 168) = 0;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        sub_18F0EF148(v0 + 136, &qword_1EACD0250);

        sub_18F17043C();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_26_3();
        *v44 = v43 + 23;
        *(v44 + 8) = 0x800000018F525CB0;
        *(v44 + 16) = 0;
        goto LABEL_18;
      }

      sub_18F0FD0B4((v0 + 56), v0 + 16);

      __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
      v25 = swift_task_alloc();
      *(v0 + 392) = v25;
      *v25 = v0;
      v26 = sub_18F16D6A0;
LABEL_31:
      v25[1] = v26;
      OUTLINED_FUNCTION_18_3();

      return sub_18F139E28();
    default:
      OUTLINED_FUNCTION_43_4();
      sub_18F17043C();
      OUTLINED_FUNCTION_28();
      *v21 = 0;
      *(v21 + 8) = 0;
      goto LABEL_17;
  }
}

uint64_t sub_18F16D6A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 400) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16D7A0()
{
  OUTLINED_FUNCTION_29();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_20_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[51] = AssociatedTypeWitness;
  v0[35] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[52] = AssociatedConformanceWitness;
  v0[36] = AssociatedConformanceWitness;
  v0[53] = __swift_allocate_boxed_opaque_existential_1(v0 + 32);
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_24_5(v3);

  return v5(v4);
}

uint64_t sub_18F16D910()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16DA10()
{
  v28 = v0;
  v2 = v0[53];
  v3 = AppEntity.fullyQualifiedIdentifier.getter(v0[51], *(v0[52] + 8), v27);
  OUTLINED_FUNCTION_36_4(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27[0], v27[1]);
  if (dynamic_cast_existential_1_conditional(v2))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v11 = v0[55];

    v12 = static AppValue._identifier.getter(v2, v1);
    v13 = OUTLINED_FUNCTION_39_4(v12);
    if (v11)
    {
    }

    else
    {
      v14 = v13;

      v15 = v14;
      sub_18F1AF344();
    }
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  OUTLINED_FUNCTION_15_6();
  v18 = v17;
  v0[56] = v17;
  OUTLINED_FUNCTION_38_1();
  v0[57] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v0[58] = v19;
  v0[59] = OUTLINED_FUNCTION_34_0();
  v20 = OUTLINED_FUNCTION_23_7();
  v21(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  inited = swift_initStackObject();
  v0[60] = inited;
  *(inited + 16) = xmmword_18F53F7E0;
  *(inited + 32) = v18;
  v23 = v18;
  v24 = swift_task_alloc();
  v0[61] = v24;
  OUTLINED_FUNCTION_40_2();
  *v24 = v0;
  OUTLINED_FUNCTION_22_6();

  return sub_18F16EBFC();
}

uint64_t sub_18F16DC7C()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 496) = v0;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_8_6();
    v5(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_8_6();
    v7(v6);
  }

  swift_setDeallocating();
  sub_18F170490();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F16DE4C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 448);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F16DECC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16DFCC()
{
  OUTLINED_FUNCTION_29();
  __swift_project_boxed_opaque_existential_1Tm(v0 + 12, v0[15]);
  OUTLINED_FUNCTION_20_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[65] = AssociatedTypeWitness;
  v0[25] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[66] = AssociatedConformanceWitness;
  v0[26] = AssociatedConformanceWitness;
  v0[67] = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  v3 = swift_task_alloc();
  v0[68] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_24_5(v3);

  return v5(v4);
}

uint64_t sub_18F16E13C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16E23C()
{
  v28 = v0;
  v2 = v0[67];
  v3 = AppEntity.fullyQualifiedIdentifier.getter(v0[65], *(v0[66] + 8), v27);
  OUTLINED_FUNCTION_36_4(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27[0], v27[1]);
  if (dynamic_cast_existential_1_conditional(v2))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    v11 = v0[69];

    v12 = static AppValue._identifier.getter(v2, v1);
    v13 = OUTLINED_FUNCTION_39_4(v12);
    if (v11)
    {
    }

    else
    {
      v14 = v13;

      v15 = v14;
      sub_18F1AF344();
    }
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  OUTLINED_FUNCTION_15_6();
  v18 = v17;
  v0[70] = v17;
  OUTLINED_FUNCTION_38_1();
  v0[71] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v0[72] = v19;
  v0[73] = OUTLINED_FUNCTION_34_0();
  v20 = OUTLINED_FUNCTION_23_7();
  v21(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0050);
  inited = swift_initStackObject();
  v0[74] = inited;
  *(inited + 16) = xmmword_18F53F7E0;
  *(inited + 32) = v18;
  v23 = v18;
  v24 = swift_task_alloc();
  v0[75] = v24;
  OUTLINED_FUNCTION_40_2();
  *v24 = v0;
  OUTLINED_FUNCTION_22_6();

  return sub_18F16EBFC();
}

uint64_t sub_18F16E4AC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 608) = v0;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_8_6();
    v5(v4);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_8_6();
    v7(v6);
  }

  swift_setDeallocating();
  sub_18F170490();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F16E67C()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 560);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F16E6FC()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 656) = v0;

  (*(v2[79] + 8))(v2[80], v2[78]);

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F16E88C()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16E8F4()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F16E958()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F16E9C4()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 560);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F16EA44()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F16EAA8()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F16EB14()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 448);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F16EB94()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16EBFC()
{
  OUTLINED_FUNCTION_21();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v1[13] = swift_getAssociatedTypeWitness();
  v6 = sub_18F52254C();
  v1[14] = v6;
  OUTLINED_FUNCTION_51(v6);
  v1[15] = v7;
  v1[16] = OUTLINED_FUNCTION_34_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1[17] = AssociatedConformanceWitness;
  v1[18] = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[19] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_11_0();
  v1[22] = v11;
  v1[23] = OUTLINED_FUNCTION_34_0();
  v12 = swift_getAssociatedTypeWitness();
  v1[24] = v12;
  OUTLINED_FUNCTION_51(v12);
  v1[25] = v13;
  v1[26] = *(v14 + 64);
  v1[27] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_18F16EE24()
{
  OUTLINED_FUNCTION_37_2();
  v13 = v0;
  v1 = v0[8];
  v11 = MEMORY[0x1E69E7CC0];
  v2 = sub_18F111F70(v1);
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x193ADBE10](i, v0[8]);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v1 + 32 + 8 * i);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v12 = v4;
    if (sub_18F1701F4(&v12))
    {
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
    }

    else
    {
    }
  }

  v6 = v0[10];
  v7 = v0[11];
  v0[4] = v11;
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0258);
  sub_18F170768();
  v0[28] = sub_18F521B3C();

  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_18F16F054;
  OUTLINED_FUNCTION_18_3();

  sub_18F139E28();
}

uint64_t sub_18F16F054()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 240) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F16F154()
{
  OUTLINED_FUNCTION_37_2();
  v48 = v0;
  v2 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F1AA82C(v2, v47);
  *(v0 + 248) = *v47;
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v3 = *(v0 + 104);
  v4 = *(*(v0 + 144) + 8);
  *(v0 + 264) = v4;

  static AppValue._identifier.getter(v3, v4);
  v5 = sub_18F3E6A5C();

  if (v5)
  {
    sub_18F0F689C(v5);
    *(v0 + 16) = *(v0 + 248);
    OUTLINED_FUNCTION_10_4();
    v46 = v6 + *v6;
    v7 = swift_task_alloc();
    *(v0 + 304) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_4_2(v7, v8, v9, v10, v11, v12, v13, v14, v45, v46);
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X0, X16 }
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  *(v0 + 40) = sub_18F521CBC();
  v17 = sub_18F521D7C();
  v18 = *(v0 + 40);
  if (v18 == v17)
  {
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_41_0();

    v19 = OUTLINED_FUNCTION_17_3();
    MEMORY[0x193ADB000](v19);

    v20 = *v47;
    sub_18F17043C();
    v21 = OUTLINED_FUNCTION_28();
    *v22 = v20;
    OUTLINED_FUNCTION_19_2(v21, v22);

    OUTLINED_FUNCTION_7_7();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X1, X16 }
  }

  v25 = sub_18F521D4C();
  sub_18F521CEC();
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_12_4();
    v29(v26, v27 + v28 * v18);
    goto LABEL_13;
  }

  v39 = *(v0 + 208);
  result = sub_18F52281C();
  if (v39 == 8)
  {
    v41 = result;
    v42 = *(v0 + 216);
    v43 = *(v0 + 192);
    v44 = *(v0 + 200);
    *(v0 + 48) = v41;
    (*(v44 + 16))(v42, v0 + 48, v43);
    swift_unknownObjectRelease();
LABEL_13:
    OUTLINED_FUNCTION_32_7();
    sub_18F521DAC();
    v30 = OUTLINED_FUNCTION_33_4();
    v31(v30);
    sub_18F18C388(v25, v25);
    OUTLINED_FUNCTION_16_2();
    v32 = sub_18F521CDC();
    v34 = OUTLINED_FUNCTION_30_4(v32, v33);
    v35(v34);
    *(v0 + 272) = sub_18F129FD4(v1);
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_10_4();
    v36 = swift_task_alloc();
    *(v0 + 280) = v36;
    *v36 = v0;
    OUTLINED_FUNCTION_5_11(v36);
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F16F590()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v2[36] = v6;
  v2[37] = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);

  if (v0)
  {
    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16F700()
{
  OUTLINED_FUNCTION_37_2();
  *(v0 + 56) = *(v0 + 288);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  OUTLINED_FUNCTION_38_1();
  sub_18F521DBC();
  swift_getWitnessTable();
  sub_18F52211C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
  {
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 104);

    (*(v12 + 32))(v11, v14, v15);

    AppManager.cache<A>(entity:)(v11, v15, v13);

    (*(v12 + 8))(v11, v15);
    *(v0 + 16) = *(v0 + 248);
    OUTLINED_FUNCTION_10_4();
    v49 = v16 + *v16;
    v17 = swift_task_alloc();
    *(v0 + 304) = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_4_2(v17, v18, v19, v20, v21, v22, v23, v24, v48, v49);
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X0, X16 }
  }

  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

  v4 = sub_18F521D7C();
  v5 = *(v0 + 40);
  if (v5 == v4)
  {
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_41_0();

    v6 = OUTLINED_FUNCTION_17_3();
    MEMORY[0x193ADB000](v6);

    sub_18F17043C();
    v7 = OUTLINED_FUNCTION_28();
    *v8 = v50;
    v8[1] = v51;
    OUTLINED_FUNCTION_19_2(v7, v8);

    OUTLINED_FUNCTION_7_7();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X1, X16 }
  }

  v27 = *(v0 + 192);
  v28 = sub_18F521D4C();
  sub_18F521CEC();
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_12_4();
    v32(v29, v30 + v31 * v5);
    goto LABEL_11;
  }

  v42 = *(v0 + 208);
  result = sub_18F52281C();
  if (v42 == 8)
  {
    v44 = result;
    v45 = *(v0 + 216);
    v46 = *(v0 + 192);
    v47 = *(v0 + 200);
    *(v0 + 48) = v44;
    (*(v47 + 16))(v45, v0 + 48, v46);
    swift_unknownObjectRelease();
LABEL_11:
    OUTLINED_FUNCTION_32_7();
    sub_18F521DAC();
    v33 = OUTLINED_FUNCTION_33_4();
    v34(v33);
    sub_18F18C388(v27, v27);
    OUTLINED_FUNCTION_16_2();
    v35 = sub_18F521CDC();
    v37 = OUTLINED_FUNCTION_30_4(v35, v36);
    v38(v37);
    *(v0 + 272) = sub_18F129FD4(v1);
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_10_4();
    v39 = swift_task_alloc();
    *(v0 + 280) = v39;
    *v39 = v0;
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_31_12();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F16FB88()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F16FC90()
{

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16FD38()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16FDB8()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16FE40()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F16FF68(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_18F17003C;

  return AppContext.updateProperties(_:withQuery:)(a1, a2);
}

uint64_t sub_18F17003C()
{
  OUTLINED_FUNCTION_29();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *(v3 + 32);
  v7 = *v1;
  *v5 = *v1;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v8 = *(v3 + 40);
  if (v2)
  {
    v9 = sub_18F520A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_18F1701F4(id *a1)
{
  v1 = [*a1 typeIdentifier];
  v2 = sub_18F5218DC();
  v4 = v3;

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (v2 == static AppValue._identifier.getter(AssociatedTypeWitness, *(*(AssociatedConformanceWitness + 8) + 8)) && v4 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_18F522D5C();
  }

  return v9 & 1;
}

uint64_t sub_18F170304(void **a1)
{
  v1 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = [v1 instanceIdentifier];
  v4 = sub_18F5218DC();
  v6 = v5;

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v4, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

unint64_t sub_18F17043C()
{
  result = qword_1EACD0230;
  if (!qword_1EACD0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0230);
  }

  return result;
}

uint64_t sub_18F170490()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18F1704EC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_27_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F17053C()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_27_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18F170578(void *a1)
{
  v1 = [a1 entityMangledTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F1705DC(void *a1)
{
  v1 = [a1 identifiersToMatch];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18F1707CC();
  v3 = sub_18F521CAC();

  return v3;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193ADD350);
  }

  return result;
}

uint64_t sub_18F17068C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F0FC874;

  return sub_18F16FF68(v2, v3, v5, v4);
}

unint64_t sub_18F170768()
{
  result = qword_1EACD0260;
  if (!qword_1EACD0260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0260);
  }

  return result;
}

unint64_t sub_18F1707CC()
{
  result = qword_1EACCDD20;
  if (!qword_1EACCDD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACCDD20);
  }

  return result;
}

uint64_t AssistantSchema.EnumSchema.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AssistantSchema.init<A>(_:)@<X0>(void *a1@<X8>)
{
  result = swift_dynamicCast();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

{
  result = swift_dynamicCast();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

{
  result = swift_dynamicCast();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for IntentCalendarEvent()
{
  result = qword_1EACCE1D0;
  if (!qword_1EACCE1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentCalendarEvent.participants.getter()
{
  type metadata accessor for IntentCalendarEvent();

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

void *IntentCalendarEvent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntentCalendarEvent() + 32));
  v2 = v1;
  return v1;
}

uint64_t IntentCalendarEvent.calendarPunchoutURI.getter()
{
  type metadata accessor for IntentCalendarEvent();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return OUTLINED_FUNCTION_56();
}

uint64_t IntentCalendarEvent.init(eventIdentifier:title:dateTime:participants:location:isContactBirthday:calendarPunchoutURI:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v16 = type metadata accessor for IntentCalendarEvent();
  result = sub_18F170ABC(a5, a9 + v16[6]);
  *(a9 + v16[7]) = a6;
  *(a9 + v16[8]) = a7;
  *(a9 + v16[9]) = a8;
  v18 = (a9 + v16[10]);
  *v18 = a10;
  v18[1] = a11;
  return result;
}

uint64_t sub_18F170ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t IntentCalendarEvent.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  sub_18F52186C();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF5DC(v9, a1 + v21, &qword_1EACCF7A8);
  return sub_18F0FF5DC(v5, a1 + v25, &qword_1EACD0270);
}

id static IntentCalendarEvent.valueType.getter()
{
  v0 = [objc_opt_self() calendarEventValueType];

  return v0;
}

id IntentCalendarEvent.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for IntentCalendarEvent();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = sub_18F0F21A8(0, &qword_1EACD0278);
  sub_18F172B90(v1, v7, type metadata accessor for IntentCalendarEvent);
  result = sub_18F170EBC(v7);
  a1[3] = v8;
  *a1 = result;
  return result;
}

id sub_18F170EBC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntentEventParticipant();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_5();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v34 - v14;
  if (*(a1 + 8))
  {
    v16 = sub_18F5218AC();
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 24))
  {
    v37 = sub_18F5218AC();
  }

  else
  {
    v37 = 0;
  }

  sub_18F0F21A8(0, &qword_1EACD0328);
  v17 = type metadata accessor for IntentCalendarEvent();
  sub_18F0F9F88(a1 + v17[6], v15, &qword_1EACD0268);
  v36 = sub_18F37BD64(v15);
  v18 = *(a1 + v17[7]);
  if (v18)
  {
    v19 = v2;
    v20 = v5;
    v21 = *(v18 + 16);
    if (v21)
    {
      v34[0] = v16;
      v34[1] = v19;
      v35 = a1;
      v38 = MEMORY[0x1E69E7CC0];
      sub_18F5228CC();
      sub_18F0F21A8(0, &qword_1EACD0330);
      v22 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v23 = *(v20 + 72);
      do
      {
        sub_18F172B90(v22, v11, type metadata accessor for IntentEventParticipant);
        sub_18F172B90(v11, v8, type metadata accessor for IntentEventParticipant);
        sub_18F399B30(v8);
        OUTLINED_FUNCTION_2_13();
        sub_18F172C04(v11, v24);
        sub_18F52289C();
        sub_18F5228DC();
        sub_18F5228EC();
        sub_18F5228AC();
        v22 += v23;
        --v21;
      }

      while (v21);
      a1 = v35;
      v16 = v34[0];
    }

    sub_18F0F21A8(0, &qword_1EACD0330);
    v25 = sub_18F521C8C();
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + v17[8]);
  v27 = sub_18F521E0C();
  if (*(a1 + v17[10] + 8))
  {
    v28 = sub_18F5218AC();
  }

  else
  {
    v28 = 0;
  }

  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v31 = v36;
  v30 = v37;
  v32 = [v29 initWithEventIdentifier:v16 title:v37 dateTimeRange:v36 participants:v25 location:v26 isContactBirthday:v27 calendarPunchoutURI:v28];

  sub_18F172C04(a1, type metadata accessor for IntentCalendarEvent);
  return v32;
}

uint64_t sub_18F171254(uint64_t a1)
{
  result = sub_18F171344(&qword_1EACD0280);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F171298(uint64_t a1)
{
  result = sub_18F171344(&qword_1EACD0288);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1712E0()
{
  result = qword_1EACD0290;
  if (!qword_1EACD0290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0290);
  }

  return result;
}

uint64_t sub_18F171344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentCalendarEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F171394()
{
  result = qword_1EACD02A8;
  if (!qword_1EACD02A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD02A8);
  }

  return result;
}

uint64_t sub_18F1713E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D695465746164 && a2 == 0xE800000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x800000018F525D40 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F522D5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18F1715E8(unsigned __int8 a1)
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](a1);
  return sub_18F522F4C();
}

unint64_t sub_18F171630(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656D695465746164;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F171700()
{
  v1 = *v0;
  sub_18F522EFC();
  sub_18F15BAC8(v3, v1);
  return sub_18F522F4C();
}

uint64_t sub_18F17174C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1713E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F171794@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F1715E0();
  *a1 = result;
  return result;
}

uint64_t sub_18F1717BC(uint64_t a1)
{
  v2 = sub_18F172874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1717F8(uint64_t a1)
{
  v2 = sub_18F172874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F171834(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD02B8);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F172874();
  sub_18F522FEC();
  LOBYTE(v15) = 0;
  OUTLINED_FUNCTION_6_3();
  sub_18F522BFC();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    OUTLINED_FUNCTION_6_3();
    sub_18F522BFC();
    v11 = *(v3 + 48);
    v15 = *(v3 + 32);
    v16 = v11;
    v14 = 2;
    sub_18F1728C8();
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_6_3();
    sub_18F522C2C();
    *&v15 = *(v3 + 64);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD02C8);
    sub_18F17291C();
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_6_3();
    sub_18F522C2C();
    *&v15 = *(v3 + 72);
    v14 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD02E0);
    sub_18F172AA4(&qword_1EACD02E8, &qword_1EACD02E0, &unk_18F540640, sub_18F1729F4);
    OUTLINED_FUNCTION_8_7();
    OUTLINED_FUNCTION_6_3();
    sub_18F522C2C();
    LOBYTE(v15) = 5;
    OUTLINED_FUNCTION_6_3();
    sub_18F522C0C();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_18F171AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v130 = type metadata accessor for IntentPerson.Name(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v115 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v99 - v8;
  v114 = sub_18F5209EC();
  OUTLINED_FUNCTION_0();
  v127 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v110 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0318);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  v129 = &v99 - v18;
  v19 = type metadata accessor for IntentEventParticipant();
  OUTLINED_FUNCTION_0();
  v126 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  v132 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v99 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0320);
  OUTLINED_FUNCTION_10(v28);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v32 = *v2;
  v33 = v2[1];
  v34 = v2[3];
  v107 = v2[2];
  v108 = v32;
  v109 = type metadata accessor for IntentCalendarEvent();
  sub_18F0F9F88(v2 + *(v109 + 24), v27, &qword_1EACD0268);
  v35 = type metadata accessor for IntentDateComponentsRange();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v35);
  v128 = v19;
  if (EnumTagSinglePayload == 1)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F0EF1A8(v27, &qword_1EACD0268);
    OUTLINED_FUNCTION_13_11();
    v37 = v34;
  }

  else
  {
    sub_18F0F9F88(v27, v31, &qword_1EACD0320);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F172C04(v27, type metadata accessor for IntentDateComponentsRange);
    v38 = sub_18F52085C();
    v37 = v34;
    if (__swift_getEnumTagSinglePayload(v31, 1, v38) == 1)
    {
      sub_18F0EF1A8(v31, &qword_1EACD0320);
      OUTLINED_FUNCTION_13_11();
    }

    else
    {
      v39 = sub_18F4506B8();
      v41 = v40;
      v105 = v43;
      v106 = v42;
      (*(*(v38 - 8) + 8))(v31, v38);
      v104 = v41 & 1;
      v27 = v39;
    }
  }

  v44 = v109;
  v45 = *(v2 + *(v109 + 28));
  if (!v45)
  {
    v131 = 0;
    goto LABEL_43;
  }

  v102 = v2;
  v103 = a1;
  v46 = *(v45 + 16);
  if (v46)
  {
    v99 = v27;
    v100 = v37;
    v101 = v33;
    v135 = MEMORY[0x1E69E7CC0];
    sub_18F3AAD4C();
    v47 = v45 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v131 = v135;
    v112 = v127 + 8;
    v113 = (v127 + 32);
    v126 = *(v126 + 72);
    v127 = v9;
    while (2)
    {
      v48 = v132;
      sub_18F172B90(v47, v132, type metadata accessor for IntentEventParticipant);
      v49 = v129;
      sub_18F0F9F88(v48, v129, &qword_1EACD0318);
      v50 = type metadata accessor for IntentPerson(0);
      if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
      {
        sub_18F0EF1A8(v49, &qword_1EACD0318);
        sub_18F172B7C(__dst);
        goto LABEL_26;
      }

      v51 = OUTLINED_FUNCTION_1_10();
      sub_18F172B90(v51, v9, v52);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v113)(v111, v9, v114);
        v53 = sub_18F52096C();
        v124 = v54;
        v125 = v53;
        v55 = sub_18F52098C();
        v122 = v56;
        v123 = v55;
        v57 = sub_18F52097C();
        v120 = v58;
        v121 = v57;
        v59 = sub_18F5209CC();
        v118 = v60;
        v119 = v59;
        v61 = OUTLINED_FUNCTION_12_12();
        v62(v61);
      }

      else
      {
        sub_18F172C04(v9, type metadata accessor for IntentPerson.Name);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v123 = 0;
        v124 = 0;
        v125 = 0;
      }

      v63 = OUTLINED_FUNCTION_1_10();
      sub_18F172B90(v63, v115, v64);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*v113)(v110, v115, v114);
          v66 = sub_18F5209DC();
          v116 = v67;
          v117 = v66;
          v68 = OUTLINED_FUNCTION_12_12();
          v69(v68);
        }

        else
        {
          v116 = 0xE000000000000000;
          v117 = 0;
        }
      }

      else
      {
        v70 = *v115;
        v116 = v115[1];
        v117 = v70;
      }

      v71 = v49 + *(v50 + 28);
      if (*(v71 + 32) == 10)
      {
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v75 = 0;
      }

      else
      {
        v74 = *v71;
        v75 = *(v71 + 8);
        sub_18F172BEC(*v71, v75, *(v71 + 16));
        if (*(v71 + 32) != 10)
        {
          v78 = *(v71 + 16);
          v73 = *&aPhonenumemaila[8 * v78];
          v72 = *&aBer[8 * v78];
          v76 = sub_18F5218DC();
          v77 = v79;
          goto LABEL_25;
        }

        v72 = 0;
        v73 = 0;
      }

      v76 = 0;
      v77 = 0;
LABEL_25:
      sub_18F172C04(v49, type metadata accessor for IntentPerson);
      v133[0] = v125;
      v133[1] = v124;
      v133[2] = v123;
      v133[3] = v122;
      v133[4] = v121;
      v133[5] = v120;
      v133[6] = v119;
      v133[7] = v118;
      v133[8] = v117;
      v133[9] = v116;
      memset(&v133[10], 0, 17);
      v133[13] = v74;
      v133[14] = v75;
      v133[15] = v73;
      v133[16] = v72;
      v133[17] = v76;
      v133[18] = v77;
      LOWORD(v133[19]) = 0;
      nullsub_1(v133, v80);
      memcpy(__dst, v133, 0x9AuLL);
LABEL_26:
      v81 = v131;
      v82 = 0xE700000000000000;
      v83 = 0x676E69646E6570;
      v84 = 0;
      v85 = 0;
      switch(*(v132 + v128[5]))
      {
        case 1:
          v82 = 0xE800000000000000;
          v86 = 0x747065636361;
          goto LABEL_30;
        case 2:
          v82 = 0xE800000000000000;
          v86 = 0x6E696C636564;
LABEL_30:
          v83 = v86 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
          goto LABEL_35;
        case 3:
          v82 = 0xE900000000000065;
          v83 = 0x76697461746E6574;
          goto LABEL_35;
        case 4:
          v87 = 0x6167656C6564;
          goto LABEL_34;
        case 5:
          v87 = 0x656C706D6F63;
LABEL_34:
          v83 = v87 & 0xFFFFFFFFFFFFLL | 0x6574000000000000;
          v82 = 0xE900000000000064;
          goto LABEL_35;
        case 6:
          v82 = 0xEA00000000007373;
          v83 = 0x65636F7270206E69;
          goto LABEL_35;
        case 7:
          goto LABEL_36;
        default:
LABEL_35:
          v84 = v83;
          v85 = v82;
LABEL_36:
          v88 = *(v132 + v128[6]);
          v89 = *(v132 + v128[7]);
          OUTLINED_FUNCTION_2_13();
          sub_18F172C04(v90, v91);
          v135 = v81;
          v92 = *(v81 + 16);
          if (v92 >= *(v81 + 24) >> 1)
          {
            sub_18F3AAD4C();
            v81 = v135;
          }

          memcpy(v133, __dst, 0x9AuLL);
          *(v81 + 16) = v92 + 1;
          v131 = v81;
          v93 = v81 + 184 * v92;
          memcpy((v93 + 32), v133, 0xA0uLL);
          *(v93 + 192) = v84;
          *(v93 + 200) = v85;
          *(v93 + 208) = v88;
          v9 = v127;
          v47 += v126;
          *(v93 + 209) = v89;
          if (--v46)
          {
            continue;
          }

          v37 = v100;
          v33 = v101;
          v44 = v109;
          v27 = v99;
          break;
      }

      goto LABEL_42;
    }
  }

  v131 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v2 = v102;
  a1 = v103;
LABEL_43:
  if (*(v2 + *(v44 + 32)))
  {
    result = sub_18F27A848();
  }

  else
  {
    result = 0;
  }

  v95 = *(v2 + *(v44 + 36));
  v96 = v107;
  *a1 = v108;
  *(a1 + 8) = v33;
  *(a1 + 16) = v96;
  *(a1 + 24) = v37;
  v97 = v104;
  *(a1 + 32) = v27;
  *(a1 + 40) = v97;
  v98 = v105;
  *(a1 + 48) = v106;
  *(a1 + 56) = v98;
  *(a1 + 64) = v131;
  *(a1 + 72) = result;
  *(a1 + 80) = v95;
  return result;
}

uint64_t dispatch thunk of CalendarEventRepresentableEntity.calendarEventRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F172554()
{
  sub_18F0FE060(319, &qword_1ED6FDA40);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_18F172654();
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_18F1726AC();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_18F172710();
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_18F0FE060(319, &qword_1EACCDD58);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

void sub_18F172654()
{
  if (!qword_1EACCDEB8)
  {
    type metadata accessor for IntentDateComponentsRange();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDEB8);
    }
  }
}

void sub_18F1726AC()
{
  if (!qword_1EACCDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD02B0);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDD70);
    }
  }
}

void sub_18F172710()
{
  if (!qword_1EACCDD40)
  {
    sub_18F0F21A8(255, &qword_1EACCDD48);
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDD40);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation14DateComponentsV10AppIntentsE0bC9NLGParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1727A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 81))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1727F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F172874()
{
  result = qword_1EACD02C0;
  if (!qword_1EACD02C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD02C0);
  }

  return result;
}

unint64_t sub_18F1728C8()
{
  result = qword_1EACD4450;
  if (!qword_1EACD4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD4450);
  }

  return result;
}

unint64_t sub_18F17291C()
{
  result = qword_1EACD02D0;
  if (!qword_1EACD02D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD02C8);
    sub_18F1729A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD02D0);
  }

  return result;
}

unint64_t sub_18F1729A0()
{
  result = qword_1EACD02D8;
  if (!qword_1EACD02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD02D8);
  }

  return result;
}

unint64_t sub_18F1729F4()
{
  result = qword_1EACD02F0;
  if (!qword_1EACD02F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD02F8);
    sub_18F172AA4(&qword_1EACD0300, &qword_1EACD0308, &unk_18F540650, sub_18F172B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD02F0);
  }

  return result;
}

uint64_t sub_18F172AA4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F172B28()
{
  result = qword_1EACD0310;
  if (!qword_1EACD0310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0310);
  }

  return result;
}

uint64_t sub_18F172B90(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F172BEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F172C04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for IntentCalendarEvent.CalendarEventNLGParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentCalendarEvent.CalendarEventNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18F172DC4()
{
  result = qword_1EACD0338;
  if (!qword_1EACD0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0338);
  }

  return result;
}

unint64_t sub_18F172E1C()
{
  result = qword_1EACD0340;
  if (!qword_1EACD0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0340);
  }

  return result;
}

unint64_t sub_18F172E74()
{
  result = qword_1EACD0348;
  if (!qword_1EACD0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0348);
  }

  return result;
}

uint64_t IntentFile.IntentFileError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  if (v1)
  {
    v2 = "isContactBirthday";
  }

  else
  {
    v2 = "Failed to load file";
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = sub_18F5218DC();
  *(inited + 40) = v4;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = v2 | 0x8000000000000000;
  return sub_18F5216CC();
}

uint64_t IntentFile.IntentFileError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F173058()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F17309C(uint64_t a1)
{
  v2 = sub_18F1787E8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F1730D8(uint64_t a1)
{
  v2 = sub_18F1787E8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t IntentFile.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 fileURL];
  if (v3)
  {
    v4 = v3;
    sub_18F520C3C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_18F520C8C();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id IntentFile._itemProvider.getter()
{
  result = [*v0 _itemProvider];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t IntentFile.type.getter()
{
  v1 = [*v0 typeIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18F5218DC();
    v5 = v4;

    return MEMORY[0x1EEE6D4D8](v3, v5);
  }

  else
  {
    sub_18F52153C();
    OUTLINED_FUNCTION_11();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

id sub_18F1732DC@<X0>(_BYTE *a1@<X8>)
{
  result = IntentFile.removedOnCompletion.getter();
  *a1 = result & 1;
  return result;
}

id (*IntentFile.removedOnCompletion.modify(uint64_t a1))(void **a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 removedOnCompletion];
  return sub_18F173384;
}

void IntentFile.init(data:filename:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &a9 - v36;
  sub_18F0F9F88(v23, &a9 - v36, &qword_1EACD0358);
  v38 = sub_18F52153C();
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_18F0EF1A8(v37, &qword_1EACD0358);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v39 = sub_18F5214DC();
    v40 = v41;
    OUTLINED_FUNCTION_31_0();
    (*(v42 + 8))(v37, v38);
  }

  sub_18F0F21A8(0, &unk_1ED6FDDB8);
  v43 = sub_18F173518(v31, v29, v27, v25, v39, v40);
  sub_18F0EF1A8(v23, &qword_1EACD0358);
  *v33 = v43;
  OUTLINED_FUNCTION_16();
}

id sub_18F173518(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_18F520D2C();
  v10 = sub_18F5218AC();

  if (a6)
  {
    v11 = sub_18F5218AC();
  }

  else
  {
    v11 = 0;
  }

  v12 = [swift_getObjCClassFromMetadata() fileWithData:v9 filename:v10 typeIdentifier:v11];

  sub_18F123A1C(a1, a2);
  return v12;
}

void IntentFile.init(fileURL:filename:type:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v25 = v2;
  v26 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0358);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16, v7, v12);
  sub_18F0F9F88(v1, v11, &qword_1EACD0358);
  v19 = sub_18F52153C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
  {
    sub_18F0EF1A8(v11, &qword_1EACD0358);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v20 = sub_18F5214DC();
    v21 = v22;
    OUTLINED_FUNCTION_31_0();
    (*(v23 + 8))(v11, v19);
  }

  sub_18F0F21A8(0, &unk_1ED6FDDB8);
  v24 = sub_18F17380C(v18, v5, v25, v20, v21);
  sub_18F0EF1A8(v1, &qword_1EACD0358);
  (*(v14 + 8))(v7, v12);
  *v26 = v24;
  OUTLINED_FUNCTION_16();
}

id sub_18F17380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18F520BEC();
  if (!a3)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = sub_18F5218AC();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_18F5218AC();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() fileWithFileURL:v8 filename:v9 typeIdentifier:v10];

  sub_18F520C8C();
  OUTLINED_FUNCTION_10_0();
  (*(v12 + 8))(a1);
  return v11;
}

void sub_18F173914()
{
  OUTLINED_FUNCTION_18();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v2 = OUTLINED_FUNCTION_10(v1);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v45 = &v43 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v43 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v43 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v21 = *v0;
  sub_18F177D68(*v0);
  if (v22 >> 60 == 15)
  {
    v23 = [v21 fileURL];
    if (v23)
    {
      v24 = v23;
      sub_18F520C3C();

      v25 = sub_18F520C8C();
      v26 = 0;
    }

    else
    {
      v25 = sub_18F520C8C();
      v26 = 1;
    }

    __swift_storeEnumTagSinglePayload(v18, v26, 1, v25);
    sub_18F178778(v18, v20);
    sub_18F520C8C();
    OUTLINED_FUNCTION_29_4(v20);
    if (v27)
    {
      sub_18F0EF1A8(v20, &qword_1EACD0360);
    }

    else
    {
      sub_18F520C4C();
      OUTLINED_FUNCTION_31_0();
      v28 = OUTLINED_FUNCTION_19_3();
      v29(v28);
    }

    v30 = [v21 &off_1E72B76F8];
    if (v30)
    {
      v31 = v30;
      sub_18F520C3C();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    __swift_storeEnumTagSinglePayload(v12, v32, 1, v25);
    sub_18F178778(v12, v15);
    OUTLINED_FUNCTION_29_4(v15);
    if (v27)
    {
      sub_18F0EF1A8(v15, &qword_1EACD0360);
    }

    else
    {
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v25);
      sub_18F520B7C();
      sub_18F0EF1A8(v9, &qword_1EACD0360);
      (*(*(v25 - 8) + 8))(v15, v25);
    }

    v36 = [v21 &off_1E72B76F8];
    v37 = v44;
    if (v36)
    {
      v38 = v36;
      sub_18F520C3C();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    __swift_storeEnumTagSinglePayload(v37, v39, 1, v25);
    v40 = v37;
    v41 = v45;
    sub_18F178778(v40, v45);
    OUTLINED_FUNCTION_29_4(v41);
    if (v27)
    {
      sub_18F0EF1A8(v41, &qword_1EACD0360);
    }

    else
    {
      sub_18F520C2C();
      OUTLINED_FUNCTION_31_0();
      (*(v42 + 8))(v41, v25);
    }
  }

  OUTLINED_FUNCTION_16();
}

id sub_18F173D54()
{
  v1 = type metadata accessor for IntentContext();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  v6 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  result = [*v0 fileURL];
  if (result)
  {
    v14 = result;
    sub_18F520C3C();

    static IntentContext.current.getter(v5);
    sub_18F178EA4(v5);
    v15 = sub_18F520BEC();
    INIssueSandboxExtensionToProcess();

    return (*(v8 + 8))(v12, v6);
  }

  return result;
}

uint64_t static IntentFile.== infix(_:_:)()
{
  sub_18F0F21A8(0, &qword_1EACCE798);
  OUTLINED_FUNCTION_56();
  return sub_18F52243C() & 1;
}

uint64_t IntentFile.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F52244C();
  return sub_18F522F4C();
}

uint64_t sub_18F174058()
{
  sub_18F522EFC();
  sub_18F52244C();
  return sub_18F522F4C();
}

void IntentFile.displayRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = sub_18F52187C();
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4();
  v35 = *v20;
  sub_18F52186C();
  sub_18F52185C();
  v36 = [v35 filename];
  sub_18F5218DC();

  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v37 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  v41 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = type metadata accessor for DisplayRepresentation();
  v46 = v45[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v37);
  v50 = v45[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v41);
  *(v24 + v45[7]) = xmmword_18F540410;
  *(v24 + v45[8]) = 0;
  *(v24 + v45[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v37);
  sub_18F0FF5DC(v32, v24 + v46, &qword_1EACCF7A8);
  sub_18F0FF5DC(v28, v24 + v50, &qword_1EACD0270);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F174310(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000018F525E30;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  *(inited + 48) = a1;
  sub_18F1168B4();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return sub_18F5216CC();
}

id static IntentFile.valueType.getter()
{
  v0 = [objc_opt_self() fileValueType];

  return v0;
}

id IntentFile.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  sub_18F173D54();
  a1[3] = sub_18F0F21A8(0, &unk_1ED6FDDB8);
  *a1 = v4;

  return v4;
}

uint64_t sub_18F1744A8(SEL *a1, uint64_t (*a2)(void))
{
  v4 = [*v2 *a1];
  v5 = a2();

  return v5;
}

uint64_t sub_18F174510@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7();
  result = sub_18F1744A8(v2, v3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_18F174568@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F148040();
  *a1 = result;
  return result;
}

unint64_t sub_18F174598@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18F14808C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18F1745CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F148040();
  *a1 = result;
  return result;
}

uint64_t sub_18F1745F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F174508();
  *a1 = result;
  return result;
}

uint64_t sub_18F17461C(uint64_t a1)
{
  v2 = sub_18F174BB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F174658(uint64_t a1)
{
  v2 = sub_18F174BB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntentFile.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v34 - v6;
  v42 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v40 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0368);
  OUTLINED_FUNCTION_0();
  v43 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F174BB4();
  sub_18F522FBC();
  if (v2)
  {
    v19 = a1;
  }

  else
  {
    v34 = v11;
    v35 = v13;
    v20 = v40;
    LOBYTE(v44) = 2;
    v21 = sub_18F522B8C();
    v37 = a1;
    v36 = v21;
    v38 = v22;
    v23 = v20;
    LOBYTE(v44) = 1;
    v24 = sub_18F522B8C();
    v26 = v41;
    v25 = v42;
    v40 = v24;
    v28 = v27;
    LOBYTE(v44) = 3;
    sub_18F177F4C(&qword_1EACD0378);
    sub_18F522BAC();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
    v29 = v35;
    (*(v23 + 32))(v35, v26, v25);
    sub_18F0F21A8(0, &unk_1ED6FDDB8);
    v30 = v34;
    (*(v23 + 16))(v34, v29, v25);
    v31 = sub_18F17380C(v30, v40, v28, v36, v38);
    (*(v23 + 8))(v29, v25);
    v32 = v43;
    LOBYTE(v44) = 4;
    v33 = v31;
    [v33 setRemovedOnCompletion_];

    (*(v32 + 8))(v18, v14);
    *v39 = v33;
    v19 = v37;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

unint64_t sub_18F174BB4()
{
  result = qword_1EACD0370;
  if (!qword_1EACD0370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0370);
  }

  return result;
}

unint64_t sub_18F174C08()
{
  result = qword_1EACD0380;
  if (!qword_1EACD0380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0380);
  }

  return result;
}

uint64_t IntentFile.encode(to:)(void *a1)
{
  v34 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v32 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v31 = v6 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0388);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v11 = *v1;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F174BB4();
  sub_18F522FEC();
  v35 = v11;
  v12 = [v11 data];
  v13 = sub_18F520D4C();
  v15 = v14;

  v37 = v13;
  v38 = v15;
  v39 = 0;
  sub_18F175084();
  v16 = v36;
  sub_18F522C6C();
  if (v16)
  {
    sub_18F123A1C(v37, v38);
    v17 = OUTLINED_FUNCTION_20_3();
    return v18(v17);
  }

  else
  {
    v36 = v9;
    v20 = v34;
    sub_18F123A1C(v37, v38);
    v21 = [v35 filename];
    sub_18F5218DC();

    LOBYTE(v37) = 1;
    sub_18F522C3C();

    v37 = sub_18F177DCC(v35);
    v38 = v22;
    v39 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
    sub_18F177E30();
    sub_18F522C6C();

    v23 = [v35 fileURL];
    if (v23)
    {
      v24 = v23;
      sub_18F520C3C();

      v25 = v36;
      v26 = OUTLINED_FUNCTION_19_3();
      v27(v26);
      v28 = 0;
    }

    else
    {
      v28 = 1;
      v25 = v36;
    }

    __swift_storeEnumTagSinglePayload(v25, v28, 1, v20);
    LOBYTE(v37) = 3;
    sub_18F177EAC();
    sub_18F522C6C();
    sub_18F0EF1A8(v25, &qword_1EACD0360);
    [v35 removedOnCompletion];
    LOBYTE(v37) = 4;
    sub_18F522C4C();
    v29 = OUTLINED_FUNCTION_20_3();
    return v30(v29);
  }
}

unint64_t sub_18F175084()
{
  result = qword_1EACD0390;
  if (!qword_1EACD0390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0390);
  }

  return result;
}

uint64_t IntentFile.file(contentType:destinationDirectory:)()
{
  OUTLINED_FUNCTION_69();
  v1[3] = v2;
  v1[4] = v3;
  v1[2] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03B0);
  v1[5] = v5;
  OUTLINED_FUNCTION_10(v5);
  v6 = swift_task_alloc();
  v7 = *v0;
  v1[6] = v6;
  v1[7] = v7;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1751A4()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[9] = v5;
  *v5 = v6;
  v5[1] = sub_18F175298;
  OUTLINED_FUNCTION_17_4();

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_18F175298()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F17539C()
{
  v1 = *(v0[6] + *(v0[5] + 48));
  sub_18F520C8C();
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);

  v4 = v0[1];

  return v4(v1);
}

uint64_t sub_18F17544C()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_18F1754BC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v22[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v22[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = sub_18F520C8C();
  __swift_getEnumTagSinglePayload(a2, 1, v15);
  v16 = [a3 _itemProvider];
  if (v16)
  {
    v17 = v16;
    (*(v11 + 16))(v14, a1, v10);
    sub_18F0F9F88(a2, v9, &qword_1EACD0360);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = (v12 + *(v22[0] + 80) + v18) & ~*(v22[0] + 80);
    v20 = swift_allocObject();
    (*(v11 + 32))(v20 + v18, v14, v10);
    sub_18F178778(v9, v20 + v19);
    v21 = sub_18F5222BC();
  }

  else
  {
    __break(1u);
  }
}

void sub_18F175734(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v104 = a4;
  v103 = a2;
  v109 = *MEMORY[0x1E69E9840];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03B0);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v90 - v7;
  v8 = sub_18F520B8C();
  v98 = *(v8 - 8);
  v99 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v94 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v90 - v16;
  v18 = sub_18F520C8C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v96 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v90 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v90 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v90 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v90 - v30;
  v32 = a1;
  v34 = v33;
  sub_18F0F9F88(v32, v17, &qword_1EACD0360);
  if (__swift_getEnumTagSinglePayload(v17, 1, v34) != 1)
  {
    v93 = v19[4];
    v93(v31, v17, v34);
    v37 = (v19 + 2);
    v36 = v19[2];
    v36(v29, v31, v34);
    v38 = v103;
    if (v103)
    {
LABEL_21:
      v84 = v102;
      v85 = v36;
      v86 = *(v101 + 48);
      v85(v102, v29, v34);
      v84[v86] = v38 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
      sub_18F521E3C();
      v87 = v19[1];
      v87(v29, v34);
      v87(v31, v34);
      return;
    }

    v90 = v36;
    v91 = v29;
    sub_18F0F9F88(v100, v15, &qword_1EACD0360);
    if (__swift_getEnumTagSinglePayload(v15, 1, v34) == 1)
    {
      sub_18F0EF1A8(v15, &qword_1EACD0360);
      v39 = [objc_opt_self() defaultManager];
      v40 = sub_18F520BEC();
      v105 = 0;
      v41 = [v39 URLForDirectory:99 inDomain:1 appropriateForURL:v40 create:1 error:&v105];

      v42 = v105;
      if (v41)
      {
        v43 = v96;
        sub_18F520C3C();
        v44 = v42;

        v100 = v31;
        v105 = sub_18F520BDC();
        v106 = v45;
        v47 = v97;
        v46 = v98;
        v48 = v99;
        (*(v98 + 104))(v97, *MEMORY[0x1E6968F70], v99);
        sub_18F12A000();
        sub_18F520C7C();
        (*(v46 + 8))(v47, v48);

        v92 = v19;
        v49 = v19[1];
        v49(v43, v34);
        v50 = v91;
        v49(v91, v34);
        v51 = v95;
LABEL_14:
        v93(v50, v51, v34);
        v71 = objc_opt_self();
        v72 = [v71 defaultManager];
        sub_18F520C5C();
        v73 = sub_18F5218AC();

        v74 = [v72 fileExistsAtPath:v73 isDirectory:0];

        v75 = [v71 defaultManager];
        if (v74)
        {
          v76 = v94;
          v31 = v100;
          sub_18F5221EC();
          sub_18F0EF1A8(v76, &qword_1EACD0360);

          v19 = v92;
LABEL_20:
          v29 = v50;
          v38 = v103;
          v36 = v90;
          goto LABEL_21;
        }

        v77 = sub_18F520BEC();
        v78 = sub_18F520BEC();
        v105 = 0;
        v79 = [v75 copyItemAtURL:v77 toURL:v78 error:&v105];

        if (v79)
        {
          v80 = v105;
          v19 = v92;
          v31 = v100;
          goto LABEL_20;
        }

        v83 = v105;
        v82 = sub_18F520A8C();

        swift_willThrow();
        v19 = v92;
        v31 = v100;
LABEL_24:
        v105 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
        sub_18F0F21A8(0, &qword_1ED6FBF40);
        swift_dynamicCast();
        v107 = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
        sub_18F521E2C();
        v89 = v19[1];
        v89(v50, v34);
        v89(v31, v34);

        return;
      }

      v81 = v105;
      v82 = sub_18F520A8C();

      swift_willThrow();
LABEL_23:
      v50 = v91;
      goto LABEL_24;
    }

    v93(v26, v15, v34);
    v54 = objc_opt_self();
    v55 = [v54 defaultManager];
    sub_18F520C5C();
    v56 = sub_18F5218AC();
    v92 = v19;
    v100 = v31;
    v57 = v56;

    v58 = [v55 fileExistsAtPath_];

    v31 = v100;
    v19 = v92;
    if ((v58 & 1) == 0)
    {
      v59 = [v54 defaultManager];
      v60 = sub_18F520BEC();
      v105 = 0;
      v61 = [v59 createDirectoryAtURL:v60 withIntermediateDirectories:1 attributes:0 error:&v105];

      if (!v61)
      {
        v88 = v105;
        v82 = sub_18F520A8C();

        swift_willThrow();
        (v19[1])(v26, v34);
        goto LABEL_23;
      }

      v62 = v105;
    }

    v105 = sub_18F520BDC();
    v106 = v63;
    v64 = *MEMORY[0x1E6968F70];
    v66 = v98;
    v65 = v99;
    v67 = *(v98 + 104);
    v95 = v37;
    v68 = v97;
    v67(v97, v64, v99);
    sub_18F12A000();
    v69 = v96;
    sub_18F520C7C();
    (*(v66 + 8))(v68, v65);

    v70 = v19[1];
    v70(v26, v34);
    v50 = v91;
    v70(v91, v34);
    v51 = v69;
    goto LABEL_14;
  }

  sub_18F0EF1A8(v17, &qword_1EACD0360);
  if (a3)
  {
    v35 = a3;
  }

  else
  {
    sub_18F178014();
    v35 = swift_allocError();
    *v52 = 1;
  }

  v105 = v35;
  v53 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
  sub_18F521E2C();
}