uint64_t sub_10045D01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_10045D110, v7, v6);
}

uint64_t sub_10045D110()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  v0[9] = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  v0[10] = *(v2 + v3);

  if (v1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v0[11] = v4;
  v0[12] = v6;

  return _swift_task_switch(sub_10045D1C4, v4, v6);
}

uint64_t sub_10045D1C4()
{
  (*(v0[4] + 104))(v0[5], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[3]);

  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_10045D2C8;
  v2 = v0[10];
  v3 = v0[5];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v3, sub_100466790, v2, &type metadata for () + 8);
}

uint64_t sub_10045D2C8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[11];
    v5 = v2[12];

    return _swift_task_switch(sub_10045D41C, v4, v5);
  }
}

uint64_t sub_10045D41C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_10045D48C, v1, v2);
}

uint64_t sub_10045D48C()
{
  v1 = v0[6];
  v0[14] = *(v0[2] + v0[9]);

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_10045D56C;

  return sub_1006289F0(v1);
}

uint64_t sub_10045D56C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100163E38, v3, v2);
}

uint64_t sub_10045D6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v6;
  v4[18] = v5;

  return _swift_task_switch(sub_10045D784, v6, v5);
}

uint64_t sub_10045D784()
{
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  *(v0 + 152) = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  *(v0 + 160) = *(v1 + v2);
  v3 = (v1 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings);
  v5 = v3[1];
  v4 = v3[2];
  v6 = *v3;
  *(v0 + 64) = *(v3 + 48);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 16) = v6;

  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_10045D860;

  return sub_1005C22B0(v0 + 16);
}

uint64_t sub_10045D860()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_10045D9A4, v3, v2);
}

uint64_t sub_10045D9A4()
{
  v1 = v0[19];
  v2 = v0[15];

  v3 = *(*&v2[v1] + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1004666D4;
  *(v5 + 24) = v4;
  v0[13] = sub_100028EF4;
  v0[14] = v5;
  v0[9] = _NSConcreteStackBlock;
  v0[10] = 1107296256;
  v0[11] = sub_10001A7D4;
  v0[12] = &unk_100A6DDC8;
  v6 = _Block_copy(v0 + 9);
  v7 = v3;
  v8 = v2;

  [v7 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }

  return result;
}

id sub_10045DB54(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;

  sub_10074DA5C();

  v3 = *(*(a1 + v2) + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);

  return [v3 reset];
}

void sub_10045DBE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1003E9628(0, 0, v8, a4, v12);
}

void sub_10045DD14()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v1)
  {
    v47 = v1;
    v2 = [v47 fetchedObjects];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for JournalEntryMO();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = v4 >> 62;
      if (v4 >> 62)
      {
        goto LABEL_47;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v51 = v4;
        v6 = 0;
        if (!i)
        {
          break;
        }

        v7 = 0;
        v8 = 0;
        v9 = 0;
        v54 = v4 & 0xC000000000000001;
        v49 = v4 + 32;
        v50 = v4 & 0xFFFFFFFFFFFFFF8;
        v53 = i;
        while (1)
        {
          if (v54)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= *(v50 + 16))
            {
              goto LABEL_46;
            }

            v11 = *(v49 + 8 * v9);
          }

          v10 = v11;
          v12 = __OFADD__(v9++, 1);
          if (v12)
          {
            goto LABEL_44;
          }

          v13 = [v11 assets];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 count];

            v12 = __OFADD__(v8, v15);
            v8 = &v15[v8];
            if (v12)
            {
              break;
            }
          }

          v16 = [v10 assets];
          if (v16)
          {
            v17 = v16;
            v4 = sub_100464238(v17);
            v55 = v17;

            v18 = *(v4 + 16);
            if (v18)
            {
              v52 = v8;
              v19 = v4 + 32;
              while (1)
              {
                sub_10000BA20(v19, &v56);
                type metadata accessor for JournalEntryAssetMO();
                if (swift_dynamicCast())
                {
                  v20 = v58;
                  v21 = [v58 fileAttachments];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [v21 count];
                  }

                  else
                  {
                    v23 = 0;
                  }

                  v6 = v23 + v7;
                  if (__OFADD__(v7, v23))
                  {
                    __break(1u);
LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

                  v7 += v23;
                }

                v19 += 32;
                if (!--v18)
                {

                  v8 = v52;
                  goto LABEL_8;
                }
              }
            }

LABEL_8:

            v10 = v55;
            v4 = v51;
          }

          if (v9 == v53)
          {
            goto LABEL_34;
          }
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        ;
      }

      v8 = 0;
LABEL_34:
      __chkstk_darwin(i);
      v25 = v24;
      sub_1000F24EC(&qword_100ADF600);
      NSManagedObjectContext.performAndWait<A>(_:)();

      v26 = v56;
      __chkstk_darwin(v27);
      v29 = v28;
      sub_1000F24EC(&unk_100AE4880);
      NSManagedObjectContext.performAndWait<A>(_:)();

      v30 = v56;
      v31 = [v48 navigationItem];
      v56 = 0;
      v57 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v56 = 14917;
      v57 = 0xE200000000000000;
      if (v46)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v32 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v32;
      v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v33);

      v34._countAndFlagsBits = 980631840;
      v34._object = 0xE400000000000000;
      String.append(_:)(v34);
      v58 = v8;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 40;
      v36._object = 0xE100000000000000;
      String.append(_:)(v36);
      if (v26 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v37;
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      v39._countAndFlagsBits = 0x3A74412029;
      v39._object = 0xE500000000000000;
      String.append(_:)(v39);
      v58 = v6;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v41._countAndFlagsBits = 40;
      v41._object = 0xE100000000000000;
      String.append(_:)(v41);
      if (v30 >> 62)
      {
        v42 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v42 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v58 = v42;
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44._countAndFlagsBits = 41;
      v44._object = 0xE100000000000000;
      String.append(_:)(v44);
      v45 = String._bridgeToObjectiveC()();

      [v31 setTitle:v45];
    }

    else
    {
    }
  }
}

void sub_10045E36C(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  if (qword_100ACFE28 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v5 = *(*(a1 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_context);
  v6 = *(qword_100B2F9E0 + 16);
  v7 = v5;
  v8 = a2();

  *a3 = v8;
}

id sub_10045E434(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EntryListType();
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings];
  *v7 = vdupq_n_s64(1uLL);
  v7[1].i64[0] = 1;
  v7[1].i64[1] = 0;
  v7[2].i64[0] = 0;
  v7[2].i64[1] = 0;
  v7[3].i8[0] = 0;
  v8 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v9 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v10 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v10 - 8) + 56))(v6, 2, 2, v10);
  type metadata accessor for EntryListViewModel(0);
  swift_allocObject();
  *&v2[v8] = sub_100010AF4(v6, v9);
  v11 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_activityIndicator;
  *&v2[v11] = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v12 = type metadata accessor for AdminEntriesVC();
  v14.receiver = v2;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "initWithStyle:", a1);
}

id sub_10045E620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for EntryListType();
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v4[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings];
  *v10 = vdupq_n_s64(1uLL);
  v10[1].i64[0] = 1;
  v10[1].i64[1] = 0;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v10[3].i8[0] = 0;
  v11 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v12 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v13 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v13 - 8) + 56))(v9, 2, 2, v13);
  type metadata accessor for EntryListViewModel(0);
  swift_allocObject();
  *&v4[v11] = sub_100010AF4(v9, v12);
  v14 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_activityIndicator;
  *&v4[v14] = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for AdminEntriesVC();
  v19.receiver = v4;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v15, a3);

  return v17;
}

id sub_10045E88C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for EntryListType();
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v2[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings];
  *v7 = vdupq_n_s64(1uLL);
  v7[1].i64[0] = 1;
  v7[1].i64[1] = 0;
  v7[2].i64[0] = 0;
  v7[2].i64[1] = 0;
  v7[3].i8[0] = 0;
  v8 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v9 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v10 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v10 - 8) + 56))(v6, 2, 2, v10);
  type metadata accessor for EntryListViewModel(0);
  swift_allocObject();
  *&v2[v8] = sub_100010AF4(v6, v9);
  v11 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_activityIndicator;
  *&v2[v11] = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  v12 = type metadata accessor for AdminEntriesVC();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);

  if (v13)
  {
  }

  return v13;
}

uint64_t sub_10045ECF8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a2;
  v10 = a3;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  sub_1003E9628(0, 0, v7, &unk_1009569C0, v12);
}

uint64_t sub_10045EE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10045EECC, v7, v6);
}

uint64_t sub_10045EECC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  v0[7] = OBJC_IVAR____TtC7Journal14AdminEntriesVC_model;
  v0[8] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10045EF84;
  v4 = v0[3];

  return sub_1005385E8(v4);
}

uint64_t sub_10045EF84()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_10045F0C8, v3, v2);
}

uint64_t sub_10045F0C8()
{
  v1 = v0[4];
  v0[10] = *(v0[2] + v0[7]);

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10045F1A8;

  return sub_1006289F0(v1);
}

uint64_t sub_10045F1A8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1000EC728, v3, v2);
}

uint64_t sub_10045F308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);

  sub_10074DA5C();
}

uint64_t sub_10045F364(int a1, id a2)
{
  [a2 setFlagged:{objc_msgSend(a2, "flagged") ^ 1}];
  [a2 setIsUploadedToCloud:0];

  sub_10074DA5C();
}

UIMenu sub_10045F3EC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100941830;
  *(preferredElementSize + 32) = a2;
  *(preferredElementSize + 40) = a3;
  *(preferredElementSize + 48) = a4;
  *(preferredElementSize + 56) = a5;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

uint64_t sub_10045F5D0(uint64_t a1)
{
  v2 = a1;
  v349 = a1;
  v311 = type metadata accessor for FileStoreConfiguration();
  v333 = *(v311 - 8);
  __chkstk_darwin(v311);
  v310 = v294 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v326 = v294 - v5;
  v325 = type metadata accessor for URL();
  v332 = *(v325 - 8);
  __chkstk_darwin(v325);
  v317 = v294 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADE5A0);
  __chkstk_darwin(v7 - 8);
  v322 = v294 - v8;
  v327 = type metadata accessor for UnsupportedEntryMode();
  isa = v327[-1].isa;
  __chkstk_darwin(v327);
  v323 = v294 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for ColorResource();
  v344 = *(v302 - 8);
  __chkstk_darwin(v302);
  v301 = v294 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for UUID();
  v346 = *(v343 - 8);
  __chkstk_darwin(v343);
  v321 = v294 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v12 - 8);
  v330 = v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v329 = v294 - v15;
  __chkstk_darwin(v16);
  v304 = v294 - v17;
  __chkstk_darwin(v18);
  v305 = v294 - v19;
  __chkstk_darwin(v20);
  v339 = v294 - v21;
  __chkstk_darwin(v22);
  v347 = v294 - v23;
  v334 = type metadata accessor for Date();
  v24 = *(v334 - 1);
  __chkstk_darwin(v334);
  v331 = v294 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v328 = v294 - v27;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = v294 - v30;
  v32 = *(v2 + 32);
  LODWORD(v2) = [v32 isRemovedFromCloud];
  v33 = objc_opt_self();
  v34 = &selRef_systemGroupedBackgroundColor;
  if (v2)
  {
    v34 = &selRef_redColor;
  }

  v35 = [v33 *v34];
  [v1 setBackgroundColor:v35];

  [v32 isUploadedToCloud];
  v342 = "Attachment Path: ";
  v341 = "Can't get managed object";
  v36 = OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded;
  v37 = *&v1[OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded];
  v38 = String._bridgeToObjectiveC()();

  v340 = objc_opt_self();
  v39 = [v340 systemImageNamed:v38];

  [v37 setImage:v39];
  v40 = *&v1[v36];
  LODWORD(v39) = [v32 isUploadedToCloud];
  v41 = objc_opt_self();
  v42 = &selRef_greenColor;
  if (!v39)
  {
    v42 = &selRef_redColor;
  }

  v43 = [v41 *v42];
  [v40 setTintColor:v43];

  v345 = v1;
  [*&v1[v36] setContentMode:1];
  v44 = *&v1[OBJC_IVAR____TtC7Journal9EntryCell_lblDate];
  v45 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  v46 = v349;
  swift_beginAccess();
  v47 = v334;
  (*(v24 + 16))(v31, v46 + v45, v334);
  v48 = [objc_allocWithZone(NSDateFormatter) init];
  v49 = String._bridgeToObjectiveC()();
  [v48 setDateFormat:v49];

  v50 = Date._bridgeToObjectiveC()().super.isa;
  v51 = [v48 stringFromDate:v50];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v47;
  v335 = *(v24 + 8);
  v335(v31, v47);
  v53 = String._bridgeToObjectiveC()();

  [v44 setText:v53];

  [v44 setTextAlignment:2];
  LODWORD(v53) = [v32 isRemovedFromCloud];
  v54 = objc_opt_self();
  v55 = &selRef_lightGrayColor;
  if (v53)
  {
    v55 = &selRef_greenColor;
  }

  v56 = [v54 *v55];
  [v44 setTextColor:v56];

  v57 = [objc_opt_self() systemFontOfSize:12.0];
  [v44 setFont:v57];

  v58 = *&v345[OBJC_IVAR____TtC7Journal9EntryCell_lblText];
  v348 = v32;
  if ([v32 isRemovedFromCloud])
  {
    v59 = objc_allocWithZone(NSAttributedString);
    v60 = String._bridgeToObjectiveC()();
    v61 = [v59 initWithString:v60];

    v62 = v349;
  }

  else
  {
    v63 = [objc_opt_self() currentTraitCollection];
    type metadata accessor for CustomAttributeProviderConcrete();
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    Logger.init(subsystem:category:)();
    v65 = v64 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
    *(v65 + 4) = 0;
    *v65 = 2;
    v62 = v349;
    v61 = sub_100789EB0(v63, v64, v349);
  }

  [v58 setAttributedText:v61];

  v66 = v348;
  v67 = [v348 isRemovedFromCloud];
  v68 = objc_opt_self();
  v69 = &selRef_blueColor;
  if (!v67)
  {
    v69 = &selRef_blackColor;
  }

  v70 = [v68 *v69];
  [v58 setTextColor:v70];

  v353 = 0x4449207972746E45;
  v354 = 0xEA0000000000203ALL;
  v71 = [v66 id];
  if (v71)
  {
    v72 = v339;
    v73 = v71;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = 0;
    v75 = 0xD000000000000011;
    v76 = v346;
  }

  else
  {
    v74 = 1;
    v75 = 0xD000000000000011;
    v76 = v346;
    v72 = v339;
  }

  v77 = *(v76 + 7);
  v78 = v343;
  v339 = v76 + 56;
  v338 = v77;
  v77(v72, v74, 1, v343);
  v79 = v347;
  sub_100024EC0(v72, v347);
  v80 = *(v76 + 6);
  v337 = v76 + 48;
  v336 = v80;
  if (v80(v79, 1, v78))
  {
    sub_100004F84(v79, &qword_100AD1420);
    v81 = 0;
    v82 = 0;
  }

  else
  {
    v83 = v321;
    (*(v76 + 2))(v321, v79, v78);
    sub_100004F84(v79, &qword_100AD1420);
    v81 = UUID.uuidString.getter();
    v82 = v84;
    (*(v76 + 1))(v83, v78);
  }

  v85 = v52;
  v356 = v81;
  v357 = v82;
  v347 = sub_1000F24EC(&unk_100AE4870);
  v86._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v86);

  v356 = v353;
  v357 = v354;
  v353 = 0;
  v354 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v355._countAndFlagsBits = 0x207374657373410ALL;
  v355._object = 0xEF203A746E756F43;
  v87 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v88 = *&v87[v62];
  v89 = v335;
  if (v88 >> 62)
  {
    goto LABEL_123;
  }

  v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v352._countAndFlagsBits = v90;
  v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v91);

  String.append(_:)(v355);

  v92 = [v348 createdDate];
  if (v92)
  {
    v93 = v328;
    v94 = v92;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v355._countAndFlagsBits = 0;
    v355._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v355._countAndFlagsBits = v75 + 5;
    v355._object = 0x80000001008F4C20;
    sub_100006A3C(&qword_100AE1D80, &type metadata accessor for Date);
    v95._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v95);

    String.append(_:)(v355);

    (v89)(v93, v85);
  }

  else
  {
    v96._countAndFlagsBits = (v75 + 1);
    v96._object = 0x80000001008F4AB0;
    String.append(_:)(v96);
  }

  v97 = [v348 entryDate];
  if (v97)
  {
    v98 = v331;
    v99 = v97;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v355._countAndFlagsBits = 0;
    v355._object = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v355._countAndFlagsBits = v75 + 3;
    v355._object = 0x80000001008F4C00;
    sub_100006A3C(&qword_100AE1D80, &type metadata accessor for Date);
    v100._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v100);

    String.append(_:)(v355);

    (v89)(v98, v85);
  }

  else
  {
    v101._countAndFlagsBits = v75 + 6;
    v101._object = 0x80000001008F4AD0;
    String.append(_:)(v101);
  }

  v85 = v345;
  v355._countAndFlagsBits = v348;
  type metadata accessor for JournalEntryMO();
  if ((MinimumSupportedVersion.isEditingSupported.getter() & 1) == 0)
  {
    v89 = v85;
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0C80 != -1)
    {
      swift_once();
    }

    v102 = v62;
    v103 = v302;
    v104 = sub_10000617C(v302, qword_100B31490);
    (v344[2])(v301, v104, v103);
    v105 = UIColor.init(resource:)();
    [v85 setBackgroundColor:v105];

    v355._countAndFlagsBits = 0;
    v355._object = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v106._countAndFlagsBits = 0xD000000000000025;
    v106._object = 0x80000001008F4AF0;
    String.append(_:)(v106);
    LOWORD(v352._countAndFlagsBits) = [v348 minimumSupportedAppVersion];
    v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v107);

    v108._countAndFlagsBits = 0xD000000000000013;
    v108._object = 0x80000001008F4B20;
    String.append(_:)(v108);
    String.append(_:)(v355);

    v355._countAndFlagsBits = 0;
    v355._object = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v109._countAndFlagsBits = 0xD000000000000029;
    v109._object = 0x80000001008F4B40;
    String.append(_:)(v109);
    v110 = v322;
    JournalEntryMO.unsupportedEntryMode.getter();
    v111 = isa;
    v112 = *(isa + 6);
    v113 = v327;
    if (v112(v110, 1, v327) == 1)
    {
      v114 = v323;
      (*(v111 + 13))(v323, enum case for UnsupportedEntryMode.hiddenAll(_:), v113);
      v115 = v112(v110, 1, v113);
      v116 = v114;
      v117 = v111;
      v76 = v346;
      if (v115 != 1)
      {
        sub_100004F84(v110, &qword_100ADE5A0);
      }
    }

    else
    {
      v116 = v323;
      (*(v111 + 4))(v323, v110, v113);
      v117 = v111;
      v76 = v346;
    }

    _print_unlocked<A, B>(_:_:)();
    (*(v117 + 1))(v116, v113);
    v118._countAndFlagsBits = 0xD000000000000013;
    v118._object = 0x80000001008F4B20;
    String.append(_:)(v118);
    String.append(_:)(v355);

    v62 = v102;
  }

  v119 = *&v85[OBJC_IVAR____TtC7Journal9EntryCell_lblCount];
  v294[1] = v357;
  v120 = String._bridgeToObjectiveC()();
  [v119 setText:v120];

  [v119 setAdjustsFontSizeToFitWidth:1];
  [v119 setMinimumScaleFactor:0.2];
  LODWORD(v120) = [v348 isRemovedFromCloud];
  v121 = objc_opt_self();
  v122 = &selRef_whiteColor;
  if (!v120)
  {
    v122 = &selRef_darkGrayColor;
  }

  v123 = [v121 *v122];
  [v119 setTextColor:v123];

  v124 = 0.0;
  v75 = &selRef_setSuggestedName_;
  if (*(v62 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) == 1)
  {
    v125 = [v85 contentView];
    v126 = [v125 layer];

    static Color.red.getter();
    v89 = v85;
    v127 = Color.cgColor.getter();

    [v126 setBorderColor:v127];

    v85 = v89;
    v124 = 2.0;
  }

  v128 = [v85 contentView];
  v129 = [v128 layer];

  [v129 setBorderWidth:v124];
  v130 = *&v87[v62];
  if (v130 >> 62)
  {
    v292 = *&v87[v62];
    v131 = _CocoaArrayWrapper.endIndex.getter();
    v130 = v292;
    if (!v131)
    {
    }
  }

  else
  {
    v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v131)
    {
    }
  }

  v308 = v130 & 0xC000000000000001;
  v303 = OBJC_IVAR____TtC7Journal9EntryCell_assetStack;
  v297 = v130 & 0xFFFFFFFFFFFFFF8;
  v296 = v130 + 32;
  v320 = (v76 + 16);
  v319 = (v76 + 8);
  v300 = (v344 + 2);
  v299 = "SupportedAppVersionMode: ";
  v298 = "SupportedAppVersion: ";
  v328 = 0x80000001008F4BC0;
  v309 = (v333 + 8);
  isa = (v332 + 56);
  v323 = (v332 + 48);
  v313 = (v332 + 32);
  v312 = (v332 + 8);
  v306 = v130;
  v307 = v131;

  v132 = 0;
  v133 = 0;
  *&v134 = 138412546;
  v295 = v134;
  do
  {
    v327 = v133;
    if (v308)
    {
      v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v136 = __OFADD__(v132, 1);
      v137 = v132 + 1;
      if (v136)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (v132 >= *(v297 + 16))
      {
        goto LABEL_121;
      }

      v135 = *(v296 + 8 * v132);
      v136 = __OFADD__(v132, 1);
      v137 = v132 + 1;
      if (v136)
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        v90 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_20;
      }
    }

    v318 = v137;
    v138 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
    v139 = *&v135[OBJC_IVAR____TtC7Journal5Asset_assetMO];
    if (v139)
    {
      v140 = v135;
      v141 = objc_allocWithZone(UIImageView);
      v142 = v139;
      v143 = [v141 init];
      [v143 setContentMode:1];
      v144 = v85;
      [v143 setTranslatesAutoresizingMaskIntoConstraints:0];
      v145 = [v143 widthAnchor];
      v146 = [v145 constraintEqualToConstant:160.0];

      v62 = &selRef_setSuggestedName_;
      [v146 setActive:1];

      [v143 setTranslatesAutoresizingMaskIntoConstraints:0];
      v147 = [v143 heightAnchor];
      v148 = [v147 constraintEqualToConstant:160.0];

      [v148 setActive:1];
      v76 = v85;
      v334 = *&v85[v303];
      v322 = v143;
      [v334 addArrangedSubview:v143];
      v335 = v142;
      [v142 isUploadedToCloud];
      v149 = [objc_allocWithZone(UIImageView) init];
      v150 = String._bridgeToObjectiveC()();

      v151 = [v340 systemImageNamed:v150];

      [v149 setImage:v151];
      DebugData.init(name:)(v152);
      v154 = v153;
      v156 = v155;
      v158 = v157;
      v160 = v159;
      v315 = v149;
      [v315 setFrame:{v154, v156, v158, v160}];
      v316 = v140;
      v161 = *&v140[v138];
      if (!v161 || (v162 = &selRef_greenColor, ([v161 isUploadedToCloud] & 1) == 0))
      {
        v162 = &selRef_redColor;
      }

      v163 = [objc_opt_self() *v162];
      v164 = v315;
      [v315 setTintColor:v163];

      v165 = 1;
      [v164 setContentMode:1];

      [v322 addSubview:v164];
      v166 = [objc_allocWithZone(UILabel) init];
      v85 = v144;
      [v144 frame];
      CGRectGetWidth(v358);
      DebugData.init(name:)(v167);
      [v166 setFrame:?];
      v314 = v166;
      [v166 setNumberOfLines:0];
      v352._countAndFlagsBits = 0x4449207465737341;
      v352._object = 0xEA0000000000203ALL;
      v168 = [v335 id];
      v89 = v343;
      if (v168)
      {
        v169 = v304;
        v170 = v168;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v171 = v169;
        v165 = 0;
      }

      else
      {
        v171 = v304;
      }

      v338(v171, v165, 1, v89);
      v172 = v171;
      v173 = v305;
      sub_100024EC0(v172, v305);
      if (v336(v173, 1, v89))
      {
        sub_100004F84(v173, &qword_100AD1420);
        v174 = 0;
        v175 = 0;
      }

      else
      {
        v176 = v321;
        (*v320)(v321, v173, v89);
        sub_100004F84(v173, &qword_100AD1420);
        v174 = UUID.uuidString.getter();
        v175 = v177;
        v178 = v176;
        v85 = v76;
        (*v319)(v178, v89);
      }

      v350 = v174;
      v351 = v175;
      v179._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v179);

      v355 = v352;
      if (*&v316[v138] && (v352._countAndFlagsBits = *&v316[v138], type metadata accessor for JournalEntryAssetMO(), (MinimumSupportedVersion.isEditingSupported.getter() & 1) != 0))
      {
        v87 = v314;

        v75 = v335;
      }

      else
      {
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0C98 != -1)
        {
          swift_once();
        }

        v180 = v302;
        v181 = sub_10000617C(v302, qword_100B314D8);
        (*v300)(v301, v181, v180);
        v182 = UIColor.init(resource:)();
        v87 = v314;
        [v314 setBackgroundColor:v182];

        v352._countAndFlagsBits = 0;
        v352._object = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v183._countAndFlagsBits = 0xD000000000000025;
        v183._object = (v299 | 0x8000000000000000);
        String.append(_:)(v183);
        v75 = v335;
        LOWORD(v350) = [v335 minimumSupportedAppVersion];
        v184._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v184);

        v185._countAndFlagsBits = 0xD000000000000013;
        v185._object = (v298 | 0x8000000000000000);
        String.append(_:)(v185);
        String.append(_:)(v352);

        v85 = v76;
      }

      v186 = String._bridgeToObjectiveC()();

      [v87 setText:v186];

      [v87 setAdjustsFontSizeToFitWidth:1];
      [v87 setMinimumScaleFactor:0.2];
      v187 = [v348 isRemovedFromCloud];
      v188 = objc_opt_self();
      v189 = &selRef_whiteColor;
      if (!v187)
      {
        v189 = &selRef_darkGrayColor;
      }

      v190 = [v188 *v189];
      [v87 setTextColor:v190];

      [v322 addSubview:v87];
      v191 = [v75 fileAttachments];
      if (v191 && (v192 = v191, v193 = [v191 allObjects], v192, v194 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v193, v195 = sub_100584ADC(v194), , v195))
      {
        v196 = v195;
        if (v195 >> 62)
        {
          v197 = _CocoaArrayWrapper.endIndex.getter();
          v196 = v195;
          if (v197)
          {
LABEL_71:
            if (v197 < 1)
            {
              goto LABEL_122;
            }

            v198 = 0;
            v331 = (v196 & 0xC000000000000001);
            v333 = v196;
            v332 = v197;
            while (2)
            {
              v349 = v198;
              if (v331)
              {
                v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v200 = *(v196 + 8 * v198 + 32);
              }

              v201 = v200;
              v202 = [objc_allocWithZone(UIImageView) init];
              v89 = 1;
              [v202 setContentMode:1];
              [v85 frame];
              Width = CGRectGetWidth(v359);
              [v202 setTranslatesAutoresizingMaskIntoConstraints:0];
              v204 = [v202 widthAnchor];
              v205 = [v204 constraintEqualToConstant:Width];

              [v205 setActive:1];
              [v202 setTranslatesAutoresizingMaskIntoConstraints:0];
              v206 = [v202 heightAnchor];
              v207 = [v206 constraintEqualToConstant:100.0];

              [v207 setActive:1];
              [v201 isUploadedToCloud];
              v208._countAndFlagsBits = [objc_allocWithZone(UIImageView) init];
              countAndFlagsBits = v208._countAndFlagsBits;
              DebugData.init(name:)(v208);
              v211 = v210;
              v213 = v212;
              v215 = v214;
              v217 = v216;
              v218 = countAndFlagsBits;
              [v218 setFrame:{v211, v213, v215, v217}];
              v219 = String._bridgeToObjectiveC()();
              v220 = v345;

              v221 = [v340 systemImageNamed:v219];

              [v218 setImage:v221];
              LODWORD(v219) = [v201 isUploadedToCloud];
              v222 = objc_opt_self();
              v223 = &selRef_redColor;
              if (v219)
              {
                v223 = &selRef_greenColor;
              }

              v224 = [v222 *v223];
              [v218 setTintColor:v224];

              [v218 setContentMode:1];
              v346 = v218;
              [v202 addSubview:v218];
              v62 = [objc_allocWithZone(UILabel) init];
              v225 = v220;
              [v220 frame];
              CGRectGetWidth(v360);
              DebugData.init(name:)(v226);
              [v62 setFrame:?];
              v352._countAndFlagsBits = 0;
              v352._object = 0xE000000000000000;
              _StringGuts.grow(_:)(17);

              v352._countAndFlagsBits = 0x656D686361747441;
              v352._object = 0xEF203A444920746ELL;
              v227 = [v201 id];
              v75 = v201;
              if (v227)
              {
                v228 = v330;
                v229 = v227;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v89 = 0;
                v230 = v343;
              }

              else
              {
                v230 = v343;
                v228 = v330;
              }

              v338(v228, v89, 1, v230);
              v231 = v329;
              sub_100024EC0(v228, v329);
              if (v336(v231, 1, v230))
              {
                sub_100004F84(v231, &qword_100AD1420);
                v232 = 0;
                v233 = 0;
              }

              else
              {
                v234 = v321;
                (*v320)(v321, v231, v230);
                sub_100004F84(v231, &qword_100AD1420);
                v232 = UUID.uuidString.getter();
                v233 = v235;
                (*v319)(v234, v230);
              }

              v85 = v225;
              v350 = v232;
              v351 = v233;
              v236._countAndFlagsBits = String.init<A>(describing:)();
              String.append(_:)(v236);

              v237 = String._bridgeToObjectiveC()();

              [v62 setText:v237];

              [v62 setAdjustsFontSizeToFitWidth:1];
              [v62 setMinimumScaleFactor:0.2];
              v238 = [v348 isRemovedFromCloud];
              v239 = objc_opt_self();
              v240 = &selRef_lightGrayColor;
              if (!v238)
              {
                v240 = &selRef_darkGrayColor;
              }

              v241 = [v239 *v240];
              [v62 setTextColor:v241];

              [v202 addSubview:v62];
              v87 = [objc_allocWithZone(UILabel) init];
              [v225 frame];
              CGRectGetWidth(v361);
              DebugData.init(name:)(v242);
              [v87 setFrame:?];
              v352._countAndFlagsBits = 0;
              v352._object = 0xE000000000000000;
              _StringGuts.grow(_:)(19);

              v352._countAndFlagsBits = 0xD000000000000011;
              v352._object = v328;
              v243 = [v75 filePath];
              if (v243)
              {
                v244 = v243;
                v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v247 = v246;

                v85 = v225;
              }

              else
              {
                v245 = 0;
                v247 = 0;
              }

              v350 = v245;
              v351 = v247;
              v248._countAndFlagsBits = String.init<A>(describing:)();
              String.append(_:)(v248);

              v249 = String._bridgeToObjectiveC()();

              [v87 setText:v249];

              [v87 setLineBreakMode:3];
              [v87 setTextAlignment:0];
              [v87 setAdjustsFontSizeToFitWidth:1];
              [v87 setMinimumScaleFactor:0.4];
              v250 = [v348 isRemovedFromCloud];
              v251 = objc_opt_self();
              v252 = &selRef_lightGrayColor;
              if (!v250)
              {
                v252 = &selRef_darkGrayColor;
              }

              v253 = [v251 *v252];
              [v87 setTextColor:v253];

              [v202 addSubview:v87];
              v76 = [objc_allocWithZone(UIImageView) init];
              [v85 frame];
              CGRectGetWidth(v362);
              DebugData.init(name:)(v254);
              [v76 setFrame:?];
              [v202 addSubview:v76];
              [v76 setContentMode:1];
              v255 = [v75 name];
              if (v255)
              {
                v256 = v255;
                v257 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v259 = v258;

                v260 = sub_100825820(v257, v259);
                v344 = v75;
                if (v260 && (v261 = v260, v262 = [v260 filePath], v261, v262))
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  v263 = v310;
                  static FileStoreConfiguration.shared.getter();
                  v264 = v326;
                  FileStoreConfiguration.getAttachmentURL(from:)();
                  v225 = v345;

                  (*v309)(v263, v311);
                  v265 = 0;
                }

                else
                {
                  v265 = 1;
                  v264 = v326;
                }

                v199 = v349;
                v89 = v325;
                (*isa)(v264, v265, 1, v325);

                v266 = (*v323)(v264, 1, v89);
                v267 = v264;
                if (v266 == 1)
                {
                  sub_100004F84(v264, &unk_100AD6DD0);
                  goto LABEL_100;
                }

                v268 = v317;
                (*v313)(v317, v267, v89);
                URL.path.getter();
                v269 = objc_allocWithZone(UIImage);
                v270 = String._bridgeToObjectiveC()();

                v271 = [v269 initWithContentsOfFile:v270];

                if (v271)
                {
                  [v76 setImage:v271];

                  goto LABEL_103;
                }

                v272 = v327;
                v273 = Data.init(contentsOf:options:)();
                v225 = v345;
                if (v272)
                {
                  if (qword_100ACFDB8 != -1)
                  {
                    swift_once();
                  }

                  v275 = type metadata accessor for Logger();
                  sub_10000617C(v275, qword_100AE47A0);
                  v276 = v225;
                  swift_errorRetain();
                  v277 = Logger.logObject.getter();
                  v278 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v277, v278))
                  {
                    v279 = swift_slowAlloc();
                    v280 = swift_slowAlloc();
                    v327 = v277;
                    v281 = v280;
                    *v279 = v295;
                    *(v279 + 4) = v276;
                    *v280 = v345;
                    *(v279 + 12) = 2112;
                    v282 = v276;
                    swift_errorRetain();
                    v283 = _swift_stdlib_bridgeErrorToNSError();
                    *(v279 + 14) = v283;
                    v281[1] = v283;
                    v284 = v327;
                    _os_log_impl(&_mh_execute_header, v327, v278, "%@ (getImage) attached file does not contain valid image: %@", v279, 0x16u);
                    sub_1000F24EC(&unk_100AD4BB0);
                    swift_arrayDestroy();

                    v285 = v345;

                    v85 = v285;
                    (*v312)(v317, v89);
                    v327 = 0;
                    goto LABEL_105;
                  }

                  (*v312)(v317, v89);
                  v327 = 0;
                  v199 = v349;
LABEL_100:
                  v75 = v344;
                  v85 = v225;
                }

                else
                {
                  v286 = v273;
                  v287 = v274;
                  v327 = 0;
                  v288 = objc_allocWithZone(UIImage);
                  sub_100049ED8(v286, v287);
                  v289 = Data._bridgeToObjectiveC()().super.isa;
                  v290 = [v288 initWithData:v289];

                  sub_1000340DC(v286, v287);
                  if (v290)
                  {
                    [v76 setImage:v290];

                    sub_1000340DC(v286, v287);
LABEL_103:
                    (*v312)(v268, v89);
                  }

                  else
                  {
                    (*v312)(v268, v89);
                    sub_1000340DC(v286, v287);
                  }

                  v85 = v345;
LABEL_105:
                  v199 = v349;
                  v75 = v344;
                }
              }

              else
              {
                v199 = v349;
              }

              v198 = v199 + 1;
              [v334 addArrangedSubview:v202];

              v196 = v333;
              if (v332 == v198)
              {
                break;
              }

              continue;
            }
          }
        }

        else
        {
          v197 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v197)
          {
            goto LABEL_71;
          }
        }

        p_object = &v347;
      }

      else
      {

        p_object = &v352._object;
      }
    }

    else
    {
    }

    v132 = v318;
    v133 = v327;
  }

  while (v318 != v307);
}

char *sub_1004623B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC7Journal9EntryCell_lblDate;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Journal9EntryCell_lblText;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Journal9EntryCell_assetStack;
  *&v3[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC7Journal9EntryCell_lblCount;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v130.receiver = v3;
  v130.super_class = type metadata accessor for EntryCell();
  v12 = objc_msgSendSuper2(&v130, "initWithStyle:reuseIdentifier:", a1, v11);

  v13 = v12;
  v14 = [v13 contentView];
  v15 = OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded;
  [v14 addSubview:*&v13[OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded]];

  v129 = v15;
  v16 = *&v13[v15];
  v17 = [v16 superview];
  if (v17)
  {
    v18 = v17;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v16 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:0.0];
    if (v21)
    {
      [v21 setActive:1];
    }
  }

  else
  {
    v21 = 0;
    v18 = v16;
  }

  v22 = *&v13[v129];
  v23 = [v22 superview];
  if (v23)
  {
    v24 = v23;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v22 leadingAnchor];
    v26 = [v24 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:10.0];
    if (v27)
    {
      [v27 setActive:1];
    }
  }

  else
  {
    v27 = 0;
    v24 = v22;
  }

  v28 = *&v13[v129];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v28 widthAnchor];
  v30 = [v29 constraintEqualToConstant:40.0];

  [v30 setActive:1];
  v31 = *&v13[v129];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v31 heightAnchor];
  v33 = [v32 constraintEqualToConstant:40.0];

  [v33 setActive:1];
  v34 = [v13 contentView];
  v35 = OBJC_IVAR____TtC7Journal9EntryCell_lblDate;
  [v34 addSubview:*&v13[OBJC_IVAR____TtC7Journal9EntryCell_lblDate]];

  v36 = *&v13[v35];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v36 topAnchor];
    v40 = [v38 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:0.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  else
  {
    v41 = 0;
    v38 = v36;
  }

  v42 = *&v13[v129];
  v43 = *&v13[v35];
  v44 = v42;
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [v43 leadingAnchor];
  v46 = [v44 leadingAnchor];
  v47 = &selRef_setSuggestedName_;
  v48 = [v45 constraintEqualToAnchor:v46];

  [v48 setConstant:0.0];
  [v48 setActive:1];

  v49 = *&v13[v35];
  v50 = [v49 superview];
  if (v50)
  {
    v51 = v50;
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [v49 trailingAnchor];
    v53 = [v51 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    [v54 setConstant:10.0];
    if (v54)
    {
      [v54 setActive:1];
    }

    v55 = &selRef_setSuggestedName_;

    v47 = &selRef_setSuggestedName_;
  }

  else
  {
    v54 = 0;
    v51 = v49;
    v55 = &selRef_setSuggestedName_;
  }

  v56 = *&v13[v35];
  [v56 v47[278]];
  v57 = [v56 heightAnchor];
  v58 = [v57 constraintEqualToConstant:20.0];

  [v58 setActive:1];
  [*&v13[v35] setNumberOfLines:0];
  v59 = [v13 contentView];
  v60 = OBJC_IVAR____TtC7Journal9EntryCell_lblCount;
  [v59 addSubview:*&v13[OBJC_IVAR____TtC7Journal9EntryCell_lblCount]];

  v61 = *&v13[v129];
  v62 = *&v13[v60];
  v63 = v61;
  [v62 v47[278]];
  v64 = [v62 v55[292]];
  v65 = [v63 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  [v66 setConstant:0.0];
  [v66 setActive:1];

  v67 = *&v13[v60];
  v68 = [v67 superview];
  if (v68)
  {
    v69 = v68;
    [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [v67 leadingAnchor];
    v71 = [v69 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    [v72 setConstant:10.0];
    if (v72)
    {
      [v72 setActive:1];
    }
  }

  else
  {
    v72 = 0;
    v69 = v67;
  }

  v73 = *&v13[v60];
  v74 = [v73 superview];
  if (v74)
  {
    v75 = v74;
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    v76 = [v73 trailingAnchor];
    v77 = [v75 trailingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    [v78 setConstant:-10.0];
    if (v78)
    {
      [v78 setActive:1];
    }
  }

  else
  {
    v78 = 0;
    v75 = v73;
  }

  v79 = *&v13[v60];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = [v79 heightAnchor];
  v81 = [v80 constraintEqualToConstant:50.0];

  [v81 setActive:1];
  [*&v13[v60] setNumberOfLines:0];
  v82 = [v13 contentView];
  v83 = OBJC_IVAR____TtC7Journal9EntryCell_lblText;
  [v82 addSubview:*&v13[OBJC_IVAR____TtC7Journal9EntryCell_lblText]];

  v84 = *&v13[v60];
  v85 = *&v13[v83];
  v86 = v84;
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  v87 = [v85 topAnchor];
  v88 = [v86 bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  [v89 setConstant:0.0];
  [v89 setActive:1];

  v90 = *&v13[v83];
  v91 = [v90 superview];
  if (v91)
  {
    v92 = v91;
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v90 leadingAnchor];
    v94 = [v92 leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    [v95 setConstant:10.0];
    if (v95)
    {
      [v95 setActive:1];
    }
  }

  else
  {
    v95 = 0;
    v92 = v90;
  }

  v96 = *&v13[v83];
  v97 = [v96 superview];
  if (v97)
  {
    v98 = v97;
    [v96 setTranslatesAutoresizingMaskIntoConstraints:0];
    v99 = [v96 trailingAnchor];
    v100 = [v98 trailingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];

    [v101 setConstant:-10.0];
    if (v101)
    {
      [v101 setActive:1];
    }
  }

  else
  {
    v101 = 0;
    v98 = v96;
  }

  v102 = *&v13[v83];
  [v102 setTranslatesAutoresizingMaskIntoConstraints:0];
  v103 = [v102 heightAnchor];
  v104 = [v103 constraintEqualToConstant:100.0];

  [v104 setActive:1];
  [*&v13[v83] setNumberOfLines:0];
  v105 = [v13 contentView];

  v106 = OBJC_IVAR____TtC7Journal9EntryCell_assetStack;
  [v105 addSubview:*&v13[OBJC_IVAR____TtC7Journal9EntryCell_assetStack]];

  v107 = *&v13[v83];
  v108 = *&v13[v106];
  v109 = v107;
  [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
  v110 = [v108 topAnchor];
  v111 = [v109 bottomAnchor];
  v112 = &selRef_setSuggestedName_;
  v113 = [v110 constraintEqualToAnchor:v111];

  [v113 setConstant:0.0];
  [v113 setActive:1];

  v114 = *&v13[v106];
  v115 = [v114 superview];
  if (v115)
  {
    v116 = v115;
    [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
    v117 = [v114 leadingAnchor];
    v118 = [v116 leadingAnchor];
    v119 = [v117 constraintEqualToAnchor:v118];

    [v119 setConstant:10.0];
    if (v119)
    {
      [v119 setActive:1];
    }

    v112 = &selRef_setSuggestedName_;
  }

  else
  {
    v119 = 0;
    v116 = v114;
  }

  v120 = *&v13[v106];
  v121 = [v120 superview];
  if (v121)
  {
    v122 = v121;
    [v120 v112[278]];
    v123 = [v120 trailingAnchor];
    v124 = [v122 trailingAnchor];
    v125 = [v123 constraintEqualToAnchor:v124];

    [v125 setConstant:10.0];
    if (v125)
    {
      [v125 setActive:1];
    }
  }

  else
  {
    v125 = 0;
    v122 = v120;
  }

  v126 = *&v13[v106];
  v127 = sub_100028DA0(0, 1, 10.0);

  [*&v13[v106] setAxis:1];
  [*&v13[v106] setAlignment:0];
  [*&v13[v106] setDistribution:1];
  [*&v13[v106] setSpacing:5.0];

  return v13;
}

id sub_1004634F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100463A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004668C8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100463AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004668C8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100463B4C()
{
  sub_1004668C8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100463B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10046691C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100463BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10046691C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100463C58()
{
  sub_10046691C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_100463C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  a5(a4);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v5];

  return v6;
}

uint64_t sub_100463D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100466970();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100463D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100466970();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100463DCC()
{
  sub_100466970();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100463E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  aBlock[4] = a3;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = v18;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006A3C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v19);
}

uint64_t sub_1004640FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a1;
  sub_100463E1C(v14, a4, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100464238(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 count];
  v8 = v7;
  if (v7)
  {
    if (v7 < 1)
    {
      v9 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_1000F24EC(&unk_100AE88B0);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 1;
      }

      *(v9 + 2) = v8;
      *(v9 + 3) = 2 * (v11 >> 5);
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v12 = *(v9 + 3);

  result = NSSet.makeIterator()();
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = v12 >> 1;
  v15 = v9 + 4;
  if (v8)
  {
    v14 -= v8;
    sub_100006A3C(&qword_100AD87A0, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      result = dispatch thunk of IteratorProtocol.next()();
      if (!v35)
      {
        goto LABEL_38;
      }

      sub_10002432C(&v34, v15);
      v15 += 2;
    }

    while (--v8);
  }

  v31 = v3;
  sub_100006A3C(&qword_100AD87A0, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v33)
  {
    while (1)
    {
      result = sub_10002432C(&v32, &v34);
      if (!v14)
      {
        v16 = *(v9 + 3);
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        sub_1000F24EC(&unk_100AE88B0);
        v19 = swift_allocObject();
        v20 = j__malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 1;
        }

        v22 = v21 >> 5;
        *(v19 + 2) = v18;
        *(v19 + 3) = 2 * (v21 >> 5);
        v23 = (v19 + 4);
        v24 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v25 = v9 + 4;
          if (v19 != v9 || v23 >= v25 + 32 * v24)
          {
            memmove(v19 + 4, v25, 32 * v24);
          }

          v9[2] = 0.0;
        }

        v15 = (v23 + 32 * v24);
        v14 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v9 = v19;
      }

      v26 = __OFSUB__(v14--, 1);
      if (v26)
      {
        break;
      }

      sub_10002432C(&v34, v15);
      v15 += 2;
      dispatch thunk of IteratorProtocol.next()();
      if (!v33)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v31 + 8))(v6, v2);
  result = sub_100004F84(&v32, &qword_100AD13D0);
  v27 = *(v9 + 3);
  if (v27 < 2)
  {
    return v9;
  }

  v28 = v27 >> 1;
  v26 = __OFSUB__(v28, v14);
  v29 = v28 - v14;
  if (!v26)
  {
    *(v9 + 2) = v29;
    return v9;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1004645CC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v1 && (v2 = v1, isa = IndexPath._bridgeToObjectiveC()().super.isa, v4 = [v2 objectAtIndexPath:isa], v2, isa, v4))
  {
    v5 = v4;
    v6 = [v5 managedObjectContext];
    if (!v6)
    {
      v6 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v7 = sub_100035ADC(v5, 0, 0, v6);
    v8 = [objc_allocWithZone(type metadata accessor for EntryCell()) initWithStyle:0 reuseIdentifier:0];
    sub_10045F5D0(v7);

    return v8;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100464758()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 sections];
  if (v2)
  {
    sub_1000F24EC(&qword_100ADE7A0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v2;
}

uint64_t sub_100464814(unint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v3)
  {
    v4 = [v3 sections];
    if (v4)
    {
      v5 = v4;
      sub_1000F24EC(&qword_100ADE7A0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v7 = *(v6 + 8 * a1 + 32);
        swift_unknownObjectRetain();
LABEL_7:

        v8 = [v7 name];
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        return v9;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100464980(unint64_t a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC7Journal14AdminEntriesVC_model) + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v3)
  {
    v4 = [v3 sections];
    if (v4)
    {
      v5 = v4;
      sub_1000F24EC(&qword_100ADE7A0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v7 = *(v6 + 8 * a1 + 32);
        swift_unknownObjectRetain();
LABEL_7:

        v8 = [v7 numberOfObjects];
        swift_unknownObjectRelease();
        return v8;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100464AD0()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC7Journal14AdminEntriesVC_model] + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v2 && (v3 = v2, v4 = IndexPath._bridgeToObjectiveC()().super.isa, v5 = [v3 objectAtIndexPath:v4], v3, v4, v5))
  {
    v6 = [v5 isRemovedFromCloud];
    v58 = v6;
    v7 = [v5 isRemovedFromCloud];
    sub_1000065A8(0, &qword_100AD4420);
    v8 = String._bridgeToObjectiveC()();
    v56 = objc_opt_self();
    v9 = [v56 systemImageNamed:v8];

    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v5;
    v11 = v1;
    v12 = v5;
    v53 = v10;
    v51 = v7;
    v59 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000F24EC(&unk_100AD4780);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100941D60;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v56 systemImageNamed:{v14, 0, v6, v51, sub_10046630C, v53}];

    if (v6)
    {
      children._rawValue = 9;
    }

    else
    {
      children._rawValue = 8;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v12;
    *(v17 + 24) = v11;
    v18 = v11;
    v19 = v12;
    *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v56 systemImageNamed:{v20, 0, children._rawValue, 0, sub_100466314, v17}];

    sub_1000065A8(0, &unk_100AD4D00);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v18;
    v23 = v18;
    v24 = v19;
    *(preferredElementSize + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v25._countAndFlagsBits = 0x6E6F697461657243;
    v25._object = 0xED00006574614420;
    v61.value.super.isa = 0;
    v61.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v25, 0, v61, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100941D60;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v56 systemImageNamed:v27];

    v29 = swift_allocObject();
    *(v29 + 16) = v24;
    *(v29 + 24) = v23;
    v30 = v23;
    v31 = v24;
    v54 = v29;
    *(v26 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v56 systemImageNamed:{v32, 0, children._rawValue, 0, sub_10046637C, v54}];

    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v30;
    v35 = v30;
    v36 = v31;
    *(v26 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v37._countAndFlagsBits = 0x6144207972746E45;
    v37._object = 0xEA00000000006574;
    v62.value.super.isa = 0;
    v62.is_nil = 0;
    v38 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v62, 0, 0xFFFFFFFFFFFFFFFFLL, v26, children).super.super.isa;
    v39 = String._bridgeToObjectiveC()();
    v40 = [v56 systemImageNamed:v39];

    v41 = [v36 flagged];
    v42 = swift_allocObject();
    *(v42 + 16) = v36;
    *(v42 + 24) = v35;
    v43 = v35;
    v44 = v36;
    v55 = v42;
    v52 = v41;
    v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v46 = swift_allocObject();
    v46[2] = v59;
    v46[3] = isa;
    v46[4] = v38;
    v46[5] = v45;
    v47 = objc_opt_self();
    aBlock[4] = sub_1004663EC;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002D1F68;
    aBlock[3] = &unk_100A6DA08;
    v48 = _Block_copy(aBlock);

    v49 = [v47 configurationWithIdentifier:0 previewProvider:0 actionProvider:{v48, 0, v58, v52, sub_1004663E4, v55}];

    _Block_release(v48);

    return v49;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1004652C8()
{
  v1 = OBJC_IVAR____TtC7Journal9EntryCell_imageViewUploaded;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC7Journal9EntryCell_lblDate;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal9EntryCell_lblText;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal9EntryCell_assetStack;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC7Journal9EntryCell_lblCount;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004653C8()
{
  v1 = v0;
  v2 = *(*&v0[OBJC_IVAR____TtC7Journal14AdminEntriesVC_model] + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (v2 && (v3 = v2, isa = IndexPath._bridgeToObjectiveC()().super.isa, v5 = [v3 objectAtIndexPath:isa], v3, isa, v5))
  {
    v13 = v5;
    v6 = [v13 managedObjectContext];
    if (!v6)
    {
      v6 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    sub_100035ADC(v13, 1, 0, v6);
    v7 = objc_allocWithZone(type metadata accessor for AdminComposerVC());

    sub_1007873C8(v8);
    v10 = v9;
    v11 = [v1 navigationController];
    if (v11)
    {
      v12 = v11;
      [v11 pushViewController:v10 animated:1];
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100465594()
{
  sub_1000F24EC(&unk_100AE88B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD00000000000003ELL;
  *(v1 + 40) = 0x80000001008F4A10;
  print(_:separator:terminator:)();

  v2 = [v0 tableView];
  if (v2)
  {
    v3 = v2;
    [v2 beginUpdates];
  }

  else
  {
    __break(1u);
  }
}

void sub_100465670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&unk_100AE88B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100940080;
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(61);
  v9._object = 0x80000001008F49D0;
  v9._countAndFlagsBits = 0xD00000000000003BLL;
  String.append(_:)(v9);
  v19[1] = a2;
  type metadata accessor for NSFetchedResultsChangeType(0);
  _print_unlocked<A, B>(_:_:)();
  v10 = v20;
  v11 = v21;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = v10;
  *(v8 + 40) = v11;
  print(_:separator:terminator:)();

  if (a2 == 2)
  {
    v15 = [v2 tableView];
    if (v15)
    {
      v13 = v15;
      v14 = &selRef_deleteSections_withRowAnimation_;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return;
  }

  if (a2 != 1)
  {
    return;
  }

  v12 = [v2 tableView];
  if (!v12)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v14 = &selRef_insertSections_withRowAnimation_;
LABEL_7:
  IndexSet.init(integer:)();
  IndexSet._bridgeToObjectiveC()(v16);
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  [v13 *v14];
}

void sub_1004658B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a4;
  v80 = a2;
  v6 = type metadata accessor for IndexPath();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v74 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F24EC(&unk_100AE4850);
  __chkstk_darwin(v8);
  v10 = &v72[-v9];
  v11 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v11 - 8);
  v78 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v77 = &v72[-v14];
  __chkstk_darwin(v15);
  v75 = &v72[-v16];
  __chkstk_darwin(v17);
  v76 = &v72[-v18];
  __chkstk_darwin(v19);
  v21 = &v72[-v20];
  __chkstk_darwin(v22);
  v24 = &v72[-v23];
  __chkstk_darwin(v25);
  v27 = &v72[-v26];
  sub_1000F24EC(&unk_100AE88B0);
  v28 = swift_allocObject();
  v81 = xmmword_100940080;
  *(v28 + 16) = xmmword_100940080;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(64);
  v88 = v86;
  v89 = v87;
  v29._object = 0x80000001008F4990;
  v29._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v29);
  sub_10000BA20(a1, &v86);
  sub_1000065A8(0, &unk_100AE4860);
  if (swift_dynamicCast())
  {
    v30 = v85;
    v31 = sub_10029FB00();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0x203A6570797420;
  v35._object = 0xE700000000000000;
  String.append(_:)(v35);
  v86 = a3;
  type metadata accessor for NSFetchedResultsChangeType(0);
  _print_unlocked<A, B>(_:_:)();
  v36 = v88;
  v37 = v89;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 32) = v36;
  *(v28 + 40) = v37;
  print(_:separator:terminator:)();

  if (a3 > 2)
  {
    v46 = v84;
    if (a3 != 3)
    {
      v39 = a3 == 4;
      v47 = v83;
      if (!v39)
      {
        return;
      }

      v48 = [v82 tableView];
      if (!v48)
      {
        goto LABEL_38;
      }

      isa = v48;
      sub_1000F24EC(&qword_100AD64A0);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v81;
      sub_1000082B4(v80, v21, &unk_100ADFB90);
      if ((*(v47 + 48))(v21, 1, v46) == 1)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      (*(v47 + 32))(v50 + v49, v21, v46);
LABEL_34:
      v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [(objc_class *)isa reloadRowsAtIndexPaths:v45.super.isa withRowAnimation:0];
      goto LABEL_35;
    }

    v55 = *(v8 + 48);
    v56 = v80;
    sub_1000082B4(v80, v10, &unk_100ADFB90);
    sub_1000082B4(v79, &v10[v55], &unk_100ADFB90);
    v57 = v83;
    v58 = *(v83 + 48);
    if (v58(v10, 1, v46) == 1)
    {
      if (v58(&v10[v55], 1, v46) == 1)
      {
        sub_100004F84(v10, &unk_100ADFB90);
LABEL_31:
        v68 = [v82 tableView];
        if (!v68)
        {
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        isa = v68;
        sub_1000F24EC(&qword_100AD64A0);
        v69 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v70 = swift_allocObject();
        *(v70 + 16) = v81;
        v71 = v75;
        sub_1000082B4(v56, v75, &unk_100ADFB90);
        if (v58(v71, 1, v46) == 1)
        {
LABEL_47:
          __break(1u);
          return;
        }

        (*(v57 + 32))(v70 + v69, v71, v46);
        goto LABEL_34;
      }
    }

    else
    {
      v59 = v76;
      sub_1000082B4(v10, v76, &unk_100ADFB90);
      if (v58(&v10[v55], 1, v46) != 1)
      {
        v66 = v74;
        (*(v57 + 32))(v74, &v10[v55], v46);
        sub_100006A3C(&unk_100AE0020, &type metadata accessor for IndexPath);
        v73 = dispatch thunk of static Equatable.== infix(_:_:)();
        v67 = *(v57 + 8);
        v67(v66, v46);
        v67(v59, v46);
        sub_100004F84(v10, &unk_100ADFB90);
        if (v73)
        {
          goto LABEL_31;
        }

LABEL_26:
        v60 = [v82 tableView];
        if (v60)
        {
          v61 = v60;
          v62 = v77;
          sub_1000082B4(v56, v77, &unk_100ADFB90);
          v63 = v58(v62, 1, v46);
          v64 = v78;
          if (v63 != 1)
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v65 = *(v57 + 8);
            v65(v62, v46);
            sub_1000082B4(v79, v64, &unk_100ADFB90);
            if (v58(v64, 1, v46) != 1)
            {
              v45.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v65(v64, v46);
              [v61 moveRowAtIndexPath:isa toIndexPath:v45.super.isa];

              goto LABEL_35;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      (*(v57 + 8))(v59, v46);
    }

    sub_100004F84(v10, &unk_100AE4850);
    goto LABEL_26;
  }

  v38 = v84;
  if (a3 == 1)
  {
    v51 = [v82 tableView];
    if (v51)
    {
      isa = v51;
      sub_1000F24EC(&qword_100AD64A0);
      v52 = v83;
      v53 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = v81;
      sub_1000082B4(v79, v27, &unk_100ADFB90);
      if ((*(v52 + 48))(v27, 1, v38) != 1)
      {
        (*(v52 + 32))(v54 + v53, v27, v38);
        v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [(objc_class *)isa insertRowsAtIndexPaths:v45.super.isa withRowAnimation:0];
        goto LABEL_35;
      }

      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v39 = a3 == 2;
  v40 = v83;
  if (!v39)
  {
    return;
  }

  v41 = [v82 tableView];
  if (!v41)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  isa = v41;
  sub_1000F24EC(&qword_100AD64A0);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v81;
  sub_1000082B4(v80, v24, &unk_100ADFB90);
  if ((*(v40 + 48))(v24, 1, v38) == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  (*(v40 + 32))(v44 + v43, v24, v38);
  v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [(objc_class *)isa deleteRowsAtIndexPaths:v45.super.isa withRowAnimation:0];
LABEL_35:
}

uint64_t sub_1004663F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10045EE34(a1, v4, v5, v7, v6);
}

void sub_1004665C4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = &Strong[OBJC_IVAR____TtC7Journal14AdminEntriesVC_settings];
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 2) = *(a1 + 32);
  v3[48] = *(a1 + 48);
}

uint64_t sub_100466620(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10045D6EC(a1, v4, v5, v6);
}

uint64_t sub_1004666DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10045D01C(a1, v4, v5, v6);
}

uint64_t sub_1004667D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10045D6EC(a1, v4, v5, v6);
}

unint64_t sub_1004668C8()
{
  result = qword_100AE48B0;
  if (!qword_100AE48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE48B0);
  }

  return result;
}

unint64_t sub_10046691C()
{
  result = qword_100AE48B8;
  if (!qword_100AE48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE48B8);
  }

  return result;
}

unint64_t sub_100466970()
{
  result = qword_100AE48C0;
  if (!qword_100AE48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE48C0);
  }

  return result;
}

uint64_t sub_100466A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&qword_100AD8740);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for MotionActivityAssetMetadata();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[14] = v8;
  v4[15] = v10;

  return _swift_task_switch(sub_100466BDC, v8, v10);
}

uint64_t sub_100466BDC()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[16] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = swift_allocObject();
    v0[17] = v5;
    swift_unknownObjectWeakInit();
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v1;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_100466F80;
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v9, sub_1004683DC, v5, v8);
  }

  (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_100004F84(v12, &qword_100AD8740);

    v13 = v0[1];

    return v13(0, 0xE000000000000000);
  }

  (*(v11 + 32))(v0[13], v12, v10);
  v14 = MotionActivityAssetMetadata.localizedActivityName.getter();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      goto LABEL_15;
    }
  }

  v16 = MotionActivityAssetMetadata.activityType.getter();
  v17 = v19;
LABEL_15:
  v20 = sub_10020DB44();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  v24 = sub_10031BCE4(v16, v17, 0xD000000000000020, 0x80000001008F4F50, 0, 0);
  v26 = v25;

  v0[19] = v26;
  sub_10031BCE4(v22, v23, 0xD000000000000023, 0x80000001008F4F80, 0, 0);
  v28 = v27;

  v0[20] = v28;
  v29 = swift_task_alloc();
  v0[21] = v29;
  *v29 = v0;
  v29[1] = sub_100467344;
  v30 = v0[4];
  v32 = v0[2];
  v31 = v0[3];

  return sub_100847498(v32, v31, v30, 0, 0, 0, 0, v24);
}

uint64_t sub_100466F80()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_1004670D4, v5, v6);
  }
}

uint64_t sub_1004670D4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v3, &qword_100AD8740);

    v4 = v0[1];

    return v4(0, 0xE000000000000000);
  }

  (*(v2 + 32))(v0[13], v3, v1);
  v6 = MotionActivityAssetMetadata.localizedActivityName.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v10 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      goto LABEL_11;
    }
  }

  v8 = MotionActivityAssetMetadata.activityType.getter();
  v9 = v11;
LABEL_11:
  v12 = sub_10020DB44();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = sub_10031BCE4(v8, v9, 0xD000000000000020, 0x80000001008F4F50, 0, 0);
  v18 = v17;

  v0[19] = v18;
  sub_10031BCE4(v14, v15, 0xD000000000000023, 0x80000001008F4F80, 0, 0);
  v20 = v19;

  v0[20] = v20;
  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_100467344;
  v22 = v0[4];
  v24 = v0[2];
  v23 = v0[3];

  return sub_100847498(v24, v23, v22, 0, 0, 0, 0, v16);
}

uint64_t sub_100467344(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_100467560;
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;
    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1004674B8;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1004674B8()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[23];
  v2 = v0[24];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_100467560()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004675FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_100466A44(a1, a2, a3);
}

double sub_1004676AC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for MotionActivityAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {

    sub_10025DF64(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v11 = MotionActivityAssetMetadata.activityType.getter();
      v22 = v12;
      v23 = v11;
      v13 = MotionActivityAssetMetadata.localizedActivityName.getter();
      v15 = v14;
      v16 = MotionActivityAssetMetadata.steps.getter();
      v18 = v17;
      *(a1 + 24) = _s6ResultVMa_1();
      *(a1 + 32) = sub_10046863C(&qword_100AE48D8, _s6ResultVMa_1);
      *(a1 + 40) = sub_10046863C(&qword_100AE48E0, _s6ResultVMa_1);
      v19 = sub_10001A770(a1);
      MotionActivityAssetMetadata.startTime.getter();
      MotionActivityAssetMetadata.endTime.getter();
      (*(v7 + 8))(v10, v6);
      v21 = v22;
      *v19 = v23;
      v19[1] = v21;
      v19[2] = v13;
      v19[3] = v15;
      v19[4] = v16;
      v19[5] = v18;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD8740);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_10046795C(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AE49A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10000CA14(a1, a1[3]);
  sub_100468528();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    _s6ResultVMa_1();
    v10 = 3;
    type metadata accessor for Date();
    sub_10046863C(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100467BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000F24EC(&qword_100AE4988);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = _s6ResultVMa_1();
  __chkstk_darwin(v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000CA14(a1, a1[3]);
  sub_100468528();
  v14 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000BA7C(a1);
  }

  v15 = v7;
  v16 = v31;
  v17 = v32;
  v33 = v11;
  v38 = 0;
  *v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[1] = v18;
  v28 = v18;
  v37 = 1;
  v13[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[3] = v19;
  v36 = 2;
  v13[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13[5] = v20;
  v27 = type metadata accessor for Date();
  v35 = 3;
  v21 = sub_10046863C(&qword_100AE4998, &type metadata accessor for Date);
  v25 = v15;
  v26 = v21;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1001679C0(v25, v13 + *(v33 + 28));
  v34 = 4;
  v22 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v16 + 8))(v10, v17);
  sub_1001679C0(v22, v13 + *(v33 + 32));
  sub_10046857C(v13, v29);
  sub_10000BA7C(a1);
  return sub_1004685E0(v13);
}

uint64_t sub_100468044(uint64_t a1)
{
  result = sub_10046863C(&qword_100AE48D0, type metadata accessor for MotionActivityAsset);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10046809C()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x7370657473;
  v4 = 0x6D69547472617473;
  if (v1 != 3)
  {
    v4 = 0x656D6954646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100468144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10046879C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10046816C(uint64_t a1)
{
  v2 = sub_100468528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004681A8(uint64_t a1)
{
  v2 = sub_100468528();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100468314(void (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a1();
  }

  else
  {
    v8 = a2();
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t _s6ResultVMa_1()
{
  result = qword_100AE4940;
  if (!qword_100AE4940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100468494()
{
  sub_10034652C();
  if (v0 <= 0x3F)
  {
    sub_100008F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100468528()
{
  result = qword_100AE4990;
  if (!qword_100AE4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4990);
  }

  return result;
}

uint64_t sub_10046857C(uint64_t a1, uint64_t a2)
{
  v4 = _s6ResultVMa_1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004685E0(uint64_t a1)
{
  v2 = _s6ResultVMa_1();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10046863C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100468698()
{
  result = qword_100AE49B0;
  if (!qword_100AE49B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE49B0);
  }

  return result;
}

unint64_t sub_1004686F0()
{
  result = qword_100AE49B8;
  if (!qword_100AE49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE49B8);
  }

  return result;
}

unint64_t sub_100468748()
{
  result = qword_100AE49C0;
  if (!qword_100AE49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE49C0);
  }

  return result;
}

uint64_t sub_10046879C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001008F4FB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_100468B08(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100468B90(uint64_t a1, void *a2)
{
  type metadata accessor for LocationPinAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();
    v6 = [a2 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier forAnnotation:v5];
    type metadata accessor for EntryMapMarkerAnnotationView();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      *(v7 + OBJC_IVAR____TtC7Journal28EntryMapMarkerAnnotationView_allowsClustering) = *(v2 + OBJC_IVAR____TtC7Journal19LocationPinRenderer_allowsClustering);
      v8 = v7;
      sub_100726290();
      [v8 setAnnotation:v5];
      v9 = v6;
      [v8 setCanShowCallout:1];

      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

id sub_100468D24(void *a1, double a2, double a3)
{
  if ([a1 firstObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28[0] = v26;
  v28[1] = v27;
  if (*(&v27 + 1))
  {
    type metadata accessor for DataAggregator.EntryPlace(0);
    if (swift_dynamicCast())
    {
      v7 = v24;
      v9 = *&v24[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName];
      v8 = *&v24[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName + 8];
      v10 = *&v24[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
      v11 = v10;

      goto LABEL_9;
    }
  }

  else
  {
    sub_1000261D4(v28);
  }

  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
LABEL_9:
  v12 = type metadata accessor for LocationPinAnnotation();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC7Journal21LocationPinAnnotation_placeName];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR____TtC7Journal21LocationPinAnnotation_styleAttributes;
  *v14 = v9;
  *(v14 + 1) = v8;
  *&v13[v15] = v10;
  v25.receiver = v13;
  v25.super_class = v12;
  v16 = v10;
  v17 = objc_msgSendSuper2(&v25, "init");
  [v17 setCoordinate:{a2, a3}];
  [v17 setGeotaggables:a1];

  [v17 setCoordinate:{a2, a3}];
  [v17 setGeotaggables:a1];
  v18 = OBJC_IVAR____TtC7Journal19LocationPinRenderer_pipelineComponentProvider;
  v19 = *(v3 + OBJC_IVAR____TtC7Journal19LocationPinRenderer_pipelineComponentProvider);
  if (v19)
  {
    v20 = [v19 renderer];
  }

  else
  {
    v20 = 0;
  }

  [v17 setRenderer:v20];
  swift_unknownObjectRelease();
  v21 = *(v3 + v18);
  if (v21)
  {
    v22 = [v21 selectionHandler];
  }

  else
  {
    v22 = 0;
  }

  [v17 setSelectionHandler:v22];

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_100469034(uint64_t a1)
{
  result = sub_100471080(&qword_100AE4B78, &type metadata accessor for MergeableTitleAttributeScope);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10046908C(uint64_t a1)
{
  result = sub_100471080(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004690E4()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE4B60);
  v1 = sub_10000617C(v0, qword_100AE4B60);
  if (qword_100AD0278 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30208);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004691E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v71 = a1;
  v68 = a3;
  v69 = a4;
  v6 = type metadata accessor for JournalAppVersion();
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v64 - v10;
  v12 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v12 - 8);
  v14 = v64 - v13;
  v15 = sub_1000F24EC(&qword_100AE4C80);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v64 - v17;
  v19 = v72;
  v20 = sub_10046A608(a2);
  if (!v19)
  {
    v64[1] = a2;
    v65 = v11;
    v66 = v18;
    v67 = v15;
    v72 = v16;
    if (v20)
    {
      v64[0] = 0;
      v73 = v4;
      v21 = v4;
      swift_getAtKeyPath();

      v22 = v72;
      v23 = v67;
      if ((*(v72 + 48))(v14, 1, v67) == 1)
      {
        sub_100004F84(v14, &unk_100AEBE80);
        if (qword_100ACFDC0 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_10000617C(v24, qword_100AE4B60);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "Entry doesn't have mergeable text; no reason to forward merge", v27, 2u);
        }

LABEL_18:
        LOBYTE(a2) = 0;
        return a2 & 1;
      }

      (*(v22 + 32))(v66, v14, v23);
      v28 = v65;
      CRAttributedString<>.minimumAppVersion.getter();
      v29 = v70;
      (*(v70 + 104))(v8, enum case for JournalAppVersion.fall2025(_:), v6);
      v30 = static JournalAppVersion.< infix(_:_:)();
      v31 = *(v29 + 8);
      v31(v8, v6);
      v31(v28, v6);
      if ((v30 & 1) == 0)
      {
        if (qword_100ACFDC0 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000617C(v33, qword_100AE4B60);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.info.getter();
        v36 = os_log_type_enabled(v34, v35);
        v37 = v66;
        if (v36)
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "Mergeable text doesn't allow forward merging", v38, 2u);
        }

        (*(v72 + 8))(v37, v23);
        goto LABEL_18;
      }

      v32 = v64[0];
      CKRecord.encryptedValueForKey<A>(_:as:)();
      if (v32)
      {
        (*(v72 + 8))(v66, v23);
      }

      else
      {
        v40 = v74;
        v41 = v66;
        if (v74 >> 60 == 15 || (v42 = v73, v43 = Data.getAttributedString()(), sub_10003A5C8(v42, v40), !v43))
        {
          (*(v72 + 8))(v41, v67);
          LOBYTE(a2) = 0;
        }

        else
        {
          v44 = v43;
          v45 = CRAttributedString.attributedString.getter();
          v46 = [v45 string];

          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = v48;

          v50 = [v44 string];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          if (v47 == v51 && v49 == v53)
          {

            LOBYTE(a2) = 0;
          }

          else
          {
            v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

            LOBYTE(a2) = v54 ^ 1;
          }

          v55 = v71;

          if (qword_100ACFDC0 != -1)
          {
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_10000617C(v56, qword_100AE4B60);

          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v73 = v60;
            *v59 = 136315394;
            v75 = v55;

            sub_1000F24EC(&qword_100AE4C88);
            v61 = String.init<A>(describing:)();
            v63 = sub_100008458(v61, v62, &v73);

            *(v59 + 4) = v63;
            *(v59 + 12) = 1024;
            *(v59 + 14) = a2 & 1;
            _os_log_impl(&_mh_execute_header, v57, v58, "Should forward merge %s: %{BOOL}d", v59, 0x12u);
            sub_10000BA7C(v60);

            (*(v72 + 8))(v66, v67);
          }

          else
          {

            (*(v72 + 8))(v41, v67);
          }
        }
      }
    }

    else
    {
      LOBYTE(a2) = 0;
    }
  }

  return a2 & 1;
}

uint64_t sub_100469980(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v8 = sub_1000F24EC(&unk_100AE4C90);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_1000F24EC(&unk_100AD6240);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_10046A608(a2);
  if (!v5)
  {
    LOBYTE(a2) = v50;
    v49 = v12;
    if ((v15 & 1) == 0)
    {
      LOBYTE(a2) = 0;
      return a2 & 1;
    }

    v16 = a1;
    v48 = 0;
    v51 = v4;
    v17 = v4;
    swift_getAtKeyPath();

    v18 = v49;
    if ((*(v49 + 48))(v10, 1, v11) == 1)
    {
      sub_100004F84(v10, &unk_100AE4C90);
      if (qword_100ACFDC0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000617C(v19, qword_100AE4B60);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Entry doesn't have mergeable text; no reason to forward merge", v22, 2u);
      }

      goto LABEL_9;
    }

    (*(v18 + 32))(v14, v10, v11);
    v24 = v48;
    CKRecord.encryptedValueForKey<A>(_:as:)();
    if (v24)
    {
LABEL_13:
      (*(v18 + 8))(v14, v11);
      return a2 & 1;
    }

    v48 = 0;
    v25 = v52;
    if (v52 >> 60 == 15)
    {
      (*(v18 + 8))(v14, v11);
    }

    else
    {
      v26 = v51;
      v27 = Data.getAttributedString()();
      sub_10003A5C8(v26, v25);
      if (v27)
      {
        v28 = v27;
        v29 = CRAttributedString.attributedString.getter();
        v30 = [v29 string];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34 = v28;
        v35 = [v28 string];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        if (v31 == v36 && v33 == v38)
        {

          LOBYTE(a2) = 0;
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          LOBYTE(a2) = v39 ^ 1;
        }

        v50 = v34;

        v18 = v49;
        if (qword_100ACFDC0 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000617C(v40, qword_100AE4B60);

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v51 = v47;
          *v43 = 136315394;
          v53 = v16;

          sub_1000F24EC(&qword_100AE4CA0);
          v44 = String.init<A>(describing:)();
          v46 = sub_100008458(v44, v45, &v51);

          *(v43 + 4) = v46;
          *(v43 + 12) = 1024;
          *(v43 + 14) = a2 & 1;
          _os_log_impl(&_mh_execute_header, v41, v42, "Should forward merge %s: %{BOOL}d", v43, 0x12u);
          sub_10000BA7C(v47);
        }

        else
        {
        }

        goto LABEL_13;
      }

      (*(v49 + 8))(v14, v11);
    }

LABEL_9:
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

uint64_t sub_100469F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  v8 = a3();
  v10 = a4(KeyPath, a1, v8, v9);

  return v10 & 1;
}

uint64_t sub_10046A158(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AE4B90);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  v5 = sub_1000F24EC(&qword_100AE4BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v24 - v10;
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  if (sub_10046A608(a1))
  {
    JournalEntryMO.mergeableAssetPlacement.getter();
    v15 = type metadata accessor for MergeableEntryAssetsPlacement();
    if ((*(*(v15 - 8) + 48))(v4, 1, v15))
    {
      sub_100004F84(v4, &unk_100AE4B90);
    }

    else
    {
      MergeableEntryAssetsPlacement.gridAssetIDs.getter();
      sub_100004F84(v4, &unk_100AE4B90);
      (*(v6 + 32))(v14, v11, v5);
      static JournalEntryMO.CloudKitKeys.assetOrdering.getter();
      CKRecord.encryptedValueForKey<A>(_:as:)();

      v18 = v25;
      if (v25 >> 60 != 15)
      {
        v19 = v24[1];
        sub_1000F24EC(&qword_100AE4BA8);
        sub_10046C1F4();
        Data.asObject<A>(of:)();
        sub_10003A5C8(v19, v18);
        if (v24[0])
        {
          sub_100470C68(v24[0]);
          v21 = v20;

          (*(v6 + 16))(v8, v14, v5);
          sub_10046B13C(v8);
          v23 = sub_10046C2B0(v21, v22);

          (*(v6 + 8))(v14, v5);
          v16 = v23 ^ 1;
          return v16 & 1;
        }
      }

      (*(v6 + 8))(v14, v5);
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_10046A608(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v57 = &v54 - v6;
  v7 = type metadata accessor for Date();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v54 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v15 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v54 - v20;
  v22 = [v3 id];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 56))(v17, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v17, 1, 1, v11);
  }

  sub_100021CEC(v17, v21, &qword_100AD1420);
  if ((*(v12 + 48))(v21, 1, v11))
  {
    sub_100004F84(v21, &qword_100AD1420);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    (*(v12 + 16))(v14, v21, v11);
    sub_100004F84(v21, &qword_100AD1420);
    v24 = UUID.uuidString.getter();
    v25 = v26;
    (*(v12 + 8))(v14, v11);
  }

  v27 = [a1 recordID];
  v28 = [v27 recordName];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (!v25)
  {

    goto LABEL_18;
  }

  if (v24 == v29 && v25 == v31)
  {

    goto LABEL_13;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v32 & 1) == 0)
  {
LABEL_18:
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10000617C(v36, qword_100AE4B60);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_23;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Attempting to forward merge a record with an unrelated entry";
    goto LABEL_22;
  }

LABEL_13:
  v33 = [a1 encryptedValues];
  static JournalEntryMO.CloudKitKeys.modelVersion.getter();
  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 objectForKeyedSubscript:v34];
  swift_unknownObjectRelease();

  if (!v35)
  {
    return v35 & 1;
  }

  v62 = v35;
  sub_1000F24EC(&unk_100AE4C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (v60 == 0x726568746FLL && v61 == 0xE500000000000000)
  {
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v43 = [v3 mergeableAttributes];
  if (v43)
  {

    v44 = [v3 updatedDate];
    if (v44)
    {
      v45 = v56;
      v35 = v44;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      static JournalEntryMO.CloudKitKeys.updatedDate.getter();
      LOBYTE(v35) = v46;
      v47 = v57;
      v48 = v59;
      CKRecord.encryptedValueForKey<A>(_:as:)();
      if (v2)
      {
        (*(v58 + 8))(v45, v48);

        return v35 & 1;
      }

      v50 = v58;
      if ((*(v58 + 48))(v47, 1, v48) != 1)
      {
        v52 = v55;
        (*(v50 + 32))(v55, v47, v48);
        LOBYTE(v35) = static Date.< infix(_:_:)();
        v53 = *(v50 + 8);
        v53(v52, v48);
        v53(v45, v48);
        return v35 & 1;
      }

      (*(v50 + 8))(v45, v48);
      sub_100004F84(v47, &unk_100AD4790);
    }

    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000617C(v51, qword_100AE4B60);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_23;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Missing updated dates; can't forward merge";
  }

  else
  {
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000617C(v49, qword_100AE4B60);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_23;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Entry doesn't have mergeable attributes and will defer to legacy values; no reason to forward merge";
  }

LABEL_22:
  _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

LABEL_23:

LABEL_24:
  LOBYTE(v35) = 0;
  return v35 & 1;
}

void sub_10046AE4C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = variable initialization expression of RecentSearch.tokens();
  v10 = sub_10046DDCC(&v30, a1, 0, 1, v9);
  v11 = *(a1 + 16);
  v12 = v30;
  if (v30 != v11)
  {
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v30)
    {
      v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v27 = a1 + v28;
      sub_1006103EC(a1, a1 + v28, 0, (2 * v30) | 1);
      v31 = v10;
      v32 = v13;
      if (*(a1 + 16) >= v11)
      {
        v25[1] = v10;
        v25[2] = a1;
        v16 = *(v3 + 16);
        v15 = v3 + 16;
        v14 = v16;
        v29 = *(v15 + 56);
        v17 = (v15 - 8);

        v26 = v11;
        while (1)
        {
          v18 = v15;
          v14(v8, v27 + v29 * v12, v2);
          v19 = v31;
          v20 = v32 + v28;
          v21 = *(v32 + 16);
          if (v31)
          {

            sub_10046F624(v8, v20, v21, (v19 + 16), v19 + 32);
            v23 = v22;

            if ((v23 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v21)
          {
            do
            {
              v14(v5, v20, v2);
              sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
              v24 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v17)(v5, v2);
              if (v24)
              {
                goto LABEL_7;
              }

              v20 += v29;
            }

            while (--v21);
          }

          sub_10046E754(v8);
LABEL_7:
          ++v12;
          (*v17)(v8, v2);
          v15 = v18;
          if (v12 == v26)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_10046B13C(uint64_t a1)
{
  v53 = type metadata accessor for UUID();
  v62 = *(v53 - 8);
  __chkstk_darwin(v53);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v48 - v5;
  __chkstk_darwin(v7);
  v60 = &v48 - v8;
  v64 = sub_1000F24EC(&qword_100AE4BD8);
  __chkstk_darwin(v64);
  v61 = (&v48 - v9);
  v59 = sub_1000F24EC(&qword_100AE4BE0);
  __chkstk_darwin(v59);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v48 - v12);
  v14 = sub_1000F24EC(&qword_100AE4BC0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v18 = variable initialization expression of RecentSearch.tokens();
  v51 = sub_10046DF20(&v68, a1, 0, 1, v18);
  v19 = sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
  dispatch thunk of Collection.endIndex.getter();
  v20 = v68;
  if (v68 == v65)
  {
    (*(v15 + 16))(v17, a1, v14);
    sub_10000B58C(&qword_100AE4BF0, &qword_100AE4BC0);
    dispatch thunk of Sequence._copyToContiguousArray()();
    (*(v15 + 8))(a1, v14);
    return v51;
  }

  result = dispatch thunk of Collection.startIndex.getter();
  if (v20 < v65)
  {
    __break(1u);
    goto LABEL_21;
  }

  v66 = v20;
  dispatch thunk of Collection.subscript.getter();
  v22 = sub_10061058C(v13);
  sub_100004F84(v13, &qword_100AE4BE0);
  v23 = v51;
  v69 = v51;
  v70 = v22;
  v57 = v22;

  result = dispatch thunk of Collection.endIndex.getter();
  v24 = v65;
  if (v65 < v20)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v65 = v20;
  v66 = v24;
  v25 = v50;
  dispatch thunk of Collection.subscript.getter();
  v26 = v61;
  sub_1000082B4(v25, v61, &qword_100AE4BE0);
  v27 = *(v64 + 36);
  v28 = *v25;
  *(v26 + v27) = *v25;
  v29 = v26[1];
  v30 = v23;
  if (v28 == v29)
  {
    goto LABEL_19;
  }

  v57 = v19;
  v48 = v15;
  v49 = a1;
  v63 = v27;
  v64 = v62 + 16;
  v55 = v62 + 32;
  v56 = v29;
  v58 = v14;
  v31 = v53;
  v52 = v3;
  v54 = (v62 + 8);
  do
  {
    v67 = v28;
    v65 = *v26;
    v66 = v29;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v34 = dispatch thunk of Collection.subscript.read();
    v35 = v62;
    v36 = *(v62 + 16);
    v37 = v6;
    v38 = v60;
    v36(v60);
    v34(&v65, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v35 + 32))(v37, v38, v31);
    v39 = v69;
    v40 = v70 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v41 = *(v70 + 2);
    if (v69)
    {
      v33 = v31;

      sub_10046F624(v37, v40, v41, (v39 + 16), v39 + 32);
      v43 = v42;

      v6 = v37;
      v44 = v54;
      if (v43)
      {
LABEL_17:
        v32 = v6;
        goto LABEL_8;
      }
    }

    else
    {
      v6 = v37;
      v45 = v52;
      v44 = v54;
      if (!v41)
      {
        v32 = v6;
        v33 = v53;
LABEL_8:
        v6 = v32;
        sub_10046E754(v32);
        goto LABEL_9;
      }

      v46 = *(v62 + 72);
      v33 = v53;
      while (1)
      {
        (v36)(v45, v40, v33);
        sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v44)(v45, v33);
        if (v47)
        {
          break;
        }

        v40 += v46;
        if (!--v41)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_9:
    (*v44)(v6, v33);
    v26 = v61;
    v28 = *(v61 + v63);
    v29 = v56;
    v31 = v33;
    v14 = v58;
  }

  while (v28 != v56);
  v30 = v69;
  v57 = v70;
  a1 = v49;
  v15 = v48;
  v25 = v50;
LABEL_19:
  sub_100004F84(v26, &qword_100AE4BD8);

  (*(v15 + 8))(a1, v14);
  sub_100004F84(v25, &qword_100AE4BE0);
  return v30;
}

uint64_t sub_10046B898(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE4B88);
  __chkstk_darwin(v4 - 8);
  v66 = v62 - v5;
  v6 = sub_1000F24EC(&unk_100AE4B90);
  __chkstk_darwin(v6 - 8);
  v8 = v62 - v7;
  v9 = type metadata accessor for MergeableEntryAssetsPlacement();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v65 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v15 - 8);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = v62 - v20;
  v22 = v2;
  v23 = [v2 id];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 56))(v17, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v17, 1, 1, v11);
  }

  sub_100021CEC(v17, v21, &qword_100AD1420);
  if ((*(v12 + 48))(v21, 1, v11))
  {
    sub_100004F84(v21, &qword_100AD1420);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    (*(v12 + 16))(v14, v21, v11);
    sub_100004F84(v21, &qword_100AD1420);
    v25 = UUID.uuidString.getter();
    v26 = v27;
    (*(v12 + 8))(v14, v11);
  }

  v28 = [a1 recordID];
  v29 = [v28 recordName];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (!v26)
  {

    goto LABEL_15;
  }

  if (v25 == v30 && v26 == v32)
  {

    v33 = v22;
    goto LABEL_13;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v33 = v22;
  if ((v34 & 1) == 0)
  {
LABEL_15:
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000617C(v37, qword_100AE4B60);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to forward merge a record with an unrelated entry", v40, 2u);
    }

    sub_10046C0EC();
    swift_allocError();
    *v41 = 2;
    return swift_willThrow();
  }

LABEL_13:
  static JournalEntryMO.CloudKitKeys.assetOrdering.getter();
  v35 = v73;
  CKRecord.encryptedValueForKey<A>(_:as:)();
  if (v35)
  {
  }

  v42 = v72;
  if (v72 >> 60 == 15)
  {
    goto LABEL_24;
  }

  v43 = v71;
  sub_1000F24EC(&qword_100AE4BA8);
  sub_10046C1F4();
  Data.asObject<A>(of:)();
  sub_10003A5C8(v43, v42);
  v44 = v69;
  if (!v69)
  {
    goto LABEL_24;
  }

  JournalEntryMO.mergeableAssetPlacement.getter();
  v46 = v67;
  v45 = v68;
  v47 = *(v67 + 48);
  if (v47(v8, 1, v68) == 1)
  {

    sub_100004F84(v8, &unk_100AE4B90);
LABEL_24:
    sub_10046C0EC();
    swift_allocError();
    *v48 = 0;
    return swift_willThrow();
  }

  v49 = *(v46 + 32);
  v63 = v47;
  v50 = v65;
  v49(v65, v8, v45);
  sub_100470C68(v44);
  v52 = v51;
  v54 = v53;

  v55 = MergeableEntryAssetsPlacement.gridAssetIDs.modify();
  sub_1000F24EC(&qword_100AE4BC0);
  CROrderedSet.removeAll()();
  v55(&v71, 0);
  v73 = v52;
  v69 = v52;
  v70 = v54;
  v64 = v54;
  v56 = MergeableEntryAssetsPlacement.gridAssetIDs.modify();
  v62[1] = v33;
  sub_1000F24EC(&qword_100AE4BC8);
  sub_10000B58C(&qword_100AE4BD0, &qword_100AE4BC8);
  CROrderedSet.append<A>(contentsOf:)();
  v56(&v71, 0);
  v57 = JournalEntryMO.mergeableAssetPlacement.modify();
  if (v63(v58, 1, v68))
  {
    v57(&v71, 0);
    v59 = 1;
    v60 = v66;
  }

  else
  {
    v60 = v66;
    MergeableEntryAssetsPlacement.merge(_:)();
    v57(&v71, 0);
    v59 = 0;
  }

  (*(v67 + 8))(v50, v68);
  v61 = type metadata accessor for MergeResult();
  (*(*(v61 - 8) + 56))(v60, v59, 1, v61);
  return sub_100004F84(v60, &qword_100AE4B88);
}

unint64_t sub_10046C0EC()
{
  result = qword_100AE4BA0;
  if (!qword_100AE4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4BA0);
  }

  return result;
}

void sub_10046C140(void **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD1428) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10020505C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10046CB68(v5);
  *a1 = v3;
}

unint64_t sub_10046C1F4()
{
  result = qword_100AE4BB0;
  if (!qword_100AE4BB0)
  {
    sub_1000F2A18(&qword_100AE4BA8);
    sub_100471080(&qword_100AD81F0, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4BB0);
  }

  return result;
}

uint64_t sub_10046C2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || (v5 = *(type metadata accessor for UUID() - 8), a1 == a2))
    {
      v10 = 1;
    }

    else
    {
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v7 = a1 + v6;
      v8 = a2 + v6;
      v9 = *(v5 + 72);
      sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
      do
      {
        v10 = dispatch thunk of static Equatable.== infix(_:_:)();
        if ((v10 & 1) == 0)
        {
          break;
        }

        v8 += v9;
        v7 += v9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_10046C3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  __chkstk_darwin(v8);
  v56 = (&v52 - v9);
  __chkstk_darwin(v10);
  v60 = &v52 - v13;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16) && v14 && a1 != a2)
  {
    v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v61 = a2 + v15;
    v16 = a1 + v15;
    v17 = *(v11 + 72);
    v54 = v12;
    v55 = v17;
    do
    {
      if (!v14)
      {
        __break(1u);
        return;
      }

      v59 = v14;
      v18 = v60;
      sub_100471100(v16, v60);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v18;
      if (EnumCaseMultiPayload == 1 || (v21 = v60, v22 = *v60, v57 = *(v60 + 8), v58 = v22, v23 = *(v60 + 16), v24 = sub_1000F24EC(&qword_100AE4CB0), v25 = *(v24 + 48), v26 = type metadata accessor for UUID(), v27 = *(*(v26 - 8) + 8), v27((v21 + v25), v26), v28 = v56, sub_100471100(v61, v56), v29 = swift_getEnumCaseMultiPayload(), v20 = v28, v29 == 1))
      {
        sub_100471164(v20);
        sub_100471100(v16, v7);
        if (swift_getEnumCaseMultiPayload() != 1 || (v57 = *v7, v58 = v16, v30 = v7[8], v31 = sub_1000F24EC(&qword_100AE4CA8), v32 = *(v31 + 48), v33 = type metadata accessor for UUID(), v34 = v4, v35 = *(*(v33 - 8) + 8), v36 = v7, v35(&v7[v32], v33), v7 = v54, sub_100471100(v61, v54), v37 = v34, swift_getEnumCaseMultiPayload() != 1))
        {
          sub_100471164(v7);
          return;
        }

        v38 = *v7;
        v39 = v7[8];
        v35(&v7[*(v31 + 48)], v33);
        v40 = v30 >> 6;
        if (v30 >> 6 > 1)
        {
          v4 = v37;
          v7 = v36;
          v16 = v58;
          if (v40 == 2)
          {
            if ((v39 & 0xC0) != 0x80)
            {
              return;
            }
          }

          else if (v39 <= 0xBF)
          {
            return;
          }
        }

        else
        {
          v4 = v37;
          v7 = v36;
          v16 = v58;
          if (v40)
          {
            if ((v39 & 0xC0) != 0x40)
            {
              return;
            }
          }

          else if (v39 >= 0x40)
          {
            return;
          }
        }

        if (v57 != v38 || ((v39 ^ v30) & 1) != 0)
        {
          return;
        }
      }

      else
      {
        v41 = *v56;
        v53 = v56[1];
        v42 = *(v56 + 16);
        v27(v56 + *(v24 + 48), v26);
        v43 = v23 >> 5;
        if (v23 >> 5 <= 1)
        {
          if (v43)
          {
            if ((v42 & 0xE0) != 0x20)
            {
              return;
            }

            goto LABEL_6;
          }

          if (v42 > 0x1F)
          {
            return;
          }

LABEL_39:
          if (v41 != v58)
          {
            return;
          }

          goto LABEL_6;
        }

        if (v43 == 2)
        {
          if ((v42 & 0xE0) != 0x40)
          {
            return;
          }

          goto LABEL_39;
        }

        if (v43 == 3)
        {
          if ((v42 & 0xE0) != 0x60)
          {
            return;
          }

          v44 = v58;
          if (v58 <= 4u)
          {
            v45 = 0xE500000000000000;
            if (v58 <= 1u)
            {
              if (v58)
              {
                v46 = 0x6F65646976;
              }

              else
              {
                v46 = 0x6F746F6870;
              }
            }

            else if (v58 == 2)
            {
              v46 = 0x6F69647561;
            }

            else if (v58 == 3)
            {
              v46 = 0x616964656DLL;
            }

            else
            {
              v46 = 0x6563616C70;
            }
          }

          else if (v58 > 7u)
          {
            if (v58 == 8)
            {
              v46 = 0x4D664F6574617473;
              v45 = 0xEB00000000646E69;
            }

            else
            {
              if (v58 != 9)
              {
                v45 = 0xE800000000000000;
                v47 = 0x7465666E6F63;
                goto LABEL_60;
              }

              v45 = 0xE700000000000000;
              v46 = 0x676E6977617264;
            }
          }

          else if (v58 == 5)
          {
            v46 = 0x61737265766E6F63;
            v45 = 0xEC0000006E6F6974;
          }

          else
          {
            if (v58 == 6)
            {
              v45 = 0xE800000000000000;
              v46 = 0x7974697669746361;
              goto LABEL_61;
            }

            v45 = 0xEA00000000006E6FLL;
            v47 = 0x63656C666572;
LABEL_60:
            v46 = v47 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
          }

LABEL_61:
          if (v41 <= 4u)
          {
            v48 = 0xE500000000000000;
            if (v41 <= 1u)
            {
              if (v41)
              {
                v49 = 0x6F65646976;
              }

              else
              {
                v49 = 0x6F746F6870;
              }
            }

            else if (v41 == 2)
            {
              v49 = 0x6F69647561;
            }

            else if (v41 == 3)
            {
              v49 = 0x616964656DLL;
            }

            else
            {
              v49 = 0x6563616C70;
            }

            goto LABEL_83;
          }

          if (v41 > 7u)
          {
            if (v41 == 8)
            {
              v49 = 0x4D664F6574617473;
              v48 = 0xEB00000000646E69;
            }

            else
            {
              if (v41 != 9)
              {
                v48 = 0xE800000000000000;
                v50 = 0x7465666E6F63;
                goto LABEL_82;
              }

              v48 = 0xE700000000000000;
              v49 = 0x676E6977617264;
            }
          }

          else if (v41 == 5)
          {
            v49 = 0x61737265766E6F63;
            v48 = 0xEC0000006E6F6974;
          }

          else
          {
            if (v41 == 6)
            {
              v48 = 0xE800000000000000;
              v49 = 0x7974697669746361;
              goto LABEL_83;
            }

            v48 = 0xEA00000000006E6FLL;
            v50 = 0x63656C666572;
LABEL_82:
            v49 = v50 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
          }

LABEL_83:
          if (v46 == v49 && v45 == v48)
          {
          }

          else
          {
            v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v51 & 1) == 0)
            {
              return;
            }
          }

          if ((v44 & 0xFF00) == 0x300)
          {
            if (BYTE1(v41) != 3)
            {
              return;
            }
          }

          else if (BYTE1(v41) == 3 || ((v41 ^ v44) & 0xFF00) != 0)
          {
            return;
          }

LABEL_6:
          if (v57 != v53)
          {
            return;
          }

          goto LABEL_7;
        }

        if ((v42 & 0xE0) != 0x80 || v58 != v41)
        {
          return;
        }
      }

LABEL_7:
      v61 += v55;
      v16 += v55;
      v14 = v59 - 1;
    }

    while (v59 != 1);
  }
}

void sub_10046CB68(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(&qword_100AD1428);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000F24EC(&qword_100AD1428) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10046CF20(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10046CCAC(0, v2, 1, a1);
  }
}

void sub_10046CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000F24EC(&qword_100AD1428);
  __chkstk_darwin(v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v31 - v11;
  __chkstk_darwin(v12);
  v42 = &v31 - v14;
  v33 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v38 = -v16;
    v39 = v15;
    v18 = a1 - a3;
    v32 = v16;
    v19 = v15 + v16 * a3;
    v20 = &qword_100AD1428;
    v41 = v8;
LABEL_5:
    v36 = v17;
    v37 = a3;
    v34 = v19;
    v35 = v18;
    while (1)
    {
      v21 = v42;
      sub_1000082B4(v19, v42, v20);
      v22 = v20;
      v23 = v43;
      sub_1000082B4(v17, v43, v22);
      v24 = *(v8 + 48);
      v25 = *(v21 + v24);
      v26 = *(v23 + v24);
      v27 = v23;
      v20 = v22;
      sub_100004F84(v27, v22);
      sub_100004F84(v21, v22);
      v28 = v25 < v26;
      v8 = v41;
      if (!v28)
      {
LABEL_4:
        a3 = v37 + 1;
        v17 = v36 + v32;
        v18 = v35 - 1;
        v19 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v29 = v40;
      sub_100021CEC(v19, v40, v22);
      swift_arrayInitWithTakeFrontToBack();
      sub_100021CEC(v29, v17, v22);
      v17 += v38;
      v19 += v38;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10046CF20(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v108 = a1;
  v124 = sub_1000F24EC(&qword_100AD1428);
  v118 = *(v124 - 8);
  __chkstk_darwin(v124);
  v111 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v121 = &v105 - v9;
  __chkstk_darwin(v10);
  v123 = &v105 - v11;
  __chkstk_darwin(v12);
  v122 = &v105 - v13;
  v14 = *(a3 + 8);
  v109 = a3;
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_137;
    }

    v4 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v114;
    if (isUniquelyReferenced_nonNull_native)
    {
      v100 = v4;
LABEL_101:
      v125 = v100;
      v4 = *(v100 + 2);
      if (v4 >= 2)
      {
        do
        {
          v101 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          a3 = *&v100[16 * v4];
          v102 = v100;
          v103 = *&v100[16 * v4 + 24];
          sub_10046D8A8(v101 + *(v118 + 72) * a3, v101 + *(v118 + 72) * *&v100[16 * v4 + 16], v101 + *(v118 + 72) * v103, a4);
          if (v33)
          {
            break;
          }

          if (v103 < a3)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_100204C44(v102);
          }

          if (v4 - 2 >= *(v102 + 2))
          {
            goto LABEL_125;
          }

          v104 = &v102[16 * v4];
          *v104 = a3;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_100204BB8(v4 - 1);
          v100 = v125;
          v4 = *(v125 + 2);
          a3 = v109;
        }

        while (v4 > 1);
      }

LABEL_109:

      return;
    }

LABEL_131:
    v100 = sub_100204C44(v4);
    goto LABEL_101;
  }

  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v107 = a4;
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v112 = v16;
    if (v18 >= v14)
    {
      v32 = v18;
      v33 = v114;
    }

    else
    {
      v19 = *a3;
      v20 = *(v118 + 72);
      v21 = *a3 + v20 * v18;
      v22 = v122;
      v4 = &qword_100AD1428;
      sub_1000082B4(v21, v122, &qword_100AD1428);
      v23 = v123;
      sub_1000082B4(v19 + v20 * v17, v123, &qword_100AD1428);
      v24 = *(v124 + 48);
      v25 = *(v22 + v24);
      v116 = *(v23 + v24);
      v117 = v25;
      sub_100004F84(v23, &qword_100AD1428);
      sub_100004F84(v22, &qword_100AD1428);
      v106 = v17;
      v26 = v17 + 2;
      v119 = v20;
      v27 = v19 + v20 * v26;
      while (v14 != v26)
      {
        LODWORD(v120) = v117 < v116;
        v28 = v122;
        sub_1000082B4(v27, v122, &qword_100AD1428);
        v29 = v123;
        sub_1000082B4(v21, v123, &qword_100AD1428);
        v30 = *(v124 + 48);
        v31 = *(v28 + v30);
        v4 = *(v29 + v30);
        sub_100004F84(v29, &qword_100AD1428);
        sub_100004F84(v28, &qword_100AD1428);
        ++v26;
        v27 += v119;
        v21 += v119;
        if (((v120 ^ (v31 >= v4)) & 1) == 0)
        {
          v32 = v26 - 1;
          goto LABEL_11;
        }
      }

      v32 = v14;
LABEL_11:
      v17 = v106;
      a4 = v107;
      a3 = v109;
      v33 = v114;
      if (v117 < v116)
      {
        if (v32 < v106)
        {
          goto LABEL_128;
        }

        if (v106 < v32)
        {
          v4 = v119 * (v32 - 1);
          v34 = v32 * v119;
          v117 = v32;
          v35 = v32;
          v36 = v106 * v119;
          do
          {
            if (v17 != --v35)
            {
              v114 = v33;
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              sub_100021CEC(v37 + v36, v111, &qword_100AD1428);
              if (v36 < v4 || v37 + v36 >= (v37 + v34))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100021CEC(v111, v37 + v4, &qword_100AD1428);
              v33 = v114;
            }

            ++v17;
            v4 -= v119;
            v34 -= v119;
            v36 += v119;
          }

          while (v17 < v35);
          v17 = v106;
          a4 = v107;
          v32 = v117;
        }
      }
    }

    v38 = *(a3 + 8);
    if (v32 >= v38)
    {
      goto LABEL_34;
    }

    if (__OFSUB__(v32, v17))
    {
      goto LABEL_127;
    }

    if (v32 - v17 >= a4)
    {
LABEL_34:
      v40 = v32;
      if (v32 < v17)
      {
        goto LABEL_126;
      }

      goto LABEL_35;
    }

    if (__OFADD__(v17, a4))
    {
      goto LABEL_129;
    }

    if ((v17 + a4) >= v38)
    {
      v39 = *(a3 + 8);
    }

    else
    {
      v39 = v17 + a4;
    }

    if (v39 < v17)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v32 == v39)
    {
      goto LABEL_34;
    }

    v113 = v39;
    v114 = v33;
    v86 = *a3;
    v87 = *(v118 + 72);
    v88 = *a3 + v87 * (v32 - 1);
    v89 = -v87;
    v106 = v17;
    v90 = v17 - v32;
    v120 = v86;
    v110 = v87;
    a4 = v86 + v32 * v87;
    v91 = v124;
LABEL_88:
    v116 = v90;
    v117 = v32;
    v115 = a4;
    v119 = v88;
    v92 = v88;
LABEL_89:
    v4 = v122;
    sub_1000082B4(a4, v122, &qword_100AD1428);
    v93 = v123;
    sub_1000082B4(v92, v123, &qword_100AD1428);
    v94 = *(v91 + 48);
    v95 = *(v4 + v94);
    v96 = *(v93 + v94);
    sub_100004F84(v93, &qword_100AD1428);
    sub_100004F84(v4, &qword_100AD1428);
    if (v95 < v96)
    {
      break;
    }

    v91 = v124;
LABEL_87:
    v32 = v117 + 1;
    v88 = v119 + v110;
    v90 = v116 - 1;
    a4 = v115 + v110;
    v40 = v113;
    if (v117 + 1 != v113)
    {
      goto LABEL_88;
    }

    v33 = v114;
    a3 = v109;
    v17 = v106;
    if (v113 < v106)
    {
      goto LABEL_126;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v112;
    }

    else
    {
      v16 = sub_1003E4B80(0, *(v112 + 2) + 1, 1, v112);
    }

    v4 = *(v16 + 2);
    v41 = *(v16 + 3);
    a4 = v4 + 1;
    if (v4 >= v41 >> 1)
    {
      v16 = sub_1003E4B80((v41 > 1), v4 + 1, 1, v16);
    }

    *(v16 + 2) = a4;
    v42 = &v16[16 * v4];
    *(v42 + 4) = v17;
    *(v42 + 5) = v40;
    v43 = *v108;
    if (!*v108)
    {
      goto LABEL_136;
    }

    v113 = v40;
    if (v4)
    {
      v44 = v43;
      while (1)
      {
        v45 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v46 = *(v16 + 4);
          v47 = *(v16 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_115;
          }

          v62 = &v16[16 * a4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_118;
          }

          v68 = &v16[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_121;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_122;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = a4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v16[16 * a4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_117;
        }

        v75 = &v16[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v4 = v45 - 1;
        if (v45 - 1 >= a4)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v83 = v16;
        a4 = *&v16[16 * v4 + 32];
        v84 = *&v16[16 * v45 + 40];
        sub_10046D8A8(*a3 + *(v118 + 72) * a4, *a3 + *(v118 + 72) * *&v16[16 * v45 + 32], *a3 + *(v118 + 72) * v84, v44);
        if (v33)
        {
          goto LABEL_109;
        }

        if (v84 < a4)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_100204C44(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_112;
        }

        v85 = &v83[16 * v4];
        *(v85 + 4) = a4;
        *(v85 + 5) = v84;
        v125 = v83;
        v4 = &v125;
        sub_100204BB8(v45);
        v16 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v16[16 * a4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_113;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_114;
      }

      v57 = &v16[16 * a4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_116;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_119;
      }

      if (v61 >= v53)
      {
        v79 = &v16[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_123;
        }

        if (v48 < v82)
        {
          v45 = a4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v114 = v33;
    v14 = *(a3 + 8);
    v15 = v113;
    a4 = v107;
    if (v113 >= v14)
    {
      goto LABEL_98;
    }
  }

  if (v120)
  {
    v97 = v121;
    sub_100021CEC(a4, v121, &qword_100AD1428);
    v91 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_100021CEC(v97, v92, &qword_100AD1428);
    v92 += v89;
    a4 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
}

void sub_10046D8A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = sub_1000F24EC(&qword_100AD1428);
  __chkstk_darwin(v46);
  v45 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v36 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v49 = a1;
  v48 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v28 = a4 + v16;
    }

    else
    {
      v26 = -v12;
      v27 = a4 + v16;
      v28 = a4 + v16;
      v39 = a1;
      v40 = a4;
      v38 = v26;
      do
      {
        v36 = v28;
        v29 = a2 + v26;
        v41 = a2;
        v42 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v47 = v36;
            goto LABEL_58;
          }

          v30 = a3;
          v37 = v28;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v44;
          sub_1000082B4(v27 + v26, v44, &qword_100AD1428);
          v33 = v45;
          sub_1000082B4(v29, v45, &qword_100AD1428);
          v34 = *(v46 + 48);
          v43 = *(v32 + v34);
          v35 = *(v33 + v34);
          sub_100004F84(v33, &qword_100AD1428);
          sub_100004F84(v32, &qword_100AD1428);
          if (v43 < v35)
          {
            break;
          }

          v28 = v31;
          if (v30 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v42;
            v26 = v38;
            a1 = v39;
          }

          else
          {
            v29 = v42;
            v26 = v38;
            a1 = v39;
            if (v30 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          a2 = v41;
          if (v31 <= v40)
          {
            goto LABEL_56;
          }
        }

        if (v30 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v38;
          a1 = v39;
          v28 = v37;
        }

        else
        {
          a2 = v42;
          v26 = v38;
          a1 = v39;
          v28 = v37;
          if (v30 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v40);
    }

LABEL_56:
    v49 = a2;
    v47 = v28;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v15;
    v47 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v41 = v12;
      do
      {
        v18 = v44;
        v19 = a2;
        sub_1000082B4(a2, v44, &qword_100AD1428);
        v20 = v45;
        sub_1000082B4(a4, v45, &qword_100AD1428);
        v21 = *(v46 + 48);
        v22 = *(v18 + v21);
        v23 = *(v20 + v21);
        sub_100004F84(v20, &qword_100AD1428);
        sub_100004F84(v18, &qword_100AD1428);
        if (v22 >= v23)
        {
          v24 = v41;
          v25 = a4 + v41;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v25;
          a4 += v24;
        }

        else
        {
          v24 = v41;
          a2 += v41;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v24;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_58:
  sub_100204C88(&v49, &v48, &v47);
}

uint64_t sub_10046DDCC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = _HashTable.init(scale:reservedScale:)();
    v15 = *(type metadata accessor for UUID() - 8);
    sub_10047089C(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v8, (v14 + 16), v14 + 32);
    *a1 = v16;
    return v14;
  }

  else if (v8 >= 2)
  {
    v17 = *(type metadata accessor for UUID() - 8);
    v18 = sub_10046E468(a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v8);
    result = 0;
    *a1 = v18;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

uint64_t sub_10046DF20(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v35 - v14;
  sub_1000F24EC(&qword_100AE4BC0);
  sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
  dispatch thunk of Collection.count.getter();
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = static _HashTable.scale(forCapacity:)();
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v19 = _HashTable.init(scale:reservedScale:)();
    sub_1004701D0(&v46, a2, (v19 + 16), v19 + 32);
    result = v19;
    *a1 = v46;
    return result;
  }

  v43 = a1;
  if (dispatch thunk of Collection.count.getter() < 2)
  {
    goto LABEL_17;
  }

  sub_10000B58C(&qword_100AE4BF0, &qword_100AE4BC0);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  if (v47)
  {
    v21 = dispatch thunk of Collection.count.getter();
    v49 = _swiftEmptyArrayStorage;
    sub_100199D3C(0, v21 & ~(v21 >> 63), 0);
    v22 = v49;
    result = dispatch thunk of Collection.indices.getter();
    v24 = v46;
    v23 = v47;
    if (v46 == v47)
    {
LABEL_16:

LABEL_17:
      dispatch thunk of Collection.endIndex.getter();
      return 0;
    }

    if (v47 >= v46)
    {
      v41 = (v11 + 8);
      v42 = (v11 + 16);
      v36 = v47;
      v37 = v11 + 32;
      v25 = v44;
      v26 = v45;
      while (v24 != v23)
      {
        v27 = v25;
        v40 = v24 + 1;
        v38 = v24;
        v48 = v24;
        v28 = dispatch thunk of Collection.subscript.read();
        v39 = *v42;
        v39(v26);
        v28(&v46, 0);
        v29 = 0;
        v30 = *(v22 + 2);
        while (v30 != v29)
        {
          v31 = v29 + 1;
          sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
          v32 = dispatch thunk of static Equatable.== infix(_:_:)();
          v29 = v31;
          if (v32)
          {
            (*v41)(v45, v10);

            result = 0;
            *v43 = v38;
            return result;
          }
        }

        v25 = v27;
        v26 = v45;
        (v39)(v27, v45, v10);
        v49 = v22;
        v34 = *(v22 + 2);
        v33 = *(v22 + 3);
        v39 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          sub_100199D3C(v33 > 1, v39, 1);
          v25 = v27;
        }

        (*(v11 + 8))(v26, v10);
        v22 = v49;
        *(v49 + 2) = v39;
        result = (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v34, v25, v10);
        v24 = v40;
        v23 = v36;
        if (v40 == v36)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    dispatch thunk of Collection.startIndex.getter();
    sub_10000B58C(&qword_100AE4BF8, &qword_100AE4BC0);
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    return 0;
  }

  return result;
}

size_t sub_10046E468(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v26 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v22 - v9;
  v33 = _swiftEmptyArrayStorage;
  result = sub_100199D3C(0, a2 & ~(a2 >> 63), 0);
  v12 = v33;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v25 = v2;
    v13 = 0;
    v29 = (v6 + 8);
    v22[1] = v6 + 32;
    v23 = a1;
    v14 = *(v6 + 16);
    v15 = *(v6 + 72);
    v30 = v14;
    v31 = v6 + 16;
    do
    {
      v27 = v13;
      v28 = v13 + 1;
      v14(v10, (a1 + v15 * v13), v5);
      v16 = *(v12 + 2) + 1;
      v32 = v12;
      while (--v16)
      {
        sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
        v12 = (v12 + v15);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          (*v29)(v10, v5);
          a2 = v27;
          goto LABEL_11;
        }
      }

      v17 = v26;
      v30(v26, v10, v5);
      v33 = v32;
      v19 = *(v32 + 2);
      v18 = *(v32 + 3);
      if (v19 >= v18 >> 1)
      {
        sub_100199D3C(v18 > 1, v19 + 1, 1);
        v17 = v26;
      }

      (*(v6 + 8))(v10, v5);
      v20 = v33;
      *(v33 + 2) = v19 + 1;
      v21 = v17;
      v12 = v20;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v19 * v15, v21, v5);
      a1 = v23;
      a2 = v24;
      v13 = v28;
      v14 = v30;
    }

    while (v28 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10046E754(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100199D3C(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_100199D3C(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v7, v3);
  v1[1] = v9;
  if (*v1)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v14 = *v1;
      if ((result & 1) == 0)
      {
        if (!v14)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v15 = _HashTable.copy()();

        *v1 = v15;
        v14 = v15;
      }

      if (v14)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_10046EBD8(sub_10046ED10);
}

uint64_t sub_10046E9B0(uint64_t a1)
{
  v3 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100471100(a1, v6);
  v7 = v1 + 1;
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019A28C(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_10019A28C(v10 > 1, v11 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v11 + 1;
  result = sub_1004711C0(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
  v1[1] = v8;
  if (*v1)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v11)
    {
      result = swift_isUniquelyReferenced_native();
      v13 = *v1;
      if ((result & 1) == 0)
      {
        if (!v13)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v14 = _HashTable.copy()();

        *v1 = v14;
        v13 = v14;
      }

      if (v13)
      {
        return _HashTable.UnsafeHandle.subscript.setter();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_10046EBD8(sub_10046EDAC);
}

uint64_t sub_10046EBD8(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v4 || *(v5 + 16) >= 0x10uLL)
  {
    v7 = static _HashTable.scale(forCapacity:)();
    if (v4 <= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v6 = sub_10046EC88(v5, v8, 0, v4, a1);
  }

  else
  {
    v6 = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_10046EC88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  v9 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v9 <= v8)
  {
    v9 = v8;
  }

  if (v9 <= a4)
  {
    v9 = a4;
  }

  if (v9 >= 5)
  {
    v11 = _HashTable.init(scale:reservedScale:)();
    a5(a1, v11 + 16, v11 + 32);
    return v11;
  }

  return result;
}

void sub_10046EDAC(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for UUID();
  v6 = *(type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0) - 8);
  sub_10046F068(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

void sub_10046EE50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = type metadata accessor for UUID();
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_100471080(&qword_100AD4B40, &type metadata accessor for UUID);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          _HashTable.BucketIterator.advance()();
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_10046F068(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v50 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v42 - v10;
  v48 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  __chkstk_darwin(v48);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v42 - v15;
  v51 = a2;
  if (!a2)
  {
    return;
  }

  if (v51 < 0)
  {
    goto LABEL_30;
  }

  v16 = 0;
  v45 = *(v14 + 72);
  v46 = (v7 + 32);
  v44 = (v7 + 8);
  while (1)
  {
    v17 = v59;
    sub_100471100(v50 + v45 * v16, v59);
    Hasher.init(_seed:)();
    sub_100471100(v17, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v19 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v12[8];
      v21 = sub_1000F24EC(&qword_100AE4CA8);
      v22 = v43;
      (*v46)(v43, &v12[*(v21 + 48)], v6);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v20 >> 6);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20 & 1);
      v23 = v22;
      goto LABEL_20;
    }

    v24 = *(v12 + 1);
    v25 = v12[16];
    v26 = sub_1000F24EC(&qword_100AE4CB0);
    (*v46)(v49, &v12[*(v26 + 48)], v6);
    Hasher._combine(_:)(0);
    v27 = v25 >> 5;
    if (v25 >> 5 <= 1)
    {
      if (v27)
      {
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v19);
        Hasher._combine(_:)(v24);
        Hasher._combine(_:)(v25 & 1);
        goto LABEL_19;
      }

      v28 = 0;
      goto LABEL_14;
    }

    if (v27 == 2)
    {
      v28 = 2;
LABEL_14:
      Hasher._combine(_:)(v28);
      v29 = v19;
      goto LABEL_15;
    }

    if (v27 != 3)
    {
      Hasher._combine(_:)(4uLL);
      v30 = v19;
      goto LABEL_18;
    }

    Hasher._combine(_:)(3uLL);
    String.hash(into:)();

    if ((v19 & 0xFF00) == 0x300)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    Hasher._combine(_:)(1u);
    v29 = BYTE1(v19);
LABEL_15:
    Hasher._combine(_:)(v29);
LABEL_16:
    v30 = v24;
LABEL_18:
    Hasher._combine(_:)(v30);
LABEL_19:
    v23 = v49;
LABEL_20:
    sub_100471080(&qword_100AD4B40, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*v44)(v23, v6);
    v31 = Hasher._finalize()();
    v32 = 1 << *a3;
    v33 = __OFSUB__(v32, 1);
    v34 = v32 - 1;
    if (v33)
    {
      break;
    }

    v35 = v34 & v31;
    v36 = v47;
    v37 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v39 = v38;
    v41 = v40;
    sub_100471164(v59);
    v52 = a3;
    v53 = v36;
    v54 = v35;
    v55 = v37;
    v56 = v39;
    v57 = v41;
    v58 = 0;
    while (v55)
    {
      _HashTable.BucketIterator.advance()();
    }

    _HashTable.BucketIterator.currentValue.setter();
    if (++v16 == v51)
    {
      return;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10046F624(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v29 = a2;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100471080(&qword_100AD4B40, &type metadata accessor for UUID);
  v28[1] = a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = _HashTable.BucketIterator.currentValue.getter();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

Swift::Int sub_10046F874(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v80 = a2;
  v8 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  __chkstk_darwin(v14);
  v76 = (&v71 - v15);
  __chkstk_darwin(v16);
  v18 = &v71 - v17;
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  Hasher.init(_seed:)();
  v77 = a1;
  sub_1007EED30(&v86);
  result = Hasher._finalize()();
  v23 = 1 << *a4;
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (!v24)
  {
    v26 = v25 & result;
    v27 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v86 = a4;
    *(&v86 + 1) = a5;
    *&v87 = v26;
    *(&v87 + 1) = v27;
    *&v88 = v28;
    *(&v88 + 1) = v29;
    v89 = 0;
    v30 = _HashTable.BucketIterator.currentValue.getter();
    v31 = v87;
    v82 = v86;
    v83 = v87;
    v84 = v88;
    v85 = v89;
    if (v32)
    {
      return v30;
    }

    v79 = *(v9 + 72);
    v81 = v8;
    while (1)
    {
      v78 = v31;
      sub_100471100(v80 + v79 * v30, v21);
      sub_100471100(v21, v18);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v35 = v18;
      if (EnumCaseMultiPayload == 1 || (v36 = *(v18 + 1), v74 = *v18, v72 = v36, LODWORD(v75) = v18[16], v37 = sub_1000F24EC(&qword_100AE4CB0), v38 = *(v37 + 48), v39 = type metadata accessor for UUID(), v40 = *(*(v39 - 8) + 8), v40(&v18[v38], v39), v41 = v18, v42 = v30, v43 = v13, v44 = v21, v45 = v76, sub_100471100(v77, v76), v46 = swift_getEnumCaseMultiPayload(), v35 = v45, v21 = v44, v13 = v43, v30 = v42, v18 = v41, v46 == 1))
      {
        sub_100471164(v35);
        sub_1004711C0(v21, v13);
        v47 = swift_getEnumCaseMultiPayload();
        v48 = v13;
        if (v47 != 1 || (v75 = *v13, v49 = v13[8], v50 = sub_1000F24EC(&qword_100AE4CA8), v51 = *(v50 + 48), v52 = type metadata accessor for UUID(), v53 = *(*(v52 - 8) + 8), v53(&v13[v51], v52), v54 = v73, sub_100471100(v77, v73), v55 = swift_getEnumCaseMultiPayload(), v48 = v54, v55 != 1))
        {
LABEL_5:
          sub_100471164(v48);
          goto LABEL_6;
        }

        v74 = *v73;
        v56 = v73[8];
        v53(&v73[*(v50 + 48)], v52);
        v57 = v49 >> 6;
        if (v49 >> 6 > 1)
        {
          if (v57 == 2)
          {
            if ((v56 & 0xC0) != 0x80)
            {
              goto LABEL_6;
            }
          }

          else if (v56 <= 0xBF)
          {
            goto LABEL_6;
          }
        }

        else if (v57)
        {
          if ((v56 & 0xC0) != 0x40)
          {
            goto LABEL_6;
          }
        }

        else if (v56 >= 0x40)
        {
          goto LABEL_6;
        }

        if (v75 == v74 && ((v56 ^ v49) & 1) == 0)
        {
          return v30;
        }
      }

      else
      {
        v58 = v76[1];
        v71 = *v76;
        v59 = *(v76 + 16);
        v40(v76 + *(v37 + 48), v39);
        v60 = v75 >> 5;
        if (v75 >> 5 <= 1)
        {
          if (v60)
          {
            sub_100471164(v21);
            if ((v59 & 0xE0) != 0x20)
            {
              goto LABEL_6;
            }

            goto LABEL_37;
          }

          sub_100471164(v21);
          if (v59 > 0x1F)
          {
            goto LABEL_6;
          }

          goto LABEL_31;
        }

        if (v60 == 2)
        {
          sub_100471164(v21);
          if ((v59 & 0xE0) != 0x40)
          {
            goto LABEL_6;
          }

LABEL_31:
          if (v71 != v74)
          {
            goto LABEL_6;
          }

          goto LABEL_37;
        }

        if (v60 == 3)
        {
          v48 = v21;
          if ((v59 & 0xE0) != 0x60)
          {
            goto LABEL_5;
          }

          if (v74 <= 4u)
          {
            v63 = 0x616964656DLL;
            if (v74 != 3)
            {
              v63 = 0x6563616C70;
            }

            if (v74 == 2)
            {
              v63 = 0x6F69647561;
            }

            v64 = 0x6F746F6870;
            if (v74)
            {
              v64 = 0x6F65646976;
            }

            if (v74 <= 1u)
            {
              v62 = v64;
            }

            else
            {
              v62 = v63;
            }

            v61 = 0xE500000000000000;
          }

          else if (v74 > 7u)
          {
            if (v74 == 8)
            {
              v62 = 0x4D664F6574617473;
              v61 = 0xEB00000000646E69;
            }

            else if (v74 == 9)
            {
              v61 = 0xE700000000000000;
              v62 = 0x676E6977617264;
            }

            else
            {
              v61 = 0xE800000000000000;
              v62 = 0x69747465666E6F63;
            }
          }

          else if (v74 == 5)
          {
            v62 = 0x61737265766E6F63;
            v61 = 0xEC0000006E6F6974;
          }

          else if (v74 == 6)
          {
            v61 = 0xE800000000000000;
            v62 = 0x7974697669746361;
          }

          else
          {
            v61 = 0xEA00000000006E6FLL;
            v62 = 0x697463656C666572;
          }

          if (v71 <= 4u)
          {
            if (v71 <= 1u)
            {
              v67 = v71 == 0;
              v68 = 0x6F746F6870;
              v69 = 0x6F65646976;
            }

            else
            {
              if (v71 == 2)
              {
                v66 = 0xE500000000000000;
                v65 = 0x6F69647561;
                goto LABEL_82;
              }

              v67 = v71 == 3;
              v68 = 0x616964656DLL;
              v69 = 0x6563616C70;
            }

            if (v67)
            {
              v65 = v68;
            }

            else
            {
              v65 = v69;
            }

            v66 = 0xE500000000000000;
          }

          else if (v71 > 7u)
          {
            if (v71 == 8)
            {
              v65 = 0x4D664F6574617473;
              v66 = 0xEB00000000646E69;
            }

            else
            {
              if (v71 == 9)
              {
                v65 = 0x676E6977617264;
              }

              else
              {
                v65 = 0x69747465666E6F63;
              }

              if (v71 == 9)
              {
                v66 = 0xE700000000000000;
              }

              else
              {
                v66 = 0xE800000000000000;
              }
            }
          }

          else if (v71 == 5)
          {
            v65 = 0x61737265766E6F63;
            v66 = 0xEC0000006E6F6974;
          }

          else
          {
            if (v71 == 6)
            {
              v65 = 0x7974697669746361;
            }

            else
            {
              v65 = 0x697463656C666572;
            }

            if (v71 == 6)
            {
              v66 = 0xE800000000000000;
            }

            else
            {
              v66 = 0xEA00000000006E6FLL;
            }
          }

LABEL_82:
          if (v62 == v65 && v61 == v66)
          {

            sub_100471164(v21);
          }

          else
          {
            v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100471164(v21);
            if ((v70 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if ((v74 & 0xFF00) == 0x300)
          {
            if (BYTE1(v71) != 3)
            {
              goto LABEL_6;
            }
          }

          else if (BYTE1(v71) == 3 || ((v71 ^ v74) & 0xFF00) != 0)
          {
            goto LABEL_6;
          }

LABEL_37:
          if (v72 == v58)
          {
            return v30;
          }

          goto LABEL_6;
        }

        sub_100471164(v21);
        if ((v59 & 0xE0) == 0x80 && v74 == v71)
        {
          return v30;
        }
      }

LABEL_6:
      _HashTable.BucketIterator.advance()();
      v90 = v82;
      v91 = v83;
      v92 = v84;
      v93 = v85;
      v31 = v83;
      v30 = _HashTable.BucketIterator.currentValue.getter();
      if (v33)
      {
        return v30;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004701D0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v49 = a3;
  v56 = a3;
  v48 = a4;
  v57 = a4;
  sub_1000F24EC(&qword_100AE4BC0);
  sub_10000B58C(&qword_100AE4BF0, &qword_100AE4BC0);
  sub_1000F24EC(&unk_100AE4C00);
  dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
  v14 = v64;
  if (v64 != 2)
  {
    sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
    dispatch thunk of Collection.startIndex.getter();
    sub_10000B58C(&qword_100AE4BF8, &qword_100AE4BC0);
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    return v14 & 1;
  }

  v55 = sub_10000B58C(&qword_100AE4BE8, &qword_100AE4BC0);
  result = dispatch thunk of Collection.indices.getter();
  v17 = *(&v64 + 1);
  v16 = v64;
  if (v64 == *(&v64 + 1))
  {
LABEL_3:
    dispatch thunk of Collection.endIndex.getter();
    v14 = 1;
    return v14 & 1;
  }

  if (*(&v64 + 1) >= v64)
  {
    v18 = 0;
    v54 = (v9 + 16);
    v53 = (v9 + 8);
    v44 = a1;
    v43 = *(&v64 + 1);
    while (1)
    {
      if (v16 >= v17)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v45 = v18;
      v47 = v16;
      v63 = v16;
      v19 = dispatch thunk of Collection.subscript.read();
      v51 = *v54;
      v51(v13);
      v19(v58, 0);
      v20 = v49;
      sub_100471080(&qword_100AD4B40, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = 1 << *v20;
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v24 = v23 & result;
      v25 = v20;
      v26 = v48;
      v27 = _HashTable.UnsafeHandle._startIterator(bucket:)();
      v29 = v28;
      v46 = v30;
      v50 = *v53;
      v50(v13, v8);
      *&v59 = v25;
      *(&v59 + 1) = v26;
      *&v60 = v24;
      *(&v60 + 1) = v27;
      *&v61 = v29;
      *(&v61 + 1) = v46;
      v62 = 0;
      v67 = 0;
      v64 = v59;
      v65 = v60;
      v66 = v61;
      _HashTable.BucketIterator.currentValue.getter();
      if ((v31 & 1) == 0)
      {
        break;
      }

LABEL_12:
      v41 = v45;
      result = _HashTable.BucketIterator.currentValue.setter();
      v22 = __OFADD__(v41, 1);
      v18 = v41 + 1;
      if (v22)
      {
        goto LABEL_19;
      }

      v16 = v47 + 1;
      v17 = v43;
      if (v47 + 1 == v43)
      {
        goto LABEL_3;
      }
    }

    while (1)
    {
      dispatch thunk of Collection.startIndex.getter();
      sub_10000B58C(&qword_100AE4BF8, &qword_100AE4BC0);
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v32 = dispatch thunk of Collection.subscript.read();
      v33 = v8;
      v34 = v51;
      v51(v13);
      v32(v58, 0);
      v35 = a2;
      v36 = dispatch thunk of Collection.subscript.read();
      v37 = v52;
      v34(v52);
      v8 = v33;
      (v36)(v58, 0);
      sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
      LOBYTE(v36) = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = v37;
      v39 = v50;
      v50(v38, v33);
      v39(v13, v33);
      if (v36)
      {
        break;
      }

      _HashTable.BucketIterator.advance()();
      v64 = v59;
      v65 = v60;
      v66 = v61;
      v67 = v62;
      _HashTable.BucketIterator.currentValue.getter();
      a2 = v35;
      if (v40)
      {
        goto LABEL_12;
      }
    }

    v14 = 0;
    *v44 = v47;
    return v14 & 1;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_10047089C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v43 = a1;
  v7 = type metadata accessor for UUID();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v32 - v12;
  if (a2)
  {
    if (a2 < 0)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      v32 = v4;
      v14 = 0;
      v15 = (v36 + 8);
      v34 = a2;
      v33 = a3;
      while (1)
      {
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        v37 = v14 + 1;
        v16 = *(v36 + 72);
        v42 = v14;
        v53 = v16;
        v17 = *(v36 + 16);
        v44 = v43 + v16 * v14;
        v17(v13, v11);
        sub_100471080(&qword_100AD4B40, &type metadata accessor for UUID);
        v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v19 = 1 << *a3;
        v20 = __OFSUB__(v19, 1);
        v21 = v19 - 1;
        if (v20)
        {
          goto LABEL_15;
        }

        v41 = v21 & v18;
        v22 = v35;
        v23 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v39 = v24;
        v40 = v23;
        v38 = v25;
        v26 = *v15;
        (*v15)(v13, v7);
        *&v45 = a3;
        *(&v45 + 1) = v22;
        *&v46 = v41;
        *(&v46 + 1) = v40;
        *&v47 = v39;
        *(&v47 + 1) = v38;
        v48 = 0;
        v52 = 0;
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v27 = _HashTable.BucketIterator.currentValue.getter();
        v28 = v43;
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_4:
        _HashTable.BucketIterator.currentValue.setter();
        v14 = v37;
        a3 = v33;
        if (v37 == v34)
        {
          return;
        }
      }

      while (1)
      {
        (v17)(v13, v28 + v27 * v53, v7);
        (v17)(v9, v44, v7);
        sub_100471080(&qword_100AD9220, &type metadata accessor for UUID);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26(v9, v7);
        v26(v13, v7);
        if (v30)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v49 = v45;
        v50 = v46;
        v51 = v47;
        v52 = v48;
        v27 = _HashTable.BucketIterator.currentValue.getter();
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }
  }
}

size_t sub_100470C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, size_t *a3@<X8>)
{
  result = sub_10046E468(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_100470C68(uint64_t a1)
{
  v37 = sub_1000F24EC(&qword_100AD1428);
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = v31 - v5;
  __chkstk_darwin(v6);
  v34 = v31 - v7;
  v8 = type metadata accessor for UUID();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = sub_1003E7610(*(a1 + 16), 0);
    v39 = sub_1001C1C38(v40, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v11, a1);
    v33 = v40[4];

    sub_100014FF8();
    if (v39 != v11)
    {
      __break(1u);

      __break(1u);
      return;
    }
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v40[0] = v12;
  sub_10046C140(v40);
  v13 = v40[0];
  v14 = v40[0][2];
  if (v14)
  {
    v40[0] = _swiftEmptyArrayStorage;
    sub_100199D3C(0, v14, 0);
    v15 = v40[0];
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v31[1] = v13;
    v17 = v13 + v16;
    v18 = *(v2 + 72);
    v19 = (v38 + 32);
    v32 = (v38 + 16);
    v33 = v18;
    v20 = v34;
    do
    {
      v39 = v14;
      sub_1000082B4(v17, v20, &qword_100AD1428);
      v21 = v15;
      v22 = v8;
      v23 = v35;
      sub_1000082B4(v20, v35, &qword_100AD1428);
      v24 = v36;
      v25 = *(v37 + 48);
      v26 = *(v23 + v25);
      v27 = v23;
      v8 = v22;
      v15 = v21;
      v28 = *v19;
      (*v19)(v36, v27, v8);
      *(v24 + v25) = v26;
      (*v32)(v10, v24, v8);
      sub_100004F84(v24, &qword_100AD1428);
      sub_100004F84(v20, &qword_100AD1428);
      v40[0] = v15;
      v30 = *(v15 + 2);
      v29 = *(v15 + 3);
      if (v30 >= v29 >> 1)
      {
        sub_100199D3C(v29 > 1, v30 + 1, 1);
        v15 = v40[0];
      }

      *(v15 + 2) = v30 + 1;
      v28(v15 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, v10, v8);
      v17 += v33;
      v14 = v39 - 1;
    }

    while (v39 != 1);
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  sub_10046AE4C(v15);
}

uint64_t sub_100471080(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004710C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10047089C(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6 & 1;
    *(a3 + 8) = v7;
  }
}

uint64_t sub_100471100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100471164(uint64_t a1)
{
  v2 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004711C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100471238()
{
  result = qword_100AE4CB8;
  if (!qword_100AE4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4CB8);
  }

  return result;
}

uint64_t sub_10047128C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

char *sub_100471300(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v9);
  v10 = sub_1000F24EC(&unk_100AE4D30);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView;
  v15 = [objc_opt_self() effectWithStyle:6];
  v16 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v15];

  *&v4[v14] = v16;
  v17 = OBJC_IVAR____TtC7Journal13ImageBlurView_backingImageView;
  *&v4[v17] = [objc_allocWithZone(UIImageView) init];
  v18 = OBJC_IVAR____TtC7Journal13ImageBlurView__backgroundImage;
  v28 = 0;
  UIView.Invalidations.Layout.init()();
  sub_1000F24EC(&qword_100AE4D18);
  sub_100471C24();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v11 + 32))(&v4[v18], v13, v10);
  v19 = type metadata accessor for ImageBlurView();
  v27.receiver = v4;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v20 setOverrideUserInterfaceStyle:2];
  v21 = OBJC_IVAR____TtC7Journal13ImageBlurView_backingImageView;
  v22 = *&v20[OBJC_IVAR____TtC7Journal13ImageBlurView_backingImageView];
  [v20 bounds];
  [v22 setFrame:?];

  [*&v20[v21] setAutoresizingMask:18];
  [*&v20[v21] setContentMode:2];
  [v20 addSubview:*&v20[v21]];
  v23 = OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView;
  v24 = *&v20[OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView];
  [v20 bounds];
  [v24 setFrame:?];

  [*&v20[v23] setAutoresizingMask:18];
  [v20 addSubview:*&v20[v23]];

  return v20;
}

uint64_t sub_10047164C(void *a1)
{
  v13[0] = a1;
  v2 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v2);
  v3 = sub_1000F24EC(&unk_100AE4D30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - v5;
  v7 = OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView;
  v8 = [objc_opt_self() effectWithStyle:6];
  v9 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v8];

  *(v1 + v7) = v9;
  v10 = OBJC_IVAR____TtC7Journal13ImageBlurView_backingImageView;
  *(v1 + v10) = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal13ImageBlurView__backgroundImage;
  v13[1] = 0;
  UIView.Invalidations.Layout.init()();
  sub_1000F24EC(&qword_100AE4D18);
  sub_100471C24();
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v4 + 32))(v1 + v11, v6, v3);
  (*(v4 + 8))(v1 + v11, v3);
  type metadata accessor for ImageBlurView();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1004719C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ImageBlurView()
{
  result = qword_100AE4D00;
  if (!qword_100AE4D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100471AEC()
{
  sub_100471B8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100471B8C()
{
  if (!qword_100AE4D10)
  {
    sub_1000F2A18(&qword_100AE4D18);
    type metadata accessor for UIView.Invalidations.Layout();
    sub_100471C24();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE4D10);
    }
  }
}

unint64_t sub_100471C24()
{
  result = qword_100AE4D20;
  if (!qword_100AE4D20)
  {
    sub_1000F2A18(&qword_100AE4D18);
    sub_100471CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4D20);
  }

  return result;
}

unint64_t sub_100471CA8()
{
  result = qword_100AE4D28;
  if (!qword_100AE4D28)
  {
    sub_10003B9B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE4D28);
  }

  return result;
}

uint64_t sub_100471D00@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100471D80(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_100471E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100471EA0(uint64_t a1)
{
  v2 = sub_1004793E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100471EDC(uint64_t a1)
{
  v2 = sub_1004793E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100471F18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F24EC(&qword_100AE4DD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000CA14(a1, a1[3]);
  sub_1004793E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BA7C(a1);
  }

  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000BA7C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_100472094(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4DE8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_1004793E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004721D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1004793D0(v4, v5);
}

uint64_t sub_100472224(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_100034538(v5, v6);
}

uint64_t sub_1004722E0()
{
  v1 = v0;
  v84 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v84);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v79 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v86 = v6;
  *&v87 = v7;
  __chkstk_darwin(v6);
  v88 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem(0);
  __chkstk_darwin(v9);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EntryListType();
  __chkstk_darwin(v12 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v79 - v17;
  v19 = [v1 searchBar];
  v20 = [v19 searchTextField];

  v21 = [v20 text];
  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25;
  }

  if (v26)
  {
    return 0;
  }

  v28 = [v1 searchBar];
  v29 = [v28 searchTextField];

  v30 = [v29 tokens];
  v83 = sub_1000065A8(0, &qword_100AD5178);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      v53 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_initialEntryListType;
      v54 = sub_1000F24EC(&qword_100AD47A0);
      (*(*(v54 - 8) + 56))(v18, 2, 2, v54);
      LOBYTE(v53) = sub_100023858(v1 + v53, v18);
      sub_100479D70(v18, type metadata accessor for EntryListType);
      if (v53 & 1) != 0 || (sub_100472CE8())
      {
        return 1;
      }
    }

    v33 = [v1 searchBar];
    v34 = [v33 searchTextField];

    v35 = [v34 tokens];
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v88;

    v39 = v87;
    if (v37 > 1)
    {
      return 0;
    }

    v40 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
    swift_beginAccess();
    sub_100022B50(v1 + v40, v14);
    v41 = sub_1000F24EC(&qword_100AD47A0);
    v42 = (*(*(v41 - 8) + 48))(v14, 2, v41);
    if (v42)
    {
      if (v42 != 1)
      {
        return 0;
      }

      UUID.init()();
      v43 = &v11[*(v9 + 20)];
      *v43 = 0;
      v43[8] = 0;
      sub_1005180CC(&v104);
      sub_100479D70(v11, type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem);
      v44 = v112;
      v46 = v110;
      v45 = v111;
      v47 = v108;
      v48 = v109;
      v49 = v106;
      v50 = v107;
      v51 = v104;
      v52 = v105;
    }

    else
    {
      v55 = v86;
      v56 = (*(v39 + 32))(v38, v14, v86);
      __chkstk_darwin(v56);
      *(&v79 - 2) = v38;
      *(&v79 - 1) = v57;
      v58 = v39;
      NSManagedObjectContext.performAndWait<A>(_:)();
      v59 = v85;
      sub_100479D00(v3, v85);
      v60 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
      if ((*(*(v60 - 1) + 48))(v59, 1, v60) == 1)
      {
        (*(v58 + 8))(v38, v55);
        sub_100004F84(v59, &qword_100AD6880);
        return 0;
      }

      v84 = UUID.uuidString.getter();
      v61 = (v59 + v60[6]);
      v62 = v61[1];
      v81 = *v61;
      v82 = v63;
      v80 = v62;
      v104 = 0xD000000000000021;
      v105 = 0x80000001008E39F0;
      sub_100018498(&qword_100AE19B0, &type metadata accessor for UUID);

      v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v64);

      v65._countAndFlagsBits = 39;
      v65._object = 0xE100000000000000;
      String.append(_:)(v65);
      v47 = v104;
      v48 = v105;
      v66 = (v59 + v60[8]);
      v67 = v66[1];
      v11 = *(v59 + v60[7]);
      v68 = (v59 + v60[9]);
      *&v69 = v11;
      *(&v69 + 1) = *v68;
      v79 = v69;
      v44 = v68[1];
      v70 = *(v58 + 8);
      v14 = v58 + 8;
      *&v69 = *v66;
      v87 = v69;

      v71 = v11;

      v70(v88, v86);
      sub_100479D70(v59, type metadata accessor for CustomJournalSearchSuggestionItem);
      *&v46 = v87;
      v45 = v79;
      v50 = v80;
      v49 = v81;
      v52 = v82;
      v51 = v84;
      *(&v46 + 1) = v67;
    }

    v84 = v51;
    v100[0] = v51;
    v100[1] = v52;
    v82 = v52;
    v100[2] = v49;
    v100[3] = v50;
    v100[4] = v47;
    v100[5] = v48;
    v101 = v46;
    v102 = v45;
    v103 = v44;
    v72 = [v1 searchBar];
    v73 = [v72 searchTextField];

    v74 = [v73 tokens];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      break;
    }

    v1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_50;
    }

LABEL_25:
    v75 = 0;
    v9 = v18 & 0xC000000000000001;
    v3 = (v18 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v9)
      {
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v75 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v76 = *(v18 + 8 * v75 + 32);
      }

      v11 = v76;
      v77 = (v75 + 1);
      if (__OFADD__(v75, 1))
      {
        break;
      }

      v78 = [v76 representedObject];
      if (v78)
      {
        v14 = v78;
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
      }

      v99[0] = v97;
      v99[1] = v98;
      if (*(&v98 + 1))
      {
        if (swift_dynamicCast())
        {
          v89[2] = v93;
          v89[3] = v94;
          v89[4] = v95;
          v90 = v96;
          v89[0] = v91;
          v89[1] = v92;
          if (v91 == __PAIR128__(v82, v84))
          {

            sub_1001A911C(v89);
LABEL_43:

            sub_1001A911C(v100);
            return 1;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          sub_1001A911C(v89);
          if (v14)
          {
            goto LABEL_43;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_100004F84(v99, &qword_100AD13D0);
      }

      ++v75;
      if (v77 == v1)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v1 = _CocoaArrayWrapper.endIndex.getter();
  if (v1)
  {
    goto LABEL_25;
  }

LABEL_50:

  sub_1001A911C(v100);
  return 0;
}

uint64_t sub_100472CE8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5CF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = type metadata accessor for EntryListType();
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
  swift_beginAccess();
  sub_100022B50(v0 + v14, v13);
  if (qword_100ACF9D0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v8, qword_100B2F468);
  v16 = *(v5 + 48);
  sub_100022B50(v13, v7);
  sub_100022B50(v15, &v7[v16]);
  v17 = sub_1000F24EC(&qword_100AD47A0);
  v18 = *(*(v17 - 8) + 48);
  v19 = v18(v7, 2, v17);
  if (!v19)
  {
    sub_100022B50(v7, v10);
    if (!v18(&v7[v16], 2, v17))
    {
      (*(v2 + 32))(v4, &v7[v16], v1);
      v21 = static UUID.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v4, v1);
      sub_100479D70(v13, type metadata accessor for EntryListType);
      v22(v10, v1);
      if ((v21 & 1) == 0)
      {
        sub_100479D70(v7, type metadata accessor for EntryListType);
        v20 = 0;
        return v20 & 1;
      }

      goto LABEL_12;
    }

    sub_100479D70(v13, type metadata accessor for EntryListType);
    (*(v2 + 8))(v10, v1);
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    sub_100479D70(v13, type metadata accessor for EntryListType);
    if (v18(&v7[v16], 2, v17) == 1)
    {
      goto LABEL_12;
    }

LABEL_10:
    sub_100004F84(v7, &qword_100AD5CF0);
    v20 = 0;
    return v20 & 1;
  }

  sub_100479D70(v13, type metadata accessor for EntryListType);
  if (v18(&v7[v16], 2, v17) != 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  sub_100479D70(v7, type metadata accessor for EntryListType);
  if (qword_100AD0A58 != -1)
  {
    swift_once();
  }

  v20 = sub_100771E70() ^ 1;
  return v20 & 1;
}

uint64_t sub_100473168(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SuggestedSearchController();
  v16.receiver = v2;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, "viewWillAppear:", a1 & 1);
  [objc_opt_self() prepare];
  v8 = *&v2[OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v8;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1003E9628(0, 0, v6, &unk_10095DA60, v12);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController;
    if ([*(result + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController) isEditing])
    {
      sub_10041B1F4(0);
    }

    else
    {
      sub_100016804(1);
    }

    *(*(v14 + v15) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive) = 1;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100473394(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SuggestedSearchController();
  objc_msgSendSuper2(&v11, "viewIsAppearing:", a1 & 1);
  v3 = &v1[OBJC_IVAR____TtC7Journal25SuggestedSearchController_stateToRestore];
  swift_beginAccess();
  v4 = v3[1];
  if (v4 != 1)
  {
    v5 = *v3;
    sub_1004793D0(*v3, v3[1]);

    sub_100034538(v5, v4);
    if (v4)
    {
      v6 = [v1 searchBar];
      v7 = String._bridgeToObjectiveC()();

      [v6 setText:v7];
    }
  }

  v8 = *v3;
  v9 = v3[1];
  *v3 = xmmword_100945C40;
  sub_100034538(v8, v9);
  return sub_100473AF8();
}

uint64_t sub_1004735D8(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SuggestedSearchController();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController;
    if (sub_100303598())
    {
      sub_10041C954(0);
    }

    *(*(v4 + v5) + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_isSearchActive) = 0;
    sub_100016804(1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004736DC(char a1)
{
  v3 = type metadata accessor for EntryListType();
  __chkstk_darwin(v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v16[-v7];
  v9 = type metadata accessor for SuggestedSearchController();
  v17.receiver = v1;
  v17.super_class = v9;
  objc_msgSendSuper2(&v17, "viewDidDisappear:", a1 & 1);
  v10 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
  swift_beginAccess();
  sub_100022B50(&v1[v10], v8);
  v11 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_initialEntryListType;
  v12 = sub_100023858(v8, &v1[OBJC_IVAR____TtC7Journal25SuggestedSearchController_initialEntryListType]);
  result = sub_100479D70(v8, type metadata accessor for EntryListType);
  if ((v12 & 1) == 0)
  {
    sub_100022B50(&v1[v11], v8);
    swift_beginAccess();
    sub_100479A7C(v8, &v1[v10]);
    swift_endAccess();
    sub_100479D70(v8, type metadata accessor for EntryListType);
    v14 = *&v1[OBJC_IVAR____TtC7Journal25SuggestedSearchController_entryListViewModel];
    sub_100022B50(&v1[v10], v5);
    v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_100479AE0(v5, v14 + v15);
    return swift_endAccess();
  }

  return result;
}

id sub_1004738E8(uint64_t a1, uint64_t a2)
{
  result = [v2 presentingViewController];
  if (result)
  {
    v6 = result;
    sub_10005D974(a2, v14);
    v7 = v15;
    if (v15)
    {
      v8 = sub_10000CA14(v14, v15);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_10000BA7C(v14);
    }

    else
    {
      v13 = 0;
    }

    [v6 showViewController:a1 sender:v13];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100473AF8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD6880);
  __chkstk_darwin(v2);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v58 - v6;
  v62 = type metadata accessor for UUID();
  v64 = *(v62 - 8);
  __chkstk_darwin(v62);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem(0);
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EntryListType();
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 searchBar];
  v16 = [v15 searchTextField];

  v17 = [v16 tokens];
  sub_1000065A8(0, &qword_100AD5178);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    v21 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType;
    swift_beginAccess();
    sub_100022B50(v1 + v21, v14);
    v22 = sub_1000F24EC(&qword_100AD47A0);
    result = (*(*(v22 - 8) + 48))(v14, 2, v22);
    if (result)
    {
      if (result == 1)
      {
        UUID.init()();
        v23 = &v10[*(v8 + 20)];
        *v23 = 0;
        v23[8] = 0;
        sub_1005180CC(&v74);
        sub_100479D70(v10, type metadata accessor for CustomRecentlyDeletedSearchSuggestionItem);
        v24 = [v1 searchBar];
        v25 = [v24 searchTextField];

        v26 = sub_100517E30();
        v27 = String._bridgeToObjectiveC()();
        v28 = [objc_opt_self() tokenWithIcon:v26 text:v27];

        v70 = v76;
        v71 = v77;
        v72 = v78;
        v73 = v79;
        v68 = v74;
        v69 = v75;
        sub_1001A9170(&v74, v66);
        [v28 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        [v25 insertToken:v28 atIndex:0];

        return sub_1001A911C(&v74);
      }
    }

    else
    {
      v30 = v63;
      v29 = v64;
      v31 = v14;
      v32 = v62;
      (*(v64 + 32))(v63, v31, v62);
      v33 = sub_100472CE8();
      if (v33)
      {
        return (*(v29 + 8))(v30, v32);
      }

      else
      {
        __chkstk_darwin(v33);
        *(&v58 - 2) = v30;
        *(&v58 - 1) = v34;
        NSManagedObjectContext.performAndWait<A>(_:)();
        v35 = v4;
        v36 = v61;
        sub_100479D00(v35, v61);
        v37 = v30;
        v38 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
        if ((*(*(v38 - 1) + 48))(v36, 1, v38) == 1)
        {
          sub_100004F84(v36, &qword_100AD6880);
          return (*(v64 + 8))(v37, v32);
        }

        else
        {
          v39 = UUID.uuidString.getter();
          v59 = v40;
          v60 = v39;
          v41 = (v36 + v38[6]);
          v42 = v41[1];
          v58 = *v41;
          *&v74 = 0xD000000000000021;
          *(&v74 + 1) = 0x80000001008E39F0;
          sub_100018498(&qword_100AE19B0, &type metadata accessor for UUID);

          v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v43);

          v44._countAndFlagsBits = 39;
          v44._object = 0xE100000000000000;
          String.append(_:)(v44);
          v45 = (v36 + v38[8]);
          v46 = *v45;
          v47 = v45[1];
          v48 = *(v36 + v38[7]);
          v49 = (v36 + v38[9]);
          v51 = *v49;
          v50 = v49[1];
          *&v68 = v60;
          *(&v68 + 1) = v59;
          *&v69 = v58;
          *(&v69 + 1) = v42;
          v70 = v74;
          *&v71 = v46;
          *(&v71 + 1) = v47;
          *&v72 = v48;
          *(&v72 + 1) = v51;
          v73 = v50;
          v74 = v68;
          v75 = v69;
          v79 = v50;
          v77 = v71;
          v78 = v72;
          v76 = v70;

          v52 = v48;
          sub_100479D70(v36, type metadata accessor for CustomJournalSearchSuggestionItem);
          v53 = [v1 searchBar];
          v54 = [v53 searchTextField];

          v55 = sub_100517E30();
          v56 = String._bridgeToObjectiveC()();

          v57 = [objc_opt_self() tokenWithIcon:v55 text:v56];

          v66[3] = v77;
          v66[4] = v78;
          v67 = v79;
          v66[0] = v74;
          v66[1] = v75;
          v66[2] = v76;
          sub_1001A9170(&v68, &v65);
          [v57 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          [v54 insertToken:v57 atIndex:0];

          sub_1001A911C(&v68);
          return (*(v64 + 8))(v63, v32);
        }
      }
    }
  }

  return result;
}

void sub_1004742F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {

    v7 = [v3 searchBar];
    v8 = [v7 searchTextField];

    v9 = [v8 tokens];
    sub_1000065A8(0, &qword_100AD5178);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = v10;
    sub_1006ADEA8(a1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 setTokens:isa];
  }

  v12 = [v4 searchBar];
  v13 = [v12 searchTextField];

  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v13 setText:{v14, v16}];
}

void sub_100474498(uint64_t a1)
{
  v2 = v1;
  v119 = type metadata accessor for Font.TextStyle();
  v4 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v124);
  v117 = (v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntryListType();
  __chkstk_darwin(v13 - 8);
  v15 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = v104 - v18;
  v20 = [v1 traitCollection];
  v21 = [v20 userInterfaceIdiom];

  if (v21)
  {
    v132 = _swiftEmptyArrayStorage;
    if ((sub_1004722E0() & 1) == 0 || (v22 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType, swift_beginAccess(), sub_100022B50(&v2[v22], v19), v23 = sub_1000F24EC(&qword_100AD47A0), (*(*(v23 - 8) + 56))(v15, 2, 2, v23), LOBYTE(v22) = sub_100023858(v19, v15), sub_100479D70(v15, type metadata accessor for EntryListType), sub_100479D70(v19, type metadata accessor for EntryListType), (v22 & 1) == 0) && (sub_100472CE8() & 1) == 0 || (v24 = sub_1002F6CE0()) == 0)
    {
      if (!a1)
      {
LABEL_42:
        sub_1000065A8(0, &qword_100AE4E10);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v2 _setSearchSuggestionGroups:isa];

        return;
      }

LABEL_18:
      v38 = *(a1 + 16);

      v39 = sub_1004722E0();
      v40 = 3;
      if (v39)
      {
        v40 = 5;
      }

      if (v40 >= v38)
      {
        v41 = v38;
      }

      else
      {
        v41 = v40;
      }

      v45 = sub_100769E40(v41, a1);
      if (v44)
      {
        v48 = v44;
        v49 = v43;
        v50 = v42;
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
          swift_unknownObjectRelease();
          v51 = _swiftEmptyArrayStorage;
        }

        v52 = *(v51 + 2);

        if (__OFSUB__(v48 >> 1, v49))
        {
          __break(1u);
        }

        else if (v52 == (v48 >> 1) - v49)
        {
          v47 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v47)
          {
LABEL_32:
            v53 = *(v47 + 2);
            if (v53)
            {
              v131 = _swiftEmptyArrayStorage;
              specialized ContiguousArray.reserveCapacity(_:)();
              v54 = (v47 + 4);
              do
              {
                sub_100086C04(v54, v128);
                v55 = v129;
                v56 = v130;
                sub_10000CA14(v128, v129);
                sub_10051826C(v55, v56);
                sub_10000BA7C(v128);
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v54 += 40;
                --v53;
              }

              while (v53);

              v57 = v131;
            }

            else
            {

              v57 = _swiftEmptyArrayStorage;
            }

            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();

            if (v57 >> 62)
            {
              sub_1000F24EC(&qword_100AE4E18);
              _bridgeCocoaArray<A>(_:)();
            }

            else
            {
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            }

            v58 = objc_allocWithZone(_UISearchSuggestionItemGroup);
            v59 = String._bridgeToObjectiveC()();

            sub_1000F24EC(&qword_100AE4E18);
            v60 = Array._bridgeToObjectiveC()().super.isa;

            v61 = [v58 initWithHeaderTitle:v59 suggestionItems:v60];

            v62 = v61;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            goto LABEL_42;
          }

          v47 = _swiftEmptyArrayStorage;
LABEL_31:
          swift_unknownObjectRelease();
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
        v44 = v48;
        v43 = v49;
        v42 = v50;
      }

      sub_100610784(v45, v42, v43, v44);
      v47 = v46;
      goto LABEL_31;
    }

    v25 = v24;
    if (v24[2] >= 3uLL)
    {
      v26 = 3;
    }

    else
    {
      v26 = v24[2];
    }

    v30 = sub_100769E40(v26, v25);
    v107 = a1;
    v105 = v2;
    v104[3] = v9;
    if (v29)
    {
      v64 = v12;
      v65 = v29;
      v66 = v28;
      v127 = v27;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v67 = swift_dynamicCastClass();
      if (!v67)
      {
        swift_unknownObjectRelease();
        v67 = _swiftEmptyArrayStorage;
      }

      v68 = *(v67 + 2);

      if (__OFSUB__(v65 >> 1, v66))
      {
        __break(1u);
      }

      else if (v68 == (v65 >> 1) - v66)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v12 = v64;
        a1 = v107;
        if (v32)
        {
          goto LABEL_50;
        }

        v32 = _swiftEmptyArrayStorage;
LABEL_49:
        swift_unknownObjectRelease();
LABEL_50:
        v69 = *(v32 + 2);
        if (v69)
        {
          v104[2] = v12;
          v131 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v121 = enum case for Font.TextStyle.footnote(_:);
          v114 = (v4 + 104);
          v104[1] = v32;
          v70 = (v32 + 6);
          while (1)
          {
            v77 = *(v70 - 2);
            v76 = *(v70 - 1);
            v78 = *v70;

            v127 = sub_1002F654C(v79, v76, v78);
            if (v77 && v77[2] == 1)
            {
              v81 = v77[5];
              v82 = v77[7];
              v83 = v77[10];
              v125 = v77[9];
              v115 = v83;
              v84 = v77[12];
              v126 = v77[11];
              v85 = v77[14];
              v122 = v82;
              v123 = v85;
              v116 = v84;
              if (!v85)
              {
                v94 = v84;

LABEL_60:
                if (v126)
                {
                  v95 = String._bridgeToObjectiveC()();
                  v72 = [objc_opt_self() _systemImageNamed:v95];

                  a1 = v107;
                }

                else
                {

                  v72 = 0;
                }

                goto LABEL_53;
              }

              v86 = v84;
              v87 = v77[13];
              v112 = v80;
              v88 = v117;
              *v117 = 0;
              *(v88 + 8) = 0;
              *(v88 + 16) = 0;
              *(v88 + 24) = v87;
              *(v88 + 32) = v85;
              *(v88 + 40) = 1;
              v120 = v81;
              v128[0] = 0x4030000000000000;
              v110 = *v114;
              v113 = v76;
              v89 = v118;
              v111 = v69;
              v90 = v119;
              v110(v118, v121);
              v109 = sub_10009BA68();

              v106 = v86;
              swift_bridgeObjectRetain_n();
              ScaledMetric.init(wrappedValue:relativeTo:)();
              v108 = *(v124 + 36);
              v128[0] = 0x4038000000000000;
              v91 = v110;
              (v110)(v89, v121, v90);
              ScaledMetric.init(wrappedValue:relativeTo:)();
              v128[0] = 0x4040000000000000;
              v92 = v90;
              v69 = v111;
              v91(v89, v121, v92);
              v76 = v113;
              ScaledMetric.init(wrappedValue:relativeTo:)();
              v93 = [objc_opt_self() currentTraitCollection];
              v72 = sub_1003AC4EC(v93);

              a1 = v107;
              sub_100479D70(v88, type metadata accessor for JournalMembershipBadge);
              if (!v72)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v71 = String._bridgeToObjectiveC()();
              v72 = [objc_opt_self() systemImageNamed:v71];
            }

LABEL_53:
            v70 += 3;
            v73 = objc_allocWithZone(UISearchSuggestionItem);
            v74 = String._bridgeToObjectiveC()();

            v75 = [v73 initWithLocalizedSuggestion:v74 localizedDescription:0 iconImage:v72];

            v128[0] = v77;
            v128[1] = v76;
            v128[2] = v78;

            [v75 setRepresentedObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

            swift_unknownObjectRelease();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (!--v69)
            {

              v96 = v131;
              goto LABEL_65;
            }
          }
        }

        v96 = _swiftEmptyArrayStorage;
LABEL_65:
        sub_1000065A8(0, &qword_100AD4420);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        swift_allocObject();
        v2 = v105;
        swift_unknownObjectWeakInit();
        v97 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v98 = v97;

        if (v96 >> 62)
        {
          sub_1000F24EC(&qword_100AE4E18);
          _bridgeCocoaArray<A>(_:)();
        }

        else
        {
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        }

        v99 = objc_allocWithZone(_UISearchSuggestionItemGroup);
        v100 = String._bridgeToObjectiveC()();

        sub_1000F24EC(&qword_100AE4E18);
        v101 = Array._bridgeToObjectiveC()().super.isa;

        v102 = [v99 initWithHeaderTitle:v100 headerAction:v97 suggestionItems:v101];

        v103 = v102;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (!a1)
        {
          goto LABEL_42;
        }

        goto LABEL_18;
      }

      swift_unknownObjectRelease();
      v29 = v65;
      v28 = v66;
      v27 = v127;
      v12 = v64;
      a1 = v107;
    }

    sub_100610130(v30, v27, v28, v29);
    v32 = v31;
    goto LABEL_49;
  }

  v33 = *&v2[OBJC_IVAR____TtC7Journal25SuggestedSearchController_resultsViewController];
  *(v33 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions) = a1;

  v34 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
  swift_beginAccess();
  *(v33 + v34) = &_swiftEmptyDictionarySingleton;

  if (sub_1004722E0() & 1) != 0 && ((v35 = OBJC_IVAR____TtC7Journal25SuggestedSearchController_currentEntryListType, swift_beginAccess(), sub_100022B50(&v2[v35], v19), v36 = sub_1000F24EC(&qword_100AD47A0), (*(*(v36 - 8) + 56))(v15, 2, 2, v36), LOBYTE(v35) = sub_100023858(v19, v15), sub_100479D70(v15, type metadata accessor for EntryListType), sub_100479D70(v19, type metadata accessor for EntryListType), (v35) || (sub_100472CE8()))
  {
    v37 = sub_1002F6CE0();
  }

  else
  {
    v37 = 0;
  }

  *(v33 + OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_recentSearches) = v37;

  sub_1006D3CC8();
}

void sub_1004755BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal25SuggestedSearchController_recentSearchesManager);
    sub_1002F6F2C(1, v2);

    [v1 updateSearchResultsForSearchController:v1];
  }
}

uint64_t sub_100475644(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1004756E0, v5, v4);
}

uint64_t sub_1004756E0()
{
  v1 = v0[2];
  sub_100474498(v0[3]);
  if (v1)
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1004757CC;

    return sub_100485470(v2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1004757CC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1004758EC, v3, v2);
}

uint64_t sub_1004758EC()
{
  v1 = *(v0 + 32);

  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    if (sub_1004722E0())
    {
      [*(v0 + 32) setShowsSearchResultsController:0];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_13;
      }

      v5 = [Strong viewIfLoaded];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 window];

        if (v7)
        {
          v8 = [v7 rootViewController];

          if (v8)
          {
            type metadata accessor for SceneSplitViewController(0);
            v9 = swift_dynamicCastClass();
            if (v9)
            {
              v10 = *(v9 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController);

              sub_10002CCF8(0);
              swift_unknownObjectRelease();

              goto LABEL_13;
            }
          }
        }
      }
    }

    else
    {
      [*(v0 + 32) setShowsSearchResultsController:1];
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_13;
      }

      sub_10041DDE8();
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
  v11 = *(v0 + 8);

  return v11();
}