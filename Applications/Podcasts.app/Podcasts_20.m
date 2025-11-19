id FeedManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002D5634(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1002D56A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

void sub_1002D5714()
{
  v0 = [objc_opt_self() sharedInstance];
  if (v0)
  {
    v1 = v0;
    [v0 showInternetUnreachableDialog];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FeedManager.isUpdatingShow(url:storeID:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = sub_100168088(&qword_10057D688);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - v5;
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = sub_100168088(&unk_10057D690);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - v11;
  sub_100168088(&unk_10057D640);
  UninitializedCurrentValueSubject.value.getter();
  v13 = v29;
  if (v29)
  {
    v26 = v3;
    v27 = v4;

    dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();

    ReadOnlyCurrentValueSubject.value.getter();
    (*(v10 + 8))(v12, v9);
    v14 = sub_1002D4A94(a2, v29);

    if (v14)
    {
      sub_10003F6FC(v13);
      return 1;
    }

    sub_100010430(v28, v8, &qword_100574040);
    v16 = type metadata accessor for URL();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {
      sub_10003F6FC(v13);
      sub_100009104(v8, &qword_100574040);
    }

    else
    {
      v18 = URL.absoluteString.getter();
      v20 = v19;
      v21 = v8;
      v22 = v18;
      (*(v17 + 8))(v21, v16);
      v23 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v23 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
        swift_unknownObjectRelease();
        v24 = v26;
        ReadOnlyCurrentValueSubject.value.getter();
        (*(v27 + 8))(v6, v24);
        v25 = sub_1002D4798(v22, v20, v29);
        sub_10003F6FC(v13);

        if (v25)
        {
          return 1;
        }
      }

      else
      {
        sub_10003F6FC(v13);
      }
    }
  }

  return 0;
}

uint64_t FeedManager.handleEventsForBackgroundURLSession(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  v10 = v4;

  sub_1002D4B98(sub_1002D6664, v9);
}

void sub_1002D5E54(void *a1)
{
  v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v2 = [objc_opt_self() truePredicate];
  [v9 setPredicate:v2];

  sub_100009F1C(0, &qword_100573AC0);
  v3 = NSManagedObjectContext.fetch<A>(_:)();
  v8 = v3;
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  v5 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v8 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [v6 setNextSyncToken:{0, v9}];
    [v7 setBootstrapGeneration:0];
    [v7 setUpdatedDate:0.0];
  }

  while (v4 != v5);
LABEL_11:

  [a1 saveInCurrentBlock];
}

void sub_1002D6030(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Migrating to delta updater, deleting nextSyncTokens and bootstrapGenerations", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v10 = [objc_opt_self() truePredicate];
  [v9 setPredicate:v10];

  sub_100009F1C(0, &qword_100573AC0);
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  v16 = a1;
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v16 saveInCurrentBlock];

    return;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      [v14 setUpdatedDate:{0.0, v16}];
      [v15 setFeedUniquenessHash:0];
      [v15 setNextSyncToken:0];
      [v15 setBootstrapGeneration:0];
    }

    while (v12 != v13);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t FeedManager.isUpdating.getter()
{
  v0 = sub_100168088(&unk_10057D690);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v11 - v2;
  v4 = sub_100168088(&qword_10057D688);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v11 - v6;
  sub_100168088(&unk_10057D640);
  UninitializedCurrentValueSubject.value.getter();
  if (v12)
  {
    swift_getObjectType();
    dispatch thunk of URLBasedFeedUpdater.updatingFeedURLs.getter();
    ReadOnlyCurrentValueSubject.value.getter();
    (*(v5 + 8))(v7, v4);
    v11[2] = v12;
    sub_100168088(&qword_1005781E8);
    sub_100009FAC(&qword_10057D6A0, &qword_1005781E8);
    v8 = Collection.isNotEmpty.getter();

    if (v8)
    {
      swift_unknownObjectRelease();

      v9 = 1;
    }

    else
    {
      dispatch thunk of StoreFeedUpdater.updatingStoreIDs.getter();
      ReadOnlyCurrentValueSubject.value.getter();
      (*(v1 + 8))(v3, v0);
      v11[0] = v11[1];
      sub_100168088(&qword_10057D6A8);
      sub_100009FAC(&qword_10057D6B0, &qword_10057D6A8);
      v9 = Collection.isNotEmpty.getter();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_1002D6668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), uint64_t a7)
{
  v39 = a6;
  v38 = type metadata accessor for Logger();
  v12 = *(v38 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  aBlock = swift_getObjectType();
  v41 = a2;
  sub_100168088(&qword_10057D838);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  aBlock = a4;
  v41 = a5;
  v46 = v17;
  v47 = v18;
  sub_10019FA64();
  if (StringProtocol.contains<A>(_:)())
  {
    v20 = [a1 sessionCompletionHandler];
    v21 = &selRef_setPlayable_;
    if (v20)
    {
      v22 = v20;
      v37 = a7;
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.feedUpdate.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock = v26;
        *v25 = 136315138;
        v27 = sub_1000153E0(v17, v19, &aBlock);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "handleEventsForBackgroundURLSession being called BEFORE URLSessionDidFinishEventsForBackgroundURLSession for %s.  Invoking existing completionHandler.", v25, 0xCu);
        sub_100004590(v26);

        v21 = &selRef_setPlayable_;
      }

      else
      {
      }

      (*(v12 + 8))(v16, v38);
      v22[2](v22);
      _Block_release(v22);
      [a1 v21[141]];
      a7 = v37;
      v34 = v39;
      if (v39)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v34 = v39;
      if (v39)
      {
LABEL_14:
        v44 = v34;
        v45 = a7;
        aBlock = _NSConcreteStackBlock;
        v41 = 1107296256;
        v42 = sub_10000F038;
        v43 = &unk_1004EB688;
        v35 = _Block_copy(&aBlock);

        goto LABEL_15;
      }
    }

    v35 = 0;
LABEL_15:
    [a1 v21[141]];
    _Block_release(v35);
    return;
  }

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = a7;
    aBlock = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1000153E0(a4, a5, &aBlock);
    *(v30 + 12) = 2080;
    v32 = sub_1000153E0(v17, v19, &aBlock);

    *(v30 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "Mismatch between updater used for backgroundURLSession: %s and the current FeedManager system: %s. Proceeding to just call the background session completionHandler.", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v33 = (*(v12 + 8))(v14, v38);
  if (v39)
  {
    v39(v33);
  }
}

void _s8Podcasts11FeedManagerC10resetCacheyyFZ_0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 importContext];

  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.feedUpdate.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Feature Flag StoreBothFreeAndPaidUrls was changed since last bootup. Clearing feed update cache.", v8, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  aBlock[4] = sub_1002D6F94;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB5E8;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  [v11 performBlock:v10];
  _Block_release(v10);
}

void _s8Podcasts11FeedManagerC014migrateToDeltaB6SystemyyFZ_0()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 importContext];

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5[4] = sub_1002D6F8C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000F038;
  v5[3] = &unk_1004EB598;
  v3 = _Block_copy(v5);
  v4 = v1;

  [v4 performBlock:v3];
  _Block_release(v3);
}

void sub_1002D6ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v5, v6, a3);
}

id sub_1002D6F34()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

void *sub_1002D700C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1002DB5A8(a1, a2, a3);

  return v4;
}

uint64_t *CategoryIngester.__allocating_init(libraryImageProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_100010C38(a1, v3);
  v6 = sub_1002DB828(v5, v1, v3, v4);
  sub_100004590(a1);
  return v6;
}

uint64_t *CategoryIngester.init(libraryImageProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_100010C38(a1, v3);
  v5 = __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = sub_1002D7854(v7, v1, v3, v4);
  sub_100004590(a1);
  return v9;
}

char *CategoryIngester.unsafeIngestNewCategory(ctx:feedCategory:)(NSObject *a1, void *a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002DB128(a1, a2, v2, ObjectType);
}

char *CategoryIngester.unsafeIngestCategory(category:feedCategory:ctx:)(void *a1, void *a2, NSObject *a3)
{
  swift_getObjectType();

  return sub_1002D96A4(a1, a2, a3, v3);
}

char *CategoryIngester.unsafeIngestFeedCategory(_:ctx:)(void *a1, NSObject *a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002D7CCC(a1, a2, v2, ObjectType);
}

uint64_t sub_1002D732C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&qword_10057D960);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = type metadata accessor for ServerCategory();
  v27 = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  if (v3 == &type metadata for String)
  {
    v21 = (v5 + 63) >> 6;

    v22 = 0;
    if (!v7)
    {
      goto LABEL_30;
    }

    do
    {
      v23 = v22;
LABEL_33:
      sub_10016BE40(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v23 << 6)), &v26);
      if ((swift_dynamicCast() & 1) == 0 || !v25)
      {
LABEL_38:

        return 0;
      }

      v7 &= v7 - 1;
      result = sub_1002EA39C(v25);
      v22 = v23;
    }

    while (v7);
LABEL_30:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v21)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v23);
      ++v22;
      if (v7)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;
    v24 = a1;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_10016BE40(*(v24 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), &v26);
      if ((swift_dynamicCast() & 1) == 0 || !v25)
      {
        goto LABEL_38;
      }

      sub_1002DB99C(&qword_10057D958, &type metadata accessor for ServerCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = -1 << v2[32];
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*&v9[8 * (v15 >> 6)]) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *&v9[8 * v16];
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*&v9[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v9[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(*(v2 + 6) + 8 * v12) = v25;
      ++*(v2 + 2);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D7824@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t *sub_1002D7854(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  v7 = sub_10000E680(a2 + 2);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  return a2;
}

char *sub_1002D78C4(NSObject *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v45 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v41[-v10];
  v12 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AdamID.init(_:)();
  if ((v13 & 1) != 0 || (v14 = NSManagedObjectContext.unsafeCategory(forAdamID:)()) == 0)
  {
    static Logger.interests.getter();

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v29 = 136315138;
      v30 = [a1 identifier];
      v31 = a1;
      v32 = a2;
      v33 = a3;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v6;
      v36 = v35;

      v37 = v34;
      a3 = v33;
      a2 = v32;
      a1 = v31;
      v38 = sub_1000153E0(v37, v36, &v46);

      *(v29 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "[Categories] Could not find an existing category for %s. Ingesting a new category.", v29, 0xCu);
      sub_100004590(v43);

      (*(v45 + 8))(v8, v44);
    }

    else
    {

      (*(v45 + 8))(v8, v6);
    }

    return sub_1002DACAC(a2, a1, a3);
  }

  else
  {
    v15 = v14;
    static Logger.interests.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v18 = 136315138;
      v19 = [a1 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v17;
      v21 = a3;
      v22 = v20;
      v44 = v6;
      v24 = v23;

      v25 = v22;
      a3 = v21;
      v26 = sub_1000153E0(v25, v24, &v46);

      *(v18 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v16, v42, "[Categories] Found an existing category for %s. Ingesting an existing category.", v18, 0xCu);
      sub_100004590(v43);

      (*(v45 + 8))(v11, v44);
    }

    else
    {

      (*(v45 + 8))(v11, v6);
    }

    v40 = sub_1002D80BC(v15, a1, a2, a3);

    return v40;
  }
}

char *sub_1002D7CCC(id a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin();
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v43[-v12];
  v14 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AdamID.init(_:)();
  if ((v15 & 1) != 0 || (v16 = NSManagedObjectContext.unsafeCategory(forAdamID:)()) == 0)
  {
    static Logger.interests.getter();
    swift_unknownObjectRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v31 = 136315138;
      v32 = [a1 identifier];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v45) = v30;
      v34 = a2;
      v35 = a3;
      v36 = a4;
      v37 = v33;
      v38 = a1;
      v40 = v39;

      v41 = v37;
      a4 = v36;
      a3 = v35;
      a2 = v34;
      v42 = sub_1000153E0(v41, v40, &v49);
      a1 = v38;

      *(v31 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v29, v45, "[Categories] Could not find an existing category for %s. Ingesting a new category.", v31, 0xCu);
      sub_100004590(v46);
    }

    (*(v47 + 8))(v10, v48);
    return sub_1002DB128(a2, a1, a3, a4);
  }

  else
  {
    v17 = v16;
    static Logger.interests.getter();
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v46 = a1;
      v21 = v20;
      v45 = swift_slowAlloc();
      v49 = v45;
      *v21 = 136315138;
      v22 = [v46 identifier];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v19;
      v25 = v24;

      v26 = sub_1000153E0(v23, v25, &v49);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v44, "[Categories] Found an existing category for %s. Ingesting an existing category.", v21, 0xCu);
      sub_100004590(v45);

      a1 = v46;
    }

    (*(v47 + 8))(v13, v48);
    v27 = sub_1002D96A4(v17, a1, a2, a3);

    return v27;
  }
}

char *sub_1002D80BC(void *a1, NSObject *a2, void *a3, uint64_t a4)
{
  v168 = a4;
  v172 = a3;
  type metadata accessor for NetworkTaskPriority();
  __chkstk_darwin();
  v158 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100582DE0);
  __chkstk_darwin();
  v154 = &v153 - v7;
  v157 = type metadata accessor for ArtworkRequest();
  v156 = *(v157 - 8);
  __chkstk_darwin();
  v155 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_100168088(&qword_10057D948);
  __chkstk_darwin();
  v162 = &v153 - v9;
  v170 = type metadata accessor for ArtworkModel();
  v167 = *(v170 - 1);
  __chkstk_darwin();
  v159 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v161 = &v153 - v11;
  v12 = type metadata accessor for Logger();
  v173 = *(v12 - 8);
  v174 = v12;
  __chkstk_darwin();
  v166 = (&v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v163 = &v153 - v14;
  __chkstk_darwin();
  v171 = (&v153 - v15);
  __chkstk_darwin();
  v169 = (&v153 - v16);
  __chkstk_darwin();
  v18 = &v153 - v17;
  sub_100168088(&unk_100578C10);
  __chkstk_darwin();
  v153 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v153 - v20;
  __chkstk_darwin();
  v23 = &v153 - v22;
  __chkstk_darwin();
  v25 = &v153 - v24;
  *&v26 = __chkstk_darwin().n128_u64[0];
  v28 = &v153 - v27;
  v29 = [a2 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = AdamID.init(_:)();
  if (v31)
  {
    static Logger.interests.getter();
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = [v32 adamID];

      _os_log_impl(&_mh_execute_header, v33, v34, "[Categories] Cannot ingest feed category because there is no adamID in the feed category object: %llu", v35, 0xCu);

      v32 = v33;
    }

    else
    {
    }

    (*(v173 + 8))(v18, v174);
    return 0;
  }

  v36 = v30;
  v164 = v28;
  MTCategory.artwork.getter();
  v165 = v36;
  [a1 setAdamID:v36];
  v37 = [a2 name];
  v38 = a2;
  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  [a1 setName:v37];

  v39 = [a2 url];
  [a1 setUrl:v39];

  v40 = [a2 color];
  [a1 setColor:v40];

  type metadata accessor for ServerArtwork();

  v41 = ServerArtwork.__allocating_init(from:)();
  v42 = v170;
  if (v41)
  {
    v43 = [a2 artworkPrimaryColor];
    [a1 setArtworkPrimaryColor:v43];

    v44 = [a2 artworkTemplateURL];
    [a1 setArtworkTemplateURL:v44];

    ArtworkModel.init(serverArtwork:)();
    v45 = *(v167 + 48);
    if (v45(v25, 1, v42) == 1)
    {

      v46 = v25;
LABEL_17:
      sub_100009104(v46, &unk_100578C10);
      v38 = a2;
      goto LABEL_26;
    }

    sub_100009104(v25, &unk_100578C10);
    ServerArtwork.height.getter();
    if ((v48 & 1) == 0)
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      MTCategory.setArtworkHeightNumber(_:)(isa);

      v42 = v170;
    }

    ServerArtwork.width.getter();
    v50 = v162;
    if ((v51 & 1) == 0)
    {
      v52 = Int._bridgeToObjectiveC()().super.super.isa;
      MTCategory.setArtworkWidthNumber(_:)(v52);

      v42 = v170;
    }

    MTCategory.artwork.getter();
    if (v45(v23, 1, v42) == 1)
    {

      v46 = v23;
      goto LABEL_17;
    }

    v53 = v23;
    v54 = v161;
    sub_1001FBAE0(v53, v161);
    sub_1002445E8(v54, v21);
    (*(v167 + 56))(v21, 0, 1, v42);
    v55 = *(v160 + 48);
    sub_1002DB92C(v164, v50);
    sub_1002DB92C(v21, v50 + v55);
    if (v45(v50, 1, v42) == 1)
    {
      sub_100009104(v21, &unk_100578C10);
      v38 = a2;
      if (v45((v50 + v55), 1, v42) == 1)
      {

        sub_100009104(v50, &unk_100578C10);
LABEL_25:
        sub_1001A0664(v54);
        goto LABEL_26;
      }
    }

    else
    {
      v56 = v153;
      sub_1002DB92C(v50, v153);
      if (v45((v50 + v55), 1, v42) != 1)
      {
        v145 = v159;
        sub_1001FBAE0(v50 + v55, v159);
        v146 = static ArtworkModel.== infix(_:_:)();
        sub_1001A0664(v145);
        sub_100009104(v21, &unk_100578C10);
        sub_1001A0664(v56);
        sub_100009104(v50, &unk_100578C10);
        v38 = a2;
        v54 = v161;
        if (v146)
        {

          goto LABEL_25;
        }

        goto LABEL_24;
      }

      sub_100009104(v21, &unk_100578C10);
      sub_1001A0664(v56);
      v38 = a2;
      v54 = v161;
    }

    sub_100009104(v50, &qword_10057D948);
LABEL_24:
    sub_1002445E8(v54, v159);
    ArtworkModel.size.getter();
    v57 = type metadata accessor for CropCode();
    (*(*(v57 - 8) + 56))(v154, 1, 1, v57);
    v176 = 0;
    memset(v175, 0, sizeof(v175));
    static NetworkTaskPriority.dispatchQueuePriority()();
    v58 = v155;
    ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)();
    sub_1000044A0((v168 + 16), *(v168 + 40));
    dispatch thunk of ImageProvider.prefetch(artwork:)();

    (*(v156 + 8))(v58, v157);
    goto LABEL_25;
  }

LABEL_26:
  v59 = v169;
  static Logger.interests.getter();
  v47 = a1;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *&v175[0] = swift_slowAlloc();
    *v62 = 136315394;
    v63 = [v47 name];
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = sub_1000153E0(v64, v66, v175);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    v177 = v165;
    sub_10019BAC4();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = sub_1000153E0(v68, v69, v175);

    *(v62 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v60, v61, "[Categories] Ingested category %s with adamID: %s", v62, 0x16u);
    swift_arrayDestroy();
  }

  v71 = *(v173 + 8);
  v71(v59, v174);
  v72 = v171;
  v73 = NSManagedObjectContext.unsafeInterest(forAdamID:)();
  if (v73)
  {
    v74 = v73;
    [v73 setCategory:v47];
    [v47 setInterest:v74];
    static Logger.interests.getter();
    v75 = v47;
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v170 = v71;
      v79 = v78;
      *&v175[0] = swift_slowAlloc();
      *v79 = 136315394;
      v80 = [v75 name];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v84 = sub_1000153E0(v81, v83, v175);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      v177 = v165;
      sub_10019BAC4();
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = sub_1000153E0(v85, v86, v175);

      *(v79 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v76, v77, "[Categories] Related category %s with adamID: %s to MTInterest.", v79, 0x16u);
      swift_arrayDestroy();

      v71 = v170;

      v71(v171, v174);
    }

    else
    {

      v71(v72, v174);
    }
  }

  if ([v38 parent])
  {
    type metadata accessor for ServerCategory();
    v88 = swift_dynamicCastClass();
    if (v88 && (v89 = v88, swift_unknownObjectRetain(), v90 = sub_1002D78C4(v89, v172, v168), swift_unknownObjectRelease(), v90))
    {
      v170 = v71;
      [v47 setParent:v90];
      v91 = v163;
      static Logger.interests.getter();
      v92 = v90;
      v93 = v47;
      v94 = v92;
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *&v175[0] = swift_slowAlloc();
        *v97 = 136315906;
        v98 = [v93 name];
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v38;
        v101 = v100;

        v102 = sub_1000153E0(v99, v101, v175);

        *(v97 + 4) = v102;
        *(v97 + 12) = 2080;
        v177 = v165;
        sub_10019BAC4();
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = sub_1000153E0(v103, v104, v175);

        *(v97 + 14) = v105;
        *(v97 + 22) = 2080;
        v106 = [v94 name];
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v109 = v108;

        v110 = sub_1000153E0(v107, v109, v175);
        v38 = v171;

        *(v97 + 24) = v110;
        *(v97 + 32) = 2048;
        v111 = [v94 adamID];

        *(v97 + 34) = v111;
        _os_log_impl(&_mh_execute_header, v95, v96, "[Categories] Related category %s with adamID: %s to parent category %s with adamID: %llu.", v97, 0x2Au);
        swift_arrayDestroy();

        swift_unknownObjectRelease();

        v112 = v163;
      }

      else
      {

        swift_unknownObjectRelease();
        v112 = v91;
      }

      v71 = v170;
      (v170)(v112, v174);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v113 = [v38 children];
  v114 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v115 = sub_1002D732C(v114);

  if (!v115)
  {
    goto LABEL_65;
  }

  if ((v115 & 0xC000000000000001) != 0)
  {
    v116 = __CocoaSet.count.getter();
  }

  else
  {
    v116 = *(v115 + 16);
  }

  if (v116 < 1)
  {
    sub_100009104(v164, &unk_100578C10);

LABEL_66:
    v152 = v47;
    return v47;
  }

  v117 = v168;

  v118 = sub_1002D700C(v115, v117, v172);

  sub_10039B5B4(v119);

  type metadata accessor for MTCategory();
  sub_1002DB99C(&qword_10057D950, &type metadata accessor for MTCategory);
  v120 = Set._bridgeToObjectiveC()().super.isa;

  [v47 setChildren:v120];

  v121 = v166;
  static Logger.interests.getter();
  v122 = v47;

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v123, v124))
  {

    v144 = v121;
LABEL_64:
    v71(v144, v174);
LABEL_65:
    sub_100009104(v164, &unk_100578C10);
    goto LABEL_66;
  }

  v125 = swift_slowAlloc();
  v171 = swift_slowAlloc();
  *&v175[0] = v171;
  *v125 = 136315650;
  v126 = [v122 name];
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v128;

  v130 = sub_1000153E0(v127, v129, v175);

  *(v125 + 2) = v130;
  v125[6] = 2080;
  v177 = v165;
  sub_10019BAC4();
  v131 = dispatch thunk of CustomStringConvertible.description.getter();
  v133 = sub_1000153E0(v131, v132, v175);

  *(v125 + 7) = v133;
  v172 = v125;
  v125[11] = 2080;
  if (!(v118 >> 62))
  {
    v134 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v135 = v166;
    if (v134)
    {
      goto LABEL_48;
    }

LABEL_62:

LABEL_63:
    v147 = Array.description.getter();
    v149 = v148;

    v150 = sub_1000153E0(v147, v149, v175);

    v151 = v172;
    *(v172 + 3) = v150;
    _os_log_impl(&_mh_execute_header, v123, v124, "[Categories] Related category %s with adamID: %s to children categories with adamID's: %s.", v151, 0x20u);
    swift_arrayDestroy();

    v144 = v135;
    goto LABEL_64;
  }

  v134 = _CocoaArrayWrapper.endIndex.getter();
  v135 = v166;
  if (!v134)
  {
    goto LABEL_62;
  }

LABEL_48:
  LODWORD(v168) = v124;
  v169 = v123;
  v170 = v71;
  v177 = _swiftEmptyArrayStorage;
  result = sub_1001A788C(0, v134 & ~(v134 >> 63), 0);
  if ((v134 & 0x8000000000000000) == 0)
  {
    v137 = 0;
    v138 = v177;
    do
    {
      if ((v118 & 0xC000000000000001) != 0)
      {
        v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v139 = *(v118 + 8 * v137 + 32);
      }

      v140 = v139;
      v141 = [v139 adamID];

      v177 = v138;
      v143 = v138[2];
      v142 = v138[3];
      if (v143 >= v142 >> 1)
      {
        sub_1001A788C((v142 > 1), v143 + 1, 1);
        v138 = v177;
      }

      ++v137;
      v138[2] = v143 + 1;
      v138[v143 + 4] = v141;
    }

    while (v134 != v137);

    v135 = v166;
    v123 = v169;
    v71 = v170;
    LOBYTE(v124) = v168;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

char *sub_1002D96A4(void *a1, void *a2, NSObject *a3, uint64_t a4)
{
  v169 = a4;
  v174 = a3;
  type metadata accessor for NetworkTaskPriority();
  __chkstk_darwin();
  v160 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100582DE0);
  __chkstk_darwin();
  v156 = &v154 - v7;
  v159 = type metadata accessor for ArtworkRequest();
  v158 = *(v159 - 8);
  __chkstk_darwin();
  v157 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_100168088(&qword_10057D948);
  __chkstk_darwin();
  v163 = &v154 - v9;
  v170 = type metadata accessor for ArtworkModel();
  v168 = *(v170 - 8);
  __chkstk_darwin();
  v161 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v164 = &v154 - v11;
  v12 = type metadata accessor for Logger();
  v176 = *(v12 - 8);
  v177 = v12;
  __chkstk_darwin();
  v166 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v154 - v14;
  __chkstk_darwin();
  v172 = &v154 - v15;
  __chkstk_darwin();
  v171 = &v154 - v16;
  __chkstk_darwin();
  v18 = &v154 - v17;
  sub_100168088(&unk_100578C10);
  __chkstk_darwin();
  v155 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v154 - v20;
  __chkstk_darwin();
  v23 = &v154 - v22;
  __chkstk_darwin();
  v25 = &v154 - v24;
  *&v26 = __chkstk_darwin().n128_u64[0];
  v28 = &v154 - v27;
  v29 = [a2 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v175 = AdamID.init(_:)();
  if (v30)
  {
    static Logger.interests.getter();
    v31 = a1;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = [v31 adamID];

      _os_log_impl(&_mh_execute_header, v32, v33, "[Categories] Cannot ingest feed category because there is no adamID in the feed category object: %llu", v34, 0xCu);
    }

    else
    {

      v32 = v31;
    }

    (*(v176 + 8))(v18, v177);
    return 0;
  }

  v167 = v28;
  MTCategory.artwork.getter();
  [a1 setAdamID:v175];
  v35 = [a2 name];
  v36 = a2;
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();
  }

  [a1 setName:v35];

  v37 = [a2 url];
  [a1 setUrl:v37];

  v38 = [a2 color];
  [a1 setColor:v38];

  type metadata accessor for ServerArtwork();
  swift_unknownObjectRetain();
  v39 = ServerArtwork.__allocating_init(from:)();
  v165 = a2;
  v40 = v170;
  if (v39)
  {
    v41 = [v36 artworkPrimaryColor];
    [a1 setArtworkPrimaryColor:v41];

    v42 = [v36 artworkTemplateURL];
    [a1 setArtworkTemplateURL:v42];

    ArtworkModel.init(serverArtwork:)();
    v43 = *(v168 + 48);
    if (v43(v25, 1, v40) == 1)
    {

      sub_100009104(v25, &unk_100578C10);
      goto LABEL_25;
    }

    sub_100009104(v25, &unk_100578C10);
    ServerArtwork.height.getter();
    if ((v45 & 1) == 0)
    {
      isa = Int._bridgeToObjectiveC()().super.super.isa;
      MTCategory.setArtworkHeightNumber(_:)(isa);

      v36 = v165;
    }

    ServerArtwork.width.getter();
    if ((v47 & 1) == 0)
    {
      v48 = Int._bridgeToObjectiveC()().super.super.isa;
      MTCategory.setArtworkWidthNumber(_:)(v48);

      v36 = v165;
    }

    MTCategory.artwork.getter();
    if (v43(v23, 1, v40) == 1)
    {

      sub_100009104(v23, &unk_100578C10);
      goto LABEL_25;
    }

    v49 = v164;
    sub_1001FBAE0(v23, v164);
    sub_1002445E8(v49, v21);
    (*(v168 + 56))(v21, 0, 1, v40);
    v50 = *(v162 + 48);
    v51 = v40;
    v52 = v163;
    sub_1002DB92C(v167, v163);
    sub_1002DB92C(v21, v52 + v50);
    if (v43(v52, 1, v51) == 1)
    {
      sub_100009104(v21, &unk_100578C10);
      if (v43((v52 + v50), 1, v51) == 1)
      {

        sub_100009104(v52, &unk_100578C10);
LABEL_24:
        sub_1001A0664(v49);
        goto LABEL_25;
      }
    }

    else
    {
      v53 = v155;
      sub_1002DB92C(v52, v155);
      if (v43((v52 + v50), 1, v51) != 1)
      {
        v54 = v161;
        sub_1001FBAE0(v52 + v50, v161);
        v146 = static ArtworkModel.== infix(_:_:)();
        sub_1001A0664(v54);
        sub_100009104(v21, &unk_100578C10);
        sub_1001A0664(v53);
        v36 = v165;
        sub_100009104(v52, &unk_100578C10);
        v49 = v164;
        if (v146)
        {

          goto LABEL_24;
        }

        goto LABEL_23;
      }

      sub_100009104(v21, &unk_100578C10);
      sub_1001A0664(v53);
      v49 = v164;
    }

    sub_100009104(v52, &qword_10057D948);
    v54 = v161;
LABEL_23:
    sub_1002445E8(v49, v54);
    ArtworkModel.size.getter();
    v55 = type metadata accessor for CropCode();
    (*(*(v55 - 8) + 56))(v156, 1, 1, v55);
    v179 = 0;
    memset(v178, 0, sizeof(v178));
    static NetworkTaskPriority.dispatchQueuePriority()();
    v56 = v157;
    ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)();
    sub_1000044A0((v169 + 16), *(v169 + 40));
    dispatch thunk of ImageProvider.prefetch(artwork:)();

    (*(v158 + 8))(v56, v159);
    goto LABEL_24;
  }

LABEL_25:
  v57 = v171;
  static Logger.interests.getter();
  v44 = a1;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = v57;
    v61 = swift_slowAlloc();
    *&v178[0] = swift_slowAlloc();
    *v61 = 136315394;
    v62 = [v44 name];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    v66 = sub_1000153E0(v63, v65, v178);

    *(v61 + 4) = v66;
    *(v61 + 12) = 2080;
    v180 = v175;
    sub_10019BAC4();
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = sub_1000153E0(v67, v68, v178);

    *(v61 + 14) = v69;
    v36 = v165;
    _os_log_impl(&_mh_execute_header, v58, v59, "[Categories] Ingested category %s with adamID: %s", v61, 0x16u);
    swift_arrayDestroy();

    v70 = *(v176 + 8);
    (v70)(v60, v177);
  }

  else
  {

    v70 = *(v176 + 8);
    (v70)(v57, v177);
  }

  v71 = v172;
  v72 = v173;
  v73 = NSManagedObjectContext.unsafeInterest(forAdamID:)();
  if (v73)
  {
    v74 = v73;
    [v73 setCategory:v44];
    [v44 setInterest:v74];
    static Logger.interests.getter();
    v75 = v44;
    v76 = v71;
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v171 = swift_slowAlloc();
      *&v178[0] = v171;
      *v79 = 136315394;
      v80 = [v75 name];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v70;
      v84 = v83;

      v85 = sub_1000153E0(v81, v84, v178);
      v70 = v82;
      v86 = v175;

      *(v79 + 4) = v85;
      *(v79 + 12) = 2080;
      v180 = v86;
      sub_10019BAC4();
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = sub_1000153E0(v87, v88, v178);

      *(v79 + 14) = v89;
      _os_log_impl(&_mh_execute_header, v77, v78, "[Categories] Related category %s with adamID: %s to MTInterest.", v79, 0x16u);
      swift_arrayDestroy();
      v36 = v165;

      v72 = v173;

      (v82)(v172, v177);
    }

    else
    {

      (v70)(v76, v177);
    }
  }

  if ([v36 parent])
  {
    type metadata accessor for ServerCategory();
    v90 = swift_dynamicCastClass();
    if (v90 && (v91 = v90, swift_unknownObjectRetain(), v92 = sub_1002D78C4(v91, v174, v169), swift_unknownObjectRelease(), v92))
    {
      v172 = v70;
      [v44 setParent:v92];
      static Logger.interests.getter();
      v93 = v92;
      v94 = v44;
      v95 = v93;
      v96 = v72;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *&v178[0] = swift_slowAlloc();
        *v99 = 136315906;
        v100 = [v94 name];
        v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v103 = v102;

        v104 = sub_1000153E0(v101, v103, v178);

        *(v99 + 4) = v104;
        *(v99 + 12) = 2080;
        v180 = v175;
        sub_10019BAC4();
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = sub_1000153E0(v105, v106, v178);

        *(v99 + 14) = v107;
        *(v99 + 22) = 2080;
        v108 = [v95 name];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;

        v112 = sub_1000153E0(v109, v111, v178);

        *(v99 + 24) = v112;
        *(v99 + 32) = 2048;
        v113 = [v95 adamID];

        *(v99 + 34) = v113;
        _os_log_impl(&_mh_execute_header, v97, v98, "[Categories] Related category %s with adamID: %s to parent category %s with adamID: %llu.", v99, 0x2Au);
        swift_arrayDestroy();

        swift_unknownObjectRelease();

        v114 = v173;
      }

      else
      {

        swift_unknownObjectRelease();
        v114 = v96;
      }

      v70 = v172;
      (v172)(v114, v177);
      v36 = v165;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v115 = [v36 children];
  v116 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v117 = sub_1002D732C(v116);

  if (!v117)
  {
    goto LABEL_65;
  }

  if ((v117 & 0xC000000000000001) != 0)
  {
    v118 = __CocoaSet.count.getter();
  }

  else
  {
    v118 = *(v117 + 16);
  }

  if (v118 <= 0)
  {
    sub_100009104(v167, &unk_100578C10);

LABEL_66:
    v153 = v44;
    return v44;
  }

  v119 = v169;

  v120 = v174;
  v121 = sub_1002DB5A8(v117, v119, v120);

  sub_10039B5B4(v122);

  type metadata accessor for MTCategory();
  sub_1002DB99C(&qword_10057D950, &type metadata accessor for MTCategory);
  v123 = Set._bridgeToObjectiveC()().super.isa;

  [v44 setChildren:v123];

  v124 = v166;
  static Logger.interests.getter();
  v125 = v44;

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v126, v127))
  {

LABEL_64:
    (v70)(v124, v177);
LABEL_65:
    sub_100009104(v167, &unk_100578C10);
    goto LABEL_66;
  }

  LODWORD(v173) = v127;
  v174 = v126;
  v128 = swift_slowAlloc();
  v171 = swift_slowAlloc();
  *&v178[0] = v171;
  *v128 = 136315650;
  v129 = [v125 name];
  v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v131;

  v133 = sub_1000153E0(v130, v132, v178);

  *(v128 + 4) = v133;
  *(v128 + 12) = 2080;
  v180 = v175;
  sub_10019BAC4();
  v134 = dispatch thunk of CustomStringConvertible.description.getter();
  v136 = sub_1000153E0(v134, v135, v178);

  *(v128 + 14) = v136;
  v175 = v128;
  *(v128 + 22) = 2080;
  if (!(v121 >> 62))
  {
    v137 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v137)
    {
      goto LABEL_48;
    }

LABEL_62:

LABEL_63:
    v147 = Array.description.getter();
    v149 = v148;

    v150 = sub_1000153E0(v147, v149, v178);

    v151 = v175;
    *(v175 + 24) = v150;
    v152 = v174;
    _os_log_impl(&_mh_execute_header, v174, v173, "[Categories] Related category %s with adamID: %s to children categories with adamID's: %s.", v151, 0x20u);
    swift_arrayDestroy();

    goto LABEL_64;
  }

  v137 = _CocoaArrayWrapper.endIndex.getter();
  if (!v137)
  {
    goto LABEL_62;
  }

LABEL_48:
  v172 = v70;
  v180 = _swiftEmptyArrayStorage;
  result = sub_1001A788C(0, v137 & ~(v137 >> 63), 0);
  if ((v137 & 0x8000000000000000) == 0)
  {
    v139 = 0;
    v140 = v180;
    do
    {
      if ((v121 & 0xC000000000000001) != 0)
      {
        v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v141 = *(v121 + 8 * v139 + 32);
      }

      v142 = v141;
      v143 = [v141 adamID];

      v180 = v140;
      v145 = v140[2];
      v144 = v140[3];
      if (v145 >= v144 >> 1)
      {
        sub_1001A788C((v144 > 1), v145 + 1, 1);
        v140 = v180;
      }

      ++v139;
      v140[2] = v145 + 1;
      v140[v145 + 4] = v143;
    }

    while (v137 != v139);

    v124 = v166;
    v70 = v172;
    goto LABEL_63;
  }

  __break(1u);
  return result;
}

char *sub_1002DACAC(void *a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v45 - v10;
  v12 = objc_opt_self();
  kMTCategoryEntityName.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 insertNewObjectForEntityForName:v13 inManagedObjectContext:a1];

  type metadata accessor for MTCategory();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v49 = a1;
    static Logger.interests.getter();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v47 = v6;
      v20 = v19;
      v45 = swift_slowAlloc();
      v50 = v45;
      *v20 = 136315394;
      v21 = [a2 name];
      v46 = v7;
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = a3;
      v24 = v23;
      v26 = v25;

      v27 = sub_1000153E0(v24, v26, &v50);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2080;
      v28 = [a2 identifier];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_1000153E0(v29, v31, &v50);
      a3 = v48;

      *(v20 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v17, v18, "[Categories] Created new MTCategory %s with adamID: %s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v46 + 8))(v11, v47);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    v43 = sub_1002D80BC(v16, a2, v49, a3);
  }

  else
  {

    static Logger.interests.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136315138;
      v37 = v7;
      v38 = [a2 identifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_1000153E0(v39, v41, &v50);

      *(v35 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "[Categories] Cannot create MTCategory for adamID: %s.", v35, 0xCu);
      sub_100004590(v36);

      (*(v37 + 8))(v9, v6);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    return 0;
  }

  return v43;
}

char *sub_1002DB128(NSObject *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = objc_opt_self();
  kMTCategoryEntityName.getter();
  v14 = String._bridgeToObjectiveC()();

  v51 = a1;
  v15 = [v13 insertNewObjectForEntityForName:v14 inManagedObjectContext:a1];

  type metadata accessor for MTCategory();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    static Logger.interests.getter();
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = v7;
      v21 = v20;
      v47 = swift_slowAlloc();
      v53 = v47;
      *v21 = 136315394;
      v22 = [a2 name];
      v48 = v8;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = a4;
      v25 = v24;
      v27 = v26;

      v28 = sub_1000153E0(v25, v27, &v53);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v29 = [a2 identifier];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_1000153E0(v30, v32, &v53);

      *(v21 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v18, v19, "[Categories] Created new MTCategory %s with adamID: %s", v21, 0x16u);
      swift_arrayDestroy();

      (*(v48 + 8))(v12, v49);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    v44 = sub_1002D96A4(v17, a2, v51, v52);
  }

  else
  {

    static Logger.interests.getter();
    swift_unknownObjectRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = v37;
      *v36 = 136315138;
      v38 = v8;
      v39 = [a2 identifier];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_1000153E0(v40, v42, &v53);

      *(v36 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "[Categories] Cannot create MTCategory for adamID: %s.", v36, 0xCu);
      sub_100004590(v37);

      (*(v38 + 8))(v10, v7);
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    return 0;
  }

  return v44;
}

void *sub_1002DB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for ServerCategory();
    sub_1002DB99C(&qword_10057D958, &type metadata accessor for ServerCategory);
    result = Set.Iterator.init(_cocoa:)();
    v3 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

LABEL_7:
  v12 = v7;
  v13 = v8;
  while (1)
  {
    if (v3 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for ServerCategory(), swift_dynamicCast(), v7 = v12, v8 = v13, !v21))
      {
LABEL_21:
        sub_1000319D8();
        return _swiftEmptyArrayStorage;
      }

      goto LABEL_17;
    }

    v14 = v12;
    v15 = v13;
    v7 = v12;
    if (!v13)
    {
      break;
    }

LABEL_13:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v3 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_21;
    }

LABEL_17:

    v18 = sub_1002D78C4(v17, a3, a2);

    v12 = v7;
    v13 = v8;
    if (v18)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= ((v6 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v15 = *(v5 + 8 * v7);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1002DB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  v11 = sub_10000E680(v10 + 2);
  (*(v7 + 32))(v11, v9, a3);
  return v10;
}

uint64_t sub_1002DB92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_100578C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DB99C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002DB9E4()
{
  v1 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v12[0] = v2, type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_10057D070), (swift_dynamicCast() & 1) == 0))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    return sub_100009104(&v9, &qword_10057D068);
  }

  if (!*(&v10 + 1))
  {
    return sub_100009104(&v9, &qword_10057D068);
  }

  sub_1000109E4(&v9, v12);
  v3 = v13;
  sub_1000044A0(v12, v13);
  v4 = sub_1001ED800(v3);
  if ((v5 & 1) == 0)
  {
    v6 = v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID;
    *v6 = v4;
    *(v6 + 8) = 0;
    InterestStateController.stateMachine(for:)();
    v7 = InterestStateMachine.currentState.getter();

    *(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestState) = v7;
  }

  return sub_100004590(v12);
}

uint64_t sub_1002DBB30()
{
  if ((*(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID + 8) & 1) != 0 || *(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_interestState) == 4)
  {
    goto LABEL_3;
  }

  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
LABEL_11:
    v6 = InterestState.rawValue.getter();
    v8 = v7;
    v1 = 1;
    if (v6 != InterestState.rawValue.getter() || v8 != v9)
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        v1 = 1;
        return v1 & 1;
      }

      v12 = InterestState.rawValue.getter();
      v14 = v13;
      if (v12 == InterestState.rawValue.getter() && v14 == v15)
      {
        v1 = 1;
      }

      else
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return v1 & 1;
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if ((*(v4 + qword_1005932C8) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_11;
    }

    v5 = sub_1002DC89C();

    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_3:
  v1 = 0;
  return v1 & 1;
}

uint64_t sub_1002DBCD8()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v34 = type metadata accessor for MetricsData();
  v10 = *(v34 - 8);
  __chkstk_darwin(v34);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SuggestLessInterestAction();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  result = swift_beginAccess();
  if (*(v0 + v18))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID + 8) & 1) == 0)
    {
      v32 = *(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_adamID);
      v20 = v32;
      sub_100168088(&unk_10057DC50);
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100400790;
      *&v39 = v20;
      sub_1000366D8();

      v27[2] = BinaryInteger.description.getter();
      v28 = v6;
      v21 = static MetricsTargetType.button.getter();
      v29 = v3;
      v27[1] = v21;
      v27[0] = static MetricsActionType.suggestLess.getter();
      v27[3] = v15;
      static MetricsActionContext.contextual.getter();
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v45 = v39;
      sub_100009104(&v45, &unk_100574650);
      v44 = v40;
      sub_100009104(&v44, &unk_100573A90);
      v43 = v41;
      sub_100009104(&v43, &unk_100574660);
      sub_100037470(v42);

      sub_100009104(v9, &qword_100574040);
      v23 = v28;
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v36 + 8))(v23, v37);
      (*(v10 + 8))(v12, v34);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      SuggestLessInterestAction.init(adamID:force:actionMetrics:)();
      v24 = v33;
      v38[3] = v33;
      v38[4] = sub_1002DC854(&qword_10057DA70, &type metadata accessor for SuggestLessInterestAction);
      v25 = sub_10000E680(v38);
      v26 = v35;
      (*(v35 + 16))(v25, v17, v24);
      ContextActionsConfiguration.perform(_:)();

      (*(v26 + 8))(v17, v24);
      return sub_100004590(v38);
    }
  }

  return result;
}

uint64_t sub_1002DC2EC()
{

  v1 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SuggestLessContextAction()
{
  result = qword_10057D9A0;
  if (!qword_10057D9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DC434()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002DC540()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xEC0000007373654CLL;
  v5._countAndFlagsBits = 0x2074736567677553;
  v1._object = 0x8000000100468380;
  v1._countAndFlagsBits = 0xD000000000000019;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002DC5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002DC688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1002DB9E4();
}

uint64_t sub_1002DC738(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts24SuggestLessContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002DC7FC(uint64_t a1)
{
  result = sub_1002DC854(&qword_10057DA68, type metadata accessor for SuggestLessContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002DC854(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_1002DC89C()
{
  v1 = v0;
  v2 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  v8 = qword_100576738;
  v9 = *(v0 + qword_100576738);
  v10 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1001A1560(v9 + v10, v7);

  v11 = sub_100215D14();
  sub_1001A1628(v7);
  if (!v11)
  {

    goto LABEL_5;
  }

  v12 = [v11 subscribed];

  if ((v12 & 1) == 0)
  {
LABEL_5:
    v14 = *(v1 + v8);
    v15 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v14 + v15, v4);
    v13 = swift_getEnumCaseMultiPayload() != 1;
    sub_1001A1628(v4);
    return v13;
  }

  return 0;
}

unint64_t sub_1002DCA20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002DE230(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Int sub_1002DCA54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002DCA9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_1002DCAE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002DE240(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1002DCB14(unint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = type metadata accessor for BugReportFrequency();
  v3 = *(v22 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BugReport.Domain();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BugReport.ErrorKind();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastsSystem();
  v14 = __chkstk_darwin();
  (*(v16 + 104))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PodcastsSystem.cloudSync(_:), v14);
  if (a1 >= 5)
  {
    v24[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 104))(v13, **(&off_1004EB7D8 + a1), v10);
    (*(v7 + 104))(v9, enum case for BugReport.Domain.podcasts(_:), v6);
    v17 = objc_allocWithZone(type metadata accessor for BugReport());
    v18 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    sub_100004428(v21 + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter, v24);
    sub_1000044A0(v24, v24[3]);
    v19 = v22;
    (*(v3 + 104))(v5, enum case for BugReportFrequency.hourly(_:), v22);
    if (!v23)
    {
      sub_10016A0DC(_swiftEmptyArrayStorage);
    }

    dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

    (*(v3 + 8))(v5, v19);
    return sub_100004590(v24);
  }

  return result;
}

uint64_t sub_1002DCF58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v7 = type metadata accessor for BugReportFrequency();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BugReport.Domain();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BugReport.ErrorKind();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastsSystem();
  v18 = __chkstk_darwin();
  (*(v20 + 104))(&v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PodcastsSystem.cloudSync(_:), v18);
  if (a1 >= 5)
  {
    v61[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    (*(v15 + 104))(v17, **(&off_1004EB7D8 + a1), v14);
    (*(v11 + 104))(v13, enum case for BugReport.Domain.podcasts(_:), v10);
    v21 = objc_allocWithZone(type metadata accessor for BugReport());
    v22 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    if (a5)
    {
      v23 = a5;
    }

    else
    {
      v23 = sub_10016A0DC(_swiftEmptyArrayStorage);
    }

    *&v59 = 0x6575737369;
    *(&v59 + 1) = 0xE500000000000000;

    AnyHashable.init<A>(_:)();
    v24 = "mergeConflictInReadOnlySyncMode";
    v25 = 0xD000000000000017;
    v26 = "hileInReadOnlyMode";
    v27 = 0xD00000000000001FLL;
    if (a1 != 3)
    {
      v27 = 0xD000000000000022;
      v26 = "ter";
    }

    if (a1 != 2)
    {
      v25 = v27;
      v24 = v26;
    }

    v28 = "syncAuthenticationError";
    v29 = 0xD00000000000001CLL;
    if (!a1)
    {
      v29 = 0xD000000000000015;
      v28 = "wipingLocalDataFromRemoteKey";
    }

    if (a1 <= 1)
    {
      v30 = v29;
    }

    else
    {
      v30 = v25;
    }

    if (a1 <= 1)
    {
      v24 = v28;
    }

    *&v59 = v30;
    *(&v59 + 1) = v24 | 0x8000000000000000;

    v31._countAndFlagsBits = 45;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);

    v32 = v59;
    v33 = v51;
    v34 = sub_1002DE028(v51);
    v36 = v35;
    v59 = v32;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v60 = &type metadata for String;
    sub_10016B7CC(&v59, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v23;
    sub_10025EA58(v58, v61, isUniquelyReferenced_nonNull_native);
    sub_10016BE9C(v61);
    v39 = v57;
    *&v59 = 7955819;
    *(&v59 + 1) = 0xE300000000000000;
    AnyHashable.init<A>(_:)();
    v40 = sub_1002DE028(v33);
    v60 = &type metadata for String;
    *&v59 = v40;
    *(&v59 + 1) = v41;
    sub_10016B7CC(&v59, v58);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v39;
    sub_10025EA58(v58, v61, v42);
    sub_10016BE9C(v61);
    v43 = v57;
    *&v59 = 0x6E6F6973726576;
    *(&v59 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v60 = &type metadata for String;
    v44 = 7104878;
    if (v53)
    {
      v44 = v52;
      v45 = v53;
    }

    else
    {
      v45 = 0xE300000000000000;
    }

    *&v59 = v44;
    *(&v59 + 1) = v45;
    sub_10016B7CC(&v59, v58);

    v46 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v43;
    sub_10025EA58(v58, v61, v46);
    sub_10016BE9C(v61);
    sub_1000044A0((v54 + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter), *(v54 + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter + 24));
    v48 = v55;
    v47 = v56;
    (*(v55 + 104))(v9, enum case for BugReportFrequency.hourly(_:), v56);
    dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

    return (*(v48 + 8))(v9, v47);
  }

  return result;
}

uint64_t sub_1002DD568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a5;
  if (a4)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  v12 = 0;
  if (a5)
  {
LABEL_3:
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v13 = a1;
  sub_1002DCF58(a3, a6, v10, v12, v7);
}

uint64_t sub_1002DD81C(void *a1, void *a2)
{
  v4 = [a1 keys];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = [a1 sinceDomainVersion];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_100168088(&qword_100573618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  AnyHashable.init<A>(_:)();
  v13 = [a2 description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v14;
  *(inited + 80) = v16;
  v17 = sub_10016A0DC(inited);
  swift_setDeallocating();
  sub_1001CF054(inited + 32);
  sub_1002DD9C0(2, v6, v9, v11, v17);
}

uint64_t sub_1002DD9C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v43 = a4;
  v41 = a2;
  v42 = a3;
  v7 = type metadata accessor for BugReportFrequency();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BugReport.Domain();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BugReport.ErrorKind();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PodcastsSystem();
  v18 = __chkstk_darwin();
  (*(v20 + 104))(&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for PodcastsSystem.cloudSync(_:), v18);
  if (a1 >= 5)
  {
    v51[0] = a1;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    (*(v15 + 104))(v17, **(&off_1004EB7D8 + a1), v14);
    (*(v11 + 104))(v13, enum case for BugReport.Domain.podcasts(_:), v10);
    v21 = objc_allocWithZone(type metadata accessor for BugReport());
    v22 = BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)();
    if (a5)
    {
      v23 = a5;
    }

    else
    {
      v23 = sub_10016A0DC(_swiftEmptyArrayStorage);
    }

    v24 = 0xD000000000000015;
    *&v49 = 0x6575737369;
    *(&v49 + 1) = 0xE500000000000000;

    AnyHashable.init<A>(_:)();
    v40 = v22;
    if (a1 <= 1)
    {
      if (a1)
      {
        v25 = "syncAuthenticationError";
        v24 = 0xD00000000000001CLL;
      }

      else
      {
        v25 = "wipingLocalDataFromRemoteKey";
      }
    }

    else if (a1 == 2)
    {
      v25 = "mergeConflictInReadOnlySyncMode";
      v24 = 0xD000000000000017;
    }

    else if (a1 == 3)
    {
      v25 = "hileInReadOnlyMode";
      v24 = 0xD00000000000001FLL;
    }

    else
    {
      v25 = "ter";
      v24 = 0xD000000000000022;
    }

    v27 = v45;
    v26 = v46;
    v29 = v43;
    v28 = v44;
    v30 = v42;
    v50 = &type metadata for String;
    *&v49 = v24;
    *(&v49 + 1) = v25 | 0x8000000000000000;
    sub_10016B7CC(&v49, v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v23;
    sub_10025EA58(v48, v51, isUniquelyReferenced_nonNull_native);
    sub_10016BE9C(v51);
    v32 = v47;
    *&v49 = 1937335659;
    *(&v49 + 1) = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v50 = sub_100168088(&qword_10057C9C0);
    *&v49 = v41;
    sub_10016B7CC(&v49, v48);

    v33 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v32;
    sub_10025EA58(v48, v51, v33);
    sub_10016BE9C(v51);
    v34 = v47;
    *&v49 = 0x6E6F6973726576;
    *(&v49 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v50 = &type metadata for String;
    v35 = 7104878;
    if (v29)
    {
      v35 = v30;
    }

    v36 = 0xE300000000000000;
    if (v29)
    {
      v36 = v29;
    }

    *&v49 = v35;
    *(&v49 + 1) = v36;
    sub_10016B7CC(&v49, v48);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v34;
    sub_10025EA58(v48, v51, v37);
    sub_10016BE9C(v51);
    sub_1000044A0((v28 + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter), *(v28 + OBJC_IVAR____TtC8Podcasts20CloudSyncBugReporter_bugReporter + 24));
    (*(v27 + 104))(v9, enum case for BugReportFrequency.hourly(_:), v26);
    v38 = v40;
    dispatch thunk of BugReporter.submit(bugReport:maximumFrequency:userInfo:)();

    return (*(v27 + 8))(v9, v26);
  }

  return result;
}

uint64_t sub_1002DE028(unint64_t a1)
{
  if (a1 >= 6)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return result;
}

uint64_t sub_1002DE084()
{
  result = 0xD000000000000015;
  v2 = *v0;
  if (*v0 > 1)
  {
    switch(v2)
    {
      case 2:
        return 0xD000000000000017;
      case 3:
        return 0xD00000000000001FLL;
      case 4:
        return 0xD000000000000022;
    }

LABEL_12:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD00000000000001CLL;
    }

    goto LABEL_12;
  }

  return result;
}

unint64_t sub_1002DE184()
{
  result = qword_10057DAA8;
  if (!qword_10057DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DAA8);
  }

  return result;
}

unint64_t sub_1002DE1DC()
{
  result = qword_10057DAB0;
  if (!qword_10057DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DAB0);
  }

  return result;
}

unint64_t sub_1002DE230(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002DE240(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

BOOL sub_1002DE260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1002DE43C(v7, v9);
}

id sub_1002DE2CC()
{
  type metadata accessor for PlaybackRateHelper();
  static PlaybackRateHelper.standardRate.getter();
  v1 = v0;
  result = [objc_opt_self() defaultEnhanceDialogueEnabled];
  byte_100593538 = 0;
  dword_10059353C = v1;
  byte_100593540 = result;
  return result;
}

__n128 sub_1002DE330(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002DE354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DE39C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DE400(float *a1, float *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17SettingsContainerVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s17SettingsContainerVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s17SettingsContainerVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1002DE5F0()
{
  result = qword_10057DAB8;
  if (!qword_10057DAB8)
  {
    sub_100168310(&qword_10057C208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DAB8);
  }

  return result;
}

unint64_t sub_1002DE658()
{
  result = qword_10057DAC0;
  if (!qword_10057DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DAC0);
  }

  return result;
}

uint64_t sub_1002DE6AC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x800000010046E1A0;
  v1._countAndFlagsBits = 0x1000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

BOOL sub_1002DE74C()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &v7[-v1];
  swift_beginAccess();
  if (!*(v0 + 16))
  {
    return 0;
  }

  type metadata accessor for CategoryContextActionConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
  swift_beginAccess();
  sub_1001BB0E0(v0 + v3, v2);
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4) != 1;
  sub_100009104(v2, &qword_100574040);
  return v5;
}

id sub_1002DE88C()
{
  sub_100168088(&unk_10057BB90);
  __chkstk_darwin();
  v2 = &v8 - v1;
  sub_1002DEA50();
  result = sub_10032929C();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    if (!*(v0 + 16))
    {

      v7 = type metadata accessor for PresentationSource();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      return sub_100009104(v2, &unk_10057BB90);
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    v5 = type metadata accessor for PresentationSource();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v2, 1, v5) == 1)
    {

      return sub_100009104(v2, &unk_10057BB90);
    }

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();

    return (*(v6 + 8))(v2, v5);
  }

  return result;
}

uint64_t sub_1002DEA50()
{
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricsFieldInclusionRequest();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v8 = v19 - v7;
  v26 = type metadata accessor for MetricsData();
  v9 = *(v26 - 8);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_categoryAdamID + 8) & 1) == 0)
    {
      v25 = v2;
      v13 = *(v0 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_categoryAdamID);
      sub_100168088(&unk_10057DC50);
      v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100400790;
      *&v28 = v13;
      sub_1000366D8();

      v22 = v4;
      v14 = v0;
      v19[5] = BinaryInteger.description.getter();
      v19[4] = v15;
      v19[3] = static MetricsTargetType.button.getter();
      v19[2] = v16;
      v17 = static MetricsActionType.share.getter();
      v21 = v3;
      v19[1] = v17;
      v20 = v9;
      static MetricsActionContext.contextual.getter();
      v18 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
      swift_beginAccess();
      sub_1001BB0E0(v14 + v18, v8);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v34 = v28;
      sub_100009104(&v34, &unk_100574650);
      v33 = v29;
      sub_100009104(&v33, &unk_100573A90);
      v32 = v30;
      sub_100009104(&v32, &unk_100574660);
      sub_100037470(v31);

      sub_100009104(v8, &qword_100574040);
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v22 + 8))(v6, v21);
      (*(v20 + 8))(v11, v26);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      v27[3] = type metadata accessor for EmptyAction();
      v27[4] = &protocol witness table for EmptyAction;
      sub_10000E680(v27);
      EmptyAction.init(actionMetrics:)();
      ContextActionsConfiguration.perform(_:)();

      return sub_100004590(v27);
    }
  }

  return result;
}

uint64_t sub_1002DEF74()
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v2 = &aBlock[-1] - v1;
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    type metadata accessor for CategoryContextActionConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
      v23 = 0;
      v24 = 0;
      v6 = *(v0 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_managedContextProvider);

      v7 = [v6 mainQueueContext];
      v8 = [v6 mainQueueContext];
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = v4;
      v9[4] = v2;
      v9[5] = &v23;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1002DF75C;
      *(v10 + 24) = v9;
      aBlock[4] = sub_10002D7F0;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002D904;
      aBlock[3] = &unk_1004EBA38;
      v11 = _Block_copy(aBlock);

      [v7 performBlockAndWait:v11];

      _Block_release(v11);
      LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

      if (v7)
      {
        __break(1u);
      }

      else
      {
        v12 = v0 + OBJC_IVAR____TtC8Podcasts26ShareCategoryContextAction_categoryAdamID;
        *v12 = *(v4 + qword_100576858);
        *(v12 + 8) = 0;
        v13 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link;
        swift_beginAccess();
        sub_1002DF768(v2, v0 + v13);
        swift_endAccess();
        object = v24;
        if (v24)
        {
          countAndFlagsBits = v23;
        }

        else
        {
          v16 = [objc_opt_self() mainBundle];
          v25._object = 0xE000000000000000;
          v17._object = 0x800000010046E1A0;
          v17._countAndFlagsBits = 0x1000000000000011;
          v18._countAndFlagsBits = 0;
          v18._object = 0xE000000000000000;
          v25._countAndFlagsBits = 0;
          v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v25);
          countAndFlagsBits = v19._countAndFlagsBits;
          object = v19._object;
        }

        v20 = (v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_shareTitle);
        *v20 = countAndFlagsBits;
        v20[1] = object;

        sub_100009104(v2, &qword_100574040);
      }
    }
  }

  return result;
}

void *sub_1002DF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_100168088(&qword_100574040);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  result = NSManagedObjectContext.unsafeCategory(forAdamID:)();
  if (result)
  {
    v11 = result;
    v12 = [result url];
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v7, 1, v14) != 1)
      {
        (*(v15 + 32))(v9, v7, v14);
        (*(v15 + 56))(v9, 0, 1, v14);
        goto LABEL_7;
      }

      sub_100009104(v7, &qword_100574040);
    }

    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
LABEL_7:
    sub_1001FDDA8(v9, a3);
    v17 = [v11 name];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *a4 = v18;
    a4[1] = v20;
  }

  return result;
}

uint64_t sub_1002DF58C()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_link, &qword_100574040);

  v1 = OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts23ShareOtherContextAction_contextActionType, &qword_100575870);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ShareCategoryContextAction()
{
  result = qword_10057DB08;
  if (!qword_10057DB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DF768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DF7D8(uint64_t a1, char a2)
{
  *(v3 + 113) = a2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v2;
  return _swift_task_switch(sub_1002DF7FC, 0, 0);
}

uint64_t sub_1002DF7FC()
{
  if (sub_1003798D8(*(v0 + 113)) == 0x6669636570736E75 && v1 == 0xEB00000000646569)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = *(*(v0 + 216) + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_analyticsChannel);
      v5 = *(v0 + 113);
      type metadata accessor for AnalyticsEvent();
      v6 = PFAnalyticsEventNameCarPlayPlaybackSource;
      sub_100168088(&qword_100575270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100400790;
      strcpy((inited + 32), "playbackSource");
      *(inited + 47) = -18;
      sub_1003798D8(v5);
      v8 = v6;
      v9 = String._bridgeToObjectiveC()();

      *(inited + 48) = v9;
      sub_10000F898(inited);
      swift_setDeallocating();
      sub_100009104(inited + 32, &qword_100575280);
      v10 = AnalyticsEvent.__allocating_init(name:payload:)();
      [v4 sendEvent:v10];
    }
  }

  sub_1001CC734(*(v0 + 208), v0 + 72);
  if (*(v0 + 112))
  {
    v11 = *(v0 + 72);
    *(v0 + 232) = v11;
    v12 = swift_task_alloc();
    *(v0 + 240) = v12;
    *v12 = v0;
    v12[1] = sub_1002DFC34;

    return sub_1002E71DC(v11);
  }

  else
  {
    sub_100184658((v0 + 72), v0 + 120);
    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v14[1] = sub_1002DFAB8;

    return sub_1002E66C4(v0 + 120);
  }
}

uint64_t sub_1002DFAB8(uint64_t a1)
{
  v3 = *v2;
  v3[20] = v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = sub_1002DFDB0;
  }

  else
  {
    v4 = sub_1002DFBD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DFBD0()
{
  sub_100004590(v0 + 120);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DFC34(uint64_t a1)
{
  v3 = *v2;
  v3[23] = v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = sub_1002DFE18;
  }

  else
  {
    v4 = sub_1002DFD4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002DFD4C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002DFDB0()
{
  sub_100004590(v0 + 120);
  v1 = *(v0 + 168);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002DFE18()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1002DFE80()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_subscriptions) = &_swiftEmptySetSingleton;
  v2 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template;
  *(v1 + v2) = [objc_opt_self() sharedTemplate];
  *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_lastSignificantChangeTime) = 0;
  *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController____lazy_storage___playbackRateButton) = 0;
  v3 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemDidChangeSubject;
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *(v1 + v3) = CurrentValueSubject.init(_:)();
  v4 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemPeriodicUpdateSubject;
  swift_allocObject();
  *(v1 + v4) = CurrentValueSubject.init(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1002DFFB4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100168088(&qword_10057AB40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  *&v1[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_subscriptions] = &_swiftEmptySetSingleton;
  v9 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template;
  *&v2[v9] = [objc_opt_self() sharedTemplate];
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_lastSignificantChangeTime] = 0;
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController____lazy_storage___playbackRateButton] = 0;
  v10 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemDidChangeSubject;
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  *&v2[v10] = CurrentValueSubject.init(_:)();
  v11 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackItemPeriodicUpdateSubject;
  swift_allocObject();
  *&v2[v11] = CurrentValueSubject.init(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph] = a1;

  BaseObjectGraph.inject<A>(_:)();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher], v8, v5);
  sub_100168088(&qword_10057DDA0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_analyticsChannel] = v16;
  sub_100009F1C(0, &qword_100575D00);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_interfaceController] = v16;
  sub_100168088(&unk_1005738E0);
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_managedContextProvider] = v16;
  type metadata accessor for PlaybackController();
  BaseObjectGraph.inject<A>(_:)();
  *&v2[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackController] = v16;
  v15.receiver = v2;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "init");
  sub_1002E027C();
  sub_1002E1408();

  return v12;
}

uint64_t sub_1002E027C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100168088(&qword_10057DDD0);
  v2 = *(v1 - 8);
  v89 = v1;
  v90 = v2;
  __chkstk_darwin(v1);
  v87 = &v60 - v3;
  v4 = sub_100168088(&qword_10057DDD8);
  v5 = *(v4 - 8);
  v91 = v4;
  v92 = v5;
  __chkstk_darwin(v4);
  v88 = &v60 - v6;
  v78 = sub_100168088(&qword_10057DDE0);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - v7;
  v80 = sub_100168088(&qword_10057DDE8);
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = &v60 - v8;
  v82 = sub_100168088(&qword_10057DDF0);
  v84 = *(v82 - 8);
  __chkstk_darwin(v82);
  v76 = &v60 - v9;
  v10 = sub_100168088(&qword_10057DDF8);
  v11 = *(v10 - 8);
  v85 = v10;
  v86 = v11;
  __chkstk_darwin(v10);
  v77 = &v60 - v12;
  v68 = sub_100168088(&qword_10057DE00);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = &v60 - v13;
  v70 = sub_100168088(&qword_10057DE08);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v65 = &v60 - v14;
  v72 = sub_100168088(&unk_10057DE10);
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v67 = &v60 - v15;
  v16 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_100168088(&unk_10057DE20);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - v21;
  v96 = sub_100168088(&unk_10057A030);
  v23 = *(v96 - 1);
  __chkstk_darwin(v96);
  v25 = &v60 - v24;
  v61 = sub_100168088(&qword_10057DE30);
  v64 = *(v61 - 8);
  *&v26 = __chkstk_darwin(v61).n128_u64[0];
  v28 = &v60 - v27;
  v29 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
  v60 = v0;
  [v29 addObserver:{v0, v26}];
  v94 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_playbackController);
  dispatch thunk of PlaybackController.$nowPlayingItem.getter();
  v62 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100009FAC(&qword_100575E78, &unk_10057DE20);
  Publisher.removeDuplicates(by:)();
  (*(v20 + 8))(v22, v19);
  v30 = sub_100009F1C(0, &qword_1005729D0);
  v31 = static OS_dispatch_queue.main.getter();
  v100 = v31;
  v99 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v32 = *(v99 - 8);
  v98 = *(v32 + 56);
  v95 = v32 + 56;
  v98(v18, 1, 1, v99);
  v93 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100009FAC(&unk_10057A060, &unk_10057A030);
  v97 = sub_100024384(&qword_100575C40, &qword_1005729D0);
  v33 = v96;
  Publisher.receive<A>(on:options:)();
  v34 = v18;
  sub_100009104(v18, &qword_100575C10);

  (*(v23 + 8))(v25, v33);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100009FAC(&qword_10057DE38, &qword_10057DE30);
  v35 = v61;
  Publisher<>.sink(receiveValue:)();

  (*(v64 + 8))(v28, v35);
  v36 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_subscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = v66;
  dispatch thunk of PlaybackController.$tracklist.getter();
  sub_100009FAC(&qword_10057DE40, &qword_10057DE00);
  sub_1002E9B50();
  v38 = v65;
  v39 = v68;
  Publisher<>.removeDuplicates()();
  (*(v69 + 8))(v37, v39);
  v63 = v30;
  v40 = static OS_dispatch_queue.main.getter();
  v100 = v40;
  v41 = v34;
  v98(v34, 1, 1, v99);
  sub_100009FAC(&qword_10057DE68, &qword_10057DE08);
  v42 = v67;
  v43 = v70;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v41, &qword_100575C10);

  (*(v71 + 8))(v38, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&unk_10057DE70, &unk_10057DE10);
  v44 = v72;
  Publisher<>.sink(receiveValue:)();

  (*(v73 + 8))(v42, v44);
  v64 = v36;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v100 = dispatch thunk of PlaybackController.isPlayingPublisher.getter();
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  v45 = v74;
  Publisher<>.removeDuplicates()();

  *(swift_allocObject() + 16) = ObjectType;
  sub_100168088(&qword_10057DE88);
  sub_100009FAC(&qword_10057DE90, &qword_10057DDE0);
  v46 = v75;
  v47 = v78;
  Publisher.map<A>(_:)();

  (*(v79 + 8))(v45, v47);
  sub_100009FAC(&qword_10057DE98, &qword_10057DDE8);
  sub_100009FAC(&qword_10057DEA0, &qword_10057DE88);
  v48 = v76;
  v49 = v80;
  Publisher<>.switchToLatest()();
  (*(v81 + 8))(v46, v49);
  v50 = static OS_dispatch_queue.main.getter();
  v100 = v50;
  v98(v41, 1, 1, v99);
  sub_100009FAC(&qword_10057DEA8, &qword_10057DDF0);
  v51 = v77;
  v52 = v82;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v41, &qword_100575C10);

  (*(v84 + 8))(v48, v52);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057DEB0, &qword_10057DDF8);
  v53 = v85;
  Publisher<>.sink(receiveValue:)();

  (*(v86 + 8))(v51, v53);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v100 = dispatch thunk of PlaybackController.playbackRatePublisher.getter();
  sub_100168088(&qword_10057DEB8);
  sub_100009FAC(&qword_10057DEC0, &qword_10057DEB8);
  sub_1002E9C40();
  v54 = v87;
  Publisher<>.removeDuplicates()();

  v55 = static OS_dispatch_queue.main.getter();
  v100 = v55;
  v98(v41, 1, 1, v99);
  sub_100009FAC(&qword_10057DED8, &qword_10057DDD0);
  v57 = v88;
  v56 = v89;
  Publisher.receive<A>(on:options:)();
  sub_100009104(v41, &qword_100575C10);

  (*(v90 + 8))(v54, v56);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009FAC(&qword_10057DEE0, &qword_10057DDD8);
  v58 = v91;
  Publisher<>.sink(receiveValue:)();

  (*(v92 + 8))(v57, v58);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void sub_1002E1408()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Setting up the Now Playing template.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  sub_1002E2404();
  v9 = *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
  v10 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v10 && (v11 = v10, v12 = [v10 podcast], v11, v12) && (MPModelObject.uuid.getter(), v14 = v13, v12, v14))
  {

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  [v9 setAlbumArtistButtonEnabled:v15];
  dispatch thunk of PlaybackController.queueController.getter();
  if (dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter())
  {
    v16 = 1;
  }

  else
  {
    v16 = dispatch thunk of PlaybackController.QueueController.hasSoftQueue.getter();
  }

  [v9 setUpNextButtonEnabled:v16 & 1];
  v17 = [objc_opt_self() mainBundle];
  v22._object = 0xEC0000007478654ELL;
  v18._countAndFlagsBits = 0x49545F4555455551;
  v18._object = 0xEB00000000454C54;
  v22._countAndFlagsBits = 0x20676E6979616C50;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v22);

  v20 = String._bridgeToObjectiveC()();

  [v9 setUpNextTitle:v20];
}

id sub_1002E16E4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for CarPlayNowPlayingController()
{
  result = qword_10057DCE0;
  if (!qword_10057DCE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002E1924()
{
  sub_1002E1A08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002E1A08()
{
  if (!qword_10057DCF0)
  {
    type metadata accessor for BaseObjectGraph();
    v0 = type metadata accessor for ActionDispatcher();
    if (!v1)
    {
      atomic_store(v0, &qword_10057DCF0);
    }
  }
}

uint64_t sub_1002E1A60(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = MPModelObject.adamID.getter();
    v5 = v4;
    if (v2)
    {
LABEL_3:
      v6 = MPModelObject.adamID.getter();
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v5 = 1;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  v7 = 1;
LABEL_6:
  v8 = (v3 == v6) & ~v7;
  if (v5)
  {
    v8 = v7;
  }

  return v8 & 1;
}

uint64_t sub_1002E1AD8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Now Playing item did change called.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_lastSignificantChangeTime) = 0;
  CurrentValueSubject.send(_:)();
  sub_1002E1408();
  return CurrentValueSubject.send(_:)();
}

void sub_1002E1C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_1002E1CC8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Now Playing manifest contents did change called.", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
  dispatch thunk of PlaybackController.queueController.getter();
  if (dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter())
  {
    v10 = 1;
  }

  else
  {
    v10 = dispatch thunk of PlaybackController.QueueController.hasSoftQueue.getter();
  }

  return [v9 setUpNextButtonEnabled:v10 & 1];
}

uint64_t sub_1002E1E7C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100168088(&qword_10057DEE8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_100168088(&qword_10057DEF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  if (*a1 == 1)
  {
    sub_100009F1C(0, &qword_10057DF00);
    v11 = [objc_opt_self() mainRunLoop];
    v12 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_100009104(v10, &qword_10057DEF0);
    v18 = v13;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1002E94F4(&qword_10057DF08, &type metadata accessor for NSTimer.TimerPublisher);
    v14 = ConnectablePublisher.autoconnect()();

    v18 = v14;
    sub_100168088(&qword_10057DF10);
    sub_100009FAC(&qword_10057DF18, &qword_10057DF10);
    v15 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    type metadata accessor for Date();
    Empty.init(completeImmediately:)();
    sub_100009FAC(&qword_10057DEF8, &qword_10057DEE8);
    v15 = Publisher.eraseToAnyPublisher()();
    result = (*(v5 + 8))(v7, v4);
  }

  *a2 = v15;
  return result;
}

void sub_1002E21A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002E21FC();
  }
}

uint64_t sub_1002E21FC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = COERCE_DOUBLE(PlaybackController.currentTime.getter());
  if ((v7 & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_lastSignificantChangeTime;
    if (*&result - *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_lastSignificantChangeTime) > 30.0)
    {
      v9 = result;
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.carPlay.getter();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Now Playing player periodic did have a significant time change.", v12, 2u);
      }

      (*(v3 + 8))(v5, v2);
      *&result = COERCE_DOUBLE(CurrentValueSubject.send(_:)());
      *(v1 + v8) = v9;
    }
  }

  return result;
}

void sub_1002E23B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002E2404();
  }
}

void sub_1002E2404()
{
  v7[4] = sub_1002E3100();
  v7[5] = sub_1002E2574();
  v1 = 0;
  v7[6] = sub_1002E4004();
  v2 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_template);
LABEL_2:
  if (v1 <= 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = v1;
  }

  while (1)
  {
    if (v1 == 3)
    {
      sub_100168088(&qword_10057DDA8);
      swift_arrayDestroy();
      sub_100009F1C(0, &unk_10057DDB0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v2 updateNowPlayingButtons:isa];

      return;
    }

    if (v3 == v1)
    {
      break;
    }

    v4 = v7[v1++ + 4];
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
}

id sub_1002E2574()
{
  v1 = sub_100168088(&qword_10057AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = aBlock - v5;
  v7 = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController____lazy_storage___playbackRateButton;
  v8 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController____lazy_storage___playbackRateButton);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController____lazy_storage___playbackRateButton);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher, v1, v4);
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    (*(v2 + 32))(v13 + v11, v6, v1);
    *(v13 + v12) = v10;
    v14 = objc_allocWithZone(CPNowPlayingPlaybackRateButton);
    aBlock[4] = sub_1002E9580;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E8240;
    aBlock[3] = &unk_1004EBD20;
    v15 = _Block_copy(aBlock);

    v16 = [v14 initWithHandler:v15];
    _Block_release(v15);
    v17 = *(v0 + v7);
    *(v0 + v7) = v16;
    v9 = v16;

    v8 = 0;
  }

  v18 = v8;
  return v9;
}

uint64_t sub_1002E27A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ActionMetricsBehavior();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for ActionOutcome();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for CarPlayCyclePlaybackRateAction();
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_1002E2980, v10, v9);
}

uint64_t sub_1002E2980()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  static ActionMetrics.notInstrumented.getter();
  v0[5] = v2;
  v0[6] = sub_1002E94F4(&qword_100577230, type metadata accessor for CarPlayCyclePlaybackRateAction);
  v6 = sub_10000E680(v0 + 2);
  sub_1002E9780(v1, v6, type metadata accessor for CarPlayCyclePlaybackRateAction);
  (*(v4 + 104))(v3, enum case for ActionMetricsBehavior.notProcessed(_:), v5);
  v0[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v8;
  v0[26] = v7;

  return _swift_task_switch(sub_1002E2AB8, v8, v7);
}

uint64_t sub_1002E2AB8()
{
  sub_100168088(&qword_10057AB40);
  v0[27] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1002E2BE4;
  v4 = v0[17];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E2BE4()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E2E7C;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E2D34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E2D34()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E2DC8, v4, v5);
}

uint64_t sub_1002E2DC8()
{

  sub_1002E97E8(*(v0 + 152), type metadata accessor for CarPlayCyclePlaybackRateAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E2E7C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E2F08, v4, v5);
}

uint64_t sub_1002E2F08()
{

  sub_100004590((v0 + 2));
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to cycle playback rate: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v7 + 8))(v6, v8);
  sub_1002E97E8(v0[19], type metadata accessor for CarPlayCyclePlaybackRateAction);

  v9 = v0[1];

  return v9();
}

id sub_1002E3100()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_10057AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v10 = static Podcasts.isAdvancedPlaybackEnabled.getter();
  result = 0;
  if (v10)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:v12];

    if (v13 && (v14 = v0, v15 = sub_1002E358C(17.0), v13, v15))
    {
      v16 = *(v14 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
      (*(v6 + 16))(v9, v14 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher, v5);
      v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v18 = swift_allocObject();
      (*(v6 + 32))(v18 + v17, v9, v5);
      *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
      v19 = objc_allocWithZone(CPNowPlayingImageButton);
      v34 = sub_1002E98F0;
      v35 = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002E8240;
      v33 = &unk_1004EBD98;
      v20 = _Block_copy(aBlock);
      v21 = v15;

      v22 = [v19 initWithImage:v21 handler:v20];
      _Block_release(v20);

      v23 = qword_100572860;
      v24 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for PlaybackController.TransportCommand();
      v26 = sub_1001825CC(v25, static CarPlayStepPlaybackRateActionImplementation.decreaseSpeedCommand);
      v33 = v25;
      v34 = &protocol witness table for PlaybackController.TransportCommand;
      v27 = sub_10000E680(aBlock);
      (*(*(v25 - 8) + 16))(v27, v26, v25);
      v28 = dispatch thunk of PlaybackController.canPerform(_:)();
      sub_100004590(aBlock);
      [v24 setEnabled:v28 & 1];

      return v24;
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.carPlay.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Could not find system image provided for playback rate slower button, will not create button", v31, 2u);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E358C(double a1)
{
  [v1 size];
  v4 = v3;
  [v1 size];
  v6 = v4 / v5 * a1;
  v7 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v6, a1}];
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  *(v8 + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002E953C;
  *(v9 + 24) = v8;
  v14[4] = sub_1002E9558;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1002E81F4;
  v14[3] = &unk_1004EBCD0;
  v10 = _Block_copy(v14);
  v11 = v1;

  v12 = [v7 imageWithActions:v10];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ActionMetricsBehavior();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for ActionOutcome();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for CarPlayStepPlaybackRateAction();
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_1002E392C, v10, v9);
}

uint64_t sub_1002E392C()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  static ActionMetrics.notInstrumented.getter();
  *v1 = 1;
  v0[5] = v2;
  v0[6] = sub_1002E94F4(&qword_10057DDC0, type metadata accessor for CarPlayStepPlaybackRateAction);
  v6 = sub_10000E680(v0 + 2);
  sub_1002E9780(v1, v6, type metadata accessor for CarPlayStepPlaybackRateAction);
  (*(v4 + 104))(v3, enum case for ActionMetricsBehavior.notProcessed(_:), v5);
  v0[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v8;
  v0[26] = v7;

  return _swift_task_switch(sub_1002E3A70, v8, v7);
}

uint64_t sub_1002E3A70()
{
  sub_100168088(&qword_10057AB40);
  v0[27] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1002E3B9C;
  v4 = v0[17];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E3B9C()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E3D80;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E3CEC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E3CEC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E9CE0, v4, v5);
}

uint64_t sub_1002E3D80()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E3E0C, v4, v5);
}

uint64_t sub_1002E3E0C()
{

  sub_100004590((v0 + 2));
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to decrease playback rate: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v7 + 8))(v6, v8);
  sub_1002E97E8(v0[19], type metadata accessor for CarPlayStepPlaybackRateAction);

  v9 = v0[1];

  return v9();
}

id sub_1002E4004()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100168088(&qword_10057AB40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = aBlock - v8;
  v10 = static Podcasts.isAdvancedPlaybackEnabled.getter();
  result = 0;
  if (v10)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:v12];

    if (v13 && (v14 = v0, v15 = sub_1002E358C(12.0), v13, v15))
    {
      v16 = *(v14 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
      (*(v6 + 16))(v9, v14 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher, v5);
      v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v18 = swift_allocObject();
      (*(v6 + 32))(v18 + v17, v9, v5);
      *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;
      v19 = objc_allocWithZone(CPNowPlayingImageButton);
      v34 = sub_1002E93A8;
      v35 = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002E8240;
      v33 = &unk_1004EBC30;
      v20 = _Block_copy(aBlock);
      v21 = v15;

      v22 = [v19 initWithImage:v21 handler:v20];
      _Block_release(v20);

      v23 = qword_100572858;
      v24 = v22;
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for PlaybackController.TransportCommand();
      v26 = sub_1001825CC(v25, static CarPlayStepPlaybackRateActionImplementation.increaseSpeedCommand);
      v33 = v25;
      v34 = &protocol witness table for PlaybackController.TransportCommand;
      v27 = sub_10000E680(aBlock);
      (*(*(v25 - 8) + 16))(v27, v26, v25);
      v28 = dispatch thunk of PlaybackController.canPerform(_:)();
      sub_100004590(aBlock);
      [v24 setEnabled:v28 & 1];

      return v24;
    }

    else
    {
      sub_100009F1C(0, &qword_1005748A0);
      static OS_os_log.carPlay.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Could not find system image provided for playback rate slower button, will not create button", v31, 2u);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E4488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100168088(&qword_10057AB40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  static TaskPriority.userInitiated.getter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v9 + 16))(v12, a2, v8);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = &protocol witness table for MainActor;
  (*(v9 + 32))(v19 + v18, v12, v8);
  *(v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_100217A04(0, 0, v15, a5, v19);
}

uint64_t sub_1002E46A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for Logger();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for ActionMetricsBehavior();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for ActionOutcome();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for CarPlayStepPlaybackRateAction();
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v10;
  v5[23] = v9;

  return _swift_task_switch(sub_1002E4880, v10, v9);
}

uint64_t sub_1002E4880()
{
  v1 = v0[19];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  static ActionMetrics.notInstrumented.getter();
  *v1 = 0;
  v0[5] = v2;
  v0[6] = sub_1002E94F4(&qword_10057DDC0, type metadata accessor for CarPlayStepPlaybackRateAction);
  v6 = sub_10000E680(v0 + 2);
  sub_1002E9780(v1, v6, type metadata accessor for CarPlayStepPlaybackRateAction);
  (*(v4 + 104))(v3, enum case for ActionMetricsBehavior.notProcessed(_:), v5);
  v0[24] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v8;
  v0[26] = v7;

  return _swift_task_switch(sub_1002E49C0, v8, v7);
}

uint64_t sub_1002E49C0()
{
  sub_100168088(&qword_10057AB40);
  v0[27] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1002E4AEC;
  v4 = v0[17];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E4AEC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E4D84;
  }

  else
  {
    (*(v2[16] + 8))(v2[17], v2[15]);
    v3 = v2[25];
    v4 = v2[26];
    v5 = sub_1002E4C3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E4C3C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 2));
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E4CD0, v4, v5);
}

uint64_t sub_1002E4CD0()
{

  sub_1002E97E8(*(v0 + 152), type metadata accessor for CarPlayStepPlaybackRateAction);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E4D84()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[23];

  return _swift_task_switch(sub_1002E4E10, v4, v5);
}

uint64_t sub_1002E4E10()
{

  sub_100004590((v0 + 2));
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to increase playback rate: %@", v3, 0xCu);
    sub_100009104(v4, &qword_100575B20);
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v7 + 8))(v6, v8);
  sub_1002E97E8(v0[19], type metadata accessor for CarPlayStepPlaybackRateAction);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E5008(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for ActionMetricsBehavior();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for ActionOutcome();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  type metadata accessor for MediaArtwork();
  v3[27] = swift_task_alloc();
  sub_100168088(&qword_10057DD80);
  v3[28] = swift_task_alloc();
  type metadata accessor for ActionMetrics();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for Models.AlertAction();
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002E527C, 0, 0);
}

uint64_t sub_1002E527C()
{
  v0[12] = v0[15];
  v0[13] = v0[16];
  sub_1001A0728();
  if (Collection.isNotEmpty.getter())
  {
    v1 = v0[32];
    v13 = v0[33];
    v14 = v0[31];
    v2 = v0[28];
    v3 = v0[22];
    v15 = v0[21];
    v16 = v0[23];
    v17 = v0[17];
    static ActionMetrics.notInstrumented.getter();
    v4 = type metadata accessor for Models.AlertAction.Severity();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_100168088(&qword_10057DD88);
    type metadata accessor for Models.AlertAction.Button();
    *(swift_allocObject() + 16) = xmmword_100400790;
    v5 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v6._countAndFlagsBits = 19279;
    v6._object = 0xE200000000000000;
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v19);

    static ActionMetrics.notInstrumented.getter();
    static Models.FlowBackAction.Dismissal.sheetDismiss.getter();
    v0[5] = type metadata accessor for Models.FlowBackAction();
    v0[6] = &protocol witness table for Models.FlowBackAction;
    sub_10000E680(v0 + 2);
    Models.FlowBackAction.init(actionMetrics:dismissal:)();
    Models.AlertAction.Button.init(title:action:)();
    MediaArtwork.init()();

    Models.AlertAction.init(actionMetrics:severity:icon:title:message:buttons:)();
    v0[34] = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher;
    v0[10] = v14;
    v0[11] = &protocol witness table for Models.AlertAction;
    v8 = sub_10000E680(v0 + 7);
    (*(v1 + 16))(v8, v13, v14);
    (*(v3 + 104))(v16, enum case for ActionMetricsBehavior.notProcessed(_:), v15);
    v0[35] = *(v17 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
    type metadata accessor for MainActor();
    v0[36] = static MainActor.shared.getter();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[37] = v10;
    v0[38] = v9;

    return _swift_task_switch(sub_1002E5660, v10, v9);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1002E5660()
{
  sub_100168088(&qword_10057AB40);
  v0[39] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1002E5794;
  v4 = v0[26];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E5794()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = v2[37];
    v4 = v2[38];
    v5 = sub_1002E5A58;
  }

  else
  {
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3 = v2[37];
    v4 = v2[38];
    v5 = sub_1002E58E4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E58E4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 7));

  return _swift_task_switch(sub_1002E597C, 0, 0);
}

uint64_t sub_1002E597C()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002E5A58()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002E5AE8, 0, 0);
}

uint64_t sub_1002E5AE8()
{
  v24 = v0;
  sub_100004590((v0 + 7));
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[41];
    v4 = v0[32];
    v21 = v0[31];
    v22 = v0[33];
    v5 = v0[19];
    v19 = v0[18];
    v20 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[14] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000153E0(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to present alert: %s", v6, 0xCu);
    sub_100004590(v7);

    (*(v5 + 8))(v20, v19);
    (*(v4 + 8))(v22, v21);
  }

  else
  {
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[31];
    v15 = v0[19];
    v14 = v0[20];
    v16 = v0[18];

    (*(v15 + 8))(v14, v16);
    (*(v12 + 8))(v11, v13);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1002E5DA8()
{
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 longStringForUnavailableReason:5 podcastTitle:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v0[2] = v4;
    v0[5] = v6;
    v0[3] = v6;
    sub_1001A0728();
    if (Collection.isNotEmpty.getter())
    {
      v7 = swift_task_alloc();
      v0[6] = v7;
      *v7 = v0;
      v7[1] = sub_1002E5F0C;

      return sub_1002E5008(v4, v6);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002E5F0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002E601C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_100168088(&qword_10057CF40);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1002E6114, 0, 0);
}

uint64_t sub_1002E6114()
{
  v1 = v0[9];
  dispatch thunk of FlowAction.destination.getter();
  v2 = type metadata accessor for FlowDestination();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[9];
  if (v4 == 1)
  {
    sub_100009104(v0[9], &qword_10057CF40);
LABEL_10:
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to form valid upsell alert message!", v18, 2u);
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    (*(v20 + 8))(v19, v21);
    v22 = swift_task_alloc();
    v0[12] = v22;
    *v22 = v0;
    v22[1] = sub_1002E6598;

    return sub_1002E5D88();
  }

  v6 = (*(v3 + 88))(v0[9], v2);
  v7 = enum case for FlowDestination.upsell(_:);
  (*(v3 + 8))(v5, v2);
  if (v6 != v7)
  {
    goto LABEL_10;
  }

  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 longStringForUnavailableReason:12 podcastTitle:v9];

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v0[10] = v13;
  v0[2] = v11;
  v0[3] = v13;
  sub_1001A0728();
  if ((Collection.isNotEmpty.getter() & 1) == 0)
  {

    goto LABEL_10;
  }

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_1002E6448;

  return sub_1002E5008(v11, v13);
}

uint64_t sub_1002E6448()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002E6598()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002E66C4(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for Logger();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for ActionMetricsBehavior();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for ActionOutcome();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_1002E683C, 0, 0);
}

uint64_t sub_1002E683C()
{
  sub_100004428(v0[11], (v0 + 2));
  sub_100168088(&unk_10057BB70);
  type metadata accessor for FlowAction();
  if (swift_dynamicCast())
  {
    v1 = v0[7];
    v0[22] = v1;
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1002E69D0;

    return sub_1002E601C(v1);
  }

  else
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];
    v7 = v0[12];
    v0[24] = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher;
    (*(v5 + 104))(v4, enum case for ActionMetricsBehavior.notProcessed(_:), v6);
    v0[25] = *(v7 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
    type metadata accessor for MainActor();
    v0[26] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[27] = v9;
    v0[28] = v8;

    return _swift_task_switch(sub_1002E6B78, v9, v8);
  }
}

uint64_t sub_1002E69D0()
{

  return _swift_task_switch(sub_1002E6ACC, 0, 0);
}

uint64_t sub_1002E6ACC()
{
  *(v0 + 80) = 0;
  sub_1001CC8F4();
  swift_willThrowTypedImpl();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1002E6B78()
{
  sub_100168088(&qword_10057AB40);
  v0[29] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_1002E6CB4;
  v4 = v0[21];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E6CB4()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_1002E6F10;
  }

  else
  {
    (*(v2[20] + 8))(v2[21], v2[19]);
    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_1002E6E04;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E6E04()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002E6E94, 0, 0);
}

uint64_t sub_1002E6E94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E6F10()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002E6FA0, 0, 0);
}

uint64_t sub_1002E6FA0()
{
  v19 = v0;
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[31];
    v5 = v0[14];
    v4 = v0[15];
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[9] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000153E0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform action: %s", v7, 0xCu);
    sub_100004590(v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[31];
  v0[8] = v15;
  sub_1001CC8F4();
  swift_willThrowTypedImpl();

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1002E71DC(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for Logger();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for ActionMetricsBehavior();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for ActionOutcome();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  type metadata accessor for ActionMetrics();
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for PlayQueueItemAction();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1002E73DC, 0, 0);
}

uint64_t sub_1002E73DC()
{
  v1 = v0[32];
  v14 = v0[33];
  v15 = v0[31];
  v2 = v0[25];
  v17 = v0[24];
  v18 = v0[26];
  v16 = v0[20];
  v13 = v0[19];
  v3 = *(v16 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_analyticsChannel);
  type metadata accessor for AnalyticsEvent();
  v4 = PFAnalyticsEventNamePlaybackReason;
  sub_100168088(&qword_100575270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  v6 = v4;
  *(inited + 48) = String._bridgeToObjectiveC()();
  sub_10000F898(inited);
  swift_setDeallocating();
  sub_100009104(inited + 32, &qword_100575280);
  v7 = AnalyticsEvent.__allocating_init(name:payload:)();
  [v3 sendEvent:v7];

  v8 = v13;
  static ActionMetrics.notInstrumented.getter();
  PlayQueueItemAction.init(item:actionMetrics:)();
  v0[34] = OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_actionDispatcher;
  v0[12] = v15;
  v0[13] = sub_1002E94F4(&unk_10057DD90, &type metadata accessor for PlayQueueItemAction);
  v9 = sub_10000E680(v0 + 9);
  (*(v1 + 16))(v9, v14, v15);
  (*(v2 + 104))(v18, enum case for ActionMetricsBehavior.notProcessed(_:), v17);
  v0[35] = *(v16 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_objectGraph);
  type metadata accessor for MainActor();
  v0[36] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[37] = v11;
  v0[38] = v10;

  return _swift_task_switch(sub_1002E7660, v11, v10);
}

uint64_t sub_1002E7660()
{
  sub_100168088(&qword_10057AB40);
  v0[39] = ActionDispatcher.dispatch(_:withMetrics:asPartOf:)();
  v1 = sub_100168088(&unk_100578110);
  v2 = sub_100009FAC(&unk_10057DD60, &unk_100578110);
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1002E7794;
  v4 = v0[29];

  return dispatch thunk of Future.then()(v4, v1, v2);
}

uint64_t sub_1002E7794()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = v2[37];
    v4 = v2[38];
    v5 = sub_1002E7A38;
  }

  else
  {
    (*(v2[28] + 8))(v2[29], v2[27]);
    v3 = v2[37];
    v4 = v2[38];
    v5 = sub_1002E78E4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1002E78E4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);
  sub_100004590((v0 + 9));

  return _swift_task_switch(sub_1002E797C, 0, 0);
}

uint64_t sub_1002E797C()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002E7A38()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1002E7AC8, 0, 0);
}

uint64_t sub_1002E7AC8()
{
  v26 = v0;
  v1 = v0[19];
  sub_100004590((v0 + 9));
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v22 = v0[22];
    v23 = v0[21];
    v24 = v0[23];
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v9 = v5;
    v10 = Error.localizedDescription.getter();
    v12 = sub_1000153E0(v10, v11, &v25);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to play item from queue: %@, error: %s", v6, 0x16u);
    sub_100009104(v7, &qword_100575B20);

    sub_100004590(v8);

    (*(v22 + 8))(v24, v23);
  }

  else
  {
    v14 = v0[22];
    v13 = v0[23];
    v15 = v0[21];

    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[41];
  v18 = v0[32];
  v17 = v0[33];
  v19 = v0[31];
  v0[17] = v16;
  sub_1001CC8F4();
  swift_willThrowTypedImpl();
  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20(v16);
}

uint64_t sub_1002E7D9C(void *a1, void *a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 podcastForUuid:v4];

  if (v5)
  {
    v6 = [v5 title];

    if (v6)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      goto LABEL_6;
    }

    v5 = 0;
  }

  v8 = 0;
LABEL_6:
  *a1 = v5;
  a1[1] = v8;
}

uint64_t sub_1002E7EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = [v8 title];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1000153E0(v15, v17, &v21);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Did finish pushing template with title: %s", v11, 0xCu);
    sub_100004590(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002E8134(uint64_t a1, unsigned int a2)
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

uint64_t sub_1002E8170(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002E81BC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void sub_1002E81F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1002E8240(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1002E82D0()
{
  v1 = v0;
  v2 = type metadata accessor for CarPlayTemplateInfo(0);
  v81 = *(v2 - 8);
  __chkstk_darwin();
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v78 = (&v69 - v4);
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v79 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v69 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v69 - v11;
  __chkstk_darwin();
  v14 = &v69 - v13;
  __chkstk_darwin();
  v16 = &v69 - v15;
  v17 = dispatch thunk of PlaybackController.nowPlayingItem.getter();
  if (v17 && (v18 = v17, v19 = [v17 podcast], v18, v19) && (v76 = MPModelObject.uuid.getter(), v21 = v20, v19, v21))
  {
    v72 = sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    v24 = os_log_type_enabled(v22, v23);
    v75 = v21;
    v70 = v2;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v74 = v1;
      v26 = v25;
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136315138;
      v28 = v76;
      *(v26 + 4) = sub_1000153E0(v76, v75, &aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Now Playing album artist button tapped for Podcast item with uuid %s.", v26, 0xCu);
      sub_100004590(v27);

      v1 = v74;

      v73 = *(v8 + 8);
      v73(v16, v7);
    }

    else
    {

      v73 = *(v8 + 8);
      v73(v16, v7);
      v28 = v76;
    }

    v33 = [*(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_managedContextProvider) mainOrPrivateContext];
    v88 = 0;
    v89 = 0;
    v34 = swift_allocObject();
    v34[2] = &v88;
    v34[3] = v33;
    v34[4] = v28;
    v35 = v75;
    v34[5] = v75;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1002E939C;
    *(v36 + 24) = v34;
    v74 = v34;
    v86 = sub_10002D7F0;
    v87 = v36;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10002D904;
    v85 = &unk_1004EBB90;
    v37 = _Block_copy(&aBlock);

    v38 = v33;

    v71 = v38;
    [v38 performBlockAndWait:v37];
    _Block_release(v37);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if (v38)
    {
      __break(1u);
    }

    else
    {
      v39 = v89;
      if (v89)
      {
        v40 = v88;

        static OS_os_log.carPlay.getter();

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = v1;
          v45 = swift_slowAlloc();
          aBlock = v45;
          *v43 = 136315138;
          *(v43 + 4) = sub_1000153E0(v40, v39, &aBlock);
          _os_log_impl(&_mh_execute_header, v41, v42, "Now Playing album artist button tapped for Podcast item with title %s.", v43, 0xCu);
          sub_100004590(v45);
          v1 = v44;
          v35 = v75;
        }

        v73(v14, v7);
        v46 = v70;
        v47 = objc_allocWithZone(CPListTemplate);
        v48 = String._bridgeToObjectiveC()();

        sub_100009F1C(0, &unk_100575B00);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v50 = [v47 initWithTitle:v48 sections:isa];

        v51 = v78;
        *v78 = v76;
        *(v51 + 8) = v35;
        *(v51 + 16) = 11;
        v52 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        swift_storeEnumTagMultiPayload();
        v53 = *(*(v52 - 8) + 56);
        v53(v51, 0, 1, v52);
        v54 = v80;
        v53(v80, 1, 1, v52);
        v55 = *(v46 + 20);
        v56 = v50;
        sub_1001FBB44(v51, v54);
        *(v54 + v55) = 0;
        v57 = v81;
        (*(v81 + 56))(v54, 0, 1, v46);
        v58 = v79;
        sub_1001D2D08(v54, v79);
        v59 = (*(v57 + 48))(v58, 1, v46);
        v60 = 0;
        if (v59 != 1)
        {
          sub_1002E9780(v58, v77, type metadata accessor for CarPlayTemplateInfo);
          v60 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          sub_1002E97E8(v58, type metadata accessor for CarPlayTemplateInfo);
        }

        [v56 setUserInfo:v60];
        swift_unknownObjectRelease();

        sub_100009104(v54, &unk_100578410);
        [v56 setShowsSpinnerWhileEmpty:1];
        v61 = *(v1 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_interfaceController);
        v62 = swift_allocObject();
        *(v62 + 16) = v56;
        v86 = sub_1002E9CDC;
        v87 = v62;
        aBlock = _NSConcreteStackBlock;
        v83 = 1107296256;
        v84 = sub_100185CE0;
        v85 = &unk_1004EBBE0;
        v63 = _Block_copy(&aBlock);
        v64 = v56;

        [v61 pushTemplate:v64 animated:1 completion:v63];

        _Block_release(v63);
      }

      else
      {

        static OS_os_log.carPlay.getter();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Now Playing album artist button tapped and the Podcast item title is nil.", v67, 2u);

          v68 = v71;
        }

        else
        {
          v68 = v65;
          v65 = v71;
        }

        v73(v12, v7);
      }
    }
  }

  else
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Now Playing album artist button tapped and the Podcast item's uuid is nil.", v31, 2u);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1002E8D9C()
{
  v0 = type metadata accessor for CarPlayTemplateInfo(0);
  v34 = *(v0 - 8);
  __chkstk_darwin();
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v3 = &v32 - v2;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Now Playing up next button tapped.", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  v15 = [objc_opt_self() mainBundle];
  v37._object = 0xEC0000007478654ELL;
  v16._countAndFlagsBits = 0x49545F4555455551;
  v16._object = 0xEB00000000454C54;
  v37._countAndFlagsBits = 0x20676E6979616C50;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v37);

  v18 = objc_allocWithZone(CPListTemplate);
  v19 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &unk_100575B00);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v21 = [v18 initWithTitle:v19 sections:isa];

  v22 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v23 = *(*(v22 - 8) + 56);
  v23(v3, 0, 1, v22);
  v23(v7, 1, 1, v22);
  v24 = *(v0 + 20);
  v25 = v21;
  sub_1001FBB44(v3, v7);
  v7[v24] = 0;
  v26 = v34;
  (*(v34 + 56))(v7, 0, 1, v0);
  sub_1001D2D08(v7, v5);
  v27 = 0;
  if ((*(v26 + 48))(v5, 1, v0) != 1)
  {
    sub_1002E9780(v5, v33, type metadata accessor for CarPlayTemplateInfo);
    v27 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_1002E97E8(v5, type metadata accessor for CarPlayTemplateInfo);
  }

  [v25 setUserInfo:v27];
  swift_unknownObjectRelease();

  sub_100009104(v7, &unk_100578410);
  [v25 setShowsSpinnerWhileEmpty:1];
  v28 = *(v35 + OBJC_IVAR____TtC8Podcasts27CarPlayNowPlayingController_interfaceController);
  v29 = swift_allocObject();
  *(v29 + 16) = v25;
  aBlock[4] = sub_1002E9380;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100185CE0;
  aBlock[3] = &unk_1004EBB18;
  v30 = _Block_copy(aBlock);
  v31 = v25;

  [v28 pushTemplate:v31 animated:1 completion:v30];
  _Block_release(v30);
}

uint64_t sub_1002E93C8(uint64_t a1)
{
  v4 = *(sub_100168088(&qword_10057AB40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_1002E46A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002E94F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E95A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100168088(&qword_10057AB40) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_1002E4488(a1, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a3);
}

uint64_t sub_1002E9654(uint64_t a1)
{
  v4 = *(sub_100168088(&qword_10057AB40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001C51C;

  return sub_1002E27A0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002E9780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E97E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E9848()
{
  v1 = sub_100168088(&qword_10057AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002E9910()
{
  v1 = sub_100168088(&qword_10057AB40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002E99F4(uint64_t a1)
{
  v4 = *(sub_100168088(&qword_10057AB40) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10021A620;

  return sub_1002E374C(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1002E9B50()
{
  result = qword_10057DE48;
  if (!qword_10057DE48)
  {
    sub_100168310(&qword_10057DE50);
    sub_100024384(&qword_10057DE58, &qword_10057DE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DE48);
  }

  return result;
}

unint64_t sub_1002E9C40()
{
  result = qword_10057DEC8;
  if (!qword_10057DEC8)
  {
    sub_100168310(&qword_10057DED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057DEC8);
  }

  return result;
}

uint64_t sub_1002E9CF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  swift_errorRetain();
  v4 = Result<>.init(success:error:)();
  v6 = v5;
  a3(v4, v5 & 1);

  return sub_100182C18(v4, v6 & 1);
}

uint64_t sub_1002E9D68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100168088(&qword_100572F98);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1002E9FAC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v15[4] = sub_1002EA56C;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100185CE0;
  v15[3] = &unk_1004EBFC0;
  v14 = _Block_copy(v15);

  [v7 updatePodcastWithUUID:v12 userInitiated:a3 & 1 source:a4 completion:v14];
  _Block_release(v14);
}

void sub_1002EA0C0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v17[4] = sub_1002EA508;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100185CE0;
  v17[3] = &unk_1004EBF70;
  v16 = _Block_copy(v17);

  [v8 updatePodcastWithUUID:v14 userInitiated:a3 & 1 forced:a4 & 1 forceBootstrap:0 source:a5 completion:v16];
  _Block_release(v16);
}

void sub_1002EA1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1002E9D68(a1);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100045040;
  v11[3] = &unk_1004EBF20;
  v10 = _Block_copy(v11);

  [v5 updatePodcastsWithUUIDs:isa userInitiated:1 source:a3 started:v10];
  _Block_release(v10);
}

void sub_1002EA2DC(uint64_t a1, uint64_t a2)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100045040;
  v4[3] = &unk_1004EBEF8;
  v3 = _Block_copy(v4);

  [v2 updateAllPodcastsUserInitiated:1 forced:1 source:3 started:v3];
  _Block_release(v3);
}

uint64_t sub_1002EA39C(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for ServerCategory();
  sub_1002EA524(&qword_10057D958);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = result & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1002EA524(&unk_10057DF20);
    while (1)
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    *(*(v3 + 48) + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v12 = *(v3 + 16);
    if (v12 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v12 + 1;
    }
  }

  return result;
}

uint64_t sub_1002EA524(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ServerCategory();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002EA574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_100168088(&unk_10057E010);
  __chkstk_darwin();
  v9 = aBlock - v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String._bridgeToObjectiveC()();

  QueueModelSection.init(tracklistSection:)();
  v10 = type metadata accessor for QueueModelSection();
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    return sub_1002EB474(v9);
  }

  v12 = [a4 displayItems];
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002EB4DC;
  *(v14 + 24) = v13;
  aBlock[4] = sub_1002EB4E4;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002EB50C;
  aBlock[3] = &unk_1004EC148;
  v15 = _Block_copy(aBlock);

  [v12 enumerateItemsInSectionAtIndex:a2 usingBlock:v15];
  _Block_release(v15);

  sub_1002EB474(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002EA7C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_1002EA860()
{
  v19 = *v0;
  v1 = sub_100168088(&qword_10057DE00);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v18 - v3;
  v20 = sub_100168088(&qword_10057DFE0);
  v5 = *(v20 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v21 = sub_100168088(&unk_10057DFE8);
  v8 = *(v21 - 8);
  __chkstk_darwin();
  v10 = &v18 - v9;
  dispatch thunk of PlaybackController.$tracklist.getter();
  sub_100009F1C(0, &qword_10057DE60);
  sub_100009FAC(&qword_10057DE40, &qword_10057DE00);
  Publisher.compactMap<A>(_:)();
  (*(v2 + 8))(v4, v1);
  v11 = v0[2];
  v12 = swift_allocObject();
  v13 = v19;
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_10057DFF8, &qword_10057DFE0);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  v14 = v20;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v5 + 8))(v7, v14);
  sub_100009FAC(&qword_10057E008, &unk_10057DFE8);
  v15 = v21;
  v16 = Publisher.eraseToAnyPublisher()();
  (*(v8 + 8))(v10, v15);
  return v16;
}

id sub_1002EAC60@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_1002EAC6C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = *a1;
  sub_100168088(&unk_100578B20);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v10;
  v12[4] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_10040B990;
  *(v13 + 24) = v12;

  v14 = v10;
  result = Future<>.init(priority:unwrapping:)();
  *a4 = result;
  return result;
}

uint64_t sub_1002EADDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EAE74, v4, v3);
}

uint64_t sub_1002EAE74()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1002EB140(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1002EAF10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001AB9B8;

  return sub_1002EADDC(v2, v3);
}

uint64_t sub_1002EAFB8(void *a1)
{
  v10 = _swiftEmptyArrayStorage;
  v2 = [a1 displayItems];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = &v10;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1002EB46C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1002EB510;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002EB50C;
  aBlock[3] = &unk_1004EC0D0;
  v5 = _Block_copy(aBlock);
  v6 = a1;

  [v2 enumerateSectionsUsingBlock:v5];

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_1002EB140(uint64_t a1, void *a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator();
  swift_allocObject();

  sub_1002442DC(v3);

  v19 = BaseObjectGraph.satisfying<A>(_:with:)();
  v4 = sub_1002EAFB8(a2);
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_20:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_19;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    sub_100009F1C(0, &qword_100577460);
    v12 = sub_1001FB458(v19, v10);

    ++v8;
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v11;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00);
      v13 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_17;
    }

LABEL_23:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v13 = _swiftEmptyArrayStorage;
LABEL_17:

  v14 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v13);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithItems:isa];

  sub_100168088(&unk_100574680);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004007B0;
  *(v17 + 32) = v16;

  return v17;
}

uint64_t sub_1002EB474(uint64_t a1)
{
  v2 = sub_100168088(&unk_10057E010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EB514()
{
  v1 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (*(v0 + v1) && (type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration(), swift_dynamicCastClass()))
  {
    v2 = [objc_opt_self() mainBundle];
    v9 = 0xAE00A680E2747865;
    v3 = 0x54207463656C6553;
    v4 = 0x80000001004683A0;
    v5 = 0xD000000000000014;
  }

  else
  {
    v2 = [objc_opt_self() mainBundle];
    v9 = 0xEF7470697263736ELL;
    v5 = 0x4152545F57454956;
    v4 = 0xEF5450495243534ELL;
    v3 = 0x6172542077656956;
  }

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v2, v6, *&v3)._countAndFlagsBits;

  return countAndFlagsBits;
}

BOOL sub_1002EB674()
{
  v1 = sub_100168088(&qword_10057BB28);
  __chkstk_darwin(v1 - 8);
  v3 = &v25[-v2];
  v4 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for InteractionContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (static Podcasts.areTranscriptsSupportedOnPlatform.getter())
  {
    v11 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
    swift_beginAccess();
    if (*(v0 + v11))
    {
      v12 = v0;

      dispatch thunk of ContextActionsConfiguration.context.getter();

      InteractionContext.page.getter();
      (*(v8 + 8))(v10, v7);
      v13 = InteractionContext.Page.isEpisodeDetailTranscriptsPage.getter();
      sub_1002EE120(v6, &type metadata accessor for InteractionContext.Page);
      if ((v13 & 1) == 0)
      {
        if (*(v12 + 16))
        {
          v14 = v12;
          if (!*(v12 + v11))
          {
            goto LABEL_14;
          }

          type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
          if (!swift_dynamicCastClass())
          {
            goto LABEL_14;
          }

          v15 = COERCE_DOUBLE(NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter());
          v17 = v16;
          v18 = COERCE_DOUBLE(NowPlayingTranscriptSelectionContextActionConfiguration.referenceEndTime.getter());
          v20 = v19;

          if (v17)
          {
            v14 = v12;
            if ((v20 & 1) == 0)
            {
LABEL_14:
              v22 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
              swift_beginAccess();
              sub_100010430(v14 + v22, v3, &qword_10057BB28);
              v23 = type metadata accessor for TranscriptRequestInformation();
              v24 = (*(*(v23 - 8) + 48))(v3, 1, v23) != 1;
              sub_100009104(v3, &qword_10057BB28);
              return v24;
            }
          }

          else
          {
            v14 = v12;
            if ((v20 & 1) != 0 || v15 != v18)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1002EB97C()
{
  v1 = sub_100168088(&qword_100574E18);
  __chkstk_darwin(v1 - 8);
  v3 = &v16[-v2];
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = static Podcasts.areTranscriptsSupportedOnPlatform.getter();
  if (result)
  {

    sub_1002EBC08(v8);

    v9 = *(v0 + 16);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
      swift_beginAccess();
      sub_1001EAFE4(v9 + v10, v6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = *v6;
        if (*(v11 + 16))
        {
          v12 = type metadata accessor for EpisodeOffer();
          v13 = *(v12 - 8);
          (*(v13 + 16))(v3, v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

          (*(v13 + 56))(v3, 0, 1, v12);
        }

        else
        {

          v14 = type metadata accessor for EpisodeOffer();
          (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
        }

        v15 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer;
        swift_beginAccess();
        sub_100016A14(v3, v0 + v15, &qword_100574E18);
        return swift_endAccess();
      }

      else
      {
        return sub_1002EE120(v6, type metadata accessor for EpisodeContextActionDataType);
      }
    }
  }

  return result;
}

void sub_1002EBC08(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574E20);
  __chkstk_darwin(v2 - 8);
  v91 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v86 - v5;
  __chkstk_darwin(v7);
  v9 = &v86 - v8;
  v10 = sub_100168088(&qword_10057BB28);
  __chkstk_darwin(v10 - 8);
  v90 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = &v86 - v13;
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  v17 = type metadata accessor for EpisodeOffer();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v24 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v89 = v6;
    v27 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(a1 + v27, v26);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v69 = *v26;
        if (*(*v26 + 16) == 1)
        {
          v70 = v93;
          (*(v18 + 16))(v20, v69 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

          (*(v18 + 32))(v23, v20, v17);
          if ((EpisodeOffer.isEntitledOffer.getter() & 1) != 0 && (sub_1003803A0() & 1) == 0)
          {
            EpisodeOffer.transcriptInfo.getter();

            (*(v18 + 8))(v23, v17);
            v71 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
            swift_beginAccess();
            v72 = v70 + v71;
            v73 = v16;
LABEL_48:
            sub_100016A14(v73, v72, &qword_10057BB28);
            swift_endAccess();
            return;
          }

          (*(v18 + 8))(v23, v17);
LABEL_35:

          return;
        }
      }

      else
      {
        v52 = *v26;

        if (*(v52 + 16) == 1)
        {

          type metadata accessor for CoreDataFetcher();
          static CoreDataFetcher.performAndWaitOnEpisode<A>(with:block:)();

          return;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v53 = *v26;
        if (*v26 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() != 1)
          {
            goto LABEL_37;
          }

          v54 = v9;
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_37;
          }
        }

        else
        {
          v54 = v9;
          if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
          {
            goto LABEL_37;
          }
        }

        if ((v53 & 0xC000000000000001) != 0)
        {

          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_59;
          }

          v55 = *(v53 + 32);

          v56 = v55;
        }

        v57 = v56;

        v58 = v57;
        v59 = [v58 transcriptIdentifier];
        if (!v59)
        {

          return;
        }

        v60 = v93;
        v61 = v59;
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v90 = v63;
        v91 = v62;

        v64 = type metadata accessor for MetadataSource();
        (*(*(v64 - 8) + 56))(v54, 1, 1, v64);
        v65 = [v58 transcriptSource];
        if (v65)
        {
          v66 = v65;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v67 = v89;
          MetadataSource.init(rawValue:)();
          sub_100009104(v54, &qword_100574E20);
          sub_1002EE180(v67, v54);
        }

        [v58 episodeStoreId];
        v94 = AdamID.init(rawValue:)();
        sub_1000366D8();
        v88 = BinaryInteger.description.getter();
        v68 = [v58 title];

        if (v68)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v74 = v54;
        sub_100010430(v54, v89, &qword_100574E20);
        v75 = v92;
        TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)();

        sub_100009104(v74, &qword_100574E20);
        v76 = type metadata accessor for TranscriptRequestInformation();
        (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
        v77 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
        swift_beginAccess();
        v72 = v60 + v77;
        v73 = v75;
        goto LABEL_48;
      }

      if (EnumCaseMultiPayload != 3)
      {
        sub_1002EE120(v26, type metadata accessor for EpisodeContextActionDataType);
        return;
      }

      v29 = *v26;
      if (*v26 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 1 && _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_7;
        }
      }

      else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
LABEL_7:
        if ((v29 & 0xC000000000000001) != 0)
        {

          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
          v32 = v31;

          v33 = MPCPlayerResponseItem.podcastEpisode.getter();

          if (v33)
          {
            v34 = v33;
            v35 = MPModelObject.adamID.getter();
            v37 = v36;

            if ((v37 & 1) != 0 || (v38 = [v34 transcriptIdentifier]) == 0)
            {

              return;
            }

            v39 = v38;
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v40 = type metadata accessor for MetadataSource();
            (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
            v41 = [v34 transcriptSource];
            if (v41)
            {
              v42 = v41;
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v43 = v91;
              v44 = v89;
              MetadataSource.init(rawValue:)();
              sub_100009104(v43, &qword_100574E20);
              sub_1002EE180(v44, v43);
            }

            v94 = v35;
            sub_1000366D8();
            v45 = BinaryInteger.description.getter();
            v47 = v46;
            v48 = [v34 title];
            if (v48)
            {
              v49 = v48;
              v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v51;
              v87 = v50;
            }

            else
            {
              v86 = 0;
              v87 = 0;
            }

            v78 = [v34 author];
            v92 = v45;
            v88 = v47;
            if (v78)
            {
              v79 = v78;
              v80 = [v78 name];

              if (v80)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }
            }

            v81 = v91;
            sub_100010430(v91, v89, &qword_100574E20);
            v82 = v90;
            TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)();

            sub_100009104(v81, &qword_100574E20);
            v83 = type metadata accessor for TranscriptRequestInformation();
            (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
            v84 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
            v85 = v93;
            swift_beginAccess();
            v72 = v85 + v84;
            v73 = v82;
            goto LABEL_48;
          }

          goto LABEL_35;
        }

        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v29 + 32);

          v31 = v30;
          goto LABEL_10;
        }

LABEL_59:
        __break(1u);
        return;
      }
    }

LABEL_37:
  }
}

void sub_1002EC738(void *a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057BB28);
  __chkstk_darwin(v4 - 8);
  v6 = v31 - v5;
  v7 = sub_100168088(&qword_100574E20);
  __chkstk_darwin(v7 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  if (a1)
  {
    v32 = a1;
    if ([v32 isRestricted] & 1) != 0 || !objc_msgSend(v32, "isEntitled") || (v13 = MTEpisode.adamID.getter(), (v14) || (v15 = v13, (v16 = objc_msgSend(v32, "transcriptIdentifier")) == 0))
    {
      v25 = v32;
    }

    else
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31[2] = v19;
      v31[3] = v18;

      v20 = [v32 transcriptProvider];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      MetadataSource.init(rawValue:)();
      v33 = v15;
      sub_1000366D8();
      v21 = BinaryInteger.description.getter();
      v23 = [v32 title];
      if (v23)
      {
        v24 = v23;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v26 = [v32 podcast];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 title];

        if (v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      sub_100010430(v12, v9, &qword_100574E20);
      TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)();

      sub_100009104(v12, &qword_100574E20);
      v29 = type metadata accessor for TranscriptRequestInformation();
      (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
      v30 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
      swift_beginAccess();
      sub_100016A14(v6, a2 + v30, &qword_10057BB28);
      swift_endAccess();
    }
  }
}

uint64_t sub_1002ECAC8()
{
  v1 = v0;
  v2 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v35 = type metadata accessor for PresentationSource();
  v5 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_10057BB28);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TranscriptRequestInformation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo;
  swift_beginAccess();
  sub_100010430(v1 + v14, v9, &qword_10057BB28);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_100009104(v9, &qword_10057BB28);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (!*(v1 + v16))
  {
    (*(v5 + 56))(v4, 1, 1, v35);
    goto LABEL_20;
  }

  dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

  v17 = v5;
  v18 = *(v5 + 48);
  v19 = v35;
  if (v18(v4, 1, v35) == 1)
  {
LABEL_20:
    (*(v11 + 8))(v13, v10);
    return sub_100009104(v4, &unk_10057BB90);
  }

  v20 = v34;
  (*(v17 + 32))(v34, v4, v19);
  if (!*(v1 + v16))
  {
    (*(v17 + 8))(v20, v19);
    return (*(v11 + 8))(v13, v10);
  }

  v33 = ContextActionsConfiguration.objectGraph.getter();

  if (!*(v1 + v16))
  {
    goto LABEL_21;
  }

  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    started = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
    if ((v22 & 1) == 0)
    {
      v32 = *&started;
      v23 = COERCE_DOUBLE(NowPlayingTranscriptSelectionContextActionConfiguration.referenceEndTime.getter());
      result = *&v32;
      if ((v24 & 1) == 0)
      {
        if (v32 > v23)
        {
          __break(1u);
          goto LABEL_28;
        }

        TranscriptRequestInformation.selectedTextTimeInterval.setter();
      }
    }
  }

  if (!*(v1 + v16) || !swift_dynamicCastClass() && (type metadata accessor for NowPlayingContextActionConfiguration(), !swift_dynamicCastClass()))
  {
LABEL_21:
    v27 = v34;
    v29 = PresentationSource.viewController.getter();
    v28 = v33;
    if (v29)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v25 = NowPlayingDataProvider.shared.unsafeMutableAddressor();
  result = swift_beginAccess();
  if (!*(v25 + 24))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v26 = *(v25 + 40);
  v28 = v33;
  v27 = v34;
  if (v26)
  {
    v29 = v26;
LABEL_22:
    v30 = v29;
    sub_1002ECF8C(v28, v13, v29);
  }

LABEL_23:

  (*(v17 + 8))(v27, v19);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002ECF8C(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a3;
  v53 = a2;
  v49 = type metadata accessor for OSLogger();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetricsBehavior();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&unk_10057BB60);
  __chkstk_darwin(v8 - 8);
  v61 = &v48 - v9;
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for FlowDestinationPageHeader();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FlowPresentationContext();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100168088(&qword_100574E18);
  __chkstk_darwin(v14 - 8);
  v16 = &v48 - v15;
  v17 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for TranscriptRequestInformation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FlowDestination();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100168088(&qword_100574580);
  v60 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v66)
  {
    v49 = *(&v66 + 1);
    v50 = v66;
  }

  else
  {
    v26 = UIResponder.nearestActionRunner.getter();
    if (!v26)
    {
      v46 = v5;
      static OSLogger.actions.getter();
      sub_100168088(&unk_10057E660);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_100400790;
      LogMessage.init(stringLiteral:)();
      v47 = v49;
      Logger.error(_:)();

      return (*(v50 + 8))(v46, v47);
    }

    v49 = v27;
    v50 = v26;
  }

  sub_100168088(&unk_1005747F0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100400790;
  (*(v19 + 16))(v21, v53, v18);
  static PageMetrics.notInstrumented.getter();
  v29 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer;
  v30 = v54;
  swift_beginAccess();
  sub_100010430(v30 + v29, v16, &qword_100574E18);
  type metadata accessor for TranscriptDetail();
  swift_allocObject();
  *v25 = TranscriptDetail.init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)();
  (*(v23 + 104))(v25, enum case for FlowDestination.episodeDetailTranscript(_:), v22);
  (*(v51 + 104))(v55, enum case for FlowPresentationContext.pushDetail(_:), v52);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v32 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v32;
  v33 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v33;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v32)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v33)
  {
    Link.Presentation.init(rawValue:)();
  }

  v34 = v65;
  (*(v56 + 104))(v58, enum case for FlowDestinationPageHeader.standard(_:), v57);
  static ActionMetrics.notInstrumented.getter();
  v35 = type metadata accessor for FlowAction();
  swift_allocObject();
  v36 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  *(v28 + 56) = v35;
  *(v28 + 64) = sub_1002EE0D8(&unk_10057A0D0, &type metadata accessor for FlowAction);
  *(v28 + 32) = v36;
  Link.Presentation.init(rawValue:)();
  static ActionMetrics.notInstrumented.getter();
  v37 = type metadata accessor for TabChangeAction();
  swift_allocObject();
  v38 = TabChangeAction.init(title:navigationTab:actions:popToRoot:userInitiated:suppressMetrics:presentationStyle:actionMetrics:)();
  type metadata accessor for ActionRunnerOptions();

  BaseObjectGraph.__allocating_init(_:)();
  v39 = type metadata accessor for InteractionContext();
  v40 = v61;
  (*(*(v39 - 8) + 56))(v61, 1, 1, v39);
  v66 = 0u;
  v67 = 0u;
  v41 = [v34 view];
  ActionRunnerOptions.withActionOrigin(context:sender:view:)();

  sub_100009104(&v66, &unk_1005783D0);
  sub_100009104(v40, &unk_10057BB60);
  swift_getObjectType();
  *(&v67 + 1) = v37;
  v68 = sub_1002EE0D8(&qword_10057ADD0, &type metadata accessor for TabChangeAction);
  *&v66 = v38;
  v43 = v62;
  v42 = v63;
  v44 = v64;
  (*(v63 + 104))(v62, enum case for ActionMetricsBehavior.notProcessed(_:), v64);

  ActionRunner.perform(_:withMetrics:asPartOf:)();

  swift_unknownObjectRelease();

  (*(v42 + 8))(v43, v44);
  return sub_100004590(&v66);
}

uint64_t sub_1002EDA2C()
{

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_episodeOffer, &qword_100574E18);

  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_transcriptInfo, &qword_10057BB28);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ViewTranscriptContextAction()
{
  result = qword_10057E050;
  if (!qword_10057E050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002EDB2C()
{
  sub_1002EDC38(319, &qword_10057E060, &type metadata accessor for EpisodeOffer);
  if (v0 <= 0x3F)
  {
    sub_1002EDC38(319, &unk_10057E068, &type metadata accessor for TranscriptRequestInformation);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002EDC38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1002EDC90()
{
  v1 = 0x75622E65746F7571;
  v2 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
    if (swift_dynamicCastClass())
    {
      return 0xD000000000000014;
    }
  }

  return v1;
}

uint64_t sub_1002EDD3C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MetricsLabel.viewTranscript(_:);
  v3 = type metadata accessor for MetricsLabel();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002EDDB0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.viewTranscript(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

BOOL sub_1002EDE90()
{
  v1 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;

      v2 = v3;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = v2 != 0;

  return v4;
}

uint64_t sub_1002EDF64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts27ViewTranscriptContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002EE028(uint64_t a1)
{
  result = sub_1002EE0D8(&qword_10057BED8, type metadata accessor for ViewTranscriptContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002EE080(uint64_t a1)
{
  result = sub_1002EE0D8(&qword_10057E100, type metadata accessor for ViewTranscriptContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002EE0D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002EE120(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002EE180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EE1F8(uint64_t a1)
{
  v2 = v1;
  v13 = a1;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v11 = sub_10002BD04();
  static DispatchQoS.unspecified.getter();
  v14 = &_swiftEmptyArrayStorage;
  sub_1000100AC(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 24) = 0;
  v8 = OBJC_IVAR____TtC8Podcasts9Throttler_delay;
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 32))(v2 + v8, v13, v9);
  return v2;
}

uint64_t sub_1002EE4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v24 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Podcasts9Throttler_delay;
  v25 = *(v3 + 16);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v13, v3 + v14, v10);
  v16 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v18 = v23;
  v19 = v24;
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = v19;
  (*(v11 + 32))(&v17[v16], v13, v10);
  aBlock[4] = sub_1002EEDFC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EC258;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_1000100AC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v6, v4);
  (*(v26 + 8))(v9, v27);
}

uint64_t sub_1002EE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a4;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v14);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + 24);

    if ((v16 & 1) == 0)
    {
      v22[0] = v8;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(Strong + 24) = 1;
      }

      v18 = swift_allocObject();
      v18[2] = a2;
      v18[3] = a3;
      v18[4] = a1;
      aBlock[4] = sub_1002EEE64;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F038;
      aBlock[3] = &unk_1004EC2A8;
      v22[1] = _Block_copy(aBlock);
      v22[3] = &_swiftEmptyArrayStorage;
      sub_1000100AC(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);

      sub_100168088(&unk_100575CD0);
      sub_100015E58(&qword_10057D390, &unk_100575CD0);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      DispatchWorkItem.init(flags:block:)();

      swift_beginAccess();
      v19 = swift_weakLoadStrong();
      if (v19)
      {
        v20 = *(v19 + 16);

        static DispatchTime.now()();
        + infix(_:_:)();
        v21 = *(v22[0] + 8);
        v21(v11, v7);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        return (v21)(v13, v7);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1002EEC00(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1002EEC5C()
{
  v1 = OBJC_IVAR____TtC8Podcasts9Throttler_delay;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Throttler()
{
  result = qword_10057E138;
  if (!qword_10057E138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002EED54()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_1002EEDFC()
{
  v1 = *(type metadata accessor for DispatchTimeInterval() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1002EE86C(v2, v3, v4, v5);
}

uint64_t *PodcastsStateCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  return &static PodcastsStateCoordinator.shared;
}

void PodcastsStateCoordinator.downloadEpisode(withUUID:isFromSaving:from:in:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v37 = type metadata accessor for Logger();
  v12 = *(v37 - 8);
  __chkstk_darwin();
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = Logger.logObject.getter();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v36 = a4;
    v18 = v17;
    v34 = swift_slowAlloc();
    v35 = v6;
    aBlock[0] = v34;
    *v18 = 136315650;
    *(v18 + 4) = sub_1000153E0(a1, a2, aBlock);
    *(v18 + 12) = 1024;
    *(v18 + 14) = a3 & 1;
    *(v18 + 18) = 2080;
    v19 = PodcastsStateChangeOrigin.description.getter();
    v33 = a3;
    v21 = a5;
    v22 = a2;
    v23 = a1;
    v24 = sub_1000153E0(v19, v20, aBlock);

    *(v18 + 20) = v24;
    a1 = v23;
    a2 = v22;
    a5 = v21;
    _os_log_impl(&_mh_execute_header, v16, v15, "Downloading episode with uuid %s (isFromSaving: %{BOOL}d, origin: %s).", v18, 0x1Cu);
    swift_arrayDestroy();
    v6 = v35;

    a4 = v36;

    v25 = v33;
    (*(v12 + 8))(v14, v37);
  }

  else
  {

    (*(v12 + 8))(v14, v37);
    v25 = a3;
  }

  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = v6;
  v26[6] = a4;
  aBlock[4] = sub_1002F8900;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EC320;
  v27 = _Block_copy(aBlock);

  v28 = a5;
  v29 = v6;

  [v28 performBlockAndWaitWithSave:v27];
  _Block_release(v27);
  v30 = *&v29[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway];
  v31 = String._bridgeToObjectiveC()();
  [v30 downloadEpisode:v31 isFromSaving:v25 & 1];
}

id static PodcastsStateCoordinator.shared.getter()
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static PodcastsStateCoordinator.shared;

  return v0;
}

void static PodcastsStateCoordinator.shared.setter(uint64_t a1)
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static PodcastsStateCoordinator.shared;
  static PodcastsStateCoordinator.shared = a1;
}

uint64_t (*static PodcastsStateCoordinator.shared.modify())()
{
  if (qword_100572820 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id PodcastsStateCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastsStateCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002EF5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 enableSubscriptionOnPodcastUUID:v6 from:a3];
}

void sub_1002EF634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = String._bridgeToObjectiveC()();
  [v7 unsafeEnableSubscriptionOnPodcastUUID:v8 from:a3 context:a4];
}

void sub_1002EF6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = String._bridgeToObjectiveC()();
  [v5 disableSubscriptionOnPodcastUUID:v6 from:a3];
}

void sub_1002EF704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = String._bridgeToObjectiveC()();
  [v7 disableSubscriptionOnPodcastUUID:v8 from:a3 context:a4];
}

void sub_1002EF774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 disableSubscriptionsOnPodcastUUIDs:isa from:a2 context:a3];
}

void sub_1002EF7EC(void *a1, char a2, uint64_t a3)
{
  if (([a1 isBookmarked] & 1) == 0)
  {
    sub_1002F3EC0(a1, 0, 1, a2 & 1, a3);
  }
}

void PodcastsStateCoordinator.unsafeBookmarkIfNeeded(episode:shouldDownloadEpisode:from:)(void *a1, char a2, uint64_t a3)
{
  if (([a1 isBookmarked] & 1) == 0)
  {

    sub_1002F3EC0(a1, 0, 1, a2 & 1, a3);
  }
}

id sub_1002EF8BC(void *a1, uint64_t a2)
{
  v5 = *v2;
  result = [a1 isBookmarked];
  if (result)
  {

    return [v5 unsafeRemoveEpisodeFromBookmarks:a1 from:a2];
  }

  return result;
}

id PodcastsStateCoordinator.unsafeRemoveEpisodeFromBookmarksIfNeeded(episode:from:)(void *a1, uint64_t a2)
{
  result = [a1 isBookmarked];
  if (result)
  {

    return [v2 unsafeRemoveEpisodeFromBookmarks:a1 from:a2];
  }

  return result;
}

uint64_t sub_1002EFA20(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001C51C;

  return PodcastsStateCoordinator.downloadEpisodes(with:isFromSaving:from:in:)(a1, a2, a3, a4);
}

uint64_t PodcastsStateCoordinator.downloadEpisodes(with:isFromSaving:from:in:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 128) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  *(v5 + 80) = v7;
  *(v5 + 88) = *(v7 - 8);
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1002EFC04, 0, 0);
}

uint64_t sub_1002EFC04()
{
  v28 = v0;
  static Logger.podcastsStatesCoordination.getter();
  v1 = static os_log_type_t.default.getter();
  v2 = Logger.logObject.getter();
  v3 = os_log_type_enabled(v2, v1);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  if (v3)
  {
    v7 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2080;
    v10 = PodcastsStateChangeOrigin.description.getter();
    v12 = sub_1000153E0(v10, v11, &v27);

    *(v8 + 10) = v12;
    _os_log_impl(&_mh_execute_header, v2, v1, "Downloading episodes (isFromSaving: %{BOOL}d, origin: %s).", v8, 0x12u);
    sub_100004590(v9);
  }

  (*(v5 + 8))(v4, v6);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = swift_allocObject();
  *(v0 + 104) = v20;
  v20[2] = v17;
  v20[3] = v19;
  v20[4] = v16;
  v20[5] = v18;
  (*(v14 + 104))(v13, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v15);
  v21 = v17;

  v22 = v16;
  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  v24 = sub_100168088(&qword_10057C9C0);
  *v23 = v0;
  v23[1] = sub_1002EFE60;
  v25 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v25, sub_1002F8918, v20, v24);
}

uint64_t sub_1002EFE60()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1002F00F8;
  }

  else
  {
    v5 = sub_1002EFFF4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EFFF4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(*(v0 + 48) + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway);
    v4 = v1 + 40;
    do
    {
      v5 = *(v0 + 128);

      v6 = String._bridgeToObjectiveC()();

      [v3 downloadEpisode:v6 isFromSaving:v5];

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1002F00F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void PodcastsStateCoordinator.cancelDownload(forEpisodeWithUUID:userInitiated:from:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v34 = v11;
    v17 = v16;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v17 = 136315650;
    *(v17 + 4) = sub_1000153E0(a1, a2, aBlock);
    *(v17 + 12) = 1024;
    *(v17 + 14) = a3 & 1;
    *(v17 + 18) = 2080;
    v18 = PodcastsStateChangeOrigin.description.getter();
    HIDWORD(v31) = v14;
    v20 = sub_1000153E0(v18, v19, aBlock);
    v32 = v10;
    v21 = v5;
    v22 = a4;
    v23 = v20;

    *(v17 + 20) = v23;
    a4 = v22;
    v5 = v21;
    _os_log_impl(&_mh_execute_header, v15, BYTE4(v31), "Cancelling download for episode with uuid %s (userInitiated: %{BOOL}d, origin: %s).", v17, 0x1Cu);
    swift_arrayDestroy();

    (*(v34 + 8))(v13, v32);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v24 = *&v5[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway];
  v25 = String._bridgeToObjectiveC()();
  [v24 cancelDownloadsForEpisodeUuid:v25 userInitiated:a3 & 1];

  v26 = [*&v5[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] mainOrPrivateContext];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a1;
  v27[4] = a2;
  v27[5] = v5;
  v27[6] = a4;
  aBlock[4] = sub_1002F8938;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EC398;
  v28 = _Block_copy(aBlock);

  v29 = v26;
  v30 = v5;

  [v29 performBlockAndWaitWithSave:v28];
  _Block_release(v28);
}

void PodcastsStateCoordinator.cancelAllDownloads(userInitiated:from:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 67109378;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 2080;
    v14 = PodcastsStateChangeOrigin.description.getter();
    v27 = v7;
    v16 = sub_1000153E0(v14, v15, aBlock);
    v26 = v6;
    v17 = a1;
    v18 = v16;

    *(v12 + 10) = v18;
    a1 = v17;
    _os_log_impl(&_mh_execute_header, v11, v10, "Cancelling all ongoing downloads (userInitiated: %{BOOL}d, origin: %s).", v12, 0x12u);
    sub_100004590(v13);

    (*(v27 + 8))(v9, v26);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v19 = [*&v3[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway] cancelAllDownloadsUserInitiated:a1 & 1];
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [*&v3[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] mainOrPrivateContext];
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v3;
  v22[5] = a2;
  aBlock[4] = sub_1002F8950;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EC3E8;
  v23 = _Block_copy(aBlock);
  v24 = v21;
  v25 = v3;

  [v24 performBlockAndWaitWithSave:v23];
  _Block_release(v23);
}

void PodcastsStateCoordinator.removeDownload(forEpisodeWithUUID:from:shouldAllowAutomaticRedownloads:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    v17 = swift_slowAlloc();
    v30 = v5;
    aBlock[0] = v17;
    v28[1] = v17;
    *v16 = 136315394;
    v18 = PodcastsStateChangeOrigin.description.getter();
    v20 = a1;
    v21 = a2;
    v22 = a4;
    v23 = sub_1000153E0(v18, v19, aBlock);

    *(v16 + 4) = v23;
    a4 = v22;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000153E0(v20, v21, aBlock);
    _os_log_impl(&_mh_execute_header, v14, v13, "Removing download (origin: %s) for episode with UUID: %s.", v16, 0x16u);
    swift_arrayDestroy();
    v5 = v30;

    (*(v10 + 8))(v12, v29);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v24 = *(v5 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_downloadsGateway);
  v25 = String._bridgeToObjectiveC()();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  aBlock[4] = sub_1002F895C;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F6638;
  aBlock[3] = &unk_1004EC438;
  v27 = _Block_copy(aBlock);

  [v24 removeDownload:v25 shouldAllowAutomaticRedownloads:a4 & 1 completion:v27];
  _Block_release(v27);
}

void PodcastsStateCoordinator.unsafeRemoveFromRecoveredEpisodesIfNeeded(episode:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isBookmarksMigrationRecoveredEpisode])
  {
    static Logger.podcastsStatesCoordination.getter();
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v35 = v11;
      v36 = v2;
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v12 = 136381187;
      v13 = [v9 title];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v37 = v15;
      v38 = v17;
      sub_100168088(&qword_100574230);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000153E0(v18, v19, &v39);

      *(v12 + 4) = v20;
      *(v12 + 12) = 2080;
      v21 = [v9 uuid];
      if (v21)
      {
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v37 = v23;
      v38 = v25;
      v26 = String.init<A>(describing:)();
      v28 = sub_1000153E0(v26, v27, &v39);

      *(v12 + 14) = v28;
      *(v12 + 22) = 2081;
      v37 = [v9 storeTrackId];
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = sub_1000153E0(v29, v30, &v39);

      *(v12 + 24) = v31;
      _os_log_impl(&_mh_execute_header, v10, v35, "Deleting from BookmarksMigrationRecoveredEpisodes episode: %{private}s, uuid: %s, adamID: %{private}s.", v12, 0x20u);
      swift_arrayDestroy();

      (*(v5 + 8))(v8, v4);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    [v9 setIsBookmarksMigrationRecoveredEpisode:0];
    v32 = [v9 podcast];
    if (v32)
    {
      v33 = v32;
      sub_1002C76C4(v32, 2, 4u, 3);
    }
  }
}

void PodcastsStateCoordinator.insertNewImplicitFollowIfNeeded(for:from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a2;
  v72 = a4;
  v6 = type metadata accessor for EpisodePlayerItem();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin();
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlayerItem();
  v70 = *(v9 - 8);
  __chkstk_darwin();
  v69 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v57 - v11;
  __chkstk_darwin();
  v14 = &v57 - v13;
  v15 = type metadata accessor for Logger();
  v65 = *(v15 - 8);
  v66 = v15;
  __chkstk_darwin();
  v71 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PodcastPlayerItem();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlayerItem.podcast.getter();
  v21 = PodcastPlayerItem.isSubscribeable.getter();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    sub_1002F6B1C(a1, v63, a3, v72);
  }

  else
  {
    v64 = a3;
    static Logger.podcastsStatesCoordination.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = *(v70 + 2);
    v23(v14, a1, v9);
    v23(v12, a1, v9);
    v23(v69, a1, v9);
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v22))
    {
      v25 = swift_slowAlloc();
      v63 = a1;
      v26 = v25;
      v58 = v25;
      v62 = swift_slowAlloc();
      v75[0] = v62;
      *v26 = 136381187;
      PlayerItem.episode.getter();
      v27 = EpisodePlayerItem.title.getter();
      v29 = v28;
      v61 = v24;
      v30 = v68;
      v57 = *(v67 + 8);
      v57(v8, v68);
      v73 = v27;
      v74 = v29;
      v59 = sub_100168088(&qword_100574230);
      v31 = String.init<A>(describing:)();
      v33 = v32;
      v60 = v22;
      v34 = *(v70 + 1);
      v35 = v14;
      v36 = v30;
      v34(v35, v9);
      v37 = v34;
      v70 = v34;
      v38 = sub_1000153E0(v31, v33, v75);

      v39 = v58;
      *(v58 + 4) = v38;
      *(v39 + 12) = 2049;
      PlayerItem.episode.getter();
      v40 = EpisodePlayerItem.adamID.getter();
      v41 = v36;
      v42 = v57;
      v57(v8, v41);
      v37(v12, v9);
      *(v39 + 14) = v40;
      *(v39 + 22) = 2081;
      v43 = v69;
      PlayerItem.episode.getter();
      v44 = EpisodePlayerItem.guid.getter();
      v46 = v45;
      v47 = v68;
      v42(v8, v68);
      v48 = v67;
      v73 = v44;
      v74 = v46;
      v49 = String.init<A>(describing:)();
      v51 = v50;
      v70(v43, v9);
      v52 = sub_1000153E0(v49, v51, v75);

      *(v39 + 24) = v52;
      v53 = v61;
      _os_log_impl(&_mh_execute_header, v61, v60, "Skip inserting new Implicit Follow for currently playing episode because the show is Not Subscribeable -- i.e. from a news diggest or some other type of 'fake' show: %{private}s, adamID: %{private}lld, guid: %{private}s.", v39, 0x20u);
      swift_arrayDestroy();

      (*(v65 + 8))(v71, v66);
      v54 = v64;
    }

    else
    {
      v55 = *(v70 + 1);
      v55(v12, v9);

      v55(v69, v9);
      v55(v14, v9);
      (*(v65 + 8))(v71, v66);
      v54 = v64;
      v48 = v67;
      v47 = v68;
    }

    PlayerItem.episode.getter();
    v56 = EpisodePlayerItem.adamID.getter();
    (*(v48 + 8))(v8, v47);
    v54(v56, 0, 0, 0, 0);
  }
}

id PodcastsStateCoordinator.unsafeInsertNewImplicitFollow(for:from:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  v83 = a2;
  v4 = type metadata accessor for RemoteNonFollowedShow();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v85 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v77 - v7;
  __chkstk_darwin();
  v9 = &v77 - v8;
  __chkstk_darwin();
  v11 = &v77 - v10;
  v12 = type metadata accessor for Logger();
  v90 = *(v12 - 8);
  __chkstk_darwin();
  v86 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v77 - v14;
  static Logger.podcastsStatesCoordination.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = *(v5 + 16);
  v17(v11, a1, v4);
  v89 = a1;
  v78 = v17;
  v17(v9, a1, v4);
  v18 = Logger.logObject.getter();
  LODWORD(v81) = v16;
  v19 = os_log_type_enabled(v18, v16);
  v87 = v12;
  v82 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v92 = v77;
    *v20 = 134283779;
    v21 = RemoteNonFollowedShow.storeCollectionId.getter();
    v22 = *(v5 + 8);
    v22(v11, v4);
    *(v20 + 4) = v21;
    *(v20 + 12) = 2081;
    v23 = RemoteNonFollowedShow.feedURL.getter();
    v25 = v24;
    v80 = v22;
    v22(v9, v4);
    v26 = sub_1000153E0(v23, v25, &v92);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v81, "Inserting new show (in Store state) for RemoteNonFollowedShow with adamID: %{private}lld, feedURL: %{private}s.", v20, 0x16u);
    sub_100004590(v77);

    v27 = v88;

    v81 = *(v90 + 8);
    v81(v15, v87);
  }

  else
  {
    v28 = *(v5 + 8);
    v28(v11, v4);

    v80 = v28;
    v28(v9, v4);
    v81 = *(v90 + 8);
    v81(v15, v12);
    v27 = v88;
  }

  sub_1000044A0((v27 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore), *(v27 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateCoordinatorPersistentStore + 24));
  v29 = v89;
  v30 = dispatch thunk of PodcastsStateCoordinatorPersistentStoreProtocol.insertPodcastInStoreState(in:for:)();
  v31 = v86;
  static Logger.podcastsStatesCoordination.getter();
  v32 = static os_log_type_t.default.getter();
  v33 = v84;
  v34 = v78;
  v78(v84, v29, v4);
  v35 = v85;
  v34(v85, v29, v4);
  v36 = v30;
  v37 = Logger.logObject.getter();
  LODWORD(v79) = v32;
  if (os_log_type_enabled(v37, v32))
  {
    v77 = v37;
    v78 = v4;
    v38 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v38 = 136382467;
    v39 = [v36 title];
    if (v39)
    {
      v40 = v39;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
    }

    else
    {
      v43 = 0xEA00000000003E65;
      v41 = 0x6C746974206F6E3CLL;
    }

    v46 = 0x3E7974706D653CLL;
    v47 = sub_1000153E0(v41, v43, &v92);

    *(v38 + 4) = v47;
    *(v38 + 12) = 2080;
    v48 = [v36 uuid];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v52 = 0xE700000000000000;
      v50 = 0x3E7974706D653CLL;
    }

    v53 = sub_1000153E0(v50, v52, &v92);

    *(v38 + 14) = v53;
    *(v38 + 22) = 2080;
    v91 = [v36 managedObjectContext];
    sub_100168088(&qword_1005737C8);
    v54 = String.init<A>(describing:)();
    v56 = sub_1000153E0(v54, v55, &v92);

    *(v38 + 24) = v56;
    *(v38 + 32) = 2049;
    v57 = [v36 storeCollectionId];

    *(v38 + 34) = v57;
    *(v38 + 42) = 2081;
    v58 = [v36 feedURL];
    if (v58)
    {
      v59 = v58;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;
    }

    else
    {
      v61 = 0xE700000000000000;
    }

    v62 = sub_1000153E0(v46, v61, &v92);

    *(v38 + 44) = v62;
    *(v38 + 52) = 2049;
    v63 = v84;
    v64 = RemoteNonFollowedShow.storeCollectionId.getter();
    v65 = v78;
    v66 = v80;
    v80(v63, v78);
    *(v38 + 54) = v64;
    *(v38 + 62) = 2081;
    v67 = v85;
    v68 = RemoteNonFollowedShow.feedURL.getter();
    v70 = v69;
    v66(v67, v65);
    v71 = sub_1000153E0(v68, v70, &v92);

    *(v38 + 64) = v71;
    *(v38 + 72) = 2080;
    v45 = v83;
    v72 = PodcastsStateChangeOrigin.description.getter();
    v74 = sub_1000153E0(v72, v73, &v92);

    *(v38 + 74) = v74;
    v75 = v77;
    _os_log_impl(&_mh_execute_header, v77, v79, "Implicitly Following previously inserted Store podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s; For RemoteNonFollowedShow with adamID: %{private}lld, feedURL: %{private}s; From origin: %s.", v38, 0x52u);
    swift_arrayDestroy();

    v81(v86, v87);
  }

  else
  {
    v44 = v80;
    v80(v33, v4);

    v44(v35, v4);
    v81(v31, v87);
    v45 = v83;
  }

  sub_1002C76C4(v36, 3, 4u, v45);
  sub_1002F8964(v36, v89);
  return v36;
}

id PodcastsStateCoordinator.unsafeImplicitlyFollowIfNeeded(_:for:from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v146 = a3;
  v5 = type metadata accessor for Date();
  v131 = *(v5 - 8);
  v132 = v5;
  __chkstk_darwin();
  v130 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteNonFollowedShow();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v137 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v143 = &v128 - v10;
  __chkstk_darwin();
  v12 = &v128 - v11;
  __chkstk_darwin();
  v14 = &v128 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v144 = v15;
  v145 = v16;
  __chkstk_darwin();
  v138 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v128 - v18;
  static Logger.podcastsStatesCoordination.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = *(v8 + 16);
  (v21)(v14, a2, v7);
  v141 = a2;
  v133 = v8 + 16;
  v134 = v21;
  (v21)(v12, a2, v7);
  v22 = v19;
  v23 = a1;
  v24 = Logger.logObject.getter();
  LODWORD(v136) = v20;
  v25 = os_log_type_enabled(v24, v20);
  v142 = v7;
  v139 = v8;
  if (v25)
  {
    v26 = v14;
    v129 = v24;
    v27 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v148[0] = v128;
    *v27 = 136382467;
    v28 = [v23 title];
    if (v28)
    {
      v29 = v28;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
    }

    else
    {
      v30 = 0x6C746974206F6E3CLL;
      v32 = 0xEA00000000003E65;
    }

    v36 = 0x3E7974706D653CLL;
    v37 = sub_1000153E0(v30, v32, v148);

    *(v27 + 4) = v37;
    *(v27 + 12) = 2080;
    v38 = [v23 uuid];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;
    }

    else
    {
      v42 = 0xE700000000000000;
      v40 = 0x3E7974706D653CLL;
    }

    v43 = sub_1000153E0(v40, v42, v148);

    *(v27 + 14) = v43;
    *(v27 + 22) = 2080;
    v147 = [v23 managedObjectContext];
    sub_100168088(&qword_1005737C8);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000153E0(v44, v45, v148);

    *(v27 + 24) = v46;
    *(v27 + 32) = 2049;
    v47 = [v23 storeCollectionId];

    *(v27 + 34) = v47;
    *(v27 + 42) = 2081;
    v48 = [v23 feedURL];
    if (v48)
    {
      v49 = v48;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v52 = sub_1000153E0(v36, v51, v148);

    *(v27 + 44) = v52;
    *(v27 + 52) = 2049;
    v53 = RemoteNonFollowedShow.storeCollectionId.getter();
    v54 = *(v139 + 8);
    v55 = v142;
    v54(v26, v142);
    *(v27 + 54) = v53;
    *(v27 + 62) = 2081;
    v56 = RemoteNonFollowedShow.feedURL.getter();
    v58 = v57;
    v135 = v54;
    v54(v12, v55);
    v59 = sub_1000153E0(v56, v58, v148);

    *(v27 + 64) = v59;
    *(v27 + 72) = 2080;
    v35 = v146;
    v60 = PodcastsStateChangeOrigin.description.getter();
    v62 = sub_1000153E0(v60, v61, v148);

    *(v27 + 74) = v62;
    v63 = v129;
    _os_log_impl(&_mh_execute_header, v129, v136, "Implicitly Following if needed podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s; For RemoteNonFollowedShow with adamID: %{private}lld, feedURL: %{private}s; From origin: %s.", v27, 0x52u);
    swift_arrayDestroy();

    v34 = v144;
    v136 = *(v145 + 8);
    v136(v22, v144);
  }

  else
  {
    v33 = *(v8 + 8);
    v33(v14, v7);

    v135 = v33;
    v33(v12, v7);
    v34 = v144;
    v136 = *(v145 + 8);
    v136(v22, v144);
    v35 = v146;
  }

  v64 = *(v140 + OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_podcastsStateTransitions);
  sub_1002C76C4(v23, 3, 4u, v35);
  [v23 lastDatePlayed];
  v66 = v65;
  v67 = v141;
  sub_1002F8964(v23, v141);
  result = [v23 lastDatePlayed];
  v69 = v143;
  if (v66 != v70)
  {
    v140 = v64;
    v71 = v138;
    static Logger.podcastsStatesCoordination.getter();
    v72 = static os_log_type_t.default.getter();
    v73 = v142;
    v74 = v134;
    (v134)(v69, v67, v142);
    v75 = v137;
    (v74)(v137, v67, v73);
    v76 = v69;
    v77 = v23;
    v78 = Logger.logObject.getter();
    LODWORD(v141) = v72;
    if (os_log_type_enabled(v78, v72))
    {
      v134 = v78;
      v79 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v148[0] = v133;
      *v79 = 136382979;
      v80 = v130;
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_1000170B0(&unk_10057E290, &type metadata accessor for Date);
      v81 = v132;
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = *(v131 + 8);
      v85(v80, v81);
      v86 = sub_1000153E0(v82, v84, v148);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2081;
      [v77 lastDatePlayed];
      Date.init(timeIntervalSinceReferenceDate:)();
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v89 = v88;
      v85(v80, v81);
      v90 = sub_1000153E0(v87, v89, v148);

      *(v79 + 14) = v90;
      *(v79 + 22) = 2081;
      v91 = [v77 title];
      if (v91)
      {
        v92 = v91;
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;
      }

      else
      {
        v93 = 0x6C746974206F6E3CLL;
        v95 = 0xEA00000000003E65;
      }

      v98 = v137;
      v99 = 0x3E7974706D653CLL;
      v100 = sub_1000153E0(v93, v95, v148);

      *(v79 + 24) = v100;
      *(v79 + 32) = 2080;
      v101 = [v77 uuid];
      v102 = v134;
      if (v101)
      {
        v103 = v101;
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v105;
      }

      else
      {
        v106 = 0xE700000000000000;
        v104 = 0x3E7974706D653CLL;
      }

      v107 = sub_1000153E0(v104, v106, v148);

      *(v79 + 34) = v107;
      *(v79 + 42) = 2080;
      v147 = [v77 managedObjectContext];
      sub_100168088(&qword_1005737C8);
      v108 = String.init<A>(describing:)();
      v110 = sub_1000153E0(v108, v109, v148);

      *(v79 + 44) = v110;
      *(v79 + 52) = 2049;
      v111 = [v77 storeCollectionId];

      *(v79 + 54) = v111;
      *(v79 + 62) = 2081;
      v112 = [v77 feedURL];
      if (v112)
      {
        v113 = v112;
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;
      }

      else
      {
        v115 = 0xE700000000000000;
      }

      v116 = sub_1000153E0(v99, v115, v148);

      *(v79 + 64) = v116;
      *(v79 + 72) = 2049;
      v117 = v143;
      v118 = RemoteNonFollowedShow.storeCollectionId.getter();
      v119 = v142;
      v120 = v135;
      v135(v117, v142);
      *(v79 + 74) = v118;
      *(v79 + 82) = 2081;
      v121 = RemoteNonFollowedShow.feedURL.getter();
      v123 = v122;
      v120(v98, v119);
      v124 = sub_1000153E0(v121, v123, v148);

      *(v79 + 84) = v124;
      *(v79 + 92) = 2080;
      v97 = v146;
      v125 = PodcastsStateChangeOrigin.description.getter();
      v127 = sub_1000153E0(v125, v126, v148);

      *(v79 + 94) = v127;
      _os_log_impl(&_mh_execute_header, v102, v141, "Implicit Follow did updated lastDatePlayed from %{private}s to %{private}s; Podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s; For RemoteNonFollowedShow with adamID: %{private}lld, feedURL: %{private}s; From origin: %s.", v79, 0x66u);
      swift_arrayDestroy();

      v136(v138, v144);
    }

    else
    {
      v96 = v135;
      v135(v76, v73);

      v96(v75, v73);
      v136(v71, v34);
      v97 = v146;
    }

    return sub_1002C76C4(v77, 8, 4u, v97);
  }

  return result;
}

void PodcastsStateCoordinator.enableSubscription(onPodcastUUID:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*&v3[OBJC_IVAR____TtC8Podcasts24PodcastsStateCoordinator_contextProvider] mainOrPrivateContext];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = v7;
  v12[4] = sub_1002F9030;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = &unk_1004EC488;
  v9 = _Block_copy(v12);
  v10 = v3;

  v11 = v7;

  [v11 performBlockAndWaitWithSave:v9];
  _Block_release(v9);
}

void PodcastsStateCoordinator.unsafeEnableSubscription(onPodcastUUID:from:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [a4 podcastForUuid:v6];

  if (v7)
  {
    sub_1002F2D24(v7, a3);
    [a4 saveInCurrentBlock];
  }
}

id sub_1002F2D24(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.podcastsStatesCoordination.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v41 = v5;
    v42 = v2;
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v11 = 136315907;
    v43 = a2;
    v12 = PodcastsStateChangeOrigin.description.getter();
    v14 = sub_1000153E0(v12, v13, &v46);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2081;
    v15 = [a1 title];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v44 = v17;
    v45 = v19;
    sub_100168088(&qword_100574230);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v46);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    v23 = [a1 uuid];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v44 = v25;
    v45 = v27;
    v28 = String.init<A>(describing:)();
    v30 = sub_1000153E0(v28, v29, &v46);

    *(v11 + 24) = v30;
    *(v11 + 32) = 2081;
    v31 = MTPodcast.adamId.getter();
    if (v32)
    {
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v44 = v31;
      sub_1000366D8();
      v33 = BinaryInteger.description.getter();
    }

    v44 = v33;
    v45 = v34;
    v35 = String.init<A>(describing:)();
    v37 = sub_1000153E0(v35, v36, &v46);

    *(v11 + 34) = v37;
    _os_log_impl(&_mh_execute_header, v10, v9, "Following podcast (origin: %s): %{private}s, uuid: %s, adamID: %{private}s.", v11, 0x2Au);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v41);
    a2 = v43;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_1002C76C4(a1, [a1 syncType], 0, a2);
  [a1 setNeedsArtworkUpdate:1];
  [a1 applyDefaultFollowedShowSettingsFor:MTPodcast.showType.getter()];
  [a1 resetGoDarkWithReason:5];
  return [a1 setLastRemovedFromUpNextDate:0.0];
}