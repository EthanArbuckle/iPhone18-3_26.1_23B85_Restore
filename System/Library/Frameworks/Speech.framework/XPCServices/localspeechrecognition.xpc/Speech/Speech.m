int main(int argc, const char **argv, const char **envp)
{
  v3 = mach_continuous_time();
  v4 = os_log_create("com.apple.speech.localspeechrecognition", "xpcservice");
  v5 = qword_100071410;
  qword_100071410 = v4;

  unsetenv("TMPDIR");
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v13 = qword_100071410;
    if (os_log_type_enabled(qword_100071410, OS_LOG_TYPE_FAULT))
    {
      v14 = v13;
      v15 = *__error();
      v16 = 67109120;
      LODWORD(v17) = v15;
      _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "_set_user_dir_suffix failed™: %{darwin.errno}d", &v16, 8u);
    }

    exit(1);
  }

  v6 = NSTemporaryDirectory();
  +[LSRConnection captureProcessStartTime];
  AFLogInitIfNeeded();
  SFLogInitIfNeeded();
  v7 = objc_opt_new();
  v8 = +[NSXPCListener serviceListener];
  [v8 setDelegate:v7];
  [SFUtilities continuousTimeToNanoseconds:mach_continuous_time() - v3];
  v10 = v9;
  v11 = qword_100071410;
  if (os_log_type_enabled(qword_100071410, OS_LOG_TYPE_ERROR))
  {
    v16 = 134217984;
    v17 = v10 / 1000000.0;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Process start to XPC connection ready in %f ms", &v16, 0xCu);
  }

  [v8 resume];

  return 0;
}

id sub_100001FE4()
{
  v1 = &v0[OBJC_IVAR____TtC22localspeechrecognition12EARInterface_listeners];
  sub_10000212C();
  sub_10000206C();
  v2 = sub_100046D8C();
  *v1 = 0;
  *(v1 + 1) = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EARInterface();
  return objc_msgSendSuper2(&v4, "init");
}

unint64_t sub_10000206C()
{
  result = qword_10006EE10;
  if (!qword_10006EE10)
  {
    sub_1000029E4(255, &qword_10006FAF0, NSXPCListener_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EE10);
  }

  return result;
}

void sub_1000020D4()
{
  if (!qword_10006FB68)
  {
    sub_100046B0C();
    v0 = sub_10004710C();
    if (!v1)
    {
      atomic_store(v0, &qword_10006FB68);
    }
  }
}

unint64_t sub_10000212C()
{
  result = qword_10006FAF0;
  if (!qword_10006FAF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006FAF0);
  }

  return result;
}

char *sub_100002188()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetManager;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v2 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString];
  v3 = SFEntitledAssetTypeToString();
  v4 = sub_100046E5C();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_modelInfoForLanguageMutex];
  type metadata accessor for LSRModelInfo();
  v8 = sub_100046D8C();
  *v7 = 0;
  *(v7 + 1) = v8;
  v9 = &v0[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_statusForLanguageMutex];
  v10 = sub_100046D8C();
  *v9 = 0;
  *(v9 + 1) = v10;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for AssistantAssetDelegateInterface();
  v11 = objc_msgSendSuper2(&v24, "init");
  v12 = *&v11[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetManager];
  v13 = v11;
  [v12 registerAssetDelegate:v13 assetType:3];
  if (qword_10006DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_100046D1C();
  sub_100004D64(v14, qword_1000714A0);
  v15 = sub_100046D0C();
  v16 = sub_10004701C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    v19 = *&v13[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString];
    v20 = *&v13[OBJC_IVAR____TtC22localspeechrecognition31AssistantAssetDelegateInterface_assetTypeAsString + 8];

    v21 = sub_100004EB4(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Now observing %s asset updates.", v17, 0xCu);
    sub_1000050D4(v18);
  }

  return v13;
}

char *sub_10000241C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_100070318, &qword_10004D530);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10000244C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_100070320, &qword_10004D538);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t type metadata accessor for LSRModelInfo()
{
  result = qword_100070398;
  if (!qword_100070398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000024C8()
{
  v0 = sub_100046B0C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000020D4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000025BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_100046D7C();
  v7 = a1;
  a4(v6);
}

id sub_100002634()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100046E4C();

  v2 = [v0 initWithConfig:v1];

  return v2;
}

uint64_t sub_1000026A8()
{
  v1 = v0;
  v2 = *(*(sub_10000ECEC(&qword_10006FED0, &qword_10004CF38) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = [objc_opt_self() jsonFilenameForAssetType:*(v0 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_assetType)];
  sub_100046E5C();

  sub_100046AAC();

  v9 = sub_100046B0C();
  sub_1000045DC(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile;
  swift_beginAccess();
  sub_10000486C(v7, v1 + v10);
  swift_endAccess();
  sub_1000048DC(v1 + v10, v5);
  if (sub_100004844(v5, 1, v9) == 1)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);
    sub_100046ADC();
    (*(*(v9 - 8) + 8))(v5, v9);
    v11 = sub_100002634();
    v12 = [v11 tasks];
    v13 = sub_100046FBC();

    v14 = sub_10003372C(v13);

    v28 = v14;

    sub_100003E24(&v28);

    v15 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);
    *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames) = v28;

    v16 = [v11 version];
    v17 = sub_100046E5C();
    v19 = v18;

    v20 = (v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
    v21 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);
    *v20 = v17;
    v20[1] = v19;

    v22 = [v11 samplingRates];
    v23 = sub_100046FBC();

    v24 = sub_10003399C(v23);

    v25 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);
    *(v1 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates) = v24;
  }

  return result;
}

uint64_t sub_1000029E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

char *sub_100002A48()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006FA70, &qword_10004CF98);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

id sub_100002AC0(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_100002B44()
{
}

uint64_t sub_100002B5C()
{

  return swift_once();
}

uint64_t sub_100002B8C()
{

  return sub_100046E6C();
}

uint64_t sub_100002BE8()
{
  v9 = *(type metadata accessor for ClientInfo(0) + 32);
  v10 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = sub_1000045DC(v8 + v9, 1, 1, v10);
  *v8 = v7;
  v8[1] = v6;
  v8[4] = v5;
  v8[5] = v4;
  v8[2] = v3;
  v8[3] = v2;
  v8[6] = v1;
  v8[7] = v0;
  return result;
}

id sub_100002C48(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  result = [objc_allocWithZone(a2()) init];
  *a3 = result;
  return result;
}

void sub_100002CA8(uint64_t a1, void (*a2)(uint64_t), void *a3, void *a4, uint64_t a5)
{
  v8 = v5;

  a2(v10);
  v11 = sub_1000035D4(a1);
  v12 = sub_100003B5C(v11);

  v90 = *(v12 + 2);
  if (!v90)
  {
LABEL_23:
    if (qword_10006DD38 != -1)
    {
LABEL_35:
      sub_100004E14();
    }

    v74 = sub_100046D1C();
    sub_100004D64(v74, qword_1000714A0);
    v75 = v8;

    v93 = sub_100046D0C();
    v76 = sub_10004701C();

    if (os_log_type_enabled(v93, v76))
    {
      v77 = swift_slowAlloc();
      v94[0] = swift_slowAlloc();
      *v77 = 136315394;
      *(v77 + 4) = sub_100004EB4(*&v75[*a3], *&v75[*a3 + 8], v94);
      *(v77 + 12) = 2080;
      v78 = sub_100046F0C();
      v80 = v79;

      v81 = sub_100004EB4(v78, v80, v94);

      *(v77 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v93, v76, "Received update for %s assets, available languages: %s", v77, 0x16u);
      swift_arrayDestroy();
      sub_100002BBC();

      sub_100002BBC();
    }

    else
    {
    }

    return;
  }

  v13 = 0;
  v86 = &v5[*a3];
  lock = &v5[*a4];
  v14 = v12 + 40;
  v87 = a1;
  v83 = v12;
  v85 = v5;
  while (1)
  {
    if (v13 >= *(v12 + 2))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_31;
    }

    v16 = *(v14 - 1);
    v15 = *v14;

    v17 = sub_100005C58();
    v19 = sub_1000041D0(v17, v18);
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }

    v92 = v14;
    v21 = (*(a1 + 56) + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    v24 = type metadata accessor for LSRModelInfo();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();

    sub_100004388(v22, v23, a5);
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v28 = sub_100046D1C();
    sub_100004D64(v28, qword_1000714A0);
    swift_retain_n();

    v29 = v8;
    v30 = sub_100046D0C();
    v31 = sub_100046FFC();

    v88 = v13;
    if (os_log_type_enabled(v30, v31))
    {
      break;
    }

LABEL_13:
    os_unfair_lock_lock(lock);

    v52 = *&lock[2]._os_unfair_lock_opaque;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94[0] = *&lock[2]._os_unfair_lock_opaque;
    v54 = v94[0];
    *&lock[2]._os_unfair_lock_opaque = 0x8000000000000000;
    v55 = sub_100005C58();
    v57 = sub_1000041D0(v55, v56);
    v59 = *(v54 + 16);
    v60 = (v58 & 1) == 0;
    v8 = (v59 + v60);
    if (__OFADD__(v59, v60))
    {
      goto LABEL_33;
    }

    v61 = v57;
    v62 = v58;
    sub_10000ECEC(&qword_1000704F8, &qword_10004D5D0);
    if (sub_1000472EC(isUniquelyReferenced_nonNull_native, v8))
    {
      v63 = sub_100005C58();
      v65 = sub_1000041D0(v63, v64);
      v8 = v85;
      a1 = v87;
      if ((v62 & 1) != (v66 & 1))
      {
        goto LABEL_38;
      }

      v61 = v65;
    }

    else
    {
      v8 = v85;
      a1 = v87;
    }

    v67 = v94[0];
    if (v62)
    {
      v68 = *(v94[0] + 56);
      v69 = *(v68 + 8 * v61);
      *(v68 + 8 * v61) = v27;
    }

    else
    {
      *(v94[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v70 = (v67[6] + 16 * v61);
      *v70 = v16;
      v70[1] = v15;
      *(v67[7] + 8 * v61) = v27;
      v71 = v67[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_34;
      }

      v67[2] = v73;
    }

    *&lock[2]._os_unfair_lock_opaque = v67;

    os_unfair_lock_unlock(lock);

    v13 = v88 + 1;
    v14 = v92 + 2;
    if (v90 == v88 + 1)
    {
      goto LABEL_23;
    }
  }

  log = v30;
  v32 = swift_slowAlloc();
  v94[0] = swift_slowAlloc();
  *v32 = 136316418;
  *(v32 + 4) = sub_100004EB4(*v86, *(v86 + 1), v94);
  *(v32 + 12) = 2080;
  v33 = sub_100005C58();
  *(v32 + 14) = sub_100004EB4(v33, v34, v35);
  *(v32 + 22) = 2080;
  v36 = sub_100046ADC();
  v38 = sub_100004EB4(v36, v37, v94);

  *(v32 + 24) = v38;
  *(v32 + 32) = 2080;
  v39 = *(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
  v40 = *(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType + 8);

  v41 = sub_100004EB4(v39, v40, v94);

  *(v32 + 34) = v41;
  *(v32 + 42) = 2080;
  if (!*(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames))
  {
    goto LABEL_37;
  }

  v42 = *(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);

  v43 = sub_100046F0C();
  v45 = v44;

  v46 = sub_100004EB4(v43, v45, v94);

  *(v32 + 44) = v46;
  *(v32 + 52) = 2080;
  if (*(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates))
  {
    v47 = *(v27 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);

    v48 = sub_100046F0C();
    v50 = v49;

    v51 = sub_100004EB4(v48, v50, v94);

    *(v32 + 54) = v51;
    _os_log_impl(&_mh_execute_header, log, v31, "Received update for %s assets, assets for %s have the following modelInfo - modelRoot: %s modelQualityType: %s modelTaskNames: %s modelSamplingRates: %s", v32, 0x3Eu);
    swift_arrayDestroy();
    sub_100002BBC();

    sub_100002BBC();

    v12 = v83;
    goto LABEL_13;
  }

  __break(1u);
LABEL_37:

  __break(1u);
LABEL_38:
  sub_10004740C();
  __break(1u);
}

void sub_100003578(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);

  *(v4 + 8) = a1;

  os_unfair_lock_unlock(v4);
}

void *sub_1000035D4(_BYTE *a1)
{
  v2 = a1;
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_100034E70(v9, v4, v2);
      sub_100002BBC();

      return v2;
    }
  }

  __chkstk_darwin();
  sub_10000373C(0, v4, &v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  v5 = sub_10000BFBC();
  sub_1000037A0(v5, v6, v2);
  if (!v1)
  {
    return v7;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_10000373C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10004D500;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1000037A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
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
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(a3 + 48) + 16 * v12 + 8);
    v14 = (*(a3 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];

    v17 = sub_100046E4C();
    IsInstalled = SFEntitledAssetStatusIsInstalled();

    if (IsInstalled)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100003914(a1, a2, v22, a3);
        return;
      }
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
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100003914(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10000ECEC(&qword_10006FF38, &qword_10004D2E8);
  result = sub_1000473AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v36 = *v21;
    v23 = *(v9 + 40);
    sub_10004745C();

    sub_100046EAC();
    result = sub_10004748C();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v9 + 48) + 16 * v27);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + 16 * v27);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

char *sub_100003B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_100003C48(*(a1 + 16), 0);
  v4 = sub_100003CC8(&v6, v3 + 4, v1, a1);

  sub_100003C40();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = &_swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_100003E24(&v6);
  return v6;
}

void *sub_100003C48(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_100003CC8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100003E24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100004BA8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100003E90(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100003E90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000473BC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_100046F2C();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100034664(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100003F84(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100003F84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1000473EC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10000404C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_10004713C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1000040F0()
{

  return swift_once();
}

uint64_t sub_100004124()
{

  return sub_100046E6C();
}

uint64_t sub_100004140()
{

  return swift_once();
}

uint64_t sub_100004160()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 8);
  return *(v0 - 152);
}

uint64_t sub_100004170()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000418C()
{

  return swift_once();
}

unint64_t sub_1000041D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004745C();
  sub_100046EAC();
  v6 = sub_10004748C();

  return sub_1000042D4(a1, a2, v6);
}

uint64_t sub_10000427C()
{

  return swift_dynamicCast();
}

unint64_t sub_1000042D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1000473EC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100004388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_100046B0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000045DC(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile, 1, 1, v5);
  v10 = (v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames) = 0;
  *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates) = 0;
  type metadata accessor for LSRModelInfo();
  sub_10000BFBC();
  sub_100004604(v11);
  if (v4)
  {

    sub_100006524(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_configurationFile, &qword_10006FED0, &qword_10004CF38);
    v12 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelVersion + 8);

    v13 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelTaskNames);

    v14 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelSamplingRates);

    v15 = *(*v3 + 48);
    v16 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v6 + 32))(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelRoot, v9, v5);
    *(v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_assetType) = v26;
    sub_10000BFBC();
    v17 = sub_100046E4C();

    IsHighQuality = SFEntitledAssetStatusIsHighQuality();

    v19 = &SFModelAttributeCodePreferOverServer;
    if (!IsHighQuality)
    {
      v19 = &SFModelAttributeCodeOfflineOnly;
    }

    v20 = *v19;
    v21 = sub_100046E5C();
    v22 = (v3 + OBJC_IVAR____TtC22localspeechrecognition12LSRModelInfo_modelQualityType);
    *v22 = v21;
    v22[1] = v23;
    sub_1000026A8();
  }

  return v3;
}

uint64_t sub_100004604@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13[-v4];
  v6 = objc_opt_self();
  v7 = sub_100046E4C();
  v8 = [v6 assetPathFromStatus:v7];

  if (!v8)
  {
    goto LABEL_4;
  }

  sub_100046E5C();

  sub_100046AEC();

  v9 = sub_100046B0C();
  if (sub_100004844(v5, 1, v9) == 1)
  {
    sub_100006524(v5, &qword_10006FED0, &qword_10004CF38);
LABEL_4:
    type metadata accessor for LSRError(0);
    v14 = 100;
    sub_10000ECEC(&qword_10006FC40, &qword_10004D290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10004CCE0;
    *(inited + 32) = sub_100046E5C();
    *(inited + 40) = v11;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000021;
    *(inited + 56) = 0x800000010004FBB0;
    sub_100046D8C();
    sub_100035040();
    sub_100046A5C();
    return swift_willThrow();
  }

  return (*(*(v9 - 8) + 32))(a1, v5, v9);
}

uint64_t sub_10000486C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000048DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_10000494C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100004A54(char *a1, int64_t a2, char a3)
{
  result = sub_10000494C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100004A74()
{

  return swift_slowAlloc();
}

uint64_t sub_100004A8C()
{

  return swift_slowAlloc();
}

uint64_t sub_100004ACC()
{
}

void sub_100004B04(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100004B58()
{

  return swift_dynamicCastClass();
}

id sub_100004B70()
{
  v2 = *(v0 - 136);

  return sub_10002566C();
}

uint64_t sub_100004B9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

char *sub_100004BBC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000ECEC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 8);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || &v15[8 * v10] <= v14)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }

  return v12;
}

char *sub_100004CB4(char *a1, int64_t a2, char a3)
{
  result = sub_100004BBC(a1, a2, a3, *v3, &qword_1000704D8, &qword_10004D5C0);
  *v3 = result;
  return result;
}

uint64_t sub_100004CF8(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_100046D1C();
  sub_100004D9C(v5, a2);
  sub_100004D64(v5, a2);
  result = SFLogInitIfNeeded();
  if (*a3)
  {
    v7 = *a3;
    return sub_100046D2C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100004D64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004D9C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100004E14()
{

  return swift_once();
}

uint64_t sub_100004E34()
{

  return swift_once();
}

uint64_t sub_100004E68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_100004EB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004F78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100005078(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000050D4(v11);
  return v7;
}

unint64_t sub_100004F78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005120(a5, a6);
    *a1 = v9;
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
    result = sub_10004727C();
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

uint64_t sub_100005078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000050D4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_100005120(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000051DC(a1, a2);
  sub_1000052F4(&off_100065678);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

void *sub_10000516C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000ECEC(&unk_100070500, &qword_10004D5D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000051DC(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_100046ECC())
  {
    result = sub_10000516C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10004722C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10004727C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_1000052F4(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000BDF8(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100005408()
{
}

char *sub_100005524()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetManager;
  *&v0[v1] = [objc_opt_self() sharedInstance];
  v2 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString];
  v3 = SFEntitledAssetTypeToString();
  v4 = sub_100046E5C();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_modelInfoForLanguageMutex];
  type metadata accessor for LSRModelInfo();
  v8 = sub_100046D8C();
  *v7 = 0;
  *(v7 + 1) = v8;
  v9 = &v0[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_statusForLanguageMutex];
  v10 = sub_100046D8C();
  *v9 = 0;
  *(v9 + 1) = v10;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for GeneralASRAssetDelegateInterface();
  v11 = objc_msgSendSuper2(&v24, "init");
  v12 = *&v11[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetManager];
  v13 = v11;
  [v12 registerAssetDelegate:v13 assetType:7];
  if (qword_10006DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_100046D1C();
  sub_100004D64(v14, qword_1000714A0);
  v15 = sub_100046D0C();
  v16 = sub_10004701C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    v19 = *&v13[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString];
    v20 = *&v13[OBJC_IVAR____TtC22localspeechrecognition32GeneralASRAssetDelegateInterface_assetTypeAsString + 8];

    v21 = sub_100004EB4(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Now observing %s asset updates.", v17, 0xCu);
    sub_1000050D4(v18);
  }

  return v13;
}

uint64_t sub_100005808(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ECEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Class sub_100005868(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = sub_100046D6C().super.isa;

  return v5.super.isa;
}

uint64_t sub_1000058F4(void *a1)
{
  v2 = v1 + *a1;
  os_unfair_lock_lock(v2);
  v3 = *(v2 + 8);

  os_unfair_lock_unlock(v2);
  return v3;
}

uint64_t sub_100005B78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BA8()
{

  return swift_beginAccess();
}

uint64_t sub_100005BC4()
{

  return sub_100046AAC();
}

uint64_t sub_100005CEC()
{
  _Block_release(*(v0 + 24));

  sub_10003121C();

  return _swift_deallocObject();
}

uint64_t sub_100005D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006FAD8, &qword_10004CFA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_100046F9C();
  sub_1000045DC(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_10004D208;
  v10[5] = v9;
  sub_10002CB2C(0, 0, v7, &unk_10004D218, v10);
}

uint64_t sub_100005E60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_100046E5C();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100005ECC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v10 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v28[-v15];
  v17 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  swift_beginAccess();
  sub_10000612C(v4 + v17, v16);
  v18 = sub_100046BBC();
  v19 = sub_100004844(v16, 1, v18);
  sub_10000619C(v16);
  if (v19 == 1)
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C();
    }

    v20 = qword_100071498;
    v21 = mach_continuous_time();
    v22 = *(v20 + 16);
    result = a4(v21, a1, a2);
    if (result)
    {
      v24 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_pendingANECompilationContextEvents;
      swift_beginAccess();
      sub_100046EDC();
      sub_1000063E0(*((*(v7 + v24) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_100046F3C();
      return swift_endAccess();
    }
  }

  else
  {
    if (qword_10006DD30 != -1)
    {
      sub_10000418C();
    }

    sub_10000612C(v4 + v17, v14);
    v25 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName);
    v26 = *(v4 + OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName + 8);

    v27 = mach_continuous_time();
    a3(v14, v25, v26, v27, a1, a2);

    return sub_10000619C(v14);
  }

  return result;
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000619C(uint64_t a1)
{
  v2 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100006204(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, SEL *a5)
{
  v6 = [objc_allocWithZone(*a4) init];
  v7 = v6;
  if (v6)
  {
    [v6 setExists:1];
  }

  v8 = [objc_allocWithZone(ASRSchemaASRAppleNeuralEngineModelInitializationContext) init];
  v9 = v8;
  if (v8)
  {
    v10 = v8;

    sub_100006300();

    v11 = v10;
    sub_100006370();
  }

  v12 = v9;
  [v12 *a5];

  return v9;
}

void sub_100006300()
{
  v1 = sub_100046E4C();

  sub_100005BA8();
  objc_setAssociatedObject(v0, &unk_10006EE50, v1, 1);
  swift_endAccess();
}

void sub_100006370()
{
  isa = sub_10004749C().super.super.isa;
  swift_beginAccess();
  objc_setAssociatedObject(v0, &unk_10006EE40, isa, 1);
  swift_endAccess();
}

uint64_t sub_1000063E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_100046F1C();
  }

  return result;
}

uint64_t sub_10000640C()
{
  v1 = *(v0 + 16);
  v2 = sub_100046E4C();
  v3 = sub_100046E4C();
  v4 = [v1 levelForFactor:v2 withNamespaceName:v3];

  if (!v4)
  {
    return 2;
  }

  v5 = [v4 BOOLeanValue];

  return v5 ^ 1;
}

uint64_t sub_1000064CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ECEC(a2, a3);
  sub_10000417C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100006524(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ECEC(a2, a3);
  sub_100004110(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100006578()
{
  sub_10000BF04();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_100008FCC(v4);
  *v5 = v6;
  v5[1] = sub_10000C1AC;
  v7 = sub_100031138();

  return v8(v7);
}

uint64_t sub_100006620()
{
  sub_10000BF04();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008FCC(v3);
  *v4 = v5;
  v6 = sub_100030FFC(v4);

  return v7(v6);
}

uint64_t sub_1000066C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000C290;

  return v7(a1);
}

uint64_t sub_1000067BC()
{
  sub_10001FD20();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100008FCC(v5);
  *v6 = v7;
  v6[1] = sub_10000C28C;
  v8 = sub_100031138();

  return v9(v8);
}

uint64_t sub_100006870(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000C1AC;

  return v8();
}

uint64_t sub_100006958()
{
  sub_10001FD20();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_100008FCC(v7);
  *v8 = v9;
  v8[1] = sub_10000C28C;

  return sub_100006870(v2, v3, v4, v6);
}

uint64_t sub_100006A1C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000C28C;

  return v7();
}

uint64_t sub_100006B20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    v6 = a1;
    v7 = a3;
    a1 = sub_100046B3C();
    v9 = v8;
  }

  else
  {
    v10 = a3;
    v9 = 0xF000000000000000;
  }

  v3[4] = a1;
  v3[5] = v9;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_10000BFC8;

  return sub_100006DD8(a1, v9);
}

uint64_t sub_100006C08()
{
  sub_10001FD20();
  v16 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v1 = sub_100046D1C();
  v2 = sub_100008FA4(v1, qword_1000714B8);
  v3 = sub_100046FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100004A8C();
    v5 = sub_100004A74();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E210, &v15);
    sub_100031308(&_mh_execute_header, v6, v7, "EARSpeechRecognitionAudioBuffer.%s");
    sub_1000050D4(v5);
    sub_100005408();
    sub_100004ACC();
  }

  else
  {
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = swift_task_alloc();
  v0[5] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v12 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v13 = swift_task_alloc();
  v0[6] = v13;
  *v13 = v0;
  v13[1] = sub_10002BEBC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000016, 0x800000010004E210, sub_10002CE08, v11, &type metadata for Bool);
}

uint64_t sub_100006DD8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100002BDC(sub_100006C08);
}

uint64_t sub_100006DF4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100006E0C()
{
  v1 = *(v0 + 1128);
  v2 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_transaction;
  *(v0 + 1320) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_transaction;
  *(v1 + v2) = 0;
  v3 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream;
  *(v0 + 1328) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultStream;
  *(v1 + v3) = 0;
  v4 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners;
  *(v0 + 1336) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_audioBufferListeners;
  v5 = v1 + v4;
  sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_100030BE8(&qword_10006EE10, &qword_10006FAF0, NSXPCListener_ptr);
  v6 = sub_100046D8C();
  *v5 = 0;
  *(v5 + 8) = v6;
  v7 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles;
  *(v0 + 1344) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_userSpeechProfiles;
  *(v1 + v7) = [objc_allocWithZone(NSMutableDictionary) init];
  v8 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
  *(v0 + 1352) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_speechProfileLastModifiedDate;
  v9 = sub_100046B7C();
  *(v0 + 1360) = v9;
  sub_1000045DC(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isVADSupportedForRequest) = 0;
  v10 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext;
  *(v0 + 1368) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_analysisLeftContext;
  p_type = v1 + v10;
  *p_type = 0;
  *(p_type + 8) = 0;
  v12 = os_transaction_create();
  v13 = *(v1 + v2);
  *(v1 + v2) = v12;
  swift_unknownObjectRelease();
  if (qword_10006DD40 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_100002B5C();
LABEL_2:
    v14 = sub_100046D1C();
    *(v0 + 1376) = sub_100004D64(v14, qword_1000714B8);
    v15 = sub_100046D0C();
    v16 = sub_100046FFC();
    if (sub_100030FB0(v16))
    {
      v17 = sub_1000090C8();
      *v17 = 0;
      sub_100006B04();
      _os_log_impl(v18, v19, v20, v21, v17, 2u);
      sub_100002B44();
    }

    v22 = *(v0 + 1128);
    v23 = *(v0 + 1104);
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);

    v26 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_supportedFeatures;
    *(v0 + 1384) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_supportedFeatures;
    *(v22 + v26) = v25;
    v27 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    *(v0 + 1392) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_clientInfo;
    *(v22 + v27) = v24;
    v28 = v25;
    v29 = v24;
    v30 = sub_100030478(v23, &selRef_leftContext);
    if (v30)
    {
      v31 = sub_1000264B8(v30);
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    v34 = *(v0 + 1096);
    v35 = *(v0 + 1088);
    v36 = *(p_type + 8);
    *p_type = v31;
    *(p_type + 8) = v33;

    v37 = objc_opt_self();
    *(v0 + 1400) = v37;
    v38 = [v37 processInfo];
    [v38 systemUptime];
    *(v0 + 1408) = v39;

    v403 = [v35 modelOptions];
    *(v0 + 1416) = v403;
    v40 = [v34 clientID];
    v41 = v40;
    v42 = v40;
    if (!v40)
    {
      sub_100046E5C();
      v42 = sub_100046E4C();

      sub_100046E5C();
      v41 = sub_100046E4C();
    }

    v43 = *(v0 + 1088);
    v387 = sub_100046E5C();
    v390 = v44;
    *(v0 + 1424) = v44;
    v45 = v40;
    v46 = [v43 taskNames];
    v47 = sub_100046FBC();
    v48 = sub_1000264B8(&off_100065840);
    if (!v49)
    {
      break;
    }

    v50 = v48;
    v51 = v49;
    v52 = *(v0 + 1088);

    v53 = sub_100027290(v50, v51, v47);

    v54 = [v52 taskNames];
    v55 = sub_100046FBC();
    v56 = sub_100026518(v55);
    v58 = v57;

    *(v0 + 1432) = v58;
    if (!v58)
    {
      goto LABEL_142;
    }

    v59 = *(v0 + 1096);

    v60 = [v59 asrID];
    if (v60)
    {
      v61 = v60;
      v62 = *(v0 + 1304);
      sub_100046BAC();

      v63 = 0;
    }

    else
    {
      v63 = 1;
    }

    v381 = v42;
    v64 = *(v0 + 1312);
    v65 = *(v0 + 1304);
    v66 = sub_100046BBC();
    sub_1000045DC(v65, v63, 1, v66);
    sub_100030EC0(v65, v64, &unk_10006FB00, &qword_10004C590);
    v402 = v56;
    v379 = v53;
    v384 = v41;
    if (v403)
    {
      v399 = sub_100008FD8(v403, &selRef_geoLMRegionID);
      v68 = v67;
    }

    else
    {
      v399 = 0;
      v68 = 0;
    }

    *(v0 + 1440) = v68;
    v69 = *(v0 + 1264);
    v70 = *(v0 + 1128);
    v71 = *(v0 + 1088);
    v392 = [objc_opt_self() sharedInstance];
    *(v0 + 1448) = v392;
    v72 = sub_100046E4C();
    v73 = SFEntitledAssetTypeForTaskName();

    v376 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic;
    v377 = v70;
    *(v70 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_resultsAreSpaceAgnostic) = v73 == 7;
    v74 = sub_100046E4C();
    v75 = SFEntitledAssetTypeForTaskName();

    v76 = [v71 locale];
    sub_100046BFC();

    objc_allocWithZone(SFEntitledAssetConfig);

    v396 = v68;
    v77 = sub_10002C9F8(v75, v69, v399, v68);
    if (v403)
    {
      v78 = [v403 modelOverrideURL];
      if (v78)
      {
        v79 = v78;
        v80 = *(v0 + 1248);
        sub_100046ABC();

        v81 = 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = v390;
      v83 = *(v0 + 1256);
      v84 = *(v0 + 1248);
      sub_1000045DC(v84, v81, 1, *(v0 + 1192));
      sub_100030EC0(v84, v83, &qword_10006FED0, &qword_10004CF38);
    }

    else
    {
      sub_1000045DC(*(v0 + 1256), 1, 1, *(v0 + 1192));
      v82 = v390;
    }

    if (v56 == sub_100046E5C() && v58 == v85)
    {
      v87 = 1;
    }

    else
    {
      v87 = sub_1000473EC();
    }

    v88 = *(v0 + 1256);

    v89 = objc_allocWithZone(type metadata accessor for LSRAssets());

    v90 = sub_10001FD2C(v77, 1, v387, v82, v88, v87 & 1);
    *(v0 + 1456) = v90;
    *(v0 + 1464) = 0;
    v105 = v90;
    v380 = v58;
    v106 = *(v0 + 1240);
    v107 = *(v0 + 1232);
    v108 = *(v0 + 1200);
    v109 = *(v0 + 1192);
    v110 = *(v0 + 1128);
    v111 = OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_configurationFile;
    v112 = *(v108 + 16);
    *(v0 + 1472) = v112;
    *(v0 + 1480) = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v112(v106, v90 + v111, v109);
    v113 = v105;
    v375 = sub_100046ADC();
    v388 = v114;
    *(v0 + 1488) = v114;
    v115 = *(v108 + 8);
    *(v0 + 1496) = v115;
    *(v0 + 1504) = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v115(v106, v109);
    v116 = sub_100031204();
    (v112)(v116);
    v117 = v113;
    sub_100046ADC();
    *(v0 + 1512) = v118;
    *(v110 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_assets) = v117;
    v119 = *&v117[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language];
    v120 = *&v117[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_language + 8];
    v121 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr;
    *(v0 + 1520) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr;
    v374 = (v110 + v121);
    *v374 = v119;
    v374[1] = v120;
    if (*&v117[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType] == 20808 && *&v117[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_modelQualityType + 8] == 0xE200000000000000)
    {
      v123 = 1;
    }

    else
    {
      v123 = sub_1000473EC();
    }

    v139 = *(v0 + 1312);
    v140 = *(v0 + 1296);
    v141 = *(v0 + 1280);
    v142 = *(v0 + 1272);
    v143 = *(v0 + 1136);
    v144 = *(v0 + 1104);
    *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_isHighQualityAsset) = v123 & 1;
    sub_100030CE0(v139, v140, &unk_10006FB00, &qword_10004C590);
    v145 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v146 = (v141 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    v147 = swift_allocObject();
    *(v0 + 1528) = v147;
    *(v147 + 16) = v144;
    *(v147 + 24) = v117;
    sub_100030EC0(v140, v147 + v145, &unk_10006FB00, &qword_10004C590);
    v148 = (v147 + v146);
    *v148 = v402;
    v148[1] = v380;
    *(v147 + ((v146 + 23) & 0xFFFFFFFFFFFFFFF8)) = v143;
    v149 = v117;

    v150 = v144;

    sub_10000ECEC(&qword_10006FED8, &qword_10004D2A8);
    swift_asyncLet_begin();
    if (qword_10006DD30 != -1)
    {
      sub_10000418C();
    }

    v151 = *(v0 + 1120);
    v152 = *(v0 + 1088);
    v153 = qword_100071498;
    *(v0 + 1536) = qword_100071498;
    mach_continuous_time();
    v154 = *(v153 + 24);
    sub_1000042C4();
    sub_10000B2C4(v155, v156, v157, v158, v159, v160);
    v161 = [objc_opt_self() activeConfigurationForEverything];
    *(v0 + 1544) = v161;
    v162 = [v152 taskNames];
    v163 = sub_100046FBC();

    v372 = v161;
    sub_100030404(v163, v161);
    v164 = *(v151 + 16);
    if (v164)
    {
      v165 = *(v0 + 1120);
      sub_100034518(0, v164, 0);
      v166 = (v165 + 40);
      do
      {
        v167 = *(v166 - 1);
        v168 = *v166;
        sub_100046E9C();

        v169 = sandbox_extension_consume();

        v171 = _swiftEmptyArrayStorage[2];
        v170 = _swiftEmptyArrayStorage[3];
        if (v171 >= v170 >> 1)
        {
          v172 = sub_100031108(v170);
          sub_100034518(v172, v171 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v171 + 1;
        _swiftEmptyArrayStorage[v171 + 4] = v169;
        v166 += 2;
        --v164;
      }

      while (v164);
    }

    *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles) = _swiftEmptyArrayStorage;
    v173 = v374;
    v175 = *v374;
    v174 = v374[1];

    sub_100005BE0();
    sub_100046E4C();
    sub_100030F98();

    v176 = *&v149[OBJC_IVAR____TtC22localspeechrecognition9LSRAssets_assetType];

    v177 = [v392 installedHammerConfigFileForLanguage:v175 assetType:v176 clientID:v381];
    v178 = v403;
    if (v177)
    {
      v179 = sub_100046E5C();
      v181 = v180;

      p_type = sub_100008E88(0, 1, 1, _swiftEmptyArrayStorage);
      v183 = *(p_type + 16);
      v182 = *(p_type + 24);
      if (v183 >= v182 >> 1)
      {
        sub_100031108(v182);
        sub_100031228();
        p_type = sub_100008E88(v351, v352, v353, v354);
      }

      *(p_type + 16) = v183 + 1;
      v184 = p_type + 16 * v183;
      *(v184 + 32) = v179;
      *(v184 + 40) = v181;
      sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);
      sub_100005BE0();
      v185 = sub_100002634();
      v186 = [v185 version];
      v187 = sub_100046E5C();
      v189 = v188;
    }

    else
    {
      v187 = 0;
      p_type = _swiftEmptyArrayStorage;
      v189 = 0xE000000000000000;
    }

    *(v0 + 1552) = v189;
    v190 = (*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);
    *v190 = v187;
    v190[1] = v189;
    v191 = v396;
    if (v396)
    {
      v193 = *v374;
      v192 = v374[1];

      sub_100005BE0();
      sub_100046E4C();
      sub_100030F98();

      v194 = sub_100046E4C();

      v195 = sub_100046E4C();
      v196 = [v392 installedGeoLMRegionSpecificAssetForLanguage:v193 clientID:v384 regionId:v194 mainAssetConfig:v195];

      if (v196)
      {
        v197 = sub_100046E5C();
        v199 = v198;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_140;
        }

        goto LABEL_57;
      }

      v204 = 0;
      v191 = v396;
      v200 = v399;
    }

    else
    {

      v204 = 0;
      v200 = v399;
    }

    while (1)
    {
      v205 = (v0 + 1080);
      *(v0 + 1560) = p_type;
      v206 = *(v0 + 1128);
      v207 = (v206 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
      *v207 = v200;
      v207[1] = v191;
      *(v206 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLanguageModelLoaded) = v204;
      *(v0 + 1080) = &_swiftEmptyDictionarySingleton;

      if (v178 && [v178 enableParallelLoading])
      {
        v208 = sub_100046D0C();
        v209 = sub_100046FEC();
        if (sub_100030F60(v209))
        {
          v210 = sub_1000090C8();
          *v210 = 0;
          sub_10003103C();
          _os_log_impl(v211, v212, v213, v214, v210, 2u);
          v173 = v374;
          sub_100002B44();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_10003117C(isUniquelyReferenced_nonNull_native, v216, 0xD000000000000015, v217, isUniquelyReferenced_nonNull_native);
        *v205 = &_swiftEmptyDictionarySingleton;
      }

      v383 = p_type;
      v399 = *(v0 + 1112);
      if (v399 && [v399 keepANEModelLoaded])
      {
        v218 = swift_isUniquelyReferenced_nonNull_native();
        sub_10003117C(v218, v219, 0xD000000000000012, v220, v218);
        *v205 = &_swiftEmptyDictionarySingleton;
      }

      p_type = &stru_10006AFF0.type;
      v221 = [*(v0 + 1096) source];
      v222 = sub_100046E5C();
      v224 = v223;

      v225 = HIBYTE(v224) & 0xF;
      if ((v224 & 0x2000000000000000) == 0)
      {
        v225 = v222 & 0xFFFFFFFFFFFFLL;
      }

      if (v225)
      {
        v226 = [*(v0 + 1096) source];
        sub_100046E5C();

        v227 = *(v0 + 1080);
        swift_isUniquelyReferenced_nonNull_native();
        v228 = sub_100031138();
        sub_100025B6C(v228, v229, v230, v231, v232);
        *(v0 + 1080) = v227;
      }

      if (v178)
      {
        v233 = v178;
        v234 = sub_100008FD8(v233, &selRef_taskForMemoryLock);
        v240 = v379;
        if (v235)
        {
          sub_100026580(v234, v235, 0xD000000000000011, 0x800000010004F770, v236, v237, v238, v239, v369, v371);
        }

        v241 = [v233 atypicalSpeech];
      }

      else
      {
        v241 = 0;
        v240 = v379;
      }

      v242 = *(v0 + 1088);
      *(*(v0 + 1128) + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_atypicalSpeechEnabled) = v241;
      v199 = swift_allocObject();
      *(v0 + 1568) = v199;
      *(v199 + 16) = 1;
      v243 = ([v242 flags] & 0x80) != 0 ? sub_10002752C(v199) : 0;
      *(v0 + 1576) = v243;
      v378 = v199;
      if (v240)
      {
        v199 = sub_100046E4C();
        v244 = VoicemailConfidenceSubtractionForLanguage(v199);

        if (v244)
        {
          break;
        }

        if (sub_10002752C(v378))
        {
          sub_100046D6C();
          sub_100026494();
        }

        else
        {
          v199 = 0;
        }

        v244 = EtiquetteConfidenceSubtraction(v199);

        if (v244)
        {
          break;
        }
      }

      v245 = 0;
LABEL_100:
      *(v0 + 1584) = v245;
      v379 = v245;
      if (!v399)
      {
        v373 = 0;
        goto LABEL_105;
      }

      v197 = *(v0 + 1112);
      v268 = [v197 priority];
      if ((v268 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v268 <= 0xFF)
      {
        v269 = *(v0 + 1184);
        v270 = *(v0 + 1176);
        v271 = *(v0 + 1168);
        v272 = *(v0 + 1160);
        sub_100046F7C();
        sub_100046F7C();
        sub_100031138();
        v373 = sub_100046F6C();

        v273 = *(v271 + 8);
        v274 = sub_1000310AC();
        v273(v274);
        (v273)(v269, v272);
LABEL_105:
        v275 = *(v0 + 1312);
        v276 = *(v0 + 1288);
        v277 = *(v0 + 1128);
        v278 = *(v0 + 1088);
        v279 = sub_1000041C4();
        sub_100030CE0(v279, v280, v281, v282);
        v283 = objc_allocWithZone(type metadata accessor for EARModelContextDelegateInterface());

        v284 = sub_10000912C(v276, v402, v380);
        v285 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface;
        *(v277 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelContextDelegateInterface) = v284;
        mach_continuous_time();
        sub_10000C420();
        v286 = *v173;
        v287 = v173[1];
        v395 = v286;
        v288 = *(v0 + 1080);
        *(v0 + 1592) = v288;

        v372;

        v289 = [v278 flags];
        v290 = [v278 voiceCommandActiveSet];
        v291 = *(v277 + v285);
        v292 = v291;
        LODWORD(v278) = ([v278 flags] >> 5) & 1;
        v293 = objc_allocWithZone(_EARSpeechRecognizer);
        HIBYTE(v370) = v289 & 1;
        LOBYTE(v370) = 0;
        v294 = sub_10000C6C4(v375, v388, 0, v383, v395, v287, v372, v288, v370, v290, v291, v278);
        *(v0 + 1600) = 0;
        v295 = *(v0 + 1312);
        v296 = *(v0 + 1128);
        v297 = *(v0 + 1088);
        v298 = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer;
        *(v0 + 1608) = OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_recognizer;
        *(v296 + v298) = v294;
        mach_continuous_time();
        sub_10000D8AC();
        if (([v297 flags] & 0x40) != 0)
        {
          v300 = 1;
          v299 = v403;
        }

        else
        {
          v299 = v403;
          if (([*(v0 + 1088) flags] & 0x400) != 0 && (*(v377 + v376) & 1) == 0)
          {
            v300 = [*(v0 + 1088) concatenateUtterances] ^ 1;
          }

          else
          {
            v300 = 0;
          }
        }

        v301 = *(v0 + 1088);
        v302 = *(v296 + v298);
        [0 setAllowUtteranceDelay:(sub_1000311A0() >> 6) & 1];

        v303 = *(v296 + v298);
        if (v399)
        {
          v304 = *(v0 + 1112);
          v305 = v303;
          v306 = sub_100008FD8(v304, &selRef_aneContext);
          sub_100006DF4(v306, v307);
        }

        else
        {
          v308 = v303;
        }

        v309 = sub_100046E4C();

        [v303 setAneContext:v309];

        v310 = *(v296 + v298);
        if (v299)
        {
          v311 = [v299 atypicalSpeech];
        }

        else
        {
          v311 = 0;
        }

        v312 = *(v0 + 1088);
        [v310 setAtypicalSpeech:v311];

        v313 = *(v296 + v298);
        [v313 setConcatenateUtterances:{objc_msgSend(v312, "concatenateUtterances")}];

        v314 = *(v296 + v298);
        if (v399)
        {
          v315 = *(v0 + 1112);
          v316 = v314;
          v317 = sub_100008FD8(v315, &selRef_cpuContext);
          sub_100006DF4(v317, v318);
        }

        else
        {
          v319 = v314;
        }

        v320 = *(v0 + 1088);
        v321 = sub_100046E4C();

        [v314 setCpuContext:v321];

        v322 = *(v296 + v298);
        [v322 setDetectUtterances:{objc_msgSend(v320, "isSingleUtteranceTask") ^ 1}];

        v323 = *(v296 + v298);
        [v322 setDisableAutoPunctuation:(sub_1000311A0() & 2) == 0];

        v324 = *(v296 + v298);
        [v322 setDisablePartialResults:(sub_1000311A0() & 4) == 0];

        v325 = *(v296 + v298);
        if (v299)
        {
          v326 = [v299 enableFullPayloadCorrection];
        }

        else
        {
          v326 = 0;
        }

        v327 = *(v0 + 1088);
        [v325 setEnableFullPayloadCorrection:v326];

        v328 = *(v296 + v298);
        [v328 setEnableVoiceCommands:{(objc_msgSend(v327, "flags") >> 9) & 1}];

        v329 = *(v296 + v298);
        v330 = [v327 endpointDetectionOptions];
        if (v330)
        {
          v331 = v330;
          [v330 detectAfterTime];
          v333 = v332;
        }

        else
        {
          v333 = 0.0;
        }

        [v329 setEndpointStart:v333];

        v334 = *(v296 + v298);
        if (v299)
        {
          v335 = [v299 farField];
        }

        else
        {
          v335 = 0;
        }

        [v334 setFarField:v335];

        [*(v296 + v298) setFormatAcrossUtterances:v300];
        v336 = *(v296 + v298);
        if (v399)
        {
          v337 = *(v0 + 1112);
          v338 = v336;
          v339 = sub_100008FD8(v337, &selRef_gpuContext);
          sub_100006DF4(v339, v340);
        }

        else
        {
          v341 = v336;
          sub_1000311E0();
        }

        v342 = *(v0 + 1096);
        v343 = sub_100046E4C();

        [v336 setGpuContext:v343];

        [*(v296 + v298) setHighPriority:v373 & 1];
        v344 = *(v296 + v298);
        v345 = sub_1000306D8(v342, &selRef_inputOrigin);
        sub_100006DF4(v345, v346);
        v347 = sub_100046E4C();

        [v344 setInputOrigin:v347];

        v348 = *(v296 + v298);
        *(v0 + 1616) = v348;
        v349 = v348;
        sub_100031144();

        return _swift_asyncLet_get();
      }

      __break(1u);
LABEL_140:
      v355 = *(p_type + 16);
      sub_100031228();
      p_type = sub_100008E88(v356, v357, v358, v359);
LABEL_57:
      v200 = v399;
      v202 = *(p_type + 16);
      v201 = *(p_type + 24);
      if (v202 >= v201 >> 1)
      {
        sub_100031108(v201);
        sub_100031228();
        p_type = sub_100008E88(v360, v361, v362, v363);
      }

      *(p_type + 16) = v202 + 1;
      v203 = p_type + 16 * v202;
      *(v203 + 32) = v197;
      *(v203 + 40) = v199;
      v204 = 1;
      v191 = v396;
    }

    sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
    v199 = sub_100046D7C();

    sub_10000ECEC(&unk_10006FF00, &unk_10004D2C8);
    sub_100030F98();
    v245 = sub_10004737C();
    v246 = 0;
    v248 = v199 + 64;
    v247 = *(v199 + 64);
    v394 = v199;
    v249 = *(v199 + 32);
    sub_100031090();
    p_type = v251 & v250;
    v253 = (v252 + 63) >> 6;
    v386 = v254 + 64;
    if ((v251 & v250) != 0)
    {
      do
      {
        v199 = v245;
        v255 = __clz(__rbit64(p_type));
        p_type &= p_type - 1;
LABEL_95:
        v259 = v255 | (v246 << 6);
        v260 = v394[6] + 16 * v259;
        v178 = *v260;
        v261 = *(v260 + 8);
        v262 = *(v394[7] + 8 * v259);

        v263 = [v262 integerValue];
        *(v386 + ((v259 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v259;
        v264 = (*(v199 + 48) + 16 * v259);
        *v264 = v178;
        v264[1] = v261;
        *(*(v199 + 56) + 8 * v259) = v263;
        v265 = *(v199 + 16);
        v266 = __OFADD__(v265, 1);
        v267 = v265 + 1;
        if (v266)
        {
          __break(1u);
          swift_once();
          v91 = *(v0 + 1264);
          v92 = *(v0 + 1144);
          v397 = *(v0 + 1112);
          v400 = *(v0 + 1312);
          v93 = *(v0 + 1104);
          v94 = *(v0 + 1096);
          v95 = *(v0 + 1088);
          v96 = off_100071650;
          sub_100046C2C();
          v97 = sub_100046E6C();
          v262[9] = &type metadata for String;
          v262[6] = v97;
          v262[7] = v98;
          v262[10] = sub_100046E5C();
          v262[11] = v99;
          swift_getErrorValue();
          v100 = *(v0 + 824);
          v101 = *(v0 + 832);
          v262[15] = v101;
          v102 = sub_100030C38(v262 + 12);
          (*(*(v101 - 8) + 16))(v102, v100, v101);
          sub_100046D8C();
          sub_100030C98(&qword_10006E820, type metadata accessor for LSRError);
          sub_100046A5C();
          v103 = *(v0 + 1056);
          swift_willThrow();

          sub_1000064CC(v400, &unk_10006FB00, &qword_10004C590);
          sub_10000AD94();

          sub_1000064CC(v103 + 8, &qword_10006FEB8, &qword_10004D268);
          sub_10003101C();
          if (v101)
          {

            sub_1000064CC(v94 + v261, &qword_10006FB80, &unk_10004D060);
            v104 = v93[1];
          }

          else
          {

            sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_languageStr);

            v124 = *(v261 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_sandboxExtensionHandles);

            sub_1000064CC(v94 + v261, &qword_10006FB80, &unk_10004D060);
            v125 = v93[1];

            sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_hammerModelVersion);

            sub_100030FF0(OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_geoLMRegionID);
          }

          v126 = *(v0 + 1312);
          v127 = *(v0 + 1304);
          v128 = *(v0 + 1296);
          v129 = *(v0 + 1288);
          v130 = *(v0 + 1264);
          v131 = *(v0 + 1256);
          v132 = *(v0 + 1248);
          v133 = *(v0 + 1240);
          v382 = *(v0 + 1232);
          v385 = *(v0 + 1224);
          v389 = *(v0 + 1216);
          v391 = *(v0 + 1208);
          v393 = *(v0 + 1184);
          v398 = *(v0 + 1176);
          v401 = *(v0 + 1152);
          v404 = *(v0 + 1144);
          v134 = *(v0 + 1128);
          type metadata accessor for EARSpeechRecognizer();
          v135 = *((swift_isaMask & *v134) + 0x30);
          v136 = *((swift_isaMask & *v134) + 0x34);
          swift_deallocPartialClassInstance();
          sub_10000BD34(0);

          sub_100004170();
          sub_100031144();

          __asm { BRAA            X1, X16 }
        }

        v245 = v199;
        *(v199 + 16) = v267;
      }

      while (p_type);
    }

    v256 = v246;
    while (1)
    {
      v246 = v256 + 1;
      if (__OFADD__(v256, 1))
      {
        break;
      }

      if (v246 >= v253)
      {

        v173 = v374;
        goto LABEL_100;
      }

      ++v256;
      if (*(v248 + 8 * v246))
      {
        v199 = v245;
        sub_100030F34();
        p_type = v258 & v257;
        goto LABEL_95;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_142:

  __break(1u);
  return _swift_asyncLet_finish(v364, v365, v366, v367);
}

char *sub_100008CFC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006FDB8, &qword_10004D1A8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100008D2C()
{
  v1 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_10000BDE8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);

  v7 = sub_100046BBC();
  if (!sub_100004844(v0 + v4, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  v8 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100030FF0(v8);

  return _swift_deallocObject(v0, v9 + 8, v3 | 7);
}

uint64_t sub_100008E48()
{
  if (*(v0 + 16) != 1)
  {
  }

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100008E88(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ECEC(&qword_10006F880, &unk_10004CF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100008FA4(uint64_t a1, uint64_t a2)
{
  sub_100004D64(a1, a2);

  return sub_100046D0C();
}

uint64_t sub_100008FD8(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_100046E5C();

  return v4;
}

uint64_t sub_10000905C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ECEC(a3, a4);
  sub_10000417C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000090C8()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for EARModelContextDelegateInterface()
{
  result = qword_10006FC18;
  if (!qword_10006FC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000912C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_asrId;
  v8 = sub_100046BBC();
  sub_1000045DC(&v3[v7], 1, 1, v8);
  swift_beginAccess();
  sub_10000C3B0(a1, &v3[v7]);
  swift_endAccess();
  v9 = &v3[OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_taskName];
  *v9 = a2;
  *(v9 + 1) = a3;
  *&v3[OBJC_IVAR____TtC22localspeechrecognition32EARModelContextDelegateInterface_pendingANECompilationContextEvents] = _swiftEmptyArrayStorage;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for EARModelContextDelegateInterface();
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_10000619C(a1);
  return v10;
}

uint64_t sub_100009208()
{
  v392 = v0;
  v383 = v0 + 122;
  if (*(v0 + 123) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v2 = *(v0 + 122);
    v3 = sub_100030FA4();
    sub_100030A00(v3, v4);
    sub_100030FA4();
    isa = sub_100046B2C().super.isa;
    v5 = sub_100030FA4();
    sub_10000C198(v5, v6);
  }

  v7 = *(v0 + 202);
  v8 = *(v0 + 201);
  v9 = *(v0 + 198);
  v10 = *(v0 + 141);
  v11 = sub_100003730();
  [v11 v12];

  v13 = *(v10 + v8);
  v390 = v0;
  if (!v9)
  {
    v44 = v13;
    v7 = 0;
LABEL_17:
    v45 = *(v0 + 201);
    v46 = *(v0 + 197);
    v47 = *(v0 + 141);
    [v13 setRecognitionConfidenceSubtraction:v7];

    v48 = *(v47 + v45);
    if (v46)
    {
      v49 = *(v0 + 197);
      v50 = v48;
      v51.super.isa = sub_100046D6C().super.isa;
    }

    else
    {
      v52 = v48;
      v51.super.isa = 0;
    }

    v53 = *(v0 + 201);
    v54 = *(v0 + 141);
    v55 = *(v0 + 138);
    v56 = *(v0 + 136);
    [v48 setRecognitionReplacements:v51.super.isa];

    v57 = *(v54 + v53);
    [v57 setRecognizeEagerCandidates:{(objc_msgSend(v56, "flags") >> 2) & 1}];

    v58 = *(v54 + v53);
    [v58 setRecognizeEmoji:{objc_msgSend(v56, "flags") & 1}];

    v59 = *(v54 + v53);
    v60 = sub_100030478(v55, &selRef_rightContext);
    if (v60)
    {
      sub_1000264B8(v60);
    }

    v61 = *(v0 + 201);
    v62 = *(v0 + 141);
    v63 = *(v0 + 138);
    v64 = sub_100046E4C();

    [v59 setRightContext:v64];

    v65 = *(v62 + v61);
    v66 = sub_100030478(v63, &selRef_selectedText);
    if (v66)
    {
      sub_1000264B8(v66);
    }

    v67 = *(v0 + 201);
    v68 = *(v0 + 141);
    v69 = *(v0 + 138);
    v70 = *(v0 + 136);
    v71 = (v68 + *(v0 + 171));
    v72 = sub_100046E4C();

    [v65 setSelectedText:v72];

    v73 = *(v68 + v67);
    v75 = *v71;
    v74 = v71[1];
    if (v74)
    {
      v76 = *v71;
    }

    else
    {
      v76 = 0;
    }

    if (v74)
    {
      v77 = v71[1];
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    sub_1000304CC(v76, v77, v73, &selRef_setLeftContextText_);
    v78 = *(v68 + v67);
    [v78 setShouldGenerateVoiceCommandCandidates:{(objc_msgSend(v70, "flags") >> 8) & 1}];

    v79 = *(v68 + v67);
    v80 = sub_100026494();
    sub_10000B260(v80);
    v81 = 0;
    if (v82 >> 60 != 15)
    {
      v81 = sub_100046B2C().super.isa;
      v83 = sub_1000310AC();
      sub_10000C198(v83, v84);
    }

    v23 = v390;
    v85 = *(v390 + 201);
    v86 = *(v390 + 141);
    v87 = *(v390 + 136);
    v88 = sub_100003730();
    [v88 v89];

    v90 = *(v86 + v85);
    v91 = [v87 speechDetectionOptions];
    if (v91)
    {
      v92 = v91;
      sub_100025310();
    }

    v93 = *(v390 + 201);
    v94 = *(v390 + 141);
    v95 = *(v390 + 137);
    v96 = *(v390 + 136);
    v97 = sub_100003730();
    [v97 v98];

    v99 = *(v94 + v93);
    v100 = [v95 clientID];
    v101 = sub_100046E5C();
    v103 = v102;

    sub_1000304CC(v101, v103, v99, &selRef_setClientId_);
    p_type = &stru_10006AFF0.type;
    v105 = [v96 modelOptions];
    if (!v105 || (v106 = v105, v107 = [v105 customLm], v106, !v107))
    {
LABEL_80:
      type metadata accessor for TrialExperimentationAssetManager();
      swift_initStackObject();
      sub_1000325A8();
      v290 = sub_10000640C();
      if (v290 != 2)
      {
        v291 = *(v23 + 1376);
        v292 = v290 & 1;
        [*(*(v23 + 1128) + *(v23 + 1608)) setDisableContextualBiasing:v292];
        v293 = sub_100046D0C();
        v294 = sub_100046FFC();
        if (sub_100030F60(v294))
        {
          v295 = sub_100031348();
          *v295 = 67109120;
          *(v295 + 4) = v292;
          sub_10003103C();
          _os_log_impl(v296, v297, v298, v299, v295, 8u);
          sub_100004ACC();
        }
      }

      v300 = *(v23 + 1128);
      v301 = *(v23 + 1088);
      type metadata accessor for Instrumentation();
      *(v300 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_cpuInstructionsUsedAtStart) = sub_10000ABC4();
      v302 = [v301 p_type[204]];
      v303 = _swiftEmptyArrayStorage;
      if (v302)
      {
        v304 = sub_10000AC34(v302);
        if (v304)
        {
          v303 = v304;
        }
      }

      v305 = [*(v23 + 1088) p_type[204]];
      if (!v305 || (v389 = sub_10000ACAC(v305)) == 0)
      {
        v389 = sub_100046D8C();
      }

      v306 = [*(v23 + 1088) p_type[204]];
      if (v306)
      {
        v307 = v306;
        v308 = *(v23 + 1192);
        v309 = [v306 speechProfileURLs];

        sub_100030FA4();
        v310 = sub_100046EFC();
      }

      else
      {
        v310 = _swiftEmptyArrayStorage;
      }

      v311 = *(v23 + 1376);

      v312 = sub_100046D0C();
      v313 = sub_100046FFC();
      v314 = sub_100030FB0(v313);
      v377 = *(v23 + 1592);
      v382 = *(v23 + 1560);
      v315 = *(v23 + 1552);
      v316 = v23;
      v317 = *(v23 + 1512);
      v318 = v316[186];
      v319 = v316[179];
      v374 = v316[180];
      v320 = v316[178];
      v321 = v316[140];
      if (v314)
      {
        v322 = sub_100004A8C();
        *v322 = 134217984;
        *(v322 + 4) = sub_10000AD1C(v303);

        sub_100006B04();
        _os_log_impl(v323, v324, v325, v326, v322, 0xCu);
        sub_100002B44();
      }

      else
      {
      }

      if (sub_10000AD40(v303))
      {
      }

      else
      {
        v327 = v310[2];

        if (!v327)
        {
LABEL_100:
          v339 = *(v390 + 190);
          v340 = *(v390 + 141);

          v341 = (v340 + v339);
          objc_opt_self();
          v342 = *(v341 + 1);
          v390[124] = *v341;
          *(v390 + 125) = v342;
          *(v390 + 126) = 45;
          v390[127] = -1.7573882e159;
          *(v390 + 128) = 95;
          v390[129] = -1.7573882e159;
          v343 = 1;
          v368 = sub_1000169D0();
          sub_10004711C();
          v344 = sub_100046E4C();

          v345 = sub_100031204();
          v347 = [v345 v346];

          if (v347)
          {
            v348 = *(v390 + 144);
            sub_100046B6C();

            v343 = 0;
          }

          v349 = *(v390 + 196);
          v350 = *(v390 + 193);
          v351 = *(v390 + 192);
          v352 = v390[176];
          v353 = *(v390 + 175);
          v354 = *(v390 + 169);
          v355 = *(v390 + 144);
          v356 = *(v390 + 141);
          sub_1000045DC(v355, v343, 1, *(v390 + 170));
          swift_beginAccess();
          sub_100030E74(v355, v356 + v354, &qword_10006FB80, &unk_10004D060);
          swift_endAccess();
          mach_continuous_time();
          v357 = *(v351 + 24);
          sub_1000042C4();
          sub_10000F774(v358, v359, v360, v361, v362, v363);
          v364 = [v353 processInfo];
          [v364 systemUptime];
          v366 = v365;

          *(v356 + OBJC_IVAR____TtC22localspeechrecognition19EARSpeechRecognizer_modelLoadTime) = v366 - v352;

          v38 = sub_10002706C;
          v36 = v390 + 2;
          v39 = v390 + 114;
          v37 = v383;

          return _swift_asyncLet_finish(v36, v37, v38, v39);
        }
      }

      v328 = *(v390 + 201);
      v329 = *(v390 + 168);
      v330 = *(v390 + 141);
      v331 = *(v390 + 138);
      v332 = (v330 + *(v390 + 190));
      type metadata accessor for EARSpeechRecognizer();
      v333 = *(v330 + v329);
      v334 = *v332;
      v335 = v332[1];
      v336 = *(v330 + v328);
      v337 = v333;

      v338 = v336;
      sub_10000ADE0(v337, v303, v389, v331, v334, v335, v338);

      goto LABEL_100;
    }

    v108 = *(v390 + 172);
    v21 = v107;
    v109 = sub_100046D0C();
    v110 = sub_100046FFC();
    v111 = &stru_10006AFF0.type;
    v388 = v21;
    if (os_log_type_enabled(v109, v110))
    {
      v385 = *(v390 + 188);
      sub_1000310B8();
      v112 = sub_100004A8C();
      v113 = sub_100004A74();
      v391[0] = v113;
      *v112 = 136315138;
      v114 = [v21 languageModel];
      sub_100046ABC();

      sub_10000B850();
      sub_100030C98(v115, v116);
      v21 = sub_1000473CC();
      v23 = v117;
      v118 = sub_100005BE0();
      (v96)(v118);
      v119 = sub_100031084();
      v121 = sub_100004EB4(v119, v23, v120);
      sub_1000066B8();

      *(v112 + 4) = v121;

      _os_log_impl(&_mh_execute_header, v109, v110, "Loading dynamic language model from %s", v112, 0xCu);
      sub_1000050D4(v113);
      v111 = (&stru_10006AFF0 + 16);
      sub_100002B44();
      sub_100030F44();
    }

    else
    {
    }

    v122 = *(v23 + 1504);
    sub_1000310B8();
    v123 = objc_opt_self();
    v124 = [v21 v111[254]];
    sub_100046ABC();

    v125 = sub_100046ADC();
    v127 = v126;
    v128 = sub_100005BE0();
    (v96)(v128);
    if (sub_100030538(v125, v127, v123))
    {
      v129 = *(v23 + 1504);
      sub_1000310B8();
      v130 = [v21 v111[254]];
      sub_100046ABC();

      v131 = sub_100046ADC();
      v133 = v132;
      v134 = sub_100005BE0();
      (v96)(v134);
      v135 = objc_allocWithZone(_EARAppLmArtifact);
      v136 = sub_10002CAC8(v131, v133);
      if (!v136)
      {
        goto LABEL_67;
      }

      v137 = *(v23 + 1608);
      v386 = v136;
      v138 = *(v23 + 1128);
      v139 = [*(v138 + v137) modelInfo];
      v140 = [v139 version];

      v141 = sub_100046E5C();
      v143 = v142;

      v144 = *(v138 + v137);
      v26 = v386;
      v145 = [v144 modelInfo];
      v146 = [v145 language];

      v147 = sub_100046E5C();
      v149 = v148;

      if ((sub_1000305EC(v141, v143, v147, v149, v386) & 1) == 0)
      {
        v190 = *(v23 + 1376);
        v191 = v21;
        v173 = sub_100046D0C();
        v192 = sub_100046FFC();
        if (!os_log_type_enabled(v173, v192))
        {

          goto LABEL_67;
        }

        v380 = *(v23 + 1504);
        v193 = *(v23 + 1496);
        v194 = *(v23 + 1240);
        v195 = *(v23 + 1192);
        v21 = sub_100004A8C();
        v23 = sub_100004A74();
        v391[0] = v23;
        *v21 = 136315138;
        v196 = [v191 languageModel];
        sub_100046ABC();

        sub_10000B850();
        sub_100030C98(v197, v198);
        sub_1000473CC();
        v199 = sub_10000C134();
        v193(v199);
        v200 = sub_100030FA4();
        sub_100004EB4(v200, v201, v202);
        sub_100030F98();

        *(v21 + 4) = v194;

        _os_log_impl(&_mh_execute_header, v173, v192, "Dynamic LM at %s was out of sync with the current asset", v21, 0xCu);
        sub_1000050D4(v23);
        sub_1000066B8();
        sub_100002B44();
        sub_100031084();
        sub_100002B44();

        goto LABEL_66;
      }

      v150 = [v21 weight];
      v151 = &qword_10004D000;
      if (!v150)
      {
        v203 = [v386 loadLmHandle];
        v204 = *(v23 + 1376);
        if (!v203)
        {
LABEL_61:
          v218 = sub_100046D0C();
          v230 = sub_10004700C();
          if (sub_100030FB0(v230))
          {
            v231 = sub_1000090C8();
            *v231 = 0;
            sub_100006B04();
            _os_log_impl(v232, v233, v234, v235, v231, 2u);
            sub_100005408();
          }

          goto LABEL_63;
        }

        v205 = v203;
        v206 = v21;
        v207 = sub_100046D0C();
        v208 = sub_100046FFC();
        if (os_log_type_enabled(v207, v208))
        {
          v373 = *(v23 + 1496);
          v376 = *(v23 + 1504);
          v381 = v208;
          v209 = *(v23 + 1240);
          v210 = *(v23 + 1192);
          v23 = sub_100004A8C();
          v211 = sub_100004A74();
          v391[0] = v211;
          *v23 = 136315138;
          v212 = [v206 languageModel];
          sub_100046ABC();

          sub_10000B850();
          sub_100030C98(v213, v214);
          sub_1000473CC();
          v215 = sub_100008F90();
          v373(v215);
          v26 = v386;
          v216 = v212;
          v151 = &qword_10004D000;
          v217 = sub_100004EB4(v216, v21, v391);
          sub_100031084();

          *(v23 + 4) = v217;

          _os_log_impl(&_mh_execute_header, v207, v381, "Loaded Dynamic LM: %s", v23, 0xCu);
          sub_1000050D4(v211);
          sub_100030F7C();
          sub_1000066B8();
          sub_100002B44();
        }

        else
        {
        }

        v236 = *(*(v23 + 1128) + *(v23 + 1608));
        sub_10000ECEC(&qword_10006FEF8, &qword_10004D2C0);
        sub_10003121C();
        v237 = swift_allocObject();
        *(v237 + 16) = *(v151 + 14);
        *(v237 + 32) = v205;
        v238 = sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
        v239 = v236;
        v173 = v205;
        sub_100005BE0();
        sub_100046EEC();
        sub_100026494();

        [v239 setExtraLmList:v238];

        goto LABEL_66;
      }

      v152 = v150;
      v153 = [v386 loadLmHandleWithWeight:v150];
      v154 = *(v23 + 1376);
      if (v153)
      {
        v155 = v153;
        v156 = v21;
        v157 = v152;
        v158 = v156;
        v159 = v157;
        v160 = sub_100046D0C();
        v161 = sub_100046FFC();
        if (sub_100030FB0(v161))
        {
          v162 = v390;
          v370 = *(v390 + 187);
          v371 = *(v390 + 188);
          v379 = v160;
          v163 = *(v390 + 155);
          v164 = *(v390 + 149);
          v165 = swift_slowAlloc();
          v372 = sub_100031348();
          v375 = sub_100004A74();
          v391[0] = v375;
          *v165 = 136315394;
          v369 = v156;
          v166 = [v158 languageModel];
          sub_100046ABC();

          sub_10000B850();
          sub_100030C98(v167, v168);
          sub_1000473CC();
          v169 = sub_100008F90();
          v370(v169);
          v26 = v386;
          v170 = sub_100004EB4(v166, v21, v391);
          sub_100031084();

          *(v165 + 4) = v170;

          *(v165 + 12) = 2112;
          v171 = v159;
          *(v165 + 14) = v159;
          *v372 = v152;

          _os_log_impl(&_mh_execute_header, v379, v369, "Loaded Dynamic LM: %s with custom weight: %@", v165, 0x16u);
          sub_1000064CC(v372, &qword_1000704F0, &qword_10004CF40);
          sub_100030F7C();
          sub_1000050D4(v375);
          sub_100030F7C();
          sub_100030F44();
        }

        else
        {

          v171 = v159;
          v162 = v390;
        }

        v225 = *(*(v162 + 1128) + *(v162 + 1608));
        sub_10000ECEC(&qword_10006FEF8, &qword_10004D2C0);
        sub_10003121C();
        v226 = swift_allocObject();
        *(v226 + 16) = xmmword_10004D0E0;
        *(v226 + 32) = v155;
        v227 = sub_1000029E4(0, &qword_10006FE58, _EARLmHandle_ptr);
        v228 = v225;
        v229 = v155;
        sub_100005BE0();
        sub_100046EEC();
        sub_100026494();

        [v228 setExtraLmList:v227];

        v23 = v162;
LABEL_67:
        v240 = [v21 vocabulary];
        if (v240)
        {
          v241 = v240;
          v242 = *(v23 + 1480);
          v243 = *(v23 + 1472);
          v244 = *(v23 + 1376);
          v245 = *(v23 + 1224);
          v246 = *(v23 + 1216);
          v247 = *(v23 + 1208);
          v248 = *(v23 + 1200);
          v249 = *(v23 + 1192);
          sub_100046ABC();

          v250 = *(v248 + 32);
          v251 = sub_1000310AC();
          v252(v251);
          v243(v247, v245, v249);
          v253 = sub_100046D0C();
          v254 = sub_100046FFC();
          v255 = os_log_type_enabled(v253, v254);
          v256 = *(v23 + 1504);
          v257 = v23;
          v258 = *(v23 + 1496);
          v259 = *(v257 + 1208);
          v260 = *(v257 + 1192);
          if (v255)
          {
            sub_100004A8C();
            v261 = sub_10000C394();
            v391[0] = v261;
            *v247 = 136315138;
            v262 = sub_100046ADC();
            v264 = sub_100004EB4(v262, v263, v391);

            *(v247 + 4) = v264;
            v258(v259, v260);
            _os_log_impl(&_mh_execute_header, v253, v254, "Loading Dynamic Vocab from %s", v247, 0xCu);
            sub_1000050D4(v261);
            sub_100004ACC();
            sub_100005408();
          }

          else
          {

            v258(v259, v260);
          }

          v23 = v390;
          v265 = *(v390 + 200);
          v266 = *(v390 + 153);
          v267 = sub_100046B1C();
          v269 = *(v390 + 172);
          p_type = &stru_10006AFF0.type;
          v270 = v388;
          if (v265)
          {
            swift_errorRetain();
            swift_errorRetain();
            v271 = sub_100046D0C();
            v272 = sub_10004700C();
            if (sub_10000BD64(v272))
            {
              v273 = sub_100004A8C();
              v274 = sub_100031348();
              *v273 = 138412290;
              swift_errorRetain();
              v275 = _swift_stdlib_bridgeErrorToNSError();
              *(v273 + 4) = v275;
              *v274 = v275;

              _os_log_impl(&_mh_execute_header, v271, v272, "Failed to load Dynamic Vocab from file: %@", v273, 0xCu);
              sub_1000064CC(v274, &qword_1000704F0, &qword_10004CF40);
              sub_100004ACC();
              sub_100002B44();
            }

            else
            {

              v270 = v271;
            }
          }

          else
          {
            v276 = v267;
            v277 = v268;
            v278 = sub_100046D0C();
            v279 = sub_100046FFC();
            if (sub_100030F60(v279))
            {
              v280 = sub_1000090C8();
              *v280 = 0;
              sub_10003103C();
              _os_log_impl(v281, v282, v283, v284, v280, 2u);
              sub_100004ACC();
            }

            v285 = *(v390 + 201);
            v286 = *(v390 + 141);

            v287 = *(v286 + v285);
            v288 = sub_100030F98();
            sub_100030594(v288, v277, v278);
            sub_10000C140(v276, v277);
          }

          v289 = *(v390 + 188);
          (*(v390 + 187))(*(v390 + 153), *(v390 + 149));
        }

        else
        {

          p_type = (&stru_10006AFF0 + 16);
        }

        goto LABEL_80;
      }

      v173 = v152;
      v218 = sub_100046D0C();
      v219 = sub_10004700C();
      if (sub_100030FB0(v219))
      {
        v220 = sub_100004A8C();
        v21 = sub_100031348();
        *v220 = 138412290;
        *(v220 + 4) = v173;
        *v21 = v152;
        sub_100006B04();
        _os_log_impl(v221, v222, v223, v224, v220, 0xCu);
        sub_1000064CC(v21, &qword_1000704F0, &qword_10004CF40);
        sub_100031084();
        sub_100002B44();
        sub_100030F44();

LABEL_63:
        goto LABEL_67;
      }
    }

    else
    {
      v172 = *(v23 + 1376);
      v173 = v21;
      v174 = sub_100046D0C();
      v175 = sub_10004700C();
      if (os_log_type_enabled(v174, v175))
      {
        v387 = *(v23 + 1504);
        v176 = *(v23 + 1496);
        v177 = *(v23 + 1240);
        v178 = *(v23 + 1192);
        v179 = v111;
        v180 = sub_100004A8C();
        v21 = sub_100004A74();
        v391[0] = v21;
        *v180 = 136315138;
        v181 = [v173 v179[254]];
        sub_100046ABC();

        sub_10000B850();
        sub_100030C98(v182, v183);
        v23 = sub_1000473CC();
        v185 = v184;
        v186 = sub_100005BE0();
        v176(v186);
        v187 = sub_1000066B8();
        v189 = sub_100004EB4(v187, v185, v188);

        *(v180 + 4) = v189;

        _os_log_impl(&_mh_execute_header, v174, v175, "Dynamic LM at %s was not valid", v180, 0xCu);
        sub_1000050D4(v21);
        sub_100031084();
        sub_100002B44();
        sub_100002B44();

        goto LABEL_67;
      }
    }

LABEL_66:
    goto LABEL_67;
  }

  v14 = *(v0 + 198);
  sub_10000ECEC(&unk_10006FEE0, &unk_10004D2B0);
  v15 = sub_10004737C();
  v17 = v14 + 64;
  v16 = *(v14 + 64);
  v18 = *(v14 + 32);
  sub_100031090();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v384 = v24 + 64;
  v388 = v14;
  v378 = v13;
  v25 = v13;
  v26 = 0;
  if (!v21)
  {
LABEL_7:
    v28 = v26;
    while (1)
    {
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        sub_100046D6C();
        sub_100026494();

        v0 = v390;
        v13 = v378;
        goto LABEL_17;
      }

      ++v28;
      if (*(v17 + 8 * v26))
      {
        sub_100030F34();
        v21 = v30 & v29;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_12:
    v31 = v27 | (v26 << 6);
    v32 = (v388[6].isa + 16 * v31);
    v33 = *v32;
    v7 = v32[1];
    v34 = *(v388[7].isa + v31);
    v35 = objc_allocWithZone(NSNumber);

    v36 = [v35 initWithInteger:v34];
    *(v384 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v40 = (v15[6] + 16 * v31);
    *v40 = v33;
    v40[1] = v7;
    *(v15[7] + 8 * v31) = v36;
    v41 = v15[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      break;
    }

    v15[2] = v43;
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return _swift_asyncLet_finish(v36, v37, v38, v39);
}

rusage_info_t sub_10000ABC4()
{
  bzero(v2, 0x128uLL);
  v0 = getpid();
  proc_pid_rusage(v0, 4, v2);
  return v2[31];
}

uint64_t sub_10000AC34(void *a1)
{
  v2 = [a1 speechProfileContainers];

  if (!v2)
  {
    return 0;
  }

  sub_1000029E4(0, &qword_10006FE88, SFSpeechProfileContainer_ptr);
  v3 = sub_100046EFC();

  return v3;
}

uint64_t sub_10000ACAC(void *a1)
{
  v2 = [a1 userIdMask];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100046D7C();

  return v3;
}

uint64_t sub_10000AD1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10004736C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t type metadata accessor for EARSpeechRecognizer()
{
  result = qword_10006FDA0;
  if (!qword_10006FDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000AD94()
{
  v2 = v0[183];
  v3 = v0[166];
  v4 = v0[141];
  v5 = v4 + v0[167];
  v6 = *(v4 + v0[165]);

  return swift_unknownObjectRelease();
}

BOOL sub_10000ADC0()
{

  return sub_1000472EC(v1 & 1, v0);
}

void sub_10000ADE0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10000B260(a4);
  if (v10 >> 60 == 15)
  {
    if (qword_10006DD30 != -1)
    {
      swift_once();
    }

    v11 = qword_100071498;
    v12 = mach_continuous_time();
    v13 = *(v11 + 24);
    sub_10000B2C4("ES: AOT Profile Load", 20, 2, 0, 0xE000000000000000, v12);
    v14 = objc_opt_self();
    v15 = sub_100046E4C();
    [v14 loadSpeechProfiles:a1 language:v15];

    v16 = [a1 allKeys];
    v17 = sub_100046EFC();

    sub_1000264F8(v17, &v34);

    if (!*(&v35 + 1))
    {
      goto LABEL_21;
    }

    sub_100026414(&v34, v36);
    swift_dynamicCast();
    if (qword_10006DD40 != -1)
    {
      swift_once();
    }

    v18 = sub_100046D1C();
    sub_100004D64(v18, qword_1000714B8);

    v19 = sub_100046D0C();
    v20 = sub_100046FFC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v36[0] = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_100004EB4(v32, *(&v32 + 1), v36);
      _os_log_impl(&_mh_execute_header, v19, v20, "Configuring recognizer with speech profile at path: %{private}s", v21, 0xCu);
      sub_1000050D4(v22);
    }

    v23 = sub_100046E4C();

    v24 = [a1 objectForKey:v23];

    if (v24)
    {
      sub_10004712C();
      swift_unknownObjectRelease();
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    v34 = v32;
    v35 = v33;
    if (*(&v33 + 1))
    {
      sub_100026414(&v34, v36);
      sub_1000029E4(0, &unk_10006FE98, _EARUserProfileContainer_ptr);
      swift_dynamicCast();
      [a7 setUserProfile:v31];
    }

    else
    {
LABEL_21:
      sub_1000064CC(&v34, &qword_10006FE90, &unk_10004CCD0);
    }

    v28 = mach_continuous_time();
    v29 = *(v11 + 24);
    sub_10000F774("ES: AOT Profile Load", 20, 2, 0, 0xE000000000000000, v28);
  }

  else
  {
    sub_10000C198(v9, v10);
    if (qword_10006DD40 != -1)
    {
      swift_once();
    }

    v25 = sub_100046D1C();
    sub_100004D64(v25, qword_1000714B8);
    oslog = sub_100046D0C();
    v26 = sub_100046FFC();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v26, "Configuring recognizer with provided userProfileData rather than loading speech profiles", v27, 2u);
    }
  }
}

uint64_t sub_10000B260(void *a1)
{
  v1 = [a1 profileData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_100046B3C();

  return v3;
}

uint64_t sub_10000B2C4(unint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v58 = a6;
  v59 = a4;
  v62 = a5;
  v8 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v57 - v10;
  v12 = sub_100046C6C();
  v13 = sub_100004E00(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_10000425C();
  v60 = v18 - v19;
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v23 = sub_100046D1C();
  sub_100004D64(v23, qword_1000714A0);
  v24 = sub_100046D0C();
  v25 = sub_100046FFC();
  v26 = os_log_type_enabled(v24, v25);
  v63 = a1;
  v61 = a3;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v57 = v22;
    v28 = v27;
    v29 = sub_100004A74();
    v64[0] = v29;
    *v28 = 136315138;
    v30 = sub_10004724C();
    v32 = sub_100004EB4(v30, v31, v64);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "Logging signpost begin event: %s", v28, 0xCu);
    sub_1000050D4(v29);
    sub_100002B44();
    v22 = v57;
    sub_100002B44();
  }

  v33 = sub_10004724C();
  v35 = v34;
  sub_100046C8C();
  v36 = sub_100046C4C();
  if (qword_10006DD50 != -1)
  {
    v36 = sub_1000040F0();
  }

  __chkstk_darwin(v36);
  *(&v57 - 4) = v22;
  *(&v57 - 3) = v33;
  *(&v57 - 2) = v35;
  sub_10000B9BC(sub_10000BA28);
  sub_10000BC08(v11);
  sub_10000BC70();
  sub_10000BCC4();
  sub_10000BD34(v37);
  v38 = v62;

  v39 = sub_100046C8C();
  v40 = sub_10004709C();
  if ((sub_1000470FC() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v61)
  {
    v42 = v63;
    v43 = HIDWORD(v63);
    if (HIDWORD(v63))
    {
      __break(1u);
    }

    else
    {
      sub_100004AF4();
      if (v44)
      {
        __break(1u);
        goto LABEL_25;
      }

      v43 = v42 >> 16;
      if (v42 >> 16 <= 0x10)
      {
        if (v42 <= 0x7F)
        {
          v45 = v42 + 1;
LABEL_17:
          sub_1000053D8(v45);

          v41 = v64;
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_22:
    if (v42 < 0x800)
    {
      v45 = (v42 >> 6) + ((v42 & 0x3F) << 8) + 33217;
      goto LABEL_17;
    }

LABEL_25:
    if (v43)
    {
      sub_10000BF1C();
      v45 = v55 + v56;
    }

    else
    {
      sub_100010618();
    }

    v38 = v62;
    goto LABEL_17;
  }

  v41 = v63;
  if (v63)
  {
LABEL_18:
    v46 = swift_slowAlloc();
    v47 = sub_100004A74();
    v64[0] = v47;
    *v46 = 134349314;
    sub_10000BD50(v58);
    *(v46 + 14) = sub_100004EB4(v48, v38, v49);
    v50 = sub_100046C5C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v50, v41, "%{signpost.description:begin_time,public}llu %s", v46, 0x16u);
    sub_1000050D4(v47);
    sub_100002B44();
    sub_100002B44();

    goto LABEL_19;
  }

  __break(1u);
LABEL_11:

LABEL_19:
  (*(v15 + 16))(v60, v22, v12);
  v51 = sub_100046CEC();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  sub_100046CDC();

  return (*(v15 + 8))(v22, v12);
}

uint64_t sub_10000B7E8()
{

  return sub_1000473EC();
}

void sub_10000B828()
{
  v3._countAndFlagsBits = v1;
  v3._object = v0;

  sub_100046EBC(v3);
}

uint64_t sub_10000B868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100046C6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006DD48 != -1)
  {
    swift_once();
  }

  (*(v9 + 16))(v12, a1, v8);
  swift_beginAccess();
  sub_10000BA48(v12, a2, a3, a4);
  return swift_endAccess();
}

void sub_10000B9BC(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

uint64_t sub_10000BA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v4;
  v11 = sub_1000041D0(a2, a3);
  v13 = v27[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = v11;
  v17 = v12;
  sub_10000ECEC(&qword_10006EB10, &qword_10004CB70);
  if (sub_1000472EC(isUniquelyReferenced_nonNull_native, v15))
  {
    v18 = sub_1000041D0(a2, a3);
    if ((v17 & 1) == (v19 & 1))
    {
      v16 = v18;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_10004740C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v17)
  {
    v20 = v27[7];
    v21 = sub_100046C6C();
    v22 = *(v21 - 8);
    v23 = *(v22 + 32);
    v24 = *(v22 + 72) * v16;
    v23(a4, v20 + v24, v21);
    v23(v27[7] + v24, a1, v21);
    result = sub_1000045DC(a4, 0, 1, v21);
  }

  else
  {
    sub_10002608C(v16, a2, a3, a1, v27);
    v26 = sub_100046C6C();
    sub_1000045DC(a4, 1, 1, v26);
  }

  *v4 = v27;
  return result;
}

uint64_t sub_10000BC08(uint64_t a1)
{
  v2 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000BC70()
{
  result = qword_10006EB00;
  if (!qword_10006EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006EB00);
  }

  return result;
}

uint64_t sub_10000BD34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_10000BD64(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t sub_10000BDC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  return sub_100034548(a2);
}

char *sub_10000BDF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ECEC(&unk_100070500, &qword_10004D5D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10000BF50@<X0>(uint64_t a1@<X8>)
{

  return sub_100004EB4(0xD000000000000048, (a1 - 32) | 0x8000000000000000, (v1 - 120));
}

uint64_t sub_10000BF74()
{

  return sub_100046D5C();
}

uint64_t sub_10000BFA8@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_10000BFC8()
{
  sub_10001FD20();
  v2 = v1;
  sub_100005C1C();
  v4 = v3[6];
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v0;
  sub_100004B48();
  *v10 = v9;

  v11 = sub_100030FA4();
  sub_10000C198(v11, v12);

  v7[2](v7, v2 & 1);
  _Block_release(v7);
  sub_100004170();

  return v13();
}

uint64_t sub_10000C140(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000C198(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000C140(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C1AC()
{
  sub_10000BDA0();
  sub_100005C1C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004B48();
  *v4 = v3;

  sub_100004170();

  return v5();
}

uint64_t sub_10000C290()
{
  sub_10000BDA0();
  sub_100005C1C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100004B48();
  *v4 = v3;

  sub_100004170();

  return v5();
}

uint64_t sub_10000C374()
{

  return sub_1000473EC();
}

uint64_t sub_10000C394()
{

  return swift_slowAlloc();
}

uint64_t sub_10000C3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10000C450()
{
  sub_10000C654();
  v32 = v2;
  v33 = v3;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v31 = v11;
  v13 = v12;
  v15 = v14;
  v16 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v16);
  v18 = *(v17 + 64);
  sub_100004AE8();
  __chkstk_darwin(v19);
  v20 = sub_10000F33C();
  v21 = sub_100004E00(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100002B2C();
  v28 = v27 - v26;
  sub_10000612C(v15, v1);
  if (sub_100004844(v1, 1, v20) == 1)
  {
    sub_10000619C(v1);
  }

  else
  {
    (*(v23 + 32))(v28, v1, v20);
    v29 = *(v8 + 16);
    v32(v28, v13, v31, v10);
    (*(v23 + 8))(v28, v20);
  }

  v30 = *(v8 + 24);
  v33(v7, v5, 2, 0, 0xE000000000000000, v10);
  sub_100005B90();
}

uint64_t sub_10000C5F4()
{

  return sub_100046F1C();
}

void sub_10000C618(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

void sub_10000C638()
{
  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;

  sub_100046EBC(v1);
}

uint64_t sub_10000C66C()
{

  return sub_100046F1C();
}

uint64_t sub_10000C690()
{

  return sub_100046AAC();
}

id sub_10000C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int16 a9, void *a10, uint64_t a11, char a12)
{
  v26 = sub_100046E4C();

  if (a3)
  {
    v24.super.isa = sub_100046D6C().super.isa;

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15.super.isa = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24.super.isa = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v15.super.isa = sub_100046EEC().super.isa;

  if (a6)
  {
LABEL_4:
    v16 = sub_100046E4C();

    goto LABEL_8;
  }

LABEL_7:
  v16 = 0;
LABEL_8:
  if (a8)
  {
    v17.super.isa = sub_100046D6C().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  v29 = 0;
  LOBYTE(v23) = a12 & 1;
  LOWORD(v22) = a9 & 0x101;
  v18 = [v27 initWithConfig:v26 overrides:v24.super.isa overrideConfigFiles:v15.super.isa language:v16 activeConfiguration:a7 modelLoadingOptions:v17.super.isa enableSpeakerCodeTraining:v22 supportEmojiRecognition:a10 voiceCommandActiveSet:a11 modelContextDelegate:v23 enableItn:&v29 error:?];

  if (v18)
  {
    v19 = v29;
  }

  else
  {
    v20 = v29;
    sub_100046A7C();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v18;
}

void sub_10000C964(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000C998();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_10000CA4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CA84()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10000CABC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10000ECEC(&qword_10006ECD0, &qword_10004CBB8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_10000CAEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CB8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000CBE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000CC8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000CCCC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_10000CCDC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000CCEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CD30()
{
  v1 = sub_10000ECEC(&qword_10006FE50, &qword_10004D1E0);
  sub_10000417C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000CDBC()
{
  _Block_release(*(v0 + 24));

  sub_10003121C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000CDF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CE30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_10000BFA8(*(a1 + 8));
  }

  v7 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
  v8 = a1 + *(a3 + 32);

  return sub_100004844(v8, a2, v7);
}

uint64_t sub_10000CEFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000ECEC(&qword_1000700F8, &qword_10004D3E0);
    v8 = v5 + *(a4 + 32);

    return sub_1000045DC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000CF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046BBC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_10000BFA8(*(a1 + *(a3 + 24) + 8));
  }

  return sub_100004844(a1, a2, v6);
}

uint64_t sub_10000D02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100046BBC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000045DC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void *sub_10000D0DC()
{
  type metadata accessor for Instrumentation();
  v0 = swift_allocObject();
  result = sub_10000E0C0();
  qword_100071498 = v0;
  return result;
}

uint64_t variable initialization expression of Instrumentation.selfLogger()
{
  type metadata accessor for SelfLoggingHelper();
  v0 = sub_10000F35C();
  *(v0 + 16) = [objc_opt_self() sharedStream];
  return v0;
}

uint64_t variable initialization expression of Instrumentation.signpostLogger()
{
  v0 = type metadata accessor for SignpostHelper();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10000F5F4();
}

uint64_t variable initialization expression of Instrumentation.powerLogger()
{
  type metadata accessor for PowerlogHelper();
  sub_10000C5E8();

  return swift_allocObject();
}

uint64_t variable initialization expression of Instrumentation.coreAnalyticsLogger()
{
  type metadata accessor for CoreAnalyticsLoggingHelper();
  sub_10000C5E8();

  return swift_allocObject();
}

uint64_t variable initialization expression of Instrumentation.ondeviceRecordLogger()
{
  type metadata accessor for OndeviceRecordHelper();
  result = sub_10000F35C();
  *(result + 16) = 0;
  return result;
}

void sub_10000D238()
{
  sub_10000C654();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v10);
  v12 = *(v11 + 64);
  sub_100004AE8();
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_100046BBC();
  v17 = sub_100004E00(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100002B2C();
  v24 = v23 - v22;
  sub_10000612C(v9, v15);
  if (sub_100004844(v15, 1, v16) == 1)
  {
    sub_10000619C(v15);
  }

  else
  {
    (*(v19 + 32))(v24, v15, v16);
    v25 = *(v0 + 16);
    sub_100013AA0(v24, v7, v5, v3);
    (*(v19 + 8))(v24, v16);
  }

  if (v3 >> 62)
  {
    v26 = sub_10004736C();
  }

  else
  {
    v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26 == 2)
  {
    v27 = v3 & 0xC000000000000001;
    sub_100026424(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) != 0)
    {
      v28 = sub_10004725C();
    }

    else
    {
      v28 = *(v3 + 32);
    }

    v29 = v28;
    sub_100026424(1, v27 == 0, v3);
    if (v27)
    {
      v30 = sub_10004725C();
    }

    else
    {
      v30 = *(v3 + 40);
    }

    v35 = v30;
    v36 = [v29 startedOrChanged];
    if (v36)
    {
      v37 = v36;
      if (([v36 exists] & 1) == 0)
      {
        goto LABEL_23;
      }

      v38 = *(v1 + 24);
      sub_10000F328();
      v48 = v39;
      v49 = 0xE90000000000003DLL;
      v50._countAndFlagsBits = sub_100013084();
      sub_100046EBC(v50);

      v40 = v48;
      v41 = v49;
      v42 = sub_10001315C();
      sub_10000B2C4("ES: ANE Model Init", 18, 2, v40, v41, v42);

      v43 = [v35 ended];
      if (v43)
      {
        v44 = v43;
        if ([v43 exists])
        {
          v48 = 0x656D616E656C6946;
          v49 = 0xE90000000000003DLL;
          v51._countAndFlagsBits = sub_100013084();
          sub_100046EBC(v51);

          v45 = v48;
          v46 = v49;
          v47 = sub_10001315C();
          sub_10000F774("ES: ANE Model Init", 18, 2, v45, v46, v47);
        }
      }

      else
      {
LABEL_23:
      }
    }

    else
    {
    }
  }

  else if (v26 >= 1)
  {
    if (qword_10006DD38 != -1)
    {
      swift_once();
    }

    v31 = sub_100046D1C();
    sub_100004D64(v31, qword_1000714A0);

    v32 = sub_100046D0C();
    v33 = sub_10004700C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = sub_10000AD40(v3);

      _os_log_impl(&_mh_execute_header, v32, v33, "Unexpected pending ane model initialization event count %ld", v34, 0xCu);
    }

    else
    {
    }
  }

  sub_100005B90();
}

void sub_10000D6E0()
{
  sub_10000C654();
  v34 = v2;
  v35 = v3;
  v33 = v4;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v16);
  v18 = *(v17 + 64);
  sub_100004AE8();
  __chkstk_darwin(v19);
  v20 = sub_10000F33C();
  v21 = sub_100004E00(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100002B2C();
  v28 = v27 - v26;
  sub_10000612C(v15, v1);
  if (sub_100004844(v1, 1, v20) == 1)
  {
    sub_10000619C(v1);
  }

  else
  {
    (*(v23 + 32))(v28, v1, v20);
    v29 = v11;
    v30 = *(v5 + 16);
    v33(v28, v13, v29, v9);
    (*(v23 + 8))(v28, v20);
  }

  v31 = *(v5 + 24);
  sub_10000F328();
  v36 = v32;
  v37._countAndFlagsBits = v7;
  v37._object = v34;
  sub_100046EBC(v37);
  v35("ES: ANE Model Init", 18, 2, v36, 0xE90000000000003DLL, v9);

  sub_100005B90();
}

void sub_10000D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C654();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v28);
  v30 = *(v29 + 64);
  sub_100004AE8();
  __chkstk_darwin(v31);
  v33 = &a9 - v32;
  v34 = sub_100046BBC();
  v35 = sub_100004E00(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  __chkstk_darwin(v35);
  sub_100002B2C();
  v42 = v41 - v40;
  sub_10000612C(v27, v33);
  if (sub_100004844(v33, 1, v34) == 1)
  {
    sub_10000619C(v33);
  }

  else
  {
    (*(v37 + 32))(v42, v33, v34);
    v43 = *(v20 + 16);
    sub_100013E6C();
    (*(v37 + 8))(v42, v34);
  }

  v44 = *(v23 + 24);
  sub_10000F774("ES: JIT Profile Build Load", 26, 2, 0, 0xE000000000000000, v25);
  sub_100005B90();
}

uint64_t sub_10000DAAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, void *a10, unsigned __int8 a11, void *a12, void *a13, void *a14, void *a15, unsigned __int8 a16, void *a17, uint64_t a18, void *a19, void *a20, char a21, uint64_t a22, char a23)
{
  v24 = v23;
  v65 = a2;
  v66 = a3;
  v67 = a10;
  v68 = a4;
  v31 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v31);
  v33 = *(v32 + 64);
  sub_100004AE8();
  __chkstk_darwin(v34);
  v36 = &v52 - v35;
  v37 = sub_100046BBC();
  v38 = sub_100004E00(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_100002B2C();
  v45 = v44 - v43;
  sub_10000612C(a1, v36);
  if (sub_100004844(v36, 1, v37) == 1)
  {
    sub_10000619C(v36);
    v46 = v67;
  }

  else
  {
    v63 = a7;
    v64 = a6;
    v56 = a19;
    v57 = a20;
    v54 = a17;
    v55 = a18;
    v53 = a16;
    v61 = a14;
    v62 = a15;
    v59 = a12;
    v60 = a13;
    v58 = a11;
    (*(v40 + 32))(v45, v36, v37);
    v47 = *(v24 + 16);
    a7 = v63;
    a6 = v64;
    v46 = v67;
    sub_100013F24(v45, v65, v66, v64, v63, a8, v67, v58 & 1, a9, v59, v60, v61, v62, v53 & 1, v54, v55, v56, v57, a21 & 1, a22, a23);
    (*(v40 + 8))(v45, v37);
  }

  v48 = HIBYTE(a5) & 0xF;
  v49 = v68;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v48 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
  }

  else
  {
    a5 = 0x800000010004DC00;
    v49 = 0xD000000000000018;
  }

  v50 = *(v24 + 32);
  sub_100016CD0(v49, a5, a6, a7, a8, v46);
}

uint64_t sub_10000DD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  sub_100004250(v7);
  v9 = *(v8 + 64);
  sub_100004AE8();
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_100046BBC();
  v14 = sub_100004E00(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100002B2C();
  v21 = v20 - v19;
  sub_10000612C(a1, v12);
  if (sub_100004844(v12, 1, v13) == 1)
  {
    return sub_10000619C(v12);
  }

  (*(v16 + 32))(v21, v12, v13);
  v23 = *(v3 + 16);
  sub_10001597C(v21, a2, a3);
  return (*(v16 + 8))(v21, v13);
}

uint64_t sub_10000DEE0(unint64_t a1)
{
  if (a1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x40302010005uLL >> (8 * a1));
  }
}

Swift::Int sub_10000DF24(unsigned __int8 a1)
{
  sub_10004745C();
  sub_10004746C(a1 + 1);
  return sub_10004748C();
}

Swift::Int sub_10000DFAC(uint64_t a1, unsigned __int8 a2)
{
  sub_10004745C();
  sub_10004746C(a2 + 1);
  return sub_10004748C();
}

uint64_t sub_10000DFF4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000DEE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000E020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000DF04(*v1);
  *a1 = result;
  return result;
}

void *Instrumentation.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t Instrumentation.__deallocating_deinit()
{
  Instrumentation.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_10000E0C0()
{
  v1 = v0;
  type metadata accessor for SelfLoggingHelper();
  v2 = sub_10000F35C();
  *(v2 + 16) = [objc_opt_self() sharedStream];
  v1[2] = v2;
  v3 = type metadata accessor for SignpostHelper();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v1[3] = sub_10000F5F4();
  type metadata accessor for PowerlogHelper();
  sub_10000C5E8();
  v1[4] = swift_allocObject();
  type metadata accessor for CoreAnalyticsLoggingHelper();
  sub_10000C5E8();
  v1[5] = swift_allocObject();
  type metadata accessor for OndeviceRecordHelper();
  v6 = sub_10000F35C();
  *(v6 + 16) = 0;
  v1[6] = v6;
  return v1;
}

void *RequestEndMetrics.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[15];

  v6 = v0[21];

  v7 = v0[24];

  v8 = v0[26];

  v9 = v0[29];

  v10 = v0[39];

  v11 = v0[41];

  v12 = v0[43];

  return v0;
}

uint64_t RequestEndMetrics.__deallocating_deinit()
{
  RequestEndMetrics.deinit();

  return _swift_deallocClassInstance(v0, 365, 7);
}

uint64_t getEnumTagSinglePayload for Instrumentation.CompletionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Instrumentation.CompletionState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10000E42C(uint64_t a1, int a2)
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

uint64_t sub_10000E44C(uint64_t result, int a2, int a3)
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

unint64_t sub_10000E48C()
{
  result = qword_10006E770;
  if (!qword_10006E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E770);
  }

  return result;
}

uint64_t sub_10000E4E0(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7B0, type metadata accessor for SFSpeechError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E54C(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7B0, type metadata accessor for SFSpeechError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E5B8(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E624@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_2(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10000E650(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7F0, type metadata accessor for LSRError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E6BC(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7F0, type metadata accessor for LSRError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E728(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E7A8(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000E814(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000E880(void *a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000E910(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000E9A0(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000EA0C(uint64_t a1)
{
  v2 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000EA78(void *a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000EB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000EB84()
{
  v2 = *v0;
  sub_10004745C();
  sub_100046DAC();
  return sub_10004748C();
}

uint64_t sub_10000EBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EDA4(&qword_10006E7E8, type metadata accessor for SFSpeechError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000EC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000EDA4(&qword_10006E820, type metadata accessor for LSRError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000ECEC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000EDA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000EFB0()
{
  result = qword_10006E7D8;
  if (!qword_10006E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006E7D8);
  }

  return result;
}

void sub_10000F1C8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000F33C()
{

  return sub_100046BBC();
}

uint64_t sub_10000F35C()
{

  return swift_allocObject();
}

uint64_t initializeBufferWithCopyOfBuffer for VoiceCommandDebugInfoAggregated(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10000F560()
{
  sub_100046C6C();
  result = sub_100046D8C();
  off_10006E980 = result;
  return result;
}

_DWORD *sub_10000F5A4()
{
  type metadata accessor for _Lock();
  v0 = swift_allocObject();
  result = swift_slowAlloc();
  *(v0 + 16) = result;
  *result = 0;
  off_10006E988 = v0;
  return result;
}

uint64_t sub_10000F5F4()
{
  v1 = sub_100046D1C();
  v2 = sub_100004E00(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B2C();
  v9 = v8 - v7;
  v10 = sub_100046C9C();
  v11 = sub_100004E00(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002B2C();
  v18 = v17 - v16;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v19 = sub_100004D64(v1, qword_1000714A0);
  (*(v4 + 16))(v9, v19, v1);
  sub_100046C7C();
  (*(v13 + 32))(v0 + OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter, v18, v10);
  return v0;
}

uint64_t sub_10000F774(const char *a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v84 = a6;
  v85 = a4;
  v9 = sub_100046CAC();
  v10 = sub_100004E00(v9);
  v82 = v11;
  v83 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100002B2C();
  v81 = v15 - v14;
  v16 = sub_100046C6C();
  v17 = sub_100004E00(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_10000425C();
  v89 = v22 - v23;
  v25 = __chkstk_darwin(v24);
  v87 = &v80 - v26;
  __chkstk_darwin(v25);
  v28 = &v80 - v27;
  v29 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  sub_10000425C();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v92 = &v80 - v35;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v36 = sub_100046D1C();
  sub_100004D64(v36, qword_1000714A0);
  v37 = sub_100046D0C();
  v38 = sub_100046FFC();
  v39 = os_log_type_enabled(v37, v38);
  v88 = a5;
  v90 = a1;
  v91 = a3;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = sub_100004A74();
    v86 = v28;
    v42 = v16;
    v43 = v41;
    v93[0] = v41;
    *v40 = 136315138;
    v44 = sub_10004724C();
    v46 = sub_100004EB4(v44, v45, v93);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Logging signpost end event: %s", v40, 0xCu);
    sub_1000050D4(v43);
    v16 = v42;
    v28 = v86;
    sub_100002B44();
    sub_100002B44();
  }

  v47 = sub_10004724C();
  v49 = v48;
  v50 = v92;
  sub_1000045DC(v92, 1, 1, v16);
  if (qword_10006DD50 != -1)
  {
    sub_1000040F0();
  }

  v51 = *(off_10006E988 + 2);

  os_unfair_lock_lock(v51);
  sub_10000FE64(v50, v47, v49);
  os_unfair_lock_unlock(v51);

  sub_100010538(v50, v33);
  if (sub_100004844(v33, 1, v16) != 1)
  {
    (*(v19 + 32))(v28, v33, v16);
    (*(v19 + 16))(v87, v28, v16);
    v52 = sub_100046CEC();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_100046CDC();
    sub_10000BC70();
    sub_10000BCC4();
    sub_10000BD34(v55);

    v56 = v28;
    v57 = sub_100046C8C();
    sub_100046CCC();
    v58 = sub_10004708C();
    if ((sub_1000470FC() & 1) == 0)
    {
LABEL_13:

      v59 = *(v19 + 8);
      v59(v89, v16);
      v59(v56, v16);
LABEL_24:
      v50 = v92;
      return sub_10000BC08(v50);
    }

    v86 = v56;
    if ((v91 & 1) == 0)
    {

      if (!v90)
      {
        __break(1u);
        goto LABEL_13;
      }

LABEL_20:
      v64 = v19;

      v65 = v81;
      sub_100046CFC();

      v67 = v82;
      v66 = v83;
      if ((*(v82 + 88))(v65, v83) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v68 = 0;
        v69 = "[Error] Interval already ended";
      }

      else
      {
        (*(v67 + 8))(v65, v66);
        v69 = "%{signpost.description:end_time,public}llu %s";
        v68 = 2;
      }

      v70 = swift_slowAlloc();
      v71 = sub_100004A74();
      v93[0] = v71;
      *v70 = v68;
      *(v70 + 1) = v68;
      *(v70 + 2) = 2050;
      sub_10000BD50(v84);
      *(v70 + 14) = sub_100004EB4(v72, v88, v73);
      v74 = v89;
      v75 = sub_100046C5C();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, v58, v75, v90, v69, v70, 0x16u);
      sub_1000050D4(v71);
      sub_100002B44();
      sub_100002B44();

      v76 = *(v64 + 8);
      v76(v74, v16);
      v76(v86, v16);
      goto LABEL_24;
    }

    v60 = v90;
    v61 = HIDWORD(v90);
    if (HIDWORD(v90))
    {
      __break(1u);
    }

    else
    {
      sub_100004AF4();
      if (v62)
      {
        __break(1u);
        goto LABEL_32;
      }

      v61 = v60 >> 16;
      if (v60 >> 16 <= 0x10)
      {
        if (v60 <= 0x7F)
        {
          v63 = v60 + 1;
LABEL_19:
          sub_1000053D8(v63);

          v90 = v93;
          goto LABEL_20;
        }

LABEL_28:
        if (v60 < 0x800)
        {
          v78 = (v60 >> 6) + ((v60 & 0x3F) << 8);
          v79 = 33217;
LABEL_30:
          v63 = v78 + v79;
          goto LABEL_19;
        }

LABEL_32:
        if (!v61)
        {
          sub_100010618();
          goto LABEL_19;
        }

        sub_10000BF1C();
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_10000BC08(v33);
  return sub_10000BC08(v50);
}

uint64_t sub_10000FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - v8;
  if (qword_10006DD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_10006E980;
  if (*(off_10006E980 + 2) && (v11 = sub_1000041D0(a2, a3), (v12 & 1) != 0))
  {
    v13 = v11;
    v14 = v10[7];
    v15 = sub_100046C6C();
    (*(*(v15 - 8) + 16))(v9, v14 + *(*(v15 - 8) + 72) * v13, v15);
    v16 = v9;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = sub_100046C6C();
    v16 = v9;
    v17 = 1;
  }

  sub_1000045DC(v16, v17, 1, v18);
  swift_endAccess();
  return sub_1000105A8(v9, a1);
}

void sub_10000FFF0(const char *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = sub_100046C6C();
  v9 = sub_100004E00(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002B2C();
  v16 = v15 - v14;
  if (qword_10006DD38 != -1)
  {
    sub_100004E14();
  }

  v17 = sub_100046D1C();
  sub_100004D64(v17, qword_1000714A0);
  v18 = sub_100046D0C();
  v19 = sub_100046FFC();
  v40 = a3;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = sub_100004A74();
    v42 = v21;
    *v20 = 136315138;
    v22 = sub_10004724C();
    v24 = v16;
    v25 = v11;
    v26 = a5;
    v27 = v8;
    v28 = sub_100004EB4(v22, v23, &v42);

    *(v20 + 4) = v28;
    v8 = v27;
    a5 = v26;
    v11 = v25;
    v16 = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Logging signpost event: %s", v20, 0xCu);
    sub_1000050D4(v21);
    sub_100002B44();
    sub_100002B44();
  }

  sub_100046C8C();
  sub_100046C4C();
  sub_10000BC70();
  sub_10000BCC4();
  sub_10000BD34(v29);

  v30 = sub_100046C8C();
  v31 = sub_1000470AC();
  if ((sub_1000470FC() & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v40 & 1) == 0)
  {

    v32 = a1;
    if (!a1)
    {
      __break(1u);
LABEL_9:

LABEL_15:
      (*(v11 + 8))(v16, v8);
      return;
    }

LABEL_14:
    v35 = swift_slowAlloc();
    v36 = sub_100004A74();
    v42 = v36;
    *v35 = 134349314;
    *(v35 + 4) = a6;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_100004EB4(a4, a5, &v42);
    v37 = sub_100046C5C();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v37, v32, "%{signpost.description:event_time,public}llu %s", v35, 0x16u);
    sub_1000050D4(v36);
    sub_100002B44();
    sub_100002B44();

    goto LABEL_15;
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100004AF4();
  if (!v34)
  {
    if (v33 >> 16 <= 0x10)
    {

      v32 = &v42;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

uint64_t SignpostHelper.deinit()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter;
  v2 = sub_100046C9C();
  sub_100004110(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t SignpostHelper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22localspeechrecognition14SignpostHelper_signposter;
  v2 = sub_100046C9C();
  sub_100004110(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for SignpostHelper()
{
  result = qword_10006E9B8;
  if (!qword_10006E9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010474()
{
  result = sub_100046C9C();
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

uint64_t sub_100010538(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000105A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ECEC(&qword_10006EB08, &qword_10004CB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10001062C(uint64_t a1)
{
  v3 = sub_100046C3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100046E3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);

  sub_100046C1C();
  sub_100010FAC();
  v8 = sub_10001089C();
  if (v8)
  {
    *&v1[OBJC_IVAR____TtC22localspeechrecognition23EARFullPayloadCorrector_fullPayloadCorrectorInstance] = v8;
    v12.receiver = v1;
    v12.super_class = type metadata accessor for EARFullPayloadCorrector();
    v9 = objc_msgSendSuper2(&v12, "init");
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v9 = off_100071650;
    v10 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_100046D5C();
    swift_willThrow();
    (*(v4 + 8))(a1, v3);
    type metadata accessor for EARFullPayloadCorrector();
    swift_deallocPartialClassInstance();
  }

  return v9;
}

id sub_10001089C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100046E4C();

  v2 = [v0 initWithLanguage:v1];

  return v2;
}

void sub_100010914(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000002ALL, 0x800000010004DE60, v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "EARFullPayloadCorrector.%s", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = *(v6 + OBJC_IVAR____TtC22localspeechrecognition23EARFullPayloadCorrector_fullPayloadCorrectorInstance);
  v16 = sub_100046E4C();
  if (isa)
  {
    isa = sub_100046D6C().super.isa;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  v19[4] = sub_100010FF0;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100010D40;
  v19[3] = &unk_100065C48;
  v18 = _Block_copy(v19);

  [v15 rewritePostITNOutput:v16 withOptions:isa completionHandler:v18];
  _Block_release(v18);
}

void sub_100010B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (qword_10006DD40 != -1)
  {
    swift_once();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000002ALL, 0x800000010004DE60, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "EARFullPayloadCorrector.%s replying", v13, 0xCu);
    sub_1000050D4(v14);
  }

  v15 = objc_allocWithZone(EARFullPayloadCorrectionResult);

  swift_errorRetain();
  v16 = sub_100011010(a1, a2, a3, a4);
  a5();
}

uint64_t sub_100010D40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_100046E5C();
    v10 = v9;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  v10 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_100046D7C();
  }

LABEL_4:

  v11 = a4;
  v7(v8, v10, v5, a4);
}

id sub_100010F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARFullPayloadCorrector();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100010FAC()
{
  result = qword_10006EBA8;
  if (!qword_10006EBA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006EBA8);
  }

  return result;
}

uint64_t sub_100010FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100011010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = sub_100046E4C();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8.super.isa = 0;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8.super.isa = sub_100046D6C().super.isa;

  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = sub_100046A6C();

LABEL_8:
  v10 = [v4 initWithResult:v7 loggingInfo:v8.super.isa error:v9];

  return v10;
}

uint64_t sub_1000110FC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100046C3C();
  sub_100004250(v4);
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100046E3C();
  sub_100004250(v7);
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_100005BF8();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000111B0()
{
  super_class = v0[2].super_class;
  receiver = v0[3].receiver;
  v3 = v0[2].receiver;
  v4 = &receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners];
  sub_1000029E4(0, &qword_10006FAF0, NSXPCListener_ptr);
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_10000206C();
  v5 = sub_100046D8C();
  *v4 = 0;
  *(v4 + 1) = v5;
  v6 = (v4 + 8);
  v62 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream] = 0;
  v65 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector] = 0;
  v7 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales] = _swiftEmptyArrayStorage;
  v63 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo] = super_class;
  v64 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions] = v3;
  v8 = objc_opt_self();
  v9 = super_class;
  v10 = v3;
  v11 = [v8 sharedInstance];
  v61 = OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager;
  *&receiver[OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager] = v11;
  v12 = v11;
  v13 = [(objc_class *)v9 clientID];
  if (!v13)
  {
    sub_100046E5C();
    v13 = sub_100046E4C();
  }

  v14 = [v12 installedLanguageDetectorAssetWithClientID:v13];

  if (!v14)
  {
    v60 = v7;
    v27 = v0[4].receiver;
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v29 = v0[3].super_class;
    v28 = v0[4].receiver;
    v30 = off_100071650;
    sub_100046C2C();
    sub_100005BF8();
    sub_100004124();
    sub_10004707C();
    sub_100046D5C();
    goto LABEL_22;
  }

  v16 = v0[2].receiver;
  v15 = v0[2].super_class;
  v17 = sub_100046E5C();
  v19 = v18;

  v20 = [v16 useVAD];
  v21 = [(objc_class *)v15 clientID];
  v22 = sub_100046E5C();
  v24 = v23;

  if (v22 == 0xD000000000000015 && 0x800000010004E0F0 == v24)
  {
  }

  else
  {
    v26 = sub_1000473EC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v20 = 1;
LABEL_15:
  sub_1000029E4(0, &unk_10006EE20, _EARLanguageDetectorV2_ptr);

  v67._countAndFlagsBits = 0x6F7463657465642FLL;
  v67._object = 0xEE006E6F736A2E72;
  sub_100046EBC(v67);

  v31 = sub_100011758(v17, v19, v20);
  v32 = *&receiver[v65];
  *&receiver[v65] = v31;

  v33 = *&receiver[v65];
  if (v33)
  {
    v35 = v0[3].super_class;
    v34 = v0[4].receiver;
    v37 = v0[2].super_class;
    v36 = v0[3].receiver;
    v38 = v0[2].receiver;
    v39 = [v33 supportedLocales];
    v40 = sub_100046EFC();

    v41 = *&receiver[v7];
    *&receiver[v7] = v40;

    v42 = type metadata accessor for EARLanguageDetector();
    v0[1].receiver = v36;
    v0[1].super_class = v42;
    v43 = objc_msgSendSuper2(v0 + 1, "init");

    v44 = v0->super_class;

    return v44(v43);
  }

  v60 = v7;
  v46 = v0[4].receiver;
  v47 = objc_opt_self();
  sub_100046DCC();
  if (qword_10006DD78 != -1)
  {
    sub_100004E34();
  }

  v49 = v0[3].super_class;
  v48 = v0[4].receiver;
  v50 = off_100071650;
  sub_100046C2C();
  sub_100005BF8();
  v51 = sub_100004124();
  sub_100012FF0(500, v51, v52, v47);
LABEL_22:
  v53 = v0[3].super_class;
  v54 = v0[4].receiver;
  v56 = v0[2].super_class;
  v55 = v0[3].receiver;
  v57 = v0[2].receiver;
  swift_willThrow();

  sub_100005808(v6, &qword_10006EE18, &unk_10004CC10);
  v58 = *&receiver[v60];

  type metadata accessor for EARLanguageDetector();
  swift_deallocPartialClassInstance();

  v59 = v0->super_class;

  return v59();
}

id sub_100011758(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_100046E4C();

  v6 = [v4 initWithConfigFile:v5 useNNVad:a3 & 1];

  return v6;
}

uint64_t sub_1000117D4()
{
  v1 = [objc_allocWithZone(_EARLanguageDetectorV2RequestOptions) init];
  v2 = *(v0 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_detectorOptions);
  v3 = v1;
  result = [v2 resultReportingFrequency];
  if (result < -128)
  {
    __break(1u);
  }

  else if (result <= 127)
  {
    [v3 setReportingFrequency:result];

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100011864(uint64_t a1, void (**a2)(void, void))
{
  v3 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_supportedLocales);

  isa = sub_100046EEC().super.isa;
  (a2)[2](a2, isa);

  _Block_release(a2);
}

void sub_1000118FC(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_100046C3C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_100046E3C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_assetsManager);
  v9 = [*(a1 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_clientInfo) clientID];
  if (!v9)
  {
    sub_100046E5C();
    v9 = sub_100046E4C();
  }

  v10 = [v8 installedLanguageDetectorAssetWithClientID:v9];

  if (v10)
  {
    sub_100046E5C();

    sub_1000029E4(0, &qword_1000704D0, _EARSpeechModelInfo_ptr);

    v15._countAndFlagsBits = 0x6F7463657465642FLL;
    v15._object = 0xEE006E6F736A2E72;
    sub_100046EBC(v15);

    v11 = sub_100002634();
    v12 = [objc_allocWithZone(EARSpeechModelInfo) initWithModelInfo:v11];

    (a2)[2](a2, v12);

    _Block_release(a2);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      swift_once();
    }

    v13 = off_100071650;
    sub_100046C2C();
    sub_100046E6C();
    sub_10004707C();

    a2[2](a2, 0);
    _Block_release(a2);
  }
}

void sub_100011BF0(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

void sub_100011C64(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v5 = *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_languageDetector);
  if (v5)
  {
    v9 = objc_allocWithZone(type metadata accessor for EARLanguageDetectorResultStream());
    v10 = v5;
    v11 = sub_10001281C(a1);
    v12 = *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream);
    *(a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_resultStream) = v11;
    v13 = v11;

    if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = sub_1000117D4();
      v15 = [v10 startRequestWithSamplingRate:a2 requestOptions:v14 delegate:v13];

      v16 = [objc_opt_self() anonymousListener];
      [v16 setDelegate:a3];
      [v16 activate];
      v17 = (a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners);
      os_unfair_lock_lock((a3 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners));
      objc_allocWithZone(type metadata accessor for EARLanguageDetectorAudioBuffer());
      v18 = v15;
      sub_1000122C0(v18);
      sub_10002D5A0();
      os_unfair_lock_unlock(v17);
      v19 = [v16 endpoint];
      (a4)[2](a4, v19, 0);

      goto LABEL_7;
    }

    __break(1u);
  }

  else if (qword_10006DD40 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v20 = sub_100046D1C();
  sub_100004D64(v20, qword_1000714B8);
  v19 = sub_100046D0C();
  v21 = sub_10004700C();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v19, v21, "LanguageDetector is not initialized", v22, 2u);
  }

LABEL_7:

  _Block_release(a4);
}

BOOL sub_100011F58(void *a1, void *a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC22localspeechrecognition19EARLanguageDetector_audioBufferListeners));
  sub_10002CF98(a1, v6, v7, v8, v9, v10, v11, v12, v21, v22);
  v14 = v13;
  os_unfair_lock_unlock(v5);
  if (v14)
  {
    v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARLanguageDetectorAudioBuffer];
    [a2 setExportedInterface:v15];

    [a2 setExportedObject:v14];
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a1;
    v25 = sub_100013064;
    v26 = v16;
    v21 = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_10002673C;
    v24 = &unk_100065CC0;
    v17 = _Block_copy(&v21);
    v18 = v14;
    v19 = a1;

    [a2 setInvalidationHandler:v17];
    _Block_release(v17);
    [a2 activate];
  }

  return v14 != 0;
}

id sub_1000120EC(uint64_t a1, void *a2)
{
  sub_1000125E0();

  return [a2 invalidate];
}

id sub_1000122C0(uint64_t a1)
{
  v2 = v1;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v4 = sub_100046D1C();
  sub_100004D64(v4, qword_1000714B8);
  v5 = sub_100046D0C();
  v6 = sub_100046FFC();
  if (sub_10000BD64(v6))
  {
    v7 = sub_100004A8C();
    v8 = sub_100004A74();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100004EB4(0x293A5F2874696E69, 0xE800000000000000, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "EARLanguageDetectorAudioBuffer.%s", v7, 0xCu);
    sub_1000050D4(v8);
    sub_100005408();
    sub_100002B44();
  }

  *&v2[OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer] = a1;
  v9 = type metadata accessor for EARLanguageDetectorAudioBuffer();
  v12.receiver = v2;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000123F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v5 = sub_100046D1C();
  sub_100004D64(v5, qword_1000714B8);
  v6 = sub_100046D0C();
  v7 = sub_100046FFC();
  if (sub_10000BD64(v7))
  {
    v8 = sub_100004A8C();
    v9 = sub_100004A74();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004EB4(0xD000000000000016, 0x800000010004E210, &v14);
    sub_100004B04(&_mh_execute_header, v10, v11, "EARLanguageDetectorAudioBuffer.%s");
    sub_1000050D4(v9);
    sub_100002B44();
    sub_100005408();
  }

  if (a2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v12 = *(v3 + OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer);
    isa = sub_100046B2C().super.isa;
    [v12 addAudioSampleData:isa];
  }
}

id sub_1000125E0()
{
  v1 = v0;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v2 = sub_100046D1C();
  sub_100004D64(v2, qword_1000714B8);
  v3 = sub_100046D0C();
  v4 = sub_100046FFC();
  if (sub_10000BD64(v4))
  {
    v5 = sub_100004A8C();
    v6 = sub_100004A74();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100004EB4(0x6F69647541646E65, 0xEA00000000002928, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "EARLanguageDetectorAudioBuffer.%s", v5, 0xCu);
    sub_1000050D4(v6);
    sub_100002B44();
    sub_100002B44();
  }

  v7 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition30EARLanguageDetectorAudioBuffer_audioBuffer);

  return [v7 endAudio];
}

id sub_1000127B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001281C(void *a1)
{
  v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults] = 0;
  v3 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a1];
  v4 = OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection;
  *&v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection] = v3;
  v5 = objc_opt_self();
  v6 = v3;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL____SFXPCEARLanguageDetectorResultStream];
  [v6 setRemoteObjectInterface:v7];

  [*&v1[v4] activate];
  v8 = [*&v1[v4] remoteObjectProxy];
  sub_10004712C();
  swift_unknownObjectRelease();
  sub_10000ECEC(&unk_10006EE30, &qword_10004CC20);
  swift_dynamicCast();
  *&v1[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy] = v12;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for EARLanguageDetectorResultStream();
  v9 = objc_msgSendSuper2(&v11, "init");

  return v9;
}

id sub_10001298C()
{
  [*&v0[OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_connection] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EARLanguageDetectorResultStream();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100012A4C()
{
  v1 = v0;
  v2 = sub_100046C3C();
  v3 = sub_100004250(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100046E3C();
  v7 = sub_100004250(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v10 = sub_100046D1C();
  sub_100004D64(v10, qword_1000714B8);
  v11 = sub_100046D0C();
  v12 = sub_100046FFC();
  if (sub_10000BD64(v12))
  {
    v13 = sub_100004A8C();
    v14 = sub_100004A74();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004EB4(0xD00000000000002ELL, 0x800000010004E1A0, &v21);
    sub_100004B04(&_mh_execute_header, v15, v16, "EARLanguageDetectorResultStream.%s");
    sub_1000050D4(v14);
    sub_100002B44();
    sub_100005408();
  }

  if (*(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults))
  {
    v17 = 0;
    v18 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy);
  }

  else
  {
    sub_100046DCC();
    if (qword_10006DD78 != -1)
    {
      sub_100004E34();
    }

    v19 = off_100071650;
    sub_100046C2C();
    sub_100005BF8();
    sub_100004124();
    sub_10004702C();
    sub_100046D5C();
    v18 = *(v1 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy);
    v17 = sub_100046A6C();
  }

  [v18 languageDetectorDidFinishWithError:v17];
}

void sub_100012D20(double a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_10006DD40 != -1)
  {
    sub_100002B5C();
  }

  v7 = sub_100046D1C();
  sub_100004D64(v7, qword_1000714B8);
  v8 = a3;
  v9 = sub_100046D0C();
  v10 = sub_100046FFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = sub_100004A74();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100004EB4(0xD000000000000036, 0x800000010004E140, &v16);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "EARLanguageDetectorResultStream.%s %@", v11, 0x16u);
    sub_100005808(v12, &qword_1000704F0, &qword_10004CF40);
    sub_100002B44();
    sub_1000050D4(v13);
    sub_100005408();
    sub_100002B44();
  }

  *(v4 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_didProduceResults) = 1;
  v15 = [objc_allocWithZone(EARLanguageDetectorV2Result) initWithLanguageDetectorV2Result:v8];
  [*(v4 + OBJC_IVAR____TtC22localspeechrecognition31EARLanguageDetectorResultStream_resultStreamProxy) languageDetectorDidRecognizeResult:v15 processedAudioDuration:a1];
}

id sub_100012FF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_100046E4C();

  v7 = [a4 lsr_errorWithCode:a1 description:v6];

  return v7;
}

uint64_t sub_10001306C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013084()
{
  sub_100005BA8();
  v1 = objc_getAssociatedObject(v0, &unk_10006EE50);
  swift_endAccess();
  if (v1)
  {
    sub_10004712C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_100005808(v6, &qword_10006FE90, &unk_10004CCD0);
  }

  return 0;
}

uint64_t sub_10001315C()
{
  sub_100005BA8();
  v1 = objc_getAssociatedObject(v0, &unk_10006EE40);
  swift_endAccess();
  if (v1)
  {
    sub_10004712C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_100005808(v6, &qword_10006FE90, &unk_10004CCD0);
  }

  return 0;
}

uint64_t sub_100013230()
{
  result = sub_1000167D0(&off_1000656A0);
  qword_1000714D8 = result;
  return result;
}

uint64_t sub_100013258()
{
  result = sub_1000167D0(&off_100065700);
  qword_1000714E0 = result;
  return result;
}

id sub_100013280()
{
  result = [objc_opt_self() _staticWrappedInitWithCurrentProcess];
  qword_1000714E8 = result;
  return result;
}

uint64_t sub_1000132BC(uint64_t a1, uint64_t a2)
{
  if (qword_10006DD58 != -1)
  {
LABEL_41:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1000714D8;
  v6 = 1 << *(qword_1000714D8 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = qword_1000714D8 + 56;
  v9 = v7 & *(qword_1000714D8 + 56);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          v14 = 0;
          goto LABEL_17;
        }

        v9 = *(v8 + 8 * v11);
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    v12 = (*(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v9)))));
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_1000473EC() & 1) == 0);
  v14 = 1;
LABEL_17:
  if (qword_10006DD60 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v16 = qword_1000714E0;
  v17 = 1 << *(qword_1000714E0 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = qword_1000714E0 + 56;
  v20 = v18 & *(qword_1000714E0 + 56);
  v21 = (v17 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          v25 = 0;
          goto LABEL_34;
        }

        v20 = *(v19 + 8 * v22);
        ++v15;
        if (v20)
        {
          v15 = v22;
          break;
        }
      }
    }

    v23 = (*(v16 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v20)))));
    if (*v23 == a1 && v23[1] == a2)
    {
      break;
    }

    v20 &= v20 - 1;
  }

  while ((sub_1000473EC() & 1) == 0);
  v25 = 1;
LABEL_34:
  v26 = objc_opt_self();
  v27 = [v26 sharedPreferences];
  v28 = [v27 isDictationHIPAACompliant];

  v29 = [v26 sharedPreferences];
  v30 = [v29 siriDataSharingOptInStatus];

  if (v14)
  {
    return 1;
  }

  if (v30 == 1)
  {
    return v25 & ~v28;
  }

  return 0;
}

unint64_t sub_100013540(double a1)
{
  v1 = a1 * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_100013590()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t sub_100013840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for SelfLoggingHelper();
    v5 = sub_100013590();
    v6 = (v5 | sub_1000132BC(a2, a3)) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

id sub_1000138A8(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_100046B8C().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = sub_100046BBC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_100013944(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010004D680 == a2;
  if (v3 || (sub_10000B7E8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6F69746174636944 && a2 == 0xE90000000000006ELL;
  if (v7 || (sub_10000B7E8() & 1) != 0)
  {
    return 2;
  }

  v8 = a1 == 0x6372616553626557 && a2 == 0xE900000000000068;
  if (v8 || (sub_10000B7E8() & 1) != 0)
  {
    return 3;
  }

  v9 = a1 == 0x746F687354 && a2 == 0xE500000000000000;
  if (v9 || (sub_10000B7E8() & 1) != 0)
  {
    return 4;
  }

  v5 = 5;
  if (a1 != 0x7463694469726953 || a2 != 0xED00006E6F697461)
  {
    if (sub_10000B7E8())
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void sub_100013AA0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4 >> 62)
  {
    v8 = sub_10004736C();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = 0;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v10 = sub_10004725C();
      }

      else
      {
        v10 = *(a4 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = sub_10001315C();
      sub_100015B28(a1, a2, a3, v11, v12);
    }

    while (v8 != v9);
  }
}

void sub_100013BFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, Class *a5, SEL *a6, uint64_t *a7)
{
  v21 = [objc_allocWithZone(*a5) init];
  if (v21)
  {
    [v21 setExists:1];
  }

  v13 = [objc_allocWithZone(ASRSchemaASRActiveConfigUpdateContext) init];
  [v13 *a6];
  v14 = v13;
  sub_100015B28(a1, a2, a3, v13, a4);

  if (qword_10006DD68 != -1)
  {
    sub_100004140();
  }

  v15 = [qword_1000714E8 captureSnapshot];
  if (v15)
  {
    v16 = v15;
    v17 = *a7;
    v18 = [objc_opt_self() context];
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = v18;
    isa = sub_100046B8C().super.isa;
    [v16 logWithEventContext:v19 asrIdentifier:isa];
  }
}

void sub_100013D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class *a6, SEL *a7)
{
  sub_100016B0C();
  v11 = [objc_allocWithZone(*v10) init];
  v12 = v11;
  if (v11)
  {
    [v11 setExists:1];
  }

  v13 = [objc_allocWithZone(*a6) init];
  [v13 *a7];
  v14 = v13;
  v15 = sub_100016ACC();
  sub_100015B28(v15, v16, v17, v13, v7);
}

void sub_100013E6C()
{
  sub_100016B0C();
  v1 = [objc_allocWithZone(ASRSchemaASRJitLanguageModelEnrollmentEnded) init];
  v2 = [objc_allocWithZone(ASRSchemaASRJitLanguageModelEnrollmentContext) init];
  [v2 setEnded:v1];
  v3 = v2;
  v4 = sub_100016ACC();
  sub_100015B28(v4, v5, v6, v2, v0);
}

void sub_100013F24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char a8, double a9, void *a10, void *a11, void *a12, void *a13, unsigned __int8 a14, void *a15, uint64_t a16, void *a17, void *a18, char a19, uint64_t a20, char a21)
{
  v67 = a7;
  v66[1] = a6;
  v72 = a1;
  v27 = a21;
  v28 = a20;
  v29 = a19;
  v66[4] = a17;
  v66[5] = a15;
  v71 = a14;
  v69 = a13;
  v70 = a18;
  v68 = a11;
  v66[2] = a10;
  v66[3] = a12;
  v30 = sub_100046BBC();
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [objc_allocWithZone(ASRSchemaASRStarted) init];
  v73 = a3;
  if (!a3)
  {

    return;
  }

  v74 = v34;
  if (v34)
  {
    v35 = sub_100013944(a2, v73);
    [v74 setTask:v35];
    if (a5)
    {
      v66[0] = objc_opt_self();
      v79 = a4;
      v80 = a5;
      v77 = 95;
      v78 = 0xE100000000000000;
      v75 = 45;
      v76 = 0xE100000000000000;
      sub_1000169D0();
      v36 = v74;
      sub_10004711C();
      v37 = a2;
      v38 = sub_100046E4C();

      v39 = [v66[0] convertLanguageCodeToSchemaLocale:v38];

      a2 = v37;
      v28 = a20;
      v27 = a21;
      v29 = a19;
      [v36 setModelLocale:v39];
    }
  }

  v40 = v74;
  [v40 setIsHighQualityAsset:a8 & 1];
  if (a16 && (sub_1000029E4(0, &qword_10006F158, NSUUID_ptr), , (v41 = sub_1000144EC()) != 0))
  {
    v42 = v41;
    sub_1000029E4(0, &unk_10006F120, SISchemaUUID_ptr);
    sub_100046BAC();
    v43 = sub_1000138A8(v33);
    if (v74)
    {
      v44 = a2;
      v45 = v40;
      v46 = v43;
      [v45 setDictationUiInteractionId:v46];

      a2 = v44;
      if (a9 <= 0.0)
      {
        goto LABEL_17;
      }

LABEL_12:
      type metadata accessor for SelfLoggingHelper();
      v47 = sub_100013540(a9);
LABEL_18:
      v48 = v67;
      [v40 setSpeechProfileAgeInNs:v47];
      v49 = v40;
      if (v48)
      {
        v49 = sub_100046E4C();
        v48 = v49;
      }

      sub_100016B40(v49, "setDatapackVersion:");

      v50 = v68;
      if (v68)
      {
        v51 = v40;
        v52 = sub_100046E4C();
        v50 = v52;
      }

      else
      {
        v52 = v40;
      }

      sub_100016B40(v52, "setHammerVersion:");

      v53 = v69;
      if (v69)
      {
        v54 = v40;
        v55 = sub_100046E4C();
        v53 = v55;
      }

      else
      {
        v55 = v40;
      }

      sub_100016B40(v55, "setGeoLanguageModelRegion:");

      [v40 setGeoLanguageModelLoaded:v71 & 1];
      v56 = v70;
      if (v70)
      {
        v57 = v40;
        v58 = sub_100046E4C();
        v56 = v58;
      }

      else
      {
        v58 = v40;
      }

      sub_100016B40(v58, "setPortraitExperimentVariantName:");

      goto LABEL_32;
    }
  }

  else if (a9 <= 0.0)
  {
    if (v74)
    {
LABEL_17:
      v47 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_18;
    }
  }

  else if (v74)
  {
    goto LABEL_12;
  }

  [v40 setGeoLanguageModelLoaded:v71 & 1];
LABEL_32:
  [v40 setAtypicalSpeechEnabled:v29 & 1];
  if (v27 != 2)
  {
    [v40 setIsEmptyTextField:v27 & 1];
  }

  v59 = [objc_allocWithZone(ASRSchemaASRRequestContext) init];
  [v59 setStartedOrChanged:v40];
  v60 = v59;
  sub_100015B28(v72, a2, v73, v59, v28);

  if (qword_10006DD68 != -1)
  {
    sub_100004140();
  }

  v61 = [qword_1000714E8 captureSnapshot];
  if (!v61)
  {
    goto LABEL_39;
  }

  v62 = v61;
  v63 = [objc_opt_self() context];
  if (v63)
  {
    v64 = v63;
    isa = sub_100046B8C().super.isa;
    [v62 logWithEventContext:v64 asrIdentifier:isa];

LABEL_39:
    return;
  }

  __break(1u);
}

id sub_1000144EC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_100046E4C();

  v2 = [v0 initWithUUIDString:v1];

  return v2;
}

uint64_t sub_100014560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6F632D544ELL && a2 == 0xEA00000000007463;
  if (v4 || (sub_10000B7E8() & 1) != 0)
  {
    return 1;
  }

  v6 = a1 == 0x616E7070612D544ELL && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_10000B7E8() & 1) != 0)
  {
    return 2;
  }

  v7 = a1 == 0x6D6F6F722D544ELL && a2 == 0xE700000000000000;
  if (v7 || (sub_10000B7E8() & 1) != 0)
  {
    return 3;
  }

  v8 = a1 == 0x6573756F682D544ELL && a2 == 0xE800000000000000;
  if (v8 || (sub_10000B7E8() & 1) != 0)
  {
    return 4;
  }

  v9 = a1 == 0x656E6F7A2D544ELL && a2 == 0xE700000000000000;
  if (v9 || (sub_10000B7E8() & 1) != 0)
  {
    return 5;
  }

  v10 = a1 == 0x70756F72672D544ELL && a2 == 0xE800000000000000;
  if (v10 || (sub_10000B7E8() & 1) != 0)
  {
    return 6;
  }

  v11 = a1 == 0x63697665642D544ELL && a2 == 0xE900000000000065;
  if (v11 || (sub_10000B7E8() & 1) != 0)
  {
    return 7;
  }

  v12 = a1 == 0x656E6563732D544ELL && a2 == 0xE800000000000000;
  if (v12 || (sub_10000B7E8() & 1) != 0)
  {
    return 8;
  }

  v14 = a1 == (sub_100004AA4() & 0xFFFFFFFFFFFFLL | 0x6F63000000000000) && a2 == v13;
  if (v14 || (sub_10000B7E8() & 1) != 0)
  {
    return 9;
  }

  v15 = a1 == 0x6F746F68702D544ELL && a2 == 0xED00006D75626C61;
  if (v15 || (sub_10000B7E8() & 1) != 0)
  {
    return 10;
  }

  v16 = a1 == 0x6F746F68702D544ELL && a2 == 0xEB00000000676174;
  if (v16 || (sub_10000B7E8() & 1) != 0)
  {
    return 11;
  }

  v18 = a1 == sub_100016A8C() && a2 == v17;
  if (v18 || (sub_10000B7E8() & 1) != 0)
  {
    return 12;
  }

  v20 = a1 == sub_100016A24() && a2 == v19;
  if (v20 || (sub_10000B7E8() & 1) != 0)
  {
    return 13;
  }

  v21 = a1 == 0xD000000000000010 && 0x800000010004E3E0 == a2;
  if (v21 || (sub_10000B7E8() & 1) != 0)
  {
    return 14;
  }

  v22 = a1 == 0x6C79616C702D544ELL && a2 == 0xEB00000000747369;
  if (v22 || (sub_10000B7E8() & 1) != 0)
  {
    return 15;
  }

  v24 = a1 == sub_100004B24() && a2 == v23;
  if (v24 || (sub_10000B7E8() & 1) != 0)
  {
    return 16;
  }

  v25 = a1 == 0x76656C61632D544ELL && a2 == 0xEB00000000746E65;
  if (v25 || (sub_10000B7E8() & 1) != 0)
  {
    return 17;
  }

  v26 = a1 == 0x7469746E652D544ELL && a2 == 0xE900000000000079;
  if (v26 || (sub_10000B7E8() & 1) != 0)
  {
    return 18;
  }

  v28 = a1 == sub_100016AAC() && a2 == v27;
  if (v28 || (sub_10000B7E8() & 1) != 0)
  {
    return 19;
  }

  v30 = a1 == sub_100016A48() && a2 == v29;
  if (v30 || (sub_10000B7E8() & 1) != 0)
  {
    return 20;
  }

  v31 = a1 == 0x73697472612D544ELL && a2 == 0xE900000000000074;
  if (v31 || (sub_10000B7E8() & 1) != 0)
  {
    return 21;
  }

  v32 = a1 == 0x6F697463612D544ELL && a2 == 0xE90000000000006ELL;
  if (v32 || (sub_10000B7E8() & 1) != 0)
  {
    return 22;
  }

  v33 = a1 == 0x65676469772D544ELL && a2 == 0xE900000000000074;
  if (v33 || (sub_10000B7E8() & 1) != 0)
  {
    return 23;
  }

  v35 = a1 == (sub_100004AA4() & 0xFFFFFFFFFFFFLL | 0x6E75000000000000) && a2 == v34;
  if (v35 || (sub_10000B7E8() & 1) != 0)
  {
    return 24;
  }

  v37 = a1 == sub_100016A6C() && a2 == v36;
  if (v37 || (sub_10000B7E8() & 1) != 0)
  {
    return 25;
  }

  v39 = a1 == sub_10000BD7C() && a2 == v38;
  if (v39 || (sub_10000B7E8() & 1) != 0)
  {
    return 26;
  }

  v40 = a1 == 0x63656666652D544ELL && a2 == 0xE900000000000074;
  if (v40 || (sub_10000B7E8() & 1) != 0)
  {
    return 27;
  }

  result = 28;
  if (a1 != 0x6F6E6B6E752D544ELL || a2 != 0xEA00000000006E77)
  {
    if (sub_10000B7E8())
    {
      return 28;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_100014AF0(uint64_t a1)
{
  v4 = [objc_allocWithZone(ASRSchemaASRPersonalizationUserEditNamedEntityMetrics) init];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = sub_10000AD40(a1);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (HIDWORD(v5))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    sub_100004E54();
    swift_once();
LABEL_121:
    v120 = sub_100046D1C();
    sub_100005C04(v120, qword_1000714A0);
    v121 = sub_100046D0C();
    v122 = sub_100046FEC();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = sub_1000090C8();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Failed to create ASRSchemaASRNamedEntityUserEdit", v123, 2u);
      v4 = v128;
      sub_100002B44();
    }

    return 0;
  }

  [v4 setNumTotalEdit:v5];
  if (sub_10000AD40(a1))
  {
    sub_1000029E4(0, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
    v6 = v4;
    v7.super.isa = sub_100046EEC().super.isa;
  }

  else
  {
    v8 = v4;
    v7.super.isa = 0;
  }

  [v4 setNamedEntityUserEdits:v7.super.isa];

LABEL_8:
  v130 = sub_10000AD40(a1);
  if (v130)
  {
    v9 = 0;
    sub_100002B7C();
    v129 = a1 & 0xC000000000000001;
    v125 = a1 + 32;
    v126 = a1 & 0xFFFFFFFFFFFFFF8;
    v127 = a1;
    v128 = v4;
    while (1)
    {
      if (v129)
      {
        v10 = sub_10004725C();
      }

      else
      {
        if (v9 >= *(v126 + 16))
        {
          goto LABEL_126;
        }

        v10 = *(v125 + 8 * v9);
      }

      v2 = v10;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v12 = [v10 entityTaggerCategory];
      v13 = sub_100046E5C();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        if (v4)
        {
          v26 = v4;
          v27 = [v2 speechProfileCategories];
          v28 = sub_100046EFC();

          isa = *(v28 + 16);

          if (isa)
          {
            sub_1000029E4(0, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr);
            isa = sub_100046EEC().super.isa;
          }

          [v26 setLmeOverActivationEdits:{isa, v125}];
        }

        v30 = [v2 speechProfileCategories];
        v31 = sub_100046EFC();

        v32 = *(v31 + 16);

        if (v32)
        {
          v33 = [objc_allocWithZone(ASRSchemaASRLMEOverActivationEdit) init];
          if (v33)
          {
            v34 = v33;
            v35 = [v2 speechProfileCategories];
            v36 = sub_100046EFC();

            if (v36[2])
            {
              v38 = v36[4];
              v37 = v36[5];
            }

            else
            {
              v38 = 0;
              v37 = 0xE000000000000000;
            }

            v102 = sub_100014560(v38, v37);

            [v34 setSpeechProfileCategory:v102];
            if (v4)
            {
              v103 = v4;
              if (sub_100016960(v103, &selRef_lmeOverActivationEdits, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr))
              {
                v104 = v34;
                sub_100046EDC();
                sub_100016AE0();
                if (*(v105 + 16) >= *(v105 + 24) >> 1)
                {
                  sub_10000C5F4();
                }

                sub_100046F3C();
                sub_1000029E4(0, &qword_10006F150, ASRSchemaASRLMEOverActivationEdit_ptr);
                v106 = sub_100046EEC().super.isa;

                [v103 setLmeOverActivationEdits:v106];
              }

              else
              {
                [v103 setLmeOverActivationEdits:0];
              }
            }

            else
            {
            }
          }
        }

        goto LABEL_97;
      }

      v131 = v9;
      v17 = [objc_allocWithZone(ASRSchemaASRNamedEntityUserEdit) init];
      if (!v17)
      {
        if (qword_10006DD38 != -1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

      v18 = v17;
      v19 = [v2 entityTaggerCategory];
      v20 = sub_100046E5C();
      v22 = v21;

      if (v20 == 0x6E6F73726550 && v22 == 0xE600000000000000)
      {

        sub_10000426C();
        p_type = &stru_10006AFF0.type;
        goto LABEL_34;
      }

      sub_10000B7E8();
      sub_10000426C();
      p_type = (&stru_10006AFF0 + 16);
      if (v25)
      {

LABEL_34:
        [v18 setEntityTaggerCategory:{1, v125}];
        goto LABEL_35;
      }

      v101 = v20 == 0x617A696E6167724FLL && v22 == 0xEC0000006E6F6974;
      if (v101 || (sub_10000B7E8() & 1) != 0)
      {

        [v18 setEntityTaggerCategory:{3, v125}];
        goto LABEL_35;
      }

      if (v20 == 0x6563616C50 && v22 == 0xE500000000000000)
      {
        break;
      }

      v108 = sub_10000B7E8();

      if (v108)
      {
        goto LABEL_119;
      }

      if (qword_10006DD38 != -1)
      {
        sub_100004E54();
        swift_once();
      }

      v109 = sub_100046D1C();
      sub_100005C04(v109, qword_1000714A0);
      v110 = v2;
      v111 = sub_100046D0C();
      v112 = sub_100046FEC();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = sub_100004A8C();
        v141 = sub_100004A74();
        *v113 = 136315138;
        v114 = [v110 entityTaggerCategory];
        v1 = sub_100046E5C();
        v134 = v112;
        v116 = v115;

        sub_100002B7C();
        v119 = sub_100004EB4(v117, v116, v118);

        *(v113 + 4) = v119;
        _os_log_impl(&_mh_execute_header, v111, v134, "Unsupported entity tagger category: %s", v113, 0xCu);
        sub_1000050D4(v141);
        sub_100002B44();
        sub_100002B44();
      }

LABEL_35:
      v39 = [v2 p_type[107]];
      v40 = sub_100046EFC();

      v41 = *(v40 + 16);

      if (v41)
      {
        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        v41 = sub_100046EEC().super.isa;
      }

      [v18 setVisualContextCategories:v41];

      v135 = v2;
      v42 = [v2 p_type[107]];
      v43 = sub_100046EFC();

      v132 = v43;
      v44 = *(v43 + 16);
      if (v44)
      {
        v45 = (v43 + 40);
        do
        {
          v46 = *(v45 - 1);
          v47 = *v45;
          v48 = v46 == a1 && v47 == 0xE600000000000000;
          if (v48 || (sub_10000C374() & 1) != 0)
          {
            if (sub_100016960(v18, &selRef_visualContextCategories, &qword_10006F140, NSNumber_ptr))
            {
              goto LABEL_45;
            }
          }

          else
          {
            v51 = v46 == v1 && v47 == 0xE600000000000000;
            if (!v51 && (sub_10000C374() & 1) == 0)
            {

              [v18 setIsNamedEntityPresentInVisualContext:0];
              if (qword_10006DD38 != -1)
              {
                sub_100004E54();
                swift_once();
              }

              v52 = sub_100046D1C();
              sub_100005C04(v52, qword_1000714A0);

              v53 = sub_100046D0C();
              v54 = sub_100046FEC();

              if (os_log_type_enabled(v53, v54))
              {
                a1 = sub_100004A8C();
                v1 = sub_100004A74();
                sub_100016AEC(v1, v55, v56, v57, v58, v59, v60, v61, v125, v126, v127, v128, v129, v130, v131, v132, v62);
                v64 = sub_100004EB4(v46, v47, v63);

                *(a1 + 4) = v64;
                _os_log_impl(&_mh_execute_header, v53, v54, "Unsupported visual context category: %s", a1, 0xCu);
                sub_1000050D4(v1);
                sub_100002B7C();
                sub_100002B44();
                sub_10000426C();
                sub_100002B44();
              }

              else
              {
              }

              goto LABEL_56;
            }

            if (sub_100016960(v18, &selRef_visualContextCategories, &qword_10006F140, NSNumber_ptr))
            {
LABEL_45:
              sub_10004744C();
              sub_100046EDC();
              sub_100016AE0();
              if (*(v49 + 16) >= *(v49 + 24) >> 1)
              {
                sub_10000C66C();
              }

              sub_100016B00();
              sub_100046F3C();
              sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
              v50 = sub_100046EEC().super.isa;

              [v18 setVisualContextCategories:v50];

              goto LABEL_55;
            }
          }

          [v18 setVisualContextCategories:0];
LABEL_55:
          [v18 setIsNamedEntityPresentInVisualContext:1];
LABEL_56:
          v45 += 2;
          --v44;
        }

        while (v44);
      }

      v2 = v135;
      v65 = [v135 speechProfileCategories];
      v66 = sub_100046EFC();

      v67 = *(v66 + 16);

      if (v67)
      {
        sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
        v67 = sub_100046EEC().super.isa;
      }

      v68 = &stru_10006AFF0.type;
      [v18 setSpeechProfileCategories:v67];

      v69 = [v135 speechProfileCategories];
      v70 = sub_100046EFC();

      v133 = v70;
      v71 = *(v70 + 16);
      if (v71)
      {
        v1 = (v70 + 40);
        do
        {
          v73 = *(v1 - 1);
          v72 = *v1;
          v74 = sub_100016B00();
          if (sub_100014560(v74, v75))
          {
            [v18 setIsNamedEntityPresentInSpeechProfile:1];
            if (sub_100016960(v18, &selRef_speechProfileCategories, &qword_10006F140, NSNumber_ptr))
            {
              sub_10004744C();
              sub_100046EDC();
              sub_100016AE0();
              if (*(v76 + 16) >= *(v76 + 24) >> 1)
              {
                sub_10000C66C();
              }

              sub_100016B00();
              sub_100046F3C();
              sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
              v77 = sub_100046EEC().super.isa;

              [v18 v68[111]];
            }

            else
            {
              [v18 v68[111]];
            }
          }

          else
          {
            v78 = qword_10006DD38;

            if (v78 != -1)
            {
              sub_100004E54();
              swift_once();
            }

            v79 = sub_100046D1C();
            sub_100005C04(v79, qword_1000714A0);

            v80 = sub_100046D0C();
            v81 = sub_100046FEC();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = sub_100004A8C();
              v83 = sub_100004A74();
              sub_100016AEC(v83, v84, v85, v86, v87, v88, v89, v90, v125, v126, v127, v128, v129, v130, v131, v133, v91);
              v92 = sub_100016B00();
              v95 = sub_100004EB4(v92, v93, v94);

              *(v82 + 4) = v95;
              _os_log_impl(&_mh_execute_header, v80, v81, "Unsupported speech profile category: %s", v82, 0xCu);
              sub_1000050D4(v83);
              v2 = v135;
              sub_100002B44();
              v68 = (&stru_10006AFF0 + 16);
              sub_100002B44();
            }

            else
            {
            }

            [v18 setIsNamedEntityPresentInSpeechProfile:0];
          }

          v1 += 2;
          --v71;
        }

        while (v71);
      }

      v4 = v128;
      if (v128)
      {
        v96 = v128;
        v139 = sub_100016960(v96, &selRef_namedEntityUserEdits, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
        sub_100002B7C();
        if (v97)
        {
          v98 = v18;
          sub_100046EDC();
          sub_100016AE0();
          if (*(v99 + 16) >= *(v99 + 24) >> 1)
          {
            sub_10000C5F4();
          }

          sub_100046F3C();
          a1 = v127;
          v9 = v131;
          if (v139)
          {
            sub_1000029E4(0, &qword_10006F148, ASRSchemaASRNamedEntityUserEdit_ptr);
            v100.super.isa = sub_100046EEC().super.isa;
          }

          else
          {
            v100.super.isa = 0;
          }

          [v96 setNamedEntityUserEdits:v100.super.isa];

LABEL_97:
          goto LABEL_98;
        }

        [v96 setNamedEntityUserEdits:0];

        a1 = v127;
        v9 = v131;
      }

      else
      {

        a1 = v127;
        v9 = v131;
        sub_100002B7C();
      }

LABEL_98:
      if (v9 == v130)
      {
        return v4;
      }
    }

LABEL_119:
    [v18 setEntityTaggerCategory:{2, v125}];
    goto LABEL_35;
  }

  return v4;
}

void sub_10001597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100014AF0(a2);
  if (qword_10006DD38 != -1)
  {
    sub_100004E54();
    swift_once();
  }

  v6 = sub_100046D1C();
  sub_100005C04(v6, qword_1000714A0);
  v7 = v5;
  v8 = sub_100046D0C();
  v9 = sub_100046FFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100004A8C();
    v11 = sub_100004A74();
    v17 = v11;
    *v10 = 136315138;
    v12 = v7;
    sub_10000ECEC(&qword_10006F138, &qword_10004CCC8);
    v13 = sub_100046E7C();
    v15 = sub_100004EB4(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "SELF: visual context metrics: %s", v10, 0xCu);
    sub_1000050D4(v11);
    sub_100002B44();
    sub_100002B44();
  }

  v16 = v7;
  sub_100015B28(a1, 0x6F69746174636944, 0xE90000000000006ELL, v5, a3);
}

void sub_100015B28(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v11 = sub_100046BBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v24 = sub_100046D1C();
    sub_100005C04(v24, qword_1000714A0);
    v83 = sub_100046D0C();
    v25 = sub_10004700C();
    if (os_log_type_enabled(v83, v25))
    {
      *sub_1000090C8() = 0;
      sub_100016B20(&_mh_execute_header, v26, v27, "topLevelEvent is nil");
      sub_100002B44();
    }

    goto LABEL_21;
  }

  v83 = v5;
  type metadata accessor for SelfLoggingHelper();
  v16 = a4;
  if (sub_100013840(v16, a2, a3))
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v17 = sub_100046D1C();
    sub_100005C04(v17, qword_1000714A0);
    v18 = v16;

    v83 = sub_100046D0C();
    v19 = sub_10004700C();

    if (os_log_type_enabled(v83, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = sub_100004A74();
      v84 = v22;
      *v20 = 138412546;
      *(v20 + 4) = v18;
      *v21 = a4;
      *(v20 + 12) = 2080;
      v23 = v18;
      *(v20 + 14) = sub_100004EB4(a2, a3, &v84);
      _os_log_impl(&_mh_execute_header, v83, v19, "Logging prohibited for event:%@ task:%s", v20, 0x16u);
      sub_100005808(v21, &qword_1000704F0, &qword_10004CF40);
      sub_100002B44();
      sub_1000050D4(v22);
      sub_100002B44();
      sub_100002B44();

      return;
    }

    goto LABEL_21;
  }

  v28 = [objc_allocWithZone(ASRSchemaASRClientEventMetadata) init];
  if (!v28)
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v34 = sub_100046D1C();
    sub_100005C04(v34, qword_1000714A0);
    v83 = sub_100046D0C();
    v35 = sub_10004700C();
    if (os_log_type_enabled(v83, v35))
    {
      *sub_1000090C8() = 0;
      sub_100016B20(&_mh_execute_header, v36, v37, "Failed to create SELF event metadata");
      sub_100002B44();
    }

LABEL_21:
    v38 = v83;

    return;
  }

  v29 = v28;
  sub_1000029E4(0, &unk_10006F120, SISchemaUUID_ptr);
  (*(v12 + 16))(v15, a1, v11);
  v30 = sub_1000138A8(v15);
  [v29 setAsrId:v30];

  v31 = [objc_allocWithZone(ASRSchemaASRClientEvent) init];
  if (v31)
  {
    v32 = v31;
    [v31 setEventMetadata:v29];
    objc_opt_self();
    sub_100005424();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      [v32 setPreheatContext:v33];
    }

    else
    {
      objc_opt_self();
      sub_100005424();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        [v32 setRequestContext:v43];
      }

      else
      {
        objc_opt_self();
        sub_100005424();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          [v32 setPartialResultGenerated:v44];
        }

        else
        {
          objc_opt_self();
          sub_100005424();
          v45 = swift_dynamicCastObjCClass();
          if (v45)
          {
            [v32 setPackageGenerated:v45];
          }

          else
          {
            objc_opt_self();
            sub_100005424();
            v46 = swift_dynamicCastObjCClass();
            if (v46)
            {
              [v32 setRecognitionResultTier1:v46];
            }

            else
            {
              objc_opt_self();
              sub_100005424();
              v47 = swift_dynamicCastObjCClass();
              if (v47)
              {
                [v32 setRescoringDeliberationResultTier1:v47];
              }

              else
              {
                objc_opt_self();
                sub_100005424();
                v48 = swift_dynamicCastObjCClass();
                if (v48)
                {
                  [v32 setFinalResultGenerated:v48];
                }

                else
                {
                  objc_opt_self();
                  sub_100005424();
                  v49 = swift_dynamicCastObjCClass();
                  if (v49)
                  {
                    [v32 setIntermediateUtteranceInfoTier1:v49];
                  }

                  else
                  {
                    objc_opt_self();
                    sub_100005424();
                    v50 = swift_dynamicCastObjCClass();
                    if (v50)
                    {
                      [v32 setInitializationContext:v50];
                    }

                    else
                    {
                      objc_opt_self();
                      sub_100005424();
                      v51 = swift_dynamicCastObjCClass();
                      if (v51)
                      {
                        [v32 setActiveConfigUpdateContext:v51];
                      }

                      else
                      {
                        objc_opt_self();
                        sub_100005424();
                        v52 = swift_dynamicCastObjCClass();
                        if (v52)
                        {
                          [v32 setLanguageModelEnrollmentContext:v52];
                        }

                        else
                        {
                          objc_opt_self();
                          sub_100005424();
                          v53 = swift_dynamicCastObjCClass();
                          if (v53)
                          {
                            [v32 setJitLanguageModelEnrollmentEndedTier1:v53];
                          }

                          else
                          {
                            objc_opt_self();
                            sub_100005424();
                            v54 = swift_dynamicCastObjCClass();
                            if (v54)
                            {
                              [v32 setAudioPacketArrivalContext:v54];
                            }

                            else
                            {
                              objc_opt_self();
                              sub_100005424();
                              v55 = swift_dynamicCastObjCClass();
                              if (v55)
                              {
                                [v32 setFirstAudioPacketProcessed:v55];
                              }

                              else
                              {
                                objc_opt_self();
                                sub_100005424();
                                v56 = swift_dynamicCastObjCClass();
                                if (v56)
                                {
                                  [v32 setFinalAudioPacketContainingSpeechReceived:v56];
                                }

                                else
                                {
                                  objc_opt_self();
                                  sub_100005424();
                                  v57 = swift_dynamicCastObjCClass();
                                  if (v57)
                                  {
                                    [v32 setEmbeddedSpeechProcessContext:v57];
                                  }

                                  else
                                  {
                                    objc_opt_self();
                                    sub_100005424();
                                    v58 = swift_dynamicCastObjCClass();
                                    if (v58)
                                    {
                                      [v32 setAppleNeuralEngineModelInitializationContext:v58];
                                    }

                                    else
                                    {
                                      objc_opt_self();
                                      sub_100005424();
                                      v59 = swift_dynamicCastObjCClass();
                                      if (v59)
                                      {
                                        [v32 setFrameProcessingReady:v59];
                                      }

                                      else
                                      {
                                        objc_opt_self();
                                        sub_100005424();
                                        v60 = swift_dynamicCastObjCClass();
                                        if (v60)
                                        {
                                          [v32 setAudioSpeechPacketFirstSecondAfterFirstSpeechPacketArrived:v60];
                                        }

                                        else
                                        {
                                          objc_opt_self();
                                          sub_100005424();
                                          v61 = swift_dynamicCastObjCClass();
                                          if (v61)
                                          {
                                            [v32 setAudioSpeechPacketArrivalContext:v61];
                                          }

                                          else
                                          {
                                            objc_opt_self();
                                            sub_100005424();
                                            v62 = swift_dynamicCastObjCClass();
                                            if (v62)
                                            {
                                              [v32 setLeadingSilenceProcessed:v62];
                                            }

                                            else
                                            {
                                              objc_opt_self();
                                              sub_100005424();
                                              v63 = swift_dynamicCastObjCClass();
                                              if (v63)
                                              {
                                                [v32 setFirstSecondAfterLeadingSilenceProcessed:v63];
                                              }

                                              else
                                              {
                                                objc_opt_self();
                                                sub_100005424();
                                                v64 = swift_dynamicCastObjCClass();
                                                if (v64)
                                                {
                                                  [v32 setFirstAudioPacketRecorded:v64];
                                                }

                                                else
                                                {
                                                  objc_opt_self();
                                                  sub_100005424();
                                                  v65 = swift_dynamicCastObjCClass();
                                                  if (v65)
                                                  {
                                                    [v32 setAudioPacketContainingEndOfFirstWordReadyUpstream:v65];
                                                  }

                                                  else
                                                  {
                                                    objc_opt_self();
                                                    sub_100005424();
                                                    v66 = swift_dynamicCastObjCClass();
                                                    if (v66)
                                                    {
                                                      [v32 setFirstAudioPacketReadyUpstream:v66];
                                                    }

                                                    else
                                                    {
                                                      objc_opt_self();
                                                      sub_100005424();
                                                      v67 = swift_dynamicCastObjCClass();
                                                      if (v67)
                                                      {
                                                        [v32 setFinalAudioPacketContainingSpeechReadyUpstream:v67];
                                                      }

                                                      else
                                                      {
                                                        objc_opt_self();
                                                        sub_100005424();
                                                        v68 = swift_dynamicCastObjCClass();
                                                        if (v68)
                                                        {
                                                          [v32 setDictationVoiceCommandMetricsReported:v68];
                                                        }

                                                        else
                                                        {
                                                          objc_opt_self();
                                                          sub_100005424();
                                                          v69 = swift_dynamicCastObjCClass();
                                                          if (v69)
                                                          {
                                                            [v32 setDictationVoiceCommandInfoTier1:v69];
                                                          }

                                                          else
                                                          {
                                                            objc_opt_self();
                                                            sub_100005424();
                                                            v70 = swift_dynamicCastObjCClass();
                                                            if (v70)
                                                            {
                                                              [v32 setPersonalizationUserEditNamedEntityMetrics:v70];
                                                            }

                                                            else
                                                            {
                                                              if (qword_10006DD38 != -1)
                                                              {
                                                                sub_100004E54();
                                                                swift_once();
                                                              }

                                                              v79 = sub_100046D1C();
                                                              sub_100005C04(v79, qword_1000714A0);
                                                              v80 = sub_100046D0C();
                                                              v81 = sub_10004700C();
                                                              if (os_log_type_enabled(v80, v81))
                                                              {
                                                                v82 = sub_1000090C8();
                                                                *v82 = 0;
                                                                _os_log_impl(&_mh_execute_header, v80, v81, "SELF: Failed trying to wrap and emit top-level ASR event because event type was not mapped to loggable message type in the ASR SELF schema.", v82, 2u);
                                                                sub_100002B44();
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v71 = sub_100046D1C();
    sub_100005C04(v71, qword_1000714A0);
    v72 = v16;
    v73 = sub_100046D0C();
    v74 = sub_100046FFC();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = sub_100004A8C();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      *(v75 + 4) = v72;
      *v76 = a4;
      v77 = v72;
      _os_log_impl(&_mh_execute_header, v73, v74, "SELF: Wrapping and logging an event of type %@", v75, 0xCu);
      sub_100005808(v76, &qword_1000704F0, &qword_10004CF40);
      sub_100002B44();
      sub_100002B44();
    }

    isa = v83[2].isa;
    if (a5)
    {
      [(objc_class *)isa emitMessage:v32 timestamp:sub_10001664C(a5)];
    }

    else
    {
      [(objc_class *)isa emitMessage:v32];
    }
  }

  else
  {
    if (qword_10006DD38 != -1)
    {
      sub_100004E54();
      swift_once();
    }

    v39 = sub_100046D1C();
    sub_100005C04(v39, qword_1000714A0);
    v40 = sub_100046D0C();
    v41 = sub_10004700C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = sub_1000090C8();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create SELF event", v42, 2u);
      sub_100002B44();
    }
  }
}