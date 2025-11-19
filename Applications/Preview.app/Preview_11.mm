uint64_t sub_10013FAA4(void **a1, void **a2, id *a3, void **a4)
{
  v120 = type metadata accessor for Date();
  v8 = *(v120 - 8);
  __chkstk_darwin(v120);
  v103 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v100 - v11;
  __chkstk_darwin(v12);
  v102 = &v100 - v13;
  __chkstk_darwin(v14);
  v106 = (&v100 - v15);
  __chkstk_darwin(v16);
  v110 = &v100 - v17;
  v18 = sub_1000FF5D8(&qword_10020E418);
  __chkstk_darwin(v18 - 8);
  v105 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v109 = &v100 - v21;
  __chkstk_darwin(v22);
  v108 = (&v100 - v23);
  __chkstk_darwin(v24);
  v114 = (&v100 - v25);
  v26 = a2 - a1;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2;
  v30 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v30 = a3 - a2;
  }

  v31 = v30 >> 3;
  if (v28 < v30 >> 3)
  {
    v32 = a2;
    v33 = a4;
    if (a4 != a1 || &a1[v28] <= a4)
    {
      memmove(a4, a1, 8 * v28);
    }

    v34 = &a4[v28];
    if (v26 >= 8 && v32 < a3)
    {
      v35 = v32;
      v119 = a3;
      v111 = type metadata accessor for MainActor();
      v107 = (v8 + 32);
      v109 = (v8 + 56);
      v105 = (v8 + 8);
      v36 = v110;
      while (1)
      {
        v118 = v35;
        v37 = *v33;
        v38 = *v35;
        v117 = v37;
        v39 = static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v40 = [v38 modificationDate];
        if (!v40)
        {
          break;
        }

        v115 = v39;
        v116 = v38;
        v112 = v33;
        v113 = a1;
        v41 = v40;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = v109;
        v43 = *v107;
        v44 = v114;
        v45 = v120;
        (*v107)(v114, v36, v120);
        v46 = *v42;
        (*v42)(v44, 0, 1, v45);
        sub_100110174(v44, &qword_10020E418);
        v47 = v117;
        v48 = [v117 modificationDate];
        if (v48)
        {
          v49 = v34;
          v50 = v36;
          v51 = v45;
          v52 = v48;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v53 = v108;
          v43(v108, v50, v51);
          v46(v53, 0, 1, v51);
          sub_100110174(v53, &qword_10020E418);
          result = [v116 modificationDate];
          if (!result)
          {
            goto LABEL_62;
          }

          v55 = result;
          v56 = v106;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v57 = v117;
          result = [v117 modificationDate];
          a1 = v113;
          if (!result)
          {
            goto LABEL_63;
          }

          v58 = result;
          v34 = v49;
          v59 = v102;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v58) = static Date.> infix(_:_:)();
          v60 = *v105;
          v61 = v120;
          (*v105)(v59, v120);
          v60(v56, v61);

          v33 = v112;
          v36 = v110;
          if ((v58 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v65 = v108;
          v46(v108, 1, 1, v45);
          sub_100110174(v65, &qword_10020E418);

          v33 = v112;
          a1 = v113;
        }

        v63 = v118;
        v35 = v118 + 1;
        if (a1 != v118)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++a1;
        if (v33 >= v34 || v35 >= v119)
        {
          goto LABEL_54;
        }
      }

      v62 = v114;
      (*v109)(v114, 1, 1, v120);
      sub_100110174(v62, &qword_10020E418);

LABEL_21:
      v63 = v33;
      v64 = a1 == v33++;
      v35 = v118;
      if (v64)
      {
        goto LABEL_23;
      }

LABEL_22:
      *a1 = *v63;
      goto LABEL_23;
    }

LABEL_54:
    v66 = a1;
LABEL_56:
    if (v66 != v33 || v66 >= (v33 + ((v34 - v33 + (v34 - v33 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v66, v33, 8 * (v34 - v33));
    }

    return 1;
  }

  v66 = a2;
  if (a4 != a2 || &a2[v31] <= a4)
  {
    memmove(a4, a2, 8 * v31);
  }

  v34 = &a4[v31];
  v33 = a4;
  if (v29 < 8 || v66 <= a1)
  {
    goto LABEL_56;
  }

  v67 = type metadata accessor for MainActor();
  v106 = (v8 + 56);
  v107 = v67;
  v101 = (v8 + 8);
  v102 = (v8 + 32);
  v68 = &qword_10020E418;
  v112 = v33;
  v113 = a1;
LABEL_35:
  v69 = v66 - 1;
  v70 = a3 - 1;
  v71 = v34;
  v118 = v66;
  v108 = v66 - 1;
  while (1)
  {
    v72 = v68;
    v119 = v70;
    v73 = *(v71 - 1);
    v114 = v71 - 1;
    v74 = *v69;
    v117 = v73;
    v116 = v74;
    v115 = static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v75 = v117;
    v76 = [v117 modificationDate];
    if (!v76)
    {
      v96 = v109;
      (*v106)(v109, 1, 1, v120);
      sub_100110174(v96, v68);

      goto LABEL_46;
    }

    v111 = v34;
    v77 = v110;
    v78 = v76;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = *v102;
    v80 = v109;
    v81 = v120;
    (*v102)(v109, v77, v120);
    v82 = *v106;
    (*v106)(v80, 0, 1, v81);
    sub_100110174(v80, v72);
    v83 = [v116 modificationDate];
    if (!v83)
    {
      v98 = v105;
      v82(v105, 1, 1, v81);
      sub_100110174(v98, v72);

      v33 = v112;
      v95 = v113;
      v66 = v118;
      v34 = v111;
      v68 = v72;
LABEL_49:
      a3 = v119;
      v99 = v108;
      if (v119 + 1 != v66)
      {
        *v119 = *v108;
      }

      if (v34 <= v33 || (v66 = v99, v99 <= v95))
      {
        v66 = v99;
        goto LABEL_56;
      }

      goto LABEL_35;
    }

    v84 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = v105;
    v79(v105, v77, v81);
    v82(v85, 0, 1, v81);
    sub_100110174(v85, v72);
    v86 = v117;
    result = [v117 modificationDate];
    if (!result)
    {
      break;
    }

    v87 = result;
    v68 = v72;
    v88 = v104;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v89 = v116;
    result = [v116 modificationDate];
    if (!result)
    {
      goto LABEL_61;
    }

    v90 = result;
    v91 = v103;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v90) = static Date.> infix(_:_:)();
    v92 = *v101;
    v93 = v91;
    v94 = v120;
    (*v101)(v93, v120);
    v92(v88, v94);

    v33 = v112;
    v95 = v113;
    v66 = v118;
    v34 = v111;
    if (v90)
    {
      goto LABEL_49;
    }

LABEL_46:
    v97 = v119;
    v69 = v108;
    v71 = v114;
    if (v119 + 1 != v34)
    {
      *v119 = *v114;
    }

    v70 = v97 - 1;
    v34 = v71;
    if (v71 <= v33)
    {
      v34 = v71;
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_100140514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001405A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1001405B4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10018D468(v3, 0);
  sub_100140648((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100140648(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014326C();
          for (i = 0; i != v6; ++i)
          {
            sub_1000FF5D8(&qword_10020E548);
            v9 = sub_1001407C8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100142068();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1001407C8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100140848;
  }

  __break(1u);
  return result;
}

uint64_t sub_100140864(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 != 3)
  {
    if (v4 == v5)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v5 != 3)
  {
    return 0;
  }

LABEL_7:
  if (a1[2] != a2[2])
  {
    return 0;
  }

  v8 = *(type metadata accessor for DocumentOpeningOptions() + 28);

  return static UUID.== infix(_:_:)(&a1[v8], &a2[v8]);
}

uint64_t sub_1001408F8()
{
  v1 = *v0;
  v2 = sub_10012C330();
  v3 = sub_100143418(v1, &off_1001F76D0) & 1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  swift_beginAccess();
  if (v3 == *(v2 + v4))
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100140AA0()
{
  v1 = *v0;
  v2 = sub_10015A4E4();
  v3 = sub_100143418(v1, &off_1001F8908) & 1;
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  swift_beginAccess();
  if (v3 == *(v2 + v4))
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100140C48(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 144))();
  v5 = (*(a2 + 424))(a1, a2) & 1;
  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  swift_beginAccess();
  if (v5 == *(v4 + v6))
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_100140DC8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100140E0C()
{
  result = qword_10020E380;
  if (!qword_10020E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E380);
  }

  return result;
}

unint64_t sub_100140E60()
{
  result = qword_10020E388;
  if (!qword_10020E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E388);
  }

  return result;
}

unint64_t sub_100140EB4()
{
  result = qword_10020E390;
  if (!qword_10020E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E390);
  }

  return result;
}

unint64_t sub_100140F08()
{
  result = qword_10020E398;
  if (!qword_10020E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E398);
  }

  return result;
}

uint64_t type metadata accessor for DocumentOpeningOptions()
{
  result = qword_10020E4A0;
  if (!qword_10020E4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100140FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100141010()
{
  v1 = (type metadata accessor for DocumentOpeningOptions() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0 + v1[9];
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v3 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_100141100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100141168(uint64_t a1)
{
  v4 = *(type metadata accessor for DocumentOpeningOptions() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100110344;

  return sub_10013913C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_10014126C()
{
  result = qword_10020E3D0;
  if (!qword_10020E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E3D0);
  }

  return result;
}

unint64_t sub_1001412C0()
{
  result = qword_10020E3D8;
  if (!qword_10020E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E3D8);
  }

  return result;
}

unint64_t sub_100141314()
{
  result = qword_10020E3E0;
  if (!qword_10020E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E3E0);
  }

  return result;
}

unint64_t sub_100141368()
{
  result = qword_10020E400;
  if (!qword_10020E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E400);
  }

  return result;
}

unint64_t sub_1001413BC()
{
  result = qword_10020E408;
  if (!qword_10020E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E408);
  }

  return result;
}

uint64_t sub_100141410(uint64_t a1)
{
  v2 = type metadata accessor for DocumentOpeningOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014146C()
{
  v0 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  type metadata accessor for PreviewTelemetryLogger();
  v3 = sub_10012C330();
  swift_getKeyPath();
  v13 = v3;
  v10[1] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3 + v4, v5);

  (*(v6 + 56))(v2, 0, 1, v5);
  sub_100143FA0(v2, &v12);
  LOBYTE(v11) = 15;
  sub_100144C1C(&v11, &v12);
  sub_100110174(v2, &qword_10020D2F8);
  v7 = sub_10012C330();
  LOWORD(v11) = 257;
  sub_100115858(&v11);
  if (*(v7 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v7;
    LOBYTE(v10[-1]) = 2;
    v11 = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100141788()
{
  v0 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v0 - 8);
  v2 = v10 - v1;
  type metadata accessor for PreviewTelemetryLogger();
  v3 = sub_10015A4E4();
  swift_getKeyPath();
  v13 = v3;
  v10[1] = sub_1001432D0(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3 + v4, v5);

  (*(v6 + 56))(v2, 0, 1, v5);
  sub_100143FA0(v2, &v12);
  LOBYTE(v11) = 15;
  sub_100144C1C(&v11, &v12);
  sub_100110174(v2, &qword_10020D2F8);
  v7 = sub_10015A4E4();
  LOWORD(v11) = 257;
  sub_100115858(&v11);
  if (*(v7 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v7;
    LOBYTE(v10[-1]) = 2;
    v11 = v7;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100141AA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6873 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C416E6564646968 && a2 == 0xEC00000073796177 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001B6CA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100141BC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614D656C62616E65 && a2 == 0xEC00000070756B72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001001B6CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001001B1AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001001B6CE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100141D38()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100141D78(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10010E934;

  return sub_10013B0AC(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_100141E90()
{

  v5 = sub_1001405B4(v0);
  sub_10013E494(&v5);
  v1 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
LABEL_7:
    v3 = v2;

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100141F58()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100141FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100141FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100142068()
{
  result = qword_10020E428;
  if (!qword_10020E428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020E428);
  }

  return result;
}

unint64_t sub_1001420B8()
{
  result = qword_10020E430;
  if (!qword_10020E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E430);
  }

  return result;
}

unint64_t sub_100142110()
{
  result = qword_10020E438;
  if (!qword_10020E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E438);
  }

  return result;
}

uint64_t sub_1001421AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100138A24();
  *a1 = result;
  return result;
}

uint64_t sub_1001421D8(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    *(a2 + 1) = *(*result + *(**result + 104));
  }

  else
  {
    *(a2 + 1) = 3;
  }

  return result;
}

__n128 sub_100142248(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100142254@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_100136294(*(a1 + a2 - 8), v6);
  v5 = v6[1];
  *a3 = v6[0];
  a3[1] = v5;
  return result;
}

uint64_t sub_1001422A4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  return sub_10013636C(v8, v5, v4);
}

uint64_t sub_100142338@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = sub_100132600(*(a1 + a2 - 8), &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_100142380(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v4 = *(a3 + a4 - 8);
  v7 = *a1;
  return sub_1001326E8(&v7, v5, v4);
}

uint64_t sub_100142588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a4 = result & 1;
  return result;
}

uint64_t sub_100142638(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1001426F8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100142798()
{
  sub_100142834();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100142834()
{
  if (!qword_10020E4B0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020E4B0);
    }
  }
}

uint64_t sub_100142884(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100110344;

  return v7(a1, a2);
}

unint64_t sub_100142E30()
{
  result = qword_10020E4E8;
  if (!qword_10020E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E4E8);
  }

  return result;
}

unint64_t sub_100142E88()
{
  result = qword_10020E4F0;
  if (!qword_10020E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E4F0);
  }

  return result;
}

unint64_t sub_100142EE0()
{
  result = qword_10020E4F8;
  if (!qword_10020E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E4F8);
  }

  return result;
}

unint64_t sub_100142F38()
{
  result = qword_10020E500;
  if (!qword_10020E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E500);
  }

  return result;
}

unint64_t sub_100142F90()
{
  result = qword_10020E508;
  if (!qword_10020E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E508);
  }

  return result;
}

unint64_t sub_100142FE8()
{
  result = qword_10020E510;
  if (!qword_10020E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E510);
  }

  return result;
}

unint64_t sub_100143040()
{
  result = qword_10020E518;
  if (!qword_10020E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E518);
  }

  return result;
}

unint64_t sub_100143098()
{
  result = qword_10020E520;
  if (!qword_10020E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E520);
  }

  return result;
}

unint64_t sub_1001430F0()
{
  result = qword_10020E528;
  if (!qword_10020E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E528);
  }

  return result;
}

unint64_t sub_100143148()
{
  result = qword_10020E530;
  if (!qword_10020E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E530);
  }

  return result;
}

unint64_t sub_1001431A0()
{
  result = qword_10020E538;
  if (!qword_10020E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E538);
  }

  return result;
}

unint64_t sub_1001431F8()
{
  result = qword_10020E540;
  if (!qword_10020E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E540);
  }

  return result;
}

unint64_t sub_10014326C()
{
  result = qword_10020E550;
  if (!qword_10020E550)
  {
    sub_10010EC80(&qword_10020E548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E550);
  }

  return result;
}

uint64_t sub_1001432D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014342C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 22;
  switch(result)
  {
    case 0:
      goto LABEL_36;
    case 1:
      v2 = 1;
      goto LABEL_36;
    case 2:
      v2 = 2;
      goto LABEL_36;
    case 3:
      v2 = 3;
      goto LABEL_36;
    case 4:
      v2 = 4;
      goto LABEL_36;
    case 5:
      v2 = 5;
      goto LABEL_36;
    case 6:
      v2 = 6;
      goto LABEL_36;
    case 10:
      v2 = 7;
      goto LABEL_36;
    case 11:
      v2 = 8;
      goto LABEL_36;
    case 12:
      v2 = 9;
      goto LABEL_36;
    case 20:
      v2 = 10;
      goto LABEL_36;
    case 21:
      v2 = 11;
      goto LABEL_36;
    case 22:
      v2 = 12;
      goto LABEL_36;
    case 23:
      v2 = 13;
      goto LABEL_36;
    case 24:
      v2 = 14;
      goto LABEL_36;
    case 25:
      v2 = 15;
      goto LABEL_36;
    case 26:
      v2 = 16;
      goto LABEL_36;
    case 27:
      v2 = 17;
      goto LABEL_36;
    case 28:
      v2 = 18;
      goto LABEL_36;
    case 29:
      v2 = 19;
      goto LABEL_36;
    case 30:
      v2 = 20;
      goto LABEL_36;
    case 40:
      v2 = 21;
LABEL_36:
      v3 = v2;
      goto LABEL_37;
    case 41:
LABEL_37:
      *a2 = v3;
      break;
    case 42:
      *a2 = 23;
      break;
    case 43:
      *a2 = 24;
      break;
    case 44:
      *a2 = 25;
      break;
    case 45:
      *a2 = 26;
      break;
    case 46:
      *a2 = 27;
      break;
    case 47:
      *a2 = 28;
      break;
    case 49:
      *a2 = 29;
      break;
    case 50:
      *a2 = 30;
      break;
    case 52:
      *a2 = 31;
      break;
    case 53:
      *a2 = 32;
      break;
    case 54:
      *a2 = 33;
      break;
    case 55:
      *a2 = 34;
      break;
    case 60:
      *a2 = 35;
      break;
    case 61:
      *a2 = 36;
      break;
    case 62:
      *a2 = 37;
      break;
    case 70:
      *a2 = 38;
      break;
    case 71:
      *a2 = 39;
      break;
    default:
      *a2 = 40;
      break;
  }

  return result;
}

Swift::Int sub_10014374C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001A72B8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001437D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001A72B8[v1]);
  return Hasher._finalize()();
}

unint64_t sub_100143850@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 16;
  if (result < 0x10)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100143888@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1001438AC()
{
  result = qword_10020E568;
  if (!qword_10020E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E568);
  }

  return result;
}

unint64_t sub_100143934()
{
  result = qword_10020E580;
  if (!qword_10020E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E580);
  }

  return result;
}

unint64_t sub_1001439BC()
{
  result = qword_10020E598;
  if (!qword_10020E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E598);
  }

  return result;
}

uint64_t sub_100143A54(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10010EC80(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTelemetryAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD9)
  {
    goto LABEL_17;
  }

  if (a2 + 39 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 39) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 39;
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

      return (*a1 | (v4 << 8)) - 39;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 39;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v8 = v6 - 40;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewTelemetryAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD9)
  {
    v4 = 0;
  }

  if (a2 > 0xD8)
  {
    v5 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
    *result = a2 + 39;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewTelemetrySubtype(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewTelemetrySubtype(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100143D70(char *a1, uint64_t a2)
{
  v2 = *a1;
  sub_100143FA0(a2, &v3);
  v4 = v2;
  sub_100144C1C(&v4, &v3);
}

unint64_t sub_100143DB8()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000FF5D8(&qword_10020E648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019B3A0;
  *(inited + 32) = 0x6E6F69746341;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x65707974627553;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  v1 = sub_10010F808(inited);
  swift_setDeallocating();
  sub_1000FF5D8(&qword_10020E650);
  swift_arrayDestroy();

  return v1;
}

Class sub_100143F14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100144ED0();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100143FA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for UTTagClass();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v73 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FF5D8(&qword_10020D2F8);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = &v69 - v10;
  v11 = __chkstk_darwin(v9);
  v79 = &v69 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v69 - v14;
  __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v72 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v76 = &v69 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v69 - v25;
  v27 = __chkstk_darwin(v24);
  v80 = &v69 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v69 - v30;
  __chkstk_darwin(v29);
  v33 = &v69 - v32;
  sub_100101A3C(a1, v17);
  v34 = v19[6];
  if (v34(v17, 1, v18) != 1)
  {
    v70 = v34;
    v71 = a2;
    v69 = v19[4];
    (v69)(v33, v17, v18);
    static UTType.pdf.getter();
    v37 = UTType.conforms(to:)();
    v38 = v19[1];
    v38(v31, v18);
    if (v37)
    {
      result = (v38)(v33, v18);
      v36 = 2;
LABEL_19:
      a2 = v71;
      goto LABEL_20;
    }

    static UTType.jpeg.getter();
    v39 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v39)
    {
      result = (v38)(v33, v18);
      v36 = 3;
      goto LABEL_19;
    }

    static UTType.png.getter();
    v40 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v40)
    {
      result = (v38)(v33, v18);
      v36 = 4;
      goto LABEL_19;
    }

    static UTType.tiff.getter();
    v41 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v41)
    {
      result = (v38)(v33, v18);
      v36 = 5;
      goto LABEL_19;
    }

    static UTType.heic.getter();
    v42 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v42)
    {
      result = (v38)(v33, v18);
      v36 = 6;
      goto LABEL_19;
    }

    static UTType.bmp.getter();
    v43 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v43)
    {
      result = (v38)(v33, v18);
      v36 = 8;
      goto LABEL_19;
    }

    static UTType.ico.getter();
    v44 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v44)
    {
      result = (v38)(v33, v18);
      v36 = 9;
      goto LABEL_19;
    }

    static UTType.icns.getter();
    v45 = UTType.conforms(to:)();
    v38(v31, v18);
    if (v45)
    {
      result = (v38)(v33, v18);
      v36 = 12;
      goto LABEL_19;
    }

    UTType.init(_:)();
    v46 = v70;
    if (v70(v15, 1, v18) == 1)
    {
      sub_100101080(v15);
      goto LABEL_30;
    }

    v47 = v80;
    v69();
    if ((UTType.conforms(to:)() & 1) == 0)
    {
      v38(v47, v18);
      v46 = v70;
LABEL_30:
      v56 = v79;
      UTType.init(_:)();
      if (v46(v56, 1, v18) == 1)
      {
        sub_100101080(v56);
      }

      else
      {
        (v69)(v26, v56, v18);
        v57 = UTType.conforms(to:)();
        v38(v26, v18);
        if (v57)
        {
          result = (v38)(v33, v18);
          v36 = 7;
          goto LABEL_19;
        }
      }

      v58 = v78;
      UTType.init(_:)();
      if (v70(v58, 1, v18) == 1)
      {
        sub_100101080(v58);
      }

      else
      {
        v59 = v76;
        (v69)(v76, v58, v18);
        v60 = UTType.conforms(to:)();
        v38(v59, v18);
        if (v60)
        {
          result = (v38)(v33, v18);
          v36 = 10;
          goto LABEL_19;
        }
      }

      v61 = v77;
      UTType.init(_:)();
      if (v70(v61, 1, v18) == 1)
      {
        v38(v33, v18);
        result = sub_100101080(v61);
        a2 = v71;
      }

      else
      {
        v62 = v72;
        (v69)(v72, v61, v18);
        v63 = UTType.conforms(to:)();
        v38(v62, v18);
        result = (v38)(v33, v18);
        a2 = v71;
        if (v63)
        {
          v36 = 11;
          goto LABEL_20;
        }
      }

      v36 = 1;
      goto LABEL_20;
    }

    v48 = UTType.tags.getter();
    v49 = v73;
    static UTTagClass.mimeType.getter();
    if (*(v48 + 16) && (v50 = sub_10010CC50(v49), (v51 & 1) != 0))
    {
      v52 = *(*(v48 + 56) + 8 * v50);
      v53 = *(v74 + 8);

      v53(v49, v75);

      if (v52[2])
      {
        v55 = v52[4];
        v54 = v52[5];

        v83 = v55;
        v84 = v54;
        v81 = 7893098;
        v82 = 0xE300000000000000;
        sub_100101B00();
        if (StringProtocol.contains<A>(_:)())
        {

LABEL_45:
          v38(v80, v18);
          result = (v38)(v33, v18);
          v36 = 14;
          goto LABEL_19;
        }

        v83 = v55;
        v84 = v54;
        v81 = 6713450;
        v82 = 0xE300000000000000;
        v68 = StringProtocol.contains<A>(_:)();

        if (v68)
        {
          v38(v80, v18);
          result = (v38)(v33, v18);
          v36 = 15;
          goto LABEL_19;
        }
      }

      else
      {
      }
    }

    else
    {

      (*(v74 + 8))(v49, v75);
    }

    v83 = UTType.identifier.getter();
    v84 = v64;
    v81 = 7893098;
    v82 = 0xE300000000000000;
    sub_100101B00();
    v65 = StringProtocol.contains<A>(_:)();

    if ((v65 & 1) == 0)
    {
      v83 = UTType.identifier.getter();
      v84 = v66;
      v81 = 6713450;
      v82 = 0xE300000000000000;
      v67 = StringProtocol.contains<A>(_:)();

      v38(v80, v18);
      result = (v38)(v33, v18);
      if (v67)
      {
        v36 = 15;
      }

      else
      {
        v36 = 13;
      }

      goto LABEL_19;
    }

    goto LABEL_45;
  }

  result = sub_100101080(v17);
  v36 = 0;
LABEL_20:
  *a2 = v36;
  return result;
}

unint64_t sub_100144A6C()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000FF5D8(&qword_10020E648);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019D780;
  *(inited + 32) = 0x657461657263;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  *(inited + 56) = 0x7079745F656C6966;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 1852141679;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 1851876211;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v1 = sub_10010F808(inited);
  swift_setDeallocating();
  sub_1000FF5D8(&qword_10020E650);
  swift_arrayDestroy();

  return v1;
}

void sub_100144C1C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 17) = v2;
  v19 = sub_100144E88;
  v20 = v5;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100143F14;
  v18 = &unk_1001F8138;
  v6 = _Block_copy(&v15);

  AnalyticsSendEventLazy();
  _Block_release(v6);

  v7 = sub_1001314D8(&off_1001F6190);
  v8 = 0x80uLL >> v3;
  v9 = 0x300uLL >> v3;
  v10 = sub_10012FA50(v3, v7);

  if ((0x300uLL >> v3) & 1) != 0 || v10 || (v8)
  {
    v11 = byte_1001A7400[v2];
    v12 = String._bridgeToObjectiveC()();
    v13 = swift_allocObject();
    v13[16] = v9 & 1;
    v13[17] = v11;
    v13[18] = v10;
    v13[19] = v8 & 1;
    v19 = sub_100144EBC;
    v20 = v13;
    v15 = _NSConcreteStackBlock;
    v16 = 1107296256;
    v17 = sub_100143F14;
    v18 = &unk_1001F8188;
    v14 = _Block_copy(&v15);

    AnalyticsSendEventLazy();
    _Block_release(v14);
  }
}

uint64_t sub_100144E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100144ED0()
{
  result = qword_10020E658;
  if (!qword_10020E658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020E658);
  }

  return result;
}

unint64_t sub_100144F24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  result = 0xD000000000000015;
  v7 = a1 == 0xD000000000000015 && 0x80000001001B2090 == a2;
  if (v7 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    result = 0xD000000000000016;
    if (a1 == 0xD000000000000016 && 0x80000001001B6E70 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v8 = 1;
    }

    else
    {
      result = 0xD000000000000014;
      if (a1 == 0xD000000000000014 && 0x80000001001B6E90 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v8 = 2;
      }

      else if (a1 == 0xD000000000000013 && 0x80000001001B6EB0 == a2 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v8 = 3;
      }

      else
      {
        v9 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v9 = a1 & 0xFFFFFFFFFFFFLL;
        }

        v8 = 4;
        if (v9)
        {
          v10._countAndFlagsBits = 0x6C7070612E6D6F63;
          v10._object = 0xEA00000000002E65;
          result = String.hasPrefix(_:)(v10);
          if (result)
          {
            v8 = 4;
          }

          else
          {
            v8 = 5;
          }
        }
      }
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001451B4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100101B54(v3, a2);
  sub_100101048(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100145250()
{
  v0 = type metadata accessor for Logger();
  sub_100101B54(v0, qword_10020E6C0);
  sub_100101048(v0, qword_10020E6C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001452F4()
{
  v0 = type metadata accessor for Logger();
  sub_100101B54(v0, qword_10020E6D8);
  sub_100101048(v0, qword_10020E6D8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100145398@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100101048(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100145430()
{
  v0 = type metadata accessor for OS_os_log.Category();
  __chkstk_darwin(v0 - 8);
  sub_100145544();
  static OS_os_log.Category.pointsOfInterest.getter();
  result = OS_os_log.init(subsystem:category:)();
  qword_10020E6F0 = result;
  return result;
}

id sub_1001454D8()
{
  if (qword_10020D088 != -1)
  {
    swift_once();
  }

  v1 = qword_10020E6F0;

  return v1;
}

unint64_t sub_100145544()
{
  result = qword_10020E6F8;
  if (!qword_10020E6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020E6F8);
  }

  return result;
}

uint64_t sub_100145690@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1001150A0(a1, v5);
  result = swift_dynamicCast();
  if (result)
  {
    return sub_100170894(v4, a2);
  }

  *a2 = 5;
  return result;
}

void sub_100145700(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736C65786970;
  v5 = 0xE600000000000000;
  v6 = 0x736568636E69;
  v7 = 0x74656D69746E6563;
  if (v2 != 3)
  {
    v7 = 0x74656D696C6C696DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xEB00000000737265;
  }

  if (*v1)
  {
    v4 = 0x746E6563726570;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  a1[3] = &type metadata for String;
  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1001457B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1001150A0(a1, v7);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = _findStringSwitchCase(cases:string:)(&off_1001F60A8, v6);

    if (v4 == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
  return result;
}

void sub_100145854(unint64_t *a1@<X8>)
{
  v2 = *v1 == 0;
  v3 = 0xD000000000000013;
  if (*v1)
  {
    v3 = 0x6550736C65786970;
  }

  v4 = 0x80000001001B5EA0;
  a1[3] = &type metadata for String;
  if (!v2)
  {
    v4 = 0xED000068636E4972;
  }

  *a1 = v3;
  a1[1] = v4;
}

void sub_1001458B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E928);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100146D44();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  aBlock[4] = sub_1001474F0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147754;
  aBlock[3] = &unk_1001F8348;
  v14 = _Block_copy(aBlock);

  [v8 hasLastModifiedDocumentForFileAtURL:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_100145B14(void *a1, uint64_t a2)
{
  ModifiedDocumentMetadata = type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata(0);
  v5 = *(ModifiedDocumentMetadata - 8);
  __chkstk_darwin(ModifiedDocumentMetadata);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF5D8(&qword_10020E930);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v15 - v10;
  if (a2)
  {
    v15[1] = a2;
    swift_errorRetain();
    sub_1000FF5D8(&qword_10020E928);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v13 = a1;
    v14 = [v13 modifiedDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100147670(v7, v11, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
    (*(v5 + 56))(v11, 0, 1, ModifiedDocumentMetadata);
    sub_1000FF5D8(&qword_10020E928);
    CheckedContinuation.resume(returning:)();

    return sub_1001476D8(v7, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, ModifiedDocumentMetadata, v9);
    sub_1000FF5D8(&qword_10020E928);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100145D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E938);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100146D44();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  aBlock[4] = sub_1001475B0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147754;
  aBlock[3] = &unk_1001F8398;
  v14 = _Block_copy(aBlock);

  [v8 hasOriginalDocumentForFileAtURL:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_100145FA0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF5D8(&qword_10020E940);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v21 - v10;
  if (a2)
  {
    v21[1] = a2;
    swift_errorRetain();
    sub_1000FF5D8(&qword_10020E938);
    return CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v13 = a1;
    v14 = [v13 receivedDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = [v13 sender];
    v16 = [v15 preferredFormattedName];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = &v7[*(v4 + 20)];
    *v20 = v17;
    v20[1] = v19;
    sub_100147670(v7, v11, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
    (*(v5 + 56))(v11, 0, 1, v4);
    sub_1000FF5D8(&qword_10020E938);
    CheckedContinuation.resume(returning:)();

    return sub_1001476D8(v7, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4, v9);
    sub_1000FF5D8(&qword_10020E938);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10014622C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1001462B8(uint64_t a1, void *a2, void *a3)
{
  sub_100140DC8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1000FF5D8(&qword_10020E918);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1000FF5D8(&qword_10020E918);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100146368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100146D44();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  aBlock[4] = sub_100147758;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001465CC;
  aBlock[3] = &unk_1001F82D0;
  v14 = _Block_copy(aBlock);

  [v8 openLastModifiedDocumentForFileAtURL:v11 completion:v14];
  _Block_release(v14);
}

void sub_1001465CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100146644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020E908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100146D44();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a2 + 16);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v7, v4);
  aBlock[4] = sub_100146DB0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001465CC;
  aBlock[3] = &unk_1001F8280;
  v14 = _Block_copy(aBlock);

  [v8 openOriginalDocumentForFileAtURL:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1001468A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000FF5D8(&qword_10020E908);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1000FF5D8(&qword_10020E908);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100146920()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100146990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100146A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100146AA0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100146B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100146BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100146CD0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100146D44()
{
  result = qword_10020E910;
  if (!qword_10020E910)
  {
    type metadata accessor for IOActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020E910);
  }

  return result;
}

uint64_t sub_100146DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100146DCC(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1000FF5D8(&qword_10020E918);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100146D44();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v4;
  v1[24] = v3;

  return _swift_task_switch(sub_100146EF4, v4, v3);
}

uint64_t sub_100146EF4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v9 = objc_opt_self();
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[25] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001470CC;
  swift_continuation_init();
  v0[17] = v3;
  v7 = sub_10010F9E8(v0 + 14);
  sub_100147478();
  sub_1000FF5D8(&qword_10020D610);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(v7, v2, v3);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001462B8;
  v0[13] = &unk_1001F82F8;
  [v9 formFillingDocumentAttributesForFileAtURL:v6 completion:?];
  (*(v1 + 8))(v7, v3);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001470CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_100147294;
  }

  else
  {
    v5 = sub_1001471FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001471FC()
{
  v1 = *(v0 + 144);

  v2 = [v1 formFillingCoachingDisabled];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100147294()
{
  v1 = *(v0 + 200);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

void sub_100147314()
{
  v0 = [objc_allocWithZone(SYFormFillingDocumentAttributes) initWithFormFillingCoachingDisabled:1];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 saveToFileURL:v2 error:&v7];

  if (v4)
  {
    v5 = v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

unint64_t sub_100147478()
{
  result = qword_10020E920;
  if (!qword_10020E920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020E920);
  }

  return result;
}

uint64_t sub_10014752C(uint64_t *a1)
{
  v2 = sub_1000FF5D8(a1);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1001475D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_1000FF5D8(a3) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_100147670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001476D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014775C()
{
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_10014783C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000FF5D8(&qword_10020E950);
  __chkstk_darwin(v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for BannerViewModel.Configuration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v27 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  __chkstk_darwin(v17);
  v19 = &v26 - v18;
  swift_getKeyPath();
  v29 = v1;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata) != 1)
  {
    v22 = 1;
    return (*(v12 + 56))(a1, v22, 1, v11);
  }

  v26 = a1;
  sub_10014AA14(v10);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) != 1)
  {
    sub_1001515B0(v10, v19, type metadata accessor for BannerViewModel.Configuration);
    v23 = v19;
LABEL_10:
    a1 = v26;
    sub_1001515B0(v23, v26, type metadata accessor for BannerViewModel.Configuration);
    v22 = 0;
    return (*(v12 + 56))(a1, v22, 1, v11);
  }

  sub_100110174(v10, &qword_10020E950);
  sub_10014BA84(v7);
  if (v20(v7, 1, v11) != 1)
  {
    sub_1001515B0(v7, v16, type metadata accessor for BannerViewModel.Configuration);
    v23 = v16;
    goto LABEL_10;
  }

  sub_100110174(v7, &qword_10020E950);
  v21 = v28;
  sub_10014C03C(v28);
  if (v20(v21, 1, v11) != 1)
  {
    v24 = v27;
    sub_1001515B0(v21, v27, type metadata accessor for BannerViewModel.Configuration);
    v23 = v24;
    goto LABEL_10;
  }

  sub_100110174(v21, &qword_10020E950);
  v22 = 1;
  a1 = v26;
  return (*(v12 + 56))(a1, v22, 1, v11);
}

uint64_t sub_100147C00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100147CB0()
{
  v1 = *(v0 + *(type metadata accessor for BannerViewModel.Configuration(0) + 24));

  return v1;
}

uint64_t sub_100147CF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BannerViewModel.Configuration(0) + 28);
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100147D6C()
{
  v1 = *(v0 + *(type metadata accessor for BannerViewModel.Configuration(0) + 32));

  return v1;
}

uint64_t sub_100147DAC()
{
  v1 = *(v0 + *(type metadata accessor for BannerViewModel.Configuration(0) + 36));

  return v1;
}

uint64_t sub_100147DEC()
{
  v1 = *(v0 + *(type metadata accessor for BannerViewModel.Configuration(0) + 40));

  return v1;
}

uint64_t sub_100147E2C()
{
  v1 = *(v0 + *(type metadata accessor for BannerViewModel.Configuration(0) + 44));

  return v1;
}

uint64_t sub_100147E6C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v4 = type metadata accessor for URL();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100147F64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10014805C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100148128(v5);
}

uint64_t sub_100148128(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100150E38(&qword_10020DAB8, &type metadata accessor for URL);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1001483A8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void (*sub_100148444(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10014858C;
}

uint64_t sub_100148598()
{
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100148668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
  swift_beginAccess();
  *(v4 + 8) = a3;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1001486D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

void (*sub_100148780(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
  v4[8] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v4[3] = Strong;
  v4[4] = v8;
  return sub_1001488E0;
}

void sub_1001488E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 64) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_1001489A8()
{
  swift_getKeyPath();
  v3 = v0;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_100148A64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100148B50(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_100148C7C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100148DC4;
}

uint64_t sub_100148DD0(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100148ED4(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100149010()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100113B68;

  return sub_1001490BC();
}

uint64_t sub_1001490BC()
{
  v1[18] = v0;
  v2 = type metadata accessor for URL();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = sub_1000FF5D8(&qword_10020E930);
  v1[23] = swift_task_alloc();
  v1[24] = sub_1000FF5D8(&qword_10020E940);
  v1[25] = swift_task_alloc();
  sub_1000FF5D8(&qword_10020D600);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for MainActor();
  v1[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[29] = v4;
  v1[30] = v3;

  return _swift_task_switch(sub_100149264, v4, v3);
}

uint64_t sub_100149264()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = type metadata accessor for TaskPriority();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v2;
  v7 = sub_10014D604(0, 0, v1, &unk_1001A7970, v6, &qword_10020E940);
  v0[31] = v7;
  v4(v1, 1, 1, v3);

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v2;
  v0[32] = sub_10014D604(0, 0, v1, &unk_1001A7980, v9, &qword_10020E930);
  v4(v1, 1, 1, v3);

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v2;
  v0[33] = sub_10014D8B4(0, 0, v1, &unk_1001A7990, v11);
  v12 = swift_task_alloc();
  v0[34] = v12;
  v13 = sub_1000FF5D8(&qword_10020D610);
  v0[35] = v13;
  *v12 = v0;
  v12[1] = sub_1001494FC;
  v15 = v0[24];
  v14 = v0[25];

  return Task.value.getter(v14, v7, v15, v13, &protocol self-conformance witness table for Error);
}

uint64_t sub_1001494FC()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_100149E60;
  }

  else
  {
    v5 = sub_100149638;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100149638()
{
  v1 = v0[25];
  v2 = v0[18];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[17] = v2;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100110174(v1, &qword_10020E940);
  v4 = swift_task_alloc();
  v0[37] = v4;
  *v4 = v0;
  v4[1] = sub_1001497C8;
  v5 = v0[35];
  v6 = v0[32];
  v8 = v0[22];
  v7 = v0[23];

  return Task.value.getter(v7, v6, v8, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_1001497C8()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10014A1EC;
  }

  else
  {
    v5 = sub_100149904;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100149904()
{
  v1 = v0[23];
  v2 = v0[18];
  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[15] = v2;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100110174(v1, &qword_10020E930);
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_100149A9C;
  v5 = v0[35];
  v6 = v0[33];

  return Task.value.getter(v0 + 41, v6, &type metadata for Bool, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100149A9C()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_10014A580;
  }

  else
  {
    v5 = sub_100149BD8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100149BD8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 328);
  if (v2 == *(v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner))
  {
    *(v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner) = v2;
  }

  else
  {
    v3 = *(v0 + 144);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    *(v0 + 104) = v3;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = *(v0 + 144);
  v6 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata;
  if (*(v5 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata) == 1)
  {

    *(v5 + v6) = 1;
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = 1;
    *(v0 + 88) = v5;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100149E60()
{
  v25 = v0;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136315394;
    swift_getKeyPath();
    v21 = v3;
    v0[16] = v6;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
    swift_beginAccess();
    (*(v4 + 16))(v5, v6 + v9, v7);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v4 + 8))(v5, v7);
    v13 = sub_100125658(v10, v12, &v24);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v22 = v14;
    _os_log_impl(&dword_100000000, v2, v21, "Could not fetch original document attributes for file at URL %s: %@", v8, 0x16u);
    sub_100110174(v22, &qword_10020DAB0);

    sub_10010FA4C(v23);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v0[37] = v15;
  *v15 = v0;
  v15[1] = sub_1001497C8;
  v16 = v0[35];
  v17 = v0[32];
  v19 = v0[22];
  v18 = v0[23];

  return Task.value.getter(v18, v17, v19, v16, &protocol self-conformance witness table for Error);
}

uint64_t sub_10014A1EC()
{
  v23 = v0;
  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v8 = 136315394;
    swift_getKeyPath();
    v19 = v3;
    v0[14] = v6;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
    swift_beginAccess();
    (*(v4 + 16))(v5, v6 + v9, v7);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v4 + 8))(v5, v7);
    v13 = sub_100125658(v10, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v20 = v14;
    _os_log_impl(&dword_100000000, v2, v19, "Could not fetch last modified document attributes for file at URL %s: %@", v8, 0x16u);
    sub_100110174(v20, &qword_10020DAB0);

    sub_10010FA4C(v21);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  v0[39] = v15;
  *v15 = v0;
  v15[1] = sub_100149A9C;
  v16 = v0[35];
  v17 = v0[33];

  return Task.value.getter(v0 + 41, v17, &type metadata for Bool, v16, &protocol self-conformance witness table for Error);
}

uint64_t sub_10014A580()
{
  v24 = v0;

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = v0[21];
    v22 = v3;
    v6 = v0[18];
    v7 = v0[19];
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v8 = 136315394;
    swift_getKeyPath();
    v0[12] = v6;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
    swift_beginAccess();
    (*(v4 + 16))(v5, v6 + v9, v7);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    (*(v4 + 8))(v5, v7);
    v13 = sub_100125658(v10, v12, &v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v20 = v14;
    _os_log_impl(&dword_100000000, v2, v22, "Could not fetch form filling attributes for file at URL %s: %@", v8, 0x16u);
    sub_100110174(v20, &qword_10020DAB0);

    sub_10010FA4C(v21);
  }

  else
  {
  }

  v15 = v0[18];
  v16 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata;
  if (*(v15 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata) == 1)
  {

    *(v15 + v16) = 1;
  }

  else
  {
    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
    v0[11] = v15;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10014AA14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v90 = type metadata accessor for Calendar.Component();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Calendar();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v98 = *(v100 - 1);
  __chkstk_darwin(v100);
  v94 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v92 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Date.FormatStyle();
  v97 = *(v99 - 1);
  __chkstk_darwin(v99);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v81 - v9;
  v10 = type metadata accessor for Date();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000FF5D8(&qword_10020E960);
  __chkstk_darwin(v12 - 8);
  v103 = &v81 - v13;
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v107 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v113 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = (&v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v104 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LocalizedStringResource();
  v101 = *(v19 - 8);
  v102 = v19;
  __chkstk_darwin(v19);
  v109 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v108 = &v81 - v22;
  v23 = sub_1000FF5D8(&qword_10020E930);
  __chkstk_darwin(v23 - 8);
  v25 = &v81 - v24;
  ModifiedDocumentMetadata = type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata(0);
  v27 = *(ModifiedDocumentMetadata - 8);
  __chkstk_darwin(ModifiedDocumentMetadata);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v116 = v1;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__lastModifiedDocumentMetadata;
  swift_beginAccess();
  sub_1001102D0(v2 + v30, v25, &qword_10020E930);
  if ((*(v27 + 48))(v25, 1, ModifiedDocumentMetadata) == 1)
  {
    sub_100110174(v25, &qword_10020E930);
LABEL_5:
    v31 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v31 - 8) + 56))(v114, 1, 1, v31);
  }

  sub_1001515B0(v25, v29, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
  swift_getKeyPath();
  v115 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideReturnToSenderBanner))
  {
    sub_100151DE4(v29, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
    goto LABEL_5;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v33 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  v34 = v105;
  v84 = v33;
  *v105 = v33;
  v35 = *(v113 + 104);
  v83 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v113 += 104;
  v82 = v35;
  v35(v34);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v111 + 16))(v110, v29, v112);
  v36 = v91;
  static FormatStyle<>.dateTime.getter();
  v37 = v94;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.omitted.getter();
  v38 = v92;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v98 + 8))(v37, v100);
  v39 = v93;
  Date.FormatStyle.hour(_:)();
  (*(v95 + 8))(v38, v96);
  v40 = *(v97 + 8);
  v41 = v99;
  v40(v36, v99);
  sub_100150E38(&qword_10020EB80, &type metadata accessor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v40(v39, v41);
  v42 = [objc_allocWithZone(NSNumberFormatter) init];
  v43 = String._bridgeToObjectiveC()();

  v44 = [v42 numberFromString:v43];

  if (v44)
  {
    v99 = [v44 integerValue];
  }

  else
  {
    v45 = v85;
    static Calendar.current.getter();
    v46 = v89;
    v47 = v87;
    v48 = v90;
    (*(v89 + 104))(v87, enum case for Calendar.Component.hour(_:), v90);
    v99 = Calendar.component(_:from:)();
    (*(v46 + 8))(v47, v48);
    (*(v86 + 8))(v45, v88);
  }

  v49 = [objc_allocWithZone(NSDateFormatter) init];
  [v49 setDateStyle:1];
  [v49 setTimeStyle:0];
  [v49 setDoesRelativeDateFormatting:1];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v51 = [v49 stringFromDate:isa];

  v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v54 = [objc_allocWithZone(NSDateFormatter) init];
  [v54 setDateStyle:0];
  [v54 setTimeStyle:1];
  [v54 setFormattingContext:5];
  v100 = v29;
  v55 = Date._bridgeToObjectiveC()().super.isa;
  v56 = [v54 stringFromDate:v55];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  String.LocalizationValue.init(stringLiteral:)();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v61 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v81 = v2;
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  sub_1000FF5D8(&qword_10020EB88);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10019B3A0;
  *(v62 + 56) = &type metadata for String;
  v63 = sub_100151D28();
  *(v62 + 32) = v98;
  *(v62 + 40) = v53;
  *(v62 + 96) = &type metadata for String;
  *(v62 + 104) = v63;
  *(v62 + 64) = v63;
  *(v62 + 72) = v57;
  *(v62 + 80) = v59;
  static String.localizedStringWithFormat(_:_:)();

  v64 = v103;
  LocalizedStringResource.init(stringLiteral:)();
  v66 = v101;
  v65 = v102;
  (*(v101 + 56))(v64, 0, 1, v102);
  String.LocalizationValue.init(stringLiteral:)();
  v68 = v105;
  v67 = v106;
  *v105 = v84;
  v82(v68, v83, v67);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v113 = 0x80000001001B7630;
  v107 = swift_allocObject();
  swift_weakInit();
  v106 = 0x80000001001B7370;
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = v114;
  v71 = v108;
  (*(v66 + 16))(v114, v108, v65);
  v72 = type metadata accessor for BannerViewModel.Configuration(0);
  sub_1001102D0(v64, v70 + v72[5], &qword_10020E960);
  (*(v111 + 8))(v110, v112);
  sub_100110174(v64, &qword_10020E960);
  (*(v66 + 8))(v71, v65);
  sub_100151DE4(v100, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
  v73 = (v70 + v72[6]);
  *v73 = 0xD000000000000016;
  v73[1] = 0x80000001001B7650;
  (*(v66 + 32))(v70 + v72[7], v109, v65);
  v74 = (v70 + v72[8]);
  v75 = v113;
  *v74 = 0xD000000000000018;
  v74[1] = v75;
  v76 = (v70 + v72[9]);
  v77 = v107;
  *v76 = sub_100151D7C;
  v76[1] = v77;
  v78 = (v70 + v72[10]);
  v79 = v106;
  *v78 = 0xD000000000000018;
  v78[1] = v79;
  v80 = (v70 + v72[11]);
  *v80 = sub_100151DB4;
  v80[1] = v69;
  return (*(*(v72 - 1) + 56))(v70, 0, 1, v72);
}

uint64_t sub_10014BA84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  swift_getKeyPath();
  v39 = v1;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill;
  swift_beginAccess();
  if (*(v1 + v13) == 1 && (swift_getKeyPath(), v38 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner) & 1) == 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    v16 = type metadata accessor for BundleLookupReference_PreviewFoundation();
    *v6 = v16;
    v17 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
    v32 = v8;
    v18 = v34;
    v19 = *(v33 + 104);
    v19(v6, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v34);
    static Locale.current.getter();
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    *v6 = v16;
    v19(v6, v17, v18);
    static Locale.current.getter();
    v20 = v35;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v21 = swift_allocObject();
    swift_weakInit();
    v23 = v36;
    v22 = v37;
    v24 = v32;
    (*(v36 + 16))(v37, v12, v32);
    v25 = type metadata accessor for BannerViewModel.Configuration(0);
    (*(v23 + 56))(v22 + v25[5], 1, 1, v24);
    (*(v23 + 32))(v22 + v25[7], v20, v24);
    (*(v23 + 8))(v12, v24);
    v26 = (v22 + v25[6]);
    *v26 = 0xD000000000000021;
    v26[1] = 0x80000001001B7470;
    v27 = v22 + v25[8];
    strcpy(v27, "beginAutofill");
    *(v27 + 14) = -4864;
    v28 = (v22 + v25[9]);
    *v28 = sub_100151BD4;
    v28[1] = v21;
    v29 = (v22 + v25[10]);
    *v29 = 0xD000000000000015;
    v29[1] = 0x80000001001B74A0;
    v30 = (v22 + v25[11]);
    *v30 = sub_100151BDC;
    v30[1] = v2;
    (*(*(v25 - 1) + 56))(v22, 0, 1, v25);
  }

  else
  {
    v14 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v14 - 8) + 56))(v37, 1, 1, v14);
  }
}

uint64_t sub_10014C03C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for Date();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v55 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v56 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v47[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v51 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = type metadata accessor for LocalizedStringResource();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v62 = &v47[-v12];
  __chkstk_darwin(v13);
  v63 = &v47[-v14];
  v15 = sub_1000FF5D8(&qword_10020E940);
  __chkstk_darwin(v15 - 8);
  v17 = &v47[-v16];
  v18 = type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v66 = v1;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__originalDocumentMetadata;
  swift_beginAccess();
  sub_1001102D0(v2 + v22, v17, &qword_10020E940);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100110174(v17, &qword_10020E940);
LABEL_5:
    v23 = type metadata accessor for BannerViewModel.Configuration(0);
    return (*(*(v23 - 8) + 56))(v64, 1, 1, v23);
  }

  sub_1001515B0(v17, v21, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
  swift_getKeyPath();
  v65 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideReturnToSenderBanner))
  {
    sub_100151DE4(v21, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
    goto LABEL_5;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v49 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  v25 = v53;
  *v53 = v49;
  v48 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v52 = *(v52 + 104);
  v26 = v54;
  (v52)(v25);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v27 = &v21[*(v18 + 20)];
  v50 = v21;
  v28 = *v27;
  v29 = v27[1];
  v30 = v55;
  static Date.now.getter();
  sub_100162BD4(v28, v29, v21, v30);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v57 + 8))(v30, v58);
  String.LocalizationValue.init(stringLiteral:)();
  *v25 = v49;
  (v52)(v25, v48, v26);
  static Locale.current.getter();
  v31 = v60;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v58 = 0x80000001001B7350;
  v32 = swift_allocObject();
  swift_weakInit();
  v57 = 0x80000001001B7370;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = type metadata accessor for BannerViewModel.Configuration(0);
  v35 = v34[5];
  v36 = v59;
  v37 = *(v59 + 32);
  v38 = v64;
  v39 = v61;
  v37(v64 + v35, v62, v61);
  (*(v36 + 56))(v38 + v35, 0, 1, v39);
  v37(v38, v63, v39);
  v40 = (v38 + v34[6]);
  *v40 = 0;
  v40[1] = 0;
  v37(v38 + v34[7], v31, v39);
  v41 = (v38 + v34[8]);
  v42 = v58;
  *v41 = 0xD000000000000014;
  v41[1] = v42;
  v43 = (v38 + v34[9]);
  *v43 = sub_100151978;
  v43[1] = v32;
  v44 = (v38 + v34[10]);
  v45 = v57;
  *v44 = 0xD000000000000018;
  v44[1] = v45;
  v46 = (v38 + v34[11]);
  *v46 = sub_1001519B0;
  v46[1] = v33;
  sub_100151DE4(v50, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
  return (*(*(v34 - 1) + 56))(v38, 0, 1, v34);
}

uint64_t sub_10014C87C()
{
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10014C928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
}

uint64_t sub_10014CA98@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_1001102D0(v9 + v7, a3, a2);
}

uint64_t sub_10014CB78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_1001102D0(v7 + v8, a4, a3);
}

uint64_t sub_10014CC5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1000FF5D8(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_1001102D0(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100110174(v10, a5);
}

uint64_t sub_10014CDA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_100151F34(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_10014CE48(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10014CEE8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10014CF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10014D090, v7, v6);
}

uint64_t sub_10014D090()
{
  v1 = v0[10];
  v8 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  swift_getKeyPath();
  v0[5] = v3;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[15] = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  (*(v1 + 16))(v8, v3 + v4, v2);
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1002225D8;
  type metadata accessor for IOActor();
  v0[17] = sub_100150E38(&qword_10020E910, type metadata accessor for IOActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[18] = v6;
  v0[19] = v5;

  return _swift_task_switch(sub_10014D2AC, v6, v5);
}

uint64_t sub_10014D2AC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[21] = v6;
  v7 = sub_1000FF5D8(&qword_10020E940);
  *v6 = v0;
  v6[1] = sub_10014D3C4;
  v8 = v0[7];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v1, v2, 0xD000000000000023, 0x80000001001B7760, sub_10015228C, v5, v7);
}

uint64_t sub_10014D3C4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10014D56C;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10014D4E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10014D4E0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_100152294, v4, v5);
}

uint64_t sub_10014D56C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_100152298, v4, v5);
}

uint64_t sub_10014D604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_1001102D0(a3, v24 - v11, &qword_10020D600);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100110174(v12, &qword_10020D600);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1000FF5D8(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100110174(a3, &qword_10020D600);

      return v22;
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

  sub_100110174(a3, &qword_10020D600);
  sub_1000FF5D8(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10014D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001102D0(a3, v22 - v9, &qword_10020D600);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100110174(v10, &qword_10020D600);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100110174(a3, &qword_10020D600);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100110174(a3, &qword_10020D600);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10014DB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10014DC4C, v7, v6);
}

uint64_t sub_10014DC4C()
{
  v1 = v0[10];
  v8 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  swift_getKeyPath();
  v0[5] = v3;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[15] = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  (*(v1 + 16))(v8, v3 + v4, v2);
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  v0[16] = qword_1002225D8;
  type metadata accessor for IOActor();
  v0[17] = sub_100150E38(&qword_10020E910, type metadata accessor for IOActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[18] = v6;
  v0[19] = v5;

  return _swift_task_switch(sub_10014DE68, v6, v5);
}

uint64_t sub_10014DE68()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[21] = v6;
  v7 = sub_1000FF5D8(&qword_10020E930);
  *v6 = v0;
  v6[1] = sub_10014DF80;
  v8 = v0[7];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v1, v2, 0xD000000000000027, 0x80000001001B7730, sub_100152284, v5, v7);
}

uint64_t sub_10014DF80()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10014E194;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10014E09C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10014E09C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_10014E128, v4, v5);
}

uint64_t sub_10014E128()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014E194()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[14];

  return _swift_task_switch(sub_10014E22C, v4, v5);
}

uint64_t sub_10014E22C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014E298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_10014E38C, v7, v6);
}

uint64_t sub_10014E38C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  swift_getKeyPath();
  v0[5] = v4;
  sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[15] = *(v4 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v4;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10014E554;
  v7 = v0[11];

  return sub_100146DCC(v7);
}

uint64_t sub_10014E554(char a1)
{
  v4 = *v2;
  *(v4 + 136) = v1;

  v5 = *(v4 + 88);
  v6 = *(v4 + 80);
  v7 = *(v4 + 72);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 104);
    v9 = *(v4 + 112);
    v10 = sub_10014E784;
  }

  else
  {
    *(v4 + 144) = a1 & 1;
    (*(v6 + 8))(v5, v7);

    v8 = *(v4 + 104);
    v9 = *(v4 + 112);
    v10 = sub_10014E704;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10014E704()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);

  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10014E784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014E7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_10014E8F0, v7, v6);
}

uint64_t sub_10014E8F0()
{
  v9 = v0[12];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_getKeyPath();
  v0[16] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  v0[5] = v3;
  v0[17] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[18] = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v0[19] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v9, v3 + v4, v1);
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  v0[22] = qword_1002225D8;
  type metadata accessor for IOActor();
  v0[23] = sub_100150E38(&qword_10020E910, type metadata accessor for IOActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v7;
  v0[25] = v6;

  return _swift_task_switch(sub_10014EB28, v7, v6);
}

uint64_t sub_10014EB28()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[12];
  v5 = swift_task_alloc();
  v0[26] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_10014EC2C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v2, 0xD00000000000001ALL, 0x80000001001B7390, sub_100151AE0, v5, &type metadata for () + 8);
}

uint64_t sub_10014EC2C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10014EDD4;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10014ED48;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10014ED48()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  (*(v3 + 8))(v1, v2);
  v4 = v0[14];
  v5 = v0[15];

  return _swift_task_switch(sub_100152334, v4, v5);
}

uint64_t sub_10014EDD4()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = *(v3 + 8);
  v0[29] = v4;
  v0[30] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = v0[14];
  v6 = v0[15];

  return _swift_task_switch(sub_10014EE78, v5, v6);
}

uint64_t sub_10014EE78()
{
  v21 = v0;

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v0[29];
    v17 = v0[20];
    v16 = v0[19];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315394;
    swift_getKeyPath();
    v0[7] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17(v4, v5 + v16, v6);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v18(v4, v6);
    v12 = sub_100125658(v9, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_100000000, v2, v3, "Could not open original document for file at %s: %@", v7, 0x16u);
    sub_100110174(v8, &qword_10020DAB0);

    sub_10010FA4C(v19);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10014F180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    sub_100128F38(0, 0, v6, a3, v11);
  }

  return result;
}

uint64_t sub_10014F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_10014F3D0, v7, v6);
}

uint64_t sub_10014F3D0()
{
  v9 = v0[12];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_getKeyPath();
  v0[16] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  v0[5] = v3;
  v0[17] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[18] = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v0[19] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v9, v3 + v4, v1);
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  v0[22] = qword_1002225D8;
  type metadata accessor for IOActor();
  v0[23] = sub_100150E38(&qword_10020E910, type metadata accessor for IOActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v7;
  v0[25] = v6;

  return _swift_task_switch(sub_10014F608, v7, v6);
}

uint64_t sub_10014F608()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[12];
  v5 = swift_task_alloc();
  v0[26] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = swift_task_alloc();
  v0[27] = v6;
  *v6 = v0;
  v6[1] = sub_10014F70C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v2, 0xD00000000000001ELL, 0x80000001001B7710, sub_100151EF8, v5, &type metadata for () + 8);
}

uint64_t sub_10014F70C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10014F828;
  }

  else
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_10014ED48;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10014F828()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v4 = *(v3 + 8);
  v0[29] = v4;
  v0[30] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = v0[14];
  v6 = v0[15];

  return _swift_task_switch(sub_10014F8CC, v5, v6);
}

uint64_t sub_10014F8CC()
{
  v21 = v0;

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v0[29];
    v17 = v0[20];
    v16 = v0[19];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315394;
    swift_getKeyPath();
    v0[7] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17(v4, v5 + v16, v6);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v18(v4, v6);
    v12 = sub_100125658(v9, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_100000000, v2, v3, "Could not open last modified document for file at URL: %s: %@", v7, 0x16u);
    sub_100110174(v8, &qword_10020DAB0);

    sub_10010FA4C(v19);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10014FBD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideReturnToSenderBanner) == 1)
    {
      *(result + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideReturnToSenderBanner) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10014FD18()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = v1 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    sub_10014FE48();
  }

  return result;
}

uint64_t sub_10014FE48()
{
  v1 = v0;
  v2 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  if (*(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner) == 1)
  {
    *(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v0;
    LOBYTE(v10[-1]) = 1;
    v10[1] = v0;
    sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  sub_100128F38(0, 0, v4, &unk_1001A7908, v8);
}

uint64_t sub_10015005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for URL();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[14] = v7;
  v4[15] = v6;

  return _swift_task_switch(sub_10015015C, v7, v6);
}

uint64_t sub_10015015C()
{
  v9 = v0[12];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  swift_getKeyPath();
  v0[16] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  v0[5] = v3;
  v0[17] = sub_100150E38(&qword_10020E060, type metadata accessor for BannerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[18] = *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager);
  swift_getKeyPath();
  v0[6] = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v0[19] = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v9, v3 + v4, v1);
  if (qword_10020D1A0 != -1)
  {
    swift_once();
  }

  type metadata accessor for IOActor();
  sub_100150E38(&qword_10020E910, type metadata accessor for IOActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015038C, v7, v6);
}

uint64_t sub_10015038C()
{
  sub_100147314();
  v0[22] = 0;
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[14];
  v2 = v0[15];

  return _swift_task_switch(sub_10015045C, v1, v2);
}

uint64_t sub_10015045C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001504CC()
{
  v21 = v0;

  if (qword_10020D068 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E690);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = v0[23];
    v17 = v0[20];
    v16 = v0[19];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315394;
    swift_getKeyPath();
    v0[7] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17(v4, v5 + v16, v6);
    sub_100150E38(&qword_10020DA90, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v18(v4, v6);
    v12 = sub_100125658(v9, v11, &v20);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&dword_100000000, v2, v3, "Failed to save form filling document attributes to file %s: %@", v7, 0x16u);
    sub_100110174(v8, &qword_10020DAB0);

    sub_10010FA4C(v19);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1001507D0()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100103BD8(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate);

  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__originalDocumentMetadata, &qword_10020E940);
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__lastModifiedDocumentMetadata, &qword_10020E930);
  v3 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1001508D0()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100103BD8(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate);

  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__originalDocumentMetadata, &qword_10020E940);
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__lastModifiedDocumentMetadata, &qword_10020E930);
  v3 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100150A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000FF5D8(&qword_10020E960);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_1000FF5D8(&qword_10020EB70);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  if ((static LocalizedStringResource.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for BannerViewModel.Configuration(0);
  v15 = a1;
  v16 = a2;
  v41 = v14;
  v42 = v15;
  v17 = *(v14 + 20);
  v18 = *(v11 + 48);
  sub_1001102D0(v15 + v17, v13, &qword_10020E960);
  v19 = v16 + v17;
  v20 = v16;
  sub_1001102D0(v19, &v13[v18], &qword_10020E960);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_100110174(v13, &qword_10020E960);
      goto LABEL_11;
    }

LABEL_7:
    sub_100110174(v13, &qword_10020EB70);
    goto LABEL_8;
  }

  sub_1001102D0(v13, v10, &qword_10020E960);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_100150E38(&qword_10020EB78, &type metadata accessor for LocalizedStringResource);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v5 + 8);
  v25(v7, v4);
  v25(v10, v4);
  v20 = v16;
  sub_100110174(v13, &qword_10020E960);
  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = v41;
  v26 = v42;
  v28 = *(v41 + 24);
  v29 = (v42 + v28);
  v30 = *(v42 + v28 + 8);
  v31 = (v20 + v28);
  v32 = v31[1];
  if (!v30)
  {
    if (!v32)
    {
      goto LABEL_18;
    }

LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  if (!v32 || (*v29 != *v31 || v30 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  if ((static LocalizedStringResource.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v33 = *(v27 + 32);
  v34 = *(v26 + v33);
  v35 = *(v26 + v33 + 8);
  v36 = (v20 + v33);
  if ((v34 != *v36 || v35 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = *(v27 + 40);
  v38 = *(v26 + v37);
  v39 = *(v26 + v37 + 8);
  v40 = (v20 + v37);
  if (v38 == *v40 && v39 == v40[1])
  {
    v22 = 1;
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v22 & 1;
}

uint64_t sub_100150E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100150EC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void sub_100150F40()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100151440(319, &qword_10020E9E0, type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata);
    if (v1 <= 0x3F)
    {
      sub_100151440(319, &qword_10020E9E8, type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10015110C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000FF5D8(&qword_10020E960);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10015123C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000FF5D8(&qword_10020E960);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100151354()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    sub_100151440(319, &qword_10020EB18, &type metadata accessor for LocalizedStringResource);
    if (v1 <= 0x3F)
    {
      sub_100151494();
      if (v2 <= 0x3F)
      {
        sub_1001514E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100151440(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100151494()
{
  if (!qword_10020EB20)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020EB20);
    }
  }
}

unint64_t sub_1001514E4()
{
  result = qword_10020EB28;
  if (!qword_10020EB28)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10020EB28);
  }

  return result;
}

uint64_t sub_1001515B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015168C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__supportsAutofill) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__didFetchMetadata) = 0;
  v9 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__originalDocumentMetadata;
  v10 = type metadata accessor for DocumentWorkflowsManager.OriginalDocumentMetadata(0);
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__lastModifiedDocumentMetadata;
  ModifiedDocumentMetadata = type metadata accessor for DocumentWorkflowsManager.LastModifiedDocumentMetadata(0);
  (*(*(ModifiedDocumentMetadata - 8) + 56))(v3 + v11, 1, 1, ModifiedDocumentMetadata);
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideAutofillBanner) = 0;
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__hideReturnToSenderBanner) = 0;
  ObservationRegistrar.init()();
  v13 = OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__url;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v3 + v13, a1, v14);
  *(v3 + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager) = a2;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v3;
  sub_100128F38(0, 0, v8, &unk_1001A7958, v18);

  (*(v15 + 8))(a1, v14);
  return v3;
}

uint64_t sub_100151940()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001519FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10014E7F0(a1, v4, v5, v6);
}

uint64_t sub_100151AE8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17PreviewFoundation15BannerViewModel__documentWorkflowsManager) = *(v0 + 24);
}

uint64_t sub_100151BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10010E934;

  return sub_10015005C(a1, v4, v5, v6);
}

unint64_t sub_100151D28()
{
  result = qword_10020EB90[0];
  if (!qword_10020EB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10020EB90);
  }

  return result;
}

uint64_t sub_100151DE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100151E44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10014F2D0(a1, v4, v5, v6);
}

uint64_t sub_100151F34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000FF5D8(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100151FB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100110344;

  return sub_100149010();
}

uint64_t sub_100152068(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10014CF9C(a1, v4, v5, v6);
}

uint64_t sub_10015211C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10010E934;

  return sub_10014DB58(a1, v4, v5, v6);
}

uint64_t sub_1001521D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100110344;

  return sub_10014E298(a1, v4, v5, v6);
}

uint64_t sub_100152430()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001524A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1001525E0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id sub_1001528C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess_url, v3, v5);
  URL.stopAccessingSecurityScopedResource()();
  (*(v4 + 8))(v7, v3);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_100152B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  sub_1001102D0(a1, a3, &qword_10020DAA8);
  sub_1001102D0(a1, v8, &qword_10020DAA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100110174(a1, &qword_10020DAA8);
    sub_100110174(v8, &qword_10020DAA8);
    v16 = 0;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v24 = a2;
    v17 = *(v10 + 16);
    v17(v13, v15, v9);
    v18 = type metadata accessor for BookmarkableURL.URLSecurityAccess(0);
    v19 = objc_allocWithZone(v18);
    URL.startAccessingSecurityScopedResource()();
    v17(&v19[OBJC_IVAR____TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess_url], v13, v9);
    v25.receiver = v19;
    v25.super_class = v18;
    v16 = objc_msgSendSuper2(&v25, "init");
    sub_100110174(a1, &qword_10020DAA8);
    v20 = *(v10 + 8);
    v20(v13, v9);
    v20(v15, v9);
    a2 = v24;
  }

  v21 = type metadata accessor for BookmarkableURL(0);
  *(a3 + *(v21 + 24)) = v16;
  return sub_100152E50(a2, a3 + *(v21 + 20));
}

uint64_t sub_100152E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020EC18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100152EE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4F676E696E65706FLL;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEE00736E6F697470;
  }

  if (*a2)
  {
    v5 = 0x4F676E696E65706FLL;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0xEE00736E6F697470;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100152F8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153014()
{
  String.hash(into:)();
}

Swift::Int sub_100153088()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10015310C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F62F8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10015316C(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x4F676E696E65706FLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEE00736E6F697470;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001531B0()
{
  if (*v0)
  {
    return 0x4F676E696E65706FLL;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1001531F0@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F62F8, v3);

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

uint64_t sub_100153260(uint64_t a1)
{
  v2 = sub_100153798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015329C(uint64_t a1)
{
  v2 = sub_100153798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001532D8(void *a1, uint64_t a2)
{
  v26[0] = a2;
  v3 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000FF5D8(&qword_10020EC28);
  v28 = *(v13 - 8);
  v29 = v13;
  __chkstk_darwin(v13);
  v15 = v26 - v14;
  sub_100140DC8(a1, a1[3]);
  sub_100153798();
  v30 = v15;
  v16 = v26[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001102D0(v16, v8, &qword_10020DAA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100110174(v8, &qword_10020DAA8);
    v17 = v29;
    v18 = v27;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    (*(v10 + 56))(v5, 1, 1, v9);
    v20 = v27;
    v21 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    v18 = v20;
    if (v20)
    {
      sub_100110174(v5, &qword_10020DAA8);
      (*(v10 + 8))(v12, v9);
      (*(v28 + 8))(v30, v29);
      goto LABEL_7;
    }

    v24 = v21;
    v25 = v22;
    sub_100110174(v5, &qword_10020DAA8);
    v31 = v24;
    v32 = v25;
    v33 = 0;
    sub_100153840();
    v17 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v10 + 8))(v12, v9);
    sub_1001010FC(v24, v25);
  }

  type metadata accessor for BookmarkableURL(0);
  LOBYTE(v31) = 1;
  sub_1000FF5D8(&qword_10020EC18);
  sub_100154288(&qword_10020EC38, &qword_10020EC40);
  v19 = v30;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v18)
  {
    (*(v28 + 8))(v19, v17);
LABEL_7:
    *v26[0] = 0;
    LOBYTE(v31) = 0;
    sub_1001537EC();
    swift_willThrowTypedImpl();
  }

  return (*(v28 + 8))(v19, v17);
}

unint64_t sub_100153798()
{
  result = qword_10020EC30;
  if (!qword_10020EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EC30);
  }

  return result;
}

unint64_t sub_1001537EC()
{
  result = qword_10020EC48;
  if (!qword_10020EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EC48);
  }

  return result;
}

unint64_t sub_100153840()
{
  result = qword_10020EC50;
  if (!qword_10020EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EC50);
  }

  return result;
}

void sub_100153894(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v67 = a3;
  v4 = type metadata accessor for UUID();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v70 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000FF5D8(&qword_10020EC18);
  __chkstk_darwin(v69);
  v71 = &v54 - v6;
  v7 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v7 - 8);
  v68 = &v54 - v8;
  v9 = type metadata accessor for URL();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = sub_1000FF5D8(&qword_10020EC58);
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  v17 = type metadata accessor for BookmarkableURL(0);
  __chkstk_darwin(v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 1;
  sub_100140DC8(a1, a1[3]);
  sub_100153798();
  v20 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
LABEL_2:
    v21 = v76;
LABEL_3:
    *v21 = 1;
    LOBYTE(v78) = 1;
    sub_1001537EC();
    swift_willThrowTypedImpl();

    sub_10010FA4C(a1);
  }

  else
  {
    v61 = v17;
    v62 = v13;
    v75 = 0;
    v60 = v19;
    v63 = a1;
    v22 = KeyedDecodingContainer.allKeys.getter();
    v23 = *(v22 + 16);
    v24 = (v22 + 32);
    while (1)
    {
      if (!v23)
      {

        v26 = v60;
        (*(v73 + 56))(v60, 1, 1, v74);
        v27 = 0;
        v28 = v61;
        goto LABEL_10;
      }

      if ((*v24 & 1) == 0)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v24;
      --v23;
      if (v25)
      {
        goto LABEL_13;
      }
    }

LABEL_13:

    v80 = 0;
    sub_100154234();
    v32 = v75;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    a1 = v63;
    v21 = v76;
    if (v32)
    {
      (*(v72 + 8))(v16, v14);
      goto LABEL_3;
    }

    v58 = v16;
    v59 = v14;
    v33 = v78;
    v34 = v79;
    v35 = *(v73 + 56);
    v36 = v68;
    v35(v68, 1, 1, v74);
    URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
    v55 = v35;
    v56 = v33;
    v57 = v34;
    sub_100110174(v36, &qword_10020DAA8);
    if (v81)
    {
      sub_1001537EC();
      swift_allocError();
      *v41 = 1;
      swift_willThrow();
      sub_1001010FC(v56, v57);
      (*(v73 + 8))(v62, v74);
      (*(v72 + 8))(v58, v59);
      goto LABEL_2;
    }

    v75 = 0;
    v45 = v62;
    v46 = v73;
    v47 = v74;
    v48 = *(v73 + 16);
    v49 = v60;
    v48(v60, v62, v74);
    v55(v49, 0, 1, v47);
    v50 = v64;
    v48(v64, v45, v47);
    v51 = type metadata accessor for BookmarkableURL.URLSecurityAccess(0);
    v52 = objc_allocWithZone(v51);
    URL.startAccessingSecurityScopedResource()();
    v48(&v52[OBJC_IVAR____TtCV17PreviewFoundation15BookmarkableURLP33_F50D038DC7581BEB6B4407D7C634236B17URLSecurityAccess_url], v50, v47);
    v77.receiver = v52;
    v77.super_class = v51;
    v27 = objc_msgSendSuper2(&v77, "init");
    sub_1001010FC(v56, v57);
    v53 = *(v46 + 8);
    v53(v50, v47);
    v53(v45, v47);
    v26 = v60;
    v28 = v61;
    v14 = v59;
    v16 = v58;
LABEL_10:
    *(v26 + *(v28 + 24)) = v27;
    LOBYTE(v78) = 1;
    sub_100154288(&qword_10020EC68, &qword_10020EC70);
    v29 = v71;
    v30 = v75;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v70;
    if (v30)
    {
      (*(v72 + 8))(v16, v14);
      *v76 = 1;
      LOBYTE(v78) = 1;
      sub_1001537EC();
      swift_willThrowTypedImpl();

      sub_10010FA4C(v63);
      sub_100110174(v26, &qword_10020DAA8);
    }

    else
    {
      v37 = v16;
      v38 = type metadata accessor for DocumentOpeningOptions();
      v39 = (*(*(v38 - 8) + 48))(v29, 1, v38);
      v40 = v72;
      if (v39)
      {
        (*(v72 + 8))(v37, v14);
      }

      else
      {
        v43 = v65;
        v42 = v66;
        (*(v65 + 16))(v31, v29 + *(v38 + 28), v66);
        if (qword_10020D050 != -1)
        {
          swift_once();
        }

        sub_100101048(v42, qword_10020E348);
        sub_100154324(&qword_10020D938, &type metadata accessor for UUID);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v43 + 8))(v31, v42);
        (*(v40 + 8))(v37, v14);
        v26 = v60;
        if ((v44 & 1) == 0)
        {
          *(v29 + 1) = 3;
        }
      }

      sub_100152E50(v29, v26 + *(v61 + 20));
      sub_10015436C(v26, v67);
      sub_10010FA4C(v63);
      sub_1001565A8(v26, type metadata accessor for BookmarkableURL);
    }
  }
}

unint64_t sub_100154234()
{
  result = qword_10020EC60;
  if (!qword_10020EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EC60);
  }

  return result;
}

uint64_t sub_100154288(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10010EC80(&qword_10020EC18);
    sub_100154324(a2, type metadata accessor for DocumentOpeningOptions);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100154324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015436C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BookmarkableURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001543D0()
{
  v1 = v0;
  v22 = type metadata accessor for DocumentOpeningOptions();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000FF5D8(&qword_10020EC18);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v23 = v1;
  sub_1001102D0(v1, &v20 - v12, &qword_10020DAA8);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    Hasher._combine(_:)(1u);
    sub_100154324(&qword_10020EC78, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v8 + 8))(v10, v7);
  }

  v14 = type metadata accessor for BookmarkableURL(0);
  v15 = v23;
  sub_1001102D0(v23 + *(v14 + 20), v6, &qword_10020EC18);
  if ((*(v2 + 48))(v6, 1, v22) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = v21;
    sub_100156C44(v6, v21, type metadata accessor for DocumentOpeningOptions);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*v16);
    v17 = v16[1];
    if (v17 == 3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v17);
    }

    Hasher._combine(_:)(v16[2]);
    type metadata accessor for UUID();
    sub_100154324(&qword_10020E3F0, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    sub_1001565A8(v16, type metadata accessor for DocumentOpeningOptions);
  }

  v18 = *(v15 + *(v14 + 24));
  if (v18)
  {
    Hasher._combine(_:)(1u);
    v19 = v18;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_100154818()
{
  Hasher.init(_seed:)();
  sub_1001543D0();
  return Hasher._finalize()();
}

void sub_100154858(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100153894(a1, &v5, a2);
  if (v2)
  {
    v3 = v5;
    sub_1001537EC();
    swift_allocError();
    *v4 = v3;
  }
}

uint64_t sub_1001548A8(void *a1)
{
  result = sub_1001532D8(a1, &v5);
  if (v1)
  {
    v3 = v5;
    sub_1001537EC();
    result = swift_allocError();
    *v4 = v3;
  }

  return result;
}

Swift::Int sub_1001548FC()
{
  Hasher.init(_seed:)();
  sub_1001543D0();
  return Hasher._finalize()();
}

uint64_t sub_100154988@<X0>(uint64_t *a1@<X8>)
{
  v12 = sub_1000FF5D8(&qword_10020ED98);
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v11 - v3;
  v5 = sub_1000FF5D8(&qword_10020EDA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10010F2DC(&qword_10020EDA8, &qword_10020EDA0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = 0;
  v14 = 0xE000000000000000;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000FF5D8(&qword_10020EE78);
  a1[4] = sub_100157794(&qword_10020EE80, &qword_10020EE78);
  sub_10010F9E8(a1);
  sub_10010F2DC(&qword_10020EDD0, &qword_10020ED98);
  v9 = v12;
  static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)();
  (*(v2 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100154C20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_1000FF5D8(&qword_10020EC18);
  __chkstk_darwin(v3 - 8);
  v24 = &v24 - v4;
  v5 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for URL();
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BookmarkableURL(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000FF5D8(&qword_10020EC80);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  sub_1001102D0(v2, &v24 - v16, &qword_10020EC80);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    v27 = &type metadata for String;
    return Predicate.init(_:)();
  }

  sub_100156C44(v17, v14, type metadata accessor for BookmarkableURL);
  sub_1001102D0(v14, v7, &qword_10020DAA8);
  v19 = v25;
  if ((*(v25 + 48))(v7, 1, v8) != 1)
  {
    v22 = (*(v19 + 32))(v10, v7, v8);
    __chkstk_darwin(v22);
    *(&v24 - 2) = v10;
    v27 = &type metadata for String;
    Predicate.init(_:)();
    sub_1001565A8(v14, type metadata accessor for BookmarkableURL);
    return (*(v19 + 8))(v10, v8);
  }

  sub_100110174(v7, &qword_10020DAA8);
  v20 = v24;
  sub_1001102D0(&v14[*(v11 + 20)], v24, &qword_10020EC18);
  v21 = type metadata accessor for DocumentOpeningOptions();
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    sub_100110174(v20, &qword_10020EC18);
  }

  else
  {
    v23 = *(v20 + 1);
    sub_1001565A8(v20, type metadata accessor for DocumentOpeningOptions);
    if (v23 != 3)
    {
      v27 = &type metadata for String;
      static Predicate.false.getter();
      return sub_1001565A8(v14, type metadata accessor for BookmarkableURL);
    }
  }

  v27 = &type metadata for String;
  Predicate.init(_:)();
  return sub_1001565A8(v14, type metadata accessor for BookmarkableURL);
}

uint64_t sub_100155110@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17[1] = a1;
  v21 = a2;
  v2 = sub_1000FF5D8(&qword_10020EDE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = sub_1000FF5D8(&qword_10020EDE8);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = sub_1000FF5D8(&qword_10020EDA0);
  v18 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  sub_10010F2DC(&qword_10020EDA8, &qword_10020EDA0);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for URL();
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_10010F2DC(&qword_10020EE00, &qword_10020EDE0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v3 + 8))(v5, v2);
  v13 = sub_1000FF5D8(&qword_10020EDF0);
  v14 = v21;
  v21[3] = v13;
  v14[4] = sub_1001574EC();
  sub_10010F9E8(v14);
  sub_10010F2DC(&qword_10020EE08, &qword_10020EDE8);
  v15 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v9, v15);
  return (*(v18 + 8))(v12, v10);
}

uint64_t sub_10015547C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1000FF5D8(&qword_10020EC18);
  __chkstk_darwin(v3 - 8);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  v7 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BookmarkableURL(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000FF5D8(&qword_10020EC80);
  __chkstk_darwin(v17 - 8);
  v19 = &v30 - v18;
  sub_1001102D0(v2, &v30 - v18, &qword_10020EC80);
  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    v35 = &type metadata for String;
    return Predicate.init(_:)();
  }

  sub_100156C44(v19, v16, type metadata accessor for BookmarkableURL);
  sub_1001102D0(v16, v9, &qword_10020DAA8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100110174(v9, &qword_10020DAA8);
    v21 = v32;
    sub_1001102D0(&v16[*(v13 + 20)], v32, &qword_10020EC18);
    v22 = type metadata accessor for DocumentOpeningOptions();
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      sub_100110174(v21, &qword_10020EC18);
    }

    else
    {
      v28 = *(v21 + 1);
      sub_1001565A8(v21, type metadata accessor for DocumentOpeningOptions);
      if (v28 != 3)
      {
        v35 = &type metadata for String;
        static Predicate.false.getter();
        return sub_1001565A8(v16, type metadata accessor for BookmarkableURL);
      }
    }

    v35 = &type metadata for String;
    Predicate.init(_:)();
    return sub_1001565A8(v16, type metadata accessor for BookmarkableURL);
  }

  v23 = v10;
  v24 = v33;
  (*(v11 + 32))(v33, v9, v23);
  v25 = v31;
  sub_1001102D0(&v16[*(v13 + 20)], v31, &qword_10020EC18);
  v26 = type metadata accessor for DocumentOpeningOptions();
  if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
  {
    v27 = sub_100110174(v25, &qword_10020EC18);
  }

  else
  {
    v27 = sub_1001565A8(v25, type metadata accessor for DocumentOpeningOptions);
  }

  __chkstk_darwin(v27);
  *(&v30 - 2) = v24;
  *(&v30 - 8) = v29;
  v35 = &type metadata for String;
  Predicate.init(_:)();
  sub_1001565A8(v16, type metadata accessor for BookmarkableURL);
  return (*(v11 + 8))(v24, v23);
}

uint64_t sub_100155A54@<X0>(uint64_t *a1@<X8>)
{
  v12 = sub_1000FF5D8(&qword_10020ED98);
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v11 - v3;
  v5 = sub_1000FF5D8(&qword_10020EDA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10010F2DC(&qword_10020EDA8, &qword_10020EDA0);
  static PredicateExpressions.build_Arg<A>(_:)();
  v13 = 0;
  v14 = 0xE000000000000000;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000FF5D8(&qword_10020EDB0);
  a1[4] = sub_100157794(&qword_10020EDB8, &qword_10020EDB0);
  sub_10010F9E8(a1);
  sub_10010F2DC(&qword_10020EDD0, &qword_10020ED98);
  v9 = v12;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v2 + 8))(v4, v9);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100155CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v50) = a3;
  v40 = a2;
  v45 = a1;
  v55 = a4;
  v4 = sub_1000FF5D8(&qword_10020ED98);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  __chkstk_darwin(v4);
  v52 = &v40 - v6;
  v7 = sub_1000FF5D8(&qword_10020EDB0);
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  __chkstk_darwin(v7);
  v51 = &v40 - v9;
  v48 = sub_1000FF5D8(&qword_10020EDD8);
  v60 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v40 - v10;
  v11 = sub_1000FF5D8(&qword_10020EDE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v41 = sub_1000FF5D8(&qword_10020EDE8);
  v42 = *(v41 - 1);
  __chkstk_darwin(v41);
  v16 = &v40 - v15;
  v17 = sub_1000FF5D8(&qword_10020EDA0);
  v59 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v40 - v18;
  v20 = sub_1000FF5D8(&qword_10020EDF0);
  v21 = *(v20 - 8);
  v43 = v20;
  v44 = v21;
  __chkstk_darwin(v20);
  v23 = &v40 - v22;
  v47 = sub_1000FF5D8(&qword_10020EDF8);
  v49 = *(v47 - 8);
  __chkstk_darwin(v47);
  v58 = &v40 - v24;
  v45 = *v45;
  sub_10010F2DC(&qword_10020EDA8, &qword_10020EDA0);
  static PredicateExpressions.build_Arg<A>(_:)();
  type metadata accessor for URL();
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  sub_10010F2DC(&qword_10020EE00, &qword_10020EDE0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v12 + 8))(v14, v11);
  sub_10010F2DC(&qword_10020EE08, &qword_10020EDE8);
  v25 = v41;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v42 + 8))(v16, v25);
  v26 = *(v59 + 8);
  v59 += 8;
  v41 = v26;
  (v26)(v19, v17);
  LOBYTE(v61) = v50;
  v27 = v46;
  static PredicateExpressions.build_Arg<A>(_:)();
  v50 = &protocol conformance descriptor for PredicateExpressions.Equal<A, B>;
  sub_10010F2DC(&qword_10020EE10, &qword_10020EDF0);
  v42 = sub_10010F2DC(&qword_10020EE18, &qword_10020EDD8);
  v28 = v43;
  v29 = v48;
  static PredicateExpressions.build_Disjunction<A, B>(lhs:rhs:)();
  v30 = *(v60 + 8);
  v60 += 8;
  v30(v27, v29);
  (*(v44 + 8))(v23, v28);
  static PredicateExpressions.build_Arg<A>(_:)();
  v61 = 0;
  v62 = 0xE000000000000000;
  v31 = v52;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_10010F2DC(&qword_10020EDD0, &qword_10020ED98);
  v32 = v51;
  v33 = v53;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v54 + 8))(v31, v33);
  (v41)(v19, v17);
  LOBYTE(v61) = 0;
  static PredicateExpressions.build_Arg<A>(_:)();
  v34 = sub_1000FF5D8(&qword_10020EE20);
  v35 = v55;
  v55[3] = v34;
  v35[4] = sub_100157394();
  sub_10010F9E8(v35);
  sub_10010F2DC(&qword_10020EE68, &qword_10020EDF8);
  sub_10010F2DC(&qword_10020EE70, &qword_10020EDB0);
  v36 = v58;
  v37 = v47;
  v38 = v56;
  static PredicateExpressions.build_Conditional<A, B, C>(_:_:_:)();
  v30(v27, v29);
  (*(v57 + 8))(v32, v38);
  return (*(v49 + 8))(v36, v37);
}

uint64_t sub_1001565A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100156608(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v52 = a1;
  v48 = sub_1000FF5D8(&qword_10020DAA0);
  __chkstk_darwin(v48);
  v3 = &v43 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v43 - v8;
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  v12 = sub_1000FF5D8(&qword_10020DAA8);
  __chkstk_darwin(v12 - 8);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  __chkstk_darwin(v23);
  v25 = &v43 - v24;
  sub_1001102D0(v52, v22, &qword_10020DAA8);
  v51 = *(v5 + 48);
  v52 = v5;
  v26 = v51(v22, 1, v4);
  v49 = v19;
  if (v26 == 1)
  {
    sub_100110174(v22, &qword_10020DAA8);
    v27 = 1;
  }

  else
  {
    URL.resolvingSymlinksInPath()();
    v28 = v25;
    v29 = *(v52 + 8);
    v29(v22, v4);
    URL.standardized.getter();
    v29(v11, v4);
    v25 = v28;
    v27 = 0;
  }

  v30 = *(v52 + 56);
  v30(v25, v27, 1, v4);
  sub_1001102D0(v47, v16, &qword_10020DAA8);
  if (v51(v16, 1, v4) == 1)
  {
    sub_100110174(v16, &qword_10020DAA8);
    v31 = 1;
    v32 = v49;
  }

  else
  {
    v33 = v46;
    URL.resolvingSymlinksInPath()();
    v47 = v25;
    v44 = v3;
    v34 = *(v52 + 8);
    v34(v16, v4);
    v32 = v49;
    URL.standardized.getter();
    v34(v33, v4);
    v25 = v47;
    v3 = v44;
    v31 = 0;
  }

  v30(v32, v31, 1, v4);
  v35 = *(v48 + 48);
  sub_1001102D0(v25, v3, &qword_10020DAA8);
  sub_1001102D0(v32, &v3[v35], &qword_10020DAA8);
  v36 = v51;
  if (v51(v3, 1, v4) != 1)
  {
    sub_1001102D0(v3, v50, &qword_10020DAA8);
    if (v36(&v3[v35], 1, v4) != 1)
    {
      v38 = v52;
      v39 = v45;
      (*(v52 + 32))(v45, &v3[v35], v4);
      sub_100154324(&qword_10020DAB8, &type metadata accessor for URL);
      v40 = v50;
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v38 + 8);
      v41(v39, v4);
      sub_100110174(v32, &qword_10020DAA8);
      sub_100110174(v25, &qword_10020DAA8);
      v41(v40, v4);
      sub_100110174(v3, &qword_10020DAA8);
      return v37 & 1;
    }

    sub_100110174(v32, &qword_10020DAA8);
    sub_100110174(v25, &qword_10020DAA8);
    (*(v52 + 8))(v50, v4);
    goto LABEL_12;
  }

  sub_100110174(v32, &qword_10020DAA8);
  sub_100110174(v25, &qword_10020DAA8);
  if (v36(&v3[v35], 1, v4) != 1)
  {
LABEL_12:
    sub_100110174(v3, &qword_10020DAA0);
    v37 = 0;
    return v37 & 1;
  }

  sub_100110174(v3, &qword_10020DAA8);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_100156C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100156CC4()
{
  result = qword_10020EC88;
  if (!qword_10020EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EC88);
  }

  return result;
}

uint64_t sub_100156D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FF5D8(&qword_10020DAA8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000FF5D8(&qword_10020EC18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_100156EB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000FF5D8(&qword_10020DAA8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000FF5D8(&qword_10020EC18);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100156FD8()
{
  sub_1001570C8(319, &qword_10020ED00, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_1001570C8(319, &qword_10020ED08, type metadata accessor for DocumentOpeningOptions);
    if (v1 <= 0x3F)
    {
      sub_1001570C8(319, &unk_10020ED10, type metadata accessor for BookmarkableURL.URLSecurityAccess);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001570C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100157134()
{
  result = type metadata accessor for URL();
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

unint64_t sub_1001571E0()
{
  result = qword_10020ED80;
  if (!qword_10020ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020ED80);
  }

  return result;
}

unint64_t sub_100157238()
{
  result = qword_10020ED88;
  if (!qword_10020ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020ED88);
  }

  return result;
}

unint64_t sub_100157290()
{
  result = qword_10020ED90;
  if (!qword_10020ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020ED90);
  }

  return result;
}

unint64_t sub_1001572E4()
{
  result = qword_10020EDC8;
  if (!qword_10020EDC8)
  {
    sub_10010EC80(&qword_10020ED98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EDC8);
  }

  return result;
}

uint64_t sub_100157368@<X0>(uint64_t *a1@<X8>)
{
  result = URL.absoluteString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100157394()
{
  result = qword_10020EE28;
  if (!qword_10020EE28)
  {
    sub_10010EC80(&qword_10020EE20);
    sub_100157460();
    sub_100157794(&qword_10020EDB8, &qword_10020EDB0);
    sub_100157710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE28);
  }

  return result;
}

unint64_t sub_100157460()
{
  result = qword_10020EE30;
  if (!qword_10020EE30)
  {
    sub_10010EC80(&qword_10020EDF8);
    sub_1001574EC();
    sub_100157710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE30);
  }

  return result;
}

unint64_t sub_1001574EC()
{
  result = qword_10020EE38;
  if (!qword_10020EE38)
  {
    sub_10010EC80(&qword_10020EDF0);
    sub_10010F2DC(&qword_10020EDC0, &qword_10020EDA0);
    sub_1001575A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE38);
  }

  return result;
}

unint64_t sub_1001575A4()
{
  result = qword_10020EE40;
  if (!qword_10020EE40)
  {
    sub_10010EC80(&qword_10020EDE8);
    sub_100157628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE40);
  }

  return result;
}

unint64_t sub_100157628()
{
  result = qword_10020EE48;
  if (!qword_10020EE48)
  {
    sub_10010EC80(&qword_10020EDE0);
    sub_100154324(&qword_10020EE50, &type metadata accessor for URL);
    sub_100154324(&qword_10020EE58, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE48);
  }

  return result;
}

unint64_t sub_100157710()
{
  result = qword_10020EE60;
  if (!qword_10020EE60)
  {
    sub_10010EC80(&qword_10020EDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020EE60);
  }

  return result;
}

uint64_t sub_100157794(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10010EC80(a2);
    sub_10010F2DC(&qword_10020EDC0, &qword_10020EDA0);
    sub_1001572E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100157840(unsigned __int8 a1)
{
  v2 = sub_10015A4E4();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  if (*(v2 + v3) == a1)
  {
    sub_100117154();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001579B8(unsigned __int8 a1)
{
  v2 = sub_10012C330();
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  if (*(v2 + v3) == a1)
  {
    sub_100117154();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100157B40(void *a1)
{
  v2 = swift_allocObject();
  sub_10015836C(a1);
  return v2;
}

uint64_t sub_100157B80()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100157C38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_100157D24(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*sub_100157E4C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100157F8C;
}

uint64_t sub_100157F98()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100158054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

void (*sub_100158158(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_1001582A8;
}

void sub_1001582A8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_10015836C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UTType();
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationSplitViewVisibility();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 112) = 0u;
  *(v2 + 96) = 0u;
  v41 = (v2 + 96);
  ObservationRegistrar.init()();
  *(v2 + 128) = a1;
  type metadata accessor for DocumentStateObservation();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[5] = 0;
  v14 = a1;
  swift_unknownObjectWeakInit();
  v13[2] = v14;
  v15 = v14;
  v49 = v15;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v16 = v15;
  v17 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v18 = v13[3];
  v13[3] = v17;

  *(v2 + 16) = v13;
  type metadata accessor for ThumbnailsViewModel();
  v19 = swift_allocObject();
  v19[17] = 0;
  static NavigationSplitViewVisibility.detailOnly.getter();
  (*(v10 + 32))(&v19[OBJC_IVAR____TtC17PreviewFoundation19ThumbnailsViewModel__splitColumnVisibility], v12, v9);
  ObservationRegistrar.init()();
  v19[16] = 1;
  v19[18] = 0;
  *(v2 + 64) = v19;
  static UTType.pdf.getter();
  type metadata accessor for ToolbarViewModel(0);
  swift_allocObject();
  v20 = sub_1001263BC(v8, v16);

  *(v2 + 72) = v20;
  type metadata accessor for DocumentInfoViewerModel();
  v21 = swift_allocObject();
  *(v21 + qword_10020E2E8) = v16;
  type metadata accessor for DocumentURLObservation();
  v22 = swift_allocObject();
  v22[3] = 0;
  v22[5] = 0;
  swift_unknownObjectWeakInit();
  v22[2] = v16;
  v49 = v16;
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v23 = v16;
  v24 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v25 = v22[3];
  v22[3] = v24;

  *(v21 + qword_10020E2F0) = v22;
  v26 = type metadata accessor for Document(0);
  v51.receiver = v23;
  v51.super_class = v26;
  v27 = objc_msgSendSuper2(&v51, "fileURL");
  v28 = v40;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentMetadata(0);
  swift_allocObject();
  v29 = sub_1000E1AB4(v28, 1, 0);
  v30 = sub_1000FB9E4(v29);
  *(*(v30 + qword_10020E2F0) + 40) = &off_1001F7A88;
  swift_unknownObjectWeakAssign();

  *(v2 + 80) = v30;
  v50.receiver = v23;
  v50.super_class = v26;
  v31 = objc_msgSendSuper2(&v50, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for DocumentWorkflowsManager();
  v32 = swift_allocObject();
  *(v32 + 16) = [objc_allocWithZone(SYDocumentWorkflowsClient) init];
  type metadata accessor for BannerViewModel(0);
  swift_allocObject();
  v33 = sub_10015168C(v28, v32);

  *(v2 + 88) = v33;
  swift_getKeyPath();
  v49 = v2;
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v34 = *(v2 + 88);
  swift_getKeyPath();
  v44 = v34;
  v45 = v2;
  v46 = &off_1001F8AC8;
  v48 = v34;
  sub_10015BF60(&qword_10020E060, type metadata accessor for BannerViewModel);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  type metadata accessor for LockingViewModel();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0xE000000000000000;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0xE000000000000000;
  *(v35 + 48) = 0;
  *(v35 + 64) = 0;
  swift_unknownObjectWeakInit();
  ObservationRegistrar.init()();
  swift_getKeyPath();
  v42 = v2;
  v43 = v35;
  v48 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v48 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = v41;
  swift_beginAccess();
  v37 = *v36;
  if (*v36)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v40 - 4) = v37;
    *(&v40 - 3) = v2;
    *(&v40 - 2) = &off_1001F8B00;
    v47 = v37;
    sub_10015BF60(&qword_10020D4C8, type metadata accessor for LockingViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v2;
}

uint64_t type metadata accessor for PDFDocumentViewModel()
{
  result = qword_10020EED0;
  if (!qword_10020EED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100158C9C()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_100158D6C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 56) == v2)
  {
    *(v1 + 56) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100158E90(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 64) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100158FB8(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 72) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001590E0(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 80) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100159208(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 88) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100159330()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001593E8()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001594B8()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100159570()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10015962C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_100159710()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_1001597D8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_100159928;
}

void sub_100159928(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_1001599EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PDFDocument();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  swift_beginAccess();
  a1[3] = sub_1000FF5D8(&qword_10020EE98);
  v4 = sub_10010F9E8(a1);
  return sub_1001102D0(v2 + v3, v4, &qword_10020EE98);
}

uint64_t sub_100159AA8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PDFDocument();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  swift_beginAccess();
  a1[3] = sub_1000FF5D8(&qword_10020EE98);
  v4 = sub_10010F9E8(a1);
  return sub_1001102D0(v2 + v3, v4, &qword_10020EE98);
}

uint64_t sub_100159B68(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020EE98);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  type metadata accessor for PDFDocument();
  v5 = swift_dynamicCastClassUnconditional();
  if (*(a1 + 24))
  {
    sub_1001150A0(a1, v11);
    sub_10012F100(a1);
    v6 = sub_1000FF5D8(&qword_10020EEA0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10015BE10(a1);
    v8 = sub_1000FF5D8(&qword_10020EEA0);
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  v9 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  swift_beginAccess();
  sub_10015BE78(v4, v5 + v9);
  return swift_endAccess();
}

void (*sub_100159D18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  type metadata accessor for PDFDocument();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_capsule;
  swift_beginAccess();
  v4[3] = sub_1000FF5D8(&qword_10020EE98);
  v7 = sub_10010F9E8(v4);
  sub_1001102D0(v5 + v6, v7, &qword_10020EE98);
  return sub_100159E14;
}

void sub_100159E14(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1001102D0(*a1, v2 + 32, &qword_10020E070);
    sub_100159B68(v2 + 32);
    sub_10015BE10(v2);
  }

  else
  {
    sub_100159B68(*a1);
  }

  free(v2);
}

void sub_100159E8C()
{
  type metadata accessor for PDFDocument();
  v1.receiver = swift_dynamicCastClassUnconditional();
  v1.super_class = type metadata accessor for Document(0);
  v0 = objc_msgSendSuper2(&v1, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100159F10()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_100159FC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

void (*sub_10015A0A8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015A1E8;
}

uint64_t sub_10015A1F4()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10015A2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 64);
}

void (*sub_10015A398(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015A4D8;
}

uint64_t sub_10015A4E4()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10015A59C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void (*sub_10015A688(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015A7C8;
}

uint64_t sub_10015A7D4()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10015A88C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

void (*sub_10015A978(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015AAB8;
}

uint64_t sub_10015AAC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 88);
}

void (*sub_10015ABB0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015ACF0;
}

uint64_t sub_10015ACFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_10015ADBC()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void (*sub_10015AE88(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015AFC8;
}

uint64_t sub_10015AFD4@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_10012F180(v3, v4, v5);
}

uint64_t sub_10015B09C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = v3[13];
  v5 = v3[14];
  v6 = v3[15];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_10012F180(v4, v5, v6);
}

uint64_t sub_10015B164(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  sub_10012F180(v4[0], v1, v2);
  return sub_10015B1B0(v4);
}

uint64_t sub_10015B1B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[13];
  v6 = v1[14];
  v7 = v1[15];
  sub_10012F180(v5, v6, v7);
  v8 = sub_10012F1C0(v5, v6, v7, v2, v3, v4);
  sub_10012F358(v5, v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10012F358(v2, v3, v4);
  }

  else
  {
    v11 = v1[13];
    v12 = v1[14];
    v13 = v1[15];
    v1[13] = v2;
    v1[14] = v3;
    v1[15] = v4;
    return sub_10012F358(v11, v12, v13);
  }
}

void (*sub_10015B340(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
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
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10015B480;
}

id sub_10015B48C()
{
  type metadata accessor for PDFDocument();
  v0 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_context);

  return v0;
}

uint64_t sub_10015B4EC()
{
  type metadata accessor for PDFDocument();
  v0 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC17PreviewFoundation11PDFDocument_contents);
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  sub_10015BEF0(*v0, v1);
  return v2;
}

uint64_t sub_10015B560()
{

  sub_100103BD8(v0 + 24);
  sub_100103BD8(v0 + 40);

  sub_10012F358(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  v1 = OBJC_IVAR____TtC17PreviewFoundation20PDFDocumentViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10015B614()
{
  sub_10015B560();

  return swift_deallocClassInstance();
}

uint64_t (*sub_10015B670(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100157E4C(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10015B700(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1001597D8(v2);
  return sub_10012F8C8;
}

uint64_t sub_10015B790()
{
  swift_getKeyPath();
  sub_10015BF60(&qword_10020EE90, type metadata accessor for PDFDocumentViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_10015B860(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_100158158(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10015B8D4(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10015A398(v2);
  return sub_10012E7E8;
}

uint64_t (*sub_10015B948(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10015B340(v2);
  return sub_10012F8C8;
}

uint64_t (*sub_10015B9BC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_10015A0A8(v2);
  return sub_10012F8C8;
}

uint64_t sub_10015BA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PDFDocument();
  swift_dynamicCastClassUnconditional();
  sub_10018494C(a2, a3);
  v5 = sub_10015A4E4();
  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  if (*(v5 + v6) == 2)
  {
    sub_100117154();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10015BF60(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10015BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PDFDocument();
  swift_dynamicCastClassUnconditional();
  sub_10018494C(a2, a3);

  return sub_100157840(2u);
}

uint64_t sub_10015BC70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10015BD34()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_10015BE10(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020E070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10015BE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020EE98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015BEF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10015BF04(a1, a2);
  }

  return a1;
}

uint64_t sub_10015BF04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10015BF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015C000()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10015C124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewActionSpec(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015C188()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D200 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002226A0);
  sub_10015C124(v4, v3);
  type metadata accessor for ZoomAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 0;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFB0 = v5;
  return result;
}

uint64_t sub_10015C2B0()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D208 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002226B8);
  sub_10015C124(v4, v3);
  type metadata accessor for ZoomAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFB8 = v5;
  return result;
}

uint64_t sub_10015C3DC()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D210 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002226D0);
  sub_10015C124(v4, v3);
  type metadata accessor for ZoomAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 2;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFC0 = v5;
  return result;
}

uint64_t sub_10015C508()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D218 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002226E8);
  sub_10015C124(v4, v3);
  type metadata accessor for ZoomAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 3;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFC8 = v5;
  return result;
}

uint64_t sub_10015C634()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D220 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_100222700);
  sub_10015C124(v4, v3);
  type metadata accessor for ZoomAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 4;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFD0 = v5;
  return result;
}

uint64_t sub_10015C760()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D1D8 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_100222628);
  sub_10015C124(v4, v3);
  type metadata accessor for RotateAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFD8 = v5;
  return result;
}

uint64_t sub_10015C88C()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D1E0 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_100222640);
  sub_10015C124(v4, v3);
  type metadata accessor for RotateAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 0;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFE0 = v5;
  return result;
}

uint64_t sub_10015C9B4()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D250 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_100222790);
  sub_10015C124(v4, v3);
  type metadata accessor for FlipContentAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 0;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFE8 = v5;
  return result;
}

uint64_t sub_10015CADC()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D258 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002227A8);
  sub_10015C124(v4, v3);
  type metadata accessor for FlipContentAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFF0 = v5;
  return result;
}

uint64_t sub_10015CC08()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D270 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  v4 = sub_100101048(v1, qword_1002227F0);
  sub_10015C124(v4, v3);
  type metadata accessor for GoToAction(0);
  v5 = swift_allocObject();
  v6 = v5 + *(*v5 + 104);
  *v6 = 0;
  *(v6 + 8) = 256;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020EFF8 = v5;
  return result;
}

uint64_t sub_10015CD3C()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D278 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  v4 = sub_100101048(v1, qword_100222808);
  sub_10015C124(v4, v3);
  type metadata accessor for GoToAction(0);
  v5 = swift_allocObject();
  v6 = v5 + *(*v5 + 104);
  *v6 = 1;
  *(v6 + 8) = 256;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F000 = v5;
  return result;
}

uint64_t sub_10015CE74()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D280 != -1)
  {
    v8 = v1;
    swift_once();
    v1 = v8;
  }

  v4 = sub_100101048(v1, qword_100222820);
  sub_10015C124(v4, v3);
  type metadata accessor for GoToAction(0);
  v5 = swift_allocObject();
  v6 = v5 + *(*v5 + 104);
  *v6 = 0;
  *(v6 + 8) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F008 = v5;
  return result;
}

uint64_t sub_10015CFA8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D280 != -1)
  {
    v13 = v5;
    swift_once();
    v5 = v13;
  }

  v8 = a2 & 1;
  v9 = sub_100101048(v5, qword_100222820);
  sub_10015C124(v9, v7);
  type metadata accessor for GoToAction(0);
  v10 = swift_allocObject();
  v11 = v10 + *(*v10 + 104);
  *v11 = a1;
  *(v11 + 8) = v8;
  *(v11 + 9) = 0;
  sub_10015E80C(v7, v10 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  return v10;
}

uint64_t sub_10015D0C8()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D260 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002227C0);
  sub_10015C124(v4, v3);
  type metadata accessor for UndoManagerAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 0;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F010 = v5;
  return result;
}

uint64_t sub_10015D1F0()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D268 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_1002227D8);
  sub_10015C124(v4, v3);
  type metadata accessor for UndoManagerAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F018 = v5;
  return result;
}

uint64_t sub_10015D398(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for PreviewActionSpec(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    v14 = v8;
    swift_once();
    v8 = v14;
  }

  v11 = sub_100101048(v8, a3);
  sub_10015C124(v11, v10);
  type metadata accessor for BasicPreviewAction(0);
  v12 = swift_allocObject();
  result = sub_10015E80C(v10, v12 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  *a4 = v12;
  return result;
}

uint64_t sub_10015D868()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D2A0 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_10020FC50);
  sub_10015C124(v4, v3);
  type metadata accessor for NewDocumentAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 0;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F090 = v5;
  return result;
}

uint64_t sub_10015D990()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D2A8 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_10020FC68);
  sub_10015C124(v4, v3);
  type metadata accessor for NewDocumentAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 1;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F098 = v5;
  return result;
}

uint64_t sub_10015DABC()
{
  v0 = type metadata accessor for PreviewActionSpec(0);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10020D2B0 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_100101048(v1, qword_10020FC80);
  sub_10015C124(v4, v3);
  type metadata accessor for NewDocumentAction(0);
  v5 = swift_allocObject();
  *(v5 + *(*v5 + 104)) = 2;
  result = sub_10015E80C(v3, v5 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  qword_10020F0A0 = v5;
  return result;
}

uint64_t sub_10015DCD8(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t *sub_10015DE18()
{
  v1 = *v0;
  sub_10015E870(v0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t sub_10015DEA0()
{
  sub_10015DE18();

  return swift_deallocClassInstance();
}

uint64_t sub_10015DEF8()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x446E61635377656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974706D4577656ELL;
  }
}

uint64_t sub_10015DF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015EA1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015DF98(uint64_t a1)
{
  v2 = sub_10015E8CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015DFD4(uint64_t a1)
{
  v2 = sub_10015E8CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015E010(uint64_t a1)
{
  v2 = sub_10015E9C8();

  return CodingKey.description.getter(a1, v2);
}