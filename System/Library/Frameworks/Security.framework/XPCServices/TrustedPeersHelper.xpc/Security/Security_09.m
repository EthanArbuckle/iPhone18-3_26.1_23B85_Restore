Class sub_10011383C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a1 + 24);

  v6 = [v5 *a4];
  if (v6)
  {
    v7 = v6;
    sub_100216BA4();
  }

  v8.super.isa = sub_100216B94().super.isa;

  return v8.super.isa;
}

uint64_t sub_10011391C()
{
  sub_10004CD18(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void sub_100113964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v9 = v8;
  v96 = a8;
  v99 = a5;
  v100 = a4;
  v87 = a3;
  v101 = a2;
  v86 = a1;
  v12 = sub_100216194();
  v103 = *(v12 - 8);
  v13 = *(v103 + 64);
  v15 = __chkstk_darwin(v12, v14);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v80 - v19;
  v21 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_semaphore;
  v22 = dispatch_semaphore_create(1);
  v92 = v21;
  *&v9[v21] = v22;
  v23 = &v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
  *v23 = 0;
  v23[1] = 0;
  v90 = v23;
  v91 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_testIgnoreCustodianUpdates] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_testDontSetAccountSetting] = 0;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch] = 1000;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDVanished] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_midVanishedFromTDL] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDEvicted] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUserInitiated] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknownReason] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDUnknown] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDGhosted] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_egoMachineIDRolled] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_sentMetric] = 0;
  v89 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = 0;
  v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_testHashMismatchDetected] = 0;
  v24 = swift_allocObject();
  v102 = v24;
  *(v24 + 16) = 0;
  v98 = (v24 + 16);
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_darwinNotifier] = a6;
  v88 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_managedConfigurationAdapter] = a7;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = objc_opt_self();
  v95 = a7;
  swift_unknownObjectRetain();
  v27 = [v26 bundleForClass:ObjCClassFromMetadata];
  v28 = sub_100216964();
  v29 = sub_100216964();
  v30 = [v27 URLForResource:v28 withExtension:v29];

  if (!v30)
  {
    goto LABEL_19;
  }

  sub_100216184();

  v31 = *(v103 + 32);
  v94 = v12;
  v32 = v31(v20, v17, v12);
  if (qword_100297530 != -1)
  {
    v32 = swift_once();
  }

  __chkstk_darwin(v32, v33);
  *(&v80 - 2) = v20;
  sub_10000200C(0, &unk_10029D540, NSManagedObjectModel_ptr);
  v34 = v97;
  sub_100216CD4();
  v85 = v34;
  v35 = aBlock;
  v36 = objc_allocWithZone(NSPersistentContainer);
  v37 = v35;
  v38 = sub_100216964();
  v39 = [v36 initWithName:v38 managedObjectModel:v37];

  v97 = v37;
  v40 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_persistentContainer;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_persistentContainer] = v39;
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100225FB0;
  v42 = v99;
  *(v41 + 32) = v99;
  sub_10000200C(0, &qword_10029D550, NSPersistentStoreDescription_ptr);
  v43 = v39;
  v99 = v42;
  isa = sub_100216B14().super.isa;

  [v43 setPersistentStoreDescriptions:isa];

  v45 = [*&v9[v40] newBackgroundContext];
  v93 = v40;
  v46 = *&v9[v40];
  v47 = v102;
  v110 = sub_1001ACE40;
  v111 = v102;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_1001146C8;
  v109 = &unk_100282388;
  v48 = _Block_copy(&aBlock);
  v49 = v46;

  [v49 loadPersistentStoresWithCompletionHandler:v48];
  _Block_release(v48);

  v50 = v98;
  swift_beginAccess();
  if (*(v47 + 16))
  {
    v51 = *(v47 + 16);
    swift_errorRetain();
    v52 = sub_100216144();
    if (!sub_10010A774())
    {

      swift_willThrow();
      swift_unknownObjectRelease();

      sub_100006128(v96);
      (*(v103 + 8))(v20, v94);

      v59 = 0;
      goto LABEL_13;
    }

    v83 = v52;
    v84 = v20;
    v104 = 0;
    v53 = swift_allocObject();
    v54 = v99;
    v53[2] = v99;
    v53[3] = v45;
    v53[4] = v50;
    v53[5] = &v104;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_100186C7C;
    *(v55 + 24) = v53;
    v110 = sub_100186C88;
    v111 = v55;
    aBlock = _NSConcreteStackBlock;
    v107 = 1107296256;
    v108 = sub_100109050;
    v109 = &unk_100282400;
    v56 = _Block_copy(&aBlock);
    v82 = v54;
    v57 = v45;

    [v57 performBlockAndWait:v56];
    _Block_release(v56);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if (v104)
      {
        swift_errorRetain();

        swift_willThrow();

        swift_unknownObjectRelease();

        sub_100006128(v96);
        (*(v103 + 8))(v84, v94);

        v59 = sub_100186C7C;
LABEL_13:

        v69 = v90[1];

        v70 = *&v9[v88];
        swift_unknownObjectRelease();

        type metadata accessor for Container();
        swift_deallocPartialClassInstance();
        sub_100186C6C(v59);
        return;
      }

      v81 = v57;
      v98 = v53;
      v75 = swift_allocObject();
      *(v75 + 16) = 0;
      v76 = (v75 + 16);
      v77 = *&v9[v93];
      v110 = sub_100186CB0;
      v111 = v75;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_1001146C8;
      v109 = &unk_100282428;
      v78 = _Block_copy(&aBlock);
      v79 = v77;

      [v79 loadPersistentStoresWithCompletionHandler:v78];
      _Block_release(v78);

      swift_beginAccess();
      v61 = v101;
      if (*v76)
      {
        swift_errorRetain();

        swift_willThrow();

        swift_unknownObjectRelease();

        sub_100006128(v96);
        (*(v103 + 8))(v84, v94);

        v59 = sub_100186C7C;
        goto LABEL_13;
      }

      v83 = sub_100186C7C;
      v60 = v103;
      goto LABEL_10;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v84 = v20;
  v83 = 0;
  v98 = 0;
  v60 = v103;
  v61 = v101;
LABEL_10:
  v62 = v100;
  v63 = v86;
  v64 = [objc_opt_self() mergeByPropertyStoreTrumpMergePolicy];
  [v45 setMergePolicy:v64];

  __chkstk_darwin(v65, v66);
  *(&v80 - 6) = v63;
  *(&v80 - 5) = v61;
  v67 = v87;
  *(&v80 - 4) = v87;
  *(&v80 - 3) = v62;
  *(&v80 - 2) = v45;
  sub_10001148C(&qword_10029D558, &unk_1002264D8);
  v68 = v85;
  sub_100216D34();
  if (v68)
  {

    swift_unknownObjectRelease();

    sub_100006128(v96);
    (*(v60 + 8))(v84, v94);

    v59 = v83;
    goto LABEL_13;
  }

  v71 = v107;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] = aBlock;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model] = v71;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter] = v108;
  v72 = &v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
  *v72 = v63;
  v72[1] = v61;
  v72[2] = v67;
  v72[3] = v62;
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc] = v45;
  v73 = v96;
  sub_10007974C(v96, &v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish]);
  *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_escrowCacheTimeout] = 0x408C200000000000;
  v74 = type metadata accessor for Container();
  v105.receiver = v9;
  v105.super_class = v74;
  objc_msgSendSuper2(&v105, "init");
  swift_unknownObjectRelease();

  sub_100006128(v73);
  (*(v60 + 8))(v84, v94);

  sub_100186C6C(v83);
}

void sub_1001146C8(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

id sub_100114754(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_100216194();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12, v15);
  v17 = &v33[-v16];
  result = [a1 URL];
  if (result)
  {
    v19 = result;
    sub_100216184();

    (*(v9 + 32))(v17, v14, v8);
    v20 = [a2 persistentStoreCoordinator];
    if (v20)
    {
      v22 = v20;
      sub_100216174(v21);
      v24 = v23;
      v25 = [a1 type];
      if (!v25)
      {
        sub_100216974();
        v25 = sub_100216964();
      }

      sub_100019254(_swiftEmptyArrayStorage);
      isa = sub_1002168C4().super.isa;

      v34[0] = 0;
      v27 = [v22 destroyPersistentStoreAtURL:v24 withType:v25 options:isa error:v34];

      if (!v27)
      {
        v30 = v34[0];
        v31 = sub_100216154();

        swift_willThrow();
        (*(v9 + 8))(v17, v8);
        v32 = *a4;
        *a4 = v31;
      }

      v28 = v34[0];
    }

    (*(v9 + 8))(v17, v8);
    swift_beginAccess();
    v29 = *a3;
    *a3 = 0;
  }

  return result;
}

uint64_t sub_100114A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  swift_errorRetain();
}

void sub_100114A74(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v11 = objc_allocWithZone(NSFetchRequest);
  v12 = sub_100216964();
  v13 = [v11 initWithEntityName:v12];

  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10021D600;
  v16 = sub_100216974() == a3 && v15 == a4;
  v46 = a4;
  v47 = a3;
  if (v16)
  {
  }

  else
  {
    v17 = sub_1002171A4();

    if ((v17 & 1) == 0)
    {
      v49 = a1;
      v50 = a2;

      v51._countAndFlagsBits = 45;
      v51._object = 0xE100000000000000;
      sub_100216A14(v51);

      v52._countAndFlagsBits = v47;
      v52._object = a4;
      sub_100216A14(v52);

      v18 = a1;
      v19 = a2;
      goto LABEL_9;
    }
  }

  v18 = a1;
  v19 = a2;
LABEL_9:
  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100019BD0();
  *(v14 + 32) = v18;
  *(v14 + 40) = v19;
  v20 = sub_100216C34();
  [v13 setPredicate:v20];

  [v13 setFetchLimit:1];
  type metadata accessor for ContainerMO();
  v21 = a5;
  v22 = sub_100216D54();
  if (v6)
  {
LABEL_10:

    return;
  }

  if (v22 >> 62)
  {
    v25 = v22;
    v26 = sub_1002170F4();
    v22 = v25;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = sub_100217014();
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v23 = *(v22 + 32);
    }

    v24 = v23;

    goto LABEL_26;
  }

  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a5];
  if (sub_100216974() == v47 && v27 == v46)
  {
    v28 = v24;
  }

  else
  {
    v29 = sub_1002171A4();
    v30 = v24;

    if ((v29 & 1) == 0)
    {
      v49 = a1;
      v50 = a2;

      v53._countAndFlagsBits = 45;
      v53._object = 0xE100000000000000;
      sub_100216A14(v53);

      v54._countAndFlagsBits = v47;
      v54._object = v46;
      sub_100216A14(v54);

      goto LABEL_24;
    }
  }

LABEL_24:
  v31 = sub_100216964();

  [v24 setName:v31];

  v49 = 0;
  if (![a5 save:&v49])
  {
    v33 = v49;
    sub_100216154();

    swift_willThrow();
    goto LABEL_10;
  }

  v32 = v49;
LABEL_26:
  sub_1001F1F48(v24, a5);
  sub_100002F7C(v24, a5);
  type metadata accessor for Container();
  sub_1002011B0(v24, a5);
  sub_10019E368(v24, a5);
  sub_10005FC1C(v24, a5);
  v34 = sub_10019EC98(a5, v24, 0, 0xF000000000000000);
  v36 = v35;
  v37 = v34;
  sub_1001A0C98(v24, v37);

  sub_10010AAD0();
  [v21 reset];
  v38 = sub_100216D54();
  if (!(v38 >> 62))
  {
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_37:

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v43 = sub_100216774();
    sub_100002648(v43, qword_10029D160);
    v13 = sub_100216754();
    v44 = sub_100216C74();
    if (os_log_type_enabled(v13, v44))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v13, v44, "containerMO could not be fetched again?", v36, 2u);
    }

    sub_1002170E4();
    __break(1u);
    goto LABEL_42;
  }

  v41 = v38;
  v42 = sub_1002170F4();
  v38 = v41;
  if (!v42)
  {
    goto LABEL_37;
  }

LABEL_30:
  if ((v38 & 0xC000000000000001) != 0)
  {
LABEL_42:
    v39 = sub_100217014();
    goto LABEL_33;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 32);
LABEL_33:
    v40 = v39;

    *a6 = v40;
    a6[1] = v37;
    a6[2] = v36;
    return;
  }

  __break(1u);
}

void sub_100115168(void *a1, uint64_t a2, uint64_t a3)
{
  v107 = &_swiftEmptySetSingleton;
  v106[0] = &_swiftEmptySetSingleton;
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_100216964();
  v9 = [v7 initWithEntityName:v8];

  [v9 setFetchBatchSize:5];
  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10021D600;
  *(v10 + 56) = type metadata accessor for ContainerMO();
  *(v10 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v10 + 32) = a1;
  v11 = a1;
  v12 = sub_100216C34();
  [v9 setPredicate:v12];

  v13 = type metadata accessor for PolicyMO();
  v14 = sub_100216D44();
  v15 = v3;
  if (v3)
  {

LABEL_28:
    *a3 = v15;
    return;
  }

  v16 = v14;
  sub_10001148C(&qword_10029D5B8, &qword_100226500);
  sub_100216BE4(v16);
  __chkstk_darwin(v17, v18);
  v89[2] = a2;
  v89[3] = &v107;
  v89[4] = v106;
  sub_100004860(v9, sub_1001A140C, v89, EscrowCheckGraphStatus.rawValue.getter, 0, type metadata accessor for PolicyMO);
  v90 = a3;
  v95 = v9;
  v101 = v13;
  v102 = a2;
  v91 = v106[0];
  if ((v106[0] & 0xC000000000000001) != 0)
  {
    if (sub_100216ED4())
    {
      v99 = 0;
      a3 = v11;
      v19 = v11;

      sub_100216E84();
      sub_1001A13C4(&qword_10029D5C0, type metadata accessor for PolicyMO);
      sub_100216C04();
      v21 = v106[1];
      v20 = v106[2];
      v22 = v106[3];
      v9 = v106[4];
      v15 = v106[5];
LABEL_11:
      v103 = v22;
      v27 = (v22 + 64) >> 6;
      if (v21 < 0)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v28 = v9;
        v29 = v15;
        v30 = v9;
        if (!v15)
        {
          while (1)
          {
            v30 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v30 >= v27)
            {
              goto LABEL_22;
            }

            v29 = *(v20 + 8 * v30);
            ++v28;
            if (v29)
            {
              goto LABEL_16;
            }
          }

LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_16:
        v31 = (v29 - 1) & v29;
        v32 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
        if (!v32)
        {
          break;
        }

        while (1)
        {
          [a3 removePoliciesObject:v32];

          v9 = v30;
          v15 = v31;
          if ((v21 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_18:
          v33 = sub_100216F14();
          if (v33)
          {
            v104 = v33;
            swift_dynamicCast();
            v32 = v105;
            v30 = v9;
            v31 = v15;
            if (v105)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

LABEL_22:
      v11 = a3;

      sub_10000D778();

      v34 = v99;
      sub_10010AAD0();
      v15 = v34;
      if (!v34)
      {
        v91 = &_swiftEmptySetSingleton;
        v9 = v95;
        goto LABEL_30;
      }

      a3 = v90;
      v9 = v95;
      if (qword_100297520 != -1)
      {
        goto LABEL_106;
      }

      goto LABEL_24;
    }
  }

  else if (*(v106[0] + 16))
  {
    v21 = v106[0];
    v99 = 0;
    v23 = -1 << *(v106[0] + 32);
    v20 = v106[0] + 56;
    v22 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v15 = v25 & *(v106[0] + 56);
    a3 = v11;
    v26 = v11;

    v9 = 0;
    goto LABEL_11;
  }

LABEL_30:
  sub_10004C850(&v107);
  v42 = v41;
  v43 = *(v41 + 16);
  if (v43)
  {
    v9 = 0;
    v44 = 0;
    while (1)
    {
      v45 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v46 = __OFADD__(v44, 5);
      v44 += 5;
      if (v46)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v9;
      if (v44 >= v43)
      {
        v99 = 0;
        v105 = _swiftEmptyArrayStorage;
        sub_100187784(0, v45 & ~(v45 >> 63), 0);
        if (v45 < 0)
        {
          __break(1u);
LABEL_108:
          swift_once();
LABEL_90:
          v83 = sub_100216774();
          sub_100002648(v83, qword_10029D160);
          swift_errorRetain();
          v84 = sub_100216754();
          v85 = sub_100216C74();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v86 = 138543362;
            swift_errorRetain();
            v88 = _swift_stdlib_bridgeErrorToNSError();
            *(v86 + 4) = v88;
            *v87 = v88;
            _os_log_impl(&_mh_execute_header, v84, v85, "Unable to save built-in policies to DB: %{public}@", v86, 0xCu);
            sub_1000114D4(v87, &qword_10029D580, &unk_10021CCC0);
          }

          swift_willThrow();
          objc_autoreleasePoolPop(v97);

          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        v100 = v11;
        v47 = v105;
        if (!v45)
        {
          a3 = 0;
LABEL_71:
          v103 = (v42 + 32);
          v76 = a3;
          while (1)
          {
            v77 = v76 + 5;
            if (__OFADD__(v76, 5))
            {
              goto LABEL_97;
            }

            if (v43 >= v77)
            {
              v15 = v76 + 5;
            }

            else
            {
              v15 = v43;
            }

            if (v15 < v76)
            {
              goto LABEL_98;
            }

            if (a3 < 0)
            {
              goto LABEL_99;
            }

            v78 = *(v42 + 16);
            if (v78 < v76 || v78 < v15)
            {
              goto LABEL_100;
            }

            v105 = v47;
            v9 = v47[2];
            v80 = v47[3];

            if (v9 >= v80 >> 1)
            {
              sub_100187784((v80 > 1), v9 + 1, 1);
              v47 = v105;
            }

            v47[2] = v9 + 1;
            v81 = &v47[4 * v9];
            v82 = v103;
            v81[4] = v42;
            v81[5] = v82;
            v81[6] = v76;
            v81[7] = (2 * v15) | 1;
            v76 = (v76 + 5);
            if (v77 >= v43)
            {
              goto LABEL_55;
            }
          }
        }

        v48 = 0;
        v103 = (v42 + 32);
        while (v48 < v43)
        {
          if (v48 == 0x7FFFFFFFFFFFFFFDLL)
          {
            goto LABEL_102;
          }

          a3 = v48 + 5;
          if (v43 >= (v48 + 5))
          {
            v49 = v48 + 5;
          }

          else
          {
            v49 = v43;
          }

          if (v49 < v48)
          {
            goto LABEL_103;
          }

          v50 = *(v42 + 16);
          if (v50 < v48 || v50 < v49)
          {
            goto LABEL_104;
          }

          v105 = v47;
          v15 = v47[2];
          v52 = v47[3];

          if (v15 >= v52 >> 1)
          {
            sub_100187784((v52 > 1), v15 + 1, 1);
            v47 = v105;
          }

          v47[2] = v15 + 1;
          v53 = &v47[4 * v15];
          v54 = v103;
          v53[4] = v42;
          v53[5] = v54;
          v53[6] = v48;
          v53[7] = (2 * v49) | 1;
          v48 += 5;
          if (!--v9)
          {
            if (a3 < v43)
            {
              goto LABEL_71;
            }

LABEL_55:

            v93 = v47[2];
            if (!v93)
            {
              v9 = v95;
LABEL_87:

              goto LABEL_88;
            }

            v55 = 0;
            v94 = v47 + 4;
            a3 = 0x100294000;
            v15 = v99;
            v92 = v47;
            while (v55 < v47[2])
            {
              v96 = v55;
              v56 = &v94[4 * v55];
              v57 = v56[1];
              v58 = v56[2];
              v59 = v56[3];
              v98 = *v56;
              v99 = v15;
              swift_unknownObjectRetain();
              v97 = objc_autoreleasePoolPush();
              v60 = v59 >> 1;
              v61 = (v59 >> 1) - v58;
              if (v59 >> 1 != v58)
              {
                if (v58 > v60)
                {
                  v60 = v58;
                }

                v63 = v60 - v58;
                v64 = (v57 + 16 * v58 + 8);
                while (v63)
                {
                  v70 = *(v64 - 1);
                  v69 = *v64;

                  v103 = objc_autoreleasePoolPush();
                  v70(&v105);
                  v9 = v105;
                  v71 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                  v72 = [v71 initWithContext:v102];
                  v15 = [v9 *(a3 + 288)];
                  v73 = [v15 versionNumber];

                  if ((v73 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_94;
                  }

                  [v72 setVersion:v73];
                  v74 = [v9 *(a3 + 288)];
                  v75 = [v74 policyHash];

                  if (!v75)
                  {
                    sub_100216974();
                    v75 = sub_100216964();
                  }

                  [v72 setPolicyHash:v75];

                  v65 = [v9 protobuf];
                  v15 = sub_100216224();
                  v67 = v66;

                  isa = sub_100216204().super.isa;
                  sub_100002BF0(v15, v67);
                  [v72 setPolicyData:isa];

                  [(SEL *)v100 addPoliciesObject:v72];
                  objc_autoreleasePoolPop(v103);

                  --v63;
                  v64 += 2;
                  --v61;
                  a3 = &selRef_signingKey;
                  if (!v61)
                  {
                    goto LABEL_59;
                  }
                }

                __break(1u);
LABEL_94:
                __break(1u);
                goto LABEL_95;
              }

LABEL_59:
              v62 = v99;
              sub_10010AAD0();
              v15 = v62;
              if (v62)
              {

                a3 = v90;
                v9 = v95;
                if (qword_100297520 != -1)
                {
                  goto LABEL_108;
                }

                goto LABEL_90;
              }

              v55 = v96 + 1;
              objc_autoreleasePoolPop(v97);
              swift_unknownObjectRelease();
              v47 = v92;
              v9 = v95;
              if (v55 == v93)
              {
                goto LABEL_87;
              }
            }

            goto LABEL_105;
          }
        }

        goto LABEL_101;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
LABEL_24:
    v35 = sub_100216774();
    sub_100002648(v35, qword_10029D160);
    swift_errorRetain();
    v36 = sub_100216754();
    v37 = sub_100216C74();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138543362;
      swift_errorRetain();
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v40;
      *v39 = v40;
      _os_log_impl(&_mh_execute_header, v36, v37, "Unable to save built-in policies to DB: %{public}@", v38, 0xCu);
      sub_1000114D4(v39, &qword_10029D580, &unk_10021CCC0);
    }

    swift_willThrow();
LABEL_27:

    goto LABEL_28;
  }

LABEL_88:
}

void sub_100115D74(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = a1;
  v7 = [a1 policyHash];
  if (!v7)
  {
    goto LABEL_36;
  }

  v8 = v7;
  v9 = sub_100216974();
  v11 = v10;
  v12 = [v6 policyData];
  if (!v12)
  {

    goto LABEL_36;
  }

  v71 = v9;
  v75 = v11;
  v13 = v12;
  v14 = sub_100216224();
  v16 = v15;

  v17 = objc_opt_self();
  isa = sub_100216204().super.isa;
  v19 = [v17 policyDocWithHash:v8 data:isa];

  if (!v19)
  {
    sub_100002BF0(v14, v16);

    goto LABEL_36;
  }

  v68 = v19;
  v69 = v14;
  v72 = v16;
  v73 = a4;
  v70 = a3;
  v20 = sub_100019ED4();
  v21 = v20;
  v22 = *(v20 + 16);
  v23 = _swiftEmptyArrayStorage;
  v74 = v6;
  if (v22)
  {
    v24 = 0;
    v25 = v20 + 64;
    v67 = v20 + 64;
    do
    {
      v26 = (v25 + 40 * v24);
      v27 = v24;
      while (1)
      {
        if (v27 >= *(v21 + 16))
        {
          __break(1u);
          return;
        }

        v78 = *(v26 - 1);
        v28 = *v26;
        v76 = *(v26 - 2);
        v29 = v76;

        v30 = [v29 versionNumber];
        v31 = [v6 version];
        if ((v31 & 0x8000000000000000) == 0 && v30 == v31)
        {
          break;
        }

        ++v27;

        v26 += 5;
        if (v22 == v27)
        {
          goto LABEL_19;
        }
      }

      v80 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100187744(0, v23[2] + 1, 1);
        v23 = v80;
      }

      v25 = v67;
      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        sub_100187744((v32 > 1), v33 + 1, 1);
        v23 = v80;
      }

      v24 = v27 + 1;
      v23[2] = v33 + 1;
      v34 = &v23[5 * v33];
      *(v34 + 2) = v76;
      *(v34 + 3) = v78;
      v34[8] = v28;
      v6 = v74;
    }

    while (v22 - 1 != v27);
  }

LABEL_19:

  v35 = v23[2];
  if (v35)
  {
    v80 = _swiftEmptyArrayStorage;
    sub_100187724(0, v35, 0);
    v36 = _swiftEmptyArrayStorage;
    v37 = v23 + 8;
    do
    {
      v38 = *v37;
      v39 = swift_allocObject();
      v77 = *(v37 - 2);
      v79 = *(v37 - 1);
      *(v39 + 16) = v77;
      *(v39 + 32) = v79;
      *(v39 + 48) = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_10004CCE0;
      *(v40 + 24) = v39;
      v80 = v36;
      v41 = v36[2];
      v42 = v36[3];
      v43 = v77;

      if (v41 >= v42 >> 1)
      {
        sub_100187724((v42 > 1), v41 + 1, 1);
        v36 = v80;
      }

      v36[2] = v41 + 1;
      v44 = &v36[2 * v41];
      v44[4] = sub_1001A142C;
      v44[5] = v40;
      v37 += 5;
      --v35;
    }

    while (v35);

    v6 = v74;
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  a3 = v70;
  if (v36[2])
  {
    v46 = v36[4];
    v45 = v36[5];

    v46(&v80, v47);

    v48 = v80;
    v49 = [v80 version];

    v50 = [v49 policyHash];
    v51 = sub_100216974();
    v53 = v52;

    if (v51 == v71 && v53 == v75)
    {

      v54 = v73;
      v6 = v74;
      v55 = v68;
      v56 = v69;
    }

    else
    {
      v61 = sub_1002171A4();

      v54 = v73;
      v6 = v74;
      v55 = v68;
      v56 = v69;
      if ((v61 & 1) == 0)
      {
LABEL_33:
        sub_10018B29C(&v80, v6);
        sub_100002BF0(v56, v72);

        goto LABEL_36;
      }
    }

    v62 = *v54;

    v63 = [v55 version];
    v64 = [v63 versionNumber];

    LOBYTE(v64) = sub_10004C6B0(v64, v62);

    if (v64)
    {
      goto LABEL_33;
    }

    v65 = [v55 version];
    v66 = [v65 versionNumber];

    sub_10018B50C(&v80, v66);
    v59 = v56;
    v60 = v72;
  }

  else
  {

    v55 = v68;
    v57 = [v68 version];
    v58 = [v57 versionNumber];

    sub_10018B50C(&v80, v58);
    v59 = v69;
    v60 = v72;
  }

  sub_100002BF0(v59, v60);

LABEL_36:
  if (([v6 hasChanges] & 1) == 0)
  {
    [a3 refreshObject:v6 mergeChanges:0];
  }
}

uint64_t sub_1001163D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
  *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v4 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  [v3 deleteObject:*(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO)];
  type metadata accessor for ContainerMO();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v3];
  v6 = *(v0 + v4);
  *(v1 + v4) = v5;
  v7 = v5;

  v9 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name);
  v8 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8);
  v10 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16);
  v11 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24);
  if (v10 == sub_100216974() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1002171A4();

    if ((v14 & 1) == 0)
    {

      v29._countAndFlagsBits = 45;
      v29._object = 0xE100000000000000;
      sub_100216A14(v29);

      v30._countAndFlagsBits = v10;
      v30._object = v11;
      sub_100216A14(v30);

      goto LABEL_9;
    }
  }

LABEL_9:
  v15 = sub_100216964();

  [v7 setName:v15];

  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v17 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v18 = *(v1 + v4);

  v19 = sub_10010F154();
  v21 = v20;

  v22 = sub_10019EC98(v3, v18, v19, v21);
  v24 = v23;
  sub_10004CD18(v19, v21);

  v25 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) = v22;

  v26 = *(v1 + v16);
  *(v1 + v16) = v24;
}

void sub_100116608(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001148C(&unk_10029DA20, &unk_100226750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10021D420;
  strcpy((inited + 32), "permanentInfo");
  *(inited + 46) = -4864;
  v4 = [a1 permanentInfo];
  v5 = [v4 dictionaryRepresentation];

  v6 = sub_1002168D4();
  v7 = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x444972656570;
  *(inited + 88) = 0xE600000000000000;
  v8 = [a1 peerID];
  v9 = sub_100216974();
  v11 = v10;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v9;
  *(inited + 104) = v11;
  v12 = sub_10001900C(inited);
  swift_setDeallocating();
  sub_10001148C(&qword_100297CF0, &qword_10021D6F8);
  swift_arrayDestroy();
  v30 = v12;
  v13 = [a1 stableInfo];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 dictionaryRepresentation];
    v16 = sub_1002168D4();

    v29 = v7;
    *&v28 = v16;
    sub_1000125AC(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v27, 0x6E49656C62617473, 0xEA00000000006F66, isUniquelyReferenced_nonNull_native);
    v30 = v12;
    if (SecIsInternalRelease())
    {
    }

    else
    {
      sub_100015830(0x6E5F6C6169726573, 0xED00007265626D75, &v28);
      sub_1000114D4(&v28, &unk_100297770, &unk_10021DF90);
      sub_100015830(0x6E5F656369766564, 0xEB00000000656D61, &v28);

      sub_1000114D4(&v28, &unk_100297770, &unk_10021DF90);
    }
  }

  v18 = [a1 dynamicInfo];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 dictionaryRepresentation];
    v21 = sub_1002168D4();

    v29 = v7;
    *&v28 = v21;
    sub_1000125AC(&v28, v27);
    v22 = v30;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_100185894(v27, 0x4963696D616E7964, 0xEB000000006F666ELL, v23);

    v24 = v22;
  }

  else
  {
    v24 = v30;
  }

  *v26 = v24;
}

void sub_1001169B4(void (*a1)(void, void), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v119[0] = 0;
  v7 = [v6 viablePeerCountsByModelIDWithError:v119];
  v8 = v119[0];
  if (!v7)
  {
    v37 = v119[0];
    v38 = sub_100216154();

    swift_willThrow();
    v39 = sub_100019974(_swiftEmptyArrayStorage);
    sub_10011777C(v38, 0xD000000000000019, 0x800000010023D370, v39, a1);
LABEL_11:

    return;
  }

  v9 = v7;
  sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  v10 = sub_1002168D4();
  v11 = v8;

  v12 = *&v2[v5];
  v119[0] = 0;
  v13 = [v12 peerCountsByMachineIDWithError:v119];
  v14 = v119[0];
  if (!v13)
  {
    v40 = v119[0];
    v41 = sub_100216154();

    swift_willThrow();
    sub_10011777C(v41, 0xD000000000000015, 0x800000010023D390, v10, a1);
    goto LABEL_11;
  }

  v15 = v13;
  v16 = sub_1002168D4();
  v17 = v14;

  v18 = [*&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v18)
  {
    v115 = v16;
    v113 = v10;
    v19 = v18;
    v20 = sub_100216974();
    v116 = v21;
    v22 = *&v2[v5];
    v119[0] = 0;
    v23 = v19;
    v24 = [v22 peerWithID:v23 error:v119];
    v25 = v24;
    v118 = a2;
    if (v119[0])
    {
      v111 = v2;
      v26 = v119[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v27 = sub_100216774();
      sub_100002648(v27, qword_10029D160);
      v28 = v26;
      v29 = sub_100216754();
      v30 = sub_100216C74();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v20;
        v32 = swift_slowAlloc();
        v33 = a1;
        v34 = swift_slowAlloc();
        *v32 = 138543362;
        v35 = v28;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v36;
        *v34 = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Error getting ego peer from model: %{public}@", v32, 0xCu);
        sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);
        a1 = v33;

        v20 = v31;
      }

      else
      {
      }

      v59 = 0;
      v114 = 0;
      v2 = v111;
      a2 = v118;
    }

    else if (v24)
    {
      v114 = v24;
      v59 = [v24 permanentInfo];
    }

    else
    {
      v112 = v20;
      v96 = v2;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v97 = sub_100216774();
      sub_100002648(v97, qword_10029D160);
      v98 = sub_100216754();
      v99 = sub_100216C74();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "Couldn't find ego peer in model", v100, 2u);
      }

      v59 = 0;
      v114 = 0;
      v2 = v96;
      v20 = v112;
    }

    v60 = swift_allocObject();
    v61 = *&v2[v5];
    v119[0] = 0;
    v62 = v61;
    v63 = [v62 statusOfPeerWithID:v23 error:v119];

    v64 = v119[0];
    if (v119[0])
    {
      v65 = v119[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v66 = sub_100216774();
      sub_100002648(v66, qword_10029D160);
      v67 = v65;
      v68 = sub_100216754();
      v69 = sub_100216C74();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v70 = 138543362;
        v72 = v67;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v70 + 4) = v73;
        *v71 = v73;
        _os_log_impl(&_mh_execute_header, v68, v69, "error calling statusOfPeer: %{public}@", v70, 0xCu);
        sub_1000114D4(v71, &qword_10029D580, &unk_10021CCC0);
      }

      v110 = v59;
      if (v59)
      {
        v74 = [v59 machineID];
        if (!v74)
        {
          sub_100216974();
          v74 = sub_100216964();
        }
      }

      else
      {
        v74 = 0;
      }

      v82 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      isa = sub_1002168C4().super.isa;

      v84 = sub_1002168C4().super.isa;

      LOBYTE(v109) = 0;
      v85 = [v82 initWithEgoPeerID:v23 egoPeerMachineID:v74 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v84 isExcluded:0 isLocked:v109];

      v86 = v67;
      a1(v85, v64);
    }

    else
    {

      *(v60 + 16) = v63;
      v75 = swift_allocObject();
      *(v75 + 16) = v63 == 4;
      v76 = swift_allocObject();
      v76[2] = v75;
      v76[3] = v60;
      v76[4] = v20;
      v76[5] = v116;
      v76[6] = v59;
      v76[7] = v113;
      v76[8] = v115;
      v76[9] = a1;
      v76[10] = a2;
      v76[11] = v2;
      strcpy(v119, "signing-key ");
      BYTE5(v119[1]) = 0;
      HIWORD(v119[1]) = -5120;
      v77 = v20;
      v78 = v59;

      v79 = v2;

      v120._countAndFlagsBits = v77;
      v120._object = v116;
      sub_100216A14(v120);
      v80 = v119[0];
      v81 = v119[1];

      sub_100198E8C(v80, v81, sub_1001AC4EC, v76, v77, v116);

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v42 = *&v2[v5];
    v119[0] = 0;
    v43 = [v42 hasAnyPeersWithError:v119];
    v44 = v119[0];
    if (v119[0])
    {
      v45 = v119[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v117 = a1;
      v46 = sub_100216774();
      sub_100002648(v46, qword_10029D160);
      v47 = v45;
      v48 = sub_100216754();
      v49 = sub_100216C74();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138543362;
        v52 = v47;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&_mh_execute_header, v48, v49, "error calling hasAnyPeers: %{public}@", v50, 0xCu);
        sub_1000114D4(v51, &qword_10029D580, &unk_10021CCC0);
      }

      sub_100019974(_swiftEmptyArrayStorage);
      sub_100019974(_swiftEmptyArrayStorage);
      v54 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      v55 = sub_1002168C4().super.isa;

      v56 = sub_1002168C4().super.isa;

      LOBYTE(v109) = 0;
      v57 = [v54 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:v55 peerCountsByMachineID:v56 isExcluded:0 isLocked:v109];

      v58 = v47;
      v117(v57, v44);
    }

    else
    {
      v87 = v2;
      if (v43)
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v88 = sub_100216774();
        sub_100002648(v88, qword_10029D160);
        v89 = sub_100216754();
        v90 = sub_100216C54();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          _os_log_impl(&_mh_execute_header, v89, v90, "Existing peers in account, but we don't have a peer ID. We are excluded.", v91, 2u);
        }

        v92 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
        v93.super.isa = sub_1002168C4().super.isa;

        v94.super.isa = sub_1002168C4().super.isa;

        LOBYTE(v109) = 0;
        v95 = [v92 initWithEgoPeerID:0 egoPeerMachineID:0 status:4 viablePeerCountsByModelID:v93.super.isa peerCountsByMachineID:v94.super.isa isExcluded:1 isLocked:v109];
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v101 = sub_100216774();
        sub_100002648(v101, qword_10029D160);
        v102 = sub_100216754();
        v103 = sub_100216C54();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v102, v103, "No existing peers in account", v104, 2u);
        }

        v105 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
        v93.super.isa = sub_1002168C4().super.isa;

        v94.super.isa = sub_1002168C4().super.isa;

        LOBYTE(v109) = 0;
        v95 = [v105 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:v93.super.isa peerCountsByMachineID:v94.super.isa isExcluded:0 isLocked:v109];
      }

      v106 = v95;

      v107 = *&v87[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
      *&v87[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus] = v106;
      v108 = v106;

      a1(v108, 0);
    }
  }
}

void sub_10011777C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);

  swift_errorRetain();
  v10 = sub_100216754();
  v11 = sub_100216C74();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v14 = a5;
    v15 = v22;
    *v12 = 136315394;
    *(v12 + 4) = sub_100005FB0(a2, a3, &v22);
    *(v12 + 12) = 2114;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "error calling %s: %{public}@", v12, 0x16u);
    sub_1000114D4(v13, &qword_10029D580, &unk_10021CCC0);

    sub_100006128(v15);
    a5 = v14;
  }

  sub_100019974(_swiftEmptyArrayStorage);
  v17 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
  sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  isa = sub_1002168C4().super.isa;
  v19 = sub_1002168C4().super.isa;

  LOBYTE(v20) = 0;
  v21 = [v17 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v19 isExcluded:0 isLocked:v20];

  a5(v21, a1);
}

void sub_100117A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, id a7, int a8, uint64_t a9, void (*a10)(id, uint64_t), uint64_t a11, uint64_t a12)
{
  v12 = a7;
  if (a2)
  {
    v84 = a2;
    v13 = sub_100216144();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v82 = v12;
    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    v15 = v13;
    v16 = sub_100216754();
    v17 = sub_100216C74();

    v85 = a10;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v89 = v19;
      *v18 = 136446210;
      v20 = v15;
      v21 = [v20 description];
      v22 = sub_100216974();
      v24 = v23;

      v25 = sub_100005FB0(v22, v24, &v89);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "trust status: Unable to load ego keys: %{public}s", v18, 0xCu);
      sub_100006128(v19);
    }

    if ([v15 code] == -25300)
    {
      v26 = [v15 domain];
      v27 = sub_100216974();
      v29 = v28;

      if (v27 == sub_100216974() && v29 == v30)
      {

LABEL_14:
        v35 = sub_100216754();
        v36 = sub_100216C54();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "trust status: Lost the ego key pair, returning 'excluded' in hopes of fixing up the identity", v37, 2u);
        }

        v38 = a3;
        swift_beginAccess();
        *(a3 + 16) = 1;
        swift_beginAccess();
        v39 = 0;
        *(a4 + 16) = 4;
        v40 = v82;
        goto LABEL_31;
      }

      v34 = sub_1002171A4();

      if (v34)
      {
        goto LABEL_14;
      }
    }

    if ([v15 code] == -25308)
    {
      v41 = [v15 domain];
      v42 = sub_100216974();
      v44 = v43;

      v40 = v82;
      if (v42 == sub_100216974() && v44 == v45)
      {

        v38 = a3;
LABEL_30:
        v84 = 0;
        v39 = 1;
        goto LABEL_31;
      }

      v55 = sub_1002171A4();

      v39 = 0;
      v38 = a3;
      if (v55)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v39 = 0;
      v40 = v82;
      v38 = a3;
    }

LABEL_31:
    if (v40)
    {
      v56 = [v40 machineID];
      sub_100216974();
      v40 = v57;
    }

    swift_beginAccess();
    v58 = *(a4 + 16);
    swift_beginAccess();
    v59 = *(v38 + 16);
    v60 = sub_100216964();
    if (v40)
    {
      v61 = sub_100216964();
    }

    else
    {
      v61 = 0;
    }

    v62 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    isa = sub_1002168C4().super.isa;
    v64 = sub_1002168C4().super.isa;
    LOBYTE(v81) = v39;
    v65 = [v62 initWithEgoPeerID:v60 egoPeerMachineID:v61 status:v58 viablePeerCountsByModelID:isa peerCountsByMachineID:v64 isExcluded:v59 isLocked:v81];

    v66 = v65;
    v67 = v84;
LABEL_41:
    v85(v66, v67);

    return;
  }

  if (a1)
  {
    if (a7)
    {
      v32 = [a7 machineID];
      sub_100216974();
      v12 = v33;
    }

    swift_beginAccess();
    v87 = *(a4 + 16);
    swift_beginAccess();
    v68 = *(a3 + 16);
    v69 = sub_100216964();
    v85 = a10;
    if (v12)
    {
      v70 = sub_100216964();
    }

    else
    {
      v70 = 0;
    }

    v71 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    v72 = sub_1002168C4().super.isa;
    v73 = sub_1002168C4().super.isa;
    LOBYTE(v81) = 0;
    v74 = [v71 initWithEgoPeerID:v69 egoPeerMachineID:v70 status:v87 viablePeerCountsByModelID:v72 peerCountsByMachineID:v73 isExcluded:v68 isLocked:v81];

    v75 = *(a12 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
    *(a12 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = v74;
    v65 = v74;

    v66 = v65;
    v67 = 0;
    goto LABEL_41;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v46 = sub_100216774();
  sub_100002648(v46, qword_10029D160);
  v47 = sub_100216754();
  v48 = sub_100216C54();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "trust status: No error but Ego Peer Keys are nil", v49, 2u);
  }

  if (!v12)
  {
    v53 = sub_100216964();
    goto LABEL_43;
  }

  v50 = [v12 machineID];
  sub_100216974();
  v52 = v51;

  v53 = sub_100216964();
  if (!v52)
  {
LABEL_43:
    v54 = 0;
    goto LABEL_44;
  }

  v54 = sub_100216964();

LABEL_44:
  v76 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
  sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
  v77 = sub_1002168C4().super.isa;
  v78 = sub_1002168C4().super.isa;
  LOBYTE(v81) = 0;
  v79 = [v76 initWithEgoPeerID:v53 egoPeerMachineID:v54 status:4 viablePeerCountsByModelID:v77 peerCountsByMachineID:v78 isExcluded:1 isLocked:v81];

  v80 = *(a12 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
  *(a12 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = v79;
  v88 = v79;

  a10(v88, 0);
}

uint64_t sub_1001183A8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C64();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  v10 = a1;
  swift_errorRetain();
  v11 = sub_100216754();

  if (os_log_type_enabled(v11, v8))
  {
    v21 = a4;
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136446466;
    [v10 egoStatus];
    v13 = TPPeerStatusToString();
    v14 = sub_100216974();
    v16 = v15;

    v17 = sub_100005FB0(v14, v16, &v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v23._countAndFlagsBits = sub_100216994();
      sub_100216A14(v23);

      v18 = 0x203A726F727265;
    }

    else
    {
      v18 = 0x73736563637573;
    }

    v19 = sub_100005FB0(v18, 0xE700000000000000, &v22);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v8, "trustStatus complete: %{public}s %{public}s", v12, 0x16u);
    swift_arrayDestroy();

    a4 = v21;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000013, 0x800000010023CDC0);
  return a4(v10, a2);
}

void sub_100118668(char *a1, void (*a2)(void), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v7 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216974();
    v11 = v10;

    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    strcpy(v19, "signing-key ");
    BYTE5(v19[1]) = 0;
    HIWORD(v19[1]) = -5120;
    v13 = a1;
    v21._countAndFlagsBits = v9;
    v21._object = v11;
    sub_100216A14(v21);

    sub_100198E8C(v19[0], v19[1], sub_1001AB228, v12, v9, v11);

    swift_bridgeObjectRelease_n();
  }

  v14 = [*&a1[v6] changeToken];
  if (v14)
  {

    v15 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
    if (v15)
    {
      v18 = v15;
      a2();
    }

    else
    {
      sub_1001169B4(a2, a3);
    }
  }

  else
  {
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a1;
    v17 = a1;

    sub_10016ECB4(0, sub_1001AB21C, v16);
  }
}

void sub_1001188B0(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a1)
  {
    v6 = a1;
    swift_errorRetain();
    if (qword_100297520 == -1)
    {
LABEL_3:
      v7 = sub_100216774();
      sub_100002648(v7, qword_10029D160);
      swift_errorRetain();
      v8 = sub_100216754();
      v9 = sub_100216C74();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        aBlock[0] = v11;
        *v10 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v12 = sub_100216994();
        v14 = sub_100005FB0(v12, v13, aBlock);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "Unable to fetch changes, trust status is unknown: %{public}s", v10, 0xCu);
        sub_100006128(v11);
      }

      else
      {
      }

      sub_100019974(_swiftEmptyArrayStorage);
      sub_100019974(_swiftEmptyArrayStorage);
      v16 = objc_allocWithZone(TrustedPeersHelperEgoPeerStatus);
      sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
      isa = sub_1002168C4().super.isa;

      v18 = sub_1002168C4().super.isa;

      LOBYTE(v25) = 0;
      v19 = [v16 initWithEgoPeerID:0 egoPeerMachineID:0 status:32 viablePeerCountsByModelID:isa peerCountsByMachineID:v18 isExcluded:0 isLocked:v25];

      (a2)(v19, v6);
      return;
    }

LABEL_14:
    swift_once();
    goto LABEL_3;
  }

  v15 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus];
  if (!v15)
  {
    v6 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a2;
    v21[4] = a3;
    a2 = swift_allocObject();
    *(a2 + 16) = sub_1001AB248;
    *(a2 + 24) = v21;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284638;
    v22 = _Block_copy(aBlock);
    v23 = a4;

    [v6 performBlockAndWait:v22];
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v26 = v15;
  (a2)();
}

uint64_t sub_100118CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = sub_1001AC498;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001AC4E0;
  *(v8 + 24) = v7;
  v13[4] = sub_1001ACCC0;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100285B78;
  v9 = _Block_copy(v13);

  v10 = v2;

  [v6 performBlockAndWait:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100118E90(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  if (a3)
  {
    v8 = sub_100216C74();
  }

  else
  {
    v8 = sub_100216C54();
  }

  v9 = v8;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v10 = sub_100216774();
  sub_100002648(v10, qword_10029D160);
  v11 = a1;
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v9))
  {
    v21 = a4;
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = v11;
    sub_10001148C(&qword_10029DB90, &qword_100226818);
    v15 = sub_1002169A4();
    v17 = sub_100005FB0(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v23._countAndFlagsBits = sub_100216994();
      sub_100216A14(v23);

      v18 = 0x203A726F727265;
    }

    else
    {
      v18 = 0x73736563637573;
    }

    v19 = sub_100005FB0(v18, 0xE700000000000000, &v22);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v9, "fetch trust state complete: %{public}s %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    a4 = v21;
  }

  else
  {
  }

  return a4(a1, a2, a3);
}

void sub_10011911C(NSObject *a1, void (*a2)(id, uint64_t, id))
{
  v4 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v5 = [*(&a1->isa + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  p_cache = (CKKSSOSSelfPeer + 16);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = v5;
  v8 = sub_100216974();
  v10 = v9;
  v11 = *(&a1->isa + v4);
  v12 = v7;
  v13 = [v11 egoPeerPermanentInfo];
  if (!v13)
  {

LABEL_13:
    if (p_cache[164] != -1)
    {
      swift_once();
    }

    v50 = sub_100216774();
    sub_100002648(v50, qword_10029D160);
    v51 = sub_100216754();
    v52 = sub_100216C54();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "No peer ID => no trusted peers", v53, 2u);
    }

    v203 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:0 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    a2(v203, _swiftEmptyArrayStorage, 0);

    return;
  }

  v14 = v13;
  v15 = sub_100216224();
  v17 = v16;

  v18 = [*(&a1->isa + v4) egoPeerPermanentInfoSig];
  if (!v18)
  {

    sub_100002BF0(v15, v17);

    p_cache = CKKSSOSSelfPeer.cache;
    goto LABEL_13;
  }

  v198 = v12;
  log = a1;
  v19 = v18;
  v20 = sub_100216224();
  v22 = v21;

  v23 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v15, v17);
  sub_100012558(v20, v22);
  v191 = v8;
  v24 = sub_100216964();

  v202 = v17;
  isa = sub_100216204().super.isa;
  v26 = sub_100216204().super.isa;
  v197 = v23;
  v27 = [objc_opt_self() permanentInfoWithPeerID:v24 data:isa sig:v26 keyFactory:v23];

  v195 = v20;
  v196 = v22;
  sub_100002BF0(v20, v22);

  sub_100002BF0(v15, v202);
  v28 = v15;
  if (v27)
  {
    v193 = a2;
    v29 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v30 = log;
    v31 = *(&log->isa + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v32 = [objc_msgSend(v27 "signingPubKey")];
    swift_unknownObjectRelease();
    v33 = sub_100216224();
    v35 = v34;

    v36 = sub_100216204().super.isa;
    sub_100002BF0(v33, v35);
    v205[0] = 0;
    v37 = [v31 hasPotentiallyTrustedPeerPreapprovingKey:v36 error:v205];

    v38 = v205[0];
    if (v205[0])
    {
      v39 = v205[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v40 = sub_100216774();
      sub_100002648(v40, qword_10029D160);
      v41 = v39;
      v42 = sub_100216754();
      v43 = sub_100216C74();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = v28;
        v46 = swift_slowAlloc();
        *v44 = 138543362;
        v47 = v41;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "fetchTrustState: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v44, 0xCu);
        sub_1000114D4(v46, &qword_10029D580, &unk_10021CCC0);
        v28 = v45;
      }

      v49 = v41;
      v193(0, 0, v38);

      sub_100002BF0(v195, v196);
      sub_100002BF0(v28, v202);
      return;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v60 = sub_100216774();
    sub_100002648(v60, qword_10029D160);
    v61 = sub_100216754();
    v62 = sub_100216C54();
    v188 = v37;
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v205[0] = v64;
      *v63 = 136446210;
      v65 = v37 == 0;
      if (v37)
      {
        v66 = 0x6F72707061657270;
      }

      else
      {
        v66 = 0xD000000000000013;
      }

      v67 = v29;
      if (v65)
      {
        v68 = 0x800000010023CF10;
      }

      else
      {
        v68 = 0xEB00000000646576;
      }

      v69 = v27;
      v70 = v28;
      v71 = sub_100005FB0(v66, v68, v205);
      v29 = v67;

      *(v63 + 4) = v71;
      v28 = v70;
      v27 = v69;
      v30 = log;
      _os_log_impl(&_mh_execute_header, v61, v62, "fetchTrustState: ego peer is %{public}s", v63, 0xCu);
      sub_100006128(v64);
    }

    v72 = *(&v30->isa + v29);
    v205[0] = 0;
    v73 = [v72 getStableInfoForPeerWithID:v198 error:v205];
    v74 = v205[0];
    if (v205[0])
    {
      v75 = v205[0];

      swift_willThrow();

      v76 = v75;
      v77 = sub_100216754();
      v78 = sub_100216C74();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v205[0] = v199;
        *v79 = 136315394;
        v81 = v28;
        v82 = v76;
        v83 = sub_100005FB0(v191, v10, v205);

        *(v79 + 4) = v83;
        v76 = v82;
        v28 = v81;
        *(v79 + 12) = 2114;
        v84 = v76;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 14) = v85;
        *v80 = v85;
        _os_log_impl(&_mh_execute_header, v77, v78, "fetchTrustState: error calling getStableInfoForPeer %s: %{public}@", v79, 0x16u);
        sub_1000114D4(v80, &qword_10029D580, &unk_10021CCC0);

        sub_100006128(v199);
      }

      else
      {
      }

      v100 = v76;
      v193(0, 0, v74);
      sub_100002BF0(v28, v202);
      sub_100002BF0(v195, v196);

LABEL_46:
      return;
    }

    v192 = v27;

    v86 = *(&v30->isa + v29);
    v205[0] = 0;
    v87 = [v86 statusOfPeerWithID:v198 error:v205];
    v88 = v205[0];
    if (v205[0])
    {
      v89 = v205[0];

      swift_willThrow();
      v90 = v89;
      v91 = sub_100216754();
      v92 = sub_100216C74();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = v73;
        v95 = v28;
        v96 = swift_slowAlloc();
        *v93 = 138543362;
        v97 = v90;
        v98 = _swift_stdlib_bridgeErrorToNSError();
        *(v93 + 4) = v98;
        *v96 = v98;
        _os_log_impl(&_mh_execute_header, v91, v92, "fetchTrustState error calling statusOfPeer: %{public}@", v93, 0xCu);
        sub_1000114D4(v96, &qword_10029D580, &unk_10021CCC0);
        v28 = v95;
        v73 = v94;
      }

      v99 = v90;
      v193(0, 0, v88);
      sub_100002BF0(v28, v202);
      sub_100002BF0(v195, v196);

      goto LABEL_46;
    }

    v101 = v87;
    v102 = sub_1001E4538();
    if (v73)
    {
      v103 = v29;
      v104 = [v73 osVersion];
      sub_100216974();
      v106 = v105;

      v29 = v103;
    }

    else
    {
      v106 = 0;
    }

    v107 = [v73 walrusSetting];
    v108 = [v73 webAccess];
    if (v106)
    {
      v109 = sub_100216964();
    }

    else
    {
      v109 = 0;
    }

    v110 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:v198 isPreapproved:v188 status:v101 memberChanges:0 unknownMachineIDs:v102 osVersion:v109 walrus:v107 webAccess:v108];

    v204[0] = _swiftEmptyArrayStorage;
    v111 = *(&v30->isa + v29);
    v205[0] = 0;
    v112 = v29;
    v113 = v111;
    v114 = [v113 peerWithID:v198 error:v205];

    if (v205[0])
    {
      v115 = v205[0];

      swift_willThrow();
      v116 = v115;
      v117 = sub_100216754();
      v118 = sub_100216C74();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = v73;
        v121 = v28;
        v122 = swift_slowAlloc();
        *v119 = 138543362;
        v123 = v116;
        v124 = _swift_stdlib_bridgeErrorToNSError();
        *(v119 + 4) = v124;
        *v122 = v124;
        _os_log_impl(&_mh_execute_header, v117, v118, "Error getting ego peer from model: %{public}@", v119, 0xCu);
        sub_1000114D4(v122, &qword_10029D580, &unk_10021CCC0);
        v28 = v121;
        v73 = v120;

        v116 = v117;
        v117 = v123;
      }

      goto LABEL_57;
    }

    if (!v114)
    {
LABEL_57:
      v125 = sub_100216754();
      v126 = sub_100216C54();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&_mh_execute_header, v125, v126, "No ego peer in model; no trusted peers", v127, 2u);
      }

      v128 = 0;
      goto LABEL_85;
    }

    v129 = v110;
    v130 = v28;
    v131 = v114;
    v132 = [v131 trustedPeerIDs];
    v133 = sub_100216BB4();

    v128 = v131;
    v134 = log;
    sub_100190AB8(v133, v134, v204, v128);

    v135 = [v128 stableInfo];
    if (v135)
    {
      v136 = v135;
      v137 = [v135 recoveryEncryptionPublicKey];
      if (v137)
      {
        v200 = v128;
        v138 = v136;
        v139 = v137;
        v187 = sub_100216224();
        v141 = v140;

        v186 = v138;
        v142 = [v138 recoverySigningPublicKey];
        if (!v142)
        {
          v128 = v200;

          v147 = v187;
LABEL_82:
          sub_100002BF0(v147, v141);

          goto LABEL_83;
        }

        v143 = v142;
        v185 = sub_100216224();
        v145 = v144;

        v146 = v141 >> 62;
        if ((v141 >> 62) > 1)
        {
          if (v146 != 2)
          {
            goto LABEL_81;
          }

          v148 = *(v187 + 16);
          v149 = *(v187 + 24);
        }

        else
        {
          if (!v146)
          {
            if ((v141 & 0xFF000000000000) == 0)
            {
              goto LABEL_81;
            }

LABEL_75:
            v150 = v145 >> 62;
            if ((v145 >> 62) <= 1)
            {
              v189 = v73;
              v184 = v145;
              if (!v150)
              {
                if ((v145 & 0xFF000000000000) == 0)
                {
                  goto LABEL_98;
                }

LABEL_90:
                v167 = [objc_allocWithZone(TPRecoveryKeyPair) initWithStableInfo:v186];
                v168 = *(&log->isa + v112);
                v169 = [v200 permanentInfo];
                v170 = [v200 stableInfo];
                v205[0] = 0;
                v171 = [v168 getViewsForPeer:v169 stableInfo:v170 error:v205];

                v172 = v205[0];
                v183 = v167;
                if (!v171)
                {
                  v174 = v205[0];
                  v175 = sub_100216154();

                  swift_willThrow();
                  swift_errorRetain();
                  v176 = sub_100216754();
                  v177 = sub_100216C74();

                  if (os_log_type_enabled(v176, v177))
                  {
                    v178 = swift_slowAlloc();
                    v179 = swift_slowAlloc();
                    v205[0] = v179;
                    *v178 = 136446210;
                    v204[1] = v175;
                    swift_errorRetain();
                    sub_10001148C(&unk_10029D560, qword_10021D450);
                    v180 = sub_100216994();
                    v182 = sub_100005FB0(v180, v181, v205);

                    *(v178 + 4) = v182;
                    _os_log_impl(&_mh_execute_header, v176, v177, "Unable to add RK as a trusted peer: %{public}s", v178, 0xCu);
                    sub_100006128(v179);

                    v128 = v200;
                    sub_100002BF0(v187, v141);

                    sub_100002BF0(v185, v184);
                  }

                  else
                  {

                    v128 = v200;
                    sub_100002BF0(v187, v141);

                    sub_100002BF0(v185, v184);
                  }

                  goto LABEL_99;
                }

                sub_100216BB4();
                v173 = v172;

                sub_100013E34(v167);

                sub_100216B04();
                if (*((v204[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100216B44();
                }

                sub_100216B64();

LABEL_98:
                v128 = v200;

                sub_100002BF0(v185, v184);
                sub_100002BF0(v187, v141);

LABEL_99:
                v28 = v130;
                v73 = v189;
                goto LABEL_84;
              }

              v151 = v185;
              v152 = v185 >> 32;
LABEL_89:
              if (v151 == v152)
              {
                goto LABEL_98;
              }

              goto LABEL_90;
            }

            if (v150 == 2)
            {
              v184 = v145;
              v189 = v73;
              v151 = *(v185 + 16);
              v152 = *(v185 + 24);
              goto LABEL_89;
            }

LABEL_81:

            sub_100002BF0(v185, v145);
            v147 = v187;
            v128 = v200;
            goto LABEL_82;
          }

          v148 = v187;
          v149 = v187 >> 32;
        }

        if (v148 == v149)
        {
          goto LABEL_81;
        }

        goto LABEL_75;
      }
    }

LABEL_83:
    v28 = v130;
LABEL_84:
    v110 = v129;
LABEL_85:
    v153 = v28;
    v154 = v110;
    v155 = sub_100216754();
    v156 = sub_100216C54();

    if (os_log_type_enabled(v155, v156))
    {
      v190 = v73;
      v157 = swift_slowAlloc();
      v201 = v128;
      v158 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v205[0] = v159;
      *v157 = 138543618;
      *(v157 + 4) = v154;
      *v158 = v154;
      *(v157 + 12) = 2082;
      swift_beginAccess();
      sub_10000200C(0, &qword_10029DB88, &off_100275050);
      v160 = v154;

      v161 = sub_100216B34();
      v163 = v162;

      v164 = sub_100005FB0(v161, v163, v205);

      *(v157 + 14) = v164;
      _os_log_impl(&_mh_execute_header, v155, v156, "Returning trust state: %{public}@ %{public}s", v157, 0x16u);
      sub_1000114D4(v158, &qword_10029D580, &unk_10021CCC0);
      v128 = v201;

      sub_100006128(v159);

      v73 = v190;
    }

    swift_beginAccess();
    v165 = v204[0];
    v166 = v154;

    v193(v154, v165, 0);

    sub_100002BF0(v153, v202);
    sub_100002BF0(v195, v196);

    swift_bridgeObjectRelease_n();
    goto LABEL_46;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029D160);
  v55 = sub_100216754();
  v56 = sub_100216C74();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "fetchTrustState failed to create TPPeerPermanentInfo", v57, 2u);
  }

  sub_1000561D0();
  v58 = swift_allocError();
  *v59 = xmmword_10021DA80;
  *(v59 + 16) = 13;
  a2(0, 0, v58);

  sub_100002BF0(v195, v22);

  sub_100002BF0(v15, v202);
}

void sub_10011A724(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v11 = a1;
  v82 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v12 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v13 = sub_100216964();
  v84 = 0;
  v14 = [v12 peerWithID:v13 error:&v84];

  v81 = a4;
  if (v84)
  {
    v80 = v11;
    v15 = v84;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);

    v17 = v15;
    v18 = sub_100216754();
    v19 = sub_100216C74();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v20 = 136315394;
      *(v20 + 4) = sub_100005FB0(a2, a3, &v84);
      *(v20 + 12) = 2082;
      v21 = v17;
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v22 = sub_100216994();
      v24 = sub_100005FB0(v22, v23, &v84);

      *(v20 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Error getting trusted peer %s from model: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v6 = 0;
    v11 = v80;
    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    v32 = *(v11 + v82);
    v33 = sub_100216964();
    v34 = [v32 custodianPeerWithID:v33];

    if (v34)
    {
      v35 = *(v11 + v82);
      v36 = [a5 permanentInfo];
      v37 = [a5 stableInfo];
      v84 = 0;
      v38 = [v35 getViewsForCRK:v34 donorPermanentInfo:v36 donorStableInfo:v37 error:&v84];

      v39 = v84;
      if (v38)
      {
        sub_100216BB4();
        v40 = v39;
      }

      else
      {
        v46 = v84;
        sub_100216154();

        swift_willThrow();

        v6 = 0;
      }

      sub_100012EC8();
      if (v6)
      {

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v47 = sub_100216774();
        sub_100002648(v47, qword_10029D160);
        swift_errorRetain();
        v48 = sub_100216754();
        v49 = sub_100216C74();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v84 = v51;
          *v50 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v52 = sub_100216994();
          v54 = sub_100005FB0(v52, v53, &v84);

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Unable to add CRK as a trusted peer: %{public}s", v50, 0xCu);
          sub_100006128(v51);
        }

        else
        {
        }
      }

      else
      {

        sub_100216B04();
        if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v41 = sub_100216774();
      sub_100002648(v41, qword_10029D160);

      v42 = sub_100216754();
      v43 = sub_100216C54();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v84 = v45;
        *v44 = 136446210;
        *(v44 + 4) = sub_100005FB0(a2, a3, &v84);
        _os_log_impl(&_mh_execute_header, v42, v43, "No peer for trusted ID %{public}s", v44, 0xCu);
        sub_100006128(v45);
      }
    }

    return;
  }

  v25 = *(v11 + v82);
  v26 = v14;
  v27 = [v26 permanentInfo];
  v28 = [v26 stableInfo];
  v84 = 0;
  v29 = [v25 getViewsForPeer:v27 stableInfo:v28 error:&v84];

  v30 = v84;
  if (v29)
  {
    sub_100216BB4();
    v31 = v30;
  }

  else
  {
    v55 = v84;
    sub_100216154();

    swift_willThrow();
  }

  v56 = [v26 permanentInfo];
  v57 = [v56 signingPubKey];

  v58 = [v57 spki];
  swift_unknownObjectRelease();
  v59 = sub_100216224();
  v78 = v60;
  v79 = v59;

  v61 = [v26 permanentInfo];
  v62 = [v61 encryptionPubKey];

  v63 = [v62 spki];
  swift_unknownObjectRelease();
  v64 = sub_100216224();
  v66 = v65;

  v83 = v26;
  v67 = [v26 stableInfo];
  v68 = [v67 secureElementIdentity];

  v69 = objc_allocWithZone(TrustedPeersHelperPeer);
  v70 = sub_100216964();
  isa = sub_100216204().super.isa;
  v72 = v64;
  v73 = v66;
  v74 = sub_100216204().super.isa;
  v75 = sub_100216B94().super.isa;

  [v69 initWithPeerID:v70 signingSPKI:isa encryptionSPKI:v74 secureElementIdentity:v68 viewList:v75];

  sub_100002BF0(v72, v73);
  sub_100002BF0(v79, v78);

  sub_100216B04();
  if (*((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v76 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_100216B44();
  }

  sub_100216B64();
}

uint64_t sub_10011B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v3;
  v9[4] = sub_1001AC2D0;
  v9[5] = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001AC328;
  *(v10 + 24) = v9;
  v15[4] = sub_1001ACCC0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100109050;
  v15[3] = &unk_100285A60;
  v11 = _Block_copy(v15);

  swift_unknownObjectRetain();
  v12 = v3;

  [v8 performBlockAndWait:v11];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011B2F8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v4 = sub_100216C74();
  }

  else
  {
    v4 = sub_100216C54();
  }

  v5 = v4;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v6 = sub_100216774();
  sub_100002648(v6, qword_10029D160);
  swift_errorRetain();
  v7 = sub_100216754();

  if (os_log_type_enabled(v7, v5))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v14._countAndFlagsBits = sub_100216994();
      sub_100216A14(v14);

      v10 = 0x203A726F727265;
    }

    else
    {
      v10 = 0x73736563637573;
    }

    v11 = sub_100005FB0(v10, 0xE700000000000000, &v13);

    *(v8 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v7, v5, "dump complete: %{public}s", v8, 0xCu);
    sub_100006128(v9);
  }

  return a2(a1);
}

void sub_10011B4FC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v136 - v15;
  v17 = xpc_fd_dup(a1);
  type metadata accessor for StreamingEncoderDict();
  swift_allocObject();
  v18 = sub_100106528(v17, 123, 0xE100000000000000, 125, 0xE100000000000000);
  v144 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v19 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v19)
  {
    v142 = v18;
    v20 = v19;
    v141 = sub_100216974();
    v22 = v21;
    v143 = a2;
    v23 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    *&v147 = 0;
    v24 = v23;
    v25 = [v24 peerWithID:v20 error:&v147];

    v140 = v16;
    if (v147)
    {
      v26 = v147;

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v27 = sub_100216774();
      sub_100002648(v27, qword_10029D160);
      v28 = v26;
      v29 = sub_100216754();
      v30 = sub_100216C74();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = v22;
        v33 = v13;
        v34 = swift_slowAlloc();
        *v31 = 138543362;
        v35 = v28;
        v139 = v17;
        v36 = a4;
        v37 = a3;
        v38 = v35;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 4) = v39;
        *v34 = v39;
        _os_log_impl(&_mh_execute_header, v29, v30, "Error getting ego peer from model: %{public}@", v31, 0xCu);
        sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);
        v13 = v33;
        v22 = v32;

        v28 = v29;
        v29 = v38;
        a3 = v37;
        a4 = v36;
        v17 = v139;
      }

      a2 = v143;
    }

    else
    {
      if (v25)
      {
        v45 = v25;

        v46 = objc_autoreleasePoolPush();
        sub_100116608(v45, &v149);
        objc_autoreleasePoolPop(v46);
        v47 = v149;
        *(&v148 + 1) = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
        *&v147 = v47;
        v18 = v142;
        sub_1001078BC(1718379891, 0xE400000000000000, &v147);
        a2 = v143;
        v141 = v13;

        goto LABEL_13;
      }

      a2 = v143;
    }

    sub_10001148C(&qword_10029DB48, &qword_1002267D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = 0x444972656570;
    v41 = inited + 32;
    v42 = v141;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v42;
    *(inited + 56) = v22;
    v43 = sub_100019860(inited);
    swift_setDeallocating();
    sub_1000114D4(v41, &qword_10029DB50, &qword_1002267E0);
    *(&v148 + 1) = sub_10001148C(&qword_10029DB58, &unk_1002267E8);
    *&v147 = v43;
    v18 = v142;
    sub_1001078BC(1718379891, 0xE400000000000000, &v147);
    v141 = v13;
  }

  else
  {
    v44 = sub_100019254(_swiftEmptyArrayStorage);
    *(&v148 + 1) = sub_10001148C(&unk_10029DB10, &unk_1002267B0);
    *&v147 = v44;
    sub_1001078BC(1718379891, 0xE400000000000000, &v147);
    v141 = v13;
    v140 = v16;
  }

LABEL_13:
  sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
  v48 = v144;
  v49 = [*(a2 + v144) egoSponsoredBeneficiaryIDs];
  if (!v49)
  {
    goto LABEL_18;
  }

  *&v147 = 0;
  v50 = v49;
  sub_100216BA4();

  v51 = v147;
  if (!v147)
  {
    goto LABEL_18;
  }

  v52 = *(v147 + 16);
  if (!v52)
  {

    v53 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  v53 = sub_1001830AC(*(v147 + 16), 0);
  v54 = sub_10018FF74(&v147, v53 + 4, v52, v51);
  sub_10000D778();
  if (v54 == v52)
  {
LABEL_20:
    v150 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    *&v149 = v53;
    sub_1001078BC(0xD00000000000001ALL, 0x800000010023D090, &v149);
    v55 = &v149;
    goto LABEL_21;
  }

  __break(1u);
LABEL_18:
  *(&v148 + 1) = sub_10001148C(&qword_10029D148, &qword_100225F40);
  *&v147 = _swiftEmptyArrayStorage;
  sub_1001078BC(0xD00000000000001ALL, 0x800000010023D090, &v147);
  v55 = &v147;
LABEL_21:
  sub_1000114D4(v55, &unk_100297770, &unk_10021DF90);
  v56 = [*(a2 + v48) distrustedEgoSponsoredBeneficiaryIDs];
  if (!v56)
  {
    goto LABEL_26;
  }

  *&v147 = 0;
  v57 = v56;
  sub_100216BA4();

  v58 = v147;
  if (!v147)
  {
    goto LABEL_26;
  }

  v59 = *(v147 + 16);
  if (!v59)
  {

    v60 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v60 = sub_1001830AC(*(v147 + 16), 0);
  v61 = sub_10018FF74(&v147, v60 + 4, v59, v58);
  sub_10000D778();
  if (v61 == v59)
  {
LABEL_28:
    v150 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
    *&v149 = v60;
    sub_1001078BC(0xD000000000000024, 0x800000010023D0B0, &v149);
    v62 = a2;
    v63 = &v149;
    goto LABEL_29;
  }

  __break(1u);
LABEL_26:
  *(&v148 + 1) = sub_10001148C(&qword_10029D148, &qword_100225F40);
  *&v147 = _swiftEmptyArrayStorage;
  sub_1001078BC(0xD000000000000024, 0x800000010023D0B0, &v147);
  v62 = a2;
  v63 = &v147;
LABEL_29:
  v64 = sub_1000114D4(v63, &unk_100297770, &unk_10021DF90);
  __chkstk_darwin(v64, v65);
  *(&v136 - 2) = v62;
  v66 = sub_100107A88(0x7372656570, 0xE500000000000000, sub_1001AC334);
  __chkstk_darwin(v66, v67);
  *(&v136 - 2) = v62;
  sub_100107A88(0x7372656863756F76, 0xE800000000000000, sub_1001AC350);
  v68 = objc_autoreleasePoolPush();
  sub_10011D790(v18, v62, &v147);
  objc_autoreleasePoolPop(v68);
  v69 = objc_autoreleasePoolPush();
  sub_10011DB24(v62, v18, &v147);
  objc_autoreleasePoolPop(v69);
  v70 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v143 = v62;
  v71 = [*(v62 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) recoverySigningPublicKey];
  if (v71)
  {
    v72 = v71;
    v73 = sub_100216224();
    v75 = v74;

    v76 = &type metadata for Data;
  }

  else
  {
    v73 = 0;
    v75 = 0;
    v76 = 0;
    *&v148 = 0;
  }

  *&v147 = v73;
  *(&v147 + 1) = v75;
  *(&v148 + 1) = v76;
  sub_1001078BC(0xD00000000000001DLL, 0x800000010023D120, &v147);
  sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
  v77 = [*(v143 + v70) recoveryEncryptionPublicKey];
  if (v77)
  {
    v78 = v77;
    v79 = sub_100216224();
    v81 = v80;

    v82 = &type metadata for Data;
  }

  else
  {
    v79 = 0;
    v81 = 0;
    v82 = 0;
    *&v148 = 0;
  }

  *&v147 = v79;
  *(&v147 + 1) = v81;
  *(&v148 + 1) = v82;
  sub_1001078BC(0xD000000000000020, 0x800000010023D140, &v147);
  v142 = v18;
  sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
  v83 = *(v143 + v70);
  *&v149 = 0;
  v84 = [v83 allRegisteredPolicyVersionsWithError:&v149];
  v85 = v149;
  v137 = a3;
  v139 = v17;
  v136 = a4;
  if (!v84)
  {
    v105 = v149;
    v106 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v107 = sub_100216774();
    sub_100002648(v107, qword_10029D160);
    swift_errorRetain();
    v108 = sub_100216754();
    v109 = sub_100216C74();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138543362;
      swift_errorRetain();
      v112 = _swift_stdlib_bridgeErrorToNSError();
      *(v110 + 4) = v112;
      *v111 = v112;
      _os_log_impl(&_mh_execute_header, v108, v109, "Error getting registered policy versions: %{public}@", v110, 0xCu);
      sub_1000114D4(v111, &qword_10029D580, &unk_10021CCC0);
    }

    *&v149 = 0;
    *(&v149 + 1) = 0xE000000000000000;
    v146 = v106;
    sub_10001148C(&unk_10029D560, qword_10021D450);
    sub_100217094();
    *(&v148 + 1) = &type metadata for String;
    v147 = v149;
    sub_1001078BC(0xD00000000000001DLL, 0x800000010023D170, &v147);

    goto LABEL_59;
  }

  v86 = v84;
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
  v87 = sub_100216BB4();
  v88 = v85;

  *&v149 = sub_1001874D4(v87);
  sub_10018D25C(sub_1001900CC, 0);

  v89 = v149;
  if ((v149 & 0x8000000000000000) != 0 || (v149 & 0x4000000000000000) != 0)
  {
    v90 = sub_1002170F4();
    if (v90)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v90 = *(v149 + 16);
    if (v90)
    {
LABEL_41:
      v146 = _swiftEmptyArrayStorage;
      sub_1001877A4(0, v90 & ~(v90 >> 63), 0);
      if (v90 < 0)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v91 = v90;
      v92 = 0;
      v93 = v146;
      v94 = v89;
      v138 = v89 & 0xC000000000000001;
      do
      {
        if (v138)
        {
          v95 = sub_100217014();
        }

        else
        {
          v95 = *(v94 + 8 * v92 + 32);
        }

        v96 = v95;
        v145 = [v95 versionNumber];
        *&v149 = sub_100217174();
        *(&v149 + 1) = v97;
        v151._countAndFlagsBits = 8236;
        v151._object = 0xE200000000000000;
        sub_100216A14(v151);
        v98 = [v96 policyHash];
        v99 = sub_100216974();
        v101 = v100;

        v152._countAndFlagsBits = v99;
        v152._object = v101;
        sub_100216A14(v152);

        v102 = v149;
        v146 = v93;
        v104 = v93[2];
        v103 = v93[3];
        if (v104 >= v103 >> 1)
        {
          sub_1001877A4((v103 > 1), v104 + 1, 1);
          v93 = v146;
        }

        ++v92;
        v93[2] = v104 + 1;
        *&v93[2 * v104 + 4] = v102;
        v94 = v89;
      }

      while (v91 != v92);

      goto LABEL_53;
    }
  }

  v93 = _swiftEmptyArrayStorage;
LABEL_53:
  *(&v148 + 1) = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
  *&v147 = v93;
  sub_1001078BC(0xD000000000000018, 0x800000010023D1B0, &v147);
LABEL_59:
  sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
  v113 = [*(v143 + v144) accountSettings];
  if (v113)
  {
    v114 = v113;
    v115 = sub_100216224();
    v117 = v116;

    v118 = sub_1001A1654(v115, v117);
    if (v118)
    {
      v126 = sub_1001A1450(v118);

      *(&v148 + 1) = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
      *&v147 = v126;
      sub_1001078BC(0x53746E756F636361, 0xEF73676E69747465, &v147);
      sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
      v127 = [*(v143 + v144) accountSettingsDate];
      if (v127)
      {
        v128 = v127;
        sub_100216344();

        v129 = 0;
      }

      else
      {
        v129 = 1;
      }

      v130 = sub_100216384();
      v131 = *(v130 - 8);
      v132 = v141;
      (*(v131 + 56))(v141, v129, 1, v130);
      v133 = v132;
      v134 = v140;
      sub_1001AC3B4(v133, v140);
      if ((*(v131 + 48))(v134, 1, v130) == 1)
      {
        sub_1000114D4(v134, &qword_10029D778, &qword_1002265C8);
        v147 = 0u;
        v148 = 0u;
      }

      else
      {
        *(&v148 + 1) = v130;
        v135 = sub_1001AC424(&v147);
        (*(v131 + 32))(v135, v134, v130);
      }

      sub_1001078BC(0xD000000000000013, 0x800000010023D190, &v147);
      sub_100002BF0(v115, v117);
      sub_1000114D4(&v147, &unk_100297770, &unk_10021DF90);
    }

    else
    {
      sub_100002BF0(v115, v117);
    }
  }

  sub_100106AA8();
  *&v147 = &off_10027E9E0;
  sub_10001148C(&qword_10029DB20, &qword_1002267C0);
  sub_1001AC36C(&qword_10029DB28, &qword_10029DB20, &qword_1002267C0);
  v119 = sub_1002167C4();
  if (v120)
  {
    v121 = v119;
    LODWORD(v149) = v119;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    v122 = swift_allocError();
    *v123 = v121;

    v124 = v137;
    v125 = v139;
    swift_errorRetain();
    v124(v122);
  }

  else
  {
    v137(0);

    v125 = v139;
  }

  sub_10011CCDC(v125);
}

void sub_10011CCDC(int a1)
{
  v2 = sub_1002167B4();
  if ((v2 & 0x100000000) != 0)
  {
    LODWORD(v17) = v2;
    v6 = v2;
    sub_100107CE8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v7 = v6;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_10029D160);
    swift_errorRetain();
    v9 = sub_100216754();
    v10 = sub_100216C74();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 67109378;
      *(v11 + 4) = a1;
      *(v11 + 8) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v13 = sub_100216994();
      v15 = sub_100005FB0(v13, v14, &v17);

      *(v11 + 10) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "dump failed to close XPC FD (%d): %{public}s", v11, 0x12u);
      sub_100006128(v12);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v3 = sub_100216774();
    sub_100002648(v3, qword_10029D160);
    oslog = sub_100216754();
    v4 = sub_100216C64();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = a1;
      _os_log_impl(&_mh_execute_header, oslog, v4, "dump closed XPC FD (%d)", v5, 8u);
    }
  }
}

id sub_10011CFB4(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v5 = swift_allocObject();
  v5[2] = a2;
  v5[3] = a1;
  aBlock[4] = sub_1001AC490;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ACE38;
  aBlock[3] = &unk_100285AD8;
  v6 = _Block_copy(aBlock);
  v7 = v4;
  v8 = a2;

  aBlock[0] = 0;
  LODWORD(a1) = [v7 enumeratePeersUsingBlock:v6 error:aBlock];
  _Block_release(v6);

  if (a1)
  {
    return aBlock[0];
  }

  v10 = aBlock[0];
  sub_100216154();

  return swift_willThrow();
}

uint64_t sub_10011D128(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 peerID];
  v6 = sub_100216974();
  v8 = v7;

  v9 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_100216974();
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    v15 = sub_1002171A4();

    if (v15)
    {
      return result;
    }

LABEL_9:
    v17 = objc_autoreleasePoolPush();
    sub_100116608(a1, &v19);
    objc_autoreleasePoolPop(v17);
    v18 = v19;
    v20[3] = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
    v20[0] = v18;
    sub_100107794(v20);
    return sub_100006128(v20);
  }
}

id sub_10011D3E0(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  aBlock[4] = sub_1001AC488;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001ACE38;
  aBlock[3] = &unk_100285A88;
  v3 = _Block_copy(aBlock);
  v4 = v2;

  aBlock[0] = 0;
  v5 = [v4 enumerateVouchersUsingBlock:v3 error:aBlock];
  _Block_release(v3);

  if (v5)
  {
    return aBlock[0];
  }

  v7 = aBlock[0];
  sub_100216154();

  return swift_willThrow();
}

uint64_t sub_10011D534(void *a1)
{
  v1 = [a1 dictionaryRepresentation];
  v2 = sub_1002168D4();

  v4[3] = sub_10001148C(&qword_10029DB38, &qword_1002267C8);
  v4[0] = v2;
  sub_100107794(v4);
  return sub_100006128(v4);
}

void sub_10011D71C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10011D790(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) allCustodianRecoveryKeys];
  sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
  v7 = sub_100216B24();

  if (v7 >> 62)
  {
    v8 = sub_1002170F4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = a2;
  v28 = v3;
  if (v8)
  {
    v26[0] = _swiftEmptyArrayStorage;
    result = sub_1001877C4(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = a3;
    v10 = 0;
    v11 = v26[0];
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = sub_100217014();
      }

      else
      {
        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 dictionaryRepresentation];
      v15 = sub_1002168D4();

      v26[0] = v11;
      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        sub_1001877C4((v16 > 1), v17 + 1, 1);
        v11 = v26[0];
      }

      ++v10;
      v11[2] = v17 + 1;
      v11[v17 + 4] = v15;
    }

    while (v8 != v10);

    a3 = v24;
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v18 = sub_10001148C(&qword_10029DB70, &qword_100226800);
  v27 = v18;
  v26[0] = v11;
  v19 = v28;
  sub_1001078BC(0xD000000000000017, 0x800000010023D2D0, v26);
  result = sub_1000114D4(v26, &unk_100297770, &unk_10021DF90);
  if (v19)
  {
    *a3 = v19;
  }

  else
  {
    v20 = [*(v25 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) bottles];
    if (v20 && (v21 = v20, v26[0] = 0, type metadata accessor for BottleMO(), sub_1001A13C4(&qword_10029D9F0, type metadata accessor for BottleMO), sub_100216BA4(), v21, v26[0]))
    {
      sub_1001082E4(v26[0]);
      v23 = v22;

      v27 = v18;
      v26[0] = v23;
    }

    else
    {
      v27 = sub_10001148C(&qword_10029D148, &qword_100225F40);
      v26[0] = _swiftEmptyArrayStorage;
    }

    sub_1001078BC(0x73656C74746F62, 0xE700000000000000, v26);
    return sub_1000114D4(v26, &unk_100297770, &unk_10021DF90);
  }

  return result;
}

uint64_t sub_10011DB24(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v69 - v14;
  v74 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v16 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v17 = &_swiftEmptySetSingleton;
  if (v16)
  {
    v18 = v16;
    *&v75 = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v75)
    {
      v17 = v75;
    }
  }

  sub_100108644(v17);

  v19 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v79 = [v19 initWithEntries:isa];

  v73 = a1;
  v21 = v74;
  v22 = [*(a1 + v74) idmsTrustedDevicesVersion];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100216974();
    v26 = v25;

    v27 = &type metadata for String;
  }

  else
  {
    v24 = 0;
    v26 = 0;
    v27 = 0;
    *&v76 = 0;
  }

  *&v75 = v24;
  *(&v75 + 1) = v26;
  *(&v76 + 1) = v27;
  sub_1001078BC(0xD000000000000019, 0x800000010023D1D0, &v75);
  if (v3)
  {

    result = sub_1000114D4(&v75, &unk_100297770, &unk_10021DF90);
    *a3 = v3;
    return result;
  }

  v72 = a2;
  sub_1000114D4(&v75, &unk_100297770, &unk_10021DF90);
  v28 = [*(v73 + v21) idmsTrustedDeviceListFetchDate];
  if (v28)
  {
    v29 = v28;
    sub_100216344();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_100216384();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v12, v30, 1, v31);
  sub_1001AC3B4(v12, v15);
  if ((*(v32 + 48))(v15, 1, v31) == 1)
  {
    sub_1000114D4(v15, &qword_10029D778, &qword_1002265C8);
    v75 = 0u;
    v76 = 0u;
  }

  else
  {
    *(&v76 + 1) = v31;
    v33 = sub_1001AC424(&v75);
    (*(v32 + 32))(v33, v15, v31);
  }

  sub_1001078BC(0xD00000000000001ELL, 0x800000010023D1F0, &v75);
  sub_1000114D4(&v75, &unk_100297770, &unk_10021DF90);
  v35 = [v79 machineIDsInStatus:1];
  v36 = sub_100216BB4();

  v37 = *(v36 + 16);
  v71 = a3;
  if (v37)
  {
    v38 = sub_1001830AC(v37, 0);
    v39 = sub_10018FF74(&v75, v38 + 4, v37, v36);

    sub_10000D778();
    if (v39 != v37)
    {
      __break(1u);
      goto LABEL_41;
    }

    v21 = v74;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  *&v75 = v38;
  sub_1001EF23C(&v75);

  v40 = v75;
  v41 = sub_10001148C(&qword_10029DB40, &qword_1002267D0);
  v78 = v41;
  v77[0] = v40;
  sub_1001078BC(0xD000000000000011, 0x800000010023D210, v77);
  sub_1000114D4(v77, &unk_100297770, &unk_10021DF90);
  v42 = [v79 machineIDsInStatus:2];
  v43 = sub_100216BB4();

  v44 = *(v43 + 16);
  v70 = v41;
  if (v44)
  {
    v45 = sub_1001830AC(v44, 0);
    v46 = sub_10018FF74(&v75, v45 + 4, v44, v43);

    sub_10000D778();
    if (v46 == v44)
    {
      v21 = v74;
      v41 = v70;
      goto LABEL_24;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_24:
  *&v75 = v45;
  sub_1001EF23C(&v75);

  v78 = v41;
  v77[0] = v75;
  sub_1001078BC(0xD000000000000014, 0x800000010023D230, v77);
  sub_1000114D4(v77, &unk_100297770, &unk_10021DF90);
  v47 = [v79 machineIDsInStatus:3];
  v48 = sub_100216BB4();

  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = sub_1001830AC(*(v48 + 16), 0);
    v51 = sub_10018FF74(&v75, v50 + 4, v49, v48);

    sub_10000D778();
    if (v51 == v49)
    {
      v21 = v74;
      v41 = v70;
      goto LABEL_28;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_28:
  *&v75 = v50;
  sub_1001EF23C(&v75);

  v78 = v41;
  v77[0] = v75;
  sub_1001078BC(0xD000000000000011, 0x800000010023D250, v77);
  sub_1000114D4(v77, &unk_100297770, &unk_10021DF90);
  v52 = [v79 machineIDsInStatus:4];
  v53 = sub_100216BB4();

  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = sub_1001830AC(*(v53 + 16), 0);
    v56 = sub_10018FF74(&v75, v55 + 4, v54, v53);

    sub_10000D778();
    if (v56 == v54)
    {
      v21 = v74;
      v41 = v70;
      goto LABEL_32;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_32:
  *&v75 = v55;
  sub_1001EF23C(&v75);

  v78 = v41;
  v77[0] = v75;
  sub_1001078BC(0xD000000000000017, 0x800000010023D270, v77);
  sub_1000114D4(v77, &unk_100297770, &unk_10021DF90);
  v57 = [v79 machineIDsInStatus:5];
  v58 = sub_100216BB4();

  v59 = *(v58 + 16);
  if (!v59)
  {
    v60 = _swiftEmptyArrayStorage;
    v62 = v73;
    goto LABEL_36;
  }

  v60 = sub_1001830AC(*(v58 + 16), 0);
  v61 = sub_10018FF74(&v75, v60 + 4, v59, v58);

  sub_10000D778();
  if (v61 != v59)
  {
LABEL_44:
    __break(1u);

    __break(1u);
    return result;
  }

  v62 = v73;
  v21 = v74;
  v41 = v70;
LABEL_36:
  *&v75 = v60;
  sub_1001EF23C(&v75);

  v78 = v41;
  v77[0] = v75;
  sub_1001078BC(0xD000000000000018, 0x800000010023D290, v77);
  sub_1000114D4(v77, &unk_100297770, &unk_10021DF90);
  v63 = [*(v62 + v21) honorIDMSListChanges];
  if (v63)
  {
    v64 = v63;
    v65 = sub_100216974();
    v67 = v66;

    v68 = &type metadata for String;
  }

  else
  {
    v65 = 0;
    v67 = 0;
    v68 = 0;
    *&v76 = 0;
  }

  *&v75 = v65;
  *(&v75 + 1) = v67;
  *(&v76 + 1) = v68;
  sub_1001078BC(0xD000000000000014, 0x800000010023D2B0, &v75);

  return sub_1000114D4(&v75, &unk_100297770, &unk_10021DF90);
}

uint64_t sub_10011E658(void (*a1)(uint64_t, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v4 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) honorIDMSListChanges];
  if (v4)
  {
    v5 = v4;
    v6 = sub_100216974();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  a1(v6, v8, 0);
}

uint64_t sub_10011E6F8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = sub_1001AC2BC;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001AC2C4;
  *(v8 + 24) = v7;
  v13[4] = sub_1001ACCC0;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_1002859C0;
  v9 = _Block_copy(v13);

  v10 = v2;

  [v6 performBlockAndWait:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011E8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16._countAndFlagsBits = sub_100216994();
      sub_100216A14(v16);

      v12 = 0x203A726F727265;
    }

    else
    {
      v12 = 0x73736563637573;
    }

    v13 = sub_100005FB0(v12, 0xE700000000000000, &v15);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v7, "trustedDeviceNamesByPeerID complete: %{public}s", v10, 0xCu);
    sub_100006128(v11);
  }

  return a3(a1, a2);
}

void sub_10011EAB8(uint64_t a1, void (*a2)(void *, id))
{
  v4 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v7 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v81 = 0;
    v8 = v7;
    v9 = [v8 peerWithID:v5 error:&v81];

    if (v81)
    {
      v10 = v81;

      swift_willThrow();
LABEL_4:
      swift_errorRetain();
      a2(0, v10);

LABEL_5:

      return;
    }

    if (!v9)
    {
      if (qword_100297520 != -1)
      {
LABEL_55:
        swift_once();
      }

      v25 = sub_100216774();
      sub_100002648(v25, qword_10029D160);
      v26 = sub_100216C74();
      v27 = sub_100216754();
      if (os_log_type_enabled(v27, v26))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v27, v26, "self peerID present but egoPeer not found", v28, 2u);
      }

      sub_1000561D0();
      v29 = swift_allocError();
      *v30 = xmmword_10021DA90;
      *(v30 + 16) = 13;
      a2(0, v29);
      goto LABEL_5;
    }

    v79 = a1;
    v13 = sub_100019860(_swiftEmptyArrayStorage);
    if (qword_100297520 != -1)
    {
      goto LABEL_53;
    }

    while (1)
    {
      v14 = sub_100216774();
      sub_100002648(v14, qword_10029D160);
      v15 = sub_100216C54();
      v16 = v9;
      v17 = sub_100216754();

      if (os_log_type_enabled(v17, v15))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v16;
        *v19 = v9;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v17, v15, "egoPeer: %@", v18, 0xCu);
        sub_1000114D4(v19, &qword_10029D580, &unk_10021CCC0);
      }

      v21 = [v16 dynamicInfo];
      v76 = a2;
      v75 = v16;
      if (v21)
      {
        v22 = v21;
        v23 = [v21 includedPeerIDs];

        v24 = sub_100216BB4();
      }

      else
      {
        v24 = &_swiftEmptySetSingleton;
      }

      v9 = v13;
      v31 = 0;
      a2 = (v24 + 56);
      v32 = 1 << v24[32];
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v24 + 7);
      v35 = (v32 + 63) >> 6;
      v77 = v6;
      v78 = v24;
      if (v34)
      {
        break;
      }

LABEL_24:
      while (1)
      {
        v37 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v37 >= v35)
        {

          v76(v9, 0);

          return;
        }

        v34 = *(a2 + v37);
        ++v31;
        if (v34)
        {
          v36 = v9;
          v31 = v37;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_53:
      swift_once();
    }

    while (1)
    {
      v36 = v9;
LABEL_28:
      v38 = (*(v24 + 6) + ((v31 << 10) | (16 * __clz(__rbit64(v34)))));
      v39 = *v38;
      v13 = v38[1];

      v80 = objc_autoreleasePoolPush();
      v40 = *(v79 + v6);
      v41 = sub_100216964();
      v81 = 0;
      v42 = [v40 peerWithID:v41 error:&v81];

      if (v81)
      {
        v10 = v81;

        swift_willThrow();
        objc_autoreleasePoolPop(v80);

        a2 = v76;
        goto LABEL_4;
      }

      if (!v42 || (v43 = [v42 stableInfo]) == 0 || (v44 = v43, v45 = objc_msgSend(v43, "deviceName"), v44, !v45))
      {
        v62 = v39;
        v9 = v36;
        v63 = sub_100015A28(v62, v13);
        v65 = v64;

        if (v65)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v36;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100186F40();
            v9 = v81;
          }

          v67 = *(v9[6] + 16 * v63 + 8);

          v68 = *(v9[7] + 16 * v63 + 8);

          sub_1001853F4(v63, v9);
        }

        goto LABEL_43;
      }

      v73 = sub_100216974();
      v74 = v46;

      v47 = v36;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v36;
      v50 = sub_100015A28(v39, v13);
      v51 = v47[2];
      v52 = (v49 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v47[3] >= v53)
      {
        if (v48)
        {
          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v71 = v49;
          sub_100186F40();
          if ((v71 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        v72 = v49;
        sub_100184050(v53, v48);
        v54 = sub_100015A28(v39, v13);
        if ((v72 & 1) != (v55 & 1))
        {
          sub_1002171C4();
          __break(1u);
          return;
        }

        v50 = v54;
        if ((v72 & 1) == 0)
        {
LABEL_36:
          v56 = v81;
          *(v81 + (v50 >> 6) + 8) |= 1 << v50;
          v57 = (v56[6] + 16 * v50);
          *v57 = v39;
          v57[1] = v13;
          v9 = v56;
          v58 = (v56[7] + 16 * v50);
          *v58 = v73;
          v58[1] = v74;

          v59 = v9[2];
          v60 = __OFADD__(v59, 1);
          v61 = v59 + 1;
          if (v60)
          {
            __break(1u);
          }

          v9[2] = v61;
          goto LABEL_43;
        }
      }

      v9 = v81;
      v69 = (*(v81 + 7) + 16 * v50);
      v70 = v69[1];
      *v69 = v73;
      v69[1] = v74;

LABEL_43:
      v6 = v77;
      v24 = v78;
      v34 &= v34 - 1;
      objc_autoreleasePoolPop(v80);
      if (!v34)
      {
        goto LABEL_24;
      }
    }
  }

  sub_1000561D0();
  v11 = swift_allocError();
  *v12 = xmmword_10021DA90;
  *(v12 + 16) = 13;
  a2(0, v11);
}

uint64_t sub_10011F2A0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v17 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v19._countAndFlagsBits = sub_100216994();
      sub_100216A14(v19);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v15 = sub_100005FB0(v13, 0xE700000000000000, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v10, v8, "reset complete %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v17;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_13:
      [a2 sendMetricWithResult:1 error:0];
      goto LABEL_14;
    }
  }

  swift_errorRetain();
  v14 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v14];

LABEL_14:
  sub_10010EEEC(0xD0000000000000BBLL, 0x800000010023CD00);
  return a4(a1);
}

uint64_t sub_10011F534(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, int a8, char *a9, uint64_t a10, uint64_t a11)
{
  v34 = a8;
  v35 = a10;
  v36 = a11;
  v18 = type metadata accessor for ResetRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10019131C(a1);
  v38 = v23 & 1;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = v34;
  sub_1001A13C4(&qword_100298CE0, type metadata accessor for ResetRequest);
  sub_100216654();
  v24 = *&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v25 = *&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&a9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v24);
  v26 = swift_allocObject();
  v27 = v35;
  v28 = v36;
  v26[2] = a9;
  v26[3] = v27;
  v26[4] = v28;
  v29 = *(v25 + 16);
  v30 = *(v29 + 8);
  v31 = a9;

  v30(v22, sub_1001AB16C, v26, v24, v29);

  return sub_1001AC1E4(v22, type metadata accessor for ResetRequest);
}

uint64_t sub_10011F728(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, unsigned __int8 a10)
{
  v31 = a6;
  v34 = a8;
  v35 = a10;
  v32 = a9;
  v16 = type metadata accessor for AccountInfo(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = a2;
  *(a1 + 8) = a3 & 1;
  if (a5)
  {
    v22 = a4;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (a5)
  {
    v24 = a5;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25 = *(a1 + 24);

  *(a1 + 16) = v22;
  *(a1 + 24) = v24;
  if (a7)
  {
    v26 = v31;
  }

  else
  {
    v26 = 0;
  }

  if (a7)
  {
    v23 = a7;
  }

  v27 = *(a1 + 40);

  *(a1 + 32) = v26;
  *(a1 + 40) = v23;
  *(a1 + 48) = v34;
  v33 = v32;
  sub_1001A13C4(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216654();
  v28 = *(type metadata accessor for ResetRequest(0) + 40);
  sub_1000114D4(a1 + v28, &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v21, a1 + v28, type metadata accessor for AccountInfo);
  result = (*(v17 + 56))(a1 + v28, 0, 1, v16);
  *(a1 + 49) = v35;
  return result;
}

uint64_t sub_10011F958(uint64_t a1, char *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v41 = a3;
  v42 = a4;
  v6 = type metadata accessor for ResetResponse(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6 - 8, v9);
  v11 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v40 - v13;
  v15 = sub_10001148C(&qword_100298510, &unk_10021DF80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = (&v40 - v18);
  sub_100019C6C(a1, &v40 - v18, &qword_100298510, &unk_10021DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v41;
    v21 = *v19;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    swift_errorRetain();
    v23 = sub_100216754();
    v24 = sub_100216C74();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      aBlock[6] = v21;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v27 = sub_100216994();
      v29 = sub_100005FB0(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "reset failed: %{public}s", v25, 0xCu);
      sub_100006128(v26);
    }

    swift_errorRetain();
    v20(v21);
  }

  else
  {
    sub_1001AC038(v19, v14, type metadata accessor for ResetResponse);
    v31 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v14, v11, type metadata accessor for ResetResponse);
    v32 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v33 = (v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    sub_1001AC038(v11, v34 + v32, type metadata accessor for ResetResponse);
    v35 = (v34 + v33);
    v36 = v42;
    *v35 = v41;
    v35[1] = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1001AB178;
    *(v37 + 24) = v34;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284570;
    v38 = _Block_copy(aBlock);
    v39 = a2;

    [v31 performBlockAndWait:v38];
    _Block_release(v38);
    sub_1001AC1E4(v14, type metadata accessor for ResetResponse);
    LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

    if (v38)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10011FDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Changes(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001163D8();
  v17 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_darwinNotifier);
  [swift_getObjCClassFromMetadata() post:OTCliqueChanged];
  v18 = type metadata accessor for ResetResponse(0);
  sub_100019C6C(a2 + *(v18 + 20), v10, &unk_10029D750, &qword_10021E850);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    *(v16 + 2) = _swiftEmptyArrayStorage;
    *(v16 + 24) = xmmword_10021D470;
    *(v16 + 40) = xmmword_10021D470;
    v16[56] = 0;
    v20 = &v16[*(v11 + 36)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v19(v10, 1, v11) != 1)
    {
      sub_1000114D4(v10, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v10, v16, type metadata accessor for Changes);
  }

  sub_100174C2C(v16, 0);
  sub_1001AC1E4(v16, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v21 = sub_100216774();
  sub_100002648(v21, qword_10029D160);
  v22 = sub_100216754();
  v23 = sub_100216C54();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "reset succeded", v24, 2u);
  }

  return a3(0);
}

uint64_t sub_10012028C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v17 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v19._countAndFlagsBits = sub_100216994();
      sub_100216A14(v19);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v15 = sub_100005FB0(v13, 0xE700000000000000, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v10, v8, "performCkserverUnreadableRemoval complete %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v17;
    if (!a1)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_13:
      [a2 sendMetricWithResult:1 error:0];
      goto LABEL_14;
    }
  }

  swift_errorRetain();
  v14 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v14];

LABEL_14:
  sub_10010EEEC(0xD00000000000008ELL, 0x800000010023CC50);
  return a4(a1);
}

uint64_t sub_100120520(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23[16] = a1;
  v23[17] = a2;
  v23[18] = a3;
  sub_1001A13C4(&qword_1002990D0, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  sub_100216654();
  v17 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
  v18 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
  sub_100006484((a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = *(v18 + 16);
  v21 = *(v20 + 152);

  v21(v16, sub_1001AB120, v19, v17, v20);

  return sub_1001AC1E4(v16, type metadata accessor for RemoveUnreadableCKServerDataRequest);
}

uint64_t sub_1001206D0(_BYTE *a1, char a2, char a3, char a4)
{
  v8 = sub_10001148C(&unk_10029D6F0, &qword_100226B40);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v26[-v11];
  v13 = type metadata accessor for AccountInfo(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = a2;
  if (a3)
  {
    v19 = 17;
    v20 = 19;
  }

  else
  {
    v19 = 16;
    v20 = 18;
  }

  if (a4)
  {
    v19 = v20;
  }

  v27 = v19;
  if (a2)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  v22 = *(type metadata accessor for RemoveUnreadableCKServerDataRequest(0) + 28);
  sub_100019C6C(&a1[v22], v12, &unk_10029D6F0, &qword_100226B40);
  v23 = *(v14 + 48);
  if (v23(v12, 1, v13) == 1)
  {
    v24 = v18 + *(v13 + 20);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v23(v12, 1, v13) != 1)
    {
      sub_1000114D4(v12, &unk_10029D6F0, &qword_100226B40);
    }
  }

  else
  {
    sub_1001AC038(v12, v18, type metadata accessor for AccountInfo);
  }

  *v18 = v27 | v21;
  sub_1000114D4(&a1[v22], &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v18, &a1[v22], type metadata accessor for AccountInfo);
  return (*(v14 + 56))(&a1[v22], 0, 1, v13);
}

uint64_t sub_100120944(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_10001148C(&qword_1002983D0, &unk_100226710);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = (&v23 - v7);
  sub_100019C6C(a1, &v23 - v7, &qword_1002983D0, &unk_100226710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v10 = sub_100216774();
    sub_100002648(v10, qword_10029D160);
    swift_errorRetain();
    v11 = sub_100216754();
    v12 = sub_100216C74();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v9;
      v24 = v14;
      *v13 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15 = sub_100216994();
      v17 = sub_100005FB0(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "performCkserverUnreadableRemoval failed: %{public}s", v13, 0xCu);
      sub_100006128(v14);
    }

    swift_errorRetain();
    a2(v9);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v19 = sub_100216774();
    sub_100002648(v19, qword_10029D160);
    v20 = sub_100216754();
    v21 = sub_100216C94();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "performCkserverUnreadableRemoval success", v22, 2u);
    }

    a2(0);
    return sub_1000114D4(v8, &qword_1002983D0, &unk_100226710);
  }
}

uint64_t sub_100120C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "localReset complete %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000012, 0x800000010023CC30);
  return a3(a1);
}

uint64_t sub_100120E88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1001163D8();
  v4 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v9 = 0;
  if ([v4 save:&v9])
  {
    v5 = v9;
    return a2(0);
  }

  else
  {
    v7 = v9;
    v8 = sub_100216154();

    swift_willThrow();
    swift_errorRetain();
    a2(v8);
  }
}

uint64_t sub_100120F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a12)
  {
    v19 = sub_100216C74();
  }

  else
  {
    v19 = sub_100216C54();
  }

  v20 = v19;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v21 = sub_100216774();
  sub_100002648(v21, qword_10029D160);

  swift_errorRetain();
  v22 = sub_100216754();

  if (os_log_type_enabled(v22, v20))
  {
    v30 = a7;
    v31 = a8;
    v23 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v23 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v24 = sub_100216994();
    v26 = sub_100005FB0(v24, v25, v35);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2082;
    if (a12)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v36._countAndFlagsBits = sub_100216994();
      sub_100216A14(v36);

      v27 = 0x203A726F727265;
    }

    else
    {
      v27 = 0x73736563637573;
    }

    v28 = sub_100005FB0(v27, 0xE700000000000000, v35);

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v22, v20, "prepare complete peerID: %{public}s %{public}s", v23, 0x16u);
    swift_arrayDestroy();

    a7 = v30;
    a8 = v31;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000F2, 0x800000010023CB30);
  return a14(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10012128C(void *a1, uint64_t a2, void (*a3)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8, void *a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  if (a1 && !a2)
  {
    v38 = a1;
    v39 = v38;
    if (a6)
    {
      v40 = [v38 version];
      v41 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
      *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v40;
    }

    v53 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v42 = v39;
    v43 = swift_allocObject();
    *(v43 + 16) = a8;
    *(v43 + 24) = a9;
    *(v43 + 32) = v42;
    *(v43 + 40) = a10;
    *(v43 + 48) = a11;
    *(v43 + 56) = a12;
    *(v43 + 64) = a13;
    *(v43 + 72) = a14;
    *(v43 + 80) = a15;
    *(v43 + 88) = a16;
    *(v43 + 96) = a17;
    *(v43 + 104) = a18;
    *(v43 + 112) = a19;
    *(v43 + 120) = a7;
    *(v43 + 128) = a20;
    *(v43 + 136) = a3;
    *(v43 + 144) = a4;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1001ACBCC;
    *(v44 + 24) = v43;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002844A8;
    v45 = _Block_copy(aBlock);

    v46 = a7;

    v47 = a20;
    v48 = a19;
    v49 = a9;

    v50 = v42;
    v51 = a10;

    v52 = a12;

    [v53 performBlockAndWait:v45];

    _Block_release(v45);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if (v50)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    swift_errorRetain();
    v25 = sub_100216754();
    v26 = sub_100216C54();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v29 = sub_100216994();
      v31 = sub_100005FB0(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to fetch policy: %{public}s", v27, 0xCu);
      sub_100006128(v28);
    }

    if (a5)
    {
      v32 = a5;
    }

    else
    {
      sub_1000561D0();
      v32 = swift_allocError();
      *v33 = xmmword_100225FC0;
      *(v33 + 16) = 13;
    }

    swift_errorRetain();
    a3(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, v32);
  }

  return result;
}

uint64_t sub_100121704(int a1, id a2, id a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(uint64_t, uint64_t, uint64_t, unint64_t, id, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, id, uint64_t), uint64_t a17)
{
  if (a1)
  {
    v21 = [a2 modelID];
    sub_100216974();

    v146._countAndFlagsBits = 0x5654656C707041;
    v146._object = 0xE700000000000000;
    if (sub_100216A94(v146))
    {

      v22 = 3;
    }

    else
    {
      v147._countAndFlagsBits = 0x6363416F69647541;
      v147._object = 0xEE0079726F737365;
      v23 = sub_100216A94(v147);

      if (v23)
      {
        v22 = 3;
      }

      else
      {
        v22 = a1;
      }
    }

    v142 = v22;
  }

  else
  {
    v142 = 0;
  }

  v24 = [a3 version];
  v25 = [v24 versionNumber];

  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v26 = qword_1002B0320;
  v27 = [qword_1002B0320 versionNumber];
  v28 = v27;
  if (a4)
  {
    v29 = a4;
    v30 = [v29 walrus];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(TPPBPeerStableInfoSetting) init];
      if (v32)
      {
        v33 = v32;
        [v32 setValue:{objc_msgSend(v31, "enabled")}];
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v40 = [v29 webAccess];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_allocWithZone(TPPBPeerStableInfoSetting) init];
      if (v42)
      {
        v43 = v42;
        [v42 setValue:{objc_msgSend(v41, "enabled")}];
      }

      else
      {
        v43 = 0;
      }

      a4 = v33;
    }

    else
    {
      v43 = 0;
      v41 = v29;
      a4 = v33;
    }

    v34 = v43;
    if (v25 < v28)
    {
LABEL_28:
      v35 = [a3 version];
      v36 = 0;
      if (!a5)
      {
        goto LABEL_29;
      }

LABEL_17:
      v37 = a4;
      v38 = v34;
      v39.super.isa = sub_1002168C4().super.isa;
      goto LABEL_30;
    }
  }

  else
  {
    v34 = 0;
    if (v25 < v27)
    {
      goto LABEL_28;
    }
  }

  v35 = v26;
  v36 = [a3 version];
  if (a5)
  {
    goto LABEL_17;
  }

LABEL_29:
  v44 = a4;
  v45 = v34;
  v39.super.isa = 0;
LABEL_30:
  v46 = a10;
  v144 = a4;
  if (a8)
  {
    v47 = sub_100216964();
  }

  else
  {
    v47 = 0;
  }

  if (a10)
  {
    v46 = sub_100216964();
  }

  v48 = objc_allocWithZone(TPPeerStableInfo);
  v49 = sub_100216964();
  v145 = 0;
  LOBYTE(v132) = 0;
  v50 = [v48 initWithClock:1 frozenPolicyVersion:v35 flexiblePolicyVersion:v36 policySecrets:v39.super.isa syncUserControllableViews:v142 secureElementIdentity:a6 walrusSetting:a4 webAccess:v34 deviceName:v47 serialNumber:v46 osVersion:v49 signingKeyPair:a13 recoverySigningPubKey:0 recoveryEncryptionPubKey:0 isInheritedAccount:v132 error:&v145];

  if (v50)
  {
    v143 = v50;
    v51 = v145;

    v140 = v34;
    v52 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v53 = *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v54 = [a2 peerID];
    if (!v54)
    {
      sub_100216974();
      v54 = sub_100216964();
    }

    [v53 setEgoPeerID:v54];

    v55 = *(a14 + v52);
    v56 = [a2 data];
    v57 = sub_100216224();
    v59 = v58;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v57, v59);
    [v55 setEgoPeerPermanentInfo:isa];

    v61 = *(a14 + v52);
    v62 = [a2 sig];
    v63 = sub_100216224();
    v65 = v64;

    v66 = sub_100216204().super.isa;
    sub_100002BF0(v63, v65);
    [v61 setEgoPeerPermanentInfoSig:v66];

    v67 = *(a14 + v52);
    v68 = [v50 data];
    v69 = sub_100216224();
    v71 = v70;

    v72 = sub_100216204().super.isa;
    sub_100002BF0(v69, v71);
    [v67 setEgoPeerStableInfo:v72];

    v73 = *(a14 + v52);
    v74 = [v50 sig];
    v75 = sub_100216224();
    v77 = v76;

    v78 = sub_100216204().super.isa;
    sub_100002BF0(v75, v77);
    [v73 setEgoPeerStableInfoSig:v78];

    type metadata accessor for BottleMO();
    v79 = *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v80 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v79];
    v81 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID);
    v82 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_peerID + 8);

    v83 = sub_100216964();

    [v80 setPeerID:v83];

    v84 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID);
    v85 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_bottleID + 8);

    v86 = sub_100216964();

    [v80 setBottleID:v86];

    v87 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI);
    v88 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_escrowSigningSPKI + 8);
    sub_100012558(v87, v88);
    v89 = sub_100216204().super.isa;
    sub_100002BF0(v87, v88);
    [v80 setEscrowedSigningSPKI:v89];

    v90 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey);
    v91 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingEscrowKey + 8);
    sub_100012558(v90, v91);
    v92 = sub_100216204().super.isa;
    sub_100002BF0(v90, v91);
    [v80 setSignatureUsingEscrowKey:v92];

    v93 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey);
    v94 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_signatureUsingPeerKey + 8);
    sub_100012558(v93, v94);
    v95 = sub_100216204().super.isa;
    sub_100002BF0(v93, v94);
    [v80 setSignatureUsingPeerKey:v95];

    v96 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents);
    v97 = *(a15 + OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_contents + 8);
    sub_100012558(v96, v97);
    v98 = sub_100216204().super.isa;
    sub_100002BF0(v96, v97);
    [v80 setContents:v98];

    [*(a14 + v52) addBottlesObject:v80];
    v99 = [a2 modelID];
    LODWORD(v98) = sub_100216974();
    LODWORD(v97) = v100;

    v103 = sub_100151404(v98, v97, v50);

    v145 = 0;
    if ([v79 save:&v145])
    {
      v105 = v145;
      v106 = [a2 peerID];
      v135 = sub_100216974();
      v136 = v107;

      v108 = [a2 data];
      v109 = sub_100216224();
      v111 = v110;

      v112 = [a2 sig];
      v138 = sub_100216224();
      v134 = v113;

      v114 = [v50 data];
      v115 = sub_100216224();
      v117 = v116;

      v118 = [v143 sig];
      v119 = sub_100216224();
      v121 = v120;

      v133 = v103;
      a16(v135, v136, v109, v111, v138, v134, v115, v117, v119, v121, v103, 0);

      sub_100002BF0(v119, v121);
      sub_100002BF0(v115, v117);
      sub_100002BF0(v138, v134);
      sub_100002BF0(v109, v111);
    }

    v123 = v145;
    v102 = sub_100216154();

    swift_willThrow();
  }

  else
  {
    v101 = v145;

    v102 = sub_100216154();
    swift_willThrow();
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v124 = sub_100216774();
  sub_100002648(v124, qword_10029D160);
  swift_errorRetain();
  v125 = sub_100216754();
  v126 = sub_100216C74();

  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v145 = v128;
    *v127 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v129 = sub_100216994();
    v131 = sub_100005FB0(v129, v130, &v145);

    *(v127 + 4) = v131;
    _os_log_impl(&_mh_execute_header, v125, v126, "Unable to save identity: %{public}s", v127, 0xCu);
    sub_100006128(v128);
  }

  swift_errorRetain();
  a16(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, v102);
}

uint64_t sub_1001223E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a15)
  {
    v22 = sub_100216C74();
  }

  else
  {
    v22 = sub_100216C54();
  }

  v23 = v22;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);

  swift_errorRetain();
  v25 = sub_100216754();

  if (os_log_type_enabled(v25, v23))
  {
    v33 = a7;
    v34 = a8;
    v26 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v26 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v27 = sub_100216994();
    v29 = sub_100005FB0(v27, v28, v38);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    if (a15)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v39._countAndFlagsBits = sub_100216994();
      sub_100216A14(v39);

      v30 = 0x203A726F727265;
    }

    else
    {
      v30 = 0x73736563637573;
    }

    v31 = sub_100005FB0(v30, 0xE700000000000000, v38);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v25, v23, "prepareInheritancePeer complete peerID: %{public}s %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    a7 = v33;
    a8 = v34;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000FDLL, 0x800000010023CA30);
  return a17(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100122718(uint64_t a1, uint64_t (*a2)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, void, void, void, uint64_t), uint64_t a3, void *a4, char *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, int a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *&v273 = a8;
  v274 = a7;
  v275 = a4;
  v23 = sub_100216384();
  v24 = *(v23 - 1);
  v25 = v24[8];
  __chkstk_darwin(v23, v26);
  v28 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10001148C(&qword_10029D900, &qword_1002266A0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8, v31);
  v33 = &v253 - v32;
  v34 = sub_1002163D4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = __chkstk_darwin(v34, v37);
  v40 = &v253 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v41 = sub_100216774();
    sub_100002648(v41, qword_10029D160);
    swift_errorRetain();
    v42 = sub_100216754();
    v43 = sub_100216C74();

    v44 = a2;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v276 = v46;
      *v45 = 136446210;
      v278 = a1;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v47 = sub_100216994();
      v49 = sub_100005FB0(v47, v48, &v276);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, "prepareInheritancePeer unable to fetch changes: %{public}s", v45, 0xCu);
      sub_100006128(v46);
    }

    return v44(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, a1);
  }

  v266 = v28;
  v267 = v24;
  v268 = v23;
  v269 = a5;
  v270 = v40;
  v271 = a2;
  v272 = a3;
  v51 = v38;
  v52 = v275;
  v53 = [v275 uuid];
  sub_100216974();

  sub_100216394();

  if ((*(v35 + 48))(v33, 1, v51) != 1)
  {
    v265 = v35;
    v67 = *(v35 + 32);
    v264 = v51;
    v68 = v270;
    v67();
    v69 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v70 = v269;
    v71 = *&v269[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    isa = sub_1002163B4().super.isa;
    v73 = [v71 findCustodianRecoveryKeyWithUUID:isa];

    if (!v73)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v88 = sub_100216774();
      sub_100002648(v88, qword_10029D160);
      v89 = v52;
      v90 = sub_100216754();
      v91 = sub_100216C54();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *&v276 = v93;
        *v92 = 136446210;
        v94 = [v89 uuid];
        v95 = sub_100216974();
        v97 = v96;

        v98 = sub_100005FB0(v95, v97, &v276);

        *(v92 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v90, v91, "Unable to find custodian recovery key %{public}s on model", v92, 0xCu);
        sub_100006128(v93);
      }

      sub_1000561D0();
      v99 = swift_allocError();
      *v100 = xmmword_10021DC00;
      *(v100 + 16) = 13;
      v271(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v99);

      return (*(v265 + 8))(v68, v264);
    }

    v74 = *&v70[v69];
    *&v276 = 0;
    v75 = [v74 isCustodianRecoveryKeyTrusted:v73 error:&v276];
    v76 = v276;
    if (v276)
    {
      swift_willThrow();
      v77 = qword_100297520;
      v78 = v76;
      if (v77 != -1)
      {
        swift_once();
      }

      v79 = sub_100216774();
      sub_100002648(v79, qword_10029D160);
      v80 = v78;
      v81 = sub_100216754();
      v82 = sub_100216C74();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138543362;
        v85 = v80;
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v83 + 4) = v86;
        *v84 = v86;
        _os_log_impl(&_mh_execute_header, v81, v82, "Error determining whether Custodian Recovery Key is trusted: %{public}@", v83, 0xCu);
        sub_1000114D4(v84, &qword_10029D580, &unk_10021CCC0);
      }

      v87 = v80;
      v271(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v76);

      return (*(v265 + 8))(v68, v264);
    }

    if (v75)
    {
      v101 = [v52 recoveryString];
      if (v101)
      {
        v102 = v101;
        v103 = sub_100216974();
        v105 = v104;

        v106 = [v52 salt];
        if (v106)
        {
          v107 = v106;
          v108 = sub_100216974();
          v110 = v109;

          type metadata accessor for CustodianRecoveryKey();
          swift_allocObject();
          v111 = v73;
          v126 = sub_1000129C8(v111, v103, v105, v108, v110);
          v127 = v126[2];
          v128 = *(v127 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey);
          v129 = *(v127 + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey);
          v130 = qword_100297520;
          swift_retain_n();
          v131 = v128;
          v132 = v129;
          v262 = v131;
          v133 = v132;
          v263 = v133;
          if (v130 != -1)
          {
            swift_once();
          }

          v134 = sub_100216774();
          v261 = sub_100002648(v134, qword_10029D160);
          v135 = sub_100216754();
          v136 = sub_100216C54();

          v137 = os_log_type_enabled(v135, v136);
          v275 = v126;
          if (v137)
          {
            v138 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            *&v276 = v260;
            *v138 = 136446210;
            v139 = [*(v126[2] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey) publicKey];
            v140 = [v139 keyData];

            v141 = sub_100216224();
            v142 = v136;
            v144 = v143;

            v145 = sub_100216214(0);
            v147 = v146;
            v148 = v141;
            v126 = v275;
            sub_100002BF0(v148, v144);
            v149 = sub_100005FB0(v145, v147, &v276);

            *(v138 + 4) = v149;
            _os_log_impl(&_mh_execute_header, v135, v142, "prepareInheritancePeer signingPubKey: %{public}s", v138, 0xCu);
            sub_100006128(v260);
          }

          v150 = sub_100216754();
          v151 = sub_100216C54();

          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v260 = swift_slowAlloc();
            *&v276 = v260;
            *v152 = 136446210;
            v153 = [*(v126[2] + OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_encryptionKey) publicKey];
            v154 = [v153 keyData];

            v155 = sub_100216224();
            v156 = v151;
            v158 = v157;

            v159 = sub_100216214(0);
            v161 = v160;

            sub_100002BF0(v155, v158);
            v162 = sub_100005FB0(v159, v161, &v276);

            *(v152 + 4) = v162;
            _os_log_impl(&_mh_execute_header, v150, v156, "prepareInheritancePeer encryptionPubKey: %{public}s", v152, 0xCu);
            sub_100006128(v260);
          }

          else
          {
          }

          v163 = v263;
          v164 = v262;
          v165 = v268;
          v166 = v266;
          sub_100216374();
          sub_100216334();
          v168 = v167;
          (v267)[1](v166, v165);
          v169 = v168 * 1000.0;
          if (COERCE__INT64(fabs(v168 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v169 > -1.0)
          {
            if (v169 < 1.84467441e19)
            {
              v170 = v169;
              v171 = sub_100216964();
              v172 = sub_100216964();
              v173 = objc_opt_self();
              *&v276 = 0;
              v174 = [v173 permanentInfoWithMachineID:v171 modelID:v172 epoch:1 signingKeyPair:v164 encryptionKeyPair:v163 creationTime:v170 peerIDHashAlgo:1 error:&v276];

              if (v174)
              {
                v274 = v111;
                v175 = v276;

                v176 = v174;
                v177 = [v176 peerID];
                v178 = sub_100216974();
                v180 = v179;

                strcpy(&v276, "signing-key ");
                BYTE13(v276) = 0;
                HIWORD(v276) = -5120;
                v267 = v178;
                v279._countAndFlagsBits = v178;
                v279._object = v180;
                sub_100216A14(v279);
                v181 = objc_opt_self();
                v182 = [v181 defaultManager];
                v183 = [objc_allocWithZone(_SFIdentity) initWithKeyPair:v164];
                SFAccessibilityMakeWithMode();
                v273 = v276;
                v184 = v277;
                v185 = objc_allocWithZone(_SFAccessPolicy);
                v276 = v273;
                v277 = v184;
                v186 = [v185 initWithAccessibility:&v276 sharingPolicy:0];
                v187 = sub_100216964();
                [v186 setAccessGroup:v187];

                v188 = sub_100216964();

                *&v276 = 0;
                *&v273 = v182;
                v189 = v182;
                v190 = v183;
                v268 = v186;
                LOBYTE(v187) = [v189 setIdentity:v183 forIdentifier:v188 accessPolicy:v186 error:&v276];

                v191 = v276;
                if (v187)
                {
                  v266 = v176;
                  *&v276 = 0x6974707972636E65;
                  *(&v276 + 1) = 0xEF2079656B2D6E6FLL;
                  v192 = v191;
                  v280._countAndFlagsBits = v267;
                  v280._object = v180;
                  sub_100216A14(v280);

                  v193 = [v181 defaultManager];
                  v194 = objc_allocWithZone(_SFIdentity);
                  v195 = v263;
                  v196 = [v194 initWithKeyPair:v263];
                  SFAccessibilityMakeWithMode();
                  v259 = v276;
                  v197 = v277;
                  v198 = objc_allocWithZone(_SFAccessPolicy);
                  v276 = v259;
                  v277 = v197;
                  v199 = [v198 initWithAccessibility:&v276 sharingPolicy:0];
                  v200 = sub_100216964();
                  [v199 setAccessGroup:v200];

                  v201 = sub_100216964();

                  *&v276 = 0;
                  v202 = [v193 setIdentity:v196 forIdentifier:v201 accessPolicy:v199 error:&v276];

                  v203 = v276;
                  v267 = v193;
                  v260 = v196;
                  *&v259 = v199;
                  if (v202)
                  {
                    v258 = v190;
                    v255 = a18;
                    v254 = a16;
                    v261 = a15;
                    v253 = a14;
                    if (a10)
                    {
                      v204 = a10;
                    }

                    else
                    {
                      v233 = qword_100297228;
                      v234 = v276;
                      if (v233 != -1)
                      {
                        swift_once();
                      }

                      v203 = qword_1002B0318;
                      v204 = qword_1002B0318;
                    }

                    v235 = v203;
                    v236 = swift_allocObject();
                    v237 = v272;
                    *(v236 + 16) = v271;
                    *(v236 + 24) = v237;
                    *(v236 + 32) = 0;
                    *(v236 + 40) = a10;
                    *(v236 + 48) = v269;
                    *(v236 + 56) = a11;
                    v238 = v266;
                    *(v236 + 64) = v266;
                    *(v236 + 72) = a12;
                    v256 = a12;
                    v257 = a13;
                    v239 = v253;
                    *(v236 + 80) = a13;
                    *(v236 + 88) = v239;
                    v240 = v254;
                    *(v236 + 96) = v261;
                    *(v236 + 104) = v240;
                    v241 = v255;
                    *(v236 + 112) = a17;
                    *(v236 + 120) = v241;
                    v242 = v262;
                    *(v236 + 128) = a19;
                    *(v236 + 136) = v242;
                    *(v236 + 144) = v275;
                    sub_10001148C(&qword_100297DA0, &qword_1002264D0);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_100225FB0;
                    *(inited + 32) = v204;

                    v244 = v204;
                    v245 = a10;
                    v246 = v242;

                    v247 = v238;
                    v248 = v245;

                    v249 = v269;

                    v250 = v257;

                    v251 = sub_10019C6BC(inited);
                    swift_setDeallocating();
                    v252 = *(inited + 16);
                    swift_arrayDestroy();
                    v218 = v244;

                    sub_1001A4350(v251, v249, sub_1001AADD8, v236, v218);

                    v217 = v270;
                    goto LABEL_69;
                  }

                  v221 = v276;
                  v222 = sub_100216154();

                  swift_willThrow();
                  swift_errorRetain();
                  swift_errorRetain();
                  v223 = sub_100216754();
                  v224 = sub_100216C74();

                  if (os_log_type_enabled(v223, v224))
                  {
                    v225 = swift_slowAlloc();
                    v226 = swift_slowAlloc();
                    *&v276 = v226;
                    *v225 = 136446210;
                    v278 = v222;
                    swift_errorRetain();
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v227 = sub_100216994();
                    v229 = sub_100005FB0(v227, v228, &v276);

                    *(v225 + 4) = v229;
                    _os_log_impl(&_mh_execute_header, v223, v224, "Unable to save encryption key: %{public}s", v225, 0xCu);
                    sub_100006128(v226);
                  }

                  v230 = v271;
                  v217 = v270;
                  v218 = v274;
                  v231 = v266;
                  v232 = v273;
                  swift_errorRetain();
                  v230(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v222);
                }

                else
                {
                  v207 = v276;

                  v208 = sub_100216154();
                  swift_willThrow();
                  swift_errorRetain();
                  swift_errorRetain();
                  v209 = sub_100216754();
                  v210 = sub_100216C74();

                  if (os_log_type_enabled(v209, v210))
                  {
                    v211 = swift_slowAlloc();
                    v212 = swift_slowAlloc();
                    *&v276 = v212;
                    *v211 = 136446210;
                    v278 = v208;
                    swift_errorRetain();
                    sub_10001148C(&qword_100297E80, &unk_1002265A0);
                    v213 = sub_100216994();
                    v215 = sub_100005FB0(v213, v214, &v276);

                    *(v211 + 4) = v215;
                    _os_log_impl(&_mh_execute_header, v209, v210, "Unable to save signing key: %{public}s", v211, 0xCu);
                    sub_100006128(v212);
                  }

                  v216 = v271;
                  v217 = v270;
                  v218 = v274;
                  v219 = v262;
                  v220 = v273;
                  swift_errorRetain();
                  v216(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v208);
                }

LABEL_69:

                return (*(v265 + 8))(v217, v264);
              }

              v205 = v276;
              v206 = sub_100216154();

              swift_willThrow();
              swift_errorRetain();
              v271(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v206);

              return (*(v265 + 8))(v68, v264);
            }

LABEL_72:
            __break(1u);
          }

          __break(1u);
          goto LABEL_72;
        }
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v121 = sub_100216774();
      sub_100002648(v121, qword_10029D160);
      v122 = sub_100216754();
      v123 = sub_100216C54();
      v124 = os_log_type_enabled(v122, v123);
      v116 = v271;
      if (v124)
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v122, v123, "Bad format CRK: recovery string or salt not set", v125, 2u);
      }

      sub_1000561D0();
      v118 = swift_allocError();
      v120 = xmmword_10021DC30;
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v112 = sub_100216774();
      sub_100002648(v112, qword_10029D160);
      v113 = sub_100216754();
      v114 = sub_100216C54();
      v115 = os_log_type_enabled(v113, v114);
      v116 = v271;
      if (v115)
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "Custodian Recovery Key is not trusted", v117, 2u);
      }

      sub_1000561D0();
      v118 = swift_allocError();
      v120 = xmmword_10021DC10;
    }

    *v119 = v120;
    *(v119 + 16) = 13;
    v116(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v118);

    return (*(v265 + 8))(v68, v264);
  }

  sub_1000114D4(v33, &qword_10029D900, &qword_1002266A0);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029D160);
  v55 = v52;
  v56 = sub_100216754();
  v57 = sub_100216C54();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v276 = v59;
    *v58 = 136446210;
    v60 = [v55 uuid];
    v61 = sub_100216974();
    v63 = v62;

    v64 = sub_100005FB0(v61, v63, &v276);

    *(v58 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v56, v57, "Unable to parse uuid: %{public}s", v58, 0xCu);
    sub_100006128(v59);
  }

  sub_1000561D0();
  v65 = swift_allocError();
  *v66 = xmmword_10021DC00;
  *(v66 + 16) = 13;
  v271(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v65);
}

uint64_t sub_1001244CC(void *a1, uint64_t a2, void (*a3)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, void, void, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (a1 && !a2)
  {
    v36 = a1;
    v37 = v36;
    if (a6)
    {
      v38 = [v36 version];
      v39 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
      *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v38;
    }

    v51 = *&a7[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v40 = swift_allocObject();
    v41 = v37;
    v50 = v37;
    v42 = v40;
    *(v40 + 16) = a8;
    *(v40 + 24) = a9;
    *(v40 + 32) = v41;
    *(v40 + 40) = a10;
    *(v40 + 48) = a11;
    *(v40 + 56) = a12;
    *(v40 + 64) = a13;
    *(v40 + 72) = a14;
    *(v40 + 80) = a15;
    *(v40 + 88) = a16;
    *(v40 + 96) = a17;
    *(v40 + 104) = a18;
    *(v40 + 112) = a7;
    *(v40 + 120) = a3;
    *(v40 + 128) = a4;
    *(v40 + 136) = a19;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1001AAE34;
    *(v43 + 24) = v42;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284200;
    v44 = _Block_copy(aBlock);

    v45 = a7;

    v46 = a18;
    v47 = a9;

    v48 = v50;

    v49 = a11;

    [v51 performBlockAndWait:v44];

    _Block_release(v44);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    swift_errorRetain();
    v23 = sub_100216754();
    v24 = sub_100216C54();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v27 = sub_100216994();
      v29 = sub_100005FB0(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to fetch policy: %{public}s", v25, 0xCu);
      sub_100006128(v26);
    }

    if (a5)
    {
      v30 = a5;
    }

    else
    {
      sub_1000561D0();
      v30 = swift_allocError();
      *v31 = xmmword_100225FC0;
      *(v31 + 16) = 13;
    }

    swift_errorRetain();
    a3(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v30);
  }

  return result;
}

void sub_10012493C(uint64_t a1, void *a2, void *a3, Class isa, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(char *, uint64_t (*)(uint64_t a1), void *, uint64_t, uint64_t), uint64_t a15, uint64_t a16)
{
  v177 = a8;
  v179 = a5;
  v180 = a2;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v20 = *(*(RecoverableTLKSharesRequest - 8) + 64);
  __chkstk_darwin(RecoverableTLKSharesRequest, v21);
  v176 = &v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = [v180 modelID];
    sub_100216974();

    v183._countAndFlagsBits = 0x5654656C707041;
    v183._object = 0xE700000000000000;
    if (sub_100216A94(v183))
    {

      a1 = 3;
    }

    else
    {
      v184._countAndFlagsBits = 0x6363416F69647541;
      v184._object = 0xEE0079726F737365;
      v24 = sub_100216A94(v184);

      if (v24)
      {
        a1 = 3;
      }

      else
      {
        a1 = a1;
      }
    }
  }

  v25 = [a3 version];
  v26 = [v25 versionNumber];

  if (qword_100297230 != -1)
  {
    swift_once();
  }

  v27 = qword_1002B0320;
  if (v26 >= [qword_1002B0320 versionNumber])
  {
    v28 = v27;
    v29 = [a3 version];
    if (!isa)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v28 = [a3 version];
  v29 = 0;
  if (isa)
  {
LABEL_13:
    isa = sub_1002168C4().super.isa;
  }

LABEL_14:
  if (a7)
  {
    v30 = sub_100216964();
  }

  else
  {
    v30 = 0;
  }

  v178 = a14;
  if (a9)
  {
    v31 = sub_100216964();
  }

  else
  {
    v31 = 0;
  }

  v177 = a15;
  v32 = objc_allocWithZone(TPPeerStableInfo);
  v33 = sub_100216964();
  v182 = 0;
  LOBYTE(v165) = 1;
  v34 = [v32 initWithClock:1 frozenPolicyVersion:v28 flexiblePolicyVersion:v29 policySecrets:isa syncUserControllableViews:a1 secureElementIdentity:v179 walrusSetting:0 webAccess:0 deviceName:v30 serialNumber:v31 osVersion:v33 signingKeyPair:a12 recoverySigningPubKey:0 recoveryEncryptionPubKey:0 isInheritedAccount:v165 error:&v182];

  if (v34)
  {
    v35 = v182;

    v36 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v37 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v38 = [v180 peerID];
    if (!v38)
    {
      sub_100216974();
      v38 = sub_100216964();
    }

    [v37 setEgoPeerID:v38];

    v39 = *(a13 + v36);
    v40 = v180;
    v41 = [v180 data];
    v42 = sub_100216224();
    v44 = v43;

    v45 = sub_100216204().super.isa;
    sub_100002BF0(v42, v44);
    [v39 setEgoPeerPermanentInfo:v45];

    v46 = *(a13 + v36);
    v47 = [v40 sig];
    v48 = sub_100216224();
    v50 = v49;

    v51 = sub_100216204().super.isa;
    sub_100002BF0(v48, v50);
    [v46 setEgoPeerPermanentInfoSig:v51];

    v52 = *(a13 + v36);
    v53 = [v34 data];
    v54 = sub_100216224();
    v56 = v55;

    v57 = sub_100216204().super.isa;
    sub_100002BF0(v54, v56);
    [v52 setEgoPeerStableInfo:v57];

    v58 = *(a13 + v36);
    v59 = [v34 sig];
    v60 = sub_100216224();
    v62 = v61;

    v63 = sub_100216204().super.isa;
    sub_100002BF0(v60, v62);
    [v58 setEgoPeerStableInfoSig:v63];

    v64 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v182 = 0;
    if ([v64 save:&v182])
    {
      v65 = *(a13 + v36);
      v66 = v182;
      v67 = [v65 egoPeerID];
      if (v67)
      {
        v68 = v67;
        sub_100216974();

        v69 = [*(a13 + v36) egoPeerPermanentInfo];
        if (v69)
        {
          v70 = v69;
          v71 = sub_100216224();
          v73 = v72;

          v74 = [*(a13 + v36) egoPeerPermanentInfoSig];
          if (v74)
          {
            v75 = v74;
            v76 = sub_100216224();
            v180 = v77;

            v78 = [*(a13 + v36) egoPeerStableInfo];
            if (v78)
            {
              v79 = v78;
              v174 = sub_100216224();
              v179 = v80;

              v81 = [*(a13 + v36) egoPeerStableInfoSig];
              if (v81)
              {
                v82 = v81;
                v171 = sub_100216224();
                v172 = v83;

                v84 = [objc_allocWithZone(TPECPublicKeyFactory) init];
                sub_100012558(v71, v73);
                v173 = v73;
                v85 = v180;
                sub_100012558(v76, v180);
                v86 = sub_100216964();

                v87 = sub_100216204().super.isa;
                v88 = sub_100216204().super.isa;
                v89 = [objc_opt_self() permanentInfoWithPeerID:v86 data:v87 sig:v88 keyFactory:v84];

                v90 = v85;
                v73 = v173;
                sub_100002BF0(v76, v90);

                sub_100002BF0(v71, v73);
                v170 = v89;
                if (v89)
                {
                  v167 = v84;
                  v168 = v71;
                  v169 = v76;
                  v91 = objc_allocWithZone(TPPeerStableInfo);
                  v92 = v174;
                  v93 = v172;
                  v94 = v179;
                  sub_100012558(v174, v179);
                  v95 = v171;
                  sub_100012558(v171, v93);
                  v96 = sub_100216204().super.isa;
                  v97 = sub_100216204().super.isa;
                  v98 = [v91 initWithData:v96 sig:v97];

                  sub_100002BF0(v95, v93);
                  sub_100002BF0(v92, v94);
                  if (v98)
                  {
                    v99 = v170;
                    v100 = [v170 modelID];
                    v101 = sub_100216974();
                    v103 = v102;

                    v155 = sub_100151404(v101, v103, v98);

                    sub_1001A13C4(&unk_10029D960, type metadata accessor for FetchRecoverableTLKSharesRequest);
                    sub_100216654();
                    v156 = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
                    RecoverableTLKSharesRequest = *(a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
                    sub_100006484((a13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), RecoverableTLKSharesRequest);
                    v157 = swift_allocObject();
                    v157[2] = v178;
                    v157[3] = v177;
                    v157[4] = v99;
                    v157[5] = v98;
                    v157[6] = v155;
                    v157[7] = a16;
                    v158 = v98;
                    v159 = v99;
                    v160 = *(v156 + 16);
                    v178 = *(v160 + 72);

                    v161 = v159;
                    v162 = v158;
                    v163 = v155;

                    v164 = v176;
                    v178(v176, sub_1001AAF04, v157, RecoverableTLKSharesRequest, v160);

                    sub_100002BF0(v171, v172);
                    sub_100002BF0(v174, v179);

                    sub_100002BF0(v169, v180);
                    sub_100002BF0(v168, v173);
                    sub_1001AC1E4(v164, type metadata accessor for FetchRecoverableTLKSharesRequest);
                    return;
                  }

                  v144 = v170;
                  if (qword_100297520 != -1)
                  {
                    swift_once();
                  }

                  v145 = sub_100216774();
                  sub_100002648(v145, qword_10029D160);
                  v146 = sub_100216754();
                  v147 = sub_100216C54();
                  v148 = os_log_type_enabled(v146, v147);
                  v149 = v169;
                  v150 = v173;
                  v151 = v167;
                  if (v148)
                  {
                    v152 = swift_slowAlloc();
                    *v152 = 0;
                    _os_log_impl(&_mh_execute_header, v146, v147, "Invalid stableinfo or signature", v152, 2u);
                  }

                  sub_1000561D0();
                  v153 = swift_allocError();
                  *v154 = xmmword_10021DC20;
                  *(v154 + 16) = 13;
                  (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v153);

                  sub_100002BF0(v171, v172);
                  sub_100002BF0(v174, v179);
                  sub_100002BF0(v149, v180);
                  v142 = v168;
                  v143 = v150;
                  goto LABEL_65;
                }

                sub_1000561D0();
                v140 = swift_allocError();
                *v141 = xmmword_10021DA80;
                *(v141 + 16) = 13;
                (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v140);

                sub_100002BF0(v171, v172);
              }

              else
              {

                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v134 = sub_100216774();
                sub_100002648(v134, qword_10029D160);
                v135 = sub_100216754();
                v136 = sub_100216C54();
                if (os_log_type_enabled(v135, v136))
                {
                  v137 = swift_slowAlloc();
                  *v137 = 0;
                  _os_log_impl(&_mh_execute_header, v135, v136, "stableInfoSig does not exist", v137, 2u);
                }

                sub_1000561D0();
                v138 = swift_allocError();
                *v139 = xmmword_100225FD0;
                *(v139 + 16) = 13;
                (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v138);
              }

              sub_100002BF0(v174, v179);
            }

            else
            {

              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v128 = sub_100216774();
              sub_100002648(v128, qword_10029D160);
              v129 = sub_100216754();
              v130 = sub_100216C54();
              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v129, v130, "stableInfo does not exist", v131, 2u);
              }

              sub_1000561D0();
              v132 = swift_allocError();
              *v133 = xmmword_100225FD0;
              *(v133 + 16) = 13;
              (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v132);
            }

            sub_100002BF0(v76, v180);
          }

          else
          {

            if (qword_100297520 != -1)
            {
              swift_once();
            }

            v122 = sub_100216774();
            sub_100002648(v122, qword_10029D160);
            v123 = sub_100216754();
            v124 = sub_100216C54();
            if (os_log_type_enabled(v123, v124))
            {
              v125 = swift_slowAlloc();
              *v125 = 0;
              _os_log_impl(&_mh_execute_header, v123, v124, "permanentInfoSig does not exist", v125, 2u);
            }

            sub_1000561D0();
            v126 = swift_allocError();
            *v127 = xmmword_100225FD0;
            *(v127 + 16) = 13;
            (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v126);
          }

          v142 = v71;
          v143 = v73;
LABEL_65:
          sub_100002BF0(v142, v143);
          goto LABEL_66;
        }

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v118 = sub_100216774();
        sub_100002648(v118, qword_10029D160);
        v119 = sub_100216754();
        v120 = sub_100216C54();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          *v121 = 0;
          _os_log_impl(&_mh_execute_header, v119, v120, "permanentInfo does not exist", v121, 2u);
        }

        sub_1000561D0();
        v115 = swift_allocError();
        v117 = xmmword_100225FD0;
      }

      else
      {
        sub_1000561D0();
        v115 = swift_allocError();
        v117 = xmmword_10021DA90;
      }

      *v116 = v117;
      *(v116 + 16) = 13;
      (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v115);

LABEL_66:

      return;
    }

    v106 = v182;
    v105 = sub_100216154();

    swift_willThrow();
    v29 = v34;
  }

  else
  {
    v104 = v182;
    v105 = sub_100216154();

    swift_willThrow();
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v107 = sub_100216774();
  sub_100002648(v107, qword_10029D160);
  swift_errorRetain();
  v108 = sub_100216754();
  v109 = sub_100216C74();

  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v182 = v111;
    *v110 = 136446210;
    v181 = v105;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v112 = sub_100216994();
    v114 = sub_100005FB0(v112, v113, &v182);

    *(v110 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v108, v109, "Unable to save inheritance identity: %{public}s", v110, 0xCu);
    sub_100006128(v111);
  }

  swift_errorRetain();
  (v178)(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v105);
}

uint64_t sub_100125EB0(uint64_t *a1, uint64_t a2)
{
  v3 = [*(a2 + 24) peerID];
  v4 = sub_100216974();
  v6 = v5;

  v7 = a1[1];

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_100125F20(uint64_t a1, void (*a2)(void, void, void, unint64_t, void, unint64_t, void, unint64_t, void, unint64_t, void, void, void, void, uint64_t), uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v101 = a7;
  v102 = a6;
  v99 = a4;
  v100 = a5;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  v11 = *(RecoverableTLKShares - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(RecoverableTLKShares - 8, v13);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecoverableTLKSharesResponse = type metadata accessor for FetchRecoverableTLKSharesResponse(0);
  v17 = *(*(RecoverableTLKSharesResponse - 8) + 64);
  v19 = __chkstk_darwin(RecoverableTLKSharesResponse - 8, v18);
  v103 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v23 = &v93 - v22;
  v24 = sub_10001148C(&qword_100298440, &qword_10021DEB0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24, v26);
  v28 = (&v93 - v27);
  sub_100019C6C(a1, &v93 - v27, &qword_100298440, &qword_10021DEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = a2;
    v30 = *v28;
    if (qword_100297520 == -1)
    {
LABEL_3:
      v31 = sub_100216774();
      sub_100002648(v31, qword_10029D160);
      swift_errorRetain();
      v32 = sub_100216754();
      v33 = sub_100216C74();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v105 = v35;
        *v34 = 136446210;
        v104 = v30;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v36 = sub_100216994();
        v38 = sub_100005FB0(v36, v37, &v105);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "fetchRecoverableTlkshares failed: %{public}s", v34, 0xCu);
        sub_100006128(v35);
      }

      swift_errorRetain();
      v29(0, 0, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, 0, 0, v30);
    }

LABEL_24:
    swift_once();
    goto LABEL_3;
  }

  sub_1001AC038(v28, v23, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v29 = *v23;
  v40 = *(*v23 + 16);
  v96 = a3;
  v97 = a2;
  v98 = v23;
  if (v40)
  {
    v105 = _swiftEmptyArrayStorage;
    sub_1001877E4(0, v40, 0);
    v41 = v105;
    v42 = *(v11 + 80);
    v95 = v29;
    v43 = v29 + ((v42 + 32) & ~v42);
    v44 = *(v11 + 72);
    v30 = v103;
    do
    {
      sub_1001AC0A0(v43, v15, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v45 = *(*(v15 + 2) + 16);
      sub_1001AC1E4(v15, type metadata accessor for FetchRecoverableTLKSharesResponse.View);
      v105 = v41;
      v47 = v41[2];
      v46 = v41[3];
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_1001877E4((v46 > 1), v47 + 1, 1);
        v41 = v105;
      }

      v41[2] = v48;
      v41[v47 + 4] = v45;
      v43 += v44;
      --v40;
    }

    while (v40);
    v23 = v98;
    v29 = v95;
LABEL_13:
    v49 = 0;
    v50 = 4;
    while (1)
    {
      v51 = v41[v50];
      v52 = __OFADD__(v49, v51);
      v49 += v51;
      if (v52)
      {
        break;
      }

      ++v50;
      if (!--v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v41 = _swiftEmptyArrayStorage;
  v48 = _swiftEmptyArrayStorage[2];
  v30 = v103;
  if (v48)
  {
    goto LABEL_13;
  }

  v49 = 0;
LABEL_16:

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v53 = sub_100216774();
  sub_100002648(v53, qword_10029D160);
  sub_1001AC0A0(v23, v30, type metadata accessor for FetchRecoverableTLKSharesResponse);
  v54 = sub_100216754();
  v55 = sub_100216C54();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    v57 = *(*v30 + 16);
    sub_1001AC1E4(v30, type metadata accessor for FetchRecoverableTLKSharesResponse);
    *(v56 + 4) = v57;
    *(v56 + 12) = 2048;
    *(v56 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v54, v55, "fetchRecoverableTlkshares succeeded: found %ld views and %ld total TLKShares", v56, 0x16u);
  }

  else
  {
    sub_1001AC1E4(v30, type metadata accessor for FetchRecoverableTLKSharesResponse);
  }

  v58 = sub_1001266F4(v29);
  v59 = v99;
  v60 = [v99 peerID];
  v61 = sub_100216974();
  v103 = v62;

  v63 = [v59 data];
  v64 = sub_100216224();
  v66 = v65;

  v67 = [v59 sig];
  v99 = sub_100216224();
  v95 = v68;

  v69 = v100;
  v70 = [v100 data];
  v71 = sub_100216224();
  v94 = v72;

  v73 = [v69 sig];
  v74 = sub_100216224();
  v93 = v74;
  v76 = v75;
  v100 = v75;

  v77 = [*(v101 + 24) peerID];
  v78 = sub_100216974();
  v80 = v79;

  v92 = v76;
  v91 = v74;
  v81 = v61;
  v82 = v64;
  v83 = v64;
  v84 = v66;
  v85 = v66;
  v86 = v99;
  v87 = v95;
  v88 = v71;
  v89 = v71;
  v90 = v94;
  v97(v81, v103, v83, v85, v99, v95, v89, v94, v91, v92, v102, v78, v80, v58, 0);

  sub_100002BF0(v93, v100);
  sub_100002BF0(v88, v90);
  sub_100002BF0(v86, v87);
  sub_100002BF0(v82, v84);

  return sub_1001AC1E4(v98, type metadata accessor for FetchRecoverableTLKSharesResponse);
}

uint64_t sub_1001266F4(uint64_t a1)
{
  v33 = *(a1 + 16);
  if (!v33)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = *(type metadata accessor for FetchRecoverableTLKSharesResponse.View(0) - 8);
  v4 = _swiftEmptyArrayStorage;
  v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v31 = *(v3 + 72);
  v5 = &qword_10029D7D8;
  while (1)
  {
    v7 = sub_10005895C();
    v8 = v7;
    v9 = v7 >> 62;
    v10 = v7 >> 62 ? sub_1002170F4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v4 >> 62;
    if (v4 >> 62)
    {
      v29 = sub_1002170F4();
      v13 = v29 + v10;
      if (__OFADD__(v29, v10))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v37 = v10;
    if (result)
    {
      if (v11)
      {
        goto LABEL_16;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v11)
      {
LABEL_16:
        sub_1002170F4();
        goto LABEL_17;
      }

      v14 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_17:
    result = sub_100217024();
    v4 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v17 >> 1) - v16) < v37)
    {
      goto LABEL_38;
    }

    v34 = v2;
    v35 = v4;
    v20 = v14 + 8 * v16 + 32;
    v30 = v14;
    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_1001AC36C(&qword_10029D7E0, v5, &qword_100226608);
      for (i = 0; i != v18; ++i)
      {
        sub_10001148C(v5, &qword_100226608);
        v22 = v5;
        v23 = sub_10018CF4C(v36, i, v8);
        v25 = *v24;
        (v23)(v36, 0);
        v5 = v22;
        *(v20 + 8 * i) = v25;
      }
    }

    else
    {
      sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
      swift_arrayInitWithCopy();
    }

    v2 = v34;
    v4 = v35;
    if (v37 >= 1)
    {
      v26 = *(v30 + 16);
      v27 = __OFADD__(v26, v37);
      v28 = v26 + v37;
      if (v27)
      {
        goto LABEL_39;
      }

      *(v30 + 16) = v28;
    }

LABEL_4:
    if (++v2 == v33)
    {
      return v4;
    }
  }

  v19 = v14;
  result = sub_1002170F4();
  v14 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v37 <= 0)
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

uint64_t sub_100126A3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = sub_1001AC2A8;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001AC2B0;
  *(v8 + 24) = v7;
  v13[4] = sub_1001ACCC0;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100285920;
  v9 = _Block_copy(v13);

  v10 = v2;

  [v6 performBlockAndWait:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100126BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 134218242;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2082;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16._countAndFlagsBits = sub_100216994();
      sub_100216A14(v16);

      v12 = 0x203A726F727265;
    }

    else
    {
      v12 = 0x73736563637573;
    }

    v13 = sub_100005FB0(v12, 0xE700000000000000, &v15);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v9, v7, "getEgoEpoch complete: %llu %{public}s", v10, 0x16u);
    sub_100006128(v11);
  }

  return a3(a1, a2);
}

void sub_100126E08(uint64_t a1, void (*a2)(id, id))
{
  v4 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
    v28 = 0;
    v7 = v6;
    v8 = [v7 peerWithID:v5 error:&v28];

    v9 = v28;
    if (v28)
    {
      v10 = v28;

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v11 = sub_100216774();
      sub_100002648(v11, qword_10029D160);
      v12 = v10;
      v13 = sub_100216754();
      v14 = sub_100216C74();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        v17 = v12;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&_mh_execute_header, v13, v14, "Error getting ego peer from model: %{public}@", v15, 0xCu);
        sub_1000114D4(v16, &qword_10029D580, &unk_10021CCC0);
      }

      v19 = v12;
      v20 = 0;
      v21 = v9;
      goto LABEL_13;
    }

    if (v8)
    {
      v19 = v8;
      v24 = [v19 permanentInfo];
      v25 = [v24 epoch];

      v20 = v25;
      v21 = 0;
LABEL_13:
      a2(v20, v21);

      return;
    }

    sub_1000561D0();
    v26 = swift_allocError();
    *v27 = xmmword_10021DA90;
    *(v27 + 16) = 13;
    a2(0, v26);
  }

  else
  {
    sub_1000561D0();
    v22 = swift_allocError();
    *v23 = xmmword_10021DA90;
    *(v23 + 16) = 13;
    a2(0, v22);
  }
}

uint64_t sub_100127160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void))
{
  if (a5)
  {
    v12 = sub_100216C74();
  }

  else
  {
    v12 = sub_100216C54();
  }

  v13 = v12;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);

  swift_errorRetain();
  v15 = sub_100216754();

  if (os_log_type_enabled(v15, v13))
  {
    v23 = a4;
    v24 = a7;
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136446466;

    sub_10001148C(&qword_10029D698, &unk_100226590);
    v17 = sub_100216994();
    v19 = sub_100005FB0(v17, v18, &v26);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v27._countAndFlagsBits = sub_100216994();
      sub_100216A14(v27);

      v20 = 0x203A726F727265;
    }

    else
    {
      v20 = 0x73736563637573;
    }

    v21 = sub_100005FB0(v20, 0xE700000000000000, &v26);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v15, v13, "establish complete peer: %{public}s %{public}s", v16, 0x16u);
    swift_arrayDestroy();

    a7 = v24;
    a4 = v23;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000062, 0x800000010023C990);
  return a7(a1, a2, a3, a4, a5);
}

uint64_t sub_100127430(char *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void (*a12)(void, void, void *, void, uint64_t), uint64_t a13)
{

  sub_1001A47C0(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a1, a12, a13);
}

uint64_t sub_1001274E8(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = kSecurityRTCEventNameFetchAfterEstablish;
  sub_1001A9F94();
  v18 = a2;
  v20 = v19;
  if (v18)
  {
    v21 = sub_100216964();
  }

  else
  {
    v21 = 0;
  }

  if (a4)
  {
    a4 = sub_100216964();
  }

  v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (a6)
  {
    v23 = sub_100216964();
  }

  else
  {
    v23 = 0;
  }

  LOBYTE(v29) = a7 & 1;
  v24 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v21 flowID:a4 deviceSessionID:v23 eventName:v17 testsAreEnabled:v20 canSendMetrics:v29 category:v22];

  sub_100175FF0();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = a9;
  v25[4] = a10;
  v25[5] = a8;
  v25[6] = a11;
  v25[7] = a12;
  v26 = v24;

  v27 = a8;

  sub_10016ECB4(0, sub_1001AAA28, v25);
}

uint64_t sub_10012788C(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void *, void, uint64_t), uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029D160);
    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v16 = sub_100216994();
      v18 = sub_100005FB0(v16, v17, aBlock);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "fetchAfterEstablish failed to fetch changes: %{public}s", v14, 0xCu);
      sub_100006128(v15);
    }

    v19 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v19];

    return a3(0, 0, _swiftEmptyArrayStorage, 0, a1);
  }

  else
  {
    v23 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v25 = swift_allocObject();
    v25[2] = a5;
    v25[3] = a2;
    v25[4] = a3;
    v25[5] = a4;
    v25[6] = a6;
    v25[7] = a7;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1001AAA58;
    *(v26 + 24) = v25;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283DC8;
    v27 = _Block_copy(aBlock);
    v28 = a5;
    v29 = a2;

    [v23 performBlockAndWait:v27];
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100127BC8(char *a1, void *a2, void (*a3)(void, void, void *, void, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v12 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v12)
  {
    v13 = v12;
    v196 = a4;
    v14 = sub_100216974();
    v16 = v15;
    v17 = [*&a1[v11] egoPeerPermanentInfo];
    if (v17)
    {
      v194 = a5;
      v197 = v16;
      v18 = v17;
      v19 = sub_100216224();
      v21 = v20;

      v22 = [*&a1[v11] egoPeerPermanentInfoSig];
      if (v22)
      {
        v190 = v14;
        v195 = v19;
        v23 = v22;
        v24 = sub_100216224();
        v26 = v25;

        v27 = [*&a1[v11] egoPeerStableInfo];
        if (v27)
        {
          v192 = v26;
          v193 = v24;
          v28 = v27;
          v29 = sub_100216224();
          v31 = v30;

          v32 = [*&a1[v11] egoPeerStableInfoSig];
          if (v32)
          {
            v188 = v29;
            v189 = v21;
            v33 = v32;
            v186 = sub_100216224();
            v187 = v34;

            v35 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
            v200[0] = 0;
            v36 = v35;
            v37 = [v36 hasPeerWithID:v13 error:v200];

            v38 = v200[0];
            if (v200[0])
            {
              swift_willThrow();
              v39 = qword_100297520;
              v40 = v38;
              if (v39 != -1)
              {
                swift_once();
              }

              v41 = sub_100216774();
              sub_100002648(v41, qword_10029D160);

              v42 = v40;
              v43 = sub_100216754();
              v44 = sub_100216C54();

              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v46 = swift_slowAlloc();
                v47 = swift_slowAlloc();
                v200[0] = v47;
                *v45 = 136446466;
                v48 = sub_100005FB0(v190, v197, v200);

                *(v45 + 4) = v48;
                *(v45 + 12) = 2114;
                v49 = v42;
                v50 = _swift_stdlib_bridgeErrorToNSError();
                *(v45 + 14) = v50;
                *v46 = v50;
                _os_log_impl(&_mh_execute_header, v43, v44, "fetchAfterEstablish: error finding peer %{public}s in model: %{public}@", v45, 0x16u);
                sub_1000114D4(v46, &qword_10029D580, &unk_10021CCC0);

                sub_100006128(v47);
              }

              else
              {
              }

              v106 = sub_100216144();
              [a2 sendMetricWithResult:0 error:v106];

              v107 = v42;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v38);

              sub_100002BF0(v186, v187);
              sub_100002BF0(v188, v31);
              sub_100002BF0(v193, v192);
              v108 = v195;
              v109 = v189;
              return sub_100002BF0(v108, v109);
            }

            if (v37)
            {
              v185 = v31;
              v184 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v195, v189);
              sub_100012558(v193, v192);
              v181 = sub_100216964();

              isa = sub_100216204().super.isa;
              v64 = sub_100216204().super.isa;
              v175 = objc_opt_self();
              v65 = [v175 permanentInfoWithPeerID:v181 data:isa sig:v64 keyFactory:v184];

              sub_100002BF0(v193, v192);
              sub_100002BF0(v195, v189);

              v182 = v65;
              if (!v65)
              {

                sub_1000561D0();
                swift_allocError();
                *v124 = xmmword_10021DA80;
                *(v124 + 16) = 13;
                v125 = sub_100216144();

                [a2 sendMetricWithResult:0 error:v125];

                v126 = swift_allocError();
                *v127 = xmmword_10021DA80;
                *(v127 + 16) = 13;
                a3(0, 0, _swiftEmptyArrayStorage, 0, v126);

                sub_100002BF0(v186, v187);
                sub_100002BF0(v188, v185);
                sub_100002BF0(v193, v192);
                v108 = v195;
                v109 = v189;
                return sub_100002BF0(v108, v109);
              }

              v178 = objc_allocWithZone(TPPeerStableInfo);
              sub_100012558(v188, v185);
              sub_100012558(v186, v187);
              v176 = sub_100216204().super.isa;
              v66 = sub_100216204().super.isa;
              v67 = [v178 initWithData:v176 sig:v66];

              sub_100002BF0(v186, v187);
              sub_100002BF0(v188, v185);
              if (v67)
              {
                v68 = swift_allocObject();
                v68[2] = a2;
                v68[3] = a3;
                v68[4] = v196;
                v68[5] = a1;
                v68[6] = v182;
                v68[7] = v67;
                v69 = v190;
                v191 = v68;
                v68[8] = v69;
                v68[9] = v197;
                v172 = *&a1[v11];
                swift_bridgeObjectRetain_n();
                v179 = a2;
                swift_retain_n();
                v70 = a1;
                v71 = v182;
                v72 = v67;
                v174 = v179;
                v177 = v70;
                v180 = v71;
                v183 = v72;
                v73 = [v172 egoPeerID];
                if (v73)
                {
                  v74 = v73;
                  v75 = sub_100216974();
                  v77 = v76;

                  v78 = [*&a1[v11] egoPeerPermanentInfo];
                  if (v78)
                  {
                    v79 = v78;
                    v80 = sub_100216224();
                    v82 = v81;

                    v83 = [*&a1[v11] egoPeerPermanentInfoSig];
                    if (v83)
                    {
                      v84 = v83;
                      v85 = sub_100216224();
                      v86 = v77;
                      v88 = v87;

                      v89 = objc_allocWithZone(TPECPublicKeyFactory);

                      sub_100012558(v80, v82);
                      sub_100012558(v85, v88);
                      v173 = v80;
                      v90 = [v89 init];
                      v91 = sub_100216964();
                      v168._object = v86;

                      v92 = sub_100216204().super.isa;
                      v168._countAndFlagsBits = v75;
                      v93 = sub_100216204().super.isa;
                      v94 = [v175 permanentInfoWithPeerID:v91 data:v92 sig:v93 keyFactory:v90];

                      sub_100002BF0(v85, v88);
                      sub_100002BF0(v173, v82);

                      v170 = v88;
                      v171 = v82;
                      v169 = v85;
                      if (v94)
                      {
                        strcpy(v200, "signing-key ");
                        BYTE5(v200[1]) = 0;
                        HIWORD(v200[1]) = -5120;
                        swift_bridgeObjectRetain_n();
                        v95 = v177;
                        v199 = v177;

                        v96 = v94;
                        sub_100216A14(v168);
                        v97 = v200[0];
                        v98 = v200[1];
                        v99 = v185;

                        sub_100197B58(v97, v98, v168._countAndFlagsBits, v168._object, sub_1001AAA68, v191, v199, v168._countAndFlagsBits, v168._object, v194, a6, v96);

                        swift_bridgeObjectRelease_n();
                        sub_100002BF0(v169, v88);
                        sub_100002BF0(v173, v82);
                        v100 = v195;
                        v101 = v189;
                        v103 = v192;
                        v102 = v193;
                        v104 = v184;
                        v105 = v174;
LABEL_57:

                        swift_bridgeObjectRelease_n();

                        sub_100002BF0(v186, v187);
                        sub_100002BF0(v188, v99);
                        sub_100002BF0(v102, v103);
                        v108 = v100;
                        v109 = v101;
                        return sub_100002BF0(v108, v109);
                      }

                      if (qword_100297520 != -1)
                      {
                        swift_once();
                      }

                      v150 = sub_100216774();
                      sub_100002648(v150, qword_10029D160);

                      v151 = sub_100216754();
                      v152 = sub_100216C54();

                      v103 = v192;
                      if (os_log_type_enabled(v151, v152))
                      {
                        v153 = swift_slowAlloc();
                        v154 = swift_slowAlloc();
                        v200[0] = v154;
                        *v153 = 136446210;
                        sub_10000200C(0, &qword_10029D938, off_100275018);
                        v155 = sub_100216B34();
                        v157 = sub_100005FB0(v155, v156, v200);

                        *(v153 + 4) = v157;
                        _os_log_impl(&_mh_execute_header, v151, v152, "Couldn't parse self identity: %{public}s", v153, 0xCu);
                        sub_100006128(v154);
                      }

                      sub_1000561D0();
                      v158 = swift_allocError();
                      *v159 = xmmword_10021DA80;
                      *(v159 + 16) = 13;
                      swift_errorRetain();
                      v160 = sub_100216754();
                      v161 = sub_100216C74();

                      if (os_log_type_enabled(v160, v161))
                      {
                        v162 = swift_slowAlloc();
                        v163 = swift_slowAlloc();
                        v200[0] = v163;
                        *v162 = 136446210;
                        v201 = v158;
                        swift_errorRetain();
                        sub_10001148C(&qword_100297E80, &unk_1002265A0);
                        v164 = sub_100216994();
                        v166 = sub_100005FB0(v164, v165, v200);

                        *(v162 + 4) = v166;
                        _os_log_impl(&_mh_execute_header, v160, v161, "fetchAfterEstablish failed to update TLKs: %{public}s", v162, 0xCu);
                        sub_100006128(v163);
                      }

                      v101 = v189;
                      v100 = v195;
                      v102 = v193;
                      v104 = v184;
                      v167 = sub_100216144();
                      v105 = v174;
                      [v174 sendMetricWithResult:0 error:v167];

                      a3(0, 0, _swiftEmptyArrayStorage, 0, v158);

                      sub_100002BF0(v169, v170);
                      sub_100002BF0(v173, v171);
LABEL_56:
                      v99 = v185;
                      v95 = v177;
                      goto LABEL_57;
                    }

                    sub_100002BF0(v80, v82);
                  }
                }

                v103 = v192;
                if (qword_100297520 != -1)
                {
                  swift_once();
                }

                v136 = sub_100216774();
                sub_100002648(v136, qword_10029D160);
                v137 = sub_100216754();
                v138 = sub_100216C54();
                if (os_log_type_enabled(v137, v138))
                {
                  v139 = swift_slowAlloc();
                  *v139 = 0;
                  _os_log_impl(&_mh_execute_header, v137, v138, "Have no self identity, can't make tlk shares", v139, 2u);
                }

                sub_1000561D0();
                v140 = swift_allocError();
                *v141 = xmmword_10021DA90;
                *(v141 + 16) = 13;
                swift_errorRetain();
                v142 = sub_100216754();
                v143 = sub_100216C74();

                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v145 = swift_slowAlloc();
                  v200[0] = v145;
                  *v144 = 136446210;
                  v201 = v140;
                  swift_errorRetain();
                  sub_10001148C(&qword_100297E80, &unk_1002265A0);
                  v146 = sub_100216994();
                  v148 = sub_100005FB0(v146, v147, v200);

                  *(v144 + 4) = v148;
                  _os_log_impl(&_mh_execute_header, v142, v143, "fetchAfterEstablish failed to update TLKs: %{public}s", v144, 0xCu);
                  sub_100006128(v145);
                }

                v101 = v189;
                v100 = v195;
                v102 = v193;
                v104 = v184;
                v149 = sub_100216144();
                v105 = v174;
                [v174 sendMetricWithResult:0 error:v149];

                a3(0, 0, _swiftEmptyArrayStorage, 0, v140);

                goto LABEL_56;
              }

              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v128 = sub_100216774();
              sub_100002648(v128, qword_10029D160);
              v129 = sub_100216754();
              v130 = sub_100216C54();
              v114 = v195;
              if (os_log_type_enabled(v129, v130))
              {
                v131 = swift_slowAlloc();
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v129, v130, "cannot create TPPeerStableInfo", v131, 2u);
              }

              sub_1000561D0();
              swift_allocError();
              *v132 = xmmword_10021DC20;
              *(v132 + 16) = 13;
              v133 = sub_100216144();

              [a2 sendMetricWithResult:0 error:v133];

              v134 = swift_allocError();
              *v135 = xmmword_10021DC20;
              *(v135 + 16) = 13;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v134);

              sub_100002BF0(v186, v187);
              sub_100002BF0(v188, v185);
              v122 = v193;
              v123 = v192;
            }

            else
            {
              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v110 = v31;
              v111 = sub_100216774();
              sub_100002648(v111, qword_10029D160);

              v112 = sub_100216754();
              v113 = sub_100216C54();

              v114 = v195;
              if (os_log_type_enabled(v112, v113))
              {
                v115 = swift_slowAlloc();
                v116 = swift_slowAlloc();
                v200[0] = v116;
                *v115 = 136446210;
                v117 = sub_100005FB0(v190, v197, v200);

                *(v115 + 4) = v117;
                _os_log_impl(&_mh_execute_header, v112, v113, "fetchAfterEstablish: did not find peer %{public}s in model", v115, 0xCu);
                sub_100006128(v116);
              }

              else
              {
              }

              sub_1000561D0();
              swift_allocError();
              *v118 = xmmword_100225FE0;
              *(v118 + 16) = 13;
              v119 = sub_100216144();

              [a2 sendMetricWithResult:0 error:v119];

              v120 = swift_allocError();
              *v121 = xmmword_100225FE0;
              *(v121 + 16) = 13;
              a3(0, 0, _swiftEmptyArrayStorage, 0, v120);

              sub_100002BF0(v186, v187);
              sub_100002BF0(v188, v110);
              v123 = v192;
              v122 = v193;
            }

            sub_100002BF0(v122, v123);
            v108 = v114;
            v109 = v189;
            return sub_100002BF0(v108, v109);
          }

          sub_100002BF0(v29, v31);
          v53 = v192;
          v52 = v193;
        }

        else
        {

          v52 = v24;
          v53 = v26;
        }

        sub_100002BF0(v52, v53);
        v51 = v195;
      }

      else
      {

        v51 = v19;
      }

      sub_100002BF0(v51, v21);
    }

    else
    {
    }
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029D160);
  v55 = sub_100216754();
  v56 = sub_100216C54();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "fetchAfterEstablish: failed to fetch egoPeerID", v57, 2u);
  }

  sub_1000561D0();
  swift_allocError();
  *v58 = xmmword_10021DA90;
  *(v58 + 16) = 13;
  v59 = sub_100216144();

  [a2 sendMetricWithResult:0 error:v59];

  v60 = swift_allocError();
  *v61 = xmmword_10021DA90;
  *(v61 + 16) = 13;
  a3(0, 0, _swiftEmptyArrayStorage, 0, v60);
}

void sub_100129168(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, void *, id, uint64_t), int a5, int a6, id a7, void *a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v18 = sub_100216994();
      v20 = sub_100005FB0(v18, v19, &v35);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "fetchAfterEstablish failed to update TLKs: %{public}s", v16, 0xCu);
      sub_100006128(v17);
    }

    v21 = sub_100216144();
    [a3 sendMetricWithResult:0 error:v21];

    a4(0, 0, _swiftEmptyArrayStorage, 0, a2);
  }

  else
  {
    v23 = [a7 modelID];
    v24 = sub_100216974();
    v26 = v25;

    v27 = sub_100151404(v24, v26, a8);

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    v29 = sub_100216754();
    v30 = sub_100216C54();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "fetchAfterEstablish succeeded", v31, 2u);
    }

    [a3 sendMetricWithResult:1 error:0];
    if (a1)
    {
      v32 = a1;
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    v34 = v27;
    a4(a9, a10, v32, v27, 0);
  }
}

void sub_1001296AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void (*a11)(void, void, void *, void, uint64_t), uint64_t a12)
{
  v17 = kSecurityRTCEventNameOnqueueEstablishTPH;
  sub_1001A9F94();
  v19 = v18;
  v124 = a4;
  if (a5)
  {
    v20 = sub_100216964();
  }

  else
  {
    v20 = 0;
  }

  v125 = a6;
  if (a7)
  {
    v21 = sub_100216964();
    v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
LABEL_6:
      v23 = sub_100216964();
      goto LABEL_9;
    }
  }

  else
  {
    v21 = 0;
    v22 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
LABEL_9:
  LOBYTE(v111) = a10 & 1;
  v130 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v20 flowID:v21 deviceSessionID:v23 eventName:v17 testsAreEnabled:v19 canSendMetrics:v111 category:v22];

  v24 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v25 = [*&v12[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v25)
  {
LABEL_22:
    sub_1000561D0();
    swift_allocError();
    *v65 = xmmword_10021DA90;
    *(v65 + 16) = 13;
    v66 = sub_100216144();

    [v130 sendMetricWithResult:0 error:v66];

    v67 = swift_allocError();
    *v68 = xmmword_10021DA90;
    *(v68 + 16) = 13;
    a11(0, 0, _swiftEmptyArrayStorage, 0, v67);

    goto LABEL_23;
  }

  v26 = v25;
  v27 = sub_100216974();
  v29 = v28;

  v30 = [*&v12[v24] egoPeerPermanentInfo];
  if (!v30)
  {
LABEL_21:

    goto LABEL_22;
  }

  v31 = v30;
  v32 = sub_100216224();
  v34 = v33;

  v35 = [*&v12[v24] egoPeerPermanentInfoSig];
  if (!v35)
  {
LABEL_20:
    sub_100002BF0(v32, v34);
    goto LABEL_21;
  }

  v122 = v32;
  v36 = v35;
  v123 = sub_100216224();
  v38 = v37;

  v39 = [*&v12[v24] egoPeerStableInfo];
  if (!v39)
  {
LABEL_19:
    sub_100002BF0(v123, v38);
    v32 = v122;
    goto LABEL_20;
  }

  v118 = v27;
  v121 = v34;
  v40 = v39;
  v41 = sub_100216224();
  v43 = v42;

  v44 = [*&v12[v24] egoPeerStableInfoSig];
  if (!v44)
  {
    sub_100002BF0(v41, v43);
    v34 = v121;
    goto LABEL_19;
  }

  v112 = a7;
  v120 = v41;
  v45 = v44;
  v115 = sub_100216224();
  v116 = v46;

  v119 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v122, v121);
  sub_100012558(v123, v38);
  v113 = sub_100216964();

  isa = sub_100216204().super.isa;
  v117 = v38;
  v48 = sub_100216204().super.isa;
  v49 = [objc_opt_self() permanentInfoWithPeerID:v113 data:isa sig:v48 keyFactory:v119];

  sub_100002BF0(v123, v117);
  sub_100002BF0(v122, v121);

  if (v49)
  {
    v50 = objc_allocWithZone(TPPeerStableInfo);
    sub_100012558(v120, v43);
    sub_100012558(v115, v116);
    v51 = sub_100216204().super.isa;
    v52 = sub_100216204().super.isa;
    v53 = [v50 initWithData:v51 sig:v52];

    sub_100002BF0(v115, v116);
    sub_100002BF0(v120, v43);
    if (v53)
    {
      v114 = v53;
      v54 = [v49 machineID];
      v55 = sub_100216974();
      v57 = v56;

      LOBYTE(v54) = sub_1001E537C(v55, v57);

      if (v54)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = v130;
        *(v58 + 24) = a11;
        *(v58 + 32) = a12;
        *(v58 + 40) = v12;
        *(v58 + 48) = a1;
        *(v58 + 56) = v49;
        *(v58 + 64) = a2;
        *(v58 + 72) = v118;
        *(v58 + 80) = v29;
        *(v58 + 88) = v114;
        *(v58 + 96) = a3;
        *(v58 + 104) = v122;
        *(v58 + 112) = v121;
        *(v58 + 120) = v123;
        *(v58 + 128) = v117;
        *(v58 + 136) = v120;
        *(v58 + 144) = v43;
        *(v58 + 152) = v115;
        *(v58 + 160) = v116;
        *(v58 + 168) = v124;
        *(v58 + 176) = a5;
        *(v58 + 184) = v125;
        *(v58 + 192) = v112;
        *(v58 + 200) = a8;
        *(v58 + 208) = a9;
        *(v58 + 216) = a10 & 1;
        strcpy(v131, "signing-key ");
        BYTE5(v131[1]) = 0;
        HIWORD(v131[1]) = -5120;

        sub_100012558(v122, v121);
        sub_100012558(v123, v117);
        sub_100012558(v120, v43);
        sub_100012558(v115, v116);

        v59 = v130;

        v60 = v12;

        v61 = v49;

        v62 = v114;

        v133._countAndFlagsBits = v118;
        v133._object = v29;
        sub_100216A14(v133);

        sub_100198E8C(v131[0], v131[1], sub_1001AC244, v58, v118, v29);

        swift_bridgeObjectRelease_n();
        sub_100002BF0(v115, v116);
        v63 = v120;
        v64 = v43;
      }

      else
      {

        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v83 = sub_100216774();
        sub_100002648(v83, qword_10029D160);
        v84 = v49;
        v85 = sub_100216754();
        v86 = sub_100216C54();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v131[0] = v88;
          *v87 = 136446210;
          v89 = [v84 machineID];
          v90 = sub_100216974();
          v92 = v91;

          v93 = sub_100005FB0(v90, v92, v131);

          *(v87 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v85, v86, "establish: self machineID %{public}s not on list", v87, 0xCu);
          sub_100006128(v88);
        }

        else
        {
        }

        v94 = objc_allocWithZone(SecTapToRadar);
        v95 = sub_100216964();
        v96 = sub_100216964();
        v97 = sub_100216964();
        v98 = [v94 initTapToRadar:v95 description:v96 radar:v97];

        [v98 trigger];
        v99 = [v84 machineID];
        v100 = sub_100216974();
        v102 = v101;

        sub_1000561D0();
        swift_allocError();
        *v103 = v100;
        *(v103 + 8) = v102;
        *(v103 + 16) = 2;
        v104 = sub_100216144();

        [v130 sendMetricWithResult:0 error:v104];

        v105 = [v84 machineID];
        v106 = sub_100216974();
        v108 = v107;

        v109 = swift_allocError();
        *v110 = v106;
        *(v110 + 8) = v108;
        *(v110 + 16) = 2;
        a11(0, 0, _swiftEmptyArrayStorage, 0, v109);

        sub_100002BF0(v115, v116);
        v63 = v120;
        v64 = v43;
      }

      sub_100002BF0(v63, v64);
      v73 = v123;
    }

    else
    {

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v75 = sub_100216774();
      sub_100002648(v75, qword_10029D160);
      v76 = sub_100216754();
      v77 = sub_100216C54();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "cannot create TPPeerStableInfo", v78, 2u);
      }

      sub_1000561D0();
      swift_allocError();
      *v79 = xmmword_10021DC20;
      *(v79 + 16) = 13;
      v80 = sub_100216144();

      [v130 sendMetricWithResult:0 error:v80];

      v81 = swift_allocError();
      *v82 = xmmword_10021DC20;
      *(v82 + 16) = 13;
      a11(0, 0, _swiftEmptyArrayStorage, 0, v81);

      sub_100002BF0(v115, v116);
      sub_100002BF0(v120, v43);
      v73 = v123;
    }

    v74 = v117;
  }

  else
  {

    sub_1000561D0();
    swift_allocError();
    *v69 = xmmword_10021DA80;
    *(v69 + 16) = 13;
    v70 = sub_100216144();

    [v130 sendMetricWithResult:0 error:v70];

    v71 = swift_allocError();
    *v72 = xmmword_10021DA80;
    *(v72 + 16) = 13;
    a11(0, 0, _swiftEmptyArrayStorage, 0, v71);

    sub_100002BF0(v115, v116);
    sub_100002BF0(v120, v43);
    v73 = v123;
    v74 = v117;
  }

  sub_100002BF0(v73, v74);
  sub_100002BF0(v122, v121);
LABEL_23:
}

uint64_t sub_10012A3CC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void, void, void *, void, uint64_t), uint64_t a5, char *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v28 = a4;
  if (a1)
  {
    v54 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v29 = a1;
    v33 = swift_allocObject();
    *(v33 + 16) = a7;
    *(v33 + 24) = v29;
    *(v33 + 32) = a8;
    *(v33 + 40) = a9;
    *(v33 + 48) = a3;
    *(v33 + 56) = a4;
    *(v33 + 64) = a5;
    *(v33 + 72) = a6;
    *(v33 + 80) = a10;
    *(v33 + 88) = a11;
    *(v33 + 96) = a12;
    *(v33 + 104) = a13;
    *(v33 + 112) = a14;
    v28 = a15;
    *(v33 + 120) = a15;
    *(v33 + 128) = a16;
    *(v33 + 136) = a17;
    *(v33 + 144) = a18;
    *(v33 + 152) = a19;
    *(v33 + 160) = a20;
    *(v33 + 168) = a21;
    *(v33 + 176) = a22;
    *(v33 + 184) = a23;
    *(v33 + 192) = a24;
    *(v33 + 200) = a25;
    *(v33 + 208) = a26;
    *(v33 + 216) = a27;
    *(v33 + 224) = a28 & 1;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1001ACBC8;
    *(v34 + 24) = v33;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284098;
    v35 = _Block_copy(aBlock);

    v36 = v29;

    v37 = a8;

    v38 = a3;

    v39 = a6;

    v40 = a12;
    sub_100012558(a14, a15);
    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);

    [v54 performBlockAndWait:v35];

    _Block_release(v35);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if ((v29 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v42 = a2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v43 = sub_100216774();
  sub_100002648(v43, qword_10029D160);
  swift_errorRetain();
  v44 = sub_100216754();
  v45 = sub_100216C74();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136446210;
    aBlock[6] = v42;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v48 = sub_100216994();
    v50 = sub_100005FB0(v48, v49, aBlock);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "Don't have my own peer keys; can't establish: %{public}s", v46, 0xCu);
    sub_100006128(v47);
  }

  if (v42)
  {
    v51 = sub_100216144();
  }

  else
  {
    v51 = 0;
  }

  [a3 sendMetricWithResult:0 error:v51];

  return v28(0, 0, _swiftEmptyArrayStorage, 0, v42);
}

uint64_t sub_10012A8A4(unint64_t a1, void *a2, void *a3, unint64_t a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, char *a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, char *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, unsigned __int8 a27)
{
  v334 = a8;
  v335 = a5;
  v336 = a6;
  v337 = a7;
  v315 = type metadata accessor for EstablishRequest(0);
  v31 = *(*(v315 - 8) + 64);
  __chkstk_darwin(v315, v32);
  v322 = &v313 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v35 = *(*(v34 - 8) + 64);
  v37 = __chkstk_darwin(v34 - 8, v36);
  v321 = &v313 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v39);
  v314 = &v313 - v40;
  v319 = type metadata accessor for SignedPeerDynamicInfo(0);
  v317 = *(v319 - 8);
  v41 = *(v317 + 64);
  v43 = __chkstk_darwin(v319, v42);
  v320 = &v313 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43, v45);
  v313 = (&v313 - v46);
  v316 = type metadata accessor for Bottle(0);
  v47 = *(*(v316 - 8) + 64);
  v49 = __chkstk_darwin(v316, v48);
  v325 = &v313 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49, v51);
  v326 = &v313 - v52;
  v53 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v54 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53 - 8, v55);
  v329 = &v313 - v56;
  v328 = type metadata accessor for SignedPeerStableInfo(0);
  v57 = *(v328 - 8);
  v58 = *(v57 + 64);
  __chkstk_darwin(v328, v59);
  v330 = &v313 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TLKShare(0);
  isa = v61[-1].isa;
  v344 = v61;
  v62 = isa[8];
  v64 = __chkstk_darwin(v61, v63);
  v324 = &v313 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64, v66);
  v332 = &v313 - v67;
  v331 = type metadata accessor for Peer(0);
  v68 = *(*(v331 - 8) + 64);
  v70 = __chkstk_darwin(v331, v69);
  v323 = &v313 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v70, v72);
  v318 = &v313 - v74;
  v76 = __chkstk_darwin(v73, v75);
  v340 = &v313 - v77;
  __chkstk_darwin(v76, v78);
  v333 = (&v313 - v79);
  v80 = type metadata accessor for ViewKeys(0);
  v81 = *(v80 - 8);
  v82 = *(v81 + 64);
  v84 = __chkstk_darwin(v80, v83);
  v86 = &v313 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84, v87);
  v89 = &v313 - v88;
  v346 = a1;
  if (a1 >> 62)
  {
    v90 = sub_1002170F4();
  }

  else
  {
    v90 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = _swiftEmptyArrayStorage;
  v341 = a4;
  v339 = a3;
  v327 = v57;
  v338 = a2;
  if (v90)
  {
    v349 = _swiftEmptyArrayStorage;
    sub_100187848(0, v90 & ~(v90 >> 63), 0);
    v345 = v90;
    if (v90 < 0)
    {
      goto LABEL_104;
    }

    v92 = v349;
    *&v347 = v346 & 0xC000000000000001;
    if ((v346 & 0xC000000000000001) != 0)
    {
      v93 = 0;
      v90 = 0;
      do
      {
        v94 = sub_100217014();
        v311 = __chkstk_darwin(v94, v95);
        sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys);
        sub_100216654();
        swift_unknownObjectRelease();
        v349 = v92;
        v97 = v92[2];
        v96 = v92[3];
        if (v97 >= v96 >> 1)
        {
          sub_100187848(v96 > 1, v97 + 1, 1);
          v92 = v349;
        }

        v93 = (v93 + 1);
        v92[2] = v97 + 1;
        sub_1001AC038(v89, v92 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v97, type metadata accessor for ViewKeys);
      }

      while (v345 != v93);
    }

    else
    {
      v100 = (v346 + 32);
      v101 = sub_1001A13C4(&unk_10029D910, type metadata accessor for ViewKeys);
      v342 = v101;
      v90 = 0;
      v103 = v345;
      do
      {
        v104 = *v100;
        __chkstk_darwin(v101, v102);
        v311 = v105;
        v106 = v105;
        sub_100216654();

        v349 = v92;
        v108 = v92[2];
        v107 = v92[3];
        if (v108 >= v107 >> 1)
        {
          sub_100187848(v107 > 1, v108 + 1, 1);
          v92 = v349;
        }

        v92[2] = v108 + 1;
        v101 = sub_1001AC038(v86, v92 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v108, type metadata accessor for ViewKeys);
        ++v100;
        v103 = (v103 - 1);
      }

      while (v103);
    }

    v349 = _swiftEmptyArrayStorage;
    v109 = v345;
    sub_100217064();
    v110 = 0;
    v111 = v346;
    v99 = v340;
    do
    {
      if (v347)
      {
        v112 = sub_100217014();
      }

      else
      {
        v112 = *(v111 + 8 * v110 + 32);
      }

      v113 = v112;
      v110 = (v110 + 1);
      v114 = [v112 tlk];

      sub_100217044();
      v115 = v349[2];
      sub_100217074();
      sub_100217084();
      sub_100217054();
    }

    while (v109 != v110);
    v91 = v349;
    a4 = v341;
    a2 = v338;
    a3 = v339;
    v98 = v92;
  }

  else
  {
    v98 = _swiftEmptyArrayStorage;
    v99 = v340;
  }

  v116 = [a3 epoch];
  if (v116 < 0)
  {
    __break(1u);
LABEL_104:
    __break(1u);
    swift_once();
    v117 = sub_100216774();
    sub_100002648(v117, qword_10029D160);
    swift_errorRetain();
    v118 = sub_100216754();
    v119 = sub_100216C74();

    if (!os_log_type_enabled(v118, v119))
    {
      goto LABEL_46;
    }

    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v349 = v121;
    *v120 = 136446210;
    v348 = v90;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v122 = sub_100216994();
    v124 = sub_100005FB0(v122, v123, &v349);

    *(v120 + 4) = v124;
    v125 = "Unable to make TLKShares for self: %{public}s";
    goto LABEL_45;
  }

  v345 = sub_10010C3CC(v91, a2, a2, v116);

  if (a4 >> 62)
  {
    v126 = sub_1002170F4();
  }

  else
  {
    v126 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v127 = v332;
  *&v347 = v98;
  if (!v126)
  {
    v128 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v349 = _swiftEmptyArrayStorage;
  sub_100187804(0, v126 & ~(v126 >> 63), 0);
  if (v126 < 0)
  {
    __break(1u);
    swift_once();
    v144 = sub_100216774();
    sub_100002648(v144, qword_10029D160);
    swift_errorRetain();
    v118 = sub_100216754();
    v119 = sub_100216C74();

    if (!os_log_type_enabled(v118, v119))
    {
      goto LABEL_46;
    }

    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v349 = v121;
    *v120 = 136446210;
    v348 = 0;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v145 = sub_100216994();
    v147 = sub_100005FB0(v145, v146, &v349);

    *(v120 + 4) = v147;
    v125 = "Unable to create peer for joining: %{public}s";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v118, v119, v125, v120, 0xCu);
    sub_100006128(v121);

LABEL_46:

    v148 = sub_100216144();
    [v335 sendMetricWithResult:0 error:v148];

    swift_errorRetain();
    v336(0, 0, _swiftEmptyArrayStorage, 0, v90);
  }

  v128 = v349;
  if ((a4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v126; ++i)
    {
      v130 = sub_100217014();
      v311 = __chkstk_darwin(v130, v131);
      sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
      sub_100216654();
      swift_unknownObjectRelease();
      v349 = v128;
      v133 = v128[2];
      v132 = v128[3];
      if (v133 >= v132 >> 1)
      {
        sub_100187804(v132 > 1, v133 + 1, 1);
        v128 = v349;
      }

      v128[2] = v133 + 1;
      sub_1001AC038(v127, v128 + ((*(isa + 80) + 32) & ~*(isa + 80)) + isa[9] * v133, type metadata accessor for TLKShare);
    }
  }

  else
  {
    v134 = (a4 + 32);
    v135 = sub_1001A13C4(&qword_1002987A8, type metadata accessor for TLKShare);
    v137 = v324;
    do
    {
      v138 = *v134;
      __chkstk_darwin(v135, v136);
      v311 = v139;
      v140 = v139;
      sub_100216654();

      v349 = v128;
      v142 = v128[2];
      v141 = v128[3];
      if (v142 >= v141 >> 1)
      {
        sub_100187804(v141 > 1, v142 + 1, 1);
        v128 = v349;
      }

      v128[2] = v142 + 1;
      v135 = sub_1001AC038(v137, v128 + ((*(isa + 80) + 32) & ~*(isa + 80)) + isa[9] * v142, type metadata accessor for TLKShare);
      ++v134;
      --v126;
    }

    while (v126);
  }

  v99 = v340;
LABEL_42:
  v349 = v345;
  sub_10011028C(v128);
  v143 = v349;
  v150 = sub_100156564(v99, a9, a10, v339, a11, 0, 0, a12, _swiftEmptyArrayStorage, v338);
  isa = v143;
  v151 = v333;
  sub_1001AC038(v99, v333, type metadata accessor for Peer);
  v152 = qword_100297520;
  v153 = v150;
  if (v152 != -1)
  {
    swift_once();
  }

  v154 = sub_100216774();
  v155 = sub_100002648(v154, qword_10029D160);
  v156 = v153;
  v345 = v155;
  v157 = sub_100216754();
  v158 = sub_100216C54();

  v159 = os_log_type_enabled(v157, v158);
  v342 = a9;
  v344 = v156;
  if (v159)
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v160 = 138543362;
    *(v160 + 4) = v156;
    *v161 = v156;
    _os_log_impl(&_mh_execute_header, v157, v158, "dynamic info: %{public}@", v160, 0xCu);
    sub_1000114D4(v161, &qword_10029D580, &unk_10021CCC0);
  }

  else
  {

    v157 = v156;
  }

  v162 = v330;
  v163 = v329;
  v164 = v328;

  sub_100019C6C(v151 + *(v331 + 32), v163, &qword_1002985A8, &unk_100226650);
  v165 = *(v327 + 48);
  if (v165(v163, 1, v164) == 1)
  {
    *v162 = xmmword_10021D470;
    *(v162 + 16) = xmmword_10021D470;
    v166 = v162 + *(v164 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v165(v163, 1, v164) != 1)
    {
      sub_1000114D4(v163, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v163, v162, type metadata accessor for SignedPeerStableInfo);
  }

  v167 = *v162;
  v168 = *(v162 + 8);
  v169 = *(v162 + 16);
  v170 = *(v162 + 24);
  v171 = objc_allocWithZone(TPPeerStableInfo);
  v172 = sub_100216204().super.isa;
  v173 = sub_100216204().super.isa;
  v174 = [v171 initWithData:v172 sig:v173];

  sub_1001AC1E4(v162, type metadata accessor for SignedPeerStableInfo);
  if (!v174)
  {

    v177 = sub_100216754();
    v178 = sub_100216C54();
    v179 = os_log_type_enabled(v177, v178);
    v180 = v344;
    if (v179)
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&_mh_execute_header, v177, v178, "Unable to create new peer stable info for joining", v181, 2u);
    }

    sub_1000561D0();
    swift_allocError();
    v347 = xmmword_10021DC20;
    *v182 = xmmword_10021DC20;
    *(v182 + 16) = 13;
    v183 = sub_100216144();

    [v335 sendMetricWithResult:0 error:v183];

    v184 = swift_allocError();
    *v185 = v347;
    *(v185 + 16) = 13;
    v336(0, 0, _swiftEmptyArrayStorage, 0, v184);

    return sub_1001AC1E4(v333, type metadata accessor for Peer);
  }

  v175 = v325;
  v176 = v342;
  sub_10017B39C(v342, a10, v325);
  v340 = a15;
  sub_1001AC038(v175, v326, type metadata accessor for Bottle);

  v186 = sub_100216754();
  v187 = sub_100216C54();

  v188 = os_log_type_enabled(v186, v187);
  v332 = a10;
  v330 = v174;
  if (v188)
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v349 = v190;
    *v189 = 136446210;
    *(v189 + 4) = sub_100005FB0(v176, a10, &v349);
    _os_log_impl(&_mh_execute_header, v186, v187, "Beginning establish for peer %{public}s", v189, 0xCu);
    sub_100006128(v190);
  }

  v338 = a18;
  sub_100012558(a13, a14);
  v191 = sub_100216754();
  v192 = sub_100216C54();
  sub_100002BF0(a13, a14);
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v349 = v194;
    *v193 = 136446210;
    v195 = sub_100216214(0);
    v197 = sub_100005FB0(v195, v196, &v349);

    *(v193 + 4) = v197;
    _os_log_impl(&_mh_execute_header, v191, v192, "Establish permanentInfo: %{public}s", v193, 0xCu);
    sub_100006128(v194);
  }

  v198 = v340;
  sub_100012558(v340, a16);
  v199 = sub_100216754();
  v200 = sub_100216C54();
  sub_100002BF0(v198, a16);
  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v349 = v202;
    *v201 = 136446210;
    v203 = sub_100216214(0);
    v205 = sub_100005FB0(v203, v204, &v349);

    *(v201 + 4) = v205;
    _os_log_impl(&_mh_execute_header, v199, v200, "Establish permanentInfoSig: %{public}s", v201, 0xCu);
    sub_100006128(v202);
  }

  v340 = 0;
  v206 = v338;
  sub_100012558(a17, v338);
  v207 = sub_100216754();
  v208 = sub_100216C54();
  sub_100002BF0(a17, v206);
  if (os_log_type_enabled(v207, v208))
  {
    v209 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v349 = v210;
    *v209 = 136446210;
    v211 = sub_100216214(0);
    v213 = sub_100005FB0(v211, v212, &v349);

    *(v209 + 4) = v213;
    _os_log_impl(&_mh_execute_header, v207, v208, "Establish stableInfo: %{public}s", v209, 0xCu);
    sub_100006128(v210);
  }

  v214 = v319;
  v215 = v323;
  sub_100012558(a19, a20);
  v216 = sub_100216754();
  v217 = sub_100216C54();
  sub_100002BF0(a19, a20);
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    v219 = swift_slowAlloc();
    v349 = v219;
    *v218 = 136446210;
    v220 = sub_100216214(0);
    v222 = sub_100005FB0(v220, v221, &v349);

    *(v218 + 4) = v222;
    _os_log_impl(&_mh_execute_header, v216, v217, "Establish stableInfoSig: %{public}s", v218, 0xCu);
    sub_100006128(v219);
  }

  v223 = v321;
  v224 = v320;
  v225 = v318;
  v226 = v333;
  sub_1001AC0A0(v333, v318, type metadata accessor for Peer);
  v227 = sub_100216754();
  v228 = sub_100216C54();
  if (os_log_type_enabled(v227, v228))
  {
    v229 = v225;
    v230 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v349 = v231;
    *v230 = 136446210;
    v232 = v314;
    sub_100019C6C(v229 + *(v331 + 36), v314, &unk_10029D760, &qword_10021E810);
    v233 = *(v317 + 48);
    if (v233(v232, 1, v214) == 1)
    {
      v234 = v313;
      *v313 = xmmword_10021D470;
      v234[1] = xmmword_10021D470;
      v235 = v234 + *(v214 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v233(v232, 1, v214) != 1)
      {
        sub_1000114D4(v232, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      v234 = v313;
      sub_1001AC038(v232, v313, type metadata accessor for SignedPeerDynamicInfo);
    }

    v236 = *v234;
    v237 = *(v234 + 1);
    sub_100012558(*v234, v237);
    sub_1001AC1E4(v234, type metadata accessor for SignedPeerDynamicInfo);
    v238 = sub_100216214(0);
    v240 = v239;
    sub_100002BF0(v236, v237);
    sub_1001AC1E4(v318, type metadata accessor for Peer);
    v241 = sub_100005FB0(v238, v240, &v349);

    *(v230 + 4) = v241;
    _os_log_impl(&_mh_execute_header, v227, v228, "Establish dynamicInfo: %{public}s", v230, 0xCu);
    sub_100006128(v231);

    v226 = v333;
    v223 = v321;
    v224 = v320;
    v214 = v319;
    v215 = v323;
  }

  else
  {

    sub_1001AC1E4(v225, type metadata accessor for Peer);
  }

  sub_1001AC0A0(v226, v215, type metadata accessor for Peer);
  v242 = sub_100216754();
  v243 = sub_100216C54();
  if (os_log_type_enabled(v242, v243))
  {
    v244 = swift_slowAlloc();
    v245 = swift_slowAlloc();
    v349 = v245;
    *v244 = 136446210;
    sub_100019C6C(v215 + *(v331 + 36), v223, &unk_10029D760, &qword_10021E810);
    v246 = *(v317 + 48);
    if (v246(v223, 1, v214) == 1)
    {
      *v224 = xmmword_10021D470;
      *(v224 + 16) = xmmword_10021D470;
      v247 = v224 + *(v214 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v248 = v246(v223, 1, v214);
      v249 = v340;
      if (v248 != 1)
      {
        sub_1000114D4(v223, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      sub_1001AC038(v223, v224, type metadata accessor for SignedPeerDynamicInfo);
      v249 = v340;
    }

    v250 = *(v224 + 16);
    v251 = *(v224 + 24);
    sub_100012558(v250, v251);
    sub_1001AC1E4(v224, type metadata accessor for SignedPeerDynamicInfo);
    v252 = sub_100216214(0);
    v254 = v253;
    sub_100002BF0(v250, v251);
    sub_1001AC1E4(v323, type metadata accessor for Peer);
    v255 = sub_100005FB0(v252, v254, &v349);

    *(v244 + 4) = v255;
    _os_log_impl(&_mh_execute_header, v242, v243, "Establish dynamicInfoSig: %{public}s", v244, 0xCu);
    sub_100006128(v245);
  }

  else
  {

    sub_1001AC1E4(v215, type metadata accessor for Peer);
    v249 = v340;
  }

  v256 = v347;

  v257 = isa;

  v258 = sub_100216754();
  v259 = sub_100216C54();
  if (os_log_type_enabled(v258, v259))
  {
    v260 = swift_slowAlloc();
    *v260 = 134218240;
    *(v260 + 4) = *(v256 + 16);

    *(v260 + 12) = 2048;
    *(v260 + 14) = v257[2];

    _os_log_impl(&_mh_execute_header, v258, v259, "Establish introducing %ld key sets, %ld tlk shares", v260, 0x16u);
  }

  else
  {
  }

  LODWORD(v328) = a27;
  v327 = a25;
  v325 = a23;
  v324 = a21;
  sub_1001A13C4(&qword_100298C58, type metadata accessor for Bottle);
  v261 = sub_100216624();
  v263 = v342;
  v340 = a24;
  v338 = a22;
  v329 = a26;
  if (v249)
  {
    swift_errorRetain();
    v274 = sub_100216754();
    v275 = sub_100216C74();

    if (!os_log_type_enabled(v274, v275))
    {

      goto LABEL_97;
    }

    v276 = swift_slowAlloc();
    v277 = swift_slowAlloc();
    v349 = v277;
    *v276 = 136446210;
    v348 = v249;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v278 = sub_100216994();
    v280 = sub_100005FB0(v278, v279, &v349);

    *(v276 + 4) = v280;
    _os_log_impl(&_mh_execute_header, v274, v275, "Establish unable to encode bottle/peer: %{public}s", v276, 0xCu);
    sub_100006128(v277);
  }

  else
  {
    v264 = v261;
    v265 = v262;
    v266 = sub_100216214(0);
    v268 = v267;
    sub_100002BF0(v264, v265);

    v269 = sub_100216754();
    v270 = sub_100216C54();

    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v349 = v272;
      *v271 = 136446210;
      v273 = sub_100005FB0(v266, v268, &v349);

      *(v271 + 4) = v273;
      _os_log_impl(&_mh_execute_header, v269, v270, "Establish bottle: %{public}s", v271, 0xCu);
      sub_100006128(v272);
    }

    else
    {
    }

    sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer);
    v301 = sub_100216624();
    v303 = v302;
    v304 = sub_100216214(0);
    v306 = v305;
    sub_100002BF0(v301, v303);

    v274 = sub_100216754();
    v307 = sub_100216C54();

    if (os_log_type_enabled(v274, v307))
    {
      v308 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      v349 = v309;
      *v308 = 136446210;
      v310 = sub_100005FB0(v304, v306, &v349);

      *(v308 + 4) = v310;
      _os_log_impl(&_mh_execute_header, v274, v307, "Establish peer: %{public}s", v308, 0xCu);
      sub_100006128(v309);
    }

    else
    {
    }
  }

LABEL_97:
  __chkstk_darwin(v281, v282);
  v283 = v326;
  *(&v313 - 4) = v333;
  *(&v313 - 3) = v283;
  v284 = v347;
  v311 = v347;
  v312 = isa;
  sub_1001A13C4(&unk_10029D920, type metadata accessor for EstablishRequest);
  sub_100216654();

  v285 = v334;
  v286 = *&v334[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  v345 = *&v334[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  isa = sub_100006484(&v334[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v345);
  v287 = swift_allocObject();
  *(v287 + 16) = v284;
  *(v287 + 24) = v285;
  v288 = v339;
  v289 = v330;
  *(v287 + 32) = v339;
  *(v287 + 40) = v289;
  v291 = v335;
  v290 = v336;
  *(v287 + 48) = v335;
  *(v287 + 56) = v290;
  *(v287 + 64) = v337;
  *(v287 + 72) = v263;
  v292 = v346;
  *(v287 + 80) = v332;
  *(v287 + 88) = v292;
  v293 = v324;
  *(v287 + 96) = v341;
  *(v287 + 104) = v293;
  v294 = v325;
  *(v287 + 112) = v338;
  *(v287 + 120) = v294;
  v295 = v327;
  *(v287 + 128) = v340;
  *(v287 + 136) = v295;
  *(v287 + 144) = v329;
  *(v287 + 152) = v328 & 1;
  v342 = *(v286 + 16);
  *&v347 = *(v342 + 16);

  v296 = v285;
  v297 = v288;
  v298 = v289;
  v299 = v291;

  v300 = v322;
  (v347)(v322, sub_1001AA978, v287, v345, v342);

  sub_1001AC1E4(v300, type metadata accessor for EstablishRequest);
  sub_1001AC1E4(v326, type metadata accessor for Bottle);
  return sub_1001AC1E4(v333, type metadata accessor for Peer);
}