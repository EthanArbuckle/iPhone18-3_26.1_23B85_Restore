uint64_t sub_100001C98()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, qword_100022B18);
  v1 = sub_100005F58(v0, qword_100022B18);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = sub_100005F58(v0, static AISLogger.uiService);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100001E70(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v89 = v4;
  ObjectType = swift_getObjectType();
  v8 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = (&v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = (&v81 - v14);
  v16 = __chkstk_darwin(v13);
  v18 = &v81 - v17;
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  v21 = type metadata accessor for PresentationRequest();
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v86 = &v81 - v28;
  __chkstk_darwin(v27);
  v87 = &v81 - v29;
  if (!a1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v30 = [a1 userInfo];
  v90 = a3;
  if (!v30)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005F58(v40, static AISLogger.uiService);
    v21 = a1;
    v41 = Logger.logObject.getter();
    v20 = a1;
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v96[0] = v44;
      *v43 = 136315394;
      v45 = _typeName(_:qualified:)();
      v22 = sub_10000FA60(v45, v46, v96);

      *(v43 + 4) = v22;
      *(v43 + 12) = 2112;
      *(v43 + 14) = v21;
      *v15 = v20;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v41, v42, "%s Could not find configuration context on remote alert: %@", v43, 0x16u);
      sub_100006CEC(v15, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v44);
    }

    if (a2)
    {
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = a1;
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000101D4(&_swiftEmptyArrayStorage);
    v32 = v80;
  }

  else
  {
    v32 = &_swiftEmptySetSingleton;
  }

  v84 = [objc_opt_self() sharedInstance];
  if (!v84)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = type metadata accessor for FeatureManager();
  v34 = static FeatureManager.shared.getter();
  v96[3] = v33;
  v96[4] = &protocol witness table for FeatureManager;
  v96[0] = v34;
  v92 = 0x656369766564;
  v93 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v35 = v91;
  if (*(v91 + 16) && (v36 = sub_1000100C8(v94), v35 = v91, (v37 & 1) != 0))
  {
    sub_100006868(*(v91 + 56) + 32 * v36, v95);
    sub_100006764(v94);
    sub_1000061F4(&qword_100022D10, &qword_1000130D8);
    if (swift_dynamicCast())
    {

      v38 = v84;
      sub_100008B08(v92, v84, v96, v18);

      goto LABEL_27;
    }

    v82 = v18;
    v83 = a2;
  }

  else
  {
    v82 = v18;
    v83 = a2;
    sub_100006764(v94);
  }

  sub_10000994C(v35, v15);
  v39 = *(v22 + 48);
  if (v39(v15, 1, v21) == 1)
  {
    sub_100006CEC(v15, &unk_100022CF0, &qword_1000130C8);
    sub_10000A458(v35, v32, v12);

    if (v39(v12, 1, v21) == 1)
    {
      sub_100006CEC(v12, &unk_100022CF0, &qword_1000130C8);
      v18 = v82;
      (*(v22 + 56))(v82, 1, 1, v21);
    }

    else
    {
      sub_100006628(v12, v26);
      v18 = v82;
      sub_100006628(v26, v82);
      (*(v22 + 56))(v18, 0, 1, v21);
    }

    a2 = v83;
    goto LABEL_27;
  }

LABEL_20:

  v48 = v15;
  v49 = v86;
  sub_100006628(v48, v86);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_100005F58(v50, static AISLogger.uiService);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  a2 = v83;
  v18 = v82;
  if (v53)
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Attempting to create a new presentation request launched for sharing", v54, 2u);
  }

  sub_100006628(v49, v18);
  (*(v22 + 56))(v18, 0, 1, v21);
LABEL_27:
  v55 = v85;
  sub_1000067B8(v96);
  v56 = v89;
  sub_100002978(v18, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {

    v68 = v87;
    sub_100006628(v20, v87);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100005F58(v69, static AISLogger.uiService);
    v70 = v56;
    v71 = v55;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = v55;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412546;
      *(v75 + 4) = v70;
      *(v75 + 12) = 2112;
      *(v75 + 14) = v71;
      *v76 = v70;
      v76[1] = v74;
      v77 = v70;
      v78 = v71;
      _os_log_impl(&_mh_execute_header, v72, v73, "Configuring remote alert (%@) with context: %@", v75, 0x16u);
      sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
      swift_arrayDestroy();
    }

    v79 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
    swift_beginAccess();
    sub_100006804(v68, v70 + v79);
    swift_endAccess();
    if (a2)
    {
      goto LABEL_40;
    }

    goto LABEL_46;
  }

  sub_100006CEC(v20, &unk_100022CF0, &qword_1000130C8);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v57 = type metadata accessor for Logger();
  sub_100005F58(v57, static AISLogger.uiService);

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v96[0] = swift_slowAlloc();
    *v60 = 136315394;
    v61 = _typeName(_:qualified:)();
    v63 = sub_10000FA60(v61, v62, v96);

    *(v60 + 4) = v63;
    *(v60 + 12) = 2080;
    v64 = Dictionary.description.getter();
    v66 = v65;

    v67 = sub_10000FA60(v64, v66, v96);

    *(v60 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v58, v59, "%s Unable to build presentation request with user info: %s", v60, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a2)
  {
LABEL_40:
    a2();
    return;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_100002978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(sub_1000061F4(&qword_100022D18, &qword_1000130E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v35 - v5;
  v7 = type metadata accessor for ViewServiceConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PresentationRequest();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11))
  {
    goto LABEL_2;
  }

  v36 = a2;
  sub_1000065C4(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v25 = &unk_100013270;
    v24 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_10000624C(v15);
      a2 = v36;
LABEL_2:
      if (qword_100022B30 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100005F58(v16, static AISLogger.uiService);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "No override action for this request, continuing", v19, 2u);
      }

      return sub_1000068C4(a1, a2);
    }

    v22 = *(v8 + 32);
    v22(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v7);
    v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v24 = swift_allocObject();
    v22((v24 + v23), v10, v7);
    v25 = &unk_1000130F8;
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  type metadata accessor for MainActor();

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v25;
  v28[5] = v24;
  sub_100004240(0, 0, v6, &unk_1000130F0, v28);

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100005F58(v29, static AISLogger.uiService);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  v32 = os_log_type_enabled(v30, v31);
  v33 = v36;
  if (v32)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Returning nil request due to override action being returned", v34, 2u);
  }

  (*(v12 + 56))(v33, 1, 1, v11);
  return sub_100006CEC(a1, &unk_100022CF0, &qword_1000130C8);
}

void sub_100002F20(void *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v90 - v13;
  v15 = __chkstk_darwin(v12);
  v95 = v90 - v16;
  __chkstk_darwin(v15);
  v18 = v90 - v17;
  v19 = type metadata accessor for PresentationRequest();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v92 = v90 - v26;
  __chkstk_darwin(v25);
  v97 = v90 - v27;
  if (!a1)
  {
    __break(1u);
    goto LABEL_41;
  }

  v28 = [a1 userInfo];
  if (!v28)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100005F58(v43, static AISLogger.uiService);
    v44 = a1;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v94 = a2;
      v50 = v49;
      v104[0] = v49;
      *v47 = 136315394;
      v51 = _typeName(_:qualified:)();
      v53 = sub_10000FA60(v51, v52, v104);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2112;
      *(v47 + 14) = v44;
      *v48 = a1;
      v54 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "%s Could not find activation context on remote alert: %@", v47, 0x16u);
      sub_100006CEC(v48, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v50);
      a2 = v94;
    }

    if (a2)
    {
      a2();
      return;
    }

    goto LABEL_42;
  }

  v91 = v18;
  v90[1] = ObjectType;
  v93 = a3;
  v94 = a2;
  v29 = v28;
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = a1;
  v31 = [a1 actions];
  sub_1000066CC(0, &qword_100022D00, BSAction_ptr);
  sub_100006714(&qword_100022FB0, &qword_100022D00, BSAction_ptr);
  v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [objc_opt_self() sharedInstance];
  if (!v33)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v34 = v33;
  v35 = type metadata accessor for FeatureManager();
  v36 = static FeatureManager.shared.getter();
  v104[3] = v35;
  v104[4] = &protocol witness table for FeatureManager;
  v104[0] = v36;
  v100 = 0x656369766564;
  v101 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v37 = *(v30 + 16);
  v38 = v98;
  v99 = v30;
  if (v37 && (v39 = sub_1000100C8(v102), v30 = v99, (v40 & 1) != 0))
  {
    sub_100006868(*(v99 + 56) + 32 * v39, v103);
    sub_100006764(v102);
    sub_1000061F4(&qword_100022D10, &qword_1000130D8);
    if (swift_dynamicCast())
    {

      v41 = v95;
      sub_100008B08(v100, v34, v104, v95);

LABEL_25:
      v60 = v91;
      goto LABEL_26;
    }
  }

  else
  {
    sub_100006764(v102);
  }

  sub_10000994C(v30, v14);
  v42 = *(v20 + 48);
  if (v42(v14, 1, v19) == 1)
  {
    sub_100006CEC(v14, &unk_100022CF0, &qword_1000130C8);
    sub_10000A458(v30, v32, v11);

    if (v42(v11, 1, v19) == 1)
    {
      sub_100006CEC(v11, &unk_100022CF0, &qword_1000130C8);
      v41 = v95;
      (*(v20 + 56))(v95, 1, 1, v19);
    }

    else
    {
      sub_100006628(v11, v24);
      v41 = v95;
      sub_100006628(v24, v95);
      (*(v20 + 56))(v41, 0, 1, v19);
    }

    v38 = v98;
    goto LABEL_25;
  }

  v55 = v92;
  sub_100006628(v14, v92);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100005F58(v56, static AISLogger.uiService);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.debug.getter();
  v59 = os_log_type_enabled(v57, v58);
  v38 = v98;
  v60 = v91;
  if (v59)
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Attempting to create a new presentation request launched for sharing", v61, 2u);
  }

  v41 = v95;
  sub_100006628(v55, v95);
  (*(v20 + 56))(v41, 0, 1, v19);
LABEL_26:
  sub_1000067B8(v104);
  v62 = v41;
  v63 = v96;
  sub_100002978(v62, v60);
  if ((*(v20 + 48))(v60, 1, v19) == 1)
  {
    sub_100006CEC(v60, &unk_100022CF0, &qword_1000130C8);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100005F58(v64, static AISLogger.uiService);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v104[0] = swift_slowAlloc();
      *v67 = 136315394;
      v68 = _typeName(_:qualified:)();
      v70 = sub_10000FA60(v68, v69, v104);

      *(v67 + 4) = v70;
      *(v67 + 12) = 2080;
      v71 = Dictionary.description.getter();
      v73 = v72;

      v74 = sub_10000FA60(v71, v73, v104);

      *(v67 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v65, v66, "%s Unable to build presentation request with user info: %s", v67, 0x16u);
      swift_arrayDestroy();

      goto LABEL_38;
    }
  }

  else
  {

    sub_100006628(v60, v97);
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    sub_100005F58(v75, static AISLogger.uiService);
    v65 = v63;
    v76 = v38;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v104[0] = v81;
      *v79 = 136315650;
      v82 = _typeName(_:qualified:)();
      v84 = sub_10000FA60(v82, v83, v104);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2112;
      *(v79 + 14) = v65;
      *(v79 + 22) = 2112;
      *(v79 + 24) = v76;
      *v80 = v65;
      v80[1] = v38;
      v85 = v65;
      v86 = v76;
      _os_log_impl(&_mh_execute_header, v77, v78, "%s Configuring remote alert (%@) with context: %@", v79, 0x20u);
      sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
      swift_arrayDestroy();

      sub_1000067B8(v81);
    }

    v87 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
    swift_beginAccess();
    sub_100006804(v97, v65 + v87);
    v88 = swift_endAccess();
    v89 = v94;
    if (v94)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

LABEL_38:

  v89 = v94;
  if (v94)
  {
LABEL_39:
    (v89)(v88);
    return;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_100003BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100003C38, v7, v6);
}

uint64_t sub_100003C38()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = sub_100005F58(v1, static AISLogger.uiService);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Executing override action", v4, 2u);
  }

  v5 = v0[2];

  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100003DE4;
  v8 = v0[3];

  return v10();
}

uint64_t sub_100003DE4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_100004068;
  }

  else
  {
    v7 = sub_100003F20;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100003F20()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished executing override action", v5, 2u);
  }

  v6 = v0[7];
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "AppleIDSetupUIService is exiting after running override action", v9, 2u);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100004068()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to execute override action: %@", v8, 0xCu);
    sub_100006CEC(v9, &qword_100022FE0, &qword_1000130D0);
  }

  else
  {
  }

  v11 = v0[7];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "AppleIDSetupUIService is exiting after running override action", v14, 2u);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100004240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1000061F4(&qword_100022D18, &qword_1000130E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100006C7C(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006CEC(v11, &qword_100022D18, &qword_1000130E0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100006CEC(a3, &qword_100022D18, &qword_1000130E0);

      return v24;
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

  sub_100006CEC(a3, &qword_100022D18, &qword_1000130E0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_100004570(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PresentationRequest();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - v10;
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewWillAppear:", a1 & 1);
  v14 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
  swift_beginAccess();
  sub_1000065C4(&v1[v14], v13);
  sub_1000065C4(v13, v11);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_10000624C(v13);
    sub_10000624C(v11);
  }

  else
  {
    sub_10000624C(v11);
    sub_100006628(v13, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10000624C(v8);
    if (EnumCaseMultiPayload != 6)
    {
      v16 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController;
      if (!*&v1[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController])
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = type metadata accessor for RemoteAlertRootViewController();
        v19 = objc_allocWithZone(v18);
        swift_unknownObjectWeakInit();
        v20 = &v19[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
        *v20 = 0;
        v20[1] = 0;
        swift_unknownObjectWeakAssign();
        v21 = *v20;
        v22 = v20[1];
        *v20 = sub_1000066C4;
        v20[1] = v17;

        sub_10000651C(v21);
        v27.receiver = v19;
        v27.super_class = v18;
        v23 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);

        [v23 setModalPresentationStyle:0];
        v24 = *&v1[v16];
        *&v1[v16] = v23;
        v25 = v23;

        [v1 presentViewController:v25 animated:0 completion:0];
      }
    }
  }
}

void sub_10000480C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000062B0(0);
  }
}

void sub_1000048B8(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for PresentationRequest();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidAppear:", a1 & 1);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005F58(v14, static AISLogger.uiService);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v13;
    v19 = v18;
    v38 = swift_slowAlloc();
    v41 = v38;
    *v19 = 136315138;
    v20 = v15;
    v21 = [v20 description];
    v40 = v4;
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v11;
    v25 = v8;
    v27 = v26;

    v28 = sub_10000FA60(v23, v27, &v41);
    v8 = v25;
    v11 = v24;

    *(v19 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: viewDidAppear", v19, 0xCu);
    sub_1000067B8(v38);

    v13 = v39;
  }

  v29 = *&v15[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController];
  if (v29)
  {
    v30 = v29;
    v31 = [v30 presentedViewController];
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v33 = OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest;
      swift_beginAccess();
      sub_1000065C4(&v15[v33], v13);
      sub_100006628(v13, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_10000624C(v11);
      if (EnumCaseMultiPayload == 5)
      {
      }

      else
      {
        v35 = sub_1000058B8();
        if (v35)
        {
          v36 = v35;
          v37 = String._bridgeToObjectiveC()();
          [v36 setIdleTimerDisabled:1 forReason:v37];

          swift_unknownObjectRelease();
        }

        sub_1000065C4(&v15[v33], v8);
        sub_100007074(v8);

        sub_10000624C(v8);
      }
    }
  }
}

id sub_100004C88(char a1)
{
  ObjectType = swift_getObjectType();
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005F58(v4, qword_100022B18);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v22 = ObjectType;
    v8 = a1;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10000FA60(v13, v15, &v23);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s viewDidDisappear", v9, 0xCu);
    sub_1000067B8(v10);

    a1 = v8;
    ObjectType = v22;
  }

  v17 = sub_1000058B8();
  if (v17)
  {
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    [v18 setIdleTimerDisabled:0 forReason:v19];

    swift_unknownObjectRelease();
  }

  v20 = *&v5[OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController];
  if (v20)
  {
    [v20 dismissViewControllerAnimated:0 completion:0];
  }

  v24.receiver = v5;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, "viewDidDisappear:", a1 & 1, v22, v23);
}

void *sub_100004F1C()
{
  result = sub_1000058B8();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005028(uint64_t a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
    Set.Iterator.init(_cocoa:)();
    v3 = v37[1];
    v2 = v37[2];
    v4 = v37[3];
    v5 = v37[4];
    v6 = v37[5];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
    v3 = a1;
  }

  v10 = (v4 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (!v6)
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_20;
      }

      v12 = *(v2 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_13:
  v14 = (v12 - 1) & v12;
  v15 = *(*(v3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
  if (!v15)
  {
LABEL_20:
    sub_1000062A8();
    if (qword_100022B30 == -1)
    {
LABEL_21:
      v16 = type metadata accessor for Logger();
      sub_100005F58(v16, static AISLogger.uiService);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v37[0] = v20;
        *v19 = 136315138;
        sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
        sub_100006714(&qword_100022CE8, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
        v21 = Set.description.getter();
        v23 = sub_10000FA60(v21, v22, v37);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v17, v18, "Ignoring received button actions: %s", v19, 0xCu);
        sub_1000067B8(v20);
      }

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_21;
  }

  while ([v15 events] != 16)
  {

    v5 = v13;
    v6 = v14;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000066CC(0, &qword_100022CE0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      v15 = v37[0];
      v13 = v5;
      v14 = v6;
      if (v37[0])
      {
        continue;
      }
    }

    goto LABEL_20;
  }

  sub_1000062A8();

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005F58(v24, static AISLogger.uiService);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Received home button press", v27, 2u);
  }

  v28 = OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked;
  if (*(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController_homeButtonPressedWhileLocked) & 1) != 0 || (v29 = sub_100005830()) == 0 || (v30 = v29, v31 = [v29 isUnlocked], v30, (v31))
  {
    if (qword_100022B10 != -1)
    {
      swift_once();
    }

    sub_100005F58(v24, qword_100022B18);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Ignoring first home button press to unlock", v34, 2u);
    }

    *(v36 + v28) = 1;
  }

  else
  {
    v35 = *(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController);
    if (v35)
    {
      [v35 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_100005680()
{
  sub_10000624C(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_presentationRequest);
  v1 = *(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService24SetupAlertViewController_rootViewController);
}

id sub_1000056C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SetupAlertViewController()
{
  result = qword_100022B90;
  if (!qword_100022B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005798()
{
  result = type metadata accessor for PresentationRequest();
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

id sub_100005830()
{
  v1 = OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device;
  v2 = *(v0 + OBJC_IVAR____TtC21AppleIDSetupUIService26BaseProxFlowViewController____lazy_storage___device);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [objc_opt_self() currentDevice];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_1000061E4(v4);
  }

  sub_10000623C(v2);
  return v3;
}

uint64_t sub_1000058B8()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000061F4(&qword_100022CD8, &qword_1000130C0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100006CEC(v5, &qword_100022C70, &unk_1000130B0);
    return 0;
  }
}

void *sub_100005988(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  v3 = sub_1000058B8();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_1000058B8();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  v5 = sub_1000058B8();
  if (v5)
  {
    [v5 setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];
    swift_unknownObjectRelease();
  }

  result = sub_1000058B8();
  if (result)
  {
    [result setAllowsAlertStacking:1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100005ACC(char a1)
{
  swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v12, "viewDidDisappear:", a1 & 1);
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005F58(v3, qword_100022B18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000FA60(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s viewDidDisappear, exiting now", v6, 0xCu);
    sub_1000067B8(v7);
  }

  exit(0);
}

id sub_100005EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseProxFlowViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100005F58(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005F90(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006088;

  return v7(a1);
}

uint64_t sub_100006088()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_100006180(uint64_t a1, uint64_t *a2)
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

void sub_1000061E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000061F4(uint64_t *a1, uint64_t *a2)
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

id sub_10000623C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10000624C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000062B0(char a1)
{
  ObjectType = swift_getObjectType();
  if (qword_100022B10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005F58(v4, qword_100022B18);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v19 = ObjectType;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315394;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000FA60(v12, v14, aBlock);

    *(v8 + 4) = v15;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s dismiss animated: %{BOOL}d", v8, 0x12u);
    sub_1000067B8(v9);

    ObjectType = v19;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  aBlock[4] = sub_1000065A4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007924;
  aBlock[3] = &unk_10001CB08;
  v17 = _Block_copy(aBlock);
  v18 = v5;

  v20.receiver = v18;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "dismissViewControllerAnimated:completion:", a1 & 1, v17);
  _Block_release(v17);
}

uint64_t sub_10000651C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000652C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000656C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000065AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000065C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000668C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000066CC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100006714(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000066CC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006868(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000068C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006934()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100006A34;

  return sub_100003BA0(a1, v4, v5, v7, v6);
}

uint64_t sub_100006A34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006B28()
{
  v1 = type metadata accessor for ViewServiceConfiguration();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006BB0()
{
  v2 = *(type metadata accessor for ViewServiceConfiguration() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006A34;

  return sub_10000B164(v0 + v3);
}

uint64_t sub_100006C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&qword_100022D18, &qword_1000130E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006CEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000061F4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006D4C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006E48;

  return sub_100005F90(a1, v5);
}

void sub_100006EE4()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setClipsToBounds:0];
}

void sub_100007074(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PresentationRequest();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - v10;
  __chkstk_darwin(v9);
  v13 = &v38 - v12;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100005F58(v14, static AISLogger.uiService);
  sub_1000065C4(a1, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v8;
    v19 = v18;
    v20 = swift_slowAlloc();
    v38 = v15;
    v21 = v20;
    v40[0] = v20;
    *v19 = 136315138;
    sub_1000065C4(v13, v11);
    v22 = String.init<A>(describing:)();
    v23 = v2;
    v25 = v24;
    sub_10000624C(v13);
    v26 = sub_10000FA60(v22, v25, v40);
    v2 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Presenting view controller in remote alert for request: %s", v19, 0xCu);
    sub_1000067B8(v21);

    v8 = v39;
  }

  else
  {

    sub_10000624C(v13);
  }

  v27 = sub_100007968();
  v40[1] = &OBJC_PROTOCOL___PRXCardContentProviding;
  v28 = swift_dynamicCastObjCProtocolConditional();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  v31 = os_log_type_enabled(v29, v30);
  if (v28)
  {
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Using prox card flow for remote alert presentation", v32, 2u);
    }

    v33 = [v2 presentProxCardFlowWithDelegate:v2 initialViewController:v28];
    v27 = v33;
  }

  else
  {
    if (v31)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Using modal UI flow for remote alert presentation", v34, 2u);
    }

    [v27 setModalPresentationStyle:0];
    v35 = [v27 presentationController];
    if (v35)
    {
      v36 = v35;
      [v35 setDelegate:v2];
    }

    sub_1000065C4(a1, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 5)
    {
      sub_10000624C(v8);
    }

    [v2 presentViewController:v27 animated:EnumCaseMultiPayload != 5 completion:0];
  }
}

void sub_1000074FC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  v4 = *(a3 + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler);
  if (v4)
  {
    v5 = *(a3 + OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler + 8);

    v4(v6);
    sub_10000651C(v4);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

id sub_10000773C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000077FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007868(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007878()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t AISLogger.uiService.unsafeMutableAddressor()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100005F58(v0, static AISLogger.uiService);
}

uint64_t sub_100007924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100007968()
{
  v111 = type metadata accessor for Logger();
  v110 = *(v111 - 8);
  v0 = *(v110 + 64);
  __chkstk_darwin(v111);
  v109 = &v96 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000061F4(&qword_100023058, &qword_100013238);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v108 = &v96 - v4;
  v105 = type metadata accessor for AgeMigrationModel.State();
  v5 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for RemoteRole();
  v99 = *(v100 - 8);
  v7 = *(v99 + 64);
  __chkstk_darwin(v100);
  v101 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000061F4(&qword_100023060, &qword_100013240);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v98 = &v96 - v11;
  v107 = type metadata accessor for AgeMigrationModel();
  v106 = *(v107 - 8);
  v12 = *(v106 + 64);
  v13 = __chkstk_darwin(v107);
  v102 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v104 = &v96 - v15;
  v113 = type metadata accessor for IdMSAccount();
  v112 = *(v113 - 8);
  v16 = *(v112 + 64);
  __chkstk_darwin(v113);
  v125 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000061F4(&qword_100023068, &qword_100013248);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v123 = &v96 - v20;
  v21 = type metadata accessor for AISDeviceClass();
  v120 = *(v21 - 8);
  v121 = v21;
  v22 = *(v120 + 64);
  __chkstk_darwin(v21);
  v119 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000061F4(&qword_100023070, &qword_100013250);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v118 = &v96 - v26;
  v27 = type metadata accessor for DiscoveryModel.CodeType();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v117 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DiscoveryModel.PairingState();
  v115 = *(v116 - 8);
  v30 = *(v115 + 64);
  __chkstk_darwin(v116);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DiscoveryModel.State();
  v114 = *(v33 - 8);
  v34 = *(v114 + 64);
  __chkstk_darwin(v33);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DiscoveryModel();
  v126 = *(v37 - 8);
  v127 = v37;
  v38 = *(v126 + 64);
  v39 = __chkstk_darwin(v37);
  v122 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v124 = &v96 - v41;
  v128 = type metadata accessor for BLEDevice();
  v42 = *(v128 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v128);
  v45 = __chkstk_darwin(v44);
  v47 = &v96 - v46;
  __chkstk_darwin(v45);
  v49 = &v96 - v48;
  v50 = type metadata accessor for PresentationRequest();
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v53 = &v96 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065C4(v129, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      return [objc_allocWithZone(UIViewController) init];
    }

    if (EnumCaseMultiPayload == 3)
    {
      v55 = v42;
      v56 = v128;
      (*(v42 + 32))(&v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v128);
      (*(v115 + 104))(v32, enum case for DiscoveryModel.PairingState.notStarted(_:), v116);
      DiscoveryModel.Discovering.init(allowsManual:selectedManual:pairingState:)();
      (*(v114 + 104))(v36, enum case for DiscoveryModel.State.discovering(_:), v33);
      static DiscoveryModel.CodeType.platformDefault.getter();
      v57 = type metadata accessor for SymptomReport();
      (*(*(v57 - 8) + 56))(v118, 1, 1, v57);
      (*(v120 + 104))(v119, enum case for AISDeviceClass.unknown(_:), v121);
      v58 = v122;
      DiscoveryModel.init(role:flowKind:state:fixedPin:targetAuthTag:codeType:altDSID:symptomReport:shouldSkipConfirmation:name:serverDeviceModel:currentDeviceAgeRange:peerDeviceAgeRange:peerDeviceClass:)();
      v59 = *(v55 + 16);
      v60 = v123;
      v59(v123, &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v56);
      (*(v55 + 56))(v60, 0, 1, v56);
      v61 = v124;
      DiscoveryModel.updated(withPeer:)();
      sub_100006CEC(v60, &qword_100023068, &qword_100013248);
      v62 = [objc_opt_self() sharedInstance];
      v63 = v125;
      static IdMSAccount.fetchPrimary(with:)();

      v81 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      v97 = v81;
      v82 = v112;
      v83 = *(v112 + 16);
      v84 = v58;
      v85 = v98;
      v129 = v55;
      v86 = v113;
      v83(v98, v63);
      (*(v82 + 56))(v85, 0, 1, v86);
      v87 = v101;
      v59(v101, v81, v56);
      (*(v99 + 104))(v87, enum case for RemoteRole.bleClient(_:), v100);
      v88 = v126;
      v89 = v127;
      (*(v126 + 16))(v84, v61, v127);
      swift_storeEnumTagMultiPayload();
      v90 = v104;
      AgeMigrationModel.init(account:remoteRole:discoveryModel:state:)();
      type metadata accessor for AgeMigrationController();
      v91 = type metadata accessor for XPCEndpoint();
      (*(*(v91 - 8) + 56))(v108, 1, 1, v91);
      v133 = 0;
      v131 = 0u;
      v132 = 0u;
      AgeMigrationController.__allocating_init(queue:endpoint:inactiveSession:)();
      v92 = v106;
      v93 = v107;
      (*(v106 + 16))(v102, v90, v107);
      v94 = objc_allocWithZone(type metadata accessor for AgeMigrationCardViewController());
      v95 = AgeMigrationCardViewController.init(ageMigrationController:model:terminationHandler:)();
      (*(v92 + 8))(v90, v93);
      (*(v112 + 8))(v63, v113);
      (*(v88 + 8))(v61, v89);
      (*(v129 + 8))(v97, v128);
    }

    else
    {
      v95 = [objc_allocWithZone(UIViewController) init];
      sub_10000624C(v53);
    }

    return v95;
  }

  if (!EnumCaseMultiPayload)
  {
    v72 = *(v42 + 32);
    v73 = v53;
    v66 = v128;
    v72(v49, v73, v128);
    (*(v42 + 16))(v47, v49, v66);
    v74 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v75 = swift_allocObject();
    v72((v75 + v74), v47, v66);
    v76 = objc_allocWithZone(type metadata accessor for SetupCardViewController());
    v70 = SetupCardViewController.init(contextBuilder:reportHandler:)();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v64 = *(v42 + 32);
    v65 = v53;
    v66 = v128;
    v64(v49, v65, v128);
    (*(v42 + 16))(v47, v49, v66);
    v67 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v68 = swift_allocObject();
    v64((v68 + v67), v47, v66);
    v69 = objc_allocWithZone(type metadata accessor for RepairCardViewController());
    v70 = RepairCardViewController.init(contextBuilder:reportHandler:)();
LABEL_10:
    v95 = v70;
    (*(v42 + 8))(v49, v66);
    return v95;
  }

  v77 = *v53;
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v78 = result;
  *(&v132 + 1) = sub_1000066CC(0, &qword_100023010, ACAccountStore_ptr);
  v133 = &protocol witness table for ACAccountStore;
  *&v131 = v78;
  v79 = type metadata accessor for BaseBoardActionsViewController();
  v80 = objc_allocWithZone(v79);
  *&v80[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController] = 0;
  *&v80[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions] = v77;
  sub_10000E488(&v131, &v80[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_accountStore]);
  v130.receiver = v80;
  v130.super_class = v79;
  v95 = objc_msgSendSuper2(&v130, "initWithNibName:bundle:", 0, 0);
  sub_1000067B8(&v131);
  return v95;
}

uint64_t sub_1000089F4()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, static AISLogger.uiService);
  sub_100005F58(v0, static AISLogger.uiService);
  static AISLogger.subsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t static AISLogger.uiService.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100005F58(v2, static AISLogger.uiService);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100008B08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v114 = a2;
  v126 = a4;
  v5 = type metadata accessor for BleAdvertisementFlags();
  v116 = *(v5 - 8);
  v117 = v5;
  v6 = *(v116 + 64);
  v7 = __chkstk_darwin(v5);
  v115 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = v107 - v9;
  v119 = type metadata accessor for AppleIDSetupFeature();
  v122 = *(v119 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v119);
  v120 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BLEDevice.NearbyActionPayload();
  v123 = *(v12 - 8);
  v13 = *(v123 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v107 - v17;
  v19 = type metadata accessor for BLEDevice();
  v125 = *(v19 - 8);
  v20 = v125[8];
  v21 = __chkstk_darwin(v19);
  v23 = v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v107 - v25;
  __chkstk_darwin(v24);
  v28 = v107 - v27;
  v29 = objc_allocWithZone(CBDevice);

  v124 = a1;
  v30 = sub_10000D868();
  v108 = v23;
  v109 = v18;
  v31 = v26;
  v107[0] = v16;
  v110 = v12;
  v32 = v30;
  CBDevice.into()();
  v111 = v32;

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  v34 = sub_100005F58(v33, static AISLogger.uiService);
  v35 = v125[2];
  v36 = v31;
  v35(v31, v28, v19);
  v107[1] = v34;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v121;
  v41 = v108;
  v112 = v19;
  v113 = v28;
  if (v39)
  {
    v42 = swift_slowAlloc();
    v43 = v19;
    v44 = swift_slowAlloc();
    v127[0] = v44;
    *v42 = 136315138;
    v35(v41, v36, v43);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    v48 = v125[1];
    v48(v36, v43);
    v49 = sub_10000FA60(v45, v47, v127);

    *(v42 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v37, v38, "Handling BLE device dictionary for presentation request: %s", v42, 0xCu);
    sub_1000067B8(v44);
  }

  else
  {

    v48 = v125[1];
    v48(v36, v19);
  }

  v50 = v109;
  v51 = v110;
  v52 = v120;
  BLEDevice.nearbyActionPayload.getter();
  v53 = BLEDevice.NearbyActionPayload.type.getter();
  v54 = v123 + 8;
  v55 = *(v123 + 8);
  v55(v50, v51);
  v56 = v126;
  v57 = v122;
  if (v53 == 95)
  {
    v123 = v54;
    v120 = v48;
    v62 = v40[4];
    sub_10000D9D0(v40, v40[3]);
    v63 = v52;
    v64 = v52;
    v65 = v119;
    v110 = *(v57 + 104);
    v110(v63, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v119);
    v121 = v62;
    LOBYTE(v62) = dispatch thunk of FeatureManagerProtocol.isFeatureEnabled(_:)();
    v66 = *(v57 + 8);
    v66(v64, v65);
    if (v62 & 1) != 0 || (v110(v64, enum case for AppleIDSetupFeature.ageMigration(_:), v65), v67 = dispatch thunk of FeatureManagerProtocol.isFeatureEnabled(_:)(), v66(v64, v65), (v67))
    {
      v68 = v107[0];
      BLEDevice.nearbyActionPayload.getter();
      v69 = v118;
      BLEDevice.NearbyActionPayload.advertisementFlags.getter();
      v55(v68, v51);
      v70 = v115;
      static BleAdvertisementFlags.ageMigration.getter();
      sub_10000DA14(&qword_100022FE8, &type metadata accessor for BleAdvertisementFlags);
      v71 = v117;
      v72 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v73 = *(v116 + 8);
      v73(v70, v71);
      if (v72 & 1) != 0 || (static BleAdvertisementFlags.teenSetup.getter(), v74 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v73(v70, v71), (v74))
      {
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.info.getter();
        v77 = os_log_type_enabled(v75, v76);
        v78 = v126;
        v79 = v112;
        if (v77)
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "AppleIDSetupUIService will handle this nearby action", v80, 2u);
        }

        v81 = v113;
        sub_10000AC80(v113, v114, v78);

        v73(v69, v71);
        (v120)(v81, v79);
        v59 = type metadata accessor for PresentationRequest();
        v60 = *(*(v59 - 8) + 56);
        v61 = v78;
      }

      else
      {

        v96 = Logger.logObject.getter();
        v97 = static os_log_type_t.info.getter();

        v98 = os_log_type_enabled(v96, v97);
        v99 = v126;
        if (v98)
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v127[0] = v101;
          *v100 = 136315138;
          v102 = Dictionary.description.getter();
          v104 = sub_10000FA60(v102, v103, v127);

          *(v100 + 4) = v104;
          v71 = v117;
          _os_log_impl(&_mh_execute_header, v96, v97, "Determined that AppleIDSetupUIService should not be handling this nearby action: %s", v100, 0xCu);
          sub_1000067B8(v101);
        }

        v106 = v111;
        v105 = v112;
        sub_10000A86C(v111, v99);

        v73(v118, v71);
        (v120)(v113, v105);
        v59 = type metadata accessor for PresentationRequest();
        v60 = *(*(v59 - 8) + 56);
        v61 = v99;
      }
    }

    else
    {
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "Necessary feature not enabled, falling through to allow handling by other view service", v93, 2u);
      }

      v94 = v126;
      v95 = v111;
      sub_10000A86C(v111, v126);

      (v120)(v113, v112);
      v59 = type metadata accessor for PresentationRequest();
      v60 = *(*(v59 - 8) + 56);
      v61 = v94;
    }

    return v60(v61, 0, 1, v59);
  }

  if (v53 == 47)
  {
    v58 = v111;
    sub_10000A86C(v111, v126);

    v48(v113, v112);
    v59 = type metadata accessor for PresentationRequest();
    v60 = *(*(v59 - 8) + 56);
    v61 = v56;
    return v60(v61, 0, 1, v59);
  }

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v127[0] = v85;
    *v84 = 136315138;
    v86 = Dictionary.description.getter();
    v88 = sub_10000FA60(v86, v87, v127);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "AppleIDSetupUIService did not expect to be handling this nearby action: %s, exiting early", v84, 0xCu);
    sub_1000067B8(v85);
  }

  v48(v113, v112);
  v89 = type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  return (*(*(v89 - 8) + 56))(v56, 0, 1, v89);
}

uint64_t sub_10000994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BleAdvertisementFlags();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BLEDevice.NearbyActionPayload();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AISDeviceClass();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  v79 = 0xD000000000000010;
  v80 = 0x8000000100013810;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_1000100C8(v81), (v21 & 1) == 0))
  {
    sub_100006764(v81);
    goto LABEL_9;
  }

  sub_100006868(*(a1 + 56) + 32 * v20, &v82);
  sub_100006764(v81);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005F58(v24, static AISLogger.uiService);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v81[0] = v28;
      *v27 = 136315138;
      v29 = Dictionary.description.getter();
      v31 = sub_10000FA60(v29, v30, v81);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "No device identifier provided in user info: %s", v27, 0xCu);
      sub_1000067B8(v28);
    }

    v32 = type metadata accessor for PresentationRequest();
    v33 = *(*(v32 - 8) + 56);
    v34 = a2;
    return v33(v34, 1, 1, v32);
  }

  v77 = v79;
  v78 = v80;
  v82 = 0xD000000000000010;
  v83 = 0x8000000100013830;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v22 = sub_1000100C8(v81), (v23 & 1) == 0))
  {
    sub_100006764(v81);
    goto LABEL_16;
  }

  sub_100006868(*(a1 + 56) + 32 * v22, &v82);
  sub_100006764(v81);
  if (!swift_dynamicCast())
  {
LABEL_16:
    v74 = 0;
    goto LABEL_17;
  }

  v74 = v79;
LABEL_17:
  v82 = 0x6F6973726556736FLL;
  v83 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  v36 = *(a1 + 16);
  v72 = v7;
  if (!v36 || (v37 = sub_1000100C8(v81), (v38 & 1) == 0))
  {
    sub_100006764(v81);
    goto LABEL_22;
  }

  sub_100006868(*(a1 + 56) + 32 * v37, &v82);
  sub_100006764(v81);
  if (!swift_dynamicCast())
  {
LABEL_22:
    v39 = 0;
    goto LABEL_23;
  }

  v39 = v79;
LABEL_23:
  v79 = 0x556E6F6973736573;
  v80 = 0xEB00000000444955;
  AnyHashable.init<A>(_:)();
  v40 = *(a1 + 16);
  v75 = v11;
  if (!v40 || (v41 = sub_1000100C8(v81), (v42 & 1) == 0))
  {
    sub_100006764(v81);
    goto LABEL_28;
  }

  sub_100006868(*(a1 + 56) + 32 * v41, &v82);
  sub_100006764(v81);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v71 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_29;
  }

  v43 = v80;
  v71 = v79;
LABEL_29:
  v82 = 1769173874;
  v83 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v44 = sub_1000100C8(v81), (v45 & 1) != 0))
  {
    sub_100006868(*(a1 + 56) + 32 * v44, &v82);
    sub_100006764(v81);
    if (swift_dynamicCast())
    {
      v70 = v79;
      goto LABEL_35;
    }
  }

  else
  {
    sub_100006764(v81);
  }

  v70 = 0;
LABEL_35:
  v76 = a2;
  (*(v13 + 104))(v19, enum case for AISDeviceClass.appletv(_:), v12);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v73 = v12;
  v46 = type metadata accessor for Logger();
  sub_100005F58(v46, static AISLogger.uiService);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v69 = v13;
    v81[0] = v50;
    *v49 = 136316162;
    *(v49 + 4) = sub_10000FA60(v77, v78, v81);
    *(v49 + 12) = 256;
    v51 = v74;
    *(v49 + 14) = v74;
    *(v49 + 15) = 256;
    *(v49 + 17) = v39;
    *(v49 + 18) = 2080;
    v52 = sub_10000FA60(v71, v43, v81);

    *(v49 + 20) = v52;
    *(v49 + 28) = 2048;
    *(v49 + 30) = v70;
    _os_log_impl(&_mh_execute_header, v47, v48, "Discovered BLE peer device with info deviceId: %s nearbyActionType: %hhu osVersion: %hhu sessionId: %s rssi: %ld", v49, 0x26u);
    swift_arrayDestroy();
    v13 = v69;

    v53 = v76;
  }

  else
  {

    v53 = v76;
    v51 = v74;
  }

  if (v51 == 43)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Repairing device requesting authenticate accounts with V2", v62, 2u);
    }

    v63 = v73;
    (*(v13 + 16))(v17, v19, v73);
    static BleAdvertisementFlags.none.getter();
    BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)();
    BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)();
    (*(v13 + 8))(v19, v63);
    v59 = type metadata accessor for PresentationRequest();
    goto LABEL_48;
  }

  if (v51 != 32)
  {

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v73;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Cannot service unknown nearby action type", v68, 2u);
    }

    (*(v13 + 8))(v19, v67);
    v32 = type metadata accessor for PresentationRequest();
    v33 = *(*(v32 - 8) + 56);
    v34 = v53;
    return v33(v34, 1, 1, v32);
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v73;
  if (v56)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Setting up device requesting authenticate accounts with V1", v58, 2u);
  }

  (*(v13 + 16))(v17, v19, v57);
  static BleAdvertisementFlags.none.getter();
  BLEDevice.NearbyActionPayload.init(type:flags:deviceClass:problemFlags:advertisementFlags:)();
  BLEDevice.init(identifier:proximityServicePSM:nearbyActionPayload:)();
  (*(v13 + 8))(v19, v57);
  v59 = type metadata accessor for PresentationRequest();
LABEL_48:
  swift_storeEnumTagMultiPayload();
  return (*(*(v59 - 8) + 56))(v53, 0, 1, v59);
}

uint64_t sub_10000A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_1000100C8(v27), (v7 & 1) == 0))
  {
    sub_100006764(v27);
    goto LABEL_11;
  }

  sub_100006868(*(a1 + 56) + 32 * v6, v28);
  sub_100006764(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005F58(v14, static AISLogger.uiService);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_16;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27[0] = v18;
    *v17 = 136315138;
    v19 = Dictionary.description.getter();
    v21 = sub_10000FA60(v19, v20, v27);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "AuthKit indicator not present in user info: %s", v17, 0xCu);
    sub_1000067B8(v18);

    goto LABEL_15;
  }

  if (v26 != 1)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005F58(v23, static AISLogger.uiService);
    v15 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v15, v24))
    {
      goto LABEL_16;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v15, v24, "AuthKit indicator is false, returning nil", v25, 2u);
LABEL_15:

LABEL_16:

    v22 = type metadata accessor for PresentationRequest();
    return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005F58(v8, static AISLogger.uiService);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AuthKit indicator is true, returning proxy for authkit presentation request", v11, 2u);
  }

  *a3 = a2;
  v12 = type metadata accessor for PresentationRequest();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_10000A86C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for ViewServiceConfiguration();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - v10;
  __chkstk_darwin(v9);
  v38 = &v34 - v12;
  v13 = type metadata accessor for XPCCodableObject();
  v35 = *(v13 - 8);
  v36 = v13;
  v14 = *(v35 + 64);
  __chkstk_darwin(v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005F58(v17, static AISLogger.uiService);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "ProximityAppleIDSetup should be handling this BLE advertisement", v20, 2u);
  }

  v21 = [a1 xpcEventCompleteRepresentation];
  XPCCodableObject.init(copying:)();
  static ViewServiceConfiguration.proximityAppleIDSetupUIService.getter();
  v22 = v38;
  ViewServiceConfiguration.cbDeviceXpcRepresentation(_:)();
  v34 = v16;
  v23 = v4;
  v24 = *(v4 + 16);
  v24(v8, v22, v3);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v39 = v28;
    *v27 = 136315138;
    v24(v11, v8, v3);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    (*(v23 + 8))(v8, v3);
    v32 = sub_10000FA60(v29, v31, &v39);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Nearby action will launch another view service with configuration: %s", v27, 0xCu);
    sub_1000067B8(v28);
  }

  else
  {

    (*(v23 + 8))(v8, v3);
  }

  (*(v35 + 8))(v34, v36);
  (*(v23 + 32))(v37, v38, v3);
  type metadata accessor for PresentationRequest();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000AC80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BleAdvertisementFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = type metadata accessor for BLEDevice.NearbyActionPayload();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  BLEDevice.nearbyActionPayload.getter();
  BLEDevice.NearbyActionPayload.advertisementFlags.getter();
  (*(v15 + 8))(v18, v14);
  static BleAdvertisementFlags.ageMigration.getter();
  sub_10000DA14(&qword_100022FE8, &type metadata accessor for BleAdvertisementFlags);
  LOBYTE(a1) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v7 + 8);
  v19(v11, v6);
  v19(v13, v6);
  if ((a1 & 1) == 0)
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005F58(v25, static AISLogger.uiService);
    v21 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v26, "Returning setupUsingBLE presentationRequest", v27, 2u);
    }

    goto LABEL_7;
  }

  if ([a2 hasLocalSecret])
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005F58(v20, static AISLogger.uiService);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Nearby action indicates this is an age migration request and device has passcode", v23, 2u);
    }

LABEL_7:

    v24 = type metadata accessor for BLEDevice();
    (*(*(v24 - 8) + 16))(a3, v34, v24);
    goto LABEL_18;
  }

  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100005F58(v28, static AISLogger.uiService);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Device does not have a local secret. Cannot handle age migration request.", v31, 2u);
  }

LABEL_18:
  type metadata accessor for PresentationRequest();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000B184()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005F58(v1, static AISLogger.uiService);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Exiting after launchViewService", v4, 2u);
  }

  type metadata accessor for SetupController();
  v0[3] = SetupController.__allocating_init()();
  v5 = *(&async function pointer to dispatch thunk of SetupController.launchViewService(with:) + 1);
  v9 = (&async function pointer to dispatch thunk of SetupController.launchViewService(with:) + async function pointer to dispatch thunk of SetupController.launchViewService(with:));
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_10000B300;
  v7 = v0[2];

  return v9(v7);
}

uint64_t sub_10000B300()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10000B444;
  }

  else
  {
    v3 = sub_10000B414;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B444()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

void sub_10000B4C4()
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005F58(v0, static AISLogger.uiService);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting early as override action", v3, 2u);
  }

  exit(0);
}

uint64_t sub_10000B5A8(uint64_t a1)
{
  v2 = type metadata accessor for SetupContext.Builder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  (*(v3 + 16))(v7, a1, v2);
  SetupContext.Builder.requireService(_:)();
  SetupContext.Builder.desireService(_:)();
  SetupContext.Builder.desireService(_:)();
  SetupContext.Builder._proximitySetupClient(for:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_10000B758(uint64_t a1)
{
  v2 = type metadata accessor for SetupReport();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - v9;
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_1000061F4(&qword_100023078, &qword_100013258);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v34 - v15);
  sub_10000E63C(a1, &v34 - v15, &qword_100023078, &qword_100013258);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005F58(v18, static AISLogger.uiService);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to setup apple ID with error: %@", v21, 0xCu);
      sub_100006CEC(v22, &qword_100022FE0, &qword_1000130D0);
    }

    exit(1);
  }

  (*(v3 + 32))(v12, v16, v2);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005F58(v24, static AISLogger.uiService);
  v25 = *(v3 + 16);
  v25(v10, v12, v2);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v25(v7, v10, v2);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v3 + 8))(v10, v2);
    v33 = sub_10000FA60(v30, v32, &v35);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully setup apple ID with report: %s", v28, 0xCu);
    sub_1000067B8(v29);

    exit(1);
  }

  (*(v3 + 8))(v10, v2);
  exit(1);
}

uint64_t sub_10000BBA0(uint64_t a1)
{
  v2 = type metadata accessor for RepairContext.Builder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  RepairContext.Builder._proximityRepairClient(for:)();
  return (*(v3 + 8))(a1, v2);
}

void sub_10000BC9C(uint64_t a1)
{
  v2 = type metadata accessor for RepairReport();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v34 - v9;
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = sub_1000061F4(&unk_100023080, &qword_100013260);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v34 - v15);
  sub_10000E63C(a1, &v34 - v15, &unk_100023080, &qword_100013260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005F58(v18, static AISLogger.uiService);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to repair apple ID with error: %@", v21, 0xCu);
      sub_100006CEC(v22, &qword_100022FE0, &qword_1000130D0);
    }

    exit(1);
  }

  (*(v3 + 32))(v12, v16, v2);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100005F58(v24, static AISLogger.uiService);
  v25 = *(v3 + 16);
  v25(v10, v12, v2);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35 = v29;
    *v28 = 136315138;
    v25(v7, v10, v2);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    (*(v3 + 8))(v10, v2);
    v33 = sub_10000FA60(v30, v32, &v35);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "Successfully repaired apple ID with report: %s", v28, 0xCu);
    sub_1000067B8(v29);

    exit(1);
  }

  (*(v3 + 8))(v10, v2);
  exit(1);
}

void sub_10000C0E4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AISLogger.ageMigration.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Terminating view service by request", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  exit(0);
}

uint64_t sub_10000C2B8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v58 = a5;
  v59 = a3;
  v60 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  __chkstk_darwin(v8);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for DispatchQoS();
  v64 = *(v66 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000061F4(&qword_100023028, &qword_100013220);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v56 - v15;
  v17 = type metadata accessor for ShieldError();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v56 - v23;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005F58(v25, static AISLogger.uiService);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v56 = v24;
    v57 = v8;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      v31 = v30;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    *(v28 + 4) = v30;
    *v29 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Child safety features completed with error: %@", v28, 0xCu);
    sub_100006CEC(v29, &qword_100022FE0, &qword_1000130D0);

    v24 = v56;
    v8 = v57;
  }

  if (!a1)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Child safety features succeeded (no error).";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
    }

LABEL_21:

    goto LABEL_22;
  }

  aBlock[0] = a1;
  swift_errorRetain();
  sub_1000061F4(&qword_100023050, &qword_100013230);
  v32 = swift_dynamicCast();
  (*(v18 + 56))(v16, v32 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100006CEC(v16, &qword_100023028, &qword_100013220);
    goto LABEL_18;
  }

  v37 = v8;
  (*(v18 + 32))(v24, v16, v17);
  (*(v18 + 16))(v22, v24, v17);
  v38 = (*(v18 + 88))(v22, v17);
  v39 = *(v18 + 8);
  if (v38 != enum case for ShieldError.setupChildFeatures(_:))
  {
    v39(v24, v17);
    v39(v22, v17);
    v8 = v37;
LABEL_18:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "Child safety features failed with non-default error.";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v40 = v24;
  v39(v22, v17);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Child safety features succeeded with default error.", v43, 2u);
  }

  v39(v40, v17);
  v8 = v37;
LABEL_22:
  sub_1000066CC(0, &qword_100023030, OS_dispatch_queue_ptr);
  v44 = static OS_dispatch_queue.main.getter();
  v45 = swift_allocObject();
  v47 = v59;
  v46 = v60;
  v45[2] = v59;
  v45[3] = v46;
  v49 = v61;
  v48 = v62;
  v45[4] = v58;
  v45[5] = v49;
  v45[6] = v48;
  aBlock[4] = sub_10000E3CC;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007924;
  aBlock[3] = &unk_10001CDD8;
  v50 = _Block_copy(aBlock);
  v51 = v47;
  v52 = v46;

  v53 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000DA14(&qword_100023038, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000061F4(&qword_100023040, &qword_100013228);
  sub_10000E3DC();
  v54 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v50);

  (*(v67 + 8))(v54, v8);
  return (*(v64 + 8))(v53, v66);
}

void sub_10000CA80(void *a1, void *a2)
{
  [objc_allocWithZone(FAURLConfiguration) init];
  [objc_opt_self() sharedInstance];
  sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
  objc_allocWithZone(type metadata accessor for ConnectToFamilyViewController());

  v4 = a2;
  v5 = a1;
  v6 = ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong pushViewController:v6 animated:1];
  }
}

void sub_10000CBBC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v50.receiver = v2;
  v50.super_class = type metadata accessor for BaseBoardActionsViewController();
  objc_msgSendSuper2(&v50, "viewDidAppear:", a1 & 1);
  v5 = OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController;
  if (!*&v2[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_viewSessionController])
  {
    v6 = [objc_allocWithZone(AKRemoteViewSessionController) initWithRootViewController:v2 sceneSession:0];
    v7 = *&v2[v5];
    *&v2[v5] = v6;
    v8 = v6;

    if (!v8)
    {
      __break(1u);
      return;
    }

    v47 = v5;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = ObjectType;
    v55 = sub_10000DB50;
    v56 = v10;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10000D338;
    v54 = &unk_10001CD10;
    v11 = _Block_copy(&aBlock);

    [v8 setNewShieldViewController:v11];
    _Block_release(v11);

    v12 = *&v2[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions];
    if ((v12 & 0xC000000000000001) != 0)
    {
      if (v12 < 0)
      {
        v13 = *&v2[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions];
      }

      v14 = *&v2[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions];

      __CocoaSet.makeIterator()();
      sub_1000066CC(0, &qword_100022D00, BSAction_ptr);
      sub_10000D800();
      Set.Iterator.init(_cocoa:)();
      v12 = aBlock;
      v15 = v52;
      v16 = v53;
      v17 = v54;
      v18 = v55;
    }

    else
    {
      v19 = -1 << *(v12 + 32);
      v15 = v12 + 56;
      v16 = ~v19;
      v20 = -v19;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      else
      {
        v21 = -1;
      }

      v18 = v21 & *(v12 + 56);
      v22 = *&v2[OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_actions];

      v17 = 0;
    }

    v23 = (v16 + 64) >> 6;
    v46 = v2;
    while (1)
    {
      if (v12 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (sub_1000066CC(0, &qword_100022D00, BSAction_ptr), swift_dynamicCast(), v28 = v49, v26 = v17, v27 = v18, !v49))
        {
LABEL_34:
          sub_1000062A8();
          return;
        }
      }

      else
      {
        v24 = v17;
        v25 = v18;
        v26 = v17;
        if (!v18)
        {
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v23)
            {
              goto LABEL_34;
            }

            v25 = *(v15 + 8 * v26);
            ++v24;
            if (v25)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
        }

LABEL_19:
        v27 = (v25 - 1) & v25;
        v28 = *(*(v12 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      v29 = *&v2[v47];
      if (!v29)
      {
        goto LABEL_37;
      }

      v48 = v27;
      v49 = 0;
      if ([v29 respondToAction:v28 error:&v49])
      {
        v30 = qword_100022B30;
        v31 = v49;
        if (v30 != -1)
        {
          swift_once();
        }

        v32 = type metadata accessor for Logger();
        sub_100005F58(v32, static AISLogger.uiService);
        v33 = v28;
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          *(v36 + 4) = v33;
          *v37 = v28;
          v38 = v33;
          _os_log_impl(&_mh_execute_header, v34, v35, "Responded to action %@", v36, 0xCu);
          sub_100006CEC(v37, &qword_100022FE0, &qword_1000130D0);

          v2 = v46;
        }

        else
        {
        }
      }

      else
      {
        v39 = v49;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_100022B30 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100005F58(v40, static AISLogger.uiService);
        swift_errorRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          swift_errorRetain();
          v45 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v45;
          *v44 = v45;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to respond to action: %@", v43, 0xCu);
          sub_100006CEC(v44, &qword_100022FE0, &qword_1000130D0);
          v2 = v46;
        }

        else
        {
        }
      }

      v17 = v26;
      v18 = v48;
    }
  }
}

id sub_10000D1E0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_10000DBB0(a1, (Strong + OBJC_IVAR____TtC21AppleIDSetupUIService30BaseBoardActionsViewController_accountStore), a2, a3);

    return v8;
  }

  else
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005F58(v10, static AISLogger.uiService);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "PresentationRequest deallocated before completion", v13, 2u);
    }

    return [objc_allocWithZone(UIViewController) init];
  }
}

id sub_10000D338(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v8 = v5();

  return v8;
}

void sub_10000D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (a2)
    {
LABEL_3:
      sub_1000061F4(&qword_100022FF0, &qword_100013200);
      v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6.super.isa = 0;
LABEL_6:
  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5);
}

id sub_10000D5B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseBoardActionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PresentationRequest()
{
  result = qword_100022F90;
  if (!qword_100022F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D700()
{
  type metadata accessor for BLEDevice();
  if (v0 <= 0x3F)
  {
    sub_10000D78C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ViewServiceConfiguration();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_10000D78C()
{
  if (!qword_100022FA0)
  {
    sub_1000066CC(255, &qword_100022D00, BSAction_ptr);
    sub_10000D800();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_100022FA0);
    }
  }
}

unint64_t sub_10000D800()
{
  result = qword_100022FB0;
  if (!qword_100022FB0)
  {
    sub_1000066CC(255, &qword_100022D00, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100022FB0);
  }

  return result;
}

id sub_10000D868()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10000D950(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_10000D9B0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void *sub_10000D9D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DA14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DAB0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10000DAE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DB18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000DB50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_10000D1E0(a1, a2, a3);
}

uint64_t sub_10000DB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000DBB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000061F4(&unk_100022FF8, &unk_100013208);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for AppleIDSetupFeature();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration()) init];
  (*(v13 + 104))(v16, enum case for AppleIDSetupFeature.ageBasedAccountSupport(_:), v12);
  v18 = AppleIDSetupFeature.isFeatureEnabled.getter();
  (*(v13 + 8))(v16, v12);
  if (v18)
  {
    v19 = [a1 protoAccount];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 proto_ageRange];
    }

    else
    {
      v21 = 0;
    }

    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005F58(v22, static AISLogger.uiService);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v23, v24, "Configuring Apple Account sign in for user age range: %lu", v25, 0xCu);
    }

    AISAppleIDSignInConfiguration.userAgeRange.setter();
    AISAppleIDSignInConfiguration.signInFlowType.setter();
  }

  v26 = a2[4];
  sub_10000D9D0(a2, a2[3]);
  v27 = dispatch thunk of ACAccountStoreProtocol.aa_primaryAppleAccount()();
  if (v27)
  {
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 accountPropertyForKey:v29];

    if (v30)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v61 = v58;
    v62 = v59;
    if (*(&v59 + 1))
    {
      v31 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v61 = 0u;
    v62 = 0u;
  }

  v31 = 0;
LABEL_18:
  sub_100006CEC(&v61, &qword_100022C70, &unk_1000130B0);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005F58(v32, static AISLogger.uiService);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 67109120;
    *(v35 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v33, v34, "alreadyEnteredPendingMigrationState: %{BOOL}d", v35, 8u);
  }

  v36 = [a1 accountMigrationContext];
  if (!v36)
  {
    goto LABEL_25;
  }

  v37 = v36;
  if (v31)
  {

LABEL_25:
    v38 = objc_allocWithZone(FAURLConfiguration);
    v39 = v17;
    [v38 init];
    v40 = [objc_opt_self() sharedInstance];
    *(&v62 + 1) = sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
    v63 = &protocol witness table for AKAccountManager;
    *&v61 = v40;
    objc_allocWithZone(type metadata accessor for ConnectToFamilyViewController());
    v41 = a1;

    v42 = ConnectToFamilyViewController.init(configuration:context:flowContext:faURLProvider:accountManager:completionHandler:)();
    v43 = dispatch thunk of ConnectToFamilyViewController.embeddedInNavigationController()();
LABEL_28:

    return v43;
  }

  v43 = [objc_allocWithZone(UINavigationController) init];
  [v43 setModalInPresentation:1];
  v44 = [v37 pendingDOB];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v45 = type metadata accessor for Date();
  (*(*(v45 - 8) + 56))(v11, 0, 1, v45);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = swift_allocObject();
  v47[2] = v17;
  v47[3] = a1;
  v47[4] = a3;
  v47[5] = a4;
  v47[6] = v46;
  v48 = objc_opt_self();
  v49 = v17;
  v50 = a1;

  v51 = [v48 sharedInstance];
  *(&v62 + 1) = sub_1000066CC(0, &qword_100023008, AKAccountManager_ptr);
  v63 = &protocol witness table for AKAccountManager;
  *&v61 = v51;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v53 = result;
    *(&v59 + 1) = sub_1000066CC(0, &qword_100023010, ACAccountStore_ptr);
    v60 = &protocol witness table for ACAccountStore;
    *&v58 = v53;
    v54 = objc_allocWithZone(type metadata accessor for ChildSafetyFeaturesViewController());
    v55 = ChildSafetyFeaturesViewController.init(pendingDOB:accountManager:accountStore:completionHandler:)();

    sub_1000061F4(&qword_100023018, &qword_100013218);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100013180;
    *(v56 + 32) = v55;
    sub_1000066CC(0, &qword_100023020, UIViewController_ptr);
    v42 = v55;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 setViewControllers:isa animated:0];

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E37C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10000E3CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_10000CA80(*(v0 + 16), *(v0 + 24));
}

unint64_t sub_10000E3DC()
{
  result = qword_100023048;
  if (!qword_100023048)
  {
    sub_10000E440(&qword_100023040, &qword_100013228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100023048);
  }

  return result;
}

uint64_t sub_10000E440(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000E488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E508()
{
  v1 = type metadata accessor for BLEDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000E5A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BLEDevice() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10000E63C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000061F4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E6B8()
{
  v0 = type metadata accessor for Logger();
  sub_100006180(v0, qword_100023090);
  v1 = sub_100005F58(v0, qword_100023090);
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = sub_100005F58(v0, static AISLogger.uiService);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10000E954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000E9BC(void *a1)
{
  v2 = sub_1000061F4(&qword_1000230D8, "x)");
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  if (qword_100022B38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005F58(v10, qword_100023090);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "DefaultSceneDelegate: sceneWillConnectTo", v13, 2u);
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v19 = 136315138;
      v20 = v16;
      v21 = [v15 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v7;
      v35 = v9;
      v23 = v22;
      v24 = v3;
      v26 = v25;

      v16 = v20;
      v27 = sub_10000FA60(v23, v26, &v37);
      v3 = v24;
      v9 = v35;

      *(v19 + 4) = v27;
      v7 = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "DefaultSceneDelegate: Received windowScene: %s. Hosting debugging UI for AirDropUI Launch Angel.", v19, 0xCu);
      sub_1000067B8(v33);
    }

    v28 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v15];
    ProgressView<>.init<>()();
    v29 = objc_allocWithZone(sub_1000061F4(&unk_1000230E0, qword_1000132C0));
    (*(v3 + 16))(v7, v9, v2);
    v30 = UIHostingController.init(rootView:)();
    (*(v3 + 8))(v9, v2);
    [v28 setRootViewController:v30];
    [v28 makeKeyAndVisible];

    v31 = *(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window);
    *(v36 + OBJC_IVAR____TtC21AppleIDSetupUIService20DefaultSceneDelegate_window) = v28;
  }
}

void sub_10000ED60(const char *a1)
{
  if (qword_100022B38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005F58(v2, qword_100023090);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

id sub_10000EE98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000EFC4(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10000F4CC(a1);
  (*(*(*(v2 + qword_100023470) - 8) + 8))(a1);
  return v5;
}

void *sub_10000F0A0(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100023470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_10000F1D8(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100023470);
  v5 = *(v3 + qword_100023470 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10000F2AC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100023470);
  v3 = *(v1 + qword_100023470 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_10000F474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F4CC(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_100023470) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

id sub_10000F81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RemoteAlertSceneDelegate()
{
  result = qword_100023320;
  if (!qword_100023320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F8F4()
{
  result = type metadata accessor for PresentationRequest();
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

uint64_t sub_10000F990(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10000FA04(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10000FA60(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10000FA60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FB2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006868(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000067B8(v11);
  return v7;
}

unint64_t sub_10000FB2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000FC38(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

char *sub_10000FC38(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000FC84(a1, a2);
  sub_10000FDB4(&off_10001CA90);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000FC84(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000FEA0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FEA0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_10000FDB4(uint64_t result)
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

  result = sub_10000FF14(result, v12, 1, v3);
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

void *sub_10000FEA0(uint64_t a1, uint64_t a2)
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

  sub_1000061F4(&qword_100023348, qword_1000133D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FF14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000061F4(&qword_100023348, qword_1000133D8);
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

_BYTE **sub_100010008(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100010018(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10001008C(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

unint64_t sub_1000100C8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001010C(a1, v4);
}

unint64_t sub_10001010C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100011670(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100006764(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000101D4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000061F4(&unk_100023338, &qword_1000133D0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100011624();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100011624();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1000104A0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1000061F4(&unk_100022CF0, &qword_1000130C8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v105 - v10;
  __chkstk_darwin(v9);
  v13 = &v105 - v12;
  v14 = type metadata accessor for PresentationRequest();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v112 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v105 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v105 - v23;
  __chkstk_darwin(v22);
  v113 = &v105 - v25;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v115 = a1;
    v28 = [v27 configurationContext];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 userInfo];
      if (v30)
      {
        v109 = v29;
        v31 = v30;
        v111 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
        {
          sub_1000101D4(&_swiftEmptyArrayStorage);
          v108 = v104;
        }

        else
        {
          v108 = &_swiftEmptySetSingleton;
        }

        v110 = [objc_opt_self() sharedInstance];
        if (!v110)
        {
          __break(1u);
          return;
        }

        v32 = type metadata accessor for FeatureManager();
        v33 = static FeatureManager.shared.getter();
        v121[3] = v32;
        v121[4] = &protocol witness table for FeatureManager;
        v121[0] = v33;
        v117 = 0x656369766564;
        v118 = 0xE600000000000000;
        AnyHashable.init<A>(_:)();
        v34 = v111;
        v35 = *(v111 + 16);
        v107 = v2;
        v106 = v27;
        if (v35 && (v36 = sub_1000100C8(v119), (v37 & 1) != 0))
        {
          sub_100006868(*(v34 + 56) + 32 * v36, v120);
          sub_100006764(v119);
          sub_1000061F4(&qword_100022D10, &qword_1000130D8);
          if (swift_dynamicCast())
          {

            v38 = v110;
            sub_100008B08(v117, v110, v121, v13);

LABEL_34:
            sub_1000067B8(v121);
            if ((*(v15 + 48))(v13, 1, v14) == 1)
            {
              sub_100006CEC(v13, &unk_100022CF0, &qword_1000130C8);
              if (qword_100022B30 != -1)
              {
                swift_once();
              }

              v65 = type metadata accessor for Logger();
              sub_100005F58(v65, static AISLogger.uiService);

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                v121[0] = swift_slowAlloc();
                *v68 = 136315394;
                v69 = _typeName(_:qualified:)();
                v71 = sub_10000FA60(v69, v70, v121);

                *(v68 + 4) = v71;
                *(v68 + 12) = 2080;
                v72 = Dictionary.description.getter();
                v74 = v73;

                v75 = sub_10000FA60(v72, v74, v121);

                *(v68 + 14) = v75;
                _os_log_impl(&_mh_execute_header, v66, v67, "%s Unable to build presentation request with user info: %s", v68, 0x16u);
                swift_arrayDestroy();
              }

              else
              {
              }
            }

            else
            {

              sub_100006628(v13, v113);
              if (qword_100022B30 != -1)
              {
                swift_once();
              }

              v76 = type metadata accessor for Logger();
              sub_100005F58(v76, static AISLogger.uiService);
              v77 = v115;
              v78 = v109;
              v79 = v109;
              v80 = Logger.logObject.getter();
              v81 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v80, v81))
              {
                v82 = swift_slowAlloc();
                v83 = swift_slowAlloc();
                v84 = swift_slowAlloc();
                v121[0] = v84;
                *v82 = 136315650;
                v85 = _typeName(_:qualified:)();
                v87 = sub_10000FA60(v85, v86, v121);

                *(v82 + 4) = v87;
                *(v82 + 12) = 2112;
                v88 = v106;
                *(v82 + 14) = v106;
                *(v82 + 22) = 2112;
                *(v82 + 24) = v79;
                *v83 = v88;
                v83[1] = v78;
                v89 = v77;
                v90 = v79;
                _os_log_impl(&_mh_execute_header, v80, v81, "%s Configuring remote alert scene: %@ with context: %@", v82, 0x20u);
                sub_1000061F4(&qword_100022FE0, &qword_1000130D0);
                swift_arrayDestroy();

                sub_1000067B8(v84);
              }

              else
              {

                v88 = v106;
              }

              v91 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v88];
              v92 = type metadata accessor for RemoteAlertRootViewController();
              v93 = objc_allocWithZone(v92);
              swift_unknownObjectWeakInit();
              v94 = &v93[OBJC_IVAR____TtC21AppleIDSetupUIService29RemoteAlertRootViewController_dismissHandler];
              *v94 = 0;
              v94[1] = 0;
              swift_unknownObjectWeakAssign();
              v95 = *v94;
              v96 = v94[1];
              *v94 = 0;
              v94[1] = 0;
              v97 = v77;
              sub_10000651C(v95);
              v116.receiver = v93;
              v116.super_class = v92;
              v98 = objc_msgSendSuper2(&v116, "initWithNibName:bundle:", 0, 0);

              v99 = v91;
              [v99 setRootViewController:v98];
              [v99 makeKeyAndVisible];

              v100 = v107;
              v101 = *(v107 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window);
              *(v107 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window) = v99;

              v102 = v112;
              sub_100006628(v113, v112);
              v103 = OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_presentationRequest;
              swift_beginAccess();
              sub_100006804(v102, v100 + v103);
              swift_endAccess();
            }

            return;
          }
        }

        else
        {
          sub_100006764(v119);
        }

        v47 = v111;
        sub_10000994C(v111, v11);
        v48 = *(v15 + 48);
        if (v48(v11, 1, v14) == 1)
        {
          sub_100006CEC(v11, &unk_100022CF0, &qword_1000130C8);
          sub_10000A458(v47, v108, v8);

          if (v48(v8, 1, v14) == 1)
          {
            sub_100006CEC(v8, &unk_100022CF0, &qword_1000130C8);
            (*(v15 + 56))(v13, 1, 1, v14);
          }

          else
          {
            sub_100006628(v8, v21);
            sub_100006628(v21, v13);
            (*(v15 + 56))(v13, 0, 1, v14);
          }
        }

        else
        {

          sub_100006628(v11, v24);
          if (qword_100022B30 != -1)
          {
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          sub_100005F58(v61, static AISLogger.uiService);
          v62 = Logger.logObject.getter();
          v63 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            *v64 = 0;
            _os_log_impl(&_mh_execute_header, v62, v63, "Attempting to create a new presentation request launched for sharing", v64, 2u);
          }

          sub_100006628(v24, v13);
          (*(v15 + 56))(v13, 0, 1, v14);
        }

        goto LABEL_34;
      }
    }

    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005F58(v49, static AISLogger.uiService);
    v50 = v115;
    v115 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v121[0] = v54;
      *v52 = 136315394;
      v55 = _typeName(_:qualified:)();
      v57 = v27;
      v58 = sub_10000FA60(v55, v56, v121);

      *(v52 + 4) = v58;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v57;
      *v53 = v57;
      v59 = v50;
      _os_log_impl(&_mh_execute_header, v115, v51, "%s Could not find configuration context on remote alert scene: %@", v52, 0x16u);
      sub_100006CEC(v53, &qword_100022FE0, &qword_1000130D0);

      sub_1000067B8(v54);

      return;
    }
  }

  else
  {
    if (qword_100022B30 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005F58(v39, static AISLogger.uiService);
    v40 = a1;
    v115 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v121[0] = v43;
      *v42 = 136315138;
      swift_getObjectType();
      v44 = _typeName(_:qualified:)();
      v46 = sub_10000FA60(v44, v45, v121);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v115, v41, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v42, 0xCu);
      sub_1000067B8(v43);

      return;
    }
  }

  v60 = v115;
}

void sub_10001128C()
{
  v1 = v0;
  v2 = type metadata accessor for PresentationRequest();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v23 - v8;
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005F58(v12, static AISLogger.uiService);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "RemoteAlertSceneDelegate: sceneDidBecomeActive", v15, 2u);
  }

  v16 = *(v1 + OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_window);
  if (v16)
  {
    v17 = [v16 rootViewController];
    if (v17)
    {
      v25 = v17;
      type metadata accessor for RemoteAlertRootViewController();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        v19 = [v18 presentedViewController];
        if (!v19)
        {
          v21 = OBJC_IVAR____TtC21AppleIDSetupUIService24RemoteAlertSceneDelegate_presentationRequest;
          swift_beginAccess();
          sub_1000065C4(v1 + v21, v11);
          sub_100006628(v11, v9);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          sub_10000624C(v9);
          if (EnumCaseMultiPayload == 5)
          {
          }

          else
          {
            sub_1000065C4(v1 + v21, v6);
            sub_100007074(v6);

            sub_10000624C(v6);
          }

          return;
        }

        v24 = v19;

        v20 = v24;
      }

      else
      {
        v20 = v25;
      }
    }
  }
}

void sub_100011534(const char *a1)
{
  if (qword_100022B30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005F58(v2, static AISLogger.uiService);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

unint64_t sub_100011624()
{
  result = qword_100022D00;
  if (!qword_100022D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022D00);
  }

  return result;
}