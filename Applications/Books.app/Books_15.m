void sub_1002A1460(uint64_t a1)
{
  v53 = sub_100797E34();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100797D44();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = &v44 - v6;
  v7 = sub_100798394();
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v49 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007983A4();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v57 = &v44 - v13;
  v14 = type metadata accessor for AnalyticsEvent.ReadingEvent();
  __chkstk_darwin(v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F1160(&qword_100AD9470);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_100797D84();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A4318(a1, type metadata accessor for AnalyticsEvent.ReadingEvent, type metadata accessor for AnalyticsEvent.ReadingEvent, AnalyticsEvent.ReadingEvent.description.getter);
  sub_10029AE1C(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100007840(v19, &qword_100AD9470);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v1 + 96);
      ObjectType = swift_getObjectType();
      if ((*(v24 + 16))(ObjectType, v24))
      {
        if (qword_100AD1390 != -1)
        {
          swift_once();
        }

        v26 = sub_10079ACE4();
        sub_100008B98(v26, qword_100B22F80);
        v27 = sub_10079ACC4();
        v28 = sub_1007A29B4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "Failed to get necessary data to submit event", v29, 2u);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_1002A2658(a1, v16, type metadata accessor for AnalyticsEvent.ReadingEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_100798004();
        v35 = sub_100797FF4();
        sub_100797E44();
      }

      else
      {
        sub_100798004();
        v42 = sub_100797FF4();
        sub_100797EB4();

        v43 = sub_100797FF4();
        sub_1007A2254();
        sub_100797ED4();
      }
    }

    else
    {
      v31 = v57;
      v32 = v58;
      if (EnumCaseMultiPayload)
      {
        (*(v58 + 32))(v57, v16, v59);
        sub_100798004();
        v36 = sub_100797FF4();
        v45 = *(v1 + 16);
        v46 = v36;
        v34 = &enum case for ViewAction.remove(_:);
      }

      else
      {
        (*(v58 + 32))(v57, v16, v59);
        sub_100798004();
        v33 = sub_100797FF4();
        v45 = *(v1 + 16);
        v46 = v33;
        v34 = &enum case for ViewAction.add(_:);
      }

      v37 = v52;
      v38 = v48;
      v39 = v54;
      (*(v52 + 104))(v48, *v34, v54);
      (*(v32 + 16))(v11, v31, v59);
      (*(v37 + 16))(v47, v38, v39);
      (*(v50 + 104))(v51, enum case for ViewLocation.fromReading(_:), v53);
      v40 = v49;
      sub_100798384();
      (*(v37 + 8))(v38, v39);
      v41 = v46;
      sub_100797E94();

      (*(v55 + 8))(v40, v56);
      (*(v58 + 8))(v57, v59);
    }

    (*(v21 + 8))(v23, v20);
  }
}

uint64_t AnalyticsEvent.Reading.description.getter()
{
  v1 = v0;
  v2 = sub_10079EF54();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10079FFF4();
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002A2658(v1, v8, &type metadata accessor for AnalyticsEvent.Reading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = *v8;
        v14 = v8[1];
        v23 = 0x6E616843746E6F46;
        v24 = 0xEB00000000206567;
        v22[0] = v15;
        v22[1] = v14;
        sub_1002060B4();
        if ((sub_1007A28A4() & 1) == 0)
        {

          v14 = 0xE800000000000000;
          v15 = 0x6C616E696769726FLL;
        }

        v16._countAndFlagsBits = v15;
        v16._object = v14;
        goto LABEL_27;
      }

      v11 = *v8;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(25);

      v12 = 0x80000001008C8450;
      v13 = 0xD000000000000017;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v5, v8, v2);
        v23 = 0;
        v24 = 0xE000000000000000;
        v31._countAndFlagsBits = 0x616843656D656854;
        v31._object = 0xEC0000002065676ELL;
        sub_1007A23D4(v31);
        sub_1007A3894();
        v20 = v23;
        (*(v3 + 8))(v5, v2);
        return v20;
      }

      v11 = *v8;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(19);

      v12 = 0x80000001008C8490;
      v13 = 0xD000000000000011;
    }

    v23 = v13;
    v24 = v12;
    if (v11)
    {
      v16._countAndFlagsBits = 1702195828;
    }

    else
    {
      v16._countAndFlagsBits = 0x65736C6166;
    }

    if (v11)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v16._object = v21;
LABEL_27:
    sub_1007A23D4(v16);

    return v23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1007A3744(18);
      v25._countAndFlagsBits = 0xD000000000000010;
      v25._object = 0x80000001008C8430;
      sub_1007A23D4(v25);
      sub_1007A27D4();
      return v23;
    }

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1007A3744(19);

    v23 = 0xD000000000000011;
    v24 = 0x80000001008C8410;
    v16._countAndFlagsBits = sub_1007A2BA4();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1007A3744(57);
    v26._countAndFlagsBits = 0xD000000000000019;
    v26._object = 0x80000001008C83F0;
    sub_1007A23D4(v26);
    v22[0] = v17;
    v27._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v27);

    v28._countAndFlagsBits = 0x69736F50646E6520;
    v28._object = 0xED00003A6E6F6974;
    sub_1007A23D4(v28);
    v22[0] = v18;
    v29._countAndFlagsBits = sub_1007A3A74();
    sub_1007A23D4(v29);

    v30._countAndFlagsBits = 0x654C6C61746F7420;
    v30._object = 0xED00003A6874676ELL;
    sub_1007A23D4(v30);
    v22[0] = v19;
    v16._countAndFlagsBits = sub_1007A3A74();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 7)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x686372616553;
  }
}

uint64_t AnalyticsEvent.LifeCycle.description.getter(uint64_t a1)
{
  sub_1007A3744(17);

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 0xED00007261657070;
      v3._countAndFlagsBits = 0x617369446C6C6977;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 0xEC00000072616570;
      v3._countAndFlagsBits = 0x7061736944646964;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xEC00000065736163;
    v3._countAndFlagsBits = 0x206E776F6E6B6E75;
    goto LABEL_11;
  }

  if (!a1)
  {
    v2 = 0xE500000000000000;
    v3._countAndFlagsBits = 0x7465736E75;
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE900000000000072;
  v3._countAndFlagsBits = 0x6165707041646964;
LABEL_11:
  v3._object = v2;
  sub_1007A23D4(v3);

  return 0x6C6379436566694CLL;
}

unint64_t AnalyticsEvent.ReadingEvent.description.getter()
{
  v1 = v0;
  v2 = sub_1007983A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnalyticsEvent.ReadingEvent();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A2658(v1, v8, type metadata accessor for AnalyticsEvent.ReadingEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1007A3744(29);
      v10._object = 0x80000001008C84F0;
      v10._countAndFlagsBits = 0xD00000000000001BLL;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1007A3744(27);
      v10._countAndFlagsBits = 0xD000000000000019;
      v10._object = 0x80000001008C8510;
    }

    sub_1007A23D4(v10);
    sub_1007A3894();
    v11 = v13;
    (*(v3 + 8))(v5, v2);
  }

  return v11;
}

uint64_t BCAnalyticsViewLifeCycleState.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x7061736944646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x617369446C6C6977;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6165707041646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x7465736E75;
  }
}

uint64_t sub_1002A259C()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x7061736944646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x617369446C6C6977;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6165707041646964;
      }

      return 0x206E776F6E6B6E75;
    }

    return 0x7465736E75;
  }
}

uint64_t sub_1002A2658(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ReadingAnalyticsProvider()
{
  result = qword_100AD91A0;
  if (!qword_100AD91A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A2714()
{
  sub_1002A2960(319, &qword_100AD91B0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_100798154();
    if (v1 <= 0x3F)
    {
      sub_1007980B4();
      if (v2 <= 0x3F)
      {
        sub_1007981E4();
        if (v3 <= 0x3F)
        {
          sub_100798074();
          if (v4 <= 0x3F)
          {
            sub_1002A2960(319, &unk_100AD91B8, &type metadata accessor for ContentData);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1002A2960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002A29B4()
{
  v2 = *(sub_1001F1160(&qword_100AD9470) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1001F1160(&qword_100AD9468) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_10002812C;

  return sub_10029B5B4(v7, v0 + v3, v8, v0 + v6);
}

uint64_t sub_1002A2B28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100009A34;

  return sub_10029DC54(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002A2BF0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v67 = a1;
  v2 = sub_100796174();
  v72 = *(v2 - 8);
  v73 = v2;
  __chkstk_darwin(v2);
  v69 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007962B4();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1007967F4();
  v87 = *(v80 - 8);
  __chkstk_darwin(v80);
  v7 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100796CF4();
  v86 = *(v57 - 8);
  v8 = v86;
  __chkstk_darwin(v57);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = sub_1007A21D4();
  v53 = v14;
  v85 = *(v14 - 8);
  v15 = v85;
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v52 - v19;
  v21 = sub_100796814();
  __chkstk_darwin(v21 - 8);
  v74 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1002132B4();
  v63 = v24;
  v64 = v23;
  v65 = v25;
  sub_1001F1160(&unk_100AD9510);
  v61 = sub_100795DC4();
  v62 = sub_100795DC4();
  v60 = sub_100795DC4();
  sub_1007A2154();
  sub_100796C94();
  v26 = *(v15 + 16);
  v83 = v15 + 16;
  v84 = v26;
  v54 = v17;
  v26(v17, v20, v14);
  v27 = *(v8 + 16);
  v81 = v8 + 16;
  v82 = v27;
  v28 = v57;
  v27(v10, v13, v57);
  v79 = type metadata accessor for BundleFinder();
  *v7 = v79;
  v78 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v87 + 104);
  v87 += 104;
  v77 = v29;
  v30 = v7;
  v55 = v7;
  v31 = v80;
  v29(v30);
  v32 = v10;
  sub_100796834();
  v33 = *(v86 + 8);
  v86 += 8;
  v76 = v33;
  v33(v13, v28);
  v34 = *(v85 + 8);
  v85 += 8;
  v75 = v34;
  v35 = v53;
  v34(v20, v53);
  v59 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370);
  v58 = sub_100795DA4();
  sub_1001F1160(&unk_100AD9520);
  sub_1007A2154();
  sub_100796C94();
  v36 = v54;
  v37 = v35;
  v84(v54, v20, v35);
  v38 = v32;
  v39 = v32;
  v40 = v28;
  v82(v39, v13, v28);
  v41 = v55;
  *v55 = v79;
  v77(v41, v78, v31);
  sub_100796834();
  v76(v13, v40);
  v75(v20, v37);
  sub_100211A50();
  v56 = sub_100795D74();
  sub_1001F1160(&unk_100AD9530);
  sub_1007A2154();
  sub_100796C94();
  v84(v36, v20, v37);
  v82(v38, v13, v40);
  v42 = v80;
  *v41 = v79;
  v77(v41, v78, v42);
  sub_100796834();
  v76(v13, v40);
  v75(v20, v37);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540);
  v43 = sub_100795D84();
  v101 = 0;
  v102 = 0;
  v44 = v66;

  v45 = v61;
  sub_100795D64();
  v101 = 0;
  v102 = 0;
  v46 = v60;
  sub_100795D64();
  LOBYTE(v101) = 0;
  v47 = v56;
  sub_100795D64();
  *&v95 = v67;
  *(&v95 + 1) = v44;
  *(&v96 + 1) = v88[0];
  DWORD1(v96) = *(v88 + 3);
  LOBYTE(v96) = 1;
  *(&v96 + 1) = v45;
  *&v97 = v62;
  *(&v97 + 1) = v46;
  *&v98 = v59;
  *(&v98 + 1) = v58;
  *&v99 = v47;
  *(&v99 + 1) = v43;
  v100 = 0uLL;
  v101 = v67;
  v102 = v44;
  v103 = 1;
  *v104 = v88[0];
  *&v104[3] = *(v88 + 3);
  v105 = v45;
  v106 = v62;
  v107 = v46;
  v108 = v59;
  v109 = v58;
  v110 = v47;
  v111 = v43;
  v112 = 0;
  v113 = 0;
  sub_1002A40C0(&v95, &v89);
  sub_1002A411C(&v101);
  v91 = v97;
  v92 = v98;
  v93 = v99;
  v94 = v100;
  v89 = v95;
  v90 = v96;
  sub_1002A40C0(&v95, v88);
  v48 = v63;
  sub_100795E04();
  sub_1002A411C(&v95);
  v49 = v69;
  sub_100796164();
  *&v89 = v64;
  *(&v89 + 1) = v48;
  *&v90 = v65;
  sub_100214EF0();
  v50 = v68;
  sub_100796154();
  (*(v72 + 8))(v49, v73);
  (*(v70 + 8))(v50, v71);
}

void sub_1002A3504(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v6 = sub_10079ACE4();
  sub_100008B98(v6, qword_100B22F80);
  v17 = sub_10079ACC4();
  v7 = sub_1007A2994();
  if (os_log_type_enabled(v17, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    sub_100796BA4();
    sub_1002A42D0(&unk_100AE9A30, &type metadata accessor for Date);
    v9 = sub_1007A3A74();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = sub_1000070F4(v9, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = AnalyticsEvent.LifeCycle.description.getter(a1);
    v15 = sub_1000070F4(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v17, v7, "%s -- %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v17;
  }
}

uint64_t sub_1002A37AC(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  v2 = sub_100796174();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v67 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007962B4();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v66 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1007967F4();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_100796CF4();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = sub_1007A21D4();
  v51 = v14;
  v83 = *(v14 - 8);
  v15 = v83;
  v16 = __chkstk_darwin(v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v21 = sub_100796814();
  __chkstk_darwin(v21 - 8);
  v55 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_10032B474();
  sub_1001F1160(&unk_100AD9510);
  v61 = sub_100795DC4();
  v62 = sub_100795DC4();
  v60 = sub_100795DC4();
  sub_1007A2154();
  v50 = v13;
  sub_100796C94();
  v23 = *(v15 + 16);
  v81 = v15 + 16;
  v82 = v23;
  v52 = v18;
  v23(v18, v20, v14);
  v24 = *(v8 + 16);
  v79 = v8 + 16;
  v80 = v24;
  v53 = v11;
  v25 = v13;
  v26 = v57;
  v24(v11, v25, v57);
  v78 = type metadata accessor for BundleFinder();
  *v7 = v78;
  v76 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v72 = *(v84 + 104);
  v84 += 104;
  v27 = v7;
  v54 = v7;
  v28 = v77;
  v72(v27);
  sub_100796834();
  v29 = *(v8 + 8);
  v74 = v8 + 8;
  v75 = v29;
  v30 = v50;
  v31 = v26;
  v29(v50, v26);
  v32 = *(v83 + 8);
  v83 += 8;
  v73 = v32;
  v33 = v51;
  v32(v20, v51);
  v59 = sub_100795DB4();
  sub_1001F1160(&qword_100AE8370);
  v58 = sub_100795DA4();
  v56 = sub_1001F1160(&unk_100AD9520);
  sub_1007A2154();
  sub_100796C94();
  v34 = v52;
  v35 = v33;
  v82(v52, v20, v33);
  v36 = v53;
  v37 = v30;
  v80(v53, v30, v31);
  v38 = v54;
  *v54 = v78;
  (v72)(v38, v76, v28);
  sub_100796834();
  v75(v37, v31);
  v73(v20, v35);
  sub_100211A50();
  v56 = sub_100795D74();
  sub_1001F1160(&unk_100AD9530);
  sub_1007A2154();
  sub_100796C94();
  v82(v34, v20, v35);
  v80(v36, v37, v31);
  v39 = v77;
  *v38 = v78;
  (v72)(v38, v76, v39);
  sub_100796834();
  v75(v37, v31);
  v73(v20, v35);
  sub_100005920(&unk_100AE7F80, &qword_100AD9540);
  v40 = sub_100795D84();
  v93 = 0;
  v94 = 0;
  v41 = v64;

  v42 = v61;
  sub_100795D64();
  v93 = 0;
  v94 = 0;
  v43 = v60;
  sub_100795D64();
  LOBYTE(v93) = 0;
  v44 = v56;
  sub_100795D64();
  *&v87 = v65;
  *(&v87 + 1) = v41;
  *(&v88 + 1) = v85[0];
  DWORD1(v88) = *(v85 + 3);
  LOBYTE(v88) = 1;
  *(&v88 + 1) = v42;
  *&v89 = v62;
  *(&v89 + 1) = v43;
  *&v90 = v59;
  *(&v90 + 1) = v58;
  *&v91 = v44;
  *(&v91 + 1) = v40;
  v92 = 0uLL;
  v93 = v65;
  v94 = v41;
  v95 = 1;
  *v96 = v85[0];
  *&v96[3] = *(v85 + 3);
  v97 = v42;
  v98 = v62;
  v99 = v43;
  v100 = v59;
  v101 = v58;
  v102 = v44;
  v103 = v40;
  v104 = 0;
  v105 = 0;
  sub_1002A40C0(&v87, v86);
  sub_1002A411C(&v93);
  v86[2] = v89;
  v86[3] = v90;
  v86[4] = v91;
  v86[5] = v92;
  v86[0] = v87;
  v86[1] = v88;
  sub_1002A40C0(&v87, v85);
  v45 = v63;
  sub_100795E04();
  sub_1002A411C(&v87);
  v46 = v67;
  sub_100796164();
  *&v86[0] = v45;
  sub_1002A4170();
  v47 = v66;
  sub_100796154();
  (*(v70 + 8))(v46, v71);
  (*(v68 + 8))(v47, v69);
}

unint64_t sub_1002A4170()
{
  result = qword_100AD9548;
  if (!qword_100AD9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9548);
  }

  return result;
}

uint64_t sub_1002A41C4(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1002A420C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_10029AA60(a1, v4, v5, v6);
}

uint64_t sub_1002A42D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002A4318(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v8 = sub_100796BB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  if (qword_100AD1390 != -1)
  {
    swift_once();
  }

  v15 = sub_10079ACE4();
  sub_100008B98(v15, qword_100B22F80);
  sub_1002A2658(a1, v14, a3);
  v16 = sub_10079ACC4();
  v17 = sub_1007A2994();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v18 = 136315394;
    sub_100796BA4();
    sub_1002A42D0(&unk_100AE9A30, &type metadata accessor for Date);
    v19 = sub_1007A3A74();
    v29 = a3;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_1000070F4(v19, v21, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v24 = a4(v23);
    v26 = v25;
    sub_1002A4620(v14, v29);
    v27 = sub_1000070F4(v24, v26, &v31);

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s -- %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1002A4620(v14, a3);
  }
}

uint64_t sub_1002A4620(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002A4688()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2214();
  v2 = [v0 BOOLForKey:v1];

  byte_100B22FA8 = v2;
}

void sub_1002A4718()
{
  sub_10079BED4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BookReaderViewModel();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PageTurnViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_100247C8C();
        if (v3 <= 0x3F)
        {
          sub_10028B510();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              sub_10079ACE4();
              if (v6 <= 0x3F)
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

uint64_t sub_1002A4858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v43 = sub_10079BED4();
  v5 = *(v43 - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_10079CEE4() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v41 = *(a3 + 16);
  v10 = *(v41 - 8);
  v42 = *(v10 + 84);
  if (v6 <= v42)
  {
    v11 = *(v10 + 84);
  }

  else
  {
    v11 = v6;
  }

  v12 = *(sub_10079ACE4() - 8);
  v13 = *(v5 + 80);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v8)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (v18 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v5 + 64) + 7;
  v21 = *(v7 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  v24 = v19 + v14 + 1;
  v25 = *(v10 + 64) + 7;
  v26 = v15 + 8;
  if (a2 <= v17)
  {
    goto LABEL_40;
  }

  v27 = ((v26 + ((((((((v25 + ((v24 + ((v23 + ((((((((v20 + ((v13 + 20) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(v12 + 64);
  v28 = 8 * v27;
  if (v27 > 3)
  {
    goto LABEL_19;
  }

  v31 = ((a2 - v17 + ~(-1 << v28)) >> v28) + 1;
  if (HIWORD(v31))
  {
    v29 = *(a1 + v27);
    if (v29)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v31 <= 0xFF)
    {
      if (v31 < 2)
      {
        goto LABEL_40;
      }

LABEL_19:
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_40;
      }

LABEL_27:
      v32 = (v29 - 1) << v28;
      if (v27 > 3)
      {
        v32 = 0;
      }

      if (v27)
      {
        if (v27 <= 3)
        {
          v33 = v27;
        }

        else
        {
          v33 = 4;
        }

        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v34 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v34 = *a1;
          }
        }

        else if (v33 == 1)
        {
          v34 = *a1;
        }

        else
        {
          v34 = *a1;
        }
      }

      else
      {
        v34 = 0;
      }

      return v17 + (v34 | v32) + 1;
    }

    v29 = *(a1 + v27);
    if (*(a1 + v27))
    {
      goto LABEL_27;
    }
  }

LABEL_40:
  if ((v16 & 0x80000000) == 0)
  {
    if ((*(a1 + 1) & 0xF000000000000007) != 0)
    {
      return (*a1 & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  v35 = (((a1 + 19) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 4) & ~v13;
  if (v6 == v17)
  {
    v36 = *(v5 + 48);
    v37 = v6;
    v38 = v43;
LABEL_48:

    return v36(v35, v37, v38);
  }

  v35 = (v24 + ((v23 + ((((((((v20 + v35) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v14;
  if (v42 == v17)
  {
    v36 = *(v10 + 48);
    v37 = v42;
    v38 = v41;
    goto LABEL_48;
  }

  v39 = *(v12 + 48);
  v40 = (v26 + ((((((((v25 + v35) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;

  return v39(v40);
}

void sub_1002A4CDC(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(sub_10079BED4() - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_10079CEE4() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = *(*(a4 + 16) - 8);
  v46 = v10;
  v11 = *(v10 + 84);
  if (v6 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v6;
  }

  v13 = *(sub_10079ACE4() - 8);
  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  v18 = *(v13 + 80);
  if (v12 <= *(v13 + 84))
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  v21 = v15 + 7;
  v22 = (((((((v15 + 7 + ((v14 + 20) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v7 + 80) & 0xF8;
  v24 = ~v23 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 + 23;
  v26 = (v23 + 23 + v22) & v24;
  if (v8)
  {
    v27 = v9;
  }

  else
  {
    v27 = v9 + 1;
  }

  if (v27 <= 8)
  {
    v27 = 8;
  }

  v28 = v27 + v16 + 1;
  v29 = (v28 + v26) & ~v16;
  v30 = v17 + 7;
  v31 = ((v18 + 8 + ((((((((v17 + 7 + v29) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + *(v13 + 64);
  if (a3 <= v20)
  {
    v33 = 0;
    v32 = a1;
  }

  else
  {
    v32 = a1;
    if (v31 <= 3)
    {
      v36 = ((a3 - v20 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
      if (HIWORD(v36))
      {
        v33 = 4;
      }

      else
      {
        if (v36 < 0x100)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= 2)
        {
          v33 = v37;
        }

        else
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v33 = 1;
    }
  }

  if (v20 < a2)
  {
    v34 = ~v20 + a2;
    if (v31 < 4)
    {
      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v38 = v34 & ~(-1 << (8 * v31));
        bzero(v32, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *v32 = v38;
            if (v33 > 1)
            {
LABEL_61:
              if (v33 == 2)
              {
                *(v32 + v31) = v35;
              }

              else
              {
                *(v32 + v31) = v35;
              }

              return;
            }
          }

          else
          {
            *v32 = v34;
            if (v33 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *v32 = v38;
        *(v32 + 2) = BYTE2(v38);
      }

      if (v33 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(v32, v31);
      *v32 = v34;
      v35 = 1;
      if (v33 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v33)
    {
      *(v32 + v31) = v35;
    }

    return;
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      *(v32 + v31) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(v32 + v31) = 0;
  }

  else if (v33)
  {
    *(v32 + v31) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if ((v19 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *v32 = a2 & 0x7FFFFFFF;
      *(v32 + 1) = 0;
    }

    else
    {
      *v32 = a2 - 1;
      *(v32 + 1) = 1;
    }

    return;
  }

  v39 = (((v32 + 19) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 4) & ~v14;
  if (v6 == v20)
  {
    v40 = *(v5 + 56);
LABEL_53:

    v40(v39);
    return;
  }

  v39 = (v28 + ((v25 + ((((((((v21 + v39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v24)) & ~v16;
  if (v11 == v20)
  {
    v40 = *(v46 + 56);
    goto LABEL_53;
  }

  v41 = *(v13 + 56);
  v42 = (v18 + 8 + ((((((((v30 + v39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18;

  v41(v42);
}

uint64_t sub_1002A523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v83 = *(a1 - 8);
  __chkstk_darwin(a1);
  v89 = v4;
  v81 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v95[0] = sub_1001F1234(&unk_100ADB470);
  v5 = *(a1 + 16);
  sub_1001F1234(&qword_100AD9658);
  v88 = v5;
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9660);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9668);
  *&v95[1] = sub_10079C2A4();
  *&v95[2] = sub_1001F1234(&qword_100AD9670);
  *&v95[3] = sub_1001F1234(&qword_100AD9678);
  *&v95[4] = sub_1001F1234(&qword_100AD9680);
  *&v95[5] = sub_1001F1234(&qword_100AD9688);
  swift_getTupleTypeMetadata();
  v6 = sub_10079E5C4();
  WitnessTable = swift_getWitnessTable();
  v75 = v6;
  v74 = WitnessTable;
  v8 = sub_10079E1A4();
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v67 - v9;
  v78 = v10;
  v80 = sub_10079C2A4();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v87 = &v67 - v11;
  v12 = sub_1001F1160(&qword_100AD8A78);
  v13 = (__chkstk_darwin)(v12 - 8);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v71 = &v67 - v15;
  v91 = sub_10079BC44();
  v16 = *(v91 - 1);
  v17 = (__chkstk_darwin)(v91);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  v73 = type metadata accessor for PageTurnViewModel.State(0);
  v22 = (__chkstk_darwin)(v73);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v67 - v25;
  v27 = v2;
  v28 = *(v2 + *(a1 + 52));
  swift_getKeyPath();
  v29 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v95[0] = v28;
  v85 = sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  v86 = v29;
  sub_100797A14();

  sub_10079B904();
  v82 = a1;
  v90 = v27;
  v30 = sub_1002AAB94(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_10079B9A4();

  v32 = v91;
  (*(v16 + 104))(v19, enum case for ColorScheme.dark(_:), v91);
  v70 = sub_10079BC34();
  v33 = *(v16 + 8);
  v33(v19, v32);
  v33(v21, v32);
  sub_1003AA93C(v95);
  swift_storeEnumTagMultiPayload();
  v91 = v26;
  LOBYTE(v19) = sub_1003AE994(v26, v24);
  v73 = v24;
  sub_1002AC4E8(v24, type metadata accessor for PageTurnViewModel.State);
  if (v19)
  {
    v69 = 0;
    v34 = v72;
    v35 = v71;
  }

  else
  {
    swift_getKeyPath();
    v94 = v28;
    sub_100797A14();

    v36 = sub_10079FE94();
    v38 = v37;
    if (v36 == sub_10079FE94() && v38 == v39)
    {
      v69 = 1;
    }

    else
    {
      v69 = sub_1007A3AB4();
    }

    v34 = v72;
    v35 = v71;
  }

  sub_1003AB0E8(v35);
  v40 = _s5StateO4TurnVMa(0);
  v41 = *(*(v40 - 8) + 48);
  if (v41(v35, 1, v40) == 1)
  {
    sub_100007840(v35, &qword_100AD8A78);
  }

  else
  {
    sub_1002AC4E8(v35, _s5StateO4TurnVMa);
  }

  v42 = sub_1007A03D4();
  sub_1003AB0E8(v34);
  if (v41(v34, 1, v40) == 1)
  {
    sub_100007840(v34, &qword_100AD8A78);
    v43 = 0;
  }

  else
  {
    v43 = *&v34[*(v40 + 32)];
    v44 = v43;
    sub_1002AC4E8(v34, _s5StateO4TurnVMa);
  }

  v72 = v43;
  v45 = sub_1003AB370();
  v46 = __chkstk_darwin(v45);
  v71 = *&v28;
  v47 = v82;
  v48 = *(v82 + 24);
  v49 = v88;
  *(&v67 - 12) = v88;
  *(&v67 - 11) = v48;
  v68 = v48;
  v50 = v90;
  *(&v67 - 10) = v90;
  *(&v67 - 72) = v42 & 1;
  *(&v67 - 8) = v95;
  *(&v67 - 7) = v51;
  *(&v67 - 48) = v70 & 1;
  *(&v67 - 5) = v46;
  *(&v67 - 32) = v69 & 1;
  v52 = v91;
  *(&v67 - 3) = v43;
  *(&v67 - 2) = v52;
  sub_10079E474();
  v53 = v76;
  sub_10079E194();
  v54 = v83;
  v75 = *(v83 + 16);
  v55 = v81;
  v56 = v47;
  v75(v81, v50, v47);
  v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v49;
  *(v58 + 24) = v48;
  v83 = *(v54 + 32);
  (v83)(v58 + v57, v55, v56);
  v59 = v78;
  v60 = swift_getWitnessTable();
  sub_10079D744();

  (*(v77 + 8))(v53, v59);
  swift_getKeyPath();
  v94 = *&v71;
  sub_100797A14();

  v61 = v73;
  sub_10079B904();
  LOBYTE(v53) = sub_1003AD588();
  sub_1002AC4E8(v61, type metadata accessor for PageTurnViewModel.State);
  LOBYTE(v94) = v53;
  v75(v55, v90, v56);
  v62 = swift_allocObject();
  v63 = v68;
  *(v62 + 16) = v88;
  *(v62 + 24) = v63;
  (v83)(v62 + v57, v55, v56);
  sub_1001F1160(&qword_100AD9698);
  v92 = v60;
  v93 = &protocol witness table for _TransactionModifier;
  v64 = v80;
  swift_getWitnessTable();
  sub_1002AAD94();
  v65 = v87;
  sub_10079DC24();

  (*(v79 + 8))(v65, v64);
  return sub_1002AC4E8(v91, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1002A5E44@<X0>(uint64_t a1@<X0>, int a2@<W1>, double *a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D1>, uint64_t a11)
{
  v296 = a7;
  v278 = a6;
  LODWORD(v306) = a5;
  v307 = a4;
  v297 = a3;
  v295 = a2;
  v291 = a9;
  v304 = a11;
  v257 = sub_1001F1160(&qword_100AD96B0);
  __chkstk_darwin(v257);
  v239 = &v232 - v14;
  v254 = sub_1001F1160(&qword_100AD96B8);
  __chkstk_darwin(v254);
  v256 = &v232 - v15;
  v255 = sub_1001F1160(&qword_100AD96C0);
  __chkstk_darwin(v255);
  v238 = &v232 - v16;
  v17 = type metadata accessor for PageTurnView();
  v236 = *(v17 - 8);
  v234 = *(v236 + 64);
  __chkstk_darwin(v17);
  v235 = &v232 - v18;
  v233 = sub_1001F1160(&qword_100AD96C8);
  v19 = __chkstk_darwin(v233);
  v237 = &v232 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v292 = &v232 - v21;
  v289 = sub_1001F1160(&qword_100AD9680);
  v22 = __chkstk_darwin(v289);
  v290 = &v232 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v303 = &v232 - v24;
  v25 = sub_10079C104();
  v251 = *(v25 - 8);
  v252 = v25;
  __chkstk_darwin(v25);
  v250 = &v232 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001F1160(&qword_100AD96D0);
  __chkstk_darwin(v27 - 8);
  v241 = (&v232 - v28);
  v240 = sub_1001F1160(&qword_100AD96D8);
  __chkstk_darwin(v240);
  v243 = &v232 - v29;
  v242 = sub_1001F1160(&qword_100AD96E0);
  __chkstk_darwin(v242);
  v281 = &v232 - v30;
  v244 = sub_1001F1160(&qword_100AD96E8);
  __chkstk_darwin(v244);
  v245 = &v232 - v31;
  v246 = sub_1001F1160(&qword_100AD96F0);
  __chkstk_darwin(v246);
  v249 = &v232 - v32;
  v294 = sub_1001F1160(&qword_100AD96F8);
  v282 = *(v294 - 8);
  v33 = __chkstk_darwin(v294);
  v248 = &v232 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v247 = &v232 - v35;
  v288 = sub_1001F1160(&qword_100AD9678);
  v36 = __chkstk_darwin(v288);
  v302 = &v232 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v305 = &v232 - v38;
  v39 = sub_1001F1160(&qword_100AD9700);
  v276 = *(v39 - 8);
  v277 = v39;
  __chkstk_darwin(v39);
  v253 = (&v232 - v40);
  v287 = sub_1001F1160(&qword_100AD9670);
  v41 = __chkstk_darwin(v287);
  v301 = &v232 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v309 = &v232 - v43;
  v279 = type metadata accessor for PageTurnViewModel.State(0);
  v44 = __chkstk_darwin(v279);
  v280 = (&v232 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44);
  v284 = (&v232 - v46);
  sub_1001F1234(&qword_100AD9658);
  v261 = sub_10079C2A4();
  v264 = *(v261 - 8);
  v47 = __chkstk_darwin(v261);
  v259 = &v232 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v262 = &v232 - v49;
  sub_1001F1234(&qword_100AD9660);
  v266 = sub_10079C2A4();
  v268 = *(v266 - 8);
  __chkstk_darwin(v266);
  v263 = &v232 - v50;
  v267 = sub_10079C2A4();
  v269 = *(v267 - 8);
  __chkstk_darwin(v267);
  v265 = &v232 - v51;
  v52 = sub_10079C2A4();
  v275 = *(v52 - 8);
  v53 = __chkstk_darwin(v52);
  v260 = &v232 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v272 = &v232 - v55;
  v283 = v56;
  v57 = sub_10079C2A4();
  v273 = *(v57 - 8);
  __chkstk_darwin(v57);
  v271 = &v232 - v58;
  sub_1001F1234(&qword_100AD9668);
  v274 = v57;
  v300 = sub_10079C2A4();
  v298 = *(v300 - 8);
  v59 = __chkstk_darwin(v300);
  v299 = &v232 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v270 = &v232 - v62;
  __chkstk_darwin(v61);
  v308 = &v232 - v63;
  v310 = v17;
  v64 = a1;
  v65 = sub_1002AAB94(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v65;
  sub_10079B9A4();

  v286 = v355;
  KeyPath = swift_getKeyPath();
  v67 = a8;
  v312 = a8;
  v68 = v304;
  v313 = v304;
  v314 = v64;
  v311 = v64;
  sub_10079E474();
  sub_1001F1160(&qword_100AD9708);
  sub_100005920(&qword_100AD9710, &qword_100AD9708);
  v69 = v259;
  v293 = v67;
  v70 = v68;
  sub_10079DBC4();
  *&v355 = 0;
  *(&v355 + 1) = 0xE000000000000000;
  sub_1007A3744(53);
  v365._countAndFlagsBits = 0x636142676E696F67;
  v365._object = 0xEB00000000203F6BLL;
  sub_1007A23D4(v365);
  if (v295)
  {
    v71._countAndFlagsBits = 1702195828;
  }

  else
  {
    v71._countAndFlagsBits = 0x65736C6166;
  }

  if (v295)
  {
    v72 = 0xE400000000000000;
  }

  else
  {
    v72 = 0xE500000000000000;
  }

  v71._object = v72;
  sub_1007A23D4(v71);

  v366._countAndFlagsBits = 0x66664F6576696C20;
  v366._object = 0xED0000203A746573;
  sub_1007A23D4(v366);
  v73 = v297;
  v74 = *v297;
  v367._countAndFlagsBits = sub_1007A27C4();
  sub_1007A23D4(v367);

  v368._countAndFlagsBits = 0x7974696361706F20;
  v368._object = 0xEB00000000203F20;
  sub_1007A23D4(v368);
  sub_1007A27D4();
  v369._countAndFlagsBits = 0x7865646E497A202ELL;
  v369._object = 0xEA0000000000203ALL;
  sub_1007A23D4(v369);
  v75 = v73[5];
  sub_1007A27D4();
  *(&v356 + 1) = &type metadata for String;
  v76 = sub_100005920(&qword_100AD9718, &qword_100AD9658);
  v352 = v70;
  v353 = v76;
  v258 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v77 = v261;
  WitnessTable = swift_getWitnessTable();
  v79 = v262;
  sub_1006DB15C(v77, v262);
  v80 = *(v264 + 8);
  v80(v69, v77);
  sub_1000074E0(&v355);
  LOBYTE(v355) = v307;
  *(&v355 + 1) = a10;
  LOBYTE(v356) = v306;
  *(&v356 + 1) = 0x3FC999999999999ALL;
  sub_10079E474();
  sub_1002AAF00();
  v81 = v263;
  sub_10079DBD4();
  v80(v79, v77);
  v82 = v311;
  v83 = sub_1002AAB94(v310);
  v84 = *(v297 + 4);
  v85 = v260;
  v86 = sub_100005920(&qword_100AD9728, &qword_100AD9660);
  v350 = WitnessTable;
  v351 = v86;
  v87 = v83;
  v88 = v266;
  v89 = swift_getWitnessTable();
  v90 = v265;
  sub_1004AF4BC();

  (*(v268 + 8))(v81, v88);
  v91 = sub_1002AAF54();
  v348 = v89;
  v92 = v82;
  v349 = v91;
  v93 = v267;
  v94 = swift_getWitnessTable();
  v95 = v85;
  sub_10079DB64();
  (*(v269 + 8))(v90, v93);
  v96 = *(v92 + *(v310 + 52));
  swift_getKeyPath();
  *&v355 = v96;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v97 = v284;
  sub_10079B904();
  LODWORD(v93) = sub_1003AD588();
  sub_1002AC4E8(v97, type metadata accessor for PageTurnViewModel.State);
  if (v93 == 3)
  {
    sub_10079DD64();
  }

  else
  {
    sub_10079DDC4();
  }

  v346 = v94;
  v347 = &protocol witness table for _OffsetEffect;
  v98 = v283;
  v99 = swift_getWitnessTable();
  v100 = v275;
  v101 = v272;
  (*(v275 + 16))(v272, v95, v98);

  v102 = *(v100 + 8);
  v102(v95, v98);
  v103 = v271;
  sub_10079DBB4();
  v102(v101, v98);
  v344 = v99;
  v345 = &protocol witness table for _OpacityEffect;
  v104 = v274;
  v105 = swift_getWitnessTable();
  v106 = v270;
  sub_10079DB84();
  (*(v273 + 8))(v103, v104);
  v107 = sub_100005920(&qword_100AD9738, &qword_100AD9668);
  v342 = v105;
  v343 = v107;
  v108 = v300;
  v283 = swift_getWitnessTable();
  sub_10039232C(v106, v108, v283);
  v109 = *(v298 + 8);
  v297 = (v298 + 8);
  v284 = v109;
  v109(v106, v108);
  v110 = v309;
  v111 = v306;
  if (v278)
  {
    v112 = v307 & 1;
    v113 = v306 & 1;
    v278 = v278;
    v114 = v253;
    v115 = v310;
    sub_1002A8928(v278, v253);
    v116 = sub_10079E474();
    v118 = v117;
    v119 = (v114 + *(sub_1001F1160(&qword_100AD9798) + 36));
    *v119 = v112;
    v119[1] = a10;
    *(v119 + 16) = v113;
    v119[3] = 0.2;
    *(v119 + 4) = v116;
    *(v119 + 5) = v118;
    v120 = sub_1002AAB94(v115);
    v121 = objc_opt_self();
    v122 = v120;
    v123 = [v121 currentTraitCollection];
    [v123 displayCornerRadius];
    v125 = v124;

    v111 = v306;
    v126 = (v114 + *(sub_1001F1160(&qword_100AD9788) + 36));
    *v126 = v122;
    v126[1] = a10;
    *(v126 + 2) = v84;
    v126[3] = 0.1;
    *(v126 + 4) = v125;
    v126[5] = 4.0;
    v127 = (v114 + *(sub_1001F1160(&qword_100AD9778) + 36));
    *v127 = v74;
    v127[1] = 0;
    sub_10079DDF4();

    *(v114 + *(sub_1001F1160(&qword_100AD9768) + 36)) = 0;
    v128 = v277;
    *(v114 + *(v277 + 36)) = v75;
    sub_10020B3C8(v114, v110, &qword_100AD9700);
    v129 = 0;
  }

  else
  {
    v129 = 1;
    v128 = v277;
  }

  v130 = 1;
  (*(v276 + 56))(v110, v129, 1, v128);
  if (v111)
  {
    if (v307)
    {
      v131 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v131 = sub_10079DE54();
    }

    v132 = v241;
    v133 = v295;
    sub_1002A898C(v131, v310, v241);

    if (v133)
    {
      sub_1003AB370();
      v135 = v134 * *(v311 + *(v310 + 68));
    }

    else
    {
      v136 = *(v311 + *(v310 + 68));
      sub_1003AB370();
      v135 = v136 - v136 * v137;
    }

    v138 = v243;
    sub_10020B3C8(v132, v243, &qword_100AD96D0);
    *(v138 + *(v240 + 36)) = v135;
    v139 = sub_10079E474();
    v141 = v140;
    v142 = sub_10079C8F4();
    LOBYTE(v340) = 1;
    sub_1002A8AAC(v133 & 1, &v355);
    *(&v354[7] + 7) = v361;
    *(&v354[8] + 7) = v362;
    *(&v354[9] + 7) = v363;
    *(&v354[3] + 7) = v358;
    *(&v354[4] + 7) = v359;
    *(&v354[5] + 7) = v360[0];
    *(&v354[6] + 7) = v360[1];
    *(v354 + 7) = v355;
    *(&v354[1] + 7) = v356;
    *(&v354[10] + 7) = v364;
    *(&v354[2] + 7) = v357;
    v143 = v340;
    v144 = v138;
    v145 = v281;
    sub_10020B3C8(v144, v281, &qword_100AD96D8);
    v146 = v145 + *(v242 + 36);
    v147 = v354[6];
    *(v146 + 145) = v354[7];
    v148 = v354[9];
    *(v146 + 161) = v354[8];
    *(v146 + 177) = v148;
    *(v146 + 192) = *(&v354[9] + 15);
    v149 = v354[2];
    *(v146 + 81) = v354[3];
    v150 = v354[5];
    *(v146 + 97) = v354[4];
    *(v146 + 113) = v150;
    *(v146 + 129) = v147;
    v151 = v354[1];
    *(v146 + 33) = v354[0];
    *(v146 + 49) = v151;
    *v146 = v139;
    *(v146 + 8) = v141;
    *(v146 + 16) = v142;
    *(v146 + 24) = 0;
    *(v146 + 32) = v143;
    *(v146 + 65) = v149;
    v152 = swift_getKeyPath();
    v153 = sub_1007A0CE4();
    v155 = v154;
    if (v153 == sub_1007A0CE4() && v155 == v156)
    {

      v157 = &enum case for LayoutDirection.rightToLeft(_:);
    }

    else
    {
      v158 = sub_1007A3AB4();

      v157 = &enum case for LayoutDirection.leftToRight(_:);
      if (v158)
      {
        v157 = &enum case for LayoutDirection.rightToLeft(_:);
      }
    }

    v160 = v250;
    v159 = v251;
    v161 = v252;
    (*(v251 + 104))(v250, *v157, v252);
    v162 = v245;
    v163 = &v245[*(v244 + 36)];
    v164 = sub_1001F1160(&qword_100ADBCE0);
    (*(v159 + 32))(v163 + *(v164 + 28), v160, v161);
    *v163 = v152;
    sub_10020B3C8(v281, v162, &qword_100AD96E0);
    if (v133)
    {
      v165 = sub_1003AB730();
      v167 = v249;
      if (v166)
      {
        v168 = v165;
      }

      else
      {
        v168 = 0;
      }

      sub_10020B3C8(v162, v167, &qword_100AD96E8);
      v170 = (v167 + *(v246 + 36));
      *v170 = v168;
      v170[1] = 0;
      sub_1003AB730();
      if (v171)
      {
        v75 = v172;
      }

      else
      {
        v75 = 0.0;
      }
    }

    else
    {
      v167 = v249;
      sub_10020B3C8(v162, v249, &qword_100AD96E8);
      v169 = (v167 + *(v246 + 36));
      *v169 = v74;
      v169[1] = 0;
    }

    v173 = v248;
    sub_10020B3C8(v167, v248, &qword_100AD96F0);
    *(v173 + *(v294 + 36)) = v75 + 1.0;
    v174 = v173;
    v175 = v247;
    sub_10020B3C8(v174, v247, &qword_100AD96F8);
    sub_10020B3C8(v175, v305, &qword_100AD96F8);
    v130 = 0;
  }

  (*(v282 + 56))(v305, v130, 1, v294);
  v176 = v280;
  sub_1002AC480(v296, v280, type metadata accessor for PageTurnViewModel.State);
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1002AC4E8(v176, type metadata accessor for PageTurnViewModel.State);
    v178 = sub_1003AB730();
    if (v179)
    {
      v181 = v180;
      v182 = v239;
      v183 = v179;
      sub_1002A8C04(v179, v310, v239, *&v178);
      *(v182 + *(sub_1001F1160(&qword_100AD9848) + 36)) = v181;
      v184 = sub_10079D294();
      *(v182 + *(sub_1001F1160(&qword_100AD9838) + 36)) = v184;
      *(v182 + *(v257 + 36)) = 0;
      sub_10079DDF4();

      sub_1000077D8(v182, v256, &qword_100AD96B0);
      swift_storeEnumTagMultiPayload();
      sub_100005920(&qword_100AD9820, &qword_100AD96C0);
      sub_1002ABAD8();
      v185 = v303;
      p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
      sub_10079CCA4();

      sub_100007840(v182, &qword_100AD96B0);
      v186 = sub_1001F1160(&qword_100AD9740);
      (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
    }

    else
    {
      v201 = sub_1001F1160(&qword_100AD9740);
      (*(*(v201 - 8) + 56))(v303, 1, 1, v201);
    }

    v202 = v309;
  }

  else
  {
    v187 = *v176;
    v188 = v292;
    v189 = *v176;
    v190 = v310;
    v191 = v311;
    sub_1002A8C04(v189, v310, v292, 0.0);
    v192 = *(sub_1001F1160(&qword_100AD98B0) + 52);
    v306 = v187;
    *(v188 + v192) = v187;
    *(v188 + *(sub_1001F1160(&qword_100AD98B8) + 36)) = 0x4014000000000000;
    sub_10079DE14();

    v194 = v235;
    v193 = v236;
    (*(v236 + 16))(v235, v191, v190);
    v195 = (*(v193 + 80) + 32) & ~*(v193 + 80);
    v196 = swift_allocObject();
    v197 = v304;
    *(v196 + 16) = v293;
    *(v196 + 24) = v197;
    (*(v193 + 32))(v196 + v195, v194, v190);
    v198 = (v188 + *(v233 + 36));
    *v198 = sub_1002ABF54;
    v198[1] = v196;
    v198[2] = 0;
    v198[3] = 0;
    if (qword_100AD1398 != -1)
    {
      swift_once();
    }

    if (byte_100B22FA8 == 1)
    {
      v199 = sub_10079DE54();
      v200 = swift_getKeyPath();
      sub_10079E474();
      sub_10079C414();
      *&v340 = v200;
      *(&v340 + 1) = v199;
      *&v341[7] = 0x4018000000000000;
      BKAppDelegate.enableMetricsInspectorOnDebugMode()();
      v360[1] = v341[5];
      v361 = v341[6];
      *&v362 = *&v341[7];
      v357 = v341[1];
      v358 = v341[2];
      v360[0] = v341[4];
      v359 = v341[3];
      v356 = v341[0];
      v355 = v340;
    }

    else
    {
      sub_1002ABF6C(&v355);
    }

    v203 = v237;
    sub_1000077D8(v292, v237, &qword_100AD96C8);
    v321[1] = v360[1];
    v322 = v361;
    v323 = v362;
    v318 = v357;
    v319 = v358;
    v320 = v359;
    v321[0] = v360[0];
    v316 = v355;
    v317 = v356;
    v204 = v238;
    sub_1000077D8(v203, v238, &qword_100AD96C8);
    v205 = v204 + *(sub_1001F1160(&qword_100AD98C0) + 48);
    v336[1] = v321[1];
    v337 = v322;
    v336[0] = v321[0];
    v335 = v320;
    v206 = v318;
    v334 = v319;
    v333 = v318;
    v207 = v316;
    v332 = v317;
    v331 = v316;
    v209 = v321[1];
    v208 = v322;
    v210 = v322;
    *(v205 + 96) = v321[1];
    *(v205 + 112) = v208;
    v211 = v319;
    v212 = v320;
    v213 = v319;
    v214 = v320;
    *(v205 + 32) = v206;
    *(v205 + 48) = v211;
    v215 = v321[0];
    v216 = v321[0];
    *(v205 + 64) = v212;
    *(v205 + 80) = v215;
    v217 = v317;
    v218 = v318;
    v219 = v317;
    *v205 = v316;
    *(v205 + 16) = v217;
    v341[5] = v209;
    v341[6] = v210;
    v341[1] = v218;
    v341[2] = v213;
    v341[4] = v216;
    v341[3] = v214;
    *&v338 = v323;
    *(v205 + 128) = v323;
    *&v341[7] = v323;
    v341[0] = v219;
    v340 = v207;
    sub_1000077D8(&v355, v315, &qword_100AD98C8);
    sub_1000077D8(&v331, v315, &qword_100AD98C8);
    sub_100007840(&v340, &qword_100AD98C8);
    sub_100007840(v203, &qword_100AD96C8);
    sub_1000077D8(v204, v256, &qword_100AD96C0);
    swift_storeEnumTagMultiPayload();
    sub_100005920(&qword_100AD9820, &qword_100AD96C0);
    sub_1002ABAD8();
    v220 = v303;
    sub_10079CCA4();
    sub_100007840(&v355, &qword_100AD98C8);

    sub_100007840(v204, &qword_100AD96C0);
    sub_100007840(v292, &qword_100AD96C8);
    v221 = sub_1001F1160(&qword_100AD9740);
    (*(*(v221 - 8) + 56))(v220, 0, 1, v221);
    v202 = v309;
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  }

  if (p_inst_props[115] != -1)
  {
    swift_once();
  }

  if (byte_100B22FA8 == 1)
  {
    v222 = sub_10079CB24();
    LOBYTE(v315[0]) = 1;
    sub_1002A9658(v296, v311, v307 & 1, v293, v304, &v355);
    v320 = v359;
    v321[0] = v360[0];
    *(v321 + 9) = *(v360 + 9);
    v316 = v355;
    v317 = v356;
    v318 = v357;
    v319 = v358;
    v332 = v356;
    v331 = v355;
    v333 = v357;
    v334 = v358;
    v335 = v359;
    v336[0] = v360[0];
    *(v336 + 9) = *(v360 + 9);
    sub_1000077D8(&v316, &v340, &qword_100AD98A8);
    sub_100007840(&v331, &qword_100AD98A8);
    *(&v324[3] + 7) = v319;
    *(&v324[4] + 7) = v320;
    *(&v324[5] + 7) = v321[0];
    v324[6] = *(v321 + 9);
    *(v324 + 7) = v316;
    *(&v324[1] + 7) = v317;
    *(&v324[2] + 7) = v318;
    v340 = v222;
    LOBYTE(v341[0]) = v315[0];
    *(&v341[2] + 1) = v324[2];
    *(&v341[1] + 1) = v324[1];
    *(v341 + 1) = v324[0];
    *(&v341[6] + 1) = *(v321 + 9);
    *(&v341[5] + 1) = v324[5];
    *(&v341[4] + 1) = v324[4];
    *(&v341[3] + 1) = v324[3];
    *(&v341[7] + 1) = 0x4018000000000000;
    BKAppDelegate.enableMetricsInspectorOnDebugMode()();
    v360[1] = v341[5];
    v361 = v341[6];
    v362 = v341[7];
    v357 = v341[1];
    v358 = v341[2];
    v360[0] = v341[4];
    v359 = v341[3];
    v356 = v341[0];
    v355 = v340;
  }

  else
  {
    sub_1002AAFA8(&v355);
  }

  v339[0] = KeyPath;
  v339[1] = v286;
  *&v316 = v339;
  v223 = v299;
  v224 = v300;
  (*(v298 + 16))(v299, v308, v300);
  *(&v316 + 1) = v223;
  v225 = v301;
  sub_1000077D8(v202, v301, &qword_100AD9670);
  *&v317 = v225;
  v226 = v305;
  v227 = v302;
  sub_1000077D8(v305, v302, &qword_100AD9678);
  *(&v317 + 1) = v227;
  v228 = v303;
  v229 = v290;
  sub_1000077D8(v303, v290, &qword_100AD9680);
  v336[1] = v360[1];
  v337 = v361;
  v338 = v362;
  v333 = v357;
  v334 = v358;
  v336[0] = v360[0];
  v335 = v359;
  v332 = v356;
  v331 = v355;
  *&v318 = v229;
  *(&v318 + 1) = &v331;

  sub_1000077D8(&v355, &v340, &qword_100AD9688);
  v315[0] = sub_1001F1160(&unk_100ADB470);
  v315[1] = v224;
  v315[2] = v287;
  v315[3] = v288;
  v315[4] = v289;
  v315[5] = sub_1001F1160(&qword_100AD9688);
  v325 = sub_1002AAFC4();
  v326 = v283;
  v327 = sub_1002AB0D0();
  v328 = sub_1002AB494();
  v329 = sub_1002AB99C();
  v330 = sub_1002ABDEC();
  sub_10038FA94(&v316, 6uLL, v315);
  sub_100007840(&v355, &qword_100AD9688);

  sub_100007840(v228, &qword_100AD9680);
  sub_100007840(v226, &qword_100AD9678);
  sub_100007840(v309, &qword_100AD9670);
  v230 = v284;
  v284(v308, v224);
  v341[5] = v336[1];
  v341[6] = v337;
  v341[7] = v338;
  v341[1] = v333;
  v341[2] = v334;
  v341[4] = v336[0];
  v341[3] = v335;
  v341[0] = v332;
  v340 = v331;
  sub_100007840(&v340, &qword_100AD9688);
  sub_100007840(v229, &qword_100AD9680);
  sub_100007840(v302, &qword_100AD9678);
  sub_100007840(v301, &qword_100AD9670);
  v230(v299, v224);
}

uint64_t sub_1002A832C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10079E454();
  a2[1] = v4;
  v5 = sub_1001F1160(&qword_100AD98F8);
  return sub_1002A8394(a1, a2 + *(v5 + 44));
}

uint64_t sub_1002A8394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AD98D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v39[-v5];
  v7 = sub_1001F1160(&qword_100AD9900);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v48 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v39[-v12];
  __chkstk_darwin(v11);
  v49 = &v39[-v14];
  v15 = type metadata accessor for PageTurnView();
  v16 = sub_1002AAB94(v15);
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  sub_10079B9A4();

  sub_1002AC320();
  v47 = sub_10079DEB4();
  v18 = *(a1 + *(v15 + 48));
  v19 = *(v18 + 56);
  ObjectType = swift_getObjectType();
  (*(v19 + 8))(ObjectType, v19);
  sub_10079E474();
  sub_10079BE54();
  v46 = v63;
  LOBYTE(v17) = v64;
  v45 = v65;
  LOBYTE(v19) = v66;
  v44 = v67;
  v43 = v68;
  v42 = sub_10079D2A4();
  v70 = v17;
  v69 = v19;
  swift_getKeyPath();
  v55[0] = v18;
  sub_1002AC374(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  v21 = *(v18 + OBJC_IVAR____TtC5Books19BookReaderViewModel__statusBarBackgroundOpacity);
  v22 = v70;
  v40 = v70;
  v23 = v69;
  v41 = v69;
  sub_1002B6F38(3, 1, v6);
  v24 = *(a1 + *(v15 + 52));
  swift_getKeyPath();
  v55[0] = v24;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  if (*(v24 + 17))
  {
    v25 = 1.0;
  }

  else
  {
    v25 = 0.0;
  }

  sub_10020B3C8(v6, v13, &qword_100AD98D8);
  *&v13[*(v8 + 44)] = v25;
  v26 = v49;
  sub_10020B3C8(v13, v49, &qword_100AD9900);
  v27 = v26;
  v28 = v48;
  sub_1000077D8(v27, v48, &qword_100AD9900);
  v29 = v47;
  *&v50 = v47;
  v30 = v46;
  *(&v50 + 1) = v46;
  LOBYTE(v51) = v22;
  v31 = v45;
  *(&v51 + 1) = v45;
  LOBYTE(v52) = v23;
  v32 = v44;
  *(&v52 + 1) = v44;
  v33 = v43;
  *&v53 = v43;
  v34 = v42;
  BYTE8(v53) = v42;
  v54 = v21;
  v35 = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = v35;
  *(a2 + 64) = v54;
  v36 = v51;
  *a2 = v50;
  *(a2 + 16) = v36;
  v37 = a2 + *(sub_1001F1160(&qword_100AD9910) + 48);
  sub_1000077D8(v28, v37, &qword_100AD9900);
  sub_1000077D8(&v50, v55, &qword_100AD9918);
  sub_100007840(v49, &qword_100AD9900);
  sub_100007840(v28, &qword_100AD9900);
  v55[0] = v29;
  v55[1] = v30;
  v56 = v40;
  v57 = v31;
  v58 = v41;
  v59 = v32;
  v60 = v33;
  v61 = v34;
  v62 = v21;
  return sub_100007840(v55, &qword_100AD9918);
}

uint64_t sub_1002A8928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_10079E464();
  a2[1] = v5;
  v6 = sub_1001F1160(&qword_100AD98D0);
  return sub_1002AA26C(v2, a1, a2 + *(v6 + 44));
}

uint64_t sub_1002A898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v8 = *(v3 + *(a2 + 80));
  v9 = a3 + *(sub_1001F1160(&qword_100AD97F0) + 36);
  v10 = *(sub_10079C3D4() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_10079C9E4();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = v8;
  *(v9 + 1) = v8;
  *&v9[*(sub_1001F1160(&qword_100AD97F8) + 36)] = 256;
  *a3 = KeyPath;
  a3[1] = a1;
  *(a3 + *(sub_1001F1160(&qword_100AD96D0) + 36)) = 0;
}

double sub_1002A8AAC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 1) == 0)
  {
    type metadata accessor for PageTurnView();
    sub_1003AB370();
  }

  sub_10079E474();
  sub_10079BE54();
  sub_10079E474();
  sub_10079C414();
  *(a2 + 104) = v7;
  *(a2 + 120) = v8;
  *(a2 + 136) = v9;
  *(a2 + 152) = v10;
  result = *&v4;
  *(a2 + 56) = v4;
  *(a2 + 72) = v5;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  *(a2 + 88) = v6;
  return result;
}

uint64_t sub_1002A8C04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v79 = a3;
  v8 = sub_1001F1160(&qword_100AD96D0);
  __chkstk_darwin(v8 - 8);
  v82 = (v70 - v9);
  v78 = sub_1001F1160(&qword_100AD96D8);
  __chkstk_darwin(v78);
  v77 = v70 - v10;
  v11 = sub_10079BC44();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v70 - v16;
  v18 = sub_1001F1160(&qword_100AD9798);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (v70 - v20);
  v70[0] = v70 - v20;
  v73 = sub_1001F1160(&qword_100AD9788) - 8;
  __chkstk_darwin(v73);
  v81 = v70 - v22;
  v75 = sub_1001F1160(&qword_100AD9868);
  __chkstk_darwin(v75);
  v76 = v70 - v23;
  v83 = a2;
  sub_1002A8928(a1, v21);
  v24 = v4;
  v25 = sub_1002AAB94(a2);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v25;
  sub_10079B9A4();

  v74 = enum case for ColorScheme.dark(_:);
  v72 = *(v12 + 104);
  v80 = v12 + 104;
  v72(v15);
  LOBYTE(a2) = sub_10079BC34();
  v27 = v12 + 8;
  v28 = *(v12 + 8);
  v70[1] = v27;
  v71 = v28;
  v28(v15, v11);
  v29 = v11;
  v28(v17, v11);
  v30 = v83;
  sub_1003AB370();
  v32 = v31;
  v33 = sub_10079E474();
  v34 = *(v19 + 44);
  v35 = v70[0];
  v36 = v70[0] + v34;
  *v36 = a2 & 1;
  *(v36 + 8) = v32;
  *(v36 + 16) = 1;
  *(v36 + 24) = 0x3FC999999999999ALL;
  *(v36 + 32) = v33;
  *(v36 + 40) = v37;
  v38 = sub_1002AAB94(v30);
  v39 = v24;
  sub_1003AB370();
  v41 = v40;
  v42 = *(v30 + 76);
  if (a4 >= 0.0)
  {
    v43 = -*(v24 + v42);
  }

  else
  {
    v43 = *(v24 + v42);
  }

  v44 = [objc_opt_self() currentTraitCollection];
  [v44 displayCornerRadius];
  v46 = v45;

  v47 = v81;
  sub_10020B3C8(v35, v81, &qword_100AD9798);
  v48 = v47 + *(v73 + 44);
  *v48 = v38;
  *(v48 + 8) = v41;
  *(v48 + 16) = v43;
  *(v48 + 24) = 0x3FB999999999999ALL;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0x4010000000000000;
  v49 = sub_1002AAB94(v30);
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v49;
  sub_10079B9A4();

  v51 = v72;
  (v72)(v15, enum case for ColorScheme.light(_:), v29);
  sub_10079BC34();
  v52 = v71;
  v71(v15, v29);
  v52(v17, v29);
  v53 = sub_10079DE54();

  v54 = v83;
  sub_1002A898C(v53, v83, v82);

  v73 = v39;
  v55 = sub_1002AAB94(v54);
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v55;
  sub_10079B9A4();

  (v51)(v15, v74, v29);
  LOBYTE(v56) = sub_10079BC34();
  v52(v15, v29);
  v52(v17, v29);
  v57 = 0.0;
  if (v56)
  {
    v58 = *(v73 + *(v83 + 72));
    sub_1003AB370();
    v57 = v58 * (1.0 - pow(1.0 - v59, 3.0));
  }

  v60 = v77;
  sub_10020B3C8(v82, v77, &qword_100AD96D0);
  *(v60 + *(v78 + 36)) = v57;
  v61 = sub_10079E474();
  v63 = v62;
  v64 = v76;
  v65 = &v76[*(v75 + 36)];
  sub_10020B3C8(v60, v65, &qword_100AD96D8);
  v66 = (v65 + *(sub_1001F1160(&qword_100AD9878) + 36));
  *v66 = v61;
  v66[1] = v63;
  sub_10020B3C8(v81, v64, &qword_100AD9788);
  v67 = v79;
  sub_10020B3C8(v64, v79, &qword_100AD9868);
  result = sub_1001F1160(&qword_100AD9858);
  v69 = v67 + *(result + 36);
  *v69 = a4;
  *(v69 + 8) = 0;
  return result;
}

uint64_t sub_1002A9370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageTurnView();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  if (qword_100AD1560 != -1)
  {
    swift_once();
  }

  v10 = qword_100B232E0;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v9, v6);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1002AC208;
  *(v13 + 24) = v12;
  swift_beginAccess();
  v14 = *(v10 + 24);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_10066ABC0(0, v14[2] + 1, 1, v14);
    *(v10 + 24) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_10066ABC0((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_10025D79C;
  v18[5] = v13;
  *(v10 + 24) = v14;
  swift_endAccess();
  sub_1003FB6F0();
}

uint64_t sub_1002A95C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(*(*(result + OBJC_IVAR____TtC5Books19BookReaderPresenter_interactor) + 176) + 16);
    v4 = *(v1 + 88);
    v2 = (v1 + 88);
    v3 = v4;
    if (v4)
    {
      *v2 = 0;
      v2[1] = 0;
      v3();
      sub_100007020(v3);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002A9658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40[1] = a4;
  v40[2] = a5;
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E474();
  sub_10079BE54();
  v16 = v46;
  v17 = v48;
  v41 = v51;
  v42 = v50;
  v54 = 1;
  v53 = v47;
  v52 = v49;
  v44 = 0x203A6574617453;
  v45 = 0xE700000000000000;
  sub_1002AC480(a1, v15, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1002AC2B8(v15, v12, type metadata accessor for PageTurnViewModel.State.Active);
      v19 = sub_1003ACF98();
      v21 = v20;
      sub_1002AC4E8(v12, type metadata accessor for PageTurnViewModel.State.Active);
      v22._countAndFlagsBits = v19;
    }

    else
    {
      v21 = 0xE400000000000000;
      v22._countAndFlagsBits = 1701602409;
    }
  }

  else
  {
    sub_1002AC4E8(v15, type metadata accessor for PageTurnViewModel.State);
    v21 = 0xE900000000000067;
    v22._countAndFlagsBits = 0x6E69726170657270;
  }

  v23 = v16;
  v24 = v17;
  v22._object = v21;
  sub_1007A23D4(v22);

  v55._countAndFlagsBits = 8238;
  v55._object = 0xE200000000000000;
  sub_1007A23D4(v55);
  v25 = *(a2 + *(type metadata accessor for PageTurnView() + 52));
  swift_getKeyPath();
  v43 = v25;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v26 = *(v25 + 64);
  v27 = *(v25 + 72);

  v56._countAndFlagsBits = v26;
  v56._object = v27;
  sub_1007A23D4(v56);

  if (a3)
  {
    _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  else
  {
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  }

  v28 = sub_10079D564();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v54;
  v36 = v53;
  v37 = v52;
  LOBYTE(v44) = v32 & 1;
  LOBYTE(v43) = 1;
  *a6 = 0;
  *(a6 + 8) = v35;
  *(a6 + 16) = v23;
  *(a6 + 24) = v36;
  *(a6 + 32) = v24;
  *(a6 + 40) = v37;
  v38 = v41;
  *(a6 + 48) = v42;
  *(a6 + 56) = v38;
  *(a6 + 64) = v28;
  *(a6 + 72) = v30;
  *(a6 + 80) = v32 & 1;
  *(a6 + 88) = v34;
  *(a6 + 96) = 0;
  *(a6 + 104) = 1;
  sub_1001F1894(v28, v30, v32 & 1);

  sub_10020B430(v28, v30, v32 & 1);
}

uint64_t sub_1002A9A18(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10079ACE4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v8 = qword_100B23750;
  sub_10079ACF4();
  v9 = sub_10079ACC4();
  v10 = sub_1007A2994();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v4;
    v12 = v11;
    v21 = swift_slowAlloc();
    v24 = v21;
    *v12 = 136315138;
    v23 = v7;
    sub_1001F1160(&qword_100AD9698);
    v13 = sub_1007A22E4();
    v15 = sub_1000070F4(v13, v14, &v24);
    v20 = v3;
    v16 = v15;

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "animate state change %s", v12, 0xCu);
    sub_1000074E0(v21);

    result = (*(v22 + 8))(v6, v20);
    if (v7 != 2)
    {
      goto LABEL_5;
    }

LABEL_8:
    type metadata accessor for PageTurnView();
    return sub_1002AA0C8();
  }

  result = (*(v4 + 8))(v6, v3);
  if (v7 == 2)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v7)
  {
    v18 = type metadata accessor for PageTurnView();
    return sub_1002A9CB0(v18);
  }

  return result;
}

uint64_t sub_1002A9CB0(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5StateO4TurnVMa(0);
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = v1;
  v12 = *(v1 + *(a1 + 52));
  swift_getKeyPath();
  v26 = v12;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v13 = sub_10079FE94();
  v15 = v14;
  if (v13 == sub_10079FE94() && v15 == v16)
  {

    goto LABEL_9;
  }

  v18 = sub_1007A3AB4();

  if (v18)
  {
LABEL_9:
    sub_1003AC128();
    v19 = sub_10079E524();
    goto LABEL_13;
  }

  swift_getKeyPath();
  v26 = v12;
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v5);
  sub_1002AC4E8(v8, type metadata accessor for PageTurnViewModel.State);
  if ((*(v23 + 48))(v5, 1, v9) == 1)
  {
    sub_100007840(v5, &qword_100AD8A78);
  }

  else
  {
    sub_1002AC2B8(v5, v11, _s5StateO4TurnVMa);
    if (*&v11[*(v9 + 36)] != 0.0)
    {
      sub_10079E504();
      v19 = sub_1002AC4E8(v11, _s5StateO4TurnVMa);
      goto LABEL_13;
    }

    sub_1002AC4E8(v11, _s5StateO4TurnVMa);
  }

  v19 = sub_10079E4C4();
LABEL_13:
  __chkstk_darwin(v19);
  v20 = v25;
  *(&v22 - 2) = *(v24 + 16);
  *(&v22 - 2) = v20;

  sub_10079BF94();
}

uint64_t sub_1002AA0C8()
{
  swift_getKeyPath();
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  sub_100797A14();

  v0 = sub_10079FE94();
  v2 = v1;
  if (v0 == sub_10079FE94() && v2 == v3)
  {

    goto LABEL_8;
  }

  v5 = sub_1007A3AB4();

  if (v5)
  {
LABEL_8:
    sub_1003AC128();
    v6 = sub_10079E524();
    goto LABEL_9;
  }

  v6 = sub_10079E504();
LABEL_9:
  __chkstk_darwin(v6);

  sub_10079BF94();
}

uint64_t sub_1002AA26C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v62 = a3;
  v4 = sub_1001F1160(&qword_100AD98D8);
  v5 = __chkstk_darwin(v4 - 8);
  v61 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v67 = &v52[-v7];
  v8 = sub_1001F1160(&qword_100AD98E0);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v66 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v52[-v13];
  __chkstk_darwin(v12);
  v16 = &v52[-v15];
  v17 = type metadata accessor for PageTurnView();
  v58 = a1;
  v18 = sub_1002AAB94(v17);
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  sub_10079B9A4();

  v20 = v69;
  KeyPath = swift_getKeyPath();
  sub_10079E474();
  sub_10079C414();
  v22 = sub_10079D294();
  v23 = *(a1 + *(v17 + 80));
  v24 = &v14[*(v9 + 44)];
  v25 = *(sub_10079C3D4() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_10079C9E4();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  *v24 = v23;
  *(v24 + 1) = v23;
  *&v24[*(sub_1001F1160(&qword_100AD97F8) + 36)] = 256;
  *v14 = KeyPath;
  *(v14 + 1) = v20;
  v28 = v74;
  *(v14 + 5) = v73;
  *(v14 + 6) = v28;
  *(v14 + 7) = v75;
  v29 = v70;
  *(v14 + 1) = v69;
  *(v14 + 2) = v29;
  v30 = v72;
  *(v14 + 3) = v71;
  *(v14 + 4) = v30;
  v14[128] = v22;
  v31 = v16;
  v56 = v16;
  sub_10020B3C8(v14, v16, &qword_100AD98E0);
  v32 = v65;
  [v65 frame];
  [v32 frame];
  sub_10079E474();
  sub_10079BE54();
  v55 = v106;
  v63 = v107;
  v64 = v105;
  v57 = v108;
  v59 = v110;
  v60 = v109;
  LOBYTE(v81) = v106;
  v68 = v108;
  v33 = *(v58 + *(v17 + 52));
  swift_getKeyPath();
  v87[0] = v33;
  sub_1002AC374(&qword_100AD9690, type metadata accessor for PageTurnViewModel);
  v34 = v32;
  v35 = v32;
  sub_100797A14();

  v54 = *(v33 + 40);
  v36 = v54;
  v37 = sub_10079D294();
  LOBYTE(v32) = v37;
  v53 = v37;
  LOBYTE(v87[0]) = 0;
  v38 = v67;
  sub_1002B6F38(35, 1, v67);
  v39 = v66;
  sub_1000077D8(v31, v66, &qword_100AD98E0);
  v40 = v38;
  v41 = v61;
  sub_1000077D8(v40, v61, &qword_100AD98D8);
  v42 = v39;
  v43 = v62;
  sub_1000077D8(v42, v62, &qword_100AD98E0);
  v44 = sub_1001F1160(&qword_100AD98E8);
  v45 = (v43 + *(v44 + 48));
  *&v81 = v35;
  *(&v81 + 1) = v64;
  LOBYTE(v35) = v55;
  LOBYTE(v82) = v55;
  *(&v82 + 1) = *v77;
  DWORD1(v82) = *&v77[3];
  *(&v82 + 1) = v63;
  LOBYTE(v33) = v57;
  LOBYTE(v83) = v57;
  *(&v83 + 1) = *v76;
  DWORD1(v83) = *&v76[3];
  v47 = v59;
  v46 = v60;
  *(&v83 + 1) = v60;
  *&v84 = v59;
  WORD4(v84) = 257;
  *(&v84 + 10) = v79;
  HIWORD(v84) = v80;
  LOBYTE(v85) = v32;
  DWORD1(v85) = *&v78[3];
  *(&v85 + 1) = *v78;
  *(&v85 + 1) = 0;
  *&v86[0] = 0;
  *(&v86[0] + 1) = v36;
  *&v86[1] = 0;
  BYTE8(v86[1]) = 0;
  v48 = v82;
  *v45 = v81;
  v45[1] = v48;
  v49 = v84;
  v45[2] = v83;
  v45[3] = v49;
  *(v45 + 89) = *(v86 + 9);
  v50 = v86[0];
  v45[4] = v85;
  v45[5] = v50;
  sub_1000077D8(v41, v43 + *(v44 + 64), &qword_100AD98D8);
  sub_1000077D8(&v81, v87, &qword_100AD98F0);
  sub_100007840(v67, &qword_100AD98D8);
  sub_100007840(v56, &qword_100AD98E0);
  sub_100007840(v41, &qword_100AD98D8);
  v87[0] = v65;
  v87[1] = v64;
  v88 = v35;
  *v89 = *v77;
  *&v89[3] = *&v77[3];
  v90 = v63;
  v91 = v33;
  *v92 = *v76;
  *&v92[3] = *&v76[3];
  v93 = v46;
  v94 = v47;
  v95 = 257;
  v97 = v80;
  v96 = v79;
  v98 = v53;
  *&v99[3] = *&v78[3];
  *v99 = *v78;
  v100 = 0;
  v101 = 0;
  v102 = v54;
  v103 = 0;
  v104 = 0;
  sub_100007840(v87, &qword_100AD98F0);
  return sub_100007840(v66, &qword_100AD98E0);
}

uint64_t sub_1002AA944@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079C3D4();
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [objc_opt_self() currentTraitCollection];
  [v6 displayCornerRadius];
  v8 = v7;

  v9 = *(v3 + 28);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = sub_10079C9E4();
  (*(*(v11 - 8) + 104))(&v5[v9], v10, v11);
  *v5 = v8;
  *(v5 + 1) = v8;
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v12 = sub_10079DE24();

  sub_10079BCF4();
  sub_1002AC480(v5, a1, &type metadata accessor for RoundedRectangle);
  v13 = a1 + *(sub_1001F1160(&qword_100AD9920) + 36);
  v14 = v22;
  *v13 = *&v21[8];
  *(v13 + 16) = v14;
  *(v13 + 32) = v23;
  v15 = sub_1001F1160(&qword_100AD9928);
  *(a1 + *(v15 + 52)) = v12;
  *(a1 + *(v15 + 56)) = 256;
  v16 = sub_10079E474();
  v18 = v17;
  sub_1002AC4E8(v5, &type metadata accessor for RoundedRectangle);
  result = sub_1001F1160(&qword_100AD9930);
  v20 = (a1 + *(result + 36));
  *v20 = v16;
  v20[1] = v18;
  return result;
}

uint64_t sub_1002AAB94(uint64_t a1)
{
  result = *(v1 + *(a1 + 56));
  if (!result)
  {
    type metadata accessor for ChromeStyle();
    sub_1002AC374(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002AAC60()
{
  type metadata accessor for PageTurnView();
  sub_10079BD54();
  return sub_10079BD24();
}

uint64_t sub_1002AACF8(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for PageTurnView();

  return sub_1002A9A18(a1, a2);
}

unint64_t sub_1002AAD94()
{
  result = qword_100AD96A0;
  if (!qword_100AD96A0)
  {
    sub_1001F1234(&qword_100AD9698);
    sub_1002AAE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD96A0);
  }

  return result;
}

unint64_t sub_1002AAE18()
{
  result = qword_100AD96A8;
  if (!qword_100AD96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD96A8);
  }

  return result;
}

unint64_t sub_1002AAF00()
{
  result = qword_100AD9720;
  if (!qword_100AD9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9720);
  }

  return result;
}

unint64_t sub_1002AAF54()
{
  result = qword_100AD9730;
  if (!qword_100AD9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9730);
  }

  return result;
}

double sub_1002AAFA8(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1002AAFC4()
{
  result = qword_100AD9748;
  if (!qword_100AD9748)
  {
    sub_1001F1234(&unk_100ADB470);
    sub_1002AB07C();
    sub_100005920(&unk_100AD1D10, &qword_100ADB490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9748);
  }

  return result;
}

unint64_t sub_1002AB07C()
{
  result = qword_100ADB480;
  if (!qword_100ADB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB480);
  }

  return result;
}

unint64_t sub_1002AB0D0()
{
  result = qword_100AD9750;
  if (!qword_100AD9750)
  {
    sub_1001F1234(&qword_100AD9670);
    sub_1002AB154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9750);
  }

  return result;
}

unint64_t sub_1002AB154()
{
  result = qword_100AD9758;
  if (!qword_100AD9758)
  {
    sub_1001F1234(&qword_100AD9700);
    sub_1002AB20C();
    sub_100005920(&qword_100AD9738, &qword_100AD9668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9758);
  }

  return result;
}

unint64_t sub_1002AB20C()
{
  result = qword_100AD9760;
  if (!qword_100AD9760)
  {
    sub_1001F1234(&qword_100AD9768);
    sub_1002AB298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9760);
  }

  return result;
}

unint64_t sub_1002AB298()
{
  result = qword_100AD9770;
  if (!qword_100AD9770)
  {
    sub_1001F1234(&qword_100AD9778);
    sub_1002AB324();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9770);
  }

  return result;
}

unint64_t sub_1002AB324()
{
  result = qword_100AD9780;
  if (!qword_100AD9780)
  {
    sub_1001F1234(&qword_100AD9788);
    sub_1002AB3B0();
    sub_1002AAF54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9780);
  }

  return result;
}

unint64_t sub_1002AB3B0()
{
  result = qword_100AD9790;
  if (!qword_100AD9790)
  {
    sub_1001F1234(&qword_100AD9798);
    sub_100005920(&qword_100AD97A0, &qword_100AD97A8);
    sub_100005920(&qword_100AD9728, &qword_100AD9660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9790);
  }

  return result;
}

unint64_t sub_1002AB494()
{
  result = qword_100AD97B0;
  if (!qword_100AD97B0)
  {
    sub_1001F1234(&qword_100AD9678);
    sub_1002AB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97B0);
  }

  return result;
}

unint64_t sub_1002AB518()
{
  result = qword_100AD97B8;
  if (!qword_100AD97B8)
  {
    sub_1001F1234(&qword_100AD96F8);
    sub_1002AB5D0();
    sub_100005920(&qword_100AD9738, &qword_100AD9668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97B8);
  }

  return result;
}

unint64_t sub_1002AB5D0()
{
  result = qword_100AD97C0;
  if (!qword_100AD97C0)
  {
    sub_1001F1234(&qword_100AD96F0);
    sub_1002AB65C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97C0);
  }

  return result;
}

unint64_t sub_1002AB65C()
{
  result = qword_100AD97C8;
  if (!qword_100AD97C8)
  {
    sub_1001F1234(&qword_100AD96E8);
    sub_1002AB714();
    sub_100005920(&qword_100AD4990, &qword_100ADBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97C8);
  }

  return result;
}

unint64_t sub_1002AB714()
{
  result = qword_100AD97D0;
  if (!qword_100AD97D0)
  {
    sub_1001F1234(&qword_100AD96E0);
    sub_1002AB7CC();
    sub_100005920(&qword_100AD9800, &qword_100AD9808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97D0);
  }

  return result;
}

unint64_t sub_1002AB7CC()
{
  result = qword_100AD97D8;
  if (!qword_100AD97D8)
  {
    sub_1001F1234(&qword_100AD96D8);
    sub_1002AB858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97D8);
  }

  return result;
}

unint64_t sub_1002AB858()
{
  result = qword_100AD97E0;
  if (!qword_100AD97E0)
  {
    sub_1001F1234(&qword_100AD96D0);
    sub_1002AB8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97E0);
  }

  return result;
}

unint64_t sub_1002AB8E4()
{
  result = qword_100AD97E8;
  if (!qword_100AD97E8)
  {
    sub_1001F1234(&qword_100AD97F0);
    sub_1002AAFC4();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD97E8);
  }

  return result;
}

unint64_t sub_1002AB99C()
{
  result = qword_100AD9810;
  if (!qword_100AD9810)
  {
    sub_1001F1234(&qword_100AD9680);
    sub_1002ABA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9810);
  }

  return result;
}

unint64_t sub_1002ABA20()
{
  result = qword_100AD9818;
  if (!qword_100AD9818)
  {
    sub_1001F1234(&qword_100AD9740);
    sub_100005920(&qword_100AD9820, &qword_100AD96C0);
    sub_1002ABAD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9818);
  }

  return result;
}

unint64_t sub_1002ABAD8()
{
  result = qword_100AD9828;
  if (!qword_100AD9828)
  {
    sub_1001F1234(&qword_100AD96B0);
    sub_1002ABB64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9828);
  }

  return result;
}

unint64_t sub_1002ABB64()
{
  result = qword_100AD9830;
  if (!qword_100AD9830)
  {
    sub_1001F1234(&qword_100AD9838);
    sub_1002ABBF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9830);
  }

  return result;
}

unint64_t sub_1002ABBF0()
{
  result = qword_100AD9840;
  if (!qword_100AD9840)
  {
    sub_1001F1234(&qword_100AD9848);
    sub_1002ABCA8();
    sub_100005920(&qword_100AD9738, &qword_100AD9668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9840);
  }

  return result;
}

unint64_t sub_1002ABCA8()
{
  result = qword_100AD9850;
  if (!qword_100AD9850)
  {
    sub_1001F1234(&qword_100AD9858);
    sub_1002ABD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9850);
  }

  return result;
}

unint64_t sub_1002ABD34()
{
  result = qword_100AD9860;
  if (!qword_100AD9860)
  {
    sub_1001F1234(&qword_100AD9868);
    sub_1002AB324();
    sub_100005920(&qword_100AD9870, &qword_100AD9878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9860);
  }

  return result;
}

unint64_t sub_1002ABDEC()
{
  result = qword_100AD9880;
  if (!qword_100AD9880)
  {
    sub_1001F1234(&qword_100AD9688);
    sub_1002ABE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9880);
  }

  return result;
}

unint64_t sub_1002ABE70()
{
  result = qword_100AD9888;
  if (!qword_100AD9888)
  {
    sub_1001F1234(&qword_100AD9890);
    sub_100005920(&qword_100AD9898, &qword_100AD98A0);
    sub_100005920(&qword_100AD9738, &qword_100AD9668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9888);
  }

  return result;
}

double sub_1002ABF6C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1002ABF88()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PageTurnView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  swift_unknownObjectWeakDestroy();
  v4 = v2[10];
  v5 = sub_10079BED4();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();

  v6 = v2[15];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079CEE4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v3 + v2[16], v1);
  v9 = v2[21];
  v10 = sub_10079ACE4();
  (*(*(v10 - 8) + 8))(v3 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1002AC220(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for PageTurnView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1002AC2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002AC320()
{
  result = qword_100AD9908;
  if (!qword_100AD9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9908);
  }

  return result;
}

uint64_t sub_1002AC374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AC3BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002AC410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002AC480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002AC4E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002AC5BC(void *a1)
{
  v2 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor;
  v3 = *(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor);
  *(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor) = a1;
  v9 = a1;

  v4 = [*(v1 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView) subviews];
  sub_10000A7C4(0, &qword_100AD7620);
  v5 = sub_1007A25E4();

  if (v5 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007A3784();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = *(v1 + v2);
  [v7 setTintColor:v8];

LABEL_9:
}

id sub_1002AC700()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [v0 layer];
  [v1 setAllowsGroupBlending:0];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:14.0];
  v3 = sub_1007A2214();
  v4 = [objc_opt_self() systemImageNamed:v3];

  if (v4)
  {
    v5 = [v4 imageWithConfiguration:v2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];

  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v7 layer];
  v9 = kCAFilterPlusL;
  [v8 setCompositingFilter:kCAFilterPlusL];

  [v0 addSubview:v7];
  v10 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100816E30;
  v12 = [v0 widthAnchor];
  v13 = [v12 constraintEqualToConstant:20.0];

  *(v11 + 32) = v13;
  v14 = [v0 heightAnchor];
  v15 = [v0 widthAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v11 + 40) = v16;
  v17 = [v7 centerXAnchor];
  v18 = [v0 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v11 + 48) = v19;
  v20 = [v7 centerYAnchor];

  v21 = [v0 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v11 + 56) = v22;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v10 activateConstraints:isa];

  v24 = [v0 layer];
  [v24 setCornerRadius:10.0];

  v25 = [v0 layer];
  [v25 setCompositingFilter:v9];

  [v0 setUserInteractionEnabled:0];
  return v0;
}

void sub_1002ACB34(double a1, double a2, double a3, double a4)
{
  v9 = sub_100796CF4();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v45 - v12;
  v51 = sub_1007A21D4();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v45 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent] = 0;
  *&v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_platterColor] = 0;
  *&v4[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_docIconColor] = 0;
  v17 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView;
  *&v4[v17] = sub_1002AC700();
  v18 = type metadata accessor for AudiobookNowPlayingTOCButton();
  v52.receiver = v4;
  v52.super_class = v18;
  v19 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v20 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView;
  v21 = *&v19[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView];
  v22 = v19;
  [v22 addSubview:v21];
  v23 = [v22 layer];
  [v23 setAllowsGroupBlending:0];

  sub_1001F1160(&unk_100AD8160);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100811360;
  v25 = [*&v19[v20] topAnchor];
  v26 = [v22 imageView];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 topAnchor];

    v29 = [v25 constraintEqualToAnchor:v28 constant:-8.0];
    *(v24 + 32) = v29;
    v30 = [*&v19[v20] trailingAnchor];
    v31 = [v22 imageView];

    if (v31)
    {
      v32 = objc_opt_self();
      v33 = [v31 trailingAnchor];

      v34 = [v30 constraintEqualToAnchor:v33 constant:8.0];
      *(v24 + 40) = v34;
      sub_10000A7C4(0, &qword_100AE9010);
      isa = sub_1007A25D4().super.isa;

      [v32 activateConstraints:isa];

      v36 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
      [v22 addInteraction:v36];

      v37 = v22;
      sub_1007A2154();
      v38 = v48;
      sub_100796C94();
      v39 = v46;
      (*(v46 + 16))(v45, v16, v51);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v41 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v43 = v49;
      v42 = v50;
      (*(v49 + 16))(v47, v38, v50);
      sub_1007A22D4();
      (*(v43 + 8))(v38, v42);
      (*(v39 + 8))(v16, v51);
      v44 = sub_1007A2214();

      [v37 setAccessibilityLabel:v44];

      [v37 setShowsLargeContentViewer:1];
      sub_1002AD1E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002AD1E0()
{
  v1 = OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent;
  v2 = sub_1007A2214();

  v3 = objc_opt_self();
  v4 = [v3 imageNamed:v2];

  if (v4)
  {
    v5 = [v4 imageFlippedForRightToLeftLayoutDirection];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
    objc_msgSendSuper2(&v13, "setImage:forState:", v5, 0);
    if (v0[v1] != 1)
    {
      v12 = [v0 imageForState:0];
      goto LABEL_10;
    }

    v14.width = 60.0;
    v14.height = 60.0;
    UIGraphicsBeginImageContext(v14);
    [v5 drawInRect:{0.0, 0.0, 60.0, 60.0}];
    v6 = sub_1007A2214();
    v7 = [v3 systemImageNamed:v6];

    if (v7)
    {
      v8 = [objc_opt_self() currentTraitCollection];
      v9 = [v8 layoutDirection];

      v10 = 40;
      if (v9 == 1)
      {
        v10 = 0;
      }

      [v7 drawAtPoint:{v10, 0.0}];
    }

    v11 = UIGraphicsGetImageFromCurrentImageContext();
    if (v11)
    {
      v12 = v11;
      UIGraphicsEndImageContext();
LABEL_10:
      [v0 setLargeContentImage:v12];

      [*&v0[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_supplementalView] setHidden:(v0[v1] & 1) == 0];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002AD4CC()
{
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for AudiobookNowPlayingTOCButton();
  v42.receiver = v0;
  v42.super_class = v14;
  v15 = objc_msgSendSuper2(&v42, "accessibilityValue");
  if (v15)
  {
    v37 = v9;
    v38 = v4;
    v39 = v7;
    v16 = v8;
    v17 = v2;
    v18 = v1;
    v19 = v15;
    v20 = sub_1007A2254();
    v22 = v21;

    v23 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_10000B3D8((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[16 * v25];
    *(v26 + 4) = v20;
    *(v26 + 5) = v22;
    v1 = v18;
    v2 = v17;
    v8 = v16;
    v4 = v38;
    v7 = v39;
    v9 = v37;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  if (*(v0 + OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent) == 1)
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v9 + 16))(v40, v13, v8);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v28 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    (*(v2 + 16))(v4, v7, v1);
    v29 = sub_1007A22D4();
    v31 = v30;
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v13, v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10000B3D8(0, *(v23 + 2) + 1, 1, v23);
    }

    v33 = *(v23 + 2);
    v32 = *(v23 + 3);
    if (v33 >= v32 >> 1)
    {
      v23 = sub_10000B3D8((v32 > 1), v33 + 1, 1, v23);
    }

    *(v23 + 2) = v33 + 1;
    v34 = &v23[16 * v33];
    *(v34 + 4) = v29;
    *(v34 + 5) = v31;
  }

  else if (!*(v23 + 2))
  {

    return 0;
  }

  v41 = v23;
  sub_1001F1160(&unk_100AD61F0);
  sub_10000B4E4();
  v35 = sub_1007A20B4();

  return v35;
}

id sub_1002AD988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTOCButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002ADA60@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v11[3] = *v2;
  v11[4] = &off_100A12EA8;
  v11[0] = v2;
  v5 = v2[6];
  type metadata accessor for ChromeStyle();
  sub_1002AF038(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

  *a2 = sub_10079C484();
  *(a2 + 8) = v6;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 40) = 0;
  KeyPath = swift_getKeyPath();
  *(a2 + 64) = 0u;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  sub_1002AEFC8(v11, a2 + 64);
  type metadata accessor for InfoBarViewModel();
  sub_1002AF038(&qword_100AD9B20, type metadata accessor for InfoBarViewModel);

  *(a2 + 112) = sub_10079C024();
  *(a2 + 120) = v8;
  *(a2 + 104) = a1;
  if (a1)
  {
    v9 = sub_1004B68F4();

    v5 = v9;
  }

  result = sub_100007840(v11, &qword_100AD9B18);
  *(a2 + 128) = v5;
  *(a2 + 136) = 0;
  return result;
}

uint64_t sub_1002ADC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_1001F1160(&qword_100AD7EB0);
  v4[8] = swift_task_alloc();
  v5 = sub_1001F1160(&qword_100AD9AF0);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1001F1160(&qword_100AD9AF8);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1007A26F4();
  v4[15] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1002ADDCC, v8, v7);
}

uint64_t sub_1002ADDCC()
{
  v1 = *(*(v0 + 56) + 32);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_1002ADDF0, v1, 0);
}

uint64_t sub_1002ADDF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v0[19] = v0[5];
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1002ADEA4, v1, v2);
}

uint64_t sub_1002ADEA4()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[7];
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    sub_10079E514();
    sub_10079BF94();
  }

  v4 = v0[18];

  return _swift_task_switch(sub_1002ADF88, v4, 0);
}

uint64_t sub_1002ADF88()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AD9B00);
  sub_10079B974();
  swift_endAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1002AE038, v1, v2);
}

uint64_t sub_1002AE038()
{
  v1 = v0[14];
  v12 = v0[12];
  v13 = v0[13];
  v2 = v0[10];
  v11 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  sub_100017E74();
  v6 = sub_1007A2D74();
  v0[6] = v6;
  v7 = sub_1007A2D24();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_100005920(&qword_100AD9B08, &qword_100AD9AF0);
  sub_1002AF038(&qword_100AE8CA0, sub_100017E74);
  sub_10079BAB4();
  sub_100007840(v3, &qword_100AD7EB0);

  (*(v2 + 8))(v11, v4);
  swift_allocObject();
  swift_weakInit();
  sub_100005920(&qword_100AD9B10, &qword_100AD9AF8);
  v8 = sub_10079BB04();

  (*(v13 + 8))(v1, v12);
  *(v5 + 40) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AE2BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    sub_10079E514();
    sub_10079BF94();
  }

  return result;
}

uint64_t sub_1002AE3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 56);
    sub_1002AEF10(*(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), *(a2 + 48));
    sub_1000260E8(v3);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10079B9B4();
  if (a2)
  {
    type metadata accessor for InfoBar.TimedMessage(0);
    swift_dynamicCastClass();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

uint64_t sub_1002AE534()
{
  sub_10002B130(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002AE5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 72) = a7;
  *(v7 + 24) = a5;
  *(v7 + 32) = a6;
  *(v7 + 16) = a4;
  sub_1007A26F4();
  *(v7 + 40) = sub_1007A26E4();
  v9 = sub_1007A2694();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return _swift_task_switch(sub_1002AE648, v9, v8);
}

uint64_t sub_1002AE648()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 64) = v1;
  return _swift_task_switch(sub_1002AE66C, v1, 0);
}

uint64_t sub_1002AE66C()
{
  v1 = *(v0 + 32);
  if (*(v0 + 72))
  {
    v1 = 3.0;
  }

  InfoBar.MessageQueue.addTimedMessage(_:duration:)(*(v0 + 24), v1);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return _swift_task_switch(sub_10022C3F4, v2, v3);
}

uint64_t sub_1002AE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1002AE780, v7, v6);
}

uint64_t sub_1002AE780()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 56) = v1;
  return _swift_task_switch(sub_1002AE7A4, v1, 0);
}

uint64_t sub_1002AE7A4()
{
  InfoBar.MessageQueue.setPersistentMessage(_:)(v0[3]);
  v1 = v0[5];
  v2 = v0[6];

  return _swift_task_switch(sub_1002AE80C, v1, v2);
}

uint64_t sub_1002AE80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002AE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1007A26F4();
  v4[3] = sub_1007A26E4();
  v6 = sub_1007A2694();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002AE904, v6, v5);
}

uint64_t sub_1002AE904()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 48) = v1;
  return _swift_task_switch(sub_1002AE928, v1, 0);
}

uint64_t sub_1002AE928()
{
  InfoBar.MessageQueue.removePersistentMessage()();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002AE98C, v1, v2);
}

uint64_t sub_1002AE98C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1002AE9EC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1002AEA7C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1002AEF7C(v1, v2, v3, v4, v5, v6);
  return sub_10079B9B4();
}

uint64_t sub_1002AEB40@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  *a1 = v3;
  return result;
}

uint64_t sub_1002AEBC0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10079B9B4();
}

void *sub_1002AEC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v7 - 8);
  v9 = v15 - v8;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[5] = 0;
  type metadata accessor for InfoBarViewModel();
  v10 = swift_allocObject();
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v17 = xmmword_100816EB0;
  sub_1001F1160(&qword_100AD9AE8);
  sub_10079B964();
  LOBYTE(v15[0]) = 0;
  sub_10079B964();
  v4[6] = v10;
  v4[3] = a2;
  v4[4] = a3;
  swift_unknownObjectWeakAssign();
  v11 = sub_1007A2744();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1007A26F4();
  swift_retain_n();

  v12 = sub_1007A26E4();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v4;
  sub_1003457A0(0, 0, v9, &unk_100816F58, v13);

  return v4;
}

uint64_t sub_1002AEE38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1002ADC2C(a1, v4, v5, v6);
}

uint64_t sub_1002AEF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 2u)
  {
    if (a5 != 2 && a5 != 3)
    {
      return result;
    }
  }
}

uint64_t sub_1002AEF7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  if (a6 != 1)
  {
    sub_1002AEF10(result, a2, a3, a4, a5);

    return sub_1000260E8(a6);
  }

  return result;
}

uint64_t sub_1002AEFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9B18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF038(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RenameActionItem()
{
  result = qword_100AD9B80;
  if (!qword_100AD9B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AF10C()
{
  sub_1001FEBC8(319, &unk_100AE9C00);
  if (v0 <= 0x3F)
  {
    sub_1001FEBC8(319, &qword_100AD4AF0);
    if (v1 <= 0x3F)
    {
      sub_1001FEB70();
      if (v2 <= 0x3F)
      {
        sub_1001FEBC8(319, &qword_100AE9C10);
        if (v3 <= 0x3F)
        {
          sub_1001FEBC8(319, &unk_100AD9B90);
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

double sub_1002AF230@<D0>(_OWORD *a1@<X8>)
{
  sub_10000E3E8(v1, v1[3]);
  sub_1007977A4();
  if (v5)
  {
    sub_1001FF70C(v4);
  }

  else
  {
    sub_1001FF7E0(v4, v6);
    sub_1001FF7E0(v6, v4);
    sub_1001F1160(&qword_100AD4B48);
    sub_1001F1160(qword_100AD4B50);
    if (swift_dynamicCast())
    {
      return result;
    }
  }

  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1002AF30C()
{
  sub_1002AF230(&v3);
  if (v4)
  {
    sub_1001FF7C8(&v3, &v5);
    sub_10000E3E8(&v5, v6);
    sub_1007976A4();
    if (v0)
    {
    }

    else
    {
      sub_10000E3E8(&v5, v6);
      sub_1007976B4();
      if ((sub_1007972D4() & 1) == 0)
      {
        sub_10000E3E8(&v5, v6);
        v2 = sub_1002BF76C();
        if (v2 == 2 || (v2 & 1) == 0)
        {
          sub_1000074E0(&v5);
          return 1;
        }
      }
    }

    sub_1000074E0(&v5);
  }

  else
  {
    sub_1001FF760(&v3);
  }

  return 0;
}

uint64_t sub_1002AF3FC()
{
  v1[2] = v0;
  v2 = sub_10079ACE4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1007A26F4();
  v1[6] = sub_1007A26E4();
  v4 = sub_1007A2694();

  return _swift_task_switch(sub_1002AF4F0, v4, v3);
}

uint64_t sub_1002AF4F0()
{

  v1 = sub_1002AF644();
  if (v1)
  {
    v2 = v1;
    sub_10000E3E8((v0[2] + 40), *(v0[2] + 64));
    sub_100796EC4();
  }

  else
  {
    sub_10079AC44();
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to create alertController", v9, 2u);
    }

    (*(v7 + 8))(v6, v8);
  }

  v10 = v0[1];

  return v10();
}

id sub_1002AF644()
{
  v1 = sub_10079ACE4();
  v66 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RenameActionItem();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v57 = v5;
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100796CF4();
  v6 = *(v60 - 1);
  __chkstk_darwin(v60);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  sub_1002AF230(&v73);
  if (v74)
  {
    sub_1001FF7C8(&v73, &v75);
    sub_10000E3E8(&v75, v76);
    sub_1007976B4();
    sub_1007972D4();
    v66 = v12;
    v55 = v0;
    sub_1007A2154();
    sub_100796C94();
    v18 = *(v12 + 16);
    v63 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19 = v14;
    v20 = v11;
    v21 = v19;
    v64 = v18;
    v18();
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = objc_opt_self();
    v24 = v17;
    v61 = ObjCClassFromMetadata;
    [v23 bundleForClass:ObjCClassFromMetadata];
    v25 = *(v6 + 16);
    v54 = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26 = v60;
    v62 = v25;
    v25(v65, v10, v60);
    sub_1007A22D4();
    v60 = *(v6 + 8);
    (v60)(v10, v26);
    v31 = *(v66 + 8);
    v66 += 8;
    v59 = v31;
    v31(v17, v20);
    v32 = sub_1007A2214();

    v33 = [objc_opt_self() alertControllerWithTitle:v32 message:0 preferredStyle:1];
    v51 = v33;

    sub_1002B0670(&v75, &v73);
    v34 = swift_allocObject();
    sub_1001FF7C8(&v73, (v34 + 16));
    v71 = sub_1002B06D4;
    v72 = v34;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v53 = &v69;
    v69 = sub_100201C54;
    v70 = &unk_100A12F28;
    v35 = _Block_copy(&aBlock);

    [v33 addTextFieldWithConfigurationHandler:v35];
    _Block_release(v35);
    sub_1007A2154();
    sub_100796C94();
    (v64)(v21, v17, v20);
    type metadata accessor for BundleFinder();
    v50 = objc_opt_self();
    v36 = [v50 bundleForClass:v61];
    v37 = v65;
    v62(v65, v10, v26);
    sub_1007A22D4();
    (v60)(v10, v26);
    v59(v24, v20);
    v38 = sub_1007A2214();

    v52 = objc_opt_self();
    v39 = [v52 actionWithTitle:v38 style:1 handler:0];

    v40 = v51;
    [v51 addAction:v39];

    sub_1007A2154();
    sub_100796C94();
    (v64)(v21, v24, v20);
    v41 = [v50 bundleForClass:v61];
    v62(v37, v10, v26);
    sub_1007A22D4();
    (v60)(v10, v26);
    v59(v24, v20);
    sub_1002B0670(&v75, &v73);
    v42 = v58;
    sub_1002B06E4(v55, v58);
    v43 = (*(v56 + 80) + 72) & ~*(v56 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    sub_1001FF7C8(&v73, (v44 + 24));
    sub_1002B0748(v42, v44 + v43);
    v45 = v40;
    v46 = sub_1007A2214();

    v71 = sub_1002B07AC;
    v72 = v44;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100201C54;
    v70 = &unk_100A12F78;
    v47 = _Block_copy(&aBlock);

    v48 = [v52 actionWithTitle:v46 style:0 handler:v47];
    _Block_release(v47);

    [v45 addAction:v48];
    sub_1000074E0(&v75);
  }

  else
  {
    v27 = v66;
    sub_1001FF760(&v73);
    sub_10079AC44();
    v28 = sub_10079ACC4();
    v29 = sub_1007A29B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "asset information unavailable to create alert controller", v30, 2u);
    }

    (*(v27 + 8))(v3, v1);
    return 0;
  }

  return v45;
}

void sub_1002B0144(void *a1, void *a2)
{
  sub_10000E3E8(a2, a2[3]);
  sub_100797664();
  if (v3)
  {
    v4 = sub_1007A2214();
  }

  else
  {
    v4 = 0;
  }

  [a1 setText:v4];
}

void sub_1002B01DC(int a1, id a2, void *a3, void *a4)
{
  v6 = [a2 textFields];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_10000A7C4(0, &qword_100AD8B58);
  v8 = sub_1007A25E4();

  if (v8 >> 62)
  {
    if (!sub_1007A38D4())
    {
      goto LABEL_21;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_1007A3784();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v22 = v9;

  v10 = [v22 text];
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = v10;
  sub_1007A2254();

  v12 = [v22 text];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1007A2254();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10000E3E8(a3, a3[3]);
  v17 = sub_100797664();
  if (v16)
  {
    if (v18)
    {
      if (v14 == v17 && v16 == v18)
      {

        goto LABEL_21;
      }

      v21 = sub_1007A3AB4();

      if (v21)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    v19 = a4[20];
    sub_10000E3E8(a4 + 16, a4[19]);
    sub_10000E3E8(a3, a3[3]);
    v20 = sub_100797674();
    (*(v19 + 48))(v20);

LABEL_21:

    return;
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_25:

LABEL_26:
}

uint64_t sub_1002B04C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1002AF3FC();
}

uint64_t sub_1002B0550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  sub_100009864(a1, a6);
  sub_100009864(a2, (a6 + 40));
  sub_100009864(a4, (a6 + 88));
  v12 = [objc_opt_self() defaultManager];
  *(a6 + 19) = sub_10000A7C4(0, &qword_100AD9BD0);
  *(a6 + 20) = &off_100A300A0;
  *(a6 + 16) = v12;
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v13 = *(a5 + 36);
  v14 = enum case for ContextActionType.rename(_:);
  v15 = sub_100797144();
  result = (*(*(v15 - 8) + 104))(&a6[v13], v14, v15);
  *(a6 + 10) = a3;
  return result;
}

uint64_t sub_1002B0670(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1002B06E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameActionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B0748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenameActionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002B07AC(int a1)
{
  v3 = *(type metadata accessor for RenameActionItem() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80)));

  sub_1002B01DC(a1, v4, (v1 + 24), v5);
}

__n128 sub_1002B082C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002B0848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B0890(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1002B090C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_10079CCC4();
  v44 = *(v1 - 8);
  v45 = v1;
  __chkstk_darwin(v1);
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10079E584();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10079C124();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AD9BE0);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v34 = sub_1001F1160(&qword_100AD9BE8);
  __chkstk_darwin(v34);
  v11 = &v31 - v10;
  v12 = sub_1001F1160(&qword_100AD9BF0);
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v36 = &v31 - v13;
  v14 = sub_1001F1160(&qword_100AD9BF8);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  if (sub_1007A0F94() > 1u)
  {
    v17 = sub_10079DF54();
  }

  else
  {
    v17 = sub_10079DF24();
  }

  sub_1002B1094(v17, v16);

  sub_1007A1024();
  sub_1002B30A8(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager);
  sub_10079C034();
  swift_getKeyPath();
  sub_10079C044();

  v46 = v49;
  v47 = v50;
  v48 = v51;
  __chkstk_darwin(v18);
  sub_1001F1160(&qword_100AD9C00);
  sub_1002B2A3C();
  sub_1002B2A90();
  sub_1002B2C24();
  sub_10079E104();
  sub_10079C114();
  sub_100005920(&qword_100AD9C70, &qword_100AD9BE0);
  v19 = v32;
  v20 = v35;
  sub_10079D704();
  (*(v33 + 8))(v6, v20);
  (*(v31 + 8))(v9, v19);
  KeyPath = swift_getKeyPath();
  v22 = v34;
  v23 = &v11[*(v34 + 36)];
  *v23 = KeyPath;
  v23[8] = 2;
  v24 = v39;
  sub_10079E574();
  v25 = sub_1002B2F60();
  v26 = v36;
  sub_10079DCB4();
  (*(v40 + 8))(v24, v41);
  sub_100007840(v11, &qword_100AD9BE8);
  v27 = v42;
  sub_10079C454();
  v49 = v22;
  v50 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  v28 = v38;
  v29 = v45;
  sub_10079D6F4();
  (*(v44 + 8))(v27, v29);
  (*(v37 + 8))(v26, v28);
  return sub_100007840(v16, &qword_100AD9BF8);
}

uint64_t sub_1002B1094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v42 - v3;
  v44 = sub_10079D4D4();
  v5 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AD8DD8);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v43 = sub_1001F1160(&qword_100AD9C48);
  __chkstk_darwin(v43);
  v12 = &v42 - v11;
  v45 = sub_1001F1160(&qword_100AD9C38);
  __chkstk_darwin(v45);
  v14 = &v42 - v13;
  v15 = enum case for Image.TemplateRenderingMode.template(_:);
  v16 = sub_10079DF74();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v10, v15, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  v42 = sub_10079DF44();
  sub_100007840(v10, &qword_100AD8DD8);
  sub_1001F1160(&qword_100AE17F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10080EFF0;
  LOBYTE(v16) = sub_10079D2A4();
  *(inited + 32) = v16;
  v19 = sub_10079D2B4();
  *(inited + 33) = v19;
  v20 = sub_10079D2D4();
  sub_10079D2D4();
  if (sub_10079D2D4() != v16)
  {
    v20 = sub_10079D2D4();
  }

  sub_10079D2D4();
  if (sub_10079D2D4() != v19)
  {
    v20 = sub_10079D2D4();
  }

  sub_10079BBA4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v44;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.callout(_:), v44);
  v30 = sub_10079D3A4();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  sub_10079D434();
  sub_100007840(v4, &unk_100AD1FC0);
  (*(v5 + 8))(v7, v29);
  sub_10079D3F4();
  v31 = sub_10079D464();

  KeyPath = swift_getKeyPath();
  v47 = 0;
  v33 = &v12[*(v43 + 36)];
  v34 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v35 = enum case for Image.Scale.large(_:);
  v36 = sub_10079DF84();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v12 = v42;
  v12[8] = v20;
  *(v12 + 2) = v22;
  *(v12 + 3) = v24;
  *(v12 + 4) = v26;
  *(v12 + 5) = v28;
  v12[48] = 0;
  *(v12 + 7) = KeyPath;
  *(v12 + 8) = v31;
  sub_10079E474();
  sub_10079C414();
  sub_1002B3170(v12, v14);
  v37 = &v14[*(v45 + 36)];
  v38 = v53;
  *(v37 + 4) = v52;
  *(v37 + 5) = v38;
  *(v37 + 6) = v54;
  v39 = v49;
  *v37 = v48;
  *(v37 + 1) = v39;
  v40 = v51;
  *(v37 + 2) = v50;
  *(v37 + 3) = v40;
  sub_1002B2CE0();
  sub_10079D944();
  return sub_100007840(v14, &qword_100AD9C38);
}

uint64_t sub_1002B167C()
{
  sub_1007A0294();
  swift_getKeyPath();
  sub_1001F1160(&qword_100AD9C90);
  sub_1001F1160(&qword_100AD9C98);
  sub_100005920(&qword_100AD9CA0, &qword_100AD9C90);
  sub_1001F1234(&qword_100AD9C18);
  sub_10079CEC4();
  sub_1001F1234(&qword_100AD1D70);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
  sub_1002B2A3C();
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle);
  swift_getOpaqueTypeConformance2();
  return sub_10079E264();
}

uint64_t sub_1002B1884@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v19[0] = sub_10079CEC4();
  v3 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AD1D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - v8;
  v10 = sub_1001F1160(&qword_100AD9C18);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12;
  LOBYTE(a1) = *a1;
  v21 = a1;
  v20 = a1;
  sub_10079DFC4();
  (*(v7 + 32))(v13, v9, v6);
  v14 = &v13[*(sub_1001F1160(&qword_100AD1D78) + 36)];
  *v14 = a1;
  v14[1] = 1;
  sub_10079CEB4();
  v15 = sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
  v16 = sub_1002B2A3C();
  v22 = v6;
  v23 = &type metadata for ThemeAppearance;
  v24 = v15;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle);
  v17 = v19[0];
  sub_10079D674();
  (*(v3 + 8))(v5, v17);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1002B1BE8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_100298BC8(a1);
  sub_100206ECC();
  result = sub_10079D5D4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1002B1C40@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 > 1u)
  {
    result = sub_10079DF54();
  }

  else
  {
    result = sub_10079DF24();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1002B1D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a3;
  v70 = a2;
  v59 = a1;
  v71 = a4;
  v4 = sub_100796CF4();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v66 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v52 - v7;
  v64 = sub_1007A21D4();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v52 - v10;
  v56 = sub_10079CA64();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10079D074();
  v13 = *(v53 - 8);
  __chkstk_darwin(v53);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&qword_100AD9CB8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v62 = sub_1001F1160(&qword_100AD9CC0);
  __chkstk_darwin(v62);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v58 = &v52 - v22;
  __chkstk_darwin(v23);
  v65 = &v52 - v24;
  sub_10079D054();
  v25 = sub_1001F1160(&qword_100AD9CC8);
  v26 = sub_100005920(&qword_100AD9CD0, &qword_100AD9CC8);
  sub_10079D9A4();
  (*(v13 + 8))(v15, v53);
  sub_10079CA44();
  v74 = v25;
  v75 = v26;
  swift_getOpaqueTypeConformance2();
  sub_10079D9D4();
  (*(v55 + 8))(v12, v56);
  (*(v17 + 8))(v19, v16);
  v27 = v57;
  sub_1007A2154();
  v28 = v63;
  sub_100796C94();
  v29 = v61;
  v30 = v64;
  (*(v61 + 16))(v60, v27, v64);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v33 = v67;
  v34 = v68;
  (*(v67 + 16))(v66, v28, v68);
  v35 = sub_1007A22D4();
  v37 = v36;
  (*(v33 + 8))(v28, v34);
  (*(v29 + 8))(v27, v30);
  v74 = v35;
  v75 = v37;
  sub_100206ECC();
  v38 = sub_10079D5D4();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v58;
  v43 = v54;
  sub_10079C1B4();
  sub_10020B430(v38, v40, v28 & 1);

  sub_100007840(v43, &qword_100AD9CC0);
  v44 = v69;
  sub_1007A0F94();
  v74 = sub_1002986F4();
  v75 = v45;
  v46 = sub_10079D5D4();
  v48 = v47;
  LOBYTE(v38) = v49;
  v50 = v65;
  sub_10079C1D4();
  sub_10020B430(v46, v48, v38 & 1);

  sub_100007840(v42, &qword_100AD9CC0);
  v72 = v70;
  v73 = v44;
  sub_1001F1160(&qword_100AD9CD8);
  sub_1002B33BC();
  sub_100005920(&qword_100AD9CE8, &qword_100AD9CD8);
  sub_10079DAC4();
  return sub_100007840(v50, &qword_100AD9CC0);
}

uint64_t sub_1002B2490@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10079CB24();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_1001F1160(&qword_100AD9CF0);
  return sub_1002B24F8(a1 + *(v2 + 44));
}

uint64_t sub_1002B24F8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100796CF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = sub_1007A21D4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = sub_1001F1160(&qword_100AD9BF8);
  __chkstk_darwin(v15 - 8);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  if (sub_1007A0F94() > 1u)
  {
    v20 = sub_10079DF54();
  }

  else
  {
    v20 = sub_10079DF24();
  }

  sub_1002B1094(v20, v19);

  sub_1007A2154();
  sub_100796C94();
  (*(v9 + 16))(v11, v14, v8);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v2 + 16))(v4, v7, v1);
  v23 = sub_1007A22D4();
  v25 = v24;
  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v14, v8);
  v40 = v23;
  v41 = v25;
  sub_100206ECC();
  v26 = sub_10079D5D4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v38;
  sub_1002B30F0(v19, v38);
  v34 = v39;
  sub_1002B30F0(v33, v39);
  v35 = v34 + *(sub_1001F1160(&qword_100AD9CF8) + 48);
  *v35 = v26;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30 & 1;
  *(v35 + 24) = v32;
  sub_1001F1894(v26, v28, v30 & 1);

  sub_100007840(v19, &qword_100AD9BF8);
  sub_10020B430(v26, v28, v30 & 1);

  return sub_100007840(v33, &qword_100AD9BF8);
}

uint64_t sub_1002B2980@<X0>(uint64_t a1@<X8>)
{
  sub_1002B090C(a1);
  sub_1007A1024();
  sub_1002B30A8(&qword_100AE42E0, &type metadata accessor for ThemeAppearanceManager);

  v2 = sub_10079C024();
  v4 = v3;
  result = sub_1001F1160(&qword_100AD9BD8);
  v6 = (a1 + *(result + 36));
  *v6 = v2;
  v6[1] = v4;
  return result;
}

unint64_t sub_1002B2A3C()
{
  result = qword_100AD9C08;
  if (!qword_100AD9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C08);
  }

  return result;
}

unint64_t sub_1002B2A90()
{
  result = qword_100AD9C10;
  if (!qword_100AD9C10)
  {
    sub_1001F1234(&qword_100AD9C00);
    sub_1001F1234(&qword_100AD9C18);
    sub_10079CEC4();
    sub_1001F1234(&qword_100AD1D70);
    sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
    sub_1002B2A3C();
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AD9C20, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C10);
  }

  return result;
}

unint64_t sub_1002B2C24()
{
  result = qword_100AD9C28;
  if (!qword_100AD9C28)
  {
    sub_1001F1234(&qword_100AD9BF8);
    sub_1002B2CE0();
    sub_1002B30A8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C28);
  }

  return result;
}

unint64_t sub_1002B2CE0()
{
  result = qword_100AD9C30;
  if (!qword_100AD9C30)
  {
    sub_1001F1234(&qword_100AD9C38);
    sub_1002B2D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C30);
  }

  return result;
}

unint64_t sub_1002B2D6C()
{
  result = qword_100AD9C40;
  if (!qword_100AD9C40)
  {
    sub_1001F1234(&qword_100AD9C48);
    sub_1002B2E24();
    sub_100005920(&unk_100AD1D00, &qword_100AEE3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C40);
  }

  return result;
}

unint64_t sub_1002B2E24()
{
  result = qword_100AD9C50;
  if (!qword_100AD9C50)
  {
    sub_1001F1234(&qword_100AD9C58);
    sub_1002B2EDC();
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C50);
  }

  return result;
}

unint64_t sub_1002B2EDC()
{
  result = qword_100AD9C60;
  if (!qword_100AD9C60)
  {
    sub_1001F1234(&qword_100AD9C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C60);
  }

  return result;
}

unint64_t sub_1002B2F60()
{
  result = qword_100AD9C78;
  if (!qword_100AD9C78)
  {
    sub_1001F1234(&qword_100AD9BE8);
    sub_1001F1234(&qword_100AD9BE0);
    sub_10079C124();
    sub_100005920(&qword_100AD9C70, &qword_100AD9BE0);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD9C80, &qword_100AD9C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9C78);
  }

  return result;
}

uint64_t sub_1002B30A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B30F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B3170(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9C48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B31F0()
{
  result = qword_100AD9CA8;
  if (!qword_100AD9CA8)
  {
    sub_1001F1234(&qword_100AD9BD8);
    sub_1001F1234(&qword_100AD9BF0);
    sub_10079CCC4();
    sub_1001F1234(&qword_100AD9BE8);
    sub_1002B2F60();
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1002B3344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CA8);
  }

  return result;
}

unint64_t sub_1002B3344()
{
  result = qword_100AD9CB0;
  if (!qword_100AD9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CB0);
  }

  return result;
}

unint64_t sub_1002B33BC()
{
  result = qword_100AD9CE0;
  if (!qword_100AD9CE0)
  {
    sub_1001F1234(&qword_100AD9CC0);
    sub_1001F1234(&qword_100AD9CC8);
    sub_100005920(&qword_100AD9CD0, &qword_100AD9CC8);
    swift_getOpaqueTypeConformance2();
    sub_1002B30A8(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9CE0);
  }

  return result;
}

uint64_t type metadata accessor for MenuMaterial()
{
  result = qword_100AD9D58;
  if (!qword_100AD9D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B355C()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    sub_1002B3658();
    if (v1 <= 0x3F)
    {
      sub_10029004C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1002B3600()
{
  result = qword_100ADB6A0;
  if (!qword_100ADB6A0)
  {
    type metadata accessor for ChromeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB6A0);
  }

  return result;
}

void sub_1002B3658()
{
  if (!qword_100ADB690)
  {
    sub_10079BC44();
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADB690);
    }
  }
}

uint64_t sub_1002B36CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100AD9D98);
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = *v2;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_10079B9A4();

    v10 = v22[1];
    v11 = sub_10079D294();
    v12 = sub_1001F1160(&qword_100AD9DA0);
    (*(*(v12 - 8) + 16))(v7, a1, v12);
    v13 = &v7[*(v5 + 36)];
    *v13 = v10;
    v13[8] = v11;
    v14 = *(v2 + *(type metadata accessor for MenuMaterial() + 28));
    v15 = v9;
    v16 = sub_10044C804(v14);

    v17 = sub_10079E474();
    v19 = v18;
    sub_1002B38B4(v7, a2);
    result = sub_1001F1160(&qword_100AD9DA8);
    v21 = (a2 + *(result + 36));
    *v21 = v16;
    v21[1] = v17;
    v21[2] = v19;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B38B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9D98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B3924()
{
  result = qword_100AD9DB0;
  if (!qword_100AD9DB0)
  {
    sub_1001F1234(&qword_100AD9DA8);
    sub_1002B39DC();
    sub_100005920(&qword_100AD9DC8, &qword_100AD9DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DB0);
  }

  return result;
}

unint64_t sub_1002B39DC()
{
  result = qword_100AD9DB8;
  if (!qword_100AD9DB8)
  {
    sub_1001F1234(&qword_100AD9D98);
    sub_100005920(&qword_100AD9DC0, &qword_100AD9DA0);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9DB8);
  }

  return result;
}

void sub_1002B3B08()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
  if (v2)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v2;
    sub_100796894();

    v4 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers;
    swift_beginAccess();
    sub_1007A25C4();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100796894();

    swift_beginAccess();
    sub_1007A25C4();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1007A2614();
    }

    sub_1007A2644();
    swift_endAccess();
  }

  else
  {
    v5 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers;
    swift_beginAccess();
    *(v1 + v5) = _swiftEmptyArrayStorage;
  }
}

void sub_1002B3DDC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset);
  *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset) = a1;
  v4 = a1;

  if (a1)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    v6 = sub_100796894();

    v7 = *(v5 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver);
    *(v5 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver) = v6;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver);
    *(v1 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver) = 0;
  }
}

void sub_1002B3F04()
{
  v1 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton;
  if (!*&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton])
  {
    [v0 frame];
    v3 = v2 * 0.5 + -13.5;
    [v0 frame];
    v5 = [objc_allocWithZone(IMRadialProgressButton) initWithFrame:{v3, v4 * 0.5 + -13.5, 27.0, 27.0}];
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;

    if (v7)
    {
      [v7 setInscribeProgress:1];
    }

    v8 = *&v0[v1];
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 bc_booksWhite];
      [v10 setProgressColor:v11];

      v12 = *&v0[v1];
      if (!v12 || ([v12 setProgressLineCap:1], (v12 = *&v0[v1]) == 0))
      {
LABEL_10:
        [v12 setTrackDiameter:27.0];
        v17 = *&v0[v1];
        if (v17)
        {
          [v17 setProgressThickness:3.0];
          v18 = *&v0[v1];
          if (v18)
          {
            [v18 setTouchInsets:{-27.0, -27.0, -27.0, -27.0}];
            v19 = *&v0[v1];
            if (v19)
            {
              [v19 addTarget:v0 action:"stopDownloadButtonPressed" forControlEvents:1];
            }
          }
        }

        [v0 bounds];
        v24 = [objc_allocWithZone(UIView) initWithFrame:{v20, v21, v22, v23}];
        v25 = *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView];
        *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = v24;
        v26 = v24;

        if (v26)
        {
          [v0 addSubview:v26];

          if (*&v0[v1])
          {
            [v0 addSubview:?];
            goto LABEL_17;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      [v12 setTrackThickness:1.0];
      v13 = *&v0[v1];
      if (v13)
      {
        v14 = objc_opt_self();
        v15 = v13;
        v16 = [v14 bc_booksGroupedBackground];
        [v15 setTrackColor:v16];

        v12 = *&v0[v1];
        goto LABEL_10;
      }
    }

    v12 = 0;
    goto LABEL_10;
  }

LABEL_17:
  v27 = *&v0[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus];
  if (v27)
  {
    [v27 progressValue];
    *&v28 = v28;
  }

  else
  {
    v28 = 0.0;
  }

  v29 = *&v0[v1];

  [v29 setProgress:v28];
}

void sub_1002B42B0()
{
  v1 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset);
  if (v1)
  {
    v23 = v1;
    if ([v23 isDownloading])
    {
      v2 = [objc_opt_self() sharedController];
      if (v2)
      {
        v3 = v2;
        v4 = [v23 permanentOrTemporaryAssetID];
        if (!v4)
        {
          sub_1007A2254();
          v4 = sub_1007A2214();
        }

        v5 = [v3 statusForAssetID:v4];

        v6 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
        *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus) = v5;
        v7 = v5;

        sub_1002B3B08();
        sub_1002B3F04();
        v8 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView;
        v9 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView);
        if (v9)
        {
          v10 = objc_opt_self();
          v11 = v9;
          v12 = [v10 bc_booksBlack];
          [v11 setBackgroundColor:v12];

          v13 = *(v0 + v8);
          if (v13)
          {
            v14 = v13;
            [v14 setAlpha:0.5];
          }
        }
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  v15 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus);
  *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus) = 0;

  sub_1002B3B08();
  v16 = OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView;
  v17 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView);
  if (v17)
  {
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 clearColor];
    [v19 setBackgroundColor:v20];
  }

  v21 = *(v0 + OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton);
  if (v21)
  {
    [v21 removeFromSuperview];
  }

  v22 = *(v0 + v16);

  [v22 removeFromSuperview];
}

void sub_1002B4518(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

id sub_1002B4574(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_kProgressDiameter] = 0x403B000000000000;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus] = 0;
  *&v4[OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1002B4670(void *a1)
{
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressButton] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_dimmedView] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_progressObservers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_assetObserver] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_kProgressDiameter] = 0x403B000000000000;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_downloadProgressStatus] = 0;
  *&v1[OBJC_IVAR___BKDimmedCoverDownloadProgressView_asset] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1002B476C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DimmedCoverDownloadProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002B48DC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B22FB0);
  sub_100008B98(v0, qword_100B22FB0);
  return sub_10079ACD4();
}

void sub_1002B495C()
{
  sub_1002B3658();
  if (v0 <= 0x3F)
  {
    sub_100247C8C();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1002B4E70();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002B4A30(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_10079BC44() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
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

  if (v12 < a2)
  {
    v13 = ((((((v11 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v10 + 24) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
    v14 = v13 & 0xFFFFFFF8;
    if ((v13 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = a2 - v12 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *(a1 + v13);
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    v24 = v12 + (v21 | v20);
    return (v24 + 1);
  }

LABEL_29:
  v22 = ((a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 <= 0x7FFFFFFE)
  {
    v23 = *v22;
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    v24 = v23 - 1;
    if (v24 < 0)
    {
      v24 = -1;
    }

    return (v24 + 1);
  }

  v25 = *(*(*(a3 + 16) - 8) + 48);

  return v25((v22 + v10 + 16) & ~v10);
}

void sub_1002B4C20(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_10079BC44() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((((((*(v10 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v11 > 0x7FFFFFFE)
      {
        v22 = *(v10 + 56);

        v22((v21 + v12 + 16) & ~v12, a2);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *v21 = (a2 - 0x7FFFFFFF);
        v21[1] = 0;
      }

      else
      {
        *v21 = a2;
      }

      return;
    }
  }

  if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((((((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

void sub_1002B4E70()
{
  if (!qword_100AD9EC0)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD9EC0);
    }
  }
}

uint64_t sub_1002B4F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  sub_1001F1234(&qword_100AD9EC8);
  v4 = *(a1 + 16);
  v5 = a1;
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v6 = sub_10079E1A4();
  v7 = sub_10079C2A4();
  v8 = sub_10079C2A4();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v30 = &v26 - v9;
  v10 = *(v6 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v28 = v7;
  v29 = *(v7 - 8);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v26 = v5;
  v17 = *(v5 + 24);
  v34 = v4;
  v35 = v17;
  v36 = v2;
  sub_10079E474();
  sub_10079E194();
  sub_10079E474();
  WitnessTable = swift_getWitnessTable();
  v27 = v16;
  sub_10079DB14();
  (*(v10 + 8))(v13, v6);
  v19 = *(v2 + *(v26 + 52));
  if (v19 == 1)
  {
    UIAccessibilityIsReduceMotionEnabled();
  }

  sub_10079E634();
  v39 = WitnessTable;
  v40 = &protocol witness table for _FrameLayout;
  v20 = v28;
  v21 = swift_getWitnessTable();
  v22 = v30;
  v23 = v27;
  sub_10079D724();
  if (v19)
  {
    sub_10079E4A4();
  }

  else
  {
    sub_10079E4C4();
  }

  v37 = v21;
  v38 = &protocol witness table for _ScaleEffect;
  v24 = v32;
  swift_getWitnessTable();
  sub_1006DB190();

  (*(v31 + 8))(v22, v24);
  return (*(v29 + 8))(v23, v20);
}

uint64_t sub_1002B538C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079C2A4();
  v40 = *(v10 - 8);
  __chkstk_darwin(v10);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  __chkstk_darwin(v15);
  v42 = &v37 - v16;
  v39 = sub_1001F1160(&qword_100AD9EC8);
  v45 = *(v39 - 8);
  __chkstk_darwin(v39);
  v43 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v21 = type metadata accessor for MenuItemButtonView();
  sub_1002B5820();
  (*(v7 + 16))(v9, a1 + *(v21 + 40), a2);
  sub_10079DBB4();
  (*(v7 + 8))(v9, a2);
  v55[2] = a3;
  v55[3] = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v22 = v42;
  sub_10039232C(v14, v10, WitnessTable);
  v23 = v40;
  v24 = *(v40 + 8);
  v24(v14, v10);
  v25 = v43;
  v26 = v39;
  (*(v45 + 16))(v43, v20, v39);
  v55[0] = v25;
  v27 = v44;
  (*(v23 + 16))(v44, v22, v10);
  v55[1] = v27;
  v54[0] = v26;
  v54[1] = v10;
  v28 = v26;
  v29 = sub_1001F1234(&qword_100AD9ED0);
  v30 = sub_1001F1234(&qword_100AD9ED8);
  v31 = sub_1001F1234(&qword_100AD9EE0);
  v32 = sub_1002B6130();
  v33 = sub_1002B61E8();
  v34 = sub_1002B62A0();
  OpaqueTypeConformance2 = v29;
  v47 = &type metadata for Solarium;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = &protocol witness table for Solarium;
  v52 = v33;
  v53 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = WitnessTable;
  sub_10038FA94(v55, 2uLL, v54);
  v24(v42, v10);
  v35 = *(v45 + 8);
  v35(v20, v28);
  v24(v44, v10);
  return (v35)(v43, v28);
}

uint64_t sub_1002B5820()
{
  v1 = sub_1001F1160(&qword_100AD9ED0);
  __chkstk_darwin(v1);
  v3 = &v21[-v2];
  v4 = sub_10079C3D4();
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 28);
  v9 = enum case for RoundedCornerStyle.continuous(_:);
  v10 = sub_10079C9E4();
  (*(*(v10 - 8) + 104))(&v6[v8], v9, v10);
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  *v3 = sub_10079E474();
  v3[1] = v16;
  v17 = sub_1001F1160(&qword_100AD9F10);
  sub_1002B5AA8(v0, v3 + *(v17 + 44));
  sub_10079E474();
  sub_10079BE54();
  v18 = (v3 + *(v1 + 36));
  v19 = v24;
  *v18 = v23;
  v18[1] = v19;
  v18[2] = v25;
  sub_10079E414();
  v22 = v6;
  sub_1001F1160(&qword_100AD9ED8);
  sub_1001F1160(&qword_100AD9EE0);
  sub_1002B6130();
  sub_1002B61E8();
  sub_1002B62A0();
  sub_10079DC54();
  sub_100007840(v3, &qword_100AD9ED0);
  return sub_1002B6360(v6);
}

uint64_t sub_1002B5AA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v51 = a2;
  v3 = sub_10079BC44();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_10079E534();
  v48 = *(v9 - 8);
  v49 = v9;
  __chkstk_darwin(v9);
  v46 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD9F18);
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v45 = &v40 - v15;
  v16 = sub_1001F1160(&qword_100AD9F20);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for MenuItemButtonView();
  if (*(a1 + *(v22 + 56)) == 1)
  {
    v43 = sub_10079DE94();
    KeyPath = swift_getKeyPath();
    v23 = sub_1002B6420(v22);
    swift_getKeyPath();
    v44 = a1;
    swift_getKeyPath();
    v41 = v11;
    v24 = v3;
    v25 = v23;
    sub_10079B9A4();

    v26 = v47;
    (*(v4 + 104))(v47, enum case for ColorScheme.dark(_:), v24);
    LOBYTE(v25) = sub_10079BC34();
    v27 = *(v4 + 8);
    v27(v26, v24);
    v27(v8, v24);
    a1 = v44;
    v28 = v48;
    v29 = &enum case for BlendMode.plusLighter(_:);
    if ((v25 & 1) == 0)
    {
      v29 = &enum case for BlendMode.plusDarker(_:);
    }

    v30 = v46;
    v31 = v49;
    (*(v48 + 104))(v46, *v29, v49);
    v32 = v41;
    (*(v28 + 32))(v13 + *(v41 + 36), v30, v31);
    v33 = v43;
    *v13 = KeyPath;
    v13[1] = v33;
    v34 = v13;
    v35 = v45;
    sub_1002B6474(v34, v45);
    sub_1002B6474(v35, v21);
    (*(v50 + 56))(v21, 0, 1, v32);
  }

  else
  {
    (*(v50 + 56))(v21, 1, 1, v11);
  }

  v36 = *(a1 + *(v22 + 60));
  sub_1000077D8(v21, v18, &qword_100AD9F20);
  v37 = v51;
  *v51 = 1;
  v38 = sub_1001F1160(&qword_100AD9F28);
  sub_1000077D8(v18, &v37[*(v38 + 48)], &qword_100AD9F20);
  *&v37[*(v38 + 64)] = v36;
  swift_retain_n();
  sub_100007840(v21, &qword_100AD9F20);

  return sub_100007840(v18, &qword_100AD9F20);
}

uint64_t sub_1002B5FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1001F1160(&qword_100AD9ED8) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = sub_10079C9E4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1001F1160(&unk_100AE42C0) + 36)) = 256;
  return sub_1000077D8(a1, a2, &qword_100AD9ED0);
}

uint64_t sub_1002B608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a3 + *(sub_1001F1160(&qword_100AD9EE0) + 36);
  sub_1002B63BC(a2, v6);
  *(v6 + *(sub_1001F1160(&qword_100AD97F8) + 36)) = 256;
  return sub_1000077D8(a1, a3, &qword_100AD9ED0);
}

unint64_t sub_1002B6130()
{
  result = qword_100AD9EE8;
  if (!qword_100AD9EE8)
  {
    sub_1001F1234(&qword_100AD9ED0);
    sub_100005920(&qword_100AD9EF0, &qword_100AD9EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9EE8);
  }

  return result;
}

unint64_t sub_1002B61E8()
{
  result = qword_100AD9F00;
  if (!qword_100AD9F00)
  {
    sub_1001F1234(&qword_100AD9ED8);
    sub_1002B6130();
    sub_100005920(&qword_100AD5530, &unk_100AE42C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F00);
  }

  return result;
}

unint64_t sub_1002B62A0()
{
  result = qword_100AD9F08;
  if (!qword_100AD9F08)
  {
    sub_1001F1234(&qword_100AD9EE0);
    sub_1002B6130();
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F08);
  }

  return result;
}

uint64_t sub_1002B6360(uint64_t a1)
{
  v2 = sub_10079C3D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002B63BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079C3D4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B6420(uint64_t a1)
{
  result = *(v1 + *(a1 + 36));
  if (!result)
  {
    type metadata accessor for ChromeStyle();
    sub_1002B3600();
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B6474(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9F18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002B64E4()
{
  result = qword_100AD9F30;
  if (!qword_100AD9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F30);
  }

  return result;
}

id BEChromeRootView.__allocating_init(frame:actionMenuState:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState] = a1;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id BEChromeRootView.init(frame:actionMenuState:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *&v5[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState] = a1;
  v11.receiver = v5;
  v11.super_class = type metadata accessor for BEChromeRootView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id MiniPlayerHostingTabBarController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

uint64_t BEChromeRootView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_10025D2FC();
  v8 = sub_1007A25E4();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:

    return 0;
  }

  result = sub_1007A38D4();
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_1007A3784();
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_6:
    v11 = v10;

    v12 = [v11 hitTest:a1 withEvent:{a2, a3}];
    if (v12)
    {
      v13 = v12;
      if (v12 != v11)
      {
LABEL_10:

        return v13;
      }

      v14 = *&v3[OBJC_IVAR____TtC5Books16BEChromeRootView_actionMenuState];
      swift_getKeyPath();
      sub_1002B6BE0();

      sub_100797A14();

      v15 = *(v14 + 328);
      sub_1002B6C38(v15);

      if ((v15 >> 62) <= 1)
      {
        sub_1002B6C54(v15);
        goto LABEL_10;
      }

      if (__ROR8__(v15 ^ 0x8000000000000000, 3))
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

id LibraryCollectionTitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id BEChromeRootView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BEChromeRootView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002B6AB0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B6BE0();
  sub_100797A14();

  v4 = *(v3 + 328);
  *a2 = v4;
  return sub_1002B6C38(v4);
}

unint64_t sub_1002B6B2C(unint64_t *a1)
{
  v1 = *a1;
  sub_1002B6C38(*a1);
  return sub_10033A0A4(v1);
}

uint64_t (*sub_1002B6B60(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002B6E88;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002B6BE0()
{
  result = qword_100ADB430;
  if (!qword_100ADB430)
  {
    type metadata accessor for REActionMenuState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADB430);
  }

  return result;
}

unint64_t sub_1002B6C38(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_1002B6C54(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t (*sub_1002B6C70(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1002B6CF0;
  }

  __break(1u);
  return result;
}

void (*sub_1002B6CF8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1002B6D78;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002B6D80(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1002B6E8C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1002B6E00(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1007A3784();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1002B6E80;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B6E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 32) & 0xF000000000000007) != 0)
  {
    v2 = *(a1 + 24) & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B6EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      *(result + 32) = 1;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002B6F38@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v6 = sub_1001F1160(&qword_100AD9F80);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_1001F1160(&qword_100AD9F88);
  __chkstk_darwin(v9);
  v11 = (&v35 - v10);
  if (sub_1002B7538())
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = swift_weakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v41 = swift_weakLoadStrong();
        v16 = swift_unknownObjectWeakLoadStrong();
        v42 = *(v3 + 32);
        v43 = v16;
        v39 = type metadata accessor for ChromeStyle();
        v40 = sub_1002B7860(&qword_100ADB6A0, type metadata accessor for ChromeStyle);

        *v11 = sub_10079C484();
        v11[1] = v17;
        v18 = type metadata accessor for RERootContainerView();
        v38 = a2;
        v19 = v18;
        v44 = a3;
        v20 = *(v18 + 20);
        *(v11 + v20) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB730);
        swift_storeEnumTagMultiPayload();
        v21 = v19[6];
        *(v11 + v21) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB4C0);
        swift_storeEnumTagMultiPayload();
        v22 = v19[7];
        *(v11 + v22) = swift_getKeyPath();
        swift_storeEnumTagMultiPayload();
        v23 = v11 + v19[8];
        *v23 = swift_getKeyPath();
        v23[8] = 0;
        v24 = v11 + v19[9];
        *v24 = swift_getKeyPath();
        v24[8] = 0;
        v25 = v19[10];
        *(v11 + v25) = swift_getKeyPath();
        sub_1001F1160(&qword_100AD9FA0);
        swift_storeEnumTagMultiPayload();
        v26 = v19[11];
        *(v11 + v26) = swift_getKeyPath();
        sub_1001F1160(&unk_100ADB740);
        swift_storeEnumTagMultiPayload();
        sub_10079CF54();
        v37 = v19[17];
        swift_weakInit();
        v36 = v11 + v19[18];
        *(v36 + 1) = 0;
        swift_unknownObjectWeakInit();
        sub_10001389C();
        sub_1007A33F4();
        *(v11 + v19[12]) = v13;
        *(v11 + v19[13]) = *(v15 + 136);
        *(v11 + v19[14]) = v15;
        swift_getKeyPath();
        v46 = v15;
        sub_1002B7860(&qword_100AF2550, type metadata accessor for BookReaderViewModel);

        sub_100797A14();

        v27 = (v11 + v19[15]);
        type metadata accessor for HistoryViewModel();
        sub_1002B7860(&qword_100AD9FA8, type metadata accessor for HistoryViewModel);
        *v27 = sub_10079C024();
        v27[1] = v28;
        swift_weakAssign();

        *(v36 + 1) = v42;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        *(v11 + v19[20]) = v38 & 1;
        *(v11 + v19[19]) = v45;
        v29 = (v11 + v19[21]);
        *v29 = 0;
        v29[1] = 0;
        v30 = *(v15 + 104);
        v31 = sub_10079B8A4();
        v32 = (v11 + *(v9 + 36));
        v33 = v30;

        *v32 = v31;
        v32[1] = v30;
        sub_1002B78A8(v11, v8);
        swift_storeEnumTagMultiPayload();
        sub_1002B763C();
        sub_10079CCA4();
        return sub_1002B7918(v11);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1002B763C();
  return sub_10079CCA4();
}

uint64_t sub_1002B74C4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD9F68);
  sub_100008B98(v0, qword_100AD9F68);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_1002B7538()
{
  if (swift_weakLoadStrong() && (, swift_weakLoadStrong()))
  {

    return 1;
  }

  else
  {
    if (qword_100AD13A8 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AD9F68);
    v2 = sub_10079ACC4();
    v3 = sub_1007A29B4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Expected actionMenuState, viewModel", v4, 2u);
    }

    return 0;
  }
}

unint64_t sub_1002B763C()
{
  result = qword_100AD9F90;
  if (!qword_100AD9F90)
  {
    sub_1001F1234(&qword_100AD9F88);
    sub_1002B7860(&qword_100AD9F98, type metadata accessor for RERootContainerView);
    sub_1002B76F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9F90);
  }

  return result;
}

unint64_t sub_1002B76F8()
{
  result = qword_100AD1D60;
  if (!qword_100AD1D60)
  {
    sub_1001F1234(&unk_100ADB260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1D60);
  }

  return result;
}

uint64_t sub_1002B775C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B7860(&qword_100AF2550, type metadata accessor for BookReaderViewModel);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__historyViewModel);
}

uint64_t sub_1002B7860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B78A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD9F88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B7918(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD9F88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002B7990()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD9FB0);
  sub_100008B98(v0, qword_100AD9FB0);
  return sub_10079ACD4();
}

void sub_1002B7A10(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v10 = sub_1001F1160(&unk_100ADA050);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  (*(v11 + 16))(&v26 - v14, a1, v10, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v16, v15, v10);
  v19 = (v18 + v17);
  *v19 = a2;
  v19[1] = a3;
  v19[2] = a4;
  v20 = (v18 + ((v17 + 31) & 0xFFFFFFFFFFFFFFF8));
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  aBlock[4] = sub_1002BAECC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A133E8;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = a3;
  v25 = a4;

  [v23 performBlockOnWorkerQueue:v22];
  _Block_release(v22);
}

uint64_t sub_1002B7C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1007A2214();
  v6 = [a3 libraryMutableAssetWithPermanentOrTemporaryAssetID:v5 inManagedObjectContext:a1];

  if (v6)
  {
    [a3 cancelDownloadingAsset:v6];
  }

  else
  {
    if (qword_100AD13B0 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AD9FB0);
    v6 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v8, "Unable to cancel download", v9, 2u);
    }
  }

  sub_1001F1160(&unk_100ADA050);
  return sub_1007A26B4();
}

uint64_t sub_1002B7D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[62] = a5;
  v6[63] = a6;
  v6[60] = a3;
  v6[61] = a4;
  v6[58] = a1;
  v6[59] = a2;
  sub_1001F1160(&qword_100AD67D0);
  v6[64] = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v7 = sub_1007969B4();
  v6[68] = v7;
  v6[69] = *(v7 - 8);
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();
  v6[72] = sub_1007A26F4();
  v6[73] = sub_1007A26E4();
  v9 = sub_1007A2694();
  v6[74] = v9;
  v6[75] = v8;

  return _swift_task_switch(sub_1002B7F0C, v9, v8);
}

uint64_t sub_1002B7F0C()
{
  v1 = v0[60];
  if (v1)
  {
    v2 = v0[61];
    v3 = v0[58];
    v4 = v1;
    v5 = sub_1002BA6F8(v3, v4, v2);
  }

  else
  {
    v5 = 0;
  }

  v0[76] = v5;
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[58];
  sub_10000E3E8(v9, v9[3]);
  sub_1007975E4();
  v10 = *(v6 + 48);
  v0[77] = v10;
  v0[78] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v8, 1, v7) == 1)
  {
    v11 = v0[58];
    sub_100008F68(v0[67]);
    sub_10000E3E8(v11, v9[3]);
    v12 = sub_100797674();
    v14 = v13;
    v0[81] = v13;
    v15 = swift_task_alloc();
    v0[82] = v15;
    *v15 = v0;
    v15[1] = sub_1002B83FC;
    v16 = v0[66];
    v17 = v0[62];
    v18 = v0[61];

    return sub_1002B8FF8(v16, v12, v14, v18, v17);
  }

  else
  {
    v20 = v0[63];
    v21 = v0[60];
    (*(v0[69] + 32))(v0[71], v0[67], v0[68]);
    sub_100796944(v22);
    v24 = v23;
    v0[79] = v23;
    v0[10] = v0;
    v0[15] = v0 + 57;
    v0[11] = sub_1002B81D8;
    v25 = swift_continuation_init();
    v0[33] = sub_1001F1160(&qword_100AD9FC8);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1002B8F1C;
    v0[29] = &unk_100A132D0;
    v0[30] = v25;
    [v20 downloadSampleWithURL:v24 contentData:v5 tracker:v21 completion:v0 + 26];

    return _swift_continuation_await(v0 + 10);
  }
}

uint64_t sub_1002B81D8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 640) = v2;
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  if (v2)
  {
    v5 = sub_1002B8A70;
  }

  else
  {
    v5 = sub_1002B8308;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8308()
{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002B83FC()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_1002B8B78;
  }

  else
  {

    v3 = *(v2 + 600);
    v4 = *(v2 + 592);
    v5 = sub_1002B8520;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8520()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 544);
  v3 = *(v0 + 520);
  sub_10000847C(*(v0 + 528), v3);
  if (v1(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 608);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 512);
    v9 = *(v0 + 464);
    v8 = *(v0 + 472);

    sub_100008F68(v6);
    v10 = sub_1007A2744();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1002B0670(v9, v0 + 320);
    sub_100009864(v8, v0 + 408);
    v11 = sub_1007A26E4();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    sub_1001FF7C8((v0 + 320), (v12 + 32));
    sub_1001FF7E0((v0 + 408), v12 + 80);
    sub_1003457A0(0, 0, v7, &unk_100817B28, v12);

    sub_100008F68(v5);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = *(v0 + 608);
    v16 = *(v0 + 504);
    v17 = *(v0 + 480);
    (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 520), *(v0 + 544));
    sub_100796944(v18);
    v20 = v19;
    *(v0 + 672) = v19;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 448;
    *(v0 + 24) = sub_1002B8840;
    v21 = swift_continuation_init();
    *(v0 + 200) = sub_1001F1160(&qword_100AD9FC8);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1002B8F1C;
    *(v0 + 168) = &unk_100A132A8;
    *(v0 + 176) = v21;
    [v16 downloadSampleWithURL:v20 contentData:v15 tracker:v17 completion:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_1002B8840()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 680) = v2;
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);
  if (v2)
  {
    v5 = sub_1002B8D2C;
  }

  else
  {
    v5 = sub_1002B8970;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002B8970()
{
  v1 = v0[84];
  v2 = v0[76];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[66];

  (*(v4 + 8))(v3, v5);
  sub_100008F68(v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002B8A70()
{
  v1 = v0[79];
  v2 = v0[76];
  v3 = v0[71];
  v4 = v0[69];
  v5 = v0[68];

  swift_willThrow();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002B8B78()
{

  v1 = *(v0 + 608);
  v2 = *(v0 + 512);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v5 = sub_1007A2744();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_1002B0670(v4, v0 + 272);
  sub_100009864(v3, v0 + 368);
  v6 = sub_1007A26E4();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1001FF7C8((v0 + 272), (v7 + 32));
  sub_1001FF7E0((v0 + 368), v7 + 80);
  sub_1003457A0(0, 0, v2, &unk_100817B18, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002B8D2C()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 528);

  swift_willThrow();
  (*(v3 + 8))(v2, v4);
  sub_100008F68(v5);

  v6 = *(v0 + 608);
  v7 = *(v0 + 512);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = sub_1007A2744();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_1002B0670(v9, v0 + 272);
  sub_100009864(v8, v0 + 368);
  v11 = sub_1007A26E4();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1001FF7C8((v0 + 272), (v12 + 32));
  sub_1001FF7E0((v0 + 368), v12 + 80);
  sub_1003457A0(0, 0, v7, &unk_100817B18, v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002B8F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    **(*(v4 + 64) + 40) = sub_1007A25E4();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1002B8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a3;
  v5[25] = a5;
  v5[22] = a1;
  v5[23] = a2;
  sub_1001F1160(&unk_100AD5AC0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return _swift_task_switch(sub_1002B90A4, 0, 0);
}

uint64_t sub_1002B90A4()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = sub_1007A2214();
  v0[28] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_1002B91DC;
  v4 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AD9FD8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002B9E68;
  v0[13] = &unk_100A132F8;
  v0[14] = v4;
  [v2 sampleDownloadURLForAssetID:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002B91DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1002B94F0;
  }

  else
  {
    v2 = sub_1002B92EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002B92EC()
{
  v1 = v0[26];
  sub_100008EF8(v0[27], v1);
  v2 = sub_1007969B4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[28];
  if (v4 == 1)
  {
    sub_100008F68(v0[26]);

    if (qword_100AD13B0 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AD9FB0);
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error downloading sample from ItemDescriptionCache", v9, 2u);
    }

    v10 = v0[22];

    (*(v3 + 56))(v10, 1, 1, v2);
  }

  else
  {
    v11 = v0[22];
    (*(v3 + 32))(v11, v0[26], v2);

    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002B94F0()
{
  v15 = v0;
  v1 = v0[28];
  swift_willThrow();

  if (qword_100AD13B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AD9FB0);
  swift_errorRetain();
  v3 = sub_10079ACC4();
  v4 = sub_1007A29B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1007A3B84();
    v9 = sub_1000070F4(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error downloading sample with error: %s", v5, 0xCu);
    sub_1000074E0(v6);
  }

  else
  {
  }

  v10 = v0[22];
  v11 = sub_1007969B4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1002B9714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1002BAF9C, v7, v6);
}

uint64_t sub_1002B97AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1002B9844, v7, v6);
}

uint64_t sub_1002B9844()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = objc_opt_self();
  sub_10000E3E8(v2, v2[3]);
  sub_1007976B4();
  v4 = sub_1007972D4();
  sub_10000E3E8(v1, v1[3]);
  sub_100796EF4();
  isa = sub_1007A2024().super.isa;

  [v3 presentNoticeForNoSampleAvailable:v4 & 1 options:isa];

  v6 = v0[1];

  return v6();
}

void sub_1002B9964(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v23 = a6;
  v11 = sub_1001F1160(&qword_100ADA048);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - v14;
  (*(v12 + 16))(&v22 - v14, a1, v11, v13);
  v16 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  *(v17 + 6) = v23;
  (*(v12 + 32))(&v17[v16], v15, v11);
  aBlock[4] = sub_1002BAD68;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A13348;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a3;
  v21 = a4;

  [v19 performBlockOnWorkerQueue:v18];
  _Block_release(v18);
}

void sub_1002B9B58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1001F1160(&qword_100ADA048);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - v12;
  v14 = sub_1007A2214();
  v15 = [a2 libraryMutableAssetWithPermanentOrTemporaryAssetID:v14 inManagedObjectContext:a1];

  if (v15)
  {
    (*(v11 + 16))(v13, a7, v10);
    v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v17 = swift_allocObject();
    (*(v11 + 32))(v17 + v16, v13, v10);
    aBlock[4] = sub_1002BAE08;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002B9DDC;
    aBlock[3] = &unk_100A13398;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    [a2 resolveLibraryAsset:v19 options:0 completion:v18];
    _Block_release(v18);
  }

  else
  {
    aBlock[0] = 0;
    sub_1007A26B4();
  }
}

uint64_t sub_1002B9D8C()
{
  swift_unknownObjectRetain();
  sub_1001F1160(&qword_100ADA048);
  return sub_1007A26B4();
}

uint64_t sub_1002B9DDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B9E68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001F1160(&unk_100AD67F0);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return _swift_continuation_throwingResumeWithError(v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_100796974();
      v16 = sub_1007969B4();
      (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    }

    else
    {
      v17 = sub_1007969B4();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    }

    sub_100008EF8(v8, v11);
    sub_100008EF8(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1002BA044(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 48) = *(v2 + 16);
  return _swift_task_switch(sub_1002BA074, 0, 0);
}

uint64_t sub_1002BA074()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_1002BA180;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000014, 0x80000001008C8D80, sub_1002BAE9C, v4, &type metadata for () + 8);
}

uint64_t sub_1002BA180()
{

  return _swift_task_switch(sub_1002BA298, 0, 0);
}

uint64_t sub_1002BA2AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 40) = *v2;
  *(v3 + 56) = *(v2 + 16);
  return _swift_task_switch(sub_1002BA2DC, 0, 0);
}

uint64_t sub_1002BA2DC()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_1001F1160(&qword_100ADA040);
  *v5 = v0;
  v5[1] = sub_1002BA3FC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000001ALL, 0x80000001008C8D00, sub_1002BAD50, v4, v6);
}

uint64_t sub_1002BA3FC()
{

  return _swift_task_switch(sub_1002BA514, 0, 0);
}

uint64_t sub_1002BA52C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002812C;

  return sub_1002B97AC(a1, v4, v5, v1 + 32, v1 + 80);
}

uint64_t sub_1002BA5E0()
{
  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 32);
  sub_1000074E0(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1002BA628(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009A34;

  return sub_1002B9714(a1, v4, v5, v1 + 32, v1 + 80);
}

uint64_t sub_1002BA6F8(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_100799004();
  v39 = *(v5 - 8);
  isa = v5;
  __chkstk_darwin(v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E3E8(a1, a1[3]);
  sub_100797674();
  v8 = sub_1007A2214();

  v9 = [a3 libraryAssetOnMainQueueWithAssetID:v8];

  if (!v9)
  {
    return 0;
  }

  v43._countAndFlagsBits = sub_100797674();
  v10 = sub_1007983D4(v43);
  v12 = v11;

  if (v12)
  {
    v38[7] = v10;
    v44._countAndFlagsBits = sub_100797674();
    v13 = sub_1007983C4(v44);
    v15 = v14;

    v38[6] = v15;
    if (v15)
    {
      v38[5] = v13;
      sub_100797674();

      v16 = v9;
      [v16 contentType];
      sub_1007984D4();
      v38[4] = sub_1007984A4();

      v17 = [v16 isOwned];
      v18 = 0;
      if (v17)
      {
        v19 = [v16 storeID];
        if (v19 && (v20 = v19, v21 = sub_1007A2254(), v23 = v22, v20, v41 = v21, v42 = v23, sub_1002060B4(), LOBYTE(v20) = sub_1007A28A4(), , (v20 & 1) != 0))
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }
      }

      v38[3] = v18;
      sub_100798004();
      v25 = sub_100797FF4();
      sub_100797674();
      v38[2] = sub_100797FA4();

      v26 = [v16 isAudiobook];
      v27 = 0;
      if (v26)
      {
        v28 = [v16 hasRACSupport];
        if (v28 && (v29 = v28, v30 = [v28 BOOLValue], v29, (v30 & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }
      }

      v38[1] = v27;
      v32 = v39;
      v31 = isa;
      (*(v39 + 104))(v7, enum case for BooksFeatureFlag.unifiedProductPage(_:), isa);
      sub_1002BAD08(&unk_100AD9560, &type metadata accessor for BooksFeatureFlag);
      sub_100260748();
      v33 = sub_1007A2554();
      (*(v32 + 8))(v7, v31);
      if (v33)
      {
        sub_10000E3E8(a1, a1[3]);
        sub_100797644();
        isa = sub_1007A2684().super.super.isa;
        sub_10000E3E8(a1, a1[3]);
        sub_100797574();
      }

      else
      {
        isa = 0;
      }

      sub_100797674();
      if ([v16 contentType] == 3)
      {
        [objc_allocWithZone(NSNumber) initWithLongLong:{objc_msgSend(v16, "pageCount")}];
      }

      v34 = [v16 supplementalContentAssets];
      if (v34)
      {
        sub_1002BACBC();
        sub_1002BAD08(&qword_100AD9FD0, sub_1002BACBC);
        v35 = sub_1007A2834();

        if ((v35 & 0xC000000000000001) != 0)
        {
          v34 = sub_1007A3624();
        }

        else
        {
          v34 = *(v35 + 16);
        }
      }

      [objc_allocWithZone(NSNumber) initWithInteger:v34];
      v36 = objc_allocWithZone(sub_100798134());
      v37 = sub_100798114();

      return v37;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1002BACBC()
{
  result = qword_100ADA990;
  if (!qword_100ADA990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADA990);
  }

  return result;
}

uint64_t sub_1002BAD08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002BAD68(uint64_t a1)
{
  v3 = *(sub_1001F1160(&qword_100ADA048) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  sub_1002B9B58(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1002BADF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BAE08()
{
  sub_1001F1160(&qword_100ADA048);

  return sub_1002B9D8C();
}

uint64_t sub_1002BAECC(uint64_t a1)
{
  v3 = *(sub_1001F1160(&unk_100ADA050) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002B7C1C(a1, v1 + v4, v5);
}

uint64_t sub_1002BAFB0()
{
  v1 = *(v0 + 32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = v1[2];
    v8 = v1[1];
    v9 = v3;
    v10 = v1[3];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = v8;
      v12 = v9;
      v13 = v10;
      sub_100017E74();
      v4 = swift_allocObject();
      swift_weakInit();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = v9;
      *(v5 + 24) = v8;
      *(v5 + 40) = v6;
      *(v5 + 56) = v10;
      swift_unknownObjectRetain();
      sub_1002BB1A4(&v11, v7);
      sub_1002BB1A4(&v12, v7);
      sub_1002BB1A4(&v13, v7);

      sub_1007A2CD4();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002BB12C()
{
  sub_10002B130(v0 + 16);
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1002BB220()
{
  v1 = [*(v0[20] + 16) isPaidStorefront];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1002BB35C;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AE6930);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B73D8;
  v0[13] = &unk_100A13490;
  v0[14] = v2;
  [v1 valueWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002BB35C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1002BB4F0;
  }

  else
  {
    v2 = sub_1002BB46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002BB46C()
{
  v1 = *(v0 + 144);

  v2 = [v1 BOOLValue];
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002BB4F0()
{
  v2 = v0[21];
  v1 = v0[22];
  swift_willThrow();

  v0[10] = v1;
  swift_errorRetain();
  sub_1001F1160(&unk_100AD67F0);
  sub_1002BB878();
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v3 = v0[18];
  v4 = [v3 domain];
  v5 = sub_1007A2254();
  v7 = v6;

  if (v5 == sub_1007A2254() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1007A3AB4();

    if ((v10 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v11 = [v3 code];

  if (v11 == 204)
  {

    v12 = v0[1];
    v13 = 1;
    goto LABEL_12;
  }

LABEL_11:

  v12 = v0[1];
  v13 = 0;
LABEL_12:

  return v12(v13);
}

uint64_t sub_1002BB6A0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002BB6D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002BB768;

  return sub_1002BB200();
}

uint64_t sub_1002BB768(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

unint64_t sub_1002BB878()
{
  result = qword_100ADA6D0;
  if (!qword_100ADA6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADA6D0);
  }

  return result;
}

void *sub_1002BB8C4(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    v30 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = i;
      v9 = sub_100799574();
      v11 = *a2;
      if (*(*a2 + 16))
      {
        v12 = sub_1002EC958(v9, v10);
        v14 = v13;

        if (v14)
        {
          sub_1000077D8(*(v11 + 56) + 40 * v12, &v20, &unk_100AF1C40);
          v23[0] = v20;
          v23[1] = v21;
          v24 = v22;
          if (*(&v21 + 1))
          {
            sub_1001F1160(&qword_100ADA250);
            sub_1001F1160(&qword_100AEF3D0);
            i = v8;
            if ((swift_dynamicCast() & 1) == 0)
            {
              v29 = 0;
              v28 = 0u;
              v27 = 0u;
            }

            goto LABEL_18;
          }

          sub_100007840(v23, &unk_100AF1C40);
        }
      }

      else
      {
      }

      i = v8;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
LABEL_18:
      sub_1007991D4();
      sub_100007840(&v27, &qword_100AE0AF0);

      if (v26)
      {
        sub_1000077C0(&v25, &v27);
        sub_1000077C0(&v27, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_10066ABE4(0, v30[2] + 1, 1, v30);
        }

        v16 = v30[2];
        v15 = v30[3];
        if (v16 >= v15 >> 1)
        {
          v30 = sub_10066ABE4((v15 > 1), v16 + 1, 1, v30);
        }

        v17 = v30;
        v30[2] = v16 + 1;
        sub_1000077C0(&v25, &v17[5 * v16 + 4]);
      }

      else
      {
        sub_100007840(&v25, &qword_100AEF240);
      }

      ++v4;
      if (v7 == i)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002BBBC8()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100ADA1B0);
  sub_100008B98(v0, qword_100ADA1B0);
  return sub_10079ACD4();
}

id sub_1002BBC44(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS] = 0;
  v11 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_shareableURLStringOverride];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider;
  sub_100009864(a5, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider]);
  v13 = OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider;
  sub_100009864(a4, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_libraryAssetProvider]);
  if (a1)
  {
    sub_1000077D8(a2, &v31, &unk_100AF1C40);
    if (v32)
    {
      sub_1000077C0(&v31, v33);
      v14 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
      *v14 = a1;
      sub_1000077C0(v33, (v14 + 8));
      v14[48] = 2;
    }

    else
    {
      sub_100007840(&v31, &unk_100AF1C40);
      v17 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
      *v17 = a1;
      v17[48] = 1;
    }

    goto LABEL_7;
  }

  sub_1000077D8(a2, &v31, &unk_100AF1C40);
  if (v32)
  {
    sub_1000077C0(&v31, v33);
    v15 = &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource];
    sub_1000077C0(v33, &v5[OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource]);
    *(v15 + 5) = a3;
    v15[48] = 0;
    v16 = a3;
LABEL_7:
    v30.receiver = v5;
    v30.super_class = type metadata accessor for ContextAssetInfo();
    v18 = a1;
    v19 = objc_msgSendSuper2(&v30, "init");
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 sharedInstance];
    *(swift_allocObject() + 16) = v21;
    v23 = v21;
    sub_1007A3304();

    sub_1000074E0(a5);
    sub_1000074E0(a4);
    sub_100007840(a2, &unk_100AF1C40);
    return v23;
  }

  v29 = v5;
  sub_100007840(&v31, &unk_100AF1C40);
  if (qword_100AD13B8 != -1)
  {
    swift_once();
  }

  v25 = sub_10079ACE4();
  sub_100008B98(v25, qword_100ADA1B0);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Failed to instantiate because asset and libraryContent are nil", v28, 2u);
  }

  sub_1000074E0(a5);
  sub_1000074E0(a4);
  sub_100007840(a2, &unk_100AF1C40);
  sub_1000074E0(&v29[v12]);
  sub_1000074E0(&v29[v13]);

  type metadata accessor for ContextAssetInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1002BBFE4(void *a1, uint64_t a2)
{
  v4 = sub_1007A2214();
  v5 = [a1 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 toBool];

    *(a2 + OBJC_IVAR____TtC5Books16ContextAssetInfo_supportsReportConcernInJS) = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1002BC0B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextAssetInfo();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_1002BC188(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002BC1A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BC1E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002BC230(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1002BC268()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v5);
  if (v7)
  {
    v1 = *&v5[0];
    if (v7 != 1)
    {
      sub_1000074E0(v5 + 8);
    }

    v2 = sub_100799574();
  }

  else
  {

    sub_1000077C0(v5, v4);
    sub_10000E3E8(v4, v4[3]);
    v2 = sub_100799184();
    sub_1000074E0(v4);
  }

  return v2;
}

uint64_t sub_1002BC330()
{
  v45 = sub_100798F64();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1007992A4();
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100798E14();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100798E34();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100ADA248);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_100798E54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100799224();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C63A0(v52 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v55);
  if (v57)
  {
    v18 = *&v55[0];
    if (v57 != 1)
    {
      sub_1000074E0(v55 + 8);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v22 = sub_100799324();

      v23 = (v22 & 1) == 0;
      v24 = 2;
    }

    else
    {
      sub_1007994D4();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      v25 = sub_100799474();

      v23 = (v25 & 1) == 0;
      v24 = 4;
    }

    if (v23)
    {
      return v24 + 1;
    }

    else
    {
      return v24;
    }
  }

  else
  {
    v42 = v15;
    v40 = v13;
    v52 = v11;
    v41 = v6;
    v19 = v50;
    v20 = v51;

    sub_1000077C0(v55, v54);
    sub_100009864(v54, v53);
    sub_1001F1160(&qword_100ADA250);
    if (swift_dynamicCast())
    {
      (*(v42 + 8))(v17, v14);
      sub_1000074E0(v54);
      return 3;
    }

    else
    {
      sub_100009864(v54, v53);
      v26 = v9;
      v27 = v10;
      v28 = swift_dynamicCast();
      v29 = v52;
      v30 = *(v52 + 56);
      if (v28)
      {
        v30(v26, 0, 1, v10);
        v31 = v40;
        (*(v29 + 32))(v40, v26, v27);
        v32 = v41;
        sub_100798E44();
        (*(v29 + 8))(v31, v27);
        sub_1000074E0(v54);
        v33 = v49;
        v34 = v4;
        v35 = (*(v49 + 88))(v32, v4);
        LODWORD(v31) = enum case for LibraryBookInfo.BookType.epub(_:);
        (*(v33 + 8))(v32, v34);
        if (v35 == v31)
        {
          return 2;
        }

        else
        {
          return 7;
        }
      }

      else
      {
        v30(v26, 1, 1, v10);
        sub_100007840(v26, &qword_100ADA248);
        sub_100009864(v54, v53);
        if (swift_dynamicCast())
        {
          (*(v47 + 8))(v3, v19);
          sub_1000074E0(v54);
          return 4;
        }

        else
        {
          sub_100009864(v54, v53);
          v36 = v48;
          if (swift_dynamicCast())
          {
            (*(v46 + 8))(v36, v20);
            sub_1000074E0(v54);
            return 5;
          }

          else
          {
            sub_1000077C0(v54, v53);
            v37 = v44;
            v38 = v45;
            result = swift_dynamicCast();
            if (result)
            {
              (*(v43 + 8))(v37, v38);
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002BCA68()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v10);
  if (v12)
  {
    v1 = *&v10[0];
    if (v12 != 1)
    {
      sub_1000074E0(v10 + 8);
    }

    sub_100799444();
    if (swift_dynamicCastClass())
    {
      v4 = sub_100799364();

      return v4;
    }
  }

  else
  {

    sub_1000077C0(v10, v9);
    sub_100009864(v9, v7);
    sub_1001F1160(&qword_100ADA250);
    sub_1001F1160(&qword_100AEF3D0);
    if (swift_dynamicCast())
    {
      sub_1000077C0(v5, v8);
      sub_10000E3E8(v8, v8[3]);
      v2 = sub_100799094();
      sub_1000074E0(v9);
      sub_1000074E0(v8);
      return v2;
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_1000074E0(v9);
    sub_100007840(v5, &qword_100AE0AF0);
  }

  return 0;
}

uint64_t sub_1002BCBFC()
{
  sub_1002C63A0(v0 + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v14);
  if (v16)
  {
    v1 = *&v14[0];
    if (v16 != 1)
    {
      sub_1000074E0(v14 + 8);
    }

    sub_100799444();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      [v5 averageRating];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  sub_1000077C0(v14, v13);
  sub_100009864(v13, v11);
  sub_1001F1160(&qword_100ADA250);
  sub_1001F1160(&qword_100AEF3D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000074E0(v13);
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100007840(v9, &qword_100AE0AF0);
    goto LABEL_12;
  }

  sub_1000077C0(v9, v12);
  sub_10000E3E8(v12, v12[3]);
  v2 = sub_1007990A4();
  v4 = v3;
  sub_1000074E0(v13);
  if (v4)
  {
    sub_1000074E0(v12);
LABEL_12:
    *&result = 0.0;
    return result;
  }

  sub_1000074E0(v12);
  *&result = v2;
  return result;
}

uint64_t sub_1002BCDB0()
{
  v1[9] = v0;
  v2 = sub_100797214();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002BCE70, 0, 0);
}

uint64_t sub_1002BCE70()
{
  v1 = v0 + 16;
  sub_1002C63A0(*(v0 + 72) + OBJC_IVAR____TtC5Books16ContextAssetInfo_dataSource, v0 + 16);
  if (!*(v0 + 64))
  {

LABEL_9:
    sub_1000074E0(v1);
    v17 = objc_opt_self();
    sub_1002BC268();
    v18 = sub_1007A2214();

    CGSizeScaleToScreen();
    v2 = [v17 fetchImageForAssetID:v18 size:0 includeSpine:0 coverEffectsEnvironment:?];

    v19 = [v2 CGImage];
    v3 = [objc_allocWithZone(UIImage) initWithCGImage:v19];

    goto LABEL_10;
  }

  if (*(v0 + 64) != 1)
  {

    v1 = v0 + 24;
    goto LABEL_9;
  }

  v2 = *(v0 + 16);
  *(v0 + 104) = v2;
  sub_100799444();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 80);
    v7 = (*(v0 + 72) + OBJC_IVAR____TtC5Books16ContextAssetInfo_coverImageProvider);
    v8 = v7[3];
    v9 = v7[4];
    sub_10000E3E8(v7, v8);
    (*(v5 + 104))(v4, enum case for MenuCoverImageSource.network(_:), v6);
    v10 = kAEAssetActivityItemProviderDefaultCoverSize[0];
    v11 = kAEAssetActivityItemProviderDefaultCoverSize[1];
    v12 = v2;
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_1002BD104;
    v14 = *(v0 + 96);
    v15.n128_u64[0] = v10;
    v16.n128_u64[0] = v11;

    return dispatch thunk of MenuCoverImageProviding.image(for:from:size:includeSpine:)(v3, v14, 1, v8, v9, v15, v16);
  }

LABEL_10:

  v20 = *(v0 + 8);

  return v20(v3);
}

uint64_t sub_1002BD104(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 120) = a1;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1002BD264, 0, 0);
}

uint64_t sub_1002BD264()
{
  v1 = v0[13];

  v2 = v0[15];

  v3 = v0[1];

  return v3(v2);
}