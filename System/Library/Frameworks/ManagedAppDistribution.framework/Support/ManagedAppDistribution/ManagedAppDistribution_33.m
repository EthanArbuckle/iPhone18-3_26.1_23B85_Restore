id sub_10046DD04()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    if ([result isAutomaticAppUpdatesAllowed] && (objc_msgSend(v1, "isAppInstallationAllowed") & 1) != 0 && (objc_msgSend(v1, "isAutomaticAppDownloadsAllowed") & 1) != 0)
    {
      keyExistsAndHasValidFormat = 0;
      v2 = String._bridgeToObjectiveC()();
      v3 = String._bridgeToObjectiveC()();
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, &keyExistsAndHasValidFormat);

      return (AppBooleanValue || keyExistsAndHasValidFormat == 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_10046DE40(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v105 = type metadata accessor for AppInstallRequestType();
  v4 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Restore();
  v103 = *(v94 - 8);
  v6 = __chkstk_darwin(v94);
  v112 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v92 - v9;
  __chkstk_darwin(v8);
  v116 = &v92 - v11;
  v102 = type metadata accessor for LogKey.Prefix();
  v12 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Logger();
  v14 = *(v115 - 8);
  v15 = __chkstk_darwin(v115);
  v110 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = &v92 - v18;
  v19 = __chkstk_darwin(v17);
  v111 = &v92 - v20;
  __chkstk_darwin(v19);
  v22 = *(a1 + 16);
  if (v22)
  {
    v93 = &v92 - v21;
    v100 = v10;
    v119 = sub_100006190(0, &qword_100784500);
    v114 = (v14 + 8);
    v99 = (v12 + 104);
    v98 = (v4 + 104);
    v23 = (a1 + 40);
    v117 = _swiftEmptyArrayStorage;
    v97 = enum case for LogKey.Prefix.promotion(_:);
    p_name = &stru_100779FF8.name;
    v96 = enum case for AppInstallRequestType.promotion(_:);
    *&v25 = 138412546;
    v107 = v25;
    v113 = a2;
    v26 = v110;
    while (1)
    {
      v28 = *(v23 - 1);
      v27 = *v23;

      v29 = sub_10060BC54(v28, v27, 0, 0, 3);
      if (v29)
      {
        v30 = v29;
        if ([v29 p_name[127]] == 8 || objc_msgSend(v30, p_name[127]) == 7 || objc_msgSend(v30, p_name[127]) == 10)
        {
          v120 = 0;
          v31 = objc_allocWithZone(IXApplicationIdentity);
          v32 = String._bridgeToObjectiveC()();
          v33 = [v31 initWithBundleIdentifier:v32];

          if (v33)
          {

            v34 = objc_opt_self();
            v121 = 0;
            v35 = v33;
            v36 = [v34 coordinatorForAppWithIdentity:v35 withClientID:28 createIfNotExisting:1 created:&v120 error:&v121];
            if (v36)
            {
              v37 = v36;
              v118 = v30;
              v38 = v121;

              v39 = v37;
              sub_1005F735C();
              (*v99)(v101, v97, v102);
              v40 = objc_allocWithZone(ObjectType);
              v41 = LogKey.init(prefix:)();
              v42 = v104;
              (*v98)(v104, v96, v105);
              v43 = v41;
              v44 = v116;
              v108 = v43;
              v109 = v39;
              sub_1005DDA70(v39, v42, v43, v116);
              static Logger.restore.getter();
              v45 = v100;
              sub_100007CE8(v44, v100, type metadata accessor for Restore);
              v46 = a2;
              v47 = Logger.logObject.getter();
              v48 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v47, v48))
              {
                v49 = swift_slowAlloc();
                v50 = swift_slowAlloc();
                *v49 = v107;
                *(v49 + 4) = v46;
                *v50 = v113;
                *(v49 + 12) = 2112;
                v51 = *(v45 + *(v94 + 20));
                v52 = v46;
                v53 = v51;
                p_name = (&stru_100779FF8 + 8);
                v54 = v53;
                sub_1004751E8(v45, type metadata accessor for Restore);
                *(v49 + 14) = v54;
                v50[1] = v54;
                _os_log_impl(&_mh_execute_header, v47, v48, "[%@][%@] Attempting to to promote", v49, 0x16u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();
                a2 = v113;

                v26 = v110;
              }

              else
              {

                sub_1004751E8(v45, type metadata accessor for Restore);
              }

              (*v114)(v111, v115);
              sub_100007CE8(v116, v112, type metadata accessor for Restore);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v78 = v118;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v117 = sub_100363E00(0, v117[2] + 1, 1, v117);
              }

              v80 = v117[2];
              v79 = v117[3];
              if (v80 >= v79 >> 1)
              {
                v117 = sub_100363E00(v79 > 1, v80 + 1, 1, v117);
              }

              sub_1004751E8(v116, type metadata accessor for Restore);
              v81 = v117;
              v117[2] = v80 + 1;
              sub_1004640D8(v112, v81 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v80);
            }

            else
            {
              v63 = v121;

              _convertNSErrorToError(_:)();
              swift_willThrow();

              v64 = v95;
              static Logger.restore.getter();
              v65 = a2;
              swift_errorRetain();
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                v69 = swift_slowAlloc();
                v118 = swift_slowAlloc();
                v121 = v118;
                *v68 = v107;
                *(v68 + 4) = v65;
                *v69 = a2;
                *(v68 + 12) = 2080;
                ErrorValue = swift_getErrorValue();
                v109 = &v92;
                __chkstk_darwin(ErrorValue);
                (*(v72 + 16))(&v92 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
                v73 = v65;
                v74 = String.init<A>(describing:)();
                v76 = sub_1002346CC(v74, v75, &v121);

                *(v68 + 14) = v76;
                a2 = v113;
                _os_log_impl(&_mh_execute_header, v66, v67, "[%@ Failed to enumerate coordinators: %s", v68, 0x16u);
                sub_1000032A8(v69, &qword_10077F920);

                sub_10000710C(v118);

                (*v114)(v95, v115);
              }

              else
              {

                (*v114)(v64, v115);
              }

              v26 = v110;
              p_name = (&stru_100779FF8 + 8);
            }

            goto LABEL_4;
          }

          v118 = v30;
          static Logger.restore.getter();

          v55 = a2;
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v121 = v60;
            *v58 = v107;
            *(v58 + 4) = v55;
            *v59 = v113;
            *(v58 + 12) = 2082;
            v61 = v55;
            v62 = sub_1002346CC(v28, v27, &v121);

            *(v58 + 14) = v62;
            _os_log_impl(&_mh_execute_header, v56, v57, "[%@][%{public}s] Failed to create app identity", v58, 0x16u);
            sub_1000032A8(v59, &qword_10077F920);

            sub_10000710C(v60);
            a2 = v113;

            v26 = v110;
          }

          else
          {
          }

          (*v114)(v26, v115);
        }

        else
        {
          v118 = v30;
          v82 = v93;
          static Logger.restore.getter();

          v83 = a2;
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v121 = v88;
            *v86 = v107;
            *(v86 + 4) = v83;
            *v87 = v113;
            *(v86 + 12) = 2082;
            v89 = v83;
            v90 = sub_1002346CC(v28, v27, &v121);

            *(v86 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v84, v85, "[%@][%{public}s] App is not a valid promotable type", v86, 0x16u);
            sub_1000032A8(v87, &qword_10077F920);

            sub_10000710C(v88);
            a2 = v113;

            v26 = v110;

            (*v114)(v93, v115);
          }

          else
          {

            (*v114)(v82, v115);
          }
        }

        p_name = (&stru_100779FF8 + 8);
      }

      else
      {
      }

LABEL_4:
      v23 += 2;
      if (!--v22)
      {
        return v117;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10046EC1C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a4;
  *(v8 + 160) = a6;
  *(v8 + 400) = a3;
  *(v8 + 136) = a1;
  *(v8 + 144) = a2;
  sub_1001F0C48(&unk_100780A00);
  *(v8 + 168) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 176) = v12;
  *(v8 + 184) = *(v12 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 208) = v13;
  *(v8 + 216) = *(v13 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v14 = type metadata accessor for Restore();
  *(v8 + 248) = v14;
  *(v8 + 256) = *(v14 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  v15 = sub_10020A748((v8 + 16));
  (*(*(a7 - 8) + 16))(v15, a5, a7);

  return _swift_task_switch(sub_10046EE78, 0, 0);
}

uint64_t sub_10046EE78()
{
  v149 = v0;
  v1 = *(*(v0 + 136) + 16);
  *(v0 + 304) = v1;
  if (!v1)
  {
LABEL_23:
    sub_10000710C(v0 + 16);

    v95 = *(v0 + 8);

    return v95();
  }

  v2 = 0;
  *(v0 + 312) = *(*(v0 + 144) + 16);
  while (1)
  {
    *(v0 + 320) = v2;
    v9 = *(v0 + 312);
    v10 = (*(v0 + 136) + 56 * v2);
    v11 = v10[4];
    v12 = v10[5];
    v143 = v10[8];

    swift_bridgeObjectRetain_n();
    v145 = v11;
    v13 = sub_1005B7724(v11, v12);
    if (v9)
    {
      break;
    }

LABEL_14:
    v48 = *(v0 + 152);
    static Logger.restore.getter();

    v49 = v48;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    v52 = os_log_type_enabled(v50, v51);
    v53 = *(v0 + 240);
    v54 = *(v0 + 208);
    v55 = *(v0 + 216);
    if (v52)
    {
      v142 = *(v0 + 240);
      v3 = *(v0 + 152);
      v140 = *(v0 + 208);
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v148 = v6;
      *v4 = 138412546;
      *(v4 + 4) = v3;
      *v5 = v3;
      *(v4 + 12) = 2082;
      v7 = v3;

      v8 = sub_1002346CC(v145, v12, &v148);

      *(v4 + 14) = v8;
      _os_log_impl(&_mh_execute_header, v50, v51, "[%@][%{public}s] Failed to find corresponding restore", v4, 0x16u);
      sub_1000032A8(v5, &qword_10077F920);

      sub_10000710C(v6);

      (*(v55 + 8))(v142, v140);
    }

    else
    {

      (*(v55 + 8))(v53, v54);
    }

LABEL_4:
    v2 = *(v0 + 320) + 1;
    if (v2 == *(v0 + 304))
    {
      goto LABEL_23;
    }
  }

  v15 = v13;
  v16 = v14;
  v17 = 0;
  v18 = *(v0 + 256);
  v19 = *(v0 + 144) + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v20 = *(v18 + 72);
  while (1)
  {
    v22 = *(v0 + 280);
    v23 = *(v0 + 248);
    sub_100007CE8(v19, v22, type metadata accessor for Restore);
    v24 = v22 + *(v23 + 60);
    if ((*(v24 + 8) & 1) == 0 && (v16 & 1) == 0 && *v24 == v15)
    {
      break;
    }

    v21 = *(v0 + 312);
    ++v17;
    sub_1004751E8(*(v0 + 280), type metadata accessor for Restore);
    v19 += v20;
    if (v17 == v21)
    {
      goto LABEL_14;
    }
  }

  v25 = *(v0 + 288);
  v26 = *(v0 + 296);
  v27 = *(v0 + 248);
  v28 = *(v0 + 176);
  v29 = *(v0 + 184);
  v30 = *(v0 + 168);
  sub_1004640D8(*(v0 + 280), v25);
  sub_1004640D8(v25, v26);
  sub_100005934(v26 + *(v27 + 40), v30, &unk_100780A00);
  v31 = (*(v29 + 48))(v30, 1, v28);
  v32 = *(v0 + 168);
  if (v31 == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 272);
    v35 = *(v0 + 152);

    sub_1000032A8(v32, &unk_100780A00);
    static Logger.restore.getter();
    sub_100007CE8(v33, v34, type metadata accessor for Restore);
    v36 = v35;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 272);
    if (v39)
    {
      v41 = *(v0 + 248);
      v42 = *(v0 + 152);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412546;
      *(v43 + 4) = v42;
      *v44 = v42;
      *(v43 + 12) = 2112;
      v45 = *(v40 + *(v41 + 20));
      v46 = v42;
      v47 = v45;
      sub_1004751E8(v40, type metadata accessor for Restore);
      *(v43 + 14) = v47;
      v44[1] = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%@][%@] Failed to find corresponding coordinatorID", v43, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v40, type metadata accessor for Restore);
    }

    v86 = *(v0 + 296);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    sub_1004751E8(v86, type metadata accessor for Restore);
    goto LABEL_4;
  }

  v56 = *(v0 + 200);
  (*(*(v0 + 184) + 32))(v56, *(v0 + 168), *(v0 + 176));
  v57 = sub_1005F8634(v56);
  *(v0 + 328) = v57;
  if (!v57)
  {
    v58 = *(v0 + 296);
    v59 = *(v0 + 264);
    v61 = *(v0 + 192);
    v60 = *(v0 + 200);
    v62 = *(v0 + 176);
    v63 = *(v0 + 184);
    v64 = *(v0 + 152);

    static Logger.restore.getter();
    sub_100007CE8(v58, v59, type metadata accessor for Restore);
    (*(v63 + 16))(v61, v60, v62);
    v65 = v64;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 264);
    if (v68)
    {
      v70 = *(v0 + 248);
      v141 = *(v0 + 216);
      v144 = *(v0 + 208);
      v146 = *(v0 + 224);
      v147 = *(v0 + 200);
      v138 = v66;
      v72 = *(v0 + 184);
      v71 = *(v0 + 192);
      v73 = *(v0 + 176);
      v74 = *(v0 + 152);
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      log = swift_slowAlloc();
      v148 = log;
      *v75 = 138412802;
      *(v75 + 4) = v74;
      *v76 = v74;
      *(v75 + 12) = 2112;
      v77 = *(v69 + *(v70 + 20));
      v78 = v74;
      v79 = v77;
      sub_1004751E8(v69, type metadata accessor for Restore);
      *(v75 + 14) = v79;
      v76[1] = v79;
      *(v75 + 22) = 2080;
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v80 = v71;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v84 = *(v72 + 8);
      v84(v80, v73);
      v85 = sub_1002346CC(v81, v83, &v148);

      *(v75 + 24) = v85;
      _os_log_impl(&_mh_execute_header, v138, v67, "[%@][%@] Failed to find corresponding coordinator for coordinatorID: %s", v75, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(log);

      (*(v141 + 8))(v146, v144);
      v84(v147, v73);
    }

    else
    {
      v88 = *(v0 + 216);
      v87 = *(v0 + 224);
      v90 = *(v0 + 200);
      v89 = *(v0 + 208);
      v92 = *(v0 + 184);
      v91 = *(v0 + 192);
      v93 = *(v0 + 176);

      v94 = *(v92 + 8);
      v94(v91, v93);
      sub_1004751E8(v69, type metadata accessor for Restore);
      (*(v88 + 8))(v87, v89);
      v94(v90, v93);
    }

    sub_1004751E8(*(v0 + 296), type metadata accessor for Restore);
    goto LABEL_4;
  }

  v97 = 0x6E776F6E6B6E55;
  v98 = *(v0 + 296);
  v99 = *(v0 + 248);
  if (v143 == 404)
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v100 = *(v0 + 112);
    *(v0 + 88) = *(v0 + 104);
    *(v0 + 96) = v100;
    v101._countAndFlagsBits = 0xD00000000000002ALL;
    v101._object = 0x80000001006CB7E0;
    String.append(_:)(v101);
    v102 = (v98 + *(v99 + 52));
    if (v102[1])
    {
      v97 = *v102;
      v103 = v102[1];
    }

    else
    {
      v103 = 0xE700000000000000;
    }

    v108 = *(v0 + 400);

    v109._countAndFlagsBits = v97;
    v109._object = v103;
    String.append(_:)(v109);

    v110._countAndFlagsBits = 0x203A65646F6320;
    v110._object = 0xE700000000000000;
    String.append(_:)(v110);
    *(v0 + 128) = 404;
    v111._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v111);

    v112 = *(v0 + 88);
    v113 = *(v0 + 96);
    *(v0 + 336) = v112;
    *(v0 + 344) = v113;
    if (v108 == 1)
    {
      v114 = *sub_100006D8C((v0 + 16), *(v0 + 40));
      v115 = swift_task_alloc();
      *(v0 + 352) = v115;
      *v115 = v0;
      v115[1] = sub_10046FC60;
      v116 = *(v0 + 296);
      v117 = *(v0 + 152);

      return sub_100465660(v116, v117, v114);
    }

    v118 = *(v0 + 296);
    v119 = *(v0 + 248);
    sub_100473E74();
    v120 = swift_allocError();
    *(v0 + 360) = v120;
    *v121 = v112;
    *(v121 + 8) = v113;
    *(v121 + 16) = 0;
    v122 = *(v118 + *(v119 + 20));
    v123 = swift_task_alloc();
    *(v0 + 368) = v123;
    *v123 = v0;
    v123[1] = sub_10046FE50;
    v124 = *(v0 + 152);
    v125 = v120;
    v126 = v122;
  }

  else
  {
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v104 = *(v0 + 80);
    *(v0 + 56) = *(v0 + 72);
    *(v0 + 64) = v104;
    v105._object = 0x80000001006CB7B0;
    v105._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v105);
    v106 = (v98 + *(v99 + 52));
    if (v106[1])
    {
      v97 = *v106;
      v107 = v106[1];
    }

    else
    {
      v107 = 0xE700000000000000;
    }

    v127 = *(v0 + 296);
    v128 = *(v0 + 248);

    v129._countAndFlagsBits = v97;
    v129._object = v107;
    String.append(_:)(v129);

    v130._countAndFlagsBits = 0x203A65646F6320;
    v130._object = 0xE700000000000000;
    String.append(_:)(v130);
    *(v0 + 120) = v143;
    v131._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v131);

    v132 = *(v0 + 56);
    v133 = *(v0 + 64);
    sub_100473E74();
    v134 = swift_allocError();
    *(v0 + 384) = v134;
    *v135 = v132;
    *(v135 + 8) = v133;
    *(v135 + 16) = 1;
    v136 = *(v127 + *(v128 + 20));
    v137 = swift_task_alloc();
    *(v0 + 392) = v137;
    *v137 = v0;
    v137[1] = sub_100470EF0;
    v124 = *(v0 + 152);
    v125 = v134;
    v126 = v136;
  }

  return sub_100592EB0(v125, 0, 1, v124, v126);
}

uint64_t sub_10046FC60()
{

  return _swift_task_switch(sub_10046FD5C, 0, 0);
}

uint64_t sub_10046FD5C()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[37];
  v4 = v0[31];
  sub_100473E74();
  v5 = swift_allocError();
  v0[45] = v5;
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = 0;
  v7 = *(v3 + *(v4 + 20));
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_10046FE50;
  v9 = v0[19];

  return sub_100592EB0(v5, 0, 1, v9, v7);
}

uint64_t sub_10046FE50()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[47] = v3;
  *v3 = v2;
  v3[1] = sub_10046FFE0;
  v4 = v1[19];
  v5 = v1[37];

  return sub_100446FE0(v5, v4);
}

uint64_t sub_10046FFE0()
{

  return _swift_task_switch(sub_1004700DC, 0, 0);
}

uint64_t sub_1004700DC()
{
  v152 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  (*(v4 + 8))(v2, v3);
  sub_1004751E8(v1, type metadata accessor for Restore);
  v5 = *(v0 + 320) + 1;
  if (v5 == *(v0 + 304))
  {
LABEL_2:
    sub_10000710C(v0 + 16);

    v6 = *(v0 + 8);

    return v6();
  }

  while (1)
  {
    *(v0 + 320) = v5;
    v8 = *(v0 + 312);
    v9 = (*(v0 + 136) + 56 * v5);
    v10 = v9[4];
    v11 = v9[5];
    v145 = v9[8];

    swift_bridgeObjectRetain_n();
    v148 = v10;
    v12 = sub_1005B7724(v10, v11);
    if (v8)
    {
      break;
    }

LABEL_17:
    v47 = *(v0 + 152);
    static Logger.restore.getter();

    v48 = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 240);
    v53 = *(v0 + 208);
    v54 = *(v0 + 216);
    if (v51)
    {
      v146 = *(v0 + 240);
      v55 = *(v0 + 152);
      v143 = *(v0 + 208);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v151 = v58;
      *v56 = 138412546;
      *(v56 + 4) = v55;
      *v57 = v55;
      *(v56 + 12) = 2082;
      v59 = v55;

      v60 = sub_1002346CC(v148, v11, &v151);

      *(v56 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v49, v50, "[%@][%{public}s] Failed to find corresponding restore", v56, 0x16u);
      sub_1000032A8(v57, &qword_10077F920);

      sub_10000710C(v58);

      (*(v54 + 8))(v146, v143);
    }

    else
    {

      (*(v54 + 8))(v52, v53);
    }

LABEL_7:
    v5 = *(v0 + 320) + 1;
    if (v5 == *(v0 + 304))
    {
      goto LABEL_2;
    }
  }

  v14 = v12;
  v15 = v13;
  v16 = 0;
  v17 = *(v0 + 256);
  v18 = *(v0 + 144) + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  while (1)
  {
    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    sub_100007CE8(v18, v21, type metadata accessor for Restore);
    v23 = v21 + *(v22 + 60);
    if ((*(v23 + 8) & 1) == 0 && (v15 & 1) == 0 && *v23 == v14)
    {
      break;
    }

    v20 = *(v0 + 312);
    ++v16;
    sub_1004751E8(*(v0 + 280), type metadata accessor for Restore);
    v18 += v19;
    if (v16 == v20)
    {
      goto LABEL_17;
    }
  }

  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v26 = *(v0 + 248);
  v27 = *(v0 + 176);
  v28 = *(v0 + 184);
  v29 = *(v0 + 168);
  sub_1004640D8(*(v0 + 280), v24);
  sub_1004640D8(v24, v25);
  sub_100005934(v25 + *(v26 + 40), v29, &unk_100780A00);
  v30 = (*(v28 + 48))(v29, 1, v27);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    v32 = *(v0 + 296);
    v33 = *(v0 + 272);
    v34 = *(v0 + 152);

    sub_1000032A8(v31, &unk_100780A00);
    static Logger.restore.getter();
    sub_100007CE8(v32, v33, type metadata accessor for Restore);
    v35 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 272);
    if (v38)
    {
      v40 = *(v0 + 248);
      v41 = *(v0 + 152);
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412546;
      *(v42 + 4) = v41;
      *v43 = v41;
      *(v42 + 12) = 2112;
      v44 = *(v39 + *(v40 + 20));
      v45 = v41;
      v46 = v44;
      sub_1004751E8(v39, type metadata accessor for Restore);
      *(v42 + 14) = v46;
      v43[1] = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@][%@] Failed to find corresponding coordinatorID", v42, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v39, type metadata accessor for Restore);
    }

    v91 = *(v0 + 296);
    (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
    sub_1004751E8(v91, type metadata accessor for Restore);
    goto LABEL_7;
  }

  v61 = *(v0 + 200);
  (*(*(v0 + 184) + 32))(v61, *(v0 + 168), *(v0 + 176));
  v62 = sub_1005F8634(v61);
  *(v0 + 328) = v62;
  if (!v62)
  {
    v63 = *(v0 + 296);
    v64 = *(v0 + 264);
    v66 = *(v0 + 192);
    v65 = *(v0 + 200);
    v67 = *(v0 + 176);
    v68 = *(v0 + 184);
    v69 = *(v0 + 152);

    static Logger.restore.getter();
    sub_100007CE8(v63, v64, type metadata accessor for Restore);
    (*(v68 + 16))(v66, v65, v67);
    v70 = v69;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 264);
    if (v73)
    {
      v75 = *(v0 + 248);
      v144 = *(v0 + 216);
      v147 = *(v0 + 208);
      v149 = *(v0 + 224);
      v150 = *(v0 + 200);
      v141 = v71;
      v77 = *(v0 + 184);
      v76 = *(v0 + 192);
      v78 = *(v0 + 176);
      v79 = *(v0 + 152);
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      log = swift_slowAlloc();
      v151 = log;
      *v80 = 138412802;
      *(v80 + 4) = v79;
      *v81 = v79;
      *(v80 + 12) = 2112;
      v82 = *(v74 + *(v75 + 20));
      v83 = v79;
      v84 = v82;
      sub_1004751E8(v74, type metadata accessor for Restore);
      *(v80 + 14) = v84;
      v81[1] = v84;
      *(v80 + 22) = 2080;
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v85 = v76;
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      v89 = *(v77 + 8);
      v89(v85, v78);
      v90 = sub_1002346CC(v86, v88, &v151);

      *(v80 + 24) = v90;
      _os_log_impl(&_mh_execute_header, v141, v72, "[%@][%@] Failed to find corresponding coordinator for coordinatorID: %s", v80, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(log);

      (*(v144 + 8))(v149, v147);
      v89(v150, v78);
    }

    else
    {
      v93 = *(v0 + 216);
      v92 = *(v0 + 224);
      v95 = *(v0 + 200);
      v94 = *(v0 + 208);
      v97 = *(v0 + 184);
      v96 = *(v0 + 192);
      v98 = *(v0 + 176);

      v99 = *(v97 + 8);
      v99(v96, v98);
      sub_1004751E8(v74, type metadata accessor for Restore);
      (*(v93 + 8))(v92, v94);
      v99(v95, v98);
    }

    sub_1004751E8(*(v0 + 296), type metadata accessor for Restore);
    goto LABEL_7;
  }

  v100 = 0x6E776F6E6B6E55;
  v101 = *(v0 + 296);
  v102 = *(v0 + 248);
  if (v145 == 404)
  {
    *(v0 + 104) = 0;
    *(v0 + 112) = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v103 = *(v0 + 112);
    *(v0 + 88) = *(v0 + 104);
    *(v0 + 96) = v103;
    v104._countAndFlagsBits = 0xD00000000000002ALL;
    v104._object = 0x80000001006CB7E0;
    String.append(_:)(v104);
    v105 = (v101 + *(v102 + 52));
    if (v105[1])
    {
      v100 = *v105;
      v106 = v105[1];
    }

    else
    {
      v106 = 0xE700000000000000;
    }

    v111 = *(v0 + 400);

    v112._countAndFlagsBits = v100;
    v112._object = v106;
    String.append(_:)(v112);

    v113._countAndFlagsBits = 0x203A65646F6320;
    v113._object = 0xE700000000000000;
    String.append(_:)(v113);
    *(v0 + 128) = 404;
    v114._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v114);

    v115 = *(v0 + 88);
    v116 = *(v0 + 96);
    *(v0 + 336) = v115;
    *(v0 + 344) = v116;
    if (v111 == 1)
    {
      v117 = *sub_100006D8C((v0 + 16), *(v0 + 40));
      v118 = swift_task_alloc();
      *(v0 + 352) = v118;
      *v118 = v0;
      v118[1] = sub_10046FC60;
      v119 = *(v0 + 296);
      v120 = *(v0 + 152);

      return sub_100465660(v119, v120, v117);
    }

    v121 = *(v0 + 296);
    v122 = *(v0 + 248);
    sub_100473E74();
    v123 = swift_allocError();
    *(v0 + 360) = v123;
    *v124 = v115;
    *(v124 + 8) = v116;
    *(v124 + 16) = 0;
    v125 = *(v121 + *(v122 + 20));
    v126 = swift_task_alloc();
    *(v0 + 368) = v126;
    *v126 = v0;
    v126[1] = sub_10046FE50;
    v127 = *(v0 + 152);
    v128 = v123;
    v129 = v125;
  }

  else
  {
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v107 = *(v0 + 80);
    *(v0 + 56) = *(v0 + 72);
    *(v0 + 64) = v107;
    v108._object = 0x80000001006CB7B0;
    v108._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v108);
    v109 = (v101 + *(v102 + 52));
    if (v109[1])
    {
      v100 = *v109;
      v110 = v109[1];
    }

    else
    {
      v110 = 0xE700000000000000;
    }

    v130 = *(v0 + 296);
    v131 = *(v0 + 248);

    v132._countAndFlagsBits = v100;
    v132._object = v110;
    String.append(_:)(v132);

    v133._countAndFlagsBits = 0x203A65646F6320;
    v133._object = 0xE700000000000000;
    String.append(_:)(v133);
    *(v0 + 120) = v145;
    v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v134);

    v135 = *(v0 + 56);
    v136 = *(v0 + 64);
    sub_100473E74();
    v137 = swift_allocError();
    *(v0 + 384) = v137;
    *v138 = v135;
    *(v138 + 8) = v136;
    *(v138 + 16) = 1;
    v139 = *(v130 + *(v131 + 20));
    v140 = swift_task_alloc();
    *(v0 + 392) = v140;
    *v140 = v0;
    v140[1] = sub_100470EF0;
    v127 = *(v0 + 152);
    v128 = v137;
    v129 = v139;
  }

  return sub_100592EB0(v128, 0, 1, v127, v129);
}

uint64_t sub_100470EF0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[47] = v3;
  *v3 = v2;
  v3[1] = sub_10046FFE0;
  v4 = v1[19];
  v5 = v1[37];

  return sub_100446FE0(v5, v4);
}

uint64_t sub_100471080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for Logger();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for Restore();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return _swift_task_switch(sub_1004712FC, 0, 0);
}

uint64_t sub_1004712FC()
{
  v1 = sub_1001F0C48(&qword_100784318);
  v2 = sub_1001F0C48(&qword_100784320);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_10047142C;
  v4 = *(v0 + 64);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v1, v2, 0, 0, &unk_1006AC2E8, v4, v1);
}

uint64_t sub_10047142C()
{

  return _swift_task_switch(sub_100471554, 0, 0);
}

uint64_t sub_100471554()
{
  v208 = v1;
  v2 = *(v1 + 16);
  *(v1 + 264) = v2;
  if (!*(v2 + 16))
  {
    v107 = *(v1 + 56);

    static Logger.restore.getter();
    v108 = v107;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = *(v1 + 56);
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v112 = 138412290;
      *(v112 + 4) = v111;
      *v113 = v111;
      v114 = v111;
      _os_log_impl(&_mh_execute_header, v109, v110, "[%@] No active restores found", v112, 0xCu);
      sub_1000032A8(v113, &qword_10077F920);
    }

    v115 = *(v1 + 96);
    v116 = *(v1 + 72);
    v117 = *(v1 + 80);

    (*(v117 + 8))(v115, v116);
    goto LABEL_47;
  }

  v3 = *(v2 + 32);
  *(v1 + 320) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  if (!v6)
  {
LABEL_7:
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v8 = *(v1 + 264);
      if (v9 >= (((1 << *(v1 + 320)) + 63) >> 6))
      {
        v85 = *(v1 + 56);

        static Logger.restore.getter();

        v86 = v85;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();

        v89 = os_log_type_enabled(v87, v88);
        v90 = *(v1 + 264);
        v91 = *(v1 + 104);
        v92 = *(v1 + 72);
        v93 = (*(v1 + 80) + 8);
        if (v89)
        {
          v94 = *(v1 + 56);
          v201 = *(v1 + 72);
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v205 = v97;
          *v95 = 138412546;
          *(v95 + 4) = v94;
          *v96 = v94;
          *(v95 + 12) = 2082;
          v203 = v91;
          v98 = *(v90 + 16);
          v99 = v94;

          *(v1 + 32) = v98;
          v206 = dispatch thunk of CustomStringConvertible.description.getter();
          v207 = v100;
          v101 = 0xE100000000000000;
          v102._countAndFlagsBits = 32;
          v102._object = 0xE100000000000000;
          String.append(_:)(v102);
          v103._countAndFlagsBits = 0x65726F74736572;
          v103._object = 0xE700000000000000;
          String.append(_:)(v103);
          if (v98 == 1)
          {
            v104 = 0;
          }

          else
          {
            v104 = 115;
          }

          if (v98 == 1)
          {
            v101 = 0xE000000000000000;
          }

          v105 = v101;
          String.append(_:)(*&v104);

          v106 = sub_1002346CC(v206, v207, &v205);

          *(v95 + 14) = v106;
          _os_log_impl(&_mh_execute_header, v87, v88, "[%@] Failing %{public}s", v95, 0x16u);
          sub_1000032A8(v96, &qword_10077F920);

          sub_10000710C(v97);

          (*v93)(v203, v201);
        }

        else
        {

          (*v93)(v91, v92);
        }

LABEL_47:

        v118 = *(v1 + 8);

        return v118();
      }

      v6 = *(v8 + 8 * v9 + 64);
      ++v7;
      if (v6)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  while (1)
  {
    while (1)
    {
      v8 = *(v1 + 264);
LABEL_11:
      *(v1 + 272) = v6;
      *(v1 + 280) = v7;
      v10 = *(v1 + 240);
      v0 = *(v1 + 248);
      v11 = *(v1 + 192);
      sub_100007CE8(*(v8 + 56) + *(*(v1 + 200) + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), v0, type metadata accessor for Restore);
      sub_1004640D8(v0, v10);
      if (*(v10 + *(v11 + 44)) == 2)
      {
        break;
      }

      sub_1004751E8(*(v1 + 240), type metadata accessor for Restore);
      v7 = *(v1 + 280);
      v6 = (*(v1 + 272) - 1) & *(v1 + 272);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v12 = *(v1 + 48);
    v0 = *(v1 + 240);
    v13 = *(v1 + 192);
    if (!v12)
    {
      break;
    }

    v14 = (&v0->isa + v13[9]);
    if (*v14 == *(v1 + 40) && v12 == v14[1])
    {
      break;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v0 = *(v1 + 240);
      v13 = *(v1 + 192);
      break;
    }

LABEL_34:
    v6 &= v6 - 1;
    sub_1004751E8(*(v1 + 240), type metadata accessor for Restore);
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!*(&v0[1].isa + v13[13]))
  {
    v33 = *(v1 + 216);
    v34 = *(v1 + 56);
    static Logger.restore.getter();
    sub_100007CE8(v0, v33, type metadata accessor for Restore);
    v35 = v34;
    v0 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    v37 = os_log_type_enabled(v0, v36);
    v38 = *(v1 + 216);
    if (v37)
    {
      v39 = *(v1 + 192);
      v187 = *(v1 + 80);
      v191 = *(v1 + 72);
      v196 = *(v1 + 112);
      v40 = *(v1 + 56);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v206 = v43;
      *v41 = 138412546;
      *(v41 + 4) = v40;
      *v42 = v40;
      *(v41 + 12) = 2080;
      v44 = (v38 + *(v39 + 36));
      v45 = v44[1];
      v181 = *v44;
      v184 = v43;
      v46 = v40;

      sub_1004751E8(v38, type metadata accessor for Restore);
      v47 = sub_1002346CC(v181, v45, &v206);

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v0, v36, "[%@] Could not find distributorID for bundleID: %s", v41, 0x16u);
      sub_1000032A8(v42, &qword_10077F920);

      sub_10000710C(v184);

      (*(v187 + 8))(v196, v191);
    }

    else
    {
      v75 = *(v1 + 112);
      v76 = *(v1 + 72);
      v77 = *(v1 + 80);

      sub_1004751E8(v38, type metadata accessor for Restore);
      (*(v77 + 8))(v75, v76);
    }

    goto LABEL_34;
  }

  v16 = *(v1 + 152);
  v17 = *(v1 + 160);
  v18 = *(v1 + 144);
  sub_100005934(v0 + v13[10], v18, &unk_100780A00);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    v19 = *(v1 + 240);
    v20 = *(v1 + 224);
    v21 = *(v1 + 56);
    sub_1000032A8(*(v1 + 144), &unk_100780A00);
    static Logger.restore.getter();
    sub_100007CE8(v19, v20, type metadata accessor for Restore);
    v22 = v21;
    v0 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v0, v23);
    v25 = *(v1 + 224);
    if (v24)
    {
      v26 = *(v1 + 192);
      v27 = *(v1 + 56);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      *(v28 + 4) = v27;
      *v29 = v27;
      *(v28 + 12) = 2112;
      v30 = *(v25 + *(v26 + 20));
      v31 = v27;
      v32 = v30;
      sub_1004751E8(v25, type metadata accessor for Restore);
      *(v28 + 14) = v32;
      v29[1] = v32;
      _os_log_impl(&_mh_execute_header, v0, v23, "[%@][%@] Failed to find corresponding coordinatorID", v28, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v25, type metadata accessor for Restore);
    }

    (*(*(v1 + 80) + 8))(*(v1 + 120), *(v1 + 72));
    goto LABEL_34;
  }

  v48 = *(v1 + 184);
  (*(*(v1 + 160) + 32))(v48, *(v1 + 144), *(v1 + 152));
  v49 = sub_1005F8634(v48);
  *(v1 + 288) = v49;
  if (!v49)
  {
    v50 = *(v1 + 232);
    v51 = *(v1 + 240);
    v53 = *(v1 + 176);
    v52 = *(v1 + 184);
    v54 = *(v1 + 152);
    v55 = *(v1 + 160);
    v197 = *(v1 + 56);
    static Logger.restore.getter();
    sub_100007CE8(v51, v50, type metadata accessor for Restore);
    (*(v55 + 16))(v53, v52, v54);
    v56 = v197;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v1 + 232);
    if (v59)
    {
      v61 = *(v1 + 192);
      v62 = *(v1 + 176);
      v63 = *(v1 + 152);
      v177 = *(v1 + 160);
      v192 = *(v1 + 128);
      v198 = *(v1 + 184);
      v185 = *(v1 + 80);
      v188 = *(v1 + 72);
      v178 = v58;
      v64 = *(v1 + 56);
      log = v57;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v206 = v182;
      *v65 = 138412802;
      *(v65 + 4) = v64;
      *v66 = v64;
      *(v65 + 12) = 2112;
      v67 = *(v60 + *(v61 + 20));
      v68 = v64;
      v69 = v67;
      sub_1004751E8(v60, type metadata accessor for Restore);
      *(v65 + 14) = v69;
      v66[1] = v69;
      *(v65 + 22) = 2080;
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = *(v177 + 8);
      v73(v62, v63);
      v74 = sub_1002346CC(v70, v72, &v206);

      *(v65 + 24) = v74;
      v0 = log;
      _os_log_impl(&_mh_execute_header, log, v178, "[%@][%@] Failed to find corresponding coordinator for coordinatorID: %s", v65, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v182);

      (*(v185 + 8))(v192, v188);
      v73(v198, v63);
    }

    else
    {
      v78 = *(v1 + 176);
      v79 = *(v1 + 152);
      v80 = *(v1 + 160);
      v193 = *(v1 + 128);
      v199 = *(v1 + 184);
      v82 = *(v1 + 72);
      v81 = *(v1 + 80);

      v83 = *(v80 + 8);
      v83(v78, v79);
      sub_1004751E8(v60, type metadata accessor for Restore);
      isa = v81[1].isa;
      v0 = v81 + 1;
      isa(v193, v82);
      v83(v199, v79);
    }

    goto LABEL_34;
  }

  v120 = v49;
  v121 = *(v1 + 56);
  static Logger.restore.getter();
  v122 = v121;
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = *(v1 + 56);
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *v126 = 138412290;
    *(v126 + 4) = v125;
    *v127 = v125;
    v128 = v125;
    _os_log_impl(&_mh_execute_header, v123, v124, "[%@] Soft failing", v126, 0xCu);
    sub_1000032A8(v127, &qword_10077F920);
  }

  v129 = *(v1 + 136);
  v130 = *(v1 + 72);
  v131 = *(v1 + 80);

  v132 = *(v131 + 8);
  v132(v129, v130);
  objc_opt_self();
  v133 = swift_dynamicCastObjCClass();
  sub_100473E74();
  v0 = swift_allocError();
  *(v1 + 296) = v0;
  *v134 = 0;
  *(v134 + 8) = 0;
  *(v134 + 16) = 2;
  if (!v133)
  {
LABEL_56:
    v140 = *(*(v1 + 240) + *(*(v1 + 192) + 20));
    v141 = swift_task_alloc();
    *(v1 + 304) = v141;
    *v141 = v1;
    v141[1] = sub_100472904;
    v142 = *(v1 + 56);

    return sub_100592EB0(v0, 0, 0, v142, v140);
  }

  v135 = v120;
  v136 = _convertErrorToNSError(_:)();

  *(v1 + 24) = 0;
  v137 = [v133 cancelForReason:v136 client:28 error:v1 + 24];

  v138 = *(v1 + 24);
  if (v137)
  {
    v139 = v138;
  }

  else
  {
    v202 = v135;
    v204 = v132;
    v143 = *(v1 + 240);
    v144 = *(v1 + 208);
    v145 = *(v1 + 160);
    v189 = *(v1 + 168);
    v194 = *(v1 + 184);
    v146 = *(v1 + 152);
    v200 = *(v1 + 56);
    v147 = v138;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.restore.getter();
    sub_100007CE8(v143, v144, type metadata accessor for Restore);
    (*(v145 + 16))(v189, v194, v146);
    v148 = v200;
    swift_errorRetain();
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();

    v151 = os_log_type_enabled(v149, v150);
    v152 = *(v1 + 208);
    if (v151)
    {
      v153 = *(v1 + 192);
      v154 = *(v1 + 160);
      loga = *(v1 + 168);
      v155 = *(v1 + 152);
      v190 = *(v1 + 72);
      v195 = *(v1 + 88);
      v156 = *(v1 + 56);
      v157 = swift_slowAlloc();
      v183 = v150;
      v158 = swift_slowAlloc();
      v186 = swift_slowAlloc();
      v206 = v186;
      *v157 = 138413058;
      *(v157 + 4) = v156;
      *v158 = v156;
      *(v157 + 12) = 2112;
      v159 = *(v152 + *(v153 + 20));
      v160 = v156;
      v161 = v159;
      sub_1004751E8(v152, type metadata accessor for Restore);
      *(v157 + 14) = v161;
      v158[1] = v161;
      *(v157 + 22) = 2080;
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v164 = v163;
      (*(v154 + 8))(loga, v155);
      v165 = sub_1002346CC(v162, v164, &v206);

      *(v157 + 24) = v165;
      *(v157 + 32) = 2112;
      swift_errorRetain();
      v166 = _swift_stdlib_bridgeErrorToNSError();
      *(v157 + 34) = v166;
      v158[2] = v166;
      _os_log_impl(&_mh_execute_header, v149, v183, "[%@][%@] Failed to cancel coordinator coordinatorID: %s due to error: %@", v157, 0x2Au);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v186);

      v168 = v190;
      v167 = v195;
    }

    else
    {
      v170 = *(v1 + 160);
      v169 = *(v1 + 168);
      v171 = *(v1 + 152);
      v172 = *(v1 + 88);
      v173 = *(v1 + 72);

      (*(v170 + 8))(v169, v171);
      sub_1004751E8(v152, type metadata accessor for Restore);
      v167 = v172;
      v168 = v173;
    }

    v204(v167, v168);
  }

  v174 = swift_task_alloc();
  *(v1 + 312) = v174;
  *v174 = v1;
  v174[1] = sub_100472AC0;
  v175 = *(v1 + 240);
  v176 = *(v1 + 56);

  return sub_100446FE0(v175, v176);
}

uint64_t sub_100472904()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[39] = v3;
  *v3 = v2;
  v3[1] = sub_100472AC0;
  v4 = v1[7];
  v5 = v1[30];

  return sub_100446FE0(v5, v4);
}

uint64_t sub_100472AC0()
{

  return _swift_task_switch(sub_100472BE8, 0, 0);
}

uint64_t sub_100472BE8()
{
  v196 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);
LABEL_2:
  sub_1004751E8(*(v0 + 240), type metadata accessor for Restore);
  v4 = *(v0 + 280);
  v5 = (*(v0 + 272) - 1) & *(v0 + 272);
  while (v5)
  {
    v9 = *(v0 + 264);
LABEL_11:
    *(v0 + 272) = v5;
    *(v0 + 280) = v4;
    v11 = *(v0 + 240);
    v1 = *(v0 + 248);
    v12 = *(v0 + 192);
    v13 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100007CE8(*(v9 + 56) + *(*(v0 + 200) + 72) * (v13 | (v4 << 6)), v1, type metadata accessor for Restore);
    sub_1004640D8(v1, v11);
    if (*(v11 + *(v12 + 44)) != 2)
    {
      goto LABEL_2;
    }

    v14 = *(v0 + 48);
    v1 = *(v0 + 240);
    v15 = *(v0 + 192);
    if (v14)
    {
      v16 = (&v1->isa + v15[9]);
      if (*v16 != *(v0 + 40) || v14 != v16[1])
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_4;
        }

        v1 = *(v0 + 240);
        v15 = *(v0 + 192);
      }
    }

    if (*(&v1[1].isa + v15[13]))
    {
      v18 = *(v0 + 152);
      v19 = *(v0 + 160);
      v20 = *(v0 + 144);
      sub_100005934(v1 + v15[10], v20, &unk_100780A00);
      if ((*(v19 + 48))(v20, 1, v18) == 1)
      {
        v21 = *(v0 + 240);
        v22 = *(v0 + 224);
        v23 = *(v0 + 56);
        sub_1000032A8(*(v0 + 144), &unk_100780A00);
        static Logger.restore.getter();
        sub_100007CE8(v21, v22, type metadata accessor for Restore);
        v24 = v23;
        v1 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        v26 = os_log_type_enabled(v1, v25);
        v27 = *(v0 + 224);
        if (v26)
        {
          v28 = *(v0 + 192);
          v29 = *(v0 + 56);
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412546;
          *(v30 + 4) = v29;
          *v31 = v29;
          *(v30 + 12) = 2112;
          v32 = *(v27 + *(v28 + 20));
          v33 = v29;
          v34 = v32;
          sub_1004751E8(v27, type metadata accessor for Restore);
          *(v30 + 14) = v34;
          v31[1] = v34;
          _os_log_impl(&_mh_execute_header, v1, v25, "[%@][%@] Failed to find corresponding coordinatorID", v30, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        else
        {

          sub_1004751E8(v27, type metadata accessor for Restore);
        }

        (*(*(v0 + 80) + 8))(*(v0 + 120), *(v0 + 72));
      }

      else
      {
        v50 = *(v0 + 184);
        (*(*(v0 + 160) + 32))(v50, *(v0 + 144), *(v0 + 152));
        v51 = sub_1005F8634(v50);
        *(v0 + 288) = v51;
        if (v51)
        {
          v108 = v51;
          v109 = *(v0 + 56);
          static Logger.restore.getter();
          v110 = v109;
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v111, v112))
          {
            v113 = *(v0 + 56);
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            *v114 = 138412290;
            *(v114 + 4) = v113;
            *v115 = v113;
            v116 = v113;
            _os_log_impl(&_mh_execute_header, v111, v112, "[%@] Soft failing", v114, 0xCu);
            sub_1000032A8(v115, &qword_10077F920);
          }

          v117 = *(v0 + 136);
          v118 = *(v0 + 72);
          v119 = *(v0 + 80);

          v120 = *(v119 + 8);
          v120(v117, v118);
          objc_opt_self();
          v121 = swift_dynamicCastObjCClass();
          sub_100473E74();
          v1 = swift_allocError();
          *(v0 + 296) = v1;
          *v122 = 0;
          *(v122 + 8) = 0;
          *(v122 + 16) = 2;
          if (v121)
          {
            v123 = v108;
            v124 = _convertErrorToNSError(_:)();

            *(v0 + 24) = 0;
            v125 = [v121 cancelForReason:v124 client:28 error:v0 + 24];

            v126 = *(v0 + 24);
            if (v125)
            {
              v127 = v126;
            }

            else
            {
              v190 = v123;
              v192 = v120;
              v131 = *(v0 + 240);
              v132 = *(v0 + 208);
              v133 = *(v0 + 160);
              v177 = *(v0 + 168);
              v182 = *(v0 + 184);
              v134 = *(v0 + 152);
              v184 = *(v0 + 56);
              v135 = v126;
              _convertNSErrorToError(_:)();

              swift_willThrow();
              static Logger.restore.getter();
              sub_100007CE8(v131, v132, type metadata accessor for Restore);
              (*(v133 + 16))(v177, v182, v134);
              v136 = v184;
              swift_errorRetain();
              v137 = Logger.logObject.getter();
              v138 = static os_log_type_t.error.getter();

              v139 = os_log_type_enabled(v137, v138);
              v140 = *(v0 + 208);
              if (v139)
              {
                v141 = *(v0 + 192);
                v142 = *(v0 + 160);
                loga = *(v0 + 168);
                v143 = *(v0 + 152);
                v178 = *(v0 + 72);
                v183 = *(v0 + 88);
                v144 = *(v0 + 56);
                v145 = swift_slowAlloc();
                v171 = v138;
                v146 = swift_slowAlloc();
                v174 = swift_slowAlloc();
                v194 = v174;
                *v145 = 138413058;
                *(v145 + 4) = v144;
                *v146 = v144;
                *(v145 + 12) = 2112;
                v147 = *(v140 + *(v141 + 20));
                v148 = v144;
                v149 = v147;
                sub_1004751E8(v140, type metadata accessor for Restore);
                *(v145 + 14) = v149;
                v146[1] = v149;
                *(v145 + 22) = 2080;
                sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
                v150 = dispatch thunk of CustomStringConvertible.description.getter();
                v152 = v151;
                (*(v142 + 8))(loga, v143);
                v153 = sub_1002346CC(v150, v152, &v194);

                *(v145 + 24) = v153;
                *(v145 + 32) = 2112;
                swift_errorRetain();
                v154 = _swift_stdlib_bridgeErrorToNSError();
                *(v145 + 34) = v154;
                v146[2] = v154;
                _os_log_impl(&_mh_execute_header, v137, v171, "[%@][%@] Failed to cancel coordinator coordinatorID: %s due to error: %@", v145, 0x2Au);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();

                sub_10000710C(v174);

                v156 = v178;
                v155 = v183;
              }

              else
              {
                v158 = *(v0 + 160);
                v157 = *(v0 + 168);
                v159 = *(v0 + 152);
                v160 = *(v0 + 88);
                v161 = *(v0 + 72);

                (*(v158 + 8))(v157, v159);
                sub_1004751E8(v140, type metadata accessor for Restore);
                v155 = v160;
                v156 = v161;
              }

              v192(v155, v156);
            }

            v162 = swift_task_alloc();
            *(v0 + 312) = v162;
            *v162 = v0;
            v162[1] = sub_100472AC0;
            v163 = *(v0 + 240);
            v164 = *(v0 + 56);

            return sub_100446FE0(v163, v164);
          }

          else
          {
LABEL_48:
            v128 = *(*(v0 + 240) + *(*(v0 + 192) + 20));
            v129 = swift_task_alloc();
            *(v0 + 304) = v129;
            *v129 = v0;
            v129[1] = sub_100472904;
            v130 = *(v0 + 56);

            return sub_100592EB0(v1, 0, 0, v130, v128);
          }
        }

        v52 = *(v0 + 232);
        v53 = *(v0 + 240);
        v55 = *(v0 + 176);
        v54 = *(v0 + 184);
        v56 = *(v0 + 152);
        v57 = *(v0 + 160);
        v186 = *(v0 + 56);
        static Logger.restore.getter();
        sub_100007CE8(v53, v52, type metadata accessor for Restore);
        (*(v57 + 16))(v55, v54, v56);
        v58 = v186;
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();

        v61 = os_log_type_enabled(v59, v60);
        v62 = *(v0 + 232);
        if (v61)
        {
          v63 = *(v0 + 192);
          v187 = *(v0 + 184);
          v64 = *(v0 + 176);
          v65 = *(v0 + 152);
          v165 = *(v0 + 160);
          v173 = *(v0 + 80);
          v176 = *(v0 + 72);
          v180 = *(v0 + 128);
          v166 = v60;
          v66 = *(v0 + 56);
          log = v59;
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v194 = v170;
          *v67 = 138412802;
          *(v67 + 4) = v66;
          *v68 = v66;
          *(v67 + 12) = 2112;
          v69 = *(v62 + *(v63 + 20));
          v70 = v66;
          v71 = v69;
          sub_1004751E8(v62, type metadata accessor for Restore);
          *(v67 + 14) = v71;
          v68[1] = v71;
          *(v67 + 22) = 2080;
          sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
          v72 = dispatch thunk of CustomStringConvertible.description.getter();
          v74 = v73;
          v75 = *(v165 + 8);
          v75(v64, v65);
          v76 = sub_1002346CC(v72, v74, &v194);

          *(v67 + 24) = v76;
          v1 = log;
          _os_log_impl(&_mh_execute_header, log, v166, "[%@][%@] Failed to find corresponding coordinator for coordinatorID: %s", v67, 0x20u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();

          sub_10000710C(v170);

          (*(v173 + 8))(v180, v176);
          v75(v187, v65);
        }

        else
        {
          v77 = *(v0 + 176);
          v188 = *(v0 + 184);
          v78 = *(v0 + 152);
          v79 = *(v0 + 160);
          v181 = *(v0 + 128);
          v81 = *(v0 + 72);
          v80 = *(v0 + 80);

          v82 = *(v79 + 8);
          v82(v77, v78);
          sub_1004751E8(v62, type metadata accessor for Restore);
          isa = v80[1].isa;
          v1 = v80 + 1;
          isa(v181, v81);
          v82(v188, v78);
        }
      }
    }

    else
    {
      v35 = *(v0 + 216);
      v36 = *(v0 + 56);
      static Logger.restore.getter();
      sub_100007CE8(v1, v35, type metadata accessor for Restore);
      v37 = v36;
      v1 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      v39 = os_log_type_enabled(v1, v38);
      v40 = *(v0 + 216);
      if (v39)
      {
        v41 = *(v0 + 192);
        v185 = *(v0 + 112);
        v175 = *(v0 + 80);
        v179 = *(v0 + 72);
        v42 = *(v0 + 56);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v194 = v45;
        *v43 = 138412546;
        *(v43 + 4) = v42;
        *v44 = v42;
        *(v43 + 12) = 2080;
        v46 = (v40 + *(v41 + 36));
        v47 = v46[1];
        v169 = *v46;
        v172 = v45;
        v48 = v42;

        sub_1004751E8(v40, type metadata accessor for Restore);
        v49 = sub_1002346CC(v169, v47, &v194);

        *(v43 + 14) = v49;
        _os_log_impl(&_mh_execute_header, v1, v38, "[%@] Could not find distributorID for bundleID: %s", v43, 0x16u);
        sub_1000032A8(v44, &qword_10077F920);

        sub_10000710C(v172);

        (*(v175 + 8))(v185, v179);
      }

      else
      {
        v6 = *(v0 + 112);
        v7 = *(v0 + 72);
        v8 = *(v0 + 80);

        sub_1004751E8(v40, type metadata accessor for Restore);
        (*(v8 + 8))(v6, v7);
      }
    }

LABEL_4:
    sub_1004751E8(*(v0 + 240), type metadata accessor for Restore);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    v9 = *(v0 + 264);
    if (v10 >= (((1 << *(v0 + 320)) + 63) >> 6))
    {
      break;
    }

    v5 = *(v9 + 8 * v10 + 64);
    ++v4;
    if (v5)
    {
      v4 = v10;
      goto LABEL_11;
    }
  }

  v84 = *(v0 + 56);

  static Logger.restore.getter();

  v85 = v84;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = *(v0 + 264);
  v90 = *(v0 + 104);
  v91 = *(v0 + 72);
  v92 = (*(v0 + 80) + 8);
  if (v88)
  {
    v93 = *(v0 + 56);
    v189 = *(v0 + 72);
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v193 = v96;
    *v94 = 138412546;
    *(v94 + 4) = v93;
    *v95 = v93;
    *(v94 + 12) = 2082;
    v191 = v90;
    v97 = *(v89 + 16);
    v98 = v93;

    *(v0 + 32) = v97;
    v194 = dispatch thunk of CustomStringConvertible.description.getter();
    v195 = v99;
    v100 = 0xE100000000000000;
    v101._countAndFlagsBits = 32;
    v101._object = 0xE100000000000000;
    String.append(_:)(v101);
    v102._countAndFlagsBits = 0x65726F74736572;
    v102._object = 0xE700000000000000;
    String.append(_:)(v102);
    if (v97 == 1)
    {
      v103 = 0;
    }

    else
    {
      v103 = 115;
    }

    if (v97 == 1)
    {
      v100 = 0xE000000000000000;
    }

    v104 = v100;
    String.append(_:)(*&v103);

    v105 = sub_1002346CC(v194, v195, &v193);

    *(v94 + 14) = v105;
    _os_log_impl(&_mh_execute_header, v86, v87, "[%@] Failing %{public}s", v94, 0x16u);
    sub_1000032A8(v95, &qword_10077F920);

    sub_10000710C(v96);

    (*v92)(v191, v189);
  }

  else
  {

    (*v92)(v90, v91);
  }

  v106 = *(v0 + 8);

  return v106();
}

unint64_t sub_100473E74()
{
  result = qword_100784368;
  if (!qword_100784368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784368);
  }

  return result;
}

uint64_t sub_100473FCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10047401C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047408C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Restore();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004740F0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Restore() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100214EFC;

  return sub_1004443AC(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_100474248(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100465450(a1, v4);
}

uint64_t sub_100474300(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100474318(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100474318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100474328(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100474338(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100474328(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100474380(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100214EFC;

  return sub_100441F78(a1, v4, v5, v6);
}

uint64_t sub_100474434(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10046522C(a1, v4);
}

uint64_t sub_1004744EC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100214EFC;

  return sub_1004621B4(a1, a2, v7, v6);
}

uint64_t sub_1004745A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100462DF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100474668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10046D184(a1, v4);
}

uint64_t sub_100474720(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_10050A0C8(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1004747E4()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 48);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10047482C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1005096F4(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1004748F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100447644(a1, v4, v5, v6, v7, v8, (v1 + 7), (v1 + 19));
}

uint64_t sub_1004749D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001F0E54;

  return sub_1004480D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100474AA8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100448968(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100474B80()
{
  swift_unknownObjectRelease();

  sub_10000710C(v0 + 48);

  sub_10000710C(v0 + 152);

  return _swift_deallocObject(v0, 249, 7);
}

uint64_t sub_100474BE0()
{
  v1 = type metadata accessor for Restore();
  v19 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v18 = (v19 + 40) & ~v19;
  v2 = v0 + v18;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v16 = *(v4 + 8);
  v16(v0 + v18, v3);

  v5 = v1[7];
  v6 = type metadata accessor for AppInstallRequestType();
  (*(*(v6 - 8) + 8))(v0 + v18 + v5, v6);
  v7 = v1[8];
  v8 = type metadata accessor for URL();
  v20 = *(v8 - 8);
  v9 = *(v20 + 48);
  if (!v9(v0 + v18 + v7, 1, v8))
  {
    (*(v20 + 8))(v2 + v7, v8);
  }

  v10 = v1[10];
  if (!(*(v4 + 48))(v2 + v10, 1, v3))
  {
    v16(v2 + v10, v3);
  }

  v11 = v1[17];
  if (!v9(v2 + v11, 1, v8))
  {
    (*(v20 + 8))(v2 + v11, v8);
  }

  v12 = v1[23];
  if (!v9(v2 + v12, 1, v8))
  {
    (*(v20 + 8))(v2 + v12, v8);
  }

  v13 = (v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  sub_10000710C(v0 + v14);

  return _swift_deallocObject(v0, v14 + 96, v19 | 7);
}

uint64_t sub_100474F3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Restore() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100214EFC;

  return sub_100449730(a1, v10, v11, v12, v1 + v6, v13, v14, v1 + v9);
}

uint64_t sub_100475094(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100350418(a1, v4);
}

uint64_t sub_10047514C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100214EFC;

  return sub_1004468D8(a1, v1);
}

uint64_t sub_1004751E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100475248(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100475264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1004752AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004752F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_100475318()
{
  result = qword_100784478;
  if (!qword_100784478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784478);
  }

  return result;
}

uint64_t sub_10047536C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_100475388()
{

  return sub_10045C030();
}

uint64_t sub_10047541C()
{
  v1 = v0;
  CoordinatorTask = type metadata accessor for CreateCoordinatorTask();
  v3 = __chkstk_darwin(CoordinatorTask);
  v197 = (&v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v195 = (&v183 - v6);
  v7 = __chkstk_darwin(v5);
  v194 = &v183 - v8;
  v9 = __chkstk_darwin(v7);
  v185 = &v183 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v183 - v12;
  v14 = __chkstk_darwin(v11);
  v190 = &v183 - v15;
  v16 = __chkstk_darwin(v14);
  v189 = &v183 - v17;
  v18 = __chkstk_darwin(v16);
  v201 = (&v183 - v19);
  v20 = __chkstk_darwin(v18);
  v193 = &v183 - v21;
  v22 = __chkstk_darwin(v20);
  v187 = (&v183 - v23);
  v24 = __chkstk_darwin(v22);
  v186 = &v183 - v25;
  __chkstk_darwin(v24);
  v27 = &v183 - v26;
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v196 = (&v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v30);
  v34 = &v183 - v33;
  v35 = __chkstk_darwin(v32);
  v188 = &v183 - v36;
  v37 = __chkstk_darwin(v35);
  v192 = &v183 - v38;
  v39 = __chkstk_darwin(v37);
  v202 = &v183 - v40;
  v41 = __chkstk_darwin(v39);
  v191 = (&v183 - v42);
  __chkstk_darwin(v41);
  v44 = &v183 - v43;
  static Logger.install.getter();
  v203 = v1;
  sub_100476704(v1, v27);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  v47 = os_log_type_enabled(v45, v46);
  v183 = v34;
  v184 = v13;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v204 = v29;
    v49 = v28;
    v50 = v48;
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = CoordinatorTask;
    v53 = *&v27[CoordinatorTask[9]];
    sub_100476768(v27);
    *(v50 + 4) = v53;
    *v51 = v53;
    CoordinatorTask = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%@] Creating coordinator", v50, 0xCu);
    sub_1001F8084(v51);

    v28 = v49;
    v29 = v204;
  }

  else
  {

    sub_100476768(v27);
  }

  v200 = *(v29 + 8);
  v200(v44, v28);
  v54 = v202;
  v55 = v203;
  v56 = *(v203 + CoordinatorTask[7]);
  v57 = *(v203 + CoordinatorTask[7]);
  v204 = v29 + 8;
  v58 = v201;
  v199 = v28;
  if (!v56)
  {
    sub_100006190(0, &qword_100784500);
    v73 = sub_10060BC54(*v55, v55[1], 0, 0, 1);
    if (v73)
    {
      v74 = v73;
      v75 = [v73 isPlaceholder];

      if (v75)
      {
        v76 = v191;
        static Logger.install.getter();
        v77 = v186;
        sub_100476704(v55, v186);
        v78 = v187;
        sub_100476704(v55, v187);
        v79 = Logger.logObject.getter();
        LODWORD(v202) = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v79, v202))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          v206 = v201;
          *v80 = 138412546;
          v82 = v78;
          v83 = *(v77 + CoordinatorTask[9]);
          sub_100476768(v77);
          *(v80 + 4) = v83;
          *v81 = v83;
          *(v80 + 12) = 2082;
          v84 = *v82;
          v85 = v82[1];

          sub_100476768(v82);
          v86 = sub_1002346CC(v84, v85, &v206);

          *(v80 + 14) = v86;
          sub_1001F8084(v81);
          v87 = v199;

          sub_10000710C(v201);
          v55 = v203;

          v200(v191, v87);
        }

        else
        {

          sub_100476768(v78);
          sub_100476768(v77);
          v200(v76, v28);
        }

        v57 = 3;
      }

      else
      {
        static Logger.install.getter();
        sub_100476704(v55, v193);
        sub_100476704(v55, v58);
        v121 = v54;
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        v191 = v122;
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          v206 = v187;
          *v124 = 138412546;
          v126 = v193;
          v127 = v58;
          v128 = *(v193 + CoordinatorTask[9]);
          sub_100476768(v126);
          *(v124 + 4) = v128;
          *v125 = v128;
          *(v124 + 12) = 2082;
          v129 = *v127;
          v130 = v127[1];

          sub_100476768(v127);
          v131 = sub_1002346CC(v129, v130, &v206);
          v55 = v203;

          *(v124 + 14) = v131;
          v132 = v191;
          sub_1001F8084(v125);
          v133 = v199;

          sub_10000710C(v187);

          v200(v202, v133);
        }

        else
        {

          sub_100476768(v58);
          sub_100476768(v193);
          v200(v121, v28);
        }

        v57 = 1;
      }
    }

    else
    {
      v57 = 0;
    }
  }

  v59 = [objc_allocWithZone(MILocationSystemDefinedCommon) init];
  v60 = *v55;
  v61 = v55[1];
  v62 = (v55 + CoordinatorTask[6]);
  v63 = *v62;
  v64 = v62[1];

  v65 = v59;
  sub_10026E620(v63, v64);
  v202 = v65;
  v66 = sub_1004767C4(v60, v61, v63, v64, v65);
  v67 = v55;
  if (!v66)
  {
    v88 = v196;
    static Logger.install.getter();
    v65 = v194;
    sub_100476704(v55, v194);
    v89 = v55;
    v90 = v195;
    sub_100476704(v89, v195);
    v91 = v197;
    sub_100476704(v67, v197);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      *v94 = 138412802;
      v96 = *(v65 + CoordinatorTask[9]);
      sub_100476768(v65);
      *(v94 + 4) = v96;
      *v95 = v96;
      v65 = 2082;
      *(v94 + 12) = 2082;
      v97 = v90;
      v98 = *v90;
      v99 = v90[1];

      sub_100476768(v97);
      v100 = sub_1002346CC(v98, v99, &v208);

      *(v94 + 14) = v100;
      *(v94 + 22) = 2082;
      v101 = v197;
      v102 = (v197 + CoordinatorTask[6]);
      v103 = v102[1];
      if (v103)
      {
        if (v103 == 1)
        {
          v104 = 0x80000001006CB8D0;
          v105 = 0xD000000000000011;
        }

        else
        {
          v151 = v197;
          v152 = *v102;
          v206 = 0x7B616E6F73726550;
          v207 = 0xE800000000000000;
          String.append(_:)(*(&v103 - 1));
          v153._countAndFlagsBits = 125;
          v153._object = 0xE100000000000000;
          String.append(_:)(v153);
          v101 = v151;
          v105 = v206;
          v104 = v207;
        }

        v150 = v199;
      }

      else
      {
        v104 = 0xED00007D656E6F4ELL;
        v150 = v199;
        v105 = 0x7B616E6F73726550;
      }

      sub_100476768(v101);
      v154 = sub_1002346CC(v105, v104, &v208);

      *(v94 + 24) = v154;
      _os_log_impl(&_mh_execute_header, v92, v93, "[%@] Unable to create an application identity for %{public}s/%{public}s", v94, 0x20u);
      sub_1001F8084(v95);

      swift_arrayDestroy();

      v119 = v196;
      v120 = v150;
    }

    else
    {

      sub_100476768(v91);
      sub_100476768(v90);
      sub_100476768(v65);
      v119 = v88;
      v120 = v199;
    }

    v200(v119, v120);
    sub_100476890();
    swift_allocError();
    *v155 = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  v68 = v66;
  v69 = *(v67 + CoordinatorTask[8]);
  v70 = v198;
  v71 = sub_1004768E4(v66, v57, v56 != 2);
  if (v70)
  {

LABEL_36:
    return v65;
  }

  v65 = v71;
  v198 = v69;
  v201 = CoordinatorTask;
  if ((v72 & 1) == 0)
  {
    v106 = v188;
    static Logger.install.getter();
    v107 = v190;
    sub_100476704(v203, v190);
    v134 = v65;
    v109 = Logger.logObject.getter();
    v135 = static os_log_type_t.default.getter();

    v136 = os_log_type_enabled(v109, v135);
    v112 = v199;
    if (v136)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v196 = v109;
      v139 = v138;
      *v137 = 138412546;
      v140 = *(v107 + v201[9]);
      v197 = v65;
      v141 = v106;
      v142 = v140;
      sub_100476768(v107);
      *(v137 + 4) = v142;
      *(v137 + 12) = 2114;
      *(v137 + 14) = v134;
      *v139 = v142;
      v139[1] = v134;
      v143 = v134;
      v144 = v196;
      _os_log_impl(&_mh_execute_header, v196, v135, "[%@] Found existing coordinator: %{public}@", v137, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      v112 = v199;

      v106 = v141;
      v65 = v197;
      goto LABEL_27;
    }

LABEL_26:

    sub_100476768(v107);
    goto LABEL_27;
  }

  v106 = v192;
  static Logger.install.getter();
  v107 = v189;
  sub_100476704(v203, v189);
  v108 = v65;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();

  v111 = os_log_type_enabled(v109, v110);
  v112 = v199;
  if (!v111)
  {
    goto LABEL_26;
  }

  v113 = swift_slowAlloc();
  v114 = swift_slowAlloc();
  v197 = v109;
  v115 = v114;
  *v113 = 138412546;
  v116 = *(v107 + v201[9]);
  sub_100476768(v107);
  *(v113 + 4) = v116;
  *(v113 + 12) = 2114;
  *(v113 + 14) = v108;
  *v115 = v116;
  v115[1] = v108;
  v106 = v192;
  v117 = v108;
  v118 = v197;
  _os_log_impl(&_mh_execute_header, v197, v110, "[%@] Created coordinator: %{public}@", v113, 0x16u);
  sub_1001F0C48(&qword_10077F920);
  swift_arrayDestroy();

  v112 = v199;

LABEL_27:
  v200(v106, v112);
  if ([v65 creatorIdentifier] != 28)
  {
    goto LABEL_46;
  }

  v145 = v112;
  v205 = &OBJC_PROTOCOL___IXCoordinatorWithImportance;
  v146 = swift_dynamicCastObjCProtocolConditional();
  if (!v146)
  {
    goto LABEL_46;
  }

  v147 = v146;
  swift_getObjectType();
  v148 = v65;
  v149 = sub_1005F748C();
  v157 = v149;
  v158 = v198;
  if (sub_1005F83DC(v149, v198))
  {
    v206 = 0;
    if ([v147 setImportance:v158 error:&v206])
    {
      v159 = v206;
LABEL_45:

LABEL_46:
      return v65;
    }

    v160 = v206;

    _convertNSErrorToError(_:)();
    swift_willThrow();

LABEL_35:
    v68 = v202;
    goto LABEL_36;
  }

  if (v158 == v157)
  {
    goto LABEL_45;
  }

  v161 = v183;
  static Logger.install.getter();
  v162 = v203;
  sub_100476704(v203, v184);
  sub_100476704(v162, v185);
  v163 = Logger.logObject.getter();
  LODWORD(v198) = static os_log_type_t.error.getter();
  v203 = v163;
  if (!os_log_type_enabled(v163, v198))
  {

    sub_100476768(v185);
    sub_100476768(v184);
    v200(v161, v145);
    return v65;
  }

  v164 = swift_slowAlloc();
  v197 = swift_slowAlloc();
  v195 = swift_slowAlloc();
  v206 = v195;
  *v164 = 138412802;
  v165 = v184;
  v166 = *&v184[v201[9]];
  sub_100476768(v165);
  *(v164 + 4) = v166;
  v197->isa = v166;
  v167 = 2082;
  v196 = v164;
  *(v164 + 12) = 2082;
  v168 = IXStringForCoordinatorImportance();
  if (v168)
  {
    v169 = v168;
    v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v172 = v171;

    v173 = sub_1002346CC(v170, v172, &v206);

    v174 = v196;
    *(&v196[1].isa + 6) = v173;
    HIWORD(v174[2].isa) = 2082;
    v167 = v185;
    v175 = IXStringForCoordinatorImportance();
    if (v175)
    {
      v176 = v175;
      v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v179 = v178;

      sub_100476768(v167);
      v180 = sub_1002346CC(v177, v179, &v206);

      v181 = v196;
      v196[3].isa = v180;
      v182 = v203;
      sub_1001F8084(v197);

      swift_arrayDestroy();

      v200(v183, v145);
      return v65;
    }
  }

  else
  {
    sub_100476768(v185);
    __break(1u);
  }

  result = sub_100476768(v167);
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CreateCoordinatorTask()
{
  result = qword_100784578;
  if (!qword_100784578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100476704(uint64_t a1, uint64_t a2)
{
  CoordinatorTask = type metadata accessor for CreateCoordinatorTask();
  (*(*(CoordinatorTask - 8) + 16))(a2, a1, CoordinatorTask);
  return a2;
}

uint64_t sub_100476768(uint64_t a1)
{
  CoordinatorTask = type metadata accessor for CreateCoordinatorTask();
  (*(*(CoordinatorTask - 8) + 8))(a1, CoordinatorTask);
  return a1;
}

id sub_1004767C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = objc_allocWithZone(IXApplicationIdentity);
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [v6 initWithBundleIdentifier:v7 personaUniqueString:v8 location:a5];

  return v9;
}

unint64_t sub_100476890()
{
  result = qword_100784490;
  if (!qword_100784490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784490);
  }

  return result;
}

id sub_1004768E4(uint64_t a1, unsigned __int8 a2, char a3)
{
  v11 = 0;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = &unk_100784400;
    }

    else
    {
      v5 = &unk_100780AA0;
    }
  }

  else if (a2)
  {
    v5 = &unk_100784508;
  }

  else
  {
    v5 = &unk_100784510;
  }

  sub_100006190(0, v5);
  v10 = 0;
  v6 = [swift_getObjCClassFromMetadata() coordinatorForAppWithIdentity:a1 withClientID:28 createIfNotExisting:a3 & 1 created:&v11 error:&v10];
  if (v6)
  {
    v7 = v6;
    v8 = v10;
  }

  else
  {
    v7 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

void sub_100476A64()
{
  sub_100476B28();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IXCoordinatorImportance(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100476B28()
{
  if (!qword_100780B48)
  {
    type metadata accessor for FilePath();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780B48);
    }
  }
}

unint64_t sub_100476B84()
{
  result = qword_1007845C8;
  if (!qword_1007845C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007845C8);
  }

  return result;
}

uint64_t sub_100476BD8(uint64_t a1, uint64_t a2)
{
  v3[162] = v2;
  v3[161] = a2;
  v3[160] = a1;
  v4 = type metadata accessor for URL();
  v3[163] = v4;
  v3[164] = *(v4 - 8);
  v3[165] = swift_task_alloc();
  v5 = type metadata accessor for AppPackage();
  v3[166] = v5;
  v3[167] = *(v5 - 8);
  v3[168] = swift_task_alloc();
  v6 = type metadata accessor for Platform();
  v3[169] = v6;
  v3[170] = *(v6 - 8);
  v3[171] = swift_task_alloc();
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v3[174] = v7;
  v3[175] = *(v7 - 8);
  v3[176] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v3[177] = swift_task_alloc();
  v3[178] = swift_task_alloc();
  v3[179] = type metadata accessor for AppInstall();
  v3[180] = swift_task_alloc();
  v3[181] = type metadata accessor for NetworkPolicy();
  v3[182] = swift_task_alloc();
  v3[183] = swift_task_alloc();
  v8 = type metadata accessor for CellularIdentity();
  v3[184] = v8;
  v9 = *(v8 - 8);
  v3[185] = v9;
  v3[186] = *(v9 + 64);
  v3[187] = swift_task_alloc();
  v3[188] = swift_task_alloc();
  v3[189] = type metadata accessor for EvaluatorDownload();
  v3[190] = swift_task_alloc();
  sub_1001F0C48(&qword_1007845D0);
  v3[191] = swift_task_alloc();
  v10 = type metadata accessor for NetworkPath();
  v3[192] = v10;
  v3[193] = *(v10 - 8);
  v3[194] = swift_task_alloc();
  v11 = sub_1001F0C48(&unk_100784B60);
  v3[195] = v11;
  v3[196] = *(v11 - 8);
  v3[197] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v3[198] = swift_task_alloc();
  v3[199] = swift_task_alloc();
  v3[200] = swift_task_alloc();
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = type metadata accessor for PlaceholderPromiseBuilder();
  v3[204] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v3[205] = swift_task_alloc();
  v3[206] = swift_task_alloc();
  v3[207] = swift_task_alloc();
  v3[208] = type metadata accessor for CreateCoordinatorTask();
  v3[209] = swift_task_alloc();
  v12 = type metadata accessor for AppInstallRequestType();
  v3[210] = v12;
  v3[211] = *(v12 - 8);
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[220] = swift_task_alloc();
  v3[221] = swift_task_alloc();
  v3[222] = type metadata accessor for AppStoreMetadata(0);
  v3[223] = swift_task_alloc();
  v3[224] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v3[225] = v13;
  v3[226] = *(v13 - 8);
  v3[227] = swift_task_alloc();
  v3[228] = swift_task_alloc();
  v3[229] = swift_task_alloc();
  v3[230] = swift_task_alloc();

  return _swift_task_switch(sub_1004772E0, 0, 0);
}

uint64_t sub_1004772E0()
{
  static Logger.install.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting preflight", v3, 2u);
  }

  v4 = *(v0 + 1840);
  v5 = *(v0 + 1808);
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1792);
  v8 = *(v0 + 1784);
  v117 = *(v0 + 1768);
  v9 = *(v0 + 1688);
  v10 = *(v0 + 1680);
  v11 = *(v0 + 1296);

  (*(v5 + 8))(v4, v6);
  v12 = type metadata accessor for AppStorePreflightTask();
  *(v0 + 1848) = v12;
  v13 = v12[5];
  *(v0 + 2024) = v13;
  v14 = v11 + v13;
  v15 = type metadata accessor for AppStoreItem(0);
  *(v0 + 1856) = v15;
  v109 = v15;
  v111 = v14;
  v16 = *(v15 + 24);
  *(v0 + 2028) = v16;
  sub_10047D364(v14 + v16, v7, type metadata accessor for AppStoreMetadata);
  sub_10047D06C();
  sub_10047D364(v7, v8, type metadata accessor for AppStoreMetadata);
  sub_10061AAE8(v8);
  v18 = v17;
  [v17 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  v19 = v11;
  swift_dynamicCast();
  v20 = *(v0 + 1256);
  *(v0 + 1864) = v20;
  v21 = v12[6];
  *(v0 + 2032) = v21;
  v22 = *(v9 + 16);
  *(v0 + 1872) = v22;
  *(v0 + 1880) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v119 = v22;
  v22(v117, v19 + v21, v10);
  v23 = *(v9 + 88);
  *(v0 + 1888) = v23;
  *(v0 + 1896) = (v9 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v115 = v23;
  v24 = v23(v117, v10);
  v25 = enum case for AppInstallRequestType.install(_:);
  *(v0 + 2036) = enum case for AppInstallRequestType.install(_:);
  if (v24 == v25)
  {
    goto LABEL_4;
  }

  if (v24 != enum case for AppInstallRequestType.automaticUpdate(_:))
  {
    if (v24 != enum case for AppInstallRequestType.update(_:))
    {
      (*(*(v0 + 1688) + 8))(*(v0 + 1768), *(v0 + 1680));
    }

LABEL_4:
    v26 = (v0 + 1760);
    v119(*(v0 + 1760), v19 + v21, *(v0 + 1680));
    v27 = 2;
LABEL_5:
    (*(*(v0 + 1688) + 8))(*v26, *(v0 + 1680));
    goto LABEL_6;
  }

  v113 = v20;
  v33 = *(v0 + 1760);
  v34 = *(v0 + 1752);
  v35 = *(v0 + 1688);
  v36 = *(v0 + 1680);
  v37 = v21;
  v38 = v19;
  v107 = v37;
  v39 = v19 + v37;
  v40 = v24;
  v119(v33, v39, v36);
  (*(v35 + 32))(v34, v33, v36);
  v41 = v115(v34, v36);
  v27 = 4;
  if (v41 == v40 || v41 == enum case for AppInstallRequestType.update(_:))
  {
    v20 = v113;
    v19 = v38;
    goto LABEL_60;
  }

  v20 = v113;
  v19 = v38;
  if (v41 == enum case for AppInstallRequestType.deviceVPPUpdate(_:))
  {
LABEL_60:
    v21 = v107;
    goto LABEL_6;
  }

  v21 = v107;
  if (v41 != enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    v26 = (v0 + 1752);
    v27 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v28 = [objc_opt_self() server];
  if (!v28)
  {
    __break(1u);
  }

  v29 = v28;
  *(v0 + 1264) = 0;
  v30 = [v28 currentGuidedAccessModeAndSessionApp:v0 + 1264];

  v31 = *(v0 + 1264);
  *(v0 + 1904) = v31;
  if (v30)
  {
    if (v31)
    {
      v32 = v31;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  else
  {
    v42 = v31;
  }

  v43 = *(v0 + 1792);
  v44 = *(v43 + *(*(v0 + 1776) + 144));
  *(v0 + 2056) = v44;
  if (v44 > 1)
  {
    if (v44 != 2)
    {
LABEL_25:
      v105 = v27;
      v114 = v20;
      v46 = *(v0 + 1744);
      v47 = *(v0 + 1680);
      v48 = *(v0 + 1296);
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      v100 = v12[7];
      sub_100005934(v48 + v100, *(v0 + 1656), &qword_10077E958);
      v102 = v48;
      v51 = (v48 + v12[10]);
      v53 = *v51;
      v52 = v51[1];
      v119(v46, v19 + v21, v47);
      v54 = v115(v46, v47);
      v104 = v19;
      v106 = v49;
      v108 = v21;
      if (v54 == enum case for AppInstallRequestType.update(_:))
      {

        sub_10026E620(v53, v52);
        v55 = 1;
      }

      else if (v54 == enum case for AppInstallRequestType.promotion(_:))
      {

        sub_10026E620(v53, v52);
        v55 = 3;
      }

      else
      {
        v69 = enum case for AppInstallRequestType.restore(_:);
        v70 = v54;

        sub_10026E620(v53, v52);
        if (v70 == v69)
        {
          v55 = 2;
        }

        else
        {
          (*(*(v0 + 1688) + 8))(*(v0 + 1744), *(v0 + 1680));
          v55 = 0;
        }
      }

      v74 = *(v0 + 1672);
      v75 = *(v0 + 1664);
      v76 = *(v0 + 1656);
      v77 = sub_100625FA0();
      *v74 = v50;
      v74[1] = v106;
      sub_10020A668(v76, v74 + v75[5], &qword_10077E958);
      v78 = (v74 + v75[6]);
      *v78 = v53;
      v78[1] = v52;
      *(v74 + v75[7]) = v55;
      *(v74 + v75[8]) = v105;
      *(v74 + v75[9]) = v77;
      v79 = sub_10047541C();
      *(v0 + 1912) = v79;
      v80 = v79;
      v81 = *(v0 + 1792);
      v98 = *(v0 + 1776);
      v82 = *(v0 + 1736);
      v96 = *(v0 + 1680);
      v118 = *(v0 + 1648);
      v83 = *(v0 + 1632);
      v84 = *(v0 + 1624);
      v97 = *(v0 + 1616);
      v116 = *(v0 + 1608);
      v85 = *(v0 + 1304);
      v86 = *(v0 + 1312);
      (*(v86 + 16))(v97, v111 + *(v109 + 20), v85);
      v112 = *(v86 + 56);
      v112(v97, 0, 1, v85);
      v87 = *(v81 + 40);
      v99 = *(v81 + 32);
      sub_100005934(v102 + v100, v118, &qword_10077E958);
      v103 = *(v81 + 64);
      v101 = *(v81 + 72);
      v110 = *(v81 + 136);
      v119(v82, v104 + v108, v96);

      v88 = v80;

      v120 = sub_100372410(v82, 2);
      LOBYTE(v82) = *(v81 + 205);
      sub_100005934(v81 + *(v98 + 116), v83 + v84[13], &unk_1007809F0);
      v89 = v114;
      v90 = sub_100625FA0();
      *(v83 + v84[11]) = 0;
      sub_10020A668(v97, v83, &unk_1007809F0);
      v91 = (v83 + v84[5]);
      *v91 = v50;
      v91[1] = v106;
      v92 = (v83 + v84[6]);
      *v92 = v99;
      v92[1] = v87;
      sub_10020A668(v118, v83 + v84[7], &qword_10077E958);
      v93 = (v83 + v84[8]);
      *v93 = v103;
      v93[1] = v101;
      *(v83 + v84[9]) = v110 & 1;
      *(v83 + v84[10]) = v120;
      *(v83 + v84[12]) = v82 & 1;
      *(v83 + v84[14]) = v114;
      *(v83 + v84[15]) = v90;
      v112(v116, 1, 1, v85);
      v94 = swift_task_alloc();
      *(v0 + 1920) = v94;
      *v94 = v0;
      v94[1] = sub_100478348;
      v95 = *(v0 + 1608);

      return sub_10032FAF0(v95);
    }
  }

  else if (v44)
  {

    goto LABEL_28;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
    v43 = *(v0 + 1792);
    goto LABEL_25;
  }

LABEL_28:
  *(v0 + 1976) = 0;
  sub_10047C9F8();
  v56 = *(v0 + 1888);
  v57 = *(v0 + 1728);
  v58 = *(v0 + 1680);
  (*(v0 + 1872))(v57, *(v0 + 1296) + *(v0 + 2032), v58);
  v59 = v56(v57, v58);
  v60 = enum case for AppInstallRequestType.automaticUpdate(_:);
  *(v0 + 2040) = enum case for AppInstallRequestType.automaticUpdate(_:);
  v61 = enum case for AppInstallRequestType.update(_:);
  *(v0 + 2044) = enum case for AppInstallRequestType.update(_:);
  v62 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  *(v0 + 2048) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v63 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  *(v0 + 2052) = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v64 = 2;
  if (v59 != v60 && v59 != v61 && v59 != v62 && v59 != v63)
  {
    (*(*(v0 + 1688) + 8))(*(v0 + 1728), *(v0 + 1680));
    v64 = 0;
  }

  v65 = *(v0 + 1888);
  v66 = *(v0 + 1720);
  v67 = *(v0 + 1680);
  (*(v0 + 1872))(v66, *(v0 + 1296) + *(v0 + 2032), v67);
  v68 = v65(v66, v67);
  if (v68 != enum case for AppInstallRequestType.automaticInstall(_:))
  {
    if (v68 == *(v0 + 2036))
    {
      goto LABEL_41;
    }

    if (v68 != v60)
    {
      if (v68 == v61 || v68 == enum case for AppInstallRequestType.promotion(_:))
      {
        goto LABEL_41;
      }

      if (v68 != enum case for AppInstallRequestType.restore(_:) && v68 != enum case for AppInstallRequestType.deviceVPP(_:) && v68 != v62 && v68 != enum case for AppInstallRequestType.userVPP(_:) && v68 != v63 && v68 != enum case for AppInstallRequestType.upp(_:) && v68 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

  v64 |= 1u;
LABEL_41:
  *(v0 + 2057) = v64;
  v71 = swift_task_alloc();
  *(v0 + 1984) = v71;
  *v71 = v0;
  v71[1] = sub_100479B94;
  v72 = *(v0 + 1528);

  return sub_1001EE688(v72);
}

uint64_t sub_100478348(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[241] = a1;
  v4[242] = v1;

  v6 = v4[201];
  if (v1)
  {
    sub_1000032A8(v6, &unk_1007809F0);

    return _swift_task_switch(sub_10047868C, 0, 0);
  }

  else
  {
    sub_1000032A8(v6, &unk_1007809F0);
    v7 = swift_task_alloc();
    v4[243] = v7;
    *v7 = v5;
    v7[1] = sub_10047854C;
    v8 = v4[239];

    return sub_100207814(v8, a1);
  }
}

uint64_t sub_10047854C()
{
  *(*v1 + 1952) = v0;

  if (v0)
  {
    v2 = sub_10047912C;
  }

  else
  {
    v2 = sub_1004789FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10047868C()
{
  v1 = v0[239];
  v2 = v0[233];
  v3 = v0[209];
  v4 = v0[204];

  sub_10047D3CC(v4, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10047D3CC(v3, type metadata accessor for CreateCoordinatorTask);
  v5 = v0[238];
  sub_10047D3CC(v0[224], type metadata accessor for AppStoreMetadata);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004789FC()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1672);
  v3 = *(v0 + 1632);

  sub_10047D3CC(v3, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10047D3CC(v2, type metadata accessor for CreateCoordinatorTask);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1912);
  *(v0 + 1976) = v5;
  sub_10047C9F8();
  if (v4)
  {
    if (v5)
    {
      v6 = v5;
      v7 = _convertErrorToNSError(_:)();
      v8 = IXCreateUserPresentableError();

      if (v8)
      {
        v9 = _convertErrorToNSError(_:)();
        *(v0 + 1272) = 0;
        v10 = [v6 cancelForReason:v9 client:28 error:v0 + 1272];

        v11 = *(v0 + 1272);
        if (!v10)
        {
          v31 = *(v0 + 1864);
          v32 = v11;

          _convertNSErrorToError(_:)();
          swift_willThrow();

          v5 = v6;
          goto LABEL_20;
        }

        v12 = v11;
      }

      else
      {
        v8 = v6;
      }
    }

    v8 = *(v0 + 1864);
    swift_willThrow();
LABEL_20:

    v29 = *(v0 + 1904);
    sub_10047D3CC(*(v0 + 1792), type metadata accessor for AppStoreMetadata);

    v30 = *(v0 + 8);

    return v30();
  }

  v13 = *(v0 + 1888);
  v14 = *(v0 + 1728);
  v15 = *(v0 + 1680);
  (*(v0 + 1872))(v14, *(v0 + 1296) + *(v0 + 2032), v15);
  v16 = v13(v14, v15);
  v17 = enum case for AppInstallRequestType.automaticUpdate(_:);
  *(v0 + 2040) = enum case for AppInstallRequestType.automaticUpdate(_:);
  v18 = enum case for AppInstallRequestType.update(_:);
  *(v0 + 2044) = enum case for AppInstallRequestType.update(_:);
  v19 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  *(v0 + 2048) = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v20 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  *(v0 + 2052) = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v21 = 2;
  if (v16 != v17 && v16 != v18 && v16 != v19 && v16 != v20)
  {
    (*(*(v0 + 1688) + 8))(*(v0 + 1728), *(v0 + 1680));
    v21 = 0;
  }

  v22 = *(v0 + 1888);
  v23 = *(v0 + 1720);
  v24 = *(v0 + 1680);
  (*(v0 + 1872))(v23, *(v0 + 1296) + *(v0 + 2032), v24);
  v25 = v22(v23, v24);
  if (v25 != enum case for AppInstallRequestType.automaticInstall(_:))
  {
    if (v25 == *(v0 + 2036))
    {
      goto LABEL_14;
    }

    if (v25 != v17)
    {
      if (v25 == v18 || v25 == enum case for AppInstallRequestType.promotion(_:))
      {
        goto LABEL_14;
      }

      if (v25 != enum case for AppInstallRequestType.restore(_:) && v25 != enum case for AppInstallRequestType.deviceVPP(_:) && v25 != v19 && v25 != enum case for AppInstallRequestType.userVPP(_:) && v25 != v20 && v25 != enum case for AppInstallRequestType.upp(_:) && v25 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }
    }
  }

  v21 |= 1u;
LABEL_14:
  *(v0 + 2057) = v21;
  v26 = swift_task_alloc();
  *(v0 + 1984) = v26;
  *v26 = v0;
  v26[1] = sub_100479B94;
  v27 = *(v0 + 1528);

  return sub_1001EE688(v27);
}

uint64_t sub_10047912C()
{
  v1 = v0;
  v2 = v0 + 82;
  v3 = v0 + 95;
  v10 = v0[241];
  v4 = v0[197];
  v5 = v0[196];
  v6 = v0[195];
  v7 = _convertErrorToNSError(_:)();
  v1[245] = v7;
  v1[82] = v1;
  v1[83] = sub_10047932C;
  swift_continuation_init();
  v1[102] = v6;
  v8 = sub_10020A748(v1 + 99);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v5 + 32))(v8, v4, v6);
  v1[95] = _NSConcreteStackBlock;
  v1[96] = 1107296256;
  v1[97] = sub_10020A518;
  v1[98] = &unk_100765C00;
  [v10 cancelForReason:v7 client:28 completion:v3];
  (*(v5 + 8))(v8, v6);

  return _swift_continuation_await(v2);
}

uint64_t sub_10047932C()
{
  v1 = *(*v0 + 688);
  *(*v0 + 1968) = v1;
  if (v1)
  {
    v2 = sub_1004797F4;
  }

  else
  {
    v2 = sub_100479468;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100479468()
{
  v1 = *(v0 + 1928);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1632);

  swift_willThrow();
  sub_10047D3CC(v5, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10047D3CC(v4, type metadata accessor for CreateCoordinatorTask);
  v6 = *(v0 + 1904);
  sub_10047D3CC(*(v0 + 1792), type metadata accessor for AppStoreMetadata);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1004797F4()
{
  swift_willThrow();

  v1 = *(v0 + 1928);
  v2 = *(v0 + 1912);
  v3 = *(v0 + 1864);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1632);

  swift_willThrow();
  sub_10047D3CC(v5, type metadata accessor for PlaceholderPromiseBuilder);
  sub_10047D3CC(v4, type metadata accessor for CreateCoordinatorTask);
  v6 = *(v0 + 1904);
  sub_10047D3CC(*(v0 + 1792), type metadata accessor for AppStoreMetadata);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100479B94()
{

  return _swift_task_switch(sub_100479CBC, 0, 0);
}

uint64_t sub_100479CBC()
{
  v1 = *(v0 + 1528);
  if ((*(*(v0 + 1544) + 48))(v1, 1, *(v0 + 1536)) == 1)
  {
    sub_1000032A8(v1, &qword_1007845D0);
    static Logger.install.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = sub_100625FA0();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Network disconnected during preflight, using implicit defaults", v4, 0xCu);
      sub_1000032A8(v5, &qword_10077F920);
    }

    v7 = *(v0 + 1824);
    v8 = *(v0 + 1808);
    v9 = *(v0 + 1800);

    (*(v8 + 8))(v7, v9);
    static Logger.install.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Preflight succeeded", v12, 2u);
    }

    v253 = *(v0 + 1856);
    v13 = *(v0 + 2024);
    v14 = *(v0 + 1816);
    v15 = *(v0 + 1808);
    v16 = *(v0 + 1800);
    v17 = *(v0 + 1792);
    v18 = *(v0 + 1600);
    v19 = *(v0 + 1312);
    v249 = *(v0 + 1976);
    v251 = *(v0 + 1304);
    v20 = *(v0 + 1296);

    (*(v15 + 8))(v14, v16);
    sub_100397D84(v0 + 1144);
    v21 = *(v0 + 1168);
    v22 = *(v0 + 1176);
    sub_100006D8C((v0 + 1144), v21);
    v231 = (*(v22 + 8))(v21, v22);
    v233 = v17[26];
    v235 = v17[12];
    v23 = v251;
    v170 = *(v19 + 16);
    v170(v18, v20 + v13 + *(v253 + 20), v251);
    v252 = *(v19 + 56);
    v252(v18, 0, 1, v23);
    v229 = v17[8];
    v225 = v17[4];
    v227 = v17[9];
    v221 = v17[2];
    v223 = v17[5];
    v219 = v17[3];
    if (v249)
    {
      v24 = *(v0 + 1976);
      v25 = *(v0 + 1424);
      v26 = *(v0 + 1400);
      v27 = *(v0 + 1392);

      v28 = [v24 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v250 = *(v26 + 56);
      v250(v25, 0, 1, v27);
    }

    else
    {
      v250 = *(*(v0 + 1400) + 56);
      v250(*(v0 + 1424), 1, 1, *(v0 + 1392));
    }

    v239 = (v0 + 824);
    v245 = *(v0 + 2052);
    v241 = *(v0 + 2048);
    v237 = *(v0 + 2044);
    v214 = *(v0 + 2040);
    v209 = *(v0 + 1888);
    v204 = *(v0 + 1872);
    v53 = *(v0 + 2032);
    v54 = *(v0 + 1848);
    v55 = *(v0 + 1704);
    v56 = *(v0 + 1680);
    v199 = *(v0 + 1640);
    v201 = *(v0 + 1712);
    v57 = *(v0 + 1408);
    v58 = *(v0 + 1400);
    v59 = *(v0 + 1392);
    v60 = *(v0 + 1296);
    v61 = *(v54 + 32);
    v62 = (v60 + *(type metadata accessor for DDMDeclaration(0) + 52) + v61);
    v63 = v62[1];
    v217 = *v62;
    (*(v58 + 16))(v57, v60, v59);
    sub_100005934(v60 + *(v54 + 28), v199, &qword_10077E958);
    v204(v201, v60 + v53, v56);
    v204(v55, v60 + v53, v56);
    v64 = v209(v55, v56);
    v67 = v64 == v214 || v64 == v237 || v64 == v241 || v64 == v245;
    v68 = v67;
    v212 = v68;
    if (v67)
    {
    }

    else
    {
      v69 = *(v0 + 1704);
      v70 = *(v0 + 1680);
      v71 = *(*(v0 + 1688) + 8);

      v71(v69, v70);
    }

    v215 = v63;
    v72 = *(v0 + 1888);
    v73 = *(v0 + 1792);
    v74 = *(v0 + 1696);
    v75 = *(v0 + 1680);
    v202 = *(v73 + 204);
    v207 = *(v73 + 205);
    v246 = *(v0 + 2040);
    (*(v0 + 1872))(v74, *(v0 + 1296) + *(v0 + 2032), v75);
    v76 = vceqq_s32(vdupq_n_s32(v72(v74, v75)), v246);
    v77 = vaddvq_s32(vandq_s8(v76, xmmword_1006AC720));
    if ((vmaxv_u16(vmovn_s32(v76)) & 1) == 0)
    {
      (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    }

    v210 = *(v0 + 2056);
    v198 = (v77 & 0xF) != 0;
    v205 = *(v0 + 1864);
    v238 = *(v0 + 1856);
    v78 = *(v0 + 1848);
    v79 = *(v0 + 1792);
    v80 = *(v0 + 1776);
    v194 = *(v0 + 1688);
    v195 = *(v0 + 1680);
    v196 = *(v0 + 1712);
    v81 = *(v0 + 1592);
    v190 = *(v0 + 1640);
    v191 = v81;
    v82 = *(v0 + 1440);
    v83 = *(v0 + 1432);
    v183 = *(v0 + 1600);
    v184 = *(v0 + 1424);
    v186 = *(v0 + 1408);
    v242 = *(v0 + 1400);
    v247 = *(v0 + 1392);
    v187 = *(v0 + 1384);
    v185 = *(v0 + 1360);
    v200 = *(v0 + 1352);
    v84 = *(v0 + 1296);
    v85 = v84 + *(v0 + 2024);
    v181 = *(v0 + 1304);
    v193 = sub_100625FA0();
    v192 = *(v84 + *(v78 + 44));
    sub_100005934(v79 + *(v80 + 116), v81, &unk_1007809F0);
    v86 = (v84 + *(v78 + 40));
    v87 = v86[1];
    v188 = v87;
    v189 = *v86;
    v88 = (v85 + *(v238 + 32));
    v89 = *v88;
    v90 = v88[1];
    v197 = *v88;
    sub_10026E620(v189, v87);
    sub_1001DFECC(v89, v90);
    static Platform.current.getter();
    v91 = v83[9];
    v252(v82 + v91, 1, 1, v181);
    v171 = v83[14];
    v92 = (v82 + v83[13]);
    v250(v82 + v171, 1, 1, v247);
    v93 = (v82 + v83[15]);
    v94 = v83[20];
    v172 = v83[16];
    v173 = v94;
    v95 = type metadata accessor for FilePath();
    (*(*(v95 - 8) + 56))(v82 + v94, 1, 1, v95);
    v174 = (v82 + v83[22]);
    v178 = v83[29];
    v175 = v83[26];
    v176 = v83[30];
    v252(v82 + v176, 1, 1, v181);
    v177 = v83[31];
    v96 = v83[34];
    v179 = v83[33];
    static Platform.current.getter();
    v180 = v83[35];
    v97 = (v82 + v83[36]);
    *v97 = xmmword_10069E8A0;
    v182 = v83[38];
    *(v82 + v83[39]) = xmmword_10069E8A0;
    v98 = (v82 + v83[40]);
    *v98 = 0;
    v98[1] = 0;
    v99 = v82 + v83[41];
    *v99 = 0;
    *(v99 + 8) = 0;
    *(v99 + 16) = -1;
    v100 = (v82 + v83[42]);
    *v100 = 0;
    v100[1] = 0;
    *(v82 + v83[43]) = 0;
    *v82 = 0;
    *(v82 + 8) = 0;
    *(v82 + 16) = 1;
    *(v82 + 24) = v231;
    *(v82 + 32) = 0;
    *(v82 + 40) = v233;
    *(v82 + 48) = 0;
    *(v82 + 56) = v235;
    *(v82 + 64) = 0;
    sub_10020AD90(v183, v82 + v91, &unk_1007809F0);
    v101 = (v82 + v83[10]);
    *v101 = v221;
    v101[1] = v219;
    v102 = (v82 + v83[11]);
    *v102 = v225;
    v102[1] = v223;
    v103 = (v82 + v83[12]);
    *v103 = v229;
    v103[1] = v227;
    *v92 = 0;
    v92[1] = 0;
    sub_10020AD90(v184, v82 + v171, &unk_100780A00);
    *v93 = v217;
    v93[1] = v215;
    *(v82 + v172) = 0;
    *(v82 + v83[17]) = 0;
    *(v82 + v83[18]) = 0;
    (*(v242 + 32))(v82 + v83[19], v186, v247);
    sub_10020AD90(v190, v82 + v173, &qword_10077E958);
    (*(v194 + 32))(v82 + v83[21], v196, v195);
    *v174 = 0;
    v174[1] = 0;
    *(v82 + v83[23]) = v212;
    *(v82 + v83[24]) = v202;
    *(v82 + v83[25]) = v207 & 1;
    *(v82 + v175) = v198;
    *(v82 + v83[27]) = 1;
    *(v82 + v83[28]) = v193;
    *(v82 + v178) = v192;
    sub_10020AD90(v191, v82 + v176, &unk_1007809F0);
    *(v82 + v177) = 0;
    v104 = (v82 + v83[32]);
    *v104 = v189;
    v104[1] = v188;
    *(v82 + v179) = 0;
    v105 = *(v185 + 40);
    v105(v82 + v96, v187, v200);
    *(v82 + v180) = 2;
    sub_10020B0E0(*v97, v97[1]);
    *v97 = v197;
    v97[1] = v90;
    *(v82 + v83[37]) = 2;
    *(v82 + v182) = v205;
    sub_10000710C(v0 + 1144);
    if (v210 > 1)
    {
      if (v210 != 2)
      {
        static Platform.current.getter();
LABEL_39:
        v106 = *(v0 + 1856);
        v107 = *(v0 + 1296) + *(v0 + 2024);
        v105(v82 + v96, *(v0 + 1376), *(v0 + 1352));
        v108 = *(v107 + *(v106 + 28));
        if (*(v108 + 16))
        {
          v109 = *(v0 + 1584);
          v110 = *(v0 + 1416);
          v111 = *(v0 + 1392);
          v112 = *(v0 + 1320);
          v113 = *(v0 + 1304);
          v114 = type metadata accessor for AppStorePackage(0);
          v115 = (v114 - 8);
          v116 = v108 + ((*(*(v114 - 8) + 80) + 32) & ~*(*(v114 - 8) + 80));
          v117 = (v116 + *(v114 + 40));
          v118 = *v117;
          v243 = v117[1];
          v234 = v117[3];
          v236 = v117[2];
          v230 = v117[5];
          v232 = v117[4];
          v206 = *(v116 + *(v114 + 20));
          v250(v110, 1, 1, v111);
          v119 = (v116 + v115[11]);
          v120 = *v119;
          v121 = v119[1];
          v226 = v119[3];
          v228 = v119[2];
          v222 = v119[5];
          v224 = v119[4];
          v252(v109, 1, 1, v113);
          v122 = (v116 + v115[9]);
          v123 = *v122;
          v124 = v122[1];
          v125 = v122[3];
          *(v0 + 856) = v122[2];
          *(v0 + 872) = v125;
          *v239 = v123;
          *(v0 + 840) = v124;
          v126 = (v116 + v115[10]);
          v127 = *v126;
          v220 = v126[1];
          v208 = *(v116 + v115[15]);
          v128 = (v116 + v115[8]);
          v203 = *v128;
          v248 = *(v128 + 8);
          v170(v112, v116, v113);
          v129 = (v116 + v115[14]);
          v130 = v129[1];
          v216 = v120;
          v218 = v118;
          v211 = v127;
          v213 = v121;
          if (v130)
          {
            v131 = *v129;
            v132 = v129[5];
            v133 = v129[6];
            if (v133)
            {
              v255 = 14897;
              sub_10047D0D4(v218, v243, v236);
              sub_10047D0D4(v120, v213, v228);
              sub_100005934(v239, v0 + 1080, &qword_1007845D8);
              sub_1001DFECC(v127, v220);
              sub_10047D11C(v131, v130);
              v134._countAndFlagsBits = v131;
              v134._object = v130;
              String.append(_:)(v134);
              v135._countAndFlagsBits = 47;
              v135._object = 0xE100000000000000;
              String.append(_:)(v135);
              v136 = v132;
              v137 = v133;
            }

            else
            {
              v255 = 14896;
              sub_10047D0D4(v218, v243, v236);
              sub_10047D0D4(v120, v213, v228);
              sub_100005934(v239, v0 + 1016, &qword_1007845D8);
              sub_1001DFECC(v127, v220);
              sub_10047D11C(v131, v130);
              v136 = v131;
              v137 = v130;
            }

            String.append(_:)(*&v136);
            sub_100271104(v131, v130);
            v165 = 0xE200000000000000;
            v166 = v255;
          }

          else
          {
            sub_10047D0D4(v118, v243, v236);
            sub_10047D0D4(v120, v121, v228);
            sub_100005934(v239, v0 + 888, &qword_1007845D8);
            sub_1001DFECC(v127, v220);
            v165 = 0;
            v166 = 0;
          }

          v168 = *(v0 + 1976);
          v169 = *(v0 + 1904);
          v167 = *(v0 + 1792);
          v162 = *(v0 + 1584);
          v158 = *(v0 + 856);
          v159 = *v239;
          v156 = *(v0 + 872);
          v157 = *(v0 + 840);
          v138 = v203;
          if (v248)
          {
            v138 = 0;
          }

          v160 = v138;
          *(v0 + 984) = 0u;
          *(v0 + 1000) = 0u;
          *(v0 + 952) = 0u;
          *(v0 + 968) = 0u;
          v163 = *(v0 + 1440);
          v139 = *(v0 + 1416);
          v140 = *(v0 + 1344);
          v164 = *(v0 + 1336);
          v141 = *(v0 + 1328);
          v142 = *(v0 + 1312);
          v143 = *(v0 + 1304);
          v154 = v143;
          v155 = *(v0 + 1320);
          v161 = *(v0 + 1280);
          v144 = v141[8];
          v250(v140 + v144, 1, 1, *(v0 + 1392));
          v145 = v141[10];
          v146 = (v140 + v141[9]);
          v252(v140 + v145, 1, 1, v143);
          v147 = v140 + v141[18];
          v254 = (v140 + v141[20]);
          v148 = (v140 + v141[21]);
          v148[2] = 0u;
          v148[3] = 0u;
          *v148 = 0u;
          v148[1] = 0u;
          *v140 = 0;
          v140[1] = 0;
          v140[2] = v218;
          v140[3] = v243;
          v140[4] = v236;
          v140[5] = v234;
          v140[6] = v232;
          v140[7] = v230;
          v140[8] = v206;
          sub_10020AD90(v139, v140 + v144, &unk_100780A00);
          *v146 = v216;
          v146[1] = v213;
          v146[2] = v228;
          v146[3] = v226;
          v146[4] = v224;
          v146[5] = v222;
          sub_10020AD90(v162, v140 + v145, &unk_1007809F0);
          v149 = v140 + v141[11];
          *v149 = v159;
          *(v149 + 1) = v157;
          *(v149 + 2) = v158;
          *(v149 + 3) = v156;
          *(v149 + 8) = v211;
          *(v149 + 9) = v220;
          *(v149 + 10) = 0;
          *(v149 + 11) = 0;
          *(v140 + v141[12]) = 0;
          *(v140 + v141[13]) = 0;
          *(v140 + v141[14]) = v208;
          *(v140 + v141[15]) = 0;
          *(v140 + v141[16]) = 0;
          *(v140 + v141[17]) = 0;
          *v147 = v160;
          v147[8] = v248;
          (*(v142 + 32))(v140 + v141[19], v155, v154);
          *v254 = v166;
          v254[1] = v165;
          sub_10020AD90(v0 + 952, v148, &qword_10077E968);
          sub_10047D364(v163, v161, type metadata accessor for AppInstall);
          sub_1001F0C48(&qword_100780F18);
          v150 = (*(v164 + 80) + 32) & ~*(v164 + 80);
          v151 = swift_allocObject();
          *(v151 + 16) = xmmword_10069E680;
          sub_10047D160(v140, v151 + v150, type metadata accessor for AppPackage);

          sub_10047D3CC(v167, type metadata accessor for AppStoreMetadata);
          sub_10047D3CC(v163, type metadata accessor for AppInstall);

          v152 = *(v0 + 8);

          return v152(v151);
        }

        goto LABEL_52;
      }

      static Platform.visionOS.getter();
    }

    else if (v210)
    {
      static Platform.macOS.getter();
    }

    else
    {
      static Platform.iOS.getter();
    }

    (*(*(v0 + 1360) + 32))(*(v0 + 1376), *(v0 + 1368), *(v0 + 1352));
    goto LABEL_39;
  }

  v29 = *(v0 + 2028);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1520);
  v32 = *(v0 + 1312);
  v33 = *(v0 + 1304);
  v34 = *(v0 + 1296) + *(v0 + 2024);
  sub_10047D160(v1, *(v0 + 1552), type metadata accessor for NetworkPath);
  (*(v32 + 56))(v31, 1, 1, v33);
  v35 = *(v34 + *(v30 + 28));
  if (!*(v35 + 16))
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  v36 = *(v34 + v29 + 216);
  v37 = *(v34 + v29 + 224);
  v38 = type metadata accessor for AppStorePackage(0);
  v39 = *(v35 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(v38 + 20));
  if (v39 < 0)
  {
    goto LABEL_53;
  }

  v240 = *(v0 + 2057);
  v40 = *(v0 + 1520);
  v41 = *(v0 + 1512);
  v42 = *(v0 + 1504);
  v244 = *(v0 + 1496);
  v43 = *(v0 + 1480);
  v44 = *(v0 + 1472);
  v45 = *(v0 + 1296) + *(*(v0 + 1848) + 32);
  LOBYTE(v45) = *(v45 + *(type metadata accessor for DDMDeclaration(0) + 44));

  v46 = sub_100625FA0();
  v47 = v41[9];
  v48 = (v40 + v41[5]);
  *v48 = v36;
  v48[1] = v37;
  *(v40 + v41[6]) = v39;
  *(v40 + v41[7]) = 2;
  *(v40 + v47) = v45;
  *(v40 + v41[10]) = v240;
  *(v40 + v41[8]) = v46;
  static CellularIdentity.current()();
  (*(v43 + 16))(v244, v42, v44);
  v49 = (*(v43 + 80) + 17) & ~*(v43 + 80);
  v50 = swift_allocObject();
  *(v0 + 1992) = v50;
  *(v50 + 16) = 0;
  (*(v43 + 32))(v50 + v49, v244, v44);
  v51 = swift_task_alloc();
  *(v0 + 2000) = v51;
  *(v51 + 16) = &unk_1006AC770;
  *(v51 + 24) = v50;
  swift_asyncLet_begin();
  v52 = *(v0 + 1464);

  return _swift_asyncLet_get(v0 + 16, v52, sub_10047B354, v0 + 720);
}

uint64_t sub_10047B354()
{
  v1 = v0[161];
  sub_10047D364(v0[183], v0[182], type metadata accessor for NetworkPolicy);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100006D8C(v1, v3);
  v5 = swift_task_alloc();
  v0[251] = v5;
  *v5 = v0;
  v5[1] = sub_10047B47C;
  v6 = v0[194];
  v7 = v0[190];
  v8 = v0[182];

  return sub_1005CA9FC(v7, v6, v4, v8, v3, v2);
}

uint64_t sub_10047B47C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1456);
  *(*v1 + 2016) = a1;

  sub_10047D3CC(v4, type metadata accessor for NetworkPolicy);
  v5 = *(v2 + 1464);

  return _swift_asyncLet_finish(v3 + 16, v5, sub_10047B604, v3 + 1184);
}

uint64_t sub_10047B604()
{

  return _swift_task_switch(sub_10047B690, 0, 0);
}

uint64_t sub_10047B690()
{
  v211 = *(v0 + 2016);
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1480);
  v5 = *(v0 + 1472);

  (*(v4 + 8))(v3, v5);
  sub_10047D3CC(v2, type metadata accessor for EvaluatorDownload);
  sub_10047D3CC(v1, type metadata accessor for NetworkPath);
  static Logger.install.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Preflight succeeded", v8, 2u);
  }

  v224 = *(v0 + 1856);
  v9 = *(v0 + 2024);
  v10 = *(v0 + 1816);
  v11 = *(v0 + 1808);
  v12 = *(v0 + 1800);
  v13 = *(v0 + 1792);
  v14 = *(v0 + 1600);
  v15 = *(v0 + 1312);
  v220 = *(v0 + 1976);
  v222 = *(v0 + 1304);
  v16 = *(v0 + 1296);

  (*(v11 + 8))(v10, v12);
  sub_100397D84(v0 + 1144);
  v17 = *(v0 + 1168);
  v18 = *(v0 + 1176);
  sub_100006D8C((v0 + 1144), v17);
  v205 = (*(v18 + 8))(v17, v18);
  v207 = v13[26];
  v209 = v13[12];
  v19 = v222;
  v142 = *(v15 + 16);
  v142(v14, v16 + v9 + *(v224 + 20), v222);
  v223 = *(v15 + 56);
  v223(v14, 0, 1, v19);
  v203 = v13[8];
  v199 = v13[4];
  v201 = v13[9];
  v195 = v13[2];
  v197 = v13[5];
  v193 = v13[3];
  if (v220)
  {
    v20 = *(v0 + 1976);
    v21 = *(v0 + 1424);
    v22 = *(v0 + 1400);
    v23 = *(v0 + 1392);

    v24 = [v20 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v221 = *(v22 + 56);
    v221(v21, 0, 1, v23);
  }

  else
  {
    v221 = *(*(v0 + 1400) + 56);
    v221(*(v0 + 1424), 1, 1, *(v0 + 1392));
  }

  v212 = (v0 + 824);
  v216 = *(v0 + 2052);
  v213 = *(v0 + 2048);
  v188 = *(v0 + 2044);
  v185 = *(v0 + 2040);
  v180 = *(v0 + 1888);
  v175 = *(v0 + 1872);
  v25 = *(v0 + 2032);
  v26 = *(v0 + 1848);
  v27 = *(v0 + 1704);
  v28 = *(v0 + 1680);
  v171 = *(v0 + 1640);
  v173 = *(v0 + 1712);
  v29 = *(v0 + 1408);
  v30 = *(v0 + 1400);
  v31 = *(v0 + 1392);
  v32 = *(v0 + 1296);
  v33 = *(v26 + 32);
  v34 = (v32 + *(type metadata accessor for DDMDeclaration(0) + 52) + v33);
  v35 = v34[1];
  v191 = *v34;
  (*(v30 + 16))(v29, v32, v31);
  sub_100005934(v32 + *(v26 + 28), v171, &qword_10077E958);
  v175(v173, v32 + v25, v28);
  v175(v27, v32 + v25, v28);
  v36 = v180(v27, v28);
  v39 = v36 == v185 || v36 == v188 || v36 == v213 || v36 == v216;
  v40 = v39;
  v186 = v40;
  if (v39)
  {
  }

  else
  {
    v41 = *(v0 + 1704);
    v42 = *(v0 + 1680);
    v43 = *(*(v0 + 1688) + 8);

    v43(v41, v42);
  }

  v189 = v35;
  v44 = *(v0 + 1888);
  v45 = *(v0 + 1792);
  v46 = *(v0 + 1696);
  v47 = *(v0 + 1680);
  v176 = *(v45 + 204);
  v181 = *(v45 + 205);
  v217 = *(v0 + 2040);
  (*(v0 + 1872))(v46, *(v0 + 1296) + *(v0 + 2032), v47);
  v48 = vceqq_s32(vdupq_n_s32(v44(v46, v47)), v217);
  v49 = vaddvq_s32(vandq_s8(v48, xmmword_1006AC720));
  if ((vmaxv_u16(vmovn_s32(v48)) & 1) == 0)
  {
    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
  }

  v183 = *(v0 + 2056);
  v172 = (v49 & 0xF) != 0;
  v178 = *(v0 + 1864);
  v169 = *(v0 + 1856);
  v50 = *(v0 + 1848);
  v51 = *(v0 + 1792);
  v52 = *(v0 + 1776);
  v166 = *(v0 + 1688);
  v167 = *(v0 + 1680);
  v168 = *(v0 + 1712);
  v53 = *(v0 + 1592);
  v162 = *(v0 + 1640);
  v163 = v53;
  v54 = *(v0 + 1440);
  v55 = *(v0 + 1432);
  v155 = *(v0 + 1600);
  v156 = *(v0 + 1424);
  v158 = *(v0 + 1408);
  v214 = *(v0 + 1400);
  v218 = *(v0 + 1392);
  v159 = *(v0 + 1384);
  v157 = *(v0 + 1360);
  v174 = *(v0 + 1352);
  v56 = *(v0 + 1296);
  v57 = v56 + *(v0 + 2024);
  v153 = *(v0 + 1304);
  v165 = sub_100625FA0();
  v164 = *(v56 + *(v50 + 44));
  sub_100005934(v51 + *(v52 + 116), v53, &unk_1007809F0);
  v58 = (v56 + *(v50 + 40));
  v59 = v58[1];
  v160 = v59;
  v161 = *v58;
  v60 = (v57 + *(v169 + 32));
  v61 = *v60;
  v62 = v60[1];
  v170 = *v60;
  sub_10026E620(v161, v59);
  sub_1001DFECC(v61, v62);
  static Platform.current.getter();
  v63 = v55[9];
  v223(v54 + v63, 1, 1, v153);
  v143 = v55[14];
  v64 = (v54 + v55[13]);
  v221(v54 + v143, 1, 1, v218);
  v65 = (v54 + v55[15]);
  v66 = v55[20];
  v144 = v55[16];
  v145 = v66;
  v67 = type metadata accessor for FilePath();
  (*(*(v67 - 8) + 56))(v54 + v66, 1, 1, v67);
  v146 = (v54 + v55[22]);
  v150 = v55[29];
  v147 = v55[26];
  v148 = v55[30];
  v223(v54 + v148, 1, 1, v153);
  v149 = v55[31];
  v68 = v55[34];
  v151 = v55[33];
  static Platform.current.getter();
  v152 = v55[35];
  v69 = (v54 + v55[36]);
  *v69 = xmmword_10069E8A0;
  v154 = v55[38];
  *(v54 + v55[39]) = xmmword_10069E8A0;
  v70 = (v54 + v55[40]);
  *v70 = 0;
  v70[1] = 0;
  v71 = v54 + v55[41];
  *v71 = 0;
  *(v71 + 8) = 0;
  *(v71 + 16) = -1;
  v72 = (v54 + v55[42]);
  *v72 = 0;
  v72[1] = 0;
  *(v54 + v55[43]) = 0;
  *v54 = 0;
  *(v54 + 8) = 0;
  *(v54 + 16) = 1;
  *(v54 + 24) = v205;
  *(v54 + 32) = 0;
  *(v54 + 40) = v207;
  *(v54 + 48) = 0;
  *(v54 + 56) = v209;
  *(v54 + 64) = 0;
  sub_10020AD90(v155, v54 + v63, &unk_1007809F0);
  v73 = (v54 + v55[10]);
  *v73 = v195;
  v73[1] = v193;
  v74 = (v54 + v55[11]);
  *v74 = v199;
  v74[1] = v197;
  v75 = (v54 + v55[12]);
  *v75 = v203;
  v75[1] = v201;
  *v64 = 0;
  v64[1] = 0;
  sub_10020AD90(v156, v54 + v143, &unk_100780A00);
  *v65 = v191;
  v65[1] = v189;
  *(v54 + v144) = 0;
  *(v54 + v55[17]) = 0;
  *(v54 + v55[18]) = 0;
  (*(v214 + 32))(v54 + v55[19], v158, v218);
  sub_10020AD90(v162, v54 + v145, &qword_10077E958);
  (*(v166 + 32))(v54 + v55[21], v168, v167);
  *v146 = 0;
  v146[1] = 0;
  *(v54 + v55[23]) = v186;
  *(v54 + v55[24]) = v176;
  *(v54 + v55[25]) = v181 & 1;
  *(v54 + v147) = v172;
  *(v54 + v55[27]) = 1;
  *(v54 + v55[28]) = v165;
  *(v54 + v150) = v164;
  sub_10020AD90(v163, v54 + v148, &unk_1007809F0);
  *(v54 + v149) = v211 & 0x1010101;
  v76 = (v54 + v55[32]);
  *v76 = v161;
  v76[1] = v160;
  *(v54 + v151) = 0;
  v77 = *(v157 + 40);
  v77(v54 + v68, v159, v174);
  *(v54 + v152) = 2;
  sub_10020B0E0(*v69, v69[1]);
  *v69 = v170;
  v69[1] = v62;
  *(v54 + v55[37]) = 2;
  *(v54 + v154) = v178;
  sub_10000710C(v0 + 1144);
  if (v183 <= 1)
  {
    if (v183)
    {
      static Platform.macOS.getter();
    }

    else
    {
      static Platform.iOS.getter();
    }

    goto LABEL_29;
  }

  if (v183 == 2)
  {
    static Platform.visionOS.getter();
LABEL_29:
    (*(*(v0 + 1360) + 32))(*(v0 + 1376), *(v0 + 1368), *(v0 + 1352));
    goto LABEL_31;
  }

  static Platform.current.getter();
LABEL_31:
  v78 = *(v0 + 1856);
  v79 = *(v0 + 1296) + *(v0 + 2024);
  v77(v54 + v68, *(v0 + 1376), *(v0 + 1352));
  v80 = *(v79 + *(v78 + 28));
  if (!*(v80 + 16))
  {
    __break(1u);
  }

  v81 = *(v0 + 1584);
  v82 = *(v0 + 1416);
  v83 = *(v0 + 1392);
  v84 = *(v0 + 1320);
  v85 = *(v0 + 1304);
  v86 = type metadata accessor for AppStorePackage(0);
  v87 = (v86 - 8);
  v88 = v80 + ((*(*(v86 - 8) + 80) + 32) & ~*(*(v86 - 8) + 80));
  v89 = (v88 + *(v86 + 40));
  v90 = *v89;
  v215 = v89[1];
  v208 = v89[3];
  v210 = v89[2];
  v204 = v89[5];
  v206 = v89[4];
  v179 = *(v88 + *(v86 + 20));
  v221(v82, 1, 1, v83);
  v91 = (v88 + v87[11]);
  v92 = *v91;
  v93 = v91[1];
  v200 = v91[3];
  v202 = v91[2];
  v196 = v91[5];
  v198 = v91[4];
  v223(v81, 1, 1, v85);
  v94 = (v88 + v87[9]);
  v95 = *v94;
  v96 = v94[1];
  v97 = v94[3];
  *(v0 + 856) = v94[2];
  *(v0 + 872) = v97;
  *v212 = v95;
  *(v0 + 840) = v96;
  v98 = (v88 + v87[10]);
  v99 = *v98;
  v194 = v98[1];
  v182 = *(v88 + v87[15]);
  v100 = (v88 + v87[8]);
  v177 = *v100;
  v219 = *(v100 + 8);
  v142(v84, v88, v85);
  v101 = (v88 + v87[14]);
  v102 = v101[1];
  v190 = v92;
  v192 = v90;
  v184 = v99;
  v187 = v93;
  if (v102)
  {
    v103 = *v101;
    v104 = v101[5];
    v105 = v101[6];
    if (v105)
    {
      v226 = 14897;
      sub_10047D0D4(v192, v215, v210);
      sub_10047D0D4(v92, v187, v202);
      sub_100005934(v212, v0 + 1080, &qword_1007845D8);
      sub_1001DFECC(v99, v194);
      sub_10047D11C(v103, v102);
      v106._countAndFlagsBits = v103;
      v106._object = v102;
      String.append(_:)(v106);
      v107._countAndFlagsBits = 47;
      v107._object = 0xE100000000000000;
      String.append(_:)(v107);
      v108 = v104;
      v109 = v105;
    }

    else
    {
      v226 = 14896;
      sub_10047D0D4(v192, v215, v210);
      sub_10047D0D4(v92, v187, v202);
      sub_100005934(v212, v0 + 1016, &qword_1007845D8);
      sub_1001DFECC(v99, v194);
      sub_10047D11C(v103, v102);
      v108 = v103;
      v109 = v102;
    }

    String.append(_:)(*&v108);
    sub_100271104(v103, v102);
    v137 = 0xE200000000000000;
    v138 = v226;
  }

  else
  {
    sub_10047D0D4(v90, v215, v210);
    sub_10047D0D4(v92, v93, v202);
    sub_100005934(v212, v0 + 888, &qword_1007845D8);
    sub_1001DFECC(v99, v194);
    v137 = 0;
    v138 = 0;
  }

  v140 = *(v0 + 1976);
  v141 = *(v0 + 1904);
  v139 = *(v0 + 1792);
  v134 = *(v0 + 1584);
  v130 = *(v0 + 856);
  v131 = *v212;
  v128 = *(v0 + 872);
  v129 = *(v0 + 840);
  v110 = v177;
  if (v219)
  {
    v110 = 0;
  }

  v132 = v110;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 952) = 0u;
  *(v0 + 968) = 0u;
  v135 = *(v0 + 1440);
  v111 = *(v0 + 1416);
  v112 = *(v0 + 1344);
  v136 = *(v0 + 1336);
  v113 = *(v0 + 1328);
  v114 = *(v0 + 1312);
  v115 = *(v0 + 1304);
  v126 = v115;
  v127 = *(v0 + 1320);
  v133 = *(v0 + 1280);
  v116 = v113[8];
  v221(v112 + v116, 1, 1, *(v0 + 1392));
  v117 = v113[10];
  v118 = (v112 + v113[9]);
  v223(v112 + v117, 1, 1, v115);
  v119 = v112 + v113[18];
  v225 = (v112 + v113[20]);
  v120 = (v112 + v113[21]);
  v120[2] = 0u;
  v120[3] = 0u;
  *v120 = 0u;
  v120[1] = 0u;
  *v112 = 0;
  v112[1] = 0;
  v112[2] = v192;
  v112[3] = v215;
  v112[4] = v210;
  v112[5] = v208;
  v112[6] = v206;
  v112[7] = v204;
  v112[8] = v179;
  sub_10020AD90(v111, v112 + v116, &unk_100780A00);
  *v118 = v190;
  v118[1] = v187;
  v118[2] = v202;
  v118[3] = v200;
  v118[4] = v198;
  v118[5] = v196;
  sub_10020AD90(v134, v112 + v117, &unk_1007809F0);
  v121 = v112 + v113[11];
  *v121 = v131;
  *(v121 + 1) = v129;
  *(v121 + 2) = v130;
  *(v121 + 3) = v128;
  *(v121 + 8) = v184;
  *(v121 + 9) = v194;
  *(v121 + 10) = 0;
  *(v121 + 11) = 0;
  *(v112 + v113[12]) = 0;
  *(v112 + v113[13]) = 0;
  *(v112 + v113[14]) = v182;
  *(v112 + v113[15]) = 0;
  *(v112 + v113[16]) = 0;
  *(v112 + v113[17]) = 0;
  *v119 = v132;
  v119[8] = v219;
  (*(v114 + 32))(v112 + v113[19], v127, v126);
  *v225 = v138;
  v225[1] = v137;
  sub_10020AD90(v0 + 952, v120, &qword_10077E968);
  sub_10047D364(v135, v133, type metadata accessor for AppInstall);
  sub_1001F0C48(&qword_100780F18);
  v122 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_10069E680;
  sub_10047D160(v112, v123 + v122, type metadata accessor for AppPackage);

  sub_10047D3CC(v139, type metadata accessor for AppStoreMetadata);
  sub_10047D3CC(v135, type metadata accessor for AppInstall);

  v124 = *(v0 + 8);

  return v124(v123);
}

unint64_t sub_10047C9F8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v50 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v50 - v10;
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  if (sub_1005F5734())
  {
    static Logger.install.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "App installation is restricted", v16, 2u);
    }

    (*(v2 + 8))(v5, v1);
    sub_10047D42C();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0;
LABEL_9:
    v28 = 3;
LABEL_10:
    *(v17 + 40) = v28;
    return swift_willThrow();
  }

  v50 = v11;
  v51 = v13;
  v52 = v2;
  v56 = v1;
  v18 = sub_1005F5804();
  v19 = v0 + *(type metadata accessor for AppStorePreflightTask() + 20);
  v20 = type metadata accessor for AppStoreItem(0);
  v21 = v19 + *(v20 + 24);
  sub_100397D84(v53);
  v22 = v54;
  v23 = v55;
  sub_100006D8C(v53, v54);
  v24 = (*(v23 + 8))(v22, v23);
  sub_10000710C(v53);
  if (v18 < v24)
  {
    static Logger.install.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v25, v26, "Exceedes content rating: %ld", v27, 0xCu);
    }

    (*(v52 + 8))(v8, v56);
    sub_10047D42C();
    swift_allocError();
    *v17 = 1;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    goto LABEL_9;
  }

  result = *(v21 + *(type metadata accessor for AppStoreMetadata(0) + 140));
  if (result)
  {
    v30 = sub_1004FFBB4(result);
    if (v30[2])
    {
      v31 = v51;
      static Logger.install.getter();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136315138;
        v36 = Array.description.getter();
        v38 = sub_1002346CC(v36, v37, v53);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Mismatched capabilities: %s", v34, 0xCu);
        sub_10000710C(v35);
      }

      (*(v52 + 8))(v31, v56);
      sub_10047D42C();
      swift_allocError();
      *v39 = v30;
      *(v39 + 8) = 0u;
      *(v39 + 24) = 0u;
      *(v39 + 40) = 0;
      return swift_willThrow();
    }
  }

  v40 = *(v19 + *(v20 + 28));
  if (!*(v40 + 16))
  {
    __break(1u);
    return result;
  }

  v41 = type metadata accessor for AppStorePackage(0);
  v42 = *(v41 - 8);
  result = v41 - 8;
  v43 = v40 + *(result + 32) + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  if ((*(v43 + 8) & 1) == 0)
  {
    v44 = *v43;
    result = sub_1004FF1E8();
    v45 = result;
    if ((result & 0x8000000000000000) != 0 || result < v44)
    {
      v46 = v50;
      static Logger.install.getter();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 134349312;
        *(v49 + 4) = v44;
        *(v49 + 12) = 2050;
        *(v49 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v47, v48, "Insufficient space available. Need %{public}llu, available: %{public}ld", v49, 0x16u);
        v46 = v50;
      }

      (*(v52 + 8))(v46, v56);
      sub_10047D42C();
      swift_allocError();
      *v17 = v44;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      v28 = 2;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppStorePreflightTask()
{
  result = qword_100784640;
  if (!qword_100784640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10047D06C()
{
  result = qword_1007813E0;
  if (!qword_1007813E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007813E0);
  }

  return result;
}

uint64_t sub_10047D0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_10047D11C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10047D160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047D1C8(uint64_t a1)
{
  v4 = *(type metadata accessor for CellularIdentity() - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1001F0E54;

  return sub_1005C9BB4(a1, v6, v1 + v5);
}

uint64_t sub_10047D2AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001F0E54;

  return sub_100350418(a1, v4);
}

uint64_t sub_10047D364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047D3CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10047D42C()
{
  result = qword_1007845E0;
  if (!qword_1007845E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007845E0);
  }

  return result;
}

uint64_t sub_10047D480(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_10047D49C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_10047D4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10047D534(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

void sub_10047D590()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppStoreItem(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AppInstallRequestType();
      if (v2 <= 0x3F)
      {
        sub_100476B28();
        if (v3 <= 0x3F)
        {
          type metadata accessor for DDMDeclaration(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10047D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v12 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10047DD7C(a1, a2, a3, a4, a5 & 1);
  v30 = sub_1001F0C48(&qword_10077EF38);
  v20 = sub_100213FA0(&qword_10077EF40, &qword_10077EF38);
  LOBYTE(v29) = 0;
  v31 = v20;
  *(&v29 + 1) = v19;
  sub_1001F0C48(&qword_10077EF48);
  inited = swift_initStackObject();
  v28 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v29, inited + 32);
  sub_1001F0C48(&qword_10077EF50);
  v22 = swift_initStackObject();
  *(v22 + 16) = v28;
  *(v22 + 32) = inited;

  v23 = sub_1005AEA5C(v22);
  swift_setDeallocating();
  sub_1000032A8(v22 + 32, &qword_10077FA00);
  v24 = sub_10047E760(0, 0, v23, sub_10047E6EC, 0, a6);

  if (v24)
  {
    sub_100535748(v24, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_1000032A8(v14, &qword_10077EF30);
    }

    else
    {
      (*(v16 + 32))(v18, v14, v15);
      Date.timeIntervalSinceNow.getter();
      if (v25 > -86400.0)
      {
        v26 = sub_10047D9DC(2, v24);

        (*(v16 + 8))(v18, v15);
        return v26;
      }

      (*(v16 + 8))(v18, v15);
    }
  }

  return 0;
}

uint64_t sub_10047D9DC(uint64_t a1, void *a2)
{
  v3 = String._bridgeToObjectiveC()();

  v4 = [a2 valueForProperty:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100323B90(v12, &v10);
  if (v11)
  {
    sub_1001F6498(&v10, v9);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10020A6D0(v9, v8);
    if (swift_dynamicCast())
    {
      v5 = v7;
    }

    else
    {
      sub_10054AA54(v9, v8);

      v5 = *&v8[0];
    }

    sub_10000710C(v9);
    sub_1000032A8(v12, &qword_100783A30);
  }

  else
  {
    sub_1000032A8(v12, &qword_100783A30);
    return 0;
  }

  return v5;
}

void sub_10047DC1C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v16 = sub_1001F0C48(&qword_100784698);
  v17 = sub_100213FA0(&qword_1007846A0, &qword_100784698);
  v13 = 0;
  v14 = a1;
  v15 = a2;

  v6 = sub_10023582C(&v13, v5);
  v8 = v7;
  if (v16)
  {
    sub_10000710C(&v13);
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      v11 = *(v8 + 32 + 8 * v10);
      type metadata accessor for MarketplaceCertificateEntity.Entity();
      v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v11 onConnection:v6];
      if (([v12 existsInDatabase] & 1) == 0)
      {

        goto LABEL_10;
      }

      ++v10;
      [v12 deleteFromDatabase];

      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void *sub_10047DD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_1001F0C48(&qword_100784698);
  v27 = v10;
  v11 = sub_100213FA0(&qword_1007846A0, &qword_100784698);
  v28 = v11;
  LOWORD(v25) = 0;
  *(&v25 + 1) = a1;
  v26 = a2;
  sub_1001F0C48(&qword_10077EF48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v25, inited + 32);
  v23 = v10;
  v24 = v11;
  LOWORD(v21) = 4;
  *(&v21 + 1) = a3;
  v22 = a4;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v21, v13 + 32);
  v19 = sub_1001F0C48(&qword_1007846A8);
  LOWORD(v18) = 3;
  v20 = sub_100213FA0(&qword_1007846B0, &qword_1007846A8);
  *(&v18 + 1) = a5 & 1;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v18, v14 + 32);
  sub_1001F0C48(&qword_10077EF50);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1006A4050;
  *(v15 + 32) = inited;
  *(v15 + 40) = v13;
  *(v15 + 48) = v14;

  v16 = sub_1005AEA5C(v15);
  swift_setDeallocating();
  sub_1001F0C48(&qword_1007846B8);
  swift_arrayDestroy();
  return v16;
}

void *sub_10047DF9C()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_10047E074;
  v1[3] = 0;
  v1[4] = 0xD000000000000017;
  v1[5] = 0x80000001006CB920;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_10047E074()
{
  strcpy(v33, "distributor_id");
  v33[15] = -18;
  v34 = 1415071060;
  v35 = 0xE400000000000000;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 1;
  v28[0] = 0xD000000000000011;
  v28[1] = 0x80000001006C3E30;
  v28[2] = 1112493122;
  v28[3] = 0xE400000000000000;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v23[0] = 0xD000000000000010;
  v23[1] = 0x80000001006C3E50;
  v23[2] = 1112493122;
  v23[3] = 0xE400000000000000;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v18[0] = 0xD000000000000010;
  v18[1] = 0x80000001006C3E70;
  v18[2] = 0x52454745544E49;
  v18[3] = 0xE700000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  v13[0] = 7107189;
  v13[1] = 0xE300000000000000;
  v13[2] = 1415071060;
  v13[3] = 0xE400000000000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 1;
  strcpy(v12, "distributor_id");
  HIBYTE(v12[1]) = -18;
  v0._countAndFlagsBits = 2019846495;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  v1 = v12[0];
  v2 = v12[1];
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E990;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v4 = swift_allocObject();
  *(inited + 32) = v4;
  sub_1002783D8(v33, v4 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v5 = swift_allocObject();
  *(inited + 72) = v5;
  sub_1002783D8(v28, v5 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v6 = swift_allocObject();
  *(inited + 112) = v6;
  sub_1002783D8(v23, v6 + 16);
  *(inited + 176) = &type metadata for SQLiteColumn;
  *(inited + 184) = &off_10076CDE0;
  v7 = swift_allocObject();
  *(inited + 152) = v7;
  sub_1002783D8(v18, v7 + 16);
  *(inited + 216) = &type metadata for SQLiteColumn;
  *(inited + 224) = &off_10076CDE0;
  v8 = swift_allocObject();
  *(inited + 192) = v8;
  sub_1002783D8(v13, v8 + 16);
  *(inited + 256) = &type metadata for SQLiteIndex;
  *(inited + 264) = &off_10076CDD8;
  v9 = swift_allocObject();
  *(inited + 232) = v9;
  strcpy((v9 + 16), "distributor_id");
  *(v9 + 31) = -18;
  *(v9 + 32) = v1;
  *(v9 + 40) = v2;
  *(v9 + 48) = 1;
  v10 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v13);
  sub_100278434(v18);
  sub_100278434(v23);
  sub_100278434(v28);
  sub_100278434(v33);
  return v10;
}

void sub_10047E388(uint64_t a1, uint64_t a2, _BYTE *a3, void **a4, void (*a5)(void **__return_ptr, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  a5(&v10, a1, a7);
  v9 = *a4;
  *a4 = v10;

  *a3 = 1;
}

void *sub_10047E3E8(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  result = a5(&v10, a1, a7);
  *a4 = v10;
  *a3 = 1;
  return result;
}

id sub_10047E49C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (a1)
  {
    if (v3)
    {
      v27 = _swiftEmptyArrayStorage;
      sub_1005263EC(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = a2 + 32;
      do
      {
        sub_10020A980(v5, v22);
        v6 = v23;
        v7 = v24;
        sub_100006D8C(v22, v23);
        v8 = (*(v7 + 24))(v6, v7);
        v26 = sub_10047ED38();
        *&v25 = v8;
        sub_10000710C(v22);
        v27 = v4;
        v10 = v4[2];
        v9 = v4[3];
        if (v10 >= v9 >> 1)
        {
          sub_1005263EC((v9 > 1), v10 + 1, 1);
          v4 = v27;
        }

        v4[2] = v10 + 1;
        sub_1001F6498(&v25, &v4[4 * v10 + 4]);
        v5 += 40;
        --v3;
      }

      while (v3);
    }

    v18 = &selRef_predicateMatchingAnyPredicates_;
  }

  else
  {
    if (v3)
    {
      v27 = _swiftEmptyArrayStorage;
      sub_1005263EC(0, v3, 0);
      v11 = _swiftEmptyArrayStorage;
      v12 = a2 + 32;
      do
      {
        sub_10020A980(v12, v22);
        v13 = v23;
        v14 = v24;
        sub_100006D8C(v22, v23);
        v15 = (*(v14 + 24))(v13, v14);
        v26 = sub_10047ED38();
        *&v25 = v15;
        sub_10000710C(v22);
        v27 = v11;
        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          sub_1005263EC((v16 > 1), v17 + 1, 1);
          v11 = v27;
        }

        v11[2] = v17 + 1;
        sub_1001F6498(&v25, &v11[4 * v17 + 4]);
        v12 += 40;
        --v3;
      }

      while (v3);
    }

    v18 = &selRef_predicateMatchingAllPredicates_;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [objc_opt_self() *v18];

  return v20;
}

void sub_10047E6EC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MarketplaceCertificateEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_10047E760(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = 0;
  type metadata accessor for MarketplaceCertificateEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047E49C(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v46 = a4;
      v47 = a5;
      v48 = v12;

      v15 = (a1 + 33);
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
          }

          *(v16 + 2) = v23 + 1;
          v24 = &v16[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (v18 <= 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v31 = *(v16 + 2);
          v30 = *(v16 + 3);
          if (v31 >= v30 >> 1)
          {
            v16 = sub_100009530((v30 > 1), v31 + 1, 1, v16);
          }

          *(v16 + 2) = v31 + 1;
          v32 = &v16[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          if (v18 <= 1)
          {
LABEL_18:
            v25 = 0x7562697274736964;
            v26 = 0xEE0064695F726F74;
            if (v18)
            {
              v25 = 0xD000000000000011;
              v26 = 0x80000001006C3E30;
            }

            goto LABEL_22;
          }
        }

        if (v18 == 2)
        {
          v25 = 0xD000000000000010;
          v26 = 0x80000001006C3E50;
        }

        else if (v18 == 3)
        {
          v25 = 0xD000000000000010;
          v26 = 0x80000001006C3E70;
        }

        else
        {
          v26 = 0xE300000000000000;
          v25 = 7107189;
        }

LABEL_22:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100009530((v33 > 1), v34 + 1, 1, v17);
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v25;
        *(v35 + 5) = v26;
        v15 += 2;
        if (!--v14)
        {

          v12 = v48;
          a4 = v46;
          a5 = v47;
          goto LABEL_29;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v37];
  }

  v38 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v39 = swift_allocObject();
  v39[2] = &v50;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_10047ECA8;
  *(v40 + 24) = v39;
  aBlock[4] = sub_10047ED08;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100765DA8;
  v41 = _Block_copy(aBlock);
  v42 = a6;

  [v38 enumeratePersistentIDsUsingBlock:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45 = v50;

    return v45;
  }

  return result;
}

void sub_10047ECA8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  (*(v3 + 24))(&v7, a1, *(v3 + 40));
  v6 = *v5;
  *v5 = v7;

  *a3 = 1;
}

unint64_t sub_10047ED38()
{
  result = qword_100784690;
  if (!qword_100784690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100784690);
  }

  return result;
}

uint64_t sub_10047EDD8()
{
  sub_10047F748();
  v1 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  *(v0 + 88) = [v1 initWithServiceName:v2 viewControllerClassName:v3];

  return _swift_task_switch(sub_10047EEBC, 0, 0);
}

uint64_t sub_10047EEBC()
{
  v2 = v0[10];
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_10047EF60;
  v3 = swift_continuation_init();
  sub_10047F0A0(v3, v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10047EF60()
{

  return _swift_task_switch(sub_10047F040, 0, 0);
}

uint64_t sub_10047F040()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_10047F0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  aBlock[4] = sub_10047F9BC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100225DB4;
  aBlock[3] = &unk_100765E78;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 responderWithHandler:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(BSAction) initWithInfo:0 responder:v11];
  sub_1001F0C48(&qword_10077E640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A2450;
  *(inited + 32) = v12;
  v14 = v12;
  sub_1001F5C54(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10047F9CC();
  sub_10047FA18();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v6 setActions:isa];

  v16 = [objc_opt_self() newHandleWithDefinition:a3 configurationContext:v6];
  v17 = *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle);
  *(a2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle) = v16;
  v18 = v16;

  [v18 registerObserver:a2];
  v19 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v18 activateWithContext:v19];
}

void sub_10047F360()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    static Logger.install.getter();
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = *&v6[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey];
      *(v9 + 4) = v11;
      *v10 = v11;
      v12 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Transparency sheet confirmed", v9, 0xCu);
      sub_1000032A8(v10, &qword_10077F920);
    }

    (*(v1 + 8))(v3, v0);
    swift_continuation_throwingResume();
  }
}

id sub_10047F6A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BATransparencySheetTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10047F748()
{
  v11 = 0u;
  v12 = 0u;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v0 = [objc_opt_self() standardUserDefaults];
    if (!v0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = String._bridgeToObjectiveC()();
    v0 = [v1 initWithSuiteName:v2];

    if (!v0)
    {
      goto LABEL_10;
    }
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v10[0] = v13;
  v10[1] = v14;
  if (*(&v14 + 1))
  {
    sub_1000032A8(&v11, &qword_100783A30);
    sub_1001F6498(v10, &v13);
    goto LABEL_11;
  }

LABEL_10:
  v13 = v11;
  v14 = v12;
LABEL_11:
  v5 = *(&v14 + 1);
  sub_1000032A8(&v13, &qword_100783A30);
  if (v5)
  {
    return;
  }

  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v7 = objc_allocWithZone(NSUserDefaults);
    v8 = String._bridgeToObjectiveC()();
    v6 = [v7 initWithSuiteName:v8];

    if (!v6)
    {
      return;
    }

    goto LABEL_16;
  }

  v6 = [objc_opt_self() standardUserDefaults];
  if (v6)
  {
LABEL_16:
    v9 = String._bridgeToObjectiveC()();
    [v6 setBool:1 forKey:v9];
  }
}

unint64_t sub_10047F9CC()
{
  result = qword_1007847B0;
  if (!qword_1007847B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007847B0);
  }

  return result;
}

unint64_t sub_10047FA18()
{
  result = qword_1007847B8;
  if (!qword_1007847B8)
  {
    sub_10047F9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007847B8);
  }

  return result;
}

uint64_t sub_10047FA70()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.install.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Sheet did activate", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_10047FC14()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.install.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *&v5[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey];
    *(v8 + 4) = v10;
    *v9 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Sheet did deactivate", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  (*(v2 + 8))(v4, v1);
  v12 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle;
  v13 = *&v5[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle];
  if (v13)
  {
    [v13 unregisterObserver:v5];
    v14 = *&v5[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v5[v12] = 0;
}

uint64_t sub_10047FDEC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle;
  v11 = *&v1[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_remoteHandle];
  if (v11)
  {
    [v11 unregisterObserver:v1];
    v12 = *&v1[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v1[v10] = 0;

  if (a1)
  {
    swift_errorRetain();
    static Logger.install.getter();
    swift_errorRetain();
    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v4;
      v18 = v17;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v16 = 138412546;
      v33 = v3;
      v19 = *&v13[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey];
      *(v16 + 4) = v19;
      *v18 = v19;
      *(v16 + 12) = 2082;
      swift_getErrorValue();
      v20 = v19;
      v21 = Error.localizedDescription.getter();
      v23 = sub_1002346CC(v21, v22, &v35);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Sheet did invalidate with error: %{public}s", v16, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v32);

      return (*(v34 + 8))(v9, v33);
    }

    else
    {

      return (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    static Logger.install.getter();
    v25 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = *&v25[OBJC_IVAR____TtC28ManagedAppDistributionDaemon23BATransparencySheetTask_logKey];
      *(v28 + 4) = v30;
      *v29 = v30;
      v31 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Sheet did invalidate", v28, 0xCu);
      sub_1000032A8(v29, &qword_10077F920);
    }

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1004801A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_1005266AC(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v11 = *(*(a1 + 48) + (result << 6) + 32);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_1005266AC((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v10 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    _swiftEmptyArrayStorage[v13 + 4] = v11;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_100323C00(result, v10, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_100323C00(result, v10, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
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

void *sub_1004803C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_100526304(0, v1, 0);
  v3 = v2 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v24 = v2 + 64;
  v25 = v1;
  v26 = v2 + 56;
  v27 = v2;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v6;
    v29 = *(v2 + 36);
    v9 = (*(v2 + 48) + (v5 << 6));
    v30 = *v9;
    v31 = v9[1];
    swift_bridgeObjectRetain_n();

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 58;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_100526304((v14 > 1), v15 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[2 * v15];
    v16[4] = v30;
    v16[5] = v31;
    v2 = v27;
    v7 = 1 << *(v27 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = v26;
    v17 = *(v26 + 8 * v8);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v27 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v8 << 6;
      v20 = v8 + 1;
      v21 = (v24 + 8 * v8);
      while (v20 < (v7 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100323C00(v5, v29, 0);
          v7 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_100323C00(v5, v29, 0);
    }

LABEL_4:
    v6 = v28 + 1;
    v5 = v7;
    if (v28 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
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

Swift::Int sub_1004806A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10048075C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);

  return String.hash(into:)();
}

Swift::Int sub_1004807EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004808A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_1004896CC(v7, v8) & 1;
}

uint64_t sub_1004808F0()
{

  sub_10000710C(v0 + 56);
  sub_10000710C(v0 + 96);
  sub_1000032A8(v0 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LicenseRenewalBatch_resolutionURL, &unk_1007809F0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LicenseRenewalBatch()
{
  result = qword_1007847E8;
  if (!qword_1007847E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004809E0()
{
  sub_10037F89C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100480A98()
{
  *(v1 + 72) = v0;
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_100480B2C;

  return sub_100480DB8(1);
}

uint64_t sub_100480B2C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100480C68, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_100480C68()
{
  *(v0 + 64) = *(v0 + 88);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast() && *(v0 + 32) && (v1 = *(v0 + 16), , v1 == -7006))
  {

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1003AD424;

    return sub_100480DB8(0);
  }

  else
  {

    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100480DB8(char a1)
{
  *(v2 + 480) = v1;
  *(v2 + 273) = a1;
  v3 = type metadata accessor for URL();
  *(v2 + 488) = v3;
  *(v2 + 496) = *(v3 - 8);
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = type metadata accessor for ConfigurationBag(0);
  *(v2 + 528) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 536) = v4;
  *(v2 + 544) = *(v4 - 8);
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();

  return _swift_task_switch(sub_100480F5C, 0, 0);
}

uint64_t sub_100480F5C()
{
  v1 = *(v0 + 480);
  static Logger.ald.getter();
  sub_10048465C(v1, v0 + 16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 600);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v0 + 32);
    sub_100484694(v0 + 16);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Fetching configuration bag", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_100484694(v0 + 16);
  }

  v11 = *(v6 + 8);
  v11(v5, v7);
  *(v0 + 608) = v11;
  v12 = *(v0 + 480);
  v13 = *v12;
  *(v0 + 616) = *v12;
  v15 = *(v13 + 40);
  v14 = *(v13 + 48);
  *(v0 + 624) = v14;
  sub_10020A980(v13 + 96, v0 + 328);
  v16 = v12[2];
  *(v0 + 632) = v16;

  v17 = swift_task_alloc();
  *(v0 + 640) = v17;
  *v17 = v0;
  v17[1] = sub_100481168;
  v18 = *(v0 + 528);

  return sub_1003936EC(v18, v15, v14, v0 + 328, v16);
}

uint64_t sub_100481168()
{
  v2 = *v1;
  *(v2 + 648) = v0;

  sub_10000710C(v2 + 328);

  if (v0)
  {
    v3 = sub_100484438;
  }

  else
  {
    v3 = sub_1004812A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004812A8()
{
  v1 = *(v0 + 480);
  static Logger.ald.getter();
  sub_10048465C(v1, v0 + 88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 608);
  v6 = *(v0 + 592);
  v7 = *(v0 + 536);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v0 + 104);
    sub_100484694(v0 + 88);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Fetching certificates", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_100484694(v0 + 88);
  }

  v5(v6, v7);
  v11 = *(v0 + 632);
  v12 = *(v0 + 616);
  v42 = *(v0 + 528);
  v47 = *(v0 + 520);
  v13 = *(v0 + 480);
  v48 = *(v0 + 273);
  v46 = type metadata accessor for DecoratedHTTP();
  sub_10020A980(v12 + 56, v0 + 368);
  v14 = *(v12 + 24);
  v45 = *(v12 + 16);
  v44 = *(v13 + 8);
  v15 = *(v13 + 48);
  v43 = *(v13 + 64);
  v16 = sub_100006D8C((v13 + 24), v15);
  v17 = objc_opt_self();

  v18 = v11;
  v19 = [v17 ephemeralSessionConfiguration];
  [v19 setHTTPShouldSetCookies:0];
  [v19 setHTTPCookieAcceptPolicy:1];
  [v19 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v20 = [objc_opt_self() sessionWithConfiguration:v19];

  type metadata accessor for PlainHTTP();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  v22 = *(v15 - 8);
  v23 = swift_task_alloc();
  (*(v22 + 16))(v23, v16, v15);
  *(v0 + 656) = sub_10038E7B4(v21, v0 + 368, v45, v14, v44, v18, v23, v46, v15, v43);

  sub_10020A980(v12 + 56, v0 + 408);
  v24 = *(*sub_100006D8C((v13 + 24), *(v13 + 48)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_certificateStore);
  *(v0 + 664) = v24;
  v25 = *(v47 + 20);
  *(v0 + 276) = v25;
  v26 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  *(v0 + 672) = v26;
  v27 = *(v26 + 28);
  *(v0 + 324) = v27;
  v28 = *(v0 + 432);
  v29 = *(v0 + 440);
  *(v0 + 680) = v28;
  *(v0 + 688) = v29;

  *(v0 + 696) = sub_100006D8C((v0 + 408), v28);
  v30 = *(v29 + 40);
  *(v0 + 704) = v30;
  *(v0 + 712) = (v29 + 40) & 0xFFFFFFFFFFFFLL | 0x80A6000000000000;
  v31 = v30(v28, v29);
  *(v0 + 720) = v31;
  *(v0 + 728) = v32;
  if (v48 == 1)
  {
    v33 = v31;
    v34 = v32;
    v35 = swift_task_alloc();
    *(v0 + 736) = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v42 + v25 + v27;
    *(v35 + 40) = 0;
    v36 = swift_task_alloc();
    *(v0 + 744) = v36;
    *v36 = v0;
    v36[1] = sub_100481830;

    return sub_1003ADB28(v0 + 464, sub_1003BE804, v35, v24);
  }

  else
  {
    v38 = *(v0 + 324);
    v39 = *(v0 + 276);
    v40 = *(v0 + 528);
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 272) = -1;
    v41 = swift_task_alloc();
    *(v0 + 760) = v41;
    *v41 = v0;
    v41[1] = sub_1004820B0;

    return sub_10038FFA4(v40 + v39 + v38, 0, v0 + 232, 0, 1);
  }
}

uint64_t sub_100481830()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_100481D3C;
  }

  else
  {
    v2 = sub_100481964;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100481964()
{
  v32 = v0;
  v1 = *(v0 + 472);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 324);
    v3 = *(v0 + 276);
    v4 = *(v0 + 528);
    *(v0 + 248) = 0u;
    *(v0 + 264) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 272) = -1;
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_1004820B0;

    return sub_10038FFA4(v4 + v3 + v2, 0, v0 + 232, 0, 1);
  }

  else
  {
    v7 = *(v0 + 464);
    v8 = *(v0 + 632);
    static Logger.ald.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 632);
      v29 = *(v0 + 584);
      v30 = *(v0 + 608);
      v28 = *(v0 + 536);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v7;
      v16 = swift_slowAlloc();
      v31 = v16;
      *v13 = 138412546;
      *(v13 + 4) = v12;
      *v14 = v12;
      *(v13 + 12) = 2082;
      v17 = v12;
      *(v13 + 14) = sub_1002346CC(0x6974707972636E65, 0xEA00000000006E6FLL, &v31);
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Returning cached data for %{public}s certificate", v13, 0x16u);
      sub_1000032A8(v14, &qword_10077F920);

      sub_10000710C(v16);
      v7 = v15;

      v30(v29, v28);
    }

    else
    {
      v18 = *(v0 + 608);
      v19 = *(v0 + 584);
      v20 = *(v0 + 536);

      v18(v19, v20);
    }

    v21 = *(v0 + 528) + *(v0 + 276) + *(*(v0 + 672) + 24);
    v22 = (*(v0 + 704))(*(v0 + 680), *(v0 + 688));
    v24 = v23;
    *(v0 + 856) = v7;
    *(v0 + 848) = v1;
    *(v0 + 840) = v21;
    *(v0 + 832) = v22;
    *(v0 + 824) = v23;
    v25 = swift_task_alloc();
    *(v0 + 864) = v25;
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = 1;
    v26 = swift_task_alloc();
    *(v0 + 872) = v26;
    *v26 = v0;
    v26[1] = sub_100482B60;
    v27 = *(v0 + 664);

    return sub_1003ADB28(v0 + 448, sub_1003BE2A0, v25, v27);
  }
}

uint64_t sub_100481D3C()
{

  v1 = *(v0 + 528);

  sub_10000710C(v0 + 408);

  sub_100489798(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100481E60()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 276);
  v6 = *(v0 + 528);
  v19 = *(v0 + 273);

  v7 = v6 + v5 + *(v4 + 24);
  v8 = v1(v3, v2);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  if (v19)
  {
    *(v0 + 856) = v11;
    *(v0 + 848) = v10;
    *(v0 + 840) = v7;
    *(v0 + 832) = v8;
    *(v0 + 824) = v9;
    v12 = v8;
    v13 = v9;
    v14 = swift_task_alloc();
    *(v0 + 864) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v14 + 32) = v7;
    *(v14 + 40) = 1;
    v15 = swift_task_alloc();
    *(v0 + 872) = v15;
    *v15 = v0;
    v15[1] = sub_100482B60;
    v16 = *(v0 + 664);

    return sub_1003ADB28(v0 + 448, sub_1003BE2A0, v14, v16);
  }

  else
  {
    *(v0 + 952) = v11;
    *(v0 + 944) = v10;
    *(v0 + 936) = v7;
    *(v0 + 928) = v8;
    *(v0 + 920) = v9;
    *(v0 + 312) = 0;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 320) = -1;
    v18 = swift_task_alloc();
    *(v0 + 960) = v18;
    *v18 = v0;
    v18[1] = sub_1004832A4;

    return sub_10038FFA4(v7, 0, v0 + 280, 0, 1);
  }
}

uint64_t sub_1004820B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[96] = a1;
  v5[97] = a2;
  v5[98] = a3;
  v5[99] = v3;

  sub_1000032A8((v5 + 29), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_1004827C4;
  }

  else
  {
    v6 = sub_1004821E8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004821E8()
{
  v58 = v0;
  if ([*(v0 + 784) statusCode] == 200)
  {
    v1 = *(v0 + 776);
    v2 = *(v0 + 768);
    v3 = *(v0 + 728);
    v4 = *(v0 + 720);
    v5 = *(v0 + 528) + *(v0 + 276) + *(v0 + 324);
    v6 = swift_task_alloc();
    *(v0 + 800) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v6 + 32) = v5;
    *(v6 + 40) = 0;
    *(v6 + 48) = v2;
    *(v6 + 56) = v1;
    v7 = swift_task_alloc();
    *(v0 + 808) = v7;
    *v7 = v0;
    v7[1] = sub_1004828E8;
    v8 = *(v0 + 664);

    return sub_10052BA68(sub_1003BE260, v6, v8);
  }

  else
  {
    v10 = *(v0 + 784);
    v11 = *(v0 + 324);
    v12 = *(v0 + 632);
    v13 = *(v0 + 512);
    v14 = *(v0 + 488);
    v15 = *(v0 + 496);
    v16 = *(v0 + 528) + *(v0 + 276);
    static Logger.ald.getter();
    (*(v15 + 16))(v13, v16 + v11, v14);
    v17 = v10;
    v18 = v12;
    v19 = v17;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 784);
    if (v22)
    {
      v24 = *(v0 + 632);
      v54 = *(v0 + 576);
      v55 = *(v0 + 608);
      v53 = *(v0 + 536);
      v25 = *(v0 + 512);
      v26 = *(v0 + 496);
      v52 = *(v0 + 488);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v27 = 138413058;
      *(v27 + 4) = v24;
      *v28 = v24;
      *(v27 + 12) = 2082;
      v29 = v24;
      *(v27 + 14) = sub_1002346CC(0x6974707972636E65, 0xEA00000000006E6FLL, &v56);
      *(v27 + 22) = 2082;
      v30 = URL.absoluteString.getter();
      v32 = v31;
      (*(v26 + 8))(v25, v52);
      v33 = sub_1002346CC(v30, v32, &v56);

      *(v27 + 24) = v33;
      *(v27 + 32) = 2050;
      v34 = [v23 statusCode];

      *(v27 + 34) = v34;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%@] Invalid status code fetching %{public}s certificate from %{public}s: %{public}ld", v27, 0x2Au);
      sub_1000032A8(v28, &qword_10077F920);

      swift_arrayDestroy();

      v55(v54, v53);
    }

    else
    {
      v35 = *(v0 + 608);
      v36 = *(v0 + 576);
      v37 = *(v0 + 536);
      v38 = *(v0 + 512);
      v39 = *(v0 + 488);
      v40 = *(v0 + 496);

      (*(v40 + 8))(v38, v39);
      v35(v36, v37);
    }

    v41 = *(v0 + 784);
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    type metadata accessor for InternalError();
    sub_10048989C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v56 = 0;
    v45 = v44;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v56 = 0xD000000000000014;
    v57 = 0x80000001006CAAC0;
    v46._countAndFlagsBits = 0x6974707972636E65;
    v46._object = 0xEA00000000006E6FLL;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 0x6966697472656320;
    v47._object = 0xEC00000065746163;
    String.append(_:)(v47);
    v48 = v56;
    v49 = v57;
    *v45 = 0x6863746566;
    v45[1] = 0xE500000000000000;
    v45[2] = v48;
    v45[3] = v49;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v43, v42);

    v50 = *(v0 + 528);

    sub_10000710C(v0 + 408);

    sub_100489798(v50);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_1004827C4()
{

  v1 = *(v0 + 528);

  sub_10000710C(v0 + 408);

  sub_100489798(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004828E8()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_100482A1C;
  }

  else
  {
    v2 = sub_100481E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100482A1C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);

  sub_100007158(v2, v1);

  v3 = *(v0 + 528);

  sub_10000710C(v0 + 408);

  sub_100489798(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100482B60()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_100483174;
  }

  else
  {
    v2 = sub_100482C94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100482C94()
{
  v41 = v0;
  v1 = *(v0 + 456);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 824);
    *(v0 + 928) = *(v0 + 832);
    *(v0 + 920) = v2;
    *(v0 + 320) = -1;
    v3 = *(v0 + 840);
    *(v0 + 944) = *(v0 + 848);
    *(v0 + 936) = v3;
    *(v0 + 312) = 0;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    v4 = swift_task_alloc();
    *(v0 + 960) = v4;
    *v4 = v0;
    v4[1] = sub_1004832A4;

    return sub_10038FFA4(v3, 0, v0 + 280, 0, 1);
  }

  else
  {
    v6 = *(v0 + 448);
    v7 = *(v0 + 632);
    static Logger.ald.getter();
    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 632);
      v36 = *(v0 + 568);
      v38 = *(v0 + 608);
      v34 = *(v0 + 536);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v6;
      v15 = swift_slowAlloc();
      v40 = v15;
      *v12 = 138412546;
      *(v12 + 4) = v11;
      *v13 = v11;
      *(v12 + 12) = 2082;
      v16 = v11;
      *(v12 + 14) = sub_1002346CC(0x676E696E676973, 0xE700000000000000, &v40);
      _os_log_impl(&_mh_execute_header, v9, v10, "[%@] Returning cached data for %{public}s certificate", v12, 0x16u);
      sub_1000032A8(v13, &qword_10077F920);

      sub_10000710C(v15);
      v6 = v14;

      v38(v36, v34);
    }

    else
    {
      v17 = *(v0 + 608);
      v18 = *(v0 + 568);
      v19 = *(v0 + 536);

      v17(v18, v19);
    }

    v20 = *(v0 + 856);
    v21 = *(v0 + 848);
    *(v0 + 912) = v1;
    *(v0 + 904) = v6;
    *(v0 + 896) = v20;
    *(v0 + 888) = v21;
    v22 = *(v0 + 480);

    sub_10000710C(v0 + 408);
    static Logger.ald.getter();
    sub_10048465C(v22, v0 + 160);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 608);
    v27 = *(v0 + 560);
    v39 = *(v0 + 536);
    if (v25)
    {
      v37 = v6;
      v28 = swift_slowAlloc();
      v35 = v26;
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v33 = v27;
      v30 = *(v0 + 176);
      sub_100484694(v0 + 160);
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Fetching renewed license", v28, 0xCu);
      sub_1000032A8(v29, &qword_10077F920);

      v6 = v37;

      v35(v33, v39);
    }

    else
    {

      sub_100484694(v0 + 160);
      v26(v27, v39);
    }

    sub_10020ABFC(v20, v21);
    sub_10020ABFC(v6, v1);
    v31 = swift_task_alloc();
    *(v0 + 1024) = v31;
    *v31 = v0;
    v31[1] = sub_100483FAC;
    v32 = *(v0 + 528);

    return sub_1004846C4(v32, v20, v21, v6, v1, 1);
  }
}

uint64_t sub_100483174()
{

  sub_100007158(v0[107], v0[106]);
  v1 = v0[66];

  sub_10000710C((v0 + 51));

  sub_100489798(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004832A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[121] = a1;
  v5[122] = a2;
  v5[123] = a3;
  v5[124] = v3;

  sub_1000032A8((v5 + 35), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_1004839A8;
  }

  else
  {
    v6 = sub_1004833DC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004833DC()
{
  v57 = v0;
  if ([*(v0 + 984) statusCode] == 200)
  {
    v1 = *(v0 + 976);
    v2 = *(v0 + 968);
    v3 = *(v0 + 936);
    v4 = *(v0 + 928);
    v5 = *(v0 + 920);
    v6 = swift_task_alloc();
    *(v0 + 1000) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    *(v6 + 32) = v3;
    *(v6 + 40) = 1;
    *(v6 + 48) = v2;
    *(v6 + 56) = v1;
    v7 = swift_task_alloc();
    *(v0 + 1008) = v7;
    *v7 = v0;
    v7[1] = sub_100483AD8;
    v8 = *(v0 + 664);

    return sub_10052BA68(sub_1003BE7EC, v6, v8);
  }

  else
  {
    v10 = *(v0 + 984);
    v11 = *(v0 + 936);
    v12 = *(v0 + 632);
    v14 = *(v0 + 496);
    v13 = *(v0 + 504);
    v15 = *(v0 + 488);
    static Logger.ald.getter();
    (*(v14 + 16))(v13, v11, v15);
    v16 = v10;
    v17 = v12;
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 984);
    if (v21)
    {
      v23 = *(v0 + 632);
      v53 = *(v0 + 552);
      v54 = *(v0 + 608);
      v52 = *(v0 + 536);
      v25 = *(v0 + 496);
      v24 = *(v0 + 504);
      v51 = *(v0 + 488);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v26 = 138413058;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2082;
      v28 = v23;
      *(v26 + 14) = sub_1002346CC(0x676E696E676973, 0xE700000000000000, &v55);
      *(v26 + 22) = 2082;
      v29 = URL.absoluteString.getter();
      v31 = v30;
      (*(v25 + 8))(v24, v51);
      v32 = sub_1002346CC(v29, v31, &v55);

      *(v26 + 24) = v32;
      *(v26 + 32) = 2050;
      v33 = [v22 statusCode];

      *(v26 + 34) = v33;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Invalid status code fetching %{public}s certificate from %{public}s: %{public}ld", v26, 0x2Au);
      sub_1000032A8(v27, &qword_10077F920);

      swift_arrayDestroy();

      v54(v53, v52);
    }

    else
    {
      v34 = *(v0 + 608);
      v35 = *(v0 + 552);
      v36 = *(v0 + 536);
      v38 = *(v0 + 496);
      v37 = *(v0 + 504);
      v39 = *(v0 + 488);

      (*(v38 + 8))(v37, v39);
      v34(v35, v36);
    }

    v40 = *(v0 + 984);
    v41 = *(v0 + 976);
    v42 = *(v0 + 968);
    type metadata accessor for InternalError();
    sub_10048989C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v55 = 0;
    v44 = v43;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v55 = 0xD000000000000014;
    v56 = 0x80000001006CAAC0;
    v45._countAndFlagsBits = 0x676E696E676973;
    v45._object = 0xE700000000000000;
    String.append(_:)(v45);
    v46._countAndFlagsBits = 0x6966697472656320;
    v46._object = 0xEC00000065746163;
    String.append(_:)(v46);
    v47 = v55;
    v48 = v56;
    *v44 = 0x6863746566;
    v44[1] = 0xE500000000000000;
    v44[2] = v47;
    v44[3] = v48;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v42, v41);

    sub_100007158(*(v0 + 952), *(v0 + 944));
    v49 = *(v0 + 528);

    sub_10000710C(v0 + 408);

    sub_100489798(v49);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_1004839A8()
{

  sub_100007158(v0[119], v0[118]);
  v1 = v0[66];

  sub_10000710C((v0 + 51));

  sub_100489798(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100483AD8()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = sub_100483E5C;
  }

  else
  {
    v2 = sub_100483C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100483C0C()
{

  v14 = *(v0 + 944);
  v15 = *(v0 + 968);
  *(v0 + 888) = v14;
  *(v0 + 904) = v15;
  v1 = *(v0 + 480);

  sub_10000710C(v0 + 408);
  static Logger.ald.getter();
  sub_10048465C(v1, v0 + 160);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 608);
  v6 = *(v0 + 560);
  v7 = *(v0 + 536);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = *(v0 + 176);
    sub_100484694(v0 + 160);
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Fetching renewed license", v8, 0xCu);
    sub_1000032A8(v9, &qword_10077F920);
  }

  else
  {

    sub_100484694(v0 + 160);
  }

  v5(v6, v7);
  sub_10020ABFC(*(&v14 + 1), v14);
  sub_10020ABFC(v15, *(&v15 + 1));
  v11 = swift_task_alloc();
  *(v0 + 1024) = v11;
  *v11 = v0;
  v11[1] = sub_100483FAC;
  v12 = *(v0 + 528);

  return sub_1004846C4(v12, *(&v14 + 1), v14, v15, *(&v15 + 1), 1);
}

uint64_t sub_100483E5C()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);

  sub_100007158(v2, v1);

  sub_100007158(*(v0 + 952), *(v0 + 944));
  v3 = *(v0 + 528);

  sub_10000710C(v0 + 408);

  sub_100489798(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100483FAC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[129] = a1;
  v6[130] = a2;
  *(v6 + 264) = a3;
  v6[131] = v3;

  v7 = v5[112];
  v8 = v5[111];
  sub_100007158(v5[113], v5[114]);
  sub_100007158(v7, v8);
  if (v3)
  {
    v9 = sub_10048452C;
  }

  else
  {
    v9 = sub_10048413C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10048413C()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  sub_10020ABFC(*(v0 + 896), *(v0 + 888));
  sub_10020ABFC(v2, v1);
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1048);
  v4 = sub_1005F43D0(*(v0 + 896), *(v0 + 888), *(v0 + 904), *(v0 + 912), *(v0 + 1032), *(v0 + 1040), *(v0 + 1056), 0, 0xE000000000000000, *(v0 + 632));
  v5 = *(v0 + 1040);
  v6 = *(v0 + 1032);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  if (v3)
  {
    v11 = *(v0 + 528);

    sub_100007158(v9, v10);
    sub_100007158(v8, v7);
    sub_100007158(v6, v5);
    sub_100007158(v8, v7);
    sub_100007158(v9, v10);
    sub_100489798(v11);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = *(v0 + 528);
    v16 = v4;

    sub_100007158(v9, v10);
    sub_100007158(v8, v7);
    sub_100007158(v6, v5);
    sub_100007158(v8, v7);
    sub_100007158(v9, v10);
    sub_100489798(v14);

    v15 = *(v0 + 8);

    return v15(v16);
  }
}

uint64_t sub_100484438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10048452C()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[66];

  sub_100007158(v3, v4);
  sub_100007158(v2, v1);
  sub_100489798(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004846C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 744) = v6;
  *(v7 + 489) = a6;
  *(v7 + 736) = a5;
  *(v7 + 728) = a4;
  *(v7 + 720) = a3;
  *(v7 + 712) = a2;
  *(v7 + 704) = a1;
  v8 = type metadata accessor for Logger();
  *(v7 + 752) = v8;
  *(v7 + 760) = *(v8 - 8);
  *(v7 + 768) = swift_task_alloc();
  *(v7 + 776) = swift_task_alloc();
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v7 + 808) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v7 + 816) = v9;
  *(v7 + 824) = *(v9 - 8);
  *(v7 + 832) = swift_task_alloc();

  return _swift_task_switch(sub_100484860, 0, 0);
}

uint64_t sub_100484860()
{
  v56 = v0;
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 704);
  v5 = v4 + *(type metadata accessor for ConfigurationBag(0) + 20);
  v6 = type metadata accessor for ConfigurationBag.LicenseConfiguration(0);
  sub_100337114(v5 + *(v6 + 20), v3);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 808), &unk_1007809F0);
    type metadata accessor for InternalError();
    sub_10048989C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v7 = 0x6C6177656E6572;
    v7[1] = 0xE700000000000000;
    v7[2] = 0xD000000000000020;
    v7[3] = 0x80000001006CBAE0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v42 = *(v0 + 8);

    return v42();
  }

  else
  {
    v8 = *(v0 + 744);
    (*(*(v0 + 824) + 32))(*(v0 + 832), *(v0 + 808), *(v0 + 816));
    v53 = type metadata accessor for DecoratedHTTP();
    v9 = *v8;
    *(v0 + 840) = *v8;
    sub_10020A980(v9 + 56, v0 + 544);
    v10 = *(v9 + 24);
    v51 = *(v9 + 16);
    v49 = *(v8 + 8);
    v11 = *(v8 + 16);
    v12 = *(v8 + 48);
    v47 = *(v8 + 64);
    v13 = sub_100006D8C((v8 + 24), v12);
    v14 = objc_opt_self();

    v15 = v11;
    v16 = [v14 ephemeralSessionConfiguration];
    [v16 setHTTPShouldSetCookies:0];
    [v16 setHTTPCookieAcceptPolicy:1];
    [v16 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v17 = [objc_opt_self() sessionWithConfiguration:v16];

    type metadata accessor for PlainHTTP();
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 16) = v17;
    v19 = *(v12 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v13, v12);
    *(v0 + 848) = sub_10038E7B4(v18, v0 + 544, v51, v10, v49, v15, v20, v53, v12, v47);

    static Logger.ald.getter();
    sub_10048465C(v8, v0 + 16);
    sub_10048465C(v8, v0 + 88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 800);
    v25 = *(v0 + 760);
    v26 = *(v0 + 752);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54[0] = v52;
      *v27 = 138412546;
      v28 = *(v0 + 32);
      sub_100484694(v0 + 16);
      *(v27 + 4) = v28;
      *v48 = v28;
      *(v27 + 12) = 2082;
      swift_beginAccess();

      v50 = v26;
      v30 = sub_1004803C8(v29);

      *(v0 + 696) = v30;
      sub_1001F0C48(&unk_10077FB40);
      sub_1001F766C();
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;

      sub_100484694(v0 + 88);
      v34 = sub_1002346CC(v31, v33, v54);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Renewing licenses for apps: %{public}s", v27, 0x16u);
      sub_1000032A8(v48, &qword_10077F920);

      sub_10000710C(v52);

      v35 = *(v25 + 8);
      v35(v24, v50);
    }

    else
    {

      sub_100484694(v0 + 16);
      v35 = *(v25 + 8);
      v35(v24, v26);
      sub_100484694(v0 + 88);
    }

    *(v0 + 856) = v35;
    swift_beginAccess();

    v37 = sub_1004801A8(v36);

    if (qword_10077E580 != -1)
    {
      swift_once();
    }

    sub_1005F4004(v37, 1, *(v0 + 712), *(v0 + 720), *(v0 + 728), *(v0 + 736));
    v38 = v54[0];
    v39 = v54[1];
    v40 = v54[2];
    v41 = v54[3];
    *(v0 + 492) = v55;

    *(v0 + 472) = &type metadata for LicenseRenewalRequest;
    *(v0 + 480) = sub_1004897F4();
    v44 = swift_allocObject();
    *(v0 + 448) = v44;
    *(v44 + 16) = v38;
    *(v44 + 24) = v39;
    *(v44 + 32) = v40;
    *(v44 + 40) = v41;
    *(v44 + 48) = 0;
    *(v44 + 56) = 1;
    *(v0 + 488) = 0;
    sub_100391884(v0 + 448, v0 + 496);
    v45 = swift_task_alloc();
    *(v0 + 864) = v45;
    *v45 = v0;
    v45[1] = sub_100485028;
    v46 = *(v0 + 832);

    return sub_10038FFA4(v46, 1, v0 + 496, 0, 1);
  }
}

uint64_t sub_100485028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[109] = a1;
  v5[110] = a2;
  v5[111] = a3;
  v5[112] = v3;

  sub_1000032A8((v5 + 62), &qword_100780BA8);
  if (v3)
  {
    v6 = sub_100485898;
  }

  else
  {
    sub_1003918E0((v5 + 56));
    v6 = sub_100485170;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100485170()
{
  v56 = v0;
  if ([*(v0 + 888) statusCode] != 200)
  {
    v7 = swift_task_alloc();
    *(v0 + 1016) = v7;
    *v7 = v0;
    v8 = sub_100486728;
LABEL_7:
    v7[1] = v8;
    v9 = *(v0 + 489);

    return sub_100487510(v9);
  }

  v1 = *(v0 + 896);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100489848();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v2 = *(v0 + 888);
    v3 = *(v0 + 880);
    v4 = *(v0 + 872);
    (*(*(v0 + 824) + 8))(*(v0 + 832), *(v0 + 816));

    sub_100007158(v4, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  v10 = *(v0 + 624);
  v11 = Data.init(base64Encoded:options:)();
  *(v0 + 904) = v11;
  *(v0 + 912) = v12;
  if (v12 >> 60 == 15)
  {

    v7 = swift_task_alloc();
    *(v0 + 968) = v7;
    *v7 = v0;
    v8 = sub_100486020;
    goto LABEL_7;
  }

  v52 = v11;
  v53 = v12;
  if (v10)
  {
    v13 = *(v0 + 744);

    static Logger.ald.getter();
    sub_10048465C(v13, v0 + 304);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 856);
    v18 = *(v0 + 792);
    v19 = *(v0 + 752);
    v54 = v10;
    if (v16)
    {
      v20 = swift_slowAlloc();
      v51 = v19;
      v21 = swift_slowAlloc();
      v50 = v18;
      v22 = swift_slowAlloc();
      v55 = v22;
      *v20 = 138412546;
      v49 = v17;
      v23 = *(v0 + 320);
      sub_100484694(v0 + 304);
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2082;
      *(v0 + 688) = v10;
      sub_1001F0C48(&unk_10077FB40);
      sub_1001F766C();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = sub_1002346CC(v24, v25, &v55);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@] Licenses ineligible for renewal: %{public}s", v20, 0x16u);
      sub_1000032A8(v21, &qword_10077F920);

      sub_10000710C(v22);

      v49(v50, v51);
    }

    else
    {

      sub_100484694(v0 + 304);
      v17(v18, v19);
    }

    v33 = *(*(v0 + 840) + 32);
    v34 = -1;
    v35 = -1 << *(v33 + 32);
    if (-v35 < 64)
    {
      v34 = ~(-1 << -v35);
    }

    v36 = v34 & *(v33 + 56);
    v37 = (63 - v35) >> 6;

    v38 = 0;
    while (v36)
    {
      v39 = v38;
LABEL_26:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      *(v0 + 680) = *(*(v33 + 48) + ((v39 << 12) | (v40 << 6)) + 32);
      *(v0 + 656) = dispatch thunk of CustomStringConvertible.description.getter();
      *(v0 + 664) = v41;
      v42 = swift_task_alloc();
      *(v42 + 16) = v0 + 656;
      v43 = sub_10020A1BC(sub_1001F7FFC, v42, v54);

      if (v43)
      {

        v7 = swift_task_alloc();
        *(v0 + 920) = v7;
        *v7 = v0;
        v8 = sub_100485990;
        goto LABEL_7;
      }
    }

    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        v44 = *(v0 + 888);
        v45 = *(v0 + 880);
        v46 = *(v0 + 872);
        (*(*(v0 + 824) + 8))(*(v0 + 832), *(v0 + 816));

        sub_100007158(v46, v45);

        goto LABEL_29;
      }

      v36 = *(v33 + 56 + 8 * v39);
      ++v38;
      if (v36)
      {
        v38 = v39;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = *(v0 + 888);
    v28 = *(v0 + 880);
    v29 = *(v0 + 872);
    v30 = *(v0 + 832);
    v31 = *(v0 + 824);
    v32 = *(v0 + 816);

    sub_100007158(v29, v28);

    (*(v31 + 8))(v30, v32);
LABEL_29:
    v47 = *(v0 + 492);

    v48 = *(v0 + 8);

    return v48(v52, v53, v47);
  }

  return result;
}

uint64_t sub_100485898()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[102];

  (*(v2 + 8))(v1, v3);
  sub_1003918E0((v0 + 56));

  v4 = v0[1];

  return v4();
}

uint64_t sub_100485990(char a1)
{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v5 = sub_1004872D0;
  }

  else
  {
    *(v4 + 490) = a1 & 1;
    v5 = sub_100485ABC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100485ABC()
{
  if (*(v0 + 490) == 1)
  {
    v1 = *(v0 + 744);
    static Logger.ald.getter();
    sub_10048465C(v1, v0 + 376);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 856);
    v6 = *(v0 + 784);
    v7 = *(v0 + 752);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v0 + 392);
      sub_100484694(v0 + 376);
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Re-attempting license renewal after showing resolution sheet for ineligible license", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    else
    {

      sub_100484694(v0 + 376);
    }

    v5(v6, v7);
    v19 = swift_task_alloc();
    *(v0 + 936) = v19;
    *v19 = v0;
    v19[1] = sub_100485DA0;
    v20 = *(v0 + 736);
    v21 = *(v0 + 728);
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);

    return sub_1004846C4(v24, v23, v22, v21, v20, 0);
  }

  else
  {
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    (*(*(v0 + 824) + 8))(*(v0 + 832), *(v0 + 816));

    sub_100007158(v13, v12);

    v14 = *(v0 + 912);
    v15 = *(v0 + 904);
    v16 = *(v0 + 492);

    v17 = *(v0 + 8);

    return v17(v15, v14, v16);
  }
}

uint64_t sub_100485DA0(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v4;
  *(*v4 + 944) = v3;

  if (v3)
  {
    v9 = sub_1004873F0;
  }

  else
  {
    *(v8 + 540) = a3;
    *(v8 + 952) = a2;
    *(v8 + 960) = a1;
    v9 = sub_100485EE0;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100485EE0()
{
  v1 = *(v0 + 912);
  v2 = *(v0 + 904);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v5 = *(v0 + 872);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);

  sub_100007158(v5, v4);
  sub_10020B0E0(v2, v1);
  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  v11 = *(v0 + 540);

  v12 = *(v0 + 8);

  return v12(v9, v10, v11);
}

uint64_t sub_100486020(char a1)
{
  v4 = *v2;
  *(*v2 + 976) = v1;

  if (v1)
  {
    v5 = sub_1004870B8;
  }

  else
  {
    *(v4 + 491) = a1 & 1;
    v5 = sub_10048614C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10048614C()
{
  if (*(v0 + 491) == 1)
  {
    v1 = *(v0 + 744);
    static Logger.ald.getter();
    sub_10048465C(v1, v0 + 232);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 856);
    v6 = *(v0 + 776);
    v7 = *(v0 + 752);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v0 + 248);
      sub_100484694(v0 + 232);
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Re-attempting license renewal after showing resolution sheet for invalid response", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    else
    {

      sub_100484694(v0 + 232);
    }

    v5(v6, v7);
    v20 = swift_task_alloc();
    *(v0 + 984) = v20;
    *v20 = v0;
    v20[1] = sub_1004864BC;
    v21 = *(v0 + 736);
    v22 = *(v0 + 728);
    v23 = *(v0 + 720);
    v24 = *(v0 + 712);
    v25 = *(v0 + 704);

    return sub_1004846C4(v25, v24, v23, v22, v21, 0);
  }

  else
  {
    v11 = *(v0 + 888);
    v12 = *(v0 + 880);
    v13 = *(v0 + 872);
    v14 = *(v0 + 832);
    v15 = *(v0 + 824);
    v16 = *(v0 + 816);
    type metadata accessor for InternalError();
    sub_10048989C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v17 = 0x77656E6572;
    v17[1] = 0xE500000000000000;
    v17[2] = 0xD00000000000001BLL;
    v17[3] = 0x80000001006CBB30;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v13, v12);
    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1004864BC(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v4;
  *(*v4 + 992) = v3;

  if (v3)
  {
    v9 = sub_1004871C4;
  }

  else
  {
    *(v8 + 1064) = a3;
    *(v8 + 1000) = a2;
    *(v8 + 1008) = a1;
    v9 = sub_1004865FC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1004865FC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 1064);

  v10 = *(v0 + 8);

  return v10(v7, v8, v9);
}

uint64_t sub_100486728(char a1)
{
  v4 = *v2;
  *(*v2 + 1024) = v1;

  if (v1)
  {
    v5 = sub_100486EA0;
  }

  else
  {
    *(v4 + 537) = a1 & 1;
    v5 = sub_100486854;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100486854()
{
  if (*(v0 + 537) == 1)
  {
    v1 = *(v0 + 744);
    static Logger.ald.getter();
    sub_10048465C(v1, v0 + 160);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 856);
    v6 = *(v0 + 768);
    v7 = *(v0 + 752);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v0 + 176);
      sub_100484694(v0 + 160);
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Re-attempting license renewal after showing resolution sheet for invalid status code", v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);
    }

    else
    {

      sub_100484694(v0 + 160);
    }

    v5(v6, v7);
    v19 = swift_task_alloc();
    *(v0 + 1032) = v19;
    *v19 = v0;
    v19[1] = sub_100486C34;
    v20 = *(v0 + 736);
    v21 = *(v0 + 728);
    v22 = *(v0 + 720);
    v23 = *(v0 + 712);
    v24 = *(v0 + 704);

    return sub_1004846C4(v24, v23, v22, v21, v20, 0);
  }

  else
  {
    v11 = *(v0 + 888);
    v12 = *(v0 + 872);
    v27 = *(v0 + 832);
    v13 = *(v0 + 824);
    v25 = *(v0 + 880);
    v26 = *(v0 + 816);
    type metadata accessor for InternalError();
    sub_10048989C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v15 = v14;
    _StringGuts.grow(_:)(23);

    *(v0 + 672) = [v11 statusCode];
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    *v15 = 0x77656E6572;
    v15[1] = 0xE500000000000000;
    v15[2] = 0xD000000000000015;
    v15[3] = 0x80000001006CBB10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100007158(v12, v25);
    (*(v13 + 8))(v27, v26);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100486C34(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v4;
  *(*v4 + 1040) = v3;

  if (v3)
  {
    v9 = sub_100486FAC;
  }

  else
  {
    *(v8 + 1068) = a3;
    *(v8 + 1048) = a2;
    *(v8 + 1056) = a1;
    v9 = sub_100486D74;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100486D74()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 832);
  v5 = *(v0 + 824);
  v6 = *(v0 + 816);

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 1056);
  v8 = *(v0 + 1048);
  v9 = *(v0 + 1068);

  v10 = *(v0 + 8);

  return v10(v7, v8, v9);
}

uint64_t sub_100486EA0()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100486FAC()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004870B8()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004871C4()
{
  v1 = v0[111];
  v2 = v0[110];
  v3 = v0[109];
  v4 = v0[104];
  v5 = v0[103];
  v6 = v0[102];

  sub_100007158(v3, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004872D0()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];

  sub_100007158(v5, v4);
  sub_10020B0E0(v2, v1);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004873F0()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[104];
  v7 = v0[103];
  v8 = v0[102];

  sub_100007158(v5, v4);
  sub_10020B0E0(v2, v1);
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100487510(char a1)
{
  *(v2 + 1824) = v1;
  *(v2 + 1162) = a1;
  v3 = type metadata accessor for LicenseResolutionRequest();
  *(v2 + 1832) = v3;
  *(v2 + 1840) = *(v3 - 8);
  *(v2 + 1848) = swift_task_alloc();
  v4 = type metadata accessor for LicenseResolutionContext();
  *(v2 + 1856) = v4;
  *(v2 + 1864) = *(v4 - 8);
  *(v2 + 1872) = swift_task_alloc();
  *(v2 + 1880) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v2 + 1888) = v5;
  *(v2 + 1896) = *(v5 - 8);
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  *(v2 + 1928) = swift_task_alloc();
  *(v2 + 1936) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v2 + 1944) = v6;
  *(v2 + 1952) = *(v6 - 8);
  *(v2 + 1960) = swift_task_alloc();
  *(v2 + 1968) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v2 + 1976) = swift_task_alloc();
  *(v2 + 1984) = swift_task_alloc();

  return _swift_task_switch(sub_100487774, 0, 0);
}

uint64_t sub_100487774()
{
  v53 = v0;
  v1 = *(v0 + 1824);
  if (*(v1 + 8) == 1)
  {
    v2 = *v1;
    swift_beginAccess();
    if (*(*(v2 + 32) + 16) == 1)
    {

      sub_1005FA9E4(v3, (v0 + 1656));

      v4 = *(v0 + 1704);
      *(v0 + 1624) = *(v0 + 1688);
      *(v0 + 1640) = v4;
      v5 = *(v0 + 1672);
      *(v0 + 1592) = *(v0 + 1656);
      *(v0 + 1608) = v5;
      v6 = *(v0 + 1600);
      if (v6)
      {
        v7 = (v0 + 1384);
        v8 = *(v0 + 1640);
        v9 = *(v0 + 1648);
        v10 = *(v0 + 1162);
        *(v0 + 1528) = *(v0 + 1592);
        *(v0 + 1536) = v6;
        v11 = *(v0 + 1688);
        *(v0 + 1544) = *(v0 + 1672);
        *(v0 + 1560) = v11;
        *(v0 + 1576) = v8;
        *(v0 + 1584) = v9;
        if (v10 == 1 && (v12 = *(v0 + 1984), v13 = *(v0 + 1952), v50 = *(v0 + 1944), v48 = v8, sub_100337114(v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LicenseRenewalBatch_resolutionURL, v12), LODWORD(v12) = (*(v13 + 48))(v12, 1, v50), sub_1000032A8(*(v0 + 1984), &unk_1007809F0), v8 = v48, v12 != 1))
        {
          *(v0 + 1384) = 8;
          *(v0 + 1392) = 0u;
          *(v0 + 1408) = 0u;
          *(v0 + 1424) = 0u;
          *(v0 + 1440) = 0;
          v51 = 41;
          v14 = 24;
          v49 = 7;
        }

        else
        {
          v49 = 0;
          *(v0 + 1416) = 0u;
          *(v0 + 1432) = 0u;
          *v7 = 0u;
          *(v0 + 1400) = 0u;
          v51 = -1;
          v14 = 25;
        }

        *(v0 + 1448) = 41;
        v31 = (v0 + 1096);
        *(v0 + 1312) = v8;
        *(v0 + 1320) = v9;
        *(v0 + 1376) = v14;

        v32 = *(v0 + 1360);
        *(v0 + 1200) = *(v0 + 1344);
        *(v0 + 1216) = v32;
        *(v0 + 1232) = *(v0 + 1376);
        v33 = *(v0 + 1328);
        *(v0 + 1168) = *(v0 + 1312);
        *(v0 + 1184) = v33;
        v34 = *(v0 + 1432);
        *(v0 + 1272) = *(v0 + 1416);
        *(v0 + 1288) = v34;
        *(v0 + 1304) = *(v0 + 1448);
        v35 = *(v0 + 1400);
        *(v0 + 1240) = *v7;
        *(v0 + 1256) = v35;

        sub_1005FA9E4(v36, v52);

        v37 = v52[3];
        *(v0 + 1752) = v52[2];
        *(v0 + 1768) = v37;
        v38 = v52[1];
        *(v0 + 1720) = v52[0];
        *(v0 + 1736) = v38;
        if (*(v0 + 1728) && (v39 = *(v0 + 1760), sub_1000032A8(v0 + 1720, &qword_1007848C0), (v39 & 1) != 0))
        {
          v40 = 66;
        }

        else
        {
          v40 = 65;
        }

        v41 = *(v0 + 1824);
        *(v0 + 1456) = v40;
        *(v0 + 1512) = 0;
        *(v0 + 1464) = 0u;
        *(v0 + 1480) = 0u;
        *(v0 + 1496) = 0u;
        *(v0 + 1520) = 41;
        v42 = *(v0 + 1504);
        *(v0 + 1128) = *(v0 + 1488);
        *(v0 + 1144) = v42;
        *(v0 + 1160) = *(v0 + 1520);
        v43 = *(v0 + 1472);
        *v31 = *(v0 + 1456);
        *(v0 + 1112) = v43;
        v44 = *(*sub_100006D8C((v41 + 24), *(v41 + 48)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
        *(v0 + 1992) = v44;

        v45 = swift_allocObject();
        *(v0 + 2000) = v45;
        *(v45 + 16) = v49;
        *(v45 + 24) = 0u;
        *(v45 + 40) = 0u;
        *(v45 + 56) = 0u;
        *(v45 + 72) = 0;
        *(v45 + 80) = v51;
        *(v45 + 88) = v44;
        v46 = swift_task_alloc();
        *(v0 + 2008) = v46;
        *(v46 + 16) = &unk_10069F2C0;
        *(v46 + 24) = v45;

        sub_1001F0C48(&unk_10077FA80);
        swift_asyncLet_begin();
        v47 = swift_task_alloc();
        *(v0 + 2016) = v47;
        *v47 = v0;
        v47[1] = sub_100487E14;

        return sub_1006600F0(v31);
      }
    }

    v25 = *(v0 + 1824);
    static Logger.ald.getter();
    sub_10048465C(v25, v0 + 808);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 1912);
    v19 = *(v0 + 1896);
    v20 = *(v0 + 1888);
    if (v26)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v27 = *(v0 + 824);
      sub_100484694(v0 + 808);
      *(v21 + 4) = v27;
      *v22 = v27;
      v24 = "[%@] Not showing license resolution sheet as this was a request for multiple apps";
      goto LABEL_11;
    }

    v28 = v0 + 808;
LABEL_14:
    sub_100484694(v28);
    goto LABEL_15;
  }

  static Logger.ald.getter();
  sub_10048465C(v1, v0 + 696);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 1904);
  v19 = *(v0 + 1896);
  v20 = *(v0 + 1888);
  if (!v17)
  {

    v28 = v0 + 696;
    goto LABEL_14;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  *v21 = 138412290;
  v23 = *(v0 + 712);
  sub_100484694(v0 + 696);
  *(v21 + 4) = v23;
  *v22 = v23;
  v24 = "[%@] Not showing license resolution sheet as prompting not allowed";
LABEL_11:
  _os_log_impl(&_mh_execute_header, v15, v16, v24, v21, 0xCu);
  sub_1000032A8(v22, &qword_10077F920);

LABEL_15:
  (*(v19 + 8))(v18, v20);

  v29 = *(v0 + 8);

  return v29(0);
}

uint64_t sub_100487E14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[253] = a1;
  v3[254] = a2;

  sub_100222FFC((v3 + 182));
  v4 = swift_task_alloc();
  v3[255] = v4;
  *v4 = v6;
  v4[1] = sub_100487F74;

  return sub_1006600F0((v3 + 146));
}

uint64_t sub_100487F74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[256] = a1;
  v3[257] = a2;

  sub_100222FFC((v3 + 164));
  v4 = swift_task_alloc();
  v3[258] = v4;
  *v4 = v6;
  v4[1] = sub_1004880D4;

  return sub_1006600F0((v3 + 155));
}

uint64_t sub_1004880D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 2072) = a1;
  *(v3 + 2080) = a2;

  sub_100222FFC(v3 + 1384);

  return _swift_asyncLet_get(v3 + 16, v3 + 1808, sub_1004881E4, v3 + 656);
}

uint64_t sub_100488200()
{
  v6 = *(v0 + 2048);
  v7 = *(v0 + 2072);
  v5 = *(v0 + 2024);
  v1 = *(v0 + 1808);
  v2 = *(v0 + 1816);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 2088) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1808, sub_1004882DC, v0 + 768);
}

uint64_t sub_1004882DC()
{
  sub_10048989C(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100488390, v1, v0);
}

uint64_t sub_100488390()
{
  v1 = *(v0 + 2088);

  return _swift_task_switch(sub_100488428, v1, 0);
}

uint64_t sub_100488428()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 2096) = qword_100786178;

  return _swift_task_switch(sub_1004884C0, v1, 0);
}

uint64_t sub_1004884C0()
{
  v1 = v0[262];
  v2 = v0[261];
  v3 = sub_10048989C(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[263] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[264] = v5;
  *v5 = v0;
  v5[1] = sub_1004885FC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1161, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1004885FC()
{
  v1 = *(*v0 + 2096);

  return _swift_task_switch(sub_100488728, v1, 0);
}

uint64_t sub_10048874C()
{
  if (*(v0 + 1163))
  {
    v1 = *(v0 + 1824);
    sub_1000032A8(v0 + 1592, &qword_1007848C0);
    static Logger.ald.getter();
    sub_10048465C(v1, v0 + 880);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 1920);
    v6 = *(v0 + 1896);
    v7 = *(v0 + 1888);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = *(v0 + 896);
      sub_100484694(v0 + 880);
      *(v8 + 4) = v10;
      *v9 = v10;
      v11 = "[%@] Ignored request to resolve license issue";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v2, v3, v11, v8, 0xCu);
      sub_1000032A8(v9, &qword_10077F920);

LABEL_14:
      (*(v6 + 8))(v5, v7);

      v21 = *(v0 + 8);

      return v21(0);
    }

    v17 = v0 + 880;
    goto LABEL_13;
  }

  if (*(v0 + 1162) != 1)
  {
    v15 = &qword_1007848C0;
    v16 = v0 + 1592;
    goto LABEL_9;
  }

  v12 = *(v0 + 1976);
  v13 = *(v0 + 1952);
  v14 = *(v0 + 1944);
  sub_100489168(v0 + 1528, v12);
  sub_1000032A8(v0 + 1592, &qword_1007848C0);
  if ((*(v13 + 48))(v12, 1, v14) == 1)
  {
    v15 = &unk_1007809F0;
    v16 = *(v0 + 1976);
LABEL_9:
    sub_1000032A8(v16, v15);
    v18 = *(v0 + 1824);
    static Logger.ald.getter();
    sub_10048465C(v18, v0 + 952);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 1928);
    v6 = *(v0 + 1896);
    v7 = *(v0 + 1888);
    if (v19)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v20 = *(v0 + 968);
      sub_100484694(v0 + 952);
      *(v8 + 4) = v20;
      *v9 = v20;
      v11 = "[%@] Acknowledged developer interaction required alert";
      goto LABEL_11;
    }

    v17 = v0 + 952;
LABEL_13:
    sub_100484694(v17);
    goto LABEL_14;
  }

  v23 = *(v0 + 1824);
  (*(*(v0 + 1952) + 32))(*(v0 + 1968), *(v0 + 1976), *(v0 + 1944));
  static Logger.ald.getter();
  sub_10048465C(v23, v0 + 1024);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 1936);
  v28 = *(v0 + 1896);
  v29 = *(v0 + 1888);
  if (v26)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = *(v0 + 1040);
    sub_100484694(v0 + 1024);
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%@] Asked to resolve license issue", v30, 0xCu);
    sub_1000032A8(v31, &qword_10077F920);
  }

  else
  {

    sub_100484694(v0 + 1024);
  }

  (*(v28 + 8))(v27, v29);
  v33 = *(v0 + 1968);
  v34 = *(v0 + 1960);
  v35 = *(v0 + 1952);
  v36 = *(v0 + 1944);
  v37 = *(v0 + 1880);
  v38 = *(v0 + 1872);
  v39 = *(v0 + 1864);
  v41 = *(v0 + 1856);
  LogKey.stringValue.getter();
  (*(v35 + 16))(v34, v33, v36);
  LicenseResolutionContext.init(logKey:url:)();
  (*(v39 + 16))(v38, v37, v41);
  LicenseResolutionRequest.init(context:)();
  v40 = swift_task_alloc();
  *(v0 + 2120) = v40;
  *v40 = v0;
  v40[1] = sub_100488D44;

  return LicenseResolutionRequest.run()();
}

uint64_t sub_100488D44()
{
  *(*v1 + 2128) = v0;

  if (v0)
  {
    v2 = sub_100488FDC;
  }

  else
  {
    v2 = sub_100488E58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100488E58()
{
  v1 = v0[246];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[235];
  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];
  v9 = v0[229];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_100488FDC()
{
  v1 = v0[246];
  v2 = v0[244];
  v3 = v0[243];
  v4 = v0[235];
  v5 = v0[233];
  v6 = v0[232];
  v7 = v0[231];
  v8 = v0[230];
  v9 = v0[229];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100489168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for URLComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v10 - 8);
  v12 = v21 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100337114(*v2 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon19LicenseRenewalBatch_resolutionURL, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v17 = &unk_1007809F0;
    v18 = v12;
LABEL_5:
    sub_1000032A8(v18, v17);
    return (*(v14 + 56))(v24, 1, 1, v13);
  }

  (*(v14 + 32))(v16, v12, v13);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v17 = &unk_1007803A0;
    v18 = v5;
    goto LABEL_5;
  }

  v22 = v7;
  (*(v7 + 32))(v9, v5, v6);
  sub_1001F0C48(&qword_1007815B0);
  v21[1] = 2 * *(*(type metadata accessor for URLQueryItem() - 8) + 72);
  *(swift_allocObject() + 16) = xmmword_1006A4050;

  URLQueryItem.init(name:value:)();

  v20 = v23;
  v25 = *(v23 + 16);
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  v25 = *(v20 + 24);
  dispatch thunk of CustomStringConvertible.description.getter();
  URLQueryItem.init(name:value:)();

  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  (*(v22 + 8))(v9, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_100489638@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, __int128 *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v14 = v4;
    v15 = v5;
    v6 = (*(a3 + 48) + (result << 6));
    v7 = v6[3];
    v9 = *v6;
    v8 = v6[1];
    v13[2] = v6[2];
    v13[3] = v7;
    v13[0] = v9;
    v13[1] = v8;
    v10 = v6[1];
    *a4 = *v6;
    a4[1] = v10;
    v11 = v6[3];
    a4[2] = v6[2];
    a4[3] = v11;
    return sub_1001F71F4(v13, &v12);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004896CC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100489798(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationBag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004897F4()
{
  result = qword_1007848B0;
  if (!qword_1007848B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007848B0);
  }

  return result;
}

unint64_t sub_100489848()
{
  result = qword_1007848B8;
  if (!qword_1007848B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007848B8);
  }

  return result;
}

uint64_t sub_10048989C(unint64_t *a1, void (*a2)(uint64_t))
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