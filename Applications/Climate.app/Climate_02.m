void *sub_100030784()
{
  v1 = *(v0 + 48);
  v16 = *(v1 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = v1 + 32;

  v3 = 0;
  v14 = v1;
  while (v3 < *(v1 + 16))
  {
    v4 = *(v15 + 8 * v3);
    if (v4 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_3;
      }
    }

    if (v5 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      type metadata accessor for ClimateStepper();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v12 = *(v10 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
      }

      else
      {
        v13 = v8;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v1 = v14;
LABEL_3:
    if (++v3 == v16)
    {

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_1000309B8(void *a1)
{
  v2 = [a1 previouslyFocusedView];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [a1 nextFocusedView];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  sub_100033B94();
  if (v6 == 2 || (sub_100033B94(), v7 != 2))
  {

LABEL_11:
    return 1;
  }

  sub_100033B94();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (v13 == 2)
  {
    return 1;
  }

  if ((v13 & 1) == 0)
  {
    return (v9 | v11) == 0;
  }

  if (v9 | v11)
  {
    return 0;
  }

  return (v13 >> 8) & 1;
}

void sub_100030AA8()
{
  sub_100033B94();
  if (v3 != 2)
  {
    v4 = v3;
    v11 = v1;
    v12 = v2;
    swift_beginAccess();
    v5 = *(v0 + 40);
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setEnabled:0];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_13:

    if (v4)
    {
      sub_100033DE0(v11, v12, HIBYTE(v4) & 1);
    }

    else
    {
      sub_100033EDC();
    }
  }
}

uint64_t sub_100030BE8()
{
  sub_100030E6C();
  v1 = *(*(v0 + 48) + 16);
  v18 = *(v0 + 48);

  v17 = v1;
  if (v1)
  {
    v2 = 0;
    do
    {
      if (v2 >= *(v18 + 16))
      {
        goto LABEL_35;
      }

      v3 = *(v18 + 32 + 8 * v2);
      if (v3 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v5 = 0;
        v1 = v3 & 0xC000000000000001;
        do
        {
          if (v1)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v6 = *(v3 + 8 * v5 + 32);
          }

          v7 = v6;
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          type metadata accessor for ClimateStepper();
          v9 = swift_dynamicCastClass();
          if (v9)
          {
            v10 = v9;
            sub_100030FB8(*(v9 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton), v9, 1u, v2, v5);
            sub_100030FB8(*(v10 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton), v10, 0, v2, v5);
          }

          else
          {
            sub_10003240C(v7, v2, v5);
          }

          ++v5;
        }

        while (v8 != v4);
      }

      ++v2;
    }

    while (v2 != v17);
  }

  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v13 = *(v1 + 8 * j + 32);
      }

      v14 = v13;
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v13 setEnabled:0];

      if (v15 == i)
      {
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }
}

uint64_t sub_100030E6C()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 owningView];
      if (v7)
      {
        v8 = v7;
        [v7 removeLayoutGuide:v5];
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_13:

  *(v0 + 40) = _swiftEmptyArrayStorage;
}

void sub_100030FB8(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = 1853321028;
  if (a3)
  {
    v9 = 28757;
  }

  v147 = v9;
  if (a3)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  v144 = ((a4 | a5) == 0) & a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    String.init<A>(describing:)();
    sub_100034270();
    v13 = StringProtocol.capitalized.getter();
    v15 = v14;

    v152 = v13;
    v153 = v15;
    v16._countAndFlagsBits = 0x6564697547;
    v16._object = 0xE500000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v147;
    v17._object = v10;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 95;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 95;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v155 = a5;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    if (!v144)
    {
      if (a3)
      {
        sub_100033678(a4, a5);
      }

      else
      {
        sub_1000040E8(&unk_100114770);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1000D5DA0;
        v23 = *(a2 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
        *(v22 + 32) = v23;
        v24 = v23;
      }
    }

    v25 = type metadata accessor for ClimateFocusGuide();
    v26 = objc_allocWithZone(v25);
    swift_unknownObjectWeakInit();
    v27 = &v26[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v27 = 0;
    v27[1] = 0;
    *&v26[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v26[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v27 = 0;
    v27[1] = 0;
    v149.receiver = v26;
    v149.super_class = v25;
    v28 = v12;
    v29 = objc_msgSendSuper2(&v149, "init");
    v30 = String._bridgeToObjectiveC()();

    [v29 setIdentifier:v30];

    sub_1000040E8(&unk_1001150F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setPreferredFocusEnvironments:isa];

    [v28 addLayoutGuide:v29];
    swift_beginAccess();
    v32 = v29;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1000D5D90;
    v34 = [v32 leadingAnchor];
    v35 = [a1 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v33 + 32) = v36;
    v37 = [v32 trailingAnchor];
    v38 = [a1 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v33 + 40) = v39;
    v40 = [v32 bottomAnchor];
    v41 = [a1 topAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v33 + 48) = v42;
    v43 = [v32 heightAnchor];

    v44 = [v43 constraintEqualToConstant:2.0];
    *(v33 + 56) = v44;
    sub_10005B210(v33);
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (v45)
  {
    v46 = v45;
    LOBYTE(v152) = 2;
    v152 = String.init<A>(describing:)();
    v153 = v47;
    sub_100034270();
    v48 = StringProtocol.capitalized.getter();
    v50 = v49;

    v152 = v48;
    v153 = v50;
    v51._countAndFlagsBits = 0x6564697547;
    v51._object = 0xE500000000000000;
    String.append(_:)(v51);
    v52._countAndFlagsBits = v147;
    v52._object = v10;
    String.append(_:)(v52);
    v53._countAndFlagsBits = 95;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v155 = a4;
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    v55._countAndFlagsBits = 95;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v155 = a5;
    v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v56);

    if ((v144 & 1) == 0)
    {
      if (a3)
      {
        sub_100033678(a4, a5);
      }

      else
      {
        sub_1000040E8(&unk_100114770);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1000D5DA0;
        v58 = *(a2 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
        *(v57 + 32) = v58;
        v59 = v58;
      }
    }

    v60 = type metadata accessor for ClimateFocusGuide();
    v61 = objc_allocWithZone(v60);
    swift_unknownObjectWeakInit();
    v62 = &v61[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v62 = 0;
    v62[1] = 0;
    *&v61[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v61[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v62 = 0;
    v62[1] = 0;
    v150.receiver = v61;
    v150.super_class = v60;
    v63 = v46;
    v64 = objc_msgSendSuper2(&v150, "init");
    v65 = String._bridgeToObjectiveC()();

    [v64 setIdentifier:v65];

    sub_1000040E8(&unk_1001150F0);
    v66 = Array._bridgeToObjectiveC()().super.isa;

    [v64 setPreferredFocusEnvironments:v66];

    [v63 addLayoutGuide:v64];
    swift_beginAccess();
    v67 = v64;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1000D5D90;
    v69 = [v67 topAnchor];
    v70 = [a1 topAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];

    *(v68 + 32) = v71;
    v72 = [v67 bottomAnchor];
    v73 = [a1 bottomAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    *(v68 + 40) = v74;
    v75 = [v67 trailingAnchor];
    v76 = [a1 leadingAnchor];
    v77 = [v75 constraintEqualToAnchor:v76];

    *(v68 + 48) = v77;
    v78 = [v67 widthAnchor];

    v79 = [v78 constraintEqualToConstant:2.0];
    *(v68 + 56) = v79;
    sub_10005B210(v68);
  }

  v80 = swift_unknownObjectWeakLoadStrong();
  if (v80)
  {
    v81 = v80;
    LOBYTE(v152) = 1;
    v152 = String.init<A>(describing:)();
    v153 = v82;
    sub_100034270();
    v83 = StringProtocol.capitalized.getter();
    v85 = v84;

    v152 = v83;
    v153 = v85;
    v86._countAndFlagsBits = 0x6564697547;
    v86._object = 0xE500000000000000;
    String.append(_:)(v86);
    v87._countAndFlagsBits = v147;
    v87._object = v10;
    String.append(_:)(v87);
    v88._countAndFlagsBits = 95;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    v155 = a4;
    v89._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v89);

    v90._countAndFlagsBits = 95;
    v90._object = 0xE100000000000000;
    String.append(_:)(v90);
    v155 = a5;
    v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v91);

    sub_1000322E8(a2, a3 & 1, a4, a5);
    v92 = type metadata accessor for ClimateFocusGuide();
    v93 = objc_allocWithZone(v92);
    swift_unknownObjectWeakInit();
    v94 = &v93[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v94 = 0;
    v94[1] = 0;
    *&v93[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v93[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v94 = 0;
    v94[1] = 0;
    v151.receiver = v93;
    v151.super_class = v92;
    v95 = v81;
    v96 = objc_msgSendSuper2(&v151, "init");
    v97 = String._bridgeToObjectiveC()();

    [v96 setIdentifier:v97];

    sub_1000040E8(&unk_1001150F0);
    v98 = Array._bridgeToObjectiveC()().super.isa;

    [v96 setPreferredFocusEnvironments:v98];

    [v95 addLayoutGuide:v96];
    swift_beginAccess();
    v99 = v96;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_1000D5D90;
    v101 = [v99 leadingAnchor];
    v102 = [a1 leadingAnchor];
    v103 = [v101 constraintEqualToAnchor:v102];

    *(v100 + 32) = v103;
    v104 = [v99 trailingAnchor];
    v105 = [a1 trailingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];

    *(v100 + 40) = v106;
    v107 = [v99 topAnchor];
    v108 = [a1 bottomAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    *(v100 + 48) = v109;
    v110 = [v99 heightAnchor];

    v111 = [v110 constraintEqualToConstant:2.0];
    *(v100 + 56) = v111;
    sub_10005B210(v100);
  }

  v112 = swift_unknownObjectWeakLoadStrong();
  if (v112)
  {
    v113 = v112;
    LOBYTE(v152) = 3;
    v152 = String.init<A>(describing:)();
    v153 = v114;
    sub_100034270();
    v115 = StringProtocol.capitalized.getter();
    v117 = v116;

    v152 = v115;
    v153 = v117;
    v118._countAndFlagsBits = 0x6564697547;
    v118._object = 0xE500000000000000;
    String.append(_:)(v118);
    v119._countAndFlagsBits = v147;
    v119._object = v10;
    String.append(_:)(v119);

    v120._countAndFlagsBits = 95;
    v120._object = 0xE100000000000000;
    String.append(_:)(v120);
    v155 = a4;
    v121._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v121);

    v122._countAndFlagsBits = 95;
    v122._object = 0xE100000000000000;
    String.append(_:)(v122);
    v155 = a5;
    v123._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v123);

    sub_100032368(a2, a3 & 1, a4, a5);
    v124 = type metadata accessor for ClimateFocusGuide();
    v125 = objc_allocWithZone(v124);
    swift_unknownObjectWeakInit();
    v126 = &v125[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v126 = 0;
    v126[1] = 0;
    *&v125[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v125[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v126 = 0;
    v126[1] = 0;
    v154.receiver = v125;
    v154.super_class = v124;
    v127 = v113;
    v128 = objc_msgSendSuper2(&v154, "init");
    v129 = String._bridgeToObjectiveC()();

    [v128 setIdentifier:v129];

    sub_1000040E8(&unk_1001150F0);
    v130 = Array._bridgeToObjectiveC()().super.isa;

    [v128 setPreferredFocusEnvironments:v130];

    [v127 addLayoutGuide:v128];
    swift_beginAccess();
    v131 = v128;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1000D5D90;
    v133 = [v131 topAnchor];
    v134 = [a1 topAnchor];
    v135 = [v133 constraintEqualToAnchor:v134];

    *(v132 + 32) = v135;
    v136 = [v131 bottomAnchor];
    v137 = [a1 bottomAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];

    *(v132 + 40) = v138;
    v139 = [v131 leadingAnchor];
    v140 = [a1 trailingAnchor];
    v141 = [v139 constraintEqualToAnchor:v140];

    *(v132 + 48) = v141;
    v142 = [v131 widthAnchor];

    v143 = [v142 constraintEqualToConstant:2.0];
    *(v132 + 56) = v143;
    sub_10005B210(v132);
  }

  else
  {
  }
}

uint64_t sub_1000322E8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 || (result = sub_100033840(a3, a4)) == 0)
  {
    sub_1000040E8(&unk_100114770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000D5DA0;
    v7 = *(a1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    *(v6 + 32) = v7;
    v8 = v7;
    return v6;
  }

  return result;
}

uint64_t sub_100032368(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 || (result = sub_100033840(a3, a4)) == 0 && (result = sub_1000339D4(a3)) == 0)
  {
    sub_1000040E8(&unk_100114770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000D5DA0;
    v6 = *(a1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    *(v5 + 32) = v6;
    v7 = v6;
    return v5;
  }

  return result;
}

void sub_10003240C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v135 = (a2 | a3) == 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    String.init<A>(describing:)();
    sub_100034270();
    v10 = StringProtocol.capitalized.getter();
    v12 = v11;

    v139 = v10;
    v140 = v12;
    v13._countAndFlagsBits = 0x6564697547;
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 95;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 95;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v142 = a3;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    if (!v135)
    {
      sub_100033678(a2, a3);
    }

    v18 = type metadata accessor for ClimateFocusGuide();
    v19 = objc_allocWithZone(v18);
    swift_unknownObjectWeakInit();
    v20 = &v19[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v20 = 0;
    v20[1] = 0;
    *&v19[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v19[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v20 = 0;
    v20[1] = 0;
    v136.receiver = v19;
    v136.super_class = v18;
    v21 = v9;
    v22 = objc_msgSendSuper2(&v136, "init");
    v23 = String._bridgeToObjectiveC()();

    [v22 setIdentifier:v23];

    sub_1000040E8(&unk_1001150F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setPreferredFocusEnvironments:isa];

    [v21 addLayoutGuide:v22];
    swift_beginAccess();
    v25 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000D5D90;
    v27 = [v25 leadingAnchor];
    v28 = [a1 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v25 trailingAnchor];
    v31 = [a1 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v25 bottomAnchor];
    v34 = [a1 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v26 + 48) = v35;
    v36 = [v25 heightAnchor];

    v37 = [v36 constraintEqualToConstant:2.0];
    *(v26 + 56) = v37;
    sub_10005B210(v26);
  }

  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = v38;
    LOBYTE(v139) = 2;
    v139 = String.init<A>(describing:)();
    v140 = v40;
    sub_100034270();
    v41 = StringProtocol.capitalized.getter();
    v43 = v42;

    v139 = v41;
    v140 = v43;
    v44._countAndFlagsBits = 0x6564697547;
    v44._object = 0xE500000000000000;
    String.append(_:)(v44);
    v45._countAndFlagsBits = 95;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v142 = a2;
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 95;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v142 = a3;
    v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v48);

    if (!v135)
    {
      sub_100033678(a2, a3);
    }

    v49 = type metadata accessor for ClimateFocusGuide();
    v50 = objc_allocWithZone(v49);
    swift_unknownObjectWeakInit();
    v51 = &v50[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v51 = 0;
    v51[1] = 0;
    *&v50[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v50[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v51 = 0;
    v51[1] = 0;
    v137.receiver = v50;
    v137.super_class = v49;
    v52 = v39;
    v53 = objc_msgSendSuper2(&v137, "init");
    v54 = String._bridgeToObjectiveC()();

    [v53 setIdentifier:v54];

    sub_1000040E8(&unk_1001150F0);
    v55 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setPreferredFocusEnvironments:v55];

    [v52 addLayoutGuide:v53];
    swift_beginAccess();
    v56 = v53;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1000D5D90;
    v58 = [v56 topAnchor];
    v59 = [a1 topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v57 + 32) = v60;
    v61 = [v56 bottomAnchor];
    v62 = [a1 bottomAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v57 + 40) = v63;
    v64 = [v56 trailingAnchor];
    v65 = [a1 leadingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    *(v57 + 48) = v66;
    v67 = [v56 widthAnchor];

    v68 = [v67 constraintEqualToConstant:2.0];
    *(v57 + 56) = v68;
    sub_10005B210(v57);
  }

  v69 = swift_unknownObjectWeakLoadStrong();
  if (v69)
  {
    v70 = v69;
    LOBYTE(v139) = 1;
    v139 = String.init<A>(describing:)();
    v140 = v71;
    sub_100034270();
    v72 = StringProtocol.capitalized.getter();
    v74 = v73;

    v139 = v72;
    v140 = v74;
    v75._countAndFlagsBits = 0x6564697547;
    v75._object = 0xE500000000000000;
    String.append(_:)(v75);
    v76._countAndFlagsBits = 95;
    v76._object = 0xE100000000000000;
    String.append(_:)(v76);
    v142 = a2;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 95;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    v142 = a3;
    v79._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v79);

    if (!sub_100033840(a2, a3))
    {
      sub_1000040E8(&unk_100114770);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1000D5DA0;
      *(v80 + 32) = a1;
      v81 = a1;
    }

    v82 = type metadata accessor for ClimateFocusGuide();
    v83 = objc_allocWithZone(v82);
    swift_unknownObjectWeakInit();
    v84 = &v83[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v84 = 0;
    v84[1] = 0;
    *&v83[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v83[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v84 = 0;
    v84[1] = 0;
    v138.receiver = v83;
    v138.super_class = v82;
    v85 = v70;
    v86 = objc_msgSendSuper2(&v138, "init");
    v87 = String._bridgeToObjectiveC()();

    [v86 setIdentifier:v87];

    sub_1000040E8(&unk_1001150F0);
    v88 = Array._bridgeToObjectiveC()().super.isa;

    [v86 setPreferredFocusEnvironments:v88];

    [v85 addLayoutGuide:v86];
    swift_beginAccess();
    v89 = v86;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1000D5D90;
    v91 = [v89 leadingAnchor];
    v92 = [a1 leadingAnchor];
    v93 = [v91 constraintEqualToAnchor:v92];

    *(v90 + 32) = v93;
    v94 = [v89 trailingAnchor];
    v95 = [a1 trailingAnchor];
    v96 = [v94 constraintEqualToAnchor:v95];

    *(v90 + 40) = v96;
    v97 = [v89 topAnchor];
    v98 = [a1 bottomAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];

    *(v90 + 48) = v99;
    v100 = [v89 heightAnchor];

    v101 = [v100 constraintEqualToConstant:2.0];
    *(v90 + 56) = v101;
    sub_10005B210(v90);
  }

  v102 = swift_unknownObjectWeakLoadStrong();
  if (v102)
  {
    v103 = v102;
    LOBYTE(v139) = 3;
    v139 = String.init<A>(describing:)();
    v140 = v104;
    sub_100034270();
    v105 = StringProtocol.capitalized.getter();
    v107 = v106;

    v139 = v105;
    v140 = v107;
    v108._countAndFlagsBits = 0x6564697547;
    v108._object = 0xE500000000000000;
    String.append(_:)(v108);
    v109._countAndFlagsBits = 95;
    v109._object = 0xE100000000000000;
    String.append(_:)(v109);
    v142 = a2;
    v110._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v110);

    v111._countAndFlagsBits = 95;
    v111._object = 0xE100000000000000;
    String.append(_:)(v111);
    v142 = a3;
    v112._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v112);

    if (!sub_100033840(a2, a3) && !sub_1000339D4(a2))
    {
      sub_1000040E8(&unk_100114770);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1000D5DA0;
      *(v133 + 32) = a1;
      v134 = a1;
    }

    v113 = type metadata accessor for ClimateFocusGuide();
    v114 = objc_allocWithZone(v113);
    swift_unknownObjectWeakInit();
    v115 = &v114[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
    *v115 = 0;
    v115[1] = 0;
    *&v114[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
    v114[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
    *v115 = 0;
    v115[1] = 0;
    v141.receiver = v114;
    v141.super_class = v113;
    v116 = v103;
    v117 = objc_msgSendSuper2(&v141, "init");
    v118 = String._bridgeToObjectiveC()();

    [v117 setIdentifier:v118];

    sub_1000040E8(&unk_1001150F0);
    v119 = Array._bridgeToObjectiveC()().super.isa;

    [v117 setPreferredFocusEnvironments:v119];

    [v116 addLayoutGuide:v117];
    swift_beginAccess();
    v120 = v117;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000040E8(&unk_100114770);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1000D5D90;
    v122 = [v120 topAnchor];
    v123 = [a1 topAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];

    *(v121 + 32) = v124;
    v125 = [v120 bottomAnchor];
    v126 = [a1 bottomAnchor];
    v127 = [v125 constraintEqualToAnchor:v126];

    *(v121 + 40) = v127;
    v128 = [v120 leadingAnchor];
    v129 = [a1 trailingAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];

    *(v121 + 48) = v130;
    v131 = [v120 widthAnchor];

    v132 = [v131 constraintEqualToConstant:2.0];
    *(v121 + 56) = v132;
    sub_10005B210(v121);
  }
}

uint64_t sub_100033678(uint64_t result, uint64_t a2)
{
  if (!a2 && result >= 1)
  {
    v4 = *(v3 + 48);
    if (*(v4 + 16) < result)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v4 + 8 * result + 24);
      if (!(v2 >> 62))
      {
        result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          goto LABEL_6;
        }

        return _swiftEmptyArrayStorage;
      }
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_6:
      v5 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        if ((v2 & 0xC000000000000001) == 0)
        {
          if ((v5 & 0x8000000000000000) == 0)
          {
            if (v5 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v6 = v2 + 8 * v5;
LABEL_17:
              v9 = *(v6 + 32);
              goto LABEL_18;
            }

LABEL_31:
            __break(1u);
            return result;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    return _swiftEmptyArrayStorage;
  }

  if (a2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v7 = *(v3 + 48);
  if (*(v7 + 16) <= result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = *(v7 + 8 * result + 32);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      v6 = v8 + 8 * (a2 - 1);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_27:

  v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_18:
  type metadata accessor for ClimateStepper();
  v10 = swift_dynamicCastClass();
  sub_1000040E8(&unk_100114770);
  result = swift_allocObject();
  *(result + 16) = xmmword_1000D5DA0;
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    *(result + 32) = v11;
    v12 = result;
    v13 = v11;

    return v12;
  }

  else
  {
    *(result + 32) = v9;
  }

  return result;
}

uint64_t sub_100033840(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 48);
  if (*(v3 + 16) <= result)
  {
    goto LABEL_7;
  }

  if (result < 0)
  {
    goto LABEL_21;
  }

  v4 = *(v3 + 8 * result + 32);
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if (v7 == a2)
      {
        return 0;
      }

LABEL_7:
      v8 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v9 = *(v2 + 48);
      if (*(v9 + 16) <= result)
      {
        goto LABEL_17;
      }

      v2 = *(v9 + 8 * result + 32);
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_18;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v2 + 8 * v8 + 32);
        goto LABEL_13;
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v18 = result;
      v15 = a2;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v15;
      v17 = v16;
      result = v18;
      v6 = __OFSUB__(v17, 1);
      v7 = v17 - 1;
      if (v6)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_13:
    type metadata accessor for ClimateStepper();
    v11 = swift_dynamicCastClass();
    sub_1000040E8(&unk_100114770);
    result = swift_allocObject();
    *(result + 16) = xmmword_1000D5DA0;
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
      *(result + 32) = v12;
      v13 = result;
      v14 = v12;

      return v13;
    }

    else
    {
      *(result + 32) = v10;
    }
  }

  return result;
}

uint64_t sub_1000339D4(uint64_t a1)
{
  v3 = *(v2 + 48);
  v4 = *(v3 + 16);
  if (v4 - 1 == a1)
  {
    return 0;
  }

  v6 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v6 >= v4)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v1 = *(v3 + 8 * v6 + 32);
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return result;
  }

LABEL_7:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v7 = *(v1 + 32);
  }

  type metadata accessor for ClimateStepper();
  v8 = swift_dynamicCastClass();
  sub_1000040E8(&unk_100114770);
  result = swift_allocObject();
  *(result + 16) = xmmword_1000D5DA0;
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
    *(result + 32) = v9;
    v10 = result;
    v11 = v9;

    return v10;
  }

  else
  {
    *(result + 32) = v7;
  }

  return result;
}

uint64_t sub_100033B18()
{
  sub_1000289EC(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100033B94()
{
  v1 = *(*(v0 + 48) + 16);

  v16 = v1;
  if (v1)
  {
    v3 = 0;
    v17 = v2;
    v18 = v2 + 32;
    while (v3 < *(v2 + 16))
    {
      v19 = v3;
      v4 = *(v18 + 8 * v3);
      if (v4 >> 62)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v5)
      {
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          sub_100034224();
          if (static NSObject.== infix(_:_:)())
          {
            goto LABEL_23;
          }

          type metadata accessor for ClimateStepper();
          v10 = swift_dynamicCastClass();
          if (v10)
          {
            v11 = v10;
            v12 = *(v10 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
            v13 = static NSObject.== infix(_:_:)();

            if (v13)
            {
LABEL_23:

              return;
            }

            v14 = *(v11 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
            v15 = static NSObject.== infix(_:_:)();

            if (v15)
            {

              return;
            }
          }

          else
          {
          }

          ++v6;
          if (v9 == v5)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
        break;
      }

LABEL_3:
      v3 = v19 + 1;

      v2 = v17;
      if (v19 + 1 == v16)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
  }
}

uint64_t sub_100033DE0(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 1853321028;
  if (a3)
  {
    v3 = 28757;
  }

  v4 = 0xE400000000000000;
  if (a3)
  {
    v4 = 0xE200000000000000;
  }

  v10 = v3;
  v11 = v4;
  v5._countAndFlagsBits = 95;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 95;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  sub_100033FAC(v10, v11);
}

uint64_t sub_100033EDC()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 95;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  sub_100033FAC(95, 0xE100000000000000);
}

uint64_t sub_100033FAC(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 40);
  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12._countAndFlagsBits = a1;
      v12._object = a2;
      LOBYTE(v11) = String.hasSuffix(_:)(v12);

      if (v11)
      {
        [v10 setEnabled:1];
      }
    }
  }

  return result;
}

void *sub_100034100(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[5] = _swiftEmptyArrayStorage;
  v2[6] = _swiftEmptyArrayStorage;
  v2[7] = 0;
  swift_unknownObjectWeakAssign();
  v2[6] = a2;

  sub_100030BE8();
  sub_1000305BC();
  return v2;
}

void sub_10003417C(void *a1)
{
  v2 = [a1 nextFocusedView];
  if (v2)
  {
    v6 = v2;
    sub_100033B94();
    if (v3 != 2)
    {
      v4 = *(v1 + 56);
      *(v1 + 56) = v6;
      v5 = v6;

      sub_100030AA8();
    }
  }
}

unint64_t sub_100034224()
{
  result = qword_100115110;
  if (!qword_100115110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100115110);
  }

  return result;
}

unint64_t sub_100034270()
{
  result = qword_1001156B0;
  if (!qword_1001156B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001156B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FocusDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100034418()
{
  result = qword_1001156B8;
  if (!qword_1001156B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001156B8);
  }

  return result;
}

uint64_t sub_10003446C()
{
  v1 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots;
  swift_beginAccess();
  v2 = *&v1[v0];
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
    v5 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
    v6 = [*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) maximum];
    v7 = [v6 intValue];

    v8 = v5 < 0;
    v35 = v4;
    v9 = *(v0 + v4);
    if (v8)
    {
      v10 = v7 & (v7 >> 31);
    }

    else
    {
      v10 = v7 & ~(v7 >> 31);
    }

    v11 = [*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) minimum];
    v12 = [v11 intValue];

    v13 = v12 & ~(v12 >> 31);
    if (v9 < 0)
    {
      v13 = v12 & (v12 >> 31);
    }

    v14 = __OFSUB__(v10, v13);
    v15 = v10 - v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      if (i != v15)
      {
        v16 = *(v0 + v35);
        v17 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range);
        sub_100034D30(v16, v17, 4.0);
      }

      i = *&v1[v0];
      if (!(i >> 62))
      {
        v18 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }
    }

    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
    v34 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;
    v19 = OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig;

    if (!v18)
    {
      break;
    }

    v20 = 0;
    v33 = v0 + v19;
    while (1)
    {
      if ((i & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v26 = *(i + 8 * v20 + 32);
      }

      v1 = v26;
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v28 = *(v0 + v35);
      v29 = *(v0 + v34);
      if (v28 < 0)
      {
        v21 = [v29 maximum];
        v22 = [v21 intValue];

        v23 = v28 - (v22 & (v22 >> 31));
        if (v23 < 0)
        {
          v23 = (v22 & (v22 >> 31)) - v28;
        }
      }

      else
      {
        v30 = [v29 minimum];
        v31 = [v30 intValue];

        v23 = v28 - (v31 & ~(v31 >> 31));
      }

      v24 = v20 < v23;
      v25 = 8;
      if (v24)
      {
        v25 = 16;
      }

      [v1 setBackgroundColor:*(v33 + v25)];

      ++v20;
      if (v27 == v18)
      {
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }
}

uint64_t sub_100034750(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue) = a1;
  sub_10003C32C(v2);

  return sub_10003446C();
}

uint64_t sub_100034790(void *a1, void *a2, void *a3, void *a4)
{
  v8 = (v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v9 = (v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 8);
  v10 = *v9;
  v11 = (v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 16);
  v12 = *v11;
  v13 = *(v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  *v8 = a1;
  v51 = v11;
  v52 = v9;
  *v9 = a2;
  *v11 = a3;
  v8[3] = a4;
  v14 = a3;
  swift_bridgeObjectRetain_n();
  v15 = a1;
  v16 = a2;
  v47 = v14;
  v48 = v15;
  v46 = v16;

  v53 = v4;
  v17 = *(v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v18 = [objc_opt_self() clearColor];
  v19 = *v8;
  v20 = (v17 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v21 = *(v17 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v22 = *(v17 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v23 = *(v17 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  *v20 = v18;
  v20[1] = v19;
  v20[2] = &_swiftEmptyDictionarySingleton;
  sub_10000827C(0, &qword_100115110);
  v24 = v19;
  v25 = v18;
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (sub_10007DB08(&_swiftEmptyDictionarySingleton, v23), (v26))
  {

    v22 = v46;
    v21 = v48;
  }

  else
  {
    ClimateButton.refreshColorConfig()();
  }

  v27 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots;
  swift_beginAccess();
  v28 = *(v4 + v27);
  v45 = a4;
  if (v28 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v50 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
    v49 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;

    if (!i)
    {
      break;
    }

    v30 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v36 = *(v28 + 8 * v30 + 32);
      }

      v37 = v36;
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      v39 = i;
      v40 = *(v53 + v50);
      v41 = *(v53 + v49);
      if (v40 < 0)
      {
        v31 = [v41 maximum];
        v32 = [v31 intValue];

        v33 = v40 - (v32 & (v32 >> 31));
        if (v33 < 0)
        {
          v33 = (v32 & (v32 >> 31)) - v40;
        }
      }

      else
      {
        v42 = [v41 minimum];
        v43 = [v42 intValue];

        v33 = v40 - (v43 & ~(v43 >> 31));
      }

      v34 = v30 < v33;
      v35 = v52;
      if (v34)
      {
        v35 = v51;
      }

      [v37 setBackgroundColor:{*v35, v45}];

      ++v30;
      i = v39;
      if (v38 == v39)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_22:
}

id sub_100034B54(char a1)
{
  v2 = OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted;
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted) = a1;
  if (a1)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setAlpha:v3];
  v4 = *(v1 + OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView);
  if (*(v1 + v2))
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  return [v4 setAlpha:v5];
}

void sub_100034BF0()
{
  v1 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
  v3 = [*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) maximum];
  v4 = [v3 intValue];

  v5 = *(v0 + v1);
  if (v2 >= 0)
  {
    v6 = v4 & ~(v4 >> 31);
  }

  else
  {
    v6 = v4 & (v4 >> 31);
  }

  v7 = [*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) minimum];
  v8 = [v7 intValue];

  v9 = v8 & ~(v8 >> 31);
  if (v5 < 0)
  {
    v9 = v8 & (v8 >> 31);
  }

  v10 = v6 - v9;
  if (__OFSUB__(v6, v9))
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = [*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) step];
  v12 = [v11 intValue];

  if (!v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (v10 == 0x80000000 && v12 == -1)
  {
    goto LABEL_15;
  }
}

void sub_100034D30(int a1, void *a2, double a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView;
  [*&v3[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView] removeFromSuperview];
  sub_10000827C(0, &unk_100116370);
  v8 = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v9 = *&v3[v7];
  *&v3[v7] = v8;

  v10 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots;
  swift_beginAccess();
  *&v3[v10] = &_swiftEmptyArrayStorage;

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
  v12 = *&v3[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue];
  v13 = [*&v3[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] maximum];
  v14 = [v13 intValue];

  v15 = v12 < 0;
  v78 = v11;
  v16 = *&v4[v11];
  if (v15)
  {
    v17 = v14 & (v14 >> 31);
  }

  else
  {
    v17 = v14 & ~(v14 >> 31);
  }

  v18 = [*&v4[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] minimum];
  v19 = [v18 intValue];

  v20 = v19 & ~(v19 >> 31);
  if (v16 < 0)
  {
    v20 = v19 & (v19 >> 31);
  }

  v21 = v17 - v20;
  if (__OFSUB__(v17, v20))
  {
    goto LABEL_55;
  }

  v22 = [a2 step];
  v18 = [v22 intValue];

  if (!v18)
  {
    goto LABEL_56;
  }

  if (v21 == 0x80000000 && v18 == -1)
  {
    goto LABEL_57;
  }

  v24 = v21 / v18;
  if (v21 / v18 >= 4)
  {
    static os_log_type_t.error.getter();
    sub_1000040E8(&qword_100115728);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000D5BA0;
    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = 3;
    v26 = *&v4[v10];
    *(v25 + 96) = sub_1000040E8(&qword_100115730);
    *(v25 + 104) = sub_100035F18();
    *(v25 + 72) = v26;
    sub_10000827C(0, &qword_1001149B0);

    v27 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100034BF0();
  if (v28)
  {
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v29 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    if (v24 >= 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = v24;
    }

    v77 = v30;
    v31 = static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v18 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v18, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      *(v32 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v18, v31, "Drawing %{public}d dots.", v32, 8u);
    }

    if (v24 < 0)
    {
      goto LABEL_58;
    }

    v81 = v7;
    if (v24)
    {
      v80 = objc_opt_self();
      v33 = &v4[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
      v34 = type metadata accessor for ClimateDotsProgressView.Dot();
      v35 = v77;
      do
      {
        if (!v35)
        {
          __break(1u);
          goto LABEL_53;
        }

        v84.receiver = objc_allocWithZone(v34);
        v84.super_class = v34;
        v36 = objc_msgSendSuper2(&v84, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v36 _setCornerRadius:a3 * 0.5];
        sub_1000040E8(&unk_100114770);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1000D58A0;
        v38 = [v36 widthAnchor];
        v39 = [v38 constraintEqualToConstant:a3];

        *(v37 + 32) = v39;
        v40 = [v36 heightAnchor];

        v41 = [v40 constraintEqualToConstant:a3];
        *(v37 + 40) = v41;
        sub_10000827C(0, &qword_1001149C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v80 activateConstraints:isa];

        v43 = *(v33 + 1);
        v44 = v36;
        [v44 setBackgroundColor:v43];
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v4[v10] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v10] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v18 = &v4[v10];
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [*&v4[v81] addArrangedSubview:v44];

        --v35;
      }

      while (v35);
    }

    [*&v4[v81] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v4[v81] setDistribution:3];
    [v4 addSubview:*&v4[v81]];
    v45 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000D5D90;
    v47 = [*&v4[v81] topAnchor];
    v48 = [*&v4[OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView] bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    *(v46 + 32) = v49;
    v50 = [*&v4[v81] widthAnchor];
    v51 = [v50 constraintEqualToConstant:v77 * a3 + (a3 + -1.0) * (v77 + -1.0)];

    *(v46 + 40) = v51;
    v52 = [*&v4[v81] heightAnchor];
    v53 = [v52 constraintEqualToConstant:a3];

    *(v46 + 48) = v53;
    v54 = [*&v4[v81] centerXAnchor];
    v55 = [v4 centerXAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v46 + 56) = v56;
    sub_10000827C(0, &qword_1001149C0);
    v57 = Array._bridgeToObjectiveC()().super.isa;

    [v45 activateConstraints:v57];

    if (a1)
    {
      v18 = *&v4[v10];
      if (v18 >> 62)
      {
        goto LABEL_59;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v82 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;
        v59 = OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig;

        if (!i)
        {
          break;
        }

        v60 = 0;
        v79 = &v4[v59];
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v60 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v66 = *(v18 + 8 * v60 + 32);
          }

          v67 = v66;
          v68 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          v69 = *&v4[v78];
          v70 = *&v4[v82];
          if (v69 < 0)
          {
            v71 = [v70 maximum];
            v72 = [v71 intValue];

            v63 = v69 - (v72 & (v72 >> 31));
            if (v63 < 0)
            {
              v63 = (v72 & (v72 >> 31)) - v69;
            }
          }

          else
          {
            v61 = [v70 minimum];
            v62 = [v61 intValue];

            v63 = v69 - (v62 & ~(v62 >> 31));
          }

          v64 = v60 < v63;
          v65 = 8;
          if (v64)
          {
            v65 = 16;
          }

          [(objc_class *)v67 setBackgroundColor:*&v79[v65]];

          ++v60;
          if (v68 == i)
          {
            goto LABEL_46;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        ;
      }

LABEL_46:
    }

    else
    {
      sub_100034BF0();
      if ((v73 & 1) == 0)
      {
        v74 = qword_100113E68;
        v75 = *&v4[v81];
        if (v74 != -1)
        {
          swift_once();
        }

        v83[0] = *byte_10011AE10;
        v83[1] = *&byte_10011AE10[16];
        v83[2] = *&byte_10011AE10[32];
        [v75 setTransform:v83];

        [*&v4[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] setConstant:0.0];
        [v4 layoutIfNeeded];
      }
    }
  }
}

void sub_1000357D0(char a1)
{
  sub_100034BF0();
  if ((v3 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView;
    v5 = *&v1[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView];
    v12[0] = 0x3FF0000000000000;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = 0x3FF0000000000000;
    v12[4] = 0;
    v12[5] = 0;
    [v5 setTransform:v12];
    [*&v1[v4] setAlpha:0.0];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    if (a1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100035F10;
      *(v7 + 24) = v6;
      v8 = v1;

      [v8 _removeAllAnimations:1];
      v9 = sub_10000827C(0, &qword_100115400);
      __chkstk_darwin(v9);
      static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
    }

    else
    {
      v10 = *&v1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
      v11 = v1;
      if (v10)
      {
        [v10 setConstant:-3.0];
      }

      [v1 layoutIfNeeded];
      [*&v1[v4] setAlpha:1.0];
    }
  }
}

id sub_1000359C4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
  if (v2)
  {
    [v2 setConstant:-3.0];
  }

  [a1 layoutIfNeeded];
  v3 = *&a1[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView];

  return [v3 setAlpha:1.0];
}

void sub_100035A40(char a1)
{
  sub_100034BF0();
  if ((v3 & 1) == 0)
  {
    v4 = qword_100113E68;
    v5 = *&v1[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView];
    if (v4 != -1)
    {
      swift_once();
    }

    v12[0] = *byte_10011AE10;
    v12[1] = *&byte_10011AE10[16];
    v12[2] = *&byte_10011AE10[32];
    [v5 setTransform:v12];

    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    if (a1)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = sub_100035E50;
      *(v7 + 24) = v6;
      v8 = v1;

      [v8 _removeAllAnimations:1];
      v9 = sub_10000827C(0, &qword_100115400);
      __chkstk_darwin(v9);
      static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
    }

    else
    {
      v10 = *&v1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
      v11 = v1;
      if (v10)
      {
        [v10 setConstant:0.0];
      }

      [v1 layoutIfNeeded];
    }
  }
}

uint64_t sub_100035C50()
{
}

id sub_100035DBC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100035E18()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100035E50()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
  if (v2)
  {
    [v2 setConstant:0.0];
  }

  return [v1 layoutIfNeeded];
}

uint64_t sub_100035EB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035F18()
{
  result = qword_100115738;
  if (!qword_100115738)
  {
    sub_1000082C4(&qword_100115730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115738);
  }

  return result;
}

uint64_t sub_100035F8C(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115840);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  sub_1000287E8(a1, v7, &qword_100115840);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100008904(v7, &qword_100115840);
  }

  v50 = *(v9 + 32);
  v51 = v9 + 32;
  v50(v16, v7, v8);
  v18 = static os_log_type_t.debug.getter();
  v19 = v16;
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v20 = qword_10011B1C0;
  v21 = *(v9 + 16);
  v21(v14, v19, v8);
  if (os_log_type_enabled(v20, v18))
  {
    v22 = swift_slowAlloc();
    v49 = v19;
    v47 = v18;
    v23 = v22;
    v24 = swift_slowAlloc();
    v48 = v21;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136315138;
    v26 = CAUVehicleLayoutKey.rawValue.getter();
    v46 = v20;
    v28 = v27;
    v29 = *(v9 + 8);
    v52 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v29;
    v29(v14, v8);
    v30 = sub_10000835C(v26, v28, aBlock);

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v46, v47, "Disabled state timer created for layoutKey: %s", v23, 0xCu);
    sub_100006B9C(v25);
    v21 = v48;

    v19 = v49;
  }

  else
  {
    v31 = *(v9 + 8);
    v52 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v31;
    v31(v14, v8);
  }

  v21(v5, v19, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  v32 = v55;
  sub_10003653C(v5);
  sub_100008904(v5, &qword_100115840);
  v33 = objc_opt_self();
  [objc_opt_self() autoGroupTimer];
  v35 = v34;
  v36 = v32;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v54;
  v21(v54, v19, v8);
  v39 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v50((v40 + v39), v38, v8);
  aBlock[4] = sub_10003A47C;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000AD34C;
  aBlock[3] = &unk_1000F7C98;
  v41 = _Block_copy(aBlock);

  v42 = [v33 scheduledTimerWithTimeInterval:0 repeats:v41 block:v35];
  _Block_release(v41);
  v43 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_timerForLayoutKey;
  swift_beginAccess();
  v44 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v36 + v43);
  *(v36 + v43) = 0x8000000000000000;
  sub_10004B624(v42, v19, isUniquelyReferenced_nonNull_native);
  *(v36 + v43) = v56;
  swift_endAccess();

  return v53(v19, v8);
}

uint64_t sub_10003653C(uint64_t a1)
{
  v3 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v19[-v11];
  sub_1000287E8(a1, v5, &qword_100115840);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100008904(v5, &qword_100115840);
  }

  (*(v7 + 32))(v12, v5, v6);
  v14 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_timerForLayoutKey;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (*(v15 + 16))
  {

    v16 = sub_10007DEE8(v12);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      [v18 invalidate];
      (*(v7 + 16))(v10, v12, v6);
      swift_beginAccess();
      sub_10007853C(1, v10);
      swift_endAccess();
    }

    else
    {
    }
  }

  return (*(v7 + 8))(v12, v6);
}

Swift::Int sub_1000367D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000368B0()
{
  String.hash(into:)();
}

Swift::Int sub_100036978()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100036A50@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003A2EC(*a1);
  *a2 = result;
  return result;
}

void sub_100036A80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6710895;
  v5 = 0xE800000000000000;
  v6 = 0x64656C6261736964;
  v7 = 0xE700000000000000;
  v8 = 0x68736572666572;
  if (v2 != 3)
  {
    v8 = 0x676E696E6E697073;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65646F4D6F747561;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

id sub_100036BD8()
{
  *&v0[OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_disabledStateTimer] = 0;
  v1 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_observersForLayoutKey;
  *&v0[v1] = sub_10004F7F0(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_timerForLayoutKey;
  *&v0[v2] = sub_10004F814(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsForLayoutKey;
  *&v0[v3] = sub_10004F9FC(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
  *&v0[v4] = sub_10004FC00(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
  *&v0[v5] = sub_10004FC24(_swiftEmptyArrayStorage);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ClimateGroupedVentsAutoModeHandler();
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100036CB8()
{
  v1 = sub_10004F7F0(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_observersForLayoutKey;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = sub_10004F814(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_timerForLayoutKey;
  swift_beginAccess();
  *(v0 + v4) = v3;

  v5 = sub_10004F9FC(_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsForLayoutKey;
  swift_beginAccess();
  *(v0 + v6) = v5;

  v7 = sub_10004FC00(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
  swift_beginAccess();
  *(v0 + v8) = v7;

  v9 = sub_10004FC24(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
  swift_beginAccess();
  *(v0 + v10) = v9;
}

id sub_100036DF0(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  [v10 registerObserver:a2];
  result = [v10 autoMode];
  if (result)
  {
    v12 = [v10 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100036F2C(v9, a3);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_100036F2C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v26 - 8);
  __chkstk_darwin(v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v7 = *(v24 - 8);
  v8 = __chkstk_darwin(v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
  swift_beginAccess();
  if (!*(*(v2 + v13) + 16) || (, sub_10007DEE8(a2), v15 = v14, , (v15 & 1) == 0))
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *(v2 + v13);
    *(v2 + v13) = 0x8000000000000000;
    sub_10004B7F0(&_swiftEmptySetSingleton, a2, isUniquelyReferenced_nonNull_native);
    *(v2 + v13) = v27[0];
    swift_endAccess();
  }

  v17 = v26;
  (*(v4 + 16))(v6, a2, v26);
  v18 = sub_100036B78();
  v19 = sub_10004100C(v27);
  if (*v20)
  {
    v21 = v24;
    (*(v7 + 16))(v10, v25, v24);
    v22 = sub_100038B04(v12, v10);
    (*(v7 + 8))(v12, v21);
    (v19)(v27, 0);
    (*(v4 + 8))(v6, v17);
    (v18)(v28, 0);
  }

  else
  {
    (v19)(v27, 0);
    (*(v4 + 8))(v6, v17);
    (v18)(v28, 0);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100037260(uint64_t a1)
{
  v3 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000287E8(a1, v5, &qword_100115840);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100008904(v5, &qword_100115840);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v10 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
    swift_beginAccess();
    v11 = *(v1 + v10);
    if (*(v11 + 16))
    {

      v12 = sub_10007DEE8(v9);
      if (v13)
      {
        v14 = *(*(v11 + 56) + v12);
        (*(v7 + 8))(v9, v6);

        return v14;
      }
    }

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t sub_100037474(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();
  v14 = [a1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = (v7 + 8);
  if ((a2 & 1) == 0)
  {
    sub_1000379F0(v9, v13);
    (*v15)(v9, v6);
LABEL_8:
    v22 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsInAutomodeForLayoutKey;
    swift_beginAccess();
    v23 = *(v3 + v22);
    if (!*(v23 + 16))
    {
      return (*(v11 + 8))(v13, v10);
    }

    v24 = sub_10007DEE8(v13);
    if ((v25 & 1) == 0)
    {
LABEL_15:

      return (*(v11 + 8))(v13, v10);
    }

    v26 = *(*(v23 + 56) + 8 * v24);

    v27 = *(v26 + 16);

    if (v27)
    {
      return (*(v11 + 8))(v13, v10);
    }

    v28 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
    swift_beginAccess();
    v29 = *(v3 + v28);
    if (*(v29 + 16))
    {

      v30 = sub_10007DEE8(v13);
      if (v31)
      {
        v32 = *(*(v29 + 56) + v30);

        if (v32 <= 1 && v32)
        {
          goto LABEL_28;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v35)
        {
LABEL_33:
          sub_100037C54(2u, v13);
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    v36 = *(v3 + v28);
    if (*(v36 + 16))
    {

      v37 = sub_10007DEE8(v13);
      if (v38)
      {
        v39 = *(*(v36 + 56) + v37);

        if (v39 == 3)
        {
LABEL_28:

          goto LABEL_33;
        }

        v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v40)
        {
          goto LABEL_33;
        }
      }

      else
      {
      }
    }

LABEL_34:
    v34 = 0;
    goto LABEL_35;
  }

  v16 = sub_100036F2C(v9, v13);
  (*v15)(v9, v6);
  if ((v16 & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
  swift_beginAccess();
  v18 = *(v3 + v17);
  if (!*(v18 + 16))
  {
LABEL_21:
    v34 = 1;
LABEL_35:
    sub_100037C54(v34, v13);
    return (*(v11 + 8))(v13, v10);
  }

  v19 = sub_10007DEE8(v13);
  if ((v20 & 1) == 0)
  {

    goto LABEL_21;
  }

  v21 = *(*(v18 + 56) + v19);

  if (v21 <= 1 && v21)
  {
    goto LABEL_15;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_21;
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000379F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040E8(&qword_100115838);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v17 - v10;
  (*(v5 + 16))(v7, a2, v4, v9);
  v12 = sub_100036B78();
  v13 = sub_10004100C(v17);
  if (*v14)
  {
    sub_1000A1E2C(a1, v11);
    sub_100008904(v11, &qword_100115838);
    (v13)(v17, 0);
    (*(v5 + 8))(v7, v4);
    return (v12)(v18, 0);
  }

  else
  {
    (v13)(v17, 0);
    (*(v5 + 8))(v7, v4);
    (v12)(v18, 0);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    return sub_100008904(v11, &qword_100115838);
  }
}

uint64_t sub_100037C54(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_10004B474(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v26;
  swift_endAccess();
  v8 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_observersForLayoutKey;
  result = swift_beginAccess();
  v10 = *(v3 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_10007DEE8(a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      if (a1 <= 1u)
      {
        if (a1)
        {
          v23 = *(v13 + 16);
          if (v23)
          {
            v24 = v13 + 32;
            do
            {
              sub_1000287E8(v24, &v26, &unk_100118260);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                [Strong showAutoModeUI];
                swift_unknownObjectRelease();
              }

              sub_100008904(&v26, &unk_100118260);
              v24 += 8;
              --v23;
            }

            while (v23);
          }
        }

        else
        {
          v17 = *(v13 + 16);
          if (v17)
          {
            v18 = v13 + 32;
            do
            {
              sub_1000287E8(v18, &v26, &unk_100118260);
              v19 = swift_unknownObjectWeakLoadStrong();
              if (v19)
              {
                [v19 showStackUI];
                swift_unknownObjectRelease();
              }

              sub_100008904(&v26, &unk_100118260);
              v18 += 8;
              --v17;
            }

            while (v17);
          }
        }
      }

      else if (a1 == 2)
      {
        v20 = *(v13 + 16);
        if (v20)
        {
          v21 = v13 + 32;
          do
          {
            sub_1000287E8(v21, &v26, &unk_100118260);
            v22 = swift_unknownObjectWeakLoadStrong();
            if (v22)
            {
              [v22 showDisabledUI];
              swift_unknownObjectRelease();
            }

            sub_100008904(&v26, &unk_100118260);
            v21 += 8;
            --v20;
          }

          while (v20);
        }
      }

      else if (a1 == 3)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = v13 + 32;
          do
          {
            sub_1000287E8(v15, &v26, &unk_100118260);
            v16 = swift_unknownObjectWeakLoadStrong();
            if (v16)
            {
              [v16 showRefreshUI];
              swift_unknownObjectRelease();
            }

            sub_100008904(&v26, &unk_100118260);
            v15 += 8;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return result;
}

id sub_100037FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateGroupedVentsAutoModeHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ClimateGroupedVentsAutoModeHandler.AutoModeState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClimateGroupedVentsAutoModeHandler.AutoModeState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100038214()
{
  result = qword_1001157F8;
  if (!qword_1001157F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001157F8);
  }

  return result;
}

void sub_100038268(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([a1 isValid])
    {
      v11 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_timerForLayoutKey;
      swift_beginAccess();
      v12 = *&v10[v11];
      if (*(v12 + 16))
      {

        v13 = sub_10007DEE8(a3);
        if ((v14 & 1) == 0)
        {
LABEL_19:

          return;
        }

        v15 = *(*(v12 + 56) + 8 * v13);
        v16 = v15;

        if (v15)
        {
          sub_10000827C(0, &qword_100115848);
          v17 = a1;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
            v19 = static os_log_type_t.debug.getter();
            if (qword_100113F00 != -1)
            {
              swift_once();
            }

            v20 = qword_10011B1C0;
            (*(v6 + 16))(v8, a3, v5);
            if (os_log_type_enabled(v20, v19))
            {
              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v40[0] = v22;
              *v21 = 136315138;
              v38 = v19;
              v23 = CAUVehicleLayoutKey.rawValue.getter();
              v25 = v24;
              (*(v6 + 8))(v8, v5);
              v26 = sub_10000835C(v23, v25, v40);

              *(v21 + 4) = v26;
              _os_log_impl(&_mh_execute_header, v20, v38, "Disabled state timer fired for layoutKey: %s", v21, 0xCu);
              sub_100006B9C(v22);
            }

            else
            {
              (*(v6 + 8))(v8, v5);
            }

            v27 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_stateForLayoutKey;
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = *&v10[v27];
            *&v10[v27] = 0x8000000000000000;
            sub_10004B474(3, a3, isUniquelyReferenced_nonNull_native);
            *&v10[v27] = v39;
            swift_endAccess();
            v29 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_observersForLayoutKey;
            swift_beginAccess();
            v30 = *&v10[v29];
            if (*(v30 + 16))
            {

              v31 = sub_10007DEE8(a3);
              if (v32)
              {
                v33 = *(*(v30 + 56) + 8 * v31);

                v34 = *(v33 + 16);
                if (v34)
                {
                  v35 = v33 + 32;
                  do
                  {
                    sub_1000287E8(v35, &v39, &unk_100118260);
                    v36 = swift_unknownObjectWeakLoadStrong();
                    if (v36)
                    {
                      [v36 showRefreshUI];
                      swift_unknownObjectRelease();
                    }

                    sub_100008904(&v39, &unk_100118260);
                    v35 += 8;
                    --v34;
                  }

                  while (v34);
                }

                goto LABEL_19;
              }
            }
          }
        }
      }
    }
  }
}

void sub_10003869C(uint64_t a1)
{
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if ((v5 & 1) == 0)
  {
    v6 = OBJC_IVAR____TtC7Climate34ClimateGroupedVentsAutoModeHandler_ventsForLayoutKey;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (*(v7 + 16))
    {

      v8 = sub_10007DEE8(a1);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v10 + 32;
          do
          {
            sub_1000287E8(v12, &v14, &qword_100115820);
            Strong = swift_unknownObjectWeakLoadStrong();
            [Strong setOn:{objc_msgSend(Strong, "on")}];

            sub_100008904(&v14, &qword_100115820);
            v12 += 8;
            --v11;
          }

          while (v11);
        }
      }
    }
  }
}

uint64_t sub_100038824(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAUAppDockIndicator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003A338(&qword_100115170, &type metadata accessor for CAUAppDockIndicator);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003A338(&unk_100116680, &type metadata accessor for CAUAppDockIndicator);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10003949C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100038B04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10003A338(&qword_100115800, &type metadata accessor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10003A338(&qword_100114CA8, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100039764(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100038DE4()
{
  v1 = v0;
  v35 = type metadata accessor for CAUAppDockIndicator();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000040E8(&qword_100115828);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10003A338(&qword_100115170, &type metadata accessor for CAUAppDockIndicator);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100039140()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000040E8(&unk_100115810);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10003A338(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10003949C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for CAUAppDockIndicator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100038DE4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100039A7C(&type metadata accessor for CAUAppDockIndicator, &qword_100115828);
      goto LABEL_12;
    }

    sub_100039CB4();
  }

  v12 = *v3;
  sub_10003A338(&qword_100115170, &type metadata accessor for CAUAppDockIndicator);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10003A338(&unk_100116680, &type metadata accessor for CAUAppDockIndicator);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100039764(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100039140();
  }

  else
  {
    if (v11 > v10)
    {
      sub_100039A7C(&type metadata accessor for UUID, &unk_100115810);
      goto LABEL_12;
    }

    sub_100039FD0();
  }

  v12 = *v3;
  sub_10003A338(&qword_100115800, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_10003A338(&qword_100114CA8, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100039A7C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_1000040E8(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_100039CB4()
{
  v1 = v0;
  v32 = type metadata accessor for CAUAppDockIndicator();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000040E8(&qword_100115828);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10003A338(&qword_100115170, &type metadata accessor for CAUAppDockIndicator);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100039FD0()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000040E8(&unk_100115810);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10003A338(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

unint64_t sub_10003A2EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000F6560, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10003A338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003A380()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003A3B8()
{
  v1 = type metadata accessor for CAUVehicleLayoutKey();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003A47C(void *a1)
{
  v3 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100038268(a1, v4, v5);
}

uint64_t sub_10003A4F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003A50C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate14ClimateCarView_imageActiveHeightConstraint) = a1;
  v2 = objc_opt_self();
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deactivateConstraints:isa];

  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:v4];
}

void sub_10003A5E4(uint64_t a1)
{
  v14[1] = a1;
  v2 = type metadata accessor for CAUVehicleLayoutInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&unk_100114770);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D58A0;
  v7 = *(a1 + OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView);
  v8 = [v7 heightAnchor];
  type metadata accessor for ClimateAssets();
  CAUVehicleLayout.cabinSeatsImage.getter();
  v9 = CAUVehicleLayoutInfo.height.getter();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = [v8 constraintEqualToConstant:v9];

  *(v6 + 32) = v11;
  v12 = [v7 widthAnchor];
  CAUVehicleLayout.cabinSeatsImage.getter();
  LODWORD(v11) = CAUVehicleLayoutInfo.width.getter();
  v10(v5, v2);
  v13 = [v12 constraintEqualToConstant:v11];

  *(v6 + 40) = v13;
  sub_10003A50C(v6);
}

void sub_10003A7E4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView);
    if (v1)
    {
      v5 = Strong + OBJC_IVAR____TtC7Climate14ClimateCarView_assets;
      v6 = v5 + *(type metadata accessor for ClimateAssets() + 24);
      v8 = *v6;
      v7 = *(v6 + 8);
      v9 = OBJC_IVAR____TtC7Climate11ClimateZone_key;

      v10 = v8;

      v11 = sub_100006960(v1 + v9, v10, v7);

      [v4 setImage:v11];

      v12 = v3;
      v3 = v11;
    }

    else
    {
      v12 = *(Strong + OBJC_IVAR____TtC7Climate14ClimateCarView_assets + *(type metadata accessor for ClimateAssets() + 24));
      [v4 setImage:v12];
    }
  }
}

uint64_t sub_10003A988()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_climateSystem);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_climateSystem + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_climateSystem + 16);

  swift_unknownObjectRelease();

  sub_10003B46C(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_assets);
}

id sub_10003AA6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateCarView()
{
  result = qword_1001158B8;
  if (!qword_1001158B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003ABE0()
{
  result = type metadata accessor for ClimateAssets();
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

void sub_10003ACAC()
{
  v1 = type metadata accessor for CAUVehicleLayout();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CAUVehicleLayoutInfo();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClimateCarView();
  v56.receiver = v0;
  v56.super_class = v9;
  objc_msgSendSuper2(&v56, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView];
  [v10 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews];
  [v11 layoutIfNeeded];
  if ((v0[OBJC_IVAR____TtC7Climate14ClimateCarView_hasAlreadyLayout] & 1) == 0)
  {
    v48 = v4;
    v50 = v2;
    v51 = v1;
    v0[OBJC_IVAR____TtC7Climate14ClimateCarView_hasAlreadyLayout] = 1;
    [v0 bounds];
    Width = CGRectGetWidth(v57);
    [v10 bounds];
    v13 = Width / CGRectGetWidth(v58);
    v55 = v0;
    [v0 bounds];
    Height = CGRectGetHeight(v59);
    v54 = v10;
    [v10 bounds];
    v15 = Height / CGRectGetHeight(v60);
    if (v15 >= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v15;
    }

    v17 = OBJC_IVAR____TtC7Climate20ClimatePositionViews_scale;
    *&v11[OBJC_IVAR____TtC7Climate20ClimatePositionViews_scale] = v16;
    v18 = sub_1000AA038();
    v53 = type metadata accessor for ClimateAssets();
    CAUVehicleLayout.cabinSeatsImage.getter();
    v19 = CAUVehicleLayoutInfo.height.getter();
    v20 = *(v6 + 8);
    v20(v8, v5);
    [v18 setConstant:*&v11[v17] * v19];

    v21 = sub_1000AA060();
    CAUVehicleLayout.cabinSeatsImage.getter();
    v22 = CAUVehicleLayoutInfo.width.getter();
    v45 = v20;
    v46 = v8;
    v20(v8, v5);
    [v21 setConstant:*&v11[v17] * v22];

    v23 = *&v11[OBJC_IVAR____TtC7Climate20ClimatePositionViews_positions];
    v49 = v5;
    v47 = v6 + 8;
    if (v23 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v25 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v26 = *(v23 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        *&v26[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_scale] = *&v11[v17];
        sub_1000A5D70();

        ++v25;
        if (v28 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    sub_1000040E8(&unk_100114770);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1000D58A0;
    v29 = [v54 heightAnchor];
    v30 = *(v53 + 20);
    v32 = v50;
    v31 = v51;
    v43 = *(v50 + 16);
    v44 = &v55[OBJC_IVAR____TtC7Climate14ClimateCarView_assets];
    v33 = v48;
    v43(v48, &v55[OBJC_IVAR____TtC7Climate14ClimateCarView_assets + v30], v51);
    v34 = v46;
    CAUVehicleLayout.cabinSeatsImage.getter();
    v50 = *(v32 + 8);
    (v50)(v33, v31);
    v35 = CAUVehicleLayoutInfo.height.getter();
    v36 = v49;
    v37 = v45;
    v45(v34, v49);
    v38 = [v29 constraintEqualToConstant:v16 * v35];

    *(v52 + 32) = v38;
    v39 = [v54 widthAnchor];
    v43(v33, &v44[*(v53 + 20)], v31);
    CAUVehicleLayout.cabinSeatsImage.getter();
    (v50)(v33, v31);
    LODWORD(v38) = CAUVehicleLayoutInfo.width.getter();
    v37(v34, v36);
    v40 = [v39 constraintEqualToConstant:v16 * v38];

    v41 = v52;
    *(v52 + 40) = v40;
    sub_10003A50C(v41);
  }
}

void *sub_10003B2E8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews) + OBJC_IVAR____TtC7Climate20ClimatePositionViews_positions);
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = *&v4[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v3;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10003B46C(uint64_t a1)
{
  v2 = type metadata accessor for ClimateAssets();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10003B4C8()
{
  v1 = OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v2 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_cancellables) = v2;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_hasAlreadyLayout) = 0;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateCarView_imageActiveHeightConstraint) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for ClimateLayoutMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClimateLayoutMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003B704()
{
  result = qword_1001158C8;
  if (!qword_1001158C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158C8);
  }

  return result;
}

const char *sub_10003B76C()
{
  v1 = "ClimateSeatIndicatorStatusBar";
  if (*v0 != 1)
  {
    v1 = "ClimateWide";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "ClimateAutomakerSettingsCardPopover";
  }
}

char *sub_10003B7E0(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_autoModeGlyph) = 0;
  v3 = objc_allocWithZone(type metadata accessor for ClimateRecirculationServiceButton());
  sub_1000AFEBC(a1, 1);
  *(v1 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculationButton) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculation) = a1;
  v5 = a1;
  v6 = sub_10001414C(0, 0, 1);
  [v5 registerObserver:v6];
  [v6 addSubview:*&v6[OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculationButton]];
  sub_10003B8DC();
  sub_10003BB50();

  return v6;
}

void sub_10003B8DC()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculationButton];
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v3 + 56) = v16;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_10003BB50()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_recirculation];
  v3 = [v2 on];
  v1[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v3;
  v4 = [v2 autoMode];
  v1[OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode] = v4;
  sub_1000C10C4();
  [v1 setEnabled:(sub_1000AF57C() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_10003BC08()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate29ClimateRecirculationIndicator_autoModeGlyph);
}

id sub_10003BC68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateRecirculationIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateRecirculationIndicator()
{
  result = qword_1001158F8;
  if (!qword_1001158F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BDBC(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn);
  if (v5 == [a1 on])
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = [a1 receivedAllValues];
  v7 = static os_log_type_t.debug.getter();
  if (v6)
  {
    if (qword_100113F00 != -1)
    {
      v12 = v7;
      swift_once();
      v7 = v12;
    }

    v8 = qword_10011B1C0;
    v9 = v7;
    if (os_log_type_enabled(qword_10011B1C0, v7))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "Recirculation indicator did update ON: %{BOOL,public}d", v10, 8u);
    }

    sub_10003BB50();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100065BE4();

      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (qword_100113F00 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_15:

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10003C07C(void *a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC7Climate16ClimateIndicator_isAutoMode) == (a2 & 1))
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v4 = [a1 receivedAllValues];
  v5 = static os_log_type_t.debug.getter();
  if (v4)
  {
    if (qword_100113F00 != -1)
    {
      v10 = v5;
      swift_once();
      v5 = v10;
    }

    v6 = qword_10011B1C0;
    v7 = v5;
    if (os_log_type_enabled(qword_10011B1C0, v5))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      *(v8 + 4) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v6, v7, "Recirculation service did update autoMode: %{BOOL,public}d", v8, 8u);
    }

    sub_10003BB50();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100065BE4();

      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (qword_100113F00 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_15:

  return os_log(_:dso:log:_:_:)();
}

void sub_10003C32C(int a1)
{
  v3 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
  v4 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
  v5 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;
  v6 = [*(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range) maximum];
  v7 = [v6 integerValue];

  if (v7 >= v4)
  {
    v8 = *(v1 + v3);
    v9 = [*(v1 + v5) minimum];
    v10 = [v9 integerValue];

    if (v10 <= v8)
    {
      v11 = *(v1 + v3);
      if (v11 != a1)
      {
        if (v11)
        {
          if (a1)
          {
            return;
          }

          v12 = *((swift_isaMask & *v1) + 0x128);
        }

        else
        {
          v12 = *((swift_isaMask & *v1) + 0x120);
        }

        v12(1);
      }
    }
  }
}

void sub_10003C4C4(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue) = a1;
  sub_10003C32C(v2);
}

id sub_10003C4DC(char a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted) = a1;
  v2 = 0.2;
  if ((a1 & 1) == 0)
  {
    v2 = 1.0;
  }

  return [*(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setAlpha:v2];
}

void sub_10003C518()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v2 = [objc_opt_self() clearColor];
  v3 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v4 = (v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v5 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v10 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v6 = *(v1 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  *v4 = v2;
  v4[1] = v3;
  v4[2] = &_swiftEmptyDictionarySingleton;
  sub_100034224();
  v7 = v3;
  v8 = v2;
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (sub_10007DB08(&_swiftEmptyDictionarySingleton, v6), (v9))
  {

    v5 = v7;
    v10 = v8;
  }

  else
  {
    ClimateButton.refreshColorConfig()();
  }
}

void sub_10003C654(void *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v8 = *(v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v9 = *(v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 8);
  v10 = *(v4 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 16);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  v11 = a3;

  v13 = a1;
  v12 = a2;

  sub_10003C518();
}

id sub_10003C85C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

CGFloat sub_10003C93C()
{
  CGAffineTransformMakeScale(&v1, 0.01, 0.01);
  result = v1.a;
  *byte_10011AE10 = v1;
  return result;
}

void sub_10003C984()
{
  v1 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ClimatePassthroughButton()) init];
  *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted) = 0;
  v2 = (v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = [v3 labelColor];
  v6 = [v5 colorWithAlphaComponent:0.25];

  v7 = [v3 labelColor];
  *v2 = v4;
  v2[1] = v6;
  v2[2] = v7;
  v2[3] = &_swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10003CABC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_horizontalStackViews) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_verticalSpacing) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_maxHeight) = a1;
  swift_unknownObjectRetain();

  sub_100028F80(v7, a3, a4);
  v9 = *&v8[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_maxHeight];
  v10 = (v9 + 10.0) / 54.0;
  if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFSUB__(v10, 1))
  {
    *&v8[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_verticalSpacing] = (v9 + v10 * -44.0) / (v10 - 1);
    v15 = _swiftEmptyArrayStorage;
    v11 = v8;
    sub_100028DB0();
    v13 = v12;
    v14 = v11;
    sub_10009BA7C(v13, v14, &v15);

    sub_10003CC60(v15);

    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10003CC60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;

  sub_10002B584();
  if (v8)
  {
    sub_100099000();
    a1 = v55;
  }

  v9 = OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_horizontalStackViews;
  swift_beginAccess();
  *&v1[v9] = _swiftEmptyArrayStorage;

  v49 = sub_10003E6D0(a1);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      v15 = *(*v11 + 16);
      if (v15)
      {
        if (v15 == 1)
        {
          v12 = *(*v11 + 40);
          swift_beginAccess();
          v13 = v12;
        }

        else
        {

          v17 = sub_10003D39C(v16);

          swift_beginAccess();
          v13 = v17;
        }

        v14 = v13;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

  v18 = objc_allocWithZone(UIStackView);
  sub_10000827C(0, &qword_100115400);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithArrangedSubviews:isa];

  [v20 setSpacing:12.0];
  [v20 setAxis:0];
  [v20 setDistribution:3];
  v21 = v20;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *(v2 + v9);
  if (v22 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v24 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = result - 1;
    if (!__OFSUB__(result, 1))
    {
LABEL_15:
      v25 = result * 44.0 + v24 * 12.0;
      v26 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView;
      [*(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_contentView) addSubview:v21];
      v27 = objc_opt_self();
      sub_1000040E8(&unk_100114770);
      v28 = swift_allocObject();
      v48 = v5;
      v29 = v28;
      *(v28 + 16) = xmmword_1000D5BB0;
      v30 = [v21 centerXAnchor];
      v31 = [*(v2 + v26) centerXAnchor];
      v47 = v4;
      v32 = [v30 constraintEqualToAnchor:v31];

      v29[4] = v32;
      v33 = [v21 centerYAnchor];

      v34 = [*(v2 + v26) centerYAnchor];
      v35 = [v33 constraintEqualToAnchor:v34];

      v29[5] = v35;
      v36 = [*(v2 + v26) widthAnchor];
      v37 = [v36 constraintEqualToConstant:v25];

      v29[6] = v37;
      sub_10000827C(0, &qword_1001149C0);
      v38 = Array._bridgeToObjectiveC()().super.isa;

      [v27 activateConstraints:v38];

      sub_10000827C(0, &qword_1001159B0);
      v39 = static OS_dispatch_queue.main.getter();
      v40 = swift_allocObject();
      v41 = v49;
      *(v40 + 16) = v2;
      *(v40 + 24) = v41;
      aBlock[4] = sub_10003FB8C;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000B4DF4;
      aBlock[3] = &unk_1000F7F00;
      v42 = _Block_copy(aBlock);
      v43 = v2;

      v44 = v50;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10003FB94();
      sub_1000040E8(&unk_1001159C0);
      sub_10003FBEC();
      v45 = v52;
      v46 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);

      (*(v48 + 8))(v45, v46);
      return (*(v51 + 8))(v44, v53);
    }
  }

  __break(1u);
  return result;
}

id sub_10003D338(uint64_t a1, uint64_t a2)
{
  sub_10000827C(0, &unk_1001159D0);
  result = static UIFocusSystem.focusSystem(for:)();
  if (result)
  {

    return sub_10003EFD8(a2);
  }

  return result;
}

id sub_10003D39C(void *a1)
{
  v2 = v1;
  v85 = a1;
  v3 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v3 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for CAUFeatureConfiguration.Climate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUFeatureConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _swiftEmptyArrayStorage;
  v82 = objc_opt_self();
  v14 = [v82 sharedApplication];
  v15 = [v14 delegate];

  if (!v15)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    JUMPOUT(0x10003E34CLL);
  }

  v81 = type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v16 = sub_1000AF438();
  swift_unknownObjectRelease();

  v17 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

  Optional<A>.featureConfiguration()();

  CAUFeatureConfiguration.climate.getter();
  (*(v11 + 8))(v13, v10);
  LOBYTE(v17) = CAUFeatureConfiguration.Climate.groupedVentsLayout.getter();
  (*(v7 + 8))(v9, v6);
  v18 = &selRef_maxDefrostOn;
  v83 = v2;
  v19 = v85;
  if ((v17 & 1) == 0)
  {
    goto LABEL_59;
  }

  v20 = OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone;
  v21 = *&v2[OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone];
  v22 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
  swift_beginAccess();
  v23 = *(v21 + v22);
  if (v23 >> 62)
  {
    goto LABEL_58;
  }

  if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_59:
    v65 = *(v19 + 16);
    if (v65)
    {
      v87 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v66 = (v19 + 40);
      do
      {
        v67 = *v66;
        v66 += 2;
        v68 = v67;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v65;
      }

      while (v65);
      LOBYTE(v19) = 0;
      v2 = v83;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    goto LABEL_64;
  }

  while (1)
  {
    v76 = v20;
    v77 = v5;
    v20 = *(v19 + 16);
    v18 = _swiftEmptyArrayStorage;
    if (!v20)
    {
      break;
    }

    v5 = 0;
    v84 = 0x80000001000D9E90;
    v24 = v19 + 40;
    v79 = v19 + 40;
    v80 = 0x80000001000D9E50;
LABEL_7:
    v19 = v24 + 16 * v5;
    v2 = v5;
    while (1)
    {
      if (v2 >= v20)
      {
        goto LABEL_54;
      }

      v5 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v25 = *(v19 - 8);
      v26 = *v19;
      switch(v25)
      {
        case 1:
          v29 = v26;

          goto LABEL_15;
        default:
          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v28 = v26;

          if (v27)
          {
LABEL_15:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v87 = v18;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1000A8A20(0, (v18[2] + 1), 1);
              v18 = v87;
            }

            v19 = v85;
            v32 = v18[2];
            v31 = v18[3];
            if (v32 >= v31 >> 1)
            {
              sub_1000A8A20((v31 > 1), v32 + 1, 1);
              v18 = v87;
            }

            v18[2] = (v32 + 1);
            v33 = &v18[2 * v32];
            *(v33 + 32) = v25;
            v33[5] = v26;
            v24 = v79;
            if (v5 == v20)
            {
              goto LABEL_20;
            }

            goto LABEL_7;
          }

          ++v2;
          v19 += 16;
          if (v5 == v20)
          {
            v19 = v85;
            goto LABEL_20;
          }

          break;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_59;
    }
  }

LABEL_20:
  v34 = 0;
  v5 = _swiftEmptyArrayStorage;
  v87 = _swiftEmptyArrayStorage;
  v2 = v18[2];
LABEL_21:
  v35 = 16 * v34 + 40;
  while (v2 != v34)
  {
    if (v34 >= v18[2])
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v36 = v35 + 16;
    ++v34;
    v37 = *(v18 + v35);
    type metadata accessor for ClimateVentServiceButton();
    v38 = swift_dynamicCastClass();
    v35 = v36;
    if (v38)
    {
      v39 = v37;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v87;
      goto LABEL_21;
    }
  }

  v40 = objc_allocWithZone(type metadata accessor for ClimateGroupedVentsButton(0));
  sub_100015130(v5, 1, 4);
  v42 = v41;
  v2 = v83;
  v43 = *&v83[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_maxHeight];
  v44 = sub_100014EA0();
  v18 = &selRef_maxDefrostOn;
  [v44 setSpacing:(v43 + v20 * -44.0) / (v20 - 1)];

  if (!v20)
  {

    LOBYTE(v19) = 0;
    goto LABEL_64;
  }

  v5 = 0;
  v18 = 0;
  v79 = 0x80000001000D9E50;
  v80 = 0x80000001000D9E90;
  v45 = v19 + 40;
  v84 = _swiftEmptyArrayStorage;
  v78 = v42;
  v75 = v19 + 40;
  v86 = v20;
LABEL_30:
  v2 = (v45 + 16 * v18);
  v46 = v18;
  v19 = v5;
  LODWORD(v85) = v5;
  while (2)
  {
    if (v46 >= v20)
    {
      goto LABEL_56;
    }

    v18 = (v46 + 1);
    if (__OFADD__(v46, 1))
    {
      goto LABEL_57;
    }

    v47 = *(v2 - 8);
    v48 = *v2;
    switch(*(v2 - 8))
    {
      case 1:
        v49 = v48;

        if ((v5 & 1) == 0)
        {
          goto LABEL_45;
        }

        v19 = 1;
LABEL_40:

LABEL_32:
        v5 = v85;
        v20 = v86;
        v46 = (v46 + 1);
        v2 += 16;
        if (v18 != v86)
        {
          continue;
        }

        v2 = v83;
        break;
      default:
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v51 = v48;

        if (v5 & 1 | ((v50 & 1) == 0))
        {
          v19 = v50 | v19;
          switch(v47)
          {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v52)
              {
              }

              else
              {
                v53 = v51;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v84 = v88;
              }

              goto LABEL_32;
            case 1:
              goto LABEL_40;
            default:
              JUMPOUT(0);
          }
        }

LABEL_45:
        v54 = v78;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v85 = v54;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v84 = v88;
        v55 = [v82 sharedApplication];
        v56 = [v55 delegate];

        v20 = v86;
        if (!v56)
        {
          goto LABEL_68;
        }

        swift_dynamicCastClassUnconditional();
        v57 = sub_1000AF438();
        swift_unknownObjectRelease();
        v58 = *&v57[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

        v59 = *&v83[v76];
        v60 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
        v61 = type metadata accessor for CAUVehicleLayoutKey();
        v62 = *(v61 - 8);
        v63 = v59 + v60;
        v2 = v83;
        v64 = v77;
        (*(v62 + 16))(v77, v63, v61);
        v5 = 1;
        (*(v62 + 56))(v64, 0, 1, v61);
        sub_100019C14(v2, v64, v58);

        sub_10001AEA0(v64);
        v45 = v75;
        if (v18 != v20)
        {
          goto LABEL_30;
        }

        LOBYTE(v19) = 1;
        break;
    }

    break;
  }

  v18 = &selRef_maxDefrostOn;
LABEL_64:
  v69 = objc_allocWithZone(UIStackView);
  sub_10000827C(0, &qword_100115400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v71 = [v69 initWithArrangedSubviews:isa];

  [v71 setAxis:1];
  [v71 v18[140]];
  [v71 setDistribution:3];
  [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v19)
  {
    v72 = *&v2[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack];
    *&v2[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack] = v71;
    v73 = v71;

    sub_10003E424();
  }

  return v71;
}

void sub_10003E424()
{
  v1 = v0;
  v2 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = [objc_opt_self() sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  v8 = *&v7[OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler];

  v9 = *(v1 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
  v10 = OBJC_IVAR____TtC7Climate11ClimateZone_key;
  v11 = type metadata accessor for CAUVehicleLayoutKey();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4, v9 + v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  LOBYTE(v11) = sub_100037260(v4);

  sub_10001AEA0(v4);
  if (v11 == 1)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = *(v1 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack);
      if (!v14)
      {
        return;
      }

      v15 = 3;
      goto LABEL_9;
    }
  }

  v14 = *(v1 + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack);
  if (!v14)
  {
    return;
  }

  v15 = 1;
LABEL_9:
  [v14 setDistribution:v15];
}

void *sub_10003E6D0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUFeatureConfiguration.Climate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for CAUFeatureConfiguration();
  __chkstk_darwin(v58);
  v57 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v62 = *(a1 + 16);
  if (v62)
  {
    v11 = 0;
    v61 = a1 + 32;
    v55 = (v5 + 8);
    v56 = (v8 + 8);
    v52 = 0x80000001000D9E50;
    v53 = 0x80000001000D9E90;
    v59 = xmmword_1000D5DA0;
    v54 = v7;
    while (1)
    {
      v12 = *(v61 + 8 * v11);
      v13 = *(v12 + 16);
      if (v13)
      {
        break;
      }

LABEL_4:
      if (++v11 == v62)
      {
        return v10;
      }
    }

    if (v13 == 1)
    {
      v14 = *(v12 + 40);
      sub_1000040E8(&unk_100114770);
      v15 = swift_allocObject();
      *(v15 + 16) = v59;
      *(v15 + 32) = v14;
      v16 = v14;
LABEL_35:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000C4D94(0, v10[2] + 1, 1, v10);
      }

      v41 = v10[2];
      v40 = v10[3];
      if (v41 >= v40 >> 1)
      {
        v10 = sub_1000C4D94((v40 > 1), v41 + 1, 1, v10);
      }

      v10[2] = v41 + 1;
      v10[v41 + 4] = v15;
      goto LABEL_4;
    }

    v63 = sub_10003D39C(v17);
    v18 = *(v2 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_climateZone);
    v19 = OBJC_IVAR____TtC7Climate11ClimateZone_vents;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_33;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_33;
    }

    v21 = [objc_opt_self() sharedApplication];
    v22 = [v21 delegate];

    if (!v22)
    {
      goto LABEL_61;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v23 = sub_1000AF438();
    swift_unknownObjectRelease();

    v24 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();

    v25 = v57;
    Optional<A>.featureConfiguration()();

    CAUFeatureConfiguration.climate.getter();
    (*v56)(v25, v58);
    LOBYTE(v24) = CAUFeatureConfiguration.Climate.groupedVentsLayout.getter();
    (*v55)(v7, v4);
    if (v24)
    {
      v26 = -v13;
      v27 = -1;
      v28 = 32;
      while (2)
      {
        if (v26 + v27 == -1)
        {

          v7 = v54;
        }

        else
        {
          if (++v27 >= *(v12 + 16))
          {
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v30 = v28;
          v28 += 16;
          switch(*(v12 + v30))
          {
            case 1:

              goto LABEL_19;
            default:
              v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v29 & 1) == 0)
              {
                continue;
              }

LABEL_19:

              v31 = [v63 arrangedSubviews];
              sub_10000827C(0, &qword_100115400);
              v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v64 = _swiftEmptyArrayStorage;
              if (v32 >> 62)
              {
                v33 = _CocoaArrayWrapper.endIndex.getter();
                v60 = v10;
                if (!v33)
                {
LABEL_40:
                  v38 = _swiftEmptyArrayStorage;
                  goto LABEL_41;
                }
              }

              else
              {
                v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v60 = v10;
                if (!v33)
                {
                  goto LABEL_40;
                }
              }

              v50 = v4;
              v51 = v2;
              v34 = 0;
              do
              {
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_58;
                  }

                  v35 = *(v32 + 8 * v34 + 32);
                }

                v36 = v35;
                v37 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_57;
                }

                type metadata accessor for ClimateGroupedVentsButton(0);
                if ([v36 isMemberOfClass:swift_getObjCClassFromMetadata()])
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                ++v34;
              }

              while (v37 != v33);
              v38 = v64;
              v4 = v50;
              v2 = v51;
              v10 = v60;
LABEL_41:

              v7 = v54;
              if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
              {
                v42 = _CocoaArrayWrapper.endIndex.getter();
                if (v42)
                {
LABEL_44:
                  v43 = 0;
                  while (1)
                  {
                    if ((v38 & 0xC000000000000001) != 0)
                    {
                      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v43 >= *(v38 + 16))
                      {
                        goto LABEL_60;
                      }

                      v44 = *(v38 + 8 * v43 + 32);
                    }

                    v45 = v44;
                    v46 = v43 + 1;
                    if (__OFADD__(v43, 1))
                    {
                      break;
                    }

                    [v63 removeArrangedSubview:v44];
                    [v45 removeFromSuperview];

                    ++v43;
                    v47 = v46 == v42;
                    v10 = v60;
                    if (v47)
                    {
                      goto LABEL_54;
                    }
                  }

LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
                  JUMPOUT(0x10003EF90);
                }
              }

              else
              {
                v42 = *(v38 + 16);
                if (v42)
                {
                  goto LABEL_44;
                }
              }

LABEL_54:

              break;
          }
        }

        goto LABEL_34;
      }
    }

LABEL_33:

LABEL_34:
    v16 = v63;
    v39 = [v63 arrangedSubviews];
    sub_10000827C(0, &qword_100115400);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_35;
  }

  return v10;
}

id sub_10003EFD8(uint64_t a1)
{
  v2 = v1;
  result = [v2 view];
  if (result)
  {
    v5 = result;
    type metadata accessor for ClimateVerticalPopoverFocusManager();
    swift_allocObject();

    v6 = sub_100034100(v5, a1);

    *&v2[OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_focusManager] = v6;

    v6[3] = &off_1000F7D88;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003F0AC(void *a1, char a2)
{
  v3 = v2;
  sub_10002C530(a1, a2);
  type metadata accessor for ClimateStepper();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    type metadata accessor for ClimateDeepLinkButton();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = a1;
      [v25 addTarget:v3 action:"didTapDeepLinkButton:" forControlEvents:64];
      v27 = &v25[OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate];
      swift_beginAccess();
      *(v27 + 1) = &off_1000F7990;
      swift_unknownObjectWeakAssign();
    }

    else
    {
      type metadata accessor for ClimateButton();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        v29 = v28 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
        swift_beginAccess();
        *(v29 + 8) = &off_1000F7990;
        swift_unknownObjectWeakAssign();
      }
    }

    goto LABEL_20;
  }

  v5 = v4;
  v6 = *((swift_isaMask & *v4) + 0x220);
  v7 = a1;
  v8 = v6(44.0);
  (*((swift_isaMask & *v5) + 0x238))(v8, 44.0);
  v9 = *(v3 + OBJC_IVAR____TtC7Climate25ClimateQuickActionPopover_popoverTapView);
  v10 = v5 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  swift_beginAccess();
  *(v10 + 1) = &off_1000F7990;
  swift_unknownObjectWeakAssign();
  v11 = v9;
  sub_100094F44();

  v12 = v7;
  v13 = [v5 constraints];
  sub_10000827C(0, &qword_1001149C0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_4:
      if (v15 < 1)
      {
        __break(1u);
        return;
      }

      v33 = v5;
      v31 = v12;
      for (i = 0; i != v15; ++i)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v17 = *(v14 + 8 * i + 32);
        }

        v18 = v17;
        if ([(objc_class *)v17 firstAttribute]== 8)
        {
          [v33 removeConstraint:v18];
          v19 = objc_opt_self();
          sub_1000040E8(&unk_100114770);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1000D5DA0;
          v21 = [v33 heightAnchor];
          sub_10003F70C(a2);
          v22 = [v21 constraintEqualToConstant:?];

          *(v20 + 32) = v22;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v19 activateConstraints:isa];

          v18 = isa;
        }
      }

      v12 = v31;
      goto LABEL_19;
    }
  }

LABEL_19:

LABEL_20:

  v30 = a1;
}

void sub_10003F70C(char a1)
{
  sub_100028DB0();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = *(v3 + 8 * v5 + 32);

      if (sub_100060154(a1, v6))
      {

        return;
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t sub_10003F7F8()
{
}

id sub_10003F848()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateVerticalQuickActionPopover();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003F9C8(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a5;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000B4DF4;
  v14[3] = a6;
  v12 = _Block_copy(v14);
  v13 = a1;

  [v10 animateWithDuration:v12 animations:a2];

  _Block_release(v12);
}

uint64_t sub_10003FAC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FB04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10003FB24(uint64_t a1)
{
  result = *(*(v1 + 16) + OBJC_IVAR____TtC7Climate33ClimateVerticalQuickActionPopover_groupedVentsStack);
  if (result)
  {
    return [result setDistribution:a1];
  }

  return result;
}

uint64_t sub_10003FB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10003FB94()
{
  result = qword_1001178B0;
  if (!qword_1001178B0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178B0);
  }

  return result;
}

unint64_t sub_10003FBEC()
{
  result = qword_1001178C0;
  if (!qword_1001178C0)
  {
    sub_1000082C4(&unk_1001159C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001178C0);
  }

  return result;
}

void *sub_10003FC80(void *a1, unsigned __int8 a2)
{
  v4 = a2;
  *&v2[OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin] = a1;
  v2[OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style] = a2;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for ClimateCabinServiceButton();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v26, "init");
  v7 = v6;
  if (v4 == 4)
  {
    v8 = qword_100113EF0;
    v9 = v6;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = unk_10011B0F0;
    v11 = qword_10011B0F8;
    v12 = qword_10011B0E8;
    v13 = v10;

    sub_1000A70A8(v12, v13, v11);

    if (qword_100113EE8 != -1)
    {
      swift_once();
    }

    v14 = &qword_10011B0D0;
  }

  else
  {
    v15 = qword_100113EE0;
    v16 = v6;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = qword_10011B0C0;
    v18 = qword_10011B0C8;
    v19 = qword_10011B0B8;
    v20 = v17;

    sub_1000A70A8(v19, v20, v18);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v14 = &qword_10011B0A0;
  }

  v21 = v14[1];
  v22 = v14[2];
  v23 = *v14;
  v24 = v21;

  sub_1000A70B4(v23, v24, v22);

  [v5 registerObserver:{v7, v26.receiver, v26.super_class}];
  return v7;
}

id sub_10003FF4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCabinServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateCabinServiceButton()
{
  result = qword_100115A08;
  if (!qword_100115A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_100040048(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004005C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1000400B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10004011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUBaselineAnchor();
  v62 = *(v7 - 8);
  v63 = v7;
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040E8(&unk_100117950);
  __chkstk_darwin(v10 - 8);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  __chkstk_darwin(v18);
  v56 = &v55 - v19;
  v20 = type metadata accessor for CAUVehicleLayoutInfo();
  v57 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v55 - v24;
  v58 = v2;
  v26 = CAUVehicleLayout.infos.getter();
  if (*(v26 + 16))
  {
    v27 = sub_10007DEE8(a1);
    if (v28)
    {
      v29 = v57;
      (*(v57 + 16))(v25, *(v26 + 56) + *(v57 + 72) * v27, v20);

      CAUVehicleLayoutInfo.baselineAnchor.getter();
      v31 = v62;
      v30 = v63;
      if ((*(v62 + 48))(v14, 1, v63) == 1)
      {
        sub_100040C90(v14);
        v32 = 1;
        v33 = v56;
        v34 = v29;
      }

      else
      {
        (*(v31 + 32))(v9, v14, v30);
        LODWORD(v59) = CAUBaselineAnchor.x.getter();
        CAUVehicleLayout.cabinSeatsImage.getter();
        v45 = CAUVehicleLayoutInfo.x.getter();
        v46 = *(v29 + 8);
        result = v46(v22, v20);
        v47 = __OFSUB__(v59, v45);
        LODWORD(v59) = v59 - v45;
        if (v47)
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v48 = CAUBaselineAnchor.y.getter();
        CAUVehicleLayout.cabinSeatsImage.getter();
        v49 = CAUVehicleLayoutInfo.y.getter();
        result = v46(v22, v20);
        if (__OFSUB__(v48, v49))
        {
LABEL_20:
          __break(1u);
          return result;
        }

        CAUBaselineAnchor.init(x:y:)();
        v31 = v62;
        v30 = v63;
        (*(v62 + 8))(v9, v63);
        v32 = 0;
        v33 = v56;
        v34 = v57;
      }

      (*(v31 + 56))(v17, v32, 1, v30);
      sub_100040CF8(v17, v33);
      v50 = CAUVehicleLayoutInfo.x.getter();
      CAUVehicleLayout.cabinSeatsImage.getter();
      v51 = CAUVehicleLayoutInfo.x.getter();
      v52 = *(v34 + 8);
      result = v52(v22, v20);
      if (__OFSUB__(v50, v51))
      {
        __break(1u);
      }

      else
      {
        v53 = CAUVehicleLayoutInfo.y.getter();
        CAUVehicleLayout.cabinSeatsImage.getter();
        v54 = CAUVehicleLayoutInfo.y.getter();
        result = v52(v22, v20);
        if (!__OFSUB__(v53, v54))
        {
          CAUVehicleLayoutInfo.height.getter();
          CAUVehicleLayoutInfo.width.getter();
          sub_100040D68(v33, v60);
          CAUVehicleLayoutInfo.init(x:y:height:width:baselineAnchor:)();
          sub_100040C90(v33);
          return v52(v25, v20);
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v35 = static os_log_type_t.error.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v36 = qword_10011B1C0;
  v37 = v59;
  (*(v4 + 16))(v6, a1, v59);
  if (os_log_type_enabled(v36, v35))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v64 = v39;
    *v38 = 136446210;
    v40 = CAUVehicleLayoutKey.rawValue.getter();
    v42 = v41;
    (*(v4 + 8))(v6, v37);
    v43 = sub_10000835C(v40, v42, &v64);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v35, "Unable to retrieve layoutInfo for %{public}s", v38, 0xCu);
    sub_100006B9C(v39);
  }

  else
  {
    (*(v4 + 8))(v6, v37);
  }

  (*(v62 + 56))(v60, 1, 1, v63);
  return CAUVehicleLayoutInfo.init(x:y:height:width:baselineAnchor:)();
}

uint64_t sub_1000407F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v17[4] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUAsset.Seat.State();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v17[2] = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAUResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(sub_1000040E8(&qword_100114470) + 48);
  v17[5] = v5;
  v17[6] = v4;
  v17[0] = *(v5 + 16);
  v17[1] = a1;
  (v17[0])(v13, a1, v4);
  v17[3] = v8;
  (*(v8 + 16))(&v13[v14], a2, v7);
  (*(v11 + 104))(v13, enum case for CAUResource.seat(_:), v10);
  v15 = CAUAssetLibrary.asset(for:)();
  (*(v11 + 8))(v13, v10);
  return v15;
}

uint64_t sub_100040C90(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_100117950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100040CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100040D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&unk_100117950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_100040DD8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10004DEB4(v3, v8);
  return sub_100040EF0;
}

uint64_t (*sub_100040EF4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10004DFF4(v3, v8);
  return sub_100050C1C;
}

uint64_t (*sub_10004100C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_10004E130(v3, v8);
  return sub_100050C1C;
}

void sub_100041124(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*sub_10004119C(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_10004E304(v8, a2, a3, a4);
  return sub_10004122C;
}

void sub_10004122C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void *sub_100041278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000A89C0(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v19 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v20 = v6;
    v21 = *(a1 + 36);
    result = _print_unlocked<A, B>(_:_:)();
    v10 = *(&_swiftEmptyArrayStorage + 2);
    v9 = *(&_swiftEmptyArrayStorage + 3);
    if (v10 >= v9 >> 1)
    {
      result = sub_1000A89C0((v9 > 1), v10 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v10 + 1;
    v11 = &_swiftEmptyArrayStorage + 16 * v10;
    *(v11 + 4) = 0;
    *(v11 + 5) = 0xE000000000000000;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v12 = *(a1 + 64 + 8 * v8);
    if ((v12 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v21 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v13 = v12 & (-2 << (v5 & 0x3F));
    if (v13)
    {
      v7 = __clz(__rbit64(v13)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v14 = v8 << 6;
      v15 = v8 + 1;
      v16 = (a1 + 72 + 8 * v8);
      while (v15 < (v7 + 63) >> 6)
      {
        v18 = *v16++;
        v17 = v18;
        v14 += 64;
        ++v15;
        if (v18)
        {
          result = sub_100050B88(v5, v21, 0);
          v7 = __clz(__rbit64(v17)) + v14;
          goto LABEL_4;
        }
      }

      result = sub_100050B88(v5, v21, 0);
    }

LABEL_4:
    v6 = v20 + 1;
    v5 = v7;
    if (v20 + 1 == v19)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

double sub_10004152C()
{
  LOBYTE(v0) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
LABEL_26:
    swift_once();
  }

  v1 = qword_10011B1C0;
  log = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v0))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v46[0] = v3;
    *v2 = 136446210;
    swift_beginAccess();

    sub_1000040E8(&qword_100115DC8);
    sub_10005034C();
    v4 = Dictionary.description.getter();
    v6 = v5;

    v7 = sub_10000835C(v4, v6, v46);

    *(v2 + 4) = v7;
    v1 = log;
    _os_log_impl(&_mh_execute_header, log, v0, "ActiveScenes = %{public}s", v2, 0xCu);
    sub_100006B9C(v3);
  }

  v8 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_activeScenes;
  swift_beginAccess();
  v9 = *(v43 + v8);
  v0 = v9 + 64;
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            goto LABEL_18;
          }

          v12 = *(v0 + 8 * v15);
          ++v14;
          if (v12)
          {
            v14 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_12:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v14 << 6);
      v18 = *(v9 + 48) + 24 * v17;
      v19 = *(v18 + 16);
      if (*(v18 + 16))
      {
        v21 = *v18;
        v20 = *(v18 + 8);
        v22 = *(*(v9 + 56) + 8 * v17);
        if (v19 == 1 || __PAIR128__(v20, v21) < 2)
        {
          break;
        }
      }
    }

    v23 = *(v22 + 16);

    if (v23)
    {
      break;
    }

    static os_log_type_t.debug.getter();
    v1 = log;
    os_log(_:dso:log:_:_:)();
    sub_10000E1FC(v21, v20, v19);
  }

  sub_10000E1FC(v21, v20, v19);
  sub_1000C58D0(v22);
  v36 = v35;
  v38 = v37;

  v1 = log;
  if (v36)
  {

    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(log, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      sub_1000C5E7C();
      *(v40 + 4) = v41;
      _os_log_impl(&_mh_execute_header, log, v39, "Returning main scale: %{public}f", v40, 0xCu);
    }

    sub_1000C5E7C();
    v25 = v42;
  }

  else
  {
LABEL_18:
    v24 = static os_log_type_t.debug.getter();
    v25 = 2.0;
    if (os_log_type_enabled(v1, v24))
    {
      v26 = swift_slowAlloc();
      v27 = v1;
      v28 = swift_slowAlloc();
      v45 = v28;
      *v26 = 136446210;

      sub_100041278(v29);

      sub_1000040E8(&qword_100115EA8);
      sub_10000A8E8(&qword_100115EE0, &qword_100115EA8);
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;

      v33 = sub_10000835C(v30, v32, &v45);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v24, "Unable to resolve a carplay sceneDelegate [%{public}s]", v26, 0xCu);
      sub_100006B9C(v28);
    }
  }

  return v25;
}

uint64_t sub_100041A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    v0 = 1 << *(v10 + 32);
    v1 = -1;
    if (v0 < 64)
    {
      v1 = ~(-1 << v0);
    }

    v2 = v1 & *(v10 + 64);
    v3 = (v0 + 63) >> 6;

    v5 = 0;
    if (v2)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v3)
      {
        sub_1000081D8(v7, v8, v9);
      }

      v2 = *(v10 + 64 + 8 * v6);
      ++v5;
      if (v2)
      {
        v5 = v6;
        do
        {
LABEL_10:
          v2 &= v2 - 1;

          sub_10007163C();
        }

        while (v2);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1000B44DC();
    return sub_100041BE8();
  }

  return result;
}

uint64_t sub_100041BE8()
{
  LOBYTE(v1) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v1))
  {
    v3 = v0;
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    v5 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_activeScenes;
    swift_beginAccess();
    *(v4 + 4) = *(*&v3[v5] + 16);

    _os_log_impl(&_mh_execute_header, v2, v1, "Updating view controllers for %{public}ld scenes", v4, 0xCu);
  }

  v6 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_activeScenes;
  swift_beginAccess();
  v1 = *&v0[v6];
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v1 + 56) + ((v12 << 9) | (8 * v13)));

      sub_1000448B0(&v15, v0);

      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }
}

double sub_100041DE0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100041E80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100041F00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100041F88()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100117E00);
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v53 - v3;
  v4 = sub_1000040E8(&qword_100115EF0);
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v63 = &v53 - v5;
  v6 = sub_1000040E8(&unk_100115EF8);
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = &v53 - v7;
  v8 = sub_1000040E8(&qword_100115DB0);
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  v56 = sub_1000040E8(&unk_1001151C0);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v53 - v10;
  v53 = sub_1000040E8(&qword_100115F08);
  v11 = *(v53 - 8);
  __chkstk_darwin(v53);
  v13 = &v53 - v12;
  v14 = sub_1000040E8(&qword_100115F10);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - v16;
  *&v0[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow] = 0;
  *&v0[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow] = 0;
  v18 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_carManager;
  *&v1[v18] = [objc_allocWithZone(CAFCarManager) init];
  v19 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_assetManager;
  type metadata accessor for CAUAssetLibraryManager();
  swift_allocObject();
  *&v1[v19] = CAUAssetLibraryManager.init()();
  v20 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_continuousStepperTracker;
  type metadata accessor for ClimateContinuousStepperTracker();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10004F608(_swiftEmptyArrayStorage);
  *&v1[v20] = v21;
  v22 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_targetTemperatureTracker;
  *&v1[v22] = [objc_allocWithZone(type metadata accessor for ClimateTargetTemperatureTracker()) init];
  v23 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_groupedVentHandler;
  *&v1[v23] = [objc_allocWithZone(type metadata accessor for ClimateGroupedVentsAutoModeHandler()) init];
  v24 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager;
  *&v1[v24] = [objc_allocWithZone(type metadata accessor for ClimateAccessibilityManager()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v25 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v25 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_cancellables] = v25;
  v26 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus;
  *&v1[v26] = [objc_allocWithZone(CARSessionStatus) initWithOptions:9];
  *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_supportedPTs] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager] = 0;
  v27 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__appActive;
  LOBYTE(v70) = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(&v1[v27], v17, v14);
  v28 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__currentCar;
  *&v70 = 0;
  sub_1000040E8(&qword_100115B70);
  Published.init(initialValue:)();
  (*(v11 + 32))(&v1[v28], v13, v53);
  v29 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__climateSystem;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  sub_1000040E8(&qword_100115B80);
  v30 = v54;
  Published.init(initialValue:)();
  (*(v55 + 32))(&v1[v29], v30, v56);
  v31 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__activeZone;
  *&v70 = 0;
  sub_1000040E8(&qword_100115B90);
  v32 = v57;
  Published.init(initialValue:)();
  (*(v58 + 32))(&v1[v31], v32, v59);
  v33 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__layoutSide;
  *&v70 = 2;
  type metadata accessor for UIRectEdge(0);
  v34 = v60;
  Published.init(initialValue:)();
  (*(v61 + 32))(&v1[v33], v34, v62);
  v35 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__layoutMode;
  LOBYTE(v70) = 0;
  v36 = v63;
  Published.init(initialValue:)();
  (*(v64 + 32))(&v1[v35], v36, v65);
  v37 = OBJC_IVAR____TtC7Climate18ClimateCoordinator__statusBarSteppersState;
  *&v70 = 3;
  v38 = v66;
  Published.init(initialValue:)();
  (*(v67 + 32))(&v1[v37], v38, v68);
  v39 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_dockFrames;
  type metadata accessor for ClimateOverlayViewController.DockFrames(0);
  v40 = swift_allocObject();
  ObservationRegistrar.init()();
  v40[3] = 0u;
  v40[4] = 0u;
  v40[1] = 0u;
  v40[2] = 0u;
  *&v1[v39] = v40;
  v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar] = 0;
  *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_activeScenes] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager] = [objc_allocWithZone(type metadata accessor for ClimateSignpostManager()) init];
  v41 = type metadata accessor for ClimateCoordinator();
  v69.receiver = v1;
  v69.super_class = v41;
  v42 = objc_msgSendSuper2(&v69, "init");
  sub_10004290C();
  [*&v42[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] addSessionObserver:v42];
  v43 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_carManager;
  [*&v42[OBJC_IVAR____TtC7Climate18ClimateCoordinator_carManager] registerObserver:v42];
  v44 = *&v42[v43];
  v45 = [v44 currentCar];
  [v42 carManager:v44 didUpdateCurrentCar:v45];

  v46 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v47 = qword_10011B1C0;

  if (os_log_type_enabled(v47, v46))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = *&v42[v43];
    *(v48 + 4) = v50;
    *v49 = v50;
    v51 = v50;
    _os_log_impl(&_mh_execute_header, v47, v46, "climate coordinator started carManager=%{public}@", v48, 0xCu);
    sub_100008904(v49, &unk_1001149E0);
  }

  return v42;
}

uint64_t sub_10004290C()
{
  i = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus) currentSession];
  LOBYTE(v0) = static os_log_type_t.debug.getter();
  if (!v2)
  {
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v23 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v0))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_10000835C(0xD000000000000016, 0x80000001000DC440, &v28);
      _os_log_impl(&_mh_execute_header, v23, v0, "%s No CARSession available", v24, 0xCu);
      sub_100006B9C(v25);
    }

    *(i + OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v28 = 2;
    v26 = i;
    return static Published.subscript.setter();
  }

  if (qword_100113F00 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v3 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v0))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v28 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_10000835C(0xD000000000000016, 0x80000001000DC440, &v28);
      _os_log_impl(&_mh_execute_header, v3, v0, "%s CARSession available", v4, 0xCu);
      sub_100006B9C(v5);
    }

    type metadata accessor for CAFUIRequestContentManager();
    swift_allocObject();
    v6 = v2;
    v7 = CAFUIRequestContentManager.init(session:)();
    v8 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager;
    *(i + OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager) = v7;

    v9 = [v6 configuration];
    v10 = [v9 rightHandDrive];

    v2 = v10 ? 8 : 2;
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v2;
    v11 = i;
    static Published.subscript.setter();
    if (!*(i + v8))
    {
      break;
    }

    v12 = CAFUIRequestContentManager.controller.getter();

    v13 = [v12 availablePunchThroughIdentifiers];

    sub_1000040E8(&qword_100115EA8);
    v0 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = 1 << *(v0 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v0 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    for (i = _swiftEmptyArrayStorage; v16; i[v2 + 4] = v20)
    {
LABEL_16:
      v20 = *(*(v0 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v16)))));

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_1000C501C(0, i[2] + 1, 1, i);
      }

      v2 = i[2];
      v21 = i[3];
      if (v2 >= v21 >> 1)
      {
        i = sub_1000C501C((v21 > 1), v2 + 1, 1, i);
      }

      v16 &= v16 - 1;
      i[2] = v2 + 1;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v28 = i;
        sub_1000040E8(&qword_100115EB0);
        sub_10000A8E8(&qword_100115EB8, &qword_100115EB0);
        sub_10000A8E8(&unk_100115EC0, &qword_100115EA8);
        v22 = Sequence<>.flatten()();

        goto LABEL_29;
      }

      v16 = *(v0 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_29:
  *(v11 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_supportedPTs) = v22;
}

id sub_100042ED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateCoordinator()
{
  result = qword_100115B50;
  if (!qword_100115B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004328C()
{
  sub_1000435FC(319, &qword_100115B60);
  if (v0 <= 0x3F)
  {
    sub_100043550(319, &qword_100115B68, &qword_100115B70);
    if (v1 <= 0x3F)
    {
      sub_100043550(319, &qword_100115B78, &qword_100115B80);
      if (v2 <= 0x3F)
      {
        sub_100043550(319, &qword_100115B88, &qword_100115B90);
        if (v3 <= 0x3F)
        {
          sub_1000435A4();
          if (v4 <= 0x3F)
          {
            sub_1000435FC(319, &qword_100115BA0);
            if (v5 <= 0x3F)
            {
              sub_1000435FC(319, &qword_100115BA8);
              if (v6 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100043550(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000082C4(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000435A4()
{
  if (!qword_100115B98)
  {
    type metadata accessor for UIRectEdge(255);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100115B98);
    }
  }
}

void sub_1000435FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100043648@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ClimateCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100043688(_BYTE *a1, void *a2)
{
  v3 = v2;
  v6 = &a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v7 = *&a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type];
  v8 = *&a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8];
  v9 = a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 16];
  sub_1000040E8(&qword_100115DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5970;
  v11 = *&a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier + 8];
  *(inited + 32) = *&a1[OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier];
  *(inited + 40) = v11;
  *(inited + 48) = a1;
  sub_100050338(v7, v8, v9);

  v12 = a1;
  v13 = sub_10004FE0C(inited);
  swift_setDeallocating();
  sub_100008904(inited + 32, &qword_100115DC0);
  v14 = OBJC_IVAR____TtC7Climate18ClimateCoordinator_activeScenes;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + v14);
  *(v3 + v14) = 0x8000000000000000;
  sub_10004BA08(v13, v7, v8, v9, isUniquelyReferenced_nonNull_native);
  sub_10000E1FC(v7, v8, v9);
  *(v3 + v14) = v30;
  swift_endAccess();
  v16 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v17 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136446210;

    sub_1000040E8(&qword_100115DC8);
    sub_10005034C();
    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_10000835C(v20, v22, v31);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v16, "Attach active scenes = %{public}s", v18, 0xCu);
    sub_100006B9C(v19);
  }

  v24 = *v6;
  v25 = *(v6 + 1);
  v26 = v6[16];
  sub_100050338(*v6, v25, v26);
  sub_100043978(v24, v25, v26, a2);
  v28 = v27;
  sub_10000E1FC(v24, v25, v26);
  return v28;
}

void sub_100043978(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  *&v65 = a2;
  *(&v65 + 1) = a1;
  v7 = type metadata accessor for CAUResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040E8(&unk_100115DD8);
  __chkstk_darwin(v11);
  v13 = &v63 - v12;
  v14 = type metadata accessor for CAUPhysicalControlBarsLayout();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 2)
    {
      if (v65 == 0)
      {
        if (a4)
        {
          v39 = [a4 _FBSScene];
          v20 = [v39 settings];

          if (v20)
          {
            objc_opt_self();
            v40 = swift_dynamicCastObjCClass();
            if (v40)
            {
              v41 = v40;
              static os_log_type_t.debug.getter();
              if (qword_100113F00 != -1)
              {
                swift_once();
              }

              os_log(_:dso:log:_:_:)();
              v42 = *&v4[OBJC_IVAR____TtC7Climate18ClimateCoordinator_dockFrames];
              sub_100027940(v41);
              v43 = [objc_opt_self() sharedApplication];
              v44 = [v43 delegate];

              if (!v44)
              {
                __break(1u);
                return;
              }

              type metadata accessor for ClimateAppDelegate();
              swift_dynamicCastClassUnconditional();
              v45 = sub_1000AF438();
              swift_unknownObjectRelease();
              swift_getKeyPath();
              swift_getKeyPath();
              v47 = static Published.subscript.modify();
              if ((*v46 & 1) == 0)
              {
                *v46 |= 1uLL;
              }

              v47(&v68, 0);

              v48 = objc_allocWithZone(type metadata accessor for ClimateOverlayViewController(0));

              v49 = a4;
              sub_10001C888(v42, a4);
              goto LABEL_49;
            }
          }
        }

        static os_log_type_t.debug.getter();
        if (qword_100113F00 == -1)
        {
          goto LABEL_42;
        }

LABEL_53:
        swift_once();
LABEL_42:
        os_log(_:dso:log:_:_:)();
        v53 = objc_allocWithZone(type metadata accessor for ClimateLoadingViewController());
        v36 = *(&v65 + 1);
        v37 = v65;
        v38 = 2;
        goto LABEL_43;
      }

      if (!(*(&v65 + 1) ^ 1 | v65))
      {
        v64 = v16;
        if (a4)
        {
          v19 = [a4 _FBSScene];
          v20 = [v19 settings];

          if (v20)
          {
            objc_opt_self();
            v21 = swift_dynamicCastObjCClass();
            if (v21)
            {
              if ([v21 hasPhysicalControlBars])
              {
                v22 = dispatch thunk of CAUAssetLibraryManager.slimAssetLibrary.getter();
                if (v22)
                {
                  v23 = v22;
                  (*(v8 + 104))(v10, enum case for CAUResource.physicalControlBarsLayout(_:), v7);
                  sub_1000503A8();
                  v24 = v23;
                  dispatch thunk of CAUAssetLibrary.asset<A>(for:)();
                  (*(v8 + 8))(v10, v7);
                  v56 = (*(v15 + 48))(v13, 1, v64);
                  if (v56 == 1)
                  {
                    sub_100008904(v13, &unk_100115DD8);
                    static os_log_type_t.debug.getter();
                    sub_10000827C(0, &qword_1001149B0);
                    v57 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v58 = objc_allocWithZone(type metadata accessor for ClimateLoadingViewController());
                    sub_10000DB00(*(&v65 + 1), v65, 2);
                  }

                  else
                  {
                    v59 = v64;
                    (*(v15 + 32))(v18, v13, v64);
                    static os_log_type_t.debug.getter();
                    sub_10000827C(0, &qword_1001149B0);
                    v60 = static OS_os_log.default.getter();
                    os_log(_:dso:log:_:_:)();

                    v61 = CAUPhysicalControlBarsLayout.climateLayouts.getter();
                    v62 = objc_allocWithZone(type metadata accessor for ClimatePhysicalControlBarsViewController());
                    sub_100008A48(v61);

                    (*(v15 + 8))(v18, v59);
                  }

                  return;
                }

                static os_log_type_t.debug.getter();
                sub_10000827C(0, &qword_1001149B0);
                v54 = static OS_os_log.default.getter();
                os_log(_:dso:log:_:_:)();
              }

              else
              {
                static os_log_type_t.debug.getter();
                if (qword_100113F00 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();
              }

              v55 = objc_allocWithZone(type metadata accessor for ClimateLoadingViewController());
              sub_10000DB00(*(&v65 + 1), v65, 2);
LABEL_49:

              return;
            }
          }
        }

        static os_log_type_t.debug.getter();
        if (qword_100113F00 == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_53;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v68)
    {
      static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      goto LABEL_24;
    }

    sub_1000081D8(v68, v69, v70);
    if (a3 != 1)
    {
      if (a3 == 2 && v65 == __PAIR128__(2, 0))
      {
        static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v25 = type metadata accessor for ClimateRoleViewController();
        v26 = objc_allocWithZone(v25);
        v27 = &v26[OBJC_IVAR____TtC7Climate25ClimateRoleViewController_role];
        *v27 = 0x656E6F6850;
        *(v27 + 1) = 0xE500000000000000;
        v67.receiver = v26;
        v67.super_class = v25;
        objc_msgSendSuper2(&v67, "initWithNibName:bundle:", 0, 0);
        return;
      }

LABEL_24:
      v34 = objc_allocWithZone(type metadata accessor for ClimateLoadingViewController());
      v35 = v65;
      sub_100050338(*(&v65 + 1), v65, a3);
      v36 = *(&v35 + 1);
      v37 = v35;
      v38 = a3;
LABEL_43:
      sub_10000DB00(v36, v37, v38);
      return;
    }

    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v68) = BYTE8(v65);
    v50 = v4;
    static Published.subscript.setter();
    v51 = [objc_allocWithZone(type metadata accessor for ClimateAppViewController()) init];
    v52 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v51];

    [v52 setNavigationBarHidden:1];
  }

  else
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v68 = 0x206E776F6E6B6E55;
    v69 = 0xE800000000000000;
    v28._countAndFlagsBits = *(&v65 + 1);
    v28._object = v65;
    String.append(_:)(v28);
    v29 = v68;
    v30 = v69;
    v31 = type metadata accessor for ClimateRoleViewController();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____TtC7Climate25ClimateRoleViewController_role];
    *v33 = v29;
    v33[1] = v30;
    v66.receiver = v32;
    v66.super_class = v31;
    objc_msgSendSuper2(&v66, "initWithNibName:bundle:", 0, 0);
  }
}

id sub_1000445A4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type);
  v3 = *(a1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8);
  v4 = *(a1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 16);
  sub_100050338(v2, v3, v4);
  v5 = sub_1000414CC();
  v6 = sub_10004119C(v25, v2, v3, v4);
  if (*v7)
  {
    v8 = a1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier;
    v9 = *(a1 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_persistentIdentifier);
    v10 = *(v8 + 8);

    v11 = sub_100046990(v9, v10);
  }

  (v6)(v25, 0);
  sub_10000E1FC(v2, v3, v4);
  (v5)(v26, 0);
  v12 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v13 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136446210;
    swift_beginAccess();

    sub_1000040E8(&qword_100115DC8);
    sub_10005034C();
    v16 = Dictionary.description.getter();
    v18 = v17;

    v19 = sub_10000835C(v16, v18, v25);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "Detach active scenes = %{public}s", v14, 0xCu);
    sub_100006B9C(v15);
  }

  v20 = type metadata accessor for ClimateRoleViewController();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC7Climate25ClimateRoleViewController_role];
  *v22 = 0x74657320746F6ELL;
  *(v22 + 1) = 0xE700000000000000;
  v24.receiver = v21;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_1000448B0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  LOBYTE(v4) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
LABEL_16:
    swift_once();
  }

  v5 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v4))
  {

    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *(v3 + 16);

    _os_log_impl(&_mh_execute_header, v5, v4, "Updating view controllers for %{public}ld delegates", v6, 0xCu);
  }

  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = *(*(v3 + 56) + ((v12 << 9) | (8 * v13)));
      v4 = v15;
      sub_100044A74(&v15, a2);

      if (!v9)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v3 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }
}

void sub_100044A74(uint64_t *a1, void *a2)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v28)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = v32;
  if (v31)
  {
    sub_1000081D8(v28, v29, v30);
  }

  else
  {

    sub_1000081D8(v28, v29, v30);
    if (!v32)
    {
      goto LABEL_8;
    }
  }

  v4 = 1;
LABEL_8:
  v5 = OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_rootViewController;
  type metadata accessor for ClimateLoadingViewController();
  if (((v4 ^ (swift_dynamicCastClass() != 0)) & 1) == 0)
  {
    v12 = *(v3 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type);
    v13 = *(v3 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 8);
    v14 = *(v3 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_type + 16);
    v15 = *(v3 + OBJC_IVAR____TtC7Climate20ClimateSceneDelegate_window);
    sub_100050338(v12, v13, v14);
    if (v15)
    {
      v15 = [v15 windowScene];
    }

    sub_100043978(v12, v13, v14, v15);
    v17 = v16;

    sub_10000E1FC(v12, v13, v14);
    v18 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v19 = qword_10011B1C0;
    if (!os_log_type_enabled(qword_10011B1C0, v18))
    {
      goto LABEL_26;
    }

    v20 = a2;
    v21 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v21 = 67109378;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v28)
    {
      if (v31)
      {
        sub_1000081D8(v28, v29, v30);
        v22 = v20;
      }

      else
      {

        sub_1000081D8(v28, v29, v30);
        v22 = v20;

        if (!v32)
        {
          v23 = 0;
          goto LABEL_25;
        }
      }

      v23 = 1;
    }

    else
    {

      v23 = 0;
      v22 = v20;
    }

LABEL_25:
    *(v21 + 4) = v23;

    *(v21 + 8) = 2112;
    *(v21 + 10) = v17;
    *v27 = v17;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v19, v18, "climatesystem.isSystemReady=%{BOOL}d, showing view controller %@.", v21, 0x12u);
    sub_100008904(v27, &unk_1001149E0);

LABEL_26:
    v25 = *(v3 + v5);
    *(v3 + v5) = v17;
    v26 = v17;

    sub_1000C5D28();
    return;
  }

  v6 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v7 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v3 + v5);
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v7, v6, "using existing view controller %@", v8, 0xCu);
    sub_100008904(v9, &unk_1001149E0);
  }
}

void sub_100044F58(uint64_t a1, unint64_t a2)
{
  v89 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v93)
  {
    sub_1000081D8(v93, *(&v93 + 1), v94);
    v12 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v13 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v93 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_10000835C(a1, v89, &v93);
      _os_log_impl(&_mh_execute_header, v13, v12, "ClimateSystem Ready? (%{public}s) Early exit, already have climate system.", v14, 0xCu);
      sub_100006B9C(v15);
LABEL_6:

      return;
    }

    return;
  }

  v87 = v9;
  v88 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v93;
  if (v93)
  {
    v17 = [v93 climate];
    if (!v17)
    {
      v48 = static os_log_type_t.debug.getter();
      if (qword_100113F00 != -1)
      {
        swift_once();
      }

      v49 = qword_10011B1C0;
      if (os_log_type_enabled(qword_10011B1C0, v48))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v93 = v51;
        *v50 = 136446210;
        *(v50 + 4) = sub_10000835C(a1, v89, &v93);
        _os_log_impl(&_mh_execute_header, v49, v48, "ClimateSystem Ready? (%{public}s) Missing the Climate accessory", v50, 0xCu);
        sub_100006B9C(v51);
      }

      return;
    }

    v18 = v17;
    v19 = [v16 positionManager];
    if (v19)
    {
      v20 = v19;
      if ([v19 accessoryIsTracked:v18])
      {
        v85 = v18;
        v83 = v16;
        sub_100054F80(v83, v91);
        swift_getKeyPath();
        swift_getKeyPath();
        v93 = v91[0];
        v94 = v91[1];
        v95 = v91[2];
        v96 = v92;
        v21 = v2;
        sub_1000287E8(v91, aBlock, &qword_100115B80);
        static Published.subscript.setter();
        sub_100041A5C();
        sub_100008904(v91, &qword_100115B80);
        swift_getKeyPath();
        swift_getKeyPath();
        v86 = v21;
        static Published.subscript.getter();

        v84 = v20;
        if (!v93)
        {
          v64 = static os_log_type_t.debug.getter();
          if (qword_100113F00 != -1)
          {
            swift_once();
          }

          v65 = qword_10011B1C0;
          if (os_log_type_enabled(qword_10011B1C0, v64))
          {
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            *&v93 = v67;
            *v66 = 136446210;
            *(v66 + 4) = sub_10000835C(a1, v89, &v93);
            _os_log_impl(&_mh_execute_header, v65, v64, "ClimateSystem Ready? (%{public}s) No climateSystem available.", v66, 0xCu);
            sub_100006B9C(v67);
          }

          swift_getKeyPath();
          swift_getKeyPath();
          *&v93 = 0;
          v68 = v86;
          static Published.subscript.setter();
          goto LABEL_47;
        }

        v22 = v95;
        v78 = *(&v93 + 1);
        v81 = v93;
        v23 = *(&v94 + 1);
        v79 = v94;
        v80 = *(&v95 + 1);
        v82 = v96;
        v24 = static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        v77 = qword_10011B1C0;
        if (os_log_type_enabled(qword_10011B1C0, v24))
        {
          v25 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          aBlock[0] = v76;
          *v25 = 136446466;
          v26 = sub_10000835C(a1, v89, aBlock);
          v75 = v25;
          *(v25 + 4) = v26;
          *(v25 + 12) = 2082;

          v89 = v23;
          v27 = v81;
          v28 = v78;
          v29 = v78;
          v30 = v79;
          v31 = v79;

          v74 = v24;
          v32 = sub_100054AE4();
          v33 = v22;
          v35 = v34;
          v36 = v28;
          v23 = v89;
          sub_1000081D8(v81, v36, v30);
          v37 = sub_10000835C(v32, v35, aBlock);
          v22 = v33;

          v38 = v75;
          *(v75 + 14) = v37;
          _os_log_impl(&_mh_execute_header, v77, v74, "ClimateSystem Ready? (%{public}s) Yes! climateSystem=%{public}s", v38, 0x16u);
          swift_arrayDestroy();
        }

        *(*&v86[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager] + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_climateSystemManagerCreated) = 1;
        v39 = sub_1000B4ABC();
        if (sub_100054E6C(v39))
        {
          v40 = v23;
          v41 = v22;
          if (v22)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v40 = v22;
          v41 = v23;
          if (v23)
          {
            goto LABEL_46;
          }
        }

        v41 = v40;
        if (!v40)
        {
          static os_log_type_t.debug.getter();
          os_log(_:dso:log:_:_:)();
          sub_1000081D8(v81, v78, v79);
          goto LABEL_47;
        }

LABEL_46:

        swift_getKeyPath();
        swift_getKeyPath();
        aBlock[0] = v41;
        v69 = v86;

        static Published.subscript.setter();
        sub_1000081D8(v81, v78, v79);

LABEL_47:
        sub_10000827C(0, &qword_1001159B0);
        v70 = static OS_dispatch_queue.main.getter();
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_10005053C;
        aBlock[5] = v71;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000B4DF4;
        aBlock[3] = &unk_1000F8068;
        v72 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10005055C(&qword_1001178B0, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000040E8(&unk_1001159C0);
        sub_10000A8E8(&qword_1001178C0, &unk_1001159C0);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v72);

        (*(v88 + 8))(v7, v4);
        (*(v87 + 8))(v11, v8);
        return;
      }
    }

    v52 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v53 = qword_10011B1C0;
    if (os_log_type_enabled(qword_10011B1C0, v52))
    {
      v54 = v16;
      v55 = v18;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v93 = v58;
      *v56 = 136446722;
      *(v56 + 4) = sub_10000835C(a1, v89, &v93);
      *(v56 + 12) = 2114;
      v59 = [v54 positionManager];
      *(v56 + 14) = v59;
      *v57 = v59;
      *(v56 + 22) = 1024;
      v60 = [v54 positionManager];
      v63 = 0;
      if (v60)
      {
        v61 = v60;
        v62 = [v60 accessoryIsTracked:v55];

        if (v62)
        {
          v63 = 1;
        }
      }

      *(v56 + 24) = v63;

      _os_log_impl(&_mh_execute_header, v53, v52, "ClimateSystem Ready? (%{public}s) positionManager=%{public}@ climateTracked=%{BOOL}d", v56, 0x1Cu);
      sub_100008904(v57, &unk_1001149E0);

      sub_100006B9C(v58);
    }

    else
    {
    }

    return;
  }

  v42 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v43 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v42))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v93 = v46;
    *v44 = 136446466;
    *(v44 + 4) = sub_10000835C(a1, v89, &v93);
    *(v44 + 12) = 2112;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v47 = *&v91[0];
    *(v44 + 14) = *&v91[0];
    *v45 = v47;
    _os_log_impl(&_mh_execute_header, v43, v42, "ClimateSystem Ready? (%{public}s) currentCar=%@", v44, 0x16u);
    sub_100008904(v45, &unk_1001149E0);

    sub_100006B9C(v46);
    goto LABEL_6;
  }
}

void sub_100045E74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100041BE8();
  }
}

uint64_t sub_100046134()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_1000461A0()
{
  swift_beginAccess();
  sub_1000040E8(&qword_100115DB0);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100046214()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

BOOL sub_100046334(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100046364@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100046390@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10004647C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000504CC(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000464C0()
{
  result = qword_100115D90;
  if (!qword_100115D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D90);
  }

  return result;
}

unint64_t sub_100046518()
{
  result = qword_100115D98;
  if (!qword_100115D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115D98);
  }

  return result;
}

unint64_t sub_100046570()
{
  result = qword_100115DA0;
  if (!qword_100115DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DA0);
  }

  return result;
}

unint64_t sub_1000465C8()
{
  result = qword_100115DA8;
  if (!qword_100115DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DA8);
  }

  return result;
}

uint64_t sub_100046628@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000466AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100046728@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1000467AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t sub_100046868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  result = sub_10007DD80(a1);
  v15 = v14;
  if (v14)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v6;
    v21 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10004C4AC(a4, a5, a2, a3);
      v18 = v21;
    }

    v19 = *(v18 + 48);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v19 + *(*(v20 - 8) + 72) * v16, v20);
    sub_10000A930(*(v18 + 56) + 8 * v16, a6, a2);
    result = sub_10004999C(v16, v18, a2, a3);
    *v11 = v18;
  }

  else
  {
    *a6 = 0;
  }

  *(a6 + 8) = (v15 & 1) == 0;
  return result;
}

uint64_t sub_100046990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10007E0B0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10004D054();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_10004A808(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100046A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10007DD80(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10004D744();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_1000040E8(&unk_100114790);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10004AA00(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1000040E8(&unk_100114790);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100046BE0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115E98);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}