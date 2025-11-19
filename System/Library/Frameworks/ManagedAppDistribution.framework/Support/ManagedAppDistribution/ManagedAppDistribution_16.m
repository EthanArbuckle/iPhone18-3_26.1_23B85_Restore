uint64_t sub_1002A4E04(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002A556C;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002A4F30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A4F30()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002A5A18;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FED0, &qword_10077FEB8);
  sub_100213FA0(&qword_10077FED8, &qword_10077FEB8);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002A556C()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FED0, &qword_10077FEB8);
  sub_100213FA0(&qword_10077FED8, &qword_10077FEB8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A5A18()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002A5D44;
  }

  else
  {
    v2 = sub_1002A5B2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A5B2C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FED0, &qword_10077FEB8);
  sub_100213FA0(&qword_10077FED8, &qword_10077FEB8);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A5D44()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FED0, &qword_10077FEB8);
  sub_100213FA0(&qword_10077FED8, &qword_10077FEB8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A61F0(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002A6944;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002A631C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A631C()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002A6DDC;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FEC0, &qword_10077FEB0);
  sub_100213FA0(&qword_10077FEC8, &qword_10077FEB0);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002A6944()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FEC0, &qword_10077FEB0);
  sub_100213FA0(&qword_10077FEC8, &qword_10077FEB0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002A6DDC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002A7108;
  }

  else
  {
    v2 = sub_1002A6EF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A6EF0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FEC0, &qword_10077FEB0);
  sub_100213FA0(&qword_10077FEC8, &qword_10077FEB0);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A7108()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FEC0, &qword_10077FEB0);
  sub_100213FA0(&qword_10077FEC8, &qword_10077FEB0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002A75A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FE60);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FE68);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002A7858, 0, 0);
}

uint64_t sub_1002A7858()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002A98DC;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FE70, &qword_10077FE60);
        sub_100213FA0(&qword_10077FE78, &qword_10077FE60);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FE80, &qword_10077FE68);
        sub_100213FA0(&qword_10077FE88, &qword_10077FE68);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002A84F0;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002A84F0(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002A8C58;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002A861C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A861C()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002A9104;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FE80, &qword_10077FE68);
  sub_100213FA0(&qword_10077FE88, &qword_10077FE68);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002A8C58()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FE80, &qword_10077FE68);
  sub_100213FA0(&qword_10077FE88, &qword_10077FE68);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A9104()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002A9430;
  }

  else
  {
    v2 = sub_1002A9218;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002A9218()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FE80, &qword_10077FE68);
  sub_100213FA0(&qword_10077FE88, &qword_10077FE68);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002A9430()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FE80, &qword_10077FE68);
  sub_100213FA0(&qword_10077FE88, &qword_10077FE68);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002A98DC(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002AA030;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002A9A08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002A9A08()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002AA4C8;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FE70, &qword_10077FE60);
  sub_100213FA0(&qword_10077FE78, &qword_10077FE60);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002AA030()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FE70, &qword_10077FE60);
  sub_100213FA0(&qword_10077FE78, &qword_10077FE60);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002AA4C8()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002AA7F4;
  }

  else
  {
    v2 = sub_1002AA5DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AA5DC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FE70, &qword_10077FE60);
  sub_100213FA0(&qword_10077FE78, &qword_10077FE60);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002AA7F4()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FE70, &qword_10077FE60);
  sub_100213FA0(&qword_10077FE78, &qword_10077FE60);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002AAC8C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FD40);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FD48);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002AAF44, 0, 0);
}

uint64_t sub_1002AAF44()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002ACFC8;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FD50, &qword_10077FD40);
        sub_100213FA0(&qword_10077FD58, &qword_10077FD40);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FD60, &qword_10077FD48);
        sub_100213FA0(&qword_10077FD68, &qword_10077FD48);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002ABBDC;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002ABBDC(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002AC344;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002ABD08;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002ABD08()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002AC7F0;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FD60, &qword_10077FD48);
  sub_100213FA0(&qword_10077FD68, &qword_10077FD48);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002AC344()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD60, &qword_10077FD48);
  sub_100213FA0(&qword_10077FD68, &qword_10077FD48);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002AC7F0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002ACB1C;
  }

  else
  {
    v2 = sub_1002AC904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AC904()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FD60, &qword_10077FD48);
  sub_100213FA0(&qword_10077FD68, &qword_10077FD48);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002ACB1C()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD60, &qword_10077FD48);
  sub_100213FA0(&qword_10077FD68, &qword_10077FD48);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002ACFC8(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002AD71C;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002AD0F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002AD0F4()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002ADBB4;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FD50, &qword_10077FD40);
  sub_100213FA0(&qword_10077FD58, &qword_10077FD40);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002AD71C()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD50, &qword_10077FD40);
  sub_100213FA0(&qword_10077FD58, &qword_10077FD40);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002ADBB4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002ADEE0;
  }

  else
  {
    v2 = sub_1002ADCC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ADCC8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FD50, &qword_10077FD40);
  sub_100213FA0(&qword_10077FD58, &qword_10077FD40);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002ADEE0()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD50, &qword_10077FD40);
  sub_100213FA0(&qword_10077FD58, &qword_10077FD40);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002AE378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FD00);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FD08);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002AE630, 0, 0);
}

uint64_t sub_1002AE630()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002B06B4;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FD10, &qword_10077FD00);
        sub_100213FA0(&qword_10077FD18, &qword_10077FD00);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FD20, &qword_10077FD08);
        sub_100213FA0(&qword_10077FD28, &qword_10077FD08);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002AF2C8;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002AF2C8(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002AFA30;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002AF3F4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002AF3F4()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002AFEDC;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FD20, &qword_10077FD08);
  sub_100213FA0(&qword_10077FD28, &qword_10077FD08);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002AFA30()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD20, &qword_10077FD08);
  sub_100213FA0(&qword_10077FD28, &qword_10077FD08);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002AFEDC()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002B0208;
  }

  else
  {
    v2 = sub_1002AFFF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AFFF0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FD20, &qword_10077FD08);
  sub_100213FA0(&qword_10077FD28, &qword_10077FD08);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B0208()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD20, &qword_10077FD08);
  sub_100213FA0(&qword_10077FD28, &qword_10077FD08);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002B06B4(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002B0E08;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002B07E0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B07E0()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002B12A0;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FD10, &qword_10077FD00);
  sub_100213FA0(&qword_10077FD18, &qword_10077FD00);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002B0E08()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD10, &qword_10077FD00);
  sub_100213FA0(&qword_10077FD18, &qword_10077FD00);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B12A0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002B15CC;
  }

  else
  {
    v2 = sub_1002B13B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B13B4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FD10, &qword_10077FD00);
  sub_100213FA0(&qword_10077FD18, &qword_10077FD00);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B15CC()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FD10, &qword_10077FD00);
  sub_100213FA0(&qword_10077FD18, &qword_10077FD00);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B1A64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FCA0);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FCA8);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002B1D1C, 0, 0);
}

uint64_t sub_1002B1D1C()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002B3DA0;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FCB0, &qword_10077FCA0);
        sub_100213FA0(&qword_10077FCB8, &qword_10077FCA0);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FCC0, &qword_10077FCA8);
        sub_100213FA0(&qword_10077FCC8, &qword_10077FCA8);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002B29B4;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002B29B4(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002B311C;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002B2AE0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B2AE0()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002B35C8;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FCC0, &qword_10077FCA8);
  sub_100213FA0(&qword_10077FCC8, &qword_10077FCA8);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002B311C()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FCC0, &qword_10077FCA8);
  sub_100213FA0(&qword_10077FCC8, &qword_10077FCA8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002B35C8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002B38F4;
  }

  else
  {
    v2 = sub_1002B36DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B36DC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FCC0, &qword_10077FCA8);
  sub_100213FA0(&qword_10077FCC8, &qword_10077FCA8);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B38F4()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FCC0, &qword_10077FCA8);
  sub_100213FA0(&qword_10077FCC8, &qword_10077FCA8);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002B3DA0(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002B44F4;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002B3ECC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B3ECC()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002B498C;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FCB0, &qword_10077FCA0);
  sub_100213FA0(&qword_10077FCB8, &qword_10077FCA0);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002B44F4()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FCB0, &qword_10077FCA0);
  sub_100213FA0(&qword_10077FCB8, &qword_10077FCA0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B498C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002B4CB8;
  }

  else
  {
    v2 = sub_1002B4AA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B4AA0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FCB0, &qword_10077FCA0);
  sub_100213FA0(&qword_10077FCB8, &qword_10077FCA0);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B4CB8()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FCB0, &qword_10077FCA0);
  sub_100213FA0(&qword_10077FCB8, &qword_10077FCA0);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B5150(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FC60);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FC68);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002B5408, 0, 0);
}

uint64_t sub_1002B5408()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002B748C;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FC70, &qword_10077FC60);
        sub_100213FA0(&qword_10077FC78, &qword_10077FC60);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FC80, &qword_10077FC68);
        sub_100213FA0(&qword_10077FC88, &qword_10077FC68);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002B60A0;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002B60A0(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002B6808;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002B61CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B61CC()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002B6CB4;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FC80, &qword_10077FC68);
  sub_100213FA0(&qword_10077FC88, &qword_10077FC68);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002B6808()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FC80, &qword_10077FC68);
  sub_100213FA0(&qword_10077FC88, &qword_10077FC68);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002B6CB4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002B6FE0;
  }

  else
  {
    v2 = sub_1002B6DC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B6DC8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FC80, &qword_10077FC68);
  sub_100213FA0(&qword_10077FC88, &qword_10077FC68);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B6FE0()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FC80, &qword_10077FC68);
  sub_100213FA0(&qword_10077FC88, &qword_10077FC68);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002B748C(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002B7BE0;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002B75B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B75B8()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002B8078;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FC70, &qword_10077FC60);
  sub_100213FA0(&qword_10077FC78, &qword_10077FC60);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002B7BE0()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FC70, &qword_10077FC60);
  sub_100213FA0(&qword_10077FC78, &qword_10077FC60);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B8078()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002B83A4;
  }

  else
  {
    v2 = sub_1002B818C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B818C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FC70, &qword_10077FC60);
  sub_100213FA0(&qword_10077FC78, &qword_10077FC60);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B83A4()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FC70, &qword_10077FC60);
  sub_100213FA0(&qword_10077FC78, &qword_10077FC60);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002B883C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FBD8);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FBE0);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002B8AF4, 0, 0);
}

uint64_t sub_1002B8AF4()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002BAB78;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FBE8, &qword_10077FBD8);
        sub_100213FA0(&qword_10077FBF0, &qword_10077FBD8);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FBF8, &qword_10077FBE0);
        sub_100213FA0(&qword_10077FC00, &qword_10077FBE0);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002B978C;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002B978C(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002B9EF4;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002B98B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002B98B8()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002BA3A0;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FBF8, &qword_10077FBE0);
  sub_100213FA0(&qword_10077FC00, &qword_10077FBE0);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002B9EF4()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FBF8, &qword_10077FBE0);
  sub_100213FA0(&qword_10077FC00, &qword_10077FBE0);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002BA3A0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002BA6CC;
  }

  else
  {
    v2 = sub_1002BA4B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BA4B4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FBF8, &qword_10077FBE0);
  sub_100213FA0(&qword_10077FC00, &qword_10077FBE0);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002BA6CC()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FBF8, &qword_10077FBE0);
  sub_100213FA0(&qword_10077FC00, &qword_10077FBE0);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002BAB78(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002BB2CC;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002BACA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002BACA4()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002BB764;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FBE8, &qword_10077FBD8);
  sub_100213FA0(&qword_10077FBF0, &qword_10077FBD8);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002BB2CC()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FBE8, &qword_10077FBD8);
  sub_100213FA0(&qword_10077FBF0, &qword_10077FBD8);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002BB764()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002BBA90;
  }

  else
  {
    v2 = sub_1002BB878;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BB878()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FBE8, &qword_10077FBD8);
  sub_100213FA0(&qword_10077FBF0, &qword_10077FBD8);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002BBA90()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FBE8, &qword_10077FBD8);
  sub_100213FA0(&qword_10077FBF0, &qword_10077FBD8);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002BBF28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FB50);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FB58);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002BC1E0, 0, 0);
}

uint64_t sub_1002BC1E0()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002BE264;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FB60, &qword_10077FB50);
        sub_100213FA0(&qword_10077FB68, &qword_10077FB50);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FB70, &qword_10077FB58);
        sub_100213FA0(&qword_10077FB78, &qword_10077FB58);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002BCE78;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002BCE78(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002BD5E0;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002BCFA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002BCFA4()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002BDA8C;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FB70, &qword_10077FB58);
  sub_100213FA0(&qword_10077FB78, &qword_10077FB58);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002BD5E0()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB70, &qword_10077FB58);
  sub_100213FA0(&qword_10077FB78, &qword_10077FB58);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002BDA8C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002BDDB8;
  }

  else
  {
    v2 = sub_1002BDBA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BDBA0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FB70, &qword_10077FB58);
  sub_100213FA0(&qword_10077FB78, &qword_10077FB58);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002BDDB8()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB70, &qword_10077FB58);
  sub_100213FA0(&qword_10077FB78, &qword_10077FB58);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002BE264(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002BE9B8;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002BE390;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002BE390()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002BEE50;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FB60, &qword_10077FB50);
  sub_100213FA0(&qword_10077FB68, &qword_10077FB50);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002BE9B8()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB60, &qword_10077FB50);
  sub_100213FA0(&qword_10077FB68, &qword_10077FB50);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002BEE50()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002BF17C;
  }

  else
  {
    v2 = sub_1002BEF64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BEF64()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FB60, &qword_10077FB50);
  sub_100213FA0(&qword_10077FB68, &qword_10077FB50);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002BF17C()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB60, &qword_10077FB50);
  sub_100213FA0(&qword_10077FB68, &qword_10077FB50);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002BF614(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FB00);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FB08);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002BF8CC, 0, 0);
}

uint64_t sub_1002BF8CC()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002C1950;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FB10, &qword_10077FB00);
        sub_100213FA0(&qword_10077FB18, &qword_10077FB00);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FB20, &qword_10077FB08);
        sub_100213FA0(&qword_10077FB28, &qword_10077FB08);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002C0564;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}

uint64_t sub_1002C0564(char a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_1002C0CCC;
  }

  else
  {
    *(v4 + 419) = a1 & 1;
    v5 = sub_1002C0690;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C0690()
{
  v46 = v0;
  if (*(v0 + 419) == 1)
  {
    v1 = *(v0 + 380);
    v2 = *(v0 + 372);
    v3 = *(v0 + 364);
    v4 = *(v0 + 356);
    v5 = *(v0 + 48);
    v44 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 376);
    v7 = *(v0 + 368);
    v8 = *(v0 + 360);
    v9 = *(v0 + 352);
    v10 = swift_task_alloc();
    *(v0 + 304) = v10;
    *v10 = v0;
    v10[1] = sub_1002C1178;
    v11 = *(v0 + 272);

    return v44(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  if (v15)
  {
    v43 = *(v0 + 176);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45 = v21;
    *v19 = 136315394;
    v22 = StaticString.description.getter();
    v24 = sub_1002346CC(v22, v23, &v45);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v25;
    *v20 = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Error in %s: %{public}@", v19, 0x16u);
    sub_1000032A8(v20, &qword_10077F920);

    sub_10000710C(v21);

    (*(v18 + 8))(v16, v43);
  }

  else
  {

    (*(v18 + 8))(v16, v17);
  }

  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v31 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v29);
  (*(v30 + 16))(v26, v29, v31);
  (*(v28 + 104))(v26, enum case for MarketplaceKitServiceResult.failure<A>(_:), v27);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
LABEL_13:

    goto LABEL_14;
  }

  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(v0 + 152);
  if (!*(v0 + 48))
  {
    (*(v33 + 8))(*(v0 + 168), *(v0 + 152));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v35);

  (*(v33 + 8))(v32, v34);
LABEL_14:
  sub_100213FA0(&qword_10077FB20, &qword_10077FB08);
  sub_100213FA0(&qword_10077FB28, &qword_10077FB08);
  v36 = encodeXPCValues<A>(_:)();
  v38 = v37;
  v39 = *(v0 + 280);
  v40 = *(v0 + 256);
  v41 = *(v0 + 264);
  (*(v0 + 104))(v36, v37);
  sub_100007158(v36, v38);
  (*(v41 + 8))(v39, v40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1002C0CCC()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB20, &qword_10077FB08);
  sub_100213FA0(&qword_10077FB28, &qword_10077FB08);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C1178()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_1002C14A4;
  }

  else
  {
    v2 = sub_1002C128C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C128C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for MarketplaceKitServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 312);
  sub_100213FA0(&qword_10077FB20, &qword_10077FB08);
  sub_100213FA0(&qword_10077FB28, &qword_10077FB08);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C14A4()
{
  v34 = v0;
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  if (v3)
  {
    v32 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v7 = 136315394;
    v10 = StaticString.description.getter();
    v12 = sub_1002346CC(v10, v11, &v33);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in %s: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);

    (*(v6 + 8))(v4, v32);
  }

  else
  {

    (*(v6 + 8))(v4, v5);
  }

  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 264);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v19 = *(v0 + 152);
  swift_getErrorValue();
  sub_1004B53F8(*(v0 + 24), *(v0 + 32), v17);
  (*(v18 + 16))(v14, v17, v19);
  (*(v16 + 104))(v14, enum case for MarketplaceKitServiceResult.failure<A>(_:), v15);
  if (os_variant_has_internal_content())
  {
    v21 = *(v0 + 160);
    v20 = *(v0 + 168);
    v22 = *(v0 + 152);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v23);

      (*(v21 + 8))(v20, v22);
      goto LABEL_10;
    }

    (*(v21 + 8))(*(v0 + 168), *(v0 + 152));
  }

  else
  {
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB20, &qword_10077FB08);
  sub_100213FA0(&qword_10077FB28, &qword_10077FB08);
  v24 = encodeXPCValues<A>(_:)();
  v26 = v25;
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 264);
  (*(v0 + 104))(v24, v25);
  sub_100007158(v24, v26);
  (*(v29 + 8))(v27, v28);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002C1950(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002C20A4;
  }

  else
  {
    *(v4 + 420) = a1 & 1;
    v5 = sub_1002C1A7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002C1A7C()
{
  v47 = v0;
  if (*(v0 + 420) == 1)
  {
    v1 = *(v0 + 412);
    v2 = *(v0 + 404);
    v3 = *(v0 + 396);
    v4 = *(v0 + 388);
    v5 = *(v0 + 48);
    v45 = (*(v0 + 72) + **(v0 + 72));
    v6 = *(v0 + 408);
    v7 = *(v0 + 400);
    v8 = *(v0 + 392);
    v9 = *(v0 + 384);
    v10 = swift_task_alloc();
    *(v0 + 336) = v10;
    *v10 = v0;
    v10[1] = sub_1002C253C;
    v11 = *(v0 + 240);

    return v45(v11, v5, v1 | (v6 << 32), v2 | (v7 << 32), v3 | (v8 << 32), v4 | (v9 << 32));
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v13 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  static Logger.xpc.getter();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  if (v16)
  {
    v44 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v46 = v22;
    *v20 = 136315394;
    v23 = StaticString.description.getter();
    v25 = sub_1002346CC(v23, v24, &v46);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v26;
    *v21 = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "Error in %s: %{public}@", v20, 0x16u);
    sub_1000032A8(v21, &qword_10077F920);

    sub_10000710C(v22);

    (*(v19 + 8))(v17, v44);
  }

  else
  {

    (*(v19 + 8))(v17, v18);
  }

  v27 = *(v0 + 248);
  v28 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v32 = *(v0 + 128);
  sub_100296AD4(v13, v30);
  (*(v31 + 16))(v27, v30, v32);
  (*(v29 + 104))(v27, enum case for ServiceResult.failure<A>(_:), v28);
  if (!os_variant_has_internal_content())
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
LABEL_13:

    goto LABEL_14;
  }

  v34 = *(v0 + 136);
  v33 = *(v0 + 144);
  v35 = *(v0 + 128);
  if (!*(v0 + 48))
  {
    (*(v34 + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_13;
  }

  swift_getObjectType();
  sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  XPCClientProtocol.logMessage(_:)(v36);

  (*(v34 + 8))(v33, v35);
LABEL_14:
  sub_100213FA0(&qword_10077FB10, &qword_10077FB00);
  sub_100213FA0(&qword_10077FB18, &qword_10077FB00);
  v37 = encodeXPCValues<A>(_:)();
  v39 = v38;
  v40 = *(v0 + 248);
  v41 = *(v0 + 224);
  v42 = *(v0 + 232);
  (*(v0 + 104))(v37, v38);
  sub_100007158(v37, v39);
  (*(v42 + 8))(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1002C20A4()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 328);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB10, &qword_10077FB00);
  sub_100213FA0(&qword_10077FB18, &qword_10077FB00);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C253C()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1002C2868;
  }

  else
  {
    v2 = sub_1002C2650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002C2650()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  swift_unknownObjectRelease();
  (*(v4 + 104))(v1, enum case for ServiceResult.success<A>(_:), v3);
  (*(v4 + 32))(v2, v1, v3);
  v5 = *(v0 + 344);
  sub_100213FA0(&qword_10077FB10, &qword_10077FB00);
  sub_100213FA0(&qword_10077FB18, &qword_10077FB00);
  v6 = encodeXPCValues<A>(_:)();
  if (v5)
  {

    v8 = 0;
    v9 = 0xC000000000000000;
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 224);
  v12 = *(v0 + 232);
  (*(v0 + 104))(v8, v9);
  sub_100007158(v8, v9);
  (*(v12 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002C2868()
{
  v35 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  static Logger.xpc.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  if (v4)
  {
    v33 = *(v0 + 176);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v8 = 136315394;
    v11 = StaticString.description.getter();
    v13 = sub_1002346CC(v11, v12, &v34);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error in %s: %{public}@", v8, 0x16u);
    sub_1000032A8(v9, &qword_10077F920);

    sub_10000710C(v10);

    (*(v7 + 8))(v5, v33);
  }

  else
  {

    (*(v7 + 8))(v5, v6);
  }

  v15 = *(v0 + 248);
  v16 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 136);
  v18 = *(v0 + 144);
  v20 = *(v0 + 128);
  sub_100296AD4(v1, v18);
  (*(v19 + 16))(v15, v18, v20);
  (*(v17 + 104))(v15, enum case for ServiceResult.failure<A>(_:), v16);
  if (os_variant_has_internal_content())
  {
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 128);
    if (*(v0 + 48))
    {
      swift_getObjectType();
      sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
      v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      XPCClientProtocol.logMessage(_:)(v24);

      (*(v22 + 8))(v21, v23);
      goto LABEL_10;
    }

    (*(v22 + 8))(*(v0 + 144), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

LABEL_10:
  sub_100213FA0(&qword_10077FB10, &qword_10077FB00);
  sub_100213FA0(&qword_10077FB18, &qword_10077FB00);
  v25 = encodeXPCValues<A>(_:)();
  v27 = v26;
  v28 = *(v0 + 248);
  v29 = *(v0 + 224);
  v30 = *(v0 + 232);
  (*(v0 + 104))(v25, v26);
  sub_100007158(v25, v27);
  (*(v30 + 8))(v28, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1002C2D00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v19;
  *(v8 + 104) = v18;
  *(v8 + 418) = v17;
  *(v8 + 88) = v16;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 417) = a6;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 48) = a3;
  *(v8 + 416) = a2;
  v9 = type metadata accessor for ManagedAppDistributionError();
  *(v8 + 128) = v9;
  *(v8 + 136) = *(v9 - 8);
  *(v8 + 144) = swift_task_alloc();
  v10 = type metadata accessor for MarketplaceKitError();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 176) = v11;
  *(v8 + 184) = *(v11 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_10077FAC0);
  *(v8 + 224) = v12;
  *(v8 + 232) = *(v12 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = sub_1001F0C48(&qword_10077FAC8);
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1002C2FB8, 0, 0);
}

uint64_t sub_1002C2FB8()
{
  v103 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 416) != 1)
  {
    if (v1)
    {
      v24 = *(v0 + 56);
      if ((v24[8] & 1) == 0)
      {
        v101 = *(v0 + 417);
        v81 = v24[7];
        *(v0 + 384) = v81;
        v82 = v24[6];
        *(v0 + 388) = v82;
        v83 = v24[5];
        *(v0 + 392) = v83;
        v84 = v24[4];
        *(v0 + 396) = v84;
        v85 = v24[3];
        *(v0 + 400) = v85;
        v86 = v24[2];
        *(v0 + 404) = v86;
        v87 = v24[1];
        *(v0 + 408) = v87;
        v88 = *v24;
        *(v0 + 412) = v88;
        swift_unknownObjectRetain();
        v75 = swift_task_alloc();
        v76 = v88 | (v87 << 32);
        *(v0 + 320) = v75;
        v77 = v86 | (v85 << 32);
        v78 = v84 | (v83 << 32);
        v79 = v82 | (v81 << 32);
        *v75 = v0;
        v80 = sub_1002C503C;
        goto LABEL_26;
      }
    }

    static Logger.xpc.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Unable to obtain XPC connection, client, and audit token", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);

    (*(v31 + 8))(v30, v32);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    v33 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);
    if (v36)
    {
      v100 = *(v0 + 176);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v102[0] = v42;
      *v40 = 136315394;
      v43 = StaticString.description.getter();
      v45 = sub_1002346CC(v43, v44, v102);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2114;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error in %s: %{public}@", v40, 0x16u);
      sub_1000032A8(v41, &qword_10077F920);

      sub_10000710C(v42);

      (*(v39 + 8))(v37, v100);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
    }

    v57 = *(v0 + 248);
    v58 = *(v0 + 224);
    v59 = *(v0 + 232);
    v61 = *(v0 + 136);
    v60 = *(v0 + 144);
    v62 = *(v0 + 128);
    sub_100296AD4(v33, v60);
    (*(v61 + 16))(v57, v60, v62);
    (*(v59 + 104))(v57, enum case for ServiceResult.failure<A>(_:), v58);
    if (os_variant_has_internal_content())
    {
      v64 = *(v0 + 136);
      v63 = *(v0 + 144);
      v65 = *(v0 + 128);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F918, &type metadata accessor for ManagedAppDistributionError);
        v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v66);

        (*(v64 + 8))(v63, v65);
LABEL_34:
        sub_100213FA0(&qword_10077FAD0, &qword_10077FAC0);
        sub_100213FA0(&qword_10077FAD8, &qword_10077FAC0);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v97;
        v94 = *(v0 + 248);
        v95 = *(v0 + 224);
        v96 = *(v0 + 232);
        goto LABEL_35;
      }

      (*(v64 + 8))(*(v0 + 144), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    }

    goto LABEL_34;
  }

  if (!v1 || (v2 = *(v0 + 56), (v2[8] & 1) != 0))
  {
    static Logger.xpc.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      v7 = sub_100625FA0();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Unable to obtain XPC connection, client, and audit token", v5, 0xCu);
      sub_1000032A8(v6, &qword_10077F920);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);

    (*(v10 + 8))(v8, v9);
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    static Logger.xpc.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 216);
    v15 = *(v0 + 176);
    v16 = *(v0 + 184);
    if (v13)
    {
      v99 = *(v0 + 176);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v102[0] = v19;
      *v17 = 136315394;
      v20 = StaticString.description.getter();
      v22 = sub_1002346CC(v20, v21, v102);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2114;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error in %s: %{public}@", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      (*(v16 + 8))(v14, v99);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
    }

    v47 = *(v0 + 280);
    v48 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 160);
    v50 = *(v0 + 168);
    v52 = *(v0 + 152);
    swift_getErrorValue();
    sub_1004B53F8(*(v0 + 24), *(v0 + 32), v50);
    (*(v51 + 16))(v47, v50, v52);
    (*(v49 + 104))(v47, enum case for MarketplaceKitServiceResult.failure<A>(_:), v48);
    if (os_variant_has_internal_content())
    {
      v54 = *(v0 + 160);
      v53 = *(v0 + 168);
      v55 = *(v0 + 152);
      if (*(v0 + 48))
      {
        swift_getObjectType();
        sub_100302E04(&qword_10077F938, &type metadata accessor for MarketplaceKitError);
        v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        XPCClientProtocol.logMessage(_:)(v56);

        (*(v54 + 8))(v53, v55);
LABEL_31:
        sub_100213FA0(&qword_10077FAE0, &qword_10077FAC8);
        sub_100213FA0(&qword_10077FAE8, &qword_10077FAC8);
        v91 = encodeXPCValues<A>(_:)();
        v93 = v92;
        v94 = *(v0 + 280);
        v95 = *(v0 + 256);
        v96 = *(v0 + 264);
LABEL_35:
        (*(v0 + 104))(v91, v93);
        sub_100007158(v91, v93);
        (*(v96 + 8))(v94, v95);

        v98 = *(v0 + 8);

        return v98();
      }

      (*(v54 + 8))(*(v0 + 168), *(v0 + 152));
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    }

    goto LABEL_31;
  }

  v101 = *(v0 + 417);
  v67 = v2[7];
  *(v0 + 352) = v67;
  v68 = v2[6];
  *(v0 + 356) = v68;
  v69 = v2[5];
  *(v0 + 360) = v69;
  v70 = v2[4];
  *(v0 + 364) = v70;
  v71 = v2[3];
  *(v0 + 368) = v71;
  v72 = v2[2];
  *(v0 + 372) = v72;
  v73 = v2[1];
  *(v0 + 376) = v73;
  v74 = *v2;
  *(v0 + 380) = v74;
  swift_unknownObjectRetain();
  v75 = swift_task_alloc();
  v76 = v74 | (v73 << 32);
  *(v0 + 288) = v75;
  v77 = v72 | (v71 << 32);
  v78 = v70 | (v69 << 32);
  v79 = v68 | (v67 << 32);
  *v75 = v0;
  v80 = sub_1002C3C50;
LABEL_26:
  v75[1] = v80;
  v89 = *(v0 + 64);

  return sub_100322914(v89, v101 & 1, v76, v77, v78, v79);
}