uint64_t sub_100449ED8()
{
  v2 = *(*v1 + 608);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 880) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10044A3C8;
  }

  else
  {
    v5 = sub_10044A1B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044A048()
{
  v2 = *(*v1 + 600);
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  *(*v1 + 912) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10044D1A8;
  }

  else
  {
    v5 = sub_10044C5D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044A1B8()
{
  v1 = FastSync.PaperKitMessage.data.getter();
  v3 = v2;
  v0[115] = v1;
  v0[116] = v2;
  v4 = swift_task_alloc();
  v0[117] = v4;
  *v4 = v0;
  v4[1] = sub_10044A270;

  return sub_10044F6C0(v1, v3);
}

uint64_t sub_10044A270(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 928);
  v5 = *(*v2 + 920);
  *(v3 + 944) = a1;
  *(v3 + 952) = v1;

  sub_10019671C(v5, v4);
  if (v1)
  {
    v6 = sub_10044BC04;
  }

  else
  {
    v6 = sub_10044AD9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_10044A3C8()
{
  v63 = v0;
  v1 = v0 + 248;
  v2 = *(v0 + 504);
  v3 = *(v0 + 464);
  v4 = *(*(v0 + 472) + 8);
  v4(*(v0 + 496), v3);
  v4(v2, v3);
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v6 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error processing incoming fast sync message: %@", v9, 0xCu);
    sub_1000073B4(v10, &qword_1006C1440);
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 376);

  v14 = *(v13 + v12);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
    os_unfair_lock_unlock((v14 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v18 = *(v0 + 60);
      v19 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v19 + v18) == *(v0 + 328))
      {
        break;
      }

      v20 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v21, v0 + 16, &qword_1006C8990);
      v20(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v22;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v40 = swift_task_alloc();
        *(v0 + 784) = v40;
        *v40 = v0;
        v40[1] = sub_10044636C;
        v41 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v42 = swift_task_alloc();
        *(v0 + 840) = v42;
        *v42 = v0;
        v42[1] = sub_10044872C;
        v43 = *(v0 + 616);
        v44 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v45 = *(v0 + 744);
        v46 = *(v0 + 496);
        v47 = *(v0 + 504);
        v48 = *(v0 + 464);
        v49 = *(v0 + 472);
        v50 = *(v0 + 376);
        v51 = *(v49 + 16);
        *(v0 + 856) = v51;
        *(v0 + 864) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v46, v47, v48);
        if ([*(v50 + v45) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v52 = swift_task_alloc();
          *(v0 + 872) = v52;
          *v52 = v0;
          v52[1] = sub_100449ED8;
          v41 = *(v0 + 608);
        }

        else
        {
          v53 = *(v0 + 496);
          v54 = *(v0 + 504);
          v55 = *(v0 + 488);
          v56 = *(v0 + 464);
          v57 = *(v0 + 472);
          v58 = *(v57 + 8);
          *(v0 + 888) = v58;
          *(v0 + 896) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v58(v53, v56);
          (*(v57 + 32))(v55, v54, v56);
          GroupSessionMessenger.MessageContext.source.getter();
          v59 = swift_task_alloc();
          *(v0 + 904) = v59;
          *v59 = v0;
          v59[1] = sub_10044A048;
          v41 = *(v0 + 600);
        }

LABEL_26:
        v43 = v41;
        v44 = 3;
LABEL_27:

        sub_10044EE08(v43, v44);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v23 = static os_log_type_t.fault.getter();
      v24 = Logger.logObject.getter();
      v25 = os_log_type_enabled(v24, v23);
      v26 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 384);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315650;
        v30 = StaticString.description.getter();
        v61 = v27;
        v60 = v28;
        v32 = v6;
        v33 = sub_100009D88(v30, v31, &v62);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 229;
        *(v29 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v34 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v34;
        v35._object = 0x8000000100573C60;
        v35._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v35);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v36 = *(v0 + 280);
        v37 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v38 = sub_100009D88(v36, v37, &v62);
        v6 = v32;

        *(v29 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v24, v23, "Failed assertion at %s:%lu: %s", v29, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v26 + 8))(v61, v60);
      }

      else
      {

        (*(v26 + 8))(v27, v28);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v39 = *(v0 + 8);

    v39();
  }
}

uint64_t sub_10044AD9C()
{
  v100 = v2;
  v3 = *(v2 + 944);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(*(v2 + 944) + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v5 = i;
      v6 = [i encryptedValues];

      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 objectForKeyedSubscript:v7];

      swift_unknownObjectRelease();
      if (v8)
      {
        *(v2 + 344) = v8;
        sub_10015DA04(&qword_1006C8A00);
        if (swift_dynamicCast())
        {
          break;
        }
      }

LABEL_27:
      if (qword_1006BC950 != -1)
      {
LABEL_62:
        swift_once();
      }

      sub_10002597C(*(v2 + 384), qword_1006C8680);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v99 = v33;
        *v32 = 136315138;
        sub_1000054A4(0, &qword_1006C88A8);
        v34 = Array.description.getter();
        v36 = v35;

        v37 = sub_100009D88(v34, v36, &v99);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Incoming PaperKit message is not in a valid format: %s", v32, 0xCu);
        sub_100009F60(v33);
      }

      else
      {
      }

      v38 = *(*(v2 + 376) + *(v2 + 760));
      os_unfair_lock_lock((v38 + 24));
      v39 = *(v38 + 16);
      v20 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (!v20)
      {
        v41 = *(v2 + 496);
        v42 = *(v2 + 504);
        v43 = *(v2 + 464);
        v44 = *(v2 + 472);
        *(v38 + 16) = v40;
        os_unfair_lock_unlock((v38 + 24));
        v45 = *(v44 + 8);
        v45(v41, v43);
        sub_1000073B4(v2 + 64, &qword_1006C8990);
        v45(v42, v43);
        goto LABEL_33;
      }

      __break(1u);
LABEL_64:
      ;
    }

    v0 = *(v2 + 312);
    v1 = *(v2 + 320);
    if (qword_1006BC958 != -1)
    {
      goto LABEL_66;
    }
  }

  else
  {
    __break(1u);
LABEL_66:
    swift_once();
  }

  v9 = *(v2 + 448);
  v10 = *(v2 + 384);
  v11 = *(v2 + 392);
  v12 = sub_10002597C(*(v2 + 432), qword_1006C8698);
  sub_100006038(v12, v9, &qword_1006C8880);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000073B4(*(v2 + 448), &qword_1006C8880);
    goto LABEL_25;
  }

  sub_1001C4E38(v0, v1);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v16 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_23;
      }

      v19 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v1);
LABEL_23:
      *(result + 4) = v17;
      v21 = result;
      sub_10019671C(v0, v1);
      _os_log_impl(&_mh_execute_header, v13, v14, "Received PaperKit message (PCS=ON) with length: %ld", v21, 0xCu);

      goto LABEL_24;
    }

    LODWORD(v17) = HIDWORD(v0) - v0;
    if (__OFSUB__(HIDWORD(v0), v0))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_23;
  }

  sub_10019671C(v0, v1);
LABEL_24:
  v22 = *(v2 + 448);
  v23 = *(v2 + 384);
  v24 = *(v2 + 392);

  (*(v24 + 8))(v22, v23);
LABEL_25:
  v26 = *(v2 + 496);
  v25 = *(v2 + 504);
  v27 = *(v2 + 464);
  v28 = *(v2 + 472);
  sub_10044FEA0(v0, v1, *(*(v2 + 376) + *(v2 + 752)));
  sub_10019671C(v0, v1);
  v29 = *(v28 + 8);
  v29(v26, v27);
  sub_1000073B4(v2 + 64, &qword_1006C8990);
  v29(v25, v27);
LABEL_33:
  v46 = v2 + 248;
  sub_100009F60(v2 + 208);
  while (1)
  {
    v47 = *(v2 + 60);
    v48 = *(v2 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v48 + v47) == *(v2 + 328))
    {
      break;
    }

    v49 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v50, v2 + 16, &qword_1006C8990);
    v49(v46, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v51 = *(v2 + 32);
    *(v2 + 64) = *(v2 + 16);
    *(v2 + 80) = v51;
    *(v2 + 89) = *(v2 + 41);
    sub_100006038(v2 + 64, v2 + 112, &qword_1006C8990);
    if (*(v2 + 152))
    {
      *(v2 + 336) = *(v2 + 112);
      sub_10015DA04(&unk_1006C9B40);
      swift_willThrowTypedImpl();
      if (qword_1006BC950 != -1)
      {
        swift_once();
      }

      sub_10002597C(*(v2 + 384), qword_1006C8680);
      swift_errorRetain();
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        swift_errorRetain();
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&_mh_execute_header, v52, v53, "Error processing incoming fast sync message: %@", v54, 0xCu);
        sub_1000073B4(v55, &qword_1006C1440);
      }

      v57 = *(v2 + 760);
      v58 = *(v2 + 376);

      v59 = *(v58 + v57);
      os_unfair_lock_lock((v59 + 24));
      v60 = *(v59 + 16);
      v20 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v20)
      {
        __break(1u);
        goto LABEL_62;
      }

      *(v59 + 16) = v61;
      os_unfair_lock_unlock((v59 + 24));

      sub_1000073B4(v2 + 64, &qword_1006C8990);
    }

    else
    {
      sub_100192680((v2 + 112), v2 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v2 + 640) + 32))(*(v2 + 648), *(v2 + 656), *(v2 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v78 = swift_task_alloc();
        *(v2 + 784) = v78;
        *v78 = v2;
        v78[1] = sub_10044636C;
        v79 = *(v2 + 624);
        goto LABEL_57;
      }

      if (swift_dynamicCast())
      {
        (*(*(v2 + 544) + 32))(*(v2 + 568), *(v2 + 576), *(v2 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v80 = swift_task_alloc();
        *(v2 + 840) = v80;
        *v80 = v2;
        v80[1] = sub_10044872C;
        v81 = *(v2 + 616);
        v82 = 2;
        goto LABEL_58;
      }

      if (swift_dynamicCast())
      {
        v83 = *(v2 + 744);
        v84 = *(v2 + 496);
        v85 = *(v2 + 504);
        v86 = *(v2 + 464);
        v87 = *(v2 + 472);
        v88 = *(v2 + 376);
        v89 = *(v87 + 16);
        *(v2 + 856) = v89;
        *(v2 + 864) = (v87 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v89(v84, v85, v86);
        if ([*(v88 + v83) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v90 = swift_task_alloc();
          *(v2 + 872) = v90;
          *v90 = v2;
          v90[1] = sub_100449ED8;
          v79 = *(v2 + 608);
        }

        else
        {
          v91 = *(v2 + 496);
          v92 = *(v2 + 504);
          v93 = *(v2 + 488);
          v94 = *(v2 + 464);
          v95 = *(v2 + 472);
          v96 = *(v95 + 8);
          *(v2 + 888) = v96;
          *(v2 + 896) = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v96(v91, v94);
          (*(v95 + 32))(v93, v92, v94);
          GroupSessionMessenger.MessageContext.source.getter();
          v97 = swift_task_alloc();
          *(v2 + 904) = v97;
          *v97 = v2;
          v97[1] = sub_10044A048;
          v79 = *(v2 + 600);
        }

LABEL_57:
        v81 = v79;
        v82 = 3;
LABEL_58:

        return sub_10044EE08(v81, v82);
      }

      sub_100006038(v2 + 64, v2 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v62 = static os_log_type_t.fault.getter();
      v63 = Logger.logObject.getter();
      v64 = os_log_type_enabled(v63, v62);
      v66 = *(v2 + 392);
      v65 = *(v2 + 400);
      v67 = *(v2 + 384);
      if (v64)
      {
        v68 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v68 = 136315650;
        v69 = StaticString.description.getter();
        v98 = v65;
        v71 = sub_100009D88(v69, v70, &v99);

        *(v68 + 4) = v71;
        *(v68 + 12) = 2048;
        *(v68 + 14) = 229;
        *(v68 + 22) = 2080;
        *(v2 + 296) = 0;
        *(v2 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v72 = *(v2 + 304);
        *(v2 + 280) = *(v2 + 296);
        *(v2 + 288) = v72;
        v73._object = 0x8000000100573C60;
        v73._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v73);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v74 = *(v2 + 280);
        v75 = *(v2 + 288);
        sub_1000073B4(v2 + 160, &qword_1006C8990);
        v76 = sub_100009D88(v74, v75, &v99);

        *(v68 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v63, v62, "Failed assertion at %s:%lu: %s", v68, 0x20u);
        swift_arrayDestroy();

        (*(v66 + 8))(v98, v67);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        sub_1000073B4(v2 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v2 + 64, &qword_1006C8990);
      v46 = v2 + 248;
      sub_100009F60(v2 + 208);
    }
  }

  sub_1000073B4(*(v2 + 672), &qword_1006C8978);

  v77 = *(v2 + 8);

  return v77();
}

void sub_10044BC04()
{
  v63 = v0;
  v1 = v0 + 248;
  v2 = *(v0 + 504);
  v3 = *(v0 + 464);
  v4 = *(*(v0 + 472) + 8);
  v4(*(v0 + 496), v3);
  v4(v2, v3);
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v6 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error processing incoming fast sync message: %@", v9, 0xCu);
    sub_1000073B4(v10, &qword_1006C1440);
  }

  v12 = *(v0 + 760);
  v13 = *(v0 + 376);

  v14 = *(v13 + v12);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
    os_unfair_lock_unlock((v14 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v18 = *(v0 + 60);
      v19 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v19 + v18) == *(v0 + 328))
      {
        break;
      }

      v20 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v21, v0 + 16, &qword_1006C8990);
      v20(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v22 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v22;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v40 = swift_task_alloc();
        *(v0 + 784) = v40;
        *v40 = v0;
        v40[1] = sub_10044636C;
        v41 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v42 = swift_task_alloc();
        *(v0 + 840) = v42;
        *v42 = v0;
        v42[1] = sub_10044872C;
        v43 = *(v0 + 616);
        v44 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v45 = *(v0 + 744);
        v46 = *(v0 + 496);
        v47 = *(v0 + 504);
        v48 = *(v0 + 464);
        v49 = *(v0 + 472);
        v50 = *(v0 + 376);
        v51 = *(v49 + 16);
        *(v0 + 856) = v51;
        *(v0 + 864) = (v49 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v51(v46, v47, v48);
        if ([*(v50 + v45) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v52 = swift_task_alloc();
          *(v0 + 872) = v52;
          *v52 = v0;
          v52[1] = sub_100449ED8;
          v41 = *(v0 + 608);
        }

        else
        {
          v53 = *(v0 + 496);
          v54 = *(v0 + 504);
          v55 = *(v0 + 488);
          v56 = *(v0 + 464);
          v57 = *(v0 + 472);
          v58 = *(v57 + 8);
          *(v0 + 888) = v58;
          *(v0 + 896) = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v58(v53, v56);
          (*(v57 + 32))(v55, v54, v56);
          GroupSessionMessenger.MessageContext.source.getter();
          v59 = swift_task_alloc();
          *(v0 + 904) = v59;
          *v59 = v0;
          v59[1] = sub_10044A048;
          v41 = *(v0 + 600);
        }

LABEL_26:
        v43 = v41;
        v44 = 3;
LABEL_27:

        sub_10044EE08(v43, v44);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v23 = static os_log_type_t.fault.getter();
      v24 = Logger.logObject.getter();
      v25 = os_log_type_enabled(v24, v23);
      v26 = *(v0 + 392);
      v27 = *(v0 + 400);
      v28 = *(v0 + 384);
      if (v25)
      {
        v29 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v29 = 136315650;
        v30 = StaticString.description.getter();
        v61 = v27;
        v60 = v28;
        v32 = v6;
        v33 = sub_100009D88(v30, v31, &v62);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2048;
        *(v29 + 14) = 229;
        *(v29 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v34 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v34;
        v35._object = 0x8000000100573C60;
        v35._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v35);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v36 = *(v0 + 280);
        v37 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v38 = sub_100009D88(v36, v37, &v62);
        v6 = v32;

        *(v29 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v24, v23, "Failed assertion at %s:%lu: %s", v29, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v26 + 8))(v61, v60);
      }

      else
      {

        (*(v26 + 8))(v27, v28);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v39 = *(v0 + 8);

    v39();
  }
}

uint64_t sub_10044C5D8()
{
  v85 = v0;
  if (qword_1006BC958 != -1)
  {
LABEL_48:
    swift_once();
  }

  v1 = *(v0 + 440);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = sub_10002597C(*(v0 + 432), qword_1006C8698);
  sub_100006038(v4, v1, &qword_1006C8880);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v0 + 856))(*(v0 + 480), *(v0 + 488), *(v0 + 464));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v5, v6))
    {
      (*(v0 + 888))(*(v0 + 480), *(v0 + 464));
LABEL_17:
      v19 = *(v0 + 440);
      v20 = *(v0 + 384);
      v21 = *(v0 + 392);

      (*(v21 + 8))(v19, v20);
      goto LABEL_18;
    }

    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = FastSync.PaperKitMessage.data.getter();
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        sub_10019671C(v8, v9);
        v12 = 0;
        goto LABEL_16;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v8 = sub_10019671C(v8, v9);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v15)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      sub_10019671C(v8, v9);
      v12 = v11;
LABEL_16:
      (*(v0 + 888))(*(v0 + 480), *(v0 + 464));
      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "Received PaperKit message (PCS=OFF) with length: %ld", v7, 0xCu);

      goto LABEL_17;
    }

    v16 = HIDWORD(v8);
    v17 = v8;
    result = sub_10019671C(v8, v9);
    if (__OFSUB__(v16, v17))
    {
      __break(1u);
      return result;
    }

    v12 = v16 - v17;
    goto LABEL_16;
  }

  sub_1000073B4(*(v0 + 440), &qword_1006C8880);
LABEL_18:
  v22 = *(v0 + 888);
  v23 = *(v0 + 488);
  v24 = *(v0 + 464);
  v25 = *(*(v0 + 376) + *(v0 + 752));
  v26 = FastSync.PaperKitMessage.data.getter();
  v28 = v27;
  sub_10044FEA0(v26, v27, v25);
  sub_10019671C(v26, v28);
  v22(v23, v24);
  sub_1000073B4(v0 + 64, &qword_1006C8990);
  sub_100009F60(v0 + 208);
  v29 = *(v0 + 60);
  v30 = *(v0 + 672);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v30 + v29) == *(v0 + 328))
  {
LABEL_19:
    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v31 = *(v0 + 8);

    return v31();
  }

  v32 = v0 + 248;
  while (1)
  {
    v35 = dispatch thunk of Collection.subscript.read();
    sub_100006038(v36, v0 + 16, &qword_1006C8990);
    v35(v32, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v37 = *(v0 + 32);
    *(v0 + 64) = *(v0 + 16);
    *(v0 + 80) = v37;
    *(v0 + 89) = *(v0 + 41);
    sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
    if ((*(v0 + 152) & 1) == 0)
    {
      break;
    }

    *(v0 + 336) = *(v0 + 112);
    sub_10015DA04(&unk_1006C9B40);
    swift_willThrowTypedImpl();
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    sub_10002597C(*(v0 + 384), qword_1006C8680);
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error processing incoming fast sync message: %@", v40, 0xCu);
      sub_1000073B4(v41, &qword_1006C1440);
    }

    v43 = *(v0 + 760);
    v44 = *(v0 + 376);

    v45 = *(v44 + v43);
    os_unfair_lock_lock((v45 + 24));
    v46 = *(v45 + 16);
    v15 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_48;
    }

    *(v45 + 16) = v47;
    os_unfair_lock_unlock((v45 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
LABEL_25:
    v33 = *(v0 + 60);
    v34 = *(v0 + 672);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v34 + v33) == *(v0 + 328))
    {
      goto LABEL_19;
    }
  }

  sub_100192680((v0 + 112), v0 + 208);
  sub_10015DA04(&qword_1006C8998);
  if (swift_dynamicCast())
  {
    (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
    GroupSessionMessenger.MessageContext.source.getter();
    v63 = swift_task_alloc();
    *(v0 + 784) = v63;
    *v63 = v0;
    v63[1] = sub_10044636C;
    v64 = *(v0 + 624);
    goto LABEL_43;
  }

  if (swift_dynamicCast())
  {
    (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
    GroupSessionMessenger.MessageContext.source.getter();
    v65 = swift_task_alloc();
    *(v0 + 840) = v65;
    *v65 = v0;
    v65[1] = sub_10044872C;
    v66 = *(v0 + 616);
    v67 = 2;
    goto LABEL_44;
  }

  if (!swift_dynamicCast())
  {
    sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
    static Logger.realtimeCollaboration.getter();
    v48 = static os_log_type_t.fault.getter();
    v49 = Logger.logObject.getter();
    v50 = os_log_type_enabled(v49, v48);
    v52 = *(v0 + 392);
    v51 = *(v0 + 400);
    v53 = *(v0 + 384);
    if (v50)
    {
      v54 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v54 = 136315650;
      v55 = StaticString.description.getter();
      v83 = v51;
      v57 = sub_100009D88(v55, v56, &v84);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2048;
      *(v54 + 14) = 229;
      *(v54 + 22) = 2080;
      *(v0 + 296) = 0;
      *(v0 + 304) = 0xE000000000000000;
      _StringGuts.grow(_:)(31);
      v58 = *(v0 + 304);
      *(v0 + 280) = *(v0 + 296);
      *(v0 + 288) = v58;
      v59._object = 0x8000000100573C60;
      v59._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v59);
      sub_10015DA04(&qword_1006C8990);
      _print_unlocked<A, B>(_:_:)();
      v60 = *(v0 + 280);
      v61 = *(v0 + 288);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
      v62 = sub_100009D88(v60, v61, &v84);

      *(v54 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v49, v48, "Failed assertion at %s:%lu: %s", v54, 0x20u);
      swift_arrayDestroy();

      (*(v52 + 8))(v83, v53);
    }

    else
    {

      (*(v52 + 8))(v51, v53);
      sub_1000073B4(v0 + 160, &qword_1006C8990);
    }

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    v32 = v0 + 248;
    sub_100009F60(v0 + 208);
    goto LABEL_25;
  }

  v68 = *(v0 + 744);
  v69 = *(v0 + 496);
  v70 = *(v0 + 504);
  v71 = *(v0 + 464);
  v72 = *(v0 + 472);
  v73 = *(v0 + 376);
  v74 = *(v72 + 16);
  *(v0 + 856) = v74;
  *(v0 + 864) = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v69, v70, v71);
  if ([*(v73 + v68) fastSyncPaperKitEnablePCSEncryption])
  {
    GroupSessionMessenger.MessageContext.source.getter();
    v75 = swift_task_alloc();
    *(v0 + 872) = v75;
    *v75 = v0;
    v75[1] = sub_100449ED8;
    v64 = *(v0 + 608);
  }

  else
  {
    v76 = *(v0 + 496);
    v77 = *(v0 + 504);
    v78 = *(v0 + 488);
    v79 = *(v0 + 464);
    v80 = *(v0 + 472);
    v81 = *(v80 + 8);
    *(v0 + 888) = v81;
    *(v0 + 896) = (v80 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81(v76, v79);
    (*(v80 + 32))(v78, v77, v79);
    GroupSessionMessenger.MessageContext.source.getter();
    v82 = swift_task_alloc();
    *(v0 + 904) = v82;
    *v82 = v0;
    v82[1] = sub_10044A048;
    v64 = *(v0 + 600);
  }

LABEL_43:
  v66 = v64;
  v67 = 3;
LABEL_44:

  return sub_10044EE08(v66, v67);
}

void sub_10044D1A8()
{
  v60 = v0;
  v1 = v0 + 248;
  (*(v0 + 888))(*(v0 + 488), *(v0 + 464));
  sub_100009F60(v0 + 208);
  p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
  v3 = &unk_10054B090;
LABEL_2:
  if (p_name[298] != -1)
  {
    swift_once();
  }

  sub_10002597C(*(v0 + 384), qword_1006C8680);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error processing incoming fast sync message: %@", v6, 0xCu);
    sub_1000073B4(v7, &qword_1006C1440);
  }

  v9 = *(v0 + 760);
  v10 = *(v0 + 376);

  v11 = *(v10 + v9);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
    os_unfair_lock_unlock((v11 + 24));

    sub_1000073B4(v0 + 64, &qword_1006C8990);
    while (1)
    {
      v15 = *(v0 + 60);
      v16 = *(v0 + 672);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v16 + v15) == *(v0 + 328))
      {
        break;
      }

      v17 = dispatch thunk of Collection.subscript.read();
      sub_100006038(v18, v0 + 16, &qword_1006C8990);
      v17(v1, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v19 = *(v0 + 32);
      *(v0 + 64) = *(v0 + 16);
      *(v0 + 80) = v19;
      *(v0 + 89) = *(v0 + 41);
      sub_100006038(v0 + 64, v0 + 112, &qword_1006C8990);
      if (*(v0 + 152))
      {
        *(v0 + 336) = *(v0 + 112);
        sub_10015DA04(&unk_1006C9B40);
        swift_willThrowTypedImpl();
        p_name = (&OBJC_PROTOCOL___NSUserActivityDelegate + 8);
        goto LABEL_2;
      }

      sub_100192680((v0 + 112), v0 + 208);
      sub_10015DA04(&qword_1006C8998);
      if (swift_dynamicCast())
      {
        (*(*(v0 + 640) + 32))(*(v0 + 648), *(v0 + 656), *(v0 + 632));
        GroupSessionMessenger.MessageContext.source.getter();
        v37 = swift_task_alloc();
        *(v0 + 784) = v37;
        *v37 = v0;
        v37[1] = sub_10044636C;
        v38 = *(v0 + 624);
        goto LABEL_26;
      }

      if (swift_dynamicCast())
      {
        (*(*(v0 + 544) + 32))(*(v0 + 568), *(v0 + 576), *(v0 + 536));
        GroupSessionMessenger.MessageContext.source.getter();
        v39 = swift_task_alloc();
        *(v0 + 840) = v39;
        *v39 = v0;
        v39[1] = sub_10044872C;
        v40 = *(v0 + 616);
        v41 = 2;
        goto LABEL_27;
      }

      if (swift_dynamicCast())
      {
        v42 = *(v0 + 744);
        v43 = *(v0 + 496);
        v44 = *(v0 + 504);
        v45 = *(v0 + 464);
        v46 = *(v0 + 472);
        v47 = *(v0 + 376);
        v48 = *(v46 + 16);
        *(v0 + 856) = v48;
        *(v0 + 864) = (v46 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v48(v43, v44, v45);
        if ([*(v47 + v42) fastSyncPaperKitEnablePCSEncryption])
        {
          GroupSessionMessenger.MessageContext.source.getter();
          v49 = swift_task_alloc();
          *(v0 + 872) = v49;
          *v49 = v0;
          v49[1] = sub_100449ED8;
          v38 = *(v0 + 608);
        }

        else
        {
          v50 = *(v0 + 496);
          v51 = *(v0 + 504);
          v52 = *(v0 + 488);
          v53 = *(v0 + 464);
          v54 = *(v0 + 472);
          v55 = *(v54 + 8);
          *(v0 + 888) = v55;
          *(v0 + 896) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v55(v50, v53);
          (*(v54 + 32))(v52, v51, v53);
          GroupSessionMessenger.MessageContext.source.getter();
          v56 = swift_task_alloc();
          *(v0 + 904) = v56;
          *v56 = v0;
          v56[1] = sub_10044A048;
          v38 = *(v0 + 600);
        }

LABEL_26:
        v40 = v38;
        v41 = 3;
LABEL_27:

        sub_10044EE08(v40, v41);
        return;
      }

      sub_100006038(v0 + 64, v0 + 160, &qword_1006C8990);
      static Logger.realtimeCollaboration.getter();
      v20 = static os_log_type_t.fault.getter();
      v21 = Logger.logObject.getter();
      v22 = os_log_type_enabled(v21, v20);
      v23 = *(v0 + 392);
      v24 = *(v0 + 400);
      v25 = *(v0 + 384);
      if (v22)
      {
        v26 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *v26 = 136315650;
        v27 = StaticString.description.getter();
        v58 = v24;
        v57 = v25;
        v29 = v3;
        v30 = sub_100009D88(v27, v28, &v59);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 229;
        *(v26 + 22) = 2080;
        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        _StringGuts.grow(_:)(31);
        v31 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v31;
        v32._object = 0x8000000100573C60;
        v32._countAndFlagsBits = 0xD00000000000001DLL;
        String.append(_:)(v32);
        sub_10015DA04(&qword_1006C8990);
        _print_unlocked<A, B>(_:_:)();
        v33 = *(v0 + 280);
        v34 = *(v0 + 288);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
        v35 = sub_100009D88(v33, v34, &v59);
        v3 = v29;

        *(v26 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v21, v20, "Failed assertion at %s:%lu: %s", v26, 0x20u);
        swift_arrayDestroy();

        v1 = v0 + 248;

        (*(v23 + 8))(v58, v57);
      }

      else
      {

        (*(v23 + 8))(v24, v25);
        sub_1000073B4(v0 + 160, &qword_1006C8990);
      }

      sub_1000073B4(v0 + 64, &qword_1006C8990);
      sub_100009F60(v0 + 208);
    }

    sub_1000073B4(*(v0 + 672), &qword_1006C8978);

    v36 = *(v0 + 8);

    v36();
  }
}

Swift::Void __swiftcall RealtimeCollaborationMessageController.incrementNonFatalErrorCount()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = v4;

    os_unfair_lock_unlock((v1 + 24));
  }
}

uint64_t sub_10044DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_10015DA04(&qword_1006C8920);
  v4[4] = swift_task_alloc();
  v5 = sub_10015DA04(&qword_1006C8878);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C8928);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  sub_10015DA04(&qword_1006C8930);
  v4[14] = swift_task_alloc();
  v8 = sub_10015DA04(&qword_1006C8938);
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  v9 = sub_10015DA04(&qword_1006C8940);
  v4[18] = v9;
  v4[19] = *(v9 - 8);
  v4[20] = swift_task_alloc();
  v10 = type metadata accessor for MessageChunking.UnsafeAppendingAccumulator();
  v4[21] = v10;
  v4[22] = *(v10 - 8);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(sub_10044DEE4, 0, 0);
}

uint64_t sub_10044DEE4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  MessageChunking.UnsafeAppendingAccumulator.init()();
  sub_1000060B4(&qword_1006C8948, &qword_1006C8928);
  sub_1000060B4(&qword_1006C8950, &qword_1006C8928);
  GroupSessionMessenger.messages<A>(of:)();
  GroupSessionMessenger.Messages.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[24] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  v4 = sub_1000060B4(&qword_1006C8958, &qword_1006C8940);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10044E0B4;
  v6 = v0[18];
  v7 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_10044E0B4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10044E890;
  }

  else
  {
    v2 = sub_10044E1C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044E1E4()
{
  v1 = v0[14];
  v2 = sub_10015DA04(&unk_1006C8960);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002597C(v3, qword_1006C8680);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PaperKit subscriber task finished", v6, 2u);
    }

    goto LABEL_9;
  }

  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[9];
  v10 = *(v2 + 48);
  (*(v0[12] + 32))(v0[13], v1, v0[11]);
  (*(v9 + 32))(v7, v1 + v10, v8);
  if (static Task<>.isCancelled.getter())
  {
    v12 = v0[19];
    v11 = v0[20];
    v13 = v0[18];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
LABEL_9:
    (*(v0[22] + 8))(v0[23], v0[21]);

    v17 = v0[1];

    return v17();
  }

  v19 = v0[26];
  sub_1000060B4(&qword_1006C88B0, &qword_1006C8878);
  sub_1000060B4(&qword_1006C88B8, &qword_1006C8878);
  MessageChunking.UnsafeAppendingAccumulator.process<A>(incoming:)();
  if (v19)
  {
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10002597C(v20, qword_1006C8680);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Error processing incoming CloudKit message: %@", v23, 0xCu);
      sub_1000073B4(v24, &qword_1006C1440);
    }

    v26 = v0[24];
    v27 = v0[3];

    v28 = *(v27 + v26);
    os_unfair_lock_lock((v28 + 24));
    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
    }

    v36 = v0[12];
    v35 = v0[13];
    v38 = v0[10];
    v37 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    *(v28 + 16) = v34;
    os_unfair_lock_unlock((v28 + 24));

    (*(v40 + 8))(v38, v39);
    (*(v36 + 8))(v35, v37);
LABEL_21:
    v47 = sub_1000060B4(&qword_1006C8958, &qword_1006C8940);
    v48 = swift_task_alloc();
    v0[25] = v48;
    *v48 = v0;
    v48[1] = sub_10044E0B4;
    v30 = v0[18];
    v29 = v0[14];
    v31 = v47;

    return dispatch thunk of AsyncIteratorProtocol.next()(v29, v30, v31);
  }

  v41 = v0[5];
  v42 = v0[6];
  v43 = v0[4];
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    v45 = v0[12];
    v44 = v0[13];
    v46 = v0[11];
    (*(v0[9] + 8))(v0[10], v0[8]);
    (*(v45 + 8))(v44, v46);
    sub_1000073B4(v43, &qword_1006C8920);
    goto LABEL_21;
  }

  (*(v42 + 32))(v0[7], v43, v41);
  v49 = swift_task_alloc();
  v0[27] = v49;
  *v49 = v0;
  v49[1] = sub_10044E91C;
  v50 = v0[10];
  v51 = v0[7];

  return sub_1004451B4(v51, v50);
}

uint64_t sub_10044E890()
{
  *(v0 + 16) = *(v0 + 208);
  sub_10015DA04(&unk_1006C9B40);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10044E91C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10044EB6C;
  }

  else
  {
    v2 = sub_10044EA30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044EA30()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = sub_1000060B4(&qword_1006C8958, &qword_1006C8940);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_10044E0B4;
  v9 = v0[18];
  v10 = v0[14];

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v9, v7);
}

uint64_t sub_10044EB6C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C8680);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error processing incoming CloudKit message: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v7 = v0[24];
  v8 = v0[3];

  v9 = *(v8 + v7);
  os_unfair_lock_lock((v9 + 24));
  v13 = *(v9 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[8];
    v21 = v0[9];
    *(v9 + 16) = v15;
    os_unfair_lock_unlock((v9 + 24));

    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);
    v22 = sub_1000060B4(&qword_1006C8958, &qword_1006C8940);
    v23 = swift_task_alloc();
    v0[25] = v23;
    *v23 = v0;
    v23[1] = sub_10044E0B4;
    v11 = v0[18];
    v10 = v0[14];
    v12 = v22;
  }

  return dispatch thunk of AsyncIteratorProtocol.next()(v10, v11, v12);
}

uint64_t sub_10044EE08(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = sub_10015DA04(&qword_1006C8880);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10044EEB8, 0, 0);
}

uint64_t sub_10044EEB8()
{
  v62 = v0;
  v1 = *(v0[5] + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_share);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    if (qword_1006BC958 != -1)
    {
      swift_once();
    }

    v18 = v0[7];
    v19 = sub_10002597C(v0[6], qword_1006C8698);
    sub_100006038(v19, v18, &qword_1006C8880);
    v20 = type metadata accessor for Logger();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v18, 1, v20);
    v23 = v0[7];
    if (v22 != 1)
    {

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v61[0] = v27;
        *v26 = 136315138;
        v28 = EditNoteActivity.noteID.getter();
        v30 = sub_100009D88(v28, v29, v61);

        *(v26 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, v25, "Skipping participant validation because the note %s is not shared", v26, 0xCu);
        sub_100009F60(v27);
      }

      (*(v21 + 8))(v0[7], v20);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = v3;
  Participant.handle.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 ic_participantWithHandle:v5];

  if (!v6)
  {
    v31 = type metadata accessor for FastSyncError();
    sub_100455E2C(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v33 = v32;
    *v32 = Participant.handle.getter();
    v33[1] = v34;
    (*(*(v31 - 8) + 104))(v33, enum case for FastSyncError.handleNotInShare(_:), v31);
    swift_willThrow();
LABEL_14:

    goto LABEL_15;
  }

  if ([v6 acceptanceStatus] != 2)
  {
    v35 = type metadata accessor for FastSyncError();
    sub_100455E2C(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v37 = v36;
    v38 = [v6 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    *v37 = v39;
    v37[1] = v41;
    (*(*(v35 - 8) + 104))(v37, enum case for FastSyncError.notAcceptedShare(_:), v35);
    swift_willThrow();

    goto LABEL_14;
  }

  v7 = v0[4];

  if ([v6 permission] < v7)
  {
    v8 = v0[4];
    v9 = type metadata accessor for FastSyncError();
    sub_100455E2C(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v11 = v10;
    v12 = [v6 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v0[2] = v8;
    sub_1001B37F8();
    v16 = BinaryInteger.description.getter();
    *v11 = v13;
    v11[1] = v15;
    v11[2] = v16;
    v11[3] = v17;
    (*(*(v9 - 8) + 104))(v11, enum case for FastSyncError.noPermission(_:), v9);
    swift_willThrow();

LABEL_15:

    v42 = v0[1];
    goto LABEL_22;
  }

  if (qword_1006BC958 != -1)
  {
    swift_once();
  }

  v43 = v0[8];
  v44 = sub_10002597C(v0[6], qword_1006C8698);
  sub_100006038(v44, v43, &qword_1006C8880);
  v45 = type metadata accessor for Logger();
  v46 = *(v45 - 8);
  v47 = (*(v46 + 48))(v43, 1, v45);
  v23 = v0[8];
  if (v47 != 1)
  {
    v49 = v6;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61[0] = v59;
      *v52 = 138412546;
      *(v52 + 4) = v49;
      *v58 = v6;
      *(v52 + 12) = 2080;
      v60 = v49;
      v53 = CKStringFromParticipantPermission();
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      v57 = sub_100009D88(v54, v56, v61);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Validated participant %@ has minimum permission: %s", v52, 0x16u);
      sub_1000073B4(v58, &qword_1006C1440);

      sub_100009F60(v59);
    }

    else
    {
    }

    (*(v46 + 8))(v0[8], v45);
    goto LABEL_21;
  }

LABEL_20:
  sub_1000073B4(v23, &qword_1006C8880);
LABEL_21:

  v42 = v0[1];
LABEL_22:

  return v42();
}

uint64_t sub_10044F6C0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for OSSignpostError();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10044F7F8, 0, 0);
}

uint64_t sub_10044F7F8()
{
  if (qword_1006BC960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  v0[15] = sub_10002597C(v1, qword_1006C86B0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Deserialize", "", v4, 2u);
  }

  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[16] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = *(v9 + 8);
  v0[17] = v11;
  v0[18] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  v12 = *(v10 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudDatabase);
  v13 = objc_allocWithZone(CKDeserializeRecordModificationsOperation);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithSerializedModifications:isa];
  v0[19] = v15;

  [v15 setQualityOfService:25];
  v16 = swift_task_alloc();
  v0[20] = v16;
  *(v16 + 16) = v15;
  *(v16 + 24) = v12;
  v17 = swift_task_alloc();
  v0[21] = v17;
  *(v17 + 16) = v15;
  v18 = swift_task_alloc();
  v0[22] = v18;
  v19 = sub_10015DA04(&qword_1006C8A10);
  *v18 = v0;
  v18[1] = sub_10044FAD8;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_10054B0C0, v16, sub_100455830, v17, 0, 0, v19);
}

uint64_t sub_10044FAD8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10044FDD8;
  }

  else
  {

    v2 = sub_10044FBFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044FBFC()
{
  v1 = *(v0 + 16);

  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, "Deserialize", v7, v8, 2u);
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);

  v10(v11, v12);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_10044FDD8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10044FEA0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = sub_10015DA04(&qword_1006C4910);
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v12 - v7;
  os_unfair_lock_lock((a3 + 24));
  v9 = *(a3 + 16);

  os_unfair_lock_unlock((a3 + 24));
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_13;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v10 >= 1)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v11;
      v14 = a1;
      v15 = a2;
      sub_1001C4E38(a1, a2);
      sub_10015DA04(&qword_1006BD3A8);
      AsyncStream.Continuation.yield(_:)();

      (*(v6 + 8))(v8, v13);
    }

    while (v10 != v11);
LABEL_13:

    return;
  }

  __break(1u);
}

uint64_t sub_1004500B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for FastSyncError();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_10015DA04(&unk_1006C88C0);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for FastSync.NoteContentMessage();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v8 = sub_10015DA04(&unk_1006C8900);
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_1004502B4, 0, 0);
}

uint64_t sub_1004502B4()
{
  sub_10015DA04(&qword_1006BD3C8);
  AsyncStream.makeAsyncIterator()();
  *(v0 + 168) = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  *(v0 + 240) = enum case for FastSyncError.messageSendFailed(_:);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1004503CC;
  v2 = *(v0 + 144);

  return AsyncStream.Iterator.next(isolation:)(v0 + 32, 0, 0, v2);
}

uint64_t sub_1004503CC()
{

  return _swift_task_switch(sub_1004504C8, 0, 0);
}

uint64_t sub_1004504C8()
{
  v37 = v0;
  v1 = v0[4];
  if (!v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
    if (qword_1006BC950 == -1)
    {
LABEL_5:
      v2 = type metadata accessor for Logger();
      sub_10002597C(v2, qword_1006C8680);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "CloudKit publisher task finished", v5, 2u);
      }

      goto LABEL_8;
    }

LABEL_27:
    swift_once();
    goto LABEL_5;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

LABEL_8:

    v6 = v0[1];

    return v6();
  }

  v8 = sub_100455838(v1);
  v0[23] = v8;

  v30 = v0;
  if (v8 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
LABEL_13:
      v9 = 0;
      v0 = (v8 & 0xC000000000000001);
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      p_name = &OBJC_PROTOCOL___NSUserActivityDelegate.name;
      v12 = qword_1006C8680;
      v31 = v8 & 0xC000000000000001;
      v32 = v8;
      while (1)
      {
        if (v0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v10 + 16))
          {
            goto LABEL_26;
          }

          v13 = *(v8 + 8 * v9 + 32);
        }

        v14 = v13;
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (p_name[298] != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10002597C(v16, v12);
        v17 = v14;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v33 = v19;
          v20 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v36 = v34;
          *v20 = 136315138;
          v21 = v12;
          v22 = p_name;
          v23 = v10;
          v24 = [v17 ic_loggingDescription];
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          v10 = v23;
          p_name = v22;
          v12 = v21;
          v15 = v9 + 1;
          v28 = sub_100009D88(v25, v27, &v36);
          v0 = v31;

          *(v20 + 4) = v28;
          v8 = v32;
          _os_log_impl(&_mh_execute_header, v18, v33, "Sending CloudKit record: %s", v20, 0xCu);
          sub_100009F60(v34);
        }

        else
        {
        }

        ++v9;
        if (v15 == v35)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v35 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_13;
    }
  }

LABEL_29:
  v29 = swift_task_alloc();
  v30[24] = v29;
  *v29 = v30;
  v29[1] = sub_100450950;

  return sub_10045152C(v8);
}

uint64_t sub_100450950(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_100450DD4;
  }

  else
  {

    v5 = sub_100450A70;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100450A70()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  sub_1001C4E38(v0[25], v0[26]);
  FastSync.NoteContentMessage.init(recordBatchData:)();
  (*(v4 + 16))(v2, v1, v3);
  type metadata accessor for FastSync.Notes();
  sub_100455E2C(&qword_1006C8918, &type metadata accessor for FastSync.NoteContentMessage);
  FastSync.MessageContainer.init<A>(message:)();
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_100450BC0;
  v6 = v0[13];

  return sub_100451CE8(v6);
}

uint64_t sub_100450BC0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100451160;
  }

  else
  {
    v2 = sub_100450CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100450CD4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  sub_10019671C(v0[25], v0[26]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_1004503CC;
  v8 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 4, 0, 0, v8);
}

uint64_t sub_100450DD4()
{

  *(v0 + 40) = *(v0 + 216);
  v1 = *(v0 + 240);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_10015DA04(&unk_1006C9B40);
  _print_unlocked<A, B>(_:_:)();
  v5 = *(v0 + 24);
  *v2 = *(v0 + 16);
  v2[1] = v5;
  (*(v3 + 104))(v2, v1, v4);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = type metadata accessor for Logger();
  sub_10002597C(v10, qword_1006C8680);
  v11 = *(v9 + 16);
  v11(v7, v6, v8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  v14 = os_log_type_enabled(v12, v13);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 56);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 138412290;
    sub_100455E2C(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v11(v19, v15, v17);
    v20 = _swift_stdlib_bridgeErrorToNSError();
    v21 = *(v16 + 8);
    v21(v15, v17);
    *(v18 + 4) = v20;
    *v34 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@", v18, 0xCu);
    sub_1000073B4(v34, &qword_1006C1440);
  }

  else
  {

    v21 = *(v16 + 8);
    v21(v15, v17);
  }

  v22 = *(*(v0 + 48) + *(v0 + 168));
  os_unfair_lock_lock((v22 + 24));
  v27 = *(v22 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    v30 = *(v0 + 80);
    v31 = *(v0 + 56);
    *(v22 + 16) = v29;
    os_unfair_lock_unlock((v22 + 24));

    v21(v30, v31);
    v32 = swift_task_alloc();
    *(v0 + 176) = v32;
    *v32 = v0;
    v32[1] = sub_1004503CC;
    v26 = *(v0 + 144);
    v23 = v0 + 32;
    v24 = 0;
    v25 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v23, v24, v25, v26);
}

uint64_t sub_100451160()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  sub_10019671C(*(v0 + 200), *(v0 + 208));
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  *(v0 + 40) = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  sub_10015DA04(&unk_1006C9B40);
  _print_unlocked<A, B>(_:_:)();
  v11 = *(v0 + 24);
  *v8 = *(v0 + 16);
  v8[1] = v11;
  (*(v9 + 104))(v8, v7, v10);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 72);
  v12 = *(v0 + 80);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = type metadata accessor for Logger();
  sub_10002597C(v16, qword_1006C8680);
  v17 = *(v15 + 16);
  v17(v13, v12, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  v20 = os_log_type_enabled(v18, v19);
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v23 = *(v0 + 56);
  if (v20)
  {
    v24 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v24 = 138412290;
    sub_100455E2C(&qword_1006C8910, &type metadata accessor for FastSyncError);
    swift_allocError();
    v17(v25, v21, v23);
    v26 = _swift_stdlib_bridgeErrorToNSError();
    v27 = *(v22 + 8);
    v27(v21, v23);
    *(v24 + 4) = v26;
    *v40 = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "%@", v24, 0xCu);
    sub_1000073B4(v40, &qword_1006C1440);
  }

  else
  {

    v27 = *(v22 + 8);
    v27(v21, v23);
  }

  v28 = *(*(v0 + 48) + *(v0 + 168));
  os_unfair_lock_lock((v28 + 24));
  v33 = *(v28 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v0 + 80);
    v37 = *(v0 + 56);
    *(v28 + 16) = v35;
    os_unfair_lock_unlock((v28 + 24));

    v27(v36, v37);
    v38 = swift_task_alloc();
    *(v0 + 176) = v38;
    *v38 = v0;
    v38[1] = sub_1004503CC;
    v32 = *(v0 + 144);
    v29 = v0 + 32;
    v30 = 0;
    v31 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v29, v30, v31, v32);
}

uint64_t sub_10045152C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for OSSignpostError();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100451660, 0, 0);
}

uint64_t sub_100451660()
{
  if (qword_1006BC960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  v0[14] = sub_10002597C(v1, qword_1006C86B0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Serialize", "", v4, 2u);
  }

  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[5];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[15] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = *(v9 + 8);
  v0[16] = v11;
  v0[17] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  v12 = *(v10 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudDatabase);
  sub_1000054A4(0, &qword_1006C88A0);

  v13 = CKSerializeRecordModificationsOperation.init(recordsToSave:recordIDsToDelete:)();
  v0[18] = v13;
  [v13 setQualityOfService:25];
  v14 = swift_task_alloc();
  v0[19] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = swift_task_alloc();
  v0[20] = v15;
  *(v15 + 16) = v13;
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_10045191C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v0 + 2, &unk_10054AFF0, v14, sub_100455830, v15, 0, 0, &type metadata for Data);
}

uint64_t sub_10045191C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100451C20;
  }

  else
  {

    v2 = sub_100451A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100451A40()
{
  v1 = *(v0 + 24);
  v15 = *(v0 + 16);
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v9, "Serialize", v7, v8, 2u);
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 88);
  v12 = *(v0 + 72);

  v10(v11, v12);

  v13 = *(v0 + 8);

  return v13(v15, v1);
}

uint64_t sub_100451C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100451CE8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OSSignpostError();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100451E1C, 0, 0);
}

uint64_t sub_100451E1C()
{
  if (qword_1006BC960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  v0[12] = sub_10002597C(v1, qword_1006C86B0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Send", "", v4, 2u);
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[3];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[13] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = *(v9 + 8);
  v0[14] = v11;
  v0[15] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  v12 = [*(v10 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration) fastSyncMaximumMessageSizeBytes];
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = sub_10015DA04(&unk_1006C88C0);
  v15 = sub_1000060B4(&qword_1006C88F0, &unk_1006C88C0);
  v16 = sub_1000060B4(&qword_1006C88F8, &unk_1006C88C0);
  *v13 = v0;
  v13[1] = sub_1004520CC;
  v17 = v0[2];

  return GroupSessionMessenger.ic_sendChunked<A>(_:size:)(v17, v12, v14, v15, v16);
}

uint64_t sub_1004520CC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1004523A0;
  }

  else
  {
    v2 = sub_1004521E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004521E0()
{
  v1 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v2 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];

    checkForErrorAndConsumeState(state:)();

    if ((*(v4 + 88))(v3, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v8, "Send", v6, v7, 2u);
  }

  v9 = v0[14];
  v10 = v0[9];
  v11 = v0[7];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1004523A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100452438(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for OSSignpostError();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10045256C, 0, 0);
}

uint64_t sub_10045256C()
{
  if (qword_1006BC960 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  v0[12] = sub_10002597C(v1, qword_1006C86B0);
  static OSSignpostID.exclusive.getter();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "Send", "", v4, 2u);
  }

  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[3];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[13] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = *(v9 + 8);
  v0[14] = v11;
  v0[15] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v7, v8);
  v12 = [*(v10 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration) fastSyncMaximumMessageSizeBytes];
  v13 = swift_task_alloc();
  v0[16] = v13;
  v14 = sub_10015DA04(&qword_1006C8878);
  v15 = sub_1000060B4(&qword_1006C88B0, &qword_1006C8878);
  v16 = sub_1000060B4(&qword_1006C88B8, &qword_1006C8878);
  *v13 = v0;
  v13[1] = sub_10045281C;
  v17 = v0[2];

  return GroupSessionMessenger.ic_sendChunked<A>(_:size:)(v17, v12, v14, v15, v16);
}

uint64_t sub_10045281C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100455F28;
  }

  else
  {
    v2 = sub_100455F20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100452930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10015DA04(&unk_1006C88C0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = sub_10015DA04(&qword_1006C8880);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for FastSync.SelectionMessage();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  sub_10015DA04(&qword_1006C4938);
  v4[13] = swift_task_alloc();
  v7 = sub_10015DA04(&unk_1006C88D0);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_100452B4C, 0, 0);
}

uint64_t sub_100452B4C()
{
  sub_10015DA04(&qword_1006BD3B0);
  AsyncStream.makeAsyncIterator()();
  v0[17] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100452C50;
  v2 = v0[13];
  v3 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100452C50()
{

  return _swift_task_switch(sub_100452D4C, 0, 0);
}

uint64_t sub_100452D4C()
{
  v35 = v0;
  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10002597C(v4, qword_1006C8680);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Selection publisher task finished", v7, 2u);
    }

    goto LABEL_9;
  }

  (*(v3 + 32))(v0[12], v1, v2);
  if (static Task<>.isCancelled.getter())
  {
    v9 = v0[15];
    v8 = v0[16];
    v10 = v0[14];
    (*(v0[9] + 8))(v0[12], v0[8]);
    (*(v9 + 8))(v8, v10);
LABEL_9:

    v11 = v0[1];

    return v11();
  }

  if (qword_1006BC958 != -1)
  {
    swift_once();
  }

  v13 = v0[7];
  v14 = sub_10002597C(v0[6], qword_1006C8698);
  sub_100006038(v14, v13, &qword_1006C8880);
  v15 = type metadata accessor for Logger();
  v0[19] = v15;
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    v17 = v0[9];
    sub_1000073B4(v0[7], &qword_1006C8880);
    (*(v17 + 16))(v0[10], v0[12], v0[8]);
  }

  else
  {
    v18 = *(v0[9] + 16);
    v18(v0[11], v0[12], v0[8]);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[11];
    v24 = v0[8];
    v23 = v0[9];
    if (v21)
    {
      buf = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *buf = 136315138;
      sub_100455E2C(&qword_1006C4940, &type metadata accessor for FastSync.SelectionMessage);
      v31 = v20;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v23 + 8))(v22, v24);
      v28 = sub_100009D88(v25, v27, &v34);

      *(buf + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v31, "Sending selection message: %s", buf, 0xCu);
      sub_100009F60(v33);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    (*(v16 + 8))(v0[7], v15);
    v18(v0[10], v0[12], v0[8]);
  }

  type metadata accessor for FastSync.Notes();
  sub_100455E2C(&unk_1006C88E0, &type metadata accessor for FastSync.SelectionMessage);
  FastSync.MessageContainer.init<A>(message:)();
  v29 = swift_task_alloc();
  v0[20] = v29;
  *v29 = v0;
  v29[1] = sub_1004532D0;
  v30 = v0[5];

  return sub_100451CE8(v30);
}

uint64_t sub_1004532D0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1004534B8;
  }

  else
  {
    v2 = sub_1004533E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004533E4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v0[9] + 8))(v0[12], v0[8]);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100452C50;
  v2 = v0[13];
  v3 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_1004534B8()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  sub_10002597C(v0[19], qword_1006C8680);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error sending selection message: %@", v3, 0xCu);
    sub_1000073B4(v4, &qword_1006C1440);
  }

  v6 = v0[17];
  v7 = v0[2];

  v8 = *(v7 + v6);
  os_unfair_lock_lock((v8 + 24));
  v13 = *(v8 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v15;
    os_unfair_lock_unlock((v8 + 24));

    (*(v0[9] + 8))(v0[12], v0[8]);
    v16 = swift_task_alloc();
    v0[18] = v16;
    *v16 = v0;
    v16[1] = sub_100452C50;
    v9 = v0[13];
    v12 = v0[14];
    v10 = 0;
    v11 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v9, v10, v11, v12);
}

uint64_t sub_1004536F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_10015DA04(&qword_1006C8878);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = sub_10015DA04(&qword_1006C8880);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for FastSync.PaperKitMessage();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_10015DA04(&qword_1006C8888);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return _swift_task_switch(sub_1004538DC, 0, 0);
}

uint64_t sub_1004538DC()
{
  sub_10015DA04(&qword_1006C8890);
  AsyncStream.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_nonFatalErrorCount;
  v0[18] = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration;
  v0[19] = v1;
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_1004539E8;
  v3 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v3);
}

uint64_t sub_1004539E8()
{

  return _swift_task_switch(sub_100453AE4, 0, 0);
}

uint64_t sub_100453AE4()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[21] = v2;
  v0[22] = v1;
  if (v1 >> 60 == 15)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    if (qword_1006BC950 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002597C(v3, qword_1006C8680);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "PaperKit publisher task finished", v6, 2u);
    }

    goto LABEL_9;
  }

  if (static Task<>.isCancelled.getter())
  {
    (*(v0[16] + 8))(v0[17], v0[15]);
    sub_1001C60E4(v2, v1);
LABEL_9:

    v7 = v0[1];

    return v7();
  }

  if ([*(v0[4] + v0[18]) fastSyncPaperKitEnablePCSEncryption])
  {
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_10045402C;

    return sub_100454F18(v2, v1);
  }

  if (qword_1006BC958 != -1)
  {
    swift_once();
  }

  v10 = v0[9];
  v11 = sub_10002597C(v0[8], qword_1006C8698);
  sub_100006038(v11, v10, &qword_1006C8880);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    sub_1001C4E38(v2, v1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      sub_1001C60E4(v2, v1);
LABEL_33:
      v22 = v0[9];

      (*(v13 + 8))(v22, v12);
      goto LABEL_34;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v16 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v17 = 0;
        goto LABEL_32;
      }

      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      v20 = __OFSUB__(v18, v19);
      v17 = v18 - v19;
      if (!v20)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v16)
    {
      v17 = BYTE6(v1);
LABEL_32:
      *(result + 4) = v17;
      v21 = result;
      sub_1001C60E4(v2, v1);
      _os_log_impl(&_mh_execute_header, v14, v15, "Sending PaperKit message (PCS=OFF) with length: %ld", v21, 0xCu);

      goto LABEL_33;
    }

    LODWORD(v17) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    v17 = v17;
    goto LABEL_32;
  }

  sub_1000073B4(v0[9], &qword_1006C8880);
LABEL_34:
  sub_1001C4E38(v2, v1);
  FastSync.PaperKitMessage.init(data:)();
  (*(v0[12] + 16))(v0[13], v0[14], v0[11]);
  type metadata accessor for FastSync.PaperKit();
  sub_100455E2C(&qword_1006C8898, &type metadata accessor for FastSync.PaperKitMessage);
  FastSync.MessageContainer.init<A>(message:)();
  v23 = swift_task_alloc();
  v0[31] = v23;
  *v23 = v0;
  v23[1] = sub_10045465C;
  v24 = v0[7];

  return sub_100452438(v24);
}

uint64_t sub_10045402C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_100454870;
  }

  else
  {
    v4 = sub_100454140;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100454140()
{
  v1 = v0[24];
  sub_10015DA04(&unk_1006BD390);
  v2 = swift_allocObject();
  v0[26] = v2;
  *(v2 + 16) = xmmword_100534670;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_100454220;

  return sub_10045152C(v2);
}

uint64_t sub_100454220(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[28] = a1;
  v4[29] = a2;
  v4[30] = v2;

  if (v2)
  {
    v5 = sub_100454A90;
  }

  else
  {

    v5 = sub_100454340;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100454340()
{
  if (qword_1006BC958 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_10002597C(*(v0 + 64), qword_1006C8698);
  sub_100006038(v2, v1, &qword_1006C8880);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    sub_1001C4E38(*(v0 + 224), *(v0 + 232));
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 232);
    if (!v7)
    {
      sub_10019671C(*(v0 + 224), *(v0 + 232));
LABEL_18:
      v21 = *(v0 + 80);

      (*(v4 + 8))(v21, v3);
      goto LABEL_19;
    }

    result = swift_slowAlloc();
    *result = 134217984;
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        goto LABEL_17;
      }

      v12 = *(*(v0 + 224) + 16);
      v13 = *(*(v0 + 224) + 24);
      v14 = __OFSUB__(v13, v12);
      v11 = v13 - v12;
      if (!v14)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = *(v0 + 238);
LABEL_17:
      v19 = *(v0 + 224);
      v18 = *(v0 + 232);
      *(result + 4) = v11;
      v20 = result;
      sub_10019671C(v19, v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "Sending PaperKit message (PCS=ON) with length: %ld", v20, 0xCu);

      goto LABEL_18;
    }

    v15 = *(v0 + 224);
    v16 = *(v0 + 228);
    v14 = __OFSUB__(v16, v15);
    v17 = v16 - v15;
    if (v14)
    {
      __break(1u);
      return result;
    }

    v11 = v17;
    goto LABEL_17;
  }

  sub_1000073B4(*(v0 + 80), &qword_1006C8880);
LABEL_19:
  v22 = *(v0 + 192);
  FastSync.PaperKitMessage.init(data:)();

  (*(*(v0 + 96) + 16))(*(v0 + 104), *(v0 + 112), *(v0 + 88));
  type metadata accessor for FastSync.PaperKit();
  sub_100455E2C(&qword_1006C8898, &type metadata accessor for FastSync.PaperKitMessage);
  FastSync.MessageContainer.init<A>(message:)();
  v23 = swift_task_alloc();
  *(v0 + 248) = v23;
  *v23 = v0;
  v23[1] = sub_10045465C;
  v24 = *(v0 + 56);

  return sub_100452438(v24);
}

uint64_t sub_10045465C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100454CC0;
  }

  else
  {
    v2 = sub_100454770;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100454770()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  sub_1001C60E4(v0[21], v0[22]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1004539E8;
  v8 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
}

uint64_t sub_100454870()
{
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C8680);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error sending PaperKit message: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  v7 = v0[19];
  v8 = v0[4];

  v9 = *(v8 + v7);
  os_unfair_lock_lock((v9 + 24));
  v14 = *(v9 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v18 = v0[21];
    v17 = v0[22];
    *(v9 + 16) = v16;
    os_unfair_lock_unlock((v9 + 24));

    sub_1001C60E4(v18, v17);
    v19 = swift_task_alloc();
    v0[20] = v19;
    *v19 = v0;
    v19[1] = sub_1004539E8;
    v13 = v0[15];
    v10 = v0 + 2;
    v11 = 0;
    v12 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v10, v11, v12, v13);
}

uint64_t sub_100454A90()
{
  v1 = v0[24];

  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C8680);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error sending PaperKit message: %@", v5, 0xCu);
    sub_1000073B4(v6, &qword_1006C1440);
  }

  v8 = v0[19];
  v9 = v0[4];

  v10 = *(v9 + v8);
  os_unfair_lock_lock((v10 + 24));
  v15 = *(v10 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    v19 = v0[21];
    v18 = v0[22];
    *(v10 + 16) = v17;
    os_unfair_lock_unlock((v10 + 24));

    sub_1001C60E4(v19, v18);
    v20 = swift_task_alloc();
    v0[20] = v20;
    *v20 = v0;
    v20[1] = sub_1004539E8;
    v14 = v0[15];
    v11 = v0 + 2;
    v12 = 0;
    v13 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v11, v12, v13, v14);
}

uint64_t sub_100454CC0()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v3 + 8))(v1, v2);
  if (qword_1006BC950 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10002597C(v4, qword_1006C8680);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error sending PaperKit message: %@", v7, 0xCu);
    sub_1000073B4(v8, &qword_1006C1440);
  }

  v10 = v0[19];
  v11 = v0[4];

  v12 = *(v11 + v10);
  os_unfair_lock_lock((v12 + 24));
  v17 = *(v12 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v21 = v0[21];
    v20 = v0[22];
    *(v12 + 16) = v19;
    os_unfair_lock_unlock((v12 + 24));

    sub_1001C60E4(v21, v20);
    v22 = swift_task_alloc();
    v0[20] = v22;
    *v22 = v0;
    v22[1] = sub_1004539E8;
    v16 = v0[15];
    v13 = v0 + 2;
    v14 = 0;
    v15 = 0;
  }

  return AsyncStream.Iterator.next(isolation:)(v13, v14, v15, v16);
}

uint64_t sub_100454F18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100454F3C, 0, 0);
}

uint64_t sub_100454F3C()
{
  v1 = [*(v0[4] + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_cloudConfiguration) fastSyncPaperKitEnableEphemeralRecords];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  if (v1)
  {
    v5._countAndFlagsBits = EditNoteActivity.noteID.getter();
    String.append(_:)(v5);

    sub_1000054A4(0, &qword_1006C8870);
    v6 = *(v3 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_encryptionParentRecordID);
    v7 = [v6 zoneID];
    v8._countAndFlagsBits = 0xD000000000000010;
    v8._object = 0x8000000100573C40;
    isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
    sub_1000054A4(0, &qword_1006C88A8);
    v10 = isa;
    v11._countAndFlagsBits = 4935760;
    v11._object = 0xE300000000000000;
    v12 = CKRecord.init(recordType:recordID:)(v11, v10).super.isa;
    v13 = [objc_allocWithZone(CKReference) initWithRecordID:v6 action:0];
    [(objc_class *)v12 setParent:v13];

    v14 = [(objc_class *)v12 encryptedValues];
    swift_getObjectType();
    sub_1001C4E38(v4, v2);
    CKRecordKeyValueSetting.subscript.setter();

    swift_unknownObjectRelease();
    v15 = v12;
  }

  else
  {
    v16 = *(v3 + OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_paperKitTemplateRecord);
    v17 = [v16 encryptedValues];
    swift_getObjectType();
    sub_1001C4E38(v4, v2);
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    v15 = v16;
  }

  v18 = v0[1];

  return v18(v15);
}

uint64_t RealtimeCollaborationMessageController.deinit()
{
  v1 = OBJC_IVAR____TtC11MobileNotes38RealtimeCollaborationMessageController_activity;
  v2 = type metadata accessor for EditNoteActivity();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RealtimeCollaborationMessageController.__deallocating_deinit()
{
  RealtimeCollaborationMessageController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100455374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_10043A9FC(a1, v4, v5, v6);
}

uint64_t type metadata accessor for RealtimeCollaborationMessageController()
{
  result = qword_1006C8768;
  if (!qword_1006C8768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045547C()
{
  result = type metadata accessor for EditNoteActivity();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100455568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1004500B0(a1, v4, v5, v6);
}

uint64_t sub_10045561C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A600;

  return sub_100452930(a1, v4, v5, v6);
}

uint64_t sub_1004556D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_1004536F8(a1, v4, v5, v6);
}

uint64_t sub_100455784(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_1004B4324(a1, v5, v4);
}

uint64_t sub_100455838(uint64_t a1)
{
  v37 = a1;
  v36 = type metadata accessor for OSSignpostError();
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  if (qword_1006BC960 != -1)
  {
    swift_once();
  }

  v35 = v1;
  v38 = v8;
  v14 = type metadata accessor for OSSignposter();
  sub_10002597C(v14, qword_1006C86B0);
  static OSSignpostID.exclusive.getter();
  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v16, v18, "Sort", "", v17, 2u);
  }

  (*(v5 + 16))(v11, v13, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v19 = *(v5 + 8);
  v19(v13, v4);
  v20 = objc_opt_self();
  sub_1000054A4(0, &qword_1006C88A8);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v22 = [v20 sortedRecords:isa];

  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = OSSignposter.logHandle.getter();
  v25 = v38;
  OSSignpostIntervalState.signpostID.getter();
  v26 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v28 = v35;
    v27 = v36;
    if ((*(v35 + 88))(v3, v36) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v29 = "[Error] Interval already ended";
    }

    else
    {
      (*(v28 + 8))(v3, v27);
      v29 = "";
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = v38;
    v32 = OSSignpostID.rawValue.getter();
    v33 = v29;
    v25 = v31;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v26, v32, "Sort", v33, v30, 2u);
  }

  v19(v25, v4);
  return v23;
}

uint64_t sub_100455C84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_10043B644(a1, v4, v5, v6);
}

uint64_t sub_100455D38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100455D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000A1FC;

  return sub_10044DBB8(a1, v4, v5, v6);
}

uint64_t sub_100455E2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100455E74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1004B47B4(a1, v5, v4);
}

id sub_100455F2C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = a3[3];
  if (v7)
  {
    v8 = sub_10017CC60(a3, a3[3]);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100009F60(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:v6 locale:v12 arguments:a4];

  swift_unknownObjectRelease();
  return v13;
}

void sub_1004560A4(id a1@<X1>, uint64_t *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = [a1 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectWithID:v4];
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
}

id sub_100456120@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v5 = result;
  if (result)
  {
    result = v3;
  }

  *a2 = v5;
  return result;
}

void sub_100456198(void *a1)
{
  v2 = [a1 standardizedContent];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 managedObjectContext];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_opt_self() notesContainingHashtagWithStandarizedContent:v3 context:v4];

      sub_1000054A4(0, &qword_1006BFEC0);
      sub_1001C607C();
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      return;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456544(_swiftEmptyArrayStorage, &unk_1006C16D0, &unk_10053D0C0, &qword_1006BFEC0);
    }
  }
}

void sub_1004562CC(void *a1)
{
  v2 = [a1 standardizedContent];
  if (!v2)
  {
LABEL_13:
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456544(_swiftEmptyArrayStorage, &unk_1006C16D0, &unk_10053D0C0, &qword_1006BFEC0);
    }

    return;
  }

  v3 = v2;
  v4 = [a1 account];
  if (!v4)
  {

    goto LABEL_13;
  }

  v5 = v4;
  v6 = [objc_opt_self() visibleSmartFoldersForHashtagStandardizedContent:v3 account:v4];

  sub_1000054A4(0, &qword_1006BF450);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_18:

    sub_10026F190(_swiftEmptyArrayStorage);

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v9);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_100456544(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      sub_10015DA04(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
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

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1000054A4(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
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
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        sub_1000054A4(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_100456854(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10015DA04(&qword_1006C1780);
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
        type metadata accessor for UIAppIntentInteraction();
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
        type metadata accessor for UIAppIntentInteraction();
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

uint64_t sub_100456B20(uint64_t a1, uint64_t a2, char a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = static String.localizedStringWithFormat(_:_:)();
  v10 = v9;

  sub_10015DA04(&qword_1006BE8F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100531E30;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (a1 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      if (a3)
      {

        v16 = String._bridgeToObjectiveC()();

        v17 = [v16 ic_quotedString];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v18;

        v19 = *(v11 + 16);
        v20 = *(v11 + 24);
        v21 = v19 + 1;
      }

      else
      {
        v19 = *(v11 + 16);
        v20 = *(v11 + 24);
        v21 = v19 + 1;
      }

      if (v19 >= v20 >> 1)
      {
        v11 = sub_1001CAE70((v20 > 1), v21, 1, v11);
      }

      *(v11 + 16) = v21;
      v22 = v11 + 16 * v19;
      *(v22 + 32) = v15;
      *(v22 + 40) = v14;
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  sub_10015DA04(&qword_1006C13F0);
  sub_10029C99C();
  v23 = BidirectionalCollection<>.joined(separator:)();

  return v23;
}

uint64_t sub_100456D98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  if (a2)
  {
    v4 = result;
    v5 = objc_opt_self();

    v6 = [v5 mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10015DA04(&qword_1006C1A30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100531E30;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1001D9030();
    *(v9 + 32) = v4;
    *(v9 + 40) = a2;
    v10 = static String.localizedStringWithFormat(_:_:)();

    return v10;
  }

  return result;
}

uint64_t sub_100456F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = __VaListBuilder.va_list()();
    sub_1000054A4(0, &qword_1006C21F0);
    v29[3] = type metadata accessor for Locale();
    sub_100180240(v29);

    static Locale.current.getter();
    v25 = sub_100455F2C(a2, a3, v29, v24);
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    sub_10017CC60((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_10045716C(unint64_t a1)
{
  v1 = a1;
  v140 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_showSimplifiedWebEditor_;
    v141 = v2;
    while (1)
    {
      if (v4)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_90;
        }

        v14 = *(v1 + 8 * v3 + 32);
      }

      v15 = v14;
      v16 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v17 = [v14 v6[332]];
      if (!v17)
      {
        goto LABEL_14;
      }

      v18 = v17;
      v19 = [v15 managedObjectContext];
      if (!v19)
      {
        break;
      }

      v7 = v19;
      v8 = v5;
      v9 = v4;
      v10 = v1;
      v11 = v6;
      v12 = [objc_opt_self() notesContainingHashtagWithStandarizedContent:v18 context:v19];

      sub_1000054A4(0, &qword_1006BFEC0);
      sub_1001C607C();
      v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = v11;
      v1 = v10;
      v4 = v9;
      v5 = v8;
      v2 = v141;
LABEL_6:

      sub_1002DBDC8(v13);
      ++v3;
      if (v16 == v2)
      {
        goto LABEL_19;
      }
    }

LABEL_14:
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100456544(_swiftEmptyArrayStorage, &unk_1006C16D0, &unk_10053D0C0, &qword_1006BFEC0);
      v13 = v20;
    }

    else
    {
      v13 = &_swiftEmptySetSingleton;
    }

    goto LABEL_6;
  }

LABEL_19:
  v21 = sub_10026F190(_swiftEmptyArrayStorage);

  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *(v21 + 16);
  }

  if (v2)
  {
    v23 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v24 = *(v1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_91;
      }

      sub_1004562CC(v24);
      v28 = v27;

      sub_1002DBDC8(v28);
      ++v23;
    }

    while (v26 != v2);
  }

  v29 = sub_10026F190(_swiftEmptyArrayStorage);

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = __CocoaSet.count.getter();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v140)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v31 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      return;
    }
  }

  if (v31 != 2)
  {
    if (v31 != 1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v57 = v31;
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v57 = v31;
        v58 = *(v1 + 32);
      }

      v59 = v58;
      v60 = [v58 displayText];

      if (!v60)
      {
        return;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = String._bridgeToObjectiveC()();

      v62 = [v61 ic_withHashtagPrefix];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (v30 <= 0)
      {
        if (v22 <= 0)
        {
          goto LABEL_87;
        }

        sub_10015DA04(&qword_1006C1A30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100539C40;
        *(inited + 56) = &type metadata for String;
        v101 = sub_1001D9030();
        *(inited + 32) = v63;
        *(inited + 64) = v101;
        *(inited + 40) = v65;
        if (__OFSUB__(v57, 1))
        {
          goto LABEL_102;
        }

        *(inited + 96) = &type metadata for Int;
        *(inited + 104) = &protocol witness table for Int;
        *(inited + 72) = v57 - 1;
        *(inited + 136) = &type metadata for Int;
        *(inited + 144) = &protocol witness table for Int;
        *(inited + 112) = v22;
        v102 = [objc_opt_self() mainBundle];
        v103 = String._bridgeToObjectiveC()();
        v104 = [v102 localizedStringForKey:v103 value:0 table:0];

        v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = v106;

        sub_10035B3E8(inited, v105, v107);
        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C5D10);
      }

      else
      {
        sub_10015DA04(&qword_1006C1A30);
        v66 = __OFSUB__(v57, 1);
        v67 = v57 - 1;
        v68 = v66;
        if (v22 <= 0)
        {
          v116 = swift_initStackObject();
          *(v116 + 16) = xmmword_100539C40;
          *(v116 + 56) = &type metadata for String;
          v117 = sub_1001D9030();
          *(v116 + 32) = v63;
          *(v116 + 64) = v117;
          *(v116 + 40) = v65;
          if ((v68 & 1) == 0)
          {
            *(v116 + 96) = &type metadata for Int;
            *(v116 + 104) = &protocol witness table for Int;
            *(v116 + 72) = v67;
            *(v116 + 136) = &type metadata for Int;
            *(v116 + 144) = &protocol witness table for Int;
            *(v116 + 112) = v30;
            v118 = [objc_opt_self() mainBundle];
            v119 = String._bridgeToObjectiveC()();
            v120 = [v118 localizedStringForKey:v119 value:0 table:0];

            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            sub_10035B3E8(v116, v121, v123);
            swift_bridgeObjectRelease_n();
            swift_setDeallocating();
            sub_10015DA04(&unk_1006C5D10);
            swift_arrayDestroy();
            return;
          }

          goto LABEL_103;
        }

        v69 = swift_initStackObject();
        *(v69 + 16) = xmmword_100539C30;
        *(v69 + 56) = &type metadata for String;
        v70 = sub_1001D9030();
        *(v69 + 32) = v63;
        *(v69 + 64) = v70;
        *(v69 + 40) = v65;
        if (v68)
        {
          goto LABEL_100;
        }

        *(v69 + 96) = &type metadata for Int;
        *(v69 + 104) = &protocol witness table for Int;
        *(v69 + 72) = v67;
        *(v69 + 136) = &type metadata for Int;
        *(v69 + 144) = &protocol witness table for Int;
        *(v69 + 112) = v22;
        *(v69 + 176) = &type metadata for Int;
        *(v69 + 184) = &protocol witness table for Int;
        *(v69 + 152) = v30;
        v71 = [objc_opt_self() mainBundle];
        v72 = String._bridgeToObjectiveC()();
        v73 = [v71 localizedStringForKey:v72 value:0 table:0];

        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        sub_10035B3E8(v69, v74, v76);
        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C5D10);
      }

      swift_arrayDestroy();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_41;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v1 + 32);
LABEL_41:
      v33 = v32;
      v34 = [v32 displayText];

      if (!v34)
      {
        return;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 ic_withHashtagPrefix];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (v30 > 0)
      {
        sub_10015DA04(&qword_1006C1A30);
        if (v22 <= 0)
        {
          v108 = swift_allocObject();
          *(v108 + 16) = xmmword_100535E30;
          *(v108 + 56) = &type metadata for String;
          v109 = sub_1001D9030();
          *(v108 + 32) = v37;
          *(v108 + 40) = v39;
          *(v108 + 96) = &type metadata for Int;
          *(v108 + 104) = &protocol witness table for Int;
          *(v108 + 64) = v109;
          *(v108 + 72) = v30;
          v110 = [objc_opt_self() mainBundle];
          v111 = String._bridgeToObjectiveC()();
          v112 = [v110 localizedStringForKey:v111 value:0 table:0];

          v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v115 = v114;

          sub_10035B3E8(v108, v113, v115);
        }

        else
        {
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_100539C40;
          *(v40 + 56) = &type metadata for String;
          v41 = sub_1001D9030();
          *(v40 + 32) = v37;
          *(v40 + 40) = v39;
          *(v40 + 96) = &type metadata for Int;
          *(v40 + 104) = &protocol witness table for Int;
          *(v40 + 64) = v41;
          *(v40 + 72) = v22;
          *(v40 + 136) = &type metadata for Int;
          *(v40 + 144) = &protocol witness table for Int;
          *(v40 + 112) = v30;
          v42 = [objc_opt_self() mainBundle];
          v43 = String._bridgeToObjectiveC()();
          v44 = [v42 localizedStringForKey:v43 value:0 table:0];

          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          sub_10035B3E8(v40, v45, v47);
        }

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C5D10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        return;
      }

      if (v22 > 0)
      {
        sub_10015DA04(&qword_1006C1A30);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_100535E30;
        *(v92 + 56) = &type metadata for String;
        v93 = sub_1001D9030();
        *(v92 + 32) = v37;
        *(v92 + 40) = v39;
        *(v92 + 96) = &type metadata for Int;
        *(v92 + 104) = &protocol witness table for Int;
        *(v92 + 64) = v93;
        *(v92 + 72) = v22;
        v94 = [objc_opt_self() mainBundle];
        v95 = String._bridgeToObjectiveC()();
        v96 = [v94 localizedStringForKey:v95 value:0 table:0];

        v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v99 = v98;

        sub_10035B3E8(v92, v97, v99);
        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C5D10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        return;
      }

LABEL_87:

      return;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_98;
    }

    v48 = *(v1 + 32);
  }

  v49 = v48;
  v50 = [v48 displayText];

  if (!v50)
  {
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = String._bridgeToObjectiveC()();

  v52 = [v51 ic_withHashtagPrefix];

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  if ((v1 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      return;
    }

    v56 = *(v1 + 40);
  }

  v77 = v56;
  v78 = [v56 displayText];

  if (!v78)
  {
    goto LABEL_87;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v79 = String._bridgeToObjectiveC()();

  v80 = [v79 ic_withHashtagPrefix];

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (v30 <= 0)
  {
    if (v22 > 0)
    {
      sub_10015DA04(&qword_1006C1A30);
      v124 = swift_initStackObject();
      *(v124 + 16) = xmmword_100539C40;
      *(v124 + 56) = &type metadata for String;
      v125 = sub_1001D9030();
      *(v124 + 32) = v53;
      *(v124 + 40) = v55;
      *(v124 + 96) = &type metadata for String;
      *(v124 + 104) = v125;
      *(v124 + 64) = v125;
      *(v124 + 72) = v81;
      *(v124 + 80) = v83;
      *(v124 + 136) = &type metadata for Int;
      *(v124 + 144) = &protocol witness table for Int;
      *(v124 + 112) = v22;
      v126 = [objc_opt_self() mainBundle];
      v127 = String._bridgeToObjectiveC()();
      v128 = [v126 localizedStringForKey:v127 value:0 table:0];

      v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;

      sub_10035B3E8(v124, v129, v131);
      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      sub_10015DA04(&unk_1006C5D10);
      swift_arrayDestroy();
      return;
    }

    goto LABEL_87;
  }

  sub_10015DA04(&qword_1006C1A30);
  if (v22 <= 0)
  {
    v132 = swift_initStackObject();
    *(v132 + 16) = xmmword_100539C40;
    *(v132 + 56) = &type metadata for String;
    v133 = sub_1001D9030();
    *(v132 + 32) = v53;
    *(v132 + 40) = v55;
    *(v132 + 96) = &type metadata for String;
    *(v132 + 104) = v133;
    *(v132 + 64) = v133;
    *(v132 + 72) = v81;
    *(v132 + 80) = v83;
    *(v132 + 136) = &type metadata for Int;
    *(v132 + 144) = &protocol witness table for Int;
    *(v132 + 112) = v30;
    v134 = [objc_opt_self() mainBundle];
    v135 = String._bridgeToObjectiveC()();
    v136 = [v134 localizedStringForKey:v135 value:0 table:0];

    v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = v138;

    sub_10035B3E8(v132, v137, v139);
  }

  else
  {
    v84 = swift_initStackObject();
    *(v84 + 16) = xmmword_100539C30;
    *(v84 + 56) = &type metadata for String;
    v85 = sub_1001D9030();
    *(v84 + 32) = v53;
    *(v84 + 40) = v55;
    *(v84 + 96) = &type metadata for String;
    *(v84 + 104) = v85;
    *(v84 + 64) = v85;
    *(v84 + 72) = v81;
    *(v84 + 80) = v83;
    *(v84 + 136) = &type metadata for Int;
    *(v84 + 144) = &protocol witness table for Int;
    *(v84 + 112) = v22;
    *(v84 + 176) = &type metadata for Int;
    *(v84 + 184) = &protocol witness table for Int;
    *(v84 + 152) = v30;
    v86 = [objc_opt_self() mainBundle];
    v87 = String._bridgeToObjectiveC()();
    v88 = [v86 localizedStringForKey:v87 value:0 table:0];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    sub_10035B3E8(v84, v89, v91);
  }

  swift_bridgeObjectRelease_n();
  swift_setDeallocating();
  sub_10015DA04(&unk_1006C5D10);
  swift_arrayDestroy();
}

uint64_t sub_100458478(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 >= 1 && a2 >= 1)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v7;
  }

  return result;
}

void *sub_10045859C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10015DA04(&qword_1006C8A70);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

id sub_1004587B4(void *a1)
{
  result = [a1 displayText];
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 ic_withHashtagPrefix];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100456198(a1);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *(v9 + 16);
    }

    sub_1004562CC(a1);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = __CocoaSet.count.getter();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    if (v12 > 0)
    {
      sub_10015DA04(&qword_1006C1A30);
      if (v10 <= 0)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100535E30;
        *(inited + 56) = &type metadata for String;
        v25 = sub_1001D9030();
        *(inited + 32) = v6;
        *(inited + 40) = v8;
        *(inited + 96) = &type metadata for Int;
        *(inited + 104) = &protocol witness table for Int;
        *(inited + 64) = v25;
        *(inited + 72) = v12;
        v26 = [objc_opt_self() mainBundle];
        v27 = String._bridgeToObjectiveC()();
        v28 = [v26 localizedStringForKey:v27 value:0 table:0];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v23 = sub_10035B3E8(inited, v29, v31);
        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        sub_10015DA04(&unk_1006C5D10);
        swift_arrayDestroy();
        return v23;
      }

      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_100539C40;
      *(v13 + 56) = &type metadata for String;
      v14 = sub_1001D9030();
      *(v13 + 32) = v6;
      *(v13 + 40) = v8;
      *(v13 + 96) = &type metadata for Int;
      *(v13 + 104) = &protocol witness table for Int;
      *(v13 + 64) = v14;
      *(v13 + 72) = v10;
      *(v13 + 136) = &type metadata for Int;
      *(v13 + 144) = &protocol witness table for Int;
      *(v13 + 112) = v12;
      v15 = [objc_opt_self() mainBundle];
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 localizedStringForKey:v16 value:0 table:0];
LABEL_14:
      v19 = v17;

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = sub_10035B3E8(v13, v20, v22);
      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      sub_10015DA04(&unk_1006C5D10);
      swift_arrayDestroy();
      return v23;
    }

    if (v10 > 0)
    {
      sub_10015DA04(&qword_1006C1A30);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_100535E30;
      *(v13 + 56) = &type metadata for String;
      v18 = sub_1001D9030();
      *(v13 + 32) = v6;
      *(v13 + 40) = v8;
      *(v13 + 96) = &type metadata for Int;
      *(v13 + 104) = &protocol witness table for Int;
      *(v13 + 64) = v18;
      *(v13 + 72) = v10;
      v15 = [objc_opt_self() mainBundle];
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 localizedStringForKey:v16 value:0 table:0];
      goto LABEL_14;
    }

    return 0;
  }

  return result;
}

void sub_100458C74(void *a1)
{
  sub_100456198(a1);
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = a1;
  v30[0] = v3;
  v30[1] = sub_100459C64;
  v30[2] = v4;
  v30[3] = sub_100459C6C;
  v30[4] = 0;
  v30[5] = sub_100459C70;
  v30[6] = 0;
  v30[7] = sub_100456120;
  v30[8] = 0;
  v30[9] = sub_100459C6C;
  v30[10] = 0;
  v31 = sub_100459C70;
  v32 = 0;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = a1;

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_1001C607C();
    Set.Iterator.init(_cocoa:)();
    v3 = v29[17];
    v6 = v29[18];
    v8 = v29[19];
    v7 = v29[20];
    v9 = v29[21];
    v10 = v32;
    v27 = v31;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = (v3 + 56);
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(v3 + 56);
    v14 = a1;

    v10 = 0;
    v7 = 0;
    v27 = sub_100459C70;
  }

  v26 = v8;
  v15 = (v8 + 64) >> 6;

  v16 = v7;
  while (1)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      v20 = __CocoaSet.Iterator.next()();
      if (!v20)
      {
        goto LABEL_27;
      }

      v28 = v20;
      sub_1000054A4(0, &qword_1006BFEC0);
      swift_dynamicCast();
      v19 = v29[0];
      if (!v29[0])
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v17 = v16;
    if (!v9)
    {
      break;
    }

    v7 = v16;
LABEL_15:
    v18 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v19 = *(*(v3 + 48) + ((v7 << 9) | (8 * v18)));
    if (!v19)
    {
      goto LABEL_27;
    }

LABEL_19:
    v29[0] = v19;
    sub_1004560A4(v4[2], v29, &v28);

    v21 = v28;
    if (v28)
    {
      v29[0] = v28;
      sub_100456120(v29, &v28);

      v22 = v28;
      if (v28)
      {
        v29[0] = v28;
        v27(&v28, v29);

        v23 = v28;
        v24 = [v28 isSharedViaICloud];

        if (v24)
        {
          goto LABEL_27;
        }
      }
    }
  }

  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v15)
    {
      break;
    }

    v9 = v6[v7];
    ++v17;
    if (v9)
    {
      v16 = v7;
      goto LABEL_15;
    }
  }

  v9 = 0;
  if (v15 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v15;
  }

  v7 = v25 - 1;
LABEL_27:
  sub_1000073B4(v30, &qword_1006C8A90);
  v29[0] = v3;
  v29[1] = v6;
  v29[2] = v26;
  v29[3] = v7;
  v29[4] = v9;
  v29[5] = sub_100459C64;
  v29[6] = v4;
  v29[7] = sub_100459C6C;
  v29[8] = 0;
  v29[9] = sub_100459C70;
  v29[10] = 0;
  v29[11] = sub_100456120;
  v29[12] = 0;
  v29[13] = sub_100459C6C;
  v29[14] = 0;
  v29[15] = v27;
  v29[16] = v10;
  sub_1000073B4(v29, &qword_1006C8A98);
}

uint64_t sub_100459058(void *a1)
{
  v3 = sub_1004587B4(a1);
  if (v2)
  {
    v4 = v2;
    sub_10015DA04(&qword_1006BE8F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100531E30;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    sub_100458C74(a1);
    if (v6)
    {
      v7 = [objc_opt_self() mainBundle];
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 localizedStringForKey:v8 value:0 table:0];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1001CAE70((v13 > 1), v14 + 1, 1, v5);
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    sub_10015DA04(&qword_1006C13F0);
    sub_10029C99C();
    v3 = BidirectionalCollection<>.joined(separator:)();
  }

  return v3;
}

void *sub_1004591FC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10015DA04(&qword_1006C1758);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100459C1C(&qword_1006C07C0, &type metadata accessor for URL);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100459C1C(&qword_1006C1750, &type metadata accessor for URL);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

id sub_100459540(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 displayText];
  if (result)
  {
    v7 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 ic_withHashtagPrefix];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_100456198(a1);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *(v13 + 16);
    }

    sub_1004562CC(a1);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *(v15 + 16);
    }

    if (v16 <= 0 && v14 <= 0)
    {

      return 0;
    }

    else
    {
      sub_10015DA04(&qword_1006C1A30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100535E30;
      *(inited + 56) = &type metadata for String;
      v18 = sub_1001D9030();
      *(inited + 32) = v10;
      *(inited + 40) = v12;
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v18;
      *(inited + 64) = v18;
      *(inited + 72) = a2;
      *(inited + 80) = a3;
      v19 = objc_opt_self();

      v20 = [v19 mainBundle];
      v21 = String._bridgeToObjectiveC()();
      v22 = [v20 localizedStringForKey:v21 value:0 table:0];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_100456F24(inited, v23, v25);
      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      sub_10015DA04(&unk_1006C5D10);
      swift_arrayDestroy();
      return v26;
    }
  }

  return result;
}

unint64_t sub_100459988(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_10015DA04(&qword_1006C8A78);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v20 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v20)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100459C1C(&qword_1006C8A80, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << v3[32];
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v7[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_100459C1C(&qword_1006C8A88, &type metadata accessor for AnyCancellable);
      while (1)
      {
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v7[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v12] = v14 | v13;
      *(*(v3 + 6) + 8 * v11) = v8;
      v16 = *(v3 + 2);
      v9 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v17;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100459C1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BulkModifyNoteTags()
{
  result = qword_1006C8B08;
  if (!qword_1006C8B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100459CE8()
{
  result = sub_1000054A4(319, &qword_1006C4660);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100459D9C(uint64_t a1, uint64_t a2)
{
  v3[213] = v2;
  v3[207] = a2;
  v3[201] = a1;
  v4 = *(type metadata accessor for BulkModifyNoteTags() - 8);
  v3[219] = v4;
  v3[225] = *(v4 + 64);
  v3[231] = swift_task_alloc();
  v3[237] = swift_task_alloc();
  v3[238] = swift_task_alloc();

  return _swift_task_switch(sub_100459E80, 0, 0);
}

uint64_t sub_100459E80()
{
  v1 = *(v0 + 1608);
  v2 = *(*(v0 + 1704) + 8);
  *(v0 + 1912) = v2;
  v3 = [v2 modernManagedObjectContext];
  *(v0 + 1920) = v3;
  *(v0 + 1400) = v1;
  *(v0 + 1408) = sub_10045B484;
  *(v0 + 1416) = 0;
  swift_bridgeObjectRetain_n();
  sub_10015DA04(&qword_1006C8B58);
  LazyFilterSequence.filter(_:)();
  v4 = *(v0 + 1336);
  *(v0 + 1928) = v4;
  v5 = *(v0 + 1344);
  v6 = *(v0 + 1352);
  *(v0 + 1936) = v6;
  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v0 + 1608);
    v9 = type metadata accessor for NoteEntity(0);
    v13 = 0;
    v15 = *(v9 - 8);
    v14 = v9 - 8;
    v16 = *(v15 + 72);
    v17 = v8 + *(v14 + 32) + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v18 = v17;
    while (*v18 != 1)
    {
      ++v13;
      v18 += v16;
      if (v7 == v13)
      {
        goto LABEL_16;
      }
    }

    v19 = 1;
    while (2)
    {
      v20 = v13;
      do
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          return _swift_asyncLet_get_throwing(v14, v10, v11, v12);
        }

        if (v13 == v7)
        {
          goto LABEL_15;
        }

        if (v13 >= v7)
        {
          goto LABEL_40;
        }

        ++v20;
      }

      while ((*(v17 + v13 * v16) & 1) == 0);
      if (!__OFADD__(v19++, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_15:
    if (v19 >= v7)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (**(v0 + 1704))
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v23 = *(v4 + 16);
        if (v23)
        {
          goto LABEL_19;
        }

LABEL_25:
        v28 = 0;
        v24 = 0;
        goto LABEL_26;
      }
    }

    else
    {
    }

    sub_100197CCC();
    swift_allocError();
    v39 = 1;
    goto LABEL_36;
  }

LABEL_24:

  v23 = *(v4 + 16);
  if (!v23)
  {
    goto LABEL_25;
  }

LABEL_19:
  v24 = 0;
  v25 = *(type metadata accessor for NoteEntity(0) - 8);
  v26 = v4 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v27 = *(v25 + 72);
  while ((v5(v26) & 1) == 0)
  {
    ++v24;
    v26 += v27;
    if (v23 == v24)
    {
      v24 = v23;
      break;
    }
  }

  v28 = *(v4 + 16);
LABEL_26:
  if (sub_10045EE74(v24, v28, v4, v5) < v7)
  {
    if (**(v0 + 1704))
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    sub_100197CCC();
    swift_allocError();
    v39 = 2;
LABEL_36:
    *v38 = v39;
    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }

LABEL_29:
  v30 = *(v0 + 1904);
  v42 = *(v0 + 1896);
  v31 = *(v0 + 1752);
  v32 = *(v0 + 1704);
  v43 = *(v0 + 1656);
  sub_10045F4F0(v32, v30, type metadata accessor for BulkModifyNoteTags);
  v33 = *(v31 + 80);
  *(v0 + 2040) = v33;
  v34 = v33;
  v35 = (v33 + 56) & ~v33;
  v36 = swift_allocObject();
  *(v0 + 1944) = v36;
  v36[2] = v4;
  v36[3] = v5;
  v36[4] = v6;
  v36[5] = sub_10045B4EC;
  v36[6] = 0;
  sub_10045F5B8(v30, v36 + v35, type metadata accessor for BulkModifyNoteTags);

  sub_10015DA04(&qword_1006C8B60);
  swift_asyncLet_begin();
  sub_10045F4F0(v32, v42, type metadata accessor for BulkModifyNoteTags);
  v37 = swift_allocObject();
  *(v0 + 1952) = v37;
  v37[2] = v43;
  v37[3] = sub_10045B504;
  v37[4] = 0;
  sub_10045F5B8(v42, v37 + ((v34 + 40) & ~v34), type metadata accessor for BulkModifyNoteTags);

  sub_10015DA04(&qword_1006C8B68);
  swift_asyncLet_begin();
  v11 = sub_10045A47C;
  v14 = v0 + 16;
  v10 = v0 + 1464;
  v12 = v0 + 1296;

  return _swift_asyncLet_get_throwing(v14, v10, v11, v12);
}

uint64_t sub_10045A47C()
{
  v1[245] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82, v1 + 189, sub_10045AB78, v1 + 170);
  }

  else
  {
    v1[246] = v1[183];

    return _swift_asyncLet_get_throwing(v1 + 82, v1 + 189, sub_10045A530, v1 + 184);
  }
}

uint64_t sub_10045A530()
{
  *(v1 + 1976) = v0;
  if (v0)
  {
    v2 = sub_10045ACA8;
  }

  else
  {
    v2 = sub_10045A564;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045A564()
{
  v14 = *(v0 + 1968);
  v1 = *(v0 + 2040);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1848);
  v4 = *(v0 + 1800);
  v5 = *(v0 + 1656);
  v6 = *(v0 + 1512);
  sub_10045F4F0(*(v0 + 1704), v3, type metadata accessor for BulkModifyNoteTags);
  v7 = (v1 + 32) & ~v1;
  v8 = (v4 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v0 + 1984) = v9;
  *(v9 + 16) = v14;
  *(v9 + 24) = v6;
  sub_10045F5B8(v3, v9 + v7, type metadata accessor for BulkModifyNoteTags);
  *(v9 + v8) = v2;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;

  v10 = v2;
  v11 = swift_task_alloc();
  *(v0 + 1992) = v11;
  v12 = sub_10015DA04(&unk_1006C8B70);
  *v11 = v0;
  v11[1] = sub_10045A704;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 1560, sub_10045F190, v9, v12);
}

uint64_t sub_10045A704()
{
  *(*v1 + 2000) = v0;

  if (v0)
  {
    v2 = sub_10045AE44;
  }

  else
  {

    v2 = sub_10045A820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045A820()
{
  v1 = v0[195];
  v0[251] = v1;
  v2 = swift_task_alloc();
  v0[252] = v2;
  *v2 = v0;
  v2[1] = sub_10045A8D4;
  v3 = v0[239];

  return sub_100186464(v1, v3, 1);
}

uint64_t sub_10045A8D4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2024) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10045AFE0, 0, 0);
  }

  else
  {

    *(v4 + 2032) = a1;

    return _swift_asyncLet_finish(v4 + 656, v4 + 1512, sub_10045AA30, v4 + 1808);
  }
}

uint64_t sub_10045AA88()
{
  v1 = v0[240];

  v2 = v0[1];
  v3 = v0[254];

  return v2(v3);
}

uint64_t sub_10045ABD0()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10045ACA8()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1512, sub_10045AD14, v0 + 1520);
}

uint64_t sub_10045AD6C()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10045AE44()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1512, sub_10045AEB0, v0 + 1616);
}

uint64_t sub_10045AF08()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10045AFE0()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1512, sub_10045B04C, v0 + 1712);
}

uint64_t sub_10045B0A4()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10045B17C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65766F6D6572;
  }

  else
  {
    v3 = 6579297;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x65766F6D6572;
  }

  else
  {
    v5 = 6579297;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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

Swift::Int sub_10045B218()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10045B290()
{
  String.hash(into:)();
}

Swift::Int sub_10045B2F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10045B368@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D708, *a1);

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

void sub_10045B3C8(uint64_t *a1@<X8>)
{
  v2 = 6579297;
  if (*v1)
  {
    v2 = 0x65766F6D6572;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10045B3FC()
{
  if (*v0)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

unint64_t sub_10045B430()
{
  result = qword_1006C8B50;
  if (!qword_1006C8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8B50);
  }

  return result;
}

uint64_t sub_10045B51C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_10045B58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10045B5B0, 0, 0);
}

uint64_t sub_10045B5B0()
{
  v1 = *(v0[4] + 8);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10045B664;
  v3 = v0[3];

  return sub_10045B7D4(v3, v1);
}

uint64_t sub_10045B664(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_10045B7B0, 0, 0);
  }
}

uint64_t sub_10045B7D4(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for Logger();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for NoteID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for NoteEntity(0);
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  sub_10015DA04(&qword_1006C8B98);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10045B9E0, 0, 0);
}

uint64_t sub_10045B9E0()
{
  v1 = v0[6];
  v0[3] = _swiftEmptyArrayStorage;
  v2 = *v1;
  v0[22] = *v1;
  v0[23] = v1[1];
  v0[24] = v1[2];
  v0[25] = v1[3];
  v3 = v1[4];
  v0[2] = v2;
  v0[26] = v3;
  v0[27] = *(v2 + 16);
  sub_10045F480((v0 + 2), (v0 + 4));
  v0[28] = _swiftEmptyArrayStorage;
  v4 = v0[27];

  if (v4)
  {
    v6 = 0;
    while (v6 < v0[27])
    {
      result = sub_10045F4F0(v0[22] + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)) + *(v0[16] + 72) * v6, v0[18], type metadata accessor for NoteEntity);
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      if ((v0[23])(v0[18]))
      {
        sub_10045F5B8(v0[18], v0[20], type metadata accessor for NoteEntity);
        v8 = 0;
        goto LABEL_10;
      }

      v7 = v0[27];
      result = sub_10045F558(v0[18], type metadata accessor for NoteEntity);
      ++v6;
      if (v4 == v7)
      {
        v4 = v0[27];
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_8:
    v8 = 1;
LABEL_10:
    v0[29] = v4;
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[15];
    v12 = v0[16];
    v13 = 1;
    (*(v12 + 56))(v9, v8, 1, v11);
    sub_1001F7498(v9, v10, &unk_1006BCAC0);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v14 = v0[25];
      v15 = v0[17];
      sub_10045F5B8(v0[19], v15, type metadata accessor for NoteEntity);
      v14(v15);
      sub_10045F558(v15, type metadata accessor for NoteEntity);
      v13 = 0;
    }

    v16 = v0[21];
    v17 = v0[11];
    v18 = v0[12];
    (*(v18 + 56))(v16, v13, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      sub_1000073B4((v0 + 2), &unk_1006C14D0);

      v19 = v0[1];
      v20 = v0[28];

      return v19(v20);
    }

    else
    {
      (*(v0[12] + 32))(v0[14], v0[21], v0[11]);
      v21 = swift_task_alloc();
      v0[30] = v21;
      *v21 = v0;
      v21[1] = sub_10045BDD4;
      v22 = v0[14];
      v23 = v0[7];

      return sub_100384000(v22, v23);
    }
  }

  return result;
}

uint64_t sub_10045BDD4(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_10045BED4, 0, 0);
}

uint64_t sub_10045BED4()
{
  v62 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = [*(v0 + 56) managedObjectContextForObjectID:*(v0 + 248)];
    *(v0 + 256) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v0 + 264) = v4;
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v3;
      v5 = v1;
      v6 = swift_task_alloc();
      *(v0 + 272) = v6;
      v7 = sub_10015DA04(&unk_1006BFA20);
      *v6 = v0;
      v6[1] = sub_10045C6D8;
      v8 = sub_10045F668;
      v9 = v0 + 40;
      v10 = v4;

      return NSManagedObjectContext.perform<A>(_:)(v9, v8, v10, v7);
    }

    v30 = *(v0 + 112);
    v31 = *(v0 + 88);
    v32 = *(v0 + 96);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = v1;
    sub_10026EF78(v33, 225, v34);

    swift_willThrow();
    sub_1000073B4(v0 + 16, &unk_1006C14D0);

    (*(v32 + 8))(v30, v31);

    v35 = *(v0 + 8);

    return v35();
  }

  else
  {
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    static Logger.link.getter();
    (*(v14 + 16))(v11, v12, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 104);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    v23 = *(v0 + 72);
    v22 = *(v0 + 80);
    v60 = *(v0 + 64);
    if (v17)
    {
      v59 = *(v0 + 80);
      v24 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100009D88(0x69746E4565746F4ELL, 0xEA00000000007974, v61);
      *(v24 + 12) = 2080;
      sub_10045F620(&qword_1006C5300, &type metadata accessor for NoteID);
      v57 = v16;
      v25 = dispatch thunk of EntityIdentifierConvertible.entityIdentifierString.getter();
      v58 = v19;
      v27 = v26;
      v28 = *(v21 + 8);
      v28(v18, v20);
      v29 = sub_100009D88(v25, v27, v61);

      *(v24 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v15, v57, "%s: Managed object not found with entity identifier: %s", v24, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v59, v60);
      v9 = (v28)(v58, v20);
    }

    else
    {

      v37 = *(v21 + 8);
      v37(v18, v20);
      (*(v23 + 8))(v22, v60);
      v9 = (v37)(v19, v20);
    }

    v38 = *(v0 + 232);
    if (v38 != *(v0 + 216))
    {
      while (v38 < *(v0 + 216))
      {
        v9 = sub_10045F4F0(*(v0 + 176) + ((*(*(v0 + 128) + 80) + 32) & ~*(*(v0 + 128) + 80)) + *(*(v0 + 128) + 72) * v38, *(v0 + 144), type metadata accessor for NoteEntity);
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_30;
        }

        if ((*(v0 + 184))(*(v0 + 144)))
        {
          sub_10045F5B8(*(v0 + 144), *(v0 + 160), type metadata accessor for NoteEntity);
          v41 = 0;
          ++v38;
          goto LABEL_20;
        }

        v40 = *(v0 + 216);
        v9 = sub_10045F558(*(v0 + 144), type metadata accessor for NoteEntity);
        ++v38;
        if (v39 == v40)
        {
          v38 = *(v0 + 216);
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(v9, v8, v10, v7);
    }

LABEL_18:
    v41 = 1;
LABEL_20:
    *(v0 + 232) = v38;
    v43 = *(v0 + 152);
    v42 = *(v0 + 160);
    v44 = *(v0 + 120);
    v45 = *(v0 + 128);
    v46 = 1;
    (*(v45 + 56))(v42, v41, 1, v44);
    sub_1001F7498(v42, v43, &unk_1006BCAC0);
    if ((*(v45 + 48))(v43, 1, v44) != 1)
    {
      v47 = *(v0 + 200);
      v48 = *(v0 + 136);
      sub_10045F5B8(*(v0 + 152), v48, type metadata accessor for NoteEntity);
      v47(v48);
      sub_10045F558(v48, type metadata accessor for NoteEntity);
      v46 = 0;
    }

    v49 = *(v0 + 168);
    v50 = *(v0 + 88);
    v51 = *(v0 + 96);
    (*(v51 + 56))(v49, v46, 1, v50);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      sub_1000073B4(v0 + 16, &unk_1006C14D0);

      v52 = *(v0 + 8);
      v53 = *(v0 + 224);

      return v52(v53);
    }

    else
    {
      (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 168), *(v0 + 88));
      v54 = swift_task_alloc();
      *(v0 + 240) = v54;
      *v54 = v0;
      v54[1] = sub_10045BDD4;
      v55 = *(v0 + 112);
      v56 = *(v0 + 56);

      return sub_100384000(v55, v56);
    }
  }
}

uint64_t sub_10045C6D8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {

    v2 = sub_10045CC38;
  }

  else
  {

    v2 = sub_10045C820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045C820()
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v2 = *(v0 + 248);
    v1 = *(v0 + 256);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 96);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v5 + 8))(v3, v4);
    v6 = *(v0 + 232);
    *(v0 + 224) = *(v0 + 24);
    if (v6 == *(v0 + 216))
    {
      break;
    }

    while (v6 < *(v0 + 216))
    {
      sub_10045F4F0(*(v0 + 176) + ((*(*(v0 + 128) + 80) + 32) & ~*(*(v0 + 128) + 80)) + *(*(v0 + 128) + 72) * v6, *(v0 + 144), type metadata accessor for NoteEntity);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      if ((*(v0 + 184))(*(v0 + 144)))
      {
        sub_10045F5B8(*(v0 + 144), *(v0 + 160), type metadata accessor for NoteEntity);
        v9 = 0;
        ++v6;
        goto LABEL_10;
      }

      v8 = *(v0 + 216);
      sub_10045F558(*(v0 + 144), type metadata accessor for NoteEntity);
      ++v6;
      if (v7 == v8)
      {
        v6 = *(v0 + 216);
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_8:
  v9 = 1;
LABEL_10:
  *(v0 + 232) = v6;
  v11 = *(v0 + 152);
  v10 = *(v0 + 160);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = 1;
  (*(v13 + 56))(v10, v9, 1, v12);
  sub_1001F7498(v10, v11, &unk_1006BCAC0);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v15 = *(v0 + 200);
    v16 = *(v0 + 136);
    sub_10045F5B8(*(v0 + 152), v16, type metadata accessor for NoteEntity);
    v15(v16);
    sub_10045F558(v16, type metadata accessor for NoteEntity);
    v14 = 0;
  }

  v17 = *(v0 + 168);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  (*(v19 + 56))(v17, v14, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000073B4(v0 + 16, &unk_1006C14D0);

    v20 = *(v0 + 8);
    v21 = *(v0 + 224);

    return v20(v21);
  }

  else
  {
    (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 168), *(v0 + 88));
    v23 = swift_task_alloc();
    *(v0 + 240) = v23;
    *v23 = v0;
    v23[1] = sub_10045BDD4;
    v24 = *(v0 + 112);
    v25 = *(v0 + 56);

    return sub_100384000(v24, v25);
  }
}

uint64_t sub_10045CC38()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[12];
  sub_1000073B4((v0 + 2), &unk_1006C14D0);

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10045CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = type metadata accessor for Logger();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for TagID();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for TagEntity();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  sub_10015DA04(&qword_1006C8B80);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_10015DA04(&unk_1006C8B88);
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_10045CF50, 0, 0);
}

uint64_t sub_10045CF50()
{
  v0[2] = _swiftEmptyArrayStorage;
  v1 = v0[17];
  v2 = v0[5];
  v3 = *(v2 + 16);
  v0[22] = v3;
  v0[23] = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_10045F4F0(v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[20], type metadata accessor for TagEntity);
    v4 = 0;
    v1 = v0[17];
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  v0[24] = v5;
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[16];
  v9 = 1;
  (*(v1 + 56))(v6, v4, 1, v8);
  sub_1001F7498(v6, v7, &qword_1006C8B80);
  if ((*(v1 + 48))(v7, 1, v8) != 1)
  {
    v10 = v0[18];
    v11 = v0[6];
    sub_10045F5B8(v0[19], v10, type metadata accessor for TagEntity);
    v11(v10);
    sub_10045F558(v10, type metadata accessor for TagEntity);
    v9 = 0;
  }

  v12 = v0[21];
  v13 = v0[12];
  v14 = v0[13];
  (*(v14 + 56))(v12, v9, 1, v13);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    v15 = v0[1];
    v16 = v0[23];

    return v15(v16);
  }

  else
  {
    v18 = v0[8];
    (*(v0[13] + 32))(v0[15], v0[21], v0[12]);
    v19 = [v18 modernManagedObjectContext];
    v0[25] = v19;
    v20 = objc_opt_self();
    TagID.displayText.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v20 standardizedHashtagRepresentationForDisplayText:v21];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = swift_allocObject();
    v0[26] = v26;
    v26[2] = v23;
    v26[3] = v25;
    v26[4] = v19;
    v19;
    v27 = swift_task_alloc();
    v0[27] = v27;
    v28 = sub_10015DA04(&unk_1006BFED0);
    *v27 = v0;
    v27[1] = sub_10045D2F8;

    return NSManagedObjectContext.perform<A>(_:)(v0 + 3, sub_100192738, v26, v28);
  }
}

uint64_t sub_10045D2F8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10045D434, 0, 0);
  }
}

uint64_t sub_10045D434()
{
  v69 = v0;

  v1 = *(v0 + 24);
  *(v0 + 224) = v1;
  if (v1)
  {
    v2 = [*(v0 + 64) managedObjectContextForObjectID:v1];
    *(v0 + 232) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = swift_allocObject();
      *(v0 + 240) = v4;
      *(v4 + 16) = v3;
      *(v4 + 24) = v1;
      v3;
      v5 = v1;
      v6 = swift_task_alloc();
      *(v0 + 248) = v6;
      v7 = sub_1000054A4(0, &qword_1006C63E0);
      *v6 = v0;
      v6[1] = sub_10045DC24;
      v8 = sub_10045F450;
      v9 = v0 + 32;
      v10 = v4;
      goto LABEL_22;
    }

    v30 = *(v0 + 120);
    v31 = *(v0 + 96);
    v32 = *(v0 + 104);
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = v1;
    sub_10045F238(v33, 225, v34);

    swift_willThrow();

    (*(v32 + 8))(v30, v31);

    v35 = *(v0 + 8);

    return v35();
  }

  v12 = *(v0 + 112);
  v11 = *(v0 + 120);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  static Logger.link.getter();
  (*(v14 + 16))(v12, v11, v13);
  v15 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v15, v67);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);
  v23 = *(v0 + 72);
  if (v16)
  {
    v66 = *(v0 + 72);
    v24 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v24 = 136315394;
    *(v24 + 4) = sub_100009D88(0x7469746E45676154, 0xE900000000000079, v68);
    *(v24 + 12) = 2080;
    sub_10045F620(&unk_1006BDDF0, &type metadata accessor for TagID);
    v64 = v21;
    v65 = v18;
    v25 = dispatch thunk of EntityIdentifierConvertible.entityIdentifierString.getter();
    v27 = v26;
    v28 = *(v19 + 8);
    v28(v17, v20);
    v29 = sub_100009D88(v25, v27, v68);

    *(v24 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v15, v67, "%s: Managed object not found with entity identifier: %s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v22 + 8))(v64, v66);
    v9 = (v28)(v65, v20);
  }

  else
  {

    v37 = *(v19 + 8);
    v37(v17, v20);
    (*(v22 + 8))(v21, v23);
    v9 = (v37)(v18, v20);
  }

  v38 = *(v0 + 192);
  v39 = *(v0 + 176);
  if (v38 != v39)
  {
    if (v38 >= v39)
    {
      __break(1u);
    }

    else
    {
      v9 = sub_10045F4F0(*(v0 + 40) + ((*(*(v0 + 136) + 80) + 32) & ~*(*(v0 + 136) + 80)) + *(*(v0 + 136) + 72) * v38, *(v0 + 160), type metadata accessor for TagEntity);
      if (!__OFADD__(v38++, 1))
      {
        v40 = 0;
        goto LABEL_15;
      }
    }

    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(v9, v8, v10, v7);
  }

  v40 = 1;
LABEL_15:
  *(v0 + 192) = v38;
  v43 = *(v0 + 152);
  v42 = *(v0 + 160);
  v44 = *(v0 + 128);
  v45 = *(v0 + 136);
  v46 = 1;
  (*(v45 + 56))(v42, v40, 1, v44);
  sub_1001F7498(v42, v43, &qword_1006C8B80);
  if ((*(v45 + 48))(v43, 1, v44) != 1)
  {
    v47 = *(v0 + 144);
    v48 = *(v0 + 48);
    sub_10045F5B8(*(v0 + 152), v47, type metadata accessor for TagEntity);
    v48(v47);
    sub_10045F558(v47, type metadata accessor for TagEntity);
    v46 = 0;
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 96);
  v51 = *(v0 + 104);
  (*(v51 + 56))(v49, v46, 1, v50);
  if ((*(v51 + 48))(v49, 1, v50) != 1)
  {
    v54 = *(v0 + 64);
    (*(*(v0 + 104) + 32))(*(v0 + 120), *(v0 + 168), *(v0 + 96));
    v55 = [v54 modernManagedObjectContext];
    *(v0 + 200) = v55;
    v56 = objc_opt_self();
    TagID.displayText.getter();
    v57 = String._bridgeToObjectiveC()();

    v58 = [v56 standardizedHashtagRepresentationForDisplayText:v57];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v62 = swift_allocObject();
    *(v0 + 208) = v62;
    v62[2] = v59;
    v62[3] = v61;
    v62[4] = v55;
    v55;
    v63 = swift_task_alloc();
    *(v0 + 216) = v63;
    v7 = sub_10015DA04(&unk_1006BFED0);
    *v63 = v0;
    v63[1] = sub_10045D2F8;
    v8 = sub_100192738;
    v9 = v0 + 24;
    v10 = v62;
LABEL_22:

    return NSManagedObjectContext.perform<A>(_:)(v9, v8, v10, v7);
  }

  v52 = *(v0 + 8);
  v53 = *(v0 + 184);

  return v52(v53);
}

uint64_t sub_10045DC24()
{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_10045E1A8;
  }

  else
  {

    v2 = sub_10045DD6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045DD6C()
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v6 = (*(v5 + 8))(v3, v4);
  v10 = v0[24];
  v0[23] = v0[2];
  v11 = v0[22];
  if (v10 == v11)
  {
    v12 = 1;
    goto LABEL_8;
  }

  if (v10 >= v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = sub_10045F4F0(v0[5] + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * v10, v0[20], type metadata accessor for TagEntity);
  if (__OFADD__(v10++, 1))
  {
LABEL_18:
    __break(1u);
    return NSManagedObjectContext.perform<A>(_:)(v6, v7, v8, v9);
  }

  v12 = 0;
LABEL_8:
  v0[24] = v10;
  v15 = v0[19];
  v14 = v0[20];
  v16 = v0[16];
  v17 = v0[17];
  v18 = 1;
  (*(v17 + 56))(v14, v12, 1, v16);
  sub_1001F7498(v14, v15, &qword_1006C8B80);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v19 = v0[18];
    v20 = v0[6];
    sub_10045F5B8(v0[19], v19, type metadata accessor for TagEntity);
    v20(v19);
    sub_10045F558(v19, type metadata accessor for TagEntity);
    v18 = 0;
  }

  v21 = v0[21];
  v22 = v0[12];
  v23 = v0[13];
  (*(v23 + 56))(v21, v18, 1, v22);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v27 = v0[8];
    (*(v0[13] + 32))(v0[15], v0[21], v0[12]);
    v28 = [v27 modernManagedObjectContext];
    v0[25] = v28;
    v29 = objc_opt_self();
    TagID.displayText.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v29 standardizedHashtagRepresentationForDisplayText:v30];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = swift_allocObject();
    v0[26] = v35;
    v35[2] = v32;
    v35[3] = v34;
    v35[4] = v28;
    v28;
    v36 = swift_task_alloc();
    v0[27] = v36;
    v9 = sub_10015DA04(&unk_1006BFED0);
    *v36 = v0;
    v36[1] = sub_10045D2F8;
    v7 = sub_100192738;
    v6 = (v0 + 3);
    v8 = v35;

    return NSManagedObjectContext.perform<A>(_:)(v6, v7, v8, v9);
  }

  v24 = v0[1];
  v25 = v0[23];

  return v24(v25);
}

uint64_t sub_10045E1A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10045E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_10045E2B4, 0, 0);
}

uint64_t sub_10045E2B4()
{
  v1 = *(v0[6] + 8);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_10045E36C;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_10045CD4C(v5, v3, v4, v1);
}

uint64_t sub_10045E36C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10045E4B8, 0, 0);
  }
}

void sub_10045E4DC(unint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v58 = a4;
  v72 = a3;
  v56 = a6;
  v66 = type metadata accessor for BulkModifyNoteTags();
  __chkstk_darwin(v66);
  v12 = (v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for NoteID();
  v14 = *(v13 - 8);
  v61 = v13;
  v62 = v14;
  __chkstk_darwin(v13);
  v67 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v55 = v12;
  v57 = v7;
  if (v17)
  {
    v18 = 0;
    v73 = a1 & 0xC000000000000001;
    v63 = a1 + 32;
    v64 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a2 & 0xFFFFFFFFFFFFFF8;
    v68 = a2 & 0xFFFFFFFFFFFFFF8;
    v69 = a1;
    if (a2 < 0)
    {
      v19 = a2;
    }

    v54[1] = v19;
    v7 = a2 & 0xC000000000000001;
    v60 = v62 + 32;
    v20 = _swiftEmptyArrayStorage;
    *&v15 = 138543362;
    v59 = v15;
    v71 = v17;
    v65 = a5;
    while (1)
    {
      if (v73)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v64 + 16))
        {
          goto LABEL_58;
        }

        v21 = *(v63 + 8 * v18);
      }

      a1 = v21;
      v22 = __OFADD__(v18++, 1);
      if (v22)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        v17 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
        v75 = v20;
        v32 = a5;
        v33 = v18;
        v34 = a1;
        v12 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v12, v35))
        {
          a1 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *a1 = v59;
          v37 = [v34 objectID];
          *(a1 + 4) = v37;
          *v36 = v37;
          _os_log_impl(&_mh_execute_header, v12, v35, "Object with ID %{public}@ was not an ICNote", a1, 0xCu);
          sub_1000073B4(v36, &qword_1006C1440);
        }

        else
        {
        }

        v17 = v71;
        v18 = v33;
        a5 = v32;
        v20 = v75;
        goto LABEL_8;
      }

      v12 = v23;
      v74 = a1;
      if (a2 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
        if (!v24)
        {
LABEL_7:

          goto LABEL_8;
        }
      }

      else
      {
        v24 = *(v68 + 16);
        if (!v24)
        {
          goto LABEL_7;
        }
      }

      if (v24 < 1)
      {
        goto LABEL_57;
      }

      v70 = v18;
      v75 = v20;
      a5 = 0;
      v25 = 0;
      v26 = *v72;
      do
      {
        if (v7)
        {
          a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (v26)
          {
            goto LABEL_23;
          }
        }

        else
        {
          a1 = *(a2 + 8 * v25 + 32);
          if (v26)
          {
LABEL_23:
            v27 = [v12 removeHashtag:a1];

            if ((v27 & 1) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v28 = [v12 addHashtagToNoteBodyIfMissing:a1];

        if (!v28)
        {
          goto LABEL_20;
        }

LABEL_19:
        v22 = __OFADD__(a5++, 1);
        if (v22)
        {
          __break(1u);
          goto LABEL_56;
        }

LABEL_20:
        ++v25;
      }

      while (v24 != v25);
      if (a5 <= 0)
      {

        a5 = v65;
        v20 = v75;
        v18 = v70;
        v17 = v71;
      }

      else
      {
        sub_1000054A4(0, &qword_1006C1420);
        ICSearchIndexableNote<>.entityIdentifier.getter();
        v20 = v75;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a5 = v65;
        v18 = v70;
        v17 = v71;
        v30 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v20 = sub_1001CBAAC(0, v20[2] + 1, 1, v20);
        }

        a1 = v20[2];
        v31 = v20[3];
        v12 = (a1 + 1);
        if (a1 >= v31 >> 1)
        {
          v20 = sub_1001CBAAC(v31 > 1, a1 + 1, 1, v20);
        }

        v20[2] = v12;
        (*(v62 + 32))(v20 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * a1, v67, v61);
      }

LABEL_8:
      if (v18 == v17)
      {
        goto LABEL_42;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_42:
  v38 = v58;
  if ([v58 hasChanges])
  {
    v76 = 0;
    v39 = [v38 save:&v76];
    v40 = v76;
    if (!v39)
    {
      v53 = v76;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v41 = v55;
    sub_10045F4F0(v72, v55, type metadata accessor for BulkModifyNoteTags);
    swift_bridgeObjectRetain_n();
    v42 = v40;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v45 = 134349571;
      v46 = v20[2];

      *(v45 + 4) = v46;

      *(v45 + 12) = 2082;
      if (LOBYTE(v41->isa))
      {
        v47 = 0x65766F6D6572;
      }

      else
      {
        v47 = 6579297;
      }

      if (LOBYTE(v41->isa))
      {
        v48 = 0xE600000000000000;
      }

      else
      {
        v48 = 0xE300000000000000;
      }

      sub_10045F558(v41, type metadata accessor for BulkModifyNoteTags);
      v49 = sub_100009D88(v47, v48, &v76);

      *(v45 + 14) = v49;
      *(v45 + 22) = 2085;
      type metadata accessor for TagEntity();
      v50 = Array.description.getter();
      v52 = sub_100009D88(v50, v51, &v76);

      *(v45 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "Updated %{public}ld notes to %{public}s tags: %{sensitive}s", v45, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_10045F558(v41, type metadata accessor for BulkModifyNoteTags);
    }
  }

  *v56 = v20;
}

id sub_10045ECB8(void *a1, uint64_t a2)
{
  v7[0] = 0;
  v2 = [a1 existingObjectWithID:a2 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v7[1] = &OBJC_PROTOCOL___ICSearchIndexableNote;
    v4 = swift_dynamicCastObjCProtocolUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_10045ED94(void *a1, uint64_t a2)
{
  v7 = 0;
  v2 = [a1 existingObjectWithID:a2 error:&v7];
  v3 = v7;
  if (v2)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10045EE74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t))
{
  v6 = a2;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    v7 = 1;
    v8 = a2;
    v6 = result;
  }

  else
  {
    v7 = -1;
    v8 = result;
  }

  v9 = 0;
  v10 = *(a3 + 16);
LABEL_8:
  while (2)
  {
    v11 = __OFADD__(v9, v7);
    v9 += v7;
    if (v11)
    {
LABEL_18:
      __break(1u);
    }

    else if (v6 != v10)
    {
      do
      {
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (v12 == v10)
        {
          v6 = v10;
          if (v10 == v8)
          {
            return v9;
          }

          goto LABEL_8;
        }

        if (v12 >= v10)
        {
          goto LABEL_17;
        }

        v13 = *(type metadata accessor for NoteEntity(0) - 8);
        result = a4(a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
        ++v6;
      }

      while ((result & 1) == 0);
      v6 = v12;
      if (v12 != v8)
      {
        continue;
      }

      return v9;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_10045EFB8(uint64_t a1)
{
  v4 = *(type metadata accessor for BulkModifyNoteTags() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_10045B58C(a1, v1 + 16, v1 + v5);
}

uint64_t sub_10045F098(uint64_t a1)
{
  v4 = *(type metadata accessor for BulkModifyNoteTags() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A1FC;

  return sub_10045E28C(a1, v6, v7, v8, v1 + v5);
}

void sub_10045F190(void *a1@<X8>)
{
  v3 = *(type metadata accessor for BulkModifyNoteTags() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10045E4DC(*(v1 + 16), *(v1 + 24), (v1 + v4), *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), a1);
}

id sub_10045F238(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    _StringGuts.grow(_:)(87);
    v9._countAndFlagsBits = 0x7469746E45676154;
    v9._object = 0xE900000000000079;
    String.append(_:)(v9);
    v10._object = 0x80000001005603E0;
    v10._countAndFlagsBits = 0xD000000000000053;
    String.append(_:)(v10);
    v11 = [a3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_10045F620(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v16 = *v4;
    *v4 = 0;
    v5 = 0;

    v3 = 0;
  }

  v17 = v3;
  return v5;
}

id sub_10045F450@<X0>(void *a1@<X8>)
{
  result = sub_10045ED94(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10045F480(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C14D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045F4F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10045F558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10045F5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10045F620(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10045F668@<X0>(void *a1@<X8>)
{
  result = sub_10045ECB8(*(v1 + 16), *(v1 + 24));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10045F698()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C8BA0);
  sub_10002597C(v0, qword_1006C8BA0);
  return static Logger.application.getter();
}

uint64_t sub_10045F820()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10015DA04(&qword_1006C8CE8);
  result = __chkstk_darwin(v2);
  v6 = &v19 - v5;
  v7 = OBJC_IVAR___ICAppStoreRatingObserver_isObserving;
  if ((*(v0 + OBJC_IVAR___ICAppStoreRatingObserver_isObserving) & 1) == 0)
  {
    v19 = v4;
    if (qword_1006BC968 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10002597C(v8, qword_1006C8BA0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100009D88(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: startObserving", v11, 0xCu);
      sub_100009F60(v12);
    }

    *(v1 + v7) = 1;
    v16 = [objc_opt_self() defaultCenter];
    Strong = swift_unknownObjectWeakLoadStrong();
    [v16 addObserver:v1 selector:"sceneWillEnterForeground" name:UISceneWillEnterForegroundNotification object:Strong];

    [v16 addObserver:v1 selector:"noteEditorDidEditNote:" name:ICNoteEditorViewControllerDidEditNoteNotification object:0];
    sub_10046003C(&selRef_addGestureRecognizer_);
    sub_10045FB94();
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10046144C();
    v18 = Publisher<>.sink(receiveValue:)();

    (*(v19 + 8))(v6, v2);
    *(v1 + OBJC_IVAR___ICAppStoreRatingObserver_didRequestRatingObservation) = v18;
  }

  return result;
}

void sub_10045FB94()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10046060C();
  v3 = *&v0[OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController];
  *&v0[OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController] = v2;

  v4 = *&v0[OBJC_IVAR___ICAppStoreRatingObserver_managedObjectContext];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = ObjectType;
  v8[4] = sub_1004614B0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10028DCE8;
  v8[3] = &unk_10065E768;
  v6 = _Block_copy(v8);
  v7 = v0;

  [v4 performBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10045FC98(unsigned __int8 *a1, void *a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  result = __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  LODWORD(v6) = *a1;
  *(*a2 + OBJC_IVAR___ICAppStoreRatingController_didRequestRating) = v6;
  if (v6 == 1)
  {
    static Date.now.getter();
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    return sub_10049CBD8(v7);
  }

  return result;
}

void sub_10045FD84(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_10045FDE8();
    }
  }
}

uint64_t sub_10045FDE8()
{
  v1 = v0;
  result = swift_getObjectType();
  v3 = OBJC_IVAR___ICAppStoreRatingObserver_isObserving;
  if (*(v0 + OBJC_IVAR___ICAppStoreRatingObserver_isObserving) == 1)
  {
    if (qword_1006BC968 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10002597C(v4, qword_1006C8BA0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = sub_100009D88(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: stopObserving", v7, 0xCu);
      sub_100009F60(v8);
    }

    *(v1 + v3) = 0;
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v1];

    sub_10046003C(&selRef_removeGestureRecognizer_);
    v13 = *(v1 + OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController);
    *(v1 + OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController) = 0;

    *(v1 + OBJC_IVAR___ICAppStoreRatingObserver_didRequestRatingObservation) = 0;
  }

  return result;
}

void sub_10046003C(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong keyWindow];

    if (v4)
    {
      v5 = sub_100460344();
      [v4 *a1];

      v6 = sub_100460424();
      [v4 *a1];
    }
  }
}

id sub_10046015C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*(v0 + OBJC_IVAR___ICAppStoreRatingObserver_isObserving) == 1)
  {
    if (qword_1006BC968 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10002597C(v3, qword_1006C8BA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "AppStoreRatingObserver was deallocated without stopping observation", v6, 2u);
    }
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

id sub_100460344()
{
  v1 = OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didRecognizeGesture"];
    [v4 setRequiresExclusiveTouchType:0];
    [v4 setCancelsTouchesInView:0];
    [v4 setDelaysTouchesEnded:0];
    [v4 setDelegate:v0];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100460424()
{
  v1 = OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___panGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___panGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___panGestureRecognizer);
  }

  else
  {
    v3 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v0 action:"didRecognizeGesture"];
    [v3 setRequiresExclusiveTouchType:0];
    [v3 setCancelsTouchesInView:0];
    [v3 setDelegate:v0];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v5 = v2;
  return v3;
}

id sub_10046060C()
{
  v1 = objc_opt_self();
  v2 = [v1 newFetchRequestForNotes];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 predicateForNotesInAccountWithIdentifier:v3];

  v5 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver_managedObjectContext);
  v6 = [v1 predicateForVisibleNotesInContext:v5];
  sub_10015DA04(&unk_1006BD390);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100531E20;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  sub_1000054A4(0, &qword_1006C2CA0);
  v8 = v4;
  v9 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v2 setPredicate:v11];
  v12 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v2 managedObjectContext:v5 sectionNameKeyPath:0 cacheName:0];
  [v12 setDelegate:v0];

  return v12;
}

void sub_1004607D0(uint64_t a1)
{
  v2 = OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController;
  v3 = *(a1 + OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController);
  if (v3)
  {
    v19 = 0;
    if ([v3 performFetch:&v19])
    {
      v4 = *(a1 + v2);
      v5 = v19;
      if (v4)
      {
        v6 = [v4 fetchedObjects];
        if (v6)
        {
          v7 = v6;
          sub_1000054A4(0, &qword_1006C1420);
          v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v8 >> 62)
          {
            v9 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_10049C304(v9);
        }
      }
    }

    else
    {
      v10 = v19;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006BC968 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10002597C(v11, qword_1006C8BA0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19 = v15;
        *v14 = 136315138;
        v16 = _typeName(_:qualified:)();
        v18 = sub_100009D88(v16, v17, &v19);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s: setUpNoteCountIndexer", v14, 0xCu);
        sub_100009F60(v15);
      }
    }
  }
}

void sub_100460A44()
{
  Notification.object.getter();
  if (!v9)
  {
    sub_10027CAAC(v8);
    return;
  }

  sub_1000054A4(0, &qword_1006C6420);
  if (swift_dynamicCast())
  {
    v0 = [v7 view];
    if (!v0)
    {
      __break(1u);
      return;
    }

    v1 = v0;
    v2 = [v0 window];

    v3 = [v2 windowScene];
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = Strong;
    if (v3)
    {
      if (!Strong)
      {

        goto LABEL_13;
      }

      sub_1000054A4(0, &qword_1006C6848);
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (!Strong)
      {
LABEL_11:
        sub_10049C48C();
        goto LABEL_13;
      }
    }

LABEL_13:
  }
}

id sub_100460F60(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v5[OBJC_IVAR___ICAppStoreRatingObserver_isObserving] = 0;
  *&v5[OBJC_IVAR___ICAppStoreRatingObserver_didRequestRatingObservation] = 0;
  *&v5[OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR___ICAppStoreRatingObserver____lazy_storage___panGestureRecognizer] = 0;
  *&v5[OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController] = 0;
  v11 = &v5[OBJC_IVAR___ICAppStoreRatingObserver_accountIdentifier];
  *v11 = a1;
  v11[1] = a2;
  *&v5[OBJC_IVAR___ICAppStoreRatingObserver_managedObjectContext] = a3;
  v12 = objc_opt_self();
  v13 = a3;
  v38 = a4;
  v39 = a5;
  v14 = [v12 sharedConfiguration];
  if (qword_1006BC908 != -1)
  {
    swift_once();
  }

  v15 = qword_1006EF9E0;
  v16 = type metadata accessor for AppStoreRatingController();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  v17[OBJC_IVAR___ICAppStoreRatingController_didRequestRating] = 0;
  *&v17[OBJC_IVAR___ICAppStoreRatingController_totalNoteCount] = 0;
  v18 = OBJC_IVAR___ICAppStoreRatingController_lastEditDate;
  v19 = type metadata accessor for Date();
  v20 = *(*(v19 - 8) + 56);
  v20(&v17[v18], 1, 1, v19);
  v20(&v17[OBJC_IVAR___ICAppStoreRatingController_lastInteractionDate], 1, 1, v19);
  *&v17[OBJC_IVAR___ICAppStoreRatingController_maximumPersistedLaunchDaysCount] = 100;
  *&v17[OBJC_IVAR___ICAppStoreRatingController____lazy_storage___interactionSelectorDelayer] = 0;
  *&v17[OBJC_IVAR___ICAppStoreRatingController_cloudConfiguration] = v14;
  *&v17[OBJC_IVAR___ICAppStoreRatingController_cohort] = v15;
  *&v17[OBJC_IVAR___ICAppStoreRatingController_userDefaults] = v38;
  swift_unknownObjectWeakAssign();
  v21 = v16;
  v43 = v16;
  swift_retain_n();
  v22 = v38;
  v23 = v14;
  sub_10015DA04(&qword_1006C8CF8);
  String.init<A>(describing:)();
  v24 = objc_allocWithZone(ICNAEventReporter);
  v25 = v39;
  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithSubTrackerName:v26 windowScene:v25];

  *&v17[OBJC_IVAR___ICAppStoreRatingController_eventReporter] = v27;
  v28 = [v23 appStoreRatingCohortPercentage];
  *&v17[OBJC_IVAR___ICAppStoreRatingController_cohortRequirement] = v28;
  v29 = [v23 appStoreRatingLaunchCount];
  v30 = [v23 appStoreRatingLaunchDayPeriod];
  v31 = [v23 appStoreRatingOldestLaunchDayPeriod];
  v32 = &v17[OBJC_IVAR___ICAppStoreRatingController_launchRequirement];
  *v32 = v29;
  v32[1] = v30;
  v32[2] = v31;
  v33 = [v23 appStoreRatingNoteCount];
  *&v17[OBJC_IVAR___ICAppStoreRatingController_noteCountRequirement] = v33;
  [v23 appStoreRatingIdleTimeInterval];
  *&v17[OBJC_IVAR___ICAppStoreRatingController_noteEditRequirement] = v34;
  v35 = [v23 appStoreRatingRequestDayPeriod];
  *&v17[OBJC_IVAR___ICAppStoreRatingController_requestRequirement] = v35;
  v42.receiver = v17;
  v42.super_class = v21;
  v36 = objc_msgSendSuper2(&v42, "init");

  *&v5[OBJC_IVAR___ICAppStoreRatingObserver_appStoreRatingController] = v36;
  v41.receiver = v5;
  v41.super_class = ObjectType;
  return objc_msgSendSuper2(&v41, "init");
}

void sub_100461384()
{
  v1 = *(v0 + OBJC_IVAR___ICAppStoreRatingObserver_noteCountFetchedResultsController);
  if (v1)
  {
    v2 = [v1 fetchedObjects];
    if (v2)
    {
      v3 = v2;
      sub_1000054A4(0, &qword_1006C1420);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v4 >> 62)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_10049C304(v5);
    }
  }
}

unint64_t sub_10046144C()
{
  result = qword_1006C8CF0;
  if (!qword_1006C8CF0)
  {
    sub_10017992C(&qword_1006C8CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8CF0);
  }

  return result;
}

id sub_1004614B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountEntity();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v14 = sub_100463F84();
  v15 = (*(v14 + 24))(&type metadata for OpenAccountIntent, v14);
  IntentParameter.wrappedValue.getter();
  (*(v7 + 16))(v9, &v13[*(v11 + 28)], v6);
  sub_100463FD8(v13, type metadata accessor for AccountEntity);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = [v15 managedObjectIDForURIRepresentation:v18];

  if (!v19)
  {
    __chkstk_darwin(v20);
    *(&v23 - 2) = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_10046AF44(v21, 230, sub_100464038);

    swift_willThrow();
  }

  return v19;
}

id sub_100461724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttachmentEntity();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v14 = sub_100463ED0();
  v15 = (*(v14 + 24))(&type metadata for OpenAttachmentIntent, v14);
  IntentParameter.wrappedValue.getter();
  (*(v7 + 16))(v9, &v13[*(v11 + 28)], v6);
  sub_100463FD8(v13, type metadata accessor for AttachmentEntity);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = [v15 managedObjectIDForURIRepresentation:v18];

  if (!v19)
  {
    __chkstk_darwin(v20);
    *(&v23 - 2) = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_10046AF44(v21, 230, sub_100463F24);

    swift_willThrow();
  }

  return v19;
}

id sub_100461990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FolderEntity();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v14 = sub_100463E1C();
  v15 = (*(v14 + 24))(&type metadata for OpenFolderIntent, v14);
  IntentParameter.wrappedValue.getter();
  (*(v7 + 16))(v9, &v13[*(v11 + 28)], v6);
  sub_100463FD8(v13, type metadata accessor for FolderEntity);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = [v15 managedObjectIDForURIRepresentation:v18];

  if (!v19)
  {
    __chkstk_darwin(v20);
    *(&v23 - 2) = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_10046AF44(v21, 230, sub_100463E70);

    swift_willThrow();
  }

  return v19;
}

id sub_100461BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NoteEntity(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v14 = sub_100463D68();
  v15 = (*(v14 + 24))(&type metadata for OpenNoteIntent, v14);
  IntentParameter.wrappedValue.getter();
  (*(v7 + 16))(v9, &v13[*(v11 + 28)], v6);
  sub_100463FD8(v13, type metadata accessor for NoteEntity);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = [v15 managedObjectIDForURIRepresentation:v18];

  if (!v19)
  {
    __chkstk_darwin(v20);
    *(&v23 - 2) = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_10046AF44(v21, 230, sub_100463DBC);

    swift_willThrow();
  }

  return v19;
}

id sub_100461E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TableEntity();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v14 = sub_100463CB4();
  v15 = (*(v14 + 24))(&type metadata for OpenTableIntent, v14);
  IntentParameter.wrappedValue.getter();
  (*(v7 + 16))(v9, &v13[*(v11 + 28)], v6);
  sub_100463FD8(v13, type metadata accessor for TableEntity);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v7 + 8))(v9, v6);
  v19 = [v15 managedObjectIDForURIRepresentation:v18];

  if (!v19)
  {
    __chkstk_darwin(v20);
    *(&v23 - 2) = v24;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    sub_10046AF44(v21, 230, sub_100463D08);

    swift_willThrow();
  }

  return v19;
}

id sub_1004620D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TagEntity();
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a1;
  v21[1] = a2;
  v12 = sub_100463C58();
  v13 = (*(v12 + 24))(&type metadata for OpenTagIntent, v12);
  IntentParameter.wrappedValue.getter();
  (*(v5 + 16))(v7, &v11[*(v9 + 28)], v4);
  sub_100463FD8(v11, type metadata accessor for TagEntity);
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  v17 = [v13 managedObjectIDForURIRepresentation:v16];

  if (!v17)
  {
    __chkstk_darwin(v18);
    v21[-2] = v21;
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    sub_10046AF44(v19, 230, sub_100463CAC);

    swift_willThrow();
  }

  return v17;
}

id sub_100462338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004620D4(a1, a2);
  if (!v2)
  {
    v5 = v4;
    AppDependency.wrappedValue.getter();
    v6 = [v12 managedObjectContextForObjectID:v5];

    sub_10015DA04(&unk_1006BD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100534670;
    *(inited + 32) = v5;
    v8 = v5;
    sub_100456174(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v9 = objc_allocWithZone(ICTagSelection);
    sub_10025239C();
    sub_100464098(&qword_1006C63A0, sub_10025239C);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v3 = [v9 initWithManagedObjectContext:v6 includedObjectIDs:isa];
  }

  return v3;
}

uint64_t OpenTagIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for TagEntity();
  __chkstk_darwin(v2 - 8);
  sub_10018F484(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100463FD8(a1, type metadata accessor for TagEntity);
}

uint64_t sub_100462568()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static OpenTagIntent.title);
  sub_10002597C(v6, static OpenTagIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenTagIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC970 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenTagIntent.title);
}

uint64_t static OpenTagIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC970 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenTagIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenTagIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static OpenTagIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C8D00);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C8D08);
  __chkstk_darwin(v1);
  sub_1000214CC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C8D10);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 1734439968;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenTagIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_100462DA4(uint64_t a1)
{
  v2 = type metadata accessor for TagEntity();
  __chkstk_darwin(v2 - 8);
  sub_10018F484(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_100463FD8(a1, type metadata accessor for TagEntity);
}

uint64_t (*sub_100462E48(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_100462EBC()
{
  v0 = sub_10015DA04(&qword_1006C8D00);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C8D08);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x656874206E65704FLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C8D10);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 1734439968;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10046305C@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes13OpenTagIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100463084(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a2(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - v9;
  v11 = a3(0);
  __chkstk_darwin(v11 - 8);
  v13 = v19 - v12;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v14._object = 0x8000000100574410;
  v14._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v14);
  v15._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x6174206874697720;
  v16._object = 0xED00002074656772;
  String.append(_:)(v16);
  IntentParameter.wrappedValue.getter();
  (*(v8 + 16))(v10, v13, v7);
  sub_100463FD8(v13, a5);
  _print_unlocked<A, B>(_:_:)();
  (*(v8 + 8))(v10, v7);
  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return v19[0];
}

uint64_t sub_10046328C()
{
  v0 = type metadata accessor for TagID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TagEntity();
  __chkstk_darwin(v4 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v7._object = 0x8000000100574410;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v8._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x6174206874697720;
  v9._object = 0xED00002074656772;
  String.append(_:)(v9);
  IntentParameter.wrappedValue.getter();
  (*(v1 + 16))(v3, v6, v0);
  sub_100463FD8(v6, type metadata accessor for TagEntity);
  _print_unlocked<A, B>(_:_:)();
  (*(v1 + 8))(v3, v0);
  v10._countAndFlagsBits = 46;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v12[0];
}

uint64_t _s11MobileNotes13OpenTagIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v29 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = v26 - v5;
  v6 = sub_10015DA04(&qword_1006C8B80);
  __chkstk_darwin(v6 - 8);
  v27 = v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26[0] = v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26[1] = sub_10015DA04(&qword_1006BCE90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for TagEntity();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100464098(&qword_1006BCB08, type metadata accessor for TagEntity);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v33 = 0xD000000000000021;
  v34 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

unint64_t sub_100463AF0(uint64_t a1)
{
  result = sub_100463B18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100463B18()
{
  result = qword_1006C8D48;
  if (!qword_1006C8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D48);
  }

  return result;
}

unint64_t sub_100463B70()
{
  result = qword_1006C8D50;
  if (!qword_1006C8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D50);
  }

  return result;
}

unint64_t sub_100463C58()
{
  result = qword_1006C8D78;
  if (!qword_1006C8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D78);
  }

  return result;
}

unint64_t sub_100463CB4()
{
  result = qword_1006C8D80;
  if (!qword_1006C8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D80);
  }

  return result;
}

unint64_t sub_100463D68()
{
  result = qword_1006C8D88;
  if (!qword_1006C8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D88);
  }

  return result;
}

unint64_t sub_100463E1C()
{
  result = qword_1006C8D90;
  if (!qword_1006C8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D90);
  }

  return result;
}

unint64_t sub_100463ED0()
{
  result = qword_1006C8D98;
  if (!qword_1006C8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8D98);
  }

  return result;
}

unint64_t sub_100463F84()
{
  result = qword_1006C8DA0;
  if (!qword_1006C8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C8DA0);
  }

  return result;
}

uint64_t sub_100463FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100464098(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1004640E0(unint64_t a1)
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
  v5 = sub_1001CDCFC(v3, 0);
  sub_1002EB4C0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1004641AC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10046559C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ICCloudSyncingObject.MoveAction.__allocating_init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v11[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.init(type:object:fromParentObject:toParentObject:isCopy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_type] = a1;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_object] = a2;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_fromParentObject] = a3;
  *&v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_toParentObject] = a4;
  v5[OBJC_IVAR___ICCloudSyncingObjectMoveAction_isCopy] = a5;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "init");
}

id ICCloudSyncingObject.MoveAction.__allocating_init(object:fromParentObject:toParentObject:isCopy:)(void *a1, void *a2, void *a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  if (!a2)
  {

    a1 = a3;
    goto LABEL_7;
  }

  if (!a3)
  {

    goto LABEL_7;
  }

  v10 = a3;
  v11 = a2;
  v12 = sub_1004653E0(v11, v10);
  if (v13)
  {

LABEL_7:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v15 = [v9 initWithType:v12 object:a1 fromParentObject:v11 toParentObject:v10 isCopy:a4 & 1];

  return v15;
}