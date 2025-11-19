uint64_t sub_10005FC1C(id a1, void *a2)
{
  v3 = v2;
  if (qword_100297248 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = sub_100216774();
    v39 = sub_100002648(v6, qword_100297F80);
    v7 = sub_100216754();
    v8 = sub_100216C64();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "onqueueRemoveDuplicateOrInvalidCRKs start", v9, 2u);
    }

    v10 = [objc_allocWithZone(TPECPublicKeyFactory) init];
    v43 = &_swiftEmptySetSingleton;
    v42 = _swiftEmptyArrayStorage;
    v40 = objc_autoreleasePoolPush();
    v11 = objc_allocWithZone(NSFetchRequest);
    v12 = sub_100216964();
    v13 = [v11 initWithEntityName:v12];

    sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
    sub_10001148C(&qword_100297D30, &qword_1002270B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10021D600;
    *(v14 + 56) = type metadata accessor for ContainerMO();
    *(v14 + 64) = sub_1000061C0(&qword_10029D5B0, type metadata accessor for ContainerMO);
    *(v14 + 32) = a1;
    v15 = a1;
    v16 = sub_100216C34();
    [v13 setPredicate:v16];

    v17 = [v13 setFetchBatchSize:10];
    __chkstk_darwin(v17, v18);
    v36[2] = a2;
    v36[3] = v10;
    v36[4] = &v43;
    v36[5] = &v42;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    __chkstk_darwin(v19, v20);
    v21 = a2;
    sub_100109320(v13, sub_1000601F8, v36, sub_100060220);
    if (v3)
    {

      goto LABEL_22;
    }

    v36[7] = 0;

    v22 = v42;
    v37 = v13;
    v38 = v10;
    a2 = v42 >> 62 ? sub_1002170F4() : *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a1 = v21;
    if (!a2)
    {
      break;
    }

    v23 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = sub_100217014();
      }

      else
      {
        if (v23 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v24 = *(v22 + 8 * v23 + 32);
      }

      v25 = v24;
      v3 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [a1 deleteObject:v24];

      ++v23;
      if (v3 == a2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_17:

  v41 = 0;
  if ([a1 save:&v41])
  {
    v26 = v41;

    objc_autoreleasePoolPop(v40);
  }

  v28 = v41;
  sub_100216154();

  swift_willThrow();
  swift_errorRetain();
  v29 = sub_100216754();
  v30 = sub_100216C74();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v37;
  v10 = v38;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138543362;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "CRK cleanup unable to save %{public}@", v33, 0xCu);
    sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);
  }

  swift_willThrow();
LABEL_22:
  objc_autoreleasePoolPop(v40);
}

unint64_t sub_10006023C()
{
  result = qword_100297FA0;
  if (!qword_100297FA0)
  {
    sub_100011534(&qword_100297F98, &qword_10021DC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297FA0);
  }

  return result;
}

uint64_t sub_1000602B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000602D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100012558(a1, a2);
  }

  return a1;
}

uint64_t sub_1000602E4(uint64_t a1, uint64_t (*a2)(void, void, void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (qword_100297248 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_100297F80);
    swift_errorRetain();
    v12 = sub_100216754();
    v13 = sub_100216C54();

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
      _os_log_impl(&_mh_execute_header, v12, v13, "preflightRecoveryKey unable to fetch policy documents: %{public}s", v14, 0xCu);
      sub_100006128(v15);
    }

    return a2(0, 0, 0, a1);
  }

  else
  {
    v24 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v26 = swift_allocObject();
    v26[2] = a4;
    v26[3] = a2;
    v26[4] = a3;
    v26[5] = a5;
    v26[6] = a6;
    v26[7] = a7;
    v26[8] = a8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_100060A80;
    *(v27 + 24) = v26;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_10027F540;
    v28 = _Block_copy(aBlock);
    v29 = a4;

    [v24 performBlockAndWait:v28];
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000605F8(uint64_t a1, uint64_t (*a2)(void, void, void, uint64_t), uint64_t a3, char *a4, void *a5)
{
  if (a1)
  {
    if (qword_100297248 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_100297F80);
    swift_errorRetain();
    v9 = sub_100216754();
    v10 = sub_100216C54();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v13 = sub_100216994();
      v15 = sub_100005FB0(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "preflightCustodianRecoveryKey unable to fetch policy documents: %{public}s", v11, 0xCu);
      sub_100006128(v12);
    }

    return a2(0, 0, 0, a1);
  }

  else
  {
    v18 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v20 = swift_allocObject();
    v20[2] = a4;
    v20[3] = a2;
    v20[4] = a3;
    v20[5] = a5;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_100060940;
    *(v21 + 24) = v20;
    aBlock[4] = sub_1000574B4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_10027F338;
    v22 = _Block_copy(aBlock);
    v23 = a4;

    v24 = a5;

    [v18 performBlockAndWait:v22];
    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10006094C()
{
  result = qword_100297E88;
  if (!qword_100297E88)
  {
    sub_10000200C(255, &qword_100297D68, TPPolicyVersion_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100297E88);
  }

  return result;
}

uint64_t sub_100060A04()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100060AAC()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_100297FB0);
  sub_100002648(v0, qword_100297FB0);
  return sub_100216764();
}

uint64_t sub_100060B2C(void *a1, void *a2, char a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v21 = a4;
  swift_errorRetain();
  swift_errorRetain();
  sub_10001148C(&unk_10029D560, qword_10021D450);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v7 = v20;
    v8 = sub_1002168B4();
    if (v8)
    {
      v9 = v8;
      *&v18[0] = v20;
      sub_10007B900(&qword_100298530, type metadata accessor for CKError);
      sub_100216104();
      if (v19 == a1)
      {
        *&v18[0] = v9;
        type metadata accessor for CKUnderlyingError(0);
        sub_10007B900(&qword_100297890, type metadata accessor for CKUnderlyingError);
        sub_100216104();
        if (v19 == a2)
        {
          if ((a3 & 1) == 0)
          {

            return 1;
          }

          v19 = v9;
          v10 = sub_100216124();
          v11 = sub_100216974();
          if (*(v10 + 16))
          {
            v13 = sub_100015A28(v11, v12);
            v15 = v14;

            if (v15)
            {
              sub_1000060A0(*(v10 + 56) + 32 * v13, v18);

              v16 = 0;
LABEL_18:
              sub_1000114D4(v18, &unk_100297770, &unk_10021DF90);

              return v16;
            }
          }

          else
          {
          }

          memset(v18, 0, sizeof(v18));
          v16 = 1;
          goto LABEL_18;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

BOOL sub_100060DD4(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v20 = a3;
  swift_errorRetain();
  swift_errorRetain();
  sub_10001148C(&unk_10029D560, qword_10021D450);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v5 = v19;
  *&v18[0] = v19;
  sub_10007B900(&qword_100298530, type metadata accessor for CKError);
  sub_100216104();
  if (*&v16[0] != a1)
  {
LABEL_12:

LABEL_13:

    goto LABEL_14;
  }

  v17 = v19;
  v6 = sub_100216124();
  v7 = sub_100216974();
  if (!*(v6 + 16))
  {

LABEL_10:

LABEL_14:

    return 0;
  }

  v9 = sub_100015A28(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1000060A0(*(v6 + 56) + 32 * v9, v16);

  sub_1000125AC(v16, v18);
  sub_1000060A0(v18, v16);
  sub_10000200C(0, &qword_100297CE8, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100006128(v18);
    goto LABEL_12;
  }

  v12 = v17;
  v13 = v17;
  v14 = sub_100061030(a2, v12);

  sub_100006128(v18);

  return v14;
}

BOOL sub_100061030(id a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  swift_errorRetain();
  swift_errorRetain();
  sub_10001148C(&unk_10029D560, qword_10021D450);
  sub_10000200C(0, &qword_100297CE8, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_11;
  }

  v3 = [v12 domain];
  v4 = sub_100216974();
  v6 = v5;

  if (v4 == sub_100216974() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1002171A4();

    if ((v9 & 1) == 0)
    {

LABEL_11:

      return 0;
    }
  }

  v11 = [v12 code];

  return v11 == a1;
}

unint64_t sub_10006120C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_100216AB4() != a1 || v9 != a2)
  {
    v10 = sub_1002171A4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1002169E4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

id RetryingCKCodeService.invokeRetry<A, B>(deadline:minimumDelay:functionName:deviceSessionID:flowID:attemptNumber:startTime:operationCreator:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, double a9, unint64_t a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v117 = a8;
  v128 = a7;
  v129 = a3;
  v124 = a5;
  v125 = a6;
  v126 = a4;
  v127 = a2;
  v116 = a1;
  v21 = sub_1002167E4();
  v121 = *(v21 - 8);
  v22 = *(v121 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100216824();
  v120 = *(v26 - 8);
  v27 = *(v120 + 64);
  __chkstk_darwin(v26, v28);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100216384();
  v115 = *(v31 - 8);
  v32 = *(v115 + 64);
  v34 = __chkstk_darwin(v31, v33);
  v123 = &v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v35;
  v37 = __chkstk_darwin(v34, v36);
  v122 = &v98 - v38;
  v118 = a11;
  v119 = a12;
  v39 = a11(v37);
  result = [v39 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = result;
  v113 = v31;
  [result setIsCloudKitSupportOperation:1];

  result = [v39 configuration];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v42 = result;
  v109 = v30;
  v43 = sub_100216964();
  [v42 setApplicationBundleIdentifierOverride:v43];

  v44 = swift_allocObject();
  v45 = v129;
  *(v44 + 16) = v127;
  *(v44 + 24) = v45;
  v135 = sub_1000786E0;
  v136 = v44;
  aBlock = _NSConcreteStackBlock;
  v132 = 1107296256;
  v133 = sub_100061E54;
  v134 = &unk_10027F590;
  v46 = _Block_copy(&aBlock);

  v106 = v44;

  [v39 setRequestCompletedBlock:v46];
  _Block_release(v46);
  v107 = v39;

  v47 = v124;
  v112 = v21;
  v111 = v26;
  v110 = v25;
  v48 = 0;
  if (v128)
  {
    v49 = HIBYTE(v128) & 0xF;
    if ((v128 & 0x2000000000000000) == 0)
    {
      v49 = v125 & 0xFFFFFFFFFFFFLL;
    }

    if (v49 && v124)
    {
      v50 = HIBYTE(v124) & 0xF;
      if ((v124 & 0x2000000000000000) == 0)
      {
        v50 = v126 & 0xFFFFFFFFFFFFLL;
      }

      v48 = v50 != 0;
    }
  }

  v104 = a10;
  v51 = [*(*sub_100006484((v19 + 16) *(v19 + 40)) + 32)];
  sub_100216974();

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v127, v129);
  sub_100078700();
  v53 = v52;
  v54 = sub_100216964();

  if (v128)
  {
    v55 = sub_100216964();
  }

  else
  {
    v55 = 0;
  }

  v102 = a18;
  v101 = a17;
  v100 = a16;
  v99 = a15;
  v105 = a14;
  v103 = a13;
  v56 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  v108 = v19;
  if (v47)
  {
    v57 = sub_100216964();
  }

  else
  {
    v57 = 0;
  }

  v58 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v59 = sub_100216964();

  LOBYTE(v97) = v48;
  v60 = [v58 initWithKeychainCircleMetrics:0 altDSID:v54 flowID:v55 deviceSessionID:v57 eventName:v59 testsAreEnabled:v53 canSendMetrics:v97 category:v56];
  v98 = v60;

  v61 = v115;
  v62 = *(v115 + 16);
  v63 = v113;
  v62(v122, v104, v113);
  v62(v123, v116, v63);
  v64 = *(v61 + 80);
  v65 = (v64 + 64) & ~v64;
  v66 = (v114 + 7 + v65) & 0xFFFFFFFFFFFFFFF8;
  v67 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v64 + v67 + 8) & ~v64;
  v69 = (v114 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v72 = v100;
  *(v71 + 2) = v99;
  *(v71 + 3) = v72;
  v73 = v102;
  *(v71 + 4) = v101;
  *(v71 + 5) = v73;
  v74 = v117;
  *(v71 + 6) = v60;
  *(v71 + 7) = v74;
  v75 = *(v61 + 32);
  v75(&v71[v65], v122, v63);
  v76 = &v71[v66];
  v77 = v105;
  *v76 = v103;
  *(v76 + 1) = v77;
  *&v71[v67] = a9;
  v75(&v71[v68], v123, v63);
  v78 = &v71[v69];
  v79 = v126;
  v80 = v128;
  v81 = v129;
  *v78 = v127;
  *(v78 + 1) = v81;
  v82 = v108;
  *&v71[v116] = v108;
  v83 = &v71[v70];
  v84 = v124;
  *v83 = v79;
  *(v83 + 1) = v84;
  v85 = &v71[v114];
  *v85 = v125;
  *(v85 + 1) = v80;
  v86 = &v71[v104];
  v87 = v119;
  *v86 = v118;
  *(v86 + 1) = v87;

  v88 = v98;

  v89 = v107;
  sub_1002163E4();
  v90 = *(v82 + 56);
  v91 = swift_allocObject();
  *(v91 + 16) = v89;
  *(v91 + 24) = v82;
  v135 = sub_10007BCC0;
  v136 = v91;
  aBlock = _NSConcreteStackBlock;
  v132 = 1107296256;
  v133 = sub_100063B78;
  v134 = &unk_10027F608;
  v92 = _Block_copy(&aBlock);
  v93 = v89;

  v94 = v109;
  sub_100216804();
  v130 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v95 = v110;
  v96 = v112;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v92);

  (*(v121 + 8))(v95, v96);
  (*(v120 + 8))(v94, v111);
}

void sub_100061C54(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v5 = [a1 requestUUID];
    v6 = sub_100216974();
    v8 = v7;

    if (qword_100297250 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_100297FB0);

    oslog = sub_100216754();
    v10 = sub_100216C54();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_100005FB0(a2, a3, &v14);
      *(v11 + 12) = 2082;
      v12 = sub_100005FB0(v6, v8, &v14);

      *(v11 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v10, "ckoperation request finished: %{public}s %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100061E54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100061EC0(uint64_t a1, void *a2, char *a3, char *a4, void (*a5)(unint64_t), void (*a6)(unint64_t), unint64_t a7, uint64_t a8, double a9, unint64_t a10, uint64_t a11, char *a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t (*a16)(uint64_t), uint64_t (*a17)(uint64_t), uint64_t *a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v218 = a8;
  v219 = a7;
  v223 = a6;
  v224 = a4;
  v221 = a5;
  v222 = a2;
  v225 = a3;
  v29 = sub_1002167E4();
  v212 = *(v29 - 8);
  v30 = *(v212 + 64);
  __chkstk_darwin(v29, v31);
  v210 = &v187 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_100216824();
  v209 = *(v211 - 8);
  v33 = *(v209 + 64);
  __chkstk_darwin(v211, v34);
  v208 = &v187 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_100216384();
  v36 = *(v226 - 8);
  v37 = *(v36 + 64);
  v39 = __chkstk_darwin(v226, v38);
  v214 = &v187 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v39, v41);
  v213 = &v187 - v43;
  v45 = __chkstk_darwin(v42, v44);
  v215 = &v187 - v46;
  v48 = __chkstk_darwin(v45, v47);
  v216 = &v187 - v49;
  v51 = __chkstk_darwin(v48, v50);
  v217 = &v187 - v52;
  v207 = v53;
  __chkstk_darwin(v51, v54);
  v56 = &v187 - v55;
  v57 = sub_10001148C(a18, a19);
  v58 = *(*(v57 - 8) + 64);
  v60 = __chkstk_darwin(v57, v59);
  v62 = (&v187 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v60, v63);
  v65 = (&v187 - v64);
  v220 = a1;
  sub_100019C6C(a1, &v187 - v64, a18, a19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001148C(&qword_1002983D8, &unk_10021DE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    v228 = sub_100216974();
    v229 = v91;
    sub_100216F74();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = v225;
    v228 = sub_100216974();
    v229 = v92;
    sub_100216F74();
    sub_100216374();
    sub_100216244();
    v94 = v93;
    (*(v36 + 8))(v56, v226);
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v94;
    sub_100019254(inited);
    swift_setDeallocating();
    sub_10001148C(&unk_1002983E0, &qword_10021D708);
    swift_arrayDestroy();
    isa = sub_1002168C4().super.isa;

    v96 = v222;
    [v222 addMetrics:isa];

    [v96 sendMetricWithResult:1 error:0];
    v221(v220);
    v97 = v65;
    v98 = a18;
    v99 = a19;
LABEL_14:
    sub_1000114D4(v97, v98, v99);
    return;
  }

  v206 = a18;
  v220 = a19;
  v204 = v29;
  v66 = v36;
  v67 = *v65;
  sub_10001148C(&qword_1002983D8, &unk_10021DE60);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_10021D420;
  v228 = sub_100216974();
  v229 = v69;
  sub_100216F74();
  *(v68 + 96) = &type metadata for Int;
  *(v68 + 72) = v225;
  v228 = sub_100216974();
  v229 = v70;
  sub_100216F74();
  sub_100216374();
  sub_100216244();
  v72 = v71;
  v205 = v66[1];
  v205(v56, v226);
  *(v68 + 168) = &type metadata for Double;
  *(v68 + 144) = v72;
  sub_100019254(v68);
  swift_setDeallocating();
  sub_10001148C(&unk_1002983E0, &qword_10021D708);
  v73 = v67;
  swift_arrayDestroy();
  v74 = sub_1002168C4().super.isa;

  v75 = v222;
  [v222 addMetrics:v74];

  v76 = sub_100216144();
  [v75 sendMetricWithResult:0 error:v76];

  swift_errorRetain();
  if ((_s18TrustedPeersHelper21RetryingCKCodeServiceC14retryableError5errorSbs0H0_pSg_tFZ_0(v73) & 1) == 0)
  {

    goto LABEL_13;
  }

  v222 = v66 + 1;
  v77 = v217;
  sub_100216374();
  swift_errorRetain();
  v78 = sub_100216144();
  [v78 cuttlefishRetryAfter];
  v80 = v79;

  v81 = sub_100216144();
  CKRetryAfterSecondsForError();
  v83 = v82;

  if (v80 < a9)
  {
    v84 = a9;
  }

  else
  {
    v84 = v80;
  }

  if (v84 > v83)
  {
    v85 = v84;
  }

  else
  {
    v85 = v83;
  }

  v86 = v66 + 2;
  v87 = v226;
  v203 = v66[2];
  v203(v56, v77, v226);
  v88 = v216;
  sub_100216234();
  if (sub_100216354() == 1)
  {
    v89 = v205;
    v205(v88, v87);
    v89(v77, v87);
LABEL_13:
    v100 = v221;
    *v62 = v73;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v100(v62);

    v97 = v62;
    v98 = v206;
    v99 = v220;
    goto LABEL_14;
  }

  v206 = v66;
  v101 = a10;
  [objc_opt_self() sleepForTimeInterval:v85];
  if (qword_100297250 != -1)
  {
    swift_once();
  }

  v102 = sub_100216774();
  sub_100002648(v102, qword_100297FB0);
  v103 = v77;
  v104 = v203;
  v203(v215, v103, v87);
  v105 = v213;
  v104(v213, v219, v87);
  swift_errorRetain();

  v106 = sub_100216754();
  v107 = sub_100216C54();

  v108 = os_log_type_enabled(v106, v107);
  v201 = v73;
  v202 = v56;
  v200 = v86;
  if (v108)
  {
    v109 = swift_slowAlloc();
    LODWORD(v199) = v107;
    v110 = v73;
    v111 = v109;
    v220 = swift_slowAlloc();
    v228 = v220;
    *v111 = 136446978;
    *(v111 + 4) = sub_100005FB0(v218, a10, &v228);
    *(v111 + 12) = 2082;
    v227 = v110;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v112 = sub_100216994();
    v114 = v87;
    v115 = sub_100005FB0(v112, v113, &v228);

    *(v111 + 14) = v115;
    *(v111 + 22) = 2082;
    sub_10007B900(&qword_1002983F0, &type metadata accessor for Date);
    v116 = v215;
    v117 = sub_100217174();
    v119 = v118;
    v120 = v116;
    v121 = v205;
    v205(v120, v114);
    v122 = sub_100005FB0(v117, v119, &v228);
    v101 = a10;

    *(v111 + 24) = v122;
    *(v111 + 32) = 2082;
    v123 = v213;
    v124 = sub_100217174();
    v126 = v125;
    v121(v123, v114);
    v127 = sub_100005FB0(v124, v126, &v228);

    *(v111 + 34) = v127;
    _os_log_impl(&_mh_execute_header, v106, v199, "%{public}s error: %{public}s (retrying, now=%{public}s, deadline=%{public}s", v111, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v129 = v205;
    v205(v105, v87);
    v128 = v129(v215, v87);
  }

  v130 = v225 + 1;
  if (__OFADD__(v225, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  v225 = a16(v128);
  v131 = [v225 configuration];
  if (!v131)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v132 = v131;
  v198 = v130;
  v199 = a16;
  [v131 setIsCloudKitSupportOperation:1];

  v133 = [v225 configuration];
  if (!v133)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v134 = v133;
  v194 = a17;
  v135 = a15;
  v220 = a13;
  v215 = a12;
  v136 = sub_100216964();
  [v134 setApplicationBundleIdentifierOverride:v136];

  v137 = swift_allocObject();
  *(v137 + 16) = v218;
  *(v137 + 24) = v101;
  v232 = a21;
  v233 = v137;
  v228 = _NSConcreteStackBlock;
  v229 = 1107296256;
  v230 = sub_100061E54;
  v231 = a22;
  v138 = _Block_copy(&v228);

  v196 = v137;

  v139 = v225;
  [v225 setRequestCompletedBlock:v138];
  v140 = v138;
  v141 = a15;
  _Block_release(v140);

  if (a15)
  {
    v135 = 0;
    v142 = HIBYTE(a15) & 0xF;
    if ((a15 & 0x2000000000000000) == 0)
    {
      v142 = a14 & 0xFFFFFFFFFFFFLL;
    }

    if (v142 && v220)
    {
      v143 = HIBYTE(v220) & 0xF;
      if ((v220 & 0x2000000000000000) == 0)
      {
        v143 = v215 & 0xFFFFFFFFFFFFLL;
      }

      v135 = v143 != 0;
    }
  }

  v144 = [*(*sub_100006484((a11 + 16) *(a11 + 40)) + 32)];
  if (!v144)
  {
    sub_100216974();
    v144 = sub_100216964();
  }

  v191 = a25;
  v190 = a24;
  v187 = a23;
  v197 = v101;
  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v218, v101);
  sub_100078700();
  LODWORD(v213) = v145;
  v192 = a14;
  v193 = a15;
  if (a15)
  {
    v141 = sub_100216964();
  }

  v195 = a11;
  v189 = a27;
  v188 = a26;
  v146 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v220)
  {
    v147 = sub_100216964();
  }

  else
  {
    v147 = 0;
  }

  v148 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v149 = sub_100216964();

  LOBYTE(v186) = v135;
  v213 = [v148 initWithKeychainCircleMetrics:0 altDSID:v144 flowID:v141 deviceSessionID:v147 eventName:v149 testsAreEnabled:v213 canSendMetrics:v186 category:v146];

  v150 = v203;
  v151 = v226;
  v203(v202, v224, v226);
  v150(v214, v219, v151);
  v152 = v206;
  v153 = *(v206 + 80);
  v154 = (v153 + 32) & ~v153;
  v155 = (v207 + 7 + v154) & 0xFFFFFFFFFFFFFFF8;
  v156 = (v155 + 23) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v153 + v156 + 8) & ~v153;
  v158 = (v207 + 7 + v157) & 0xFFFFFFFFFFFFFFF8;
  v224 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
  v159 = (v224 + 15) & 0xFFFFFFFFFFFFFFF8;
  v219 = (v159 + 23) & 0xFFFFFFFFFFFFFFF8;
  v207 = (v219 + 23) & 0xFFFFFFFFFFFFFFF8;
  v160 = swift_allocObject();
  v161 = v198;
  *(v160 + 16) = v213;
  *(v160 + 24) = v161;
  v162 = v152[4];
  v163 = v160 + v154;
  v164 = v226;
  v162(v163, v202, v226);
  v165 = (v160 + v155);
  v166 = v223;
  *v165 = v221;
  v165[1] = v166;
  *(v160 + v156) = a9;
  v162(v160 + v157, v214, v164);
  v167 = (v160 + v158);
  v168 = v197;
  *v167 = v218;
  v167[1] = v168;
  v169 = v194;
  v170 = v195;
  *&v224[v160] = v195;
  v171 = (v160 + v159);
  v172 = v220;
  *v171 = v215;
  v171[1] = v172;
  v173 = (v160 + v219);
  v174 = v193;
  *v173 = v192;
  v173[1] = v174;
  v175 = (v160 + v207);
  *v175 = v199;
  v175[1] = v169;

  v224 = v213;

  v176 = v225;
  sub_1002163E4();
  v177 = *(v170 + 56);
  v178 = swift_allocObject();
  *(v178 + 16) = v176;
  *(v178 + 24) = v170;
  v232 = v188;
  v233 = v178;
  v228 = _NSConcreteStackBlock;
  v229 = 1107296256;
  v230 = sub_100063B78;
  v231 = v189;
  v179 = _Block_copy(&v228);
  v180 = v176;

  v181 = v208;
  sub_100216804();
  v227 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v182 = v210;
  v183 = v204;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v179);

  (*(v212 + 8))(v182, v183);
  (*(v209 + 8))(v181, v211);
  v184 = v226;
  v185 = v205;
  v205(v216, v226);
  v185(v217, v184);
}

void sub_100063060(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, char *a7, uint64_t a8, double a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v122 = a6;
  v123 = a2;
  v124 = a5;
  v125 = a3;
  v126 = a4;
  v25 = sub_100216384();
  v127 = *(v25 - 8);
  v26 = *(v127 + 64);
  v28 = __chkstk_darwin(v25, v27);
  v118 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28, v30);
  v117 = &v110 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v120 = &v110 - v35;
  v37 = __chkstk_darwin(v34, v36);
  v119 = &v110 - v38;
  __chkstk_darwin(v37, v39);
  v41 = &v110 - v40;
  v115 = sub_100011534(&unk_10029D560, qword_10021D450);
  v116 = a19;
  v42 = sub_100217294();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v46 = __chkstk_darwin(v42, v45);
  v48 = (&v110 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v46, v49);
  v51 = (&v110 - v50);
  v52 = *(v43 + 16);
  v121 = a1;
  v52(&v110 - v50, a1, v42);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10001148C(&qword_1002983D8, &unk_10021DE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D420;
    v129 = sub_100216974();
    v130 = v78;
    sub_100216F74();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = v125;
    v129 = sub_100216974();
    v130 = v79;
    sub_100216F74();
    sub_100216374();
    sub_100216244();
    v81 = v80;
    (*(v127 + 8))(v41, v25);
    *(inited + 168) = &type metadata for Double;
    *(inited + 144) = v81;
    sub_100019254(inited);
    swift_setDeallocating();
    sub_10001148C(&unk_1002983E0, &qword_10021D708);
    swift_arrayDestroy();
    isa = sub_1002168C4().super.isa;

    v83 = v123;
    [v123 addMetrics:isa];

    [v83 sendMetricWithResult:1 error:0];
    v124(v121);
    (*(v43 + 8))(v51, v42);
    return;
  }

  v113 = v43;
  v114 = a7;
  v111 = a8;
  v53 = v25;
  v54 = *v51;
  sub_10001148C(&qword_1002983D8, &unk_10021DE60);
  v55 = swift_initStackObject();
  *(v55 + 16) = xmmword_10021D420;
  v129 = sub_100216974();
  v130 = v56;
  sub_100216F74();
  *(v55 + 96) = &type metadata for Int;
  *(v55 + 72) = v125;
  v129 = sub_100216974();
  v130 = v57;
  sub_100216F74();
  sub_100216374();
  sub_100216244();
  v59 = v58;
  v60 = *(v127 + 8);
  v121 = v53;
  v112 = v127 + 8;
  v60(v41, v53);
  *(v55 + 168) = &type metadata for Double;
  *(v55 + 144) = v59;
  sub_100019254(v55);
  swift_setDeallocating();
  sub_10001148C(&unk_1002983E0, &qword_10021D708);
  swift_arrayDestroy();
  v61 = sub_1002168C4().super.isa;

  v62 = v123;
  [v123 addMetrics:v61];

  v63 = sub_100216144();
  [v62 sendMetricWithResult:0 error:v63];

  swift_errorRetain();
  if ((_s18TrustedPeersHelper21RetryingCKCodeServiceC14retryableError5errorSbs0H0_pSg_tFZ_0(v54) & 1) == 0)
  {

    goto LABEL_13;
  }

  v123 = v60;
  v64 = v119;
  sub_100216374();
  swift_errorRetain();
  v65 = sub_100216144();
  [v65 cuttlefishRetryAfter];
  v67 = v66;

  v68 = sub_100216144();
  CKRetryAfterSecondsForError();
  v70 = v69;

  if (v67 < a9)
  {
    v71 = a9;
  }

  else
  {
    v71 = v67;
  }

  if (v71 > v70)
  {
    v72 = v71;
  }

  else
  {
    v72 = v70;
  }

  v73 = *(v127 + 16);
  v74 = v121;
  v73(v41, v64, v121);
  v75 = v120;
  sub_100216234();
  if (sub_100216354() == 1)
  {
    v76 = v123;
    v123(v75, v74);
    v76(v64, v74);
LABEL_13:
    *v48 = v54;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v124(v48);

    (*(v113 + 8))(v48, v42);
    return;
  }

  [objc_opt_self() sleepForTimeInterval:v72];
  if (qword_100297250 != -1)
  {
    swift_once();
  }

  v84 = sub_100216774();
  sub_100002648(v84, qword_100297FB0);
  v85 = v117;
  v86 = v64;
  v87 = v121;
  v73(v117, v86, v121);
  v88 = v118;
  v73(v118, v114, v87);
  swift_errorRetain();

  v89 = sub_100216754();
  v90 = sub_100216C54();

  v91 = os_log_type_enabled(v89, v90);
  v127 = a10;
  if (v91)
  {
    v92 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v129 = v113;
    *v92 = 136446978;
    *(v92 + 4) = sub_100005FB0(v111, a10, &v129);
    *(v92 + 12) = 2082;
    v128 = v54;
    swift_errorRetain();
    v93 = sub_100216994();
    LODWORD(v115) = v90;
    v95 = sub_100005FB0(v93, v94, &v129);

    *(v92 + 14) = v95;
    *(v92 + 22) = 2082;
    sub_10007B900(&qword_1002983F0, &type metadata accessor for Date);
    v96 = sub_100217174();
    v98 = v97;
    v99 = v85;
    v100 = v123;
    v123(v99, v87);
    v101 = sub_100005FB0(v96, v98, &v129);
    v102 = v100;

    *(v92 + 24) = v101;
    *(v92 + 32) = 2082;
    v103 = v118;
    v104 = sub_100217174();
    v106 = v105;
    v102(v103, v87);
    v107 = sub_100005FB0(v104, v106, &v129);

    *(v92 + 34) = v107;
    _os_log_impl(&_mh_execute_header, v89, v115, "%{public}s error: %{public}s (retrying, now=%{public}s, deadline=%{public}s", v92, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v102 = v123;
    v123(v88, v87);
    v102(v85, v87);
  }

  v108 = v120;
  if (__OFADD__(v125, 1))
  {
    __break(1u);
  }

  else
  {
    RetryingCKCodeService.invokeRetry<A, B>(deadline:minimumDelay:functionName:deviceSessionID:flowID:attemptNumber:startTime:operationCreator:completion:)(v114, v111, v127, a12, a13, a14, a15, v125 + 1, a9, v126, a16, a17, v124, v122, a18, v116, a20, a21);

    v109 = v121;
    v102(v108, v121);
    v102(v119, v109);
  }
}

uint64_t sub_100063B20(void *a1, uint64_t a2)
{
  [a1 setQualityOfService:25];
  v3 = *(*sub_100006484((a2 + 16), *(a2 + 40)) + 16);
  return sub_100216C44();
}

uint64_t sub_100063B78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100063BBC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280B78;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280BF0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_1000645CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280D08;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280D80;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_100064FDC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100281668;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007B6BC;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_1002816E0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_1000659EC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_1002814D8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100281550;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_1000663FC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100281348;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_1002813C0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_100066E0C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_1002811B8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100281230;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006781C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100281028;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_1002810A0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006822C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280E98;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280F10;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_100068C3C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_1002809E8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280A60;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006964C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280858;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_1002808D0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006A05C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_1002806C8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280740;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006AA6C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280538;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_1002805B0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006B47C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_1002803A8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280420;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006BE8C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280218;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280290;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006C89C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_100280088;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_100280100;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006D2AC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_10027FEF8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_10027FF70;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006DCBC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_10027FD68;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_10027FDE0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006E6CC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_10027FBD8;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_10027FC50;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

id sub_10006F0DC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v121 = a6;
  v126 = a5;
  v127 = a3;
  v128 = a4;
  v129 = a1;
  v130 = a2;
  v12 = sub_1002167E4();
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  __chkstk_darwin(v12, v14);
  v115 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100216824();
  v114 = *(v116 - 8);
  v16 = *(v114 + 64);
  __chkstk_darwin(v116, v17);
  v113 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100216384();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = __chkstk_darwin(v19, v22);
  v120 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23, v24);
  v27 = &v101 - v26;
  v29 = __chkstk_darwin(v25, v28);
  v31 = &v101 - v30;
  v33 = __chkstk_darwin(v29, v32);
  v35 = &v101 - v34;
  __chkstk_darwin(v33, v36);
  v38 = &v101 - v37;
  sub_100216374();
  v125 = v20;
  v39 = *(v20 + 16);
  v112 = v38;
  v108 = v20 + 16;
  v107 = v39;
  (v39)(v31, v38, v19);
  v122 = v35;
  v109 = v31;
  sub_100216234();
  v124 = v27;
  v40 = sub_100216374();
  v111 = a8;
  v110 = a7;
  v41 = a7(v40);
  result = [v41 configuration];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  [result setIsCloudKitSupportOperation:1];

  result = [v41 configuration];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v44 = result;
  v45 = sub_100216964();
  [v44 setApplicationBundleIdentifierOverride:v45];

  v46 = swift_allocObject();
  v47 = v130;
  *(v46 + 16) = v129;
  *(v46 + 24) = v47;
  v136 = sub_10007BDF8;
  v137 = v46;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100061E54;
  v135 = &unk_10027FA48;
  v48 = _Block_copy(&aBlock);

  v104 = v46;

  [v41 setRequestCompletedBlock:v48];
  _Block_release(v48);

  v49 = v121;
  if (v121)
  {
    v50 = 0;
    v51 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v51 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v51 && v128)
    {
      v52 = HIBYTE(v128) & 0xF;
      if ((v128 & 0x2000000000000000) == 0)
      {
        v52 = v127 & 0xFFFFFFFFFFFFLL;
      }

      v50 = v52 != 0;
    }
  }

  else
  {
    v50 = 0;
  }

  LODWORD(v118) = v50;
  v105 = v41;
  v106 = v12;
  v53 = [*(*sub_100006484((v123 + 16) *(v123 + 40)) + 32)];
  if (!v53)
  {
    sub_100216974();
    v53 = sub_100216964();
  }

  _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(v129, v130);
  sub_100078700();
  v55 = v54;
  if (v49)
  {
    v56 = sub_100216964();
  }

  else
  {
    v56 = 0;
  }

  v57 = v19;
  v103 = a10;
  v102 = a9;
  v58 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
  if (v128)
  {
    v59 = sub_100216964();
  }

  else
  {
    v59 = 0;
  }

  v60 = objc_allocWithZone(AAFAnalyticsEventSecurity);
  v61 = sub_100216964();

  LOBYTE(v100) = v118;
  v118 = [v60 initWithKeychainCircleMetrics:0 altDSID:v53 flowID:v56 deviceSessionID:v59 eventName:v61 testsAreEnabled:v55 canSendMetrics:v100 category:v58];

  v62 = v109;
  v63 = v57;
  v119 = v57;
  v64 = v57;
  v65 = v107;
  v107(v109, v124, v64);
  v65(v120, v122, v63);
  v66 = v125;
  v67 = *(v125 + 80);
  v68 = (v67 + 32) & ~v67;
  v69 = (v21 + 7 + v68) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v67 + v70 + 8) & ~v67;
  v72 = (v21 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v108 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v108 + 15) & 0xFFFFFFFFFFFFFFF8;
  v107 = ((v73 + 23) & 0xFFFFFFFFFFFFFFF8);
  v101 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  *(v74 + 16) = v118;
  *(v74 + 24) = 1;
  v75 = *(v66 + 32);
  v76 = v74 + v68;
  v77 = v119;
  v75(v76, v62, v119);
  v78 = (v74 + v69);
  v79 = v103;
  *v78 = v102;
  v78[1] = v79;
  *(v74 + v70) = 0x4014000000000000;
  v75(v74 + v71, v120, v77);
  v80 = (v74 + v72);
  v81 = v130;
  *v80 = v129;
  v80[1] = v81;
  v82 = v123;
  *(v74 + v108) = v123;
  v83 = (v74 + v73);
  v84 = v128;
  *v83 = v127;
  v83[1] = v84;
  v85 = v107 + v74;
  v86 = v121;
  *v85 = v126;
  *(v85 + 1) = v86;
  v87 = (v74 + v101);
  v88 = v111;
  *v87 = v110;
  v87[1] = v88;

  v89 = v118;

  v90 = v105;
  sub_1002163E4();
  v91 = *(v82 + 56);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v82;
  v136 = sub_10007BCC0;
  v137 = v92;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100063B78;
  v135 = &unk_10027FAC0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  v95 = v113;
  sub_100216804();
  v131 = &_swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001148C(&unk_100297FD0, &unk_10021DC80);
  sub_1000797B0(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
  v96 = v115;
  v97 = v106;
  sub_100216E34();
  sub_100216CE4();
  _Block_release(v93);

  (*(v117 + 8))(v96, v97);
  (*(v114 + 8))(v95, v116);
  v98 = *(v125 + 8);
  v99 = v119;
  v98(v124, v119);
  v98(v122, v99);
  v98(v112, v99);
}

uint64_t RetryingCKCodeService.retry<A, B>(functionName:deviceSessionID:flowID:operationCreator:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t (*a7)(void), uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v37 = a6;
  v33 = a7;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v31 = a10;
  v32 = a9;
  v15 = sub_100216384();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v19, v22);
  v25 = &v31 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v31 - v27;
  sub_100216374();
  (*(v16 + 16))(v21, v28, v15);
  sub_100216234();
  sub_100216374();
  RetryingCKCodeService.invokeRetry<A, B>(deadline:minimumDelay:functionName:deviceSessionID:flowID:attemptNumber:startTime:operationCreator:completion:)(v25, a1, a2, v34, v35, v36, v37, 1, 5.0, v21, v33, a8, v32, *(&v32 + 1), v31, *(&v31 + 1), a11, a12);
  v29 = *(v16 + 8);
  v29(v21, v15);
  v29(v25, v15);
  return (v29)(v28, v15);
}

uint64_t RetryingCKCodeService.reset(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for ResetRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 52);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for ResetRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for ResetRequest);
  sub_100064FDC(0xD000000000000014, 0x8000000100238D10, v32, v33, v36, v35, sub_1000789C4, v40, v45, v44);
}

uint64_t sub_100070124(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298518, &unk_100226B60);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for ResetRequest);
  v11 = type metadata accessor for ResetRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetOperation(0));
  sub_100019C6C(v10, v7, &qword_100298518, &unk_100226B60);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298518, &unk_100226B60);
  return v12;
}

uint64_t RetryingCKCodeService.establish(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v45 = a3;
  v4 = type metadata accessor for EstablishRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 28);
  v43 = a1;
  v29 = *(a1 + v28);
  v30 = OBJC_IVAR____TtCV18TrustedPeersHelper16EstablishRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v29 + v30, v17, &qword_100297FE0, &unk_10021E7F0);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v32 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v34 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v30, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v31(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v35 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v37 = *v24;
  v36 = v24[1];

  sub_100078968(v24);
  v38 = v44;
  sub_100079420(v43, v44, type metadata accessor for EstablishRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for EstablishRequest);
  sub_1000659EC(0xD000000000000018, 0x8000000100238D30, v34, v33, v37, v36, sub_1000789F0, v40, v46, v45);
}

uint64_t sub_1000706F4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298508, &qword_10021DF78);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for EstablishRequest);
  v11 = type metadata accessor for EstablishRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.EstablishOperation(0));
  sub_100019C6C(v10, v7, &qword_100298508, &qword_10021DF78);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298508, &qword_10021DF78);
  return v12;
}

uint64_t RetryingCKCodeService.joinWithVoucher(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v45 = a3;
  v4 = type metadata accessor for JoinWithVoucherRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 28);
  v43 = a1;
  v29 = *(a1 + v28);
  v30 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v29 + v30, v17, &qword_100297FE0, &unk_10021E7F0);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v32 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v34 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v30, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v31(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v35 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v37 = *v24;
  v36 = v24[1];

  sub_100078968(v24);
  v38 = v44;
  sub_100079420(v43, v44, type metadata accessor for JoinWithVoucherRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for JoinWithVoucherRequest);
  sub_1000663FC(0xD00000000000001ELL, 0x8000000100238D50, v34, v33, v37, v36, sub_100078A98, v40, v46, v45);
}

uint64_t sub_100070CCC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984F8, &unk_100226B70);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for JoinWithVoucherRequest);
  v11 = type metadata accessor for JoinWithVoucherRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.JoinWithVoucherOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984F8, &unk_100226B70);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984F8, &unk_100226B70);
  return v12;
}

uint64_t RetryingCKCodeService.updateTrust(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v5 = updated - 8;
  v42[0] = *(updated - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(updated, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for UpdateTrustRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for UpdateTrustRequest);
  sub_100066E0C(0xD00000000000001ALL, 0x8000000100238D70, v32, v33, v36, v35, sub_100078AC4, v40, v45, v44);
}

uint64_t sub_10007128C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984E8, &qword_10021DF58);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for UpdateTrustRequest);
  updated = type metadata accessor for UpdateTrustRequest(0);
  (*(*(updated - 8) + 56))(v10, 0, 1, updated);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.UpdateTrustOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984E8, &qword_10021DF58);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984E8, &qword_10021DF58);
  return v12;
}

uint64_t RetryingCKCodeService.setRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for SetRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for SetRecoveryKeyRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for SetRecoveryKeyRequest);
  sub_10006781C(0xD00000000000001DLL, 0x8000000100238D90, v32, v33, v36, v35, sub_100078AF0, v40, v45, v44);
}

uint64_t sub_100071848(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984D8, &unk_100226B80);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for SetRecoveryKeyRequest);
  v11 = type metadata accessor for SetRecoveryKeyRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.SetRecoveryKeyOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984D8, &unk_100226B80);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984D8, &unk_100226B80);
  return v12;
}

uint64_t RetryingCKCodeService.fetchChanges(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v5 = ChangesRequest - 8;
  v42[0] = *(ChangesRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(ChangesRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for FetchChangesRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for FetchChangesRequest);
  sub_10006822C(0xD00000000000001BLL, 0x8000000100238DB0, v32, v33, v36, v35, sub_100078B1C, v40, v45, v44);
}

uint64_t sub_100071E08(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984C8, &qword_10021DF38);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for FetchChangesRequest);
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  (*(*(ChangesRequest - 8) + 56))(v10, 0, 1, ChangesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchChangesOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984C8, &qword_10021DF38);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984C8, &qword_10021DF38);
  return v12;
}

uint64_t RetryingCKCodeService.fetchViableBottles(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  v5 = ViableBottlesRequest - 8;
  v42[0] = *(ViableBottlesRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(ViableBottlesRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for FetchViableBottlesRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for FetchViableBottlesRequest);
  sub_1000645CC(0xD000000000000021, 0x8000000100238DD0, v32, v33, v36, v35, sub_100078B48, v40, v45, v44);
}

uint64_t sub_1000723C4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984B8, &unk_100226B90);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for FetchViableBottlesRequest);
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  (*(*(ViableBottlesRequest - 8) + 56))(v10, 0, 1, ViableBottlesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchViableBottlesOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984B8, &unk_100226B90);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984B8, &unk_100226B90);
  return v12;
}

uint64_t RetryingCKCodeService.fetchPolicyDocuments(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v5 = PolicyDocumentsRequest - 8;
  v42[0] = *(PolicyDocumentsRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for FetchPolicyDocumentsRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for FetchPolicyDocumentsRequest);
  sub_100063BBC(0xD000000000000023, 0x8000000100238E00, v32, v33, v36, v35, sub_100078B74, v40, v45, v44);
}

uint64_t sub_10007297C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002984A8, &qword_10021DF18);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for FetchPolicyDocumentsRequest);
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  (*(*(PolicyDocumentsRequest - 8) + 56))(v10, 0, 1, PolicyDocumentsRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPolicyDocumentsOperation(0));
  sub_100019C6C(v10, v7, &qword_1002984A8, &qword_10021DF18);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002984A8, &qword_10021DF18);
  return v12;
}

uint64_t RetryingCKCodeService.getRepairAction(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v5 = RepairActionRequest - 8;
  v42[0] = *(RepairActionRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(RepairActionRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for GetRepairActionRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for GetRepairActionRequest);
  sub_100068C3C(0xD00000000000001ELL, 0x8000000100238E30, v32, v33, v36, v35, sub_100078BA0, v40, v45, v44);
}

uint64_t sub_100072F34(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298498, &unk_100226BA0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for GetRepairActionRequest);
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  (*(*(RepairActionRequest - 8) + 56))(v10, 0, 1, RepairActionRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetRepairActionOperation(0));
  sub_100019C6C(v10, v7, &qword_100298498, &unk_100226BA0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298498, &unk_100226BA0);
  return v12;
}

uint64_t RetryingCKCodeService.getEscrowCheck(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for GetEscrowCheckRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 56);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for GetEscrowCheckRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for GetEscrowCheckRequest);
  sub_10006964C(0xD00000000000001DLL, 0x8000000100238E50, v32, v33, v36, v35, sub_100078BCC, v40, v45, v44);
}

uint64_t sub_1000734F4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298488, &qword_10021DEF8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for GetEscrowCheckRequest);
  v11 = type metadata accessor for GetEscrowCheckRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetEscrowCheckOperation(0));
  sub_100019C6C(v10, v7, &qword_100298488, &qword_10021DEF8);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298488, &qword_10021DEF8);
  return v12;
}

uint64_t RetryingCKCodeService.getSupportAppInfo(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  v5 = SupportAppInfoRequest - 8;
  v42[0] = *(SupportAppInfoRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(SupportAppInfoRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for GetSupportAppInfoRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for GetSupportAppInfoRequest);
  sub_10006A05C(0xD000000000000020, 0x8000000100238E70, v32, v33, v36, v35, sub_100078BF8, v40, v45, v44);
}

uint64_t sub_100073AB4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298478, &unk_100226BB0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for GetSupportAppInfoRequest);
  SupportAppInfoRequest = type metadata accessor for GetSupportAppInfoRequest(0);
  (*(*(SupportAppInfoRequest - 8) + 56))(v10, 0, 1, SupportAppInfoRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.GetSupportAppInfoOperation(0));
  sub_100019C6C(v10, v7, &qword_100298478, &unk_100226BB0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298478, &unk_100226BB0);
  return v12;
}

uint64_t RetryingCKCodeService.resetAccountCdpcontents(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 52);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for ResetAccountCDPContentsRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for ResetAccountCDPContentsRequest);
  sub_10006AA6C(0xD000000000000026, 0x8000000100238EA0, v32, v33, v36, v35, sub_100078E1C, v40, v45, v44);
}

uint64_t sub_10007406C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298468, &qword_10021DED8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for ResetAccountCDPContentsRequest);
  v11 = type metadata accessor for ResetAccountCDPContentsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.ResetAccountCdpcontentsOperation(0));
  sub_100019C6C(v10, v7, &qword_100298468, &qword_10021DED8);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298468, &qword_10021DED8);
  return v12;
}

uint64_t RetryingCKCodeService.addCustodianRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v45 = a3;
  v4 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v44 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 28);
  v43 = a1;
  v29 = *(a1 + v28);
  v30 = OBJC_IVAR____TtCV18TrustedPeersHelper30AddCustodianRecoveryKeyRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__metrics;
  swift_beginAccess();
  sub_100019C6C(v29 + v30, v17, &qword_100297FE0, &unk_10021E7F0);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v32 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v34 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v30, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v31(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v35 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v31(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v37 = *v24;
  v36 = v24[1];

  sub_100078968(v24);
  v38 = v44;
  sub_100079420(v43, v44, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for AddCustodianRecoveryKeyRequest);
  sub_10006B47C(0xD000000000000026, 0x8000000100238ED0, v34, v33, v37, v36, sub_100078F38, v40, v46, v45);
}

uint64_t sub_100074644(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298458, &unk_100226BC0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for AddCustodianRecoveryKeyRequest);
  v11 = type metadata accessor for AddCustodianRecoveryKeyRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.AddCustodianRecoveryKeyOperation(0));
  sub_100019C6C(v10, v7, &qword_100298458, &unk_100226BC0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298458, &unk_100226BC0);
  return v12;
}

uint64_t RetryingCKCodeService.fetchRecoverableTlkshares(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  v5 = RecoverableTLKSharesRequest - 8;
  v42[0] = *(RecoverableTLKSharesRequest - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(RecoverableTLKSharesRequest, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for FetchRecoverableTLKSharesRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for FetchRecoverableTLKSharesRequest);
  sub_10006BE8C(0xD000000000000028, 0x8000000100238F00, v32, v33, v36, v35, sub_100079154, v40, v45, v44);
}

uint64_t sub_100074BFC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298448, &qword_10021DEB8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for FetchRecoverableTLKSharesRequest);
  RecoverableTLKSharesRequest = type metadata accessor for FetchRecoverableTLKSharesRequest(0);
  (*(*(RecoverableTLKSharesRequest - 8) + 56))(v10, 0, 1, RecoverableTLKSharesRequest);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchRecoverableTlksharesOperation(0));
  sub_100019C6C(v10, v7, &qword_100298448, &qword_10021DEB8);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298448, &qword_10021DEB8);
  return v12;
}

uint64_t RetryingCKCodeService.removeRecoveryKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 44);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for RemoveRecoveryKeyRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for RemoveRecoveryKeyRequest);
  sub_10006C89C(0xD000000000000020, 0x8000000100238F30, v32, v33, v36, v35, sub_100079180, v40, v45, v44);
}

uint64_t sub_1000751B4(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298438, &unk_100226BD0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for RemoveRecoveryKeyRequest);
  v11 = type metadata accessor for RemoveRecoveryKeyRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.RemoveRecoveryKeyOperation(0));
  sub_100019C6C(v10, v7, &qword_100298438, &unk_100226BD0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298438, &unk_100226BD0);
  return v12;
}

uint64_t RetryingCKCodeService.performAtoprvactions(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for PerformATOPRVActionsRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 28);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for PerformATOPRVActionsRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for PerformATOPRVActionsRequest);
  sub_10006D2AC(0xD000000000000023, 0x8000000100238F60, v32, v33, v36, v35, sub_1000791AC, v40, v45, v44);
}

uint64_t sub_10007576C(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298428, &qword_10021DE98);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for PerformATOPRVActionsRequest);
  v11 = type metadata accessor for PerformATOPRVActionsRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformAtoprvactionsOperation(0));
  sub_100019C6C(v10, v7, &qword_100298428, &qword_10021DE98);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298428, &qword_10021DE98);
  return v12;
}

uint64_t RetryingCKCodeService.fetchCurrentItem(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  v5 = Request - 8;
  v42[0] = *(Request - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(Request, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for CurrentItemFetchRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for CurrentItemFetchRequest);
  sub_10006DCBC(0xD00000000000001FLL, 0x8000000100238F90, v32, v33, v36, v35, sub_1000791D8, v40, v45, v44);
}

uint64_t sub_100075D24(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298418, &unk_100226BE0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for CurrentItemFetchRequest);
  Request = type metadata accessor for CurrentItemFetchRequest(0);
  (*(*(Request - 8) + 56))(v10, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchCurrentItemOperation(0));
  sub_100019C6C(v10, v7, &qword_100298418, &unk_100226BE0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298418, &unk_100226BE0);
  return v12;
}

uint64_t RetryingCKCodeService.fetchPcsidentityByPublicKey(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  v5 = Request - 8;
  v42[0] = *(Request - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(Request, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for DirectPCSIdentityFetchRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for DirectPCSIdentityFetchRequest);
  sub_10006E6CC(0xD00000000000002ALL, 0x8000000100238FB0, v32, v33, v36, v35, sub_1000793F4, v40, v45, v44);
}

uint64_t sub_1000762DC(uint64_t a1)
{
  v2 = sub_10001148C(&qword_100298408, &qword_10021DE78);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for DirectPCSIdentityFetchRequest);
  Request = type metadata accessor for DirectPCSIdentityFetchRequest(0);
  (*(*(Request - 8) + 56))(v10, 0, 1, Request);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.FetchPcsidentityByPublicKeyOperation(0));
  sub_100019C6C(v10, v7, &qword_100298408, &qword_10021DE78);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_100298408, &qword_10021DE78);
  return v12;
}

uint64_t RetryingCKCodeService.performCkserverUnreadableDataRemoval(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v44 = a3;
  v4 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  v5 = v4 - 8;
  v42[0] = *(v4 - 8);
  v6 = *(v42[0] + 64);
  __chkstk_darwin(v4, v7);
  v42[1] = v8;
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v42 - v16;
  v18 = type metadata accessor for Metrics(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22, v25);
  v27 = (v42 - v26);
  v28 = *(v5 + 32);
  v29 = a1;
  sub_100019C6C(a1 + v28, v17, &qword_100297FE0, &unk_10021E7F0);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) == 1)
  {
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v27[2] = 0;
    v27[3] = 0xE000000000000000;
    v31 = v27 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v17, 1, v18) != 1)
    {
      sub_1000114D4(v17, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v17, v27, type metadata accessor for Metrics);
  }

  v32 = v27[2];
  v33 = v27[3];

  sub_100078968(v27);
  sub_100019C6C(v29 + v28, v14, &qword_100297FE0, &unk_10021E7F0);
  if (v30(v14, 1, v18) == 1)
  {
    *v24 = 0;
    v24[1] = 0xE000000000000000;
    v24[2] = 0;
    v24[3] = 0xE000000000000000;
    v34 = v24 + *(v18 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v30(v14, 1, v18) != 1)
    {
      sub_1000114D4(v14, &qword_100297FE0, &unk_10021E7F0);
    }
  }

  else
  {
    sub_100079670(v14, v24, type metadata accessor for Metrics);
  }

  v36 = *v24;
  v35 = v24[1];

  sub_100078968(v24);
  v37 = v29;
  v38 = v43;
  sub_100079420(v37, v43, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v39 = (*(v42[0] + 80) + 16) & ~*(v42[0] + 80);
  v40 = swift_allocObject();
  sub_100079670(v38, v40 + v39, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  sub_10006F0DC(0xD000000000000033, 0x8000000100238FE0, v32, v33, v36, v35, sub_1000796D8, v40, v45, v44);
}

uint64_t sub_100076894(uint64_t a1)
{
  v2 = sub_10001148C(&qword_1002983F8, &qword_100226BF0);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v14 - v9;
  sub_100079420(a1, &v14 - v9, type metadata accessor for RemoveUnreadableCKServerDataRequest);
  v11 = type metadata accessor for RemoveUnreadableCKServerDataRequest(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  objc_allocWithZone(type metadata accessor for CuttlefishAPI.PerformCkserverUnreadableDataRemovalOperation(0));
  sub_100019C6C(v10, v7, &qword_1002983F8, &qword_100226BF0);
  v12 = sub_100216404();
  sub_1000114D4(v10, &qword_1002983F8, &qword_100226BF0);
  return v12;
}

uint64_t RetryingCKCodeService.deinit()
{
  sub_100006128((v0 + 16));

  return v0;
}

uint64_t RetryingCKCodeService.__deallocating_deinit()
{
  sub_100006128((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_100076D54(void *a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  v4 = a1;
  v5 = [v4 options];
  v6 = sub_100216964();
  [v5 setApplicationBundleIdentifierOverride:v6];

  v7 = [*(v2 + 24) privateCloudDatabase];
  v8 = *(v2 + 24);
  v9 = sub_100216964();
  v10 = [v8 codeServiceWithName:v9 databaseScope:{objc_msgSend(v7, "databaseScope")}];

  *(v2 + 16) = v10;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_100076EA8(void *a1)
{
  v3 = [*(v1 + 24) options];
  v4 = [v3 accountOverrideInfo];

  if (v4 && (v5 = [v4 accountID], v4, v5))
  {
    v6 = sub_100216974();
    v8 = v7;

    v9 = [a1 appleAccountID];
    v10 = sub_100216974();
    v12 = v11;

    if (v10 == v6 && v12 == v8)
    {

LABEL_16:

      return 1;
    }

    v14 = sub_1002171A4();

    if (v14)
    {
      goto LABEL_16;
    }

    if (qword_100297250 != -1)
    {
      swift_once();
    }

    v23 = sub_100216774();
    sub_100002648(v23, qword_100297FB0);
    v24 = a1;

    v18 = sub_100216754();
    v25 = sub_100216C54();

    if (!os_log_type_enabled(v18, v25))
    {

      goto LABEL_22;
    }

    v26 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v26 = 136446722;
    v27 = sub_100005FB0(v6, v8, &v38);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2082;
    v28 = [v24 appleAccountID];
    v29 = sub_100216974();
    v31 = v30;

    v32 = sub_100005FB0(v29, v31, &v38);

    *(v26 + 14) = v32;
    *(v26 + 22) = 2082;
    v33 = [v24 altDSID];
    v34 = sub_100216974();
    v36 = v35;

    v37 = sub_100005FB0(v34, v36, &v38);

    *(v26 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v18, v25, "Mismatch between configured CKContainer (accountID %{public}s and requested user (appleAccountID:%{public}s, altDSID:%{public}s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    if ([a1 isPrimaryAccount])
    {
      return 1;
    }

    if (qword_100297250 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_100297FB0);
    v17 = a1;
    v18 = sub_100216754();
    v19 = sub_100216C54();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_22;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Mismatch between primary CKContainer and requested user %{public}@", v20, 0xCu);
    sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
  }

LABEL_22:

  return 0;
}

uint64_t sub_1000772E4()
{

  return swift_deallocClassInstance();
}

void sub_10007733C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v84 = a6;
  v81 = a7;
  v13 = sub_100216194();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v82 = a1;
  v83 = a2;
  v19 = a1[11];
  v20 = *(v19 + 16);
  v85 = a3;
  if (v20)
  {

    v78 = a4;
    v21 = sub_1000158D4(a2, a3, a4, a5);
    if (v22)
    {
      v79 = v14;
      v80 = v13;
      v23 = *(*(v19 + 56) + 8 * v21);

      v24 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v25 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v24);
      v26 = v84;
      if ((*(*(v25 + 8) + 8))(v84, v24))
      {
        v27 = v82[9];
        v28 = [v26 personaUniqueString];
        [v27 prepareThreadForKeychainAPIUseForPersonaIdentifier:v28];

        *v81 = v23;
        return;
      }

      if (qword_100297250 != -1)
      {
        swift_once();
      }

      v29 = sub_100216774();
      sub_100002648(v29, qword_100297FB0);
      v30 = v26;
      v31 = sub_100216754();
      v32 = sub_100216C54();

      v77 = v31;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138543362;
        *(v33 + 4) = v30;
        *v34 = v30;
        v35 = v30;
        v36 = v77;
        _os_log_impl(&_mh_execute_header, v77, v32, "Mismatch between existing container and account, remaking container for %{public}@", v33, 0xCu);
        sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);
      }

      else
      {
      }

      v14 = v79;
      v13 = v80;
    }

    else
    {
    }

    a4 = v78;
    a3 = v85;
    a2 = v83;
  }

  type metadata accessor for ContainerMap();
  v37 = v18;
  sub_1000779C8(a2, a3, a4, a5, v18);
  if (!v7)
  {
    v38 = a2;
    v79 = v14;
    v80 = v13;
    v39 = objc_allocWithZone(NSPersistentStoreDescription);
    v78 = v37;
    sub_100216174(v40);
    v42 = v41;
    v76 = [v39 initWithURL:v41];

    v43 = v84;
    v44 = [v84 makeCKContainer];
    v77 = 0;
    v45 = v44;
    v46 = type metadata accessor for CuttlefishCKCodeOperationRunner();
    v47 = swift_allocObject();
    v75 = v43;
    sub_100076D54(v45, v75);
    v87 = v46;
    v88 = &off_10027FA00;
    v86[0] = v47;
    v48 = type metadata accessor for RetryingCKCodeService();
    v49 = swift_allocObject();
    v50 = sub_1000023C4(v86, v46);
    v51 = v38;
    v52 = *(*(v46 - 8) + 64);
    __chkstk_darwin(v50, v50);
    v54 = (&v74 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54);
    v56 = *v54;
    v84 = v47;

    v57 = sub_100077D60(v56, v49);
    sub_100006128(v86);
    v58 = a4;
    v59 = v82;
    v60 = v82[8];
    v61 = v82[10];
    v87 = v48;
    v88 = &off_10027F928;
    v86[0] = v57;
    v62 = objc_allocWithZone(type metadata accessor for Container());
    v63 = v85;

    v64 = v76;
    swift_unknownObjectRetain();

    v76 = v64;
    v65 = v64;
    v66 = v77;
    sub_100113964(v51, v63, v58, a5, v65, v60, v61, v86);
    if (v66)
    {
      (*(v79 + 8))(v78, v80);
    }

    else
    {
      v68 = v67;
      swift_beginAccess();

      v69 = v68;
      v70 = v59[11];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v59[11];
      v59[11] = 0x8000000000000000;
      sub_100185C1C(v69, v83, v63, v58, a5, isUniquelyReferenced_nonNull_native);

      v59[11] = v89;
      swift_endAccess();
      v72 = v59[9];
      v73 = [v75 personaUniqueString];
      [v72 prepareThreadForKeychainAPIUseForPersonaIdentifier:v73];

      (*(v79 + 8))(v78, v80);
      *v81 = v69;
    }
  }
}

uint64_t sub_1000779C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10001148C(&unk_1002983C0, &unk_10021DE50);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = v29 - v18;
  __chkstk_darwin(v17, v20);
  v22 = v29 - v21;
  v29[0] = a1;
  v29[1] = a2;

  v30._countAndFlagsBits = 45;
  v30._object = 0xE100000000000000;
  sub_100216A14(v30);

  v31._countAndFlagsBits = a3;
  v31._object = a4;
  sub_100216A14(v31);

  v32._object = 0x80000001002391D0;
  v32._countAndFlagsBits = 0xD000000000000016;
  sub_100216A14(v32);

  v23 = sub_100216964();

  v24 = SecCopyURLForFileInUserScopedKeychainDirectory(v23);

  if (v24)
  {
    sub_100216184();

    v25 = sub_100216194();
    (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  }

  else
  {
    v25 = sub_100216194();
    (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  }

  sub_100079804(v19, v22);
  sub_100019C6C(v22, v15, &unk_1002983C0, &unk_10021DE50);
  sub_100216194();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v15, 1, v25) == 1)
  {
    sub_1000114D4(v15, &unk_1002983C0, &unk_10021DE50);
    sub_1000561D0();
    swift_allocError();
    *v27 = xmmword_10021DC70;
    *(v27 + 16) = 13;
    swift_willThrow();
    return sub_1000114D4(v22, &unk_1002983C0, &unk_10021DE50);
  }

  else
  {
    sub_1000114D4(v22, &unk_1002983C0, &unk_10021DE50);
    return (*(v26 + 32))(a5, v15, v25);
  }
}

uint64_t sub_100077D08()
{
  sub_100006128((v0 + 24));
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  v3 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_100077D60(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = sub_100216CC4();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100216CA4();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v12 = sub_100216824();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v21[3] = type metadata accessor for CuttlefishCKCodeOperationRunner();
  v21[4] = &off_10027FA00;
  v21[0] = a1;
  sub_10007974C(v21, a2 + 16);
  v17[1] = sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
  sub_100216814();
  v20 = _swiftEmptyArrayStorage;
  sub_10007B900(&unk_10029D670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10001148C(&unk_1002977F0, &unk_100226580);
  sub_1000797B0(&qword_10029D680, &unk_1002977F0, &unk_100226580);
  sub_100216E34();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v15 = sub_100216CF4();
  sub_100006128(v21);
  result = v18;
  *(v18 + 56) = v15;
  return result;
}

unint64_t _s18TrustedPeersHelper21RetryingCKCodeServiceC19functionNameToEvent0gH0S2S_tF_0(uint64_t a1, void *a2)
{
  sub_10006120C(40, 0xE100000000000000, a1, a2);
  if (v4)
  {
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    sub_100216A14(v6);
  }

  else
  {
    sub_100216AC4();
    sub_10007B8AC();
    sub_100216A04();
  }

  return 0xD000000000000013;
}

uint64_t _s18TrustedPeersHelper21RetryingCKCodeServiceC14retryableError5errorSbs0H0_pSg_tFZ_0(void *a1)
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_37;
  }

  swift_errorRetain();
  swift_errorRetain();
  sub_10001148C(&unk_10029D560, qword_10021D450);
  sub_10000200C(0, &qword_100297CE8, NSError_ptr);
  if (!swift_dynamicCast())
  {

    goto LABEL_10;
  }

  v2 = [v25 domain];
  v3 = sub_100216974();
  v5 = v4;

  if (v3 == sub_100216974() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1002171A4();

    if ((v8 & 1) == 0)
    {

LABEL_10:

      goto LABEL_13;
    }
  }

  v9 = [v25 code];

  if (v9 == -1001)
  {
    return 1;
  }

LABEL_13:
  swift_errorRetain();
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v10 = [v25 domain];
    v11 = sub_100216974();
    v13 = v12;

    if (v11 == sub_100216974() && v13 == v14)
    {

      goto LABEL_20;
    }

    v15 = sub_1002171A4();

    if (v15)
    {
LABEL_20:
      v16 = [v25 code];

      if (v16 == -1009)
      {
        return 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_21:
  swift_errorRetain();
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError);
    sub_100216104();

    if (v24 == 4)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError);
    sub_100216104();

    if (v24 == 6)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError);
    sub_100216104();

    if (v24 == 7)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_errorRetain();
  if (swift_dynamicCast())
  {
    sub_10007B900(&qword_100298530, type metadata accessor for CKError);
    sub_100216104();

    if (v24 == 23)
    {
      return 1;
    }
  }

  else
  {
  }

LABEL_37:
  if (sub_100060DD4(3, 0xFFFFFFFFFFFFFC13, v1) || (sub_100060B2C(0xF, 0x7D0, 0, v1) & 1) != 0)
  {
    return 1;
  }

  v18 = sub_100060B2C(0xF, 0x1770, 1, v1);
  result = 1;
  if ((v18 & 1) == 0)
  {
    if (!v1)
    {
LABEL_46:
      v23 = CKCanRetryForError();

      return v23;
    }

    swift_errorRetain();
    v19 = sub_100216144();
    v20 = [v19 isCuttlefishError:1021];

    if ((v20 & 1) == 0)
    {
      swift_errorRetain();
      v21 = sub_100216144();
      v22 = [v21 isCuttlefishError:1019];

      if ((v22 & 1) == 0)
      {
        v1 = sub_100216144();
        goto LABEL_46;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000786E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100078700()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10029FEE0;
  v7 = off_10029FEE0;
  if (!off_10029FEE0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10007B948;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_10007B948(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"_Bool soft_MetricsOverrideTestsAreEnabled(void)"];
    [v1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:89 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_100078818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100078830(uint64_t a1)
{
  v16 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(sub_100216384() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 64) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v6 + v10 + 8) & ~v6;
  v12 = (v8 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100063060(a1, *(v1 + 48), *(v1 + 56), v1 + v7, *(v1 + v9), *(v1 + v9 + 8), (v1 + v11), *(v1 + v12), *(v1 + v10), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v14), *(v1 + v14 + 8), *(v1 + v15), *(v1 + v15 + 8), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v16, *(&v16 + 1), v3, v4);
}

uint64_t sub_100078968(uint64_t a1)
{
  v2 = type metadata accessor for Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100078A1C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_100078C24(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v17 = *(*(v2 - 1) + 64);
  v5 = *(v1 + v4 + 24);

  v6 = *(v1 + v4 + 40);

  v7 = v2[9];
  v8 = sub_1002164D4();
  v9 = *(*(v8 - 8) + 8);
  v9(v1 + v4 + v7, v8);
  v10 = v1 + v4 + v2[10];
  v11 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v9(v10 + *(v11 + 20), v8);
  }

  v12 = v1 + v4 + v2[11];
  v13 = type metadata accessor for Metrics(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = *(v12 + 8);

    v15 = *(v12 + 24);

    v9(v12 + *(v13 + 24), v8);
  }

  return _swift_deallocObject(v1, v4 + v17, v3 | 7);
}

uint64_t sub_100078E48(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_1002164D4();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);
  v7 = *(v1 + v4 + v2[7]);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_100078F64(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v16 = *(*(v2 - 1) + 64);
  v5 = *(v1 + v4 + 8);

  v6 = v2[5];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v1 + v4 + v6, v7);
  v9 = v1 + v4 + v2[6];
  v10 = type metadata accessor for Metrics(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v8(v9 + *(v10 + 24), v7);
  }

  v13 = v1 + v4 + v2[7];
  v14 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v8(v13 + *(v14 + 20), v7);
  }

  return _swift_deallocObject(v1, v4 + v16, v3 | 7);
}

uint64_t sub_100079204(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v16 = *(*(v2 - 1) + 64);
  v5 = *(v1 + v4);

  v6 = v2[5];
  v7 = sub_1002164D4();
  v8 = *(*(v7 - 8) + 8);
  v8(v1 + v4 + v6, v7);
  v9 = v1 + v4 + v2[6];
  v10 = type metadata accessor for Metrics(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = *(v9 + 8);

    v12 = *(v9 + 24);

    v8(v9 + *(v10 + 24), v7);
  }

  v13 = v1 + v4 + v2[7];
  v14 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v8(v13 + *(v14 + 20), v7);
  }

  return _swift_deallocObject(v1, v4 + v16, v3 | 7);
}

uint64_t sub_100079420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100079488(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v15 = *(*(v2 - 1) + 64);
  v5 = v2[5];
  v6 = sub_1002164D4();
  v7 = *(*(v6 - 8) + 8);
  v7(v1 + v4 + v5, v6);
  v8 = v1 + v4 + v2[6];
  v9 = type metadata accessor for Metrics(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(v8 + 8);

    v11 = *(v8 + 24);

    v7(v8 + *(v9 + 24), v6);
  }

  v12 = v1 + v4 + v2[7];
  v13 = type metadata accessor for AccountInfo(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v7(v12 + *(v13 + 20), v6);
  }

  return _swift_deallocObject(v1, v4 + v15, v3 | 7);
}

uint64_t sub_100079670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007974C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000797B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011534(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100079804(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&unk_1002983C0, &unk_10021DE50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100079874(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002983D0, &unk_100226710, &unk_10027FAF8, sub_10007BDF8, &unk_10027FB10, &unk_10027FB48, sub_10007BC74, &unk_10027FB70, sub_10007BCC0, &unk_10027FB88);
}

void sub_100079A0C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298400, &qword_10021DE70, &unk_10027FC88, sub_10007BDF8, &unk_10027FCA0, &unk_10027FCD8, sub_10007BC78, &unk_10027FD00, sub_10007BCC0, &unk_10027FD18);
}

void sub_100079BA4(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298410, &unk_10021DE80, &unk_10027FE18, sub_10007BDF8, &unk_10027FE30, &unk_10027FE68, sub_10007BC7C, &unk_10027FE90, sub_10007BCC0, &unk_10027FEA8);
}

void sub_100079D3C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298420, &qword_10021DE90, &unk_10027FFA8, sub_10007BDF8, &unk_10027FFC0, &unk_10027FFF8, sub_10007BC80, &unk_100280020, sub_10007BCC0, &unk_100280038);
}

void sub_100079ED4(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298430, &unk_10021DEA0, &unk_100280138, sub_10007BDF8, &unk_100280150, &unk_100280188, sub_10007BC84, &unk_1002801B0, sub_10007BCC0, &unk_1002801C8);
}

void sub_10007A06C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298440, &qword_10021DEB0, &unk_1002802C8, sub_10007BDF8, &unk_1002802E0, &unk_100280318, sub_10007BC88, &unk_100280340, sub_10007BCC0, &unk_100280358);
}

void sub_10007A204(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298450, &unk_10021DEC0, &unk_100280458, sub_10007BDF8, &unk_100280470, &unk_1002804A8, sub_10007BC8C, &unk_1002804D0, sub_10007BCC0, &unk_1002804E8);
}

void sub_10007A39C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298460, &qword_10021DED0, &unk_1002805E8, sub_10007BDF8, &unk_100280600, &unk_100280638, sub_10007BC90, &unk_100280660, sub_10007BCC0, &unk_100280678);
}

void sub_10007A534(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298470, &unk_10021DEE0, &unk_100280778, sub_10007BDF8, &unk_100280790, &unk_1002807C8, sub_10007BC94, &unk_1002807F0, sub_10007BCC0, &unk_100280808);
}

void sub_10007A6CC(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298480, &qword_10021DEF0, &unk_100280908, sub_10007BDF8, &unk_100280920, &unk_100280958, sub_10007BC98, &unk_100280980, sub_10007BCC0, &unk_100280998);
}

void sub_10007A864(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298490, &unk_10021DF00, &unk_100280A98, sub_10007BDF8, &unk_100280AB0, &unk_100280AE8, sub_10007BC9C, &unk_100280B10, sub_10007BCC0, &unk_100280B28);
}

void sub_10007A9FC(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984A0, &qword_10021DF10, &unk_100280C28, sub_10007BDF8, &unk_100280C40, &unk_100280C78, sub_10007BCA0, &unk_100280CA0, sub_10007BCC0, &unk_100280CB8);
}

void sub_10007AB94(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984B0, &unk_10021DF20, &unk_100280DB8, sub_10007BDF8, &unk_100280DD0, &unk_100280E08, sub_10007BCA4, &unk_100280E30, sub_10007BCC0, &unk_100280E48);
}

void sub_10007AD2C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984C0, &qword_10021DF30, &unk_100280F48, sub_10007BDF8, &unk_100280F60, &unk_100280F98, sub_10007BCA8, &unk_100280FC0, sub_10007BCC0, &unk_100280FD8);
}

void sub_10007AEC4(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984D0, &unk_10021DF40, &unk_1002810D8, sub_10007BDF8, &unk_1002810F0, &unk_100281128, sub_10007BCAC, &unk_100281150, sub_10007BCC0, &unk_100281168);
}

void sub_10007B05C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984E0, &qword_10021DF50, &unk_100281268, sub_10007BDF8, &unk_100281280, &unk_1002812B8, sub_10007BCB0, &unk_1002812E0, sub_10007BCC0, &unk_1002812F8);
}

void sub_10007B1F4(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_1002984F0, &unk_10021DF60, &unk_1002813F8, sub_10007BDF8, &unk_100281410, &unk_100281448, sub_10007BCB4, &unk_100281470, sub_10007BCC0, &unk_100281488);
}

void sub_10007B38C(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298500, &qword_10021DF70, &unk_100281588, sub_10007BDF8, &unk_1002815A0, &unk_1002815D8, sub_10007BCB8, &unk_100281600, sub_10007BCC0, &unk_100281618);
}

void sub_10007B524(uint64_t a1)
{
  v3 = *(sub_100216384() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100061EC0(a1, *(v1 + 16), *(v1 + 24), (v1 + v5), *(v1 + v7), *(v1 + v7 + 8), v1 + v9, *(v1 + v10), *(v1 + v8), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), &qword_100298510, &unk_10021DF80, &unk_100281718, sub_10007BDF8, &unk_100281730, &unk_100281768, sub_10007BCBC, &unk_100281790, sub_10007BCC0, &unk_1002817A8);
}

uint64_t sub_10007B6D8()
{
  v1 = sub_100216384();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + 7;
  v6 = (v5 + v4) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v3 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  v8 = (v5 + v7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = *(v0 + v6 + 8);

  v10(v0 + v7, v1);
  v12 = *(v0 + v8 + 8);

  v13 = *(v0 + v9);

  v14 = *(v0 + v19 + 8);

  v15 = *(v0 + v20 + 8);

  v16 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v3 | 7);
}

uint64_t sub_10007B86C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10007B8AC()
{
  result = qword_100298520;
  if (!qword_100298520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100298520);
  }

  return result;
}

uint64_t sub_10007B900(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10007B948(void *a1)
{
  v5[0] = 0;
  if (!qword_10029FEE8)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10007BACC;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_1002817D0;
    v7 = 0;
    qword_10029FEE8 = _sl_dlopen();
  }

  v2 = qword_10029FEE8;
  if (!qword_10029FEE8)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *KeychainCircleLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"TrustedPeersHelper-Bridging-Header.h" lineNumber:86 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MetricsOverrideTestsAreEnabled");
  *(*(a1[4] + 8) + 24) = result;
  off_10029FEE0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10007BACC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10029FEE8 = result;
  return result;
}

uint64_t ViewKeys.newTlk.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for ViewKeys(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for ViewKeys._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000B551C(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for ViewKey);
  v16 = type metadata accessor for ViewKey(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newTlk;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v17, &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t ViewKeys.newClassA.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for ViewKeys(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for ViewKeys._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000B551C(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for ViewKey);
  v16 = type metadata accessor for ViewKey(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassA;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v17, &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t ViewKeys.newClassC.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001148C(&qword_100297F70, &qword_10021DBF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for ViewKeys(0) + 20);
  v10 = *(v1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for ViewKeys._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1000B551C(v12);
    *(v2 + v9) = v12;
  }

  sub_1000F89AC(a1, v8, type metadata accessor for ViewKey);
  v16 = type metadata accessor for ViewKey(0);
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV18TrustedPeersHelper8ViewKeysP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__newClassC;
  swift_beginAccess();
  sub_1000F9E80(v8, v12 + v17, &qword_100297F70, &qword_10021DBF8);
  return swift_endAccess();
}

uint64_t FetchRecoverableTLKSharesResponse.View.keys.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297E40, &unk_10021E7D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v15 - v6;
  RecoverableTLKShares = type metadata accessor for FetchRecoverableTLKSharesResponse.View(0);
  sub_100019C6C(v1 + *(RecoverableTLKShares + 28), v7, &qword_100297E40, &unk_10021E7D0);
  v9 = type metadata accessor for ViewKeysRecords(0);
  v10 = *(*(v9 - 1) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for ViewKeysRecords);
  }

  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v11 = v9[5];
  v12 = sub_100216424();
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + v9[6], 1, 1, v12);
  v13(a1 + v9[7], 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297E40, &unk_10021E7D0);
  }

  return result;
}

uint64_t ViewKeysRecords.classA.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(v1 + *(v8 + 24), v7, &qword_10029D9C0, &qword_100226740);
  v9 = sub_100216424();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_100216414();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t ViewKeysRecords.classC.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ViewKeysRecords(0);
  sub_100019C6C(v1 + *(v8 + 28), v7, &qword_10029D9C0, &qword_100226740);
  v9 = sub_100216424();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_100216414();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t CurrentCKKSItem.itemSpecifier.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100298588, &unk_10021E7E0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for CurrentCKKSItem(0);
  sub_100019C6C(v1 + *(v8 + 24), v7, &qword_100298588, &unk_10021E7E0);
  v9 = type metadata accessor for CurrentCKKSItemSpecifier(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for CurrentCKKSItemSpecifier);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v11 = a1 + *(v9 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100298588, &unk_10021E7E0);
  }

  return result;
}

uint64_t sub_10007CC24@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10001148C(&qword_10029D9C0, &qword_100226740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = a1(0);
  sub_100019C6C(v2 + *(v10 + 20), v9, &qword_10029D9C0, &qword_100226740);
  v11 = sub_100216424();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_100216414();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1000114D4(v9, &qword_10029D9C0, &qword_100226740);
  }

  return result;
}

uint64_t DirectPCSIdentity.pcsService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297E18, &qword_10021DA28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DirectPCSIdentity(0);
  sub_100019C6C(v1 + *(v8 + 24), v7, &qword_100297E18, &qword_10021DA28);
  v9 = type metadata accessor for PCSService(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for PCSService);
  }

  *a1 = 0;
  *(a1 + 8) = xmmword_10021D470;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  v11 = a1 + *(v9 + 28);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297E18, &qword_10021DA28);
  }

  return result;
}

uint64_t FetchChangesRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  sub_100019C6C(v1 + *(ChangesRequest + 24), v7, &qword_100297FE0, &unk_10021E7F0);
  v9 = type metadata accessor for Metrics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v11 = a1 + *(v9 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t FetchViableBottlesRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  ViableBottlesRequest = type metadata accessor for FetchViableBottlesRequest(0);
  sub_100019C6C(v1 + *(ViableBottlesRequest + 24), v7, &qword_100297FE0, &unk_10021E7F0);
  v9 = type metadata accessor for Metrics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v11 = a1 + *(v9 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}

uint64_t FetchPolicyDocumentsRequest.metrics.getter@<X0>(void *a1@<X8>)
{
  v3 = sub_10001148C(&qword_100297FE0, &unk_10021E7F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v13 - v6;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  sub_100019C6C(v1 + *(PolicyDocumentsRequest + 24), v7, &qword_100297FE0, &unk_10021E7F0);
  v9 = type metadata accessor for Metrics(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1000F89AC(v7, a1, type metadata accessor for Metrics);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v11 = a1 + *(v9 + 24);
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1000114D4(v7, &qword_100297FE0, &unk_10021E7F0);
  }

  return result;
}