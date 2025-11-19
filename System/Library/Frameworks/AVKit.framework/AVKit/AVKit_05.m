uint64_t sub_18B523050()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18B525E1C();
  }

  return result;
}

void *sub_18B5231FC()
{
  v1 = v0;
  v87 = *MEMORY[0x1E69E9840];
  *(v0 + 16) = [objc_opt_self() auxiliarySession];
  v2 = &selRef_exitFullscreen_;
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E6958460]) initSessionForIndependentInputRoute];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E69583F8]) init];
  *(v0 + 48) = 0;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 72) = 0xD00000000000001ALL;
  *(v0 + 80) = 0x800000018B6FD1E0;
  sub_18B526344();
  [*(v0 + 64) setMaxConcurrentOperationCount_];
  v3 = *(v0 + 64);
  sub_18B6C450C();
  v4 = sub_18B6C55FC();

  [v3 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5578);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18B6E8750;
  v6 = *MEMORY[0x1E69AEB70];
  *(v5 + 32) = *MEMORY[0x1E69AEB70];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 sharedInstance];
  v10 = &OBJC_IVAR___AVSecondScreenConnection__preferredDisplayCriteria;
  if (v9)
  {
    type metadata accessor for Name(0);
    v11 = v9;
    v12 = sub_18B6C575C();

    v13 = *MEMORY[0x1E69AECD8];
    aBlock = 0;
    v14 = [v11 setAttribute:v12 forKey:v13 error:&aBlock];

    if ((v14 & 1) == 0)
    {
      v55 = aBlock;
      v54 = sub_18B6C405C();

      swift_willThrow();
      goto LABEL_14;
    }

    v80 = v9;
    v15 = aBlock;
  }

  else
  {
    v80 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 defaultCenter];
  v18 = v1[8];
  v19 = swift_allocObject();
  swift_weakInit();
  v85 = sub_18B526480;
  v86 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B523C54;
  v84 = &block_descriptor_4;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  v22 = [v17 addObserverForName:v8 object:0 queue:v21 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  v23 = [v16 &selRef_contentTransitionView + 5];
  v24 = *MEMORY[0x1E6958028];
  v25 = v1[3];
  v26 = v1[8];
  v27 = swift_allocObject();
  swift_weakInit();
  v85 = sub_18B5264A0;
  v86 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B523C54;
  v84 = &block_descriptor_16;
  v28 = _Block_copy(&aBlock);
  v29 = v25;
  v30 = v26;

  v31 = [v23 addObserverForName:v24 object:v29 queue:v30 usingBlock:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();

  v32 = [v16 defaultCenter];
  v33 = v1[5];
  v34 = v1[8];
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = v33;
  v37 = v34;

  v85 = sub_18B5264E0;
  v86 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_18B523C54;
  v84 = &block_descriptor_20;
  v38 = _Block_copy(&aBlock);

  v39 = [v32 addObserverForName:v24 object:v36 queue:v37 usingBlock:v38];
  _Block_release(v38);
  swift_unknownObjectRelease();

  v40 = v1[2];
  v41 = *MEMORY[0x1E6958060];
  v42 = *MEMORY[0x1E6958130];
  aBlock = 0;
  v43 = [v40 setCategory:v41 mode:v42 options:45 error:&aBlock];
  v44 = aBlock;
  if (v43)
  {
    v45 = v1[2];
    aBlock = 0;
    v46 = v44;
    v47 = [v45 preferDecoupledIO:1 error:&aBlock];
    v48 = aBlock;
    v10 = &OBJC_IVAR___AVSecondScreenConnection__preferredDisplayCriteria;
    if (v47)
    {
      v49 = v1[4];
      v50 = *MEMORY[0x1E6958078];
      aBlock = 0;
      v51 = v48;
      v2 = &selRef_exitFullscreen_;
      if ([v49 setCategory:v50 mode:v42 options:5 error:&aBlock])
      {
        v52 = aBlock;

        goto LABEL_19;
      }

      v57 = aBlock;
      v54 = sub_18B6C405C();

      swift_willThrow();
    }

    else
    {
      v56 = aBlock;
      v54 = sub_18B6C405C();

      swift_willThrow();
      v2 = &selRef_exitFullscreen_;
    }
  }

  else
  {
    v53 = aBlock;
    v54 = sub_18B6C405C();

    swift_willThrow();
    v2 = &selRef_exitFullscreen_;
    v10 = &OBJC_IVAR___AVSecondScreenConnection__preferredDisplayCriteria;
  }

  v11 = v80;
LABEL_14:

  if (*(v10 + 436) != -1)
  {
    swift_once();
  }

  v58 = sub_18B6C435C();
  __swift_project_value_buffer(v58, qword_1EA9CE398);
  v59 = v54;
  v60 = sub_18B6C434C();
  v61 = sub_18B6C594C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    v64 = v54;
    v65 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 4) = v65;
    *v63 = v65;
    _os_log_impl(&dword_18B49C000, v60, v61, "Metering: Could not subscribe to AVSystemController notifications: %@", v62, 0xCu);
    sub_18B4A6454(v63, &qword_1EA9C4FA8);
    MEMORY[0x18CFF91B0](v63, -1, -1);
    MEMORY[0x18CFF91B0](v62, -1, -1);
  }

  else
  {
  }

LABEL_19:
  v66 = [objc_allocWithZone(MEMORY[0x1E6958480]) v2[276]];
  [v66 setRouteControlOptions_];
  v67 = v1[4];
  aBlock = 0;
  if ([v67 setPreferredRouteControlConfig:v66 error:&aBlock])
  {
    v68 = aBlock;
  }

  else
  {
    v69 = aBlock;
    v70 = sub_18B6C405C();

    swift_willThrow();
    if (*(v10 + 436) != -1)
    {
      swift_once();
    }

    v71 = sub_18B6C435C();
    __swift_project_value_buffer(v71, qword_1EA9CE398);
    v72 = v70;
    v73 = sub_18B6C434C();
    v74 = sub_18B6C596C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = v70;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_18B49C000, v73, v74, "Metering: Failed to set independent route on shadowing audio session. Error = %@", v75, 0xCu);
      sub_18B4A6454(v76, &qword_1EA9C4FA8);
      MEMORY[0x18CFF91B0](v76, -1, -1);
      MEMORY[0x18CFF91B0](v75, -1, -1);
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_18B523BF4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18B5240C8(a1);
  }

  return result;
}

uint64_t sub_18B523C54(uint64_t a1)
{
  v2 = sub_18B6C400C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_18B6C3FEC();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_18B523D48(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v7 = sub_18B6C435C();
    __swift_project_value_buffer(v7, qword_1EA9CE398);
    v8 = sub_18B6C434C();
    v9 = sub_18B6C596C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_18B49C000, v8, v9, a3, v10, 2u);
      MEMORY[0x18CFF91B0](v10, -1, -1);
    }

    a4();
  }

  return result;
}

id *sub_18B523F74()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69AEB70] object:0];

  v3 = [v1 defaultCenter];
  v4 = *MEMORY[0x1E6958028];
  [v3 removeObserver:v0 name:*MEMORY[0x1E6958028] object:v0[3]];

  v5 = [v1 defaultCenter];
  [v5 removeObserver:v0 name:v4 object:v0[5]];

  return v0;
}

uint64_t sub_18B524094()
{
  sub_18B523F74();

  return swift_deallocClassInstance();
}

void sub_18B5240C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18B6C400C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v9 = sub_18B6C435C();
  __swift_project_value_buffer(v9, qword_1EA9CE398);
  (*(v5 + 16))(v8, a1, v4);
  v10 = sub_18B6C434C();
  v11 = sub_18B6C596C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    sub_18B5265EC();
    v14 = sub_18B6C5CCC();
    v44 = a1;
    v15 = v2;
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_18B4F4244(v14, v17, aBlock);
    v2 = v15;

    *(v12 + 4) = v18;
    _os_log_impl(&dword_18B49C000, v10, v11, "Metering: Recording state changed: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x18CFF91B0](v13, -1, -1);
    MEMORY[0x18CFF91B0](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = sub_18B6C3FFC();
  if (!v19)
  {
    return;
  }

  v20 = v19;
  v46 = sub_18B6C562C();
  v47 = v21;
  sub_18B6C5B0C();
  if (!*(v20 + 16) || (v22 = sub_18B4F5064(aBlock), (v23 & 1) == 0))
  {

    sub_18B4F90B4(aBlock);
    return;
  }

  sub_18B4AF1A4(*(v20 + 56) + 32 * v22, v48);
  sub_18B4F90B4(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    return;
  }

  v46 = sub_18B6C562C();
  v47 = v24;
  sub_18B6C5B0C();
  if (!*(v20 + 16) || (v25 = sub_18B4F5064(aBlock), (v26 & 1) == 0))
  {

    sub_18B4F90B4(aBlock);
    goto LABEL_29;
  }

  sub_18B4AF1A4(*(v20 + 56) + 32 * v25, v48);
  sub_18B4F90B4(aBlock);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v40 = *(v2 + 64);
    v41 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_18B5265E4;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B533A4C;
    aBlock[3] = &block_descriptor_27;
    v42 = _Block_copy(aBlock);

    [v40 addOperationWithBlock_];
    _Block_release(v42);
    return;
  }

  v44 = v2;
  v27 = v46;
  v28 = *(v46 + 16);
  if (!v28)
  {
LABEL_30:

    v2 = v44;
    goto LABEL_29;
  }

  v29 = 0;
  while (v29 < *(v27 + 16))
  {
    v30 = *(v27 + 8 * v29 + 32);
    v31 = sub_18B6C562C();
    v33 = v32;
    if (*(v30 + 16) && (v34 = v31, sub_18B6C450C(), v35 = sub_18B4F4F14(v34, v33), v37 = v36, , (v37 & 1) != 0))
    {
      sub_18B4AF1A4(*(v30 + 56) + 32 * v35, aBlock);

      if (swift_dynamicCast())
      {
        v38 = v48[0];
        v39 = v44;
        if (v38 == [*(v44 + 16) opaqueSessionID] || v38 == objc_msgSend(*(v39 + 32), sel_opaqueSessionID))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    if (v28 == ++v29)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_18B524754()
{
  v2 = v0;
  v3 = sub_18B525F2C();
  v4 = v3;
  if ((*(v0 + 52) & 1) != 0 || v3 != *(v0 + 48))
  {
    if (v3 == [*(v0 + 16) opaqueSessionID])
    {
      sub_18B6C5B5C();

      v15[0] = 0xD000000000000016;
      v15[1] = 0x800000018B6FD2B0;
      v16 = v4;
      v5 = sub_18B6C5CCC();
      MEMORY[0x18CFF7260](v5);

      v7 = 0xD000000000000016;
      v6 = 0x800000018B6FD2B0;
    }

    else
    {
      LODWORD(v15[0]) = v4;
      v7 = sub_18B6C5CCC();
      v6 = v8;
    }

    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v9 = sub_18B6C435C();
    __swift_project_value_buffer(v9, qword_1EA9CE398);

    sub_18B6C450C();
    v10 = sub_18B6C434C();
    v11 = sub_18B6C596C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = [*(v2 + 32) opaqueSessionID];

      *(v12 + 8) = 2080;
      v14 = sub_18B4F4244(v7, v6, v15);

      *(v12 + 10) = v14;
      _os_log_impl(&dword_18B49C000, v10, v11, "Metering: Audio session is %u, Active Recording Session: %s", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x18CFF91B0](v13, -1, -1);
      MEMORY[0x18CFF91B0](v12, -1, -1);
    }

    else
    {
    }

    sub_18B5249E0();
    if (!v1)
    {
      sub_18B524E4C();
    }
  }
}

uint64_t sub_18B5249E0()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  result = [v1 isRunning];
  if ((result & 1) == 0)
  {
    v3 = sub_18B525F2C();
    v4 = *(v0 + 16);
    result = [v4 opaqueSessionID];
    if (v3 == result)
    {
      if (qword_1EA9C3DA0 != -1)
      {
        swift_once();
      }

      v5 = sub_18B6C435C();
      __swift_project_value_buffer(v5, qword_1EA9CE398);
      v6 = sub_18B6C434C();
      v7 = sub_18B6C596C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_18B49C000, v6, v7, "Metering: Starting placeholder audio session", v8, 2u);
        MEMORY[0x18CFF91B0](v8, -1, -1);
      }

      v14[0] = 0;
      v9 = [v4 setActive:1 withOptions:0 error:v14];
      v10 = v14[0];
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = v14[0];
      [v1 setAudioSession_];

      result = [v4 opaqueSessionID];
      if (v3 != result)
      {
        return result;
      }

      v14[0] = 0;
      v12 = [v1 startAndReturnError_];
      v10 = v14[0];
      if (v12)
      {
        return v14[0];
      }

      else
      {
LABEL_11:
        v13 = v10;
        sub_18B6C405C();

        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_18B524BF8()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  if ([v1 isRunning])
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v2 = sub_18B6C435C();
    __swift_project_value_buffer(v2, qword_1EA9CE398);
    v3 = sub_18B6C434C();
    v4 = sub_18B6C596C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_18B49C000, v3, v4, "Metering: Stopping placeholder audio session", v5, 2u);
      MEMORY[0x18CFF91B0](v5, -1, -1);
    }

    [v1 stop];
    [v1 reset];
    v6 = *(v0 + 16);
    v15[0] = 0;
    v7 = [v6 setActive:0 withOptions:0 error:v15];
    v8 = v15[0];
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v10 = v15[0];
      v11 = sub_18B6C405C();

      swift_willThrow();
      v12 = sub_18B6C434C();
      v13 = sub_18B6C594C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_18B49C000, v12, v13, "Metering: Failed to deactivate placeholder session", v14, 2u);
        MEMORY[0x18CFF91B0](v14, -1, -1);
      }
    }
  }
}

void sub_18B524E4C()
{
  aBlock[16] = *MEMORY[0x1E69E9840];
  v1 = sub_18B525F2C();
  v2 = *(v0 + 40);
  if ([v2 isRunning] && (*(v0 + 52) & 1) == 0 && v1 == *(v0 + 48))
  {
    return;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v3 = sub_18B6C435C();
  __swift_project_value_buffer(v3, qword_1EA9CE398);
  v4 = sub_18B6C434C();
  v5 = sub_18B6C596C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18B49C000, v4, v5, "Metering: Starting shadowing audio session", v6, 2u);
    MEMORY[0x18CFF91B0](v6, -1, -1);
  }

  if ((*(v0 + 52) & 1) != 0 || v1 != *(v0 + 48))
  {
    v7 = *(v0 + 32);
    aBlock[0] = 0;
    if (![v7 setActive:0 withOptions:0 error:aBlock])
    {
      v38 = aBlock[0];
      sub_18B6C405C();
      goto LABEL_28;
    }

    v8 = aBlock[0];
    [v7 opaqueSessionID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5590);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18B6E6E50;
    *(inited + 32) = sub_18B6C562C();
    *(inited + 40) = v10;
    *(inited + 48) = sub_18B6C5E0C();
    *(inited + 56) = sub_18B6C562C();
    *(inited + 64) = v11;
    *(inited + 72) = sub_18B6C5A9C();
    sub_18B4F9108(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5598);
    swift_arrayDestroy();
    sub_18B4AC60C(0, &qword_1EA9C3988);
    v12 = sub_18B6C55AC();

    aBlock[0] = 0;
    v13 = [v7 setConformsToSessionBehavior:v12 error:aBlock];

    v14 = aBlock[0];
    if (!v13)
    {
      v48 = aBlock[0];
      v49 = sub_18B6C405C();

      swift_willThrow();
      v50 = v49;
      v38 = sub_18B6C434C();
      v51 = sub_18B6C594C();

      if (os_log_type_enabled(v38, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 67109378;
        *(v52 + 4) = v1;
        *(v52 + 8) = 2112;
        v54 = v49;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 10) = v55;
        *v53 = v55;
        _os_log_impl(&dword_18B49C000, v38, v51, "Metering: Failed to set shadow session (id = %u) : %@", v52, 0x12u);
        sub_18B4A6454(v53, &qword_1EA9C4FA8);
        MEMORY[0x18CFF91B0](v53, -1, -1);
        v47 = v52;
        goto LABEL_27;
      }

LABEL_28:

      swift_willThrow();
      return;
    }

    *(v0 + 48) = v1;
    *(v0 + 52) = 0;
    v15 = v14;
  }

  v16 = *(v0 + 32);
  aBlock[0] = 0;
  if (![v16 setActive:1 withOptions:0 error:aBlock])
  {
    v39 = aBlock[0];
    v40 = sub_18B6C405C();

    swift_willThrow();
    v41 = v40;
    v38 = sub_18B6C434C();
    v42 = sub_18B6C594C();

    if (os_log_type_enabled(v38, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v40;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_18B49C000, v38, v42, "Metering: Failed to activate shadowing session: %@", v43, 0xCu);
      sub_18B4A6454(v44, &qword_1EA9C4FA8);
      MEMORY[0x18CFF91B0](v44, -1, -1);
      v47 = v43;
LABEL_27:
      MEMORY[0x18CFF91B0](v47, -1, -1);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v17 = aBlock[0];
  [v2 setAudioSession_];
  v18 = [v2 inputNode];
  v19 = [v18 inputFormatForBus_];
  v20 = v18;
  v21 = sub_18B6C434C();
  v22 = sub_18B6C596C();
  v89 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = [v89 inputFormatForBus_];
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_18B49C000, v21, v22, "Metering: input format: %@", v24, 0xCu);
    sub_18B4A6454(v25, &qword_1EA9C4FA8);
    MEMORY[0x18CFF91B0](v25, -1, -1);
    v27 = v24;
    v19 = v23;
    MEMORY[0x18CFF91B0](v27, -1, -1);
  }

  if ([v19 channelCount])
  {
    [v19 sampleRate];
    if (v28 > 0.0)
    {
      [v89 removeTapOnBus_];
      v29 = [v89 inputFormatForBus_];
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B525B14;
      aBlock[3] = &block_descriptor_23;
      v30 = _Block_copy(aBlock);
      aBlock[0] = 0;
      [v89 safePerformInstallTapOnBus:0 bufferSize:1024 format:v29 error:aBlock block:v30];
      _Block_release(v30);

      v31 = aBlock[0];
      if (aBlock[0])
      {
        v32 = aBlock[0];
        v33 = sub_18B6C434C();
        v34 = sub_18B6C594C();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v35 = 138412290;
          *(v35 + 4) = v32;
          *v36 = v31;
          v37 = v32;
          _os_log_impl(&dword_18B49C000, v33, v34, "Metering: Failed to installTap on shadowing audio engine: %@", v35, 0xCu);
          sub_18B4A6454(v36, &qword_1EA9C4FA8);
          MEMORY[0x18CFF91B0](v36, -1, -1);
          MEMORY[0x18CFF91B0](v35, -1, -1);
        }

        swift_willThrow();
      }

      else
      {
        aBlock[0] = 0;
        if ([v2 startAndReturnError_])
        {
          v77 = aBlock[0];
LABEL_50:

          return;
        }

        v78 = aBlock[0];
        v32 = sub_18B6C405C();

        swift_willThrow();
      }

      v79 = v32;
      v80 = sub_18B6C434C();
      v81 = sub_18B6C594C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = v32;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v82 + 4) = v85;
        *v83 = v85;
        _os_log_impl(&dword_18B49C000, v80, v81, "Metering: Failed to start shadowing audio engine: %@", v82, 0xCu);
        sub_18B4A6454(v83, &qword_1EA9C4FA8);
        MEMORY[0x18CFF91B0](v83, -1, -1);
        MEMORY[0x18CFF91B0](v82, -1, -1);
      }

LABEL_49:
      swift_willThrow();
      goto LABEL_50;
    }
  }

  v56 = sub_18B6C434C();
  v57 = sub_18B6C594C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_18B49C000, v56, v57, "Metering: Incorrect input format. Not starting audio metering", v58, 2u);
    MEMORY[0x18CFF91B0](v58, -1, -1);
  }

  v59 = [v16 currentRoute];
  v60 = [v59 inputs];

  sub_18B4AC60C(0, &qword_1EA9C55A0);
  v61 = sub_18B6C576C();

  if (v61 >> 62)
  {
    if (sub_18B6C5C6C())
    {
      goto LABEL_34;
    }

LABEL_48:

    sub_18B526590();
    swift_allocError();
    *v86 = 0xD000000000000024;
    v86[1] = 0x800000018B6FD250;
    goto LABEL_49;
  }

  if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((v61 & 0xC000000000000001) != 0)
  {
    v62 = MEMORY[0x18CFF7750](0, v61);
  }

  else
  {
    if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v62 = *(v61 + 32);
  }

  v63 = v62;

  swift_retain_n();
  v64 = v63;
  v65 = sub_18B6C434C();
  v66 = sub_18B6C594C();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v88 = v19;
    v68 = swift_slowAlloc();
    aBlock[0] = v68;
    *v67 = 136315650;
    v87 = v64;
    v69 = [v64 portName];
    v70 = sub_18B6C562C();
    v72 = v71;

    v73 = sub_18B4F4244(v70, v72, aBlock);

    *(v67 + 4) = v73;
    *(v67 + 12) = 1024;
    LODWORD(v73) = [v16 isInputAvailable];

    *(v67 + 14) = v73;

    *(v67 + 18) = 2048;
    v74 = [v16 preferredInputNumberOfChannels];

    *(v67 + 20) = v74;
    v64 = v87;

    _os_log_impl(&dword_18B49C000, v65, v66, "Metering: Input device exists (%s), but format is invalid. isInputAvailable: %{BOOL}d, preferredInputNumberOfChannels: %ld", v67, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v75 = v68;
    v19 = v88;
    MEMORY[0x18CFF91B0](v75, -1, -1);
    MEMORY[0x18CFF91B0](v67, -1, -1);
  }

  else
  {
  }

  sub_18B526590();
  swift_allocError();
  *v76 = 0xD00000000000002CLL;
  v76[1] = 0x800000018B6FD220;
  swift_willThrow();
}

void sub_18B525B14(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_18B525B98()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  if ([v1 isRunning])
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v2 = sub_18B6C435C();
    __swift_project_value_buffer(v2, qword_1EA9CE398);
    v3 = sub_18B6C434C();
    v4 = sub_18B6C596C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_18B49C000, v3, v4, "Metering: Stopping shadowing audio session", v5, 2u);
      MEMORY[0x18CFF91B0](v5, -1, -1);
    }

    [v1 stop];
    [v1 reset];
    v6 = [v1 inputNode];
    [v6 removeTapOnBus_];

    v7 = *(v0 + 32);
    v16[0] = 0;
    v8 = [v7 setActive:0 withOptions:0 error:v16];
    v9 = v16[0];
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v16[0];
      v12 = sub_18B6C405C();

      swift_willThrow();
      v13 = sub_18B6C434C();
      v14 = sub_18B6C594C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_18B49C000, v13, v14, "Metering: Failed to deactivate shadowing session", v15, 2u);
        MEMORY[0x18CFF91B0](v15, -1, -1);
      }
    }
  }
}

void sub_18B525E1C()
{
  sub_18B524754();
  if (v0)
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v1 = sub_18B6C435C();
    __swift_project_value_buffer(v1, qword_1EA9CE398);
    v2 = sub_18B6C434C();
    v3 = sub_18B6C596C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_18B49C000, v2, v3, "Metering: setup audio fails with recording session 0", v4, 2u);
      MEMORY[0x18CFF91B0](v4, -1, -1);
    }

    sub_18B525B98();
    sub_18B524BF8();
  }
}

unint64_t sub_18B525F2C()
{
  v1 = sub_18B6C409C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v7 = v6;
  if (v6)
  {
    if ([v6 attributeForKey_])
    {
      sub_18B6C5AAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  sub_18B526520(&v30, &v28);
  if (!*(&v29 + 1))
  {
    sub_18B4A6454(&v28, &qword_1EA9C5238);
    goto LABEL_30;
  }

  sub_18B4AC60C(0, &qword_1EA9C5580);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v14 = [*(v0 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  v19 = v7;
  v21 = v2;
  v22 = v1;
  v23 = v0;
  v20 = v26;
  sub_18B6C5A4C();
  sub_18B6C408C();
  if (!*(&v29 + 1))
  {
LABEL_31:
    (*(v21 + 8))(v5, v22);
    v14 = [*(v23 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  while (1)
  {
    sub_18B4AF200(&v28, &v26);
    sub_18B4AC60C(0, &qword_1EA9C5588);
    v8 = swift_dynamicCast();
    v9 = v24;
    if (v8)
    {
      v10 = v24 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v26 = 0u;
      v27 = 0u;
LABEL_28:
      sub_18B4A6454(&v26, &qword_1EA9C5238);
      goto LABEL_12;
    }

    *&v24 = sub_18B6C562C();
    *(&v24 + 1) = v11;
    v12 = v9;
    v13 = [v12 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v13)
    {
      sub_18B6C5AAC();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26 = v24;
    v27 = v25;
    if (!*(&v25 + 1))
    {

      goto LABEL_28;
    }

    if (swift_dynamicCast())
    {
      v14 = v24;
      v15 = v23;
      if (v14 != [*(v23 + 32) opaqueSessionID])
      {
        break;
      }
    }

LABEL_12:
    sub_18B6C408C();
    if (!*(&v29 + 1))
    {
      goto LABEL_31;
    }
  }

  v16 = [*(v15 + 16) opaqueSessionID];

  if (v14 == v16)
  {
    goto LABEL_12;
  }

  (*(v21 + 8))(v5, v22);
LABEL_32:
  sub_18B4A6454(&v30, &qword_1EA9C5238);
  return v14;
}

void sub_18B526344()
{
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_18B6C435C();
  __swift_project_value_buffer(v0, qword_1EA9CE398);
  v1 = sub_18B6C434C();
  v2 = sub_18B6C596C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_18B49C000, v1, v2, "Metering: Set process attribution identifier for AVKitRoutingService", v3, 2u);
    MEMORY[0x18CFF91B0](v3, -1, -1);
  }

  v4 = objc_opt_self();
  v5 = sub_18B6C55FC();
  [v4 setCurrentAttributionKey:0 andApp:v5];
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B526520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18B526590()
{
  result = qword_1EA9C55A8;
  if (!qword_1EA9C55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C55A8);
  }

  return result;
}

unint64_t sub_18B5265EC()
{
  result = qword_1EA9C55B8;
  if (!qword_1EA9C55B8)
  {
    sub_18B6C400C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C55B8);
  }

  return result;
}

uint64_t sub_18B526644(uint64_t a1, int a2)
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

uint64_t sub_18B52668C(uint64_t result, int a2, int a3)
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

uint64_t sub_18B526740(uint64_t a1)
{
  if (qword_1EA9C3E00 != -1)
  {
    swift_once();
  }

  if (byte_1EA9CE3C8 == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55D0);
    v3 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v2, v4);
    v6 = &v19 - v5;
    MEMORY[0x1EEE9AC00](v7, v8);
    *(&v19 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55C8);
    sub_18B4A6268(&qword_1EA9C55E0, &qword_1EA9C55C8);
    sub_18B6C4C7C();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55C0);
    v11 = MEMORY[0x1EEE9AC00](v9, v10);
    (*(v3 + 16))(&v19 - v12, v6, v2, v11);
    swift_storeEnumTagMultiPayload();
    sub_18B4A6268(&qword_1EA9C55D8, &qword_1EA9C55D0);
    sub_18B6C4C1C();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55C0);
    MEMORY[0x1EEE9AC00](v14, v15);
    v17 = &v19 - v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55C8);
    (*(*(v18 - 8) + 16))(v17, a1, v18);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55D0);
    sub_18B4A6268(&qword_1EA9C55D8, &qword_1EA9C55D0);
    sub_18B4A6268(&qword_1EA9C55E0, &qword_1EA9C55C8);
    return sub_18B6C4C1C();
  }
}

uint64_t sub_18B526B00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C55C8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_18B526B78()
{
  result = qword_1EA9C55E8;
  if (!qword_1EA9C55E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C55F0);
    sub_18B4A6268(&qword_1EA9C55D8, &qword_1EA9C55D0);
    sub_18B4A6268(&qword_1EA9C55E0, &qword_1EA9C55C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C55E8);
  }

  return result;
}

BOOL static AVExperienceController.TransitionContext.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  if (v2 == 5)
  {
    return v3 == 5;
  }

  else
  {
    return v2 == v3;
  }
}

BOOL static AVExperienceController.TransitionContext.TransitionResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_18B526CE8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  if (v2 == 5)
  {
    if (v3 == 5)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

BOOL sub_18B526D68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t AVExperienceController.TransitionContext.ReversedReason.hashValue.getter()
{
  v1 = *v0;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v1);
  return sub_18B6C5DEC();
}

BOOL _s5AVKit22AVExperienceControllerC17TransitionContextV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  if (v2 == 7)
  {
    if (v5 != 7 || v3 != v6)
    {
      return 0;
    }

    return v4 == a2[2];
  }

  if (v2 == 6)
  {
    if (v5 != 6 || v3 != v6)
    {
      return 0;
    }

    return v4 == a2[2];
  }

  if ((v5 & 0xFE) == 6)
  {
    return 0;
  }

  if (v2 == 5)
  {
    result = 0;
    if (v5 != 5)
    {
      return result;
    }
  }

  else
  {
    if (v5 == 5)
    {
      return 0;
    }

    result = 0;
    if (v2 != v5)
    {
      return result;
    }
  }

  if (v3 == v6)
  {
    return v4 == a2[2];
  }

  return result;
}

unint64_t sub_18B526EF4()
{
  result = qword_1EA9C55F8;
  if (!qword_1EA9C55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C55F8);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s17TransitionContextVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t _s17TransitionContextVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t _s17TransitionContextV6StatusOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 <= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = *a1;
  }

  v9 = v8 - 5;
  if (v7 >= 5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 >= 3)
  {
    return v10 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17TransitionContextV6StatusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_18B5271CC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 5)
  {
    v2 = 5;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 5;
  if (v1 >= 5)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_18B5271EC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t _s17TransitionContextV16TransitionResultOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 5;
  v9 = v7 - 5;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17TransitionContextV16TransitionResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_18B527360(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_18B527374(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_18B5273A4(uint64_t result)
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

  result = sub_18B53BE1C(result, v11, 1, v3);
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

uint64_t AVExperienceController.transition(to:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 280) = a1;
  *(v3 + 288) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 347) = *a2;
  sub_18B6C580C();
  *(v3 + 304) = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  *(v3 + 312) = v6;
  *(v3 + 320) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B52756C, v6, v5);
}

uint64_t sub_18B52756C()
{
  v58 = v0;
  v1 = *(v0 + 288);
  if (*(v1 + 104))
  {

    LOBYTE(v2) = 0;
LABEL_10:
    **(v0 + 280) = v2;

    v11 = *(v0 + 8);

    return v11();
  }

  v3 = v0 + 96;
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  sub_18B6C450C();
  do
  {
    if (!v5)
    {

LABEL_9:

      LOBYTE(v2) = 1;
      goto LABEL_10;
    }

    v7 = *(v0 + 347);
    v8 = *v6++;
    --v5;
  }

  while (v8 != v7);
  v9 = *(v0 + 288);

  swift_beginAccess();
  v10 = *(v9 + 16);
  if (v7 == v10)
  {
    goto LABEL_9;
  }

  v13 = *(v0 + 288);
  *(v1 + 104) = 1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v0 + 347);
    v15 = *(v0 + 288);
    v16 = *(v13 + 48);
    ObjectType = swift_getObjectType();
    v53[0] = 6;
    v53[1] = v10;
    v53[2] = v14;
    (*(v16 + 8))(v15, v53, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 328) = Strong;
  if (!Strong)
  {

    v24 = *(*(v0 + 288) + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v0 + 347);
      v26 = *(v0 + 288);
      v27 = *(v26 + 48);
      v28 = swift_getObjectType();
      v54[0] = 7;
      v54[1] = v24;
      v54[2] = v25;
      (*(v27 + 8))(v26, v54, v28, v27);
      swift_unknownObjectRelease();
    }

    v29 = *(v0 + 288);
    if (*(v0 + 347))
    {
      if (*(v0 + 347) == 1)
      {
        swift_beginAccess();
        if (*(v29 + 88))
        {
          v30 = *(v0 + 288);
          sub_18B4D1D10(v29 + 64, v0 + 16);
          __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
          v31 = *(v30 + 16);
          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32)
          {
            if (v31 > 1)
            {
              v38 = *(v0 + 296);
              v39 = v32;
              v40 = sub_18B6C584C();
              (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
              v41 = swift_allocObject();
              v41[2] = 0;
              v41[3] = 0;
              v41[4] = v39;
              sub_18B5280B4(0, 0, v38, &unk_18B6EAEA0, v41);
            }

            else
            {
            }

            v3 = v0 + 16;
            goto LABEL_41;
          }

          v37 = v0 + 16;
          goto LABEL_38;
        }
      }

      else
      {
        swift_beginAccess();
        if (*(v29 + 88))
        {
          v36 = *(v0 + 288);
          sub_18B4D1D10(v29 + 64, v0 + 56);
          __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
          v57 = *(v36 + 16);
          sub_18B4D2270(&v57, &v56);
          v2 = v56;
          __swift_destroy_boxed_opaque_existential_1(v0 + 56);
          if (v2 != 5)
          {
LABEL_43:
            v46 = *(v0 + 288);
            *(v46 + 104) = 0;
            v47 = *(v46 + 16);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v48 = *(v0 + 347);
              v49 = *(v0 + 288);
              v50 = *(v49 + 48);
              v51 = swift_getObjectType();
              v55[0] = v2;
              v55[1] = v47;
              v55[2] = v48;
              (*(v50 + 8))(v49, v55, v51, v50);
              swift_unknownObjectRelease();
            }

            goto LABEL_10;
          }

LABEL_42:
          *(*(v0 + 288) + 16) = *(v0 + 347);
          LOBYTE(v2) = 5;
          goto LABEL_43;
        }
      }
    }

    else
    {
      swift_beginAccess();
      if (*(v29 + 88))
      {
        v33 = *(v0 + 288);
        sub_18B4D1D10(v29 + 64, v0 + 96);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v34 = *(v33 + 16);
        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          if (v34 > 1)
          {
            v42 = *(v0 + 296);
            v43 = v35;
            v44 = sub_18B6C584C();
            (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
            v45 = swift_allocObject();
            v45[2] = 0;
            v45[3] = 0;
            v45[4] = v43;
            sub_18B5280B4(0, 0, v42, &unk_18B6EAEA8, v45);
          }

          else
          {
          }

LABEL_41:
          __swift_destroy_boxed_opaque_existential_1(v3);
          goto LABEL_42;
        }

        v37 = v0 + 96;
LABEL_38:
        __swift_destroy_boxed_opaque_existential_1(v37);
        LOBYTE(v2) = 2;
        goto LABEL_43;
      }
    }

    LOBYTE(v2) = 4;
    goto LABEL_43;
  }

  v19 = *(v0 + 347);
  v20 = *(v13 + 48);
  v21 = swift_getObjectType();
  *(v0 + 344) = 6;
  *(v0 + 345) = v10;
  *(v0 + 346) = v19;
  v52 = (*(v20 + 16) + **(v20 + 16));
  v22 = swift_task_alloc();
  *(v0 + 336) = v22;
  *v22 = v0;
  v22[1] = sub_18B527BB0;
  v23 = *(v0 + 288);

  return v52(v23, v0 + 344, v21, v20);
}

uint64_t sub_18B527BB0()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_18B527CF4, v3, v2);
}

uint64_t sub_18B527CF4()
{
  v34 = v0;

  v1 = *(*(v0 + 288) + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 347);
    v3 = *(v0 + 288);
    v4 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v30[0] = 7;
    v30[1] = v1;
    v30[2] = v2;
    (*(v4 + 8))(v3, v30, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 288);
  if (!*(v0 + 347))
  {
    swift_beginAccess();
    if (*(v6 + 88))
    {
      v7 = v0 + 96;
      v16 = *(v0 + 288);
      sub_18B4D1D10(v6 + 64, v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      v17 = *(v16 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (v17 > 1)
        {
          v11 = *(v0 + 296);
          v20 = Strong;
          v21 = sub_18B6C584C();
          (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
          v14 = swift_allocObject();
          v14[2] = 0;
          v14[3] = 0;
          v14[4] = v20;
          v15 = &unk_18B6EAEA8;
          goto LABEL_19;
        }

LABEL_12:

LABEL_20:
        __swift_destroy_boxed_opaque_existential_1(v7);
        goto LABEL_21;
      }

LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v7);
      LOBYTE(v19) = 2;
      goto LABEL_22;
    }

LABEL_16:
    LOBYTE(v19) = 4;
    goto LABEL_22;
  }

  if (*(v0 + 347) == 1)
  {
    swift_beginAccess();
    if (*(v6 + 88))
    {
      v7 = v0 + 16;
      v8 = *(v0 + 288);
      sub_18B4D1D10(v6 + 64, v0 + 16);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v9 = *(v8 + 16);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (v9 >= 2)
        {
          v11 = *(v0 + 296);
          v12 = Strong;
          v13 = sub_18B6C584C();
          (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
          v14 = swift_allocObject();
          v14[2] = 0;
          v14[3] = 0;
          v14[4] = v12;
          v15 = &unk_18B6EAEA0;
LABEL_19:
          sub_18B5280B4(0, 0, v11, v15, v14);

          goto LABEL_20;
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  swift_beginAccess();
  if (!*(v6 + 88))
  {
    goto LABEL_16;
  }

  v18 = *(v0 + 288);
  sub_18B4D1D10(v6 + 64, v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v33 = *(v18 + 16);
  sub_18B4D2270(&v33, &v32);
  v19 = v32;
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  if (v19 == 5)
  {
LABEL_21:
    *(*(v0 + 288) + 16) = *(v0 + 347);
    LOBYTE(v19) = 5;
  }

LABEL_22:
  v22 = *(v0 + 288);
  *(v22 + 104) = 0;
  v23 = *(v22 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v0 + 347);
    v25 = *(v0 + 288);
    v26 = *(v25 + 48);
    v27 = swift_getObjectType();
    v31[0] = v19;
    v31[1] = v23;
    v31[2] = v24;
    (*(v26 + 8))(v25, v31, v27, v26);
    swift_unknownObjectRelease();
  }

  **(v0 + 280) = v19;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_18B5280B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
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

uint64_t sub_18B5283A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5608);
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5608);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B5286A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
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

uint64_t sub_18B528990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC8);
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC8);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B528C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_18B528F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
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

uint64_t sub_18B529280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
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

uint64_t sub_18B529568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v26 - v11;
  sub_18B52A62C(a3, v26 - v11);
  v13 = sub_18B6C584C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_18B4A6454(v12, &qword_1EA9C4E70);
  }

  else
  {
    sub_18B6C583C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_18B6C57CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_18B6C564C() + 32;
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

      sub_18B4A6454(a3, &qword_1EA9C4E70);

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

  sub_18B4A6454(a3, &qword_1EA9C4E70);
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

uint64_t sub_18B529850(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D2E3C(a1, v4, v5, v6);
}

uint64_t sub_18B529904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CCBCC;

  return sub_18B4D2AE4(a1, v4, v5, v6);
}

uint64_t AVExperienceController.experience.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t AVExperienceController.allowedExperiences.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
  return sub_18B6C450C();
}

void sub_18B529A44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  sub_18B6C450C();

  v4 = *(v3 + 24);
  sub_18B6C450C();
  v5 = sub_18B4A2674(0, v4);

  if (v5)
  {
    sub_18B529BE4();
  }

  else
  {
    sub_18B6C5C5C();
    __break(1u);
  }
}

void AVExperienceController.allowedExperiences.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;

  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  sub_18B6C450C();
  while (v4)
  {
    v6 = *v5++;
    --v4;
    if (!v6)
    {

      sub_18B529BE4();
      return;
    }
  }

  sub_18B6C5C5C();
  __break(1u);
}

void sub_18B529BE4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v0 + 32) = v1;
  sub_18B6C450C();
  sub_18B529E7C();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 32);
    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    sub_18B6C450C();
    do
    {
      v7 = v5;
      if (v5-- == 0)
      {
        break;
      }

      v9 = *v6++;
    }

    while (v9 != 2);
    v10 = v7 != 0;

    [v3 setIncludeMultiviewButton_];
  }
}

void (*AVExperienceController.allowedExperiences.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_18B529D10;
}

void sub_18B529D10(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(*(a1 + 24) + 24);
    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    sub_18B6C450C();
    while (v5)
    {
      v7 = *v6++;
      --v5;
      if (!v7)
      {

        sub_18B529BE4();
        return;
      }
    }

    sub_18B6C5C5C();
    __break(1u);
  }
}

uint64_t AVExperienceController.availableExperiences.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
  return sub_18B6C450C();
}

uint64_t sub_18B529E10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  sub_18B6C450C();
  sub_18B529E7C();
}

uint64_t sub_18B529E7C()
{
  v1 = sub_18B6C450C();
  v2 = sub_18B529F7C(v1);
  swift_beginAccess();
  v3 = sub_18B6C450C();
  v4 = sub_18B529F7C(v3);
  v5 = sub_18B52A69C(v2, v4);

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      v10 = *(v0 + 32);
      v9 = *(v7 + 24);
      sub_18B6C450C();
      v9(v0, &v10, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_18B529F7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 - 1;
  if (v2 < v2 - 1)
  {
    v3 = *(a1 + 16);
  }

  if (v2)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_18B52BE1C();
  v6 = MEMORY[0x18CFF74E0](v4, &type metadata for AVExperienceController.Experience, v5);
  v13 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      sub_18B52A80C(&v12, v9);
      --v7;
    }

    while (v7);
    v10 = v13;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

void sub_18B52A058(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  swift_unknownObjectWeakAssign();
  sub_18B529BE4();
}

uint64_t AVExperienceController.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  sub_18B529BE4();
  return swift_unknownObjectRelease();
}

void (*AVExperienceController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_18B52A1AC;
}

void sub_18B52A1AC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_18B529BE4();
  }

  free(v3);
}

uint64_t sub_18B52A238(void *a1)
{
  *(v1 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v12[0] = MEMORY[0x1E69E7CC0];
  v10 = v12;
  v11 = sub_18B4AB3D8(sub_18B52BE70, v9, &unk_1EFECC758);
  sub_18B5273A4(v3);
  sub_18B4AB534(v11, (v1 + 24));
  v12[0] = v3;
  v8[2] = v12;
  v11 = sub_18B4AB3D8(sub_18B52BF1C, v8, &unk_1EFECC758);
  sub_18B5273A4(v3);
  sub_18B4AB534(v11, (v1 + 32));
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 89) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 64) = 0u;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = type metadata accessor for AVExperienceControllerAdapter_iOS();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  v12[3] = v5;
  v12[4] = &off_1EFECE328;

  v12[0] = v6;
  swift_beginAccess();
  sub_18B52BEAC(v12, v1 + 64);
  swift_endAccess();
  return v1;
}

uint64_t AVExperienceController.deinit()
{

  sub_18B4B2F58(v0 + 40);
  MEMORY[0x18CFF9250](v0 + 56);
  sub_18B4A6454(v0 + 64, &qword_1EA9C5600);
  return v0;
}

uint64_t AVExperienceController.__deallocating_deinit()
{

  sub_18B4B2F58(v0 + 40);
  MEMORY[0x18CFF9250](v0 + 56);
  sub_18B4A6454(v0 + 64, &qword_1EA9C5600);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of AVExperienceController.Delegate.experienceController(_:prepareForTransitionUsing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18B4CC5A0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_18B52A62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B52A69C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_18B6C5DCC();
    MEMORY[0x18CFF79C0](v13);
    result = sub_18B6C5DEC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B52A80C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](a2);
  v6 = sub_18B6C5DEC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_18B52AB54(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_18B52A904()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5618);
  result = sub_18B6C5B2C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_18B6C5DCC();
      MEMORY[0x18CFF79C0](v16);
      result = sub_18B6C5DEC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_18B52AB54(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18B52A904();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_18B52ACA0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_18B52ADE0();
  }

  v8 = *v3;
  sub_18B6C5DCC();
  MEMORY[0x18CFF79C0](v4);
  result = sub_18B6C5DEC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18B6C5D1C();
  __break(1u);
  return result;
}

void *sub_18B52ACA0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5618);
  v2 = *v0;
  v3 = sub_18B6C5B1C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_18B52ADE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5618);
  result = sub_18B6C5B2C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_18B6C5DCC();
      MEMORY[0x18CFF79C0](v15);
      result = sub_18B6C5DEC();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18B52B000(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_18B52B0F4;

  return v5(v2 + 32);
}

uint64_t sub_18B52B0F4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_18B52B208(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_18B52B2FC;

  return v5(v2 + 16);
}

uint64_t sub_18B52B2FC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[2];
  v4 = v1[3];
  *v2 = v1[1];
  v2[1] = v3;
  v2[2] = v4;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_18B52B418(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B52B208(a1, v4);
}

uint64_t sub_18B52B4D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CC5A0;

  return sub_18B52B208(a1, v4);
}

uint64_t sub_18B52B588(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 72) = v3;
  *v3 = v2;
  v3[1] = sub_18B52B67C;

  return v5(v2 + 16);
}

uint64_t sub_18B52B67C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;

  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *v2 = *(v1 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_18B52B7C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B52B588(a1, v4);
}

uint64_t sub_18B52B87C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_18B52B970;

  return v5(v2 + 32);
}

uint64_t sub_18B52B970()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_18B52BA84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B52B87C(a1, v4);
}

uint64_t sub_18B52BB3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B52B000(a1, v4);
}

uint64_t sub_18B52BBF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4D138C(a1, v4);
}

uint64_t sub_18B52BCAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B52B000(a1, v4);
}

uint64_t sub_18B52BD64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18B4CCBCC;

  return sub_18B4F4054(a1, v4);
}

unint64_t sub_18B52BE1C()
{
  result = qword_1EA9C5610;
  if (!qword_1EA9C5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5610);
  }

  return result;
}

uint64_t sub_18B52BEAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_18B52C020()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVMobileGlassBackgroundDimmingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_18B52C078(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_18B6C5C6C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_18B4F48D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x18CFF7750](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_18B4F48D8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_18B4AF200(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_18B4F48D8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_18B4AF200(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_18B52C244(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_18B6C5C6C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_18B4F48D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x18CFF7750](i, a1);
        sub_18B4AC60C(0, &qword_1EA9C3988);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_18B4F48D8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_18B4AF200(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_18B4AC60C(0, &qword_1EA9C3988);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_18B4F48D8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_18B4AF200(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_18B52C47C()
{
  v17 = [v0 layer];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18B6EB040;
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
    v5 = [v4 CGColor];

    *(inited + 32) = v5;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];
    v7 = [v6 CGColor];

    *(inited + 40) = v7;
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.3];
    v9 = [v8 CGColor];

    *(inited + 48) = v9;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
    v11 = [v10 CGColor];

    *(inited + 56) = v11;
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.6];
    v13 = [v12 CGColor];

    *(inited + 64) = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18B6EB040;
    sub_18B4AC60C(0, &qword_1EA9C3988);
    *(v14 + 32) = sub_18B6C5A5C();
    *(v14 + 40) = sub_18B6C5A5C();
    *(v14 + 48) = sub_18B6C5A5C();
    *(v14 + 56) = sub_18B6C5A5C();
    *(v14 + 64) = sub_18B6C5A5C();
    sub_18B52C078(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v15 = sub_18B6C575C();

    [v2 setColors_];

    v16 = sub_18B6C575C();

    [v2 setLocations_];
  }

  else
  {
  }
}

id sub_18B52C8A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVMobileGlassBackgroundGradientDimmingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B52C8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MicrophoneManager();
  swift_allocObject();
  sub_18B6C450C();
  v7 = sub_18B4CCBD4(a1, a2, 0);
  sub_18B52D924();
  sub_18B6C450C();
  v25 = a1;
  v8 = sub_18B52CD08(a1, a2, 0);
  v9 = [v8 localizedName];

  v10 = sub_18B6C562C();
  v12 = v11;

  v27[3] = v6;
  v27[4] = &off_1EFECE008;
  v27[0] = v7;
  type metadata accessor for RoutingControllerInputPickerViewModel();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v27, v6);
  v15 = MEMORY[0x1EEE9AC00](v14, v14);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  sub_18B6C450C();

  v20 = sub_18B52D970(v19, v25, a2, v10, v12, 0, v13);
  __swift_destroy_boxed_opaque_existential_1(v27);
  *(v3 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel) = v20;

  v26 = v20;

  sub_18B6C531C();
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C5660));

  v22 = sub_18B6C4B4C();

  return v22;
}

id sub_18B52CD08(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = sub_18B6C55FC();

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_18B6C405C();

    swift_willThrow();
  }

  return v5;
}

double sub_18B52CE64()
{
  result = *MEMORY[0x1E69DE788];
  qword_1EA9CE368 = *MEMORY[0x1E69DE788];
  qword_1EA9CE370 = 0x4046800000000000;
  return result;
}

uint64_t sub_18B52CFD0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_applicationBundleID);
  *v5 = a1;
  v5[1] = a2;
  sub_18B6C450C();

  if (a2)
  {
    v7 = *(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel);
    if (v7)
    {
      v7[11] = a1;
      v7[12] = a2;

      swift_beginAccess();
      v8 = v7[17];
      v9 = v7[18];
      __swift_mutable_project_boxed_opaque_existential_1((v7 + 14), v8);
      v10 = *(v9 + 16);
      sub_18B6C450C();
      v10(a1, a2, v8, v9);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_18B52D1C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_18B52D2BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount);
  v6 = *(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount);
  *v5 = a1;
  v5[1] = a2;
  sub_18B4A324C(a1);
  result = sub_18B4A31A4(v6);
  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel);
    if (v8)
    {
      v9 = *(v8 + 16);
      *(v8 + 16) = a1;
      *(v8 + 24) = a2;

      sub_18B4A31A4(v9);
    }

    else
    {

      return sub_18B4A31A4(a1);
    }
  }

  return result;
}

uint64_t sub_18B52D508(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl);
  v4 = *(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateGainControl);
  *v3 = a1;
  v3[1] = a2;
  result = sub_18B4A31A4(v4);
  if (*(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_didUpdateInputOptionsCount))
  {
    v6 = *(v2 + OBJC_IVAR___AVControlCenterMicrophonePickerWrapper_viewModel);
    if (v6)
    {
      v7 = *v3;
      v8 = v3[1];
      v9 = *(v6 + 32);
      *(v6 + 32) = v7;
      *(v6 + 40) = v8;

      sub_18B4A324C(v7);
      sub_18B4A31A4(v9);
    }
  }

  return result;
}

id sub_18B52D6D0()
{
  v1 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_18B6C435C();
  __swift_project_value_buffer(v2, qword_1EA9CE398);
  v3 = sub_18B6C434C();
  v4 = sub_18B6C596C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_18B49C000, v3, v4, "[deinit] AVControlCenterMicrophonePickerWrapper deinit", v5, 2u);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for AVControlCenterMicrophonePickerWrapper();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

unint64_t sub_18B52D924()
{
  result = qword_1EA9C3A50;
  if (!qword_1EA9C3A50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9C3A50);
  }

  return result;
}

uint64_t sub_18B52D970(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, int a6, uint64_t a7)
{
  v8 = a6;
  v118 = a6;
  v116 = a2;
  v117 = a4;
  v115 = a3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v11);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v103 = &v97 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F40);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v16);
  v100 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v98 = &v97 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F60);
  v111 = *(v113 - 8);
  v114 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v113, v21);
  v112 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v110 = &v97 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50);
  v26 = *(v109 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v109, v28);
  v108 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v97 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v97 - v35;
  v119 = &v97 - v35;
  v124 = type metadata accessor for MicrophoneManager();
  v125 = &off_1EFECE008;
  v123[0] = a1;
  type metadata accessor for RoutingControllerInputPickerViewModel.State();
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E7CC0];
  *(v37 + 16) = MEMORY[0x1E69E7CC0];
  *(v37 + 24) = v38;
  *(v37 + 32) = 0u;
  *(v37 + 48) = 0u;
  *(v37 + 64) = 0u;
  *(v37 + 80) = 255;
  *(v37 + 88) = 0x3FF0000000000000;
  sub_18B6C424C();
  *(a7 + 64) = v37;
  type metadata accessor for AVInputPickerTaskRegistry();
  v39 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v39 + 112) = sub_18B4F7930(v38);
  *(a7 + 80) = v39;
  *(a7 + 104) = 0;
  *(a7 + 152) = [objc_allocWithZone(type metadata accessor for MeterController()) init];
  v40 = v116;
  *(a7 + 48) = v117;
  *(a7 + 56) = a5;
  v41 = v115;
  *(a7 + 88) = v40;
  *(a7 + 96) = v41;
  sub_18B4D1D10(v123, a7 + 112);
  *(a7 + 72) = v8;
  v42 = sub_18B6C584C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v116 = v43 + 56;
  v117 = v44;
  v44(v36, 1, 1, v42);
  v45 = __swift_project_boxed_opaque_existential_1(v123, v124);
  v46 = v26;
  v47 = *(v26 + 16);
  v48 = v109;
  v47(v32, *v45 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_availableMicrophonesStream, v109);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = v48;
  v47(&v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v48);
  sub_18B6C580C();

  v51 = sub_18B6C57FC();
  v52 = v46;
  (*(v46 + 8))(v32, v50);
  v53 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v54 = swift_allocObject();
  v55 = MEMORY[0x1E69E85E0];
  *(v54 + 16) = v51;
  *(v54 + 24) = v55;
  (*(v52 + 32))(v54 + v53, v108, v50);
  *(v54 + ((v27 + v53 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v56 = v119;
  sub_18B5280B4(0, 0, v119, &unk_18B6EB0E0, v54);

  v115 = v42;
  v117(v56, 1, 1, v42);
  v57 = a7;
  v58 = __swift_project_boxed_opaque_existential_1(v123, v124);
  v60 = v110;
  v59 = v111;
  v61 = *(v111 + 16);
  v62 = v113;
  v61(v110, *v58 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_selectedMicrophoneStream, v113);
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = v112;
  v61(v112, v60, v62);

  v65 = sub_18B6C57FC();
  (*(v59 + 8))(v60, v62);
  v66 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v67 = (v114 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  *(v68 + 24) = MEMORY[0x1E69E85E0];
  (*(v59 + 32))(v68 + v66, v64, v62);
  v69 = v68 + v67;
  *v69 = v63;
  *(v69 + 8) = v118;

  v70 = v119;
  sub_18B5280B4(0, 0, v119, &unk_18B6EB0E8, v68);

  v121 = &type metadata for FeatureFlags;
  v122 = sub_18B51370C();
  LOBYTE(v63) = sub_18B6C42EC();
  __swift_destroy_boxed_opaque_existential_1(&v120);
  if (v63)
  {
    v114 = v57;
    v117(v70, 1, 1, v115);
    v71 = __swift_project_boxed_opaque_existential_1(v123, v124);
    v72 = v101;
    v73 = *(v101 + 16);
    v74 = v98;
    v75 = v102;
    v73(v98, *v71 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_inputGainStream, v102);
    v76 = swift_allocObject();
    swift_weakInit();
    v77 = v100;
    v73(v100, v74, v75);

    v78 = sub_18B6C57FC();
    (*(v72 + 8))(v74, v75);
    v79 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v80 = (v99 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    *(v81 + 16) = v78;
    *(v81 + 24) = MEMORY[0x1E69E85E0];
    (*(v72 + 32))(v81 + v79, v77, v75);
    v82 = v81 + v80;
    *v82 = v76;
    *(v82 + 8) = v118;

    v83 = v119;
    sub_18B5280B4(0, 0, v119, &unk_18B6EB0F0, v81);

    v117(v83, 1, 1, v115);
    v57 = v114;
    v84 = __swift_project_boxed_opaque_existential_1(v123, v124);
    v85 = v106;
    v86 = *(v106 + 16);
    v87 = v103;
    v88 = v107;
    v86(v103, *v84 + OBJC_IVAR____TtC5AVKit17MicrophoneManager_canSetInputGainStream, v107);
    v89 = swift_allocObject();
    swift_weakInit();

    v90 = v105;
    v86(v105, v87, v88);
    sub_18B4D1D10(v123, &v120);

    v91 = sub_18B6C57FC();
    (*(v85 + 8))(v87, v88);
    v92 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v93 = (v104 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v95 = swift_allocObject();
    *(v95 + 16) = v91;
    *(v95 + 24) = MEMORY[0x1E69E85E0];
    (*(v85 + 32))(v95 + v92, v90, v88);
    *(v95 + v93) = v89;
    sub_18B4A31D4(&v120, v95 + v94);
    *(v95 + v94 + 40) = v118;

    sub_18B5280B4(0, 0, v119, &unk_18B6EB0F8, v95);
  }

  __swift_destroy_boxed_opaque_existential_1(v123);
  return v57;
}

uint64_t sub_18B52E498(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F50) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18B4CCBCC;

  return sub_18B50C0DC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_18B52E5C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_18B4CC5A0;

  return sub_18B50C718(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t objectdestroy_22Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 9, v4 | 7);
}

uint64_t sub_18B52E7DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F40) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_18B4CCBCC;

  return sub_18B50D204(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_18B52E920(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F30) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 40);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_18B4CCBCC;

  return sub_18B50DCF4(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B52EABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v83 = a2;
  v6 = sub_18B6C55FC();
  v7 = objc_opt_self();
  v8 = [v7 bundleWithIdentifier_];

  v86 = sub_18B6C52EC();
  v85 = sub_18B6C4F7C();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  *&v91 = a1;
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v9 = OBJC_IVAR____TtC5AVKit15MeterController__micVal;
  v10 = (*(a1 + OBJC_IVAR____TtC5AVKit15MeterController__micVal) + -0.1) / 0.7;
  if (v10 < 1.0 && (v10 < 0.0 || v10 <= 0.25))
  {
    v12 = sub_18B6C55FC();
    v13 = [v7 bundleWithIdentifier_];

    sub_18B6C52EC();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A0);
    MEMORY[0x1EEE9AC00](v14 - 8, v15);
    v17 = &v81 - v16;
    sub_18B6C4B2C();
    v18 = sub_18B6C4B3C();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
    v19 = sub_18B6C52BC();

    sub_18B4A6454(v17, &qword_1EA9C57A0);
    v20 = v83;

    v21 = v82;

    v22 = sub_18B6C4F7C();
    v23 = swift_getKeyPath();
    *&v87 = v19;
    *(&v87 + 1) = v20;
    *&v88 = v21;
    *(&v88 + 1) = v23;
    v89 = v22;
    LOBYTE(v90) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A8);
    sub_18B5323D4();
    sub_18B6C4C1C();
    v87 = v91;
    v88 = v92;
    v89 = v93;
    v90 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C57D8);
    sub_18B532514();
    sub_18B6C4C1C();

LABEL_18:

    goto LABEL_39;
  }

  swift_getKeyPath();
  *&v91 = a1;
  sub_18B6C421C();

  v24 = (*(a1 + v9) + -0.1) / 0.7;
  if (v24 >= 1.0 || (v24 >= 0.0 ? (v25 = v24 <= 0.25) : (v25 = 1), !v25))
  {
    swift_getKeyPath();
    *&v91 = a1;
    sub_18B6C421C();

    v26 = (*(a1 + v9) + -0.1) / 0.7;
    if (v26 < 1.0 && (v26 < 0.0 || v26 <= 0.5))
    {
      v28 = sub_18B6C55FC();
      v29 = [v7 bundleWithIdentifier_];

      sub_18B6C52EC();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A0);
      MEMORY[0x1EEE9AC00](v30 - 8, v31);
      v33 = &v81 - v32;
      sub_18B6C4B2C();
      v34 = sub_18B6C4B3C();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v35 = sub_18B6C52BC();

      sub_18B4A6454(v33, &qword_1EA9C57A0);
      v36 = v83;

      v37 = v82;

      v38 = sub_18B6C4F7C();
      v39 = swift_getKeyPath();
      *&v87 = v35;
      *(&v87 + 1) = v36;
      *&v88 = v37;
      *(&v88 + 1) = v39;
      v89 = v38;
      LOBYTE(v90) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A8);
      sub_18B5323D4();
      sub_18B6C4C1C();
      v87 = v91;
      v88 = v92;
      v89 = v93;
      v90 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C57D8);
      sub_18B532514();
      sub_18B6C4C1C();

      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  *&v91 = a1;
  sub_18B6C421C();

  v40 = (*(a1 + v9) + -0.1) / 0.7;
  if (v40 < 1.0 && (v40 >= 0.0 ? (v41 = v40 <= 0.5) : (v41 = 1), v41) || (swift_getKeyPath(), *&v91 = a1, sub_18B6C421C(), , v42 = (*(a1 + v9) + -0.1) / 0.7, v42 >= 1.0) || (v42 >= 0.0 ? (v43 = v42 > 0.75) : (v43 = 0), v43))
  {
    swift_getKeyPath();
    *&v91 = a1;
    sub_18B6C421C();

    v56 = (*(a1 + v9) + -0.1) / 0.7;
    if (v56 < 1.0 && (v56 < 0.0 || v56 <= 0.75))
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = -256;
      goto LABEL_43;
    }

    v64 = sub_18B6C55FC();
    v65 = [v7 bundleWithIdentifier_];

    sub_18B6C52EC();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A0);
    MEMORY[0x1EEE9AC00](v66 - 8, v67);
    v69 = &v81 - v68;
    sub_18B6C4B2C();
    v70 = sub_18B6C4B3C();
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v71 = sub_18B6C52BC();

    sub_18B4A6454(v69, &qword_1EA9C57A0);
    v72 = v83;

    v73 = v82;

    v74 = sub_18B6C4F7C();
    v75 = swift_getKeyPath();
    *&v87 = v71;
    *(&v87 + 1) = v72;
    *&v88 = v73;
    *(&v88 + 1) = v75;
    v89 = v74;
    LOBYTE(v90) = 1;
  }

  else
  {
    v44 = sub_18B6C55FC();
    v45 = [v7 bundleWithIdentifier_];

    sub_18B6C52EC();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A0);
    MEMORY[0x1EEE9AC00](v46 - 8, v47);
    v49 = &v81 - v48;
    sub_18B6C4B2C();
    v50 = sub_18B6C4B3C();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = sub_18B6C52BC();

    sub_18B4A6454(v49, &qword_1EA9C57A0);
    v52 = v83;

    v53 = v82;

    v54 = sub_18B6C4F7C();
    v55 = swift_getKeyPath();
    *&v87 = v51;
    *(&v87 + 1) = v52;
    *&v88 = v53;
    *(&v88 + 1) = v55;
    v89 = v54;
    LOBYTE(v90) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C57A8);
  sub_18B5323D4();
  sub_18B6C4C1C();
  v87 = v91;
  v88 = v92;
  v89 = v93;
  LOBYTE(v90) = v94;
  HIBYTE(v90) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C57D8);
  sub_18B532514();
  sub_18B6C4C1C();

LABEL_39:

  v59 = *(&v91 + 1);
  v58 = v91;
  v61 = *(&v92 + 1);
  v60 = v92;
  v62 = v93;
  if (v95)
  {
    v76 = 256;
  }

  else
  {
    v76 = 0;
  }

  v63 = v76 | v94;
  sub_18B53258C();
LABEL_43:
  v77 = v86;

  v78 = KeyPath;

  v79 = v85;

  sub_18B5325FC(v58, v59, v60, v61, v62, v63);
  sub_18B532614(v58, v59, v60, v61, v62, v63);
  *a4 = v77;
  *(a4 + 8) = v78;
  *(a4 + 16) = v79;
  *(a4 + 24) = 0x3FD3333333333333;
  *(a4 + 32) = v58;
  *(a4 + 40) = v59;
  *(a4 + 48) = v60;
  *(a4 + 56) = v61;
  *(a4 + 64) = v62;
  *(a4 + 72) = v63;
  sub_18B532614(v58, v59, v60, v61, v62, v63);
}

__n128 sub_18B52F788@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = sub_18B6C54BC();
  v8 = v7;
  sub_18B52EABC(v3, v4, v5, &v12);
  v18 = v14;
  v19[0] = v15[0];
  *(v19 + 10) = *(v15 + 10);
  v16 = v12;
  v17 = v13;
  v20[2] = v14;
  v21[0] = v15[0];
  *(v21 + 10) = *(v15 + 10);
  v20[0] = v12;
  v20[1] = v13;
  sub_18B4A63EC(&v16, &v11, &qword_1EA9C5798);
  sub_18B4A6454(v20, &qword_1EA9C5798);
  *a1 = v6;
  *(a1 + 8) = v8;
  v9 = v19[0];
  *(a1 + 48) = v18;
  *(a1 + 64) = v9;
  *(a1 + 74) = *(v19 + 10);
  result = v17;
  *(a1 + 16) = v16;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18B52F868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[5];
  v7 = sub_18B5321B8(*a1, *a2, v6);
  v8 = a2[4];
  sub_18B6C54BC();
  result = sub_18B6C479C();
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v26;
    v23 = v26;
    v24 = v27;
    v11 = v28;
    v25 = v28;
    v14 = xmmword_18B6EB110;
    v15 = xmmword_18B6EB120;
    LOBYTE(v16) = v7 & 1;
    *(&v16 + 1) = v8;
    v17 = v26;
    v18 = v27;
    v13[103] = v5 >= v6 - 1;
    *(a3 + 64) = v27;
    *(a3 + 80) = v11;
    *(a3 + 32) = v16;
    *(a3 + 48) = v10;
    v12 = v15;
    *a3 = v14;
    *(a3 + 16) = v12;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    *(a3 + 105) = v5 >= v6 - 1;
    v19 = v11;
    v20[0] = xmmword_18B6EB110;
    v20[1] = xmmword_18B6EB120;
    v21 = v7 & 1;
    v22 = v8;

    sub_18B4A63EC(&v14, v13, &qword_1EA9C5750);
    return sub_18B4A6454(v20, &qword_1EA9C5750);
  }

  return result;
}

uint64_t sub_18B52F9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = sub_18B6C4A8C();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5720);
    v10 = 0;
    v11 = v4;
    swift_getKeyPath();
    v12 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = *(v1 + 8);
    *(v7 + 40) = *(v1 + 24);
    *(v7 + 48) = v5;
    *(v7 + 56) = v4;
    v8 = v3;
    sub_18B531F78(&v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5728);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5730);
    sub_18B531FD4();
    sub_18B4A6268(&qword_1EA9C5748, &qword_1EA9C5730);
    return sub_18B6C544C();
  }

  return result;
}

uint64_t sub_18B52FB20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1 + 2;
  v6 = v1 + 3;
  v7 = *(v1 + 32);
  v8 = v1[5];
  if (v7)
  {
    v5 = v6;
  }

  v9 = *v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5788);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5790);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v24 - v18;
  v20 = *(sub_18B6C48FC() + 20);
  v21 = *MEMORY[0x1E697F470];
  v22 = sub_18B6C4AAC();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = v3;
  *(v19 + 1) = v4;
  *&v19[*(v16 + 44)] = v8;
  sub_18B4B1DB4(v19, v14, &qword_1EA9C5790);
  *&v14[*(v11 + 44)] = v9;
  sub_18B4B1DB4(v14, a1, &qword_1EA9C5788);
}

uint64_t sub_18B52FCDC()
{
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();
}

uint64_t sub_18B52FD88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  *a2 = *(v3 + OBJC_IVAR____TtC5AVKit15MeterController__audioSession);
}

uint64_t sub_18B52FE3C()
{
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C420C();
}

float sub_18B52FF58(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  return *(v2 + *a2);
}

float sub_18B52FFF8@<S0>(uint64_t *a1@<X0>, void *a2@<X4>, float *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_18B5300D4(void *result, float a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
    sub_18B6C420C();
  }

  return result;
}

void *sub_18B5301E0()
{
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v1 = *(v0 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  v2 = v1;
  return v1;
}

id sub_18B530290@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v4 = *(v3 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  *a2 = v4;

  return v4;
}

void sub_18B530350(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5AVKit15MeterController__receiver;
  v5 = *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
    sub_18B6C420C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_18B4AC60C(0, &qword_1EA9C5718);
  v6 = v5;
  v7 = a1;
  v8 = sub_18B6C5A6C();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

char *sub_18B5304E8()
{
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController__audioSession] = 0;
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController_minValue] = -1038090240;
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController_maxValue] = 0;
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController__micVal] = 0;
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController__peakVal] = 0;
  *&v0[OBJC_IVAR____TtC5AVKit15MeterController__receiver] = 0;
  sub_18B6C424C();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MeterController();
  v1 = objc_msgSendSuper2(&v9, sel_init);
  v2 = objc_allocWithZone(MEMORY[0x1E698D4F0]);
  v3 = sub_18B6C55FC();
  v4 = [v2 initWithIdentifier_];

  sub_18B530350(v4);
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v5 = OBJC_IVAR____TtC5AVKit15MeterController__receiver;
  v6 = *&v1[OBJC_IVAR____TtC5AVKit15MeterController__receiver];
  if (v6)
  {
    [v6 setDelegate_];
  }

  swift_getKeyPath();
  sub_18B6C421C();

  v7 = *&v1[v5];
  if (v7)
  {
    [v7 stopReceivingAudioSampleType_];
  }

  return v1;
}

id sub_18B5306EC()
{
  sub_18B530FC4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MeterController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MeterController()
{
  result = qword_1EA9C3D40;
  if (!qword_1EA9C3D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B530854()
{
  v1 = v0;
  v2 = sub_18B6C553C();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18B6C556C();
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18B6C554C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v15 = sub_18B6C435C();
  __swift_project_value_buffer(v15, qword_1EA9CE398);
  v16 = sub_18B6C434C();
  v17 = sub_18B6C596C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_18B49C000, v16, v17, "MeterController starting.", v18, 2u);
    MEMORY[0x18CFF91B0](v18, -1, -1);
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v19 = *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  if (v19)
  {
    [v19 startReceivingAudioSampleType_];
  }

  sub_18B4AC60C(0, &qword_1EA9C3DC8);
  (*(v11 + 104))(v14, *MEMORY[0x1E69E7F88], v10);
  v20 = sub_18B6C598C();
  (*(v11 + 8))(v14, v10);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_18B531DF8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B533A4C;
  aBlock[3] = &block_descriptor_45;
  v22 = _Block_copy(aBlock);

  sub_18B6C555C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_18B531D4C(&qword_1EA9C3DE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C5708);
  sub_18B531D94();
  sub_18B6C5ACC();
  MEMORY[0x18CFF7560](0, v9, v5, v22);
  _Block_release(v22);

  (*(v26 + 8))(v5, v2);
  (*(v24 + 8))(v9, v25);
}

void sub_18B530D30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    aBlock[0] = v1;
    sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
    sub_18B6C421C();

    v2 = OBJC_IVAR____TtC5AVKit15MeterController__audioSession;
    if (!*&v1[OBJC_IVAR____TtC5AVKit15MeterController__audioSession])
    {
      type metadata accessor for MeteringSession();
      swift_allocObject();
      sub_18B5231FC();
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath, v4);
      aBlock[0] = v1;
      sub_18B6C420C();
    }

    swift_getKeyPath();
    aBlock[0] = v1;
    sub_18B6C421C();

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = *(v5 + 64);
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_18B5265E4;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_18B533A4C;
      aBlock[3] = &block_descriptor_52;
      v8 = _Block_copy(aBlock);

      [v6 addOperationWithBlock_];
      _Block_release(v8);
    }
  }
}

uint64_t sub_18B530FC4()
{
  v1 = v0;
  v2 = sub_18B6C553C();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_18B6C556C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_18B6C554C();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v11 = sub_18B6C435C();
  __swift_project_value_buffer(v11, qword_1EA9CE398);
  v12 = sub_18B6C434C();
  v13 = sub_18B6C596C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_18B49C000, v12, v13, "MeterController stopping.", v14, 2u);
    MEMORY[0x18CFF91B0](v14, -1, -1);
  }

  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC5AVKit15MeterController___observationRegistrar;
  aBlock[0] = v1;
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  v29 = v15;
  sub_18B6C421C();

  v16 = *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__audioSession);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath, v18);
  *(&v29 - 2) = v1;
  *(&v29 - 1) = 0;
  aBlock[0] = v1;

  sub_18B6C420C();

  sub_18B4AC60C(0, &qword_1EA9C3DC8);
  v19 = v30;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E7F88], v30);
  v20 = sub_18B6C598C();
  (*(v7 + 8))(v10, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  aBlock[4] = sub_18B531D2C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B533A4C;
  aBlock[3] = &block_descriptor_6;
  v22 = _Block_copy(aBlock);

  v23 = v31;
  sub_18B6C555C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_18B531D4C(&qword_1EA9C3DE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9C5708);
  sub_18B531D94();
  v24 = v33;
  v25 = v36;
  sub_18B6C5ACC();
  MEMORY[0x18CFF7560](0, v23, v24, v22);
  _Block_release(v22);

  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v23, v34);

  swift_getKeyPath();
  aBlock[0] = v1;
  sub_18B6C421C();

  v26 = *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  if (v26)
  {
    v27 = v26;
    [v27 stopReceivingAudioSampleType_];
  }
}

void sub_18B531590(uint64_t a1)
{
  if (a1)
  {

    sub_18B525B98();
    sub_18B524BF8();
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v1 = sub_18B6C435C();
    __swift_project_value_buffer(v1, qword_1EA9CE398);
    oslog = sub_18B6C434C();
    v2 = sub_18B6C596C();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_18B49C000, oslog, v2, "Audio session cleanup completed", v3, 2u);
      MEMORY[0x18CFF91B0](v3, -1, -1);
    }
  }
}

void sub_18B5316A4(void *a1)
{
  v2 = v1;
  v4 = [a1 data];
  v5 = [a1 metadata];
  v6 = sub_18B6C55BC();

  sub_18B6C5B0C();
  if (*(v6 + 16) && (v7 = sub_18B4F5064(v14), (v8 & 1) != 0))
  {
    sub_18B4AF1A4(*(v6 + 56) + 32 * v7, v15);
    sub_18B4F90B4(v14);

    if (swift_dynamicCast())
    {
      [v4 floatValue];
      v10 = (v9 + 40.0) / 40.0;
      v11 = OBJC_IVAR____TtC5AVKit15MeterController__peakVal;
      if (*(v2 + OBJC_IVAR____TtC5AVKit15MeterController__peakVal) == v10)
      {

        *(v2 + v11) = v10;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath, v13);
        v14[0] = v2;
        sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
        sub_18B6C420C();
      }
    }

    else
    {
    }
  }

  else
  {

    sub_18B4F90B4(v14);
  }
}

uint64_t sub_18B531A18()
{
  result = sub_18B6C425C();
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

uint64_t sub_18B531AC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18B6C521C();
  sub_18B6C54BC();
  sub_18B6C479C();
  *&v11[6] = v12;
  *&v11[22] = v13;
  *&v11[38] = v14;
  v5 = a1;
  v6 = sub_18B6C520C();
  v7 = sub_18B6C51EC();
  *v15 = v4;
  *&v15[8] = 256;
  *&v15[10] = *v11;
  *&v15[26] = *&v11[16];
  *&v15[42] = *&v11[32];
  *&v15[56] = *(&v14 + 1);
  v8 = *&v15[16];
  *a2 = *v15;
  *(a2 + 16) = v8;
  v9 = *&v15[48];
  *(a2 + 32) = *&v15[32];
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  *(a2 + 80) = v7;
  sub_18B4A63EC(v15, &v16, &qword_1EA9C5760);
  v16 = v4;
  v17 = 256;
  v18 = *v11;
  v19 = *&v11[16];
  *v20 = *&v11[32];
  *&v20[14] = *(&v14 + 1);
  return sub_18B4A6454(&v16, &qword_1EA9C5760);
}

double sub_18B531C00@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_18B6C54BC();
  v6 = v5;
  sub_18B531AC8(v3, &v11);
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v17 = v11;
  v18 = v12;
  v24 = v16;
  v23[2] = v13;
  v23[3] = v14;
  v23[4] = v15;
  v23[0] = v11;
  v23[1] = v12;
  sub_18B4A63EC(&v17, &v10, &qword_1EA9C5758);
  sub_18B4A6454(v23, &qword_1EA9C5758);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = v7;
  *(a1 + 80) = v21;
  *(a1 + 96) = v22;
  result = *&v17;
  v9 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v9;
  return result;
}

float sub_18B531CE4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5AVKit15MeterController__peakVal) = result;
  return result;
}

float sub_18B531CFC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC5AVKit15MeterController__micVal) = result;
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B531D4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18B531D94()
{
  result = qword_1EA9C3DD0;
  if (!qword_1EA9C3DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9C5708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3DD0);
  }

  return result;
}

uint64_t sub_18B531E00()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC5AVKit15MeterController__audioSession) = *(v0 + 24);
}

void sub_18B531E44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__receiver);
  *(v1 + OBJC_IVAR____TtC5AVKit15MeterController__receiver) = v2;
  v4 = v2;
}

uint64_t sub_18B531E84(uint64_t *a1, int a2)
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

uint64_t sub_18B531ECC(uint64_t result, int a2, int a3)
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

unint64_t sub_18B531FD4()
{
  result = qword_1EA9C5738;
  if (!qword_1EA9C5738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5728);
    sub_18B532060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5738);
  }

  return result;
}

unint64_t sub_18B532060()
{
  result = qword_1EA9C5740;
  if (!qword_1EA9C5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5740);
  }

  return result;
}

uint64_t sub_18B5320B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v5 = *(a1 + OBJC_IVAR____TtC5AVKit15MeterController__micVal) * a2;
  if (COERCE_INT(fabs(v5)) > 2139095039)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_18B5321B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_18B5320B4(a2, a3) <= a1 && v6 > a1)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_18B531D4C(&unk_1EA9C3D50, type metadata accessor for MeterController);
  sub_18B6C421C();

  v8 = *(a2 + OBJC_IVAR____TtC5AVKit15MeterController__peakVal) * a3;
  if (COERCE_INT(fabs(v8)) > 2139095039)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return v8 == a1;
}

uint64_t sub_18B5322E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18B532330(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_18B5323D4()
{
  result = qword_1EA9C3B40;
  if (!qword_1EA9C3B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C57A8);
    sub_18B532474();
    sub_18B4A6268(&unk_1EA9C3B08, &qword_1EA9C57D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3B40);
  }

  return result;
}

unint64_t sub_18B532474()
{
  result = qword_1EA9C3B58;
  if (!qword_1EA9C3B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9C57B0);
    sub_18B4A6268(&qword_1EA9C3B18, &unk_1EA9C57C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3B58);
  }

  return result;
}

unint64_t sub_18B532514()
{
  result = qword_1EA9C3B30;
  if (!qword_1EA9C3B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9C57D8);
    sub_18B5323D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3B30);
  }

  return result;
}

uint64_t sub_18B532594()
{
}

uint64_t sub_18B5325FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a6) != 255)
  {
    return sub_18B53258C();
  }

  return result;
}

uint64_t sub_18B532614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (HIBYTE(a6) != 255)
  {
    return sub_18B53262C();
  }

  return result;
}

uint64_t sub_18B532634()
{
}

unint64_t sub_18B532698()
{
  result = qword_1EA9C57E8;
  if (!qword_1EA9C57E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5788);
    sub_18B532718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C57E8);
  }

  return result;
}

unint64_t sub_18B532718()
{
  result = qword_1EA9C57F0;
  if (!qword_1EA9C57F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5790);
    sub_18B5327B8();
    sub_18B4A6268(&qword_1EA9C5800, &qword_1EA9C4E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C57F0);
  }

  return result;
}

unint64_t sub_18B5327B8()
{
  result = qword_1EA9C4980;
  if (!qword_1EA9C4980)
  {
    sub_18B6C48FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C4980);
  }

  return result;
}

uint64_t sub_18B53285C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_18B5328A0()
{
  v1 = OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController;
  v2 = *(v0 + OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController);
  }

  else
  {
    v4 = sub_18B532904();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18B532904()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = objc_allocWithZone(type metadata accessor for _AVOOPInputViewController());
  v2 = sub_18B53541C(sub_18B5339A8, v0);

  v3 = v2;
  [v3 setModalPresentationStyle_];
  v4 = sub_18B532BAC();
  [v3 setTransitioningDelegate_];

  return v3;
}

void sub_18B5329CC(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = [objc_opt_self() mainRunLoop];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = a2 & 1;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    v18 = sub_18B533998;
    v19 = v9;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_18B533A4C;
    v17 = &block_descriptor_13;
    v10 = _Block_copy(&v14);
    v11 = v4;
    sub_18B4A324C(a3);

    [v8 performBlock_];
    _Block_release(v10);
  }

  else
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_18B533978;
    v19 = v12;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_18B533A4C;
    v17 = &block_descriptor_7;
    v13 = _Block_copy(&v14);

    [v4 dismissViewControllerAnimated:a2 & 1 completion:v13];
    _Block_release(v13);
  }
}

id sub_18B532BAC()
{
  v1 = OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___inputPickerTransitioningDelegate;
  v2 = *&v0[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___inputPickerTransitioningDelegate];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_18B532C90(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_18B5339E0(v4);
  }

  sub_18B5339F0(v2);
  return v3;
}

id sub_18B532C1C()
{
  v1 = OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for InputPickerPresenterViewController.InputPickerContainerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_18B532C90(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v9 = *&a1[OBJC_IVAR___AVInputPickerPresenterViewController_sourceView];
    v10 = sub_18B532C1C();
    type metadata accessor for InputPickerTransitioningDelegate.PresentationStyle.AnchorInfo();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v11 + 32) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    *(v11 + 32) = &off_1EFED0A80;
    swift_unknownObjectWeakAssign();

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = type metadata accessor for InputPickerTransitioningDelegate();
    v13 = objc_allocWithZone(v5);
    v14 = &v13[OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle];
    *v14 = v11;
    v14[1] = sub_18B533A00;
    v14[2] = v12;
    v16.receiver = v13;
    v8 = &v16;
  }

  else
  {
    result = 0;
    if (v3)
    {
      return result;
    }

    v5 = type metadata accessor for InputPickerTransitioningDelegate();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC5AVKit32InputPickerTransitioningDelegate_presentationStyle];
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    v15 = v6;
    v8 = &v15;
  }

  v8->super_class = v5;
  return [(objc_super *)v8 init];
}

void sub_18B532E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = a2;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_18B533A4C;
    aBlock[3] = a3;
    v8 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

void sub_18B5330E0(char *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18B5328A0();
  v9 = [v8 presentationController];

  if (v9)
  {
    [v9 setDelegate_];
  }

  v10 = *&a1[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController];
  if (a3)
  {
    v13[4] = a3;
    v13[5] = a4;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_18B533A4C;
    v13[3] = &block_descriptor_16_0;
    v11 = _Block_copy(v13);
    v12 = v10;
    sub_18B4A324C(a3);
  }

  else
  {
    v12 = v10;
    v11 = 0;
  }

  [a1 presentViewController:v12 animated:a2 & 1 completion:v11];
  _Block_release(v11);
}

void sub_18B533228()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock];
    if (v2)
    {

      v2(v3);

      sub_18B4A31A4(v2);
    }

    else
    {
    }
  }
}

id sub_18B533388()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_loadView);
  v1 = sub_18B532C1C();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
    v12 = OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView;
    [*&v0[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView] setAutoresizingMask_];
    return [v0 setView_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_18B53354C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController] = 0;
  *&v3[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView] = 0;
  *&v3[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___inputPickerTransitioningDelegate] = 1;
  v7 = &v3[OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___AVInputPickerPresenterViewController_sourceView] = 0;
  if (a2)
  {
    v8 = sub_18B6C55FC();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id sub_18B53368C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage____aopInputViewController] = 0;
  *&v1[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR___AVInputPickerPresenterViewController____lazy_storage___inputPickerTransitioningDelegate] = 1;
  v4 = &v1[OBJC_IVAR___AVInputPickerPresenterViewController_dismissalBlock];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___AVInputPickerPresenterViewController_sourceView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_18B533808(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  [a3 setNeedsLayout];

  return [a3 layoutIfNeeded];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_18B5339E0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_18B5339F0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_18B533A9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_18B533AE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18B533B6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58A0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v13 - v4;
  *v5 = sub_18B6C4AFC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58A8);
  sub_18B533D58(v1, &v5[*(v6 + 44)]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v7 = *(v13[0] + 16);

  v13[15] = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 80);
  *(v8 + 80) = *(v1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(v1 + 96);
  *(v8 + 128) = *(v1 + 112);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  v11 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v11;
  sub_18B4CBD50(v1, v13);
  sub_18B4A6268(&qword_1EA9C58B0, &qword_1EA9C58A0);
  sub_18B6C51AC();

  return sub_18B4A2DD4(v5);
}

uint64_t sub_18B533D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F60);
  sub_18B6C532C();
  if (v74 != 1)
  {
    goto LABEL_5;
  }

  v75 = *(a1 + 24);
  v4 = *(a1 + 16);
  v74 = v4;

  if ((v75 & 1) == 0)
  {
    sub_18B6C595C();
    v5 = sub_18B6C4E5C();
    sub_18B6C433C();

    v6 = sub_18B6C4A7C();
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v6, v8);
    v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18B6C4A6C();
    swift_getAtKeyPath();
    sub_18B4A6454(&v74, &qword_1EA9C41D8);
    (*(v7 + 8))(v10, v6);
    v4 = v71;
  }

  swift_getKeyPath();
  *&v71 = v4;
  sub_18B4A8418();
  sub_18B6C421C();

  v11 = *(v4 + 16);

  if ((v11 & 1) == 0)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58C0);
    v68 = &v61;
    v69 = *(v18 - 8);
    v70 = v18;
    MEMORY[0x1EEE9AC00](v18, v19);
    v66 = &v61 - v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5790);
    v67 = &v61;
    MEMORY[0x1EEE9AC00](v21, v22);
    v24 = &v61 - v23;
    v25 = *(sub_18B6C48FC() + 20);
    v26 = *MEMORY[0x1E697F470];
    v27 = sub_18B6C4AAC();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    __asm { FMOV            V0.2D, #12.0 }

    *v24 = _Q0;
    sub_18B6C521C();
    v33 = sub_18B6C522C();

    *&v24[*(v21 + 36)] = v33;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F28);
    v64 = &v61;
    v63 = *(v62 - 8);
    MEMORY[0x1EEE9AC00](v62, v34);
    v36 = &v61 - v35;
    v37 = sub_18B6C472C();
    v65 = a2;
    v38 = v37;
    v61 = &v61;
    v39 = *(v37 - 8);
    MEMORY[0x1EEE9AC00](v37, v40);
    v42 = &v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = sub_18B6C4C6C();
    MEMORY[0x1EEE9AC00](v43, v44);
    sub_18B6C4CFC();
    sub_18B6C46DC();
    v45 = swift_allocObject();
    v46 = *(a1 + 80);
    *(v45 + 80) = *(a1 + 64);
    *(v45 + 96) = v46;
    *(v45 + 112) = *(a1 + 96);
    *(v45 + 128) = *(a1 + 112);
    v47 = *(a1 + 16);
    *(v45 + 16) = *a1;
    *(v45 + 32) = v47;
    v48 = *(a1 + 48);
    *(v45 + 48) = *(a1 + 32);
    *(v45 + 64) = v48;
    sub_18B4CBD50(a1, &v71);
    sub_18B5349B0(&qword_1EA9C3F30, MEMORY[0x1EEE7B598]);
    sub_18B5349B0(&qword_1EA9C3F38, MEMORY[0x1EEE7B560]);
    sub_18B6C547C();

    (*(v39 + 8))(v42, v38);
    sub_18B6C475C();
    v49 = sub_18B532718();
    v50 = sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
    v51 = v66;
    v52 = v62;
    sub_18B6C513C();
    (*(v63 + 8))(v36, v52);
    sub_18B4A6454(v24, &qword_1EA9C5790);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58B8);
    v67 = &v61;
    v55 = MEMORY[0x1EEE9AC00](v53, v54);
    v56 = v69;
    v58 = v51;
    v59 = v51;
    v60 = v70;
    (*(v69 + 16))(&v61 - v57, v58, v70, v55);
    swift_storeEnumTagMultiPayload();
    *&v71 = v21;
    *(&v71 + 1) = v52;
    v72 = v49;
    v73 = v50;
    swift_getOpaqueTypeConformance2();
    sub_18B6C4C1C();
    return (*(v56 + 8))(v59, v60);
  }

  else
  {
LABEL_5:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58B8);
    MEMORY[0x1EEE9AC00](v12, v12);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58C0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5790);
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C3F28);
    v15 = sub_18B532718();
    v16 = sub_18B4A6268(&qword_1EA9C3F40, &qword_1EA9C3F28);
    *&v71 = v13;
    *(&v71 + 1) = v14;
    v72 = v15;
    v73 = v16;
    swift_getOpaqueTypeConformance2();
    return sub_18B6C4C1C();
  }
}

uint64_t sub_18B53460C(uint64_t a1, uint64_t a2)
{
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v17 = v16;
  sub_18B5349F8(&v17, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C41E0);
  sub_18B6C532C();
  if (v11 == 0.0 && v12 == 0.0)
  {
    sub_18B6C46FC();
    v13 = v15;
    v14 = v16;
    v11 = v3;
    v12 = v4;
    sub_18B6C533C();
  }

  sub_18B4A6454(&v15, &qword_1EA9C41E0);
  sub_18B6C471C();
  v13 = *(a2 + 56);
  v14 = *(a2 + 72);
  v11 = v5;
  v12 = v6;
  sub_18B6C533C();
  v13 = v15;
  v14 = v16;
  sub_18B6C532C();
  v7 = v11;
  v13 = *(a2 + 56);
  v14 = *(a2 + 72);
  sub_18B6C532C();
  v8 = (v7 - v11) / 250.0;
  if (v8 < 0.0 || v8 > 1.0)
  {
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    if (v8 >= 0.0)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  else
  {
    v13 = *(a2 + 96);
    v14 = *(a2 + 112);
    v11 = (v7 - v11) / 250.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C58C8);
  return sub_18B6C540C();
}

uint64_t sub_18B534804()
{
  sub_18B6C54DC();
  sub_18B6C486C();
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t sub_18B5349B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B5349F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18B534CBC()
{
  v43.receiver = v0;
  v43.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v43, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_sceneHostingController];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD698]) init];
  [v1 setActivationController_];

  [v1 setDelegate_];
  v3 = [v1 sceneViewController];
  [v0 addChildViewController_];

  v4 = [v1 sceneView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v1 sceneViewController];
  [v5 loadViewIfNeeded];

  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v1 sceneView];
  [v7 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5620);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18B6EB760;
  v10 = [v1 sceneView];
  v11 = [v10 leadingAnchor];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [v1 sceneView];
  v17 = [v16 trailingAnchor];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  v22 = [v1 sceneView];
  v23 = [v22 bottomAnchor];

  v24 = [v0 view];
  if (!v24)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v23 constraintEqualToAnchor_];
  *(v9 + 48) = v27;
  v28 = [v1 sceneView];
  v29 = [v28 topAnchor];

  v30 = [v0 view];
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 topAnchor];

  v34 = [v29 constraintEqualToAnchor_];
  *(v9 + 56) = v34;
  sub_18B4AC60C(0, &unk_1EA9C5A20);
  v35 = sub_18B6C575C();

  [v32 activateConstraints_];

  v36 = [v1 sceneViewController];
  [v36 didMoveToParentViewController_];

  v37 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleTapGestureRecognizer];
  [v37 setDelegate_];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v39 = v38;
  [v38 addGestureRecognizer_];

  v40 = [v0 view];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 layer];

    [v42 setHitTestsAsOpaque_];
    return;
  }

LABEL_15:
  __break(1u);
}

id sub_18B53541C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_onTappingForDismissing];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController__kRSInputRoutingActivityBundleID];
  *v7 = 0xD000000000000023;
  *(v7 + 1) = 0x800000018B6FC610;
  v8 = sub_18B6C55FC();
  v9 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v10 = objc_allocWithZone(type metadata accessor for _AVInputRoutePickerViewControllerSceneSpecification());
  v11 = v9;
  v12 = [v10 init];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD688]) initWithProcessIdentity:v11 sceneSpecification:v12];

  *&v2[OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_sceneHostingController] = v13;
  v14 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_18B4A324C(a1);
  sub_18B4A31A4(v14);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);

  return v15;
}

uint64_t sub_18B535588(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  v5 = [v1 view];
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      sub_18B4AC60C(0, &qword_1EA9C39A0);
      v7 = sub_18B6C5A6C();

      if ((v7 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_6:
      v8 = 1;
      return v8 & 1;
    }

    v6 = v4;
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

LABEL_9:
  v9 = [a1 view];
  v10 = [*&v2[OBJC_IVAR____TtC5AVKit25_AVOOPInputViewController_sceneHostingController] sceneView];
  if (v9)
  {
    sub_18B4AC60C(0, &qword_1EA9C39A0);
    v8 = sub_18B6C5A6C();

    v10 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_18B535704@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  if (qword_1EA9C3E00 != -1)
  {
    v30 = a1;
    swift_once();
    a1 = v30;
  }

  v2 = a1 & 1;
  if (byte_1EA9CE3C8 == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A58);
    v4 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v3, v5);
    v7 = v31 - v6;
    LOBYTE(v32) = v2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A38);
    v9 = sub_18B535B98();
    v10 = sub_18B535C44();
    sub_18B6C505C();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A50);
    v13 = MEMORY[0x1EEE9AC00](v11, v12);
    (*(v4 + 16))(v31 - v14, v7, v3, v13);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A30);
    v32 = v8;
    v33 = &type metadata for AVGlassButtonStyle;
    v34 = v9;
    v35 = v10;
    swift_getOpaqueTypeConformance2();
    v15 = sub_18B535BF0();
    v32 = v8;
    v33 = &type metadata for AVChromelessButtonStyle;
    v34 = v9;
    v35 = v15;
    swift_getOpaqueTypeConformance2();
    sub_18B6C4C1C();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A30);
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](v17, v19);
    v21 = v31 - v20;
    LOBYTE(v32) = v2;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A38);
    v23 = sub_18B535B98();
    v24 = sub_18B535BF0();
    sub_18B6C505C();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A50);
    v31[0] = v31;
    v27 = MEMORY[0x1EEE9AC00](v25, v26);
    (*(v18 + 16))(v31 - v28, v21, v17, v27);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A58);
    v29 = sub_18B535C44();
    v32 = v22;
    v33 = &type metadata for AVGlassButtonStyle;
    v34 = v23;
    v35 = v29;
    swift_getOpaqueTypeConformance2();
    v32 = v22;
    v33 = &type metadata for AVChromelessButtonStyle;
    v34 = v23;
    v35 = v24;
    swift_getOpaqueTypeConformance2();
    sub_18B6C4C1C();
    return (*(v18 + 8))(v21, v17);
  }
}

unint64_t sub_18B535B98()
{
  result = qword_1EA9C5A40;
  if (!qword_1EA9C5A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5A40);
  }

  return result;
}

unint64_t sub_18B535BF0()
{
  result = qword_1EA9C5A48;
  if (!qword_1EA9C5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5A48);
  }

  return result;
}

unint64_t sub_18B535C44()
{
  result = qword_1EA9C5A60;
  if (!qword_1EA9C5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5A60);
  }

  return result;
}

unint64_t sub_18B535C98()
{
  result = qword_1EA9C5A68;
  if (!qword_1EA9C5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9C5A38);
    sub_18B535B98();
    sub_18B535C44();
    swift_getOpaqueTypeConformance2();
    sub_18B535BF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C5A68);
  }

  return result;
}

uint64_t sub_18B535DA4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  return v1;
}

uint64_t sub_18B535E2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  return v1;
}

uint64_t sub_18B535E98(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v2 = *(v8 + 16);

  if (v2 <= 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = a1;
    sub_18B6C461C();

    v5 = *(v8 + 16);

    if (!v5)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v6 = sub_18B6C462C();
    }

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_18B6C54FC();
    sub_18B6C486C();
  }

  return result;
}

uint64_t sub_18B536028()
{
  sub_18B6C54FC();
  sub_18B6C486C();
}

uint64_t sub_18B536150(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v7 = *(v25[0] + 16);
  v8 = v7 == 0;
  v9 = 0;
  if (v7)
  {
    while (*(v25[0] + 32 + 8 * v9) != a1)
    {
      v8 = v7 == ++v9;
      if (v7 == v9)
      {
        v9 = 0;
        break;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  v10 = *(v25[0] + 16);
  if (!v10)
  {
  }

  v11 = -v10;
  v12 = 4;
  while (*(v25[0] + 8 * v12) != a2)
  {
    ++v12;
    if (v11 + v12 == 4)
    {
    }
  }

  if (!v8)
  {
    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_18B6C461C();

    v15 = v25[0];
    if ((v12 - 4) >= *(v25[0] + 16))
    {
      __break(1u);
    }

    else
    {
      v24 = v12 - 4;
      KeyPath = *(v25[0] + 8 * v12);

      v15 = swift_getKeyPath();
      swift_getKeyPath();
      sub_18B6C461C();

      if (v9 < *(v25[0] + 16))
      {
        v15 = *(v25[0] + 8 * v9 + 32);

        swift_getKeyPath();
        swift_getKeyPath();
        v3 = sub_18B6C460C();
        v4 = v16;
        v17 = *v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v4 = v17;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    v17 = sub_18B5384D4();
    *v4 = v17;
LABEL_15:
    if (v9 >= *(v17 + 16))
    {
      __break(1u);
    }

    else
    {
      v19 = v17 + 8 * v9;
      v20 = *(v19 + 32);
      *(v19 + 32) = KeyPath;

      (v3)(v25, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v2 = sub_18B6C460C();
      v3 = v21;
      v22 = *v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v22;
      if (result)
      {
        goto LABEL_17;
      }
    }

    result = sub_18B5384D4();
    v22 = result;
    *v3 = result;
LABEL_17:
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = *(v22 + 8 * v12);
      *(v22 + 8 * v12) = v15;

      v2(v25, 0);
    }
  }

  return result;
}

Swift::Void __swiftcall AVMultiviewManager.dismiss()()
{
  if (qword_1EA9C3E38 != -1)
  {
    swift_once();
  }

  v0 = swift_allocObject();
  swift_weakInit();

  sub_18B51C8B0(sub_18B522BF0, v0);
}

id AVContentSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_18B6C55FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AVContentSelectionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_18B6C55FC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AVContentSelectionViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id AVContentSelectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AVContentSelectionViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AVContentSelectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id AVContentSelectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVContentSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B536898(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_18B6C462C();
}

uint64_t AVMultiviewManager.contentSelectionViewController.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_18B6C462C();
}

void (*AVMultiviewManager.contentSelectionViewController.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_18B6C460C();
  return sub_18B536A24;
}

void sub_18B536A24(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t AVMultiviewManager.$contentSelectionViewController.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  sub_18B6C45EC();
  return swift_endAccess();
}

uint64_t sub_18B536B00()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  sub_18B6C45EC();
  return swift_endAccess();
}

uint64_t sub_18B536B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A90);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  (v12)(v6, v11, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  sub_18B6C45FC();
  swift_endAccess();
  return (*(v3 + 8))(v11, v2);
}

uint64_t AVMultiviewManager.$contentSelectionViewController.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A90);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  sub_18B6C45FC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*AVMultiviewManager.$contentSelectionViewController.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A90);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__contentSelectionViewController;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  sub_18B6C45EC();
  swift_endAccess();
  return sub_18B536FA4;
}

void sub_18B536FA4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_18B6C45FC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_18B6C45FC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_18B53710C()
{
  type metadata accessor for AVMultiviewManager();
  swift_allocObject();
  result = sub_18B5376E4();
  qword_1EA9C5A78 = result;
  return result;
}

uint64_t static AVMultiviewManager.default.getter()
{
  if (qword_1EA9C3E40 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18B5371A8@<X0>(void *a1@<X8>)
{
  if (qword_1EA9C3E40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA9C5A78;
}

uint64_t sub_18B537218(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EA9C3E40;

  if (v2 != -1)
  {
    swift_once();
  }

  qword_1EA9C5A78 = v1;
}

uint64_t sub_18B53728C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18B537308();
  }

  return result;
}

uint64_t sub_18B537308()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v26 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v0;
  sub_18B6C461C();

  v27 = v34[0];
  v8 = *(v34[0] + 16);
  if (v8)
  {
    v32 = sub_18B6C580C();
    v9 = (v27 + 32);
    v10 = sub_18B6C584C();
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    v30 = v11 + 56;
    v31 = v12;
    v28 = (v11 + 8);
    v29 = (v11 + 48);
    do
    {
      v13 = *v9;
      v14 = v33;
      v31(v33, 1, 1, v10);
      v15 = v13;
      v16 = sub_18B6C57FC();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = MEMORY[0x1E69E85E0];
      v17[4] = v15;
      sub_18B52A62C(v14, v4);
      LODWORD(v16) = (*v29)(v4, 1, v10);

      if (v16 == 1)
      {
        sub_18B53844C(v4);
      }

      else
      {
        sub_18B6C583C();
        (*v28)(v4, v10);
      }

      v18 = v17[2];
      swift_unknownObjectRetain();

      if (v18)
      {
        swift_getObjectType();
        v19 = sub_18B6C57CC();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      sub_18B53844C(v33);
      v22 = swift_allocObject();
      *(v22 + 16) = &unk_18B6EBA18;
      *(v22 + 24) = v17;
      if (v21 | v19)
      {
        v34[4] = 0;
        v34[5] = 0;
        v34[6] = v19;
        v34[7] = v21;
      }

      swift_task_create();

      ++v9;
      --v8;
    }

    while (v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = sub_18B6C460C();
  *v24 = MEMORY[0x1E69E7CC0];

  v23(v34, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v34[0] = 0;

  return sub_18B6C462C();
}

uint64_t sub_18B5376E4()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AB0);
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__contentSelectionViewController;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AD8);
  sub_18B6C45DC();
  (*(v9 + 32))(v0 + v12, v11, v8);
  *(v0 + OBJC_IVAR____TtC5AVKit18AVMultiviewManager_gridViewCapacity) = 4;
  v13 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__tiles;
  v23 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AE8);
  sub_18B6C45DC();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__activeTileID;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C3F80);
  sub_18B6C45DC();
  (*(v1 + 32))(v0 + v14, v3, v22);
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = sub_18B6C562C();
    v19 = v18;

    if (v17 == 0xD000000000000015 && 0x800000018B6FDA60 == v19 || (sub_18B6C5CEC() & 1) != 0 || v17 == 0xD00000000000001BLL && 0x800000018B6FDA80 == v19)
    {

      return v0;
    }

    v21 = sub_18B6C5CEC();

    if (v21)
    {
      return v0;
    }
  }

  result = sub_18B6C5C5C();
  __break(1u);
  return result;
}

uint64_t sub_18B537AF4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_18B6C461C();

  *a1 = v3;
  return result;
}

uint64_t sub_18B537B70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_18B6C462C();
}

uint64_t sub_18B537BE4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_18B6C460C();
  v5 = v4;
  v6 = a2;
  MEMORY[0x18CFF7330]();
  if (*(*v5 + 16) >= *(*v5 + 24) >> 1)
  {
    sub_18B6C578C();
  }

  sub_18B6C57AC();
  v3(&v8, 0);
}

void sub_18B537CDC(uint64_t a1, _BYTE *a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v6 = a3;
  v7 = sub_18B6C460C();
  v9 = v8;
  sub_18B5385F0(v8, a1, a2, v6);
  v11 = v10;

  v12 = *(*v9 + 16);
  if (v12 < v11)
  {
    __break(1u);
  }

  else
  {
    sub_18B538894(v11, v12);
    v7(&v13, 0);
  }
}

uint64_t sub_18B537DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_18B6C580C();
  v4[4] = sub_18B6C57FC();
  v6 = sub_18B6C57CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B537E88, v6, v5);
}

uint64_t sub_18B537E88()
{
  *(v0 + 56) = AVPlayerViewController.experienceController.getter();
  *(v0 + 72) = 0;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4CAF38;
  v2 = *(v0 + 16);

  return AVExperienceController.transition(to:)(v2, (v0 + 72));
}

uint64_t AVMultiviewManager.deinit()
{
  v1 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__contentSelectionViewController;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__tiles;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__activeTileID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t AVMultiviewManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__contentSelectionViewController;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5A88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__tiles;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5AVKit18AVMultiviewManager__activeTileID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5AB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AVMultiviewManager()
{
  result = qword_1EA9C5AC0;
  if (!qword_1EA9C5AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18B5381D4()
{
  sub_18B538344(319, &qword_1EA9C5AD0, &qword_1EA9C5AD8);
  if (v0 <= 0x3F)
  {
    sub_18B538344(319, &qword_1EA9C5AE0, &qword_1EA9C5AE8);
    if (v1 <= 0x3F)
    {
      sub_18B538344(319, &qword_1EA9C5AF0, &qword_1EA9C3F80);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_18B538344(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_18B6C463C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18B538398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18B4CC5A0;

  return sub_18B537DF0(a1, v4, v5, v6);
}

uint64_t sub_18B53844C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B5384E8(uint64_t a1, uint64_t a2, _BYTE *a3, id a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    v8 = *(v7 + 8 * v6);
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_18B6C461C();

    if (v12 && v9 == v12)
    {
      *a3 = 1;
    }

    if (v9 == a4)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_18B5385F0(uint64_t *a1, uint64_t a2, _BYTE *a3, id a4)
{
  v5 = *a1;
  v6 = sub_18B5384E8(*a1, a2, a3, a4);
  v8 = v6;
  if (!v4 && (v7 & 1) == 0)
  {
    if (!__OFADD__(v6, 1))
    {
      v10 = (v5 + 16);
      v9 = *(v5 + 16);
      if (v6 + 1 == v9)
      {
        return;
      }

      for (i = v6 + 5; ; ++i)
      {
        v14 = i - 4;
        if (i - 4 >= v9)
        {
          break;
        }

        v15 = *(v5 + 8 * i);
        swift_getKeyPath();
        swift_getKeyPath();
        v16 = v15;
        sub_18B6C461C();

        if (v25 && v16 == v25)
        {
          *a3 = 1;
        }

        if (v16 != a4)
        {
          if (v14 != v8)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            if (v8 >= *v10)
            {
              goto LABEL_25;
            }

            if (v14 >= *v10)
            {
              goto LABEL_26;
            }

            v17 = *(v5 + 8 * i);
            v18 = *(v5 + 32 + 8 * v8);
            v19 = v17;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_18B5384D4();
            }

            v20 = v5 + 8 * v8;
            v21 = *(v20 + 32);
            *(v20 + 32) = v19;

            if (v14 >= *(v5 + 16))
            {
              goto LABEL_27;
            }

            v12 = *(v5 + 8 * i);
            *(v5 + 8 * i) = v18;

            *a1 = v5;
          }

          ++v8;
        }

        v10 = (v5 + 16);
        v9 = *(v5 + 16);
        v13 = i - 3;
        if (v13 == v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }
}

unint64_t sub_18B5387D4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18B538894(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
  {
    v4 = sub_18B6C5B7C();
    *v2 = v4;
  }

  result = sub_18B5387D4(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_18B538970(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5BC0);
    v2 = sub_18B6C5C9C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_18B6C450C();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_18B4D1D10(*(a1 + 56) + 40 * v13, v30);
        *&v29 = v15;
        *(&v29 + 1) = v16;
        v26[2] = v29;
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v17 = v29;
        sub_18B4A31D4(v27, v22);
        sub_18B6C450C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4318);
        swift_dynamicCast();
        sub_18B4AF200(&v23, v25);
        sub_18B4AF200(v25, v26);
        sub_18B4AF200(v26, &v24);
        result = sub_18B4F4F14(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_18B4AF200(&v24, v10);
          v8 = v11;
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
          *(v2[6] + 16 * result) = v17;
          result = sub_18B4AF200(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
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

uint64_t sub_18B538C10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B58);
    v2 = sub_18B6C5C9C();
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

  result = sub_18B6C450C();
  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;
    sub_18B6C450C();
    v16;
    swift_dynamicCast();
    sub_18B4AC60C(0, &qword_1EA9C3A48);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_18B4AF200(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_18B4AF200(v31, v32);
    result = sub_18B6C5AEC();
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
    result = sub_18B4AF200(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_18B538EE0()
{
  result = sub_18B6C55FC();
  qword_1EA9CE360 = result;
  return result;
}

id sub_18B538F18()
{
  result = [objc_allocWithZone(type metadata accessor for TipsManager()) init];
  qword_1EA9CE390 = result;
  return result;
}

uint64_t sub_18B539228(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19[-v5];
  v7 = sub_18B6C44DC();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(v11 + 104))(&v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E6982A18], v9);
  v20 = v1;
  sub_18B6C44EC();
  swift_allocObject();
  *&v1[OBJC_IVAR___TipsManager_tipGroup] = sub_18B6C44FC();

  v12 = sub_18B6C584C();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  sub_18B6C580C();
  v13 = v1;
  v14 = a1;
  v15 = sub_18B6C57FC();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v13;
  v16[5] = v14;
  *&v13[OBJC_IVAR___TipsManager_tipObservationTask] = sub_18B5280B4(0, 0, v6, &unk_18B6EBB78, v16);
}

uint64_t sub_18B539460(uint64_t a1)
{
  v2 = OBJC_IVAR___TipsManager_tipDictionary;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_18B53C340(*(v3 + 16), 0);
    v6 = sub_18B53C60C(v17, (v5 + 4), v4, v3);
    swift_bridgeObjectRetain_n();
    sub_18B51C008();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  sub_18B6C450C();
  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *&v17[0] = v5;
  sub_18B53C794(v17);

  v7 = *&v17[0];
  v8 = *(*&v17[0] + 16);
  if (v8)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_18B4F4938(0, v8, 0);
    v9 = v20;
    v10 = v7 + 32;
    do
    {
      sub_18B4A63EC(v10, v17, &qword_1EA9C5038);
      v15[2] = v17[2];
      v15[3] = v17[3];
      v16 = v18;
      v15[0] = v17[0];
      v15[1] = v17[1];

      sub_18B4A31D4(v15, v19);
      v20 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_18B4F4938((v11 > 1), v12 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v12 + 1;
      sub_18B4A31D4(v19, v9 + 40 * v12 + 32);
      v10 += 72;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  v13 = sub_18B6C450C();

  return v13;
}

uint64_t sub_18B539690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[46] = a4;
  v5[47] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B60);
  v5[51] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B68);
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = sub_18B6C580C();
  v5[56] = sub_18B6C57FC();
  v8 = sub_18B6C57CC();
  v5[57] = v8;
  v5[58] = v7;

  return MEMORY[0x1EEE6DFA0](sub_18B539814, v8, v7);
}

uint64_t sub_18B539814()
{
  v1 = *(v0[46] + OBJC_IVAR___TipsManager_tipGroup);
  v0[59] = v1;
  if (v1)
  {

    sub_18B6C44CC();
    v0[60] = swift_getOpaqueTypeConformance2();
    sub_18B6C58EC();
    v0[61] = OBJC_IVAR___TipsManager_tipDictionary;
    v2 = sub_18B6C57FC();
    v0[62] = v2;
    swift_getAssociatedConformanceWitness();
    v3 = swift_task_alloc();
    v0[63] = v3;
    *v3 = v0;
    v3[1] = sub_18B5399E0;
    v4 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v0 + 20, v2, v4);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_18B5399E0()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 456);
    v5 = *(v2 + 464);

    return MEMORY[0x1EEE6DFA0](sub_18B539AF4, v4, v5);
  }

  return result;
}

uint64_t sub_18B539AF4()
{
  if (*(v0 + 184))
  {
    sub_18B4A31D4((v0 + 160), v0 + 200);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B70);
    *(v0 + 512) = v1;
    *(v0 + 520) = *(v1 - 8);
    *(v0 + 528) = swift_task_alloc();
    __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B78);
    v3 = *(v2 - 8);
    v4 = swift_task_alloc();
    sub_18B6C445C();
    *(v0 + 536) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B80);
    swift_task_alloc();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B88);
    swift_task_alloc();
    MEMORY[0x18CFF77F0](v2);
    sub_18B4A6268(&qword_1EA9C3A88, &qword_1EA9C5B88);
    sub_18B6C58EC();

    sub_18B6C5C2C();
    (*(v3 + 8))(v4, v2);
    sub_18B6C5C3C();

    swift_beginAccess();
    v5 = sub_18B6C57FC();
    *(v0 + 544) = v5;
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_18B6C57CC();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 560) = v8;
    *(v0 + 552) = v6;

    return MEMORY[0x1EEE6DFA0](sub_18B539EBC, v6, v8);
  }

  else
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_18B539EBC()
{
  v1 = v0[68];
  v2 = sub_18B6C45AC();
  v0[71] = v2;
  v0[72] = *(v2 - 8);
  v0[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B90);
  v3 = swift_task_alloc();
  v0[74] = v3;
  v0[75] = sub_18B6C5C1C();
  sub_18B4A6268(&qword_1EA9C3A98, &qword_1EA9C5B80);
  v4 = swift_task_alloc();
  v0[76] = v4;
  *v4 = v0;
  v4[1] = sub_18B53A05C;
  v5 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v5);
}

uint64_t sub_18B53A05C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_18B53A36C;
  }

  else
  {
    (*(v2 + 600))();
    v3 = *(v2 + 560);
    v4 = *(v2 + 552);
    v5 = sub_18B53A18C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_18B53A18C()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {

    sub_18B4A6454(v1, &qword_1EA9C5B90);

    v4 = v0[57];
    v5 = v0[58];

    return MEMORY[0x1EEE6DFA0](sub_18B53ACA8, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[73], v1, v3);

    v6 = sub_18B6C5C2C();
    v0[77] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[78] = v8;
    *v8 = v0;
    v8[1] = sub_18B53A3E0;
    v9 = v0[73];

    return (v11)(v0 + 79, v9);
  }
}

uint64_t sub_18B53A36C()
{
  (*(v0 + 600))();
}

uint64_t sub_18B53A3E0()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v4 = *(*v0 + 568);

  (*(v3 + 8))(v2, v4);
  *(v1 + 633) = *(v1 + 632);
  v5 = *(v1 + 560);
  v6 = *(v1 + 552);

  return MEMORY[0x1EEE6DFA0](sub_18B53A58C, v6, v5);
}

uint64_t sub_18B53A58C()
{

  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_18B53A5FC, v1, v2);
}

uint64_t sub_18B53A5FC()
{
  if ((sub_18B6C58DC() & 1) == 0)
  {
    if (*(v0 + 633) == 1)
    {
      v9 = (v0 + 16);
      v10 = *(v0 + 488);
      v11 = *(v0 + 368);
      __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
      v12 = sub_18B6C443C();
      v14 = v13;
      v15 = *(v11 + v10);
      if (*(v15 + 16) && (v16 = v12, sub_18B6C450C(), v17 = sub_18B4F4F14(v16, v14), v19 = v18, , (v19 & 1) != 0))
      {
        sub_18B4A63EC(*(v15 + 56) + 72 * v17, v0 + 16, &qword_1EA9C5038);

        if (*(v0 + 40))
        {
          v20 = *(v0 + 488);
          v21 = *(v0 + 368);
          v23 = *(v0 + 64);
          v22 = *(v0 + 72);
          sub_18B6C450C();
          sub_18B4A6454(v0 + 16, &qword_1EA9C5050);
          __swift_project_boxed_opaque_existential_1((v0 + 200), *(v0 + 224));
          v24 = sub_18B6C443C();
          v26 = v25;
          v27 = *(v21 + v20);
          if (*(v27 + 16) && (v28 = v24, sub_18B6C450C(), v29 = sub_18B4F4F14(v28, v26), v31 = v30, , (v31 & 1) != 0))
          {
            sub_18B4A63EC(*(v27 + 56) + 72 * v29, v0 + 88, &qword_1EA9C5038);

            if (*(v0 + 112))
            {
              v32 = *(v0 + 376);
              v33 = *(v0 + 152);
              sub_18B4A6454(v0 + 88, &qword_1EA9C5050);
              v34 = [v32 view];
              if (!v34)
              {
                __break(1u);
                return MEMORY[0x1EEE6DFA0](v34, v35, v36);
              }

              v37 = v34;
              v38 = sub_18B53B840(v34, v23, v22);

              if (v38)
              {
                if ([v38 isHidden])
                {
                }

                else
                {
                  sub_18B6C44AC();
                  sub_18B4D1D10(v0 + 200, v0 + 240);
                  v57 = v38;
                  v58 = sub_18B6C44BC();
                  v59 = sub_18B6C449C();
                  if (v59)
                  {
                    v60 = *(v0 + 376);
                    v61 = v59;
                    [v59 setPermittedArrowDirections_];
                    [v58 setOverrideUserInterfaceStyle_];
                    [v60 presentViewController:v58 animated:1 completion:0];
                    sub_18B53B26C(v60);
                  }

                  else
                  {
                  }
                }
              }

LABEL_27:
              v54 = sub_18B6C57FC();
              *(v0 + 544) = v54;
              if (v54)
              {
                swift_getObjectType();
                v55 = sub_18B6C57CC();
                v36 = v56;
              }

              else
              {
                v55 = 0;
                v36 = 0;
              }

              *(v0 + 560) = v36;
              *(v0 + 552) = v55;
              v34 = sub_18B539EBC;
              v35 = v55;

              return MEMORY[0x1EEE6DFA0](v34, v35, v36);
            }
          }

          else
          {

            *(v0 + 152) = 0;
            *(v0 + 120) = 0u;
            *(v0 + 136) = 0u;
            *(v0 + 88) = 0u;
            *(v0 + 104) = 0u;
          }

          v9 = (v0 + 88);
        }
      }

      else
      {

        *(v0 + 80) = 0;
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
        *v9 = 0u;
        *(v0 + 32) = 0u;
      }

      sub_18B4A6454(v9, &qword_1EA9C5050);
    }

    v39 = MEMORY[0x1E69E85E0];
    v40 = *(v0 + 384);
    v41 = *(v0 + 392);
    v42 = *(v0 + 376);
    v43 = sub_18B6C584C();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v41, 1, 1, v43);
    v45 = v42;
    v46 = sub_18B6C57FC();
    v47 = swift_allocObject();
    v47[2] = v46;
    v47[3] = v39;
    v47[4] = v45;
    sub_18B4A63EC(v41, v40, &qword_1EA9C4E70);
    LODWORD(v40) = (*(v44 + 48))(v40, 1, v43);

    v48 = *(v0 + 384);
    if (v40 == 1)
    {
      sub_18B4A6454(*(v0 + 384), &qword_1EA9C4E70);
    }

    else
    {
      sub_18B6C583C();
      (*(v44 + 8))(v48, v43);
    }

    v49 = v47[2];
    swift_unknownObjectRetain();

    if (v49)
    {
      swift_getObjectType();
      v50 = sub_18B6C57CC();
      v52 = v51;
      swift_unknownObjectRelease();
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    sub_18B4A6454(*(v0 + 392), &qword_1EA9C4E70);
    v53 = swift_allocObject();
    *(v53 + 16) = &unk_18B6EBBC0;
    *(v53 + 24) = v47;
    if (v52 | v50)
    {
      *(v0 + 312) = 0;
      *(v0 + 320) = 0;
      *(v0 + 328) = v50;
      *(v0 + 336) = v52;
    }

    swift_task_create();

    goto LABEL_27;
  }

  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 416);

  (*(v2 + 8))(v1, v3);
  (*(v5 + 8))(v4, v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + 200);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_18B53ACA8()
{
  (*(v0[65] + 8))(v0[66], v0[64]);

  __swift_destroy_boxed_opaque_existential_1((v0 + 25));
  v1 = sub_18B6C57FC();
  v0[62] = v1;
  swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_18B5399E0;
  v3 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 20, v1, v3);
}

uint64_t sub_18B53AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_18B6C580C();
  *(v4 + 24) = sub_18B6C57FC();
  v6 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B53B084, v6, v5);
}

uint64_t sub_18B53B084()
{
  v1 = *(v0 + 16);

  v2 = [v1 presentedViewController];
  if (v2)
  {
    v3 = v2;
    sub_18B6C44AC();
    v4 = swift_dynamicCastClass();

    if (v4)
    {
      [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_18B53B26C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5B48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18B6E8750;
  v4 = *(v1 + OBJC_IVAR___TipsManager_viewControllerNotificationInfoKey + 8);
  *(inited + 32) = *(v1 + OBJC_IVAR___TipsManager_viewControllerNotificationInfoKey);
  *(inited + 40) = v4;
  *(inited + 48) = a1;
  sub_18B6C450C();
  v5 = a1;
  v6 = sub_18B4F911C(inited);
  swift_setDeallocating();
  sub_18B4A6454(inited + 32, &qword_1EA9C5B50);
  v7 = [objc_opt_self() defaultCenter];
  if (qword_1EA9C3A38 != -1)
  {
    swift_once();
  }

  v8 = qword_1EA9CE360;
  sub_18B538C10(v6);

  v9 = sub_18B6C55AC();

  [v7 postNotificationName:v8 object:v1 userInfo:v9];
}

id sub_18B53B3E4()
{
  *&v0[OBJC_IVAR___TipsManager_tipObservationTask] = 0;
  v1 = OBJC_IVAR___TipsManager_tipDictionary;
  *&v0[v1] = sub_18B4F922C(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR___TipsManager_tipGroup] = 0;
  v2 = &v0[OBJC_IVAR___TipsManager_viewControllerNotificationInfoKey];
  *v2 = 0xD00000000000002CLL;
  *(v2 + 1) = 0x800000018B6FDCD0;
  v3 = OBJC_IVAR___TipsManager_didPresentTipNotificationName;
  if (qword_1EA9C3A38 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA9CE360;
  *&v0[v3] = qword_1EA9CE360;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TipsManager();
  v5 = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_18B53B4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B53B5F4()
{
  v0 = sub_18B6C55FC();
  v1 = sub_18B6C55FC();
  v2 = AVLocalizedString(v0);

  sub_18B6C562C();
  sub_18B4B2068();
  return sub_18B6C500C();
}

uint64_t sub_18B53B6B8()
{
  v0 = sub_18B6C55FC();
  v1 = sub_18B6C55FC();
  v2 = AVLocalizedString(v0);

  sub_18B6C562C();
  sub_18B4B2068();
  return sub_18B6C500C();
}

unint64_t sub_18B53B7EC()
{
  result = qword_1EA9C3D00;
  if (!qword_1EA9C3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9C3D00);
  }

  return result;
}

id sub_18B53B840(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a1 accessibilityIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_18B6C562C();
    v10 = v9;

    if (v8 == a2 && v10 == a3)
    {

      v34 = v5;
      return v5;
    }

    v12 = sub_18B6C5CEC();

    if (v12)
    {
      v13 = v5;
      return v5;
    }
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v5;
    v17 = [v15 visibleCells];
    sub_18B4AC60C(0, &qword_1EA9C5BA0);
    v18 = sub_18B6C576C();

    if (v18 >> 62)
    {
      goto LABEL_69;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18B6C5C6C())
    {
      v20 = 0;
      v58 = v16;
      while ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x18CFF7750](v20, v18);
        v16 = (v20 + 1);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_64;
        }

LABEL_18:
        v5 = v21;
        v22 = [v5 accessibilityIdentifier];
        if (v22)
        {
          v23 = v5;
          v24 = a2;
          v25 = a3;
          v26 = v22;
          v27 = sub_18B6C562C();
          v29 = v28;

          a3 = v25;
          if (v27 == v24 && v29 == v25)
          {

            v5 = v23;
            goto LABEL_63;
          }

          a2 = v24;
          v31 = sub_18B6C5CEC();

          v5 = v23;
          if (v31)
          {
            goto LABEL_59;
          }
        }

        v32 = [v5 contentView];
        v33 = sub_18B53B840(v32, a2, a3);

        if (v33)
        {
          goto LABEL_47;
        }

        ++v20;
        if (v16 == i)
        {
          goto LABEL_46;
        }
      }

      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v21 = *(v18 + 8 * v20 + 32);
      v16 = (v20 + 1);
      if (!__OFADD__(v20, 1))
      {
        goto LABEL_18;
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      ;
    }

LABEL_73:

LABEL_74:

    return 0;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v52 = [v5 subviews];
    sub_18B4AC60C(0, &qword_1EA9C39A0);
    v53 = sub_18B6C576C();

    v16 = (v53 & 0xFFFFFFFFFFFFFF8);
    if (v53 >> 62)
    {
      v18 = sub_18B6C5C6C();
    }

    else
    {
      v18 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; v18 != j; ++j)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v55 = MEMORY[0x18CFF7750](j, v53);
      }

      else
      {
        if (j >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v55 = *(v53 + 8 * j + 32);
      }

      v56 = v55;
      if (__OFADD__(j, 1))
      {
        goto LABEL_65;
      }

      v5 = sub_18B53B840(v55, a2, a3);

      if (v5)
      {

        return v5;
      }
    }

    goto LABEL_74;
  }

  v36 = v35;
  v16 = v5;
  v37 = [v36 visibleCells];
  sub_18B4AC60C(0, &qword_1EA9C5B98);
  v18 = sub_18B6C576C();

  if (v18 >> 62)
  {
LABEL_72:
    v38 = sub_18B6C5C6C();
    if (!v38)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v38 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_73;
    }
  }

  v39 = 0;
  v58 = v16;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x18CFF7750](v39, v18);
      v16 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v39 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_72;
      }

      v40 = *(v18 + 8 * v39 + 32);
      v16 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        goto LABEL_68;
      }
    }

    v5 = v40;
    v41 = [v5 accessibilityIdentifier];
    if (v41)
    {
      break;
    }

LABEL_44:

    v51 = [v5 contentView];
    v33 = sub_18B53B840(v51, a2, a3);

    if (v33)
    {
LABEL_47:

      return v33;
    }

    ++v39;
    if (v16 == v38)
    {
LABEL_46:

      goto LABEL_74;
    }
  }

  v42 = v16;
  v43 = a2;
  v44 = a3;
  v45 = v41;
  v46 = sub_18B6C562C();
  v48 = v47;

  a3 = v44;
  if (v46 != v43 || v48 != v44)
  {
    a2 = v43;
    v50 = sub_18B6C5CEC();

    v16 = v42;
    if (v50)
    {
LABEL_59:

      goto LABEL_63;
    }

    goto LABEL_44;
  }

LABEL_63:

  return v5;
}