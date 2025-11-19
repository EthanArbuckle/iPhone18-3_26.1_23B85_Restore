uint64_t sub_100552D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_10079FD44();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = [v1 plUserData];
  if (!v11)
  {
    return sub_100555A00(v8, a1);
  }

  v12 = v11;
  v13 = sub_1007969D4();
  v15 = v14;

  *&v62 = v13;
  *(&v62 + 1) = v15;
  sub_100555A70();
  if ((sub_1007A28A4() & 1) == 0)
  {
    sub_10000ADCC(v13, v15);
    return sub_100555A00(v8, a1);
  }

  v16 = objc_opt_self();
  isa = sub_1007969C4().super.isa;
  *&v62 = 0;
  v18 = [v16 propertyListWithData:isa options:0 format:0 error:&v62];

  if (!v18)
  {
    v25 = v62;
    sub_1007967D4();

    swift_willThrow();
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v26 = sub_10079ACE4();
    sub_100008B98(v26, qword_100AF40B0);
    swift_errorRetain();
    v27 = sub_10079ACC4();
    v28 = sub_1007A29B4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v57 = a1;
      v30 = v29;
      v31 = v15;
      v32 = swift_slowAlloc();
      *&v62 = v32;
      *v30 = 136315138;
      swift_getErrorValue();
      v33 = sub_1007A3B84();
      v35 = sub_1000070F4(v33, v34, &v62);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Exception decoding plUserData: %s", v30, 0xCu);
      sub_1000074E0(v32);

      a1 = v57;

      sub_10000ADCC(v13, v31);
    }

    else
    {
      sub_10000ADCC(v13, v15);
    }

    return sub_100555A00(v8, a1);
  }

  v19 = v62;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_10000A7C4(0, &qword_100AE9058);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v20 = v15;
  v57 = a1;
  v21 = v60;
  *&v60 = 0x7373616C63;
  *(&v60 + 1) = 0xE500000000000000;
  v22 = sub_1007A3B04();
  v56 = v21;
  v23 = [v21 __swift_objectForKeyedSubscript:v22];
  swift_unknownObjectRelease();
  if (v23)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  a1 = v57;
  if (!*(&v61 + 1))
  {
    sub_100007840(&v62, &unk_100AD5B40);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  if (v58 == 0x6F4C656761504B42 && v59 == 0xEE006E6F69746163)
  {

    goto LABEL_28;
  }

  v40 = sub_1007A3AB4();

  if (v40)
  {
LABEL_28:
    *&v60 = 0x7265707573;
    *(&v60 + 1) = 0xE500000000000000;
    v41 = [v56 __swift_objectForKeyedSubscript:sub_1007A3B04()];
    swift_unknownObjectRelease();
    if (v41)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
    }

    v62 = v60;
    v63 = v61;
    v42 = v20;
    if (*(&v61 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v58)
      {
        *&v60 = 0x6C616E6964726FLL;
        *(&v60 + 1) = 0xE700000000000000;
        v43 = v58;
        v44 = [v43 __swift_objectForKeyedSubscript:sub_1007A3B04()];
        swift_unknownObjectRelease();

        if (v44)
        {
          sub_1007A3504();
          swift_unknownObjectRelease();
        }

        else
        {
          v60 = 0u;
          v61 = 0u;
        }

        v62 = v60;
        v63 = v61;
        v42 = v20;
        if (*(&v61 + 1))
        {
          v49 = sub_10000A7C4(0, &qword_100AD6750);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_39;
          }

          v54 = v49;
          v55 = v60;
          *&v60 = 0x7366664F65676170;
          *(&v60 + 1) = 0xEA00000000007465;
          v50 = [v56 __swift_objectForKeyedSubscript:sub_1007A3B04()];
          swift_unknownObjectRelease();
          if (v50)
          {
            sub_1007A3504();
            swift_unknownObjectRelease();
          }

          else
          {
            v60 = 0u;
            v61 = 0u;
          }

          v62 = v60;
          v63 = v61;
          v42 = v20;
          if (*(&v61 + 1))
          {
            if (swift_dynamicCast())
            {
              v51 = v58;
              v52 = v55;
              [v55 integerValue];
              v54 = v42;
              [v51 integerValue];
              sub_10079FD04();

              sub_10000ADCC(v13, v54);
              sub_100007840(v8, &qword_100AE6A10);
              v10(v5, 0, 1, v9);
              sub_100555A00(v5, v8);
              a1 = v57;
              return sub_100555A00(v8, a1);
            }

LABEL_39:
            if (qword_100AD1B58 != -1)
            {
              swift_once();
            }

            v45 = sub_10079ACE4();
            sub_100008B98(v45, qword_100AF40B0);
            v46 = sub_10079ACC4();
            v47 = sub_1007A29B4();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 0;
              _os_log_impl(&_mh_execute_header, v46, v47, "Unable to decode plUserData, missing values", v48, 2u);

              sub_10000ADCC(v13, v42);
            }

            else
            {

              sub_10000ADCC(v13, v42);
            }

            a1 = v57;
            return sub_100555A00(v8, a1);
          }
        }

LABEL_38:
        sub_100007840(&v62, &unk_100AD5B40);
        goto LABEL_39;
      }
    }

    else
    {
      sub_100007840(&v62, &unk_100AD5B40);
    }

    v43 = 0;
    v62 = 0u;
    v63 = 0u;
    goto LABEL_38;
  }

  a1 = v57;
  v15 = v20;
LABEL_22:
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v36 = sub_10079ACE4();
  sub_100008B98(v36, qword_100AF40B0);
  v37 = sub_10079ACC4();
  v38 = sub_1007A29B4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Unable to decode plUserData", v39, 2u);
  }

  sub_10000ADCC(v13, v15);

  sub_100007840(v8, &qword_100AE6A10);
  return (v10)(a1, 1, 1, v9);
}

void CurrentLocationPersistenceService.update(cfiLocation:progress:updateDate:avoidSync:)(void **a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v12 = sub_100796BB4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  if (*(v6 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookInstanceHasClosed))
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AF40B0);
    v50 = sub_10079ACC4();
    v16 = sub_1007A29B4();
    if (os_log_type_enabled(v50, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v50, v16, "Attempting Location update after close", v17, 2u);
    }
  }

  else
  {
    LODWORD(v47) = a5;
    v48 = a4;
    v49 = v14;
    v50 = a3;
    v18 = (v6 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity);
    sub_10000E3E8((v6 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity), *(v6 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity + 24));
    v19 = sub_10079ECF4();
    v21 = v20;
    aBlock = a1;
    v52 = a2;
    sub_1002060B4();
    if (sub_1007A28A4())
    {
      v43 = v19;
      v44 = v21;
      sub_10000E3E8(v18, v18[3]);
      v45 = sub_10079EC84();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = a1;
      v46 = v22;
      v25 = v43;
      v24 = v44;
      *(v23 + 32) = a2;
      *(v23 + 40) = v25;
      *(v23 + 48) = v24;
      *(v23 + 56) = v47 & 1;
      sub_10000E3E8(v18, v18[3]);
      v43 = v12;

      v44 = sub_10079ECF4();
      v27 = v26;
      v47 = *(v6 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationModifier);
      sub_1001F1160(&unk_100AE0B30);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_10080B690;
      sub_10000E3E8(v18, v18[3]);
      *(v28 + 32) = sub_10079ECA4();
      *(v28 + 40) = v29;
      isa = sub_1007A25D4().super.isa;

      v31 = v49;
      v32 = v43;
      (*(v49 + 16))(&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v43);
      v33 = (*(v31 + 80) + 57) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v44;
      *(v34 + 24) = v27;
      *(v34 + 32) = sub_100555678;
      *(v34 + 40) = v23;
      *(v34 + 48) = v45 & 1;
      v35 = BYTE4(v50);
      *(v34 + 52) = v50;
      *(v34 + 56) = v35 & 1;
      (*(v31 + 32))(v34 + v33, &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v32);
      v55 = sub_100555B14;
      v56 = v34;
      aBlock = _NSConcreteStackBlock;
      v52 = 1107296256;
      v53 = sub_100551914;
      v54 = &unk_100A22D78;
      v36 = _Block_copy(&aBlock);

      [v47 modifyGlobalAnnotationsWithAssetIDs:isa type:1 performBlock:v36];
      _Block_release(v36);
    }

    else
    {
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v37 = sub_10079ACE4();
      sub_100008B98(v37, qword_100AF40B0);

      v38 = sub_10079ACC4();
      v39 = sub_1007A29B4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = 136446210;
        v42 = sub_1000070F4(v19, v21, &aBlock);

        *(v40 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to update from an empty #globalAnnotation location for:%{public}s", v40, 0xCu);
        sub_1000074E0(v41);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100553D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v15 = *(Strong + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation);
  v14 = *(Strong + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation + 8);
  v16 = Strong;

  if (!v14)
  {
    goto LABEL_8;
  }

  if (v15 == a3 && v14 == a4)
  {
  }

  else
  {
    v18 = sub_1007A3AB4();

    if ((v18 & 1) == 0)
    {
LABEL_8:
      v41 = a7;
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v19 = sub_10079ACE4();
      sub_100008B98(v19, qword_100AF40B0);

      v20 = sub_10079ACC4();
      v21 = sub_1007A29D4();

      if (os_log_type_enabled(v20, v21))
      {
        v40 = a5;
        v22 = swift_slowAlloc();
        v42[0] = swift_slowAlloc();
        *v22 = 136446466;
        v23 = sub_1007A23E4();
        v25 = sub_1000070F4(v23, v24, v42);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2082;
        *(v22 + 14) = sub_1000070F4(v40, a6, v42);
        _os_log_impl(&_mh_execute_header, v20, v21, "Updating #globalAnnotation annotation to:%{public}s for:%{public}s", v22, 0x16u);
        swift_arrayDestroy();
      }

      v26 = sub_1007A2214();
      [a1 setAnnotationLocation:v26];

      [a1 setPlUserData:0];
      if (v41)
      {
        [a1 setAvoidSync];
        swift_beginAccess();
        v27 = swift_unknownObjectWeakLoadStrong();
        if (v27)
        {
          v28 = &v27[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
          *v28 = 0;
          *(v28 + 1) = 0;
        }
      }

      else
      {
        [a1 clearAvoidSync];
        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = (v29 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation);
          *v30 = a3;
          v30[1] = a4;
          v31 = v29;
        }
      }

      return 1;
    }
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v33 = sub_10079ACE4();
  sub_100008B98(v33, qword_100AF40B0);

  v34 = sub_10079ACC4();
  v35 = sub_1007A29D4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v36 = 136446466;
    v37 = sub_1007A23E4();
    v39 = sub_1000070F4(v37, v38, v42);

    *(v36 + 4) = v39;
    *(v36 + 12) = 2082;
    *(v36 + 14) = sub_1000070F4(a5, a6, v42);
    _os_log_impl(&_mh_execute_header, v34, v35, "Skipping update of identical #globalAnnotation annotation to:%{public}s for:%{public}s", v36, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

uint64_t sub_100554228()
{
  v0 = sub_100796BB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v4);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1007A3744(52);
  v10._countAndFlagsBits = 0x7461636F4C696663;
  v10._object = 0xED0000203A6E6F69;
  sub_1007A23D4(v10);
  sub_1007A02F4();
  v5 = sub_1007A23E4();
  v7 = v6;

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_1007A23D4(v11);

  v12._countAndFlagsBits = 0x636F4C6567617020;
  v12._object = 0xEE003A6E6F697461;
  sub_1007A23D4(v12);
  sub_1007A1124();
  v13._countAndFlagsBits = sub_1007A22E4();
  sub_1007A23D4(v13);

  v14._object = 0x80000001008DC430;
  v14._countAndFlagsBits = 0xD000000000000013;
  sub_1007A23D4(v14);
  _s8BookEPUB25HighlightAnnotationEntityC5BooksE26annotationModificationDate10Foundation0I0Vvg_0();
  sub_100555AC4(&unk_100AE9A30, &type metadata accessor for Date);
  v15._countAndFlagsBits = sub_1007A3A74();
  sub_1007A23D4(v15);

  (*(v1 + 8))(v3, v0);
  return v9[0];
}

void sub_1005544B4(int8x8_t a1, uint64_t a2, const char *a3)
{
  v6 = v3;
  v7 = sub_100550AF0();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v7;
  v8 = v6;
  sub_10079B9B4();
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AF40B0);
  v10 = v8;
  v11 = sub_10079ACC4();
  v12 = sub_1007A29D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = vuzp1_s8(a1, v14).u32[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v15 = sub_100554228();
    v17 = v16;

    v18 = sub_1000070F4(v15, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_10000E3E8(&v10[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity], *&v10[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity + 24]);
    v19 = sub_10079ECF4();
    v21 = sub_1000070F4(v19, v20, &v22);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, a3, v13, 0x16u);
    swift_arrayDestroy();
  }
}

id CurrentLocationPersistenceService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationPersistenceService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void CurrentLocationPersistenceService.controller(_:didChange:at:for:newIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC);
  if (v5)
  {
    sub_10000A7C4(0, &qword_100ADAF70);
    v8 = v5;
    v9 = sub_1007A3184();

    if (v9)
    {
      sub_100007484(a2, v15);
      sub_10000A7C4(0, &qword_100AECB40);
      if (swift_dynamicCast())
      {
        v10 = v14;
        if ((a4 - 3) >= 2)
        {
          if (a4 == 1)
          {
            sub_100554214(v14);
          }
        }

        else
        {
          sub_1005544A0(v14);
        }
      }

      else
      {
        if (qword_100AD1B58 != -1)
        {
          swift_once();
        }

        v11 = sub_10079ACE4();
        sub_100008B98(v11, qword_100AF40B0);
        v10 = sub_10079ACC4();
        v12 = sub_1007A29B4();
        if (os_log_type_enabled(v10, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, v12, "Received class is not AEAnnotation when update from FRC", v13, 2u);
        }
      }
    }
  }
}

unint64_t sub_100554CBC(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_100796BB4();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v12 - 8);
  v14 = v45 - v13;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationFRC] = 0;
  v15 = &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
  *v15 = 0;
  v15[1] = 0;
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationMOC] = a1;
  ObjectType = swift_getObjectType();
  v46 = a1;
  sub_10079F8B4();
  sub_1000077C0(&v51, &a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookEntity]);
  *&a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_annotationModifier] = a3;
  a4[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_bookInstanceHasClosed] = 0;
  v45[4] = a3;
  swift_unknownObjectRetain();
  v47 = a7;
  sub_10079F8B4();
  sub_10000E3E8(&v51, v52);
  sub_10079EC34();
  sub_10079F8B4();
  sub_10000E3E8(v50, v50[3]);
  sub_10079EC34();
  sub_10079FD04();
  sub_1000074E0(v50);
  v17 = sub_10079FD44();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  sub_100796A84();
  sub_1007A1154();
  swift_allocObject();
  v18 = sub_1007A1144();
  sub_1000074E0(&v51);
  swift_beginAccess();
  v50[0] = v18;
  v45[3] = v18;

  sub_10079B964();
  swift_endAccess();
  *v15 = 0;
  v15[1] = 0;
  v19 = v46;

  v20 = type metadata accessor for CurrentLocationPersistenceService();
  v49.receiver = a4;
  v49.super_class = v20;
  v21 = objc_msgSendSuper2(&v49, "init");
  v22 = objc_allocWithZone(NSFetchRequest);
  v48 = v21;
  v23 = sub_1007A2214();
  v24 = [v22 initWithEntityName:v23];

  v25 = objc_opt_self();
  v45[2] = ObjectType;
  sub_10079F8B4();
  sub_10000E3E8(&v51, v52);
  sub_10079ECA4();
  v26 = sub_1007A2214();

  sub_1000074E0(&v51);
  v27 = [v25 predicateForGlobalAnnotationWithAssetID:v26];

  [v24 setPredicate:v27];
  sub_1001F1160(&unk_100AD8160);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100811390;
  v29 = objc_allocWithZone(NSSortDescriptor);
  v30 = sub_1007A2214();
  v31 = [v29 initWithKey:v30 ascending:0];

  *(v28 + 32) = v31;
  sub_10000A7C4(0, &unk_100AE9A50);
  isa = sub_1007A25D4().super.isa;

  [v24 setSortDescriptors:isa];

  [v24 setFetchLimit:1];
  sub_10000A7C4(0, &qword_100AECB40);
  result = sub_1007A2F34();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return v48;
  }

  v43 = result;
  v44 = sub_1007A38D4();
  result = v43;
  if (!v44)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v34 = v48;
    v35 = sub_1007A3784();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = v48;
    v35 = *(result + 32);
LABEL_6:
    v36 = v35;

    v37 = sub_100550AF0();
    swift_getKeyPath();
    swift_getKeyPath();
    *&v51 = v37;
    v38 = v34;
    sub_10079B9B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    v39 = sub_1007A02F4();
    v41 = v40;

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v42 = &v38[OBJC_IVAR____TtC5Books33CurrentLocationPersistenceService_lastSynchronizedLocation];
    *v42 = v39;
    v42[1] = v41;

    return v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005555D4(void *a1)
{
  v3 = *(sub_10079FD44() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_100551F28(a1, v1 + v4, v6, v7);
}

uint64_t sub_10055568C()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t type metadata accessor for CurrentLocationPersistenceService()
{
  result = qword_100AE9A00;
  if (!qword_100AE9A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100555868()
{
  sub_100555938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100555938()
{
  if (!qword_100AE9A10)
  {
    sub_1007A1154();
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE9A10);
    }
  }
}

uint64_t sub_100555990(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE6A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100555A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE6A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100555A70()
{
  result = qword_100AE9A20;
  if (!qword_100AE9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A20);
  }

  return result;
}

uint64_t sub_100555AC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100555B28()
{
  result = qword_100AE9A60;
  if (!qword_100AE9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A60);
  }

  return result;
}

uint64_t sub_100555B7C()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23500);
  v21 = sub_100008B98(v3, qword_100B23500);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_100555F20(uint64_t a1)
{
  v2 = sub_100796384();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_100795E04();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_100556010(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_100795DE4();
  return sub_1001FD958;
}

uint64_t sub_1005560A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1848 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10055614C()
{
  v0 = sub_1001F1160(&qword_100AE9AA8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(&qword_100AE9AB0);
  __chkstk_darwin(v1);
  sub_1007961D4();
  v3._countAndFlagsBits = 0x206F74206E727554;
  v3._object = 0xE800000000000000;
  sub_1007961C4(v3);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AE9AB8);
  sub_1007961B4();

  v4._countAndFlagsBits = 0x6567617020;
  v4._object = 0xE500000000000000;
  sub_1007961C4(v4);
  sub_1007961F4();
  return sub_1007961A4();
}

uint64_t sub_100556314()
{
  sub_100507EE8();
  swift_allocError();
  *v1 = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1005563A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005563D8();
  *a1 = result;
  return result;
}

uint64_t sub_1005563D8()
{
  v0 = sub_100796274();
  v67 = *(v0 - 8);
  v68 = v0;
  __chkstk_darwin(v0);
  v66 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v2 - 8);
  v65 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v47 - v5;
  v6 = sub_1001F1160(&qword_100AE9A88);
  __chkstk_darwin(v6 - 8);
  v63 = &v47 - v7;
  v8 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v8 - 8);
  v61 = &v47 - v9;
  v10 = sub_1007967F4();
  v11 = *(v10 - 8);
  v70 = v10;
  v71 = v11;
  __chkstk_darwin(v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_100796CF4();
  v14 = *(v58 - 8);
  __chkstk_darwin(v58);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_1007A21D4();
  v50 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v47 - v25;
  v27 = sub_100796814();
  v59 = *(v27 - 8);
  v60 = v27;
  __chkstk_darwin(v27);
  v69 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1001F1160(&qword_100AE9A90);
  sub_1007A2154();
  sub_100796C94();
  v57 = *(v21 + 16);
  v48 = v23;
  v57(v23, v26, v20);
  v56 = *(v14 + 16);
  v29 = v58;
  v56(v16, v19, v58);
  v55 = type metadata accessor for BundleFinder();
  *v13 = v55;
  v53 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v71 + 104);
  v71 += 104;
  v54 = v30;
  v49 = v13;
  v30(v13);
  sub_100796834();
  v31 = *(v14 + 8);
  v52 = v14 + 8;
  v32 = v29;
  v31(v19, v29);
  v33 = v21 + 8;
  v34 = *(v21 + 8);
  v51 = v33;
  v35 = v50;
  v34(v26, v50);
  sub_1007A2154();
  sub_100796C94();
  v57(v48, v26, v35);
  v36 = v32;
  v56(v16, v19, v32);
  v37 = v49;
  v38 = v54;
  *v49 = v55;
  v38(v37, v53, v70);
  v39 = v61;
  sub_100796834();
  v31(v19, v36);
  v34(v26, v35);
  (*(v59 + 56))(v39, 0, 1, v60);
  v40 = enum case for NavigateSequentiallyDirection.next(_:);
  v41 = sub_100796384();
  v42 = *(v41 - 8);
  v43 = v63;
  (*(v42 + 104))(v63, v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = sub_100795CE4();
  v45 = *(*(v44 - 8) + 56);
  v45(v64, 1, 1, v44);
  v45(v65, 1, 1, v44);
  (*(v67 + 104))(v66, enum case for InputConnectionBehavior.default(_:), v68);
  sub_100556BE4(&qword_100AE9A98);
  sub_1007A3754();
  sub_100556BE4(&qword_100AE9AA0);
  return sub_100795E54();
}

uint64_t sub_100556BE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100796384();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100556D28()
{
  v1 = OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setDistribution:0];
    [v4 setAxis:0];
    [v4 setAlignment:0];
    [v4 setSpacing:8.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100556E00()
{
  v1 = OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_100556E64();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100556E64()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v1 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v2 = v0;
  [v2 setMaximumContentSizeCategory:v1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = sub_10069D3B8(UIFontTextStyleTitle3, v1);
  [v2 setFont:v3];

  v4 = sub_1007A2214();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4];

  if (!v6)
  {
    v6 = [v5 labelColor];
  }

  [v2 setTextColor:v6];

  [v2 setTextAlignment:1];
  LODWORD(v7) = 1132068864;
  [v2 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v8];
  sub_1005578A0(v2);

  return v2;
}

id sub_10055702C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView_itemViews] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView;
  *&v4[v9] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView] = 0;
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___flexibleSpacerView] = 0;
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleContainerView] = 0;
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC5Books15MainToolbarView_leadingStackViewConstraint] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MainToolbarView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1005571A8();

  return v10;
}

uint64_t sub_1005571A8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView];
  v3 = [v0 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = sub_100558570(v4);
  [v2 setEffect:v5];

  [v1 addSubview:v2];
  v6 = sub_100556D28();
  [v1 addSubview:v6];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView;
  v8 = [*&v1[OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView] leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  v11 = *&v1[OBJC_IVAR____TtC5Books15MainToolbarView_leadingStackViewConstraint];
  *&v1[OBJC_IVAR____TtC5Books15MainToolbarView_leadingStackViewConstraint] = v10;
  v54 = v10;

  v53 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1008302E0;
  v13 = [v2 leadingAnchor];
  v14 = [v1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [v2 trailingAnchor];
  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v2 topAnchor];
  v20 = [v1 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v12 + 48) = v21;
  v22 = [v2 bottomAnchor];
  v23 = [v1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v12 + 56) = v24;
  v25 = [v1 heightAnchor];
  v26 = [v25 constraintEqualToConstant:52.0];

  *(v12 + 64) = v26;
  *(v12 + 72) = v54;
  v27 = *&v1[v7];
  v55 = v54;
  v28 = [v27 trailingAnchor];
  v29 = [v1 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-12.0];

  *(v12 + 80) = v30;
  v31 = [*&v1[v7] topAnchor];
  v32 = [v1 topAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v12 + 88) = v33;
  v34 = [*&v1[v7] bottomAnchor];
  v35 = [v1 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v12 + 96) = v36;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v53 activateConstraints:isa];

  v38 = [v2 layer];
  v39 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:0.09];
  v40 = [v39 CGColor];

  [v38 setShadowColor:v40];
  v41 = [v2 layer];
  [v41 setShadowOffset:{0.0, 1.5}];

  v42 = [v2 layer];
  LODWORD(v43) = 0.5;
  [v42 setShadowOpacity:v43];

  v44 = [v2 layer];
  [v44 setShadowRadius:0.0];

  v45 = [v2 layer];
  [v1 bounds];
  v50 = [objc_opt_self() bezierPathWithRect:{v46, v47, v48, v49}];
  v51 = [v50 CGPath];

  [v45 setShadowPath:v51];
  sub_10000A7C4(0, &qword_100AE15B0);
  sub_1007A2E04();
  sub_1007A3104();

  swift_unknownObjectRelease();
}

void sub_1005578A0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [a1 layer];
  if (v4 == 2)
  {
    v6 = &kCAFilterPlusL;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v6 = &kCAFilterPlusD;
LABEL_5:
    v7 = *v6;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v8 = v5;
  [v5 setCompositingFilter:v7];
}

void sub_1005579EC(id a1)
{
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    v6 = sub_100556E00();
    sub_1005578A0(v6);

    v7 = *&v1[OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView];
    v8 = [v1 traitCollection];
    v9 = [v8 userInterfaceStyle];

    v10 = sub_100558570(v9);
    [v7 setEffect:v10];
  }
}

void sub_100557C3C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_10000E3E8((Strong + OBJC_IVAR____TtC5Books21MainToolbarController_router), *(Strong + OBJC_IVAR____TtC5Books21MainToolbarController_router + 24));
    v2 = *(*sub_10000E3E8((*v1 + 16), *(*v1 + 40)) + OBJC_IVAR___BKToolbarNavigationProvider_currentNavigationController);
    if (v2)
    {
      v3 = [v2 popViewControllerAnimated:1];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100557FF0()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v26 - v5;
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = sub_100556E00();
  v15 = [v14 text];

  if (v15)
  {
    v16 = sub_1007A2254();
    v26[0] = v17;

    sub_1007A2154();
    sub_100796C94();
    (*(v8 + 16))(v10, v13, v7);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v1 + 16))(v3, v6, v0);
    sub_1007A22D4();
    (*(v1 + 8))(v6, v0);
    (*(v8 + 8))(v13, v7);
    sub_1001F1160(&unk_100AD5090);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10080B690;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_10000E4C4();
    v21 = v26[0];
    *(v20 + 32) = v16;
    *(v20 + 40) = v21;
    v22 = sub_1007A2284();
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v8 + 16))(v10, v13, v7);
    type metadata accessor for BundleFinder();
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass:v23];
    (*(v1 + 16))(v3, v6, v0);
    v22 = sub_1007A22D4();
    (*(v1 + 8))(v6, v0);
    (*(v8 + 8))(v13, v7);
  }

  return v22;
}

id sub_100558434(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_100558570(uint64_t a1)
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = 2.0;
    if (a1 == 2)
    {
      v5 = 1.0;
      v6 = 0;
    }

    else
    {
      v6 = 5;
    }

    v7 = [v4 colorEffectSaturate:v5];
    v8 = [objc_opt_self() systemBackgroundColor];
    v9 = objc_opt_self();
    v10 = [v9 effectCompositingColor:v8 withMode:v6 alpha:0.88];

    if (v10)
    {
      sub_1001F1160(&unk_100AD8160);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100811370;
      *(v11 + 32) = v3;
      *(v11 + 40) = v7;
      *(v11 + 48) = v10;
      sub_10000A7C4(0, &unk_100AE9B80);
      v12 = v3;
      v13 = v7;
      v14 = v10;
      isa = sub_1007A25D4().super.isa;

      v16 = [v9 effectCombiningEffects:isa];

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100558734()
{
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView_itemViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC5Books15MainToolbarView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___flexibleSpacerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC5Books15MainToolbarView_leadingStackViewConstraint) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for OpenProductPageActionItem()
{
  result = qword_100AE9BE8;
  if (!qword_100AE9BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005588B0()
{
  sub_1001FEBC8(319, &qword_100AD4AF0);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &unk_100AE9C00);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AE9C18);
          if (v4 <= 0x3F)
          {
            sub_100797144();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1005589D4()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  if ((sub_1007976D4() & 1) == 0)
  {
    sub_10000E3E8((v0 + 40), *(v0 + 64));
    sub_1007977A4();
    if (v16 == 1)
    {
      sub_1001FF70C(v15);
    }

    else
    {
      sub_1001FF7E0(v15, v17);
      sub_10000E3E8(v17, v18);
      sub_1007976B4();
      if ((sub_1007972D4() & 1) == 0)
      {
        sub_10000E3E8(v17, v18);
        sub_1007976B4();
        if ((sub_1007972D4() & 1) == 0)
        {
          sub_10000E3E8(v17, v18);
          sub_1007976A4();
          if (v9)
          {

            sub_10000E3E8((v0 + 40), *(v0 + 64));
            if (sub_100797794())
            {
              sub_10000E3E8((v0 + 40), *(v0 + 64));
              sub_100797784();
              (*(v3 + 104))(v5, enum case for ContextActionSource.productPage(_:), v2);
              sub_100498DFC();
              v10 = sub_1007A2124();
              v11 = *(v3 + 8);
              v11(v5, v2);
              v11(v8, v2);
              if ((v10 & 1) == 0)
              {
                sub_10000E3E8((v1 + 40), *(v1 + 64));
                v12 = sub_1007976F4();
                sub_1000074E0(v17);
                return v12 & 1;
              }
            }
          }
        }
      }

      sub_1000074E0(v17);
    }
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t sub_100558C9C()
{
  v1[19] = v0;
  v2 = sub_100798F44();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  sub_1007A26F4();
  v1[23] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_100558D90, v4, v3);
}

uint64_t sub_100558D90()
{
  v1 = *(v0 + 152);

  sub_10000E3E8((v1 + 40), *(v1 + 64));
  sub_1007977A4();
  if (*(v0 + 56))
  {
    sub_1001FF70C(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    sub_1001FF7E0((v0 + 16), v0 + 64);
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_1007976B4();
    v6 = sub_1007972D4();
    v7 = &enum case for MResourceType.audiobooks(_:);
    if ((v6 & 1) == 0)
    {
      v7 = &enum case for MResourceType.books(_:);
    }

    (*(v3 + 104))(v2, *v7, v4);
    sub_10000E3E8(v5, v5[3]);
    if (sub_100796EE4())
    {
      *(v0 + 144) = &OBJC_PROTOCOL___BSUITransactionProviding;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (!v8)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v8 = 0;
    }

    sub_100009864(*(v0 + 152) + 128, v0 + 104);
    sub_10000E3E8((v0 + 104), *(v0 + 128));
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_100797674();
    if (v8)
    {
      [v8 newShowURLTransaction];
    }

    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = *(v0 + 160);
    sub_100796F24();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v10, v11);
    sub_1000074E0(v0 + 104);
    sub_1000074E0(v0 + 64);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100559000()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100558C9C();
}

uint64_t sub_10055908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_100009864(a1, (a6 + 5));
  sub_100009864(a2, a6);
  sub_100009864(a4, (a6 + 11));
  a6[19] = sub_100796F14();
  a6[20] = &protocol witness table for MenuStoreService;
  sub_1002256EC(a6 + 16);
  sub_100796F04();
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v12 = *(a5 + 36);
  v13 = enum case for ContextActionType.openProductPage(_:);
  v14 = sub_100797144();
  result = (*(*(v14 - 8) + 104))(a6 + v12, v13, v14);
  a6[10] = a3;
  return result;
}

id sub_1005591B4(uint64_t a1)
{
  v2 = v1;
  v4 = v1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_10079B9B4();
  if (a1 == 2)
  {
    swift_beginAccess();
    v7 = (*sub_10000E3E8(v1 + 3, v1[6]) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    [*(*sub_10000E3E8(v7 v7[3]) + OBJC:"playbackRate" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    v9 = v8;
    sub_10000E3E8(v7, v7[3]);
    swift_endAccess();
    v10 = sub_100462804();
    sub_1002D0650(v10, v9);
    v12 = v11;

    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v15) = v12;
    v13 = v6;
    sub_10079B9B4();
  }

  return [v2[13] setAssetAudiobookStatusPlaying:{a1 == 2, v15}];
}

uint64_t sub_1005593B0()
{
  sub_1000074E0(v0 + 24);
  sub_1000074E0(v0 + 64);

  v1 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingPresenter_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudiobookNowPlayingPresenter()
{
  result = qword_100AE9C90;
  if (!qword_100AE9C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005594C0()
{
  result = sub_10079ACE4();
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

uint64_t sub_1005596F4()
{

  sub_100559730();
}

uint64_t sub_100559730()
{
  swift_beginAccess();
  v1 = (*sub_10000E3E8((v0 + 24), *(v0 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [objc_msgSend(*(*sub_10000E3E8(v1 v1[3]) + OBJC:"skipController") IVAR:"endSkip" :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  return swift_unknownObjectRelease();
}

id sub_1005598CC(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  v5 = (*sub_10000E3E8((a1 + 24), *(a1 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  return [*(*sub_10000E3E8(v5 v5[3]) + OBJC:*a3 IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
}

uint64_t sub_100559960(uint64_t a1, uint64_t a2, float a3)
{
  swift_beginAccess();
  v7 = *sub_10000E3E8((v3 + 24), *(v3 + 48));
  v8 = OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager;
  swift_beginAccess();
  sub_100009864(v7 + v8, v20);
  v9 = sub_10000E3E8(v20, v20[3]);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v12 = *(*v9 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player);

  sub_1000260E8(a1);
  [v12 durationOfCurrentChapter];
  v14 = v13 + -0.4;
  v15 = v13 * a3;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  aBlock[4] = sub_10055CF18;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A22FE0;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 movePositionInCurrentChapter:v17 completion:v16];
  _Block_release(v17);

  swift_unknownObjectRelease();
  return sub_1000074E0(v20);
}

uint64_t sub_100559E10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = (*sub_10000E3E8((v2 + 24), *(v2 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [objc_msgSend(*(*sub_10000E3E8(v5 v5[3]) + OBJC:"skipController") IVAR:"startSkip:actionSource:" :a2 :a1 :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  return swift_unknownObjectRelease();
}

uint64_t sub_100559EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_100559E10(a3, a4);
}

uint64_t sub_100559F40(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_100559F84(a3);
}

uint64_t sub_100559F84(uint64_t a1)
{
  swift_beginAccess();
  v3 = (*sub_10000E3E8((v1 + 24), *(v1 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [objc_msgSend(*(*sub_10000E3E8(v3 v3[3]) + OBJC:"skipController") IVAR:"startSkip:actionSource:" :a1 :1 :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  return swift_unknownObjectRelease();
}

uint64_t sub_10055A078(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  sub_10000E3E8((a1 + 24), *(a1 + 48));

  a3(v5);
}

void sub_10055A0E8(void *a1)
{
  v2 = sub_100797D54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v6 = v44;
  if (!v44)
  {
    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Unable to open supplemental content because view model lacks an asset ID";
      goto LABEL_8;
    }

LABEL_9:

    return;
  }

  v7 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v8 = v43[2];

  if (v8 == 1)
  {
    v42 = &OBJC_PROTOCOL___BKAudiobookNowPlayingViewController_0;
    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      v14 = v13;
      v39 = v7;
      swift_getKeyPath();
      swift_getKeyPath();
      v41 = a1;
      v40 = a1;
      sub_10079B9A4();

      if (v44)
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v22 = v43[2];

      sub_100798004();
      v23 = sub_100797FF4();
      v24 = [v14 recommendedTracker];
      (*(v3 + 104))(v5, enum case for ViewSource.toc(_:), v2);
      if (v22 >> 31)
      {
        goto LABEL_24;
      }

      LOBYTE(v43) = 0;
      sub_100797FD4();

      (*(v3 + 8))(v5, v2);
      a1 = v41;
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    if (v43[2])
    {
      v26 = v43[4];
      v25 = v43[5];
      v27 = v43[6];

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v28 = sub_10079ACC4();
      v29 = sub_1007A29D4();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *v30 = 136315650;

        v31 = sub_1000070F4(v26, v25, &v43);

        *(v30 + 4) = v31;
        *(v30 + 12) = 2160;
        *(v30 + 14) = 1752392040;
        *(v30 + 22) = 2080;
        v32 = [v27 description];
        v33 = a1;
        v34 = sub_1007A2254();
        v36 = v35;

        v37 = v34;
        a1 = v33;
        v38 = sub_1000070F4(v37, v36, &v43);

        *(v30 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "Viewing supplemental content '%s' with asset ID: %{mask.hash}s", v30, 0x20u);
        swift_arrayDestroy();
      }

      sub_100660F90(v26, v25, v27, a1);
      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  if (!v8)
  {

    v9 = sub_10079ACC4();
    v10 = sub_1007A29B4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Unable to open supplemental content because there isn't any";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v15 = sub_10079ACC4();
  v16 = sub_1007A29D4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1000070F4(v7, v6, &v43);
    _os_log_impl(&_mh_execute_header, v15, v16, "Picking supplemental content for audiobook with asset ID: %{mask.hash}s", v17, 0x16u);
    sub_1000074E0(v18);
  }

  v19 = objc_allocWithZone(BKAssetID);
  v20 = sub_1007A2214();

  v21 = [v19 initWithAssetID:v20];

  sub_10055CC14(v21, a1);
}

void *sub_10055A884(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v5 = (*sub_10000E3E8((v2 + 24), *(v2 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v6 = sub_10000E3E8(v5, v5[3]);
  v7 = *v6;
  v8 = sub_100462EFC([*(*v6 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentAudiobook], a2);
  swift_unknownObjectRelease();
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = [*(v7 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_contextMenuProvider) menuElementsForViewController:a1 dataModel:v8];
  sub_10055CBC8();
  v10 = sub_1007A25E4();

  return v10;
}

id sub_10055AA84(void *a1)
{
  swift_beginAccess();
  v3 = (*sub_10000E3E8((v1 + 24), *(v1 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  v4 = sub_10000E3E8(v3, v3[3]);
  v5 = *v4;
  v6 = sub_100462EFC([*(*v4 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_player) currentAudiobook], a1);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return 0;
  }

  v7 = [*(v5 + OBJC_IVAR____TtC5Books30AudiobookNowPlayingDataManager_contextMenuProvider) analyticsAssetPropertyProviderForDataModel:v6];

  return v7;
}

void *sub_10055B15C()
{
  swift_beginAccess();
  sub_10000E3E8((v0 + 24), *(v0 + 48));
  v1 = sub_1002CD404();
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = v1;
    sub_1003BD190(0, v2, 0);
    v4 = v3;
    v5 = _swiftEmptyArrayStorage[2];
    v6 = 32;
    do
    {
      v7 = *&v4[v6];
      v8 = _swiftEmptyArrayStorage[3];
      if (v5 >= v8 >> 1)
      {
        sub_1003BD190((v8 > 1), v5 + 1, 1);
        v4 = v3;
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      *(&_swiftEmptyArrayStorage[4] + v5) = v7;
      v6 += 4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

float sub_10055B2B0()
{
  swift_beginAccess();
  v1 = (*sub_10000E3E8((v0 + 24), *(v0 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
  swift_beginAccess();
  [*(*sub_10000E3E8(v1 v1[3]) + OBJC:"playbackRate" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
  v3 = v2;
  sub_10000E3E8(v1, v1[3]);
  swift_endAccess();
  v4 = sub_100462804();
  sub_1002D0650(v4, v3);
  v6 = v5;

  return v6;
}

uint64_t sub_10055B390(void *a1)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v5 = v3;
  sub_10079B9B4();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10055CF24;
  *(v7 + 24) = v6;
  v8 = v5;
  v9 = v4;
  return sub_10079B9B4();
}

id sub_10055B4AC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [objc_opt_self() bc_colorWithARGBHexValue:{objc_msgSend(v1, "im_averageColor")}];

  return v2;
}

uint64_t sub_10055B51C(unsigned __int8 a1)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (((v7 | a1) & 1) != *(v1 + 112))
  {
    if ((v7 | a1))
    {
      *(v1 + 113) = v6;
    }

    *(v1 + 112) = (v7 | a1) & 1;
  }

  return result;
}

uint64_t sub_10055B64C(unsigned __int8 a1)
{
  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  if (((a1 | v7) & 1) != *(v1 + 112))
  {
    if ((a1 | v7))
    {
      *(v1 + 113) = v6;
    }

    *(v1 + 112) = (a1 | v7) & 1;
  }

  return result;
}

uint64_t sub_10055B77C()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055B814(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_100206108(a1, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100206108(v6, &v5);
  v3 = v2;
  sub_10079B9B4();
  return sub_100206178(v6);
}

uint64_t sub_10055B8D4()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055B944()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_10079B9B4();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10055BA14()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BA94()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BB28()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BBF0()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BC88()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BCFC()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BD88()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_10079B9B4();
}

uint64_t sub_10055BE14()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_10079B9B4();
}

uint64_t sub_10055BF00()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    v2 = (*sub_10000E3E8((v1 + 24), *(v1 + 48)) + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    if ([*(*sub_10000E3E8(v2 v2[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] == 2)
    {
      [*(*sub_10000E3E8(v2 v2[3]) + OBJC:"pause" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    }

    else
    {
      sub_1002CF778(1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10055C0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingPresenterAssetStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10055C1F0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10055C270(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

float sub_10055C2E0@<S0>(float *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10055C360(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

double sub_10055C4A0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10055C520(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10055CF5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  if (v3)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v5;
  }

  sub_1000260E8(v3);
  v9 = v7;
  return sub_10079B9B4();
}

uint64_t sub_10055C6A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

float sub_10055C70C@<S0>(float *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10055C78C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10055C854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();
}

uint64_t sub_10055C8D0(uint64_t a1, void **a2)
{
  sub_100206108(a1, v7);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100206108(v7, &v6);
  v4 = v3;
  sub_10079B9B4();
  return sub_100206178(v7);
}

uint64_t sub_10055C958@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10055C9E0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10055CA60@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10055CAE0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

unint64_t sub_10055CBC8()
{
  result = qword_100AD8170;
  if (!qword_100AD8170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8170);
  }

  return result;
}

void sub_10055CC14(void *a1, void *a2)
{
  v4 = [a1 permanentOrTemporaryAssetID];
  if (!v4)
  {
    sub_1007A2254();
    v4 = sub_1007A2214();
  }

  v5 = [objc_opt_self() supplementalContentPDFPickerWithPlaylistID:v4 fromActionMenu:0];

  if (v5)
  {
    v6 = swift_allocObject();
    v6[2] = a2;
    v6[3] = v5;
    v6[4] = a1;
    aBlock[4] = sub_10055CF04;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A22F40;
    v7 = _Block_copy(aBlock);
    v8 = a2;
    v9 = v5;
    v10 = a1;

    [v8 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_100AD19A8 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AF0290);
    swift_unknownObjectRetain();
    oslog = sub_10079ACC4();
    v12 = sub_1007A29B4();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 141558274;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2080;
      v15 = [a1 description];
      v16 = sub_1007A2254();
      v18 = v17;

      v19 = sub_1000070F4(v16, v18, aBlock);

      *(v13 + 14) = v19;
      sub_1000074E0(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_10055CF2C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MarkAsFinishedActionItem()
{
  result = qword_100AE9DF0;
  if (!qword_100AE9DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055D020()
{
  sub_1001FEBC8(319, &qword_100AD4AF0);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &unk_100AE9C00);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AD7738);
          if (v4 <= 0x3F)
          {
            sub_100797144();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

id sub_10055D144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for MarkAsFinishedActionItem() + 36);
    v21 = enum case for ContextActionType.markAsFinished(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5 + 40);
    sub_1000077C0(v27, a5);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10055D380()
{
  sub_10000E3E8((v0 + 40), *(v0 + 64));
  if (sub_1007976D4())
  {
    return 0;
  }

  sub_1001FEC24(&v4);
  if (v5)
  {
    sub_1001FF7C8(&v4, &v6);
    sub_10000E3E8(&v6, v7);
    v2 = sub_1007975D4();
    sub_10000E3E8(&v6, v7);
    sub_1007976B4();
    v3 = 0;
    if ((sub_1007972D4() & 1) == 0)
    {
      sub_10000E3E8(&v6, v7);
      sub_1007976B4();
      if ((sub_1007972D4() & 1) == 0 && (v2 & 1) == 0)
      {
        v3 = 1;
      }
    }

    sub_1000074E0(&v6);
    return v3;
  }

  else
  {
    sub_1001FF760(&v4);
    return 0;
  }
}

uint64_t sub_10055D4A4()
{
  v1[19] = v0;
  v2 = sub_10079ACE4();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = sub_1007A26F4();
  v1[24] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_10055D59C, v4, v3);
}

uint64_t sub_10055D59C()
{
  sub_1001FEC24((v0 + 64));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 152);
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    v2 = sub_10000E3E8(v1 + 16, v1[19]);
    *(v0 + 216) = v1[10];
    v4 = *v2;
    v3 = *(v2 + 1);
    *(v0 + 144) = v2[4];
    *(v0 + 112) = v4;
    *(v0 + 128) = v3;
    *(v0 + 224) = sub_1007A26E4();
    *(v0 + 232) = sub_1007A26E4();
    v6 = sub_1007A2694();
    *(v0 + 240) = v6;
    *(v0 + 248) = v5;

    return _swift_task_switch(sub_10055D770, v6, v5);
  }

  else
  {

    sub_1001FF760(v0 + 64);
    sub_10079AC44();
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 160);
    if (v9)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Action doesn't have sufficient information to handle action.", v13, 2u);
    }

    (*(v11 + 8))(v10, v12);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10055D770()
{
  v1 = v0[27];
  v2 = v0[19];
  sub_10000E3E8(v0 + 2, v0[5]);
  v3 = sub_100797674();
  v5 = v4;
  v0[32] = v4;
  v6 = sub_1007A26E4();
  v0[33] = v6;
  v7 = swift_task_alloc();
  v0[34] = v7;
  *(v7 + 16) = v0 + 14;
  *(v7 + 24) = v3;
  *(v7 + 32) = v5;
  *(v7 + 40) = 513;
  *(v7 + 48) = v0 + 2;
  *(v7 + 56) = v1;
  *(v7 + 64) = 1;
  *(v7 + 72) = v2;
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_10055D8E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000050, 0x80000001008DCA30, sub_10055DC58, v7, &type metadata for () + 8);
}

uint64_t sub_10055D8E8()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return _swift_task_switch(sub_10055DA6C, v3, v2);
}

uint64_t sub_10055DA6C()
{

  v1 = sub_1007A2694();

  return _swift_task_switch(sub_10055DAF0, v1, v0);
}

uint64_t sub_10055DAF0()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_10055DB54, v1, v2);
}

uint64_t sub_10055DB54()
{

  sub_1000074E0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10055DBC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10055D4A4();
}

unint64_t BookMovementState.description.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
    if (!(a3 >> 6))
    {
      sub_1007A3744(42);

      v9 = 0xD000000000000021;
      v10._countAndFlagsBits = sub_1007A3A74();
      sub_1007A23D4(v10);

      v11._countAndFlagsBits = 544175136;
      v11._object = 0xE400000000000000;
      sub_1007A23D4(v11);
      v4._countAndFlagsBits = sub_1007A3A74();
LABEL_14:
      sub_1007A23D4(v4);

      v16._countAndFlagsBits = 62;
      v16._object = 0xE100000000000000;
      sub_1007A23D4(v16);
      return v9;
    }

    v9 = 0;
    sub_1007A3744(64);
    v5 = "te chapterScrubbing from ";
    v6._countAndFlagsBits = 0xD000000000000026;
LABEL_7:
    v6._object = (v5 | 0x8000000000000000);
    sub_1007A23D4(v6);
    v12._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v12);

    v13._countAndFlagsBits = 544175136;
    v13._object = 0xE400000000000000;
    sub_1007A23D4(v13);
    v14._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v14);

    v15._countAndFlagsBits = 0x764F776F6873202ELL;
    v15._object = 0xEF203F79616C7265;
    sub_1007A23D4(v15);
    if (a3)
    {
      v4._countAndFlagsBits = 1702195828;
    }

    else
    {
      v4._countAndFlagsBits = 0x65736C6166;
    }

    if (a3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v4._object = v7;
    goto LABEL_14;
  }

  if (a3 >> 6 == 2)
  {
    v9 = 0;
    sub_1007A3744(67);
    v5 = "inishedDateSet:)";
    v6._countAndFlagsBits = 0xD000000000000029;
    goto LABEL_7;
  }

  return 0xD000000000000018;
}

uint64_t getEnumTagSinglePayload for BookMovementState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for BookMovementState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_10055DFD0(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10055DFFC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

void sub_10055E328(char *a1)
{
  v2 = sub_100799004();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  (*(v3 + 104))(v6, enum case for BooksFeatureFlag.readingLoupe(_:), v2, v4);
  sub_100017CFC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  LOBYTE(a1) = sub_1007A2554();
  (*(v3 + 8))(v6, v2);
  if ((a1 & 1) != 0 && (v7 & 1) == 0)
  {
    v8 = sub_10079F084();
    if (v8)
    {
      v9 = v8;
      sub_10079F674();
      if (swift_dynamicCastClass())
      {
        sub_10079F5D4();
        sub_1007A1814();
      }

      else
      {
      }
    }
  }
}

void sub_10055E4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10079ABD4();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079AB94();
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079F734();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v11 + 104))(v13, enum case for BookContentLayoutController.LayoutState.done(_:), v10);
    v16 = sub_10079F724();
    (*(v11 + 8))(v13, v10);
    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      [v17 bookContentDidLoad];
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(a3 + 16))
    {

      sub_10079B874();
    }

    v18 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentReadyIntervalState;
    if (*&v15[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentReadyIntervalState])
    {

      v19 = sub_10079ABB4();
      sub_10079ABF4();
      v20 = sub_1007A2E54();
      if (sub_1007A3394())
      {

        sub_10079AC24();

        v21 = v25;
        if ((*(v25 + 88))(v6, v4) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v22 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v6, v4);
          v22 = "";
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = sub_10079AB74();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v24, "REI.ContentReady", v22, v23, 2u);
      }

      (*(v26 + 8))(v9, v7);
      *&v15[v18] = 0;
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_10055E8DC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100563160(v1);
  }
}

id sub_10055E960()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BookReaderContainerViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v4];

    v5 = [v1 viewIfLoaded];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      v9.value.super.super.isa = v6;
      sub_10079F0A4(v9);
    }

    sub_10055ECF8();
    sub_10056176C();
    sub_10055F014();
    sub_1005600FC();
    sub_10055EA74();
    sub_10055F4D8();
    return sub_10055F734();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10055EA74()
{
  v1 = sub_1001F1160(&unk_100AEA150);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking + 8);
  ObjectType = swift_getObjectType();
  v8[1] = (*(v5 + 32))(ObjectType, v5);
  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  sub_10079BAD4();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&unk_100AEA168, &unk_100AEA150);
  sub_10079BB04();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_10055ECF8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_paginationHostView];
  [v1 setAlpha:0.01];
  [v1 setUserInteractionEnabled:0];
  [v1 setAccessibilityElementsHidden:1];
  v2 = [v0 view];
  if (v2)
  {
    v20 = v2;
    [v2 addSubview:v1];
    v3 = [v1 superview];
    if (v3)
    {
      v4 = v3;
      [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = objc_opt_self();
      sub_1001F1160(&unk_100AD8160);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100816E30;
      v7 = [v1 topAnchor];
      v8 = [v4 topAnchor];
      v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

      *(v6 + 32) = v9;
      v10 = [v1 leadingAnchor];
      v11 = [v4 leadingAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

      *(v6 + 40) = v12;
      v13 = [v4 bottomAnchor];
      v14 = [v1 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

      *(v6 + 48) = v15;
      v16 = [v4 trailingAnchor];
      v17 = [v1 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

      *(v6 + 56) = v18;
      sub_10000A7C4(0, &qword_100AE9010);
      isa = sub_1007A25D4().super.isa;

      [v5 activateConstraints:isa];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10055F014()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController];
  [v0 addChildViewController:v1];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  [v3 addSubview:v4];
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100816E30;
    v9 = [v5 topAnchor];
    v10 = [v7 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:0.0];

    *(v8 + 32) = v11;
    v12 = [v5 leadingAnchor];
    v13 = [v7 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

    *(v8 + 40) = v14;
    v15 = [v7 bottomAnchor];
    v16 = [v5 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

    *(v8 + 48) = v17;
    v18 = [v7 trailingAnchor];
    v19 = [v5 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

    *(v8 + 56) = v20;
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v37 activateConstraints:isa];
  }

  v22 = [v1 view];
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 layer];

  [v24 setMasksToBounds:1];
  v25 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture];
  if (v25)
  {
    v26 = v25;
    v27 = [v1 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v28 = v27;
    [v27 addGestureRecognizer:v26];
  }

  v29 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture];
  if (v29)
  {
    v30 = v29;
    v31 = [v1 view];
    if (!v31)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v32 = v31;
    [v31 addGestureRecognizer:v30];
  }

  v33 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"readingLoupeSelectLine:"];
  [v33 setDelegate:v0];
  [v33 setNumberOfTouchesRequired:1];
  v34 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture];
  *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture] = v33;
  v38 = v33;

  v35 = [v1 view];
  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v35;
  [v35 addGestureRecognizer:v38];

  [v1 didMoveToParentViewController:v0];
}

uint64_t sub_10055F4D8()
{
  v1 = v0;
  v2 = type metadata accessor for _BookReaderInteractorState(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BookReaderThemeChangeSnapshotAnimator();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0x8000000000000000;
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 64) = xmmword_100830EA0;
  *(v5 + 80) = xmmword_100830EB0;
  *(v5 + 96) = 0x3FF0000000000000;
  *(v5 + 56) = &off_100A23160;
  swift_unknownObjectWeakAssign();
  sub_1004A79C8(v4);
  v6 = sub_1004A7D14();

  v7 = sub_10079F774();

  type metadata accessor for BookReaderThemeChangeWatcher();
  v8 = swift_allocObject();
  *(v8 + 48) = &_swiftEmptySetSingleton;
  *(v8 + 16) = v4[2];
  *(v8 + 17) = v4[3];
  *(v8 + 18) = v4[4];

  v9 = sub_1007A0A14();
  v11 = v10;
  if (v9 == sub_1007A0A14() && v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1007A3AB4();
  }

  *(v8 + 19) = v14 & 1;
  *(v8 + 24) = v6;
  *(v8 + 32) = v7;
  *(v8 + 40) = v5;

  sub_10029757C();

  sub_10056E074(v4, type metadata accessor for _BookReaderInteractorState);
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_themeChangeWatcher) = v8;
}

uint64_t sub_10055F734()
{
  v0 = sub_1001F1160(&unk_100AEA120);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  result = swift_weakLoadStrong();
  if (result)
  {

    swift_beginAccess();
    sub_1001F1160(&unk_100AF2880);
    sub_10079B974();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100005920(&unk_100AEA130, &unk_100AEA120);
    sub_10079BB04();

    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();
  }

  return result;
}

void sub_10055F944(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v2 - 8);
  v4 = v27 - v3 + 64;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v26 = a1;
    v7 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService;
    v8 = *(Strong + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
    v9 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v8 + v9, v27);
    sub_10000E3E8(v27, v28);
    sub_10079ECA4();
    sub_1000074E0(v27);
    v10 = *&v6[v7];
    v11 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v10 + v11, v27);
    sub_10000E3E8(v27, v28);
    sub_10079EC64();
    sub_1000074E0(v27);
    v12 = *&v6[v7];
    v13 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v12 + v13, v27);
    sub_10000E3E8(v27, v28);
    sub_10079EC74();
    sub_1000074E0(v27);
    v14 = objc_allocWithZone(BCAppIntentsAssetViewControllerInfo);
    v15 = sub_1007A2214();

    v16 = sub_1007A2214();

    v17 = sub_1007A2214();

    v18 = [v14 initWithAssetID:v15 title:v16 author:v17 supportsTheming:1];

    v19 = *&v6[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo];
    *&v6[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo] = v18;
    sub_10000A7C4(0, &qword_100AEA140);
    v20 = v18;
    if ((sub_1007A3184() & 1) == 0)
    {
      type metadata accessor for BookReaderContainerViewController();
      sub_1007A3004();
    }

    if (swift_weakLoadStrong())
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4();

      v21 = type metadata accessor for OverlayViewModel.Overlay(0);
      v22 = *(*(v21 - 8) + 48);
      if (v22(v4, 1, v21) != 1)
      {
        sub_100007840(v4, &qword_100ADB1C0);
        if (v22(v26, 1, v21) == 1)
        {
          v23 = *&v6[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle];
          if (v23)
          {

            v23(v24);
            sub_100007020(v23);
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
      v25 = type metadata accessor for OverlayViewModel.Overlay(0);
      (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
    }

    sub_100007840(v4, &qword_100ADB1C0);
    sub_10055FD9C();
LABEL_11:
  }
}

uint64_t sub_10055FD9C()
{
  v1 = v0;
  v2 = sub_10079EF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = [v0 viewIfLoaded];
  if (!v10)
  {
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v16 = 1;
LABEL_20:
    v21 = 1;
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v10 window];

  if (!v12)
  {
    v14 = 0;
    v15 = 0;
    v16 = 1;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v13 overrideUserInterfaceStyle];
  if ([v13 overrideUserInterfaceStyle])
  {
    v29 = [v13 overrideUserInterfaceStyle];
  }

  else
  {
    v17 = [v13 traitCollection];
    v29 = [v17 userInterfaceStyle];
  }

  v18 = sub_10079F084();
  if (!v18)
  {

LABEL_19:
    v16 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v19 = v18;
  sub_10079F674();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_19;
  }

  v28 = v3;
  v15 = sub_10079F644();
  if (!v15)
  {

    v16 = 0;
    goto LABEL_20;
  }

  swift_getObjectType();
  sub_1007A1344();
  swift_unknownObjectRelease();
  v20 = v28;
  (*(v28 + 32))(v9, v5, v2);
  if (sub_10079EE44())
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  v21 = v29 == v15;
  if (v29 == v15)
  {
    v15 = 0;
  }

  else
  {
    v27 = v19;
    v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_forcingInterfaceStyleForOneAlert] = 1;
    [v13 setOverrideUserInterfaceStyle:v15];
    v19 = v13;
    v13 = v27;
    v20 = v28;
  }

  (*(v20 + 8))(v9, v2);
  v16 = 0;
LABEL_21:
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v15;
  *(v23 + 24) = v21;
  *(v23 + 32) = v12;
  *(v23 + 40) = v14;
  *(v23 + 48) = v16;
  *(v23 + 56) = v22;
  v24 = &v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle];
  v25 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle];
  *v24 = sub_10056C650;
  v24[1] = v23;
  return sub_100007020(v25);
}

void sub_1005600FC()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AEA0F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = sub_1001F1160(&qword_100AEA0F8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  if (v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_turnPageButtonManager] == 1)
  {
    v17 = v7;
    v10 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTapDuringPageTurn:"];
    [v10 setDelegate:v1];
    v11 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture];
    *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture] = v10;
    v16 = v10;

    sub_10000E3E8(&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_pageTurnController], *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_pageTurnController + 24]);
    v18 = sub_1007A0AA4();
    sub_1001F1160(&unk_100AEA100);
    sub_100005920(&qword_100AE63F8, &unk_100AEA100);
    sub_10079BA74();

    sub_100005920(&qword_100AEA110, &qword_100AEA0F0);
    sub_10079BAF4();
    (*(v3 + 8))(v5, v2);
    v12 = v16;
    swift_getKeyPath();
    v18 = v12;
    sub_100005920(&qword_100AEA118, &qword_100AEA0F8);
    sub_10079BB14();

    (*(v17 + 8))(v9, v6);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 addGestureRecognizer:v12];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005604C4@<X0>(BOOL *a1@<X8>)
{
  result = sub_1007A0624();
  *a1 = (result & 1) == 0;
  return result;
}

void sub_1005604F8()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADA900);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  sub_1007A2F54();
  v5 = sub_1001F1160(&unk_100ADB4D0);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100ADA900);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to determine location of tap gesture";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  sub_10079FEB4();
  v11 = v25;
  (*(v6 + 8))(v4, v5);
  v12 = sub_10079F034();
  v13 = sub_10079F644();

  if (!v13)
  {
LABEL_7:
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Trying to turn page while line guide is active";
      goto LABEL_9;
    }

LABEL_10:

    return;
  }

  swift_getObjectType();
  if (sub_1007A1364())
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v26.origin.x = v17;
    v26.origin.y = v19;
    v26.size.width = v21;
    v26.size.height = v23;
    Width = CGRectGetWidth(v26);
    sub_1006A1B38(v11 / Width);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_100560910(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for BookReaderContainerViewController();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_viewReady] = 1;
  sub_1004AADE4();
  v4 = [v2 viewIfLoaded];

  isPhone();
  [objc_opt_self() startSleepTimer];
  v5 = [objc_opt_self() shared];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bookViewDidAppear:v2];

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0984();
  swift_unknownObjectRelease();
  v7 = [v2 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = [v7 window];

  if (v9)
  {
    v10 = [v9 windowScene];

    if (v10)
    {
      sub_10000A7C4(0, &qword_100AE15B0);
      sub_1007A2E04();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10000A7C4(0, &qword_100AEA148);
      v11 = sub_1007A2974();

      *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_windowSceneTraitRegistration] = v11;
      swift_unknownObjectRelease();
    }
  }
}

void sub_100560B7C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 traitCollection];
    v5 = sub_10079ACC4();
    v6 = sub_1007A29D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = [v4 userInterfaceStyle];

      _os_log_impl(&_mh_execute_header, v5, v6, "Window Scene traits updated with #userInterfaceStyle %{public}ld)", v7, 0xCu);
    }

    else
    {

      v5 = v4;
    }

    sub_100560D08(0);
  }
}

uint64_t sub_100560D08(uint64_t a1)
{
  v2 = sub_1007A1C54();
  v14 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007A1CA4();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v8 = sub_1007A2D74();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_10056E058;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A23680;
  v11 = _Block_copy(aBlock);

  sub_1007A1C74();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100017CFC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v11);

  (*(v14 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v13);
}

void sub_10056101C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 window];

    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = [v7 windowScene];

    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = [v8 traitCollection];
    v10 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider;
    [*(&v4->isa + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider) setTraitCollection:v9];
    v11 = [*(&v4->isa + v10) traitCollection];
    sub_10000A7C4(0, &qword_100AE15B0);
    v12 = sub_1007A3184();

    v13 = v9;
    v14 = sub_10079ACC4();
    v15 = sub_1007A29D4();
    v16 = os_log_type_enabled(v14, v15);
    if (v12)
    {
      if (v16)
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = [v13 userInterfaceStyle];

        _os_log_impl(&_mh_execute_header, v14, v15, "Trait collection applied with #userInterfaceStyle: %{public}ld", v17, 0xCu);
LABEL_15:

        v4 = v14;
        goto LABEL_17;
      }
    }

    else
    {
      if (v16)
      {
        v18 = swift_slowAlloc();
        *v18 = 134349056;
        *(v18 + 4) = [v13 userInterfaceStyle];

        _os_log_impl(&_mh_execute_header, v14, v15, "#userInterfaceStyle: Trait collection update to %{public}ld was ignored by environmentProvider, scheduling retry", v18, 0xCu);
      }

      else
      {

        v14 = v13;
      }

      if (a2 <= 2)
      {
        sub_100560D08(a2 + 1);
LABEL_17:

        v4 = v13;
LABEL_18:

        return;
      }

      v13 = v13;
      v14 = sub_10079ACC4();
      v19 = sub_1007A29B4();
      if (os_log_type_enabled(v14, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134349056;
        *(v20 + 4) = [v13 userInterfaceStyle];

        _os_log_impl(&_mh_execute_header, v14, v19, "#userInterfaceStyle: Giving up applying %{public}ld after repeated deferrals", v20, 0xCu);
        goto LABEL_15;
      }
    }

    v4 = v8;
    v8 = v13;
    goto LABEL_17;
  }
}

void sub_100561354(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for BookReaderContainerViewController();
  objc_msgSendSuper2(&v10, "viewWillDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_windowSceneTraitRegistration;
  if (*&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_windowSceneTraitRegistration])
  {
    swift_unknownObjectRetain();
    v4 = [v1 view];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = v4;
    v6 = [v4 window];

    if (v6)
    {
      v7 = [v6 windowScene];

      if (v7)
      {
        sub_1007A2984();
      }
    }

    swift_unknownObjectRelease();
    *&v1[v3] = 0;
    swift_unknownObjectRelease();
  }

  [objc_opt_self() stopSleepTimer];
  v8 = [objc_opt_self() shared];
  if (v8)
  {
    v9 = v8;
    [v8 bookViewWillDisappear:v1];

    return;
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void sub_100561504(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BookReaderContainerViewController();
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [v4 setTransform:v10];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 _setContinuousCornerRadius:0.0];

  v8 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView];
  if (v8)
  {
    [v8 setEffect:0];
  }

  v9 = [v1 viewIfLoaded];
}

void sub_10056176C()
{
  v1 = v0;
  v2 = sub_100799234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong assetViewControllerShouldUseLegacyAnimation:v1];
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  (*(v3 + 104))(v5, enum case for BooksUIKitFeatureFlag.fluidTransitions(_:), v2);
  v8 = sub_100799134();
  (*(v3 + 8))(v5, v2);
  v9 = sub_10079ACC4();
  v10 = sub_1007A29D4();
  v11 = os_log_type_enabled(v9, v10);
  if ((v8 & 1) != 0 && (v7 & 1) == 0)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "#swipeToDismiss - Not using legacy animation, not setting up close handlers.", v12, 2u);
    }

LABEL_14:

    return;
  }

  if (v11)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "#swipeToDismiss - Setting up close handlers.", v13, 2u);
  }

  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:v14];
    v17 = [v14 superview];
    if (v17)
    {
      v18 = v17;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v19 = objc_opt_self();
      sub_1001F1160(&unk_100AD8160);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100816E30;
      v21 = [v14 topAnchor];
      v22 = [v18 topAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];

      *(v20 + 32) = v23;
      v24 = [v14 leadingAnchor];
      v25 = [v18 leadingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];

      *(v20 + 40) = v26;
      v27 = [v18 bottomAnchor];
      v28 = [v14 bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];

      *(v20 + 48) = v29;
      v30 = [v18 trailingAnchor];
      v31 = [v14 trailingAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:0.0];

      *(v20 + 56) = v32;
      sub_10000A7C4(0, &qword_100AE9010);
      isa = sub_1007A25D4().super.isa;

      [v19 activateConstraints:isa];
    }

    v34 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView];
    *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView] = v14;
    v35 = v14;

    swift_getObjectType();
    sub_10079F4F4();
    v36 = sub_1007A2BB4();
    v37 = objc_allocWithZone(UIPanGestureRecognizer);
    v38 = v1;
    v39 = [v37 initWithTarget:v38 action:"dragToDismiss:"];
    [v39 setMaximumNumberOfTouches:1];
    [v39 setAllowedScrollTypesMask:2];
    v40 = v39;
    [v40 setDelegate:v38];
    [v40 setEnabled:(v36 & 1) == 0];

    v41 = *&v38[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture];
    *&v38[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture] = v40;
    v42 = v40;

    v43 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v38 action:"swipeToDismiss:"];
    v44 = v43;
    [v44 setDelegate:v38];
    [v44 setEnabled:(v36 & 1) == 0];

    v9 = *&v38[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture];
    *&v38[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture] = v44;
    goto LABEL_14;
  }

  __break(1u);
}

void sub_100561D84(void *a1)
{
  if (sub_100562FB4())
  {
    v3 = [a1 state];
    if ((v3 - 3) >= 2)
    {
      if (v3 == 2)
      {
        v11 = [v1 view];
        [a1 translationInView:v11];
        v13 = v12;
        v15 = v14;

        v16 = fabs(v13) * 3.0;
        if (v15 > 0.0 && v16 < v15)
        {
          v18 = &v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation];
          *v18 = v13;
          v18[1] = v15;
          *(v18 + 16) = 0;
          v19 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_layoutController];
          swift_beginAccess();
          if (*(v19 + 240) != 1)
          {
            *(v19 + 240) = 1;
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              [Strong assetViewController:v1 attemptClose:1];
              swift_unknownObjectRelease();
            }
          }

          sub_100563278(1);
          v21 = swift_allocObject();
          *(v21 + 16) = v13;
          *(v21 + 24) = v15;
          *(v21 + 32) = v1;
          v22 = objc_opt_self();
          v30 = sub_10056E04C;
          v31 = v21;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_1003323D0;
          v29 = &unk_100A23630;
          v23 = _Block_copy(&aBlock);
          v24 = v1;

          [v22 animateWithDuration:0 delay:v23 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:1.0];
          _Block_release(v23);
        }
      }
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation];
      if ((v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation + 16] & 1) == 0)
      {
        if (*(v4 + 1) >= 200.0)
        {
          sub_10056D8CC(1);
          *v4 = 0;
          *(v4 + 1) = 0;
          v4[16] = 1;
          v25 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_layoutController];
          swift_beginAccess();
          if (*(v25 + 240) == 1)
          {
            *(v25 + 240) = 0;
          }
        }

        else
        {
          v5 = swift_allocObject();
          *(v5 + 16) = v1;
          v6 = swift_allocObject();
          *(v6 + 16) = v1;
          v7 = objc_opt_self();
          v30 = sub_10056E03C;
          v31 = v5;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_1003323D0;
          v29 = &unk_100A235B8;
          v8 = _Block_copy(&aBlock);
          v9 = v1;

          v30 = sub_10056E044;
          v31 = v6;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_10021B6B0;
          v29 = &unk_100A235E0;
          v10 = _Block_copy(&aBlock);

          [v7 animateWithDuration:0 delay:v8 usingSpringWithDamping:v10 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:1.0];
          _Block_release(v10);
          _Block_release(v8);
        }
      }
    }
  }
}

void sub_1005621B8(uint64_t a1, CGFloat a2, double a3)
{
  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v32.origin.x = v8;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  Height = CGRectGetHeight(v32);
  v16 = Height - a3;
  if (Height - a3 <= 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16 / Height;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 > 0.65)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0.65;
  }

  CGAffineTransformMakeTranslation(&t1, a2, v17 * a3);
  v27 = *&t1.a;
  v28 = *&t1.c;
  tx = t1.tx;
  ty = t1.ty;
  CGAffineTransformMakeScale(&t1, v18, v18);
  v25 = *&t1.c;
  v26 = *&t1.a;
  v21 = t1.tx;
  v22 = t1.ty;
  v23 = [*(a1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];
  if (v23)
  {
    v24 = v23;
    *&t1.a = v27;
    *&t1.c = v28;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v26;
    *&t2.c = v25;
    t2.tx = v21;
    t2.ty = v22;
    CGAffineTransformConcat(&v29, &t1, &t2);
    t1 = v29;
    [v24 setTransform:&t1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100562344(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];
  if (v1)
  {
    v2 = v1;
    v3[0] = 0x3FF0000000000000;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0x3FF0000000000000;
    v3[4] = 0;
    v3[5] = 0;
    [v1 setTransform:v3];
  }

  else
  {
    __break(1u);
  }
}

id sub_1005623B8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = *(a2 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_layoutController);
  swift_beginAccess();
  if (*(v4 + 240) == 1)
  {
    *(v4 + 240) = 0;
  }

  result = [*(a2 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];
  if (result)
  {
    v6 = result;
    [result _setContinuousCornerRadius:0.0];

    v7 = *(a2 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView);
    if (v7)
    {
      [v7 setEffect:0];
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result assetViewController:a2 cancelledClose:1];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005625A4(void *a1)
{
  v2 = sub_100799004();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for BooksFeatureFlag.readingLoupe(_:), v2, v4);
  sub_100017CFC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  v7 = sub_1007A2554();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    return;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = *(Strong + 112);
  swift_getKeyPath();
  v15[1] = v9;
  sub_100017CFC(&qword_100ADB430, type metadata accessor for REActionMenuState);
  sub_100797A14();

  v10 = *(v9 + 328);
  if ((v10 >> 62) < 2 || __ROR8__(v10 ^ 0x8000000000000000, 3) || (v11 = sub_10079F084()) == 0)
  {
LABEL_14:

    return;
  }

  v12 = v11;
  sub_10079F674();
  if (!swift_dynamicCastClass())
  {

    return;
  }

  if (!sub_10079F644())
  {

    goto LABEL_14;
  }

  sub_10079F5D4();
  sub_1007A1814();

  swift_getObjectType();
  if (sub_1007A13A4() & 1) != 0 && (sub_1007A1364())
  {
    sub_10079F5D4();
    v13 = a1;
    sub_1007A1804();

    v14.super.isa = v13;
    sub_10079F634(v14);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10056293C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture];
  if (v6 && (sub_10000A7C4(0, &unk_100AEA0E0), v7 = v6, v8 = a1, v9 = sub_1007A3184(), v7, v8, (v9 & 1) != 0) || (v10 = *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture]) != 0 && (sub_10000A7C4(0, &unk_100AEA0E0), v11 = a1, v12 = v10, v13 = sub_1007A3184(), v12, v11, (v13 & 1) != 0))
  {
    v14 = *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closeGestureManager];
    v15 = [v3 view];
    [a2 locationInView:v15];
    v17 = v16;
    v19 = v18;

    v20 = *(v14 + 16);
    v21 = *(v20 + 16);

    v23 = v20 + 56;
    v24 = -v21;
    v25 = -1;
    while (1)
    {
      if (v24 + v25 == -1)
      {

        return 1;
      }

      if (++v25 >= *(v20 + 16))
      {
        break;
      }

      v26 = v23 + 32;
      v38.x = v17;
      v38.y = v19;
      result = CGRectContainsPoint(*(v23 - 24), v38);
      v23 = v26;
      if (result)
      {

        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture];
    if (v27 && (sub_10000A7C4(0, &unk_100AEA0E0), v28 = a1, v29 = v27, v30 = sub_1007A3184(), v29, v28, (v30 & 1) != 0))
    {
      return 1;
    }

    else
    {
      v31 = *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture];
      if (v31 && (sub_10000A7C4(0, &unk_100AEA0E0), v32 = a1, v33 = v31, v34 = sub_1007A3184(), v33, v32, (v34 & 1) != 0) && (v35 = sub_10079F034(), v36 = sub_10079F644(), v35, v36))
      {
        swift_getObjectType();
        v37 = sub_1007A1364();
        swift_unknownObjectRelease();
        return v37 & 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100562C48(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture;
  v5 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture];
  if (v5 && (sub_10000A7C4(0, &unk_100AEA0E0), v6 = v5, v7 = a1, v8 = sub_1007A3184(), v6, v7, (v8 & 1) != 0))
  {
    v9 = *&v2[v4];
    if (v9)
    {
      v10 = v9;
      v11 = [v2 view];
      [v10 velocityInView:v11];

      v12 = [v2 view];
      [v10 locationInView:v12];
      v14 = v13;
      v16 = v15;

      sub_10079F674();
      if ((sub_10079F664() & 1) == 0)
      {
LABEL_10:

        return;
      }

      v17 = *(*&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closeGestureManager] + 16);
      v18 = *(v17 + 16);

      v19 = v17 + 56;
      v20 = -v18;
      v21 = -1;
      while (1)
      {
        if (v20 + v21 == -1)
        {

          return;
        }

        if (++v21 >= *(v17 + 16))
        {
          break;
        }

        v22 = v19 + 32;
        v38.x = v14;
        v38.y = v16;
        v23 = CGRectContainsPoint(*(v19 - 24), v38);
        v19 = v22;
        if (v23)
        {

          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v24 = *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture];
    if (!v24 || (sub_10000A7C4(0, &unk_100AEA0E0), v25 = a1, v26 = v24, v27 = sub_1007A3184(), v26, v25, (v27 & 1) == 0))
    {
      v28 = *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture];
      if (!v28 || (sub_10000A7C4(0, &unk_100AEA0E0), v29 = a1, v30 = v28, v31 = sub_1007A3184(), v30, v29, (v31 & 1) == 0))
      {
        v32 = *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture];
        if (v32)
        {
          sub_10000A7C4(0, &unk_100AEA0E0);
          v33 = a1;
          v34 = v32;
          v35 = sub_1007A3184();

          if (v35)
          {
            v36 = sub_10079F034();
            v37 = sub_10079F644();

            if (v37)
            {
              swift_getObjectType();
              sub_1007A1364();
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100562FB4()
{
  v1 = v0;
  v2 = sub_1007A0634();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_pageTurnController), *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_pageTurnController + 24));
  sub_1007A0A94();
  v6 = sub_1007A0624();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_getObjectType();
    sub_10079F4F4();
    v7 = sub_1007A2BB4();
    v8 = *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
    v9 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v8 + v9, v13);
    sub_10000E3E8(v13, v13[3]);
    LOBYTE(v8) = sub_10079EC84();
    sub_1000074E0(v13);
    v10 = v8 | v7 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_100563160(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture];
  if (v3)
  {
    v4 = v3;
    [v4 setEnabled:(sub_1007A2BB4() & 1) == 0];
  }

  v5 = *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture];
  if (v5)
  {
    v6 = v5;
    [v6 setEnabled:(sub_1007A2BB4() & 1) == 0];
  }

  if (a1 != 1)
  {
    v7 = [v1 viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = v7;
      v11.value.super.super.isa = v8;
      sub_10079F0A4(v11);
    }
  }
}

void sub_100563278(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController) view];
  if (v3)
  {
    v4 = v3;
    v5 = 0.0;
    if (a1)
    {
      v6 = [objc_opt_self() currentTraitCollection];
      [v6 displayCornerRadius];
      v8 = v7;

      v5 = 16.0;
      if (v8 > 0.0)
      {
        v5 = v8;
      }
    }

    [v4 _setContinuousCornerRadius:v5];

    v9 = *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView);
    if (v9)
    {
      if (a1)
      {
        v10 = objc_opt_self();
        v11 = v9;
        v12 = [v10 effectWithStyle:16];
      }

      else
      {
        v11 = v9;
        v12 = 0;
      }

      v13 = v12;
      [v11 setEffect:?];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005633DC()
{
  v0 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  if (!swift_weakLoadStrong())
  {
    v6 = type metadata accessor for OverlayViewModel.Overlay(0);
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v3 = type metadata accessor for OverlayViewModel.Overlay(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
LABEL_6:
    sub_100007840(v2, &qword_100ADB1C0);
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10056E074(v2, type metadata accessor for OverlayViewModel.Overlay);
  if (EnumCaseMultiPayload == 1)
  {
    return 0;
  }

LABEL_7:
  v5 = 1;
  if (sub_100562FB4())
  {
    sub_10056D8CC(1);
  }

  return v5;
}

double sub_100563600@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1000077D8(a2, &v40, &unk_100AD5B40);
  v8 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    v9 = sub_10000E3E8(&v40, *(&v41 + 1));
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1007A3AA4();
    (*(v10 + 8))(v13, v8);
    sub_1000074E0(&v40);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 canPerformAction:a1 withSender:v14];
  swift_unknownObjectRelease();
  if (v15)
  {
    goto LABEL_12;
  }

  v38 = *&v4[OBJC_IVAR____TtC5Books33BookReaderContainerViewController__actionTarget];
  sub_1000077D8(a2, &v40, &unk_100AD5B40);
  v16 = *(&v41 + 1);
  if (*(&v41 + 1))
  {
    v17 = sub_10000E3E8(&v40, *(&v41 + 1));
    v18 = *(v16 - 8);
    v19 = __chkstk_darwin(v17);
    v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_1007A3AA4();
    (*(v18 + 8))(v21, v16);
    sub_1000074E0(&v40);
  }

  else
  {
    v22 = 0;
  }

  v23 = [v38 canPerformAction:a1 withSender:v22];
  swift_unknownObjectRelease();
  if (!v23)
  {
LABEL_12:
    sub_1000077D8(a2, &v40, &unk_100AD5B40);
    v27 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      v28 = sub_10000E3E8(&v40, *(&v41 + 1));
      v29 = *(v27 - 8);
      v30 = __chkstk_darwin(v28);
      v32 = &v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32, v30);
      v33 = sub_1007A3AA4();
      (*(v29 + 8))(v32, v27);
      sub_1000074E0(&v40);
    }

    else
    {
      v33 = 0;
    }

    v34 = type metadata accessor for BookReaderContainerViewController();
    v39.receiver = v4;
    v39.super_class = v34;
    v35 = objc_msgSendSuper2(&v39, "targetForAction:withSender:", a1, v33);
    swift_unknownObjectRelease();
    if (v35)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    result = *&v40;
    v36 = v41;
    *a3 = v40;
    *(a3 + 16) = v36;
  }

  else
  {
    *(a3 + 24) = type metadata accessor for BookReaderActionTarget();
    v24 = v38;
    *a3 = v38;

    v25 = v24;
  }

  return result;
}

void *sub_100563C5C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BookReaderContainerViewController();
  v1 = objc_msgSendSuper2(&v8, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_10000A7C4(0, &qword_100ADA970);
    v3 = sub_1007A25E4();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v3;
  v4 = [*&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController__actionTarget] keyCommands];
  if (v4)
  {
    v5 = v4;
    sub_10000A7C4(0, &qword_100ADA970);
    v6 = sub_1007A25E4();

    sub_100484B7C(v6);
    return v9;
  }

  return v3;
}

id sub_100563D84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookReaderContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BookReaderContainerViewController()
{
  result = qword_100AEA018;
  if (!qword_100AEA018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005641E0()
{
  result = sub_10079ACE4();
  if (v1 <= 0x3F)
  {
    result = sub_10079ABC4();
    if (v2 <= 0x3F)
    {
      result = sub_10079AB94();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void *sub_1005643F8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController__actionTarget);
  v2 = v1;
  return v1;
}

uint64_t sub_10056442C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_1000077D8(a1, &v11 - v5, &qword_100ADB1C0);
  v7 = type metadata accessor for OverlayViewModel.Overlay(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_10056E074(v6, type metadata accessor for OverlayViewModel.Overlay);
    v9 = 0x100uLL >> (8 * EnumCaseMultiPayload);
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100564558@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100ADB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1000077D8(a1, &v10 - v5, &qword_100ADB1C0);
  v7 = type metadata accessor for OverlayViewModel.Overlay(0);
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = swift_getEnumCaseMultiPayload() != 1;
    result = sub_10056E074(v6, type metadata accessor for OverlayViewModel.Overlay);
  }

  *a2 = v9;
  return result;
}

uint64_t sub_10056470C(void *a1)
{
  if (a1)
  {
    [a1 BOOLValue];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_10079F8C4();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10056483C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonHost])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_unknownObjectRetain();
      v4 = [v3 assetViewControllerProductProfileProtocol:v0];
      type metadata accessor for BuyButtonModuleFactory();
      v5 = v4;
      v6 = v1;
      sub_10071E420(v4, v14);
      v7 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonPresenter;
      swift_beginAccess();
      sub_10056DFC0(v14, &v6[v7]);
      swift_endAccess();
      sub_1000077D8(&v6[v7], v9, &unk_100ADA690);
      if (v10)
      {
        sub_1001F1160(&qword_100ADA6A0);
        sub_1001F1160(&qword_100ADA6A8);
        if (swift_dynamicCast())
        {
          if (*(&v12 + 1))
          {
            sub_1000077C0(&v11, v14);
            v8 = sub_10000E3E8(v14, v14[3]);
            sub_10056AA04(*v8);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            sub_1000074E0(v14);
            goto LABEL_11;
          }
        }

        else
        {
          v13 = 0;
          v11 = 0u;
          v12 = 0u;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_100007840(v9, &unk_100ADA690);
        v11 = 0u;
        v12 = 0u;
        v13 = 0;
      }

      sub_100007840(&v11, &qword_100AD4FA0);
    }
  }

LABEL_11:
  *(*(*&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderPresenter] + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + OBJC_IVAR____TtC5Books20BookReaderInteractor_isOpening) = 1;
}

uint64_t sub_100564B30()
{
  v0 = sub_10079F844();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1006047CC();

  BookReaderLayoutController.validateUserInterfaceStyle()();
  (*(v1 + 104))(v3, enum case for BookContentApplicationForegroundState.foreground(_:), v0);
  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong willEnterForeground];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100564CCC()
{
  v0 = sub_10079F844();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for BookContentApplicationForegroundState.background(_:), v1);

  sub_10079B914();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didEnterBackground];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100564EBC(float a1)
{
  v3 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonPresenter;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, v8, &unk_100ADA690);
  if (!v9)
  {
    return sub_100007840(v8, &unk_100ADA690);
  }

  sub_100009864(v8, v7);
  sub_100007840(v8, &unk_100ADA690);
  sub_10000E3E8(v7, v7[3]);
  sub_10000A7C4(0, &qword_100AD1E10);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1007A2CD4();

  return sub_1000074E0(v7);
}

void *sub_10056507C(char a1)
{
  v3 = [v1 bc_windowForViewController];
  v4 = [v3 overrideUserInterfaceStyle];

  *&v1[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_originalWindowInterfaceStyle] = v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result assetViewController:v1 willOpen:a1 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10056536C(char a1, char a2)
{
  if (a2)
  {
    sub_1004AC424(0);
    if ((a1 & 1) == 0)
    {

      sub_100565480();
      return;
    }
  }

  else
  {
    sub_1004AADE4();
    sub_1004AC424(0);
  }

  oslog = sub_10079ACC4();
  v3 = sub_1007A29A4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Skipping snapshotting, we are not both NOT closing AND suspending", v4, 2u);
  }
}

void sub_100565480()
{
  v1 = sub_1007969B4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() restorationImageURL];
  if (v5)
  {
    v6 = v5;
    sub_100796974();

    v7 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService];
    v8 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v7 + v8, v21);
    sub_10000E3E8(v21, v21[3]);
    v9 = sub_10079ECA4();
    v11 = v10;
    sub_1000074E0(v21);
    sub_1007A1024();
    sub_1007A1014();
    v12 = sub_100565904();

    v13 = [v0 view];
    if (v13)
    {
      v14 = v13;
      v15 = swift_allocObject();
      v15[2].isa = v9;
      v15[3].isa = v11;
      v15[4].isa = v12;
      sub_1006048FC(v14, v4, sub_10056DFB4, v15);

      (*(v2 + 8))(v4, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = sub_10079ACC4();
    v16 = sub_1007A29A4();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v20, v16, "Cannot snapshot with no save url", v17, 2u);
    }

    v18 = v20;
  }
}

id sub_1005657AC(void *a1)
{
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else
  {
    [a1 velocity];
    v5 = v4;
    [a1 velocity];
    if (v5 != 0.0 || v6 != 0.0)
    {
      sub_10079F674();
      if (sub_10079F664())
      {
        return [a1 proposedBeginState];
      }
    }
  }

  return 0;
}

uint64_t sub_100565904()
{
  LOBYTE(result) = sub_1007A0F94();
  if (result > 1u)
  {
    if (result == 2)
    {
      sub_1007A0FB4();
      v1 = sub_10079EF74();
      v3 = v2;
      if (v1 == sub_10079EF74() && v3 == v4)
      {

        return 2;
      }

      v9 = sub_1007A3AB4();

      v10 = (v9 & 1) == 0;
      v11 = 2;
    }

    else
    {
      sub_1007A0FB4();
      v5 = sub_10079EF74();
      v7 = v6;
      if (v5 == sub_10079EF74() && v7 == v8)
      {

        return 4;
      }

      v12 = sub_1007A3AB4();

      v10 = (v12 & 1) == 0;
      v11 = 4;
    }

    if (v10)
    {
      return v11 + 1;
    }

    else
    {
      return v11;
    }
  }

  else if (result)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id sub_100565A54(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  if (a1)
  {
    v7 = v6;
    v8 = sub_1007A2214();
    [v7 setRestorationImageAssetID:v8];

    v9 = "setRestorationImageAppearance:";
    v6 = v7;
    v10 = a4;
  }

  else
  {
    v9 = "setRestorationImageAssetID:";
    v10 = 0;
  }

  return [v6 v9];
}

uint64_t sub_100565BA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    isa = sub_1007A2024().super.isa;
    [v2 assetViewController:v0 assetPropertyChanged:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100565C4C(uint64_t a1)
{
  v109 = sub_10079FD44();
  v3 = *(v109 - 8);
  __chkstk_darwin(v109);
  v5 = (&v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = sub_1007A2214();
  v9 = NSSelectorFromString(v8);

  if (![v7 respondsToSelector:v9])
  {

    return swift_unknownObjectRelease();
  }

  v101 = v1;
  v10 = sub_10079F474();
  v11 = v10;
  v98 = a1;
  v106 = v3;
  if (v10 >> 62)
  {
    v12 = sub_1007A38D4();
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        sub_1007A3784();
      }

      else
      {
      }

      if ([v7 needTextNodeCharacterCountsForOrdinal:sub_1007A1304()])
      {
        v14 = sub_1007A1294();
        if (!v14)
        {
          v14 = sub_1001EE2FC(_swiftEmptyArrayStorage);
        }

        sub_100581BD0(v14);

        isa = sub_1007A2024().super.isa;

        [v7 addTextNodeCharacterCounts:isa ordinal:sub_1007A1304() completion:0];
      }

      else
      {
      }
    }

LABEL_20:

    v16 = *(v101 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
    v17 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(v16 + v17, v110);
    sub_10000E3E8(v110, v110[3]);
    v18 = sub_10079ECC4();
    v19 = sub_10079F424();
    sub_1000074E0(v110);
    if (v18 >> 62)
    {
LABEL_94:
      v108 = v18 & 0xFFFFFFFFFFFFFF8;
      v21 = sub_1007A38D4();
    }

    else
    {
      v108 = v18 & 0xFFFFFFFFFFFFFF8;
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 < 0)
    {
      v23 = v19;
    }

    else
    {
      v23 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    if (!v21)
    {
      v100 = 0;
      v25 = _swiftEmptyDictionarySingleton;
LABEL_76:

      v73 = 0;
      v74 = v25;
      v75 = v25 + 8;
      v76 = 1 << *(v25 + 32);
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v78 = v77 & v25[8];
      v79 = (v76 + 63) >> 6;
      v19 = &unk_100831210;
      if (v78)
      {
        while (1)
        {
          v80 = v73;
LABEL_84:
          v81 = __clz(__rbit64(v78));
          v78 &= v78 - 1;
          v82 = (v80 << 9) | (8 * v81);
          v83 = *(v74[6] + v82);
          v18 = *(v74[7] + v82);

          sub_1001F1160(&unk_100AE0B70);
          v5 = sub_1007A25D4().super.isa;

          [v7 addTOCEntries:v5 ordinal:v83 completion:0];

          if (!v78)
          {
            goto LABEL_80;
          }
        }
      }

      while (1)
      {
LABEL_80:
        v80 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          __break(1u);
          goto LABEL_91;
        }

        if (v80 >= v79)
        {
          break;
        }

        v78 = v75[v80];
        ++v73;
        if (v78)
        {
          v73 = v80;
          goto LABEL_84;
        }
      }

      if ([v7 respondsToSelector:"assetViewControllerPaginationCompletedForBook:"])
      {
        [v7 assetViewControllerPaginationCompletedForBook:v101];
      }

      swift_unknownObjectRelease();
      return sub_100007020(v100);
    }

    v89 = v23;
    v24 = 0;
    v100 = 0;
    v92 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_log;
    v107 = v18 & 0xC000000000000001;
    v105 = v19 & 0xC000000000000001;
    v104 = (v106 + 8);
    v96 = kBCReadingStatisticsNameKey;
    v95 = kBCReadingStatisticsHrefKey;
    v94 = kBCReadingStatisticsStartCFIKey;
    v25 = _swiftEmptyDictionarySingleton;
    v106 = v19 >> 62;
    *&v20 = 136315138;
    v90 = v20;
    v93 = xmmword_100812CF0;
    v103 = v18;
    v102 = v21;
    while (2)
    {
      v99 = v25;
      v26 = v24 + 4;
      while (1)
      {
        v27 = v26 - 4;
        if (v107)
        {
          sub_1007A3784();
          v24 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_91;
          }
        }

        else
        {
          if (v27 >= *(v108 + 16))
          {
            goto LABEL_92;
          }

          v24 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }
        }

        if (v106)
        {
          if (v27 == sub_1007A38D4())
          {
LABEL_74:

LABEL_75:
            v25 = v99;
            goto LABEL_76;
          }
        }

        else if (v27 == *(v22 + 16))
        {
          goto LABEL_74;
        }

        if (v105)
        {
          v28 = v19;
          sub_1007A3784();
        }

        else
        {
          if (v27 >= *(v22 + 16))
          {
            goto LABEL_93;
          }

          v28 = v19;
        }

        sub_1007A1044();
        v29 = sub_10079FD14();
        (*v104)(v5, v109);
        if ([v7 needTOCEntriesForOrdinal:v29])
        {
          break;
        }

        ++v26;
        v18 = v103;
        v19 = v28;
        if (v24 == v102)
        {
          goto LABEL_75;
        }
      }

      v30 = sub_10079F3C4();
      v31 = sub_10079FDB4();
      if (*(v30 + 16))
      {
        v97 = v32;
        v91 = sub_10000E53C(v31, v32);
        v34 = v33;

        if (v34)
        {
          v35 = (*(v30 + 56) + 16 * v91);
          v36 = *v35;
          v97 = v35[1];

          goto LABEL_50;
        }
      }

      else
      {
      }

      v36 = 0;
      v97 = 0xE000000000000000;
LABEL_50:
      v91 = v36;
      if (!v36 && v97 == 0xE000000000000000 || (sub_1007A3AB4() & 1) != 0)
      {

        v37 = sub_10079ACC4();
        v38 = sub_1007A29B4();

        LODWORD(v88) = v38;
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v87 = v39;
          v86 = swift_slowAlloc();
          v110[0] = v86;
          *v39 = v90;
          v85 = v37;
          v40 = sub_10079FDB4();
          v42 = sub_1000070F4(v40, v41, v110);

          v43 = v87;
          *(v87 + 1) = v42;
          v44 = v85;
          _os_log_impl(&_mh_execute_header, v85, v88, "no cfi mapping for chapter href %s", v43, 0xCu);
          sub_1000074E0(v86);
        }

        else
        {
        }
      }

      sub_1001F1160(qword_100AEA1F0);
      inited = swift_initStackObject();
      *(inited + 16) = v93;
      *(inited + 32) = sub_1007A2254();
      v88 = inited + 32;
      *(inited + 40) = v46;
      *(inited + 48) = sub_10079FDC4();
      *(inited + 56) = v47;
      *(inited + 64) = sub_1007A2254();
      *(inited + 72) = v48;
      *(inited + 80) = sub_10079FDB4();
      *(inited + 88) = v49;
      *(inited + 96) = sub_1007A2254();
      *(inited + 104) = v50;
      v51 = v97;
      *(inited + 112) = v91;
      *(inited + 120) = v51;
      v97 = sub_1001ED994(inited);
      swift_setDeallocating();
      sub_1001F1160(&unk_100AE0920);
      swift_arrayDestroy();
      sub_100007020(v100);
      v52 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v52;
      v100 = sub_1002F9CDC(v29);
      v55 = *(v52 + 16);
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_96;
      }

      if (*(v52 + 24) >= v57)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v72 = v54;
          sub_1002F1F94();
          v58 = v110[0];
          if (v72)
          {
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        v58 = v99;
      }

      else
      {
        LODWORD(v99) = v54;
        sub_1003D5EE0(v57, isUniquelyReferenced_nonNull_native);
        v58 = v110[0];
        v100 = sub_1002F9CDC(v29);
        v59 = v54 & 1;
        LOBYTE(v54) = v99;
        if ((v99 & 1) != v59)
        {
          goto LABEL_98;
        }
      }

      if (v54)
      {
        goto LABEL_65;
      }

LABEL_63:
      v60 = v100;
      v58[(v100 >> 6) + 8] |= 1 << v100;
      *(v58[6] + 8 * v60) = v29;
      *(v58[7] + 8 * v60) = _swiftEmptyArrayStorage;
      v61 = v58[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        goto LABEL_97;
      }

      v58[2] = v63;
LABEL_65:
      v99 = v58;
      v64 = v58[7];
      v65 = v100;
      v66 = *(v64 + 8 * v100);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *(v64 + 8 * v65) = v66;
      if ((v67 & 1) == 0)
      {
        v66 = sub_10066BE30(0, v66[2] + 1, 1, v66);
        *(v64 + 8 * v100) = v66;
      }

      v69 = v66[2];
      v68 = v66[3];
      v91 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        v71 = sub_10066BE30((v68 > 1), v91, 1, v66);
        *(v64 + 8 * v100) = v71;
      }

      v70 = *(v64 + 8 * v100);
      *(v70 + 16) = v91;
      *(v70 + 8 * v69 + 32) = v97;
      v100 = sub_10056687C;
      v25 = v99;
      v18 = v103;
      v19 = v28;
      if (v24 != v102)
      {
        continue;
      }

      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

uint64_t sub_1005669D8()
{
  v1 = v0;
  v2 = [v0 childViewControllerForHomeIndicatorAutoHidden];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 prefersHomeIndicatorAutoHidden];
  }

  else
  {
    v5 = &v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 1);
      v7 = [v1 traitCollection];
      v8 = sub_1007A2E14();

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v10 = [v1 traitCollection];
        v11 = sub_1007A2E24();

        v9 = v11 ^ 1;
      }

      ObjectType = swift_getObjectType();
      v13 = (*(v6 + 8))(ObjectType, v6);
      swift_unknownObjectRelease();
      v4 = v13 | v9;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

id sub_100566B30()
{
  v1 = [v0 childViewControllerForStatusBarHidden];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 prefersStatusBarHidden];

    return v3;
  }

  v5 = &v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v6 = *(v5 + 1);
  ObjectType = swift_getObjectType();
  LOBYTE(v6) = (*(v6 + 8))(ObjectType, v6);
  swift_unknownObjectRelease();
  return (v6 & 1);
}

void sub_100566C84()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {

      [v0 setNeedsStatusBarAppearanceUpdate];

      [v0 setNeedsUpdateOfHomeIndicatorAutoHidden];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005670B0(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10079B1E4();
  __chkstk_darwin(v10);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 104);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_1007A2C24();
    sub_10079B1C4();
    sub_1007A2C34();
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    if (a3)
    {
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A232E8;
      a3 = _Block_copy(aBlock);
    }

    [v14 assetViewController:v5 presentViewController:a1 animated:a2 & 1 completion:a3];
    swift_unknownObjectRelease();
    _Block_release(a3);
  }
}

void sub_1005672BC(void *a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10079B1E4();
  v11 = [v4 traitCollection];
  v12 = sub_1007A2E14();

  if (v12 & 1) != 0 || (v13 = [v5 traitCollection], v14 = sub_1007A2E24(), v13, (v14))
  {
    if ([a1 modalPresentationStyle] == 1)
    {
      v15 = sub_10079ACC4();
      v16 = sub_1007A2994();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Shifting to overFullscreen presentation style", v17, 2u);
      }

      [a1 setModalPresentationStyle:5];
    }
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + 104);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4();

    sub_1007A2C24();
    sub_10079B1C4();
    sub_1007A2C34();
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    if (a3)
    {
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A232C0;
      a3 = _Block_copy(aBlock);
    }

    [v21 assetViewController:v5 presentViewController:a1 animated:a2 & 1 completion:a3];
    swift_unknownObjectRelease();
    _Block_release(a3);
  }
}

id sub_1005675C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong isTranslateAvailableForAssetViewController:v0];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to present translate without a delegate", v5, 2u);
    }

    return 0;
  }

  return v2;
}

void sub_10056769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v6 = v5;
  v9 = sub_1001F1160(&unk_100AE6A30);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v29 = a4;
    v30 = a5;
    sub_10055FD9C();
    v15 = [v6 view];
    if (v15)
    {
      v16 = v15;
      sub_10079FEE4();

      sub_10079FEB4();
      (*(v10 + 8))(v12, v9);
      v17 = *&aBlock;
      v18 = *&v32;
      v19 = *&v33;
      v20 = *&v34;
      v21 = sub_1007A2214();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v24 = v30;
      v23[2] = v29;
      v23[3] = v24;
      v23[4] = v22;
      v35 = sub_10056C668;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1003323D0;
      v34 = &unk_100A233B0;
      v25 = _Block_copy(&aBlock);

      [v14 assetViewController:v6 presentTranslationForText:v21 fromRect:v25 onClose:{v17, v18, v19, v20}];
      _Block_release(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v30 = sub_10079ACC4();
    v26 = sub_1007A29B4();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v30, v26, "Unable to present translate without a delegate", v27, 2u);
    }

    v28 = v30;
  }
}

void sub_1005679CC(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle);
    v3 = Strong;
    sub_1000260E8(v2);

    if (v2)
    {
      v2();
      sub_100007020(v2);
    }
  }
}

uint64_t sub_100567A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v36 = a4;
  v37 = a5;
  v31 = a2;
  v5 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_1007A2E74();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&qword_100AEA098);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v16 = sub_1001F1160(&qword_100AEA0A0);
  v17 = *(v16 - 8);
  v34 = v16;
  v35 = v17;
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  sub_10055FD9C();
  sub_10056C31C();
  v20 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  sub_100017CFC(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10079BA94();
  (*(v9 + 8))(v11, v8);
  sub_10000A7C4(0, &qword_100AD1E10);
  v21 = sub_1007A2D74();
  v38 = v21;
  v22 = sub_1007A2D24();
  (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
  sub_100005920(&unk_100AEA0A8, &qword_100AEA098);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v7, &qword_100AD7EB0);

  (*(v13 + 8))(v15, v12);
  v23 = swift_allocObject();
  v24 = v33;
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v26 = v36;
  v27 = v37;
  v25[2] = v23;
  v25[3] = v26;
  v25[4] = v27;
  sub_100005920(&qword_100AEA0B8, &qword_100AEA0A0);

  v28 = v34;
  v29 = sub_10079BB04();

  (*(v35 + 8))(v19, v28);
  *(v24 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_lookupCompleteSubscription) = v29;
}

uint64_t sub_100567F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_lookupCompleteSubscription) = 0;

    v6 = *&v5[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle];
    if (v6)
    {

      v6(v7);
      sub_100007020(v6);
    }
  }

  return a3();
}

void sub_100567FD8(uint64_t a1, char a2, void *a3, id a4, char a5)
{
  if ((a2 & 1) == 0 && a3 && (a5 & 1) == 0)
  {
    v6 = a3;
    if ([v6 overrideUserInterfaceStyle] != a4)
    {
      [v6 setOverrideUserInterfaceStyle:a4];
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = (Strong + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle);
    v9 = *(Strong + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle);
    *v8 = 0;
    v8[1] = 0;
    v10 = Strong;
    sub_100007020(v9);
  }
}

id sub_100568090(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD6170);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_1001F1160(&unk_100AE6A30);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_100799004();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for BooksFeatureFlag.quoteSharing(_:), v11, v13);
  v16 = sub_100799154();
  v17 = v11;
  v18 = a1;
  (*(v12 + 8))(v15, v17);
  if (v16)
  {
    v19 = 5;
  }

  else
  {
    v19 = -2;
  }

  [a1 setModalPresentationStyle:v19];
  sub_1000077D8(a2, v6, &unk_100AD6170);
  v20 = *(v8 + 48);
  if (v20(v6, 1, v7) == 1)
  {
    v21 = v32;
    result = [v32 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    sub_10079FED4();

    if (v20(v6, 1, v7) != 1)
    {
      sub_100007840(v6, &unk_100AD6170);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v21 = v32;
  }

  v24 = [v18 popoverPresentationController];
  if (v24)
  {
    v25 = v24;
    v26 = sub_10079FEF4();
    [v25 setSourceView:v26];

    sub_10079FEB4();
    [v25 setSourceRect:v33, v34, v35, v36];
    [v25 setCanOverlapSourceViewRect:1];
  }

  else
  {
    v25 = sub_10079ACC4();
    v27 = sub_1007A29B4();
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v25, v27, "Presenting share controller without a popover presentation controller. This will look weird!", v28, 2u);
    }
  }

  v29 = [v21 presentedViewController];
  if (!v29)
  {
    v29 = v21;
  }

  v30 = v29;
  [v29 presentViewController:v18 animated:1 completion:0];

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1005684C4()
{
  v1[2] = v0;
  v2 = sub_10079F704();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_1007A26F4();
  v1[7] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_1005685BC, v4, v3);
}

uint64_t sub_1005685BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_10079F6E4();

  v4 = sub_10079F6F4();
  v0[10] = v4;
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1007A0004();
    v0[11] = v5;
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      v0[12] = v7;
      if (v7)
      {
        v0[13] = *(v0[2] + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderPresenter);
        v0[14] = sub_1007A26E4();
        v9 = sub_1007A2694();
        v0[15] = v9;
        v0[16] = v8;

        return _swift_task_switch(sub_100568770, v9, v8);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100568770()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_10056880C;

  return sub_1002267C0();
}

uint64_t sub_10056880C(double a1, double a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;

  v5 = *(v3 + 128);
  v6 = *(v3 + 120);

  return _swift_task_switch(sub_10056892C, v6, v5);
}

uint64_t sub_10056892C()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_100568990, v1, v2);
}

id sub_100568990()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  if (v2 == 0.0 && v1 == 0.0)
  {
    [*(v0 + 96) frame];
    sub_1007A3034();
    v2 = v3;
    v1 = v4;
  }

  result = [*(v0 + 16) view];
  if (result)
  {
    v6 = result;
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);

    [v6 convertPoint:v7 toCoordinateSpace:{v2, v1}];
    v10 = v9;
    v12 = v11;

    [v7 bkaxAccessibilityShowContextMenuAtPoint:{v10, v12}];
    swift_unknownObjectRelease();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100568AB0()
{
  v0 = sub_100799004();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for BooksFeatureFlag.readingLoupe(_:), v0, v2);
  sub_100017CFC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  v5 = sub_1007A2554();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 112);
      swift_getKeyPath();
      v11[1] = v7;
      sub_100017CFC(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      v8 = *(v7 + 328);
      if ((v8 >> 62) >= 2 && !__ROR8__(v8 ^ 0x8000000000000000, 3))
      {
        v9 = sub_10079F084();
        if (v9)
        {
          v10 = v9;
          sub_10079F674();
          if (!swift_dynamicCastClass())
          {

            return;
          }

          sub_10079F624();
        }
      }
    }
  }
}

void sub_100568D34()
{
  v0 = sub_100799004();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for BooksFeatureFlag.readingLoupe(_:), v0, v2);
  sub_100017CFC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  v5 = sub_1007A2554();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + 112);
      swift_getKeyPath();
      v11[1] = v7;
      sub_100017CFC(&qword_100ADB430, type metadata accessor for REActionMenuState);
      sub_100797A14();

      v8 = *(v7 + 328);
      if ((v8 >> 62) < 2 || __ROR8__(v8 ^ 0x8000000000000000, 3) || (v9 = sub_10079F084()) == 0)
      {
      }

      else
      {
        v10 = v9;
        sub_10079F674();
        if (swift_dynamicCastClass())
        {
          if (sub_10079F5E4())
          {
            sub_10079F624();
          }

          else
          {
            sub_10079F604();
            swift_getObjectType();
            sub_1007A0924();
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

void sub_100568FE8()
{
  v0 = sub_1007A1C54();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1007A1CA4();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CC4();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = sub_100799004();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for BooksFeatureFlag.readingLoupe(_:), v12, v14);
  sub_100017CFC(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
  sub_100005920(&qword_100AD7778, &unk_100AD9570);
  v17 = sub_1007A2554();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v18 = sub_10079F084();
    if (v18)
    {
      v19 = v18;
      sub_10079F674();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        sub_10000A7C4(0, &qword_100AD1E10);
        v28 = sub_1007A2D74();
        sub_1007A1CB4();
        sub_1007A1D24();
        v22 = *(v34 + 8);
        v34 += 8;
        v29 = v22;
        v22(v8, v6);
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        aBlock[4] = sub_10056C674;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1003323D0;
        aBlock[3] = &unk_100A23400;
        v24 = _Block_copy(aBlock);
        v27 = v19;

        sub_1007A1C74();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100017CFC(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
        sub_1001F1160(&unk_100AD7CA0);
        sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
        v25 = v33;
        sub_1007A3594();
        v26 = v28;
        sub_1007A2D04();
        _Block_release(v24);

        (*(v32 + 8))(v2, v25);
        (*(v30 + 8))(v5, v31);
        v29(v11, v6);
      }

      else
      {
      }
    }
  }
}

void sub_100569548()
{
  sub_10079F4C4();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_10079F4B4();

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = sub_10079ACC4();
    v0 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      *v1 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v0, "LayoutModeProvider not castable to BookLayoutModeManager! We need this to be a Manager so the layout can be manipulated by the PPT Test.", v1, 2u);
    }
  }
}

uint64_t sub_100569664(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v17 = a4;
  v5 = sub_1007A1C14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007A0544();
  swift_unknownObjectRelease();
  sub_1007A1BE4();
  (*(v6 + 8))(v8, v5);
  swift_getObjectType();
  sub_10079F4F4();
  if (sub_1007A2BB4())
  {

    v9 = sub_10079F754();

    if (v9)
    {
      swift_getObjectType();
      v10 = sub_1007A0004();
      if (v10)
      {
        v11 = v10;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = [v12 scrollView];
          v14 = sub_1007A2214();
          [v13 _performScrollTest:v14 iterations:a3 delta:v17];

          swift_unknownObjectRelease();
          return 1;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return 0;
}

uint64_t sub_1005698A0(char a1, double a2)
{
  v3 = v2;
  v6 = sub_10079F084();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  sub_10079F674();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  result = [v3 view];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  [result bounds];
  v13 = v12;

  result = [v3 view];
  v14 = result;
  if (a1)
  {
    if (result)
    {
      [result bounds];
      v16 = v15;

      v17 = 0.0;
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if (result)
  {
    [result bounds];
    v17 = v18;

    v16 = 0.0;
LABEL_9:
    v19 = [objc_allocWithZone(BKEpubManualCurlDriver) initWithStartPoint:v17 endPoint:v13 * 0.5 time:{v16, v13 * 0.5, a2}];
    v20 = *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_manualCurlDriver];
    *&v3[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_manualCurlDriver] = v19;
    v21 = v19;

    if (v21)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v9;
      v26[4] = sub_10056E1CC;
      v26[5] = v22;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 1107296256;
      v26[2] = sub_100569BDC;
      v26[3] = &unk_100A23798;
      v23 = _Block_copy(v26);
      v24 = v3;
      v25 = v7;

      [v21 run:v23];

      _Block_release(v23);
      return 1;
    }

LABEL_11:

    return 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100569ADC(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    swift_unknownObjectRetain();
    v4 = [a2 view];
    [v3 translationInView:v4];

    v5 = [a2 view];
    [v3 velocityInView:v5];

    [v3 state];
    sub_10079F5F4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100569BDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_100569C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService);
  v2 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v1 + v2, v10);
  sub_10000E3E8(v10, v11);
  v3 = sub_10079ECC4();
  v4 = sub_1000074E0(v10);
  if (v3 >> 62)
  {
    v4 = sub_1007A38D4();
    if (v4 < 0)
    {
      __break(1u);
    }
  }

  __chkstk_darwin(v4);
  v6 = sub_10056C6A0(0, v5, v3, sub_10056C698);

  v10[0] = v6;
  sub_1001F1160(&qword_100ADE598);
  sub_100005920(&unk_100AEA0D0, &qword_100ADE598);
  if (sub_1007A28A4())
  {
    v7 = [objc_opt_self() sharedController];
    sub_1003BC360(v6);

    sub_1001F1160(&unk_100AEF1B0);
    isa = sub_1007A25D4().super.isa;

    sub_100009864(v1 + v2, v10);
    sub_10000E3E8(v10, v11);
    sub_10079ECA4();
    v9 = sub_1007A2214();

    sub_1000074E0(v10);
    [v7 buildContextTree:isa forBook:v9 completion:0];
  }

  else
  {
  }
}

unint64_t sub_100569EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001F1160(&unk_100ADE550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100815060;
  *(inited + 32) = sub_1007A2254();
  *(inited + 40) = v6;
  v7 = sub_10079FDB4();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 80) = sub_1007A2254();
  *(inited + 88) = v9;
  v10 = sub_10079FDC4();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_1007A2254();
  *(inited + 136) = v12;
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = a1;
  *(inited + 176) = sub_1007A2254();
  *(inited + 184) = v13;
  *&v19[0] = sub_10079FDB4();
  *(&v19[0] + 1) = v14;
  sub_1007A36B4();
  if (*(a3 + 16) && (v15 = sub_10000E2A4(v20), (v16 & 1) != 0))
  {
    sub_100007484(*(a3 + 56) + 32 * v15, v19);
    sub_10002899C(v20);
    sub_1000076D4(v19, (inited + 192));
  }

  else
  {
    sub_10002899C(v20);
    *(inited + 216) = &type metadata for String;
    *(inited + 192) = 0;
    *(inited + 200) = 0xE000000000000000;
  }

  v17 = sub_100019158(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100ADD560);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_10056A0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100798024();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_analyticsProvider) && (v8 = *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_analyticsProvider + 8), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v10 = Strong;
    v29 = a1;
    ObjectType = swift_getObjectType();
    v28 = v10;
    v12 = ObjectType;
    v13 = *(v8 + 32);
    swift_unknownObjectRetain();
    v13(v12, v8);
    v14 = sub_100798014();
    (*(v5 + 8))(v7, v4);
    v15 = v28;
    v16 = (*(v8 + 8))(v12, v8);
    v17 = [v15 analyticsContentDataForAssetViewController:v2 contentSubType:v14 tracker:v16];

    if (v17)
    {
      v18 = v29;
      sub_100798124();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v19 = sub_100797D84();
      return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    }

    else
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v27 = sub_100797D84();
      return (*(*(v27 - 8) + 56))(v29, 1, 1, v27);
    }
  }

  else
  {
    if (qword_100AD1390 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100B22F80);
    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
    }

    v25 = sub_100797D84();
    v26 = *(*(v25 - 8) + 56);

    return v26(a1, 1, 1, v25);
  }
}

BOOL sub_10056A454()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

void *sub_10056A498()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData);
  v2 = v1;
  return v1;
}

void *sub_10056A4C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData);
  v2 = v1;
  return v1;
}

void sub_10056A5E0(void *a1)
{
  v2 = v1;
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [*&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController] view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v5 insertSubview:a1 belowSubview:v6];

  v8 = [a1 superview];
  if (v8)
  {
    v9 = v8;
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100816E30;
    v12 = [a1 topAnchor];
    v13 = [v9 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

    *(v11 + 32) = v14;
    v15 = [a1 leadingAnchor];
    v16 = [v9 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

    *(v11 + 40) = v17;
    v18 = [v9 bottomAnchor];
    v19 = [a1 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

    *(v11 + 48) = v20;
    v21 = [v9 trailingAnchor];
    v22 = [a1 trailingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];

    *(v11 + 56) = v23;
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v10 activateConstraints:isa];
  }
}

uint64_t sub_10056A90C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_10056A98C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_10079B9B4();
}

uint64_t sub_10056AA04(void *a1)
{
  v7[3] = type metadata accessor for BuyButtonPresenter();
  v7[4] = &off_100A0F178;
  v7[0] = a1;
  sub_100009864(v7, v6);
  v2 = a1;
  sub_10046EFDC(v6);
  sub_100007840(v6, &qword_100AD4FA0);
  sub_10000A7C4(0, &qword_100AD1E10);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_100009864(v7, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1000077C0(v6, v4 + 24);

  sub_1007A2CD4();

  return sub_1000074E0(v7);
}

char *sub_10056AB30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(char *, uint64_t), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void (*a23)(void, void), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v170 = a8;
  v184 = a7;
  v181 = a6;
  v167 = a5;
  v168 = a2;
  v185 = a22;
  v183 = a21;
  v188 = a18;
  v171 = a17;
  v187 = a29;
  v166 = a30;
  v186 = a27;
  v165 = a28;
  v191 = a26;
  v162 = a25;
  v182 = a24;
  v161 = a23;
  v177 = a20;
  v160 = a19;
  v189 = a16;
  v158 = a15;
  v179 = a13;
  v157 = a14;
  v159 = a37;
  v152 = a38;
  v176 = a40;
  v150 = a39;
  v151 = a12;
  v149 = a11;
  v178 = a9;
  v147 = a10;
  v141 = sub_1001F1160(&unk_100AEA120);
  v142 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v134 - v43;
  v140 = sub_1001F1160(&qword_100AEA178);
  v138 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v134 - v44;
  v137 = sub_1001F1160(&qword_100AEA180);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v134 = &v134 - v45;
  v163 = sub_10079AB94();
  v175 = *(v163 - 1);
  __chkstk_darwin(v163);
  v164 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v174 = &v134 - v48;
  v155 = sub_10079ACE4();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_10079ABC4();
  v190 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v148 = &v134 - v52;
  v156 = type metadata accessor for BookReaderContainerViewController();
  v53 = objc_allocWithZone(v156);
  v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_forcingInterfaceStyleForOneAlert] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_windowSceneTraitRegistration] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture] = 0;
  v54 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider];
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v55 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonHost];
  *v55 = 0;
  v55[1] = 0;
  v56 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo;
  *&v53[v56] = [objc_allocWithZone(BCAppIntentsAssetViewControllerInfo) init];
  v57 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonPresenter];
  *(v57 + 4) = 0;
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_endOfBookExperienceController] = 0;
  v145 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_viewModel;
  swift_weakInit();
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookPositionProcessor] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v146 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_log;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentReadyIntervalState] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_cancellables] = &_swiftEmptySetSingleton;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_manualCurlDriver] = 0;
  v58 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_viewSnapshotter;
  type metadata accessor for ViewSnapshotter();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v59 + 24) = 0;
  *&v53[v58] = v59;
  v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_scrubber] = 1;
  v60 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation];
  *v60 = 0;
  *(v60 + 1) = 0;
  v60[16] = 1;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_themeChangeWatcher] = 0;
  v61 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_paginationHostView;
  *&v53[v61] = [objc_allocWithZone(UIView) init];
  v62 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_analyticsProvider];
  v144 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_analyticsProvider];
  *v62 = 0;
  v62[1] = 0;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_originalWindowInterfaceStyle] = 0;
  v63 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle];
  *v63 = 0;
  v63[1] = 0;
  v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_turnPageButtonManager] = 1;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_lookupCompleteSubscription] = 0;
  v169 = a1;
  sub_100302514(a1, &v195);
  v64 = objc_allocWithZone(sub_1001F1160(&qword_100AEA188));
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_readerController] = sub_10079CBC4();
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentModule] = a3;
  v143 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService;
  v65 = a4;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookProviderService] = a4;
  v66 = v167;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderPresenter] = v167;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closeGestureManager] = v181;
  v67 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_purchaseHandler];
  v68 = v170;
  *v67 = v184;
  v67[1] = v68;
  v69 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_configurationHandler];
  v70 = v147;
  *v69 = v178;
  v69[1] = v70;
  v71 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_orientationLocking];
  v72 = v150;
  *v71 = v149;
  v71[1] = v72;
  *(v54 + 1) = v152;
  swift_unknownObjectWeakAssign();
  v180 = a3;

  v170 = v65;
  v167 = v66;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v73 = v157;
  *v55 = v179;
  v55[1] = v73;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider] = v158;
  v74 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_toolbarPresenter];
  v75 = v159;
  *v74 = v160;
  v74[1] = v75;
  v76 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_layoutModeProvider];
  v77 = v176;
  *v76 = v177;
  v76[1] = v77;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_layoutController] = v183;
  v78 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_currentLocationController];
  v79 = v161;
  *v78 = v185;
  v78[1] = v79;
  v80 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_currentLocationProvider];
  v81 = v171;
  *v80 = v189;
  v80[1] = v81;
  sub_100009864(v188, &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_pageTurnController]);
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentLayoutController] = v182;
  v82 = v162;
  *&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController__actionTarget] = v162;
  swift_weakAssign();
  v83 = &v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_paginationService];
  v84 = v165;
  *v83 = v186;
  v83[1] = v84;
  v85 = v144;
  v86 = v166;
  *v144 = v187;
  v85[1] = v86;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v166 = v82;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_viewReady] = 0;
  v87 = *&v53[v143];
  v88 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v87 + v88, &v195);
  (*(v154 + 16))(v153, &v53[v146], v155);
  v89 = v148;
  sub_10079ABA4();
  v90 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_signposter;
  v91 = v190;
  v92 = v173;
  (v190[4])(&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_signposter], v89, v173);
  v93 = v91;
  v94 = v91[2];
  v94(v89, &v53[v90], v92);
  sub_10079ABB4();
  v95 = v174;
  sub_10079AB64();
  v96 = v93[1];
  v190 = v93 + 1;
  v96(v89, v92);
  v97 = v175;
  v98 = v95;
  v99 = v163;
  (*(v175 + 4))(&v53[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_signpostID], v98, v163);
  v194.receiver = v53;
  v194.super_class = v156;
  v100 = objc_msgSendSuper2(&v194, "initWithNibName:bundle:", 0, 0);
  v94(v172, &v100[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_signposter], v92);
  v101 = *(v97 + 2);
  v102 = v164;
  v101();
  v103 = sub_10079ABB4();
  v104 = sub_1007A2E64();
  if (sub_1007A3394())
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    v106 = sub_10079AB74();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v103, v104, v106, "REI.ContentReady", "", v105, 2u);
  }

  v165 = a36;

  (v101)(v174, v102, v99);
  sub_10079AC14();
  swift_allocObject();
  v107 = sub_10079AC04();
  (*(v175 + 1))(v102, v99);
  v96(v172, v173);
  *&v100[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentReadyIntervalState] = v107;

  v108 = &v100[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v109 = *(v108 + 1);
    ObjectType = swift_getObjectType();
    v111 = *(v109 + 32);
    v112 = v100;
    v111(v100, &off_100A23260, ObjectType, v109);
    swift_unknownObjectRelease();
  }

  if ([objc_opt_self() endOfBookExperienceFeatureEnabled])
  {
    sub_10000E3E8(&v195, v196);
    if ((sub_10079EC84() & 1) == 0)
    {
      sub_10000E3E8(&v195, v196);
      if (sub_10079EBA4())
      {
        v193 = *(*(v191 + 112) + 288);
        v113 = v100;
        v190 = v170;
        swift_unknownObjectRetain();
        v175 = v113;
        sub_1001F1160(&unk_100AD1E40);
        sub_100005920(&qword_100AF2870, &unk_100AD1E40);
        v174 = sub_10079BA14();
        v173 = OBJC_IVAR____TtC5Books19BookReaderViewModel_overlayViewModel;
        swift_beginAccess();
        v172 = sub_1001F1160(&unk_100AF2880);
        v114 = v139;
        sub_10079B974();
        swift_endAccess();
        v164 = sub_100005920(&unk_100AEA130, &unk_100AEA120);
        v115 = v136;
        v116 = v141;
        sub_10079BA74();
        v117 = *(v142 + 8);
        v142 += 8;
        v163 = v117;
        (v117)(v114, v116);
        v162 = sub_100005920(&qword_100AEA1B0, &qword_100AEA178);
        v118 = v134;
        v119 = v140;
        sub_10079BAF4();
        v161 = *(v138 + 8);
        v161(v115, v119);
        v159 = sub_100005920(&qword_100AEA1B8, &qword_100AEA180);
        v120 = v137;
        v160 = sub_10079BA14();
        v158 = *(v135 + 8);
        v158(v118, v120);
        swift_beginAccess();
        sub_10079B974();
        swift_endAccess();
        v121 = v141;
        sub_10079BA74();
        (v163)(v114, v121);
        sub_10079BAF4();
        v161(v115, v119);
        v122 = sub_10079BA14();
        v158(v118, v120);
        v123 = v175;
        v124 = v190;
        v125 = sub_10056CA00(v175, v175, v190, v189, v171, v174, v160, v122);

        swift_unknownObjectRelease();

        *&v123[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_endOfBookExperienceController] = v125;
      }
    }
  }

  v193 = *(*(v191 + 112) + 288);
  sub_1001F1160(&unk_100AD1E40);
  sub_100005920(&qword_100AF2870, &unk_100AD1E40);
  v193 = sub_10079BA14();

  sub_1001F1160(&unk_100AF27D0);
  sub_100005920(&qword_100AEA160, &unk_100AF27D0);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v126 = swift_allocObject();
  v126[2] = 0;
  v127 = v126 + 2;

  v128 = sub_10079F774();

  v193 = v128;
  v129 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = v126;
  v190 = v126;
  v131 = v100;

  sub_1001F1160(&unk_100AEA190);
  sub_100005920(&unk_100AF25F0, &unk_100AEA190);
  v132 = sub_10079BB04();

  swift_beginAccess();
  *v127 = v132;

  v192 = sub_10079F504();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&unk_100AEA1A0);
  sub_100005920(&qword_100AF2900, &unk_100AEA1A0);
  sub_10079BB04();

  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_10000A7C4(0, &qword_100AE15B0);
  sub_1007A2E04();
  sub_1007A2C44();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1000074E0(v188);
  sub_100302D44(v169);

  sub_1000074E0(&v195);
  return v131;
}

void sub_10056C31C()
{
  sub_1001F1160(&unk_100AE6A30);
  sub_10079FEB4();
  MidX = CGRectGetMidX(*v15);
  sub_10079FEB4();
  MidY = CGRectGetMidY(v14);

  sub_1001F1160(&qword_100AD6200);
  sub_100005920(&unk_100AEA0C0, &qword_100AD6200);
  sub_100206ECC();
  v2 = sub_1007A32E4();
  v4 = v3;
  v5 = objc_allocWithZone(RVItem);
  v6 = sub_1007A2214();
  v7 = [v5 initWithText:v6 selectedRange:{v2, v4}];

  v8 = objc_opt_self();
  v9 = sub_10079FEF4();
  sub_1001F1160(&unk_100AE0AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080B690;
  *v15 = sub_1007A2254();
  *&v15[8] = v11;
  sub_1007A36B4();
  sub_10079FEB4();
  v12 = [objc_opt_self() valueWithCGRect:{*v15, *&v15[8], *&v15[16], *&v15[24]}];
  *(inited + 96) = sub_10000A7C4(0, &qword_100AE6080);
  *(inited + 72) = v12;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50);
  isa = sub_1007A2024().super.isa;

  [v8 performDefaultActionForRVItem:v7 view:v9 location:0 fallbackMenuInteraction:isa context:{MidX, MidY}];
}

void *sub_10056C6A0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  v29 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v9 = i >= v7 ? v7 : i;
    result = sub_1003BD7D8(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v25 = v5;
    v26 = v4;
    v28 = v6;
    if (v9)
    {
      if (v5 < v6)
      {
        goto LABEL_60;
      }

      v7 = 0;
      v11 = v4 & 0xC000000000000001;
      v23 = v4 & 0xFFFFFFFFFFFFFF8;
      v12 = v6 - v5;
      do
      {
        if (!(v12 + v7))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v6 + v7 >= v5)
        {
          goto LABEL_50;
        }

        if (v29)
        {
          v13 = sub_1007A38D4();
        }

        else
        {
          v13 = *(v23 + 16);
        }

        if (v7 == v13)
        {
          goto LABEL_51;
        }

        if (v11)
        {
          v14 = sub_1007A3784();
        }

        else
        {
          if (v7 >= *(v23 + 16))
          {
            goto LABEL_56;
          }

          v14 = *(v4 + 8 * v7 + 32);
        }

        v15 = a4(v6 + v7, v14);

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_1003BD7D8((v16 > 1), v17 + 1, 1);
        }

        ++v7;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        _swiftEmptyArrayStorage[v17 + 4] = v15;
        v5 = v25;
        v4 = v26;
        v6 = v28;
      }

      while (v9 != v7);
      v18 = v28 + v7;
      if (v28 + v7 == v25)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = v6;
      if (v6 == v5)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v5 < v6)
    {
      goto LABEL_61;
    }

    v22 = v4 & 0xC000000000000001;
    if (v18 <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v18;
    }

    v7 = v18;
    while (v18 >= v28)
    {
      if (v6 == v7)
      {
        goto LABEL_53;
      }

      if (v29)
      {
        if (v9 == sub_1007A38D4())
        {
          return _swiftEmptyArrayStorage;
        }
      }

      else if (v9 == *(v24 + 16))
      {
        return _swiftEmptyArrayStorage;
      }

      if (v22)
      {
        v5 = sub_1007A3784();
        if (__OFADD__(v9, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v9 >= *(v24 + 16))
        {
          goto LABEL_55;
        }

        v5 = *(v4 + 8 * v9 + 32);

        if (__OFADD__(v9, 1))
        {
          goto LABEL_54;
        }
      }

      v19 = a4(v7, v5);

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      v5 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        sub_1003BD7D8((v20 > 1), v21 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v5;
      _swiftEmptyArrayStorage[v21 + 4] = v19;
      ++v9;
      v4 = v26;
      if (v25 == v7)
      {
        return _swiftEmptyArrayStorage;
      }
    }

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
    ;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

id sub_10056CA00(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v58 = a7;
  v56 = a6;
  v63 = a4;
  v12 = sub_1001F1160(&unk_100AEA150);
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v53 = v47 - v13;
  v14 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v14 - 8);
  v49 = v47 - v15;
  v52 = sub_1007A2D54();
  v16 = *(v52 - 8);
  __chkstk_darwin(v52);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001F1160(&qword_100AEA1C0);
  v54 = *(v19 - 8);
  v55 = v19;
  __chkstk_darwin(v19);
  v48 = v47 - v20;
  type metadata accessor for EndOfBookExperienceController();
  v21 = swift_allocObject();
  *(v21 + 16) = [objc_allocWithZone(BCAugmentedExperienceManager) init];
  swift_unknownObjectWeakInit();
  *(v21 + 32) = 0;
  *(v21 + 34) = 0;
  v22 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_lastEmittedCFIRange;
  v23 = sub_1007A1B34();
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v51 = OBJC_IVAR____TtC5Books29EndOfBookExperienceController_cancellables;
  *(v21 + OBJC_IVAR____TtC5Books29EndOfBookExperienceController_cancellables) = &_swiftEmptySetSingleton;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  swift_unknownObjectWeakAssign();
  [*(v21 + 16) setPresentationViewController:a1];
  v24 = *(a3 + OBJC_IVAR___REBookProviderService_bookInfo);
  v50 = v16;
  if (!v24)
  {

LABEL_7:
    v47[1] = swift_getObjectType();
    v64[0] = sub_1007A0594();
    v33 = v18;
    sub_1007A2D44();
    sub_10000A7C4(0, &qword_100AD1E10);
    v34 = sub_1007A2D74();
    v64[5] = v34;
    v35 = sub_1007A2D24();
    v36 = v49;
    (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
    sub_1001F1160(&qword_100AEA1C8);
    v61 = a5;
    v62 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_100005920(&qword_100AEA1D0, &qword_100AEA1C8);
    sub_100017E1C();
    v37 = v48;
    sub_10079BAC4();
    sub_100007840(v36, &qword_100AD7EB0);
    (*(v50 + 8))(v33, v52);

    swift_allocObject();
    swift_weakInit();
    sub_100005920(&qword_100AEA1D8, &qword_100AEA1C0);

    v38 = v55;
    sub_10079BB04();

    (*(v54 + 8))(v37, v38);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = v56;
    v39 = sub_1001F1160(&unk_100AF27D0);
    v40 = sub_100005920(&qword_100AEA160, &unk_100AF27D0);
    v55 = v39;
    v56 = v40;
    v41 = v53;
    sub_10079BAD4();
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    v43[2] = v42;
    v44 = v61;
    v43[3] = v63;
    v43[4] = v44;
    sub_100005920(&unk_100AEA168, &unk_100AEA150);
    swift_unknownObjectRetain();
    v45 = v60;
    sub_10079BB04();

    v46 = *(v59 + 8);
    v46(v41, v45);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = v57;
    sub_10079BAD4();
    swift_allocObject();
    swift_weakInit();
    sub_10079BB04();

    v46(v41, v45);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = v58;
    sub_10079BAD4();
    swift_allocObject();
    swift_weakInit();
    sub_10079BB04();

    v46(v41, v45);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = sub_1007A05A4();
    swift_allocObject();
    swift_weakInit();
    sub_1001F1160(&unk_100AEA1E0);
    sub_100005920(&qword_100AF2590, &unk_100AEA1E0);
    sub_10079BB04();

    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = sub_1007A05C4();
    swift_allocObject();
    swift_weakInit();
    sub_10079BB04();

    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v64[0] = sub_1007A05B4();
    swift_allocObject();
    swift_weakInit();

    sub_10079BB04();

    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    return v21;
  }

  v25 = *(v21 + 16);
  v26 = v24;
  result = [v26 storeId];
  if (result)
  {
    v28 = result;

    [v25 setStoreID:v28];
    v29 = OBJC_IVAR___REBookProviderService_bookEntity;
    swift_beginAccess();
    sub_100009864(a3 + v29, v64);
    sub_10000E3E8(v64, v64[3]);
    LOBYTE(v29) = sub_10079EC44();
    sub_1000074E0(v64);
    v30 = sub_1006DEDEC(v26, v29 & 1);
    if (v30)
    {
      v31 = v30;
      [*(v21 + 16) addExperience:v30];
    }

    v32 = *(v21 + 16);
    [a2 setBookPositionProcessor:v32];

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_10056D5F0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_forcingInterfaceStyleForOneAlert) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_upSellData) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appAnalyticsAdditionalData) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_panDismissGesture) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_swipeDismissGesture) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_windowSceneTraitRegistration) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_tapDuringPageTurnGesture) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_selectLineGesture) = 0;
  *(v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_statusBarStateProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonHost);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_appIntentsInfo;
  *(v1 + v3) = [objc_allocWithZone(BCAppIntentsAssetViewControllerInfo) init];
  v4 = v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_buyButtonPresenter;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_endOfBookExperienceController) = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookPositionProcessor) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_contentReadyIntervalState) = 0;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_manualCurlDriver) = 0;
  v5 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_viewSnapshotter;
  type metadata accessor for ViewSnapshotter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v1 + v5) = v6;
  *(v6 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_scrubber) = 1;
  v7 = v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_closePanningTranslation;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_themeChangeWatcher) = 0;
  v8 = OBJC_IVAR____TtC5Books33BookReaderContainerViewController_paginationHostView;
  *(v1 + v8) = [objc_allocWithZone(UIView) init];
  v9 = (v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_analyticsProvider);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_originalWindowInterfaceStyle) = 0;
  v10 = (v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_undoTemporaryThemeStyle);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_turnPageButtonManager) = 1;
  *(v1 + OBJC_IVAR____TtC5Books33BookReaderContainerViewController_lookupCompleteSubscription) = 0;
  sub_1007A38A4();
  __break(1u);
}

void sub_10056D8CC(char a1)
{
  v2 = v1;
  v4 = sub_100799234();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for BooksUIKitFeatureFlag.fluidTransitions(_:), v4, v6);
  v9 = sub_100799134();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = objc_opt_self();
  v11 = [v10 shared];
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  [v11 postEvent:kBETestDriverOpenAnimationStart sender:v2];

  v13 = [v10 shared];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 postEvent:kBETestDriverOpenAnimationSetupStart sender:v2];

LABEL_5:
  if (*&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_endOfBookExperienceController])
  {

    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = sub_1007A3D34();
      v21 = sub_1000070F4(v19, v20, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s milestone BookClosing", v17, 0xCu);
      sub_1000074E0(v18);
    }

    sub_10037CA8C(10);
  }

  v22 = [v2 bc_windowForViewController];
  v23 = [v22 overrideUserInterfaceStyle];
  if (v23 != *&v2[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_originalWindowInterfaceStyle])
  {
    [v22 setOverrideUserInterfaceStyle:?];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong assetViewController:v2 requestClose:a1 & 1 error:0];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10056DC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      if ([v6 isPreorder])
      {
        swift_getObjectType();
        sub_10079F8C4();
      }

      swift_unknownObjectRelease();
    }

    (*(a3 + 16))(a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10056DD20(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_10021C1E0;
    *(v7 + 24) = v4;
    v10[4] = sub_1002D7BDC;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1002D63C0;
    v10[3] = &unk_100A23478;
    v8 = _Block_copy(v10);
    _Block_copy(a2);

    [v6 assetViewControllerRequestToBuy:a1 completion:v8];
    _Block_release(v8);

    return swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 0);
  }
}

void sub_10056DEB0()
{
  if (v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_forcingInterfaceStyleForOneAlert] == 1)
  {
    v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_forcingInterfaceStyleForOneAlert] = 0;
    oslog = sub_10079ACC4();
    v1 = sub_1007A29D4();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Ignoring single traitCollectionChange", v2, 2u);
    }
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC5Books33BookReaderContainerViewController_bookReaderHostEnvironmentProvider];
    oslog = [v0 traitCollection];
    [v3 setTraitCollection:?];
  }
}

uint64_t sub_10056DFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADA690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056E074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10056E0DC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsUpdateOfSupportedInterfaceOrientations];
}

uint64_t sub_10056E144(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

void sub_10056E22C()
{
  sub_1002E4FFC();
  if (v0 <= 0x3F)
  {
    sub_100308E70();
    if (v1 <= 0x3F)
    {
      sub_10056E90C(319, &qword_100AEA278, type metadata accessor for CGRect, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10056E90C(319, &qword_100ADB690, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10056E36C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_10079BC44() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v13 + 95) & ~v14)) & ~v11) + *(v8 + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      v24 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v9 > 0x7FFFFFFE)
      {
        v26 = *(v8 + 48);

        return v26((v15 + ((((((v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v14 + 40) & ~v14)) & ~v11);
      }

      else
      {
        v25 = *v24;
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        if ((v25 + 1) >= 2)
        {
          return v25;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_10056E5E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_10079BC44() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8;
  v16 = v15 | 7;
  v17 = v9 + v13 + 1;
  v18 = ((v17 + ((v15 + 95) & ~(v15 | 7))) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_48:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v25 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v11 > 0x7FFFFFFE)
  {
    v26 = *(v10 + 56);

    v26((v17 + ((((((v25 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 40) & ~v16)) & ~v13, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v25 = 0;
    v25[1] = 0;
    *v25 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v25 = a2;
  }
}

void sub_10056E90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10056E9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_10079DFE4();
  *(a4 + 32) = v11;
  *(a4 + 40) = *(&v11 + 1);
  type metadata accessor for CGRect(0);
  sub_10079DFE4();
  *(a4 + 48) = v11;
  *(a4 + 64) = v12;
  *(a4 + 80) = v13;
  v8 = *(type metadata accessor for PopoverListHighlight() + 52);
  *(a4 + v8) = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  v9 = swift_storeEnumTagMultiPayload();
  return a3(v9);
}

uint64_t sub_10056EAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v175 = *(a1 + 16);
  v165 = *(v175 - 8);
  __chkstk_darwin(a1);
  v164 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v124 = &v119 - v5;
  v151 = sub_10079CD04();
  __chkstk_darwin(v151);
  v149 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_10079BCC4();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1001F1160(&qword_100AD7B78);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v119 - v8;
  v9 = sub_1001F1160(&qword_100AD7B80);
  v157 = *(v9 - 8);
  __chkstk_darwin(v9);
  v155 = &v119 - v10;
  v166 = a1;
  v161 = *(a1 - 8);
  __chkstk_darwin(v11);
  v146 = v12;
  v150 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1001F1160(&qword_100AEA280);
  __chkstk_darwin(v163);
  v162 = &v119 - v13;
  sub_1001F1234(&qword_100AE4630);
  v14 = sub_10079C2A4();
  v133 = *(v14 - 8);
  __chkstk_darwin(v14);
  v130 = &v119 - v15;
  v16 = sub_10079C2A4();
  v132 = *(v16 - 8);
  __chkstk_darwin(v16);
  v128 = &v119 - v17;
  v18 = sub_10079C2A4();
  v136 = *(v18 - 8);
  __chkstk_darwin(v18);
  v129 = &v119 - v19;
  sub_1001F1234(&qword_100AEA288);
  v20 = sub_10079C2A4();
  v138 = *(v20 - 8);
  __chkstk_darwin(v20);
  v137 = &v119 - v21;
  sub_1001F1234(&qword_100AD7B98);
  v22 = sub_10079C2A4();
  v148 = *(v22 - 8);
  __chkstk_darwin(v22);
  v170 = &v119 - v23;
  v24 = *(a1 + 24);
  v25 = sub_100005920(&qword_100AE46E0, &qword_100AE4630);
  v176 = v24;
  v204 = v24;
  v205 = v25;
  v135 = v14;
  WitnessTable = swift_getWitnessTable();
  v202 = WitnessTable;
  v203 = &protocol witness table for _PaddingLayout;
  v134 = v16;
  v126 = swift_getWitnessTable();
  v200 = v126;
  v201 = &protocol witness table for _PaddingLayout;
  v160 = v18;
  v26 = swift_getWitnessTable();
  v27 = v174;
  v28 = sub_100005920(&qword_100AEA290, &qword_100AEA288);
  v127 = v26;
  v198 = v26;
  v199 = v28;
  v139 = v20;
  v29 = swift_getWitnessTable();
  v30 = sub_100005920(&unk_100AD7C30, &qword_100AD7B98);
  v131 = v29;
  v196 = v29;
  v197 = v30;
  v31 = swift_getWitnessTable();
  v32 = sub_100005920(&qword_100AD7BA0, &qword_100AD7B80);
  v192 = v22;
  v193 = v9;
  v173 = v9;
  v172 = v31;
  v194 = v31;
  v195 = v32;
  v171 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v142 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v140 = &v119 - v34;
  v144 = v35;
  v36 = sub_10079C2A4();
  v145 = *(v36 - 8);
  __chkstk_darwin(v36);
  v143 = &v119 - v37;
  v38 = sub_10079C2A4();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v147 = &v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v141 = &v119 - v42;
  __chkstk_darwin(v43);
  v45 = &v119 - v44;
  v46 = sub_10079C3D4();
  __chkstk_darwin(v46);
  v48 = &v119 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10079CCB4();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v50 = &v119 - v49;
  if (*(v27 + 16))
  {
    v165 = *(v27 + 16);
    v119 = v45;
    v120 = v39;
    v121 = &v119 - v49;
    v122 = v38;
    v123 = v36;
    v124 = v22;
    v51 = *(v27 + 24);
    v52 = *(v46 + 20);
    v53 = enum case for RoundedCornerStyle.continuous(_:);
    v54 = sub_10079C9E4();
    (*(*(v54 - 8) + 104))(&v48[v52], v53, v54);
    __asm { FMOV            V0.2D, #4.0 }

    *v48 = _Q0;
    v60 = v166;
    sub_100570930(&qword_100AE4510, &type metadata accessor for RoundedRectangle);
    v164 = v51;

    v61 = v130;
    sub_10079D754();
    sub_10079D284();
    v62 = v128;
    v63 = v135;
    sub_10079DBE4();
    (*(v133 + 8))(v61, v63);
    sub_10079D2F4();
    v64 = v129;
    v65 = v134;
    sub_10079DBE4();
    (*(v132 + 8))(v62, v65);
    v66 = *(v27 + 40);
    LOBYTE(v192) = *(v27 + 32);
    v193 = v66;
    sub_1001F1160(&qword_100ADB850);
    sub_10079DFF4();
    v67 = v176;
    if (v181 == 1)
    {
      sub_10079DD34();
      sub_10057029C();
      v68 = sub_10079DE24();
    }

    else
    {
      v68 = sub_10079DDC4();
    }

    v76 = v162;
    sub_1002B63BC(v48, v162);
    v77 = v163;
    *(v76 + *(v163 + 52)) = v68;
    *(v76 + *(v77 + 56)) = 256;
    sub_10079E474();
    sub_100005920(&qword_100AEA298, &qword_100AEA280);
    v78 = v137;
    v79 = v160;
    sub_10079D654();
    sub_100570634(v76);
    (*(v136 + 1))(v64, v79);
    v80 = v161;
    v81 = v161 + 16;
    v163 = *(v161 + 16);
    v136 = v48;
    v82 = v150;
    (v163)(v150, v27, v60);
    v135 = v81;
    v160 = *(v80 + 80);
    v83 = v60;
    v146 += (v160 + 32) & ~v160;
    v84 = (v160 + 32) & ~v160;
    v162 = v84;
    v85 = swift_allocObject();
    v86 = v175;
    *(v85 + 16) = v175;
    *(v85 + 24) = v67;
    v87 = v86;
    v161 = *(v80 + 32);
    (v161)(v85 + v84, v82, v60);
    type metadata accessor for CGSize(0);
    sub_100570930(&unk_100AE40C0, type metadata accessor for CGSize);
    v88 = v139;
    sub_10079D874();

    (*(v138 + 8))(v78, v88);
    sub_10079CF74();
    v89 = v152;
    sub_10079BC64();
    (v163)(v82, v174, v60);
    v90 = v146;
    v91 = swift_allocObject();
    v92 = v176;
    *(v91 + 16) = v87;
    *(v91 + 24) = v92;
    (v161)(v91 + v162, v82, v83);
    sub_100570930(&qword_100AD7BB0, &type metadata accessor for DragGesture);
    sub_100570930(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value);
    v93 = v156;
    v94 = v154;
    sub_10079E2A4();

    (*(v153 + 8))(v89, v94);
    (v163)(v82, v174, v83);
    v95 = swift_allocObject();
    *(v95 + 16) = v175;
    *(v95 + 24) = v92;
    (v161)(v95 + v162, v82, v83);
    v96 = (v95 + ((v90 + 7) & 0xFFFFFFFFFFFFFFF8));
    v97 = v164;
    *v96 = v165;
    v96[1] = v97;
    sub_100005920(&qword_100AD7BC0, &qword_100AD7B78);

    v98 = v155;
    v99 = v159;
    sub_10079E294();

    (*(v158 + 8))(v93, v99);
    sub_10079BCE4();
    v100 = v140;
    v22 = v124;
    v101 = v173;
    v102 = v172;
    v103 = v171;
    v104 = v170;
    sub_10079D994();
    (*(v157 + 8))(v98, v101);
    (*(v148 + 8))(v104, v22);
    sub_10079D284();
    v192 = v22;
    v193 = v101;
    v194 = v102;
    v195 = v103;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v106 = v143;
    v107 = v144;
    sub_10079DBE4();
    (*(v142 + 8))(v100, v107);
    sub_10079D2F4();
    v179 = OpaqueTypeConformance2;
    v180 = &protocol witness table for _PaddingLayout;
    v108 = v123;
    v109 = swift_getWitnessTable();
    v110 = v141;
    sub_10079DBE4();
    (*(v145 + 8))(v106, v108);
    v177 = v109;
    v178 = &protocol witness table for _PaddingLayout;
    v111 = v122;
    v112 = swift_getWitnessTable();
    v113 = v119;
    sub_10039232C(v110, v111, v112);
    v114 = *(v120 + 8);
    v114(v110, v111);
    v115 = v147;
    sub_10039232C(v113, v111, v112);
    v50 = v121;
    sub_10028B610(v115, v111);
    sub_100007020(v165);
    v114(v115, v111);
    v114(v113, v111);
    sub_1002B6360(v136);
    v75 = v173;
  }

  else
  {
    v69 = v27 + *(v166 + 56);
    v70 = v124;
    v71 = v175;
    v72 = v176;
    sub_10039232C(v69, v175, v176);
    v73 = v164;
    sub_10039232C(v70, v71, v72);
    v192 = v22;
    v193 = v173;
    v194 = v172;
    v195 = v171;
    v190 = swift_getOpaqueTypeConformance2();
    v191 = &protocol witness table for _PaddingLayout;
    v188 = swift_getWitnessTable();
    v189 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    sub_10028B708(v73, v38, v71);
    v74 = *(v165 + 8);
    v74(v73, v71);
    v74(v70, v71);
    v75 = v173;
  }

  v192 = v22;
  v193 = v75;
  v194 = v172;
  v195 = v171;
  v186 = swift_getOpaqueTypeConformance2();
  v187 = &protocol witness table for _PaddingLayout;
  v184 = swift_getWitnessTable();
  v185 = &protocol witness table for _PaddingLayout;
  v182 = swift_getWitnessTable();
  v183 = v176;
  v116 = v168;
  v117 = swift_getWitnessTable();
  sub_10039232C(v50, v116, v117);
  return (*(v167 + 8))(v50, v116);
}

double sub_10057029C()
{
  v0 = sub_10079BC44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1005A27F8(&v10 - v5);
  (*(v1 + 104))(v3, enum case for ColorScheme.dark(_:), v0);
  v7 = sub_10079BC34();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  result = 0.12;
  if (v7)
  {
    return 0.15;
  }

  return result;
}

uint64_t sub_10057045C()
{
  type metadata accessor for PopoverListHighlight();
  sub_1005704E0();
  sub_1001F1160(&qword_100ADB850);
  return sub_10079E004();
}

BOOL sub_1005704E0()
{
  sub_1001F1160(&qword_100AEA2A0);
  sub_10079DFF4();
  sub_10079BCA4();
  v4.x = v0;
  v4.y = v1;
  return CGRectContainsPoint(v3, v4);
}

uint64_t sub_100570574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1001F1160(&qword_100ADB850);
  sub_10079E004();
  type metadata accessor for PopoverListHighlight();
  result = sub_1005704E0();
  if (result)
  {
    return a3();
  }

  return result;
}

uint64_t sub_100570634(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AEA280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10057069C()
{
  type metadata accessor for PopoverListHighlight();

  return sub_1005703F8();
}

uint64_t sub_100570728()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PopoverListHighlight();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  if (*(v3 + 16))
  {
  }

  v4 = *(v2 + 52);
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079BC44();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 56), v1);

  return swift_deallocObject();
}

uint64_t sub_1005708A4()
{
  type metadata accessor for PopoverListHighlight();

  return sub_10057045C();
}

uint64_t sub_100570930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100570978(uint64_t a1)
{
  v3 = *(type metadata accessor for PopoverListHighlight() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100570574(a1, v1 + v4, v5);
}

BOOL static RETestDriver.closeBook(viewController:)()
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    sub_10056D8CC(1);
  }

  swift_unknownObjectRelease();
  return v0 != 0;
}

BOOL static RETestDriver.turnToInitialPage(viewController:)()
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007A0994();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v0 != 0;
}

uint64_t static RETestDriver.performScrollTest(viewController:name:iterations:delta:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v9 = sub_100569664(a2, a3, a4, a5);
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRelease();
  return v9 & 1;
}

uint64_t static RETestDriver.simulateManualPageTurn(viewController:rtl:time:)(double a1, uint64_t a2, char a3)
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    v5 = sub_1005698A0(a3 & 1, a1);
  }

  else
  {
    v5 = 0;
  }

  swift_unknownObjectRelease();
  return v5 & 1;
}

id RETestDriver.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RETestDriver();
  return objc_msgSendSuper2(&v2, "init");
}

id RETestDriver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RETestDriver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s5Books12RETestDriverC23getBookControllerLayout04viewF0SSSgyXl_tFZ_0()
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_getObjectType();
  v0 = sub_10079F4F4();
  if (v0 > 1)
  {
    if (v0 == 2 || v0 == 3)
    {
LABEL_11:
      v2 = sub_1007A2254();
      swift_unknownObjectRelease();
      return v2;
    }
  }

  else
  {
    if (!v0)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return 0;
    }

    if (v0 == 1)
    {
      goto LABEL_11;
    }
  }

  type metadata accessor for BookLayoutMode(0);
  result = sub_1007A3AF4();
  __break(1u);
  return result;
}

uint64_t _s5Books12RETestDriverC23setBookControllerLayout_04viewF0ySS_yXltFZ_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    if (sub_1007A2254() != a1 || v4 != a2)
    {
      v6 = sub_1007A3AB4();

      if (v6)
      {
LABEL_14:
        sub_100569548();
        goto LABEL_15;
      }

      if (sub_1007A2254() != a1 || v7 != a2)
      {
        v9 = sub_1007A3AB4();

        if (v9)
        {
          goto LABEL_14;
        }

        if (sub_1007A2254() != a1 || v11 != a2)
        {
          sub_1007A3AB4();

          goto LABEL_14;
        }
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return swift_unknownObjectRelease();
}

BOOL _s5Books12RETestDriverC8turnPage14viewController7forwardSbyXl_SbtFZ_0(uint64_t a1, char a2)
{
  v3 = sub_1007A0404();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BookReaderContainerViewController();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    if (a2)
    {
      sub_1007A0364();
    }

    else
    {
      sub_1007A0384();
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007A0974();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v7 != 0;
}

unint64_t sub_100571524()
{
  result = qword_100AEA2D0;
  if (!qword_100AEA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2D0);
  }

  return result;
}

unint64_t sub_10057157C()
{
  result = qword_100AEA2D8;
  if (!qword_100AEA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA2D8);
  }

  return result;
}

uint64_t sub_100571608()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23518);
  v21 = sub_100008B98(v3, qword_100B23518);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_1005719AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1850 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}