uint64_t sub_1002B90C8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  *a1 = v3;
  return result;
}

void sub_1002B914C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1002B9944(v1);
}

void sub_1002B919C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1002B9944(v1);
}

uint64_t sub_1002B9208(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063D2A8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_10063D1C8);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t *ExplicitRestrictionsController.symbols.unsafeMutableAddressor()
{
  if (qword_100634470 != -1)
  {
    swift_once();
  }

  return &static ExplicitRestrictionsController.symbols;
}

uint64_t ExplicitRestrictionsController.symbol.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController_symbol);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1002B9434()
{
  static ExplicitRestrictionsController.symbols = 3028656112;
  *algn_100673408 = 0xA400000000000000;
  qword_100673410 = 11768802;
  unk_100673418 = 0xA300000000000000;
}

uint64_t static ExplicitRestrictionsController.symbols.getter()
{
  if (qword_100634470 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t ExplicitRestrictionsController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100004CB8(&qword_100638EF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100004CB8(&qword_10063D1C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ExplicitRestrictionsController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__profileAllowsExplicitContent;
  v2 = sub_100004CB8(&qword_100638EF8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9MusicCore30ExplicitRestrictionsController__ageVerification;
  v4 = sub_100004CB8(&qword_10063D1C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

NSString sub_1002B96D8()
{
  qword_10063D1A0 = sub_1004DD3FC();
  result = sub_1004DD3FC();
  qword_10063D1A8 = result;
  return result;
}

uint64_t type metadata accessor for ExplicitRestrictionsController()
{
  result = qword_10063D200;
  if (!qword_10063D200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B97FC()
{
  sub_1001D7A48();
  if (v0 <= 0x3F)
  {
    sub_1002B98E0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B98E0()
{
  if (!qword_10063D210)
  {
    sub_100008DE4(&qword_10063D1C0);
    v0 = sub_1004D9B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_10063D210);
    }
  }
}

void sub_1002B9944(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  sub_1004D9B7C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  v5 = a1;
  if (a1)
  {
    if (v9)
    {
      sub_1002B9B18();
      v6 = v9;
      v7 = sub_1004DE5FC();

      if (v7)
      {
LABEL_11:

        return;
      }
    }

    else
    {
    }

LABEL_8:
    v8 = [objc_opt_self() defaultCenter];
    if (qword_100634478 != -1)
    {
      swift_once();
    }

    [v8 postNotificationName:qword_10063D1A0 object:v2];

    v6 = v9;
    goto LABEL_11;
  }

  if (v9)
  {
    goto LABEL_8;
  }
}

unint64_t sub_1002B9B18()
{
  result = qword_10063D2B0;
  if (!qword_10063D2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063D2B0);
  }

  return result;
}

uint64_t sub_1002B9B64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t LaunchURL.GenericHandler.perform(withURL:)(uint64_t a1, int *a2)
{
  v2[2] = sub_1004DDA4C();
  v2[3] = sub_1004DDA3C();
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1002B9CC8;

  return v7(a1);
}

uint64_t sub_1002B9CC8(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004DD9BC();
    v7 = v6;
    v8 = sub_1002B9EB4;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004DD9BC();
    v7 = v9;
    v8 = sub_1002B9E4C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1002B9E4C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1002B9EB4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002B9F1C(uint64_t a1)
{
  v4 = *v1;
  v2[2] = sub_1004DDA4C();
  v2[3] = sub_1004DDA3C();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1002BA034;

  return v7(a1);
}

uint64_t sub_1002BA034(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1004DD9BC();
    v7 = v6;
    v8 = sub_1002BBC24;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_1004DD9BC();
    v7 = v9;
    v8 = sub_1002BBC20;
  }

  return _swift_task_switch(v8, v5, v7);
}

void *static LaunchURL.ArrayBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1 + 32;
  v3 = _swiftEmptyArrayStorage;
  do
  {
    sub_1002BA2D0(v2, &v10);
    v7[0] = v10;
    v7[1] = v11;
    v8 = v12;
    if (*(&v11 + 1))
    {
      sub_100035850(v7, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10003B57C(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v4 = v3[3];
      if (v5 >= v4 >> 1)
      {
        v3 = sub_10003B57C((v4 > 1), v5 + 1, 1, v3);
      }

      v3[2] = v5 + 1;
      sub_100035850(v9, &v3[5 * v5 + 4]);
    }

    else
    {
      sub_1002BA340(v7);
    }

    v2 += 40;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1002BA2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063D2B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BA340(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063D2B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *static LaunchURL.ArrayBuilder.buildOptional(_:)(uint64_t a1)
{
  sub_1002BA2D0(a1, &v3);
  if (v4)
  {
    sub_100035850(&v3, v5);
    sub_100004CB8(&qword_100634FC0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100511DA0;
    sub_100035850(v5, v1 + 32);
  }

  else
  {
    sub_1002BA340(&v3);
    return _swiftEmptyArrayStorage;
  }

  return v1;
}

uint64_t sub_1002BA440(uint64_t a1)
{
  sub_100004CB8(&qword_100634FC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  sub_100035868(a1, v2 + 32);
  return v2;
}

uint64_t LaunchURL.Resolver.init(perform:handlerBuilder:)@<X0>(char a1@<W0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LaunchURL.Resolver();
  v6 = sub_1004D965C();
  *a3 = a1 & 1;
  result = a2(v6);
  *(a3 + 8) = result;
  return result;
}

uint64_t LaunchURL.Resolver.perform(withURL:)(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = sub_1004D809C();
  v2[34] = v3;
  v2[35] = *(v3 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_1002BA614, 0, 0);
}

void sub_1002BA614()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 392) = *(type metadata accessor for LaunchURL.Resolver() + 24);
  v5 = *(v3 + 16);
  *(v0 + 320) = v5;
  *(v0 + 328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1004D964C();
  v7 = sub_1004DDF5C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 312);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v61 = v59;
    *v12 = 136446210;
    sub_1002BB8BC();
    v13 = sub_1004DEFFC();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_1000343A8(v13, v15, &v61);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Evaluating URL=%{public}s", v12, 0xCu);
    sub_100008D24(v59);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 336) = v16;
  v18 = *(*(v0 + 264) + 8);
  *(v0 + 344) = v18;
  v19 = *(v18 + 16);
  *(v0 + 352) = v19;
  if (v19)
  {
    *(v0 + 360) = 0;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    if (*(v18 + 16))
    {
      v20 = *(v0 + 320);
      v21 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 256);
      sub_100035868(v18 + 32, v0 + 16);
      v20(v21, v23, v22);
      sub_100035868(v0 + 16, v0 + 56);
      v24 = sub_1004D964C();
      v25 = sub_1004DDF5C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 336);
      v28 = *(v0 + 304);
      v29 = *(v0 + 272);
      if (v26)
      {
        v30 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v30 = 136446466;
        sub_1002BB8BC();
        v31 = sub_1004DEFFC();
        v33 = v32;
        v27(v28, v29);
        v34 = sub_1000343A8(v31, v33, &v61);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        sub_100035868(v0 + 56, v0 + 216);
        sub_100004CB8(&qword_100634FC8);
        v35 = sub_1004DD4DC();
        v37 = v36;
        sub_100008D24(v0 + 56);
        v38 = sub_1000343A8(v35, v37, &v61);

        *(v30 + 14) = v38;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving URL=%{public}s with handler=%{public}s", v30, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100008D24(v0 + 56);
        v27(v28, v29);
      }

      v53 = *(v0 + 40);
      v54 = *(v0 + 48);
      sub_100008C70((v0 + 16), v53);
      v60 = (*(v54 + 8) + **(v54 + 8));
      v55 = swift_task_alloc();
      *(v0 + 376) = v55;
      *v55 = v0;
      v55[1] = sub_1002BAD08;
      v56 = *(v0 + 256);

      v60(v56, v53, v54);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

    v39 = sub_1004D964C();
    v40 = sub_1004DDF5C();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 336);
    v43 = *(v0 + 288);
    v44 = *(v0 + 272);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v45 = 136446466;
      sub_1002BB8BC();
      v46 = sub_1004DEFFC();
      v48 = v47;
      v42(v43, v44);
      v49 = sub_1000343A8(v46, v48, &v61);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2082;
      sub_100004CB8(&qword_100634FC8);
      v50 = sub_1004DD88C();
      v52 = sub_1000343A8(v50, v51, &v61);

      *(v45 + 14) = v52;

      _os_log_impl(&_mh_execute_header, v39, v40, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v42(v43, v44);
    }

    v57 = _swiftEmptyArrayStorage[2];

    v58 = *(v0 + 8);

    v58(v57 != 0);
  }
}

uint64_t sub_1002BAD08(char a1)
{
  v3 = *v2;
  *(v3 + 396) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = sub_1002BB63C;
  }

  else
  {
    v4 = sub_1002BAE28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002BAE28()
{
  v71 = v0;
  v1 = *(v0 + 368);
  if (*(v0 + 396))
  {
    sub_100035868(v0 + 16, v0 + 176);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v1 = sub_10003B57C(0, v1[2] + 1, 1, *(v0 + 368));
    }

    v4 = v1[2];
    v3 = v1[3];
    if (v4 >= v3 >> 1)
    {
      v1 = sub_10003B57C((v3 > 1), v4 + 1, 1, v1);
    }

    v1[2] = v4 + 1;
    sub_100035850((v0 + 176), &v1[5 * v4 + 4]);
  }

  (*(v0 + 320))(*(v0 + 296), *(v0 + 256), *(v0 + 272));
  sub_100035868(v0 + 16, v0 + 96);
  v5 = sub_1004D964C();
  v6 = sub_1004DDF5C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 336);
  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v11 = 136446466;
    sub_1002BB8BC();
    v12 = v1;
    v13 = sub_1004DEFFC();
    v15 = v14;
    v8(v9, v10);
    v16 = v13;
    v1 = v12;
    v17 = sub_1000343A8(v16, v15, &v70);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    sub_100035868(v0 + 96, v0 + 136);
    sub_100004CB8(&qword_100634FC8);
    v18 = sub_1004DD4DC();
    v20 = v19;
    sub_100008D24(v0 + 96);
    v21 = sub_1000343A8(v18, v20, &v70);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resolved URL=%{public}s with handler=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008D24(v0 + 96);
    v8(v9, v10);
  }

  if (*(v0 + 396) == 1 && (**(v0 + 264) & 1) == 0)
  {
    sub_100008D24(v0 + 16);
  }

  else
  {
    v22 = *(v0 + 352);
    v23 = *(v0 + 360) + 1;
    result = sub_100008D24(v0 + 16);
    if (v23 != v22)
    {
      v25 = *(v0 + 360) + 1;
      *(v0 + 360) = v25;
      *(v0 + 368) = v1;
      v26 = *(v0 + 344);
      if (v25 >= *(v26 + 16))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 320);
        v28 = *(v0 + 304);
        v29 = *(v0 + 272);
        v30 = *(v0 + 256);
        sub_100035868(v26 + 40 * v25 + 32, v0 + 16);
        v27(v28, v30, v29);
        sub_100035868(v0 + 16, v0 + 56);
        v31 = sub_1004D964C();
        v32 = sub_1004DDF5C();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 336);
        v35 = *(v0 + 304);
        v36 = *(v0 + 272);
        if (v33)
        {
          v37 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *v37 = 136446466;
          sub_1002BB8BC();
          v38 = sub_1004DEFFC();
          v40 = v39;
          v34(v35, v36);
          v41 = sub_1000343A8(v38, v40, &v70);

          *(v37 + 4) = v41;
          *(v37 + 12) = 2082;
          sub_100035868(v0 + 56, v0 + 216);
          sub_100004CB8(&qword_100634FC8);
          v42 = sub_1004DD4DC();
          v44 = v43;
          sub_100008D24(v0 + 56);
          v45 = sub_1000343A8(v42, v44, &v70);

          *(v37 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v31, v32, "Resolving URL=%{public}s with handler=%{public}s", v37, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_100008D24(v0 + 56);
          v34(v35, v36);
        }

        v64 = *(v0 + 40);
        v65 = *(v0 + 48);
        sub_100008C70((v0 + 16), v64);
        v69 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 376) = v66;
        *v66 = v0;
        v66[1] = sub_1002BAD08;
        v67 = *(v0 + 256);

        return v69(v67, v64, v65);
      }

      return result;
    }
  }

  (*(v0 + 320))(*(v0 + 288), *(v0 + 256), *(v0 + 272));

  v46 = sub_1004D964C();
  v47 = sub_1004DDF5C();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 336);
  v50 = *(v0 + 288);
  v51 = *(v0 + 272);
  if (v48)
  {
    v68 = v47;
    v52 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v52 = 136446466;
    sub_1002BB8BC();
    v53 = v1;
    v54 = sub_1004DEFFC();
    v56 = v55;
    v49(v50, v51);
    v57 = v54;
    v1 = v53;
    v58 = sub_1000343A8(v57, v56, &v70);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    sub_100004CB8(&qword_100634FC8);
    v59 = sub_1004DD88C();
    v61 = sub_1000343A8(v59, v60, &v70);

    *(v52 + 14) = v61;

    _os_log_impl(&_mh_execute_header, v46, v68, "Successfully evaluated URL=%{public}s using handlers=%{public}s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v49(v50, v51);
  }

  v62 = v1[2];

  v63 = *(v0 + 8);

  return v63(v62 != 0);
}

uint64_t sub_1002BB63C()
{
  sub_100008D24(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002BB6D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002BB768;

  return LaunchURL.Resolver.perform(withURL:)(a1);
}

uint64_t sub_1002BB768(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t type metadata accessor for LaunchURL.Resolver()
{
  result = qword_10063D320;
  if (!qword_10063D320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002BB8BC()
{
  result = qword_100637988;
  if (!qword_100637988)
  {
    sub_1004D809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100637988);
  }

  return result;
}

unint64_t sub_1002BB918()
{
  result = qword_10063D2C0;
  if (!qword_10063D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063D2C0);
  }

  return result;
}

uint64_t sub_1002BB9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004D966C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1002BBA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004D966C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002BBB14()
{
  sub_1002BBBA8();
  if (v0 <= 0x3F)
  {
    sub_1004D966C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002BBBA8()
{
  if (!qword_10063D330)
  {
    sub_100008DE4(&qword_100634FC8);
    v0 = sub_1004DD98C();
    if (!v1)
    {
      atomic_store(v0, &qword_10063D330);
    }
  }
}

uint64_t static LifecyclePatrol.isEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LifecyclePatrol.isEnabled = a1;
  return result;
}

uint64_t LifecyclePatrol.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t LifecyclePatrol.didInit(_:)()
{
  v1 = v0;
  result = swift_beginAccess();
  if (static LifecyclePatrol.isEnabled == 1)
  {
    sub_1000C10F4();
    v3 = sub_1004DE14C();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;

    OS_dispatch_queue.asyncAfter(_:block:)(sub_1002BC164, v5);
  }

  return result;
}

uint64_t sub_1002BBE70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BBEA8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_100634480 != -1)
      {
        swift_once();
      }

      v1 = sub_1004D966C();
      sub_100035430(v1, qword_10063D370);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v2 = sub_1004D964C();
      v3 = sub_1004DDF8C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v4 = 136446722;
        swift_getObjectType();
        sub_100004CB8(&qword_10063D450);
        v5 = sub_1004DD4DC();
        v7 = sub_1000343A8(v5, v6, &v14);

        *(v4 + 4) = v7;
        *(v4 + 12) = 2082;
        v8 = sub_1004DD4DC();
        v10 = sub_1000343A8(v8, v9, &v14);

        *(v4 + 14) = v10;
        *(v4 + 22) = 2082;
        v11 = sub_1004DD4DC();
        v13 = sub_1000343A8(v11, v12, &v14);

        *(v4 + 24) = v13;
        _os_log_impl(&_mh_execute_header, v2, v3, "A new instance of %{public}s<%{public}s> while one already exists <%{public}s>", v4, 0x20u);
        swift_arrayDestroy();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002BC124()
{

  return swift_deallocObject();
}

uint64_t LifecyclePatrol.willDeinit(_:)(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == a1)
    {

      return swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

uint64_t LifecyclePatrol.__deallocating_deinit()
{
  sub_100010A38(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002BC254()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D370);
  sub_100035430(v0, qword_10063D370);
  return sub_1004D965C();
}

unint64_t sub_1002BC2D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635908);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100010678(*(a1 + 48) + 40 * v12, v27);
        sub_10000904C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100010678(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_10000904C(v25 + 8, v20);
        sub_1002BF470(v24);
        v21 = v18;
        sub_100006F5C(v20, v22);
        v13 = v21;
        sub_100006F5C(v22, v23);
        sub_100006F5C(v23, &v21);
        result = sub_100056B84(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100008D24(v10);
          result = sub_100006F5C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100006F5C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1002BF470(v24);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1002BC590(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_10063D508);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100010678(*(a1 + 48) + 40 * v12, v24);
        sub_10000904C(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100010678(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_1002BF470(v21);

          goto LABEL_23;
        }

        sub_10000904C(v22 + 8, v20);
        sub_1002BF470(v21);
        sub_100004CB8(&qword_100635318);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100056B84(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1002BC84C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004CB8(&qword_100635948);
    v2 = sub_1004DEDBC();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_10000904C(*(a1 + 56) + 32 * v11, v24);
        *&v23 = v13;
        *(&v23 + 1) = v14;
        v21[2] = v23;
        v22[0] = v24[0];
        v22[1] = v24[1];
        v15 = v23;
        sub_100006F5C(v22, v21);

        sub_100004CB8(&unk_100639F70);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100056B84(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          *(v2[7] + 8 * v9) = v20;

          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1002BCAB0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 11);
  sub_1002BD0EC(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;
  if (v8)
  {
    v7 = sub_1002BD39C(v8, a1, a2);
    __chkstk_darwin(v7);
    os_unfair_lock_lock(v5 + 11);
    sub_1002BF4D8(&v5[4]);
    os_unfair_lock_unlock(v5 + 11);
  }
}

uint64_t sub_1002BCBD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void *sub_1002BCC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1004D966C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v20 = objc_opt_self();

  v21 = [v20 sharedBagProvider];
  LODWORD(a2) = [v21 useAMSBag];

  if (!a2)
  {
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.musicBag;
    sub_1004D967C();
    v35 = sub_1004D964C();
    v36 = sub_1004DDF9C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "UserDefaults enabled as source for cached musicTabs.", v37, 2u);
    }

    (*(v11 + 8))(v14, v10);
    goto LABEL_22;
  }

  if (qword_100633CC8 != -1)
  {
    swift_once();
  }

  v22 = static ICClientInfo.music;
  v23 = [static ICClientInfo.music bagProfile];
  if (!v23)
  {
LABEL_17:
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.musicBag;
    sub_1004D967C();
    v39 = sub_1004D964C();
    v40 = sub_1004DDF8C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "    AMSBag was intended to be enabled as source for cached musicTabs, but bag profile and/or version were unexpectedly nil.\n    Defaulting to .userDefaults configuration.", v41, 2u);
    }

    (*(v11 + 8))(v17, v10);
LABEL_22:
    v31 = 0;
    v33 = 0;
    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v22 bagProfileVersion];
  if (!v25)
  {

    goto LABEL_17;
  }

  v26 = v25;
  if (qword_100633C70 != -1)
  {
    swift_once();
  }

  v27 = static OS_os_log.musicBag;
  sub_1004D967C();
  v28 = sub_1004D964C();
  v29 = sub_1004DDF9C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "AMSBag enabled as source for cached musicTabs.", v30, 2u);
  }

  (*(v11 + 8))(v19, v10);
  v31 = [objc_opt_self() bagForProfile:v24 profileVersion:v26];

  v32 = v31;
  v33 = 1;
LABEL_23:
  sub_100004CB8(&qword_10063D528);
  v42 = swift_allocObject();
  *(v42 + 44) = 0;

  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v31;
  *(v42 + 40) = v33;
  sub_1002BF4FC(v31);
  v5[2] = v42;
  return v5;
}

id sub_1002BD0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1004D966C();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) != 0 && !*(a1 + 16))
    {
      *(a1 + 16) = 1;
      *(a1 + 24) = 1;
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 16) = 1;
      *(a2 + 24) = 1;

      return v11;
    }

    v24 = result;
    v13 = qword_100633C70;
    v23 = v11;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.musicBag;
    sub_1004D967C();
    v15 = sub_1004D964C();
    v16 = sub_1004DDF8C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[1] = v3;
      v18 = v17;
      v22[0] = swift_slowAlloc();
      v25 = v22[0];
      *v18 = 136315394;
      v19 = sub_1004DF34C();
      v21 = sub_1000343A8(v19, v20, &v25);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1000343A8(0xD000000000000021, 0x80000001004F49E0, &v25);
      _os_log_impl(&_mh_execute_header, v15, v16, "    An unexpected attempt to configure an %s instance twice using %s will be ignored.", v18, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v7 + 8))(v10, v24);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

id sub_1002BD39C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v91 = sub_1004D966C();
  v90 = *(v91 - 8);
  v8 = __chkstk_darwin(v91);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v73 - v11;
  v93 = [objc_opt_self() uninitializedToken];
  v12 = *(v3 + 24);
  v13 = *(v4 + 32);
  sub_100004CB8(&unk_100637DF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = v12;
  *(inited + 40) = v13;

  sub_10003BFEC(inited);
  swift_setDeallocating();
  sub_1001D6868(inited + 32);
  isa = sub_1004DDC2C().super.isa;

  v16 = swift_allocObject();
  v17 = a1;
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = a2;
  v18[6] = a3;
  aBlock[4] = sub_1002BF5BC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002BF3EC;
  aBlock[3] = &unk_1005EB090;
  v19 = _Block_copy(aBlock);

  v20 = [a1 cachedValuesForKeys:isa observationToken:&v93 updateHandler:v19];
  _Block_release(v19);

  v21 = sub_1004DD21C();
  if (*(v21 + 16) && (v22 = sub_100056B84(v12, v13), (v23 & 1) != 0))
  {
    sub_10000904C(*(v21 + 56) + 32 * v22, aBlock);

    sub_100004CB8(&qword_100637300);
    if (swift_dynamicCast())
    {
      v24 = *&v95[0];
      v25 = qword_100633C70;

      if (v25 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v26 = static OS_os_log.musicBag;
        v27 = v89;
        sub_1004D967C();

        v28 = sub_1004D964C();
        v29 = sub_1004DDF9C();

        if (!os_log_type_enabled(v28, v29))
        {

          (*(v90 + 8))(v27, v91);
          return v17;
        }

        v76 = v29;
        v77 = v28;
        v30 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v96 = v74;
        v75 = v30;
        *v30 = 136315138;
        sub_100004CB8(&qword_10063D518);
        v31 = sub_1004DED8C();
        v32 = v31;
        v33 = 0;
        v34 = *(v24 + 64);
        v78 = v24 + 64;
        v35 = 1 << *(v24 + 32);
        v36 = v35 < 64 ? ~(-1 << v35) : -1;
        v37 = v36 & v34;
        v38 = (v35 + 63) >> 6;
        v88 = "v16@?0@NSDictionary8";
        v83 = v31 + 64;
        v81 = v17;
        v82 = v24;
        v80 = v31;
        v79 = v38;
        if ((v36 & v34) == 0)
        {
          break;
        }

        while (1)
        {
          v39 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
LABEL_16:
          v42 = v39 | (v33 << 6);
          v43 = *(v24 + 56);
          v44 = (*(v24 + 48) + 16 * v42);
          v45 = v44[1];
          v86 = *v44;
          v87 = v42;
          v46 = *(v43 + 8 * v42);
          v24 = *(v46 + 16);
          if (v24)
          {
            v85 = v37;
            v92 = _swiftEmptyArrayStorage;
            v84 = v45;

            sub_1000374EC(0, v24, 0);
            v10 = v92;
            v47 = 32;
            do
            {
              v48 = *(v46 + v47);
              *&v94[0] = 25705;
              *(&v94[0] + 1) = 0xE200000000000000;

              sub_1004DEA4C();
              if (*(v48 + 16) && (v49 = sub_100028F3C(aBlock), (v50 & 1) != 0))
              {
                sub_10000904C(*(v48 + 56) + 32 * v49, v94);
                sub_1000105EC(aBlock);
                sub_100006F5C(v94, v95);
                sub_10000904C(v95, aBlock);
                if (swift_dynamicCast())
                {
                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                else
                {
                  *&v94[0] = 0;
                  *(&v94[0] + 1) = 0xE000000000000000;
                  sub_1004DEAAC(23);
                  v98._object = (v88 | 0x8000000000000000);
                  v98._countAndFlagsBits = 0xD000000000000014;
                  sub_1004DD5FC(v98);
                  sub_1004DEC6C();
                  v99._countAndFlagsBits = 62;
                  v99._object = 0xE100000000000000;
                  sub_1004DD5FC(v99);

                  v52 = *(&v94[0] + 1);
                  v51 = *&v94[0];
                }

                sub_100008D24(v95);
              }

              else
              {
                sub_1000105EC(aBlock);

                v51 = 0x204449206261743CLL;
                v52 = 0xEF3E746E65736261;
              }

              v92 = v10;
              v54 = *(v10 + 2);
              v53 = *(v10 + 3);
              if (v54 >= v53 >> 1)
              {
                sub_1000374EC((v53 > 1), v54 + 1, 1);
                v10 = v92;
              }

              *(v10 + 2) = v54 + 1;
              v55 = &v10[16 * v54];
              *(v55 + 4) = v51;
              *(v55 + 5) = v52;
              v47 += 8;
              --v24;
            }

            while (v24);

            v17 = v81;
            v32 = v80;
            v38 = v79;
            v37 = v85;
            v56 = v84;
          }

          else
          {

            v10 = _swiftEmptyArrayStorage;
          }

          v57 = v87;
          *(v83 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
          v58 = (v32[6] + 16 * v57);
          *v58 = v86;
          v58[1] = v56;
          *(v32[7] + 8 * v57) = v10;
          v59 = v32[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            break;
          }

          v32[2] = v61;
          v24 = v82;
          if (!v37)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

LABEL_11:
      v40 = v33;
      while (1)
      {
        v33 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v33 >= v38)
        {

          sub_100004CB8(&unk_1006372E0);
          v67 = sub_1004DD22C();
          v69 = v68;

          v70 = sub_1000343A8(v67, v69, &v96);

          v71 = v75;
          *(v75 + 1) = v70;
          v72 = v77;
          _os_log_impl(&_mh_execute_header, v77, v76, "AMSBag provided initial state of musicTabs: %s", v71, 0xCu);
          sub_100008D24(v74);

          (*(v90 + 8))(v89, v91);
          return v17;
        }

        v41 = *(v78 + 8 * v33);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v37 = (v41 - 1) & v41;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  else
  {
  }

  if (qword_100633C70 != -1)
  {
LABEL_42:
    swift_once();
  }

  v62 = static OS_os_log.musicBag;
  sub_1004D967C();
  v63 = sub_1004D964C();
  v64 = sub_1004DDF9C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "AMSBag didn't provide initial state of musicTabs. No cached value was found.", v65, 2u);
  }

  (*(v90 + 8))(v10, v91);
  return v17;
}

id sub_1002BDDE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1002BF4FC(*a1);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5 & 1;

  return a2;
}

void *sub_1002BDE5C@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t *a4@<X8>)
{
  if (!*result)
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = (*(a2 + 40))(result);

    goto LABEL_9;
  }

  v7 = result[1];

  if (v7)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = sub_1004DD3FC();
  v9 = [a3 dictionaryForBagKey:v8];

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = sub_1004DD21C();

  v7 = sub_1002BC590(v10);

  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *a4 = v7;
  return result;
}

uint64_t sub_1002BDF7C()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 11);
  sub_1002BE060(&v1[4], v6);
  os_unfair_lock_unlock(v1 + 11);
  v2 = v6[0];
  v3 = v6[2];
  v4 = v7;

  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      [v2 removeObserverWithToken:v3];
    }
  }

  return v0;
}

id sub_1002BE060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1004D966C();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 8);
    if ((*(a1 + 24) & 1) == 0)
    {
      *a2 = v11;
      *(a2 + 8) = v12;
      *(a2 + 24) = 0;

      return v11;
    }

    v28 = result;
    v13 = v12;
    v14 = qword_100633C70;
    v15 = v11;

    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.musicBag;
    sub_1004D967C();
    v17 = sub_1004D964C();
    v18 = sub_1004DDF8C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v27[1] = v13;
      v20 = v19;
      v21 = swift_slowAlloc();
      v27[2] = v3;
      v22 = v21;
      v29 = v21;
      *v20 = 136315138;
      v23 = sub_1004DF34C();
      v25 = sub_1000343A8(v23, v24, &v29);
      v27[0] = v15;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "    %s wasn't configured with an AMSBag update handler prior to deallocation. This may have caused musicTabs updates to be missed after initialization.", v20, 0xCu);
      sub_100008D24(v22);
    }

    else
    {
    }

    result = (*(v7 + 8))(v10, v28);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1002BE2DC()
{
  sub_1002BDF7C();

  return swift_deallocClassInstance();
}

uint64_t sub_1002BE334(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1002BE34C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1002BE360(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BE3B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1002BE41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v9 = sub_1004DBEBC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DBEFC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v19 = *(a1 + 16);
    v28 = v14;
    v29 = v10;
    if (v19 && (result = sub_100056B84(a3, a4), (v20 & 1) != 0))
    {
      sub_10000904C(*(a1 + 56) + 32 * result, aBlock);
      sub_100004CB8(&qword_100637300);
      result = swift_dynamicCast();
      if (result)
      {
        v21 = v32;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v18 + 16);
    __chkstk_darwin(result);
    *(&v27 - 2) = v21;
    os_unfair_lock_lock(v22 + 11);
    sub_1002BF5E4(&v22[4], aBlock);
    os_unfair_lock_unlock(v22 + 11);
    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_1000C10F4();
      v23 = sub_1004DE14C();
      v24 = swift_allocObject();
      v25 = v31;
      v24[2] = v30;
      v24[3] = v25;
      v24[4] = v21;
      aBlock[4] = sub_1002BF640;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012680;
      aBlock[3] = &unk_1005EB0E0;
      v26 = _Block_copy(aBlock);

      sub_1004DBEDC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100116FD4();
      sub_100004CB8(&unk_100638950);
      sub_1001080A0();
      sub_1004DE92C();
      sub_1004DE15C();
      _Block_release(v26);

      (*(v29 + 8))(v12, v9);
      return (*(v28 + 8))(v16, v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002BE7D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v113 = a3;
  v5 = sub_1004D966C();
  v111 = *(v5 - 8);
  v112 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v94 - v9;
  v11 = *a1;
  v12 = &static OS_os_log.musicBag;
  if (!*a1)
  {
    if (qword_100633C70 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.musicBag;
    sub_1004D967C();
    v52 = sub_1004D964C();
    v53 = sub_1004DDF8C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v117[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_1000343A8(0xD000000000000047, 0x80000001004F4990, v117);
      _os_log_impl(&_mh_execute_header, v52, v53, "Unexpected update handler call in %s with .userDefaults configuration. This is likely programmer error.", v54, 0xCu);
      sub_100008D24(v55);
    }

    (*(v111 + 8))(v8, v112);
    v56 = 0;
    goto LABEL_70;
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 24) & 1;
  *(a1 + 8) = a2;
  *(a1 + 24) = v14;
  v15 = qword_100633C70;
  swift_bridgeObjectRetain_n();
  v107 = v11;
  if (v15 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v16 = *v12;
    sub_1004D967C();

    v17 = sub_1004D964C();
    v18 = sub_1004DDF9C();

    if (!os_log_type_enabled(v17, v18))
    {

      goto LABEL_69;
    }

    v98 = v18;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v120 = v20;
    v102 = v19;
    *v19 = 136315394;
    v109 = a2;
    v108 = v10;
    v99 = v17;
    v97 = v20;
    if (!v13)
    {
      break;
    }

    sub_100004CB8(&qword_10063D518);
    v21 = sub_1004DED8C();
    v22 = v21;
    v23 = 0;
    v24 = *(v13 + 64);
    v96 = v13 + 64;
    v25 = 1 << *(v13 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v12 = v26 & v24;
    v95 = (v25 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v21 + 64;
    v101 = v13;
    i = v21;
    if ((v26 & v24) != 0)
    {
      do
      {
        v27 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_15:
        v30 = v27 | (v23 << 6);
        v31 = *(v13 + 56);
        v32 = (*(v13 + 48) + 16 * v30);
        v33 = v32[1];
        v110 = *v32;
        v34 = *(v31 + 8 * v30);
        v35 = *(v34 + 16);
        if (v35)
        {
          v105 = v30;
          v106 = v12;
          v119 = _swiftEmptyArrayStorage;
          v104 = v33;

          sub_1000374EC(0, v35, 0);
          v10 = v119;
          v36 = 32;
          v37 = v34;
          v115 = v34;
          do
          {
            v38 = *(v37 + v36);
            *&v116[0] = 25705;
            *(&v116[0] + 1) = 0xE200000000000000;

            sub_1004DEA4C();
            if (*(v38 + 16) && (v39 = sub_100028F3C(v117), v37 = v115, (v40 & 1) != 0))
            {
              sub_10000904C(*(v38 + 56) + 32 * v39, v116);
              sub_1000105EC(v117);
              sub_100006F5C(v116, &v118);
              sub_10000904C(&v118, v117);
              if (swift_dynamicCast())
              {
                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              else
              {
                *&v116[0] = 0;
                *(&v116[0] + 1) = 0xE000000000000000;
                sub_1004DEAAC(23);
                v121._object = (v114 | 0x8000000000000000);
                v121._countAndFlagsBits = 0xD000000000000014;
                sub_1004DD5FC(v121);
                sub_1004DEC6C();
                v122._countAndFlagsBits = 62;
                v122._object = 0xE100000000000000;
                sub_1004DD5FC(v122);
                v37 = v115;

                v41 = *(&v116[0] + 1);
                v42 = *&v116[0];
              }

              sub_100008D24(&v118);
            }

            else
            {
              sub_1000105EC(v117);

              v42 = 0x204449206261743CLL;
              v41 = 0xEF3E746E65736261;
            }

            v119 = v10;
            v44 = *(v10 + 16);
            v43 = *(v10 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_1000374EC((v43 > 1), v44 + 1, 1);
              v37 = v115;
              v10 = v119;
            }

            *(v10 + 16) = v44 + 1;
            v45 = v10 + 16 * v44;
            *(v45 + 32) = v42;
            *(v45 + 40) = v41;
            v36 += 8;
            --v35;
          }

          while (v35);

          a2 = v109;
          v13 = v101;
          v22 = i;
          v12 = v106;
          v30 = v105;
          v46 = v104;
        }

        else
        {

          v10 = _swiftEmptyArrayStorage;
        }

        *(v103 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v47 = (v22[6] + 16 * v30);
        *v47 = v110;
        v47[1] = v46;
        *(v22[7] + 8 * v30) = v10;
        v48 = v22[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_73;
        }

        v22[2] = v50;
        v10 = v108;
      }

      while (v12);
    }

    v28 = v23;
    while (1)
    {
      v23 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v23 >= v95)
      {
        goto LABEL_39;
      }

      v29 = *(v96 + 8 * v23);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v12 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v22 = 0;
LABEL_39:
  v117[0] = v22;
  v96 = sub_100004CB8(&qword_10063D520);
  v57 = sub_1004DD4DC();
  v59 = v58;

  v12 = sub_1000343A8(v57, v59, &v120);

  v60 = v102;
  *(v102 + 1) = v12;
  *(v60 + 6) = 2080;
  if (a2)
  {
    sub_100004CB8(&qword_10063D518);
    v61 = sub_1004DED8C();
    v62 = v61;
    v63 = *(a2 + 64);
    v95 = a2 + 64;
    v64 = 1 << *(a2 + 32);
    v65 = -1;
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    v66 = v65 & v63;
    v67 = (v64 + 63) >> 6;
    v114 = "v16@?0@NSDictionary8";
    v103 = v61 + 64;

    v10 = 0;
    v101 = v62;
    for (i = v67; v66; v62[2] = v88)
    {
      v68 = __clz(__rbit64(v66));
      v66 &= v66 - 1;
LABEL_49:
      v71 = v68 | (v10 << 6);
      v72 = *(a2 + 56);
      v73 = (*(a2 + 48) + 16 * v71);
      v74 = v73[1];
      v110 = *v73;
      v13 = *(v72 + 8 * v71);
      v75 = *(v13 + 16);
      if (v75)
      {
        v105 = v71;
        v106 = v66;
        v119 = _swiftEmptyArrayStorage;
        v104 = v74;

        sub_1000374EC(0, v75, 0);
        v12 = v119;
        v76 = 32;
        v77 = v13;
        v115 = v13;
        do
        {
          v78 = *(v77 + v76);
          *&v116[0] = 25705;
          *(&v116[0] + 1) = 0xE200000000000000;

          sub_1004DEA4C();
          if (*(v78 + 16) && (v79 = sub_100028F3C(v117), v77 = v115, (v80 & 1) != 0))
          {
            sub_10000904C(*(v78 + 56) + 32 * v79, v116);
            sub_1000105EC(v117);
            sub_100006F5C(v116, &v118);
            sub_10000904C(&v118, v117);
            if (swift_dynamicCast())
            {
              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            else
            {
              *&v116[0] = 0;
              *(&v116[0] + 1) = 0xE000000000000000;
              sub_1004DEAAC(23);
              v123._object = (v114 | 0x8000000000000000);
              v123._countAndFlagsBits = 0xD000000000000014;
              sub_1004DD5FC(v123);
              sub_1004DEC6C();
              v124._countAndFlagsBits = 62;
              v124._object = 0xE100000000000000;
              sub_1004DD5FC(v124);
              v77 = v115;

              v13 = *(&v116[0] + 1);
              v81 = *&v116[0];
            }

            sub_100008D24(&v118);
          }

          else
          {
            sub_1000105EC(v117);

            v81 = 0x204449206261743CLL;
            v13 = 0xEF3E746E65736261;
          }

          v119 = v12;
          v83 = *(v12 + 16);
          v82 = *(v12 + 24);
          if (v83 >= v82 >> 1)
          {
            sub_1000374EC((v82 > 1), v83 + 1, 1);
            v77 = v115;
            v12 = v119;
          }

          *(v12 + 16) = v83 + 1;
          v84 = v12 + 16 * v83;
          *(v84 + 32) = v81;
          *(v84 + 40) = v13;
          v76 += 8;
          --v75;
        }

        while (v75);

        a2 = v109;
        v62 = v101;
        v67 = i;
        v66 = v106;
        v71 = v105;
        v85 = v104;
      }

      else
      {

        v12 = _swiftEmptyArrayStorage;
      }

      *(v103 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
      v86 = (v62[6] + 16 * v71);
      *v86 = v110;
      v86[1] = v85;
      *(v62[7] + 8 * v71) = v12;
      v87 = v62[2];
      v49 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v49)
      {
        goto LABEL_74;
      }
    }

    v69 = v10;
    while (1)
    {
      v10 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_72;
      }

      if (v10 >= v67)
      {

        v10 = v108;
        goto LABEL_68;
      }

      v70 = *(v95 + 8 * v10);
      ++v69;
      if (v70)
      {
        v68 = __clz(__rbit64(v70));
        v66 = (v70 - 1) & v70;
        goto LABEL_49;
      }
    }
  }

  v62 = 0;
LABEL_68:
  v117[0] = v62;
  v89 = sub_1004DD4DC();
  v91 = sub_1000343A8(v89, v90, &v120);

  v92 = v102;
  *(v102 + 14) = v91;
  v93 = v99;
  _os_log_impl(&_mh_execute_header, v99, v98, "    AMSBag provided updated musicTabs dictionary.\n    Previous: %s\n    Updated: %s", v92, 0x16u);
  swift_arrayDestroy();

LABEL_69:
  (*(v111 + 8))(v10, v112);

  v56 = 1;
LABEL_70:
  *v113 = v56;
}

uint64_t sub_1002BF3EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1004DD21C();

  v1(v2);
}

uint64_t sub_1002BF470(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063D510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1002BF4FC(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002BF53C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002BF574()
{

  return swift_deallocObject();
}

uint64_t sub_1002BF5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BF600()
{

  return swift_deallocObject();
}

uint64_t sub_1002BF670(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1002BF6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1002BF75C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BF778(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t OptimisticValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for OptimisticValue() + 28);
  v7 = type metadata accessor for OptimisticValue.Transaction();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(*(a2 - 8) + 32);

  return v8(a3, a1, a2);
}

uint64_t sub_1002BF8A0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v29 - v9;
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = *(v4 + 16);
  (v13)(&v29 - v11, v1, v3);
  v14 = v1 + *(a1 + 28);
  v15 = type metadata accessor for OptimisticValue.Transaction();
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    (*(v4 + 24))(v14 + *(v15 + 28), v12, v3);
  }

  if (qword_100634488 != -1)
  {
    swift_once();
  }

  v16 = sub_1004D966C();
  sub_100035430(v16, qword_10063D530);
  (v13)(v10, v12, v3);
  v17 = sub_1004D964C();
  v18 = sub_1004DDF9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446210;
    (v29)(v7, v10, v3);
    v22 = sub_1004DD4DC();
    v24 = v23;
    v29 = v12;
    v25 = *(v4 + 8);
    v25(v10, v3);
    v26 = sub_1000343A8(v22, v24, &v30);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Underlying value updated to %{public}s", v20, 0xCu);
    sub_100008D24(v21);

    return (v25)(v29, v3);
  }

  else
  {

    v28 = *(v4 + 8);
    v28(v10, v3);
    return (v28)(v12, v3);
  }
}

uint64_t OptimisticValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for OptimisticValue.Transaction();
  v7 = sub_1004DE7CC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  v12 = *(v5 - 8);
  __chkstk_darwin(v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2 + *(a1 + 28), v7);
  v15 = *(v6 - 8);
  if ((*(v15 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v12 + 16))(a2, v2, v5);
  }

  else
  {
    (*(v12 + 16))(v14, &v11[*(v6 + 32)], v5);
    (*(v15 + 8))(v11, v6);
    return (*(v12 + 32))(a2, v14, v5);
  }
}

uint64_t OptimisticValue.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1002C160C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

void (*OptimisticValue.value.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x38uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v5[4] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[6] = v10;
  OptimisticValue.value.getter(a2, v10);
  return sub_1002BFFA0;
}

void sub_1002BFFA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v8);
    (*(v5 + 24))(v7, v3, v8);
    sub_1002BF8A0(v9);
    v10 = *(v6 + 8);
    v10(v3, v8);
    v10(v4, v8);
  }

  else
  {
    (*(v5 + 24))((*a1)[1], v4, v8);
    sub_1002BF8A0(v9);
    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);

  free(v2);
}

void OptimisticValue.beginTransaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v7 = *(a2 + 16);
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v34 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v36 = &v34 - v13;
  v14 = *(v7 - 8);
  v15 = __chkstk_darwin(v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v34 - v18;
  v20 = *(v14 + 16);
  v20(&v34 - v18, v4, v7);
  v20(v17, v35, v7);
  sub_1002C04D8(v19, v17, v7, a3);
  v21 = *(a2 + 28);
  v22 = sub_1004DE7CC();
  (*(*(v22 - 8) + 8))(v4 + v21, v22);
  v23 = *(v9 + 16);
  v23(v4 + v21, a3, v8);
  (*(v9 + 56))(v4 + v21, 0, 1, v8);
  if (qword_100634488 != -1)
  {
    swift_once();
  }

  v24 = sub_1004D966C();
  sub_100035430(v24, qword_10063D530);
  v25 = v36;
  v23(v36, a3, v8);
  v26 = sub_1004D964C();
  v27 = sub_1004DDF9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136446210;
    v23(v34, v25, v8);
    v30 = sub_1004DD4DC();
    v32 = v31;
    (*(v9 + 8))(v25, v8);
    v33 = sub_1000343A8(v30, v32, &v37);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "New transaction: %{public}s", v28, 0xCu);
    sub_100008D24(v29);
  }

  else
  {

    (*(v9 + 8))(v25, v8);
  }
}

uint64_t sub_1002C04D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = type metadata accessor for OptimisticValue.Transaction();
  v11 = *(*(a3 - 8) + 32);
  v11(a4 + *(v8 + 28), a1, a3);
  v9 = a4 + *(v8 + 32);

  return (v11)(v9, a2, a3);
}

uint64_t OptimisticValue.cancelTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_100634488 != -1)
    {
      swift_once();
    }

    v45 = sub_1004D966C();
    sub_100035430(v45, qword_10063D530);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_1004D964C();
    v50 = sub_1004DDF9C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_1004DD4DC();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_1000343A8(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Cancelled transaction: %{public}s", v51, 0xCu);
      sub_100008D24(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 28)]);
    sub_1002BF8A0(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t OptimisticValue.completeTransaction(_:)(char *a1, uint64_t a2)
{
  v70 = *(a2 + 16);
  v4 = type metadata accessor for OptimisticValue.Transaction();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v60 - v8;
  v9 = sub_1004DE7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v73 = *(TupleTypeMetadata2 - 8);
  v11 = __chkstk_darwin(TupleTypeMetadata2);
  v13 = &v60 - v12;
  v77 = *(v9 - 8);
  v14 = v77;
  v15 = __chkstk_darwin(v11);
  v76 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - v18;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = v5[2];
  v69 = a1;
  v62 = v22;
  v63 = v5 + 2;
  v22(&v60 - v20, a1, v4);
  v65 = v5[7];
  v66 = v5 + 7;
  v65(v21, 0, 1, v4);
  v71 = a2;
  v23 = *(a2 + 28);
  v68 = v14;
  v24 = *(v14 + 16);
  v64 = v23;
  v25 = v9;
  v24(v19, v78 + v23, v9);
  v74 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v24(v13, v21, v25);
  v75 = v26;
  v24(&v13[v26], v19, v25);
  v27 = v5;
  v28 = v5[6];
  v79 = v13;
  if (v28(v13, 1, v4) == 1)
  {
    v61 = v27;
    v29 = *(v77 + 8);
    v29(v19, v25);
    v29(v21, v25);
    v30 = v79;
    v31 = v28(&v79[v75], 1, v4) == 1;
    v32 = v30;
    if (!v31)
    {
      return (*(v73 + 8))(v32, v74);
    }

    v33 = v4;
    v29(v30, v25);
LABEL_9:
    v79 = v29;
    v44 = v25;
    if (qword_100634488 != -1)
    {
      swift_once();
    }

    v45 = sub_1004D966C();
    sub_100035430(v45, qword_10063D530);
    v46 = v67;
    v47 = v69;
    v48 = v62;
    v62(v67, v69, v33);
    v49 = sub_1004D964C();
    v50 = sub_1004DDF9C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v80 = v52;
      *v51 = 136446210;
      v48(v72, v46, v33);
      v53 = v33;
      v54 = sub_1004DD4DC();
      v56 = v55;
      (v61[1])(v46, v53);
      v57 = sub_1000343A8(v54, v56, &v80);

      *(v51 + 4) = v57;
      v33 = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Completed transaction: %{public}s", v51, 0xCu);
      sub_100008D24(v52);
    }

    else
    {

      (v61[1])(v46, v33);
    }

    v58 = v78;
    (*(*(v70 - 8) + 24))(v78, &v47[*(v33 + 32)]);
    sub_1002BF8A0(v71);
    v59 = v64;
    (v79)(v58 + v64, v44);
    return v65(v58 + v59, 1, 1, v33);
  }

  v34 = v79;
  v24(v76, v79, v25);
  v35 = &v34[v75];
  v36 = v75;
  v33 = v4;
  if (v28(v35, 1, v4) == 1)
  {
    v37 = *(v77 + 8);
    v37(v19, v25);
    v37(v21, v25);
    (v27[1])(v76, v4);
    v32 = v79;
    return (*(v73 + 8))(v32, v74);
  }

  v61 = v27;
  v39 = v79;
  v40 = v72;
  (v27[4])(v72, &v79[v36], v33);
  v41 = v76;
  LODWORD(v75) = _s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0();
  v42 = v27[1];
  v42(v40, v33);
  v43 = *(v77 + 8);
  v43(v19, v25);
  v43(v21, v25);
  v42(v41, v33);
  v29 = v43;
  result = (v43)(v39, v25);
  if (v75)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t static OptimisticValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OptimisticValue();
  OptimisticValue.value.getter(v10, v9);
  OptimisticValue.value.getter(v10, v7);
  v11 = sub_1004DD35C();
  v12 = *(v4 + 8);
  v12(v7, a3);
  v12(v9, a3);
  return v11 & 1;
}

uint64_t sub_1002C1588()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D530);
  sub_100035430(v0, qword_10063D530);
  return sub_1004D965C();
}

uint64_t sub_1002C160C(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 24))(v2, a1);

  return sub_1002BF8A0(a2);
}

uint64_t sub_1002C1674()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OptimisticValue.Transaction();
    result = sub_1004DE7CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C170C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1004D82AC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v7 <= v10)
  {
    v11 = *(v8 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 64);
  v15 = *(v8 + 64);
  if (v11)
  {
    v16 = *(v6 + 64);
  }

  else
  {
    v16 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 80);
  v18 = *(v6 + 80) | *(v9 + 80);
  v19 = v14 + v18;
  v20 = v15 + v17;
  v21 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_37;
  }

  v22 = v16 + ((v14 + v17 + (v20 & ~v17)) & ~v17) + (v19 & ~v18);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_16;
  }

  v25 = ((v21 + ~(-1 << v23)) >> v23) + 1;
  v21 = HIWORD(v25);
  if (v21)
  {
    v24 = *(a1 + v22);
    if (!v24)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

  if (v25 >= 2)
  {
LABEL_16:
    v24 = *(a1 + v22);
    if (!*(a1 + v22))
    {
      goto LABEL_36;
    }

LABEL_23:
    v26 = (v24 - 1) << v23;
    if (v22 > 3)
    {
      v26 = 0;
    }

    if (v22)
    {
      if (v22 <= 3)
      {
        v27 = v22;
      }

      else
      {
        v27 = 4;
      }

      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v28 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v28 = *a1;
        }
      }

      else if (v27 == 1)
      {
        v28 = *a1;
      }

      else
      {
        v28 = *a1;
      }
    }

    else
    {
      v28 = 0;
    }

    return v13 + (v28 | v26) + 1;
  }

LABEL_36:
  if (!v13)
  {
    return 0;
  }

LABEL_37:
  if (v7 >= v12)
  {
    v33 = *(v6 + 48);

    return v33(a1, v7, v5);
  }

  else
  {
    if (!v11)
    {
      return 0;
    }

    v29 = (a1 + v19) & ~v18;
    if (v10 >= v7)
    {
      v34 = (*(v9 + 48))(v29);
      v31 = v34 != 0;
      result = (v34 - 1);
      if (result != 0 && v31)
      {
        return result;
      }

      return 0;
    }

    v30 = (*(v6 + 48))((v20 + v29) & ~v17, v7, v5, v21);
    v31 = v30 != 0;
    result = (v30 - 1);
    if (result == 0 || !v31)
    {
      return 0;
    }
  }

  return result;
}

void sub_1002C19D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1004D82AC();
  v11 = v8;
  v12 = 0;
  v13 = *(v10 - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v8 + 64);
  if (v9 <= v15)
  {
    v17 = *(v13 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v11 + 80);
  v21 = *(v11 + 80) | *(v13 + 80);
  v22 = *(v13 + 64) + v20;
  v23 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  if (v17)
  {
    v24 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v24 + ((v16 + v21) & ~v21);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v25 > 3)
  {
    v12 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v28 = ~v19 + a2;
    if (v25 >= 4)
    {
      bzero(a1, v25);
      *a1 = v28;
      v29 = 1;
      if (v12 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v12)
      {
        a1[v25] = v29;
      }

      return;
    }

    v29 = (v28 >> (8 * v25)) + 1;
    if (v25)
    {
      v34 = v28 & ~(-1 << (8 * v25));
      bzero(a1, v25);
      if (v25 != 3)
      {
        if (v25 == 2)
        {
          *a1 = v34;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v28;
          if (v12 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v12 == 2)
        {
          *&a1[v25] = v29;
        }

        else
        {
          *&a1[v25] = v29;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v26 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
  if (!HIWORD(v26))
  {
    if (v26 < 0x100)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    if (v26 >= 2)
    {
      v12 = v27;
    }

    else
    {
      v12 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v12 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v25] = 0;
  }

  else if (v12)
  {
    a1[v25] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 >= v18)
  {
    v35 = *(v11 + 56);
    v36 = a1;
    v37 = a2;
    goto LABEL_53;
  }

  v30 = (&a1[v16 + v21] & ~v21);
  if (v18 < a2)
  {
    if (v24 <= 3)
    {
      v31 = ~(-1 << (8 * v24));
    }

    else
    {
      v31 = -1;
    }

    if (v24)
    {
      v32 = v31 & (~v18 + a2);
      if (v24 <= 3)
      {
        v33 = v24;
      }

      else
      {
        v33 = 4;
      }

      bzero(v30, v24);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_46:
          *v30 = v32;
          return;
        }

LABEL_80:
        *v30 = v32;
        return;
      }

LABEL_81:
      if (v33 == 3)
      {
        *v30 = v32;
        v30[2] = BYTE2(v32);
      }

      else
      {
        *v30 = v32;
      }

      return;
    }

    return;
  }

  if (a2 < v17)
  {
    if (v15 >= v9)
    {
      v39 = *(v14 + 56);

      v39(v30, (a2 + 1));
      return;
    }

    v35 = *(v11 + 56);
    v36 = (&v30[v22] & ~v20);
    v37 = (a2 + 1);
LABEL_53:

    v35(v36, v37, v9, v7);
    return;
  }

  if (v23 <= 3)
  {
    v38 = ~(-1 << (8 * v23));
  }

  else
  {
    v38 = -1;
  }

  if (v23)
  {
    v32 = v38 & (a2 - v17);
    if (v23 <= 3)
    {
      v33 = ((v16 + v20 + (v22 & ~v20)) & ~v20) + v16;
    }

    else
    {
      v33 = 4;
    }

    bzero(v30, v23);
    if (v33 <= 2)
    {
      if (v33 == 1)
      {
        goto LABEL_46;
      }

      goto LABEL_80;
    }

    goto LABEL_81;
  }
}

uint64_t sub_1002C1DF8()
{
  result = sub_1004D82AC();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C1E80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = ((*(v9 + 64) + v11 + (v13 & ~v11)) & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1002C20CC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1004D82AC() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((*(v10 + 64) + v13 + ((v12 + v13) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

unint64_t PlayActivityFeatureIdentifier.rawValue.getter(char a1)
{
  result = 0x65645F6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x5F7972617262696CLL;
      break;
    case 3:
      result = 0x74616C69706D6F63;
      break;
    case 4:
      result = 0x7265736F706D6F63;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x726F665F6564616DLL;
      break;
    case 7:
      result = 0x736569766F6DLL;
      break;
    case 8:
      result = 0x69765F636973756DLL;
      break;
    case 9:
      result = 1936615792;
      break;
    case 10:
      result = 0x7473696C79616C70;
      break;
    case 11:
    case 12:
      result = 0x7473696C79616C70;
      break;
    case 13:
      result = 0x796C746E65636572;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x73676E6F73;
      break;
    case 16:
      result = 0x73776F6873;
      break;
    case 17:
      result = 0x7365646F73697065;
      break;
    case 18:
      result = 0x79616C705F776F6ELL;
      break;
    case 19:
      result = 0x616C705F696E696DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C2638(char *a1, char *a2)
{
  v2 = *a2;
  v3 = PlayActivityFeatureIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PlayActivityFeatureIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_1002C26C0()
{
  v1 = *v0;
  sub_1004DF26C();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1002C2724()
{
  PlayActivityFeatureIdentifier.rawValue.getter(*v0);
  sub_1004DD55C();
}

Swift::Int sub_1002C2778()
{
  v1 = *v0;
  sub_1004DF26C();
  PlayActivityFeatureIdentifier.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1002C27D8@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_1002C2808@<X0>(unint64_t *a1@<X8>)
{
  result = PlayActivityFeatureIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s9MusicCore29PlayActivityFeatureIdentifierO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1004DF0DC();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1002C288C()
{
  result = qword_10063D648;
  if (!qword_10063D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063D648);
  }

  return result;
}

uint64_t PlaylistSortingController.trackListSortDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1);
  return v2;
}

uint64_t PlaylistSortingController.trackListSortDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6);
}

uint64_t sub_1002C2A10(__int16 a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v5 = v4[1];
  result = sub_10009F3D0(a1, *v4);
  if ((result & 1) == 0 || ((((a1 & 0x100) == 0) ^ v5) & 1) == 0)
  {
    v7 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *v4;
      if (v4[1])
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v8(v10 | v9);
      sub_10000DE74(v8);
    }

    v11 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate;
    *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 1;
    v12 = [objc_opt_self() standardUserDefaults];
    v13 = *v4;
    v14 = v4[1];
    v19[3] = &type metadata for Actions.SortPlaylist.TrackListSort;
    v19[4] = sub_1001CC1C8();
    v19[5] = sub_1001CC21C();
    LOBYTE(v19[0]) = v13;
    BYTE1(v19[0]) = v14;
    sub_1004DCF1C();
    if (!v15)
    {
      sub_1004DCF4C();
    }

    sub_100030C58();
    v16 = sub_1004DE87C();
    v18 = v17;

    v20._countAndFlagsBits = v16;
    v20._object = v18;
    sub_1004DD5FC(v20);

    NSUserDefaults.encodeValue(_:forKey:)(v19);

    result = sub_100008D24(v19);
    *(v2 + v11) = 0;
  }

  return result;
}

uint64_t PlaylistSortingController.currentTrackListSort.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | *v1;
}

uint64_t PlaylistSortingController.currentTrackListSort.setter(__int16 a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C2A10(v6 | v4);
}

void (*PlaylistSortingController.currentTrackListSort.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 40) = *v6;
  *(v4 + 41) = v7;
  return sub_1002C2DA4;
}

void sub_1002C2DA4(uint64_t a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 41);
  v4 = *v2;
  v5 = v2[1];
  *v2 = *(*a1 + 40);
  v2[1] = v3;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002C2A10(v6 | v4);

  free(v1);
}

uint64_t PlaylistSortingController.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100637A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1004DD05C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort) = 256;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) = 0;
  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = 0;
  sub_1000108DC(a1, v6, &qword_100637A00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10001074C(a1, &qword_100637A00);
    sub_10001074C(v6, &qword_100637A00);
LABEL_15:
    sub_10000DE74(*(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1004DC7AC();
  sub_1004DC79C();
  sub_1004DC63C();

  v12 = sub_1004DC73C();

  if ((v12 & 1) == 0)
  {
    sub_10001074C(a1, &qword_100637A00);
    (*(v8 + 8))(v10, v7);
    goto LABEL_15;
  }

  (*(v8 + 16))(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist, v10, v7);
  v39 = objc_opt_self();
  v13 = [v39 standardUserDefaults];
  v43 = 0x2D74726F53;
  v44 = 0xE500000000000000;
  v14 = sub_1004DCF1C();
  v40 = a1;
  if (!v15)
  {
    v14 = sub_1004DCF4C();
  }

  v49 = v14;
  v50 = v15;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 45;
  v46 = 0xE100000000000000;
  sub_100030C58();
  v16 = sub_1004DE87C();
  v18 = v17;

  v51._countAndFlagsBits = v16;
  v51._object = v18;
  sub_1004DD5FC(v51);

  sub_1001CC1C8();
  sub_1001CC21C();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, &v45);

  if ((v45 & 0xFF00) == 0x200)
  {
    v19 = [v39 standardUserDefaults];
    v20 = sub_1004DCF1C();
    if (!v21)
    {
      v20 = sub_1004DCF4C();
    }

    v43 = v20;
    v44 = v21;
    v49 = 46;
    v50 = 0xE100000000000000;
    v47 = 45;
    v48 = 0xE100000000000000;
    LOBYTE(v22) = 1;
    v23 = sub_1004DE87C();
    v25 = v24;

    v26 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v23, v25);

    v27 = 0;
    if (v26 <= 6u)
    {
      switch(v26)
      {
        case 1u:
          v27 = 0;
          LOBYTE(v22) = 0;
          break;
        case 2u:
          v27 = 1;
          break;
        case 6u:
          v27 = 2;
          break;
      }

      goto LABEL_25;
    }

    switch(v26)
    {
      case 7u:
        v27 = 3;
        break;
      case 0xBu:
        goto LABEL_21;
      case 0xCu:
        LOBYTE(v22) = 0;
LABEL_21:
        v27 = 4;
        break;
    }
  }

  else
  {
    v27 = v45;
    v22 = BYTE1(v45) & 1;
  }

LABEL_25:
  v28 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  *v28 = v27;
  v28[1] = v22;
  v49 = 0x2D74726F53;
  v50 = 0xE500000000000000;
  v29 = sub_1004DCF1C();
  if (!v30)
  {
    v29 = sub_1004DCF4C();
  }

  v31 = v29;
  v32 = v30;
  v39 = sub_1002C35B0();
  v47 = v31;
  v48 = v32;
  v45 = 46;
  v46 = 0xE100000000000000;
  v41 = 45;
  v42 = 0xE100000000000000;
  v33 = sub_1004DE87C();
  v35 = v34;

  v52._countAndFlagsBits = v33;
  v52._object = v35;
  sub_1004DD5FC(v52);

  v36 = swift_allocObject();
  swift_weakInit();

  v37 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v49, 0, 0, sub_1002C3A20, v36, &type metadata for String);

  sub_10001074C(v40, &qword_100637A00);

  (*(v8 + 8))(v10, v7);

  *(v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_userDefaultsSortObserver) = v37;

  return v2;
}

unint64_t sub_1002C35B0()
{
  result = qword_10063D678;
  if (!qword_10063D678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063D678);
  }

  return result;
}

uint64_t sub_1002C35FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002C3634(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((*(result + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_ignoreUserDefaultsUpdate) & 1) == 0)
    {
      v6 = result;
      sub_1000108DC(a1, v15, &qword_100638E60);
      if (!v16)
      {

        return sub_10001074C(v15, &qword_100638E60);
      }

      if (swift_dynamicCast())
      {
        v8 = v14[1];
        v7 = v14[2];
        sub_1004D7AAC();
        swift_allocObject();
        sub_1004D7A9C();
        sub_1001CC1C8();
        sub_1004D7A8C();

        v9 = v15[0];
        v10 = v15[1];
        v11 = sub_1004DDA8C();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        sub_1004DDA4C();

        v12 = sub_1004DDA3C();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v6;
        *(v13 + 40) = v9;
        *(v13 + 41) = v10;
        sub_10011F560(0, 0, v4, &unk_100526CF0, v13);

        sub_100010598(v8, v7);
      }
    }
  }

  return result;
}

uint64_t sub_1002C3A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  *(v5 + 56) = a5;
  *(v5 + 40) = a4;
  sub_1004DDA4C();
  *(v5 + 48) = sub_1004DDA3C();
  v7 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002C3AC4, v7, v6);
}

uint64_t sub_1002C3AC4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = (v2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = HIBYTE(v1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  sub_1002C2A10(v6 | v4);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t PlaylistSortingController.actionBuilder.getter()
{
  v1 = sub_100004CB8(&qword_100636058);
  __chkstk_darwin(v1 - 8);
  v72 = v58 - v2;
  v71 = type metadata accessor for Actions.SortPlaylist.Context();
  v70 = *(v71 - 8);
  v3 = __chkstk_darwin(v71);
  v68 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = v58 - v6;
  v69 = v7;
  __chkstk_darwin(v5);
  v63 = v58 - v8;
  v66 = sub_100004CB8(&qword_100635B30);
  v65 = *(v66 - 8);
  v9 = __chkstk_darwin(v66);
  v62 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = v58 - v12;
  v13 = __chkstk_darwin(v11);
  v60 = v58 - v14;
  v64 = v15;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  v73 = v0;
  v58[1] = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v59 = v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort;
  swift_beginAccess();
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v77 = xmmword_100511DA0;
  do
  {
    v76 = v19;
    v75 = v18;
    v20 = *(&off_1005D3E48 + v18 + 32);
    v21 = *v59;
    v22 = v59[1];
    v23 = v72;
    sub_1004DCF0C();
    v24 = v71;
    v25 = *(v71 + 24);
    v26 = sub_1004DCEEC();
    v27 = v63;
    (*(*(v26 - 8) + 56))(&v63[v25], 1, 1, v26);
    *v27 = v20;
    v27[1] = v21;
    v27[2] = v22;
    v28 = v73;

    sub_1000A068C(v23, &v27[v25]);
    v29 = &v27[*(v24 + 28)];
    *v29 = sub_1002C48CC;
    v29[1] = v28;
    v30 = v67;
    sub_1000A0A80(v27, v67);
    v31 = v20 + 14;
    v74 = v20 + 14;
    v32 = v68;
    sub_1000A0A80(v27, v68);
    v33 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v34 = swift_allocObject();
    sub_1000A0DDC(v32, v34 + v33);
    sub_1000A0DDC(v30, v17);
    v35 = v66;
    v17[*(v66 + 36)] = v31;
    *&v17[v35[11]] = 0x4014000000000000;
    v36 = &v17[v35[10]];
    *v36 = variable initialization expression of _NSRange.NSRangeIterator.current;
    v36[1] = 0;
    v37 = &v17[v35[12]];
    *v37 = &unk_100517F60;
    *(v37 + 1) = v34;
    v38 = &v17[v35[13]];
    *v38 = &unk_100517F68;
    *(v38 + 1) = 0;
    sub_1002C4AF8(v27);
    sub_100004CB8(&qword_1006350A8);
    inited = swift_initStackObject();
    *(inited + 16) = v77;
    v40 = v60;
    sub_1000108DC(v17, v60, &qword_100635B30);
    v41 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v42 = swift_allocObject();
    sub_1002C4B54(v40, v42 + v41);
    v43 = v61;
    sub_1000108DC(v17, v61, &qword_100635B30);
    v44 = swift_allocObject();
    sub_1002C4B54(v43, v44 + v41);
    v45 = v62;
    sub_1000108DC(v17, v62, &qword_100635B30);
    v46 = swift_allocObject();
    sub_1002C4B54(v45, v46 + v41);
    *(inited + 32) = v74;
    *(inited + 40) = sub_1002C4BC4;
    *(inited + 48) = v42;
    *(inited + 56) = sub_1002C4C40;
    *(inited + 64) = v44;
    *(inited + 72) = &unk_100526B48;
    *(inited + 80) = v46;
    v19 = v76;
    sub_10001074C(v17, &qword_100635B30);
    sub_100004CB8(&qword_100634FB0);
    v47 = swift_initStackObject();
    *(v47 + 16) = v77;
    *(v47 + 32) = inited;
    v48 = v47 + 32;
    v49 = sub_100046EC0(v47);
    swift_setDeallocating();
    sub_10001074C(v48, &qword_100634FB8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10003B6E8(0, v19[2] + 1, 1, v19);
    }

    v51 = v19[2];
    v50 = v19[3];
    v52 = v75;
    if (v51 >= v50 >> 1)
    {
      v19 = sub_10003B6E8((v50 > 1), v51 + 1, 1, v19);
    }

    v18 = v52 + 1;
    v19[2] = v51 + 1;
    v19[v51 + 4] = v49;
  }

  while (v18 != 5);
  v53 = sub_100046EC0(v19);

  v54 = swift_initStackObject();
  *(v54 + 16) = v77;
  *(v54 + 32) = v53;
  v55 = v54 + 32;
  v56 = sub_100046EC0(v54);
  swift_setDeallocating();
  sub_10001074C(v55, &qword_100634FB8);
  return v56;
}

uint64_t sub_1002C42EC(__int16 a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = HIBYTE(a1) & 1;
  if (v5)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return sub_1002C2A10(v6 | v4);
}

uint64_t static PlaylistSortingController.apply(for:to:)(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100637A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1004DD05C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  swift_allocObject();
  result = PlaylistSortingController.init(_:)(v4);
  if (result)
  {
    PlaylistSortingController.apply(to:)();
  }

  return result;
}

uint64_t PlaylistSortingController.apply(to:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v2 = *v1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      swift_getKeyPath();
      sub_100004CB8(&qword_10063D680);
      sub_1004DC1EC();

      swift_getKeyPath();
      sub_1004DC1EC();
    }

    else
    {
      if (v2 != 3)
      {
        swift_getKeyPath();
        sub_100004CB8(&qword_10063D680);
        sub_1004DC1EC();
        goto LABEL_10;
      }

      swift_getKeyPath();
      sub_100004CB8(&qword_10063D680);
      sub_1004DC1EC();
    }

    swift_getKeyPath();
    sub_1004DC1EC();
LABEL_10:

LABEL_12:
    swift_getKeyPath();
    goto LABEL_13;
  }

  if (*v1)
  {
    swift_getKeyPath();
    sub_100004CB8(&qword_10063D680);
    sub_1004DC1EC();

    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_100004CB8(&qword_10063D680);
LABEL_13:
  sub_1004DC1EC();
}

uint64_t PlaylistSortingController.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004DD05C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return v0;
}

uint64_t PlaylistSortingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_playlist;
  v2 = sub_1004DD05C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000DE74(*(v0 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange));

  return swift_deallocClassInstance();
}

uint64_t sub_1002C4848()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_10063D650);
  sub_100035430(v0, qword_10063D650);
  return sub_1004D965C();
}

uint64_t sub_1002C48D8()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = sub_1004DCEEC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1002C4A14(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_1000A0AE4(a1, a2, v2 + v7);
}

uint64_t sub_1002C4AF8(uint64_t a1)
{
  v2 = type metadata accessor for Actions.SortPlaylist.Context();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C4B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100635B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C4BC4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_100004CB8(&qword_100635B30) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000604E8(v4, a1);
}

uint64_t sub_1002C4C40()
{
  v1 = *(sub_100004CB8(&qword_100635B30) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10006051C(v2);
}

uint64_t sub_1002C4CB0()
{
  v2 = *(sub_100004CB8(&qword_100635B30) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100035B28;

  return sub_100060A30(v0 + v3);
}

uint64_t sub_1002C4E00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004D8BBC();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1002C4E68@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_100008C70(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1002C4EC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100008C70(a1, a1[3]);
  result = sub_1004D8BCC();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for PlaylistSortingController()
{
  result = qword_10063D6B0;
  if (!qword_10063D6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002C4F5C()
{
  result = sub_1004DD05C();
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

uint64_t sub_1002C5014()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002C5054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (*(v1 + 41))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_1002C3A28(a1, v4, v5, v6, v8 | v7);
}

double QRCode.init(data:errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1002C5B7C(a1, a2, a3, v7);
  result = *v7;
  v6 = v7[1];
  *a4 = v7[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v8;
  return result;
}

uint64_t QRCode.data.getter()
{
  v1 = *(v0 + 8);
  sub_100010530(v1, *(v0 + 16));
  return v1;
}

void sub_1002C51D4(void *a1, void *a2, CGImage *a3, uint64_t a4, CGContext *a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10, double a11)
{
  [a1 beginPage];
  v69 = a1;
  v19 = [a1 CGContext];
  if (qword_100634498 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v20 = *&qword_10063D758;
    CGContextSetLineWidth(v19, *&qword_10063D758);

    v21 = objc_opt_self();
    v22 = [v21 whiteColor];
    [v22 setStroke];

    v23 = [v21 whiteColor];
    [v23 setFill];

    v24 = v20 * a6;
    v72.origin.x = a7;
    v72.origin.y = a8;
    v72.size.width = a9;
    v72.size.height = a10;
    v25 = CGRectGetWidth(v72) - v20 * a6;
    v73.origin.x = a7;
    v73.origin.y = a8;
    v73.size.width = a9;
    a9 = v20;
    v73.size.height = a10;
    v26 = CGRectGetHeight(v73) - v20 * a6;
    sub_100004CB8(&qword_100638368);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100511A40;
    *(inited + 32) = 0;
    *(inited + 40) = 0;
    *(inited + 48) = v24;
    *(inited + 56) = v24;
    v65 = v25;
    *(inited + 64) = v25;
    *(inited + 72) = 0;
    *(inited + 80) = v24;
    *(inited + 88) = v24;
    *(inited + 96) = 0;
    v67 = v26;
    *(inited + 104) = v26;
    *(inited + 112) = v24;
    *(inited + 120) = v24;
    v28 = objc_opt_self();
    v29 = *(inited + 32);
    v30 = *(inited + 40);
    a10 = *(inited + 48);
    v31 = *(inited + 56);
    v74.origin.x = v29;
    v74.origin.y = v30;
    v74.size.width = a10;
    v74.size.height = v31;
    v66 = a9 * 0.5;
    v75 = CGRectInset(v74, a9 * 0.5, a9 * 0.5);
    v32 = [v28 _bezierPathWithPillRect:v75.origin.x cornerRadius:{v75.origin.y, v75.size.width, v75.size.height, 10.0}];
    if (v32)
    {
      v33 = v32;
      [v32 setLineWidth:a9];
      [v33 stroke];
      v64 = a9;
      v34 = a9 * a11;
      v76.origin.x = v29;
      v76.origin.y = v30;
      v76.size.width = a10;
      v76.size.height = v31;
      v35 = v34 * 0.5;
      v63 = CGRectGetMidX(v76) - v34 * 0.5;
      v77.origin.x = v29;
      v77.origin.y = v30;
      v77.size.width = a10;
      v77.size.height = v31;
      MidY = CGRectGetMidY(v77);
      v37 = v34;
      v38 = v34;
      a9 = v64;
      v39 = [v28 _bezierPathWithPillRect:v63 cornerRadius:{MidY - v35, v37, v38, 2.0}];
      [v39 fill];
    }

    v78.origin.y = 0.0;
    a8 = v66;
    v78.origin.x = v65;
    v78.size.width = v24;
    v78.size.height = v24;
    v79 = CGRectInset(v78, v66, v66);
    v40 = [v28 _bezierPathWithPillRect:v79.origin.x cornerRadius:{v79.origin.y, v79.size.width, v79.size.height, 10.0}];
    if (v40)
    {
      v41 = v40;
      [v40 setLineWidth:a9];
      [v41 stroke];
      v80.origin.y = 0.0;
      v80.origin.x = v65;
      v80.size.width = v24;
      v80.size.height = v24;
      a10 = CGRectGetMidX(v80) - a9 * a11 * 0.5;
      v81.origin.y = 0.0;
      v81.origin.x = v65;
      v81.size.width = v24;
      v81.size.height = v24;
      v42 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v81) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v42 fill];
    }

    else
    {
    }

    v82.origin.x = 0.0;
    v82.origin.y = v67;
    v82.size.width = v24;
    v82.size.height = v24;
    v83 = CGRectInset(v82, v66, v66);
    v43 = [v28 _bezierPathWithPillRect:v83.origin.x cornerRadius:{v83.origin.y, v83.size.width, v83.size.height, 10.0}];
    if (v43)
    {
      v44 = v43;
      [v43 setLineWidth:a9];
      [v44 stroke];
      v84.origin.x = 0.0;
      v84.origin.y = v67;
      v84.size.width = v24;
      v84.size.height = v24;
      a10 = CGRectGetMidX(v84) - a9 * a11 * 0.5;
      v85.origin.x = 0.0;
      v85.origin.y = v67;
      v85.size.width = v24;
      v85.size.height = v24;
      v45 = [v28 _bezierPathWithPillRect:a10 cornerRadius:{CGRectGetMidY(v85) - a9 * a11 * 0.5, a9 * a11, a9 * a11, 2.0}];
      [v45 fill];
    }

    [a2 extent];
    Height = CGRectGetHeight(v86);
    if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (Height <= -9.22337204e18)
    {
      goto LABEL_69;
    }

    if (Height >= 9.22337204e18)
    {
      goto LABEL_70;
    }

    v47 = Height;
    if (Height < 1)
    {
      goto LABEL_71;
    }

    v19 = a5;
    if (Height == 1)
    {
      return;
    }

    v48 = a6;
    a7 = a9 + -1.0;
    v49 = 1;
    *&a11 = Height;
    while (1)
    {
      if (v49 == v47)
      {
        goto LABEL_62;
      }

      [a2 extent];
      Width = CGRectGetWidth(v87);
      if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (Width <= -9.22337204e18)
      {
        goto LABEL_64;
      }

      if (Width >= 9.22337204e18)
      {
        goto LABEL_65;
      }

      v51 = Width;
      if (Width < 1)
      {
        goto LABEL_66;
      }

      if (Width != 1)
      {
        for (i = 1; v51 != i; ++i)
        {
          BytesPerRow = CGImageGetBytesPerRow(a3);
          v55 = BytesPerRow * v49;
          if ((BytesPerRow * v49) >> 64 != (BytesPerRow * v49) >> 63)
          {
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
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
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v56 = i * a4;
          if ((i * a4) >> 64 != (i * a4) >> 63)
          {
            goto LABEL_49;
          }

          v57 = __OFADD__(v55, v56);
          v58 = v55 + v56;
          if (v57)
          {
            goto LABEL_50;
          }

          if (!*(v19 + v58))
          {
            if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_51;
            }

            if (a6 <= -9.22337204e18)
            {
              goto LABEL_52;
            }

            if (a6 >= 9.22337204e18)
            {
              goto LABEL_53;
            }

            [a2 extent];
            v59 = CGRectGetWidth(v89);
            if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_54;
            }

            if (v59 <= -9.22337204e18)
            {
              goto LABEL_55;
            }

            if (v59 >= 9.22337204e18)
            {
              goto LABEL_56;
            }

            v60 = v59;
            if (v49 <= v48)
            {
              if (i <= v48)
              {
                continue;
              }

              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_60;
              }

              if (__OFSUB__(v61, 1))
              {
                goto LABEL_61;
              }

              if (i >= v61 - 1)
              {
                continue;
              }
            }

            else
            {
              v57 = __OFSUB__(v60, v48);
              v61 = v60 - v48;
              if (v57)
              {
                goto LABEL_57;
              }
            }

            v57 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v57)
            {
              goto LABEL_58;
            }

            if (v49 < v62 || i > v48)
            {
              if (__OFSUB__(i, 1))
              {
                goto LABEL_59;
              }

              a10 = a9 * (i - 1);
              v53 = [v69 CGContext];
              v88.origin.x = a10;
              v88.origin.y = a9 * (v49 - 1);
              v88.size.width = a9 + -1.0;
              v88.size.height = a9 + -1.0;
              CGContextFillEllipseInRect(v53, v88);

              v19 = a5;
            }
          }
        }
      }

      ++v49;
      v47 = *&a11;
      if (v49 == *&a11)
      {
        return;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
}

double QRCode.with(errorCorrectionLevel:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_100010530(v6, v5);
  sub_1002C5B7C(v6, v5, a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

double QRCode.dotAdjustedWidth(with:scale:)()
{
  v1 = *v0;
  UIRoundToScale();
  return v2 * v1;
}

CGMutablePathRef QRCode.dotAlignedPath(with:in:imageBounds:)(char *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v20.origin.x = a6;
  v20.origin.y = a7;
  v20.size.width = a8;
  v20.size.height = a9;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetMinY(v22);

  result = CGPathCreateMutable();
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v15 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_10003B840(isUniquelyReferenced_nonNull_native, v15, 1, a1);
    }

    sub_100154F34(0, 1, 0);
    sub_1004DE03C();
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = a1 + 40;
      do
      {
        sub_1004DE04C();
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002C5B7C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = objc_opt_self();
  sub_100010530(a1, a2);
  v9 = [v8 QRCodeGenerator];
  isa = sub_1004D80FC().super.isa;
  sub_100010598(a1, a2);
  v11 = sub_1004DD3FC();
  [v9 setValue:isa forKey:v11];

  v12 = v9;
  v13 = sub_1004DD3FC();

  v14 = sub_1004DD3FC();
  [v12 setValue:v13 forKey:v14];

  v15 = [v12 outputImage];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v55 = a3;
  v17 = [objc_allocWithZone(CIContext) init];
  [v16 extent];
  v18 = [v17 createCGImage:v16 fromRect:?];

  if (!v18)
  {

LABEL_18:
LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  v19 = CGImageGetDataProvider(v18);
  if (!v19)
  {

    goto LABEL_19;
  }

  v20 = v19;
  v21 = CGDataProviderCopyData(v19);

  if (!v21)
  {

    goto LABEL_20;
  }

  v53 = v21;
  BytePtr = CFDataGetBytePtr(v21);
  if (BytePtr)
  {
    v23 = BytePtr;
    v24 = CGImageGetBitsPerPixel(v18) / 8;
    v25 = Int.seconds.getter(7);
    v26 = Int.seconds.getter(3);
    [v16 extent];
    v27 = CGRectGetWidth(v57) + -2.0;
    if (qword_100634498 != -1)
    {
      swift_once();
    }

    v28 = *&qword_10063D758;
    v29 = v27 * *&qword_10063D758;
    [v16 extent];
    v30 = v28 * (CGRectGetHeight(v58) + -2.0);
    v54 = [objc_allocWithZone(UIGraphicsPDFRenderer) initWithBounds:{0.0, 0.0, v29, v30}];
    v31 = swift_allocObject();
    *(v31 + 16) = v25;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0;
    *(v31 + 40) = v29;
    *(v31 + 48) = v30;
    *(v31 + 56) = v26;
    *(v31 + 64) = v16;
    *(v31 + 72) = v18;
    *(v31 + 80) = v24;
    *(v31 + 88) = v23;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1002C62D0;
    *(v32 + 24) = v31;
    aBlock[4] = sub_10001E39C;
    aBlock[5] = v32;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001E3C4;
    aBlock[3] = &unk_1005EB528;
    v33 = _Block_copy(aBlock);

    v52 = v16;
    v51 = v18;

    v34 = [v54 PDFDataWithActions:v33];
    _Block_release(v33);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = sub_1004D810C();
    v37 = v36;

    v38 = sub_1004D80FC().super.isa;
    v39 = CGDataProviderCreateWithCFData(v38);

    if (v39)
    {
      v40 = CGPDFDocumentCreateWithProvider(v39);
      if (v40)
      {
        v41 = v40;
        v42 = CGPDFDocumentGetPage(v40, 1uLL);
        if (v42)
        {
          v50 = v42;
          v43 = [objc_opt_self() _imageWithCGPDFPage:v42];
          if (v43)
          {
            v44 = v43;
            [v52 extent];
            Width = CGRectGetWidth(v59);

            sub_100010598(v35, v37);
            v46 = Width + -2.0;
            if (COERCE__INT64(fabs(Width + -2.0)) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v47 = v55;
              if (v46 > -9.22337204e18)
              {
                if (v46 < 9.22337204e18)
                {
                  v48 = v46;
                  sub_100010530(a1, a2);
                  v49 = v44;
                  sub_100010598(a1, a2);

LABEL_21:
                  *a4 = v48;
                  a4[1] = a1;
                  a4[2] = a2;
                  a4[3] = v44;
                  a4[4] = v47;
                  return;
                }

                goto LABEL_32;
              }

LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          sub_100010598(v35, v37);
        }

        else
        {

          sub_100010598(v35, v37);
        }
      }

      else
      {

        sub_100010598(v35, v37);
      }
    }

    else
    {

      sub_100010598(v35, v37);
    }

    v21 = sub_1002C62D0;
LABEL_20:
    sub_100010598(a1, a2);
    sub_10000DE74(v21);
    v48 = 0;
    a1 = 0;
    a2 = 0;
    v44 = 0;
    v47 = 0;
    goto LABEL_21;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1002C6290()
{

  return swift_deallocObject();
}

uint64_t sub_1002C62F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *OS_os_log.sharePlay.unsafeMutableAddressor()
{
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sharePlay;
}

uint64_t static OSSignposter.music(_:)()
{

  return sub_1004D95DC();
}

uint64_t static OSSignposter.music(_:)(void *a1)
{
  v2 = sub_1004D966C();
  __chkstk_darwin(v2 - 8);
  v3 = a1;
  sub_1004D967C();
  return sub_1004D95BC();
}

uint64_t sub_1002C647C()
{
  v0 = sub_1004D95EC();
  sub_100035718(v0, static OSSignposter.launch);
  sub_100035430(v0, static OSSignposter.launch);
  return sub_1004D95DC();
}

uint64_t sub_1002C6514(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1004D95EC();

  return sub_100035430(v3, a2);
}

void sub_1002C658C()
{
  v0 = sub_1004D966C();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004D95EC();
  sub_100035718(v1, static OSSignposter.sharePlay);
  sub_100035430(v1, static OSSignposter.sharePlay);
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.sharePlay;
  sub_1004D967C();
  sub_1004D95BC();
}

uint64_t sub_1002C66A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1004D95EC();
  v6 = sub_100035430(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1002C673C()
{
  sub_10014D868();
  result = sub_1004DE7BC();
  static OS_os_log.sharePlay = result;
  return result;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1006344B0 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.sharePlay;

  return v1;
}

uint64_t sub_1002C6800()
{
  sub_1002CB8C8(v0, v8);
  if (v9 == 1)
  {
    v1 = *&v8[0];
    v2 = MPModelObject.mediaKitPlayableKind.getter();

    return *&aSongs_4[8 * v2];
  }

  else
  {
    sub_1000ABC20(v8, v6);
    v4 = v7;
    sub_100008C70(v6, v7);
    v5 = sub_1002C68B4(v4);
    sub_100008D24(v6);
    return v5;
  }
}

uint64_t sub_1002C68B4(uint64_t a1)
{
  v106 = sub_1004DD01C();
  v105 = *(v106 - 8);
  v3 = __chkstk_darwin(v106);
  v100 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v102 = &v96 - v5;
  v110 = sub_1004DCAAC();
  v104 = *(v110 - 8);
  v6 = __chkstk_darwin(v110);
  v103 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v96 - v8;
  v112 = sub_1004D8BFC();
  v109 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v108 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v143 = &v96 - v11;
  v115 = sub_1004D916C();
  v111 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1004D911C();
  v113 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1004D91EC();
  v116 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1004D92AC();
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_1004DCD1C();
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1004DC95C();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v18 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1004DD05C();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1004DC2DC();
  v130 = *(v134 - 8);
  __chkstk_darwin(v134);
  v142 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1004D8FEC();
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1004DCA0C();
  v135 = *(v141 - 8);
  v22 = __chkstk_darwin(v141);
  v140 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 - 8);
  v25 = __chkstk_darwin(v22);
  v101 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = &v96 - v28;
  v30 = __chkstk_darwin(v27);
  v139 = &v96 - v31;
  __chkstk_darwin(v30);
  v33 = &v96 - v32;
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v34 = sub_1004D966C();
  v35 = sub_100035430(v34, static Logger.capabilityUpsell);
  v37 = v24 + 16;
  v36 = *(v24 + 16);
  v144 = v1;
  v36(v33, v1, a1);
  v99 = v35;
  v38 = sub_1004D964C();
  v39 = sub_1004DDF6C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v98 = v29;
    v41 = v40;
    v42 = swift_slowAlloc();
    v138 = v24;
    v96 = v42;
    v146 = v42;
    *v41 = 136315138;
    v36(v139, v33, a1);
    v43 = sub_1004DD4DC();
    v97 = v18;
    v44 = a1;
    v46 = v45;
    v145 = *(v138 + 8);
    v145(v33, v44);
    v47 = sub_1000343A8(v43, v46, &v146);
    a1 = v44;
    v18 = v97;

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "MusicItem - mediaKind =%s", v41, 0xCu);
    sub_100008D24(v96);

    v29 = v98;
  }

  else
  {

    v145 = *(v24 + 8);
    v145(v33, a1);
  }

  v48 = v141;
  v49 = v144;
  v141 = v37;
  v36(v29, v144, a1);
  v50 = v140;
  v51 = swift_dynamicCast();
  v53 = v142;
  v52 = v143;
  if (!v51)
  {
    v55 = v36;
    v56 = v136;
    v57 = v137;
    if (swift_dynamicCast())
    {
      (*(v133 + 8))(v56, v57);
      v54 = 0x6F6D2D636973756DLL;
      goto LABEL_36;
    }

    v58 = v134;
    if (swift_dynamicCast())
    {
      (*(v130 + 8))(v53, v58);
      v54 = 0x69762D636973756DLL;
      goto LABEL_36;
    }

    v60 = v131;
    v59 = v132;
    if (swift_dynamicCast())
    {
      (*(v128 + 8))(v60, v59);
      v54 = 0x7473696C79616C70;
      goto LABEL_36;
    }

    v61 = v18;
    v62 = v129;
    if (swift_dynamicCast())
    {
      (*(v125 + 8))(v61, v62);
      v54 = 0x73676E6F73;
      goto LABEL_36;
    }

    v63 = v126;
    v64 = v127;
    if (swift_dynamicCast())
    {
      (*(v122 + 8))(v63, v64);
      v54 = 0x736E6F6974617473;
      goto LABEL_36;
    }

    v65 = v123;
    v66 = v124;
    if (swift_dynamicCast())
    {
      (*(v119 + 8))(v65, v66);
      v54 = 0x6F736970652D7674;
      goto LABEL_36;
    }

    v67 = v120;
    v68 = v121;
    if (swift_dynamicCast())
    {
      (*(v116 + 8))(v67, v68);
      v54 = 0x73776F68732D7674;
      goto LABEL_36;
    }

    v69 = v117;
    v70 = v118;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v113 + 8))(v69, v70);
      goto LABEL_36;
    }

    v71 = v114;
    v72 = v115;
    if (swift_dynamicCast())
    {
      v54 = 0x646564616F6C7075;
      (*(v111 + 8))(v71, v72);
      goto LABEL_36;
    }

    v73 = v52;
    v74 = v112;
    if (swift_dynamicCast())
    {
      v75 = v109;
      v76 = v108;
      (*(v109 + 32))(v108, v73, v74);
      sub_1002C9890(&v146);
    }

    else
    {
      v77 = v107;
      v74 = v110;
      if (!swift_dynamicCast())
      {
        v81 = v102;
        if (!swift_dynamicCast())
        {
          v85 = v55;
          v86 = v101;
          v85(v101, v49, a1);
          v87 = sub_1004D964C();
          v88 = sub_1004DDF8C();
          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v144 = swift_slowAlloc();
            v146 = v144;
            *v89 = 136315138;
            v85(v139, v86, a1);
            v90 = sub_1004DD4DC();
            v91 = v86;
            v92 = v90;
            v94 = v93;
            v145(v91, a1);
            v95 = sub_1000343A8(v92, v94, &v146);

            *(v89 + 4) = v95;
            _os_log_impl(&_mh_execute_header, v87, v88, "Unsupported MusicItem kind=%s", v89, 0xCu);
            sub_100008D24(v144);
          }

          else
          {

            v145(v86, a1);
          }

          goto LABEL_35;
        }

        v82 = v100;
        (*(v105 + 32))(v100, v81, v106);
        sub_1002C8EC0(&v146);
        v83 = v147;
        if (v147)
        {
          v84 = v148;
          sub_100008C70(&v146, v147);
          v54 = sub_1002C68B4(v83, v84);
          (*(v105 + 8))(v82, v106);
          goto LABEL_32;
        }

        (*(v105 + 8))(v82, v106);
LABEL_34:
        sub_10001074C(&v146, &qword_100639FE0);
LABEL_35:
        v54 = 0;
        goto LABEL_36;
      }

      v75 = v104;
      v76 = v103;
      (*(v104 + 32))(v103, v77, v74);
      Track.musicItem.getter(&v146);
    }

    v78 = v147;
    if (v147)
    {
      v79 = v148;
      sub_100008C70(&v146, v147);
      v54 = sub_1002C68B4(v78, v79);
      (*(v75 + 8))(v76, v74);
LABEL_32:
      sub_100008D24(&v146);
      goto LABEL_36;
    }

    (*(v75 + 8))(v76, v74);
    goto LABEL_34;
  }

  (*(v135 + 8))(v50, v48);
  v54 = 0x736D75626C61;
LABEL_36:
  v145(v29, a1);
  return v54;
}

uint64_t sub_1002C7AC0(uint64_t a1)
{
  v123 = sub_1004DD01C();
  v119 = *(v123 - 8);
  v2 = __chkstk_darwin(v123);
  v118 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v120 = &v114 - v4;
  v127 = sub_1004DCAAC();
  v122 = *(v127 - 8);
  v5 = __chkstk_darwin(v127);
  v121 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v124 = &v114 - v7;
  v131 = sub_1004D8BFC();
  v126 = *(v131 - 8);
  v8 = __chkstk_darwin(v131);
  v125 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v114 - v10;
  v135 = sub_1004D916C();
  v129 = *(v135 - 8);
  v11 = __chkstk_darwin(v135);
  v128 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v114 - v13;
  v139 = sub_1004D911C();
  v133 = *(v139 - 8);
  v14 = __chkstk_darwin(v139);
  v132 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v138 = &v114 - v16;
  v143 = sub_1004D91EC();
  v137 = *(v143 - 8);
  v17 = __chkstk_darwin(v143);
  v136 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v114 - v19;
  v147 = sub_1004D92AC();
  v141 = *(v147 - 8);
  v20 = __chkstk_darwin(v147);
  v140 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v146 = &v114 - v22;
  v151 = sub_1004DCD1C();
  v145 = *(v151 - 8);
  v23 = __chkstk_darwin(v151);
  v144 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v150 = &v114 - v25;
  v155 = sub_1004DC95C();
  v149 = *(v155 - 8);
  v26 = __chkstk_darwin(v155);
  v148 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v154 = &v114 - v28;
  v159 = sub_1004DD05C();
  v153 = *(v159 - 8);
  v29 = __chkstk_darwin(v159);
  v152 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v158 = &v114 - v31;
  v161 = sub_1004DC2DC();
  v157 = *(v161 - 8);
  v32 = __chkstk_darwin(v161);
  v156 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v114 - v34;
  v36 = sub_1004D8FEC();
  v160 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v39 = &v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v114 - v40;
  v42 = sub_1004DCA0C();
  v43 = *(v42 - 8);
  v44 = __chkstk_darwin(v42);
  v46 = &v114 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v44);
  v49 = &v114 - v48;
  v50 = *(a1 - 8);
  v51 = __chkstk_darwin(v47);
  v114 = &v114 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v117 = &v114 - v54;
  __chkstk_darwin(v53);
  v56 = &v114 - v55;
  v162 = v50;
  v57 = v50 + 16;
  v58 = *(v50 + 16);
  v60 = v59;
  v116 = v57;
  v115 = v58;
  v58(&v114 - v55, v163, v59);
  if (swift_dynamicCast())
  {
    (*(v43 + 32))(v46, v49, v42);
    v61 = sub_1004DC9AC();
    v63 = v62;
    (*(v43 + 8))(v46, v42);
    if (v63)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0;
    }

    v65 = v60;
    v66 = v162;
    goto LABEL_20;
  }

  v65 = v60;
  if (swift_dynamicCast())
  {
    v67 = v160;
    (*(v160 + 32))(v39, v41, v36);
    v64 = sub_1004D8FDC();
    v69 = v68;
    (*(v67 + 8))(v39, v36);
LABEL_10:
    if (!v69)
    {
      v64 = 0;
    }

    v66 = v162;
    goto LABEL_20;
  }

  v70 = v161;
  if (swift_dynamicCast())
  {
    v72 = v156;
    v71 = v157;
    (*(v157 + 32))(v156, v35, v70);
    v64 = sub_1004DC28C();
    v69 = v73;
    (*(v71 + 8))(v72, v70);
    goto LABEL_10;
  }

  v75 = v158;
  v74 = v159;
  v76 = swift_dynamicCast();
  v66 = v162;
  if (v76)
  {
    v78 = v152;
    v77 = v153;
    (*(v153 + 32))(v152, v75, v74);
    v79 = sub_1004DCF1C();
LABEL_17:
    v64 = v79;
    v82 = v80;
    (*(v77 + 8))(v78, v74);
    goto LABEL_18;
  }

  v81 = v154;
  v74 = v155;
  if (swift_dynamicCast())
  {
    v78 = v148;
    v77 = v149;
    (*(v149 + 32))(v148, v81, v74);
    v79 = sub_1004DC88C();
    goto LABEL_17;
  }

  v85 = v150;
  v84 = v151;
  if (swift_dynamicCast())
  {
    v86 = v145;
    v87 = v144;
    (*(v145 + 32))(v144, v85, v84);
    v64 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    (*(v86 + 8))(v87, v84);
    goto LABEL_20;
  }

  v88 = v146;
  v74 = v147;
  if (swift_dynamicCast())
  {
    v77 = v141;
    v78 = v140;
    (*(v141 + 32))(v140, v88, v74);
    v79 = sub_1004D929C();
    goto LABEL_17;
  }

  v89 = v142;
  v74 = v143;
  if (swift_dynamicCast())
  {
    v77 = v137;
    v78 = v136;
    (*(v137 + 32))(v136, v89, v74);
    v79 = sub_1004D91DC();
    goto LABEL_17;
  }

  v90 = v138;
  v74 = v139;
  if (swift_dynamicCast())
  {
    v77 = v133;
    v78 = v132;
    (*(v133 + 32))(v132, v90, v74);
    v79 = sub_1004D910C();
    goto LABEL_17;
  }

  v91 = v134;
  v92 = v135;
  if (!swift_dynamicCast())
  {
    v96 = v130;
    v97 = v131;
    if (swift_dynamicCast())
    {
      v98 = v126;
      v99 = v125;
      (*(v126 + 32))(v125, v96, v97);
      sub_1002C9890(&v164);
    }

    else
    {
      v100 = v124;
      v97 = v127;
      if (swift_dynamicCast())
      {
        v98 = v122;
        v99 = v121;
        (*(v122 + 32))(v121, v100, v97);
        Track.musicItem.getter(&v164);
      }

      else
      {
        v101 = v120;
        v97 = v123;
        if (!swift_dynamicCast())
        {
          if (qword_1006344B8 != -1)
          {
            swift_once();
          }

          v104 = sub_1004D966C();
          sub_100035430(v104, static Logger.capabilityUpsell);
          v105 = v117;
          v106 = v115;
          v115(v117, v163, v65);
          v107 = sub_1004D964C();
          v108 = sub_1004DDF8C();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v164 = v163;
            *v109 = 136315138;
            v106(v114, v105, v65);
            v110 = sub_1004DD4DC();
            v112 = v111;
            (*(v66 + 8))(v105, v65);
            v113 = sub_1000343A8(v110, v112, &v164);

            *(v109 + 4) = v113;
            _os_log_impl(&_mh_execute_header, v107, v108, "Unsupported MusicItem catalogID=%s", v109, 0xCu);
            sub_100008D24(v163);
          }

          else
          {

            (*(v66 + 8))(v105, v65);
          }

          goto LABEL_40;
        }

        v98 = v119;
        v99 = v118;
        (*(v119 + 32))(v118, v101, v97);
        sub_1002C8EC0(&v164);
      }
    }

    v102 = v165;
    if (v165)
    {
      v103 = v166;
      sub_100008C70(&v164, v165);
      v64 = sub_1002C7AC0(v102, v103);
      (*(v98 + 8))(v99, v97);
      sub_100008D24(&v164);
      goto LABEL_20;
    }

    (*(v98 + 8))(v99, v97);
    sub_10001074C(&v164, &qword_100639FE0);
LABEL_40:
    v64 = 0;
    goto LABEL_20;
  }

  v93 = v129;
  v94 = v128;
  (*(v129 + 32))(v128, v91, v92);
  v64 = sub_1004D915C();
  v82 = v95;
  (*(v93 + 8))(v94, v92);
LABEL_18:
  if (!v82)
  {
    v64 = 0;
  }

LABEL_20:
  (*(v66 + 8))(v56, v65);
  return v64;
}

uint64_t Logger.capabilityUpsell.unsafeMutableAddressor()
{
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.capabilityUpsell);
}

uint64_t sub_1002C8CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_1002C8D8C, v6, v5);
}

uint64_t sub_1002C8D8C()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004D7FDC(v2);
  v4 = v3;
  sub_10005F120(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1002CB930(&qword_100634D20, type metadata accessor for OpenExternalURLOptionsKey);
  isa = sub_1004DD1FC().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002C8EC0@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v2 = sub_1004DD01C();
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v65 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004D916C();
  v61 = *(v4 - 8);
  v62 = v4;
  __chkstk_darwin(v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004D911C();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D92AC();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v69 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DC95C();
  isa = v10[-1].isa;
  v73 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004DC2DC();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004D8FEC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DCF8C();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v59 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v59 - v24;
  sub_1004DCF9C();
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v21 + 96))(v25, v20);
    v27 = *(v17 + 32);
    v27(v19, v25, v16);
    v28 = v75;
    v75[3] = v16;
    v28[4] = sub_1002CB930(&qword_1006366A0, &type metadata accessor for MusicMovie);
    v29 = sub_1000357EC(v28);
    return (v27)(v29, v19, v16);
  }

  v31 = v75;
  if (v26 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v32 = *(v74 + 32);
    v32(v15, v25, v13);
    v31[3] = v13;
    v31[4] = &protocol witness table for MusicVideo;
    v33 = sub_1000357EC(v31);
    return (v32)(v33, v15, v13);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v21 + 96))(v25, v20);
    v34 = v73;
    v35 = *(isa + 4);
    v35(v12, v25, v73);
    v31[3] = v34;
    v31[4] = &protocol witness table for Song;
    v36 = sub_1000357EC(v31);
    return (v35)(v36, v12, v34);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v69;
    v38 = *(v70 + 32);
    v39 = v71;
    v38(v69, v25, v71);
    v31[3] = v39;
    v40 = &unk_1006366B0;
    v41 = &type metadata accessor for TVEpisode;
LABEL_13:
    v31[4] = sub_1002CB930(v40, v41);
    v42 = sub_1000357EC(v31);
    return (v38)(v42, v37, v39);
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v66;
    v38 = *(v67 + 32);
    v39 = v68;
    v38(v66, v25, v68);
    v31[3] = v39;
    v40 = &unk_1006366C8;
    v41 = &type metadata accessor for UploadedAudio;
    goto LABEL_13;
  }

  if (v26 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v21 + 96))(v25, v20);
    v37 = v60;
    v38 = *(v61 + 32);
    v39 = v62;
    v38(v60, v25, v62);
    v31[3] = v39;
    v40 = &unk_1006366D0;
    v41 = &type metadata accessor for UploadedVideo;
    goto LABEL_13;
  }

  v43 = v20;
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v44 = sub_1004D966C();
  sub_100035430(v44, static Logger.capabilityUpsell);
  v46 = v63;
  v45 = v64;
  v47 = v65;
  (*(v63 + 16))(v65, v1, v64);
  v48 = sub_1004D964C();
  v49 = sub_1004DDF8C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v71 = v50;
    v74 = swift_slowAlloc();
    v76 = v74;
    *v50 = 136315138;
    v73 = v48;
    v51 = v59;
    LODWORD(isa) = v49;
    sub_1004DCF9C();
    sub_1002CB930(&qword_100635BE8, &type metadata accessor for Playlist.Entry.InternalItem);
    v52 = sub_1004DEFFC();
    v54 = v53;
    v70 = *(v21 + 8);
    (v70)(v51, v43);
    (*(v46 + 8))(v65, v45);
    v55 = sub_1000343A8(v52, v54, &v76);

    v56 = v71;
    *(v71 + 1) = v55;
    v57 = v73;
    _os_log_impl(&_mh_execute_header, v73, isa, "Unknown Entry internalItem=%s", v56, 0xCu);
    sub_100008D24(v74);

    v58 = v70;
  }

  else
  {

    (*(v46 + 8))(v47, v45);
    v58 = *(v21 + 8);
  }

  v31[4] = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  return v58(v25, v43);
}

uint64_t sub_1002C9890@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v1 = sub_1004DCEDC();
  v86 = *(v1 - 8);
  v87 = v1;
  __chkstk_darwin(v1);
  v85 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004DD05C();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004DC2DC();
  v92 = *(v5 - 8);
  v93 = v5;
  __chkstk_darwin(v5);
  v91 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004D8FEC();
  v95 = *(v7 - 8);
  v96 = v7;
  __chkstk_darwin(v7);
  v94 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004DCD1C();
  v82 = *(v9 - 8);
  v83 = v9;
  __chkstk_darwin(v9);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1004D916C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1004D911C();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1004D91EC();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1004D92AC();
  v79 = *(v14 - 8);
  v80 = v14;
  __chkstk_darwin(v14);
  v78 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DC95C();
  v84 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1004DCA0C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004D8BFC();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v68 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v67 - v27;
  v29 = *(v24 + 16);
  v29(&v67 - v27, v98, v23);
  v30 = (*(v24 + 88))(v28, v23);
  if (v30 == enum case for GenericMusicItem.album(_:))
  {
    (*(v24 + 96))(v28, v23);
    v31 = *(v20 + 32);
    v31(v22, v28, v19);
    v32 = v97;
    v97[3] = v19;
    v32[4] = &protocol witness table for Album;
    v33 = sub_1000357EC(v32);
    return (v31)(v33, v22, v19);
  }

  v35 = v97;
  if (v30 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v94;
    v37 = *(v95 + 32);
    v38 = v28;
    v39 = v96;
    v37(v94, v38, v96);
    v35[3] = v39;
    v40 = &qword_1006366A0;
    v41 = &type metadata accessor for MusicMovie;
LABEL_5:
    v35[4] = sub_1002CB930(v40, v41);
    v42 = sub_1000357EC(v35);
    v43 = v36;
    v44 = v39;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v91;
    v37 = *(v92 + 32);
    v46 = v93;
    v37(v91, v28, v93);
    v47 = &protocol witness table for MusicVideo;
LABEL_10:
    v35[3] = v46;
    v35[4] = v47;
    v42 = sub_1000357EC(v35);
    v43 = v45;
    v44 = v46;
    return v37(v42, v43, v44);
  }

  if (v30 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v24 + 96))(v28, v23);
    v45 = v88;
    v37 = *(v89 + 32);
    v46 = v90;
    v37(v88, v28, v90);
    v47 = &protocol witness table for Playlist;
    goto LABEL_10;
  }

  if (v30 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    (*(v24 + 96))(v28, v23);
    v36 = v85;
    v37 = *(v86 + 32);
    v48 = v28;
    v39 = v87;
    v37(v85, v48, v87);
    v35[3] = v39;
    v40 = &unk_1006380A0;
    v41 = &type metadata accessor for Playlist.Folder;
    goto LABEL_5;
  }

  if (v30 == enum case for GenericMusicItem.song(_:))
  {
    (*(v24 + 96))(v28, v23);
    v49 = *(v84 + 32);
    v49(v18, v28, v16);
    v35[3] = v16;
    v35[4] = &protocol witness table for Song;
    v50 = sub_1000357EC(v35);
    return (v49)(v50, v18, v16);
  }

  else
  {
    if (v30 == enum case for GenericMusicItem.station(_:))
    {
      (*(v24 + 96))(v28, v23);
      v45 = v81;
      v37 = *(v82 + 32);
      v46 = v83;
      v37(v81, v28, v83);
      v47 = &protocol witness table for Station;
      goto LABEL_10;
    }

    if (v30 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v79 + 32);
      v36 = v78;
      v51 = v28;
      v39 = v80;
      v37(v78, v51, v80);
      v35[3] = v39;
      v40 = &unk_1006366B0;
      v41 = &type metadata accessor for TVEpisode;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v76 + 32);
      v36 = v75;
      v52 = v28;
      v39 = v77;
      v37(v75, v52, v77);
      v35[3] = v39;
      v40 = &unk_1006366C0;
      v41 = &type metadata accessor for TVShow;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v73 + 32);
      v36 = v72;
      v53 = v28;
      v39 = v74;
      v37(v72, v53, v74);
      v35[3] = v39;
      v40 = &unk_1006366C8;
      v41 = &type metadata accessor for UploadedAudio;
      goto LABEL_5;
    }

    if (v30 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v24 + 96))(v28, v23);
      v37 = *(v70 + 32);
      v36 = v69;
      v54 = v28;
      v39 = v71;
      v37(v69, v54, v71);
      v35[3] = v39;
      v40 = &unk_1006366D0;
      v41 = &type metadata accessor for UploadedVideo;
      goto LABEL_5;
    }

    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v55 = sub_1004D966C();
    sub_100035430(v55, static Logger.capabilityUpsell);
    v56 = v68;
    v29(v68, v98, v23);
    v57 = sub_1004D964C();
    v58 = sub_1004DDF8C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v96 = v59;
      v98 = swift_slowAlloc();
      v99 = v98;
      *v59 = 136315138;
      sub_1002CB930(&unk_10063D760, &type metadata accessor for GenericMusicItem);
      v60 = sub_1004DEFFC();
      v61 = v56;
      v63 = v62;
      v64 = *(v24 + 8);
      v64(v61, v23);
      v65 = sub_1000343A8(v60, v63, &v99);

      v66 = v96;
      *(v96 + 1) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Unsupported GenericMusicItem kind=%s", v66, 0xCu);
      sub_100008D24(v98);
    }

    else
    {

      v64 = *(v24 + 8);
      v64(v56, v23);
    }

    v35[4] = 0;
    *v35 = 0u;
    *(v35 + 1) = 0u;
    return (v64)(v28, v23);
  }
}

uint64_t sub_1002CA680()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.capabilityUpsell);
  sub_100035430(v0, static Logger.capabilityUpsell);
  return sub_1004D965C();
}

uint64_t static Logger.capabilityUpsell.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.capabilityUpsell);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = &v85 - v3;
  v5 = sub_1004D7BBC();
  v93 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v85 - v9;
  v11 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v11 - 8);
  v13 = &v85 - v12;
  v14 = sub_1004D809C();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  v16 = __chkstk_darwin(v14);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v85 - v17;
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v18 = v101;
  if (!v101)
  {
    goto LABEL_8;
  }

  v19 = [v101 stringForBagKey:ICURLBagKeyMarketingItemDynamicUIUrl];
  if (!v19)
  {

    goto LABEL_8;
  }

  v90 = v4;
  v20 = v19;
  v21 = sub_1004DD43C();
  v91 = v14;
  v22 = v21;
  v24 = v23;

  *&v101 = 0x2F2F3A636973756DLL;
  *(&v101 + 1) = 0xE800000000000000;
  v103._countAndFlagsBits = v22;
  v25 = v91;
  v103._object = v24;
  sub_1004DD5FC(v103);

  sub_1004D805C();

  v26 = v95;
  if ((*(v95 + 48))(v13, 1, v25) == 1)
  {

    sub_10001074C(v13, &qword_100634B30);
LABEL_8:
    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v27 = sub_1004D966C();
    sub_100035430(v27, static Logger.capabilityUpsell);
    v28 = sub_1004D964C();
    v29 = sub_1004DDF7C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Could not build marketingURL", v30, 2u);
    }

    return;
  }

  v31 = *(v26 + 32);
  v88 = v26 + 32;
  v87 = v31;
  v31(v94, v13, v25);
  sub_100004CB8(&qword_100635078);
  v32 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v89 = *(v93 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1005126C0;
  v34 = v33;
  v86 = v32;
  sub_1004D7B8C();
  sub_1002CB6DC(a1, &v101);
  if (v102[24] != 253 && v102[24] != 255 && v102[24] != 254)
  {
    sub_1000741FC(&v101);
  }

  sub_1004D7B8C();

  sub_1002CB6DC(a1, &v99);
  if (v100[24] < 0xFDu)
  {
    v101 = v99;
    *v102 = *v100;
    *&v102[9] = *&v100[9];
    sub_1002C6800();
    v37 = v34;
    if (v38)
    {
      sub_1004D7B8C();

      v40 = *(v34 + 2);
      v39 = *(v34 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_10003A6A4(v39 > 1, v40 + 1, 1, v34);
      }

      v41 = v86;
      *(v37 + 2) = v40 + 1;
      (*(v93 + 32))(&v37[v41 + v40 * v89], v10, v5);
    }

    else
    {
      if (qword_1006344B8 != -1)
      {
        swift_once();
      }

      v42 = sub_1004D966C();
      sub_100035430(v42, static Logger.capabilityUpsell);
      sub_1002CB8C8(&v101, &v99);
      v43 = sub_1004D964C();
      v44 = sub_1004DDF8C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v98 = v85;
        *v45 = 136315138;
        sub_1002CB8C8(&v99, v96);
        v46 = sub_1004DD4DC();
        v48 = v47;
        sub_1002CB900(&v99);
        v49 = sub_1000343A8(v46, v48, &v98);
        v37 = v34;

        *(v45 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v43, v44, "Missing kind for item=%s", v45, 0xCu);
        sub_100008D24(v85);
      }

      else
      {

        sub_1002CB900(&v99);
      }

      v41 = v86;
    }

    sub_1002CB8C8(&v101, &v99);
    if (v100[24] == 1)
    {
      v50 = v99;
      MPModelObject.bestIdentifier(for:)(2, 1u);
      v52 = v51;

      if (v52)
      {
LABEL_34:
        sub_1004D7B8C();

        v54 = *(v37 + 2);
        v53 = *(v37 + 3);
        if (v54 >= v53 >> 1)
        {
          v37 = sub_10003A6A4(v53 > 1, v54 + 1, 1, v37);
        }

        v36 = v94;
        sub_1002CB900(&v101);
        *(v37 + 2) = v54 + 1;
        (*(v93 + 32))(&v37[v41 + v54 * v89], v8, v5);
        v35 = v90;
        goto LABEL_44;
      }
    }

    else
    {
      sub_1000ABC20(&v99, v96);
      v55 = v97;
      sub_100008C70(v96, v97);
      sub_1002C7AC0(v55);
      v57 = v56;
      sub_100008D24(v96);
      if (v57)
      {
        goto LABEL_34;
      }
    }

    if (qword_1006344B8 != -1)
    {
      swift_once();
    }

    v58 = sub_1004D966C();
    sub_100035430(v58, static Logger.capabilityUpsell);
    sub_1002CB8C8(&v101, &v99);
    v59 = sub_1004D964C();
    v60 = sub_1004DDF8C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v98 = v62;
      *v61 = 136315138;
      sub_1002CB8C8(&v99, v96);
      v63 = sub_1004DD4DC();
      v65 = v64;
      sub_1002CB900(&v99);
      v66 = sub_1000343A8(v63, v65, &v98);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Missing id for item=%s", v61, 0xCu);
      sub_100008D24(v62);
    }

    else
    {

      sub_1002CB900(&v99);
    }

    sub_1002CB900(&v101);
    v36 = v94;
    v35 = v90;
    goto LABEL_44;
  }

  sub_1000741FC(&v99);
  v35 = v90;
  v36 = v94;
  v37 = v34;
LABEL_44:
  v67._rawValue = v37;
  sub_1004D804C(v67);

  if (qword_1006344B8 != -1)
  {
    swift_once();
  }

  v68 = sub_1004D966C();
  sub_100035430(v68, static Logger.capabilityUpsell);
  v69 = sub_1004D964C();
  v70 = sub_1004DDF9C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v101 = v72;
    *v71 = 136446210;
    swift_beginAccess();
    sub_1002CB930(&qword_100637988, &type metadata accessor for URL);
    v73 = v91;
    v74 = sub_1004DEFFC();
    v76 = v36;
    v77 = sub_1000343A8(v74, v75, &v101);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "Will present upsell with URL=%{public}s", v71, 0xCu);
    sub_100008D24(v72);
    v35 = v90;
  }

  else
  {

    v73 = v91;
    v76 = v36;
  }

  v78 = v95;
  v79 = sub_1004DDA8C();
  (*(*(v79 - 8) + 56))(v35, 1, 1, v79);
  swift_beginAccess();
  v80 = v92;
  (*(v78 + 16))(v92, v76, v73);
  sub_1004DDA4C();
  v81 = sub_1004DDA3C();
  v82 = v78;
  v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v81;
  *(v84 + 24) = &protocol witness table for MainActor;
  v87(v84 + v83, v80, v73);
  sub_10011F560(0, 0, v35, &unk_100526F60, v84);

  (*(v82 + 8))(v76, v73);
}

uint64_t sub_1002CB558(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB56C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB5B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -3 - a2;
    }
  }

  return result;
}

double sub_1002CB604(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    result = 0.0;
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *a1 = a2 - 255;
  }

  else if (a2)
  {
    *(a1 + 40) = -a2;
  }

  return result;
}

uint64_t sub_1002CB644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CB680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1002CB714()
{
  v1 = sub_1004D809C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002CB7D8(uint64_t a1)
{
  v4 = *(sub_1004D809C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_1002C8CF4(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002CB930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002CB978()
{
  result = sub_1002CB998();
  qword_1006734A0 = result;
  return result;
}

uint64_t sub_1002CB998()
{
  v0 = sub_1004D809C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_10063DF60);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v61 = sub_1003130EC(_swiftEmptyArrayStorage);
  sub_100004CB8(&qword_10063DF68);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v63 = *(v4 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100511A40;
  v65 = v18;
  v58 = v19;
  v20 = v19 + v18;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 resourceURL];

  if (v23)
  {
    sub_1004D802C();

    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 0;
  }

  else
  {
    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 1;
  }

  v64 = v24;
  v24(v25, v26, 1, v0);
  v27 = v1;
  sub_1002CEFA0(v17, v20);
  type metadata accessor for BundleFinder();
  v28 = [v21 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    sub_1004D802C();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v27;
  v32 = v15;
  v33 = v15;
  v34 = v64;
  v64(v32, v30, 1, v0);
  v35 = v63;
  sub_1002CEFA0(v33, v20 + v63);
  v36 = [v21 mainBundle];
  v37 = [v36 bundleURL];

  sub_1004D802C();
  v62 = (v27 + 7);
  v34(v20 + 2 * v35, 0, 1, v0);
  v66 = v61;
  sub_1002ED5B4(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "1F9AD12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_1000108DC(v41, v9, &qword_10063DF60);
      v42 = *v65;
      if ((*v65)(v9, 1, v0) == 1)
      {
        sub_1002CF010(v9);
        v43 = 1;
      }

      else
      {
        sub_1004D7FFC();
        (*v61)(v9, v0);
        v43 = 0;
      }

      v64(v12, v43, 1, v0);
      sub_1000108DC(v12, v31, &qword_10063DF60);
      if (v42(v31, 1, v0) == 1)
      {
        sub_1002CF010(v12);
      }

      else
      {
        v44 = v38;
        v45 = v12;
        v46 = v9;
        v47 = v59;
        (*v56)(v59, v31, v0);
        v48 = objc_allocWithZone(NSBundle);
        sub_1004D7FDC(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v9 = v46;
        v12 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v0);
        sub_1002CF010(v12);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void variable initialization expression of Artwork.caching(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

id variable initialization expression of Artwork.decoration@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Artwork.Decoration(0);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v3 = v2[5];
  v4 = sub_1004DE53C();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  result = [objc_opt_self() blackColor];
  *&a1[v5] = result;
  *&a1[v2[7]] = 1;
  return result;
}

id variable initialization expression of Artwork.Decoration.fillColor()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.background()
{
  v0 = [objc_opt_self() secondarySystemFillColor];

  return v0;
}

uint64_t variable initialization expression of Artwork.Placeholder.tint()
{
  if (qword_10063D790 != -1)
  {
    swift_once();
  }

  v0 = qword_10063E4E0;
  v1 = qword_10063E4E0;
  return v0;
}

id variable initialization expression of Artwork.Placeholder.symbolConfiguration()
{
  v0 = [objc_opt_self() configurationWithWeight:4];

  return v0;
}

id variable initialization expression of Artwork.Placeholder.View.contentView()
{
  v0 = objc_allocWithZone(UIImageView);

  return [v0 init];
}

id variable initialization expression of LyricsLoader.operationQueue()
{
  v0 = [objc_allocWithZone(NSOperationQueue) init];
  [v0 setMaxConcurrentOperationCount:1];
  return v0;
}

uint64_t variable initialization expression of Lyrics.StateManager.state@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  v3 = a1 + *(v2 + 20);
  v4 = enum case for ScenePhase.inactive(_:);
  v5 = sub_1004D9CEC();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  v6 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v3 + *(v6 + 20)) = 0;
  *(v3 + *(v6 + 24)) = 0;
  v7 = *(v2 + 24);
  v8 = sub_1004D826C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

id variable initialization expression of Lyrics.StateManager.loader()
{
  v0 = objc_allocWithZone(type metadata accessor for LyricsLoader());

  return [v0 init];
}

id variable initialization expression of Lyrics.StateManager.lyricsReportingController()
{
  v0 = objc_allocWithZone(MPCLyricsReportingController);

  return [v0 init];
}

uint64_t variable initialization expression of Lyrics.StateManager.State.loading()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of Lyrics.StateManager.State.display@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004D9CEC();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  return result;
}

uint64_t variable initialization expression of Lyrics.StateManager.State.Display.scenePhase@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ScenePhase.inactive(_:);
  v3 = sub_1004D9CEC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

__n128 variable initialization expression of NoticePresenter.configuration()
{
  v0 = swift_unknownObjectWeakInit();
  *(v0 + 8) = 2;
  *(v0 + 16) = 0x4024000000000000;
  result = *&NSDirectionalEdgeInsetsZero.top;
  *(v0 + 40) = *&NSDirectionalEdgeInsetsZero.bottom;
  *(v0 + 24) = result;
  return result;
}

double variable initialization expression of CarouselView.pageIndicatorHeight()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  result = 8.0;
  if (v1 == 6)
  {
    return 10.0;
  }

  return result;
}

id variable initialization expression of CircularProgressView.trackLayer()
{
  v0 = objc_allocWithZone(CAShapeLayer);

  return [v0 init];
}

uint64_t variable initialization expression of Collaboration.Management.Model._hasNetworkConnectivity()
{
  static ApplicationCapabilities.shared.getter(v1);
  sub_100073E60(v1);
  return BYTE1(v1[0]);
}

uint64_t variable initialization expression of Collaboration.Management.Model.$__lazy_storage_$_artworkViewModel@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004CB8(&qword_100642C70);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1002CC854(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063DF58);
  __chkstk_darwin(v2 - 8);
  sub_1000108DC(a1, &v5 - v3, &qword_10063DF58);
  return sub_1004DA5EC();
}

double variable initialization expression of HitMyRectButton.hitRectAdjustment@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

double variable initialization expression of ImagePicker.DummyImagePickerViewController.$__lazy_storage_$_presentationSource@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

id variable initialization expression of LoadingView.label()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

id variable initialization expression of LoadingView.activityIndicator()
{
  v0 = objc_allocWithZone(UIActivityIndicatorView);

  return [v0 initWithActivityIndicatorStyle:100];
}

uint64_t variable initialization expression of NowPlaying.TrackTitleStackView.metadata@<X0>(uint64_t a1@<X8>)
{
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();

  return sub_1002CD93C(v2, a1);
}

double sub_1002CCAE8@<D0>(void *a1@<X0>, SEL *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = [objc_opt_self() preferredFontForTextStyle:*a1];
  v6 = [objc_opt_self() *a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v15 = v5;
  *(&v15 + 1) = v6;
  LOBYTE(v16) = 0;
  BYTE8(v16) = 0;
  *&v17 = 0x4040000000000000;
  *(&v17 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v18 = leading;
  *(&v18 + 1) = bottom;
  *&v19 = trailing;
  v20 = 0uLL;
  *(&v19 + 1) = 1;
  v21[0] = v5;
  v21[1] = v6;
  v22 = 0;
  v23 = 0;
  v24 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v26 = leading;
  v27 = bottom;
  v28 = trailing;
  v30 = 0;
  v31 = 0;
  v29 = 1;
  sub_1002CD9A0(&v15, &v14);
  sub_1002CD9FC(v21);
  v10 = v18;
  a3[2] = v17;
  a3[3] = v10;
  v11 = v20;
  a3[4] = v19;
  a3[5] = v11;
  result = *&v15;
  v13 = v16;
  *a3 = v15;
  a3[1] = v13;
  return result;
}

__n128 variable initialization expression of Gliss.Transition<>.Output.transform3D@<Q0>(uint64_t a1@<X8>)
{
  v1 = *&CATransform3DIdentity.m33;
  *(a1 + 64) = *&CATransform3DIdentity.m31;
  *(a1 + 80) = v1;
  v2 = *&CATransform3DIdentity.m43;
  *(a1 + 96) = *&CATransform3DIdentity.m41;
  *(a1 + 112) = v2;
  v3 = *&CATransform3DIdentity.m13;
  *a1 = *&CATransform3DIdentity.m11;
  *(a1 + 16) = v3;
  result = *&CATransform3DIdentity.m21;
  v5 = *&CATransform3DIdentity.m23;
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.symbol@<D0>(uint64_t a1@<X8>)
{
  sub_1003DBA90(v6);
  v2 = v10;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  *(a1 + 96) = v11;
  *(a1 + 112) = v12;
  v3 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v3;
  result = *&v7;
  v5 = v8;
  *(a1 + 32) = v7;
  *(a1 + 48) = v5;
  return result;
}

UIFontTextStyle SymbolButton.Title.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = UIFontTextStyleSubheadline;
  *(a1 + 24) = UIFontWeightSemibold;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return UIFontTextStyleSubheadline;
}

double variable initialization expression of SymbolButton.Configuration.material@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double variable initialization expression of SymbolButton.Configuration.customView@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id variable initialization expression of QRCodeOverlayViewController.backgroundView()
{
  v0 = objc_allocWithZone(UIVisualEffectView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.qrCodeView()
{
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.logoView()
{
  v0 = sub_1004DD3FC();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];
  return v2;
}

id variable initialization expression of QRCodeOverlayViewController.titleLabel()
{
  v0 = objc_allocWithZone(UILabel);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.subtitleLabelEffectView()
{
  if (qword_10063DA98 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() effectForBlurEffect:qword_100673AA8];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  return v1;
}

id variable initialization expression of QRCodeOverlayViewController.scrollView()
{
  v0 = objc_allocWithZone(UIScrollView);

  return [v0 init];
}

id variable initialization expression of QRCodeOverlayViewController.ContainerView.overlayLayer()
{
  v0 = objc_allocWithZone(CALayer);

  return [v0 init];
}

uint64_t sub_1002CD084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004DA65C();
  *a1 = result;
  return result;
}

uint64_t sub_1002CD104@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100004CB8(a1);

  return swift_storeEnumTagMultiPayload();
}

id sub_1002CD17C(Class *a1)
{
  v1 = [objc_allocWithZone(*a1) init];
  v2 = UIView.forAutolayout.getter();

  return v2;
}

id variable initialization expression of SliderView.feedbackGenerator()
{
  v0 = objc_allocWithZone(UIImpactFeedbackGenerator);

  return [v0 initWithStyle:0];
}

id variable initialization expression of SliderView.trackLayoutGuide()
{
  v0 = objc_allocWithZone(UILayoutGuide);

  return [v0 init];
}

id variable initialization expression of SyncedLyricsViewController.Specs.glowColor()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

id variable initialization expression of SliderView.remainingTrackColor()
{
  v0 = [objc_opt_self() systemFillColor];

  return v0;
}

id variable initialization expression of SliderView.trackingColor()
{
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  v1 = static UIColor.MusicTint.normal;

  return v1;
}

id variable initialization expression of SyncedLyricsViewController.contentView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of SymbolButton.materialView()
{
  v4 = 1;
  v0 = type metadata accessor for SymbolButton.MaterialView();
  v5 = 0u;
  v6 = 0u;
  v7 = 0;
  v3.receiver = objc_allocWithZone(v0);
  v3.super_class = v0;
  v1 = objc_msgSendSuper2(&v3, "initWithEffect:", 0);
  sub_1003D691C(&v4);

  return v1;
}

id variable initialization expression of SymbolButton.backgroundView()
{
  if (qword_10063DAF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = *&static SymbolButton.Background.clear;
  v1 = qword_100673C58;
  v2 = qword_100673C60;
  v3 = qword_100673C68;
  v4 = type metadata accessor for SymbolButton.BackgroundView();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC11MusicCoreUI12SymbolButtonP33_0D6450BB937596549C350B7D294A2A9314BackgroundView_configuration];
  *v6 = 0;
  *(v6 + 1) = 0x3FF0000000000000;
  v10.receiver = v5;
  v10.super_class = v4;
  v7 = v1;

  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003D6D98(v1, v0, v2, v3);
  sub_1003D6F58();

  return v8;
}

uint64_t sub_1002CD518@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of VerticalToggleSlider.packageDefinition@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of VerticalToggleSlider.blurEffect()
{
  v0 = [objc_opt_self() effectWithBlurRadius:10.0];

  return v0;
}

void variable initialization expression of VerticalToggleSlider.growTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id variable initialization expression of WaveformPlayIndicator.colorPalette()
{
  v0 = objc_opt_self();
  v1 = [v0 tintColor];
  v2 = [v0 labelColor];
  v3 = [v2 colorWithAlphaComponent:0.35];

  v4 = [v0 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6 = [v0 labelColor];
  v7 = [v6 colorWithAlphaComponent:0.6];

  return v1;
}

id variable initialization expression of WaveformPlayIndicator.waveform()
{
  v0 = [objc_opt_self() zero];

  return v0;
}

uint64_t variable initialization expression of WaveformPlayIndicator.cannedAnimationAsset()
{
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  return sub_1003F2CC4();
}

uint64_t sub_1002CD840(uint64_t a1, uint64_t a2)
{
  result = sub_1004D875C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1002CD894(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D876C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1002CD8EC@<X0>(void *a1@<X8>)
{
  result = sub_1004D877C();
  *a1 = v3;
  return result;
}

uint64_t sub_1002CD93C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1002CDA64@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

Swift::Int sub_1002CDB14()
{
  sub_1004DF26C();
  swift_getWitnessTable();
  sub_1004D87AC();
  return sub_1004DF2BC();
}

uint64_t sub_1002CDB7C()
{
  sub_1002CE5BC(&qword_10063DF48, type metadata accessor for UIContentSizeCategory);
  sub_1002CE5BC(&qword_10063DF50, type metadata accessor for UIContentSizeCategory);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDC38()
{
  sub_1002CE5BC(&qword_10063DF38, type metadata accessor for TextStyle);
  sub_1002CE5BC(&qword_10063DF40, type metadata accessor for TextStyle);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDCF4()
{
  sub_1002CE5BC(&qword_10063DF20, type metadata accessor for Weight);
  sub_1002CE5BC(&qword_10063DF28, type metadata accessor for Weight);
  sub_1002CEF4C();
  return sub_1004DEE0C();
}

uint64_t sub_1002CDDBC()
{
  sub_1002CE5BC(&qword_10063DF10, type metadata accessor for FeatureKey);
  sub_1002CE5BC(&qword_10063DF18, type metadata accessor for FeatureKey);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDE78()
{
  sub_1002CE5BC(&qword_10063DF00, _s3__C13AttributeNameVMa_0);
  sub_1002CE5BC(&qword_10063DF08, _s3__C13AttributeNameVMa_0);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDF34()
{
  sub_1002CE5BC(&qword_10063DF98, _s3__C4NameVMa_1);
  sub_1002CE5BC(&unk_10063DFA0, _s3__C4NameVMa_1);

  return sub_1004DEE0C();
}

uint64_t sub_1002CDFF0()
{
  sub_1002CE5BC(&qword_10063DEE0, type metadata accessor for CAGradientLayerType);
  sub_1002CE5BC(&qword_10063DEE8, type metadata accessor for CAGradientLayerType);

  return sub_1004DEE0C();
}

uint64_t sub_1002CE0AC()
{
  sub_1002CE5BC(&qword_10063DEF0, type metadata accessor for InfoKey);
  sub_1002CE5BC(&qword_10063DEF8, type metadata accessor for InfoKey);

  return sub_1004DEE0C();
}

uint64_t sub_1002CE168()
{
  swift_getWitnessTable();

  return sub_1004D879C();
}

void sub_1002CE1DC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF2AC(*&v1);
}

__n128 sub_1002CE2CC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1002CE2F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002CE310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 sub_1002CE370(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1002CE3A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for GlowModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1002CE5BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002CEF4C()
{
  result = qword_10063DF30;
  if (!qword_10063DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063DF30);
  }

  return result;
}

uint64_t sub_1002CEFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063DF60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CF010(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063DF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Artwork.content.getter()
{
  v1 = *v0;
  sub_1002CF1F0(*v0, v0[1]);
  return v1;
}

id sub_1002CF1F0(id result, void *a2)
{
  if (result)
  {
    v3 = result;
    v2 = a2;

    return v3;
  }

  return result;
}

void Artwork.content.setter(void *a1, void *a2)
{
  sub_1002CF268(*v2, v2[1]);
  *v2 = a1;
  v2[1] = a2;
}

void sub_1002CF268(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t Artwork.size.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = result;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;
  return result;
}

uint64_t Artwork.decoration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Artwork(0) + 28);

  return sub_1002CF3F4(a1, v3);
}

uint64_t sub_1002CF3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Artwork.placeholderViewProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Artwork(0) + 36));
  result = swift_unknownObjectRelease();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double Artwork.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = xmmword_100512780;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Artwork(0);
  v3 = (a1 + v2[7]);
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v5 = v4[5];
  v6 = sub_1004DE53C();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v7 = v4[6];
  *&v3[v7] = [objc_opt_self() blackColor];
  *&v3[v4[7]] = 1;
  v8 = (a1 + v2[8]);
  result = 0.0;
  v8[1] = 0u;
  v8[2] = 0u;
  *v8 = 0u;
  v10 = (a1 + v2[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t static Artwork.with(_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = xmmword_100512780;
  *(a2 + 64) = 0;
  v4 = type metadata accessor for Artwork(0);
  v5 = (a2 + v4[7]);
  v6 = type metadata accessor for Artwork.Decoration(0);
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  *v5 = 0;
  v7 = v6[5];
  v8 = sub_1004DE53C();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = v6[6];
  *&v5[v9] = [objc_opt_self() blackColor];
  *&v5[v6[7]] = 1;
  v10 = (a2 + v4[8]);
  v10[1] = 0u;
  v10[2] = 0u;
  *v10 = 0u;
  v11 = (a2 + v4[9]);
  *v11 = 0;
  v11[1] = 0;
  return a1(a2);
}

char *sub_1002CF874(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D5098(v1, v3, type metadata accessor for Artwork);
  v4 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  v5 = Artwork.View.init(configuration:)(v3);
  sub_1002D5250(&qword_10063E1D8, type metadata accessor for Artwork.View);
  return v5;
}

char *Artwork.View.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  *v7 = 0;
  v7[8] = -1;
  sub_1002D5098(a1, &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration], type metadata accessor for Artwork);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v8 setContentMode:4];
  v9 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  v10 = [*&v8[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] layer];
  [v10 setMinificationFilter:kCAFilterTrilinear];

  v11 = [*&v8[v9] layer];
  [v11 setMagnificationFilter:kCAFilterTrilinear];

  [*&v8[v9] setContentMode:2];
  [*&v8[v9] setClipsToBounds:1];
  [*&v8[v9] setAccessibilityIgnoresInvertColors:1];
  [v8 addSubview:*&v8[v9]];
  sub_1002D04B4();
  sub_1002D133C();
  sub_1002D0EBC();

  sub_1002D5D90(a1, type metadata accessor for Artwork);
  return v8;
}

void Artwork.View.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind;
  *v4 = 0;
  *(v4 + 8) = -1;
  sub_1004DECCC();
  __break(1u);
}

void sub_1002CFD34(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  sub_1002D5098(v6, v5, type metadata accessor for Artwork);
  v7 = _s11MusicCoreUI7ArtworkV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1002D5D90(v5, type metadata accessor for Artwork);
  if (!v7)
  {
    sub_1002D04B4();
    sub_1002D133C();
    sub_1002D0EBC();
    v8 = *(v3 + 36);
    v9 = *(a1 + v8);
    v10 = *&v6[v8];
    if (v9)
    {
      if (v9 == v10)
      {
        return;
      }
    }

    else if (!v10)
    {
      return;
    }

    v11 = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
    if (v11)
    {
    }

    else
    {
      v12 = [v1 artworkCatalog];
      if (v12)
      {

LABEL_12:
        sub_1002D04B4();
        return;
      }
    }

    if (*v6)
    {
      return;
    }

    goto LABEL_12;
  }
}

Swift::Void __swiftcall Artwork.View.invalidatePlaceholderView()()
{
  v1 = [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v1)
  {

    goto LABEL_3;
  }

  v3 = [v0 artworkCatalog];
  if (!v3)
  {
LABEL_3:
    v2 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
    swift_beginAccess();
    if (*&v0[v2])
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_7:
  sub_1002D04B4();
}

uint64_t Artwork.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  return sub_1002D5098(v1 + v3, a1, type metadata accessor for Artwork);
}

uint64_t Artwork.View.typedConfiguration.setter(uint64_t a1)
{
  v3 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  swift_beginAccess();
  sub_1002D5098(v1 + v6, v5, type metadata accessor for Artwork);
  swift_beginAccess();
  sub_1002D5100(a1, v1 + v6);
  swift_endAccess();
  sub_1002CFD34(v5);
  sub_1002D5D90(a1, type metadata accessor for Artwork);
  return sub_1002D5D90(v5, type metadata accessor for Artwork);
}

void (*Artwork.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Artwork(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002D5098(v1 + v8, v7, type metadata accessor for Artwork);
  return sub_1002D01E4;
}

void sub_1002D01E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1002D5098(*(*a1 + 96), v6, type metadata accessor for Artwork);
    sub_1002D5098(v7 + v4, v5, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002D5100(v6, v7 + v4);
    swift_endAccess();
    sub_1002CFD34(v5);
    sub_1002D5D90(v5, type metadata accessor for Artwork);
  }

  else
  {
    sub_1002D5098(v7 + v4, v6, type metadata accessor for Artwork);
    swift_beginAccess();
    sub_1002D5100(v3, v7 + v4);
    swift_endAccess();
    sub_1002CFD34(v6);
  }

  sub_1002D5D90(v6, type metadata accessor for Artwork);
  sub_1002D5D90(v3, type metadata accessor for Artwork);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

uint64_t Artwork.View.imageDidChangeHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10000DE64(*v1);
  return v2;
}

uint64_t Artwork.View.imageDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageDidChangeHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10000DE74(v6);
}

void sub_1002D04B4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v3 = type metadata accessor for Artwork(0);
  v4 = &v2[*(v3 + 36)];
  if (*v4)
  {
    v5 = *(v4 + 1);
    v6 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v7 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
    if (v7 != 255 && (v7 & 1) != 0)
    {
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v5 + 8);
      swift_unknownObjectRetain();
      sub_1002D5DF0(v8, v7);
      v11 = v10(v8, ObjectType, v5);
      v12 = *v6;
      *v6 = v11;
      LOBYTE(ObjectType) = v6[8];
      v6[8] = 1;
      v13 = v11;
      sub_1002D2C60(v12, ObjectType);
      sub_1002D5B38(v12, ObjectType);
      swift_unknownObjectRelease();

      v14 = v8;
      v15 = v7;
LABEL_20:
      sub_1002D5B38(v14, v15);
      goto LABEL_27;
    }

    v16 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    swift_unknownObjectRetain();
    v17 = [v16 image];
    if (v17)
    {
    }

    else
    {
      v33 = [v1 artworkCatalog];
      if (v33)
      {

        goto LABEL_18;
      }
    }

    if (*v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_27;
    }

LABEL_18:
    v34 = swift_getObjectType();
    v35 = (*(v5 + 8))(0, v34, v5);
    v36 = *v6;
    *v6 = v35;
    v37 = v6[8];
    v6[8] = 1;
    v38 = v35;
    sub_1002D2C60(v36, v37);
    sub_1002D5B38(v36, v37);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v18 = &v2[*(v3 + 32)];
  v19 = *(v18 + 3);
  if (!v19)
  {
    v39 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    v40 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
    *v39 = 0;
    v41 = v39[8];
    v39[8] = -1;
    sub_1002D2C60(v40, v41);
    v14 = v40;
    v15 = v41;
    goto LABEL_20;
  }

  v21 = *v18;
  v20 = *(v18 + 1);
  v22 = *(v18 + 2);
  v23 = *(v18 + 4);
  v24 = *(v18 + 5);
  *&v80 = *v18;
  *(&v80 + 1) = v20;
  *&v81 = v22;
  *(&v81 + 1) = v19;
  *&v82 = v23;
  *(&v82 + 1) = v24;
  v25 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind];
  v26 = v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8];
  if (v26 == 255 || (v26 & 1) != 0)
  {
    v27 = *&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
    v28 = v22;
    v29 = v19;
    v30 = v21;
    v31 = v20;
    v32 = [v27 image];
    if (v32)
    {
    }

    else
    {
      v51 = [v1 artworkCatalog];
      if (v51)
      {

        goto LABEL_26;
      }
    }

    if (*v2)
    {

      goto LABEL_27;
    }

LABEL_26:
    v52 = type metadata accessor for Artwork.Placeholder.View();
    v53 = objc_allocWithZone(v52);
    v54 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
    v55 = objc_allocWithZone(UIImageView);
    v56 = v30;
    v77 = v31;
    v57 = v28;
    v58 = v29;
    *&v53[v54] = [v55 init];
    v59 = &v53[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
    v60 = v82;
    *(v59 + 1) = v81;
    *(v59 + 2) = v60;
    *v59 = v80;
    v78.receiver = v53;
    v78.super_class = v52;
    v61 = v56;
    v62 = v77;
    v63 = v57;
    v64 = v58;
    v65 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v65 addSubview:*&v65[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView]];
    v84 = 0u;
    v85 = 0u;
    v83 = 0u;
    sub_1002D67E0(&v83);

    v66 = v62;
    v67 = v61;
    v68 = *v25;
    *v25 = v65;
    LOBYTE(v62) = v25[8];
    v25[8] = 0;
    v69 = v65;
    sub_1002D2C60(v68, v62);
    sub_1002D5B38(v68, v62);

    goto LABEL_27;
  }

  v42 = *v25;
  v43 = *v25 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v44 = *(v43 + 16);
  v83 = *v43;
  v84 = v44;
  v74 = *(v43 + 8);
  v75 = *v43;
  v72 = *(v43 + 24);
  v73 = *(v43 + 16);
  v70 = *(v43 + 40);
  v71 = *(v43 + 32);
  v87 = *(&v83 + 1);
  v88 = v83;
  v76 = *(&v44 + 1);
  v86 = v44;
  v85 = *(v43 + 32);
  v45 = v80;
  v46 = v82;
  *(v43 + 16) = v81;
  *(v43 + 32) = v46;
  *v43 = v45;
  sub_10001B558(v21, v20, v22, v19);
  sub_1002D5DF0(v42, v26);
  v47 = v22;
  v48 = v19;
  v49 = v21;
  v50 = v20;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(&v80, &v83))
  {
    v79[0] = v75;
    v79[1] = v74;
    v79[2] = v73;
    v79[3] = v72;
    v79[4] = v71;
    v79[5] = v70;
    sub_1002D67E0(v79);
  }

  sub_1002D5B38(v42, v26);
  sub_10001074C(&v88, &qword_10063E4B8);
  sub_10001074C(&v87, &qword_10063E4B8);
  sub_10001074C(&v86, &qword_10063E4C0);

LABEL_27:
  sub_1002D2B28();
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = [v0 contentMode];
  if (v11 > 5)
  {
    if (v11 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v8;
      v32.size.height = v10;
      v4 = MaxY - CGRectGetHeight(v32);
    }

    else if (v11 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v2;
      v30.origin.y = v4;
      v30.size.width = v8;
      v30.size.height = v10;
      v2 = MaxX - CGRectGetWidth(v30);
    }
  }

  v14 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  sub_1004DE3BC();
  [v14 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v8, v10}];
  }

  v15 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v22;
  v34.size.height = v23;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v0 bounds];
    *v15 = v24;
    *(v15 + 1) = v25;
    *(v15 + 2) = v26;
    *(v15 + 3) = v27;
    sub_1002D0EBC();
  }

  sub_1002D133C();
}

void Artwork.View.fittingImageSize(in:)(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  sub_1004DE43C();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  sub_1004DE43C();
  if (sub_1004D868C())
  {
    sub_1004DE43C();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      sub_1004DE43C();
    }
  }
}

id sub_1002D0EBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 artworkCatalog];
  v4 = &v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_typedConfiguration];
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = v5;
  }

  v7 = Optional<A>.isArtworkVisuallyIdentical(to:)(v5, v3);

  if ((v7 & 1) == 0)
  {
    [v1 clearArtworkCatalogs];
    sub_1002D22BC(0);
  }

  [v1 bounds];
  if (v9 != 0.0 || v8 != 0.0)
  {
    v10 = *v4;
    if (*v4)
    {
      sub_1000108DC((v4 + 16), v48, &qword_10063E130);
      sub_1000108DC(v48, &v46, &qword_10063E130);
      if (v47)
      {
        v11 = v10;

        sub_1002D5C34(&v46);
      }

      else
      {
        v13 = v10;
        sub_10001074C(&v46, &qword_10063E130);
      }

      v14 = sub_1004DD3FC();

      sub_1000108DC(v48, &v46, &qword_10063E130);
      if (v47)
      {
        Strong = swift_weakLoadStrong();
        sub_1002D5C34(&v46);
      }

      else
      {
        sub_10001074C(&v46, &qword_10063E130);
        Strong = 0;
      }

      [v10 setCacheIdentifier:v14 forCacheReference:Strong];

      swift_unknownObjectRelease();
      v16 = [v1 traitCollection];
      [v16 displayScale];
      v18 = v17;

      [v10 setDestinationScale:v18];
      v19 = v4[48];
      if (v19 == 255)
      {
        [v1 bounds];
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v24 = *(v4 + 7);
        v25 = *(v4 + 5);
        v26 = v4[64];
        [v1 bounds];
        v28 = v27;
        v30 = v29;
        sub_1002D3B44(v27, v29, v25, v19);
        v32 = v31;
        sub_1002D3B44(v28, v30, v24, v26);
        v23 = v33;
        v21 = v32;
      }

      [v10 setFittingSize:{v21, v23}];
      [v10 setRenderHint:{objc_msgSend(v10, "renderHint") | 1}];
      v34 = [v1 artworkCatalog];
      if (v34)
      {
        v35 = v34;
        [v34 scaledFittingSize];
        v37 = v36;
        v39 = v38;

        [v10 scaledFittingSize];
        if (v37 == v41 && v39 == v40)
        {
          v42 = [v1 artworkCatalog];
          if (v42)
          {

            return sub_10001074C(v48, &qword_10063E130);
          }
        }
      }

      else
      {
        [v10 scaledFittingSize];
      }

      MPArtworkCatalog.expectedRatio.getter();
      if ((v43 & 1) == 0)
      {
        [v1 setNeedsLayout];
      }

      v46 = v1;
      v44 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      *(v45 + 24) = ObjectType;
      MPArtworkCatalog.setDestination<A>(_:for:completion:)(&v46, 1, sub_1002D5C2C, v45, ObjectType);

      return sub_10001074C(v48, &qword_10063E130);
    }
  }

  result = [*&v1[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (result)
  {

    sub_1002D22BC(0);
    return [v1 setNeedsLayout];
  }

  return result;
}