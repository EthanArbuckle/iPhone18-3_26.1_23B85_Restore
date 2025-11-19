uint64_t sub_100774ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_1000F24EC(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_1000082B4(a1, &v14 - v11, a5);
  return a7(v12);
}

void sub_100774F80(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_100774FE4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = isa;
  [v6 *a5];
}

uint64_t sub_10077505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v6[10] = v9;
  v6[11] = v11;

  return _swift_task_switch(sub_10077515C, v9, v11);
}

uint64_t sub_10077515C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v8 = v5;
  v9 = swift_task_alloc();
  v0[13] = v9;
  v10 = sub_1000F24EC(&qword_100AF0BE0);
  *v9 = v0;
  v9[1] = sub_1007752AC;
  v11 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v11, sub_100777B48, v7, v10);
}

uint64_t sub_1007752AC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  if (v0)
  {
    v8 = sub_1007754D0;
  }

  else
  {
    v8 = sub_100775468;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100775468()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1007754D0()
{
  v16 = v0;
  if (qword_100AD0A60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF0BC8);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    type metadata accessor for UUID();
    sub_100777BCC(&qword_100AE19B0, &type metadata accessor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_100008458(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s (fetchJournalEntry) Unable to fetch journal entry by id: %@", v6, 0x16u);
    sub_100004F84(v7, &unk_100AD4BB0);

    sub_10000BA7C(v8);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_100775750(void *a1)
{
  type metadata accessor for JournalEntryMO();
  sub_100777BCC(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  result = static Identifiable<>.fetchObjectForRecord(_:context:includeUnsavedObjects:)();
  if (!v1)
  {
    if (result)
    {
      v4 = result;
      CKRecord.encodedSystemFields.getter();
      sub_100777BCC(&qword_100ADAD30, &type metadata accessor for JournalEntryMO);
      dispatch thunk of RecordUploading.recordSystemFields.setter();
      dispatch thunk of RecordUploading.isUploadedToCloud.setter();
      return v4;
    }

    else
    {
      if (qword_100AD0120 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000617C(v5, qword_100AED610);
      v6 = a1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v9 = 136315650;
        *(v9 + 4) = sub_100008458(0x456C616E72756F4ALL, 0xEE004F4D7972746ELL, &v19);
        *(v9 + 12) = 2080;
        v10 = CKRecord.recordType.getter();
        v12 = sub_100008458(v10, v11, &v19);

        *(v9 + 14) = v12;
        *(v9 + 22) = 2080;
        v13 = [v6 recordID];
        v14 = [v13 recordName];

        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = sub_100008458(v15, v17, &v19);

        *(v9 + 24) = v18;
        _os_log_impl(&_mh_execute_header, v7, v8, "Unable to get %s object corresponding to %s record with id: %s", v9, 0x20u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_100775A54()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF0BC8);
  v1 = sub_10000617C(v0, qword_100AF0BC8);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100775B1C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JournalEntryMO();
  sub_100777BCC(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  result = static Identifiable<>.fetch(id:context:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

double *sub_100775BC4@<X0>(double **a1@<X8>)
{
  if (qword_100AD0A60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000617C(v3, qword_100AF0BC8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [objc_opt_self() isMainThread];
    _os_log_impl(&_mh_execute_header, v4, v5, "fetchRemovedJournalEntries isMainThread: %{BOOL}d", v6, 8u);
  }

  type metadata accessor for JournalEntryMO();
  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unable to fetch removed Journal Entries: %@", v10, 0xCu);
      sub_100004F84(v11, &unk_100AD4BB0);
    }

    result = _swiftEmptyArrayStorage;
  }

  *a1 = result;
  return result;
}

double *sub_100775DFC@<X0>(double **a1@<X8>)
{
  type metadata accessor for JournalEntryMO();
  sub_100777BCC(&qword_100AF0BE8, &type metadata accessor for JournalEntryMO);
  result = static ManagedObjectCloudKitSyncing.objectsToSave(context:)();
  if (v1)
  {
    if (qword_100AD0A60 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AF0BC8);
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
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to fetch local changed Journal Entries: %@", v7, 0xCu);
      sub_100004F84(v8, &unk_100AD4BB0);
    }

    else
    {
    }

    result = _swiftEmptyArrayStorage;
  }

  *a1 = result;
  return result;
}

void sub_100775FDC(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_100AD0A60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AF0BC8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [objc_opt_self() isMainThread];
    _os_log_impl(&_mh_execute_header, v6, v7, "deleteAllEmptyJournalEntries isMainThread: %{BOOL}d", v8, 8u);
  }

  type metadata accessor for JournalEntryAssetMO();
  v9 = NSManagedObjectContext.fetch<A>(_:)();
  v10 = v9;
  if (v9 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
LABEL_26:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_16;
    }

LABEL_27:

    if (!v11)
    {
      return;
    }

    goto LABEL_28;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    [v13 setIsRemovedFromCloud:1];
  }

LABEL_14:

  type metadata accessor for JournalEntryMO();
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  a3 = v15;
  if (v15 >> 62)
  {
    goto LABEL_26;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_16:
  if (v16 < 1)
  {
    __break(1u);
  }

  for (j = 0; j != v16; ++j)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(a3 + 8 * j + 32);
    }

    v19 = v18;
    v20 = *(JournalEntryMO.assetOrderingDictionary.getter() + 16);

    if (!v20)
    {
      [v19 setIsRemovedFromCloud:1];
    }
  }

LABEL_28:
  v30[0] = 0;
  v21 = [a1 save:v30];
  v22 = v30[0];
  if (v21)
  {

    v23 = v22;
  }

  else
  {
    v24 = v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to mark all empty journal entries for deletion: %@", v27, 0xCu);
      sub_100004F84(v28, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

uint64_t sub_100776450@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100776680(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100776868(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000340DC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100776450(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000340DC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100776810(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100776868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100776450(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100776920(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100049ED8(a3, a4);
          return sub_100776680(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100776A88(void *a1)
{
  type metadata accessor for JournalEntryAssetMO();
  v1 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000321B0();
  v2 = NSPredicate.init(format:_:)();
  [v1 setPredicate:v2];

  type metadata accessor for JournalEntryMO();
  v3 = static JournalEntryMO.fetchRequest()();
  v4 = NSPredicate.init(format:_:)();
  v5 = NSPredicate.init(format:_:)();
  sub_1000F24EC(&unk_100AD5B10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100031B20();
  *(v6 + 32) = 0x656C746974;
  *(v6 + 40) = 0xE500000000000000;
  v7 = NSPredicate.init(format:_:)();
  v8 = NSPredicate.init(format:_:)();
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941830;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v7;
  *(v9 + 56) = v8;
  v22 = v4;
  v10 = v5;
  v11 = v7;
  v12 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v3 setPredicate:v14];
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v1;
  v15[4] = v3;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100777BC0;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100028EF4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A7C888;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = v1;
  v20 = v3;

  [v18 performBlockAndWait:v17];

  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  return result;
}

void sub_100776E40(void *a1)
{
  v2 = sub_100775750(a1);
  if (v2)
  {
    v14 = v2;
    v15 = [objc_opt_self() standardUserDefaults];
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 stringArrayForKey:v16];

    if (v17)
    {
      v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = [a1 recordID];
    v20 = [v19 recordName];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v27[0] = v21;
    v27[1] = v23;
    __chkstk_darwin(v24);
    v25[2] = v27;
    LOBYTE(v21) = sub_100194FF0(sub_100777B68, v25, v18);

    [v14 setIsUploadedToCloud:(v21 & 1) == 0];
  }

  else
  {
    if (qword_100AD0A60 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AF0BC8);
    v4 = a1;
    v26 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27[0] = v7;
      *v6 = 136315138;
      v8 = [v4 recordID];
      v9 = [v8 recordName];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_100008458(v10, v12, v27);

      *(v6 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v26, v5, "Unable to get JournalEntryMO object with id %s for local update", v6, 0xCu);
      sub_10000BA7C(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_10077718C(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v4, qword_100B2FF80);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_100469F4C(a2);
  v10 = sub_1004691AC(a2);
  v11 = sub_10046A158(a2);
  type metadata accessor for JournalEntryMO();
  v12 = v74;
  static JournalEntryMO.resolveDifferences(object:record:)();
  v74 = v12;
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v70 = v4;
  v71 = a2;
  v72 = a1;
  v73 = v7;
  HIDWORD(v67) = v10;
  v69 = v11;
  v68 = v5;
  if (v9)
  {
    v14 = v71;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v75 = v18;
      *v17 = 136315138;
      v19 = [v14 recordID];
      v20 = v16;
      v21 = [v19 recordName];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_100008458(v22, v24, &v75);

      *(v17 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v20, "Forward merging title with record ID: %s.", v17, 0xCu);
      sub_10000BA7C(v18);
    }

    KeyPath = swift_getKeyPath();
    v27 = static JournalEntryMO.CloudKitKeys.title.getter();
    v29 = v28;
    v30 = swift_getKeyPath();
    v31 = v74;
    sub_100774484(KeyPath, v14, v27, v29, v30);
    v32 = v71;
    if (v31)
    {

      swift_errorRetain();
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        swift_errorRetain();
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&_mh_execute_header, v33, v34, "Error forward merging title: %@", v35, 0xCu);
        sub_100004F84(v36, &unk_100AD4BB0);
      }

      else
      {
      }
    }

    else
    {

      [v72 setIsUploadedToCloud:0];
    }

    v4 = v70;
    v38 = v69;
    if ((v67 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v32 = v71;
  v38 = v11;
  if ((v67 & 0x100000000) != 0)
  {
LABEL_16:
    v39 = v32;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75 = v43;
      *v42 = 136315138;
      v44 = [v39 recordID];
      v45 = [v44 recordName];

      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v49 = sub_100008458(v46, v48, &v75);

      *(v42 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "Forward merging entry text with record ID: %s.", v42, 0xCu);
      sub_10000BA7C(v43);
    }

    v50 = swift_getKeyPath();
    v51 = static JournalEntryMO.CloudKitKeys.text.getter();
    v53 = v52;
    v54 = swift_getKeyPath();
    sub_1007736CC(v50, v39, v51, v53, v54);

    [v72 setIsUploadedToCloud:0];
    v4 = v70;
    v32 = v71;
    v38 = v69;
  }

LABEL_19:
  if (v38)
  {
    v55 = v32;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v75 = v59;
      *v58 = 136315138;
      v60 = [v55 recordID];
      v61 = [v60 recordName];

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v55;
      v65 = v64;

      v66 = sub_100008458(v62, v65, &v75);
      v55 = v63;

      *(v58 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Forward merging asset placement with record ID: %s.", v58, 0xCu);
      sub_10000BA7C(v59);

      v4 = v70;
    }

    sub_10046B898(v55);
    [v72 setIsUploadedToCloud:0];
  }

  return (*(v68 + 8))(v73, v4);
}

uint64_t sub_100777B68(void *a1)
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

uint64_t sub_100777BCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100777C2C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v29[3] = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v29[2] = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v29[1] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Date();
  v6 = *(v34 - 8);
  v7 = __chkstk_darwin(v34);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = type metadata accessor for Calendar();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateComponents();
  v30 = *(v15 - 8);
  v31 = v15;
  __chkstk_darwin(v15);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v18 = type metadata accessor for Calendar.Component();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100940080;
  (*(v19 + 104))(v21 + v20, enum case for Calendar.Component.day(_:), v18);
  sub_10005FF80(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();
  static Date.now.getter();
  static AppInfo.recentlyDeletedEntriesLocalPermanentDeleteTimeInterval.getter();
  Date.addingTimeInterval(_:)();
  v22 = *(v6 + 8);
  v23 = v34;
  v22(v9, v34);
  Calendar.dateComponents(_:from:to:)();

  v22(v11, v23);
  (*(v32 + 8))(v14, v33);
  v24 = DateComponents.day.getter();
  LOBYTE(v21) = v25;
  (*(v30 + 8))(v17, v31);
  if (v21)
  {
    return 0;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  v35 = v24 & ~(v24 >> 63);
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v28._countAndFlagsBits = 0x6552207379614420;
  v28._object = 0xEF676E696E69616DLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

double *sub_100778138(uint64_t (*a1)(id *), double *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_1007782E4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for JournalSidebarViewModel(0);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_10001C8B8(a3 + v15 + v16 * v13, v12, type metadata accessor for JournalSidebarViewModel);
      v17 = a1(v12);
      if (v3)
      {
        sub_100786864(v12, type metadata accessor for JournalSidebarViewModel);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_100132B1C(v12, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100199B0C(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100199B0C(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_100132B1C(v24, v14 + v15 + v20 * v16);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_100786864(v12, type metadata accessor for JournalSidebarViewModel);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_100778608(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

void sub_1007788F0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  type metadata accessor for JournalMO();
  sub_100786420(&qword_100AD4C68, &type metadata accessor for JournalMO);
  v7 = static Identifiable<>.fetch(id:context:)();
  if (v7)
  {
    v19 = v7;
    sub_10077DC04(v7);
    v8 = v19;
  }

  else
  {
    if (qword_100AD0A68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000617C(v9, qword_100AF0BF0);
    (*(v3 + 16))(v6, a1, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_100008458(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Journal not found for ID: %s", v12, 0xCu);
      sub_10000BA7C(v13);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

void sub_100778E3C()
{
  v1 = v0;
  v2 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v90 = *(v2 - 8);
  __chkstk_darwin(v2);
  v89 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v88 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRInfo();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v91 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v0[OBJC_IVAR____TtC7Journal12DrawingAsset_metadata])
  {

    v13 = sub_1007857D8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v94 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  v16 = *&v0[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v16)
  {
    goto LABEL_29;
  }

  v85 = v2;
  v17 = [v16 assetMetaData];
  v18 = v15 >> 60;
  if (v17)
  {
    v19 = v17;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v15 >> 60;
    v21 = v20;
    v87 = v15;
    v23 = v22;

    v24 = v21;
    v18 = v86;
    v25 = v23;
    v15 = v87;
    sub_1000340DC(v24, v25);
    if (v18 >= 0xF)
    {
      v84 = v4;
      if (qword_100AD0A78 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000617C(v26, qword_100AF1388);
      v27 = v1;
      v28 = Logger.logObject.getter();
      v81 = static os_log_type_t.fault.getter();
      v83 = v28;
      v29 = os_log_type_enabled(v28, v81);
      v82 = v27;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v95 = v79;
        *v30 = 136446466;
        type metadata accessor for AssetType();
        v80 = v13;
        sub_100786420(&qword_100AD8780, &type metadata accessor for AssetType);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;

        v34 = sub_100008458(v31, v33, &v95);

        *(v30 + 4) = v34;
        *(v30 + 12) = 2082;
        type metadata accessor for UUID();
        sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = sub_100008458(v35, v36, &v95);

        *(v30 + 14) = v37;
        v13 = v80;
        v38 = v83;
        _os_log_impl(&_mh_execute_header, v83, v81, "Setting existing non-nil assetMetaData to nil. Asset type: %{public}s, id: %{public}s", v30, 0x16u);
        swift_arrayDestroy();

        v18 = v86;
      }

      else
      {
      }

      v39 = v84;
      (*(v10 + 104))(v12, enum case for JournalFeatureFlags.debug(_:), v9);
      v40 = JournalFeatureFlags.isEnabled.getter();
      (*(v10 + 8))(v12, v9);
      v15 = v87;
      if (v40)
      {
        v41 = 0x6E776F6E6B6E55;
        v95 = 0;
        v96 = 0xE000000000000000;
        _StringGuts.grow(_:)(148);
        v42._countAndFlagsBits = 0x7974207465737341;
        v42._object = 0xEC000000203A6570;
        String.append(_:)(v42);
        v43._countAndFlagsBits = AssetType.rawValue.getter();
        String.append(_:)(v43);

        v44._countAndFlagsBits = 0x492074657373410ALL;
        v44._object = 0xEB00000000203A44;
        String.append(_:)(v44);
        type metadata accessor for UUID();
        sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
        v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v45);

        v46._countAndFlagsBits = 0x617473656D69740ALL;
        v46._object = 0xEC000000203A706DLL;
        String.append(_:)(v46);
        Date.init()();
        sub_100786420(&qword_100AE1D80, &type metadata accessor for Date);
        v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v47);

        (*(v88 + 8))(v6, v39);
        v48._object = 0x8000000100907CC0;
        v48._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v48);
        v49 = *&v1[v94];
        if (v49 && (v50 = [v49 entry]) != 0)
        {
          v51 = v50;
          v52 = [v50 debugDescription];

          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          v56 = v53;
        }

        else
        {
          v55 = 0xE700000000000000;
          v56 = 0x6E776F6E6B6E55;
        }

        v57 = v55;
        String.append(_:)(*&v56);

        v58._object = 0x8000000100907D00;
        v58._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v58);
        v59 = *&v1[v94];
        v60 = v13;
        if (v59)
        {
          v61 = [v59 debugDescription];
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v62;
        }

        else
        {
          v63 = 0xE700000000000000;
        }

        v64._countAndFlagsBits = v41;
        v64._object = v63;
        String.append(_:)(v64);

        v65._countAndFlagsBits = 10;
        v65._object = 0xE100000000000000;
        String.append(_:)(v65);
        (*(v90 + 104))(v89, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v85);
        v66 = v91;
        TTRInfo.init(alertTitle:alertMessage:radarTitle:errorDescription:classification:)();
        v67 = [objc_opt_self() defaultCenter];
        if (qword_100ACFFA0 != -1)
        {
          swift_once();
        }

        v68 = qword_100B2FB90;
        sub_1000F24EC(&qword_100AD5808);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100940080;
        v95 = 0x6F666E49727474;
        v96 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        v70 = v93;
        *(inited + 96) = v93;
        v71 = sub_10001A770((inited + 72));
        v72 = v92;
        (*(v92 + 16))(v71, v66, v70);
        sub_1003630D0(inited);
        swift_setDeallocating();
        sub_100004F84(inited + 32, &unk_100AD5810);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v67 postNotificationName:v68 object:0 userInfo:isa];

        (*(v72 + 8))(v66, v70);
        v13 = v60;
        v15 = v87;
        v18 = v86;
      }
    }
  }

  v74 = *&v1[v94];
  if (!v74)
  {
    goto LABEL_29;
  }

  v75 = v74;
  if (v18 <= 0xE)
  {
    sub_100199918(v13, v15);
    v76 = Data._bridgeToObjectiveC()().super.isa;
    sub_10003A5C8(v13, v15);
  }

  else
  {
    v76 = 0;
  }

  [v75 setAssetMetaData:v76];

  v77 = *&v1[v94];
  if (v77)
  {
    v78 = v77;
    [v78 setIsUploadedToCloud:0];
    sub_10003A5C8(v13, v15);
  }

  else
  {
LABEL_29:
    sub_10003A5C8(v13, v15);
  }
}

void sub_1007799AC(void *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v93 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Date();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRInfo();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v2[*a1])
  {

    v17 = a2(v16);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xF000000000000000;
  }

  v20 = OBJC_IVAR____TtC7Journal5Asset_assetMO;
  v21 = *&v2[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v21)
  {
    goto LABEL_29;
  }

  v22 = [v21 assetMetaData];
  v23 = v19 >> 60;
  if (v22)
  {
    v24 = v22;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v19 >> 60;
    v26 = v25;
    v90 = v19;
    v28 = v27;

    v29 = v26;
    v23 = v89;
    v30 = v28;
    v19 = v90;
    sub_1000340DC(v29, v30);
    if (v23 >= 0xF)
    {
      v87 = v20;
      if (qword_100AD0A78 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000617C(v31, qword_100AF1388);
      v32 = v5;
      v33 = Logger.logObject.getter();
      v84 = static os_log_type_t.fault.getter();
      v86 = v33;
      v34 = os_log_type_enabled(v33, v84);
      v88 = v17;
      v85 = v32;
      if (v34)
      {
        v35 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v99 = v83;
        *v35 = 136446466;
        type metadata accessor for AssetType();
        sub_100786420(&qword_100AD8780, &type metadata accessor for AssetType);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;

        v39 = sub_100008458(v36, v38, &v99);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2082;
        type metadata accessor for UUID();
        sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = sub_100008458(v40, v41, &v99);

        *(v35 + 14) = v42;
        v17 = v88;
        v43 = v86;
        _os_log_impl(&_mh_execute_header, v86, v84, "Setting existing non-nil assetMetaData to nil. Asset type: %{public}s, id: %{public}s", v35, 0x16u);
        swift_arrayDestroy();

        v23 = v89;
      }

      else
      {
      }

      v20 = v87;
      (*(v13 + 104))(v15, enum case for JournalFeatureFlags.debug(_:), v12);
      v44 = JournalFeatureFlags.isEnabled.getter();
      (*(v13 + 8))(v15, v12);
      v19 = v90;
      if (v44)
      {
        v45 = 0x6E776F6E6B6E55;
        v99 = 0;
        v100 = 0xE000000000000000;
        _StringGuts.grow(_:)(148);
        v46._countAndFlagsBits = 0x7974207465737341;
        v46._object = 0xEC000000203A6570;
        String.append(_:)(v46);
        v47._countAndFlagsBits = AssetType.rawValue.getter();
        String.append(_:)(v47);

        v48._countAndFlagsBits = 0x492074657373410ALL;
        v48._object = 0xEB00000000203A44;
        String.append(_:)(v48);
        type metadata accessor for UUID();
        sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
        v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v49);

        v50._countAndFlagsBits = 0x617473656D69740ALL;
        v50._object = 0xEC000000203A706DLL;
        String.append(_:)(v50);
        Date.init()();
        sub_100786420(&qword_100AE1D80, &type metadata accessor for Date);
        v51 = v92;
        v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v52);

        (*(v91 + 8))(v9, v51);
        v53._object = 0x8000000100907CC0;
        v53._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v53);
        v54 = *&v5[v20];
        if (v54 && (v55 = [v54 entry]) != 0)
        {
          v56 = v55;
          v57 = [v55 debugDescription];

          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          v61 = v58;
        }

        else
        {
          v60 = 0xE700000000000000;
          v61 = 0x6E776F6E6B6E55;
        }

        v62 = v60;
        String.append(_:)(*&v61);

        v63._object = 0x8000000100907D00;
        v63._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v63);
        v64 = *&v5[v20];
        if (v64)
        {
          v65 = [v64 debugDescription];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;
        }

        else
        {
          v67 = 0xE700000000000000;
        }

        v68._countAndFlagsBits = v45;
        v68._object = v67;
        String.append(_:)(v68);

        v69._countAndFlagsBits = 10;
        v69._object = 0xE100000000000000;
        String.append(_:)(v69);
        (*(v94 + 104))(v93, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v95);
        v70 = v96;
        TTRInfo.init(alertTitle:alertMessage:radarTitle:errorDescription:classification:)();
        v71 = [objc_opt_self() defaultCenter];
        if (qword_100ACFFA0 != -1)
        {
          swift_once();
        }

        v72 = qword_100B2FB90;
        sub_1000F24EC(&qword_100AD5808);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100940080;
        v99 = 0x6F666E49727474;
        v100 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        v74 = v98;
        *(inited + 96) = v98;
        v75 = sub_10001A770((inited + 72));
        v76 = v97;
        (*(v97 + 16))(v75, v70, v74);
        sub_1003630D0(inited);
        swift_setDeallocating();
        sub_100004F84(inited + 32, &unk_100AD5810);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v71 postNotificationName:v72 object:0 userInfo:isa];

        (*(v76 + 8))(v70, v74);
        v17 = v88;
        v19 = v90;
        v23 = v89;
      }
    }
  }

  v78 = *&v5[v20];
  if (!v78)
  {
    goto LABEL_29;
  }

  v79 = v78;
  if (v23 <= 0xE)
  {
    sub_100199918(v17, v19);
    v80 = Data._bridgeToObjectiveC()().super.isa;
    sub_10003A5C8(v17, v19);
  }

  else
  {
    v80 = 0;
  }

  [v79 setAssetMetaData:v80];

  v81 = *&v5[v20];
  if (v81)
  {
    v82 = v81;
    [v82 setIsUploadedToCloud:0];
    sub_10003A5C8(v17, v19);
  }

  else
  {
LABEL_29:
    sub_10003A5C8(v17, v19);
  }
}

uint64_t sub_10077A4E4(uint64_t a1)
{
  v2[2] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[7] = v5;
  v2[8] = v7;

  return _swift_task_switch(sub_10077A5EC, v5, v7);
}

uint64_t sub_10077A5EC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v0 + 72) = *(*(v0 + 16) + 24);
  *(v0 + 160) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v3 = *(v2 + 104);
  *(v0 + 80) = v3;
  *(v0 + 88) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);

  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_10077A6F8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_100786828, v6, &type metadata for () + 8);
}

uint64_t sub_10077A6F8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[13] = v0;

  v6 = *(v4 + 8);
  v2[14] = v6;
  v2[15] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {
    v9 = sub_10077AC1C;
  }

  else
  {
    v9 = sub_10077A8C0;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10077A8C0()
{
  v1 = [*(v0 + 72) parentContext];
  *(v0 + 128) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 80);
    v4 = *(v0 + 160);
    v5 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_allocObject();
    *(v0 + 136) = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v3(v5, v4, v6);

    v2;
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_10077AA58;
    v10 = *(v0 + 40);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v9, v10, sub_100786844, v8, &type metadata for () + 8);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10077AA58()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(*v1 + 152) = v0;

  v3(v4, v5);

  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_10077ACFC;
  }

  else
  {
    v8 = sub_10077AC88;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10077AC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10077AC88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10077ACFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10077AD70(uint64_t result)
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
      result = sub_10028A754(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
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

void sub_10077AE4C()
{
  v1 = [*(v0 + 32) journals];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for JournalMO();
    sub_100786420(&qword_100ADAA00, &type metadata accessor for JournalMO);
    static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_100495E08(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10077AFA4(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5)
{
  v37 = a5;
  v34 = a1;
  v35 = a4;
  v8 = type metadata accessor for MergeableEntryAttributes();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v36 = a2;
  v38 = a3;
  v15 = sub_1000F24EC(a2);
  v33 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  v24 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(v5 + v24, v14, &qword_100AD6260);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_100004F84(v14, &qword_100AD6260);
    v25 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    v26 = sub_100004F84(v14, &qword_100AD6260);
    v27 = v35;
    v35(v26);
    (*(v9 + 8))(v11, v8);
    v28 = v33;
    v29 = (*(v33 + 32))(v23, v20, v15);
    v27(v29);
    sub_10000B58C(v37, v36);
    v25 = CRDT.requiresMerging(with:)();
    v30 = *(v28 + 8);
    v30(v17, v15);
    v30(v23, v15);
  }

  return v25 & 1;
}

uint64_t sub_10077B2FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v4 - 8);
  v97 = &v90 - v5;
  v98 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v6;
  __chkstk_darwin(v7);
  v95 = &v90 - v8;
  v9 = type metadata accessor for MergeResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v13 - 8);
  v106 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v90 - v16;
  __chkstk_darwin(v17);
  v107 = &v90 - v18;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  v22 = type metadata accessor for MergeableEntryAttributes();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v93 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v99 = &v90 - v26;
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  v31 = __chkstk_darwin(v30);
  v33 = &v90 - v32;
  v34 = *(v23 + 16);
  v92 = v23 + 16;
  v91 = v34;
  (v34)(&v90 - v32, a1, v22, v31);
  v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v105 = v35;
  sub_1000082B4(v2 + v35, v21, &qword_100AD6260);
  v108 = *(v23 + 48);
  v109 = v22;
  if (v108(v21, 1, v22) == 1)
  {
    v36 = v33;
    sub_100004F84(v21, &qword_100AD6260);
  }

  else
  {
    v37 = v21;
    v38 = v109;
    (*(v23 + 32))(v29, v37, v109);
    v36 = v33;
    MergeableEntryAttributes.merge(_:)();
    (*(v10 + 8))(v12, v9);
    (*(v23 + 8))(v29, v38);
  }

  v39 = v23;
  v40 = sub_1004959AC(&off_100A591C8);
  v41 = v106;
  v42 = v107;
  if (qword_100AD08E8 != -1)
  {
    swift_once();
  }

  v103 = *(&xmmword_100B30DB0 + 1);
  v101 = xmmword_100B30DB0;
  sub_1000082B4(v2 + v105, v42, &qword_100AD6260);
  v43 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
  v44 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  v45 = v36;
  v46 = v108;
  v104 = v40;
  if (!v44)
  {
    goto LABEL_13;
  }

  v47 = qword_100AD0A70;
  v96 = v44;
  if (v47 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v48 = type metadata accessor for Logger();
    sub_10000617C(v48, qword_100AF0C08);
    v49 = v103;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v45;
      v54 = v39;
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v52 = 136315138;

      v56 = sub_100008458(v101, v49, aBlock);

      *(v52 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v50, v51, "undoable (%s)", v52, 0xCu);
      sub_10000BA7C(v55);
      v39 = v54;
      v45 = v53;
      v41 = v106;

      v42 = v107;
    }

    v57 = v96;
    v58 = [v96 groupingLevel];
    v46 = v108;
    if (!v58)
    {
      [v57 beginUndoGrouping];
    }

LABEL_13:
    sub_10078509C(v2, v45);
    v59 = *(v2 + v43);
    if (!v59)
    {

      v61 = &qword_100AD6260;
      v60 = v42;
      goto LABEL_22;
    }

    v43 = v102;
    sub_1000082B4(v42, v102, &qword_100AD6260);
    if (v46(v43, 1, v109) == 1)
    {

      sub_100004F84(v42, &qword_100AD6260);
      v60 = v43;
      v61 = &qword_100AD6260;
      goto LABEL_22;
    }

    v62 = v43;
    v43 = v99;
    v63 = v109;
    (*(v39 + 32))(v99, v62, v109);
    sub_1000082B4(v2 + v105, v41, &qword_100AD6260);
    if (v46(v41, 1, v63))
    {

      (*(v39 + 8))(v43, v109);
      sub_100004F84(v42, &qword_100AD6260);
      sub_100004F84(v41, &qword_100AD6260);
      v64 = v97;
      (*(v100 + 56))(v97, 1, 1, v98);
LABEL_21:
      v61 = &qword_100AE94C0;
      v60 = v64;
      goto LABEL_22;
    }

    v65 = v93;
    v66 = v109;
    v91(v93, v41, v109);
    v108 = v59;
    sub_100004F84(v41, &qword_100AD6260);
    v67 = v97;
    MergeableEntryAttributes.actionUndoingDifference(from:)();
    v68 = v66;
    v64 = v67;
    v106 = *(v39 + 8);
    (v106)(v65, v68);
    v69 = v100;
    v70 = v98;
    if ((*(v100 + 48))(v64, 1, v98) == 1)
    {

      (v106)(v43, v109);
      sub_100004F84(v42, &qword_100AD6260);
      goto LABEL_21;
    }

    v74 = v69;
    v96 = *(v69 + 32);
    v75 = v95;
    (v96)(v95, v64, v70);
    v76 = v70;
    v77 = String._bridgeToObjectiveC()();
    [v108 setActionName:v77];

    v78 = v75;
    v79 = v76;
    (*(v74 + 16))(v94, v78, v76);
    v80 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v105 = v39;
    v81 = (v90 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
    v102 = v45;
    v84 = swift_allocObject();
    (v96)(v84 + v80, v94, v79);
    *(v84 + v81) = v104;
    v39 = v105;
    v85 = (v84 + v82);
    v43 = v109;
    v86 = v103;
    *v85 = v101;
    v85[1] = v86;
    v87 = (v84 + v83);
    v88 = (v84 + ((v83 + 23) & 0xFFFFFFFFFFFFFFF8));
    v45 = v102;
    *v87 = 0;
    v87[1] = 0;
    *v88 = 0;
    v88[1] = 0;
    type metadata accessor for EntryViewModel();

    v89 = v108;
    NSUndoManager.registerUndo<A>(withTarget:handler:)();

    (*(v100 + 8))(v95, v79);
    (v106)(v99, v43);
    v61 = &qword_100AD6260;
    v60 = v107;
LABEL_22:
    sub_100004F84(v60, v61);
    v71 = *(v2 + 24);
    v72 = swift_allocObject();
    *(v72 + 16) = sub_100786860;
    *(v72 + 24) = v2;
    aBlock[4] = sub_100177C4C;
    v111 = v72;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001A7D4;
    aBlock[3] = &unk_100A7CE18;
    v41 = _Block_copy(aBlock);
    v42 = v111;

    [v71 performBlockAndWait:v41];
    _Block_release(v41);
    LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

    if ((v71 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  (*(v39 + 8))(v45, v109);
}

id sub_10077BF3C(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_100657094(v1, 0x6F72685465766173, 0xEF2928656C626177, 0x6E6F6320706D6574, 0xEC00000074786574);
  v4 = 0;
  if ([v1 save:&v4])
  {
    return v4;
  }

  v3 = v4;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_10077C02C(uint64_t a1, void *a2)
{
  sub_100657094(a2, 0x6F72685465766173, 0xEF2928656C626177, 0xD000000000000013, 0x80000001008FF260);
  v5 = 0;
  if ([a2 save:&v5])
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_10077C118(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v3 - 8);
  v89 = &v82 - v4;
  v5 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v90 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v7;
  __chkstk_darwin(v6);
  v86 = &v82 - v8;
  v9 = type metadata accessor for MergeableEntryAttributes();
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = __chkstk_darwin(v9);
  v85 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v82 - v13;
  v14 = sub_1000F24EC(&qword_100AD6260);
  v15 = __chkstk_darwin(v14 - 8);
  v95 = (&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __chkstk_darwin(v15);
  v93 = &v82 - v18;
  __chkstk_darwin(v17);
  v20 = &v82 - v19;
  v21 = sub_1000F24EC(&qword_100AE4C80);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v100 = &v82 - v23;
  v101 = v1;
  v24 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
  v25 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  v99 = v20;
  if (v25)
  {
    v26 = v21;
    v27 = OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity;
    v28 = *&v25[OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity];
    v29 = *(v28 + 24);
    v30 = v25;
    if (v29)
    {
      sub_10012B2C8();
      v28 = *&v25[v27];
      v31 = *(v28 + 24);
      *(v28 + 24) = 0;
      if (v31)
      {
        *(v28 + 16) = 0;
      }
    }

    v21 = v26;
    v20 = v99;

    v32 = *(v28 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
      goto LABEL_31;
    }

    *(v28 + 16) = v34;
  }

  v88 = v5;
  v94 = sub_1004959AC(&off_100A586C0);
  if (qword_100AD08F0 != -1)
  {
    swift_once();
  }

  v35 = *(&xmmword_100B30DC0 + 1);
  v92 = xmmword_100B30DC0;
  (*(v22 + 16))(v100, a1, v21);
  v36 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  v37 = v101;
  swift_beginAccess();
  v87 = v36;
  sub_1000082B4(v37 + v36, v20, &qword_100AD6260);
  v38 = *(v37 + v24);
  v5 = v97;
  v96 = v35;
  if (v38)
  {
    v39 = qword_100AD0A70;
    v20 = v38;
    if (v39 == -1)
    {
LABEL_11:
      v40 = type metadata accessor for Logger();
      sub_10000617C(v40, qword_100AF0C08);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102[0] = v44;
        *v43 = 136315138;

        v45 = v22;
        v46 = v21;
        v47 = sub_100008458(v92, v96, v102);

        *(v43 + 4) = v47;
        v21 = v46;
        v22 = v45;
        v5 = v97;
        _os_log_impl(&_mh_execute_header, v41, v42, "undoable (%s)", v43, 0xCu);
        sub_10000BA7C(v44);
      }

      if (![v20 groupingLevel])
      {
        [v20 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_31:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v48 = sub_10077DED0();
  v49 = *(v98 + 48);
  if (!v49(v50, 1, v5))
  {
    MergeableEntryAttributes.merge(text:)();
  }

  (v48)(v102, 0);
  v51 = *(v101 + v24);
  v52 = v99;
  v53 = v95;
  if (v51)
  {
    v54 = v93;
    sub_1000082B4(v99, v93, &qword_100AD6260);
    if (v49(v54, 1, v5) == 1)
    {

      sub_100004F84(v52, &qword_100AD6260);
      (*(v22 + 8))(v100, v21);
      v55 = v54;
      v56 = &qword_100AD6260;
    }

    else
    {
      v82 = v22;
      v58 = v54;
      v59 = v98;
      v60 = v91;
      (*(v98 + 32))(v91, v58, v5);
      sub_1000082B4(v87 + v101, v53, &qword_100AD6260);
      if (v49(v53, 1, v5))
      {

        (*(v59 + 8))(v60, v5);
        sub_100004F84(v52, &qword_100AD6260);
        (*(v82 + 8))(v100, v21);
        sub_100004F84(v53, &qword_100AD6260);
        v61 = v89;
        (*(v90 + 56))(v89, 1, 1, v88);
      }

      else
      {
        v62 = v53;
        v63 = v85;
        (*(v59 + 16))(v85, v62, v5);
        v93 = v51;
        sub_100004F84(v62, &qword_100AD6260);
        v61 = v89;
        MergeableEntryAttributes.actionUndoingDifference(from:)();
        v66 = *(v59 + 8);
        v65 = v59 + 8;
        v64 = v66;
        (v66)(v63, v5);
        v67 = v90;
        v68 = v88;
        if ((*(v90 + 48))(v61, 1, v88) != 1)
        {
          v87 = *(v67 + 32);
          v87(v86, v61, v68);
          v69 = String._bridgeToObjectiveC()();
          v95 = v64;
          v70 = v69;
          [v93 setActionName:v69];

          v71 = v84;
          (*(v67 + 16))(v84, v86, v68);
          v72 = (*(v67 + 80) + 16) & ~*(v67 + 80);
          v73 = (v83 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
          v89 = v21;
          v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
          v75 = (v74 + 23) & 0xFFFFFFFFFFFFFFF8;
          v98 = v65;
          v76 = swift_allocObject();
          v87((v76 + v72), v71, v68);
          *(v76 + v73) = v94;
          v77 = (v76 + v74);
          v78 = v96;
          *v77 = v92;
          v77[1] = v78;
          v79 = (v76 + v75);
          v80 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v79 = 0;
          v79[1] = 0;
          *v80 = 0;
          v80[1] = 0;
          type metadata accessor for EntryViewModel();

          v81 = v93;
          NSUndoManager.registerUndo<A>(withTarget:handler:)();

          (*(v67 + 8))(v86, v68);
          v95(v91, v97);
          sub_100004F84(v99, &qword_100AD6260);
          result = (*(v82 + 8))(v100, v89);
          goto LABEL_28;
        }

        (v64)(v60, v5);
        sub_100004F84(v52, &qword_100AD6260);
        (*(v82 + 8))(v100, v21);
      }

      v56 = &qword_100AE94C0;
      v55 = v61;
    }

    result = sub_100004F84(v55, v56);
  }

  else
  {

    sub_100004F84(v52, &qword_100AD6260);
    result = (*(v22 + 8))(v100, v21);
  }

LABEL_28:
  *(v101 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged) = 1;
  return result;
}

uint64_t sub_10077CC1C(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AE4B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-v3];
  v5 = type metadata accessor for MergeableEntryAssetsPlacement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 104))(v12, enum case for JournalFeatureFlags.enhancedSync(_:), v9);
  v13 = JournalFeatureFlags.isEnabled.getter();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_1000082B4(a1, v4, &unk_100AE4B90);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      return sub_100004F84(v4, &unk_100AE4B90);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      v15 = sub_10077DED0();
      v17 = v16;
      v18 = type metadata accessor for MergeableEntryAttributes();
      if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
      {
        MergeableEntryAttributes.merge(assetPlacement:)();
      }

      (v15)(v19, 0);
      return (*(v6 + 8))(v8, v5);
    }
  }

  return result;
}

void sub_10077CEFC(id a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v4 - 8);
  v86 = v79 - v5;
  v87 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v6;
  __chkstk_darwin(v7);
  v85 = v79 - v8;
  v9 = type metadata accessor for MergeableEntryAttributes();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v93 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v92 = v79 - v13;
  v14 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v14 - 8);
  v95 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = (v79 - v17);
  __chkstk_darwin(v18);
  v20 = v79 - v19;
  __chkstk_darwin(v21);
  v99 = v79 - v22;
  v23 = sub_1000F24EC(&unk_100AD6240);
  v101 = *(v23 - 8);
  v102 = v23;
  __chkstk_darwin(v23);
  v89 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v100 = v79 - v26;
  v27 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
  v28 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  v98 = v10;
  if (v28)
  {
    v29 = OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity;
    v30 = *&v28[OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity];
    v31 = *(v30 + 24);
    v10 = v28;
    if (v31 != 1)
    {
      sub_10012B2C8();
      v30 = *&v28[v29];
      v32 = *(v30 + 24);
      *(v30 + 24) = 1;
      if (v32 != 1)
      {
        *(v30 + 16) = 0;
      }
    }

    v33 = *(v30 + 16);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      __break(1u);
      goto LABEL_34;
    }

    *(v30 + 16) = v35;

    v10 = v98;
  }

  v94 = sub_1004959AC(&off_100A58D78);
  if (qword_100AD08F0 != -1)
  {
    swift_once();
  }

  v28 = *(&xmmword_100B30DC0 + 1);
  v90 = xmmword_100B30DC0;
  (*(v101 + 16))(v100, a1, v102);
  v36 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v97 = v36;
  sub_1000082B4(v2 + v36, v99, &qword_100AD6260);
  v37 = *(v2 + v27);
  v91 = v28;
  if (v37)
  {
    v38 = qword_100AD0A70;
    a1 = v37;
    if (v38 == -1)
    {
LABEL_11:
      v39 = type metadata accessor for Logger();
      sub_10000617C(v39, qword_100AF0C08);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = v9;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v103[0] = v44;
        *v43 = 136315138;

        v45 = sub_100008458(v90, v28, v103);

        *(v43 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "undoable (%s)", v43, 0xCu);
        sub_10000BA7C(v44);

        v9 = v42;
        v10 = v98;
      }

      if (![a1 groupingLevel])
      {
        [a1 beginUndoGrouping];
      }

      goto LABEL_16;
    }

LABEL_34:
    swift_once();
    goto LABEL_11;
  }

LABEL_16:
  v46 = sub_10077DED0();
  v47 = *(v10 + 6);
  if (!v47(v48, 1, v9))
  {
    MergeableEntryAttributes.merge(title:)();
  }

  (v46)(v103, 0);
  v49 = *(v2 + v27);
  v50 = v99;
  v51 = v96;
  if (!v49)
  {

    sub_100004F84(v50, &qword_100AD6260);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_22;
  }

  sub_1000082B4(v99, v20, &qword_100AD6260);
  if (v47(v20, 1, v9) == 1)
  {

    sub_100004F84(v50, &qword_100AD6260);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_100004F84(v20, &qword_100AD6260);
LABEL_22:
    v53 = v95;
    v54 = v97;
    goto LABEL_28;
  }

  v55 = v92;
  (*(v10 + 4))(v92, v20, v9);
  v54 = v97;
  sub_1000082B4(v2 + v97, v51, &qword_100AD6260);
  if (v47(v51, 1, v9))
  {

    (*(v10 + 1))(v55, v9);
    sub_100004F84(v50, &qword_100AD6260);
    v52 = *(v101 + 8);
    v52(v100, v102);
    v10 = v98;
    sub_100004F84(v51, &qword_100AD6260);
    v56 = v86;
    (*(v88 + 56))(v86, 1, 1, v87);
LABEL_27:
    v53 = v95;
    sub_100004F84(v56, &qword_100AE94C0);
    goto LABEL_28;
  }

  v57 = v93;
  (*(v10 + 2))(v93, v51, v9);
  v82 = v49;
  sub_100004F84(v51, &qword_100AD6260);
  v56 = v86;
  MergeableEntryAttributes.actionUndoingDifference(from:)();
  v96 = *(v10 + 1);
  v96(v57, v9);
  v58 = v88;
  v59 = v87;
  if ((*(v88 + 48))(v56, 1, v87) == 1)
  {

    v96(v92, v9);
    sub_100004F84(v99, &qword_100AD6260);
    v52 = *(v101 + 8);
    v52(v100, v102);
    goto LABEL_27;
  }

  v66 = *(v58 + 32);
  v79[1] = v58 + 32;
  v80 = v66;
  v66(v85, v56, v59);
  v67 = String._bridgeToObjectiveC()();
  v81 = v10 + 8;
  v68 = v67;
  [v82 setActionName:v67];

  (*(v58 + 16))(v84, v85, v59);
  v69 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v70 = (v83 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
  v86 = v9;
  v73 = swift_allocObject();
  v80(v73 + v69, v84, v59);
  *(v73 + v70) = v94;
  v74 = (v73 + v71);
  v75 = v91;
  *v74 = v90;
  v74[1] = v75;
  v76 = (v73 + v72);
  v77 = (v73 + ((v72 + 23) & 0xFFFFFFFFFFFFFFF8));
  v9 = v86;
  v54 = v97;
  v10 = v98;
  *v76 = 0;
  v76[1] = 0;
  *v77 = 0;
  v77[1] = 0;
  type metadata accessor for EntryViewModel();

  v78 = v82;
  NSUndoManager.registerUndo<A>(withTarget:handler:)();

  (*(v88 + 8))(v85, v59);
  v96(v92, v9);
  sub_100004F84(v99, &qword_100AD6260);
  v52 = *(v101 + 8);
  v52(v100, v102);
  v53 = v95;
LABEL_28:
  sub_1000082B4(v2 + v54, v53, &qword_100AD6260);
  if (v47(v53, 1, v9))
  {
    sub_100004F84(v53, &qword_100AD6260);
    v60 = 0;
  }

  else
  {
    v61 = v93;
    (*(v10 + 2))(v93, v53, v9);
    sub_100004F84(v53, &qword_100AD6260);
    v62 = v89;
    MergeableEntryAttributes.title.getter();
    (*(v10 + 1))(v61, v9);
    v63 = [objc_allocWithZone(UITraitCollection) init];
    v64 = sub_1003D4D2C();
    v103[3] = &_s22TitleAttributeProviderVN;
    v103[4] = v64;
    sub_10001A770(v103);
    sub_100786420(&qword_100AE4B78, &type metadata accessor for MergeableTitleAttributeScope);
    v65 = v102;
    v60 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();

    sub_10000BA7C(v103);
    v52(v62, v65);
  }

  sub_10078009C(v60);

  *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged) = 1;
}

void sub_10077DC04(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 id];
  if (v8)
  {
    v9 = v8;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = sub_10077DED0();
    v12 = v11;
    v13 = type metadata accessor for MergeableEntryAttributes();
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      MergeableEntryAttributes.addAssociatedJournal(id:)();
    }

    (v10)(v20, 0);
    [*(v2 + 32) addJournalsObject:a1];
    sub_1007852C0();
    sub_100783A88();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    if (qword_100AD0A68 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AF0BF0);
    v19 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v19, v15, "Journal is missing an ID", v16, 2u);
    }

    v17 = v19;
  }
}

uint64_t sub_10077DF30(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = &_swiftEmptySetSingleton;
    v11 = &_swiftEmptySetSingleton;
    v5 = *(v1 + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < *(v1 + 16))
      {
        v7 = v6 + 1;

        result = sub_10077AD70(v8);
        v6 = v7;
        if (v5 == v7)
        {
          v4 = v11;
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      if (v4[2])
      {
        v9 = type metadata accessor for MainActor();
        __chkstk_darwin(v9);
        v10[2] = v3;
        v10[3] = v4;
        sub_1004C6B58(sub_100786478, v10);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10077E074()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007852C0();
    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10077E0F4()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1);
  v3 = &v18[-v2];
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  v4._countAndFlagsBits = 0x6569567972746E45;
  v4._object = 0xEF5B6C65646F4D77;
  String.append(_:)(v4);
  v5 = type metadata accessor for UUID();
  sub_100786420(&qword_100AE19B0, &type metadata accessor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8285;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v18[15] = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x6E4577654E736920;
  v8._object = 0xED0000203A797274;
  String.append(_:)(v8);
  if (*(v0 + 40))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._countAndFlagsBits = 0x203A6F6D20;
  v12._object = 0xE500000000000000;
  String.append(_:)(v12);
  v13 = [*(v0 + 32) id];
  if (v13)
  {
    v14 = v13;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  (*(*(v5 - 8) + 56))(v3, v15, 1, v5);
  v16._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v16);

  return v19;
}

uint64_t sub_10077E370(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  if (sub_1000405A8(1, a1) & 1) != 0 || (sub_1000405A8(4, a1))
  {

    sub_10003A464();
  }

  else
  {
  }

  if ((sub_1000405A8(0, a1) & 1) != 0 && (sub_10078199C() & 1) == 0)
  {
    sub_10044AFF0(0);
    if (qword_100AD0A68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AF0BF0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18[0] = v8;
      *v7 = 136315138;
      swift_beginAccess();
      sub_1003E4844();

      v9 = Set.description.getter();
      v11 = v10;

      v12 = sub_100008458(v9, v11, v18);

      *(v7 + 4) = v12;
      sub_10000BA7C(v8);
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v13 = *(v2 + 56);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v15 = v19;
  v16 = *(v13 + 8);

  v16(v2, v15, ObjectType, v13);
  swift_bridgeObjectRelease_n();
  return swift_unknownObjectRelease();
}

uint64_t sub_10077E5EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1000F24EC(&qword_100AD1420);
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v3[12] = v7;
  v3[13] = v9;

  return _swift_task_switch(sub_10077E780, v7, v9);
}

uint64_t sub_10077E780()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  if (v1)
  {
    [v1 removeAllActions];
  }

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_10077E838;
  v3 = v0[3];
  v4 = v0[2];

  return sub_1001FF3C8(v4, v3);
}

uint64_t sub_10077E838()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10077E958, v3, v2);
}

uint64_t sub_10077E958()
{
  if (qword_100AD0A68 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_10000617C(v1, qword_100AF0BF0);
  swift_retain_n();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543618;
    v8 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2048;
    v9 = *(v5 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (v9 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v8;

    *(v6 + 14) = v10;

    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}@ (finishEditingAndSave) assets.count: %ld", v6, 0x16u);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10077EB94;
  v13 = v0[2];

  return sub_100780A08(v13);
}

uint64_t sub_10077EB94()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10077ECB4, v3, v2);
}

uint64_t sub_10077ECB4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v0[17] = *(v0[4] + 24);
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10077EDB0;
  v5 = v0[11];
  v6 = v0[4];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v4, v5, sub_10078680C, v6, &type metadata for () + 8);
}

uint64_t sub_10077EDB0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v4 = v2[12];
    v5 = v2[13];

    return _swift_task_switch(sub_10077EF04, v4, v5);
  }
}

uint64_t sub_10077EF04()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10077EFB0;
  v2 = *(v0 + 16);

  return sub_10077A4E4(v2);
}

uint64_t sub_10077EFB0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10077F33C;
  }

  else
  {
    v5 = sub_10077F0EC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10077F0EC()
{
  v22 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_1000082B4(v0[4] + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v3, &qword_100AD1420);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[5], &qword_100AD1420);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[4];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = [*(v6 + 32) debugDescription];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = sub_100008458(v10, v12, &v21);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error getting entry id for in-progress deregister %s", v7, 0xCu);
      sub_10000BA7C(v8);
    }
  }

  else
  {
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    (*(v15 + 32))(v14, v0[5], v16);
    v17 = UUID.uuidString.getter();
    sub_100124B70(v17, v18);

    (*(v15 + 8))(v14, v16);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10077F33C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 136);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412546;
    *(v4 + 4) = v3;
    *v5 = v3;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = v3;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v7;
    v5[1] = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "(finishEditingAndSave) Error saving editing context %@: %@", v4, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

id sub_10077F4F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ([v1 isDraft] && (objc_msgSend(v1, "isRemovedFromCloud") & 1) == 0)
  {
    [v1 setIsDraft:0];
  }

  return sub_100783D2C();
}

id sub_10077F568@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(a1 + 32) isDraft];
  *a2 = result;
  return result;
}

void sub_10077F5F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for JournalFeatureFlags.enhancedSync(_:), v4, v6);
  v9 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (qword_100AD0A68 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100AF0BF0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v13, 2u);
    }

    sub_10077F814(a1, a2);
  }

  else
  {
    v14 = objc_allocWithZone(NSAttributedString);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithString:v15];

    sub_10078009C(v16);
  }
}

uint64_t sub_10077F814(uint64_t a1, uint64_t a2)
{
  v23[1] = a1;
  v23[2] = a2;
  v3 = type metadata accessor for MergeableEntryAttributes();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = sub_1000F24EC(&unk_100AD6240);
  v23[0] = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v23 - v14;
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(v2 + v19, v9, &qword_100AD6260);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    return sub_100004F84(v9, &qword_100AD6260);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_100004F84(v9, &qword_100AD6260);
  MergeableEntryAttributes.title.getter();
  (*(v4 + 8))(v6, v3);
  v21 = v23[0];
  (*(v23[0] + 32))(v18, v15, v10);
  CRAttributedString.replaced(with:)();
  sub_10077CEFC(v12);
  v22 = *(v21 + 8);
  v22(v12, v10);
  return (v22)(v18, v10);
}

void sub_10077FB2C(void *a1)
{
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for JournalFeatureFlags.enhancedSync(_:), v2, v4);
  v7 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (qword_100AD0A68 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AF0BF0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Replacing mergeable title with a non-mergeable string. This may result in an incorrect merge.", v11, 2u);
    }

    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = [objc_allocWithZone(NSAttributedString) init];
    }

    v13 = a1;
    sub_10077FD28(v12);
  }

  else
  {
    sub_10078009C(a1);
  }
}

uint64_t sub_10077FD28(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1000F24EC(&unk_100AD6240);
  v24 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  __chkstk_darwin(v15);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(v1 + v18, v8, &qword_100AD6260);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_100004F84(v8, &qword_100AD6260);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_100004F84(v8, &qword_100AD6260);
  MergeableEntryAttributes.title.getter();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v14, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_100786420(&qword_100AE4B78, &type metadata accessor for MergeableTitleAttributeScope);
  CRAttributedString<>.replaced(with:traitCollection:)();

  sub_10077CEFC(v11);
  v22 = *(v20 + 8);
  v22(v11, v9);
  return (v22)(v17, v9);
}

void sub_10078009C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 string];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    aBlock = v10;
    v23 = v12;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v13 = StringProtocol.trimmingCharacters(in:)();
    v15 = v14;
    (*(v5 + 8))(v8, v4);

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = a1;
    }

    else
    {
      a1 = 0;
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle);
  *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle) = a1;

  v19 = *(v2 + 24);
  v20 = swift_allocObject();
  swift_weakInit();
  v26 = sub_1007867E0;
  v27 = v20;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100006C7C;
  v25 = &unk_100A7CD78;
  v21 = _Block_copy(&aBlock);

  [v19 performBlock:v21];
  _Block_release(v21);
}

void sub_1007802C4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [*(Strong + 32) setShowTitle:*(Strong + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle)];
    [*(v5 + 32) setIsUploadedToCloud:0];
    v6 = *(v5 + 32);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
    [v6 setUpdatedDate:isa];
  }
}

void sub_100780424(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.enhancedSync(_:), v4);
  v8 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
    v15 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    if (a1)
    {
      if (v15)
      {
        sub_1000065A8(0, &qword_100AE4890);
        v16 = a1;
        v17 = v15;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          goto LABEL_16;
        }
      }
    }

    else if (!v15)
    {
LABEL_16:
      v13 = *(v2 + v14);
      *(v2 + v14) = a1;
      v20 = a1;
      goto LABEL_17;
    }

    *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged) = 1;
    goto LABEL_16;
  }

  if (qword_100AD0A68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000617C(v9, qword_100AF0BF0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
  }

  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = [objc_allocWithZone(NSAttributedString) init];
  }

  v19 = a1;
  sub_100780694(v13);
LABEL_17:
}

uint64_t sub_100780694(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_1000F24EC(&qword_100AE4C80);
  v24 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v23 - v14;
  __chkstk_darwin(v13);
  v17 = &v23 - v16;
  v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  sub_1000082B4(v1 + v18, v8, &qword_100AD6260);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    return sub_100004F84(v8, &qword_100AD6260);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_100004F84(v8, &qword_100AD6260);
  MergeableEntryAttributes.text.getter();
  (*(v3 + 8))(v5, v2);
  v20 = v24;
  (*(v24 + 32))(v17, v15, v9);
  v21 = [objc_allocWithZone(UITraitCollection) init];
  sub_100786420(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
  CRAttributedString<>.replaced(with:traitCollection:)();

  sub_10077C118(v12);
  v22 = *(v20 + 8);
  v22(v12, v9);
  return (v22)(v17, v9);
}

uint64_t sub_100780A08(uint64_t a1)
{
  v2[11] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for MergeableEntryAttributes();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6260);
  v2[18] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE4C80);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
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

  v2[25] = v8;
  v2[26] = v10;

  return _swift_task_switch(sub_100780C5C, v8, v10);
}

uint64_t sub_100780C5C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[18];
    v6 = v0[15];
    v7 = v0[16];
    v8 = v0[11];
    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v8 + v9, v5, &qword_100AD6260);
    if ((*(v7 + 48))(v5, 1, v6))
    {
      sub_100004F84(v0[18], &qword_100AD6260);
LABEL_10:
      v27 = 0;
      goto LABEL_12;
    }

    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[18];
    v32 = v0[19];
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[15];
    (*(v34 + 16))(v33, v31, v35);
    sub_100004F84(v31, &qword_100AD6260);
    MergeableEntryAttributes.text.getter();
    (*(v34 + 8))(v33, v35);
    v27 = sub_100781344();
    (*(v30 + 8))(v29, v32);
  }

  else
  {
    v10 = *(v0[11] + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = v10;
    v12 = [v11 string];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    v13 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v12];

    v14 = [objc_opt_self() labelColor];
    v15 = [objc_opt_self() systemFontOfSize:0.0];
    v16 = [v11 length];
    if (v16 < 0)
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
    }

    v21 = v16;
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v14;
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v13;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1007868E0;
    *(v23 + 24) = v22;
    v0[6] = sub_1003E4A14;
    v0[7] = v23;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10007F714;
    v0[5] = &unk_100A7CCB0;
    v24 = _Block_copy(v0 + 2);
    v25 = v15;
    v26 = v14;
    v27 = v13;

    [v11 enumerateAttributesInRange:0 options:v21 usingBlock:{0, v24}];

    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

LABEL_12:
  v0[27] = v27;
  v37 = v0[13];
  v36 = v0[14];
  v39 = v0[11];
  v38 = v0[12];
  v40 = swift_allocObject();
  v0[28] = v40;
  *(v40 + 16) = v39;
  *(v40 + 24) = v27;
  (*(v37 + 104))(v36, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v38);

  v41 = v27;
  v16 = swift_task_alloc();
  v0[29] = v16;
  *v16 = v0;
  *(v16 + 8) = sub_100781138;
  v17 = v0[14];
  v18 = sub_1007867C4;
  v20 = &type metadata for () + 8;
  v19 = v40;

  return NSManagedObjectContext.perform<A>(schedule:_:)(v16, v17, v18, v19, v20);
}

uint64_t sub_100781138()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);

    v4 = v2[25];
    v5 = v2[26];

    return _swift_task_switch(sub_10078128C, v4, v5);
  }
}

uint64_t sub_10078128C()
{
  v1 = *(v0 + 88);

  *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100781344()
{
  v0 = [objc_allocWithZone(UITraitCollection) init];
  v20 = type metadata accessor for CustomAttributeProviderConcrete();
  v21 = sub_100786420(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
  v1 = sub_10001A770(v19);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  Logger.init(subsystem:category:)();
  v3 = v2 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v3 + 4) = 0;
  *v3 = 2;
  *v1 = v2;
  sub_1000F24EC(&qword_100AE4C80);
  sub_100786420(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
  v4 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();

  sub_10000BA7C(v19);
  v5 = v4;
  v6 = [v5 string];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v6];

  v8 = [objc_opt_self() labelColor];
  v9 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v5 length];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = v8;
    v12[4] = 0;
    v12[5] = 0;
    v12[6] = v7;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1007868E0;
    *(v13 + 24) = v12;
    v21 = sub_1003E4A14;
    v22 = v13;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10007F714;
    v20 = &unk_100A7CD28;
    v14 = _Block_copy(v19);
    v15 = v9;
    v16 = v8;
    v17 = v7;

    [v5 enumerateAttributesInRange:0 options:v11 usingBlock:{0, v14}];

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

void sub_10078170C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    [*(a1 + 32) setText:0];
    goto LABEL_14;
  }

  v4 = NSAttributedString.getAttributedStringAsData()();
  if (v5 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10003A5C8(v7, v8);
  }

  [v2 setText:isa];

  v9 = [a2 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = String.count.getter();

  if (v10 < 0x8000)
  {
    if (v10 < -32768)
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_14:
    v15 = JournalEntryMO.assetsArrayUnsorted.getter();
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v16)
      {
LABEL_16:
        LOWORD(v10) = 0;
        goto LABEL_21;
      }

LABEL_19:
      v18 = [v2 title];
      if (v18)
      {
        v19 = v18;
        v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        sub_1000340DC(v10, v21);
        LOWORD(v10) = 1;
        goto LABEL_21;
      }

      goto LABEL_16;
    }

LABEL_18:
    v17 = _CocoaArrayWrapper.endIndex.getter();

    if (v17)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (qword_100AD0A68 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000617C(v11, qword_100AF0BF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218240;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2147418624;
    _os_log_impl(&_mh_execute_header, v12, v13, "EntryViewModel: reducing textLength stored property value of (%ld) to Int16.max (%hd)", v14, 0x10u);
  }

  LOWORD(v10) = 0x7FFF;
LABEL_21:
  [v2 setTextLength:v10];
  sub_1007852C0();
  sub_100783A88();
}

uint64_t sub_10078199C()
{
  v1 = OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged;
  if (*(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged))
  {
    return 0;
  }

  v3 = v0;
  sub_1000F24EC(&qword_100AD64D8);
  NSManagedObjectContext.performAndWait<A>(_:)();
  v5 = aBlock;
  v4 = v42;
  v6 = *(v0 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
  v39 = aBlock;
  v40 = v42;
  if (v6)
  {
    v37 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
    v38 = v1;
    v7 = v6;
    v8 = [v7 string];
    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    v9 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v8];

    v10 = [objc_opt_self() labelColor];
    v11 = [objc_opt_self() systemFontOfSize:0.0];
    result = [v7 length];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v12 = result;
      v13 = swift_allocObject();
      v13[2] = v11;
      v13[3] = v10;
      v13[4] = 0;
      v13[5] = 0;
      v13[6] = v9;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1007868E0;
      *(v14 + 24) = v13;
      v45 = sub_1003E4A14;
      v46 = v14;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_10007F714;
      v44 = &unk_100A7CC10;
      v15 = _Block_copy(&aBlock);
      v16 = v11;
      v17 = v10;
      v18 = v9;

      [v7 enumerateAttributesInRange:0 options:v12 usingBlock:{0, v15}];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v5 = v39;
        v4 = v40;
        if (v40 >> 60 == 15)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v42 >> 60 == 15)
  {
    return 0;
  }

  v37 = OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText;
  v38 = v1;
  v18 = 0;
LABEL_12:
  sub_100049ED8(v5, v4);
  v20 = Data.getAttributedString()();
  sub_10003A5C8(v5, v4);
  if (!v20)
  {
    sub_10003A5C8(v5, v4);
    if (v18)
    {
LABEL_21:

      v32 = 0;
      goto LABEL_23;
    }

    return 0;
  }

  v21 = v20;
  v22 = [v21 string];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v22];

  v24 = [objc_opt_self() labelColor];
  v25 = [objc_opt_self() systemFontOfSize:0.0];
  result = [v21 length];
  if (result < 0)
  {
    goto LABEL_26;
  }

  v26 = result;
  v27 = swift_allocObject();
  v27[2] = v25;
  v27[3] = v24;
  v27[4] = 0;
  v27[5] = 0;
  v27[6] = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000804A0;
  *(v28 + 24) = v27;
  v45 = sub_100080460;
  v46 = v28;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10007F714;
  v44 = &unk_100A7CB98;
  v29 = _Block_copy(&aBlock);
  v30 = v25;
  v31 = v24;
  v32 = v23;

  [v21 enumerateAttributesInRange:0 options:v26 usingBlock:{0, v29}];

  _Block_release(v29);
  v33 = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    if (!v18)
    {
      sub_10003A5C8(v39, v40);
      goto LABEL_23;
    }

    sub_1000065A8(0, &qword_100AE4890);
    v34 = v32;
    v35 = static NSObject.== infix(_:_:)();
    sub_10003A5C8(v39, v40);

    if ((v35 & 1) == 0)
    {
LABEL_23:
      v36 = *(v3 + v37);
      *(v3 + v37) = v32;

      *(v3 + v38) = 0;
      return 1;
    }

    return 0;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_100781F80(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(a1 + 32) text];
  if (v3)
  {
    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_10078200C(uint64_t a1, void *a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    isa = *(result + *a2);
    if (isa)
    {
      v8 = v6;
      v9 = isa;
      v10 = NSAttributedString.getAttributedStringAsData()();
      v12 = v11;

      if (v12 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10003A5C8(v10, v12);
      }
    }

    else
    {
      v13 = v6;
    }

    [v6 *a3];

    sub_100783A88();
  }

  return result;
}

uint64_t sub_1007820FC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE2AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(v0 + 32);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v15 setEntryDate:isa];

  EntryDateSource.rawValue.getter();
  v17 = String._bridgeToObjectiveC()();

  [v15 setDateSource:v17];

  JournalEntryMO.updateSortingColumns()();
  sub_100783A88();
  v18 = [v15 entryDate];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = *(v9 + 32);
    v20(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v20(v14, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    Date.init()();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_100004F84(v7, &unk_100AD4790);
    }
  }

  v21 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  swift_beginAccess();
  v22 = *(v9 + 40);
  v22(v1 + v21, v14, v8);
  swift_endAccess();
  v23 = [v15 dateSource];
  if (v23)
  {
    v24 = v23;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  EntryDateSource.init(rawValue:)();
  v25 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
  swift_beginAccess();
  sub_100014318(v4, v1 + v25, &qword_100AE2AA0);
  swift_endAccess();
  JournalEntryMO.displayDate.getter();
  v26 = OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate;
  swift_beginAccess();
  v22(v1 + v26, v12, v8);
  return swift_endAccess();
}

uint64_t sub_1007824F0(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v4 = type metadata accessor for EntryDateSource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 24);
  (*(v9 + 16))(v11, a1, v8);
  (*(v5 + 16))(v7, v18, v4);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  (*(v9 + 32))(v14 + v12, v11, v8);
  (*(v5 + 32))(v14 + v13, v7, v4);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1007866E0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_100177C4C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A7CB20;
  v16 = _Block_copy(aBlock);

  [v19 performBlockAndWait:v16];
  _Block_release(v16);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    aBlock[0] = sub_1004959AC(&off_100A56440);
    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10078281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[3] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  v8 = type metadata accessor for EntryDateSource();
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v5[15] = *(v11 + 64);
  v5[16] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v5[17] = v12;
  v5[18] = v14;

  return _swift_task_switch(sub_1007829E4, v12, v14);
}

uint64_t sub_1007829E4()
{
  v1 = v0[16];
  v16 = v1;
  v17 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v18 = v0[7];
  v19 = v0[6];
  v20 = v0[8];
  v7 = v0[3];
  v15 = v0[4];
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v7, v2);
  (*(v5 + 16))(v4, v15, v6);
  v9 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v10 = (v17 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[19] = v11;
  *(v11 + 16) = v8;
  (*(v3 + 32))(v11 + v9, v16, v2);
  (*(v5 + 32))(v11 + v10, v4, v6);
  (*(v18 + 104))(v20, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v19);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_100782C00;
  v13 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 21, v13, sub_1007864BC, v11, &type metadata for Bool);
}

uint64_t sub_100782C00()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v2[17];
    v5 = v2[18];

    return _swift_task_switch(sub_100782D54, v4, v5);
  }
}

uint64_t sub_100782D54()
{
  if (*(v0 + 168) == 1)
  {
    *(v0 + 16) = sub_1004959AC(&off_100A58738);
    PassthroughSubject.send(_:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100782E0C@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007820FC();

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_100782EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 32);

    v7 = [v6 createdDate];

    if (v7)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v4, v8, 1, v11);
    return sub_100021CEC(v4, a1, &unk_100AD4790);
  }

  else
  {
    v9 = type metadata accessor for Date();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

void sub_100783048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v30 = a4;
    v31 = v9;
    v32 = v4;
    v15 = *(Strong + 32);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v15 setBundleId:isa];

    v17 = *(v14 + 32);
    sub_1000082B4(a3, v12, &unk_100AD4790);
    v18 = type metadata accessor for Date();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    v21 = v20(v12, 1, v18);
    v22 = v17;
    v23 = 0;
    if (v21 != 1)
    {
      v23 = Date._bridgeToObjectiveC()().super.isa;
      (*(v19 + 8))(v12, v18);
    }

    [v22 setBundleDate:v23];

    v24 = *(v14 + 32);
    v25 = v31;
    sub_1000082B4(v30, v31, &unk_100AD4790);
    v26 = v20(v25, 1, v18);
    v27 = v24;
    if (v26 == 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = Date._bridgeToObjectiveC()().super.isa;
      (*(v19 + 8))(v25, v18);
    }

    [v27 setBundleEndDate:v28];
  }
}

id sub_1007832E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 setShowPhotoMemoryBanner:*(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner)];

  return [v1 setIsUploadedToCloud:0];
}

uint64_t sub_10078333C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked) != (result & 1))
  {
    v2 = *(v1 + 24);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1003182C4;
    *(v4 + 24) = v3;
    v6[4] = sub_100028EF4;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_10001A7D4;
    v6[3] = &unk_100A7CA80;
    v5 = _Block_copy(v6);

    [v2 performBlockAndWait:v5];
    _Block_release(v5);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }

    else
    {
      v6[0] = sub_1004959AC(&off_100A58AD8);
      PassthroughSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_1007834DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) setFlagged:*(result + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked)];
    sub_100783A88();
  }

  return result;
}

uint64_t sub_100783550(uint64_t *a1, void **a2, void *a3)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v15 = a3;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      a3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for DrawingAsset();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v7;
      if (a3 == i)
      {
        a3 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_15:

  v10 = *a2;
  if (*a2)
  {
    v11 = *a3;
    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D50;
    *(inited + 32) = v10;
    v13 = v10;

    sub_1006AD688(inited);
    sub_1006AD688(&_swiftEmptyArrayStorage);

    return v11;
  }

  else
  {
    v16 = *a3;

    sub_1006AD688(&_swiftEmptyArrayStorage);
    return v16;
  }
}

uint64_t sub_100783744(uint64_t a1)
{
  v34 = a1;
  v2 = type metadata accessor for AssetType();
  v26 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v6 = v23)
  {
    v29 = v6 & 0xC000000000000001;
    v24 = v6 + 32;
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = v26 + 16;
    v33 = v34 + 56;
    v8 = (v26 + 8);
    v27 = v6;

    v30 = 0;
    v9 = 0;
    v28 = i;
    while (1)
    {
      if (v29)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v25 + 16))
        {
          goto LABEL_21;
        }

        v6 = *(v24 + 8 * v9);
      }

      v10 = v6;
      v11 = __OFADD__(v9, 1);
      v12 = v9 + 1;
      if (v11)
      {
        break;
      }

      v31 = v12;
      if (*(v34 + 16) && (v13 = v34, sub_100786420(&qword_100ADFEE0, &type metadata accessor for AssetType), v14 = dispatch thunk of Hashable._rawHashValue(seed:)(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        v18 = *(v26 + 72);
        v19 = *(v26 + 16);
        while (1)
        {
          v19(v4, *(v34 + 48) + v18 * v16, v2);
          sub_100786420(&qword_100ADC690, &type metadata accessor for AssetType);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v8)(v4, v2);
          if (v20)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        v21 = sub_1004448B0();

        if (__OFADD__(v30, v21))
        {
          goto LABEL_20;
        }

        v30 += v21;
      }

      v9 = v31;
      if (v31 == v28)
      {

        return v30;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v23 = v6;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return 0;
}

void sub_100783A88()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = *(v0 + 32);
  [v11 setIsUploadedToCloud:0];
  if ((*(v0 + 40) & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    v19 = v12;
    sub_1000082B4(v0 + v12, v10, &unk_100AD4790);
    LODWORD(v12) = (*(v2 + 48))(v10, 1, v1);
    sub_100004F84(v10, &unk_100AD4790);
    if (v12 == 1)
    {
      v13 = [v11 updatedDate];
      if (v13)
      {
        v14 = v13;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      (*(v2 + 56))(v8, v15, 1, v1);
      v16 = v19;
      swift_beginAccess();
      sub_100014318(v8, v0 + v16, &unk_100AD4790);
      swift_endAccess();
    }
  }

  static Date.now.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v11 setUpdatedDate:isa];
}

id sub_100783D2C()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v33 = &v31 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  result = [*(v0 + 32) id];
  if (result)
  {
    v32 = v3;
    v21 = v8;
    v22 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v21;
    (*(v14 + 32))(v19, v17, v13);
    v24 = OBJC_IVAR____TtC7Journal14EntryViewModel_originalUpdatedDate;
    swift_beginAccess();
    sub_1000082B4(v0 + v24, v6, &unk_100AD4790);
    if ((*(v21 + 48))(v6, 1, v7) == 1)
    {
      (*(v14 + 8))(v19, v13);
      return sub_100004F84(v6, &unk_100AD4790);
    }

    else
    {
      v25 = v33;
      (*(v21 + 32))(v33, v6, v7);
      v26 = v32;
      (*(v14 + 16))(v32, v19, v13);
      (*(v14 + 56))(v26, 0, 1, v13);
      (*(v23 + 16))(v11, v25, v7);
      v27 = objc_allocWithZone(type metadata accessor for StreakEventAsset());
      v28 = v11;
      v29 = v0;
      v30 = sub_100894920(v26, v28);

      sub_1007799AC(&OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata, sub_100785CA0);
      (*(v23 + 8))(v25, v7);
      return (*(v14 + 8))(v19, v13);
    }
  }

  return result;
}

unint64_t sub_100784150()
{
  result = qword_100AF11B8;
  if (!qword_100AF11B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF11B8);
  }

  return result;
}

uint64_t sub_10078424C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  if ([v3 isDeleted] & 1) != 0 || (objc_msgSend(v3, "isRemovedFromCloud"))
  {
    result = 1;
  }

  else
  {
    result = [v3 isFullyRemoved];
  }

  *a2 = result;
  return result;
}

uint64_t sub_1007842C4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = v13 - v9;
  v11 = [*(a1 + 32) deletedOnDate];
  if (v11)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  result = sub_100004F84(v10, &unk_100AD4790);
  *a2 = v11 != 0;
  return result;
}

uint64_t sub_100784474@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EntryViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_1007844B4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
  *a1 = v2;
  return v2;
}

uint64_t sub_1007844CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(void), void (*a7)(void), uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v111 = a7;
  v108 = a4;
  v109 = a5;
  v113 = a3;
  v12 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v12 - 8);
  v106 = &v93 - v13;
  v14 = type metadata accessor for MergeableEntryAttributes();
  v112 = *(v14 - 8);
  __chkstk_darwin(v14);
  v101 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v93 - v17;
  v18 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v18 - 8);
  v105 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v93 - v21;
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  v26 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v99 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v102 = &v93 - v30;
  v98 = v31;
  v33 = __chkstk_darwin(v32);
  v35 = &v93 - v34;
  v36 = *(v27 + 16);
  v115 = v37;
  v97 = v27 + 16;
  v96 = v36;
  (v36)(&v93 - v34, a2, v33);
  v38 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
  swift_beginAccess();
  v104 = v38;
  v114 = v25;
  sub_1000082B4(v38 + a1, v25, &qword_100AD6260);
  v39 = OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager;
  v40 = *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  v110 = a6;
  if (v40)
  {
    v41 = qword_100AD0A70;
    v103 = v40;
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000617C(v42, qword_100AF0C08);
    v43 = v109;

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v94 = a1;
      v48 = v47;
      v116 = v47;
      *v46 = 136315138;
      v49 = v43 == 0;
      v95 = v27;
      v50 = v22;
      if (v43)
      {
        v51 = v108;
      }

      else
      {
        v51 = 45;
      }

      v52 = v43;
      v53 = v35;
      v54 = v14;
      if (v49)
      {
        v55 = 0xE100000000000000;
      }

      else
      {
        v55 = v52;
      }

      v56 = sub_100008458(v51, v55, &v116);
      v14 = v54;
      v35 = v53;

      *(v46 + 4) = v56;
      v22 = v50;
      v27 = v95;
      _os_log_impl(&_mh_execute_header, v44, v45, "undoable (%s)", v46, 0xCu);
      sub_10000BA7C(v48);
      a1 = v94;
    }

    a6 = v110;
    v57 = v103;
    if (![v103 groupingLevel])
    {
      [v57 beginUndoGrouping];
    }
  }

  sub_100784E50(a1, v35);
  if (a6)
  {
    a6();
  }

  v58 = *(a1 + v39);
  if (!v58)
  {
    v63 = &qword_100AD6260;
    v62 = v114;
    goto LABEL_26;
  }

  v59 = v114;
  sub_1000082B4(v114, v22, &qword_100AD6260);
  v60 = v112;
  v61 = *(v112 + 48);
  if (v61(v22, 1, v14) == 1)
  {
    sub_100004F84(v59, &qword_100AD6260);
    v62 = v22;
    v63 = &qword_100AD6260;
LABEL_26:
    sub_100004F84(v62, v63);
    return (*(v27 + 8))(v35, v115);
  }

  v64 = *(v60 + 32);
  v65 = v60;
  v66 = v107;
  v64(v107, v22, v14);
  v67 = v105;
  sub_1000082B4(v104 + a1, v105, &qword_100AD6260);
  if (v61(v67, 1, v14))
  {
    (*(v65 + 8))(v66, v14);
    sub_100004F84(v114, &qword_100AD6260);
    sub_100004F84(v67, &qword_100AD6260);
    v68 = v106;
    (*(v27 + 56))(v106, 1, 1, v115);
LABEL_25:
    v63 = &qword_100AE94C0;
    v62 = v68;
    goto LABEL_26;
  }

  v69 = v101;
  (*(v65 + 16))(v101, v67, v14);
  v104 = v58;
  sub_100004F84(v67, &qword_100AD6260);
  v68 = v106;
  MergeableEntryAttributes.actionUndoingDifference(from:)();
  v72 = *(v65 + 8);
  v71 = v65 + 8;
  v70 = v72;
  (v72)(v69, v14);
  if ((*(v27 + 48))(v68, 1, v115) == 1)
  {

    (v70)(v66, v14);
    sub_100004F84(v114, &qword_100AD6260);
    goto LABEL_25;
  }

  v101 = v70;
  v94 = a1;
  v103 = v35;
  v112 = v71;
  v105 = v14;
  v93 = a9;
  v106 = *(v27 + 32);
  (v106)(v102, v68, v115);
  v74 = v109;
  if (v109)
  {
    v75 = String._bridgeToObjectiveC()();
    [v104 setActionName:v75];
  }

  v76 = v99;
  v77 = v115;
  v96(v99, v102, v115);
  v78 = *(v27 + 80);
  v95 = v27;
  v79 = (v78 + 16) & ~v78;
  v80 = (v98 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v84 = v83 + v79;
  v27 = v95;
  (v106)(v84, v76, v77);
  *(v83 + v80) = v113;
  v85 = (v83 + v81);
  *v85 = v108;
  v85[1] = v74;
  v86 = (v83 + v82);
  v87 = v100;
  v88 = v93;
  *v86 = v100;
  v86[1] = v88;
  v89 = (v83 + ((v82 + 23) & 0xFFFFFFFFFFFFFFF8));
  v91 = v110;
  v90 = v111;
  *v89 = v110;
  v89[1] = v90;

  sub_100021E80(v87);
  sub_100021E80(v91);
  type metadata accessor for EntryViewModel();
  v92 = v104;
  NSUndoManager.registerUndo<A>(withTarget:handler:)();

  (*(v27 + 8))(v102, v77);
  (v101)(v107, v105);
  sub_100004F84(v114, &qword_100AD6260);
  v35 = v103;
  return (*(v27 + 8))(v35, v115);
}

void sub_100784E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE94C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_10077DED0();
  v9 = v8;
  v10 = type metadata accessor for MergeableEntryAttributes();
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = type metadata accessor for MergeableEntryAttributes.MutatingAction();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, a2, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    MergeableEntryAttributes.apply(_:)();
    sub_100004F84(v6, &qword_100AE94C0);
  }

  (v7)(v18, 0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a1 + 56);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(a2, a1, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = *(a1 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
  if (v15)
  {
    swift_beginAccess();
    v16 = v15;

    sub_10077AD70(v17);
    swift_endAccess();
  }
}

uint64_t sub_10078509C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MergeableEntryAttributes();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_1000F24EC(&qword_100AE4B88);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8 + 16;
  v10 = sub_10077DED0();
  if ((*(v4 + 48))(v11, 1, v3))
  {
    (v10)(v16, 0);
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    (*(v4 + 16))(v6, a2, v3);
    MergeableEntryAttributes.merge(_:)();
    (*(v4 + 8))(v6, v3);
    (v10)(v16, 0);
    v12 = 0;
  }

  v13 = type metadata accessor for MergeResult();
  (*(*(v13 - 8) + 56))(v9, v12, 1, v13);
  return sub_100004F84(v9, &qword_100AE4B88);
}

uint64_t sub_1007852C0()
{
  v1 = v0;
  v39 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v39);
  v38 = &v35[-v2];
  v3 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v3 - 8);
  v5 = &v35[-v4];
  v6 = type metadata accessor for MergeableEntryAttributes();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v35[-v11];
  v13 = type metadata accessor for JournalFeatureFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 104))(v16, enum case for JournalFeatureFlags.enhancedSync(_:), v13);
  v17 = JournalFeatureFlags.isEnabled.getter();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v19 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v19, v5, &qword_100AD6260);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      return sub_100004F84(v5, &qword_100AD6260);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      v20 = *(v1 + 32);
      v21 = [v20 mergeableAttributes];
      if (v21)
      {
      }

      else
      {
        if (qword_100AD0A68 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000617C(v22, qword_100AF0BF0);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v41 = v37;
          *v25 = 136446466;
          v40 = *(v1 + 16);
          v26 = String.init<A>(describing:)();
          v28 = sub_100008458(v26, v27, &v41);
          v36 = v24;
          v29 = v28;

          *(v25 + 4) = v29;
          *(v25 + 12) = 2082;
          sub_1000082B4(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v38, &qword_100AD1420);
          v30 = String.init<A>(describing:)();
          v32 = sub_100008458(v30, v31, &v41);

          *(v25 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v23, v36, "Migrating legacy fields to mergeable attributes (mode: %{public}s) for entry ID %{public}s", v25, 0x16u);
          swift_arrayDestroy();
        }
      }

      (*(v7 + 16))(v10, v12, v6);
      v33 = objc_allocWithZone(type metadata accessor for WrappedMergeableEntryAttributes());
      v34 = WrappedMergeableEntryAttributes.init(_:)();
      [v20 setMergeableAttributes:v34];

      return (*(v7 + 8))(v12, v6);
    }
  }

  return result;
}

uint64_t sub_1007857D8()
{
  v1 = type metadata accessor for DrawingAssetMetadata();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD6C98);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  v7 = (v0 + *(*v0 + 112));
  v8 = *v7;
  v9 = v7[1];
  v10 = *v7;
  if (v9 >> 60 == 11)
  {
    sub_1000082B4(v0 + *(*v0 + 120), v6, &qword_100AD6C98);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v18;
      (*(v18 + 32))(v3, v6, v1);
      sub_100786420(&qword_100AD6C50, &type metadata accessor for DrawingAssetMetadata);
      v10 = Encodable.asData.getter();
      v13 = v12;
      (*(v11 + 8))(v3, v1);
    }

    else
    {
      v10 = *v6;
      v13 = v6[1];
    }

    v14 = *v7;
    v15 = v7[1];
    *v7 = v10;
    v7[1] = v13;
    sub_100199918(v10, v13);
    sub_100057C04(v14, v15);
  }

  sub_1007864A8(v8, v9);
  return v10;
}

uint64_t sub_100785A3C()
{
  v1 = type metadata accessor for AudioAssetMetadata();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD8FA0);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  v7 = (v0 + *(*v0 + 112));
  v8 = *v7;
  v9 = v7[1];
  v10 = *v7;
  if (v9 >> 60 == 11)
  {
    sub_1000082B4(v0 + *(*v0 + 120), v6, &qword_100AD8FA0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v18;
      (*(v18 + 32))(v3, v6, v1);
      sub_100786420(&qword_100AD8F58, &type metadata accessor for AudioAssetMetadata);
      v10 = Encodable.asData.getter();
      v13 = v12;
      (*(v11 + 8))(v3, v1);
    }

    else
    {
      v10 = *v6;
      v13 = v6[1];
    }

    v14 = *v7;
    v15 = v7[1];
    *v7 = v10;
    v7[1] = v13;
    sub_100199918(v10, v13);
    sub_100057C04(v14, v15);
  }

  sub_1007864A8(v8, v9);
  return v10;
}

uint64_t sub_100785CA0()
{
  v1 = type metadata accessor for StreakEvent();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100ADA628);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  v7 = (v0 + *(*v0 + 112));
  v8 = *v7;
  v9 = v7[1];
  v10 = *v7;
  if (v9 >> 60 == 11)
  {
    sub_1000082B4(v0 + *(*v0 + 120), v6, &qword_100ADA628);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v11 = v18;
      (*(v18 + 32))(v3, v6, v1);
      sub_100786420(&qword_100AF11F0, &type metadata accessor for StreakEvent);
      v10 = Encodable.asData.getter();
      v13 = v12;
      (*(v11 + 8))(v3, v1);
    }

    else
    {
      v10 = *v6;
      v13 = v6[1];
    }

    v14 = *v7;
    v15 = v7[1];
    *v7 = v10;
    v7[1] = v13;
    sub_100199918(v10, v13);
    sub_100057C04(v14, v15);
  }

  sub_1007864A8(v8, v9);
  return v10;
}

uint64_t sub_100785F04@<X0>(uint64_t *a1@<X8>)
{
  result = JournalEntryMO.assetOrderingDictionary.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100785F40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_100286DEC(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_100785FB0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100286F3C(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_1007860F8(uint64_t a1)
{
  v2 = type metadata accessor for AppNavigationSidebarController.Item(0) - 8;
  v3 = __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v3);
  v9 = &v13 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_10001C8B8(v11, v5, type metadata accessor for AppNavigationSidebarController.Item);
      sub_1002894A8(v9, v5);
      result = sub_100786864(v9, type metadata accessor for AppNavigationSidebarController.Item);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

void sub_100786228(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100288038(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_100786300(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts) = a1;
  v3 = a1;

  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1007863F4;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100006C7C;
  v7[3] = &unk_100A7CA30;
  v6 = _Block_copy(v7);

  [v4 performBlock:v6];
  _Block_release(v6);
}

uint64_t sub_100786420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007864A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_100199918(a1, a2);
  }

  return a1;
}

uint64_t sub_1007864BC@<X0>(char *a1@<X8>)
{
  type metadata accessor for Date();
  type metadata accessor for EntryDateSource();
  return sub_100782E0C(a1);
}

uint64_t sub_100786590()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for EntryDateSource();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1007866E0()
{
  type metadata accessor for Date();
  type metadata accessor for EntryDateSource();
  return sub_1007820FC();
}

uint64_t sub_100786864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_100786930(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView;
  v12 = *&v10[OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView];
  v13 = v10;
  v14 = v12;
  [v13 bounds];
  [v14 setFrame:?];

  [*&v10[v11] setAutoresizingMask:18];
  [*&v10[v11] setClipsToBounds:1];
  [v13 addSubview:*&v10[v11]];

  return v13;
}

void sub_100786B7C(double a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  objc_msgSendSuper2(&v6, "setCornerRadius:", a1);
  if ([v1 delegate])
  {
    type metadata accessor for ThirdPartyMediaShadowEffectView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView);
      swift_unknownObjectRelease();
      v5 = [v4 layer];

      if (v5)
      {
        [v1 cornerRadius];
        [v5 setCornerRadius:?];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_100786D2C(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  objc_msgSendSuper2(&v7, "setCornerCurve:", a1);
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  type metadata accessor for ThirdPartyMediaShadowEffectView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView);
    swift_unknownObjectRelease();
    v5 = [v4 layer];

    if (v5)
    {
      v6 = [v1 cornerCurve];
      [v5 setCornerCurve:v6];
    }

LABEL_5:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_100786EFC(__int128 *a1)
{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ThirdPartyMediaShadowEffectView.Layer();
  objc_msgSendSuper2(&v11, "setCornerRadii:", &v7);
  if ([v1 delegate])
  {
    type metadata accessor for ThirdPartyMediaShadowEffectView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC7Journal31ThirdPartyMediaShadowEffectView_contentView);
      swift_unknownObjectRelease();
      v6 = [v5 layer];

      if (v6)
      {
        [v1 cornerRadii];
        [v6 setCornerRadii:&v7];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

id sub_100787190(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100787220()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  v1 = [v0 stringForObjectValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_1007872F0()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setNumberStyle:1];
  v1 = [v0 stringForObjectValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v2;
}

void sub_1007873C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal15AdminComposerVC_infoLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal15AdminComposerVC_textView;
  *&v1[v4] = [objc_allocWithZone(UITextView) init];
  v5 = OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable;
  *&v1[v5] = [objc_allocWithZone(UITableView) init];
  v6 = OBJC_IVAR____TtC7Journal15AdminComposerVC_toolbar;
  *&v1[v6] = [objc_allocWithZone(UIToolbar) init];
  *&v1[OBJC_IVAR____TtC7Journal15AdminComposerVC_undoButton] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15AdminComposerVC_redoButton] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15AdminComposerVC_model] = a1;
  v143.receiver = v1;
  v143.super_class = type metadata accessor for AdminComposerVC();

  v7 = objc_msgSendSuper2(&v143, "initWithNibName:bundle:", 0, 0);
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_56;
  }

  v9 = v8;
  v141 = OBJC_IVAR____TtC7Journal15AdminComposerVC_infoLabel;
  [v8 addSubview:*&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_infoLabel]];

  v10 = [v7 view];
  if (!v10)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC7Journal15AdminComposerVC_textView;
  [v10 addSubview:*&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_textView]];

  v13 = [v7 view];
  if (!v13)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v14 = v13;
  v140 = v12;
  v139 = OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable;
  [v13 addSubview:*&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable]];

  v15 = [v7 view];
  if (!v15)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtC7Journal15AdminComposerVC_toolbar;
  [v15 addSubview:*&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_toolbar]];

  v18 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:21 target:v7 action:"doUndo"];
  v19 = OBJC_IVAR____TtC7Journal15AdminComposerVC_undoButton;
  v20 = *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_undoButton];
  *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_undoButton] = v18;

  v21 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:22 target:v7 action:"doRedo"];
  v22 = OBJC_IVAR____TtC7Journal15AdminComposerVC_redoButton;
  v23 = *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_redoButton];
  *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_redoButton] = v21;

  v24 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:3 target:v7 action:"doSave"];
  v25 = OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton;
  v26 = *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton];
  *&v7[OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton] = v24;

  v27 = *&v7[v17];
  sub_1000F24EC(&unk_100AD4780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100941D70;
  v29 = *&v7[v19];
  if (!v29)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  *(v28 + 32) = v29;
  v30 = *&v7[v22];
  if (!v30)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  *(v28 + 40) = v30;
  v138 = v25;
  v31 = *&v7[v25];
  if (!v31)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  *(v28 + 48) = v31;
  sub_10078B630();
  v32 = v27;
  v33 = v31;
  v34 = v30;
  v35 = v29;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setItems:isa];

  v37 = *&v7[v17];
  v38 = [v37 superview];
  if (v38)
  {
    v39 = v38;
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v37 topAnchor];
    v41 = [v39 safeAreaLayoutGuide];
    v42 = [v41 topAnchor];

    v43 = [v40 constraintEqualToAnchor:v42];
    [v43 setConstant:0.0];
    if (v43)
    {
      [v43 setActive:1];
    }
  }

  else
  {
    v43 = 0;
    v39 = v37;
  }

  v44 = *&v7[v17];
  v45 = [v44 superview];
  if (v45)
  {
    v46 = v45;
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [v44 trailingAnchor];
    v48 = [v46 trailingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];

    [v49 setConstant:0.0];
    if (v49)
    {
      [v49 setActive:1];
    }
  }

  else
  {
    v49 = 0;
    v46 = v44;
  }

  v50 = *&v7[v17];
  v51 = [v50 superview];
  if (v51)
  {
    v52 = v51;
    [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = [v50 leadingAnchor];
    v54 = [v52 leadingAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    [v55 setConstant:0.0];
    if (v55)
    {
      [v55 setActive:1];
    }
  }

  else
  {
    v55 = 0;
    v52 = v50;
  }

  v56 = *&v7[v17];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  v57 = [v56 heightAnchor];
  v58 = [v57 constraintEqualToConstant:44.0];

  [v58 setActive:1];
  v59 = *&v7[v17];
  v60 = *&v7[v141];
  v61 = v59;
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [v60 topAnchor];
  v63 = [v61 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:5.0];
  [v64 setActive:1];

  v65 = *&v7[v141];
  v66 = [v65 superview];
  if (v66)
  {
    v67 = v66;
    [v65 setTranslatesAutoresizingMaskIntoConstraints:0];
    v68 = [v65 trailingAnchor];
    v69 = [v67 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    [v70 setConstant:0.0];
    if (v70)
    {
      [v70 setActive:1];
    }
  }

  else
  {
    v70 = 0;
    v67 = v65;
  }

  v71 = *&v7[v141];
  v72 = [v71 superview];
  if (v72)
  {
    v73 = v72;
    [v71 setTranslatesAutoresizingMaskIntoConstraints:0];
    v74 = [v71 leadingAnchor];
    v75 = [v73 leadingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];

    [v76 setConstant:0.0];
    if (v76)
    {
      [v76 setActive:1];
    }

    v77 = v140;
  }

  else
  {
    v76 = 0;
    v73 = v71;
    v77 = v140;
  }

  v78 = *&v7[v141];
  [v78 setTranslatesAutoresizingMaskIntoConstraints:0];
  v79 = [v78 heightAnchor];
  v80 = [v79 constraintEqualToConstant:100.0];

  [v80 setActive:1];
  v81 = *&v7[v141];
  v82 = *&v7[v77];
  v83 = v81;
  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  v84 = [v82 topAnchor];
  v85 = [v83 bottomAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  [v86 setConstant:5.0];
  [v86 setActive:1];

  v87 = *&v7[v77];
  v88 = [v87 superview];
  if (v88)
  {
    v89 = v88;
    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
    v90 = [v87 trailingAnchor];
    v91 = [v89 trailingAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];

    [v92 setConstant:5.0];
    if (v92)
    {
      [v92 setActive:1];
    }

    v93 = v140;
  }

  else
  {
    v92 = 0;
    v89 = v87;
    v93 = v140;
  }

  v94 = *&v7[v93];
  v95 = [v94 superview];
  if (v95)
  {
    v96 = v95;
    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = [v94 leadingAnchor];
    v98 = [v96 leadingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];

    [v99 setConstant:5.0];
    if (v99)
    {
      [v99 setActive:1];
    }
  }

  else
  {
    v99 = 0;
    v96 = v94;
  }

  v100 = *&v7[v93];
  [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
  v101 = [v100 heightAnchor];
  v102 = [v101 constraintEqualToConstant:100.0];

  [v102 setActive:1];
  v103 = *&v7[v93];
  v104 = *&v7[v139];
  v105 = v103;
  [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = [v104 topAnchor];
  v107 = [v105 bottomAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  [v108 setConstant:10.0];
  [v108 setActive:1];

  v109 = *&v7[v139];
  v110 = [v109 superview];
  if (v110)
  {
    v111 = v110;
    [v109 setTranslatesAutoresizingMaskIntoConstraints:0];
    v112 = [v109 trailingAnchor];
    v113 = [v111 trailingAnchor];
    v114 = [v112 constraintEqualToAnchor:v113];

    [v114 setConstant:0.0];
    if (v114)
    {
      [v114 setActive:1];
    }
  }

  else
  {
    v114 = 0;
    v111 = v109;
  }

  v115 = *&v7[v139];
  v116 = sub_10031BD74(0, 0.0);

  v117 = *&v7[v139];
  v118 = [v117 superview];
  if (v118)
  {
    v119 = v118;
    [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
    v120 = [v117 leadingAnchor];
    v121 = [v119 leadingAnchor];
    v122 = [v120 constraintEqualToAnchor:v121];

    [v122 setConstant:0.0];
    if (v122)
    {
      [v122 setActive:1];
    }

    v123 = &off_100AF1000;
    v124 = v140;
  }

  else
  {
    v122 = 0;
    v119 = v117;
    v123 = &off_100AF1000;
    v124 = v140;
  }

  [*&v7[v139] setEditing:1 animated:0];
  v125 = v7;
  v126 = String._bridgeToObjectiveC()();
  [v125 setTitle:v126];

  v127 = *&v7[v124];
  v128 = v123[76];
  v129 = *&v128[v125];
  v130 = objc_opt_self();
  v131 = v127;

  v132 = [v130 currentTraitCollection];
  type metadata accessor for CustomAttributeProviderConcrete();
  v133 = swift_allocObject();
  *(v133 + 16) = 0;
  Logger.init(subsystem:category:)();
  v134 = v133 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v134 + 4) = 0;
  *v134 = 2;
  v135 = sub_100789EB0(v132, v133, v129);

  [v131 setAttributedText:v135];
  [*&v7[v124] setDelegate:v125];
  *(*&v128[v125] + 56) = &off_100A7CE68;
  swift_unknownObjectWeakAssign();

  v136 = *&v7[v138];
  if (v136)
  {
    v137 = v136;
    NSManagedObjectContext.performAndWait<A>(_:)();
    [v137 setEnabled:v142];

    sub_1007886A0();

    return;
  }

LABEL_62:
  __break(1u);
}

void sub_100788578()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton);
  if (v1)
  {
    v2 = v1;
    NSManagedObjectContext.performAndWait<A>(_:)();
    [v2 setEnabled:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_1007886A0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2);
  v4 = &v35 - v3;
  v5 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v36 = 0;
  v37 = 0xE000000000000000;
  v35._countAndFlagsBits = 0x203A74786574;
  v35._object = 0xE600000000000000;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_model);
  v9 = [objc_opt_self() currentTraitCollection];
  type metadata accessor for CustomAttributeProviderConcrete();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  Logger.init(subsystem:category:)();
  v11 = v10 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v11 + 4) = 0;
  *v11 = 2;
  v12 = sub_100789EB0(v9, v10, v8);

  if (!v12)
  {
    v13 = objc_allocWithZone(NSAttributedString);
    v14 = String._bridgeToObjectiveC()();
    v12 = [v13 initWithString:v14];
  }

  v15 = [v12 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  String.append(_:)(v35);

  strcpy(&v35, "bundleId: ");
  BYTE3(v35._object) = 0;
  HIDWORD(v35._object) = -369098752;
  v21 = [*(v8 + 32) bundleId];
  if (v21)
  {
    v22 = v21;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = type metadata accessor for UUID();
    (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  }

  else
  {
    v24 = type metadata accessor for UUID();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  }

  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  String.append(_:)(v35);

  strcpy(&v35, "bundleDate: ");
  BYTE5(v35._object) = 0;
  HIWORD(v35._object) = -5120;
  v27 = [*(v8 + 32) bundleDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 56))(v4, v29, 1, v30);
  v31._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  String.append(_:)(v35);

  v33 = *(v1 + OBJC_IVAR____TtC7Journal15AdminComposerVC_infoLabel);
  v34 = String._bridgeToObjectiveC()();

  [v33 setText:v34];
}

void sub_100788B40()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AdminComposerVC();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable];
    [v1 addSubview:v3];

    [v3 setDataSource:v0];
    [v3 setDelegate:v0];
    v4 = [v0 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100941D50;
    *(v5 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:3 target:v0 action:"save"];
    sub_10078B630();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setRightBarButtonItems:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100788CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100788D88, v6, v5);
}

uint64_t sub_100788D88()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1002B812C;

  return sub_10077E5EC(v1, &protocol witness table for MainActor);
}

id sub_100788FA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdminComposerVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007892C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100789358, v7, v6);
}

uint64_t sub_100789358()
{
  v1 = v0[4];
  v0[7] = *(v0[2] + OBJC_IVAR____TtC7Journal15AdminComposerVC_model);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[8] = v2;
  v0[9] = v4;

  return _swift_task_switch(sub_1003BC568, v2, v4);
}

uint64_t sub_100789510()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);
  return 1;
}

uint64_t sub_1007895DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for IndexSet();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_1007896D4, v9, v8);
}

uint64_t sub_1007896D4()
{
  v1 = v0[8];
  IndexPath.row.getter();
  IndexSet.init(integer:)();
  v2 = IndexPath.row.getter();

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1007897C4;
  v4 = v0[7];

  return sub_1005700DC(v1, &protocol witness table for MainActor, v4, v2);
}

uint64_t sub_1007897C4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_100789964, v6, v5);
}

uint64_t sub_100789964()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100789CE0(void *a1)
{
  sub_1000F24EC(&unk_100AE88B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100940080;
  v3 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v4 = [a1 text];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8._countAndFlagsBits = v6;
  v8._object = v3;
  String.append(_:)(v8);

  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000023;
  *(v2 + 40) = 0x8000000100908040;
  print(_:separator:terminator:)();

  v9 = [a1 textStorage];
  sub_100780424(v9);
}

void *sub_100789EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = type metadata accessor for MergeableEntryAttributes();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1000F24EC(&qword_100AE4C80);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for JournalFeatureFlags();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v27[4] = sub_10078A294(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
  v27[0] = a2;
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v14);

  LOBYTE(a2) = JournalFeatureFlags.isEnabled.getter();
  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v18 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_10007BD08(a3 + v18, v10);
    v19 = v26;
    if ((*(v26 + 48))(v10, 1, v5))
    {
      sub_100416458(v10);
      v20 = 0;
    }

    else
    {
      (*(v19 + 16))(v7, v10, v5);
      sub_100416458(v10);
      MergeableEntryAttributes.text.getter();
      (*(v19 + 8))(v7, v5);
      sub_10078A294(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
      v20 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();
      (*(v24 + 8))(v13, v11);
    }
  }

  else
  {
    v20 = *(a3 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    v21 = v20;
  }

  sub_10000BA7C(v27);
  return v20;
}

uint64_t sub_10078A294(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10078A2DC(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_1007895DC(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

void sub_10078A408()
{
  v1 = OBJC_IVAR____TtC7Journal15AdminComposerVC_infoLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC7Journal15AdminComposerVC_textView;
  *(v0 + v2) = [objc_allocWithZone(UITextView) init];
  v3 = OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable;
  *(v0 + v3) = [objc_allocWithZone(UITableView) init];
  v4 = OBJC_IVAR____TtC7Journal15AdminComposerVC_toolbar;
  *(v0 + v4) = [objc_allocWithZone(UIToolbar) init];
  *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_undoButton) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_redoButton) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10078A514()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_model);
  v2 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  if (*(v1 + v2) >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0x2820737465737341;
}

uint64_t sub_10078A5E8()
{
  v2 = type metadata accessor for FileStoreConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC7Journal15AdminComposerVC_model);
  p_ivar_lyt = IndexPath.row.getter();
  v12 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v13 = *&v10[v12];
  *&v95 = v7;
  v92 = v3;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((p_ivar_lyt & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (p_ivar_lyt < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *&v13[8 * p_ivar_lyt + 32];
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_76;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
  v1 = [objc_allocWithZone(UITableViewCell) initWithStyle:3 reuseIdentifier:0];
  v14 = [v1 textLabel];
  v94 = v1;
  if (v14)
  {
    v3 = v14;
    AssetType.rawValue.getter();
    v13 = v15;
    v16 = String._bridgeToObjectiveC()();

    [v3 setText:v16];

    v1 = v94;
  }

  v17 = [v1 textLabel];
  if (v17)
  {
    v13 = v17;
    v3 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightBold];
    [v13 setFont:v3];
  }

  v18 = [v1 detailTextLabel];
  if (v18)
  {
    v13 = v18;
    [v18 setNumberOfLines:0];
  }

  v19 = [v1 textLabel];
  if (v19)
  {
    v13 = v19;
    [v19 setNumberOfLines:0];
  }

  v102 = _swiftEmptyArrayStorage;
  v20 = *&v10[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  v93 = v10;
  if (!v20)
  {
    goto LABEL_52;
  }

  v91 = v6;
  *&v100 = 0;
  *(&v100 + 1) = 0xE000000000000000;
  v3 = v20;
  _StringGuts.grow(_:)(21);

  *&v100 = 0xD000000000000013;
  *(&v100 + 1) = 0x80000001008E83E0;
  v21 = [v3 isUploadedToCloud];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 5457241;
  }

  else
  {
    v23 = 20302;
  }

  if (v22)
  {
    v24 = 0xE200000000000000;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v96._countAndFlagsBits = 0x7461646174654D0ALL;
  v96._object = 0xEB00000000203A61;
  v26 = [v3 assetMetaData];
  if (v26)
  {
    v27 = v26;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v31 != 2)
      {
LABEL_30:
        sub_1000340DC(v28, v30);
LABEL_31:
        v33 = sub_100787220();
        v32 = v37;
        goto LABEL_32;
      }

      v35 = *(v28 + 16);
      v34 = *(v28 + 24);
      sub_1000340DC(v28, v30);
      result = v34 - v35;
      if (!__OFSUB__(v34, v35))
      {
        goto LABEL_31;
      }

      __break(1u);
    }

    else
    {
      if (!v31)
      {
        goto LABEL_30;
      }

      result = sub_1000340DC(v28, v30);
      if (!__OFSUB__(HIDWORD(v28), v28))
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  v32 = 0xE100000000000000;
  v33 = 48;
LABEL_32:
  v38 = v32;
  String.append(_:)(*&v33);

  v39._countAndFlagsBits = 0x736574796220;
  v39._object = 0xE600000000000000;
  String.append(_:)(v39);
  String.append(_:)(v96);

  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v96._countAndFlagsBits = 0xD000000000000012;
  v96._object = 0x80000001008E8400;
  v40 = sub_1000958AC(0);
  if (v40)
  {
    v41 = v40;
    v42 = [v40 data];

    if (v42)
    {
      v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = v45 >> 62;
      if ((v45 >> 62) <= 1)
      {
        if (!v46)
        {
          goto LABEL_43;
        }

        result = sub_1000340DC(v43, v45);
        if (!__OFSUB__(HIDWORD(v43), v43))
        {
          goto LABEL_44;
        }

LABEL_83:
        __break(1u);
        return result;
      }

      if (v46 != 2)
      {
LABEL_43:
        sub_1000340DC(v43, v45);
LABEL_44:
        v48 = sub_100787220();
        v47 = v51;
        goto LABEL_45;
      }

      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      sub_1000340DC(v43, v45);
      result = v49 - v50;
      if (!__OFSUB__(v49, v50))
      {
        goto LABEL_44;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  v47 = 0xE100000000000000;
  v48 = 48;
LABEL_45:
  v52 = v47;
  String.append(_:)(*&v48);

  v53._countAndFlagsBits = 0x736574796220;
  v53._object = 0xE600000000000000;
  String.append(_:)(v53);
  String.append(_:)(v96);

  v54 = [v3 fileAttachment];
  if (v54)
  {
    v55 = v54;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static FileStoreConfiguration.shared.getter();
    FileStoreConfiguration.getAttachmentURL(from:)();

    v92[1](v5, v2);
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v96._countAndFlagsBits = 0xD000000000000019;
    v96._object = 0x80000001008E8420;
    URL.fileSize.getter();
    if (v56)
    {
      v57 = 0xE100000000000000;
      v58 = 48;
    }

    else
    {
      v58 = sub_100787220();
      v57 = v59;
    }

    v60 = v91;
    v61 = v57;
    String.append(_:)(*&v58);

    v62._countAndFlagsBits = 0x736574796220;
    v62._object = 0xE600000000000000;
    String.append(_:)(v62);
    String.append(_:)(v96);

    (*(v95 + 8))(v9, v60);
  }

  v10 = *(&v100 + 1);
  p_ivar_lyt = v100;
  v13 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
  v64 = *(v13 + 2);
  v63 = *(v13 + 3);
  v7 = v64 + 1;
  if (v64 >= v63 >> 1)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v1 = v94;

    *(v13 + 2) = v7;
    v65 = &v13[16 * v64];
    *(v65 + 4) = p_ivar_lyt;
    *(v65 + 5) = v10;
    v102 = v13;
    v10 = v93;
LABEL_52:
    v7 = *&v10[OBJC_IVAR____TtC7Journal5Asset_attachments];
    p_ivar_lyt = 0x100AA5000;
    if (v7 >> 62)
    {
LABEL_76:
      v64 = _CocoaArrayWrapper.endIndex.getter();
      if (!v64)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v63 = v7 & 0xFFFFFFFFFFFFFF8;
      v64 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        goto LABEL_61;
      }
    }

    if (v64 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_79:
    v13 = sub_10009BCC8((v63 > 1), v7, 1, v13);
  }

  v66 = 0;
  v95 = xmmword_100940080;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    ++v66;
    sub_1000F24EC(&unk_100AD9A60);
    inited = swift_initStackObject();
    *(inited + 16) = v95;
    *(inited + 32) = sub_10080F78C();
    *(inited + 40) = v68;
    sub_1006AD7E8(inited);
  }

  while (v64 != v66);

  v10 = v93;
  v1 = v94;
LABEL_61:
  swift_getObjectType();
  v69 = swift_conformsToProtocol2();
  if (v69 && v10)
  {
    v70 = v69;
    ObjectType = swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v73 = type metadata accessor for Optional();
    v74 = *(v73 - 8);
    __chkstk_darwin(v73);
    v76 = &v91 - v75;
    v78 = v77;
    sub_10078B684(ObjectType, v70, v76);
    v79 = *(AssociatedTypeWitness - 8);
    if ((*(v79 + 48))(v76, 1, AssociatedTypeWitness) == 1)
    {

      (*(v74 + 8))(v76, v73);
    }

    else
    {
      v97 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v99 = swift_getAssociatedConformanceWitness();
      v80 = sub_10001A770(&v96._countAndFlagsBits);
      (*(v79 + 32))(v80, v76, AssociatedTypeWitness);
      sub_10029D1D4(&v96._countAndFlagsBits, &v100);
      sub_10000CA14(&v100, v101);
      v81 = sub_10057634C();
      if (v82)
      {
        v83 = v81;
        v84 = v82;
        sub_1000F24EC(&unk_100AD9A60);
        v85 = swift_initStackObject();
        *(v85 + 16) = xmmword_100940080;
        v96._countAndFlagsBits = 0x617461646174654DLL;
        v96._object = 0xEA00000000000A3ALL;
        v86._countAndFlagsBits = v83;
        v86._object = v84;
        String.append(_:)(v86);

        object = v96._object;
        *(v85 + 32) = v96._countAndFlagsBits;
        *(v85 + 40) = object;
        sub_1006AD7E8(v85);
      }

      sub_10000BA7C(&v100);
    }

    v10 = v93;
    v1 = v94;
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  }

  v88 = [v1 detailTextLabel];
  if (v88)
  {
    v89 = v88;
    *&v100 = v102;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    BidirectionalCollection<>.joined(separator:)();

    v90 = String._bridgeToObjectiveC()();

    [v89 *(p:v90 ivar:?lyt + 3360)];
  }

  else
  {
  }

  return v1;
}

void sub_10078B2DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  if (a1 == 1)
  {
    v7 = *&v1[OBJC_IVAR____TtC7Journal15AdminComposerVC_model];
    v8 = IndexPath.row.getter();
    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    v10 = *(v7 + v9);
    if ((v10 & 0xC000000000000001) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 8 * v8 + 32);
LABEL_6:
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
        type metadata accessor for MainActor();
        v13 = v2;
        v14 = v11;
        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v13;
        v16[5] = v14;
        sub_1003E9628(0, 0, v6, &unk_100967958, v16);

        return;
      }

      __break(1u);
      return;
    }

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_6;
  }
}

uint64_t sub_10078B4BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1007892C0(a1, v4, v5, v7, v6);
}

uint64_t sub_10078B57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_100788CF0(a1, v4, v5, v6);
}

unint64_t sub_10078B630()
{
  result = qword_100AD43B0;
  if (!qword_100AD43B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD43B0);
  }

  return result;
}

uint64_t sub_10078B684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  v8 = _s8MetadataC5InputOMa();
  v9 = __chkstk_darwin(v8);
  v11 = (v22 - v10);
  v23 = *(a2 + 32);
  if (v23(a1, a2, v9))
  {
  }

  else
  {
    v22[1] = v8;
    v22[2] = v7;
    v22[3] = AssociatedConformanceWitness;
    v13 = (*((swift_isaMask & *v3) + 0x140))();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 assetMetaData];

      if (v15)
      {
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        _s8MetadataCMa();
        *v11 = v16;
        v11[1] = v18;
        swift_storeEnumTagMultiPayload();
        v19 = swift_allocObject();
        sub_100048FD8(v11);
        v20 = *(a2 + 40);
        sub_100049ED8(v16, v18);
        v20(v19, a1, a2);
        sub_1000340DC(v16, v18);
      }
    }
  }

  if ((v23)(a1, a2))
  {
    sub_10078B93C(v24);
  }

  else
  {
    v21 = swift_checkMetadataState();
    return (*(*(v21 - 8) + 56))(v24, 1, 1, v21);
  }
}

uint64_t sub_10078B93C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for Optional();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  v12 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v12, v5);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v11, 1, v4) != 1)
  {
    return (*(v13 + 32))(a1, v11, v4);
  }

  (*(v6 + 8))(v11, v5);
  sub_10078CEE0(v1, a1);
  (*(v13 + 16))(v8, a1, v4);
  (*(v13 + 56))(v8, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v12, v8, v5);
  return swift_endAccess();
}

uint64_t sub_10078BB9C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_100048FD8(a1);
  return v2;
}

uint64_t sub_10078BBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
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

  v5[8] = v8;
  v5[9] = v10;

  return _swift_task_switch(sub_10078BCDC, v8, v10);
}

uint64_t sub_10078BCDC()
{
  v28 = v0;
  v1 = (*((swift_isaMask & **(v0 + 32)) + 0x128))();
  *(v0 + 80) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = swift_allocObject();
    *(v0 + 88) = v6;
    *(v6 + 16) = *(v0 + 16);
    *(v6 + 32) = v5;
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_10078C0B0;
    v9 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_10078D640, v6, &type metadata for () + 8);
  }

  else
  {
    if (qword_100AD0A78 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 32);
    v11 = type metadata accessor for Logger();
    sub_10000617C(v11, qword_100AF1388);
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 32);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v17 = 136446466;
      type metadata accessor for AssetType();
      sub_10078D670(&qword_100AD8780, &type metadata accessor for AssetType);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;

      v21 = sub_100008458(v18, v20, &v27);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      type metadata accessor for UUID();
      sub_10078D670(&qword_100AE19B0, &type metadata accessor for UUID);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = sub_100008458(v22, v23, &v27);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v13, v14, "Asset doesn't have a managed object context. Won't save metadata for %{public}s asset with id: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10078C0B0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_10078C204, v4, v5);
  }
}

uint64_t sub_10078C204()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10078C26C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TapToRadarUtilities.RadarClassification();
  v91 = *(v6 - 8);
  v92 = v6;
  __chkstk_darwin(v6);
  v90 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Date();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRInfo();
  v94 = *(v9 - 8);
  v95 = v9;
  __chkstk_darwin(v9);
  v93 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(a2 + 32))(a1, a2);
  if (v15)
  {
    v16 = sub_10078D0D0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = *((swift_isaMask & *v2) + 0x140);
  v20 = (v19)(v15);
  v96 = v18 >> 60;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 assetMetaData];

    if (v22)
    {
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v16;
      v25 = v24;

      v26 = v25;
      v16 = v86;
      sub_1000340DC(v23, v26);
      if (v96 >= 0xF)
      {
        if (qword_100AD0A78 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_10000617C(v27, qword_100AF1388);
        v28 = v3;
        v29 = Logger.logObject.getter();
        v83 = static os_log_type_t.fault.getter();
        v84 = v29;
        v30 = os_log_type_enabled(v29, v83);
        v85 = v28;
        if (v30)
        {
          v31 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v97 = v81;
          *v31 = 136446466;
          type metadata accessor for AssetType();
          v82 = v18;
          v32 = v28;
          sub_10078D670(&qword_100AD8780, &type metadata accessor for AssetType);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;

          v36 = sub_100008458(v33, v35, &v97);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          type metadata accessor for UUID();
          sub_10078D670(&qword_100AE19B0, &type metadata accessor for UUID);
          v18 = v82;
          v37 = dispatch thunk of CustomStringConvertible.description.getter();
          v39 = sub_100008458(v37, v38, &v97);

          *(v31 + 14) = v39;
          v40 = v84;
          _os_log_impl(&_mh_execute_header, v84, v83, "Setting existing non-nil assetMetaData to nil. Asset type: %{public}s, id: %{public}s", v31, 0x16u);
          swift_arrayDestroy();

          v16 = v86;
        }

        else
        {
        }

        (*(v12 + 104))(v14, enum case for JournalFeatureFlags.debug(_:), v11);
        v41 = JournalFeatureFlags.isEnabled.getter();
        (*(v12 + 8))(v14, v11);
        if (v41)
        {
          v42 = 0x6E776F6E6B6E55;
          v97 = 0;
          v98 = 0xE000000000000000;
          _StringGuts.grow(_:)(148);
          v43._countAndFlagsBits = 0x7974207465737341;
          v43._object = 0xEC000000203A6570;
          String.append(_:)(v43);
          v44._countAndFlagsBits = AssetType.rawValue.getter();
          String.append(_:)(v44);

          v45._countAndFlagsBits = 0x492074657373410ALL;
          v45._object = 0xEB00000000203A44;
          String.append(_:)(v45);
          type metadata accessor for UUID();
          sub_10078D670(&qword_100AE19B0, &type metadata accessor for UUID);
          v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v46);

          v47._countAndFlagsBits = 0x617473656D69740ALL;
          v47._object = 0xEC000000203A706DLL;
          String.append(_:)(v47);
          v48 = v87;
          Date.init()();
          sub_10078D670(&qword_100AE1D80, &type metadata accessor for Date);
          v49 = v89;
          v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v50);

          (*(v88 + 8))(v48, v49);
          v51._object = 0x8000000100907CC0;
          v51._countAndFlagsBits = 0xD000000000000033;
          String.append(_:)(v51);
          v52 = v19();
          if (v52 && (v53 = v52, v54 = [v52 entry], v53, v54))
          {
            v55 = [v54 debugDescription];

            v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v58 = v57;

            v59 = v56;
          }

          else
          {
            v58 = 0xE700000000000000;
            v59 = 0x6E776F6E6B6E55;
          }

          v60 = v58;
          String.append(_:)(*&v59);

          v61._object = 0x8000000100907D00;
          v61._countAndFlagsBits = 0xD000000000000033;
          String.append(_:)(v61);
          v62 = v19();
          if (v62)
          {
            v63 = v62;
            v64 = [v62 debugDescription];

            v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v66 = v65;
          }

          else
          {
            v66 = 0xE700000000000000;
          }

          v67._countAndFlagsBits = v42;
          v67._object = v66;
          String.append(_:)(v67);

          v68._countAndFlagsBits = 10;
          v68._object = 0xE100000000000000;
          String.append(_:)(v68);
          (*(v91 + 104))(v90, enum case for TapToRadarUtilities.RadarClassification.crashHangDataLoss(_:), v92);
          v69 = v93;
          TTRInfo.init(alertTitle:alertMessage:radarTitle:errorDescription:classification:)();
          v70 = [objc_opt_self() defaultCenter];
          if (qword_100ACFFA0 != -1)
          {
            swift_once();
          }

          v92 = qword_100B2FB90;
          sub_1000F24EC(&qword_100AD5808);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100940080;
          v97 = 0x6F666E49727474;
          v98 = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          v72 = v95;
          *(inited + 96) = v95;
          v73 = sub_10001A770((inited + 72));
          v74 = v94;
          (*(v94 + 16))(v73, v69, v72);
          sub_1003630D0(inited);
          swift_setDeallocating();
          sub_1001E1D08(inited + 32);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v70 postNotificationName:v92 object:0 userInfo:isa];

          (*(v74 + 8))(v69, v72);
          v16 = v86;
        }
      }
    }
  }

  v76 = v19();
  if (v76)
  {
    v77 = v76;
    if (v96 <= 0xE)
    {
      sub_100049ED8(v16, v18);
      v78 = Data._bridgeToObjectiveC()().super.isa;
      sub_10003A5C8(v16, v18);
    }

    else
    {
      v78 = 0;
    }

    [v77 setAssetMetaData:v78];
  }

  v79 = v19();
  if (v79)
  {
    v80 = v79;
    [v79 setIsUploadedToCloud:0];
    sub_10003A5C8(v16, v18);
  }

  else
  {
    sub_10003A5C8(v16, v18);
  }
}

uint64_t sub_10078CE18()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF1388);
  v1 = sub_10000617C(v0, qword_100AF1388);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10078CEE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = _s8MetadataC5InputOMa();
  v7 = __chkstk_darwin(v6);
  v9 = (&v15 - v8);
  (*(v10 + 16))(&v15 - v8, a1 + *(v4 + 120), v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v5 - 8);
    (*(v11 + 32))(a2, v9, v5);
    return (*(v11 + 56))(a2, 0, 1, v5);
  }

  else
  {
    v14 = *v9;
    v13 = v9[1];
    Data.asObject<A>(of:)();
    return sub_1000340DC(v14, v13);
  }
}

uint64_t sub_10078D0D0()
{
  v1 = v0;
  v2 = (v0 + *(*v0 + 112));
  v3 = *v2;
  v4 = v2[1];
  v5 = *v2;
  if (v4 >> 60 == 11)
  {
    v5 = sub_10078D170(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;
    sub_100199918(v5, v8);
    sub_100057C04(v6, v7);
  }

  sub_1007864A8(v3, v4);
  return v5;
}

uint64_t sub_10078D170(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v13 - v5;
  v7 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1 + *(v2 + 120), v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v9;
  }

  (*(v4 + 32))(v6, v9, v3);
  v11 = Encodable.asData.getter();
  (*(v4 + 8))(v6, v3);
  return v11;
}

uint64_t sub_10078D370(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_10078D488(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10078D670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10078D6B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10078D7E0, v1, 0);
}

uint64_t sub_10078D7E0()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100B2F9E0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC7Journal13CoreDataStack_container];
  v3 = v1;
  v4 = [v2 viewContext];
  v5 = [v4 persistentStoreCoordinator];

  if (!v5 || ((v6 = [v5 persistentStores], sub_10078EF60(), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v7 >> 62) ? (v8 = _CocoaArrayWrapper.endIndex.getter()) : (v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10)), v5, , !v8))
  {

    goto LABEL_15;
  }

  v9 = v3[OBJC_IVAR____TtC7Journal13CoreDataStack_persistentStoresLoadSuccess];

  if (v9 != 1)
  {
LABEL_15:
    if (qword_100AD0A80 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000617C(v26, qword_100AF14A0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_20;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Database is not open, not ready to sync";
    goto LABEL_19;
  }

  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[7];
  v13 = v0[8];
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v13 + 104))(v11, enum case for ProtectedData.ProtectedDataState.available(_:), v12);
  v14 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v15 = *(v13 + 8);
  v15(v11, v12);
  v15(v10, v12);
  if ((v14 & 1) == 0)
  {
    if (qword_100AD0A80 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000617C(v32, qword_100AF14A0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_20;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "isProtectedDataAvailable false";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

LABEL_20:

    goto LABEL_21;
  }

  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  CKSyncEngine.Event.AccountChange.changeType.getter();
  v19 = (*(v17 + 88))(v16, v18);
  if (v19 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:))
  {
    v20 = v0[6];
    (*(v0[5] + 96))(v20, v0[4]);
    v21 = *v20;
    v0[11] = v21;
    v22 = swift_task_alloc();
    v0[12] = v22;
    *v22 = v0;
    v22[1] = sub_10078E050;
    v23 = v0[3];
    v24 = v21;
LABEL_11:

    return sub_10078E53C(v24, v23);
  }

  if (v19 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:))
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    if (qword_100AD0A80 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000617C(v33, qword_100AF14A0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "User has logged out", v36, 2u);
    }

    v37 = v0[3];

    v38 = sub_10078EFAC();
    v39 = swift_task_alloc();
    v0[16] = v39;
    *v39 = v0;
    v39[1] = sub_10078E2F0;

    return sub_10034B818(v37, v38, 0, 0, 0, 0);
  }

  if (v19 == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
  {
    v40 = v0[6];
    (*(v0[5] + 96))(v40, v0[4]);
    v41 = *v40;
    v0[13] = *v40;
    v42 = *(v40 + 8);
    v0[14] = v42;
    if (qword_100AD0A80 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000617C(v43, qword_100AF14A0);
    v44 = v41;
    v45 = v42;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412546;
      *(v48 + 4) = v44;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v45;
      *v49 = v44;
      v49[1] = v45;
      v50 = v44;
      v51 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "Handling switch accounts: %@ -> %@", v48, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    v52 = swift_task_alloc();
    v0[15] = v52;
    *v52 = v0;
    v52[1] = sub_10078E160;
    v23 = v0[3];
    v24 = v45;
    goto LABEL_11;
  }

  if (qword_100AD0A80 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_10000617C(v53, qword_100AF14A0);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "(handleAccountChange) Unhandled user state.", v56, 2u);
  }

  v58 = v0[5];
  v57 = v0[6];
  v59 = v0[4];

  (*(v58 + 8))(v57, v59);
LABEL_21:

  v31 = v0[1];

  return v31();
}

uint64_t sub_10078E050()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_1006BA37C, v1, 0);
}

uint64_t sub_10078E160()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10078E270, v1, 0);
}

uint64_t sub_10078E270()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10078E2F0()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10078E400, v1, 0);
}

uint64_t sub_10078E400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10078E474()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF14A0);
  v1 = sub_10000617C(v0, qword_100AF14A0);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10078E53C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10078E558, a2, 0);
}

uint64_t sub_10078E558()
{
  if (qword_100AD0A80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = sub_10000617C(v1, qword_100AF14A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "(handleAccountChange) User is Logged in", v4, 2u);
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v6 = qword_100B2F9E0;
  v0[5] = qword_100B2F9E0;
  v7 = *(v6 + 16);
  v0[6] = v7;
  v0[7] = sub_10078EFAC();
  v7;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_10078E710;

  return sub_10048D664(v5);
}

uint64_t sub_10078E710(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 24);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return _swift_task_switch(sub_10078E840, v5, 0);
}

uint64_t sub_10078E840()
{
  v1 = *(v0 + 80);
  v2 = [*(v0 + 16) recordName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  if (!v1)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No userID registered previously.", v26, 2u);
    }

    v27 = *(v0 + 56);
    v29 = *(v0 + 16);
    v28 = *(v0 + 24);

    v30 = [v29 recordName];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v0 + 88) = v33;
    v34 = swift_task_alloc();
    *(v0 + 96) = v34;
    *v34 = v0;
    v34[1] = sub_10078EBCC;
    v19 = v28;
    v20 = v27;
    v21 = v31;
    v22 = v33;
    v23 = 0;
    goto LABEL_13;
  }

  if (v3 == *(v0 + 72) && *(v0 + 80) == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Found a different user ID than the one currently logged in. Treating as a new user.", v10, 2u);
      }

      v11 = *(v0 + 56);
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);

      v14 = [v13 recordName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(v0 + 104) = v17;
      v18 = swift_task_alloc();
      *(v0 + 112) = v18;
      *v18 = v0;
      v18[1] = sub_10078ED94;
      v19 = v12;
      v20 = v11;
      v21 = v15;
      v22 = v17;
      v23 = 1;
LABEL_13:

      return sub_10034B818(v19, v20, v21, v22, 1, v23);
    }
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Notified that the same user has logged in. No-op.", v38, 2u);
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10078EBCC()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10078ECF8, v1, 0);
}

uint64_t sub_10078ECF8()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  sub_10034A5BC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10078ED94()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_10078EEC0, v1, 0);
}

uint64_t sub_10078EEC0()
{
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  sub_10034A5BC();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10078EF60()
{
  result = qword_100AE5BC0;
  if (!qword_100AE5BC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE5BC0);
  }

  return result;
}

unint64_t sub_10078EFAC()
{
  result = qword_100AEA1F8;
  if (!qword_100AEA1F8)
  {
    type metadata accessor for JournalSyncEngineDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEA1F8);
  }

  return result;
}

uint64_t sub_10078F004()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController____lazy_storage___model;
  if (*(v1 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController____lazy_storage___model))
  {
    v6 = *(v1 + OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController____lazy_storage___model);
  }

  else
  {
    v7 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v7 - 8) + 56))(v4, 1, 2, v7);
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v8 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    type metadata accessor for EntryListViewModel(0);
    swift_allocObject();
    v6 = sub_100010AF4(v4, v8);
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_10078F2AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (static Selector.== infix(_:_:)())
  {
    sub_10078F004();
    v6 = sub_100087B3C();

    if (v6 < 1)
    {
      return 0;
    }

    v7 = [v3 navigationItem];
    v8 = [v7 searchController];

    if (v8)
    {
      v9 = [v8 isActive];

      if (v9)
      {
        return 0;
      }
    }

    v10 = [v3 presentedViewController];
    if (v10)
    {

      return 0;
    }

    return 1;
  }

  else
  {
    sub_10005D974(a2, v22);
    v12 = v23;
    if (v23)
    {
      v13 = sub_10000CA14(v22, v23);
      v14 = *(v12 - 8);
      v15 = __chkstk_darwin(v13);
      v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v14 + 8))(v17, v12);
      sub_10000BA7C(v22);
    }

    else
    {
      v18 = 0;
    }

    v19 = type metadata accessor for RecentlyDeletedEntriesViewController();
    v21.receiver = v3;
    v21.super_class = v19;
    v20 = objc_msgSendSuper2(&v21, "canPerformAction:withSender:", a1, v18);
    swift_unknownObjectRelease();
    return v20;
  }
}

void sub_10078F56C()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v57 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for JournalFeatureFlags();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for EntriesSortOrder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecentlyDeletedEntriesViewController();
  v61.receiver = v0;
  v61.super_class = v13;
  v59 = v13;
  objc_msgSendSuper2(&v61, "viewDidLoad");
  v14 = sub_10078F004();
  (*(v10 + 104))(v12, enum case for EntriesSortOrder.entryDate(_:), v9);
  v15 = OBJC_IVAR____TtC7Journal18EntryListViewModel_sortOrder;
  swift_beginAccess();
  (*(v10 + 24))(v14 + v15, v12, v9);
  swift_endAccess();
  sub_100022BB4();

  (*(v10 + 8))(v12, v9);

  sub_1003032B4(v16, 0, 1);

  v17 = [v1 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = [objc_opt_self() systemBackgroundColor];
    [v19 setBackgroundColor:v20];
  }

  v21 = [v1 navigationItem];
  [v21 setStyle:1];

  v22 = [v1 navigationItem];
  [v22 setLargeTitleDisplayMode:1];

  v23 = [v1 navigationItem];
  if (qword_100AD0788 != -1)
  {
    swift_once();
  }

  v24 = String._bridgeToObjectiveC()();
  [v23 setTitle:v24];

  v25 = [v1 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 5)
  {
    v27 = [v1 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v28 = String._bridgeToObjectiveC()();

    [v27 setLargeSubtitle:v28];
  }

  v29 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView;
  v30 = *&v1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v30)
  {
    v31 = v30;
    v32 = [v1 navigationItem];
    v33 = [v32 title];

    [v31 setAccessibilityLabel:v33];
    v34 = *&v1[v29];
    if (v34)
    {
      v35 = v34;
      v36 = [v1 navigationItem];
      v37 = [v36 largeSubtitle];

      [v35 setAccessibilityHint:v37];
    }
  }

  sub_10078FEDC();
  sub_100790684();
  v38 = v58;
  (*(v4 + 104))(v6, enum case for JournalFeatureFlags.search(_:), v58);
  v39 = JournalFeatureFlags.isEnabled.getter();
  (*(v4 + 8))(v6, v38);
  if (v39)
  {
    v40 = sub_1000F24EC(&qword_100AD47A0);
    v41 = v57;
    (*(*(v40 - 8) + 56))(v57, 1, 2, v40);
    v42 = objc_allocWithZone(type metadata accessor for SuggestedSearchController());
    v43 = sub_10002837C(v41, 0, 0);
    v44 = OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController;
    v45 = *&v1[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController];
    *&v1[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController] = v43;

    v46 = [v1 traitCollection];
    v47 = [v46 userInterfaceIdiom];

    if (v47)
    {
      v48 = [v1 navigationItem];
      [v48 setSearchController:*&v1[v44]];

      v49 = [v1 navigationItem];
      [v49 setPreferredSearchBarPlacement:1];
    }
  }

  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v62.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v62.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemSearch, v62, v63).super.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v60[0] = isa;
  v51 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  sub_1007927F0(0);
  *&v51[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8] = &off_100A7D058;
  swift_unknownObjectWeakAssign();
  sub_1000F24EC(&unk_100AEBEC0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100940080;
  *(v52 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v52 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v60[3] = v59;
  v60[0] = v51;
  v53 = v51;
  UIViewController.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v60);
  v54 = [v53 navigationItem];
  v55 = [v54 searchController];

  if (v55)
  {
    type metadata accessor for SuggestedSearchController();
    v56 = swift_dynamicCastClass();
    if (v56)
    {
      *(v56 + OBJC_IVAR____TtC7Journal25SuggestedSearchController_suggestedSearchFieldDelegate + 8) = &off_100A7D048;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_10078FEDC()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  sub_1000065A8(0, &qword_100AD4420);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v36.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v7.value._countAndFlagsBits = v4;
  v7.value._object = v6;
  v36.value.super.isa = 0;
  v42.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v7, v36, v42, v47);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v35.is_nil = 0;
  UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v35, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v37.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13.value._countAndFlagsBits = v10;
  v13.value._object = v12;
  v37.value.super.isa = 0;
  v43.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v13, v37, v43, v48);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v9;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v18.value._countAndFlagsBits = v15;
  v18.value._object = v17;
  v38.value.super.isa = 0;
  v44.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v18, v38, v44, v49);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v14;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v22 = v21;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = ObjectType;
  v39.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25.value._countAndFlagsBits = v20;
  v25.value._object = v22;
  v39.value.super.isa = 0;
  v45.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v25, v39, v45, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v19;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v28;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = ObjectType;
  v40.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v32.value._countAndFlagsBits = v27;
  v32.value._object = v29;
  v40.value.super.isa = 0;
  v46.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v32, v40, v46, v51);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v26;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_100790684()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (v5 != 5)
  {
    if (qword_100AD09E8 != -1)
    {
      swift_once();
    }

    v6 = qword_100B30EC0;
  }

  sub_1000065A8(0, &qword_100AD43B0);
  v7 = v1;
  UIBarButtonItem.init(title:image:target:action:menu:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (v5 != 5)
  {
    if (qword_100AD0978 != -1)
    {
      swift_once();
    }

    v9 = qword_100B30E50;
  }

  v10 = v8;
  UIBarButtonItem.init(title:image:target:action:menu:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v10;
  static UIViewController.ViewLoading.subscript.setter();
  sub_100795F7C(0);
}

void sub_1007909C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC7Journal36RecentlyDeletedEntriesViewController_searchController];
    if (v2)
    {
      [Strong presentViewController:v2 animated:1 completion:0];
    }
  }
}

void sub_100790A80()
{
  sub_1007927F0(0);
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1 || (v3 = [v0 traitCollection], v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 == 1))
  {

    sub_100799138(0);
  }
}