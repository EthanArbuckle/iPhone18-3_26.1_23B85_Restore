void sub_10004CDB4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v32[-v9];
  v11 = *a1;
  if (v11 == 5)
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v12 = sub_10008CCDC();
    sub_100009F94(v12, qword_1000D6D38);
    sub_100052990(a2, v10, type metadata accessor for Device);
    v13 = sub_10008CCBC();
    v14 = sub_10008DE1C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136446210;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
      v17 = sub_10008E15C();
      v19 = v18;
      sub_1000207B4(v10, type metadata accessor for Device);
      v20 = sub_10000A2D8(v17, v19, &v33);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "AXMEnroller finished for %{public}s", v15, 0xCu);
      sub_10000BC74(v16);
    }

    else
    {

      sub_1000207B4(v10, type metadata accessor for Device);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v21 = sub_10008CCDC();
    sub_100009F94(v21, qword_1000D6D38);
    sub_100052990(a2, v8, type metadata accessor for Device);
    v22 = sub_10008CCBC();
    v23 = sub_10008DE2C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v24 = 136446466;
      v32[7] = v11;
      v25 = sub_10008DC4C();
      v27 = sub_10000A2D8(v25, v26, &v33);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2082;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
      v28 = sub_10008E15C();
      v30 = v29;
      sub_1000207B4(v8, type metadata accessor for Device);
      v31 = sub_10000A2D8(v28, v30, &v33);

      *(v24 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "AXMEnroller failed with error: %{public}s for device:  %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000207B4(v8, type metadata accessor for Device);
    }

    swift_unownedRetainStrong();
    sub_10004D290(a2);

    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v33) = v11;
    sub_10008CDBC();
  }
}

void sub_10004D290(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Device();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v40 - v10;
  v12 = type metadata accessor for EnrolledDeviceRecord();
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_10000EA60(a1);
    if (v21)
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      swift_beginAccess();
      sub_10004D7C4(a1);
      swift_endAccess();

      sub_10004F160();
      sub_1000500A8();
      v23 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
      swift_beginAccess();
      sub_100052990(v22 + v23, v17, type metadata accessor for Device);
      v24 = &v17[*(v12 + 20)];
      sub_10008CAAC();
      v17[*(v12 + 24)] = 1;
      v25 = sub_10008DDEC();
      (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
      sub_100052990(v17, v15, type metadata accessor for EnrolledDeviceRecord);
      sub_10008DDBC();

      v26 = sub_10008DDAC();
      v27 = (*(v41 + 80) + 40) & ~*(v41 + 80);
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = &protocol witness table for MainActor;
      v28[4] = v2;
      sub_100052B74(v15, v28 + v27, type metadata accessor for EnrolledDeviceRecord);
      sub_10007B228(0, 0, v11, &unk_100094768, v28);

      v29 = v17;
      v30 = type metadata accessor for EnrolledDeviceRecord;
      goto LABEL_10;
    }
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v31 = sub_10008CCDC();
  sub_100009F94(v31, qword_1000D6D38);
  sub_100052990(a1, v7, type metadata accessor for Device);
  v32 = sub_10008CCBC();
  v33 = sub_10008DE2C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136446210;
    sub_10008CB0C();
    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
    v36 = sub_10008E15C();
    v38 = v37;
    sub_1000207B4(v7, type metadata accessor for Device);
    v39 = sub_10000A2D8(v36, v38, &v42);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s Received enrollment failed for a device we are not tracking", v34, 0xCu);
    sub_10000BC74(v35);

    return;
  }

  v30 = type metadata accessor for Device;
  v29 = v7;
LABEL_10:
  sub_1000207B4(v29, v30);
}

uint64_t sub_10004D7C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10000EA60(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v14 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100052454();
    v9 = v14;
  }

  v10 = *(v9 + 48);
  v11 = sub_10008CB0C();
  (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
  v12 = *(*(v9 + 56) + 8 * v6);
  sub_100051F90(v6, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_10004D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10008DDBC();
  v5[4] = sub_10008DDAC();
  v7 = sub_10008DD8C();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_10004D924, v7, v6);
}

uint64_t sub_10004D924()
{
  v1 = v0[2];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_10004DA50;
  v8 = v0[3];

  return v10(v8, ObjectType, v2);
}

uint64_t sub_10004DA50()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10004DB70, v4, v3);
}

uint64_t sub_10004DB70()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10004DBD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v126 - v6;
  v8 = type metadata accessor for Device();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v126 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v126 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v126 - v20;
  __chkstk_darwin(v19);
  v23 = v126 - v22;
  sub_1000527DC(a2, &v138);
  if (v142)
  {
    v24 = a1;
    v25 = v8;
    v127 = v24;
    v26 = v139;
    if (v142 == 1)
    {
      v27 = v140;
      v28 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
      v29 = v128;
      swift_beginAccess();
      v30 = *(v29 + v28);
      if (*(v30 + 16))
      {

        v31 = sub_10000EA60(v127);
        if (v32)
        {
          v33 = *(*(v30 + 56) + 8 * v31);

          v34 = v33 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
          swift_beginAccess();
          v35 = (v34 + *(v25 + 32));
          v36 = v35[1];
          *v35 = v26;
          v35[1] = v27;

          sub_10004F160();

LABEL_25:
          v100 = v127;
          if (qword_1000C8CF8 != -1)
          {
            swift_once();
          }

          v101 = sub_10008CCDC();
          sub_100009F94(v101, qword_1000D6D38);
          sub_100052990(v100, v21, type metadata accessor for Device);
          v102 = sub_10008CCBC();
          v103 = sub_10008DE1C();
          if (!os_log_type_enabled(v102, v103))
          {

            sub_1000207B4(v21, type metadata accessor for Device);
            return;
          }

          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v137[0] = v105;
          *v104 = 136446210;
          sub_10008CB0C();
          sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
          v106 = sub_10008E15C();
          v108 = v107;
          sub_1000207B4(v21, type metadata accessor for Device);
          v109 = sub_10000A2D8(v106, v108, v137);

          *(v104 + 4) = v109;
          v110 = "sent enrollment info for %{public}s";
          goto LABEL_41;
        }
      }

      goto LABEL_25;
    }

    if (v139 | v138 | v141 | v140 | *(&v138 + 1))
    {
      v49 = v127;
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v50 = sub_10008CCDC();
      sub_100009F94(v50, qword_1000D6D38);
      sub_100052990(v49, v12, type metadata accessor for Device);
      v51 = sub_10008CCBC();
      v52 = sub_10008DE1C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v133 = v54;
        *v53 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
        v55 = sub_10008E15C();
        v57 = v56;
        sub_1000207B4(v12, type metadata accessor for Device);
        v58 = sub_10000A2D8(v55, v57, &v133);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "%{public}s disconnected", v53, 0xCu);
        sub_10000BC74(v54);
      }

      else
      {

        sub_1000207B4(v12, type metadata accessor for Device);
      }

      sub_1000500A8();
    }

    else
    {
      v89 = v127;
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v90 = sub_10008CCDC();
      v91 = sub_100009F94(v90, qword_1000D6D38);
      sub_100052990(v89, v18, type metadata accessor for Device);
      v92 = sub_10008CCBC();
      v93 = sub_10008DE1C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *&v133 = swift_slowAlloc();
        v126[1] = v91;
        v95 = v133;
        *v94 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
        v96 = sub_10008E15C();
        v98 = v97;
        sub_1000207B4(v18, type metadata accessor for Device);
        v99 = sub_10000A2D8(v96, v98, &v133);

        *(v94 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "%{public}s enrolled successfully", v94, 0xCu);
        sub_10000BC74(v95);
      }

      else
      {

        sub_1000207B4(v18, type metadata accessor for Device);
      }

      v111 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
      v112 = v128;
      swift_beginAccess();
      v113 = *(v112 + v111);
      if (*(v113 + 16))
      {
        v114 = *(v112 + v111);

        v115 = v127;
        v116 = sub_10000EA60(v127);
        if (v117)
        {
          v118 = *(*(v113 + 56) + 8 * v116);

          swift_beginAccess();
          sub_10004D7C4(v115);
          swift_endAccess();

          sub_10004F160();
          sub_1000500A8();
          v119 = sub_10008DDEC();
          (*(*(v119 - 8) + 56))(v7, 1, 1, v119);
          sub_10008DDBC();

          v120 = sub_10008DDAC();
          v121 = swift_allocObject();
          v121[2] = v120;
          v121[3] = &protocol witness table for MainActor;
          v121[4] = v118;
          v121[5] = v112;
          sub_10007B228(0, 0, v7, &unk_100094758, v121);

          return;
        }
      }

      sub_100052990(v127, v15, type metadata accessor for Device);
      v102 = sub_10008CCBC();
      v103 = sub_10008DE2C();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v129[0] = v105;
        *v104 = 136446210;
        sub_10008CB0C();
        sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
        v122 = sub_10008E15C();
        v124 = v123;
        sub_1000207B4(v15, type metadata accessor for Device);
        v125 = sub_10000A2D8(v122, v124, v129);

        *(v104 + 4) = v125;
        v110 = "%{public}s Received enrolled status for a device we are not tracking";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v102, v103, v110, v104, 0xCu);
        sub_10000BC74(v105);

        return;
      }

      sub_1000207B4(v15, type metadata accessor for Device);
    }
  }

  else
  {
    sub_10000C3E0(&v138, v137);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v37 = sub_10008CCDC();
    sub_100009F94(v37, qword_1000D6D38);
    sub_100052990(a1, v23, type metadata accessor for Device);
    sub_10000BE8C(v137, &v133);
    v38 = sub_10008CCBC();
    v39 = sub_10008DE1C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v129[0] = swift_slowAlloc();
      *v40 = 136446466;
      sub_10008CB0C();
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
      v41 = sub_10008E15C();
      v43 = v42;
      sub_1000207B4(v23, type metadata accessor for Device);
      v44 = sub_10000A2D8(v41, v43, v129);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2082;
      v45 = sub_10000BB24(&v133, *(&v134 + 1));
      v46 = *v45;
      v47 = v45[1];

      sub_10000BC74(&v133);
      v48 = sub_10000A2D8(v46, v47, v129);

      *(v40 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s: Received serial number: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000207B4(v23, type metadata accessor for Device);
      sub_10000BC74(&v133);
    }

    v59 = v128;
    v60 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
    swift_beginAccess();
    v61 = *(v59 + v60);
    if (*(v61 + 16))
    {

      v62 = sub_10000EA60(a1);
      if (v63)
      {
        v64 = v8;
        v65 = *(*(v61 + 56) + 8 * v62);

        v66 = v65 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
        swift_beginAccess();
        v67 = sub_10000BB24(v137, v137[3]);
        v68 = v67[3];
        v70 = *v67;
        v69 = v67[1];
        v135 = v67[2];
        v136 = v68;
        v133 = v70;
        v134 = v69;
        v131 = &type metadata for DMTResultBackedADEPrerequisites;
        v132 = &off_1000C2CF0;
        v71 = swift_allocObject();
        v130[0] = v71;
        v72 = v67[3];
        v74 = *v67;
        v73 = v67[1];
        v71[3] = v67[2];
        v71[4] = v72;
        v71[1] = v74;
        v71[2] = v73;
        v75 = sub_10000BB24(v130, &type metadata for DMTResultBackedADEPrerequisites);
        v76 = v75[7];
        v77 = (v66 + v64[5]);
        v78 = v77[1];
        *v77 = v75[6];
        v77[1] = v76;
        sub_10003E190(&v133, v129);

        v79 = sub_10000BB24(v130, v131);
        v81 = v79[4];
        v80 = v79[5];
        v82 = (v66 + v64[6]);
        v83 = v82[1];
        *v82 = v81;
        v82[1] = v80;

        v84 = sub_10000BB24(v130, v131);
        v86 = *v84;
        v85 = v84[1];
        v87 = (v66 + v64[7]);
        v88 = v87[1];
        *v87 = v86;
        v87[1] = v85;

        sub_10000BC74(v130);
        swift_endAccess();
        sub_10004F160();
      }

      else
      {
      }
    }

    sub_10000BC74(v137);
  }
}

uint64_t sub_10004EA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for EnrolledDeviceRecord();
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  sub_10008DDBC();
  v5[9] = sub_10008DDAC();
  v9 = sub_10008DD8C();
  v5[10] = v9;
  v5[11] = v8;

  return _swift_task_switch(sub_10004EAFC, v9, v8);
}

uint64_t sub_10004EAFC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
  swift_beginAccess();
  sub_100052990(v4 + v5, v2, type metadata accessor for Device);
  v6 = v2 + *(v1 + 20);
  sub_10008CAAC();
  *(v2 + *(v1 + 24)) = 0;
  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 24);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_10004EC84;
  v13 = v0[8];

  return v15(v13, ObjectType, v7);
}

uint64_t sub_10004EC84()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_10004EDA4, v4, v3);
}

uint64_t sub_10004EDA4()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_1000207B4(v2, type metadata accessor for EnrolledDeviceRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10004EE28(uint64_t a1)
{
  v2 = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000A2D8(0xD000000000000020, 0x800000010009AA20, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s begin", v7, 0xCu);
    sub_10000BC74(v8);
  }

  v9 = *(v2 + 176);
  v11 = a1;
  return sub_10008CD5C();
}

void sub_10004EF80()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);

  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_10000A2D8(0xD00000000000001DLL, 0x800000010009AA00, &v10);
    *(v5 + 12) = 2082;
    v9 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus);
    sub_100009C08(&qword_1000CCC48, &unk_100094740);
    v6 = sub_10008DC4C();
    v8 = sub_10000A2D8(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s prerequisiteStatus = %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) == 5)
  {
    sub_10004A8B8();
  }

  else
  {
    sub_10004ACEC();
  }
}

uint64_t sub_10004F160()
{
  v62 = type metadata accessor for Device();
  v75 = *(v62 - 8);
  v1 = *(v75 + 64);
  v2 = __chkstk_darwin(v62);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v63 = &v61 - v5;
  __chkstk_darwin(v4);
  v78 = &v61 - v6;
  v77 = sub_10008CB0C();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v77);
  v70 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009C08(&qword_1000CCC38, &qword_100094730);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v61 - v15;
  v17 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  swift_beginAccess();
  v18 = *&v0[v17];
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v67 = v7 + 16;
  v65 = v0;
  v66 = v7 + 32;
  v71 = v7;
  v72 = v18;
  v74 = (v7 + 8);
  v24 = v16;

  v25 = 0;
  v26 = &_swiftEmptyArrayStorage;
  v68 = v24;
  v69 = v14;
  v73 = v19;
  if (!v22)
  {
LABEL_5:
    if (v23 <= (v25 + 1))
    {
      v28 = (v25 + 1);
    }

    else
    {
      v28 = v23;
    }

    v29 = (v28 - 1);
    while (1)
    {
      v27 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v23)
      {
        v45 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
        (*(*(v45 - 8) + 56))(v14, 1, 1, v45);
        v22 = 0;
        v25 = v29;
        goto LABEL_14;
      }

      v22 = *(v19 + 8 * v27);
      ++v25;
      if (v22)
      {
        v76 = v26;
        v25 = v27;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    v26 = sub_10003AF04(0, v26[2] + 1, 1, v26);
    goto LABEL_26;
  }

  while (1)
  {
    v76 = v26;
    v27 = v25;
LABEL_13:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v30 | (v27 << 6);
    v33 = v71;
    v32 = v72;
    v34 = v70;
    v35 = v77;
    (*(v71 + 16))(v70, *(v72 + 48) + *(v71 + 72) * v31, v77);
    v36 = *(*(v32 + 56) + 8 * v31);
    v37 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
    v38 = *(v37 + 48);
    v39 = *(v33 + 32);
    v14 = v69;
    v39(v69, v34, v35);
    *&v14[v38] = v36;
    (*(*(v37 - 8) + 56))(v14, 0, 1, v37);

    v26 = v76;
    v24 = v68;
LABEL_14:
    sub_10005276C(v14, v24);
    v40 = sub_100009C08(&qword_1000CCC40, &qword_100094738);
    if ((*(*(v40 - 8) + 48))(v24, 1, v40) == 1)
    {
      break;
    }

    v41 = *(v24 + *(v40 + 48));
    v42 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device;
    swift_beginAccess();
    sub_100052990(v41 + v42, v78, type metadata accessor for Device);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10003AF04(0, v26[2] + 1, 1, v26);
    }

    v19 = v73;
    v44 = v26[2];
    v43 = v26[3];
    if (v44 >= v43 >> 1)
    {
      v26 = sub_10003AF04(v43 > 1, v44 + 1, 1, v26);
    }

    v26[2] = v44 + 1;
    sub_100052B74(v78, v26 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v44, type metadata accessor for Device);
    (*v74)(v24, v77);
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  if (v26[2])
  {
    v14 = v65;
    goto LABEL_29;
  }

  v14 = v65;
  v46 = *&v65[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice];
  if (!v46)
  {
    goto LABEL_29;
  }

  v29 = v46;
  v47 = [v29 identifier];
  v23 = v63;
  sub_10008CAEC();

  v48 = [v29 modelIdentifier];
  v49 = sub_10008DBDC();
  v51 = v50;

  v52 = v62;
  v53 = (v23 + *(v62 + 20));
  *v53 = 0;
  v53[1] = 0;
  v54 = (v23 + v52[6]);
  *v54 = v49;
  v54[1] = v51;
  v55 = (v23 + v52[7]);
  *v55 = 0;
  v55[1] = 0;
  v56 = (v23 + v52[8]);
  *v56 = 0;
  v56[1] = 0;
  v19 = v64;
  sub_100052990(v23, v64, type metadata accessor for Device);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v58 = v26[2];
  v57 = v26[3];
  if (v58 >= v57 >> 1)
  {
    v26 = sub_10003AF04(v57 > 1, v58 + 1, 1, v26);
  }

  sub_1000207B4(v23, type metadata accessor for Device);
  v26[2] = v58 + 1;
  sub_100052B74(v19, v26 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v58, type metadata accessor for Device);
LABEL_29:
  v59 = *(v14 + 21);
  v79 = v26;
  sub_10008CD5C();
}

void sub_10004F890()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) & 1) == 0)
  {
    if (qword_1000C8CF8 == -1)
    {
LABEL_8:
      v13 = sub_10008CCDC();
      sub_100009F94(v13, qword_1000D6D38);
      v14 = sub_10008CCBC();
      v15 = sub_10008DE1C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v62 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v62);
        _os_log_impl(&_mh_execute_header, v14, v15, "%s Delaying processing while discovering initial devices", v16, 0xCu);
        sub_10000BC74(v17);
      }

      sub_10004AF68();
      return;
    }

LABEL_48:
    swift_once();
    goto LABEL_8;
  }

  v8 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice;
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice))
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v9 = sub_10008CCDC();
    sub_100009F94(v9, qword_1000D6D38);
    v61 = sub_10008CCBC();
    v10 = sub_10008DE1C();
    if (os_log_type_enabled(v61, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v62);
      _os_log_impl(&_mh_execute_header, v61, v10, "%s Already processing a device, bailing out", v11, 0xCu);
      sub_10000BC74(v12);
    }

    else
    {
      v48 = v61;
    }

    return;
  }

  v59 = v5;
  v18 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices;
  v19 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v53 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);
    }

    v20 = sub_10008E00C();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v21 = sub_10008CCDC();
  v22 = sub_100009F94(v21, qword_1000D6D38);
  v23 = sub_10008CCBC();
  v24 = sub_10008DE1C();
  v25 = os_log_type_enabled(v23, v24);
  v61 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v62 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v62);
    *(v26 + 12) = 2048;
    *(v26 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - %ld nearby devices", v26, 0x16u);
    sub_10000BC74(v27);
  }

  v28 = *(v1 + v18);
  if (v28 >> 62)
  {
    if (v28 < 0)
    {
      v54 = *(v1 + v18);
    }

    v29 = sub_10008E00C();
    if (!v29)
    {
      return;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      return;
    }
  }

  v57 = v7;
  v58 = v8;
  if ((v28 & 0xC000000000000001) != 0)
  {

    v31 = sub_10008DFCC();
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v30 = *(v28 + 32);

    v31 = v30;
  }

  v32 = v31;
  v56 = v3;
  v60 = v1;
  if (v29 != 1)
  {
    v49 = 1;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v50 = sub_10008DFCC();
      }

      else
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        if (v49 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v50 = *(v28 + 8 * v49 + 32);
      }

      v33 = v50;
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v52 = [v32 RSSI];
      if (v52 < [v33 RSSI])
      {

        v32 = v33;
        ++v49;
        if (v51 == v29)
        {
          goto LABEL_26;
        }
      }

      else
      {

        ++v49;
        if (v51 == v29)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_25:
  v33 = v32;
LABEL_26:

  v34 = v60;
  v35 = *(v60 + v58);
  *(v60 + v58) = v33;
  v36 = v33;

  sub_10004F160();
  v37 = sub_10008CCBC();
  v38 = sub_10008DE1C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v39 = 136315394;
    *(v39 + 4) = sub_10000A2D8(0xD00000000000001BLL, 0x800000010009A9E0, &v62);
    *(v39 + 12) = 2082;
    v40 = [v36 identifier];
    v41 = v57;
    sub_10008CAEC();

    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
    v42 = v59;
    v43 = sub_10008E15C();
    v45 = v44;
    (*(v56 + 8))(v41, v42);
    v46 = sub_10000A2D8(v43, v45, &v62);
    v34 = v60;

    *(v39 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "%s - begin pairing with %{public}s", v39, 0x16u);
    swift_arrayDestroy();
  }

  v47 = *(v34 + 16);
  sub_100082438(v36);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v62) = 1;

  sub_10008CDBC();
  sub_10004ACEC();
}

uint64_t sub_1000500A8()
{
  v1 = v0;
  v2 = sub_10008DA5C();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008DA8C();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v10 = sub_10008CCDC();
  sub_100009F94(v10, qword_1000D6D38);
  v11 = sub_10008CCBC();
  v12 = sub_10008DE1C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000A2D8(0xD000000000000015, 0x800000010009A9C0, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_10000BC74(v14);
  }

  v15 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice) = 0;

  sub_10004F160();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 5;

  sub_10008CDBC();
  sub_10004ACEC();
  sub_1000167AC();
  v16 = sub_10008DE7C();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_100052714;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100077134;
  aBlock[3] = &unk_1000C10F8;
  v18 = _Block_copy(aBlock);
  sub_10008DA7C();
  v23 = &_swiftEmptyArrayStorage;
  sub_100052CD4(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630);
  sub_10008DF5C();
  sub_10008DE8C();
  _Block_release(v18);

  swift_unownedRelease();
  (*(v22 + 8))(v5, v2);
  (*(v20 + 8))(v9, v21);
}

void sub_100050510(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);

  v7 = sub_10008CCBC();
  v8 = sub_10008DE0C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_10000A2D8(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "Trying scanned pin: %{private}s", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v11 = *(v3 + 16);
  sub_100082BEC(a1, a2);
}

uint64_t sub_100050674()
{
  v1 = sub_10008CB0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - v8;
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 identifier];
    sub_10008CAEC();

    swift_beginAccess();
    sub_10004D7C4(v11);
    swift_endAccess();

    (*(v2 + 16))(v6, v11, v1);
    swift_beginAccess();
    sub_100050FAC(v9, v6);
    v15 = *(v2 + 8);
    v15(v9, v1);
    swift_endAccess();
    v16 = *(v0 + 16);
    sub_1000833E4();
    sub_1000500A8();

    return (v15)(v11, v1);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v18 = sub_10008CCDC();
    sub_100009F94(v18, qword_1000D6D38);
    v19 = sub_10008CCBC();
    v20 = sub_10008DE0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No device available to cancel", v21, 2u);
    }

    return sub_1000500A8();
  }
}

uint64_t sub_100050968()
{
  v2 = *(*v0 + 168);
  sub_100009C08(&qword_1000C98B8, &unk_1000946D0);
  sub_10001121C(&unk_1000CCC20, &qword_1000C98B8, &unk_1000946D0);
  return sub_10008CDDC();
}

uint64_t sub_1000509F8()
{
  v1 = sub_100009C08(&unk_1000CCC00, &unk_1000946C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&unk_1000CCC10, &unk_1000CCC00, &unk_1000946C0);
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100050B5C()
{
  v1 = sub_100009C08(&qword_1000C98A0, &unk_1000946B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  sub_10008CD8C();
  swift_endAccess();
  sub_10001121C(&qword_1000C98A8, &qword_1000C98A0, &unk_1000946B0);
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100050CC0()
{
  v2 = *(*v0 + 176);
  sub_100009C08(&unk_1000CD730, &unk_10008F9D0);
  sub_10001121C(&unk_1000CCBE0, &unk_1000CD730, &unk_10008F9D0);
  return sub_10008CDDC();
}

uint64_t sub_100050DBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100050E40(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100050EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100050F38(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100050FAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);
  v36 = a2;
  v13 = sub_10008DB2C();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID);
      v23 = sub_10008DB4C();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1000515E8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_10005128C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_10008CB0C();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  result = sub_10008DF8C();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);
      result = sub_10008DB2C();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1000515E8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10005128C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10005188C();
      goto LABEL_12;
    }

    sub_100051AC4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);
  v15 = sub_10008DB2C();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID);
      v23 = sub_10008DB4C();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_10008E19C();
  __break(1u);
  return result;
}

void *sub_10005188C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  v7 = *v0;
  v8 = sub_10008DF7C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_100051AC4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_10008CB0C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100009C08(&qword_1000CCBC8, &qword_100094698);
  v10 = sub_10008DF8C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);
      result = sub_10008DB2C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100051DE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10008DF6C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_10008E1FC();

      sub_10008DC8C();
      v14 = sub_10008E22C();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100051F90(int64_t a1, uint64_t a2)
{
  v43 = sub_10008CB0C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_10008DF6C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);
      v26 = sub_10008DB2C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

void *sub_1000522B0()
{
  v1 = v0;
  sub_100009C08(&qword_1000C9420, &qword_10008F460);
  v2 = *v0;
  v3 = sub_10008E01C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000B998(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000C37C(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_100052454()
{
  v1 = v0;
  v34 = sub_10008CB0C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C08(&unk_1000CCBD0, &unk_1000946A0);
  v4 = *v0;
  v5 = sub_10008E01C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1000526DC()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052714()
{
  v1 = *(v0 + 16);
  swift_unownedRetainStrong();
  sub_10004A8B8();
}

uint64_t sub_100052754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005276C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CCC38, &qword_100094730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052838()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100052880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000E290;

  return sub_10004EA34(a1, v4, v5, v7, v6);
}

uint64_t sub_100052940()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100052990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000529F8()
{
  v1 = (type metadata accessor for EnrolledDeviceRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_10008CB0C();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = type metadata accessor for Device();
  v9 = *(v0 + v3 + v8[5] + 8);

  v10 = *(v0 + v3 + v8[6] + 8);

  v11 = *(v0 + v3 + v8[7] + 8);

  v12 = *(v0 + v3 + v8[8] + 8);

  v13 = v1[7];
  v14 = sub_10008CABC();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052B74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100052BDC(uint64_t a1)
{
  v4 = *(type metadata accessor for EnrolledDeviceRecord() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000E290;

  return sub_10004D88C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100052CD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100052D1C()
{
  v1 = (type metadata accessor for Device() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_10008CB0C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  v8 = *(v5 + v1[8] + 8);

  v9 = *(v5 + v1[9] + 8);

  v10 = *(v5 + v1[10] + 8);

  v11 = *(v0 + v4);
  swift_unownedRelease();

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_100052E4C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10004CDB4(a1, v1 + v4);
}

uint64_t sub_100052EE8()
{
  v1 = (type metadata accessor for Device() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unownedRelease();
  v6 = sub_10008CB0C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[7] + 8);

  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005300C(uint64_t a1)
{
  v3 = *(type metadata accessor for Device() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  swift_unownedRetainStrong();
  sub_10004DBD0(v1 + v4, a1);
}

void sub_10005309C(unint64_t a1, uint64_t *a2, uint64_t a3, void **a4, void *a5)
{
  v73 = a5;
  v74 = a4;
  v77 = a3;
  v85 = a2;
  v72 = type metadata accessor for Device();
  v71 = *(v72 - 8);
  v6 = *(v71 + 64);
  __chkstk_darwin(v72);
  v84 = &v69[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10008CB0C();
  v75 = *(v8 - 8);
  v9 = v75[8];
  v10 = __chkstk_darwin(v8);
  v70 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v90 = &v69[-v13];
  __chkstk_darwin(v12);
  v92 = &v69[-v14];
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v76 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_ignoredDeviceIdentifiers;
  swift_beginAccess();
  if (v15)
  {
    v16 = 0;
    v17 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1 + 32;
    v89 = (v75 + 2);
    v91 = (v75 + 1);
    p_type = (&stru_1000C6FF0 + 16);
    v81 = v15;
    v82 = a1;
    v79 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = a1 & 0xC000000000000001;
    v78 = a1 + 32;
    while (1)
    {
      if (v17)
      {
        v22 = sub_10008DFCC();
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_35;
        }

        v22 = *(v19 + 8 * v16);
      }

      v21 = v22;
      if (__OFADD__(v16++, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v15 = sub_10008E00C();
        goto LABEL_3;
      }

      if (([v22 p_type[348]] & 1) == 0)
      {
        break;
      }

LABEL_7:

      if (v16 == v15)
      {
        return;
      }
    }

    v86 = v16;
    v24 = [v21 identifier];
    sub_10008CAEC();

    v25 = *v85;
    v26 = *(*v85 + 16);
    v83 = v91 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v87 = v21;
    if (v26)
    {
      v27 = *(v25 + 40);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);

      v28 = sub_10008DB2C();
      v29 = -1 << *(v25 + 32);
      v30 = v28 & ~v29;
      v88 = v25 + 56;
      if ((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
      {
        v31 = ~v29;
        v32 = v75[9];
        v33 = v75[2];
        do
        {
          v34 = v90;
          v33(v90, *(v25 + 48) + v32 * v30, v8);
          sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID);
          v35 = sub_10008DB4C();
          v36 = *v91;
          (*v91)(v34, v8);
          if (v35)
          {
            goto LABEL_5;
          }

          v30 = (v30 + 1) & v31;
        }

        while (((*(v88 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0);
      }

      v21 = v87;
    }

    v37 = *(v77 + v76);
    if (*(v37 + 16))
    {
      v38 = *(v37 + 40);
      sub_100052CD4(&qword_1000C9430, &type metadata accessor for UUID);

      v39 = sub_10008DB2C();
      v40 = -1 << *(v37 + 32);
      v41 = v39 & ~v40;
      v88 = v37 + 56;
      if ((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        v43 = v75[9];
        v44 = v75[2];
        while (1)
        {
          v45 = v90;
          v44(v90, *(v37 + 48) + v43 * v41, v8);
          sub_100052CD4(&qword_1000CCBC0, &type metadata accessor for UUID);
          v46 = sub_10008DB4C();
          v36 = *v91;
          (*v91)(v45, v8);
          if (v46)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v88 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

LABEL_5:
        v16 = v86;
        v21 = v87;

        v36(v92, v8);
        v15 = v81;
        a1 = v82;
        v17 = v80;
LABEL_6:
        v19 = v78;
        v18 = v79;
        p_type = &stru_1000C6FF0.type;
        goto LABEL_7;
      }

LABEL_24:

      v21 = v87;
    }

    v47 = *v89;
    v48 = v70;
    v49 = v92;
    (*v89)(v70, v92, v8);
    v50 = v90;
    sub_100050FAC(v90, v48);
    v51 = *v91;
    (*v91)(v50, v8);
    v52 = v84;
    v47(v84, v49, v8);
    v53 = [v21 modelIdentifier];
    v54 = sub_10008DBDC();
    v56 = v55;

    v57 = v72;
    v58 = &v52[*(v72 + 20)];
    *v58 = 0;
    v58[1] = 0;
    v59 = &v52[v57[6]];
    *v59 = v54;
    v59[1] = v56;
    v60 = &v52[v57[7]];
    *v60 = 0;
    v60[1] = 0;
    v61 = &v52[v57[8]];
    *v61 = 0;
    v61[1] = 0;
    v62 = v74;
    v63 = *v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v62 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = sub_10003AF04(0, v63[2] + 1, 1, v63);
      *v74 = v63;
    }

    v66 = v63[2];
    v65 = v63[3];
    v16 = v86;
    v17 = v80;
    if (v66 >= v65 >> 1)
    {
      v63 = sub_10003AF04(v65 > 1, v66 + 1, 1, v63);
      *v74 = v63;
    }

    v63[2] = v66 + 1;
    sub_100052B74(v84, v63 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v66, type metadata accessor for Device);
    v67 = v21;
    v68 = v73;
    sub_10008DD1C();
    if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10008DD5C();
    }

    sub_10008DD6C();
    v51(v92, v8);
    v15 = v81;
    a1 = v82;
    goto LABEL_6;
  }
}

uint64_t sub_100053874()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000538B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000092CC;

  return sub_10004996C(a1, v4, v5, v6);
}

uint64_t sub_100053994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;

  v25 = sub_10008D8AC();
  sub_10008D9FC();
  sub_10008CF9C();
  v6 = v29;
  v23 = v30;
  v24 = v28;
  v7 = v31;
  v21 = v33;
  v22 = v32;
  v8 = sub_10008D5BC();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_10008D5EC();
  sub_100053BDC(v5);
  KeyPath = swift_getKeyPath();
  v27 = v6;
  v26 = v7;
  v11 = sub_10008D86C();
  v12 = swift_getKeyPath();
  v13 = sub_10008D53C();
  v27 = 1;
  v14 = a1 + *(sub_100009C08(&qword_1000CCCD0, &unk_1000948B0) + 36);
  sub_10008D9CC();
  v15 = sub_10008D53C();
  *(v14 + *(sub_100009C08(&qword_1000CCCD8, &unk_100096960) + 36)) = v15;
  v16 = v24;
  *a1 = v25;
  *(a1 + 8) = v16;
  *(a1 + 16) = v6;
  v17 = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v7;
  v18 = v21;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v9;
  *(a1 + 72) = v12;
  *(a1 + 80) = v11;
  *(a1 + 88) = v13;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  result = sub_100009C08(&qword_1000CCCE0, &qword_1000948C0);
  *(a1 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100053BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_100053994(a1);
}

uint64_t sub_100053BDC(uint64_t a1)
{
  v2 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100053C58()
{
  result = qword_1000CCCE8;
  if (!qword_1000CCCE8)
  {
    sub_100007108(&qword_1000CCCE0, &qword_1000948C0);
    sub_100053D10();
    sub_10001121C(&qword_1000CCD50, &qword_1000CCD58, &unk_1000948F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCE8);
  }

  return result;
}

unint64_t sub_100053D10()
{
  result = qword_1000CCCF0;
  if (!qword_1000CCCF0)
  {
    sub_100007108(&qword_1000CCCD0, &unk_1000948B0);
    sub_100053DC8();
    sub_10001121C(&qword_1000CCD48, &qword_1000CCCD8, &unk_100096960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCF0);
  }

  return result;
}

unint64_t sub_100053DC8()
{
  result = qword_1000CCCF8;
  if (!qword_1000CCCF8)
  {
    sub_100007108(&qword_1000CCD00, &qword_1000948C8);
    sub_100053E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCCF8);
  }

  return result;
}

unint64_t sub_100053E54()
{
  result = qword_1000CCD08;
  if (!qword_1000CCD08)
  {
    sub_100007108(&qword_1000CCD10, &qword_1000948D0);
    sub_100053F0C();
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD08);
  }

  return result;
}

unint64_t sub_100053F0C()
{
  result = qword_1000CCD18;
  if (!qword_1000CCD18)
  {
    sub_100007108(&qword_1000CCD20, &qword_1000948D8);
    sub_100053FC4();
    sub_10001121C(&qword_1000CCD38, &qword_1000CCD40, &unk_1000948E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD18);
  }

  return result;
}

unint64_t sub_100053FC4()
{
  result = qword_1000CCD28;
  if (!qword_1000CCD28)
  {
    sub_100007108(&qword_1000CCD30, &qword_1000948E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD28);
  }

  return result;
}

unint64_t sub_10005405C()
{
  result = qword_1000CCD60;
  if (!qword_1000CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCD60);
  }

  return result;
}

uint64_t sub_1000540D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100054148()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension45FakeDeviceDiscoveryPrerequisiteStatusProvider__prerequisiteStatus;
  v2 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeDeviceDiscoveryPrerequisiteStatusProvider()
{
  result = qword_1000CCE50;
  if (!qword_1000CCE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100054244()
{
  sub_1000542D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000542D4()
{
  if (!qword_1000CCE60)
  {
    sub_100007108(&qword_1000CCC48, &unk_100094740);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CCE60);
    }
  }
}

uint64_t sub_100054338()
{
  v1 = sub_100009C08(&qword_1000CCF18, &qword_100094A18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&unk_1000CD810, &qword_100094A20);
  sub_10008CD8C();
  swift_endAccess();
  sub_100054468();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

unint64_t sub_100054468()
{
  result = qword_1000CCF20;
  if (!qword_1000CCF20)
  {
    sub_100007108(&qword_1000CCF18, &qword_100094A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCF20);
  }

  return result;
}

uint64_t sub_1000544CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100054550(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000545F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (v10 == 2)
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v10 = sub_10008DC3C();
      *(&v10 + 1) = v8;
      sub_100019E50();
      sub_10008D68C();
    }

    result = sub_10008D3DC();
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 32) = v12;
  }

  else
  {
    type metadata accessor for SettingsViewModel();
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_100054824()
{
  result = qword_1000CCF28;
  if (!qword_1000CCF28)
  {
    sub_100007108(&qword_1000CCF30, &unk_100094B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCF28);
  }

  return result;
}

uint64_t sub_1000548BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100054990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CB0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ErrorInfo()
{
  result = qword_1000CCF90;
  if (!qword_1000CCF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054A98()
{
  result = sub_10008CB0C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100054B14(uint64_t a1@<X8>)
{
  v12 = sub_10008C8DC();
  v2 = [v12 domain];
  v3 = sub_10008DBDC();
  v5 = v4;

  if (sub_10008DBDC() == v3 && v6 == v5)
  {

LABEL_8:

    sub_100054E88(v12, a1);
    goto LABEL_9;
  }

  v8 = sub_10008E18C();

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = v3 == 0xD000000000000011 && 0x800000010009ABF0 == v5;
  if (v9 || (sub_10008E18C() & 1) != 0)
  {

    sub_1000559DC(v12, a1);
    goto LABEL_9;
  }

  if (v3 == 0xD000000000000010 && 0x800000010009AC10 == v5)
  {

LABEL_22:
    sub_100055E48(v12, a1);
    goto LABEL_9;
  }

  v10 = sub_10008E18C();

  if (v10)
  {
    goto LABEL_22;
  }

  v11 = type metadata accessor for ErrorInfo();
  (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
LABEL_9:
}

uint64_t sub_100054CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10008CB2C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10008DBBC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v6 = sub_10008DC3C();
  v8 = v7;
  sub_10008DB5C();
  sub_10008CB1C();
  v9 = sub_10008DC3C();
  v11 = v10;
  v12 = type metadata accessor for ErrorInfo();
  v13 = (a1 + *(v12 + 20));
  *v13 = v6;
  v13[1] = v8;
  v14 = (a1 + *(v12 + 24));
  *v14 = v9;
  v14[1] = v11;
  return sub_10008CAFC();
}

uint64_t sub_100054E88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for ErrorInfo();
  v92 = *(v3 - 8);
  v4 = *(v92 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v90 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v90 - v12;
  __chkstk_darwin(v11);
  v15 = &v90 - v14;
  v16 = sub_10008CB2C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10008DBBC();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = [a1 userInfo];
  v21 = sub_10008DB1C();

  v22 = [a1 code];
  if (v22 > 75)
  {
    if (v22 != 76)
    {
      if (v22 != 77)
      {
        goto LABEL_24;
      }

      sub_10008DB5C();
      sub_10008CB1C();
      v36 = sub_10008DC3C();
      v38 = v37;
      sub_10008DB5C();
      sub_10008CB1C();
      v90 = sub_10008DC3C();
      sub_10008DB5C();
      sub_10008CB1C();
      v39 = sub_10008DC3C();
      v41 = v40;
      v42 = sub_10008DBDC();
      v44 = &v7[*(v3 + 20)];
      *v44 = v36;
      v44[1] = v38;
      if (*(v21 + 16))
      {
        v45 = sub_10000A1A8(v42, v43);
        v47 = v46;

        if (v47)
        {
          sub_10000B998(*(v21 + 56) + 32 * v45, v95);

          if (swift_dynamicCast())
          {

            v48 = v93;
            v49 = v94;
            sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_10008F280;
            *(v50 + 56) = &type metadata for String;
            *(v50 + 64) = sub_1000567CC();
            *(v50 + 32) = v48;
            *(v50 + 40) = v49;
            v39 = sub_10008DC0C();
            v41 = v51;
          }

          goto LABEL_34;
        }
      }

      else
      {
      }

LABEL_34:

      v65 = v91;
      v89 = &v7[*(v3 + 24)];
      *v89 = v39;
      v89[1] = v41;
      sub_10008CAFC();
      v67 = v7;
      goto LABEL_35;
    }

    sub_10008DB5C();
    sub_10008CB1C();
    v68 = sub_10008DC3C();
    v70 = v69;
    sub_10008DB5C();
    sub_10008CB1C();
    v90 = sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v71 = sub_10008DC3C();
    v73 = v72;
    v74 = sub_10008DBDC();
    v76 = &v10[*(v3 + 20)];
    *v76 = v68;
    v76[1] = v70;
    if (*(v21 + 16))
    {
      v77 = sub_10000A1A8(v74, v75);
      v79 = v78;

      if (v79)
      {
        sub_10000B998(*(v21 + 56) + 32 * v77, v95);

        if (swift_dynamicCast())
        {

          v80 = v93;
          v81 = v94;
          sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_10008F280;
          *(v82 + 56) = &type metadata for String;
          *(v82 + 64) = sub_1000567CC();
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          v71 = sub_10008DC0C();
          v73 = v83;
        }

        goto LABEL_32;
      }
    }

    else
    {
    }

LABEL_32:

    v65 = v91;
    v88 = &v10[*(v3 + 24)];
    *v88 = v71;
    v88[1] = v73;
    sub_10008CAFC();
    v67 = v10;
LABEL_35:
    sub_10003963C(v67, v65);
    return (*(v92 + 56))(v65, 0, 1, v3);
  }

  if ((v22 - 71) < 2)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v23 = sub_10008DC3C();
    v25 = v24;
    sub_10008DB5C();
    sub_10008CB1C();
    sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v26 = sub_10008DC3C();
    v28 = v27;
    v29 = &v13[*(v3 + 20)];
    *v29 = v23;
    v29[1] = v25;
    if (*(v21 + 16) && (v30 = sub_10000A1A8(0xD00000000000002CLL, 0x800000010009B0B0), (v31 & 1) != 0))
    {
      sub_10000B998(*(v21 + 56) + 32 * v30, v95);

      if (swift_dynamicCast())
      {

        v32 = v93;
        v33 = v94;
        sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_10008F280;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_1000567CC();
        *(v34 + 32) = v32;
        *(v34 + 40) = v33;
        v26 = sub_10008DC0C();
        v28 = v35;
      }
    }

    else
    {
    }

    v65 = v91;
    v66 = &v13[*(v3 + 24)];
    *v66 = v26;
    v66[1] = v28;
    sub_10008CAFC();
    v67 = v13;
    goto LABEL_35;
  }

  if (v22 == 70)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v52 = sub_10008DC3C();
    v54 = v53;
    sub_10008DB5C();
    sub_10008CB1C();
    sub_10008DC3C();
    sub_10008DB5C();
    sub_10008CB1C();
    v55 = sub_10008DC3C();
    v57 = v56;
    v58 = &v15[*(v3 + 20)];
    *v58 = v52;
    v58[1] = v54;
    if (*(v21 + 16) && (v59 = sub_10000A1A8(0xD00000000000002CLL, 0x800000010009B0B0), (v60 & 1) != 0))
    {
      sub_10000B998(*(v21 + 56) + 32 * v59, v95);

      if (swift_dynamicCast())
      {

        v61 = v93;
        v62 = v94;
        sub_100009C08(&qword_1000CCFD0, &qword_100094BA8);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_10008F280;
        *(v63 + 56) = &type metadata for String;
        *(v63 + 64) = sub_1000567CC();
        *(v63 + 32) = v61;
        *(v63 + 40) = v62;
        v55 = sub_10008DC0C();
        v57 = v64;
      }
    }

    else
    {
    }

    v65 = v91;
    v87 = &v15[*(v3 + 24)];
    *v87 = v55;
    v87[1] = v57;
    sub_10008CAFC();
    v67 = v15;
    goto LABEL_35;
  }

LABEL_24:

  v84 = v91;
  v85 = *(v92 + 56);

  return v85(v84, 1, 1, v3);
}

uint64_t sub_1000559DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100056820([a1 code]);
  if (v8 > 5)
  {
    if (v8 == 6 || v8 == 7)
    {
      goto LABEL_10;
    }
  }

  else if (!v8 || v8 == 5)
  {
LABEL_10:
    sub_10008DB5C();
    sub_10008CB1C();
    v12 = sub_10008DC3C();
    v14 = v13;
    sub_10008DB5C();
    sub_10008CB1C();
    v15 = sub_10008DC3C();
    v17 = v16;
    v18 = type metadata accessor for ErrorInfo();
    v19 = (a2 + *(v18 + 20));
    *v19 = v12;
    v19[1] = v14;
    v20 = (a2 + *(v18 + 24));
    *v20 = v15;
    v20[1] = v17;
    sub_10008CAFC();
    return (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
  }

  v9 = type metadata accessor for ErrorInfo();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, 1, 1, v9);
}

uint64_t sub_100055E48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = [a1 code];
  if ((v8 - 1) < 2 || v8 == 3)
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v9 = sub_10008DC3C();
    v11 = v10;
    sub_10008DB5C();
    sub_10008CB1C();
    v12 = sub_10008DC3C();
    v14 = v13;
    v15 = type metadata accessor for ErrorInfo();
    v16 = (a2 + *(v15 + 20));
    *v16 = v9;
    v16[1] = v11;
    v17 = (a2 + *(v15 + 24));
    *v17 = v12;
    v17[1] = v14;
    sub_10008CAFC();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v19 = type metadata accessor for ErrorInfo();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t sub_100056150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo();
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

uint64_t sub_10005637C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo();
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

uint64_t sub_10005659C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v8 = sub_10008DC3C();
  v10 = v9;
  sub_10008DB5C();
  sub_10008CB1C();
  v12 = sub_10008DC3C();
  v23 = v12;
  v24 = v11;
  if (a1)
  {
    v13 = sub_10008C8DC();
    v14 = [v13 localizedDescription];
    v15 = sub_10008DBDC();
    v17 = v16;

    v25._countAndFlagsBits = v15;
    v25._object = v17;
    sub_10008DCBC(v25);

    v26._countAndFlagsBits = 2570;
    v26._object = 0xE200000000000000;
    sub_10008DCBC(v26);

    v12 = v23;
    v18 = v24;
  }

  else
  {
    v18 = v11;
  }

  v19 = type metadata accessor for ErrorInfo();
  v20 = (a2 + *(v19 + 20));
  *v20 = v8;
  v20[1] = v10;
  v21 = (a2 + *(v19 + 24));
  *v21 = v12;
  v21[1] = v18;
  return sub_10008CAFC();
}

unint64_t sub_1000567CC()
{
  result = qword_1000CCFD8;
  if (!qword_1000CCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CCFD8);
  }

  return result;
}

uint64_t sub_100056820(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_10005685C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v40 = &v38 - v7;
  v41 = sub_100009C08(&qword_1000CD170, &qword_100094D20);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v41);
  v10 = &v38 - v9;
  v11 = sub_100009C08(&qword_1000CD178, &qword_100094D28);
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  *(v3 + 64) = 0;
  v20 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSigninInProgress;
  LOBYTE(v45) = 0;
  sub_10008CD7C();
  v21 = *(v16 + 32);
  v21(v3 + v20, v19, v15);
  v22 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSignedIn;
  LOBYTE(v45) = 0;
  sub_10008CD7C();
  v21(v3 + v22, v19, v15);
  v23 = v38;
  sub_10000BE8C(a1, v3 + 16);
  *(v3 + 56) = v23;
  v24 = a1[3];
  v25 = a1[4];
  sub_10000BB24(a1, v24);
  v26 = *(v25 + 16);

  v26(&v45, v24, v25);
  v27 = v46;
  if (v46)
  {
    sub_10000C3F8(&v45, &unk_1000C90E8, &qword_10008F350);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v44) = v27 != 0;

  sub_10008CDBC();
  v28 = a1[3];
  v29 = a1[4];
  sub_10000BB24(a1, v28);
  v44 = (*(v29 + 24))(v28, v29);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30);
  sub_10008CDEC();

  sub_1000167AC();
  v30 = sub_10008DE7C();
  v44 = v30;
  v31 = sub_10008DE6C();
  v32 = v40;
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  sub_10001121C(&qword_1000CD188, &qword_1000CD170, &qword_100094D20);
  sub_1000590C8();
  v33 = v41;
  sub_10008CE0C();
  sub_10000C3F8(v32, &qword_1000C9E10, &qword_10008FEF0);

  (*(v39 + 8))(v10, v33);
  swift_getKeyPath();
  v44 = v3;
  sub_10001121C(&qword_1000CD190, &qword_1000CD178, &qword_100094D28);
  v34 = v43;
  v35 = sub_10008CE2C();

  (*(v42 + 8))(v14, v34);
  v36 = *(v3 + 64);
  *(v3 + 64) = v35;

  sub_10000BC74(a1);
  return v3;
}

uint64_t sub_100056E14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100056E94(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_100056F08(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_10008DDBC();
  v2[27] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[28] = v4;
  v2[29] = v3;

  return _swift_task_switch(sub_100056FA0, v4, v3);
}

uint64_t sub_100056FA0()
{
  v70 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 336) = 1;

  sub_10008CDBC();
  v3 = sub_10008DBDC();
  if (!*(v2 + 16))
  {

LABEL_16:
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v39 = sub_10008CCDC();
    sub_100009F94(v39, qword_1000D6D38);
    v40 = sub_10008CCBC();
    v41 = sub_10008DE2C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v69);
      _os_log_impl(&_mh_execute_header, v40, v41, "%s called without IDMS Tokens", v42, 0xCu);
      sub_10000BC74(v43);
    }

    v44 = swift_task_alloc();
    *(v0 + 304) = v44;
    *v44 = v0;
    v44[1] = sub_100057EA0;
    v45 = *(v0 + 208);
    v46 = 1;
    goto LABEL_21;
  }

  v5 = *(v0 + 200);
  v6 = sub_10000A1A8(v3, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(v0 + 200);
  sub_10000B998(*(v9 + 56) + 32 * v6, v0 + 56);
  sub_100009C08(&qword_1000CD168, &unk_100094CB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(v0 + 184);
  if (!*(v10 + 16) || (v11 = sub_10000A1A8(0xD00000000000001ELL, 0x8000000100097DB0), (v12 & 1) == 0))
  {

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v47 = sub_10008CCDC();
    sub_100009F94(v47, qword_1000D6D38);
    v48 = sub_10008CCBC();
    v49 = sub_10008DE2C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v69 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v69);
      _os_log_impl(&_mh_execute_header, v48, v49, "%s Grand Slam token missing for Configurator service identifier", v50, 0xCu);
      sub_10000BC74(v51);
    }

    v52 = swift_task_alloc();
    *(v0 + 296) = v52;
    *v52 = v0;
    v52[1] = sub_100057D80;
    v53 = *(v0 + 208);
    v46 = 2;
    goto LABEL_21;
  }

  v13 = (*(v10 + 56) + 16 * v11);
  v15 = *v13;
  v14 = v13[1];
  *(v0 + 240) = v14;

  v16 = sub_10008DBDC();
  if (!*(v2 + 16))
  {

LABEL_31:

    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v54 = sub_10008CCDC();
    sub_100009F94(v54, qword_1000D6D38);
    v55 = sub_10008CCBC();
    v56 = sub_10008DE2C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v69 = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v69);
      _os_log_impl(&_mh_execute_header, v55, v56, "%s Username missing", v57, 0xCu);
      sub_10000BC74(v58);
    }

    v59 = swift_task_alloc();
    *(v0 + 288) = v59;
    *v59 = v0;
    v59[1] = sub_100057C60;
    v60 = *(v0 + 208);
    v46 = 3;
    goto LABEL_21;
  }

  v18 = *(v0 + 200);
  v19 = sub_10000A1A8(v16, v17);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_10000B998(*(v9 + 56) + 32 * v19, v0 + 88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  *(v0 + 248) = v22;
  v24 = sub_10008DBDC();
  if (*(v2 + 16))
  {
    v26 = *(v0 + 200);
    v27 = sub_10000A1A8(v24, v25);
    v29 = v28;

    if (v29)
    {
      sub_10000B998(*(v9 + 56) + 32 * v27, v0 + 120);
      if (swift_dynamicCast())
      {
        v30 = *(v0 + 208);
        v31 = *(v0 + 168);
        v32 = *(v0 + 176);
        *(v0 + 256) = v32;
        sub_10000BE8C(v30 + 16, v0 + 16);
        v33 = *(v0 + 40);
        v34 = *(v0 + 48);
        sub_10000BB24((v0 + 16), v33);
        v35 = *(v34 + 8);
        v68 = (v35 + *v35);
        v36 = v35[1];
        v37 = swift_task_alloc();
        *(v0 + 264) = v37;
        *v37 = v0;
        v37[1] = sub_1000578F8;

        return v68(v23, v22, v31, v32, v15, v14, v33, v34);
      }
    }
  }

  else
  {
  }

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v61 = sub_10008CCDC();
  sub_100009F94(v61, qword_1000D6D38);
  v62 = sub_10008CCBC();
  v63 = sub_10008DE2C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v69 = v65;
    *v64 = 136315138;
    *(v64 + 4) = sub_10000A2D8(0xD000000000000013, 0x800000010009BB80, &v69);
    _os_log_impl(&_mh_execute_header, v62, v63, "%s AltDSID missing", v64, 0xCu);
    sub_10000BC74(v65);
  }

  v66 = swift_task_alloc();
  *(v0 + 280) = v66;
  *v66 = v0;
  v66[1] = sub_100057B40;
  v67 = *(v0 + 208);
  v46 = 4;
LABEL_21:

  return sub_100058AE8(v46);
}

uint64_t sub_1000578F8()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v5 = *(*v1 + 248);
  v6 = *(*v1 + 240);
  v7 = *v1;
  *(*v1 + 272) = v0;

  v8 = *(v2 + 232);
  v9 = *(v2 + 224);
  if (v0)
  {
    v10 = sub_100058020;
  }

  else
  {
    v10 = sub_100057A90;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100057A90()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  sub_10000BC74((v0 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 338) = 0;

  sub_10008CDBC();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100057B40()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v4, v3);
}

uint64_t sub_100057C60()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v4, v3);
}

uint64_t sub_100057D80()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100059128, v4, v3);
}

uint64_t sub_100057EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100057FC0, v4, v3);
}

uint64_t sub_100057FC0()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100058020()
{
  v1 = *(v0 + 272);
  sub_10000BC74((v0 + 16));
  *(v0 + 192) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v6 = *(v0 + 192);

    v7 = swift_task_alloc();
    *(v0 + 328) = v7;
    *v7 = v0;
    v7[1] = sub_100058474;
    v8 = *(v0 + 208);
    v5 = 0;
    goto LABEL_6;
  }

  if (*(v0 + 337))
  {
    if (*(v0 + 337) == 1)
    {
      v2 = *(v0 + 272);

      v3 = swift_task_alloc();
      *(v0 + 312) = v3;
      *v3 = v0;
      v3[1] = sub_1000581CC;
      v4 = *(v0 + 208);
      v5 = 6;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = *(v0 + 272);

  v11 = swift_task_alloc();
  *(v0 + 320) = v11;
  *v11 = v0;
  v11[1] = sub_100058354;
  v12 = *(v0 + 208);
  v5 = 7;
LABEL_6:

  return sub_100058AE8(v5);
}

uint64_t sub_1000581CC()
{
  v1 = *v0;
  v2 = *(*v0 + 312);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_1000582EC, v4, v3);
}

uint64_t sub_1000582EC()
{
  v1 = v0[27];

  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100058354()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100059120, v4, v3);
}

uint64_t sub_100058474()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v6 = *v0;

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100058594, v4, v3);
}

uint64_t sub_100058594()
{
  v1 = v0[34];
  v2 = v0[27];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100058600(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10008DDBC();
  v2[4] = sub_10008DDAC();
  v4 = sub_10008DD8C();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100058698, v4, v3);
}

uint64_t sub_100058698()
{
  v1 = v0[2];
  v2 = sub_10008C8DC();
  v0[7] = v2;
  v3 = [v2 domain];
  v4 = sub_10008DBDC();
  v6 = v5;

  if (v4 == sub_10008DBDC() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_10008E18C();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v2 code] == -7006)
  {
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_10005883C;
    v11 = v0[3];
    v12 = 5;
    goto LABEL_11;
  }

LABEL_10:
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1000589C8;
  v14 = v0[3];
  v12 = 0;
LABEL_11:

  return sub_100058AE8(v12);
}

uint64_t sub_10005883C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10005895C, v4, v3);
}

uint64_t sub_10005895C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000589C8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_100059124, v4, v3);
}

uint64_t sub_100058AE8(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 65) = a1;
  sub_10008DDBC();
  *(v2 + 24) = sub_10008DDAC();
  v4 = sub_10008DD8C();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return _swift_task_switch(sub_100058B84, v4, v3);
}

uint64_t sub_100058B84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 65);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;

  sub_10008CDBC();
  v3 = objc_allocWithZone(NSError);
  v4 = sub_10008DBCC();
  v5 = [v3 initWithDomain:v4 code:v2 + 1 userInfo:0];
  *(v0 + 48) = v5;

  v6 = *(v1 + 56);
  v7 = v5;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_100058CD4;

  return sub_100038FC4(v5);
}

uint64_t sub_100058CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return _swift_task_switch(sub_100058E14, v5, v4);
}

uint64_t sub_100058E14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100058E80()
{
  sub_10000BC74(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSigninInProgress;
  v4 = sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15SignInViewModel__isSignedIn, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignInViewModel()
{
  result = qword_1000CD018;
  if (!qword_1000CD018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058FC4()
{
  sub_100031118();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100059078@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SignInViewModel();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

unint64_t sub_1000590C8()
{
  result = qword_1000C9E40;
  if (!qword_1000C9E40)
  {
    sub_1000167AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9E40);
  }

  return result;
}

uint64_t sub_10005912C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000591A0()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension22FakeNetworkInfoStorage__networkInfo;
  v2 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FakeNetworkInfoStorage()
{
  result = qword_1000CD1C8;
  if (!qword_1000CD1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059278()
{
  sub_100033D60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100059334()
{
  v1 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1000593E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_100059408, v2, 0);
}

uint64_t sub_100059408()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v3;
  v0[3] = v1;

  sub_10002D95C(v3, v1);
  sub_10008CDBC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000594D0()
{
  v0 = sub_100009C08(&qword_1000CB2D8, &qword_100092A70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  sub_10008CD8C();
  swift_endAccess();
  sub_10003478C();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1000595FC(uint64_t a1)
{
  result = sub_100059624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100059624()
{
  result = qword_1000CD288;
  if (!qword_1000CD288)
  {
    type metadata accessor for FakeNetworkInfoStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD288);
  }

  return result;
}

double sub_10005967C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100059700(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10002D95C(v2, v3);

  return sub_10008CDBC();
}

uint64_t sub_10005978C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000597D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100059828()
{
  result = qword_1000CD290;
  if (!qword_1000CD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD290);
  }

  return result;
}

id sub_10005987C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(UIActivityViewController);
  isa = sub_10008DD2C().super.isa;
  v9 = [v7 initWithActivityItems:isa applicationActivities:0];

  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v13[4] = sub_100059C10;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000599C0;
  v13[3] = &unk_1000C1480;
  v11 = _Block_copy(v13);

  [v9 setCompletionWithItemsHandler:v11];
  _Block_release(v11);
  return v9;
}

uint64_t sub_1000599C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a4)
  {
    v10 = sub_10008DD3C();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a5;
  v9(a2, a3, v10, a5);
}

uint64_t sub_100059A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100059B7C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100059AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100059B7C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100059B54()
{
  sub_100059B7C();
  sub_10008D4EC();
  __break(1u);
}

unint64_t sub_100059B7C()
{
  result = qword_1000CD298;
  if (!qword_1000CD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD298);
  }

  return result;
}

uint64_t sub_100059BD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100059C10(uint64_t result, char a2)
{
  if (!result || (a2 & 1) != 0)
  {
    v3 = *(v2 + 32);
    return (*(v2 + 24))();
  }

  return result;
}

uint64_t sub_100059C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100059C90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = type metadata accessor for AddDevicesExtensionContainerViewModel();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = swift_unknownObjectRetain();
  sub_1000312A4(v9, v4);
  swift_unknownObjectRelease();
  sub_100059D20();
  result = sub_10008D05C();
  *a1 = result;
  a1[1] = v11;
  return result;
}

unint64_t sub_100059D20()
{
  result = qword_1000CD6B0;
  if (!qword_1000CD6B0)
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD6B0);
  }

  return result;
}

unint64_t sub_100059D7C()
{
  result = qword_1000CD2A0;
  if (!qword_1000CD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD2A0);
  }

  return result;
}

uint64_t sub_100059DF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_100059E5C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_100059E90()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_100059EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100059FD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ManualPinEntryView()
{
  result = qword_1000CD4F0;
  if (!qword_1000CD4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005A0E8()
{
  sub_1000175A8();
  if (v0 <= 0x3F)
  {
    sub_10005A1DC();
    if (v1 <= 0x3F)
    {
      sub_10005A2F0(319, &qword_1000CD510);
      if (v2 <= 0x3F)
      {
        sub_10005A298();
        if (v3 <= 0x3F)
        {
          sub_10005A2F0(319, &unk_1000CD520);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005A1DC()
{
  if (!qword_1000CD500)
  {
    type metadata accessor for VisualPinScannerViewModel();
    sub_10005A240();
    v0 = sub_10008D16C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD500);
    }
  }
}

unint64_t sub_10005A240()
{
  result = qword_1000CD508;
  if (!qword_1000CD508)
  {
    type metadata accessor for VisualPinScannerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD508);
  }

  return result;
}

void sub_10005A298()
{
  if (!qword_1000CD518)
  {
    v0 = sub_10008CF4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD518);
    }
  }
}

void sub_10005A2F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_10008D8FC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10005A358(uint64_t a1)
{
  v2 = sub_10008D09C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008D1DC();
}

uint64_t sub_10005A420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10008D29C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000C314(v2, &v17 - v11, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008CFDC();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10008DE3C();
    v16 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10005A620@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for ManualPinEntryView() + 28));
  v7 = *v3;
  v8 = *(v3 + 2);
  sub_100009C08(&qword_1000CD630, &qword_100095228);
  result = sub_10008D8CC();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10005A69C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10008CFDC();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = type metadata accessor for ManualPinEntryView();
  v12 = (a4 + v11[7]);
  v14 = v12[1];
  v15 = v12[2];
  v32 = *v12;
  v13 = v32;
  v33 = v14;
  v34 = v15;
  v37 = v10;
  v38 = v9;

  sub_100009C08(&qword_1000CD630, &qword_100095228);
  sub_10008D8DC();
  v32 = v13;
  v33 = v14;
  v34 = v15;
  sub_10008D8CC();
  v16 = sub_10008DC9C();

  if (v16 == *(a4 + v11[6]))
  {
    v18 = (a4 + v11[9]);
    v19 = *v18;
    v20 = *(v18 + 1);
    LOBYTE(v32) = *v18;
    v33 = v20;
    sub_100009C08(&qword_1000CDB30, &qword_100095230);
    result = sub_10008D8CC();
    if ((v37 & 1) == 0)
    {
      LOBYTE(v32) = v19;
      v33 = v20;
      LOBYTE(v37) = 1;
      sub_10008D8DC();
      v21 = v29;
      sub_10005A420(v29);
      sub_10008CFCC();
      (*(v30 + 8))(v21, v31);
      v22 = (a4 + v11[5]);
      v23 = *v22;
      if (*v22)
      {
        v32 = v13;
        v33 = v14;
        v34 = v15;

        sub_10008D8CC();
        v24 = v37;
        v25 = v38;
        sub_10000BE8C(v23 + 16, &v32);
        v26 = v35;
        v27 = v36;
        sub_10000BB24(&v32, v35);
        (*(v27 + 40))(v24, v25, v26, v27);

        return sub_10000BC74(&v32);
      }

      else
      {
        v28 = v22[1];
        type metadata accessor for VisualPinScannerViewModel();
        sub_10005A240();
        result = sub_10008D13C();
        __break(1u);
      }
    }
  }

  return result;
}

__n128 sub_10005A948@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44[-v8];
  v10 = (a2 + *(type metadata accessor for ManualPinEntryView() + 28));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  *&v57 = *v10;
  *(&v57 + 1) = v12;
  v58.n128_u64[0] = v13;
  sub_100009C08(&qword_1000CD630, &qword_100095228);
  sub_10008D8CC();
  v14 = sub_10008DC9C();

  if (v14 <= a1)
  {
    v32 = sub_10008D8AC();
    sub_10008D5CC();
    v33 = enum case for Font.Design.default(_:);
    v34 = sub_10008D5BC();
    v35 = *(v34 - 8);
    (*(v35 + 104))(v9, v33, v34);
    (*(v35 + 56))(v9, 0, 1, v34);
    v36 = sub_10008D5EC();
    sub_10000C3F8(v9, &qword_1000CB730, &qword_100095280);
    KeyPath = swift_getKeyPath();
    sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100091E50;
    v39 = sub_10008D54C();
    *(inited + 32) = v39;
    v40 = sub_10008D55C();
    *(inited + 33) = v40;
    v41 = sub_10008D57C();
    sub_10008D57C();
    if (sub_10008D57C() != v39)
    {
      v41 = sub_10008D57C();
    }

    sub_10008D57C();
    if (sub_10008D57C() != v40)
    {
      v41 = sub_10008D57C();
    }

    LOBYTE(v45) = 1;
    v48[0] = 1;
    v50 = v32;
    v51 = KeyPath;
    v52 = v36;
    LOBYTE(v53) = v41;
    v54 = 0u;
    v55 = 0u;
    v56 = 257;
  }

  else
  {
    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();
    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();

    sub_10008DCAC();

    *&v57 = v11;
    *(&v57 + 1) = v12;
    v58.n128_u64[0] = v13;
    sub_10008D8CC();
    v15 = sub_10008DCEC();
    v17 = v16;

    *&v57 = v15;
    *(&v57 + 1) = v17;
    sub_100019E50();
    v18 = sub_10008D68C();
    v20 = v19;
    v22 = v21;
    v23 = enum case for Font.Design.default(_:);
    v24 = sub_10008D5BC();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v9, v23, v24);
    (*(v25 + 56))(v9, 0, 1, v24);
    sub_10008D5EC();
    sub_10000C3F8(v9, &qword_1000CB730, &qword_100095280);
    v26 = sub_10008D67C();
    v28 = v27;
    LOBYTE(v25) = v29;
    v31 = v30;

    sub_10001CD48(v18, v20, v22 & 1);

    v49 = v25 & 1;
    v44[15] = 0;
    v50 = v26;
    v51 = v28;
    LOBYTE(v52) = v25 & 1;
    *(&v52 + 1) = *v48;
    HIDWORD(v52) = *&v48[3];
    v53 = v31;
    v54 = v45;
    v55 = v46;
    v56 = v47;
  }

  sub_100009C08(&qword_1000CD660, &qword_1000952B8);
  sub_10005D830(&qword_1000CD668, &qword_1000CD660, &qword_1000952B8, sub_10005D8B4);
  sub_10008D3DC();
  v42 = v60;
  *(a3 + 32) = v59;
  *(a3 + 48) = v42;
  *(a3 + 64) = v61;
  result = v58;
  *a3 = v57;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_10005AED4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v91 = a2;
  v85 = sub_100009C08(&qword_1000CD5B8, &qword_1000951A8);
  v81 = *(v85 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v85);
  v79 = v77 - v4;
  v88 = sub_100009C08(&qword_1000CD5C0, &qword_1000951B0);
  v87 = *(v88 - 8);
  v5 = *(v87 + 64);
  __chkstk_darwin(v88);
  v84 = v77 - v6;
  v86 = sub_100009C08(&qword_1000CD5C8, &qword_1000951B8);
  v7 = *(*(v86 - 8) + 64);
  v8 = __chkstk_darwin(v86);
  v90 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = v77 - v10;
  v78 = type metadata accessor for ManualPinEntryView();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v78);
  v77[3] = v13;
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100009C08(&qword_1000CD5D0, &qword_1000951C0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = v77 - v18;
  v20 = sub_100009C08(&qword_1000CD5D8, &qword_1000951C8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v77 - v22;
  v83 = sub_100009C08(&qword_1000CD5E0, &qword_1000951D0);
  v82 = *(v83 - 8);
  v24 = *(v82 + 64);
  v25 = __chkstk_darwin(v83);
  v80 = v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v92 = v77 - v27;
  *v19 = sub_10008D2BC();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v28 = sub_100009C08(&qword_1000CD5E8, &qword_1000951D8);
  sub_10005B8FC(a1, &v19[*(v28 + 44)]);
  KeyPath = swift_getKeyPath();
  v30 = &v19[*(v16 + 44)];
  v31 = *(sub_100009C08(&qword_1000CD5F0, &qword_100095210) + 28);
  v32 = enum case for LayoutDirection.leftToRight(_:);
  v33 = sub_10008D09C();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = KeyPath;
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  LOBYTE(v31) = sub_10008D54C();
  *(inited + 32) = v31;
  v35 = sub_10008D55C();
  *(inited + 33) = v35;
  v36 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v31)
  {
    v36 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v35)
  {
    v36 = sub_10008D57C();
  }

  sub_10008CF0C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_10005D1A8(v19, v23);
  v45 = &v23[*(v20 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  sub_10005D014(a1, v14);
  v46 = *(v11 + 80);
  v47 = swift_allocObject();
  sub_10005D07C(v14, v47 + ((v46 + 16) & ~v46));
  sub_10005D830(&qword_1000CD5F8, &qword_1000CD5D8, &qword_1000951C8, sub_10005D270);
  sub_10008D6FC();

  sub_10000C3F8(v23, &qword_1000CD5D8, &qword_1000951C8);
  v77[2] = sub_10008D2CC();
  v77[1] = v48;
  v77[0] = v49;
  sub_10005D014(a1, v14);
  sub_10008DDBC();
  v50 = sub_10008DDAC();
  v51 = a1;
  v52 = (v46 + 32) & ~v46;
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = &protocol witness table for MainActor;
  sub_10005D07C(v14, v53 + v52);
  sub_10005D014(v51, v14);
  v54 = sub_10008DDAC();
  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = &protocol witness table for MainActor;
  sub_10005D07C(v14, v55 + v52);
  sub_10008D95C();
  v56 = v79;
  sub_10008DA3C();
  v57 = sub_10001121C(&qword_1000CD620, &qword_1000CD5B8, &qword_1000951A8);
  v58 = v84;
  v59 = v85;
  sub_10008D6EC();
  (*(v81 + 8))(v56, v59);
  v60 = v51 + *(v78 + 32);
  v61 = *v60;
  v62 = *(v60 + 8);
  LOBYTE(v60) = *(v60 + 16);
  LOBYTE(v93) = v61;
  *(&v93 + 1) = v62;
  LOBYTE(v94) = v60;
  sub_100009C08(&qword_1000CD588, &qword_100095138);
  sub_10008CF2C();
  *&v93 = v59;
  *(&v93 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v63 = v89;
  v64 = v88;
  sub_10008D78C();

  (*(v87 + 8))(v58, v64);
  sub_10008D9FC();
  sub_10008CF9C();
  v65 = (v63 + *(v86 + 36));
  v66 = v94;
  *v65 = v93;
  v65[1] = v66;
  v65[2] = v95;
  v67 = v82;
  v68 = *(v82 + 16);
  v69 = v80;
  v70 = v92;
  v71 = v83;
  v68(v80, v92, v83);
  v72 = v90;
  sub_10000C314(v63, v90, &qword_1000CD5C8, &qword_1000951B8);
  v73 = v91;
  v68(v91, v69, v71);
  v74 = sub_100009C08(&qword_1000CD628, &qword_100095220);
  sub_10000C314(v72, &v73[*(v74 + 48)], &qword_1000CD5C8, &qword_1000951B8);
  sub_10000C3F8(v63, &qword_1000CD5C8, &qword_1000951B8);
  v75 = *(v67 + 8);
  v75(v70, v71);
  sub_10000C3F8(v72, &qword_1000CD5C8, &qword_1000951B8);
  return (v75)(v69, v71);
}

uint64_t sub_10005B8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ManualPinEntryView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v52 = v8;
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009C08(&qword_1000CD638, &unk_100095238);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v17 = &v40 - v16;
  result = __chkstk_darwin(v15);
  v53 = &v40 - v21;
  v22 = *(a1 + *(v5 + 32));
  if (v22 < -1)
  {
    __break(1u);
  }

  else
  {
    v46 = v11;
    v47 = result;
    v45 = v17;
    v48 = v20;
    v49 = v19;
    v50 = a2;
    v56 = 0;
    v57 = v22 / 2;
    v43 = v22 / 2;
    KeyPath = swift_getKeyPath();
    v44 = a1;
    sub_10005D014(a1, v9);
    v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v24 = swift_allocObject();
    sub_10005D07C(v9, v24 + v23);
    sub_100009C08(&qword_1000CA058, &qword_100095260);
    sub_100009C08(&qword_1000CD640, &qword_100095268);
    v25 = sub_10001A700();
    sub_10001121C(&qword_1000CD648, &qword_1000CD640, &qword_100095268);
    KeyPath = v25;
    sub_10008D96C();
    sub_10008D9FC();
    result = sub_10008CF9C();
    v64 = 1;
    v63 = v57;
    v62 = v59;
    if ((v22 & 0x8000000000000000) == 0)
    {
      v54 = v43;
      v55 = v22;
      v40 = v56;
      v41 = v58;
      v42 = v60;
      v43 = v61;
      swift_getKeyPath();
      sub_10005D014(v44, v9);
      v26 = swift_allocObject();
      sub_10005D07C(v9, v26 + v23);
      v27 = v45;
      sub_10008D96C();
      v28 = v46;
      v29 = v47;
      v30 = *(v46 + 16);
      v31 = v48;
      v32 = v53;
      v30(v48, v53, v47);
      v33 = v64;
      LODWORD(KeyPath) = v63;
      LODWORD(v52) = v62;
      v34 = v49;
      v30(v49, v27, v29);
      v35 = v50;
      v30(v50, v31, v29);
      v36 = sub_100009C08(&qword_1000CD650, &qword_100095270);
      v37 = v35 + *(v36 + 48);
      *v37 = 0;
      *(v37 + 8) = v33;
      *(v37 + 16) = v40;
      *(v37 + 24) = KeyPath;
      *(v37 + 32) = v41;
      *(v37 + 40) = v52;
      v38 = v43;
      *(v37 + 48) = v42;
      *(v37 + 56) = v38;
      v30(v35 + *(v36 + 64), v34, v29);
      v39 = *(v28 + 8);
      v39(v27, v29);
      v39(v32, v29);
      v39(v34, v29);
      return (v39)(v31, v29);
    }
  }

  __break(1u);
  return result;
}

double sub_10005BE34@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_10008D2EC();
  v18 = 1;
  sub_10005A948(v5, a2, &v12);
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v19 = v12;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v25 = v16;
  v24[0] = v12;
  sub_10000C314(&v19, v11, &qword_1000CD658, &qword_100095278);
  sub_10000C3F8(v24, &qword_1000CD658, &qword_100095278);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *v17;
  *(a3 + 33) = *&v17[16];
  v8 = *&v17[48];
  *(a3 + 49) = *&v17[32];
  *(a3 + 65) = v8;
  result = *&v17[57];
  *(a3 + 74) = *&v17[57];
  v10 = v18;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 17) = v7;
  return result;
}

uint64_t sub_10005BF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ManualPinEntryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_10008D2EC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_100009C08(&qword_1000CD560, &qword_100095108);
  sub_10005C284(v1, a1 + *(v7 + 44));
  v8 = *(sub_100009C08(&qword_1000CD568, &qword_100095110) + 36);
  v9 = enum case for ColorScheme.dark(_:);
  v10 = sub_10008CF5C();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a1 + v8, v9, v10);
  (*(v11 + 56))(a1 + v8, 0, 1, v10);
  LOBYTE(v9) = sub_10008D53C();
  v12 = a1 + *(sub_100009C08(&qword_1000CD570, &unk_100095118) + 36);
  *v12 = v9;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  *(v12 + 40) = 1;
  sub_10005D014(v1, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_10005D07C(v6, v14 + v13);
  v15 = (a1 + *(sub_100009C08(&qword_1000CD578, &qword_100095128) + 36));
  *v15 = sub_10005D9C0;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  sub_10005D014(v1, v6);
  v16 = swift_allocObject();
  sub_10005D07C(v6, v16 + v13);
  v17 = [objc_opt_self() defaultCenter];
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v18 = sub_100009C08(&qword_1000CD580, &qword_100095130);
  v19 = a1 + *(v18 + 52);
  sub_10008DEEC();

  result = swift_allocObject();
  *(result + 16) = sub_10005D9B8;
  *(result + 24) = v16;
  v21 = (a1 + *(v18 + 56));
  *v21 = sub_10005D16C;
  v21[1] = result;
  return result;
}

uint64_t sub_10005C284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v79 = a2;
  v2 = type metadata accessor for ManualPinEntryView();
  v82 = *(v2 - 8);
  v3 = *(v82 + 64);
  __chkstk_darwin(v2 - 8);
  v83 = v4;
  v84 = (&v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_100009C08(&qword_1000CD590, &qword_100095140);
  v86 = *(v98 - 8);
  v5 = *(v86 + 64);
  v6 = __chkstk_darwin(v98);
  v85 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v97 = &v74 - v8;
  v9 = sub_100009C08(&qword_1000CD598, &qword_100095148);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v75 = (&v74 - v11);
  v80 = sub_100009C08(&qword_1000CD5A0, &qword_100095150);
  v12 = *(*(v80 - 8) + 64);
  v13 = __chkstk_darwin(v80);
  v96 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v78 = &v74 - v16;
  __chkstk_darwin(v15);
  v95 = &v74 - v17;
  v18 = sub_10008CB2C();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v74 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10008DBBC();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  sub_10008DB5C();
  sub_10008CB1C();
  v102 = sub_10008DC3C();
  v103 = v23;
  sub_100019E50();
  v24 = sub_10008D68C();
  v26 = v25;
  v28 = v27;
  v29 = sub_10008D66C();
  v31 = v30;
  v33 = v32;
  sub_10001CD48(v24, v26, v28 & 1);

  sub_10008D59C();
  v93 = sub_10008D67C();
  v92 = v34;
  LOBYTE(v24) = v35;
  v94 = v36;

  v37 = v33 & 1;
  v38 = v76;
  sub_10001CD48(v29, v31, v37);
  v39 = v75;

  v91 = sub_10008D55C();
  v90 = v24 & 1;
  LOBYTE(v102) = v24 & 1;
  LOBYTE(v99) = 1;
  sub_10008DB5C();
  sub_10008CB1C();
  v102 = sub_10008DC3C();
  v103 = v40;
  v88 = sub_10008D68C();
  v81 = v41;
  v77 = v42;
  v89 = v43;
  KeyPath = swift_getKeyPath();
  *v39 = sub_10008D9FC();
  v39[1] = v44;
  v45 = sub_100009C08(&qword_1000CD5A8, &unk_100095188);
  sub_10005AED4(v38, v39 + *(v45 + 44));
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  LOBYTE(v26) = sub_10008D54C();
  *(inited + 32) = v26;
  v47 = sub_10008D55C();
  *(inited + 33) = v47;
  v48 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v26)
  {
    v48 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v47)
  {
    v48 = sub_10008D57C();
  }

  v49 = v78;
  sub_100037C28(v39, v78, &qword_1000CD598, &qword_100095148);
  v50 = v49 + *(v80 + 36);
  *v50 = v48;
  *(v50 + 8) = 0u;
  *(v50 + 24) = 0u;
  *(v50 + 40) = 1;
  v51 = v49;
  v52 = v95;
  sub_100037C28(v51, v95, &qword_1000CD5A0, &qword_100095150);
  sub_10008DB5C();
  sub_10008CB1C();
  v102 = sub_10008DC3C();
  v103 = v53;
  v54 = v38;
  v55 = v84;
  sub_10005D014(v54, v84);
  v56 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v57 = swift_allocObject();
  sub_10005D07C(v55, v57 + v56);
  v58 = v97;
  sub_10008D92C();
  v59 = v96;
  sub_10000C314(v52, v96, &qword_1000CD5A0, &qword_100095150);
  v60 = v86;
  v84 = *(v86 + 16);
  v61 = v85;
  (v84)(v85, v58, v98);
  *&v99 = v93;
  *(&v99 + 1) = v92;
  LOBYTE(v100) = v90;
  *(&v100 + 1) = *v113;
  DWORD1(v100) = *&v113[3];
  *(&v100 + 1) = v94;
  v101[0] = v91;
  *&v101[1] = *v112;
  *&v101[4] = *&v112[3];
  memset(&v101[8], 0, 32);
  v101[40] = 1;
  v62 = *&v101[16];
  v63 = v79;
  *(v79 + 48) = *v101;
  *(v63 + 64) = v62;
  *(v63 + 73) = *&v101[25];
  v64 = v100;
  *(v63 + 16) = v99;
  *(v63 + 32) = v64;
  *v63 = 0;
  *(v63 + 8) = 1;
  v65 = v88;
  v66 = v81;
  *(v63 + 96) = v88;
  *(v63 + 104) = v66;
  v67 = v77 & 1;
  *(v63 + 112) = v77 & 1;
  v68 = KeyPath;
  *(v63 + 120) = v89;
  *(v63 + 128) = v68;
  *(v63 + 136) = 1;
  v69 = sub_100009C08(&qword_1000CD5B0, &qword_100095198);
  sub_10000C314(v59, v63 + v69[20], &qword_1000CD5A0, &qword_100095150);
  v70 = v98;
  (v84)(v63 + v69[24], v61, v98);
  v71 = v63 + v69[28];
  *v71 = 0;
  *(v71 + 8) = 1;
  sub_10000C314(&v99, &v102, &qword_1000CC670, &qword_1000951A0);
  sub_10001CC9C(v65, v66, v67);
  v72 = *(v60 + 8);

  v72(v97, v70);
  sub_10000C3F8(v95, &qword_1000CD5A0, &qword_100095150);
  v72(v61, v70);
  sub_10000C3F8(v96, &qword_1000CD5A0, &qword_100095150);
  sub_10001CD48(v88, v66, v67);

  v102 = v93;
  v103 = v92;
  v104 = v90;
  *v105 = *v113;
  *&v105[3] = *&v113[3];
  v106 = v94;
  v107 = v91;
  *v108 = *v112;
  *&v108[3] = *&v112[3];
  v109 = 0u;
  v110 = 0u;
  v111 = 1;
  return sub_10000C3F8(&v102, &qword_1000CC670, &qword_1000951A0);
}

uint64_t sub_10005CD18(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ManualPinEntryView() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  sub_100009C08(&qword_1000CD588, &qword_100095138);
  return sub_10008CF1C();
}

uint64_t sub_10005CD94(uint64_t a1)
{
  v19 = sub_10008D29C();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_10008CFDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C314(a1, v9, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_10008DE3C();
    v16 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_10008CFCC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_10005D014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualPinEntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualPinEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D134()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CD5D0, &qword_1000951C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005D270()
{
  result = qword_1000CD600;
  if (!qword_1000CD600)
  {
    sub_100007108(&qword_1000CD5D0, &qword_1000951C0);
    sub_10001121C(&qword_1000CD608, &qword_1000CD610, &qword_100095218);
    sub_10001121C(&qword_1000CD618, &qword_1000CD5F0, &qword_100095210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD600);
  }

  return result;
}

uint64_t sub_10005D358@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ManualPinEntryView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10005A620(v6, a1);
}

uint64_t sub_10005D3CC()
{
  v1 = type metadata accessor for ManualPinEntryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10008CFDC();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + v1[5]);

  v10 = v6 + v1[7];
  v11 = *(v10 + 1);

  v12 = *(v10 + 2);

  v13 = *(v6 + v1[8] + 8);

  v14 = *(v6 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005D534(uint64_t *a1)
{
  v3 = *(type metadata accessor for ManualPinEntryView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10005A69C(a1, v4, v5, v6);
}

uint64_t sub_10005D5A8()
{
  v1 = type metadata accessor for ManualPinEntryView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10008CFDC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = v5 + v1[7];
  v10 = *(v9 + 1);

  v11 = *(v9 + 2);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005D780@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D20C();
  *a1 = result;
  return result;
}

uint64_t sub_10005D7AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008D20C();
  *a1 = result;
  return result;
}

uint64_t sub_10005D7D8(uint64_t *a1)
{
  v1 = *a1;

  return sub_10008D21C();
}

uint64_t sub_10005D804(uint64_t *a1)
{
  v1 = *a1;

  return sub_10008D21C();
}

uint64_t sub_10005D830(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005D8B4()
{
  result = qword_1000CD670;
  if (!qword_1000CD670)
  {
    sub_100007108(&qword_1000CD678, &qword_1000952C0);
    sub_10001121C(&qword_1000CCD38, &qword_1000CCD40, &unk_1000948E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CD670);
  }

  return result;
}

uint64_t sub_10005D9D4()
{
  sub_10008DA5C();
  sub_100065F38(&qword_1000CD7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009C08(&qword_1000CA450, &qword_100097630);
  sub_10001121C(&qword_1000CD7E0, &qword_1000CA450, &qword_100097630);
  return sub_10008DF5C();
}

uint64_t sub_10005DAC0@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AddDevicesToADEExtensionView();
  v5 = (a1 + *(result + 48));
  if (*v5)
  {
    if (*(*v5 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo))
    {
      v6 = *a1;
      result = sub_10008CECC();
      v7 = v9 ^ 1;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7 & 1;
  }

  else
  {
    v8 = v5[1];
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005DBA0@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AddDevicesToADEExtensionView() + 128) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = (v5 & 1) == 0;
  return result;
}

uint64_t sub_10005DC44@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AddDevicesToADEExtensionView();
  v293 = *(v2 - 1);
  v3 = *(v293 + 64);
  __chkstk_darwin(v2);
  v294 = v4;
  v295 = &v269 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_100009C08(&unk_1000CD690, &unk_1000952F0);
  v297 = *(v298 - 8);
  v5 = *(v297 + 64);
  __chkstk_darwin(v298);
  v296 = &v269 - v6;
  v308 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v7 = *(*(v308 - 8) + 64);
  v8 = __chkstk_darwin(v308);
  v305 = &v269 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v304 = &v269 - v10;
  v301 = sub_10008CE3C();
  v11 = *(v301 - 1);
  v12 = *(v11 + 64);
  __chkstk_darwin(v301);
  v300 = (&v269 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10008C9BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v269 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_10008CEBC();
  v19 = v2[5];
  *(a1 + v19) = swift_getKeyPath();
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  swift_storeEnumTagMultiPayload();
  v20 = a1 + v2[6];
  LOBYTE(v319) = 0;
  sub_10008D8BC();
  v21 = *(&v323 + 1);
  *v20 = v323;
  *(v20 + 1) = v21;
  v22 = a1 + v2[7];
  LOBYTE(v319) = 0;
  sub_10008D8BC();
  v23 = *(&v323 + 1);
  *v22 = v323;
  *(v22 + 1) = v23;
  v24 = a1 + v2[8];
  LOBYTE(v319) = 0;
  sub_10008D8BC();
  v25 = *(&v323 + 1);
  *v24 = v323;
  *(v24 + 1) = v25;
  v26 = a1 + v2[9];
  LOBYTE(v319) = 0;
  sub_10008D8BC();
  v27 = *(&v323 + 1);
  *v26 = v323;
  *(v26 + 1) = v27;
  v28 = (a1 + v2[10]);
  v319 = 0uLL;
  v320 = 0;
  sub_100009C08(&qword_1000CD6A8, &qword_100095338);
  sub_10008D8BC();
  v29 = v324;
  *v28 = v323;
  v28[1] = v29;
  v30 = v2[11];
  v299 = objc_opt_self();
  v31 = [v299 defaultManager];
  v32 = [v31 temporaryDirectory];

  sub_10008C98C();
  sub_10008C97C();
  (*(v15 + 8))(v18, v14);
  v33 = (a1 + v2[12]);
  type metadata accessor for AddDevicesExtensionContainerViewModel();
  sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
  *v33 = sub_10008D15C();
  v33[1] = v34;
  v292 = v2[13];
  *(a1 + v292) = 0;
  v35 = (a1 + v2[14]);
  if (qword_1000C8D58 != -1)
  {
    swift_once();
  }

  v36 = qword_1000D6DE0;
  v37 = *algn_1000D6DE8;
  *v35 = qword_1000D6DE0;
  v35[1] = v37;
  v281 = v37;
  v38 = v2[15];
  v39 = qword_1000C8CF0;
  v282 = v36;
  swift_unknownObjectRetain_n();
  if (v39 != -1)
  {
    swift_once();
  }

  v306 = v38;
  sub_10000BE8C(&unk_1000D6CF0, v38 + a1);
  v40 = (a1 + v2[16]);
  v41 = objc_opt_self();
  v42 = [v41 standardUserDefaults];
  type metadata accessor for UserDefaultsBackedKeyValueStorage();
  v43 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v43 + 112) = v42;
  v44 = type metadata accessor for KeyValueStoreBackedNetworkInfoStorage();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v290 = v44;
  v47 = swift_allocObject();
  v48 = a1;
  v49 = sub_100065CB4(v43, v47);
  v50 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage);
  *v40 = v49;
  v40[1] = v50;
  v291 = v50;
  v51 = (v48 + v2[17]);
  v303 = v49;

  v52 = [v41 standardUserDefaults];
  v53 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v53 + 112) = v52;
  v54 = type metadata accessor for KeyValueStoreBackedMDMServerInfoStorage();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  v58 = sub_100065A74(v53, v57);
  v51[3] = v54;
  v51[4] = &off_1000BF0E8;
  v302 = v51;
  *v51 = v58;
  v59 = (v48 + v2[18]);
  (*(v11 + 104))(v300, enum case for NWInterface.InterfaceType.wifi(_:), v301);
  v60 = sub_10008CE8C();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_10008CE5C();
  v64 = type metadata accessor for NWPathMonitorBackedWiFiNetworkStatusMonitor();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = sub_100041374(v63);
  v59[3] = v64;
  v59[4] = &off_1000C0E38;
  v307 = v59;
  *v59 = v67;
  v68 = (v48 + v2[19]);
  v69 = type metadata accessor for CoreBluetoothBackedBluetoothStatusMonitor();
  v70 = [objc_allocWithZone(v69) init];
  v68[3] = v69;
  v68[4] = &off_1000C1DE8;
  v280 = v68;
  *v68 = v70;
  v71 = (v48 + v2[20]);
  v72 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v73 = swift_allocObject();
  *&v323 = 0;
  BYTE8(v323) = 1;
  v74 = sub_100009C08(&qword_1000CD6C0, &unk_100093A00);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  *(v73 + 16) = sub_10008CD6C();
  v284 = v72;
  v71[3] = v72;
  v71[4] = &off_1000C0C30;
  v300 = v71;
  *v71 = v73;
  v309 = v2;
  v77 = v2[21];
  v310 = v48;
  v78 = (v48 + v77);
  v79 = type metadata accessor for ConcreteCurrentWiFiNetworkPrimitives();
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  v78[3] = v79;
  v78[4] = &off_1000C0878;
  v301 = v78;
  *v78 = v80;
  v289 = v48 + v2[33];
  v81 = type metadata accessor for OperationStatus();
  v82 = *(v81 + 48);
  v83 = *(v81 + 52);
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  v85 = type metadata accessor for ErrorInfo();
  v86 = *(v85 - 8);
  v87 = *(v86 + 56);
  v88 = v86 + 56;
  v89 = v304;
  v87(v304, 1, 1, v85);
  v90 = v305;
  sub_10000C314(v89, v305, &unk_1000CBAE8, &qword_100093260);
  sub_10008CD7C();
  sub_10000C3F8(v89, &unk_1000CBAE8, &qword_100093260);
  v91 = (v84 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v91 = sub_10005DC3C;
  v91[1] = 0;
  v92 = sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus);
  v93 = sub_10008D05C();
  v94 = v289;
  *v289 = v93;
  *(v94 + 8) = v95;
  v96 = (v310 + v309[34]);
  v97 = *(v81 + 48);
  v98 = *(v81 + 52);
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  v288 = v85;
  v287 = v87;
  v286 = v88;
  v87(v89, 1, 1, v85);
  sub_10000C314(v89, v90, &unk_1000CBAE8, &qword_100093260);
  sub_10008CD7C();
  sub_10000C3F8(v89, &unk_1000CBAE8, &qword_100093260);
  v100 = (v99 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v100 = sub_10005DC40;
  v100[1] = 0;
  v289 = v81;
  v285 = v92;
  *v96 = sub_10008D05C();
  v96[1] = v101;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v102 = sub_10008CCDC();
  sub_100009F94(v102, qword_1000D6D38);
  v103 = sub_10008CCBC();
  v104 = sub_10008DE1C();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v323 = v106;
    *v105 = 136315138;
    *(v105 + 4) = sub_10000A2D8(0x292874696E69, 0xE600000000000000, &v323);
    _os_log_impl(&_mh_execute_header, v103, v104, "%s - Begin AddDevicesToADEExtensionView initialization", v105, 0xCu);
    sub_10000BC74(v106);
  }

  v107 = v309;
  v108 = v307;
  v109 = v306;
  v110 = v301;
  v111 = v310;
  sub_100065F80(1868983881, 0xE400000000000000);
  sub_100065F80(0x6E6F6973726576, 0xE700000000000000);
  v112 = [v299 defaultManager];
  v113 = type metadata accessor for FileManagerBackedEncryptedKeyValueStorage();
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  v283 = v113;
  v116 = swift_allocObject();
  swift_defaultActor_initialize();
  v117 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension41FileManagerBackedEncryptedKeyValueStorage____lazy_storage___documentsSubDirectoryURL;
  v118 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  (*(*(v118 - 8) + 56))(v116 + v117, 1, 1, v118);
  *(v116 + 112) = v112;
  *(v116 + 120) = xmmword_1000952D0;
  sub_10000BE8C(v109 + v111, &v323);
  sub_10000BE8C(v108, &v319);
  sub_10000BE8C(v280, &v316);
  sub_10000BE8C(v110, &v313);
  v119 = type metadata accessor for ConcreteDeviceDiscoveryPrerequisiteStatusProvider();
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  v122 = swift_allocObject();
  v123 = v303;

  v124 = sub_100066720(&v323, v123, &v319, &v316, &v313, v122);
  v125 = (v111 + v107[23]);
  v125[3] = v119;
  v125[4] = &off_1000C1DF8;
  *v125 = v124;
  v126 = v107;
  if (qword_1000C8D50 != -1)
  {
    swift_once();
  }

  v128 = qword_1000D6DD0;
  v127 = *algn_1000D6DD8;
  v280 = *algn_1000D6DD8;
  v129 = v302;
  sub_10000BE8C(v302, &v323);
  sub_10000BE8C(v125, &v319);
  v130 = type metadata accessor for ConcreteDevicesProvider(0);
  v131 = *(v130 + 48);
  v132 = *(v130 + 52);
  v133 = swift_allocObject();
  v279 = v128;
  swift_unknownObjectRetain_n();

  v134 = sub_100067554(v282, v281, v128, v127, v116, v123, &v323, &v319, v133);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v135 = v310;
  v136 = (v310 + v126[22]);
  v136[3] = v130;
  v136[4] = &off_1000C1088;
  *v136 = v134;
  v137 = v136;
  v281 = v136;
  v282 = type metadata accessor for CameraViewModelProvider();
  sub_10000BE8C(v137, &v323);
  sub_10000BE8C(v306 + v135, &v319);
  sub_10000BE8C(v129, &v316);
  sub_10000BE8C(v125, &v313);
  sub_10000BE8C(v300, &v311);
  v138 = *(&v324 + 1);
  v277 = v325;
  v139 = sub_10000BCC0(&v323, *(&v324 + 1));
  v278 = &v269;
  v140 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v139);
  v275 = &v269 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v142 + 16))();
  v143 = v321;
  v274 = v322;
  v144 = sub_10000BCC0(&v319, v321);
  v276 = &v269;
  v145 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v144);
  v147 = &v269 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v148 + 16))(v147);
  v149 = v317;
  v272 = v318;
  v150 = sub_10000BCC0(&v316, v317);
  v273 = &v269;
  v151 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v150);
  v153 = &v269 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v154 + 16))(v153);
  v155 = v314;
  v270 = v315;
  v156 = sub_10000BCC0(&v313, v314);
  v271 = &v269;
  v157 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v156);
  v159 = &v269 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v160 + 16))(v159);
  v299 = v116;
  v161 = v312;
  v162 = sub_10000BCC0(&v311, v312);
  v163 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v162);
  v165 = &v269 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v166 + 16))(v165);
  v267 = v143;
  v167 = v284;
  v168 = sub_1000776DC(v275, v147, v153, v159, v165, v282, v138, v149, v284, v267, v155, v277, v272, &off_1000C0C30, v274, v270);
  sub_10000BC74(&v311);
  sub_10000BC74(&v313);
  sub_10000BC74(&v316);
  sub_10000BC74(&v319);
  sub_10000BC74(&v323);
  v169 = v309;
  v170 = v310;
  *(v310 + v309[25]) = v168;
  v282 = v168;
  sub_10000BE8C(v300, &v323);
  v171 = v281;
  sub_10000BE8C(v281, &v319);
  v172 = *(&v324 + 1);
  v173 = sub_10000BCC0(&v323, *(&v324 + 1));
  v174 = *(*(v172 - 8) + 64);
  __chkstk_darwin(v173);
  v176 = (&v269 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v177 + 16))(v176);
  v178 = *v176;
  v317 = v167;
  v318 = &off_1000C0C30;
  v316 = v178;
  type metadata accessor for VisualPinScannerViewModelProvider();
  v179 = swift_allocObject();
  v180 = sub_10000BCC0(&v316, v167);
  v181 = *(*(v167 - 8) + 64);
  __chkstk_darwin(v180);
  v183 = (&v269 - ((v182 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v184 + 16))(v183);
  v185 = *v183;
  v179[5] = v167;
  v179[6] = &off_1000C0C30;
  v179[2] = v185;
  sub_10000C3E0(&v319, (v179 + 7));

  sub_10000BC74(&v316);
  sub_10000BC74(&v323);
  *(v170 + v169[24]) = v179;
  v186 = type metadata accessor for DeviceStatusViewModelProvider();
  sub_10000BE8C(v171, &v323);
  v187 = *(&v324 + 1);
  v188 = v325;
  v189 = sub_10000BCC0(&v323, *(&v324 + 1));
  v190 = *(*(v187 - 8) + 64);
  __chkstk_darwin(v189);
  v192 = &v269 - ((v191 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v193 + 16))(v192);
  v194 = v279;
  ObjectType = swift_getObjectType();
  v196 = sub_100038D10(v192, v194, v186, v187, ObjectType, v188, v280);
  sub_10000BC74(&v323);
  *(v170 + v169[26]) = v196;
  v197 = type metadata accessor for SignInViewModelProvider();
  v198 = v306;
  sub_10000BE8C(v306 + v170, &v323);
  v199 = *(&v324 + 1);
  v200 = v325;
  v201 = sub_10000BCC0(&v323, *(&v324 + 1));
  v202 = *(*(v199 - 8) + 64);
  __chkstk_darwin(v201);
  v204 = &v269 - ((v203 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v205 + 16))(v204);
  v206 = sub_10000F534(v204, v197, v199, v200);
  v300 = v206;
  sub_10000BC74(&v323);
  *(v170 + v169[27]) = v206;
  v284 = type metadata accessor for SettingsViewModelProvider();
  sub_10000BE8C(v302, &v323);
  sub_10000BE8C(v307, &v319);
  sub_10000BE8C(v301, &v316);
  sub_10000BE8C(v198 + v170, &v313);
  v207 = *(&v324 + 1);
  v302 = v325;
  v208 = sub_10000BCC0(&v323, *(&v324 + 1));
  v306 = &v269;
  v209 = *(*(v207 - 8) + 64);
  __chkstk_darwin(v208);
  v211 = &v269 - ((v210 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v212 + 16))(v211);
  v213 = v321;
  v281 = v322;
  v214 = sub_10000BCC0(&v319, v321);
  v301 = &v269;
  v215 = *(*(v213 - 8) + 64);
  __chkstk_darwin(v214);
  v217 = &v269 - ((v216 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v218 + 16))(v217);
  v219 = v317;
  v279 = v318;
  v220 = sub_10000BCC0(&v316, v317);
  v280 = &v269;
  v221 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v220);
  v223 = &v269 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v224 + 16))(v223);
  v226 = v314;
  v225 = v315;
  v227 = sub_10000BCC0(&v313, v314);
  v278 = &v269;
  v228 = *(*(v226 - 8) + 64);
  __chkstk_darwin(v227);
  v230 = &v269 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v231 + 16))(v230);
  v232 = sub_100065F38(&qword_1000CD6D8, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage);
  v268 = v225;
  v233 = v291;
  v266 = v207;
  v234 = v303;
  v235 = v211;
  v236 = v299;
  v237 = sub_10006CF54(v303, v235, v217, v299, v223, v230, v284, v290, v213, v219, v266, v283, v226, v291, v281, v279, v302, v232, v268);
  v302 = v237;

  sub_10000BC74(&v313);
  sub_10000BC74(&v316);
  sub_10000BC74(&v319);
  sub_10000BC74(&v323);
  v238 = v309;
  v239 = v310;
  *(v310 + v309[28]) = v237;
  type metadata accessor for NetworkProfilePickerViewModelProvider();
  v240 = swift_allocObject();
  v240[2] = v234;
  v240[3] = v233;
  v240[4] = v236;
  v240[5] = v232;
  *(v239 + v238[29]) = v240;
  v241 = *(v289 + 48);
  v242 = *(v289 + 52);
  v243 = swift_allocObject();
  *(v243 + 16) = 0;
  v244 = v304;
  v287(v304, 1, 1, v288);
  sub_10000C314(v244, v305, &unk_1000CBAE8, &qword_100093260);

  sub_10008CD7C();
  sub_10000C3F8(v244, &unk_1000CBAE8, &qword_100093260);
  v245 = (v243 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider);
  *v245 = sub_10005FC00;
  v245[1] = 0;
  v246 = (v239 + v238[35]);

  *v246 = sub_10008D05C();
  v246[1] = v247;
  sub_10000BE8C((v300 + 2), &v323);
  v248 = type metadata accessor for SignInViewModel();
  v249 = *(v248 + 48);
  v250 = *(v248 + 52);
  swift_allocObject();

  sub_10005685C(&v323, v243);

  v251 = (v239 + v238[32]);
  sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel);
  *v251 = sub_10008D05C();
  v251[1] = v252;

  v253 = sub_10007745C();

  *(v239 + v238[30]) = v253;
  v254 = sub_10006BF54();

  *(v239 + v238[31]) = v254;
  swift_beginAccess();
  sub_100009C08(&unk_1000CEDB0, &unk_100094D10);
  v255 = v296;
  sub_10008CD8C();
  swift_endAccess();

  v256 = v295;
  sub_100068CA0(v239, v295);
  v257 = (*(v293 + 80) + 16) & ~*(v293 + 80);
  v258 = swift_allocObject();
  sub_100068D08(v256, v258 + v257);
  sub_10001121C(&unk_1000CD6F0, &unk_1000CD690, &unk_1000952F0);
  v259 = v298;
  v260 = sub_10008CE1C();

  (*(v297 + 8))(v255, v259);
  *(v239 + v292) = v260;
  v261 = sub_10008DBCC();
  v262 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v262, 0, sub_100064540, v261, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v263 = v307[3];
  v264 = v307[4];
  sub_10000BB24(v307, v263);
  (*(v264 + 16))(v263, v264);
}

uint64_t type metadata accessor for AddDevicesToADEExtensionView()
{
  result = qword_1000CD928;
  if (!qword_1000CD928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *sub_10005FC04(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v4 = type metadata accessor for AddDevicesToADEExtensionView();
    v5 = *(a2 + *(v4 + 56));
    v6 = *(a2 + *(v4 + 132) + 8);
    v7 = *(v5 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus);
    *(v5 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension38TerminalBackedDevicesDiscoveryProvider_operationStatus) = v6;
  }

  return result;
}

uint64_t sub_10005FC7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = type metadata accessor for AddDevicesToADEExtensionView();
  v4 = *(v3 - 8);
  v100 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = v6;
  v8 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_100009C08(&qword_1000CDA68, &qword_100095570);
  v9 = *(*(v109 - 1) + 64);
  __chkstk_darwin(v109);
  v11 = &v83 - v10;
  v90 = sub_100009C08(&qword_1000CDA70, &qword_100095578);
  v91 = *(v90 - 8);
  v12 = *(v91 + 64);
  __chkstk_darwin(v90);
  v99 = &v83 - v13;
  v92 = sub_100009C08(&qword_1000CDA78, &qword_100095580);
  v93 = *(v92 - 8);
  v14 = *(v93 + 64);
  __chkstk_darwin(v92);
  v101 = &v83 - v15;
  v94 = sub_100009C08(&qword_1000CDA80, &qword_100095588);
  v95 = *(v94 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v94);
  v102 = &v83 - v17;
  v18 = sub_100009C08(&qword_1000CDA88, &qword_100095590);
  v19 = *(v18 - 8);
  v96 = v18;
  v97 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v103 = &v83 - v21;
  *v11 = sub_10008D2EC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v22 = sub_100009C08(&qword_1000CDA90, &qword_100095598);
  sub_100060958(v1, &v11[*(v22 + 44)]);
  v104 = v1;
  sub_100068CA0(v1, v8);
  sub_10008DDBC();
  v23 = sub_10008DDAC();
  v24 = *(v4 + 80);
  v25 = (v24 + 32) & ~v24;
  v107 = v7;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v8, v26 + v25);
  v105 = v8;
  sub_100068CA0(v2, v8);
  v27 = sub_10008DDAC();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v8, v28 + v25);
  sub_10008D95C();
  v87 = sub_100009C08(&qword_1000CDA98, &qword_1000955A0);
  v88 = sub_10001121C(&qword_1000CDAA0, &qword_1000CDA68, &qword_100095570);
  v29 = sub_100007108(&qword_1000CDAA8, &qword_1000955A8);
  v30 = sub_10006A364();
  v112 = v29;
  v113 = v30;
  v86 = &opaque type descriptor for <<opaque return type of View.interactiveDismissDisabled(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10008D77C();

  sub_10006A444(v11);
  v32 = v104;
  v31 = v105;
  sub_100068CA0(v104, v105);
  v33 = sub_10008DDAC();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v31, v34 + v25);
  v35 = sub_10008DDAC();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = &protocol witness table for MainActor;
  sub_10008D95C();
  sub_100068CA0(v32, v31);
  v108 = v24;
  v106 = (v24 + 16) & ~v24;
  v37 = swift_allocObject();
  sub_100068D08(v31, v37 + ((v24 + 16) & ~v24));
  v84 = sub_100009C08(&qword_1000CDAC0, &qword_1000955B0);
  v112 = v109;
  v113 = v87;
  v114 = v88;
  v115 = OpaqueTypeConformance2;
  v109 = &opaque type descriptor for <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>;
  v85 = swift_getOpaqueTypeConformance2();
  v38 = sub_100007108(&qword_1000CDAC8, &qword_1000955B8);
  v39 = sub_100007108(&qword_1000CDAD0, &qword_1000955C0);
  v40 = type metadata accessor for ErrorInfo();
  OpaqueTypeConformance2 = v40;
  v41 = sub_10006A85C();
  v88 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
  v112 = v39;
  v113 = v40;
  v114 = v41;
  v115 = v88;
  v87 = &opaque type descriptor for <<opaque return type of View.alert<A>(item:content:)>>;
  v42 = swift_getOpaqueTypeConformance2();
  v112 = v38;
  v113 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v90;
  v45 = v99;
  sub_10008D77C();

  (*(v91 + 8))(v45, v44);
  v46 = v100;
  v47 = v104;
  v48 = (v104 + *(v100 + 32));
  v49 = *v48;
  v50 = *(v48 + 1);
  v110 = v49;
  v111 = v50;
  v99 = sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  LODWORD(v91) = v114;
  v51 = v105;
  sub_100068CA0(v47, v105);
  v52 = v106;
  v53 = swift_allocObject();
  sub_100068D08(v51, v53 + v52);
  v86 = sub_100009C08(&qword_1000CDB38, &qword_1000955F0);
  v112 = v44;
  v113 = v84;
  v114 = v85;
  v115 = v43;
  v90 = swift_getOpaqueTypeConformance2();
  v54 = sub_100007108(&qword_1000CDB40, &qword_1000955F8);
  v55 = sub_10006A9E4();
  v56 = sub_100059828();
  v112 = v54;
  v113 = &type metadata for FileExporterView;
  v114 = v55;
  v115 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v101;
  v59 = v92;
  sub_10008D77C();

  (*(v93 + 8))(v58, v59);
  v60 = *(v46 + 40);
  v61 = v104;
  v62 = (v104 + v60);
  v63 = *v62;
  v64 = *(v62 + 1);
  v110 = v63;
  v111 = v64;
  sub_10008D8EC();
  v65 = v105;
  sub_100068CA0(v61, v105);
  v66 = v106;
  v67 = swift_allocObject();
  v68 = v65;
  sub_100068D08(v65, v67 + v66);
  v112 = v59;
  v113 = v86;
  v114 = v90;
  v115 = v57;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_10006AB3C();
  v71 = v94;
  v72 = v102;
  sub_10008D77C();

  (*(v95 + 8))(v72, v71);
  v73 = v61 + *(v100 + 36);
  v74 = *v73;
  v75 = *(v73 + 8);
  v110 = v74;
  v111 = v75;
  sub_10008D8EC();
  sub_100068CA0(v61, v68);
  v76 = v106;
  v77 = swift_allocObject();
  sub_100068D08(v68, v77 + v76);
  sub_100009C08(&qword_1000CDB78, &qword_100095608);
  v112 = v71;
  v113 = &type metadata for NetworkProfilePickerView;
  v114 = v69;
  v115 = v70;
  swift_getOpaqueTypeConformance2();
  v78 = type metadata accessor for SettingsView();
  v79 = sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView);
  v112 = v78;
  v113 = OpaqueTypeConformance2;
  v114 = v79;
  v115 = v88;
  swift_getOpaqueTypeConformance2();
  v80 = v96;
  v81 = v103;
  sub_10008D77C();

  return (*(v97 + 8))(v81, v80);
}

uint64_t sub_100060958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_100009C08(&qword_1000CDBD0, &qword_100095708);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v90 = &v70 - v5;
  v6 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v86 = &v70 - v8;
  v9 = type metadata accessor for AddDevicesToADEExtensionView();
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  v11 = __chkstk_darwin(v9);
  v83 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v70 - v13;
  __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = sub_100009C08(&qword_1000CDBD8, &qword_100095710);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v70 - v19);
  v21 = sub_100009C08(&qword_1000CDBE0, &qword_100095718);
  v85 = *(v21 - 8);
  v22 = *(v85 + 64);
  __chkstk_darwin(v21);
  v84 = &v70 - v23;
  v88 = v9;
  v89 = a1;
  v24 = *(a1 + *(v9 + 128) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v93 == 1)
  {
    v87 = v17;
    v80 = v21;
    v81 = v3;
    v26 = v88;
    v25 = v89;
    v27 = *(v89 + *(v88 + 120));
    sub_100068CA0(v89, v16);
    v28 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v82 = swift_allocObject();
    sub_100068D08(v16, v82 + v28);
    sub_100068CA0(v25, v14);
    v79 = swift_allocObject();
    sub_100068D08(v14, v79 + v28);
    v29 = v83;
    sub_100068CA0(v25, v83);
    v78 = swift_allocObject();
    sub_100068D08(v29, v78 + v28);
    type metadata accessor for VisualPinScannerViewModel();
    sub_100065F38(&qword_1000CD508, type metadata accessor for VisualPinScannerViewModel);

    v83 = sub_10008D15C();
    v77 = v30;
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    v76 = sub_10008D15C();
    v75 = v31;
    type metadata accessor for CameraViewModel();
    sub_100065F38(&unk_1000CDC40, type metadata accessor for CameraViewModel);
    v73 = sub_10008D05C();
    v72 = v32;
    v92 = 0xC059000000000000;
    sub_10008D8BC();
    v33 = v93;
    v74 = v94;
    v92 = 0x4039000000000000;
    sub_10008D8BC();
    v34 = (v25 + *(v26 + 48));
    v35 = *v34;
    if (*v34)
    {
      v36 = v93;
      v71 = v94;

      v37 = sub_10008CD0C();
      v38 = v88;
      v39 = v89;
      v40 = *(v89 + *(v88 + 96));
      v41 = sub_1000421D4();
      v42 = sub_10008CD0C();
      v43 = (v20 + *(v87 + 36));
      v44 = *(sub_100009C08(&unk_1000CDC30, &qword_100095738) + 28);
      v45 = enum case for ColorScheme.dark(_:);
      v46 = sub_10008CF5C();
      (*(*(v46 - 8) + 104))(v43 + v44, v45, v46);
      *v43 = swift_getKeyPath();
      v47 = v72;
      *v20 = v73;
      v20[1] = v47;
      v48 = v77;
      v20[2] = v83;
      v20[3] = v48;
      v49 = v75;
      v20[4] = v76;
      v20[5] = v49;
      v50 = v82;
      v20[6] = sub_10006BA14;
      v20[7] = v50;
      v51 = v78;
      v52 = v79;
      v20[8] = sub_10006BA2C;
      v20[9] = v52;
      v20[10] = sub_10006BA30;
      v20[11] = v51;
      v20[12] = v33;
      v20[13] = v74;
      v20[14] = v36;
      v20[15] = v71;
      v20[16] = v37;
      v20[17] = v35;
      v20[18] = v42;
      v20[19] = v41;
      v53 = (v39 + *(v38 + 132));
      v54 = *v53;
      v55 = v53[1];
      type metadata accessor for OperationStatus();
      sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus);
      sub_10008D06C();
      swift_getKeyPath();
      v56 = v86;
      sub_10008D07C();

      __chkstk_darwin(v57);
      *(&v70 - 2) = v39;
      v58 = type metadata accessor for ErrorInfo();
      v59 = sub_10006B774();
      v60 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
      v61 = v84;
      v62 = v87;
      sub_10008D75C();
      sub_10000C3F8(v56, &qword_1000CDB88, &qword_100095610);
      sub_10000C3F8(v20, &qword_1000CDBD8, &qword_100095710);
      v63 = v85;
      v64 = v80;
      (*(v85 + 16))(v90, v61, v80);
      swift_storeEnumTagMultiPayload();
      v93 = v62;
      v94 = v58;
      v95 = v59;
      v96 = v60;
      swift_getOpaqueTypeConformance2();
      sub_10008D3DC();
      return (*(v63 + 8))(v61, v64);
    }

    else
    {
      v69 = v34[1];
      result = sub_10008D13C();
      __break(1u);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v66 = type metadata accessor for ErrorInfo();
    v67 = sub_10006B774();
    v68 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
    v93 = v17;
    v94 = v66;
    v95 = v67;
    v96 = v68;
    swift_getOpaqueTypeConformance2();
    return sub_10008D3DC();
  }

  return result;
}

uint64_t sub_1000612D4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddDevicesToADEExtensionView() + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_100061348()
{
  v1 = sub_100009C08(&qword_1000CD6D0, &qword_100095B50);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v40 = sub_10008C9BC();
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v40);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_10008D01C();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AddDevicesToADEExtensionView();
  v19 = *(v0 + v18[30]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v42 - 5 >= 2)
  {
    if (v42 == 2)
    {
      v22 = (v0 + v18[12]);
      if (!*v22)
      {
        v35 = v22[1];
        type metadata accessor for AddDevicesExtensionContainerViewModel();
        sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
        result = sub_10008D13C();
        __break(1u);
        return result;
      }

      v23 = *v22 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37AddDevicesExtensionContainerViewModel_hostAppInfo;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = *(v23 + 8);
        v42 = 0x666572702D707041;
        v43 = 0xEA00000000003A73;

        v44._countAndFlagsBits = v25;
        v44._object = v24;
        sub_10008DCBC(v44);

        sub_10008C9AC();

        v26 = v37;
        v27 = v40;
        if ((*(v37 + 48))(v7, 1, v40) != 1)
        {
          (*(v26 + 32))(v13, v7, v27);
          v34 = v0 + v18[5];
          sub_10006571C(v17);
          sub_10008D00C();
          (*(v38 + 8))(v17, v39);
          return (*(v26 + 8))(v13, v27);
        }

        sub_10000C3F8(v7, &qword_1000CD6D0, &qword_100095B50);
      }

      sub_10008C9AC();
      v28 = v37;
      v29 = v40;
      if ((*(v37 + 48))(v5, 1, v40) == 1)
      {
        return sub_10000C3F8(v5, &qword_1000CD6D0, &qword_100095B50);
      }

      else
      {
        (*(v28 + 32))(v11, v5, v29);
        v33 = v0 + v18[5];
        sub_10006571C(v17);
        sub_10008D00C();
        (*(v38 + 8))(v17, v39);
        return (*(v28 + 8))(v11, v29);
      }
    }

    else if (v42 == 1)
    {
      v21 = v0 + v18[5];
      sub_10006571C(v17);
      if (qword_1000C8D60 != -1)
      {
        swift_once();
      }

      sub_100009F94(v40, qword_1000D6DF0);
      sub_10008D00C();
      return (*(v38 + 8))(v17, v39);
    }

    else
    {
      v30 = (v0 + v18[7]);
      v31 = *v30;
      v32 = *(v30 + 1);
      LOBYTE(v42) = v31;
      v43 = v32;
      v41 = 1;
      sub_100009C08(&qword_1000CDB30, &qword_100095230);
      return sub_10008D8DC();
    }
  }

  return result;
}

uint64_t sub_1000618B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = type metadata accessor for AddDevicesToADEExtensionView();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008CB2C();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10008DBBC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100009C08(&qword_1000CDBC8, &qword_1000956B8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v35 - v12;
  v14 = type metadata accessor for ErrorInfo();
  v15 = (a1 + *(v14 + 20));
  v16 = v15[1];
  v43 = *v15;
  v44 = v16;
  sub_100019E50();

  v17 = sub_10008D68C();
  v38 = v18;
  v39 = v17;
  v36 = v19;
  v37 = v20;
  v21 = (a1 + *(v14 + 24));
  v22 = v21[1];
  v43 = *v21;
  v44 = v22;

  v23 = sub_10008D68C();
  v35[1] = v24;
  v35[2] = v23;
  sub_10008DB5C();
  sub_10008CB1C();
  v43 = sub_10008DC3C();
  v44 = v25;
  v26 = sub_10008D68C();
  v28 = v27;
  v30 = v29;
  sub_100068CA0(v41, v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v32 = swift_allocObject();
  sub_100068D08(v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  sub_10008D7EC();
  sub_10001CD48(v26, v28, v30 & 1);

  v33 = sub_10008D7FC();
  (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
  return sub_10008D7BC();
}

uint64_t sub_100061C20(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddDevicesToADEExtensionView() + 88));
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  return (*(v3 + 56))(v2, v3);
}

uint64_t sub_100061C84()
{
  sub_10008D0BC();
  sub_10008D55C();
  sub_100009C08(&qword_1000CDAA8, &qword_1000955A8);
  sub_10006A364();
  return sub_10008D73C();
}

uint64_t sub_100061CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v37 = &v34 - v5;
  v40 = sub_100009C08(&qword_1000CDAC8, &qword_1000955B8);
  v39 = *(v40 - 8);
  v6 = *(v39 + 64);
  __chkstk_darwin(v40);
  v38 = &v34 - v7;
  type metadata accessor for SignInViewModel();
  sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel);
  v36 = sub_10008D15C();
  v35 = v8;
  type metadata accessor for AddDevicesExtensionContainerViewModel();
  sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
  v9 = sub_10008D15C();
  v11 = v10;
  v12 = type metadata accessor for AddDevicesToADEExtensionView();
  v13 = *(a1 + v12[32] + 8);
  v14 = sub_10008CD0C();
  v15 = (a1 + v12[12]);
  v16 = *v15;
  if (*v15)
  {
    v17 = v14;
    v18 = *v15;

    v19 = sub_10008CD0C();
    v20 = sub_10008D0CC();
    v21 = sub_10008D53C();
    *&v42 = v36;
    *(&v42 + 1) = v35;
    *&v43 = v9;
    *(&v43 + 1) = v11;
    *&v44 = v17;
    *(&v44 + 1) = v13;
    *v45 = v19;
    *&v45[8] = v16;
    *&v45[16] = v20;
    v45[24] = v21;
    v22 = (a1 + v12[35]);
    v23 = *v22;
    v24 = v22[1];
    type metadata accessor for OperationStatus();
    sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus);
    sub_10008D06C();
    swift_getKeyPath();
    v25 = v37;
    sub_10008D07C();

    v26 = sub_100009C08(&qword_1000CDAD0, &qword_1000955C0);
    v27 = type metadata accessor for ErrorInfo();
    v28 = sub_10006A85C();
    v29 = sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
    v30 = v38;
    sub_10008D75C();
    sub_10000C3F8(v25, &qword_1000CDB88, &qword_100095610);
    v46[2] = v44;
    v47[0] = *v45;
    *(v47 + 9) = *&v45[9];
    v46[0] = v42;
    v46[1] = v43;
    sub_10000C3F8(v46, &qword_1000CDAD0, &qword_1000955C0);
    *&v42 = v26;
    *(&v42 + 1) = v27;
    *&v43 = v28;
    *(&v43 + 1) = v29;
    swift_getOpaqueTypeConformance2();
    v31 = v40;
    sub_10008D73C();
    return (*(v39 + 8))(v30, v31);
  }

  else
  {
    v33 = v15[1];

    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100062194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[3] = a2;
  v3 = sub_10008CB2C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10008DBBC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100009C08(&qword_1000CDBC8, &qword_1000956B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v11 = type metadata accessor for ErrorInfo();
  v12 = (a1 + *(v11 + 20));
  v13 = v12[1];
  v27 = *v12;
  v28 = v13;
  sub_100019E50();

  v14 = sub_10008D68C();
  v26[1] = v15;
  v26[2] = v14;
  v26[0] = v16;
  v17 = (a1 + *(v11 + 24));
  v18 = v17[1];
  v27 = *v17;
  v28 = v18;

  sub_10008D68C();
  sub_10008DB5C();
  sub_10008CB1C();
  v27 = sub_10008DC3C();
  v28 = v19;
  v20 = sub_10008D68C();
  v22 = v21;
  LOBYTE(v13) = v23;
  sub_10008D7EC();
  sub_10001CD48(v20, v22, v13 & 1);

  v24 = sub_10008D7FC();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  return sub_10008D7BC();
}

uint64_t sub_100062440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AddDevicesToADEExtensionView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v39 = v6;
  v40 = sub_100009C08(&qword_1000CDB40, &qword_1000955F8);
  v7 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v9 = (&v35 - v8);
  v10 = *(a1 + *(v4 + 112));
  v36 = a1;
  sub_10000BE8C(v10 + 16, v44);
  v11 = *(v10 + 56);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for DeviceStatusViewModel();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v37 = sub_100013D2C(v44, v11, v12);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068CA0(a1, v38);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_100068D08(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_100065F38(&qword_1000C9F08, type metadata accessor for DeviceStatusViewModel);
  v35 = sub_10008D15C();
  v19 = v18;
  v42 = 0x4059000000000000;
  sub_10008D8BC();
  v20 = v44[1];
  *v9 = v44[0];
  v9[1] = v20;
  v21 = type metadata accessor for DeviceStatusView();
  v22 = v21[5];
  *(v9 + v22) = swift_getKeyPath();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  swift_storeEnumTagMultiPayload();
  v23 = (v9 + v21[6]);
  *v23 = v35;
  v23[1] = v19;
  v24 = (v9 + v21[7]);
  *v24 = sub_10006AD28;
  v24[1] = v17;
  v25 = sub_10008CD0C();
  v26 = (v9 + *(v40 + 36));
  v27 = v36;
  v28 = v37;
  *v26 = v25;
  v26[1] = v28;
  v29 = v27 + *(v4 + 44);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v42) = v30;
  v43 = v31;

  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  v32 = v38;
  sub_100068CA0(v27, v38);
  v33 = swift_allocObject();
  sub_100068D08(v32, v33 + v16);
  sub_10006A9E4();
  sub_100059828();
  sub_10008D77C();

  return sub_10000C3F8(v9, &qword_1000CDB40, &qword_1000955F8);
}

uint64_t sub_100062814(uint64_t a1)
{
  v2 = type metadata accessor for AddDevicesToADEExtensionView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_10008DDEC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100068CA0(a1, v5);
  sub_10008DDBC();
  v11 = sub_10008DDAC();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100068D08(v5, v13 + v12);
  sub_10007B228(0, 0, v9, &unk_1000956A8, v13);
}

uint64_t sub_1000629CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100009C08(&qword_1000CDBB0, &qword_100095678);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008F280;
  v9 = *(v5 + 52);
  v10 = sub_10008C9BC();
  *(v8 + 56) = v10;
  v11 = sub_10000F5C0((v8 + 32));
  (*(*(v10 - 8) + 16))(v11, a1 + v9, v10);
  sub_100068CA0(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  result = sub_100068D08(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *a2 = v8;
  a2[1] = sub_10006AE24;
  a2[2] = v13;
  return result;
}

void sub_100062B50()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = v0 + *(v2 + 44);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v28[0]) = v11;
  *(&v28[0] + 1) = v12;
  LOBYTE(v26) = 0;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8DC();
  v13 = (v0 + *(v2 + 48));
  v14 = v13[1];
  v28[0] = *v13;
  v28[1] = v14;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8CC();
  if (v27)
  {
    v15 = v26;
    v25 = v27;
    v16 = sub_10008DDEC();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    sub_100068CA0(v0, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_10008DDBC();
    v17 = sub_10008DDAC();
    v18 = (*(v3 + 80) + 56) & ~*(v3 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = &protocol witness table for MainActor;
    *(v19 + 32) = v15;
    *(v19 + 40) = v25;
    sub_100068D08(v5, v19 + v18);
    sub_10007B228(0, 0, v9, &unk_100095690, v19);
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v20 = sub_10008CCDC();
    sub_100009F94(v20, qword_1000D6D38);
    v21 = sub_10008CCBC();
    v22 = sub_10008DE1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v28[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10000A2D8(0xD000000000000016, 0x800000010009BF30, v28);
      _os_log_impl(&_mh_execute_header, v21, v22, "%s No device history document to remove", v23, 0xCu);
      sub_10000BC74(v24);
    }
  }
}

uint64_t sub_100062EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView();
  v5 = (v4 - 8);
  v21 = *(v4 - 8);
  v6 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = a1 + v5[10];
  v8 = *v7;
  v9 = *(v7 + 8);
  v25 = v8;
  v26 = v9;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8EC();
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = *(a1 + v5[31]);
  v14 = *(a1 + v5[36] + 8);
  type metadata accessor for NetworkProfilePickerViewModel();
  v15 = swift_allocObject();
  v16 = *(v13 + 32);
  v20[0] = *(v13 + 16);
  v20[1] = v16;
  *(v15 + 16) = v20[0];
  *(v15 + 32) = v16;
  *(v15 + 48) = v14;
  sub_100068CA0(a1, v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_100068D08(v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = sub_10006BF3C;
  *(a2 + 40) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
}

uint64_t sub_100063070(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddDevicesToADEExtensionView() + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_1000630E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_100009C08(&qword_1000CDB88, &qword_100095610);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  v7 = type metadata accessor for AddDevicesToADEExtensionView();
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = type metadata accessor for SettingsView();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + *(v8 + 132));
  sub_100068CA0(a1, v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_100068D08(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  *(v14 + *(v11 + 24)) = swift_getKeyPath();
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  swift_storeEnumTagMultiPayload();
  v25[5] = 0x4059000000000000;

  sub_10008D8BC();
  v18 = v25[7];
  *v14 = v25[6];
  v14[1] = v18;
  type metadata accessor for SettingsViewModel();
  sub_100065F38(&qword_1000C9BF8, type metadata accessor for SettingsViewModel);
  v14[2] = sub_10008D05C();
  v14[3] = v19;
  v20 = (v14 + *(v11 + 28));
  *v20 = sub_10006BF18;
  v20[1] = v17;
  v21 = (a1 + *(v8 + 144));
  v22 = *v21;
  v23 = v21[1];
  type metadata accessor for OperationStatus();
  sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus);
  sub_10008D06C();
  swift_getKeyPath();
  sub_10008D07C();

  v25[4] = a1;
  type metadata accessor for ErrorInfo();
  sub_100065F38(&qword_1000CDB80, type metadata accessor for SettingsView);
  sub_100065F38(&qword_1000CDB28, type metadata accessor for ErrorInfo);
  sub_10008D75C();
  sub_10000C3F8(v6, &qword_1000CDB88, &qword_100095610);
  return sub_10006B40C(v14, type metadata accessor for SettingsView);
}

uint64_t sub_1000634DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v59 = a3;
  v5 = type metadata accessor for AddDevicesToADEExtensionView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v48[1] = v8;
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10008CB2C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10008DBBC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10008D7FC();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v58 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v60 = v48 - v20;
  v21 = type metadata accessor for ErrorInfo();
  v22 = (a1 + *(v21 + 20));
  v23 = v22[1];
  v61 = *v22;
  v62 = v23;
  sub_100019E50();

  v24 = sub_10008D68C();
  v56 = v25;
  v57 = v24;
  v54 = v26;
  v55 = v27;
  v28 = (a1 + *(v21 + 24));
  v29 = v28[1];
  v61 = *v28;
  v62 = v29;

  v30 = sub_10008D68C();
  v52 = v31;
  v53 = v30;
  v50 = v32 & 1;
  v51 = v33;
  sub_10008DB5C();
  v48[0] = v13;
  sub_10008CB1C();
  v61 = sub_10008DC3C();
  v62 = v34;
  v35 = sub_10008D68C();
  v37 = v36;
  LOBYTE(v23) = v38;
  sub_100068CA0(a2, v9);
  v39 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v40 = swift_allocObject();
  sub_100068D08(v9, v40 + v39);
  sub_10008D7EC();
  sub_10001CD48(v35, v37, v23 & 1);

  sub_10008DB5C();
  sub_10008CB1C();
  v61 = sub_10008DC3C();
  v62 = v41;
  v42 = sub_10008D68C();
  v44 = v43;
  LOBYTE(v13) = v45;
  sub_100068CA0(v49, v9);
  v46 = swift_allocObject();
  sub_100068D08(v9, v46 + v39);
  sub_10008D7DC();
  sub_10001CD48(v42, v44, v13 & 1);

  return sub_10008D7CC();
}

uint64_t sub_100063960(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AddDevicesToADEExtensionView() + 32));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  return sub_10008D8DC();
}

uint64_t sub_1000639D8()
{
  v1 = sub_10008CB0C();
  v0[11] = v1;
  v2 = *(v1 - 8);
  v0[12] = v2;
  v3 = *(v2 + 64) + 15;
  v0[13] = swift_task_alloc();
  sub_10008DDBC();
  v0[14] = sub_10008DDAC();
  v5 = sub_10008DD8C();
  v0[15] = v5;
  v0[16] = v4;

  return _swift_task_switch(sub_100063AC8, v5, v4);
}

uint64_t sub_100063AC8()
{
  if (qword_1000C8D10 != -1)
  {
    swift_once();
  }

  sub_10000BE8C(&qword_1000D6D68, (v0 + 2));
  type metadata accessor for KeychainBackedGrandSlamTokenStorage();
  inited = swift_initStackObject();
  v0[17] = inited;
  v2 = v0[5];
  v3 = v0[6];
  sub_10000BB24(v0 + 2, v2);
  *(inited + 16) = (*(v3 + 8))(v2, v3);
  *(inited + 24) = v4;
  sub_10000BC74(v0 + 2);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100063BF4;

  return sub_10007901C();
}

uint64_t sub_100063BF4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 144);
  v7 = *v3;
  v5[19] = a1;
  v5[20] = a2;
  v5[21] = v2;

  v8 = v4[16];
  v9 = v4[15];
  if (v2)
  {
    v10 = sub_1000643D8;
  }

  else
  {
    v10 = sub_100063D3C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100063D3C()
{
  v21 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_10008CCDC();
  v0[22] = sub_100009F94(v2, qword_1000D6D38);

  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136380675;
    if (v5)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    if (!v5)
    {
      v1 = 0xE000000000000000;
    }

    v10 = sub_10000A2D8(v9, v1, &v20);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Current grand slam token value: %{private}s", v7, 0xCu);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  sub_10008CAFC();
  v14 = sub_10008CACC();
  v16 = v15;
  v0[23] = v15;
  (*(v12 + 8))(v11, v13);
  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_100063F64;
  v18 = v0[17];

  return sub_1000793E8(v14, v16);
}

uint64_t sub_100063F64()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *v1;
  v4[25] = v0;

  if (v0)
  {
    v5 = v4[15];
    v6 = v4[16];

    return _swift_task_switch(sub_100064450, v5, v6);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[26] = v7;
    *v7 = v4;
    v7[1] = sub_1000640F4;
    v8 = v4[17];

    return sub_10007901C();
  }
}

uint64_t sub_1000640F4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 208);
  v7 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v8 = v4[16];
  v9 = v4[15];
  if (v2)
  {
    v10 = sub_1000644C8;
  }

  else
  {
    v10 = sub_10006423C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10006423C()
{
  v18 = v0;
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[14];

  v4 = sub_10008CCBC();
  v5 = sub_10008DE1C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136380675;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    if (!v6)
    {
      v1 = 0xE000000000000000;
    }

    v12 = sub_10000A2D8(v11, v1, &v17);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updated grand slam token value: %{private}s", v9, 0xCu);
    sub_10000BC74(v10);
  }

  else
  {
    v13 = v0[17];
  }

  v14 = v0[13];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000643D8()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[21];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100064450()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[25];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000644C8()
{
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[29];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100064544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for AddDevicesToADEExtensionView();
  v4[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v7 = sub_10008C9BC();
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v4[23] = *(v8 + 64);
  v4[24] = swift_task_alloc();
  v9 = *(*(sub_100009C08(&unk_1000CCC50, &qword_10008F440) - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v10 = *(*(sub_10008CB2C() - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v11 = *(*(sub_10008DBBC() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  sub_10008DDBC();
  v4[28] = sub_10008DDAC();
  v13 = sub_10008DD8C();
  v4[29] = v13;
  v4[30] = v12;

  return _swift_task_switch(sub_100064700, v13, v12);
}

uint64_t sub_100064700()
{
  if (qword_1000C8D50 != -1)
  {
    swift_once();
  }

  v1 = *algn_1000D6DD8;
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 40);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 248) = v5;
  *v5 = v0;
  v5[1] = sub_100064858;

  return v7(ObjectType, v1);
}

uint64_t sub_100064858(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = a1;

  v4 = *(v2 + 240);
  v5 = *(v2 + 232);

  return _swift_task_switch(sub_100064980, v5, v4);
}

uint64_t sub_100064980()
{
  v42 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  sub_10008DB5C();
  sub_10008CB1C();
  v6 = sub_10008DC3C();
  v7 = (v5 + *(v4 + 40));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  *(v0 + 16) = *v7;
  *(v0 + 24) = v9;
  *(v0 + 32) = v10;
  *(v0 + 40) = v11;
  *(v0 + 80) = v6;
  *(v0 + 88) = v12;
  *(v0 + 96) = v1;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8DC();
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 64) = v10;
  *(v0 + 72) = v11;
  sub_10008D8CC();
  *(v0 + 264) = *(v0 + 104);
  v13 = *(v0 + 112);
  *(v0 + 272) = v13;
  if (v13)
  {
    *(v0 + 288) = *(*(v0 + 152) + 44);

    return _swift_task_switch(sub_100064D58, 0, 0);
  }

  else
  {
    v14 = *(v0 + 224);

    v15 = (*(v0 + 144) + *(*(v0 + 152) + 36));
    v16 = *v15;
    v17 = *(v15 + 1);
    *(v0 + 128) = v16;
    *(v0 + 136) = v17;
    *(v0 + 292) = 1;
    sub_100009C08(&qword_1000CDB30, &qword_100095230);
    sub_10008D8DC();
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 160);
    v19 = *(v0 + 144);
    v20 = sub_10008CCDC();
    sub_100009F94(v20, qword_1000D6D38);
    sub_100068CA0(v19, v18);
    v21 = sub_10008CCBC();
    v22 = sub_10008DE4C();
    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      v25 = *(v0 + 152);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136446210;
      v28 = *(v25 + 44);
      sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL);
      v29 = sub_10008E15C();
      v31 = v30;
      sub_10006B40C(v24, type metadata accessor for AddDevicesToADEExtensionView);
      v32 = sub_10000A2D8(v29, v31, &v41);

      *(v26 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v22, "Document saved to %{public}s", v26, 0xCu);
      sub_10000BC74(v27);
    }

    else
    {
      v33 = *(v0 + 160);

      sub_10006B40C(v33, type metadata accessor for AddDevicesToADEExtensionView);
    }

    v35 = *(v0 + 208);
    v34 = *(v0 + 216);
    v37 = *(v0 + 192);
    v36 = *(v0 + 200);
    v38 = *(v0 + 160);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_100064D58()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = sub_10001FABC(*(v0 + 264), *(v0 + 272), *(v0 + 280));
  v17 = v9;
  v18 = v8;

  v10 = sub_10008DDEC();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v5 + 16))(v2, v7 + v1, v6);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v11, v2, v6);
  v13 = (v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v18;
  v13[1] = v17;
  sub_100026904(0, 0, v3, &unk_1000956B0, v12);

  v14 = *(v0 + 232);
  v15 = *(v0 + 240);

  return _swift_task_switch(sub_100064EF8, v14, v15);
}

uint64_t sub_100064EF8()
{
  v29 = v0;
  v1 = *(v0 + 224);

  v2 = (*(v0 + 144) + *(*(v0 + 152) + 36));
  v3 = *v2;
  v4 = *(v2 + 1);
  *(v0 + 128) = v3;
  *(v0 + 136) = v4;
  *(v0 + 292) = 1;
  sub_100009C08(&qword_1000CDB30, &qword_100095230);
  sub_10008D8DC();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);
  sub_100068CA0(v6, v5);
  v8 = sub_10008CCBC();
  v9 = sub_10008DE4C();
  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136446210;
    v15 = *(v12 + 44);
    sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL);
    v16 = sub_10008E15C();
    v18 = v17;
    sub_10006B40C(v11, type metadata accessor for AddDevicesToADEExtensionView);
    v19 = sub_10000A2D8(v16, v18, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Document saved to %{public}s", v13, 0xCu);
    sub_10000BC74(v14);
  }

  else
  {
    v20 = *(v0 + 160);

    sub_10006B40C(v20, type metadata accessor for AddDevicesToADEExtensionView);
  }

  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = *(v0 + 160);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1000651A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a7;
  v8 = type metadata accessor for AddDevicesToADEExtensionView();
  *(v7 + 80) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 88) = swift_task_alloc();
  v10 = sub_10008C9BC();
  *(v7 + 96) = v10;
  v11 = *(v10 - 8);
  *(v7 + 104) = v11;
  *(v7 + 112) = *(v11 + 64);
  *(v7 + 120) = swift_task_alloc();
  v12 = *(*(sub_100009C08(&unk_1000CCC50, &qword_10008F440) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = sub_10008DDBC();
  *(v7 + 144) = sub_10008DDAC();
  *(v7 + 152) = *(v8 + 44);

  return _swift_task_switch(sub_1000652FC, 0, 0);
}

uint64_t sub_1000652FC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = sub_10008DDEC();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  (*(v7 + 16))(v5, v9 + v1, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v7 + 32))(v12 + v11, v5, v8);
  sub_100026904(0, 0, v4, &unk_100095698, v12);

  v14 = sub_10008DD8C();

  return _swift_task_switch(sub_10006547C, v14, v13);
}

uint64_t sub_10006547C()
{
  v28 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  v4 = (v2 + *(v3 + 40));
  v5 = v4[1];
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  sub_100009C08(&qword_1000CDBB8, &qword_100095680);
  sub_10008D8DC();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = sub_10008CCDC();
  sub_100009F94(v8, qword_1000D6D38);
  sub_100068CA0(v7, v6);
  v9 = sub_10008CCBC();
  v10 = sub_10008DE4C();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 80);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446210;
    v16 = *(v13 + 44);
    sub_100065F38(&qword_1000CDBC0, &type metadata accessor for URL);
    v17 = sub_10008E15C();
    v19 = v18;
    sub_10006B40C(v12, type metadata accessor for AddDevicesToADEExtensionView);
    v20 = sub_10000A2D8(v17, v19, &v27);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Document removed from %{public}s", v14, 0xCu);
    sub_10000BC74(v15);
  }

  else
  {
    v21 = *(v0 + 88);

    sub_10006B40C(v21, type metadata accessor for AddDevicesToADEExtensionView);
  }

  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v24 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10006571C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10008D29C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000C314(v2, &v17 - v11, &qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008D01C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10008DE3C();
    v16 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000659A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100065A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = sub_100065F38(&qword_1000CD8A8, type metadata accessor for UserDefaultsBackedKeyValueStorage);
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension39KeyValueStoreBackedMDMServerInfoStorage__mdmServerInfo;
  v18 = xmmword_1000952E0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_100009C08(&unk_1000CD8B0, &qword_100090200);
  sub_10008CD7C();
  (*(v9 + 32))(a2 + v14, v12, v8);
  *(a2 + 16) = a1;
  *(a2 + 24) = v13;
  v15 = sub_10008DDEC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  sub_100026904(0, 0, v7, &unk_1000954A0, v16);

  return a2;
}

uint64_t sub_100065CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = sub_100065F38(&qword_1000CD8A8, type metadata accessor for UserDefaultsBackedKeyValueStorage);
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37KeyValueStoreBackedNetworkInfoStorage__networkInfo;
  v18 = xmmword_1000952E0;
  v19 = xmmword_1000952E0;
  sub_100009C08(&qword_1000CD8C0, &qword_100091B80);
  sub_10008CD7C();
  (*(v9 + 32))(a2 + v14, v12, v8);
  *(a2 + 112) = a1;
  *(a2 + 120) = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;

  sub_10008CDBC();
  v15 = sub_10008DDEC();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  sub_100026904(0, 0, v7, &unk_1000954F0, v16);

  return a2;
}

uint64_t sub_100065F38(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100065F80(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = sub_10008DBCC();
  v6 = sub_10008DBCC();
  v7 = [v4 pathForResource:v5 ofType:v6];

  if (v7)
  {
    v8 = sub_10008DBDC();
    v10 = v9;

    sub_10007227C(v8, v10, v32);
    v15 = sub_100072078();
    oslog = v16;
    v35 = v32[0];
    sub_10000C3F8(&v35, &qword_1000C92F0, &qword_10008F430);
    v34 = v32[1];
    sub_10000C3F8(&v34, &qword_1000C92F0, &qword_10008F430);
    v33 = v32[2];
    sub_10000C3F8(&v33, &qword_1000C92F0, &qword_10008F430);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v17 = sub_10008CCDC();
    sub_100009F94(v17, qword_1000D6D38);

    v18 = sub_10008CCBC();
    v19 = sub_10008DE0C();

    if (os_log_type_enabled(v18, v19))
    {
      v28 = v15;
      v20 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v20 = 136315650;
      *(v20 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v31);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_10000A2D8(a1, a2, v31);
      *(v20 + 22) = 2082;
      v21 = sub_10000A2D8(v8, v10, v31);

      *(v20 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s Reading contents of %{public}s.plist at %{public}s", v20, 0x20u);
      swift_arrayDestroy();

      v15 = v28;
    }

    else
    {
    }

    v22 = sub_10008CCBC();
    v23 = sub_10008DE4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v31);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_10000A2D8(v15, oslog, v31);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: App version and build number: %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    v25 = [objc_opt_self() standardUserDefaults];
    v26 = sub_10008DBCC();

    v27 = sub_10008DBCC();
    [v25 setObject:v26 forKey:v27];
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v11 = sub_10008CCDC();
    sub_100009F94(v11, qword_1000D6D38);
    osloga = sub_10008CCBC();
    v12 = sub_10008DE1C();
    if (os_log_type_enabled(osloga, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v32[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000A2D8(0xD000000000000019, 0x800000010009BEA0, v32);
      _os_log_impl(&_mh_execute_header, osloga, v12, "%s Unable to find the resourced path for version.plist", v13, 0xCu);
      sub_10000BC74(v14);
    }

    else
    {
    }
  }
}

uint64_t sub_100066720(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v91 = a4;
  v92 = a5;
  v93 = a3;
  v9 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v81 = &v65 - v11;
  v78 = sub_100009C08(&qword_1000CD7E8, &qword_1000953F0);
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  __chkstk_darwin(v78);
  v75 = &v65 - v13;
  v80 = sub_100009C08(&qword_1000CD7F0, &qword_1000953F8);
  v79 = *(v80 - 8);
  v14 = *(v79 + 64);
  __chkstk_darwin(v80);
  v76 = &v65 - v15;
  v69 = sub_100009C08(&qword_1000CD7F8, &qword_100095400);
  v68 = *(v69 - 8);
  v16 = *(v68 + 64);
  __chkstk_darwin(v69);
  v66 = &v65 - v17;
  v71 = sub_100009C08(&qword_1000CD800, &qword_100095408);
  v70 = *(v71 - 8);
  v18 = *(v70 + 64);
  __chkstk_darwin(v71);
  v67 = &v65 - v19;
  v20 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v65 - v22;
  v85 = sub_100009C08(&qword_1000CD808, &unk_100095410);
  v84 = *(v85 - 8);
  v24 = *(v84 + 64);
  __chkstk_darwin(v85);
  v26 = &v65 - v25;
  v27 = sub_100009C08(&unk_1000CD810, &qword_100094A20);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v65 - v30;
  v32 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage);
  *(a6 + 192) = &_swiftEmptyArrayStorage;
  v73 = a6 + 192;
  *(a6 + 200) = xmmword_1000952E0;
  *(a6 + 216) = 1028;
  *(a6 + 218) = 0;
  v33 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension49ConcreteDeviceDiscoveryPrerequisiteStatusProvider__prerequisiteStatus;
  LOBYTE(v96) = 6;
  sub_100009C08(&qword_1000CCC48, &unk_100094740);
  sub_10008CD7C();
  (*(v28 + 32))(a6 + v33, v31, v27);
  sub_10000BE8C(a1, a6 + 16);
  *(a6 + 56) = a2;
  *(a6 + 64) = v32;
  v74 = v32;
  sub_10000BE8C(v93, a6 + 72);
  sub_10000BE8C(v91, a6 + 112);
  sub_10000BE8C(v92, a6 + 152);
  v34 = a1[3];
  v35 = a1[4];
  sub_10000BB24(a1, v34);
  v36 = *(v35 + 16);
  v82 = a2;
  swift_unknownObjectRetain();
  v36(&v96, v34, v35);
  v37 = v97;
  if (v97)
  {
    sub_10000C3F8(&v96, &unk_1000C90E8, &qword_10008F350);
  }

  *(a6 + 218) = v37 != 0;
  v38 = a1[3];
  v39 = a1[4];
  sub_10000BB24(a1, v38);
  v94 = (*(v39 + 24))(v38, v39);
  v40 = sub_10003E148(0, &qword_1000CA440, OS_dispatch_queue_ptr);
  v72 = a1;
  v83 = v40;
  v41 = sub_10008DE7C();
  v95 = v41;
  v89 = sub_10008DE6C();
  v42 = *(v89 - 8);
  v88 = *(v42 + 56);
  v90 = v42 + 56;
  v88(v23, 1, 1, v89);
  sub_100009C08(&unk_1000CD820, &unk_100094D30);
  v65 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&qword_1000CD180, &unk_1000CD820, &unk_100094D30);
  v87 = sub_1000590C8();
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a6;
  v86 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CD830, &qword_1000CD808, &unk_100095410);
  v43 = v85;
  sub_10008CE1C();

  (*(v84 + 8))(v26, v43);
  swift_beginAccess();
  v85 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v84 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  v44 = v93[3];
  v45 = v93[4];
  sub_10000BB24(v93, v44);
  v94 = (*(v45 + 8))(v44, v45);
  sub_100009C08(&qword_1000CD838, &qword_100095420);
  sub_100009C08(&qword_1000CD840, &qword_100095428);
  sub_10001121C(&qword_1000CD848, &qword_1000CD838, &qword_100095420);
  v46 = v66;
  sub_10008CDEC();

  v47 = sub_10008DE7C();
  v94 = v47;
  v88(v23, 1, 1, v89);
  sub_10001121C(&qword_1000CD850, &qword_1000CD7F8, &qword_100095400);
  v48 = v67;
  v49 = v69;
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  (*(v68 + 8))(v46, v49);
  swift_getKeyPath();
  v94 = a6;
  sub_10001121C(&qword_1000CD858, &qword_1000CD800, &qword_100095408);
  v50 = v71;
  sub_10008CE2C();

  (*(v70 + 8))(v48, v50);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v51 = v91;
  v52 = v91[3];
  v53 = v91[4];
  sub_10000BB24(v91, v52);
  v94 = (*(v53 + 8))(v52, v53);
  sub_100009C08(&qword_1000CD860, &qword_100095458);
  sub_100009C08(&qword_1000CD868, &qword_100095460);
  sub_10001121C(&qword_1000CD870, &qword_1000CD860, &qword_100095458);
  v54 = v75;
  sub_10008CDEC();

  v55 = sub_10008DE7C();
  v94 = v55;
  v88(v23, 1, 1, v89);
  sub_10001121C(&qword_1000CD878, &qword_1000CD7E8, &qword_1000953F0);
  v56 = v76;
  v57 = v78;
  sub_10008CE0C();
  sub_10000C3F8(v23, &qword_1000C9E10, &qword_10008FEF0);

  (*(v77 + 8))(v54, v57);
  swift_getKeyPath();
  v94 = a6;
  sub_10001121C(&unk_1000CD880, &qword_1000CD7F0, &qword_1000953F8);
  v58 = v80;
  sub_10008CE2C();

  (*(v79 + 8))(v56, v58);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v59 = sub_10008DDEC();
  v60 = v81;
  (*(*(v59 - 8) + 56))(v81, 1, 1, v59);
  swift_unownedRetainStrong();
  v61 = v82;

  swift_unownedRetain();

  v62 = swift_allocObject();
  v62[2] = 0;
  v62[3] = 0;
  v63 = v74;
  v62[4] = v61;
  v62[5] = v63;
  v62[6] = a6;
  sub_10007B228(0, 0, v60, &unk_100095490, v62);

  sub_10000BC74(v92);
  sub_10000BC74(v51);
  sub_10000BC74(v93);
  sub_10000BC74(v72);
  return a6;
}

void *sub_100067554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, void *a9)
{
  v136 = a8;
  v127 = a7;
  v134 = a6;
  v130 = a5;
  v126 = a4;
  v125 = a3;
  v112 = a2;
  v10 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v123 = &v106 - v12;
  v121 = sub_100009C08(&qword_1000CD700, &qword_100095350);
  v122 = *(v121 - 8);
  v13 = *(v122 + 64);
  __chkstk_darwin(v121);
  v120 = &v106 - v14;
  v119 = sub_100009C08(&qword_1000CD708, &unk_100095358);
  v135 = *(v119 - 8);
  v15 = *(v135 + 64);
  __chkstk_darwin(v119);
  v118 = &v106 - v16;
  v116 = sub_100009C08(&unk_1000CD710, &unk_100095368);
  v117 = *(v116 - 8);
  v17 = *(v117 + 64);
  __chkstk_darwin(v116);
  v115 = &v106 - v18;
  v19 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v113 = &v106 - v21;
  v22 = sub_100009C08(&unk_1000CD720, &unk_100095378);
  v23 = *(v22 - 8);
  v128 = v22;
  v129 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v114 = &v106 - v25;
  v26 = sub_10008DA5C();
  v138 = *(v26 - 8);
  v139 = v26;
  v27 = *(v138 + 8);
  __chkstk_darwin(v26);
  v124 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10008DA8C();
  v131 = *(v137 - 8);
  v29 = *(v131 + 64);
  __chkstk_darwin(v137);
  v111 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10008DEAC();
  v110 = *(v109 - 8);
  v31 = *(v110 + 64);
  __chkstk_darwin(v109);
  v108 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v106 - v36;
  v38 = sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v106 - v41;
  v107 = sub_100065F38(&qword_1000CD6B8, type metadata accessor for KeyValueStoreBackedNetworkInfoStorage);
  a9[20] = &_swiftEmptyArrayStorage;
  v133 = a9 + 20;
  aBlock = &_swiftEmptyArrayStorage;
  v43 = sub_100009C08(&qword_1000C98B8, &unk_1000946D0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  a9[21] = sub_10008CD6C();
  aBlock = &_swiftEmptyArrayStorage;
  v46 = sub_100009C08(&unk_1000CD730, &unk_10008F9D0);
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();
  a9[22] = sub_10008CD6C();
  v49 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__assignmentStatus;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  (*(v39 + 32))(a9 + v49, v42, v38);
  v50 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__enrollmentError;
  LOBYTE(aBlock) = 5;
  sub_100009C08(&qword_1000C9750, &qword_1000945E0);
  sub_10008CD7C();
  (*(v34 + 32))(a9 + v50, v37, v33);
  v51 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  *(a9 + v51) = sub_10002EF8C(&_swiftEmptyArrayStorage);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_ignoredDeviceIdentifiers) = &_swiftEmptySetSingleton;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 0;
  sub_10008DA9C();
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = &_swiftEmptyArrayStorage;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) = 6;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 0;
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 0;
  v52 = v112;
  a9[2] = a1;
  a9[3] = v52;
  v53 = v126;
  a9[4] = v125;
  a9[5] = v53;
  v54 = sub_100065F38(&qword_1000CD6D8, type metadata accessor for FileManagerBackedEncryptedKeyValueStorage);
  a9[6] = v130;
  a9[7] = v54;
  v55 = v107;
  a9[8] = v134;
  a9[9] = v55;
  sub_10000BE8C(v127, (a9 + 10));
  sub_10000BE8C(v136, (a9 + 15));
  sub_10003E148(0, &qword_1000CD740, OS_dispatch_source_ptr);
  aBlock = &_swiftEmptyArrayStorage;
  sub_100065F38(&qword_1000CD748, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v132 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_100009C08(&qword_1000CD750, &qword_100095388);
  sub_10001121C(&unk_1000CD758, &qword_1000CD750, &qword_100095388);
  v56 = v108;
  v57 = v109;
  sub_10008DF5C();
  v58 = sub_10003E148(0, &qword_1000CA440, OS_dispatch_queue_ptr);
  v59 = sub_10008DE7C();
  v60 = sub_10008DEBC();

  (*(v110 + 8))(v56, v57);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer) = v60;
  swift_getObjectType();
  v145 = sub_100069088;
  v146 = a9;
  aBlock = _NSConcreteStackBlock;
  v142 = 1107296256;
  v143 = sub_100077134;
  v144 = &unk_1000C1720;
  v61 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  v62 = v111;
  sub_10008DA7C();
  v63 = v124;
  sub_10005D9D4();
  sub_10008DECC();
  _Block_release(v61);
  swift_unknownObjectRelease();
  (*(v138 + 1))(v63, v139);
  (*(v131 + 8))(v62, v137);

  v131 = type metadata accessor for TerminalBackedDevicesDiscoveryProvider();
  aBlock = sub_100083980(v131, &off_1000C25C0);
  v64 = v58;
  v65 = sub_10008DE7C();
  v140 = v65;
  v139 = sub_10008DE6C();
  v66 = *(v139 - 8);
  v67 = *(v66 + 56);
  v137 = v66 + 56;
  v138 = v67;
  v68 = v113;
  v67(v113, 1, 1, v139);
  sub_100009C08(&qword_1000CD768, &unk_100095390);
  v134 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10001121C(&unk_1000CD770, &qword_1000CD768, &unk_100095390);
  v130 = sub_1000590C8();
  v69 = v114;
  sub_10008CE0C();
  sub_10000C3F8(v68, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  v124 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001121C(&qword_1000CD780, &unk_1000CD720, &unk_100095378);
  v70 = v128;
  sub_10008CE1C();

  (*(v129 + 8))(v69, v70);
  swift_beginAccess();
  v128 = sub_100009C08(&qword_1000CAF40, &unk_100095840);
  v129 = sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_1000839A4(v131, &off_1000C25C0);
  v71 = v64;
  v72 = sub_10008DE7C();
  v140 = v72;
  v138(v68, 1, 1, v139);
  sub_100009C08(&qword_1000CD788, &qword_1000953A0);
  sub_10001121C(&qword_1000CD790, &qword_1000CD788, &qword_1000953A0);
  v73 = v115;
  sub_10008CE0C();
  sub_10000C3F8(v68, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_10001121C(&qword_1000CD798, &unk_1000CD710, &unk_100095368);
  v74 = v116;
  sub_10008CE1C();

  (*(v117 + 8))(v73, v74);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_100083A44(v131, &off_1000C25C0);
  v75 = v71;
  v76 = sub_10008DE7C();
  v140 = v76;
  v138(v68, 1, 1, v139);
  v116 = sub_100009C08(&qword_1000CD7A0, &qword_1000953A8);
  v117 = sub_10001121C(&qword_1000CD7A8, &qword_1000CD7A0, &qword_1000953A8);
  v77 = v118;
  sub_10008CE0C();
  sub_10000C3F8(v68, &qword_1000C9E10, &qword_10008FEF0);

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  v115 = sub_10001121C(&qword_1000CD7B0, &qword_1000CD708, &unk_100095358);
  v78 = v119;
  sub_10008CE1C();

  v79 = *(v135 + 8);
  v135 += 8;
  v114 = v79;
  (v79)(v77, v78);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  aBlock = sub_100083A68(v131, &off_1000C25C0);
  v112 = v75;
  v80 = sub_10008DE7C();
  v140 = v80;
  v138(v68, 1, 1, v139);
  sub_10008CE0C();
  sub_10000C3F8(v68, &qword_1000C9E10, &qword_10008FEF0);

  v81 = v136;
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a9;
  sub_10008CE1C();

  (v114)(v77, v78);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v82 = v81[3];
  v83 = v81[4];
  sub_10000BB24(v81, v82);
  aBlock = (*(v83 + 8))(v82, v83);
  v84 = sub_10008DE7C();
  v140 = v84;
  v138(v68, 1, 1, v139);
  sub_100009C08(&qword_1000CD7B8, &qword_1000953B0);
  sub_10001121C(&qword_1000CD7C0, &qword_1000CD7B8, &qword_1000953B0);
  v85 = v120;
  sub_10008CE0C();
  sub_10000C3F8(v68, &qword_1000C9E10, &qword_10008FEF0);

  swift_getKeyPath();
  aBlock = a9;
  sub_10001121C(&qword_1000CD7C8, &qword_1000CD700, &qword_100095350);
  v86 = v121;
  sub_10008CE2C();

  (*(v122 + 8))(v85, v86);
  swift_beginAccess();
  sub_10008CCEC();
  swift_endAccess();

  v87 = [objc_opt_self() defaultCenter];
  if (qword_1000C8D20 != -1)
  {
    swift_once();
  }

  v88 = qword_1000D6D98;
  v89 = objc_opt_self();
  v90 = [v89 mainQueue];
  v145 = sub_10006914C;
  v146 = a9;
  aBlock = _NSConcreteStackBlock;
  v142 = 1107296256;
  v143 = sub_100077140;
  v144 = &unk_1000C17E8;
  v91 = _Block_copy(&aBlock);

  v92 = [v87 addObserverForName:v88 object:0 queue:v90 usingBlock:v91];
  _Block_release(v91);

  v93 = *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver) = v92;
  swift_unknownObjectRelease();
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v94 = qword_1000D6D90;
  v95 = [v89 mainQueue];
  v145 = sub_100069154;
  v146 = a9;
  aBlock = _NSConcreteStackBlock;
  v142 = 1107296256;
  v143 = sub_100077140;
  v144 = &unk_1000C1810;
  v96 = _Block_copy(&aBlock);

  v97 = [v87 addObserverForName:v94 object:0 queue:v95 usingBlock:v96];
  _Block_release(v96);

  v98 = *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver);
  *(a9 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver) = v97;
  swift_unknownObjectRelease();
  v99 = sub_10008DDEC();
  v100 = v123;
  (*(*(v99 - 8) + 56))(v123, 1, 1, v99);
  sub_10008DDBC();
  v101 = v125;
  swift_unknownObjectRetain();

  v102 = sub_10008DDAC();
  v103 = swift_allocObject();
  v103[2] = v102;
  v103[3] = &protocol witness table for MainActor;
  v104 = v126;
  v103[4] = v101;
  v103[5] = v104;
  v103[6] = a9;
  sub_10007B228(0, 0, v100, &unk_1000953E0, v103);

  sub_10000BC74(v127);
  sub_10000BC74(v136);
  return a9;
}

uint64_t sub_100068CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesToADEExtensionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *sub_100068D6C(_BYTE *a1)
{
  v3 = *(type metadata accessor for AddDevicesToADEExtensionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10005FC04(a1, v4);
}

uint64_t sub_100068DDC()
{
  v0 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);
  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received reset grandslam token notification", v7, 2u);
  }

  v8 = sub_10008DDEC();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_10008DDBC();
  v9 = sub_10008DDAC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  sub_100026904(0, 0, v3, &unk_100095348, v10);
}

uint64_t sub_100068FA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068FDC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000092CC;

  return sub_1000639D8();
}

uint64_t sub_100069090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000690A8()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000092CC;

  return sub_100049B78(a1, v4, v5, v6, v7, v8);
}

unsigned __int8 *sub_100069254(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*a2 + 216);
  *(*a2 + 216) = v2;
  if (v3 != 4)
  {
    if (v3 == v2)
    {
      return result;
    }

    return sub_100072F18();
  }

  if (v2 != 4)
  {
    return sub_100072F18();
  }

  return result;
}

unsigned __int8 *sub_1000692B0(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*a2 + 217);
  *(*a2 + 217) = v2;
  if (v3 != 4)
  {
    if (v3 == v2)
    {
      return result;
    }

    return sub_100072F18();
  }

  if (v2 != 4)
  {
    return sub_100072F18();
  }

  return result;
}

uint64_t sub_100069314(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];
  swift_unknownObjectRelease();
  a1(v1[6]);

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_10006936C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000E290;

  return sub_100072AB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100069438()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000E290;

  return sub_1000112E8();
}

uint64_t sub_1000694F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000E290;

  return sub_1000338C8();
}

uint64_t sub_1000695BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009C08(&qword_1000CD8C8, &qword_1000954F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10008C9BC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100069700(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100009C08(&qword_1000CD8C8, &qword_1000954F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10008C9BC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100069830()
{
  sub_100069C78(319, &qword_1000CD938, &type metadata accessor for AppStorage);
  if (v0 <= 0x3F)
  {
    sub_100069DC4(319, &unk_1000CD940, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100069C78(319, &unk_1000CD520, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100069CCC();
        if (v3 <= 0x3F)
        {
          sub_10008C9BC();
          if (v4 <= 0x3F)
          {
            sub_100069D30();
            if (v5 <= 0x3F)
            {
              sub_100069DC4(319, &qword_1000CD960, &type metadata accessor for AnyCancellable, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100069E28(319, &qword_1000CD968);
                if (v7 <= 0x3F)
                {
                  sub_100069E28(319, &qword_1000CD970);
                  if (v8 <= 0x3F)
                  {
                    sub_100069E28(319, &qword_1000CD978);
                    if (v9 <= 0x3F)
                    {
                      sub_100069E28(319, &qword_1000CD980);
                      if (v10 <= 0x3F)
                      {
                        sub_100069E28(319, &qword_1000CD988);
                        if (v11 <= 0x3F)
                        {
                          sub_100069E28(319, &qword_1000CD990);
                          if (v12 <= 0x3F)
                          {
                            sub_100069E28(319, &qword_1000CD998);
                            if (v13 <= 0x3F)
                            {
                              sub_100069E28(319, &qword_1000CD9A0);
                              if (v14 <= 0x3F)
                              {
                                sub_100069E28(319, &qword_1000CD9A8);
                                if (v15 <= 0x3F)
                                {
                                  sub_100069E28(319, &qword_1000CD9B0);
                                  if (v16 <= 0x3F)
                                  {
                                    type metadata accessor for VisualPinScannerViewModelProvider();
                                    if (v17 <= 0x3F)
                                    {
                                      type metadata accessor for CameraViewModelProvider();
                                      if (v18 <= 0x3F)
                                      {
                                        type metadata accessor for DeviceStatusViewModelProvider();
                                        if (v19 <= 0x3F)
                                        {
                                          type metadata accessor for SignInViewModelProvider();
                                          if (v20 <= 0x3F)
                                          {
                                            type metadata accessor for SettingsViewModelProvider();
                                            if (v21 <= 0x3F)
                                            {
                                              type metadata accessor for NetworkProfilePickerViewModelProvider();
                                              if (v22 <= 0x3F)
                                              {
                                                type metadata accessor for CameraViewModel();
                                                if (v23 <= 0x3F)
                                                {
                                                  type metadata accessor for SettingsViewModel();
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_100069E84();
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_100069F18();
                                                      if (v26 <= 0x3F)
                                                      {
                                                        swift_cvw_initStructMetadataWithLayoutString();
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100069C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100069CCC()
{
  if (!qword_1000CD950)
  {
    sub_100007108(&qword_1000CD6A8, &qword_100095338);
    v0 = sub_10008D8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD950);
    }
  }
}

void sub_100069D30()
{
  if (!qword_1000CD958)
  {
    type metadata accessor for AddDevicesExtensionContainerViewModel();
    sub_100065F38(&qword_1000CD6B0, type metadata accessor for AddDevicesExtensionContainerViewModel);
    v0 = sub_10008D16C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD958);
    }
  }
}

void sub_100069DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100069E28(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100069E84()
{
  if (!qword_1000CD9B8)
  {
    type metadata accessor for SignInViewModel();
    sub_100065F38(&unk_1000CD6E0, type metadata accessor for SignInViewModel);
    v0 = sub_10008D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD9B8);
    }
  }
}

void sub_100069F18()
{
  if (!qword_1000CD9C0)
  {
    type metadata accessor for OperationStatus();
    sub_100065F38(&qword_1000CD6C8, type metadata accessor for OperationStatus);
    v0 = sub_10008D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CD9C0);
    }
  }
}

uint64_t sub_100069FE0()
{
  v1 = type metadata accessor for AddDevicesToADEExtensionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[5];
  sub_100009C08(&qword_1000CD6A0, &qword_100095330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10008D01C();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[6] + 8);

  v12 = *(v6 + v1[7] + 8);

  v13 = *(v6 + v1[8] + 8);

  v14 = *(v6 + v1[9] + 8);

  v15 = (v6 + v1[10]);
  if (v15[1])
  {

    v16 = v15[2];
  }

  v17 = v15[3];

  v18 = v1[11];
  v19 = sub_10008C9BC();
  (*(*(v19 - 8) + 8))(v6 + v18, v19);
  v20 = *(v6 + v1[12]);

  v21 = *(v6 + v1[13]);

  v22 = *(v6 + v1[14]);
  swift_unknownObjectRelease();
  sub_10000BC74((v6 + v1[15]));
  v23 = *(v6 + v1[16]);
  swift_unknownObjectRelease();
  sub_10000BC74((v6 + v1[17]));
  sub_10000BC74((v6 + v1[18]));
  sub_10000BC74((v6 + v1[19]));
  sub_10000BC74((v6 + v1[20]));
  sub_10000BC74((v6 + v1[21]));
  sub_10000BC74((v6 + v1[22]));
  sub_10000BC74((v6 + v1[23]));
  v24 = *(v6 + v1[24]);

  v25 = *(v6 + v1[25]);

  v26 = *(v6 + v1[26]);

  v27 = *(v6 + v1[27]);

  v28 = *(v6 + v1[28]);

  v29 = *(v6 + v1[29]);

  v30 = *(v6 + v1[30]);

  v31 = *(v6 + v1[31]);

  v32 = *(v6 + v1[32] + 8);

  v33 = *(v6 + v1[33] + 8);

  v34 = *(v6 + v1[34] + 8);

  v35 = *(v6 + v1[35] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}