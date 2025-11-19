double sub_10005A248(void *a1)
{
  v27 = type metadata accessor for DetectionRequest.Originator();
  v21 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for CVDetection.DetectionType();
  __chkstk_darwin(v4 - 8);
  v29 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v6 - 8);
  v25 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for LegacyDetectionResultConvertible(0);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DetectionResult();
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v11 = sub_1000033A8(&qword_1001D6338);
  v20 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  sub_100006AAC(a1, a1[3]);
  sub_10005AA70();
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    sub_100006B44(a1);
  }

  else
  {
    v30 = v9;
    v23 = v10;
    sub_1000033A8(&qword_1001D6348);
    LOBYTE(v31) = 0;
    sub_10005ABE0(&qword_1001D6350, &qword_1001D6358);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = a1;
    v16 = v20;
    LOBYTE(v32) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v1 = v17;
    type metadata accessor for CGImagePropertyOrientation(0);
    LOBYTE(v31) = 2;
    sub_10005AAC4(&qword_1001D6388, type metadata accessor for CGImagePropertyOrientation);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v13, v11);
    sub_100006B44(v15);
    LOBYTE(v32) = 0;
  }

  return v1;
}

unint64_t sub_10005AA70()
{
  result = qword_1001D6340;
  if (!qword_1001D6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6340);
  }

  return result;
}

uint64_t sub_10005AAC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005AB0C()
{
  result = qword_1001D6368;
  if (!qword_1001D6368)
  {
    sub_10001276C(&qword_1001D6360);
    sub_10005AAC4(&qword_1001D6370, type metadata accessor for LegacyDetectionResultConvertible);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6368);
  }

  return result;
}

uint64_t sub_10005ABE0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(&qword_1001D6348);
    sub_10005AAC4(a2, &type metadata accessor for DetectionResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005AC7C(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v99 = type metadata accessor for DetectionRequest.Originator();
  v4 = *(v99 - 8);
  __chkstk_darwin(v99);
  v98 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVDetection.DetectionType();
  v101 = *(v6 - 8);
  __chkstk_darwin(v6);
  v97 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DetectionRequest();
  __chkstk_darwin(v8 - 8);
  v96 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000033A8(&qword_1001D6400);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v68 - v14;
  v94 = sub_1000033A8(&qword_1001D6408);
  v15 = __chkstk_darwin(v94);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v68 - v18;
  v92 = type metadata accessor for DetectionResult();
  v100 = *(v92 - 8);
  __chkstk_darwin(v92);
  v82 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000033A8(&unk_1001D6410);
  v77 = *(v20 - 8);
  __chkstk_darwin(v20);
  v76 = &v68 - v21;
  v75 = sub_1000033A8(&qword_1001D7FD0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v68 - v22;
  v119 = &_swiftEmptySetSingleton;
  v120 = &_swiftEmptySetSingleton;
  v117 = &_swiftEmptyArrayStorage;
  v118 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    sub_100057CF8(a1);
    v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  v24 = sub_10005B96C(v23.super.isa);

  if (!v24)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v81 = v13;
  sub_1000033A8(&unk_1001D6420);
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005812C(v25, &v120, &v119, &v118, &v117);

  v116 = &_swiftEmptyDictionarySingleton;
  v26 = v119;
  sub_1000581E4(v119, &v116, &v118, &v117);
  v71 = v120;
  sub_10009CA5C(v120);
  if (v28)
  {
LABEL_37:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v72 = v26;
  v29 = v116;
  v30 = v116[2];
  v31 = v82;
  v70 = v27;
  if (v30)
  {
    v68 = v20;
    v69 = v2;
    v110 = &_swiftEmptyArrayStorage;
    sub_100059548(0, v30, 0);
    v108 = v110;
    v32 = v29 + 8;
    v33 = _HashTable.startBucket.getter();
    v34 = 0;
    v83 = *(v29 + 9);
    v88 = v101 + 32;
    v87 = (v4 + 104);
    v86 = enum case for DetectionRequest.Originator.streaming(_:);
    v85 = v100 + 32;
    v78 = v29 + 9;
    v35 = *(v29 + 32);
    v80 = v6;
    v79 = v17;
    v91 = v29;
    v90 = v30;
    v84 = v29 + 8;
    v89 = v101 + 16;
    while ((v33 & 0x8000000000000000) == 0 && v33 < 1 << v35)
    {
      if ((v32[v33 >> 6] & (1 << v33)) == 0)
      {
        goto LABEL_32;
      }

      v104 = 1 << v33;
      v105 = v33 >> 6;
      v103 = v34;
      v37 = v101;
      v38 = v29[6] + *(v101 + 72) * v33;
      v39 = v93;
      v106 = *(v101 + 16);
      v106(v93, v38, v6);
      v40 = v29[7];
      v107 = v33;
      v41 = *(v40 + 8 * v33);
      (*(v37 + 32))(v17, v39, v6);
      *&v17[*(v94 + 48)] = v41;
      v42 = *(v41 + 16);
      v43 = type metadata accessor for CVDetection();
      v44 = *(v43 - 8);
      v45 = v44;
      if (v42)
      {
        v46 = v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v47 = v95;
        v109 = *(v44 + 16);
        v109(v95, v46, v43);
        v48 = *(v45 + 56);
        v48(v47, 0, 1, v43);
        v102 = v41;

        sub_10001370C(v47, &qword_1001D6400);
        v49 = *(v45 + 72);
        v50 = v81;
        do
        {
          v109(v50, v46, v43);
          v48(v50, 0, 1, v43);
          sub_10001370C(v50, &qword_1001D6400);
          v46 += v49;
          --v42;
        }

        while (v42);
        v48(v50, 1, 1, v43);
        v6 = v80;
        v17 = v79;
        v31 = v82;
      }

      else
      {
        v51 = v95;
        (*(v44 + 56))(v95, 1, 1, v43);

        sub_10001370C(v51, &qword_1001D6400);
      }

      v106(v97, v17, v6);
      (*v87)(v98, v86, v99);
      v115 = &_swiftEmptyArrayStorage;
      static CGRect.unitRect.getter();
      sub_1000033A8(&qword_1001D6378);
      sub_100013608(&qword_1001D6380, &qword_1001D6378);
      DetectionRequest.init<A>(detectionType:originator:annotations:regionOfInterest:timestamp:)();

      DetectionResult.init(request:results:)();
      sub_10001370C(v17, &qword_1001D6408);
      v52 = v108;
      v110 = v108;
      v54 = v108[2];
      v53 = v108[3];
      if (v54 >= v53 >> 1)
      {
        sub_100059548(v53 > 1, v54 + 1, 1);
        v52 = v110;
      }

      v52[2] = v54 + 1;
      v55 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v108 = v52;
      (*(v100 + 32))(v52 + v55 + *(v100 + 72) * v54, v31, v92);
      v29 = v91;
      v35 = *(v91 + 32);
      v33 = 1 << v35;
      if (v107 >= 1 << v35)
      {
        goto LABEL_33;
      }

      v32 = v84;
      v56 = v84[v105];
      if ((v56 & v104) == 0)
      {
        goto LABEL_34;
      }

      if (v83 != *(v91 + 9))
      {
        goto LABEL_35;
      }

      v57 = v56 & (-2 << (v107 & 0x3F));
      if (v57)
      {
        v33 = __clz(__rbit64(v57)) | v107 & 0x7FFFFFFFFFFFFFC0;
        v36 = v103;
      }

      else
      {
        v58 = v105 << 6;
        v59 = v105 + 1;
        v60 = &v78[v105];
        v36 = v103;
        while (v59 < (v33 + 63) >> 6)
        {
          v62 = *v60++;
          v61 = v62;
          v58 += 64;
          ++v59;
          if (v62)
          {
            v33 = __clz(__rbit64(v61)) + v58;
            break;
          }
        }
      }

      v34 = v36 + 1;
      if (v34 == v90)
      {
        v2 = v69;
        v20 = v68;
        v63 = v108;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v63 = &_swiftEmptyArrayStorage;
LABEL_30:
  v64 = v77;
  v65 = v76;
  (*(v77 + 16))(v76, v2 + OBJC_IVAR____TtC6Tamale26StreamingMetadataProcessor_continuation, v20);
  v110 = v70;
  v111 = v63;
  v112 = v70;
  v113 = 0;
  v114 = 1;
  v66 = v73;
  AsyncStream.Continuation.yield(_:)();
  (*(v64 + 8))(v65, v20);
  (*(v74 + 8))(v66, v75);
}

id sub_10005B96C(void *a1)
{
  v1 = a1;
  v2 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = v7;
        v17 = 0uLL;
        v18 = 0;
        if (v7)
        {
          [v7 time];
        }

        v9 = [v8 handledMetadataObjectTypes];
        v10 = [v8 metadataObjects];
        v15 = v17;
        v16 = v18;
        v11 = [NSValue valueWithCMTime:&v15];
        v23[0] = v11;
        v23[1] = v9;
        v23[2] = v10;
        v12 = [NSArray arrayWithObjects:v23 count:3];
        [v2 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v4);
  }

  return v2;
}

_OWORD *sub_10005BB58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005BB68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005BBC4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005BC60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10005BCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005BD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVDetection();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10005BDB8()
{
  result = type metadata accessor for CVDetection();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005BE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005BF20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LegacyDetectionRequestConvertible(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10005BFD8()
{
  type metadata accessor for LegacyDetectionRequestConvertible(319);
  if (v0 <= 0x3F)
  {
    sub_10005C05C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005C05C()
{
  if (!qword_1001D6568)
  {
    type metadata accessor for CVDetection();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D6568);
    }
  }
}

unint64_t sub_10005C100()
{
  result = qword_1001D65A0;
  if (!qword_1001D65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65A0);
  }

  return result;
}

unint64_t sub_10005C1A0()
{
  result = qword_1001D65B0;
  if (!qword_1001D65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65B0);
  }

  return result;
}

unint64_t sub_10005C1F8()
{
  result = qword_1001D65B8;
  if (!qword_1001D65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65B8);
  }

  return result;
}

unint64_t sub_10005C24C()
{
  result = qword_1001D65C8;
  if (!qword_1001D65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65C8);
  }

  return result;
}

uint64_t sub_10005C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyDetectionRequestConvertible(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C304()
{
  result = qword_1001D65E0;
  if (!qword_1001D65E0)
  {
    sub_10001276C(&qword_1001D65D8);
    sub_10005AAC4(&qword_1001D65E8, &type metadata accessor for CVDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D65E0);
  }

  return result;
}

uint64_t sub_10005C3B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10005C418()
{
  result = qword_1001D6610;
  if (!qword_1001D6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6610);
  }

  return result;
}

uint64_t sub_10005C46C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005C4D4()
{
  result = qword_1001D6640;
  if (!qword_1001D6640)
  {
    sub_10001276C(&qword_1001D65D8);
    sub_10005AAC4(&qword_1001D6620, &type metadata accessor for CVDetection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6640);
  }

  return result;
}

unint64_t sub_10005C5AC()
{
  result = qword_1001D6648;
  if (!qword_1001D6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6648);
  }

  return result;
}

unint64_t sub_10005C604()
{
  result = qword_1001D6650;
  if (!qword_1001D6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6650);
  }

  return result;
}

unint64_t sub_10005C65C()
{
  result = qword_1001D6658;
  if (!qword_1001D6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6658);
  }

  return result;
}

unint64_t sub_10005C6B4()
{
  result = qword_1001D6660;
  if (!qword_1001D6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6660);
  }

  return result;
}

unint64_t sub_10005C70C()
{
  result = qword_1001D6668;
  if (!qword_1001D6668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6668);
  }

  return result;
}

unint64_t sub_10005C764()
{
  result = qword_1001D6670;
  if (!qword_1001D6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6670);
  }

  return result;
}

uint64_t sub_10005C7B8()
{
  v0 = Angle.cgOrientation.getter();
  if ((v0 - 1) < 8)
  {
    return qword_100175908[v0 - 1];
  }

  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10005C854(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (!CGRectIsInfinite(*&a1))
  {
    v16.origin.x = a5;
    v16.origin.y = a6;
    v16.size.width = a7;
    v16.size.height = a8;
    if (!CGRectIsInfinite(v16))
    {
      v17.origin.x = a1;
      v17.origin.y = a2;
      v17.size.width = a3;
      v17.size.height = a4;
      if (!CGRectIsNull(v17))
      {
        v18.origin.x = a5;
        v18.origin.y = a6;
        v18.size.width = a7;
        v18.size.height = a8;
        if (!CGRectIsNull(v18))
        {
          v19.origin.x = a1;
          v19.origin.y = a2;
          v19.size.width = a3;
          v19.size.height = a4;
          CGRectGetMaxX(v19);
          v20.origin.x = a1;
          v20.origin.y = a2;
          v20.size.width = a3;
          v20.size.height = a4;
          CGRectGetMaxY(v20);
        }
      }
    }
  }
}

uint64_t sub_10005C9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v104 = a3;
  v7 = type metadata accessor for CameraSourceFrameMetadata();
  *&v102 = *(v7 - 8);
  __chkstk_darwin(v7);
  *&v101 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Angle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CameraImage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005650(a2, &v105);
  if (!v106)
  {
    result = sub_1000056C0(&v105);
LABEL_24:
    v92 = 0uLL;
    v93 = 1;
    v91 = 0uLL;
    goto LABEL_25;
  }

  sub_10002AAA4(&v105, v107);
  v100 = a1;
  v17 = [a1 view];
  if (!v17)
  {
LABEL_23:
    result = sub_100006B44(v107);
    goto LABEL_24;
  }

  v18 = v17;
  v19 = [v17 window];
  if (!v19)
  {

    goto LABEL_23;
  }

  v20 = v19;
  v95 = v18;
  v96 = v7;
  v97 = a4;
  sub_100006AAC(v107, v108);
  dispatch thunk of CameraSourceFrame.cameraImage.getter();
  CameraImage.imageResolution.getter();
  v22 = v21;
  v24 = v23;
  (*(v14 + 8))(v16, v13);
  sub_100006AAC(v107, v108);
  CameraSourceFrame.rotationAngle.getter();
  v25 = sub_10005C7B8();
  (*(v10 + 8))(v12, v9);
  if (((1 << v25) & 0xCC) != 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  if (((1 << v25) & 0xCC) != 0)
  {
    v27 = v22;
  }

  else
  {
    v27 = v24;
  }

  if (v25 <= 7)
  {
    v22 = v26;
    v24 = v27;
  }

  [v20 bounds];
  v32 = v31;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v29 / v22;
  if (v29 / v22 <= v30 / v24)
  {
    v36 = v30 / v24;
  }

  v37 = v22 * v36;
  v38 = v24 * v36;
  v39 = v32;
  MidX = CGRectGetMidX(*(&v28 - 1));
  *&v103 = v32;
  v109.origin.x = v32;
  v41 = v33;
  v109.origin.y = v33;
  *&v99 = v34;
  v109.size.width = v34;
  *&v98 = v35;
  v109.size.height = v35;
  MidY = CGRectGetMidY(v109);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v37;
  v110.size.height = v38;
  v43 = CGRectGetMidX(v110);
  v111.origin.x = 0.0;
  v111.origin.y = 0.0;
  v111.size.width = v37;
  v111.size.height = v38;
  v44 = MidY - CGRectGetMidY(v111);
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = v37;
  v112.size.height = v38;
  v113 = CGRectOffset(v112, MidX - v43, v44);
  v45 = v96;
  v46 = v100;
  if ((*(v104 + 32) & 1) == 0)
  {
    v48 = *(v104 + 16);
    v47 = *(v104 + 24);
    v50 = *v104;
    v49 = *(v104 + 8);
    x = v113.origin.x;
    y = v113.origin.y;
    width = v113.size.width;
    *&v104 = v41;
    height = v113.size.height;
    CGRectGetWidth(v113);
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    CGRectGetMinX(v114);
    v115.origin.x = v50;
    v115.origin.y = v49;
    v115.size.width = v48;
    v115.size.height = v47;
    CGRectGetMinX(v115);
    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v41 = *&v104;
    CGRectGetMinY(v116);
    v117.origin.x = v50;
    v117.origin.y = v49;
    v117.size.width = v48;
    v117.size.height = v47;
    CGRectGetMinY(v117);
    v118.origin.x = v50;
    v118.origin.y = v49;
    v118.size.width = v48;
    v118.size.height = v47;
    CGRectGetWidth(v118);
    v119.origin.x = v50;
    v119.origin.y = v49;
    v119.size.width = v48;
    v119.size.height = v47;
    CGRectGetHeight(v119);
  }

  v55 = v95;
  [v95 convertRect:v20 fromCoordinateSpace:{*&v103, v41, *&v99, *&v98}];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v55;
  [v55 bounds];
  sub_10005C854(v57, v59, v61, v63, v65, v66, v67, v68);
  v104 = v69;
  v98 = v70;
  v103 = v71;
  v99 = v72;
  if (([v46 activeInteractionTypes] & 1) != 0 || (objc_msgSend(v46, "activeInteractionTypes") & 2) != 0)
  {
    sub_100006AAC(v107, v108);
    v75 = v20;
    v76 = v101;
    dispatch thunk of CameraSourceFrame.metadata.getter();
    CameraSourceFrameMetadata.safeArea.getter();
    v77 = *(v102 + 8);
    v77(v76, v45);
    CGRect.center.getter();
    *&v120.origin.x = v104;
    *&v120.origin.y = v98;
    *&v120.size.width = v103;
    *&v120.size.height = v99;
    CGRectGetWidth(v120);
    sub_100006AAC(v107, v108);
    dispatch thunk of CameraSourceFrame.metadata.getter();
    CameraSourceFrameMetadata.safeArea.getter();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v77(v76, v45);
    v121.origin.x = v79;
    v121.origin.y = v81;
    v121.size.width = v83;
    v121.size.height = v85;
    CGRectGetHeight(v121);
    *&v122.origin.x = v104;
    *&v122.origin.y = v98;
    *&v122.size.width = v103;
    *&v122.size.height = v99;
    CGRectGetHeight(v122);
    CGRect.init(centeredAt:size:)();
    v104 = v86;
    v101 = v87;
    v103 = v88;
    v102 = v89;

    *&v90 = v104;
    *(&v90 + 1) = v101;
    v104 = v90;
    *&v90 = v103;
    *(&v90 + 1) = v102;
    v103 = v90;
  }

  else
  {

    *&v73 = v104;
    *(&v73 + 1) = v98;
    v104 = v73;
    *&v73 = v103;
    *(&v73 + 1) = v99;
    v103 = v73;
  }

  result = sub_100006B44(v107);
  v91 = v103;
  v92 = v104;
  v93 = 0;
  a4 = v97;
LABEL_25:
  *a4 = v92;
  *(a4 + 16) = v91;
  *(a4 + 32) = v93;
  return result;
}

unint64_t sub_10005D128()
{
  result = qword_1001D67D8;
  if (!qword_1001D67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D67D8);
  }

  return result;
}

uint64_t sub_10005D1D4()
{
  sub_100061BBC(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_10005D244(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput;
  v5 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput);
  sub_10005BBC4(0, &unk_1001D6B90);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10005D3CC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_10005D47C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void sub_10005D540(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput;
  v5 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput);
  sub_10005BBC4(0, &qword_1001D6B88);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005D6B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  return sub_1000619D4(v5 + v3, a1);
}

uint64_t sub_10005D77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  return sub_1000619D4(v3 + v4, a2);
}

uint64_t sub_10005D844(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000619D4(a1, &v6 - v3);
  return sub_10005D8D8(v4);
}

uint64_t sub_10005D8D8(uint64_t a1)
{
  v3 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  sub_1000619D4(v1 + v6, v5);
  v7 = sub_100060490(v5, a1);
  sub_10001370C(v5, &qword_1001D6B08);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000619D4(a1, v5);
    swift_beginAccess();
    sub_100061A44(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_10001370C(a1, &qword_1001D6B08);
}

uint64_t sub_10005DAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000619D4(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC6Tamale14AVCameraSource___latestFrame;
  swift_beginAccess();
  sub_100061A44(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t sub_10005DB8C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000033A8(&qword_1001D6B70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
  v13 = *(v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  v14 = *(v4 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
  *v12 = a1;
  *(v12 + 8) = a2;
  v15 = *(v12 + 16);
  *(v12 + 16) = a3;
  sub_1000616E4(v13, v14, v15);
  swift_getKeyPath();
  v20 = v4;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v12 + 8);
  v17 = *(v12 + 16);
  v20 = *v12;
  v21 = v16;
  v22 = v17;
  sub_100060424(v20, v16, v17);
  sub_1000033A8(&qword_1001D6B78);
  AsyncStream.Continuation.yield(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10005DD40()
{
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  sub_100060424(v1, *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16));
  return v1;
}

uint64_t sub_10005DE0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
  v5 = *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  v6 = *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_100060424(v5, v6, v7);
}

uint64_t sub_10005DECC(uint64_t a1, uint64_t a2, char a3)
{
  if (sub_100060724(*(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState), *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v3 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16), a1, a2, a3))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000616E4(a1, a2, a3);
  }

  else
  {

    return sub_10005DB8C(a1, a2, a3);
  }
}

id sub_10005E04C()
{
  v1 = OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureDevice;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureDevice);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100060828(1);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100061950(v4);
  }

  sub_100061960(v2);
  return v3;
}

void sub_10005E0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC6Tamale14AVCameraSource_synchronizer + 8) = a3;
    v5 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void sub_10005E138(uint64_t a1)
{
  v13 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v2 - 8);
  v12 = v2;
  __chkstk_darwin(v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  swift_getKeyPath();
  v14 = v1;
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *&v1[OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput];
  v10[1] = sub_10005BBC4(0, &qword_1001D6B40);
  v8 = v7;
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_1000602F8(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50);
  sub_1000618FC(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v9 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  [v8 setMetadataObjectsDelegate:v13 queue:v9];
}

id sub_10005E43C()
{
  v1 = OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Tamale14AVCameraSource____lazy_storage___captureSession);
  }

  else
  {
    v4 = sub_10005E4A0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10005E4A0(CMTimeValue a1)
{
  v2 = [objc_allocWithZone(AVCaptureSession) init];
  [v2 setSessionPreset:AVCaptureSessionPresetInputPriority];
  v3 = sub_10005E04C();
  if (v3)
  {
    v4 = v3;
    v42.value = 0;
    v5 = [objc_allocWithZone(AVCaptureDeviceInput) initWithDevice:v3 error:&v42];
    if (v5)
    {
      v6 = v5;
      v7 = v42.value;
      [v2 addInput:v6];
      swift_getKeyPath();
      v42.value = a1;
      sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v41 = OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput;
      [v2 addOutput:*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput)];
      swift_getKeyPath();
      v42.value = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v2 addOutput:*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput)];
      v42.value = 0;
      if (([v4 lockForConfiguration:&v42]& 1) != 0)
      {
        v8 = v42.value;
        v9 = [v4 formats];
        sub_10005BBC4(0, &qword_1001D6B28);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v40 = v4;
        v38 = v6;
        v39 = a1;
        if (v10 >> 62)
        {
          goto LABEL_24;
        }

        for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v12 = 0;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v13 = *(v10 + 8 * v12 + 32);
            }

            v14 = v13;
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v16 = [v13 formatDescription];
            MediaSubType = CMFormatDescriptionGetMediaSubType(v16);

            if (MediaSubType == 875704422)
            {
              v18 = [v14 formatDescription];
              width = CMVideoFormatDescriptionGetDimensions(v18).width;

              if (width == 1920)
              {
                v20 = [v14 formatDescription];
                Dimensions = CMVideoFormatDescriptionGetDimensions(v20);

                if (HIDWORD(*&Dimensions) == 1440)
                {

                  v26 = v40;
                  [v40 setActiveFormat:v14];
                  v42 = CMTime.init(value:timescale:)(1, 30);
                  [v40 setActiveVideoMinFrameDuration:&v42];
                  v42 = CMTime.init(value:timescale:)(1, 30);
                  [v40 setActiveVideoMaxFrameDuration:&v42];
                  v27 = v39;
                  goto LABEL_28;
                }
              }
            }

            ++v12;
            if (v15 == i)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          ;
        }

LABEL_25:

        v27 = v39;
        v14 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v14, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v14, v28, "No 1920x1440 formats available!", v29, 2u);
        }

        v26 = v40;
LABEL_28:

        [v26 unlockForConfiguration];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v27 + v41) setAlwaysDiscardsLateVideoFrames:0];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v27 + v41) setSampleBufferDelegate:v27 queue:*(v27 + OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue)];
        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v30 = *(v27 + v41);
        sub_1000033A8(&unk_1001D6B30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100171DA0;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v32;
        *(inited + 72) = &type metadata for UInt32;
        *(inited + 48) = 875704422;
        v33 = v30;
        sub_100097328(inited);
        swift_setDeallocating();
        sub_10001370C(inited + 32, &qword_1001D8230);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v33 setVideoSettings:isa];

        swift_getKeyPath();
        v42.value = v27;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v35 = [*(v27 + v41) connectionWithMediaType:AVMediaTypeVideo];
        if (v35)
        {
          v36 = v35;
          if ([v35 isCameraIntrinsicMatrixDeliverySupported])
          {
            [v36 setCameraIntrinsicMatrixDeliveryEnabled:1];
          }
        }

        else
        {
        }

        goto LABEL_33;
      }

      v23 = v42.value;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    else
    {
      v22 = v42.value;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v26 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v26, v24, "CameraSensor failed to get a AVCaptureDevice", v25, 2u);
    }

LABEL_33:
  }

  return v2;
}

uint64_t sub_10005EC88(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 startRunning];

  if (*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) == 1 && !*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState))
  {
    return sub_10005DB8C(0, 0, 1);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10005EE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_1000602F8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_1000618FC(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_10005F0AC(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 stopRunning];

  if (*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) >= 3u && *(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState) == 0)
  {
    return sub_10005DB8C(0, 0, 3);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10005F200()
{
  v1 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = *&v0[OBJC_IVAR____TtC6Tamale14AVCameraSource_frameQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000617F4;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10006180C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C1950;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for AVCameraSourceFrame(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_10005D8D8(v3);
  }

  return result;
}

uint64_t sub_10005F3F4(uint64_t a1)
{
  v2 = sub_10005E43C();
  [v2 stopRunning];

  if (!*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16) && !*(a1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState))
  {
    return sub_10005DB8C(0, 0, 0);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10005F56C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AVCameraSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005F810()
{
  sub_10005FA38();
  if (v0 <= 0x3F)
  {
    sub_10005FAB0(319, &unk_1001D6940, &type metadata accessor for AsyncStream);
    if (v1 <= 0x3F)
    {
      sub_10005FAB0(319, &qword_1001D7630, &type metadata accessor for AsyncStream.Continuation);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Logger();
        if (v3 <= 0x3F)
        {
          type metadata accessor for OSSignposter();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10005FA38()
{
  if (!qword_1001D6938)
  {
    type metadata accessor for AVCameraSourceFrame(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D6938);
    }
  }
}

void sub_10005FAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for CameraSourceRunState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10005FB20()
{
  sub_10006043C();
  swift_allocError();
  *v1 = 0xD00000000000002BLL;
  v1[1] = 0x800000010016C820;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005FBC4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
  sub_100060424(v2, *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8), *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 16));
  return v2;
}

uint64_t sub_10005FC90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC6Tamale14AVCameraSource_runStateStreamInternal;
  v5 = sub_1000033A8(&qword_1001D6AF0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10005FD84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CameraImage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10005FDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CameraSourceFrameMetadata();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10005FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = enum case for CameraImage.none(_:);
  v6 = type metadata accessor for CameraImage();
  (*(*(v6 - 8) + 104))(a2, v5, v6);
  v7 = *(a1 + 20);
  v8 = type metadata accessor for CameraSourceFrameMetadata();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2 + v7, v2 + v7, v8);
}

uint64_t sub_10005FF20()
{
  if ((static CameraImage.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static CameraSourceFrameMetadata.== infix(_:_:)();
}

uint64_t sub_10006002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CameraImage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CameraSourceFrameMetadata();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100060130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CameraImage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CameraSourceFrameMetadata();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10006022C()
{
  result = type metadata accessor for CameraImage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CameraSourceFrameMetadata();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000602F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000603D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_100060424(*a1, v2, v3);
  return sub_10005DECC(v1, v2, v3);
}

uint64_t sub_100060424(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_10006043C()
{
  result = qword_1001D6B00;
  if (!qword_1001D6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6B00);
  }

  return result;
}

uint64_t sub_100060490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1000033A8(&qword_1001D6B80);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1000619D4(a1, &v20 - v13);
  sub_1000619D4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_10001370C(v14, &qword_1001D6B08);
      v17 = 0;
      return v17 & 1;
    }

LABEL_6:
    sub_10001370C(v14, &qword_1001D6B80);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000619D4(v14, v10);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_100061760(v10);
    goto LABEL_6;
  }

  sub_100061AD8(&v14[v15], v7);
  if (static CameraImage.== infix(_:_:)())
  {
    v18 = static CameraSourceFrameMetadata.== infix(_:_:)();
    sub_100061760(v7);
    v17 = v18 ^ 1;
  }

  else
  {
    sub_100061760(v7);
    v17 = 1;
  }

  sub_100061760(v10);
  sub_10001370C(v14, &qword_1001D6B08);
  return v17 & 1;
}

BOOL sub_100060724(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 != a4 || a2 != a5)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
          return (v8 & 1) == 0;
        }

LABEL_29:
        v8 = 1;
        return (v8 & 1) == 0;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        v8 = a6 == 3 && (a5 | a4) == 0;
        return (v8 & 1) == 0;
      }

      if (a1 ^ 1 | a2)
      {
        if (a6 != 3 || a4 != 2)
        {
          goto LABEL_30;
        }
      }

      else if (a6 != 3 || a4 != 1)
      {
        goto LABEL_30;
      }

      if (!a5)
      {
        goto LABEL_29;
      }
    }

LABEL_30:
    v8 = 0;
    return (v8 & 1) == 0;
  }

  v6 = a4 == a1;
  if (a6)
  {
    v6 = 0;
  }

  v7 = a6 == 1 && a4 == a1;
  if (a3)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return (v8 & 1) == 0;
}

id sub_100060828(id a1)
{
  sub_1000033A8(&qword_1001D6B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 32) = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v3 = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v4 = AVCaptureDeviceTypeBuiltInUltraWideCamera;
  sub_100094F10(1, 2, 1, inited);
  sub_1000C3748(0, 0, 1, v4);

  type metadata accessor for DeviceType(0);
  v5 = AVMediaTypeVideo;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v5 position:a1];

  v8 = [v7 devices];
  sub_10005BBC4(0, &qword_1001D6B68);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v7;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ([v12 position] == a1)
      {

        return v13;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v13 = [objc_opt_self() defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:v5 position:2];

  return v13;
}

void sub_100060AE8(opaqueCMSampleBuffer *a1)
{
  v82 = type metadata accessor for OSSignpostError();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000033A8(&qword_1001D6B08);
  __chkstk_darwin(v4 - 8);
  v86 = &ObjectType - v5;
  v94 = type metadata accessor for AVCameraSourceFrame(0);
  v85 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Angle();
  __chkstk_darwin(v7 - 8);
  v83 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CameraSourceFrameMetadata();
  v92 = *(v9 - 8);
  v93 = v9;
  __chkstk_darwin(v9);
  v89 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CameraImage();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v88 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OSSignpostID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v87 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &ObjectType - v18;
  __chkstk_darwin(v17);
  v21 = &ObjectType - v20;
  v22 = OBJC_IVAR____TtC6Tamale14AVCameraSource_signposter;
  v23 = static LoggingSignposter.avCameraSourceFrameHandler.getter();
  v25 = v24;
  static OSSignpostID.exclusive.getter();
  v96 = v1;
  v84 = v22;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if ((v25 & 1) == 0)
    {
      if (v23)
      {
LABEL_9:
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v29, v23, "", v28, 2u);

        goto LABEL_10;
      }

      __break(1u);
    }

    if (HIDWORD(v23))
    {
      __break(1u);
    }

    else
    {
      if ((v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v23 >> 16 <= 0x10)
      {
        v23 = &v97;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_10:

  (*(v14 + 16))(v19, v21, v13);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v30 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *(v14 + 8);
  v31(v21, v13);
  v32 = CMSampleBufferGetFormatDescription(a1);
  if (v32)
  {
    v33 = v32;
    if (CMFormatDescriptionGetMediaType(v32) == 1986618469)
    {
      CMSampleBufferGetPresentationTimeStamp(&v99, a1);
      v34 = CMSampleBufferGetImageBuffer(a1);
      if (v34)
      {
        v78 = v31;
        v79 = v30;
        v99.value = v34;
        v35 = v34;
        type metadata accessor for CVBuffer(0);
        v77 = v35;
        v36 = v88;
        SendableTransfer.init(wrappedValue:)();
        v38 = v90;
        v37 = v91;
        (*(v90 + 104))(v36, enum case for CameraImage.pixelBuffer(_:), v91);
        CameraImage.imageResolution.getter();
        static Angle.degrees(_:)();
        CMTime.seconds.getter();
        static CGRect.unitRect.getter();
        v39 = v89;
        CameraSourceFrameMetadata.init(imageResolution:rotationAngle:shouldAttemptDetection:timestamp:isHighResolutionStill:safeArea:)();
        v40 = v95;
        (*(v38 + 16))(v95, v36, v37);
        v41 = v94;
        (*(v92 + 16))(v40 + *(v94 + 20), v39, v93);
        v42 = v96;
        v43 = v96 + OBJC_IVAR____TtC6Tamale14AVCameraSource_synchronizer;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v45 = *(v43 + 8);
          v83 = Strong;
          ObjectType = swift_getObjectType();
          swift_getKeyPath();
          v99.value = v42;
          sub_1000602F8(&qword_1001D6AF8, type metadata accessor for AVCameraSource);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v46 = v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState;
          v47 = *(v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState);
          v48 = *(v42 + OBJC_IVAR____TtC6Tamale14AVCameraSource__runState + 8);
          memset(&v99, 0, 17);
          v100 = v47;
          v101 = v48;
          v49 = *(v46 + 16);
          v102 = v49;
          v50 = *(v45 + 8);
          sub_100060424(v47, v48, v49);
          v51 = sub_1000602F8(&qword_1001D6A48, type metadata accessor for AVCameraSourceFrame);
          v50(v95, &v99, v94, v51, ObjectType, v45);
          v41 = v94;
          v40 = v95;
          swift_unknownObjectRelease();
          sub_1000616E4(v47, v48, v49);
        }

        v52 = v86;
        sub_1000616FC(v40, v86);
        (*(v85 + 56))(v52, 0, 1, v41);
        sub_10005D8D8(v52);
        v53 = static LoggingSignposter.avCameraSourceFrameHandler.getter();
        v55 = v54;
        v56 = OSSignposter.logHandle.getter();
        v57 = v87;
        OSSignpostIntervalState.signpostID.getter();
        LODWORD(v96) = static os_signpost_type_t.end.getter();
        if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
        {

          v70 = v57;
LABEL_37:
          v78(v70, v13);
          sub_100061760(v40);
          (*(v92 + 8))(v89, v93);
          (*(v90 + 8))(v88, v91);
          return;
        }

        if (v55)
        {
          if (!HIDWORD(v53))
          {
            v58 = v82;
            v59 = v81;
            v60 = v80;
            if ((v53 & 0xFFFFF800) == 0xD800)
            {
LABEL_44:
              __break(1u);
              return;
            }

            if (v53 >> 16 <= 0x10)
            {
              v53 = &v98;
              goto LABEL_33;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v53)
        {
          v58 = v82;
          v59 = v81;
          v60 = v80;
LABEL_33:

          checkForErrorAndConsumeState(state:)();

          if ((*(v59 + 88))(v60, v58) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v71 = "[Error] Interval already ended";
          }

          else
          {
            (*(v59 + 8))(v60, v58);
            v71 = "";
          }

          v72 = v87;
          v73 = v77;
          v74 = swift_slowAlloc();
          *v74 = 0;
          v75 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, v96, v75, v53, v71, v74, 2u);

          v70 = v72;
          goto LABEL_37;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "Failed to obtain a CVPixelBuffer for the current output frame.", v69, 2u);
      }
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Skipping non-video data, returning…", v66, 2u);
      }
    }
  }

  else
  {
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to get format description, returning…", v63, 2u);
    }
  }
}

uint64_t sub_1000616E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1000616FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061760(uint64_t a1)
{
  v2 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000617BC()
{

  return swift_deallocObject();
}

uint64_t sub_100061814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000618FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100061950(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100061960(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100061970()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100060424(v1, v2, v3);
  return sub_10005DB8C(v1, v2, v3);
}

uint64_t sub_1000619D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6B08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVCameraSourceFrame(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100061B3C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput);
  *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureMetadataOutput) = v2;
  v4 = v2;
}

void sub_100061B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput);
  *(v1 + OBJC_IVAR____TtC6Tamale14AVCameraSource__captureVideoOutput) = v2;
  v4 = v2;
}

__n128 sub_100061C18(uint64_t a1, uint64_t a2)
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

uint64_t sub_100061C48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100061C94(uint64_t result, int a2, int a3)
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

uint64_t sub_100061CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10006466C(v5, v7) & 1;
}

uint64_t sub_100061D6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for Capsule();
  __chkstk_darwin(v3 - 8);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000033A8(&qword_1001D6BA0);
  __chkstk_darwin(v70);
  v71 = &v65 - v5;
  v6 = sub_1000033A8(&qword_1001D6BA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - v7;
  v9 = sub_1000033A8(&qword_1001D6BB0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v65 - v11;
  v13 = sub_1000033A8(&qword_1001D6BB8);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = sub_1000033A8(&qword_1001D6BC0);
  v17 = *(v16 - 8);
  v65 = v16;
  v66 = v17;
  __chkstk_darwin(v16);
  v19 = &v65 - v18;
  v69 = sub_1000033A8(&qword_1001D6BC8);
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v21 = &v65 - v20;
  v22 = *(v2 + 48);
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = sub_1000033A8(&qword_1001D6BD0);
  sub_1000623C4(v2, v22 & 1, &v8[*(v23 + 44)]);
  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10002091C(v8, v12, &qword_1001D6BA8);
  v32 = &v12[*(v10 + 44)];
  *v32 = v2;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v2) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002091C(v12, v15, &qword_1001D6BB0);
  v41 = &v15[*(v13 + 36)];
  *v41 = v2;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_1000033A8(&qword_1001D6BD8);
  v43 = sub_100064144();
  v44 = sub_100064288();
  View.ifCondition<A>(_:transform:)();
  sub_10001370C(v15, &qword_1001D6BB8);
  sub_1000033A8(&qword_1001D6C10);
  v73 = v13;
  v74 = v42;
  v75 = v43;
  v76 = v44;
  swift_getOpaqueTypeConformance2();
  sub_100064340();
  v45 = v65;
  View.ifCondition<A>(_:transform:)();
  (*(v66 + 8))(v19, v45);
  v46 = v68;
  v47 = static Alignment.center.getter();
  v49 = v48;
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(v46, v50, v51);
  if (v22)
  {
    static Color.red.getter();
  }

  else
  {
    static Color.black.getter();
  }

  v52 = Color.opacity(_:)();

  v53 = sub_1000033A8(&qword_1001D6C20);
  v55 = v71;
  v54 = v72;
  v56 = v72 + *(v53 + 36);
  sub_100064460(v46, v71);
  v57 = v55 + *(v70 + 36);
  *v57 = v52;
  *(v57 + 8) = xmmword_100175CA0;
  *(v57 + 24) = 0x402E000000000000;
  static UnitPoint.center.getter();
  v59 = v58;
  v61 = v60;
  sub_1000644C4(v55, v56);
  v62 = (v56 + *(sub_1000033A8(&qword_1001D6C28) + 36));
  *v62 = vdupq_n_s64(0x3FECCCCCCCCCCCCDuLL);
  v62[1].i64[0] = v59;
  v62[1].i64[1] = v61;
  v63 = (v56 + *(sub_1000033A8(&qword_1001D6C30) + 36));
  *v63 = v47;
  v63[1] = v49;
  return (*(v67 + 32))(v54, v21, v69);
}

uint64_t sub_1000623C4@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v119 = a3;
  v112 = type metadata accessor for BlurReplaceTransition.Configuration();
  v110 = *(v112 - 8);
  v4 = __chkstk_darwin(v112);
  v106 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = v83 - v6;
  v117 = type metadata accessor for BlurReplaceTransition();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v111 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for OpacityTransition();
  v109 = *(v114 - 8);
  __chkstk_darwin(v114);
  v107 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1000033A8(&qword_1001D4E00);
  v113 = *(v116 - 8);
  v9 = __chkstk_darwin(v116);
  v11 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v108 = v83 - v12;
  v99 = type metadata accessor for SymbolEffectOptions();
  v96 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for BounceSymbolEffect();
  v93 = *(v121 - 8);
  v14 = __chkstk_darwin(v121);
  v120 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v83 - v16;
  v18 = sub_1000033A8(&qword_1001D6C38);
  __chkstk_darwin(v18);
  v20 = (v83 - v19);
  v21 = sub_1000033A8(&qword_1001D6C40);
  v97 = *(v21 - 8);
  v98 = v21;
  __chkstk_darwin(v21);
  v92 = v83 - v22;
  v94 = sub_1000033A8(&qword_1001D6C48);
  __chkstk_darwin(v94);
  v100 = v83 - v23;
  v104 = sub_1000033A8(&qword_1001D6C50);
  __chkstk_darwin(v104);
  v103 = v83 - v24;
  v25 = sub_1000033A8(&qword_1001D6C58);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v102 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v101 = v83 - v29;
  v30 = sub_1000033A8(&qword_1001D6C60);
  v31 = __chkstk_darwin(v30 - 8);
  v118 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v123 = v83 - v33;
  v34 = a1[5];
  if (v34)
  {
    v88 = v26;
    v89 = v25;
    v90 = v11;
    v91 = a1;
    v35 = a1[4];

    v86 = Image.init(_internalSystemName:)();
    v85 = static Font.headline.getter();
    KeyPath = swift_getKeyPath();
    BounceSymbolEffect.init()();
    BounceSymbolEffect.down.getter();
    v83[0] = *(v93 + 8);
    (v83[0])(v17, v121);
    v36 = v95;
    static SymbolEffectOptions.default.getter();
    v83[1] = v18;
    v37 = v20 + *(v18 + 36);
    v38 = sub_1000033A8(&qword_1001D6C80);
    v39 = v96;
    v40 = v99;
    (*(v96 + 16))(&v37[*(v38 + 36)], v36, v99);
    v41 = &v37[*(v38 + 40)];
    v87 = v35;
    *v41 = v35;
    v41[1] = v34;
    sub_1000645FC(&qword_1001D6C88, &type metadata accessor for BounceSymbolEffect);
    v93 = v34;

    v42 = v120;
    v43 = v121;
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v39 + 8))(v36, v40);
    (v83[0])(v42, v43);
    v45 = KeyPath;
    v44 = v85;
    *v20 = v86;
    v20[1] = v45;
    v20[2] = v44;
    static Font.Weight.medium.getter();
    sub_10006453C();
    v46 = v92;
    View.fontWeight(_:)();
    sub_10001370C(v20, &qword_1001D6C38);
    if (v122)
    {
      v47 = static Color.white.getter();
    }

    else
    {
      v47 = static Color.primary.getter();
    }

    v50 = v47;
    v51 = swift_getKeyPath();
    v52 = v100;
    (*(v97 + 32))(v100, v46, v98);
    v53 = (v52 + *(v94 + 36));
    *v53 = v51;
    v53[1] = v50;
    v54 = v107;
    OpacityTransition.init()();
    v55 = v105;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v56 = v110;
    v57 = v112;
    (*(v110 + 16))(v106, v55, v112);
    v58 = v111;
    BlurReplaceTransition.init(configuration:)();
    (*(v56 + 8))(v55, v57);
    v59 = sub_1000645FC(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
    v60 = sub_1000645FC(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition);
    v61 = v108;
    v62 = v114;
    v63 = v117;
    Transition.combined<A>(with:)();
    (*(v115 + 8))(v58, v63);
    (*(v109 + 8))(v54, v62);
    v64 = v113;
    v65 = v116;
    (*(v113 + 16))(v90, v61, v116);
    *&v144 = v62;
    *(&v144 + 1) = v63;
    *v145 = v59;
    *&v145[8] = v60;
    swift_getOpaqueTypeConformance2();
    v66 = AnyTransition.init<A>(_:)();
    (*(v64 + 8))(v61, v65);
    v67 = v103;
    sub_10002091C(v52, v103, &qword_1001D6C48);
    *(v67 + *(v104 + 36)) = v66;
    v68 = static Animation.easeInOut(duration:)();
    v69 = v102;
    sub_10002091C(v67, v102, &qword_1001D6C50);
    v70 = v89;
    v71 = (v69 + *(v89 + 36));
    v72 = v87;
    *v71 = v68;
    v71[1] = v72;
    v71[2] = v93;
    v73 = v69;
    v74 = v101;
    sub_10002091C(v73, v101, &qword_1001D6C58);
    v75 = v74;
    v76 = v123;
    sub_10002091C(v75, v123, &qword_1001D6C58);
    (*(v88 + 56))(v76, 0, 1, v70);
    v49 = v119;
    a1 = v91;
    v48 = v122;
  }

  else
  {
    (*(v26 + 56))(v123, 1, 1, v25);
    v48 = v122;
    v49 = v119;
  }

  v77 = static HorizontalAlignment.leading.getter();
  v125 = 0;
  sub_1000631C8(a1, v48 & 1, &v144);
  v138 = *&v145[176];
  v139 = *&v145[192];
  v140 = *&v145[208];
  v141 = *&v145[224];
  v134 = *&v145[112];
  v135 = *&v145[128];
  v136 = *&v145[144];
  v137 = *&v145[160];
  v130 = *&v145[48];
  v131 = *&v145[64];
  v132 = *&v145[80];
  v133 = *&v145[96];
  v126 = v144;
  v127 = *v145;
  v128 = *&v145[16];
  v129 = *&v145[32];
  v142[12] = *&v145[176];
  v142[13] = *&v145[192];
  v142[14] = *&v145[208];
  v142[15] = *&v145[224];
  v142[8] = *&v145[112];
  v142[9] = *&v145[128];
  v142[10] = *&v145[144];
  v142[11] = *&v145[160];
  v142[4] = *&v145[48];
  v142[5] = *&v145[64];
  v142[6] = *&v145[80];
  v142[7] = *&v145[96];
  v142[0] = v144;
  v142[1] = *v145;
  v142[2] = *&v145[16];
  v142[3] = *&v145[32];
  sub_1000138BC(&v126, v143, &qword_1001D6C68);
  sub_10001370C(v142, &qword_1001D6C68);
  *&v124[199] = v138;
  *&v124[215] = v139;
  *&v124[231] = v140;
  *&v124[247] = v141;
  *&v124[135] = v134;
  *&v124[151] = v135;
  *&v124[167] = v136;
  *&v124[183] = v137;
  *&v124[71] = v130;
  *&v124[87] = v131;
  *&v124[103] = v132;
  *&v124[119] = v133;
  *&v124[7] = v126;
  *&v124[23] = v127;
  *&v124[39] = v128;
  *&v124[55] = v129;
  v78 = v125;
  v79 = v123;
  v80 = v118;
  sub_1000138BC(v123, v118, &qword_1001D6C60);
  sub_1000138BC(v80, v49, &qword_1001D6C60);
  v81 = *(sub_1000033A8(&qword_1001D6C70) + 48);
  v143[0] = v77;
  v143[1] = 0x3FF0000000000000;
  LOBYTE(v143[2]) = v78;
  memcpy(&v143[2] + 1, v124, 0x107uLL);
  v143[35] = 0x3FF0000000000000;
  memcpy((v49 + v81), v143, 0x120uLL);
  sub_1000138BC(v143, &v144, &qword_1001D6C78);
  sub_10001370C(v79, &qword_1001D6C60);
  *&v144 = v77;
  *(&v144 + 1) = 0x3FF0000000000000;
  v145[0] = v78;
  memcpy(&v145[1], v124, 0x107uLL);
  v146 = 0x3FF0000000000000;
  sub_10001370C(&v144, &qword_1001D6C78);
  return sub_10001370C(v80, &qword_1001D6C60);
}

uint64_t sub_1000631C8@<X0>(uint64_t *a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  LODWORD(v131) = a2;
  v127 = a3;
  v4 = sub_1000033A8(&qword_1001D4E88);
  __chkstk_darwin(v4 - 8);
  v123 = &v107 - v5;
  v137 = type metadata accessor for BlurReplaceTransition.Configuration();
  v150 = *(v137 - 8);
  v6 = __chkstk_darwin(v137);
  v135 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v134 = &v107 - v8;
  v136 = type metadata accessor for BlurReplaceTransition();
  v147 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for OpacityTransition();
  v146 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1000033A8(&qword_1001D4E00);
  v149 = *(v130 - 8);
  v11 = __chkstk_darwin(v130);
  v128 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v148 = &v107 - v13;
  v14 = *a1;
  v15 = a1[1];
  v205 = *(a1 + 1);
  v126 = v14;
  *&v191 = v14;
  *(&v191 + 1) = v15;
  v16 = sub_10002EC9C();
  v138 = v15;

  v113 = v16;
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.subheadline.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;

  sub_100020D44(v17, v19, v21 & 1);

  static Font.Weight.medium.getter();
  v27 = Text.fontWeight(_:)();
  v143 = v28;
  v144 = v27;
  v30 = v29;
  v145 = v31;
  sub_100020D44(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  if (v131)
  {
    v32 = static Color.white.getter();
  }

  else
  {
    v32 = static Color.primary.getter();
  }

  v141 = v32;
  v125 = swift_getKeyPath();
  v140 = v30 & 1;
  v204 = v30 & 1;
  v202 = 0;
  v33 = v129;
  OpacityTransition.init()();
  v34 = v134;
  static BlurReplaceTransition.Configuration.downUp.getter();
  v35 = v150;
  v36 = v137;
  v121 = *(v150 + 16);
  v122 = v150 + 16;
  v121(v135, v34, v137);
  v37 = v133;
  BlurReplaceTransition.init(configuration:)();
  v120 = *(v35 + 8);
  v150 = v35 + 8;
  v120(v34, v36);
  v38 = sub_1000645FC(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
  v39 = sub_1000645FC(&qword_1001D4E78, &type metadata accessor for BlurReplaceTransition);
  v40 = v148;
  v41 = v132;
  v42 = v136;
  Transition.combined<A>(with:)();
  v43 = v147 + 8;
  v117 = *(v147 + 8);
  v117(v37, v42);
  v44 = v146 + 8;
  v116 = *(v146 + 8);
  v116(v33, v41);
  v45 = v149;
  v46 = v40;
  v47 = v130;
  v114 = *(v149 + 16);
  v115 = v149 + 16;
  v114(v128, v46, v130);
  *&v191 = v41;
  *(&v191 + 1) = v42;
  v118 = v39;
  v119 = v38;
  *&v192 = v38;
  *(&v192 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v124 = AnyTransition.init<A>(_:)();
  v49 = *(v45 + 8);
  v149 = v45 + 8;
  v49(v148, v47);
  v139 = static Animation.easeInOut(duration:)();
  v206[0] = v205;
  v50 = v138;
  if (*(&v205 + 1))
  {
    v110 = v49;
    v111 = OpaqueTypeConformance2;
    v146 = v44;
    v147 = v43;
    v109 = *&v206[0];
    *&v191 = *&v206[0];
    v112 = *(&v205 + 1);
    *(&v191 + 1) = *(&v205 + 1);

    sub_1000138BC(v206, &v181, &qword_1001D6CA0);
    v51 = Text.init<A>(_:)();
    v53 = v52;
    v55 = v54;
    static Font.caption.getter();
    v56 = Text.font(_:)();
    v58 = v57;
    v60 = v59;

    sub_100020D44(v51, v53, v55 & 1);

    v61 = enum case for Font.Design.rounded(_:);
    v62 = type metadata accessor for Font.Design();
    v63 = *(v62 - 8);
    v64 = v123;
    (*(v63 + 104))(v123, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = Text.fontDesign(_:)();
    v67 = v66;
    LOBYTE(v63) = v68;
    sub_100020D44(v56, v58, v60 & 1);

    sub_10001370C(v64, &qword_1001D4E88);
    static Font.Weight.medium.getter();
    v123 = Text.fontWeight(_:)();
    v113 = v69;
    v71 = v70;
    v108 = v72;
    sub_100020D44(v65, v67, v63 & 1);

    v107 = swift_getKeyPath();
    if (v131)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.primary.getter();
    }

    v131 = Color.opacity(_:)();

    v73 = swift_getKeyPath();
    v74 = v71 & 1;
    LOBYTE(v151[0]) = v71 & 1;
    LOBYTE(v172) = 0;
    v75 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    LOBYTE(v179[0]) = 0;
    v84 = v129;
    OpacityTransition.init()();
    v85 = v134;
    static BlurReplaceTransition.Configuration.downUp.getter();
    v86 = v137;
    v121(v135, v85, v137);
    v87 = v133;
    BlurReplaceTransition.init(configuration:)();
    v120(v85, v86);
    v88 = v148;
    v89 = v132;
    v90 = v136;
    Transition.combined<A>(with:)();
    v117(v87, v90);
    v116(v84, v89);
    v91 = v130;
    v114(v128, v88, v130);
    v92 = AnyTransition.init<A>(_:)();
    v110(v88, v91);
    v93 = static Animation.easeInOut(duration:)();
    *&v181 = v123;
    *(&v181 + 1) = v113;
    LOBYTE(v182) = v74;
    *(&v182 + 1) = v108;
    *&v183 = v107;
    *(&v183 + 1) = 1;
    LOBYTE(v184) = 0;
    *(&v184 + 1) = v73;
    *&v185 = v131;
    BYTE8(v185) = v75;
    *&v186 = v77;
    *(&v186 + 1) = v79;
    *&v187 = v81;
    *(&v187 + 1) = v83;
    LOBYTE(v188) = 0;
    *(&v188 + 1) = v92;
    *&v189 = v93;
    *(&v189 + 1) = v109;
    v190 = v112;
    static AskACMESource.preferredSource()(&v181);
    v197 = v187;
    v198 = v188;
    v199 = v189;
    v200 = v190;
    v193 = v183;
    v194 = v184;
    v195 = v185;
    v196 = v186;
    v191 = v181;
    v192 = v182;
    v50 = v138;
  }

  else
  {
    sub_10006464C(&v191);
  }

  v187 = v197;
  v188 = v198;
  v189 = v199;
  v183 = v193;
  v184 = v194;
  v185 = v195;
  v186 = v196;
  v181 = v191;
  v182 = v192;
  *&v172 = v144;
  *(&v172 + 1) = v143;
  LOBYTE(v173) = v140;
  *(&v173 + 1) = *v203;
  DWORD1(v173) = *&v203[3];
  *(&v173 + 1) = v145;
  *&v174 = KeyPath;
  *(&v174 + 1) = 1;
  LOBYTE(v175) = 0;
  *(&v175 + 1) = *v201;
  DWORD1(v175) = *&v201[3];
  v95 = v124;
  v94 = v125;
  *(&v175 + 1) = v125;
  *&v176 = v141;
  *(&v176 + 1) = v124;
  *&v177 = v139;
  v96 = v126;
  *(&v177 + 1) = v126;
  v167 = v174;
  v168 = v175;
  v165 = v172;
  v166 = v173;
  v169 = v176;
  v170 = v177;
  v179[0] = v191;
  v179[1] = v192;
  v179[4] = v195;
  v179[5] = v196;
  v179[2] = v193;
  v179[3] = v194;
  v179[8] = v199;
  v179[6] = v197;
  v179[7] = v198;
  *(&v171[7] + 8) = v198;
  *(&v171[6] + 8) = v197;
  *(&v171[3] + 8) = v194;
  *(&v171[2] + 8) = v193;
  *(&v171[8] + 8) = v199;
  v190 = v200;
  v178 = v50;
  v180 = v200;
  *&v171[0] = v50;
  *(&v171[9] + 1) = v200;
  *(&v171[4] + 8) = v195;
  *(&v171[5] + 8) = v196;
  *(v171 + 8) = v191;
  *(&v171[1] + 8) = v192;
  v97 = v171[7];
  v98 = v127;
  v127[12] = v171[6];
  v98[13] = v97;
  v99 = v171[9];
  v98[14] = v171[8];
  v98[15] = v99;
  v100 = v171[3];
  v98[8] = v171[2];
  v98[9] = v100;
  v101 = v171[5];
  v98[10] = v171[4];
  v98[11] = v101;
  v102 = v170;
  v98[4] = v169;
  v98[5] = v102;
  v103 = v171[1];
  v98[6] = v171[0];
  v98[7] = v103;
  v104 = v166;
  *v98 = v165;
  v98[1] = v104;
  v105 = v168;
  v98[2] = v167;
  v98[3] = v105;
  sub_1000138BC(v206, v151, &qword_1001D6CA0);
  sub_1000138BC(&v172, v151, &qword_1001D6CA8);
  sub_1000138BC(v179, v151, &qword_1001D6CB0);
  sub_10001370C(&v181, &qword_1001D6CB0);
  v151[0] = v144;
  v151[1] = v143;
  v152 = v140;
  *v153 = *v203;
  *&v153[3] = *&v203[3];
  v154 = v145;
  v155 = KeyPath;
  v156 = 1;
  v157 = 0;
  *v158 = *v201;
  *&v158[3] = *&v201[3];
  v159 = v94;
  v160 = v141;
  v161 = v95;
  v162 = v139;
  v163 = v96;
  v164 = v50;
  return sub_10001370C(v151, &qword_1001D6CA8);
}

uint64_t sub_100063EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.red.getter();
  v5 = (a2 + *(sub_1000033A8(&qword_1001D6BD8) + 36));
  v6 = sub_1000033A8(&qword_1001D6C08);
  v7 = *(v6 + 52);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v4;
  *(v5 + *(v6 + 56)) = 256;
  return sub_1000138BC(a1, a2, &qword_1001D6BB8);
}

uint64_t sub_100063FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1000033A8(&qword_1001D6C10) + 36);
  static Material.thick.getter();
  v5 = sub_1000033A8(&qword_1001D4668);
  v6 = *(v5 + 52);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v4 + v6, v7, v8);
  *(v4 + *(v5 + 56)) = 256;
  v9 = sub_1000033A8(&qword_1001D6BC0);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

unint64_t sub_100064144()
{
  result = qword_1001D6BE0;
  if (!qword_1001D6BE0)
  {
    sub_10001276C(&qword_1001D6BB8);
    sub_1000641D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BE0);
  }

  return result;
}

unint64_t sub_1000641D0()
{
  result = qword_1001D6BE8;
  if (!qword_1001D6BE8)
  {
    sub_10001276C(&qword_1001D6BB0);
    sub_100013608(&qword_1001D6BF0, &qword_1001D6BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BE8);
  }

  return result;
}

unint64_t sub_100064288()
{
  result = qword_1001D6BF8;
  if (!qword_1001D6BF8)
  {
    sub_10001276C(&qword_1001D6BD8);
    sub_100064144();
    sub_100013608(&qword_1001D6C00, &qword_1001D6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6BF8);
  }

  return result;
}

unint64_t sub_100064340()
{
  result = qword_1001D6C18;
  if (!qword_1001D6C18)
  {
    sub_10001276C(&qword_1001D6C10);
    sub_10001276C(&qword_1001D6BB8);
    sub_10001276C(&qword_1001D6BD8);
    sub_100064144();
    sub_100064288();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D4720, &qword_1001D4668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6C18);
  }

  return result;
}

uint64_t sub_100064460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000644C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6BA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006453C()
{
  result = qword_1001D6C90;
  if (!qword_1001D6C90)
  {
    sub_10001276C(&qword_1001D6C38);
    sub_100022DB8();
    sub_100013608(&qword_1001D6C98, &qword_1001D6C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6C90);
  }

  return result;
}

uint64_t sub_1000645FC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10006464C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10006466C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v6)
  {
    goto LABEL_22;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (v9 && (*(a1 + 32) == *(a2 + 32) && v8 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_22:
    v10 = 0;
    return v10 & 1;
  }

  if (v9)
  {
    goto LABEL_22;
  }

LABEL_20:
  v10 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
  return v10 & 1;
}

unint64_t sub_100064744()
{
  result = qword_1001D6CB8;
  if (!qword_1001D6CB8)
  {
    sub_10001276C(&qword_1001D6C20);
    sub_10001276C(&qword_1001D6BC0);
    sub_10001276C(&qword_1001D6C10);
    sub_10001276C(&qword_1001D6BB8);
    sub_10001276C(&qword_1001D6BD8);
    sub_100064144();
    sub_100064288();
    swift_getOpaqueTypeConformance2();
    sub_100064340();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D6CC0, &qword_1001D6C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6CB8);
  }

  return result;
}

uint64_t sub_1000648C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000649C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

id sub_100064BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraPreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100064C30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100064C78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100064CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100064D60(uint64_t a1, uint64_t a2, char a3)
{
  v18 = sub_1000033A8(&qword_1001D6DC0);
  v4 = *(v18 - 8);
  __chkstk_darwin(v18);
  v6 = &v17 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CameraPreviewView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  swift_weakAssign();

  v13 = [v11 layer];
  [v13 setContentsGravity:kCAGravityResizeAspectFill];
  [v13 setAllowsDisplayCompositing:1];

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  v19 = v13;
  v20 = 0;
  v15 = v13;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();

  (*(v4 + 8))(v6, v18);
  return v11;
}

uint64_t sub_1000650AC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1000033A8(&qword_1001D6DC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (a4)
  {
    swift_weakAssign();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    swift_weakAssign();

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  v18 = [a1 layer];
  v19 = 0;
  v16 = v18;
  sub_1000033A8(&qword_1001D6DC8);
  AsyncStream.Continuation.yield(_:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000653D8()
{
  v0 = sub_1000033A8(&qword_1001D6DC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = 0;
    v6 = 0;
    sub_1000033A8(&qword_1001D6DC8);
    AsyncStream.Continuation.yield(_:)();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_100065504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000662A4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100065568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000662A4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000655CC()
{
  sub_1000662A4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000655F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v48 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for _ConditionalContent();
  v44 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v43 = &v40 - v8;
  v45 = *(v5 - 8);
  v9 = __chkstk_darwin(v7);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v40 - v11;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10001276C(&qword_1001D6D78);
  v46 = type metadata accessor for _ConditionalContent();
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v40 - v16;
  v58 = *(v3 + 8);
  v17 = *v3;
  v57 = *v3;
  v18 = v58;

  if ((v18 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v40 = v12;
    v20 = v4;
    v21 = v19;
    os_log(_:dso:log:_:_:)();

    v4 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001370C(&v57, &qword_1001D6D80);
    (*(v13 + 8))(v15, v40);
    v17 = v56[0];
  }

  swift_getKeyPath();
  v56[0] = v17;
  sub_100065E74();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState);
  v23 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 8);
  v24 = *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16);
  sub_100060424(v22, v23, *(v17 + OBJC_IVAR____TtC6Tamale16CameraController__runState + 16));

  if (v3[4])
  {
    if (v24 != 2)
    {
      v33 = swift_allocObject();
      v27 = *(v4 + 24);
      *(v33 + 16) = v5;
      *(v33 + 24) = v27;
      v34 = *(v3 + 1);
      *(v33 + 32) = *v3;
      *(v33 + 48) = v34;
      *(v33 + 64) = *(v3 + 32);
      v56[0] = sub_100065F70;
      v56[1] = v33;
      sub_100065F7C(&v57, v55);
      v53 = v27;
      v54 = v27;

      swift_getWitnessTable();
      sub_100065ECC();
      v32 = v49;
      sub_1000649C0(v56, v6, v47);

      goto LABEL_9;
    }

    v25 = sub_1000616E4(v22, v23, 2);
    v26 = v41;
    (v3[2])(v25);
    v27 = *(v4 + 24);
    v28 = v42;
    sub_100071210(v26, v5, v27);
    v29 = *(v45 + 8);
    v29(v26, v5);
    sub_100071210(v28, v5, v27);
    v30 = v43;
    sub_1000649C0(v26, v5, v5);
    v51 = v27;
    v52 = v27;
  }

  else
  {
    v31 = sub_1000616E4(v22, v23, v24);
    v26 = v41;
    (v3[2])(v31);
    v27 = *(v4 + 24);
    v28 = v42;
    sub_100071210(v26, v5, v27);
    v29 = *(v45 + 8);
    v29(v26, v5);
    sub_100071210(v28, v5, v27);
    v30 = v43;
    sub_1000648C8(v26, v5);
    v56[6] = v27;
    v56[7] = v27;
  }

  swift_getWitnessTable();
  sub_100065ECC();
  v32 = v49;
  sub_1000648C8(v30, v6);
  (*(v44 + 8))(v30, v6);
  v29(v26, v5);
  v29(v28, v5);
LABEL_9:
  v56[4] = v27;
  v56[5] = v27;
  WitnessTable = swift_getWitnessTable();
  v36 = sub_100065ECC();
  v56[2] = WitnessTable;
  v56[3] = v36;
  v37 = v46;
  v38 = swift_getWitnessTable();
  sub_100071210(v32, v37, v38);
  return (*(v50 + 8))(v32, v37);
}

uint64_t sub_100065CD8()
{
  type metadata accessor for CameraController();
  sub_100065E74();
  v0 = Environment.init<A>(_:)();
  v2 = v1;
  static CanvasUtility.defaultCameraFrameSize.getter();
  v4 = v3;
  static CanvasUtility.defaultCameraFrameSize.getter();
  v6 = v4 / v5;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v10[22] = v12;
  *&v10[38] = v13;
  *&v10[6] = v11;
  *&v8 = v0;
  BYTE8(v8) = v2 & 1;
  *v9 = v6;
  *&v9[8] = 256;
  *&v9[10] = *v10;
  *&v9[26] = *&v10[16];
  *&v9[42] = *&v10[32];
  *&v9[56] = *(&v13 + 1);
  sub_1000033A8(&qword_1001D6D90);
  sub_100065FEC();
  View.accessibilityIdentifier(_:)();
  v14[1] = *v9;
  v14[2] = *&v9[16];
  v14[3] = *&v9[32];
  v14[4] = *&v9[48];
  v14[0] = v8;
  return sub_10001370C(v14, &qword_1001D6D90);
}

unint64_t sub_100065E74()
{
  result = qword_1001D44C0;
  if (!qword_1001D44C0)
  {
    type metadata accessor for CameraController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D44C0);
  }

  return result;
}

unint64_t sub_100065ECC()
{
  result = qword_1001D6D88;
  if (!qword_1001D6D88)
  {
    sub_10001276C(&qword_1001D6D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6D88);
  }

  return result;
}

uint64_t sub_100065F30()
{

  return swift_deallocObject();
}

uint64_t sub_100065F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100065FEC()
{
  result = qword_1001D6D98;
  if (!qword_1001D6D98)
  {
    sub_10001276C(&qword_1001D6D90);
    sub_100066078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6D98);
  }

  return result;
}

unint64_t sub_100066078()
{
  result = qword_1001D6DA0;
  if (!qword_1001D6DA0)
  {
    sub_10001276C(&qword_1001D6DA8);
    sub_100066104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DA0);
  }

  return result;
}

unint64_t sub_100066104()
{
  result = qword_1001D6DB0;
  if (!qword_1001D6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DB0);
  }

  return result;
}

uint64_t sub_100066158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000661A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000661F4()
{
  type metadata accessor for _ConditionalContent();
  sub_10001276C(&qword_1001D6D78);
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  sub_100065ECC();
  return swift_getWitnessTable();
}

unint64_t sub_1000662A4()
{
  result = qword_1001D6DB8;
  if (!qword_1001D6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6DB8);
  }

  return result;
}

uint64_t sub_100066330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = static Alignment.center.getter();
  v9 = v8;
  type metadata accessor for SiriStreamingVoicePlayer();
  sub_100067754(&qword_1001D6E90, &type metadata accessor for SiriStreamingVoicePlayer);

  v10 = Environment.init<A>(_:)();
  v12 = v11;
  v13 = sub_1000033A8(&qword_1001D6E98);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_1000033A8(&qword_1001D6EA0);
  v15 = a2 + *(result + 36);
  *v15 = v10;
  *(v15 + 8) = v12 & 1;
  *(v15 + 16) = v6;
  *(v15 + 24) = v5;
  *(v15 + 32) = v7;
  *(v15 + 40) = v9;
  return result;
}

id sub_100066458()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view;
  v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = sub_1000668B0();
    [v4 addInteraction:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t (*sub_100066500(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100067C20;
}

uint64_t sub_100066590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_1000154EC(0, 0, v6, &unk_1001764A8, v9);
}

uint64_t sub_1000666C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100066758, v7, v6);
}

uint64_t sub_100066758()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = dispatch thunk of SiriStreamingVoicePlayer.isPlaying.getter();
    v4 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying;
    if ((v3 & 1) != v2[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying])
    {
      v2[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying] = v3 & 1;
      v5 = sub_1000668B0();
      if (v2[v4] == 1)
      {
        sub_100066AA4();
      }

      else
      {
        sub_1000669C4();
      }

      sub_10006750C();
      sub_100067754(&qword_1001D6EB0, sub_10006750C);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v5 _setConfigurations:isa];
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_1000668B0()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction;
  v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction);
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying) == 1)
    {
      sub_100066AA4();
    }

    else
    {
      sub_1000669C4();
    }

    v4 = objc_allocWithZone(_UIPhysicalButtonInteraction);
    sub_10006750C();
    sub_100067754(&qword_1001D6EB0, sub_10006750C);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v6 = [v4 initWithConfigurations:isa delegate:v0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1000669C4()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons;
  if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons);
  }

  else
  {
    v3 = [objc_opt_self() _cameraShutterConfigurationsWithOptionsProvider:0];
    sub_10006750C();
    sub_100067754(&qword_1001D6EB0, sub_10006750C);
    v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100066AA4()
{
  v1 = OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons;
  if (*(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons))
  {
    v2 = *(v0 + OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons);
  }

  else
  {
    v2 = sub_100066B0C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100066B0C()
{
  v0 = sub_1000669C4();
  v1 = v0;
  if ((v0 & 0xC000000000000001) == 0)
  {
    v2 = 0;
    v19 = *(v0 + 32);
    v8 = ((1 << v19) + 63) >> 6;
    if ((v19 & 0x3Fu) <= 0xD)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v2 = &_swiftEmptySetSingleton;
  v39 = &_swiftEmptySetSingleton;
  v1 = __CocoaSet.makeIterator()();
  v3 = __CocoaSet.Iterator.next()();
  if (!v3)
  {
LABEL_21:

    return v2;
  }

  v4 = v3;
  sub_10006750C();
  v5 = v4;
  while (1)
  {
    v37 = v5;
    swift_dynamicCast();
    if ([v38 _button] != 1 && objc_msgSend(v38, "_button") != 2)
    {
      break;
    }

LABEL_5:
    v5 = __CocoaSet.Iterator.next()();
    if (!v5)
    {
      goto LABEL_21;
    }
  }

  v6 = v38;
  v7 = v2[2];
  if (v2[3] <= v7)
  {
    sub_1000AFC88(v7 + 1);
  }

  v2 = v39;
  v8 = v38;
  v9 = NSObject._rawHashValue(seed:)(v39[5]);
  v10 = (v39 + 7);
  v11 = -1 << *(v39 + 32);
  v12 = v9 & ~v11;
  v13 = v12 >> 6;
  if (((-1 << v12) & ~v39[(v12 >> 6) + 7]) != 0)
  {
    v14 = __clz(__rbit64((-1 << v12) & ~v39[(v12 >> 6) + 7])) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    *&v10[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
    *(v2[6] + 8 * v14) = v6;
    ++v2[2];
    goto LABEL_5;
  }

  v15 = 0;
  v16 = (63 - v11) >> 6;
  while (++v13 != v16 || (v15 & 1) == 0)
  {
    v17 = v13 == v16;
    if (v13 == v16)
    {
      v13 = 0;
    }

    v15 |= v17;
    v18 = *&v10[8 * v13];
    if (v18 != -1)
    {
      v14 = __clz(__rbit64(~v18)) + (v13 << 6);
      goto LABEL_20;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_42:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_23:
    v34[1] = v2;
    v34[2] = v34;
    v35 = v8;
    __chkstk_darwin(v0);
    v21 = v34 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v21, v20);
    v36 = 0;
    v22 = 0;
    v23 = 1 << *(v1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v8 = v24 & *(v1 + 56);
    v2 = ((v23 + 63) >> 6);
    while (v8)
    {
      v25 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_34:
      v28 = v25 | (v22 << 6);
      v29 = *(*(v1 + 48) + 8 * v28);
      if ([v29 _button] == 1)
      {
      }

      else
      {
        v30 = [v29 _button];

        if (v30 != 2)
        {
          *&v21[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
            return sub_1000B2B14(v21, v35, v36, v1);
          }
        }
      }
    }

    v26 = v22;
    while (1)
    {
      v22 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v22 >= v2)
      {
        return sub_1000B2B14(v21, v35, v36, v1);
      }

      v27 = *(v1 + 56 + 8 * v22);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v8 = (v27 - 1) & v27;
        goto LABEL_34;
      }
    }
  }

  v33 = swift_slowAlloc();
  v2 = sub_1000676C4(v33, v8, v1, sub_100066F44);

  return v2;
}

id sub_100067074()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhysicalShutterButtonEventInteractor.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100067150()
{
  type metadata accessor for ModifiedContent();
  sub_1000671B4();
  return swift_getWitnessTable();
}

unint64_t sub_1000671B4()
{
  result = qword_1001D6E88;
  if (!qword_1001D6E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6E88);
  }

  return result;
}

uint64_t sub_100067208(uint64_t *a1, int a2)
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

uint64_t sub_100067250(uint64_t result, int a2, int a3)
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

id sub_1000672C4()
{
  sub_1000033A8(&unk_1001D6EE0);
  UIViewRepresentableContext.coordinator.getter();
  v0 = sub_100066458();

  return v0;
}

id sub_100067338@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_100054238(v3, v4);
  LOBYTE(v3) = dispatch thunk of SiriStreamingVoicePlayer.isPlaying.getter();

  v7 = type metadata accessor for PhysicalShutterButtonEventInteractor.Coordinator();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___view] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___interaction] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithVolumeButtons] = 0;
  *&v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator____lazy_storage___configurationsWithoutVolumeButtons] = 0;
  v9 = &v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action];
  *v9 = v6;
  v9[1] = v5;
  v8[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_isVoicePlaying] = v3 & 1;
  v11.receiver = v8;
  v11.super_class = v7;
  result = objc_msgSendSuper2(&v11, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10006741C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067D30();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100067480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100067D30();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000674E4()
{
  sub_100067D30();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10006750C()
{
  result = qword_1001D6EA8;
  if (!qword_1001D6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001D6EA8);
  }

  return result;
}

void sub_100067558(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1000B2B14(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1000676C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100067558(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_100067754(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006779C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000677E4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100067838()
{
  result = qword_1001D6EB8;
  if (!qword_1001D6EB8)
  {
    sub_10001276C(&qword_1001D6EA0);
    sub_100013608(&qword_1001D6EC0, &qword_1001D6E98);
    sub_100013608(&qword_1001D6EC8, &qword_1001D6ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6EB8);
  }

  return result;
}

unint64_t sub_100067920()
{
  result = qword_1001D6ED8;
  if (!qword_1001D6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6ED8);
  }

  return result;
}

void sub_100067974(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v18 = type metadata accessor for EnvironmentValues();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D6EE0);
  UIViewRepresentableContext.coordinator.getter();
  v12 = v20;
  v13 = &v20[OBJC_IVAR____TtCV6TamaleP33_DBAFA1543AA49895417F73E6520704D336PhysicalShutterButtonEventInteractor11Coordinator_action];
  *v13 = a4;
  *(v13 + 1) = a5;

  UIViewRepresentableContext.coordinator.getter();
  v14 = v20;

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v15 = (*(v9 + 8))(v11, v18);
    a2 = v19;
  }

  __chkstk_darwin(v15);
  *(&v17 - 2) = v14;
  *(&v17 - 1) = a2;
  withObservationTracking<A>(_:onChange:)();
}

uint64_t sub_100067BA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100067BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100067C28()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100067C70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100019340;

  return sub_1000666C0(a1, v4, v5, v7, v6);
}

unint64_t sub_100067D30()
{
  result = qword_1001D6EF0;
  if (!qword_1001D6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6EF0);
  }

  return result;
}

void *sub_100067D84(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for MitosisCell(0) - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t View.mitosisCell<A>(shape:cornerRadius:inset:style:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v13 = type metadata accessor for MitosisCellModifier(0);
  __chkstk_darwin(v13);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  type metadata accessor for Optional();
  sub_10001A390(sub_100068160, v22, &type metadata for Never, &type metadata for AnyShape, v16, &v27);
  v17 = v27;
  v18 = *(v13 + 32);
  v19 = type metadata accessor for RoundedCornerStyle();
  (*(*(v19 - 8) + 16))(&v15[v18], a3, v19);
  *v15 = 0;
  *(v15 + 1) = v17;
  *(v15 + 2) = a1;
  v15[24] = a2 & 1;
  *(v15 + 4) = 0;
  v15[40] = 1;
  View.modifier<A>(_:)();
  return sub_100069A40(v15, type metadata accessor for MitosisCellModifier);
}

uint64_t sub_100068084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AnyShape.init<A>(_:)();
  *a2 = result;
  return result;
}

uint64_t sub_1000681BC()
{
  type metadata accessor for MitosisCellModifier(255);
  type metadata accessor for ModifiedContent();
  sub_10006822C();
  return swift_getWitnessTable();
}

unint64_t sub_10006822C()
{
  result = qword_1001D6F00;
  if (!qword_1001D6F00)
  {
    type metadata accessor for MitosisCellModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6F00);
  }

  return result;
}

uint64_t sub_100068284()
{
  type metadata accessor for ModifiedContent();
  sub_1000682E8();
  return swift_getWitnessTable();
}

unint64_t sub_1000682E8()
{
  result = qword_1001D6F08;
  if (!qword_1001D6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6F08);
  }

  return result;
}

uint64_t sub_100068350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RoundedCornerStyle();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10006841C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for RoundedCornerStyle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000684C0()
{
  sub_10006858C(319, &qword_1001D6F78);
  if (v0 <= 0x3F)
  {
    sub_10006858C(319, &unk_1001D6F80);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RoundedCornerStyle();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10006858C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100068660()
{
  v1 = v0;
  v2 = type metadata accessor for Capsule();
  __chkstk_darwin(v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MitosisCell(0);
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  if (*(v0 + 8))
  {

    AnyShape.path(in:)();
    sub_100069AA0();
    v9 = AnyShape.init<A>(_:)();

    return v9;
  }

  else
  {
    if (*(v0 + 24))
    {
      v11 = *(v8 + 28);
      v12 = type metadata accessor for RoundedCornerStyle();
      (*(*(v12 - 8) + 16))(v4, v1 + v11, v12);
      Capsule.path(in:)();
      v13 = &type metadata accessor for Capsule;
      v14 = v4;
    }

    else
    {
      v15 = *(v0 + 16);
      v16 = *(v8 + 28);
      v17 = *(v5 + 20);
      v18 = type metadata accessor for RoundedCornerStyle();
      (*(*(v18 - 8) + 16))(&v7[v17], v1 + v16, v18);
      *v7 = v15;
      *(v7 + 1) = v15;
      RoundedRectangle.path(in:)();
      v13 = &type metadata accessor for RoundedRectangle;
      v14 = v7;
    }

    sub_100069A40(v14, v13);
    v19[0] = v21;
    v19[1] = v22;
    v20 = v23;
    sub_100069AA0();
    return AnyShape.init<A>(_:)();
  }
}

Swift::Int sub_100068904()
{
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100068954()
{
  Hasher.init(_seed:)();
  Namespace.ID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000689A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1000033A8(&qword_1001D6FD0);
  v4 = (type metadata accessor for MitosisCell(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100171DA0;
  v7 = v6 + v5;
  v8 = Namespace.wrappedValue.getter();
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(type metadata accessor for MitosisCellModifier(0) + 32);
  v13 = v4[9];
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 16))(v7 + v13, a2 + v12, v14);
  *v7 = v8;
  *(v7 + 8) = v9;
  *(v7 + 16) = v10;
  *(v7 + 24) = v11;
  *(v7 + v4[10]) = a1;
  *a3 = v6;
}

uint64_t sub_100068B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = static Anchor.Source<A>.bounds.getter();
  sub_100069410(v4, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_10006955C(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = sub_1000033A8(&qword_1001D6FC0);
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  result = sub_1000033A8(&qword_1001D6FC8);
  v14 = (a3 + *(result + 36));
  *v14 = v9;
  v14[1] = sub_1000695C0;
  v14[2] = v11;
  return result;
}

uint64_t sub_100068C8C(uint64_t a1, double a2)
{
  v4 = sub_1000033A8(&qword_1001D6FD8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_1000033A8(&qword_1001D6FE0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  if (static Solarium.isEnabled.getter())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    v11 = static Alignment.center.getter();
    v13 = v12;
    v14 = sub_1000033A8(&qword_1001D6FE8);
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    v15 = &v9[*(v7 + 36)];
    *v15 = sub_100069754;
    v15[1] = v10;
    v15[2] = v11;
    v15[3] = v13;
    sub_1000697CC(v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8);
    _ConditionalContent<>.init(storage:)();
    return sub_10006983C(v9);
  }

  else
  {
    v17 = sub_1000033A8(&qword_1001D6FE8);
    (*(*(v17 - 8) + 16))(v6, a1, v17);
    swift_storeEnumTagMultiPayload();
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100068F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v38 = a1;
  v42 = a3;
  v41 = type metadata accessor for _ShapeSet();
  v39 = *(v41 - 8);
  v3 = __chkstk_darwin(v41);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v35 - v5;
  v6 = type metadata accessor for Material._GlassVariant.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Material._GlassVariant();
  v10 = *(v35 - 8);
  v11 = __chkstk_darwin(v35);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for Material();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  static Material._GlassVariant.clear.getter();
  (*(v7 + 104))(v9, enum case for Material._GlassVariant.Size.small(_:), v6);
  Material._GlassVariant.size(_:)();
  (*(v7 + 8))(v9, v6);
  v23 = *(v10 + 8);
  v24 = v13;
  v25 = v35;
  v23(v24, v35);
  static Material._glass(_:)();
  v23(v15, v25);
  v44 = v38;
  sub_100067D84(sub_1000698E8, v43, v40);
  v26 = v36;
  _ShapeSet.init(shapes:smoothness:)();
  v27 = v39;
  v28 = v41;
  (*(v39 + 16))(v37, v26, v41);
  (*(v17 + 16))(v20, v22, v16);
  v29 = v42;
  _ShapeSetView.init(shape:style:)();
  (*(v27 + 8))(v26, v28);
  (*(v17 + 8))(v22, v16);
  v30 = (v29 + *(sub_1000033A8(&qword_1001D7010) + 36));
  v31 = *(sub_1000033A8(&qword_1001D45B8) + 28);
  v32 = enum case for ColorScheme.dark(_:);
  v33 = type metadata accessor for ColorScheme();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  result = swift_getKeyPath();
  *v30 = result;
  return result;
}

uint64_t sub_100069410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MitosisCellModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069474()
{
  v1 = (type metadata accessor for MitosisCellModifier(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10006955C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MitosisCellModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000695C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MitosisCellModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000689A4(a1, v6, a2);
}

unint64_t sub_100069660()
{
  result = qword_1001D6FF0;
  if (!qword_1001D6FF0)
  {
    sub_10001276C(&qword_1001D6FE0);
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8);
    sub_100013608(&qword_1001D7000, &qword_1001D7008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D6FF0);
  }

  return result;
}

uint64_t sub_100069754@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1000698DC;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
}

uint64_t sub_1000697CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D6FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006983C(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D6FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000698A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000698E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100068660();
  *a1 = result;
  return result;
}

uint64_t sub_100069974(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100069A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100069AA0()
{
  result = qword_1001D7018;
  if (!qword_1001D7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7018);
  }

  return result;
}

uint64_t sub_100069B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RoundedCornerStyle();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100069BDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RoundedCornerStyle();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_100069C98()
{
  sub_10006858C(319, &qword_1001D6F78);
  if (v0 <= 0x3F)
  {
    sub_10006858C(319, &unk_1001D6F80);
    if (v1 <= 0x3F)
    {
      type metadata accessor for RoundedCornerStyle();
      if (v2 <= 0x3F)
      {
        sub_100069D7C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100069D7C()
{
  if (!qword_1001D7088)
  {
    type metadata accessor for CGRect(255);
    v0 = type metadata accessor for Anchor();
    if (!v1)
    {
      atomic_store(v0, &qword_1001D7088);
    }
  }
}

unint64_t sub_100069DF8()
{
  result = qword_1001D70C8;
  if (!qword_1001D70C8)
  {
    sub_10001276C(&qword_1001D6FC8);
    sub_100013608(&qword_1001D70D0, &qword_1001D6FC0);
    sub_100013608(&qword_1001D70D8, &qword_1001D70E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70C8);
  }

  return result;
}

unint64_t sub_100069EE0()
{
  result = qword_1001D70E8;
  if (!qword_1001D70E8)
  {
    sub_10001276C(&qword_1001D70F0);
    sub_100069660();
    sub_100013608(&qword_1001D6FF8, &qword_1001D6FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70E8);
  }

  return result;
}

unint64_t sub_100069F9C()
{
  result = qword_1001D70F8;
  if (!qword_1001D70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D70F8);
  }

  return result;
}

unint64_t sub_100069FF4()
{
  result = qword_1001D7100[0];
  if (!qword_1001D7100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001D7100);
  }

  return result;
}

void sub_10006A054()
{
  sub_100053128();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10006A100(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(v7 + 84);
  v10 = *(*(a3 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 80);
  v13 = *(v7 + 64);
  v14 = *(v10 + 80);
  v15 = v11 - 1;
  if (!v11)
  {
    v15 = 0;
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v17)
  {
    goto LABEL_39;
  }

  v19 = v18 + ((v13 + v14 + (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 24) & ~v12)) & ~v14);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v17 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v23 < 2)
    {
LABEL_39:
      v27 = (a1 + v8 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) != 0)
      {
        v29 = (v27 + v12 + 16) & ~v12;
        if (v9 == v17)
        {
          v30 = *(*(*(a3 + 16) - 8) + 48);

          return v30(v29);
        }

        else
        {
          v31 = (*(v10 + 48))((v29 + v13 + v14) & ~v14, v11, *(a3 + 24));
          if (v31 >= 2)
          {
            return v31 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v28 = *(v27 + 8);
        if (v28 >= 0xFFFFFFFF)
        {
          LODWORD(v28) = -1;
        }

        return (v28 + 1);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_39;
  }

LABEL_26:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = v19;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v17 + (v26 | v24) + 1;
}

void sub_10006A3C0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  v18 = *(v14 + 80);
  v19 = v15 - 1;
  if (!v15)
  {
    v19 = 0;
  }

  if (v13 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(v12 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  if (v15)
  {
    v22 = *(*(v11 - 8) + 64);
  }

  else
  {
    v22 = *(*(v11 - 8) + 64) + 1;
  }

  v23 = ((v17 + v18 + (((v10 & 0xFFFFFFFFFFFFFFF8) + v16 + 24) & ~v16)) & ~v18) + v22;
  if (a3 <= v21)
  {
    goto LABEL_26;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v21 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v21 >= a2)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_26:
    if (v21 >= a2)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v8 = 1;
  if (v21 >= a2)
  {
LABEL_36:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v23] = 0;
    }

    else if (v8)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

LABEL_43:
    v29 = (&a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
    if ((v20 & 0x80000000) != 0)
    {
      v30 = (v29 + v16 + 16) & ~v16;
      if (v13 == v21)
      {
        v31 = *(v12 + 56);

        v31(v30, a2);
      }

      else
      {
        v32 = *(v14 + 56);
        v33 = (v30 + v17 + v18) & ~v18;

        v32(v33, (a2 + 1), v15, v11);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *v29 = a2 & 0x7FFFFFFF;
      v29[1] = 0;
    }

    else
    {
      v29[1] = (a2 - 1);
    }

    return;
  }

LABEL_27:
  v26 = ~v21 + a2;
  if (v23 >= 4)
  {
    bzero(a1, v23);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_57:
    if (v8 > 1)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, v23);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_57;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_61:
      if (v8 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_61;
    }
  }

LABEL_58:
  if (v8)
  {
    a1[v23] = v27;
  }
}

uint64_t sub_10006A7BC(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_10006A98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10006A9F8(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  AnyTransition.init<A>(_:)();
  View.transition(_:)();
}

uint64_t sub_10006AAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v52 = type metadata accessor for ButtonStyleConfiguration.Label();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D7308);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = sub_1000033A8(&qword_1001D7310);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_1000033A8(&qword_1001D7318);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v49 - v15;
  v53 = sub_1000033A8(&qword_1001D7320);
  __chkstk_darwin(v53);
  v18 = &v49 - v17;
  v54 = sub_1000033A8(&qword_1001D7328);
  __chkstk_darwin(v54);
  v20 = &v49 - v19;
  v59 = sub_1000033A8(&qword_1001D7330);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - v21;
  v51 = sub_1000033A8(&qword_1001D7338);
  __chkstk_darwin(v51);
  v55 = &v49 - v22;
  v60 = a1;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v50 + 32))(v8, v4, v52);
  v23 = &v8[*(v6 + 44)];
  v24 = v69;
  *(v23 + 4) = v68;
  *(v23 + 5) = v24;
  *(v23 + 6) = v70;
  v25 = v65;
  *v23 = v64;
  *(v23 + 1) = v25;
  v26 = v67;
  *(v23 + 2) = v66;
  *(v23 + 3) = v26;
  LOBYTE(a1) = static Edge.Set.all.getter();
  sub_10002091C(v8, v12, &qword_1001D7308);
  v27 = &v12[*(v10 + 44)];
  *v27 = a1;
  *(v27 + 8) = xmmword_100176770;
  *(v27 + 24) = xmmword_100176770;
  v27[40] = 0;
  v28 = static Alignment.center.getter();
  v30 = v29;
  v31 = v57;
  sub_10006B1A4(v57, &v62);
  v32 = v62;
  LOBYTE(v6) = v63;
  sub_10002091C(v12, v16, &qword_1001D7310);
  v33 = &v16[*(v14 + 44)];
  *v33 = v32;
  v33[8] = v6;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  if (*(v31 + *(type metadata accessor for NonModalPromptViewButtonStyle() + 20)) == 1)
  {
    v34 = static Color.white.getter();
  }

  else
  {
    v34 = static Color.primary.getter();
  }

  v35 = v34;
  KeyPath = swift_getKeyPath();
  sub_10002091C(v16, v18, &qword_1001D7318);
  v37 = &v18[*(v53 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  v38 = static Font.headline.getter();
  v39 = swift_getKeyPath();
  sub_10002091C(v18, v20, &qword_1001D7320);
  v40 = &v20[*(v54 + 36)];
  *v40 = v39;
  v40[1] = v38;
  static Font.Weight.medium.getter();
  sub_100070948();
  v41 = v56;
  View.fontWeight(_:)();
  sub_10001370C(v20, &qword_1001D7328);
  v42 = v55;
  v43 = &v55[*(v51 + 36)];
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = type metadata accessor for RoundedCornerStyle();
  (*(*(v45 - 8) + 104))(v43, v44, v45);
  *&v43[*(sub_1000033A8(&qword_1001D7378) + 36)] = 256;
  (*(v58 + 32))(v42, v41, v59);
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v46 = 0.85;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v61;
  sub_10002091C(v42, v61, &qword_1001D7338);
  result = sub_1000033A8(&qword_1001D7380);
  *(v47 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_10006B1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  if (*(a1 + *(type metadata accessor for NonModalPromptViewButtonStyle() + 20)) == 1)
  {
    v15 = static Color.blue.getter();
    v16 = 0;
  }

  else
  {
    sub_100054010(v10);
    (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
    static ColorScheme.== infix(_:_:)();
    v11 = *(v5 + 8);
    v11(v8, v4);
    v11(v10, v4);
    static Color.primary.getter();
    v12 = Color.opacity(_:)();

    v15 = v12;
    v16 = 1;
  }

  result = _ConditionalContent<>.init(storage:)();
  v14 = v18;
  *a2 = v17;
  *(a2 + 8) = v14;
  return result;
}

uint64_t sub_10006B38C@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  sub_10001276C(&qword_1001D7188);
  type metadata accessor for NonModalPromptViewButtonStyle();
  sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  v3 = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v4 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v46 = &protocol witness table for _FlexFrameLayout;
  v5 = swift_getWitnessTable();
  v43 = v5;
  v44 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v6 = swift_getWitnessTable();
  v35 = v3;
  v36 = &type metadata for Solarium;
  v37 = v4;
  v38 = v4;
  v39 = v5;
  v40 = &protocol witness table for Solarium;
  v41 = v6;
  v42 = v6;
  v23[1] = &opaque type descriptor for <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D71A0);
  v23[0] = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D4E50);
  v23[2] = type metadata accessor for ModifiedContent();
  v23[4] = type metadata accessor for ModifiedContent();
  v23[3] = type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CC8);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v23 - v12;
  sub_10006BA00(a1, v11);
  v35 = v3;
  v36 = &type metadata for Solarium;
  v37 = v4;
  v38 = v4;
  v39 = v5;
  v40 = &protocol witness table for Solarium;
  v41 = v6;
  v42 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_100013608(&qword_1001D71A8, &qword_1001D71A0);
  v33 = OpaqueTypeConformance2;
  v34 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_100013608(&qword_1001D61C8, &qword_1001D4E50);
  v31 = v16;
  v32 = v17;
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for _PaddingLayout;
  v27 = swift_getWitnessTable();
  v28 = &protocol witness table for _ShadowEffect;
  v18 = swift_getWitnessTable();
  v19 = sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  v25 = v18;
  v26 = v19;
  swift_getWitnessTable();
  v20 = *(v8 + 16);
  v20(v13, v11, v7);
  v21 = *(v8 + 8);
  v21(v11, v7);
  v20(v24, v13, v7);
  return (v21)(v13, v7);
}

uint64_t sub_10006BA00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v3 = type metadata accessor for ColorScheme();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = __chkstk_darwin(v3);
  v89 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v88 = &v61 - v6;
  v86 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v86);
  v87 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188);
  v8 = type metadata accessor for NonModalPromptViewButtonStyle();
  v9 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  *&v81 = a1[3];
  *&v82 = a1[5];
  v110 = v81;
  v111 = v8;
  v112 = v82;
  v113 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v76 = a1[2];
  v78 = a1[4];
  v110 = v76;
  v111 = v8;
  v112 = v78;
  v113 = v9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v71 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v75 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v61 - v14;
  sub_10001276C(&qword_1001D3CA0);
  v15 = type metadata accessor for ModifiedContent();
  v120 = swift_getWitnessTable();
  v121 = &protocol witness table for _FlexFrameLayout;
  v93 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v16 = swift_getWitnessTable();
  v17 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v118 = v16;
  v119 = v17;
  v18 = v16;
  v19 = swift_getWitnessTable();
  v110 = v13;
  v111 = &type metadata for Solarium;
  v112 = v15;
  v113 = v15;
  v114 = v16;
  v115 = &protocol witness table for Solarium;
  v116 = v19;
  v117 = v19;
  v65 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B, C>(_:then:else:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v61 - v20;
  sub_10001276C(&qword_1001D71A0);
  v66 = type metadata accessor for ModifiedContent();
  v74 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v61 - v22;
  sub_10001276C(&qword_1001D4E50);
  v68 = type metadata accessor for ModifiedContent();
  v77 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v61 - v23;
  v80 = type metadata accessor for ModifiedContent();
  v84 = *(v80 - 8);
  __chkstk_darwin(v80);
  v72 = &v61 - v24;
  v83 = type metadata accessor for ModifiedContent();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v79 = &v61 - v25;
  *&v26 = v76;
  *(&v26 + 1) = v81;
  *&v27 = v78;
  *(&v27 + 1) = v82;
  v81 = v26;
  v82 = v27;
  v99 = v26;
  v100 = v27;
  v101 = v94;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  v28 = v63;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v73 + 8))(v12, v10);
  Solarium.init()();
  v97 = v81;
  v98 = v82;
  v95 = v81;
  v96 = v82;
  v60 = swift_checkMetadataState();
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v75 + 8))(v28, v13);
  static Alignment.center.getter();
  sub_1000033A8(&qword_1001D71B0);
  v110 = v13;
  v111 = &type metadata for Solarium;
  v112 = v60;
  v113 = v60;
  v114 = v18;
  v115 = &protocol witness table for Solarium;
  v116 = v19;
  v117 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10006F00C();
  v30 = v62;
  v31 = OpaqueTypeMetadata2;
  View.overlay<A>(alignment:content:)();
  (*(v69 + 8))(v21, v31);
  v32 = *(v86 + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  v35 = v87;
  (*(*(v34 - 8) + 104))(&v87[v32], v33, v34);
  __asm { FMOV            V0.2D, #28.0 }

  *v35 = _Q0;
  v41 = sub_100013608(&qword_1001D71A8, &qword_1001D71A0);
  v108 = OpaqueTypeConformance2;
  v109 = v41;
  v42 = v66;
  v43 = swift_getWitnessTable();
  sub_100070F68(&qword_1001D71E0, &type metadata accessor for RoundedRectangle);
  v44 = v67;
  View.clipShape<A>(_:style:)();
  sub_1000700A4(v35, &type metadata accessor for RoundedRectangle);
  (*(v74 + 8))(v30, v42);
  static Edge.Set.horizontal.getter();
  v45 = sub_100013608(&qword_1001D61C8, &qword_1001D4E50);
  v106 = v43;
  v107 = v45;
  v46 = v68;
  v47 = swift_getWitnessTable();
  v48 = v72;
  View.padding(_:_:)();
  (*(v77 + 8))(v44, v46);
  static Color.black.getter();
  v49 = v88;
  sub_100054010(v88);
  v51 = v89;
  v50 = v90;
  v52 = v91;
  (*(v90 + 104))(v89, enum case for ColorScheme.dark(_:), v91);
  static ColorScheme.== infix(_:_:)();
  v53 = *(v50 + 8);
  v53(v51, v52);
  v53(v49, v52);
  Color.opacity(_:)();

  v104 = v47;
  v105 = &protocol witness table for _PaddingLayout;
  v54 = v80;
  v55 = swift_getWitnessTable();
  v56 = v79;
  View.shadow(color:radius:x:y:)();

  (*(v84 + 8))(v48, v54);
  v102 = v55;
  v103 = &protocol witness table for _ShadowEffect;
  v57 = v83;
  swift_getWitnessTable();
  v58 = sub_10006F9B0();
  sub_10006A9F8(v58);
  return (*(v85 + 8))(v56, v57);
}

uint64_t sub_10006C748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a1;
  v86 = a6;
  v10 = type metadata accessor for NonModalPromptViewButtonStyle();
  v11 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  v67 = a3;
  v68 = a5;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v99 = a2;
  v100 = v10;
  v65 = a2;
  v101 = a4;
  v102 = v11;
  v66 = a4;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v81 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v75 = type metadata accessor for HStack();
  v82 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v59 - v12;
  v78 = type metadata accessor for ModifiedContent();
  v85 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v59 - v13;
  v84 = type metadata accessor for ModifiedContent();
  v90 = *(v84 - 8);
  v14 = __chkstk_darwin(v84);
  v77 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v83 = &v59 - v16;
  v99 = a2;
  v100 = a3;
  v101 = a4;
  v102 = a5;
  v64 = type metadata accessor for NonModalPromptView();
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  __chkstk_darwin(v64);
  v60 = &v59 - v18;
  v79 = sub_1000033A8(&qword_1001D7188);
  v76 = *(v79 - 8);
  v19 = __chkstk_darwin(v79);
  v74 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v88 = &v59 - v21;
  v22 = type metadata accessor for Spring();
  __chkstk_darwin(v22 - 8);
  v23 = type metadata accessor for SmartDialogAnimationSettings();
  v70 = v23;
  v71 = *(v23 - 8);
  v24 = v71;
  v25 = __chkstk_darwin(v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v27;
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  sub_1000033A8(&qword_1001D7208);
  swift_allocObject();
  v30 = PassthroughSubject.init()();
  v87 = v30;
  Spring.init(response:dampingRatio:)();
  v69 = v29;
  SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:)();
  (*(v24 + 16))(v27, v29, v23);
  v99 = v30;
  sub_100013608(&qword_1001D7210, &qword_1001D7208);
  v61 = Publisher.eraseToAnyPublisher()();
  v31 = v63;
  v32 = v60;
  v33 = v64;
  (*(v63 + 16))(v60, v89, v64);
  v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
  v35 = (v17 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v65;
  v38 = v67;
  *(v36 + 2) = v65;
  *(v36 + 3) = v38;
  v39 = v66;
  v40 = v68;
  *(v36 + 4) = v66;
  *(v36 + 5) = v40;
  (*(v31 + 32))(&v36[v34], v32, v33);
  *&v36[v35] = v87;

  sub_1000033A8(&qword_1001D7218);
  sub_10006FD40();
  SmartDialog.init(animationSettings:animationTrigger:header:body:)();
  v91 = v37;
  v92 = v38;
  v93 = v39;
  v94 = v40;
  v95 = v89;
  static VerticalAlignment.center.getter();
  v41 = v73;
  HStack.init(alignment:spacing:content:)();
  v42 = v75;
  v43 = swift_getWitnessTable();
  v44 = v72;
  View.padding(_:)();
  (*(v82 + 8))(v41, v42);
  static Alignment.center.getter();
  v98[4] = v43;
  v98[5] = &protocol witness table for _PaddingLayout;
  v57 = v78;
  v58 = swift_getWitnessTable();
  v45 = v77;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v85 + 8))(v44, v57);
  v98[2] = v58;
  v98[3] = &protocol witness table for _FlexFrameLayout;
  v46 = v84;
  v89 = swift_getWitnessTable();
  v47 = v90;
  v48 = *(v90 + 16);
  v49 = v83;
  v48(v83, v45, v46);
  v50 = *(v47 + 8);
  v90 = v47 + 8;
  v50(v45, v46);
  v51 = v76;
  v52 = v74;
  v53 = v88;
  v54 = v79;
  (*(v76 + 16))(v74, v88, v79);
  v99 = v52;
  v48(v45, v49, v46);
  v100 = v45;
  v98[0] = v54;
  v98[1] = v46;
  v96 = sub_100013608(&qword_1001D7260, &qword_1001D7188);
  v97 = v89;
  sub_10006A7BC(&v99, 2uLL, v98);

  v50(v49, v46);
  v55 = *(v51 + 8);
  v55(v53, v54);
  (*(v71 + 8))(v69, v70);
  v50(v45, v46);
  return (v55)(v52, v54);
}

uint64_t sub_10006D270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  *&v32 = a3;
  *(&v32 + 1) = a4;
  v31 = *(a1 + *(type metadata accessor for NonModalPromptView() + 52));
  sub_10002EC9C();

  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  static Font.cardBody.getter();
  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_100020D44(v6, v8, v10 & 1);

  v28 = static Alignment.leading.getter();
  v29 = v18;
  LOBYTE(v27) = 1;
  LOBYTE(v26) = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v19 = v15 & 1;
  KeyPath = swift_getKeyPath();
  v21 = [objc_opt_self() labelColor];
  v22 = Color.init(uiColor:)();
  v23 = swift_getKeyPath();
  v24 = static Edge.Set.all.getter();
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v19;
  *(a5 + 24) = v17;
  *(a5 + 96) = v35;
  *(a5 + 112) = v36;
  *(a5 + 128) = v37;
  *(a5 + 32) = v31;
  *(a5 + 48) = v32;
  *(a5 + 64) = v33;
  *(a5 + 80) = v34;
  *(a5 + 144) = KeyPath;
  *(a5 + 152) = 0;
  *(a5 + 160) = v23;
  *(a5 + 168) = v22;
  *(a5 + 176) = v24;
  *(a5 + 184) = xmmword_100176780;
  *(a5 + 200) = xmmword_100176780;
  *(a5 + 216) = 0;
  *(a5 + 224) = sub_10007011C;
  *(a5 + 232) = a2;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
}

uint64_t sub_10006D470@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v112 = a5;
  v106 = a4;
  v105 = a2;
  WitnessTable = a1;
  v100 = a6;
  v10 = type metadata accessor for NonModalPromptViewButtonStyle();
  v11 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  v120 = a2;
  v121 = v10;
  v122 = a4;
  v123 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v93 = &v83 - v13;
  sub_10001276C(&qword_1001D7198);
  v95 = OpaqueTypeMetadata2;
  v98 = type metadata accessor for ModifiedContent();
  v99 = *(v98 - 8);
  v14 = __chkstk_darwin(v98);
  v97 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v96 = &v83 - v16;
  v17 = swift_checkMetadataState();
  v18 = __chkstk_darwin(v17);
  v20 = (&v83 - v19);
  v120 = a3;
  v121 = v18;
  v110 = v18;
  v111 = v11;
  v122 = a5;
  v123 = v11;
  v21 = swift_getOpaqueTypeMetadata2();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v87 = &v83 - v22;
  v89 = v23;
  v24 = type metadata accessor for ModifiedContent();
  v91 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v86 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v90 = &v83 - v27;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v83 - v31;
  v33 = *(a3 - 8);
  __chkstk_darwin(v30);
  v35 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v24;
  v102 = type metadata accessor for Optional();
  v109 = *(v102 - 8);
  v36 = __chkstk_darwin(v102);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v108 = &v83 - v39;
  v120 = v105;
  v121 = a3;
  v122 = v106;
  v123 = v112;
  v92 = type metadata accessor for NonModalPromptView();
  (*(v29 + 16))(v32, WitnessTable + *(v92 + 60), v28);
  v40 = *(v33 + 48);
  v107 = a3;
  v41 = v40(v32, 1, a3);
  v101 = v38;
  if (v41 == 1)
  {
    (*(v29 + 8))(v32, v28);
    v91[7](v38, 1, 1, v103);
    v120 = v107;
    v121 = v110;
    v122 = v112;
    v123 = v111;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v43 = sub_100013608(&qword_1001D7268, &qword_1001D7198);
    v119[4] = OpaqueTypeConformance2;
    v119[5] = v43;
    swift_getWitnessTable();
  }

  else
  {
    v85 = v33;
    v44 = *(v33 + 32);
    v84 = v35;
    v45 = v107;
    v44(v35, v32, v107);
    *v20 = swift_getKeyPath();
    sub_1000033A8(&qword_1001D4DC0);
    swift_storeEnumTagMultiPayload();
    v47 = v110;
    v46 = v111;
    *(v20 + *(v110 + 20)) = 0;
    v48 = v87;
    v49 = v112;
    v50 = v91;
    v51 = v86;
    View.buttonStyle<A>(_:)();
    sub_1000700A4(v20, type metadata accessor for NonModalPromptViewButtonStyle);
    swift_getKeyPath();
    LOBYTE(v119[0]) = 0;
    v120 = v45;
    v121 = v47;
    v122 = v49;
    v123 = v46;
    v38 = v101;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v89;
    View.environment<A>(_:_:)();

    (*(v88 + 8))(v48, v53);
    (*(v85 + 8))(v84, v107);
    v54 = sub_100013608(&qword_1001D7268, &qword_1001D7198);
    v113 = v52;
    v114 = v54;
    v55 = v103;
    swift_getWitnessTable();
    v56 = v50[2];
    v57 = v90;
    (v56)(v90, v51, v55);
    v58 = v50[1];
    (v58)(v51, v55);
    (v56)(v51, v57, v55);
    (v58)(v57, v55);
    (v50[4])(v38, v51, v55);
    v50[7](v38, 0, 1, v55);
  }

  v59 = v109;
  v60 = *(v109 + 16);
  v89 = v109 + 16;
  v90 = v60;
  v61 = v102;
  (v60)(v108, v38, v102);
  v62 = *(v59 + 8);
  v109 = v59 + 8;
  v91 = v62;
  (v62)(v38, v61);
  *v20 = swift_getKeyPath();
  sub_1000033A8(&qword_1001D4DC0);
  swift_storeEnumTagMultiPayload();
  v63 = v111;
  v64 = v110;
  *(v20 + *(v110 + 20)) = 1;
  v65 = v93;
  v66 = v105;
  v67 = v64;
  v68 = v106;
  v69 = v63;
  View.buttonStyle<A>(_:)();
  sub_1000700A4(v20, type metadata accessor for NonModalPromptViewButtonStyle);
  swift_getKeyPath();
  LOBYTE(v119[0]) = 0;
  v120 = v66;
  v121 = v67;
  v122 = v68;
  v123 = v69;
  v106 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = v97;
  v72 = v95;
  View.environment<A>(_:_:)();

  (*(v94 + 8))(v65, v72);
  v73 = sub_100013608(&qword_1001D7268, &qword_1001D7198);
  v119[2] = v70;
  v119[3] = v73;
  v74 = v98;
  WitnessTable = swift_getWitnessTable();
  v75 = v99;
  v76 = *(v99 + 16);
  v77 = v96;
  v76(v96, v71, v74);
  v105 = *(v75 + 8);
  v105(v71, v74);
  v78 = v101;
  v79 = v102;
  (v90)(v101, v108, v102);
  v119[0] = v78;
  v76(v71, v77, v74);
  v119[1] = v71;
  v118[0] = v79;
  v118[1] = v74;
  v120 = v107;
  v121 = v110;
  v122 = v112;
  v123 = v111;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v73;
  v115 = swift_getWitnessTable();
  v120 = swift_getWitnessTable();
  v121 = WitnessTable;
  sub_10006A7BC(v119, 2uLL, v118);
  v80 = v105;
  v105(v77, v74);
  v81 = v91;
  (v91)(v108, v79);
  v80(v71, v74);
  return (v81)(v78, v79);
}

uint64_t sub_10006E1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v41 = a2;
  v49 = a1;
  v50 = a6;
  v46 = type metadata accessor for Material._GlassVariant.Size();
  v9 = *(v46 - 8);
  __chkstk_darwin(v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Material._GlassVariant();
  v44 = *(v12 - 8);
  v45 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = &v41 - v16;
  v17 = type metadata accessor for Material();
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  __chkstk_darwin(v17);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188);
  v20 = type metadata accessor for NonModalPromptViewButtonStyle();
  v21 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  v55 = a3;
  v56 = v20;
  v57 = a5;
  v58 = v21;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v55 = v41;
  v56 = v20;
  v57 = a4;
  v58 = v21;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v41 = type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v41 - v27;
  static Material._GlassVariant.regular.getter();
  v29 = v46;
  (*(v9 + 104))(v11, enum case for Material._GlassVariant.Size.large(_:), v46);
  v30 = v43;
  Material._GlassVariant.size(_:)();
  (*(v9 + 8))(v11, v29);
  v31 = *(v44 + 8);
  v32 = v15;
  v33 = v45;
  v31(v32, v45);
  v34 = v42;
  static Material._glass(_:)();
  v31(v30, v33);
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  v54 = &protocol witness table for _FlexFrameLayout;
  v35 = swift_getWitnessTable();
  v36 = v47;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v48 + 8))(v34, v36);
  v37 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v51 = v35;
  v52 = v37;
  swift_getWitnessTable();
  v38 = *(v23 + 16);
  v38(v28, v26, v22);
  v39 = *(v23 + 8);
  v39(v26, v22);
  v38(v50, v28, v22);
  return (v39)(v28, v22);
}

uint64_t sub_10006E7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v30 = a1;
  v31 = a6;
  v29 = type metadata accessor for Material();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001276C(&qword_1001D7188);
  v13 = type metadata accessor for NonModalPromptViewButtonStyle();
  v14 = sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  v36 = a3;
  v37 = v13;
  v38 = a5;
  v39 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v36 = a2;
  v37 = v13;
  v38 = a4;
  v39 = v14;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v28 - v20;
  static Material.thick.getter();
  static Edge.Set.all.getter();
  WitnessTable = swift_getWitnessTable();
  v35 = &protocol witness table for _FlexFrameLayout;
  v22 = swift_getWitnessTable();
  v23 = v29;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  (*(v10 + 8))(v12, v23);
  v24 = sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  v32 = v22;
  v33 = v24;
  swift_getWitnessTable();
  v25 = *(v16 + 16);
  v25(v21, v19, v15);
  v26 = *(v16 + 8);
  v26(v19, v15);
  v25(v31, v21, v15);
  return (v26)(v21, v15);
}

uint64_t sub_10006EC9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001D71C8);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  if (static Solarium.isEnabled.getter())
  {
    v8 = *(v27 + 56);

    return v8(a1, 1, 1, v5);
  }

  else
  {
    v10 = *(v2 + 20);
    v11 = enum case for RoundedCornerStyle.continuous(_:);
    v12 = type metadata accessor for RoundedCornerStyle();
    (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
    __asm { FMOV            V0.2D, #28.0 }

    *v4 = _Q0;
    static Color.white.getter();
    v18 = Color.opacity(_:)();

    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    sub_10006FA04(v4, v7);
    v19 = &v7[*(sub_1000033A8(&qword_1001D71F0) + 36)];
    v20 = v29;
    *v19 = v28;
    *(v19 + 1) = v20;
    *(v19 + 4) = v30;
    v21 = sub_1000033A8(&qword_1001D71F8);
    *&v7[*(v21 + 52)] = v18;
    *&v7[*(v21 + 56)] = 256;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_1000700A4(v4, &type metadata accessor for RoundedRectangle);
    v25 = &v7[*(sub_1000033A8(&qword_1001D7200) + 36)];
    *v25 = v22;
    v25[1] = v24;
    v26 = &v7[*(v5 + 36)];
    *v26 = 0x4000000000000000;
    v26[8] = 0;
    sub_10002091C(v7, a1, &qword_1001D71C8);
    return (*(v27 + 56))(a1, 0, 1, v5);
  }
}

uint64_t type metadata accessor for NonModalPromptViewButtonStyle()
{
  result = qword_1001D72D0;
  if (!qword_1001D72D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006F00C()
{
  result = qword_1001D71B8;
  if (!qword_1001D71B8)
  {
    sub_10001276C(&qword_1001D71B0);
    sub_10006F090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71B8);
  }

  return result;
}

unint64_t sub_10006F090()
{
  result = qword_1001D71C0;
  if (!qword_1001D71C0)
  {
    sub_10001276C(&qword_1001D71C8);
    sub_100013608(&qword_1001D71D0, &qword_1001D71D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71C0);
  }

  return result;
}

uint64_t sub_10006F148@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v41 = a3;
  v13 = sub_1000033A8(&qword_1001D73B8);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1000033A8(&qword_1001D73E8);
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_1000033A8(&qword_1001D73B0);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v38 - v21;
  if (TransitionPhase.isIdentity.getter())
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 8.0;
  }

  v24 = sub_1000033A8(&qword_1001D73D8);
  (*(*(v24 - 8) + 16))(v15, a1, v24);
  v25 = &v15[*(v13 + 36)];
  *v25 = v23;
  v25[8] = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  *(v26 + 32) = a6;
  *(v26 + 40) = a7;
  *(v26 + 48) = a2;
  sub_1000033A8(&qword_1001D73C0);
  sub_100070EB0();
  v27 = type metadata accessor for EmptyVisualEffect();
  v28 = sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect);
  v42 = v27;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  View.visualEffect<A>(_:)();

  sub_10001370C(v15, &qword_1001D73B8);
  if (TransitionPhase.isIdentity.getter())
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  (*(v39 + 32))(v22, v18, v40);
  *&v22[*(v20 + 44)] = v29;
  if (TransitionPhase.isIdentity.getter())
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.98;
  }

  static UnitPoint.center.getter();
  v32 = v31;
  v34 = v33;
  v35 = v41;
  sub_10002091C(v22, v41, &qword_1001D73B0);
  result = sub_1000033A8(&qword_1001D7390);
  v37 = v35 + *(result + 36);
  *v37 = v30;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  return result;
}

uint64_t sub_10006F4E8(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v8 = type metadata accessor for NamedCoordinateSpace();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0x6C61626F6C67;
  *&v29 = -2.12455197e183;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.bounds(of:)();
  v12 = *&v28;
  v13 = *&v29;
  v14 = v30;
  v15 = v31;
  v16 = *(v9 + 8);
  v16(v11, v8);
  if (v32)
  {
    v17 = a4;
  }

  else
  {
    a1 = v12;
    a2 = v13;
    a3 = v14;
    v17 = v15;
  }

  *v27 = v17;
  v27[1] = 0x6C61626F6C67;
  v27[2] = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v16(v11, v8);
  if ((TransitionPhase.isIdentity.getter() & 1) == 0)
  {
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    *&v33.size.height = v27[0];
    CGRectGetMidY(v33);
    v34.origin.x = v19;
    v34.origin.y = v21;
    v34.size.width = v23;
    v34.size.height = v25;
    CGRectGetMinY(v34);
  }

  type metadata accessor for EmptyVisualEffect();
  sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect);
  return VisualEffect.offset(x:y:)();
}

uint64_t sub_10006F75C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Animation.speed(_:)();

  sub_1000033A8(&qword_1001D7388);
  sub_1000033A8(&qword_1001D7390);
  sub_100013608(&qword_1001D7398, &qword_1001D7388);
  sub_100070CC8();
  View.animation<A>(_:body:)();
}

uint64_t sub_10006F8E8(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_10006F9B0()
{
  result = qword_1001D71E8;
  if (!qword_1001D71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D71E8);
  }

  return result;
}

uint64_t sub_10006FA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006FA68()
{
  v1 = *(v0 + 16);
  v9 = *(v0 + 24);
  v2 = type metadata accessor for NonModalPromptView();
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  sub_1000033A8(&qword_1001D4DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for ColorScheme();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 56), v1);
  v6 = *(v2 + 60);
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v4 + v6, 1, v9))
  {
    (*(v7 + 8))(v4 + v6, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_10006FC68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(type metadata accessor for NonModalPromptView() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006D270(v1 + v6, v7, v3, v4, a1);
}

unint64_t sub_10006FD40()
{
  result = qword_1001D7220;
  if (!qword_1001D7220)
  {
    sub_10001276C(&qword_1001D7218);
    sub_10006FDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7220);
  }

  return result;
}

unint64_t sub_10006FDCC()
{
  result = qword_1001D7228;
  if (!qword_1001D7228)
  {
    sub_10001276C(&qword_1001D7230);
    sub_10006FE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7228);
  }

  return result;
}

unint64_t sub_10006FE58()
{
  result = qword_1001D7238;
  if (!qword_1001D7238)
  {
    sub_10001276C(&qword_1001D7240);
    sub_10006FF10();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7238);
  }

  return result;
}

unint64_t sub_10006FF10()
{
  result = qword_1001D7248;
  if (!qword_1001D7248)
  {
    sub_10001276C(&qword_1001D7250);
    sub_10006FFC8();
    sub_100013608(&qword_1001D4EE0, &qword_1001D4EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7248);
  }

  return result;
}

unint64_t sub_10006FFC8()
{
  result = qword_1001D7258;
  if (!qword_1001D7258)
  {
    sub_10001276C(&qword_1001D61E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7258);
  }

  return result;
}

uint64_t sub_1000700A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007011C()
{
  v1 = *v0;
  v2 = sub_100013608(&qword_1001D7270, &qword_1001D7208);

  return Subject<>.send()(v1, v2);
}

uint64_t sub_1000701CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D4CD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000702B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D4CD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_10007037C()
{
  sub_100053128();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000703F0()
{
  sub_10001276C(&qword_1001D7188);
  type metadata accessor for NonModalPromptViewButtonStyle();
  sub_100070F68(&qword_1001D7190, type metadata accessor for NonModalPromptViewButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D7198);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CA0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CC0, &qword_1001D3CA0);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10001276C(&qword_1001D71A0);
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D4E50);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10001276C(&qword_1001D3CC8);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_100013608(&qword_1001D71A8, &qword_1001D71A0);
  swift_getWitnessTable();
  sub_100013608(&qword_1001D61C8, &qword_1001D4E50);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
  return swift_getWitnessTable();
}

unint64_t sub_100070948()
{
  result = qword_1001D7340;
  if (!qword_1001D7340)
  {
    sub_10001276C(&qword_1001D7328);
    sub_100070A00();
    sub_100013608(&qword_1001D46C0, &qword_1001D46C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7340);
  }

  return result;
}

unint64_t sub_100070A00()
{
  result = qword_1001D7348;
  if (!qword_1001D7348)
  {
    sub_10001276C(&qword_1001D7320);
    sub_100070AB8();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7348);
  }

  return result;
}

unint64_t sub_100070AB8()
{
  result = qword_1001D7350;
  if (!qword_1001D7350)
  {
    sub_10001276C(&qword_1001D7318);
    sub_100070B70();
    sub_100013608(&qword_1001D7368, &qword_1001D7370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7350);
  }

  return result;
}

unint64_t sub_100070B70()
{
  result = qword_1001D7358;
  if (!qword_1001D7358)
  {
    sub_10001276C(&qword_1001D7310);
    sub_100070BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7358);
  }

  return result;
}

unint64_t sub_100070BFC()
{
  result = qword_1001D7360;
  if (!qword_1001D7360)
  {
    sub_10001276C(&qword_1001D7308);
    sub_100070F68(&qword_1001D4770, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D7360);
  }

  return result;
}

unint64_t sub_100070CC8()
{
  result = qword_1001D73A0;
  if (!qword_1001D73A0)
  {
    sub_10001276C(&qword_1001D7390);
    sub_100070D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73A0);
  }

  return result;
}

unint64_t sub_100070D54()
{
  result = qword_1001D73A8;
  if (!qword_1001D73A8)
  {
    sub_10001276C(&qword_1001D73B0);
    sub_10001276C(&qword_1001D73B8);
    sub_10001276C(&qword_1001D73C0);
    sub_100070EB0();
    type metadata accessor for EmptyVisualEffect();
    sub_100070F68(&qword_1001D73E0, &type metadata accessor for EmptyVisualEffect);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73A8);
  }

  return result;
}

unint64_t sub_100070EB0()
{
  result = qword_1001D73C8;
  if (!qword_1001D73C8)
  {
    sub_10001276C(&qword_1001D73B8);
    sub_100013608(&qword_1001D73D0, &qword_1001D73D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73C8);
  }

  return result;
}

uint64_t sub_100070F68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100070FD4()
{
  result = qword_1001D73F0;
  if (!qword_1001D73F0)
  {
    sub_10001276C(&qword_1001D7380);
    sub_100071060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F0);
  }

  return result;
}

unint64_t sub_100071060()
{
  result = qword_1001D73F8;
  if (!qword_1001D73F8)
  {
    sub_10001276C(&qword_1001D7338);
    sub_10001276C(&qword_1001D7328);
    sub_100070948();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&unk_1001D7400, &qword_1001D7378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D73F8);
  }

  return result;
}

uint64_t sub_100071154()
{
  sub_10001276C(&qword_1001D7388);
  sub_10001276C(&qword_1001D7390);
  sub_100013608(&qword_1001D7398, &qword_1001D7388);
  sub_100070CC8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100071214(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = *(a3 + 16);
  v18 = result;
  if (v17)
  {
    v3 = 0;
    v4 = (a3 + 64);
    v5 = &_swiftEmptyArrayStorage;
    v16 = a3;
    while (v3 < *(a3 + 16))
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v9 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v20[0] = v7;
      v20[1] = v6;
      v20[2] = v9;
      v20[3] = v8;
      v21 = v10;
      sub_100007F40(v7, v6, v9, v8, v10);
      v11 = v18(v20);
      if (v19)
      {
        sub_100093F04(v7, v6, v9, v8, v10);

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v5;
        if ((result & 1) == 0)
        {
          result = sub_1000594A0(0, v5[2] + 1, 1);
          v5 = v22;
        }

        v13 = v5[2];
        v12 = v5[3];
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          result = sub_1000594A0((v12 > 1), v13 + 1, 1);
          v14 = v13 + 1;
          v5 = v22;
        }

        v5[2] = v14;
        v15 = &v5[5 * v13];
        *(v15 + 4) = v7;
        *(v15 + 5) = v6;
        *(v15 + 6) = v9;
        *(v15 + 7) = v8;
        v15[64] = v10;
      }

      else
      {
        result = sub_100093F04(v7, v6, v9, v8, v10);
      }

      ++v3;
      v4 += 40;
      a3 = v16;
      if (v17 == v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_16:

    return v5;
  }

  return result;
}

void **sub_1000713D8(uint64_t (*a1)(uint64_t *), void **a2, unint64_t a3)
{
  v5 = a3;
  v18 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

uint64_t sub_100071594(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;

  sub_1000033A8(&qword_1001D80D8);
  sub_100013608(&qword_1001D80E0, &qword_1001D80D8);
  dispatch thunk of Sequence.makeIterator()();
  sub_100013608(&qword_1001D80F0, &qword_1001D80E8);
  sub_1000033A8(&qword_1001D80E8);
  dispatch thunk of Collection.endIndex.getter();
  if (v36 == v35)
  {
  }

  v32[1] = v33 + 16;
  v8 = (v33 + 8);
  while (1)
  {
    v11 = dispatch thunk of Collection.subscript.read();
    v13 = *(v12 + 8);
    v14 = *v12;
    v11(&v35, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v15 = [v14 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a2;
    v18 = v35;
    *a2 = 0x8000000000000000;
    v20 = sub_100095B4C(v6);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v35;
        if (v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1000C2EC0();
        v27 = v35;
        if (v24)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1000BF358(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_100095B4C(v6);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

      v20 = v25;
      v27 = v35;
      if (v24)
      {
LABEL_4:
        v9 = v27[7] + 16 * v20;
        v10 = *v9;
        *v9 = v16;
        *(v9 + 8) = v13;

        goto LABEL_5;
      }
    }

    v27[(v20 >> 6) + 8] |= 1 << v20;
    (*(v33 + 16))(v27[6] + *(v33 + 72) * v20, v6, v34);
    v28 = (v27[7] + 16 * v20);
    *v28 = v16;
    v28[1] = v13;
    v29 = v27[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_18;
    }

    v27[2] = v31;
LABEL_5:
    (*v8)(v6, v34);
    *a2 = v27;

    sub_1000033A8(&qword_1001D80E8);
    dispatch thunk of Collection.endIndex.getter();
    if (v36 == v35)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_100071970(uint64_t (*a1)(void *))
{
  v10[0] = v1;
  sub_100013608(&qword_1001D80E0, &qword_1001D80D8);

  dispatch thunk of Sequence.makeIterator()();
  sub_100013608(&qword_1001D80F0, &qword_1001D80E8);
  while (1)
  {
    sub_1000033A8(&qword_1001D80E8);
    dispatch thunk of Collection.endIndex.getter();
    if (v10[5] == v10[0])
    {

      return 0;
    }

    v4 = dispatch thunk of Collection.subscript.read();
    v6 = *(v5 + 8);
    v7 = *v5;
    v4(v10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v10[0] = v7;
    v10[1] = v6;
    v8 = a1(v10);
    if (v2)
    {

      return v7;
    }

    if (v8)
    {
      break;
    }
  }

  return v7;
}

uint64_t sub_100071B7C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = type metadata accessor for CVBundle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v20 = v7;
    v21 = a3;
    v12 = *(v7 + 16);
    v11 = v7 + 16;
    v22 = v12;
    v13 = (v11 - 8);
    v14 = a2 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    while (1)
    {
      v22(v9, v14, v6);
      v16 = v23(v9);
      if (v3)
      {
        return (*v13)(v9, v6);
      }

      if (v16)
      {
        break;
      }

      (*v13)(v9, v6);
      v14 += v15;
      if (!--v10)
      {
        v17 = 1;
        v7 = v20;
        a3 = v21;
        return (*(v7 + 56))(a3, v17, 1, v6);
      }
    }

    v7 = v20;
    a3 = v21;
    (*(v20 + 32))(v21, v9, v6);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v7 + 56))(a3, v17, 1, v6);
}

uint64_t sub_100071EB8()
{
  v1 = v0[42];
  v0[43] = OBJC_IVAR____TtC6Tamale14ARCameraSource_signposter;
  static LoggingSignposter.arCameraSourceHighQualityFrame.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  if (!*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice))
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "captureHighResolutionFrame failed: capture device not configured";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }

LABEL_13:

    sub_100006AAC(v0 + 28, v0[31]);
    dispatch thunk of LoggingSignposter.Interval.end()();
    sub_100006B44((v0 + 28));
    v19 = v0[1];

    return v19(0);
  }

  v2 = *(v0[42] + OBJC_IVAR____TtC6Tamale14ARCameraSource_photoOutput);
  v0[44] = v2;
  if (!v2)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "captureHighResolutionFrame failed: Missing photo output";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v3 = v2;
  v4 = AVCapturePhotoOutput.availablePhotoPixelFormatTypes.getter();
  v5 = *(v4 + 16);
  v6 = 32;
  do
  {
    if (!v5)
    {

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v7 = *(v4 + v6);
    v6 += 4;
    --v5;
  }

  while (v7 != 875704422);
  v8 = v0[42];

  sub_1000033A8(&unk_1001D6B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100171DA0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 48) = 875704422;
  sub_100097328(inited);
  swift_setDeallocating();
  sub_10001370C(inited + 32, &qword_1001D8230);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [objc_opt_self() photoSettingsWithFormat:isa];
  v0[45] = v12;

  v13 = v8 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
  swift_beginAccess();
  if (*(v13 + *(type metadata accessor for CameraControllerConfiguration(0) + 40)) == 1)
  {
    v14 = [v3 maxPhotoQualityPrioritization];
  }

  else
  {
    v14 = 1;
  }

  v21 = v0[42];
  [v12 setPhotoQualityPrioritization:v14];
  [v12 setMaxPhotoDimensions:{objc_msgSend(v3, "maxPhotoDimensions")}];
  v22 = *(v21 + OBJC_IVAR____TtC6Tamale14ARCameraSource_shutterSoundTask);
  v23 = swift_task_alloc();
  v0[46] = v23;
  *v23 = v0;
  v23[1] = sub_10007233C;

  return Task<>.value.getter(v0 + 49, v22, &type metadata for UInt32);
}

uint64_t sub_10007233C()
{

  return _swift_task_switch(sub_100072438, 0, 0);
}

uint64_t sub_100072438()
{
  v1 = *(v0 + 360);
  [v1 setShutterSound:*(v0 + 392)];
  static LoggingSignposter.arCameraSourceCaptureHighResFrame.getter();
  default argument 1 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
  v2 = sub_100072B00();
  *(v0 + 376) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 328;
  *(v0 + 24) = sub_1000725E0;
  v3 = swift_continuation_init();
  *(v0 + 216) = sub_1000033A8(&qword_1001D8238);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_100072948;
  *(v0 + 184) = &unk_1001C2AF0;
  *(v0 + 192) = v3;
  [v2 captureHighResolutionFrameUsingPhotoSettings:v1 completion:v0 + 160];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1000725E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = sub_1000727E4;
  }

  else
  {
    v2 = sub_1000726F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000726F0()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);

  sub_100072A20(*(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 8), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 16), *(v4 + OBJC_IVAR____TtC6Tamale14ARCameraSource_safeArea + 24));
  sub_100006AAC((v0 + 264), *(v0 + 288));
  dispatch thunk of LoggingSignposter.Interval.end()();

  sub_100006B44(v0 + 264);
  sub_100006AAC((v0 + 224), *(v0 + 248));
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44(v0 + 224);
  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_1000727E4()
{
  v1 = v0[47];
  v2 = v0[45];
  swift_willThrow();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "captureHighResolutionFrame failed", v5, 2u);
  }

  v7 = v0[44];
  v6 = v0[45];

  sub_100006AAC(v0 + 33, v0[36]);
  dispatch thunk of LoggingSignposter.Interval.end()();

  sub_100006B44((v0 + 33));
  sub_100006AAC(v0 + 28, v0[31]);
  dispatch thunk of LoggingSignposter.Interval.end()();
  sub_100006B44((v0 + 28));
  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100072948(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100006AAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000033A8(&qword_1001D57D0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100072A20(double a1, double a2, double a3, double a4)
{
  v9 = sub_10008B310();
  if (!v9)
  {
    type metadata accessor for ARFrameAttachment();
    v10 = swift_allocObject();
    *(v10 + 16) = 2;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 1;
    swift_beginAccess();

    objc_setAssociatedObject(v4, &unk_1001D7420, v10, 1);
    swift_endAccess();

    v9 = v10;
  }

  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 56) = 0;
}

id sub_100072B00()
{
  v1 = OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource____lazy_storage___session);
  }

  else
  {
    sub_100093B64();
    v4 = [objc_allocWithZone(ARSession) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100072B78()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_10005BBC4(0, &qword_1001D6B40);
  static DispatchQoS.unspecified.getter();
  v8 = &_swiftEmptyArrayStorage;
  sub_100090580(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000033A8(&unk_1001D6B50);
  sub_100013608(&unk_1001D8050, &unk_1001D6B50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1001D7418 = result;
  return result;
}

uint64_t sub_100072DEC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100072EE4, 0, 0);
}

id sub_100072EE4()
{
  *(v0 + 56) = 0;
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    regionalBehaviorShutterClick = MobileGestalt_get_regionalBehaviorShutterClick();

    if (regionalBehaviorShutterClick)
    {
      v1 = 1117;
      goto LABEL_9;
    }

    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 URLForResource:v6 withExtension:v7];

    if (v8)
    {
      v10 = *(v0 + 40);
      v9 = *(v0 + 48);
      v11 = *(v0 + 24);
      v12 = *(v0 + 32);
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v12 + 32))(v9, v10, v11);
      URL._bridgeToObjectiveC()(v13);
      v15 = v14;
      SystemSoundID = AudioServicesCreateSystemSoundID(v14, (v0 + 56));

      if (SystemSoundID != noErr.getter())
      {
        _StringGuts.grow(_:)(41);

        *(v0 + 60) = SystemSoundID;
        v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v18);

        return _assertionFailure(_:_:file:line:flags:)();
      }

      (*(*(v0 + 32) + 8))(*(v0 + 48), *(v0 + 24));
      v1 = *(v0 + 56);
      goto LABEL_9;
    }
  }

  v1 = 0;
LABEL_9:
  **(v0 + 16) = v1;

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000731B8()
{
  v1 = sub_1000033A8(&qword_1001D6B70);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState;
  v6 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8);
  v7 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16);
  v17 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_runState);
  v18 = v6;
  v19 = v7;
  sub_100060424(v17, v6, v7);
  sub_1000033A8(&qword_1001D6B78);
  AsyncStream.Continuation.yield(_:)();
  result = (*(v2 + 8))(v4, v1);
  v9 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting);
  if (v9)
  {
    v10 = *v5;
    v11 = *(v5 + 8);
    v12 = *(v9 + 24);
    v13 = *(v9 + 32);
    v14 = *(v5 + 16);
    *(v9 + 24) = *v5;
    *(v9 + 32) = v11;
    v15 = *(v9 + 40);
    *(v9 + 40) = v14;

    sub_100060424(v10, v11, v14);
    sub_1000616E4(v12, v13, v15);
  }

  if (*(v5 + 16) > 1u)
  {
    if (*(v5 + 16) == 2)
    {
      return result;
    }

    if (*v5 == 0)
    {
      static LoggingSignposter.arCameraSourcePaused.getter();
    }

    else if (*v5 ^ 1 | *(v5 + 8))
    {
      static LoggingSignposter.arCameraSourcePauseRequested.getter();
    }

    else
    {
      static LoggingSignposter.arCameraSourcePausing.getter();
    }
  }

  else if (*(v5 + 16))
  {
    static LoggingSignposter.arCameraSourceRunning.getter();
  }

  else
  {
    static LoggingSignposter.arCameraSourceStopped.getter();
  }

  default argument 1 of LoggingSignposter.emitEvent(_:shouldLog:)();
  return LoggingSignposter.emitEvent(_:shouldLog:)();
}

uint64_t sub_1000733F4(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_1001D31A0 != -1)
  {
    v8 = ObjectType;
    swift_once();
    ObjectType = v8;
  }

  __chkstk_darwin(ObjectType);
  sub_1000033A8(&qword_1001D8028);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v9 == 2 || (v9 & 1) == 0)
  {
    return 0;
  }

  v3 = [a1 currentFrame];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [v3 geoTrackingStatus];

  result = 1;
  if (v5)
  {
    v7 = [v5 state];

    if (v7 == 3)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100073560()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100093B5C;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C2AC8;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

void sub_100073850()
{
  v0 = type metadata accessor for CameraControllerConfiguration(0);
  __chkstk_darwin(v0);
  v2 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v57 - v7;
  v8 = sub_1000033A8(&qword_1001D8020);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v57 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - v16;
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v59 = v11;
    v60 = v14;
    v22 = Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
    swift_beginAccess();
    sub_1000138BC(v22 + *(v0 + 68), v19, &qword_1001D8020);
    v58 = v4;
    v23 = *(v4 + 48);
    v64 = v3;
    v68 = v23;
    v24 = v23(v19, 1, v3);
    sub_10001370C(v19, &qword_1001D8020);
    LODWORD(v57) = v24;
    LODWORD(v63) = v24 != 1;
    v66 = v4 + 48;
    v67 = v0;
    v61 = v2;
    if (v24 == 1)
    {
      v31 = *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
      *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay] = 0;

      v30 = 0;
    }

    else
    {
      v25 = sub_100072B00();
      v26 = type metadata accessor for ARCameraSourceReplay();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_arReplayConfiguration] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *&v27[OBJC_IVAR____TtC6Tamale20ARCameraSourceReplay_session] = v25;
      v69.receiver = v27;
      v69.super_class = v26;
      v28 = objc_msgSendSuper2(&v69, "init");
      v29 = *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
      *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay] = v28;

      if (*(v22 + *(v0 + 24)) == 1)
      {
        type metadata accessor for LocationsHandler();
        static LocationsHandler.shared.getter();
        v30 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();
      }

      else
      {
        v30 = 1;
      }

      v2 = v61;
    }

    v33 = v67;
    v32 = v68;
    sub_1000138BC(v22 + *(v67 + 84), v17, &qword_1001D8020);
    v34 = v64;
    if (v32(v17, 1, v64) == 1)
    {
      sub_10001370C(v17, &qword_1001D8020);
      *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording] = 0;

      if (v30)
      {
        v35 = 1;
        v36 = v67;
        v34 = v64;
      }

      else
      {
        v35 = 0;
        v36 = v67;
        v42 = *(v22 + *(v67 + 80));
        if (v57 == 1)
        {
          v43 = *(v22 + *(v67 + 80));
        }

        else
        {
          v43 = 1;
        }

        LODWORD(v63) = v43;
        v34 = v64;
        if (v57 == 1 && v42)
        {
          sub_10009237C(v22, v2, type metadata accessor for CameraControllerConfiguration);
          sub_1000740E0(v2);
          sub_100092314(v2, type metadata accessor for CameraControllerConfiguration);
          LODWORD(v63) = 0;
          v35 = 0;
        }
      }
    }

    else
    {
      v37 = v58;
      v63 = *(v58 + 32);
      v38 = v65;
      v63(v65, v17, v34);
      v57 = *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue];
      v39 = sub_100072B00();
      v40 = v62;
      (*(v37 + 16))(v62, v38, v34);
      type metadata accessor for ARCameraSourceRecording(0);
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_frameQueue) = v57;
      *(v41 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_session) = v39;
      v63((v41 + OBJC_IVAR____TtC6Tamale23ARCameraSourceRecording_fileURL), v40, v34);
      *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording] = v41;

      if (*(v22 + *(v33 + 24)) == 1)
      {
        type metadata accessor for LocationsHandler();
        static LocationsHandler.shared.getter();
        v35 = dispatch thunk of LocationsHandler.hasPositiveAuthorization.getter();

        (*(v37 + 8))(v65, v34);
        LODWORD(v63) = 1;
      }

      else
      {
        (*(v37 + 8))(v65, v34);
        LODWORD(v63) = 1;
        v35 = 1;
      }

      v2 = v61;
      v36 = v67;
    }

    LODWORD(v65) = v35;
    v44 = *(v36 + 84);
    v67 = v22;
    v45 = v60;
    sub_1000138BC(v22 + v44, v60, &qword_1001D8020);
    v46 = v68;
    v47 = v68(v45, 1, v34);
    sub_10001370C(v45, &qword_1001D8020);
    if (v47 != 1 || (v48 = v59, sub_1000138BC(v67 + *(v36 + 68), v59, &qword_1001D8020), v49 = v46(v48, 1, v34), sub_10001370C(v48, &qword_1001D8020), v49 != 1))
    {
      v50 = OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask;
      if (*&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask])
      {

        Task.cancel()();
      }

      *&v21[v50] = 0;
    }

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 67109120;
      *(v53 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v51, v52, "Calling configureARConfiguration for isRecordingOrReplay: %{BOOL}d", v53, 8u);
    }

    v54 = v67;
    sub_10009237C(v67, v2, type metadata accessor for CameraControllerConfiguration);
    sub_100075A80(v2, v65 & 1);
    sub_100092314(v2, type metadata accessor for CameraControllerConfiguration);
    v55 = *&v21[OBJC_IVAR____TtC6Tamale14ARCameraSource_trackManagerSupporting];
    if (v55)
    {
      sub_10009237C(v54, v2, type metadata accessor for CameraControllerConfiguration);

      v56 = OBJC_IVAR____TtCC6Tamale14ARCameraSource7Tracker_configuration;
      swift_beginAccess();
      sub_100092DE0(v2, v55 + v56, type metadata accessor for CameraControllerConfiguration);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_1000740E0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for CameraControllerConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009237C(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CameraControllerConfiguration);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  sub_1000923E4(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CameraControllerConfiguration);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v14 = sub_1000154EC(0, 0, v9, &unk_100177290, v13);
  v15 = OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask;
  if (*(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask))
  {

    Task.cancel()();
  }

  *(v1 + v15) = v14;
}

uint64_t sub_100074344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v9 = *(type metadata accessor for CameraControllerConfiguration(0) - 8);
  v6[27] = v9;
  v6[28] = *(v9 + 64);
  v6[29] = swift_task_alloc();
  v10 = sub_1000033A8(&qword_1001D8218);
  v6[30] = v10;
  v6[31] = *(v10 - 8);
  v6[32] = swift_task_alloc();
  v11 = sub_1000033A8(&unk_1001D8220);
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();

  return _swift_task_switch(sub_100074594, 0, 0);
}

uint64_t sub_100074594()
{
  v0[36] = type metadata accessor for LocationsHandler();
  v0[37] = type metadata accessor for MainActor();
  v0[38] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100074638, v2, v1);
}

uint64_t sub_100074638()
{

  *(v0 + 312) = static LocationsHandler.shared.getter();

  return _swift_task_switch(sub_1000746AC, 0, 0);
}

uint64_t sub_1000746AC()
{
  *(v0 + 320) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100074738, v2, v1);
}

uint64_t sub_100074738()
{

  dispatch thunk of LocationsHandler.authorizationStateUpdates.getter();

  return _swift_task_switch(sub_1000747B4, 0, 0);
}

uint64_t sub_1000747B4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1000748A8;
  v5 = v0[33];

  return AsyncStream.Iterator.next(isolation:)(v0 + 42, 0, 0, v5);
}

uint64_t sub_1000748A8()
{

  return _swift_task_switch(sub_1000749A4, 0, 0);
}

uint64_t sub_1000749A4()
{
  if ((*(v0 + 340) & 1) != 0 || (v1 = *(v0 + 336), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    goto LABEL_6;
  }

  v3 = Strong;
  if (static Task<>.isCancelled.getter())
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_6:

    v4 = *(v0 + 8);

    return v4();
  }

  type metadata accessor for CLAuthorizationStatus(0);
  if (v1 < 3)
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 232);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v31 = *(v0 + 200);
    v32 = *(v0 + 192);
    v10 = *(v0 + 160);
    v28 = *(v0 + 184);
    v29 = *(v0 + 168);
    v11 = *(v0 + 152);
    v30 = *(v0 + 176);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009237C(v11, v7, type metadata accessor for CameraControllerConfiguration);
    v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_1000923E4(v7, v14 + v13, type metadata accessor for CameraControllerConfiguration);
    *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
    *(v0 + 48) = sub_10009354C;
    *(v0 + 56) = v14;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1000B5F04;
    *(v0 + 40) = &unk_1001C2910;
    v15 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 136) = &_swiftEmptyArrayStorage;
    sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000033A8(&unk_1001D8010);
    sub_100013608(&qword_1001D6B20, &unk_1001D8010);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v30 + 8))(v28, v29);
    (*(v31 + 8))(v9, v32);

LABEL_13:
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_1000748A8;
    v27 = *(v0 + 264);

    return AsyncStream.Iterator.next(isolation:)(v0 + 336, 0, 0, v27);
  }

  if (v1 - 3 <= 1)
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = objc_opt_self();
    sub_10009237C(v19, v16, type metadata accessor for CameraControllerConfiguration);
    v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    sub_1000923E4(v16, v23 + v22, type metadata accessor for CameraControllerConfiguration);
    *(v23 + ((v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
    *(v0 + 96) = sub_1000937DC;
    *(v0 + 104) = v23;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_10007574C;
    *(v0 + 88) = &unk_1001C2960;
    v24 = _Block_copy((v0 + 64));
    v25 = v3;

    [v21 checkAvailabilityWithCompletionHandler:v24];

    _Block_release(v24);
    goto LABEL_13;
  }

  *(v0 + 344) = v1;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_100074F30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v26 = a5;
  v24 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = type metadata accessor for DispatchQoS();
  v10 = *(v28 - 8);
  __chkstk_darwin(v28);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for CameraControllerConfiguration(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v27 = *(a3 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009237C(a4, &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for CameraControllerConfiguration);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  *(v19 + 24) = v16;
  sub_1000923E4(&v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v19 + v17, type metadata accessor for CameraControllerConfiguration);
  v20 = v26;
  *(v19 + v18) = v25;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_100093A9C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C29B0;
  v21 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v29 + 8))(v9, v7);
  (*(v10 + 8))(v12, v28);
}

void sub_100075338(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1 & 1;
  if (qword_1001D31A0 != -1)
  {
    swift_once();
  }

  v10 = qword_1001D7418;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100093B4C;
  *(v12 + 24) = v11;
  aBlock[4] = sub_100094180;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100071D78;
  aBlock[3] = &unk_1001C2A28;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (!*&Strong[OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask])
    {

      return;
    }

    if (a1)
    {

      sub_100075A80(a3, 1);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Changing configuration from World to Geo.", v18, 2u);
      }

      v19 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v20 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
      v21 = v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16];
      if (v21 == 1 || v21 == 3 && v19 == 2 && !v20)
      {
        sub_100060424(v19, v20, v21);
        v22 = sub_100072B00();
        v23 = *&v15[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
        if (v23)
        {
          v24 = v22;
          [v22 runWithConfiguration:v23 options:0];

          return;
        }

        goto LABEL_26;
      }
    }

    else
    {

      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33 = v28;
        *v27 = 136315138;
        if (a4)
        {
          swift_getErrorValue();
          v29 = Error.localizedDescription.getter();
          v31 = v30;
        }

        else
        {
          v29 = 0;
          v31 = 0xE000000000000000;
        }

        v32 = sub_1000E0FE0(v29, v31, &v33);

        *(v27 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "%s : Please try again in an area where geo tracking is supported.", v27, 0xCu);
        sub_100006B44(v28);
      }
    }
  }
}

void sub_10007574C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1000757C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001D31A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1001D7418;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100094188;
  *(v7 + 24) = v6;
  v14[4] = sub_100094180;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100071D78;
  v14[3] = &unk_1001C2AA0;
  v8 = _Block_copy(v14);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      if (*(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_locationMonitoringTask) && *(Strong + OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration) && (objc_opt_self(), swift_dynamicCastObjCClass()))
      {

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "Changing configuration back to World tracking (location permission withdrawn)", v13, 2u);
        }

        sub_100075A80(a2, 0);
        if (v10[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 16] == 2)
        {
          sub_100079EC0();
        }
      }

      else
      {
      }
    }
  }
}

void sub_100075A80(uint64_t a1, char a2)
{
  v5 = sub_1000033A8(&qword_1001D8020);
  v6 = __chkstk_darwin(v5 - 8);
  v87 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v88 = &v86 - v9;
  __chkstk_darwin(v8);
  v11 = &v86 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v91 = v12;
  v92 = v13;
  __chkstk_darwin(v12);
  v89 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v93 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    v21 = sub_100072B00();
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 1024;
    *(v19 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "Configuring AR session '%@' with geo available '%{BOOL}d'.", v19, 0x12u);
    sub_10001370C(v20, &unk_1001D8030);

    a1 = v93;
  }

  v22 = ARWorldTrackingConfiguration_ptr;
  if (a2)
  {
    v22 = ARGeoTrackingConfiguration_ptr;
  }

  v23 = [objc_allocWithZone(*v22) init];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = type metadata accessor for CameraControllerConfiguration(0);
    v27 = *(a1 + *(v26 + 20));
    v28 = objc_opt_self();
    v29 = v23;
    v30 = v28;
    a1 = v93;
    [v30 setBackdropCameraOverride:v27];
    [v25 setVisualLocalizationUpdatesRequested:*(a1 + *(v26 + 72))];
    [v25 setUseLidarIfAvailable:0];
    [v25 setShouldUseUltraWideIfAvailable:0];
    [v25 setPlaneDetection:3];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Configured as GeoTracking.";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);
    }
  }

  else
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {
      goto LABEL_13;
    }

    v36 = v35;
    v37 = *(a1 + *(type metadata accessor for CameraControllerConfiguration(0) + 20));
    v38 = objc_opt_self();
    v39 = v23;
    [v38 setBackdropCameraOverride:v37];
    [v36 setUseLidarIfAvailable:0];
    [v36 setShouldUseUltraWideIfAvailable:0];
    [v36 setDisableFrontCamera:1];
    [v36 setPlaneDetection:3];
    [v36 setRelocalizationEnabled:0];
    v40 = String._bridgeToObjectiveC()();
    [v36 setSlamConfiguration:v40];

    [v36 setDisableLocationSensor:1];
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "Configured as WorldTracking.";
      goto LABEL_11;
    }
  }

LABEL_13:
  v90 = v15;
  v41 = type metadata accessor for CameraControllerConfiguration(0);
  if (!*(a1 + v41[11]))
  {
    goto LABEL_24;
  }

  if (*(a1 + v41[11]) == 1)
  {
    sub_10005BBC4(0, &qword_1001D8210);
    v42 = [swift_getObjCClassFromMetadata() recommendedVideoFormatForHighResolutionFrameCapturing];
    if (!v42)
    {
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Could not retrieve the appropriate video format for high resolution. Proceeding with auto.";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

        goto LABEL_23;
      }

      goto LABEL_23;
    }

LABEL_19:
    v43 = v42;
    [v23 setVideoFormat:v42];
    goto LABEL_23;
  }

  sub_10005BBC4(0, &qword_1001D8210);
  v42 = [swift_getObjCClassFromMetadata() recommendedVideoFormatFor4KResolution];
  if (v42)
  {
    goto LABEL_19;
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Could not retrieve the appropriate video format for 4K. Proceeding with auto.";
    goto LABEL_22;
  }

LABEL_23:

LABEL_24:
  v47 = *(a1 + v41[16]);
  v48 = [v23 videoFormat];
  sub_1000033A8(&qword_1001D5248);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100176B00;
  sub_10005BBC4(0, &qword_1001D81C0);
  if (v47)
  {
    v50 = 60;
  }

  else
  {
    v50 = 30;
  }

  if (v47)
  {
    v51 = 30;
  }

  else
  {
    v51 = 20;
  }

  *(v49 + 32) = NSNumber.init(integerLiteral:)(v50);
  *(v49 + 40) = NSNumber.init(integerLiteral:)(v51);
  *(v49 + 48) = NSNumber.init(integerLiteral:)(10);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v48 setFrameRatesByPowerUsage:isa];

  [v23 setDisableRenderSyncScheduling:1];
  [v23 setDropInitialFramesOutsideExposureTarget:0];
  [v23 setVideoHDRAllowed:*(a1 + v41[7])];
  sub_1000138BC(a1 + v41[17], v11, &qword_1001D8020);
  v54 = v91;
  v53 = v92;
  v55 = *(v92 + 48);
  if (v55(v11, 1, v91) != 1)
  {
    v68 = v89;
    (*(v53 + 32))(v89, v11, v54);
    v65 = v90;
    v69 = *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceReplay];
    v70 = v53;
    if (v69)
    {
      v71 = v69;
      v72 = sub_10008E610(v23, v68);
    }

    else
    {
      v72 = 0;
    }

    v73 = v93;
    v74 = OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration;
    v75 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
    *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v72;

    if (!*&v65[v74])
    {
      v76 = &v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v77 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState];
      v78 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_runState + 8];
      *v76 = 0xD00000000000001BLL;
      *(v76 + 1) = 0x800000010016D330;
      v79 = v76[16];
      v76[16] = 2;
      sub_1000616E4(v77, v78, v79);
      sub_1000731B8();
    }

    (*(v70 + 8))(v68, v54);
    goto LABEL_44;
  }

  sub_10001370C(v11, &qword_1001D8020);
  v56 = v41[21];
  v57 = a1 + v56;
  v58 = v88;
  sub_1000138BC(v57, v88, &qword_1001D8020);
  v59 = v54;
  v60 = v55(v58, 1, v54);
  sub_10001370C(v58, &qword_1001D8020);
  if (v60 == 1)
  {
    goto LABEL_34;
  }

  v61 = [objc_opt_self() defaultManager];
  v62 = v87;
  sub_1000138BC(v93 + v56, v87, &qword_1001D8020);
  if (v55(v62, 1, v59) == 1)
  {
    __break(1u);
  }

  else
  {
    URL.path(percentEncoded:)(1);
    (*(v92 + 8))(v62, v59);
    v63 = String._bridgeToObjectiveC()();

    v64 = [v61 fileExistsAtPath:v63];

    if (v64)
    {
LABEL_34:
      v65 = v90;
      v66 = *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
      *&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v23;
      v67 = v23;

LABEL_43:
      v73 = v93;
LABEL_44:
      v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureLevelOverride] = *(v73 + v41[15]);
      v82 = [v23 videoFormat];
      v83 = [v82 framesPerSecond];

      type metadata accessor for CameraMotionMonitor();
      swift_allocObject();
      sub_10009D2D0(v83);
      v85 = v84;

      *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_motionMonitor] = v85;

      return;
    }

    v65 = v90;
    if (*&v90[OBJC_IVAR____TtC6Tamale14ARCameraSource_arCameraSourceRecording])
    {

      v80 = sub_10008D8EC(v23);

      v81 = *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration];
      *&v65[OBJC_IVAR____TtC6Tamale14ARCameraSource_arConfiguration] = v80;

      goto LABEL_43;
    }
  }

  __break(1u);
}

uint64_t sub_10007655C(unint64_t a1)
{
  v126 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DispatchQoS();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100072B00();
  v6 = sub_100091230(a1, v5);

  v7 = *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice);
  v128 = v1;
  *(v1 + OBJC_IVAR____TtC6Tamale14ARCameraSource_captureDevice) = v6;
  v8 = v6;

  if (!v6)
  {
    goto LABEL_129;
  }

  v9 = [a1 outputs];
  sub_10005BBC4(0, &qword_1001D81E0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = &_swiftEmptyArrayStorage;
  v127 = v10;
  if (v10 >> 62)
  {
    goto LABEL_110;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v12 = &_swiftEmptyArrayStorage;
  v137 = v8;
  v130 = a1;
  if (v11)
  {
    v13 = 0;
    v133 = v127 & 0xFFFFFFFFFFFFFF8;
    v134 = v127 & 0xC000000000000001;
    v131 = v127 + 32;
    v132 = AVMediaTypeVideo;
    v129 = v11;
    while (1)
    {
      while (1)
      {
        if (v134)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v133 + 16))
          {
            goto LABEL_107;
          }

          v14 = *(v131 + 8 * v13);
        }

        v15 = v14;
        if (__OFADD__(v13++, 1))
        {
          goto LABEL_106;
        }

        v17 = [v14 connectionWithMediaType:v132];
        if (v17)
        {
          break;
        }

        if (v13 == v11)
        {
          goto LABEL_37;
        }
      }

      v135 = v15;
      v136 = v13;
      v18 = v17;
      v19 = [v17 inputPorts];

      sub_10005BBC4(0, &qword_1001D81E8);
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v20 >> 62))
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          break;
        }

        goto LABEL_35;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
      if (v21)
      {
        break;
      }

LABEL_35:

LABEL_36:
      a1 = v130;
      v11 = v129;
      v13 = v136;
      if (v136 == v129)
      {
LABEL_37:
        v12 = aBlock;
        goto LABEL_38;
      }
    }

    a1 = 0;
    v138 = v20 & 0xFFFFFFFFFFFFFF8;
    v139 = v20 & 0xC000000000000001;
    while (1)
    {
      if (v139)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v138 + 16))
        {
          goto LABEL_105;
        }

        v22 = *(v20 + 8 * a1 + 32);
      }

      v23 = v22;
      v24 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        v11 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v25 = [v22 sourceDeviceType];
      v26 = [v8 deviceType];
      v27 = v26;
      if (!v25)
      {
        break;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
      if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
      {

        v8 = v137;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v8 = v137;
        if ((v33 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v34 = [v23 sourceDevicePosition];
      v35 = [v8 position];

      if (v34 == v35)
      {

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_36;
      }

LABEL_17:
      ++a1;
      if (v24 == v21)
      {
        goto LABEL_35;
      }
    }

LABEL_16:
    goto LABEL_17;
  }

LABEL_38:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (v36)
    {
LABEL_41:
      v37 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= v12[2])
          {
            goto LABEL_109;
          }

          v38 = v12[v37 + 4];
        }

        v39 = v38;
        v8 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          goto LABEL_108;
        }

        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          [v40 setMaxPhotoQualityPrioritization:3];
          v139 = *(v128 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v43 = swift_allocObject();
          *(v43 + 16) = v42;
          *(v43 + 24) = v41;
          v146 = sub_100092E8C;
          v147 = v43;
          aBlock = _NSConcreteStackBlock;
          v143 = 1107296256;
          v144 = sub_1000B5F04;
          v145 = &unk_1001C27A8;
          v44 = _Block_copy(&aBlock);

          v45 = v39;
          v46 = v121;
          static DispatchQoS.unspecified.getter();
          v141 = &_swiftEmptyArrayStorage;
          sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000033A8(&unk_1001D8010);
          sub_100013608(&qword_1001D6B20, &unk_1001D8010);
          v47 = v123;
          v48 = v126;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v44);

          v49 = v47;
          a1 = v130;
          (*(v125 + 8))(v49, v48);
          (*(v122 + 8))(v46, v124);

          break;
        }

        ++v37;
      }

      while (v8 != v36);
    }
  }

  else
  {
    v36 = v12[2];
    if (v36)
    {
      goto LABEL_41;
    }
  }

  v50 = v137;
  sub_10007822C(a1, v137);
  v51 = [v50 deviceType];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  if (v52 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v54 != v55)
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v56)
    {

      goto LABEL_56;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
    if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
    {
      goto LABEL_59;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v62 & 1) == 0)
    {
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;
      if (v63 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v65 == v66)
      {
LABEL_59:

LABEL_65:
        v68 = [v137 virtualDeviceSwitchOverVideoZoomFactors];
        sub_10005BBC4(0, &qword_1001D81C0);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
        if (v69 >> 62)
        {
          goto LABEL_125;
        }

        if (!*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        goto LABEL_67;
      }

      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        goto LABEL_129;
      }
    }

    goto LABEL_65;
  }

LABEL_56:
  v57 = 1.0;
  while (1)
  {
    v74 = v128;
    *(v128 + OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor) = v57;
    v75 = OBJC_IVAR____TtC6Tamale14ARCameraSource_minimumZoomFactor;
    v76 = OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor;
    *(v74 + OBJC_IVAR____TtC6Tamale14ARCameraSource_targetZoomFactor) = v57;
    v77 = v74 + OBJC_IVAR____TtC6Tamale14ARCameraSource_configuration;
    swift_beginAccess();
    v78 = *(v77 + *(type metadata accessor for CameraControllerConfiguration(0) + 44)) - 1;
    v79 = [v137 deviceType];
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
    v85 = v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83;
    if (v78 <= 1)
    {
      if (v85)
      {

LABEL_83:
        v68 = [v137 virtualDeviceSwitchOverVideoZoomFactors];
        sub_10005BBC4(0, &qword_1001D81C0);
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v87;
        if (v87 >> 62)
        {
          v88 = _CocoaArrayWrapper.endIndex.getter();
          if (v88)
          {
LABEL_85:

            v89 = v88 - 1;
            if (__OFSUB__(v88, 1))
            {
              goto LABEL_117;
            }

            if ((v70 & 0xC000000000000001) != 0)
            {
              goto LABEL_119;
            }

            v90 = v137;
            if ((v89 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_122:
              __break(1u);
            }

            else if (v89 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v91 = *(v70 + 8 * v89 + 32);
LABEL_90:

              [v91 doubleValue];
              v93 = v92;

              v94 = v93 * 3.0;
              goto LABEL_103;
            }

            __break(1u);
            goto LABEL_124;
          }
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v88)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
        goto LABEL_115;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v86)
      {
        goto LABEL_83;
      }

      v102 = *(v128 + v75);
      v103 = 6.0;
LABEL_102:
      v94 = v102 * v103;
      v90 = v137;
      goto LABEL_103;
    }

    if (v85)
    {
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v95 & 1) == 0)
      {

        v102 = *(v128 + v75);
        v103 = 3.0;
        goto LABEL_102;
      }
    }

    v68 = [v137 virtualDeviceSwitchOverVideoZoomFactors];
    sub_10005BBC4(0, &qword_1001D81C0);
    v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v96;
    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v97)
      {
        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_115:
    v97 = _CocoaArrayWrapper.endIndex.getter();
    if (!v97)
    {
LABEL_116:

      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v90 = v137;
      goto LABEL_90;
    }

LABEL_94:

    v98 = v97 - 1;
    if (__OFSUB__(v97, 1))
    {
      goto LABEL_118;
    }

    if ((v70 & 0xC000000000000001) != 0)
    {
      break;
    }

    v90 = v137;
    if ((v98 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (v98 < *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v99 = *(v70 + 8 * v98 + 32);
      goto LABEL_99;
    }

LABEL_124:
    __break(1u);
LABEL_125:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_126:

      __break(1u);
      goto LABEL_127;
    }

LABEL_67:

    if ((v70 & 0xC000000000000001) == 0)
    {
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v71 = *(v70 + 32);
        goto LABEL_70;
      }

      __break(1u);
      while (1)
      {
LABEL_129:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_127:
    v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_70:
    v72 = v71;

    [v72 doubleValue];
    v57 = v73;
  }

  v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v90 = v137;
LABEL_99:

  [v99 doubleValue];
  v101 = v100;

  v94 = v101;
LABEL_103:
  v104 = v128;
  *(v128 + OBJC_IVAR____TtC6Tamale14ARCameraSource_maximumZoomFactor) = v94;
  [v90 setMaxAvailableVideoZoomFactorOverride:?];
  sub_10007C870(0, *(v104 + v76));
  sub_10007BD28(a1, v90);
  aBlock = v90;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v106 = *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureObservation);
  *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_systemPressureObservation) = v105;

  [a1 setAutomaticallyRunsDeferredStart:0];
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v109 + 24) = v108;
  v110 = [v90 activeFormat];
  v111 = [v110 formatDescription];

  Dimensions = CMVideoFormatDescriptionGetDimensions(v111);
  v139 = *(v104 + OBJC_IVAR____TtC6Tamale14ARCameraSource_frameQueue);
  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = swift_allocObject();
  v114[2] = v113;
  v114[3] = Dimensions;
  v114[4] = sub_100092F78;
  v114[5] = v109;
  v146 = sub_100092FC0;
  v147 = v114;
  aBlock = _NSConcreteStackBlock;
  v143 = 1107296256;
  v144 = sub_1000B5F04;
  v145 = &unk_1001C2848;
  v115 = _Block_copy(&aBlock);

  v116 = v121;
  static DispatchQoS.unspecified.getter();
  v140 = &_swiftEmptyArrayStorage;
  sub_100090580(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v117 = v90;
  v118 = v123;
  v119 = v126;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v115);

  (*(v125 + 8))(v118, v119);
  (*(v122 + 8))(v116, v124);
}