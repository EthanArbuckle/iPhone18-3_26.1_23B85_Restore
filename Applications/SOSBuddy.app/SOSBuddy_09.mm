uint64_t sub_1000C4D4C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C4DC0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C4DD8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C4DF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_1000C4E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000C4ED0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5, unint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  LODWORD(v10) = a8;
  v101 = a6;
  v102 = a1;
  v103 = a4;
  v104 = a3;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v99 = a7;
    v100 = a5;
    if (qword_100353AA8 == -1)
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
  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381E48);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v98 = v10;
    v10 = v22;
    v106 = swift_slowAlloc();
    *v10 = 136446466;
    v23 = sub_1000B9A7C();
    v25 = sub_10017C9E8(v23, v24, &v106);

    *(v10 + 4) = v25;
    *(v10 + 12) = 2082;
    v26 = v102;
    *(v10 + 14) = sub_10017C9E8(v102, a2, &v106);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] consumeCompressionResult: for token %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    LOBYTE(v10) = v98;
  }

  else
  {

    v26 = v102;
  }

  v27 = v103;
  swift_beginAccess();
  sub_100006C20(v9 + 152, &v106, &qword_10035C098);
  if (!v107)
  {
    sub_100008FA0(&v106, &qword_10035C098);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v106 = v53;
      *v52 = 136446210;
      v54 = sub_1000B9A7C();
      v56 = sub_10017C9E8(v54, v55, &v106);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%{public}s] consumeCompressionResult: send is not in progress", v52, 0xCu);
      sub_100008964(v53);
    }

    return;
  }

  sub_1000C60B0(&v106, v110);
  if ((v110[0] != v26 || v110[1] != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v57 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v69))
    {
      v70 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *v70 = 136446466;
      v71 = sub_1000B9A7C();
      v73 = sub_10017C9E8(v71, v72, &v106);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_10017C9E8(v102, a2, &v106);
      _os_log_impl(&_mh_execute_header, v57, v69, "[%{public}s] consumeCompressionResult: for expired send token %{public}s", v70, 0x16u);
      swift_arrayDestroy();

LABEL_53:

      goto LABEL_54;
    }

    goto LABEL_54;
  }

  if (!v111 || (v110[5] != v104 || v111 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v106 = v31;
      *v30 = 136446210;
      v32 = sub_1000B9A7C();
      v34 = sub_10017C9E8(v32, v33, &v106);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%{public}s] consumeCompressionResult: original data in the compression result != waitingForCompressionForText", v30, 0xCu);
      sub_100008964(v31);

      v27 = v103;
    }
  }

  if ((sub_10006E374(v104, v27, v110[4]) & 1) == 0)
  {

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v106 = v60;
      *v59 = 136446210;
      v61 = sub_1000B9A7C();
      v63 = sub_10017C9E8(v61, v62, &v106);

      *(v59 + 4) = v63;
      v64 = "[%{public}s] consumeCompressionResult: received compression result is not for a string in textsToCompress set, ignoring";
      v65 = v58;
      v66 = v57;
      v67 = v59;
      v68 = 12;
LABEL_52:
      _os_log_impl(&_mh_execute_header, v66, v65, v64, v67, v68);
      sub_100008964(v60);

      goto LABEL_53;
    }

LABEL_54:

    sub_1000C60E8(v110);
    return;
  }

  swift_bridgeObjectRetain_n();

  v36 = v100;
  v35 = v101;
  v37 = v99;
  sub_1000C6ACC(v100, v101, v99, v10);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  sub_1000C6AE0(v36, v35, v37, v10);
  if (!os_log_type_enabled(v38, v39))
  {

    swift_bridgeObjectRelease_n();
    v49 = v27;
    if (!*(v9 + 32))
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  LODWORD(v102) = v39;
  v40 = swift_slowAlloc();
  v105 = swift_slowAlloc();
  *v40 = 136446722;
  v41 = sub_1000B9A7C();
  v43 = sub_10017C9E8(v41, v42, &v105);

  *(v40 + 4) = v43;
  *(v40 + 12) = 2050;
  v44 = String.count.getter();

  *(v40 + 14) = v44;

  *(v40 + 22) = 2082;
  if (v10 == 2)
  {
    goto LABEL_20;
  }

  v86 = v101 >> 62;
  if ((v101 >> 62) > 1)
  {
    if (v86 != 2)
    {
LABEL_20:
      v45 = 0;
      goto LABEL_21;
    }

    v95 = *(v100 + 16);
    v94 = *(v100 + 24);
    v96 = __OFSUB__(v94, v95);
    v45 = v94 - v95;
    if (!v96)
    {
LABEL_21:
      v106 = v45;
      LOBYTE(v107) = v10 == 2;
      sub_1000040A8(&qword_100356CC0);
      v46 = String.init<A>(describing:)();
      v48 = sub_10017C9E8(v46, v47, &v105);

      *(v40 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v38, v102, "[%{public}s] consumeCompressionResult: text size - %{public}ld, compressed size - %{public}s", v40, 0x20u);
      swift_arrayDestroy();

      v49 = v103;
      if (!*(v9 + 32))
      {
LABEL_22:
        sub_1000040A8(&unk_100365610);
        sub_100009274(&qword_10035CF00, &unk_100365610);
        Subject<>.send()();
LABEL_32:
        v74 = sub_1000B9A08();
        if (*(v75 + 112))
        {
          sub_100222434(v104, v49);
        }

        (v74)(&v106, 0);
        v77 = sub_1000B9A08();
        if (v76[14])
        {
          v76[18] = 0;
          v76[19] = 0;
        }

        (v77)(&v106, 0);
        if (v10 != 2)
        {
          v78 = v100;
          v79 = v101;
          sub_10000F480(v100, v101);
          v81 = sub_1000B9A08();
          if (*(v80 + 112))
          {
            v82 = v80;
            v103 = v81;

            v83 = v49;
            v84 = v99;
            sub_1000C6ACC(v78, v79, v99, v10);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = *(v82 + 160);
            *(v82 + 160) = 0x8000000000000000;
            sub_100189324(v78, v79, v84, v10 & 1, v104, v83, isUniquelyReferenced_nonNull_native);

            *(v82 + 160) = v105;
            (v103)(&v106, 0);
          }

          else
          {
            (v81)(&v106, 0);
            v84 = v99;
          }

          sub_1000C6AE0(v78, v79, v84, v10);
        }

        if (*(v9 + 32))
        {
          *(v9 + 41) = 1;
        }

        else
        {
          sub_1000040A8(&unk_100365610);
          sub_100009274(&qword_10035CF00, &unk_100365610);
          Subject<>.send()();
        }

        sub_10003F3D8(v9 + 48, &v106);
        if (v108)
        {
          v87 = v109;

          sub_10003F434(&v106);
          v88 = *(v87 + 16);
        }

        else
        {
          sub_10003F434(&v106);
          v88 = -1;
        }

        v57 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v57, v89))
        {
          goto LABEL_54;
        }

        v90 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v106 = v60;
        *v90 = 136446466;
        v91 = sub_1000B9A7C();
        v93 = sub_10017C9E8(v91, v92, &v106);

        *(v90 + 4) = v93;
        *(v90 + 12) = 2050;
        *(v90 + 14) = v88;
        v64 = "[%{public}s] consumeCompressionResult: texts awaiting compression - %{public}ld";
        v65 = v89;
        v66 = v57;
        v67 = v90;
        v68 = 22;
        goto LABEL_52;
      }

LABEL_31:
      *(v9 + 40) = 1;
      goto LABEL_32;
    }

    __break(1u);
  }

  else if (!v86)
  {
    v45 = BYTE6(v101);
    goto LABEL_21;
  }

  LODWORD(v45) = HIDWORD(v100) - v100;
  if (!__OFSUB__(HIDWORD(v100), v100))
  {
    v45 = v45;
    goto LABEL_21;
  }

  __break(1u);
}

uint64_t sub_1000C5B88(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)())
{
  v42 = a3;
  v43 = a8;
  v44 = a4;
  v40 = a1;
  v41 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = v14;
    v36 = v16;
    v34 = a9;
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v37 = v15;
    v38 = v12;
    v39 = v11;
    v20 = type metadata accessor for Logger();
    sub_10000F53C(v20, qword_100381E48);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = sub_1000B9A7C();
      v26 = sub_10017C9E8(v24, v25, aBlock);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      *(v23 + 14) = sub_10017C9E8(a6, a7, aBlock);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Received questionnaire text compression result for token %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    sub_1000C4ED0(a6, a7, v43, v34, v40, v41, v42, v44);
    sub_10000F574();
    v27 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = a6;
    v29[4] = a7;
    aBlock[4] = sub_1000C6AAC;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_10032DA50;
    v30 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100071864();
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v31 = v35;
    v32 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v38 + 8))(v31, v32);
    return (*(v36 + 8))(v18, v37);
  }

  return result;
}

uint64_t sub_1000C603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000C2AD0(a2, a3);
  }

  return result;
}

uint64_t sub_1000C6150@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1000C6BE4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1000C6218(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_10000F4E8(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10000F4E8(v6, v5);
    *v3 = xmmword_100281A20;
    sub_10000F4E8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v13 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1000C66BC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_10000F4E8(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100281A20;
    sub_10000F4E8(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_1000C66BC(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_1000C65BC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1000C6BE4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000C6D3C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000C6DB8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1000C6650(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000C66BC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1000C6770(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000C67C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10019CFEC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1000C6854()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v1 < 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_10019CFEC(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C68B8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C6908(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000FC7C4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000C69A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C69DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C69F4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C6A6C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C6ACC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 2)
  {
    return sub_10000F480(a1, a2);
  }

  return a1;
}

uint64_t sub_1000C6AE0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 2)
  {
    return sub_10000F4E8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000C6AF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000C6B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035C098);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C6B70(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000C6E90();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1000FCB70(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000C6BE4(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000C6C9C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000C6D3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000C6DB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000C6E90()
{
  result = qword_10035C0A8;
  if (!qword_10035C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C0A8);
  }

  return result;
}

void *sub_1000C6EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1000C6650(sub_1000C6F4C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000C6F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040A8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C6FE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000C70B0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000C70F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000C7154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_1000C719C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C7214()
{
  result = qword_10035C0E0;
  if (!qword_10035C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C0E0);
  }

  return result;
}

uint64_t sub_1000C72F4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_1000040A8(&qword_10035C0E8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v33 - v6;
  v38 = sub_1000040A8(&qword_10035C0F0);
  __chkstk_darwin(v38);
  v37 = &v33 - v7;
  v36 = static HorizontalAlignment.center.getter();
  v47 = 0;
  sub_1000C7758(v1, &v42);
  v50 = v44;
  v51[0] = v45[0];
  *(v51 + 12) = *(v45 + 12);
  v48 = v42;
  v49 = v43;
  v52[2] = v44;
  v53[0] = v45[0];
  *(v53 + 12) = *(v45 + 12);
  v52[0] = v42;
  v52[1] = v43;
  sub_100006C20(&v48, &v41, &qword_10035C0F8);
  sub_100008FA0(v52, &qword_10035C0F8);
  *&v46[23] = v49;
  *&v46[39] = v50;
  *&v46[55] = v51[0];
  *&v46[67] = *(v51 + 12);
  *&v46[7] = v48;
  v8 = *v1;
  if (*v1)
  {
    v35 = v47;
    v9 = v8[9];
    v10 = v8[10];
    sub_1000088DC(v8 + 6, v9);
    v11 = *(v1 + 32);
    v42 = *(v1 + 16);
    v43 = v11;
    *&v44 = *(v1 + 48);
    v12 = *(v10 + 192);

    v13 = v12(&v42, v9, v10);
    v33 = v14;
    v34 = v13;
    v15 = &v4[*(v2 + 36)];
    v16 = &v15[*(sub_1000040A8(&qword_10035B5A8) + 36)];
    v17 = sub_1000040A8(&qword_10035B5B8);
    v18 = *(v17 + 36);

    v20 = v8[9];
    v19 = v8[10];
    sub_1000088DC(v8 + 6, v20);
    (*(v19 + 120))(&v42, v20, v19);
    v21 = type metadata accessor for ToolbarItemPlacement();
    (*(*(v21 - 8) + 56))(&v16[v18], 0, 1, v21);
    *v16 = 1;
    v22 = &v16[*(v17 + 40)];
    *v22 = sub_1000C8334;
    v22[1] = 0;
    v23 = v33;
    *v15 = v34;
    *(v15 + 1) = v23;
    v24 = *&v46[48];
    *(v4 + 49) = *&v46[32];
    *(v4 + 65) = v24;
    *(v4 + 81) = *&v46[64];
    v25 = *&v46[16];
    *(v4 + 17) = *v46;
    *v4 = v36;
    *(v4 + 1) = 0;
    v4[16] = v35;
    *(v4 + 24) = *&v46[79];
    *(v4 + 33) = v25;
    v26 = v39;
    sub_10000CF4C(v4, v39, &qword_10035C0E8);
    v27 = v42;
    type metadata accessor for QuestionnaireState();
    sub_1000C8E80(&qword_100354D50, type metadata accessor for QuestionnaireState);
    v28 = static ObservableObject.environmentStore.getter();
    v29 = v26;
    v30 = v37;
    sub_10000CF4C(v29, v37, &qword_10035C0E8);
    v31 = (v30 + *(v38 + 36));
    *v31 = v28;
    v31[1] = v27;
    sub_10000CF4C(v30, v40, &qword_10035C0F0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000C8E80(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_1000C7758@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v3 <= 1)
  {
    if (!*(a1 + 24))
    {

      sub_1000C70B0(v4);
      type metadata accessor for UIMetrics();
      sub_1000C8E80(&qword_100354D40, type metadata accessor for UIMetrics);
      EnvironmentObject.init()();
      v50 = 0;

      sub_1000C70B0(v4);
      sub_1000040A8(&qword_10035C130);
      sub_1000C8A90();
      sub_1000C8AE4();
      _ConditionalContent<>.init(storage:)();
      v51 = 0;
      sub_1000040A8(&qword_10035C118);
      sub_1000040A8(&qword_10035C150);
      sub_1000C8A04();
      sub_1000C8C18();
      _ConditionalContent<>.init(storage:)();
      v58 = v47;
      *v59 = *v48;
      *&v59[11] = *&v48[11];
      v56 = v45;
      v57 = v46;
      LOBYTE(v41) = 0;
      v59[27] = 0;
      sub_1000040A8(&qword_10035C100);
      sub_1000C8978();
      sub_1000C8DD8();
      _ConditionalContent<>.init(storage:)();

      sub_1000C70F4(v4);
      goto LABEL_17;
    }

    if (*(*(*(a1 + 16) + 344) + 32))
    {
      type metadata accessor for AppEvents();
      sub_1000C8E80(&qword_100354D48, type metadata accessor for AppEvents);
      v21 = EnvironmentObject.init()();
      v23 = v22;
      type metadata accessor for RoadsideAssistanceModel();
      sub_1000C8E80(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      v24 = EnvironmentObject.init()();
      v26 = v25;
      type metadata accessor for UIMetrics();
      sub_1000C8E80(&qword_100354D40, type metadata accessor for UIMetrics);
      LOBYTE(v52) = 1;
      *&v56 = v21;
      *(&v56 + 1) = v23;
      v57.n128_u64[0] = v24;
      v57.n128_u64[1] = v26;
      *&v58 = EnvironmentObject.init()();
      *(&v58 + 1) = v27;
      v59[16] = 1;
    }

    else
    {
      type metadata accessor for AppEvents();
      sub_1000C8E80(&qword_100354D48, type metadata accessor for AppEvents);
      v28 = EnvironmentObject.init()();
      v30 = v29;
      type metadata accessor for BluetoothModel();
      sub_1000C8E80(&qword_100357BF8, type metadata accessor for BluetoothModel);
      v31 = EnvironmentObject.init()();
      v33 = v32;
      type metadata accessor for EmergencyModel();
      sub_1000C8E80(&qword_100356B60, type metadata accessor for EmergencyModel);
      v34 = EnvironmentObject.init()();
      v36 = v35;
      type metadata accessor for UIMetrics();
      sub_1000C8E80(&qword_100354D40, type metadata accessor for UIMetrics);
      LOBYTE(v52) = 0;
      *&v56 = v28;
      *(&v56 + 1) = v30;
      v57.n128_u64[0] = v31;
      v57.n128_u64[1] = v33;
      *&v58 = v34;
      *(&v58 + 1) = v36;
      *v59 = EnvironmentObject.init()();
      *&v59[8] = v37;
      v59[16] = 0;
    }

    sub_1000C8B70();
    sub_1000C8BC4();
    _ConditionalContent<>.init(storage:)();
    v58 = v43;
    *v59 = *v44;
    v59[16] = v44[16];
    v56 = v41;
    v57 = v42;
    v49 = 1;
    v59[17] = 1;
    v38 = &qword_10035C130;
    sub_100006C20(&v41, &v52, &qword_10035C130);
    sub_1000040A8(&qword_10035C130);
    sub_1000C8A90();
    sub_1000C8AE4();
    _ConditionalContent<>.init(storage:)();
    v58 = v54;
    *v59 = *v55;
    *&v59[16] = *&v55[16];
    v56 = v52;
    v57 = v53;
    v50 = 0;
    v59[26] = 0;
LABEL_16:
    sub_1000040A8(&qword_10035C118);
    sub_1000040A8(&qword_10035C150);
    sub_1000C8A04();
    sub_1000C8C18();
    _ConditionalContent<>.init(storage:)();
    v58 = v47;
    *v59 = *v48;
    *&v59[11] = *&v48[11];
    v56 = v45;
    v57 = v46;
    v51 = 0;
    v59[27] = 0;
    sub_1000040A8(&qword_10035C100);
    sub_1000C8978();
    sub_1000C8DD8();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v41, v38);
    goto LABEL_17;
  }

  if (v3 == 2)
  {
    if (v4)
    {
      sub_1000C70B0(*(a1 + 32));
      type metadata accessor for AppEvents();
      sub_1000C8E80(&qword_100354D48, type metadata accessor for AppEvents);

      v7 = EnvironmentObject.init()();
      v9 = v8;
      type metadata accessor for UIMetrics();
      sub_1000C8E80(&qword_100354D40, type metadata accessor for UIMetrics);
      v10 = EnvironmentObject.init()();
      v12 = v11;
      type metadata accessor for QuestionnaireState();
      sub_1000C8E80(&qword_100354D50, type metadata accessor for QuestionnaireState);
      *&v45 = v7;
      *(&v45 + 1) = v9;
      v46.n128_u64[0] = v10;
      v46.n128_u64[1] = v12;
      *&v47 = EnvironmentObject.init()();
      *(&v47 + 1) = v13;
      *v48 = v4;
      *&v48[8] = v5;
      *&v48[16] = v6;
      v54 = v47;
      *v55 = *v48;
      *&v55[16] = v6;
      v52 = v45;
      v53 = v46;
      v51 = 0;
      v55[24] = 0;
      sub_10000892C(&v45, &v56);
      sub_1000C8D30();
      _ConditionalContent<>.init(storage:)();

      sub_1000C8E2C(&v45);
      v43 = v58;
      *v44 = *v59;
      *&v44[9] = *&v59[9];
      v41 = v56;
      v42 = v57;
    }

    else
    {
      LOBYTE(v52) = 1;
      v59[24] = 1;
      sub_1000C8D30();
      _ConditionalContent<>.init(storage:)();
    }

    v58 = v43;
    *v59 = *v44;
    *&v59[9] = *&v44[9];
    v56 = v41;
    v57 = v42;
    v49 = 0;
    v59[25] = 0;
    v38 = &qword_10035C160;
    sub_100006C20(&v41, &v52, &qword_10035C160);
    sub_1000040A8(&qword_10035C160);
    sub_1000C8CA4();
    sub_1000C8D84();
    _ConditionalContent<>.init(storage:)();
    v58 = v54;
    *v59 = *v55;
    *&v59[10] = *&v55[10];
    v56 = v52;
    v57 = v53;
    v50 = 1;
    v59[26] = 1;
    goto LABEL_16;
  }

  if (v3 == 3)
  {
    sub_10003F070(&v41);
    v58 = v43;
    *v59 = *v44;
    *&v59[16] = *&v44[16];
    v56 = v41;
    v57 = v42;
    v49 = 1;
    v59[25] = 1;
    sub_10003F398(&v41, &v52);
    sub_1000040A8(&qword_10035C160);
    sub_1000C8CA4();
    sub_1000C8D84();
    _ConditionalContent<>.init(storage:)();
    v58 = v54;
    *v59 = *v55;
    *&v59[10] = *&v55[10];
    v56 = v52;
    v57 = v53;
    v50 = 1;
    v59[26] = 1;
    sub_1000040A8(&qword_10035C118);
    sub_1000040A8(&qword_10035C150);
    sub_1000C8A04();
    sub_1000C8C18();
    _ConditionalContent<>.init(storage:)();
    v58 = v47;
    *v59 = *v48;
    *&v59[11] = *&v48[11];
    v56 = v45;
    v57 = v46;
    v51 = 0;
    v59[27] = 0;
    sub_1000040A8(&qword_10035C100);
    sub_1000C8978();
    sub_1000C8DD8();
    _ConditionalContent<>.init(storage:)();
    sub_10003F6D0(&v41);
LABEL_17:
    v58 = v54;
    *v59 = *v55;
    *&v59[12] = *&v55[12];
    v56 = v52;
    v57 = v53;
    goto LABEL_18;
  }

  type metadata accessor for AppEvents();
  sub_1000C8E80(&qword_100354D48, type metadata accessor for AppEvents);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  type metadata accessor for ConnectionModel(0);
  sub_1000C8E80(&qword_100354F88, type metadata accessor for ConnectionModel);
  v17 = EnvironmentObject.init()();
  v19 = v18;
  type metadata accessor for QuestionnaireState();
  sub_1000C8E80(&qword_100354D50, type metadata accessor for QuestionnaireState);
  LOBYTE(v45) = 1;
  *&v52 = v14;
  *(&v52 + 1) = v16;
  v53.n128_u64[0] = v17;
  v53.n128_u64[1] = v19;
  *&v54 = EnvironmentObject.init()();
  *(&v54 + 1) = v20;
  v55[27] = 1;
  sub_1000040A8(&qword_10035C100);
  sub_1000C8978();
  sub_1000C8DD8();
  _ConditionalContent<>.init(storage:)();
LABEL_18:
  v39 = *v59;
  *(a2 + 32) = v58;
  *(a2 + 48) = v39;
  *(a2 + 60) = *&v59[12];
  result = v57;
  *a2 = v56;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1000C8334@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1000C8E80(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_1000C8E80(&qword_1003561B8, type metadata accessor for StewieModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1000C84A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100354FA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  ProgressView<>.init<>()();
  CircularProgressViewStyle.init()();
  sub_100009274(&qword_100355088, &qword_100354FA0);
  sub_1000C8E80(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
  View.progressViewStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v10 = (a1 + *(sub_1000040A8(&qword_100354FA8) + 36));
  v11 = *(sub_1000040A8(&qword_1003550A0) + 28);
  v12 = enum case for ControlSize.regular(_:);
  v13 = type metadata accessor for ControlSize();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v14 = [objc_opt_self() labelColor];
  v15 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v20[1] = v15;
  v17 = AnyShapeStyle.init<A>(_:)();
  result = sub_1000040A8(&qword_100357C88);
  v19 = (a1 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  return result;
}

uint64_t sub_1000C87FC(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.controlSize.setter();
}

uint64_t sub_1000C88C8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C88F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000C8978()
{
  result = qword_10035C108;
  if (!qword_10035C108)
  {
    sub_100008CF0(&qword_10035C100);
    sub_1000C8A04();
    sub_1000C8C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C108);
  }

  return result;
}

unint64_t sub_1000C8A04()
{
  result = qword_10035C110;
  if (!qword_10035C110)
  {
    sub_100008CF0(&qword_10035C118);
    sub_1000C8A90();
    sub_1000C8AE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C110);
  }

  return result;
}

unint64_t sub_1000C8A90()
{
  result = qword_10035C120;
  if (!qword_10035C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C120);
  }

  return result;
}

unint64_t sub_1000C8AE4()
{
  result = qword_10035C128;
  if (!qword_10035C128)
  {
    sub_100008CF0(&qword_10035C130);
    sub_1000C8B70();
    sub_1000C8BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C128);
  }

  return result;
}

unint64_t sub_1000C8B70()
{
  result = qword_10035C138;
  if (!qword_10035C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C138);
  }

  return result;
}

unint64_t sub_1000C8BC4()
{
  result = qword_10035C140;
  if (!qword_10035C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C140);
  }

  return result;
}

unint64_t sub_1000C8C18()
{
  result = qword_10035C148;
  if (!qword_10035C148)
  {
    sub_100008CF0(&qword_10035C150);
    sub_1000C8CA4();
    sub_1000C8D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C148);
  }

  return result;
}

unint64_t sub_1000C8CA4()
{
  result = qword_10035C158;
  if (!qword_10035C158)
  {
    sub_100008CF0(&qword_10035C160);
    sub_1000C8D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C158);
  }

  return result;
}

unint64_t sub_1000C8D30()
{
  result = qword_10035C168;
  if (!qword_10035C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C168);
  }

  return result;
}

unint64_t sub_1000C8D84()
{
  result = qword_10035C170;
  if (!qword_10035C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C170);
  }

  return result;
}

unint64_t sub_1000C8DD8()
{
  result = qword_10035C178;
  if (!qword_10035C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C178);
  }

  return result;
}

uint64_t sub_1000C8E80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C8ECC()
{
  result = qword_10035C180;
  if (!qword_10035C180)
  {
    sub_100008CF0(&qword_100357C88);
    sub_10000C7B8();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C180);
  }

  return result;
}

unint64_t sub_1000C8F88()
{
  result = qword_10035C188;
  if (!qword_10035C188)
  {
    sub_100008CF0(&qword_10035C0F0);
    sub_1000C9040();
    sub_100009274(&qword_10035C1A8, &qword_10035C1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C188);
  }

  return result;
}

unint64_t sub_1000C9040()
{
  result = qword_10035C190;
  if (!qword_10035C190)
  {
    sub_100008CF0(&qword_10035C0E8);
    sub_100009274(&qword_10035C198, &qword_10035C1A0);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C190);
  }

  return result;
}

__n128 sub_1000C9124(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000C9148(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_1000C91A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000C9238@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  if (v2)
  {
    if (*(v2 + 64))
    {
      v4 = sub_100071A54(0, *(v2 + 88));
      v5 = *(v2 + 64);
      if (v4)
      {
        if (v5)
        {
          v6 = *(v2 + 121);
          LOBYTE(v2) = sub_100071A54(0, *(v2 + 88)) & v6;
LABEL_12:
          v9 = static HorizontalAlignment.center.getter();
          v15 = 1;
          sub_1000C94CC(v1, v2 & 1, &v23);
          v18 = *&v24[16];
          v19 = *&v24[32];
          v20 = v24[48];
          v16 = v23;
          v17 = *v24;
          v21[2] = *&v24[16];
          v21[3] = *&v24[32];
          v22 = v24[48];
          v21[0] = v23;
          v21[1] = *v24;
          sub_100006C20(&v16, v13, &qword_10035C1C8);
          sub_100008FA0(v21, &qword_10035C1C8);
          *&v14[55] = v19;
          *&v14[39] = v18;
          *&v14[23] = v17;
          *&v14[7] = v16;
          *&v24[17] = *&v14[16];
          *&v24[33] = *&v14[32];
          v25 = *&v14[48];
          v14[71] = v20;
          v13[0] = 0;
          v23 = v9;
          v24[0] = v15;
          v26 = *&v14[64];
          *&v24[1] = *v14;
          v27 = 0;
LABEL_15:
          sub_1000040A8(&qword_10035C1B8);
          sub_100009274(&qword_10035C1C0, &qword_10035C1B8);
          result = _ConditionalContent<>.init(storage:)();
          v11 = v31;
          a1[2] = v30;
          a1[3] = v11;
          a1[4] = v32[0];
          *(a1 + 74) = *(v32 + 10);
          v12 = v29;
          *a1 = v28;
          a1[1] = v12;
          return result;
        }

LABEL_11:
        LOBYTE(v2) = 0;
        goto LABEL_12;
      }

      if (v5)
      {
        v7 = sub_100071A54(1, *(v2 + 88));
        if (*(v2 + 64) && (v8 = *(v2 + 88), LODWORD(v2) = *(v2 + 121), (sub_100071A54(0, v8) & 1) != 0) && v2 != 2)
        {
          if ((v7 | v2))
          {
            goto LABEL_12;
          }
        }

        else if (v7)
        {
          goto LABEL_11;
        }
      }
    }

    LOBYTE(v21[0]) = 1;
    v27 = 1;
    goto LABEL_15;
  }

  type metadata accessor for StewieModel(0);
  sub_1000CA124(&qword_1003561B8, type metadata accessor for StewieModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C94CC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result;
  v4 = *(result + 48);
  if (!v4)
  {
    type metadata accessor for StewieModel(0);
    v29 = &qword_1003561B8;
    v30 = type metadata accessor for StewieModel;
    goto LABEL_21;
  }

  v6 = 0uLL;
  if (*(v4 + 64))
  {
    result = sub_100071A54(0, *(v4 + 88));
    if (result)
    {
      if (a2)
      {
        type metadata accessor for AppEvents();
        sub_1000CA124(&qword_100354D48, type metadata accessor for AppEvents);
        v8 = EnvironmentObject.init()();
        v10 = v9;
        type metadata accessor for UIMetrics();
        sub_1000CA124(&qword_100354D40, type metadata accessor for UIMetrics);
        v11 = EnvironmentObject.init()();
        v13 = v12;

        v14 = 1;
        if ((sub_1000C9A08() & 1) == 0)
        {
LABEL_6:
          v15 = swift_allocObject();
          v16 = v3[3];
          v15[3] = v3[2];
          v15[4] = v16;
          *(v15 + 73) = *(v3 + 57);
          v17 = v3[1];
          v15[1] = *v3;
          v15[2] = v17;
          sub_1000C9EDC(v3, &v40);

          v18 = sub_1000CA090;
          v19 = 1;
LABEL_16:
          *&v31 = v8;
          *(&v31 + 1) = v10;
          *&v32 = v11;
          *(&v32 + 1) = v13;
          *&v33 = v14;
          *(&v33 + 1) = v18;
          *&v34 = v15;
          *(&v34 + 1) = v19;
          v36 = v31;
          v37 = v32;
          v38 = v33;
          v39 = v34;
          sub_1000CA098(v8);
          sub_10001D9B4(v18);
          sub_1000949F4(v18);
          sub_1000CA0E0(v8);
          v35 = 0;
          v45 = v31;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = 0;
          sub_100006C20(&v31, &v40, &qword_10035C208);
          sub_1000040A8(&qword_10035C1D0);
          sub_1000040A8(&qword_10035C1D8);
          sub_100009274(&qword_10035C1E0, &qword_10035C1D0);
          sub_1000C9F14();
          _ConditionalContent<>.init(storage:)();
          sub_1000949F4(v18);
          sub_1000CA0E0(v8);
          result = sub_100008FA0(&v31, &qword_10035C208);
          v6 = v40;
          v22 = v41;
          v23 = v42;
          v24 = v43;
LABEL_17:
          v21 = v44;
          goto LABEL_18;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v13 = 0;
        v14 = 0;
        v8 = 1;
        if ((sub_1000C9A08() & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v18 = 0;
      v15 = 0;
      v19 = 0;
      goto LABEL_16;
    }

    if (!*(v4 + 64) || (result = sub_100071A54(1, *(v4 + 88)), (result & 1) == 0))
    {
      v21 = -1;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v6 = 0uLL;
      goto LABEL_18;
    }

    v20 = *(v3 + 4);
    v6 = 0uLL;
    if (!v20)
    {
      while (1)
      {
        type metadata accessor for RoadsideAssistanceModel();
        v29 = &qword_100356B48;
        v30 = type metadata accessor for RoadsideAssistanceModel;
LABEL_21:
        sub_1000CA124(v29, v30);
        EnvironmentObject.error()();
        __break(1u);
      }
    }

    if (*(v20 + 248) != 3 && (*(v20 + 216) & 1) == 0)
    {
      v25 = *(v20 + 208);
      v26 = swift_allocObject();
      v27 = v3[3];
      *(v26 + 48) = v3[2];
      *(v26 + 64) = v27;
      *(v26 + 73) = *(v3 + 57);
      v28 = v3[1];
      *(v26 + 16) = *v3;
      *(v26 + 32) = v28;
      *(v26 + 96) = v25;
      LOBYTE(v36) = 1;
      *&v45 = sub_1000C9ED0;
      *(&v45 + 1) = v26;
      *&v46 = 1;
      v49 = 1;
      sub_1000C9EDC(v3, &v40);
      sub_1000040A8(&qword_10035C1D0);
      sub_1000040A8(&qword_10035C1D8);
      sub_100009274(&qword_10035C1E0, &qword_10035C1D0);
      sub_1000C9F14();
      result = _ConditionalContent<>.init(storage:)();
      v6 = v40;
      v22 = v41;
      v23 = v42;
      v24 = v43;
      goto LABEL_17;
    }
  }

  v21 = -1;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
LABEL_18:
  *a3 = v6;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  *(a3 + 48) = v24;
  *(a3 + 64) = v21;
  return result;
}

uint64_t sub_1000C9A08()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 72);
  v5 = *(v0 + 64);
  v9 = v5;
  if (v10 == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100008FA0(&v9, &qword_100359078);
    (*(v2 + 8))(v4, v1);
    if (v8[15] != 1)
    {
      return 0;
    }
  }

  if (*v0)
  {
    return 0;
  }

  type metadata accessor for AlertAppearanceModel();
  sub_1000CA124(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000C9BE4(uint64_t a1)
{
  if (*(a1 + 16))
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();

    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000CA124(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9D38(uint64_t a1)
{
  if (*(a1 + 16))
  {

    PassthroughSubject.send(_:)();

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000CA124(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000C9F14()
{
  result = qword_10035C1E8;
  if (!qword_10035C1E8)
  {
    sub_100008CF0(&qword_10035C1D8);
    sub_1000C9FCC();
    sub_100009274(&qword_10035C1F8, &qword_10035C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C1E8);
  }

  return result;
}

unint64_t sub_1000C9FCC()
{
  result = qword_10035C1F0;
  if (!qword_10035C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C1F0);
  }

  return result;
}

uint64_t sub_1000CA028(uint64_t a1)
{

  sub_10007758C(*(v1 + 80), *(v1 + 88));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000CA098(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000CA0E0(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1000CA124(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CA170()
{
  result = qword_10035C210;
  if (!qword_10035C210)
  {
    sub_100008CF0(&qword_10035C218);
    sub_100009274(&qword_10035C1C0, &qword_10035C1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C210);
  }

  return result;
}

uint64_t sub_1000CA228()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0x8000000100294A20;
    v6 = 0xD000000000000012;
  }

  sub_10000F574();
  v27[0] = v6;
  v27[1] = v8;

  v9._countAndFlagsBits = 0x6E6567414445452ELL;
  v9._object = 0xE900000000000074;
  String.append(_:)(v9);

  static DispatchQoS.unspecified.getter();
  v27[0] = _swiftEmptyArrayStorage;
  sub_1000CC480(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v10 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = v25;
  *(v25 + 16) = v10;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000F53C(v12, qword_100381C80);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v11;
    v27[0] = v16;
    *v15 = 136446210;
    type metadata accessor for EEDAgent();

    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, v27);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] init", v15, 0xCu);
    sub_100008964(v16);
  }

  return v11;
}

uint64_t sub_1000CA654()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for EEDAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000CA7D0()
{
  sub_1000CA654();

  return swift_deallocClassInstance();
}

uint64_t sub_1000CA828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v49 = a1;
  v55 = type metadata accessor for DispatchTime();
  v58 = *(v55 - 8);
  v6 = __chkstk_darwin(v55);
  v50 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = v38 - v8;
  v53 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v53 - 8);
  __chkstk_darwin(v53);
  v44 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v3 + 16);
  v48 = *(v13 + 16);
  v48(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v42 = *(v13 + 80);
  v17 = v14 + v16;
  v18 = v16;
  v47 = v16;
  v19 = (v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = v19;
  v20 = swift_allocObject();
  v46 = *(v13 + 32);
  v46(v20 + v18, v15, v12);
  v21 = (v20 + v19);
  *v21 = v52;
  v21[1] = a3;
  v40 = a3;
  v64 = sub_1000CBC14;
  v65 = v20;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v45 = &v62;
  v62 = sub_1001D2438;
  v63 = &unk_10032DEF8;
  v22 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v59 = _swiftEmptyArrayStorage;
  v38[3] = sub_1000CC480(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  v38[2] = sub_1000040A8(&unk_100355D70);
  v38[1] = sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v23 = v44;
  v24 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  v25 = *(v57 + 8);
  v57 += 8;
  v41 = v25;
  v25(v23, v24);
  v26 = *(v56 + 8);
  v56 += 8;
  v39 = v26;
  v26(v11, v54);

  sub_10000F574();
  v38[0] = static OS_dispatch_queue.main.getter();
  v27 = v50;
  static DispatchTime.now()();
  v28 = v51;
  + infix(_:_:)();
  v29 = *(v58 + 8);
  v58 += 8;
  v29(v27, v55);
  v48(v15, v49, v12);
  v30 = v43;
  v31 = swift_allocObject();
  v46(v31 + v47, v15, v12);
  v32 = (v31 + v30);
  v33 = v40;
  *v32 = v52;
  v32[1] = v33;
  v64 = sub_1000CC244;
  v65 = v31;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_1001D2438;
  v63 = &unk_10032DF48;
  v34 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v35 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v38[0];
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v34);

  v41(v23, v35);
  v39(v11, v54);
  return (v29)(v28, v55);
}

uint64_t sub_1000CAF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a3;
  v104 = a2;
  v119 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v110 = *(v3 - 8);
  v111 = v3;
  __chkstk_darwin(v3);
  v108 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DispatchQoS();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v103 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v114 = &v100 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v100 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v100 - v16;
  v102 = v18;
  __chkstk_darwin(v15);
  v20 = &v100 - v19;
  if (qword_100353A48 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000F53C(v21, qword_100381D28);
  v118 = *(v7 + 16);
  v118(v20, v119, v6);
  v116 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v113 = v7 + 16;
  v101 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v17;
    v31 = v30;
    v115 = *(v7 + 8);
    v115(v20, v6);
    v32 = sub_10017C9E8(v28, v31, aBlock);
    v17 = v29;

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v23, v24, "[ID: %s] fetchStateAsync: fetching", v26, 0xCu);
    sub_100008964(v27);
  }

  else
  {

    v115 = *(v7 + 8);
    v115(v20, v6);
  }

  aBlock[0] = 0;
  v33 = CLGetEEDCloakingKey();
  v34 = aBlock[0];
  if (v33)
  {
    v35 = v33;
    v36 = aBlock[0];
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v38;

    if (!v34)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v39 = aBlock[0];
    v37 = 0;
    v117 = 0xF000000000000000;
    if (!v34)
    {
      goto LABEL_14;
    }
  }

  v118(v17, v119, v6);
  v40 = v34;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v43 = 136315394;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v17;
    v47 = v46;
    v115(v45, v6);
    v48 = sub_10017C9E8(v44, v47, aBlock);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = v40;
    v50 = [v49 description];
    v112 = v37;
    v51 = v50;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = sub_10017C9E8(v52, v54, aBlock);

    *(v43 + 14) = v55;
    _os_log_impl(&_mh_execute_header, v41, v42, "[ID: %s] CLGetEEDCloakingKey returned error: %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    sub_10000F4D4(v112, v117);
  }

  else
  {

    sub_10000F4D4(v37, v117);
    v115(v17, v6);
  }

  v37 = 0;
  v117 = 0xF000000000000000;
LABEL_14:
  v112 = v37;
  aBlock[0] = 0;
  v56 = CLGetEEDEmergencyContactNames();
  v57 = aBlock[0];
  v58 = v57;
  if (v56)
  {
    v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!v58)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v59 = 0;
    if (!v57)
    {
      goto LABEL_22;
    }
  }

  v60 = v101;
  v118(v101, v119, v6);
  v61 = v58;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    aBlock[0] = v100;
    *v64 = 136315394;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v65 = dispatch thunk of CustomStringConvertible.description.getter();
    v67 = v66;
    v115(v60, v6);
    v68 = sub_10017C9E8(v65, v67, aBlock);

    *(v64 + 4) = v68;
    *(v64 + 12) = 2082;
    v69 = v61;
    v70 = [v69 description];
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = sub_10017C9E8(v71, v73, aBlock);

    *(v64 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v62, v63, "[ID: %s] CLGetEEDEmergencyContactNames returned error: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v115(v60, v6);
  }

  v59 = 0;
LABEL_22:
  v118(v114, v119, v6);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v79 = v114;
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    v115(v79, v6);
    v83 = sub_10017C9E8(v80, v82, aBlock);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "[ID: %s] fetchStateAsync: done", v77, 0xCu);
    sub_100008964(v78);
  }

  else
  {

    v115(v114, v6);
  }

  sub_10000F574();
  v84 = static OS_dispatch_queue.main.getter();
  v85 = v103;
  v118(v103, v119, v6);
  v86 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v87 = (v102 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  (*(v7 + 32))(&v89[v86], v85, v6);
  v90 = &v89[v87];
  v91 = v105;
  *v90 = v104;
  *(v90 + 1) = v91;
  v92 = &v89[v88];
  v93 = v112;
  v94 = v117;
  *v92 = v112;
  *(v92 + 1) = v94;
  *&v89[(v88 + 23) & 0xFFFFFFFFFFFFFFF8] = v59;
  aBlock[4] = sub_1000CC3D4;
  aBlock[5] = v89;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032DF98;
  v95 = _Block_copy(aBlock);

  sub_10000F46C(v93, v94);

  v96 = v106;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000CC480(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v97 = v108;
  v98 = v111;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v95);

  sub_10000F4D4(v93, v94);
  (*(v110 + 8))(v97, v98);
  return (*(v107 + 8))(v96, v109);
}

uint64_t sub_1000CBC2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CBC44(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381D28);
  v15 = *(v11 + 16);
  v28 = a1;
  v15(v13, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = a6;
    v19 = v18;
    v25 = swift_slowAlloc();
    v26 = a2;
    v30 = v25;
    *v19 = 136315138;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
    v23 = sub_10017C9E8(v20, v22, &v30);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "[ID: %s] fetchStateAsync: done and notifying", v19, 0xCu);
    sub_100008964(v25);
    a2 = v26;

    a6 = v27;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  return a2(v28, v29, a5, a6);
}

uint64_t sub_1000CBF00(uint64_t a1, uint64_t (*a2)(void, void, void, void))
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381D28);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = a1;
    v12 = v11;
    v20 = swift_slowAlloc();
    v22 = v20;
    *v12 = 136315138;
    sub_1000CC480(&qword_100355328, &type metadata accessor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = a2;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_10017C9E8(v13, v16, &v22);
    a2 = v14;

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "[ID: %s] fetchStateAsync: failsafe timeout triggered", v12, 0xCu);
    sub_100008964(v20);

    a1 = v21;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1, 0, 0xF000000000000000, 0);
}

uint64_t sub_1000CC1A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000CC25C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1000CC300()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_10000F4E8(*(v0 + v5), v6);
  }

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000CC3D4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);
  v10 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000CBC44(v0 + v2, v6, v7, v8, v9, v10);
}

uint64_t sub_1000CC480(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1000CC548()
{
  Hasher.init(_seed:)();
  ConnectionAssistantRendererEarthOutline.Error.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

void sub_1000CC5F4()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SessionAccessoryView();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = [*&v0[qword_10035C2E8] view];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }
}

void sub_1000CC6B8(void *a1)
{
  v1 = a1;
  sub_1000CC5F4();
}

id sub_1000CC764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1000CC88C()
{
  result = 28.0;
  if (*(v0 + qword_10035C2E0) < 2u)
  {
    return 25.0;
  }

  return result;
}

uint64_t sub_1000CC8E0()
{
  v1 = *(v0 + 40);
  result = v1[4];
  if (*(v0 + 72) - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = v1[2];
    v5 = v1[3];
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();

    v3 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, v4, v5);
  }

  v1[4] = v3;
}

void sub_1000CC9A8(uint64_t a1, double a2)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 40);
    if (v2 < a2)
    {
      v3 = (a1 + 64);
      v4 = *(a1 + 16);
      v5 = *(a1 + 40);
      while (--v4)
      {
        v6 = v5;
        v7 = v3 + 3;
        v5 = *v3;
        v8 = *v3 < a2;
        v3 += 3;
        if (!v8)
        {
          if (v2 < a2 && *(v7 - 16) == 1)
          {
            sqrt(a2 - v6);
          }

          return;
        }
      }
    }
  }
}

BOOL sub_1000CCA70()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  v4 = *(v1 + 58);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    return 0;
  }

  v5 = v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
  if (*(v5 + 24))
  {
    return 0;
  }

  v6 = round(*v5 * 57.2957795) * 0.0174532925;
  v7 = -v6;
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  return v7 <= 0.785398163;
}

void sub_1000CCB08()
{
  v1 = *(v0 + 16);
  if ((v1 - 3) >= 2)
  {
    if (v1 == 2)
    {
      sub_1000089B0(*(v0 + 64) + 48, v21);
      v2 = v22;
      v3 = v23;
      sub_1000088DC(v21, v22);
      (*(v3 + 8))(v20, v2, v3);
      sub_100008964(v20);
      sub_100008964(v21);
    }

    else
    {
      v4 = objc_opt_self();
      v5 = [v4 mainScreen];
      [v5 nativeScale];
      v7 = v6;

      v8 = [v4 mainScreen];
      [v8 scale];
      v10 = v9;

      if (v10 < v7)
      {
        v11 = [v4 mainScreen];
        [v11 nativeScale];
        v13 = v12;

        if (v13 > 0.0)
        {
          v14 = [v4 mainScreen];
          [v14 scale];

          v15 = [v4 mainScreen];
          [v15 nativeScale];
        }
      }

      v16 = *(v0 + 64);
      v17 = *(v16 + 112);
      static UIContentSizeCategory.>= infix(_:_:)();

      sub_1000089B0(v16 + 48, v21);
      v18 = v22;
      v19 = v23;
      sub_1000088DC(v21, v22);
      (*(v19 + 32))(v20, v18, v19);
      sub_1000088DC(v20, v20[3]);
      sub_100008964(v20);
      sub_100008964(v21);
    }
  }
}

double sub_1000CCE18()
{
  v1 = 1.0;
  if (*(v0 + 16) - 2 >= 3)
  {
    v2 = objc_opt_self();
    v3 = [v2 mainScreen];
    [v3 nativeScale];
    v5 = v4;

    v6 = [v2 mainScreen];
    [v6 scale];
    v8 = v7;

    if (v8 < v5)
    {
      v9 = [v2 mainScreen];
      [v9 nativeScale];
      v11 = v10;

      if (v11 > 0.0)
      {
        v12 = [v2 mainScreen];
        [v12 scale];
        v14 = v13;

        v15 = [v2 mainScreen];
        [v15 nativeScale];
        v17 = v16;

        return v14 / v17;
      }
    }
  }

  return v1;
}

__n128 sub_1000CCF60@<Q0>(uint64_t a1@<X8>)
{
  if (!sub_1000CDAC8() || *(*(*(v1 + 32) + 48) + 136) - 1 <= 8)
  {
    goto LABEL_3;
  }

  v7 = *(v1 + 16);
  if (v7 == 2)
  {
    if (qword_1003539E8 != -1)
    {
      swift_once();
    }

    v17 = xmmword_10035C498;
    v18 = unk_10035C4A8;
    v19 = qword_10035C4B8;
    v13 = xmmword_10035C458;
    v14 = *&qword_10035C468;
    v15 = xmmword_10035C478;
    v16 = *&qword_10035C488;
    *&v20 = 0x3FE921FB54442D18;
    sub_1000D18EC(&v13, &v29);
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v12 = v20;
    v24 = v17;
    v25 = v18;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *&v26 = v19;
    *(&v26 + 1) = 0x3FD921FB54442D18;
    *&v27 = v12;
    v9 = &off_100322D28;
    v10 = &off_100322D78;
    goto LABEL_17;
  }

  if (v7 == 3)
  {
    if (qword_1003539F0 != -1)
    {
      swift_once();
    }

    v17 = xmmword_10035C500;
    v18 = unk_10035C510;
    v19 = qword_10035C520;
    v13 = xmmword_10035C4C0;
    v14 = *&qword_10035C4D0;
    v15 = xmmword_10035C4E0;
    v16 = *&qword_10035C4F0;
    *&v20 = 0x3FE921FB54442D18;
    sub_1000D18EC(&v13, &v29);
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v11 = v20;
    *&v29 = 0x3FE921FB54442D18;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v24 = v17;
    v25 = v18;
    *&v26 = v19;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *(&v26 + 1) = v11;
    *&v27 = v29;
    v9 = &off_100322DC8;
    v10 = &off_100322E18;
    goto LABEL_17;
  }

  if (v7 != 4)
  {
    if (qword_1003539E0 != -1)
    {
      swift_once();
    }

    v17 = xmmword_10035C430;
    v18 = unk_10035C440;
    v19 = qword_10035C450;
    v13 = xmmword_10035C3F0;
    v14 = *&qword_10035C400;
    v15 = xmmword_10035C410;
    v16 = *&qword_10035C420;
    *&v20 = 0x3FE921FB54442D18;
    sub_1000D18EC(&v13, &v29);
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v8 = v20;
    v24 = v17;
    v25 = v18;
    v20 = v13;
    v21 = v14;
    v22 = v15;
    v23 = v16;
    *&v26 = v19;
    *(&v26 + 1) = 0x3FD921FB54442D18;
    *&v27 = v8;
    v9 = &off_100322C88;
    v10 = &off_100322CD8;
LABEL_17:
    *(&v27 + 1) = v9;
    v28 = v10;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(&v20);
    v35 = v26;
    v36 = v27;
    v37 = v28;
    v31 = v22;
    v32 = v23;
    v33 = v24;
    v34 = v25;
    v29 = v20;
    v30 = v21;
    goto LABEL_4;
  }

LABEL_3:
  sub_1000D18D0(&v29);
LABEL_4:
  v3 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v3;
  *(a1 + 128) = v37;
  v4 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v4;
  v5 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v5;
  result = v30;
  *a1 = v29;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000CD324()
{
  v0 = sub_10009A5B4();
  v1 = sub_10009A5B4();
  result = sub_10009A5B4();
  *&xmmword_10035C3F0 = 0x4008000000000000;
  *(&xmmword_10035C3F0 + 1) = &off_100322238;
  qword_10035C400 = &off_1003222A0;
  unk_10035C408 = v0;
  *&xmmword_10035C410 = &off_100322308;
  *(&xmmword_10035C410 + 1) = &off_100322358;
  qword_10035C420 = v1;
  unk_10035C428 = &off_1003223C0;
  LOBYTE(xmmword_10035C430) = 1;
  *(&xmmword_10035C430 + 1) = &off_100322428;
  unk_10035C440 = &off_100322478;
  qword_10035C448 = &off_100322510;
  qword_10035C450 = result;
  return result;
}

uint64_t sub_1000CD3D8()
{
  v0 = sub_10009A5B4();
  v1 = sub_10009A5B4();
  result = sub_10009A5B4();
  *&xmmword_10035C458 = 0x4008000000000000;
  *(&xmmword_10035C458 + 1) = &off_1003225A8;
  qword_10035C468 = &off_100322610;
  unk_10035C470 = v0;
  *&xmmword_10035C478 = &off_100322690;
  *(&xmmword_10035C478 + 1) = &off_1003226E0;
  qword_10035C488 = v1;
  unk_10035C490 = &off_100322760;
  LOBYTE(xmmword_10035C498) = 1;
  *(&xmmword_10035C498 + 1) = &off_1003227C8;
  unk_10035C4A8 = &off_100322818;
  qword_10035C4B0 = &off_100322898;
  qword_10035C4B8 = result;
  return result;
}

uint64_t sub_1000CD48C()
{
  v0 = sub_10009A5B4();
  v1 = sub_10009A5B4();
  result = sub_10009A5B4();
  *&xmmword_10035C4C0 = 0x4008000000000000;
  *(&xmmword_10035C4C0 + 1) = &off_100322930;
  qword_10035C4D0 = &off_100322998;
  unk_10035C4D8 = v0;
  *&xmmword_10035C4E0 = &off_100322A18;
  *(&xmmword_10035C4E0 + 1) = &off_100322A68;
  qword_10035C4F0 = v1;
  unk_10035C4F8 = &off_100322AE8;
  LOBYTE(xmmword_10035C500) = 0;
  *(&xmmword_10035C500 + 1) = &off_100322B50;
  unk_10035C510 = &off_100322BA0;
  qword_10035C518 = &off_100322C08;
  qword_10035C520 = result;
  return result;
}

double sub_1000CD53C@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 == 4)
  {
    sub_1000D18AC(&v35);
  }

  else
  {
    v4 = sub_1000CD850();
    if (v3 == 3)
    {
      v5 = 10.0;
      v7 = 12.0;
    }

    else
    {
      if (v3 == 2)
      {
        v5 = 40.0;
        v6 = 0x4049800000000000;
      }

      else
      {
        v5 = 145.0;
        v6 = 0x4068600000000000;
      }

      v7 = *&v6;
    }

    *&v35 = 0x3FE921FB54442D18;
    Angle.animatableData.getter();
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    v8 = *(*(*(v1 + 32) + 48) + 136);
    v9 = v8 < 0xA;
    v10 = 0x12u >> v8;
    v11 = 0.0;
    if (sub_1000CCA70() && ((v12 = *(v1 + 40), v13 = *(v12 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow), v13 == 2) || (v13 & 1) == 0) && ((v14 = *(v12 + 58), v14 == 2) || (v14 & 1) == 0) && (v15 = v12 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing, (*(v15 + 24) & 1) == 0))
    {
      v16 = 0;
      v11 = round(*v15 * 57.2957795) * 0.0174532925;
    }

    else
    {
      v16 = 1;
    }

    v17 = v9 & v10;
    sub_1000CCF60(v33);
    if (v3 == 3)
    {
      v18 = xmmword_100282300;
    }

    else if (v3 == 2)
    {
      v18 = xmmword_100282310;
    }

    else
    {
      v18 = xmmword_1002822F0;
    }

    *&v27[103] = v33[6];
    *&v27[87] = v33[5];
    *&v27[39] = v33[2];
    *&v27[23] = v33[1];
    *&v27[119] = v33[7];
    *&v27[55] = v33[3];
    *&v27[71] = v33[4];
    *&v27[135] = v34;
    *&v27[7] = v33[0];
    *&v28 = v4;
    *(&v28 + 1) = v7;
    *&v29 = v5;
    *(&v29 + 1) = 0x3FF921FB54442D18;
    *&v30 = 0x3FE921FB54442D18;
    BYTE8(v30) = v17;
    *v31 = v11;
    v31[8] = v16;
    *&v31[89] = *&v27[80];
    *&v31[105] = *&v27[96];
    *&v31[121] = *&v27[112];
    *&v31[136] = *&v27[127];
    *&v31[25] = *&v27[16];
    *&v31[41] = *&v27[32];
    *&v31[57] = *&v27[48];
    *&v31[73] = *&v27[64];
    *&v31[9] = *v27;
    *&v31[152] = 0x4012D97C7F3321D2;
    v32 = v18;
    ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(&v28);
    v45 = *&v31[112];
    v46 = *&v31[128];
    v47 = *&v31[144];
    v48 = v32;
    v41 = *&v31[48];
    v42 = *&v31[64];
    v43 = *&v31[80];
    v44 = *&v31[96];
    v37 = v30;
    v38 = *v31;
    v39 = *&v31[16];
    v40 = *&v31[32];
    v35 = v28;
    v36 = v29;
  }

  v19 = v46;
  a1[10] = v45;
  a1[11] = v19;
  v20 = v48;
  a1[12] = v47;
  a1[13] = v20;
  v21 = v42;
  a1[6] = v41;
  a1[7] = v21;
  v22 = v44;
  a1[8] = v43;
  a1[9] = v22;
  v23 = v38;
  a1[2] = v37;
  a1[3] = v23;
  v24 = v40;
  a1[4] = v39;
  a1[5] = v24;
  result = *&v35;
  v26 = v36;
  *a1 = v35;
  a1[1] = v26;
  return result;
}

uint64_t sub_1000CD850()
{
  if (!sub_1000CDAC8())
  {
    goto LABEL_14;
  }

  v1 = *(*(*(v0 + 32) + 48) + 136);
  if (v1 <= 9)
  {
    if (((1 << v1) & 0x2EC) != 0)
    {
      v2 = *(v0 + 16);
      if ((v2 - 3) >= 2)
      {
        if (v2 == 2)
        {
          sub_1000040A8(&qword_10035B3D8);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_100279160;
          v4 = [objc_opt_self() systemGray3Color];
        }

        else
        {
          sub_1000040A8(&qword_10035B3D8);
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_100279160;
          v4 = [objc_opt_self() systemGray4Color];
        }

        v8 = v4;
        v9 = Color.init(uiColor:)();
        goto LABEL_15;
      }

LABEL_14:
      sub_1000040A8(&qword_10035B3D8);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_100279160;
      v9 = static Color.clear.getter();
LABEL_15:
      *(v3 + 32) = v9;
      goto LABEL_16;
    }

    if (((1 << v1) & 0x12) != 0)
    {
      v5 = *(v0 + 16);
      if ((v5 - 3) < 2)
      {
        goto LABEL_14;
      }

      if (v5 == 2)
      {
        sub_1000040A8(&qword_10035B3D8);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_100279170;
        *(v6 + 32) = static Color.white.getter();
        static Color.white.getter();
        v7 = Color.opacity(_:)();

        *(v6 + 40) = v7;
        goto LABEL_16;
      }
    }

    else if (v1 == 8)
    {
      goto LABEL_14;
    }
  }

  sub_1000040A8(&qword_10035B3D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100279170;
  *(v11 + 32) = sub_10009A5B4();
  *(v11 + 40) = sub_10009A5B4();
LABEL_16:

  return Gradient.init(colors:)();
}

BOOL sub_1000CDAC8()
{
  v1 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  sub_100006C20(v4 + v5, v3, &qword_100356510);
  v6 = type metadata accessor for ConnectionClosed(0);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_100008FA0(v3, &qword_100356510);
  if (v4 != 1)
  {
    return 0;
  }

  v7 = *(v0 + 56);
  if (!*(v7 + 64))
  {
    return 0;
  }

  if (*(v7 + 56) != 5 || *(v7 + 73) != 1)
  {
    return 0;
  }

  v9 = *(*(*(v0 + 32) + 48) + 136);
  if ((v9 - 1) < 5)
  {
    return *(v0 + 16) - 5 < 0xFFFFFFFE;
  }

  return (v9 - 6) >= 4;
}

BOOL sub_1000CDC40()
{
  v1 = *(v0 + 16);
  if (v1 == 3)
  {
    v3 = *(v0 + 40);
    v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
    if (v4 == 2 || (v4 & 1) == 0)
    {
      v5 = *(v3 + 58);
      if (v5 == 2 || (v5 & 1) == 0)
      {
        v2 = *(v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) ^ 1;
        return v2 & 1;
      }
    }

    goto LABEL_14;
  }

  if (v1 == 4)
  {
LABEL_3:
    v2 = 1;
    return v2 & 1;
  }

  if (!sub_1000CDAC8())
  {
LABEL_14:
    v2 = 0;
    return v2 & 1;
  }

  if (!*(*(*(v0 + 32) + 48) + 136))
  {
    goto LABEL_3;
  }

  return sub_1000CCA70();
}

void sub_1000CDCEC(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 == 4)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0.0;
    v17 = 0.0;
    goto LABEL_34;
  }

  v18 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = round(*(v19 + 32) * 57.2957795) * 0.0174532925;
  if (*(v19 + 104))
  {
    v20 = 0.0;
  }

  v21 = *(v18 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  v37 = v20;
  if (v21 != 2 && (v21 & 1) != 0 || (v22 = *(v18 + 58), v22 != 2) && (v22 & 1) != 0 || (v23 = v18 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing, (*(v23 + 24) & 1) != 0))
  {
    v24 = 1;
    v16 = 0.0;
  }

  else
  {
    v24 = 0;
    v16 = round(*v23 * 57.2957795) * 0.0174532925;
  }

  v25 = 0x4021000000000000;
  if (v3 == 3)
  {
    v25 = 0x4000000000000000;
  }

  if (v3 == 2)
  {
    v7 = 0x4004000000000000;
  }

  else
  {
    v7 = v25;
  }

  v26 = [objc_opt_self() systemGray3Color];
  v8 = Color.init(uiColor:)();
  if (!sub_1000CDAC8() || (v27 = *(*(*(v1 + 32) + 48) + 136), (v27 - 1) >= 5) && (v27 - 6) < 4)
  {
    v9 = 0;
    if (v3 != 2)
    {
      goto LABEL_23;
    }

LABEL_20:
    v12 = 0x403E400000000000;
    v11 = 0x401A000000000000;
    v28 = 40.0;
    goto LABEL_25;
  }

  v9 = sub_10009A5B4();
  if (v3 == 2)
  {
    goto LABEL_20;
  }

LABEL_23:
  if (v3 != 3)
  {
    v39 = xmmword_100282320;
    v17 = -8.0;
    v11 = 0x402A000000000000;
    v12 = 0x405EC00000000000;
    goto LABEL_27;
  }

  v12 = 0x4026000000000000;
  v28 = 10.0;
  v11 = 0x4008000000000000;
LABEL_25:
  sub_1000CCB08();
  v38 = v29;
  v36 = v30;
  sub_1000CCB08();
  v17 = v28 + v31 * -0.5;
  *&v32 = v38;
  *(&v32 + 1) = v36;
  v39 = v32;
LABEL_27:
  if ((v3 & 0xFE) == 2)
  {
    v6 = 15;
  }

  else
  {
    v6 = 10;
  }

  v33 = sub_1000CDC40();
  v34 = sub_1000CCA70();
  v14 = v24;
  if (v34)
  {
    v35 = 256;
  }

  else
  {
    v35 = 0;
  }

  v13 = v35 & 0xFFFE | v33;
  v10 = 0x3FF921FB54442D18;
  v4 = 0x4012D97C7F3321D2;
  v5 = v37;
  v15 = v39;
LABEL_34:
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v16;
  *(a1 + 24) = v14;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v15;
  *(a1 + 96) = v12;
  *(a1 + 104) = v17;
  *(a1 + 112) = v13;
}

BOOL sub_1000CDFB8()
{
  v1 = *(v0 + 16);
  if ((v1 - 3) < 2)
  {
    return 0;
  }

  if (v1 != 2)
  {
    return 1;
  }

  v3 = *(v0 + 40);
  v4 = *(v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    return 0;
  }

  v5 = *(v3 + 58);
  if (v5 != 2 && (v5 & 1) != 0)
  {
    return 0;
  }

  v6 = v3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing;
  if (*(v6 + 24))
  {
    return 0;
  }

  v7 = round(*v6 * 57.2957795) * 0.0174532925;
  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  return v8 <= 0.785398163;
}

uint64_t sub_1000CE060()
{
  if (*(v0 + 16) - 3 < 2)
  {
    return 0;
  }

  v1 = *(v0 + 40);
  v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  v3 = *(v1 + 58);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24))
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
  if (sub_10017D0A8(&off_100322E68, *(v1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)))
  {
    return 0;
  }

  v5 = round(v4 * 57.2957795) * 0.0174532925;
  v6 = v5 < 0.0 ? -v5 : v5;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  if (v6 <= 0.785398163 || sub_1000CDAC8() && *(*(*(v0 + 32) + 48) + 136) - 1 > 8)
  {
    return 0;
  }

  if (v5 > 0.0)
  {
    Angle.animatableData.getter();
    Angle.animatableData.setter();
  }

  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  return *&v5;
}

void sub_1000CE214(uint64_t a1@<X8>)
{
  v3 = COERCE_DOUBLE(sub_1000CE060());
  v4 = 0.0;
  if ((v5 & 1) == 0)
  {
    v4 = v3;
    v6 = -v3;
    if (v3 >= 0.0)
    {
      v6 = v3;
    }

    if (v6 <= 0.261799388)
    {
      v4 = 0.0;
    }
  }

  v7 = sub_10009A5B4();
  v8 = static Color.white.getter();
  if (*(v1 + 16) - 2 >= 3)
  {
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v11 = v26;
    v12 = v27;
    v23 = -8.0;
    v22 = 20.0;
    v13 = v28;
    v14 = v29;
    v19 = 0x4073200000000000;
    v17 = 0x4074400000000000;
    v10 = 0x405EC00000000000;
    v15 = v30;
  }

  else
  {
    v9 = (*(v1 + 16) - 2);
    v24 = dbl_100282DD0[v9];
    v25 = dbl_100282DB8[v9];
    v10 = qword_100282DE8[v9];
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v11 = v26;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    sub_1000CCB08();
    v17 = v16;
    v19 = v18;
    sub_1000CCB08();
    v21 = v20 * -0.5;
    v22 = v25;
    v23 = v24 + v21;
  }

  *a1 = 0x4012D97C7F3321D2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v22;
  *(a1 + 80) = xmmword_100282340;
  *(a1 + 96) = v17;
  *(a1 + 104) = v19;
  *(a1 + 112) = v10;
  *(a1 + 120) = v23;
  *(a1 + 128) = 0x3FF921FB54442D18;
}

uint64_t sub_1000CE404@<X0>(unint64_t *a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v3 - 8);
  v5 = v23 - v4;
  v6 = v1[3];
  v7 = OBJC_IVAR____TtC8SOSBuddy21ConnectionClosedModel__connectionClosed;
  swift_beginAccess();
  sub_100006C20(v6 + v7, v5, &qword_100356510);
  v8 = type metadata accessor for ConnectionClosed(0);
  LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  sub_100008FA0(v5, &qword_100356510);
  if (v6 == 1 && (v9 = v1[7], *(v9 + 64)) && (*(v9 + 56) == 5 ? (v10 = *(v9 + 73) == 1) : (v10 = 0), v10))
  {
    v15 = v1[4];
    v16 = 1 << *(*(v15 + 48) + 136);
    if ((v16 & 0x3DA) != 0)
    {
      sub_1000089B0(v1[8] + 48, v23);
      v17 = v24;
      v18 = v25;
      sub_1000088DC(v23, v24);
      v19 = (*(v18 + 128))(v15, v17, v18);
      sub_100008964(v23);
      result = v19;
    }

    else
    {
      if ((v16 & 0x24) != 0)
      {
        v14 = 0x8000000100294830;
        v20 = static Color.white.getter();
        sub_1000089B0(v1[8] + 48, v23);
        v21 = v24;
        v22 = v25;
        sub_1000088DC(v23, v24);
        v12 = (*(v22 + 128))(v15, v21, v22);
        sub_100008964(v23);
        result = v20;
        v13 = 0xD00000000000001BLL;
        goto LABEL_9;
      }

      result = sub_10009A5B4();
    }
  }

  else
  {
    result = static Color.white.getter();
  }

  v12 = 0;
  v13 = 0x662E656C63726963;
  v14 = 0xEB000000006C6C69;
LABEL_9:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = 0x662E656C63726963;
  a1[3] = 0xEB000000006C6C69;
  a1[4] = result;
  a1[5] = v12;
  return result;
}

CGFloat sub_1000CE694@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = atan2(*(v1 + 16), *(v1 + 8));
  v5 = __sincos_stret(v4);
  CGAffineTransformMakeTranslation(&v9, v3 * v5.__cosval, v3 * v5.__sinval);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a1 = *&v9.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  *(a1 + 40) = 0;
  *(a1 + 48) = v8;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1000CE710@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_1000CE71C(__n128 *a1)
{
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

__n128 (*sub_1000CE728(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_1000CE754;
}

__n128 sub_1000CE754(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 8) = *a1;
  return result;
}

uint64_t sub_1000CE764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D2254();

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1000CE7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D2254();

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

double sub_1000CE8CC(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1000CE8D8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1000CE904;
}

double sub_1000CE904(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_1000CE914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D1D68();

  return static AnimatableModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1000CE990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000D1D68();

  return static AnimatableModifier._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1000CEA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  static Font.system(size:weight:design:)();
  sub_100008FA0(v6, &qword_100354FC0);
  v8 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v10 = sub_1000040A8(&qword_10035C838);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = sub_1000040A8(&qword_10035C840);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v8;
  return result;
}

__n128 sub_1000CEB9C@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + 16) - 2 >= 3)
  {
    v3 = *(*(v1 + 64) + 112);
    v4 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v4)
    {
      v25[17] = 0;
    }

    else
    {
      v5 = static HorizontalAlignment.center.getter();
      v6 = static Edge.Set.bottom.getter();
      v7 = [objc_opt_self() mainScreen];
      v8 = [v7 fixedCoordinateSpace];

      [v8 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      v26.origin.x = v10;
      v26.origin.y = v12;
      v26.size.width = v14;
      v26.size.height = v16;
      CGRectGetHeight(v26);
      EdgeInsets.init(_all:)();
      v22 = v5;
      v23.n128_u8[0] = 1;
      v23.n128_u8[8] = v6;
      *&v24 = v17;
      *(&v24 + 1) = v18;
      *v25 = v19;
      *&v25[8] = v20;
      *&v25[16] = 256;
    }

    sub_1000040A8(&qword_10035C7C0);
    sub_1000D0804();
    _ConditionalContent<>.init(storage:)();
  }

  sub_1000040A8(&qword_10035C7A8);
  sub_1000D0778();
  _ConditionalContent<>.init(storage:)();
  *(a1 + 32) = v24;
  *(a1 + 48) = *v25;
  *(a1 + 63) = *&v25[15];
  result = v23;
  *a1 = v22;
  *(a1 + 16) = v23;
  return result;
}

uint64_t sub_1000CEDD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000040A8(&qword_10035C868);
  sub_1000CEE88(a1, (a2 + *(v5 + 44)));
  static Color.black.getter();
  v6 = Color.opacity(_:)();

  v7 = *(a1 + 16) * 0.5;
  result = sub_1000040A8(&qword_10035C870);
  v9 = (a2 + *(result + 36));
  *v9 = v6;
  v9[1] = v7;
  v9[2] = 0.0;
  v9[3] = 0.0;
  return result;
}

uint64_t sub_1000CEE88@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v57 = sub_1000040A8(&qword_10035C878);
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v47 - v5;
  v53 = sub_1000040A8(&qword_10035C880);
  __chkstk_darwin(v53);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v47 - v8;
  __chkstk_darwin(v9);
  v11 = (&v47 - v10);
  __chkstk_darwin(v12);
  v14 = (&v47 - v13);
  v15 = sub_1000040A8(&qword_10035C888);
  __chkstk_darwin(v15 - 8);
  v60 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v58 = &v47 - v18;
  v59 = static Color.white.getter();
  v19 = *(a1 + 16) + *(a1 + 16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v67[3] = *&v67[27];
  *&v67[11] = *&v67[35];
  *&v67[19] = *&v67[43];
  if (*(a1 + 65))
  {
    v20 = *(a1 + 24) * 0.5;
    v50 = type metadata accessor for RoundedRectangle();
    v21 = *(v50 + 20);
    v22 = enum case for RoundedCornerStyle.continuous(_:);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v23 = type metadata accessor for RoundedCornerStyle();
    v51 = v4;
    v24 = v23;
    v25 = *(v23 - 8);
    v47 = *(v25 + 104);
    v49 = v25 + 104;
    v47(v14 + v21, v22, v23);
    *v14 = v20;
    v14[1] = v20;
    v26 = static Color.white.getter();
    v27 = sub_1000040A8(&qword_1003567E0);
    *(v14 + *(v27 + 52)) = v26;
    *(v14 + *(v27 + 56)) = 256;
    v52 = a2;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v28 = sub_1000040A8(&qword_10035C898);
    v29 = (v14 + *(v28 + 36));
    v30 = *&v67[59];
    *v29 = *&v67[51];
    v29[1] = v30;
    v29[2] = *&v67[67];
    v31 = v53;
    v32 = v14 + *(v53 + 36);
    *v32 = -v19;
    *(v32 + 1) = 0;
    v47(v11 + *(v50 + 20), v48, v24);
    *v11 = v20;
    v11[1] = v20;
    *(v11 + *(v27 + 52)) = static Color.white.getter();
    *(v11 + *(v27 + 56)) = 256;
    static Alignment.center.getter();
    a2 = v52;
    _FrameLayout.init(width:height:alignment:)();
    v33 = (v11 + *(v28 + 36));
    v34 = *&v67[83];
    *v33 = *&v67[75];
    v33[1] = v34;
    v33[2] = *&v67[91];
    v35 = v11 + *(v31 + 36);
    *v35 = v19;
    *(v35 + 1) = 0;
    v36 = v54;
    sub_100006C20(v14, v54, &qword_10035C880);
    v37 = v55;
    sub_100006C20(v11, v55, &qword_10035C880);
    v38 = v56;
    sub_100006C20(v36, v56, &qword_10035C880);
    v39 = sub_1000040A8(qword_10035C8A0);
    sub_100006C20(v37, v38 + *(v39 + 48), &qword_10035C880);
    sub_100008FA0(v11, &qword_10035C880);
    sub_100008FA0(v14, &qword_10035C880);
    sub_100008FA0(v37, &qword_10035C880);
    sub_100008FA0(v36, &qword_10035C880);
    v40 = v58;
    sub_1000D1F2C(v38, v58);
    (*(v51 + 56))(v40, 0, 1, v57);
  }

  else
  {
    v40 = v58;
    (*(v4 + 56))(v58, 1, 1, v57);
  }

  v41 = v60;
  sub_100006C20(v40, v60, &qword_10035C888);
  v42 = v59;
  *&v61[0] = v59;
  WORD4(v61[0]) = 256;
  *(v61 + 10) = *v67;
  *(&v61[1] + 10) = *&v67[8];
  *(&v61[2] + 10) = *&v67[16];
  *(&v61[3] + 1) = *&v67[23];
  v43 = v61[1];
  *a2 = v61[0];
  a2[1] = v43;
  v44 = v61[3];
  a2[2] = v61[2];
  a2[3] = v44;
  v45 = sub_1000040A8(&qword_10035C890);
  sub_100006C20(v41, a2 + *(v45 + 48), &qword_10035C888);
  sub_100006C20(v61, &v62, &qword_10035B3C0);
  sub_100008FA0(v40, &qword_10035C888);
  sub_100008FA0(v41, &qword_10035C888);
  v62 = v42;
  v63 = 256;
  v64 = *v67;
  v65 = *&v67[8];
  *v66 = *&v67[16];
  *&v66[14] = *&v67[23];
  return sub_100008FA0(&v62, &qword_10035B3C0);
}

void sub_1000CF4F4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v3 != 2 && (v3 & 1) != 0 || (v4 = *(v2 + 58), v4 != 2) && (v4 & 1) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 512;
    v13 = 0.0;
    goto LABEL_21;
  }

  v10 = 0;
  if ((*(v2 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24) & 1) != 0 || (v14 = *(v1 + 16), v14 == 4) || v14 == 3 && !*(*(*(v1 + 32) + 48) + 136))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0.0;
    v12 = 512;
    goto LABEL_21;
  }

  v15 = a1;
  Angle.animatableData.getter();
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  v5 = 0x4012D97C7F3321D2;
  if (v14 == 2)
  {
    v8 = 0x4008000000000000;
    v7 = 0x401A000000000000;
    v6 = 0x403E400000000000;
    v16 = 40.0;
  }

  else
  {
    if (v14 != 3)
    {
      v20 = 0;
      v13 = -8.0;
      v6 = 0x405EC00000000000;
      v7 = 0x402A000000000000;
      v8 = 0x4018000000000000;
      v9 = 0x403A000000000000;
      v11 = 0x4073200000000000;
      v10 = 0x4074400000000000;
      goto LABEL_17;
    }

    v8 = 0;
    v16 = 10.0;
    v7 = 0x4008000000000000;
    v6 = 0x4026000000000000;
  }

  sub_1000CCB08();
  v10 = v17;
  v11 = v18;
  sub_1000CCB08();
  v9 = 0;
  v13 = v16 + v19 * -0.5;
  v20 = 1;
LABEL_17:
  if (sub_1000CDFB8())
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v12 = v21 | v20;
  a1 = v15;
LABEL_21:
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v13;
  *(a1 + 56) = v9;
  *(a1 + 64) = v12;
}

__n128 sub_1000CF730@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 == 2)
  {
    v10 = 3.0;
    v11 = 18.0;
LABEL_8:
    sub_1000CE404(&v32);
    v12 = v33;
    v13 = v35;
    v19 = v32;
    v14 = sub_1000CF9CC();
    *v23 = v11;
    *&v23[8] = v19;
    *&v23[24] = v12;
    v24 = v34;
    *&v25 = v13;
    *(&v25 + 1) = v10;
    v26 = v14;
    v38 = v34;
    *v39 = v25;
    *&v39[16] = v14;
    v36 = *v23;
    v37 = *&v23[16];
    v27 = 0;
    v39[24] = 0;
    goto LABEL_9;
  }

  if (v3 == 3)
  {
    sub_1000CE404(&v32);
    v18 = v32;
    v7 = v33;
    v8 = v35;
    v9 = sub_1000CF9CC();
    *v23 = 0;
    *&v23[8] = v18;
    *&v23[24] = v7;
    v24 = v34;
    v25 = v8;
    v26 = v9;
    v38 = v34;
    *v39 = v8;
    *&v39[16] = v9;
    v36 = *v23;
    v37 = *&v23[16];
    v27 = 1;
    v39[24] = 1;
LABEL_9:
    sub_1000D0710(v23, v29);
    sub_1000D0614();
    sub_1000D0668();
    _ConditionalContent<>.init(storage:)();
    v38 = *&v21[16];
    *v39 = v22[0];
    *&v39[9] = *(v22 + 9);
    v36 = v20;
    v37 = *v21;
    v28 = 0;
    v39[25] = 0;
    sub_1000040A8(&qword_10035C780);
    sub_1000D0588();
    sub_1000D06BC();
    _ConditionalContent<>.init(storage:)();
    sub_1000D0748(v23);
    v38 = v30;
    *v39 = *v31;
    *&v39[10] = *&v31[10];
    v36 = *v29;
    v37 = *&v29[16];
    goto LABEL_10;
  }

  if (v3 != 4)
  {
    v10 = 6.0;
    v11 = 68.0;
    goto LABEL_8;
  }

  sub_1000CE404(&v20);
  v17 = v20;
  v4 = *v21;
  v5 = *&v21[24];
  v6 = sub_1000CF9CC();
  v23[0] = 1;
  *&v29[8] = v17;
  *v29 = 0;
  *&v29[24] = v4;
  v30 = *&v21[8];
  *v31 = v5;
  *&v31[16] = v6;
  v31[25] = 1;
  sub_1000040A8(&qword_10035C780);
  sub_1000D0588();
  sub_1000D06BC();
  _ConditionalContent<>.init(storage:)();
LABEL_10:
  v15 = *v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = v15;
  *(a1 + 58) = *&v39[10];
  result = v37;
  *a1 = v36;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000CF9CC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v1 + 48) + 136);
  if (v2 > 9)
  {
    goto LABEL_10;
  }

  if (((1 << v2) & 0x25C) != 0)
  {
    v3 = objc_opt_self();
    v4 = &selRef_systemGrayColor;
    goto LABEL_11;
  }

  if (((1 << v2) & 0x22) != 0)
  {
    v3 = objc_opt_self();
    v4 = &selRef_systemOrangeColor;
    goto LABEL_11;
  }

  if (((1 << v2) & 0x180) != 0)
  {
    v5 = *(v1 + 56);
    v3 = objc_opt_self();
    v4 = &selRef_systemGrayColor;
    if (v5)
    {
      v4 = &selRef_systemOrangeColor;
    }
  }

  else
  {
LABEL_10:
    v3 = objc_opt_self();
    v4 = &selRef_systemGreenColor;
  }

LABEL_11:
  v6 = [v3 *v4];

  return Color.init(uiColor:)();
}

uint64_t sub_1000CFABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];

  v7 = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  v9 = v8;
  v10 = static Color.black.getter();

  v11 = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  v13 = v12;

  if (v5)
  {
    v14 = v5;
    v15 = v5;
  }

  else
  {
    v15 = static Color.clear.getter();
    v14 = 0;
  }

  swift_retain_n();

  static Color.black.getter();
  v16 = Color.opacity(_:)();

  v17 = static Animation.easeInOut(duration:)();
  v18 = v4;
  if (v5)
  {

    v18 = v14;
  }

  *&v25 = v11;
  *(&v25 + 1) = v3;
  *&v26 = v13;
  *(&v26 + 1) = v4;
  *&v27 = v15;
  *(&v27 + 1) = v16;
  v28 = v6;
  *&v29 = 0;
  *(&v29 + 1) = v17;
  v30 = v18;
  *a2 = v7;
  *(a2 + 8) = v3;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  v19 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v19;
  v20 = v27;
  v21 = v28;
  v22 = v29;
  *(a2 + 112) = v18;
  *(a2 + 80) = v21;
  *(a2 + 96) = v22;
  *(a2 + 64) = v20;
  v31[0] = v11;
  v31[1] = v3;
  v31[2] = v13;
  v31[3] = v4;
  v31[4] = v15;
  v31[5] = v16;
  v31[6] = v6;
  v31[7] = 0;
  v31[8] = 0;
  v31[9] = v17;
  v31[10] = v18;

  sub_100006C20(&v25, &v24, &qword_10035C7E0);
  sub_100008FA0(v31, &qword_10035C7E0);
}

uint64_t sub_1000CFCA8()
{
  v1 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v1;
  v17 = *(v0 + 64);
  v2 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v2;
  v3 = static Alignment.center.getter();
  v5 = v4;
  sub_1000CFABC(v16, &v28);
  v22 = v32;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v18 = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v26[0] = v28;
  v26[1] = v29;
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v26[5] = v33;
  v26[6] = v34;
  v27 = v35;
  sub_100006C20(&v18, &v7, &qword_10035C7C8);
  sub_100008FA0(v26, &qword_10035C7C8);
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v8 = v18;
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  sub_1000040A8(&qword_10035C7D0);
  sub_100009274(&qword_10035C7D8, &qword_10035C7D0);
  View.accessibility(hidden:)();
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v28 = v7;
  v29 = v8;
  return sub_100008FA0(&v28, &qword_10035C7D0);
}

uint64_t sub_1000CFE6C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = *(v0 + 40);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v5[19] = v6;
  *&v5[11] = *&v5[35];
  *&v5[3] = *&v5[27];
  *&v3[10] = *v5;
  *v3 = v1;
  *&v3[8] = 256;
  *&v3[26] = *&v5[8];
  *&v3[42] = *&v5[16];
  *&v3[56] = *(&v6 + 1);
  sub_1000040A8(&qword_10035B3C0);
  sub_1000A1A94();
  View.accessibility(hidden:)();
  v4[0] = *v3;
  v4[1] = *&v3[16];
  v4[2] = *&v3[32];
  v4[3] = *&v3[48];
  return sub_100008FA0(v4, &qword_10035B3C0);
}

uint64_t sub_1000CFFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v2 = sub_1000040A8(&qword_10035C7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v23[19] = v24;
  *&v23[11] = *&v23[35];
  *&v23[3] = *&v23[27];
  *&v29[10] = *v23;
  *&v29[26] = *&v23[8];
  *v29 = v14;
  *&v29[8] = 256;
  *&v29[42] = *&v23[16];
  *&v29[56] = *(&v24 + 1);
  sub_1000040A8(&qword_10035B3C0);
  sub_1000A1A94();
  View.accessibility(hidden:)();
  v28[0] = *v29;
  v28[1] = *&v29[16];
  v28[2] = *&v29[32];
  v28[3] = *&v29[48];
  sub_100008FA0(v28, &qword_10035B3C0);
  v15 = *(v19 + 64);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v22[38] = v27;
  *&v22[22] = v26;
  *&v22[6] = v25;
  *(v21 + 10) = *v22;
  *&v21[0] = v15;
  WORD4(v21[0]) = 256;
  *(&v21[1] + 10) = *&v22[16];
  *(&v21[2] + 10) = *&v22[32];
  *(&v21[3] + 1) = *(&v27 + 1);

  View.accessibility(hidden:)();
  *v29 = v21[0];
  *&v29[16] = v21[1];
  *&v29[32] = v21[2];
  *&v29[48] = v21[3];
  sub_100008FA0(v29, &qword_10035B3C0);
  sub_100006C20(v13, v7, &qword_10035C7F0);
  sub_100006C20(v10, v4, &qword_10035C7F0);
  v16 = v20;
  sub_100006C20(v7, v20, &qword_10035C7F0);
  v17 = sub_1000040A8(&qword_10035C7F8);
  sub_100006C20(v4, v16 + *(v17 + 48), &qword_10035C7F0);
  sub_100008FA0(v10, &qword_10035C7F0);
  sub_100008FA0(v13, &qword_10035C7F0);
  sub_100008FA0(v4, &qword_10035C7F0);
  return sub_100008FA0(v7, &qword_10035C7F0);
}

uint64_t sub_1000D02FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v9 = *(v1 + 64);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  *a1 = static Alignment.center.getter();
  a1[1] = v5;
  v6 = sub_1000040A8(&qword_10035C7E8);
  return sub_1000CFFCC(v8, a1 + *(v6 + 44));
}

uint64_t sub_1000D0368()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for RadarMetrics.Presentation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_19;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_19:
  v7 = *a1;
  if (v7 < 2)
  {
    return 0;
  }

  v8 = (v7 + 2147483646) & 0x7FFFFFFF;
  result = v8 - 2;
  if (v8 <= 2)
  {
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for RadarMetrics.Presentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000D0544(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000D0560(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1000D0588()
{
  result = qword_10035C788;
  if (!qword_10035C788)
  {
    sub_100008CF0(&qword_10035C780);
    sub_1000D0614();
    sub_1000D0668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C788);
  }

  return result;
}

unint64_t sub_1000D0614()
{
  result = qword_10035C790;
  if (!qword_10035C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C790);
  }

  return result;
}

unint64_t sub_1000D0668()
{
  result = qword_10035C798;
  if (!qword_10035C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C798);
  }

  return result;
}

unint64_t sub_1000D06BC()
{
  result = qword_10035C7A0;
  if (!qword_10035C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C7A0);
  }

  return result;
}

unint64_t sub_1000D0778()
{
  result = qword_10035C7B0;
  if (!qword_10035C7B0)
  {
    sub_100008CF0(&qword_10035C7A8);
    sub_1000D0804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C7B0);
  }

  return result;
}

unint64_t sub_1000D0804()
{
  result = qword_10035C7B8;
  if (!qword_10035C7B8)
  {
    sub_100008CF0(&qword_10035C7C0);
    sub_100009274(&qword_10035B770, &qword_10035B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C7B8);
  }

  return result;
}

uint64_t sub_1000D08BC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  State.init(wrappedValue:)();
  *a5 = v15;
  *(a5 + 8) = v16;
  *(a5 + 16) = a1;
  v10 = _s8SOSBuddy19TimelineViewContentVMa_0();
  v11 = *(v10 + 40);
  v12 = type metadata accessor for Date();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  v14 = (a5 + *(v10 + 44));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t sub_1000D09A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v2 = a1 - 8;
  v71 = *(a1 - 8);
  v72 = a1;
  __chkstk_darwin(a1);
  v70 = v3;
  v68 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v2 + 24);
  v58 = *(v4 - 8);
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ModifiedContent();
  v62 = *(v8 - 8);
  __chkstk_darwin(v8);
  v55 = &v51 - v9;
  v10 = type metadata accessor for ModifiedContent();
  v65 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v51 - v11;
  sub_100008CF0(&qword_10035C9D0);
  v12 = type metadata accessor for ModifiedContent();
  v67 = *(v12 - 8);
  __chkstk_darwin(v12);
  v66 = &v51 - v13;
  v14 = type metadata accessor for Date();
  v84 = *(v2 + 32);
  v15 = v84;
  v85 = &protocol witness table for _RotationEffect;
  WitnessTable = swift_getWitnessTable();
  v82 = WitnessTable;
  v83 = &protocol witness table for _ScaleEffect;
  v16 = swift_getWitnessTable();
  v17 = sub_100009274(&qword_10035C9D8, &qword_10035C9D0);
  v53 = v16;
  v80 = v16;
  v81 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_1000D26C0(&unk_10035C9E0, &type metadata accessor for Date);
  v76 = v12;
  v77 = v14;
  v63 = v14;
  v60 = v18;
  v78 = v18;
  v79 = v19;
  v57 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v54 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v56 = &v51 - v24;
  v25 = v74;
  (*(v74 + *(v2 + 52)))(v23);
  v26 = v25[16] == 1;
  v69 = v4;
  v61 = v15;
  if (v26)
  {
    v27 = v25;
    v28 = *v25;
    v51 = v10;
    v29 = *(v27 + 1);
    LOBYTE(v76) = v28;
    v77 = v29;
    sub_1000040A8(&qword_100354AA8);
    State.wrappedValue.getter();
    static UnitPoint.center.getter();
    v30 = v55;
    View.rotationEffect(_:anchor:)();
    (*(v58 + 8))(v7, v4);
    LOBYTE(v76) = v28;
    v77 = v29;
    v10 = v51;
    sub_1000040A8(&qword_100354AA8);
    State.wrappedValue.getter();
    v32 = v30;
  }

  else
  {
    static UnitPoint.center.getter();
    v31 = v55;
    View.rotationEffect(_:anchor:)();
    (*(v58 + 8))(v7, v4);
    v32 = v31;
  }

  static UnitPoint.center.getter();
  v33 = v64;
  View.scaleEffect(_:anchor:)();
  (*(v62 + 8))(v32, v8);
  static Animation.easeInOut(duration:)();
  v34 = v74;
  v35 = *(v74 + 8);
  LOBYTE(v76) = *v74;
  v77 = v35;
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  LOBYTE(v76) = v75;
  v36 = v66;
  View.animation<A>(_:value:)();

  (*(v65 + 8))(v33, v10);
  v38 = v71;
  v37 = v72;
  v39 = v68;
  (*(v71 + 16))(v68, v34, v72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v42 = v61;
  *(v41 + 16) = v69;
  *(v41 + 24) = v42;
  (*(v38 + 32))(v41 + v40, v39, v37);
  v43 = swift_checkMetadataState();
  v44 = v54;
  v45 = v60;
  v46 = v57;
  View.onChange<A>(of:initial:_:)();

  (*(v67 + 8))(v36, v12);
  v76 = v12;
  v77 = v43;
  v78 = v45;
  v79 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v56;
  sub_10009A58C(v44, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = *(v59 + 8);
  v49(v44, OpaqueTypeMetadata2);
  sub_10009A58C(v48, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v49)(v48, OpaqueTypeMetadata2);
}

uint64_t sub_1000D1278()
{

  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1000D1314@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v37 = a6;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  v33 = type metadata accessor for PeriodicTimelineSchedule();
  __chkstk_darwin(v33);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s8SOSBuddy19TimelineViewContentVMa_0();
  v32 = sub_1000D26C0(qword_10035C948, &type metadata accessor for PeriodicTimelineSchedule);
  v16 = type metadata accessor for TimelineView();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  static Date.now.getter();
  (*(v7 + 16))(v9, v12, v6);
  PeriodicTimelineSchedule.init(from:by:)();
  (*(v7 + 8))(v12, v6);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v30;
  *(v23 + 24) = v24;
  *(v23 + 32) = v34;
  *(v23 + 40) = v35;
  *(v23 + 48) = v36;

  WitnessTable = swift_getWitnessTable();
  sub_100003E2C(v14, sub_1000D22F8, v23, v33, v15, v32, WitnessTable);
  v38 = WitnessTable;
  v26 = swift_getWitnessTable();
  sub_10009A58C(v19, v16, v26);
  v27 = *(v17 + 8);
  v27(v19, v16);
  sub_10009A58C(v22, v16, v26);
  return (v27)(v22, v16);
}

uint64_t sub_1000D16A0@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19[0] = a2;
  v19[1] = a4;
  v6 = type metadata accessor for Date();
  __chkstk_darwin(v6 - 8);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8SOSBuddy19TimelineViewContentVMa_0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  sub_1000040A8(qword_100354AB8);
  TimelineView.Context.date.getter();

  sub_1000D08BC(a1, v8, v19[0], a3, v12);
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v12, v9, WitnessTable);
  v17 = *(v10 + 8);
  v17(v12, v9);
  sub_10009A58C(v15, v9, WitnessTable);
  return (v17)(v15, v9);
}

double sub_1000D18AC(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1000D18D0(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000D1924(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1000D196C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D1AA4()
{
  result = qword_10035C800;
  if (!qword_10035C800)
  {
    sub_100008CF0(&qword_10035C808);
    sub_100009274(&qword_10035C7D8, &qword_10035C7D0);
    sub_1000D26C0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C800);
  }

  return result;
}

unint64_t sub_1000D1B90()
{
  result = qword_10035C810;
  if (!qword_10035C810)
  {
    sub_100008CF0(&qword_10035C7F0);
    sub_1000A1A94();
    sub_1000D26C0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C810);
  }

  return result;
}

unint64_t sub_1000D1CB4()
{
  result = qword_10035C828;
  if (!qword_10035C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C828);
  }

  return result;
}

unint64_t sub_1000D1D0C()
{
  result = qword_10035C830;
  if (!qword_10035C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C830);
  }

  return result;
}

unint64_t sub_1000D1D68()
{
  result = qword_10035C848;
  if (!qword_10035C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C848);
  }

  return result;
}

unint64_t sub_1000D1DD0()
{
  result = qword_10035C850;
  if (!qword_10035C850)
  {
    sub_100008CF0(&qword_10035C840);
    sub_100009274(&qword_10035C858, &qword_10035C838);
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C850);
  }

  return result;
}

unint64_t sub_1000D1ED8()
{
  result = qword_10035C860;
  if (!qword_10035C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C860);
  }

  return result;
}

uint64_t sub_1000D1F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035C878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1FAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000D1FE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000D2030(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000D20B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000D2100(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000D21FC()
{
  result = qword_10035C938;
  if (!qword_10035C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C938);
  }

  return result;
}

unint64_t sub_1000D2254()
{
  result = qword_10035C940;
  if (!qword_10035C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035C940);
  }

  return result;
}

uint64_t sub_1000D22C0()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1000D2308()
{
  sub_1000D2550();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_100006FE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000D23C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000D2494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_1000D2550()
{
  if (!qword_100359838)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100359838);
    }
  }
}

uint64_t sub_1000D25A0()
{
  type metadata accessor for PeriodicTimelineSchedule();
  _s8SOSBuddy19TimelineViewContentVMa_0();
  sub_1000D26C0(qword_10035C948, &type metadata accessor for PeriodicTimelineSchedule);
  type metadata accessor for TimelineView();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000D26C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D2708()
{
  v1 = (_s8SOSBuddy19TimelineViewContentVMa_0() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000D280C()
{
  _s8SOSBuddy19TimelineViewContentVMa_0();

  return sub_1000D1278();
}

uint64_t sub_1000D2890()
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035C9D0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Date();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100009274(&qword_10035C9D8, &qword_10035C9D0);
  swift_getWitnessTable();
  sub_1000D26C0(&unk_10035C9E0, &type metadata accessor for Date);
  return swift_getOpaqueTypeConformance2();
}

void sub_1000D2A54()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 80);
    sub_10001D630(0, &qword_10035BA10);
    v5 = static OS_dispatch_queue.main.getter();
    sub_1000040A8(&qword_10035CF88);
    v6 = swift_allocObject();
    swift_weakInit();
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {

      v7 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {

      v7 = &_swiftEmptySetSingleton;
    }

    *(v6 + 32) = v7;
    swift_weakAssign();
    *(v6 + 24) = v5;

    sub_1001A9054(v8, sub_1000D322C, 0);

    sub_1001A9358(v9, sub_1000DC418, 0);

    sub_1001A965C(v10, sub_1000D3314, 0);

    sub_1001A965C(v11, sub_1000D34C4, 0);

    sub_1001A9358(v12, sub_1000DC2E8, v1);

    sub_1001A9960(v13, sub_1000D3D4C, 0);

    sub_1001A9C64(v14, sub_1000D3DBC, 0);

    sub_1001A9C64(v15, sub_1000D3DDC, 0);

    sub_1001A9054(v16, sub_1000D3FE4, 0);

    v17 = *(*(v3 + 88) + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = v4;

    swift_unknownObjectRetain();
    sub_1001A9054(v17, sub_1000DC328, v18);

    sub_1001A9F68(v19, sub_1000D41E0, 0);

    sub_1001A9F68(v20, sub_1000D425C, 0);

    sub_1001A9054(v21, sub_1000D429C, 0);

    sub_1001AA26C(v22, sub_1000D44EC, 0);

    sub_1001A9054(v23, sub_1000D45A0, 0);

    sub_1001A9054(v24, sub_1000D4608, 0);

    sub_1001A9054(v25, sub_1000D4684, 0);

    sub_1001A9054(v26, sub_1000D46C4, 0);

    v28 = sub_1001AA570(v27, sub_1000D4740, 0);

    swift_unknownObjectRelease();

    *(v1 + 96) = v28;
  }

  else
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F53C(v29, qword_100381CC8);
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "Unexpected _deps == nil", v31, 2u);
    }
  }
}

uint64_t sub_1000D322C()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "userAttentionTracker requested syncState", v3, 2u);
  }

  return sub_1000D4C90();
}

uint64_t sub_1000D3314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CC8);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;

    sub_1000040A8(&unk_10035CF90);
    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "bannerExpandedByExternalRequest - %s", v6, 0xCu);
    sub_100008964(v7);
  }

  sub_100220988(v2);

  return sub_1000D4C90();
}

uint64_t sub_1000D34C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381CC8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    v23[1] = v8;
    *v13 = 136315138;
    v23[2] = v7;
    v24 = v9;

    sub_1000040A8(&unk_10035CF90);
    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, v23);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "bannerCollapsedByExternalRequest - %s", v13, 0xCu);
    sub_100008964(v14);
  }

  if (*(*(*(a1 + 88) + 64) + 16))
  {

    sub_10024EBE4(0);
  }

  result = sub_1000D4C90();
  if (v9 != 2 && (v9 & 1) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = *(Strong + 48);

      swift_unknownObjectRelease();
      v21 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
      swift_beginAccess();
      sub_100006C20(v20 + v21, v6, &qword_100354F50);
    }

    else
    {
      v22 = type metadata accessor for ConnectionAssistantBanner.Mode();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    }

    PassthroughSubject.send(_:)();

    return sub_100008FA0(v6, &qword_100354F50);
  }

  return result;
}

uint64_t sub_1000D37C8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000F53C(v13, qword_100381CC8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "removedByExternalRequest", v16, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v9, v6);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000DC3E0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032ED90;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  v19 = v6;
  v20 = v5;
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v21 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v21);
  (*(v26 + 8))(v20, v27);
  return (v25)(v12, v19);
}

uint64_t sub_1000D3C38()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Check if the banner is required still after it was forecefully removed", v3, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000D4C90();
  }

  return result;
}

uint64_t sub_1000D3D4C(uint64_t a1, char *a2)
{
  v2 = *a2;

  sub_10021FF1C(v2);

  PassthroughSubject.send(_:)();
}

uint64_t sub_1000D3DFC(uint64_t a1, __int128 *a2, const char *a3, void (*a4)(__int128 *))
{
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  v7 = a2[3];
  v22 = a2[2];
  v23 = v7;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  sub_1000DC330(&v20, v19);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  sub_1000DC38C(&v20);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    sub_1000DC330(&v20, v17);
    v13 = String.init<A>(describing:)();
    v15 = sub_10017C9E8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_100008964(v12);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    swift_unknownObjectRelease();
    sub_1000DC330(&v20, v19);
    a4(&v20);
  }

  return result;
}

uint64_t sub_1000D3FE4()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    sub_1000040A8(&qword_10035CF18);
    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Active banner layout did change: %{public}s", v3, 0xCu);
    sub_100008964(v4);
  }

  v8 = sub_1000D51F4();
  return sub_10008B264(v8 & 0xFF0101);
}

uint64_t sub_1000D418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 88) + 48);

  sub_100220B48(v3);

  return sub_1000D4C90();
}

uint64_t sub_1000D41E0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;

  sub_10024E66C(v3);

  v4 = *(a1 + 56);
  *(v4 + qword_100365780) = v3;
  v5 = sub_1000D9818() & 1;
  v6 = *(v4 + qword_100365788);
  *(v4 + qword_100365788) = v5;
  sub_1000D8A04(v6);
  return sub_1000D4C90();
}

uint64_t sub_1000D425C()
{

  sub_100220D94();

  return sub_1000D4C90();
}

uint64_t sub_1000D429C(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);

    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(v6 + v7, v4, &qword_100354F50);
    v8 = type metadata accessor for ConnectionAssistantBanner.Mode();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      sub_100008FA0(v4, &qword_100354F50);
      if (*(*(*(a1 + 88) + 64) + 16))
      {

        sub_10024EBE4(0);

        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000F53C(v9, qword_100381CC8);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Banner mode is nil, released all assertions", v12, 2u);
        }

        sub_1000D4C90();
      }
    }

    else
    {

      return sub_100008FA0(v4, &qword_100354F50);
    }
  }

  return result;
}

uint64_t sub_1000D44EC(uint64_t a1, _BYTE *a2)
{
  if (((1 << *a2) & 0xFEC) == 0)
  {
    v4 = sub_100234000(&off_100323430);

    sub_10024EBE4(v4);
    goto LABEL_6;
  }

  v2 = *(*(a1 + 88) + 105);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = sub_100234000(&off_100323458);

    sub_10021FB28(v3, 0);
LABEL_6:
  }

  return sub_1000D4C90();
}

uint64_t sub_1000D45A0()
{
  v0 = sub_100234000(&off_100323480);

  sub_10021FB28(0, v0);

  return sub_1000D4C90();
}

uint64_t sub_1000D4608()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();

    sub_10024E970();
  }

  return sub_1000D4C90();
}

uint64_t sub_1000D4684()
{

  sub_10021FFA8();

  return sub_1000D4C90();
}

uint64_t sub_1000D46C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*(Strong + 64) + 56);

    swift_unknownObjectRelease();

    sub_100220718(v1);
  }

  return sub_1000D4C90();
}

void sub_1000D4764(double a1, double a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + 48);

    swift_unknownObjectRelease();
    v10 = *(v9 + 64);
    v11 = *(v9 + 72);
    if (v10 != a1 || v11 != a2)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v9 + 64) = a1;
    *(v9 + 72) = a2;
    sub_100258F64(v10, v11);
  }

  *v20 = a1;
  *&v20[1] = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0;
  v24 = &_swiftEmptySetSingleton;
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    sub_1002580C4(v20);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    sub_10025825C(v20);
  }

  sub_10021F9A4();

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_allocObject();
  swift_weakInit();

  v15 = sub_10008ABBC(sub_1000DC278, v14);

  if (v15)
  {
    return;
  }

  if (qword_100353A28 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381CC8);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to start statusBarAgent", v19, 2u);
  }
}

uint64_t sub_1000D4B28()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10008AFFC();
  sub_10001D630(0, &qword_10035BA10);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_unknownObjectWeakAssign();
    sub_1000D9014(2);

    sub_10021F9A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D4C90()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*(Strong + 64) + 32);

    swift_unknownObjectRelease();
    v2 = *(v1 + 104);
    v9 = *(v1 + 88);
    v10 = v2;
    v11 = *(v1 + 120);
    v12 = *(v1 + 136);
    v3 = *(v1 + 72);
    v7 = *(v1 + 56);
    v8 = v3;
    sub_100006C20(&v7, &v13, &unk_10035CEF0);

    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v13 = v7;
    v14 = v8;
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
  }

  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v7 = v13;
  v8 = v14;
  sub_100220FE8(&v7);
  sub_100008FA0(&v13, &unk_10035CEF0);

  v4 = sub_1000D4DFC();
  sub_1000D9014(v4);
  v5 = sub_1000D51F4();
  return sub_10008B264(v5 & 0xFF0101);
}

uint64_t sub_1000D4DFC()
{
  v1 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v1 - 8);
  v3 = v33 - v2 + 22;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = *(*(Strong + 64) + 32), , swift_unknownObjectRelease(), v6 = *(v5 + 104), v36 = *(v5 + 88), v37 = v6, v38 = *(v5 + 120), v39 = *(v5 + 136), v7 = *(v5 + 72), v34 = *(v5 + 56), v35 = v7, sub_100006C20(&v34, v33, &unk_10035CEF0), , *(&v34 + 1)))
  {
    v8 = v36;

    sub_100008FA0(&v34, &unk_10035CEF0);
    v9 = sub_100233FEC(&off_100323368);
    if (v8)
    {
      v10 = sub_100204870(v8, v9);

      goto LABEL_7;
    }
  }

  else
  {
    sub_100233FEC(&off_100323368);
  }

  v10 = 0;
LABEL_7:

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + 48);

    swift_unknownObjectRelease();
    v13 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(v12 + v13, v3, &qword_100354F50);

    v14 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v15 = (*(*(v14 - 8) + 48))(v3, 1, v14) == 1;
  }

  else
  {
    v16 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v15 = 1;
    (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  }

  sub_100008FA0(v3, &qword_100354F50);
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17 || (v18 = *(v17 + 32), , swift_unknownObjectRelease(), v19 = *(v18 + 80), , v19 == 2))
  {
    if (((v10 | v15) & 1) == 0)
    {
      goto LABEL_13;
    }

    return 2;
  }

  if ((v10 | v15) & 1) != 0 || (v19)
  {
    return 2;
  }

LABEL_13:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20 && (v21 = *(*(v20 + 64) + 32), , swift_unknownObjectRelease(), v22 = *(v21 + 104), v36 = *(v21 + 88), v37 = v22, v38 = *(v21 + 120), v39 = *(v21 + 136), v23 = *(v21 + 72), v34 = *(v21 + 56), v35 = v23, sub_100006C20(&v34, v33, &unk_10035CEF0), , *(&v34 + 1)))
  {
    v24 = v34;
    sub_100008FA0(&v34, &unk_10035CEF0);
    v25 = v24 == 5;
  }

  else
  {
    v25 = 0;
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = *(v26 + 40);

    swift_unknownObjectRelease();
    v28 = *(v27 + 41);
  }

  else
  {
    v28 = 0;
  }

  v29 = *(*(*(v0 + 88) + 64) + 16);
  if (((v25 | v28) & 1) == 0 && !v29)
  {
    return 2;
  }

  if ((sub_1000D9818() & 1) == 0)
  {

    v31 = sub_100221C74();

    if (v31)
    {
      return 2;
    }
  }

  return v29 != 0;
}

uint64_t sub_1000D51F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = *(*(Strong + 64) + 32), , swift_unknownObjectRelease(), v3 = *(v2 + 88), v4 = *(v2 + 120), v31 = *(v2 + 104), v32 = v4, v33 = *(v2 + 136), v5 = *(v2 + 72), v28 = *(v2 + 56), v29 = v5, v30 = v3, sub_100006C20(&v28, v27, &unk_10035CEF0), , !*(&v28 + 1)))
  {
    sub_100233FEC(&off_100323390);
    goto LABEL_6;
  }

  v6 = v30;

  sub_100008FA0(&v28, &unk_10035CEF0);
  v7 = sub_100233FEC(&off_100323390);
  if (!v6)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = sub_100204870(v6, v7);

LABEL_7:

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9 && (v10 = *(*(v9 + 64) + 32), , swift_unknownObjectRelease(), v11 = *(v10 + 88), v12 = *(v10 + 120), v31 = *(v10 + 104), v32 = v12, v33 = *(v10 + 136), v13 = *(v10 + 72), v28 = *(v10 + 56), v29 = v13, v30 = v11, sub_100006C20(&v28, v27, &unk_10035CEF0), , *(&v28 + 1)))
  {
    v14 = v28;
    sub_100008FA0(&v28, &unk_10035CEF0);
    v15 = v14 != 5;
  }

  else
  {
    v15 = 1;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + 32);

    swift_unknownObjectRelease();
    v18 = *(v17 + 80);
  }

  else
  {
    v18 = 0;
  }

  v19 = (*(*(v0 + 56) + qword_100365798) == 2) | v8 | v15 | v18;
  if ((v19 & 1) != 0 || (v20 = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    v23 = 0;
  }

  else
  {
    v21 = *(*(v20 + 64) + 96);

    swift_unknownObjectRelease();
    v22 = *(*(v21 + 48) + 136) < 2u;

    v23 = v22 << 8;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    v24 = sub_1001DE534();

    v25 = v24 << 16;
  }

  else
  {
    v25 = 0;
  }

  return v23 | v25 | ((v19 & 1) == 0);
}

uint64_t sub_1000D54C0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);

    swift_unknownObjectRelease();
    v4 = *(v3 + 41);

    if (v4 != 2 && (v4 & 1) != 0)
    {

      sub_100220988(1);
    }
  }

  sub_1000D4C90();
  v5 = (*(v1 + 56) + qword_100365778);
  result = swift_beginAccess();
  if (*v5)
  {
    v7 = swift_unknownObjectRetain();
    sub_1000D9510(v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000D5598()
{
  sub_1000D837C();

  return swift_deallocClassInstance();
}

void *sub_1000D55EC()
{
  v1 = v0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  v0[2] = PassthroughSubject.init()();
  sub_1000040A8(&unk_10035CEC0);
  swift_allocObject();
  v0[3] = PassthroughSubject.init()();
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  v0[4] = PassthroughSubject.init()();
  swift_allocObject();
  v0[5] = PassthroughSubject.init()();
  swift_allocObject();
  v0[6] = PassthroughSubject.init()();
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000100294A20;
    v4 = 0xD000000000000012;
  }

  v7 = objc_allocWithZone(sub_1000040A8(&unk_10035CED0));
  v1[7] = sub_1000D8B5C(v4, v6);
  v1[8] = [objc_allocWithZone(type metadata accessor for StatusBarAgent()) init];
  v1[10] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionUserAttentionTracker();
  swift_allocObject();
  v1[11] = sub_100222248();
  v1[12] = 0;
  return v1;
}

void sub_1000D58DC()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10001D630(0, &qword_10035BA10);
    v2 = static OS_dispatch_queue.main.getter();
    sub_1000040A8(&qword_10035CF10);
    v3 = swift_allocObject();
    swift_weakInit();
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {

      v4 = sub_100233B1C(_swiftEmptyArrayStorage);
    }

    else
    {

      v4 = &_swiftEmptySetSingleton;
    }

    *(v3 + 32) = v4;
    swift_weakAssign();
    *(v3 + 24) = v2;

    sub_1001AA874(v5, sub_1000D5F7C, 0);

    sub_1001AAB78(v6, sub_1000DC418, 0);

    sub_1001AAB78(v7, sub_1000D60FC, 0);

    sub_1001AAE7C(v8, sub_1000D6290, 0);

    sub_1001AB180(v9, sub_1000D6308, 0);

    sub_1001AB180(v10, sub_1000D6498, 0);

    sub_1001AA874(v11, sub_1000D66B0, 0);

    sub_1001AB484(v12, sub_1000D66D8, 0);

    sub_1001AA874(v13, sub_1000D6790, 0);

    sub_1001AA874(v14, sub_1000D67FC, 0);

    sub_1001AA874(v15, sub_1000D687C, 0);

    sub_1001AB788(v16, sub_1000D68C0, 0);

    sub_1001AB788(v17, sub_1000D6914, 0);

    sub_1001AA874(v18, sub_1000D6958, 0);

    sub_1001AA874(v19, sub_1000D6BAC, 0);

    v21 = sub_1001ABA8C(v20, sub_1000D66B0, 0);

    swift_unknownObjectRelease();

    *(v1 + 96) = v21;
  }

  else
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000F53C(v22, qword_100381CC8);
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v23, "Unexpected _deps == nil", v24, 2u);
    }
  }
}

uint64_t sub_1000D5F7C()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "userAttentionTracker requested syncState", v3, 2u);
  }

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D6064()
{

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_1000D60FC(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (*(*(*(a1 + 88) + 64) + 16))
  {

    sub_10024EBE4(0);
  }

  sub_1000D7740();
  sub_1000D7DB8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 48);

    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(v6 + v7, v4, &qword_100354F50);
  }

  else
  {
    v8 = type metadata accessor for ConnectionAssistantBanner.Mode();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  PassthroughSubject.send(_:)();

  return sub_100008FA0(v4, &qword_100354F50);
}

uint64_t sub_1000D6290(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_1000D7DB8();

  sub_10021FF1C(v2);

  PassthroughSubject.send(_:)();
}

void sub_1000D6308()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CC8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    type metadata accessor for CGSize(0);
    v4 = String.init<A>(describing:)();
    v6 = sub_10017C9E8(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Preferred banner size will change: %{public}s", v2, 0xCu);
    sub_100008964(v3);
  }

  else
  {
  }
}

uint64_t sub_1000D6498(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    type metadata accessor for CGSize(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Preferred banner size did change: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + 48);

    swift_unknownObjectRelease();
    v14 = *(v13 + 48);
    v15 = *(v13 + 56);
    if (v14 != v2 || v15 != v3)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v13 + 48) = v2;
    *(v13 + 56) = v3;
    sub_100258D60(v14, v15);
  }

  return result;
}

uint64_t sub_1000D66D8(uint64_t a1, _BYTE *a2)
{
  if (((1 << *a2) & 0xFEC) == 0)
  {
    v4 = sub_100234000(&off_100323430);

    sub_10024EBE4(v4);
    goto LABEL_6;
  }

  v2 = *(*(a1 + 88) + 105);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = sub_100234000(&off_100323458);

    sub_10021FB28(v3, 0);
LABEL_6:
  }

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D6790()
{
  v0 = sub_100234000(&off_1003235C0);

  sub_10021FB28(0, v0);

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D67FC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();

    sub_10024E970();
  }

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D687C()
{

  sub_10021FFA8();

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D68C0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;

  sub_10024E66C(v2);

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D6914()
{

  sub_100220D94();

  sub_1000D7740();
  return sub_1000D7DB8();
}

uint64_t sub_1000D6958(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);

    swift_unknownObjectRelease();
    v7 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(v6 + v7, v4, &qword_100354F50);
    v8 = type metadata accessor for ConnectionAssistantBanner.Mode();
    if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
    {
      sub_100008FA0(v4, &qword_100354F50);
      if (*(*(*(a1 + 88) + 64) + 16))
      {

        sub_10024EBE4(0);

        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000F53C(v9, qword_100381CC8);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Banner mode is nil, released all assertions", v12, 2u);
        }

        sub_1000D7740();
        sub_1000D7DB8();
      }
    }

    else
    {

      return sub_100008FA0(v4, &qword_100354F50);
    }
  }

  return result;
}

uint64_t sub_1000D6BAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*(Strong + 64) + 56);

    swift_unknownObjectRelease();

    sub_100220718(v1);
  }

  sub_1000D7740();
  return sub_1000D7DB8();
}

void sub_1000D6C2C(double a1, double a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 48);

    swift_unknownObjectRelease();
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    if (v11 != a1 || v12 != a2)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    sub_100258B5C(v11, v12);
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = *(v14 + 48);

    swift_unknownObjectRelease();
    v16 = *(v15 + 48);
    v17 = *(v15 + 56);
    if (v16 != a1 || v17 != a2)
    {
      sub_1000040A8(&unk_100365610);
      sub_100009274(&qword_10035CF00, &unk_100365610);
      Subject<>.send()();
    }

    *(v15 + 48) = a1;
    *(v15 + 56) = a2;
    sub_100258D60(v16, v17);
  }

  sub_10021F9A4();

  v19 = *(v2 + 56);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (!v20)
  {
    __break(1u);
    return;
  }

  v21 = v20;
  sub_10001D630(0, &qword_10035BA10);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v22 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_19;
  }

  *(v19 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer + 8) = v21;
  swift_unknownObjectWeakAssign();
  v23 = swift_allocObject();
  swift_weakInit();

  v24 = sub_10008ABBC(sub_1000DC170, v23);

  if (v24)
  {
    return;
  }

  if (qword_100353A28 != -1)
  {
    goto LABEL_24;
  }

LABEL_19:
  v25 = type metadata accessor for Logger();
  sub_10000F53C(v25, qword_100381CC8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to start statusBarAgent", v28, 2u);
  }
}

uint64_t sub_1000D7040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D630(0, &qword_10035BA10);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = a3;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = a4;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1000D7320(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_1000D7380()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10008AFFC();
  v15 = v0;
  v5 = *(v0 + 56);
  sub_10001D630(0, &qword_10035BA10);
  *v4 = static OS_dispatch_queue.main.getter();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v2 + 104);
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v5 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__contentProducer + 8) = 0;
  swift_unknownObjectWeakAssign();
  *v4 = static OS_dispatch_queue.main.getter();
  v7(v4, v6, v1);
  v10 = _dispatchPreconditionTest(_:)();
  v9(v4, v1);
  if ((v10 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = *(v5 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable);
  if (v11)
  {
    v12 = qword_1003539A8;
    v1 = v11;
    if (v12 == -1)
    {
LABEL_5:
      sub_1001CC394(v1, 0, qword_100381C58);

      goto LABEL_6;
    }

LABEL_9:
    swift_once();
    goto LABEL_5;
  }

LABEL_6:

  sub_10021F9A4();
}

uint64_t sub_1000D75AC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 56);
  sub_10001D630(0, &qword_10035BA10);
  *v4 = static OS_dispatch_queue.main.getter();
  v6 = enum case for DispatchPredicate.onQueue(_:);
  v7 = *(v2 + 104);
  v7(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = _dispatchPreconditionTest(_:)();
  v9 = *(v2 + 8);
  result = v9(v4, v1);
  if (v8)
  {
    *v4 = static OS_dispatch_queue.main.getter();
    v7(v4, v6, v1);
    v11 = _dispatchPreconditionTest(_:)();
    result = v9(v4, v1);
    if (v11)
    {
      return *(v5 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable) != 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000D7740()
{
  v1 = v0;
  v58 = type metadata accessor for DispatchPredicate();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(*(Strong + 64) + 32);

    swift_unknownObjectRelease();
    v9 = *(v8 + 104);
    v67 = *(v8 + 88);
    v68 = v9;
    v69 = *(v8 + 120);
    v70 = *(v8 + 136);
    v10 = *(v8 + 72);
    v65 = *(v8 + 56);
    v66 = v10;
    sub_100006C20(&v65, &v71, &unk_10035CEF0);

    v73 = v67;
    v74 = v68;
    v75 = v69;
    v76 = v70;
    v71 = v65;
    v72 = v66;
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
  }

  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  sub_100220FE8(&v65);
  sub_100008FA0(&v71, &unk_10035CEF0);

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11 && (v12 = *(*(v11 + 64) + 32), , swift_unknownObjectRelease(), v13 = *(v12 + 88), v14 = *(v12 + 120), v62 = *(v12 + 104), v63 = v14, v64 = *(v12 + 136), v15 = *(v12 + 72), v60[0] = *(v12 + 56), v60[1] = v15, v61 = v13, sub_100006C20(v60, &v59, &unk_10035CEF0), , *(&v60[0] + 1)))
  {
    v16 = v61;

    sub_100008FA0(v60, &unk_10035CEF0);
    v17 = sub_100233FEC(&off_100323570);
    if (v16)
    {
      v56 = sub_100204870(v16, v17);

      goto LABEL_10;
    }
  }

  else
  {
    sub_100233FEC(&off_100323570);
  }

  v56 = 0;
LABEL_10:

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + 32);

    swift_unknownObjectRelease();
    v55 = *(v19 + 80);
  }

  else
  {
    v55 = 0;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = *(v20 + 88);

    swift_unknownObjectRelease();
    v22 = *(v21 + 48);

    v23 = (v22 == 2) | v22;
  }

  else
  {
    v23 = 1;
  }

  v54 = v23;
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + 48);

    swift_unknownObjectRelease();
    v26 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(v25 + v26, v6, &qword_100354F50);

    v27 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v28 = (*(*(v27 - 8) + 48))(v6, 1, v27) != 1;
  }

  else
  {
    v29 = type metadata accessor for ConnectionAssistantBanner.Mode();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    v28 = 0;
  }

  sub_100008FA0(v6, &qword_100354F50);
  v30 = v1;
  v31 = *(*(*(v1 + 88) + 64) + 16) != 0;
  v49 = v30;
  v32 = *(v30 + 56);
  v52 = sub_10001D630(0, &qword_10035BA10);
  v33 = static OS_dispatch_queue.main.getter();
  v35 = v57;
  v34 = v58;
  *v57 = v33;
  v37 = (v2 + 104);
  v36 = *(v2 + 104);
  v51 = enum case for DispatchPredicate.onQueue(_:);
  v50 = v36;
  v36(v35);
  v38 = _dispatchPreconditionTest(_:)();
  v39 = *(v2 + 8);
  v53 = v2 + 8;
  v39(v35, v34);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v40 = v31 && v28;
  v41 = OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable;
  if (*(v32 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable))
  {
    if ((v56 | v55 | v54) & 1) != 0 || ((v40 ^ 1))
    {
      goto LABEL_28;
    }

LABEL_27:
    sub_1001CB9D8();
    return;
  }

  v42 = sub_100221C74();

  if (((v56 | v55 | v54) & 1) == 0 && ((v40 ^ 1) & 1) == 0 && (v42 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:
  v43 = static OS_dispatch_queue.main.getter();
  v45 = v57;
  v44 = v58;
  *v57 = v43;
  v50(v45, v51, v44);
  v46 = _dispatchPreconditionTest(_:)();
  v39(v45, v44);
  if ((v46 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
    goto LABEL_31;
  }

  v47 = *(v32 + v41);
  if (!v47)
  {
    return;
  }

  v48 = qword_1003539A8;
  v37 = v47;
  if (v48 != -1)
  {
    goto LABEL_35;
  }

LABEL_31:
  sub_1001CC394(v37, 0, qword_100381C58);
}

uint64_t sub_1000D7DB8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = *(*(Strong + 64) + 32), , swift_unknownObjectRelease(), v8 = *(v7 + 88), v9 = *(v7 + 120), v39 = *(v7 + 104), v40 = v9, v41 = *(v7 + 136), v10 = *(v7 + 72), v36 = *(v7 + 56), v37 = v10, v38 = v8, sub_100006C20(&v36, v35, &unk_10035CEF0), , *(&v36 + 1)))
  {
    v11 = v38;

    sub_100008FA0(&v36, &unk_10035CEF0);
    v12 = sub_100233FEC(&off_100323598);
    if (v11)
    {
      v13 = sub_100204870(v11, v12);

      goto LABEL_7;
    }
  }

  else
  {
    sub_100233FEC(&off_100323598);
  }

  v13 = 0;
LABEL_7:

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14 && (v15 = *(*(v14 + 64) + 32), , swift_unknownObjectRelease(), v16 = *(v15 + 88), v17 = *(v15 + 120), v39 = *(v15 + 104), v40 = v17, v41 = *(v15 + 136), v18 = *(v15 + 72), v36 = *(v15 + 56), v37 = v18, v38 = v16, sub_100006C20(&v36, v35, &unk_10035CEF0), , *(&v36 + 1)))
  {
    v19 = v36;
    sub_100008FA0(&v36, &unk_10035CEF0);
    v20 = v19 != 5;
  }

  else
  {
    v20 = 1;
  }

  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = *(v21 + 32);

    swift_unknownObjectRelease();
    v23 = *(v22 + 80);

    if (v23 != 2 && (v23 & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v24 = *(v1 + 56);
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v25 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if ((*(v24 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable) != 0) | (v13 | v20) & 1)
  {
LABEL_16:
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = *(*(v29 + 64) + 96);

      swift_unknownObjectRelease();
      v31 = *(*(v30 + 48) + 136) < 2u;

      v27 = v31 << 8;
    }

    else
    {
      v27 = 0;
    }

    v28 = 1;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    v32 = sub_1001DE534();

    v33 = v32 << 16;
  }

  else
  {
    v33 = 0;
  }

  return sub_10008B264(v28 | v27 | v33);
}

uint64_t sub_1000D8198()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 40);

    swift_unknownObjectRelease();
    v8 = *(v7 + 41);

    if (v8 != 2 && (v8 & 1) != 0)
    {

      sub_100220988(1);
    }
  }

  sub_1000D7740();
  sub_1000D7DB8();
  v9 = *(v1 + 56);
  sub_10001D630(0, &qword_10035BA10);

  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (*(v9 + OBJC_IVAR____TtC8SOSBuddy11BannerAgent__activePresentable))
    {
      v12 = 1;
    }

    else
    {
      v12 = *(*(*(v1 + 88) + 64) + 16) != 0;
    }

    v13[15] = v12;
    PassthroughSubject.send(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D837C()
{

  sub_10002B558(v0 + 72);

  return v0;
}

void *sub_1000D8408()
{
  v1 = v0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  v0[2] = PassthroughSubject.init()();
  sub_1000040A8(&unk_10035CEC0);
  swift_allocObject();
  v0[3] = PassthroughSubject.init()();
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  v0[4] = PassthroughSubject.init()();
  swift_allocObject();
  v0[5] = PassthroughSubject.init()();
  swift_allocObject();
  v0[6] = PassthroughSubject.init()();
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x8000000100294A20;
    v4 = 0xD000000000000012;
  }

  v7 = objc_allocWithZone(type metadata accessor for BannerAgent());
  v1[7] = sub_1001CB32C(v4, v6);
  v1[8] = [objc_allocWithZone(type metadata accessor for StatusBarAgent()) init];
  v1[10] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionUserAttentionTracker();
  swift_allocObject();
  v1[11] = sub_100222248();
  v1[12] = 0;
  return v1;
}

uint64_t sub_1000D85D8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v4 + 80) = a2;
  swift_unknownObjectWeakAssign();
  *(*(v4 + 88) + 48) = a2;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1000D86CC()
{

  sub_1002215FC();
}

uint64_t sub_1000D8738()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136446466;
    swift_beginAccess();
    sub_1000040A8(&unk_10035CF20);
    v6 = String.init<A>(describing:)();
    v8 = sub_10017C9E8(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    sub_1000040A8(&qword_10035CF18);
    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "_activePresentable changed: stage = %{public}s: pendingStateUpdate = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = sub_1000D9818() & 1;
  v13 = v2[qword_100365788];
  v2[qword_100365788] = v12;
  return sub_1000D8A04(v13);
}

uint64_t (*sub_1000D896C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1000D89D0;
}

uint64_t sub_1000D89D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1000D8738();
  }

  return result;
}

uint64_t sub_1000D8A04(uint64_t result)
{
  v2 = *(v1 + qword_100365788);
  if (result == 2)
  {
    if (v2 == 2)
    {
      return result;
    }
  }

  else if (v2 == 2)
  {
    LOBYTE(v2) = 0;
  }

  else if (((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381CC8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "isAnyBannerPresented changed to %{BOOL,public}d", v6, 8u);
  }

  return PassthroughSubject.send(_:)();
}

char *sub_1000D8B5C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = qword_100365720;
  sub_1000040A8(&unk_100365630);
  swift_allocObject();
  *&v2[v6] = PassthroughSubject.init()();
  v7 = qword_100365728;
  sub_1000040A8(&qword_10035CEE0);
  swift_allocObject();
  *&v2[v7] = PassthroughSubject.init()();
  v8 = qword_100365730;
  swift_allocObject();
  *&v2[v8] = PassthroughSubject.init()();
  v9 = qword_100365738;
  swift_allocObject();
  *&v2[v9] = PassthroughSubject.init()();
  v10 = qword_100365740;
  sub_1000040A8(&unk_100359B30);
  swift_allocObject();
  *&v2[v10] = PassthroughSubject.init()();
  v11 = qword_100365748;
  sub_1000040A8(&qword_10035CEE8);
  swift_allocObject();
  *&v2[v11] = PassthroughSubject.init()();
  v12 = qword_100365750;
  swift_allocObject();
  *&v2[v12] = PassthroughSubject.init()();
  v13 = qword_100365758;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *&v2[v13] = PassthroughSubject.init()();
  v14 = &unk_100365000;
  v15 = qword_100365768;
  *&v2[qword_100365768] = 0;
  swift_unknownObjectWeakInit();
  v16 = &v2[qword_100365778];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  v2[qword_100365780] = 2;
  v2[qword_100365788] = 2;
  v2[qword_100365790] = 2;
  v2[qword_100365798] = 2;
  v17 = &v2[qword_100365760];
  *v17 = a1;
  v17[1] = a2;

  v18 = String._bridgeToObjectiveC()();
  v19 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v18];

  v20 = *&v3[v15];
  *&v3[v15] = v19;

  v39.receiver = v3;
  v39.super_class = sub_1000040A8(&unk_10035CED0);
  v21 = objc_msgSendSuper2(&v39, "init");
  v22 = qword_100353A10;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000F53C(v24, qword_100381C80);

  v25 = v23;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v28 = 136446466;
    v29 = v25;
    v30 = [v29 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_10017C9E8(v31, v33, &v38);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = sub_10017C9E8(a1, a2, &v38);

    *(v28 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "[%{public}s] init for '%s'", v28, 0x16u);
    swift_arrayDestroy();

    v14 = &unk_100365000;
  }

  else
  {
  }

  v36 = *&v25[v14[237]];
  if (v36)
  {
    [v36 setDelegate:v25];
  }

  return v25;
}

uint64_t sub_1000D9014(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = _dispatchPreconditionTest(_:)();
  v48 = *(v5 + 8);
  result = v48(v7, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
LABEL_8:
    v14 = type metadata accessor for Logger();
    sub_10000F53C(v14, qword_100381CC8);
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v49 = v15;

    v44 = v17;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = v8;
      v19 = v18;
      v41 = swift_slowAlloc();
      v50[0] = v41;
      *v19 = 136446466;
      v20 = v46;
      v51 = v2[v46];
      sub_1000040A8(&qword_10035CF18);
      v21 = String.init<A>(describing:)();
      v40 = v16;
      v23 = sub_10017C9E8(v21, v22, v50);
      v43 = v2;
      v24 = v23;

      *(v19 + 4) = v24;
      *(v19 + 12) = 2082;
      v51 = a1;
      v25 = String.init<A>(describing:)();
      v27 = sub_10017C9E8(v25, v26, v50);
      v2 = v43;

      *(v19 + 14) = v27;
      v28 = v40;
      _os_log_impl(&_mh_execute_header, v40, v44, "SessionBannerState changed from %{public}s to %{public}s", v19, 0x16u);
      swift_arrayDestroy();

      v8 = v42;
    }

    else
    {

      v20 = v46;
    }

    v2[v20] = a1;
    if (a1 != 2)
    {
      v33 = &v49[qword_100365778];
      swift_beginAccess();
      if (*v33)
      {
        v34 = v33[16];
        swift_unknownObjectRetain();
        if (v34 >= 3)
        {
          v39 = sub_1000D896C(v50);
          if (*v38)
          {
            *(v38 + 17) = a1 & 1;
          }

          v39(v50, 0);
        }

        else
        {
          sub_100232F04(a1 & 1);
        }
      }

      else
      {
        sub_1000D99A4(a1 & 1);
        *v33 = v35;
        *(v33 + 1) = v36;
        *(v33 + 8) = v37;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_1000D8738();
      }

      return swift_unknownObjectRelease();
    }

    v29 = v8;
    *v7 = static OS_dispatch_queue.main.getter();
    v47(v7, v45, v4);
    v30 = _dispatchPreconditionTest(_:)();
    v48(v7, v4);
    if (v30)
    {
      v31 = &v49[qword_100365778];
      result = swift_beginAccess();
      v30 = *v31;
      if (!*v31)
      {
        return result;
      }

      v29 = v31[1];
      v32 = qword_1003539A8;
      swift_unknownObjectRetain();
      if (v32 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_1000DA270(v30, v29, 0, qword_100381C58);
    return swift_unknownObjectRelease();
  }

  v47 = v10;
  v13 = v2[qword_100365790];
  if (v13 == 2)
  {
    if (a1 == 2)
    {
      return result;
    }

LABEL_7:
    v46 = qword_100365790;
    v45 = v9;
    if (qword_100353A28 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (a1 == 2 || ((v13 ^ a1) & 1) != 0)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_1000D9510(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  if (os_log_type_enabled(v9, v10))
  {
    v25[0] = v4;
    v25[1] = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136446210;
    v14 = [a1 requestIdentifier];
    result = swift_unknownObjectRelease();
    if (!v14)
    {
      goto LABEL_12;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_10017C9E8(v16, v18, v26);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "wasHidden: %{public}s", v12, 0xCu);
    sub_100008964(v13);

    v4 = v25[0];
    v11 = &selRef_setShouldIgnoreDoNotDisturb_;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v20)
  {
    sub_1000D9014(2);
    result = [a1 v11[57]];
    if (result)
    {
      v21 = result;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v26[0] = v22;
      v26[1] = v24;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000D9818()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = *(v1 + qword_100365780);
    if ((v8 == 2 || (v8 & 1) == 0) && (v9 = v1 + qword_100365778, swift_beginAccess(), *v9))
    {
      if (*(*v9 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode) == 4)
      {
        return 1;
      }

      else
      {
        return HIBYTE(*(v9 + 16)) & 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000D99A4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v4 = "Banner.ConnectionAssistant";
    if (qword_100353A28 == -1)
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
  v9 = v4 - 32;
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381CC8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v64 = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10017C9E8(0xD00000000000001ALL, v9 | 0x8000000000000000, &v64);
    _os_log_impl(&_mh_execute_header, v11, v12, "presentBanner for '%{public}s'", v13, 0xCu);
    sub_100008964(v14);
  }

  v15 = *&v2[qword_100365768];
  if (!v15)
  {
    v43 = v2;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_10017C9E8(*&v43[qword_100365760], *&v43[qword_100365760 + 8], &v64);
      _os_log_impl(&_mh_execute_header, v44, v45, "_bannerSource for '%{public}s' has expired", v46, 0xCu);
      sub_100008964(v47);
    }

    goto LABEL_17;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v44 = v15;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v64 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_10017C9E8(0xD00000000000001ALL, v9 | 0x8000000000000000, &v64);
      _os_log_impl(&_mh_execute_header, v48, v49, "contentProducer for '%{public}s' has expired", v50, 0xCu);
      sub_100008964(v51);
    }

LABEL_17:
    return;
  }

  v17 = Strong;
  v18 = *&v2[qword_100365760];
  v19 = *&v2[qword_100365760 + 8];
  v20 = v15;

  swift_getObjectType();
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = objc_allocWithZone(type metadata accessor for SessionBannerViewController());
  v24 = v2;
  swift_unknownObjectRetain();
  v25 = sub_1000DB130(v18, v19, 0xD00000000000001ALL, v9 | 0x8000000000000000, v17, v22, a1 & 1, v24, v23);
  sub_1000040A8(&unk_1003655F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v27;
  sub_10001D630(0, &qword_10035CF30);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v28;
  *(inited + 72) = NSNumber.init(integerLiteral:)(1);
  sub_1002557F0(inited);
  swift_setDeallocating();
  sub_1000040A8(&unk_100365600);
  swift_arrayDestroy();
  sub_1000040A8(&unk_10035CF40);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v64 = 0;
  v30 = [v20 postPresentable:v25 options:1 userInfo:isa error:&v64];

  v31 = v64;
  if (v30)
  {
    v32 = v25;
    v33 = v31;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v34, v35))
    {

      swift_unknownObjectRelease();
      return;
    }

    v62 = v20;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v64 = v37;
    *v36 = 136446210;
    v38 = [v32 requestIdentifier];

    if (v38)
    {
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_10017C9E8(v39, v41, &v64);

      *(v36 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v34, v35, "presentBanner: presenting '%{public}s'", v36, 0xCu);
      sub_100008964(v37);

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_25;
  }

  v52 = v64;
  v53 = _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v64 = v57;
    *v56 = 136446210;
    v63 = v53;
    swift_errorRetain();
    sub_1000040A8(&qword_100355DA0);
    v58 = String.init<A>(describing:)();
    v60 = sub_10017C9E8(v58, v59, &v64);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "presentBanner failed: %{public}s", v56, 0xCu);
    sub_100008964(v57);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1000DA270(void *a1, void *a2, int a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v79 = a3;
    if (qword_100353A28 == -1)
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
  v15 = type metadata accessor for Logger();
  sub_10000F53C(v15, qword_100381CC8);
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  v18 = os_log_type_enabled(v16, v17);
  v80 = a4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v83[0] = v20;
    *v19 = 136446210;
    v82[0] = a1;
    v82[1] = a2;
    swift_unknownObjectRetain();
    sub_1000040A8(&qword_10035CF78);
    v21 = String.init<A>(describing:)();
    v23 = sub_10017C9E8(v21, v22, v83);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "_revokeBanner: revoking %{public}s", v19, 0xCu);
    sub_100008964(v20);
  }

  v24 = *&v5[qword_100365768];
  if (!v24)
  {
    v31 = v5;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_10017C9E8(*&v31[qword_100365760], *&v31[qword_100365760 + 8], v82);
      _os_log_impl(&_mh_execute_header, v32, v33, "_bannerSource for '%{public}s' has expired", v34, 0xCu);
      sub_100008964(v35);

      return;
    }

    goto LABEL_14;
  }

  v25 = &v5[qword_100365778];
  swift_beginAccess();
  if (!*v25)
  {
    v32 = v24;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "_revokeBanner when no presentable is active, ignoring", v38, 2u);
    }

LABEL_14:
    return;
  }

  v76 = *(v25 + 8);
  v77 = v24;
  v26 = [swift_unknownObjectRetain() requestIdentifier];
  v78 = a2;
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v39 = [a1 requestIdentifier];
  if (!v39)
  {
    if (!v30)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v40 = v39;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (!v30)
  {
    if (!v43)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (!v43)
  {
LABEL_25:

    goto LABEL_26;
  }

  if (v28 != v41 || v30 != v43)
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_30;
    }

LABEL_26:
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "_revokeBanner for non-active presentable, ignoring", v46, 2u);
    }

    swift_unknownObjectRelease();

    return;
  }

LABEL_30:
  v49 = sub_1000D896C(v82);
  if (*v48)
  {
    *(v48 + 17) = 2;
  }

  v49(v82, 0);
  v50 = v77;
  if (v76 > 2u)
  {
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "_revokeBanner for presentable for which revoke is already in progress, ignoring", v58, 2u);
    }

    swift_unknownObjectRelease();

    goto LABEL_55;
  }

  v51 = [a1 requestIdentifier];
  v82[0] = 0;
  v52 = [v50 revokePresentableWithRequestIdentifier:v51 reason:v80 animated:v79 & 1 userInfo:0 error:v82];

  if (v52)
  {
    v53 = v82[0];

    if (*v25 && !v25[16])
    {
      if (qword_1003539A0 != -1)
      {
        swift_once();
      }

      sub_1000DB848(a1);
    }

    else
    {
      v55 = sub_1000D896C(v82);
      if (*v54)
      {
        *(v54 + 16) = 3;
      }

      v55(v82, 0);
    }

    swift_unknownObjectRelease();
LABEL_55:

    return;
  }

  v59 = v82[0];
  v60 = _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unknownObjectRetain();
  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v82[0] = v80;
    *v63 = 136446466;
    v64 = [a1 requestIdentifier];
    if (!v64)
    {

      swift_unknownObjectRelease();
      __break(1u);
      return;
    }

    v65 = v64;

    swift_unknownObjectRelease();
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    v69 = sub_10017C9E8(v66, v68, v82);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2082;
    v81 = v60;
    swift_errorRetain();
    sub_1000040A8(&qword_100355DA0);
    v70 = String.init<A>(describing:)();
    v72 = sub_10017C9E8(v70, v71, v82);

    *(v63 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "revokeBanner(%{public}s) failed: %{public}s", v63, 0x16u);
    swift_arrayDestroy();

    v50 = v77;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v73 = _convertErrorToNSError(_:)();
  v74 = [v73 code];

  if (v74 == 3)
  {
    if (qword_100353998 != -1)
    {
      swift_once();
    }

    sub_1000DB848(a1);
  }

  swift_unknownObjectRelease();
}

void sub_1000DAC50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000DACA4();
  }
}

void sub_1000DACA4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "executePendingStateUpdate", v9, 2u);
  }

  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    v11 = &v1[qword_100365778];
    swift_beginAccess();
    if (*v11 && (v12 = *(v11 + 8), *(v11 + 8) == 5))
    {
      if (v12 >> 8 == 2)
      {
        v13 = v1;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v36 = v17;
          *v16 = 136446210;
          v18 = *(v11 + 8);
          v34 = *v11;
          v35 = v18;
          swift_unknownObjectRetain();
          sub_1000040A8(&qword_10035CF80);
          v19 = String.init<A>(describing:)();
          v21 = sub_10017C9E8(v19, v20, &v36);

          *(v16 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v14, v15, "executePendingStateUpdate request expired, current presentable == %{public}s", v16, 0xCu);
          sub_100008964(v17);
        }

        *(v11 + 8) = 0;
        *v11 = 0;
        *(v11 + 1) = 0;
        swift_unknownObjectRelease();
        sub_1000D8738();
      }

      else
      {
        sub_1000D99A4(BYTE1(v12) & 1);
        *v11 = v31;
        *(v11 + 1) = v32;
        *(v11 + 8) = v33;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        sub_1000D8738();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = v1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36 = v26;
        *v25 = 136446210;
        v27 = *(v11 + 8);
        v34 = *v11;
        v35 = v27;
        swift_unknownObjectRetain();
        sub_1000040A8(&qword_10035CF80);
        v28 = String.init<A>(describing:)();
        v30 = sub_10017C9E8(v28, v29, &v36);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "executePendingStateUpdate request overridden, current presentable == %{public}s", v25, 0xCu);
        sub_100008964(v26);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000DB130(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, char *a9)
{
  v66 = a1;
  v67 = a8;
  v15 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v15 - 8);
  v62 = &v58 - v16;
  v17 = sub_1000040A8(&qword_1003560A0);
  v64 = *(v17 - 8);
  v65 = v17;
  __chkstk_darwin(v17);
  v63 = &v58 - v18;
  v19 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__contentProducer];
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode] = 0;
  v22 = OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_tapGesture;
  *&a9[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_dismissalPreventionAssertion] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v23 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v23 = &_swiftEmptySetSingleton;
  }

  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__subscriptions] = v23;
  v24 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__requesterId];
  *v24 = v66;
  *(v24 + 1) = a2;
  v25 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__requestId];
  *v25 = a3;
  v25[1] = a4;
  *(v19 + 1) = a6;
  swift_unknownObjectWeakAssign();
  v26 = 3;
  if (a7)
  {
    v26 = 4;
  }

  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] = v26;
  *(v20 + 1) = &off_100337350;
  swift_unknownObjectWeakAssign();
  v27 = type metadata accessor for SessionBannerViewController();
  v69.receiver = a9;
  v69.super_class = v27;

  v28 = objc_msgSendSuper2(&v69, "initWithNibName:bundle:", 0, 0);
  v29 = qword_100353A28;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000F53C(v31, qword_100381CC8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v68[0] = v60;
    *v34 = 136446722;
    v35 = v30;
    v61 = v30;
    v36 = v35;
    v37 = [v35 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = a3;
    v39 = a4;
    v40 = v38;
    v42 = v41;

    v43 = sub_10017C9E8(v40, v42, v68);

    *(v34 + 4) = v43;
    *(v34 + 12) = 2080;
    v44 = sub_10017C9E8(v66, a2, v68);

    *(v34 + 14) = v44;
    *(v34 + 22) = 2080;
    v30 = v61;
    v45 = sub_10017C9E8(v59, v39, v68);

    *(v34 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}s] init for '%s' and %s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v46 = *(a5 + 48);
  v47 = *(v46 + 64);
  v48 = *(v46 + 72);
  v49 = v30;
  [v49 setPreferredContentSize:{v47, v48}];
  v68[0] = *(a5 + 360);
  sub_10001D630(0, &qword_10035BA10);

  v50 = static OS_dispatch_queue.main.getter();
  v68[3] = v50;
  v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v52 = v62;
  (*(*(v51 - 8) + 56))(v62, 1, 1, v51);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  v53 = v63;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v52, &unk_10035CF50);

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v55 = swift_allocObject();
  *(v55 + 16) = sub_1000DC230;
  *(v55 + 24) = v54;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);
  v56 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v53, v56);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();

  return v49;
}

void sub_1000DB848(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DispatchQoS();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchTime();
  v60 = *(v67 - 8);
  __chkstk_darwin(v67);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v56 - v8;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000F53C(v13, qword_100381CC8);
  swift_unknownObjectRetain();
  v15 = v1;
  v68 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v56 = v9;
    v18 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v18 = 136446466;
    v19 = [a1 requestIdentifier];
    v57 = a1;
    swift_unknownObjectRelease();

    if (!v19)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v20 = v15;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10017C9E8(v21, v23, v74);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2082;
    v25 = &v20[qword_100365778];
    swift_beginAccess();
    v26 = *(v25 + 8);
    aBlock = *v25;
    LOWORD(v70) = v26;
    swift_unknownObjectRetain();
    sub_1000040A8(&qword_10035CF80);
    v27 = String.init<A>(describing:)();
    v29 = sub_10017C9E8(v27, v28, v74);

    *(v18 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "didDisappear: for %{public}s, active presentable == %{public}s", v18, 0x16u);
    swift_arrayDestroy();

    v15 = v20;
    a1 = v57;
    v9 = v56;
  }

  else
  {

    swift_unknownObjectRelease();
  }

  sub_10001D630(0, &qword_10035BA10);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v30 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v31 = &v15[qword_100365778];
  swift_beginAccess();
  v32 = *v31;
  if (*v31)
  {
    v33 = [swift_unknownObjectRetain() requestIdentifier];
    swift_unknownObjectRelease();
    if (v33)
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v35;
    }

    else
    {
      v34 = 0;
      v32 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v36 = [a1 requestIdentifier];
  if (!v36)
  {
    if (!v32)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v37 = v36;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (!v32)
  {
    if (!v40)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if (!v40)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v34 == v38 && v32 == v40)
  {

LABEL_27:
    if (!*v31 || v31[17] << 8 == 512)
    {
      *v31 = 0;
      *(v31 + 1) = 0;
      *(v31 + 8) = 0;
      swift_unknownObjectRelease();
      sub_1000D8738();
    }

    else
    {
      v46 = sub_1000D896C(&aBlock);
      if (*v45)
      {
        *(v45 + 16) = 5;
      }

      v46(&aBlock, 0);
      v47 = static OS_dispatch_queue.main.getter();
      v48 = v58;
      static DispatchTime.now()();
      v49 = v59;
      + infix(_:_:)();
      v50 = *(v60 + 8);
      v50(v48, v67);
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v72 = sub_1000DC270;
      v73 = v51;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v70 = sub_1001D2438;
      v71 = &unk_10032ECF0;
      v52 = _Block_copy(&aBlock);

      v53 = v61;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_100071864();
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v54 = v63;
      v55 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v52);

      (*(v65 + 8))(v54, v55);
      (*(v62 + 8))(v53, v64);
      v50(v49, v67);
    }

    return;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_27;
  }

LABEL_23:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Received didDisappear for non-active presentable", v43, 2u);
  }
}

uint64_t sub_1000DC138()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC1E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DC1F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DC238()
{

  return _swift_deallocObject(v0, 32, 7);
}