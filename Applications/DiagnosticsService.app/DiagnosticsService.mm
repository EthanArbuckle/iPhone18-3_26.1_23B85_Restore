uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = UIApplicationMain(a1, a2, 0, 0);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t sub_1000010DC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration;
  *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration) = 0x4008000000000000;
  v6 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey);
  v5 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8);
  if (*(a1 + 16) && (v7 = sub_100001B80(*(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey), *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8)), (v8 & 1) != 0) && (sub_1000020E4(*(a1 + 56) + 32 * v7, v66), (swift_dynamicCast() & 1) != 0) && (v65 >= 1.0 ? (v9 = v65 > 10.0) : (v9 = 1), !v9))
  {
    *(v1 + v4) = v65;
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_100001BF8(&qword_100008768, &qword_1000025C8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100002580;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100001C40();
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    sub_100001C94();

    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    if (!*(a1 + 16))
    {
LABEL_15:
      v14 = sub_100001FD0(&_swiftEmptyArrayStorage);
      goto LABEL_16;
    }
  }

  v12 = sub_100001B80(*(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey + 8));
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1000020E4(*(a1 + 56) + 32 * v12, v66);
  sub_100001BF8(&qword_100008790, &qword_1000025E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *&v65;
  if (!*(*&v65 + 16))
  {

    goto LABEL_15;
  }

LABEL_16:
  v15 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringProperties);
  *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringProperties) = v14;

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_45;
  }

  v18 = sub_100001B80(*(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8));
  if ((v19 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_1000020E4(*(a1 + 56) + 32 * v18, v66);
  sub_100001BF8(&qword_100008780, &qword_1000025D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (!*(*&v65 + 16))
  {

LABEL_45:
    static os_log_type_t.fault.getter();
LABEL_46:
    sub_100001BF8(&qword_100008768, &qword_1000025C8);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100002580;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100001C40();
    *(v41 + 32) = v17;
    *(v41 + 40) = v16;
    sub_100001C94();

    v42 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v20 = sub_100001B80(*(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8));
  if ((v21 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_1000020E4(*(a1 + 56) + 32 * v20, v66);
  sub_100001BF8(&qword_100008788, &qword_1000025D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!*(*&v65 + 16))
  {

LABEL_48:

    static os_log_type_t.error.getter();
    goto LABEL_46;
  }

  v64 = *(*&v65 + 16);
  if (v64)
  {
    v22 = 0;
    v23 = &_swiftEmptyArrayStorage;
    while (2)
    {
      if (v22 >= *(*&v65 + 16))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v24 = *(*&v65 + 32 + 8 * v22++);
      v25 = 1 << *(*&v65 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(*&v65 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      if (!v27)
      {
        goto LABEL_34;
      }

      do
      {
LABEL_32:
        while (1)
        {
          v30 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v31 = v30 | (v29 << 6);
          if (*(*(*&v65 + 56) + 8 * v31) == v24)
          {
            break;
          }

          if (!v27)
          {
            goto LABEL_34;
          }
        }

        v33 = (*(*&v65 + 48) + 16 * v31);
        v62 = *v33;
        v63 = v33[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_100001D98(0, *(v23 + 2) + 1, 1, v23);
        }

        v34 = v23;
        v35 = *(v23 + 2);
        v36 = v34;
        v37 = *(v34 + 3);
        v38 = v35 + 1;
        if (v35 >= v37 >> 1)
        {
          v40 = sub_100001D98((v37 > 1), v35 + 1, 1, v36);
          v38 = v35 + 1;
          v36 = v40;
        }

        *(v36 + 2) = v38;
        v39 = &v36[16 * v35];
        v23 = v36;
        *(v39 + 4) = v62;
        *(v39 + 5) = v63;
      }

      while (v27);
      while (1)
      {
LABEL_34:
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v32 >= v28)
        {
          break;
        }

        v27 = *(*&v65 + 64 + 8 * v32);
        ++v29;
        if (v27)
        {
          v29 = v32;
          goto LABEL_32;
        }
      }

      if (v22 != v64)
      {
        continue;
      }

      break;
    }
  }

  else
  {

    v23 = &_swiftEmptyArrayStorage;
  }

  if (qword_100008680 != -1)
  {
LABEL_67:
    swift_once();
  }

  v44 = qword_100008918;
  v45 = *(v23 + 2);
  if (v45)
  {
    v66[0] = &_swiftEmptyArrayStorage;
    sub_100001EA4(0, v45, 0);
    v46 = v66[0];
    v47 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping);
    v48 = (v23 + 40);
    do
    {
      v49 = *v48;
      if (*(v47 + 16))
      {
        v50 = *(v48 - 1);
        v51 = *v48;

        v52 = sub_100001B80(v50, v49);
        if (v53)
        {
          v54 = (*(v47 + 56) + 16 * v52);
          v55 = *v54;
          v56 = v54[1];
        }

        else
        {
          v55 = 0;
          v56 = 0xE000000000000000;
        }
      }

      else
      {
        v55 = 0;
        v56 = 0xE000000000000000;
        v57 = *v48;
      }

      v66[0] = v46;
      v59 = v46[2];
      v58 = v46[3];
      if (v59 >= v58 >> 1)
      {
        sub_100001EA4((v58 > 1), v59 + 1, 1);
        v46 = v66[0];
      }

      v46[2] = v59 + 1;
      v60 = &v46[2 * v59];
      *(v60 + 4) = v55;
      *(v60 + 5) = v56;
      v48 += 2;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = &_swiftEmptyArrayStorage;
  }

  v61 = *(v44 + 32);
  *(v44 + 32) = v46;

  return 1;
}

uint64_t sub_100001844(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;

  return 1;
}

id sub_1000018A8()
{
  *&v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_stringProperties] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequence] = &_swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey];
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000100002810;
  v2 = &v0[OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000100002830;
  v3 = &v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey];
  *v3 = 0x65636E6575716573;
  *(v3 + 1) = 0xE800000000000000;
  v4 = &v0[OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey];
  *v4 = 0x6D6F437475706E69;
  *(v4 + 1) = 0xEF73746E656E6F70;
  v5 = OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping;
  v6 = sub_100001FD0(&off_1000041E0);
  sub_100001BF8(&qword_1000087A8, qword_1000025F8);
  swift_arrayDestroy();
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_predicates] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_parameters] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_specifications] = &_swiftEmptyDictionarySingleton;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_100001A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100001B80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100001CE0(a1, a2, v6);
}

uint64_t sub_100001BF8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001C40()
{
  result = qword_100008770;
  if (!qword_100008770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008770);
  }

  return result;
}

unint64_t sub_100001C94()
{
  result = qword_100008778;
  if (!qword_100008778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008778);
  }

  return result;
}

unint64_t sub_100001CE0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_100001D98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001BF8(&qword_100008798, &qword_1000025E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100001EA4(char *a1, int64_t a2, char a3)
{
  result = sub_100001EC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100001EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001BF8(&qword_100008798, &qword_1000025E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100001FD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001BF8(&qword_1000087A0, &qword_1000025F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100001B80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000020E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100002144()
{
  type metadata accessor for MicrophoneTestSharedData();
  result = swift_allocObject();
  result[2] = 0x4008000000000000;
  result[3] = 100;
  result[4] = &_swiftEmptyArrayStorage;
  result[5] = 0;
  qword_100008918 = result;
  return result;
}

uint64_t sub_100002188()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocClassInstance(v0, 48, 7);
}