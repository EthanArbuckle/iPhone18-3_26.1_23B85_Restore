Swift::Void __swiftcall VideoPlayer.pause()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayer(0);
  objc_msgSendSuper2(&v2, sel_pause);
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  *(v0 + v1) = 0;
}

Swift::Void __swiftcall VideoPlayer.restart()()
{
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks) == 1 && *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 1) != 0 && *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 2) != 0)
  {
    v3 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    v5 = *(MEMORY[0x1E6960CC0] + 16);
    v7.receiver = v0;
    v7.super_class = type metadata accessor for VideoPlayer(0);
    v6[0] = v4;
    v6[1] = *(v3 + 8);
    v6[2] = v5;
    objc_msgSendSuper2(&v7, sel_seekToTime_, v6);
  }
}

Swift::Void __swiftcall VideoPlayer.startPreloading()()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  OUTLINED_FUNCTION_12_4(v3);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - v5;
  sub_1CA19ADF8();
  OUTLINED_FUNCTION_2_5();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  OUTLINED_FUNCTION_4_5();
  sub_1CA10BC7C(v2 + v12, v6, &qword_1EC433170);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) == 1)
  {
    sub_1CA10BDC8(v6, &qword_1EC433170);
  }

  else
  {
    (*(v8 + 32))(v11, v6);
    v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
    OUTLINED_FUNCTION_4_5();
    if (*(v2 + v13))
    {
      v14 = OUTLINED_FUNCTION_0_12();
      v15(v14);
    }

    else
    {
      v16 = sub_1CA185A14();
      [v16 cancelLoading];

      sub_1CA1856EC(1);
      v17 = v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
      OUTLINED_FUNCTION_4_5();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v18 = *(v17 + 8);
        ObjectType = swift_getObjectType();
        (*(v18 + 32))(v2, ObjectType, v18);
        swift_unknownObjectRelease();
      }

      sub_1CA0F2110(0, &qword_1EC4343E8);
      sub_1CA112194(v11);
      OUTLINED_FUNCTION_5_12();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_5_12();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = sub_1CA0F2110(0, &qword_1EE03C230);

      v21 = sub_1CA19C598();
      v24[3] = v20;
      v24[4] = MEMORY[0x1E69AB720];
      v24[0] = v21;
      sub_1CA19BE68();

      v22 = OUTLINED_FUNCTION_0_12();
      v23(v22);
      __swift_destroy_boxed_opaque_existential_2(v24);
    }
  }
}

void sub_1CA1873B8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1CA187514(v1);
  }
}

void sub_1CA18741C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v6 - v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *v2 = sub_1CA19AD18();
    v5 = type metadata accessor for VideoPlaybackFailure(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v5);
    sub_1CA185F8C(v2);
  }
}

void sub_1CA187514(void *a1)
{
  v2 = sub_1CA19C2A8();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v7[4] = sub_1CA189DA8;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1CA0F4068;
  v7[3] = &block_descriptor_18;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v6 loadValuesAsynchronouslyForKeys:v2 completionHandler:v5];
  _Block_release(v5);
}

void sub_1CA187638(uint64_t a1, void *a2)
{
  v115 = *MEMORY[0x1E69E9840];
  v108 = sub_1CA19B2D8();
  v3 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA19B318();
  v106 = *(v5 - 8);
  v107 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CA19BF48();
  v103 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v101 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v95 - v10;
  v11 = sub_1CA19ADF8();
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434448);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v100 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v95 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v26 = Strong;
  v98 = v7;
  v99 = v3;
  v110 = a2;
  v27 = [a2 URL];
  sub_1CA19ADA8();

  __swift_storeEnumTagSinglePayload(v24, 0, 1, v11);
  v28 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
  swift_beginAccess();
  v29 = *(v14 + 48);
  sub_1CA10BC7C(v24, v16, &qword_1EC433170);
  sub_1CA10BC7C(v26 + v28, &v16[v29], &qword_1EC433170);
  if (__swift_getEnumTagSinglePayload(v16, 1, v11) != 1)
  {
    sub_1CA10BC7C(v16, v22, &qword_1EC433170);
    if (__swift_getEnumTagSinglePayload(&v16[v29], 1, v11) != 1)
    {
      v97 = v26;
      v30 = v109;
      (*(v109 + 32))(v13, &v16[v29], v11);
      sub_1CA189DE8(&qword_1EC434450, MEMORY[0x1E6968FB0]);
      v31 = sub_1CA19C0D8();
      v32 = *(v30 + 8);
      v32(v13, v11);
      sub_1CA10BDC8(v24, &qword_1EC433170);
      v32(v22, v11);
      sub_1CA10BDC8(v16, &qword_1EC433170);
      if ((v31 & 1) == 0)
      {

        return;
      }

      goto LABEL_9;
    }

    sub_1CA10BDC8(v24, &qword_1EC433170);
    (*(v109 + 8))(v22, v11);
LABEL_7:
    sub_1CA10BDC8(v16, &qword_1EC434448);

    return;
  }

  sub_1CA10BDC8(v24, &qword_1EC433170);
  if (__swift_getEnumTagSinglePayload(&v16[v29], 1, v11) != 1)
  {
    goto LABEL_7;
  }

  v97 = v26;
  sub_1CA10BDC8(v16, &qword_1EC433170);
LABEL_9:
  v96 = v28;
  v33 = &unk_1F49CC2D8;
  v34 = 2;
  while (1)
  {
    v36 = *(v33 - 1);
    v35 = *v33;
    v37 = swift_allocObject();
    *(v37 + 16) = 0;

    v38 = sub_1CA19C0E8();
    *&aBlock = *(v37 + 16);
    v39 = [v110 statusOfValueForKey:v38 error:&aBlock];

    v40 = aBlock;
    v41 = *(v37 + 16);
    *(v37 + 16) = aBlock;
    v42 = v40;

    if (v39 == 3)
    {
      break;
    }

    v33 += 2;
    if (!--v34)
    {
      v43 = v110;
      v44 = [v110 isPlayable];
      v45 = v98;
      v46 = v103;
      if (v44)
      {
        v47 = [objc_allocWithZone(MEMORY[0x1E69880B0]) initWithAsset_];
        [v47 setPreferredForwardBufferDuration_];
        v48 = v97;
        v49 = sub_1CA1865FC();
        v52 = v108;
        if ((v53 & 1) == 0)
        {
          v54 = v49;
          v55 = v50;
          v56 = v51;
          v57 = v48;
          v58 = HIDWORD(v50);
          v113 = CGSizeMake;
          v114 = 0;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v112 = sub_1CA17EED0;
          *(&v112 + 1) = &block_descriptor_50;
          v59 = _Block_copy(&aBlock);
          *&aBlock = v54;
          *(&aBlock + 1) = __PAIR64__(v58, v55);
          v48 = v57;
          *&v112 = v56;
          [v47 seekToTime:&aBlock completionHandler:v59];
          _Block_release(v59);
          sub_1CA18667C(0, 0, 0, 1);
        }

        sub_1CA0F2110(0, &qword_1EE03C230);
        v60 = sub_1CA19C598();
        v61 = swift_allocObject();
        v61[2] = v48;
        v61[3] = v47;
        v61[4] = v43;
        v113 = sub_1CA189DDC;
        v114 = v61;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v112 = sub_1CA0F4068;
        *(&v112 + 1) = &block_descriptor_47_0;
        v62 = _Block_copy(&aBlock);
        v63 = v48;
        v64 = v47;
        v65 = v43;

        v66 = v104;
        sub_1CA19B2F8();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1CA189DE8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
        sub_1CA0F40C4();
        v67 = v105;
        sub_1CA19C788();
        MEMORY[0x1CCA99C20](0, v66, v67, v62);
        _Block_release(v62);

        (*(v99 + 8))(v67, v52);
        (*(v106 + 8))(v66, v107);
      }

      else
      {
        v74 = v108;
        if (qword_1EC432C88 != -1)
        {
          swift_once();
        }

        v75 = __swift_project_value_buffer(v45, qword_1EC43C8E8);
        v76 = v101;
        (*(v46 + 16))(v101, v75, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434440);
        sub_1CA19B538();
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        sub_1CA19B4F8();
        v77 = v100;
        sub_1CA10BC7C(v97 + v96, v100, &qword_1EC433170);
        if (__swift_getEnumTagSinglePayload(v77, 1, v11) == 1)
        {
          sub_1CA10BDC8(v77, &qword_1EC433170);
          aBlock = 0u;
          v112 = 0u;
        }

        else
        {
          *(&v112 + 1) = v11;
          boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&aBlock);
          (*(v109 + 32))(boxed_opaque_existential_2Tm, v77, v11);
        }

        sub_1CA19B528();
        sub_1CA10BDC8(&aBlock, &qword_1EC433830);
        sub_1CA19BDC8();

        (*(v46 + 8))(v76, v45);
        sub_1CA0F2110(0, &qword_1EE03C230);
        v88 = sub_1CA19C598();
        v89 = swift_allocObject();
        v90 = v97;
        *(v89 + 16) = v97;
        v113 = sub_1CA189DD4;
        v114 = v89;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v112 = sub_1CA0F4068;
        *(&v112 + 1) = &block_descriptor_41_0;
        v91 = _Block_copy(&aBlock);
        v92 = v90;

        v93 = v104;
        sub_1CA19B2F8();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1CA189DE8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
        sub_1CA0F40C4();
        v94 = v105;
        sub_1CA19C788();
        MEMORY[0x1CCA99C20](0, v93, v94, v91);
        _Block_release(v91);

        (*(v99 + 8))(v94, v74);
        (*(v106 + 8))(v93, v107);
      }

      return;
    }
  }

  v68 = v108;
  v69 = v98;
  v70 = v103;
  if (qword_1EC432C88 != -1)
  {
    swift_once();
  }

  v71 = __swift_project_value_buffer(v69, qword_1EC43C8E8);
  (*(v70 + 16))(v102, v71, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434440);
  sub_1CA19B538();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  sub_1CA19B4F8();
  *(&v112 + 1) = MEMORY[0x1E69E6158];
  *&aBlock = v36;
  *(&aBlock + 1) = v35;

  sub_1CA19B518();
  sub_1CA10BDC8(&aBlock, &qword_1EC433830);
  v72 = *(v37 + 16);
  if (v72)
  {
    v73 = sub_1CA0F2110(0, &qword_1EC434388);
  }

  else
  {
    v73 = 0;
    *(&aBlock + 1) = 0;
    *&v112 = 0;
  }

  *&aBlock = v72;
  *(&v112 + 1) = v73;
  v78 = v72;
  sub_1CA19B528();
  sub_1CA10BDC8(&aBlock, &qword_1EC433830);
  v79 = v102;
  sub_1CA19BDC8();

  (*(v70 + 8))(v79, v69);
  sub_1CA0F2110(0, &qword_1EE03C230);
  v80 = sub_1CA19C598();
  v81 = swift_allocObject();
  v82 = v97;
  v81[2] = v97;
  v81[3] = v36;
  v81[4] = v35;
  v81[5] = v37;
  v113 = sub_1CA189DC8;
  v114 = v81;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v112 = sub_1CA0F4068;
  *(&v112 + 1) = &block_descriptor_35;
  v83 = _Block_copy(&aBlock);
  v84 = v82;

  v85 = v104;
  sub_1CA19B2F8();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1CA189DE8(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA0F40C4();
  v86 = v105;
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v85, v86, v83);
  _Block_release(v83);

  (*(v99 + 8))(v86, v68);
  (*(v106 + 8))(v85, v107);
}

uint64_t sub_1CA18876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v14 - v8);
  swift_beginAccess();
  v10 = *(a4 + 16);
  *v9 = a2;
  v9[1] = a3;
  v9[2] = v10;
  v11 = type metadata accessor for VideoPlaybackFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v12 = v10;

  return sub_1CA185F8C(v9);
}

uint64_t sub_1CA188860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for VideoPlaybackFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_1CA185F8C(v2);
}

uint64_t sub_1CA188910(char *a1, void *a2, void *a3)
{
  v6 = a2;
  sub_1CA1859B8(a2);
  sub_1CA1825EC(a3, a1);
  a1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks] = 1;
  sub_1CA186048();
  v7 = &a1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(a1, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall VideoPlayer.releaseAssets()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  OUTLINED_FUNCTION_12_4(v1);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
  OUTLINED_FUNCTION_4_5();
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = [v6 timebase];
    if (v7)
    {
      v8 = v7;
      CMTimebaseGetTime(&v13, v7);
      sub_1CA18667C(v13.value, *&v13.timescale, v13.epoch, 0);
    }
  }

  v9 = sub_1CA185A14();
  [v9 cancelLoading];

  sub_1CA1859B8(0);
  v10 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks;
  *v10 = 0;
  *(v10 + 2) = 0;
  sub_1CA186048();
  v11 = type metadata accessor for VideoPlaybackFailure(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v12 = sub_1CA185F8C(v4);
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_failureCount) = 0;
  sub_1CA186000(v12);
  sub_1CA1856EC(0);
}

void sub_1CA188B20(uint64_t a1)
{
  v93 = *(a1 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433170);
  v5 = OUTLINED_FUNCTION_12_4(v4);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v86 - v9;
  sub_1CA19BF48();
  OUTLINED_FUNCTION_2_5();
  v94 = v11;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v86 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  OUTLINED_FUNCTION_12_4(v18);
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v86 - v20);
  v22 = *a1;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  switch(*(a1 + 48))
  {
    case 1:
      v38 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
      OUTLINED_FUNCTION_4_5();
      v39 = v2[v38];
      if (v39 != 5 && (v39 != 7 || (LOBYTE(v22) & 1) == 0))
      {
        if (LOBYTE(v22))
        {
          v40 = 3;
        }

        else
        {
          v40 = 6;
        }

        sub_1CA1856EC(v40);
      }

      v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 1] = LOBYTE(v22);
      sub_1CA186048();
      return;
    case 2:
      v87 = *(a1 + 16);
      v88 = v25;
      v90 = v21;
      v91 = v1;
      v92 = v2;
      v29 = qword_1EC432C88;

      if (v29 != -1)
      {
        OUTLINED_FUNCTION_2_29();
      }

      v30 = v91;
      v31 = __swift_project_value_buffer(v91, qword_1EC43C8E8);
      (*(v94 + 16))(v15, v31, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434440);
      sub_1CA19B538();
      *(swift_allocObject() + 16) = xmmword_1CA1A7BB0;
      sub_1CA19B4F8();
      v32 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
      v33 = v92;
      OUTLINED_FUNCTION_4_5();
      v89 = v32;
      sub_1CA10BC7C(&v33[v32], v8, &qword_1EC433170);
      v34 = sub_1CA19ADF8();
      if (__swift_getEnumTagSinglePayload(v8, 1, v34) == 1)
      {
        sub_1CA10BDC8(v8, &qword_1EC433170);
        v96 = 0u;
        v97 = 0u;
      }

      else
      {
        *(&v97 + 1) = v34;
        boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v96);
        (*(*(v34 - 8) + 32))(boxed_opaque_existential_2Tm, v8, v34);
      }

      sub_1CA19B508();
      sub_1CA10BDC8(&v96, &qword_1EC433830);
      sub_1CA19B4F8();
      if (v93)
      {
        v22 = 0.0;
        v43 = 0;
        *(&v96 + 1) = 0;
        *&v97 = 0;
      }

      else
      {
        v43 = MEMORY[0x1E69E6530];
      }

      *&v96 = v22;
      *(&v97 + 1) = v43;
      sub_1CA19B518();
      sub_1CA10BDC8(&v96, &qword_1EC433830);
      sub_1CA19B4F8();
      if (v24)
      {
        v44 = MEMORY[0x1E69E6158];
        v45 = v87;
      }

      else
      {
        v45 = 0;
        v44 = 0;
        *&v97 = 0;
      }

      *&v96 = v45;
      *(&v96 + 1) = v24;
      *(&v97 + 1) = v44;
      sub_1CA19B518();
      sub_1CA10BDC8(&v96, &qword_1EC433830);
      sub_1CA19B4F8();
      if (v26)
      {
        v46 = MEMORY[0x1E69E6158];
        v47 = v88;
      }

      else
      {
        v47 = 0;
        v46 = 0;
        *&v97 = 0;
      }

      *&v96 = v47;
      *(&v96 + 1) = v26;
      *(&v97 + 1) = v46;
      sub_1CA19B518();
      sub_1CA10BDC8(&v96, &qword_1EC433830);
      v48 = v91;
      sub_1CA19BDC8();

      (*(v94 + 8))(v15, v48);
      v49 = v90;
      sub_1CA10BC7C(&v92[v89], v90, &qword_1EC433170);
      v50 = type metadata accessor for VideoPlaybackFailure(0);
      OUTLINED_FUNCTION_0_12();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_13();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
      goto LABEL_70;
    case 3:
      v35 = &v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate];
      OUTLINED_FUNCTION_4_5();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v36 = *(v35 + 1);
      ObjectType = swift_getObjectType();
      (*(v36 + 16))(ObjectType, v36, v22);
      goto LABEL_64;
    case 4:
      if (*&v22 == 0.0 && (v27 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state, OUTLINED_FUNCTION_4_5(), v2[v27] == 5))
      {
        v28 = 4;
      }

      else
      {
        if (*&v22 <= 0.0)
        {
          return;
        }

        v28 = 5;
      }

      sub_1CA1856EC(v28);
      return;
    case 5:
      if (v93 | v23 | *&v22 | v24 | v25 | v26)
      {
        if (*&v22 != 1 || v93 | v23 | v24 | v25 | v26)
        {
          if (qword_1EC432C88 != -1)
          {
            OUTLINED_FUNCTION_2_29();
          }

          v69 = __swift_project_value_buffer(v1, qword_1EC43C8E8);
          (*(v94 + 16))(v17, v69, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC434440);
          sub_1CA19B538();
          *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
          sub_1CA19B4F8();
          v70 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_videoUrl;
          OUTLINED_FUNCTION_4_5();
          sub_1CA10BC7C(&v2[v70], v10, &qword_1EC433170);
          v71 = sub_1CA19ADF8();
          if (__swift_getEnumTagSinglePayload(v10, 1, v71) == 1)
          {
            sub_1CA10BDC8(v10, &qword_1EC433170);
            v96 = 0u;
            v97 = 0u;
          }

          else
          {
            *(&v97 + 1) = v71;
            v72 = __swift_allocate_boxed_opaque_existential_2Tm(&v96);
            (*(*(v71 - 8) + 32))(v72, v10, v71);
          }

          sub_1CA19B508();
          sub_1CA10BDC8(&v96, &qword_1EC433830);
          sub_1CA19BDB8();

          (*(v94 + 8))(v17, v1);
        }

        else
        {
          v41 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback;
          OUTLINED_FUNCTION_4_5();
          if (v2[v41] == 1)
          {
            OUTLINED_FUNCTION_7_19(sel_seekToTime_, MEMORY[0x1E6960CC0]);
            [v2 play];
          }

          else
          {
            sub_1CA1856EC(7);
            [v2 pause];
            OUTLINED_FUNCTION_7_19(sel_seekToTime_, MEMORY[0x1E6960CC0]);
          }

          v73 = &v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate];
          OUTLINED_FUNCTION_4_5();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v74 = *(v73 + 1);
            v75 = swift_getObjectType();
            (*(v74 + 24))(v2, v75, v74);
            goto LABEL_64;
          }
        }
      }

      else
      {
        v54 = [v2 currentItem];
        if (!v54)
        {
          return;
        }

        v55 = v54;
        v56 = &v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate];
        OUTLINED_FUNCTION_4_5();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v57 = *(v56 + 1);
          v58 = swift_getObjectType();
          [v55 currentTime];
          Seconds = CMTimeGetSeconds(&time);
          (*(v57 + 48))(v2, v58, v57, Seconds);

LABEL_64:
          swift_unknownObjectRelease();
          return;
        }
      }

      return;
    default:
      if (*&v22 != 2)
      {
        if (*&v22 == 1)
        {
          v2[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playbackChecks + 2] = 1;

          sub_1CA186048();
        }

        return;
      }

      v60 = v93;
      if (!v93)
      {
        goto LABEL_69;
      }

      v61 = v21;
      v62 = v93;
      v63 = [v62 domain];
      v64 = sub_1CA19C118();
      v66 = v65;

      if (qword_1EC432C80 != -1)
      {
        swift_once();
      }

      if (v64 == qword_1EC4343A0 && v66 == *algn_1EC4343A8)
      {
      }

      else
      {
        v68 = sub_1CA19CAF8();

        if ((v68 & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if ([v62 code] == -11839)
      {
        *v61 = v60;
        v76 = type metadata accessor for VideoPlaybackFailure(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_12_13();
        __swift_storeEnumTagSinglePayload(v77, v78, v79, v76);
        v80 = v62;
        sub_1CA185F8C(v61);
        sub_1CA189D54(a1);
        return;
      }

LABEL_68:
      sub_1CA189D54(a1);
      v21 = v61;
LABEL_69:
      *v21 = v60;
      v49 = v21;
      v81 = type metadata accessor for VideoPlaybackFailure(0);
      OUTLINED_FUNCTION_0_12();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_12_13();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
      v85 = v60;
LABEL_70:
      sub_1CA185F8C(v49);
      return;
  }
}

id VideoPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1CA19AD88();
  v5 = [v3 initWithURL_];

  sub_1CA19ADF8();
  OUTLINED_FUNCTION_0_4();
  (*(v6 + 8))(a1);
  return v5;
}

id VideoPlayer.__allocating_init(playerItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPlayerItem_];

  return v3;
}

void sub_1CA18996C()
{
  sub_1CA1899F4();
  if (v0 <= 0x3F)
  {
    sub_1CA189A6C();
    if (v1 <= 0x3F)
    {
      sub_1CA189AD0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1CA1899F4()
{
  if (!qword_1EC434408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4344C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC434408);
    }
  }
}

void sub_1CA189A6C()
{
  if (!qword_1EC434410)
  {
    sub_1CA189D00(0, &qword_1EE03EA78, MEMORY[0x1E6968FB0]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC434410);
    }
  }
}

void sub_1CA189AD0()
{
  if (!qword_1EC434418)
  {
    sub_1CA189B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC434418);
    }
  }
}

void sub_1CA189B18()
{
  if (!qword_1EC434420)
  {
    sub_1CA0F2110(255, &qword_1EC434388);
    v0 = sub_1CA19C6F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC434420);
    }
  }
}

void sub_1CA189B9C()
{
  sub_1CA189D00(319, &qword_1EE03EA78, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1CA189D00(319, &qword_1EC434438, type metadata accessor for VideoPlaybackFailure);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1CA189D00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CA19C6F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CA189DE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA189E30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4343F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA189EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA189F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA189F68(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_29()
{

  return swift_once();
}

id OUTLINED_FUNCTION_7_19@<X0>(const char *a1@<X1>, uint64_t a2@<X8>)
{
  *(v5 - 152) = v2;
  *(v5 - 144) = *(a2 + 8);
  *(v5 - 136) = v3;

  return [v4 a1];
}

uint64_t VideoPlayerState.hashValue.getter(unsigned __int8 a1)
{
  sub_1CA19CBD8();
  MEMORY[0x1CCA9A240](a1);
  return sub_1CA19CC18();
}

uint64_t sub_1CA18A0F8()
{
  v1 = *v0;
  sub_1CA19CBD8();
  VideoPlayerState.hash(into:)(v3, v1);
  return sub_1CA19CC18();
}

unint64_t sub_1CA18A140()
{
  result = qword_1EC434458;
  if (!qword_1EC434458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC434458);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoPlayerState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA18A270(uint64_t a1)
{
  v2 = sub_1CA1921A4(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA192204(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_1CA192464(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_1CA192498(v7, v9, v11 & 1);
  if (v12)
  {
    sub_1CA192498(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_1CA192258(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_1CA192498(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t VideoView.objectGraph.setter()
{
  OUTLINED_FUNCTION_13();
  swift_weakAssign();
}

uint64_t (*VideoView.objectGraph.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_objectGraph;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1CA18A454;
}

uint64_t sub_1CA18A464()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
    swift_beginAccess();
    *(v2 + 8) = 0;
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

id sub_1CA18A4CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer;
  v3 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer];
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_delegate;
    swift_beginAccess();
    *(v4 + 8) = &protocol witness table for VideoView;
    swift_unknownObjectWeakAssign();
    v5 = *&v1[v2];
    if (v5)
    {
      v6 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
      swift_beginAccess();
      LOBYTE(v6) = v6[*(type metadata accessor for VideoConfiguration() + 40)];
      v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback;
      swift_beginAccess();
      *(v5 + v7) = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v8)
  {
    [v8 setPlayer_];
  }

  v9 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayerDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v13 = *&v1[v2];
    v14 = *(v11 + 8);
    v15 = v13;
    v14(v13, ObjectType, v11);

    result = swift_unknownObjectRelease();
  }

  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation;
  if (v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn_];
    result = *&v1[v2];
    if (result)
    {
      result = [result setMuted_];
    }

    v1[v16] = 0;
  }

  return result;
}

void sub_1CA18A688(void *a1)
{
  sub_1CA18A464();
  v3 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer) = a1;
  v4 = a1;

  sub_1CA18A4CC();
}

id VideoView.backgroundColor.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_backgroundColor);

  return v1;
}

void VideoView.backgroundColor.setter(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 setBackgroundColor_];

LABEL_4:
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, sel_setBackgroundColor_, a1);

    return;
  }

  __break(1u);
}

void (*VideoView.backgroundColor.modify(objc_super *a1))(uint64_t a1, char a2)
{
  a1[1].super_class = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  a1[1].receiver = [(objc_super *)a1 backgroundColor];
  return sub_1CA18A8E4;
}

void sub_1CA18A8E4(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    v3 = v2;
    VideoView.backgroundColor.setter(v2);
  }

  else
  {
    VideoView.backgroundColor.setter(*(a1 + 16));
  }
}

id VideoView.frame.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id VideoView.frame.setter()
{
  OUTLINED_FUNCTION_12_0();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_10_1();
  objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
  return sub_1CA18AAAC();
}

id sub_1CA18AAAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CA19B2D8();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1CA19B318();
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA19B2E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  swift_beginAccess();
  if (v1[v12] != 1)
  {
LABEL_4:
    v48.receiver = v1;
    v48.super_class = ObjectType;
    objc_msgSendSuper2(&v48, sel_frame);
    v19 = v18;
    v21 = v20;
    v22 = [objc_opt_self() mainScreen];
    [v22 scale];
    v24 = v23;

    v16 = v19 * v24;
    v17 = v21 * v24;
    goto LABEL_6;
  }

  sub_1CA10BC7C(&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_networkInquiry], aBlock, &qword_1EC4345B0);
  v13 = v45;
  if (v45)
  {
    v14 = v46;
    __swift_project_boxed_opaque_existential_2(aBlock, v45);
    v15 = (*(v14 + 4))(v13, v14);
    __swift_destroy_boxed_opaque_existential_2(aBlock);
    v16 = 0.0;
    v17 = 0.0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_1CA10BDC8(aBlock, &qword_1EC4345B0);
  v16 = 0.0;
  v17 = 0.0;
LABEL_6:
  v25 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer;
  v26 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer];
  if (!v26 || (v27 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem, swift_beginAccess(), (v28 = *(v26 + v27)) == 0) || ((result = [v28 preferredMaximumResolution], v31 == v16) ? (v32 = v30 == v17) : (v32 = 0), !v32))
  {
    sub_1CA0F2110(0, &qword_1EE03C230);
    (*(v9 + 104))(v11, *MEMORY[0x1E69E7F98], v8);
    v33 = sub_1CA19C5E8();
    (*(v9 + 8))(v11, v8);
    v34 = *&v1[v25];
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v16;
    *(v35 + 32) = v17;
    v46 = sub_1CA1925A4;
    v47 = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA0F4068;
    v45 = &block_descriptor_66;
    v36 = _Block_copy(aBlock);
    v37 = v34;
    sub_1CA19B2F8();
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CA19215C(&qword_1EE03C350, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
    sub_1CA1127BC(&qword_1EE03C2A0, &unk_1EC433C70);
    v38 = v42;
    sub_1CA19C788();
    MEMORY[0x1CCA99C20](0, v7, v5, v36);
    _Block_release(v36);

    (*(v41 + 8))(v5, v38);
    (*(v39 + 8))(v7, v40);
  }

  return result;
}

void (*VideoView.frame.modify(objc_super **a1))(double **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[5].receiver = v1;
  ObjectType = swift_getObjectType();
  v3[5].super_class = ObjectType;
  v3[2].receiver = v1;
  v3[2].super_class = ObjectType;
  objc_msgSendSuper2(v3 + 2, sel_frame);
  v3->receiver = v5;
  v3->super_class = v6;
  v3[1].receiver = v7;
  v3[1].super_class = v8;
  return sub_1CA18B080;
}

void sub_1CA18B080(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 10);
  v7 = *(*a1 + 11);
  v9 = *a1;
  if (a2)
  {
    v9[3].receiver = v8;
    v9[3].super_class = v7;
    objc_msgSendSuper2(v9 + 3, sel_setFrame_, v3, v4, v5, v6);
  }

  else
  {
    v9[4].receiver = v8;
    v9[4].super_class = v7;
    objc_msgSendSuper2(v9 + 4, sel_setFrame_, v3, v4, v5, v6);
    sub_1CA18AAAC();
  }

  free(v2);
}

void sub_1CA18B0F0()
{
  v1 = v0;
  v2 = sub_1CA18B258();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_additionalControlInsets];
  v10 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_additionalControlInsets];
  v11 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_additionalControlInsets + 16];
  v12 = [v0 traitCollection];
  v13 = sub_1CA19C5F8();

  v14 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v14)
  {
    v15 = 8;
    if (v13)
    {
      v16 = 24;
    }

    else
    {
      v16 = 8;
    }

    if ((v13 & 1) == 0)
    {
      v15 = 24;
    }

    v17 = v4 + *&v9[v16];
    v18 = v8 + *&v9[v15];
    v19 = objc_opt_self();
    v20 = v14;
    v21 = [v19 valueWithUIEdgeInsets_];
    [v20 setOverrideLayoutMarginsWhenEmbeddedInline_];
  }
}

double sub_1CA18B258()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 6.0;
  if (v1 == 1)
  {
    return 8.0;
  }

  return result;
}

void VideoView.__allocating_init(video:objectGraph:aspectRatio:contentSize:)()
{
  OUTLINED_FUNCTION_19_0();
  v47 = v1;
  v48 = v0;
  v49 = v2;
  v50 = v3;
  v51 = v4;
  v52 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434480);
  v9 = OUTLINED_FUNCTION_12_4(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_4();
  v46 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v43 - v13;
  v44 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  v21 = OUTLINED_FUNCTION_12_4(v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = type metadata accessor for VideoConfiguration();
  v25 = (v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17_4();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  v29 = sub_1CA19B078();
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v29);
  v30 = v25[7];
  __swift_storeEnumTagSinglePayload(&v28[v30], 1, 1, v29);
  v31 = &v28[v25[14]];
  *v28 = 1;
  sub_1CA180894(v23, &v28[v30]);
  v32 = v25[8];
  v33 = v25[9];
  v34 = v25[10];
  v35 = v25[11];
  v36 = v25[12];
  v28[v25[13]] = 0;
  *v31 = 0;
  v31[8] = 1;
  v28[v35] = *(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_allowsAutoPlay);
  v28[v36] = *(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_looping);
  *&v28[v33] = *(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_autoPlayPlaybackControls);
  v28[v34] = *(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_canPlayFullScreen);
  *&v28[v32] = *(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackControls);
  sub_1CA18B6BC(v52, &v28[v30]);
  (*(v15 + 16))(v19, v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_videoUrl, v44);
  OUTLINED_FUNCTION_5_19();
  v44 = v37;
  v38 = OUTLINED_FUNCTION_23_7();
  sub_1CA190728(v38, v39, v40);
  sub_1CA10BC7C(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateMediaEvent, v45, &unk_1EC434480);
  sub_1CA10BC7C(v7 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_templateClickEvent, v46, &unk_1EC434480);

  VideoView.__allocating_init(playbackId:url:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  *&v41[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_video] = v7;
  v42 = v41;

  VideoView.apply(video:withContentSize:)(v7, v50, v51, v49 & 1);

  sub_1CA10BDC8(v52, &qword_1EC4342F0);
  sub_1CA190788(v28, v44);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1CA18B6BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4342F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void VideoView.__allocating_init(playbackId:url:configuration:templateMediaEvent:templateClickEvent:asPartOf:)()
{
  OUTLINED_FUNCTION_19_0();
  v37 = v1;
  v38 = v0;
  v40 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v34 = v8;
  v10 = v1;
  v39 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434480);
  v13 = OUTLINED_FUNCTION_12_4(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_4();
  v35 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = type metadata accessor for VideoConfiguration();
  v20 = OUTLINED_FUNCTION_12_4(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1_3();
  v23 = v22 - v21;
  v36 = sub_1CA19ADF8();
  v24 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1_3();
  v27 = v26 - v25;
  (*(v24 + 16))(v26 - v25, v10);
  sub_1CA190728(v9, v23, type metadata accessor for VideoConfiguration);
  sub_1CA10BC7C(v7, v18, &unk_1EC434480);
  v28 = v5;
  v29 = v5;
  v30 = v35;
  sub_1CA10BC7C(v29, v35, &unk_1EC434480);
  v31 = type metadata accessor for NWPathNetworkInquiry();
  v32 = sub_1CA16F030();
  v42[3] = v31;
  v42[4] = &off_1F49D1A98;
  v42[0] = v32;
  objc_allocWithZone(v38);
  sub_1CA18BAF4(v39, v40, v27, v23, v18, v30, v42);
  sub_1CA10BDC8(v28, &unk_1EC434480);
  sub_1CA10BDC8(v7, &unk_1EC434480);
  sub_1CA190788(v34, type metadata accessor for VideoConfiguration);
  (*(v24 + 8))(v37, v36);
  OUTLINED_FUNCTION_20_0();
}

uint64_t VideoView.apply(video:withContentSize:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = (v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playbackId);
  OUTLINED_FUNCTION_4_5();
  v10 = *v9 == *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackId) && v9[1] == *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_playbackId + 8);
  if (v10 || (result = sub_1CA19CAF8(), (result & 1) != 0))
  {
    *(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_video) = a1;

    VideoView.startPreloading()();
    OUTLINED_FUNCTION_4_5();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = result;
      if ((a4 & 1) == 0)
      {
        v13 = (*(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork) + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
        OUTLINED_FUNCTION_22_5();
        *v13 = a2;
        v13[1] = a3;
      }

      if (*(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview))
      {

        ArtworkImageView.apply(artwork:asPartOf:)(v14, v12);
      }
    }
  }

  return result;
}

char *sub_1CA18BAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  swift_weakInit();
  OUTLINED_FUNCTION_20_7(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_fullScreenDelegate);
  OUTLINED_FUNCTION_20_7(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayerDelegate);
  v14 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork;
  v15 = objc_allocWithZone(type metadata accessor for ArtworkImageView());
  *&v7[v14] = OUTLINED_FUNCTION_19_4();
  v7[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_animatePreviewFrameTransitions] = 0;
  *&v7[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer] = 0;
  *&v7[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController] = 0;
  *&v7[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_video] = 0;
  v16 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton;
  *&v8[v16] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v17 = &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_additionalControlInsets];
  v18 = *(MEMORY[0x1E69DDCE0] + 16);
  *v17 = *MEMORY[0x1E69DDCE0];
  v17[1] = v18;
  v19 = &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prominentPlayButtonLocationOverride];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_preferredUnobscuredArea] = 1;
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation] = 0;
  *&v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen] = 0;
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isTransitioningToFullscreen] = 0;
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_wasAudioOnPreFullScreen] = 0;
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prefersMinimalPlaybackControls] = 0;
  *&v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch] = 0;
  v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_releaseAssetsAtNextPauseState] = 0;
  OUTLINED_FUNCTION_22_5();
  swift_weakAssign();
  v20 = &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playbackId];
  *v20 = a1;
  v20[1] = a2;
  v21 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoUrl;
  v22 = sub_1CA19ADF8();
  v23 = *(v22 - 8);
  v47 = a3;
  (*(v23 + 16))(&v8[v21], a3, v22);
  v43 = a5;
  sub_1CA10BC7C(a5, &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_templateMediaEvent], &unk_1EC434480);
  v42 = a6;
  sub_1CA10BC7C(a6, &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_templateClickEvent], &unk_1EC434480);
  OUTLINED_FUNCTION_5_19();
  v45 = a4;
  sub_1CA190728(a4, &v8[v24], v25);
  sub_1CA10BC7C(a7, &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_networkInquiry], &qword_1EC4345B0);
  v49.receiver = v8;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v26 setClipsToBounds_];
  v27 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork;
  [*&v26[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork] setUserInteractionEnabled_];
  [*&v26[v27] setClipsToBounds_];
  [v26 addSubview_];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  v30 = sub_1CA19C0E8();
  [v29 addObserver:v26 selector:sel_didChangeAutoPlayVideoSetting name:v30 object:0];

  v31 = [v28 defaultCenter];
  [v31 addObserver:v26 selector:sel_handleMediaServicesReset name:*MEMORY[0x1E6958128] object:0];

  OUTLINED_FUNCTION_4_5();
  if (swift_weakLoadStrong())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334A0);
    sub_1CA19B7C8();

    if (v48)
    {
      if ([v48 respondsToSelector_])
      {
        v32 = [v48 isVideoAudioEnabled];
        swift_unknownObjectRelease();
        v26[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation] = v32;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v33 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton;
  [*&v26[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton] setHidden_];
  v34 = *&v26[v33];
  OUTLINED_FUNCTION_14_2();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = &v34[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapActionBlock];
  v37 = *&v34[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic10PlayButton_tapActionBlock];
  *v36 = sub_1CA19259C;
  v36[1] = v35;
  v38 = v34;

  sub_1CA0EBE84(v37);

  [v26 addSubview_];
  sub_1CA18CA48();

  sub_1CA10BDC8(a7, &qword_1EC4345B0);
  sub_1CA10BDC8(v42, &unk_1EC434480);
  sub_1CA10BDC8(v43, &unk_1EC434480);
  OUTLINED_FUNCTION_4_23();
  sub_1CA190788(v45, v39);
  (*(v23 + 8))(v47, v22);
  return v26;
}

void sub_1CA18C0DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1EE03B230 != -1)
    {
      swift_once();
    }

    v2 = sub_1CA19AFF8();
    __swift_project_value_buffer(v2, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    sub_1CA19AF88();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v16 = type metadata accessor for VideoView();
    v15[0] = v1;
    v3 = v1;
    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(v15);
    v16 = MEMORY[0x1E69E6158];
    v15[0] = 0x7061742079616C50;
    v15[1] = 0xEB00000000646570;
    sub_1CA19AF38();
    sub_1CA10BDC8(v15, &qword_1EC433830);
    sub_1CA19AFC8();

    VideoView.play()();
    v6 = &v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      swift_getObjectType();
      v8 = *(v7 + 40);
      v9 = v3;
      v8();

      swift_unknownObjectRelease();
    }

    if (VideoView.allowsAutoPlay.getter())
    {
      goto LABEL_19;
    }

    v10 = &v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
    swift_beginAccess();
    if ((v10[*(type metadata accessor for VideoConfiguration() + 24)] & 8) == 0)
    {
      goto LABEL_19;
    }

    v11 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer;
    if (*&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer])
    {
      [v3 updateAudioSessionCategoryWithIsAudioOn_];
      v12 = *&v3[v11];
      if (v12)
      {
        [v12 setMuted_];
      }

      goto LABEL_19;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334A0);
      sub_1CA19B7C8();

      if (v14)
      {
        if ([v14 respondsToSelector_])
        {
          v13 = [v14 isVideoAudioEnabled];
          swift_unknownObjectRelease();
          v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation] = v13;
LABEL_19:

          return;
        }

        swift_unknownObjectRelease();
      }
    }

    v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation] = 1;
    goto LABEL_19;
  }
}

Swift::Void __swiftcall VideoView.play()()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CA19AFF8();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_3();
  v9 = v8 - v7;
  v10 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer];
  v11 = &unk_1CA1A0000;
  v24 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer;
  if (!v10)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    __swift_project_value_buffer(v3, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v12 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v12);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
    v27 = ObjectType;
    v25 = v1;
    v1;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v25);
    v27 = MEMORY[0x1E69E6158];
    v25 = 0x6964616F6C657250;
    v26 = 0xEA0000000000676ELL;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v25, &qword_1EC433830);
    sub_1CA19AF98();

    VideoView.startPreloading()();
    v10 = *&v1[v24];
    v11 = &unk_1CA1A0000;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  OUTLINED_FUNCTION_4_5();
  if ((*(v10 + v15) & 1) == 0)
  {
    OUTLINED_FUNCTION_14_2();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1CA18D71C(sub_1CA18D714);
  }

  else
  {
LABEL_8:
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v16 = __swift_project_value_buffer(v3, qword_1EE040B90);
    (*(v5 + 16))(v9, v16, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v17 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v17);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = v11[184];
    v27 = ObjectType;
    v25 = v1;
    v18 = v1;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v25);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1CA19C8F8();

    v25 = 0xD000000000000026;
    v26 = 0x80000001CA1AF1E0;
    if (*&v1[v24])
    {
      OUTLINED_FUNCTION_4_5();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC434498);
    v21 = sub_1CA19C168();
    MEMORY[0x1CCA99820](v21);

    v27 = MEMORY[0x1E69E6158];
    sub_1CA19AF38();
    sub_1CA10BDC8(&v25, &qword_1EC433830);
    sub_1CA19AFC8();

    v22 = OUTLINED_FUNCTION_0_12();
    v23(v22);
  }

  OUTLINED_FUNCTION_20_0();
}

uint64_t VideoView.allowsAutoPlay.getter()
{
  swift_getObjectType();
  v1 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration;
  OUTLINED_FUNCTION_4_5();
  LOBYTE(v1) = *(v1 + *(type metadata accessor for VideoConfiguration() + 36));
  OUTLINED_FUNCTION_4_5();
  Strong = swift_weakLoadStrong();
  v3 = static VideoView.isAutoPlayAllowed(videoConfigurationAutoPlay:objectGraph:)(v1, Strong);

  return v3 & 1;
}

void sub_1CA18CA48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CA19AFF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer];
  if (v7)
  {
    v8 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
    swift_beginAccess();
    LOBYTE(v8) = v8[*(type metadata accessor for VideoConfiguration() + 40)];
    v9 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldLoopPlayback;
    swift_beginAccess();
    *(v7 + v9) = v8;
  }

  v10 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController;
  v11 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v11)
  {
    v12 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
    swift_beginAccess();
    [v11 setAllowsEnteringFullScreen_];
  }

  v13 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork];
  v14 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
  swift_beginAccess();
  if (*v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  [v13 setContentMode_];
  v16 = *&v1[v10];
  if (v16)
  {
    v17 = MEMORY[0x1E69874F0];
    if (!*v14)
    {
      v17 = MEMORY[0x1E69874E8];
    }

    v18 = *v17;
    v19 = v16;
    [v19 setVideoGravity:v18 forLayoutClass:0];
  }

  v20 = type metadata accessor for VideoConfiguration();
  [v1 setUserInteractionEnabled_];
  [*&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton] setHidden_];
  v21 = *&v1[v10];
  if (v21)
  {
    [v21 setShowsPlaybackControls_];
    v22 = *&v1[v10];
    if (v22)
    {
      [v22 setShowsMinimalPlaybackControlsWhenEmbeddedInline_];
    }
  }

  v35 = v10;
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v3, qword_1EE040B90);
  v37 = v4;
  v24 = *(v4 + 16);
  v36 = v6;
  v38 = v3;
  v24(v6, v23, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v41 = ObjectType;
  v39 = v1;
  v25 = v1;
  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    sub_1CA19C118();
  }

  v28 = 1702195828;
  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v39);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1CA19C8F8();

  v39 = 0xD00000000000001BLL;
  v40 = 0x80000001CA1AF770;
  v29 = 0xE400000000000000;
  if ((VideoView.allowsAutoPlay.getter() & 1) == 0)
  {
    v30 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prefersMinimalPlaybackControls;
    swift_beginAccess();
    if (!v25[v30])
    {
      v28 = 0x65736C6166;
      v29 = 0xE500000000000000;
    }
  }

  MEMORY[0x1CCA99820](v28, v29);

  v41 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&v39, &qword_1EC433830);
  v31 = v36;
  sub_1CA19AFC8();

  (*(v37 + 8))(v31, v38);
  v32 = *&v1[v35];
  if (v32)
  {
    if ((v14[*(v20 + 24)] & 8) != 0)
    {
      v34 = 1;
    }

    else
    {
      v33 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
      swift_beginAccess();
      v34 = v25[v33];
    }

    [v32 setPlaybackControlsIncludeVolumeControls_];
  }

  sub_1CA18E9A0();
  sub_1CA18F3EC();
  sub_1CA18B0F0();
}

void sub_1CA18CFD8()
{
  v1 = v0;
  swift_weakInit();
  OUTLINED_FUNCTION_20_7(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_fullScreenDelegate);
  OUTLINED_FUNCTION_20_7(OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayerDelegate);
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork;
  v3 = objc_allocWithZone(type metadata accessor for ArtworkImageView());
  *(v0 + v2) = OUTLINED_FUNCTION_19_4();
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_animatePreviewFrameTransitions) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_video) = 0;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton;
  *(v1 + v4) = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v5 = (v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_additionalControlInsets);
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  *v5 = *MEMORY[0x1E69DDCE0];
  v5[1] = v6;
  v7 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prominentPlayButtonLocationOverride;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_preferredUnobscuredArea) = 1;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_unmuteAfterVideoPlayerCreation) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isTransitioningToFullscreen) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_wasAudioOnPreFullScreen) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prefersMinimalPlaybackControls) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch) = 0;
  *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_releaseAssetsAtNextPauseState) = 0;
  sub_1CA19C9F8();
  __break(1u);
}

uint64_t VideoView.playbackId.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playbackId);
  OUTLINED_FUNCTION_4_5();
  v2 = *v1;

  return v2;
}

uint64_t VideoView.playbackId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playbackId);
  OUTLINED_FUNCTION_22_5();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t VideoView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate;
  OUTLINED_FUNCTION_22_5();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*VideoView.delegate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1CA18D3D0;
}

uint64_t VideoView.state.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (!v1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_state;
  OUTLINED_FUNCTION_1_22();
  return *(v1 + v2);
}

Swift::Void __swiftcall VideoView.startPreloading()()
{
  v1 = sub_1CA19ADF8();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  sub_1CA18E360();
  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer;
  v9 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v9 || ((*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoUrl, v1), v10 = objc_allocWithZone(type metadata accessor for VideoPlayer(0)), v11 = VideoPlayer.init(with:)(v7), sub_1CA18A688(v11), (v9 = *(v0 + v8)) != 0))
  {
    v12 = v9;
    VideoPlayer.startPreloading()();
  }
}

void sub_1CA18D530()
{
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v0 = sub_1CA19AFF8();
  __swift_project_value_buffer(v0, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  sub_1CA19AF18();
  v7 = MEMORY[0x1E69E6158];
  v5 = 0xD00000000000001CLL;
  v6 = 0x80000001CA1AF790;
  sub_1CA19AF38();
  sub_1CA10BDC8(&v5, &qword_1EC433830);
  sub_1CA19AF98();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
    if (v3)
    {
      v4 = v3;

      [v4 play];
      v2 = v4;
    }
  }
}

void sub_1CA18D71C(void (*a1)(void))
{
  v3 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v3)
  {
    v4 = v3;
    if ([v4 isMuted] && (VideoView.allowsAutoPlay.getter() & 1) != 0)
    {
      sub_1CA0F2110(0, &unk_1EC434590);
      sub_1CA18FBE8();

      return;
    }
  }

  if (a1)
  {
    a1();
  }
}

Swift::Void __swiftcall VideoView.pause()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
    OUTLINED_FUNCTION_1_22();
    if (*(v1 + v2) == 1)
    {
      [v1 pause];
    }
  }
}

Swift::Void __swiftcall VideoView.restart()()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v1)
  {
    v2 = v1;
    VideoPlayer.restart()();
  }
}

uint64_t VideoView.isPlaying.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = VideoPlayer.isPlaying.getter();

  return v3 & 1;
}

uint64_t VideoView.shouldBePlaying.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (!v1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
  OUTLINED_FUNCTION_1_22();
  return *(v1 + v2);
}

uint64_t static VideoView.isAutoPlayAllowed(videoConfigurationAutoPlay:objectGraph:)(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v8 = sub_1CA19AFF8();
    __swift_project_value_buffer(v8, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_40_1();
    v9 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v9);
    *(OUTLINED_FUNCTION_9_17() + 16) = xmmword_1CA1A0B80;
    v10 = AMSSetLogKeyIfNeeded();
    sub_1CA19C118();

    OUTLINED_FUNCTION_13_10();

    v20 = MEMORY[0x1E69E6158];
    v18 = 0xD00000000000001ELL;
    v19 = 0x80000001CA1AF210;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v18, &qword_1EC433830);
    sub_1CA19AFA8();
    goto LABEL_9;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v4 = [v3 isLowPowerModeEnabled];

  if (v4)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v5 = sub_1CA19AFF8();
    __swift_project_value_buffer(v5, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    OUTLINED_FUNCTION_40_1();
    v6 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v6);
    *(OUTLINED_FUNCTION_9_17() + 16) = xmmword_1CA1A0B80;
    v7 = AMSSetLogKeyIfNeeded();
    sub_1CA19C118();

    OUTLINED_FUNCTION_13_10();

    v20 = MEMORY[0x1E69E6158];
    v18 = 0x504C206E69207349;
    v19 = 0xE90000000000004DLL;
    sub_1CA19AF38();
    sub_1CA10BDC8(&v18, &qword_1EC433830);
    sub_1CA19AFC8();
LABEL_9:

    return 0;
  }

  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4334A0);
    sub_1CA19B7C8();
    if (v18)
    {
      if (([v18 respondsToSelector_] & 1) != 0 && (objc_msgSend(v18, sel_isAutoPlayAllowed) & 1) == 0)
      {
        if (qword_1EE03B230 != -1)
        {
          OUTLINED_FUNCTION_0_2();
        }

        v15 = sub_1CA19AFF8();
        __swift_project_value_buffer(v15, qword_1EE040B90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
        v16 = sub_1CA19AF88();
        OUTLINED_FUNCTION_7_3(v16);
        OUTLINED_FUNCTION_4_8();
        *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
        v17 = AMSSetLogKeyIfNeeded();
        sub_1CA19C118();

        sub_1CA19AF48();

        v20 = MEMORY[0x1E69E6158];
        v18 = 0xD000000000000027;
        v19 = 0x80000001CA1AF250;
        sub_1CA19AF38();
        sub_1CA10BDC8(&v18, &qword_1EC433830);
        sub_1CA19AFC8();

        swift_unknownObjectRelease();
        return 0;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v12 = sub_1CA19AFF8();
  __swift_project_value_buffer(v12, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  OUTLINED_FUNCTION_40_1();
  v13 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v13);
  *(OUTLINED_FUNCTION_9_17() + 16) = xmmword_1CA1A0B80;
  v14 = AMSSetLogKeyIfNeeded();
  sub_1CA19C118();

  OUTLINED_FUNCTION_13_10();

  v20 = MEMORY[0x1E69E6158];
  v18 = 0xD000000000000017;
  v19 = 0x80000001CA1AF230;
  sub_1CA19AF38();
  sub_1CA10BDC8(&v18, &qword_1EC433830);
  sub_1CA19AFC8();

  return 1;
}

void sub_1CA18DF24()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isTransitioningToFullscreen;
  swift_beginAccess();
  v0[v2] = 0;
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  swift_beginAccess();
  [v0 setUserInteractionEnabled_];
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v11, sel_backgroundColor);
  if (!v4)
  {
    v4 = [objc_opt_self() ams_placeholderBackground];
  }

  v5 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v5)
  {
    v6 = [v5 view];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    if (v0[v3] == 1)
    {
      v8 = [objc_opt_self() clearColor];
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;
    [v7 setBackgroundColor_];
  }

  sub_1CA18CA48();
  if ((v0[v3] & 1) == 0)
  {
    v10 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer];
    if (v10)
    {
      [v10 setMuted_];
    }
  }

  sub_1CA18AAAC();
  [v0 setNeedsLayout];
}

uint64_t VideoView.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  OUTLINED_FUNCTION_1_22();
  return *(v0 + v1);
}

void VideoView.isFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  sub_1CA18DF24();
}

uint64_t VideoView.isFullScreen.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

void sub_1CA18E1A8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1CA18DF24();
  }
}

uint64_t VideoView.isTransitioningToFullscreen.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isTransitioningToFullscreen;
  OUTLINED_FUNCTION_1_22();
  return *(v0 + v1);
}

uint64_t VideoView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration;
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_5_19();
  return sub_1CA190728(v1 + v3, a1, v4);
}

uint64_t VideoView.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration;
  swift_beginAccess();
  sub_1CA18E5F4(a1, v1 + v3);
  swift_endAccess();
  sub_1CA18CA48();
  OUTLINED_FUNCTION_4_23();
  return sub_1CA190788(a1, v4);
}

uint64_t VideoView.configuration.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_1_23();
  return OUTLINED_FUNCTION_18_2();
}

void sub_1CA18E328(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1CA18CA48();
  }
}

void sub_1CA18E360()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController;
  if (!*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController])
  {
    v3 = ObjectType;
    v4 = [objc_allocWithZone(type metadata accessor for DynamicVideoPlayerViewController()) init];
    [v4 setShowsPlaybackControls_];
    [v4 setUpdatesNowPlayingInfoCenter_];
    [v4 setCanPausePlaybackWhenExitingFullScreen_];
    [v4 setPreferredUnobscuredArea_];
    [v4 setShowsMinimalPlaybackControlsWhenEmbeddedInline_];
    [v4 setDelegate_];
    v5 = v4;
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 setClipsToBounds_];

      v8 = [v5 view];
      if (v8)
      {
        v9 = v8;
        v15.receiver = v0;
        v15.super_class = v3;
        v10 = objc_msgSendSuper2(&v15, sel_backgroundColor);
        if (!v10)
        {
          v10 = [objc_opt_self() ams_placeholderBackground];
        }

        [v9 setBackgroundColor_];

        [v5 setModalPresentationStyle_];
        [v5 setCanToggleVideoGravityWhenEmbeddedInline_];
        v11 = [v5 view];
        if (v11)
        {
          v12 = v11;
          [v0 bounds];
          [v12 setFrame_];

          if (*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer])
          {
            [v5 setPlayer_];
          }

          v13 = [v5 view];

          if (v13)
          {
            [v0 insertSubview:v13 atIndex:0];

            v14 = *&v0[v2];
            *&v0[v2] = v5;

            sub_1CA18CA48();
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_1CA18E5F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall VideoView.releaseAssets(now:)(Swift::Bool now)
{
  if (now)
  {
    v2 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
    if (v2)
    {
      v3 = v2;
      VideoPlayer.releaseAssets()();
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_releaseAssetsAtNextPauseState) = 1;
  }
}

Swift::Void __swiftcall VideoView.layoutSubviews()()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  [v0 bounds];
  width = v29.size.width;
  height = v29.size.height;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = OUTLINED_FUNCTION_31_2();
  MaxY = CGRectGetMaxY(v30);
  v6 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v6)
  {
    v7 = [v6 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = OUTLINED_FUNCTION_31_2();
    [v10 v11];
  }

  v12 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork];
  [v12 frame];
  [v12 setFrame_];
  v13 = &v12[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize];
  OUTLINED_FUNCTION_22_5();
  if (*v13 != width || v13[1] != height)
  {
    *v13 = width;
    v13[1] = height;
    v15 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_video];
    if (v15)
    {
      if (*(v15 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic5Video_preview))
      {
        OUTLINED_FUNCTION_4_5();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v17 = Strong;

          ArtworkImageView.apply(artwork:asPartOf:)(v18, v17);
        }
      }
    }
  }

  v19 = MaxY * 0.5;
  v20 = MaxX * 0.5;
  [v12 setCenter_];
  v21 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton;
  [*&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton] sizeThatFits_];
  v23 = v22;
  v25 = v24;
  v26 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prominentPlayButtonLocationOverride];
  v27 = *&v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prominentPlayButtonLocationOverride + 8];
  if (v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prominentPlayButtonLocationOverride + 16])
  {
    v26 = v20;
    v27 = v19;
  }

  [*&v1[v21] setFrame_];
}

uint64_t sub_1CA18E9A0()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_releaseAssetsAtNextPauseState;
  if (*(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_releaseAssetsAtNextPauseState) == 1 && VideoView.state.getter() == 4)
  {
    *(v0 + v1) = 0;
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = sub_1CA1924A4;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = VideoView.isPlaying.getter();
  v5 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v5 && (v6 = [v5 currentItem]) != 0)
  {
    v7 = v6;
    [v6 currentTime];
    sub_1CA19C668();
    v8 = sub_1CA19C658();
  }

  else
  {
    v8 = 1;
  }

  v9 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  swift_beginAccess();
  sub_1CA18EBB8(v8 & ~(*(v0 + v9) | v4) & 1, *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_animatePreviewFrameTransitions), v3, v2);
  sub_1CA18F170(((*(v0 + v9) | v4) & 1) == 0);
  return sub_1CA0EBE84(v3);
}

void sub_1CA18EB3C(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
      if (v3)
      {
        v4 = v3;

        VideoPlayer.releaseAssets()();
        v2 = v4;
      }
    }
  }
}

void sub_1CA18EBB8(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v11 = sub_1CA19AFF8();
  __swift_project_value_buffer(v11, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v35 = ObjectType;
  aBlock = v4;
  v12 = v4;
  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&aBlock);
  sub_1CA19AF18();
  aBlock = 0x6D617246776F6873;
  v33 = 0xEB00000000203A65;
  if (a1)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (a1)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1CCA99820](v15, v16);

  v35 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&aBlock, &qword_1EC433830);
  sub_1CA19AFC8();

  if ((a2 & 1) == 0)
  {
    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v12;
    *(v23 + 24) = a1 & 1;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1CA1924B0;
    *(v24 + 24) = v23;
    v36 = sub_1CA1924BC;
    v37 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1CA18F3C4;
    v35 = &block_descriptor_32_0;
    v19 = _Block_copy(&aBlock);
    v17 = v37;
    v25 = v12;

    [v22 performWithoutAnimation_];
    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v17 = a1 & 1;
  v5 = 0.2;
  if (a1)
  {
    v6 = 0.2;
  }

  else
  {
    v6 = 0.5;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v17;
  v36 = sub_1CA1924E4;
  v37 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v33 = 1107296256;
  v34 = sub_1CA0F4068;
  v35 = &block_descriptor_38_0;
  v19 = _Block_copy(&aBlock);
  isEscapingClosureAtFileLocation = v12;

  if (!a3)
  {
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v36 = a3;
  v37 = a4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1CA17EED0;
  v35 = &block_descriptor_47_1;
  v21 = _Block_copy(&aBlock);

LABEL_20:
  v26 = objc_opt_self();
  [v26 animateWithDuration:4 delay:v19 options:v21 animations:v6 completion:0.0];
  _Block_release(v21);
  _Block_release(v19);
  v27 = swift_allocObject();
  *(v27 + 16) = isEscapingClosureAtFileLocation;
  *(v27 + 24) = v17;
  v36 = sub_1CA1925D8;
  v37 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v33 = v7;
  v34 = sub_1CA0F4068;
  v35 = &block_descriptor_44_0;
  v28 = _Block_copy(&aBlock);
  v29 = isEscapingClosureAtFileLocation;

  [v26 animateWithDuration:4 delay:v28 options:0 animations:v5 completion:0.0];
  _Block_release(v28);
}

void sub_1CA18F170(char a1)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v7[4] = sub_1CA1924AC;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1CA0F4068;
  v7[3] = &block_descriptor_23_1;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 animateWithDuration:4 delay:v5 options:0 animations:0.2 completion:0.0];
  _Block_release(v5);
}

id sub_1CA18F270(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a2 & 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = *(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork);
  v8 = 0.0;
  if (a2)
  {
    v8 = 1.0;
  }

  return [v7 setAlpha_];
}

void sub_1CA18F31C(uint64_t a1, char a2)
{
  v4 = a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayerDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a2 & 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  [*(a1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_previewFrameArtwork) setAlpha_];
  VideoView.layoutSubviews()();
}

id sub_1CA18F3EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1CA19AFF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  swift_beginAccess();
  if (v0[v6] == 1)
  {
    v7 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
    if (v7)
    {
      [v7 setShowsPlaybackControls_];
    }
  }

  else
  {
    v8 = VideoView.isPlaying.getter();
    v9 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController;
    v10 = *&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
    if (v8)
    {
      if (v10)
      {
        v11 = &v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration];
        swift_beginAccess();
        [v10 setShowsPlaybackControls_];
        v12 = *&v0[v9];
        if (v12)
        {
          [v12 flashPlaybackControlsWithDuration_];
        }
      }
    }

    else if (v10)
    {
      [*&v0[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController] setShowsPlaybackControls_];
    }
  }

  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_1EE040B90);
  (*(v3 + 16))(v5, v13, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v24 = ObjectType;
  v22 = v0;
  v14 = v0;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v22);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1CA19C8F8();

  v22 = 0xD00000000000002ALL;
  v23 = 0x80000001CA1AF740;
  v17 = *&v14[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController];
  if (v17)
  {
    v18 = [v17 showsPlaybackControls];
  }

  else
  {
    v18 = 2;
  }

  v21[39] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4345B8);
  v19 = sub_1CA19C168();
  MEMORY[0x1CCA99820](v19);

  v24 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&v22, &qword_1EC433830);
  sub_1CA19AFC8();

  (*(v3 + 8))(v5, v2);
  return [v14 accessibilityUpdatePlayerControllerControls];
}

uint64_t VideoView.prefersMinimalPlaybackControls.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prefersMinimalPlaybackControls;
  OUTLINED_FUNCTION_1_22();
  return *(v0 + v1);
}

uint64_t VideoView.prefersMinimalPlaybackControls.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_prefersMinimalPlaybackControls;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

void sub_1CA18F90C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  v29 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_3();
  v19 = v18 - v17;
  if (qword_1EC432C90 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v20 = swift_allocObject();
  v20[2] = v3;
  v20[3] = v1;
  v20[4] = v9;
  v20[5] = v7;
  v20[6] = v5;
  v30[4] = sub_1CA19214C;
  v30[5] = v20;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v30[2] = v21;
  v30[3] = &block_descriptor_10_0;
  v22 = _Block_copy(v30);
  sub_1CA10FCD4(v3);
  v23 = v9;
  v24 = v7;
  sub_1CA19B2F8();
  OUTLINED_FUNCTION_6_19();
  sub_1CA19215C(v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA1127BC(&qword_1EE03C2A0, &unk_1EC433C70);
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v19, v13, v22);
  _Block_release(v22);
  v27 = OUTLINED_FUNCTION_0_12();
  v28(v27);
  (*(v15 + 8))(v19, v29);

  OUTLINED_FUNCTION_20_0();
}

void sub_1CA18FBE8()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v3 = v2;
  sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = v6 - v5;
  v22 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_3();
  v13 = v12 - v11;
  if (qword_1EC432C90 != -1)
  {
    OUTLINED_FUNCTION_14_11();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v1;
  v23[4] = sub_1CA192520;
  v23[5] = v14;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_1(COERCE_DOUBLE(1107296256));
  v23[2] = v15;
  v23[3] = &block_descriptor_53_0;
  v16 = _Block_copy(v23);
  v17 = OUTLINED_FUNCTION_23_7();
  sub_1CA10FCD4(v17);
  sub_1CA19B2F8();
  OUTLINED_FUNCTION_6_19();
  sub_1CA19215C(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA1127BC(&qword_1EE03C2A0, &unk_1EC433C70);
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v13, v7, v16);
  _Block_release(v16);
  v20 = OUTLINED_FUNCTION_0_12();
  v21(v20);
  (*(v9 + 8))(v13, v22);

  OUTLINED_FUNCTION_20_0();
}

char *sub_1CA18FE58(char *result, double a2, double a3)
{
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_playerItem;
    swift_beginAccess();
    return [*&v5[v6] setPreferredMaximumResolution_];
  }

  return result;
}

uint64_t VideoView.videoDidChangeState(to:videoPlayer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v5 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v5);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v16 = ObjectType;
  v14 = v1;
  v6 = v1;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v14);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1CA19C8F8();

  v14 = 0x6863206574617453;
  v15 = 0xEF203A6465676E61;
  v9 = sub_1CA19C168();
  MEMORY[0x1CCA99820](v9);

  v16 = MEMORY[0x1E69E6158];
  sub_1CA19AF38();
  sub_1CA10BDC8(&v14, &qword_1EC433830);
  sub_1CA19AFC8();

  v10 = &v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate];
  OUTLINED_FUNCTION_4_5();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 1);
    v12 = swift_getObjectType();
    (*(v11 + 8))(a1, v6, &protocol witness table for VideoView, v12, v11);
    swift_unknownObjectRelease();
  }

  sub_1CA18F3EC();
  return sub_1CA18E9A0();
}

Swift::Void __swiftcall VideoView.playbackWillEnd(in:)(Swift::Double in)
{
  v3 = v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate;
  OUTLINED_FUNCTION_4_5();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 16))(v1, &protocol witness table for VideoView, ObjectType, v4, in);
    swift_unknownObjectRelease();
  }
}

void VideoView.videoDidPlayToEnd(videoPlayer:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate;
  OUTLINED_FUNCTION_4_5();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_configuration;
    OUTLINED_FUNCTION_4_5();
    v6 = type metadata accessor for VideoConfiguration();
    (*(v3 + 24))(*(v5 + *(v6 + 40)), v0, &protocol witness table for VideoView, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
  OUTLINED_FUNCTION_4_5();
  if (*(v1 + v7) == 1)
  {
    v8 = *(v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController);
    if (v8)
    {
      OUTLINED_FUNCTION_14_2();
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1CA19042C;
      aBlock[5] = v9;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CA190434;
      aBlock[3] = &block_descriptor_19;
      v10 = _Block_copy(aBlock);
      v11 = v8;

      [v11 exitFullScreenAnimated:1 completionHandler:v10];
      _Block_release(v10);
    }
  }
}

void sub_1CA1903B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isFullScreen;
    swift_beginAccess();
    v1[v2] = 0;
    sub_1CA18DF24();
  }
}

void sub_1CA190434(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void VideoView.handleVideoPlaybackFailure(_:)()
{
  v1 = OUTLINED_FUNCTION_40_1();
  type metadata accessor for VideoPlaybackFailure(v1);
  OUTLINED_FUNCTION_0_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_3();
  v5 = (v4 - v3);
  v6 = OUTLINED_FUNCTION_0_12();
  sub_1CA190728(v6, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v9 = *v5;
    v10 = [objc_opt_self() defaultCenter];
    v11 = sub_1CA19C0E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433280);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA1A0B80;
    v13 = MEMORY[0x1E69E6158];
    sub_1CA19C898();
    v14 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playbackId);
    OUTLINED_FUNCTION_4_5();
    v16 = *v14;
    v15 = v14[1];
    *(inited + 96) = v13;
    *(inited + 72) = v16;
    *(inited + 80) = v15;

    sub_1CA19C898();
    *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4344C0);
    *(inited + 144) = v9;
    v17 = v9;
    v18 = sub_1CA19C038();
    sub_1CA191E5C(v11, 0, v18, v10);
  }

  else
  {
    sub_1CA190788(v5, type metadata accessor for VideoPlaybackFailure);
  }
}

uint64_t sub_1CA190728(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1CA190788(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(a1);
  return a1;
}

void VideoView.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch;
  v7 = *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch];
  if ((!v7 || [v7 phase] == 3 || (v8 = *&v3[v6]) != 0 && objc_msgSend(v8, sel_phase) == 4) && (v9 = sub_1CA18A270(a1)) != 0)
  {
    v10 = *&v3[v6];
    *&v3[v6] = v9;
    v11 = v9;

    [v11 locationInView_];
    v12 = [v3 hitTest:a2 withEvent:?];
    if (v12)
    {
      v13 = v12;
      sub_1CA0F2110(0, &qword_1EC4344E0);
      v14 = v13;
      v15 = v3;
      LOBYTE(v13) = sub_1CA19C6D8();

      if ((v13 & 1) == 0)
      {
        sub_1CA0F2110(0, &qword_1EC4344D0);
        sub_1CA191EF8();
        v16 = v14;
        v17 = sub_1CA19C3A8();
        OUTLINED_FUNCTION_30_2();
        [v18 v19];
      }
    }

    sub_1CA0F2110(0, &qword_1EC4344D0);
    sub_1CA191EF8();
    v20 = OUTLINED_FUNCTION_26_3();
  }

  else
  {
    sub_1CA0F2110(0, &qword_1EC4344D0);
    sub_1CA191EF8();
    v20 = OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_30_2();
  objc_msgSendSuper2(v21, v22);
}

BOOL sub_1CA190A5C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1CA19C858();

    return v4 & 1;
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    sub_1CA0F2110(0, &qword_1EC4344D0);
    v6 = sub_1CA19C6C8();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v10 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v11 = *(*(a2 + 48) + 8 * v8);
      v12 = sub_1CA19C6D8();

      v6 = v8 + 1;
    }

    while ((v12 & 1) == 0);
    return v10;
  }
}

void sub_1CA190B98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch;
  v7 = *&v3[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_currentTouch];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  if (!sub_1CA190A5C(v8, a1))
  {

LABEL_8:
    sub_1CA0F2110(0, &qword_1EC4344D0);
    sub_1CA191EF8();
    OUTLINED_FUNCTION_23_7();
    v18 = sub_1CA19C3A8();
    goto LABEL_11;
  }

  v9 = *&v3[v6];
  *&v3[v6] = 0;

  [v8 locationInView_];
  v10 = [v3 hitTest:a2 withEvent:?];
  if (v10)
  {
    v11 = v10;
    sub_1CA0F2110(0, &qword_1EC4344E0);
    v12 = v11;
    v13 = v3;
    LOBYTE(v11) = sub_1CA19C6D8();

    if ((v11 & 1) == 0)
    {
      sub_1CA0F2110(0, &qword_1EC4344D0);
      sub_1CA191EF8();
      v14 = v12;
      OUTLINED_FUNCTION_23_7();
      v15 = sub_1CA19C3A8();
      OUTLINED_FUNCTION_30_2();
      [v16 v17];

      v8 = v14;
    }
  }

  else
  {
    v12 = v8;
  }

  sub_1CA0F2110(0, &qword_1EC4344D0);
  sub_1CA191EF8();
  OUTLINED_FUNCTION_23_7();
  v18 = sub_1CA19C3A8();
LABEL_11:
  OUTLINED_FUNCTION_30_2();
  objc_msgSendSuper2(v19, v20);
}

uint64_t sub_1CA190DB8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_1CA0F2110(0, &qword_1EC4344D0);
  sub_1CA191EF8();
  v8 = sub_1CA19C3B8();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_1CA190E68()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_videoPlayer);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    v3 = *(v1 + v2);
    sub_1CA18A688(0);
    if (v3 == 1)
    {
      VideoView.startPreloading()();
      VideoView.play()();
    }
  }

  else
  {

    sub_1CA18A688(0);
  }
}

uint64_t VideoView.playerViewController(_:willBeginFullScreenPresentationWithAnimationCoordinator:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_fullScreenDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_isTransitioningToFullscreen;
  result = OUTLINED_FUNCTION_22_5();
  *(v1 + v5) = 1;
  return result;
}

void *sub_1CA191088()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playerViewController);
  v2 = v1;
  return v1;
}

id VideoView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_12_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_10_1();

  return [v2 v3];
}

id VideoView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_1CA1913C4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_objectGraph;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1CA192608;
}

void sub_1CA191448()
{
  OUTLINED_FUNCTION_36_2();
  swift_weakAssign();
  if (v1)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v0);
}

uint64_t (*sub_1CA1914C4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1CA19260C;
}

void sub_1CA191550()
{
  OUTLINED_FUNCTION_36_2();
  *(v0[5] + v0[6] + 8) = v0[4];
  swift_unknownObjectWeakAssign();
  if (v1)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v0);
}

void (*sub_1CA1915E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1CA18E328;
}

id sub_1CA191674()
{
  v1 = [v0 superview];

  return v1;
}

uint64_t sub_1CA1916F4()
{
  v7 = sub_1CA19C588();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CA19C558();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1CA19B318();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1CA0F2110(0, &qword_1EE03C230);
  sub_1CA19B308();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1CA19215C(&qword_1EE03C238, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4345A0);
  sub_1CA1127BC(&qword_1EE03C298, &unk_1EC4345A0);
  sub_1CA19C788();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1CA19C5D8();
  qword_1EC434460 = result;
  return result;
}

void sub_1CA191954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v8 = [objc_opt_self() sharedInstance];
  v12[0] = 0;
  LODWORD(a4) = [v8 setCategory:a3 mode:a4 options:a5 error:v12];

  if (a4)
  {
    v9 = v12[0];
  }

  else
  {
    v10 = v12[0];
    v11 = sub_1CA19AD28();

    swift_willThrow();
  }

  sub_1CA191BDC();
}

void sub_1CA191A7C()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 categoryOptions];

  if ((v2 & 1) == 0)
  {
    v3 = [v0 sharedInstance];
    v4 = *MEMORY[0x1E6958068];
    v5 = *MEMORY[0x1E6958130];
    v10[0] = 0;
    v6 = [v3 setCategory:v4 mode:v5 options:1 error:v10];

    if (v6)
    {
      v7 = v10[0];
    }

    else
    {
      v8 = v10[0];
      v9 = sub_1CA19AD28();

      swift_willThrow();
    }
  }

  sub_1CA191BDC();
}

void sub_1CA191BDC()
{
  OUTLINED_FUNCTION_19_0();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1CA19B2D8();
  OUTLINED_FUNCTION_1_0();
  v26 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_3();
  v12 = v11 - v10;
  v25 = sub_1CA19B318();
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_3();
  v18 = v17 - v16;
  sub_1CA0F2110(0, &qword_1EE03C230);
  v19 = sub_1CA19C598();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  v27[4] = v2;
  v27[5] = v20;
  OUTLINED_FUNCTION_3_2();
  v27[1] = 1107296256;
  v27[2] = sub_1CA0F4068;
  v27[3] = v24;
  v21 = _Block_copy(v27);
  sub_1CA10FCD4(v6);

  sub_1CA19B2F8();
  v27[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_6_19();
  sub_1CA19215C(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC433C70);
  sub_1CA1127BC(&qword_1EE03C2A0, &unk_1EC433C70);
  sub_1CA19C788();
  MEMORY[0x1CCA99C20](0, v18, v12, v21);
  _Block_release(v21);

  (*(v26 + 8))(v12, v7);
  (*(v14 + 8))(v18, v25);
  OUTLINED_FUNCTION_20_0();
}

void sub_1CA191E5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1CA19C008();

  [a4 postNotificationName:a1 object:a2 userInfo:v7];
}

unint64_t sub_1CA191EF8()
{
  result = qword_1EC4344D8;
  if (!qword_1EC4344D8)
  {
    sub_1CA0F2110(255, &qword_1EC4344D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4344D8);
  }

  return result;
}

uint64_t type metadata accessor for VideoView()
{
  result = qword_1EC434578;
  if (!qword_1EC434578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CA191FB4()
{
  sub_1CA180558();
  if (v0 <= 0x3F)
  {
    sub_1CA19ADF8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VideoConfiguration();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1CA19215C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CA1921A4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA19C7C8();
  }

  else
  {
    return sub_1CA19C798();
  }
}

uint64_t sub_1CA192204(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1CA19C868();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_1CA192258(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA99E90](a1, a2, v7);
      sub_1CA0F2110(0, &qword_1EC4344D0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1CA0F2110(0, &qword_1EC4344D0);
    if (sub_1CA19C7F8() == *(a4 + 36))
    {
      sub_1CA19C808();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1CA19C6C8();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1CA19C6D8();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

BOOL sub_1CA192464(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1CCA99E40);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1CA192498(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_1CA1924F0()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic9VideoView_playButton) setAlpha_];
}

uint64_t objectdestroy_12Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CA19256C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_17()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return sub_1CA19AF48();
}

uint64_t OUTLINED_FUNCTION_14_11()
{

  return swift_once();
}

id OUTLINED_FUNCTION_19_4()
{

  return ArtworkImageView.init(artworkSize:frame:)();
}

uint64_t OUTLINED_FUNCTION_20_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_22_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_1CA19C3A8();
}

void sub_1CA19280C(char a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = [v6 superview];
  if (v12)
  {
    v13 = v12;
    if (a1)
    {
      v14 = [v12 safeAreaLayoutGuide];
      v15 = [v14 topAnchor];

      v16 = [v13 safeAreaLayoutGuide];
      v17 = [v16 bottomAnchor];
    }

    else
    {
      v15 = [v12 topAnchor];
      v17 = [v13 bottomAnchor];
    }

    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1CA1A7FC0;
    v19 = [v6 topAnchor];
    v20 = [v19 constraintEqualToAnchor:v15 constant:a2];

    *(v18 + 32) = v20;
    v21 = [v6 leadingAnchor];
    v22 = [v13 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:a3];

    *(v18 + 40) = v23;
    v24 = [v6 bottomAnchor];
    v25 = [v24 constraintEqualToAnchor:v17 constant:-a4];

    *(v18 + 48) = v25;
    v26 = [v6 trailingAnchor];
    v27 = [v13 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-a5];

    *(v18 + 56) = v28;
    sub_1CA103264();
    v31 = sub_1CA19C2A8();

    [v13 addConstraints_];

    OUTLINED_FUNCTION_0_50();
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
  }
}

void sub_1CA192B20(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [v3 superview];
  if (v7)
  {
    v26 = v7;
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433810);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1CA1A7FD0;
    v9 = [v3 centerXAnchor];
    v10 = [v26 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor_];

    *(v8 + 32) = v11;
    v12 = [v3 centerYAnchor];
    v13 = [v26 centerYAnchor];
    v14 = [v12 constraintEqualToAnchor_];

    *(v8 + 40) = v14;
    sub_1CA103264();
    v15 = sub_1CA19C2A8();

    [v26 addConstraints_];

    if ((a3 & 1) == 0)
    {
      v16 = *&a1;
      v17 = *&a2;
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1CA1A7FD0;
      v19 = [v3 widthAnchor];
      v20 = [v19 constraintEqualToConstant_];

      *(v18 + 32) = v20;
      v21 = [v3 heightAnchor];
      v22 = [v21 constraintEqualToConstant_];

      *(v18 + 40) = v22;
      v23 = sub_1CA19C2A8();

      [v3 addConstraints_];
    }

    OUTLINED_FUNCTION_0_50();
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
  }
}

void sub_1CA192DE8(char a1)
{
  v3 = [v1 layer];
  v4 = MEMORY[0x1E69796E8];
  if ((a1 & 1) == 0)
  {
    v4 = MEMORY[0x1E69796E0];
  }

  v5 = *v4;
  [v3 setCornerCurve_];
}

uint64_t sub_1CA192E7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_51();
  v9 = sub_1CA193100();
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  v11 = (*(v10 + 32))(a1, v2, a2);
  (*(v7 + 8))(v2, v5);

  return v11;
}

id sub_1CA192F94(uint64_t a1, uint64_t a2)
{
  v5 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_51();
  v9 = sub_1CA193100();
  if (!v9 || (v10 = v9, sub_1CA19B7D8(), sub_1CA19BE18(), v11 = (*(v10 + 32))(a1, v2, a2), (*(v7 + 8))(v2, v5), , !v11))
  {
    sub_1CA19371C();
    v12 = swift_allocError();
    objc_allocWithZone(type metadata accessor for ErrorViewController());

    return sub_1CA15499C(v12, a2, 0, 0, 0);
  }

  return v11;
}

uint64_t sub_1CA193100()
{
  v0 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CA19B5C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  sub_1CA19B7D8();
  sub_1CA19BE18();
  sub_1CA19B4E8();
  v21 = v9;
  v22 = v4;
  (*(v4 + 16))(v7, v9, v3);
  v10 = Location.init(deserializing:using:)(v2, v7);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  type metadata accessor for PageLoader();
  sub_1CA19BE18();
  v20[2] = v17;
  v18 = PageLoader.pageDefinition(withLocation:)(v17, v12, v14, v16);
  (*(v22 + 8))(v21, v3);

  return v18;
}

unint64_t sub_1CA19371C()
{
  result = qword_1EC4345C0;
  if (!qword_1EC4345C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4345C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewControllerFactory.PresentationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1CA193834()
{
  result = qword_1EC4345C8;
  if (!qword_1EC4345C8)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4345C8);
  }

  return result;
}

unint64_t sub_1CA193898()
{
  result = qword_1EC4345D0;
  if (!qword_1EC4345D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4345D0);
  }

  return result;
}

uint64_t sub_1CA193930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19B5C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1CA19B4D8();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10, a1);
  (*(v5 + 16))(v7, a2, v4);
  return VisualAreaArtwork.LayoutConstraints.init(deserializing:using:)(v10, v7, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1CA193AD0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = v13 - v12;
  v15 = sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_3();
  v21 = v20 - v19;
  a3(0);
  (*(v17 + 16))(v21, a1, v15);
  (*(v10 + 16))(v14, a2, v8);
  return a4(v21, v14);
}

uint64_t sub_1CA193C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CA19B5C8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_3();
  v10 = v9 - v8;
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_3();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12, a1);
  (*(v6 + 16))(v10, a2, v4);
  return Location.init(deserializing:using:)(v14, v10);
}

uint64_t VisualAreaArtwork.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CA0FC9B0();
  if (v3)
  {

    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1CA0FEE40();
  MEMORY[0x1EEE9AC00](v9);
  sub_1CA0FC07C();
  v11 = v10;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  sub_1CA0FC9B0();
  v16 = v15;
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v17 + 8))(a1);
  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  result = (*(v18 + 8))(a2);
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 16) = v16;
  *(a3 + 24) = v22;
  *(a3 + 32) = v21;
  *(a3 + 40) = v11;
  *(a3 + 48) = v20 & 1;
  return result;
}

uint64_t sub_1CA1940CC()
{
  v0 = sub_1CA19CA48();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA194120(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x3630335F61657261;
  }
}

double sub_1CA194158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  VisualAreaArtwork.init(deserializing:using:)(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = v6;
    result = *&v8;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
  }

  return result;
}

uint64_t sub_1CA1941CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA1940CC();
  *a1 = result;
  return result;
}

uint64_t sub_1CA1941FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CA194120(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t VisualAreaArtwork.LayoutConstraints.init(deserializing:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1CA0FC818(1684957547, 0xE400000000000000, &type metadata for VisualAreaArtwork.LayoutConstraints, a4, a5, a6, a7, a8);
  if (!v8)
  {
    if (v12)
    {
      sub_1CA16211C();
      sub_1CA16211C();
      v17 = v16;
      sub_1CA16211C();
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1CA19B5C8();
  OUTLINED_FUNCTION_4_6();
  (*(v13 + 8))(a2);
  sub_1CA19B4D8();
  OUTLINED_FUNCTION_4_6();
  (*(v14 + 8))(a1);
  return v9;
}

uint64_t sub_1CA194410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = VisualAreaArtwork.LayoutConstraints.init(deserializing:using:)(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
    *(a9 + 8) = v12;
    *(a9 + 16) = v13;
    *(a9 + 24) = v14 & 1;
  }

  return result;
}

uint64_t sub_1CA194448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1CA193930(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 25) = v8 & 1;
  return result;
}

uint64_t sub_1CA194480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA193AD0(a1, *(v2 + 16), type metadata accessor for DynamicArtwork, DynamicArtwork.__allocating_init(deserializing:using:));
  *a2 = result;
  return result;
}

uint64_t sub_1CA1944DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA19451C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for VisualAreaArtwork.LayoutConstraints(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VisualAreaArtwork.LayoutConstraints(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VisualAreaArtwork.LayoutConstraints(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1CA194614(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA194630(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 24) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for VisualAreaArtwork.LayoutConstraints.Keys.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA194744()
{
  result = qword_1EC4345D8;
  if (!qword_1EC4345D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4345D8);
  }

  return result;
}

uint64_t AlignableVisualAreaArtwork.init(artwork:sizeConstraints:horizontalAlignment:accessibilityAlignment:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 8) = a1;
  result = sub_1CA0EBE94(a2, a5 + 16);
  *(a5 + 56) = a3;
  *a5 = a4;
  return result;
}

uint64_t AlignableVisualAreaImageViewContainer.horizontalAlignment.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t AlignableVisualAreaImageViewContainer.horizontalAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AlignableVisualAreaImageViewContainer.accessibilityAlignment.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment;
  OUTLINED_FUNCTION_1_5();
  return *(v0 + v1);
}

uint64_t AlignableVisualAreaImageViewContainer.accessibilityAlignment.setter(char a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment;
  result = OUTLINED_FUNCTION_13();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1CA1949B4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1CA19C608();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment;
    OUTLINED_FUNCTION_4_5();
    result = v1[v4];
    if (result != 4)
    {
      return result;
    }

    v6 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment];
  }

  else
  {
    v6 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment];
  }

  OUTLINED_FUNCTION_4_5();
  return *v6;
}

char *AlignableVisualAreaImageViewContainer.__allocating_init(artworkSize:sizeConstraints:horizontalAlignment:accessibilityAlignment:)(uint64_t a1, char a2, char a3)
{
  OUTLINED_FUNCTION_23_3();
  v7 = objc_allocWithZone(v3);
  OUTLINED_FUNCTION_17_3();
  return AlignableVisualAreaImageViewContainer.init(artworkSize:sizeConstraints:horizontalAlignment:accessibilityAlignment:)(a1, a2, a3);
}

char *AlignableVisualAreaImageViewContainer.init(artworkSize:sizeConstraints:horizontalAlignment:accessibilityAlignment:)(uint64_t a1, char a2, char a3)
{
  OUTLINED_FUNCTION_23_3();
  v7 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment;
  *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment) = 4;
  sub_1CA0F2ACC(v8, v15);
  v9 = objc_allocWithZone(type metadata accessor for VisualAreaImageView());
  OUTLINED_FUNCTION_17_3();
  *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_visualAreaImageView) = sub_1CA1954CC(v10);
  *(v3 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment) = a2;
  OUTLINED_FUNCTION_22_5();
  *(v3 + v7) = a3;
  type metadata accessor for AlignableVisualAreaImageViewContainer();
  OUTLINED_FUNCTION_15_9();
  v13 = objc_msgSendSuper2(v11, v12);
  [v13 addSubview_];
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v13;
}

void sub_1CA194BE4()
{
  *(v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment) = 4;
  OUTLINED_FUNCTION_8_16();
  __break(1u);
}

Swift::Void __swiftcall AlignableVisualAreaImageViewContainer.layoutSubviews()()
{
  v3 = type metadata accessor for AlignableVisualAreaImageViewContainer();
  v34.receiver = v0;
  v34.super_class = v3;
  objc_msgSendSuper2(&v34, sel_layoutSubviews);
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v4 = sub_1CA19AFF8();
  __swift_project_value_buffer(v4, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v5 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v5);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v33 = v3;
  v32[0] = v0;
  v6 = v0;
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v32);
  sub_1CA19AF18();
  OUTLINED_FUNCTION_12_14();
  OUTLINED_FUNCTION_5_20();
  v10 = v9;
  v12 = v11;
  type metadata accessor for CGRect(0);
  v33 = v13;
  v14 = swift_allocObject();
  v32[0] = v14;
  v14[2] = v1;
  v14[3] = v2;
  v14[4] = v10;
  v14[5] = v12;
  sub_1CA19AF38();
  sub_1CA0F0440(v32);
  sub_1CA19AFC8();

  v15 = *&v6[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_visualAreaImageView];
  OUTLINED_FUNCTION_12_14();
  Width = CGRectGetWidth(v35);
  VisualAreaImageView.updateArtworkSizeForMaxWidth(_:)(Width);
  OUTLINED_FUNCTION_12_14();
  [v15 measurementsWithFitting:v6 in:{v17, v18}];
  OUTLINED_FUNCTION_5_20();
  OUTLINED_FUNCTION_12_14();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1CA1949B4();
  v28 = [v6 traitCollection];
  sub_1CA13B6DC(v27, v28);
  v29 = OUTLINED_FUNCTION_10_18();
  CGRect.alignedFrame(for:resolvedHorizontalAlignment:)(v30, v29, v31, v20, v22, v24, v26);
  OUTLINED_FUNCTION_5_20();

  OUTLINED_FUNCTION_12_14();
  sub_1CA19C648();
  [v15 setFrame_];
}

uint64_t AlignableVisualAreaImageViewContainer.apply(model:asPartOf:)(unsigned __int8 *a1, uint64_t a2)
{
  v5 = a1[56];
  if (v5 != 4)
  {
    v6 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_horizontalAlignment;
    OUTLINED_FUNCTION_22_5();
    *(v2 + v6) = v5;
  }

  v7 = *a1;
  if (v7 != 4)
  {
    v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_accessibilityAlignment;
    OUTLINED_FUNCTION_22_5();
    *(v2 + v8) = v7;
  }

  return sub_1CA1961D0(a1, a2, *(v2 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic37AlignableVisualAreaImageViewContainer_visualAreaImageView));
}

CGSize __swiftcall AlignableVisualAreaImageViewContainer.sizeThatFits(_:)(CGSize a1)
{
  [v1 measurementsWithFitting:v1 in:{a1.width, a1.height}];
  result.height = v3;
  result.width = v2;
  return result;
}

void AlignableVisualAreaImageViewContainer.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v7 = sub_1CA19AFF8();
  __swift_project_value_buffer(v7, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v8 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v8);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v17 = type metadata accessor for AlignableVisualAreaImageViewContainer();
  v16[0] = v3;
  v9 = v3;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v16);
  sub_1CA19AF18();
  type metadata accessor for CGSize(0);
  v17 = v12;
  *v16 = a2;
  *&v16[1] = a3;
  sub_1CA19AF38();
  sub_1CA0F0440(v16);
  sub_1CA19AFC8();

  v13 = OUTLINED_FUNCTION_10_18();
  [v14 v15];
  OUTLINED_FUNCTION_15_9();
}

char *sub_1CA1954CC(uint64_t a1)
{
  v4 = v1;
  OUTLINED_FUNCTION_23_3();
  v6 = (v1 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_applyCachedArtwork);
  v7 = type metadata accessor for ArtworkImageView();
  *v6 = 0;
  v6[1] = 0;
  v8 = objc_allocWithZone(v7);
  OUTLINED_FUNCTION_15_9();
  OUTLINED_FUNCTION_17_3();
  *(v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView) = ArtworkImageView.init(artworkSize:frame:)();
  v9 = (v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize);
  *v9 = v3;
  v9[1] = v2;
  sub_1CA0F2ACC(a1, v4 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints);
  type metadata accessor for VisualAreaImageView();
  OUTLINED_FUNCTION_15_9();
  v12 = objc_msgSendSuper2(v10, v11);
  v13 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_4_5();
  [v12 addSubview_];
  __swift_destroy_boxed_opaque_existential_2(a1);
  return v12;
}

void sub_1CA1955EC()
{
  v1 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_applyCachedArtwork);
  *v1 = 0;
  v1[1] = 0;
  OUTLINED_FUNCTION_8_16();
  __break(1u);
}

id VisualAreaImageView.artworkImageView.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_1_5();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1CA1956C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_13();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VisualAreaImageView.sizeConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints;
  OUTLINED_FUNCTION_4_5();
  return sub_1CA0F2ACC(v1 + v3, a1);
}

uint64_t sub_1CA19579C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_2(v1 + v3);
  sub_1CA0EBE94(a1, v1 + v3);
  return swift_endAccess();
}

double VisualAreaImageView.artworkSize.getter()
{
  v1 = v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize;
  OUTLINED_FUNCTION_4_5();
  return *v1;
}

uint64_t sub_1CA19586C()
{
  OUTLINED_FUNCTION_23_3();
  v3 = (v0 + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize);
  result = OUTLINED_FUNCTION_22_5();
  *v3 = v2;
  v3[1] = v1;
  return result;
}

Swift::Void __swiftcall VisualAreaImageView.layoutSubviews()()
{
  if (qword_1EE03B230 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v1 = sub_1CA19AFF8();
  __swift_project_value_buffer(v1, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  v2 = sub_1CA19AF88();
  OUTLINED_FUNCTION_7_3(v2);
  OUTLINED_FUNCTION_4_8();
  *(swift_allocObject() + 16) = xmmword_1CA1A0B80;
  v3 = type metadata accessor for VisualAreaImageView();
  v13 = v3;
  v12[0] = v0;
  v4 = v0;
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(v12);
  v13 = v3;
  v12[0] = v4;
  v7 = v4;
  sub_1CA19AF38();
  sub_1CA0F0440(v12);
  sub_1CA19AFC8();

  v11.receiver = v7;
  v11.super_class = v3;
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  v8 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_4_5();
  v9 = *&v7[v8];
  OUTLINED_FUNCTION_4_5();
  v10 = v9;
  [v10 frame];
  [v10 setFrame_];
}

id VisualAreaImageView.hasContent.getter()
{
  v1 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_1_5();
  return [*(v0 + v1) hasContent];
}

void VisualAreaImageView.updateArtworkSizeForMaxWidth(_:)(double a1)
{
  v3 = &v1[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize];
  OUTLINED_FUNCTION_22_5();
  v4 = *v3;
  v5 = v3[1];
  _s27AppleMediaServicesUIDynamic19VisualAreaImageViewC12sizeThatFitsySo6CGSizeVAFF_0(a1);
  *v3 = v7;
  v3[1] = v6;
  if (v4 != v7 || v5 != v6)
  {
    if (qword_1EE03B230 != -1)
    {
      OUTLINED_FUNCTION_0_2();
    }

    v9 = sub_1CA19AFF8();
    __swift_project_value_buffer(v9, qword_1EE040B90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
    v10 = sub_1CA19AF88();
    OUTLINED_FUNCTION_7_3(v10);
    OUTLINED_FUNCTION_4_8();
    *(swift_allocObject() + 16) = xmmword_1CA1A19C0;
    v17 = type metadata accessor for VisualAreaImageView();
    *&v16 = v1;
    v11 = v1;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_1CA19C118();
    }

    sub_1CA19AF58();

    __swift_destroy_boxed_opaque_existential_2(&v16);
    sub_1CA19AF18();
    type metadata accessor for CGSize(0);
    v15 = v14;
    v17 = v14;
    *&v16 = v4;
    *(&v16 + 1) = v5;
    sub_1CA19AF38();
    sub_1CA0F0440(&v16);
    sub_1CA19AF18();
    v17 = v15;
    v16 = *v3;
    sub_1CA19AF38();
    sub_1CA0F0440(&v16);
    sub_1CA19AF98();

    [v11 setNeedsLayout];
  }
}

void _s27AppleMediaServicesUIDynamic19VisualAreaImageViewC12sizeThatFitsySo6CGSizeVAFF_0(double a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints;
  OUTLINED_FUNCTION_4_5();
  sub_1CA0F2ACC(v2 + v4, v19);
  if (a1 <= 0.0)
  {
    OUTLINED_FUNCTION_6_20();
    __swift_project_boxed_opaque_existential_2(v5, v6);
    v7 = OUTLINED_FUNCTION_7_20();
    v8(v7);
  }

  OUTLINED_FUNCTION_6_20();
  __swift_project_boxed_opaque_existential_2(v9, v10);
  v11 = OUTLINED_FUNCTION_7_20();
  v12(v11);
  OUTLINED_FUNCTION_6_20();
  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v15 = OUTLINED_FUNCTION_7_20();
  v16(v15);
  v17 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  OUTLINED_FUNCTION_4_5();
  v18 = (*(v2 + v17) + OBJC_IVAR____TtC27AppleMediaServicesUIDynamic16ArtworkImageView_artworkSize);
  OUTLINED_FUNCTION_4_5();
  CGSize.sizeWithVisualAreaConstraints(_:)(v19, *v18, v18[1]);
  OUTLINED_FUNCTION_5_20();
  __swift_destroy_boxed_opaque_existential_2(v19);
  OUTLINED_FUNCTION_10_18();
}

uint64_t VisualAreaImageView.apply(model:asPartOf:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_2(a1, v4);

  return sub_1CA196698(v6, a2, v2, v4, v5);
}

id VisualAreaImageView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1CA19607C(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1CA196138(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1CA1961D0(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = &type metadata for AlignableVisualAreaArtwork;
  v41 = &protocol witness table for AlignableVisualAreaArtwork;
  v5 = swift_allocObject();
  v39[0] = v5;
  sub_1CA196C80(a1, v5 + 16);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v6 = sub_1CA19AFF8();
  __swift_project_value_buffer(v6, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v7 = type metadata accessor for VisualAreaImageView();
  v38 = v7;
  *&v37 = a3;
  v8 = a3;
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v37);
  sub_1CA19AF18();
  v11 = v40;
  v12 = __swift_project_boxed_opaque_existential_2(v39, v40);
  v38 = v11;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(&v37);
  (*(v11[-1].Description + 2))(boxed_opaque_existential_2Tm, v12, v11);
  sub_1CA19AF38();
  sub_1CA0F0440(&v37);
  sub_1CA19AF98();

  v14 = *(v5 + 24);
  sub_1CA0F2ACC(v5 + 32, &v37);
  v15 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_2(&v8[v15]);
  sub_1CA0EBE94(&v37, &v8[v15]);
  swift_endAccess();
  v16 = *(v14 + 24);
  v17 = *(v16 + 32);
  v18 = *(v16 + 40);
  sub_1CA0F2ACC(&v8[v15], &v37);
  CGSize.sizeWithVisualAreaConstraints(_:)(&v37, v17, v18);
  v20 = v19;
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_2(&v37);
  v23 = &v8[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize];
  swift_beginAccess();
  *v23 = v20;
  *(v23 + 1) = v22;
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v38 = v7;
  *&v37 = v8;
  v24 = v8;
  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v37);
  sub_1CA19AF18();
  v27 = *v23;
  v28 = *(v23 + 1);
  type metadata accessor for CGSize(0);
  v38 = v29;
  *&v37 = v27;
  *(&v37 + 1) = v28;
  sub_1CA19AF38();
  sub_1CA0F0440(&v37);
  sub_1CA19AF98();

  v30 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  swift_beginAccess();
  [*&v24[v30] removeFromSuperview];
  v31 = objc_allocWithZone(type metadata accessor for ArtworkImageView());
  v32 = ArtworkImageView.init(artworkSize:frame:)();
  v33 = *&v24[v30];
  *&v24[v30] = v32;

  [v24 addSubview_];
  v34 = *&v24[v30];
  ArtworkImageView.apply(dynamicArtwork:asPartOf:)(v14, a2);

  return __swift_destroy_boxed_opaque_existential_2(v39);
}

uint64_t sub_1CA196698(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v43);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_2Tm, a1, a4);
  if (qword_1EE03B230 != -1)
  {
    swift_once();
  }

  v9 = sub_1CA19AFF8();
  __swift_project_value_buffer(v9, qword_1EE040B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC433960);
  sub_1CA19AF88();
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v38 = type metadata accessor for VisualAreaImageView();
  v42 = v38;
  *&v41 = a3;
  v10 = a3;
  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v41);
  sub_1CA19AF18();
  v13 = v44;
  v14 = __swift_project_boxed_opaque_existential_2(v43, v44);
  v42 = v13;
  v15 = __swift_allocate_boxed_opaque_existential_2Tm(&v41);
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  sub_1CA19AF38();
  sub_1CA0F0440(&v41);
  sub_1CA19AF98();

  v16 = (*(a5 + 8))(a4, a5);
  (*(a5 + 16))(&v41, a4, a5);
  v17 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_sizeConstraints;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_2(&v10[v17]);
  sub_1CA0EBE94(&v41, &v10[v17]);
  swift_endAccess();
  v18 = *(v16 + 24);
  v19 = *(v18 + 32);
  v20 = *(v18 + 40);
  sub_1CA0F2ACC(&v10[v17], &v41);
  CGSize.sizeWithVisualAreaConstraints(_:)(&v41, v19, v20);
  v22 = v21;
  v24 = v23;
  __swift_destroy_boxed_opaque_existential_2(&v41);
  v25 = &v10[OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkSize];
  swift_beginAccess();
  *v25 = v22;
  *(v25 + 1) = v24;
  *(swift_allocObject() + 16) = xmmword_1CA1A0930;
  v42 = v38;
  *&v41 = v10;
  v26 = v10;
  v27 = AMSLogKey();
  if (v27)
  {
    v28 = v27;
    sub_1CA19C118();
  }

  sub_1CA19AF58();

  __swift_destroy_boxed_opaque_existential_2(&v41);
  sub_1CA19AF18();
  v29 = *v25;
  v30 = *(v25 + 1);
  type metadata accessor for CGSize(0);
  v42 = v31;
  *&v41 = v29;
  *(&v41 + 1) = v30;
  sub_1CA19AF38();
  sub_1CA0F0440(&v41);
  sub_1CA19AF98();

  v32 = OBJC_IVAR____TtC27AppleMediaServicesUIDynamic19VisualAreaImageView_artworkImageView;
  swift_beginAccess();
  [*&v26[v32] removeFromSuperview];
  v33 = objc_allocWithZone(type metadata accessor for ArtworkImageView());
  v34 = ArtworkImageView.init(artworkSize:frame:)();
  v35 = *&v26[v32];
  *&v26[v32] = v34;

  [v26 addSubview_];
  v36 = *&v26[v32];
  ArtworkImageView.apply(dynamicArtwork:asPartOf:)(v16, a2);

  return __swift_destroy_boxed_opaque_existential_2(v43);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CA196BD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1CA196C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_1CA19C9F8();
}

id OUTLINED_FUNCTION_12_14()
{

  return [v0 (v1 + 3832)];
}

void AMSUIDMarkdownParserStartDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidStartDocument:v1];
}

void AMSUIDMarkdownParserEndDocument(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  [v2 parserDidEndDocument:v1];
}

void AMSUIDMarkdownParserStartElement(void *a1, const xmlChar *a2, xmlChar **a3)
{
  v9 = a1;
  if (xmlStrEqual(a2, "artwork"))
  {
    v5 = [v9 delegate];
    v6 = NSDictionaryFromAttributes(a3);
    v7 = [v6 objectForKeyedSubscript:@"id"];
    [v5 parser:v9 didFindArtworkWithIdentifier:v7];

LABEL_3:
LABEL_8:

    goto LABEL_9;
  }

  if (xmlStrEqual(a2, "li"))
  {
    v5 = [v9 delegate];
    [v5 parserDidStartListElement:v9];
    goto LABEL_8;
  }

  v11 = 0;
  if (TryListTypeFromName(a2, &v11))
  {
    v5 = [v9 delegate];
    [v5 parser:v9 didStartListOfStyle:v11];
    goto LABEL_8;
  }

  v10 = 0;
  if (TryTextElementFromName(a2, &v10))
  {
    v5 = [v9 delegate];
    v8 = v10;
    v6 = NSDictionaryFromAttributes(a3);
    [v5 parser:v9 didStartElement:v8 attributes:v6];
    goto LABEL_3;
  }

LABEL_9:
}

void AMSUIDMarkdownParserEndElement(void *a1, const xmlChar *a2)
{
  v4 = a1;
  if (xmlStrEqual(a2, "br"))
  {
    v3 = [v4 delegate];
    [v3 parserDidFindNewline:v4];
  }

  else if (xmlStrEqual(a2, "li"))
  {
    v3 = [v4 delegate];
    [v3 parserDidEndListElement:v4];
  }

  else
  {
    v6 = 0;
    if (TryListTypeFromName(a2, &v6))
    {
      v3 = [v4 delegate];
      [v3 parser:v4 didEndListOfStyle:v6];
    }

    else
    {
      v5 = 0;
      if (!TryTextElementFromName(a2, &v5))
      {
        goto LABEL_10;
      }

      v3 = [v4 delegate];
      [v3 parser:v4 didEndElement:v5];
    }
  }

LABEL_10:
}

void AMSUIDMarkdownParserCharacters(void *a1, __CFString *a2, int a3)
{
  v7 = a1;
  v5 = NSStringFromXmlChar(a2, a3);
  if (v5)
  {
    v6 = [v7 delegate];
    [v6 parser:v7 didFindCharacters:v5];
  }
}

void AMSUIDMarkdownParserError(void *a1)
{
  v3 = a1;
  LastError = xmlCtxtGetLastError([v3 _parserContext]);
  if (LastError)
  {
    v2 = LastError;
    [v3 reportParseError:LastError];
    if (v2->level == XML_ERR_FATAL)
    {
      xmlStopParser([v3 _parserContext]);
    }
  }
}

id NSDictionaryFromAttributes(xmlChar **a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = *a1;
    if (*a1)
    {
      v4 = a1 + 2;
      do
      {
        v5 = *(v4 - 1);
        v6 = xmlStrlen(v3);
        v7 = NSStringFromXmlChar(v3, v6);
        v8 = xmlStrlen(v5);
        v9 = NSStringFromXmlChar(v5, v8);
        [v2 setObject:v9 forKeyedSubscript:v7];

        v10 = *v4;
        v4 += 2;
        v3 = v10;
      }

      while (v10);
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  return v2;
}

uint64_t TryListTypeFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "ol"))
  {
    v4 = 0;
  }

  else
  {
    result = xmlStrEqual(a1, "ul");
    if (!result)
    {
      return result;
    }

    v4 = 1;
  }

  *a2 = v4;
  return 1;
}

uint64_t TryTextElementFromName(const xmlChar *a1, uint64_t *a2)
{
  if (xmlStrEqual(a1, "b") || xmlStrEqual(a1, "em"))
  {
    v4 = 1;
LABEL_4:
    *a2 = v4;
    return 1;
  }

  if (xmlStrEqual(a1, "a"))
  {
    v4 = 3;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "appl"))
  {
    v4 = 0;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "i"))
  {
    v4 = 2;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "u"))
  {
    v4 = 4;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "strike") || xmlStrEqual(a1, "del"))
  {
    v4 = 5;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "p") || xmlStrEqual(a1, "div"))
  {
    v4 = 6;
    goto LABEL_4;
  }

  if (xmlStrEqual(a1, "s"))
  {
    v4 = 7;
    goto LABEL_4;
  }

  result = xmlStrEqual(a1, "symbol");
  if (result)
  {
    v4 = 8;
    goto LABEL_4;
  }

  return result;
}

__CFString *NSStringFromXmlChar(__CFString *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      a1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:a2 encoding:4];
    }

    else
    {
      a1 = &stru_1F49D3688;
    }

    v2 = vars8;
  }

  return a1;
}

void sub_1CA199D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyMi.isa);

    objc_end_catch();
    JUMPOUT(0x1CA199D0CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1CA19A938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}