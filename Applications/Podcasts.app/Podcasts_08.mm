void *sub_1001A7CBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100168088(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1001A7DF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&unk_1005747C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A7F00(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_100574840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A801C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574830);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574838);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A8150(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574888);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574890);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A8298(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_1005747B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574230);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A83CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100168088(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1001A84E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100168088(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

size_t sub_1001A85E4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(&qword_100574860);
  v10 = *(sub_100168088(&qword_100574868) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100168088(&qword_100574868) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1001A87D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100168088(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1001A891C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1001A8AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NonFollowedShows = type metadata accessor for FetchNonFollowedShows();
  v21[3] = NonFollowedShows;
  v21[4] = &off_1004E6C88;
  v21[0] = a2;
  v20[3] = type metadata accessor for PodcastsStateCoordinator();
  v20[4] = sub_100018394(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator);
  v20[0] = a3;
  v7 = type metadata accessor for NonFollowedShowsSyncStorage();
  v8 = objc_allocWithZone(v7);
  v9 = sub_100010C38(v21, NonFollowedShows);
  v10 = __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  v19[3] = NonFollowedShows;
  v19[4] = &off_1004E6C88;
  v19[0] = v14;
  *&v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_importContext] = a1;
  sub_100004428(v19, &v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows]);
  sub_100004428(v20, &v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_podcastsStateCoordinator]);
  v18.receiver = v8;
  v18.super_class = v7;
  v15 = objc_msgSendSuper2(&v18, "init");
  sub_100004590(v20);
  sub_100004590(v19);
  sub_100004590(v21);
  return v15;
}

id sub_1001A8CB4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();
  v10 = v9;

  if (v10)
  {
    static Logger.cloudSync.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, v11, "[NonFollowedShows] We never synced before, so there are no old Implicit Follows to clean up.", v13, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v14 = [objc_opt_self() falsePredicate];

    return v14;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v16 = kPodcastLastImplicitlyFollowedDate;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [objc_opt_self() predicateForDateKey:v16 isLessThanDate:isa];

    v19 = objc_opt_self();
    v20 = Array._bridgeToObjectiveC()().super.isa;
    v21 = [v19 predicateForImplicitlyFollowedPodcastsExcludingUUIDs:v20];

    v22 = [v21 AND:v18];
    (*(v5 + 8))(v7, v4);
    return v22;
  }
}

void *_s8Podcasts27NonFollowedShowsSyncStorageC045unsafeImplicitFollowsOnlyInLocalAndBeforeLastE014excludingUUIDs2inSaySo9MTPodcastCGSgSaySSG_So22NSManagedObjectContextCtF_0(uint64_t a1, void *a2)
{
  v3 = sub_1001A8CB4();
  v4 = kMTPodcastEntityName;
  v5 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [a2 objectsInEntity:v4 predicate:v5 sortDescriptors:isa];

  if (v7)
  {
    sub_100009F1C(0, &qword_1005739D0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10037F7EC(v8);
  }

  return v7;
}

uint64_t UpNextSplitMigrationStep.requiresMigration.getter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Podcasts();
  v14[3] = v4;
  v14[4] = sub_1001A9324();
  v5 = sub_10000E680(v14);
  (*(*(v4 - 8) + 104))(v5, enum case for Podcasts.upNextSplit(_:), v4);
  LOBYTE(v4) = isFeatureEnabled(_:)();
  sub_100004590(v14);
  if (v4)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 BOOLForKey:v7];

    return v8 ^ 1;
  }

  else
  {
    static Logger.database.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "[UpNextSplitMigrationStep] Feature flag is OFF, skipping migration for now", v12, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

unint64_t sub_1001A9324()
{
  result = qword_1005742C0;
  if (!qword_1005742C0)
  {
    type metadata accessor for Podcasts();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005742C0);
  }

  return result;
}

void sub_1001A9394(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v8 = [objc_opt_self() predicateForSubscribedAndNotHidden];
  [v7 setPredicate:v8];

  [v7 setResultType:2];
  sub_100168088(&unk_1005747C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = kPodcastUuid;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  sub_100009F1C(0, &qword_10057E7C0);
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return;
  }

  v15 = v14;
  v43 = v10;
  v36 = a1;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_35:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31[1] = 0;
  v32 = v6;
  v33 = v7;
  v34 = v4;
  v35 = v3;
  if (!v17)
  {
    v37 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v6 = 0;
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v18 = v6;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v3 = v19;
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *&v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v38 + 1) = v20;
      v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v7 = [v3 __swift_objectForKeyedSubscript:v4];
      swift_unknownObjectRelease();
      if (v7)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      if (*(&v39 + 1))
      {
        break;
      }

      sub_10016B3CC(v40);
LABEL_9:
      ++v18;
      if (v6 == v17)
      {
        goto LABEL_29;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v3 = v42;
    if (!v42)
    {
      goto LABEL_9;
    }

    v4 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_100243134(0, *(v37 + 2) + 1, 1, v37);
    }

    v7 = *(v37 + 2);
    v22 = *(v37 + 3);
    if (v7 >= v22 >> 1)
    {
      v37 = sub_100243134((v22 > 1), v7 + 1, 1, v37);
    }

    v23 = v37;
    *(v37 + 2) = v7 + 1;
    v24 = &v23[16 * v7];
    *(v24 + 4) = v4;
    *(v24 + 5) = v3;
  }

  while (v6 != v17);
LABEL_29:

  v25 = v32;
  static Logger.database.getter();
  v26 = v37;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v26 + 2);

    _os_log_impl(&_mh_execute_header, v27, v28, "[UpNextSplitMigrationStep] Updating New Episode markers for %ld podcasts...", v29, 0xCu);
  }

  else
  {
  }

  v30 = v33;
  (*(v34 + 8))(v25, v35);
  type metadata accessor for NewEpisodesShelfUpdater();
  static NewEpisodesShelfUpdater.synchronouslyUpdateNewEpisodes(forPodcastsWithUUIDs:context:)();
}

void sub_1001A98B8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[UpNextSplitMigrationStep] Starting migration...", v7, 2u);
  }

  (*(v2 + 8))(v4, v1);
  sub_100009F1C(0, &qword_1005735F0);
  v8 = static MTDB.shared.getter();
  if (!v0)
  {
    v9 = v8;
    v10 = NSManagedObjectContextProvider.privateManagedObjectContext.getter();

    __chkstk_darwin(v11);
    v12[-2] = v10;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

uint64_t sub_1001A9ACC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A9B30()
{
  v23 = *v0;
  v21 = type metadata accessor for ObserverQueue();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_1005749B8);
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = &v21 - v8;
  v24 = sub_100168088(&qword_1005749C0);
  v26 = *(v24 - 8);
  __chkstk_darwin(v24);
  v10 = &v21 - v9;
  swift_getObjectType();
  static StationListOptions.list.getter();
  dispatch thunk of LibraryDataProviderProtocol.fetchStationsObserver(with:)();
  (*(v5 + 8))(v7, v4);
  v11 = v21;
  (*(v1 + 104))(v3, enum case for ObserverQueue.main(_:), v21);
  sub_100009FAC(&qword_1005749C8, &qword_1005749D0);
  v12 = Promise<A>.observerPublisher(receiveOn:)();

  (*(v1 + 8))(v3, v11);
  v28 = v12;
  v13 = v0[2];
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;

  sub_100168088(&qword_1005749D8);
  sub_100009FAC(&qword_1005749E0, &qword_1005749D8);
  v16 = v22;
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_1005749E8, &qword_1005749B8);
  v17 = v25;
  Publisher.prepend(_:)();
  (*(v27 + 8))(v16, v17);
  sub_100009FAC(&unk_1005749F0, &qword_1005749C0);
  v18 = v24;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v26 + 8))(v10, v18);
  return v19;
}

uint64_t sub_1001AA020@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001AA3F8(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

char *sub_1001AA058(unint64_t a1)
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

  v12 = _swiftEmptyArrayStorage;
  result = sub_1001A7630(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1001AA250(i, a1);
        sub_100168088(&unk_100574A00);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001A7630((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_10016B7CC(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_100168088(&unk_100574A00);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001A7630((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_10016B7CC(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AA250(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "CPListTemplateItem";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "libraryDataProvider";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x80000001004667A0;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AA3F8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator();
  swift_allocObject();

  sub_1002442DC(v3);

  v4 = BaseObjectGraph.satisfying<A>(_:with:)();
  if (a2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1001AA70C();
    v9 = sub_100372B24(v4, v7);

    ++v6;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v8;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00);
      v10 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_18;
    }

LABEL_24:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithItems:isa];

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;

  return v14;
}

unint64_t sub_1001AA70C()
{
  result = qword_100577460;
  if (!qword_100577460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100577460);
  }

  return result;
}

uint64_t sub_1001AA758()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    HomePageProvider.episodeOrderingFrozen.setter();
  }

  return result;
}

uint64_t sub_1001AA7C0()
{

  AnyCancellable.cancel()();

  return swift_deallocClassInstance();
}

uint64_t sub_1001AA858(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for ModernShelf();
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = ModernShelf.items.getter();
    v5 = sub_10037F960(v4);

    if (!v5)
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_17;
    }

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v26 = v7;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v26)
    {
      goto LABEL_38;
    }

    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      sub_100009FAC(&qword_100574B60, &qword_100574B58);
      for (i = 0; i != v14; ++i)
      {
        sub_100168088(&qword_100574B58);
        v17 = sub_10037076C(v25, i, v5);
        v19 = *v18;

        (v17)(v25, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for LegacyEpisodeLockup();
      swift_arrayInitWithCopy();
    }

    if (v26 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v26);
      v22 = v20 + v26;
      if (v21)
      {
        goto LABEL_39;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v26 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1001AABAC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001004668C0;
  v1._object = 0x8000000100466890;
  v4._countAndFlagsBits = 0xD000000000000023;
  v1._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100574A10 = v3;
}

uint64_t sub_1001AAC64()
{
  v26 = *v0;
  v1 = v26;
  v2 = sub_100168088(&unk_100578D90);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin(v2);
  v5 = &v26 - v4;
  v6 = sub_100168088(&qword_100574AE0);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v33 = sub_100168088(&qword_100574AE8);
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v27 = &v26 - v10;
  v11 = sub_100168088(&unk_100574AF0);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  __chkstk_darwin(v11);
  v32 = &v26 - v13;
  v37 = HomePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v1;
  sub_100168088(&unk_100578DB0);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0);
  Publisher.removeDuplicates(by:)();

  sub_100009FAC(&unk_100577420, &unk_100578D90);

  v14 = v28;
  Publisher.filter(_:)();

  (*(v29 + 8))(v5, v14);
  v37 = v0[5];
  sub_100168088(&qword_100574B10);
  sub_100009FAC(&qword_100574B18, &qword_100574AE0);
  sub_100009FAC(&unk_100574B20, &qword_100574B10);
  v15 = v27;
  v16 = v30;
  Publisher.combineLatest<A>(_:)();
  (*(v31 + 8))(v9, v16);
  v17 = v0[2];
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1001AB814;
  *(v20 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20);
  sub_100009FAC(&unk_100574B30, &qword_100574AE8);
  sub_100009FAC(&qword_100578B30, &unk_100578B20);
  v22 = v32;
  v21 = v33;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v36 + 8))(v15, v21);
  sub_100009FAC(&unk_100574B40, &unk_100574AF0);
  v23 = v34;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v35 + 8))(v22, v23);
  return v24;
}

uint64_t sub_1001AB278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageContent();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100168088(&qword_100578010);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  sub_100168088(&unk_100578B20);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1001AB84C(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  sub_1001AD194(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, &type metadata accessor for PageContent);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_100401F70;
  *(v15 + 24) = v14;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_1001AB48C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AB524, v4, v3);
}

uint64_t sub_1001AB524()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1001ACCA8(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001AB594(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001AB680;

  return v5();
}

uint64_t sub_1001AB680(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1001AB81C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1001AB84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB8B0()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001AB9B8;

  return sub_1001AB48C(v4, v0 + v3);
}

uint64_t sub_1001AB9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1001ABACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_1001AB594(a1, v4);
}

void *sub_1001ABB84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100574B68);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_100168088(&qword_100574B10);
  swift_allocObject();
  v1[5] = CurrentValueSubject.init(_:)();
  v1[2] = a1;
  type metadata accessor for HomePageProvider();
  swift_allocObject();
  swift_retain_n();
  v1[4] = HomePageProvider.init(asPartOf:platformContext:)();

  HomePageProvider.loadPageContent()();

  type metadata accessor for FreezableContentSubject();
  BaseObjectGraph.inject<A>(_:)();
  sub_1001AD25C();
  sub_1001AD2B4();
  Publisher<>.removeDuplicates()();
  swift_allocObject();
  swift_weakInit();
  sub_100009FAC(&unk_100574B80, &qword_100574B68);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  v2[3] = v8;
  return v2;
}

char *sub_1001ABDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ModernPage();
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1001AB84C(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v25 = v9;
LABEL_17:
    sub_1001AD1FC(v25, &type metadata accessor for PageContent);
    v26 = 0;
    return (v26 & 1);
  }

  sub_1001AD194(v9, v15, &type metadata accessor for ModernPage);
  sub_1001AB84C(a2, v6);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v15, &type metadata accessor for ModernPage);
    v25 = v6;
    goto LABEL_17;
  }

  sub_1001AD194(v6, v12, &type metadata accessor for ModernPage);
  v16 = sub_1001AA858(*&v15[*(v10 + 24)]);
  v17 = sub_1001AA858(*&v12[*(v10 + 24)]);
  if (v16 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v12;
  v34 = v15;
  if (v18)
  {
    v35 = _swiftEmptyArrayStorage;
    result = sub_1001A7578(0, v18 & ~(v18 >> 63), 0);
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v20 = 0;
    v21 = v35;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v22 = LegacyLockup.adamId.getter();

      v35 = v21;
      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        sub_1001A7578((v23 > 1), v24 + 1, 1);
        v21 = v35;
      }

      ++v20;
      v21[2] = v24 + 1;
      v21[v24 + 4] = v22;
    }

    while (v18 != v20);

    v12 = v33;
    v15 = v34;
    if (!(v17 >> 62))
    {
LABEL_19:
      v27 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
        goto LABEL_20;
      }

LABEL_31:

      v29 = _swiftEmptyArrayStorage;
LABEL_32:
      v26 = sub_100195F50(v21, v29);

      sub_1001AD1FC(v12, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v15, &type metadata accessor for ModernPage);
      return (v26 & 1);
    }
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
    if (!(v17 >> 62))
    {
      goto LABEL_19;
    }
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_20:
  v35 = _swiftEmptyArrayStorage;
  result = sub_1001A7578(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v35;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v30 = LegacyLockup.adamId.getter();

      v35 = v29;
      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        sub_1001A7578((v31 > 1), v32 + 1, 1);
        v29 = v35;
      }

      ++v28;
      v29[2] = v32 + 1;
      v29[v32 + 4] = v30;
    }

    while (v27 != v28);

    v12 = v33;
    v15 = v34;
    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_1001AC260(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v12._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5458454E5F5055;
  v7._object = 0xE700000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  v10[0] = 1;
  v11 = 6;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, v10, 2);
}

id sub_1001AC394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._object = 0x80000001004668F0;
  v7._countAndFlagsBits = 0xD000000000000018;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 1);
}

id sub_1001AC4DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x736970452077654ELL;
  v7._object = 0xEC0000007365646FLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 3);
}

id sub_1001AC628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._object = 0x8000000100466910;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 4);
}

id sub_1001AC770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _swiftEmptyArrayStorage;
  v8 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for HomePageProvider();
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v49 = v12;
    v50 = v10;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v47 = (v11 - 8);
    v48 = v14;
    v45 = _swiftEmptyArrayStorage;
    v46 = v11;
    while (1)
    {
      v15 = v4;
      v49(v7, v13, v4);
      v16 = ModernShelf.id.getter();
      v18 = v17;
      if (static HomePageProvider.upNextShelfID.getter() == v16 && v19 == v18)
      {
      }

      else
      {
        v20 = a1;
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          if (static HomePageProvider.recentlyPlayedShelfID.getter() == v16 && v25 == v18)
          {

            goto LABEL_17;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
LABEL_17:

            v27 = ModernShelf.items.getter();
            v28 = sub_10037F978(v27);

            if (!v28)
            {
              v28 = _swiftEmptyArrayStorage;
            }

            a1 = v20;
            v29 = sub_1001AC394(v20, v28);
          }

          else
          {
            if (static HomePageProvider.newEpisodesShelfID.getter() == v16 && v31 == v18)
            {
            }

            else
            {
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v32 & 1) == 0)
              {
                if (static HomePageProvider.continuePlayingShelfID.getter() == v16 && v35 == v18)
                {

                  a1 = v20;
                }

                else
                {
                  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  a1 = v20;
                  if ((v36 & 1) == 0)
                  {
                    goto LABEL_12;
                  }
                }

                v37 = ModernShelf.items.getter();
                v38 = sub_10037F978(v37);

                if (!v38)
                {
                  v38 = _swiftEmptyArrayStorage;
                }

                v29 = sub_1001AC628(a1, v38);
                goto LABEL_20;
              }
            }

            v33 = ModernShelf.items.getter();
            v34 = sub_10037F978(v33);

            if (!v34)
            {
              v34 = _swiftEmptyArrayStorage;
            }

            a1 = v20;
            v29 = sub_1001AC4DC(v20, v34);
          }

LABEL_20:
          v24 = v29;

          if (v24)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        a1 = v20;
      }

      v22 = ModernShelf.items.getter();
      v23 = sub_10037F978(v22);

      if (!v23)
      {
        v23 = _swiftEmptyArrayStorage;
      }

      v24 = sub_1001AC260(a1, v23);

      if (v24)
      {
LABEL_21:
        v30 = v24;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = v15;
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v15;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v47)(v7, v4);
        v45 = v51;
        goto LABEL_3;
      }

LABEL_12:
      v4 = v15;
      (*v47)(v7, v15);
LABEL_3:
      v13 += v48;
      if (!--v9)
      {
        goto LABEL_40;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_40:
  v39 = v45;
  if (v45 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_42;
    }

LABEL_44:

    return 0;
  }

  if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_42:
  v40 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v39);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v40 initWithItems:isa];

  return v42;
}

uint64_t sub_1001ACCA8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ModernPage();
  __chkstk_darwin(v3 - 8);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageContent();
  __chkstk_darwin(v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_100572710 != -1)
      {
        swift_once();
      }

      v15 = xmmword_100574A10;

      sub_1001AD1FC(v12, &type metadata accessor for PageContent);
      return v15;
    }

    else
    {
      sub_1001AD194(v12, v5, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator();
      swift_allocObject();

      v22 = sub_1002442DC(v21);

      v30[1] = v22;
      v23 = BaseObjectGraph.satisfying<A>(_:with:)();
      v24 = sub_1001AC770(v23, v5);
      if (v24)
      {
        v25 = v24;
        v26 = [v25 items];
        sub_100168088(&unk_100574A00);
        v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v27 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v28)
        {
          sub_100168088(&unk_100574680);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1004007B0;
          *(v29 + 32) = v25;

          sub_1001AD1FC(v5, &type metadata accessor for ModernPage);
          return v29;
        }

        sub_1001AD1FC(v5, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v5, &type metadata accessor for ModernPage);
      }

      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to load Home page: %@", v18, 0xCu);
      sub_100186264(v19);
    }

    else
    {
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001AD194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AD1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AD25C()
{
  result = qword_100574B70;
  if (!qword_100574B70)
  {
    type metadata accessor for FreezableContentSubject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574B70);
  }

  return result;
}

unint64_t sub_1001AD2B4()
{
  result = qword_100574B78;
  if (!qword_100574B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574B78);
  }

  return result;
}

void sub_1001AD310(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MTPlayerItem) init];
  v5 = PendingPlaybackMetadata.adamId.getter();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  [v4 setEpisodeStoreId:v7];
  PendingPlaybackMetadata.uuid.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v4 setEpisodeUuid:v9];

  v10 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x474E4944414F4CLL;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

  v13 = String._bridgeToObjectiveC()();

  [v4 setTitle:v13];

  [v4 setIsPlaceholder:1];
  PendingPlaybackMetadata.duration.getter();
  [v4 setDuration:?];
  PendingPlaybackMetadata.position.getter();
  [v4 setPlayhead:?];

  sub_100168088(&unk_100574680);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v4;
  sub_1001AD650();
  v15 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19.receiver = v2;
  v19.super_class = type metadata accessor for PlaceholderManifest();
  v17 = objc_msgSendSuper2(&v19, "initWithItems:", isa);

  if (v17)
  {
    v18 = type metadata accessor for PendingPlaybackMetadata();
    (*(*(v18 - 8) + 8))(a1, v18);

    return;
  }

LABEL_10:
  __break(1u);
}

id sub_1001AD5F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderManifest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001AD650()
{
  result = qword_10057A130;
  if (!qword_10057A130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057A130);
  }

  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.episodeUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryEpisodePagePresenter.Configuration.episodeUUID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.stationUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LibraryEpisodePagePresenter.Configuration.stationUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.referenceTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.playerTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void __swiftcall LibraryEpisodePagePresenter.Configuration.init(episodeUUID:stationUUID:referenceTime:playerTime:)(Podcasts::LibraryEpisodePagePresenter::Configuration *__return_ptr retstr, Swift::String episodeUUID, Swift::String_optional stationUUID, Swift::Double_optional referenceTime, Swift::Double_optional playerTime)
{
  retstr->episodeUUID = episodeUUID;
  retstr->stationUUID = stationUUID;
  retstr->referenceTime.value = *&referenceTime.is_nil;
  retstr->referenceTime.is_nil = playerTime.is_nil;
  *(&retstr->playerTime.value + 7) = v5;
  LOBYTE(retstr[1].episodeUUID._countAndFlagsBits) = v6 & 1;
}

uint64_t LibraryEpisodePagePresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LibraryEpisodePagePresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

void *LibraryEpisodePagePresenter.init(asPartOf:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[10] = &_swiftEmptySetSingleton;
  *&v28 = _swiftEmptyArrayStorage;
  sub_100168088(&unk_100572950);
  swift_allocObject();
  v2[29] = CurrentValueSubject.init(_:)();
  *v7 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100168088(&unk_100578DB0);
  swift_allocObject();
  v2[30] = CurrentValueSubject.init(_:)();
  *&v28 = static PageHeader.none.getter();
  *(&v28 + 1) = v8;
  v29 = v9;
  v30 = v10;
  sub_100168088(&qword_100572960);
  swift_allocObject();
  v2[31] = CurrentValueSubject.init(_:)();
  sub_100168088(&qword_100572968);
  swift_allocObject();
  v2[32] = PassthroughSubject.init()();
  v11 = v2 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  *v11 = 0;
  v11[8] = 1;
  type metadata accessor for InteractionContext.Page();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = static MetricsPageType.episode.getter();
  v14 = v13;
  v15 = static MetricsPageID.unknown.getter();
  v17 = v16;
  *&v28 = v12;
  *(&v28 + 1) = v14;
  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = v15;
  v19._object = v17;
  String.append(_:)(v19);

  PageID.init(with:)();
  static PageMetrics.notInstrumented.getter();
  v20 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  *(v3 + v20) = static PageRenderContentTypes.unspecified.getter();
  v21 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
  v22 = type metadata accessor for ModernShelf();
  v23 = *(*(v22 - 8) + 56);
  v23(v3 + v21, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf, 1, 1, v22);
  *(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) = 0;
  v23(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf, 1, 1, v22);
  v23(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf, 1, 1, v22);
  *(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = _swiftEmptyArrayStorage;
  v24 = *(a2 + 8);
  v3[2] = *a2;
  v3[3] = v24;
  v33 = *(a2 + 16);
  *(v3 + 2) = v33;
  v3[6] = *(a2 + 32);
  *(v3 + 56) = *(a2 + 40);
  v3[8] = *(a2 + 48);
  *(v3 + 72) = *(a2 + 56);
  v31 = type metadata accessor for EpisodeTextInfoProvider();
  v32 = &protocol witness table for EpisodeTextInfoProvider;
  sub_10000E680(&v28);

  sub_100010430(&v33, v27, &qword_100574230);
  EpisodeTextInfoProvider.init()();
  sub_1000109E4(&v28, (v3 + 11));
  sub_100168088(&qword_100574C58);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 8) = v28;
  sub_100168088(&unk_100575CF0);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 9) = v28;
  type metadata accessor for PageRenderController();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v3[20] = v28;
  sub_100168088(&qword_100574C60);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 21) = v28;
  sub_100168088(&unk_100578420);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(&v28, (v3 + 23));
  type metadata accessor for EpisodeUpsellBannerProvider();
  swift_allocObject();
  v25 = EpisodeUpsellBannerProvider.init(graph:uuid:presentationType:)();
  sub_100009104(&v33, &qword_100574230);
  v3[28] = v25;
  return v3;
}

Swift::Void __swiftcall LibraryEpisodePagePresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageRenderEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 256);
  *v7 = 1;
  v9 = enum case for PageRenderActivity.primaryDataFetchStarted(_:);
  v10 = type metadata accessor for PageRenderActivity();
  v11 = *(v10 - 8);
  v45 = *(v11 + 104);
  v43 = v11 + 104;
  v45(v7, v9, v10);
  v12 = *(v5 + 104);
  v42 = enum case for PageRenderEvent.activity(_:);
  v41 = v12;
  v12(v7);
  v40 = v8;
  PassthroughSubject.send(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v44 = v4;
  v15(v7, v4);
  swift_getObjectType();
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = dispatch thunk of LibraryDataProviderProtocol.fetchEpisodeBlocking(with:)();
  if (v18)
  {
    v19 = v18;
    sub_1001AE1D4(v18);
  }

  else
  {
    v35 = v17;
    v36 = v16;
    v37 = v7;
    v38 = v13;
    v39 = v14;
    v20 = v10;
    v21 = v46;
    static Logger.database.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315138;
      v27 = v35;
      v26 = v36;
      *(v24 + 4) = sub_1000153E0(v35, v36, &v49);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to fetch episode for UUID %s", v24, 0xCu);
      sub_100004590(v25);

      (*(v47 + 8))(v21, v48);
      v28 = v20;
      v29 = v44;
      v30 = v38;
      v31 = v37;
    }

    else
    {

      (*(v47 + 8))(v21, v48);
      v28 = v10;
      v29 = v44;
      v30 = v38;
      v26 = v36;
      v31 = v37;
      v27 = v35;
    }

    sub_1001AE180();
    v32 = swift_allocError();
    *v33 = v27;
    v33[1] = v26;
    *v31 = v32;
    v45(v31, enum case for PageRenderActivity.primaryDataFetchFailed(_:), v28);
    v41(v31, v42, v29);

    PassthroughSubject.send(_:)();
    v30(v31, v29);
  }
}

unint64_t sub_1001AE180()
{
  result = qword_100574C68;
  if (!qword_100574C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574C68);
  }

  return result;
}

uint64_t sub_1001AE1D4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent();
  __chkstk_darwin(v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InteractionContext.Page();
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 storeTrackId];
  v15 = AdamID.init(rawValue:)();
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  *v14 = v15;
  v14[8] = 0;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  swift_storeEnumTagMultiPayload();
  v18 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();

  sub_1001B8954(v14, v2 + v18);
  swift_endAccess();
  v29[1] = static MetricsPageType.episode.getter();
  v29[2] = v19;
  v20._countAndFlagsBits = 95;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v29[0] = v15;
  sub_10019BAC4();
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  PageID.init(with:)();
  v22 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  swift_beginAccess();
  (*(v8 + 40))(v2 + v22, v10, v7);
  swift_endAccess();
  v23 = [a1 bestTitle];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xE000000000000000;
  }

  sub_1001AE520(v15, v25, v27);

  sub_1001AEBC8(a1);
  sub_1001AF67C(a1);
  sub_1001AFB64(a1);
  sub_1001AFF90(a1);
  sub_1001B0448(a1);
  sub_1001B08D0(v6);
  return CurrentValueSubject.value.setter();
}

uint64_t LibraryEpisodePagePresenter.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();
  return sub_1001B847C(v1 + v3, a1);
}

uint64_t sub_1001AE520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = type metadata accessor for PageRenderEvent();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ScalarDictionary();
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v38 = type metadata accessor for MetricsPageFields();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PageMetrics();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsPageType.episode.getter();
  sub_100168088(&qword_100574EC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_10016A574(inited);
  swift_setDeallocating();
  sub_100009104(inited + 32, &qword_100574ED0);
  swift_getObjectType();
  HighlightsProviderProtocol.isSharedContent(_:)();
  *&v41 = a1;
  sub_1000366D8();
  BinaryInteger.description.getter();
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v17 = v30;
  v18 = v34;
  (*(v30 + 16))(v32, v12, v34);
  v19 = v31;
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v47 = v41;
  sub_100009104(&v47, &unk_100574650);
  v46 = v42;
  sub_100009104(&v46, &unk_100573A90);
  v45 = v43;
  sub_100009104(&v45, &unk_100574660);
  sub_100037470(v44);
  (*(v17 + 8))(v12, v18);
  (*(v36 + 8))(v14, v38);
  v20 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  swift_beginAccess();
  v21 = v35;
  v22 = v37;
  (*(v35 + 40))(v4 + v20, v19, v37);
  swift_endAccess();
  static PageRenderContentTypes.primaryData.getter();
  v23 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  swift_beginAccess();
  *(v4 + v23) = PageRenderContentTypes.init(rawValue:)();
  swift_endAccess();
  v24 = v33;
  (*(v21 + 16))(v33, v4 + v20, v22);
  v25 = enum case for PageRenderActivity.primaryDataFetchCompleted(_:);
  v26 = type metadata accessor for PageRenderActivity();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  v27 = v39;
  v28 = v40;
  (*(v39 + 104))(v24, enum case for PageRenderEvent.activity(_:), v40);
  PassthroughSubject.send(_:)();
  return (*(v27 + 8))(v24, v28);
}

uint64_t sub_1001AEBC8(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v7 - 8);
  v9 = &v75 - v8;
  v10 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v10 - 8);
  v85 = &v75 - v11;
  v12 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v12 - 8);
  v89 = &v75 - v13;
  v14 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v75 - v15;
  v87 = type metadata accessor for HeaderButtonItem();
  v17 = *(v87 - 8);
  __chkstk_darwin(v87);
  v81 = (&v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for ModernShelf.ItemPresentation();
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v75 - v21;
  v82 = a1;
  v23 = a1;
  v24 = v1;
  v25 = sub_1001B1478(v23);
  if (v25)
  {
    v26 = v25;
    v79 = v16;
    v80 = v9;
    *&v77 = sub_100168088(&qword_100574EB0);
    v27 = *(v17 + 72);
    v28 = *(v17 + 80);
    v86 = v22;
    v29 = (v28 + 32) & ~v28;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1004007C0;
    v31 = (v30 + v29);
    v32 = type metadata accessor for LibraryEpisodeLockup();
    v31[3] = v32;
    v33 = sub_1001B8618(&qword_100574EB8, &type metadata accessor for LibraryEpisodeLockup);
    v31[4] = v33;
    *v31 = v26;
    swift_storeEnumTagMultiPayload();
    v34 = (v30 + v29 + v27);
    v34[3] = v32;
    v34[4] = v33;
    *v34 = v26;
    swift_storeEnumTagMultiPayload();
    v35 = v24;
    *&v90 = v30;
    v78 = v26;
    swift_retain_n();
    CurrentValueSubject.send(_:)();

    LOBYTE(v90) = 1;
    v36 = v86;
    ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
    v76 = v27;
    v37 = swift_allocObject();
    v77 = xmmword_100400790;
    *(v37 + 16) = xmmword_100400790;
    v75 = v29;
    v38 = (v37 + v29);
    v40 = *(v35 + 16);
    v39 = *(v35 + 24);
    *v38 = v40;
    v38[1] = v39;
    v41 = enum case for BookmarkButtonPresenter.Data.uuid(_:);
    v42 = type metadata accessor for BookmarkButtonPresenter.Data();
    (*(*(v42 - 8) + 104))(v37 + v29, v41, v42);
    swift_storeEnumTagMultiPayload();

    v43 = v35;
    v44 = v36;
    if ([v82 isEntitled])
    {
      v45 = v81;
      *v81 = v40;
      *(v45 + 8) = v39;
      v46 = enum case for DownloadButtonPresenter.Data.uuid(_:);
      v47 = type metadata accessor for DownloadButtonPresenter.Data();
      (*(*(v47 - 8) + 104))(v45, v46, v47);
      swift_storeEnumTagMultiPayload();
      v48 = *(v37 + 16);
      v49 = *(v37 + 24);

      if (v48 >= v49 >> 1)
      {
        v37 = sub_1002434F8(v49 > 1, v48 + 1, 1, v37);
      }

      *(v37 + 16) = v48 + 1;
      sub_1001B8B68(v45, v37 + v75 + v48 * v76, &type metadata accessor for HeaderButtonItem);
    }

    v50 = type metadata accessor for EpisodeHeader();
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(44);

    *&v90 = 0xD000000000000029;
    *(&v90 + 1) = 0x8000000100466E40;

    v93 = LegacyLockup.adamId.getter();
    sub_10019BAC4();
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 93;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    v53 = EpisodeHeader.__allocating_init(lockup:headerButtonItems:shelfUniqueId:referenceTime:playerTime:)();
    v54 = LegacyLockup.title.getter();
    v56 = v55;

    v57 = EpisodeHeader.uberStyle.getter();
    if (v56)
    {
      v58 = v54;
    }

    else
    {
      v58 = 0;
    }

    if (v56)
    {
      v59 = v56;
    }

    else
    {
      v59 = 0xE000000000000000;
    }

    *&v90 = v58;
    *(&v90 + 1) = v59;
    BYTE4(v91) = 96;
    LODWORD(v91) = v57;
    CurrentValueSubject.value.setter();
    v87 = v43;
    if (qword_100572718 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Header();
    (*(*(v60 - 8) + 56))(v89, 1, 1, v60);
    v61 = v84;
    (*(v84 + 16))(v83, v44, v88);
    sub_100168088(&qword_1005748D8);
    v62 = swift_allocObject();
    *(v62 + 16) = v77;
    *(v62 + 56) = v50;
    *(v62 + 64) = sub_1001B8618(&qword_100574EC0, &type metadata accessor for EpisodeHeader);
    *(v62 + 32) = v53;
    v63 = type metadata accessor for URL();
    (*(*(v63 - 8) + 56))(v85, 1, 1, v63);
    v92 = 0;
    v90 = 0u;
    v91 = 0u;

    static MetricsTargetType.swoosh.getter();
    v64 = v80;
    static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

    v65 = type metadata accessor for ImpressionMetrics();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    v66 = v79;
    ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();

    (*(v61 + 8))(v86, v88);
    v67 = type metadata accessor for ModernShelf();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    v68 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
    v69 = v87;
    swift_beginAccess();
    sub_1001B89CC(v66, v69 + v68);
    return swift_endAccess();
  }

  else
  {
    static Logger.database.getter();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v90 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1000153E0(*(v24 + 16), *(v24 + 24), &v90);
      _os_log_impl(&_mh_execute_header, v71, v72, "episode is unavailable: %s", v73, 0xCu);
      sub_100004590(v74);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001AF67C(void *a1)
{
  v2 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v23 = sub_100168088(&qword_100574E88);
  v21 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = v20 - v5;
  v24 = sub_100168088(&qword_100574E90);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = v20 - v7;
  v9 = swift_allocObject();
  swift_weakInit();
  [a1 storeTrackId];
  AdamID.init(rawValue:)();
  v10 = [a1 podcast];
  v11 = v10;
  if (v10)
  {
    [v10 storeCollectionId];
    AdamID.init(rawValue:)();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001B8B24;
  *(v12 + 24) = v9;

  v13 = dispatch thunk of EpisodeUpsellBannerProvider.episodeUpsellBannerShelfPublisher(episodeAdamID:showAdamID:dismissalCompletion:)();

  v25 = v13;
  sub_100009F1C(0, &qword_1005729D0);
  v14 = static OS_dispatch_queue.main.getter();
  v27 = v14;
  v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_100168088(&qword_100574E98);
  v20[1] = v9;
  sub_100009FAC(&qword_100574EA0, &qword_100574E98);
  sub_1000179F8();
  Publisher.receive<A>(on:options:)();
  sub_100009104(v4, &qword_100575C10);

  v16 = sub_100009FAC(&qword_100574EA8, &qword_100574E88);
  v17 = v23;
  Publisher.emitPageRenderResourceEvents(using:onScreen:)();
  (*(v21 + 8))(v6, v17);
  swift_allocObject();
  swift_weakInit();
  v25 = v17;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  v18 = v24;
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v8, v18);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1001AFB64(void *a1)
{
  v3 = sub_100168088(&qword_100575C10);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_100168088(&qword_100574E60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_100168088(&qword_100574E68);
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - v13;
  [a1 storeTrackId];
  AdamID.init(rawValue:)();
  result = AdamID.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v22 = v7;
    v23 = v11;
    swift_getObjectType();
    v20 = v1;
    v24 = dispatch thunk of HighlightsProviderProtocol.pageHighlightShelfPublisherForId(adamId:)();
    sub_100009F1C(0, &qword_1005729D0);
    v16 = static OS_dispatch_queue.main.getter();
    v26 = v16;
    v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_100168088(&qword_100574E70);
    v21 = v10;
    sub_100009FAC(&qword_100574E78, &qword_100574E70);
    sub_1000179F8();
    Publisher.receive<A>(on:options:)();
    sub_100009104(v5, &qword_100575C10);

    v18 = sub_100009FAC(&qword_100574E80, &qword_100574E60);
    Publisher.emitPageRenderResourceEvents(using:onScreen:)();
    (*(v22 + 8))(v9, v6);
    swift_allocObject();
    swift_weakInit();
    v24 = v6;
    v25 = v18;
    swift_getOpaqueTypeConformance2();
    v19 = v21;
    Publisher<>.sink(receiveValue:)();

    (*(v23 + 8))(v14, v19);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1001AFF90(void *a1)
{
  v3 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v3 - 8);
  v5 = v30 - v4;
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - v7;
  v9 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  v15 = type metadata accessor for ModernShelf.ItemPresentation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v30 - v20;
  sub_1001B2118(a1, &v33);
  if (!*(&v34 + 1))
  {
    return sub_100009104(&v33, &qword_100574E30);
  }

  v31 = v5;
  v32 = v1;
  sub_1000109E4(&v33, v36);
  LOBYTE(v33) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  if (qword_100572720 != -1)
  {
    swift_once();
  }

  v30[1] = xmmword_100574BC8;
  v22 = type metadata accessor for Header();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  (*(v16 + 16))(v18, v21, v15);
  sub_100168088(&qword_1005748D8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100400790;
  sub_100004428(v36, v23 + 32);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  v25 = type metadata accessor for ImpressionMetrics();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);

  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  (*(v16 + 8))(v21, v15);
  sub_100004590(v36);
  v26 = type metadata accessor for ModernShelf();
  (*(*(v26 - 8) + 56))(v14, 0, 1, v26);
  v27 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf;
  v28 = v32;
  swift_beginAccess();
  sub_1001B89CC(v14, v28 + v27);
  return swift_endAccess();
}

uint64_t sub_1001B0448(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageContent();
  __chkstk_darwin(v8 - 8);
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001B2B60(a1);
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    swift_getObjectType();
    if (qword_100572738 != -1)
    {
      swift_once();
    }

    v12 = sub_100168088(&qword_100574E10);
    sub_1001825CC(v12, qword_100574BF8);
    Preferences.subscript.getter();
    if (LOBYTE(v27[0]) != 2 && (v27[0] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  [a1 storeTrackId];
  v13 = AdamID.init(rawValue:)();
  if (AdamID.isEmpty.getter())
  {
LABEL_7:
    *(v1 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = v11;

    sub_1001B08D0(v10);
    return CurrentValueSubject.value.setter();
  }

  else
  {
    v15 = [a1 podcast];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 channel];

      if (v17)
      {
        [v17 subscriptionActive];
      }
    }

    *v7 = 1;
    v18 = enum case for PageRenderActivity.resourceFetchStarted(_:);
    v19 = type metadata accessor for PageRenderActivity();
    (*(*(v19 - 8) + 104))(v7, v18, v19);
    (*(v5 + 104))(v7, enum case for PageRenderEvent.activity(_:), v4);
    PassthroughSubject.send(_:)();
    (*(v5 + 8))(v7, v4);
    sub_1000044A0((v2 + 184), *(v2 + 208));
    dispatch thunk of StoreDataProvider.fetchEpisodePageFooter(for:isSubscribed:)();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v11;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v22;
    v23[4] = v11;
    v24 = sub_100009F1C(0, &qword_1005729D0);

    v25 = static OS_dispatch_queue.main.getter();
    v27[3] = v24;
    v27[4] = &protocol witness table for OS_dispatch_queue;
    v27[0] = v25;
    Promise.then(perform:orCatchError:on:)();

    sub_100004590(v27);
  }
}

uint64_t sub_1001B08D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = type metadata accessor for PageMetrics();
  v92 = *(v3 - 8);
  __chkstk_darwin(v3);
  v91 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for PageID();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v90 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ModernPage();
  __chkstk_darwin(v6 - 8);
  v89 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v8 - 8);
  v84 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = &v76 - v11;
  __chkstk_darwin(v12);
  v14 = &v76 - v13;
  __chkstk_darwin(v15);
  v17 = &v76 - v16;
  v18 = type metadata accessor for ModernShelf();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v86 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v85 = &v76 - v22;
  __chkstk_darwin(v23);
  v83 = &v76 - v24;
  __chkstk_darwin(v25);
  v81 = &v76 - v26;
  __chkstk_darwin(v27);
  v80 = &v76 - v28;
  __chkstk_darwin(v29);
  v79 = &v76 - v30;
  __chkstk_darwin(v31);
  v33 = &v76 - v32;
  __chkstk_darwin(v34);
  v36 = &v76 - v35;
  v97 = _swiftEmptyArrayStorage;
  v37 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
  swift_beginAccess();
  sub_100010430(v2 + v37, v17, &qword_100578DE0);
  v96 = *(v19 + 48);
  v38 = v96(v17, 1, v18);
  v95 = v19;
  v94 = v19 + 48;
  if (v38 == 1)
  {
    sub_100009104(v17, &qword_100578DE0);
    v39 = _swiftEmptyArrayStorage;
    v40 = v3;
  }

  else
  {
    v78 = v3;
    v77 = *(v19 + 32);
    v77(v36, v17, v18);
    (*(v19 + 16))(v33, v36, v18);
    v39 = sub_100243668(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = *(v39 + 2);
    v41 = *(v39 + 3);
    if (v42 >= v41 >> 1)
    {
      v39 = sub_100243668(v41 > 1, v42 + 1, 1, v39);
    }

    v43 = v95 + 8;
    (*(v95 + 8))(v36, v18);
    *(v39 + 2) = v42 + 1;
    v77(&v39[((*(v43 + 72) + 32) & ~*(v43 + 72)) + *(v43 + 64) * v42], v33, v18);
    v97 = v39;
    v40 = v78;
  }

  v44 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
  swift_beginAccess();
  sub_100010430(v2 + v44, v14, &qword_100578DE0);
  v45 = v96(v14, 1, v18);
  v46 = v84;
  if (v45 == 1)
  {
    sub_100009104(v14, &qword_100578DE0);
  }

  else
  {
    v47 = *(v95 + 32);
    v48 = v79;
    v49 = v14;
    v50 = v95;
    v47(v79, v49, v18);
    (*(v50 + 16))(v80, v48, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_100243668(0, *(v39 + 2) + 1, 1, v39);
    }

    v52 = *(v39 + 2);
    v51 = *(v39 + 3);
    if (v52 >= v51 >> 1)
    {
      v39 = sub_100243668(v51 > 1, v52 + 1, 1, v39);
    }

    (*(v50 + 8))(v79, v18);
    *(v39 + 2) = v52 + 1;
    v47(&v39[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52], v80, v18);
    v97 = v39;
  }

  v53 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf;
  swift_beginAccess();
  v54 = v2 + v53;
  v55 = v82;
  sub_100010430(v54, v82, &qword_100578DE0);
  if (v96(v55, 1, v18) == 1)
  {
    sub_100009104(v55, &qword_100578DE0);
  }

  else
  {
    v56 = v95;
    v57 = *(v95 + 32);
    v58 = v81;
    v57(v81, v55, v18);
    (*(v56 + 16))(v83, v58, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_100243668(0, *(v39 + 2) + 1, 1, v39);
    }

    v60 = *(v39 + 2);
    v59 = *(v39 + 3);
    if (v60 >= v59 >> 1)
    {
      v39 = sub_100243668(v59 > 1, v60 + 1, 1, v39);
    }

    (*(v56 + 8))(v81, v18);
    *(v39 + 2) = v60 + 1;
    v57(&v39[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v60], v83, v18);
    v97 = v39;
  }

  v61 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf;
  swift_beginAccess();
  sub_100010430(v2 + v61, v46, &qword_100578DE0);
  if (v96(v46, 1, v18) == 1)
  {
    sub_100009104(v46, &qword_100578DE0);
  }

  else
  {
    v62 = v95;
    v63 = *(v95 + 32);
    v64 = v85;
    v63(v85, v46, v18);
    (*(v62 + 16))(v86, v64, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_100243668(0, *(v39 + 2) + 1, 1, v39);
    }

    v66 = *(v39 + 2);
    v65 = *(v39 + 3);
    if (v66 >= v65 >> 1)
    {
      v39 = sub_100243668(v65 > 1, v66 + 1, 1, v39);
    }

    (*(v62 + 8))(v85, v18);
    *(v39 + 2) = v66 + 1;
    v63(&v39[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v66], v86, v18);
    v97 = v39;
  }

  sub_1001C3D60(v67);
  v68 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  swift_beginAccess();
  (*(v87 + 16))(v90, v2 + v68, v88);
  v69 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  swift_beginAccess();
  (*(v92 + 16))(v91, v2 + v69, v40);
  v70 = v89;
  ModernPage.init(id:pageMetrics:shelves:)();
  v71 = *(sub_100168088(&qword_100574E08) + 48);
  v72 = v70;
  v73 = v93;
  sub_1001B8B68(v72, v93, &type metadata accessor for ModernPage);
  v74 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  swift_beginAccess();
  *(v73 + v71) = *(v2 + v74);
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B1478(void *a1)
{
  if (!*(v1 + 40))
  {
    type metadata accessor for Episode();
    v5 = a1;
    if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
    {
      goto LABEL_3;
    }

    return 0;
  }

  type metadata accessor for StationEpisode();
  v3 = a1;

  if (!StationEpisode.__allocating_init(from:stationUuid:)())
  {
    return 0;
  }

LABEL_3:

  v4 = dispatch thunk of Episode.playableLockupForEpisodeDetails.getter();

  return v4;
}

uint64_t sub_1001B153C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = objc_opt_self();

  if ([v9 isMainThread])
  {
    sub_1001B18E0();
  }

  else
  {
    sub_100009F1C(0, &qword_1005729D0);
    v16 = static OS_dispatch_queue.main.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1001B8B60;
    *(v10 + 24) = v8;
    aBlock[4] = sub_10002D7F8;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E2870;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001B8618(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0);
    v14 = v4;
    sub_100009FAC(&qword_10057D390, &unk_100575CD0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v12 = v15;
    v11 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v14);
  }
}

uint64_t sub_1001B18E0()
{
  v0 = type metadata accessor for PageContent();
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) = 1;
    v7 = result;
    v8 = type metadata accessor for ModernShelf();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
    swift_beginAccess();
    sub_1001B8AB4(v5, v7 + v9);
    swift_endAccess();
    sub_1001B08D0(v2);
    CurrentValueSubject.value.setter();
    sub_100009104(v5, &qword_100578DE0);
  }

  return result;
}

uint64_t sub_1001B1A88(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  v11 = type metadata accessor for ModernShelf();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_100010430(a1, v10, &qword_100578DE0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100009104(v10, &qword_100578DE0);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if ((*(v16 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) & 1) == 0)
      {
        (*(v12 + 16))(v7, v14, v11);
        (*(v12 + 56))(v7, 0, 1, v11);
        v18 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
        swift_beginAccess();
        sub_1001B8AB4(v7, v16 + v18);
        swift_endAccess();
        sub_1001B08D0(v4);
        CurrentValueSubject.value.setter();
        sub_100009104(v7, &qword_100578DE0);
        (*(v12 + 8))(v14, v11);
      }

      (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 56))(v7, 1, 1, v11);
    v17 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
    swift_beginAccess();
    sub_1001B8AB4(v7, v16 + v17);
    swift_endAccess();
    sub_1001B08D0(v4);
    CurrentValueSubject.value.setter();
    sub_100009104(v7, &qword_100578DE0);
  }

  return result;
}

uint64_t sub_1001B1E18(uint64_t a1)
{
  v2 = type metadata accessor for PageContent();
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for ModernShelf();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v9 + 16);
  v13(v12, a1, v8, v10);
  ModernShelf.metricsName.setter();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v15 = Strong;
  (v13)(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf;
  swift_beginAccess();
  sub_1001B8AB4(v7, v15 + v16);
  swift_endAccess();
  sub_1001B08D0(v4);
  CurrentValueSubject.value.setter();
  sub_100009104(v7, &qword_100578DE0);
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_1001B20B4()
{
  ShelfIDBuilder.init(named:)();
  v0 = ShelfIDBuilder.build()();

  xmmword_100574BC8 = v0;
  return result;
}

double sub_1001B2118@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v3 - 8);
  v67 = &v64 - v4;
  v5 = sub_100168088(&qword_100574E40);
  __chkstk_darwin(v5 - 8);
  v66 = (&v64 - v6);
  v7 = type metadata accessor for EpisodeTextInfoContext();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v69 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpisodeTextInfoDetail();
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for LibraryEpisodeContextItem();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75 - 8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  __chkstk_darwin(v22);
  v24 = &v64 - v23;
  __chkstk_darwin(v25);
  v27 = &v64 - v26;
  sub_100009F1C(0, &qword_100574E48);
  v28 = [swift_getObjCClassFromMetadata() sharedInstance];
  v29 = [v28 descriptionForEpisode:a1 options:48];

  v30 = [a1 storeTrackId];
  v79 = v12;
  v80 = v27;
  if (!v30)
  {
    v37 = type metadata accessor for URL();
    (*(*(v37 - 8) + 56))(v27, 1, 1, v37);
    goto LABEL_12;
  }

  [a1 storeTrackId];
  v31 = AdamID.init(rawValue:)();
  v32 = [a1 podcast];
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v35 = [v32 shareURL];

    v65 = a1;
    if (v35)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 56))(v18, 0, 1, v36);
    }

    else
    {
      v36 = type metadata accessor for URL();
      (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
    }

    sub_1001B8A3C(v18, v21);
    type metadata accessor for URL();
    v38 = *(v36 - 8);
    if ((*(v38 + 48))(v21, 1, v36) != 1)
    {
      sub_100168088(&qword_100574E58);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_100400790;
      v81 = v33;
      sub_1000366D8();
      BinaryInteger.description.getter();
      v12 = v79;
      URLQueryItem.init(name:value:)();

      URL.appending(queryItems:)();

      (*(v38 + 8))(v21, v36);
      (*(v38 + 56))(v24, 0, 1, v36);
      v27 = v80;
      a1 = v65;
      goto LABEL_11;
    }

    sub_100009104(v21, &qword_100574040);
    v27 = v80;
    a1 = v65;
  }

  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 56))(v24, 1, 1, v39);
LABEL_11:
  sub_1001B8A3C(v24, v27);
LABEL_12:
  v40 = [a1 itemDescription];
  if (v40)
  {
    v41 = v40;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v42 = [a1 itemDescriptionWithoutHTML];
  if (v42)
  {
    v43 = v42;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [a1 itemDescriptionHasHTML];
  v44 = a1;
  sub_100010430(v80, v15, &qword_100574040);
  v68 = v29;
  LibraryEpisodeContextItem.init(summary:cachedDescription:description:descriptionWithoutHTML:descriptionHasHTML:episodeShareURL:)();
  sub_1000044A0((v72 + 88), *(v72 + 112));
  v45 = v74;
  v46 = v75;
  v47 = v69;
  (*(v74 + 16))(v69, v12, v75);
  v48 = v70;
  v49 = v71;
  (*(v70 + 104))(v47, enum case for EpisodeTextInfoContext.library(_:), v71);
  v50 = v73;
  dispatch thunk of EpisodeTextInfoProviderProtocol.textInfoDetailForContext(_:)();
  (*(v48 + 8))(v47, v49);
  v51 = EpisodeTextInfoDetail.notes.getter();
  if (v51)
  {
    v52 = v51;
    v53 = v50;
    v54 = v66;
    *v66 = v44;
    v55 = type metadata accessor for ShareSheetContentSource();
    swift_storeEnumTagMultiPayload();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v56 = type metadata accessor for ImpressionMetrics();
    (*(*(v56 - 8) + 56))(v67, 1, 1, v56);
    v57 = type metadata accessor for Paragraph();
    swift_allocObject();
    v58 = v52;
    v59 = v44;
    v60 = Paragraph.init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)();
    v61 = v78;
    v78[3] = v57;
    v61[4] = sub_1001B8618(&qword_100574E50, &type metadata accessor for Paragraph);

    *v61 = v60;
    (*(v76 + 8))(v53, v77);
    (*(v45 + 8))(v79, v46);
    sub_100009104(v80, &qword_100574040);
  }

  else
  {

    (*(v76 + 8))(v50, v77);
    (*(v45 + 8))(v79, v46);
    sub_100009104(v80, &qword_100574040);
    result = 0.0;
    v63 = v78;
    *v78 = 0u;
    *(v63 + 1) = 0u;
    v63[4] = 0;
  }

  return result;
}

char *sub_1001B2B60(void *a1)
{
  v3 = sub_100168088(&qword_100578DE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for ModernShelf();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  type metadata accessor for RestrictionsController();
  if (static RestrictionsController.isExplicitContentAllowed.getter() & 1) == 0 && ([a1 isExplicit])
  {
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_6:
    sub_100009104(v5, &qword_100578DE0);
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  if ([a1 isEntitled])
  {
    sub_1001B5E38(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001B7530(v5);
    (*(v7 + 56))(v5, 0, 1, v6);
  }

  v24 = a1;
  v25 = v1;
  v26 = v9;
  v17 = *(v7 + 32);
  v17(v15, v5, v6);
  (*(v7 + 16))(v12, v15, v6);
  v16 = sub_100243668(0, 1, 1, _swiftEmptyArrayStorage);
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_100243668(v18 > 1, v19 + 1, 1, v16);
  }

  (*(v7 + 8))(v15, v6);
  *(v16 + 2) = v19 + 1;
  v17(&v16[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19], v12, v6);
  v9 = v26;
  a1 = v24;
LABEL_11:
  sub_1001B3660(a1, v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_100243668(0, *(v16 + 2) + 1, 1, v16);
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_100243668(v20 > 1, v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  (*(v7 + 32))(&v16[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v21], v9, v6);
  return v16;
}

uint64_t sub_1001B2F2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PageContent();
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageRenderEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    static PageRenderContentTypes.resource.getter();
    v15 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
    swift_beginAccess();
    *(v14 + v15) = PageRenderContentTypes.init(rawValue:)();
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *v11 = 1;
    v16 = enum case for PageRenderActivity.resourceFetchCompleted(_:);
    v17 = type metadata accessor for PageRenderActivity();
    (*(*(v17 - 8) + 104))(v11, v16, v17);
    (*(v9 + 104))(v11, enum case for PageRenderEvent.activity(_:), v8);
    PassthroughSubject.send(_:)();

    (*(v9 + 8))(v11, v8);
  }

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = Array<A>.mapToModernShelves()();
    goto LABEL_12;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = a3;

LABEL_12:

  sub_1001B08D0(v7);
  CurrentValueSubject.value.setter();
}

uint64_t sub_1001B324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v6 = type metadata accessor for PageContent();
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageRenderEvent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Logger();
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.js.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a4;
    v18 = v17;
    v29 = v17;
    v30 = swift_slowAlloc();
    v37[0] = v30;
    *v18 = 136315138;
    v36 = v32;
    sub_10019BAC4();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v8;
    v22 = sub_1000153E0(v19, v20, v37);

    v23 = v29;
    *(v29 + 4) = v22;
    v8 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch episode page footer content for %s.", v23, 0xCu);
    sub_100004590(v30);

    a4 = v31;
  }

  (*(v34 + 8))(v14, v35);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v24 = v33;
    *v33 = a1;
    *(v24 + 8) = 1;
    v25 = enum case for PageRenderActivity.resourceFetchFailed(_:);
    v26 = type metadata accessor for PageRenderActivity();
    (*(*(v26 - 8) + 104))(v24, v25, v26);
    (*(v10 + 104))(v24, enum case for PageRenderEvent.activity(_:), v9);
    swift_errorRetain();
    PassthroughSubject.send(_:)();

    (*(v10 + 8))(v24, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = a4;

    sub_1001B08D0(v8);
    CurrentValueSubject.value.setter();
  }

  return result;
}

uint64_t sub_1001B3660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v30 = a2;
  v2 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v2 - 8);
  v29 = &v26 - v3;
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v28 = &v26 - v5;
  v6 = type metadata accessor for ModernShelf.ItemPresentation();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v16 - 8);
  v17 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v18._object = 0x8000000100466C80;
  v18._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v34);

  if (qword_100572728 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for ActionMenu();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = type metadata accessor for Header.PrimaryAction();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = type metadata accessor for ArtworkModel();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  LOBYTE(v31) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  sub_1001B3BE8(v27);
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  v24 = type metadata accessor for ImpressionMetrics();
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
  return ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
}

uint64_t sub_1001B3B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void **a5)
{
  ShelfIDBuilder.init(named:)();
  v7 = ShelfIDBuilder.build()();

  *a4 = v7._countAndFlagsBits;
  *a5 = v7._object;
  return result;
}

void *sub_1001B3BE8(void *a1)
{
  sub_1001B40B0(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    v2 = sub_100243520(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100243520((v3 > 1), v4 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v4 + 1;
    sub_1000109E4(&v16, &v2[5 * v4 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
    v2 = _swiftEmptyArrayStorage;
  }

  sub_1001B4A9C(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v6 = v2[2];
    v5 = v2[3];
    if (v6 >= v5 >> 1)
    {
      v2 = sub_100243520((v5 > 1), v6 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v6 + 1;
    sub_1000109E4(&v16, &v2[5 * v6 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
  }

  sub_1001B5424(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = sub_100243520((v7 > 1), v8 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v8 + 1;
    sub_1000109E4(&v16, &v2[5 * v8 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
  }

  sub_1001B56F8(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100243520((v9 > 1), v10 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v10 + 1;
    sub_1000109E4(&v16, &v2[5 * v10 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
  }

  sub_1001B5960(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v12 = v2[2];
    v11 = v2[3];
    if (v12 >= v11 >> 1)
    {
      v2 = sub_100243520((v11 > 1), v12 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v12 + 1;
    sub_1000109E4(&v16, &v2[5 * v12 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
  }

  sub_1001B5B98(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v14 = v2[2];
    v13 = v2[3];
    if (v14 >= v13 >> 1)
    {
      v2 = sub_100243520((v13 > 1), v14 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v14 + 1;
    sub_1000109E4(&v16, &v2[5 * v14 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30);
  }

  return v2;
}

void sub_1001B40B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v4 - 8);
  v61 = v46 - v5;
  v56 = type metadata accessor for FlowPresentationContext();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v58 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v10 = v46 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v57 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowDestinationPageHeader();
  v54 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin(v15).n128_u64[0];
  v59 = (v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [a1 podcast];
  if (!v19)
  {
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 title];

  if (!v21)
  {
    goto LABEL_11;
  }

  v49 = v10;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  v50 = v22;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {

LABEL_11:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v51 = v24;
  v26 = [objc_opt_self() mainBundle];
  v72._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0x5449545F574F4853;
  v27._object = 0xEA0000000000454CLL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v72);
  countAndFlagsBits = v29._countAndFlagsBits;
  object = v29._object;

  v30 = [a1 podcast];
  if (!v30)
  {
LABEL_13:

    goto LABEL_14;
  }

  v31 = v30;
  type metadata accessor for PodcastDetail();
  v32 = v31;
  v33 = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  if (!v33)
  {

    goto LABEL_13;
  }

  v34 = v33;

  v35 = Podcast.adamId.getter();
  v37 = v36;

  if (v37)
  {

    goto LABEL_13;
  }

  v47 = v32;
  v48 = "ts.information.channel-name";
  *v59 = v34;
  (*(v16 + 104))();
  (*(v54 + 104))(v60, enum case for FlowDestinationPageHeader.uber(_:), v13);
  *&v65 = v35;
  sub_1000366D8();
  v54 = v34;

  v46[1] = BinaryInteger.description.getter();
  static MetricsTargetType.button.getter();
  v39 = type metadata accessor for URL();
  v40 = v49;
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_10057DC50);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static MetricsActionType.navigate.getter();
  static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
  v71 = v65;
  sub_100009104(&v71, &unk_100574650);
  v70 = v66;
  sub_100009104(&v70, &unk_100573A90);
  v69 = v67;
  sub_100009104(&v69, &unk_100574660);
  sub_100037470(v68);
  sub_100009104(v40, &qword_100574040);
  (*(v55 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v56);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v42 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v42;
  v43 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v43;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v42)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v43)
  {
    Link.Presentation.init(rawValue:)();
  }

  v44 = v47;
  type metadata accessor for FlowAction();
  swift_allocObject();
  v45 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  if (v45)
  {
    *(&v63 + 1) = type metadata accessor for Action();
    v64 = sub_1001B8618(&qword_100578430, &type metadata accessor for Action);
    *&v62 = v45;
    goto LABEL_15;
  }

LABEL_14:
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
LABEL_15:
  v38 = type metadata accessor for ImpressionMetrics();
  (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
  *(a2 + 24) = type metadata accessor for Information();
  *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
  sub_10000E680(a2);
  Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
}

double sub_1001B4A9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v4 - 8);
  v54 = v44 - v5;
  v52 = type metadata accessor for FlowPresentationContext();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v10 = v44 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowDestinationPageHeader();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v55 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FlowDestination();
  v17 = *(v16 - 8);
  *&v18 = __chkstk_darwin(v16).n128_u64[0];
  v20 = (v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = [a1 podcast];
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v21 channel];

  if (!v23)
  {
    goto LABEL_14;
  }

  if (![v23 isMultiShow] || (v24 = objc_msgSend(v23, "name")) == 0)
  {

LABEL_14:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v48 = v10;
  v50 = v20;
  v25 = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  v49 = v26;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_14;
  }

  v30 = [objc_opt_self() mainBundle];
  v67._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0x5F4C454E4E414843;
  v31._object = 0xED0000454C544954;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v67._countAndFlagsBits = 0;
  v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v67);
  countAndFlagsBits = v33._countAndFlagsBits;
  object = v33._object;

  type metadata accessor for ChannelDetail();
  v45 = v23;
  v34 = ChannelDetail.__allocating_init(from:)();
  *v50 = v34;
  (*(v17 + 104))();
  (*(v14 + 104))(v55, enum case for FlowDestinationPageHeader.uber(_:), v13);

  v44[3] = v34;
  *&v60 = ChannelDetail.adamId.getter();
  sub_1000366D8();
  v44[2] = BinaryInteger.description.getter();
  v44[1] = static MetricsTargetType.link.getter();
  v35 = type metadata accessor for URL();
  v36 = v48;
  (*(*(v35 - 8) + 56))(v48, 1, 1, v35);
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_10057DC50);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static MetricsActionType.navigate.getter();
  static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
  v66 = v60;
  sub_100009104(&v66, &unk_100574650);
  v65 = v61;
  sub_100009104(&v65, &unk_100573A90);
  v64 = v62;
  sub_100009104(&v64, &unk_100574660);
  sub_100037470(v63);
  sub_100009104(v36, &qword_100574040);
  (*(v51 + 104))(v53, enum case for FlowPresentationContext.infer(_:), v52);
  sub_100168088(&qword_1005742B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v38 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v38;
  v39 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v39;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v38)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v39)
  {
    Link.Presentation.init(rawValue:)();
  }

  v40 = type metadata accessor for FlowAction();
  swift_allocObject();
  v41 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  v58 = v40;
  v59 = sub_1001B8618(&unk_10057A0D0, &type metadata accessor for FlowAction);
  v57 = v41;
  v42 = type metadata accessor for ImpressionMetrics();
  (*(*(v42 - 8) + 56))(v54, 1, 1, v42);
  *(a2 + 24) = type metadata accessor for Information();
  *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
  sub_10000E680(a2);
  Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();

  return result;
}

uint64_t sub_1001B5424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 pubDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  v12 = Date.verboseDisplayString()();
  (*(v8 + 8))(v11, v7);
  v13 = (v12._object >> 56) & 0xF;
  if ((v12._object & 0x2000000000000000) == 0)
  {
    v13 = v12._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = [objc_opt_self() mainBundle];
    v21._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x454853494C425550;
    v15._object = 0xEF454C5449545F44;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

    v17 = type metadata accessor for ImpressionMetrics();
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
    sub_10000E680(a2);
    return Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double sub_1001B56F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v19 - v6;
  [a1 duration];
  v8 = static Localization.duration(_:)();
  if (v9)
  {
    *&v19[0] = v8;
    *(&v19[0] + 1) = v9;
    sub_10019FA64();
    v10 = StringProtocol.localizedLowercase.getter();
    v12 = v11;

    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = [objc_opt_self() mainBundle];
      v21._object = 0xE000000000000000;
      v15._countAndFlagsBits = 0x545F4854474E454CLL;
      v15._object = 0xEC000000454C5449;
      v16._countAndFlagsBits = 0;
      v16._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

      v17 = type metadata accessor for ImpressionMetrics();
      memset(v19, 0, sizeof(v19));
      v20 = 0;
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
      *(a2 + 24) = type metadata accessor for Information();
      *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
      sub_10000E680(a2);
      Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_1001B5960@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v15 - v6;
  v8 = [a1 seasonNumber];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x545F4E4F53414553;
    v11._object = 0xEC000000454C5449;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v17);

    *&v15[0] = v9;
    dispatch thunk of CustomStringConvertible.description.getter();
    v13 = type metadata accessor for ImpressionMetrics();
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
    sub_10000E680(a2);
    Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1001B5B98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574038);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = v15 - v6;
  v8 = [a1 episodeNumber];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() mainBundle];
    v17._object = 0xE000000000000000;
    v11._countAndFlagsBits = 0x5F45444F53495045;
    v11._object = 0xED0000454C544954;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v17);

    *&v15[0] = v9;
    dispatch thunk of CustomStringConvertible.description.getter();
    v13 = type metadata accessor for ImpressionMetrics();
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information);
    sub_10000E680(a2);
    Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001B5DD4()
{
  ShelfIDBuilder.init(named:)();
  v0 = ShelfIDBuilder.build()();

  xmmword_100574BE8 = v0;
  return result;
}

uint64_t sub_1001B5E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v4 - 8);
  v144 = &v122 - v5;
  v6 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v6 - 8);
  v141 = (&v122 - v7);
  v8 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v8 - 8);
  v140 = &v122 - v9;
  v10 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v10 - 8);
  v12 = &v122 - v11;
  v13 = type metadata accessor for ModernShelf.ItemPresentation();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v145 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v146 = &v122 - v17;
  v18 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v18 - 8);
  v155 = &v122 - v19;
  v143 = type metadata accessor for TranscriptSnippet();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v156 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for FlowDestinationPageHeader();
  object = *(v137 - 8);
  __chkstk_darwin(v137);
  v138 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for FlowPresentationContext();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v135 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v23 - 8);
  v131 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v25 - 8);
  v154 = &v122 - v26;
  v27 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v27 - 8);
  v134 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100168088(&qword_100574E18);
  __chkstk_darwin(v29 - 8);
  v31 = &v122 - v30;
  v32 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v32 - 8);
  *&v130 = type metadata accessor for FlowDestination();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v150 = (&v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = type metadata accessor for TranscriptRequestInformation();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v35 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v151 = &v122 - v37;
  v38 = sub_100168088(&qword_100574E20);
  __chkstk_darwin(v38 - 8);
  v128 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v139 = &v122 - v41;
  __chkstk_darwin(v42);
  v44 = &v122 - v43;
  *&v46 = __chkstk_darwin(v45).n128_u64[0];
  v48 = &v122 - v47;
  v49 = [a1 transcriptIdentifier];
  if (v49)
  {
    v125 = v12;
    v126 = v14;
    v149 = v13;
    v127 = a2;
    v50 = v49;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v147 = v51;

    [a1 storeTrackId];
    v52 = AdamID.init(rawValue:)();
    v53 = [a1 transcriptProvider];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v157 = v48;
    MetadataSource.init(rawValue:)();
    *&v161 = v52;
    sub_1000366D8();
    v54 = BinaryInteger.description.getter();
    v56 = [a1 title];
    if (v56)
    {
      v57 = v56;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v61 = [a1 podcast];
    v124 = a1;
    if (v61)
    {
      v62 = v61;
      v63 = [v61 title];

      if (v63)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    sub_100010430(v157, v44, &qword_100574E20);

    v64 = v151;
    TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)();
    (*(v152 + 16))(v35, v64, v153);
    static PageMetrics.notInstrumented.getter();
    v65 = type metadata accessor for EpisodeOffer();
    (*(*(v65 - 8) + 56))(v31, 1, 1, v65);
    type metadata accessor for TranscriptDetail();
    swift_allocObject();
    v66 = TranscriptDetail.init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)();
    v67 = v150;
    *v150 = v66;
    (*(v129 + 104))(v67, enum case for FlowDestination.episodeDetailTranscript(_:), v130);
    static MetricsTargetID.viewTranscript.getter();
    static MetricsTargetType.button.getter();
    v68 = type metadata accessor for URL();
    v69 = *(v68 - 8);
    v70 = *(v69 + 56);
    v71 = v154;
    v129 = v68;
    v123 = v70;
    v122 = v69 + 56;
    (v70)(v154, 1, 1);
    static MetricsDataConfiguration.default.getter();
    sub_100168088(&unk_10057DC50);
    type metadata accessor for MetricsData();
    v72 = swift_allocObject();
    v130 = xmmword_100400790;
    *(v72 + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    v167 = v161;
    sub_100009104(&v167, &unk_100574650);
    v166 = v162;
    sub_100009104(&v166, &unk_100573A90);
    v165 = v163;
    sub_100009104(&v165, &unk_100574660);
    sub_100037470(v164);
    sub_100009104(v71, &qword_100574040);
    (*(v132 + 104))(v135, enum case for FlowPresentationContext.infer(_:), v133);
    sub_100168088(&qword_1005742B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v74 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v74;
    v75 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v75;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v74)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v76 = Link.Presentation.init(rawValue:)();
    v77 = v124;
    if (v76 != v75)
    {
      Link.Presentation.init(rawValue:)();
    }

    object[13](v138, enum case for FlowDestinationPageHeader.standard(_:), v137);
    v78 = type metadata accessor for FlowAction();
    swift_allocObject();
    v79 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    v80 = [v77 transcriptSnippet];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v159 + 1) = v78;
    v160 = sub_1001B8618(&unk_10057A0D0, &type metadata accessor for FlowAction);
    *&v158 = v79;
    v81 = type metadata accessor for ImpressionMetrics();
    v82 = *(v81 - 8);
    v83 = *(v82 + 56);
    v150 = v81;
    v138 = v83;
    v137 = v82 + 56;
    (v83)(v155, 1, 1);
    v84 = v79;

    TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)();
    v85 = objc_opt_self();
    v86 = [v85 mainBundle];
    v169._object = 0xE000000000000000;
    v87._countAndFlagsBits = 0x495243534E415254;
    v87._object = 0xEA00000000005450;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v169._countAndFlagsBits = 0;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v169);
    countAndFlagsBits = v89._countAndFlagsBits;
    object = v89._object;

    v90 = v139;
    sub_100010430(v157, v139, &qword_100574E20);
    v91 = type metadata accessor for MetadataSource();
    v92 = *(v91 - 8);
    if ((*(v92 + 48))(v90, 1, v91) != 1)
    {
      v93 = v128;
      sub_100010430(v90, v128, &qword_100574E20);
      if ((*(v92 + 88))(v93, v91) == enum case for MetadataSource.provider(_:))
      {
        v94 = [v77 podcast];
        if (v94)
        {
          v95 = v94;
          v96 = [v94 title];

          if (v96)
          {
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100 = [v85 mainBundle];
            v170._object = 0xE000000000000000;
            v101._object = 0x8000000100466C40;
            v101._countAndFlagsBits = 0xD000000000000015;
            v102._countAndFlagsBits = 0;
            v102._object = 0xE000000000000000;
            v170._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v101, 0, v100, v102, v170);

            sub_100168088(&unk_100574670);
            v103 = swift_allocObject();
            *(v103 + 16) = v130;
            *(v103 + 56) = &type metadata for String;
            *(v103 + 64) = sub_100022C18();
            *(v103 + 32) = v97;
            *(v103 + 40) = v99;
            static String.localizedStringWithFormat(_:_:)();
          }
        }

        goto LABEL_21;
      }

      (*(v92 + 8))(v93, v91);
    }

    v104 = [v85 mainBundle];
    v171._object = 0xE000000000000000;
    v105._countAndFlagsBits = 0xD000000000000017;
    v105._object = 0x8000000100466C20;
    v106._countAndFlagsBits = 0;
    v106._object = 0xE000000000000000;
    v171._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v105, 0, v104, v106, v171);

LABEL_21:
    sub_100009104(v90, &qword_100574E20);
    LOBYTE(v158) = 1;
    v107 = v146;
    ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
    if (qword_100572730 != -1)
    {
      swift_once();
    }

    v139 = *(&xmmword_100574BE8 + 1);
    v147 = xmmword_100574BE8;
    v108 = type metadata accessor for ActionMenu();
    (*(*(v108 - 8) + 56))(v140, 1, 1, v108);
    v109 = v141;
    *v141 = v84;
    v135 = v84;
    v110 = enum case for Header.PrimaryAction.seeAll(_:);
    v111 = type metadata accessor for Header.PrimaryAction();
    v112 = *(v111 - 8);
    (*(v112 + 104))(v109, v110, v111);
    (*(v112 + 56))(v109, 0, 1, v111);
    v113 = type metadata accessor for ArtworkModel();
    (*(*(v113 - 8) + 56))(v144, 1, 1, v113);

    Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
    v114 = v126;
    (*(v126 + 16))(v145, v107, v149);
    sub_100168088(&qword_1005748D8);
    v115 = swift_allocObject();
    *(v115 + 16) = v130;
    v116 = v143;
    *(v115 + 56) = v143;
    *(v115 + 64) = sub_1001B8618(&qword_100574E28, &type metadata accessor for TranscriptSnippet);
    v117 = sub_10000E680((v115 + 32));
    v118 = v142;
    v119 = v156;
    (*(v142 + 16))(v117, v156, v116);
    v123(v154, 1, 1, v129);
    v160 = 0;
    v158 = 0u;
    v159 = 0u;
    (v138)(v155, 1, 1, v150);
    v120 = v127;
    ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();

    (*(v114 + 8))(v107, v149);
    (*(v118 + 8))(v119, v116);
    (*(v152 + 8))(v151, v153);
    sub_100009104(v157, &qword_100574E20);
    v121 = type metadata accessor for ModernShelf();
    return (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
  }

  v58 = type metadata accessor for ModernShelf();
  v59 = *(*(v58 - 8) + 56);

  return v59(a2, 1, 1, v58);
}

uint64_t sub_1001B7530@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v1 - 8);
  v54 = v48 - v2;
  v3 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v3 - 8);
  v53 = v48 - v4;
  v5 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v5 - 8);
  v51 = v48 - v6;
  v7 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v7 - 8);
  v50 = v48 - v8;
  v9 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v9 - 8);
  v11 = v48 - v10;
  v12 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v12 - 8);
  v56 = v48 - v13;
  v52 = type metadata accessor for ModernShelf.ItemPresentation();
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v48 - v17;
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v60._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0x495243534E415254;
  v21._object = 0xEA00000000005450;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v60);
  v48[2] = v23._object;
  v48[3] = v23._countAndFlagsBits;

  v24 = MTEpisode.subscriptionName.getter();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = [v19 mainBundle];
    v61._object = 0xE000000000000000;
    v29._object = 0x8000000100466E00;
    v29._countAndFlagsBits = 0xD00000000000001DLL;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v61._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v61);

    sub_100168088(&unk_100574670);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100400790;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_100022C18();
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v32 = [v19 mainBundle];
    v62._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0xD000000000000037;
    v33._object = 0x8000000100466DC0;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v62._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v62);
  }

  LOBYTE(v57) = 1;
  v35 = v18;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  if (qword_100572730 != -1)
  {
    swift_once();
  }

  v48[0] = *(&xmmword_100574BE8 + 1);
  v48[1] = xmmword_100574BE8;
  v36 = type metadata accessor for ActionMenu();
  (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
  v37 = type metadata accessor for Header.PrimaryAction();
  (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
  v38 = type metadata accessor for ArtworkModel();
  (*(*(v38 - 8) + 56))(v51, 1, 1, v38);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v39 = v49;
  v40 = v18;
  v41 = v52;
  (*(v49 + 16))(v15, v40, v52);
  sub_100168088(&qword_1005748D8);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100400790;
  v43 = type metadata accessor for ImpressionMetrics();
  v57 = 0u;
  v58 = 0u;
  v59 = 0;
  v44 = *(*(v43 - 8) + 56);
  v45 = v53;
  v44(v53, 1, 1, v43);
  *(v42 + 56) = type metadata accessor for TranscriptSnippet();
  *(v42 + 64) = sub_1001B8618(&qword_100574E28, &type metadata accessor for TranscriptSnippet);
  sub_10000E680((v42 + 32));
  TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)();
  v46 = type metadata accessor for URL();
  (*(*(v46 - 8) + 56))(v54, 1, 1, v46);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v44(v45, 1, 1, v43);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v39 + 8))(v35, v41);
}

uint64_t LibraryEpisodePagePresenter.deinit()
{

  sub_100004590(v0 + 88);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100004590(v0 + 184);

  sub_1001B84E0(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage);
  v1 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  v2 = type metadata accessor for PageID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  v4 = type metadata accessor for PageMetrics();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf, &qword_100578DE0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf, &qword_100578DE0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf, &qword_100578DE0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf, &qword_100578DE0);

  return v0;
}

uint64_t LibraryEpisodePagePresenter.__deallocating_deinit()
{
  LibraryEpisodePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B82C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();
  return sub_1001B847C(v3 + v4, a1);
}

uint64_t sub_1001B8404()
{
  v0 = sub_100168088(&qword_100574E10);
  sub_100182568(v0, qword_100574BF8);
  sub_1001825CC(v0, qword_100574BF8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001B847C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext.Page();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B84E0(uint64_t a1)
{
  v2 = type metadata accessor for InteractionContext.Page();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LibraryEpisodePagePresenter()
{
  result = qword_100574CA8;
  if (!qword_100574CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B8618(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001B8668()
{
  type metadata accessor for InteractionContext.Page();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PageMetrics();
      if (v2 <= 0x3F)
      {
        sub_1001B8828();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001B8828()
{
  if (!qword_100574CB8)
  {
    type metadata accessor for ModernShelf();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100574CB8);
    }
  }
}

__n128 sub_1001B8880(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001B889C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1001B88E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B8954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext.Page();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B89CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578DE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578DE0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8BD0()
{

  v1 = OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayNextEpisodeContextAction()
{
  result = qword_100574F00;
  if (!qword_100574F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B8CD8()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1001B8D9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x78654E2079616C50;
  v1._object = 0xE900000000000074;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001B8E58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001B8ED0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playEpisodeNext(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1001B8FA8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemOrangeColor];
  v3 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x78654E2079616C50;
  v4._object = 0xE900000000000074;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7);

  *a1 = v2;
  *(a1 + 8) = 0xD000000000000029;
  *(a1 + 16) = 0x8000000100466EB0;
  *(a1 + 24) = v6;
}

uint64_t sub_1001B9094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001B912C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1001B91C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001B9224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

BOOL sub_1001B9284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C3310(a1, WitnessTable);
}

uint64_t sub_1001B92D8(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575000);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B931C(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575008);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B9360(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575010);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B93A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayNextEpisodeContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlayPreviousChapterIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1001B94A0;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_1001B94A0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1001B9654;
  }

  else
  {
    v2 = sub_1001B95B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B95B4()
{
  v1 = v0[4];

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001B9654()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PlayPreviousChapterIntentImplementation.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001B9784;

  return PlaybackController.seekToPreviousChapter()();
}

uint64_t sub_1001B9784(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1001B9888()
{
  result = qword_100575018;
  if (!qword_100575018)
  {
    type metadata accessor for PlayPreviousChapterIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575018);
  }

  return result;
}

uint64_t sub_1001B98E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for PlaybackController();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_1001B9998;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_1001B9998()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001B9B54;
  }

  else
  {
    v2 = sub_1001B9AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B9AAC()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v3 - 8) + 8))(v1, v3);
  *v2 = v0[2];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001B9B54()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B9BF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001B9C88;

  return PlaybackController.seekToPreviousChapter()();
}

uint64_t sub_1001B9C88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t CarPlayAlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  v4 = type metadata accessor for Logger();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for Models.AlertAction();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[47] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[48] = v7;
  v3[49] = v6;

  return _swift_task_switch(sub_1001B9F14, v7, v6);
}

uint64_t sub_1001B9F14()
{
  v41 = v0;
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v5 = v0[37];
  v4 = v0[38];
  sub_100009F1C(0, &qword_100575020);
  v6 = *(v3 + 16);
  v6(v1, v5, v2);

  v7 = sub_1003B22A8(v1, v4);
  v0[50] = v7;
  if (v7)
  {
    v8 = sub_100009F1C(0, &qword_100575D00);
    v9 = swift_task_alloc();
    v0[51] = v9;
    *v9 = v0;
    v9[1] = sub_1001BA2E4;

    return BaseObjectGraph.inject<A>(_:)(v0 + 34, v8, v8);
  }

  else
  {
    v10 = v0[45];
    v11 = v0[43];
    v12 = v0[37];

    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v6(v10, v12, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[45];
      v16 = v0[46];
      v35 = v14;
      v18 = v0[43];
      v17 = v0[44];
      v37 = v0[40];
      v38 = v0[39];
      v39 = v0[42];
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v19 = 136315138;
      v6(v16, v15, v18);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      (*(v17 + 8))(v15, v18);
      v23 = sub_1000153E0(v20, v22, &v40);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v13, v35, "Unable to create alert template from action: %s", v19, 0xCu);
      sub_100004590(v36);

      (*(v37 + 8))(v39, v38);
    }

    else
    {
      v25 = v0[44];
      v24 = v0[45];
      v27 = v0[42];
      v26 = v0[43];
      v28 = v0[39];
      v29 = v0[40];

      (*(v25 + 8))(v24, v26);
      (*(v29 + 8))(v27, v28);
    }

    v30 = v0[36];
    v31 = enum case for ActionOutcome.unsupported(_:);
    v32 = type metadata accessor for ActionOutcome();
    (*(*(v32 - 8) + 104))(v30, v31, v32);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1001BA2E4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1001BAAC0;
  }

  else
  {
    v5 = sub_1001BA420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA420()
{
  v1 = v0[34];
  v0[53] = v1;
  v2 = [v1 presentedTemplate];
  if (v2)
  {

    v0[10] = v0;
    v0[15] = v0 + 449;
    v0[11] = sub_1001BA640;
    v3 = swift_continuation_init();
    v0[33] = sub_100168088(&qword_100575028);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1001BAE40;
    v0[29] = &unk_1004E29A0;
    v0[30] = v3;
    [v1 dismissTemplateAnimated:1 completion:v0 + 26];
    v4 = v0 + 10;
  }

  else
  {
    v5 = v0[53];
    v6 = v0[50];
    v0[2] = v0;
    v0[7] = v0 + 56;
    v0[3] = sub_1001BA8A0;
    v7 = swift_continuation_init();
    v0[25] = sub_100168088(&qword_100575028);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BAE40;
    v0[21] = &unk_1004E2978;
    v0[22] = v7;
    [v5 presentTemplate:v6 animated:1 completion:v0 + 18];
    v4 = v0 + 2;
  }

  return _swift_continuation_await(v4);
}

uint64_t sub_1001BA640()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001BAB58;
  }

  else
  {
    v5 = sub_1001BA770;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA770()
{
  v1 = v0[53];
  v2 = v0[50];
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_1001BA8A0;
  v3 = swift_continuation_init();
  v0[25] = sub_100168088(&qword_100575028);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BAE40;
  v0[21] = &unk_1004E2978;
  v0[22] = v3;
  [v1 presentTemplate:v2 animated:1 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001BA8A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001BAC04;
  }

  else
  {
    v5 = sub_1001BA9D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA9D0()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 288);

  v3 = enum case for ActionOutcome.performed(_:);
  v4 = type metadata accessor for ActionOutcome();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001BAAC0()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001BAB58()
{
  v1 = v0[53];
  v2 = v0[50];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001BAC04()
{
  v20 = v0;

  swift_willThrow();
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.carPlay.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[55];
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v0[35] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000153E0(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to present alert action: %s", v7, 0xCu);
    sub_100004590(v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[53];
  v16 = v0[50];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BAE40(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000044A0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100168088(&qword_100575C50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001BAF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001C51C;

  return CarPlayAlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_1001BAFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BB084();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_1001BB014()
{
  result = qword_100575030;
  if (!qword_100575030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575030);
  }

  return result;
}

unint64_t sub_1001BB084()
{
  result = qword_100575038;
  if (!qword_100575038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575038);
  }

  return result;
}

uint64_t sub_1001BB0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BB150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100009F1C(0, &qword_1005751F0);
  sub_100168088(&unk_100574670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  v7 = [objc_opt_self() shared];
  v8 = [v7 mainAppContext];

  v9 = [v8 objectID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100022C18();
  *(v6 + 32) = v10;
  *(v6 + 40) = v12;
  v19 = NSPredicate.init(format:_:)();
  sub_100009F1C(0, &unk_100575050);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() queryWithObjectType:ObjCClassFromMetadata predicate:v19];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    aBlock[4] = sub_1001BB52C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BB534;
    aBlock[3] = &unk_1004E2A10;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v18 setCompletion:v17];
    _Block_release(v17);
    [v3 executeQuery:v18];
  }

  else
  {
  }
}

uint64_t sub_1001BB3F8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = &_swiftEmptyArrayStorage;
    if (v5)
    {
      v10 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v7 = a1 + 32;
      do
      {
        sub_10001B944(v7, v9);
        sub_100009F1C(0, &unk_100575050);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += 32;
        --v5;
      }

      while (v5);
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  a3(v6);
}

uint64_t sub_1001BB534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1001BB5D0()
{

  return swift_deallocClassInstance();
}

void sub_1001BB608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v6 = *(type metadata accessor for DownloadJob(0) - 8);
  v7 = *(v6 + 64);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v3 + 16) newBackgroundContext];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  sub_1001BE270(a1, v8);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  sub_1001BE0FC(v8, v15 + v12, type metadata accessor for DownloadJob);
  *(v15 + v13) = v11;
  *(v15 + v14) = v9;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v21;
  v16[1] = a3;
  aBlock[4] = sub_1001BE2D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2AF0;
  v17 = _Block_copy(aBlock);

  v18 = v11;
  v19 = v9;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_1001BB854(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a4;
  v10 = *(type metadata accessor for DownloadJob(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = String._bridgeToObjectiveC()();
  v13 = [a3 episodeForUuid:v12];

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = [v13 assetURL];
  if (!v14)
  {

LABEL_5:
    v16 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

LABEL_6:
  sub_1001BE270(a2, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  sub_1001BE0FC(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19, type metadata accessor for DownloadJob);
  v23 = (v22 + v20);
  v24 = v28;
  *v23 = v27;
  v23[1] = a6;
  *(v22 + v21) = a1;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1001BE380;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2B40;
  v25 = _Block_copy(aBlock);

  v26 = v24;

  [v26 performBlock:v25];
  _Block_release(v25);
}

uint64_t sub_1001BBAC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void *a7)
{
  v57 = a4;
  v55 = a1;
  v53 = type metadata accessor for UUID();
  v11 = *(v53 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100168088(&qword_100575240);
  __chkstk_darwin();
  v15 = (&v51 - v14);
  v16 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v51 - v19;
  if (a2)
  {
    v54 = a5;

    v21 = static os_log_type_t.info.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v22 = static OS_os_log.downloads.getter();
    sub_1001BE270(a3, v20);
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58 = v24;
      *v23 = 136315138;
      sub_100010064(&qword_100575248, &type metadata accessor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1001BE660(v20);
      v28 = sub_1000153E0(v25, v27, &v58);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v21, "Download job %s is for an episode that is already downloaded. This is invalid, so the job will not be saved.", v23, 0xCu);
      sub_100004590(v24);
    }

    else
    {

      sub_1001BE660(v20);
    }

    *v15 = v55;
    v15[1] = a2;
    type metadata accessor for JobStorageError();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  v55 = v11;
  sub_1001BE42C(a3);
  v54 = a5;
  if (v29)
  {
    v52 = v29;
    v31 = static os_log_type_t.info.getter();
    sub_100009F1C(0, &qword_1005748A0);
    v32 = static OS_os_log.downloads.getter();
    sub_1001BE270(a3, v18);
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = &v18[*(v16 + 20)];
      v35 = *v34;
      v36 = v34[1];

      sub_1001BE660(v18);
      v37 = sub_1000153E0(v35, v36, &v58);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v52 id];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100010064(&qword_100575248, &type metadata accessor for UUID);
      v39 = v53;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v55 + 8))(v13, v39);
      v43 = sub_1000153E0(v40, v42, &v58);

      *(v33 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v31, "Found existing download job for episode %s, id: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BE660(v18);
    }

    v48 = v52;
    sub_1001BC180(v48, v15);
    type metadata accessor for JobStorageError();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v57(v15);
  }

  else
  {
    type metadata accessor for CDDownloadJob();
    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a7];
    sub_1001BC6CC(a3);

    v58 = 0;
    v45 = [a7 save:&v58];
    v46 = v58;
    if (v45)
    {
      sub_1001BE270(a3, v15);
      swift_storeEnumTagMultiPayload();
      v47 = v46;
LABEL_8:
      v57(v15);
      return sub_100009104(v15, &qword_100575240);
    }

    v49 = v58;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *v15 = v50;
    type metadata accessor for JobStorageError();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v57(v15);
  }

  return sub_100009104(v15, &qword_100575240);
}

uint64_t sub_1001BC180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v63 = type metadata accessor for URL();
  v60 = *(v63 - 8);
  __chkstk_darwin(v63);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin(v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v65 = *(v12 - 8);
  v66 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 id];
  v64 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 episodeUuid];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v18;
  v62 = v17;

  v19 = sub_1001BDBAC();
  v57 = v20;
  v58 = v19;
  v56 = v21;
  v55 = [a1 taskIdentifier];
  v22 = [a1 url];
  v59 = v8;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [a1 type];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  v54 = _findStringSwitchCase(cases:string:)(&off_1004DEDF0, v27);

  v28 = [a1 guid];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v31;
    v53 = v30;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v32 = [a1 adamId];
  if (v32)
  {
    v51 = [a1 adamId];
  }

  else
  {
    v51 = 0;
  }

  v33 = [a1 podcastAdamId];
  if (v33)
  {
    v34 = [a1 podcastAdamId];
  }

  else
  {
    v34 = 0;
  }

  v35 = [a1 lastCacheDeletePurge];
  if (v35)
  {
    v36 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v6, v37, 1, v38);
  v39 = v54 == 1;
  (*(v60 + 32))(&v11[v9[11]], v59, v63);
  v11[v9[12]] = v39;
  v40 = &v11[v9[13]];
  *v40 = 0;
  v40[8] = 1;
  *v11 = 0;
  *(v11 + 1) = 0;
  v41 = v52;
  *(v11 + 2) = v53;
  *(v11 + 3) = v41;
  *(v11 + 4) = v51;
  v11[40] = v32 == 0;
  *(v11 + 6) = v34;
  v11[56] = v33 == 0;
  *(v11 + 5) = 0u;
  *(v11 + 6) = 0u;
  *(v11 + 4) = 0u;
  v42 = &v11[v9[14]];
  *v42 = 0;
  v42[8] = 1;
  sub_100010498(v6, &v11[v9[15]], &qword_100574760);
  v43 = [a1 creationDate];
  v44 = type metadata accessor for DownloadJob(0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v65 + 32))(a2, v64, v66);
  result = sub_1001BE0FC(v11, a2 + v44[9], type metadata accessor for EpisodeMetadata);
  *(a2 + v44[7]) = v55;
  v46 = a2 + v44[8];
  v47 = v57;
  *v46 = v58;
  *(v46 + 8) = v47;
  *(v46 + 16) = v56 & 1;
  v48 = (a2 + v44[5]);
  v49 = v61;
  *v48 = v62;
  v48[1] = v49;
  v50 = a2 + v44[10];
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = 1;
  *(v50 + 32) = 0;
  *(v50 + 40) = 0;
  *(v50 + 48) = 0;
  return result;
}

void sub_1001BC6CC(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100574760);
  __chkstk_darwin();
  v5 = &v23 - v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setId:isa];

  v7 = type metadata accessor for DownloadJob(0);
  v8 = a1 + v7[8];
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  sub_1001BDF00(v9, v10, v11);
  v12 = a1 + v7[9];
  v13 = type metadata accessor for EpisodeMetadata(0);
  v14 = String._bridgeToObjectiveC()();

  [v2 setType:v14];

  v15 = String._bridgeToObjectiveC()();
  [v2 setEpisodeUuid:v15];

  v16 = Date._bridgeToObjectiveC()().super.isa;
  [v2 setCreationDate:v16];

  [v2 setTaskIdentifier:*(a1 + v7[7])];
  URL._bridgeToObjectiveC()(*(v13 + 44));
  v18 = v17;
  [v2 setUrl:v17];

  if (*(v12 + 24))
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v2 setGuid:v19];

  sub_100010430(v12 + *(v13 + 60), v5, &qword_100574760);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v5, 1, v20) != 1)
  {
    v22 = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v5, v20);
  }

  [v2 setLastCacheDeletePurge:v22];
}

void sub_1001BC9A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = [*(v4 + 16) newBackgroundContext];
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = v13 + ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v11;
  *(v14 + 8) = a2;
  v15 = (v13 + ((v12 + v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v19;
  v15[1] = a4;
  aBlock[4] = sub_1001BE164;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2AA0;
  v16 = _Block_copy(aBlock);
  v17 = v11;

  [v17 performBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1001BCBAC(uint64_t a1, void *a2, char a3, void (*a4)(uint64_t *))
{
  v7 = sub_100168088(&qword_100575228);
  __chkstk_darwin(v7);
  v9 = (&v28[-1] - v8);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  sub_100009F1C(0, &qword_1005751F0);
  sub_100168088(&unk_100574670);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004007C0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_100022C18();
  *(v13 + 32) = 25705;
  *(v13 + 40) = 0xE200000000000000;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v13 + 96) = sub_100009F1C(0, &qword_100575230);
  *(v13 + 104) = sub_1001BE208();
  *(v13 + 72) = isa;
  v15 = NSPredicate.init(format:_:)();
  [v12 setPredicate:v15];

  type metadata accessor for CDDownloadJob();
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    if (a3)
    {
      type metadata accessor for JobStorageError();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    a4(v9);
    goto LABEL_13;
  }

  v24 = v16;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v24;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  [a2 deleteObject:v18];
  v28[0] = 0;
  v19 = [a2 save:v28];
  v20 = v28[0];
  if (v19)
  {
    swift_storeEnumTagMultiPayload();
    v21 = v20;
    a4(v9);

LABEL_13:
    return sub_100009104(v9, &qword_100575228);
  }

  v22 = v28[0];
  v23 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *v9 = v23;
  type metadata accessor for JobStorageError();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a4(v9);

  return sub_100009104(v9, &qword_100575228);
}

uint64_t sub_1001BCF94(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v62 = a7;
  v63 = a4;
  v59 = a5;
  v60 = a6;
  v61 = sub_100168088(&qword_100575210);
  v10 = __chkstk_darwin(v61);
  v56 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v57 = (&v54 - v12);
  v13 = objc_allocWithZone(NSFetchRequest);
  v14 = String._bridgeToObjectiveC()();
  v58 = [v13 initWithEntityName:v14];

  sub_100168088(&unk_100574670);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100402720;
  *(v15 + 56) = &type metadata for String;
  v16 = sub_100022C18();
  *(v15 + 64) = v16;
  *(v15 + 32) = 0xD000000000000011;
  *(v15 + 40) = 0x80000001004670B0;
  v17 = (a3 & 1) == 0;
  if (a3)
  {
    v18 = 1936484398;
  }

  else
  {
    v18 = 0x7261646E6174732ELL;
  }

  if (v17)
  {
    v19 = 0xE900000000000064;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  sub_100009F1C(0, &qword_1005751F0);
  v55._countAndFlagsBits = a1;
  v67._countAndFlagsBits = a1;
  v67._object = a2;
  v55._object = a2;

  v54 = v18;
  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21 = v67;
  *(v15 + 96) = &type metadata for String;
  *(v15 + 104) = v16;
  *(v15 + 72) = v21;
  *(v15 + 136) = &type metadata for String;
  *(v15 + 144) = v16;
  strcpy((v15 + 112), "taskIdentifier");
  *(v15 + 127) = -18;
  *(v15 + 176) = sub_100168088(&qword_1005751F8);
  *(v15 + 184) = sub_100009FAC(&unk_100575200, &qword_1005751F8);
  *(v15 + 152) = v63;

  v22 = v58;
  v23 = NSPredicate.init(format:_:)();
  [v22 setPredicate:v23];

  v24 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v22];
  [v24 setResultType:2];
  v67._countAndFlagsBits = 0;
  v25 = [v59 executeRequest:v24 error:&v67];
  countAndFlagsBits = v67._countAndFlagsBits;
  if (!v25)
  {
    v30 = v67._countAndFlagsBits;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = v56;
    *v56 = v31;
    type metadata accessor for JobStorageError();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v60(v32);

    v24 = v22;
    goto LABEL_26;
  }

  v27 = v25;
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  v29 = countAndFlagsBits;
  if (v28)
  {
    if ([v28 result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v67 = v64;
    v68 = v65;
    if (*(&v65 + 1))
    {
      v33 = swift_dynamicCast();
      if (v33)
      {
        v34 = v64;
      }

      else
      {
        v34 = 0;
      }

      v35 = v33 ^ 1;
      goto LABEL_20;
    }
  }

  else
  {

    v67 = 0;
    v68 = 0u;
  }

  sub_100009104(&v67, &unk_1005783D0);
  v34 = 0;
  v35 = 1;
LABEL_20:
  v36 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v37 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v59 = v34;
    v39 = v38;
    v40 = swift_slowAlloc();
    *v39 = 136315650;
    v66 = v40;
    v67._countAndFlagsBits = v59;
    LOBYTE(v67._object) = v35;
    sub_100168088(&unk_100575218);
    v41 = String.init<A>(describing:)();
    v43 = sub_1000153E0(v41, v42, &v66);
    v56 = v28;
    v44 = v22;
    v45 = v43;

    *(v39 + 4) = v45;
    *(v39 + 12) = 2082;
    v67._countAndFlagsBits = 0x496E6F6973736553;
    v67._object = 0xEB00000000203A44;
    v64 = v55;

    v46._countAndFlagsBits = v54;
    v46._object = v19;
    String.append(_:)(v46);

    String.append(_:)(v64);

    v47 = sub_1000153E0(v67._countAndFlagsBits, v67._object, &v66);

    *(v39 + 14) = v47;
    *(v39 + 22) = 2082;
    v22 = v44;
    v28 = v56;
    v48 = Array.description.getter();
    v50 = sub_1000153E0(v48, v49, &v66);

    *(v39 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v37, v36, "Deleted %s not-running jobs from session identifier %{public}s thats not in tasks %{public}s", v39, 0x20u);
    swift_arrayDestroy();

    v34 = v59;
  }

  v51 = v60;
  v32 = v57;
  if (v35)
  {
    v52 = 0;
  }

  else
  {
    v52 = v34;
  }

  *v57 = v52;
  swift_storeEnumTagMultiPayload();
  v51(v32);

LABEL_26:
  return sub_100009104(v32, &qword_100575210);
}

size_t sub_1001BD69C(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v45 = a7;
  v38 = a6;
  v41 = a4;
  v42 = a5;
  v40 = a1;
  v9 = type metadata accessor for DownloadJob(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100168088(&qword_1005751E8);
  __chkstk_darwin(v44);
  v14 = &v37 - v13;
  v15 = objc_allocWithZone(NSFetchRequest);
  v16 = String._bridgeToObjectiveC()();
  v43 = [v15 initWithEntityName:v16];

  sub_100168088(&unk_100574670);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100402720;
  *(v17 + 56) = &type metadata for String;
  v18 = sub_100022C18();
  *(v17 + 64) = v18;
  *(v17 + 32) = 0xD000000000000011;
  *(v17 + 40) = 0x80000001004670B0;
  v19 = (a3 & 1) == 0;
  if (a3)
  {
    v20 = 1936484398;
  }

  else
  {
    v20 = 0x7261646E6174732ELL;
  }

  if (v19)
  {
    v21 = 0xE900000000000064;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  v39 = sub_100009F1C(0, &qword_1005751F0);
  v46 = v40;
  v47 = a2;

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = v46;
  v24 = v47;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v18;
  *(v17 + 72) = v23;
  *(v17 + 80) = v24;
  *(v17 + 136) = &type metadata for String;
  *(v17 + 144) = v18;
  strcpy((v17 + 112), "taskIdentifier");
  *(v17 + 127) = -18;
  *(v17 + 176) = sub_100168088(&qword_1005751F8);
  *(v17 + 184) = sub_100009FAC(&unk_100575200, &qword_1005751F8);
  *(v17 + 152) = v41;

  v25 = v43;
  v26 = NSPredicate.init(format:_:)();
  [v25 setPredicate:v26];

  type metadata accessor for CDDownloadJob();
  v27 = NSManagedObjectContext.fetch<A>(_:)();
  v28 = v27;
  v42 = v14;
  if (!(v27 >> 62))
  {
    v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_19:

    v32 = &_swiftEmptyArrayStorage;
LABEL_20:
    v36 = v42;
    *v42 = v32;
    swift_storeEnumTagMultiPayload();
    v38(v36);

    return sub_100009104(v36, &qword_1005751E8);
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_19;
  }

LABEL_9:
  v46 = &_swiftEmptyArrayStorage;
  result = sub_1001A7694(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v46;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v28 + 8 * v31 + 32);
      }

      sub_1001BC180(v33, v12);
      v46 = v32;
      v35 = v32[2];
      v34 = v32[3];
      if (v35 >= v34 >> 1)
      {
        sub_1001A7694(v34 > 1, v35 + 1, 1);
        v32 = v46;
      }

      ++v31;
      v32[2] = v35 + 1;
      sub_1001BE0FC(v12, v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v35, type metadata accessor for DownloadJob);
    }

    while (v29 != v31);

    v25 = v43;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BDBAC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 primitiveValueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_100009104(v30, &unk_1005783D0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v8 = v26;
  v7 = v27;

  v9 = sub_10016D7BC();
  if (v10)
  {
    v11 = v9;

    return v11;
  }

LABEL_10:
  strcpy(v30, "malformed.id.");
  HIWORD(v30[0]) = -4864;
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1819047278;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v11 = *&v30[0];
  static Logger.downloads.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *&v28 = v19;
    *v18 = 136315138;
    *&v30[0] = v8;
    *(&v30[0] + 1) = v7;
    sub_100168088(&qword_100574230);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "CDDownloadJob found with invalid session identifier string: '%s'", v18, 0xCu);
    sub_100004590(v19);

    (*(v2 + 8))(v4, v25);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return v11;
}

void sub_1001BDF00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v4 willChangeValueForKey:v6];

  if (a3)
  {
    v7 = 1936484398;
  }

  else
  {
    v7 = 0x7261646E6174732ELL;
  }

  if (a3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  [v4 setPrimitiveValue:v10 forKey:v11];

  v12 = String._bridgeToObjectiveC()();
  [v4 didChangeValueForKey:v12];
}

id sub_1001BE0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDDownloadJob();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001BE0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BE164()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BCBAC(v0 + v2, v5, v6, v7);
}

unint64_t sub_1001BE208()
{
  result = qword_100575238;
  if (!qword_100575238)
  {
    sub_100009F1C(255, &qword_100575230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575238);
  }

  return result;
}

uint64_t sub_1001BE270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BE2D4()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_1001BB854(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_1001BE380()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BBAC4(v5, v6, v0 + v2, v8, v9, v10, v11);
}

void sub_1001BE42C(uint64_t a1)
{
  type metadata accessor for CDDownloadJob();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  v4 = (a1 + *(type metadata accessor for DownloadJob(0) + 20));
  v6 = *v4;
  v5 = v4[1];
  sub_100009F1C(0, &qword_1005751F0);
  sub_100168088(&unk_100574670);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004007C0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100022C18();
  *(v7 + 32) = 0x5565646F73697065;
  *(v7 + 40) = 0xEB00000000646975;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 64) = v8;
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;

  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  sub_100168088(&unk_100575250);
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return;
  }

  if (v10 >> 62)
  {
    v11 = v10;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v11;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001BE660(uint64_t a1)
{
  v2 = type metadata accessor for DownloadJob(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BE6CC()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v0 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  if ((sub_100396F64() & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001C1974(v8 + v11, v7, type metadata accessor for EpisodeContextActionDataType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v14 = *v7;

        v15 = *(v1 + 32);
        v16 = [objc_opt_self() sharedInstance];
        v17 = [v16 mainOrPrivateContext];

        __chkstk_darwin(v18);
        *&v24[-32] = v14;
        *&v24[-24] = v17;
        v24[-16] = v15;
        NSManagedObjectContext.performAndWait<A>(_:)();

        v9 = v24[15];
        return v9 & 1;
      }

      v21 = *v7;
      if (*(v1 + 32))
      {

        goto LABEL_3;
      }

      v22 = swift_allocObject();
      v22[2] = sub_1001BEBBC;
      v22[3] = 0;
      v22[4] = v21;
      v22[5] = sub_1001BEB90;
      v22[6] = 0;

      v9 = sub_1001BF1A8(v23, sub_1001C1AB0, v22, 0);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = sub_1001BEBCC(*v7, *(v1 + 32));
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1001C190C(v7, v4, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100168088(&unk_100574850);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100400790;
          *(inited + 32) = *v4;
          v20 = inited + 32;
          *(inited + 40) = 0;
          *(inited + 48) = 0;
          v9 = sub_1001BF55C(inited, *(v1 + 32));

          swift_setDeallocating();
          sub_1001C1A5C(v20);
          sub_1001C19DC(v4, type metadata accessor for EpisodeContextActionDataType.Reference);
          return v9 & 1;
        }

        v13 = sub_1001BEF1C(*v7, *(v1 + 32));
      }

      v9 = v13;
    }

    return v9 & 1;
  }

LABEL_3:

LABEL_4:
  v9 = 0;
  return v9 & 1;
}

void sub_1001BEA68(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v9 = a2;
  if (v8)
  {
    v16 = a4;
    v10 = a1 + 40;
    do
    {

      v11 = String._bridgeToObjectiveC()();
      v12 = [v9 episodeForUuid:v11];

      if (v12)
      {
        v13 = [v12 isVisuallyPlayed];

        v14 = v13 ? a3 : (a3 & 1) == 0;
        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v10 += 16;
      --v8;
    }

    while (v8);
    v15 = 0;
LABEL_11:
    a4 = v16;
  }

  else
  {
    v15 = 0;
  }

  swift_bridgeObjectRelease_n();

  *a4 = v15;
}

uint64_t sub_1001BEB90@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeOffer.contentId.getter();
  *a1 = result;
  return result;
}

void *sub_1001BEBBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

char *sub_1001BEBCC(unint64_t a1, char a2)
{
  if (*(v2 + 32))
  {
    return 0;
  }

  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v31)
  {
    v32 = a2;
    if (!i)
    {
      v11 = _swiftEmptyArrayStorage[2];
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    result = sub_1001A73C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = _swiftEmptyArrayStorage;
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        v8 = [specialized _ArrayBuffer._getElementSlowPath(_:)() episodeStoreId];
        swift_unknownObjectRelease();
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001A73C8((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        _swiftEmptyArrayStorage[v10 + 4] = v8;
      }
    }

    else
    {
      v14 = (v4 + 32);
      do
      {
        v15 = [*v14 episodeStoreId];
        v33 = v6;
        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v18 = v15;
          sub_1001A73C8((v16 > 1), v17 + 1, 1);
          v15 = v18;
          v6 = v33;
        }

        v6[2] = v17 + 1;
        v6[v17 + 4] = v15;
        ++v14;
        --i;
      }

      while (i);
    }

    v11 = v6[2];
    if (!v11)
    {
LABEL_14:

      v12 = _swiftEmptyArrayStorage;
      v13 = _swiftEmptyArrayStorage[2];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_21:
    sub_1001A7578(0, v11, 0);
    v19 = 32;
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v20 = AdamID.init(rawValue:)();
      v34 = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        v23 = v20;
        sub_1001A7578((v21 > 1), v22 + 1, 1);
        v20 = v23;
        v12 = v34;
      }

      v12[2] = v22 + 1;
      v12[v22 + 4] = v20;
      v19 += 8;
      --v11;
    }

    while (v11);

    v13 = v12[2];
    if (!v13)
    {
LABEL_31:

      v29 = sub_1001BF55C(_swiftEmptyArrayStorage, v32 & 1);

      return (v29 & 1);
    }

LABEL_26:
    sub_1001A7540(0, v13, 0);
    v24 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (v24 < v12[2])
    {
      v25 = v12[v24 + 4];
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_1001A7540((v26 > 1), v27 + 1, 1);
      }

      ++v24;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      v28[4] = v25;
      v28[5] = 0;
      *(v28 + 48) = 0;
      if (v13 == v24)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    v30 = a2;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BEF1C(unint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    return 0;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_33:
    v29 = a2;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v29;
    v6 = v30;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = a2;
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v8 = 0;
    do
    {
      v32 = v7;
      v9 = v8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = v10;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v12 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v12)
        {
          break;
        }

LABEL_9:
        ++v9;
        if (v8 == v6)
        {
          v7 = v32;
          goto LABEL_25;
        }
      }

      v13 = v12;
      v14 = MPModelObject.adamID.getter();
      v16 = v15;

      if (v16)
      {
        goto LABEL_9;
      }

      v7 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1002433B0(0, *(v32 + 2) + 1, 1, v32);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1002433B0((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      *&v7[8 * v19 + 32] = v14;
    }

    while (v8 != v6);
  }

LABEL_25:
  v20 = *(v7 + 2);
  if (v20)
  {
    sub_1001A7540(0, v20, 0);
    v21 = 0;
    v22 = _swiftEmptyArrayStorage[2];
    v23 = 3 * v22;
    do
    {
      v24 = *&v7[8 * v21 + 32];
      v25 = _swiftEmptyArrayStorage[3];
      v26 = v22 + v21 + 1;
      if (v22 + v21 >= v25 >> 1)
      {
        sub_1001A7540((v25 > 1), v22 + v21 + 1, 1);
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v26;
      v27 = &_swiftEmptyArrayStorage[v23];
      v27[4] = v24;
      v27[5] = 0;
      *(v27 + 48) = 0;
      v23 += 3;
    }

    while (v20 != v21);
  }

  v28 = sub_1001BF55C(_swiftEmptyArrayStorage, v31 & 1);

  return v28 & 1;
}

size_t sub_1001BF1A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, int a4)
{
  v9 = type metadata accessor for EpisodePlayState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v34 = v31 - v14;
  __chkstk_darwin(v15);
  v33 = v31 - v16;
  v17 = *(v4 + 40);

  v18 = sub_1001C12C4(a1, a2, a3, v17);

  swift_getKeyPath();
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_13:

    v22 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_3:
  v36 = _swiftEmptyArrayStorage;
  result = sub_1001A74FC(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    goto LABEL_29;
  }

  v31[1] = v9;
  v32 = a4;
  v21 = 0;
  v22 = v36;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v18 + 8 * v21 + 32);
    }

    v35 = v23;

    swift_getAtKeyPath();

    v36 = v22;
    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      sub_1001A74FC(v24 > 1, v25 + 1, 1);
      v22 = v36;
    }

    ++v21;
    v22[2] = v25 + 1;
    sub_1001C190C(v12, v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v25, &type metadata accessor for EpisodePlayState);
  }

  while (v19 != v21);

  LOBYTE(a4) = v32;
LABEL_14:
  v26 = v22[2];
  v28 = v33;
  v27 = v34;
  if (!v26)
  {
LABEL_27:

    return v26;
  }

  v29 = 0;
  v30 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (v29 < v22[2])
  {
    sub_1001C1974(&v30[*(v10 + 72) * v29], v28, &type metadata accessor for EpisodePlayState);
    sub_1001C190C(v28, v27, &type metadata accessor for EpisodePlayState);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 3) < 2 || result == 1)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (result == 2)
    {
      result = sub_1001A4748(v27);
      if (a4)
      {
LABEL_26:
        v26 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1001C19DC(v27, &type metadata accessor for EpisodePlayState);
    }

    if (v26 == ++v29)
    {
      v26 = 0;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

size_t sub_1001BF55C(uint64_t a1, int a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v28 = v25 - v9;
  __chkstk_darwin(v10);
  v27 = v25 - v11;

  v12 = sub_1001C17D4(a1);

  swift_getKeyPath();
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:

    v16 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v30 = _swiftEmptyArrayStorage;
  result = sub_1001A74FC(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    goto LABEL_29;
  }

  v25[1] = v4;
  v26 = a2;
  v15 = 0;
  v16 = v30;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v17 = *(v12 + 8 * v15 + 32);
    }

    v29 = v17;

    swift_getAtKeyPath();

    v30 = v16;
    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      sub_1001A74FC(v18 > 1, v19 + 1, 1);
      v16 = v30;
    }

    ++v15;
    v16[2] = v19 + 1;
    sub_1001C190C(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, &type metadata accessor for EpisodePlayState);
  }

  while (v13 != v15);

  LOBYTE(a2) = v26;
LABEL_14:
  v20 = v16[2];
  v22 = v27;
  v21 = v28;
  if (!v20)
  {
LABEL_27:

    return v20;
  }

  v23 = 0;
  v24 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v23 < v16[2])
  {
    sub_1001C1974(&v24[*(v5 + 72) * v23], v22, &type metadata accessor for EpisodePlayState);
    sub_1001C190C(v22, v21, &type metadata accessor for EpisodePlayState);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 3) < 2 || result == 1)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (result == 2)
    {
      result = sub_1001A4748(v21);
      if (a2)
      {
LABEL_26:
        v20 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1001C19DC(v21, &type metadata accessor for EpisodePlayState);
    }

    if (v20 == ++v23)
    {
      v20 = 0;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1001BF900(void (*a1)(void, void, void), uint64_t a2)
{
  v90 = a1;
  v4 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v84 - v9);
  v91 = type metadata accessor for EpisodeOffer();
  v85 = *(v91 - 1);
  __chkstk_darwin(v91);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v13);
  v15 = (v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + 16);
  if (!v16)
  {
    return;
  }

  v89 = a2;
  v86 = v2;
  v17 = 2;
  if (!*(v2 + 32))
  {
    v17 = 0;
  }

  v87 = v17;
  v18 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v19 = v16;
  swift_beginAccess();
  v88 = v19;
  sub_1001C1974(v19 + v18, v15, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v57 = *v15;
      sub_100004428(v86 + 48, v96);
      sub_1000044A0(v96, v97);

      dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
      sub_100004590(v96);

      v58 = dispatch thunk of PlaybackController.queueController.getter();

      v59 = *(v57 + 16);
      if (v59)
      {
        v84[1] = v58;
        v96[0] = _swiftEmptyArrayStorage;
        sub_1001A7578(0, v59, 0);
        v60 = v96[0];
        v90 = *(v85 + 16);
        v61 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v86 = v57;
        v62 = v57 + v61;
        v89 = *(v85 + 72);
        v63 = (v85 + 8);
        do
        {
          v64 = v91;
          v90(v12, v62, v91);
          v65 = EpisodeOffer.contentId.getter();
          (*v63)(v12, v64);
          v96[0] = v60;
          v67 = *(v60 + 16);
          v66 = *(v60 + 24);
          if (v67 >= v66 >> 1)
          {
            sub_1001A7578((v66 > 1), v67 + 1, 1);
            v60 = v96[0];
          }

          *(v60 + 16) = v67 + 1;
          *(v60 + 8 * v67 + 32) = v65;
          v62 += v89;
          --v59;
        }

        while (v59);
      }

      PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
    }

    else
    {

      sub_100004428(v86 + 48, v96);
      sub_1000044A0(v96, v97);
      dispatch thunk of LibraryActionControllerProtocol.mark(episodeUUIDS:as:completion:)();
      sub_100004590(v96);

      dispatch thunk of PlaybackController.queueController.getter();

      PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)();
    }

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v24 = *v15;
    if (v24 >> 62)
    {
LABEL_60:
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37)
    {
      v96[0] = _swiftEmptyArrayStorage;

      sub_1001A7578(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
        __break(1u);
        return;
      }

      v38 = 0;
      v39 = v96[0];
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *(v24 + 8 * v38 + 32);
        }

        v41 = v40;
        [v40 episodeStoreId];
        v42 = AdamID.init(rawValue:)();

        v96[0] = v39;
        v44 = *(v39 + 16);
        v43 = *(v39 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1001A7578((v43 > 1), v44 + 1, 1);
          v39 = v96[0];
        }

        ++v38;
        *(v39 + 16) = v44 + 1;
        *(v39 + 8 * v44 + 32) = v42;
      }

      while (v37 != v38);
    }

    else
    {
    }

    v68 = v86;
    sub_100004428(v86 + 88, v96);
    sub_1000044A0(v96, v97);
    dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

    v69 = swift_allocObject();
    v70 = v87;
    v69[2] = v68;
    v69[3] = v70;
    v71 = v89;
    v72 = v90;
    v69[4] = v90;
    v69[5] = v71;
    v69[6] = v24;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v71;
    v74 = sub_10002BD04();
    sub_100013CB4(v72);
    sub_100013CB4(v72);

    v75 = static OS_dispatch_queue.main.getter();
    v94 = v74;
    v95 = &protocol witness table for OS_dispatch_queue;
    *&v93 = v75;
    Promise.then(perform:orCatchError:on:)();

    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v91 = type metadata accessor for EpisodeContextActionDataType.Reference;
    sub_1001C190C(v15, v10, type metadata accessor for EpisodeContextActionDataType.Reference);
    v45 = v86;
    sub_100004428(v86 + 88, v96);
    sub_1000044A0(v96, v97);
    sub_100168088(&unk_10057A0B0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100400790;
    *(v46 + 32) = *v10;

    dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

    sub_100004428(v45 + 48, &v93);
    v47 = *(v45 + 128);
    sub_100184658(&v93, v92);
    sub_1001C1974(v10, v7, type metadata accessor for EpisodeContextActionDataType.Reference);
    v48 = (*(v5 + 80) + 88) & ~*(v5 + 80);
    v49 = swift_allocObject();
    sub_100184658(v92, (v49 + 2));
    v51 = v89;
    v50 = v90;
    v49[7] = v87;
    v49[8] = v50;
    v49[9] = v51;
    v49[10] = v47;
    v52 = v49 + v48;
    v53 = v91;
    sub_1001C190C(v7, v52, v91);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    *(v54 + 24) = v51;
    v55 = sub_10002BD04();
    sub_100013CB4(v50);
    sub_100013CB4(v50);

    v56 = static OS_dispatch_queue.main.getter();
    v94 = v55;
    v95 = &protocol witness table for OS_dispatch_queue;
    *&v93 = v56;
    Promise.then(perform:orCatchError:on:)();

    sub_1001C19DC(v10, v53);
    goto LABEL_54;
  }

  v21 = *v15;
  v22 = *v15 & 0xFFFFFFFFFFFFFF8;
  if (*v15 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v23 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
    goto LABEL_52;
  }

  v24 = 0;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    v91 = v25;
    v26 = v24;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v26 >= *(v22 + 16))
        {
          goto LABEL_59;
        }

        v27 = *(v21 + 8 * v26 + 32);
      }

      v28 = v27;
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v29 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v29)
      {
        break;
      }

LABEL_13:
      ++v26;
      if (v24 == v23)
      {
        goto LABEL_52;
      }
    }

    v30 = v29;
    v31 = MPModelObject.adamID.getter();
    v33 = v32;

    if (v33)
    {
      goto LABEL_13;
    }

    v25 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1002433B0(0, *(v25 + 2) + 1, 1, v25);
    }

    v36 = *(v25 + 2);
    v35 = *(v25 + 3);
    if (v36 >= v35 >> 1)
    {
      v25 = sub_1002433B0((v35 > 1), v36 + 1, 1, v25);
    }

    *(v25 + 2) = v36 + 1;
    *&v25[8 * v36 + 32] = v31;
  }

  while (v24 != v23);
LABEL_52:
  v76 = v86;
  sub_100004428(v86 + 88, v96);
  sub_1000044A0(v96, v97);
  dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

  v77 = swift_allocObject();
  v78 = v87;
  v77[2] = v76;
  v77[3] = v78;
  v79 = v89;
  v80 = v90;
  v77[4] = v90;
  v77[5] = v79;
  v77[6] = v21;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v79;
  v82 = sub_10002BD04();
  sub_100013CB4(v80);
  sub_100013CB4(v80);

  v83 = static OS_dispatch_queue.main.getter();
  v94 = v82;
  v95 = &protocol witness table for OS_dispatch_queue;
  *&v93 = v83;
  Promise.then(perform:orCatchError:on:)();

LABEL_53:

LABEL_54:
  sub_100004590(&v93);
  sub_100004590(v96);
}

void sub_1001C04C4(unint64_t a1)
{
  if (!dispatch thunk of PlaybackController.QueueController.playbackController.getter() || (v2 = dispatch thunk of PlaybackController.nowPlayingItem.getter(), , !v2) || (MPModelObject.uuid.getter(), v4 = v3, v2, !v4))
  {
    if (!dispatch thunk of PlaybackController.QueueController.playbackController.getter())
    {
      return;
    }

    v19 = dispatch thunk of PlaybackController.nowPlayingItem.getter();

    if (!v19)
    {
      return;
    }

    MPModelObject.adamID.getter();
    v21 = v20;

    if (v21)
    {
      return;
    }

    if (a1 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v5 = a1 & 0xC000000000000001;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22 == v23)
      {
        PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
        goto LABEL_48;
      }

      if (v5)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v25 = *(a1 + 8 * v23 + 32);
      }

      v26 = v25;
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v28 = IMPlayerItem.adamID.getter();
      v30 = v29;

      ++v23;
      if ((v30 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1002433B0(0, *(v24 + 2) + 1, 1, v24);
        }

        v32 = *(v24 + 2);
        v31 = *(v24 + 3);
        if (v32 >= v31 >> 1)
        {
          v24 = sub_1002433B0((v31 > 1), v32 + 1, 1, v24);
        }

        *(v24 + 2) = v32 + 1;
        *&v24[8 * v32 + 32] = v28;
        v23 = v27;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_47;
    }

    goto LABEL_6;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_47;
  }

LABEL_6:
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_43;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v12 = [v10 episodeUuid];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_47;
      }
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100243134(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_100243134((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v33;
  }

  while (v7 != v6);
LABEL_47:
  PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)();
LABEL_48:
}

uint64_t sub_1001C0830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  sub_100004428(a2 + 48, v11);
  sub_1000044A0(v11, v11[3]);
  dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
  sub_100004590(v11);

  dispatch thunk of PlaybackController.queueController.getter();

  a7(a6, a3);
}

uint64_t sub_1001C0910(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1000044A0(a2, a2[3]);
  dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
  dispatch thunk of PlaybackController.queueController.getter();
  sub_100168088(&unk_10057A0B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  *(v8 + 32) = *a7;
  PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
}

uint64_t sub_1001C09F8()
{
  if (*(v0 + 32))
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001004672A0;
    v2 = 0xD00000000000001ALL;
    v3 = 0x8000000100467280;
    v4.super.isa = v1;
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = 0xD000000000000010;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0xEE00646579616C50;
    v7 = 0x207361206B72614DLL;
    v2 = 0xD000000000000018;
    v3 = 0x80000001004672C0;
    v4.super.isa = v1;
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v4, *&v5, *&v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1001C0B28(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Theme();
  v4 = static Theme.appTintColor.getter();
  v5 = *(v2 + 32);
  v6 = [objc_opt_self() mainBundle];
  if (v5)
  {
    v16 = 0xE800000000000000;
    v7 = 0x646579616C706E55;
    v8 = 0xD000000000000016;
    v9 = 0x8000000100467260;
    v10.super.isa = v6;
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
    v9 = 0x80000001004665A0;
    v8 = 0xD000000000000014;
    v10.super.isa = v6;
    v11 = 0;
    v12 = 0xE000000000000000;
    v7 = 0;
  }

  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v10, *&v11, *&v7);

  if (*(v2 + 32))
  {
    v14 = 0xD000000000000015;
  }

  else
  {
    v14 = 0xD000000000000019;
  }

  if (*(v2 + 32))
  {
    v15 = "$_playerController";
  }

  else
  {
    v15 = "rectangle.badge.minus";
  }

  *a1 = v4;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 | 0x8000000000000000;
  *(a1 + 24) = v13;
}

uint64_t sub_1001C0C7C()
{

  sub_100004590(v0 + 48);
  sub_100004590(v0 + 88);

  sub_1001C1B94(*(v0 + 136));

  return swift_deallocClassInstance();
}

unint64_t sub_1001C0D1C()
{
  result = qword_1005754B8;
  if (!qword_1005754B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005754B8);
  }

  return result;
}

unint64_t sub_1001C0D74()
{
  if (*(v0 + 32))
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1001C0DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MetricsLabel.markEpisodeUnplayed(_:);
  if (!v3)
  {
    v6 = &enum case for MetricsLabel.markEpisodePlayed(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1001C0E34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for ContextActionType();
  v8 = *(v4 - 8);
  v5 = &enum case for ContextActionType.markUnplayed(_:);
  if (!v3)
  {
    v5 = &enum case for ContextActionType.markPlayed(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

double sub_1001C0F28@<D0>(uint64_t a1@<X8>)
{
  sub_1001C0B28(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001C0F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001C0FCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001C102C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001C1090(uint64_t a1, uint64_t a2)
{
  result = sub_1001C18C4(&unk_1005821D0, a2, type metadata accessor for MarkEpisodeContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C10E8(uint64_t a1, uint64_t a2)
{
  result = sub_1001C18C4(&qword_1005754C0, a2, type metadata accessor for MarkEpisodeContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C1140(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1001C1158(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1001C116C(uint64_t a1)
{
  v3 = *(type metadata accessor for EpisodeContextActionDataType.Reference(0) - 8);
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = (v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80)));

  return sub_1001C0910(a1, v1 + 2, v4, v5, v6, v7, v8);
}

uint64_t sub_1001C1200()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C1294()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1001C12C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100574E18);
  __chkstk_darwin(v9 - 8);
  v11 = (v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v47 = (v40 - v13);
  __chkstk_darwin(v14);
  v48 = v40 - v15;
  __chkstk_darwin(v16);
  v50 = v40 - v17;
  v44 = a1;
  v18 = *(a1 + 16);
  v58 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v49 = v6;
  v51 = v18;
  if (v18)
  {
    v19 = 0;
    v45 = (v6 + 56);
    v46 = v11;
    v42 = (v6 + 32);
    v43 = (v6 + 48);
    v40[2] = v6 + 16;
    v41 = (v6 + 8);
    v20 = v18;
    do
    {
      if (v19 == v18)
      {
        v21 = 1;
        v19 = v18;
        v22 = v46;
      }

      else
      {
        if (v19 >= v18)
        {
          goto LABEL_23;
        }

        (*(v6 + 16))(v47, v44 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v5);
        v23 = __OFADD__(v19++, 1);
        v22 = v46;
        if (v23)
        {
          goto LABEL_24;
        }

        v21 = 0;
      }

      v24 = v47;
      (*v45)(v47, v21, 1, v5);
      sub_1001C1B24(v24, v22);
      if ((*v43)(v22, 1, v5) == 1)
      {
        goto LABEL_25;
      }

      (*v42)(v8, v22, v5);
      v52(&v55, v8);
      (*v41)(v8, v5);
      v25 = v55;
      v26 = v56;
      v27 = v57;
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      sub_1001C1A4C(v25, v26, v27);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v20;
      v6 = v49;
      v18 = v51;
    }

    while (v20);
  }

  else
  {
    v19 = 0;
  }

  v43 = (v6 + 16);
  v28 = (v6 + 56);
  v29 = v6;
  v30 = (v6 + 48);
  v46 = (v29 + 32);
  v47 = v28;
  v45 = (v29 + 8);
  v31 = v19 >= v18;
  if (v19 != v18)
  {
    goto LABEL_14;
  }

LABEL_13:
  v32 = 1;
  v19 = v18;
  v33 = v48;
  while (1)
  {
    v34 = v50;
    (*v47)(v50, v32, 1, v5);
    sub_1001C1B24(v34, v33);
    if ((*v30)(v33, 1, v5) == 1)
    {
      return v58;
    }

    (*v46)(v8, v33, v5);
    v52(&v55, v8);
    (*v45)(v8, v5);
    v35 = v55;
    v36 = v56;
    v37 = v57;
    dispatch thunk of EpisodeStateController.stateMachine(for:)();
    v38 = v36;
    v18 = v51;
    sub_1001C1A4C(v35, v38, v37);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v31 = v19 >= v18;
    if (v19 == v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v31)
    {
      break;
    }

    (*(v49 + 16))(v50, v44 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v19, v5);
    v23 = __OFADD__(v19++, 1);
    v33 = v48;
    if (v23)
    {
      goto LABEL_22;
    }

    v32 = 0;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
  return result;
}

void *sub_1001C17D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v3 += 24;
      sub_1001C1A3C(v4, v5, v6);
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      sub_1001C1A4C(v4, v5, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001C18C4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001C190C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C1974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C19DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C1A3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001C1A4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_1001C1AB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 40))(&v6);
  v3(&v7, &v6);
  v4 = v8;
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1001C1B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574E18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}