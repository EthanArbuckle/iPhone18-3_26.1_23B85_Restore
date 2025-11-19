uint64_t sub_10019B344(void *a1, char *a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v16 = a1;
  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v17 = sub_100216774();
    sub_100002648(v17, qword_10029D160);
    swift_errorRetain();
    v18 = sub_100216754();
    v19 = sub_100216C54();

    v41 = v19;
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v44[0] = v38;
      *v20 = 136446210;
      aBlock[0] = v16;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v21 = sub_100216994();
      v23 = isEscapingClosureAtFileLocation;
      v24 = a11;
      v25 = sub_100005FB0(v21, v22, v44);

      *(v20 + 4) = v25;
      a11 = v24;
      isEscapingClosureAtFileLocation = v23;
      _os_log_impl(&_mh_execute_header, v18, v41, "updateTrustIfNeeded: error fetching all requested policies (continuing anyway): %{public}s", v20, 0xCu);
      sub_100006128(v38);
    }

    else
    {
    }

LABEL_6:
    v42 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;
    *(v26 + 32) = isEscapingClosureAtFileLocation;
    *(v26 + 40) = a5;
    v27 = *(a6 + 80);
    *(v26 + 112) = *(a6 + 64);
    *(v26 + 128) = v27;
    v28 = *(a6 + 96);
    v29 = *(a6 + 16);
    *(v26 + 48) = *a6;
    *(v26 + 64) = v29;
    v30 = *(a6 + 48);
    *(v26 + 80) = *(a6 + 32);
    *(v26 + 96) = v30;
    *(v26 + 144) = v28;
    *(v26 + 152) = a7;
    *(v26 + 160) = a8;
    *(v26 + 168) = a9;
    *(v26 + 176) = a10 & 1;
    v16 = a11;
    *(v26 + 184) = a11;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1001ACBD0;
    *(v31 + 24) = v26;
    aBlock[4] = sub_1001ACCC0;
    v46 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284CA0;
    a11 = _Block_copy(aBlock);
    v32 = a2;
    a2 = v46;
    v33 = v32;

    v34 = a5;
    sub_100019C6C(a6, v44, &unk_10029D860, &qword_100226648);
    v35 = v16;

    v36 = a7;

    [v42 performBlockAndWait:a11];
    _Block_release(a11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

  return result;
}

void sub_10019B6F8(uint64_t a1, uint64_t a2, void (*a3)(id, void, id), uint64_t a4, char a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (v16)
  {
    v17 = [v16 resultType];
    if (v17)
    {
      if (v17 == 1)
      {
        sub_1000561D0();
        v38 = swift_allocError();
        v39 = xmmword_100225F90;
      }

      else
      {
        if (v17 == 2)
        {
          v18 = [v16 error];
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v19 = sub_100216774();
          sub_100002648(v19, qword_10029D160);
          swift_errorRetain();
          v20 = sub_100216754();
          v21 = sub_100216C74();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v23 = swift_slowAlloc();
            v56 = v23;
            *v22 = 136446210;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v24 = sub_100216994();
            v26 = sub_100005FB0(v24, v25, &v56);

            *(v22 + 4) = v26;
            _os_log_impl(&_mh_execute_header, v20, v21, "updateTrustIfNeeded: no signing key pair: %{public}s", v22, 0xCu);
            sub_100006128(v23);
          }

          v27 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
          a3(v27, 0, v18);

          return;
        }

        sub_1000561D0();
        v38 = swift_allocError();
        v39 = xmmword_100225FA0;
      }

      *v37 = v39;
      *(v37 + 16) = 13;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v45 = sub_100216774();
      sub_100002648(v45, qword_10029D160);
      swift_errorRetain();
      v46 = sub_100216754();
      v47 = sub_100216C74();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v56 = v49;
        *v48 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v50 = sub_100216994();
        v52 = sub_100005FB0(v50, v51, &v56);

        *(v48 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v46, v47, "updateTrustIfNeeded: no signing key pair: %{public}s", v48, 0xCu);
        sub_100006128(v49);
      }

      v53 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
      a3(v53, 0, v38);
    }

    else
    {
      v40 = [v16 value];
      if (v40)
      {
        v41 = a5;
        v42 = a4;
        v43 = v40;
        v44 = [v40 keyPair];

        if (v44)
        {
          objc_opt_self();
          v40 = swift_dynamicCastObjCClass();
          a4 = v42;
          if (!v40)
          {

            v40 = 0;
          }
        }

        else
        {
          v40 = 0;
          a4 = v42;
        }

        a5 = v41;
      }

      v54 = v40;
      sub_1001707E4(v40, 0, a3, a4, a5 & 1, a6, a7, a8, a9);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    v29 = sub_100216754();
    v30 = sub_100216C74();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, &v56);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "updateTrustIfNeeded: no signing key pair: %{public}s", v31, 0xCu);
      sub_100006128(v32);
    }

    v36 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a5 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    a3(v36, 0, 0);
  }
}

void sub_10019BE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v15 = [objc_opt_self() defaultManager];
  v16 = sub_100216964();
  v17 = [v15 identityForIdentifier:v16];

  if (!v17)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    v29 = sub_100216754();
    v30 = sub_100216C74();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446210;
      v71 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v33 = sub_100216994();
      v35 = sub_100005FB0(v33, v34, aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "handle: no signing key pair: %{public}s", v31, 0xCu);
      sub_100006128(v32);
    }

    (a3)(0, 0);
    goto LABEL_33;
  }

  v18 = [v17 resultType];
  if (!v18)
  {
    v39 = [v17 value];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 keyPair];

      if (v41)
      {
        objc_opt_self();
        v42 = swift_dynamicCastObjCClass();
        if (v42)
        {
          v43 = v42;
          v69 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v44 = swift_allocObject();
          v45 = a4;
          v46 = v44;
          v44[2] = a6;
          v44[3] = a5;
          v44[4] = v43;
          v44[5] = a7;
          v44[6] = 0;
          v44[7] = a3;
          v44[8] = v45;
          v44[9] = a8;
          v44[10] = a9;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001AB570;
          *(a3 + 24) = v46;
          aBlock[4] = sub_1001ACCC0;
          aBlock[5] = a3;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_1002849A8;
          v47 = _Block_copy(aBlock);
          v48 = v41;
          v49 = a6;
          v50 = a5;

          v51 = a7;

          [v69 performBlockAndWait:v47];

          _Block_release(v47);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_21:
          sub_1000561D0();
          v37 = swift_allocError();
          v38 = xmmword_100225FA0;
          goto LABEL_22;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v61 = sub_100216774();
    sub_100002648(v61, qword_10029D160);
    v62 = sub_100216754();
    v63 = sub_100216C74();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v64 = 136446210;
      v71 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v66 = sub_100216994();
      v68 = sub_100005FB0(v66, v67, aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "handle: no signing key pair: %{public}s", v64, 0xCu);
      sub_100006128(v65);
    }

    (a3)(0, 0);
LABEL_33:

    return;
  }

  if (v18 != 1)
  {
    if (v18 == 2)
    {
      v19 = [v17 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v20 = sub_100216774();
      sub_100002648(v20, qword_10029D160);
      swift_errorRetain();
      v21 = sub_100216754();
      v22 = sub_100216C74();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        v24 = aBlock[0];
        *v23 = 136446210;
        v71 = v19;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v25 = sub_100216994();
        v27 = sub_100005FB0(v25, v26, aBlock);

        *(v23 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "handle: no signing key pair: %{public}s", v23, 0xCu);
        sub_100006128(v24);
      }

      (a3)(0, v19);
      return;
    }

    goto LABEL_21;
  }

  sub_1000561D0();
  v37 = swift_allocError();
  v38 = xmmword_100225F90;
LABEL_22:
  *v36 = v38;
  *(v36 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v53 = sub_100216774();
  sub_100002648(v53, qword_10029D160);
  swift_errorRetain();
  v54 = sub_100216754();
  v55 = sub_100216C74();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v57 = aBlock[0];
    *v56 = 136446210;
    v71 = v37;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v58 = sub_100216994();
    v60 = sub_100005FB0(v58, v59, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "handle: no signing key pair: %{public}s", v56, 0xCu);
    sub_100006128(v57);
  }

  (a3)(0, v37);
}

uint64_t sub_10019C6BC(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    result = sub_100216BD4();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = TPPolicyVersion_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100217014();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1000056E8(&v10, v8, &qword_100297D68, TPPolicyVersion_ptr, &qword_10029D838, &qword_100226630);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_1002170F4();
  }

  v6 = result;
  v5 = sub_1002170F4();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10019C848(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_100216BD4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10018B000(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10019C8E0(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v69 = sub_100216854();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v69, v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v63 - v15;
  v17 = sub_1002167D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = __chkstk_darwin(v17, v20);
  v65 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21, v23);
  v64 = &v63 - v25;
  __chkstk_darwin(v24, v26);
  v28 = &v63 - v27;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v66 = a2;
  *(v4 + 32) = a3;
  *(&v63 - v27) = 1800;
  (*(v18 + 104))(&v63 - v27, enum case for DispatchTimeInterval.seconds(_:), v17);
  v29 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_semaphore];
  v30 = a1;
  v67 = a3;
  v68 = v30;

  sub_100216834();
  sub_100216844();
  v31 = *(v8 + 8);
  v32 = v13;
  v33 = v69;
  v31(v32, v69);
  LOBYTE(v29) = sub_100216D14();
  v31(v16, v33);
  if (v29)
  {
    v38 = v68;
    v39 = v17;
    v41 = v64;
    v40 = v65;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v42 = sub_100216774();
    sub_100002648(v42, qword_10029D160);
    v43 = *(v18 + 16);
    v43(v41, v28, v17);
    v44 = v38;
    v45 = sub_100216754();
    v46 = sub_100216C84();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v47 = 136446466;
      v43(v40, v41, v39);
      v48 = sub_100216994();
      v50 = v49;
      (*(v18 + 8))(v41, v39);
      v51 = sub_100005FB0(v48, v50, &v72);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = *&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
      v70 = *&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
      v71 = v52;

      sub_10001148C(&qword_10029D698, &unk_100226590);
      v53 = sub_100216994();
      v55 = sub_100005FB0(v53, v54, &v72);

      *(v47 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Timeout after %{public}s waiting for semaphore (held by %{public}s)", v47, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v18 + 8))(v41, v17);
    }

    v56 = sub_100216964();
    v57 = sub_100216964();
    if (*&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8])
    {
      v58 = *&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
      v59 = *&v44[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
    }

    v60 = objc_opt_self();

    v61 = sub_100216964();

    v62 = sub_100216964();
    [v60 triggerAutoBugCaptureWithType:v56 subType:v57 subtypeContext:v61 domain:v62 events:0 payload:0 detectedProcess:0];

    _exit(1);
  }

  (*(v18 + 8))(v28, v17);
  v34 = &v68[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore];
  v35 = *&v68[OBJC_IVAR____TtC18TrustedPeersHelper9Container_operationWithSemaphore + 8];
  v36 = v67;
  *v34 = v66;
  *(v34 + 1) = v36;

  return v4;
}

unint64_t sub_10019CE9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = sub_100216964();
  v11 = [v9 initWithEntityName:v10];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10021D420;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100019BD0();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = type metadata accessor for ContainerMO();
  *(v12 + 104) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v12 + 72) = a2;

  v13 = a2;
  v14 = sub_100216C34();
  [v11 setPredicate:v14];

  [v11 setFetchLimit:1];
  type metadata accessor for PeerMO();
  result = sub_100216D54();
  if (v4)
  {

    return v5;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v17 = result;
  v18 = sub_1002170F4();
  result = v17;
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v16 = sub_100217014();
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 32);
LABEL_8:
    v5 = v16;

    return v5;
  }

  __break(1u);
  return result;
}

id sub_10019D0FC(void *a1)
{
  v2 = [a1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    v23 = sub_100216754();
    v24 = sub_100216C74();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "DBAdapter PeerMO has no ID?", v25, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v7 = [a1 stableInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;

    v12 = [a1 stableInfoSig];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100216224();
      v16 = v15;

      v17 = objc_allocWithZone(TPPeerStableInfo);
      sub_100012558(v9, v11);
      sub_100012558(v14, v16);
      isa = sub_100216204().super.isa;
      v19 = sub_100216204().super.isa;
      v20 = [v17 initWithData:isa sig:v19];

      sub_100002BF0(v14, v16);
      sub_100002BF0(v9, v11);
      if (v20)
      {
        sub_100002BF0(v14, v16);
        sub_100002BF0(v9, v11);

        return v20;
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v32 = sub_100216774();
      sub_100002648(v32, qword_10029D160);

      v27 = sub_100216754();
      v33 = sub_100216C54();

      if (os_log_type_enabled(v27, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v37 = v35;
        *v34 = 136446210;
        v36 = sub_100005FB0(v4, v6, &v37);

        *(v34 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v33, "DBAdapter peer %{public}s has unparseable stable info/sig", v34, 0xCu);
        sub_100006128(v35);

        sub_100002BF0(v9, v11);
        sub_100002BF0(v14, v16);
        goto LABEL_22;
      }

      sub_100002BF0(v9, v11);
      sub_100002BF0(v14, v16);
LABEL_21:

      goto LABEL_22;
    }

    sub_100002BF0(v9, v11);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v26 = sub_100216774();
  sub_100002648(v26, qword_10029D160);

  v27 = sub_100216754();
  v28 = sub_100216C54();

  if (!os_log_type_enabled(v27, v28))
  {
    goto LABEL_21;
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v37 = v30;
  *v29 = 136446210;
  v31 = sub_100005FB0(v4, v6, &v37);

  *(v29 + 4) = v31;
  _os_log_impl(&_mh_execute_header, v27, v28, "DBAdapter peer %{public}s has no/incomplete stable info/sig", v29, 0xCu);
  sub_100006128(v30);

LABEL_22:

  return 0;
}

id sub_10019D5B4(void *a1)
{
  v2 = [a1 peerID];
  if (!v2)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029D160);
    v22 = sub_100216754();
    v23 = sub_100216C74();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "DBAdapter PeerMO has no ID?", v24, 2u);
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100216974();
  v6 = v5;

  v7 = [a1 dynamicInfo];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216224();
    v11 = v10;

    v12 = [a1 dynamicInfoSig];
    if (v12)
    {
      v13 = v12;
      v14 = sub_100216224();
      v16 = v15;

      sub_100012558(v9, v11);
      sub_100012558(v14, v16);
      isa = sub_100216204().super.isa;
      v18 = sub_100216204().super.isa;
      v19 = [objc_opt_self() dynamicInfoWithData:isa sig:v18];

      sub_100002BF0(v14, v16);
      sub_100002BF0(v9, v11);
      if (v19)
      {
        sub_100002BF0(v14, v16);
        sub_100002BF0(v9, v11);

        return v19;
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v31 = sub_100216774();
      sub_100002648(v31, qword_10029D160);

      v26 = sub_100216754();
      v32 = sub_100216C54();

      if (os_log_type_enabled(v26, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36 = v34;
        *v33 = 136446210;
        v35 = sub_100005FB0(v4, v6, &v36);

        *(v33 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v32, "DBAdapter peer %{public}s has unparseable dynamic info/sig", v33, 0xCu);
        sub_100006128(v34);

        sub_100002BF0(v9, v11);
        sub_100002BF0(v14, v16);
        goto LABEL_22;
      }

      sub_100002BF0(v9, v11);
      sub_100002BF0(v14, v16);
LABEL_21:

      goto LABEL_22;
    }

    sub_100002BF0(v9, v11);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v25 = sub_100216774();
  sub_100002648(v25, qword_10029D160);

  v26 = sub_100216754();
  v27 = sub_100216C54();

  if (!os_log_type_enabled(v26, v27))
  {
    goto LABEL_21;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v36 = v29;
  *v28 = 136446210;
  v30 = sub_100005FB0(v4, v6, &v36);

  *(v28 + 4) = v30;
  _os_log_impl(&_mh_execute_header, v26, v27, "DBAdapter peer %{public}s has no/incomplete dynamic info/sig", v28, 0xCu);
  sub_100006128(v29);

LABEL_22:

  return 0;
}

void *sub_10019DA6C(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_100216964();
  v7 = [v5 initWithEntityName:v6];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10021D600;
  *(v8 + 56) = type metadata accessor for ContainerMO();
  *(v8 + 64) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_100216C34();
  [v7 setPredicate:v10];

  sub_10001148C(&qword_10029D150, &qword_100226560);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10021D600;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = 0x49656E696863616DLL;
  *(v11 + 40) = 0xE900000000000044;
  isa = sub_100216B14().super.isa;

  [v7 setPropertiesToFetch:isa];

  [v7 setFetchBatchSize:25];
  v18 = &_swiftEmptySetSingleton;
  v16 = &v18;
  v17 = a2;
  sub_100004860(v7, EscrowCheckGraphStatus.rawValue.getter, 0, sub_1001A1434, v15, type metadata accessor for MachineMO);

  v13 = v18;
  if (v2)
  {
  }

  return v13;
}

uint64_t sub_10019DCFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10018B000(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_10019DD6C(void *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v8 = objc_allocWithZone(NSFetchRequest);
  v9 = sub_100216964();
  v10 = [v8 initWithEntityName:v9];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10021D420;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100019BD0();
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 96) = type metadata accessor for ContainerMO();
  *(v11 + 104) = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v11 + 72) = a1;

  v12 = a1;
  v13 = sub_100216C34();
  [v10 setPredicate:v13];

  [v10 setReturnsObjectsAsFaults:1];
  sub_10001148C(&qword_100297DA0, &qword_1002264D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100225FB0;
  v15 = objc_allocWithZone(NSSortDescriptor);
  v16 = sub_100216964();
  v17 = [v15 initWithKey:v16 ascending:0];

  *(v14 + 32) = v17;
  sub_10000200C(0, &unk_10029D630, NSSortDescriptor_ptr);
  isa = sub_100216B14().super.isa;

  [v10 setSortDescriptors:isa];

  type metadata accessor for MachineMO();
  v19 = sub_100216D54();
  if (!v4)
  {
    v27 = v19;
    v28 = v19 >> 62;
    if (v19 >> 62)
    {
      v41 = sub_1002170F4();
      if (v41 < 0)
      {
LABEL_37:
        __break(1u);
        return;
      }

      a3 = v41;
      a4 = v41 != 0;
      if (sub_1002170F4() >= a4)
      {
        if (sub_1002170F4() >= a3)
        {
LABEL_8:
          if ((v27 & 0xC000000000000001) != 0)
          {

            if (a3 >= 2)
            {
              v29 = a4;
              do
              {
                v30 = v29 + 1;
                sub_100217004(v29);
                v29 = v30;
              }

              while (a3 != v30);
            }
          }

          else
          {
          }

          if (v28)
          {
            sub_100217104();
            v31 = v32;
            a4 = v33;
            v35 = v34;

            a3 = v35 >> 1;
          }

          else
          {
            v31 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
          }

          v36 = a3 - a4;
          if (!__OFSUB__(a3, a4))
          {
            if (!v36)
            {
LABEL_26:
              swift_unknownObjectRelease();

              return;
            }

            v42 = _swiftEmptyArrayStorage;
            sub_100217064();
            if ((v36 & 0x8000000000000000) == 0)
            {
              if (a4 <= a3)
              {
                v37 = a3;
              }

              else
              {
                v37 = a4;
              }

              v38 = v37 - a4;
              v39 = (v31 + 8 * a4);
              while (v38)
              {
                v40 = *v39++;
                a4 = [v40 objectID];
                sub_100217044();
                a3 = v42[2];
                sub_100217074();
                sub_100217084();
                sub_100217054();
                --v38;
                if (!--v36)
                {
                  goto LABEL_26;
                }
              }

              __break(1u);
              goto LABEL_29;
            }

            goto LABEL_36;
          }

LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        __break(1u);
      }
    }

    else
    {
      a3 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      a4 = a3 != 0;
      if (a3 >= a4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_100297520 != -1)
  {
LABEL_29:
    swift_once();
  }

  v20 = sub_100216774();
  sub_100002648(v20, qword_10029D160);

  swift_errorRetain();
  v21 = sub_100216754();
  v22 = sub_100216C74();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v23 = 136315394;
    *(v23 + 4) = sub_100005FB0(a3, a4, &v42);
    *(v23 + 12) = 2082;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v24 = sub_100216994();
    v26 = sub_100005FB0(v24, v25, &v42);

    *(v23 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "Failed to fetch most recent machine object id for %s: %{public}s", v23, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
}

id sub_10019E368(void *a1, void *a2)
{
  v2 = a1;
  v3 = sub_10019DA6C(a1, a2);
  v10 = v3;
  v11 = 0;
  v12 = v3 + 56;
  v13 = 1 << v3[32];
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v3 + 7);
  v16 = (v13 + 63) >> 6;
  v50 = v3;
  v51 = v2;
  while (v15)
  {
LABEL_13:
    v18 = (*(v10 + 6) + ((v11 << 10) | (16 * __clz(__rbit64(v15)))));
    v19 = *v18;
    v20 = v18[1];

    sub_10019DD6C(v2, a2, v19, v20);
    if (v21 >> 62)
    {
      v22 = sub_1002170F4();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 &= v15 - 1;
    if (v22)
    {
      v23 = objc_allocWithZone(NSBatchDeleteRequest);
      sub_10000200C(0, &unk_10029D610, NSManagedObjectID_ptr);
      isa = sub_100216B14().super.isa;

      v25 = [v23 initWithObjectIDs:isa];

      [v25 setResultType:1];
      *&v55 = 0;
      v26 = [a2 executeRequest:v25 error:&v55];
      if (v26)
      {
        v27 = v26;
        v28 = v55;

        objc_opt_self();
        v29 = swift_dynamicCastObjCClass();
        if (!v29)
        {

          v55 = 0u;
          v56 = 0u;
          v10 = v50;
          v2 = v51;
          goto LABEL_33;
        }

        v30 = v29;
        v2 = v51;
        if ([v29 result])
        {
          sub_100216E24();
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        v10 = v50;
        v55 = v53;
        v56 = v54;
        if (*(&v54 + 1))
        {
          v39 = sub_10001148C(&qword_10029D620, &qword_100226558);
          if (swift_dynamicCast())
          {
            v49 = objc_opt_self();
            sub_10001148C(&qword_1002983D8, &unk_10021DE60);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10021D600;
            *&v55 = sub_100216974();
            *(&v55 + 1) = v41;
            sub_100216F74();
            *(inited + 96) = v39;
            *(inited + 72) = v53;
            sub_100019254(inited);
            swift_setDeallocating();
            sub_1000114D4(inited + 32, &unk_1002983E0, &qword_10021D708);
            loga = sub_1002168C4().super.isa;

            sub_10001148C(&qword_100297DA0, &qword_1002264D0);
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_100225FB0;
            *(v42 + 32) = a2;
            sub_10000200C(0, &qword_10029D628, NSManagedObjectContext_ptr);
            v43 = a2;
            v44 = sub_100216B14().super.isa;

            [v49 mergeChangesFromRemoteContextSave:loga intoContexts:v44];

            v10 = v50;
          }

          else
          {
          }

          v2 = v51;
        }

        else
        {

LABEL_33:
          sub_1000114D4(&v55, &unk_100297770, &unk_10021DF90);
        }
      }

      else
      {
        v31 = v55;
        sub_100216154();

        swift_willThrow();
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v32 = sub_100216774();
        sub_100002648(v32, qword_10029D160);

        swift_errorRetain();
        v33 = sub_100216754();
        v34 = sub_100216C74();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          log = v33;
          v36 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v55 = v48;
          *v35 = 136315394;
          v37 = sub_100005FB0(v19, v20, &v55);

          *(v35 + 4) = v37;
          *(v35 + 12) = 2114;
          swift_errorRetain();
          v38 = _swift_stdlib_bridgeErrorToNSError();
          *(v35 + 14) = v38;
          *v36 = v38;
          _os_log_impl(&_mh_execute_header, log, v34, "onqueueRemoveDuplicateMachineIDs error removing duplicate machineIDs for %s: %{public}@", v35, 0x16u);
          sub_1000114D4(v36, &qword_10029D580, &unk_10021CCC0);

          sub_100006128(v48);
        }

        else
        {
        }

        v10 = v50;
        v2 = v51;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return sub_10010AAD0();
    }

    v15 = *&v12[8 * v17];
    ++v11;
    if (v15)
    {
      v11 = v17;
      goto LABEL_13;
    }
  }

  __break(1u);
  swift_once();
  v4 = sub_100216774();
  sub_100002648(v4, qword_10029D160);
  swift_errorRetain();
  v5 = sub_100216754();
  v6 = sub_100216C74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "onqueueRemoveDuplicateMachineIDs error removing duplicate machineIDs: %{public}@", v7, 0xCu);
    sub_1000114D4(v8, &qword_10029D580, &unk_10021CCC0);
  }

  else
  {
  }

  return sub_10010AAD0();
}

__objc2_prop *sub_10019EC98(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for Container.DBAdapter();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v9 = a1;
  v10 = a2;
  sub_1000602D0(a3, a4);
  sub_10004CD18(0, 0xF000000000000000);
  v11 = [objc_allocWithZone(type metadata accessor for PolicyRedactionCrypter()) init];
  v12 = [objc_allocWithZone(TPModel) initWithDecrypter:v11 dbAdapter:v8];

  [v12 setSuppressInitialInfoLogging:1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = v12;
  v15 = 0;
  sub_100112814(sub_1001A13AC, v13);

  v256 = 0;
  v16 = [(__objc2_prop *)v14 peerCountWithError:&v256];
  v17 = v256;
  if (v256)
  {
    swift_willThrow();
    v18 = qword_100297520;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    v21 = v19;
    v22 = sub_100216754();
    v23 = sub_100216C74();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = v21;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "loadModel error getting peerCount: %{public}@", v24, 0xCu);
      sub_1000114D4(v25, &qword_10029D580, &unk_10021CCC0);

      v15 = 0;
      v22 = v26;
    }

    else
    {

      v15 = 0;
    }
  }

  else
  {
    v28 = v16;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v29 = sub_100216774();
    sub_100002648(v29, qword_10029D160);
    v22 = sub_100216754();
    v30 = sub_100216C54();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v30, "loadModel: loaded %lu peers", v31, 0xCu);
    }
  }

  v256 = 0;
  v32 = [(__objc2_prop *)v14 voucherCountWithError:&v256];
  v33 = v256;
  if (v256)
  {
    swift_willThrow();
    v34 = qword_100297520;
    v35 = v33;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_100216774();
    sub_100002648(v36, qword_10029D160);
    v37 = v35;
    v38 = sub_100216754();
    v39 = sub_100216C74();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138543362;
      v42 = v37;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&_mh_execute_header, v38, v39, "loadModel error getting voucherCount: %{public}@", v40, 0xCu);
      sub_1000114D4(v41, &qword_10029D580, &unk_10021CCC0);

      v15 = 0;
      v38 = v42;
    }

    else
    {

      v15 = 0;
    }
  }

  else
  {
    v44 = v32;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v45 = sub_100216774();
    sub_100002648(v45, qword_10029D160);
    v38 = sub_100216754();
    v46 = sub_100216C54();
    if (os_log_type_enabled(v38, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v46, "loadModel: loaded %lu vouchers", v47, 0xCu);
    }
  }

  if (qword_100297520 != -1)
  {
    goto LABEL_224;
  }

  while (1)
  {
    v48 = sub_100216774();
    sub_100002648(v48, qword_10029D160);
    v49 = v14;
    v50 = sub_100216754();
    v51 = sub_100216C54();
    v252 = v49;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v49;
      v54 = v52;
      *v52 = 134217984;
      v55 = [(__objc2_prop *)v53 allCustodianRecoveryKeys];
      sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
      v56 = sub_100216B24();

      if (v56 >> 62)
      {
        v57 = sub_1002170F4();
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v54 + 1) = v57;

      _os_log_impl(&_mh_execute_header, v50, v51, "loadModel: loaded %ld CRKs", v54, 0xCu);
    }

    else
    {

      v50 = v49;
    }

    v58 = [v10 recoveryKeySigningSPKI];
    if (v58)
    {
      v59 = v58;
      v60 = sub_100216224();
      v62 = v61;

      v63 = [v10 recoveryKeyEncryptionSPKI];
      if (v63)
      {
        v64 = v63;
        v65 = sub_100216224();
        v67 = v66;

        v68 = objc_allocWithZone(TPRecoveryKeyPair);
        sub_100012558(v60, v62);
        sub_100012558(v65, v67);
        v69 = v9;
        isa = sub_100216204().super.isa;
        v71 = sub_100216204().super.isa;
        v72 = [v68 initWithSigningKeyData:isa encryptionKeyData:v71];

        sub_100002BF0(v65, v67);
        v9 = v69;
        sub_100002BF0(v60, v62);
        [(__objc2_prop *)v252 setRecoveryKeys:v72];

        sub_100002BF0(v65, v67);
        sub_100002BF0(v60, v62);
        goto LABEL_56;
      }

      sub_100002BF0(v60, v62);
    }

    v73 = sub_10010EB40();
    if (v73)
    {
      v74 = v73;
      v75 = [v73 recoverySigningPublicKey];
      if (!v75)
      {

        goto LABEL_56;
      }

      v76 = v75;
      v77 = sub_100216224();
      v79 = v78;

      v80 = [v74 recoveryEncryptionPublicKey];
      if (!v80)
      {
        sub_100002BF0(v77, v79);

        goto LABEL_56;
      }

      v253 = v9;
      v81 = v80;
      v82 = sub_100216224();
      v84 = v83;

      v85 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v85 != 2)
        {
          goto LABEL_55;
        }

        v86 = *(v77 + 16);
        v87 = *(v77 + 24);
      }

      else
      {
        if (!v85)
        {
          if ((v79 & 0xFF000000000000) == 0)
          {
            goto LABEL_55;
          }

LABEL_44:
          v88 = v84 >> 62;
          if ((v84 >> 62) > 1)
          {
            if (v88 != 2)
            {
              goto LABEL_55;
            }

            v89 = *(v82 + 16);
            v90 = *(v82 + 24);
          }

          else
          {
            if (!v88)
            {
              if ((v84 & 0xFF000000000000) == 0)
              {
                goto LABEL_55;
              }

LABEL_52:
              v91 = sub_100216754();
              v92 = sub_100216C54();
              if (os_log_type_enabled(v91, v92))
              {
                v93 = swift_slowAlloc();
                *v93 = 0;
                _os_log_impl(&_mh_execute_header, v91, v92, "loadModel: recovery key not set in model, but is set on ego peer", v93, 2u);
              }

              v94 = objc_allocWithZone(TPRecoveryKeyPair);
              sub_100012558(v77, v79);
              sub_100012558(v82, v84);
              v95 = sub_100216204().super.isa;
              v96 = sub_100216204().super.isa;
              v97 = [v94 initWithSigningKeyData:v95 encryptionKeyData:v96];

              sub_100002BF0(v82, v84);
              sub_100002BF0(v77, v79);
              [(__objc2_prop *)v252 setRecoveryKeys:v97];

              goto LABEL_55;
            }

            v89 = v82;
            v90 = v82 >> 32;
          }

          if (v89 != v90)
          {
            goto LABEL_52;
          }

LABEL_55:
          sub_100002BF0(v82, v84);
          sub_100002BF0(v77, v79);

          v9 = v253;
          goto LABEL_56;
        }

        v86 = v77;
        v87 = v77 >> 32;
      }

      if (v86 == v87)
      {
        goto LABEL_55;
      }

      goto LABEL_44;
    }

LABEL_56:
    v98 = objc_autoreleasePoolPush();
    sub_100115168(v10, v9, &v256);
    if (v15)
    {
      v15 = 0;
      objc_autoreleasePoolPop(v98);
      swift_errorRetain();
      v99 = sub_100216754();
      v100 = sub_100216C74();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *v101 = 138543362;
        swift_errorRetain();
        v103 = _swift_stdlib_bridgeErrorToNSError();
        *(v101 + 4) = v103;
        *v102 = v103;
        _os_log_impl(&_mh_execute_header, v99, v100, "loadModel error loading policies: %{public}@", v101, 0xCu);
        sub_1000114D4(v102, &qword_10029D580, &unk_10021CCC0);
      }

      else
      {
      }
    }

    else
    {
      objc_autoreleasePoolPop(v98);
    }

    v104 = [v10 machines];
    v10 = &_swiftEmptySetSingleton;
    if (v104)
    {
      v105 = v104;
      v256 = 0;
      type metadata accessor for MachineMO();
      sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
      sub_100216BA4();

      v106 = v256 ? v256 : &_swiftEmptySetSingleton;
    }

    else
    {
      v106 = &_swiftEmptySetSingleton;
    }

    v254 = v106 & 0xC000000000000001;
    if ((v106 & 0xC000000000000001) != 0)
    {
      v256 = &_swiftEmptySetSingleton;

      v14 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v107 = &_swiftEmptySetSingleton;
        v9 = &stru_100292000;
        v15 = 1;
        do
        {
          swift_dynamicCast();
          if ([v255 status] == 1)
          {
            v108 = v107[2];
            if (v107[3] <= v108)
            {
              sub_100188D90(v108 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v107 = v256;
            v109 = sub_100216DB4(v256[5]);
            v110 = (v107 + 7);
            v111 = -1 << *(v107 + 32);
            v112 = v109 & ~v111;
            v113 = v112 >> 6;
            if (((-1 << v112) & ~v107[(v112 >> 6) + 7]) != 0)
            {
              v114 = __clz(__rbit64((-1 << v112) & ~v107[(v112 >> 6) + 7])) | v112 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v115 = 0;
              v116 = (63 - v111) >> 6;
              do
              {
                if (++v113 == v116 && (v115 & 1) != 0)
                {
                  __break(1u);
LABEL_219:
                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
                  goto LABEL_223;
                }

                v117 = v113 == v116;
                if (v113 == v116)
                {
                  v113 = 0;
                }

                v115 |= v117;
                v118 = *&v110[8 * v113];
              }

              while (v118 == -1);
              v114 = __clz(__rbit64(~v118)) + (v113 << 6);
            }

            *&v110[(v114 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v114;
            *(v107[6] + 8 * v114) = v255;
            ++v107[2];
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v107 = &_swiftEmptySetSingleton;
      }

      v15 = 0;
    }

    else
    {

      v107 = sub_100189034(v119);
    }

    sub_100109078(v107);
    v121 = v120;

    v251 = sub_10019C848(v121);

    if (v254)
    {
      v248 = v15;
      v256 = &_swiftEmptySetSingleton;

      v14 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v122 = &_swiftEmptySetSingleton;
        v9 = -1;
        v15 = 1;
        do
        {
          swift_dynamicCast();
          if ([v255 status] == 2)
          {
            v123 = v122[2];
            if (v122[3] <= v123)
            {
              sub_100188D90(v123 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v122 = v256;
            v124 = sub_100216DB4(v256[5]);
            v125 = (v122 + 7);
            v126 = -1 << *(v122 + 32);
            v127 = v124 & ~v126;
            v128 = v127 >> 6;
            if (((-1 << v127) & ~v122[(v127 >> 6) + 7]) != 0)
            {
              v129 = __clz(__rbit64((-1 << v127) & ~v122[(v127 >> 6) + 7])) | v127 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v130 = 0;
              v131 = (63 - v126) >> 6;
              do
              {
                if (++v128 == v131 && (v130 & 1) != 0)
                {
                  goto LABEL_219;
                }

                v132 = v128 == v131;
                if (v128 == v131)
                {
                  v128 = 0;
                }

                v130 |= v132;
                v133 = *&v125[8 * v128];
              }

              while (v133 == -1);
              v129 = __clz(__rbit64(~v133)) + (v128 << 6);
            }

            *&v125[(v129 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v129;
            *(v122[6] + 8 * v129) = v255;
            ++v122[2];
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v122 = &_swiftEmptySetSingleton;
      }

      v15 = v248;
    }

    else
    {

      v122 = sub_10018929C(v134);
    }

    sub_100109078(v122);
    v136 = v135;

    sub_10019C848(v136);

    if (v254)
    {
      v249 = v15;
      v256 = &_swiftEmptySetSingleton;

      v14 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v137 = &_swiftEmptySetSingleton;
        v9 = -1;
        v15 = 1;
        do
        {
          swift_dynamicCast();
          if ([v255 status] == 5)
          {
            v138 = v137[2];
            if (v137[3] <= v138)
            {
              sub_100188D90(v138 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v137 = v256;
            v139 = sub_100216DB4(v256[5]);
            v140 = (v137 + 7);
            v141 = -1 << *(v137 + 32);
            v142 = v139 & ~v141;
            v143 = v142 >> 6;
            if (((-1 << v142) & ~v137[(v142 >> 6) + 7]) != 0)
            {
              v144 = __clz(__rbit64((-1 << v142) & ~v137[(v142 >> 6) + 7])) | v142 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v145 = 0;
              v146 = (63 - v141) >> 6;
              do
              {
                if (++v143 == v146 && (v145 & 1) != 0)
                {
                  goto LABEL_220;
                }

                v147 = v143 == v146;
                if (v143 == v146)
                {
                  v143 = 0;
                }

                v145 |= v147;
                v148 = *&v140[8 * v143];
              }

              while (v148 == -1);
              v144 = __clz(__rbit64(~v148)) + (v143 << 6);
            }

            *&v140[(v144 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v144;
            *(v137[6] + 8 * v144) = v255;
            ++v137[2];
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v137 = &_swiftEmptySetSingleton;
      }

      v15 = v249;
    }

    else
    {

      v137 = sub_100189504(v149);
    }

    sub_100109078(v137);
    v151 = v150;

    sub_10019C848(v151);

    if (v254)
    {
      v250 = v15;
      v256 = &_swiftEmptySetSingleton;

      v14 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v152 = &_swiftEmptySetSingleton;
        v9 = -1;
        v15 = 1;
        do
        {
          swift_dynamicCast();
          if ([v255 status] == 3)
          {
            v153 = v152[2];
            if (v152[3] <= v153)
            {
              sub_100188D90(v153 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v152 = v256;
            v154 = sub_100216DB4(v256[5]);
            v155 = (v152 + 7);
            v156 = -1 << *(v152 + 32);
            v157 = v154 & ~v156;
            v158 = v157 >> 6;
            if (((-1 << v157) & ~v152[(v157 >> 6) + 7]) != 0)
            {
              v159 = __clz(__rbit64((-1 << v157) & ~v152[(v157 >> 6) + 7])) | v157 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v160 = 0;
              v161 = (63 - v156) >> 6;
              do
              {
                if (++v158 == v161 && (v160 & 1) != 0)
                {
                  goto LABEL_221;
                }

                v162 = v158 == v161;
                if (v158 == v161)
                {
                  v158 = 0;
                }

                v160 |= v162;
                v163 = *&v155[8 * v158];
              }

              while (v163 == -1);
              v159 = __clz(__rbit64(~v163)) + (v158 << 6);
            }

            *&v155[(v159 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v159;
            *(v152[6] + 8 * v159) = v255;
            ++v152[2];
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v152 = &_swiftEmptySetSingleton;
      }

      v15 = v250;
    }

    else
    {

      v152 = sub_10018976C(v164);
    }

    sub_100109078(v152);
    v166 = v165;

    sub_10019C848(v166);

    if (v254)
    {
      v247 = v15;
      v256 = &_swiftEmptySetSingleton;

      v14 = sub_100216E84();
      if (sub_100216F14())
      {
        type metadata accessor for MachineMO();
        v167 = &_swiftEmptySetSingleton;
        v9 = &stru_100292000;
        v15 = 1;
        do
        {
          swift_dynamicCast();
          if ([v255 status] == 4)
          {
            v168 = v167[2];
            if (v167[3] <= v168)
            {
              sub_100188D90(v168 + 1, &qword_10029D598, &qword_1002264E8);
            }

            v167 = v256;
            v169 = sub_100216DB4(v256[5]);
            v170 = (v167 + 7);
            v171 = -1 << *(v167 + 32);
            v172 = v169 & ~v171;
            v173 = v172 >> 6;
            if (((-1 << v172) & ~v167[(v172 >> 6) + 7]) != 0)
            {
              v174 = __clz(__rbit64((-1 << v172) & ~v167[(v172 >> 6) + 7])) | v172 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v175 = 0;
              v176 = (63 - v171) >> 6;
              do
              {
                if (++v173 == v176 && (v175 & 1) != 0)
                {
                  goto LABEL_222;
                }

                v177 = v173 == v176;
                if (v173 == v176)
                {
                  v173 = 0;
                }

                v175 |= v177;
                v178 = *&v170[8 * v173];
              }

              while (v178 == -1);
              v174 = __clz(__rbit64(~v178)) + (v173 << 6);
            }

            *&v170[(v174 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v174;
            *(v167[6] + 8 * v174) = v255;
            ++v167[2];
          }

          else
          {
          }
        }

        while (sub_100216F14());
      }

      else
      {
        v167 = &_swiftEmptySetSingleton;
      }

      v15 = v247;
    }

    else
    {

      v167 = sub_1001899D4(v179);
    }

    sub_100109078(v167);
    v181 = v180;

    sub_10019C848(v181);

    if (!v254)
    {
      break;
    }

    v256 = &_swiftEmptySetSingleton;
    sub_100216E84();
    if (!sub_100216F14())
    {
LABEL_195:

      goto LABEL_197;
    }

    type metadata accessor for MachineMO();
    v10 = &_swiftEmptySetSingleton;
    v14 = &stru_100292000;
    v9 = 1;
    while (1)
    {
      swift_dynamicCast();
      if (![v255 status])
      {
        break;
      }

LABEL_180:
      if (!sub_100216F14())
      {
        goto LABEL_195;
      }
    }

    v182 = *(v10 + 2);
    if (*(v10 + 3) <= v182)
    {
      sub_100188D90(v182 + 1, &qword_10029D598, &qword_1002264E8);
    }

    v10 = v256;
    v183 = sub_100216DB4(v256[5]);
    v184 = v10 + 56;
    v185 = -1 << v10[32];
    v186 = v183 & ~v185;
    v187 = v186 >> 6;
    if (((-1 << v186) & ~*&v10[8 * (v186 >> 6) + 56]) != 0)
    {
      v188 = __clz(__rbit64((-1 << v186) & ~*&v10[8 * (v186 >> 6) + 56])) | v186 & 0x7FFFFFFFFFFFFFC0;
LABEL_194:
      *&v184[(v188 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v188;
      *(*(v10 + 6) + 8 * v188) = v255;
      ++*(v10 + 2);
      goto LABEL_180;
    }

    v189 = 0;
    v190 = (63 - v185) >> 6;
    while (++v187 != v190 || (v189 & 1) == 0)
    {
      v191 = v187 == v190;
      if (v187 == v190)
      {
        v187 = 0;
      }

      v189 |= v191;
      v192 = *&v184[8 * v187];
      if (v192 != -1)
      {
        v188 = __clz(__rbit64(~v192)) + (v187 << 6);
        goto LABEL_194;
      }
    }

LABEL_223:
    __break(1u);
LABEL_224:
    swift_once();
  }

  v10 = sub_100189C3C(v106);
LABEL_197:
  sub_100109078(v10);
  v194 = v193;

  sub_10019C848(v194);

  v195 = sub_100216754();
  v196 = sub_100216C54();

  if (os_log_type_enabled(v195, v196))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v256 = v198;
    *v197 = 136446210;
    v199 = sub_100216BC4();
    v201 = sub_100005FB0(v199, v200, &v256);

    *(v197 + 4) = v201;
    _os_log_impl(&_mh_execute_header, v195, v196, "loadModel: allowedMachineIDs: %{public}s", v197, 0xCu);
    sub_100006128(v198);
  }

  v202 = sub_100216754();
  v203 = sub_100216C54();

  if (os_log_type_enabled(v202, v203))
  {
    v204 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    v256 = v205;
    *v204 = 136446210;
    v206 = sub_100216BC4();
    v208 = v207;

    v209 = sub_100005FB0(v206, v208, &v256);

    *(v204 + 4) = v209;
    _os_log_impl(&_mh_execute_header, v202, v203, "loadModel: disallowedMachineIDs: %{public}s", v204, 0xCu);
    sub_100006128(v205);
  }

  else
  {
  }

  v210 = sub_100216754();
  v211 = sub_100216C54();

  if (os_log_type_enabled(v210, v211))
  {
    v212 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v256 = v213;
    *v212 = 136446210;
    v214 = sub_100216BC4();
    v216 = v215;

    v217 = sub_100005FB0(v214, v216, &v256);

    *(v212 + 4) = v217;
    _os_log_impl(&_mh_execute_header, v210, v211, "loadModel: ghostedMachineIDs: %{public}s", v212, 0xCu);
    sub_100006128(v213);
  }

  else
  {
  }

  v218 = sub_100216754();
  v219 = sub_100216C54();

  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v256 = v221;
    *v220 = 136446210;
    v222 = sub_100216BC4();
    v224 = v223;

    v225 = sub_100005FB0(v222, v224, &v256);

    *(v220 + 4) = v225;
    _os_log_impl(&_mh_execute_header, v218, v219, "loadModel: evictedMachineIDs: %{public}s", v220, 0xCu);
    sub_100006128(v221);
  }

  else
  {
  }

  v226 = sub_100216754();
  v227 = sub_100216C54();

  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    v256 = v229;
    *v228 = 136446210;
    v230 = sub_100216BC4();
    v232 = v231;

    v233 = sub_100005FB0(v230, v232, &v256);

    *(v228 + 4) = v233;
    _os_log_impl(&_mh_execute_header, v226, v227, "loadModel: unknownReasonMachineIDs: %{public}s", v228, 0xCu);
    sub_100006128(v229);
  }

  else
  {
  }

  v234 = sub_100216754();
  v235 = sub_100216C54();

  if (os_log_type_enabled(v234, v235))
  {
    v236 = swift_slowAlloc();
    v237 = swift_slowAlloc();
    v256 = v237;
    *v236 = 136446210;
    v238 = sub_100216BC4();
    v240 = v239;

    v241 = sub_100005FB0(v238, v240, &v256);

    *(v236 + 4) = v241;
    _os_log_impl(&_mh_execute_header, v234, v235, "loadModel: unknownMachineIDs: %{public}s", v236, 0xCu);
    sub_100006128(v237);
  }

  else
  {
  }

  v242 = *(v251 + 16);

  if (!v242)
  {
    v243 = sub_100216754();
    v244 = sub_100216C54();
    if (os_log_type_enabled(v243, v244))
    {
      v245 = swift_slowAlloc();
      *v245 = 0;
      _os_log_impl(&_mh_execute_header, v243, v244, "loadModel: no allowedMachineIDs?", v245, 2u);
    }
  }

  [(__objc2_prop *)v252 setSuppressInitialInfoLogging:0];
  return v252;
}

void sub_1001A0C98(void *a1, void *a2)
{
  v4 = [a1 egoPeerID];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [a1 egoPeerStableInfo];
  if (!v6)
  {

LABEL_12:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    oslog = sub_100216754();
    v31 = sub_100216C74();
    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v31, "ensureEgoConsistency failed to find ego peer information", v32, 2u);
    }

    goto LABEL_16;
  }

  v7 = v6;
  v8 = sub_100216224();
  v10 = v9;

  v11 = [a1 egoPeerStableInfoSig];
  if (!v11)
  {

    sub_100002BF0(v8, v10);
    goto LABEL_12;
  }

  v12 = v11;
  v13 = sub_100216224();
  v15 = v14;

  v16 = objc_allocWithZone(TPPeerStableInfo);
  sub_100012558(v8, v10);
  sub_100012558(v13, v15);
  isa = sub_100216204().super.isa;
  v18 = sub_100216204().super.isa;
  v19 = [v16 initWithData:isa sig:v18];

  sub_100002BF0(v13, v15);
  sub_100002BF0(v8, v10);
  if (!v19)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v33 = sub_100216774();
    sub_100002648(v33, qword_10029D160);
    oslog = sub_100216754();
    v34 = sub_100216C74();
    if (os_log_type_enabled(oslog, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v34, "ensureEgoConsistency failed to create TPPeerStableInfo from container", v35, 2u);
    }

    sub_100002BF0(v8, v10);
    sub_100002BF0(v13, v15);
LABEL_16:

    return;
  }

  v52 = 0;
  v20 = [a2 getStableInfoForPeerWithID:v5 error:&v52];

  if (v52)
  {
    v21 = v52;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v22 = sub_100216774();
    sub_100002648(v22, qword_10029D160);
    v23 = v21;
    v24 = sub_100216754();
    v25 = sub_100216C74();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v23;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "ensureEgoConsistency failed to create TPPeerStableInfo from model: %{public}@", v26, 0xCu);
      sub_1000114D4(v27, &qword_10029D580, &unk_10021CCC0);

      sub_100002BF0(v8, v10);
      sub_100002BF0(v13, v15);

      return;
    }

    sub_100002BF0(v8, v10);
    sub_100002BF0(v13, v15);

    goto LABEL_33;
  }

  if (!v20)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v48 = sub_100216774();
    sub_100002648(v48, qword_10029D160);
    v24 = sub_100216754();
    v49 = sub_100216C74();
    if (os_log_type_enabled(v24, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v24, v49, "ensureEgoConsistency failed to create TPPeerStableInfo from model", v50, 2u);
    }

    sub_100002BF0(v8, v10);
    sub_100002BF0(v13, v15);
LABEL_33:

    return;
  }

  v36 = v20;
  v37 = [v36 clock];
  if ([v19 clock] >= v37)
  {

    sub_100002BF0(v8, v10);
    sub_100002BF0(v13, v15);
  }

  else
  {
    v38 = [v36 data];
    v39 = sub_100216224();
    v41 = v40;

    v42 = sub_100216204().super.isa;
    sub_100002BF0(v39, v41);
    [a1 setEgoPeerStableInfo:v42];

    v43 = [v36 sig];
    v44 = sub_100216224();
    v46 = v45;

    v47 = sub_100216204().super.isa;
    sub_100002BF0(v44, v46);
    [a1 setEgoPeerStableInfoSig:v47];

    sub_100002BF0(v8, v10);
    sub_100002BF0(v13, v15);
  }
}

uint64_t sub_1001A13C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A1450(uint64_t a1)
{
  sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
  result = sub_100217114();
  v3 = result;
  v4 = 0;
  v32 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v31 = result + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v32 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v32 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 dictionaryRepresentation];
      if (v21)
      {
        v33 = v17;
        v22 = v10;
        v23 = v3;
        v24 = v18;
        v25 = v21;
        v26 = sub_1002168D4();

        v18 = v24;
        v3 = v23;
        v10 = v22;
        v17 = v33;
      }

      else
      {
        v26 = 0;
      }

      v35 = sub_10001148C(&qword_10029DB68, &qword_1002267F8);

      *&v34 = v26;
      *(v31 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v27 = (v3[6] + 16 * v15);
      *v27 = v18;
      v27[1] = v17;
      result = sub_1000125AC(&v34, (v3[7] + 32 * v15));
      v28 = v3[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v3[2] = v30;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001A1654(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100012558(a1, a2);
  v6 = sub_1001905FC();
  result = sub_100002BF0(a1, a2);
  if (!v2)
  {
    sub_10001148C(&qword_10029D6D0, &qword_1002265B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10021DBE0;
    *(v8 + 32) = sub_10000200C(0, &qword_10029D6D8, NSDictionary_ptr);
    *(v8 + 40) = sub_10000200C(0, &qword_10029D6E0, NSString_ptr);
    *(v8 + 48) = sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    sub_100216974();
    sub_100216D84();

    if (v11)
    {
      sub_10001148C(&qword_10029D6E8, &unk_1002265B8);
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000114D4(v10, &unk_100297770, &unk_10021DF90);
      return 0;
    }
  }

  return result;
}

id sub_1001A1800(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = [objc_allocWithZone(_SFECKeySpecifier) initWithCurve:4];
    v4 = [objc_allocWithZone(_SFECKeyPair) initRandomKeyPairWithSpecifier:v3];
    if (v4)
    {
      v2 = v4;
    }

    else
    {
      sub_1000561D0();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 13;
      swift_willThrow();
    }
  }

  else
  {
    v7 = objc_opt_self();
    sub_100012558(a1, a2);
    isa = sub_100216204().super.isa;
    v12 = 0;
    v2 = [v7 fetchKeyPairWithPrivateKeyPersistentRef:isa error:&v12];

    if (v2)
    {
      v9 = v12;
    }

    else
    {
      v2 = v12;
      sub_100216154();

      swift_willThrow();
    }

    sub_10004CD18(a1, a2);
  }

  return v2;
}

void sub_1001A19A8(void *a1, uint64_t a2, char *a3, void *a4, uint64_t a5, unint64_t a6, char *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, char *a14, void *a15, unint64_t a16, int a17, void *a18, void *a19, void *a20, char *a21, uint64_t a22, unint64_t a23, void *a24, uint64_t a25, void *a26, const void *a27)
{
  v344 = a8;
  v342 = a7;
  v337 = a6;
  v338 = a3;
  *&v336 = a5;
  v339 = a4;
  v340 = a1;
  *&v341 = a2;
  v350 = a20;
  v349 = a21;
  v353 = a24;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v27 = *(*(PolicyDocumentsRequest - 1) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v28);
  v335 = &v304 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100216384();
  v343 = *(v30 - 8);
  v31 = v343[8];
  __chkstk_darwin(v30, v32);
  v34 = &v304 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a27);
  v35 = swift_allocObject();
  *(v35 + 16) = a27;
  v36 = swift_allocObject();
  v36[2] = a25;
  v36[3] = a26;
  v36[4] = sub_1001AAF14;
  v36[5] = v35;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  _Block_copy(a27);
  _Block_copy(a27);
  _Block_copy(a27);

  v37 = a26;

  v348 = a27;
  _Block_copy(a27);
  v346 = a25;

  v351 = v37;
  v347 = v35;

  v38 = v353;
  v345 = "eKeyPersistentRef:crk:reply:)";
  v39 = sub_10019C8E0(v38, 0xD0000000000000F2, 0x800000010023CB30);

  v353 = v39;
  swift_retain_n();
  v352 = v36;
  swift_retain_n();
  v40 = sub_1001A1800(v350, v349);
  v41 = 0;
  v350 = v38;
  v42 = v343;
  v333 = sub_1001A1800(a22, a23);
  v61 = v40;
  sub_100216374();
  sub_100216334();
  v63 = v62;
  (v42[1])(v34, v30);
  v64 = v63 * 1000.0;
  if (COERCE__INT64(fabs(v63 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v64 <= -1.0)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    swift_once();
    v88 = sub_100216774();
    sub_100002648(v88, qword_10029D160);
    swift_errorRetain();
    v89 = sub_100216754();
    v90 = sub_100216C74();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      *&aBlock = v92;
      *v91 = 136446210;
      v370 = v61;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v93 = sub_100216994();
      v95 = sub_100005FB0(v93, v94, &aBlock);

      *(v91 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v89, v90, "bottle creation failed: %{public}s", v91, 0xCu);
      sub_100006128(v92);
    }

    swift_errorRetain();
    v96 = sub_100216C74();
    swift_errorRetain();
    v97 = sub_100216754();

    if (os_log_type_enabled(v97, v96))
    {
      v98 = swift_slowAlloc();
      v370 = swift_slowAlloc();
      *v98 = 136446466;
      aBlock = 0uLL;
      sub_10001148C(&qword_10029D698, &unk_100226590);
      v99 = sub_100216994();
      v101 = sub_100005FB0(v99, v100, &v370);

      *(v98 + 4) = v101;
      *(v98 + 12) = 2082;
      *&aBlock = 0x203A726F727265;
      *(&aBlock + 1) = 0xE700000000000000;
      v362 = v61;
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v372._countAndFlagsBits = sub_100216994();
      sub_100216A14(v372);

      v102 = sub_100005FB0(aBlock, *(&aBlock + 1), &v370);

      *(v98 + 14) = v102;
      _os_log_impl(&_mh_execute_header, v97, v96, "prepare complete peerID: %{public}s %{public}s", v98, 0x16u);
      swift_arrayDestroy();
    }

    v51 = v348;
    v103 = v351;
    sub_10010EEEC(0xD0000000000000F2, v345 | 0x8000000000000000);
    v104 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
    v105 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
    v106 = v103;
    v107 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
    v108 = *&v103[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
    _Block_copy(v51);
    v109 = v108;
    v60 = v106;
    sub_1001B473C(0x65726170657250, 0xE700000000000000, v104, v105, v107, v109, v61);
    swift_getErrorValue();
    sub_1001ADD74(v360, v361);
    v110 = sub_100216144();
    (v51)[2](v51, 0, 0, 0, 0, 0, 0, v110);

    _Block_release(v51);

    v349 = v342;
    goto LABEL_8;
  }

  if (v64 >= 1.84467441e19)
  {
    goto LABEL_69;
  }

  v65 = v61;
  v66 = v64;
  v67 = sub_100216964();
  v68 = sub_100216964();
  v69 = objc_opt_self();
  *&aBlock = 0;
  v70 = v333;
  v71 = [v69 permanentInfoWithMachineID:v67 modelID:v68 epoch:1 signingKeyPair:v65 encryptionKeyPair:v333 creationTime:v66 peerIDHashAlgo:1 error:&aBlock];

  if (v71)
  {
    v72 = aBlock;

    v73 = [v71 peerID];
    v74 = v65;
    v75 = sub_100216974();
    v77 = v76;

    v78 = objc_allocWithZone(type metadata accessor for BottledPeer());
    v79 = v70;
    v80 = v74;

    v81 = v337;

    v82 = v339;

    v344 = v79;
    v83 = sub_1001FD814(v75, v77, v336, v81, v80, v79, v338, v82);
    v349 = v80;
    v342 = v83;
    v343 = v71;
    v86 = *&v83[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret];
    v87 = *&v83[OBJC_IVAR____TtC18TrustedPeersHelper11BottledPeer_secret + 8];
    sub_100012558(v86, v87);
    sub_10010ACF0(v86, v87, v75, v77);
    sub_100002BF0(v86, v87);
    strcpy(&aBlock, "signing-key ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v373._countAndFlagsBits = v75;
    v373._object = v77;
    sub_100216A14(v373);
    *&v336 = objc_opt_self();
    v111 = [v336 defaultManager];
    v112 = [objc_allocWithZone(_SFIdentity) initWithKeyPair:v80];
    SFAccessibilityMakeWithMode();
    v341 = aBlock;
    v113 = v366;
    v114 = objc_allocWithZone(_SFAccessPolicy);
    aBlock = v341;
    v366 = v113;
    v115 = [v114 initWithAccessibility:&aBlock sharingPolicy:0];
    v337 = 0xD000000000000020;
    v338 = "endMetrics:reply:)";
    v116 = sub_100216964();
    [v115 setAccessGroup:v116];

    v117 = sub_100216964();

    *&aBlock = 0;
    v340 = v112;
    *&v341 = v111;
    v339 = v115;
    LOBYTE(v115) = [v111 setIdentity:v112 forIdentifier:v117 accessPolicy:v115 error:&aBlock];

    v118 = aBlock;
    if (v115)
    {
      *&aBlock = 0x6974707972636E65;
      *(&aBlock + 1) = 0xEF2079656B2D6E6FLL;
      v119 = v118;
      v374._countAndFlagsBits = v75;
      v374._object = v77;
      sub_100216A14(v374);

      v120 = [v336 defaultManager];
      v121 = objc_allocWithZone(_SFIdentity);
      v122 = [v121 initWithKeyPair:v344];
      SFAccessibilityMakeWithMode();
      v336 = aBlock;
      v123 = v366;
      v124 = objc_allocWithZone(_SFAccessPolicy);
      aBlock = v336;
      v366 = v123;
      v125 = [v124 initWithAccessibility:&aBlock sharingPolicy:0];
      v126 = sub_100216964();
      [v125 setAccessGroup:v126];

      v127 = sub_100216964();

      *&aBlock = 0;
      LOBYTE(v126) = [v120 setIdentity:v122 forIdentifier:v127 accessPolicy:v125 error:&aBlock];

      v128 = aBlock;
      v331 = v120;
      v332 = v122;
      v330 = v125;
      if (v126)
      {
        v328 = a19;
        v329 = a18;
        v317 = a17;
        v337 = a16;
        v338 = a14;
        v319 = a13;
        v318 = a11;
        *&v336 = a10;
        v316 = a9;
        if (a15)
        {
          v129 = a15;
        }

        else
        {
          v177 = qword_100297228;
          v178 = aBlock;
          if (v177 != -1)
          {
            swift_once();
          }

          v128 = qword_1002B0318;
          v129 = qword_1002B0318;
        }

        v179 = v350;
        v315 = a15;
        v180 = v128;
        sub_10001148C(&qword_100297DA0, &qword_1002264D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100225FB0;
        *(inited + 32) = v129;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v182 = v342;
        v333 = a12;
        v183 = v182;
        v184 = v179;
        v185 = v349;
        v186 = a15;
        v350 = v328;
        swift_bridgeObjectRetain_n();
        v187 = v329;
        swift_bridgeObjectRetain_n();
        v342 = v183;
        v188 = v343;
        v324 = v129;
        v189 = v186;
        v323 = v184;
        v190 = v185;
        v327 = v189;
        v191 = v188;
        v322 = v191;
        v325 = v350;
        v326 = v187;
        v350 = sub_10019C6BC(inited);
        swift_setDeallocating();
        v192 = *(inited + 16);
        swift_arrayDestroy();
        v193 = swift_allocObject();
        v194 = v352;
        v193[2] = v353;
        v193[3] = sub_1001AAF4C;
        v193[4] = v194;
        v195 = swift_allocObject();
        *(v195 + 16) = sub_1001AAF8C;
        *(v195 + 24) = v193;
        v196 = v315;
        *(v195 + 32) = 0;
        *(v195 + 40) = v196;
        v197 = v323;
        *(v195 + 48) = v323;
        *(v195 + 56) = v317;
        v198 = v328;
        *(v195 + 64) = v191;
        *(v195 + 72) = v198;
        v199 = v329;
        *(v195 + 80) = v337;
        *(v195 + 88) = v199;
        v200 = v336;
        *(v195 + 96) = v316;
        *(v195 + 104) = v200;
        v201 = v333;
        *(v195 + 112) = v318;
        *(v195 + 120) = v201;
        v202 = v338;
        *(v195 + 128) = v319;
        *(v195 + 136) = v202;
        v203 = v190;
        v204 = v342;
        *(v195 + 144) = v190;
        *(v195 + 152) = v204;
        v205 = swift_allocObject();
        v205[2] = sub_1001AAFCC;
        v205[3] = v195;
        v312 = v205;
        v206 = v324;
        v205[4] = v324;
        v207 = swift_allocObject();
        v313 = v207;
        *(v207 + 16) = v350;
        v208 = (v207 + 16);
        v343 = swift_allocObject();
        swift_retain_n();
        swift_retain_n();
        v209 = v206;
        v210 = v197;
        v323 = v203;
        v324 = v327;
        v325 = v325;

        v326 = v326;

        v320 = v342;
        v322 = v322;
        v327 = v209;
        v321 = v193;

        v314 = v195;

        v211 = sub_100019440(_swiftEmptyArrayStorage);
        v212 = v343;
        v343[2] = v211;
        v213 = v212 + 2;
        v214 = *&v210[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v215 = swift_allocObject();
        v215[2] = v208;
        v215[3] = v210;
        v215[4] = v213;
        v216 = swift_allocObject();
        *(v216 + 16) = sub_1001ACE80;
        *(v216 + 24) = v215;
        v368 = sub_1001ACCC0;
        v369 = v216;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v366 = sub_100109050;
        v367 = &unk_100284368;
        v217 = _Block_copy(&aBlock);
        v342 = v210;

        v310 = v214;
        [v214 performBlockAndWait:v217];
        _Block_release(v217);
        LOBYTE(v210) = swift_isEscapingClosureAtFileLocation();

        if (v210)
        {
          __break(1u);
        }

        v220 = *v208;
        v221 = (*v208 & 0xC000000000000001) == 0;
        v311 = v215;
        if (v221)
        {
          v222 = *(v220 + 16);
        }

        else
        {

          v222 = sub_100216ED4();
        }

        v223 = v353;
        if (v222)
        {
          __chkstk_darwin(v218, v219);
          sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
          sub_100216654();
          v224 = v342;
          v225 = *&v342[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
          v226 = *&v342[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
          v345 = sub_100006484(&v342[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v225);
          v227 = swift_allocObject();
          v227[2] = v224;
          v227[3] = sub_1001ACCBC;
          v228 = v313;
          v227[4] = v312;
          v227[5] = v228;
          v227[6] = v343;
          v229 = *(v226 + 16);
          v230 = *(v229 + 80);
          v231 = v224;

          v232 = v335;
          v230(v335, sub_1001ACE2C, v227, v225, v229);

          sub_1001AC1E4(v232, type metadata accessor for FetchPolicyDocumentsRequest);

          v233 = v323;

          v234 = v320;

          v51 = v348;
          v235 = v330;
          v236 = v331;
LABEL_65:

          v298 = v327;

          v299 = v324;
          v300 = v342;

          v301 = v322;
          v302 = v325;

          swift_bridgeObjectRelease_n();
          v303 = v326;

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v60 = v351;
          goto LABEL_66;
        }

        v237 = *v213;
        swift_retain_n();
        v238 = v352;
        swift_retain_n();
        v239 = v342;
        PolicyDocumentsRequest = v323;
        v304 = v324;
        v308 = v325;
        v240 = v337;

        v241 = v326;

        v242 = v338;

        v309 = v320;
        v243 = v322;

        v244 = sub_100108220(v327, v237);
        v305 = v239;
        v306 = v237;
        v335 = v241;
        v307 = v243;
        if (v244)
        {
          v245 = v244;
          v246 = swift_allocObject();
          v246[2] = v223;
          v246[3] = sub_1001AAF4C;
          v246[4] = v238;
          swift_retain_n();
          swift_retain_n();
          v247 = v245;
          v248 = v247;
          if (v315)
          {
            v249 = [v247 version];
            v250 = *&v239[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride];
            *&v239[OBJC_IVAR____TtC18TrustedPeersHelper9Container_policyVersionOverride] = v249;
          }

          v251 = swift_allocObject();
          *(v251 + 16) = v317;
          *(v251 + 24) = v243;
          *(v251 + 32) = v248;
          v252 = v329;
          *(v251 + 40) = v328;
          *(v251 + 48) = v240;
          v253 = v316;
          *(v251 + 56) = v252;
          *(v251 + 64) = v253;
          v345 = v248;
          v255 = v318;
          v254 = v319;
          *(v251 + 72) = v336;
          *(v251 + 80) = v255;
          v256 = PolicyDocumentsRequest;
          *(v251 + 88) = v333;
          *(v251 + 96) = v254;
          *(v251 + 104) = v242;
          *(v251 + 112) = v256;
          v257 = v309;
          *(v251 + 120) = v239;
          *(v251 + 128) = v257;
          *(v251 + 136) = sub_1001ACE18;
          *(v251 + 144) = v246;
          v258 = swift_allocObject();
          *(v258 + 16) = sub_1001AB01C;
          *(v258 + 24) = v251;
          v368 = sub_1001ACCC0;
          v369 = v258;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v366 = sub_100109050;
          v367 = &unk_100284430;
          v259 = _Block_copy(&aBlock);
          v319 = v246;
          v260 = v259;
          v328 = v369;
          v261 = v239;
          v329 = v256;
          v262 = v308;

          v263 = v335;

          v41 = v309;
          v264 = v309;
          v265 = v307;
          v266 = v345;

          [v310 performBlockAndWait:v260];

          _Block_release(v260);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          v40 = v353;

          v43 = v352;

          v268 = v335;

          v85 = PolicyDocumentsRequest;

          v51 = v348;
          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
LABEL_54:
            swift_once();
            goto LABEL_3;
          }
        }

        else
        {
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v269 = sub_100216774();
          sub_100002648(v269, qword_10029D160);

          v270 = sub_100216754();
          v271 = sub_100216C54();

          if (os_log_type_enabled(v270, v271))
          {
            v272 = swift_slowAlloc();
            v273 = swift_slowAlloc();
            *&aBlock = v273;
            *v272 = 136446210;
            v370 = v237;

            sub_10001148C(&unk_10029D958, &unk_100226700);
            v274 = sub_100216994();
            v276 = sub_100005FB0(v274, v275, &aBlock);

            *(v272 + 4) = v276;
            _os_log_impl(&_mh_execute_header, v270, v271, "fetchPolicyDocument: didn't return policy of version: %{public}s", v272, 0xCu);
            sub_100006128(v273);
          }

          v277 = [v327 versionNumber];
          sub_1000561D0();
          v278 = swift_allocError();
          *v279 = v277;
          *(v279 + 8) = 0;
          *(v279 + 16) = 1;
          swift_retain_n();
          swift_retain_n();
          swift_errorRetain();
          v280 = sub_100216754();
          v281 = sub_100216C54();

          if (os_log_type_enabled(v280, v281))
          {
            v282 = swift_slowAlloc();
            v283 = swift_slowAlloc();
            *&aBlock = v283;
            *v282 = 136446210;
            v370 = v278;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v284 = sub_100216994();
            v286 = sub_100005FB0(v284, v285, &aBlock);

            *(v282 + 4) = v286;
            _os_log_impl(&_mh_execute_header, v280, v281, "Unable to fetch policy: %{public}s", v282, 0xCu);
            sub_100006128(v283);
          }

          v51 = v348;
          v287 = swift_allocError();
          *v288 = xmmword_100225FC0;
          *(v288 + 16) = 13;
          v289 = sub_100216C74();
          swift_errorRetain();
          v290 = sub_100216754();

          if (os_log_type_enabled(v290, v289))
          {
            v291 = swift_slowAlloc();
            v370 = swift_slowAlloc();
            *v291 = 136446466;
            aBlock = 0uLL;
            sub_10001148C(&qword_10029D698, &unk_100226590);
            v292 = sub_100216994();
            v294 = sub_100005FB0(v292, v293, &v370);

            *(v291 + 4) = v294;
            *(v291 + 12) = 2082;
            *&aBlock = 0x203A726F727265;
            *(&aBlock + 1) = 0xE700000000000000;
            v362 = v287;
            swift_errorRetain();
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v377._countAndFlagsBits = sub_100216994();
            sub_100216A14(v377);

            v295 = sub_100005FB0(aBlock, *(&aBlock + 1), &v370);

            *(v291 + 14) = v295;
            _os_log_impl(&_mh_execute_header, v290, v289, "prepare complete peerID: %{public}s %{public}s", v291, 0x16u);
            swift_arrayDestroy();
          }

          v296 = v351;
          sub_10010EEEC(0xD0000000000000F2, v345 | 0x8000000000000000);
          sub_1001B473C(0x65726170657250, 0xE700000000000000, *&v296[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name], *&v296[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8], *&v296[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16], *&v296[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24], v287);
          swift_getErrorValue();
          sub_1001ADD74(v354, v355);
          v297 = sub_100216144();
          (v51)[2](v51, 0, 0, 0, 0, 0, 0, v297);

          v85 = PolicyDocumentsRequest;

          v41 = v309;

          v268 = v335;
        }

        swift_bridgeObjectRelease_n();
        v235 = v330;
        v236 = v331;
        v233 = v323;
        v234 = v320;
        goto LABEL_65;
      }

      v153 = aBlock;
      v154 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v155 = sub_100216774();
      sub_100002648(v155, qword_10029D160);
      swift_errorRetain();
      v156 = sub_100216754();
      v157 = sub_100216C74();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *&aBlock = v159;
        *v158 = 136446210;
        v370 = v154;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v160 = sub_100216994();
        v162 = sub_100005FB0(v160, v161, &aBlock);

        *(v158 + 4) = v162;
        _os_log_impl(&_mh_execute_header, v156, v157, "Unable to save encryption key: %{public}s", v158, 0xCu);
        sub_100006128(v159);
      }

      v163 = v351;
      swift_errorRetain();
      v164 = sub_100216C74();
      swift_errorRetain();
      v165 = sub_100216754();

      if (os_log_type_enabled(v165, v164))
      {
        v166 = swift_slowAlloc();
        v370 = swift_slowAlloc();
        *v166 = 136446466;
        aBlock = 0uLL;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v167 = sub_100216994();
        v169 = sub_100005FB0(v167, v168, &v370);

        *(v166 + 4) = v169;
        *(v166 + 12) = 2082;
        *&aBlock = 0x203A726F727265;
        *(&aBlock + 1) = 0xE700000000000000;
        v362 = v154;
        swift_errorRetain();
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v376._countAndFlagsBits = sub_100216994();
        sub_100216A14(v376);

        v170 = sub_100005FB0(aBlock, *(&aBlock + 1), &v370);

        *(v166 + 14) = v170;
        _os_log_impl(&_mh_execute_header, v165, v164, "prepare complete peerID: %{public}s %{public}s", v166, 0x16u);
        swift_arrayDestroy();
      }

      v51 = v348;
      v171 = v332;
      sub_10010EEEC(0xD0000000000000F2, v345 | 0x8000000000000000);
      v172 = *&v163[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
      v173 = *&v163[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
      v174 = *&v163[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
      v175 = *&v163[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
      _Block_copy(v51);
      sub_1001B473C(0x65726170657250, 0xE700000000000000, v172, v173, v174, v175, v154);
      swift_getErrorValue();
      sub_1001ADD74(v356, v357);
      v176 = sub_100216144();
      (v51)[2](v51, 0, 0, 0, 0, 0, 0, v176);

      _Block_release(v51);

      v60 = v163;

      v152 = v342;
    }

    else
    {
      v130 = aBlock;

      v131 = sub_100216154();

      swift_willThrow();
      swift_errorRetain();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v132 = sub_100216774();
      sub_100002648(v132, qword_10029D160);
      swift_errorRetain();
      v133 = sub_100216754();
      v134 = sub_100216C74();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        *&aBlock = v136;
        *v135 = 136446210;
        v370 = v131;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v137 = sub_100216994();
        v139 = sub_100005FB0(v137, v138, &aBlock);

        *(v135 + 4) = v139;
        _os_log_impl(&_mh_execute_header, v133, v134, "Unable to save signing key: %{public}s", v135, 0xCu);
        sub_100006128(v136);
      }

      v60 = v351;
      swift_errorRetain();
      v140 = sub_100216C74();
      swift_errorRetain();
      v141 = sub_100216754();

      if (os_log_type_enabled(v141, v140))
      {
        v142 = swift_slowAlloc();
        v370 = swift_slowAlloc();
        *v142 = 136446466;
        aBlock = 0uLL;
        sub_10001148C(&qword_10029D698, &unk_100226590);
        v143 = sub_100216994();
        v145 = sub_100005FB0(v143, v144, &v370);

        *(v142 + 4) = v145;
        *(v142 + 12) = 2082;
        *&aBlock = 0x203A726F727265;
        *(&aBlock + 1) = 0xE700000000000000;
        v362 = v131;
        swift_errorRetain();
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v375._countAndFlagsBits = sub_100216994();
        sub_100216A14(v375);

        v146 = sub_100005FB0(aBlock, *(&aBlock + 1), &v370);

        *(v142 + 14) = v146;
        _os_log_impl(&_mh_execute_header, v141, v140, "prepare complete peerID: %{public}s %{public}s", v142, 0x16u);
        swift_arrayDestroy();
      }

      v51 = v348;
      sub_10010EEEC(0xD0000000000000F2, v345 | 0x8000000000000000);
      v147 = *&v60[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
      v148 = *&v60[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
      v149 = *&v60[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16];
      v150 = *&v60[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24];
      _Block_copy(v51);
      sub_1001B473C(0x65726170657250, 0xE700000000000000, v147, v148, v149, v150, v131);
      swift_getErrorValue();
      sub_1001ADD74(v358, v359);
      v151 = sub_100216144();
      (v51)[2](v51, 0, 0, 0, 0, 0, 0, v151);

      _Block_release(v51);

      v152 = v343;
    }

LABEL_66:

LABEL_8:

    goto LABEL_9;
  }

  v84 = aBlock;
  v85 = sub_100216154();

  swift_willThrow();
  LODWORD(v350) = 1;
  swift_errorRetain();
  v43 = sub_100216C74();
  if (qword_100297520 != -1)
  {
    goto LABEL_54;
  }

LABEL_3:
  v349 = v40;
  v44 = sub_100216774();
  sub_100002648(v44, qword_10029D160);
  swift_errorRetain();
  v45 = sub_100216754();

  if (os_log_type_enabled(v45, v43))
  {
    v46 = swift_slowAlloc();
    v370 = swift_slowAlloc();
    *v46 = 136446466;
    aBlock = 0uLL;
    sub_10001148C(&qword_10029D698, &unk_100226590);
    v47 = sub_100216994();
    v49 = sub_100005FB0(v47, v48, &v370);

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    *&aBlock = 0x203A726F727265;
    *(&aBlock + 1) = 0xE700000000000000;
    v362 = v85;
    swift_errorRetain();
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v371._countAndFlagsBits = sub_100216994();
    sub_100216A14(v371);

    v50 = sub_100005FB0(aBlock, *(&aBlock + 1), &v370);

    *(v46 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v45, v43, "prepare complete peerID: %{public}s %{public}s", v46, 0x16u);
    swift_arrayDestroy();
  }

  v51 = v348;
  v52 = v351;
  sub_10010EEEC(0xD0000000000000F2, v345 | 0x8000000000000000);
  v53 = v52;
  v54 = &v52[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
  v55 = *&v52[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name];
  v56 = *&v52[OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8];
  v57 = *(v54 + 2);
  v58 = *(v54 + 3);
  _Block_copy(v51);
  sub_1001B473C(0x65726170657250, 0xE700000000000000, v55, v56, v57, v58, v85);
  swift_getErrorValue();
  sub_1001ADD74(v363, v364);
  v59 = sub_100216144();
  (v51)[2](v51, 0, 0, 0, 0, 0, 0, v59);

  _Block_release(v51);

  if (v350)
  {
  }

  v60 = v53;
  if (!v41)
  {
    goto LABEL_8;
  }

LABEL_9:

  _Block_release(v51);
  _Block_release(v51);
  _Block_release(v51);
  _Block_release(v51);
}

uint64_t sub_1001A4350(uint64_t a1, char *a2, void (*a3)(void), uint64_t a4, void *a5)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v10 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v42 = a3;
  v14[2] = a3;
  v14[3] = a4;
  v44 = v14;
  v14[4] = a5;
  v15 = swift_allocObject();
  v45 = v15;
  *(v15 + 16) = a1;
  v16 = (v15 + 16);
  v17 = swift_allocObject();

  v41 = a5;

  *(v17 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v18 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = a2;
  v19[4] = v17 + 16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1001ACE80;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100284160;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  [v18 performBlockAndWait:v21];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v26 = *v16;
    if ((*v16 & 0xC000000000000001) != 0)
    {
      if (v26 < 0)
      {
        v27 = *v16;
      }

      v28 = *v16;

      v29 = sub_100216ED4();

      if (v29)
      {
        goto LABEL_6;
      }
    }

    else if (*(v26 + 16))
    {
LABEL_6:
      __chkstk_darwin(result, v25);
      *(&v41 - 2) = v16;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
      sub_100216654();
      v31 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v30 = *&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v22[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v31);
      v32 = swift_allocObject();
      v32[2] = v22;
      v32[3] = sub_1001AAE28;
      PolicyDocumentsRequest = v19;
      v33 = v22;
      v34 = v17;
      v35 = v45;
      v32[4] = v44;
      v32[5] = v35;
      v32[6] = v34;
      v36 = *(v30 + 16);
      v37 = *(v36 + 80);
      v38 = v33;

      v37(v13, sub_1001ACE2C, v32, v31, v36);

      sub_1001AC1E4(v13, type metadata accessor for FetchPolicyDocumentsRequest);
    }

    v39 = *(v17 + 16);

    sub_100151EFC(v40, 0, v42, a4, v41);
  }

  return result;
}

void sub_1001A47C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, void (*a12)(void, void, void *, void, uint64_t), uint64_t a13)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a12;
  *(v17 + 24) = a13;
  v133 = v17;
  v18 = kSecurityRTCEventNameOnqueueEstablishTPH;

  v19 = v18;
  sub_1001A9F94();
  v21 = v20;
  v125 = a4;
  if (a5)
  {
    v22 = sub_100216964();
  }

  else
  {
    v22 = 0;
  }

  v124 = a6;
  if (a7)
  {
    v23 = sub_100216964();
    v24 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
LABEL_6:
      v25 = sub_100216964();
      goto LABEL_9;
    }
  }

  else
  {
    v23 = 0;
    v24 = kSecurityRTCEventCategoryAccountDataAccessRecovery;
    if (a9)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_9:
  LOBYTE(v110) = a10 & 1;
  v134 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:v22 flowID:v23 deviceSessionID:v25 eventName:v19 testsAreEnabled:v21 canSendMetrics:v110 category:v24];

  v26 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v27 = [*&a11[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (!v27)
  {
LABEL_22:
    sub_1000561D0();
    swift_allocError();
    *v64 = xmmword_10021DA90;
    *(v64 + 16) = 13;
    v65 = sub_100216144();

    [v134 sendMetricWithResult:0 error:v65];

    v66 = swift_allocError();
    *v67 = xmmword_10021DA90;
    *(v67 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v66);

    goto LABEL_23;
  }

  v28 = v27;
  v29 = sub_100216974();
  v31 = v30;

  v32 = [*&a11[v26] egoPeerPermanentInfo];
  if (!v32)
  {
LABEL_21:

    goto LABEL_22;
  }

  v33 = v32;
  v34 = sub_100216224();
  v36 = v35;

  v37 = [*&a11[v26] egoPeerPermanentInfoSig];
  if (!v37)
  {
LABEL_20:
    sub_100002BF0(v34, v36);
    goto LABEL_21;
  }

  v120 = v29;
  v123 = v31;
  v38 = v37;
  v39 = sub_100216224();
  v41 = v40;

  v42 = [*&a11[v26] egoPeerStableInfo];
  if (!v42)
  {
LABEL_19:
    sub_100002BF0(v39, v41);
    goto LABEL_20;
  }

  v121 = v36;
  v122 = v34;
  v43 = v42;
  v44 = sub_100216224();
  v46 = v45;

  v47 = [*&a11[v26] egoPeerStableInfoSig];
  if (!v47)
  {
    sub_100002BF0(v44, v46);
    v36 = v121;
    v34 = v122;
    goto LABEL_19;
  }

  v113 = a7;
  v116 = v46;
  v117 = v44;
  v48 = v47;
  v49 = sub_100216224();
  v118 = v50;
  v119 = v49;

  v51 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v122, v121);
  sub_100012558(v39, v41);
  v52 = sub_100216964();

  isa = sub_100216204().super.isa;
  v54 = sub_100216204().super.isa;
  v115 = v51;
  v55 = [objc_opt_self() permanentInfoWithPeerID:v52 data:isa sig:v54 keyFactory:v51];

  sub_100002BF0(v39, v41);
  sub_100002BF0(v122, v121);

  if (v55)
  {
    v114 = v41;
    v56 = objc_allocWithZone(TPPeerStableInfo);
    sub_100012558(v44, v116);
    sub_100012558(v119, v118);
    v57 = sub_100216204().super.isa;
    v58 = sub_100216204().super.isa;
    v59 = [v56 initWithData:v57 sig:v58];

    sub_100002BF0(v119, v118);
    sub_100002BF0(v44, v116);
    if (v59)
    {
      v60 = [v55 machineID];
      v61 = sub_100216974();
      v63 = v62;

      LOBYTE(v60) = sub_1001E537C(v61, v63);

      if (v60)
      {
        strcpy(v135, "signing-key ");
        BYTE5(v135[1]) = 0;
        HIWORD(v135[1]) = -5120;
        swift_bridgeObjectRetain_n();
        sub_100012558(v122, v121);
        sub_100012558(v39, v41);
        sub_100012558(v44, v116);
        sub_100012558(v119, v118);

        v112 = v134;

        v111 = a11;

        v130 = v55;

        v131 = v59;

        v137._countAndFlagsBits = v120;
        v137._object = v123;
        sub_100216A14(v137);

        sub_1001953F8(v135[0], v135[1], v120, v123, v112, sub_1001AA910, v133, v111, a1, v130, a2, v120, v123, v131, a3, v122, v121, v39, v41, v44, v116, v119, v118, v125, a5, v124, v113, a8, a9, a10 & 1);

        swift_bridgeObjectRelease_n();
        sub_100002BF0(v122, v121);
        sub_100002BF0(v39, v41);
        sub_100002BF0(v44, v116);
        sub_100002BF0(v119, v118);

        sub_100002BF0(v119, v118);
        sub_100002BF0(v44, v116);
        sub_100002BF0(v39, v41);
        sub_100002BF0(v122, v121);
        goto LABEL_23;
      }

      v132 = v59;

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v82 = sub_100216774();
      sub_100002648(v82, qword_10029D160);
      v83 = v55;
      v84 = sub_100216754();
      v85 = sub_100216C54();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v135[0] = v87;
        *v86 = 136446210;
        v88 = [v83 machineID];
        v89 = sub_100216974();
        v91 = v90;

        v92 = sub_100005FB0(v89, v91, v135);

        *(v86 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v84, v85, "establish: self machineID %{public}s not on list", v86, 0xCu);
        sub_100006128(v87);
      }

      v93 = objc_allocWithZone(SecTapToRadar);
      v94 = sub_100216964();
      v95 = sub_100216964();
      v96 = sub_100216964();
      v97 = [v93 initTapToRadar:v94 description:v95 radar:v96];

      [v97 trigger];
      v98 = [v83 machineID];
      v99 = sub_100216974();
      v101 = v100;

      sub_1000561D0();
      swift_allocError();
      *v102 = v99;
      *(v102 + 8) = v101;
      *(v102 + 16) = 2;
      v103 = sub_100216144();

      [v134 sendMetricWithResult:0 error:v103];

      v104 = [v83 machineID];
      v105 = sub_100216974();
      v107 = v106;

      v108 = swift_allocError();
      *v109 = v105;
      *(v109 + 8) = v107;
      *(v109 + 16) = 2;
      a12(0, 0, _swiftEmptyArrayStorage, 0, v108);

      sub_100002BF0(v119, v118);
      sub_100002BF0(v117, v116);
      sub_100002BF0(v39, v114);
      v72 = v122;
    }

    else
    {

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v74 = sub_100216774();
      sub_100002648(v74, qword_10029D160);
      v75 = sub_100216754();
      v76 = sub_100216C54();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "cannot create TPPeerStableInfo", v77, 2u);
      }

      sub_1000561D0();
      swift_allocError();
      *v78 = xmmword_10021DC20;
      *(v78 + 16) = 13;
      v79 = sub_100216144();

      [v134 sendMetricWithResult:0 error:v79];

      v80 = swift_allocError();
      *v81 = xmmword_10021DC20;
      *(v81 + 16) = 13;
      a12(0, 0, _swiftEmptyArrayStorage, 0, v80);

      sub_100002BF0(v119, v118);
      sub_100002BF0(v44, v116);
      sub_100002BF0(v39, v41);
      v72 = v122;
    }

    v73 = v121;
  }

  else
  {

    sub_1000561D0();
    swift_allocError();
    *v68 = xmmword_10021DA80;
    *(v68 + 16) = 13;
    v69 = sub_100216144();

    [v134 sendMetricWithResult:0 error:v69];

    v70 = swift_allocError();
    *v71 = xmmword_10021DA80;
    *(v71 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v70);

    sub_100002BF0(v119, v118);
    sub_100002BF0(v44, v116);
    sub_100002BF0(v39, v41);
    v72 = v122;
    v73 = v121;
  }

  sub_100002BF0(v72, v73);
LABEL_23:
}

void sub_1001A5590(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v27 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = [v16 peerID];
    if (v17)
    {
      v18 = v17;
      v28 = v15;
      v19 = sub_100216974();
      v21 = v20;

      if (v19 == a4 && v21 == a5)
      {

LABEL_20:
        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
LABEL_23:

          sub_10018AD50(a1, v25, v27, a3, &qword_10029D908, &unk_1002266A8);
          return;
        }
      }

      else
      {
        v23 = sub_1002171A4();

        if (v23)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_23;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1001A575C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v38 = a3;

  if (v7 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v32 = v8;
    v33 = v4;
    v31[1] = v31;
    __chkstk_darwin(v10, v11);
    v34 = v31 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v35 = 0;
    v9 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v4 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v4)
    {
      v14 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_13:
      v17 = v14 | (v9 << 6);
      v18 = *(*(a1 + 48) + 8 * v17);
      v19 = [v18 peerID];
      if (v19)
      {
        v20 = v19;
        v36 = v17;
        v21 = sub_100216974();
        v23 = v22;

        if (v21 == v37 && v23 == v38)
        {

LABEL_21:
          *&v34[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
LABEL_24:
            v27 = sub_10018AD50(v34, v32, v35, a1, &qword_10029D908, &unk_1002266A8);

            return v27;
          }
        }

        else
        {
          v25 = sub_1002171A4();

          if (v25)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_24;
      }

      v16 = *(a1 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v4 = (v16 - 1) & v16;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v29 = swift_slowAlloc();
  v30 = v38;

  v27 = sub_10018A924(v29, v8, a1, v37, v30);

  return v27;
}

Swift::Int sub_1001A5A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1001A575C(a1, a2, a3);
  }

  sub_100216E84();
  if (sub_100216F14())
  {
    type metadata accessor for BottleMO();
    do
    {
      swift_dynamicCast();
      v5 = [v23 peerID];
      if (v5)
      {
        v6 = v5;
        v7 = sub_100216974();
        v9 = v8;

        if (v7 == a2 && v9 == a3)
        {

LABEL_14:
          v12 = *(&_swiftEmptySetSingleton + 2);
          if (*(&_swiftEmptySetSingleton + 3) <= v12)
          {
            sub_100188D90(v12 + 1, &qword_10029D908, &unk_1002266A8);
          }

          result = sub_100216DB4(*(&_swiftEmptySetSingleton + 5));
          v14 = &_swiftEmptySetSingleton + 56;
          v15 = -1 << *(&_swiftEmptySetSingleton + 32);
          v16 = result & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(&_swiftEmptySetSingleton + (v16 >> 6) + 7)) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(&_swiftEmptySetSingleton + (v16 >> 6) + 7))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v19 = 0;
            v20 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v20 && (v19 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v21 = v17 == v20;
              if (v17 == v20)
              {
                v17 = 0;
              }

              v19 |= v21;
              v22 = *&v14[8 * v17];
            }

            while (v22 == -1);
            v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          }

          *&v14[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          *(*(&_swiftEmptySetSingleton + 6) + 8 * v18) = v23;
          ++*(&_swiftEmptySetSingleton + 2);
          continue;
        }

        v11 = sub_1002171A4();

        if (v11)
        {
          goto LABEL_14;
        }
      }
    }

    while (sub_100216F14());
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1001A5CD8(uint64_t a1, void (*a2)(void, unint64_t, void, unint64_t, void, void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v20 = sub_100216774();
    sub_100002648(v20, qword_10029D160);
    swift_errorRetain();
    v21 = sub_100216754();
    v22 = sub_100216C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25 = sub_100216994();
      v27 = sub_100005FB0(v25, v26, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "vouchWithBottle: error fetching all requested policies: %{public}s", v23, 0xCu);
      sub_100006128(v24);
    }

    swift_errorRetain();
    a2(0, 0xF000000000000000, 0, 0xF000000000000000, 0, 0, a1);
  }

  else
  {
    v39 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v34 = swift_allocObject();
    *(v34 + 16) = a5;
    *(v34 + 24) = a6;
    *(v34 + 32) = a7;
    *(v34 + 40) = a8;
    *(v34 + 48) = a9;
    *(v34 + 56) = a10;
    *(v34 + 64) = a11 & 1;
    v35 = a4;
    *(v34 + 72) = a4;
    *(v34 + 80) = a12;
    *(v34 + 88) = a13;
    *(v34 + 96) = a2;
    *(v34 + 104) = a3;
    *(v34 + 112) = a14;
    *(v34 + 120) = a15;
    *(v34 + 128) = a16;
    *(v34 + 136) = a17;
    *(v34 + 144) = a18;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1001AA680;
    *(v36 + 24) = v34;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283940;
    v37 = _Block_copy(aBlock);

    v38 = v35;

    sub_100012558(a14, a15);

    [v39 performBlockAndWait:v37];
    _Block_release(v37);
    LOBYTE(a8) = swift_isEscapingClosureAtFileLocation();

    if (a8)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001A60BC(uint64_t a1, int a2, id a3, uint64_t (*a4)(void, unint64_t, void, unint64_t, uint64_t), uint64_t a5, char *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    swift_errorRetain();
    v27 = sub_100216754();
    v28 = sub_100216C74();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v31 = sub_100216994();
      v33 = sub_100005FB0(v31, v32, aBlock);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unknown policy for beneficiary: %{public}s", v29, 0xCu);
      sub_100006128(v30);
    }

    v34 = sub_100216144();
    [a3 sendMetricWithResult:0 error:v34];

    return a4(0, 0xF000000000000000, 0, 0xF000000000000000, a1);
  }

  else
  {
    [a3 sendMetricWithResult:1 error:0];
    v49 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v39 = swift_allocObject();
    *(v39 + 16) = a6;
    *(v39 + 24) = a7;
    *(v39 + 32) = a8;
    *(v39 + 40) = a9;
    *(v39 + 48) = a10;
    *(v39 + 56) = a11;
    *(v39 + 64) = a12;
    *(v39 + 72) = a13;
    *(v39 + 80) = a4;
    *(v39 + 88) = a5;
    *(v39 + 96) = a14;
    *(v39 + 104) = a15;
    *(v39 + 112) = a16;
    *(v39 + 120) = a17;
    *(v39 + 128) = a18;
    *(v39 + 136) = a19;
    *(v39 + 144) = a20;
    *(v39 + 152) = a21;
    *(v39 + 160) = a22 & 1;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1001ACBC0;
    *(v40 + 24) = v39;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283B48;
    v41 = _Block_copy(aBlock);

    v42 = a6;
    v43 = a7;
    v44 = a8;

    v45 = a11;

    v46 = a15;

    [v49 performBlockAndWait:v41];
    _Block_release(v41);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1001A64F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, id a5, void *a6, void (*a7)(void *, id, id))
{
  v7 = a7;
  p_cache = CKKSSOSSelfPeer.cache;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v14 = sub_100216774();
    sub_100002648(v14, qword_10029D160);
    swift_errorRetain();
    v15 = sub_100216754();
    v16 = sub_100216C54();

    if (os_log_type_enabled(v15, v16))
    {
      v58 = v16;
      v17 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v60 = v57;
      *v17 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18 = sub_100216994();
      v20 = a4;
      v21 = a3;
      v22 = a5;
      v23 = sub_100005FB0(v18, v19, &v60);

      *(v17 + 4) = v23;
      a5 = v22;
      a3 = v21;
      a4 = v20;
      _os_log_impl(&_mh_execute_header, v15, v58, "join: error fetching all requested policies (continuing anyway): %{public}s", v17, 0xCu);
      sub_100006128(v57);
      p_cache = (CKKSSOSSelfPeer + 16);
    }

    else
    {
    }

    v7 = a7;
  }

  if (a4)
  {
    v24 = a4;
  }

  else
  {
    v25 = [a5 modelID];
    a3 = sub_100216974();
    v24 = v26;
  }

  v27 = sub_100151404(a3, v24, a6);
  v28 = p_cache;
  v29 = a5;
  v30 = v27;

  v31 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v32 = a2;
  v33 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v34 = [v29 peerID];
  if (!v34)
  {
    sub_100216974();
    v34 = sub_100216964();
  }

  v60 = 0;
  v35 = [v33 peerWithID:v34 error:{&v60, v57}];

  if (v60)
  {
    v36 = v60;

    swift_willThrow();
LABEL_15:
    if (v28[164] != -1)
    {
      swift_once();
    }

    v37 = sub_100216774();
    sub_100002648(v37, qword_10029D160);
    swift_errorRetain();
    v38 = sub_100216754();
    v39 = sub_100216C74();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v60 = v41;
      *v40 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v42 = sub_100216994();
      v44 = sub_100005FB0(v42, v43, &v60);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Fetching the syncing policy failed: %{public}s", v40, 0xCu);
      sub_100006128(v41);
    }

    swift_errorRetain();
    v7(0, 0, v36);

    return;
  }

  if (v35)
  {
    v45 = [v35 dynamicInfo];
    if (v45)
    {
      v46 = v45;
      v47 = *(v32 + v31);
      v60 = 0;
      v48 = [v47 userViewSyncabilityConsensusAmongTrustedPeers:v46 error:&v60];
      v49 = v60;
      if (!v60)
      {
        v55 = v48;
        v56 = v30;
        v7(v30, v55, 0);

        return;
      }

      swift_willThrow();
      v36 = v49;

      goto LABEL_15;
    }
  }

  if (v28[164] != -1)
  {
    swift_once();
  }

  v50 = sub_100216774();
  sub_100002648(v50, qword_10029D160);
  v51 = sub_100216754();
  v52 = sub_100216C74();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "fetchCurrentPolicy with no dynamic info", v53, 2u);
  }

  v54 = v30;
  v7(v30, 0, 0);
}

void sub_1001A6B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!a1)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    v8 = sub_10018CFD4();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    v9 = v8;
LABEL_18:
    sub_100151AA4(v9, a2, a3, a4);

    return;
  }

  v33 = a2;
  v34 = a3;
  v35 = a4;
  sub_10001148C(&unk_10029D800, &unk_100226620);
  v10 = sub_100217114();
  v9 = v10;
  v11 = 0;
  v12 = v4 + 64;
  v13 = 1 << *(v4 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v4 + 64);
  v16 = (v13 + 63) >> 6;
  v36 = v10 + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v37 = (v15 - 1) & v15;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = v4;
      v22 = *(*(v4 + 48) + 8 * v20);
      v23 = *(*(v4 + 56) + 8 * v20);
      v38 = v22;
      v24 = v23;
      v25 = [v24 protobuf];
      v26 = sub_100216224();
      v28 = v27;

      *(v36 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(v9[6] + 8 * v20) = v38;
      v29 = (v9[7] + 16 * v20);
      *v29 = v26;
      v29[1] = v28;
      v30 = v9[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v9[2] = v32;
      v4 = v21;
      v15 = v37;
      if (!v37)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        a4 = v35;
        a2 = v33;
        a3 = v34;
        goto LABEL_18;
      }

      v19 = *(v12 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v37 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001A6D60(uint64_t a1, id a2, char *a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, void *a8, uint64_t isEscapingClosureAtFileLocation, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v23 = a2;
  v24 = a20;
  v26 = a10;
  if (!a1)
  {
    [a2 sendMetricWithResult:1 error:0];
    goto LABEL_7;
  }

  LOBYTE(v49) = a20;
  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v47 = isEscapingClosureAtFileLocation;
    v28 = sub_100216774();
    sub_100002648(v28, qword_10029D160);
    swift_errorRetain();
    v29 = sub_100216754();
    v30 = sub_100216C54();

    if (os_log_type_enabled(v29, v30))
    {
      v46 = a8;
      v31 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v31 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v32 = sub_100216994();
      v34 = v23;
      v35 = a4;
      v36 = a11;
      v37 = a3;
      v38 = sub_100005FB0(v32, v33, aBlock);

      *(v31 + 4) = v38;
      a3 = v37;
      a11 = v36;
      a4 = v35;
      v23 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "join: error fetching all requested policies (continuing anyway): %{public}s", v31, 0xCu);
      sub_100006128(v45);

      v26 = a10;
      a8 = v46;
    }

    v24 = v49;
    v39 = sub_100216144();
    [v23 sendMetricWithResult:0 error:v39];

    isEscapingClosureAtFileLocation = v47;
LABEL_7:
    v48 = a4;
    v23 = a3;
    v49 = *&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    a4 = a5;
    a3 = a6;
    *(v40 + 24) = a5;
    *(v40 + 32) = a6;
    *(v40 + 40) = a7;
    *(v40 + 48) = a8;
    *(v40 + 56) = isEscapingClosureAtFileLocation;
    *(v40 + 64) = v26;
    *(v40 + 72) = v23;
    *(v40 + 80) = a11;
    *(v40 + 88) = a12;
    *(v40 + 96) = a13;
    *(v40 + 104) = a14;
    *(v40 + 112) = a15;
    *(v40 + 120) = a16;
    *(v40 + 128) = a17;
    v26 = a19;
    *(v40 + 136) = a18;
    *(v40 + 144) = a19;
    *(v40 + 152) = v24 & 1;
    a11 = swift_allocObject();
    *(a11 + 16) = sub_1001ACBBC;
    *(a11 + 24) = v40;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = a11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283620;
    v41 = _Block_copy(aBlock);
    sub_100012558(v48, a5);
    sub_100012558(a6, a7);

    v42 = a8;

    v43 = v23;

    [v49 performBlockAndWait:v41];
    _Block_release(v41);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  return result;
}

uint64_t sub_1001A71BC(uint64_t a1, char *a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    swift_errorRetain();
    v10 = sub_100216754();
    v11 = sub_100216C54();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v12 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v13 = sub_100216994();
      v15 = isEscapingClosureAtFileLocation;
      v16 = a3;
      v17 = sub_100005FB0(v13, v14, aBlock);

      *(v12 + 4) = v17;
      a3 = v16;
      isEscapingClosureAtFileLocation = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "preflightPreapprovedJoin: error fetching all requested policies (continuing anyway): %{public}s", v12, 0xCu);
      sub_100006128(v23);
    }

    else
    {
    }

LABEL_6:
    v18 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v19 = swift_allocObject();
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = isEscapingClosureAtFileLocation;
    v19[5] = a5;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_1001ACE78;
    *(a3 + 24) = v19;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283328;
    v20 = _Block_copy(aBlock);

    v21 = a2;

    [v18 performBlockAndWait:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_8:
    swift_once();
  }

  return result;
}

uint64_t sub_1001A74C0(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v12 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v13);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v50 = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = swift_allocObject();
  v54 = v16;
  *(v16 + 16) = a1;
  v17 = (v16 + 16);
  v18 = swift_allocObject();

  v49 = a3;

  v19 = v18;
  *(v18 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v20 = v18 + 16;
  v21 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = a2;
  v22[4] = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1001ACE80;
  *(v23 + 24) = v22;
  v53 = v22;
  v59 = sub_1001ACCC0;
  v60 = v23;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100109050;
  v58 = &unk_100283210;
  v24 = _Block_copy(&aBlock);
  v25 = a2;

  [v21 performBlockAndWait:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v28 = *v17;
  if ((*v17 & 0xC000000000000001) != 0)
  {
    if (v28 < 0)
    {
      v29 = *v17;
    }

    v30 = *v17;

    v31 = sub_100216ED4();

    if (v31)
    {
      goto LABEL_6;
    }
  }

  else if (*(v28 + 16))
  {
LABEL_6:
    __chkstk_darwin(result, v27);
    *(&v48 - 2) = v17;
    sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
    v32 = v15;
    v33 = v52;
    sub_100216654();
    v34 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v35 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    PolicyDocumentsRequest = sub_100006484(&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v34);
    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = sub_1001A9F30;
    v37 = v54;
    v36[4] = v32;
    v36[5] = v37;
    v36[6] = v19;
    v38 = *(v35 + 16);
    v39 = *(v38 + 80);
    v40 = v25;

    v39(v33, sub_1001ACE2C, v36, v34, v38);

    sub_1001AC1E4(v33, type metadata accessor for FetchPolicyDocumentsRequest);
  }

  v41 = *(v19 + 16);
  v42 = v49;
  v52 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v43 = swift_allocObject();
  v44 = v50;
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = a5;
  v43[5] = a6;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_1001A9F40;
  *(v45 + 24) = v43;
  v59 = sub_1001ACCC0;
  v60 = v45;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_100109050;
  v58 = &unk_1002832B0;
  v46 = _Block_copy(&aBlock);
  v47 = v42;

  [v52 performBlockAndWait:v46];
  _Block_release(v46);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_1001A7A80(uint64_t a1, char *a2, uint64_t a3, uint64_t (*a4)(void, void), void *a5)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v10 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v11);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v40 = a4;
  v13[4] = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001A99EC;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  v45 = v15;
  *(v15 + 16) = a1;
  v16 = (v15 + 16);
  v17 = swift_allocObject();

  v41 = a5;

  v44 = v13;

  v18 = v17;
  *(v17 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v19 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = a2;
  v20[4] = v17 + 16;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100056F54;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100282CC0;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  [v19 performBlockAndWait:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if ((v22 & 1) == 0)
  {
    v26 = *v16;
    if ((*v16 & 0xC000000000000001) != 0)
    {
      if (v26 < 0)
      {
        v27 = *v16;
      }

      v28 = *v16;

      v29 = sub_100216ED4();

      if (v29)
      {
        goto LABEL_6;
      }
    }

    else if (*(v26 + 16))
    {
LABEL_6:
      __chkstk_darwin(result, v25);
      *(&v39 - 2) = v16;
      sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
      v41 = v20;
      v30 = v43;
      sub_100216654();
      v31 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v32 = *&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v23[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v31);
      v33 = swift_allocObject();
      v33[2] = v23;
      v33[3] = sub_1001A99F8;
      v33[4] = v14;
      v33[5] = v45;
      v33[6] = v18;
      v34 = *(v32 + 16);
      v35 = *(v34 + 80);
      v36 = v23;

      v35(v30, sub_1001A9A00, v33, v31, v34);

      sub_1001AC1E4(v30, type metadata accessor for FetchPolicyDocumentsRequest);
    }

    v37 = *(v18 + 16);

    sub_1001A6B3C(v38, 0, a3, v40);
  }

  __break(1u);
  return result;
}

void sub_1001A7F5C(objc_class *a1, uint64_t a2, int a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (a2)
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
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16._countAndFlagsBits = sub_100216994();
      sub_100216A14(v16);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v15);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchAccountSettings complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  sub_10010EEEC(0xD000000000000055, 0x800000010023C180);
  _Block_copy(aBlock);
  sub_1001B4C3C(a1, a2, aBlock);
  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_1001A81A4(void *a1, void *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a2;
  v4 = [a1 includedPeerIDs];
  v5 = sub_100216BB4();

  v6 = [v3 includedPeerIDs];
  v7 = sub_100216BB4();

  LOBYTE(v6) = sub_1001827AC(v5, v7);

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v8 = [a1 excludedPeerIDs];
  v9 = sub_100216BB4();

  v10 = [v3 excludedPeerIDs];
  v11 = sub_100216BB4();

  LOBYTE(v10) = sub_1001827AC(v9, v11);

  if (v10)
  {
    v12 = [a1 preapprovals];
    v13 = sub_100216BB4();

    v14 = [v3 preapprovals];
    v15 = sub_100216BB4();

    LOBYTE(v14) = sub_1001827AC(v13, v15);

    v16 = v14 ^ 1;
  }

  else
  {
LABEL_5:

    v16 = 1;
  }

  return v16 & 1;
}

void sub_1001A83B4(void *a1, int a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C64();
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
    v15[0] = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16._countAndFlagsBits = sub_100216994();
      sub_100216A14(v16);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, v15);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "testSemaphore complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C120);
  if (a1)
  {
    swift_getErrorValue();
    v13 = v15[2];
    v14 = v15[3];
    _Block_copy(aBlock);
    sub_1001ADD74(v13, v14);
    a1 = sub_100216144();
  }

  else
  {
    _Block_copy(aBlock);
  }

  (*(aBlock + 2))(aBlock, a1);

  _Block_release(aBlock);
  _Block_release(aBlock);
}

void sub_1001A864C(uint64_t a1, void (*a2)(void, void), void *a3, void (**a4)(void, void))
{
  v83 = a2;
  v7 = sub_1002167E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v75 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100216824();
  v76 = *(v12 - 8);
  v13 = *(v76 + 64);
  __chkstk_darwin(v12, v14);
  v74 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100216854();
  v17 = *(v16 - 8);
  v81 = v16;
  v82 = v17;
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v73 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v80 = v67 - v23;
  v24 = sub_1002167F4();
  v72 = *(v24 - 8);
  v25 = *(v72 + 64);
  __chkstk_darwin(v24, v26);
  v28 = v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1002167D4();
  v78 = *(v29 - 8);
  v79 = v29;
  v30 = *(v78 + 64);
  __chkstk_darwin(v29, v31);
  v77 = (v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  *(v33 + 16) = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1001A9270;
  *(v34 + 24) = v33;
  _Block_copy(a4);

  _Block_copy(a4);

  _Block_copy(a4);

  _Block_copy(a4);

  if (!SecIsInternalRelease())
  {
    sub_1000561D0();
    swift_allocError();
    *v40 = xmmword_100226120;
    *(v40 + 16) = 13;
    swift_getErrorValue();
    v41 = v91;
    v42 = v92;
    _Block_copy(a4);
    sub_1001ADD74(v41, v42);
    v43 = sub_100216144();
    (a4)[2](a4, v43);

    _Block_release(a4);

    goto LABEL_11;
  }

  v68 = v12;
  v69 = v8;
  v70 = v7;
  v71 = a1;
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v35 = a3;
  v36 = v71;
  v37 = sub_10019C8E0(v35, 0xD000000000000019, 0x800000010023C120);

  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = sub_1001A9278;
  v38[4] = v34;
  v39 = v83;
  if ((v36 != 0x796C7065726F6ELL || v83 != 0xE700000000000000) && (sub_1002171A4() & 1) == 0 && (v36 != 110 || v39 != 0xE100000000000000) && (sub_1002171A4() & 1) == 0)
  {
    v67[1] = v37;
    if (v36 == 0x6863746170736964 && v39 == 0xE800000000000000 || ((v56 = sub_1002171A4(), v36 == 100) ? (v57 = v39 == 0xE100000000000000) : (v57 = 0), !v57 ? (v58 = 0) : (v58 = 1), (v56 & 1) != 0 || (v58 & 1) != 0 || (sub_1002171A4() & 1) != 0))
    {
      v44 = v77;
      *v77 = 1;
      (*(v78 + 104))(v44, enum case for DispatchTimeInterval.seconds(_:), v79);
      sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
      v45 = v72;
      (*(v72 + 104))(v28, enum case for DispatchQoS.QoSClass.userInitiated(_:), v24);

      v71 = sub_100216D04();
      (*(v45 + 8))(v28, v24);
      v46 = v73;
      sub_100216834();
      sub_100216844();
      v47 = *(v82 + 8);
      v82 += 8;
      v83 = v47;
      v47(v46, v81);
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1001A9280;
      *(v48 + 24) = v38;
      v89 = sub_1001A928C;
      v90 = v48;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v49 = &unk_1002825B8;
    }

    else
    {
      if (v36 != 0xD000000000000010 || 0x800000010023C140 != v39)
      {
        v64 = sub_1002171A4();
        v65 = v36 == 43 && v39 == 0xE100000000000000;
        v66 = v65;
        if ((v64 & 1) == 0 && !v66 && (sub_1002171A4() & 1) == 0 && (v36 != 28260 || v39 != 0xE200000000000000) && (sub_1002171A4() & 1) == 0 && (v36 != 7220580 || v39 != 0xE300000000000000) && (sub_1002171A4() & 1) == 0)
        {
          if (v36 == 0x722D656C62756F64 && v83 == 0xEE00657361656C65 || (sub_1002171A4() & 1) != 0)
          {
            _Block_copy(a4);

            sub_1001A83B4(0, v37, a4);
          }

          else
          {
            _Block_copy(a4);
          }

          sub_1001A83B4(0, v37, a4);
          _Block_release(a4);

          goto LABEL_9;
        }
      }

      v59 = v77;
      *v77 = 1;
      (*(v78 + 104))(v59, enum case for DispatchTimeInterval.seconds(_:), v79);
      sub_10000200C(0, &unk_1002977E0, OS_dispatch_queue_ptr);
      v60 = v72;
      (*(v72 + 104))(v28, enum case for DispatchQoS.QoSClass.userInitiated(_:), v24);

      v71 = sub_100216D04();
      (*(v60 + 8))(v28, v24);
      v61 = v73;
      sub_100216834();
      sub_100216844();
      v62 = *(v82 + 8);
      v82 += 8;
      v83 = v62;
      v62(v61, v81);
      v63 = swift_allocObject();
      *(v63 + 16) = sub_1001A9280;
      *(v63 + 24) = v38;
      v89 = EscrowCheckGraphStatus.rawValue.getter;
      v90 = v63;
      aBlock = _NSConcreteStackBlock;
      v86 = 1107296256;
      v49 = &unk_100282568;
    }

    v87 = sub_100063B78;
    v88 = v49;
    v73 = _Block_copy(&aBlock);

    v50 = v74;
    sub_100216804();
    v84 = _swiftEmptyArrayStorage;
    sub_1001A13C4(&unk_10029D6A0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10001148C(&unk_100297FD0, &unk_10021DC80);
    sub_1001AC36C(&unk_10029D6B0, &unk_100297FD0, &unk_10021DC80);
    v51 = v75;
    v52 = v70;
    sub_100216E34();
    v53 = v80;
    v54 = v73;
    v55 = v71;
    sub_100216CB4();
    _Block_release(v54);

    (*(v69 + 8))(v51, v52);
    (*(v76 + 8))(v50, v68);
    v83(v53, v81);
    (*(v78 + 8))(v77, v79);

LABEL_11:

    goto LABEL_12;
  }

LABEL_9:

LABEL_12:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

uint64_t sub_1001A928C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

id sub_1001A9304()
{
  v1 = *(v0 + 16);
  sub_10014C364();
  v2 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  [*(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) setAccountSettings:0];
  v3 = *(v1 + v2);

  return [v3 setAccountSettingsDate:0];
}

int *sub_1001A9364(int *result)
{
  if (*(v1 + 16))
  {
    v2 = 17;
  }

  else
  {
    v2 = 16;
  }

  if (*(v1 + 17))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *result = v3 | v2;
  return result;
}

unint64_t sub_1001A9438()
{
  result = qword_10029D730;
  if (!qword_10029D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029D730);
  }

  return result;
}

uint64_t sub_1001A9498()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001A9594(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001A95A0(void *a1, uint64_t a2)
{
  v5 = *(sub_1002163D4() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100133C2C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A9690()
{
  v1 = *(sub_1002163D4() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001340D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + ((v4 + 19) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001A9794(uint64_t a1)
{
  v3 = *(sub_1002163D4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100135628(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v7 + 8), *(v1 + ((v7 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v7 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9874()
{
  v1 = *(type metadata accessor for AddCustodianRecoveryKeyResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1002163D4() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100135C3C(*(v0 + 16), (v0 + v2), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9A04()
{
  v1 = *(type metadata accessor for FetchPolicyDocumentsResponse(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100152CA8((v0 + v2), v7, v8, v9, v10, v11);
}

uint64_t sub_1001A9AB8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000200C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A9B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001A9BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a3);
}

uint64_t sub_1001A9D18(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001695B0(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001A9DE4()
{
  v1 = *(type metadata accessor for Peer(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for JoinWithVoucherResponse(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100169B94(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v4), (v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001A9F4C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1001A9F94()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_1002AF880;
  v7 = off_1002AF880;
  if (!off_1002AF880)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001AC850;
    v3[3] = &unk_10027F138;
    v3[4] = &v4;
    sub_1001AC850(v3);
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

void sub_1001AA0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AA258(uint64_t a1)
{
  v3 = *(type metadata accessor for Peer(0) - 8);
  v4 = (*(v3 + 80) + 65) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10015D8A0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v8 + 8), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1001AA348()
{
  v1 = *(type metadata accessor for Peer(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for JoinWithVoucherResponse(0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_10015DF74(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v3), *(v0 + v4), (v0 + v6), *(v0 + v7), *(v0 + v8), *(v0 + v8 + 8), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001AA49C()
{
  sub_100002BF0(*(v0 + 16), *(v0 + 24));
  sub_100002BF0(*(v0 + 32), *(v0 + 40));

  v1 = *(v0 + 64);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 128);

  v7 = *(v0 + 144);

  return _swift_deallocObject(v0, 153, 7);
}

uint64_t sub_1001AA78C(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1001AA830()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  v7 = *(v0 + 152);

  return _swift_deallocObject(v0, 161, 7);
}

uint64_t sub_1001AA910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001AAAC0()
{
  v1 = *(type metadata accessor for UpdateTrustResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_10016CC18(*(v0 + 16), (v0 + v2), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001AABB8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001AAC58()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001AACC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  sub_100002BF0(*(v0 + 112), *(v0 + 120));
  sub_100002BF0(*(v0 + 128), *(v0 + 136));
  sub_100002BF0(*(v0 + 144), *(v0 + 152));
  sub_100002BF0(*(v0 + 160), *(v0 + 168));
  v6 = *(v0 + 184);

  v7 = *(v0 + 200);

  v8 = *(v0 + 216);

  return _swift_deallocObject(v0, 225, 7);
}

uint64_t sub_1001AAE9C(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 56));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_1001AB020()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 104);

  v5 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1001AB178()
{
  v1 = *(type metadata accessor for ResetResponse(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10011FDF4(v3, v0 + v2, v5);
}

void sub_1001AB228(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
    *(v3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;
  }
}

void sub_1001AB248()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1001169B4(v1, v2);
}

void sub_1001AB3D8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 7u)
  {
    if (a3 > 9u)
    {
      if (a3 == 10 || a3 == 11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (a3 == 8)
      {
        goto LABEL_10;
      }

      if (a3 == 9)
      {
      }
    }
  }

  else
  {
    if (a3 <= 2u)
    {
      if (a3 && a3 != 2)
      {
        return;
      }

LABEL_10:

      return;
    }

    if (a3 == 3 || a3 == 6)
    {
LABEL_13:
    }
  }
}

uint64_t sub_1001AB4D4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_1001AB700()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001AB788()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48) != 1)
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);

    v4 = *(v0 + 104);
  }

  return _swift_deallocObject(v0, 145, 7);
}

uint64_t sub_1001AB81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_10018F134(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1001AB850()
{
  v1 = *(v0 + 32);

  if (*(v0 + 56) != 1)
  {

    v2 = *(v0 + 72);

    v3 = *(v0 + 88);

    v4 = *(v0 + 112);
  }

  v5 = *(v0 + 168);

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t sub_1001AB9D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  return sub_10016D488(v1, v2, v3, v4);
}

uint64_t sub_1001ABBD4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10014DC3C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1001ABC14(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001ABC20()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ABC78@<X0>(uint64_t a1@<X8>)
{
  result = sub_10014D604(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1001ABCD8@<X0>(unint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_10014F9F8(*(v1 + 16), *(v1 + 32), a1);
}

uint64_t sub_1001ABCFC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001ABD48()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_10014C364();
  return v1(0);
}

uint64_t sub_1001ABE24()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001ABE98()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001ABF18()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001ABFE4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001AC038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AC0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AC134(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(v5, v6, v2 + v4, v8, v9);
}

uint64_t sub_1001AC1E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001AC2D8(void (*a1)(void))
{
  a1(*(v1 + 16));

  v2 = *(v1 + 40);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1001AC36C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1001AC3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001148C(&qword_10029D778, &qword_1002265C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1001AC424(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1001AC4A0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1001AC548()
{
  result = qword_10029DB98;
  if (!qword_10029DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DB98);
  }

  return result;
}

__n128 sub_1001AC59C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001AC5C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001AC624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecurityFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecurityFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001AC7FC()
{
  result = qword_10029DBA0;
  if (!qword_10029DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10029DBA0);
  }

  return result;
}

void *sub_1001AC850(void *a1)
{
  v5[0] = 0;
  if (!qword_1002AF888)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1001AC9D4;
    v5[4] = &unk_10027F170;
    v5[5] = v5;
    v6 = off_100285D48;
    v7 = 0;
    qword_1002AF888 = _sl_dlopen();
  }

  v2 = qword_1002AF888;
  if (!qword_1002AF888)
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
  off_1002AF880 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1001AC9D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1002AF888 = result;
  return result;
}

void *sub_1001ACE88(malloc_zone_t *a1, size_t a2)
{
  if (a1)
  {

    return malloc_zone_malloc(a1, a2);
  }

  else
  {
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void *sub_1001ACEF8(malloc_zone_t *a1, void *a2, size_t a3)
{
  if (a1)
  {

    return malloc_zone_realloc(a1, a2, a3);
  }

  else
  {
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

void sub_1001ACF68(malloc_zone_t *a1, void *a2)
{
  if (a1)
  {

    malloc_zone_free(a1, a2);
  }

  else
  {
    sub_1002170E4();
    __break(1u);
  }
}

unint64_t sub_1001ACFD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v2 = sub_100217144();
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_1000125AC(&v27, v29);
        sub_1000125AC(v29, v30);
        sub_1000125AC(v30, &v28);
        result = sub_100015A28(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100006128(v12);
          result = sub_1000125AC(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_1000125AC(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001AD230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_10000200C(0, &qword_10029D8A8, NSNumber_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000125AC(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000125AC(v31, v32);
    result = sub_100216F54(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000125AC(v32, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_1001AD500(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    sub_100012558(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1000125AC(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1000125AC(v33, v34);
    result = sub_100216F54(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_1000125AC(v34, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

unint64_t sub_1001AD7C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_10029DB60, &qword_10021D6F0);
    v2 = sub_100217144();
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
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_100019390(*(a1 + 56) + 40 * v15, &v30);
        v28 = v18;
        v29 = v17;

        swift_dynamicCast();
        sub_1000125AC(&v24, v26);
        sub_1000125AC(v26, v27);
        sub_1000125AC(v27, &v25);
        result = sub_100015A28(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_100006128(v12);
          result = sub_1000125AC(&v25, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1000125AC(&v25, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1001ADA38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001148C(&qword_100297CF8, &qword_10021D700);
    v2 = sub_100217144();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000060A0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1000125AC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1000125AC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1000125AC(v31, v32);
    result = sub_100216F54(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1000125AC(v32, (v2[7] + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_1001ADD00()
{
  v0 = sub_100216774();
  sub_1000025E4(v0, qword_10029DBB0);
  sub_100002648(v0, qword_10029DBB0);
  return sub_100216764();
}

id sub_1001ADD74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1, a2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v27 - v9;
  v11 = *(v3 + 16);
  v28 = v12;
  v11(&v27 - v9, v12, a1);
  if (sub_100217184())
  {
    (*(v3 + 8))(v10, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v13, v10, a1);
  }

  v14 = sub_100216144();

  v15 = [v14 domain];
  v16 = sub_100216974();
  v18 = v17;

  if (v16 == sub_100216974() && v18 == v19)
  {

    goto LABEL_12;
  }

  v21 = sub_1002171A4();

  if (v21)
  {
LABEL_12:
    v22 = sub_1001AE07C();
    goto LABEL_13;
  }

  v11(v7, v28, a1);
  if (sub_100217184())
  {
    (*(v3 + 8))(v7, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v24, v7, a1);
  }

  v25 = sub_100216144();

  v22 = CKXPCSuitableError();

  if (!v22)
  {
    sub_1000561D0();
    v22 = swift_allocError();
    *v26 = xmmword_100226AC0;
    *(v26 + 16) = 13;
  }

LABEL_13:

  return v22;
}

id sub_1001AE07C()
{
  v1 = v0;
  v2 = [v0 userInfo];
  v3 = sub_1002168D4();

  v4 = sub_100216974();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_100015A28(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_1000060A0(*(v3 + 56) + 32 * v6, v19);

  if (swift_dynamicCast())
  {
    if (*(&v17 + 1))
    {
      v19[0] = v16;
      v19[1] = v17;
      v20 = v18;
      sub_10001148C(&qword_10029DE98, &unk_100226B30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10021D600;
      *(inited + 32) = sub_100216974();
      *(inited + 40) = v10;
      sub_100019390(v19, inited + 48);
      isa = sub_100019A98(inited);
      swift_setDeallocating();
      sub_1000114D4(inited + 32, &qword_100297D20, &qword_10021D728);
      sub_1000193EC(v19);
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
  }

LABEL_8:
  sub_1000114D4(&v16, &qword_10029DE90, &qword_100226B28);
  isa = 0;
LABEL_9:
  v12 = [v1 domain];
  if (!v12)
  {
    sub_100216974();
    v12 = sub_100216964();
  }

  v13 = [v1 code];
  if (isa)
  {
    sub_1001AD7C8(isa);

    isa = sub_1002168C4().super.isa;
  }

  v14 = [objc_allocWithZone(NSError) initWithDomain:v12 code:v13 userInfo:isa];

  return v14;
}

void sub_1001AE410(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100216144();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1001AE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023D2B0, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

void sub_1001AE558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_100216964();
    if (a3)
    {
LABEL_3:
      v7 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_1001AE5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DC20, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

uint64_t sub_1001AE6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DC00, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

uint64_t sub_1001AE7A8(uint64_t a1, int a2, void *a3, void *aBlock, void (*a5)(void *, uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;

  a5(a3, a1, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001AE83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_1002168C4().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1001AE910(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a2)
  {
    sub_10000200C(0, &qword_10029DB88, &off_100275050);
    isa = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v8 = sub_100216144();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, a1, isa);
}

uint64_t sub_1001AEBC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD000000000000024, 0x80000001002391F0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001AEDC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_1001B473C(a6, a7, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v9 = sub_1001ADD74(v11, v12);
  }

  else
  {
    v9 = 0;
  }

  a4(v9);
}

uint64_t sub_1001AEE80(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DBE0, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1 & 1, v8);
}

void sub_1001AF288(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100216144();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1001AF2F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD00000000000001BLL, 0x800000010023DAD0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001AF3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023DA80, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

void sub_1001AF4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_100216B94().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void sub_1001AF558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100216144();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1001AF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x65726170657250, 0xE700000000000000, *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a14 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a12);
  if (a12)
  {
    swift_getErrorValue();
    v19 = sub_1001ADD74(v25, v26);
  }

  else
  {
    v19 = 0;
  }

  a15(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v19);
}

void sub_1001AF9DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v16 = sub_100216964();
  }

  else
  {
    v16 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a6 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_100216204().super.isa;
  }

  if (a8 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_100216204().super.isa;
  }

  if (a10 >> 60 == 15)
  {
    v20 = 0;
    if (a12)
    {
LABEL_15:
      v21 = sub_100216144();
      goto LABEL_18;
    }
  }

  else
  {
    v20 = sub_100216204().super.isa;
    if (a12)
    {
      goto LABEL_15;
    }
  }

  v21 = 0;
LABEL_18:
  v22 = v21;
  (*(a13 + 16))(a13, v16, isa, v18, v19, v20, a11);
}

uint64_t sub_1001AFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000016, 0x800000010023DA60, *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a17 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a15);
  if (a15)
  {
    swift_getErrorValue();
    v19 = sub_1001ADD74(v28, v29);
  }

  else
  {
    v19 = 0;
  }

  a18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v19);
}

void sub_1001AFEFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, objc_class *a14, uint64_t a15, uint64_t a16)
{
  v19 = a14;
  if (a2)
  {
    v20 = sub_100216964();
  }

  else
  {
    v20 = 0;
  }

  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a6 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_100216204().super.isa;
  }

  if (a8 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_100216204().super.isa;
  }

  if (a10 >> 60 == 15)
  {
    v24 = 0;
    if (a13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v24 = sub_100216204().super.isa;
    if (a13)
    {
LABEL_15:
      v25 = sub_100216964();
      if (!a14)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  v25 = 0;
  if (a14)
  {
LABEL_16:
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v19 = sub_100216B14().super.isa;
  }

LABEL_17:
  v26 = a15;
  if (a15)
  {
    v26 = sub_100216144();
  }

  v27 = v26;
  (*(a16 + 16))(a16, v20, isa, v22, v23, v24, a11, v25, v19, v26);
}

uint64_t sub_1001B00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x73696C6261747345, 0xEC000000676E6968, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4, v14);
}

void sub_1001B020C(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  isa = a3;
  if (a2)
  {
    v10 = sub_100216964();
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0;
  if (a3)
  {
LABEL_3:
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    isa = sub_100216B14().super.isa;
  }

LABEL_4:
  if (a5)
  {
    v11 = sub_100216144();
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  (*(a6 + 16))(a6, v10, isa, a4);
}

uint64_t sub_1001B02E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0x676E696863756F56, 0xE800000000000000, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4, v14);
}

void sub_1001B0658(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
    if (a5)
    {
LABEL_6:
      v11 = sub_100216144();
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_100216204().super.isa;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  v11 = 0;
LABEL_9:
  v12 = v11;
  (*(a6 + 16))(a6, isa, v10);
}

uint64_t sub_1001B072C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, void, id))
{
  sub_1001B473C(0xD00000000000001BLL, 0x800000010023DA40, *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a7 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a5);
  if (a5)
  {
    swift_getErrorValue();
    v14 = sub_1001ADD74(v16, v17);
  }

  else
  {
    v14 = 0;
  }

  a8(a1, a2, a3, a4 & 1, v14);
}

void sub_1001B0974(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = sub_100216964();
    if (a5)
    {
LABEL_3:
      v11 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v12 = v11;
  (*(a6 + 16))(a6, v10, a3, a4 & 1);
}

uint64_t sub_1001B0A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023DA20, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

void sub_1001B0D64(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, Class a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_100216204().super.isa;
  }

  if (a4 >> 60 != 15)
  {
    v14 = sub_100216204().super.isa;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (a5)
  {
LABEL_8:
    sub_10000200C(0, &qword_10029DEB0, off_100275028);
    a5 = sub_100216B14().super.isa;
  }

LABEL_9:
  if (a7)
  {
    v15 = sub_100216144();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  (*(a8 + 16))(a8, isa, v14, a5, a6);
}

uint64_t sub_1001B0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000020, 0x800000010023D9F0, *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a4);
  if (a4)
  {
    swift_getErrorValue();
    v12 = sub_1001ADD74(v14, v15);
  }

  else
  {
    v12 = 0;
  }

  a7(a1, a2, a3, v12);
}

void sub_1001B0F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = sub_100216964();
    if (a4)
    {
LABEL_3:
      v9 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, v8, a3);
}

uint64_t sub_1001B1010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000029, 0x800000010023D9C0, *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a6 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a4);
  if (a4)
  {
    swift_getErrorValue();
    v12 = sub_1001ADD74(v14, v15);
  }

  else
  {
    v12 = 0;
  }

  a7(a1, a2, a3, v12);
}

uint64_t sub_1001B118C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D9A0, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_1001B12C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000022, 0x800000010023D970, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

uint64_t sub_1001B13AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000024, 0x800000010023D940, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_1001B14BC(uint64_t a1, int a2, void *a3, void *a4, int a5, void *aBlock, void (*a7)(void *, id, uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v12 = sub_100216B24();
  _Block_copy(v11);
  v13 = a3;
  v14 = a4;

  a7(a3, v14, v12, a1, v11);
  _Block_release(v11);
  _Block_release(v11);
}

uint64_t sub_1001B15A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD000000000000014, 0x800000010023D920, *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a9 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a7);
  if (a7)
  {
    swift_getErrorValue();
    v17 = sub_1001ADD74(v19, v20);
  }

  else
  {
    v17 = 0;
  }

  a10(a1, a2, a3, a4, a5, a6, v17);
}

uint64_t sub_1001B1AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  if (a5)
  {
    v7 = a2;
    v8 = a3;
    v9 = a1;
    v10 = a4;
    swift_getErrorValue();
    v11 = sub_1001ADD74(v14, v15);
    a2 = v7;
    a3 = v8;
    a4 = v10;
    v12 = v11;
    a1 = v9;
  }

  else
  {
    v12 = 0;
  }

  a6(a1, a2, a3, a4, v12);
}

uint64_t sub_1001B1BB8(uint64_t a1, int a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10, void *aBlock, void (*a12)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, void *))
{
  v17 = _Block_copy(aBlock);
  sub_10000200C(0, &qword_10029D938, off_100275018);
  v31 = sub_100216B24();
  sub_10000200C(0, &qword_10029DEB0, off_100275028);
  v18 = sub_100216B24();
  if (a6)
  {
    v30 = sub_100216B24();
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v29 = 0;
    v20 = 0;
    if (a8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v30 = 0;
  if (!a7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v29 = sub_100216974();
  v20 = v19;
  if (a8)
  {
LABEL_4:
    v21 = sub_100216974();
    a8 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  v23 = a3;
  v24 = a9;

  if (v24)
  {
    v25 = sub_100216974();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  _Block_copy(v17);
  a12(v23, v31, v18, v30, v29, v20, v21, a8, v25, v27, a10, a1, v17);
  _Block_release(v17);
  _Block_release(v17);
}

void sub_1001B1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_100216144();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

void sub_1001B2208(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    isa = sub_100216B14().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1001B22FC(uint64_t a1, int a2, void *a3, int a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_100216BB4();
  _Block_copy(v9);
  v11 = a3;

  a6(a3, v10, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

void sub_1001B24C8(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  isa = a2;
  if (a1)
  {
    v7.super.isa = sub_100216B14().super.isa;
    if (!isa)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7.super.isa = 0;
  if (a2)
  {
LABEL_3:
    isa = sub_100216B14().super.isa;
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_100216144();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7.super.isa, isa);
}

void sub_1001B261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = sub_100216B14().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t sub_1001B26B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, id))
{
  if (a7)
  {
    v9 = a2;
    v10 = a3;
    v11 = a1;
    v12 = a6;
    v13 = a5;
    v14 = a4;
    swift_getErrorValue();
    v15 = sub_1001ADD74(v18, v19);
    a2 = v9;
    a3 = v10;
    a4 = v14;
    a5 = v13;
    a6 = v12;
    v16 = v15;
    a1 = v11;
  }

  else
  {
    v16 = 0;
  }

  a8(a1, a2, a3, a4, a5, a6, v16);
}

void sub_1001B278C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a4;
  if (a2 >> 60 != 15)
  {
    isa = sub_100216204().super.isa;
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  isa = 0;
  if (a4)
  {
LABEL_5:
    v11 = sub_100216964();
  }

LABEL_6:
  if (a6 >> 60 == 15)
  {
    v13 = 0;
    if (a7)
    {
LABEL_8:
      v14 = sub_100216144();
      goto LABEL_11;
    }
  }

  else
  {
    v13 = sub_100216204().super.isa;
    if (a7)
    {
      goto LABEL_8;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = v14;
  (*(a8 + 16))(a8, isa, v11, v13);
}

uint64_t sub_1001B2890(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

void sub_1001B2AC8(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_10006094C();
    isa = sub_1002168C4().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1001B2D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0x766F636552746573, 0xEE0079654B797265, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

uint64_t sub_1001B2E14(uint64_t a1, int a2, void *a3, int a4, int a5, int a6, void *aBlock, unint64_t *a8, uint64_t *a9, void (*a10)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v13 = _Block_copy(aBlock);
  v14 = sub_100216974();
  v16 = v15;
  v17 = sub_100216974();
  v19 = v18;
  sub_10000200C(0, a8, a9);
  v20 = sub_100216B24();
  _Block_copy(v13);
  v21 = a3;

  a10(a3, v14, v16, v17, v19, v20, a1, v13);
  _Block_release(v13);
  _Block_release(v13);
}

uint64_t sub_1001B2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D8E0, *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a5 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a3);
  if (a3)
  {
    swift_getErrorValue();
    v10 = sub_1001ADD74(v12, v13);
  }

  else
  {
    v10 = 0;
  }

  a6(a1, a2, v10);
}

void sub_1001B31E4(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, a5, a6);
    isa = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v10 = sub_100216144();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1001B3290(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  sub_1001B473C(0xD00000000000001ALL, 0x800000010023D8C0, *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a1);
  if (a1)
  {
    swift_getErrorValue();
    v6 = sub_1001ADD74(v8, v9);
  }

  else
  {
    v6 = 0;
  }

  a4(v6);
}

uint64_t sub_1001B335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, id))
{
  sub_1001B473C(0xD000000000000019, 0x800000010023D8A0, *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 8), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 16), *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_name + 24), a2);
  if (a2)
  {
    swift_getErrorValue();
    v8 = sub_1001ADD74(v10, v11);
  }

  else
  {
    v8 = 0;
  }

  a5(a1, v8);
}

uint64_t sub_1001B3438(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const void *a5, void (*a6)(void *, char *, uint64_t, void *))
{
  v10 = sub_1002163D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a5);
  sub_1002163C4();
  _Block_copy(v16);
  v17 = a3;

  a6(a3, v15, a1, v16);
  _Block_release(v16);
  _Block_release(v16);

  return (*(v11 + 8))(v15, v10);
}

void sub_1001B3804(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_100216144();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_100216204().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_1001B3B1C(objc_class *a1, uint64_t a2, uint64_t a3)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    isa = sub_1002168C4().super.isa;
  }

  if (a2)
  {
    v6 = sub_100216144();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_1001B3C24(uint64_t a1, void (*a2)(id))
{
  if (a1)
  {
    swift_getErrorValue();
    v3 = sub_1001ADD74(v5, v6);
  }

  else
  {
    v3 = 0;
  }

  a2(v3);
}

uint64_t sub_1001B3CB0(uint64_t a1, int a2, void *a3, int a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = sub_100216974();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;

  a6(a3, v10, v12, a1, v9);
  _Block_release(v9);
  _Block_release(v9);
}

uint64_t sub_1001B3D8C(uint64_t a1, int a2, void *a3, int a4, int a5, void *aBlock, void (*a7)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_100216974();
  v13 = v12;
  v14 = sub_100216974();
  v16 = v15;
  _Block_copy(v10);
  v17 = a3;

  a7(a3, v11, v13, v14, v16, a1, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_1001B3E94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    v4 = a1;
    swift_getErrorValue();
    v5 = sub_1001ADD74(v7, v8);
    a1 = v4;
  }

  else
  {
    v5 = 0;
  }

  a3(a1, v5);
}

uint64_t sub_1001B3F38(char a1, uint64_t a2, void (*a3)(void, id))
{
  if (a2)
  {
    swift_getErrorValue();
    v5 = sub_1001ADD74(v7, v8);
  }

  else
  {
    v5 = 0;
  }

  a3(a1 & 1, v5);
}

uint64_t sub_1001B3FDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

uint64_t sub_1001B4098(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, id))
{
  if (a3)
  {
    v5 = a2;
    v6 = a1;
    swift_getErrorValue();
    v7 = sub_1001ADD74(v10, v11);
    a2 = v5;
    v8 = v7;
    a1 = v6;
  }

  else
  {
    v8 = 0;
  }

  a4(a1, a2, v8);
}

uint64_t sub_1001B4154(uint64_t a1, int a2, void *a3, int a4, void *aBlock, unint64_t *a6, uint64_t *a7, void (*a8)(void *, uint64_t, uint64_t, void *))
{
  v13 = _Block_copy(aBlock);
  sub_10000200C(0, a6, a7);
  v14 = sub_100216B24();
  _Block_copy(v13);
  v15 = a3;

  a8(a3, v14, a1, v13);
  _Block_release(v13);
  _Block_release(v13);
}

void sub_1001B422C(objc_class *a1, Class a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  isa = a1;
  if (a1)
  {
    sub_10000200C(0, a5, a6);
    isa = sub_100216B14().super.isa;
  }

  if (a2)
  {
    sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    a2 = sub_100216B14().super.isa;
  }

  if (a3)
  {
    v10 = sub_100216144();
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  (*(a4 + 16))(a4, isa, a2);
}

uint64_t sub_1001B4308()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_1001B436C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001B43B8(a1, a2);
  sub_1001B44E8(&off_100276008);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1001B43B8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1001B45D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100217034();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100216A44();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1001B45D4(v10, 0);
        result = sub_100216FC4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001B44E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1001B4648(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1001B45D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10001148C(&qword_10029DE88, &qword_100226B20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1001B4648(char *result, int64_t a2, char a3, char *a4)
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
    sub_10001148C(&qword_10029DE88, &qword_100226B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1001B473C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (a7)
  {
    swift_errorRetain();
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v11 = sub_100216774();
    sub_100002648(v11, qword_10029DBB0);
    swift_errorRetain();

    v12 = sub_100216754();
    v13 = sub_100216C74();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v14 = 136446722;
      *(v14 + 4) = sub_100005FB0(a1, a2, &v28);
      *(v14 + 12) = 2082;
      sub_100216FD4(16);

      v30._countAndFlagsBits = a3;
      v30._object = a4;
      sub_100216A14(v30);
      v31._countAndFlagsBits = 44;
      v31._object = 0xE100000000000000;
      sub_100216A14(v31);
      v32._countAndFlagsBits = a5;
      v32._object = a6;
      sub_100216A14(v32);
      v33._countAndFlagsBits = 41;
      v33._object = 0xE100000000000000;
      sub_100216A14(v33);
      v15 = sub_100005FB0(0x656E6961746E6F43, 0xEA00000000002872, &v28);

      *(v14 + 14) = v15;
      *(v14 + 22) = 2082;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v16 = sub_100216994();
      v18 = sub_100005FB0(v16, v17, &v28);

      *(v14 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s errored for %{public}s: %{public}s", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (qword_100297538 != -1)
    {
      swift_once();
    }

    v21 = sub_100216774();
    sub_100002648(v21, qword_10029DBB0);

    osloga = sub_100216754();
    v22 = sub_100216C54();

    if (os_log_type_enabled(osloga, v22))
    {
      v23 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v23 = 136446466;
      *(v23 + 4) = sub_100005FB0(a1, a2, &v28);
      *(v23 + 12) = 2082;
      sub_100216FD4(16);

      v34._countAndFlagsBits = a3;
      v34._object = a4;
      sub_100216A14(v34);
      v35._countAndFlagsBits = 44;
      v35._object = 0xE100000000000000;
      sub_100216A14(v35);
      v36._countAndFlagsBits = a5;
      v36._object = a6;
      sub_100216A14(v36);
      v37._countAndFlagsBits = 41;
      v37._object = 0xE100000000000000;
      sub_100216A14(v37);
      v24 = sub_100005FB0(0x656E6961746E6F43, 0xEA00000000002872, &v28);

      *(v23 + 14) = v24;
      _os_log_impl(&_mh_execute_header, osloga, v22, "%{public}s finished for %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}