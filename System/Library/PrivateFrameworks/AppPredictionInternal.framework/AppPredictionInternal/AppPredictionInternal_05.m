uint64_t sub_2267A2ABC()
{
  v1 = &v0[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey];
  if (*&v0[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey + 8])
  {
    v2 = *v1;
    v3 = *&v0[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey + 8];
  }

  else
  {
    sub_226836968();

    v4 = [v0 defaultsKeyPrefix];
    v5 = sub_226836408();
    v7 = v6;

    v10 = v7;
    MEMORY[0x22AA7F8E0](0xD000000000000013, 0x80000002268CDCB0);
    v2 = v5;
    v8 = v1[1];
    *v1 = v5;
    v1[1] = v10;
  }

  return v2;
}

id ATXNotificationNextAppLaunchRecorder.init(defaults:dataStore:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDefaults:a1 dataStore:a2];

  return v4;
}

{
  v4 = sub_2267A596C(a1, a2);

  return v4;
}

uint64_t sub_2267A2C90()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 allInstalledAppsKnownToSpringBoard];

  v2 = sub_226836568();
  v3 = sub_2267A5D68(v2);

  return v3;
}

Swift::Void __swiftcall ATXNotificationNextAppLaunchRecorder.updateNotificationsWithNextAppLaunch()()
{
  v1 = v0;
  v2 = [v0 queue];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2267A5A68;
  *(v4 + 24) = v3;
  v7[4] = sub_2267A5A70;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2267A3E84;
  v7[3] = &block_descriptor_0;
  v5 = _Block_copy(v7);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_2267A2EE0(void *a1)
{
  v86 = sub_226836068();
  v87 = *(v86 - 8);
  v2 = v87[8];
  MEMORY[0x28223BE20](v86, v3);
  v96 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226835228();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5, v8);
  v85 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v98 = &v84 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v84 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v84 - v27;
  v92 = v29;
  v32 = MEMORY[0x28223BE20](v30, v31);
  v100 = &v84 - v33;
  v34 = [a1 installedAppsProvider];
  v35 = v34[2]();
  v91 = sub_226836668();

  _Block_release(v34);
  v36 = [a1 defaults];
  v93 = a1;
  v37 = [a1 appLaunchTimestampKey];
  [v36 doubleForKey_];

  sub_226835158();
  sub_226835208();
  sub_2268351D8();
  v99 = v6;
  v38 = v6[1];
  v38(v16, v5);
  sub_2267A5C48(&qword_28138FCC0, MEMORY[0x277CC9578]);
  v39 = sub_226836398();
  v40 = (v39 & 1) == 0;
  if (v39)
  {
    v41 = v24;
  }

  else
  {
    v41 = v20;
  }

  if (v40)
  {
    v42 = v24;
  }

  else
  {
    v42 = v20;
  }

  v38(v41, v5);
  v43 = v6 + 4;
  v44 = v6[4];
  v44(v28, v42, v5);
  sub_226835208();
  sub_226835168();
  v90 = v16;
  v38(v16, v5);
  v45 = v98;
  sub_226835158();
  v46 = v85;
  v47 = sub_2268363A8();
  v48 = (v47 & 1) == 0;
  if (v47)
  {
    v49 = v28;
  }

  else
  {
    v49 = v45;
  }

  if (v48)
  {
    v45 = v28;
  }

  v97 = v38;
  v98 = (v6 + 1);
  v38(v49, v5);
  v50 = v86;
  v51 = v100;
  v88 = v44;
  v89 = v43;
  v44(v100, v45, v5);
  v52 = sub_2267993C0();
  v53 = v87;
  (v87[2])(v96, v52, v50);
  v94 = v99[2];
  v95 = v99 + 2;
  v94(v46, v51, v5);
  v54 = sub_226836038();
  v55 = sub_2268366E8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    sub_2267A5C48(&qword_28138FE40, MEMORY[0x277CC9578]);
    v58 = sub_226836B48();
    v59 = v46;
    v61 = v60;
    v97(v59, v5);
    v62 = sub_2263B4D48(v58, v61, aBlock);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_2263AA000, v54, v55, "NotificationNextAppLaunchRecorder: startDate: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x22AA821D0](v57, -1, -1);
    MEMORY[0x22AA821D0](v56, -1, -1);
  }

  else
  {

    v97(v46, v5);
  }

  (v53[1])(v96, v50);
  v63 = swift_allocObject();
  *(v63 + 16) = MEMORY[0x277D84F98];
  v86 = swift_allocBox();
  v96 = v64;
  v65 = v100;
  v66 = v94;
  v94(v64, v100, v5);
  v67 = v66;
  v68 = v93;
  v87 = [v93 appInFocusStream];
  v69 = sub_2268351A8();
  v70 = v90;
  v67(v90, v65, v5);
  v71 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v72 = (v92 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  *(v73 + 16) = v91;
  *(v73 + 24) = v63;
  v88(v73 + v71, v70, v5);
  *(v73 + v72) = v68;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v86;
  aBlock[4] = sub_2267A5BA4;
  aBlock[5] = v73;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2267A3E2C;
  aBlock[3] = &block_descriptor_32;
  v74 = _Block_copy(aBlock);

  v75 = v68;

  v76 = v87;
  [v87 enumerateAppLaunchEventsFromStartDate:v69 block:v74];
  _Block_release(v74);

  v77 = [v75 defaults];
  v78 = v96;
  swift_beginAccess();
  v94(v70, v78, v5);
  sub_226835168();
  v80 = v79;
  v81 = v97;
  v97(v70, v5);
  v82 = [v75 appLaunchTimestampKey];
  [v77 setDouble:v82 forKey:v80];

  v81(v100, v5);
}

void sub_2267A379C(void *a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  v54 = a3;
  v52 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v48 - v18;
  v20 = sub_226835228();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v53 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v48 - v27;
  v50 = swift_projectBox();
  v55 = [a1 bundleID];
  if (!v55)
  {
    v49 = v19;
    sub_226836408();
    v55 = sub_2268363F8();

    v19 = v49;
  }

  v29 = sub_226836408();
  v31 = v30;
  if ([a1 starting] && (sub_2263B7360(v29, v31, v52) & 1) != 0)
  {
    v32 = [a1 absoluteTimestamp];
    sub_2268351F8();

    v33 = v54;
    swift_beginAccess();
    v34 = *(v33 + 16);
    v35 = *(v34 + 16);
    v49 = v29;
    if (v35 && (v36 = sub_2263B9740(v29, v31), (v37 & 1) != 0))
    {
      v38 = v28;
      (*(v21 + 16))(v19, *(v34 + 56) + *(v21 + 72) * v36, v20);
      v39 = 0;
    }

    else
    {
      v38 = v28;
      v39 = 1;
    }

    v52 = *(v21 + 56);
    v52(v19, v39, 1, v20);
    sub_2267A5C90(v19, v15);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      (*(v21 + 16))(v53, a4, v20);
      sub_2267A5D00(v15);
    }

    else
    {
      (*(v21 + 32))(v53, v15, v20);
    }

    swift_endAccess();
    v41 = [a5 dataStore];
    v42 = sub_2268351A8();
    v43 = v53;
    v44 = sub_2268351A8();
    [v41 updateNotificationsWithNextAppLaunchDate:v42 receivedDateAfter:v44 forBundleId:v55];

    v45 = v50;
    swift_beginAccess();
    (*(v21 + 24))(v45, v38, v20);
    v46 = v51;
    (*(v21 + 16))(v51, v38, v20);
    v52(v46, 0, 1, v20);
    swift_beginAccess();
    sub_2267A3C74(v46, v49, v31);
    swift_endAccess();
    v47 = *(v21 + 8);
    v47(v43, v20);
    v47(v38, v20);
  }

  else
  {

    v40 = v55;
  }
}

uint64_t sub_2267A3C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v22 - v10;
  v12 = sub_226835228();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12, v16) == 1)
  {
    sub_2267A5D00(a1);
    sub_2267A4DE0(a2, a3, v11);

    return sub_2267A5D00(v11);
  }

  else
  {
    (*(v13 + 32))(v18, a1, v12);
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_2267A54BC(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v23;
  }

  return result;
}

uint64_t sub_2267A3E2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

Swift::Void __swiftcall ATXNotificationNextAppLaunchRecorder.resetDefaults()()
{
  v1 = [v0 defaults];
  v2 = [v0 appLaunchTimestampKey];
  [v1 removeObjectForKey_];
}

id ATXNotificationNextAppLaunchRecorder.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2267A414C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2267A4198(a1, a2);
  sub_2267A42C8(&unk_283994540);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2267A4198(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2267A43B4(v5, 0);
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

  result = sub_2268369C8();
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
        v10 = sub_2268364C8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2267A43B4(v10, 0);
        result = sub_226836958();
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

uint64_t sub_2267A42C8(uint64_t result)
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

  result = sub_2267A4428(result, v12, 1, v3);
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

void *sub_2267A43B4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA0, &unk_2268734C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2267A4428(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA0, &unk_2268734C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2267A451C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_226836C08();
  sub_226836498();
  v9 = sub_226836C48();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_226836B58() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2267A48CC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2267A466C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  result = sub_226836928();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2267A48CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2267A466C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2267A4A4C();
      goto LABEL_16;
    }

    sub_2267A4BA8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_226836C08();
  sub_226836498();
  result = sub_226836C48();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_226836B58();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_226836B98();
  __break(1u);
  return result;
}

void *sub_2267A4A4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  v2 = *v0;
  v3 = sub_226836918();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_2267A4BA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1DB0, &qword_2268733B0);
  result = sub_226836928();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_226836C08();

      sub_226836498();
      result = sub_226836C48();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2267A4DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2263B9740(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2267A56EC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_226835228();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_2267A52D0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_226835228();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2267A4F50(uint64_t a1, int a2)
{
  v3 = v2;
  v50 = sub_226835228();
  v6 = *(v50 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v50, v8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v11 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B30, &unk_2268733D0);
  v47 = a2;
  result = sub_226836AA8();
  v13 = result;
  if (*(v10 + 16))
  {
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v2;
    v44 = (v6 + 16);
    v45 = v10;
    v46 = v6;
    v48 = (v6 + 32);
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *(v46 + 72);
      v32 = v27 + v31 * v26;
      if (v47)
      {
        (*v48)(v49, v32, v50);
      }

      else
      {
        (*v44)(v49, v32, v50);
      }

      v33 = *(v13 + 40);
      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v30;
      v22[1] = v29;
      result = (*v48)(*(v13 + 56) + v31 * v21, v49, v50);
      ++*(v13 + 16);
      v10 = v45;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

unint64_t sub_2267A52D0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_226836C08();

      sub_226836498();
      v13 = sub_226836C48();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_226835228() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
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

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2267A54BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2263B9740(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2267A56EC();
      goto LABEL_7;
    }

    sub_2267A4F50(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2263B9740(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_226836BA8();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_226835228();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2267A563C(v12, a2, a3, a1, v18);
}

uint64_t sub_2267A563C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_226835228();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_2267A56EC()
{
  v1 = v0;
  v37 = sub_226835228();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B30, &unk_2268733D0);
  v5 = *v0;
  v6 = sub_226836A98();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_2267A596C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___queue] = 0;
  v5 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder____lazy_storage___appLaunchTimestampKey];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaults] = a1;
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_dataStore] = a2;
  v6 = objc_allocWithZone(MEMORY[0x277CEBBE0]);
  v7 = a1;
  v8 = a2;
  v9 = [v6 init];
  *&v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_appInFocusStream] = v9;
  v10 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_defaultsKeyPrefix];
  *v10 = 0xD000000000000021;
  *(v10 + 1) = 0x80000002268CDD30;
  v11 = &v2[OBJC_IVAR___ATXNotificationNextAppLaunchRecorder_installedAppsProvider];
  *v11 = sub_2267A2C90;
  v11[1] = 0;
  v13.receiver = v2;
  v13.super_class = ATXNotificationNextAppLaunchRecorder;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_2267A5A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2267A5AD0()
{
  result = qword_28138FE20;
  if (!qword_28138FE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A2510, &qword_2268754C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE20);
  }

  return result;
}

uint64_t sub_2267A5B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_2267A5B74@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_2267A5BA4(void *a1)
{
  v3 = *(sub_226835228() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_2267A379C(a1, *(v1 + 16), *(v1 + 24), v1 + v4, *(v1 + v5));
  return 1;
}

uint64_t sub_2267A5C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267A5C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267A5D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267A5D68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA7FAA0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2267A451C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2267A5EE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 112))();
  *a1 = result;
  return result;
}

uint64_t sub_2267A5F18(uint64_t a1)
{
  result = sub_2263B9270(&qword_27D7A1B40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267A5F5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_226836118();
  result = sub_226836108();
  a1[3] = v2;
  a1[4] = &off_2839962B0;
  *a1 = result;
  return result;
}

void *sub_2267A5FD8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  type metadata accessor for PowerThrottlingCreditPool.Config();
  v7 = PowerThrottlingCreditPool.Config.__allocating_init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(0xD000000000000019, 0x80000002268CDD90, 20, 3600, 0xD000000000000019, 0x80000002268CD520, 0x6863746177, 0xE500000000000000);
  type metadata accessor for PowerThrottlingCreditPool();
  v8 = v7;
  v2[2] = PowerThrottlingCreditPool.__allocating_init(config:)(v8);
  sub_22679CBC4(a1, (v2 + 3));
  v9 = v2[6];
  v10 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v9);
  (*(v10 + 8))(v9, v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2267A62AC(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v104 - v10;
  MEMORY[0x28223BE20](v12, v13);
  MEMORY[0x28223BE20](v14, v15);
  MEMORY[0x28223BE20](v16, v17);
  MEMORY[0x28223BE20](v18, v19);
  v26 = MEMORY[0x28223BE20](&v104 - v20, v21);
  v28 = &v104 - v27;
  if (!a1)
  {
    goto LABEL_41;
  }

  v108 = v22;
  v109 = v25;
  v107 = v24;
  v110 = v23;
  v112 = v3;
  v29 = v2;
  v30 = [a1 allSuggestionsInLayout];
  sub_2263B51C8();
  v31 = sub_226836568();

  if (v31 >> 62)
  {
    v32 = sub_2268368D8();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v32 < 2;
  v2 = v29;
  v3 = v112;
  if (!v33)
  {
    v34 = sub_2267F7768();
    (*(v3 + 16))(v28, v34, v29);
    v35 = sub_226836038();
    v36 = sub_2268366D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2263AA000, v35, v36, "Unexpected number of Watch Smart Stack suggestions; the layout selector should only yield up to one", v37, 2u);
      MEMORY[0x22AA821D0](v37, -1, -1);
    }

    v3 = v112;
    v2 = v29;
    (*(v112 + 8))(v28, v29);
  }

  v38 = [a1 allSuggestionsInLayout];
  v39 = sub_226836568();

  if (!(v39 >> 62))
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

  result = sub_2268368D8();
  if (!result)
  {
LABEL_40:

LABEL_41:
    v100 = sub_2267F7768();
    (*(v3 + 16))(v7, v100, v2);
    v101 = sub_226836038();
    v102 = sub_2268366C8();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_2263AA000, v101, v102, "Proactive Suggestion not found. Cannot send proactive suggestion to Watch.", v103, 2u);
      MEMORY[0x22AA821D0](v103, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }

LABEL_10:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x22AA7FDD0](0, v39);
  }

  else
  {
    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v41 = *(v39 + 32);
  }

  v42 = v41;

  v43 = [v42 executableSpecification];
  v44 = [v43 executableObject];

  if (!v44)
  {
    goto LABEL_23;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
LABEL_23:
    v59 = sub_2267F7768();
    (*(v3 + 16))(v11, v59, v2);
    v60 = sub_226836038();
    v61 = sub_2268366C8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2263AA000, v60, v61, "Proactive Suggestion did not contain an ATXAction. Cannot send proactive suggestion to Watch.", v62, 2u);
      MEMORY[0x22AA821D0](v62, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  v46 = v111;
  v47 = *(*v111 + 128);
  v106 = v45;
  v48 = v47();
  v50 = v49;
  v51 = (*(*v46 + 136))();
  if (v52)
  {
    v53 = v51;
    v54 = v52;
    if (v48 == v51 && v52 == v50 || (sub_226836B58() & 1) != 0)
    {

      v55 = sub_2267F7768();
      v7 = v109;
      (*(v3 + 16))(v109, v55, v2);
      v56 = sub_226836038();
      v57 = sub_2268366E8();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2263AA000, v56, v57, "Not sending the same Watch Smart Stack suggestions", v58, 2u);
        MEMORY[0x22AA821D0](v58, -1, -1);
      }

      swift_unknownObjectRelease();
      return (*(v3 + 8))(v7, v2);
    }

    v105 = v42;
    v76 = sub_2267F7768();
    v77 = v3 + 16;
    v75 = *(v3 + 16);
    v109 = v77 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v78 = v107;
    v75(v107, v76, v2);

    v79 = sub_226836038();
    v80 = sub_2268366E8();

    v81 = os_log_type_enabled(v79, v80);
    v108 = v2;
    if (v81)
    {
      v82 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v113 = v104;
      *v82 = 136315394;
      *(v82 + 4) = sub_2263B4D48(v48, v50, &v113);
      *(v82 + 12) = 2080;
      v83 = sub_2263B4D48(v53, v54, &v113);
      v84 = v78;
      v85 = v83;

      *(v82 + 14) = v85;
      _os_log_impl(&dword_2263AA000, v79, v80, "Sending updated Watch Smart Stack suggestion: %s (last one: %s", v82, 0x16u);
      v86 = v104;
      swift_arrayDestroy();
      MEMORY[0x22AA821D0](v86, -1, -1);
      MEMORY[0x22AA821D0](v82, -1, -1);

      v73 = *(v112 + 8);
      v87 = v84;
    }

    else
    {

      v73 = *(v112 + 8);
      v87 = v78;
    }

    v74 = v108;
    v73(v87, v108);
    v42 = v105;
  }

  else
  {
    v63 = sub_2267F7768();
    v64 = *(v3 + 16);
    v65 = v3;
    v109 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v66 = v108;
    v107 = v64;
    v64(v108, v63, v2);

    v67 = sub_226836038();
    v68 = sub_2268366E8();

    v69 = v2;
    if (os_log_type_enabled(v67, v68))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v113 = v71;
      *v70 = 136315138;
      *(v70 + 4) = sub_2263B4D48(v48, v50, &v113);
      _os_log_impl(&dword_2263AA000, v67, v68, "Sending new Watch Smart Stack suggestion: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x22AA821D0](v71, -1, -1);
      MEMORY[0x22AA821D0](v70, -1, -1);

      v72 = v112;
    }

    else
    {

      v72 = v65;
    }

    v73 = *(v72 + 8);
    v74 = v69;
    v73(v66, v69);
    v75 = v107;
  }

  v88 = sub_2267F7768();
  v89 = v110;
  v75(v110, v88, v74);

  v90 = sub_226836038();
  v91 = sub_2268366B8();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = v89;
    v108 = v74;
    v94 = v92;
    v95 = v48;
    v96 = swift_slowAlloc();
    v113 = v96;
    *v94 = 136315394;
    *(v94 + 4) = sub_2263B4D48(0xD00000000000007FLL, 0x80000002268CDDB0, &v113);
    *(v94 + 12) = 2080;
    v97 = sub_2263B4D48(v95, v50, &v113);

    *(v94 + 14) = v97;
    _os_log_impl(&dword_2263AA000, v90, v91, "%s: UI cache updated with suggestion ID: %s", v94, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v96, -1, -1);
    MEMORY[0x22AA821D0](v94, -1, -1);

    v98 = v93;
    v99 = v108;
  }

  else
  {

    v98 = v89;
    v99 = v74;
  }

  v73(v98, v99);
  (*(*v111 + 112))(v106, v42);

  return swift_unknownObjectRelease();
}

uint64_t sub_2267A6D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = *v2;
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *MEMORY[0x277CEBD00];
  sub_226836408();
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = sub_2268363F8();

  v15 = [v13 initWithSuiteName_];

  sub_226835218();
  sub_226835168();
  v17 = v16;
  (*(v7 + 8))(v11, v6);
  v18 = v3[2];
  v19 = swift_allocObject();
  swift_weakInit();
  v24 = v19;
  v25 = a1;
  v26 = v22;
  v27 = v15;
  v28 = v17;
  v29 = v5;
  (*((*MEMORY[0x277D85000] & *v18) + 0x78))(1, sub_2267A838C, v23);
}

uint64_t sub_2267A6F98(uint64_t a1, void *a2, void *a3, void *a4)
{
  v91 = a4;
  v111 = a3;
  v105 = sub_226836098();
  v104 = *(v105 - 8);
  v5 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v6);
  v107 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2268360A8();
  v108 = *(v120 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v120, v9);
  v103 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v119 = &v90 - v13;
  v106 = sub_2268360B8();
  v102 = *(v106 - 8);
  v14 = *(v102 + 64);
  MEMORY[0x28223BE20](v106, v15);
  v101 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v117 = &v90 - v19;
  v20 = sub_226834F28();
  v118 = *(v20 - 1);
  v21 = *(v118 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v100 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v116 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B50, "ԁ\n");
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v90 - v30;
  v32 = sub_2268360D8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32, v35);
  v99 = &v90 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v112 = &v90 - v39;
  v115 = sub_226835268();
  v113 = *(v115 - 8);
  v40 = *(v113 + 64);
  MEMORY[0x28223BE20](v115, v41);
  v98 = &v90 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v90 - v45;
  v47 = sub_226836068();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47, v50);
  v96 = &v90 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v53);
  v55 = &v90 - v54;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v95 = v47;
    v56 = [a2 actionUUID];
    v110 = v46;
    sub_226835248();

    v97 = a2;
    v57 = [a2 bundleId];
    v94 = sub_226836408();
    v93 = v58;

    v59 = [v111 scoreSpecification];
    [v59 suggestedConfidenceCategory];

    sub_2268360C8();
    v60 = *(v33 + 48);
    v61 = v60(v31, 1, v32);
    v111 = v20;
    v109 = v32;
    if (v61 == 1)
    {
      v62 = v112;
      (*(v33 + 104))(v112, *MEMORY[0x277D2BD88], v32);
      v63 = v60(v31, 1, v32);
      v64 = v106;
      v65 = v116;
      v66 = v117;
      v67 = v33;
      if (v63 != 1)
      {
        sub_2267A1DC0(v31, &qword_27D7A1B50, "ԁ\n");
      }
    }

    else
    {
      v62 = v112;
      (*(v33 + 32))(v112, v31, v32);
      v64 = v106;
      v65 = v116;
      v66 = v117;
      v67 = v33;
    }

    v92 = v67;
    v72 = v97;
    v73 = [v97 criteria];
    v74 = [v73 dateInterval];

    sub_226834EF8();
    v75 = v102;
    (*(v102 + 104))(v66, *MEMORY[0x277D2BD80], v64);
    v76 = Strong;
    v77 = v65;
    v78 = v64;
    v79 = v119;
    (*(*Strong + 120))(v72);
    (*(v113 + 16))(v98, v110, v115);
    (*(v67 + 16))(v99, v62, v109);
    (*(v118 + 16))(v100, v77, v111);
    (*(v75 + 16))(v101, v66, v78);
    (*(v108 + 16))(v103, v79, v120);
    v80 = v107;
    sub_226836088();
    v81 = v76[6];
    v82 = v76[7];
    __swift_project_boxed_opaque_existential_1(v76 + 3, v81);
    (*(v82 + 16))(v80, v81, v82);
    v83 = v120;
    v84 = v92;
    v85 = v109;
    v86 = v91;
    if (v91)
    {
      v87 = sub_226836648();
      v88 = sub_2268363F8();
      [v86 setValue:v87 forKey:v88];
    }

    (*(*Strong + 144))(v97);

    (*(v104 + 8))(v107, v105);
    (*(v108 + 8))(v119, v83);
    (*(v75 + 8))(v117, v106);
    (*(v118 + 8))(v116, v111);
    (*(v84 + 8))(v112, v85);
    return (*(v113 + 8))(v110, v115);
  }

  else
  {
    v68 = sub_2267F7768();
    (*(v48 + 16))(v55, v68, v47);
    v69 = sub_226836038();
    v70 = sub_2268366D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2263AA000, v69, v70, "Self was nil. Cannot replicate Proactive Suggestion to paired watch", v71, 2u);
      MEMORY[0x22AA821D0](v71, -1, -1);
    }

    return (*(v48 + 8))(v55, v47);
  }
}

uint64_t sub_2267A7C34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226835268();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_226836068();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = [a1 heuristic];
  if (v17)
  {
    v18 = v17;
    v19 = sub_226836408();
    v21 = v20;

    sub_2267B30A4(v19, v21, a2);
  }

  else
  {
    v23 = sub_2267F7768();
    (*(v11 + 16))(v16, v23, v10);
    v24 = a1;
    v25 = sub_226836038();
    v26 = sub_2268366D8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = a2;
      v28 = v27;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v28 = 136446210;
      v29 = [v24 actionUUID];
      sub_226835248();

      sub_2267A839C();
      v39 = v26;
      v30 = sub_226836B48();
      v32 = v31;
      (*(v5 + 8))(v9, v4);
      v33 = sub_2263B4D48(v30, v32, &v42);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_2263AA000, v25, v39, "[%{public}s] Heuristic was nil on action. This should never happen. Defaulting to unknown suggestion type", v28, 0xCu);
      v34 = v40;
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x22AA821D0](v34, -1, -1);
      v35 = v28;
      a2 = v41;
      MEMORY[0x22AA821D0](v35, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v36 = *MEMORY[0x277D2BD78];
    v37 = sub_2268360A8();
    return (*(*(v37 - 8) + 104))(a2, v36, v37);
  }
}

uint64_t sub_2267A7FA8(void *a1)
{
  v2 = sub_226835268();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 actionUUID];
  sub_226835248();

  sub_2267A839C();
  v12[0] = sub_226836B48();
  v12[1] = v10;
  (*(v3 + 8))(v8, v2);
  MEMORY[0x22AA7F8E0](41, 0xE100000000000000);
  return v12[0];
}

uint64_t sub_2267A80BC()
{
  v0 = *MEMORY[0x277CEBD00];
  sub_226836408();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2268363F8();

  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_2268363F8();
  v5 = [v3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_226836408();

  return v6;
}

void sub_2267A81B4(uint64_t a1)
{
  v3 = *MEMORY[0x277CEBD00];
  sub_226836408();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2268363F8();

  v6 = [v4 initWithSuiteName_];

  (*(*v1 + 128))(a1);
  if (v6)
  {
    v9 = v6;
    v7 = sub_2268363F8();

    v8 = sub_2268363F8();
    [v9 setValue:v7 forKey:v8];
  }

  else
  {
  }
}

uint64_t sub_2267A834C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_2267A839C()
{
  result = qword_27D7A1B48;
  if (!qword_27D7A1B48)
  {
    sub_226835268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1B48);
  }

  return result;
}

uint64_t sub_2267A8418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_226836068();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = sub_226835E78();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_226835EE8();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = sub_226835EC8();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B58, qword_2268734D8) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = sub_226835CC8();
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267A86B0, 0, 0);
}

uint64_t sub_2267A86B0()
{
  v41 = v0;
  v1 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  v2 = v1;
  v0[24] = v1;
  if (!v1 || (v3 = v1, sub_226835D78(), v4 = sub_2268363F8(), , v5 = [v3 stringForKey_], v4, v3, !v5))
  {
LABEL_5:
    v9 = v0[8];
    sub_226836028();
    v10 = sub_226836038();
    v11 = sub_2268366C8();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    if (v12)
    {
      v16 = v0[4];
      v39 = v0[8];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      v19 = sub_226836CA8();
      v21 = sub_2263B4D48(v19, v20, &v40);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2263AA000, v10, v11, "%s: No valid CarPlay identifier found in defaults. Device hasn't experienced CarPlay widgets", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x22AA821D0](v18, -1, -1);
      MEMORY[0x22AA821D0](v17, -1, -1);

      (*(v14 + 8))(v39, v15);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    v23 = v0[22];
    v22 = v0[23];
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[15];
    v27 = v0[12];
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];

    v31 = v0[1];

    return v31();
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  sub_226836408();

  sub_226835CB8();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_2267A1DC0(v0[19], &qword_27D7A1B58, qword_2268734D8);
    goto LABEL_5;
  }

  v33 = v0[22];
  v34 = v0[23];
  v35 = v0[20];
  v36 = v0[21];
  (*(v36 + 32))(v34, v0[19], v35);
  sub_226835E58();
  (*(v36 + 16))(v33, v34, v35);
  v0[25] = sub_226835E38();
  sub_2267ABDE8(&qword_27D7A1B60, MEMORY[0x277CFC7B0]);
  v38 = sub_2268365D8();

  return MEMORY[0x2822009F8](sub_2267A8A74, v38, v37);
}

uint64_t sub_2267A8A74()
{
  v1 = v0[25];
  v0[26] = sub_226835E48();
  v0[27] = 0;
  v2 = v0[25];

  return MEMORY[0x2822009F8](sub_2267A8B08, 0, 0);
}

uint64_t sub_2267A8B08()
{
  v65 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v31 = *(v0 + 208);
      }

      if (sub_2268368D8())
      {
        goto LABEL_4;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v2 = &selRef_dateByAddingComponents_toDate_options_;
      if ([*(v0 + 16) didDefer])
      {
        goto LABEL_6;
      }

      v3 = *(v0 + 136);
      v4 = *(v0 + 144);
      v5 = *(v0 + 128);
      v6 = *(v0 + 16);
      v7 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x58))(v1);
      sub_2267ABDE8(&qword_27D7A1B68, MEMORY[0x277CFC7D8]);
      sub_226835CD8();
      (*(v3 + 8))(v4, v5);
      if ([v6 didDefer])
      {
LABEL_6:
        v8 = *(v0 + 192);
        (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
      }

      else
      {
        v9 = (*((*v7 & **(v0 + 24)) + 0x60))(v1);

        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = *(v0 + 112);
          v14 = *(v11 + 16);
          v13 = v11 + 16;
          v12 = v14;
          v15 = v9 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
          v16 = *(v13 + 56);
          do
          {
            v17 = *(v0 + 120);
            v18 = *(v0 + 104);
            v12(v17, v15, v18);
            sub_2267ABDE8(&qword_27D7A1B70, MEMORY[0x277CFC7E8]);
            sub_226835CD8();
            (*(v13 - 8))(v17, v18);
            v15 += v16;
            --v10;
          }

          while (v10);

          v2 = &selRef_dateByAddingComponents_toDate_options_;
        }

        else
        {
        }

        if ([*(v0 + 16) v2[177]])
        {
          v19 = *(v0 + 192);
          (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
        }

        else
        {
          v20 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x68))(*(v0 + 16));
          v21 = *(v20 + 16);
          if (v21)
          {
            v22 = *(v0 + 88);
            v25 = *(v22 + 16);
            v23 = v22 + 16;
            v24 = v25;
            v26 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
            v27 = *(v23 + 56);
            do
            {
              v28 = *(v0 + 96);
              v29 = *(v0 + 80);
              v24(v28, v26, v29);
              sub_2267ABDE8(&qword_27D7A1B78, MEMORY[0x277CFC7C8]);
              sub_226835CD8();
              (*(v23 - 8))(v28, v29);
              v26 += v27;
              --v21;
            }

            while (v21);
            v30 = *(v0 + 192);
          }

          else
          {
            v30 = *(v0 + 192);
          }

          (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
        }
      }

      goto LABEL_27;
    }
  }

  v32 = *(v0 + 72);
  sub_226836028();
  v33 = sub_226836038();
  v34 = sub_2268366C8();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 184);
  v37 = *(v0 + 192);
  v39 = *(v0 + 160);
  v38 = *(v0 + 168);
  v40 = *(v0 + 72);
  v42 = *(v0 + 40);
  v41 = *(v0 + 48);
  if (v35)
  {
    v62 = *(v0 + 72);
    v43 = *(v0 + 32);
    v63 = *(v0 + 160);
    v44 = swift_slowAlloc();
    v61 = v37;
    v45 = swift_slowAlloc();
    v64 = v45;
    *v44 = 136315138;
    v46 = sub_226836CA8();
    v60 = v36;
    v48 = sub_2263B4D48(v46, v47, &v64);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_2263AA000, v33, v34, "%s: Not collecting CarPlay metrics, no stack config cache or stack is empty", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x22AA821D0](v45, -1, -1);
    MEMORY[0x22AA821D0](v44, -1, -1);

    (*(v41 + 8))(v62, v42);
    (*(v38 + 8))(v60, v63);
  }

  else
  {

    (*(v41 + 8))(v40, v42);
    (*(v38 + 8))(v36, v39);
  }

LABEL_27:
  v50 = *(v0 + 176);
  v49 = *(v0 + 184);
  v52 = *(v0 + 144);
  v51 = *(v0 + 152);
  v53 = *(v0 + 120);
  v54 = *(v0 + 96);
  v56 = *(v0 + 64);
  v55 = *(v0 + 72);
  v57 = *(v0 + 56);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_2267A90C4()
{
  v37 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 56);

  (*(v4 + 8))(v2, v3);
  sub_226836028();
  v6 = v1;
  v7 = sub_226836038();
  v8 = sub_2268366C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 216);
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  if (v9)
  {
    v14 = *(v0 + 32);
    v35 = *(v0 + 40);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v15 = 136315394;
    v18 = sub_226836CA8();
    v34 = v11;
    v20 = sub_2263B4D48(v18, v19, &v36);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v10;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v16 = v22;
    _os_log_impl(&dword_2263AA000, v7, v8, "%s: could not log CarPlay widget metrics: %@", v15, 0x16u);
    sub_2267A1DC0(v16, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x22AA821D0](v17, -1, -1);
    MEMORY[0x22AA821D0](v15, -1, -1);

    (*(v12 + 8))(v34, v35);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 120);
  v28 = *(v0 + 96);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v31 = *(v0 + 56);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_2267A94D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2267A959C;

  return sub_2267A8418(v6);
}

uint64_t sub_2267A959C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2267A96F4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_44:
    v3 = sub_2268368D8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v41 = v3;
  if (v3)
  {
    v42 = MEMORY[0x277D84F90];
    v5 = sub_2267ABE30(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x28214F320](v5, v6, v7, v8, v9, v10, v11);
    }

    v40 = v2;
    v12 = 0;
    v4 = v42;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x22AA7FDD0](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v13 widgets];
      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v16 = sub_226836568();

      if (v16 >> 62)
      {
        v17 = sub_2268368D8();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = *(v42 + 16);
      v18 = *(v42 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2267ABE30((v18 > 1), v19 + 1, 1);
      }

      ++v12;
      *(v42 + 16) = v19 + 1;
      *(v42 + 8 * v19 + 32) = v17;
    }

    while (v3 != v12);
    v2 = v40;
  }

  if (v2)
  {
    v2 = sub_2268368D8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = 0;
  v21 = a1 & 0xC000000000000001;
  do
  {
    v22 = v20;
    if (v2 == v20)
    {
      break;
    }

    if (v21)
    {
      v23 = MEMORY[0x22AA7FDD0](v20, a1);
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v23 = *(a1 + 8 * v20 + 32);
    }

    v24 = v23;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v25 = [v23 allowsSmartRotate];

    v20 = v22 + 1;
  }

  while (!v25);
  v26 = 0;
  do
  {
    v27 = v26;
    if (v2 == v26)
    {
      break;
    }

    if (v21)
    {
      v28 = MEMORY[0x22AA7FDD0](v26, a1);
    }

    else
    {
      if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v28 = *(a1 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_42;
    }

    v30 = [v28 allowsNewWidget];

    v26 = v27 + 1;
  }

  while (!v30);
  v31 = v2 != v27;
  v32 = v2 != v22;
  sub_226835F08();
  v33 = sub_2268363F8();

  Bool = _ATXDomainGetBool(v33);

  sub_226835F28();
  v35 = sub_2268363F8();

  v36 = _ATXDomainGetBool(v35);

  sub_226835F18();
  v37 = sub_2268363F8();

  v38 = _ATXDomainGetBool(v37);

  v6 = v41;
  v5 = Bool;
  v7 = v32;
  v8 = v31;
  v9 = v36;
  v10 = v38;
  v11 = v4;

  return MEMORY[0x28214F320](v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2267A9A60(uint64_t a1)
{
  v41 = sub_226835E78();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41, v5);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v34[1] = v1;
  v51 = MEMORY[0x277D84F90];
  sub_2267ABEAC(0, v7, 0);
  v8 = v51;
  v9 = -1 << *(a1 + 32);
  v49 = a1 + 64;
  result = sub_226836898();
  v11 = result;
  v12 = 0;
  v50 = *(a1 + 36);
  v38 = v3 + 32;
  v39 = v3;
  v35 = a1 + 72;
  v36 = v7;
  v37 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v49 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    if (v50 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v42 = v12;
    v15 = *(a1 + 48) + 16 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = (*(a1 + 56) + 32 * v11);
    v46 = *v18;
    v47 = v17;
    v19 = v18[1];
    v44 = v18[2];
    v45 = v19;
    v43 = v18[3];
    v20 = v16;
    v48 = v8;
    v21 = v20;
    v22 = [v20 extensionBundleId];
    sub_226836408();

    v23 = [v21 kind];
    sub_226836408();

    v24 = v40;
    sub_226835E68();

    v8 = v48;
    v51 = v48;
    v26 = *(v48 + 16);
    v25 = *(v48 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2267ABEAC(v25 > 1, v26 + 1, 1);
      v8 = v51;
    }

    *(v8 + 16) = v26 + 1;
    result = (*(v39 + 32))(v8 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v26, v24, v41);
    a1 = v37;
    v13 = 1 << *(v37 + 32);
    if (v11 >= v13)
    {
      goto LABEL_24;
    }

    v27 = *(v49 + 8 * v14);
    if ((v27 & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v50 != *(v37 + 36))
    {
      goto LABEL_26;
    }

    v28 = v27 & (-2 << (v11 & 0x3F));
    if (v28)
    {
      v13 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v14 << 6;
      v30 = v14 + 1;
      v31 = (v35 + 8 * v14);
      while (v30 < (v13 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_2267ACE0C(v11, v50, 0);
          v13 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_2267ACE0C(v11, v50, 0);
    }

LABEL_4:
    v12 = v42 + 1;
    v11 = v13;
    if (v42 + 1 == v36)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_2267A9E14(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA7FDD0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = sub_2267AA010(v3, v5, a1);

      v9 = *(v8 + 16);
      v10 = v4[2];
      v11 = v10 + v9;
      if (__OFADD__(v10, v9))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v11 <= v4[3] >> 1)
      {
        if (*(v8 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v10 <= v11)
        {
          v13 = v10 + v9;
        }

        else
        {
          v13 = v10;
        }

        v4 = sub_2267ABC10(isUniquelyReferenced_nonNull_native, v13, 1, v4);
        if (*(v8 + 16))
        {
LABEL_19:
          v14 = (v4[3] >> 1) - v4[2];
          v15 = *(sub_226835EE8() - 8);
          if (v14 < v9)
          {
            goto LABEL_28;
          }

          v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v17 = *(v15 + 72);
          swift_arrayInitWithCopy();

          if (v9)
          {
            v18 = v4[2];
            v19 = __OFADD__(v18, v9);
            v20 = v18 + v9;
            if (v19)
            {
              goto LABEL_29;
            }

            v4[2] = v20;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AA010(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = sub_226835EE8();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 widgets];
  sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
  v15 = sub_226836568();

  v16 = v15;
  v17 = v15 & 0xFFFFFFFFFFFFFF8;
  v18 = v15 >> 62;
  if (v18)
  {
    goto LABEL_27;
  }

  v19 = *(v17 + 16);
  if (v19)
  {
    while (1)
    {
      v20 = v16;
      v60 = MEMORY[0x277D84F90];
      v16 = sub_2267ABEF0(0, v19 & ~(v19 >> 63), 0);
      if (v19 < 0)
      {
        break;
      }

      v3 = v60;
      if (v18)
      {
        v16 = sub_2268368D8();
        v21 = v20;
        v54 = v16;
      }

      else
      {
        v21 = v20;
        v54 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v52 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_31;
      }

      if (a3 >> 62)
      {
        goto LABEL_32;
      }

      v48 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
      v22 = 0;
      v53 = v21 & 0xC000000000000001;
      v46 = v21 & 0xFFFFFFFFFFFFFF8;
      v47 = v56 + 32;
      v23 = &off_2785A4000;
      v50 = v21;
      v51 = v13;
      v49 = v19;
      while (v22 < v54)
      {
        v58 = v3;
        if (v53)
        {
          v24 = MEMORY[0x22AA7FDD0](v22);
        }

        else
        {
          if (v22 >= *(v46 + 16))
          {
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = [v24 v23[474]];
        v27 = [v26 extensionIdentity];

        v28 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA8, &qword_226873680);
        sub_2268353A8();
        swift_endAccess();

        v29 = [v25 v23[474]];
        v30 = [v29 kind];

        v31 = sub_226836408();
        v33 = v32;

        v34 = [v25 v23[474]];
        v35 = [v34 intentReference];

        v57 = v31;
        if (v35)
        {
          v36 = [v35 intent];

          v37 = [v36 _className];
          v13 = sub_226836408();
        }

        else
        {
          v13 = 0;
        }

        v38 = [v25 v23[474]];
        v39 = [v38 intentReference];

        a1 = v33;
        if (v39)
        {
          v40 = [v39 intent];

          v39 = [v40 _indexingHash];
        }

        ++v22;
        v59 = v39;
        sub_226836B48();
        [v25 isSuggestedWidget];
        v41 = v51;
        sub_226835ED8();

        v3 = v58;
        v60 = v58;
        v18 = *(v58 + 16);
        v42 = *(v58 + 24);
        a3 = v18 + 1;
        if (v18 >= v42 >> 1)
        {
          sub_2267ABEF0(v42 > 1, v18 + 1, 1);
          v3 = v60;
        }

        *(v3 + 16) = a3;
        v16 = (*(v56 + 32))(v3 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v18, v41, v55);
        v21 = v50;
        v23 = &off_2785A4000;
        if (v49 == v22)
        {

          return v3;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v43 = v16;
      v19 = sub_2268368D8();
      v16 = v43;
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v16 = sub_2268368D8();
    v21 = v20;
    v48 = v16;
    goto LABEL_10;
  }

LABEL_28:

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AA620(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  return sub_226836C48();
}

uint64_t sub_2267AA674()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

uint64_t sub_2267AA6D0()
{
  v1 = v0[1];
  v2 = *v0;
  sub_2268367F8();
  return MEMORY[0x22AA80040](v1);
}

uint64_t sub_2267AA710()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  return sub_226836C48();
}

uint64_t sub_2267AA768(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  return sub_2268367E8() & (v3 == v5);
}

uint64_t sub_2267AA870(void *a1)
{
  v64 = a1;
  v1 = sub_226835E28();
  v67 = *(v1 - 8);
  v68 = v1;
  v2 = *(v67 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v4;
  MEMORY[0x28223BE20](v5, v6);
  v73 = &v59 - v7;
  v8 = sub_2268352B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2268352D8();
  v14 = *(v69 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v69, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v59 - v22;
  v24 = sub_226835228();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v71 = &v59 - v32;
  v33 = swift_allocObject();
  v34 = sub_2267AC7A8(MEMORY[0x277D84F90]);
  v72 = v33;
  *(v33 + 16) = v34;
  v63 = v33 + 16;
  sub_2268352A8();
  (*(v9 + 104))(v13, *MEMORY[0x277CC9968], v8);
  sub_226835218();
  sub_226835298();
  v70 = *(v25 + 8);
  v70(v29, v24);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v69);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_2267A1DC0(v23, &qword_27D7A2530, qword_2268738A0);
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = *(v25 + 32);
    v62 = v24;
    v36();
    v37 = v73;
    sub_226835E18();
    v61 = [objc_allocWithZone(MEMORY[0x277CEBC20]) init];
    v60 = sub_2268351A8();
    sub_226835218();
    v59 = sub_2268351A8();
    v70(v29, v24);
    v78 = sub_2267AAFE0;
    v79 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2267A3E2C;
    v77 = &block_descriptor_1;
    v38 = _Block_copy(&aBlock);

    v39 = swift_allocObject();
    v69 = v25 + 8;
    v40 = v64;
    *(v39 + 16) = v64;
    v78 = sub_2267AC8B4;
    v79 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2267AB160;
    v77 = &block_descriptor_9;
    v41 = _Block_copy(&aBlock);
    v42 = v40;

    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = v66;
    v45 = v67;
    v46 = v37;
    v47 = v68;
    (*(v67 + 16))(v66, v46, v68);
    v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    *(v50 + 16) = v43;
    (*(v45 + 32))(v50 + v48, v44, v47);
    v51 = v72;
    *(v50 + v49) = v72;
    v78 = sub_2267AC8EC;
    v79 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2267ABACC;
    v77 = &block_descriptor_18;
    v52 = _Block_copy(&aBlock);

    v53 = v61;
    v54 = v60;
    v55 = v59;
    [v61 enumerateConnectedEventsFromStartDate:v60 endDate:v59 filterBlock:v38 limit:0 ascending:1 shouldContinue:v41 block:v52];
    _Block_release(v52);
    _Block_release(v41);
    _Block_release(v38);

    swift_beginAccess();
    v56 = *(v51 + 16);

    v35 = sub_2267A9A60(v57);

    (*(v45 + 8))(v73, v47);
    v70(v71, v62);
  }

  return v35;
}

id sub_2267AAFE0(void *a1)
{
  v2 = sub_226835228();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v19 - v11;
  result = [a1 endTime];
  if (result)
  {
    v14 = result;
    sub_2268351F8();

    result = [a1 startTime];
    if (result)
    {
      v15 = result;
      sub_2268351F8();

      sub_226835188();
      v17 = v16;
      v18 = *(v3 + 8);
      v18(v7, v2);
      v18(v12, v2);
      return (v17 >= 300.0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2267AB160(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

void sub_2267AB1A0(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v111 = a4;
  v114 = a3;
  v115 = a1;
  v4 = sub_226835DC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  MEMORY[0x28223BE20](v4, v7);
  v112 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v110 = &v98 - v11;
  v12 = sub_226835228();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v109 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v113 = &v98 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v98 - v26;
  v28 = sub_226836068();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v98 = Strong;
  if (([v115 connected] & 1) == 0)
  {
    sub_226836028();
    v94 = sub_226836038();
    v95 = sub_2268366D8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2263AA000, v94, v95, "Encountered disconnected CarPlay event inside CarPlay connected stream", v96, 2u);
      MEMORY[0x22AA821D0](v96, -1, -1);
    }

    (*(v29 + 8))(v33, v28);
    return;
  }

  v35 = v5;
  v108 = v4;
  v36 = [v115 startTime];
  if (!v36)
  {
    __break(1u);
    goto LABEL_63;
  }

  v37 = v36;
  sub_2268351F8();

  v38 = [v115 endTime];
  if (!v38)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v39 = v38;
  sub_2268351F8();

  v40 = sub_226835E08();
  v41 = *(v13 + 8);
  v41(v23, v12);
  v41(v27, v12);
  v42 = [v115 startTime];
  if (v42)
  {
    v43 = v42;
    v44 = v113;
    sub_2268351F8();

    v45 = [v115 endTime];
    if (v45)
    {
      v46 = v45;
      v47 = v109;
      sub_2268351F8();

      sub_226835188();
      v49 = v48;
      v41(v47, v12);
      v41(v44, v12);
      v50 = v49 / 60.0;
      if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_56;
      }

      if (v50 <= -9.22337204e18)
      {
LABEL_57:
        __break(1u);
      }

      else if (v50 < 9.22337204e18)
      {
        v51 = v40;
        if (!(v40 >> 62))
        {
          v52 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v53 = v111;
          if (v52)
          {
LABEL_12:
            v40 = 0;
            v104 = v50;
            v107 = v51 & 0xC000000000000001;
            v100 = v51 & 0xFFFFFFFFFFFFFF8;
            v109 = v35 + 8;
            v106 = (v35 + 88);
            v105 = *MEMORY[0x277CFC7A0];
            v101 = *MEMORY[0x277CFC7A8];
            v99 = *MEMORY[0x277CFC798];
            v103 = v51;
            v102 = v52;
            while (1)
            {
              if (v107)
              {
                v56 = MEMORY[0x22AA7FDD0](v40);
              }

              else
              {
                if (v40 >= *(v100 + 16))
                {
                  goto LABEL_53;
                }

                v56 = *(v51 + 8 * v40 + 32);
              }

              v35 = v56;
              if (__OFADD__(v40, 1))
              {
                __break(1u);
LABEL_50:
                __break(1u);
LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
                goto LABEL_57;
              }

              v113 = (v40 + 1);
              sub_226835DE8();
              sub_226835DD8();
              v57 = objc_allocWithZone(MEMORY[0x277CEB9B0]);
              v58 = sub_2268363F8();

              v59 = sub_2268363F8();

              v60 = [v57 initWithExtensionBundleId:v58 kind:v59];

              v61 = v110;
              sub_226835DF8();
              v62 = sub_226835DB8();
              v63 = v108;
              v64 = *v109;
              (*v109)(v61, v108);
              swift_beginAccess();
              v65 = *(v53 + 16);
              v66 = *(v65 + 16);
              v114 = v60;
              if (!v66)
              {
                goto LABEL_23;
              }

              v67 = sub_2267AC214(v60, v62);
              if (v68)
              {
                v69 = (*(v65 + 56) + 32 * v67);
                v70 = *v69;
                v71 = v69[1];
                v115 = v69[2];
                swift_endAccess();
              }

              else
              {
LABEL_23:
                swift_endAccess();
                v115 = 0;
                v71 = 0;
                v70 = 0;
              }

              v72 = v112;
              sub_226835DF8();
              v73 = (*v106)(v72, v63);
              if (v73 == v105)
              {
                break;
              }

              if (v73 == v101)
              {
                v74 = __OFADD__(v70++, 1);
                if (v74)
                {
                  goto LABEL_54;
                }

LABEL_30:
                v75 = v62;
                goto LABEL_31;
              }

              v75 = v62;
              if (v73 == v99)
              {
                if (__OFADD__(v115, 1))
                {
                  goto LABEL_55;
                }

                ++v115;
              }

              else
              {
                v64(v112, v63);
              }

LABEL_31:
              swift_beginAccess();
              v76 = v114;
              v77 = *(v53 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v116 = *(v53 + 16);
              v79 = v116;
              *(v53 + 16) = 0x8000000000000000;
              v81 = sub_2267AC214(v76, v75);
              v82 = v79[2];
              v83 = (v80 & 1) == 0;
              v84 = v82 + v83;
              if (__OFADD__(v82, v83))
              {
                goto LABEL_50;
              }

              v85 = v80;
              if (v79[3] >= v84)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v88 = v116;
                  if (v80)
                  {
                    goto LABEL_13;
                  }
                }

                else
                {
                  sub_2267AC634();
                  v88 = v116;
                  if (v85)
                  {
                    goto LABEL_13;
                  }
                }
              }

              else
              {
                sub_2267AC384(v84, isUniquelyReferenced_nonNull_native);
                v86 = sub_2267AC214(v76, v75);
                if ((v85 & 1) != (v87 & 1))
                {
                  goto LABEL_66;
                }

                v81 = v86;
                v88 = v116;
                if (v85)
                {
LABEL_13:
                  v54 = (v88[7] + 32 * v81);
                  *v54 = v70;
                  v54[1] = v71;
                  v55 = v104;
                  v54[2] = v115;
                  v54[3] = v55;

                  goto LABEL_14;
                }
              }

              v88[(v81 >> 6) + 8] |= 1 << v81;
              v89 = (v88[6] + 16 * v81);
              *v89 = v76;
              v89[1] = v75;
              v90 = (v88[7] + 32 * v81);
              *v90 = v70;
              v90[1] = v71;
              v91 = v104;
              v90[2] = v115;
              v90[3] = v91;
              v92 = v88[2];
              v74 = __OFADD__(v92, 1);
              v93 = v92 + 1;
              if (v74)
              {
                goto LABEL_52;
              }

              v88[2] = v93;
LABEL_14:
              v53 = v111;
              *(v111 + 16) = v88;
              swift_endAccess();

              ++v40;
              v51 = v103;
              if (v113 == v102)
              {
                goto LABEL_60;
              }
            }

            v74 = __OFADD__(v71++, 1);
            if (v74)
            {
              goto LABEL_51;
            }

            goto LABEL_30;
          }

          goto LABEL_60;
        }

LABEL_59:
        v97 = sub_2268368D8();
        v51 = v40;
        v52 = v97;
        v53 = v111;
        if (v97)
        {
          goto LABEL_12;
        }

LABEL_60:

        return;
      }

      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_65;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  sub_226836BA8();
  __break(1u);
}

void sub_2267ABACC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id CarPlayWidgetMetricsLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarPlayWidgetMetricsLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayWidgetMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CarPlayWidgetMetricsLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayWidgetMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_2267ABC10(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA0, &qword_226873678);
  v10 = *(sub_226835EE8() - 8);
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
  v15 = *(sub_226835EE8() - 8);
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

uint64_t sub_2267ABDE8(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2267ABE30(char *a1, int64_t a2, char a3)
{
  result = sub_2267ABF34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL _ATXDomainGetBool(void *a1)
{
  v1 = a1;
  keyExistsAndHasValidFormat = 0;
  v2 = CFPreferencesGetAppBooleanValue(v1, *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat) != 0;

  return v2;
}

size_t sub_2267ABEAC(size_t a1, int64_t a2, char a3)
{
  result = sub_2267AC038(a1, a2, a3, *v3, &qword_27D7A1B90, &qword_226873668, MEMORY[0x277CFC7C8]);
  *v3 = result;
  return result;
}

size_t sub_2267ABEF0(size_t a1, int64_t a2, char a3)
{
  result = sub_2267AC038(a1, a2, a3, *v3, &qword_27D7A1BA0, &qword_226873678, MEMORY[0x277CFC7E8]);
  *v3 = result;
  return result;
}

char *sub_2267ABF34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BB0, &qword_226873688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_2267AC038(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_2267AC214(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  v6 = sub_226836C48();

  return sub_2267AC294(a1, a2, v6);
}

unint64_t sub_2267AC294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
    do
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *(v8 + 8);
      v10 = *v8;
      v11 = sub_2268367E8();

      if ((v11 & (v9 == a2)) == 1)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2267AC384(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
  v38 = a2;
  result = sub_226836AA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 48) + 16 * v22;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = (*(v5 + 56) + 32 * v22);
      v39 = v26[1];
      v40 = *v26;
      if ((v38 & 1) == 0)
      {
        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_226836C08();
      sub_2268367F8();
      MEMORY[0x22AA80040](v24);
      result = sub_226836C48();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v40;
      v18[1] = v39;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_2267AC634()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
  v2 = *v0;
  v3 = sub_226836A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 48) + 16 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
        result = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_2267AC7A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1B98, &qword_226873670);
    v3 = sub_226836AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      v6 = *(i - 2);
      result = sub_2267AC214(v6, v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2267AC8B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return [v1 didDefer] ^ 1;
  }

  else
  {
    return 1;
  }
}

void sub_2267AC8EC(char *a1)
{
  v3 = *(sub_226835E28() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2267AB1A0(a1, v5, (v1 + v4), v6);
}

unint64_t sub_2267AC9B4()
{
  result = qword_27D7A1B88;
  if (!qword_27D7A1B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1B88);
  }

  return result;
}

uint64_t dispatch thunk of CarPlayWidgetMetricsLogger.collect(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2263BA0A4;

  return v8(a1);
}

uint64_t sub_2267ACBEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2267ACC34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267ACC8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2267ACCAC(uint64_t result, int a2, int a3)
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

uint64_t sub_2267ACCE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267A94D8(v2, v3, v4);
}

uint64_t sub_2267ACD9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267ACE0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2267ACE28()
{
  type metadata accessor for LocationOfInterestContext();
  sub_2267AD778(&qword_27D7A1BB8);

  return sub_2263B6BB0();
}

void *sub_2267ACEA8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_2267ACEEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_2267AD044@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  return result;
}

uint64_t sub_2267AD090@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 120))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2267AD0CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LocationOfInterestContext();
  sub_2267AD778(&qword_27D7A1BB8);
  result = sub_2263B92B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2267AD12C()
{
  v0 = sub_2267AD8D4();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226873690;
  *(v3 + 32) = type metadata accessor for LocationOfInterestContextStore.HomeContext();
  *(v3 + 40) = type metadata accessor for LocationOfInterestContextStore.WorkContext();
  *(v3 + 48) = type metadata accessor for LocationOfInterestContextStore.GymContext();
  *(v3 + 56) = type metadata accessor for LocationOfInterestContextStore.SchoolContext();
  result = type metadata accessor for LocationOfInterestContextStore.AwayContext();
  *(v3 + 64) = result;
  qword_27D7A5178 = v3;
  return result;
}

uint64_t *sub_2267AD1A8()
{
  if (qword_27D7A3240 != -1)
  {
    swift_once();
  }

  return &qword_27D7A5178;
}

uint64_t sub_2267AD1F8()
{
  if (qword_27D7A3240 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2267AD2A4(void *a1)
{
  v2 = swift_allocObject();
  sub_2267AD2E4(a1);
  return v2;
}

uint64_t sub_2267AD2E4(void *a1)
{
  v2 = v1;
  *(v1 + 24) = a1;
  v4 = qword_27D7A3240;
  v5 = a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_27D7A5178;
  v7 = *(qword_27D7A5178 + 16);
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_226836A08();
    v8 = type metadata accessor for LocationOfInterestContext();
    v9 = (v6 + 32);
    v10 = sub_2267AD778(&qword_27D7A1BB8);
    do
    {
      v11 = *v9++;
      v15 = a1;
      sub_2267AD950(v11, &v15, v8, v8, v10, v10);
      sub_2268369E8();
      v12 = *(v16 + 16);
      sub_226836A18();
      sub_226836A28();
      sub_2268369F8();
      --v7;
    }

    while (v7);

    v13 = v16;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v13;
  return v2;
}

void *sub_2267AD464()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 0);
  }

  return result;
}

void *sub_2267AD4E0()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 1);
  }

  return result;
}

void *sub_2267AD560()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 3);
  }

  return result;
}

void *sub_2267AD5E0()
{
  result = (*(*v0 + 96))();
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return (v3 == 2);
  }

  return result;
}

uint64_t sub_2267AD668()
{
  v1 = *(*v0 + 96);
  v2 = v1();
  if (!v2)
  {
    return 1;
  }

  result = v1();
  if (result)
  {
    v4 = result;
    v5 = [result type];

    return v5 == -1;
  }

  return result;
}

uint64_t sub_2267AD734(uint64_t a1)
{
  result = sub_2267AD778(&qword_27D7A1BC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2267AD778(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocationOfInterestContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2267AD8D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BC8, &qword_226873810);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D7A1BD0;
    v3 = &unk_226873818;
  }

  else
  {
    v2 = &unk_27D7A1D70;
    v3 = &unk_226873820;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_2267AD950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a2, v12);
  return (*(a6 + 64))(v14, a4, a6);
}

uint64_t sub_2267ADA5C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  swift_getAssociatedTypeWitness();
  sub_2268365C8();
  swift_getWitnessTable();
  sub_2268369D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
  v2 = sub_226836A38();

  return v2;
}

uint64_t sub_2267ADB5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 48);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness) & 1;
}

id sub_2267ADCB4(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v15 - v8;
  result = [a1 setContinue];
  if (result)
  {
    v11 = sub_226836628();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;
    v12[5] = v1;
    v12[6] = ObjectType;
    v13 = a1;
    v14 = v1;
    sub_2267AEA94(0, 0, v9, &unk_226873890, v12);
  }

  return result;
}

uint64_t sub_2267ADDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_226836068();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v10 = sub_226835CF8();
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v13 = sub_226835D68();
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();
  v16 = sub_226835D48();
  v6[16] = v16;
  v17 = *(v16 - 8);
  v6[17] = v17;
  v18 = *(v17 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267ADFDC, 0, 0);
}

uint64_t sub_2267ADFDC()
{
  sub_226835DA8();
  *(v0 + 152) = sub_226835D98();
  sub_2267B2E34(&qword_28138F9B0, MEMORY[0x277CFC788]);
  v2 = sub_2268365D8();

  return MEMORY[0x2822009F8](sub_2267AE0A0, v2, v1);
}

uint64_t sub_2267AE0A0()
{
  v1 = v0[19];
  v0[20] = sub_226835D88();
  v0[21] = 0;
  v2 = v0[19];

  return MEMORY[0x2822009F8](sub_2267AE134, 0, 0);
}

uint64_t sub_2267AE134()
{
  v70 = v0;
  v1 = *(v0 + 160);
  if (!v1)
  {
    v8 = *(v0 + 64);
    sub_226836018();
    v9 = sub_226836038();
    v10 = sub_2268366C8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 64);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    if (v11)
    {
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v69 = v17;
      *v16 = 136315138;
      v18 = sub_226836CA8();
      v20 = sub_2263B4D48(v18, v19, &v69);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2263AA000, v9, v10, "%s: not collecting ambient metrics, no stack config cache", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x22AA821D0](v17, -1, -1);
      MEMORY[0x22AA821D0](v16, -1, -1);
    }

    (*(v14 + 8))(v12, v13);
    goto LABEL_31;
  }

  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v41 = *(v0 + 160);
    }

    if (sub_2268368D8() == 2)
    {
      goto LABEL_4;
    }

LABEL_23:
    v42 = *(v0 + 72);
    sub_226836018();

    v43 = sub_226836038();
    v44 = sub_2268366C8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = *(v0 + 32);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v69 = v47;
      *v46 = 136315394;
      v48 = sub_226836CA8();
      v50 = sub_2263B4D48(v48, v49, &v69);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2048;
      v51 = *(v0 + 160) & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
        if (v1 >= 0)
        {
          v56 = *(v0 + 160) & 0xFFFFFFFFFFFFFF8;
        }

        v52 = sub_2268368D8();
      }

      else
      {
        v52 = *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = *(v0 + 72);
      v58 = *(v0 + 40);
      v59 = *(v0 + 48);

      *(v46 + 14) = v52;

      _os_log_impl(&dword_2263AA000, v43, v44, "%s: not collecting ambient metrics, number of stacks: %ld, should be 2", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA821D0](v47, -1, -1);
      MEMORY[0x22AA821D0](v46, -1, -1);

      (*(v59 + 8))(v57, v58);
    }

    else
    {
      v53 = *(v0 + 72);
      v54 = *(v0 + 40);
      v55 = *(v0 + 48);
      swift_bridgeObjectRelease_n();

      (*(v55 + 8))(v53, v54);
    }

    goto LABEL_31;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
    goto LABEL_23;
  }

LABEL_4:
  v2 = &selRef_setUrl_;
  if (![*(v0 + 16) shouldDefer])
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 128);
    v6 = *(v0 + 16);
    v7 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x58))(v1);
    sub_2267B2E34(qword_28138F9C0, MEMORY[0x277CFC770]);
    sub_226835CD8();
    (*(v3 + 8))(v4, v5);
    if (![v6 shouldDefer])
    {
      v21 = (*((*v7 & **(v0 + 24)) + 0x60))(v1);

      v22 = *(v21 + 16);
      if (v22)
      {
        v68 = v21;
        v23 = *(v0 + 112);
        v26 = *(v23 + 16);
        v25 = v23 + 16;
        v24 = v26;
        v27 = v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v28 = *(v25 + 56);
        do
        {
          v29 = *(v0 + 120);
          v30 = *(v0 + 104);
          v24(v29, v27, v30);
          sub_2267B2E34(&qword_28138F9B8, MEMORY[0x277CFC780]);
          sub_226835CD8();
          (*(v25 - 8))(v29, v30);
          v27 += v28;
          --v22;
        }

        while (v22);

        v2 = &selRef_setUrl_;
      }

      else
      {
      }

      if ([*(v0 + 16) v2[95]])
      {
        goto LABEL_31;
      }

      v31 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x70))();
      v32 = *(v31 + 16);
      if (v32)
      {
        v33 = *(v0 + 88);
        v36 = *(v33 + 16);
        v34 = v33 + 16;
        v35 = v36;
        v37 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
        v38 = *(v34 + 56);
        do
        {
          v39 = *(v0 + 96);
          v40 = *(v0 + 80);
          v35(v39, v37, v40);
          sub_2267B2E34(&qword_27D7A1C08, MEMORY[0x277CFC760]);
          sub_226835CD8();
          (*(v34 - 8))(v39, v40);
          v37 += v38;
          --v32;
        }

        while (v32);
      }
    }
  }

LABEL_31:
  v60 = *(v0 + 144);
  v61 = *(v0 + 120);
  v62 = *(v0 + 96);
  v64 = *(v0 + 64);
  v63 = *(v0 + 72);
  v65 = *(v0 + 56);
  [*(v0 + 16) setDone];

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_2267AE788()
{
  v32 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = *(v0 + 56);

  sub_226836018();
  v4 = v1;
  v5 = sub_226836038();
  v6 = sub_2268366C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);
  if (v7)
  {
    v12 = *(v0 + 32);
    v30 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v13 = 136315394;
    v16 = sub_226836CA8();
    v29 = v9;
    v18 = sub_2263B4D48(v16, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v8;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2263AA000, v5, v6, "%s: could not read ambient stacks: %@", v13, 0x16u);
    sub_2267A1DC0(v14, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x22AA821D0](v15, -1, -1);
    MEMORY[0x22AA821D0](v13, -1, -1);

    (*(v10 + 8))(v29, v30);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 144);
  v22 = *(v0 + 120);
  v23 = *(v0 + 96);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = *(v0 + 56);
  [*(v0 + 16) setDone];

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2267AE9EC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267ADDEC(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2267AEA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_2267ACD9C(a3, v28 - v12);
  v14 = sub_226836628();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_2267A1DC0(v13, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_2268365D8();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_226836458() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_2267AEEEC(unint64_t a1)
{
  sub_226835EA8();
  v3 = sub_2268363F8();

  Bool = _ATXDomainGetBool(v3);

  if (a1 >> 62)
  {
    v5 = sub_2268368D8();
    if (v5)
    {
LABEL_3:
      v6 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA7FDD0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_42;
        }

        v7 = *(a1 + 32);
      }

      v8 = v7;
      v1 = &selRef__updateWithSpotlightEvent_;
      v3 = [v7 allowsSmartRotate];

      if (v6)
      {
        v16 = MEMORY[0x22AA7FDD0](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v16 = *(a1 + 32);
      }

      v17 = v16;
      v18 = [v16 widgets];

      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v19 = sub_226836568();

      if (!(v19 >> 62))
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

        v38 = Bool;
        if (v6)
        {
          v21 = MEMORY[0x22AA7FDD0](0, a1);
LABEL_16:
          v22 = v21;
          v23 = [v21 allowsNewWidget];

          v24 = v5 - 1;
          if (__OFSUB__(v5, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          v37 = v20;
          if (v6)
          {
            v20 = v3;
            v25 = MEMORY[0x22AA7FDD0](v5 - 1, a1);
LABEL_22:
            v26 = v25;
            v5 = [v25 v1[383]];

            if (v6)
            {
              v27 = MEMORY[0x22AA7FDD0](v24, a1);
              goto LABEL_27;
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
              if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }

              v27 = *(a1 + 8 * v24 + 32);
LABEL_27:
              v28 = v27;
              v29 = [v27 widgets];

              v30 = sub_226836568();
              if (!(v30 >> 62))
              {
                v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_29;
              }

LABEL_44:
              v31 = sub_2268368D8();
LABEL_29:

              if (v6)
              {
                v32 = MEMORY[0x22AA7FDD0](v24, a1);
                v33 = v36;
LABEL_34:
                v34 = [v32 allowsNewWidget];

                Bool = v38;
                goto LABEL_37;
              }

              v33 = v36;
              if ((v24 & 0x8000000000000000) == 0)
              {
                if (v24 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v32 = *(a1 + 8 * v24 + 32);
                  goto LABEL_34;
                }

LABEL_52:
                __break(1u);
                return MEMORY[0x28214F260](v9, v10, v11, v12, v13, v14, v15);
              }

              goto LABEL_50;
            }

            goto LABEL_48;
          }

          if ((v24 & 0x8000000000000000) == 0)
          {
            if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v20 = v3;
            v25 = *(a1 + 8 * v24 + 32);
            goto LABEL_22;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v21 = *(a1 + 32);
          goto LABEL_16;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_42:
      v20 = sub_2268368D8();
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
  v31 = 0;
  v23 = 0;
  v33 = 0;
  v20 = 0;
LABEL_37:
  v9 = Bool;
  v10 = v20;
  v11 = v33;
  v12 = v23;
  v13 = v5;
  v14 = v31;
  v15 = v34;

  return MEMORY[0x28214F260](v9, v10, v11, v12, v13, v14, v15);
}

void *sub_2267AF2A4(unint64_t a1)
{
  v2 = sub_226835D68();
  v47 = *(v2 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v53 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6, v7);
  v54 = &v37 - v9;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2268368D8())
  {
    v11 = 0;
    v41 = a1 & 0xC000000000000001;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1;
    v37 = (a1 + 32);
    v45 = v47 + 8;
    v46 = (v47 + 16);
    v12 = MEMORY[0x277D84F90];
    v44 = v47 + 32;
    v40 = i;
    while (1)
    {
      if (v41)
      {
        v13 = MEMORY[0x22AA7FDD0](v11, v39, v8);
      }

      else
      {
        if (v11 >= *(v38 + 16))
        {
          goto LABEL_29;
        }

        v13 = *&v37[8 * v11];
      }

      v14 = v13;
      v15 = __OFADD__(v11, 1);
      v16 = v11 + 1;
      if (v15)
      {
        break;
      }

      a1 = [v13 widgets];
      sub_2263B5030(0, &qword_28138F958, 0x277CFC800);
      v17 = sub_226836568();

      v43 = v16;
      if (v17 >> 62)
      {
        v18 = sub_2268368D8();
        v42 = v14;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v42 = v14;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (v18 < 1)
      {
        goto LABEL_28;
      }

      v19 = 0;
      v48 = v17 & 0xC000000000000001;
      v49 = v18;
      v50 = v17;
      do
      {
        v52 = v12;
        if (v48)
        {
          v20 = MEMORY[0x22AA7FDD0](v19, v17);
        }

        else
        {
          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = [v20 chsWidget];
        v23 = [v22 extensionIdentity];

        v24 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BA8, &qword_226873680);
        v51 = sub_2268353A8();
        swift_endAccess();

        v25 = [v21 chsWidget];
        v26 = [v25 kind];

        sub_226836408();
        v27 = [v21 chsWidget];
        v28 = [v27 intentReference];

        if (v28)
        {
          v29 = [v28 intent];

          v30 = v2;
          v31 = [v29 _className];

          sub_226836408();
          v2 = v30;
        }

        v32 = v54;
        sub_226835D58();
        (*v46)(v53, v32, v2);
        v12 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_2267B0968(0, v12[2] + 1, 1, v12);
        }

        v35 = v12[2];
        v34 = v12[3];
        if (v35 >= v34 >> 1)
        {
          v12 = sub_2267B0968(v34 > 1, v35 + 1, 1, v12);
        }

        ++v19;

        a1 = v47;
        (*(v47 + 8))(v54, v2);
        v12[2] = v35 + 1;
        (*(a1 + 32))(v12 + ((*(a1 + 80) + 32) & ~*(a1 + 80)) + *(a1 + 72) * v35, v53, v2);
      }

      while (v49 != v19);
LABEL_4:

      v11 = v43;
      if (v43 == v40)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2267AF7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  v14 = sub_2268367E8();
  result = 0;
  if ((v14 & 1) != 0 && a2 == a6)
  {
    if (a4)
    {
      if (a8 && (a3 == a7 && a4 == a8 || (sub_226836B58() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!a8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_2267AF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2268367F8();
  MEMORY[0x22AA80040](a3);
  if (!a5)
  {
    return sub_226836C28();
  }

  sub_226836C28();

  return sub_226836498();
}

uint64_t sub_2267AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  sub_226836C28();
  if (a4)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AF9EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  sub_226836C28();
  if (v4)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AFA80()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_2268367F8();
  MEMORY[0x22AA80040](v1);
  if (!v3)
  {
    return sub_226836C28();
  }

  sub_226836C28();

  return sub_226836498();
}

uint64_t sub_2267AFB18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](v2);
  sub_226836C28();
  if (v4)
  {
    sub_226836498();
  }

  return sub_226836C48();
}

uint64_t sub_2267AFBA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
  v10 = sub_2268367E8();
  result = 0;
  if ((v10 & 1) != 0 && v3 == v7)
  {
    if (v4)
    {
      if (v8 && (v5 == v9 && v4 == v8 || (sub_226836B58() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t ATXWidgetStackChangeReason.name.getter(uint64_t a1)
{
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return 0x61466D6574737973;
      }

      if (a1 == 4)
      {
        return 0x70556D6574737973;
      }

      return 0x6572436B63617473;
    }

    if (a1 == 1)
    {
      return 0x6F72635372657375;
    }

    if (a1 == 2)
    {
      return 0x75536D6574737973;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return 0xD000000000000010;
      case 9:
        return 0x6775626564;
      case 10:
        return 0xD00000000000001ALL;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 6)
  {
    return 0x7365446B63617473;
  }

  else
  {
    return 0x4173746567646977;
  }
}

uint64_t sub_2267AFE30()
{
  v0 = sub_2268352B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2268352D8();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55, v8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v54 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v51 - v17;
  v19 = sub_226835228();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v56 = v51 - v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2267B1BE8(MEMORY[0x277D84F90]);
  v51[1] = v28 + 16;
  sub_2268352A8();
  (*(v1 + 104))(v5, *MEMORY[0x277CC9968], v0);
  sub_226835218();
  sub_226835298();
  v52 = *(v20 + 8);
  v52(v24, v19);
  (*(v1 + 8))(v5, v0);
  (*(v6 + 8))(v10, v55);
  v29 = *(v20 + 48);
  if (v29(v18, 1, v19) == 1)
  {
    sub_2267A1DC0(v18, &qword_27D7A2530, qword_2268738A0);

    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v20 + 32))(v56, v18, v19);
    v31 = v54;
    (*(v20 + 56))(v54, 1, 1, v19);
    v32 = sub_2268351A8();
    v33 = v29(v31, 1, v19);
    v51[0] = v20 + 8;
    if (v33 == 1)
    {
      v34 = 0;
      v35 = v28;
      v36 = v52;
    }

    else
    {
      v37 = v54;
      v34 = sub_2268351A8();
      v36 = v52;
      v52(v37, v19);
      v35 = v28;
    }

    v38 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v32 endDate:v34 maxEvents:0 lastN:0 reversed:0];

    v39 = [BiomeLibrary() SpringBoard];
    swift_unknownObjectRelease();
    v40 = [v39 Domino];
    swift_unknownObjectRelease();
    v41 = [v40 StackRotation];
    swift_unknownObjectRelease();
    v42 = [v41 publisherWithOptions_];

    v61 = sub_2267B04DC;
    v62 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_2267B2E84;
    v60 = &block_descriptor_2;
    v43 = _Block_copy(&aBlock);
    v61 = sub_2267B1D04;
    v62 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_2267B2E84;
    v60 = &block_descriptor_8;
    v44 = _Block_copy(&aBlock);

    v45 = [v42 sinkWithCompletion:v43 receiveInput:v44];
    _Block_release(v44);
    _Block_release(v43);

    v46 = swift_beginAccess();
    v47 = *(v35 + 16);
    MEMORY[0x28223BE20](v46, v48);
    v51[-2] = v53;

    v50 = sub_2267B2370(v49, sub_2267B2084, &v51[-4]);
    v36(v56, v19);

    return v50;
  }
}

id sub_2267B04DC(void *a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v10 = result;
    sub_226836018();
    v11 = v10;
    v12 = sub_226836038();
    v13 = sub_2268366C8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v11;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2263AA000, v12, v13, "Could not sink stack rotation stream: %@", v14, 0xCu);
      sub_2267A1DC0(v15, &unk_27D7A1D90, &unk_226873270);
      MEMORY[0x22AA821D0](v15, -1, -1);
      MEMORY[0x22AA821D0](v14, -1, -1);
    }

    else
    {
      v16 = v12;
      v12 = v11;
    }

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

void (*sub_2267B06B8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_2267B0D74(v10, a2, a3, a4, a5);
  return sub_2267B0758;
}

void sub_2267B0758(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

id AmbientMetricsLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AmbientMetricsLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AmbientMetricsLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientMetricsLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2267B0880@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2267B089C()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267B0910()
{
  v1 = *v0;
  sub_226836C08();
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

size_t sub_2267B0968(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C00, &unk_226873AF0);
  v10 = *(sub_226835D68() - 8);
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
  v15 = *(sub_226835D68() - 8);
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

unint64_t sub_2267B0B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_226836C08();
  sub_2268367F8();
  MEMORY[0x22AA80040](a2);
  sub_226836C28();
  if (a4)
  {
    sub_226836498();
  }

  v10 = sub_226836C48();

  return sub_2267B0C04(a1, a2, a3, a4, v10);
}

unint64_t sub_2267B0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_2263B5030(0, &qword_27D7A1B80, 0x277D82BB8);
    while (1)
    {
      v9 = *(v5 + 48) + 32 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);

      v14 = v11;
      if ((sub_2268367E8() & 1) == 0 || v10 != a2)
      {
        break;
      }

      if (v12)
      {
        if (!a4)
        {
          break;
        }

        if (v13 == a3 && v12 == a4)
        {

          return v7;
        }

        v16 = sub_226836B58();

        if (v16)
        {
          return v7;
        }
      }

      else
      {

        if (!a4)
        {
          return v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        return v7;
      }
    }

    goto LABEL_4;
  }

  return v7;
}

void (*sub_2267B0D74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x50uLL);
  }

  v12 = v11;
  *a1 = v11;
  v13 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[8] = sub_2267B1184(v12);
  v12[9] = sub_2267B0E98(v12 + 4, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
  return sub_2267B0E38;
}

void sub_2267B0E38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2267B0E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6))(__int128 **a1, char a2)
{
  v7 = v6;
  if (MEMORY[0x277D84FD8])
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(0x48uLL);
  }

  v14 = v13;
  *a1 = v13;
  v13[6] = a5;
  v13[7] = v6;
  v13[4] = a3;
  v13[5] = a4;
  v13[3] = a2;
  v15 = *v6;
  v17 = sub_2267B0B40(a2, a3, a4, a5);
  *(v14 + 17) = v16 & 1;
  v18 = *(v15 + 16);
  v19 = v16 ^ 1;
  v20 = v18 + ((v16 ^ 1) & 1);
  if (__OFADD__(v18, (v16 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_2267B16C0();
      goto LABEL_12;
    }

    sub_2267B11B8(v20, a6 & 1);
    v23 = *v7;
    v24 = sub_2267B0B40(a2, a3, a4, a5);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_12;
    }

LABEL_16:
    result = sub_226836BA8();
    __break(1u);
    return result;
  }

LABEL_12:
  v14[8] = v17;
  v26 = 0uLL;
  if (v21)
  {
    v26 = *(*(*v7 + 56) + 16 * v17);
  }

  *v14 = v26;
  *(v14 + 16) = v19 & 1;
  return sub_2267B1028;
}

void sub_2267B1028(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 16);
  LOBYTE(v5) = *(*a1 + 17);
  if (a2)
  {
    if ((*a1)[1])
    {
      goto LABEL_8;
    }

    v6 = *(v2 + 8);
    v4 = **(v2 + 7);
    if (*(*a1 + 17))
    {
      goto LABEL_11;
    }

    v7 = *(v2 + 6);
    v8 = *(v2 + 3);
    v9 = v4[6] + 32 * v6;
    v10 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *v9 = v8;
    *(v9 + 8) = v10;
    *(v9 + 24) = v7;
    *(v4[7] + 16 * v6) = v3;
    v11 = v4[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v20 = *(v2 + 6);
      v21 = *(v2 + 3);
      v4[2] = v5;

      v22 = v21;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v13 = *(v2 + 8);
      v14 = **(v2 + 7);
      sub_2267B2C94(*(v14 + 48) + 32 * v13);
      sub_2267B14A8(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = *(v2 + 8);
  v4 = **(v2 + 7);
  if ((v5 & 1) == 0)
  {
    v15 = *(v2 + 6);
    v16 = *(v2 + 3);
    v17 = v4[6] + 32 * v6;
    v18 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *v17 = v16;
    *(v17 + 8) = v18;
    *(v17 + 24) = v15;
    *(v4[7] + 16 * v6) = v3;
    v19 = v4[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 16 * v6) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_2267B1184(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2267B11AC;
}

uint64_t sub_2267B11B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
  v39 = a2;
  result = sub_226836AA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 32 * v21;
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = *(v23 + 24);
      v41 = *(v23 + 16);
      v40 = *(v22 + 16 * v21);
      if ((v39 & 1) == 0)
      {

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_226836C08();
      sub_2268367F8();
      MEMORY[0x22AA80040](v24);
      sub_226836C28();
      if (v26)
      {
        sub_226836498();
      }

      result = sub_226836C48();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v25;
      v17[1] = v24;
      v17[2] = v41;
      v17[3] = v26;
      *(*(v8 + 56) + 16 * v16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_39;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_37;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

void sub_2267B14A8(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    v30 = v4;
    do
    {
      v9 = v8;
      v10 = *(v2 + 40);
      v11 = v2;
      v12 = *(v2 + 48) + 32 * v6;
      v13 = *v12;
      v14 = *(v12 + 8);
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      sub_226836C08();

      v17 = v13;
      sub_2268367F8();
      MEMORY[0x22AA80040](v14);
      sub_226836C28();
      if (v15)
      {
        sub_226836498();
      }

      v18 = sub_226836C48();

      v19 = v18 & v7;
      v8 = v9;
      if (v3 >= v9)
      {
        v4 = v30;
        v2 = v11;
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v30;
        v2 = v11;
        if (v19 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v19)
      {
LABEL_12:
        v20 = *(v2 + 48);
        v21 = (v20 + 32 * v3);
        v22 = (v20 + 32 * v6);
        if (v3 != v6 || v21 >= v22 + 2)
        {
          v23 = v22[1];
          *v21 = *v22;
          v21[1] = v23;
        }

        v24 = *(v2 + 56);
        v25 = (v24 + 16 * v3);
        v26 = (v24 + 16 * v6);
        if (v3 != v6 || v25 >= v26 + 1)
        {
          *v25 = *v26;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }
}

id sub_2267B16C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
  v2 = *v0;
  v3 = sub_226836A98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(v19 + 8);
        v24 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v23;
        *(v22 + 24) = v21;
        *(*(v4 + 56) + v17) = v24;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_2267B1840(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v15 = *v7;
  result = sub_2267B0B40(a3, a4, a5, a6);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a7 & 1) == 0)
  {
    if (v23 < v21 || (a7 & 1) != 0)
    {
      sub_2267B11B8(v21, a7 & 1);
      v25 = *v8;
      result = sub_2267B0B40(a3, a4, a5, a6);
      if ((v22 & 1) != (v26 & 1))
      {
LABEL_16:
        result = sub_226836BA8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v24 = result;
      sub_2267B16C0();
      result = v24;
    }
  }

  v27 = *v8;
  if (v22)
  {
    v28 = (v27[7] + 16 * result);
    *v28 = a1;
    v28[1] = a2;
    return result;
  }

  v27[(result >> 6) + 8] |= 1 << result;
  v29 = (v27[6] + 32 * result);
  *v29 = a3;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a6;
  v30 = (v27[7] + 16 * result);
  *v30 = a1;
  v30[1] = a2;
  v31 = v27[2];
  v20 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27[2] = v32;

  return a3;
}

size_t sub_2267B19F0(size_t a1, int64_t a2, char a3)
{
  result = sub_2267B1A10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2267B1A10(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF0, &qword_226873AD8);
  v10 = *(sub_226835CF8() - 8);
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
  v15 = *(sub_226835CF8() - 8);
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

unint64_t sub_2267B1BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1BF8, &unk_226873AE0);
    v3 = sub_226836AB8();

    for (i = (a1 + 72); ; i += 6)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      v11 = v6;
      result = sub_2267B0B40(v11, v5, v7, v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 32 * result);
      *v14 = v11;
      v14[1] = v5;
      v14[2] = v7;
      v14[3] = v8;
      v15 = (v3[7] + 16 * result);
      *v15 = v10;
      v15[1] = v9;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2267B1D04(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v29 = v2;
    v3 = [v2 widget];
    if (v3 && (v4 = v3, v28 = [v3 extensionBundleId], v4, v28))
    {
      v5 = [v29 widget];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7)
        {
          v8 = [objc_allocWithZone(MEMORY[0x277CEB9B0]) initWithExtensionBundleId:v28 kind:v7];

          v9 = _sSo26ATXWidgetStackChangeReasonV21AppPredictionInternalE017springBoardDominob8RotationD0ABSo08BMSpringijbkD0V_tcfC_0([v29 reason]);
          v10 = [v29 source];
          if (v10)
          {
            v11 = v10;
            v12 = sub_226836408();
            v14 = v13;
          }

          else
          {
            v12 = 0;
            v14 = 0;
          }

          swift_beginAccess();
          if (!*(*(v1 + 16) + 16) || (v16 = v1, v17 = *(v1 + 16), sub_2267B0B40(v8, v9, v12, v14), v1 = v16, (v18 & 1) == 0))
          {
            swift_endAccess();
            swift_beginAccess();

            v19 = *(v1 + 16);
            v20 = v8;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v31 = *(v1 + 16);
            *(v1 + 16) = 0x8000000000000000;
            sub_2267B1840(0, 0, v20, v9, v12, v14, isUniquelyReferenced_nonNull_native);

            *(v1 + 16) = v31;
          }

          swift_endAccess();
          if ([v29 newWidgetSuggestion])
          {
            swift_beginAccess();
            v23 = sub_2267B06B8(v30, v8, v9, v12, v14);
            if (*(v22 + 16) == 1)
            {
              goto LABEL_25;
            }

            v24 = *(v22 + 8);
            v25 = __OFADD__(v24, 1);
            v26 = v24 + 1;
            if (!v25)
            {
              *(v22 + 8) = v26;
LABEL_25:
              (v23)(v30, 0);
              swift_endAccess();

              return;
            }

            __break(1u);
          }

          else
          {
            swift_beginAccess();
            v23 = sub_2267B06B8(v30, v8, v9, v12, v14);
            if (*(v27 + 16) == 1)
            {
              goto LABEL_25;
            }

            if (!__OFADD__(*v27, 1))
            {
              ++*v27;
              goto LABEL_25;
            }
          }

          __break(1u);
          return;
        }
      }

      v15 = v28;
    }

    else
    {
      v15 = v29;
    }
  }
}

uint64_t sub_2267B2084(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = [a1 extensionBundleId];
  v12 = sub_226836408();
  v14 = v13;

  v15 = [a1 kind];
  v16 = sub_226836408();
  v18 = v17;

  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v19 = 0xEE006B6361626C6CLL;
        v20 = 0x61466D6574737973;
      }

      else if (a2 == 4)
      {
        v19 = 0xEC00000065746164;
        v20 = 0x70556D6574737973;
      }

      else
      {
        v19 = 0xEC00000064657461;
        v20 = 0x6572436B63617473;
      }

      goto LABEL_29;
    }

    if (a2 == 1)
    {
      v19 = 0xEA00000000006C6CLL;
      v20 = 0x6F72635372657375;
      goto LABEL_29;
    }

    if (a2 == 2)
    {
      strcpy(v25, "systemSuggest");
      HIWORD(v25[1]) = -4864;
      MEMORY[0x22AA7F8E0](58, 0xE100000000000000);
      if (a4)
      {
        v21 = a3;
      }

      else
      {
        v21 = 7104878;
      }

      if (a4)
      {
        v22 = a4;
      }

      else
      {
        v22 = 0xE300000000000000;
      }

      MEMORY[0x22AA7F8E0](v21, v22);

      v20 = v25[0];
      v19 = v25[1];
      goto LABEL_29;
    }

LABEL_28:
    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    goto LABEL_29;
  }

  if (a2 > 7)
  {
    switch(a2)
    {
      case 8:
        v20 = 0xD000000000000010;
        v19 = 0x80000002268CE1F0;
        goto LABEL_29;
      case 9:
        v19 = 0xE500000000000000;
        v20 = 0x6775626564;
        goto LABEL_29;
      case 10:
        v19 = 0x80000002268CE1D0;
        v20 = 0xD00000000000001ALL;
        goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2 == 6)
  {
    v19 = 0xEE006465796F7274;
    v20 = 0x7365446B63617473;
  }

  else
  {
    v20 = 0x4173746567646977;
    v19 = 0xEC00000064656464;
  }

LABEL_29:

  return MEMORY[0x28214F238](v12, v14, v16, v18, v20, v19, a5, a6);
}

uint64_t sub_2267B2370(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v47 = a2;
  v48 = a3;
  v46 = sub_226835CF8();
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v39 = v3;
    v53 = MEMORY[0x277D84F90];
    sub_2267B19F0(0, v10, 0);
    v51 = v53;
    v12 = a1 + 64;
    v13 = -1 << *(a1 + 32);
    result = sub_226836898();
    v14 = result;
    v15 = 0;
    v52 = *(a1 + 36);
    v44 = v5 + 32;
    v45 = v5;
    v40 = a1 + 72;
    v41 = v10;
    v42 = a1 + 64;
    v43 = a1;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_23;
      }

      if (v52 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v49 = v15;
      v50 = 1 << v14;
      v18 = *(a1 + 48) + 32 * v14;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = v9;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      v24 = (*(a1 + 56) + 16 * v14);
      v25 = *v24;
      v26 = v24[1];

      v27 = v20;
      v47();

      v28 = v51;
      v53 = v51;
      v30 = *(v51 + 16);
      v29 = *(v51 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_2267B19F0(v29 > 1, v30 + 1, 1);
        v28 = v53;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v51 = v28;
      result = (*(v45 + 32))(v28 + v31 + *(v45 + 72) * v30, v21, v46);
      a1 = v43;
      v16 = 1 << *(v43 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v12 = v42;
      v32 = *(v42 + 8 * v17);
      if ((v32 & v50) == 0)
      {
        goto LABEL_26;
      }

      if (v52 != *(v43 + 36))
      {
        goto LABEL_27;
      }

      v9 = v21;
      v33 = v32 & (-2 << (v14 & 0x3F));
      if (v33)
      {
        v16 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v17 << 6;
        v35 = v17 + 1;
        v36 = (v40 + 8 * v17);
        while (v35 < (v16 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_2267ACE0C(v14, v52, 0);
            v16 = __clz(__rbit64(v37)) + v34;
            goto LABEL_4;
          }
        }

        result = sub_2267ACE0C(v14, v52, 0);
      }

LABEL_4:
      v15 = v49 + 1;
      v14 = v16;
      if (v49 + 1 == v41)
      {
        return v51;
      }
    }

    __break(1u);
LABEL_23:
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

  return result;
}

uint64_t _sSo26ATXWidgetStackChangeReasonV21AppPredictionInternalE017springBoardDominob8RotationD0ABSo08BMSpringijbkD0V_tcfC_0(unsigned int a1)
{
  v2 = sub_226836068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0xB)
  {
    return a1;
  }

  sub_226836018();
  v9 = sub_226836038();
  v10 = sub_2268366D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v16[1] = a1;
    type metadata accessor for BMSpringBoardDominoStackRotationReason(0);
    v13 = sub_226836438();
    v15 = sub_2263B4D48(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2263AA000, v9, v10, "Unhandled BMSpringBoardDominoStackRotationReason reason: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x22AA821D0](v12, -1, -1);
    MEMORY[0x22AA821D0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  return 0;
}

unint64_t sub_2267B28BC()
{
  result = qword_27D7A1BD8;
  if (!qword_27D7A1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1BD8);
  }

  return result;
}

uint64_t sub_2267B29F8(uint64_t *a1, int a2)
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

uint64_t sub_2267B2A40(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for AmbientMetricsLogger.WidgetRotationData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AmbientMetricsLogger.WidgetRotationData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2267B2B8C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267ADDEC(v5, v6, v7, v2, v3, v4);
}

void sub_2267B2C48(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2267B2CC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2267A1ED0;

  return sub_2267A0188(a1, v5);
}

uint64_t sub_2267B2D7C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2263BA0A4;

  return sub_2267A0188(a1, v5);
}

uint64_t sub_2267B2E34(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_2267B2E88()
{
  sub_226836448();
  sub_22679BAA8();
  v0 = sub_226836868();

  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v9 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2267B38C0(0, *(v1 + 16) + 1, 1);
    }

    v3 = *(v1 + 16);
    v2 = *(v1 + 24);
    if (v3 >= v2 >> 1)
    {
      sub_2267B38C0((v2 > 1), v3 + 1, 1);
      v1 = v9;
    }

    *(v1 + 16) = v3 + 1;
    *(v1 + v3 + 32) = 0;
  }

  v4 = sub_226836868();

  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2267B38C0(0, *(v1 + 16) + 1, 1);
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_2267B38C0((v5 > 1), v6 + 1, 1);
    }

    *(v1 + 16) = v6 + 1;
    *(v1 + v6 + 32) = 1;
  }

  v7 = *(v1 + 16);

  return v7 != 0;
}

uint64_t sub_2267B3070(char a1)
{
  if (a1)
  {
    return 6581860;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2267B30A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v42 - v17;
  v42 = a1;
  v19 = sub_226836448();
  v21 = v20;
  v46 = v19;
  v47 = v20;
  v44 = 0xD000000000000012;
  v45 = 0x80000002268CE270;
  sub_22679BAA8();
  if (sub_226836868())
  {

    v22 = sub_2267F7768();
    (*(v6 + 16))(v18, v22, v5);

    v23 = sub_226836038();
    v24 = sub_2268366A8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v46 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_2263B4D48(v42, a2, &v46);
      _os_log_impl(&dword_2263AA000, v23, v24, "Heuristic %s encountered. Setting suggestion type to airplane mode", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA821D0](v26, -1, -1);
      MEMORY[0x22AA821D0](v25, -1, -1);
    }

    (*(v6 + 8))(v18, v5);
    v27 = MEMORY[0x277D2BD68];
  }

  else
  {
    v46 = v19;
    v47 = v21;
    v44 = 6581860;
    v45 = 0xE300000000000000;
    v28 = sub_226836868();

    v29 = sub_2267F7768();
    v30 = *(v6 + 16);
    if (v28)
    {
      v30(v14, v29, v5);

      v31 = sub_226836038();
      v32 = sub_2268366A8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2263B4D48(v42, a2, &v46);
        _os_log_impl(&dword_2263AA000, v31, v32, "Heuristic %s encountered. Setting suggestion type to do not disturb", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x22AA821D0](v34, -1, -1);
        MEMORY[0x22AA821D0](v33, -1, -1);
      }

      (*(v6 + 8))(v14, v5);
      v27 = MEMORY[0x277D2BD70];
    }

    else
    {
      v30(v10, v29, v5);

      v35 = sub_226836038();
      v36 = sub_2268366C8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v46 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_2263B4D48(v42, a2, &v46);
        _os_log_impl(&dword_2263AA000, v35, v36, "Unexpected heuristic %s encountered. Defaulting to unknown suggestion type", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x22AA821D0](v38, -1, -1);
        MEMORY[0x22AA821D0](v37, -1, -1);
      }

      (*(v6 + 8))(v10, v5);
      v27 = MEMORY[0x277D2BD78];
    }
  }

  v39 = *v27;
  v40 = sub_2268360A8();
  return (*(*(v40 - 8) + 104))(v43, v39, v40);
}

uint64_t sub_2267B35B4()
{
  v0 = sub_226836AC8();

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

uint64_t sub_2267B3608(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6581860;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x80000002268CE270;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6581860;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0x80000002268CE270;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_226836B58();
  }

  return v9 & 1;
}

uint64_t sub_2267B36AC()
{
  v1 = *v0;
  sub_226836C08();
  sub_226836498();

  return sub_226836C48();
}

uint64_t sub_2267B372C()
{
  *v0;
  sub_226836498();
}

uint64_t sub_2267B3798()
{
  v1 = *v0;
  sub_226836C08();
  sub_226836498();

  return sub_226836C48();
}

uint64_t sub_2267B3814@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_226836AC8();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2267B3874(unint64_t *a1@<X8>)
{
  v2 = 0x80000002268CE270;
  v3 = 6581860;
  if (*v1)
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  *a1 = v3;
  a1[1] = v2;
}

char *sub_2267B38C0(char *a1, int64_t a2, char a3)
{
  result = sub_2267B3B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2267B38E4()
{
  result = qword_27D7A1C18;
  if (!qword_27D7A1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1C18);
  }

  return result;
}

unint64_t sub_2267B393C()
{
  result = qword_27D7A1C20;
  if (!qword_27D7A1C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A1C28, qword_226873BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1C20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WatchSmartStackSupportedHeuristics(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WatchSmartStackSupportedHeuristics(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_2267B3B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C30, qword_226873C70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

id sub_2267B3C04()
{
  result = [objc_allocWithZone(type metadata accessor for ContextualEngine()) init];
  qword_2813905E0 = result;
  return result;
}

uint64_t *sub_2267B3C34()
{
  if (qword_2813905D8 != -1)
  {
    swift_once();
  }

  return &qword_2813905E0;
}

id static ContextualEngine.shared.getter()
{
  if (qword_2813905D8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813905E0;

  return v1;
}

uint64_t sub_2267B3CE0()
{
  v1 = OBJC_IVAR___ATXContextualEngine_contextStore;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2267B3D28(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_contextStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2267B3DE0(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_suggestionStore;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_2267B3E98(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_suggestionServer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2267B3F50()
{
  v1 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2267B3FA4(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *sub_2267B405C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v56 - v5;
  v7 = sub_226836068();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v57 = &v56 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR___ATXContextualEngine_contextStore;
  *&v1[OBJC_IVAR___ATXContextualEngine_contextStore] = 0;
  v21 = sub_2263B7458();
  v22 = v8[2];
  v58 = v21;
  v59 = v22;
  (v22)(v19);
  v23 = sub_226836038();
  v24 = sub_2268366E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v56 = v12;
    v26 = v20;
    v27 = v8;
    v28 = v7;
    v29 = v6;
    v30 = v25;
    *v25 = 0;
    _os_log_impl(&dword_2263AA000, v23, v24, "ContextualEngine init", v25, 2u);
    v31 = v30;
    v6 = v29;
    v7 = v28;
    v8 = v27;
    v20 = v26;
    v12 = v56;
    MEMORY[0x22AA821D0](v31, -1, -1);
  }

  v32 = v8[1];
  v32(v19, v7);
  if ([objc_opt_self() isContextualEngineEnabled])
  {
    type metadata accessor for ContextualEngineContextStore();
    v33 = sub_2267E33D0();
    swift_beginAccess();
    v34 = *&v1[v20];
    *&v1[v20] = v33;

    v35 = v57;
    v59(v57, v58, v7);
    v36 = sub_226836038();
    v37 = sub_2268366E8();
    if (!os_log_type_enabled(v36, v37))
    {
      v12 = v35;
      goto LABEL_11;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2263AA000, v36, v37, "ContextualEngine: feature flag enabled, initializing context store", v38, 2u);
    v12 = v35;
  }

  else
  {
    v39 = v7;
    v59(v12, v58, v7);
    v36 = sub_226836038();
    v40 = sub_2268366E8();
    if (!os_log_type_enabled(v36, v40))
    {
      v7 = v39;
      goto LABEL_11;
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2263AA000, v36, v40, "ContextualEngine: feature flag disabled, not initializing context store", v38, 2u);
    v7 = v39;
  }

  MEMORY[0x22AA821D0](v38, -1, -1);
LABEL_11:

  v32(v12, v7);
  type metadata accessor for ContextualEngineSuggestionStore();
  swift_beginAccess();
  v41 = *&v1[v20];

  v43 = sub_2267B5AC4(v42);
  v44 = OBJC_IVAR___ATXContextualEngine_suggestionStore;
  *&v1[OBJC_IVAR___ATXContextualEngine_suggestionStore] = v43;
  type metadata accessor for ContextualSuggestionServer();
  v45 = *&v1[v20];

  *&v1[OBJC_IVAR___ATXContextualEngine_suggestionServer] = sub_2267D0A98(v45, v43);
  type metadata accessor for ContextualEngineInternalServer();
  swift_beginAccess();
  *&v1[OBJC_IVAR___ATXContextualEngine_internalServer] = sub_2267B912C(*&v1[v44]);
  v46 = type metadata accessor for ContextualEngine();
  v60.receiver = v1;
  v60.super_class = v46;
  v47 = objc_msgSendSuper2(&v60, sel_init);
  v48 = OBJC_IVAR___ATXContextualEngine_internalServer;
  swift_beginAccess();
  v49 = *&v47[v48];
  v50 = *((*MEMORY[0x277D85000] & *v49) + 0x88);
  v51 = v47;
  v52 = v49;
  v50(v47, &off_283994F08);

  v53 = sub_226836628();
  (*(*(v53 - 8) + 56))(v6, 1, 1, v53);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v51;
  sub_2267B4EAC(0, 0, v6, &unk_226873D08, v54);

  return v51;
}

uint64_t sub_2267B4610()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = *(*v2 + 352);
    v10 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2267B4838;

    return v10();
  }

  else
  {
    v7 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v7) + 0x90))();

    sub_226835E98();
    v8 = sub_226836458();

    notify_post((v8 + 32));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2267B4838()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_2267B5734;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2267B4954;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267B4954()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))();
  (*((*v1 & *v2) + 0x90))();

  sub_226835E98();
  v3 = sub_226836458();

  notify_post((v3 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2267B4A64()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = *(*v2 + 352);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2267B4C64;

    return v9();
  }

  else
  {
    v7 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v7) + 0x90))();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2267B4C64()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_2267B4E48;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2267B4D80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267B4D80()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xA0))();
  (*((*v1 & *v2) + 0x90))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2267B4E48()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2267B4EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2267ACD9C(a3, v25 - v11);
  v13 = sub_226836628();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2263B9BCC(v12);
  }

  else
  {
    sub_226836618();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2268365D8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_226836458() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_2263B9BCC(a3);

      return v23;
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

  sub_2263B9BCC(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

void sub_2267B513C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  (*((*v4 & *v5) + 0xA8))(a1);

  v6 = (*((*v4 & *v2) + 0xA0))();
  (*((*v4 & *v6) + 0x90))();
}

id ContextualEngine.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngine();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267B5338()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x70))();
  *(v0 + 24) = v2;
  if (v2)
  {
    v3 = *(*v2 + 352);
    v9 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    *(v0 + 32) = v5;
    *v5 = v0;
    v5[1] = sub_2267B5538;

    return v9();
  }

  else
  {
    v7 = (*((*v1 & **(v0 + 16)) + 0xA0))();
    (*((*v1 & *v7) + 0x90))();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2267B5538()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_2267B5734;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_2267B4D80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2267B56A0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2263BA0A4;

  return sub_2267B45F0(v3, v4, v5, v2);
}

uint64_t static String.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226873D10;
  *(v0 + 32) = sub_226836488();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_226836468();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_226836478();
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_2267B57C8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226873D10;
  *(v2 + 32) = sub_226836488();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_226836468();
  *(v2 + 56) = v4;
  result = sub_226836478();
  *(v2 + 64) = result;
  *(v2 + 72) = v6;
  *a1 = v2;
  return result;
}

uint64_t sub_2267B5844(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2267B58B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2267B5950;
}

void sub_2267B5950(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_2267B59D8()
{
  v0 = objc_allocWithZone(ATXActionToWidgetConverter);

  return [v0 initWithAllowsSendMessageIntentConversion_];
}

uint64_t sub_2267B5A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C78, &qword_226873D28);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2267B5A64(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_2267B5A98(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

char *sub_2267B5AF8(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_actionToWidgetConverter;
  *&v1[v3] = [objc_allocWithZone(ATXActionToWidgetConverter) initWithAllowsSendMessageIntentConversion_];
  v4 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C78, &qword_226873D28);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *&v1[v4] = v5;
  v6 = *MEMORY[0x277CE89A0];
  v50 = sub_226836408();
  v51 = v7;
  v8 = *MEMORY[0x277CE8998];
  v52 = sub_226836408();
  v53 = v9;
  v10 = *MEMORY[0x277CE89A8];
  v54 = sub_226836408();
  v55 = v11;
  v49 = MEMORY[0x277D84F90];
  sub_2267A0578(0, 3, 0);
  v12 = v49;
  v13 = objc_opt_self();

  v14 = sub_2268363F8();
  v15 = [v13 sourceIdentifierForHeuristicWithName_];

  v16 = sub_226836408();
  v18 = v17;

  v20 = *(v49 + 16);
  v19 = *(v49 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_2267A0578((v19 > 1), v20 + 1, 1);
    v12 = v49;
  }

  *(v12 + 16) = v20 + 1;
  v21 = v12 + 16 * v20;
  *(v21 + 32) = v16;
  *(v21 + 40) = v18;

  v22 = sub_2268363F8();
  v23 = [v13 sourceIdentifierForHeuristicWithName_];

  v24 = sub_226836408();
  v26 = v25;

  v49 = v12;
  v28 = *(v12 + 16);
  v27 = *(v12 + 24);
  if (v28 >= v27 >> 1)
  {
    sub_2267A0578((v27 > 1), v28 + 1, 1);
    v12 = v49;
  }

  *(v12 + 16) = v28 + 1;
  v29 = v12 + 16 * v28;
  *(v29 + 32) = v24;
  *(v29 + 40) = v26;

  v30 = sub_2268363F8();
  v31 = [v13 sourceIdentifierForHeuristicWithName_];

  v32 = sub_226836408();
  v34 = v33;

  v49 = v12;
  v36 = *(v12 + 16);
  v35 = *(v12 + 24);
  if (v36 >= v35 >> 1)
  {
    sub_2267A0578((v35 > 1), v36 + 1, 1);
    v12 = v49;
  }

  v37 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_disabledHeuristicSourceIdentifiers;
  *(v12 + 16) = v36 + 1;
  v38 = v12 + 16 * v36;
  *(v38 + 32) = v32;
  *(v38 + 40) = v34;
  swift_arrayDestroy();
  v39 = sub_2267A5D68(v12);

  *&v2[v37] = v39;
  v40 = OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_allowedAmbientClientModelTypes;
  *&v2[v40] = sub_2267B818C(&unk_283994F40);
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore] = a1;
  v41 = objc_opt_self();

  v42 = [v41 sharedInstance];
  *&v2[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter] = v42;
  v48.receiver = v2;
  v48.super_class = type metadata accessor for ContextualEngineSuggestionStore();
  v43 = objc_msgSendSuper2(&v48, sel_init);
  v44 = *&v43[OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_modeFilter];
  v45 = v43;
  [v44 registerObserver_];

  return v45;
}

uint64_t sub_2267B5EE8()
{
  v0 = *MEMORY[0x277CE89A0];
  sub_226836408();
  v1 = *MEMORY[0x277CE8998];
  sub_226836408();
  v2 = *MEMORY[0x277CE89A8];
  sub_226836408();
  v31 = MEMORY[0x277D84F90];
  sub_2267A0578(0, 3, 0);
  v3 = v31;
  v4 = objc_opt_self();

  v5 = sub_2268363F8();
  v6 = [v4 sourceIdentifierForHeuristicWithName_];

  v7 = sub_226836408();
  v9 = v8;

  v11 = *(v31 + 16);
  v10 = *(v31 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_2267A0578((v10 > 1), v11 + 1, 1);
    v3 = v31;
  }

  *(v3 + 16) = v11 + 1;
  v12 = v3 + 16 * v11;
  *(v12 + 32) = v7;
  *(v12 + 40) = v9;

  v13 = sub_2268363F8();
  v14 = [v4 sourceIdentifierForHeuristicWithName_];

  v15 = sub_226836408();
  v17 = v16;

  v19 = *(v3 + 16);
  v18 = *(v3 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2267A0578((v18 > 1), v19 + 1, 1);
  }

  *(v3 + 16) = v19 + 1;
  v20 = v3 + 16 * v19;
  *(v20 + 32) = v15;
  *(v20 + 40) = v17;

  v21 = sub_2268363F8();
  v22 = [v4 &selRef:v21 stringForEngagementType:? + 6];

  v23 = sub_226836408();
  v25 = v24;

  v27 = *(v3 + 16);
  v26 = *(v3 + 24);
  if (v27 >= v26 >> 1)
  {
    sub_2267A0578((v26 > 1), v27 + 1, 1);
  }

  *(v3 + 16) = v27 + 1;
  v28 = v3 + 16 * v27;
  *(v28 + 32) = v23;
  *(v28 + 40) = v25;
  swift_arrayDestroy();
  v29 = sub_2267A5D68(v3);

  return v29;
}

uint64_t sub_2267B61B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_226836068();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v45 - v13;
  v50 = MEMORY[0x277D84F90];
  sub_22679CBC4(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2650, qword_226873830);
  type metadata accessor for MeetingContext(0);
  if (swift_dynamicCast())
  {
    v48 = v11;

    v49[0] = nullsub_1(v15);
    v16 = sub_2267B8630();
    v17 = sub_2267D9280(&type metadata for JoinMeetingActionProducer, v16);
    if (v2)
    {

      v18 = sub_2263B7458();
      (*(v6 + 16))(v14, v18, v5);
      v19 = v2;
      v20 = sub_226836038();
      v21 = sub_2268366C8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v47 = a2;
        v23 = v22;
        v24 = swift_slowAlloc();
        v46 = v6;
        v25 = v24;
        *v23 = 138412290;
        v26 = v2;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v27;
        *v25 = v27;
        _os_log_impl(&dword_2263AA000, v20, v21, "Error producing join meeting suggestion: %@", v23, 0xCu);
        sub_2263B4FC8(v25);
        v28 = v25;
        v6 = v46;
        MEMORY[0x22AA821D0](v28, -1, -1);
        v29 = v23;
        a2 = v47;
        MEMORY[0x22AA821D0](v29, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v14, v5);
    }

    else
    {
      v31 = v17;

      v32 = v31;
      MEMORY[0x22AA7F970]();
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = a2;
        v42 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226836588();
        a2 = v41;
      }

      sub_2268365A8();
    }

    v49[0] = nullsub_1(v33);
    v34 = sub_2267B8684();
    v35 = sub_2267D9280(&type metadata for DoNotDisturbActionProducer, v34);

    v36 = v35;
    MEMORY[0x22AA7F970]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = a2;
      v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226836588();
      a2 = v43;
    }

    sub_2268365A8();

    v30 = v50;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  (*(v38 + 32))(v37, v38);
  if (v30 >> 62)
  {
    sub_226835C38();

    sub_226836A68();
  }

  else
  {

    sub_226836B68();
    sub_226835C38();
  }

  v39 = objc_allocWithZone(sub_226835C78());
  result = sub_226835C58();
  *a2 = result;
  return result;
}

uint64_t sub_2267B67B0(void (*a1)(void))
{
  (*((*MEMORY[0x277D85000] & *v1) + 0xB0))();
  a1();
}

uint64_t sub_2267B6834()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2267B697C()
{
  v0 = *MEMORY[0x277CEBD00];
  sub_226836408();
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_2268363F8();

  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    qword_27D7A3858 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2267B6A0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = (*(*v1 + 208))();
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_226836A08();
      v5 = (v3 + 40);
      do
      {
        v6 = *(v5 - 1);
        v7 = *v5;
        sub_2263B6BB0();
        (*(v7 + 24))(v6, v7);
        v8 = objc_allocWithZone(sub_226835D28());
        sub_226835D08();
        v9 = objc_allocWithZone(sub_226835C78());
        sub_226835C58();
        sub_2268369E8();
        v10 = *(v2 + 16);
        sub_226836A18();
        sub_226836A28();
        sub_2268369F8();
        v5 += 2;
        --v4;
      }

      while (v4);
    }
  }

  v11 = objc_allocWithZone(sub_226835CA8());
  return sub_226835C88();
}

uint64_t sub_2267B6BC0()
{
  v1 = sub_2267B82EC();
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = v1;
    sub_2267B6E80();
    v5 = v4;

    v6 = v5;
  }

  else
  {
    v6 = sub_2267B6A0C();
  }

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_2267B6C60()
{
  v21 = v0;
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v20 = 0;
    v5 = v3;
    v6 = [v4 archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v20];
    v7 = v20;
    if (v6)
    {

      v8 = sub_226835148();
      v10 = v9;

      if (qword_27D7A3850 != -1)
      {
        swift_once();
      }

      v11 = qword_27D7A3858;
      v12 = sub_226835138();
      v13 = sub_2268363F8();
      [v11 setObject:v12 forKey:v13];

      sub_2267A1D24(v8, v10);
    }

    else
    {
      v16 = v7;
      v17 = sub_226835028();

      swift_willThrow();
    }
  }

  else
  {
    if (qword_27D7A3850 != -1)
    {
      swift_once();
    }

    v14 = qword_27D7A3858;
    v15 = sub_2268363F8();
    [v14 removeObjectForKey_];
  }

  v18 = *(v0 + 8);

  return v18();
}

void sub_2267B6E80()
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v2 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal31ContextualEngineSuggestionStore_contextStore);
  if (v2)
  {
    v1 = (*(*v2 + 208))();
  }

  v30 = *(v1 + 16);
  if (!v30)
  {
LABEL_29:

    v27 = objc_allocWithZone(sub_226835CA8());
    sub_226835C88();
    return;
  }

  v3 = 0;
  v28 = v1;
  v29 = v1 + 32;
  while (v3 < *(v1 + 16))
  {
    v10 = (v29 + 16 * v3);
    v11 = *v10;
    v32 = v10[1];
    v12 = sub_226835C98();
    v13 = v12;
    v31 = v3;
    if (v12 >> 62)
    {
      v14 = sub_2268368D8();
      if (v14)
      {
LABEL_12:
        v15 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x22AA7FDD0](v15, v13);
          }

          else
          {
            if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          v18 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          v19 = sub_226835C68();
          v20 = sub_226835D18();
          v22 = v21;

          if (v20 == sub_2263B6BB0() && v22 == v23)
          {
            break;
          }

          v24 = sub_226836B58();

          if (v24)
          {
            goto LABEL_24;
          }

          ++v15;
          if (v18 == v14)
          {
            goto LABEL_5;
          }
        }

LABEL_24:

        v7 = v17;
        MEMORY[0x22AA7F970]();
        v1 = v28;
        v9 = v31;
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226836588();
        }

        sub_2268365A8();
        goto LABEL_8;
      }
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_12;
      }
    }

LABEL_5:

    sub_2263B6BB0();
    (*(v32 + 24))(v11, v32);
    v4 = objc_allocWithZone(sub_226835D28());
    v5 = sub_226835D08();
    v6 = objc_allocWithZone(sub_226835C78());
    v7 = v5;
    v8 = sub_226835C58();
    MEMORY[0x22AA7F970]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226836588();
    }

    sub_2268365A8();

    v1 = v28;
    v9 = v31;
LABEL_8:
    v3 = v9 + 1;

    if (v3 == v30)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  __break(1u);
}