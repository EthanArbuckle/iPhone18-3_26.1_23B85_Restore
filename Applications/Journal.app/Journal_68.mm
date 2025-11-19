void sub_100755AAC(uint64_t *a1)
{
  v106 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v106);
  v114 = &v87 - v2;
  v3 = sub_1000F24EC(&qword_100AD1420);
  v4 = __chkstk_darwin(v3 - 8);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v113 = (&v87 - v7);
  v8 = __chkstk_darwin(v6);
  v100 = &v87 - v9;
  v10 = __chkstk_darwin(v8);
  v108 = &v87 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v87 - v13;
  __chkstk_darwin(v12);
  v16 = &v87 - v15;
  v17 = type metadata accessor for UUID();
  v102 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = (&v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v22 = &v87 - v21;
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v23 = a1;
  v24 = NSManagedObjectContext.fetch<A>(_:)();
  v25 = &qword_100AD0000;
  v26 = 0;
  v33 = v24;
  v104 = v22;
  v105 = v16;
  v107 = v14;
  v103 = v23;
  if (!(v24 >> 62))
  {
    v88 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v96 = v88;
    if (v88)
    {
      goto LABEL_10;
    }

LABEL_81:

    return;
  }

  while (2)
  {
    v96 = _CocoaArrayWrapper.endIndex.getter();
    if (!v96)
    {
      goto LABEL_81;
    }

    v88 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:
    if (v25[95] != -1)
    {
      swift_once();
    }

    v98 = v26;
    v34 = type metadata accessor for Logger();
    v87 = sub_10000617C(v34, qword_100AF0290);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v35, v36, "Found %ld Orphan FileAttachments", v37, 0xCu);
    }

    v38 = 0;
    v95 = v33 & 0xC000000000000001;
    v94 = v33 & 0xFFFFFFFFFFFFFF8;
    v89 = v33 + 32;
    v112 = (v102 + 56);
    v39 = _swiftEmptyArrayStorage;
    v101 = (v102 + 32);
    v40 = v100;
    v92 = v20;
    v91 = v33;
    v20 = v103;
    v110 = (v102 + 48);
    do
    {
      if (v95)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v38 >= *(v94 + 16))
        {
          goto LABEL_74;
        }

        v41 = *(v33 + 8 * v38 + 32);
        v42 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          swift_once();
LABEL_3:
          v27 = type metadata accessor for Logger();
          sub_10000617C(v27, qword_100AF0290);
          swift_errorRetain();
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v28, v29))
          {

            return;
          }

          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *v30 = 138412290;
          swift_errorRetain();
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 4) = v32;
          *v31 = v32;
          _os_log_impl(&_mh_execute_header, v28, v29, "(adoptOrphanAttachments) Unable to fix orphan attachments: %@", v30, 0xCu);
          sub_100004F84(v31, &unk_100AD4BB0);

          goto LABEL_5;
        }
      }

      v43 = v41;
      v44 = [v43 parentID];
      if (v44)
      {
        v45 = v44;
        v46 = v108;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = 0;
      }

      else
      {
        v47 = 1;
        v46 = v108;
      }

      v111 = *v112;
      v111(v46, v47, 1, v17);
      v48 = v46;
      v49 = v107;
      sub_100024EC0(v48, v107);
      v50 = v49;
      v51 = v105;
      sub_100024EC0(v50, v105);

      v109 = *v110;
      if (v109(v51, 1, v17) == 1)
      {
        sub_100004F84(v51, &qword_100AD1420);
      }

      else
      {
        v52 = *v101;
        (*v101)(v104, v51, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100055CEC(0, v39[2] + 1, 1, v39);
        }

        v54 = v39[2];
        v53 = v39[3];
        if (v54 >= v53 >> 1)
        {
          v39 = sub_100055CEC(v53 > 1, v54 + 1, 1, v39);
        }

        v39[2] = v54 + 1;
        v52(v39 + ((v102[80] + 32) & ~v102[80]) + *(v102 + 9) * v54, v104, v17);
        v33 = v91;
      }

      ++v38;
    }

    while (v42 != v96);
    type metadata accessor for JournalEntryAssetMO();
    sub_100759750(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
    v55 = v98;
    v56 = static Identifiable<>.fetch(ids:context:)();
    if (v55)
    {

      if (qword_100AD02F8 != -1)
      {
        goto LABEL_76;
      }

      goto LABEL_3;
    }

    v26 = v56;

    v104 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v107 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v107 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = 0;
    v93 = 0;
    v105 = v26 & 0xC000000000000001;
    v98 = (v102 + 8);
    v103 = v26;
LABEL_39:
    if (v95)
    {
      v25 = v93;
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = v93;
      if (v93 >= *(v94 + 16))
      {
        __break(1u);
LABEL_78:
        __break(1u);
        continue;
      }

      v57 = *(v89 + 8 * v93);
    }

    break;
  }

  v108 = v57;
  v58 = __OFADD__(v25, 1);
  v59 = (v25 + 1);
  if (v58)
  {
    goto LABEL_75;
  }

  v93 = v59;
  if (!v107)
  {
LABEL_37:

    v33 = v91;
    goto LABEL_38;
  }

  v60 = 0;
  while (1)
  {
    if (v105)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v60 >= *(v104 + 16))
      {
        goto LABEL_72;
      }

      v61 = *(v26 + 8 * v60 + 32);
    }

    v62 = v61;
    v63 = (v60 + 1);
    if (__OFADD__(v60, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v64 = [v61 id];
    if (v64)
    {
      v65 = v64;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v67 = 1;
    v111(v40, v66, 1, v17);
    v68 = [v108 parentID];
    if (v68)
    {
      v69 = v68;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    v70 = v113;
    v111(v113, v67, 1, v17);
    v71 = *(v106 + 48);
    v72 = v114;
    sub_1001EDCD8(v40, v114);
    sub_1001EDCD8(v70, v72 + v71);
    v73 = v109;
    if (v109(v72, 1, v17) == 1)
    {
      break;
    }

    v102 = v62;
    v20 = v113;
    v74 = v114;
    v75 = v99;
    sub_1001EDCD8(v114, v99);
    if (v73(v74 + v71, 1, v17) == 1)
    {
      sub_100004F84(v20, &qword_100AD1420);
      v76 = v100;
      sub_100004F84(v100, &qword_100AD1420);
      v77 = v75;
      v40 = v76;
      (*v98)(v77, v17);
      v62 = v102;
      goto LABEL_47;
    }

    v78 = v92;
    (*v101)(v92, v74 + v71, v17);
    sub_100759750(&qword_100AD9220, &type metadata accessor for UUID);
    v97 = dispatch thunk of static Equatable.== infix(_:_:)();
    v79 = *v98;
    (*v98)(v78, v17);
    v80 = v20;
    v20 = &qword_100AD1420;
    sub_100004F84(v80, &qword_100AD1420);
    v81 = v100;
    sub_100004F84(v100, &qword_100AD1420);
    v82 = v75;
    v40 = v81;
    v79(v82, v17);
    sub_100004F84(v74, &qword_100AD1420);
    v62 = v102;
    if (v97)
    {
      goto LABEL_65;
    }

LABEL_48:

    ++v60;
    v26 = v103;
    if (v63 == v107)
    {
      goto LABEL_37;
    }
  }

  v20 = &unk_10093C080;
  sub_100004F84(v113, &qword_100AD1420);
  sub_100004F84(v40, &qword_100AD1420);
  if (v73(v114 + v71, 1, v17) != 1)
  {
LABEL_47:
    sub_100004F84(v114, &unk_100AEEE20);
    goto LABEL_48;
  }

  sub_100004F84(v114, &qword_100AD1420);
LABEL_65:
  v83 = v62;
  v26 = v62;
  v25 = v108;
  [v83 addFileAttachmentsObject:v108];

  v58 = __OFADD__(v90++, 1);
  v33 = v91;
  if (v58)
  {
    goto LABEL_78;
  }

  v26 = v103;
LABEL_38:
  if (v93 != v96)
  {
    goto LABEL_39;
  }

  v84 = v90;
  if (v90 >= v88)
  {
    return;
  }

  v28 = Logger.logObject.getter();
  v85 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v28, v85))
  {
LABEL_5:

    return;
  }

  v86 = swift_slowAlloc();
  *v86 = 134217984;
  if (!__OFSUB__(v88, v84))
  {
    *(v86 + 4) = v88 - v84;
    _os_log_impl(&_mh_execute_header, v28, v85, "%ld orphan fileAttachments not processed", v86, 0xCu);

    goto LABEL_5;
  }

  __break(1u);
}

void sub_1007567FC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v4 = NSManagedObjectContext.fetch<A>(_:)();
  *a3 = v4;

  if (qword_100AD02F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AF0290);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v4 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 4) = v8;

    _os_log_impl(&_mh_execute_header, oslog, v6, "%ld Orphan attachments Found", v7, 0xCu);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_100756AF4(void *a1)
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v2 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  v3 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v3];

  v12 = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v2;
  v4[4] = &v12;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100759744;
  *(v5 + 24) = v4;
  aBlock[4] = sub_100177C4C;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001A7D4;
  aBlock[3] = &unk_100A7C338;
  v6 = _Block_copy(aBlock);
  v7 = a1;
  v8 = v2;

  [v7 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;

    return v10;
  }

  return result;
}

uint64_t sub_100756CE4()
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v0 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  sub_1000F24EC(&unk_100AD5B10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100031B20();
  *(v1 + 32) = 0xD000000000000012;
  *(v1 + 40) = 0x80000001008E3C20;
  v2 = NSPredicate.init(format:_:)();
  [v0 setPredicate:v2];

  sub_1000F24EC(&unk_100AE4880);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v4;
}

uint64_t sub_100756E34()
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v0 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941830;
  sub_1000065A8(0, &qword_100ADB900);
  *(v1 + 32) = static NSPredicate.notUploadedToCloud.getter();
  *(v1 + 40) = static NSPredicate.attachmentDoesNotNeedsProcessing.getter();
  *(v1 + 48) = NSPredicate.init(format:_:)();
  *(v1 + 56) = NSPredicate.init(format:_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() andPredicateWithSubpredicates:isa];

  [v0 setPredicate:v3];
  sub_1000F24EC(&unk_100AE4880);
  NSManagedObjectContext.performAndWait<A>(_:)();

  return v5;
}

uint64_t sub_100756FD4()
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v0 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithKey:v2 ascending:0];

  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  *(v4 + 32) = v3;
  sub_1000065A8(0, &qword_100AD5B00);
  v5 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setSortDescriptors:isa];

  sub_1000065A8(0, &qword_100ADB900);
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  NSPredicate.init(format:_:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() andPredicateWithSubpredicates:v7];

  [v0 setPredicate:v8];
  v9 = NSManagedObjectContext.fetch<A>(_:)();

  return v9;
}

id sub_1007574E0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v21[-v8];
  result = [a1 asset];
  if (!result)
  {
    v11 = [a1 parentID];
    if (v11)
    {
      v12 = v11;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v9, v5, v2);
      type metadata accessor for JournalEntryAssetMO();
      sub_100759750(&qword_100AD6A88, &type metadata accessor for JournalEntryAssetMO);
      v20 = static Identifiable<>.fetch(id:context:)();
      (*(v3 + 8))(v9, v2);
      return v20;
    }

    else
    {
      if (qword_100AD02F8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000617C(v13, qword_100AF0290);
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v15, v16, "File attachment is missing a parentID: %@", v17, 0xCu);
        sub_100004F84(v18, &unk_100AD4BB0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1007577C0(uint64_t a1, void *a2, void *a3)
{
  v77 = a3;
  v78 = a1;
  v4 = type metadata accessor for FileStoreConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for URL();
  v8 = *(v79 - 8);
  v9 = __chkstk_darwin(v79);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v76 - v12;
  v14 = [a2 encryptedValues];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKeyedSubscript:v15];
  swift_unknownObjectRelease();

  if (!v16 || (v80 = v16, sub_1000F24EC(&unk_100AE4C70), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_100AD02F8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000617C(v56, qword_100AF0290);
    v57 = a2;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81[0] = v61;
      *v60 = 136315138;
      v62 = [v57 debugDescription];
      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_100008458(v63, v65, v81);

      *(v60 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v58, v59, "FileAttachment Error extraction record: %s", v60, 0xCu);
      sub_10000BA7C(v61);
    }

    return 0;
  }

  v18 = v81[0];
  v17 = v81[1];
  static FileStoreConfiguration.shared.getter();
  v76[1] = v18;
  v76[2] = v17;
  FileStoreConfiguration.getAttachmentURL(from:)();
  (*(v5 + 8))(v7, v4);
  v19 = objc_opt_self();
  v20 = [v19 defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  v24 = *(v8 + 8);
  v76[3] = v8 + 8;
  v24(v11, v79);
  v25 = v24;
  sub_1000F24EC(&qword_100AD77C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSFileProtectionKey;
  v27 = qword_100AD0060;
  v28 = NSFileProtectionKey;
  if (v27 != -1)
  {
    swift_once();
  }

  sub_10000617C(v4, qword_100B2FC48);
  v29 = FileStoreConfiguration.protectionClass.getter();
  type metadata accessor for URLFileProtection(0);
  *(inited + 64) = v30;
  *(inited + 40) = v29;
  sub_100362FA8(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &qword_100ADFE90);
  type metadata accessor for FileAttributeKey(0);
  sub_100759750(&qword_100AD1C38, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v81[0] = 0;
  v32 = [v20 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:isa error:v81];

  v33 = v81[0];
  if (v32)
  {
    v34 = v81[0];
    v35 = [v19 defaultManager];
    URL.path.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [v35 fileExistsAtPath:v36];

    if (!v37)
    {
      goto LABEL_9;
    }

    v38 = [v19 defaultManager];
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v81[0] = 0;
    v42 = [v38 removeItemAtURL:v40 error:v81];

    v33 = v81[0];
    if (v42)
    {
      v43 = v81[0];
LABEL_9:
      v44 = [v19 defaultManager];
      URL._bridgeToObjectiveC()(v45);
      v47 = v46;
      URL._bridgeToObjectiveC()(v48);
      v50 = v49;
      v81[0] = 0;
      v51 = [v44 copyItemAtURL:v47 toURL:v49 error:v81];

      v33 = v81[0];
      if (v51)
      {
        v52 = v81[0];
        v53 = FileStoreConfiguration.protectionClass.getter();
        URL.setProtectionClass(protectionClass:)(v53);

        v54 = String._bridgeToObjectiveC()();

        [v77 setFilePath:v54];

        v25(v13, v79);
        return 1;
      }
    }
  }

  v67 = v33;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100AD02F8 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000617C(v68, qword_100AF0290);
  v69 = a2;
  swift_errorRetain();
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412546;
    *(v72 + 4) = v69;
    *v73 = v69;
    *(v72 + 12) = 2112;
    v74 = v69;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 14) = v75;
    v73[1] = v75;
    _os_log_impl(&_mh_execute_header, v70, v71, "FileAttachment Error process ckasset:%@ error:%@", v72, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v25(v13, v79);
  return 0;
}

uint64_t sub_100758068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = *(v8 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
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

  v4[14] = v9;
  v4[15] = v11;

  return _swift_task_switch(sub_1007581DC, v9, v11);
}

uint64_t sub_1007581DC()
{
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = sub_10000617C(v2, qword_100B2FF80);
  v9 = *(v3 + 16);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = [v6 recordID];
  v11 = [v10 recordName];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v0 + 144) = v14;
  v15 = swift_allocObject();
  *(v0 + 152) = v15;
  v15[2] = v12;
  v15[3] = v14;
  v15[4] = v7;
  *(v0 + 224) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v16 = *(v5 + 104);
  *(v0 + 160) = v16;
  *(v0 + 168) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v4);

  v17 = v7;
  v18 = swift_task_alloc();
  *(v0 + 176) = v18;
  v19 = sub_1000F24EC(&qword_100AE5110);
  *v18 = v0;
  v18[1] = sub_1007583F8;
  v20 = *(v0 + 64);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v20, sub_10048EF30, v15, v19);
}

uint64_t sub_1007583F8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[8];
    v5 = v2[5];
    v6 = v2[6];
    v7 = *(v6 + 8);
    v2[23] = v7;
    v2[24] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[14];
    v9 = v2[15];

    return _swift_task_switch(sub_10075855C, v8, v9);
  }
}

uint64_t sub_10075855C()
{
  v36 = v0;
  v1 = *(v0 + 16);
  *(v0 + 200) = v1;
  if (v1)
  {
    v33 = *(v0 + 160);
    v32 = *(v0 + 224);
    v2 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 24);
    (*(v0 + 128))(v2, *(v0 + 104), v4);
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = swift_allocObject();
    *(v0 + 208) = v9;
    *(v9 + 16) = v1;
    *(v9 + 24) = v7;
    (*(v3 + 32))(v9 + v8, v2, v4);
    v33(v5, v32, v6);
    v10 = v1;
    v11 = v7;
    v12 = swift_task_alloc();
    *(v0 + 216) = v12;
    *v12 = v0;
    v12[1] = sub_1007588A0;
    v13 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v12, v13, sub_100758A98, v9, &type metadata for () + 8);
  }

  else
  {
    v14 = *(v0 + 24);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 104);
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    if (v17)
    {
      v21 = *(v0 + 24);
      v34 = *(v0 + 104);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136446210;
      v24 = [v21 recordID];
      v25 = [v24 recordName];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = sub_100008458(v26, v28, &v35);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "unable to get file attachment with id: %{public}s", v22, 0xCu);
      sub_10000BA7C(v23);

      (*(v19 + 8))(v34, v20);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1007588A0()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 184))(*(v2 + 56), *(v2 + 40));

    v4 = *(v2 + 112);
    v5 = *(v2 + 120);

    return _swift_task_switch(sub_1007589EC, v4, v5);
  }
}

uint64_t sub_1007589EC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100758B08(void *a1)
{
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v2 = static JournalEntryAssetFileAttachmentMO.fetchRequest()();
  sub_1000065A8(0, &qword_100ADB900);
  v3 = NSPredicate.init(format:_:)();
  [v2 setPredicate:v3];

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100758CE0;
  *(v5 + 24) = v4;
  v10[4] = sub_100028EF4;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001A7D4;
  v10[3] = &unk_100A7C2C0;
  v6 = _Block_copy(v10);
  v7 = a1;
  v8 = v2;

  [v7 performBlockAndWait:v6];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

id sub_100758CE8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v70 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000617C(v12, qword_100B2FF80);
  v71 = v15;
  v72 = v13;
  v17 = *(v13 + 16);
  v73 = v12;
  v17(v15, v16, v12);
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a2];
  v18 = [a1 recordID];
  v19 = [v18 recordName];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v69 = v20;
  v74 = v22;
  UUID.init(uuidString:)();
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  isa = 0;
  if (v25(v11, 1, v23) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v11, v23);
  }

  [v75 setId:{isa, v67, v68}];

  if (CKRecord.subscript.getter())
  {
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = [v27 recordID];
      v29 = [v28 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init(uuidString:)();

      if (v25(v8, 1, v23) == 1)
      {
        v30 = 0;
      }

      else
      {
        v30 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v24 + 8))(v8, v23);
      }

      v32 = v71;
      v37 = v75;
      [v75 setParentID:v30];
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
  }

  v31 = a1;
  v32 = v71;
  v30 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v30, v33, "Unable to get parentReference for fileAttachment for a record: %@", v34, 0xCu);
    sub_100004F84(v35, &unk_100AD4BB0);
  }

  v37 = v75;
LABEL_15:

  v38 = [a1 encryptedValues];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 objectForKeyedSubscript:v39];
  swift_unknownObjectRelease();

  if (v40)
  {
    v77 = v40;
    sub_1000F24EC(&unk_100AE4C70);
    if (swift_dynamicCast())
    {
      v40 = String._bridgeToObjectiveC()();
    }

    else
    {
      v40 = 0;
    }
  }

  [v37 setName:v40];

  v41 = [a1 encryptedValues];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 objectForKeyedSubscript:v42];
  swift_unknownObjectRelease();

  v45 = v73;
  v44 = v74;
  if (v43)
  {
    v76 = v43;
    sub_1000F24EC(&unk_100AE4C70);
    if (swift_dynamicCast())
    {
      [v37 setIndex:v77];
    }
  }

  v46 = CKRecord.encodedSystemFields.getter();
  v48 = v47;
  v49 = Data._bridgeToObjectiveC()().super.isa;
  sub_1000340DC(v46, v48);
  [v37 setRecordSystemFields:v49];

  if (!CKRecord.subscript.getter())
  {
LABEL_33:

    goto LABEL_39;
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (v50)
  {
    v51 = [v50 fileURL];
    if (v51)
    {
      v52 = v51;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = a1;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *v56 = 136315394;
        v57 = CKRecord.recordType.getter();
        v59 = sub_100008458(v57, v58, &v76);

        *(v56 + 4) = v59;
        v44 = v74;
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_100008458(v69, v44, &v76);
        _os_log_impl(&_mh_execute_header, v54, v55, "CKAsset.fileURL unexpectedly included with new %s record %s", v56, 0x16u);
        swift_arrayDestroy();

        v37 = v75;
      }

      if (sub_1007577C0(v70, v53, v37))
      {
        if (qword_100ACFE28 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_100286DEC(&v77, v69, v74);
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = v44;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v76 = v64;
          *v63 = 136315138;
          v65 = sub_100008458(v69, v62, &v76);

          *(v63 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v60, v61, "setAssetFileURLToFileAttachment for %s failed", v63, 0xCu);
          sub_10000BA7C(v64);

          swift_unknownObjectRelease();
LABEL_38:
          (*(v67 + 8))(v70, v68);
          goto LABEL_39;
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_38;
    }

    swift_unknownObjectRelease();
    goto LABEL_33;
  }

  swift_unknownObjectRelease();
LABEL_39:
  [v37 setIsUploadedToCloud:1];
  [v37 setIsRemovedFromCloud:0];
  (*(v72 + 8))(v32, v45);
  return v37;
}

uint64_t sub_100759750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007597F8()
{
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.988235294 green:0.960784314 blue:0.960784314 alpha:1.0];
  v1 = [objc_allocWithZone(UIColor) initWithRed:0.258823529 green:0.243137255 blue:0.349019608 alpha:1.0];
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(UIColor);
  v9[4] = sub_1000123AC;
  v9[5] = v2;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100023FEC;
  v9[3] = &unk_100A7C388;
  v4 = _Block_copy(v9);
  v5 = v1;
  v6 = v0;
  v7 = [v3 initWithDynamicProvider:v4];

  _Block_release(v4);

  qword_100B302F8 = v7;
  return result;
}

id sub_100759960()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0823529412 green:0.203921569 blue:0.31372549 alpha:1.0];
  qword_100B30340 = result;
  return result;
}

id sub_1007599B0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0862745098 green:0.133333333 blue:0.152941176 alpha:1.0];
  qword_100B30348 = result;
  return result;
}

void sub_100759B24(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  *a3 = v7;
}

void sub_100759BE8(uint64_t a1, id *a2, double *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *a2;
  v9 = [v7 preferredFontForTextStyle:v8];

  v10 = sub_10006F14C(*a3);
  v11 = [v10 fontDescriptor];
  v12 = [v10 fontDescriptor];
  v13 = [v12 symbolicTraits];

  v14 = [v11 fontDescriptorWithSymbolicTraits:v13 | 0x8000];
  if (v14)
  {
    v15 = [v7 fontWithDescriptor:v14 size:0.0];

    v10 = v15;
  }

  *a4 = v10;
}

void sub_100759D18()
{
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  v0 = qword_100B30370;
  v1 = [v0 fontWithSize:19.0];

  v2 = [objc_opt_self() configurationWithFont:v1 scale:3];
  qword_100B30408 = v2;
}

void sub_100759DCC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903BE0;
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000003ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30410 = v3;
}

void sub_100759E70()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008ECE40;
  v1._countAndFlagsBits = 0x6C65636E6143;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30420 = v3;
}

void sub_100759F1C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008F1DF0;
  v1._countAndFlagsBits = 19279;
  v1._object = 0xE200000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30430 = v3;
}

void sub_100759FC0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903D40;
  v1._countAndFlagsBits = 6579265;
  v1._object = 0xE300000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000026;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30440 = v3;
}

void sub_10075A068()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906560;
  v1._countAndFlagsBits = 1702256979;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30450 = v3;
}

void sub_10075A110()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903F00;
  v1._countAndFlagsBits = 0x6563616C706552;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30460 = v3;
}

void sub_10075A1C0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009061D0;
  v1._countAndFlagsBits = 0x6E4F206E727554;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000060;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30470 = v3;
}

uint64_t sub_10075A270()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
  qword_100B30480 = result;
  *algn_100B30488 = v3;
  return result;
}

void sub_10075A390()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008EA890;
  v1._countAndFlagsBits = 0x6574656C6544;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000022;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30490 = v3;
}

void sub_10075A43C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906760;
  v1._countAndFlagsBits = 0x79422074726F53;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B304A0 = v3;
}

void sub_10075A4EC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906730;
  v1._countAndFlagsBits = 0x6144207972746E45;
  v1._object = 0xEA00000000006574;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B304B0 = v3;
}

void sub_10075A5A0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906700;
  v1._countAndFlagsBits = 0x4420746E656D6F4DLL;
  v1._object = 0xEB00000000657461;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000028;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B304C0 = v3;
}

void sub_10075A658()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906940;
  v1._countAndFlagsBits = 0x746E697250;
  v2._object = 0x8000000100906920;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v2._countAndFlagsBits = 0xD000000000000018;
  v1._object = 0xE500000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B304D0 = v3;
}

void sub_10075A718()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009068E0;
  v1._countAndFlagsBits = 0x74726F707845;
  v2._object = 0x80000001009068C0;
  v4._countAndFlagsBits = 0xD000000000000030;
  v2._countAndFlagsBits = 0xD000000000000019;
  v1._object = 0xE600000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B304E0 = v3;
}

void sub_10075A7D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906E40;
  v1._countAndFlagsBits = 0x656C746954;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000026;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B304F0 = v3;
}

void sub_10075A884()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907170;
  v1._countAndFlagsBits = 0x6F4D20796C696144;
  v1._object = 0xEA0000000000646FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000049;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30500 = v3;
}

void sub_10075A938()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009072A0;
  v1._countAndFlagsBits = 0x206E6F69746F6D45;
  v1._object = 0xAD0000402520B7C2;
  v2._object = 0x8000000100907280;
  v2._countAndFlagsBits = 0x1000000000000011;
  v4._countAndFlagsBits = 0xD000000000000046;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B30510 = v3;
}

void sub_10075AA04()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907110;
  v1._countAndFlagsBits = 0x6E6F69746F6D45;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0x6E6F69746F6D45;
  v2._object = 0xE700000000000000;
  v4._countAndFlagsBits = 0xD00000000000005DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30540 = v3;
}

void sub_10075AAB4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907200;
  v1._countAndFlagsBits = 0x402520B7C2204025;
  v2._object = 0x80000001009071C0;
  v2._countAndFlagsBits = 0x1000000000000035;
  v1._object = 0xA800000000000000;
  v4._countAndFlagsBits = 0xD00000000000007DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B30550 = v3;
}

void sub_10075AB74()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903BA0;
  v1._countAndFlagsBits = 0xD000000000000038;
  v1._object = 0x8000000100903B40;
  v2._object = 0x8000000100903B80;
  v4._countAndFlagsBits = 0xD00000000000003DLL;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30560 = v3;
}

void sub_10075AC40()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906680;
  v1._countAndFlagsBits = 0x206E69206E65704FLL;
  v1._object = 0xEE0068746C616548;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000024;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30570 = v3;
}

void sub_10075ACFC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906030;
  v1._object = 0x8000000100906010;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30590 = v3;
}

void sub_10075ADB0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904860;
  v1._countAndFlagsBits = 0x25209480E2204025;
  v2._object = 0x8000000100904840;
  v2._countAndFlagsBits = 0x1000000000000011;
  v1._object = 0xA900000000000040;
  v4._countAndFlagsBits = 0xD000000000000021;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B305A0 = v3;
}

void sub_10075AE74()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903AD0;
  v1._object = 0x8000000100903AB0;
  v4._countAndFlagsBits = 0xD000000000000034;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B305B0 = v3;
}

void sub_10075AF2C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009048D0;
  v1._object = 0x80000001009048B0;
  v4._countAndFlagsBits = 0xD0000000000000A8;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B305C0 = v3;
}

void sub_10075AFE4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906290;
  v1._object = 0x8000000100906270;
  v4._countAndFlagsBits = 0xD000000000000032;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B305D0 = v3;
}

void sub_10075B09C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904980;
  v1._countAndFlagsBits = 0x402520B7C2204025;
  v2._object = 0x80000001008E67F0;
  v2._countAndFlagsBits = 0x100000000000001BLL;
  v1._object = 0xA800000000000000;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B305E0 = v3;
}

void sub_10075B15C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009047A0;
  v1._countAndFlagsBits = 0xD000000000000038;
  v1._object = 0x8000000100904760;
  v2._object = 0x8000000100903B80;
  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B305F0 = v3;
}

void sub_10075B224()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904810;
  v1._countAndFlagsBits = 0x2520646E61204025;
  v2._countAndFlagsBits = 0xD000000000000031;
  v2._object = 0x80000001009047D0;
  v1._object = 0xE900000000000040;
  v4._countAndFlagsBits = 0xD000000000000023;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v0, v1, v4);

  xmmword_100B30600 = v3;
}

void sub_10075B2EC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904FE0;
  v1._object = 0x8000000100904FC0;
  v4._countAndFlagsBits = 0xD000000000000049;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30610 = v3;
}

void sub_10075B3A4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904DB0;
  v1._object = 0x8000000100904D90;
  v4._countAndFlagsBits = 0xD000000000000046;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30620 = v3;
}

void sub_10075B45C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904E20;
  v1._object = 0x8000000100904E00;
  v4._countAndFlagsBits = 0xD000000000000045;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30630 = v3;
}

void sub_10075B514()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904E90;
  v1._object = 0x8000000100904E70;
  v4._countAndFlagsBits = 0xD000000000000046;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30640 = v3;
}

void sub_10075B5CC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904F70;
  v1._object = 0x8000000100904F40;
  v4._countAndFlagsBits = 0xD00000000000004DLL;
  v1._countAndFlagsBits = 0xD000000000000023;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30650 = v3;
}

void sub_10075B684()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904EE0;
  v1._countAndFlagsBits = 0x756F4A2077656956;
  v1._object = 0xEC0000006C616E72;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000051;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30660 = v3;
}

void sub_10075B73C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906C70;
  v1._object = 0x8000000100906C50;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30670 = v3;
}

void sub_10075B7F4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906A20;
  v1._countAndFlagsBits = 0xD000000000000080;
  v1._object = 0x8000000100906990;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000043;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30680 = v3;
}

void sub_10075B8AC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906B00;
  v1._countAndFlagsBits = 0xD000000000000081;
  v1._object = 0x8000000100906A70;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000060;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30690 = v3;
}

void sub_10075B964()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906BF0;
  v1._countAndFlagsBits = 0xD000000000000075;
  v1._object = 0x8000000100906B70;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000057;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306A0 = v3;
}

void sub_10075BA1C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906240;
  v1._object = 0x80000001008F85F0;
  v4._countAndFlagsBits = 0xD000000000000022;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306B0 = v3;
}

void sub_10075BAD4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009052F0;
  v1._countAndFlagsBits = 0x776F4E20746F4ELL;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000035;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306C0 = v3;
}

void sub_10075BB84()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008E2420;
  v1._object = 0x80000001008E2400;
  v4._countAndFlagsBits = 0xD000000000000054;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306D0 = v3;
}

void sub_10075BC3C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009061B0;
  v1._object = 0x8000000100906190;
  v4._countAndFlagsBits = 0xD000000000000018;
  v1._countAndFlagsBits = 0xD000000000000013;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306E0 = v3;
}

void sub_10075BCF4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906150;
  v1._countAndFlagsBits = 0xD0000000000000D2;
  v1._object = 0x8000000100906070;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B306F0 = v3;
}

void sub_10075BDAC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906E20;
  v1._object = 0x8000000100906E00;
  v1._countAndFlagsBits = 0x1000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30700 = v3;
}

void sub_10075BE60()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904070;
  v1._object = 0x8000000100904020;
  v2._object = 0x8000000100904050;
  v4._countAndFlagsBits = 0xD000000000000051;
  v1._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 0x1000000000000012;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30710 = v3;
}

void sub_10075BF28()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903FA0;
  v1._object = 0x8000000100903F20;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x8000000100903F50;
  v4._countAndFlagsBits = 0xD00000000000007BLL;
  v1._countAndFlagsBits = 0xD000000000000023;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30720 = v3;
}

void sub_10075BFF0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008E9050;
  v1._object = 0x80000001008E9010;
  v2._object = 0x80000001008E9030;
  v4._countAndFlagsBits = 0xD00000000000004ELL;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2._countAndFlagsBits = 0xD000000000000018;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30730 = v3;
}

void sub_10075C0B8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904590;
  v1._object = 0x8000000100904520;
  v2._countAndFlagsBits = 0xD00000000000003DLL;
  v2._object = 0x8000000100904550;
  v4._countAndFlagsBits = 0xD00000000000005CLL;
  v1._countAndFlagsBits = 0xD000000000000022;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30740 = v3;
}

void sub_10075C17C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904130;
  v1._object = 0x80000001009040D0;
  v2._countAndFlagsBits = 0xD00000000000003ELL;
  v2._object = 0x80000001009040F0;
  v4._countAndFlagsBits = 0xD000000000000062;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30750 = v3;
}

void sub_10075C240()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904200;
  v1._object = 0x80000001009041A0;
  v2._countAndFlagsBits = 0xD00000000000003ELL;
  v2._object = 0x80000001009041C0;
  v4._countAndFlagsBits = 0xD000000000000062;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30760 = v3;
}

void sub_10075C304()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009042F0;
  v1._object = 0x8000000100904270;
  v2._countAndFlagsBits = 0xD000000000000040;
  v2._object = 0x80000001009042A0;
  v4._countAndFlagsBits = 0xD000000000000064;
  v1._countAndFlagsBits = 0xD000000000000021;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30770 = v3;
}

void sub_10075C3C8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009043C0;
  v1._object = 0x8000000100904360;
  v2._countAndFlagsBits = 0xD00000000000003DLL;
  v2._object = 0x8000000100904380;
  v4._countAndFlagsBits = 0xD000000000000061;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30780 = v3;
}

void sub_10075C48C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009044B0;
  v1._object = 0x8000000100904430;
  v2._countAndFlagsBits = 0xD000000000000040;
  v2._object = 0x8000000100904460;
  v4._countAndFlagsBits = 0xD000000000000064;
  v1._countAndFlagsBits = 0xD000000000000021;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30790 = v3;
}

void sub_10075C550()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001008E90E0;
  v1._object = 0x80000001008E90A0;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v2._object = 0x80000001008E90C0;
  v4._countAndFlagsBits = 0xD00000000000004ALL;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307A0 = v3;
}

void sub_10075C614()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906D70;
  v1._object = 0x8000000100906D00;
  v2._countAndFlagsBits = 0xD000000000000049;
  v2._object = 0x8000000100906D20;
  v4._countAndFlagsBits = 0xD000000000000051;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307B0 = v3;
}

void sub_10075C6D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903EA0;
  v1._countAndFlagsBits = 0xD000000000000026;
  v1._object = 0x8000000100903E50;
  v2._object = 0x8000000100903E80;
  v4._countAndFlagsBits = 0xD000000000000053;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307C0 = v3;
}

void sub_10075C79C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903CD0;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v1._object = 0x8000000100903C80;
  v2._object = 0x8000000100903CB0;
  v4._countAndFlagsBits = 0xD000000000000062;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307D0 = v3;
}

void sub_10075C860()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903DD0;
  v1._object = 0x8000000100903D70;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  v2._object = 0x8000000100903DA0;
  v4._countAndFlagsBits = 0xD000000000000077;
  v1._countAndFlagsBits = 0xD000000000000028;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307E0 = v3;
}

void sub_10075C924()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905670;
  v1._countAndFlagsBits = 0x4C2065676E616843;
  v1._object = 0xEF6E6F697461636FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000056;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B307F0 = v3;
}

void sub_10075C9E0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009073E0;
  v1._countAndFlagsBits = 0x6F4A20794D206E49;
  v1._object = 0xED00006C616E7275;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000064;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30800 = v3;
}

void sub_10075CA9C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009073A0;
  v1._countAndFlagsBits = 0x654D207261654ELL;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000035;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30810 = v3;
}

void sub_10075CB4C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009072F0;
  v1._countAndFlagsBits = 0x6F4C206F746F6850;
  v1._object = 0xEE006E6F69746163;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x10000000000000A4;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30820 = v3;
}

void sub_10075CC08()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905590;
  v1._countAndFlagsBits = 0x6F4C206F65646956;
  v1._object = 0xEE006E6F69746163;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x10000000000000A4;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30830 = v3;
}

void sub_10075CCC4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009054F0;
  v1._countAndFlagsBits = 0x6F4C20616964654DLL;
  v1._object = 0xEE006E6F69746163;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x1000000000000098;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30840 = v3;
}

void sub_10075CD80()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009056F0;
  v1._object = 0x80000001009056D0;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30850 = v3;
}

void sub_10075CE3C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905870;
  v1._countAndFlagsBits = 0x686374614D206F4ELL;
  v1._object = 0xEA00000000007365;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30860 = v3;
}

void sub_10075CEF0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905840;
  v1._countAndFlagsBits = 0xD000000000000028;
  v1._object = 0x8000000100905810;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000022;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30870 = v3;
}

void sub_10075CFA8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905950;
  v1._countAndFlagsBits = 0x6563616C50206F4ELL;
  v1._object = 0xE900000000000073;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000072;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30880 = v3;
}

void sub_10075D05C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009058D0;
  v1._object = 0x8000000100905890;
  v4._countAndFlagsBits = 0xD000000000000074;
  v1._countAndFlagsBits = 0xD000000000000030;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30890 = v3;
}

void sub_10075D118()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009067B0;
  v1._object = 0x80000001008E44E0;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308A0 = v3;
}

void sub_10075D1CC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905BD0;
  v1._object = 0x8000000100905BB0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308B0 = v3;
}

void sub_10075D284()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905B70;
  v1._countAndFlagsBits = 0xD000000000000050;
  v1._object = 0x8000000100905B10;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308C0 = v3;
}

void sub_10075D33C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905CC0;
  v1._object = 0x8000000100905CA0;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308D0 = v3;
}

void sub_10075D3F4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905C60;
  v1._countAndFlagsBits = 0xD000000000000053;
  v1._object = 0x8000000100905C00;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308E0 = v3;
}

void sub_10075D4AC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905DB0;
  v1._object = 0x8000000100905D90;
  v4._countAndFlagsBits = 0xD000000000000043;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B308F0 = v3;
}

void sub_10075D564()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905D50;
  v1._countAndFlagsBits = 0xD000000000000050;
  v1._object = 0x8000000100905CF0;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000003DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30900 = v3;
}

void sub_10075D61C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905F50;
  v1._object = 0x8000000100905F30;
  v4._countAndFlagsBits = 0xD000000000000032;
  v1._countAndFlagsBits = 0xD00000000000001CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30910 = v3;
}

void sub_10075D6D4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905E80;
  v1._countAndFlagsBits = 0xD000000000000073;
  v1._object = 0x8000000100905E00;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000059;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30920 = v3;
}

void sub_10075D78C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905EE0;
  v1._object = 0x80000001008E57E0;
  v4._countAndFlagsBits = 0xD00000000000004BLL;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30930 = v3;
}

void sub_10075D844()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009057E0;
  v1._object = 0x80000001009057C0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v1._countAndFlagsBits = 0xD000000000000012;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30940 = v3;
}

void sub_10075D8FC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905780;
  v1._countAndFlagsBits = 0xD00000000000006ALL;
  v1._object = 0x8000000100905710;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000032;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30950 = v3;
}

void sub_10075D9B4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009054C0;
  v1._object = 0x8000000100905490;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30960 = v3;
}

void sub_10075DA6C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905440;
  v1._object = 0x8000000100905410;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v1._countAndFlagsBits = 0xD000000000000029;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30970 = v3;
}

void sub_10075DB24()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009053E0;
  v1._object = 0x80000001009053C0;
  v4._countAndFlagsBits = 0xD00000000000002DLL;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30980 = v3;
}

void sub_10075DBDC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905390;
  v1._countAndFlagsBits = 0xD000000000000055;
  v1._object = 0x8000000100905330;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30990 = v3;
}

void sub_10075DC94()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009052C0;
  v1._countAndFlagsBits = 0x6553206F74206F47;
  v1._object = 0xEE0073676E697474;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000021;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309A0 = v3;
}

void sub_10075DD50()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904AA0;
  v1._object = 0x8000000100904A80;
  v4._countAndFlagsBits = 0xD00000000000002FLL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309B0 = v3;
}

void sub_10075DE08()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904A60;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v1._object = 0x8000000100904A40;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000016;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309C0 = v3;
}

void sub_10075DEC0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905470;
  v1._countAndFlagsBits = 0x73676E6974746553;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000013;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309D0 = v3;
}

void sub_10075DF70()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906530;
  v1._object = 0x8000000100906510;
  v1._countAndFlagsBits = 0x1000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000023;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309E0 = v3;
}

void sub_10075E024()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009064F0;
  v1._countAndFlagsBits = 0xD000000000000032;
  v1._object = 0x80000001009064B0;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B309F0 = v3;
}

void sub_10075E0DC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906580;
  v1._countAndFlagsBits = 0x6C7469742077654ELL;
  v1._object = 0xE900000000000065;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A00 = v3;
}

void sub_10075E190()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009049D0;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x80000001009049B0;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000016;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A10 = v3;
}

void sub_10075E248()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xEF7961646F742073;
  v1._countAndFlagsBits = 0x7961646F54;
  v4._countAndFlagsBits = 0x6562697263736544;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A20 = v3;
}

void sub_10075E2FC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903A90;
  v1._countAndFlagsBits = 0x6164726574736559;
  v1._object = 0xE900000000000079;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000013;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A30 = v3;
}

void sub_10075E3B0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905130;
  v1._object = 0x8000000100905160;
  v4._countAndFlagsBits = 0xD000000000000022;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A40 = v3;
}

void sub_10075E468()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905130;
  v1._countAndFlagsBits = 0xD00000000000003CLL;
  v1._object = 0x80000001009050F0;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000022;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A50 = v3;
}

void sub_10075E520()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009050A0;
  v1._object = 0x80000001008F8B30;
  v4._countAndFlagsBits = 0xD000000000000044;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A60 = v3;
}

void sub_10075E5D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905060;
  v1._countAndFlagsBits = 0x776F4E20746F4ELL;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A70 = v3;
}

void sub_10075E688()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009062F0;
  v1._countAndFlagsBits = 0x69726F6765746143;
  v1._object = 0xEA00000000007365;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000019;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A80 = v3;
}

void sub_10075E73C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906310;
  v1._object = 0x80000001008F52A0;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30A90 = v3;
}

void sub_10075E7F4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009062D0;
  v1._countAndFlagsBits = 0x7261656C43;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AA0 = v3;
}

void sub_10075E8A0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906370;
  v1._countAndFlagsBits = 0x6C75736552206F4ELL;
  v1._object = 0xEA00000000007374;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AB0 = v3;
}

void sub_10075E954()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906350;
  v1._object = 0x8000000100906330;
  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v1._countAndFlagsBits = 0xD000000000000011;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AC0 = v3;
}

void sub_10075EA0C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904A10;
  v1._countAndFlagsBits = 0x6972746E45206F4ELL;
  v1._object = 0xEA00000000007365;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AD0 = v3;
}

void sub_10075EAC0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906EE0;
  v1._object = 0x8000000100906EB0;
  v4._countAndFlagsBits = 0xD000000000000038;
  v1._countAndFlagsBits = 0xD00000000000002ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AE0 = v3;
}

void sub_10075EB78()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009051D0;
  v1._object = 0x80000001008E0D10;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30AF0 = v3;
}

void sub_10075EC30()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009051A0;
  v1._object = 0x8000000100905180;
  v4._countAndFlagsBits = 0xD000000000000023;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B00 = v3;
}

void sub_10075ECE8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904650;
  v1._object = 0x8000000100904630;
  v4._countAndFlagsBits = 0xD000000000000090;
  v1._countAndFlagsBits = 0xD00000000000001FLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B60 = v3;
}

void sub_10075EDA0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905A10;
  v1._countAndFlagsBits = 0x6552206F69647541;
  v1._object = 0xEE00726564726F63;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000034;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B70 = v3;
}

void sub_10075EE5C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905A50;
  v1._countAndFlagsBits = 0x6172656D6143;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000035;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B90 = v3;
}

void sub_10075EF08()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904CB0;
  v1._countAndFlagsBits = 0x6574656C6544;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000043;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BA0 = v3;
}

void sub_10075EFB4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009067F0;
  v1._object = 0x80000001009067D0;
  v4._countAndFlagsBits = 0xD000000000000046;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BB0 = v3;
}

void sub_10075F06C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906DD0;
  v1._countAndFlagsBits = 0x746361746E6F43;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BD0 = v3;
}

void sub_10075F11C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907620;
  v1._object = 0x8000000100907600;
  v4._countAndFlagsBits = 0xD000000000000038;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BE0 = v3;
}

void sub_10075F1D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904D00;
  v1._countAndFlagsBits = 0x6574656C6544;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000025;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30BF0 = v3;
}

void sub_10075F284()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009065C0;
  v1._countAndFlagsBits = 1953064005;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000023;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C00 = v3;
}

void sub_10075F32C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905640;
  v1._countAndFlagsBits = 0x65736F6C43;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000027;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C10 = v3;
}

void sub_10075F3D8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905FB0;
  v1._object = 0x8000000100905F90;
  v4._countAndFlagsBits = 0xD000000000000059;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C20 = v3;
}

void sub_10075F490()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009046F0;
  v1._countAndFlagsBits = 0x746F727720756F59;
  v1._object = 0xED00004025203A65;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000060;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C30 = v3;
}

void sub_10075F54C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905270;
  v1._countAndFlagsBits = 0x646E61707845;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000040;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C40 = v3;
}

void sub_10075F5F8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906E70;
  v1._countAndFlagsBits = 0x206C616E72756F4ALL;
  v1._object = 0xED0000656C746954;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C60 = v3;
}

void sub_10075F6B4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906CC0;
  v1._object = 0x8000000100906CA0;
  v4._countAndFlagsBits = 0xD000000000000039;
  v1._countAndFlagsBits = 0xD000000000000010;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C70 = v3;
}

void sub_10075F770()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009059D0;
  v1._countAndFlagsBits = 0x657250206B6E694CLL;
  v1._object = 0xEC00000077656976;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C80 = v3;
}

void sub_10075F828()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904C50;
  v1._countAndFlagsBits = 1702131021;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000005CLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CA0 = v3;
}

void sub_10075F8D0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904B60;
  v1._countAndFlagsBits = 0x6573756150;
  v1._object = 0xE500000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000080;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CB0 = v3;
}

void sub_10075F97C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906840;
  v1._countAndFlagsBits = 0x646573756150;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000038;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CC0 = v3;
}

void sub_10075FA28()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904AD0;
  v1._countAndFlagsBits = 2036427856;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000087;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CE0 = v3;
}

void sub_10075FAD0()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906880;
  v1._countAndFlagsBits = 0x676E6979616C50;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000030;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30CF0 = v3;
}

void sub_10075FB80()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907450;
  v1._countAndFlagsBits = 0x656D75736552;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000049;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D00 = v3;
}

void sub_10075FC2C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009074A0;
  v1._countAndFlagsBits = 0x64726F636552;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD0000000000000A5;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D10 = v3;
}

void sub_10075FCD8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907550;
  v1._countAndFlagsBits = 1886352467;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD0000000000000A1;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D20 = v3;
}

void sub_10075FD80()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905A90;
  v1._countAndFlagsBits = 0x666F206574617453;
  v1._object = 0xED0000646E694D20;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000003CLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D30 = v3;
}

void sub_10075FE3C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905AD0;
  v1._object = 0x80000001008E57E0;
  v4._countAndFlagsBits = 0xD00000000000003ELL;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D40 = v3;
}

void sub_10075FEF8()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904BF0;
  v1._countAndFlagsBits = 0x6574756D6E55;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000005ELL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D50 = v3;
}

void sub_10075FFA4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100904D50;
  v1._object = 0x8000000100904D30;
  v4._countAndFlagsBits = 0xD000000000000036;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D60 = v3;
}

void sub_10076005C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100905230;
  v1._object = 0x8000000100905210;
  v4._countAndFlagsBits = 0xD000000000000036;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D70 = v3;
}

void sub_100760114()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907660;
  v1._countAndFlagsBits = 0x6D726F6665766157;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000026;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D80 = v3;
}

void sub_1007601C4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100906620;
  v1._object = 0x80000001009065F0;
  v4._countAndFlagsBits = 0xD00000000000005BLL;
  v1._countAndFlagsBits = 0xD000000000000028;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30D90 = v3;
}

void sub_10076027C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903C20;
  v1._countAndFlagsBits = 0x6573734120646441;
  v1._object = 0xE900000000000074;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000020;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30DA0 = v3;
}

void sub_100760330()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903C50;
  v1._countAndFlagsBits = 0x7373412065766F4DLL;
  v1._object = 0xEA00000000007465;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000021;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30DB0 = v3;
}

void sub_1007603E4()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009051F0;
  v1._countAndFlagsBits = 0x676E69707954;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30DC0 = v3;
}

void sub_1007604C4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30DE8 = v1;
}

void sub_100760688()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_100B30E30 = v1;
}

void sub_1007607C8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30E68 = v1;
}

void sub_1007608E0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30E98 = v1;
}

void sub_100760950()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_100B30EA0 = v1;
}

void sub_1007609C0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30EA8 = v1;
}

void sub_100760A30()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_100B30EB0 = v1;
}

void sub_100760AA0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  qword_100B30EB8 = v1;
}

uint64_t sub_100760B64(uint64_t a1, uint64_t a2)
{
  result = DebugData.init(name:)(*&a1).name._countAndFlagsBits;
  *&xmmword_100B30EE8 = v3;
  *(&xmmword_100B30EE8 + 1) = v4;
  qword_100B30EF8 = v3;
  unk_100B30F00 = v4;
  *&xmmword_100B30F08 = v3;
  *(&xmmword_100B30F08 + 1) = v4;
  qword_100B30F18 = v3;
  unk_100B30F20 = v4;
  return result;
}

uint64_t sub_100760B9C(uint64_t a1, uint64_t a2)
{
  result = DebugData.init(name:)(*&a1).name._countAndFlagsBits;
  *&xmmword_100B30F28 = v3;
  *(&xmmword_100B30F28 + 1) = v4;
  qword_100B30F38 = v3;
  unk_100B30F40 = v4;
  *&xmmword_100B30F48 = v3;
  *(&xmmword_100B30F48 + 1) = v4;
  qword_100B30F58 = v3;
  unk_100B30F60 = v4;
  return result;
}

uint64_t sub_100760BD4()
{
  result = static AssetPlacement.maxGridCount.getter();
  qword_100B30F68 = result;
  return result;
}

void sub_100760CA8(void *a1, char a2)
{
  v4 = [a1 layer];
  v5 = v4;
  v6 = 0.0;
  if (a2)
  {
    v6 = 12.0;
    v7 = 0.2;
  }

  else
  {
    v7 = 0.0;
  }

  [v4 setCornerRadius:v6];

  v8 = [a1 layer];
  [v8 setCornerCurve:kCACornerCurveContinuous];

  v9 = [a1 layer];
  v10 = [objc_opt_self() blackColor];
  v11 = [v10 CGColor];

  [v9 setShadowColor:v11];
  v12 = [a1 layer];
  *&v13 = v7;
  [v12 setShadowOpacity:v13];

  v14 = [a1 layer];
  [v14 setShadowOffset:{0.0, 4.0}];

  v15 = [a1 layer];
  [v15 setShadowRadius:20.0];

  v16 = [a1 layer];
  [v16 setShadowPathIsBounds:1];
}

void sub_100760EA4(void *a1)
{
  v2 = [a1 layer];
  [v2 setMasksToBounds:0];

  v3 = [a1 layer];
  v4 = [objc_opt_self() blackColor];
  v5 = [v4 CGColor];

  [v3 setShadowColor:v5];
  v6 = [a1 layer];
  LODWORD(v7) = 1028443341;
  [v6 setShadowOpacity:v7];

  v8 = [a1 layer];
  [v8 setShadowOffset:{0.0, 2.0}];

  v9 = [a1 layer];
  [v9 setShadowRadius:16.0];

  v10 = [a1 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [a1 layer];
  [v11 setShadowPathIsBounds:1];
}

id sub_10076107C()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleTitle2];
  v2 = [v1 fontDescriptor];
  v3 = [v1 fontDescriptor];
  v4 = [v3 symbolicTraits];

  v5 = [v2 fontDescriptorWithSymbolicTraits:v4 | 2];
  if (!v5)
  {
    return v1;
  }

  v6 = [v0 fontWithDescriptor:v5 size:0.0];

  return v6;
}

uint64_t sub_100761190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100761230, v6, v5);
}

uint64_t sub_100761230()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  sub_1000F24EC(&qword_100AD65F0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  (*(v5 + 16))(v7 + v6, v3, v4);
  v8 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initForExportingURLs:isa asCopy:1];
  v0[10] = v10;

  [v10 setAllowsMultipleSelection:0];
  [v10 setDelegate:v1];
  [v2 presentViewController:v10 animated:1 completion:0];
  v11 = static MainActor.shared.getter();
  v0[11] = v11;
  v12 = swift_task_alloc();
  v0[12] = v12;
  *(v12 + 16) = v1;
  v13 = swift_task_alloc();
  v0[13] = v13;
  v14 = sub_1000F24EC(&unk_100AD6DD0);
  *v13 = v0;
  v13[1] = sub_10076149C;
  v15 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v15, v11, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x80000001009076D0, sub_100761AA4, v12, v14);
}

uint64_t sub_10076149C()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1007615FC, v3, v2);
}

uint64_t sub_1007615FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100761668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF05F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1000F24EC(&qword_100AF05F0);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC7Journal14DocumentPicker_delegateContinuation;
  swift_beginAccess();
  sub_100761AAC(v6, a2 + v9);
  return swift_endAccess();
}

id sub_100761914()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentPicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DocumentPicker()
{
  result = qword_100AF05D8;
  if (!qword_100AF05D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007619B0()
{
  sub_100761A40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100761A40()
{
  if (!qword_100AF05E8)
  {
    sub_1000F2A18(&qword_100AF05F0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF05E8);
    }
  }
}

uint64_t sub_100761AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF05F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100761B1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1000F24EC(&qword_100AF05F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_1000F24EC(&qword_100AF05F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR____TtC7Journal14DocumentPicker_delegateContinuation;
  swift_beginAccess();
  sub_1007620E0(v2 + v17, v16);
  if ((*(v8 + 48))(v16, 1, v7))
  {
    sub_100762150(v16);
  }

  else
  {
    (*(v8 + 16))(v10, v16, v7);
    sub_100762150(v16);
    v24 = a1;
    v18 = *(a1 + 16);
    v19 = type metadata accessor for URL();
    v20 = *(v19 - 8);
    if (v18)
    {
      (*(*(v19 - 8) + 16))(v6, v24 + ((*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80)), v19);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    (*(v20 + 56))(v6, v21, 1, v19);
    CheckedContinuation.resume(returning:)();
    (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 56))(v13, 1, 1, v7);
  swift_beginAccess();
  sub_100761AAC(v13, v2 + v17);
  return swift_endAccess();
}

uint64_t sub_100761E30()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_1000F24EC(&qword_100AF05F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-v7];
  v9 = sub_1000F24EC(&qword_100AF05F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v18[-v13];
  v15 = OBJC_IVAR____TtC7Journal14DocumentPicker_delegateContinuation;
  swift_beginAccess();
  sub_1007620E0(v1 + v15, v14);
  if ((*(v6 + 48))(v14, 1, v5))
  {
    sub_100762150(v14);
  }

  else
  {
    (*(v6 + 16))(v8, v14, v5);
    sub_100762150(v14);
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    CheckedContinuation.resume(returning:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v11, 1, 1, v5);
  swift_beginAccess();
  sub_100761AAC(v11, v1 + v15);
  return swift_endAccess();
}

uint64_t sub_1007620E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF05F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100762150(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF05F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007621B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(id *)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v8 = a2;
    v9 = a1;
    v7 = a5;
    a1 = sub_1007631A4(a2, a3);
    v10 = v8 >> 62;
    if (!(v8 >> 62))
    {
      v11 = sub_100763294(a1, v9, *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10), v8, v6);
      if (v12)
      {
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v13 = v11;
      }

      result = sub_1007631A4(v8, v6);
      if (v13 < result)
      {
        goto LABEL_31;
      }

      v15 = result;
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v15)
      {
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v24 = a1;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  v26 = sub_100763294(v24, v9, v25, v8, v6);
  if (v27)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  v13 = v26;
  result = sub_1007631A4(v8, v6);
  if (v13 < result)
  {
    goto LABEL_31;
  }

  v15 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v15)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v15 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v13)
  {
    goto LABEL_33;
  }

  if (v13 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v8 & 0xC000000000000001) == 0 || v15 == v13)
  {

    goto LABEL_21;
  }

  if (v15 >= v13)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  type metadata accessor for JournalMO();

  v16 = v15;
  do
  {
    v17 = v16 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v16);
    v16 = v17;
  }

  while (v13 != v17);
LABEL_21:

  if (v10)
  {
    v18 = _CocoaArrayWrapper.subscript.getter();
    v19 = v21;
    v15 = v22;
    v20 = v23;
  }

  else
  {
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    v19 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v20 = (2 * v13) | 1;
  }

  *v7 = v18;
  v7[1] = v19;
  v7[2] = v15;
  v7[3] = v20;
  v7[4] = v6;
  v7[5] = v5;
  return result;
}

uint64_t sub_1007623E0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100762418()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF0600);
  sub_10000617C(v0, qword_100AF0600);
  return Logger.init(subsystem:category:)();
}

void sub_10076248C(double a1)
{
  if (qword_100AD0A30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF0600);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = Current - a1;
    v8 = String.init(format:_:)();
    v10 = sub_100008458(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "ExportManager.createExportPayload executed in %ss", v4, 0xCu);
    sub_10000BA7C(v5);
  }
}

unint64_t sub_100762644@<X0>(void *a1@<X8>)
{
  result = static JournalDataUtilities.fetchJournalEntryMOs(entryUUIDs:context:)();
  if (v1)
  {
    return result;
  }

  v4 = result;
  if (!(result >> 62))
  {
    v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:

    *a1 = _swiftEmptyArrayStorage;
    return result;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = a1;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 managedObjectContext];
      if (!v9)
      {
        v9 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
      }

      ++v6;
      type metadata accessor for EntryViewModel();
      swift_allocObject();
      sub_100035ADC(v8, 0, 0, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    *v10 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100762810(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v78 = a5;
  v77._object = a3;
  v77._countAndFlagsBits = a2;
  v74 = type metadata accessor for CharacterSet();
  v73 = *(v74 - 8);
  v6 = __chkstk_darwin(v74);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v70 = &v66 - v9;
  __chkstk_darwin(v8);
  v72 = &v66 - v10;
  v69 = sub_1000F24EC(&unk_100AD6890);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v11;
  v12 = type metadata accessor for Date.ISO8601FormatStyle();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v66 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v66 - v21;
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v75 = type metadata accessor for Date();
  v25 = *(v75 - 8);
  __chkstk_darwin(v75);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  v76 = a1;
  swift_beginAccess();
  v29 = a1 + v28;
  v30 = v75;
  (*(v25 + 16))(v27, v29, v75);
  static FormatStyle<>.iso8601.getter();
  Date.ISO8601FormatStyle.year()();
  v31 = *(v13 + 8);
  v31(v16, v12);
  Date.ISO8601FormatStyle.month()();
  v31(v19, v12);
  Date.ISO8601FormatStyle.day()();
  v31(v22, v12);
  sub_100051750(&qword_100ADA640, &type metadata accessor for Date.ISO8601FormatStyle);
  Date.formatted<A>(_:)();
  v31(v24, v12);
  (*(v25 + 8))(v27, v30);
  v32 = sub_1000819F8();
  if (v32)
  {
    v33 = v32;
    v34 = [v32 string];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v38)
    {
      v83._countAndFlagsBits = v35;
      v83._object = v37;
      v39 = v67;
      Regex.init(_regexString:version:)();
      v81 = 95;
      v82 = 0xE100000000000000;
      sub_1000F2B44();
      sub_1000F2B98();
      sub_10000B58C(&qword_100AD68A0, &unk_100AD6890);
      v40 = v69;
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
      (*(v68 + 8))(v39, v40);

      v83 = v80;
      v41 = v70;
      static CharacterSet.whitespacesAndNewlines.getter();
      v81 = &off_100A574B8;
      sub_100051750(&qword_100AF0618, &type metadata accessor for CharacterSet);
      sub_1000F24EC(&qword_100AF0620);
      sub_10000B58C(&qword_100AF0628, &qword_100AF0620);
      v42 = v71;
      v43 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v72;
      CharacterSet.union(_:)();
      v45 = *(v73 + 8);
      v45(v42, v43);
      v45(v41, v43);
      sub_1000777B4();
      StringProtocol.trimmingCharacters(in:)();
      v45(v44, v43);

      sub_1007634AC(200);

      v80._countAndFlagsBits = 95;
      v80._object = 0xE100000000000000;
      v46 = static String._fromSubstring(_:)();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      String.append(_:)(v49);

      String.append(_:)(v80);
    }
  }

  v51 = v84;
  v50 = v85;
  swift_beginAccess();
  v52 = 0;
  do
  {
    v81 = v51;
    v82 = v50;
    if (v52)
    {
      v80._countAndFlagsBits = 10335;
      v80._object = 0xE200000000000000;
      v79 = v52;

      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 41;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      String.append(_:)(v80);
    }

    else
    {
    }

    v80._countAndFlagsBits = 46;
    v80._object = 0xE100000000000000;
    String.append(_:)(v77);
    String.append(_:)(v80);

    v57 = *v78;
    v59 = v81;
    v58 = v82;
    if (!*(*v78 + 16))
    {
      goto LABEL_22;
    }

    Hasher.init(_seed:)();

    String.hash(into:)();
    v60 = Hasher._finalize()();
    v61 = -1 << *(v57 + 32);
    v62 = v60 & ~v61;
    if (((*(v57 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
    {
LABEL_21:

LABEL_22:

      swift_beginAccess();

      sub_100286DEC(&v79, v59, v58);
      swift_endAccess();

      return v59;
    }

    v63 = ~v61;
    while (1)
    {
      v64 = (*(v57 + 48) + 16 * v62);
      v65 = *v64 == v59 && v64[1] == v58;
      if (v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v62 = (v62 + 1) & v63;
      if (((*(v57 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  while (!__OFADD__(v52++, 1));
  __break(1u);
  return result;
}

uint64_t sub_1007631A4(unint64_t a1, uint64_t (*a2)(id *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v12 = v7;
    v9 = a2(&v12);

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return v5;
}

uint64_t sub_100763294(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id *))
{
  v6 = a2;
  v7 = result;
  v8 = a2 > 0;
  v9 = a2 >> 63;
  if (a2 >> 63 < 0 && a4 >> 62)
  {
    v11 = a4;
    result = _CocoaArrayWrapper.endIndex.getter();
    a4 = v11;
    v6 = a2;
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return v7;
    }

    goto LABEL_9;
  }

  v12 = __OFSUB__(0, v6);
  v6 = -v6;
  if (!v12)
  {
    if (v6 < 0)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_9:
    if (v7 == a3)
    {
      return 0;
    }

    v5 = a4 & 0xFFFFFFFFFFFFFF8;
    if (!(a4 >> 62))
    {
      v13 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }

LABEL_37:
    v20 = v6;
    v21 = a4;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    a4 = v21;
    v6 = v20;
    v13 = v22;
LABEL_13:
    v8 |= v9;
    v9 = a4 & 0xC000000000000001;
    v23 = v6;
    v14 = a4 + 32;
    v15 = 1;
    while (1)
    {
      v25 = v15;
      v16 = v7;
      while (1)
      {
        v7 = v16 + v8;
        if (__OFADD__(v16, v8))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (v7 == v13)
        {
          break;
        }

        if (v9)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          if (v7 >= *(v5 + 16))
          {
            goto LABEL_33;
          }

          v17 = *(v14 + 8 * v7);
        }

        v18 = v17;
        v27 = v17;
        v19 = a5(&v27);

        v16 += v8;
        if (v19)
        {
          goto LABEL_25;
        }
      }

      v7 = v13;
LABEL_25:
      v6 = v23;
      if (v25 == v23)
      {
        return v7;
      }

      if (v25 >= v23)
      {
        goto LABEL_34;
      }

      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_35;
      }

      if (v7 == a3)
      {
        return 0;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100763464@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1007634AC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_100763548(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    a2(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_100094E98(v52, v53);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_10082245C();
      }
    }

    else
    {
      sub_10081DB68(v35, v57 & 1);
      v37 = sub_100094E98(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_100014FF8();
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100763810(uint64_t a1)
{
  v1[53] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[54] = v2;
  v1[55] = *(v2 - 8);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v3 = type metadata accessor for URL.DirectoryHint();
  v1[59] = v3;
  v1[60] = *(v3 - 8);
  v1[61] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[62] = v4;
  v1[63] = *(v4 - 8);
  v1[64] = swift_task_alloc();
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  type metadata accessor for Locale();
  v1[73] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[74] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v1[75] = swift_task_alloc();
  v5 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[76] = v5;
  v1[77] = *(v5 - 8);
  v1[78] = swift_task_alloc();
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1[79] = v6;
  v1[80] = *(v6 - 8);
  v1[81] = swift_task_alloc();
  v7 = type metadata accessor for Date.FormatStyle.DateStyle();
  v1[82] = v7;
  v1[83] = *(v7 - 8);
  v1[84] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v1[85] = v8;
  v1[86] = *(v8 - 8);
  v1[87] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[88] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[89] = v10;
  v1[90] = v9;

  return _swift_task_switch(sub_100763C2C, v10, v9);
}

uint64_t sub_100763C2C()
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v2 = v1;
  *(v0 + 728) = v1;
  static Task<>.checkCancellation()();
  v5 = *(v0 + 424);
  if (*(*(v5 + OBJC_IVAR____TtC7Journal13ExportOptions_entryIds) + 16))
  {
    v49 = *(v5 + OBJC_IVAR____TtC7Journal13ExportOptions_entryIds);
    sub_1006978B8();
    if (qword_100AD0BC8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 696);
    v7 = *(v0 + 688);
    v8 = *(v0 + 672);
    v9 = *(v0 + 664);
    v46 = *(v0 + 656);
    v47 = *(v0 + 680);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v45 = *(v0 + 632);
    v48 = *(v0 + 424);
    v12.super.isa = qword_100B31298;
    *(v0 + 736) = qword_100B31298;
    v51._object = 0x8000000100907730;
    v13._countAndFlagsBits = 0xD000000000000017;
    v13._object = 0x80000001009076F0;
    v14._object = 0x8000000100907710;
    v51._countAndFlagsBits = 0xD000000000000018;
    v14._countAndFlagsBits = 0xD000000000000013;
    *(v0 + 744) = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v51)._object;
    *(v0 + 752) = sub_1000F24EC(&unk_100AD5B10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100940080;
    Date.init()();
    static Date.FormatStyle.DateStyle.abbreviated.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    v16 = v6;
    v17 = Date.formatted(date:time:)();
    v44 = v18;
    v19 = *(v11 + 8);
    *(v0 + 760) = v19;
    *(v0 + 768) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v10, v45);
    v20 = *(v9 + 8);
    *(v0 + 776) = v20;
    *(v0 + 784) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v8, v46);
    v21 = *(v7 + 8);
    *(v0 + 792) = v21;
    *(v0 + 800) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v16, v47);
    *(v15 + 56) = &type metadata for String;
    v22 = sub_100031B20();
    *(v0 + 808) = v22;
    *(v15 + 64) = v22;
    *(v15 + 32) = v17;
    *(v15 + 40) = v44;
    String.init(format:_:)();
    v23 = objc_allocWithZone(NSMutableAttributedString);
    v24 = String._bridgeToObjectiveC()();

    *(v0 + 816) = [v23 initWithString:v24];

    v25 = *(v49 + 16);
    v26 = objc_opt_self();
    *(v0 + 824) = v26;
    v27 = [v26 progressWithTotalUnitCount:v25];
    *(v0 + 832) = v27;
    v28 = *(v48 + OBJC_IVAR____TtC7Journal13ExportOptions_progress);
    *(v0 + 840) = v28;
    [v28 setTotalUnitCount:100];
    *(v0 + 1308) = *(v48 + OBJC_IVAR____TtC7Journal13ExportOptions_format);
    [v28 addChild:v27 withPendingUnitCount:100];
    static Task<>.checkCancellation()();
    v34 = *(v0 + 624);
    v35 = *(v0 + 616);
    v36 = *(v0 + 608);
    v37 = *(v0 + 424);
    *(v0 + 848) = [objc_allocWithZone(NSMutableAttributedString) init];
    *(v0 + 856) = sub_100363770(_swiftEmptyArrayStorage);
    v38 = [*&v37[OBJC_IVAR____TtC7Journal13ExportOptions_container] viewContext];
    *(v0 + 864) = v38;
    v39 = swift_allocObject();
    *(v0 + 872) = v39;
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    (*(v35 + 104))(v34, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v36);
    v40 = v37;
    v38;
    v41 = swift_task_alloc();
    *(v0 + 880) = v41;
    v42 = sub_1000F24EC(&qword_100AD9E88);
    *v41 = v0;
    v41[1] = sub_100764350;
    v43 = *(v0 + 624);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 392, v43, sub_100769760, v39, v42);
  }

  else
  {

    if (qword_100AD0A30 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000617C(v29, qword_100AF0600);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ExportTask nothing to export", v32, 2u);
    }

    sub_1004D12DC();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    sub_10076248C(v2);

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_100764350()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  (*(v2[77] + 8))(v2[78], v2[76]);

  if (v0)
  {

    v3 = v2[90];
    v4 = v2[89];
    v5 = sub_100768444;
  }

  else
  {
    v3 = v2[90];
    v4 = v2[89];
    v5 = sub_1007644DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007644DC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 392);
  *(v2 + 896) = v3;
  *(v2 + 400) = &_swiftEmptySetSingleton;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v2 + 912) = v5;
  *(v2 + 904) = v4;
  *(v2 + 920) = OBJC_IVAR____TtC7Journal13ExportOptions_entriesDirectoryPath;
  *(v2 + 928) = OBJC_IVAR____TtC7Journal13ExportOptions_workingDirectoryURL;
  *(v2 + 936) = OBJC_IVAR____TtC7Journal13ExportOptions_exportDirectoryPath;
  *(v2 + 1304) = enum case for URL.DirectoryHint.inferFromPath(_:);
  *(v2 + 944) = NSLinkAttributeName;
  v6 = *(v2 + 888);
  v7 = *(v2 + 856);
  *(v2 + 976) = v7;
  *(v2 + 968) = _swiftEmptyArrayStorage;
  *(v2 + 960) = 0;
  *(v2 + 952) = v7;
  v8 = *(v2 + 896);
  if (!v5)
  {

    static Task<>.checkCancellation()();
    *(v2 + 1168) = v6;
    if (v6)
    {
      v15 = *(v2 + 864);
      v11 = *(v2 + 848);
      v16 = *(v2 + 832);
      v17 = *(v2 + 816);
      v14 = *(v2 + 728);

      goto LABEL_11;
    }

    v20 = *(v2 + 704);
    type metadata accessor for ProtectedData();
    *(v2 + 1176) = static ProtectedData.shared.getter();

    v21 = swift_task_alloc();
    *(v2 + 1184) = v21;
    *v21 = v2;
    v22 = sub_100766CE8;
    goto LABEL_16;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return ProtectedData.suspendUntilProtectedDataIsAvailable()(v5, a2);
    }

    v9 = *(v8 + 32);
  }

  *(v2 + 984) = v9;
  *(v2 + 992) = 1;
  static Task<>.checkCancellation()();
  if (!v6)
  {
    v20 = *(v2 + 704);
    type metadata accessor for ProtectedData();
    *(v2 + 1000) = static ProtectedData.shared.getter();

    v21 = swift_task_alloc();
    *(v2 + 1008) = v21;
    *v21 = v2;
    v22 = sub_100764960;
LABEL_16:
    v21[1] = v22;
    a2 = &protocol witness table for MainActor;
    v5 = v20;

    return ProtectedData.suspendUntilProtectedDataIsAvailable()(v5, a2);
  }

  v10 = *(v2 + 864);
  v11 = *(v2 + 848);
  v12 = *(v2 + 832);
  v13 = *(v2 + 816);
  v14 = *(v2 + 728);

LABEL_11:

  sub_10076248C(v14);

  v18 = *(v2 + 8);

  return v18();
}

uint64_t sub_100764960()
{
  v1 = *v0;

  v2 = *(v1 + 720);
  v3 = *(v1 + 712);

  return _swift_task_switch(sub_100764AC0, v3, v2);
}

uint64_t sub_100764AC0()
{
  v1 = v0[124];
  v2 = v0[112];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._countAndFlagsBits = 0x207972746E45;
  v3._object = 0xE600000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v3);
  v0[51] = v1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v4._countAndFlagsBits = 543584032;
  v4._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v4);
  if (v2 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *(v0[113] + 16);
  }

  v6 = v0[105];
  v7 = v0[92];
  v8 = v0[88];
  v0[52] = v5;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  String.LocalizationValue.init(stringInterpolation:)();
  v10 = v7;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  [v6 setLocalizedAdditionalDescription:v11];

  v12 = swift_task_alloc();
  v0[127] = v12;
  *v12 = v0;
  v12[1] = sub_100764CC8;
  v13 = v0[53];

  return sub_10079FAD4(v8, &protocol witness table for MainActor, v13);
}

uint64_t sub_100764CC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[128] = a1;
  v4[129] = a2;
  v4[130] = v2;

  if (v2)
  {

    v5 = v4[90];
    v6 = v4[89];
    v7 = sub_100768610;
  }

  else
  {

    v5 = v4[90];
    v6 = v4[89];
    v7 = sub_100764E3C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100764E3C()
{
  v59 = v0;
  v1 = *(v0 + 1040);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 1024);
    v53 = *(v0 + 864);
    v54 = *(v0 + 992);
    v3 = *(v0 + 848);
    v4 = *(v0 + 832);
    v55 = *(v0 + 816);
    v5 = *(v0 + 728);

    [v4 setCompletedUnitCount:v54];

    sub_10076248C(v5);

    v6 = *(v0 + 8);

    return v6();
  }

  if (*(v0 + 1308) - 1 < 2)
  {
    if (*(v0 + 960) >= 1)
    {
      v8 = *(v0 + 848);
      v9 = objc_allocWithZone(NSAttributedString);
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 initWithString:v10];

      [v8 appendAttributedString:v11];
    }

    v12 = *(v0 + 1032);
    v13 = *(v0 + 1024);
    v14 = *(v0 + 952);
    [*(v0 + 848) appendAttributedString:v13];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v14;
    sub_100763548(v12, sub_100763464, 0, isUniquelyReferenced_nonNull_native, &v58);
    swift_bridgeObjectRelease_n();

    v16 = v58;
    v17 = *(v0 + 968);
    [*(v0 + 832) setCompletedUnitCount:*(v0 + 992)];

    v20 = *(v0 + 992);
    *(v0 + 976) = v16;
    *(v0 + 968) = v17;
    *(v0 + 960) = v20;
    *(v0 + 952) = v16;
    v21 = *(v0 + 896);
    if (v20 == *(v0 + 912))
    {

      static Task<>.checkCancellation()();
      *(v0 + 1168) = v1;
      v43 = *(v0 + 704);
      type metadata accessor for ProtectedData();
      *(v0 + 1176) = static ProtectedData.shared.getter();

      v44 = swift_task_alloc();
      *(v0 + 1184) = v44;
      *v44 = v0;
      v45 = sub_100766CE8;
      goto LABEL_18;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = v18;
    }

    else
    {
      if (v20 >= *(*(v0 + 904) + 16))
      {
        goto LABEL_23;
      }

      v42 = *(v21 + 8 * v20 + 32);
    }

    *(v0 + 984) = v42;
    *(v0 + 992) = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      static Task<>.checkCancellation()();
      v43 = *(v0 + 704);
      type metadata accessor for ProtectedData();
      *(v0 + 1000) = static ProtectedData.shared.getter();

      v44 = swift_task_alloc();
      *(v0 + 1008) = v44;
      *v44 = v0;
      v45 = sub_100764960;
LABEL_18:
      v44[1] = v45;
      v19 = &protocol witness table for MainActor;
      v18 = v43;

      return ProtectedData.suspendUntilProtectedDataIsAvailable()(v18, v19);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return ProtectedData.suspendUntilProtectedDataIsAvailable()(v18, v19);
  }

  v22 = *(v0 + 984);
  v57 = *(v0 + 1304);
  v56 = *(v0 + 704);
  v23 = *(v0 + 576);
  v25 = *(v0 + 496);
  v24 = *(v0 + 504);
  v52 = v25;
  v26 = *(v0 + 480);
  v50 = *(v0 + 488);
  v27 = (*(v0 + 424) + *(v0 + 936));
  v48 = v23;
  v49 = *(v0 + 472);
  sub_100697630(v23);
  sub_100762810(v22, 1819112552, 0xE400000000000000, v23, (v0 + 400));
  v51 = *(v24 + 8);
  *(v0 + 1048) = v51;
  *(v0 + 1056) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v23, v25);
  v28 = objc_allocWithZone(NSString);
  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 initWithString:v29];

  v31 = String._bridgeToObjectiveC()();

  v32 = [v30 stringByAppendingPathComponent:v31];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v34;
  v47 = v33;
  v35 = v34;

  *(v0 + 1064) = v33;
  *(v0 + 1072) = v35;
  v36 = v27[1];
  *(v0 + 136) = *v27;
  *(v0 + 144) = v36;
  v37 = *(v26 + 104);
  *(v0 + 1080) = v37;
  *(v0 + 1088) = (v26 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v37(v50, v57, v49);
  *(v0 + 1096) = sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  v38 = *(v26 + 8);
  *(v0 + 1104) = v38;
  *(v0 + 1112) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v38(v50, v49);

  *(v0 + 152) = v47;
  *(v0 + 160) = v46;
  v37(v50, v57, v49);
  URL.appending<A>(path:directoryHint:)();
  v38(v50, v49);
  v51(v48, v52);

  v39 = swift_task_alloc();
  *(v0 + 1120) = v39;
  *v39 = v0;
  v39[1] = sub_100765734;
  v40 = *(v0 + 1032);
  v41 = *(v0 + 1024);

  return sub_1003BFEB8(v56, &protocol witness table for MainActor, v41, v40);
}

uint64_t sub_100765734(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[141] = a2;
  v5[142] = v2;

  if (v2)
  {

    v6 = v5[90];
    v7 = v5[89];
    v8 = sub_1007687FC;
  }

  else
  {
    v5[143] = a1;
    v6 = v5[90];
    v7 = v5[89];
    v8 = sub_100765880;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100765880()
{
  *(v0 + 168) = *(v0 + 1144);
  v1 = *(v0 + 1136);
  *(v0 + 176) = *(v0 + 1128);
  static String.Encoding.utf8.getter();
  StringProtocol.write(to:atomically:encoding:)();
  if (v1)
  {
    v2 = *(v0 + 1048);
    v3 = *(v0 + 568);
    v4 = *(v0 + 496);
    v5 = *(v0 + 464);
    v6 = *(v0 + 432);
    v7 = *(v0 + 440);

    (*(v7 + 8))(v5, v6);
    v2(v3, v4);

    if (qword_100AD0A30 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100AF0600);

    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 1024);
    if (v11)
    {
      v13 = *(v0 + 984);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      v16 = *(v13 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
      *(v14 + 4) = v16;
      *v15 = v16;
      *(v14 + 12) = 2112;
      swift_errorRetain();
      v17 = v16;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      v15[1] = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "ExportTask failed to build html for entry %@: %@", v14, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v33 = *(v0 + 992);
    v34 = *(v0 + 912);
    [*(v0 + 832) setCompletedUnitCount:v33];

    if (v33 != v34)
    {
      v36 = *(v0 + 992);
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = *(v0 + 1308);
  (*(*(v0 + 440) + 8))(*(v0 + 464), *(v0 + 432));

  if (!v19)
  {

LABEL_15:
    v37 = sub_1000819F8();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 string];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v44 = *(v0 + 984);
        v99 = *(v0 + 808);
        v94 = v40;
        v96 = *(v0 + 792);
        v92 = *(v0 + 776);
        v91 = *(v0 + 760);
        v45 = *(v0 + 696);
        v46 = *(v0 + 688);
        v88 = *(v0 + 680);
        v47 = *(v0 + 672);
        v90 = *(v0 + 656);
        v48 = *(v0 + 648);
        v89 = *(v0 + 632);
        v108._object = 0x80000001009077A0;
        v49._countAndFlagsBits = 0x25209480E2204025;
        v50._object = 0x8000000100907780;
        v108._countAndFlagsBits = 0xD000000000000023;
        v50._countAndFlagsBits = 0x1000000000000018;
        v49._object = 0xA900000000000040;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, *(v0 + 736), v49, v108);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100940050;
        v52 = OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate;
        swift_beginAccess();
        (*(v46 + 16))(v45, v44 + v52, v88);
        static Date.FormatStyle.DateStyle.abbreviated.getter();
        static Date.FormatStyle.TimeStyle.omitted.getter();
        v53 = Date.formatted(date:time:)();
        v55 = v54;
        v91(v48, v89);
        v92(v47, v90);
        v96(v45, v88);
        *(v51 + 56) = &type metadata for String;
        *(v51 + 64) = v99;
        *(v51 + 32) = v53;
        *(v51 + 40) = v55;
        *(v0 + 200) = v94;
        *(v0 + 208) = v42;
        *(v0 + 216) = 10;
        *(v0 + 224) = 0xE100000000000000;
        *(v0 + 232) = 32;
        *(v0 + 240) = 0xE100000000000000;
        v56 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v58 = v57;

        *(v51 + 96) = &type metadata for String;
        *(v51 + 104) = v99;
        *(v51 + 72) = v56;
        *(v51 + 80) = v58;
        String.init(format:_:)();

        goto LABEL_22;
      }
    }

    v59 = *(v0 + 984);
    v104 = *(v0 + 792);
    v100 = *(v0 + 776);
    v97 = *(v0 + 760);
    v60 = *(v0 + 696);
    v61 = *(v0 + 688);
    v62 = *(v0 + 680);
    v63 = *(v0 + 672);
    v64 = *(v0 + 656);
    v65 = *(v0 + 648);
    v66 = *(v0 + 632);
    v67 = OBJC_IVAR____TtC7Journal14EntryViewModel_displayDate;
    swift_beginAccess();
    (*(v61 + 16))(v60, v59 + v67, v62);
    static Date.FormatStyle.DateStyle.abbreviated.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    Date.formatted(date:time:)();
    v97(v65, v66);
    v100(v63, v64);
    v104(v60, v62);
LABEL_22:
    v68 = *(v0 + 1072);
    v69 = *(v0 + 1064);
    v105 = *(v0 + 1048);
    v70 = *(v0 + 1024);
    v71 = *(v0 + 944);
    v72 = *(v0 + 816);
    v102 = *(v0 + 568);
    v101 = *(v0 + 496);
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = v71;
    *(inited + 64) = &type metadata for String;
    *(inited + 40) = v69;
    *(inited + 48) = v68;
    v74 = v71;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    v75 = objc_allocWithZone(NSMutableAttributedString);
    v76 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100051750(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v78 = [v75 initWithString:v76 attributes:isa];

    v79 = objc_allocWithZone(NSAttributedString);
    v80 = String._bridgeToObjectiveC()();
    v81 = [v79 initWithString:v80];

    [v72 appendAttributedString:v81];
    [v72 appendAttributedString:v78];

    v105(v102, v101);
    v82 = *(v0 + 952);
    v106 = *(v0 + 968);
    [*(v0 + 832) setCompletedUnitCount:*(v0 + 992)];

    v36 = *(v0 + 992);
    *(v0 + 968) = v106;
    *(v0 + 960) = v36;
    *(v0 + 952) = v82;
    if (v36 != *(v0 + 912))
    {
LABEL_24:
      v83 = *(v0 + 896);
      if ((v83 & 0xC000000000000001) != 0)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v84 = v35;
      }

      else
      {
        if (v36 >= *(*(v0 + 904) + 16))
        {
          goto LABEL_34;
        }

        v84 = *(v83 + 8 * v36 + 32);
      }

      *(v0 + 984) = v84;
      *(v0 + 992) = v36 + 1;
      if (!__OFADD__(v36, 1))
      {
        static Task<>.checkCancellation()();
        v85 = *(v0 + 704);
        type metadata accessor for ProtectedData();
        *(v0 + 1000) = static ProtectedData.shared.getter();

        v86 = swift_task_alloc();
        *(v0 + 1008) = v86;
        *v86 = v0;
        v87 = sub_100764960;
LABEL_29:
        v86[1] = v87;
        v83 = &protocol witness table for MainActor;
        v35 = v85;

        return ProtectedData.suspendUntilProtectedDataIsAvailable()(v35, v83);
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return ProtectedData.suspendUntilProtectedDataIsAvailable()(v35, v83);
    }

LABEL_23:

    static Task<>.checkCancellation()();
    *(v0 + 1168) = 0;
    v85 = *(v0 + 704);
    type metadata accessor for ProtectedData();
    *(v0 + 1176) = static ProtectedData.shared.getter();

    v86 = swift_task_alloc();
    *(v0 + 1184) = v86;
    *v86 = v0;
    v87 = sub_100766CE8;
    goto LABEL_29;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_15;
  }

  v103 = *(v0 + 1104);
  v98 = *(v0 + 1080);
  v21 = *(v0 + 1048);
  v95 = *(v0 + 1304);
  v22 = *(v0 + 576);
  v23 = *(v0 + 552);
  v25 = *(v0 + 488);
  v24 = *(v0 + 496);
  v93 = *(v0 + 472);

  URL.deletingPathExtension()();
  v26 = URL.lastPathComponent.getter();
  v28 = v27;
  v21(v22, v24);
  sub_100697630(v23);
  *(v0 + 184) = v26;
  *(v0 + 192) = v28;
  v98(v25, v95, v93);
  URL.appending<A>(path:directoryHint:)();
  v103(v25, v93);
  v21(v23, v24);

  URL.appendingPathExtension(_:)();
  v21(v22, v24);
  v29 = swift_task_alloc();
  *(v0 + 1152) = v29;
  *v29 = v0;
  v29[1] = sub_100766684;
  v30 = *(v0 + 568);
  v31 = *(v0 + 560);

  return sub_100698B14(v30, v31);
}

uint64_t sub_100766684()
{
  v2 = *v1;
  *(*v1 + 1160) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_100768DCC;
  }

  else
  {
    v5 = sub_1007667C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007667C0()
{
  (*(*(v0 + 504) + 16))(*(v0 + 544), *(v0 + 560), *(v0 + 496));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 968);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1003E4AE0(0, v2[2] + 1, 1, *(v0 + 968));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1003E4AE0(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = *(v0 + 1048);
  v6 = *(v0 + 568);
  v7 = *(v0 + 560);
  v31 = *(v0 + 544);
  v9 = *(v0 + 496);
  v8 = *(v0 + 504);

  v5(v7, v9);
  v5(v6, v9);
  v2[2] = v4 + 1;
  (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v31, v9);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 976);
  v12 = *(v0 + 952);
  [*(v0 + 832) setCompletedUnitCount:*(v0 + 992)];

  v15 = *(v0 + 992);
  *(v0 + 976) = v11;
  *(v0 + 968) = v2;
  *(v0 + 960) = v15;
  *(v0 + 952) = v12;
  v16 = *(v0 + 896);
  if (v15 != *(v0 + 912))
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v13;
    }

    else
    {
      if (v15 >= *(*(v0 + 904) + 16))
      {
        goto LABEL_24;
      }

      v22 = *(v16 + 8 * v15 + 32);
    }

    *(v0 + 984) = v22;
    *(v0 + 992) = v15 + 1;
    if (!__OFADD__(v15, 1))
    {
      static Task<>.checkCancellation()();
      if (v10)
      {
        v23 = *(v0 + 864);
        v18 = *(v0 + 848);
        v24 = *(v0 + 832);
        v25 = *(v0 + 816);
        v21 = *(v0 + 728);

        goto LABEL_14;
      }

      v28 = *(v0 + 704);
      type metadata accessor for ProtectedData();
      *(v0 + 1000) = static ProtectedData.shared.getter();

      v29 = swift_task_alloc();
      *(v0 + 1008) = v29;
      *v29 = v0;
      v30 = sub_100764960;
      goto LABEL_19;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    return ProtectedData.suspendUntilProtectedDataIsAvailable()(v13, v14);
  }

  static Task<>.checkCancellation()();
  *(v0 + 1168) = v10;
  if (!v10)
  {
    v28 = *(v0 + 704);
    type metadata accessor for ProtectedData();
    *(v0 + 1176) = static ProtectedData.shared.getter();

    v29 = swift_task_alloc();
    *(v0 + 1184) = v29;
    *v29 = v0;
    v30 = sub_100766CE8;
LABEL_19:
    v29[1] = v30;
    v14 = &protocol witness table for MainActor;
    v13 = v28;

    return ProtectedData.suspendUntilProtectedDataIsAvailable()(v13, v14);
  }

  v17 = *(v0 + 864);
  v18 = *(v0 + 848);
  v19 = *(v0 + 832);
  v20 = *(v0 + 816);
  v21 = *(v0 + 728);

LABEL_14:

  sub_10076248C(v21);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100766CE8()
{
  v1 = *v0;

  v2 = *(v1 + 720);
  v3 = *(v1 + 712);

  return _swift_task_switch(sub_100766E48, v3, v2);
}

uint64_t sub_100766E48()
{
  if (*(v0 + 1308) - 1 < 2)
  {
    v1 = *(v0 + 704);

    v2 = swift_task_alloc();
    *(v0 + 1192) = v2;
    *v2 = v0;
    v2[1] = sub_10076750C;
    v3 = *(v0 + 976);
    v4 = *(v0 + 848);

    return sub_1003BFEB8(v1, &protocol witness table for MainActor, v4, v3);
  }

  if (*(v0 + 1308))
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 832);
    v15 = *(v0 + 816);
  }

  else
  {
    v6 = *(v0 + 1168);

    v7 = sub_100132C9C();
    if (v6)
    {
      v9 = *(v0 + 848);
      v10 = *(v0 + 832);
      v11 = *(v0 + 816);
      v12 = *(v0 + 728);

      sub_10076248C(v12);

      v24 = *(v0 + 8);

      return v24();
    }

    v33 = *(v0 + 1304);
    v34 = v7;
    v37 = *(v0 + 504);
    v39 = *(v0 + 576);
    v17 = *(v0 + 488);
    v19 = *(v0 + 472);
    v18 = *(v0 + 480);
    v35 = *(v0 + 496);
    v20 = (*(v0 + 424) + *(v0 + 936));
    v21 = v20[1];
    *(v0 + 344) = *v20;
    *(v0 + 352) = v21;
    v32 = *(v18 + 104);
    v36 = v8;
    v32(v17, v33, v19);
    sub_1000777B4();

    URL.appending<A>(path:directoryHint:)();
    v22 = *(v18 + 8);
    v22(v17, v19);

    *(v0 + 360) = 0x74682E7865646E69;
    *(v0 + 368) = 0xEA00000000006C6DLL;
    v32(v17, v33, v19);
    URL.appending<A>(path:directoryHint:)();
    v22(v17, v19);
    v23 = *(v37 + 8);
    v23(v39, v35);
    *(v0 + 376) = v34;
    *(v0 + 384) = v36;
    static String.Encoding.utf8.getter();
    StringProtocol.write(to:atomically:encoding:)();
    v25 = *(v0 + 864);
    v40 = *(v0 + 848);
    v26 = *(v0 + 816);
    v27 = *(v0 + 536);
    v28 = *(v0 + 496);
    v29 = *(v0 + 456);
    v30 = *(v0 + 432);
    v31 = *(v0 + 440);

    (*(v31 + 8))(v29, v30);
    v23(v27, v28);
  }

  v38 = *(v0 + 968);
  sub_10076248C(*(v0 + 728));

  v16 = *(v0 + 8);

  return v16(v38);
}

uint64_t sub_10076750C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[150] = a2;
  v5[151] = v2;

  if (v2)
  {
    v6 = v5[90];
    v7 = v5[89];
    v8 = sub_1007693B0;
  }

  else
  {
    v5[152] = a1;
    v6 = v5[90];
    v7 = v5[89];
    v8 = sub_10076765C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10076765C()
{
  *(v0 + 248) = *(v0 + 1216);
  v56 = *(v0 + 1208);
  v51 = *(v0 + 1304);
  v1 = *(v0 + 576);
  v59 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v4 = *(v0 + 472);
  v55 = *(v0 + 496);
  v5 = *(v0 + 424);
  *(v0 + 256) = *(v0 + 1200);
  sub_100697630(v1);
  v6 = *(v5 + OBJC_IVAR____TtC7Journal13ExportOptions_printablePageFileName + 8);
  v49 = *(v5 + OBJC_IVAR____TtC7Journal13ExportOptions_printablePageFileName);
  *(v0 + 264) = v49;
  *(v0 + 272) = v6;
  v7 = *(v2 + 104);
  *(v0 + 1224) = v7;
  *(v0 + 1232) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v50 = v7;
  v7(v3, v51, v4);
  *(v0 + 1240) = sub_1000777B4();

  URL.appending<A>(path:directoryHint:)();
  v8 = *(v2 + 8);
  *(v0 + 1248) = v8;
  *(v0 + 1256) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v4);

  v9 = *(v59 + 8);
  *(v0 + 1264) = v9;
  *(v0 + 1272) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = v1;
  v11 = v9;
  v9(v10, v55);
  static String.Encoding.utf8.getter();
  StringProtocol.write(to:atomically:encoding:)();
  if (v56)
  {
    v12 = *(v0 + 864);
    v53 = *(v0 + 848);
    v13 = *(v0 + 816);
    v14 = *(v0 + 728);
    v15 = *(v0 + 528);
    v16 = *(v0 + 496);
    v17 = *(v0 + 440);
    v18 = *(v0 + 448);
    v19 = *(v0 + 432);

    (*(v17 + 8))(v18, v19);
    v11(v15, v16);

    sub_10076248C(v14);

    v20 = *(v0 + 8);

    return v20();
  }

  v54 = v8;
  v22 = *(v0 + 1308);
  v23 = *(v0 + 528);
  v24 = *(v0 + 496);
  (*(*(v0 + 440) + 8))(*(v0 + 448), *(v0 + 432));
  v11(v23, v24);

  v52 = v11;
  if (v22 == 2)
  {

    v25 = v6;
    v26 = v50;
LABEL_8:
    v28 = *(v0 + 1304);
    v46 = *(v0 + 1304);
    v29 = *(v0 + 840);
    v30 = *(v0 + 576);
    v31 = *(v0 + 488);
    v57 = *(v0 + 496);
    v32 = *(v0 + 472);
    v33 = [*(v0 + 824) progressWithTotalUnitCount:100];
    *(v0 + 1280) = v33;
    [v29 addChild:v33 withPendingUnitCount:0];
    sub_100697630(v30);
    *(v0 + 296) = v49;
    *(v0 + 304) = v25;
    v26(v31, v28, v32);

    URL.appending<A>(path:directoryHint:)();
    v54(v31, v32);

    v52(v30, v57);
    sub_100697630(v30);
    *(v0 + 312) = 0x2E6C616E72756F4ALL;
    *(v0 + 320) = 0xEB00000000666470;
    v50(v31, v46, v32);
    URL.appending<A>(path:directoryHint:)();
    v54(v31, v32);
    v52(v30, v57);
    v34 = swift_task_alloc();
    *(v0 + 1288) = v34;
    *v34 = v0;
    v34[1] = sub_100767F88;
    v35 = *(v0 + 520);
    v36 = *(v0 + 512);

    return sub_100698B14(v35, v36);
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = v6;
  v26 = v50;
  if (v27)
  {
    goto LABEL_8;
  }

  v42 = *(v0 + 1304);
  v45 = *(v0 + 832);
  v47 = *(v0 + 816);
  v48 = *(v0 + 848);
  v37 = *(v0 + 576);
  v43 = *(v0 + 496);
  v44 = *(v0 + 864);
  v38 = *(v0 + 488);
  v39 = *(v0 + 472);

  sub_1000F24EC(&qword_100AD65F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100940080;
  v58 = v40;
  sub_100697630(v37);
  *(v0 + 280) = v49;
  *(v0 + 288) = v6;
  v50(v38, v42, v39);

  URL.appending<A>(path:directoryHint:)();
  v54(v38, v39);

  v52(v37, v43);

  sub_10076248C(*(v0 + 728));

  v41 = *(v0 + 8);

  return v41(v58);
}

uint64_t sub_100767F88()
{
  v2 = *v1;
  *(*v1 + 1296) = v0;

  v3 = v2[158];
  v4 = v2[65];
  v5 = v2[62];
  v3(v2[64], v5);
  v3(v4, v5);
  v6 = v2[90];
  v7 = v2[89];
  if (v0)
  {
    v8 = sub_10076957C;
  }

  else
  {
    v8 = sub_10076814C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10076814C()
{
  v11 = *(v0 + 1264);
  v10 = *(v0 + 1248);
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1304);
  v12 = *(v0 + 864);
  v13 = *(v0 + 1280);
  v16 = *(v0 + 848);
  v14 = *(v0 + 832);
  v15 = *(v0 + 816);
  v3 = *(v0 + 576);
  v9 = *(v0 + 496);
  v4 = *(v0 + 488);
  v5 = *(v0 + 472);

  sub_1000F24EC(&qword_100AD65F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  v17 = v6;
  sub_100697630(v3);
  *(v0 + 328) = 0x2E6C616E72756F4ALL;
  *(v0 + 336) = 0xEB00000000666470;
  v1(v4, v2, v5);
  URL.appending<A>(path:directoryHint:)();
  v10(v4, v5);
  v11(v3, v9);
  [v13 setCompletedUnitCount:100];

  sub_10076248C(*(v0 + 728));

  v7 = *(v0 + 8);

  return v7(v17);
}

uint64_t sub_100768444()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 816);
  v4 = *(v0 + 728);

  sub_10076248C(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100768610()
{
  v1 = *(v0 + 124);
  v2 = *(v0 + 108);
  v3 = *(v0 + 106);
  v4 = *(v0 + 104);
  v5 = *(v0 + 102);
  v6 = v0[91];

  [v4 setCompletedUnitCount:v1];

  sub_10076248C(v6);

  v7 = *(v0 + 1);

  return v7();
}

uint64_t sub_1007687FC()
{
  (*(v0 + 1048))(*(v0 + 568), *(v0 + 496));
  if (qword_100AD0A30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AF0600);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 1024);
  if (v4)
  {
    v6 = *(v0 + 984);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "ExportTask failed to build html for entry %@: %@", v7, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 992);
  v13 = *(v0 + 912);
  [*(v0 + 832) setCompletedUnitCount:v12];

  if (v12 == v13)
  {

    static Task<>.checkCancellation()();
    *(v0 + 1168) = 0;
    v18 = *(v0 + 704);
    type metadata accessor for ProtectedData();
    *(v0 + 1176) = static ProtectedData.shared.getter();

    v19 = swift_task_alloc();
    *(v0 + 1184) = v19;
    *v19 = v0;
    v20 = sub_100766CE8;
    goto LABEL_13;
  }

  v15 = *(v0 + 992);
  v16 = *(v0 + 896);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v14;
  }

  else
  {
    if (v15 >= *(*(v0 + 904) + 16))
    {
LABEL_18:
      __break(1u);
      return ProtectedData.suspendUntilProtectedDataIsAvailable()(v14, v16);
    }

    v17 = *(v16 + 8 * v15 + 32);
  }

  *(v0 + 984) = v17;
  *(v0 + 992) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  static Task<>.checkCancellation()();
  v18 = *(v0 + 704);
  type metadata accessor for ProtectedData();
  *(v0 + 1000) = static ProtectedData.shared.getter();

  v19 = swift_task_alloc();
  *(v0 + 1008) = v19;
  *v19 = v0;
  v20 = sub_100764960;
LABEL_13:
  v19[1] = v20;
  v16 = &protocol witness table for MainActor;
  v14 = v18;

  return ProtectedData.suspendUntilProtectedDataIsAvailable()(v14, v16);
}

uint64_t sub_100768DCC()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 568);
  v3 = *(v0 + 496);
  v1(*(v0 + 560), v3);
  v1(v2, v3);
  if (qword_100AD0A30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AF0600);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1024);
  if (v7)
  {
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_id);
    *(v10 + 4) = v12;
    *v11 = v12;
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = v12;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "ExportTask failed to build html for entry %@: %@", v10, 0x16u);
    sub_1000F24EC(&unk_100AD4BB0);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = *(v0 + 992);
  v16 = *(v0 + 912);
  [*(v0 + 832) setCompletedUnitCount:v15];

  if (v15 == v16)
  {

    static Task<>.checkCancellation()();
    *(v0 + 1168) = 0;
    v21 = *(v0 + 704);
    type metadata accessor for ProtectedData();
    *(v0 + 1176) = static ProtectedData.shared.getter();

    v22 = swift_task_alloc();
    *(v0 + 1184) = v22;
    *v22 = v0;
    v23 = sub_100766CE8;
    goto LABEL_13;
  }

  v18 = *(v0 + 992);
  v19 = *(v0 + 896);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v20 = v17;
  }

  else
  {
    if (v18 >= *(*(v0 + 904) + 16))
    {
LABEL_18:
      __break(1u);
      return ProtectedData.suspendUntilProtectedDataIsAvailable()(v17, v19);
    }

    v20 = *(v19 + 8 * v18 + 32);
  }

  *(v0 + 984) = v20;
  *(v0 + 992) = v18 + 1;
  if (__OFADD__(v18, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  static Task<>.checkCancellation()();
  v21 = *(v0 + 704);
  type metadata accessor for ProtectedData();
  *(v0 + 1000) = static ProtectedData.shared.getter();

  v22 = swift_task_alloc();
  *(v0 + 1008) = v22;
  *v22 = v0;
  v23 = sub_100764960;
LABEL_13:
  v22[1] = v23;
  v19 = &protocol witness table for MainActor;
  v17 = v21;

  return ProtectedData.suspendUntilProtectedDataIsAvailable()(v17, v19);
}

uint64_t sub_1007693B0()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  v3 = *(v0 + 816);
  v4 = *(v0 + 728);

  sub_10076248C(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10076957C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 108);
  v3 = *(v0 + 106);
  v4 = *(v0 + 104);
  v5 = *(v0 + 102);
  v6 = v0[91];

  [v1 setCompletedUnitCount:100];

  sub_10076248C(v6);

  v7 = *(v0 + 1);

  return v7();
}

uint64_t sub_10076977C(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for Locale();
  v1[3] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_10076986C, v3, v2);
}

uint64_t sub_10076986C()
{
  if (qword_100AD0A30 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AF0600);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting export with options: %@", v7, 0xCu);
    sub_100004F84(v8, &unk_100AD4BB0);
  }

  v10 = v0[2];

  v11 = *(v10 + OBJC_IVAR____TtC7Journal13ExportOptions_progress);
  v0[8] = v11;
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_100AD0BC8 != -1)
  {
    swift_once();
  }

  v12 = qword_100B31298;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();

  [v11 setLocalizedAdditionalDescription:v13];

  static Task<>.checkCancellation()();
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_100769B74;
  v15 = v0[2];

  return sub_100763810(v15);
}

uint64_t sub_100769B74()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100769D64;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_100769CA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100769CA0()
{
  v1 = *(v0 + 80);
  static Task<>.checkCancellation()();

  if (!v1)
  {
    [*(v0 + 64) setCompletedUnitCount:100];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100769D64()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100769DEC()
{
  result = qword_100AF0630;
  if (!qword_100AF0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0630);
  }

  return result;
}

uint64_t sub_100769E44()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF0638);
  v1 = sub_10000617C(v0, qword_100AF0638);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100769F0C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor;
  swift_beginAccess();
  v4 = type metadata accessor for AudioIntensityProcessor();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100769FF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor;
  swift_beginAccess();
  v5 = type metadata accessor for AudioIntensityProcessor();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10076A0D4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AudioIntensityProcessor();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10076A248(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor;
  swift_beginAccess();
  v5 = type metadata accessor for AudioIntensityProcessor();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10076A2E4()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState);
}

uint64_t sub_10076A378@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState);
  return result;
}

uint64_t sub_10076A414(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10076A560()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10076A5F0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
}

uint64_t sub_10076A6BC(uint64_t result, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = *(v3 + 16);
  if (v4 == *(result + 16))
  {
    if (v4)
    {
      v5 = v3 == result;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
LABEL_10:
      *(v2 + *a2) = result;
    }

    else
    {
      v6 = (v3 + 32);
      v7 = (result + 32);
      while (v4)
      {
        if (*v6 != *v7)
        {
          goto LABEL_13;
        }

        ++v6;
        ++v7;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

id sub_10076A828()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

id sub_10076A8F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;

  return v5;
}

uint64_t sub_10076A9D0()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_10076AAA8(uint64_t a1, void *a2, int a3, uint64_t a4, char a5)
{
  v9 = a1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  v10 = *v9;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v11 = a2;
}

uint64_t sub_10076AB38()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10076ABD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy);
}

uint64_t sub_10076AC70(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10076AD98@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy);
  v4 = *(v3 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_asset);
    v5 = type metadata accessor for AudioAsset();
    v4 = v8;
    v6 = &off_100A82B98;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v5;
  a1[4] = v6;

  return v4;
}

uint64_t sub_10076AE80()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_10076AF30;

  return sub_10076C838();
}

uint64_t sub_10076AF30()
{
  *(*v1 + 56) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10076B2CC;
  }

  else
  {
    v4 = sub_10076B08C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10076B08C()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState) != 1)
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 1;
    v0[2] = v2;
    sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[3];
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  v7 = objc_opt_self();
  v8 = [v7 sharedInstance];
  [v6 addObserver:v4 selector:"handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v8];

  v9 = [v5 defaultCenter];
  v10 = [v7 sharedInstance];
  [v9 addObserver:v4 selector:"handleAudioSessionRouteChange:" name:AVAudioSessionRouteChangeNotification object:v10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10076B2CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076B330()
{
  v1[12] = v0;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10076B3C8, v3, v2);
}

uint64_t sub_10076B3C8()
{
  v1 = v0[12];
  swift_getKeyPath();
  v0[5] = v1;
  v0[16] = OBJC_IVAR____TtC7Journal21AudioRecordingManager___observationRegistrar;
  v0[17] = sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  v0[18] = OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  v3 = v1 + v2;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    sub_10072A5DC();
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_10076B6EC;

    return sub_100245418();
  }

  else
  {

    v6 = v0[12];
    swift_getKeyPath();
    v0[9] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = sub_1007703E0(&qword_100AEAF80);

    sub_10057E7B0(v6, v7);

    if (*(v6 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState))
    {
      v8 = v0[12];
      swift_getKeyPath();
      v9 = swift_task_alloc();
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      v0[10] = v8;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v10 = v0[12];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    v0[11] = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10076B6EC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10076BAD8;
  }

  else
  {
    v5 = sub_10076B828;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10076B828()
{
  v1 = v0[18];
  v2 = v0[12];

  swift_getKeyPath();
  v0[6] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[7] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + v1 + 24) = 0;
  v0[8] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v3 = v0[12];
  swift_getKeyPath();
  v0[9] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = sub_1007703E0(&qword_100AEAF80);

  sub_10057E7B0(v3, v4);

  if (*(v3 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState))
  {
    v5 = v0[12];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    v0[10] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v7 = v0[12];
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  v0[11] = v7;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10076BAD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076BB3C()
{
  v1 = v0;
  [*(*(v0 + 16) + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioEngine) pause];
  if (*(v0 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v3 = v0 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  *(v3 + 24) = 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = sub_1007703E0(&qword_100AEAF80);

  sub_10057EA14(v1, v4, 0);
}

uint64_t sub_10076BDB0()
{
  v1[11] = v0;
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v3;
  v1[14] = v2;

  return _swift_task_switch(sub_10076BE48, v3, v2);
}

uint64_t sub_10076BE48()
{
  sub_10072A5DC();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10076BEE4;

  return sub_100245418();
}

uint64_t sub_10076BEE4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_10076C2E0;
  }

  else
  {
    v5 = sub_10076C020;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10076C020()
{
  v1 = v0[11];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[6] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  *(v2 + 24) = 0;
  v0[7] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[8] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10057E548();

  if (*(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState))
  {
    v3 = v0[11];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[9] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[11];
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v0[10] = v5;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10076C2E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076C344()
{
  v1[5] = v0;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_10076C3DC, v3, v2);
}

uint64_t sub_10076C3DC()
{
  v1 = v0[5];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC7Journal21AudioRecordingManager___observationRegistrar;
  v0[2] = v1;
  v0[9] = v2;
  v0[10] = sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState;
  v0[11] = OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState;
  if (*(v1 + v3) == 2)
  {
    v4 = v0[5];
    swift_getKeyPath();
    v0[3] = v4;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(*(v4 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy) + 16) = 1;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_10076C58C;

    return sub_10072A1F8();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10076C58C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_10076C7D4;
  }

  else
  {
    v5 = sub_10076C6C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10076C6C8()
{
  v1 = v0[11];
  v2 = v0[5];

  if (*(v2 + v1) != 1)
  {
    v3 = v0[5];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[4] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10076C7D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076C838()
{
  v1[20] = v0;
  sub_1000F24EC(&qword_100AD5170);
  v1[21] = swift_task_alloc();
  v2 = sub_1000F24EC(&qword_100AEF2B0);
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v1[24] = *(v3 + 64);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v6;
  v1[35] = v5;

  return _swift_task_switch(sub_10076CA28, v6, v5);
}

uint64_t sub_10076CA28()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_10076CB50;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AE19C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003B936C;
  v0[13] = &unk_100A7C5E8;
  v0[14] = v2;
  [v1 requestRecordPermissionWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10076CB50()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 272);

  return _swift_task_switch(sub_10076CC58, v2, v1);
}

uint64_t sub_10076CC58()
{
  if (*(v0 + 352) == 1)
  {
    if (qword_100ACFED0 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 160);
    v2 = qword_100B2FA60;
    v3 = sub_1007703E0(&qword_100AEAF80);
    sub_100500538(v1, v3);
    *(v2 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_getKeyPath();
    *(v0 + 288) = OBJC_IVAR____TtC7Journal21AudioRecordingManager___observationRegistrar;
    *(v0 + 144) = v1;
    *(v0 + 296) = sub_1007703E0(&qword_100AF0978);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy;
    *(v0 + 304) = OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy;
    *(v0 + 312) = *(v1 + v4);

    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = sub_10076CEC8;
    v6 = *(v0 + 224);

    return sub_10057BF04(v6);
  }

  else
  {

    sub_1006EEDC0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_10076CEC8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_10076D66C;
  }

  else
  {

    v3 = *(v2 + 272);
    v4 = *(v2 + 280);
    v5 = sub_10076CFE4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10076CFE4()
{
  v16 = v0;
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_100004F84(v3, &unk_100AD6DD0);
    if (qword_100AD0A38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AF0638);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100008458(0x292864726F636572, 0xE800000000000000, &v15);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s - creating an asset and attachment failed", v7, 0xCu);
      sub_10000BA7C(v8);
    }

    sub_1006EEDC0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    (*(v2 + 32))(v0[31], v3, v1);
    v12 = swift_task_alloc();
    v0[42] = v12;
    *v12 = v0;
    v12[1] = sub_10076D2B4;
    v13 = v0[31];
    v14 = v0[26];

    return sub_100729270(v14, v13);
  }
}

uint64_t sub_10076D2B4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_10076D728;
  }

  else
  {
    v5 = sub_10076D3F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10076D3F0()
{
  v18 = v0[29];
  v19 = v0[31];
  v1 = v0[26];
  v2 = v0[27];
  v17 = v0[30];
  v13 = v0[25];
  v15 = v0[24];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  v16 = *(v3 + 32);
  v14 = v2;
  v16(v2, v1, v4);
  static TaskPriority.high.getter();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v13, v2, v4);

  v8 = static MainActor.shared.getter();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = &protocol witness table for MainActor;
  v16(v10 + v9, v13, v4);
  *(v10 + ((v15 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;

  sub_1003E9628(0, 0, v5, &unk_100967290, v10);

  (*(v3 + 8))(v14, v4);
  (*(v17 + 8))(v19, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10076D66C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076D728()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[20];

  swift_getKeyPath();
  v0[19] = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10057E548();

  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10076D864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = sub_1000F24EC(&qword_100AF0988);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10076D968, v8, v7);
}

uint64_t sub_10076D968()
{
  if (qword_100AD0A38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_10000617C(v1, qword_100AF0638);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Recording task starting for identifier", v4, 2u);
  }

  sub_1000F24EC(&qword_100AEF2B0);
  AsyncStream.makeAsyncIterator()();
  swift_beginAccess();
  v0[17] = 0;
  v5 = static MainActor.shared.getter();
  v0[18] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_10076DB20;
  v7 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v5, &protocol witness table for MainActor, v7);
}

uint64_t sub_10076DB20()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10076DC64, v3, v2);
}

uint64_t sub_10076DC64()
{
  v1 = v0[5];
  v2 = v0[6];
  v0[20] = v1;
  v0[21] = v2;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      v0[23] = v4;
      *v4 = v0;
      v4[1] = sub_10076DE28;

      return sub_10076E99C(v1, v2);
    }

    (*(v0[10] + 8))(v0[11], v0[9]);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Recording task finished", v8, 2u);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10076DE28()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 192) = v5;
  *v5 = v4;
  v5[1] = sub_10076DFA0;

  return sub_10076E5E4(v3, v2);
}

uint64_t sub_10076DFA0()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10076E0C0, v3, v2);
}

uint64_t sub_10076E0C0()
{
  v0[25] = *(v0[22] + 24);

  v0[26] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[27] = v2;
  v0[28] = v1;

  return _swift_task_switch(sub_10076E15C, v2, v1);
}

uint64_t sub_10076E15C()
{
  v1 = *(*(v0 + 200) + 112);
  *(v0 + 232) = v1;
  return _swift_task_switch(sub_10076E180, v1, 0);
}

uint64_t sub_10076E180()
{
  if (*(v0[29] + 112))
  {
    v1 = v0[20];
    v2 = v0[17];

    sub_1006ECD20(v1);
    v0[30] = v2;

    if (v2)
    {
      v3 = v0[27];
      v4 = v0[28];
      v5 = sub_10076E380;
      goto LABEL_7;
    }

    v6 = 0;
  }

  else
  {
    v6 = v0[17];
  }

  v0[31] = v6;
  v3 = v0[27];
  v4 = v0[28];
  v5 = sub_10076E23C;
LABEL_7:

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10076E23C()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10076E2A8, v1, v2);
}

uint64_t sub_10076E2A8()
{
  v1 = v0[21];
  v2 = v0[20];

  v0[17] = v0[31];
  v3 = static MainActor.shared.getter();
  v0[18] = v3;
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10076DB20;
  v5 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v3, &protocol witness table for MainActor, v5);
}

uint64_t sub_10076E380()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_10076E3EC, v1, v2);
}

uint64_t sub_10076E3EC()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[21];
  v5 = v0[20];
  if (v3)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Transcription error: %@", v6, 0xCu);
    sub_100004F84(v7, &unk_100AD4BB0);
  }

  else
  {
  }

  v0[17] = 0;
  v9 = static MainActor.shared.getter();
  v0[18] = v9;
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_10076DB20;
  v11 = v0[9];

  return AsyncStream.Iterator.next(isolation:)(v0 + 5, v9, &protocol witness table for MainActor, v11);
}

uint64_t sub_10076E5E4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10076E680, v5, v4);
}

uint64_t sub_10076E680()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 32);
  [v2 recordingStartTime];
  if (v3 == 0.0)
  {
    v4 = *(v0 + 48);
    v5 = [*(v0 + 40) format];
    [v2 prepareToProcessWithFormat:v5 audioTime:v4 punchInTime:0.0];
  }

  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  [v2 processAudioBuffer:v7];
  swift_getKeyPath();
  *(v0 + 16) = v6;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v8.super.super.isa = v7;
  v9 = AudioIntensityProcessor.process(buffer:)(v8);
  swift_endAccess();
  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 16) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_1006AE108(v9._0._rawValue);
  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  *(v0 + 16) = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_1006AE108(v9._1._rawValue);
  *(v0 + 16) = v6;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10076E99C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10076EA38, v5, v4);
}

uint64_t sub_10076EA38()
{
  v1 = v0[7];
  v2 = v0[5];
  v6 = v0[6];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState);
  swift_getKeyPath();
  v0[2] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[2] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1005BAC20(v3, v2, v6);
  swift_endAccess();
  v0[2] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10076EBF0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  v14[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14[2] = v7;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v8 = sub_100361EDC(v15), (v9 & 1) == 0))
  {

    sub_100177B94(v15);
LABEL_9:
    v16 = 0u;
    v17 = 0u;
    return sub_100004F84(&v16, &qword_100AD13D0);
  }

  sub_10000BA20(*(v6 + 56) + 32 * v8, &v16);
  sub_100177B94(v15);

  if (!*(&v17 + 1))
  {
    return sub_100004F84(&v16, &qword_100AD13D0);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && v15[0] == 1)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    type metadata accessor for MainActor();

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v1;
    sub_1004EC158(0, 0, v4, &unk_100967250, v13);
  }

  return result;
}

uint64_t sub_10076EDFC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10076EEA8;

  return sub_10076B330();
}

uint64_t sub_10076EEA8()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1007708E0;
  }

  else
  {
    v4 = sub_1007708E4;
  }

  return _swift_task_switch(v4, v3, v2);
}

void sub_10076F01C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = Notification.userInfo.getter();
  if (v5)
  {
    v6 = v5;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v7;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v8 = sub_100361EDC(v21), (v9 & 1) != 0))
    {
      sub_10000BA20(*(v6 + 56) + 32 * v8, v22);
      sub_100177B94(v21);

      if (swift_dynamicCast())
      {
        v10 = v19;
        if (qword_100AD0A38 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_10000617C(v11, qword_100AF0638);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134217984;
          *(v14 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v12, v13, "AVAudioSession route changed during recording, reason: %lu", v14, 0xCu);
        }

        if (v10 <= 2)
        {
          v15 = type metadata accessor for TaskPriority();
          (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
          type metadata accessor for MainActor();

          v16 = static MainActor.shared.getter();
          v17 = swift_allocObject();
          v17[2] = v16;
          v17[3] = &protocol witness table for MainActor;
          v17[4] = v1;
          sub_1004EC158(0, 0, v4, &unk_100967238, v17);
        }
      }
    }

    else
    {

      sub_100177B94(v21);
    }
  }
}

uint64_t sub_10076F2C8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10076F374;

  return sub_10076B330();
}

uint64_t sub_10076F374()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10076F534;
  }

  else
  {
    v4 = sub_10076F4D0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10076F4D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076F534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10076F5B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10076F6A8()
{

  v1 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor;
  v2 = type metadata accessor for AudioIntensityProcessor();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC7Journal21AudioRecordingManager___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10076F7A0()
{
  sub_10076F6A8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioRecordingManager()
{
  result = qword_100AF06B8;
  if (!qword_100AF06B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10076F84C()
{
  result = type metadata accessor for AudioIntensityProcessor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10076F964@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  if (v3)
  {
    v4 = [v3 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

BOOL sub_10076FA10()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t sub_10076FAC4()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10076FB5C(uint64_t a1)
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  LOBYTE(v3) = *(v3 + 24);
  v7 = v4;
  v8 = sub_1005BACE0(a1, v4, v5, v6, v3);

  return *&v8;
}

uint64_t sub_10076FC5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10076BDB0();
}

uint64_t sub_10076FCE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10076C344();
}

uint64_t sub_10076FD74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10076AE80();
}

uint64_t sub_10076FE00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10076B330();
}

uint64_t sub_10076FE8C()
{
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

double sub_10076FF24()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  swift_beginAccess();
  v3 = *v2;
  LODWORD(v1) = *(v2 + 8);
  v4 = *(v2 + 16);
  LOBYTE(v2) = *(v2 + 24);
  v5 = v3;
  v6 = sub_1005BAB58(v3, v1, v4, v2);

  return v6;
}

double sub_100770014()
{
  v1 = type metadata accessor for AudioIntensityProcessor();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_getKeyPath();
  v10[1] = v5;
  sub_1007703E0(&qword_100AF0978);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  AudioIntensityProcessor.outputRate.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_100770188(uint64_t a1)
{
  result = sub_1007703E0(&qword_100AF0978);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007701CC(uint64_t a1)
{
  result = sub_1007703E0(&qword_100AF0980);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100770278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_10076F2C8();
}

uint64_t sub_10077032C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_10076EDFC();
}

uint64_t sub_1007703E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioRecordingManager();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100770424(uint64_t a1)
{
  v4 = *(sub_1000F24EC(&qword_100AEF2B0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_10076D864(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100770590()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy) = *(v0 + 24);
}

uint64_t sub_100770614(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

void *sub_100770658(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AudioIntensityProcessor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioIntensityProcessor.init()();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensityProcessor, v8, v5);
  *(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__recordingState) = 0;
  *(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__audioIntensities) = _swiftEmptyArrayStorage;
  *(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__averagePowerValues) = _swiftEmptyArrayStorage;
  v9 = v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__runtimeCalculator;
  *v9 = 0;
  *(v9 + 2) = 0;
  *(v9 + 2) = 0;
  v9[24] = 0;
  *(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__isTranscribing) = 0;
  ObservationRegistrar.init()();
  *(v2 + OBJC_IVAR____TtC7Journal21AudioRecordingManager__persistenceStrategy) = a1;
  type metadata accessor for AudioEngineRecordingMethod();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_outputContinuation;
  v12 = sub_1000F24EC(&unk_100AEF208);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioSession;
  type metadata accessor for SessionActor();
  v14 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v14 + 112) = [objc_opt_self() sharedInstance];
  *(v10 + v13) = v14;
  v15 = [objc_allocWithZone(AVAudioEngine) init];
  *(v10 + OBJC_IVAR____TtC7Journal26AudioEngineRecordingMethod_audioEngine) = v15;
  v2[2] = v10;
  v16 = [objc_allocWithZone(RCActivityWaveformProcessor) init];
  v2[3] = a2;
  v2[4] = v16;
  return v2;
}

uint64_t sub_1007708E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD5810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10077097C()
{
  result = qword_100AF0990;
  if (!qword_100AF0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0990);
  }

  return result;
}

unint64_t sub_1007709D4()
{
  result = qword_100AF0998;
  if (!qword_100AF0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF0998);
  }

  return result;
}

uint64_t sub_100770A28()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006AAF14(v5);
  v9 = type metadata accessor for StateOfMindAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AE6680;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  StateOfMindAssetMetadata.date.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

void sub_100770D18()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  type metadata accessor for CustomJournalsController();
  v1 = swift_allocObject();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = 0;
  v2 = v0;
  ObservationRegistrar.init()();
  v1[2] = [v2 viewContext];
  sub_10077214C(1);

  qword_100B30F98 = v1;
}

uint64_t sub_100770DF0()
{
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100770E94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_100770F40(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_1007710C8()
{
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10077116C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

uint64_t sub_100771244(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1007ECA60(v3, a1);

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

void *sub_1007713AC()
{
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

id sub_100771454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

void sub_10077150C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10077153C(v1);
}

void sub_10077153C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for JournalMO();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

double *sub_1007716BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for JournalFeatureFlags.multipleJournals(_:), v6, v8);
  v11 = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = [a1 journals];
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = v12;
  *&v20 = 0;
  type metadata accessor for JournalMO();
  sub_10077326C(&qword_100ADAA00, &type metadata accessor for JournalMO);
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  v14 = v20;
  result = _swiftEmptyArrayStorage;
  if (v20)
  {
    swift_getKeyPath();
    *&v20 = v3;
    sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v3 + 32))
    {
      sub_100772990();
    }

    swift_getKeyPath();
    *&v20 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + 32))
    {
      v16 = *(v3 + 32);
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = v14;

    sub_1007621B8(a2, v16, sub_1007732B4, v17, &v20);
    v23[0] = v20;
    v23[1] = v21;
    sub_1001C3030(*(&v20 + 1), v21, *(&v21 + 1), v22);
    v19 = v18;
    sub_100004F84(v23, &qword_100AF0BC0);

    return v19;
  }

  return result;
}

BOOL sub_1007719B0(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = *a1;
  if (sub_1006275AC(v20, a2))
  {
    return 1;
  }

  v34 = v7;
  v35 = a2;
  v22 = [v20 id];
  if (v22)
  {
    v23 = v22;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v5 + 56);
    v24(v19, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(v19, 1, 1, v4);
  }

  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v24(v16, 0, 1, v4);
  v25 = *(v8 + 48);
  sub_1001EDCD8(v19, v10);
  sub_1001EDCD8(v16, &v10[v25]);
  v26 = v5;
  v27 = *(v5 + 48);
  if (v27(v10, 1, v4) != 1)
  {
    sub_1001EDCD8(v10, v13);
    if (v27(&v10[v25], 1, v4) != 1)
    {
      v28 = v26;
      v29 = *(v26 + 32);
      v30 = v34;
      v29(v34, &v10[v25], v4);
      sub_10077326C(&qword_100AD9220, &type metadata accessor for UUID);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v28 + 8);
      v32(v30, v4);
      sub_100004F84(v16, &qword_100AD1420);
      sub_100004F84(v19, &qword_100AD1420);
      v32(v13, v4);
      sub_100004F84(v10, &qword_100AD1420);
      if (v31)
      {
        goto LABEL_14;
      }

      return 0;
    }

    sub_100004F84(v16, &qword_100AD1420);
    sub_100004F84(v19, &qword_100AD1420);
    (*(v26 + 8))(v13, v4);
LABEL_11:
    sub_100004F84(v10, &unk_100AEEE20);
    return 0;
  }

  sub_100004F84(v16, &qword_100AD1420);
  sub_100004F84(v19, &qword_100AD1420);
  if (v27(&v10[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_100004F84(v10, &qword_100AD1420);
LABEL_14:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *(v35 + 16);
  }

  return v33 == 0;
}

uint64_t sub_100771E70()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + 32))
  {
    sub_100772990();
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32))
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v1 + 32))
    {
      sub_100772990();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + 32))
    {
      v4 = *(v1 + 32);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_100604B34(v4);

    sub_1000F24EC(&qword_100AF0BB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v1 + 40))
    {
      sub_100772990();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v1 + 40);
    *(inited + 32) = v7;
    v8 = v7;
    sub_1007ECCA0(v5, inited);
    v10 = v9;

    swift_setDeallocating();
    sub_1000F24EC(&qword_100AEB678);
    swift_arrayDestroy();
    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_10077214C(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for JournalFeatureFlags();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getKeyPath();
    v20[1] = v2;
    sub_10077326C(&qword_100AD43D0, type metadata accessor for CustomJournalsController);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v2 + 24))
    {
      (*(v8 + 104))(v11, enum case for JournalFeatureFlags.multipleJournals(_:), v7);
      v12 = JournalFeatureFlags.isEnabled.getter();
      result = (*(v8 + 8))(v11, v7);
      if (v12)
      {
        v13 = type metadata accessor for TaskPriority();
        (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = *(v2 + 16);
        type metadata accessor for MainActor();
        v16 = v15;

        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        v18[2] = v17;
        v18[3] = &protocol witness table for MainActor;
        v18[4] = v16;
        v18[5] = v14;

        v19 = sub_1003E9628(0, 0, v6, &unk_100967480, v18);
        return sub_100770F40(v19);
      }
    }
  }

  return result;
}

uint64_t sub_100772408()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    if (v3)
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

    v7 = sub_100772834;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1007725A0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1007725A0()
{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(sub_100772604, v1, v2);
}

uint64_t sub_100772604()
{
  v1 = v0[9];
  v2 = type metadata accessor for NSManagedObjectContext.ObjectIDNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[22];

    sub_1000DDBBC(v3);
LABEL_8:

    v10 = v0[1];

    return v10();
  }

  if (!swift_weakLoadStrong())
  {
    v8 = v0[22];
    v9 = v0[9];

    sub_1000DDBBC(v8);
    sub_100004F84(v9, &qword_100ADA6B0);
    goto LABEL_8;
  }

  v4 = v0[9];
  sub_100772990();

  sub_100004F84(v4, &qword_100ADA6B0);
  v0[28] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[29] = v5;
  v6 = sub_1000F24EC(&qword_100AF0BA0);
  *v5 = v0;
  v5[1] = sub_100772408;
  v7 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v7, v6);
}

uint64_t sub_100772834()
{
  *(v0 + 48) = *(v0 + 240);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1007728E0()
{
  sub_1007731F4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100940080;
  *(v1 + 32) = type metadata accessor for JournalMO();
  v2 = NSManagedObjectContext.ObjectIDNotification.affects(_:)();

  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

void sub_100772990()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v54);
  v6 = &v40 - v5;
  v7 = sub_1000F24EC(&qword_100AD1420);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v56 = &v40 - v14;
  v15 = type metadata accessor for JournalFeatureFlags();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for JournalFeatureFlags.multipleJournals(_:), v15);
  v19 = JournalFeatureFlags.isEnabled.getter();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v46 = v10;
    v20 = type metadata accessor for JournalMO();
    v21 = static JournalMO.visibleNamedJournalsRequest()();
    v22 = NSManagedObjectContext.fetch<A>(_:)();

    sub_100771244(v23);
    v24 = v22;
    v40 = v1;
    if (v22 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v26 = 0;
      v52 = v24 & 0xFFFFFFFFFFFFFF8;
      v53 = v24 & 0xC000000000000001;
      v49 = (v3 + 48);
      v50 = (v3 + 56);
      v41 = (v3 + 32);
      v43 = (v3 + 8);
      v44 = v24;
      v51 = v20;
      v47 = i;
      v48 = v2;
      while (1)
      {
        if (v53)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v52 + 16))
          {
            goto LABEL_24;
          }

          v29 = *(v24 + 8 * v26 + 32);
        }

        v30 = v29;
        v31 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v32 = [v29 id];
        v55 = v30;
        if (v32)
        {
          v33 = v32;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = *v50;
        v36 = v56;
        (*v50)(v56, v34, 1, v2);
        static JournalMO.defaultJournalID.getter();
        v35(v13, 0, 1, v2);
        v37 = *(v54 + 48);
        sub_1001EDCD8(v36, v6);
        sub_1001EDCD8(v13, &v6[v37]);
        v20 = *v49;
        if ((*v49)(v6, 1, v2) == 1)
        {
          v3 = v6;
          sub_100004F84(v13, &qword_100AD1420);
          v2 = v48;
          sub_100004F84(v56, &qword_100AD1420);
          v27 = v20(&v6[v37], 1, v2);
          v28 = v55;
          if (v27 == 1)
          {
            sub_100004F84(v6, &qword_100AD1420);
LABEL_22:

            goto LABEL_27;
          }

          goto LABEL_6;
        }

        v3 = v56;
        v38 = v46;
        sub_1001EDCD8(v6, v46);
        if (v20(&v6[v37], 1, v2) == 1)
        {
          sub_100004F84(v13, &qword_100AD1420);
          sub_100004F84(v3, &qword_100AD1420);
          (*v43)(v38, v2);
          v24 = v44;
          v28 = v55;
LABEL_6:
          sub_100004F84(v6, &unk_100AEEE20);
          goto LABEL_7;
        }

        v39 = v45;
        (*v41)(v45, &v6[v37], v2);
        sub_10077326C(&qword_100AD9220, &type metadata accessor for UUID);
        v42 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *v43;
        (*v43)(v39, v2);
        sub_100004F84(v13, &qword_100AD1420);
        sub_100004F84(v3, &qword_100AD1420);
        (v20)(v38, v48);
        v2 = v48;
        sub_100004F84(v6, &qword_100AD1420);
        v24 = v44;
        v28 = v55;
        if (v42)
        {
          goto LABEL_22;
        }

LABEL_7:

        ++v26;
        if (v31 == v47)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_26:

    v28 = 0;
LABEL_27:
    sub_10077153C(v28);
  }
}

uint64_t sub_100773038()
{

  v1 = OBJC_IVAR____TtC7Journal24CustomJournalsController___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomJournalsController()
{
  result = qword_100AF09D0;
  if (!qword_100AF09D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100773148()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1007731F4()
{
  v0 = sub_1000F24EC(&qword_100AF0BA8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_100AF0BB0;
  }

  else
  {
    v2 = &unk_100AD4780;
  }

  return sub_1000F24EC(v2);
}

uint64_t sub_10077326C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1007732BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_1007732F4()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_100773330()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

id sub_10077336C(int a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v4 = 0x300000005;
    v5 = 6;
    v6 = a1;
    v7 = 0x100010024;
    v3 = result;
    [result replaceAttributes:&v4 count:3];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007733F4()
{
  sub_1000F24EC(&qword_100AF0BE0);
  NSManagedObjectContext.performAndWait<A>(_:)();
  return v1;
}

uint64_t sub_1007736CC(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v122 = a3;
  v6 = v5;
  v115 = a5;
  v123 = a4;
  v127 = a1;
  v8 = type metadata accessor for JournalAppVersion();
  v117 = *(v8 - 8);
  v118 = v8;
  __chkstk_darwin(v8);
  v116 = &v109[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v120 = &v109[-v11];
  v12 = sub_1000F24EC(&unk_100AEBE80);
  __chkstk_darwin(v12 - 8);
  v113 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v109[-v15];
  v17 = sub_1000F24EC(&qword_100AE4C80);
  v18 = *(v17 - 8);
  v125 = v17;
  v126 = v18;
  __chkstk_darwin(v17);
  v114 = &v109[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v119 = &v109[-v21];
  __chkstk_darwin(v22);
  v124 = &v109[-v23];
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v109[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v28 - 8);
  v30 = &v109[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v109[-v33];
  v35 = [v6 id];
  if (v35)
  {
    v36 = v35;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v25 + 56))(v30, 0, 1, v24);
  }

  else
  {
    (*(v25 + 56))(v30, 1, 1, v24);
  }

  sub_100024EC0(v30, v34);
  if ((*(v25 + 48))(v34, 1, v24))
  {
    sub_100004F84(v34, &qword_100AD1420);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    (*(v25 + 16))(v27, v34, v24);
    sub_100004F84(v34, &qword_100AD1420);
    v37 = UUID.uuidString.getter();
    v38 = v39;
    (*(v25 + 8))(v27, v24);
  }

  v40 = [a2 recordID];
  v41 = [v40 recordName];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (!v38)
  {

    goto LABEL_15;
  }

  if (v37 == v42 && v38 == v44)
  {

    goto LABEL_13;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
LABEL_15:
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000617C(v52, qword_100AE4B60);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Attempting to forward merge a record with an unrelated entry", v55, 2u);
    }

    sub_10046C0EC();
    swift_allocError();
    *v56 = 2;
    return swift_willThrow();
  }

LABEL_13:
  v130 = v6;
  v46 = v6;
  v47 = swift_readAtKeyPath();
  sub_1000082B4(v48, v16, &unk_100AEBE80);
  v47(&v128, 0);

  v50 = v125;
  v49 = v126;
  if ((*(v126 + 48))(v16, 1, v125) == 1)
  {
    sub_100004F84(v16, &unk_100AEBE80);
    sub_10046C0EC();
    swift_allocError();
    *v51 = 0;
    return swift_willThrow();
  }

  v58 = v124;
  (*(v49 + 32))(v124, v16, v50);
  v59 = v121;
  CKRecord.encryptedValueForKey<A>(_:as:)();
  if (v59)
  {
    return (*(v49 + 8))(v58, v50);
  }

  v60 = v129;
  if (v129 >> 60 == 15)
  {
    sub_10046C0EC();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
    return (*(v49 + 8))(v58, v50);
  }

  v62 = v128;
  v63 = Data.getAttributedString()();
  if (!v63)
  {
    sub_10046C0EC();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
    sub_10003A5C8(v62, v60);
    return (*(v49 + 8))(v58, v50);
  }

  v111 = v63;
  v112 = v62;
  v121 = v60;
  CRAttributedString<>.minimumAppVersion.getter();
  v64 = v116;
  v65 = v117;
  v66 = v118;
  (*(v117 + 104))(v116, enum case for JournalAppVersion.fall2025(_:), v118);
  v110 = static JournalAppVersion.< infix(_:_:)();
  v67 = *(v65 + 8);
  v67(v64, v66);
  v67(v120, v66);
  if (v110)
  {
    v68 = [objc_allocWithZone(UITraitCollection) init];
    sub_100777BCC(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
    v69 = v112;
    v70 = v119;
    CRAttributedString<>.replaced(with:traitCollection:)();

    v71 = v113;
    (*(v49 + 16))(v113, v70, v50);
    (*(v49 + 56))(v71, 0, 1, v50);
    v128 = v46;
    v72 = v46;
    swift_setAtReferenceWritableKeyPath();

    v130 = v72;
    v73 = v72;
    swift_getAtKeyPath();

    v74 = v128;
    v75 = v129;
    v76 = v121;
    sub_100199918(v69, v121);
    sub_100199918(v69, v76);
    if (v75 >> 60 == 15)
    {
      sub_10003A5C8(v74, v75);
      sub_10003A5C8(v69, v76);
    }

    else
    {
      sub_100199918(v74, v75);
      v94 = sub_100776920(v74, v75, v69, v76);
      sub_10003A5C8(v74, v75);
      sub_10003A5C8(v69, v76);
      sub_10003A5C8(v74, v75);
      if (v94)
      {

        v95 = v112;
        sub_10003A5C8(v112, v76);
        sub_10003A5C8(v95, v76);
        v96 = *(v49 + 8);
        v96(v119, v50);
LABEL_43:
        v105 = v124;
        return (v96)(v105, v50);
      }
    }

    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    sub_10000617C(v97, qword_100AE4B60);
    v98 = v123;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v128 = v102;
      *v101 = 136315138;
      *(v101 + 4) = sub_100008458(v122, v98, &v128);
      _os_log_impl(&_mh_execute_header, v99, v100, "Local and remote %s data differ, updating local to match record", v101, 0xCu);
      sub_10000BA7C(v102);
      v103 = v119;
    }

    else
    {

      v103 = v119;
    }

    v130 = v73;
    v106 = v112;
    v107 = v121;
    v128 = v112;
    v129 = v121;
    v108 = v73;
    swift_setAtReferenceWritableKeyPath();

    sub_10003A5C8(v106, v107);
    v96 = *(v49 + 8);
    v96(v103, v50);
    goto LABEL_43;
  }

  v78 = v121;
  if (qword_100ACFDC0 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_10000617C(v79, qword_100AE4B60);
  v80 = v114;
  (*(v49 + 16))(v114, v58, v50);
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v123 = v83;
    v127 = swift_slowAlloc();
    v128 = v127;
    *v83 = 136315138;
    v84 = CRAttributedString.attributedString.getter();
    v85 = v49;
    v86 = [v84 description];
    v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;

    v90 = *(v85 + 8);
    v90(v80, v50);

    v91 = sub_100008458(v87, v89, &v128);

    v92 = v123;
    *(v123 + 1) = v91;
    _os_log_impl(&_mh_execute_header, v81, v82, "%s does not allow forward merging", v92, 0xCu);
    sub_10000BA7C(v127);

    sub_10046C0EC();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();

    sub_10003A5C8(v112, v121);
    return (v90)(v124, v50);
  }

  v96 = *(v49 + 8);
  v96(v80, v50);
  sub_10046C0EC();
  swift_allocError();
  *v104 = 1;
  swift_willThrow();

  sub_10003A5C8(v112, v78);
  v105 = v58;
  return (v96)(v105, v50);
}

uint64_t sub_100774484(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v80 = a3;
  v6 = v5;
  v77[1] = a5;
  v81 = a4;
  v84 = a1;
  v8 = sub_1000F24EC(&unk_100AE4C90);
  __chkstk_darwin(v8 - 8);
  v77[0] = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v77 - v11;
  v83 = sub_1000F24EC(&unk_100AD6240);
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v78 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = v77 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v20 - 8);
  v22 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = v77 - v25;
  v27 = [v6 id];
  if (v27)
  {
    v28 = v27;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 56))(v22, 0, 1, v16);
  }

  else
  {
    (*(v17 + 56))(v22, 1, 1, v16);
  }

  sub_100024EC0(v22, v26);
  if ((*(v17 + 48))(v26, 1, v16))
  {
    sub_100004F84(v26, &qword_100AD1420);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    (*(v17 + 16))(v19, v26, v16);
    sub_100004F84(v26, &qword_100AD1420);
    v29 = UUID.uuidString.getter();
    v30 = v31;
    (*(v17 + 8))(v19, v16);
  }

  v32 = [a2 recordID];
  v33 = [v32 recordName];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (!v30)
  {

    goto LABEL_15;
  }

  if (v29 == v34 && v30 == v36)
  {

    goto LABEL_13;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
LABEL_15:
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000617C(v44, qword_100AE4B60);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempting to forward merge a record with an unrelated entry", v47, 2u);
    }

    sub_10046C0EC();
    swift_allocError();
    *v48 = 2;
    return swift_willThrow();
  }

LABEL_13:
  v88 = v6;
  v38 = v6;
  v39 = swift_readAtKeyPath();
  sub_1000082B4(v40, v12, &unk_100AE4C90);
  v39(&v86, 0);

  v41 = v85;
  v42 = v83;
  if ((*(v85 + 48))(v12, 1, v83) == 1)
  {
    sub_100004F84(v12, &unk_100AE4C90);
    sub_10046C0EC();
    swift_allocError();
    *v43 = 0;
    return swift_willThrow();
  }

  v50 = v82;
  (*(v41 + 32))(v82, v12, v42);
  v51 = v79;
  CKRecord.encryptedValueForKey<A>(_:as:)();
  if (v51)
  {
    return (*(v41 + 8))(v50, v42);
  }

  v52 = v87;
  if (v87 >> 60 == 15)
  {
    sub_10046C0EC();
    swift_allocError();
    *v53 = 0;
    swift_willThrow();
    return (*(v41 + 8))(v50, v42);
  }

  v54 = v86;
  v55 = Data.getAttributedString()();
  if (!v55)
  {
    sub_10046C0EC();
    swift_allocError();
    *v66 = 0;
    swift_willThrow();
    sub_10003A5C8(v54, v52);
    return (*(v41 + 8))(v50, v42);
  }

  v56 = v55;
  v57 = [objc_allocWithZone(UITraitCollection) init];
  sub_100777BCC(&qword_100AE4B78, &type metadata accessor for MergeableTitleAttributeScope);
  v79 = v54;
  v58 = v78;
  CRAttributedString<>.replaced(with:traitCollection:)();

  v59 = v77[0];
  v60 = v58;
  v61 = v79;
  (*(v41 + 16))(v77[0], v60, v42);
  (*(v41 + 56))(v59, 0, 1, v42);
  v86 = v38;
  v62 = v38;
  swift_setAtReferenceWritableKeyPath();

  v88 = v62;
  v63 = v62;
  swift_getAtKeyPath();

  v64 = v86;
  v65 = v87;
  sub_100199918(v61, v52);
  sub_100199918(v61, v52);
  if (v65 >> 60 == 15)
  {
    sub_10003A5C8(v64, v65);
    sub_10003A5C8(v61, v52);
LABEL_31:
    if (qword_100ACFDC0 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_10000617C(v68, qword_100AE4B60);
    v69 = v81;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v86 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_100008458(v80, v69, &v86);
      _os_log_impl(&_mh_execute_header, v70, v71, "Local and remote %s data differ, updating local to match record", v72, 0xCu);
      sub_10000BA7C(v73);
      v42 = v83;
    }

    v88 = v63;
    v74 = v79;
    v86 = v79;
    v87 = v52;
    v75 = v63;
    swift_setAtReferenceWritableKeyPath();

    sub_10003A5C8(v74, v52);
    goto LABEL_36;
  }

  sub_100199918(v64, v65);
  v67 = sub_100776920(v64, v65, v61, v52);
  sub_10003A5C8(v64, v65);
  sub_10003A5C8(v61, v52);
  sub_10003A5C8(v64, v65);
  if ((v67 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_10003A5C8(v61, v52);
  sub_10003A5C8(v61, v52);
LABEL_36:
  v76 = *(v85 + 8);
  v76(v78, v42);
  return (v76)(v82, v42);
}