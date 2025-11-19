id sub_100C572E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSurfaceUnknownInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100C573A0()
{
  result = qword_101A16D58;
  if (!qword_101A16D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16D58);
  }

  return result;
}

BOOL sub_100C573F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (*(a1 + 48) <= 1u)
  {
    if (*(a1 + 48))
    {
      if (v2 == 1)
      {
        return sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8));
      }
    }

    else if (!*(a2 + 48))
    {
      return sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8));
    }

    return 0;
  }

  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (*(a1 + 48) != 2)
  {
    return v2 == 3 && (*(a2 + 8) | *a2 | *&v3 | *&v4 | *&v6 | *&v5) == 0;
  }

  if (v2 != 2)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (!sub_10011ECC8(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  result = sub_10011ECC8(v10, v9, v3, v4);
  if (result)
  {
    return sub_10011ECC8(v8, v7, v6, v5);
  }

  return result;
}

void sub_100C57500(uint64_t a1, uint64_t a2, double a3, double a4, __n128 a5, double a6, __n128 a7, double a8)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      a7.n128_f64[1] = a8;
      a5.n128_f64[1] = a6;
      v44 = a7;
      v45 = a5;
      v12 = 2;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v11 = 0uLL;
      v45 = 0u;
      v12 = 3;
      a3 = 0.0;
      a4 = 0.0;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      v12 = 0;
      v11 = 0uLL;
      v45 = 0u;
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v11 = 0uLL;
      v45 = 0u;
      v12 = 1;
LABEL_12:
      v44 = v11;
LABEL_14:
      swift_beginAccess();
      v36 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_100B38BC8(0, *(v36 + 2) + 1, 1, v36);
        *(a2 + 16) = v36;
      }

      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      v41 = v44;
      v40 = v45;
      if (v39 >= v38 >> 1)
      {
        v43 = sub_100B38BC8((v38 > 1), v39 + 1, 1, v36);
        v41 = v44;
        v40 = v45;
        v36 = v43;
      }

      *(v36 + 2) = v39 + 1;
      v42 = &v36[56 * v39];
      *(v42 + 4) = a3;
      *(v42 + 5) = a4;
      *(v42 + 3) = v40;
      *(v42 + 4) = v41;
      v42[80] = v12;
      *(a2 + 16) = v36;
      swift_endAccess();
      return;
    }
  }

  v13 = objc_opt_self();
  v14 = [v13 _atomicIncrementAssertCount];
  v46 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v46);
  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v14;
  v23 = sub_1005CF000();
  *(inited + 96) = v23;
  v24 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v25;
  *(inited + 152) = 64;
  v26 = v46;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  *(inited + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v30, "Unknown path element type. Ignoring element.", 44, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  [v13 handleFailureInFunction:v33 file:v34 lineNumber:64 isFatal:0 format:v35 args:v32];
}

uint64_t sub_100C579E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100C57B44(a2, v6);
  if (!v2)
  {
    sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path);
    v8 = Message.serializedData(partial:)();
    v10 = v9;
    sub_100C58624(v6, type metadata accessor for CRLProto_Path);
    dispatch thunk of CREncoder.valueContainer()();
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();

    return sub_10002640C(v8, v10);
  }

  return result;
}

uint64_t sub_100C57B44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CRLProto_Path.Element(0);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v79 - v8;
  *a2 = _swiftEmptyArrayStorage;
  type metadata accessor for CRLProto_Path(0);
  v89 = a2;
  result = UnknownStorage.init()();
  v11 = *(a1 + 16);
  if (v11)
  {
    v83 = &v98;
    v84 = v97;
    v81 = &v93;
    v82 = v92;
    v12 = (a1 + 80);
    v13 = _swiftEmptyArrayStorage;
    v86 = xmmword_10146F370;
    v85 = 0.0009;
    while (1)
    {
      v15 = *(v12 - 6);
      v14 = *(v12 - 5);
      v17 = *(v12 - 4);
      v16 = *(v12 - 3);
      v19 = *(v12 - 2);
      v18 = *(v12 - 1);
      v20 = *v12;
      v21 = v86;
      *(v9 + 1) = v86;
      *(v9 + 2) = v21;
      *(v9 + 3) = v21;
      UnknownStorage.init()();
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v29 = v15;
        *v9 = 2;
        v9[8] = 1;
        v109.x = 0.0;
        v109.y = 0.0;
        v106.x = v15;
        v106.y = v14;
        v30 = v15;
        v31 = v14;
        if (CGPointEqualToPoint(v106, v109))
        {
          v32 = 0;
          v33 = 0xC000000000000000;
        }

        else
        {
          v103[0] = v15;
          v103[1] = v14;
          v32 = sub_100AE5050(v103, &v104);
          v33 = v34;
        }

        sub_10002640C(*(v9 + 2), *(v9 + 3));
        *(v9 + 2) = v32;
        *(v9 + 3) = v33;
        _D0 = sub_10011F31C(v17, v16, v29);
        v37 = v30;
        __asm
        {
          FCVT            H2, D0
          FCVT            D2, H2
        }

        v44 = vabdd_f64(v37 + _D2, v17);
        v45 = v31;
        v46 = v85;
        if (v44 >= v85)
        {
          goto LABEL_20;
        }

        __asm
        {
          FCVT            H2, D1
          FCVT            D2, H2
        }

        if (vabdd_f64(v45 + _D2, v16) >= v85)
        {
LABEL_20:
          v111.x = 0.0;
          v111.y = 0.0;
          v52 = _D0;
          v53 = _D1;
          if (CGPointEqualToPoint(*&_D0, v111))
          {
            v49 = 0;
            v51 = 0xC000000000000000;
          }

          else
          {
            v58 = v52;
            v59 = v53;
            *v101 = v58;
            *&v101[1] = v59;
            v49 = sub_100AE5050(v101, v102);
            v51 = v60;
          }

          v46 = v85;
        }

        else
        {
          v49 = sub_100C5AD34(_D0, _D1);
          v51 = v50;
        }

        sub_10002640C(*(v9 + 4), *(v9 + 5));
        *(v9 + 4) = v49;
        *(v9 + 5) = v51;
        _D0 = sub_10011F31C(v19, v18, v29);
        __asm
        {
          FCVT            H2, D0
          FCVT            D2, H2
        }

        if (vabdd_f64(v37 + _D2, v19) < v46)
        {
          __asm
          {
            FCVT            H2, D1
            FCVT            D2, H2
          }

          if (vabdd_f64(v45 + _D2, v18) < v46)
          {
            v67 = sub_100C5AD34(_D0, _D1);
            goto LABEL_36;
          }
        }

        v112.x = 0.0;
        v112.y = 0.0;
        v69 = _D0;
        v70 = _D1;
        if (CGPointEqualToPoint(*&_D0, v112))
        {
          v71 = 0;
          v72 = 0xC000000000000000;
        }

        else
        {
          v73 = v69;
          v74 = v70;
          *v99 = v73;
          *&v99[1] = v74;
          v67 = sub_100AE5050(v99, v100);
LABEL_36:
          v71 = v67;
          v72 = v68;
        }

        sub_10002640C(*(v9 + 6), *(v9 + 7));
        *(v9 + 6) = v71;
        *(v9 + 7) = v72;
        goto LABEL_38;
      }

      *v9 = 3;
      v9[8] = 1;
LABEL_38:
      sub_100C5AD9C(v9, v6, type metadata accessor for CRLProto_Path.Element);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100B38CE0(0, v13[2] + 1, 1, v13);
      }

      v76 = v13[2];
      v75 = v13[3];
      if (v76 >= v75 >> 1)
      {
        v13 = sub_100B38CE0(v75 > 1, v76 + 1, 1, v13);
      }

      v12 += 7;
      v13[2] = v76 + 1;
      sub_100C585C0(v6, v13 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v76);
      *v89 = v13;
      result = sub_100C58624(v9, type metadata accessor for CRLProto_Path.Element);
      if (!--v11)
      {
        return result;
      }
    }

    if (v20)
    {
      *v9 = 1;
      v9[8] = 1;
      v110.x = 0.0;
      v110.y = 0.0;
      v107.x = v15;
      v107.y = v14;
      if (!CGPointEqualToPoint(v107, v110))
      {
        v54 = v15;
        v55 = v14;
        *v97 = v54;
        *&v97[1] = v55;
        v95 = &type metadata for UnsafeRawBufferPointer;
        v96 = &protocol witness table for UnsafeRawBufferPointer;
        v93 = v84;
        v94 = v83;
        v56 = sub_100020E58(&v93, &type metadata for UnsafeRawBufferPointer);
        v25 = *v56;
        if (*v56)
        {
          v57 = v56[1];
          v27 = v57 - v25;
          if (v57 != v25)
          {
            if (v27 <= 14)
            {
              memset(v90, 0, sizeof(v90));
              v91 = v57 - v25;
              memcpy(v90, v25, v57 - v25);
              v25 = *v90;
              v28 = v79 & 0xF00000000000000 | *&v90[8] | ((*&v90[12] | (v91 << 16)) << 32);
              v79 = v28;
              goto LABEL_26;
            }

            goto LABEL_45;
          }

          goto LABEL_24;
        }

LABEL_25:
        v28 = 0xC000000000000000;
        goto LABEL_26;
      }
    }

    else
    {
      *v9 = 0;
      v9[8] = 1;
      v108.x = 0.0;
      v108.y = 0.0;
      v105.x = v15;
      v105.y = v14;
      if (!CGPointEqualToPoint(v105, v108))
      {
        v22 = v15;
        v23 = v14;
        *v92 = v22;
        *&v92[1] = v23;
        v95 = &type metadata for UnsafeRawBufferPointer;
        v96 = &protocol witness table for UnsafeRawBufferPointer;
        v93 = v82;
        v94 = v81;
        v24 = sub_100020E58(&v93, &type metadata for UnsafeRawBufferPointer);
        v25 = *v24;
        if (*v24)
        {
          v26 = v24[1];
          v27 = v26 - v25;
          if (v26 != v25)
          {
            if (v27 <= 14)
            {
              memset(v90, 0, sizeof(v90));
              v91 = v26 - v25;
              memcpy(v90, v25, v26 - v25);
              v25 = *v90;
              v28 = v80 & 0xF00000000000000 | *&v90[8] | ((*&v90[12] | (v91 << 16)) << 32);
              v80 = v28;
LABEL_26:
              sub_100005070(&v93);
              goto LABEL_27;
            }

LABEL_45:
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v77 = __DataStorage.init(bytes:length:)();
            v78 = v77;
            if (v27 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v25 = swift_allocObject();
              *(v25 + 2) = 0;
              *(v25 + 3) = v27;
              v28 = v78 | 0x8000000000000000;
            }

            else
            {
              v25 = (v27 << 32);
              v28 = v77 | 0x4000000000000000;
            }

            goto LABEL_26;
          }

LABEL_24:
          v25 = 0;
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    v25 = 0;
    v28 = 0xC000000000000000;
LABEL_27:
    sub_10002640C(*(v9 + 2), *(v9 + 3));
    *(v9 + 2) = v25;
    *(v9 + 3) = v28;
    goto LABEL_38;
  }

  return result;
}

uint64_t sub_100C581F4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v5);
  v7 = (v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_100C57B44(a2, v7);
  if (!v2)
  {
    sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path);
    v9 = Message.serializedData(partial:)();
    v11 = v10;
    sub_100C58624(v7, type metadata accessor for CRLProto_Path);
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    v12[1] = v9;
    v12[2] = v11;
    sub_10002A948(v13, v14);
    sub_1006D63D4();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10002640C(v9, v11);
    return sub_100005070(v13);
  }

  return result;
}

uint64_t sub_100C58390@<X0>(char **a1@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v3 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v5 = v4;

  v6 = sub_100C5AB60(v3, v5);
  sub_10002640C(v3, v5);

  *a1 = v6;
  return result;
}

void *sub_100C5845C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100C5AE04(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100C584B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100C5B090();
  v7 = sub_100C5B0E4();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

unint64_t sub_100C58524()
{
  result = qword_101A16D60;
  if (!qword_101A16D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16D60);
  }

  return result;
}

uint64_t sub_100C58578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C585C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Path.Element(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C58624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100C58684(uint64_t a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = result;
    v5 = result;
    v6 = (a1 + 80);
    do
    {
      if (*v6 > 1u)
      {
        if (*v6 == 2)
        {
          [v5 curveToPoint:*(v6 - 6) controlPoint1:*(v6 - 5) controlPoint2:{*(v6 - 4), *(v6 - 3), *(v6 - 2), *(v6 - 1)}];
        }

        else
        {
          [v5 closePath];
        }
      }

      else
      {
        v7 = *(v6 - 6);
        v8 = *(v6 - 5);
        if (*v6)
        {
          [v5 lineToPoint:{v7, v8}];
        }

        else
        {
          [v5 moveToPoint:{v7, v8}];
        }
      }

      v6 += 7;
      --v3;
    }

    while (v3);

    return v4;
  }

  return result;
}

unint64_t sub_100C58780(char *a1, unint64_t a2, uint64_t a3)
{
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return 0;
    }

    v13 = *(a1 + 2);
    v12 = *(a1 + 3);
    _VF = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (_VF)
    {
      goto LABEL_121;
    }

    if (v11)
    {
      goto LABEL_8;
    }

    return v11;
  }

  if (v10)
  {
    goto LABEL_22;
  }

  v11 = BYTE6(a2);
  if (!BYTE6(a2))
  {
    return v11;
  }

LABEL_8:
  while (v11 != 4)
  {
    if (v11 != 8)
    {
      return 0;
    }

    if (v10 == 2)
    {
      goto LABEL_38;
    }

    if (v10 != 1)
    {
      __src = a1;
      LOWORD(v109) = a2;
      BYTE2(v109) = BYTE2(a2);
      BYTE3(v109) = BYTE3(a2);
      BYTE4(v109) = BYTE4(a2);
      v39 = (a2 >> 50) & 0x3F;
      BYTE5(v109) = BYTE5(a2);
      if (v39)
      {
        v3 = sub_100B39FD8((a2 >> 50) & 0x3F, 0);
        memcpy(v3 + 4, &__src, 4 * v39);
        goto LABEL_59;
      }

LABEL_58:
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_59;
    }

    v15 = a1;
    v6 = ((a1 >> 32) - a1);
    if (a1 >> 32 < a1)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
      goto LABEL_57;
    }

    v17 = v16;
    v18 = __DataStorage._offset.getter();
    if (__OFSUB__(v15, v18))
    {
      goto LABEL_127;
    }

    v5 = (v15 - v18 + v17);
    v19 = __DataStorage._length.getter();
    if (!v5)
    {
      goto LABEL_58;
    }

    v20 = v19 >= v6 ? v6 : v19;
    if ((v20 + 3) < 7)
    {
      goto LABEL_58;
    }

    v4 = v20 / 4;
    v3 = sub_100B39FD8(v20 / 4, 0);
    a1 = sub_100F86748(v3 + 4, v4, v5, v4);
    if (a3 == v4)
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_22:
    LODWORD(v11) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_122;
    }

    v11 = v11;
    if (!v11)
    {
      return v11;
    }
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (v10 == 2)
  {
    v40 = *(a1 + 2);
    v41 = *(a1 + 3);
    v42 = __DataStorage._bytes.getter();
    if (v42)
    {
      v43 = v42;
      v44 = __DataStorage._offset.getter();
      if (__OFSUB__(v40, v44))
      {
        goto LABEL_130;
      }

      v45 = (v40 - v44 + v43);
    }

    else
    {
      v45 = 0;
    }

    if (__OFSUB__(v41, v40))
    {
      goto LABEL_129;
    }

    v57 = __DataStorage._length.getter();
    if (!v45)
    {
      goto LABEL_75;
    }

    v58 = v57 >= v41 - v40 ? v41 - v40 : v57;
    if ((v58 + 1) < 3)
    {
      goto LABEL_75;
    }

    v59 = v58;
    v60 = v58 / 2;
    v31 = sub_100B39C1C(v58 / 2, 0);
    sub_100F867B8(v31 + 4, v59 / 2, v45, v59 / 2);
    if (v61 == v60)
    {
      goto LABEL_76;
    }

    __break(1u);
LABEL_74:
    __DataStorage._length.getter();
LABEL_75:
    v31 = _swiftEmptyArrayStorage;
    goto LABEL_76;
  }

  if (v10 != 1)
  {
    __src = a1;
    LOWORD(v109) = a2;
    BYTE2(v109) = BYTE2(a2);
    BYTE3(v109) = BYTE3(a2);
    BYTE4(v109) = BYTE4(a2);
    v46 = (a2 >> 49) & 0x7F;
    BYTE5(v109) = BYTE5(a2);
    if (v46)
    {
      v31 = sub_100B39C1C((a2 >> 49) & 0x7F, 0);
      memcpy(v31 + 4, &__src, 2 * v46);
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v21 = a1;
  v22 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    goto LABEL_128;
  }

  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
    goto LABEL_74;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v21, v25))
  {
    goto LABEL_131;
  }

  v26 = (v21 - v25 + v24);
  v27 = __DataStorage._length.getter();
  if (!v26)
  {
    goto LABEL_75;
  }

  v28 = v27 >= v22 ? v22 : v27;
  if ((v28 + 1) < 3)
  {
    goto LABEL_75;
  }

  v29 = v28;
  v30 = v28 / 2;
  v31 = sub_100B39C1C(v28 / 2, 0);
  a1 = sub_100F867B8(v31 + 4, v29 / 2, v26, v29 / 2);
  if (v32 != v30)
  {
    __break(1u);
LABEL_38:
    v33 = *(a1 + 2);
    v34 = *(a1 + 3);
    v35 = __DataStorage._bytes.getter();
    if (v35)
    {
      v36 = v35;
      v37 = __DataStorage._offset.getter();
      if (__OFSUB__(v33, v37))
      {
        goto LABEL_126;
      }

      v38 = (v33 - v37 + v36);
    }

    else
    {
      v38 = 0;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_125;
    }

    v47 = __DataStorage._length.getter();
    if (!v38)
    {
      goto LABEL_58;
    }

    v48 = v47 >= v34 - v33 ? v34 - v33 : v47;
    if ((v48 + 3) < 7)
    {
      goto LABEL_58;
    }

    v49 = v48 / 4;
    v3 = sub_100B39FD8(v48 / 4, 0);
    sub_100F86748(v3 + 4, v49, v38, v49);
    if (v50 != v49)
    {
      __break(1u);
LABEL_57:
      __DataStorage._length.getter();
      goto LABEL_58;
    }

LABEL_59:
    v51 = v3[2];
    if (v51)
    {
      __src = _swiftEmptyArrayStorage;
      sub_100776504(0, v51, 0);
      v52 = __src;
      v53 = __src[2];
      v54 = 32;
      do
      {
        v55 = *(v3 + v54);
        __src = v52;
        v56 = v52[3];
        if (v53 >= v56 >> 1)
        {
          sub_100776504((v56 > 1), v53 + 1, 1);
          v52 = __src;
        }

        v52[2] = v53 + 1;
        *&v52[v53 + 4] = v55;
        v54 += 4;
        ++v53;
        --v51;
      }

      while (v51);
LABEL_81:

      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_76:
  v62 = v31[2];
  if (v62)
  {
    __src = _swiftEmptyArrayStorage;
    sub_100776504(0, v62, 0);
    v52 = __src;
    v63 = __src[2];
    v64 = 32;
    do
    {
      _H8 = *(v31 + v64);
      __src = v52;
      v66 = v52[3];
      if (v63 >= v66 >> 1)
      {
        sub_100776504((v66 > 1), v63 + 1, 1);
        v52 = __src;
      }

      __asm { FCVT            D0, H8 }

      v52[2] = v63 + 1;
      v52[v63 + 4] = _D0;
      v64 += 2;
      ++v63;
      --v62;
    }

    while (v62);
    goto LABEL_81;
  }

LABEL_82:

  v52 = _swiftEmptyArrayStorage;
LABEL_83:
  if (v52[2] != 2)
  {
LABEL_112:

    return 0;
  }

  v70 = v52[4];
  v71 = v52[5];

  v11 = v70;
  if ((~v70 & 0x7FF0000000000000) != 0 && (~v71 & 0x7FF0000000000000) != 0)
  {
    return v11;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  __src = v70;
  v109 = v71;
  type metadata accessor for CGPoint(0);
  v72 = String.init<A>(describing:)();
  v7 = v73;
  *(inited + 56) = &type metadata for String;
  v4 = sub_1000053B0();
  *(inited + 32) = v72;
  v5 = (inited + 32);
  *(inited + 64) = v4;
  *(inited + 40) = v7;
  v107 = objc_opt_self();
  LODWORD(v7) = [v107 _atomicIncrementAssertCount];
  __src = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &__src);
  StaticString.description.getter();
  v8 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v74 = String._bridgeToObjectiveC()();

  v75 = [v74 lastPathComponent];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v76;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_123;
  }

LABEL_87:
  v77 = static OS_os_log.crlAssert;
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_10146CA70;
  *(v78 + 56) = &type metadata for Int32;
  *(v78 + 64) = &protocol witness table for Int32;
  *(v78 + 32) = v7;
  v79 = sub_1005CF000();
  *(v78 + 96) = v79;
  v80 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
  *(v78 + 72) = v8;
  *(v78 + 136) = &type metadata for String;
  *(v78 + 144) = v4;
  *(v78 + 104) = v80;
  *(v78 + 112) = v3;
  *(v78 + 120) = v6;
  *(v78 + 176) = &type metadata for UInt;
  *(v78 + 184) = &protocol witness table for UInt;
  *(v78 + 152) = 279;
  v81 = __src;
  *(v78 + 216) = v79;
  *(v78 + 224) = v80;
  *(v78 + 192) = v81;
  v82 = v8;
  v83 = v81;
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v77, &_mh_execute_header, v84, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v78);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v85 = static os_log_type_t.error.getter();
  sub_100005404(v77, &_mh_execute_header, v85, "Corrupt bezier path point detected %{public}@. Using a default (0, 0) point instead to avoid a crash.", 101, 2, inited);

  type metadata accessor for __VaListBuilder();
  v8 = swift_allocObject();
  v8[2] = 8;
  v8[3] = 0;
  v86 = v8 + 3;
  v8[4] = 0;
  v8[5] = 0;
  v7 = *(inited + 16);
  v3 = inited;
  if (v7)
  {
    inited = 0;
    while (1)
    {
      v87 = &v5[40 * inited];
      v6 = *(v87 + 3);
      v4 = sub_100020E58(v87, v6);
      v88 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v89 = *v86;
      v90 = *(v88 + 16);
      _VF = __OFADD__(*v86, v90);
      v91 = *v86 + v90;
      if (_VF)
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        swift_once();
        goto LABEL_87;
      }

      v4 = v8[4];
      if (v4 >= v91)
      {
        goto LABEL_104;
      }

      if (v4 + 0x4000000000000000 < 0)
      {
        goto LABEL_119;
      }

      v6 = v8[5];
      if (2 * v4 > v91)
      {
        v91 = 2 * v4;
      }

      v8[4] = v91;
      if ((v91 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_120;
      }

      v92 = v5;
      v93 = v3;
      v94 = v88;
      v95 = swift_slowAlloc();
      v96 = v95;
      v8[5] = v95;
      if (v6)
      {
        break;
      }

      v88 = v94;
      v3 = v93;
      v5 = v92;
      if (!v96)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

LABEL_105:
      v98 = *(v88 + 16);
      if (v98)
      {
        v99 = (v88 + 32);
        v100 = *v86;
        while (1)
        {
          v101 = *v99++;
          *&v96[8 * v100] = v101;
          v100 = *v86 + 1;
          if (__OFADD__(*v86, 1))
          {
            break;
          }

          *v86 = v100;
          if (!--v98)
          {
            goto LABEL_89;
          }
        }

        __break(1u);
        goto LABEL_118;
      }

LABEL_89:

      if (++inited == v7)
      {
        goto LABEL_114;
      }
    }

    if (v95 != v6 || v95 >= &v6[8 * v89])
    {
      memmove(v95, v6, 8 * v89);
    }

    v4 = v8;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v88 = v94;
    v3 = v93;
    v5 = v92;
LABEL_104:
    v96 = v8[5];
    if (!v96)
    {
      goto LABEL_111;
    }

    goto LABEL_105;
  }

LABEL_114:
  v102 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v103 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v104 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v105 = String._bridgeToObjectiveC()();

  [v107 handleFailureInFunction:v103 file:v104 lineNumber:279 isFatal:0 format:v105 args:v102];

  swift_setDeallocating();
  swift_arrayDestroy();
  return 0;
}

char *sub_100C59324(uint64_t a1)
{
  v2 = type metadata accessor for CRLProto_Path.Element(0) - 8;
  __chkstk_darwin(v2);
  v5 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v7 = *a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = _swiftEmptyArrayStorage;
    v172 = *(v3 + 72);
    v168 = xmmword_10146CA70;
    v169 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v170 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100C5AD9C(v7, v5, type metadata accessor for CRLProto_Path.Element);
      if (v5[8] != 1)
      {
        v173 = v6;
        v174 = v7;
        v171 = objc_opt_self();
        v58 = [v171 _atomicIncrementAssertCount];
        v175[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(v8, v175);
        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        v61 = [v60 lastPathComponent];

        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

        v65 = v8;
        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v66 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v168;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v58;
        v68 = sub_1005CF000();
        *(inited + 96) = v68;
        v69 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
        *(inited + 104) = v69;
        *(inited + 72) = v59;
        *(inited + 136) = &type metadata for String;
        v70 = sub_1000053B0();
        *(inited + 112) = v62;
        *(inited + 120) = v64;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v70;
        *(inited + 152) = 130;
        v71 = v175[0];
        *(inited + 216) = v68;
        *(inited + 224) = v69;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v71;
        v72 = v59;
        v73 = v71;
        v74 = static os_log_type_t.error.getter();
        sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v75 = static os_log_type_t.error.getter();
        sub_100005404(v66, &_mh_execute_header, v75, "Unknown bezier point type. Ignoring element.", 44, 2, v65);

        type metadata accessor for __VaListBuilder();
        v76 = swift_allocObject();
        v76[2] = 8;
        v76[3] = 0;
        v76[4] = 0;
        v76[5] = 0;
        v77 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v78 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v79 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v80 = String._bridgeToObjectiveC()();

        [v171 handleFailureInFunction:v78 file:v79 lineNumber:130 isFatal:0 format:v80 args:v77];

        v5 = v169;
        v6 = v173;
        v7 = v174;
        v8 = v65;
        goto LABEL_7;
      }

      v31 = *v5;
      v32 = 0.0;
      if (*v5 > 1)
      {
        if (v31 != 2)
        {
          v84 = 0.0;
          v85 = 0.0;
          v132 = 3;
LABEL_31:
          v133 = 0;
          v134 = 0.0;
          v135 = 0;
LABEL_32:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_100B38BC8(0, *(v170 + 2) + 1, 1, v170);
          }

          v137 = *(v170 + 2);
          v136 = *(v170 + 3);
          if (v137 >= v136 >> 1)
          {
            v170 = sub_100B38BC8((v136 > 1), v137 + 1, 1, v170);
          }

          v138 = v170;
          *(v170 + 2) = v137 + 1;
          v139 = &v138[56 * v137];
          *(v139 + 4) = v84;
          *(v139 + 5) = v85;
          *(v139 + 6) = v32;
          *(v139 + 7) = v133;
          *(v139 + 8) = v134;
          *(v139 + 9) = v135;
          v139[80] = v132;
          v8 = _swiftEmptyArrayStorage;
          goto LABEL_7;
        }

        *&v81 = COERCE_DOUBLE(sub_100C58780(*(v5 + 2), *(v5 + 3), 0));
        v174 = v7;
        if (v83)
        {
          v173 = v6;
          v171 = objc_opt_self();
          v9 = [v171 _atomicIncrementAssertCount];
          v175[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v8, v175);
          StaticString.description.getter();
          v10 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v11 = String._bridgeToObjectiveC()();

          v12 = [v11 lastPathComponent];

          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v16 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v17 = swift_initStackObject();
          *(v17 + 16) = v168;
          *(v17 + 56) = &type metadata for Int32;
          *(v17 + 64) = &protocol witness table for Int32;
          *(v17 + 32) = v9;
          v18 = sub_1005CF000();
          *(v17 + 96) = v18;
          v19 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
          *(v17 + 104) = v19;
          *(v17 + 72) = v10;
          *(v17 + 136) = &type metadata for String;
          v20 = sub_1000053B0();
          *(v17 + 112) = v13;
          *(v17 + 120) = v15;
          *(v17 + 176) = &type metadata for UInt;
          *(v17 + 144) = v20;
          *(v17 + 152) = 109;
          v21 = v175[0];
          *(v17 + 216) = v18;
          *(v17 + 224) = v19;
          *(v17 + 184) = &protocol witness table for UInt;
          *(v17 + 192) = v21;
          v22 = v10;
          v23 = v21;
          v24 = static os_log_type_t.error.getter();
          sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v17);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v25 = static os_log_type_t.error.getter();
          v8 = _swiftEmptyArrayStorage;
          sub_100005404(v16, &_mh_execute_header, v25, "Missing or invalid curve end point. Ignoring element.", 53, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v26 = swift_allocObject();
          v26[2] = 8;
          v26[3] = 0;
          v26[4] = 0;
          v26[5] = 0;
          v27 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v28 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v29 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v30 = String._bridgeToObjectiveC()();

          [v171 handleFailureInFunction:v28 file:v29 lineNumber:109 isFatal:0 format:v30 args:v27];
        }

        else
        {
          v84 = *&v81;
          v85 = v82;
          *&v86 = COERCE_DOUBLE(sub_100C58780(*(v5 + 4), *(v5 + 5), 1));
          if (v87)
          {
            v173 = v6;
            v171 = objc_opt_self();
            v88 = [v171 _atomicIncrementAssertCount];
            v175[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(v8, v175);
            StaticString.description.getter();
            v89 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v90 = String._bridgeToObjectiveC()();

            v91 = [v90 lastPathComponent];

            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v95 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v96 = swift_initStackObject();
            *(v96 + 16) = v168;
            *(v96 + 56) = &type metadata for Int32;
            *(v96 + 64) = &protocol witness table for Int32;
            *(v96 + 32) = v88;
            v97 = sub_1005CF000();
            *(v96 + 96) = v97;
            v98 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
            *(v96 + 104) = v98;
            *(v96 + 72) = v89;
            *(v96 + 136) = &type metadata for String;
            v99 = sub_1000053B0();
            *(v96 + 112) = v92;
            *(v96 + 120) = v94;
            *(v96 + 176) = &type metadata for UInt;
            *(v96 + 144) = v99;
            *(v96 + 152) = 115;
            v100 = v175[0];
            *(v96 + 216) = v97;
            *(v96 + 224) = v98;
            *(v96 + 184) = &protocol witness table for UInt;
            *(v96 + 192) = v100;
            v101 = v89;
            v102 = v100;
            v103 = static os_log_type_t.error.getter();
            sub_100005404(v95, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v96);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v104 = static os_log_type_t.error.getter();
            v8 = _swiftEmptyArrayStorage;
            sub_100005404(v95, &_mh_execute_header, v104, "Missing or invalid curve control point 1. Ignoring element.", 59, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v105 = swift_allocObject();
            v105[2] = 8;
            v105[3] = 0;
            v105[4] = 0;
            v105[5] = 0;
            v106 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v28 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v29 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v30 = String._bridgeToObjectiveC()();

            [v171 handleFailureInFunction:v28 file:v29 lineNumber:115 isFatal:0 format:v30 args:v106];
          }

          else
          {
            v140 = *&v86;
            *&v141 = COERCE_DOUBLE(sub_100C58780(*(v5 + 6), *(v5 + 7), 1));
            if ((v142 & 1) == 0)
            {
              v162 = *&v141;
              v32 = sub_10011F334(v84, v85, v140);
              v133 = v163;
              v134 = sub_10011F334(v84, v85, v162);
              v135 = v164;
              v132 = 2;
              v7 = v174;
              goto LABEL_32;
            }

            v173 = v6;
            v171 = objc_opt_self();
            v143 = [v171 _atomicIncrementAssertCount];
            v175[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(v8, v175);
            StaticString.description.getter();
            v144 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v145 = String._bridgeToObjectiveC()();

            v146 = [v145 lastPathComponent];

            v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v149 = v148;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v150 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v151 = swift_initStackObject();
            *(v151 + 16) = v168;
            *(v151 + 56) = &type metadata for Int32;
            *(v151 + 64) = &protocol witness table for Int32;
            *(v151 + 32) = v143;
            v152 = sub_1005CF000();
            *(v151 + 96) = v152;
            v153 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
            *(v151 + 104) = v153;
            *(v151 + 72) = v144;
            *(v151 + 136) = &type metadata for String;
            v154 = sub_1000053B0();
            *(v151 + 112) = v147;
            *(v151 + 120) = v149;
            *(v151 + 176) = &type metadata for UInt;
            *(v151 + 144) = v154;
            *(v151 + 152) = 121;
            v155 = v175[0];
            *(v151 + 216) = v152;
            *(v151 + 224) = v153;
            *(v151 + 184) = &protocol witness table for UInt;
            *(v151 + 192) = v155;
            v156 = v144;
            v157 = v155;
            v158 = static os_log_type_t.error.getter();
            sub_100005404(v150, &_mh_execute_header, v158, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v151);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v159 = static os_log_type_t.error.getter();
            v8 = _swiftEmptyArrayStorage;
            sub_100005404(v150, &_mh_execute_header, v159, "Missing or invalid curve control point 2. Ignoring element.", 59, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v160 = swift_allocObject();
            v160[2] = 8;
            v160[3] = 0;
            v160[4] = 0;
            v160[5] = 0;
            v161 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v28 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v29 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v30 = String._bridgeToObjectiveC()();

            [v171 handleFailureInFunction:v28 file:v29 lineNumber:121 isFatal:0 format:v30 args:v161];
          }
        }

        v5 = v169;
        v6 = v173;
        v7 = v174;
      }

      else
      {
        if (v31)
        {
          *&v107 = COERCE_DOUBLE(sub_100C58780(*(v5 + 2), *(v5 + 3), 0));
          if (v109)
          {
            v173 = v6;
            v174 = v7;
            v171 = objc_opt_self();
            v110 = [v171 _atomicIncrementAssertCount];
            v175[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(v8, v175);
            StaticString.description.getter();
            v111 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v112 = String._bridgeToObjectiveC()();

            v113 = [v112 lastPathComponent];

            v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v116 = v115;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v117 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v118 = swift_allocObject();
            *(v118 + 16) = v168;
            *(v118 + 56) = &type metadata for Int32;
            *(v118 + 64) = &protocol witness table for Int32;
            *(v118 + 32) = v110;
            v119 = sub_1005CF000();
            *(v118 + 96) = v119;
            v120 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
            *(v118 + 104) = v120;
            *(v118 + 72) = v111;
            *(v118 + 136) = &type metadata for String;
            v121 = sub_1000053B0();
            *(v118 + 112) = v114;
            *(v118 + 120) = v116;
            *(v118 + 176) = &type metadata for UInt;
            *(v118 + 144) = v121;
            *(v118 + 152) = 102;
            v122 = v175[0];
            *(v118 + 216) = v119;
            *(v118 + 224) = v120;
            *(v118 + 184) = &protocol witness table for UInt;
            *(v118 + 192) = v122;
            v123 = v111;
            v124 = v122;
            v125 = static os_log_type_t.error.getter();
            sub_100005404(v117, &_mh_execute_header, v125, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v118);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v126 = static os_log_type_t.error.getter();
            sub_100005404(v117, &_mh_execute_header, v126, "Missing or invalid line end point. Ignoring element.", 52, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v127 = swift_allocObject();
            v127[2] = 8;
            v127[3] = 0;
            v127[4] = 0;
            v127[5] = 0;
            v128 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v129 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v130 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v131 = String._bridgeToObjectiveC()();

            [v171 handleFailureInFunction:v129 file:v130 lineNumber:102 isFatal:0 format:v131 args:v128];

            v5 = v169;
            v6 = v173;
            v7 = v174;
            v8 = _swiftEmptyArrayStorage;
            goto LABEL_7;
          }

          v84 = *&v107;
          v85 = v108;
          v132 = 1;
          goto LABEL_31;
        }

        *&v33 = COERCE_DOUBLE(sub_100C58780(*(v5 + 2), *(v5 + 3), 0));
        if ((v35 & 1) == 0)
        {
          v84 = *&v33;
          v85 = v34;
          v132 = 0;
          goto LABEL_31;
        }

        v173 = v6;
        v174 = v7;
        v171 = objc_opt_self();
        v36 = [v171 _atomicIncrementAssertCount];
        v175[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(v8, v175);
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        v39 = [v38 lastPathComponent];

        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v43 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v44 = swift_allocObject();
        *(v44 + 16) = v168;
        *(v44 + 56) = &type metadata for Int32;
        *(v44 + 64) = &protocol witness table for Int32;
        *(v44 + 32) = v36;
        v45 = sub_1005CF000();
        *(v44 + 96) = v45;
        v46 = sub_100C58578(&qword_1019F52E0, sub_1005CF000);
        *(v44 + 104) = v46;
        *(v44 + 72) = v37;
        *(v44 + 136) = &type metadata for String;
        v47 = sub_1000053B0();
        *(v44 + 112) = v40;
        *(v44 + 120) = v42;
        *(v44 + 176) = &type metadata for UInt;
        *(v44 + 144) = v47;
        *(v44 + 152) = 95;
        v48 = v175[0];
        *(v44 + 216) = v45;
        *(v44 + 224) = v46;
        *(v44 + 184) = &protocol witness table for UInt;
        *(v44 + 192) = v48;
        v49 = v37;
        v50 = v48;
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v43, &_mh_execute_header, v52, "Missing or invalid move end point. Ignoring element.", 52, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v53 = swift_allocObject();
        v53[2] = 8;
        v53[3] = 0;
        v53[4] = 0;
        v53[5] = 0;
        v54 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v56 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v57 = String._bridgeToObjectiveC()();

        [v171 handleFailureInFunction:v55 file:v56 lineNumber:95 isFatal:0 format:v57 args:v54];

        v5 = v169;
        v6 = v173;
        v7 = v174;
        v8 = _swiftEmptyArrayStorage;
      }

LABEL_7:
      sub_100C58624(v5, type metadata accessor for CRLProto_Path.Element);
      v7 += v172;
      if (!--v6)
      {
        goto LABEL_43;
      }
    }
  }

  v170 = _swiftEmptyArrayStorage;
LABEL_43:
  sub_100C58624(v167, type metadata accessor for CRLProto_Path);
  return v170;
}

char *sub_100C5AB60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_100024E98(a1, a2);
  BinaryDecodingOptions.init()();
  sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path);
  Message.init(serializedData:extensions:partial:options:)();
  if (!v2)
  {
    sub_100C5AD9C(v12, v9, type metadata accessor for CRLProto_Path);
    v3 = sub_100C59324(v9);
    sub_100C58624(v12, type metadata accessor for CRLProto_Path);
  }

  return v3;
}

uint64_t sub_100C5AD34(double a1, double a2)
{
  _D8 = a2;
  _D9 = a1;
  v13.x = 0.0;
  v13.y = 0.0;
  if (CGPointEqualToPoint(*&a1, v13))
  {
    return 0;
  }

  __asm { FCVT            H0, D9 }

  v11[0] = _H0;
  __asm { FCVT            H0, D8 }

  v11[1] = _H0;
  return sub_100AE5050(v11, &v12);
}

uint64_t sub_100C5AD9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100C5AE04(void *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CRLProto_Path(0);
  __chkstk_darwin(v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  v10 = sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100020E58(&v15, *(&v16 + 1));
    sub_1006D6258();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v11 = v14[0];
    v12 = v14[1];
    sub_100005070(&v15);
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_100024E98(v11, v12);
    BinaryDecodingOptions.init()();
    sub_100C58578(&qword_101A16D68, type metadata accessor for CRLProto_Path);
    Message.init(serializedData:extensions:partial:options:)();
    sub_100C5AD9C(v9, v6, type metadata accessor for CRLProto_Path);
    v10 = sub_100C59324(v6);
    sub_100C58624(v9, type metadata accessor for CRLProto_Path);
    sub_10002640C(v11, v12);
  }

  sub_100005070(a1);
  return v10;
}

unint64_t sub_100C5B090()
{
  result = qword_101A16D70;
  if (!qword_101A16D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16D70);
  }

  return result;
}

unint64_t sub_100C5B0E4()
{
  result = qword_101A16D78;
  if (!qword_101A16D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16D78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLBezierPathPointData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLBezierPathPointData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100C5B1D4(uint64_t a1)
{
  if (*(a1 + 48) <= 2u)
  {
    return *(a1 + 48);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_100C5B1EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100C5B3E0(char *a1, uint64_t (*a2)(void))
{
  v4 = [*&a1[OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_view] window];
  if (v4)
  {

    if (qword_1019F22F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = static OS_os_log.crlFreehandDrawingStrokeAnimation;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator();
    *(inited + 64) = sub_100068454(&qword_101A16DD0, v7, type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator);
    *(inited + 32) = a1;
    v8 = v5;
    a1;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Stopping animation on %{public}p.", 33, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    StrokeAnimationController.stopAnimation()();
  }

  return a2();
}

id sub_100C5B614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100C5B6C8(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_self();
    v2 = [v1 _atomicIncrementAssertCount];
    v24 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v24);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_1005CF04C();
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 34;
    v14 = v24;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Should not set incomingShapeItemUUIDs more than once.", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v1 handleFailureInFunction:v21 file:v22 lineNumber:34 isFatal:0 format:v23 args:v20];
  }
}

uint64_t sub_100C5BA64(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v5 + 472) = a3;
  *(v5 + 480) = v4;
  *(v5 + 464) = a2;
  *(v5 + 456) = a4;
  *(v5 + 448) = a1;
  v6 = type metadata accessor for PKDrawing();
  *(v5 + 488) = v6;
  *(v5 + 496) = *(v6 - 8);
  *(v5 + 504) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 512) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 520) = v8;
  *(v5 + 528) = v7;

  return _swift_task_switch(sub_100C5BB68, v8, v7);
}

uint64_t sub_100C5BB68()
{
  v38 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 456);
  v4 = *(v0 + 448);
  v5 = OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_view;
  *(v1 + v5) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_didBeginRunning) = 0;
  *(v1 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_incomingShapeItemUUIDs) = 0;
  *(v1 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_canvasViewScale) = v3;
  CGAffineTransformMakeScale(&v37, v3, v3);
  v6 = *&v37.a;
  v7 = *&v37.c;
  v8 = *&v37.tx;
  v37.a = v2;

  sub_10079AD64(v9);
  *(v0 + 440) = v37.a;
  sub_1005B981C(&unk_101A22650);
  sub_1000067A8(&qword_101A12070, &unk_101A22650);
  PKDrawing.init<A>(strokes:)();
  PKDrawing.bounds.getter();
  v41 = CGRectInset(v40, -5.0, -5.0);
  v42 = CGRectIntegral(v41);
  *(v0 + 256) = v6;
  *(v0 + 272) = v7;
  *(v0 + 288) = v8;
  v43 = CGRectApplyAffineTransform(v42, (v0 + 256));
  x = v43.origin.x;
  y = v43.origin.y;
  [*(v1 + v5) setFrame:?];
  CGAffineTransformMakeTranslation(&v37, -x, -y);
  v12 = *&v37.a;
  v13 = *&v37.c;
  v14 = *&v37.tx;
  *(v0 + 304) = v6;
  *(v0 + 320) = v7;
  *(v0 + 336) = v8;
  *(v0 + 352) = v12;
  *(v0 + 368) = v13;
  *(v0 + 384) = v14;
  CGAffineTransformConcat((v0 + 208), (v0 + 304), (v0 + 352));
  v15 = *(v1 + v5);
  type metadata accessor for StrokeAnimationController();
  swift_allocObject();
  v16 = v4;
  v17 = v15;
  *(v1 + OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_animationController) = StrokeAnimationController.init(canvasView:containerView:drawingTransform:)();
  v18 = type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator();
  *(v0 + 424) = v1;
  *(v0 + 432) = v18;
  v19 = objc_msgSendSuper2((v0 + 424), "init");
  *(v0 + 536) = v19;
  v20 = qword_1019F22F0;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 464);
  v22 = *(v0 + 472);
  swift_beginAccess();
  v24 = static OS_os_log.crlFreehandDrawingStrokeAnimation;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 56) = v18;
  *(inited + 64) = sub_100068454(&qword_101A16DD0, v26, type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator);
  *(inited + 32) = v21;
  v27 = *(v23 + 16);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v27;
  v28 = *(v22 + 16);
  *(inited + 136) = &type metadata for Int;
  *(inited + 144) = &protocol witness table for Int;
  *(inited + 112) = v28;
  v29 = v24;
  v30 = *(PKDrawing.strokes.getter() + 16);

  *(inited + 176) = &type metadata for Int;
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = v30;
  v31 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v31, "Setting up animation on %{public}p from %{public}d strokes to %{public}d strokes in drawing with %{public}d strokes.", 116, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 544) = *&v21[OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_animationController];

  v32 = swift_task_alloc();
  *(v0 + 552) = v32;
  *v32 = v0;
  v32[1] = sub_100C5BF94;
  v33 = *(v0 + 504);
  v35 = *(v0 + 464);
  v34 = *(v0 + 472);

  return StrokeAnimationController.setupRefineAnimation(from:to:drawing:)(v35, v34, v33);
}

uint64_t sub_100C5BF94()
{
  v1 = *v0;

  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return _swift_task_switch(sub_100C5C118, v3, v2);
}

uint64_t sub_100C5C118()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = v0[61];
  v4 = v0[62];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[67];

  return v5(v6);
}

uint64_t sub_100C5C1B0(_BYTE *a1, void (**a2)(void))
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchTime();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  _Block_copy(a2);
  if (sub_10098EABC(&_mh_execute_header, "runAnimation(withCompletionHandler:)", 36, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLiOSFreehandDrawingStrokeAnimator.swift", 106, 2, 81))
  {
    v31 = v9;
    v32 = v8;
    v33 = v5;
    v34 = v4;
    a1[OBJC_IVAR____TtC8Freeform35CRLiOSFreehandDrawingStrokeAnimator_didBeginRunning] = 1;
    if (qword_1019F22F0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = static OS_os_log.crlFreehandDrawingStrokeAnimation;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator();
    *(inited + 64) = sub_100068454(&qword_101A16DD0, v19, type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator);
    *(inited + 32) = a1;
    v20 = v17;
    v21 = a1;
    v22 = static os_log_type_t.default.getter();
    sub_100005404(v20, &_mh_execute_header, v22, "Running animation on %{public}p.", 32, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    StrokeAnimationController.startAnimation(withDuration:)(0.75);
    sub_100006370(0, &qword_1019F2D90);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v35 = *(v35 + 8);
    (v35)(v12, v37);
    v23 = swift_allocObject();
    v23[2] = v21;
    v23[3] = sub_100685EBC;
    v23[4] = v16;
    aBlock[4] = sub_100C5C7D0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189C7F0;
    v24 = _Block_copy(aBlock);
    v25 = v21;

    v26 = v36;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100068454(&qword_1019F4D10, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    v27 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v33 + 8))(v7, v27);
    (*(v31 + 8))(v26, v32);
    (v35)(v15, v37);
  }

  else
  {
    a2[2](a2);
  }
}

unint64_t sub_100C5C7E8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform25CRLiCloudConnectionStatusO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100C5C814(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F50 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD7958;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_100006370(0, &qword_1019F6E98);
  *(inited + 72) = a2;
  v7 = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

void sub_100C5C9B4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F40 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD7948;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for CKDeviceToDeviceEncryptionStatus(0);
  *(inited + 96) = v7;
  *(inited + 72) = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

uint64_t sub_100C5CB60()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(*(v1 + 56) + 16);
  v4 = v2;

  os_unfair_lock_lock(v3);
  v5 = v4;
  os_unfair_lock_unlock(v3);

  if (v2)
  {

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    v9 = sub_100006370(0, &qword_1019F6E98);
    *v8 = v0;
    v8[1] = sub_100C5CCE8;
    v10 = v0[6];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0xD00000000000001DLL, 0x8000000101594C50, sub_100C5DFEC, v10, v9);
  }
}

uint64_t sub_100C5CCE8()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100C5CE04;
  }

  else
  {

    v3 = sub_1005DA098;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100C5CE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A16F78);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = *(a2 + 104);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = sub_100C5DFF4;
  v13[3] = v10;
  v13[4] = v12;
  aBlock[4] = sub_100015184;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10000880C;
  aBlock[3] = &unk_10189CBF0;
  v14 = _Block_copy(aBlock);

  [v11 fetchUserRecordIDWithCompletionHandler:v14];
  _Block_release(v14);
}

uint64_t sub_100C5D034(void *a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&qword_101A16F78);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v3 = a1;
    sub_1005B981C(&qword_101A16F78);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100C5D0B4()
{
  v0 = [objc_opt_self() defaultContainer];
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_1000081B4;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = *"";
  v3[2] = sub_10000880C;
  v3[3] = &unk_10189C8D0;
  v2 = _Block_copy(v3);

  [v0 accountInfoWithCompletionHandler:v2];
  _Block_release(v2);
}

uint64_t sub_100C5D1F4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *(v0 + 64);

  return v0;
}

uint64_t sub_100C5D290()
{
  sub_100C5D1F4();

  return swift_deallocClassInstance();
}

NSString sub_100C5D38C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7948 = result;
  return result;
}

NSString sub_100C5D3C4()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD7958 = result;
  return result;
}

void sub_100C5D4EC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100131204();
  v2 = String._bridgeToObjectiveC()();
  [v0 setInteger:v1 forKey:v2];
}

void sub_100C5D58C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlDefault;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "Skipping iCloud dialog due to user default", 42, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v6 = [v0 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 integerForKey:v7];

    if (!v8 || v8 < sub_100131204())
    {
      v9 = [objc_opt_self() sharedApplication];
      v10 = [v9 delegate];

      if (v10)
      {
        type metadata accessor for CRLiOSAppDelegate();
        swift_dynamicCastClassUnconditional();

        swift_unknownObjectRelease();
        sub_10000A05C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100C5D7A8()
{
  v7 = &type metadata for CRLAppleAccountFeatureFlags;
  v8 = sub_1008B57B8();
  isFeatureEnabled(_:)();
  sub_100005070(v6);
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_100C5D8C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = [v4 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100C5D7A8();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v44 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  sub_10067F2EC(a2);
  v16 = String._bridgeToObjectiveC()();

  v53 = sub_100C5E080;
  v54 = v15;
  aBlock = _NSConcreteStackBlock;
  v50 = *"";
  v51 = sub_10068B39C;
  v52 = &unk_10189CC40;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  v47 = v4;
  v20 = [v4 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  sub_10067F2EC(a2);
  v25 = String._bridgeToObjectiveC()();

  v53 = sub_100C5E0C4;
  v54 = v24;
  aBlock = _NSConcreteStackBlock;
  v50 = *"";
  v51 = sub_10068B39C;
  v52 = &unk_10189CC90;
  v26 = _Block_copy(&aBlock);

  v27 = [v18 actionWithTitle:v25 style:1 handler:v26];
  _Block_release(v26);

  v46 = v19;
  v28 = v19;
  v29 = v27;
  [v44 addAction:v28];
  [v44 addAction:v27];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v32 = [v47 mainBundle];
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(inited + 56) = &type metadata for String;
  v39 = sub_1000053B0();
  *(inited + 64) = v39;
  *(inited + 32) = v36;
  *(inited + 40) = v38;
  v40 = sub_100C5D7A8();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v39;
  *(inited + 72) = v40;
  *(inited + 80) = v41;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v42, "Presenting alert: %@ %@", 23, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v53 = sub_100C5D4EC;
  v54 = 0;
  aBlock = _NSConcreteStackBlock;
  v50 = *"";
  v51 = sub_100007638;
  v52 = &unk_10189CCB8;
  v43 = _Block_copy(&aBlock);

  [a1 presentViewController:v44 animated:1 completion:v43];
  _Block_release(v43);
}

unint64_t sub_100C5DF7C()
{
  result = qword_101A16DD8;
  if (!qword_101A16DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A16DD8);
  }

  return result;
}

uint64_t sub_100C5DFF4(void *a1, char a2)
{
  sub_1005B981C(&qword_101A16F78);

  return sub_100C5D034(a1, a2 & 1);
}

id sub_100C5E080()
{
  v1 = *(v0 + 16);
  result = [objc_opt_self() crl_openICloudPreferencePane];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_100C5E0C4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100C5E128()
{

  sub_100C5E2D0(v0 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata);
  sub_100686028(v0 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLAssetSyncRemoteRecord()
{
  result = qword_101A16FB0;
  if (!qword_101A16FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C5E1F8()
{
  type metadata accessor for CRLAssetSyncMetadata();
  if (v0 <= 0x3F)
  {
    sub_10084E720();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100C5E2D0(uint64_t a1)
{
  v2 = type metadata accessor for CRLAssetSyncMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CRLAssetSyncMetadata()
{
  result = qword_101A170A0;
  if (!qword_101A170A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C5E3A0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100ABE298();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100C5E424()
{
  if (*v0)
  {
    return 0x65747845656C6966;
  }

  else
  {
    return 0x4955557465737361;
  }
}

uint64_t sub_100C5E470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4955557465737361 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65747845656C6966 && a2 == 0xED00006E6F69736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100C5E55C(uint64_t a1)
{
  v2 = sub_100C5EB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C5E598(uint64_t a1)
{
  v2 = sub_100C5EB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C5E5D4(void *a1)
{
  v3 = sub_1005B981C(&qword_101A170E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_100C5EB4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100C04A38(&qword_1019F43C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLAssetSyncMetadata();
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100C5E77C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1005B981C(&qword_101A170D8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLAssetSyncMetadata();
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C5EB4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_100C04A38(&qword_1019F43A8);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_100C5EBA0(v19, v18);
  sub_100005070(a1);
  return sub_100C5E2D0(v19);
}

uint64_t sub_100C5EAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100C5EB4C()
{
  result = qword_101A170E0;
  if (!qword_101A170E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A170E0);
  }

  return result;
}

uint64_t sub_100C5EBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLAssetSyncMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100C5EC18()
{
  result = qword_101A170F0;
  if (!qword_101A170F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A170F0);
  }

  return result;
}

unint64_t sub_100C5EC70()
{
  result = qword_101A170F8;
  if (!qword_101A170F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A170F8);
  }

  return result;
}

unint64_t sub_100C5ECC8()
{
  result = qword_101A17100;
  if (!qword_101A17100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A17100);
  }

  return result;
}

id sub_100C5ED4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100C5EDB4(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  sub_100776644(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_100C67720(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_100776644((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      _swiftEmptyArrayStorage[v19 + 4] = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return _swiftEmptyArrayStorage;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_100C67720(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = _swiftEmptyArrayStorage[2];
      v24 = _swiftEmptyArrayStorage[3];
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_100776644((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      _swiftEmptyArrayStorage[2] = v25 + 1;
      _swiftEmptyArrayStorage[v25 + 4] = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

UIImage *sub_100C5EFF4(void *a1, unsigned __int8 a2)
{
  v4 = [objc_opt_self() mainScreen];
  v5 = [v4 traitCollection];

  v6 = [v5 crl_isUserInterfaceStyleDark];
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = [objc_opt_self() systemImageNamed:v20];

      sub_1005B981C(&unk_1019F4D60);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10146CE00;
      v23 = objc_opt_self();
      *(v22 + 32) = [v23 redColor];
      *(v22 + 40) = [v23 whiteColor];
      sub_100006370(0, &qword_101A11110);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v25 = [objc_opt_self() configurationWithPaletteColors:isa];

      v14 = [v21 imageByApplyingSymbolConfiguration:v25];
      return v14;
    }

    if (!a1)
    {
      v31 = String._bridgeToObjectiveC()();
      v14 = [objc_opt_self() imageNamed:v31];
LABEL_37:

      return v14;
    }

    v12 = [a1 referenceColor];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 UIColor];

      if (v14)
      {
        v15 = sub_100C67C08(v14);

        sub_1007A98C8(a1, 2u);
        return v15;
      }

      sub_1007A98C8(a1, 2u);
      return v14;
    }

    sub_1007A98C8(a1, 2u);
    return 0;
  }

  if (a2)
  {
    sub_100006370(0, &unk_101A172E8);
    v17 = objc_opt_self();
    if (v6)
    {
      v18 = [v17 blackColor];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v28 = [v17 whiteColor];
      v29 = static NSObject.== infix(_:_:)();

      if (v29)
      {
        goto LABEL_38;
      }
    }

    v30 = [a1 color];
    v31 = [v30 UIColor];

    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() imageNamed:v32];

    if (v33)
    {
      goto LABEL_36;
    }

LABEL_41:

    return 0;
  }

  v7 = [a1 referenceColor];
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = [v8 blackColor];
    v10 = v9;
    if (v7)
    {
      if (v9)
      {
        sub_100006370(0, &qword_101A00EB0);
        v11 = static NSObject.== infix(_:_:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if (v9)
    {
      goto LABEL_32;
    }

LABEL_28:

    return sub_100C67ABC();
  }

  v26 = [v8 whiteColor];
  v10 = v26;
  if (v7)
  {
    if (!v26)
    {
LABEL_26:
      v10 = v7;
LABEL_32:

      goto LABEL_33;
    }

    sub_100006370(0, &qword_101A00EB0);
    v27 = static NSObject.== infix(_:_:)();

    if ((v27 & 1) == 0)
    {
LABEL_33:
      v34 = [a1 referenceColor];
      if (!v34)
      {
        return 0;
      }

      v35 = v34;
      v31 = [v34 UIColor];

      if (!v31)
      {
        return 0;
      }

      v36 = String._bridgeToObjectiveC()();
      v33 = [objc_opt_self() imageNamed:v36];

      if (v33)
      {
LABEL_36:
        v14 = [v33 imageWithTintColor:v31 renderingMode:1];

        goto LABEL_37;
      }

      goto LABEL_41;
    }
  }

  else if (v26)
  {
    goto LABEL_32;
  }

LABEL_38:

  return sub_100C67970();
}

UIImage *sub_100C5F604(void *a1, char a2)
{
  v4 = [objc_opt_self() mainScreen];
  v5 = [v4 traitCollection];

  v6 = [v5 crl_isUserInterfaceStyleDark];
  if (!a2)
  {
    v12 = a1;
    v13 = [v12 referenceColor];
    if (!v13 || (v14 = v13, v15 = [v13 UIColor], v14, !v15))
    {
      sub_1007A98C8(a1, 0);
      return 0;
    }

    v16 = [v12 referenceColor];
    v17 = objc_opt_self();
    if (v6)
    {
      v18 = [v17 blackColor];
      v19 = v18;
      if (!v16)
      {
        if (!v18)
        {
LABEL_26:
          v34 = sub_100C67E78();
LABEL_34:
          v23 = v34;

          v24 = a1;
          v25 = 0;
          goto LABEL_35;
        }

LABEL_28:

LABEL_29:
        v35 = String._bridgeToObjectiveC()();
        v36 = [objc_opt_self() imageNamed:v35];

        if (v36)
        {
          v37 = [v36 imageWithTintColor:v15 renderingMode:1];
          sub_1007A98C8(a1, 0);

          return v37;
        }

        sub_1007A98C8(a1, 0);

        return 0;
      }

      if (v18)
      {
        sub_100006370(0, &qword_101A00EB0);
        v20 = static NSObject.== infix(_:_:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

LABEL_24:
      v19 = v16;
      goto LABEL_28;
    }

    v32 = [v17 whiteColor];
    v19 = v32;
    if (v16)
    {
      if (!v32)
      {
        goto LABEL_24;
      }

      sub_100006370(0, &qword_101A00EB0);
      v33 = static NSObject.== infix(_:_:)();

      if ((v33 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v32)
    {
      goto LABEL_28;
    }

    v34 = sub_100C67D2C();
    goto LABEL_34;
  }

  if (a2 != 1)
  {
    return 0;
  }

  sub_100006370(0, &unk_101A172E8);
  v7 = objc_opt_self();
  v8 = a1;
  if ((v6 & 1) == 0)
  {
    v21 = [v7 whiteColor];
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      v11 = sub_100C67D2C();
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v9 = [v7 blackColor];
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
LABEL_17:
    v26 = [v8 color];
    v27 = [v26 UIColor];

    v28 = String._bridgeToObjectiveC()();
    v29 = [objc_opt_self() imageNamed:v28];

    if (v29)
    {
      v30 = [v29 imageWithTintColor:v27 renderingMode:1];
      sub_1007A98C8(a1, 1u);

      return v30;
    }

    sub_1007A98C8(a1, 1u);

    return 0;
  }

  v11 = sub_100C67E78();
LABEL_16:
  v23 = v11;
  v24 = a1;
  v25 = 1;
LABEL_35:
  sub_1007A98C8(v24, v25);
  return v23;
}

id sub_100C5FA54()
{
  sub_1005B981C(&qword_101A172F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1014A50F0;
  if (qword_1019F1830 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6A40;
  *(v0 + 32) = qword_101AD6A40;
  *(v0 + 40) = 1;
  v2 = qword_1019F1838;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD6A48;
  *(v0 + 48) = qword_101AD6A48;
  *(v0 + 56) = 1;
  v5 = qword_1019F1840;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD6A50;
  *(v0 + 64) = qword_101AD6A50;
  *(v0 + 72) = 1;
  v8 = qword_1019F1848;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD6A58;
  *(v0 + 80) = qword_101AD6A58;
  *(v0 + 88) = 1;
  v11 = qword_1019F1850;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_101AD6A60;
  *(v0 + 96) = qword_101AD6A60;
  *(v0 + 104) = 1;
  v14 = qword_1019F1858;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD6A68;
  *(v0 + 112) = qword_101AD6A68;
  *(v0 + 120) = 1;
  v17 = qword_1019F1860;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_101AD6A70;
  *(v0 + 128) = qword_101AD6A70;
  *(v0 + 136) = 1;
  v20 = qword_1019F1868;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_101AD6A78;
  *(v0 + 144) = qword_101AD6A78;
  *(v0 + 152) = 1;
  v23 = qword_1019F1870;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_101AD6A80;
  *(v0 + 160) = qword_101AD6A80;
  *(v0 + 168) = 1;
  v26 = qword_1019F1878;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_101AD6A88;
  *(v0 + 176) = qword_101AD6A88;
  *(v0 + 184) = 1;
  v29 = qword_1019F1880;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_101AD6A90;
  *(v0 + 192) = qword_101AD6A90;
  *(v0 + 200) = 1;
  v32 = qword_1019F1888;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD6A98;
  *(v0 + 208) = qword_101AD6A98;
  *(v0 + 216) = 1;
  xmmword_101AD7990 = xmmword_1014A5100;
  qword_101AD79A0 = v0;

  return v34;
}

id sub_100C5FE14()
{
  sub_1005B981C(&qword_101A172F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101483930;
  if (qword_1019F1890 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6AA0;
  *(v0 + 32) = qword_101AD6AA0;
  *(v0 + 40) = 0;
  v2 = qword_1019F1898;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD6AA8;
  *(v0 + 48) = qword_101AD6AA8;
  *(v0 + 56) = 0;
  v5 = qword_1019F18A0;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD6AB0;
  *(v0 + 64) = qword_101AD6AB0;
  *(v0 + 72) = 0;
  v8 = qword_1019F18A8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD6AB8;
  *(v0 + 80) = qword_101AD6AB8;
  *(v0 + 88) = 0;
  v11 = qword_1019F18B0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_101AD6AC0;
  *(v0 + 96) = qword_101AD6AC0;
  *(v0 + 104) = 0;
  v14 = qword_1019F18B8;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD6AC8;
  *(v0 + 112) = qword_101AD6AC8;
  *(v0 + 120) = 0;
  v17 = qword_1019F18C0;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_101AD6AD0;
  *(v0 + 128) = qword_101AD6AD0;
  *(v0 + 136) = 0;
  xmmword_101AD79B0 = xmmword_1014A5110;
  qword_101AD79C0 = v0;

  return v19;
}

id sub_100C60060()
{
  sub_1005B981C(&qword_101A172F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10148EDC0;
  if (qword_1019F1830 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD6A40;
  *(v0 + 32) = qword_101AD6A40;
  *(v0 + 40) = 1;
  v2 = qword_1019F1838;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD6A48;
  *(v0 + 48) = qword_101AD6A48;
  *(v0 + 56) = 1;
  v5 = qword_1019F1840;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD6A50;
  *(v0 + 64) = qword_101AD6A50;
  *(v0 + 72) = 1;
  v8 = qword_1019F1848;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_101AD6A58;
  *(v0 + 80) = qword_101AD6A58;
  *(v0 + 88) = 1;
  v11 = qword_1019F1850;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_101AD6A60;
  *(v0 + 96) = qword_101AD6A60;
  *(v0 + 104) = 1;
  v14 = qword_1019F1858;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD6A68;
  *(v0 + 112) = qword_101AD6A68;
  *(v0 + 120) = 1;
  v17 = qword_1019F1860;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_101AD6A70;
  *(v0 + 128) = qword_101AD6A70;
  *(v0 + 136) = 1;
  v20 = qword_1019F1868;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = qword_101AD6A78;
  *(v0 + 144) = qword_101AD6A78;
  *(v0 + 152) = 1;
  v23 = qword_1019F1870;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_101AD6A80;
  *(v0 + 160) = qword_101AD6A80;
  *(v0 + 168) = 1;
  v26 = qword_1019F1878;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_101AD6A88;
  *(v0 + 176) = qword_101AD6A88;
  *(v0 + 184) = 1;
  v29 = qword_1019F1880;
  v30 = v28;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_101AD6A90;
  *(v0 + 192) = qword_101AD6A90;
  *(v0 + 200) = 1;
  v32 = qword_1019F1888;
  v33 = v31;
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = qword_101AD6A98;
  *(v0 + 208) = qword_101AD6A98;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 2;
  xmmword_101AD79D0 = xmmword_1014A5120;
  qword_101AD79E0 = v0;

  return v34;
}

id sub_100C6042C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  v4 = [v3 traitCollection];

  [v4 crl_isUserInterfaceStyleDark];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() imageNamed:v5];

  v7 = *(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v7 options] & 4) == 0 && (objc_msgSend(v7, "options") & 0x1000) == 0 && (objc_msgSend(v7, "options") & 0x80000) == 0 && (objc_msgSend(v7, "options") & 0x10000000) == 0)
  {
    v98 = v6;
    v97 = objc_opt_self();
    v8 = [v97 _atomicIncrementAssertCount];
    v101[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v101);
    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v95 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v96;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v94;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 179;
    v17 = v101[0];
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v96;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v21, "The Color Palette base layer button is only used for color palette and sticky notes elements", 92, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v97 handleFailureInFunction:v24 file:v25 lineNumber:179 isFatal:0 format:v26 args:v23];

    v6 = v98;
  }

  if (([v7 options] & 4) != 0 || (objc_msgSend(v7, "options") & 0x1000) != 0 || (objc_msgSend(v7, "options") & 0x80000) != 0 || (objc_msgSend(v7, "options") & 0x10000000) != 0)
  {
    sub_100C64C48();
    if (v27 != 1)
    {
      v54 = v27;
      if (v28)
      {
        v55 = String._bridgeToObjectiveC()();
        v56 = [objc_opt_self() imageNamed:v55];

        v57 = v6;
        if (v56)
        {
          v58 = [objc_opt_self() labelColor];
          v59 = [v56 imageWithTintColor:v58];
        }

        else
        {
          v59 = 0;
        }

        v79 = [objc_opt_self() mainBundle];
        v80 = String._bridgeToObjectiveC()();
        v81 = String._bridgeToObjectiveC()();
        v82 = [v79 localizedStringForKey:v80 value:v81 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v83;

        sub_1000505D0(v54);
        v62 = 0;
        v6 = v57;
        if (!v59)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (!v27 || (v60 = [v27 referenceColor]) == 0 || (v61 = v60, v62 = objc_msgSend(v60, "UIColor"), v61, !v62))
        {
          v72 = objc_opt_self();
          v73 = v6;
          v74 = [v72 mainBundle];
          v75 = String._bridgeToObjectiveC()();
          v76 = String._bridgeToObjectiveC()();
          v77 = [v74 localizedStringForKey:v75 value:v76 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v78;

          sub_1000505D0(v54);
          goto LABEL_28;
        }

        v100 = v6;
        v63 = String._bridgeToObjectiveC()();
        v64 = objc_opt_self();
        v65 = [v64 imageNamed:v63];

        if (v65)
        {
          v59 = [v65 imageWithTintColor:v62];

          if (v59)
          {
            v66 = v59;
            if (sub_100C9CFE8())
            {
              v67 = [v2 mainScreen];
              v68 = [v67 traitCollection];

              [v68 crl_isUserInterfaceStyleDark];
              v69 = String._bridgeToObjectiveC()();
              v70 = [v64 imageNamed:v69];

              if (v70)
              {
                v71 = v70;
                v59 = sub_100BE612C(v66);
              }

              else
              {
                v59 = 0;
              }
            }
          }
        }

        else
        {
          v59 = 0;
        }

        v85 = [v62 accessibilityName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v86;
        sub_1000505D0(v54);

        v6 = v100;
        if (!v59)
        {
          goto LABEL_38;
        }
      }

LABEL_32:
      v84 = [(UIImage *)v59 crl_imageWithAlpha:0 renderingMode:0.4];
      goto LABEL_39;
    }
  }

  v99 = v6;
  v29 = objc_opt_self();
  v30 = [v29 _atomicIncrementAssertCount];
  v101[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v101);
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146CA70;
  *(v38 + 56) = &type metadata for Int32;
  *(v38 + 64) = &protocol witness table for Int32;
  *(v38 + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30);
  *(v38 + 96) = v39;
  v40 = sub_1005CF04C();
  *(v38 + 104) = v40;
  *(v38 + 72) = v31;
  *(v38 + 136) = &type metadata for String;
  v41 = sub_1000053B0();
  *(v38 + 112) = v34;
  *(v38 + 120) = v36;
  *(v38 + 176) = &type metadata for UInt;
  *(v38 + 184) = &protocol witness table for UInt;
  *(v38 + 144) = v41;
  *(v38 + 152) = 201;
  v42 = v101[0];
  *(v38 + 216) = v39;
  *(v38 + 224) = v40;
  *(v38 + 192) = v42;
  v43 = v31;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v46, "Unable to retrieve shape fill information from the shapeFillDataProvider", 72, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v49 file:v50 lineNumber:201 isFatal:0 format:v51 args:v48];

  v6 = v99;
  v52 = v99;
  v53 = 0;
LABEL_28:
  v62 = 0;
  v59 = v6;
  if (v6)
  {
    goto LABEL_32;
  }

LABEL_38:
  v84 = 0;
LABEL_39:
  sub_100006370(0, &qword_1019F6190);
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v93 = v87;
  v88 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v89 = sub_1005D10E8(v88, v62, v59, v84);

  v90 = v89;
  if (v53)
  {
    v91 = String._bridgeToObjectiveC()();
  }

  else
  {
    v91 = 0;
  }

  [v89 setAccessibilityValue:{v91, 0, 0, 0, sub_1005D928C, v93}];

  return v89;
}

void *sub_100C61208(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100C64C48();
  if (v6 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a4 + 16);
  if (v9)
  {
    v56 = v8;
    v59 = (v6 != 1) & v7;
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100006370(0, &qword_1019F6190);
    v58 = UIAccessibilityTraitSelected;
    v57 = ~UIAccessibilityTraitSelected;
    v10 = (a4 + 40);
    while (1)
    {
      v28 = *(v10 - 1);
      v29 = *v10;
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      *(v30 + 24) = v29;
      *(v30 + 32) = v60;
      sub_10089D774(v28, v29);
      sub_10089D774(v28, v29);
      v31 = v60;
      v51 = 0;
      v52 = 0;
      v54 = sub_100C681D0;
      v55 = v30;
      v53 = 0;
      v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      if (v59)
      {
        goto LABEL_32;
      }

      if (v56)
      {
        if (v29)
        {
          if (v29 != 1)
          {
            goto LABEL_32;
          }

          v32 = v28;
          v33 = [v56 referenceColor];
          if (v33)
          {
            v34 = v33;
            v35 = [v33 UIColor];

            if (v35)
            {
              sub_100006370(0, &qword_1019F54D0);
              v36 = [v32 UIColor];
              v37 = static NSObject.== infix(_:_:)();

              if (v37)
              {
                v11 = 1;
                v38 = sub_100C5F604(v28, 1);
                sub_1007A98C8(v28, 1u);

                goto LABEL_40;
              }
            }
          }
        }

        else
        {
          sub_100006370(0, &qword_101A2BF30);
          sub_10089D774(v28, 0);
          v39 = v56;
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            v38 = sub_100C5F604(v28, 0);
            sub_1007A98C8(v28, 0);
            v11 = 1;
            goto LABEL_34;
          }
        }

        sub_1007A98C8(v28, v29);
      }

      else if (v29 >= 3)
      {
        v38 = sub_100C5F604(v28, 3);
        v11 = 1;
        goto LABEL_7;
      }

LABEL_32:
      v41 = sub_100C5EFF4(v28, v29);
      v38 = v41;
      if (v29 <= 1)
      {
        v11 = 0;
        if (!v29)
        {
LABEL_34:
          v42 = v38;
          v43 = [v28 referenceColor];
          goto LABEL_41;
        }

        v32 = v28;
LABEL_40:
        v46 = v38;
        v43 = [v32 referenceColor];
LABEL_41:
        v45 = v43;
        if (v45)
        {
LABEL_42:
          v47 = v45;
          v48 = [v45 UIColor];
          v16 = [v48 accessibilityName];

          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v49;

          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (v29 != 2 || !v28)
      {
        v11 = 0;
LABEL_7:
        v12 = v38;
        goto LABEL_8;
      }

      v44 = v41;
      v11 = 0;
      v45 = [v28 referenceColor];
      if (v45)
      {
        goto LABEL_42;
      }

LABEL_8:
      v13 = [objc_opt_self() mainBundle];
      v14 = String._bridgeToObjectiveC()();
      v15 = String._bridgeToObjectiveC()();
      v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
LABEL_9:
      v10 += 16;

      v20 = sub_100D4D764(v38, v61, a1, v17, v19);

      v21 = v20;
      v22 = [(objc_class *)v21 accessibilityTraits];
      v23 = v57;
      if ((v22 & v58) == 0)
      {
        v23 = -1;
      }

      v24 = v23 & v22;
      if ((v22 & v58) == v58)
      {
        v25 = 0;
      }

      else
      {
        v25 = v58;
      }

      v26 = v25 | v22;
      if (v11)
      {
        v27 = v26;
      }

      else
      {
        v27 = v24;
      }

      [(objc_class *)v21 setAccessibilityTraits:v27, v51, v52, v53, v54, v55];
      sub_1007A98C8(v28, v29);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!--v9)
      {

        return _swiftEmptyArrayStorage;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_100C61748(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_100C64F6C();
      return;
    }

    a2 = 0;
  }

  sub_100C642F8(a2);
}

id sub_100C61798()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showHeaderView) == 1)
  {
    sub_1005B981C(&unk_1019F4D60);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10146CE00;
    *(v1 + 32) = sub_100C61968();
    v2 = [*(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options];
    v3 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
    if ((v2 & 0x1000) != 0)
    {
      v3 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
    }

    v4 = v0 + *v3;
    v5 = *(v4 + 8);
    v6 = *(v4 + 16);

    v8 = sub_100C624E4(v7, v5, v6, 34.0);

    *(v1 + 40) = v8;
    v9 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v9 initWithArrangedSubviews:isa];

    [v11 setAxis:1];
    [v11 setSpacing:12.0];
  }

  else
  {
    v12 = [*(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options];
    v13 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
    if ((v12 & 0x1000) != 0)
    {
      v13 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
    }

    v14 = v0 + *v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);

    v11 = sub_100C624E4(v17, v15, v16, 34.0);
  }

  return v11;
}

id sub_100C61968()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v59 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  static UIButton.Configuration.plain()();
  v55 = objc_opt_self();
  v12 = [v55 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UIButton.Configuration.title.setter();
  *(swift_allocObject() + 16) = ObjectType;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v16 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  UIButton.Configuration.image.setter();
  v19 = [objc_opt_self() configurationWithPointSize:7 weight:14.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6E10);
  v21 = *(v59 + 16);
  v58 = v6;
  v21(v8, v11, v6);
  v57 = v20;
  v22 = UIButton.init(configuration:primaryAction:)();
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  v24 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v54 = objc_opt_self();
  v25 = [v54 boldSystemFontOfSize:18.0];
  [v24 setFont:v25];

  v26 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle + 8);
  if (v26)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v24 setText:v27];

  v28 = [objc_opt_self() labelColor];
  [v24 setTextColor:v28];

  [v24 setTextAlignment:1];
  [v24 setAdjustsFontSizeToFitWidth:1];
  [v24 setAllowsDefaultTighteningForTruncation:1];
  [v24 setMinimumScaleFactor:0.6];
  v29 = v24;
  [v29 setShowsLargeContentViewer:1];
  if (v26)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v29 setLargeContentTitle:v30];

  v31 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
  [v29 addInteraction:v31];

  sub_1005B981C(&unk_1019F4D60);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10146CE00;
  *(v32 + 32) = v22;
  *(v32 + 40) = v29;
  v33 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v33 initWithArrangedSubviews:isa];

  v36 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType);
  v56 = v22;
  if (v36 == 2 || (v36 & 1) == 0)
  {

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v38 = v42;
    v60.value.super.super.isa = v42;
    v43.super.super.super.super.isa = UIButton.init(type:primaryAction:)(UIButtonTypeSystem, v60).super.super.super.super.isa;
    v44 = [v55 mainBundle];
    v45 = String._bridgeToObjectiveC()();
    v46 = String._bridgeToObjectiveC()();
    v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

    if (!v47)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = String._bridgeToObjectiveC()();
    }

    [(objc_class *)v43.super.super.super.super.isa setTitle:v47 forState:0];

    v48 = [(objc_class *)v43.super.super.super.super.isa titleLabel];
    if (v48)
    {
      v49 = v48;
      v50 = [v54 systemFontOfSize:18.0];
      [v49 setFont:v50];
    }

    v41 = v43.super.super.super.super.isa;
    LODWORD(v51) = 1148846080;
    [(objc_class *)v41 setContentCompressionResistancePriority:0 forAxis:v51];
    [(objc_class *)v41 setShowsLargeContentViewer:1];

    v52 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
    [(objc_class *)v41 addInteraction:v52];

    [v35 addArrangedSubview:v41];
  }

  else
  {
    v37 = v22;
    v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v35 addArrangedSubview:v38];
    v39 = [v38 widthAnchor];
    v40 = [v37 widthAnchor];

    v41 = [v39 constraintEqualToAnchor:v40];
    [(objc_class *)v41 setActive:1];
  }

  [v35 setDistribution:4];
  [v35 setSpacing:2.5];

  (*(v59 + 8))(v11, v58);
  return v35;
}

uint64_t sub_100C62340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() systemFontOfSize:18.0];
  sub_1005D9028();
  return AttributeContainer.subscript.setter();
}

void sub_100C623EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 16);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 56))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_100C62490()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100C64F6C();
  }
}

id sub_100C624E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v8 = sub_100C61208(a4, a1, a2, a3);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    sub_100006370(0, &qword_1019F6D00);

    _bridgeCocoaArray<A>(_:)();

    goto LABEL_16;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!a2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v11 = sub_100C5EDB4(0, v10, a2, v9, a2);
  v12 = v11[2];
  if (v12)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = 4;
    do
    {
      if (v11[v13] >> 62)
      {
        sub_100006370(0, &qword_1019F6D00);

        _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100006370(0, &qword_1019F6D00);
      }

      v14 = objc_allocWithZone(UIStackView);
      sub_100006370(0, &qword_1019F6D00);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v16 = [v14 initWithArrangedSubviews:isa];

      [v16 setDistribution:3];
      v17 = [v16 heightAnchor];
      v18 = [v17 constraintGreaterThanOrEqualToConstant:a4];

      [v18 setActive:1];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v13;
      --v12;
    }

    while (v12);
  }

  v19 = sub_100C628F0();
  if (v19)
  {
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_19;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100006370(0, &qword_1019F6D00);
LABEL_16:

  v21 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initWithArrangedSubviews:v22];

  [v23 setAxis:1];
  [v23 setSpacing:*(v5 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_rowSpacing)];
  return v23;
}

id sub_100C628F0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v102 - v3;
  v114 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v111 = *(v114 - 1);
  __chkstk_darwin(v114);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v116 = *(v11 - 8);
  v117 = v11;
  __chkstk_darwin(v11);
  v112 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v102 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v115 = &v102 - v18;
  v119 = _swiftEmptyArrayStorage;
  v19 = *&v0[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element];
  if (([v19 options] & 4) != 0 || (objc_msgSend(v19, "options") & 0x4000000) != 0 && (v0[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType] & 1) != 0 || (objc_msgSend(v19, "options") & 0x10000000) != 0)
  {
    v104 = v6;
    v107 = ObjectType;
    v102 = v19;
    v21 = sub_100006370(0, &qword_1019F6190);
    *(swift_allocObject() + 16) = v0;
    v113 = v0;
    v110 = v21;
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v109 = objc_opt_self();
    v23 = [v109 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = objc_opt_self();
    v105 = v22;
    v103 = v22;
    v106 = [v27 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    static UIButton.Configuration.filled()();

    UIButton.Configuration.title.setter();
    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePadding.setter();
    v28 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    (*(v8 + 104))(v10, enum case for UIButton.Configuration.Size.medium(_:), v7);
    UIButton.Configuration.buttonSize.setter();
    v108 = objc_opt_self();
    v29 = [v108 mainScreen];
    v30 = [v29 traitCollection];

    LODWORD(v29) = [v30 crl_isUserInterfaceStyleDark];
    if (v29)
    {
      v31 = v104;
      if (qword_1019F12B0 != -1)
      {
        swift_once();
      }

      v32 = &qword_101AD5DF0;
    }

    else
    {
      v31 = v104;
      if (qword_1019F12A8 != -1)
      {
        swift_once();
      }

      v32 = &qword_101AD5DE8;
    }

    v33 = *v32;
    UIButton.Configuration.baseBackgroundColor.setter();
    v34 = [v27 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    (*(v111 + 104))(v31, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v114);
    UIButton.Configuration.cornerStyle.setter();
    v35 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v35(aBlock, 0);
    UIButton.Configuration.contentInsets.setter();
    *(swift_allocObject() + 16) = 0;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v36 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v36 - 8) + 56))(v4, 0, 1, v36);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    v38 = v115;
    v37 = v116;
    v39 = v117;
    (*(v116 + 32))(v115, v15, v117);
    sub_100006370(0, &qword_1019F6E10);
    (*(v37 + 16))(v112, v38, v39);
    v114 = v103;
    v40 = UIButton.init(configuration:primaryAction:)();
    v41 = [v27 labelColor];
    v42 = [v27 labelColor];
    v43 = sub_1005D46A0(0, 0, v41, v42);
    v45 = v44;

    aBlock[4] = v43;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_10189CF70;
    v46 = _Block_copy(aBlock);

    [v40 setConfigurationUpdateHandler:v46];
    _Block_release(v46);
    v47 = v40;
    v48 = String._bridgeToObjectiveC()();
    [v47 setAccessibilityLabel:v48];

    v49 = v47;
    [v49 setShowsLargeContentViewer:1];
    v50 = String._bridgeToObjectiveC()();
    [v49 setLargeContentTitle:v50];

    [v49 setLargeContentImage:0];
    v51 = objc_allocWithZone(UILargeContentViewerInteraction);
    v52 = v113;
    v53 = [v51 initWithDelegate:v113];
    [v49 addInteraction:v53];

    v54 = [v49 titleLabel];
    if (v54)
    {
      v55 = v54;
      [v54 setTextAlignment:1];
    }

    v56 = [v49 heightAnchor];
    v57 = [v56 constraintGreaterThanOrEqualToConstant:34.0];

    [v57 setActive:1];

    (*(v116 + 8))(v115, v117);
    v58 = [v49 heightAnchor];
    v59 = [v58 constraintGreaterThanOrEqualToConstant:34.0];

    [v59 setActive:1];
    sub_100C64C48();
    if (v60 < 2)
    {
      goto LABEL_23;
    }

    v62 = v60;
    if (v61)
    {
      sub_1000505D0(v60);
LABEL_23:
      v62 = 0;
      goto LABEL_43;
    }

    v63 = [v102 options];
    v64 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_fullColorPalette;
    if ((v63 & 0x1000) != 0)
    {
      v64 = &OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_stickyColorPalette;
    }

    v65 = *&v52[*v64 + 16];
    v66 = *(v65 + 16);

    sub_1000505E0(v62);
    if (!v66)
    {
LABEL_41:
      sub_1000505D0(v62);

      goto LABEL_42;
    }

    v67 = (v65 + 40);
    while (1)
    {
      if (*v67 - 2 >= 2)
      {
        v69 = *(v67 - 1);
        if (*v67)
        {
          v70 = [v69 color];
          v71 = [v62 referenceColor];
          v72 = v71;
          if (!v70)
          {
            if (!v71)
            {
              sub_1007A98C8(v69, 1u);
LABEL_53:
              sub_1000505D0(v62);

              sub_1000505D0(v62);
              v62 = 0;
LABEL_42:
              v52 = v113;
LABEL_43:
              v74 = v109;
              v75 = [v108 mainScreen];
              v76 = [v75 traitCollection];

              [v76 crl_isUserInterfaceStyleDark];
              if (v62)
              {
                v77 = v62;
                v78 = [v77 referenceColor];
                if (v78 && (v79 = v78, v80 = [v78 UIColor], v79, v80))
                {
                  v81 = sub_100C67C08(v80);
                }

                else
                {

                  v81 = 0;
                }
              }

              else
              {
                v82 = String._bridgeToObjectiveC()();
                v81 = [objc_opt_self() imageNamed:v82];

                v77 = 0;
              }

              v83 = *&v52[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_buttonSize];
              *(swift_allocObject() + 16) = v52;
              v84 = v52;
              v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
              v86 = [v74 mainBundle];
              v87 = String._bridgeToObjectiveC()();
              v88 = String._bridgeToObjectiveC()();
              v89 = [v86 localizedStringForKey:v87 value:v88 table:0];

              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v92 = v91;

              v93 = sub_100D4D764(v81, v85, v83, v90, v92);

              v94 = v93;
              LODWORD(v95) = 1148846080;
              [(objc_class *)v94 setContentHuggingPriority:0 forAxis:v95];
              LODWORD(v96) = 1148846080;
              [(objc_class *)v94 setContentCompressionResistancePriority:0 forAxis:v96];
              sub_1005B981C(&unk_1019F4D60);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10146CE00;
              *(inited + 32) = v49;
              *(inited + 40) = v94;
              sub_1007993B0(inited);

LABEL_50:
              v98 = objc_allocWithZone(UIStackView);
              sub_100006370(0, &qword_1019F6D00);
              isa = Array._bridgeToObjectiveC()().super.isa;

              v100 = [v98 initWithArrangedSubviews:isa];

              [v100 setAlignment:1];
              [v100 setSpacing:7.5];
              return v100;
            }

            goto LABEL_39;
          }

          if (!v71)
          {
            v72 = v70;
LABEL_39:

            sub_1007A98C8(v69, 1u);
            goto LABEL_40;
          }

          sub_100006370(0, &qword_101A00EB0);
          v73 = static NSObject.== infix(_:_:)();

          sub_1007A98C8(v69, 1u);
          if (v73)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_100006370(0, &qword_101A2BF30);
          sub_1000505E0(v62);
          sub_10089D774(v69, 0);
          v68 = static NSObject.== infix(_:_:)();
          sub_1000505D0(v62);
          sub_1007A98C8(v69, 0);
          if (v68)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_40:
      v67 += 16;
      if (!--v66)
      {
        goto LABEL_41;
      }
    }
  }

  if (v0[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_showMoreOptionsButton] == 1)
  {
    v20 = sub_100C6393C();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_50;
  }

  return 0;
}

id sub_100C6393C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v1 - 8);
  v64 = &v58 - v2;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v62 = *(v3 - 1);
  v63 = v3;
  __chkstk_darwin(v3);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UIButton.Configuration.Size();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  __chkstk_darwin(v13);
  v70 = &v58 - v14;
  sub_100006370(0, &qword_1019F6190);
  *(swift_allocObject() + 16) = v0;
  v67 = v0;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16 = [objc_opt_self() mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() imageNamed:v21];

  v23 = objc_opt_self();
  v61 = v15;
  v59 = v15;
  v24 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  static UIButton.Configuration.filled()();

  v65 = v20;
  UIButton.Configuration.title.setter();
  v69 = v22;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v25 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.medium(_:), v58);
  UIButton.Configuration.buttonSize.setter();
  v26 = [objc_opt_self() mainScreen];
  v27 = [v26 traitCollection];

  LODWORD(v26) = [v27 crl_isUserInterfaceStyleDark];
  if (v26)
  {
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DF0;
  }

  else
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DE8;
  }

  v29 = *v28;
  UIButton.Configuration.baseBackgroundColor.setter();
  v30 = objc_opt_self();
  v31 = [v30 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v62 + 104))(v60, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v63);
  UIButton.Configuration.cornerStyle.setter();
  v32 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v32(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = v24;
  v63 = v24;
  v33 = v64;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v34 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v35 = v69;

  v37 = v70;
  v36 = v71;
  v38 = v72;
  (*(v71 + 32))(v70, v12, v72);
  sub_100006370(0, &qword_1019F6E10);
  (*(v36 + 16))(v66, v37, v38);
  v39 = v59;
  v40 = UIButton.init(configuration:primaryAction:)();
  v41 = [v30 labelColor];
  v42 = [v30 labelColor];
  v43 = sub_1005D46A0(0, 0, v41, v42);
  v45 = v44;

  aBlock[4] = v43;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_10189CEF8;
  v46 = _Block_copy(aBlock);

  [v40 setConfigurationUpdateHandler:v46];
  _Block_release(v46);
  v47 = v40;
  v48 = String._bridgeToObjectiveC()();
  [v47 setAccessibilityLabel:v48];

  v49 = v47;
  [v49 setShowsLargeContentViewer:1];
  v50 = String._bridgeToObjectiveC()();
  [v49 setLargeContentTitle:v50];

  [v49 setLargeContentImage:v35];
  v51 = objc_allocWithZone(UILargeContentViewerInteraction);
  v52 = [v51 initWithDelegate:v67];
  [v49 addInteraction:v52];

  v53 = [v49 titleLabel];
  if (v53)
  {
    v54 = v53;
    [v53 setTextAlignment:1];
  }

  v55 = [v49 heightAnchor];

  v56 = [v55 constraintGreaterThanOrEqualToConstant:44.0];
  [v56 setActive:1];

  (*(v71 + 8))(v70, v72);
  return v49;
}

void sub_100C642F8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v3 options] & 4) != 0 || (objc_msgSend(v3, "options") & 0x1000) != 0)
  {
    v6 = *(*(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_shapeFillDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (sub_100006370(0, &qword_101A0C7E0))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v8 = [v6 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v53 = v9;
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = 0;
    }

    [v9 setShapeFill:a1];
    goto LABEL_16;
  }

  if (([v3 options] & 8) != 0)
  {
    if (!a1 || (v10 = [a1 referenceColor]) == 0)
    {
      v10 = [objc_opt_self() clearColor];
    }

    v11 = *(*(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_strokeDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    v12 = v10;
    if ([v11 mostSpecificEditorConformingToProtocol:&OBJC_PROTOCOL___CRLStrokeEditor])
    {
      aBlock[35] = &OBJC_PROTOCOL___CRLStrokeEditor;
      v13 = swift_dynamicCastObjCProtocolConditional();
      if (v13)
      {
        [v13 applyStrokeColor:v12];
      }

      swift_unknownObjectRelease();
    }

    sub_100A07740();

    goto LABEL_30;
  }

  if (([v3 options] & 0x10) != 0 || (objc_msgSend(v3, "options") & 0x80000) != 0)
  {
    if (!a1)
    {
      v20 = objc_opt_self();
      v21 = [v20 _atomicIncrementAssertCount];
      aBlock[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, aBlock);
      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      v24 = [v23 lastPathComponent];

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v28 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v21;
      v30 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v30;
      v31 = sub_1005CF04C();
      *(inited + 104) = v31;
      *(inited + 72) = v22;
      *(inited + 136) = &type metadata for String;
      v32 = sub_1000053B0();
      *(inited + 112) = v25;
      *(inited + 120) = v27;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v32;
      *(inited + 152) = 422;
      v33 = aBlock[0];
      *(inited + 216) = v30;
      *(inited + 224) = v31;
      *(inited + 192) = v33;
      v34 = v22;
      v35 = v33;
      v36 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v37 = static os_log_type_t.error.getter();
      sub_100005404(v28, &_mh_execute_header, v37, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v38 = swift_allocObject();
      v38[2] = 8;
      v38[3] = 0;
      v38[4] = 0;
      v38[5] = 0;
      v39 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v40 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v41 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v42 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v40 file:v41 lineNumber:422 isFatal:0 format:v42 args:v39];

      return;
    }

    v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_textDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    v15 = swift_allocObject();
    v15[3] = 0;
    v15[2] = 0;
    aBlock[4] = sub_10061344C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10066C70C;
    aBlock[3] = &unk_10189CE80;
    v16 = _Block_copy(aBlock);

    v12 = a1;

    [v14 enumerateEditorsOnStackUsingBlock:v16];
    _Block_release(v16);
    swift_beginAccess();
    v17 = v15[2];
    v18 = v15[3];
    swift_unknownObjectRetain();

    if (v17)
    {
      ObjectType = swift_getObjectType();
      (*(v18 + 176))(v12, ObjectType, v18);
      swift_unknownObjectRelease();
    }

LABEL_30:

    return;
  }

  if (([v3 options] & 0x4000000) != 0)
  {
    v43 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType);
    if (v43 == 2)
    {
      return;
    }

    if (v43)
    {
      if (!a1)
      {
        return;
      }

      v44 = [a1 referenceColor];
      if (!v44)
      {
        return;
      }

      v45 = v44;
      v46 = *(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tableDataProvider);
      v53 = [objc_allocWithZone(CRLColorFill) initWithColor:v44];
      v47 = *(v46 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (type metadata accessor for CRLTableEditor())
      {
        v48 = swift_getObjCClassFromMetadata();
      }

      else
      {
        v48 = 0;
      }

      [v47 mostSpecificCurrentEditorOfClass:v48];
      if (swift_dynamicCastClass())
      {
        sub_1011D753C(v53);
        swift_unknownObjectRelease();

        goto LABEL_16;
      }
    }

    else
    {
      if (!a1)
      {
        return;
      }

      v53 = [a1 referenceColor];
      if (!v53)
      {
        return;
      }

      v49 = *(*(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tableDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (type metadata accessor for CRLTableEditor())
      {
        v50 = swift_getObjCClassFromMetadata();
      }

      else
      {
        v50 = 0;
      }

      [v49 mostSpecificCurrentEditorOfClass:v50];
      if (swift_dynamicCastClass())
      {
        sub_1011D6EBC(v53);
        goto LABEL_48;
      }
    }
  }

  else
  {
    if (([v3 options] & 0x10000000) == 0)
    {
      return;
    }

    v4 = *(*(v1 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (type metadata accessor for CRLTableCellEditor())
    {
      v5 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v5 = 0;
    }

    [v4 mostSpecificCurrentEditorOfClass:v5];
    v51 = swift_dynamicCastClass();
    if (v51)
    {
      v52 = v51;
      v53 = a1;
      sub_1011C59EC(v52, a1);
LABEL_48:
      swift_unknownObjectRelease();
LABEL_16:

      return;
    }
  }

  swift_unknownObjectRelease();
}

void sub_100C64C48()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v1 options] & 4) == 0 && (objc_msgSend(v1, "options") & 0x1000) == 0 || sub_1011298AC() == 1)
  {
    if (([v1 options] & 8) != 0)
    {
      sub_100A07D44();
      if (v2 >= 2)
      {
        if ((v3 & 1) == 0)
        {
          v10 = v2;
          [objc_allocWithZone(CRLColorFill) initWithColor:v2];
          sub_1000505D0(v10);
          return;
        }

        sub_1000505D0(v2);
      }
    }

    if (([v1 options] & 0x10) != 0 || (objc_msgSend(v1, "options") & 0x80000) != 0)
    {
      v4 = *(*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_textDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      *(v5 + 16) = 0;
      v14[4] = sub_100612814;
      v14[5] = v5;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = *"";
      v14[2] = sub_10066C70C;
      v14[3] = &unk_10189CE58;
      v6 = _Block_copy(v14);

      [v4 enumerateEditorsOnStackUsingBlock:v6];
      _Block_release(v6);
      swift_beginAccess();
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      swift_unknownObjectRetain();

      if (v7)
      {
        ObjectType = swift_getObjectType();
        (*(v8 + 168))(ObjectType, v8);
        swift_unknownObjectRelease();
      }
    }

    else if (([v1 options] & 0x4000000) != 0)
    {
      v11 = *(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_tablePaletteType);
      if (v11 != 2)
      {
        if (v11)
        {
          sub_100FC563C();
        }

        else
        {
          sub_100FC4F58();
          if (v12 >= 2)
          {
            v13 = v12;
            [objc_allocWithZone(CRLColorFill) initWithColor:v12];
            sub_1000505D0(v13);
          }
        }
      }
    }

    else if (([v1 options] & 0x10000000) != 0)
    {
      sub_1012568A0();
    }
  }
}

void sub_100C64F6C()
{
  if (v0[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_isEditingText] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle];
    v1 = *&v0[OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_headerTitle + 8];
    v3 = type metadata accessor for CRLiOSMiniFormatterTextEditingColorPickerViewController();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_builder] = v0;
    v5 = objc_allocWithZone(PKColorPicker);

    v6 = v0;
    v7 = [v5 init];
    *&v4[OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_colorPicker] = v7;
    v8 = &v4[OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_headerTitle];
    *v8 = v2;
    *(v8 + 1) = v1;
    v25.receiver = v4;
    v25.super_class = v3;
    v9 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v10 = &v6[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 2);
      ObjectType = swift_getObjectType();
      (*(v11 + 24))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v13 = &v0[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v14 = *(v13 + 2);
  v15 = type metadata accessor for CRLiOSMiniFormatterColorPickerViewController();
  v16 = swift_getObjectType();
  v17 = v0;
  v18 = swift_unknownObjectRetain();
  v24 = sub_1005D6BA0(v18, v17, v15, v16, v14);
  [v24 setDelegate:v17];
  sub_100C64C48();
  if (v19 != 1)
  {
    if ((v20 & 1) == 0)
    {
      if (!v19)
      {
        goto LABEL_8;
      }

      v21 = v19;
      v22 = [v19 referenceColor];
      v19 = v21;
      if (v22)
      {
        v23 = [v22 UIColor];

        v19 = v21;
        if (v23)
        {
          [v24 crl_ifVisuallyDifferentSetSelectedColor:v23];

          v19 = v21;
        }
      }
    }

    sub_1000505D0(v19);
  }

LABEL_8:
  (*(v14 + 32))(v24, v17, v16, v14);
  swift_unknownObjectRelease();
}

void *sub_100C65220()
{
  v1 = sub_100911E34();
  if (v1)
  {
    sub_1006369C4(v1);
  }

  v2 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if ((([v2 options] & 4) != 0 || (objc_msgSend(v2, "options") & 0x1000) != 0) && (v3 = sub_10068AFC0()) != 0 || (objc_msgSend(v2, "options") & 8) != 0 && (v3 = sub_10068AFC0()) != 0 || ((objc_msgSend(v2, "options") & 0x10) != 0 || (objc_msgSend(v2, "options") & 0x80000) != 0) && (v3 = sub_10068AFC0()) != 0 || (objc_msgSend(v2, "options") & 0x4000000) != 0 && (v3 = sub_100FC4E5C()) != 0)
  {
    v4 = v3;
    if (v3 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v5 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v5 = v4;
    }

    sub_10063F990(v5);
  }

  else if (([v2 options] & 0x10000000) != 0)
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
    if (type metadata accessor for CRLTableCellEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v9 = [v7 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    if (swift_dynamicCastClass())
    {
      sub_1011C3CD4();
      v11 = v10;
      swift_unknownObjectRelease();
      if (v11)
      {
        sub_1005B981C(&unk_1019F4D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101465920;
        *(inited + 32) = v11;
        sub_10063F990(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100C654B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v6 options] & 4) == 0 && (objc_msgSend(v6, "options") & 0x1000) == 0 || (v7 = sub_10068AFC0()) == 0)
  {
LABEL_11:
    if (([v6 options] & 8) != 0)
    {
      sub_100064288(a2, &v67);
      type metadata accessor for CRLShapeItem();
      if (swift_dynamicCast())
      {
        v10 = v66;
        v17 = sub_10068AFC0();
        if (v17)
        {
          v18 = v17;
          v67 = v10;
          __chkstk_darwin(v17);
          v64 = &v67;
          v19 = sub_100C33540(sub_100613380, v63, v18);

          if (v19)
          {
            v20 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
            v21 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            swift_beginAccess();
            v14 = *(v20 + v21);
            if (!*(v14 + 16))
            {
              goto LABEL_18;
            }

            v15 = sub_1007CF108(16);
            if ((v22 & 1) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }
      }
    }

    if (([v6 options] & 0x10) != 0 || (objc_msgSend(v6, "options") & 0x80000) != 0)
    {
      sub_100064288(a2, &v67);
      type metadata accessor for CRLShapeItem();
      if (swift_dynamicCast())
      {
        v25 = v66;
        v26 = sub_10068AFC0();
        if (v26)
        {
          v27 = v26;
          v65 = a2;
          v67 = v25;
          __chkstk_darwin(v26);
          v64 = &v67;
          v28 = v25;
          v29 = sub_100C33540(sub_100613380, v63, v27);

          if (v29)
          {
            v30 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
            v31 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            v32 = v30;
            swift_beginAccess();
            v33 = *&v30[v31];
            if (*(v33 + 16) && (v34 = sub_1007CF108(29), (v35 & 1) != 0) || (v67 = 0, v68 = 0, v69 = 0, v70 = 1, sub_10077D6BC(&v67), v33 = *&v30[v31], *(v33 + 16)) && (v34 = sub_1007CF108(31), (v36 & 1) != 0) || (v67 = 0, v68 = 0, v69 = 0, v70 = 1, sub_10077D6BC(&v67), v33 = *&v30[v31], *(v33 + 16)) && (v34 = sub_1007CF108(33), (v37 & 1) != 0) || (v67 = 0, v68 = 0, v69 = 0, v70 = 1, sub_10077D6BC(&v67), v33 = *&v30[v31], *(v33 + 16)) && (v34 = sub_1007CF108(34), (v38 & 1) != 0))
            {
              v39 = *(v33 + 56) + 32 * v34;

              sub_100601584(v39, &v67);

LABEL_47:
              sub_10077D6BC(&v67);
              v24 = 1;
              return v24 & 1;
            }

            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 1;
            sub_10077D6BC(&v67);

            goto LABEL_68;
          }

          a2 = v65;
        }

        else
        {
        }
      }
    }

    if (([v6 options] & 0x4000000) != 0)
    {
      sub_100064288(a2, &v67);
      type metadata accessor for CRLTableItem();
      if (swift_dynamicCast())
      {
        v40 = v66;
        v41 = sub_100FC4E5C();
        if (v41)
        {
          v42 = v41;
          v67 = v40;
          __chkstk_darwin(v41);
          v64 = &v67;
          v43 = sub_100C33540(sub_100C681F0, v63, v42);

          if (v43)
          {
            v44 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
            v45 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            v32 = v44;
            swift_beginAccess();
            v46 = *&v44[v45];
            if (*(v46 + 16) && (v47 = sub_1007CF108(66), (v48 & 1) != 0) || (v67 = 0, v68 = 0, v69 = 0, v70 = 1, sub_10077D6BC(&v67), v46 = *&v44[v45], *(v46 + 16)) && (v47 = sub_1007CF108(61), (v49 & 1) != 0))
            {
              v50 = *(v46 + 56) + 32 * v47;

              sub_100601584(v50, &v67);

              goto LABEL_47;
            }

            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 1;
            sub_10077D6BC(&v67);

LABEL_68:
            v24 = 0;
            return v24 & 1;
          }
        }
      }
    }

    if (([v6 options] & 0x10000000) != 0)
    {
      sub_100064288(a2, &v67);
      type metadata accessor for CRLTableItem();
      if (swift_dynamicCast())
      {
        v51 = v66;
        v52 = *(*(v3 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
        if (type metadata accessor for CRLTableCellEditor())
        {
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        }

        else
        {
          ObjCClassFromMetadata = 0;
        }

        v54 = [v52 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
        if (swift_dynamicCastClass())
        {
          sub_1011C3CD4();
          v56 = v55;
          swift_unknownObjectRelease();
          if (v56)
          {
            sub_100006370(0, &qword_1019F54D0);
            if (static NSObject.== infix(_:_:)())
            {
              v57 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
              v58 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
              swift_beginAccess();
              v59 = *(v57 + v58);
              if (*(v59 + 16))
              {
                v60 = sub_1007CF108(60);
                if (v61)
                {
                  sub_100601584(*(v59 + 56) + 32 * v60, &v67);

                  v23 = 1;
                  goto LABEL_20;
                }
              }

              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    v24 = sub_1005D518C(a1, a2);
    return v24 & 1;
  }

  v8 = v7;
  sub_100064288(a2, &v67);
  type metadata accessor for CRLShapeItem();
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {

    goto LABEL_11;
  }

  v10 = v66;
  v67 = v66;
  __chkstk_darwin(v9);
  v64 = &v67;
  v11 = sub_100C33540(sub_100613380, v63, v8);

  if ((v11 & 1) == 0)
  {

    goto LABEL_11;
  }

  v12 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v13 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (!*(v14 + 16) || (v15 = sub_1007CF108(22), (v16 & 1) == 0))
  {
LABEL_18:

LABEL_19:
    v23 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 1;
    goto LABEL_20;
  }

LABEL_17:
  sub_100601584(*(v14 + 56) + 32 * v15, &v67);

  v23 = 1;
LABEL_20:
  sub_10077D6BC(&v67);
  v24 = v23;
  return v24 & 1;
}

unint64_t sub_100C65D38()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v1 options] & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return ([v1 options] >> 19) & 1;
  }
}

uint64_t sub_100C65D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element);
  if (([v6 options] & 4) == 0 && (objc_msgSend(v6, "options") & 0x1000) == 0 && (objc_msgSend(v6, "options") & 0x80000) == 0 && (objc_msgSend(v6, "options") & 0x10000000) == 0)
  {
    goto LABEL_41;
  }

  v7 = sub_10068AFC0();
  if (v7)
  {
    v8 = v7;
    sub_100064288(a2, &v54);
    type metadata accessor for CRLShapeItem();
    v9 = swift_dynamicCast();
    if (v9)
    {
      v10 = v53;
      v54 = v53;
      __chkstk_darwin(v9);
      v52 = &v54;
      v11 = sub_100C33540(sub_100612848, v51, v8);

      if (v11)
      {
        v12 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
        if (([v6 options] & 4) != 0 || (objc_msgSend(v6, "options") & 0x1000) != 0)
        {
          v26 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          swift_beginAccess();
          v27 = *&v12[v26];
          if (!*(v27 + 16) || (v28 = sub_1007CF108(), (v29 & 1) == 0))
          {
LABEL_50:

            v30 = 0;
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 1;
            goto LABEL_51;
          }
        }

        else
        {
          if (([v6 options] & 0x80000) == 0)
          {

LABEL_41:
            v44 = sub_1005D518C(a1, a2);
            return v44 & 1;
          }

          v46 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          swift_beginAccess();
          v47 = *&v12[v46];
          if (*(v47 + 16))
          {
            v48 = sub_1007CF108();
            if (v49)
            {
              sub_100601584(*(v47 + 56) + 32 * v48, &v54);

              goto LABEL_38;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = 0;
          v57 = 1;
          sub_10077D6BC(&v54);
          v27 = *&v12[v46];
          if (!*(v27 + 16))
          {
            goto LABEL_50;
          }

          v28 = sub_1007CF108();
          if ((v50 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_100601584(*(v27 + 56) + 32 * v28, &v54);

        v30 = 1;
LABEL_51:
        sub_10077D6BC(&v54);
        v44 = v30;
        return v44 & 1;
      }
    }

    else
    {
    }
  }

  v13 = *(*(v3 + OBJC_IVAR____TtC8Freeform38CRLiOSMiniFormatterColorPaletteBuilder_cellDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLTableCellEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v15 = [v13 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  if (swift_dynamicCastClass())
  {
    sub_1011C3CD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v17)
    {
      sub_100064288(a2, &v54);
      type metadata accessor for CRLTableItem();
      if (swift_dynamicCast())
      {
        v18 = v53;
        sub_100006370(0, &qword_1019F54D0);
        if (static NSObject.== infix(_:_:)())
        {
          v19 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
          v20 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
          v21 = v19;
          swift_beginAccess();
          v22 = *&v19[v20];
          if (!*(v22 + 16) || (v23 = sub_1007CF108(), (v24 & 1) == 0))
          {
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v57 = 1;
            sub_10077D6BC(&v54);

            v44 = 0;
            return v44 & 1;
          }

          v25 = *(v22 + 56) + 32 * v23;

          sub_100601584(v25, &v54);

          goto LABEL_38;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v31 = sub_100FC4E5C();
  if (!v31)
  {
    goto LABEL_41;
  }

  v32 = v31;
  sub_100064288(a2, &v54);
  type metadata accessor for CRLTableItem();
  v33 = swift_dynamicCast();
  if ((v33 & 1) == 0)
  {

    goto LABEL_41;
  }

  v34 = v53;
  v54 = v53;
  __chkstk_darwin(v33);
  v52 = &v54;
  v35 = sub_100C33540(sub_100C680F8, v51, v32);

  if ((v35 & 1) == 0)
  {

    goto LABEL_41;
  }

  v36 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v37 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v38 = v36;
  swift_beginAccess();
  v39 = *&v36[v37];
  if (!*(v39 + 16) || (v40 = sub_1007CF108(), (v41 & 1) == 0))
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    sub_10077D6BC(&v54);
    v39 = *&v36[v37];
    if (!*(v39 + 16) || (v40 = sub_1007CF108(), (v42 & 1) == 0))
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 1;
      sub_10077D6BC(&v54);

      v44 = 0;
      return v44 & 1;
    }
  }

  v43 = *(v39 + 56) + 32 * v40;

  sub_100601584(v43, &v54);

LABEL_38:
  sub_10077D6BC(&v54);
  v44 = 1;
  return v44 & 1;
}

uint64_t sub_100C663B8()
{
  if (([*(v0 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options] & 8) != 0)
  {
    v1 = sub_100A07960();
    if (!v1)
    {
      v3 = v2 ^ 1;
      return v3 & 1;
    }

    if (v1 != 1)
    {
      sub_1000505D0(v1);
    }
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_100C66424()
{
}

void sub_100C66890()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CRLiOSMiniFormatterTextEditingColorPickerViewController();
  objc_msgSendSuper2(&v27, "loadView");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_colorPicker];
  [v5 setDelegate:*&v1[OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_builder]];
  [v5 setColorUserInterfaceStyle:1];
  [v5 setEdgesForExtendedLayout:0];
  sub_100C64C48();
  if (v6 == 1)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = v6;
    v9 = [v6 referenceColor];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 UIColor];
      sub_1000505D0(v8);

      goto LABEL_9;
    }

    v6 = v8;
  }

  sub_1000505D0(v6);
LABEL_8:
  v11 = 0;
LABEL_9:
  [v5 setSelectedColor:v11];

  v12 = [v5 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:v5];
  v14 = sub_100C66D18();
  sub_1005B981C(&unk_1019F4D60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146CE00;
  *(v15 + 32) = v14;
  v16 = v14;
  v17 = [v5 view];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v15 + 40) = v17;
  v18 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArrangedSubviews:isa];

  [v20 setAxis:1];
  [v20 setSpacing:8.0];
  [v20 setLayoutMarginsRelativeArrangement:1];
  v21 = v20;
  [v21 setDirectionalLayoutMargins:{12.0, 8.0, 8.0, 8.0}];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 addSubview:v21];

  v26 = [v1 view];
  sub_1005B981C(&qword_101A172E0);
  v24 = Optional._bridgeToObjectiveC()();

  v25 = [v21 crl_constraintsToAllSidesOfItem:v24];
  swift_unknownObjectRelease();
  if (!v25)
  {
    sub_100006370(0, &qword_1019F4D70);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = Array._bridgeToObjectiveC()().super.isa;
  }

  [objc_opt_self() activateConstraints:v25];

  [v5 didMoveToParentViewController:v1];
}

id sub_100C66D18()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  static UIButton.Configuration.plain()();
  v12 = [objc_opt_self() mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UIButton.Configuration.title.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v16 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  UIButton.Configuration.image.setter();
  v19 = [objc_opt_self() configurationWithPointSize:7 weight:14.0];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.contentInsets.setter();
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6E10);
  v21 = *(v6 + 16);
  v41 = v5;
  v21(v8, v11, v5);
  v22 = v20;
  v23 = UIButton.init(configuration:primaryAction:)();
  LODWORD(v24) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v24];
  v25 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v26 = [objc_opt_self() boldSystemFontOfSize:18.0];
  [v25 setFont:v26];

  if (*(v1 + OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_headerTitle + 8))
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v25 setText:v27];

  v28 = [objc_opt_self() labelColor];
  [v25 setTextColor:v28];

  [v25 setTextAlignment:1];
  v29 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1005B981C(&unk_1019F4D60);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10146E8A0;
  *(v30 + 32) = v23;
  *(v30 + 40) = v25;
  *(v30 + 48) = v29;
  v31 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  v32 = v25;
  v33 = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [v31 initWithArrangedSubviews:isa];

  v36 = [v33 widthAnchor];
  v37 = [v23 widthAnchor];

  v38 = [v36 constraintEqualToAnchor:v37];
  [v38 setActive:1];

  (*(v6 + 8))(v11, v41);
  return v35;
}

void sub_100C67380()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_builder);

    v3 = &v2[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter];
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = *(v3 + 2);

    if (v4)
    {
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

id sub_100C67458()
{
  sub_100C64C48();
  if (v0 == 1)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    if (!v0)
    {
      return 0;
    }

    v2 = v0;
    v3 = [v0 referenceColor];
    v0 = v2;
    if (v3)
    {
      v4 = [v3 UIColor];
      sub_1000505D0(v2);

      result = v4;
      if (v4)
      {
        return result;
      }

      return 0;
    }
  }

  sub_1000505D0(v0);
  return 0;
}

id sub_100C67560(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100C67650()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_builder);
  v2 = OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element;
  if (([*(v1 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_element) options] & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return ([*(v1 + v2) options] >> 19) & 1;
  }
}

void sub_100C676BC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform55CRLiOSMiniFormatterTextEditingColorPickerViewController_colorPicker);
  v2 = sub_100C67458();
  [v1 setSelectedColor:v2];
}

void *sub_100C67720(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = a1 + a3;
  if (__OFADD__(a1, a3))
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v3 = a1;
    v5 = a2 >> 62;
    if (!(a2 >> 62))
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 < v6)
      {
        v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v6 < v3)
      {
        goto LABEL_38;
      }

      if (v7 >= v3)
      {
        goto LABEL_7;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19 < v6)
  {
    v6 = v19;
  }

  if (v6 < v3)
  {
    goto LABEL_38;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < v3)
  {
    goto LABEL_37;
  }

LABEL_7:
  if (v3 < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < v6)
  {
    goto LABEL_40;
  }

  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if ((v4 & 0xC000000000000001) == 0 || v6 == v3)
  {

    if (!v5)
    {
      goto LABEL_19;
    }

LABEL_22:

    v4 = _CocoaArrayWrapper.subscript.getter();
    v3 = v12;
    v6 = v13;
    if (v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_100676500(v4, v11, v3, v6);
    v15 = v14;
LABEL_30:
    swift_unknownObjectRelease();
    return v15;
  }

  if (v6 <= v3)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_100006370(0, &qword_1019F6E10);

  v9 = v3;
  do
  {
    v10 = v9 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v9);
    v9 = v10;
  }

  while (v6 != v10);
  if (v5)
  {
    goto LABEL_22;
  }

LABEL_19:
  v4 &= 0xFFFFFFFFFFFFFF8uLL;
  v11 = v4 + 32;
  v6 = (2 * v6) | 1;
  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  v5 = v11;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = _swiftEmptyArrayStorage;
  }

  v17 = v16[2];

  if (__OFSUB__(v6 >> 1, v3))
  {
    goto LABEL_43;
  }

  if (v17 != (v6 >> 1) - v3)
  {
LABEL_44:
    swift_unknownObjectRelease();
    v11 = v5;
    goto LABEL_23;
  }

  v15 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v15)
  {
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  return v15;
}

UIImage *sub_100C67970()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 imageNamed:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 imageNamed:v4];

    if (v5)
    {
      v6 = [(UIImage *)v5 imageWithTintColor:v3 renderingMode:1];

      if (!v6)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v5 = sub_100BE612C(v6);
      v3 = v2;
      v2 = v6;
    }

LABEL_8:
    return v5;
  }

  return 0;
}

UIImage *sub_100C67ABC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 imageNamed:v0];

  if (v2)
  {
    v3 = [objc_opt_self() blackColor];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 imageNamed:v4];

    if (v5)
    {
      v6 = [(UIImage *)v5 imageWithTintColor:v3 renderingMode:1];

      if (!v6)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v5 = sub_100BE612C(v6);
      v3 = v2;
      v2 = v6;
    }

LABEL_8:
    return v5;
  }

  return 0;
}

UIImage *sub_100C67C08(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = objc_opt_self();
  v4 = [v3 imageNamed:v2];

  if (!v4)
  {
    return 0;
  }

  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 imageNamed:v5];

  if (v6 && (v7 = [v6 imageWithTintColor:a1 renderingMode:1], v6, v7))
  {
    v8 = sub_100BE612C(v7);

    v4 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

UIImage *sub_100C67D2C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 imageNamed:v0];

  if (v2)
  {
    v3 = [objc_opt_self() whiteColor];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 imageNamed:v4];

    if (v5)
    {
      v6 = [(UIImage *)v5 imageWithTintColor:v3 renderingMode:1];

      if (!v6)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v5 = sub_100BE612C(v6);
      v3 = v2;
      v2 = v6;
    }

LABEL_8:
    return v5;
  }

  return 0;
}

UIImage *sub_100C67E78()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 imageNamed:v0];

  if (v2)
  {
    v3 = [objc_opt_self() blackColor];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v1 imageNamed:v4];

    if (v5)
    {
      v6 = [(UIImage *)v5 imageWithTintColor:v3 renderingMode:1];

      if (!v6)
      {
        v5 = 0;
        goto LABEL_8;
      }

      v5 = sub_100BE612C(v6);
      v3 = v2;
      v2 = v6;
    }

LABEL_8:
    return v5;
  }

  return 0;
}

uint64_t sub_100C67FC4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_presenter;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = *(v5 + 16);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 96))(ObjectType, v7);
  if (a2)
  {
    if ((v9 & 1) == 0)
    {
      (*(v7 + 80))(ObjectType, v7);
    }

    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v10 = [objc_allocWithZone(CRLColorFill) initWithUIColor:a1];
    sub_100C642F8(v10);

    goto LABEL_9;
  }

  (*(v7 + 88))(ObjectType, v7);
LABEL_9:

  return swift_unknownObjectRelease();
}

void sub_100C68278(void *a1, long double a2, long double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  sub_100C683C8(a2);
  sub_100C683C8(a3);
  if (sub_1004A48FC())
  {
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    MinY = CGRectGetMinY(v18);
    sub_100C683C8(MaxX);
    v13 = MaxX + v12;
    sub_100C683C8(MinY);
    v15 = v14;

    v16 = sub_10011F31C(v13, MinY + v15, MaxX);
    sub_10011F334(a2, a3, v16);
  }

  else
  {
  }
}

void sub_100C683C8(long double a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong viewScale];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  [CRLCanvasDotGridBackground snapDistanceForViewScale:]_0(v5);
  fmod(a1, v6);
}

id sub_100C684E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCanvasDotGridBackground();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100C6891C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v9 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
LABEL_20:
    *a3 = v9;
    return;
  }

  type metadata accessor for CRLWPLayout();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  if (([v10 layoutIsValid] & 1) == 0)
  {
    [v11 validate];
  }

  sub_1005B981C(&unk_1019F4D60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101465920;
  *(v12 + 32) = a2;
  v13 = qword_1019F1570;
  v14 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v35[3] = sub_1005B981C(&unk_101A001E0);
  v35[0] = v12;

  sub_1007A22B0(v11, v12, &v34);
  sub_100005070(v35);
  v15 = v34;

  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_22:

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_18:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100C69B0C();

      goto LABEL_20;
    }

LABEL_23:
    sub_100C69B0C();

    v31 = _bridgeCocoaArray<A>(_:)();

    swift_bridgeObjectRelease_n();
    v9 = v31;
    goto LABEL_20;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_22;
  }

LABEL_10:
  v32 = a3;
  v34 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      [v18 rect];
      [v11 convertNaturalRectToUnscaledCanvas:?];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = type metadata accessor for CRLTextSelectionRect();
      v29 = objc_allocWithZone(v28);
      v29[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsStart] = 0;
      v29[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsEnd] = 0;
      v30 = &v29[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect];
      *v30 = v21;
      v30[1] = v23;
      v30[2] = v25;
      v30[3] = v27;
      *&v29[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection] = 0;
      v33.receiver = v29;
      v33.super_class = v28;
      objc_msgSendSuper2(&v33, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v16 != v17);

    v9 = v34;
    a3 = v32;
    if (!(v34 >> 62))
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_100C68D98(CGFloat a1, CGFloat a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v32 = 0;
LABEL_17:

    return v32;
  }

  v8 = *(*&v6[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v8)
  {
    v9 = result;
    v10 = v8;
    v11 = [v9 layoutForInfo:v10];

    if (v11)
    {
      type metadata accessor for CRLWPLayout();
      v12 = swift_dynamicCastClass();
      if (v12 && (v13 = v12, (v14 = sub_1007539C4()) != 0))
      {
        v6 = v14;
        if ([v14 isEmpty])
        {
          v15 = [v6 start];
          sub_100C69908(v15);
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;

          [v13 convertNaturalRectFromUnscaledCanvas:{v17, v19, v21, v23}];
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
          v28 = CGRectGetWidth(v34) + 5.0 + 5.0;
          if (v28 > *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth))
          {
            v29 = v28;
          }

          else
          {
            v29 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth);
          }

          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          CGRectGetHeight(v35);
          v30 = sub_100120414(x, y, width, height);
          v36.origin.x = sub_10011EC70(v30, v31, v29);
          v33.x = a1;
          v33.y = a2;
          v32 = CGRectContainsPoint(v36, v33);
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
        v6 = v11;
      }

      goto LABEL_17;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100C69024(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v5 = Strong;
    v6 = [Strong layoutForInfo:v4];

    if (v6)
    {
      type metadata accessor for CRLWPLayout();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        if (([v7 layoutIsValid] & 1) == 0)
        {
          [v8 validate];
        }

        if (qword_1019F1570 != -1)
        {
          swift_once();
        }

        v10[3] = type metadata accessor for CRLTextRange();
        v10[0] = a1;
        sub_1007A16F8(*&v8, a1, v9);
        sub_100005070(v10);
        [v8 convertNaturalRectToUnscaledCanvas:{v9[0], v9[1], v9[2], v9[3]}];
      }

      else
      {
      }
    }
  }
}

void sub_100C691B8(uint64_t a1, uint64_t a2, void *a3)
{
  v60 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v58 = a3;
  v59 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage;
  v17 = Strong;
  v18 = [Strong layoutForInfo:*(v3 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v18)
  {
    return;
  }

  type metadata accessor for CRLWPLayout();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    return;
  }

  v20 = v19;
  v57 = v18;
  if (([v19 layoutIsValid] & 1) == 0)
  {
    [v20 validate];
  }

  if (NSNotFound.getter() == v60)
  {
    goto LABEL_9;
  }

  v56 = a2;
  v55 = v3;
  v21 = *(v3 + v59);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(*v22 + 896))();
  sub_1005E0A78(&v12[*(v10 + 20)], v15);
  v23 = v21;
  sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  v24 = *(v7 + 16);
  v53 = v7 + 16;
  v52 = v24;
  v24(v9, v15, v6);
  sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.attributedString.getter();
  v26 = *(v7 + 8);
  v54 = v7 + 8;
  v51 = v26;
  v26(v9, v6);
  v27 = [v25 length];

  if (v27 < v60)
  {
LABEL_9:

    return;
  }

  v28 = *(v55 + v59);
  v29 = *&v28[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v56;
  v31 = v60;
  v50 = v60 + v56;
  (*(*v29 + 896))();
  sub_1005E0A78(&v12[*(v10 + 20)], v15);
  v49 = v28;
  sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  v52(v9, v15, v6);
  sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.attributedString.getter();
  v51(v9, v6);
  v33 = [v32 length];

  if (v33 < v50)
  {
    v34 = *(v55 + v59);
    v35 = *&v34[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v35)
    {
      (*(*v35 + 896))();
      sub_1005E0A78(&v12[*(v10 + 20)], v15);
      v36 = v34;
      sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
      v52(v9, v15, v6);
      sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
      v37 = CRAttributedString.attributedString.getter();
      v51(v9, v6);
      v31 = [v37 length];

      v30 = 0;
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  v38 = v58;
  if (v58)
  {
    *v58 = v31;
    v38[1] = v30;
  }

  v39 = type metadata accessor for CRLTextRange();
  v40 = objc_allocWithZone(v39);
  v41 = sub_10078CDF0(v60, v56);
  if (qword_1019F1570 != -1)
  {
    v47 = v41;
    swift_once();
    v41 = v47;
  }

  v62[3] = v39;
  v62[0] = v41;
  v42 = v41;
  sub_1007A16F8(*&v20, v42, v61);
  sub_100005070(v62);
  v43 = v61[0];
  v44 = v61[1];
  v45 = v61[2];
  v46 = v61[3];

  [v20 convertNaturalRectToUnscaledCanvas:{v43, v44, v45, v46}];
}

void sub_100C69908(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v5 = Strong;
    v6 = [Strong layoutForInfo:v4];

    if (v6)
    {
      type metadata accessor for CRLWPLayout();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        if (([v7 layoutIsValid] & 1) == 0)
        {
          [v8 validate];
        }

        [v8 convertNaturalRectToUnscaledCanvas:sub_1007A2160(a1)];
      }

      else
      {
      }
    }
  }
}

double sub_100C69A34(void *a1, uint64_t a2, void *a3, double (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

id sub_100C69AB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPTextSelectionManager_x();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100C69B0C()
{
  result = qword_101A012B0;
  if (!qword_101A012B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A012B0);
  }

  return result;
}

unint64_t sub_100C69B58()
{
  _StringGuts.grow(_:)(35);

  type metadata accessor for URL();
  sub_100055F0C(&qword_101A15B10, 255, &type metadata accessor for URL);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x69666E6F63202C3ELL;
  v1._object = 0xEB00000000203A67;
  String.append(_:)(v1);
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v2._countAndFlagsBits = sub_100C70810();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0xD000000000000013;
}

uint64_t sub_100C69CA4()
{
  if (*v0)
  {
    return 0x6D6B6F6F426C7275;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100C69CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6B6F6F426C7275 && a2 == 0xEF617461446B7261)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100C69DC8(uint64_t a1)
{
  v2 = sub_100C78104();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C69E04(uint64_t a1)
{
  v2 = sub_100C78104();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C69E40()
{
  v1 = 0x72756769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x46746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_100C69EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C69EE4(uint64_t a1)
{
  v2 = sub_100C78158();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C69F20(uint64_t a1)
{
  v2 = sub_100C78158();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C69F5C()
{
  v1 = *v0;
  v2 = 0x4F466172656D6163;
  v3 = 0x724664656C616373;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6A048(uint64_t a1)
{
  v2 = sub_100C79058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A084(uint64_t a1)
{
  v2 = sub_100C79058();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100C6A0C0()
{
  v1 = *v0;
  v2 = 0x6D696E4179616C70;
  v3 = 0xD000000000000010;
  v4 = 0x696E417465736572;
  if (v1 != 3)
  {
    v4 = 0x6D696E41706F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696E416573756170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6A180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6A1A8(uint64_t a1)
{
  v2 = sub_100C7862C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A1E4(uint64_t a1)
{
  v2 = sub_100C7862C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A220(uint64_t a1)
{
  v2 = sub_100C7877C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A25C(uint64_t a1)
{
  v2 = sub_100C7877C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A298()
{
  if (*v0)
  {
    return 0x6150737472617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_100C6A2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001015959C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6150737472617473 && a2 == 0xEC00000064657375)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100C6A3CC(uint64_t a1)
{
  v2 = sub_100C787D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A408(uint64_t a1)
{
  v2 = sub_100C787D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A444(uint64_t a1)
{
  v2 = sub_100C786D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A480(uint64_t a1)
{
  v2 = sub_100C786D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A4BC(uint64_t a1)
{
  v2 = sub_100C78728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A4F8(uint64_t a1)
{
  v2 = sub_100C78728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A534(uint64_t a1)
{
  v2 = sub_100C78680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A570(uint64_t a1)
{
  v2 = sub_100C78680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A5AC()
{
  v1 = *v0;
  v2 = 0x6465737561507369;
  v3 = 0x6E6979616C507369;
  v4 = 0x6570706F74537369;
  if (v1 != 3)
  {
    v4 = 0x6465657073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C706D6F437369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6A654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C738D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6A67C(uint64_t a1)
{
  v2 = sub_100C789C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A6B8(uint64_t a1)
{
  v2 = sub_100C789C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A6F4(uint64_t a1)
{
  v2 = sub_100C78878();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A730(uint64_t a1)
{
  v2 = sub_100C78878();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A76C()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t sub_100C6A7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100C6A87C(uint64_t a1)
{
  v2 = sub_100C78824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A8B8(uint64_t a1)
{
  v2 = sub_100C78824();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A8F4(uint64_t a1)
{
  v2 = sub_100C78920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6A930(uint64_t a1)
{
  v2 = sub_100C78920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6A96C()
{
  v1 = 0x756F426C65646F6DLL;
  v2 = 0x6956734977656976;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x6F6974616D696E61;
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

uint64_t sub_100C6AA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6AA28(uint64_t a1)
{
  v2 = sub_100C790AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AA64(uint64_t a1)
{
  v2 = sub_100C790AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6AAA0()
{
  v1 = *v0;
  v2 = 0x64656C6261736964;
  v3 = 0x676E6964616F6CLL;
  v4 = 0x6E697265646E6572;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574736575716572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6AB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6AB6C(uint64_t a1)
{
  v2 = sub_100C78A1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6ABA8(uint64_t a1)
{
  v2 = sub_100C78A1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6ABE4(uint64_t a1)
{
  v2 = sub_100C78C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AC20(uint64_t a1)
{
  v2 = sub_100C78C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6AC5C(uint64_t a1)
{
  v2 = sub_100C78A70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AC98(uint64_t a1)
{
  v2 = sub_100C78A70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6ACD4(uint64_t a1)
{
  v2 = sub_100C78B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AD10(uint64_t a1)
{
  v2 = sub_100C78B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6AD4C(uint64_t a1)
{
  v2 = sub_100C78AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AD88(uint64_t a1)
{
  v2 = sub_100C78AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6ADC4(uint64_t a1)
{
  v2 = sub_100C78BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AE00(uint64_t a1)
{
  v2 = sub_100C78BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6AE3C(float32x4_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v6 = a1[3].i64[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100C728B8(v5, v7) & 1;
}

uint64_t sub_100C6AE98(uint64_t a1)
{
  v2 = sub_100C78FB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6AED4(uint64_t a1)
{
  v2 = sub_100C78FB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6AF10()
{
  v1 = *v0;
  v2 = 0x7245676E69646F63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x45636972656E6567;
  }

  v4 = 0x7272456574617473;
  if (v1 != 3)
  {
    v4 = 0x4574756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F7272456C7275;
  if (v1 != 1)
  {
    v5 = 0x45676E6964616F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6B010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C73DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6B038(uint64_t a1)
{
  v2 = sub_100C78D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B074(uint64_t a1)
{
  v2 = sub_100C78D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B0B0(uint64_t a1)
{
  v2 = sub_100C78DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B0EC(uint64_t a1)
{
  v2 = sub_100C78DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B128(uint64_t a1)
{
  v2 = sub_100C78D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B164(uint64_t a1)
{
  v2 = sub_100C78D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B1A0(uint64_t a1)
{
  v2 = sub_100C78F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B1DC(uint64_t a1)
{
  v2 = sub_100C78F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B218(uint64_t a1)
{
  v2 = sub_100C78EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B254(uint64_t a1)
{
  v2 = sub_100C78EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B290(uint64_t a1)
{
  v2 = sub_100C78E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B2CC(uint64_t a1)
{
  v2 = sub_100C78E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B308(uint64_t a1)
{
  v2 = sub_100C78F5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B344(uint64_t a1)
{
  v2 = sub_100C78F5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B380(uint64_t a1)
{
  v2 = sub_100C793A8();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100C6B3BC(uint64_t a1)
{
  v2 = sub_100C793A8();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_100C6B414()
{
  v1 = *v0;
  v2 = 0x654D6E49657A6973;
  v3 = 0x6874706564;
  v4 = 0x5365636166727573;
  if (v1 != 3)
  {
    v4 = 0x615272656E726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6B4C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C7402C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6B4F0(uint64_t a1)
{
  v2 = sub_100C78564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B52C(uint64_t a1)
{
  v2 = sub_100C78564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B568()
{
  v1 = *v0;
  v2 = 0x646E696B5FLL;
  v3 = 1702521203;
  v4 = 0x7461746E6569726FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B72616D6B6F6F62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6B610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C741F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6B638(uint64_t a1)
{
  v2 = sub_100C78468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B674(uint64_t a1)
{
  v2 = sub_100C78468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B6B0()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x746E49656E616C70;
  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x46746C7561666564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100C6B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100C743B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100C6B794(uint64_t a1)
{
  v2 = sub_100C78274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B7D0(uint64_t a1)
{
  v2 = sub_100C78274();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100C6B8C0(uint64_t a1)
{
  v2 = sub_100C785D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100C6B8FC(uint64_t a1)
{
  v2 = sub_100C785D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100C6B938(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100C78104();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for URL();
  sub_100055F0C(&qword_101A0D988, 255, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CRLUSDRendering.BookmarkableURL(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100024E98(v13, v10);
    sub_1006D63D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10002640C(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C6BB1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = type metadata accessor for URL();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A176F0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C78104();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_100055F0C(&qword_101A0D958, 255, &type metadata accessor for URL);
  v15 = v27;
  v16 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_1006D6258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_100C781AC(v18, v23, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_100005070(a1);
  return sub_100C78214(v18, type metadata accessor for CRLUSDRendering.BookmarkableURL);
}

uint64_t sub_100C6BE9C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17718);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C78158();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  sub_100055F0C(&qword_101A07060, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
    v10 = v3 + *(v9 + 20);
    v11 = *(v10 + 64);
    LODWORD(v18) = *v10;
    v12 = *(v10 + 32);
    v19 = *(v10 + 16);
    v20 = v12;
    v21 = *(v10 + 48);
    v22 = v11;
    v17 = 1;
    sub_1008CD590();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + *(v9 + 24));
    v14 = v13[1];
    v18 = *v13;
    v19 = v14;
    v17 = 2;
    type metadata accessor for CGRect(0);
    sub_100055F0C(&qword_1019FAC28, 255, type metadata accessor for CGRect);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C6C114@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A17708);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C78158();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v22;
  v13 = v11;
  LOBYTE(v25) = 0;
  sub_100055F0C(&qword_101A07030, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v14 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1008F2A0C(v24, v13, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v30 = 1;
  sub_1008CF960();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v29;
  v16 = v13 + *(v9 + 20);
  *v16 = v25;
  v17 = v27;
  *(v16 + 16) = v26;
  *(v16 + 32) = v17;
  *(v16 + 48) = v28;
  *(v16 + 64) = v15;
  type metadata accessor for CGRect(0);
  v30 = 2;
  sub_100055F0C(&qword_1019FABE8, 255, type metadata accessor for CGRect);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v14);
  v19 = (v13 + *(v9 + 24));
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  sub_100C781AC(v13, v21, type metadata accessor for CRLUSDRendering.SceneRequest);
  sub_100005070(a1);
  return sub_100C78214(v13, type metadata accessor for CRLUSDRendering.SceneRequest);
}

uint64_t sub_100C6C4F8(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C78274();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[3];
  v18 = v3[2];
  v19 = v9;
  v20 = *(v3 + 8);
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v15 = 0;
  sub_1008CD590();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 88);
    v16 = *(v3 + 72);
    v17 = v11;
    v15 = 1;
    type metadata accessor for CGRect(0);
    sub_100055F0C(&qword_1019FAC28, 255, type metadata accessor for CGRect);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 120);
    v16 = *(v3 + 104);
    v17 = v12;
    LODWORD(v18) = *(v3 + 34);
    v15 = 2;
    sub_100C78374();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v16 = *(v3 + 18);
    v15 = 3;
    sub_1005B981C(&qword_101A17738);
    sub_100C783C8(&qword_101A17760, &qword_101A17768);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C6C7DC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A17788);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100C78468();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
    LOBYTE(v17) = 1;
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    sub_100055F0C(&qword_101A07060, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + v9[6]);
    v21 = 2;
    type metadata accessor for CGSize(0);
    sub_100055F0C(&qword_1019FABB0, 255, type metadata accessor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = (v3 + v9[7]);
    v11 = *(v10 + 16);
    v17 = *v10;
    LOBYTE(v18) = v11;
    v21 = 3;
    sub_100C78510();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = 4;
    sub_10074A924();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C6CABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A17770);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  __chkstk_darwin(v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v28 = a1;
  sub_100020E58(a1, v13);
  sub_100C78468();
  v27 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(v28);
  }

  v14 = v25;
  v15 = v26;
  LOBYTE(v29) = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v29) = 1;
  sub_100055F0C(&qword_101A07030, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_1008F2A0C(v6, v12 + v10[5], type metadata accessor for CRLUSDRendering.BookmarkableURL);
  type metadata accessor for CGSize(0);
  v33 = 2;
  sub_100055F0C(&qword_1019FAB48, 255, type metadata accessor for CGSize);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v12 + v10[6]) = v29;
  v33 = 3;
  sub_100C784BC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v30;
  v17 = v12 + v10[7];
  *v17 = v29;
  v17[16] = v16;
  v33 = 4;
  sub_10074A7B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v27, v15);
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = (v12 + v10[8]);
  *v22 = v29;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  sub_100C781AC(v12, v24, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
  sub_100005070(v28);
  return sub_100C78214(v12, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
}

uint64_t sub_100C6CF04(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A177A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100C78564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    type metadata accessor for CGSize(0);
    sub_100055F0C(&qword_1019FABB0, 255, type metadata accessor for CGSize);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100C6D134@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A177B0);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100C785D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_100055F0C(&qword_101A07030, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_1008F2A0C(v13, v11, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v11, v12, type metadata accessor for CRLUSDRendering.CompressionRequest);
  }

  return sub_100005070(a1);
}

uint64_t sub_100C6D3AC(void *a1, uint64_t a2, int a3)
{
  v40 = a3;
  v37 = a2;
  v4 = sub_1005B981C(&qword_101A17828);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v29 - v5;
  v6 = sub_1005B981C(&qword_101A17830);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = &v29 - v7;
  v8 = sub_1005B981C(&qword_101A17838);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_1005B981C(&qword_101A17840);
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_1005B981C(&qword_101A17848);
  v30 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_1005B981C(&qword_101A17850);
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_100020E58(a1, a1[3]);
  sub_100C7862C();
  v20 = v40;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20 > 3u)
  {
    if (v20 == 4)
    {
      v49 = 3;
      sub_100C786D4();
      v22 = v33;
      v21 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v34;
      v23 = v35;
    }

    else
    {
      if (v20 != 5)
      {
        goto LABEL_8;
      }

      v50 = 4;
      sub_100C78680();
      v22 = v36;
      v21 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v38;
      v23 = v39;
    }

    (*(v24 + 8))(v22, v23);
    return (*(v41 + 8))(v19, v21);
  }

  if (v20 == 2)
  {
    v47 = 1;
    sub_100C7877C();
    v27 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v29 + 8))(v13, v11);
    return (*(v41 + 8))(v19, v27);
  }

  if (v20 == 3)
  {
    v48 = 2;
    sub_100C78728();
    v21 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v10, v32);
    return (*(v41 + 8))(v19, v21);
  }

LABEL_8:
  v46 = 0;
  sub_100C787D0();
  v25 = v42;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v45 = 0;
  v26 = v43;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v26)
  {
    v44 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v30 + 8))(v16, v14);
  return (*(v41 + 8))(v19, v25);
}

void sub_100C6D98C(uint64_t a1, Swift::UInt64 a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 == 4)
    {
      v3 = 3;
      goto LABEL_14;
    }

    if (a3 == 5)
    {
      v3 = 4;
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 == 2)
    {
      v3 = 1;
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v3 = 2;
LABEL_14:
      Hasher._combine(_:)(v3);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(a3 & 1);
}

uint64_t sub_100C6DA28(void *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A17890);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_1005B981C(&qword_101A17898);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_1005B981C(&qword_101A178A0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_100020E58(a1, a1[3]);
  sub_100C78824();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a2 == 2)
  {
    v24 = 0;
    sub_100C78920();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v9, v17);
  }

  else
  {
    v25 = 1;
    sub_100C78878();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = a2 & 0x101;
    v21 = BYTE2(a2) & 1;
    v22 = BYTE3(a2) & 1;
    v23 = HIDWORD(a2);
    sub_100C78974();
    v15 = v19;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v18 + 8))(v6, v15);
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_100C6DD50(uint64_t a1, unint64_t a2)
{
  if (a2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = HIDWORD(a2);
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a2 & 1);
    Hasher._combine(_:)(BYTE1(a2) & 1);
    Hasher._combine(_:)(BYTE2(a2) & 1);
    Hasher._combine(_:)(BYTE3(a2) & 1);
    if ((v2 & 0x7FFFFF) == 0 && (a2 & 0x7F80000000000000) == 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2;
    }

    Hasher._combine(_:)(v5);
  }
}

Swift::Int sub_100C6DDD4(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1 & 1);
    Hasher._combine(_:)(BYTE1(a1) & 1);
    Hasher._combine(_:)(BYTE2(a1) & 1);
    Hasher._combine(_:)(BYTE3(a1) & 1);
    if ((a1 & 0x7FFFFF00000000) == 0 && (a1 & 0x7F80000000000000) == 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = HIDWORD(a1);
    }

    Hasher._combine(_:)(v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100C6DE8C(void *a1)
{
  v3 = sub_1005B981C(&qword_101A178C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100C789C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_100C6E074(float a1, uint64_t a2, int a3)
{
  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(BYTE1(a3) & 1);
  Hasher._combine(_:)(BYTE2(a3) & 1);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  Hasher._combine(_:)(LODWORD(v5));
}

Swift::Int sub_100C6E0D8(int a1, float a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(BYTE1(a1) & 1);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t sub_100C6E168(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A17930);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v33 - v5;
  v6 = sub_1005B981C(&qword_101A17938);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - v7;
  v8 = sub_1005B981C(&qword_101A17940);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v33 - v9;
  v35 = sub_1005B981C(&qword_101A17948);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v33 - v10;
  v11 = sub_1005B981C(&qword_101A17950);
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v55 = sub_1005B981C(&qword_101A17958);
  v47 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v33 - v14;
  sub_100020E58(a1, a1[3]);
  sub_100C78A1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v2;
  v17 = v2[1];
  v19 = v2[2];
  v18 = v2[3];
  v21 = v2[4];
  v20 = v2[5];
  v22 = v2[6];
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      LOBYTE(v48) = 4;
      sub_100C78A70();
      v23 = v44;
      v24 = v55;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v48 = v16;
      v49 = v17;
      LOBYTE(v50) = v19;
      sub_100C78C68();
      v25 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v45 + 8))(v23, v25);
      return (*(v47 + 8))(v15, v24);
    }

    else
    {
      v29 = v19 | v17;
      if (v20 != 0x8000000000000000 || v29 | v16 | v18 | v21 | v22)
      {
        if (v20 == 0x8000000000000000 && v16 == 1 && !(v22 | v21 | v29 | v18))
        {
          LOBYTE(v48) = 1;
          sub_100C78BC0();
          v31 = v33;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v34 + 8))(v31, v35);
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_100C78B6C();
          v32 = v36;
          v30 = v55;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v37 + 8))(v32, v38);
        }
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_100C78C14();
        v30 = v55;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v13, v40);
      }

      return (*(v47 + 8))(v15, v30);
    }
  }

  else
  {
    v46 = v20 & 0x3FFFFFFFFFFFFFFFLL;
    LOBYTE(v48) = 3;
    sub_100C78AC4();
    v27 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v48 = v16;
    v49 = v17;
    v50 = v19;
    v51 = v18;
    v52 = v21;
    v53 = v46;
    v54 = v22;
    sub_100C78CBC();
    v28 = v43;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v42 + 8))(v27, v28);
    return (*(v47 + 8))(v15, v55);
  }
}

void sub_100C6E7B8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v8 = *(v1 + 16);
      v13 = *v1;
      Hasher._combine(_:)(4uLL);

      sub_100C6F158(a1, v13.i64[0], v13.i64[1], v8);
    }

    else
    {
      v9 = vorrq_s8(v4, vdupq_laneq_s64(v3, 1)).u64[0];
      if (v6 == 0x8000000000000000 && (v9 | v3.i64[0] | v4.i64[1] | v5 | v7) == 0)
      {
        v11 = 0;
      }

      else if (v6 == 0x8000000000000000 && v3.i64[0] == 1 && !(v7 | v5 | v9 | v4.i64[1]))
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      Hasher._combine(_:)(v11);
    }
  }

  else
  {
    v12 = *(v1 + 16);
    v14 = *v1;
    Hasher._combine(_:)(3uLL);
    sub_100865528(v14);
    sub_100865528(v12);
    sub_10086537C(a1, v5);
    Hasher._combine(_:)(v6 & 1);

    sub_100865210(a1, v7);
  }
}

uint64_t sub_100C6E938(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v61 = a4;
  v57 = a2;
  v58 = a3;
  v5 = sub_1005B981C(&qword_101A179F8);
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v40 - v6;
  v7 = sub_1005B981C(&qword_101A17A00);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v40 - v8;
  v9 = sub_1005B981C(&qword_101A17A08);
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - v10;
  v45 = sub_1005B981C(&qword_101A17A10);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v40 - v11;
  v12 = sub_1005B981C(&qword_101A17A18);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_1005B981C(&qword_101A17A20);
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = sub_1005B981C(&qword_101A17A28);
  v54 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v60 = sub_1005B981C(&qword_101A17A30);
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v22 = &v40 - v21;
  sub_100020E58(a1, a1[3]);
  sub_100C78D10();
  v59 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v61 <= 2u)
  {
    v28 = v15;
    v30 = v54;
    v29 = v55;
    v31 = v56;
    if (v61)
    {
      if (v61 == 1)
      {
        LOBYTE(v63) = 1;
        sub_100C78F5C();
        v32 = v59;
        v33 = v60;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v41 + 8))(v17, v28);
        return (*(v62 + 8))(v32, v33);
      }

      else
      {
        LOBYTE(v63) = 2;
        sub_100C78F08();
        v37 = v59;
        v38 = v60;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v29 + 8))(v14, v31);
        return (*(v62 + 8))(v37, v38);
      }
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_100C78FB0();
      v36 = v59;
      v35 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v30 + 8))(v20, v18);
      return (*(v62 + 8))(v36, v35);
    }
  }

  else
  {
    if (v61 > 4u)
    {
      v24 = v59;
      v23 = v60;
      if (v61 != 5)
      {
        LOBYTE(v63) = 4;
        sub_100C78E60();
        v39 = v44;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v46 + 8))(v39, v47);
        return (*(v62 + 8))(v24, v23);
      }

      LOBYTE(v63) = 6;
      sub_100C78D64();
      v25 = v51;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v53;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v27 = v52;
    }

    else
    {
      v24 = v59;
      v23 = v60;
      if (v61 == 3)
      {
        LOBYTE(v63) = 3;
        sub_100C78EB4();
        v25 = v42;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v26 = v45;
        KeyedEncodingContainer.encode(_:forKey:)();
        v27 = v43;
      }

      else
      {
        LOBYTE(v63) = 5;
        sub_100C78DB8();
        v25 = v48;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v57;
        v64 = v58;
        sub_100C79004();
        v26 = v50;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v27 = v49;
      }
    }

    (*(v27 + 8))(v25, v26);
    return (*(v62 + 8))(v24, v23);
  }
}