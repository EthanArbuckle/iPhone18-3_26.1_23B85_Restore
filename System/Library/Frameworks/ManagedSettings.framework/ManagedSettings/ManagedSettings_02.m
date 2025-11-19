void sub_10002ACF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentConnection];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 processIdentifier];
  }

  else
  {
    v11 = 0;
  }

  static Logger.agent.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240192;
    *(v14 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Effective media settings received from process %{public}d", v14, 8u);
  }

  (*(v5 + 8))(v8, v4);
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    swift_errorRetain();
    v21 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, 0, 0, v21);

    return;
  }

  v15 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
  sub_100022170(1);
  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    sub_100006820(0, &qword_10007B410, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v22 = v41;
      v40 = [v41 integerValue];

      goto LABEL_16;
    }
  }

  else
  {
    sub_100008630(&v44, &unk_10007B3F0, &unk_100066D70);
  }

  v23 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
  v40 = sub_10003423C();
LABEL_16:
  v24 = [v16 standardUserDefaults];
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 objectForKey:v25];

  if (v26)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    sub_100006820(0, &qword_10007B410, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v27 = v41;
      v28 = [v41 integerValue];

      goto LABEL_24;
    }
  }

  else
  {
    sub_100008630(&v44, &unk_10007B3F0, &unk_100066D70);
  }

  v29 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
  v28 = sub_100034254();
LABEL_24:
  v30 = [v16 standardUserDefaults];
  v31 = String._bridgeToObjectiveC()();
  v32 = [v30 objectForKey:v31];

  if (v32)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    sub_100008630(&v44, &unk_10007B3F0, &unk_100066D70);
    goto LABEL_31;
  }

  sub_100006820(0, &qword_10007B410, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v35 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_effectiveSettings);
    v34 = sub_100034508();
    goto LABEL_32;
  }

  v33 = v41;
  v34 = [v41 BOOLValue];

LABEL_32:
  v36 = objc_allocWithZone(NSNumber);
  v37 = [v36 initWithInteger:v40];
  v38 = [objc_allocWithZone(NSNumber) initWithInteger:v28];
  v39 = [objc_allocWithZone(NSNumber) initWithBool:v34 & 1];
  (*(a2 + 16))(a2, v37, v38, v39, 0);
}

void sub_10002B320(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v29 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      v19 = *(a4 + 40);
      Hasher.init(_seed:)();

      v32 = v18;
      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(a4 + 32);
      v22 = v20 & ~v21;
      if ((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(a4 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v16;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v33 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_26:
          sub_10004C74C(a1, a2, v30, a3);
          return;
        }
      }

      else
      {
LABEL_5:
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
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_10002B53C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_10002A77C(v13, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_10002B320((&v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

void sub_10002B6FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a6;
  v68 = a8;
  v61 = a5;
  v62 = a3;
  v63 = a4;
  v64 = a1;
  v65 = a2;
  v60 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = *(*(v60 - 8) + 64);
  v10 = __chkstk_darwin(v60);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v66 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v56 - v20;
  v22 = [objc_opt_self() currentConnection];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 processIdentifier];
  }

  else
  {
    v24 = 0;
  }

  static Logger.agent.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67240192;
    *(v27 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "Get received from process %{public}d", v27, 8u);
  }

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    *v33 = 2;
LABEL_15:
    swift_willThrow();
    swift_errorRetain();
    v36 = _convertErrorToNSError(_:)();
    (*(v68 + 16))(v68, 0, v36);

    return;
  }

  if ((sub_100029BFC() & 1) == 0)
  {
    sub_100031408();
    swift_allocError();
    *v34 = 0;
    goto LABEL_15;
  }

  v29 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
  sub_100022170(1);
  *&v70 = 0;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  if (!v70)
  {
    sub_100031408();
    swift_allocError();
    *v35 = 1;
    goto LABEL_15;
  }

  v30 = v70;
  v58 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
  sub_100028434(0xD000000000000028, 0x8000000100069A60, &v70);
  if (v71)
  {
    v31 = swift_dynamicCast();
    v32 = v63;
    if (v31)
    {
      LODWORD(v64) = v69;
    }

    else
    {
      LODWORD(v64) = 0;
    }
  }

  else
  {
    sub_100008630(&v70, &unk_10007B3F0, &unk_100066D70);
    LODWORD(v64) = 0;
    v32 = v63;
  }

  static Logger.persistenceRecordStore.getter();
  sub_100006754(v65, v14, &unk_10007B400, &unk_100066D80);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v57 = v38;
  v59 = v37;
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v70 = v56;
    *v39 = 136447234;
    v40 = Set.description.getter();
    v42 = v30;
    v43 = sub_100001ED8(v40, v41, &v70);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    sub_100006754(v14, v12, &unk_10007B400, &unk_100066D80);
    v44 = String.init<A>(describing:)();
    v46 = v45;
    sub_100008630(v14, &unk_10007B400, &unk_100066D80);
    v47 = sub_100001ED8(v44, v46, &v70);
    v32 = v63;

    *(v39 + 14) = v47;
    *(v39 + 22) = 2082;
    *(v39 + 24) = sub_100001ED8(v62, v32, &v70);
    *(v39 + 32) = 2082;
    v48 = v61;
    *(v39 + 34) = sub_100001ED8(v61, v67, &v70);
    *(v39 + 42) = 2082;
    v49 = v64;
    if (v64)
    {
      v50 = 7562585;
    }

    else
    {
      v50 = 28494;
    }

    if (v64)
    {
      v51 = 0xE300000000000000;
    }

    else
    {
      v51 = 0xE200000000000000;
    }

    v52 = sub_100001ED8(v50, v51, &v70);

    *(v39 + 44) = v52;
    v53 = v59;
    _os_log_impl(&_mh_execute_header, v59, v57, "Get settings %{public}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v39, 0x34u);
    swift_arrayDestroy();

    v28(v66, v15);
  }

  else
  {

    sub_100008630(v14, &unk_10007B400, &unk_100066D80);
    v28(v66, v15);
    v48 = v61;
    v42 = v30;
    v49 = v64;
  }

  if (*(v42 + 16))
  {
    v54 = sub_100036D80(v65, v62, v32, v48, v67, v49);

    sub_10002B53C(v54, v42);
  }

  else
  {
    sub_100006278(_swiftEmptyArrayStorage);
  }

  sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v68 + 16))(v68, isa, 0);
}

uint64_t sub_10002BEA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a4;
  v97 = a8;
  v94 = a6;
  v95 = a2;
  v89 = a5;
  v91 = a1;
  v88 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v88 - 8) + 64);
  v11 = __chkstk_darwin(v88);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v81 - v15;
  v17 = __chkstk_darwin(v14);
  v86 = v81 - v18;
  v19 = __chkstk_darwin(v17);
  v87 = v81 - v20;
  v21 = __chkstk_darwin(v19);
  v92 = v81 - v22;
  __chkstk_darwin(v21);
  v24 = v81 - v23;
  v98 = type metadata accessor for Logger();
  v25 = *(v98 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v98);
  v93 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v81 - v29;
  v31 = [objc_opt_self() currentConnection];
  v90 = a3;
  if (v31)
  {
    v32 = v31;
    v33 = [v31 processIdentifier];
  }

  else
  {
    v33 = 0;
  }

  static Logger.agent.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67240192;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Set received from process %{public}d", v36, 8u);
  }

  v37 = *(v25 + 8);
  v37(v30, v98);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v38 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      *&v100 = 0;
      v39 = sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v100)
      {
        v81[1] = v39;
        v91 = v100;
        v85 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v100);
        if (v101)
        {
          v40 = swift_dynamicCast();
          v41 = v96;
          v42 = v94;
          v43 = v92;
          if (v40)
          {
            v44 = v99;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          sub_100008630(&v100, &unk_10007B3F0, &unk_100066D70);
          v44 = 0;
          v41 = v96;
          v42 = v94;
          v43 = v92;
        }

        v84 = v44;
        static Logger.persistenceRecordStore.getter();
        sub_100006754(v95, v43, &unk_10007B400, &unk_100066D80);
        v54 = v91;

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        v82 = v56;
        v83 = v55;
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v81[0] = swift_slowAlloc();
          *&v100 = v81[0];
          *v57 = 136381699;
          v58 = Dictionary.description.getter();
          v60 = sub_100001ED8(v58, v59, &v100);
          v61 = v92;
          v62 = v60;

          *(v57 + 4) = v62;
          *(v57 + 12) = 2082;
          sub_100006754(v61, v87, &unk_10007B400, &unk_100066D80);
          v63 = String.init<A>(describing:)();
          v65 = v64;
          sub_100008630(v61, &unk_10007B400, &unk_100066D80);
          v66 = sub_100001ED8(v63, v65, &v100);

          *(v57 + 14) = v66;
          *(v57 + 22) = 2082;
          *(v57 + 24) = sub_100001ED8(v90, v96, &v100);
          *(v57 + 32) = 2082;
          v67 = v89;
          *(v57 + 34) = sub_100001ED8(v89, v94, &v100);
          *(v57 + 42) = 2082;
          v68 = v84;
          if (v84)
          {
            v69 = 7562585;
          }

          else
          {
            v69 = 28494;
          }

          if (v84)
          {
            v70 = 0xE300000000000000;
          }

          else
          {
            v70 = 0xE200000000000000;
          }

          v71 = sub_100001ED8(v69, v70, &v100);

          *(v57 + 44) = v71;
          v72 = v83;
          _os_log_impl(&_mh_execute_header, v83, v82, "Set values %{private}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v57, 0x34u);
          swift_arrayDestroy();

          v42 = v94;
          v41 = v96;

          v73 = v90;
          v37(v93, v98);
          v74 = v67;
          v75 = v91;
        }

        else
        {

          sub_100008630(v92, &unk_10007B400, &unk_100066D80);
          v37(v93, v98);
          v74 = v89;
          v73 = v90;
          v75 = v54;
          v68 = v84;
        }

        v76 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v75, &_swiftEmptySetSingleton, v76, 0, v95, v73, v41, v74, v24, v42, v68);

        v77 = v86;
        sub_100006754(v24, v86, &unk_10007B400, &unk_100066D80);
        v78 = type metadata accessor for UUID();
        v79 = *(v78 - 8);
        isa = 0;
        if ((*(v79 + 48))(v77, 1, v78) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v79 + 8))(v77, v78);
        }

        (*(v97 + 16))(v97, isa, 0);

        return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v47 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v46 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v45 = 2;
  }

  swift_willThrow();
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  (*(v49 + 56))(v16, 1, 1, v48);
  sub_100006754(v16, v13, &unk_10007B400, &unk_100066D80);
  v50 = (*(v49 + 48))(v13, 1, v48);
  swift_errorRetain();
  v51 = 0;
  if (v50 != 1)
  {
    v51 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v49 + 8))(v13, v48);
  }

  v52 = _convertErrorToNSError(_:)();
  (*(v97 + 16))(v97, v51, v52);

  v24 = v16;
  return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002C89C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = a4;
  v94 = a8;
  v91 = a2;
  v92 = a6;
  v88 = a1;
  v85 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v11 = *(*(v85 - 8) + 64);
  v12 = __chkstk_darwin(v85);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v77 - v16;
  v18 = __chkstk_darwin(v15);
  v83 = &v77 - v19;
  v20 = __chkstk_darwin(v18);
  v84 = &v77 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v77 - v23;
  __chkstk_darwin(v22);
  v26 = &v77 - v25;
  v95 = type metadata accessor for Logger();
  v27 = *(v95 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v95);
  v90 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v77 - v31;
  v33 = [objc_opt_self() currentConnection];
  v86 = a3;
  v87 = a5;
  v89 = v24;
  if (v33)
  {
    v34 = v33;
    v35 = [v33 processIdentifier];
  }

  else
  {
    v35 = 0;
  }

  static Logger.agent.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67240192;
    *(v38 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v36, v37, "Remove received from process %{public}d", v38, 8u);
  }

  v39 = *(v27 + 8);
  v39(v32, v95);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v40 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      *&v97 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v97)
      {
        v41 = v97;
        v82 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v97);
        if (v98)
        {
          v42 = swift_dynamicCast();
          v43 = v89;
          if (v42)
          {
            LODWORD(v88) = v96;
          }

          else
          {
            LODWORD(v88) = 0;
          }
        }

        else
        {
          sub_100008630(&v97, &unk_10007B3F0, &unk_100066D70);
          LODWORD(v88) = 0;
          v43 = v89;
        }

        static Logger.persistenceRecordStore.getter();
        sub_100006754(v91, v43, &unk_10007B400, &unk_100066D80);

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        v80 = v54;
        v81 = v53;
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v97 = v78;
          *v55 = 136447234;
          v56 = Set.description.getter();
          v79 = v41;
          v58 = sub_100001ED8(v56, v57, &v97);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2082;
          v59 = v89;
          sub_100006754(v89, v84, &unk_10007B400, &unk_100066D80);
          v60 = String.init<A>(describing:)();
          v62 = v61;
          sub_100008630(v59, &unk_10007B400, &unk_100066D80);
          v63 = sub_100001ED8(v60, v62, &v97);

          *(v55 + 14) = v63;
          *(v55 + 22) = 2082;
          *(v55 + 24) = sub_100001ED8(v86, v93, &v97);
          *(v55 + 32) = 2082;
          *(v55 + 34) = sub_100001ED8(v87, v92, &v97);
          *(v55 + 42) = 2082;
          if (v88)
          {
            v64 = 7562585;
          }

          else
          {
            v64 = 28494;
          }

          if (v88)
          {
            v65 = 0xE300000000000000;
          }

          else
          {
            v65 = 0xE200000000000000;
          }

          v66 = sub_100001ED8(v64, v65, &v97);

          *(v55 + 44) = v66;
          v41 = v79;
          v67 = v93;
          v68 = v81;
          _os_log_impl(&_mh_execute_header, v81, v80, "Remove values for settings %{public}s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v55, 0x34u);
          swift_arrayDestroy();

          v39(v90, v95);
          v69 = v86;
          v70 = v92;
        }

        else
        {

          sub_100008630(v89, &unk_10007B400, &unk_100066D80);
          v39(v90, v95);
          v69 = v86;
          v70 = v92;
          v67 = v93;
        }

        v71 = sub_100006278(_swiftEmptyArrayStorage);
        v72 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v71, v41, v72, 0, v91, v69, v67, v87, v26, v70, v88);

        v73 = v83;
        sub_100006754(v26, v83, &unk_10007B400, &unk_100066D80);
        v74 = type metadata accessor for UUID();
        v75 = *(v74 - 8);
        isa = 0;
        if ((*(v75 + 48))(v73, 1, v74) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v75 + 8))(v73, v74);
        }

        (*(v94 + 16))(v94, isa, 0);

        return sub_100008630(v26, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v46 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v45 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v44 = 2;
  }

  swift_willThrow();
  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  (*(v48 + 56))(v17, 1, 1, v47);
  sub_100006754(v17, v14, &unk_10007B400, &unk_100066D80);
  v49 = (*(v48 + 48))(v14, 1, v47);
  swift_errorRetain();
  v50 = 0;
  if (v49 != 1)
  {
    v50 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v48 + 8))(v14, v47);
  }

  v51 = _convertErrorToNSError(_:)();
  (*(v94 + 16))(v94, v50, v51);

  v26 = v17;
  return sub_100008630(v26, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002D270(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = a7;
  v87 = a3;
  v88 = a4;
  v89 = a1;
  v83 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v83 - 8) + 64);
  v11 = __chkstk_darwin(v83);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v90 = &v75 - v15;
  v16 = __chkstk_darwin(v14);
  v81 = &v75 - v17;
  v18 = __chkstk_darwin(v16);
  v82 = &v75 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v75 - v21;
  __chkstk_darwin(v20);
  v24 = &v75 - v23;
  v92 = type metadata accessor for Logger();
  v25 = *(v92 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v92);
  v84 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v75 - v29;
  v31 = [objc_opt_self() currentConnection];
  v85 = a5;
  v86 = a2;
  if (v31)
  {
    v32 = v31;
    v33 = [v31 processIdentifier];
  }

  else
  {
    v33 = 0;
  }

  static Logger.agent.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67240192;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "clear all received from process %{public}d", v36, 8u);
  }

  v37 = *(v25 + 8);
  v37(v30, v92);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v38 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      v79 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v94);
      if (v95)
      {
        v39 = swift_dynamicCast();
        v40 = v87;
        v41 = v84;
        if (v39)
        {
          v42 = v93;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        sub_100008630(&v94, &unk_10007B3F0, &unk_100066D70);
        v42 = 0;
        v40 = v87;
        v41 = v84;
      }

      v78 = v42;
      static Logger.persistenceRecordStore.getter();
      sub_100006754(v89, v22, &unk_10007B400, &unk_100066D80);

      v52 = v85;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      v77 = v54;
      v80 = v53;
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v94 = v76;
        *v55 = 136446978;
        sub_100006754(v22, v82, &unk_10007B400, &unk_100066D80);
        v56 = String.init<A>(describing:)();
        v58 = v57;
        sub_100008630(v22, &unk_10007B400, &unk_100066D80);
        v59 = sub_100001ED8(v56, v58, &v94);
        v40 = v87;

        *(v55 + 4) = v59;
        *(v55 + 12) = 2082;
        *(v55 + 14) = sub_100001ED8(v86, v40, &v94);
        *(v55 + 22) = 2082;
        v60 = v85;
        *(v55 + 24) = sub_100001ED8(v88, v85, &v94);
        *(v55 + 32) = 2082;
        v61 = v78;
        if (v78)
        {
          v62 = 7562585;
        }

        else
        {
          v62 = 28494;
        }

        if (v78)
        {
          v63 = 0xE300000000000000;
        }

        else
        {
          v63 = 0xE200000000000000;
        }

        v64 = sub_100001ED8(v62, v63, &v94);

        *(v55 + 34) = v64;
        v65 = v60;
        v66 = v80;
        _os_log_impl(&_mh_execute_header, v80, v77, "Clear all settings for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v55, 0x2Au);
        swift_arrayDestroy();

        v37(v84, v92);
        v67 = v88;
        v68 = v86;
      }

      else
      {

        sub_100008630(v22, &unk_10007B400, &unk_100066D80);
        v37(v41, v92);
        v67 = v88;
        v68 = v86;
        v61 = v78;
        v65 = v52;
      }

      v69 = sub_100006278(_swiftEmptyArrayStorage);
      v70 = sub_100006278(_swiftEmptyArrayStorage);
      sub_1000395A4(v69, &_swiftEmptySetSingleton, v70, 1, v89, v68, v40, v67, v24, v65, v61);

      v71 = v81;
      sub_100006754(v24, v81, &unk_10007B400, &unk_100066D80);
      v72 = type metadata accessor for UUID();
      v73 = *(v72 - 8);
      isa = 0;
      if ((*(v73 + 48))(v71, 1, v72) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v73 + 8))(v71, v72);
      }

      (*(v91 + 16))(v91, isa, 0);

      return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
    }

    sub_100031408();
    swift_allocError();
    *v44 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v43 = 2;
  }

  swift_willThrow();
  v45 = type metadata accessor for UUID();
  v46 = *(v45 - 8);
  v47 = v90;
  (*(v46 + 56))(v90, 1, 1, v45);
  sub_100006754(v47, v13, &unk_10007B400, &unk_100066D80);
  v48 = (*(v46 + 48))(v13, 1, v45);
  swift_errorRetain();
  v49 = 0;
  if (v48 != 1)
  {
    v49 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v46 + 8))(v13, v45);
  }

  v50 = _convertErrorToNSError(_:)();
  (*(v91 + 16))(v91, v49, v50);

  v24 = v47;
  return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002DB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v50 = a2;
  v51 = a3;
  v52 = a1;
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v47 - v15;
  v17 = __chkstk_darwin(v14);
  v49 = &v47 - v18;
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  v54 = type metadata accessor for Logger();
  v21 = *(v54 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v54);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() currentConnection];
  if (v25)
  {
    v26 = v25;
    v53 = [v25 processIdentifier];
  }

  else
  {
    v53 = 0;
  }

  static Logger.agent.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = a5;
    *v29 = 67240192;
    *(v29 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v27, v28, "delete stores received from process %{public}d", v29, 8u);
    a5 = v48;
  }

  (*(v21 + 8))(v24, v54);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v30 = *(a5 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      *&v56 = 0;
      static Set._conditionallyBridgeFromObjectiveC(_:result:)();
      v31 = v56;
      if (v56)
      {
        v32 = *(a5 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v56);
        if (v57)
        {
          if (swift_dynamicCast())
          {
            v33 = v55;
LABEL_21:
            sub_10003786C(v31, v50, v51, a4, v33, v20);

            v43 = v49;
            sub_100006754(v20, v49, &unk_10007B400, &unk_100066D80);
            v44 = type metadata accessor for UUID();
            v45 = *(v44 - 8);
            isa = 0;
            if ((*(v45 + 48))(v43, 1, v44) != 1)
            {
              isa = UUID._bridgeToObjectiveC()().super.isa;
              (*(v45 + 8))(v43, v44);
            }

            (*(a6 + 16))(a6, isa, 0);

            return sub_100008630(v20, &unk_10007B400, &unk_100066D80);
          }
        }

        else
        {
          sub_100008630(&v56, &unk_10007B3F0, &unk_100066D70);
        }

        v33 = 0;
        goto LABEL_21;
      }

      sub_100031408();
      swift_allocError();
      *v36 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v35 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v34 = 2;
  }

  swift_willThrow();
  v37 = type metadata accessor for UUID();
  v38 = *(v37 - 8);
  (*(v38 + 56))(v16, 1, 1, v37);
  sub_100006754(v16, v13, &unk_10007B400, &unk_100066D80);
  v39 = (*(v38 + 48))(v13, 1, v37);
  swift_errorRetain();
  v40 = 0;
  if (v39 != 1)
  {
    v40 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v38 + 8))(v13, v37);
  }

  v41 = _convertErrorToNSError(_:)();
  (*(a6 + 16))(a6, v40, v41);

  v20 = v16;
  return sub_100008630(v20, &unk_10007B400, &unk_100066D80);
}

void sub_10002E1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v36 = a8;
  v33 = a1;
  v34 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_opt_self() currentConnection];
  if (v19)
  {
    v20 = v19;
    v35 = [v19 processIdentifier];
  }

  else
  {
    v35 = 0;
  }

  static Logger.agent.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v32 = v14;
    *v23 = 67240192;
    *(v23 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v21, v22, v36, v23, 8u);
    v14 = v32;
  }

  (*(v15 + 8))(v18, v14);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v24 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      v25 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v38);
      if (v39)
      {
        if (swift_dynamicCast())
        {
          v26 = v37;
LABEL_17:
          a9(v33, v34, a3, a4, a5, v26);
          sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          (*(a7 + 16))(a7, isa, 0);

          return;
        }
      }

      else
      {
        sub_100008630(&v38, &unk_10007B3F0, &unk_100066D70);
      }

      v26 = 0;
      goto LABEL_17;
    }

    sub_100031408();
    swift_allocError();
    *v28 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v27 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v29 = _convertErrorToNSError(_:)();
  (*(a7 + 16))(a7, 0, v29);
}

uint64_t sub_10002E58C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a4;
  v97 = a8;
  v94 = a6;
  v95 = a2;
  v89 = a5;
  v91 = a1;
  v88 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v88 - 8) + 64);
  v11 = __chkstk_darwin(v88);
  v13 = v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v81 - v15;
  v17 = __chkstk_darwin(v14);
  v86 = v81 - v18;
  v19 = __chkstk_darwin(v17);
  v87 = v81 - v20;
  v21 = __chkstk_darwin(v19);
  v92 = v81 - v22;
  __chkstk_darwin(v21);
  v24 = v81 - v23;
  v98 = type metadata accessor for Logger();
  v25 = *(v98 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v98);
  v93 = v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v81 - v29;
  v31 = [objc_opt_self() currentConnection];
  v90 = a3;
  if (v31)
  {
    v32 = v31;
    v33 = [v31 processIdentifier];
  }

  else
  {
    v33 = 0;
  }

  static Logger.agent.getter();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 67240192;
    *(v36 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "set store properties received from process %{public}d", v36, 8u);
  }

  v37 = *(v25 + 8);
  v37(v30, v98);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v38 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      *&v100 = 0;
      v39 = sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      if (v100)
      {
        v81[1] = v39;
        v91 = v100;
        v85 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100028434(0xD000000000000028, 0x8000000100069A60, &v100);
        if (v101)
        {
          v40 = swift_dynamicCast();
          v41 = v96;
          v42 = v94;
          v43 = v92;
          if (v40)
          {
            v44 = v99;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          sub_100008630(&v100, &unk_10007B3F0, &unk_100066D70);
          v44 = 0;
          v41 = v96;
          v42 = v94;
          v43 = v92;
        }

        v84 = v44;
        static Logger.persistenceRecordStore.getter();
        sub_100006754(v95, v43, &unk_10007B400, &unk_100066D80);
        v54 = v91;

        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        v82 = v56;
        v83 = v55;
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v81[0] = swift_slowAlloc();
          *&v100 = v81[0];
          *v57 = 136316162;
          v58 = Dictionary.description.getter();
          v60 = sub_100001ED8(v58, v59, &v100);
          v61 = v92;
          v62 = v60;

          *(v57 + 4) = v62;
          *(v57 + 12) = 2082;
          sub_100006754(v61, v87, &unk_10007B400, &unk_100066D80);
          v63 = String.init<A>(describing:)();
          v65 = v64;
          sub_100008630(v61, &unk_10007B400, &unk_100066D80);
          v66 = sub_100001ED8(v63, v65, &v100);

          *(v57 + 14) = v66;
          *(v57 + 22) = 2082;
          *(v57 + 24) = sub_100001ED8(v90, v96, &v100);
          *(v57 + 32) = 2082;
          v67 = v89;
          *(v57 + 34) = sub_100001ED8(v89, v94, &v100);
          *(v57 + 42) = 2082;
          v68 = v84;
          if (v84)
          {
            v69 = 7562585;
          }

          else
          {
            v69 = 28494;
          }

          if (v84)
          {
            v70 = 0xE300000000000000;
          }

          else
          {
            v70 = 0xE200000000000000;
          }

          v71 = sub_100001ED8(v69, v70, &v100);

          *(v57 + 44) = v71;
          v72 = v83;
          _os_log_impl(&_mh_execute_header, v83, v82, "Update store properties %s for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v57, 0x34u);
          swift_arrayDestroy();

          v42 = v94;
          v41 = v96;

          v73 = v90;
          v37(v93, v98);
          v74 = v67;
          v75 = v91;
        }

        else
        {

          sub_100008630(v92, &unk_10007B400, &unk_100066D80);
          v37(v93, v98);
          v74 = v89;
          v73 = v90;
          v75 = v54;
          v68 = v84;
        }

        v76 = sub_100006278(_swiftEmptyArrayStorage);
        sub_1000395A4(v76, &_swiftEmptySetSingleton, v75, 0, v95, v73, v41, v74, v24, v42, v68);

        v77 = v86;
        sub_100006754(v24, v86, &unk_10007B400, &unk_100066D80);
        v78 = type metadata accessor for UUID();
        v79 = *(v78 - 8);
        isa = 0;
        if ((*(v79 + 48))(v77, 1, v78) != 1)
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v79 + 8))(v77, v78);
        }

        (*(v97 + 16))(v97, isa, 0);

        return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
      }

      sub_100031408();
      swift_allocError();
      *v47 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v46 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v45 = 2;
  }

  swift_willThrow();
  v48 = type metadata accessor for UUID();
  v49 = *(v48 - 8);
  (*(v49 + 56))(v16, 1, 1, v48);
  sub_100006754(v16, v13, &unk_10007B400, &unk_100066D80);
  v50 = (*(v49 + 48))(v13, 1, v48);
  swift_errorRetain();
  v51 = 0;
  if (v50 != 1)
  {
    v51 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v49 + 8))(v13, v48);
  }

  v52 = _convertErrorToNSError(_:)();
  (*(v97 + 16))(v97, v51, v52);

  v24 = v16;
  return sub_100008630(v24, &unk_10007B400, &unk_100066D80);
}

uint64_t sub_10002EF7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v57 = a7;
  v58 = a8;
  v55 = a5;
  v56 = a6;
  v54 = a4;
  v59 = a3;
  v60 = a2;
  v61 = a1;
  v11 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v53 = &v52 - v20;
  __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_opt_self() currentConnection];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 processIdentifier];
  }

  else
  {
    v30 = 0;
  }

  static Logger.agent.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67240192;
    *(v33 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "set store properties received from process %{public}d", v33, 8u);
  }

  (*(v24 + 8))(v27, v23);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v34 = *(a10 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      *&v63 = 0;
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      v35 = v63;
      if (v63)
      {
        *&v63 = 0;
        static Set._conditionallyBridgeFromObjectiveC(_:result:)();
        v36 = v63;
        if (v63)
        {
          *&v63 = 0;
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
          if (v63)
          {
            v37 = v63;
            v61 = *(a10 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
            sub_100028434(0xD000000000000028, 0x8000000100069A60, &v63);
            if (v64)
            {
              if (swift_dynamicCast())
              {
                v38 = v62;
LABEL_25:
                sub_1000395A4(v35, v36, v37, v54 & 1, v55, v56, v57, v58, v22, a9, v38);

                v48 = v53;
                sub_100006754(v22, v53, &unk_10007B400, &unk_100066D80);
                v49 = type metadata accessor for UUID();
                v50 = *(v49 - 8);
                isa = 0;
                if ((*(v50 + 48))(v48, 1, v49) != 1)
                {
                  isa = UUID._bridgeToObjectiveC()().super.isa;
                  (*(v50 + 8))(v48, v49);
                }

                (*(a11 + 16))(a11, isa, 0);

                return sub_100008630(v22, &unk_10007B400, &unk_100066D80);
              }
            }

            else
            {
              sub_100008630(&v63, &unk_10007B3F0, &unk_100066D70);
            }

            v38 = 0;
            goto LABEL_25;
          }
        }
      }

      sub_100031408();
      swift_allocError();
      *v41 = 1;
    }

    else
    {
      sub_100031408();
      swift_allocError();
      *v40 = 0;
    }
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v39 = 2;
  }

  swift_willThrow();
  v42 = type metadata accessor for UUID();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v18, 1, 1, v42);
  sub_100006754(v18, v15, &unk_10007B400, &unk_100066D80);
  v44 = (*(v43 + 48))(v15, 1, v42);
  swift_errorRetain();
  v45 = 0;
  if (v44 != 1)
  {
    v45 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v43 + 8))(v15, v42);
  }

  v46 = _convertErrorToNSError(_:)();
  (*(a11 + 16))(a11, v45, v46);

  v22 = v18;
  return sub_100008630(v22, &unk_10007B400, &unk_100066D80);
}

void sub_10002F68C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v29 = [v15 processIdentifier];
  }

  else
  {
    v29 = 0;
  }

  static Logger.agent.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v28 = v10;
    *v19 = 67240192;
    *(v19 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v17, v18, "get store names received from process %{public}d", v19, 8u);
    v10 = v28;
  }

  (*(v11 + 8))(v14, v10);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    if (sub_100029BFC())
    {
      v20 = *(a4 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
      sub_100022170(1);
      v21 = *(a4 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
      sub_100028434(0xD000000000000028, 0x8000000100069A60, &v31);
      if (v32)
      {
        if (swift_dynamicCast())
        {
          v22 = v30;
LABEL_17:
          sub_10003AD8C(a1, a2, a3, v22);
          isa = Set._bridgeToObjectiveC()().super.isa;

          (*(a5 + 16))(a5, isa, 0);

          return;
        }
      }

      else
      {
        sub_100008630(&v31, &unk_10007B3F0, &unk_100066D70);
      }

      v22 = 0;
      goto LABEL_17;
    }

    sub_100031408();
    swift_allocError();
    *v24 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v23 = 2;
  }

  swift_willThrow();
  swift_errorRetain();
  v25 = _convertErrorToNSError(_:)();
  (*(a5 + 16))(a5, 0, v25);
}

uint64_t sub_10002FA2C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_10000637C(&qword_10007A450, &unk_100065C00);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v35 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000002ELL, 0x8000000100069A30, &v38);
    if (v39)
    {
      if (swift_dynamicCast() & 1) != 0 && (v37)
      {
        v21 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v22 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
        sub_100041ECC(v20);
        (*(v17 + 16))(v15, v20, v16);
        (*(v17 + 56))(v15, 0, 1, v16);
        sub_100006754(v15, v13, &qword_10007A450, &unk_100065C00);
        v31 = (*(v17 + 48))(v13, 1, v16);
        if (v31 == 1)
        {
          v33 = 0;
        }

        else
        {
          URL._bridgeToObjectiveC()(v32);
          v33 = v34;
          (*(v17 + 8))(v13, v16);
        }

        (*(v36 + 16))(v36, v33, 0);

        sub_100008630(v15, &qword_10007A450, &unk_100065C00);
        return (*(v17 + 8))(v20, v16);
      }
    }

    else
    {
      sub_100008630(&v38, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    *v24 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    *v23 = 2;
  }

  swift_willThrow();
  (*(v17 + 56))(v10, 1, 1, v16);
  sub_100006754(v10, v7, &qword_10007A450, &unk_100065C00);
  v25 = (*(v17 + 48))(v7, 1, v16);
  swift_errorRetain();
  if (v25 == 1)
  {
    v27 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v26);
    v27 = v28;
    (*(v17 + 8))(v7, v16);
  }

  v29 = _convertErrorToNSError(_:)();
  (*(v36 + 16))(v36, v27, v29);

  return sub_100008630(v10, &qword_10007A450, &unk_100065C00);
}

void sub_10002FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a6;
  v9 = objc_opt_self();
  _Block_copy(a6);
  if ([v9 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000002BLL, 0x8000000100069A00, &v18);
    if (v20)
    {
      if (swift_dynamicCast() & 1) != 0 && (v23)
      {
        v10 = *(a5 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v11 = sub_100028108();
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v21 = sub_100031528;
        v22 = v8;
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1107296256;
        v19 = sub_100055788;
        v20 = &unk_1000768C8;
        v14 = _Block_copy(&v18);

        [v11 askToOverrideUnremovabilityOfApplication:v12 teamIdentifier:v13 replyHandler:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v18, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v16 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v16 = 2;
  }

  *v15 = v16;
  swift_willThrow();
  swift_errorRetain();
  v17 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v17);
}

void sub_100030164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a6;
  v9 = objc_opt_self();
  _Block_copy(a6);
  if ([v9 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v18);
    if (v20)
    {
      if (swift_dynamicCast() & 1) != 0 && (v23)
      {
        v10 = *(a5 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v11 = sub_100027F94();
        v12 = String._bridgeToObjectiveC()();
        v13 = String._bridgeToObjectiveC()();
        v21 = sub_100031524;
        v22 = v8;
        *&v18 = _NSConcreteStackBlock;
        *(&v18 + 1) = 1107296256;
        v19 = sub_100055884;
        v20 = &unk_100076828;
        v14 = _Block_copy(&v18);

        [v11 fetchConfigurationForCategoryIdentifier:v12 categoryName:v13 replyHandler:v14];
        _Block_release(v14);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v18, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v16 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v16 = 2;
  }

  *v15 = v16;
  swift_willThrow();
  swift_errorRetain();
  v17 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v17);
}

void sub_10003040C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (**a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11, SEL *a12)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a8;
  v15 = objc_opt_self();
  _Block_copy(a8);
  if ([v15 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v27)
    {
      if (swift_dynamicCast() & 1) != 0 && (v30)
      {
        v16 = *(a7 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v17 = sub_100027F94();
        v18 = String._bridgeToObjectiveC()();
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v28 = a10;
        v29 = v14;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v26 = sub_100055884;
        v27 = a11;
        v21 = _Block_copy(&aBlock);

        [v17 *a12];
        _Block_release(v21);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v23 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v23 = 2;
  }

  *v22 = v23;
  swift_willThrow();
  swift_errorRetain();
  v24 = _convertErrorToNSError(_:)();
  (a8)[2](a8, 0, v24);
}

void sub_1000306D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = objc_opt_self();
  _Block_copy(a5);
  if ([v9 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v17);
    if (v19)
    {
      if (swift_dynamicCast() & 1) != 0 && (v22)
      {
        v10 = *(a4 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v11 = sub_100027F94();
        v12 = String._bridgeToObjectiveC()();
        v20 = sub_100031528;
        v21 = v8;
        *&v17 = _NSConcreteStackBlock;
        *(&v17 + 1) = 1107296256;
        v18 = sub_100055788;
        v19 = &unk_100076738;
        v13 = _Block_copy(&v17);

        [v11 handleAction:a1 categoryIdentifier:v12 replyHandler:v13];
        _Block_release(v13);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v17, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v15 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v15 = 2;
  }

  *v14 = v15;
  swift_willThrow();
  swift_errorRetain();
  v16 = _convertErrorToNSError(_:)();
  (a5)[2](a5, 0, v16);
}

void sub_100030968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void), uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a7;
  v15 = objc_opt_self();
  _Block_copy(a7);
  if ([v15 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v26)
    {
      if (swift_dynamicCast() & 1) != 0 && (v29)
      {
        v16 = *(a6 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v17 = sub_100027F94();
        v18 = String._bridgeToObjectiveC()();
        v19 = String._bridgeToObjectiveC()();
        v27 = a9;
        v28 = v14;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v25 = sub_100055788;
        v26 = a10;
        v20 = _Block_copy(&aBlock);

        [v17 *a11];
        _Block_release(v20);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v22 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v22 = 2;
  }

  *v21 = v22;
  swift_willThrow();
  swift_errorRetain();
  v23 = _convertErrorToNSError(_:)();
  (a7)[2](a7, 0, v23);
}

void sub_100030C1C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = objc_opt_self();
  _Block_copy(a4);
  if ([v7 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &v15);
    if (v17)
    {
      if (swift_dynamicCast() & 1) != 0 && (v20)
      {
        v8 = *(a3 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v9 = sub_100027F94();
        v10 = String._bridgeToObjectiveC()();
        v18 = sub_100031520;
        v19 = v6;
        *&v15 = _NSConcreteStackBlock;
        *(&v15 + 1) = 1107296256;
        v16 = sub_100029790;
        v17 = &unk_100076648;
        v11 = _Block_copy(&v15);

        [v9 appResponsibleForShieldingCategoryIdentifier:v10 replyHandler:v11];
        _Block_release(v11);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&v15, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v13 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v13 = 2;
  }

  *v12 = v13;
  swift_willThrow();
  swift_errorRetain();
  v14 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v14);
}

void sub_100030E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  v14 = objc_opt_self();
  _Block_copy(a6);
  if ([v14 isAfterFirstUnlock])
  {
    sub_100028434(0xD00000000000001DLL, 0x80000001000699A0, &aBlock);
    if (v25)
    {
      if (swift_dynamicCast() & 1) != 0 && (v28)
      {
        v15 = *(a5 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
        sub_100022170(1);
        v16 = sub_100027F94();
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v26 = a8;
        v27 = v13;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v24 = sub_100029790;
        v25 = a9;
        v19 = _Block_copy(&aBlock);

        [v16 *a10];
        _Block_release(v19);

        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      sub_100008630(&aBlock, &unk_10007B3F0, &unk_100066D70);
    }

    sub_100031408();
    swift_allocError();
    v21 = 0;
  }

  else
  {
    sub_100031408();
    swift_allocError();
    v21 = 2;
  }

  *v20 = v21;
  swift_willThrow();
  swift_errorRetain();
  v22 = _convertErrorToNSError(_:)();
  (a6)[2](a6, 0, v22);
}

void sub_100031140(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (![objc_opt_self() isAfterFirstUnlock])
  {
    sub_100031408();
    swift_allocError();
    v24 = 2;
LABEL_18:
    *v23 = v24;
    swift_willThrow();
    swift_errorRetain();
    v25 = _convertErrorToNSError(_:)();
    (*(a4 + 16))(a4, 0, v25);

    return;
  }

  sub_100028434(0xD000000000000028, 0x8000000100069970, &v28);
  if (!v29)
  {
    sub_100008630(&v28, &unk_10007B3F0, &unk_100066D70);
LABEL_17:
    sub_100031408();
    swift_allocError();
    v24 = 0;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v27 & 1) == 0)
  {
    goto LABEL_17;
  }

  v8 = *(a3 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_postInstallMigrator);
  sub_100022170(1);
  v9 = *(a3 + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_persistenceRecordStore);
  v10 = sub_10003CADC(a1, a2);
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  while (v15)
  {
    v18 = v17;
LABEL_13:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = (*(v11 + 48) + 40 * (v19 | (v18 << 6)));
    v21 = *v20;
    v22 = v20[1];

    sub_100002624(&v28, v21, v22);
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      isa = Set._bridgeToObjectiveC()().super.isa;
      (*(a4 + 16))(a4, isa, 0);

      return;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_100031408()
{
  result = qword_10007B3E8;
  if (!qword_10007B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B3E8);
  }

  return result;
}

unint64_t sub_100031498()
{
  result = qword_10007B418;
  if (!qword_10007B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B418);
  }

  return result;
}

void sub_1000315B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100031620(uint64_t a1)
{
  v3 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v52 - v6;
  v8 = sub_10000637C(&qword_10007B5A8, &unk_100066F40);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v56 = v13;
    v57 = v11;
    v58 = result;
    v59 = v1;
    v52 = v7;
    v53 = v4;
    v54 = v3;
    v15 = 0;
    v16 = a1 + 40;
    v17 = _swiftEmptyArrayStorage;
    v60 = a1;
    do
    {
      v61 = v17;
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= v14)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          return result;
        }

        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_24;
        }

        v20 = *v18;
        v62 = *(v18 - 1);
        v63 = v20;
        v64 = 46;
        v65 = 0xE100000000000000;
        sub_100011710();

        v21 = StringProtocol.components<A>(separatedBy:)();
        if (v21[2])
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v15 == v14)
        {
          v26 = v60;
          v17 = v61;
          goto LABEL_14;
        }
      }

      v22 = v21[5];
      v55 = v21[4];

      v17 = v61;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000261AC(0, *(v17 + 2) + 1, 1, v17);
        v17 = result;
      }

      v26 = v60;
      v24 = *(v17 + 2);
      v23 = *(v17 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_1000261AC((v23 > 1), v24 + 1, 1, v17);
        v17 = result;
      }

      *(v17 + 2) = v24 + 1;
      v25 = &v17[16 * v24];
      *(v25 + 4) = v55;
      *(v25 + 5) = v22;
    }

    while (v15 != v14);
LABEL_14:
    v27 = sub_100026624(v17);

    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = sub_1000479A4(*(v27 + 16), 0);
      v30 = sub_10004DB84(&v62, v29 + 4, v28, v27);

      sub_100003AB8();
      if (v30 != v28)
      {
        __break(1u);
      }
    }

    v31 = v59;
    sub_100031B74();

    v32 = v31[13];
    v61 = v27;
    sub_10000CE10(v27);
    v33 = v56;
    static MediaSettings.maximumMovieRating.getter();
    v34 = v58;
    v35 = BoundedSettingMetadata.name.getter();
    v37 = v36;
    v38 = *(v57 + 8);
    v39 = v38(v33, v34);
    v62 = v35;
    v63 = v37;
    __chkstk_darwin(v39);
    *(&v52 - 2) = &v62;
    LOBYTE(v35) = sub_100035664(sub_1000366AC, (&v52 - 4), v26);

    if (v35)
    {
      goto LABEL_20;
    }

    static MediaSettings.maximumTVShowRating.getter();
    v40 = BoundedSettingMetadata.name.getter();
    v42 = v41;
    v43 = v38(v33, v34);
    v62 = v40;
    v63 = v42;
    __chkstk_darwin(v43);
    *(&v52 - 2) = &v62;
    LOBYTE(v40) = sub_100035664(sub_10003674C, (&v52 - 4), v26);

    if (v40)
    {
      goto LABEL_20;
    }

    v44 = v52;
    static MediaSettings.denyExplicitContent.getter();
    v45 = v54;
    v46 = SettingMetadata.name.getter();
    v48 = v47;
    v49 = (*(v53 + 8))(v44, v45);
    v62 = v46;
    v63 = v48;
    __chkstk_darwin(v49);
    *(&v52 - 2) = &v62;
    LOBYTE(v46) = sub_100035664(sub_10003674C, (&v52 - 4), v26);

    if (v46)
    {
LABEL_20:
      v50 = *sub_100008578(v31 + 7, v31[10]);
      sub_10000B970();
    }

    v51 = v31[12];
    sub_100009D94(v61);
  }

  return result;
}

uint64_t sub_100031B74()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *sub_100008578((v0 + 112), *(v0 + 136));
  v7 = ExtensionFinder.extensionsForGroups(_:)();
  v8 = v7[2];
  if (v8)
  {
    v9 = v7 + 5;
    do
    {
      v10 = *v9;
      v11 = *(v9 - 1);

      sub_100031DD4(v11, v10);

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  else
  {

    static Logger.agent.getter();

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      v17 = Array.description.getter();
      v19 = sub_100001ED8(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Nobody cares that effective settings changed in groups %{public}s", v15, 0xCu);
      sub_10000210C(v16);
    }

    return (*(v2 + 8))(v5, v1);
  }
}

void sub_100031DD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.agent.getter();
  v11 = a1;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {

    (*(v7 + 8))(v10, v6);
    goto LABEL_5;
  }

  v35 = v6;
  *&v37 = v3;
  v14 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v14 = 136446466;
  v15 = [v11 identifier];
  v16 = v11;
  v17 = v15;
  v36 = v16;

  if (v17)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_100001ED8(v18, v20, &aBlock);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2082;
    v22 = Array.description.getter();
    v24 = sub_100001ED8(v22, v23, &aBlock);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v12, v13, "Notifying extension %{public}s with groups %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v10, v35);
    v3 = v37;
    v11 = v36;
LABEL_5:
    v42 = sub_1000365FC;
    v43 = v3;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003276C;
    v41 = &unk_100076B10;
    v25 = _Block_copy(&aBlock);

    [v11 set_requestPostCompletionBlock:v25];
    _Block_release(v25);
    v26 = [objc_allocWithZone(NSExtensionItem) init];
    sub_10000637C(&qword_10007B5B8, &qword_100066F58);
    inited = swift_initStackObject();
    v37 = xmmword_100066E60;
    *(inited + 16) = xmmword_100066E60;
    aBlock = 0x6D614E70756F7267;
    v39 = 0xEA00000000007365;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = sub_10000637C(&qword_10007B2D8, &unk_100066D00);
    *(inited + 72) = a2;

    sub_100006618(inited);
    swift_setDeallocating();
    sub_100008630(inited + 32, &qword_10007A290, &qword_100065BC8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v26 setUserInfo:isa];

    sub_10000637C(&qword_10007B5C0, &unk_100066F60);
    v29 = swift_allocObject();
    *(v29 + 16) = v37;
    *(v29 + 56) = sub_100006820(0, &qword_10007B5C8, NSExtensionItem_ptr);
    *(v29 + 32) = v26;
    v30 = v26;
    v31 = Array._bridgeToObjectiveC()().super.isa;

    v32 = swift_allocObject();
    v32[2] = v11;
    v32[3] = a2;
    v32[4] = v3;
    v42 = sub_100036604;
    v43 = v32;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003307C;
    v41 = &unk_100076B60;
    v33 = _Block_copy(&aBlock);
    v34 = v11;

    [v34 beginExtensionRequestWithOptions:0 inputItems:v31 completion:v33];

    _Block_release(v33);
    return;
  }

  __break(1u);
}

uint64_t sub_100032368(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  if (a1 && (objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    swift_unknownObjectRetain();
    static Logger.agent.getter();
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33[1] = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v33[0] = a4;
      v23 = v22;
      *v21 = 138543362;
      *(v21 + 4) = v17;
      *v22 = v17;
      swift_unknownObjectRetain();
      _os_log_impl(&_mh_execute_header, v18, v19, "RequestID %{public}@ complete", v21, 0xCu);
      sub_100008630(v23, &qword_10007AC58, &qword_100066568);
      a4 = v33[0];
    }

    (*(v9 + 8))(v13, v8);
    v24 = *(a4 + 168);
    v25 = swift_allocObject();
    v25[2] = a4;
    v25[3] = v17;
    v25[4] = 0;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_100036768;
    *(v26 + 24) = v25;
    aBlock[4] = sub_100036734;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031590;
    aBlock[3] = &unk_100076C78;
    v27 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    dispatch_sync(v24, v27);
    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if (v27)
    {
      __break(1u);
      return result;
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    static Logger.agent.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unknown request complete", v32, 2u);
    }

    result = (*(v9 + 8))(v15, v8);
    if (a2)
    {
LABEL_7:

      a2(v29);
      return sub_100036644(a2);
    }
  }

  return result;
}

uint64_t sub_10003276C(uint64_t a1, int a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_100036654;
  }

  else
  {
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  v4(v7, v5, v6);
  swift_unknownObjectRelease();
  sub_100036644(v5);
}

void sub_100032830(id a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v69 - v17;
  __chkstk_darwin(v16);
  v20 = &v69 - v19;
  if (a2)
  {
    swift_errorRetain();
    static Logger.agent.getter();
    swift_errorRetain();
    a1 = a3;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v21, v22))
    {

      (*(v11 + 8))(v20, v10);
      goto LABEL_11;
    }

    v73 = a5;
    v74 = v11;
    v75 = v10;
    v23 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v23 = 136446722;
    v24 = [a1 identifier];
    if (v24)
    {
      v25 = v24;

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = a4;
      v29 = v28;

      v30 = sub_100001ED8(v26, v29, aBlock);

      *(v23 + 4) = v30;
      *(v23 + 12) = 2082;
      v31 = Array.description.getter();
      v33 = sub_100001ED8(v31, v32, aBlock);

      *(v23 + 14) = v33;
      *(v23 + 22) = 2082;
      a4 = v27;
      v76 = a2;
      swift_errorRetain();
      sub_10000637C(&qword_10007A380, &qword_100065BE0);
      v34 = String.init<A>(describing:)();
      v36 = sub_100001ED8(v34, v35, aBlock);

      *(v23 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to notify extension %{public}s with groups %{public}s: %{public}s", v23, 0x20u);
      swift_arrayDestroy();

      (*(v74 + 8))(v20, v75);
LABEL_11:
      sub_1000330FC(a1, a4);

      return;
    }

    goto LABEL_20;
  }

  if (!a1 || (objc_opt_self(), (v37 = swift_dynamicCastObjCClass()) == 0))
  {
    static Logger.agent.getter();
    v53 = a3;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v54, v55))
    {

      (*(v11 + 8))(v15, v10);
      return;
    }

    v56 = v11;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136446210;
    v59 = [v53 identifier];

    if (v59)
    {
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_100001ED8(v60, v62, aBlock);

      *(v57 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "Notified extension %{public}s without error or requestID?", v57, 0xCu);
      sub_10000210C(v58);

      (*(v56 + 8))(v15, v10);
      return;
    }

    goto LABEL_21;
  }

  v38 = v37;
  v75 = v10;
  swift_unknownObjectRetain();
  static Logger.agent.getter();
  v39 = a3;

  swift_unknownObjectRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v73 = a5;
    v74 = v11;
    v42 = v39;
    v43 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    aBlock[0] = v71;
    *v43 = 136446722;
    v44 = [v42 identifier];
    v72 = v42;

    swift_unknownObjectRelease();
    if (!v44)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = sub_100001ED8(v45, v47, aBlock);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2082;
    v49 = Array.description.getter();
    v51 = sub_100001ED8(v49, v50, aBlock);

    *(v43 + 14) = v51;
    *(v43 + 22) = 2114;
    *(v43 + 24) = v38;
    v52 = v70;
    *v70 = v38;
    swift_unknownObjectRetain();
    _os_log_impl(&_mh_execute_header, v40, v41, "Successfully notified extension %{public}s with groups %{public}s, requestID %{public}@", v43, 0x20u);
    sub_100008630(v52, &qword_10007AC58, &qword_100066568);

    swift_arrayDestroy();

    (*(v74 + 8))(v18, v75);
    v39 = v72;
    a5 = v73;
  }

  else
  {

    swift_unknownObjectRelease();

    (*(v11 + 8))(v18, v75);
  }

  v64 = *(a5 + 168);
  v65 = swift_allocObject();
  v65[2] = a5;
  v65[3] = v38;
  v65[4] = v39;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_100036610;
  *(v66 + 24) = v65;
  aBlock[4] = sub_10003661C;
  aBlock[5] = v66;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031590;
  aBlock[3] = &unk_100076BD8;
  v67 = _Block_copy(aBlock);
  v68 = v39;
  swift_unknownObjectRetain();

  dispatch_sync(v64, v67);
  _Block_release(v67);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();
  swift_unknownObjectRelease();

  if (v67)
  {
    __break(1u);
LABEL_20:

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_10003307C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000330FC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v99 = *(v6 - 1);
  v100 = v6;
  v7 = v99[8];
  __chkstk_darwin(v6);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v98 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v101 = &v95 - v16;
  __chkstk_darwin(v15);
  v18 = &v95 - v17;
  static Logger.agent.getter();
  v19 = a1;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v102 = v11;
  v103 = v10;
  if (v22)
  {
    v97 = v3;
    v23 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v23 = 136446466;
    v24 = [v19 identifier];
    v96 = v19;

    if (!v24)
    {
      __break(1u);
      goto LABEL_18;
    }

    v25 = a2;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_100001ED8(v26, v28, &aBlock);

    *(v23 + 4) = v29;
    *(v23 + 6) = 2082;
    v30 = Array.description.getter();
    v32 = sub_100001ED8(v30, v31, &aBlock);

    *(v23 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "Scheduling to retry notifying extension %{public}s with groups: %{public}s", v23, 0x16u);
    swift_arrayDestroy();

    (*(v102 + 8))(v18, v103);
    a2 = v25;
    v19 = v96;
    v3 = v97;
  }

  else
  {

    (*(v11 + 8))(v18, v10);
  }

  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  (v99[1])(v9, v100);
  aBlock = 0xD000000000000037;
  v106 = 0x800000010006A0F0;
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v38 = aBlock;
  v37 = v106;
  v100 = objc_opt_self();
  v39 = [v100 sharedScheduler];
  v40 = String._bridgeToObjectiveC()();
  v41 = *(v3 + 152);
  v42 = swift_allocObject();
  v42[2] = v38;
  v42[3] = v37;
  v42[4] = v19;
  v42[5] = a2;
  v42[6] = v3;
  v109 = sub_1000365E4;
  v110 = v42;
  aBlock = _NSConcreteStackBlock;
  v106 = 1107296256;
  v107 = sub_1000315B8;
  v108 = &unk_100076AC0;
  v43 = _Block_copy(&aBlock);
  v44 = a2;
  v45 = v19;
  v46 = v37;
  v47 = v45;

  [v39 registerForTaskWithIdentifier:v40 usingQueue:v41 launchHandler:v43];
  _Block_release(v43);

  v48 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v49 = String._bridgeToObjectiveC()();
  v50 = [v48 initWithIdentifier:v49];

  v51 = v50;
  [v51 setRequiresBuddyComplete:0];
  [v51 setRequiresExternalPower:0];
  [v51 setPriority:2];

  [v51 setScheduleAfter:30.0];
  [v51 setTrySchedulingBefore:120.0];
  v52 = v101;
  static Logger.agent.getter();
  v53 = v47;

  v54 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v55 = os_log_type_enabled(v54, v23);
  v97 = v38;
  v99 = v53;
  if (v55)
  {
    v56 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v56 = 136446722;
    *(v56 + 4) = sub_100001ED8(v38, v46, &aBlock);
    *(v56 + 12) = 2082;
    v57 = [v53 identifier];

    if (v57)
    {
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = sub_100001ED8(v58, v60, &aBlock);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2082;
      v62 = v44;
      v63 = Array.description.getter();
      v65 = sub_100001ED8(v63, v64, &aBlock);

      *(v56 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v54, v23, "Scheduling task %{public}s for extension %{public}s with groups: %{public}s", v56, 0x20u);
      swift_arrayDestroy();

      v66 = v101;
      v67 = *(v102 + 8);
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v62 = v44;

  v67 = *(v102 + 8);
  v66 = v52;
LABEL_9:
  v68 = v103;
  v67(v66, v103);
  v69 = [v100 sharedScheduler];
  aBlock = 0;
  v70 = [v69 submitTaskRequest:v51 error:&aBlock];

  if (v70)
  {
    v71 = aBlock;
  }

  v101 = v67;
  v73 = aBlock;
  v74 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v75 = v98;
  static Logger.agent.getter();
  v23 = v99;
  v76 = v62;

  swift_errorRetain();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v77, v78))
  {

    v94 = v75;
    v93 = v68;
    return (v101)(v94, v93);
  }

  v100 = v76;
  v79 = swift_slowAlloc();
  aBlock = swift_slowAlloc();
  *v79 = 136446978;
  v80 = sub_100001ED8(v97, v46, &aBlock);

  *(v79 + 4) = v80;
  *(v79 + 12) = 2082;
  v81 = [v23 identifier];
  if (!v81)
  {
LABEL_19:

    __break(1u);
    return result;
  }

  v82 = v81;

  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  v86 = sub_100001ED8(v83, v85, &aBlock);

  *(v79 + 14) = v86;
  *(v79 + 22) = 2082;
  v87 = Array.description.getter();
  v89 = sub_100001ED8(v87, v88, &aBlock);

  *(v79 + 24) = v89;
  *(v79 + 32) = 2082;
  v104 = v74;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  v90 = String.init<A>(describing:)();
  v92 = sub_100001ED8(v90, v91, &aBlock);

  *(v79 + 34) = v92;
  _os_log_impl(&_mh_execute_header, v77, v78, "Failed to schedule task %{public}s for extension %{public}s with groups: %{public}s. Error: %{public}s", v79, 0x2Au);
  swift_arrayDestroy();

  v93 = v103;
  v94 = v98;
  return (v101)(v94, v93);
}

id sub_100033B84(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v35 = a2;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020A64;
  aBlock[3] = &unk_100076AE8;
  v16 = _Block_copy(aBlock);
  [a1 setExpirationHandler:v16];
  _Block_release(v16);
  static Logger.agent.getter();

  v17 = a4;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v18, v19))
  {

    (*(v12 + 8))(v15, v11);
    goto LABEL_5;
  }

  v31 = v12;
  v32 = v11;
  v33 = a6;
  v34 = a1;
  v20 = swift_slowAlloc();
  aBlock[0] = swift_slowAlloc();
  *v20 = 136446722;
  *(v20 + 4) = sub_100001ED8(v35, a3, aBlock);
  *(v20 + 12) = 2082;
  v21 = [v17 identifier];

  if (v21)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_100001ED8(v23, v25, aBlock);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    v27 = Array.description.getter();
    v29 = sub_100001ED8(v27, v28, aBlock);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Running task %{public}s for extension %{public}s with groups: %{public}s", v20, 0x20u);
    swift_arrayDestroy();

    (*(v31 + 8))(v15, v32);
    a1 = v34;
LABEL_5:
    sub_100031DD4(v17, a5);
    return [a1 setTaskCompleted];
  }

  __break(1u);
  return result;
}

uint64_t sub_100033ED4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_10000637C(&qword_10007AC90, &unk_1000665A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v33 - v4;
  v5 = sub_10000637C(&qword_10007B5B0, &qword_100066F50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[6];
  sub_100008578(v1 + 2, v1[5]);
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v19 = sub_10003595C();
  (*(v14 + 8))(v17, v13);
  static AllowedClientSettings.allowedClient.getter();
  v20 = SettingMetadata.name.getter();
  v22 = v21;
  v23 = *(v6 + 8);
  v23(v12, v5);
  if (!*(v19 + 16))
  {

    goto LABEL_6;
  }

  v24 = sub_1000182E8(v20, v22);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v27 = *(*(v19 + 56) + 8 * v24);

  v28 = v27;
  v29 = v33;
  static Application.value(from:)();

  v30 = type metadata accessor for Application();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v29, 1, v30) != 1)
  {
    return (*(v31 + 32))(v34, v29, v30);
  }

  sub_100008630(v29, &qword_10007AC90, &unk_1000665A0);
LABEL_7:
  static AllowedClientSettings.allowedClient.getter();
  SettingMetadata.defaultValue.getter();
  return (v23)(v10, v5);
}

uint64_t sub_10003426C(uint64_t a1)
{
  v33[0] = a1;
  v2 = sub_10000637C(&qword_10007B5A8, &unk_100066F40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v33 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[6];
  sub_100008578(v1 + 2, v1[5]);
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v16 = sub_10003595C();
  v17 = (*(v11 + 8))(v14, v10);
  v18 = v33[0];
  (v33[0])(v17);
  v19 = BoundedSettingMetadata.name.getter();
  v21 = v20;
  v22 = *(v3 + 8);
  v22(v9, v2);
  if (!*(v16 + 16))
  {

    goto LABEL_6;
  }

  v23 = sub_1000182E8(v19, v21);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v26 = *(*(v16 + 56) + 8 * v23);

  v27 = v26;
  v28 = static Int.value(from:)();
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    return v28;
  }

LABEL_7:
  v18(v31);
  BoundedSettingMetadata.defaultValue.getter();
  v22(v7, v2);
  return v33[1];
}

uint64_t sub_100034508()
{
  v1 = sub_10000637C(&qword_10007B5A0, &unk_100067300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v27[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0[6];
  sub_100008578(v0 + 2, v0[5]);
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v15 = sub_10003595C();
  (*(v10 + 8))(v13, v9);
  static MediaSettings.denyExplicitContent.getter();
  v16 = SettingMetadata.name.getter();
  v18 = v17;
  v19 = *(v2 + 8);
  v19(v8, v1);
  if (*(v15 + 16))
  {
    v20 = sub_1000182E8(v16, v18);
    v22 = v21;

    if (v22)
    {
      v23 = *(*(v15 + 56) + 8 * v20);

      v24 = v23;
      v25 = static Bool.value(from:)();

      if (v25 != 2)
      {
        return v25 & 1;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

LABEL_7:
  static MediaSettings.denyExplicitContent.getter();
  SettingMetadata.defaultValue.getter();
  v19(v6, v1);
  v25 = v27[15];
  return v25 & 1;
}

uint64_t sub_100034798()
{
  v1 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v27 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[6];
  sub_100008578(v0 + 2, v0[5]);
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v15 = sub_10003595C();
  (*(v10 + 8))(v13, v9);
  static ApplicationSettings.unremovableApplications.getter();
  v16 = SettingMetadata.name.getter();
  v18 = v17;
  v19 = *(v2 + 8);
  v19(v8, v1);
  if (!*(v15 + 16))
  {

    goto LABEL_6;
  }

  v20 = sub_1000182E8(v16, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  v23 = *(*(v15 + 56) + 8 * v20);

  type metadata accessor for Application();
  sub_10003659C(&qword_10007ACE8, &type metadata accessor for Application);
  v24 = v23;
  v25 = static Set<>.value(from:)();

  if (v25)
  {
    return v25;
  }

LABEL_7:
  static ApplicationSettings.unremovableApplications.getter();
  SettingMetadata.defaultValue.getter();
  v19(v6, v1);
  return v27[1];
}

uint64_t sub_100034A74(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  if (!a3)
  {

    return swift_endAccess();
  }

  v6 = *(a1 + 160);
  if ((v6 & 0xC000000000000001) == 0)
  {
    v10 = *(a1 + 160);
    v8 = a3;
    goto LABEL_10;
  }

  if (v6 < 0)
  {
    v7 = *(a1 + 160);
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = a3;
  result = __CocoaDictionary.count.getter();
  if (!__OFADD__(result, 1))
  {
    *(a1 + 160) = sub_100035710(v7, result + 1);
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 160);
    sub_10001CB80(v8, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 160) = v12;
    return swift_endAccess();
  }

  __break(1u);
  return result;
}

uint64_t sub_100034B64()
{
  sub_10000210C((v0 + 16));
  sub_10000210C((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 104);

  sub_10000210C((v0 + 112));

  v3 = *(v0 + 160);

  return v0;
}

uint64_t sub_100034BBC()
{
  sub_100034B64();

  return swift_deallocClassInstance();
}

void sub_100034C14(uint64_t a1, void *a2)
{
  v30 = _swiftEmptyArrayStorage;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v29 = a1;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v29 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = a2[2];
    v16 = *(*(v29 + 56) + 8 * v11);

    if (v15)
    {
      v17 = sub_1000182E8(v14, v13);
      if (v18)
      {
        v15 = *(a2[7] + 8 * v17);
        v19 = v15;
      }

      else
      {
        v15 = 0;
      }
    }

    sub_100034E88(v16, v15);
    v21 = v20;

    if (v21)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1000261AC(0, *(v30 + 2) + 1, 1, v30);
      }

      v23 = *(v30 + 2);
      v22 = *(v30 + 3);
      if (v23 >= v22 >> 1)
      {
        v30 = sub_1000261AC((v22 > 1), v23 + 1, 1, v30);
      }

      *(v30 + 2) = v23 + 1;
      v24 = &v30[16 * v23];
      *(v24 + 4) = v14;
      *(v24 + 5) = v13;
    }

    v7 &= v7 - 1;
    v25 = sub_1000182E8(v14, v13);
    v27 = v26;

    if (v27)
    {
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_10001DD34();
      }

      v28 = *(a2[6] + 16 * v25 + 8);

      sub_100048874(v25, a2);
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      sub_1000078A4(a2);
      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100034E88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      sub_100036534();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (a2)
    {
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      static NSObject.== infix(_:_:)();
    }
  }
}

char *sub_100035468(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100057830(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100057830((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100002614(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100057830((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100002614(v12, &v3[4 * v11 + 4]);
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

uint64_t sub_100035664(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Int sub_100035710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000637C(&qword_10007ADB0, &unk_100066F70);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006820(0, &qword_10007A220, NSExtension_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10001B7F4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10003595C()
{
  v0 = type metadata accessor for URL();
  v9 = *(v0 - 8);
  v1 = *(v9 + 64);
  __chkstk_darwin(v0);
  v2 = type metadata accessor for Logger();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v10 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CocoaError.Code();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  type metadata accessor for Persistence();
  return static Persistence.readEffectiveSettings(from:)();
}

uint64_t sub_100035E58(uint64_t a1, int a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v30[1] = a6;
  v30[3] = a5;
  v31 = a2;
  v9 = type metadata accessor for CocoaError.Code();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for Logger();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  v13 = __chkstk_darwin(v11);
  v30[2] = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v17 = v30 - v16;
  v18 = URL.path(percentEncoded:)(1);
  countAndFlagsBits = v18._countAndFlagsBits;
  type metadata accessor for Persistence();
  v19 = a4(a1);
  v20 = a3;
  v21 = Dictionary<>.sanitize(isInternalClient:)(v31 & 1, v19);

  static Logger.agent.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = sub_100001ED8(countAndFlagsBits, v18._object, v35);

    *(v24 + 4) = v25;
    *(v24 + 12) = 2082;
    sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
    v26 = Dictionary.description.getter();
    v28 = sub_100001ED8(v26, v27, v35);

    *(v24 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s contains %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v33 + 8))(v17, v34);
  Dictionary<>.incorporate(persistableKeysAndValues:scope:)(v21, v20);
}

unint64_t sub_100036534()
{
  result = qword_10007B590;
  if (!qword_10007B590)
  {
    sub_100006820(255, &qword_10007A4A0, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007B590);
  }

  return result;
}

uint64_t sub_10003659C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003661C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100036644(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100036664()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000366C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10003676C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100002624(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100036870(uint64_t a1)
{
  v2 = type metadata accessor for Application();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v24 - v9;
  result = __chkstk_darwin(v8);
  v13 = v24 - v12;
  v14 = 0;
  v25 = a1;
  v17 = *(a1 + 56);
  v16 = a1 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v24[1] = v3 + 32;
  v24[2] = v3 + 16;
  v24[0] = v3 + 8;
  if ((v19 & v15) != 0)
  {
    do
    {
      v22 = v14;
LABEL_9:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      (*(v3 + 16))(v13, *(v25 + 48) + *(v3 + 72) * (v23 | (v22 << 6)), v2);
      (*(v3 + 32))(v7, v13, v2);
      sub_10004A558(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v20);
  }

  while (1)
  {
    v22 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
    }

    v20 = *(v16 + 8 * v22);
    ++v14;
    if (v20)
    {
      v14 = v22;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100036A80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = v0[34];
  v9 = v0[11];
  sub_100008578(v0 + 7, v0[10]);

  dispatch thunk of Locatable.persistenceRecordStorePath.getter();
  sub_10004E694(v8, v7);
  (*(v4 + 8))(v7, v3);
}

NSObject *sub_100036D80(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v98 = a6;
  v89 = a4;
  v97 = a2;
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v96 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v90 = &v81 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v81 - v19;
  __chkstk_darwin(v18);
  v22 = &v81 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v99 = v23;
  v100 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v81 - v29;
  v101 = v6;
  [*(v6 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v102 = a1;
  sub_100006754(a1, v22, &unk_10007B400, &unk_100066D80);

  v31 = a3;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  v34 = os_log_type_enabled(v32, v33);
  v84 = v12;
  v95 = v20;
  v85 = a5;
  v88 = v31;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v83 = v33;
    v86 = v32;
    v36 = v35;
    v82 = swift_slowAlloc();
    v107 = v82;
    *v36 = 136446978;
    v87 = v28;
    sub_100006754(v22, v20, &unk_10007B400, &unk_100066D80);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v22;
    v41 = v100;
    sub_100008630(v40, &unk_10007B400, &unk_100066D80);
    v42 = sub_100001ED8(v37, v39, &v107);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_100001ED8(v97, v31, &v107);
    *(v36 + 22) = 2082;
    *(v36 + 24) = sub_100001ED8(v89, a5, &v107);
    *(v36 + 32) = 2082;
    if (v98)
    {
      v43 = 7562585;
    }

    else
    {
      v43 = 28494;
    }

    if (v98)
    {
      v44 = 0xE300000000000000;
    }

    else
    {
      v44 = 0xE200000000000000;
    }

    v45 = sub_100001ED8(v43, v44, &v107);
    v28 = v87;

    *(v36 + 34) = v45;
    v46 = v86;
    _os_log_impl(&_mh_execute_header, v86, v83, "Get all settings for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v36, 0x2Au);
    swift_arrayDestroy();

    v47 = v101;
    v86 = *(v41 + 8);
    (v86)(v30, v99);
  }

  else
  {

    sub_100008630(v22, &unk_10007B400, &unk_100066D80);
    v86 = *(v100 + 8);
    (v86)(v30, v99);
    v47 = v101;
  }

  v48 = v102;
  v49 = v90;
  sub_100006754(v102, v90, &unk_10007B400, &unk_100066D80);
  v50 = v92;
  v51 = v93;
  v52 = (*(v92 + 48))(v49, 1, v93);
  v53 = v96;
  v54 = v94;
  v55 = v91;
  if (v52 == 1)
  {
    sub_100008630(v49, &unk_10007B400, &unk_100066D80);
    v56 = v95;
    v57 = v98;
    v58 = v88;
    v59 = v97;
LABEL_12:
    sub_10004680C(v59, v58, v57 & 1, v104);
    v60 = v54;
    if (v54)
    {
      goto LABEL_23;
    }

    v63 = sub_100046A04(v104);
    v106 = v104[0];
    sub_100020EA0(&v106);
    v105 = v104[1];
    sub_100020EA0(&v105);
LABEL_22:
    v80 = sub_100052364(v63, v89, v85);

LABEL_26:
    [*(v47 + 216) unlock];
    return v80;
  }

  v61 = v96;
  (*(v50 + 32))(v91, v49, v51);
  v62 = v54;
  v63 = sub_10004649C(v55);
  v64 = v55;
  v60 = v54;
  v65 = v95;
  if (!v54)
  {
    (*(v50 + 8))(v64, v51);
    goto LABEL_22;
  }

  v54 = 0;
  (*(v50 + 8))(v64, v51);
  v107 = v62;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast())
  {
    v56 = v65;
    if (!v103)
    {

      v57 = v98;
      v58 = v88;
      v59 = v97;
      v53 = v61;
      v48 = v102;
      goto LABEL_12;
    }
  }

  else
  {

    v56 = v65;
  }

  v53 = v61;
  v48 = v102;
LABEL_23:
  v107 = v60;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && v103 <= 1u)
  {

    v80 = sub_100006278(_swiftEmptyArrayStorage);
    goto LABEL_26;
  }

  static Logger.persistenceRecordStore.getter();
  sub_100006754(v48, v53, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v66 = v28;
  v80 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v80, v67))
  {
    v68 = swift_slowAlloc();
    v87 = v66;
    v69 = v68;
    v102 = swift_slowAlloc();
    v107 = v102;
    *v69 = 136446466;
    sub_100006754(v53, v56, &unk_10007B400, &unk_100066D80);
    v70 = String.init<A>(describing:)();
    v71 = v53;
    v73 = v72;
    sub_100008630(v71, &unk_10007B400, &unk_100066D80);
    v74 = sub_100001ED8(v70, v73, &v107);

    *(v69 + 4) = v74;
    *(v69 + 12) = 2082;
    v103 = v60;
    swift_errorRetain();
    v75 = String.init<A>(describing:)();
    v77 = sub_100001ED8(v75, v76, &v107);

    *(v69 + 14) = v77;
    _os_log_impl(&_mh_execute_header, v80, v67, "Failed to retrieve settings for record %{public}s with unexpected error. Error: %{public}s", v69, 0x16u);
    swift_arrayDestroy();

    v78 = v87;
  }

  else
  {

    sub_100008630(v53, &unk_10007B400, &unk_100066D80);
    v78 = v66;
  }

  (v86)(v78, v99);
  swift_willThrow();
  [*(v101 + 216) unlock];
  return v80;
}

id sub_10003786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v132 = a5;
  v131 = a3;
  v123 = a6;
  v118 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v118 - 8);
  v11 = *(v117 + 64);
  __chkstk_darwin(v118);
  v115 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for DispatchQoS();
  v114 = *(v116 - 8);
  v13 = *(v114 + 64);
  __chkstk_darwin(v116);
  v113 = &v107[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for DispatchQoS.QoSClass();
  v111 = *(v112 - 8);
  v15 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = &v107[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v134 = type metadata accessor for UUID();
  v130 = *(v134 - 8);
  v17 = *(v130 + 64);
  v18 = __chkstk_darwin(v134);
  v119 = &v107[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v126 = &v107[-v20];
  v21 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v129 = &v107[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v125 = &v107[-v26];
  v27 = __chkstk_darwin(v25);
  v29 = &v107[-v28];
  __chkstk_darwin(v27);
  v31 = &v107[-v30];
  v32 = type metadata accessor for Logger();
  v136 = *(v32 - 8);
  v33 = *(v136 + 64);
  v34 = __chkstk_darwin(v32);
  v121 = &v107[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v107[-v36];
  v137 = v7;
  [*(v7 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v135 = a2;
  sub_100006754(a2, v31, &unk_10007B400, &unk_100066D80);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v133 = a4;

  v40 = os_log_type_enabled(v38, v39);
  v124 = v32;
  v122 = a1;
  v120 = v21;
  v128 = v29;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v41 = 136446978;
    v42 = Set.description.getter();
    v108 = v39;
    v44 = sub_100001ED8(v42, v43, aBlock);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2082;
    sub_100006754(v31, v29, &unk_10007B400, &unk_100066D80);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    sub_100008630(v31, &unk_10007B400, &unk_100066D80);
    v48 = sub_100001ED8(v45, v47, aBlock);

    *(v41 + 14) = v48;
    *(v41 + 22) = 2082;
    *(v41 + 24) = sub_100001ED8(v131, v133, aBlock);
    *(v41 + 32) = 2082;
    if (v132)
    {
      v49 = 7562585;
    }

    else
    {
      v49 = 28494;
    }

    if (v132)
    {
      v50 = 0xE300000000000000;
    }

    else
    {
      v50 = 0xE200000000000000;
    }

    v51 = sub_100001ED8(v49, v50, aBlock);
    v52 = v134;

    *(v41 + 34) = v51;
    _os_log_impl(&_mh_execute_header, v38, v108, "Deleting stores “%{public}s” with record ID “%{public}s,” container “%{public}s.” Is internal: %{public}s", v41, 0x2Au);
    swift_arrayDestroy();

    v53 = *(v136 + 8);
    v53(v37, v124);
  }

  else
  {

    sub_100008630(v31, &unk_10007B400, &unk_100066D80);
    v53 = *(v136 + 8);
    v53(v37, v32);
    v52 = v134;
  }

  v54 = v125;
  sub_100006754(v135, v125, &unk_10007B400, &unk_100066D80);
  v55 = v130;
  v56 = (*(v130 + 48))(v54, 1, v52);
  v57 = v127;
  v58 = v52;
  v59 = v126;
  if (v56 == 1)
  {
    sub_100008630(v54, &unk_10007B400, &unk_100066D80);
    v60 = v129;
    v61 = v128;
  }

  else
  {
    (*(v55 + 32))(v126, v54, v58);
    v64 = v57;
    v65 = sub_10004649C(v59);
    v62 = v57;
    v61 = v128;
    if (!v57)
    {
      v66 = v65;
      (*(v55 + 8))(v59, v58);
LABEL_22:
      v141 = 0;
      v140 = 0;
      sub_1000531C8(v122, v66, &v141 + 1, &v141, &v140);
      v67 = v141;
      v68 = v140;
      if ((v141 & 0x100) != 0)
      {
        v69 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
        swift_beginAccess();
        if (!*(*(v66 + v69) + 16))
        {
          sub_10003DCD0(v66);
          if ((v67 & 1) == 0)
          {
            if ((v68 & 1) == 0)
            {
LABEL_44:

              v96 = 1;
              v97 = v134;
LABEL_47:
              (*(v55 + 56))(v123, v96, 1, v97);
              return [*(v137 + 216) unlock];
            }

            v77 = 1;
            goto LABEL_42;
          }

          v77 = 1;
LABEL_38:
          sub_100045138();
          if (!v68)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v70 = *(v55 + 16);
        v71 = v119;
        v132 = v68;
        v72 = v134;
        v70(v119, v66 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v134);
        v133 = v53;
        v73 = v137;
        swift_beginAccess();

        v74 = *(v73 + 272);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = *(v73 + 272);
        *(v73 + 272) = 0x8000000000000000;
        sub_10001BD04(v66, v71, isUniquelyReferenced_nonNull_native);
        v76 = v72;
        v68 = v132;
        (*(v55 + 8))(v71, v76);
        *(v73 + 272) = v145;
        swift_endAccess();
        sub_100036A80();
        if ((v67 & 1) == 0)
        {
LABEL_25:
          if ((v68 & 1) == 0)
          {
            goto LABEL_46;
          }

          v77 = 0;
LABEL_42:
          if ((*(v137 + 264) & 1) == 0)
          {
            LODWORD(v136) = v77;
            v98 = v137;
            *(v137 + 264) = 1;
            sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
            v99 = v111;
            v100 = v110;
            v101 = v112;
            (*(v111 + 104))(v110, enum case for DispatchQoS.QoSClass.default(_:), v112);
            v135 = static OS_dispatch_queue.global(qos:)();
            (*(v99 + 8))(v100, v101);
            aBlock[4] = sub_10005463C;
            aBlock[5] = v98;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100020A64;
            aBlock[3] = &unk_100076CF0;
            v133 = _Block_copy(aBlock);

            v102 = v113;
            static DispatchQoS.unspecified.getter();
            v145 = _swiftEmptyArrayStorage;
            sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000637C(&qword_10007AF10, &unk_1000670A0);
            v55 = v130;
            sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
            v103 = v115;
            v104 = v118;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v105 = v133;
            v106 = v135;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v105);

            (*(v117 + 8))(v103, v104);
            (*(v114 + 8))(v102, v116);

            if (v136)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }

LABEL_43:
          if (v77)
          {
            goto LABEL_44;
          }

LABEL_46:
          v97 = v134;
          (*(v55 + 16))(v123, v66 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v134);

          v96 = 0;
          goto LABEL_47;
        }
      }

      else if ((v141 & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_100050310(v66);
      v77 = 0;
      goto LABEL_38;
    }

    v57 = 0;
    (*(v55 + 8))(v59, v58);
    aBlock[0] = v64;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v63 = v58;

      v60 = v129;
      goto LABEL_29;
    }

    v60 = v129;
    if (v138)
    {
      v63 = v58;

      goto LABEL_29;
    }
  }

  sub_10004680C(v131, v133, v132 & 1, v142);
  v62 = v57;
  if (!v57)
  {
    v66 = sub_100046A04(v142);
    v144 = v142[0];
    sub_100020EA0(&v144);
    v143 = v142[1];
    sub_100020EA0(&v143);
    goto LABEL_22;
  }

  v63 = v58;
LABEL_29:
  aBlock[0] = v62;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v145)
  {

    (*(v55 + 56))(v123, 1, 1, v63);

    return [*(v137 + 216) unlock];
  }

  v133 = v53;

  v78 = v121;
  static Logger.persistenceRecordStore.getter();
  sub_100006754(v135, v60, &unk_10007B400, &unk_100066D80);

  swift_errorRetain();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    aBlock[0] = v135;
    *v81 = 136446722;
    v82 = Set.description.getter();
    v84 = sub_100001ED8(v82, v83, aBlock);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2082;
    sub_100006754(v60, v61, &unk_10007B400, &unk_100066D80);
    v85 = String.init<A>(describing:)();
    v86 = v60;
    v87 = v85;
    v89 = v88;
    sub_100008630(v86, &unk_10007B400, &unk_100066D80);
    v90 = sub_100001ED8(v87, v89, aBlock);

    *(v81 + 14) = v90;
    *(v81 + 22) = 2082;
    v145 = v62;
    swift_errorRetain();
    v91 = String.init<A>(describing:)();
    v93 = sub_100001ED8(v91, v92, aBlock);

    *(v81 + 24) = v93;
    _os_log_impl(&_mh_execute_header, v79, v80, "Failed to delete stores “%{public}s” for record %{public}s with unexpected error. Error: %{public}s", v81, 0x20u);
    swift_arrayDestroy();

    v94 = v121;
  }

  else
  {

    sub_100008630(v60, &unk_10007B400, &unk_100066D80);
    v94 = v78;
  }

  (v133)(v94, v124);
  swift_willThrow();
  return [*(v137 + 216) unlock];
}

NSObject *sub_100038A50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  LODWORD(v100) = a6;
  v94 = a4;
  v99 = a2;
  v96 = type metadata accessor for UUID();
  v95 = *(v96 - 8);
  v10 = *(v95 + 64);
  __chkstk_darwin(v96);
  v89 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v12 = *(*(v91 - 8) + 64);
  v13 = __chkstk_darwin(v91);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v93 = &v84 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v84 - v19;
  __chkstk_darwin(v18);
  v22 = &v84 - v21;
  v23 = type metadata accessor for Logger();
  v24 = *(v23 - 8);
  v101 = v23;
  v102 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v84 - v29;
  v103 = v6;
  [*(v6 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v98 = a1;
  v31 = a1;
  v32 = a5;
  sub_100006754(v31, v22, &unk_10007B400, &unk_100066D80);

  v33 = Logger.logObject.getter();
  LODWORD(a5) = static os_log_type_t.default.getter();
  v90 = v32;

  v34 = a3;

  v88 = a5;
  v92 = v33;
  v35 = os_log_type_enabled(v33, a5);
  v87 = v28;
  v86 = v15;
  v85 = v20;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v104[0] = v84;
    *v36 = 136446978;
    sub_100006754(v22, v20, &unk_10007B400, &unk_100066D80);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    v40 = v102;
    sub_100008630(v22, &unk_10007B400, &unk_100066D80);
    v41 = sub_100001ED8(v37, v39, v104);

    *(v36 + 4) = v41;
    *(v36 + 12) = 2082;
    v42 = v99;
    *(v36 + 14) = sub_100001ED8(v99, v34, v104);
    *(v36 + 22) = 2082;
    v43 = v94;
    *(v36 + 24) = sub_100001ED8(v94, v90, v104);
    *(v36 + 32) = 2082;
    if (v100)
    {
      v44 = 7562585;
    }

    else
    {
      v44 = 28494;
    }

    if (v100)
    {
      v45 = 0xE300000000000000;
    }

    else
    {
      v45 = 0xE200000000000000;
    }

    v46 = sub_100001ED8(v44, v45, v104);

    *(v36 + 34) = v46;
    v47 = v92;
    _os_log_impl(&_mh_execute_header, v92, v88, "Get store properties for store with record ID “%{public}s,” container “%{public}s” and name “%{public}s.” Is internal: %{public}s", v36, 0x2Au);
    swift_arrayDestroy();

    v92 = *(v40 + 8);
    (v92)(v30, v101);
    v48 = v43;
    v49 = v34;
  }

  else
  {

    sub_100008630(v22, &unk_10007B400, &unk_100066D80);
    v92 = *(v102 + 8);
    (v92)(v30, v101);
    v48 = v94;
    v49 = a3;
    v42 = v99;
  }

  v50 = v98;
  v51 = v93;
  sub_100006754(v98, v93, &unk_10007B400, &unk_100066D80);
  v52 = v95;
  v53 = v96;
  v54 = (*(v95 + 48))(v51, 1, v96);
  v55 = v97;
  if (v54 == 1)
  {
    sub_100008630(v51, &unk_10007B400, &unk_100066D80);
    v56 = v100;
LABEL_12:
    sub_10004680C(v42, v49, v56 & 1, v105);
    v57 = v55;
    if (v55)
    {
      goto LABEL_20;
    }

    v73 = sub_100046A04(v105);
    v107 = v105[0];
    sub_100020EA0(&v107);
    v106 = v105[1];
    sub_100020EA0(&v106);
LABEL_28:
    v74 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    v75 = *(v73 + v74);
    if (*(v75 + 16))
    {
      v76 = *(v73 + v74);

      v77 = sub_1000182E8(v48, v90);
      if (v78)
      {
        v79 = *(v75 + 56) + 32 * v77;
        v80 = *(v79 + 8);
        v81 = *(v79 + 24);
        v82 = *(v79 + 25);

        v61 = sub_1000090D0();

        goto LABEL_35;
      }
    }

    if (qword_10007A210 != -1)
    {
      swift_once();
    }

    v61 = qword_10007D5D0;

    goto LABEL_35;
  }

  v94 = v49;
  v58 = v89;
  (*(v52 + 32))(v89, v51, v53);
  v59 = v55;
  v60 = sub_10004649C(v58);
  v57 = v55;
  if (!v55)
  {
    v73 = v60;
    (*(v52 + 8))(v58, v53);
    goto LABEL_28;
  }

  v55 = 0;
  (*(v52 + 8))(v58, v53);
  v104[0] = v59;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if ((swift_dynamicCast() & 1) != 0 && !v108)
  {

    v56 = v100;
    v49 = v94;
    v42 = v99;
    goto LABEL_12;
  }

LABEL_20:
  v104[0] = v57;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v108)
  {

    v61 = sub_100006278(_swiftEmptyArrayStorage);

LABEL_35:
    [*(v103 + 216) unlock];
    return v61;
  }

  v62 = v87;
  static Logger.persistenceRecordStore.getter();
  v63 = v86;
  sub_100006754(v50, v86, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v61 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v61, v64))
  {
    v65 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v104[0] = v100;
    *v65 = 136446466;
    sub_100006754(v63, v85, &unk_10007B400, &unk_100066D80);
    v66 = String.init<A>(describing:)();
    v68 = v67;
    sub_100008630(v63, &unk_10007B400, &unk_100066D80);
    v69 = sub_100001ED8(v66, v68, v104);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v108 = v57;
    swift_errorRetain();
    v70 = String.init<A>(describing:)();
    v72 = sub_100001ED8(v70, v71, v104);

    *(v65 + 14) = v72;
    _os_log_impl(&_mh_execute_header, v61, v64, "Failed to get properties for record %{public}s with unexpected error. Error: %{public}s", v65, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008630(v63, &unk_10007B400, &unk_100066D80);
  }

  (v92)(v62, v101);
  swift_willThrow();
  [*(v103 + 216) unlock];
  return v61;
}

id sub_1000395A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unsigned __int8 a11)
{
  v12 = v11;
  v183 = a8;
  v196 = a6;
  v181 = a4;
  v189 = a3;
  v180 = a2;
  v198 = a1;
  v186 = a9;
  v195 = a11;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v176 = *(v15 - 8);
  v177 = v15;
  v16 = *(v176 + 64);
  __chkstk_darwin(v15);
  v174 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchQoS();
  v173 = *(v175 - 8);
  v18 = *(v173 + 64);
  __chkstk_darwin(v175);
  v172 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS.QoSClass();
  v170 = *(v20 - 8);
  v171 = v20;
  v21 = *(v170 + 64);
  __chkstk_darwin(v20);
  v169 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v201 = v23;
  v202 = v24;
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v179 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v192 = &v168 - v28;
  v188 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v29 = *(*(v188 - 8) + 64);
  v30 = __chkstk_darwin(v188);
  v184 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v199 = &v168 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v168 - v35;
  __chkstk_darwin(v34);
  v38 = &v168 - v37;
  v39 = type metadata accessor for Logger();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v187 = &v168 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v168 = &v168 - v45;
  __chkstk_darwin(v44);
  v47 = &v168 - v46;
  v213 = v12;
  [*(v12 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v200 = a5;
  sub_100006754(a5, v38, &unk_10007B400, &unk_100066D80);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  v194 = a7;

  v50 = os_log_type_enabled(v48, v49);
  v190 = v39;
  v191 = v40;
  v197 = v36;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v203[0] = v185;
    *v51 = 136446722;
    sub_100006754(v38, v36, &unk_10007B400, &unk_100066D80);
    v52 = String.init<A>(describing:)();
    LODWORD(v182) = v49;
    v53 = v52;
    v55 = v54;
    sub_100008630(v38, &unk_10007B400, &unk_100066D80);
    v56 = sub_100001ED8(v53, v55, v203);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2082;
    v57 = v196;
    v58 = v194;
    *(v51 + 14) = sub_100001ED8(v196, v194, v203);
    *(v51 + 22) = 2082;
    v59 = v195;
    if (v195)
    {
      v60 = 7562585;
    }

    else
    {
      v60 = 28494;
    }

    if (v195)
    {
      v61 = 0xE300000000000000;
    }

    else
    {
      v61 = 0xE200000000000000;
    }

    v62 = sub_100001ED8(v60, v61, v203);

    *(v51 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v48, v182, "Updating store with record ID “%{public}s,” container “%{public}s.” Is internal: %{public}s", v51, 0x20u);
    swift_arrayDestroy();

    v185 = *(v191 + 8);
    v185(v47, v190);
    v63 = v58;
    v64 = v57;
    v65 = v59;
  }

  else
  {

    sub_100008630(v38, &unk_10007B400, &unk_100066D80);
    v185 = *(v40 + 8);
    v185(v47, v39);
    v63 = v194;
    v64 = v196;
    v65 = v195;
  }

  v182 = a10;
  v66 = v199;
  v68 = v201;
  v67 = v202;
  v69 = v192;
  if (*(v198 + 16))
  {
    v70 = 1;
  }

  else
  {
    sub_100008F38(v189);
    v66 = v199;
    v70 = v71 ^ 1;
  }

  v178 = v70;
  v72 = v197;
  sub_100006754(v200, v66, &unk_10007B400, &unk_100066D80);
  if ((*(v67 + 48))(v66, 1, v68) == 1)
  {
    sub_100008630(v66, &unk_10007B400, &unk_100066D80);
    v73 = v193;
    v74 = v67;
  }

  else
  {
    (*(v67 + 32))(v69, v66, v68);
    v77 = v193;
    v78 = sub_10004649C(v69);
    v75 = v77;
    if (!v77)
    {
      v79 = v78;
      (*(v67 + 8))(v69, v68);
      v80 = v79;
      v74 = v67;
      if (v181)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    (*(v67 + 8))(v69, v68);
    v203[0] = v77;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    if ((swift_dynamicCast() & 1) == 0 || v204[0])
    {

      v76 = v72;
      v74 = v202;
      goto LABEL_60;
    }

    v73 = 0;
    v63 = v194;
    v64 = v196;
    v74 = v202;
    v65 = v195;
  }

  sub_10004680C(v64, v63, v65 & 1, v206);
  v75 = v73;
  if (!v73)
  {
    v81 = sub_100046A04(v206);
    v208[0] = v206[0];
    sub_100020EA0(v208);
    v207 = v206[1];
    sub_100020EA0(&v207);
    v80 = v81;
    if (v181)
    {
      goto LABEL_26;
    }

LABEL_25:
    if (!*(v198 + 16))
    {
      v199 = v80;
      v98 = *(v189 + 16);
      if (!*(v180 + 16))
      {
        if (!v98)
        {
          v141 = v168;
          static Logger.persistenceRecordStore.getter();
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            *v144 = 0;
            _os_log_impl(&_mh_execute_header, v142, v143, "Nothing to modify, exiting early", v144, 2u);
            v74 = v202;
          }

          v185(v141, v190);
          v138 = v186;
          goto LABEL_114;
        }

        v82 = 0;
LABEL_29:
        v83 = v182;
        v84 = v183;
        v85 = v199;
        v86 = sub_10000EB6C(v183, v182);
        v87 = sub_10000EC24(v84, v83);
        v88 = v84;
        v89 = v85;
        v90 = sub_10000ECDC(v189, v88, v83);
        LODWORD(v194) = v82;
        if (v90)
        {
          v92 = v182;
          v95 = v183;
          LODWORD(v196) = v86 ^ sub_10000EB6C(v183, v182);
          v96 = v95;
          v89 = v199;
          v97 = 0;
          v91 = v87 ^ sub_10000EC24(v96, v92);
          v204[0] = 0;
          v195 = 1;
          v74 = v202;
          if ((v194 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v195 = 0;
          LODWORD(v196) = 0;
          v91 = 0;
          v97 = 0;
          v204[0] = 0;
          v74 = v202;
          v92 = v182;
          if (!v194)
          {
LABEL_69:
            v136 = v183;
            v137 = sub_10000EECC(v183, v92);
            v199 = v89;
            if (v137)
            {
              sub_10000FE2C(v136, v92);
            }

            else
            {
              v138 = v186;
              if (v204[0] != 1)
              {
                if (v97)
                {
                  if (v91)
                  {
                    v139 = 1;
                    v140 = 1;
                    if ((v195 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

                    goto LABEL_91;
                  }
                }

                else
                {
                  if (v91)
                  {
                    if ((v195 & 1) == 0)
                    {
                      if (v196)
                      {
                        LOBYTE(v140) = 1;
LABEL_94:
                        v152 = v199;
                        sub_100050310(v199);
                        v153 = 0;
                        goto LABEL_101;
                      }

                      goto LABEL_98;
                    }

                    goto LABEL_76;
                  }

                  if ((v196 & 1) == 0)
                  {
                    if ((v195 & 1) == 0)
                    {
                      goto LABEL_114;
                    }

                    v139 = 0;
                    v140 = 0;
                    goto LABEL_91;
                  }
                }

                v140 = sub_10000EC24(v136, v92);
                if ((v195 & 1) == 0)
                {
                  goto LABEL_94;
                }

                v139 = 1;
                goto LABEL_91;
              }
            }

            if (v97)
            {
              if (v91)
              {
                v139 = 1;
                v140 = 1;
                goto LABEL_91;
              }

              goto LABEL_82;
            }

            if (v91)
            {
LABEL_76:
              v140 = 1;
              v139 = v196;
              goto LABEL_91;
            }

            if (v196)
            {
LABEL_82:
              v140 = sub_10000EC24(v136, v92);
              v139 = 1;
              goto LABEL_91;
            }

            v139 = 0;
            v140 = 0;
LABEL_91:
            v145 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
            v146 = v199;
            swift_beginAccess();
            if (!*(*(v146 + v145) + 16))
            {
              sub_10003DCD0(v146);
              v152 = v146;
              if (v139)
              {
                v153 = 1;
LABEL_101:
                sub_100045138();
                v138 = v186;
                if ((v140 & 1) == 0)
                {
                  goto LABEL_103;
                }

                goto LABEL_102;
              }

              if ((v140 & 1) == 0)
              {

                v166 = 1;
                v138 = v186;
                goto LABEL_108;
              }

              v153 = 1;
              v138 = v186;
LABEL_102:
              if (*(v213 + 264))
              {
LABEL_103:
                if (!v153)
                {
                  goto LABEL_115;
                }

                goto LABEL_106;
              }

              v154 = v213;
              *(v213 + 264) = 1;
              sub_100006820(0, &qword_10007A360, OS_dispatch_queue_ptr);
              v156 = v169;
              v155 = v170;
              v157 = *(v170 + 104);
              LODWORD(v200) = v153;
              v158 = v171;
              v157(v169, enum case for DispatchQoS.QoSClass.default(_:), v171);
              v199 = static OS_dispatch_queue.global(qos:)();
              (*(v155 + 8))(v156, v158);
              v203[4] = sub_100054590;
              v203[5] = v154;
              v203[0] = _NSConcreteStackBlock;
              v203[1] = 1107296256;
              v203[2] = sub_100020A64;
              v203[3] = &unk_100076CA0;
              v198 = _Block_copy(v203);

              v159 = v172;
              static DispatchQoS.unspecified.getter();
              v205 = _swiftEmptyArrayStorage;
              sub_10005459C(&unk_10007B280, &type metadata accessor for DispatchWorkItemFlags);
              sub_10000637C(&qword_10007AF10, &unk_1000670A0);
              sub_1000545E4(&qword_10007B290, &qword_10007AF10, &unk_1000670A0);
              v160 = v152;
              v161 = v174;
              v162 = v177;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v164 = v198;
              v163 = v199;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v74 = v202;
              _Block_release(v164);

              v165 = v161;
              v152 = v160;
              (*(v176 + 8))(v165, v162);
              (*(v173 + 8))(v159, v175);

              v138 = v186;
              if (v200)
              {
LABEL_106:

                v166 = 1;
LABEL_108:
                v167 = v201;
LABEL_116:
                (*(v74 + 56))(v138, v166, 1, v167);
                return [*(v213 + 216) unlock];
              }

LABEL_115:
              v167 = v201;
              (*(v74 + 16))(v138, v152 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v201);

              v166 = 0;
              goto LABEL_116;
            }

            LODWORD(v198) = v140;
            v147 = v179;
            v148 = v201;
            (*(v74 + 16))(v179, v146 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v201);
            LODWORD(v196) = v139;
            v149 = v213;
            swift_beginAccess();

            v150 = *(v149 + 272);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v205 = *(v149 + 272);
            *(v149 + 272) = 0x8000000000000000;
            sub_10001BD04(v146, v147, isUniquelyReferenced_nonNull_native);
            (*(v74 + 8))(v147, v148);
            *(v149 + 272) = v205;
            swift_endAccess();
            sub_100036A80();
            if (v196)
            {
              LOBYTE(v140) = v198;
              goto LABEL_94;
            }

            v138 = v186;
            if (v198)
            {
LABEL_98:
              v153 = 0;
              v152 = v199;
              goto LABEL_102;
            }

LABEL_114:
            v152 = v199;
            goto LABEL_115;
          }
        }

LABEL_32:
        v93 = v183;
        v94 = sub_100052364(v89, v183, v92);
        LODWORD(v194) = v91;
        v99 = v94;
        v100 = v180;

        v199 = v89;
        v104 = sub_100052768(v89, v93, v92);
        if (v181)
        {

          if (*(v198 + 16))
          {
            v101 = &v199[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
            v102 = Dictionary<>.sanitize(isInternalClient:)(v199[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32], v198);
            v103 = *(v101 + 1);
            v209[0] = *v101;
            v209[1] = v103;
            v210 = v101[32];
            v110 = sub_100012400(v209, v213 + 152, v102);
          }

          else
          {
            v102 = sub_100006278(_swiftEmptyArrayStorage);
            v110 = sub_100006278(_swiftEmptyArrayStorage);
          }
        }

        else
        {
          v105 = *(v100 + 16);

          if (v105)
          {

            v102 = sub_100052D80(v99, v100);

            v106 = sub_100052D80(v104, v100);
          }

          else
          {
            v106 = v104;
            v102 = v99;
          }

          if (*(v198 + 16))
          {
            v193 = v106;
            v107 = &v199[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
            v108 = Dictionary<>.sanitize(isInternalClient:)(v199[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32], v198);
            v109 = *(v107 + 1);
            v211[0] = *v107;
            v211[1] = v109;
            v212 = v107[32];
            v111 = sub_100012400(v211, v213 + 152, v108);
            v112 = swift_isUniquelyReferenced_nonNull_native();
            v203[0] = v102;
            sub_100052F40(v108, sub_10004E214, 0, v112, v203);

            v102 = v203[0];
            v113 = v193;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v203[0] = v113;
            sub_100052F40(v111, sub_10004E214, 0, v114, v203);

            v110 = v203[0];
          }

          else
          {
            v110 = v106;
          }
        }

        sub_10001027C(v99, v102);
        v116 = v115;

        if (v116)
        {
          sub_10001027C(v104, v110);
          v118 = v117;

          if (v118)
          {
            v119 = 0;
            v92 = v182;
LABEL_68:

            v74 = v202;
            LOBYTE(v91) = v194;
            v89 = v199;
            v97 = v119;
            goto LABEL_69;
          }
        }

        else
        {
        }

        v92 = v182;
        sub_10004FAC4(v199, v183, v182, v102, v110, v204);
        v119 = 1;
        goto LABEL_68;
      }

      if (v98)
      {
LABEL_28:
        v82 = 1;
        goto LABEL_29;
      }

      v89 = v199;
LABEL_31:
      v195 = 0;
      LODWORD(v196) = 0;
      v91 = 0;
      v204[0] = 0;
      v92 = v182;
      goto LABEL_32;
    }

LABEL_26:
    if (*(v189 + 16))
    {
      v199 = v80;
      goto LABEL_28;
    }

    v89 = v80;
    goto LABEL_31;
  }

  v76 = v72;
LABEL_60:
  v203[0] = v75;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (!swift_dynamicCast() || v205)
  {

    v120 = v187;
    static Logger.persistenceRecordStore.getter();
    v121 = v184;
    sub_100006754(v200, v184, &unk_10007B400, &unk_100066D80);
    swift_errorRetain();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v203[0] = v202;
      *v124 = 136446466;
      sub_100006754(v121, v76, &unk_10007B400, &unk_100066D80);
      v125 = String.init<A>(describing:)();
      v126 = v121;
      v127 = v125;
      v129 = v128;
      sub_100008630(v126, &unk_10007B400, &unk_100066D80);
      v130 = sub_100001ED8(v127, v129, v203);

      *(v124 + 4) = v130;
      *(v124 + 12) = 2082;
      v205 = v75;
      swift_errorRetain();
      v131 = String.init<A>(describing:)();
      v133 = sub_100001ED8(v131, v132, v203);

      *(v124 + 14) = v133;
      _os_log_impl(&_mh_execute_header, v122, v123, "Failed to update store for record %{public}s with unexpected error. Error: %{public}s", v124, 0x16u);
      swift_arrayDestroy();

      v134 = v187;
    }

    else
    {

      sub_100008630(v121, &unk_10007B400, &unk_100066D80);
      v134 = v120;
    }

    v185(v134, v190);
    swift_willThrow();
  }

  else
  {

    (*(v74 + 56))(v186, 1, 1, v201);
  }

  return [*(v213 + 216) unlock];
}

char *sub_10003AD8C(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v78 = a4;
  v77 = a2;
  v81 = type metadata accessor for UUID();
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v83 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v75 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Logger();
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v70 - v25;
  v87 = v4;
  [*(v4 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v84 = a1;
  sub_100006754(a1, v19, &unk_10007B400, &unk_100066D80);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v76 = a3;

  v29 = os_log_type_enabled(v27, v28);
  v74 = v24;
  v72 = v9;
  v71 = v17;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v88[0] = v73;
    *v30 = 136446722;
    sub_100006754(v19, v17, &unk_10007B400, &unk_100066D80);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    sub_100008630(v19, &unk_10007B400, &unk_100066D80);
    v34 = sub_100001ED8(v31, v33, v88);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v35 = v77;
    v36 = v76;
    *(v30 + 14) = sub_100001ED8(v77, v76, v88);
    *(v30 + 22) = 2082;
    v37 = v78;
    if (v78)
    {
      v38 = 7562585;
    }

    else
    {
      v38 = 28494;
    }

    if (v78)
    {
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = 0xE200000000000000;
    }

    v40 = sub_100001ED8(v38, v39, v88);
    v41 = v85;

    *(v30 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v27, v28, "Get store names for store with record ID “%{public}s” and container “%{public}s.” Is internal: %{public}s", v30, 0x20u);
    swift_arrayDestroy();

    v73 = *(v41 + 8);
    v73(v26, v86);
    v42 = v37;
  }

  else
  {

    sub_100008630(v19, &unk_10007B400, &unk_100066D80);
    v73 = *(v85 + 8);
    v73(v26, v86);
    v36 = v76;
    v42 = v78;
    v35 = v77;
  }

  v43 = v75;
  sub_100006754(v84, v75, &unk_10007B400, &unk_100066D80);
  v44 = v80;
  v45 = v81;
  v46 = (*(v80 + 48))(v43, 1, v81);
  v47 = v82;
  v48 = v79;
  if (v46 == 1)
  {
    v49 = v83;
    sub_100008630(v43, &unk_10007B400, &unk_100066D80);
LABEL_12:
    sub_10004680C(v35, v36, v42 & 1, v89);
    v50 = v47;
    if (v47)
    {
      goto LABEL_22;
    }

    v53 = sub_100046A04(v89);
    v91 = v89[0];
    sub_100020EA0(&v91);
    v90 = v89[1];
    sub_100020EA0(&v90);
LABEL_29:
    v66 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    swift_beginAccess();
    v67 = *(v53 + v66);

    v55 = sub_100023564(v68);

    goto LABEL_30;
  }

  v51 = v83;
  (*(v44 + 32))(v79, v43, v45);
  v52 = v47;
  v53 = sub_10004649C(v48);
  v54 = v48;
  v50 = v52;
  if (!v52)
  {
    (*(v44 + 8))(v54, v45);
    goto LABEL_29;
  }

  v47 = 0;
  (*(v44 + 8))(v54, v45);
  v88[0] = v52;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast())
  {
    v49 = v51;
    if (!v92)
    {

      goto LABEL_12;
    }
  }

  else
  {

    v49 = v51;
  }

LABEL_22:
  v88[0] = v50;
  swift_errorRetain();
  sub_10000637C(&qword_10007A380, &qword_100065BE0);
  if (swift_dynamicCast() && !v92)
  {

    v55 = &_swiftEmptySetSingleton;
LABEL_30:
    [*(v87 + 216) unlock];
    return v55;
  }

  v56 = v74;
  static Logger.persistenceRecordStore.getter();
  sub_100006754(v84, v49, &unk_10007B400, &unk_100066D80);
  swift_errorRetain();
  v55 = v56;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v55 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v88[0] = v84;
    *v55 = 136446466;
    sub_100006754(v49, v71, &unk_10007B400, &unk_100066D80);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    sub_100008630(v49, &unk_10007B400, &unk_100066D80);
    v62 = sub_100001ED8(v59, v61, v88);

    *(v55 + 4) = v62;
    *(v55 + 6) = 2082;
    v92 = v50;
    swift_errorRetain();
    v63 = String.init<A>(describing:)();
    v65 = sub_100001ED8(v63, v64, v88);

    *(v55 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v57, v58, "Failed to get stores for record %{public}s with unexpected error. Error: %{public}s", v55, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008630(v49, &unk_10007B400, &unk_100066D80);
  }

  v73(v56, v86);
  swift_willThrow();
  [*(v87 + 216) unlock];
  return v55;
}

uint64_t sub_10003B7C4(int a1)
{
  v3 = v1;
  v54 = a1;
  v62 = type metadata accessor for URL();
  v60 = *(v62 - 8);
  v4 = *(v60 + 64);
  v5 = __chkstk_darwin(v62);
  v57 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v53 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v56 = (v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v58 = v53 - v15;
  __chkstk_darwin(v14);
  v17 = v53 - v16;
  static Logger.persistenceRecordStore.getter();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Updating Effective Settings", v20, 2u);
  }

  v22 = *(v10 + 8);
  v21 = v10 + 8;
  v59 = v22;
  v22(v17, v9);
  v64 = &_swiftEmptyDictionarySingleton;
  sub_1000416E0();

  v63 = sub_10004D76C(v23);
  sub_10004C98C(&v63);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    v61 = v9;

    sub_100051FC8(v63, &v64);
    sub_100041A30(v64);

    v63 = sub_10004D76C(v24);
    sub_10004C98C(&v63);
    v25 = v60;

    sub_100051FC8(v63, &v64);

    sub_10006100C(&v64);
    type metadata accessor for Persistence();
    v26 = *(v3 + 88);
    sub_100008578((v3 + 56), *(v3 + 80));
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v27 = static Persistence.readUnmigratedSettings(from:)();
    v28 = *(v25 + 8);
    v28(v8, v62);
    v29 = v64;
    sub_100034C14(v27, v64);
    v31 = v30;

    if (*(v31 + 16))
    {
      v56 = v29;
      v60 = 0;
      v32 = v58;
      static Logger.persistenceRecordStore.getter();

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      v35 = os_log_type_enabled(v33, v34);
      v55 = v28;
      if (v35)
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v63 = v37;
        *v36 = 136446210;
        v38 = Array.description.getter();
        v53[1] = v21;
        v40 = sub_100001ED8(v38, v39, &v63);

        *(v36 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v33, v34, "Settings changed: %{public}s", v36, 0xCu);
        sub_10000210C(v37);

        v59(v58, v61);
      }

      else
      {

        v59(v32, v61);
      }

      v48 = v57;
      v49 = *(v3 + 88);
      sub_100008578((v3 + 56), *(v3 + 80));
      dispatch thunk of Locatable.effectiveSettingsPath.getter();
      v50 = v56;
      v51 = v60;
      sub_100053E9C(v56, v48, &static Persistence.write(_:to:));
      if (v51)
      {
        v55(v48, v62);
      }

      else
      {
        v55(v48, v62);
        if (v54)
        {
          v52 = *sub_100008578((v3 + 96), *(v3 + 120));
          sub_100031620(v31);
        }

        sub_1000454EC(v50);
      }
    }

    else
    {

      v41 = v56;
      static Logger.persistenceRecordStore.getter();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v61;
      if (v44)
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Effective settings did not change, exiting early", v46, 2u);
      }

      result = (v59)(v41, v45);
    }

    *(v3 + 208) = 0;
  }

  return result;
}

id sub_10003BE20()
{
  v31 = type metadata accessor for UUID();
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Logger();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v33);
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  [*(v0 + 216) lock];
  swift_beginAccess();
  v25 = v0;
  v10 = *(v0 + 272);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v32 = v4 + 8;
  v27 = v1 + 8;
  v28 = v1 + 16;
  v34 = v10;

  v17 = 0;
  *&v18 = 136446466;
  v26 = v18;
  v29 = v9;
  if (v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v23 = v25;
      sub_10003B7C4(0);
      sub_10003C440();
      return [*(v23 + 216) unlock];
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v21 = *(*(v34 + 56) + ((v19 << 9) | (8 * v20)));

        sub_100050310(v22);

        v17 = v19;
        if (!v14)
        {
          break;
        }

LABEL_10:
        v19 = v17;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003C440()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Notifying all clients", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_10000695C(v1 + 96, v26);
  v10 = sub_100008578(v26, v26[3]);
  v11 = static SettingMetadataDirectory.allMetadata.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = _swiftEmptyArrayStorage;
    sub_100057850(0, v12, 0);
    v13 = v25;
    v14 = v11 + 32;
    do
    {
      sub_10000695C(v14, v24);
      sub_100008578(v24, v24[3]);
      v15 = dispatch thunk of SettingMetadataProtocol.name.getter();
      v17 = v16;
      sub_10000210C(v24);
      v25 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_100057850((v18 > 1), v19 + 1, 1);
        v13 = v25;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v21 = *v10;
  sub_100031620(v13);

  return sub_10000210C(v26);
}

id sub_10003C6A4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Updating synced stores", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  sub_10003C810();
  *(v1 + 264) = 0;
  return [*(v1 + 216) unlock];
}

uint64_t sub_10003C810()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.persistenceRecordStore.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Converting syncable store to syncable data", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  v10 = v1[34];
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v1[34];
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v25 = v1;
  while (v13)
  {
LABEL_13:
    v27 = *(*(v10 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v13)))));

    sub_100046DC4(&v27, &v26);

    v20 = v26;
    if (v26)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000264F0(0, v18[2] + 1, 1, v18);
        v18 = result;
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1000264F0((v21 > 1), v22 + 1, 1, v18);
        v18 = result;
      }

      v18[2] = v22 + 1;
      v18[v22 + 4] = v20;
      v1 = v25;
    }

    v13 &= v13 - 1;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      v23 = sub_100008578(v1 + 2, v1[5]);
      sub_1000202A0(v18, *v23, v23[1], v23[2]);
    }

    v13 = *(v10 + 64 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CADC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v79 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v79);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for URL();
  v71 = *(v78 - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin(v78);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v3 + 216) lock];
  static Logger.persistenceRecordStore.getter();

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v66 = v3;
  v68 = a2;
  v67 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = a1;
    v23 = v21;
    *&v82 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_100001ED8(v22, a2, &v82);
    _os_log_impl(&_mh_execute_header, v17, v18, "Getting client values for %{public}s", v20, 0xCu);
    sub_10000210C(v23);

    v3 = v66;
  }

  (*(v13 + 8))(v16, v12);
  v24 = sub_10003D2FC();
  v25 = v24;
  if (v24 >> 62)
  {
LABEL_40:
    v80 = v25 & 0xFFFFFFFFFFFFFF8;
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v80 = v24 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_5:
      v27 = 0;
      v75 = 0x800000010006A320;
      v76 = v25 & 0xC000000000000001;
      v74 = enum case for URL.DirectoryHint.notDirectory(_:);
      v73 = (v6 + 104);
      v72 = (v6 + 8);
      v71 += 8;
      v69 = &_swiftEmptyDictionarySingleton;
      v70 = v25;
      while (1)
      {
LABEL_6:
        v3 = v27;
        while (1)
        {
          if (v76)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v27 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_38;
            }
          }

          else
          {
            if (v3 >= *(v80 + 16))
            {
              goto LABEL_39;
            }

            v28 = *(v25 + 8 * v3 + 32);

            v27 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          v6 = v26;
          type metadata accessor for Persistence();
          v81[0] = 0xD00000000000001DLL;
          v81[1] = v75;
          v29 = v11;
          v30 = v77;
          v31 = v79;
          (*v73)(v77, v74, v79);
          sub_100011710();
          URL.appending<A>(path:directoryHint:)();
          v32 = v30;
          v11 = v29;
          (*v72)(v32, v31);
          v33 = static Persistence.readEffectiveSettings(from:)();
          (*v71)(v29, v78);
          v84 = *(v28 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
          v34 = *(v28 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
          v82 = *(v28 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
          v83 = v34;
          v85 = v82;
          v86[0] = v34;
          if (*(v33 + 16))
          {
            sub_1000544B8(&v85, v81);
            sub_1000544B8(v86, v81);
            v35 = sub_1000182E8(v67, v68);
            if (v36)
            {
              v45 = *(*(v33 + 56) + 8 * v35);

              v46 = v69;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v81[0] = v46;
              v48 = sub_100018434(&v82);
              v50 = v48;
              v51 = v46[2];
              v52 = (v49 & 1) == 0;
              v53 = v51 + v52;
              if (__OFADD__(v51, v52))
              {
                __break(1u);
                goto LABEL_44;
              }

              v54 = v49;
              if (v46[3] >= v53)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  v26 = v6;
                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }

                else
                {
                  sub_10001D550();
                  v26 = v6;
                  if ((v54 & 1) == 0)
                  {
                    goto LABEL_33;
                  }
                }
              }

              else
              {
                sub_100019B40(v53, isUniquelyReferenced_nonNull_native);
                v55 = sub_100018434(&v82);
                if ((v54 & 1) != (v56 & 1))
                {
                  goto LABEL_45;
                }

                v50 = v55;
                v26 = v6;
                if ((v54 & 1) == 0)
                {
LABEL_33:
                  v59 = v81[0];
                  *(v81[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
                  v60 = v59[6] + 40 * v50;
                  v61 = v83;
                  *v60 = v82;
                  *(v60 + 16) = v61;
                  *(v60 + 32) = v84;
                  *(v59[7] + 8 * v50) = v45;

                  v62 = v59[2];
                  v63 = __OFADD__(v62, 1);
                  v64 = v62 + 1;
                  if (!v63)
                  {
                    v69 = v59;
                    v59[2] = v64;
LABEL_35:
                    v3 = v66;
                    v25 = v70;
                    if (v27 != v26)
                    {
                      goto LABEL_6;
                    }

                    goto LABEL_42;
                  }

LABEL_44:
                  __break(1u);
LABEL_45:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }
              }

              sub_100020EA0(&v85);
              sub_100020EA0(v86);
              v69 = v81[0];
              v57 = *(v81[0] + 56);
              v58 = *(v57 + 8 * v50);
              *(v57 + 8 * v50) = v45;

              goto LABEL_35;
            }
          }

          else
          {
            sub_1000544B8(&v85, v81);
            sub_1000544B8(v86, v81);
          }

          v37 = sub_100018434(&v82);
          v39 = v38;
          sub_100020EA0(&v85);
          sub_100020EA0(v86);
          if (v39)
          {
            break;
          }

          v26 = v6;
          ++v3;
          v25 = v70;
          if (v27 == v6)
          {
            v3 = v66;
            goto LABEL_42;
          }
        }

        v40 = v69;
        v41 = swift_isUniquelyReferenced_nonNull_native();
        v81[0] = v40;
        if (!v41)
        {
          sub_10001D550();
          v40 = v81[0];
        }

        v42 = *(v40 + 48) + 40 * v37;
        v43 = *(v42 + 8);
        v44 = *(v42 + 24);

        v69 = v40;
        sub_100047F44(v37, v40);

        v3 = v66;
        v25 = v70;
        v26 = v6;
        if (v27 == v6)
        {
          goto LABEL_42;
        }
      }
    }
  }

  v69 = &_swiftEmptyDictionarySingleton;
LABEL_42:

  [*(v3 + 216) unlock];
  return v69;
}

uint64_t sub_10003D2FC()
{
  v48 = type metadata accessor for Application();
  v1 = *(v48 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v48);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10000637C(&qword_10007B810, "(N");
  v5 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v7 = &v40 - v6;
  v8 = sub_100040148(0);
  swift_beginAccess();
  v9 = *(v0 + 272);
  v41 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v51 = v1;
  v52 = v8;
  v15 = v8 + 56;
  v49 = (v1 + 8);
  v50 = v1 + 16;
  v47 = v9;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v53 = v4;
  v44 = v10;
  v45 = v7;
  v43 = v14;
  while (1)
  {
    v18 = v17;
LABEL_7:
    if (!v13)
    {
      break;
    }

    v17 = v18;
LABEL_12:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v17 << 6);
    v21 = v47;
    v22 = *(v47 + 48);
    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 16))(v7, v22 + *(*(v23 - 8) + 72) * v20, v23);
    v24 = *(*(v21 + 56) + 8 * v20);
    *&v7[*(v46 + 48)] = v24;
    v25 = (v24 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v24 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) != 1)
    {
      v26 = 1 << v52[32];
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      else
      {
        v27 = -1;
      }

      v28 = v27 & *(v52 + 7);
      v29 = (v26 + 63) >> 6;
      v42 = v24;

      v30 = 0;
      v31 = v48;
      while (v28)
      {
LABEL_23:
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v34 = v53;
        (*(v51 + 16))(v53, *(v52 + 6) + *(v51 + 72) * (v33 | (v30 << 6)), v31);
        v35 = Application.bundleIdentifier.getter();
        if (v36)
        {
          if (v35 == *v25 && v36 == v25[1])
          {

            (*v49)(v53, v48);
LABEL_31:

            v10 = v44;
            v7 = v45;
            v14 = v43;
            goto LABEL_32;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v31 = v48;
          result = (*v49)(v53, v48);
          if (v38)
          {
            goto LABEL_31;
          }
        }

        else
        {
          result = (*v49)(v34, v31);
        }
      }

      while (1)
      {
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v32 >= v29)
        {

          v7 = v45;
          result = sub_100008630(v45, &qword_10007B810, "(N");
          v18 = v17;
          v14 = v43;
          v10 = v44;
          goto LABEL_7;
        }

        v28 = *&v15[8 * v32];
        ++v30;
        if (v28)
        {
          v30 = v32;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_32:

    sub_100008630(v7, &qword_10007B810, "(N");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v41 = v54;
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      return v41;
    }

    v13 = *(v10 + 8 * v17);
    ++v18;
    if (v13)
    {
      goto LABEL_12;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_10003D780()
{
  v1 = v0;
  v56 = type metadata accessor for UUID();
  v2 = *(v56 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v56);
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 216) lock];
  swift_beginAccess();
  v10 = *(v1 + 272);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v57 = (v6 + 8);
  v16 = v9;
  v53 = (v2 + 8);
  v54 = (v2 + 16);
  v17 = v10;
  v52 = 0x8000000100069140;

  v19 = 0;
  *&v20 = 136446466;
  v51 = v20;
  v58 = v17;
  while (v14)
  {
LABEL_10:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = *(*(v17 + 56) + ((v19 << 9) | (8 * v22)));
    v24 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
    result = swift_beginAccess();
    if (!*(*(v23 + v24) + 16))
    {

      static Logger.persistenceRecordStore.getter();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v5;
        v28 = v27;
        v47 = swift_slowAlloc();
        v61 = v47;
        *v28 = v51;
        v29 = *v54;
        v48 = v16;
        v30 = v55;
        v46 = v25;
        v31 = v56;
        v29(v55, v23 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v56);
        sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
        v45 = v26;
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v1;
        v34 = v33;
        (*v53)(v30, v31);
        v35 = sub_100001ED8(v32, v34, &v61);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2082;
        v37 = *(v23 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
        v36 = *(v23 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
        v38 = *(v23 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 24);
        v44 = *(v23 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
        v59 = 0;
        v60 = 0xE000000000000000;

        _StringGuts.grow(_:)(37);

        v59 = 0xD000000000000018;
        v60 = v52;
        v39._countAndFlagsBits = v37;
        v1 = v50;
        v39._object = v36;
        String.append(_:)(v39);
        v40._countAndFlagsBits = 0x44496D616574202CLL;
        v40._object = 0xE900000000000020;
        String.append(_:)(v40);
        v41._countAndFlagsBits = v44;
        v41._object = v38;
        String.append(_:)(v41);
        v16 = v48;

        v42 = sub_100001ED8(v59, v60, &v61);

        *(v28 + 14) = v42;
        v25 = v46;
        _os_log_impl(&_mh_execute_header, v46, v45, "Clearing empty record %{public}s for %{public}s", v28, 0x16u);
        swift_arrayDestroy();

        v5 = v49;
      }

      (*v57)(v16, v5);
      sub_10003DCD0(v23);

      v17 = v58;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v15)
    {

      return [*(v1 + 216) unlock];
    }

    v14 = *(v11 + 8 * v21);
    ++v19;
    if (v14)
    {
      v19 = v21;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DCD0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v44 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  static Logger.persistenceRecordStore.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  LODWORD(v40) = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v43 = v2;
    v19 = v18;
    v37 = swift_slowAlloc();
    v45 = v37;
    *v19 = 136446466;
    sub_10005459C(&qword_10007ABB0, &type metadata accessor for UUID);
    v41 = v10;
    v20 = v4;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_100001ED8(v21, v22, &v45);
    v42 = v8;
    v24 = v23;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
    v26 = v9;
    v38 = v5;
    v39 = a1;
    v28 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    v27 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8);
    v30 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
    v29 = *(v25 + 24);
    v46 = 0;
    v47 = 0xE000000000000000;

    _StringGuts.grow(_:)(37);

    v46 = 0xD000000000000018;
    v47 = 0x8000000100069140;
    v31._countAndFlagsBits = v28;
    v9 = v26;
    v31._object = v27;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 0x44496D616574202CLL;
    v32._object = 0xE900000000000020;
    String.append(_:)(v32);
    v33._countAndFlagsBits = v30;
    v4 = v20;
    v10 = v41;
    a1 = v39;
    v33._object = v29;
    String.append(_:)(v33);

    v5 = v38;

    v34 = sub_100001ED8(v46, v47, &v45);

    *(v19 + 14) = v34;
    v8 = v42;
    _os_log_impl(&_mh_execute_header, v16, v40, "Removing record %{public}s for %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  (*(v10 + 8))(v15, v9);
  sub_10004F638(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath);
  (*(v5 + 16))(v8, a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v4);
  swift_beginAccess();
  sub_1000170D0(0, v8);
  swift_endAccess();
  return sub_100036A80();
}

uint64_t sub_10003E3E8()
{
  v1 = v0;
  v2 = type metadata accessor for Application();
  v3 = *(v2 - 8);
  v148 = v2;
  v149 = v3;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v140 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v152 = &v136 - v8;
  __chkstk_darwin(v7);
  v147 = &v136 - v9;
  v145 = type metadata accessor for SettingScope();
  v170 = *(v145 - 8);
  v10 = *(v170 + 64);
  __chkstk_darwin(v145);
  v144 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_10000637C(&qword_10007A468, &qword_100065C10);
  v169 = *(v162 - 8);
  v12 = *(v169 + 64);
  __chkstk_darwin(v162);
  v163 = &v136 - v13;
  v171 = type metadata accessor for URL.DirectoryHint();
  v14 = *(v171 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v171);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for URL();
  v164 = *(v18 - 8);
  v19 = v164[8];
  v20 = __chkstk_darwin(v18);
  v153 = (&v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v151 = (&v136 - v23);
  v24 = __chkstk_darwin(v22);
  v26 = &v136 - v25;
  __chkstk_darwin(v24);
  v139 = &v136 - v27;
  v156 = type metadata accessor for Logger();
  v28 = *(v156 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v156);
  v138 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v157 = &v136 - v33;
  v34 = __chkstk_darwin(v32);
  v146 = &v136 - v35;
  __chkstk_darwin(v34);
  v37 = &v136 - v36;
  [*(v1 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v167 = v1;
  if (v40)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "Persistence record migration: migrateDataFromLocalAppContainer start", v41, 2u);
    v1 = v167;
  }

  v154 = *(v28 + 8);
  v155 = v28 + 8;
  v154(v37, v156);
  v178 = &_swiftEmptyDictionarySingleton;
  v177 = &_swiftEmptySetSingleton;
  v42 = *(v1 + 88);
  sub_100008578((v1 + 56), *(v1 + 80));
  dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  v179 = 0xD000000000000014;
  v180 = 0x800000010006A2E0;
  v43 = v171;
  (*(v14 + 104))(v17, enum case for URL.DirectoryHint.notDirectory(_:), v171);
  sub_100011710();
  URL.appending<A>(path:directoryHint:)();
  (*(v14 + 8))(v17, v43);
  v44 = v164[1];
  v165 = (v164 + 1);
  v168 = v44;
  v44(v26, v18);
  v166 = sub_100005C64(_swiftEmptyArrayStorage);
  v176 = v166;
  v45 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v46 = String._bridgeToObjectiveC()();

  v47 = [v45 fileExistsAtPath:v46];

  if (v47)
  {
    v48 = sub_10004E260();
    v171 = 0;
    v49 = v151;
    v50 = v48;

    v176 = v50;
    v166 = v50;
  }

  else
  {
    v171 = 0;
    v49 = v151;
  }

  v51 = *(v1 + 88);
  sub_100008578((v1 + 56), *(v1 + 80));
  dispatch thunk of Locatable.effectiveSettingsPath.getter();
  v52 = sub_10004EF04();
  v168(v26, v18);
  v175 = v52;
  sub_100008578((v1 + 224), *(v1 + 248));
  v53 = sub_1000069C0();
  v54 = v53[2];
  v137 = v18;
  if (v54)
  {
    v162 = *(v162 + 48);
    v55 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v136 = v53;
    v56 = v53 + v55;
    v161 = *(v169 + 72);
    v159 = v164 + 2;
    *&v160 = v164 + 4;
    v143 = enum case for SettingScope.user(_:);
    v141 = (v170 + 8);
    v142 = (v170 + 104);
    *(&v57 + 1) = 2;
    v158 = xmmword_100066E60;
    *&v57 = 136446210;
    v150 = v57;
    do
    {
      v169 = v56;
      v170 = v54;
      v59 = v163;
      sub_100006754(v56, v163, &qword_10007A468, &qword_100065C10);
      v60 = *(v59 + 16);
      v187 = *v59;
      v188 = v60;
      v189 = *(v59 + 32);
      v61 = v164;
      (v164[4])(v49, v59 + v162, v18);
      sub_10000637C(&qword_10007B1F8, &qword_100066C28);
      v62 = v61[9];
      v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = v158;
      v65 = v61[2];
      v66 = v49;
      v65(v64 + v63, v49, v18);
      v67 = v171;
      v68 = sub_10003F668(&v187, v64, v166, &v178);
      v171 = v67;
      if (v67)
      {
        v194 = v187;
        sub_100020EA0(&v194);
        v195 = v188;
        sub_100020EA0(&v195);
        swift_setDeallocating();
        v69 = *(v64 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v70 = v157;
        static Logger.persistenceRecordStore.getter();
        v71 = v153;
        v65(v153, v49, v18);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = v71;
          v76 = swift_slowAlloc();
          v179 = v76;
          *v74 = v150;
          sub_10005459C(&qword_10007B860, &type metadata accessor for URL);
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          v168(v75, v18);
          v80 = sub_100001ED8(v77, v79, &v179);

          *(v74 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v72, v73, "Failed to migrate settings at path %{public}s", v74, 0xCu);
          sub_10000210C(v76);

          v154(v157, v156);
          v49 = v151;
          v168(v151, v18);
          v171 = 0;
        }

        else
        {

          v58 = v168;
          v168(v71, v18);
          v154(v70, v156);
          v58(v66, v18);
          v171 = 0;
          v49 = v66;
        }

        v81 = v170;
      }

      else
      {
        v82 = v68;
        swift_setDeallocating();
        v83 = *(v64 + 16);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (v82)
        {
          v85 = v144;
          v84 = v145;
          (*v142)(v144, v143, v145);
          sub_100035E30(v49, v189, v85);
          v190 = v187;
          sub_100020EA0(&v190);
          v191 = v188;
          sub_100020EA0(&v191);
          (*v141)(v85, v84);
          v168(v49, v18);
        }

        else
        {
          v168(v49, v18);
          v192 = v187;
          sub_100020EA0(&v192);
          v193 = v188;
          sub_100020EA0(&v193);
        }

        v81 = v170;
      }

      v56 = v161 + v169;
      v54 = v81 - 1;
    }

    while (v54);

    v52 = v175;
  }

  else
  {
  }

  v86 = sub_100040148(v52);

  v89 = 0;
  v90 = (v86 + 56);
  v91 = 1 << v86[32];
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v86 + 7);
  v94 = (v91 + 63) >> 6;
  v95 = v148;
  v170 = v149 + 16;
  v169 = v149 + 32;
  v161 = (v149 + 8);
  v157 = 0x8000000100069140;
  *&v88 = 136446210;
  v160 = v88;
  v153 = 0xD000000000000018;
  v96 = v140;
  v97 = v152;
  v162 = v94;
  v163 = v86 + 56;
  v164 = v86;
  if (v93)
  {
    goto LABEL_26;
  }

LABEL_27:
  while (1)
  {
    v99 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      break;
    }

    if (v99 >= v94)
    {

      v135 = v139;
      sub_1000506AC(&v176, &v178, v139, &v177, v167);
      v168(v135, v137);
    }

    v93 = *(v90 + 8 * v99);
    ++v89;
    if (v93)
    {
      while (1)
      {
        v100 = __clz(__rbit64(v93));
        v93 &= v93 - 1;
        v101 = v149;
        v102 = *(v149 + 16);
        v103 = v147;
        v102(v147, *(v86 + 6) + *(v149 + 72) * (v100 | (v99 << 6)), v95);
        (*(v101 + 32))(v97, v103, v95);
        v104 = Application.bundleIdentifier.getter();
        if (v105 && (v106 = v104, v107 = v105, sub_100008578((v167 + 224), *(v167 + 248)), sub_100007B60(v106, v107, &v179), , (v108 = v180) != 0))
        {
          v109 = v179;
          v111 = v181;
          v110 = v182;
          v185[0] = v179;
          v185[1] = v180;
          v185[2] = v181;
          v185[3] = v182;
          v186 = v183 & 1;
          v112 = v171;
          sub_10003F668(v185, v184, v166, &v178);
          v171 = v112;
          if (v112)
          {

            v113 = v138;
            static Logger.persistenceRecordStore.getter();

            v114 = Logger.logObject.getter();
            v115 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              LODWORD(v159) = v115;
              v117 = v116;
              v118 = swift_slowAlloc();
              *&v158 = v118;
              *v117 = v160;
              v172 = 0;
              v173 = 0xE000000000000000;
              v174 = v118;
              v151 = v114;
              _StringGuts.grow(_:)(37);

              v172 = v153;
              v173 = v157;
              v119._countAndFlagsBits = v109;
              v119._object = v108;
              String.append(_:)(v119);
              v120._countAndFlagsBits = 0x44496D616574202CLL;
              v120._object = 0xE900000000000020;
              String.append(_:)(v120);
              v121._countAndFlagsBits = v111;
              v121._object = v110;
              String.append(_:)(v121);

              v122 = sub_100001ED8(v172, v173, &v174);

              *(v117 + 4) = v122;
              v114 = v151;
              _os_log_impl(&_mh_execute_header, v151, v159, "Failed to migrate settings for %{public}s", v117, 0xCu);
              sub_10000210C(v158);
            }

            else
            {
            }

            v154(v113, v156);
            v97 = v152;
            v95 = v148;
            result = (*v161)(v152, v148);
            v171 = 0;
          }

          else
          {
            v134 = v152;
            v95 = v148;
            (*v161)(v152, v148);

            v97 = v134;
          }

          v89 = v99;
          v96 = v140;
          v90 = v163;
          v86 = v164;
          v94 = v162;
          if (!v93)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v123 = v146;
          static Logger.persistenceRecordStore.getter();
          v102(v96, v152, v95);
          v124 = Logger.logObject.getter();
          v125 = v96;
          v126 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v124, v126))
          {
            v127 = swift_slowAlloc();
            *&v158 = v127;
            v159 = swift_slowAlloc();
            v172 = v159;
            *v127 = v160;
            sub_10005459C(&qword_10007B878, &type metadata accessor for Application);
            v128 = dispatch thunk of CustomStringConvertible.description.getter();
            v130 = v129;
            v131 = *v161;
            (*v161)(v125, v148);
            v132 = sub_100001ED8(v128, v130, &v172);
            v95 = v148;

            v133 = v158;
            *(v158 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v124, v126, "Unable to retrieve settings for %{public}s", v133, 0xCu);
            sub_10000210C(v159);

            v154(v146, v156);
            v97 = v152;
            result = v131(v152, v95);
          }

          else
          {

            v98 = *v161;
            (*v161)(v125, v95);
            v154(v123, v156);
            v97 = v152;
            result = v98(v152, v95);
          }

          v89 = v99;
          v96 = v125;
          v94 = v162;
          v90 = v163;
          v86 = v164;
          if (!v93)
          {
            goto LABEL_27;
          }
        }

LABEL_26:
        v99 = v89;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003F668(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t *a4)
{
  v103 = a4;
  v112 = a3;
  v8 = type metadata accessor for Logger();
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v104 = &v93 - v14;
  __chkstk_darwin(v13);
  v97 = &v93 - v15;
  v96 = type metadata accessor for UUID();
  v95 = *(v96 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for ManagedSettingsStore.Name();
  v99 = *(v100 - 8);
  v18 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for SettingScope();
  v101 = *(v113 - 8);
  v20 = *(v101 + 64);
  __chkstk_darwin(v113);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v111 = *(v23 - 8);
  v24 = *(v111 + 64);
  __chkstk_darwin(v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10004F3B0(v27);

  swift_beginAccess();
  v102 = v4;
  v28 = *(v4 + 272);

  v29 = sub_10004F4F8(a1, v28);
  v30 = a1;

  if (v29 & 1) != 0 || (sub_10004F4F8(a1, v112))
  {
    static Logger.persistenceRecordStore.getter();
    v32 = *a1;
    v31 = *(v30 + 8);
    v34 = *(v30 + 16);
    v33 = *(v30 + 24);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v113 = v34;
      v38 = v37;
      v39 = swift_slowAlloc();
      v105 = v5;
      v40 = v39;
      v118 = v39;
      *v38 = 136446210;
      v115 = 0;
      v116 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v115 = 0xD000000000000018;
      v116 = 0x8000000100069140;
      v41._countAndFlagsBits = v32;
      v41._object = v31;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 0x44496D616574202CLL;
      v42._object = 0xE900000000000020;
      String.append(_:)(v42);
      v43._countAndFlagsBits = v113;
      v43._object = v33;
      String.append(_:)(v43);
      v44 = sub_100001ED8(v115, v116, &v118);

      *(v38 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "Already migrated files for %{public}s", v38, 0xCu);
      sub_10000210C(v40);
    }

    (*(v106 + 8))(v12, v107);
    goto LABEL_6;
  }

  v105 = v5;
  v47 = &_swiftEmptyDictionarySingleton;
  v118 = &_swiftEmptyDictionarySingleton;
  v48 = *(a2 + 16);
  if (v48)
  {
    v49 = v111 + 16;
    v112 = *(v111 + 16);
    v50 = a2 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
    v93 = a1;
    LODWORD(v111) = *(a1 + 32);
    v110 = *(v49 + 56);
    v109 = enum case for SettingScope.localContainer(_:);
    v108 = (v101 + 104);
    v51 = (v101 + 8);
    v52 = (v49 - 8);
    v53 = v113;
    do
    {
      v54 = v23;
      v55 = v23;
      v56 = v49;
      v112(v26, v50, v54);
      (*v108)(v22, v109, v53);
      sub_100035E08(v26, v111, v22);
      v53 = v113;
      (*v51)(v22, v113);
      (*v52)(v26, v55);
      v49 = v56;
      v23 = v55;
      v50 += v110;
      --v48;
    }

    while (v48);
    v47 = v118;
    v57 = v103;
    v30 = v93;
  }

  else
  {
    v57 = v103;
  }

  v58 = Dictionary<>.sanitize(isInternalClient:)(*(v30 + 32), v47);
  v59 = v30;
  v60 = v104;
  v61 = v105;
  if (!*(v58 + 16))
  {

    static Logger.persistenceRecordStore.getter();
    v63 = *v59;
    v64 = v59[1];
    v65 = v59[2];
    v66 = v59[3];

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v114 = v70;
      v115 = 0;
      *v69 = 136446210;
      v116 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v115 = 0xD000000000000018;
      v116 = 0x8000000100069140;
      v71._countAndFlagsBits = v63;
      v71._object = v64;
      String.append(_:)(v71);
      v72._countAndFlagsBits = 0x44496D616574202CLL;
      v72._object = 0xE900000000000020;
      String.append(_:)(v72);
      v73._countAndFlagsBits = v65;
      v73._object = v66;
      String.append(_:)(v73);
      v74 = sub_100001ED8(v115, v116, &v114);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "No settings to migrate for %{public}s", v69, 0xCu);
      sub_10000210C(v70);

      (*(v106 + 8))(v104, v107);
    }

    else
    {

      (*(v106 + 8))(v60, v107);
    }

LABEL_6:
    v45 = 0;
    return v45 & 1;
  }

  v62 = sub_100012400(v59, v102 + 152, v58);
  if (v61)
  {

    return v45 & 1;
  }

  if (!*(v58 + 16))
  {

    goto LABEL_23;
  }

  v75 = v59;
  v76 = v62;
  v77 = *(v62 + 16);

  if (!v77)
  {
LABEL_23:

    v45 = 1;
    return v45 & 1;
  }

  v78 = v98;
  static ManagedSettingsStore.Name.default.getter();
  v79 = ManagedSettingsStore.Name.rawValue.getter();
  v81 = v80;
  (*(v99 + 8))(v78, v100);
  v82 = sub_1000460C0(v75, 1);
  sub_10004FAC4(v82, v79, v81, v58, v76, &v117);

  v83 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
  swift_beginAccess();
  if (*(*(v82 + v83) + 16))
  {
    sub_100050310(v82);
    v84 = v95;
    v85 = v94;
    v86 = v96;
    (*(v95 + 16))(v94, v82 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v96);
    v87 = *v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = *v57;
    sub_10001BD04(v82, v85, isUniquelyReferenced_nonNull_native);
    (*(v84 + 8))(v85, v86);
    *v57 = v114;
    v45 = 1;
  }

  else
  {
    v89 = v97;
    static Logger.persistenceRecordStore.getter();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Removing newly created record during migration... This shouldn't be possible", v92, 2u);
    }

    else
    {
    }

    (*(v106 + 8))(v89, v107);
    v45 = 1;
  }

  return v45 & 1;
}

void *sub_100040148(uint64_t a1)
{
  v34 = type metadata accessor for Logger();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000637C(&qword_10007B598, &unk_100066F30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = a1;
  }

  else
  {
    v32 = v6;
    v33 = v7;
    v17 = v1[11];
    sub_100008578(v1 + 7, v1[10]);
    v6 = v32;
    v7 = v33;
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v16 = sub_10004EF04();
    (*(v12 + 8))(v15, v11);
  }

  static ManagedSettingsSettings.allowedClients.getter();
  v18 = SettingMetadata.name.getter();
  v20 = v35;
  if (*(v16 + 16))
  {
    v21 = sub_1000182E8(v18, v19);
    v23 = v22;

    if (v23)
    {
      v24 = *(*(v16 + 56) + 8 * v21);

      type metadata accessor for Application();
      sub_10005459C(&qword_10007ACE8, &type metadata accessor for Application);
      v25 = v24;
      v26 = static Set<>.value(from:)();

      v36 = v26;
      sub_10000637C(&qword_10007B880, &qword_100067058);
      sub_10000637C(&qword_10007ACA8, &unk_100067060);
      if (swift_dynamicCast())
      {
        v27 = v37;
        if (v37)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_11:
  static Logger.persistenceRecordStore.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "No allowed clients found", v30, 2u);
  }

  (*(v3 + 8))(v20, v34);
  v27 = &_swiftEmptySetSingleton;
LABEL_14:
  (*(v7 + 8))(v10, v6);
  return v27;
}

uint64_t sub_100040550()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  v80 = v2;
  v81 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v79 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v77 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v78 = &v63 - v12;
  __chkstk_darwin(v11);
  v14 = &v63 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v68 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  [*(v1 + 216) lock];
  static Logger.persistenceRecordStore.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Persistence record migration: migrateRecordDataFromEffectiveSettingsDirectory start", v24, 2u);
  }

  v25 = *(v16 + 8);
  v69 = (v16 + 8);
  v70 = v15;
  v67 = v25;
  v25(v21, v15);
  v87[0] = &_swiftEmptyDictionarySingleton;
  v86 = &_swiftEmptySetSingleton;
  v26 = *(v1 + 88);
  sub_100008578((v1 + 56), *(v1 + 80));
  v27 = v78;
  dispatch thunk of Locatable.effectiveSettingsDirectory.getter();
  v84 = 0xD000000000000014;
  v85 = 0x800000010006A2E0;
  v29 = v80;
  v28 = v81;
  v30 = *(v81 + 104);
  v31 = v79;
  v76 = enum case for URL.DirectoryHint.notDirectory(_:);
  v74 = v30;
  v75 = v81 + 104;
  v30(v79);
  v73 = sub_100011710();
  URL.appending<A>(path:directoryHint:)();
  v32 = *(v28 + 8);
  v81 = v28 + 8;
  v72 = v32;
  v32(v31, v29);
  v33 = *(v7 + 8);
  v33(v27, v6);
  v34 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v35 = String._bridgeToObjectiveC()();

  v36 = [v34 fileExistsAtPath:v35];

  if (v36)
  {
    v37 = v27;
    v38 = v77;
    (*(v7 + 16))(v77, v14, v6);
    sub_100049CB8(v37, v38);
    v33(v37, v6);
    v39 = sub_10004E260();
    v40 = v7 + 8;
    v69 = v14;
    v70 = v6;
    v71 = v1;
    v41 = v39 + 64;
    v42 = 1 << *(v39 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v39 + 64);
    v45 = (v42 + 63) >> 6;

    v47 = 0;
    v48 = result;
    v65 = v40;
    v66 = v33;
    v64 = result;
    while (v44)
    {
LABEL_14:
      v50 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v51 = *(*(v48 + 56) + ((v47 << 9) | (8 * v50)));
      v52 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      result = swift_beginAccess();
      if (*(*(v51 + v52) + 16))
      {
        v53 = v71[11];
        sub_100008578(v71 + 7, v71[10]);

        dispatch thunk of Locatable.persistenceRecordStoreDirectory.getter();
        v82 = UUID.uuidString.getter();
        v83 = v54;
        v56 = v79;
        v55 = v80;
        v74(v79, v76, v80);
        v57 = v78;
        URL.appending<A>(path:directoryHint:)();
        v58 = v56;
        v59 = v77;
        v72(v58, v55);

        v60 = v70;
        v66(v59, v70);
        sub_100040D28(v51, v57, v87);

        v61 = v57;
        v33 = v66;
        v62 = v60;
        v48 = v64;
        result = (v66)(v61, v62);
      }
    }

    while (1)
    {
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v49 >= v45)
      {
        v33(v69, v70);

        v1 = v71;
        goto LABEL_17;
      }

      v44 = *(v41 + 8 * v49);
      ++v47;
      if (v44)
      {
        v47 = v49;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v33(v14, v6);
LABEL_17:
    sub_10005194C(v1, v87, &v86);
  }

  return result;
}

uint64_t sub_100040D28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v93 = a3;
  v98 = a2;
  v5 = type metadata accessor for Logger();
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  v7 = __chkstk_darwin(v5);
  v94 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v87 - v9;
  v92 = type metadata accessor for UUID();
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v87 - v19;
  __chkstk_darwin(v18);
  v22 = &v87 - v21;
  v23 = *(v13 + 16);
  v23(&v87 - v21, a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath, v12);
  v23(v17, v22, v12);
  sub_100049CB8(v20, v17);
  v89 = v13;
  v24 = v13;
  v25 = a1;
  v27 = *(v24 + 8);
  v26 = (v24 + 8);
  v102 = v27;
  v103 = v12;
  v27(v20, v12);
  v28 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 16);
  v104 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
  v105 = v28;
  v106 = *(a1 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);
  v97 = *(&v104 + 1);
  v95 = v104;
  v96 = *(&v28 + 1);
  v29 = v28;
  swift_beginAccess();
  v30 = *(v3 + 272);

  v31 = sub_10004F4F8(&v104, v30);

  if (v31)
  {
    v32 = v29;
    static Logger.persistenceRecordStore.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v109 = v36;
      *v35 = 136446210;
      v107 = 0;
      v108 = 0xE000000000000000;
      v37 = v97;

      v38 = v96;

      _StringGuts.grow(_:)(37);

      v107 = 0xD000000000000018;
      v108 = 0x8000000100069140;
      v39._countAndFlagsBits = v95;
      v39._object = v37;
      String.append(_:)(v39);
      v40._countAndFlagsBits = 0x44496D616574202CLL;
      v40._object = 0xE900000000000020;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v32;
      v41._object = v38;
      String.append(_:)(v41);

      v42 = sub_100001ED8(v107, v108, &v109);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "Already migrated files for %{public}s", v35, 0xCu);
      sub_10000210C(v36);
    }

    (*(v99 + 8))(v101, v100);
    return v102(v22, v103);
  }

  else
  {
    v101 = v26;
    v44 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v45);
    v47 = v46;
    URL._bridgeToObjectiveC()(v48);
    v50 = v49;
    v107 = 0;
    v51 = [v44 moveItemAtURL:v47 toURL:v49 error:&v107];

    v52 = v107;
    v88 = v22;
    if (v51)
    {
      v53 = v91;
      v54 = *(v91 + 16);
      v99 = v91 + 16;
      v100 = v54;
      v55 = v90;
      v56 = v92;
      v54(v90, v25 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v92);
      v57 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      swift_beginAccess();
      v58 = *(v25 + v57);
      v59 = v103;
      v23(v20, v98, v103);
      v60 = type metadata accessor for PersistenceRecord();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      v63 = swift_allocObject();
      v64 = v56;
      (*(v53 + 32))(v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v55, v56);
      v65 = v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client;
      v66 = v105;
      *v65 = v104;
      *(v65 + 16) = v66;
      *(v65 + 32) = v106;
      *(v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory) = v58;
      (*(v89 + 32))(v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_containerPath, v20, v59);
      *(v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_version) = 1;
      v67 = v93;
      v68 = *v93;

      v69 = v52;

      v70 = sub_100051448(v68, v63);

      *v67 = v70;
      v100(v55, v63 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_recordIdentifier, v64);
      v71 = *v67;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *v67;
      sub_10001BD04(v63, v55, isUniquelyReferenced_nonNull_native);
      (*(v53 + 8))(v55, v64);
      *v67 = v109;
      v73 = v88;
      v74 = v59;
    }

    else
    {
      v75 = v107;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v76 = v94;
      static Logger.persistenceRecordStore.getter();

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v109 = v80;
        *v79 = 136446210;
        v107 = 0;
        v108 = 0xE000000000000000;
        v81 = v97;

        v82 = v96;

        _StringGuts.grow(_:)(37);

        v107 = 0xD000000000000018;
        v108 = 0x8000000100069140;
        v83._countAndFlagsBits = v95;
        v83._object = v81;
        String.append(_:)(v83);
        v84._countAndFlagsBits = 0x44496D616574202CLL;
        v84._object = 0xE900000000000020;
        String.append(_:)(v84);
        v85._countAndFlagsBits = v29;
        v85._object = v82;
        String.append(_:)(v85);

        v86 = sub_100001ED8(v107, v108, &v109);

        *(v79 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v77, v78, "Unable to move record data for %{public}s", v79, 0xCu);
        sub_10000210C(v80);
      }

      (*(v99 + 8))(v76, v100);
      v73 = v88;
      v74 = v103;
    }

    return v102(v73, v74);
  }
}

uint64_t sub_1000416E0()
{
  v34 = sub_10000637C(&qword_10007B810, "(N");
  v1 = *(*(v34 - 8) + 64);
  v2 = __chkstk_darwin(v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  swift_beginAccess();
  v6 = *(v0 + 272);
  v30 = _swiftEmptyArrayStorage;
  v37 = _swiftEmptyArrayStorage;
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v35 = v6;
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v31 = v11;
  v32 = v7;
LABEL_4:
  v14 = v13;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
    v13 = v14;
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v13 << 6);
    v17 = v35;
    v18 = *(v35 + 48);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v5, v18 + *(v20 + 72) * v16, v19);
    v21 = v34;
    *&v5[*(v34 + 48)] = *(*(v17 + 56) + 8 * v16);
    v22 = v5;
    v23 = v5;
    v24 = v33;
    sub_100006754(v22, v33, &qword_10007B810, "(N");
    LODWORD(v36) = *(*(v24 + *(v21 + 48)) + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32);

    v25 = *(v20 + 8);
    v25(v24, v19);
    if (v36)
    {
      v36 = v23;
      v26 = v33;
      sub_100008690(v23, v33, &qword_10007B810, "(N");
      v27 = *(v26 + *(v34 + 48));
      v25(v26, v19);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v36;
      v30 = v37;
      v11 = v31;
      v7 = v32;
      goto LABEL_4;
    }

    result = sub_100008630(v23, &qword_10007B810, "(N");
    v14 = v13;
    v5 = v23;
    v11 = v31;
    v7 = v32;
  }

  while (v10);
LABEL_6:
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v30;
    }

    v10 = *(v7 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100041A30(uint64_t a1)
{
  v51 = type metadata accessor for Application();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000637C(&qword_10007B810, "(N");
  v7 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v8 = a1;
  v10 = &v43 - v9;
  v11 = sub_100040148(v8);
  swift_beginAccess();
  v12 = *(v1 + 272);
  v44 = _swiftEmptyArrayStorage;
  v56 = v11;
  v57 = _swiftEmptyArrayStorage;
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = v11 + 56;
  v53 = v3 + 16;
  v54 = v3;
  v52 = (v3 + 8);
  v50 = v12;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  v47 = v17;
  v48 = v13;
  v55 = v6;
  v46 = v10;
  if (!v16)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v20 << 6);
    v24 = v50;
    v25 = *(v50 + 48);
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 16))(v10, v25 + *(*(v26 - 8) + 72) * v23, v26);
    v27 = *(*(v24 + 56) + 8 * v23);
    *&v10[*(v49 + 48)] = v27;
    v28 = (v27 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client);
    if (*(v27 + OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 32) != 1)
    {
      v29 = 1 << v56[32];
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & *(v56 + 7);
      v32 = (v29 + 63) >> 6;
      v45 = v27;

      v33 = 0;
      v34 = v51;
      while (v31)
      {
LABEL_21:
        v36 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v37 = v55;
        (*(v54 + 16))(v55, *(v56 + 6) + *(v54 + 72) * (v36 | (v33 << 6)), v34);
        v38 = Application.bundleIdentifier.getter();
        if (v39)
        {
          if (v38 == *v28 && v39 == v28[1])
          {

            (*v52)(v55, v51);
LABEL_33:

            v10 = v46;
            sub_100008630(v46, &qword_10007B810, "(N");
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v42 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v44 = v57;
            goto LABEL_30;
          }

          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v34 = v51;
          result = (*v52)(v55, v51);
          if (v41)
          {
            goto LABEL_33;
          }
        }

        else
        {
          result = (*v52)(v37, v34);
        }
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v32)
        {

          v10 = v46;
          goto LABEL_29;
        }

        v31 = *&v18[8 * v35];
        ++v33;
        if (v31)
        {
          v33 = v35;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_29:
    result = sub_100008630(v10, &qword_10007B810, "(N");
LABEL_30:
    v17 = v47;
    v13 = v48;
  }

  while (v16);
LABEL_5:
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v17)
    {

      return v44;
    }

    v16 = *(v13 + 8 * v21);
    ++v20;
    if (v16)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_100041ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v337 = a1;
  v375 = type metadata accessor for URL.DirectoryHint();
  v382 = *(v375 - 8);
  v4 = *(v382 + 64);
  __chkstk_darwin(v375);
  v374 = &v336 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = type metadata accessor for Logger();
  v388 = *(v384 - 8);
  v6 = *(v388 + 64);
  v7 = __chkstk_darwin(v384);
  v343 = &v336 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v336 - v10;
  v12 = __chkstk_darwin(v9);
  v363 = &v336 - v13;
  v14 = __chkstk_darwin(v12);
  v366 = &v336 - v15;
  v16 = __chkstk_darwin(v14);
  v391.super.isa = (&v336 - v17);
  v18 = __chkstk_darwin(v16);
  v391._urlString = (&v336 - v19);
  v20 = __chkstk_darwin(v18);
  v387 = &v336 - v21;
  v22 = __chkstk_darwin(v20);
  v367 = &v336 - v23;
  v24 = __chkstk_darwin(v22);
  v364 = &v336 - v25;
  v26 = __chkstk_darwin(v24);
  v355 = &v336 - v27;
  v28 = __chkstk_darwin(v26);
  v354 = &v336 - v29;
  v30 = __chkstk_darwin(v28);
  v390 = &v336 - v31;
  v32 = __chkstk_darwin(v30);
  v386 = (&v336 - v33);
  v34 = __chkstk_darwin(v32);
  v389 = &v336 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v336 - v37;
  __chkstk_darwin(v36);
  v40 = &v336 - v39;
  v41 = type metadata accessor for URL();
  v344 = *(v41 - 8);
  v42 = *(v344 + 64);
  v43 = __chkstk_darwin(v41);
  v358 = &v336 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __chkstk_darwin(v43);
  v357 = &v336 - v46;
  v47 = __chkstk_darwin(v45);
  v376 = &v336 - v48;
  v49 = __chkstk_darwin(v47);
  v342 = &v336 - v50;
  v51 = __chkstk_darwin(v49);
  v349 = &v336 - v52;
  v53 = __chkstk_darwin(v51);
  v385 = &v336 - v54;
  v55 = __chkstk_darwin(v53);
  v383 = &v336 - v56;
  v57 = __chkstk_darwin(v55);
  v380 = &v336 - v58;
  v59 = __chkstk_darwin(v57);
  v378 = (&v336 - v60);
  v61 = __chkstk_darwin(v59);
  v379 = &v336 - v62;
  v63 = __chkstk_darwin(v61);
  v368 = &v336 - v64;
  v65 = __chkstk_darwin(v63);
  v373 = (&v336 - v66);
  __chkstk_darwin(v65);
  v68 = &v336 - v67;
  [*(v1 + 216) lock];
  v69 = *(v1 + 80);
  v70 = *(v1 + 88);
  v345 = v1;
  sub_100008578((v1 + 56), v69);
  dispatch thunk of Locatable.diagnosticsDirectory.getter();
  v71 = [objc_opt_self() defaultManager];
  v359 = v68;
  URL.path.getter();
  v72 = String._bridgeToObjectiveC()();

  v339 = v71;
  v73 = [v71 fileExistsAtPath:v72];

  v377 = v41;
  v74 = v11;
  v369 = v11;
  if (v73)
  {
    static Logger.persistenceRecordStore.getter();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Diagnostics directory already exist. Deleting old data...", v77, 2u);
    }

    v78 = *(v388 + 8);
    v78(v40, v384);
    URL._bridgeToObjectiveC()(&v391);
    v80 = v79;
    v394 = 0;
    v81 = [v339 removeItemAtURL:v79 error:&v394];

    if (v81)
    {
      v82 = v394;
    }

    else
    {
      v83 = v394;
      v84 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v3 = 0;
      v85 = v387;
      static Logger.persistenceRecordStore.getter();
      swift_errorRetain();
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();

      LODWORD(v381) = v87;
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v371 = 0;
        v372 = v78;
        v89 = v88;
        v90 = swift_slowAlloc();
        v394 = v90;
        *v89 = 136446210;
        v396 = v84;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v91 = String.init<A>(describing:)();
        v93 = sub_100001ED8(v91, v92, &v394);

        *(v89 + 4) = v93;
        v74 = v369;
        _os_log_impl(&_mh_execute_header, v86, v381, "Failed to delete old diagnostics directory. Error: %{public}s", v89, 0xCu);
        sub_10000210C(v90);

        v3 = v371;

        v372(v387, v384);
      }

      else
      {

        v78(v85, v384);
      }
    }
  }

  static Logger.persistenceRecordStore.getter();
  v94 = Logger.logObject.getter();
  v95 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v94, v95, "Creating new diagnostics directory...", v96, 2u);
  }

  v97 = *(v388 + 8);
  v98 = v38;
  v99 = v384;
  v388 += 8;
  v387 = v97;
  (v97)(v98, v384);
  v100 = type metadata accessor for Persistence();
  static Persistence.createDirectory(at:)();
  v101 = v377;
  if (!v3)
  {
    v365 = v100;
    v112 = v389;
    static Logger.persistenceRecordStore.getter();
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "Copying effective settings...", v115, 2u);
      v99 = v384;
    }

    (v387)(v112, v99);
    v394 = 0xD000000000000017;
    v395 = 0x800000010006A2C0;
    v116 = v382;
    v117 = *(v382 + 104);
    v118 = v374;
    v353 = enum case for URL.DirectoryHint.notDirectory(_:);
    v119 = v375;
    v381 = v117;
    v372 = (v382 + 104);
    (v117)(v374);
    v120 = sub_100011710();
    v121 = v373;
    v371 = v120;
    URL.appending<A>(path:directoryHint:)();
    v370 = *(v116 + 8);
    v370(v118, v119);
    v122 = *(v345 + 88);
    sub_100008578((v345 + 56), *(v345 + 80));
    v123 = v368;
    dispatch thunk of Locatable.effectiveSettingsPath.getter();
    v124 = static Persistence.readRawSettings(from:)();
    v382 = v116 + 8;
    v126 = v74;
    v127 = *(v344 + 8);
    v128 = v124;
    v127(v123, v101);
    v129 = Dictionary<>.filterSensitiveInformation()(v128);

    sub_100053E9C(v129, v121, &static Persistence.writeRawSettings(_:to:));
    v389 = v127;
    v127(v121, v101);

    v130 = v126;
    v131 = v386;
    static Logger.persistenceRecordStore.getter();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();
    v134 = os_log_type_enabled(v132, v133);
    v135 = v378;
    if (v134)
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Copying setting records...", v136, 2u);
    }

    (v387)(v131, v384);
    v394 = 0xD000000000000014;
    v395 = 0x800000010006A2E0;
    v137 = v374;
    v138 = v375;
    v381(v374, v353, v375);
    v139 = v379;
    URL.appending<A>(path:directoryHint:)();
    v370(v137, v138);
    v140 = *(v345 + 88);
    sub_100008578((v345 + 56), *(v345 + 80));
    dispatch thunk of Locatable.persistenceRecordStorePath.getter();
    v141 = sub_10004E260();
    v142 = v135;
    v143 = v130;
    v144 = v389;
    (v389)(v142, v101);
    sub_10004E694(v141, v139);
    v391._urlString = 0;
    v144(v139, v101);

    v173 = v143;
    v145 = v380;
    v146 = v390;
    static Logger.persistenceRecordStore.getter();
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.default.getter();
    v149 = os_log_type_enabled(v147, v148);
    v150 = v383;
    if (v149)
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&_mh_execute_header, v147, v148, "Copying data version...", v151, 2u);
    }

    (v387)(v146, v384);
    v394 = 0xD000000000000011;
    v395 = 0x800000010006A300;
    v152 = v374;
    v153 = v375;
    v381(v374, v353, v375);
    URL.appending<A>(path:directoryHint:)();
    v370(v152, v153);
    v154 = *(v345 + 88);
    sub_100008578((v345 + 56), *(v345 + 80));
    dispatch thunk of Locatable.dataVersionPath.getter();
    urlString = v391._urlString;
    static Persistence.dataVersion(from:)();
    p_isa = urlString;
    if (urlString)
    {
      v158 = v389;
      (v389)(v150, v101);
      v386 = 0;
LABEL_25:
      v389 = v158;
      (v158)(v145, v101);
      v159 = v363;
      static Logger.persistenceRecordStore.getter();
      swift_errorRetain();
      v160 = Logger.logObject.getter();
      v161 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v394 = v163;
        *v162 = 136446210;
        v396 = p_isa;
        swift_errorRetain();
        sub_10000637C(&qword_10007A380, &qword_100065BE0);
        v164 = String.init<A>(describing:)();
        v166 = sub_100001ED8(v164, v165, &v394);
        v173 = v369;

        *(v162 + 4) = v166;
        v101 = v377;
        v167 = v161;
        v168 = v384;
        _os_log_impl(&_mh_execute_header, v160, v167, "Failed to copy data version. Error: %{public}s", v162, 0xCu);
        sub_10000210C(v163);

        v169 = v159;
        v170 = v168;
      }

      else
      {

        v169 = v159;
        v170 = v384;
      }

      (v387)(v169, v170);
LABEL_34:
      v174 = v345;
      swift_beginAccess();
      v176 = *(v174 + 272);
      v177 = *(v176 + 16);
      if (v177)
      {
        v178 = sub_100047A28(*(v176 + 16), 0);
        v179 = sub_10004DCDC(&v394, (v178 + 32), v177, v176);

        sub_100003AB8();
        if (v179 != v177)
        {
          __break(1u);
        }

        v173 = v369;
        v101 = v377;
        v180 = v178;
        if (v178 < 0)
        {
          goto LABEL_133;
        }
      }

      else
      {
        v180 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_133;
        }
      }

      if ((v180 & 0x4000000000000000) != 0)
      {
        goto LABEL_133;
      }

      v181 = *(v180 + 16);
      if (!v181)
      {
LABEL_134:

        (*(v344 + 32))(v337, v359, v101);
        return [*(v345 + 216) unlock];
      }

LABEL_41:
      v182 = 0;
      v352 = v180 & 0xC000000000000001;
      v341 = v180 + 32;
      LODWORD(v368) = enum case for URL.DirectoryHint.isDirectory(_:);
      v379 = (v344 + 8);
      v340 = 0x800000010006A320;
      v346 = 0x8000000100069320;
      *&v175 = 136446210;
      v347 = v175;
      *&v175 = 136446466;
      v356 = v175;
      *&v175 = 136446722;
      v348 = v175;
      v338 = xmmword_100065C80;
      v351 = v180;
      v350 = v181;
      while (1)
      {
        if (v352)
        {
          v184 = v182;
          v390 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v185 = v182 + 1;
          if (__OFADD__(v184, 1))
          {
            goto LABEL_129;
          }
        }

        else
        {
          if (v182 >= *(v180 + 16))
          {
            goto LABEL_132;
          }

          v390 = *(v341 + 8 * v182);

          v186 = __OFADD__(v182, 1);
          v185 = v182 + 1;
          if (v186)
          {
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            v181 = _CocoaArrayWrapper.endIndex.getter();
            if (!v181)
            {
              goto LABEL_134;
            }

            goto LABEL_41;
          }
        }

        v363 = v185;
        v187 = *&v390[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client + 8];
        isa = *&v390[OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_client];
        v188 = isa;
        v393 = v187;
        v189 = v374;
        v190 = v375;
        v381(v374, v368, v375);

        URL.appending<A>(path:directoryHint:)();
        v370(v189, v190);
        v191 = v354;
        static Logger.persistenceRecordStore.getter();

        v192 = Logger.logObject.getter();
        v193 = static os_log_type_t.default.getter();

        v194 = os_log_type_enabled(v192, v193);
        v378 = v188;
        if (v194)
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          isa = v196;
          *v195 = v347;
          *(v195 + 4) = sub_100001ED8(v188, v187, &isa);
          _os_log_impl(&_mh_execute_header, v192, v193, "Creating new diagnostics directory for “%{public}s”...", v195, 0xCu);
          sub_10000210C(v196);
        }

        v197 = v384;
        (v387)(v191, v384);
        v198 = v355;
        v199 = v386;
        static Persistence.createDirectory(at:)();
        if (!v199)
        {
          break;
        }

        v386 = 0;
        static Logger.persistenceRecordStore.getter();

        swift_errorRetain();
        v200 = Logger.logObject.getter();
        v201 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v202 = v356;
          v203 = v101;
          v204 = sub_100001ED8(v378, v187, &isa);

          *(v202 + 4) = v204;
          *(v202 + 12) = 2082;
          v391._baseURL = v199;
          swift_errorRetain();
          sub_10000637C(&qword_10007A380, &qword_100065BE0);
          v205 = String.init<A>(describing:)();
          v207 = sub_100001ED8(v205, v206, &isa);
          v208 = v389;

          *(v202 + 14) = v207;
          v101 = v203;
          v209 = v384;
          _os_log_impl(&_mh_execute_header, v200, v201, "Failed to create diagnostics directory for “%{public}s.” Error: %{public}s", v202, 0x16u);
          swift_arrayDestroy();

          v173 = v369;

          (v387)(v173, v209);
          v208(v385, v101);
        }

        else
        {

          (v387)(v173, v197);
          (v389)(v385, v101);
        }

LABEL_43:
        v182 = v363;
        v180 = v351;
        if (v363 == v350)
        {
          goto LABEL_134;
        }
      }

      static Logger.persistenceRecordStore.getter();

      v210 = Logger.logObject.getter();
      v211 = static os_log_type_t.default.getter();

      v212 = os_log_type_enabled(v210, v211);
      v380 = v187;
      v391._urlString = 0;
      if (v212)
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        isa = v214;
        *v213 = v347;
        *(v213 + 4) = sub_100001ED8(v378, v187, &isa);
        _os_log_impl(&_mh_execute_header, v210, v211, "Copying effective settings for container “%{public}s” ...", v213, 0xCu);
        sub_10000210C(v214);
      }

      (v387)(v198, v197);
      v391.super.isa = 0xD00000000000001DLL;
      v215 = v340;
      isa = 0xD00000000000001DLL;
      v393 = v340;
      v216 = v374;
      v217 = v353;
      v218 = v375;
      v219 = v381;
      v381(v374, v353, v375);
      URL.appending<A>(path:directoryHint:)();
      v220 = v370;
      v370(v216, v218);
      isa = v391.super.isa;
      v393 = v215;
      v219(v216, v217, v218);
      v221 = v342;
      URL.appending<A>(path:directoryHint:)();
      v220(v216, v218);
      v222 = v391._urlString;
      v223 = static Persistence.readRawSettings(from:)();
      if (v222)
      {
        v224 = v377;
        v225 = v389;
        (v389)(v221, v377);
        v226 = v225;
        (v225)(v349, v224);
        v386 = 0;
        v227 = v343;
        v233 = v378;
        static Logger.persistenceRecordStore.getter();
        v234 = v380;

        swift_errorRetain();
        v235 = Logger.logObject.getter();
        v236 = static os_log_type_t.error.getter();

        v237 = os_log_type_enabled(v235, v236);
        v173 = v369;
        if (v237)
        {
          v238 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v238 = v356;
          *(v238 + 4) = sub_100001ED8(v233, v234, &isa);
          *(v238 + 12) = 2082;
          v391._baseURL = v222;
          swift_errorRetain();
          sub_10000637C(&qword_10007A380, &qword_100065BE0);
          v239 = String.init<A>(describing:)();
          v241 = sub_100001ED8(v239, v240, &isa);
          v242 = v384;

          *(v238 + 14) = v241;
          v243 = v236;
          v335 = v242;
          _os_log_impl(&_mh_execute_header, v235, v243, "Failed to copy effective settings for “%{public}s.” Error: %{public}s", v238, 0x16u);
          swift_arrayDestroy();
          v173 = v369;

          v244 = v227;
          v245 = v242;
        }

        else
        {

          v244 = v227;
          v335 = v384;
          v245 = v384;
        }

        (v387)(v244, v245);
        v101 = v226;
      }

      else
      {
        v228 = v223;
        v229 = v377;
        v230 = v389;
        (v389)(v221, v377);
        v231 = Dictionary<>.filterSensitiveInformation()(v228);

        v232 = v349;
        sub_100053E9C(v231, v349, &static Persistence.writeRawSettings(_:to:));
        v386 = 0;
        (v230)(v232, v229);

        v101 = v230;
        v173 = v369;
        v335 = v384;
      }

      v246 = OBJC_IVAR____TtC20ManagedSettingsAgent17PersistenceRecord_storeDirectory;
      v247 = v390;
      swift_beginAccess();
      v362 = v246;
      v248 = *&v247[v246];
      v249 = v248 + 64;
      v250 = 1 << v248[32];
      if (v250 < 64)
      {
        v251 = ~(-1 << v250);
      }

      else
      {
        v251 = -1;
      }

      v252 = v251 & *(v248 + 8);
      v180 = (v250 + 63) >> 6;
      v366 = v248;

      v253 = 0;
      v254 = v364;
      v255 = v380;
      v361 = v249;
      for (i = v180; ; v180 = i)
      {
        v256 = v253;
        v389 = v101;
        if (!v252)
        {
          while (1)
          {
            v253 = v256 + 1;
            if (__OFADD__(v256, 1))
            {
              break;
            }

            if (v253 >= v180)
            {
              v183 = v101;
              v101 = v377;
              v183(v385, v377);

              goto LABEL_43;
            }

            v252 = *&v249[8 * v253];
            ++v256;
            if (v252)
            {
              v257 = v255;
              v258 = v335;
              goto LABEL_75;
            }
          }

          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        v257 = v255;
        v258 = v335;
LABEL_75:
        v383 = v252;
        v259 = __clz(__rbit64(v252)) | (v253 << 6);
        v260 = *(v366 + 7);
        v261 = *(v366 + 6) + 16 * v259;
        v262 = *(v261 + 8);
        v391.super.isa = *v261;
        v263 = v260 + 32 * v259;
        v264 = *(v263 + 8);
        v373 = *v263;

        static Logger.persistenceRecordStore.getter();

        v265 = v254;
        v266 = Logger.logObject.getter();
        v267 = static os_log_type_t.default.getter();
        v391._urlString = v262;

        if (os_log_type_enabled(v266, v267))
        {
          v268 = swift_slowAlloc();
          isa = swift_slowAlloc();
          *v268 = v356;
          *(v268 + 4) = sub_100001ED8(v378, v257, &isa);
          *(v268 + 12) = 2082;
          *(v268 + 14) = sub_100001ED8(v391.super.isa, v391._urlString, &isa);
          _os_log_impl(&_mh_execute_header, v266, v267, "Copying data for container “%{public}s” and name “%{public}s”...", v268, 0x16u);
          swift_arrayDestroy();

          v269 = v265;
          v270 = v384;
        }

        else
        {

          v269 = v265;
          v270 = v258;
        }

        (v387)(v269, v270);
        isa = v373;
        v393 = v264;
        v271._countAndFlagsBits = 0x7473696C702ELL;
        v271._object = 0xE600000000000000;
        String.append(_:)(v271);
        v272 = v374;
        v273 = v375;
        v381(v374, v368, v375);
        URL.appending<A>(path:directoryHint:)();
        v274 = v370;
        v370(v272, v273);

        v275 = v358;
        v276 = v386;
        sub_10000F5A4(v391.super.isa, v391._urlString, v358);
        v277 = v357;
        if (v276)
        {
          break;
        }

        isa = 0xD000000000000011;
        v393 = v346;
        v386 = 0;
        v381(v272, v353, v273);
        URL.appending<A>(path:directoryHint:)();
        v274(v272, v273);
        v278 = v377;
        v279 = v389;
        (v389)(v275, v377);
        v280 = v386;
        v281 = static Persistence.readRawSettings(from:)();
        if (v280)
        {

          v279(v277, v278);
          goto LABEL_82;
        }

        v298 = v281;
        v279(v277, v278);
        v173 = v376;
        v255 = v380;
        if (v298)
        {
          v180 = Dictionary<>.filterSensitiveInformation()(v298);
        }

        else
        {
          v180 = &_swiftEmptyDictionarySingleton;
        }

LABEL_83:
        v282 = *&v390[v362];
        if (*(v282 + 16))
        {
          v283 = *&v390[v362];

          v284 = sub_1000182E8(v391.super.isa, v391._urlString);
          if (v285)
          {
            v286 = *(v282 + 56) + 32 * v284;
            v287 = *(v286 + 8);
            v288 = *(v286 + 24);
            v289 = *(v286 + 25);

            v290 = Bool.persistableValue()();
            if (v290)
            {
              v291 = v290;
              v292 = Bool.persistableValue()();
              if (v292)
              {
                v293 = v292;
                sub_10000637C(&qword_10007A490, &qword_100065D50);
                inited = swift_initStackObject();
                *(inited + 16) = v338;
                *(inited + 32) = static ManagedSettingsStore.PropertyKeys.active.getter();
                *(inited + 40) = v295;
                *(inited + 48) = v291;
                v386 = v291;
                *(inited + 56) = static ManagedSettingsStore.PropertyKeys.syncToWatch.getter();
                *(inited + 64) = v296;
                *(inited + 72) = v293;
                v297 = v293;
                sub_100006278(inited);
                swift_setDeallocating();
                sub_10000637C(&qword_10007A498, &qword_100065D58);
                v255 = v380;
                swift_arrayDestroy();

LABEL_98:

                goto LABEL_99;
              }
            }

            if (qword_10007A210 != -1)
            {
              swift_once();
            }

            goto LABEL_98;
          }
        }

        if (qword_10007A210 != -1)
        {
          swift_once();
        }

LABEL_99:
        sub_100006820(0, &qword_10007A4A0, NSObject_ptr);
        v299 = Dictionary._bridgeToObjectiveC()().super.isa;

        v101 = v299;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        isa = v180;
        v301 = sub_1000182E8(0x69747265706F7250, 0xEA00000000007365);
        v303 = *(v180 + 16);
        v304 = (v302 & 1) == 0;
        v186 = __OFADD__(v303, v304);
        v305 = v303 + v304;
        if (v186)
        {
          goto LABEL_128;
        }

        v306 = v302;
        if (*(v180 + 24) >= v305)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v333 = v301;
            sub_10001DD34();
            v301 = v333;
          }
        }

        else
        {
          sub_10001B190(v305, isUniquelyReferenced_nonNull_native);
          v301 = sub_1000182E8(0x69747265706F7250, 0xEA00000000007365);
          if ((v306 & 1) != (v307 & 1))
          {
            goto LABEL_136;
          }
        }

        v180 = v391.super.isa;
        v308 = isa;
        if (v306)
        {
          v309 = isa[7];
          v310 = *(v309 + 8 * v301);
          *(v309 + 8 * v301) = v101;
        }

        else
        {
          isa[(v301 >> 6) + 8] |= 1 << v301;
          v311 = (v308[6] + 16 * v301);
          *v311 = 0x69747265706F7250;
          v311[1] = 0xEA00000000007365;
          *(v308[7] + 8 * v301) = v101;
          v312 = v308[2];
          v186 = __OFADD__(v312, 1);
          v313 = v312 + 1;
          if (v186)
          {
            goto LABEL_131;
          }

          v308[2] = v313;
        }

        v314 = String.persistableValue()();
        if (v314)
        {
          v180 = v314;
          v386 = v101;
          v101 = v255;
          v315 = v173;
          v173 = 0;
          v316 = swift_isUniquelyReferenced_nonNull_native();
          isa = v308;
          v318 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
          v319 = v308[2];
          v320 = (v317 & 1) == 0;
          v321 = v319 + v320;
          if (__OFADD__(v319, v320))
          {
            goto LABEL_130;
          }

          v322 = v317;
          if (v308[3] >= v321)
          {
            if ((v316 & 1) == 0)
            {
              sub_10001DD34();
            }
          }

          else
          {
            sub_10001B190(v321, v316);
            v323 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
            if ((v322 & 1) != (v324 & 1))
            {
LABEL_136:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v318 = v323;
          }

          v308 = isa;
          v173 = v315;
          if (v322)
          {
            v331 = isa[7];
            v332 = *(v331 + 8 * v318);
            *(v331 + 8 * v318) = v180;
          }

          else
          {
            sub_10001D074(v318, 0x6D614E65726F7453, 0xE900000000000065, v180, isa);
          }

          v329 = v383;
          v255 = v101;
          v101 = v386;
        }

        else
        {
          v325 = sub_1000182E8(0x6D614E65726F7453, 0xE900000000000065);
          if (v326)
          {
            v327 = v325;
            v328 = swift_isUniquelyReferenced_nonNull_native();
            isa = v308;
            v329 = v383;
            if (!v328)
            {
              sub_10001DD34();
              v308 = isa;
            }

            v330 = *(v308[6] + 16 * v327 + 8);

            sub_100048874(v327, v308);
          }

          else
          {
            v329 = v383;
          }
        }

        v252 = (v329 - 1) & v329;
        sub_100053E9C(v308, v173, &static Persistence.writeRawSettings(_:to:));
        v386 = 0;
        v334 = v389;
        (v389)(v173, v377);

        v101 = v334;
        v335 = v384;
        v173 = v369;
        v254 = v364;
        v249 = v361;
      }

LABEL_82:
      v180 = &_swiftEmptyDictionarySingleton;
      v173 = v376;
      v255 = v380;
      goto LABEL_83;
    }

    v386 = 0;
    v171 = v156;
    (v389)(v150, v101);
    if ((v171 & 1) == 0)
    {
      v172 = v386;
      static Persistence.write(dataVersion:to:)();
      if (v172)
      {
        p_isa = &v172->super.isa;
        v386 = 0;
        v158 = v389;
        goto LABEL_25;
      }

      v386 = 0;
    }

    (v389)(v145, v101);
    goto LABEL_34;
  }

  v102 = v391._urlString;
  static Logger.persistenceRecordStore.getter();
  swift_errorRetain();
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v394 = v106;
    *v105 = 136446210;
    v396 = v3;
    swift_errorRetain();
    sub_10000637C(&qword_10007A380, &qword_100065BE0);
    v107 = String.init<A>(describing:)();
    v109 = sub_100001ED8(v107, v108, &v394);

    *(v105 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v103, v104, "Failed to create new diagnostics directory. Error: %{public}s", v105, 0xCu);
    sub_10000210C(v106);

    v110 = v102;
    v111 = v384;
  }

  else
  {

    v110 = v102;
    v111 = v99;
  }

  (v387)(v110, v111);
  swift_willThrow();

  (*(v344 + 8))(v359, v101);
  return [*(v345 + 216) unlock];
}