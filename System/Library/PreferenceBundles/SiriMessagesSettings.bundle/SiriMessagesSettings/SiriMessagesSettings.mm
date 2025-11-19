void sub_1680()
{
  v1 = v0;
  [v0 setEditingButtonHidden:1 animated:0];
  v45 = &_swiftEmptyArrayStorage;
  v2 = sub_2C8C();
  v3 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000014, 0x8000000000023650);
  sub_93C8();
  v6 = sub_1E818(0xD000000000000023, 0x8000000000023620, v4, v5, v3);
  v7 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup;
  v8 = *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup];
  *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = v6;
  v9 = v6;

  v10 = "MESSAGE_WITHOUT_CONFIRMATION_OFF_FOOTER";
  if (v2)
  {
    v10 = "MESSAGE_WITHOUT_CONFIRMATION_FOOTER";
  }

  if (!v6)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2)
  {
    v11 = 0xD000000000000023;
  }

  else
  {
    v11 = 0xD000000000000027;
  }

  static MessagesSettingsUtils.getLocalizedString(_:)(v11, ((v10 - 32) | 0x8000000000000000));
  v12 = sub_21EE4();

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v13, v14, v15, v9);

  v16 = *&v1[v7];
  if (!v16)
  {
    goto LABEL_23;
  }

  v17 = v16;
  sub_21F64();
  v18 = *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= v18 >> 1)
  {
    sub_945C(v18);
    sub_21FA4();
  }

  sub_21FD4();
  v19 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000023, 0x8000000000023620);
  v24 = sub_95FC(v19, v20, v1, "setMessageWithoutConfEnabled:specifier:", "getMessageWithoutConfEnabledWithSpecifier:", v21, v22, v23, v3);
  v25 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier;
  v26 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = v24;
  v27 = v24;

  if (!v24)
  {
    goto LABEL_24;
  }

  isa = sub_21FE4().super.super.isa;
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v29, v30, v31, v27);

  v32 = *&v1[v25];
  if (!v32)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v33 = v32;

  sub_21F64();
  v34 = *(&dword_18 + (v45 & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)) >= v34 >> 1)
  {
    sub_945C(v34);
    sub_21FA4();
  }

  sub_21FD4();
  v44[3] = &type metadata for MultilingualReadingFlag;
  v44[4] = sub_9188();
  v35 = sub_21CD4();
  sub_91DC(v44);
  if (v35)
  {
    sub_2CE4();
    sub_A440(v36);
  }

  v37 = v45;
  sub_2234(v45, v2 & 1, 0);
  if (v38)
  {
    v39 = v38;
    v40 = sub_1EA3C(v38);
    if (v40)
    {
      v41 = sub_1C99C(v40);

      if (v41)
      {

        v37 = v41;
      }
    }

    else
    {
    }
  }

  v43 = sub_1CAA8(v42);
  sub_1E9CC(v43, v1);

  sub_1CAA8(v37);
}

void sub_1A5C()
{
  sub_21FF4();
  sub_96A8(200704);
  if (!v0)
  {
    sub_9368();
  }

  v1 = sub_21E64();
  sub_9444(v1, qword_31EE0);
  oslog = sub_21E54();
  v2 = sub_220A4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = sub_94E0();
    *v3 = 0;
    _os_log_impl(&dword_0, oslog, v2, "#MessagingWithSiriController error setting auto send enable setting", v3, 2u);
    sub_9474();
  }
}

NSNumber sub_1EA0()
{
  v0 = sub_2C8C();
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v1 = sub_21E64();
  sub_9444(v1, qword_31EE0);
  v2 = sub_21E54();
  v3 = sub_220B4();
  if (sub_948C(v3))
  {
    v4 = sub_9634();
    *v4 = 67109120;
    v4[1] = v0 & 1;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
    sub_93D4();
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v0 & 1);
}

id sub_1FD4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages];
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;

  v5.receiver = v1;
  v5.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
}

id sub_2080()
{
  v1 = *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages];
  *&v0[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v3, "applicationWillSuspend");
}

void sub_2110(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MessagingWithSiriController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  sub_88D0(v1);

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v3 = sub_21E64();
  sub_9444(v3, qword_31EE0);
  v4 = sub_21E54();
  v5 = sub_220B4();
  if (sub_970C(v5))
  {
    v6 = sub_94E0();
    sub_95D4(v6);
    sub_9554();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    sub_93AC();
  }
}

void sub_2234(unint64_t a1, char a2, char a3)
{
  v5 = v3;
  sub_1CAA8(a1);
  v9 = objc_allocWithZone(PSSpecifierUpdates);
  v10 = sub_95A4();
  v11 = sub_1E448(v10);
  if (!v11)
  {
    if (qword_31548 != -1)
    {
      sub_9368();
    }

    v59 = sub_21E64();
    sub_9444(v59, qword_31EE0);
    v60 = sub_21E54();
    v61 = sub_220A4();
    if (sub_948C(v61))
    {
      *sub_94E0() = 0;
      sub_9434();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      sub_93D4();
    }

    goto LABEL_41;
  }

  if ((a2 & 1) == 0)
  {
    v67 = *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup];
    if (v67)
    {
      v68 = v67;
      sub_1CC14(v68, a1);
      if (v70)
      {
      }

      else
      {
        v75 = v69;
        if (qword_31548 != -1)
        {
          sub_9368();
        }

        v76 = sub_21E64();
        sub_9444(v76, qword_31EE0);
        v77 = sub_21E54();
        v78 = sub_220B4();
        if (sub_95E0(v78))
        {
          v79 = sub_94E0();
          *v79 = 0;
          _os_log_impl(&dword_0, v77, v4, "#MessagingWithSiriController removing child settings since autosend setting is disabled", v79, 2u);
          sub_9474();
        }

        v80 = [v5 specifierAtIndex:v75];
        v81 = sub_95BC();
        [v81 v82];
      }
    }

    goto LABEL_39;
  }

  v12 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000030, 0x80000000000234D0);
  sub_93C8();
  v15 = sub_1E818(0xD000000000000033, 0x8000000000023490, v13, v14, v12);
  v16 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = v15;
  v17 = v15;

  if (!v15)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = sub_21F64();
  sub_9694(v18, v19, v20, v21, v22, v23, v24, v25, v89, &_swiftEmptyArrayStorage);
  if (v27)
  {
    sub_945C(v26);
    sub_21FA4();
  }

  sub_21FD4();
  v28 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000027, 0x8000000000023510);
  v33 = sub_95FC(v28, v29, v5, "setMessageWithoutConfHeadphonesEnabled:specifier:", "getMessageWithoutConfHeadphonesEnabledWithSpecifier:", v30, v31, v32, v12);
  v34 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = v33;
  v35 = v33;

  if (!v33)
  {
    goto LABEL_45;
  }

  v36 = sub_21F64();
  sub_9694(v36, v37, v38, v39, v40, v41, v42, v43, v90, v91);
  if (v27)
  {
    sub_945C(v44);
    sub_21FA4();
  }

  sub_21FD4();
  v45 = v92;
  if (sub_9BE4())
  {
LABEL_14:
    if (qword_31548 != -1)
    {
      sub_9368();
    }

    v55 = sub_21E64();
    sub_9444(v55, qword_31EE0);

    v56 = sub_21E54();
    v57 = sub_220B4();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = sub_94C8();
      *v58 = 134217984;
      *(v58 + 4) = sub_1EBC4(v45);

      _os_log_impl(&dword_0, v56, v57, "#MessagingWithSiriController adding %ld child settings since autosend setting is enabled", v58, 0xCu);
      sub_9474();
    }

    else
    {
    }

    v71 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier];
    if (!v71)
    {
      goto LABEL_29;
    }

    v72 = v71;
    sub_1CC14(v72, a1);
    if (v74)
    {

LABEL_29:

      goto LABEL_39;
    }

    v83 = v73;
    v84 = sub_21E54();
    v85 = sub_220B4();
    if (sub_95E0(v85))
    {
      v86 = sub_94C8();
      *v86 = 134217984;
      *(v86 + 4) = v83;
      _os_log_impl(&dword_0, v84, v56, "#MessagingWithSiriController %ld", v86, 0xCu);
      sub_9474();
    }

    v87 = sub_1CAA8(v45);

    if (__OFADD__(v83, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    sub_1E95C(v87, v83 + 1, v11);

LABEL_39:
    v88 = [v11 context];
    if (v88)
    {
      v60 = v88;
      [v88 setAnimated:a3 & 1];
LABEL_41:

      return;
    }

    goto LABEL_43;
  }

  v46 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000024, 0x8000000000023540);
  v51 = sub_95FC(v46, v47, v5, "setMessageWithoutConfCarPlayEnabled:specifier:", "getMessageWithoutConfCarPlayEnabledWithSpecifier:", v48, v49, v50, v12);
  v52 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = v51;
  v53 = v51;

  if (v51)
  {
    sub_21F64();
    v54 = *(&dword_18 + (v92 & 0xFFFFFFFFFFFFFF8));
    if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)) >= v54 >> 1)
    {
      sub_945C(v54);
      sub_21FA4();
    }

    sub_21FD4();
    v45 = v92;
    goto LABEL_14;
  }

LABEL_46:
  __break(1u);
}

void sub_28F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  sub_21FF4();
  sub_96A8(200704);
  if (!v6)
  {
    sub_9368();
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  oslog = sub_21E54();
  v8 = sub_220A4();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = sub_94E0();
    *v9 = 0;
    _os_log_impl(&dword_0, oslog, v8, a5, v9, 2u);
    sub_9474();
  }
}

NSNumber sub_2B20(uint64_t a1, SEL *a2, const char *a3)
{
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 *a2];

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v7 = sub_21E64();
  sub_9444(v7, qword_31EE0);
  v8 = sub_21E54();
  v9 = sub_220B4();
  if (sub_9418(v9))
  {
    v10 = sub_9634();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    sub_958C();
    _os_log_impl(v11, v12, v13, a3, v10, 8u);
    sub_93FC();
  }

  sub_8AF4(0, &qword_31648, NSNumber_ptr);
  return sub_220E4(v6);
}

id sub_2C8C()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 getMessageWithoutConfirmationEnabled];

  return v1;
}

void sub_2CE4()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_948C(v4))
  {
    *sub_94E0() = 0;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_93D4();
  }

  v10 = objc_opt_self();
  v11 = sub_96D4("READ_MESSAGES_HEADER");
  v13 = sub_8830(v11, v12, v10);
  v14 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup;
  v15 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup) = v13;
  v16 = v13;

  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_96D4("ADD_LANGUAGES_FOOTER");
  v17 = sub_21EE4();

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v18, v19, v20, v16);

  v21 = *(v1 + v14);
  if (!v21)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v21;
  sub_21F64();
  v23 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v23 >> 1)
  {
    sub_945C(v23);
    sub_21FA4();
  }

  sub_21FD4();
  if (!*(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages))
  {
    sub_3044();
  }

  type metadata accessor for ListOfLanguagesController();
  v24 = [v10 preferenceSpecifierNamed:0 target:v1 set:0 get:0 detail:swift_getObjCClassFromMetadata() cell:1 edit:0];
  v25 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink;
  v26 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink) = v24;
  v27 = v24;

  if (!v27)
  {
    goto LABEL_20;
  }

  type metadata accessor for AddLanguagesCell();
  sub_7E80(&qword_31640, &qword_22C60);
  sub_222D4();
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v28, v29, v30, v27);

  swift_unknownObjectRelease();
  v31 = *(v1 + v25);
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  isa = sub_21FE4().super.super.isa;
  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v34, v35, v36, v32);

  v37 = *(v1 + v25);
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_21EF4();
  sub_93C8();
  sub_93F0();
  sub_1E79C(v38, v39, v40, v37);
  v41 = *(v1 + v25);
  if (!v41)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v42 = v41;
  sub_21F64();
  v43 = *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v43 >> 1)
  {
    sub_945C(v43);
    sub_21FA4();
  }

  sub_21FD4();
}

uint64_t sub_3044()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_948C(v4))
  {
    *sub_94E0() = 0;
    sub_9434();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_93D4();
  }

  if (qword_31520 != -1)
  {
    swift_once();
  }

  sub_9598();
  swift_beginAccess();
  v10 = static MessagesSettingsUtils.daemonSession;
  sub_9688();
  *(swift_allocObject() + 16) = v1;
  v11 = v10;
  v12 = v1;
  sub_21CE4();
}

void sub_319C(uint64_t a1, char *a2)
{
  v123 = a2;
  v3 = sub_21E84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v120 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21EA4();
  v119 = *(v7 - 8);
  v8 = *(v119 + 64);
  __chkstk_darwin();
  v118 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_21C34();
  isa = v132[-1].isa;
  v11 = *(isa + 8);
  __chkstk_darwin();
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = &_swiftEmptyArrayStorage;
  v14 = [objc_opt_self() sharedPreferences];
  sub_892C(v14);
  if (v15)
  {
    v115 = v7;
    v16 = v15;
    v17 = sub_8AF4(0, &qword_315E8, NSLocale_ptr);

    v121 = v16;
    v128 = v17;
    v18 = sub_17804();
    v19 = [v18 languageCode];

    v126 = sub_21EF4();
    v21 = v20;

    v22 = sub_1EBC4(a1);
    v23 = &_swiftEmptyArrayStorage;
    v131 = a1;
    v129 = v21;
    v117 = v3;
    v116 = v4;
    if (!v22)
    {
LABEL_12:
      v38 = sub_414C(v23);
      if (qword_31540 != -1)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v39 = sub_1B854();
        v40 = sub_420C(v39, v38);
        v41 = v40 + 56;
        v42 = 1 << *(v40 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & *(v40 + 56);
        v38 = (v42 + 63) >> 6;
        v114 = PSCellClassKey;
        v127 = v40;

        v45 = 0;
        *&v46 = 136315138;
        v130 = v46;
        v122 = &_swiftEmptyArrayStorage;
        v125 = v41;
        v124 = v38;
        if (v44)
        {
          break;
        }

LABEL_16:
        while (1)
        {
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v47 >= v38)
          {

            v92 = sub_21EE4();
            v93 = [v123 valueForKey:v92];

            if (v93)
            {
              sub_22124();
              swift_unknownObjectRelease();
            }

            else
            {
              v138 = 0u;
              v139 = 0u;
            }

            v98 = swift_allocObject();
            aBlock = v138;
            v134 = v139;
            if (*(&v139 + 1))
            {
              sub_7E80(&qword_31618, &unk_22C50);
              if (swift_dynamicCast())
              {
                v99 = v137;
                *(v98 + 16) = v137;
                v100 = *&v123[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup];
                if (v100)
                {

                  v101 = v100;

                  sub_1CC14(v101, v99);
                  v103 = v102;
                  v105 = v104;

                  if (v105)
                  {
                  }

                  else
                  {
                    sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
                    v106 = sub_220C4();
                    v107 = swift_allocObject();
                    v108 = v123;
                    v107[2] = v103;
                    v107[3] = v108;
                    v107[4] = v122;
                    v107[5] = v98;
                    v107[6] = v131;
                    v135 = sub_8A20;
                    v136 = v107;
                    *&aBlock = _NSConcreteStackBlock;
                    *(&aBlock + 1) = 1107296256;
                    *&v134 = sub_55D0;
                    *(&v134 + 1) = &unk_2CAF0;
                    v109 = _Block_copy(&aBlock);
                    v110 = v108;

                    v111 = v118;
                    sub_21E94();
                    *&aBlock = &_swiftEmptyArrayStorage;
                    sub_92C0(&qword_31628, &type metadata accessor for DispatchWorkItemFlags);
                    sub_7E80(&qword_31630, &qword_23050);
                    sub_8A48();
                    v112 = v120;
                    v113 = v117;
                    sub_22134();
                    sub_220D4();
                    _Block_release(v109);

                    (*(v116 + 8))(v112, v113);
                    (*(v119 + 8))(v111, v115);
                  }
                }

                else
                {
                  __break(1u);
                }

                return;
              }
            }

            else
            {

              sub_8F6C(&aBlock, &qword_31610, &qword_23080);
            }

            swift_deallocUninitializedObject();
            return;
          }

          v44 = *(v41 + 8 * v47);
          ++v45;
          if (v44)
          {
            v45 = v47;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_64:
        swift_once();
      }

      while (1)
      {
LABEL_20:
        v48 = *(v127 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v44))));
        v50 = *v48;
        v49 = *(v48 + 8);
        v51 = qword_31548;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = sub_21E64();
        sub_87F8(v52, qword_31EE0);

        v53 = sub_21E54();
        v54 = sub_220B4();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *&aBlock = v56;
          *v55 = v130;
          *(v55 + 4) = sub_E6C0(v50, v49, &aBlock);
          _os_log_impl(&dword_0, v53, v54, "#MessagingWithSiriController Locale.LanguageCode(asset.primaryLanguage) %s", v55, 0xCu);
          sub_91DC(v56);
        }

        v132 = v50;
        v57 = sub_17804();
        v58 = [v57 languageCode];

        v59 = sub_21EF4();
        v61 = v60;

        v62 = sub_21E54();
        v63 = sub_220B4();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&aBlock = v65;
          *v64 = v130;
          *(v64 + 4) = sub_E6C0(v59, v61, &aBlock);
          _os_log_impl(&dword_0, v62, v63, "#MessagingWithSiriController baseLanguage %s", v64, 0xCu);
          sub_91DC(v65);
          v21 = v129;
        }

        v66 = sub_21E54();
        v67 = sub_220B4();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v70 = v21;
          v71 = v69;
          *&aBlock = v69;
          *v68 = v130;
          *(v68 + 4) = sub_E6C0(v126, v70, &aBlock);
          _os_log_impl(&dword_0, v66, v67, "#MessagingWithSiriController currentLanguageCode %s", v68, 0xCu);
          sub_91DC(v71);
        }

        v44 &= v44 - 1;
        sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr);
        v72 = sub_C57C(v132);
        if (!v73)
        {
          break;
        }

        v74 = v72;
        v75 = v73;
        v21 = v129;

        v76 = sub_17804();
        v77 = sub_C700();

        if (v77)
        {

LABEL_32:
          v41 = v125;
          goto LABEL_37;
        }

        v78 = sub_21E54();
        v79 = sub_220B4();

        v80 = os_log_type_enabled(v78, v79);
        v41 = v125;
        if (v80)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *&aBlock = v82;
          *v81 = v130;
          *(v81 + 4) = sub_E6C0(v74, v75, &aBlock);
          _os_log_impl(&dword_0, v78, v79, "#MessagingWithSiriController readableString %s", v81, 0xCu);
          sub_91DC(v82);
          v21 = v129;
        }

        v83 = objc_opt_self();
        type metadata accessor for ReadingVoiceListController();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v85 = sub_16F0C(v74, v75, v123, 0, 0, ObjCClassFromMetadata, 1, 0, v83);
        if (v85)
        {
          v86 = v85;
          *&aBlock = type metadata accessor for LanguageCell();
          sub_7E80(&qword_31608, &unk_22C40);
          v87 = sub_222D4();
          v88 = sub_21EF4();
          sub_1E79C(v87, v88, v89, v86);
          swift_unknownObjectRelease();
          v90 = v86;
          sub_21F64();
          if (*(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v140 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_21FA4();
          }

          sub_21FD4();
          v122 = v140;
          if (qword_31530 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v138 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
          sub_19898(v132, v49, v74, v75, isUniquelyReferenced_nonNull_native);
          static MessagesSettingsUtils.readableLanguageToLocaleMap = v138;

          swift_endAccess();

          goto LABEL_38;
        }

LABEL_37:

LABEL_38:
        v38 = v124;
        if (!v44)
        {
          goto LABEL_16;
        }
      }

      v21 = v129;
      goto LABEL_32;
    }

    v24 = v22;
    v25 = a1;
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_1E578(0, v22 & ~(v22 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v23 = aBlock;
      *&v130 = v25 & 0xC000000000000001;
      v27 = (isa + 8);
      v28 = v24;
      do
      {
        if (v130)
        {
          v29 = sub_221D4();
        }

        else
        {
          v29 = *(v25 + 8 * v26 + 32);
        }

        v30 = v29;
        v31 = sub_21DA4();
        sub_EF18();

        sub_21C44();
        v32 = sub_21C14();
        v34 = v33;

        (*v27)(v13, v132);
        *&aBlock = v23;
        v36 = v23[2];
        v35 = v23[3];
        if (v36 >= v35 >> 1)
        {
          sub_1E578((v35 > 1), v36 + 1, 1);
          v23 = aBlock;
        }

        ++v26;
        v23[2] = v36 + 1;
        v37 = &v23[2 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        v25 = v131;
      }

      while (v28 != v26);
      v21 = v129;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_66;
  }

  if (qword_31548 != -1)
  {
LABEL_66:
    swift_once();
  }

  v94 = sub_21E64();
  sub_87F8(v94, qword_31EE0);
  v132 = sub_21E54();
  v95 = sub_220A4();
  if (os_log_type_enabled(v132, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_0, v132, v95, "#MessagingWithSiriController currentLanguage is nil", v96, 2u);
  }

  v97 = v132;
}

uint64_t sub_414C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_22064();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_1BBF8(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_420C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1BBF8(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_42B4(uint64_t a1, char *a2, unint64_t a3, uint64_t a4)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);
  v9 = sub_21E54();
  v10 = sub_220B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&dword_0, v9, v10, "#MessagingWithSiriController adding voice group %ld", v11, 0xCu);
  }

  v12 = *&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages];
  *&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = a3;

  swift_beginAccess();
  v13 = *(a4 + 16);

  v15 = sub_1CAA8(v14);

  v16 = objc_allocWithZone(PSSpecifierUpdates);
  v17 = sub_1E448(v15);
  if (v17)
  {
    v18 = v17;
    [v17 removeSpecifiersInGroup:*&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup]];
    v19 = sub_1CAA8(a3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1E95C(v19, a1 + 1, v18);
      v20 = *&a2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink];
      v21 = sub_1EBC4(a3);
      v22 = v21 + a1;
      if (!__OFADD__(v21, a1))
      {
        if (!__OFADD__(v22, 1))
        {
          [v18 insertSpecifier:v20 atIndex:v22 + 1];
          v23 = [v18 context];
          if (v23)
          {
            v24 = v23;
            [v23 setAnimated:1];

            v25 = sub_1EA3C(v18);
            if (v25)
            {
              v26 = sub_1C99C(v25);

              if (v26)
              {
                swift_beginAccess();
                v27 = *(a4 + 16);
                *(a4 + 16) = v26;
              }
            }

            swift_beginAccess();
            v28 = *(a4 + 16);

            v30 = sub_1CAA8(v29);

            sub_1E9CC(v30, a2);

            v31 = sub_21E54();
            v32 = sub_220B4();

            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v33 = 136315138;
              sub_21DB4();
              v35 = sub_21F94();
              v37 = sub_E6C0(v35, v36, &v41);

              *(v33 + 4) = v37;
              _os_log_impl(&dword_0, v31, v32, "#MessagingWithSiriController subscribed voices %s", v33, 0xCu);
              sub_91DC(v34);
            }

            return;
          }

LABEL_22:
          __break(1u);
          return;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v38 = sub_21E54();
  v39 = sub_220A4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_0, v38, v39, "#MessagingWithSiriController handleURL failed to get updates", v40, 2u);
  }
}

void sub_46C4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView);
  *(v1 + OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView) = a1;
  v3 = a1;

  isa = sub_21CA4().super.isa;
  v5 = sub_95BC();
  v7 = [v5 v6];

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v8 = sub_21E64();
  sub_9444(v8, qword_31EE0);
  v18 = v7;
  oslog = sub_21E54();
  v9 = sub_220B4();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = sub_94C8();
    v11 = sub_94F8();
    v19 = v11;
    *v10 = 136315138;
    if (v18 && (v12 = sub_1AE44(v18), v13))
    {
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = sub_E6C0(v12, v14, &v19);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, oslog, v9, "#MessagingWithSiriController endDisplaying %s", v10, 0xCu);
    sub_91DC(v11);
    sub_93AC();
    sub_9474();

    v15 = v18;
  }

  else
  {

    v15 = oslog;
  }
}

uint64_t sub_4984()
{
  sub_9574();
  v1[23] = v2;
  v1[24] = v0;
  v3 = sub_21E84();
  v1[25] = v3;
  v4 = *(v3 - 8);
  v1[26] = v4;
  v5 = *(v4 + 64) + 15;
  v1[27] = swift_task_alloc();
  v6 = sub_21EA4();
  v1[28] = v6;
  v7 = *(v6 - 8);
  v1[29] = v7;
  v8 = *(v7 + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_22024();
  v1[31] = sub_22014();
  sub_95A4();
  sub_22004();
  sub_93C8();
  sub_93F0();

  return _swift_task_switch();
}

void sub_4AC4()
{
  v42 = v0;
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v1 = v0[23];
  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);

  v3 = sub_21E54();
  v4 = sub_220B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = sub_94C8();
    v7 = sub_94F8();
    v41 = v7;
    *v6 = 136315138;
    v0[22] = v5;

    sub_7E80(&qword_31690, &qword_22CF0);
    v8 = sub_21F14();
    v10 = sub_E6C0(v8, v9, &v41);

    *(v6 + 4) = v10;
    sub_96B4(&dword_0, v11, v12, "#MessagingWithSiriController handleURL resourceDictionary = %s");
    sub_91DC(v7);
    sub_9474();
    sub_9474();
  }

  if (v0[23])
  {
    v13 = v0[31];

    v0[17] = 0x65676175676E616CLL;
    v0[18] = 0xE800000000000000;
    sub_22174();
    sub_1ECEC((v0 + 8), v1, v0 + 13);
    sub_912C((v0 + 8));
    if (v0[16])
    {
      if (sub_96F4())
      {
        v14 = v0[19];
        v15 = v0[20];

        v16 = sub_21E54();
        v17 = sub_220B4();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = sub_94C8();
          v19 = sub_94F8();
          v41 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_E6C0(v14, v15, &v41);
          sub_9468();
          _os_log_impl(v20, v21, v22, v23, v18, 0xCu);
          sub_91DC(v19);
          sub_9474();
          sub_93FC();
        }

        v25 = v0[29];
        v24 = v0[30];
        v26 = v0[27];
        v40 = v0[28];
        v28 = v0[25];
        v27 = v0[26];
        v29 = v0[24];
        v30 = &v29[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
        v31 = *&v29[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage + 8];
        *v30 = v14;
        v30[1] = v15;

        sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
        v32 = sub_220C4();
        sub_9688();
        v33 = swift_allocObject();
        *(v33 + 16) = v29;
        v0[6] = sub_9180;
        v0[7] = v33;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_55D0;
        v0[5] = &unk_2CC08;
        v34 = _Block_copy(v0 + 2);
        v35 = v29;
        sub_21E94();
        v0[21] = &_swiftEmptyArrayStorage;
        sub_92C0(&qword_31628, &type metadata accessor for DispatchWorkItemFlags);
        sub_7E80(&qword_31630, &qword_23050);
        sub_8A48();
        sub_22134();
        sub_220D4();
        _Block_release(v34);

        (*(v27 + 8))(v26, v28);
        (*(v25 + 8))(v24, v40);
        v36 = v0[7];
      }
    }

    else
    {
      sub_8F6C((v0 + 13), &qword_31610, &qword_23080);
    }

    v37 = v0[30];
    v38 = v0[27];

    sub_9510();

    v39();
  }

  else
  {
    __break(1u);
  }
}

void sub_4F44(char *a1)
{
  v2 = sub_21EE4();
  v3 = [a1 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53[0] = v51;
  v53[1] = v52;
  if (!*(&v52 + 1))
  {
    sub_8F6C(v53, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v4 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage + 8];
  if (!v4)
  {

    return;
  }

  v5 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
  v6 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage + 8];

  v7 = sub_748C(v5, v4);
  v8 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers;
  swift_beginAccess();
  v9 = *&a1[v8];
  *&a1[v8] = v7;

  v10 = objc_opt_self();
  v11 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD00000000000001ALL, 0x8000000000023600);
  v13 = sub_8830(v11, v12, v10);
  v14 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup];
  *&a1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = v13;
  v15 = v13;

  if (!v13)
  {
    __break(1u);
    goto LABEL_30;
  }

  swift_beginAccess();
  v16 = *&a1[v8];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_19CD8(0, v16);
  sub_19D30(0);
  swift_endAccess();

  v18 = sub_1CAA8(v17);

  v19 = objc_allocWithZone(PSSpecifierUpdates);
  v20 = sub_1E448(v18);
  if (v20)
  {
    v21 = v20;
    if (qword_31548 != -1)
    {
      swift_once();
    }

    v22 = sub_21E64();
    sub_87F8(v22, qword_31EE0);
    v23 = a1;
    v24 = sub_21E54();
    v25 = sub_220B4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *&v51 = swift_slowAlloc();
      *v26 = 136315394;
      sub_8AF4(0, &qword_31600, PSSpecifier_ptr);

      v27 = sub_21F94();
      v49 = v23;
      v29 = v28;

      v30 = sub_E6C0(v27, v29, &v51);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v50 = *&a1[v8];

      sub_7E80(&qword_31698, &qword_22CF8);
      v31 = sub_21F14();
      v33 = sub_E6C0(v31, v32, &v51);
      v23 = v49;

      *(v26 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "#MessagingWithSiriController updating specifiers %s with %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    isa = *&a1[v8];
    if (isa)
    {
      v35 = *&a1[v8];

      sub_1CAA8(v36);

      isa = sub_21F74().super.isa;
    }

    v38 = sub_553C(v37);

    [v21 insertContiguousSpecifiers:isa afterSpecifier:v38];

    v39 = [v21 context];
    if (v39)
    {
      v40 = v39;

      [v40 setAnimated:1];

      v41 = sub_1EA3C(v21);
      if (v41)
      {
        v42 = sub_1C99C(v41);

        if (v42)
        {
        }
      }

      v44 = sub_1CAA8(v43);

      sub_1E9CC(v44, v23);

      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  if (qword_31548 != -1)
  {
    swift_once();
  }

  v45 = sub_21E64();
  sub_87F8(v45, qword_31EE0);
  v46 = sub_21E54();
  v47 = sub_220A4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_0, v46, v47, "#MessagingWithSiriController handleURL failed to get updates", v48, 2u);
  }
}

char *sub_553C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1EBCC(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_221D4();
  }

  result = sub_22274();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_55D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_22024();
  v3[5] = sub_22014();
  v5 = sub_22004();

  return _swift_task_switch(sub_5738, v5, v4);
}

uint64_t sub_5738()
{
  sub_95C8();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 16);
    v5 = sub_21EB4();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 56) = v5;
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_582C;
  v8 = *(v0 + 32);

  return sub_4984();
}

uint64_t sub_582C()
{
  sub_95C8();
  sub_95B0();
  v2 = v1;
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[6];
  v6 = v1[4];
  v7 = *v0;
  sub_939C();
  *v8 = v7;

  if (v5)
  {
    v9 = v2[6];
    v9[2](v9);
    _Block_release(v9);
  }

  sub_9510();

  return v10();
}

uint64_t sub_597C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(sub_7E80(&qword_31688, &qword_22CA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_22044();
  sub_8B34(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_22CB8;
  v9[5] = v8;
  sub_8350(0, 0, v6, &unk_22CC8, v9);
}

void sub_5A8C(uint64_t a1)
{
  v2 = v1;
  isa = sub_21CA4().super.isa;
  v62.receiver = v1;
  v62.super_class = type metadata accessor for MessagingWithSiriController();
  objc_msgSendSuper2(&v62, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_21CA4().super.isa;
  v6 = sub_95BC();
  v8 = [v6 v7];

  if (!v8)
  {
    return;
  }

  v9 = sub_1AE44(v8);
  if (!v10)
  {

    return;
  }

  v11 = v9;
  v12 = v10;
  v13 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers;
  sub_9598();
  swift_beginAccess();
  v14 = *&v2[v13];
  if (!v14)
  {

LABEL_34:

    return;
  }

  v15 = qword_31530;

  if (v15 != -1)
  {
    sub_9388();
    swift_once();
  }

  swift_beginAccess();
  v16 = sub_1ED50(v11, v12, static MessagesSettingsUtils.readableLanguageToLocaleMap);
  if (!v17)
  {
    swift_endAccess();

LABEL_33:

    goto LABEL_34;
  }

  v18 = v16;
  v19 = swift_endAccess();
  *&v61[0] = v8;
  __chkstk_darwin(v19);
  v57[2] = v61;
  if ((sub_EF98(sub_8BF8, v57, v14) & 1) == 0)
  {

    goto LABEL_34;
  }

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v20 = sub_21E64();
  sub_9444(v20, qword_31EE0);
  v21 = v8;
  v57[6] = v61;
  v22 = sub_21E54();
  v23 = sub_220B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_94C8();
    v25 = sub_9634();
    v57[5] = v18;
    v26 = v21;
    v27 = v25;
    *v24 = 138412290;
    *(v24 + 4) = v26;
    *v25 = v8;
    v28 = v26;
    _os_log_impl(&dword_0, v22, v23, "#MessagingWithSiriController %@", v24, 0xCu);
    sub_8F6C(v27, &qword_31680, &qword_22C90);
    v21 = v26;
    sub_9474();
    sub_93AC();
  }

  if (qword_31518 != -1)
  {
    swift_once();
  }

  sub_9598();
  swift_beginAccess();

  sub_9598();
  sub_A6DC(v29, v30, v31, v32);

  v33 = sub_951C();
  v34 = [v2 valueForKey:v33];

  if (v34)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61[0] = v59;
  v61[1] = v60;
  if (!*(&v60 + 1))
  {

    sub_8F6C(v61, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((sub_96F4() & 1) == 0)
  {

    goto LABEL_33;
  }

  v35 = v58;
  v36 = sub_1CAA8(v58);
  v37 = objc_allocWithZone(PSSpecifierUpdates);
  v38 = sub_1E448(v36);
  if (v38)
  {
    v39 = v38;
    v40 = sub_21E54();
    v41 = sub_220B4();
    if (sub_95E0(v41))
    {
      v42 = sub_94E0();
      sub_95D4(v42);
      _os_log_impl(&dword_0, v40, v21, "#MessagingWithSiriController removing suggested languages group", v33, 2u);
      sub_93AC();
    }

    v43 = OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup;
    [v39 removeSpecifiersInGroup:*&v2[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup]];
    [v39 removeSpecifier:*&v2[v43]];
    v44 = [v39 context];
    if (v44)
    {
      v45 = v44;

      [v45 setAnimated:1];

      v46 = sub_1EA3C(v39);
      if (v46)
      {
        v47 = sub_1C99C(v46);

        if (v47)
        {

          v35 = v47;
        }
      }

      v48 = sub_1CAA8(v35);

      sub_1E9CC(v48, v2);
      sub_3044();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v49 = sub_21E54();
    v50 = sub_220A4();
    if (sub_970C(v50))
    {
      v51 = sub_94E0();
      sub_95D4(v51);
      sub_9554();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      sub_93AC();
    }
  }
}

void sub_6190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_7E80(&qword_31660, &qword_22C78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v160 = v152 - v10;
  v11 = sub_7E80(&qword_31668, &qword_22C80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v159 = v152 - v13;
  v14 = sub_7E80(&qword_31670, &qword_22C88);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v158 = v152 - v16;
  v165 = sub_21C94();
  v17 = sub_964C(v165);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_9660();
  v161 = v22;
  __chkstk_darwin(v23);
  v166 = v152 - v24;
  v25 = sub_21C34();
  v26 = sub_964C(v25);
  v167 = v27;
  v168 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_9660();
  v157 = v30;
  v32 = __chkstk_darwin(v31);
  v34 = v152 - v33;
  __chkstk_darwin(v32);
  v36 = v152 - v35;
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v37 = sub_21E64();
  v169 = sub_87F8(v37, qword_31EE0);
  v38 = sub_21E54();
  v39 = sub_220B4();
  if (sub_948C(v39))
  {
    v40 = sub_94C8();
    *v40 = 134217984;
    *(v40 + 4) = a2;
    sub_9468();
    _os_log_impl(v41, v42, v43, v44, v40, 0xCu);
    sub_9474();
  }

  if (a2 == 1)
  {
    v155 = 1;
    isa = sub_21CA4().super.isa;
    v46 = [v4 specifierAtIndexPath:isa];

    v47 = v46;
    v48 = sub_21E54();
    v49 = sub_220B4();

    v50 = os_log_type_enabled(v48, v49);
    v154 = a1;
    v153 = v4;
    v152[1] = a3;
    v163 = v19;
    if (v50)
    {
      v51 = sub_94C8();
      v52 = sub_94F8();
      v170[0] = v52;
      *v51 = 136315138;
      v53 = v47;
      if (v47 && (v54 = sub_1AE44(v47), v55))
      {
        v56 = v55;
      }

      else
      {

        v54 = 0;
        v56 = 0xE000000000000000;
      }

      v58 = sub_E6C0(v54, v56, v170);

      *(v51 + 4) = v58;
      sub_9468();
      _os_log_impl(v59, v60, v61, v62, v51, 0xCu);
      sub_91DC(v52);
      sub_9474();
      sub_9474();

      v57 = v168;
    }

    else
    {

      v57 = v168;
      v53 = v47;
    }

    v63 = v167;
    v156 = v53;
    if (!v53 || (sub_1AEA8(v53), !v64))
    {
    }

    sub_21C44();
    v65 = v63 + 16;
    v66 = *(v63 + 16);
    v66(v34, v36, v57);
    v67 = sub_21E54();
    v68 = sub_220B4();
    v69 = os_log_type_enabled(v67, v68);
    v164 = v36;
    if (v69)
    {
      v70 = v63;
      v71 = sub_94C8();
      v72 = sub_94F8();
      v170[0] = v72;
      *v71 = 136315138;
      v73 = sub_21C24();
      v57 = v74;
      v75 = v70;
      v36 = v164;
      v162 = *(v75 + 8);
      v162(v34, v168);
      sub_E6C0(v73, v57, v170);
      sub_9618();
      *(v71 + 4) = v73;
      _os_log_impl(&dword_0, v67, v68, "#MessagingWithSiriController languageCode.debugDescription %s", v71, 0xCu);
      sub_91DC(v72);
      sub_9474();
      sub_9474();
    }

    else
    {

      v162 = *(v63 + 8);
      v162(v34, v57);
    }

    v76 = v163;
    v77 = v157;
    v66(v157, v36, v57);
    v78 = sub_21E54();
    v79 = sub_220B4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = v77;
      v81 = sub_94C8();
      v82 = sub_94F8();
      v170[0] = v82;
      *v81 = 136315138;
      v83 = sub_21C14();
      v152[0] = v65;
      v84 = v36;
      v85 = v66;
      v86 = v76;
      v87 = v83;
      v57 = v88;
      v162(v80, v168);
      v89 = v87;
      v76 = v86;
      v66 = v85;
      v36 = v84;
      sub_E6C0(v89, v57, v170);
      sub_9618();
      *(v81 + 4) = v80;
      _os_log_impl(&dword_0, v78, v79, "#MessagingWithSiriController languageCode.identifier %s", v81, 0xCu);
      sub_91DC(v82);
      sub_9474();
      sub_93D4();
    }

    else
    {

      v162(v77, v57);
    }

    v91 = v159;
    v90 = v160;
    v92 = v158;
    v66(v158, v36, v57);
    sub_8B34(v92, 0, 1, v57);
    v93 = sub_21C84();
    sub_8B34(v91, 1, 1, v93);
    v94 = sub_21C74();
    sub_8B34(v90, 1, 1, v94);
    v95 = v166;
    sub_9548();
    sub_21C54();
    v96 = v165;
    (*(v76 + 16))(v161, v95, v165);
    v97 = sub_21E54();
    v98 = sub_220B4();
    if (sub_970C(v98))
    {
      v99 = sub_94C8();
      v100 = sub_94F8();
      v170[0] = v100;
      *v99 = 136315138;
      sub_92C0(&qword_31678, &type metadata accessor for Locale);
      v101 = sub_222A4();
      v57 = v102;
      v103 = sub_9674();
      (v76)(v103);
      sub_E6C0(v101, v57, v170);
      sub_9618();
      *(v99 + 4) = v101;
      _os_log_impl(&dword_0, v97, v98, "#MessagingWithSiriController locale %s", v99, 0xCu);
      sub_91DC(v100);
      v36 = v164;
      sub_9474();
      sub_93AC();
    }

    else
    {

      v104 = sub_9674();
      (v76)(v104);
    }

    a2 = v155;
    v105 = sub_21E54();
    v106 = sub_220B4();
    if (sub_9418(v106))
    {
      v107 = sub_94C8();
      v108 = sub_94F8();
      v170[0] = v108;
      *v107 = 136315138;
      if (qword_31530 != -1)
      {
        sub_9388();
        swift_once();
      }

      sub_9598();
      swift_beginAccess();

      v109 = sub_21EC4();
      v111 = v110;

      v112 = sub_E6C0(v109, v111, v170);

      *(v107 + 4) = v112;
      sub_958C();
      _os_log_impl(v113, v114, v115, v116, v107, 0xCu);
      sub_91DC(v108);
      sub_93AC();
      sub_9474();

      a2 = v155;
      v36 = v164;
      v96 = v165;
      v57 = v168;
    }

    else
    {
    }

    if (qword_31530 != -1)
    {
      sub_9388();
      swift_once();
    }

    v117 = v156;
    if (v156 && (v118 = sub_1AEA8(v156), v119))
    {
      v120 = v118;
      v121 = v119;
    }

    else
    {

      v120 = 0;
      v121 = 0xE000000000000000;
    }

    swift_beginAccess();
    v122 = sub_1ED50(v120, v121, static MessagesSettingsUtils.readableLanguageToLocaleMap);
    v124 = v123;

    if (v124)
    {
      swift_endAccess();

      v125 = sub_21E54();
      v126 = sub_220B4();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = sub_94C8();
        v128 = sub_94F8();
        v170[0] = v128;
        *v127 = 136315138;
        v129 = sub_9580();
        *(v127 + 4) = sub_E6C0(v129, v130, v131);
        sub_9468();
        _os_log_impl(v132, v133, v134, v135, v127, 0xCu);
        sub_91DC(v128);
        sub_9474();
        sub_93FC();
      }

      v136 = sub_9580();
      sub_C890(v136, v137);

      sub_8AF4(0, &qword_315E8, NSLocale_ptr);
      sub_95A4();

      sub_9580();
      v138 = sub_17804();
      v139 = [v138 languageCode];

      v140 = sub_21EF4();
      v142 = v141;

      v143 = sub_9FC4();
      sub_A1B4(v140, v142, v143);

      if (qword_31540 != -1)
      {
        swift_once();
      }

      v144 = sub_1B854();
      v145 = v144 + 5;
      v146 = v144[2] + 1;
      while (--v146)
      {
        if (*(v145 - 1) != v122 || v124 != *v145)
        {
          v145 += 2;
          if ((sub_222C4() & 1) == 0)
          {
            continue;
          }
        }

        v148 = sub_9580();
        sub_1B718(v148, v149);

        goto LABEL_51;
      }

LABEL_51:

      v36 = v164;
    }

    else
    {
      swift_endAccess();
    }

    (v76)(v166, v96);
    v162(v36, v57);
    a1 = v154;
    v4 = v153;
  }

  v150 = sub_21CA4().super.isa;
  v151 = type metadata accessor for MessagingWithSiriController();
  v171.receiver = v4;
  v171.super_class = v151;
  objc_msgSendSuper2(&v171, "tableView:commitEditingStyle:forRowAtIndexPath:", a1, a2, v150);
}

uint64_t sub_6F6C()
{
  isa = sub_21CA4().super.isa;
  v1 = sub_95BC();
  v3 = [v1 v2];

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v4 = sub_21E64();
  sub_9444(v4, qword_31EE0);
  v5 = v3;
  v6 = sub_21E54();
  v7 = sub_220B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_94C8();
    v9 = sub_94F8();
    *&v37 = v9;
    *v8 = 136315138;
    *&v35 = v3;
    v10 = v5;
    sub_7E80(&qword_31658, &qword_22C70);
    v11 = sub_21F14();
    v13 = sub_E6C0(v11, v12, &v37);

    *(v8 + 4) = v13;
    sub_96B4(&dword_0, v14, v15, "#MessagingWithSiriController canEditRowAt %s");
    sub_91DC(v9);
    sub_9474();
    sub_9474();
  }

  if (!v5)
  {
    v37 = 0u;
    v38 = 0u;
LABEL_18:
    sub_8F6C(&v37, &qword_31610, &qword_23080);
LABEL_19:
    v26 = sub_21E54();
    v27 = sub_220B4();
    if (!sub_9418(v27))
    {
LABEL_21:

      v25 = 0;
      goto LABEL_22;
    }

LABEL_20:
    v28 = sub_94E0();
    sub_95D4(v28);
    sub_958C();
    _os_log_impl(v29, v30, v31, v32, v6, 2u);
    sub_93AC();
    goto LABEL_21;
  }

  v16 = sub_21EF4();
  v18 = sub_16FAC(v16, v17, v5);
  if (v18)
  {
    v6 = v18;
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (!*(&v36 + 1))
  {
    goto LABEL_18;
  }

  sub_7E80(&qword_31650, &qword_22C68);
  if ((sub_96F4() & 1) == 0)
  {
    goto LABEL_19;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = NSStringFromClass(ObjCClassFromMetadata);
  v21 = sub_21EF4();
  v6 = v22;

  if (v21 == 0xD000000000000025 && 0x80000000000235D0 == v6)
  {

LABEL_24:
    v26 = sub_21E54();
    v34 = sub_220B4();
    if (!sub_9418(v34))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v24 = sub_222C4();

  if (v24)
  {
    goto LABEL_24;
  }

  v25 = 1;
LABEL_22:

  return v25;
}

void sub_7374()
{
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v0 = sub_21E64();
  sub_9444(v0, qword_31EE0);
  oslog = sub_21E54();
  v1 = sub_220B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_94E0();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "#MessagingWithSiriController long press", v2, 2u);
    sub_9474();
  }
}

uint64_t sub_748C(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native)
{
  if (qword_31548 != -1)
  {
LABEL_36:
    sub_9368();
  }

  v3 = sub_21E64();
  sub_87F8(v3, qword_31EE0);

  v4 = sub_21E54();
  v5 = sub_220B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_94C8();
    v7 = sub_94F8();
    v76[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_E6C0(a1, isUniquelyReferenced_nonNull_native, v76);
    sub_9554();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_91DC(v7);
    sub_93D4();
    sub_93AC();
  }

  v67 = &_swiftEmptyArrayStorage;
  v77 = &_swiftEmptyArrayStorage;
  sub_21E44();
  v13 = sub_21E24();
  v14 = 0;
  v15 = v13 + 56;
  v74 = v13;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 56);
  v71 = (v16 + 63) >> 6;
  v68 = isUniquelyReferenced_nonNull_native;
  while (v18)
  {
    v19 = isUniquelyReferenced_nonNull_native;
LABEL_13:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v22 = (*(v74 + 48) + ((v14 << 10) | (16 * v21)));
    v24 = *v22;
    v23 = v22[1];
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    sub_95A4();
    swift_bridgeObjectRetain_n();
    v25 = sub_17804();
    v26 = [v25 languageCode];

    sub_21EF4();
    v27 = sub_17804();
    isUniquelyReferenced_nonNull_native = v19;
    LOBYTE(v25) = sub_C700();

    if ((v25 & 1) != 0 && (sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr), v28 = sub_C57C(v24), v29))
    {
      v30 = v28;
      v31 = v29;
      v70 = v24;
      if (qword_31530 != -1)
      {
        sub_9388();
        swift_once();
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
      v75 = static MessagesSettingsUtils.readableLanguageToLocaleMap;
      static MessagesSettingsUtils.readableLanguageToLocaleMap = 0x8000000000000000;
      v72 = v30;
      v33 = v30;
      v34 = v31;
      v35 = sub_214F4(v33, v31);
      v37 = *(v32 + 16);
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v40 = v35;
      v41 = v36;
      sub_7E80(&qword_315F8, &qword_22C38);
      if (sub_22254(isUniquelyReferenced_nonNull_native, v39))
      {
        v42 = sub_214F4(v72, v34);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_38;
        }

        v40 = v42;
      }

      if (v41)
      {
        v44 = (v75[7] + 16 * v40);
        v45 = v44[1];
        *v44 = v70;
        v44[1] = v23;
      }

      else
      {
        v75[(v40 >> 6) + 8] |= 1 << v40;
        v46 = (v75[6] + 16 * v40);
        *v46 = v72;
        v46[1] = v34;
        v47 = (v75[7] + 16 * v40);
        *v47 = v70;
        v47[1] = v23;
        v48 = v75[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          __break(1u);
LABEL_38:
          result = sub_222F4();
          __break(1u);
          return result;
        }

        v75[2] = v50;
      }

      static MessagesSettingsUtils.readableLanguageToLocaleMap = v75;
      swift_endAccess();
      v51 = objc_opt_self();
      v52 = sub_1E8A8(v72, v34, v69, 0, 0, 0, 3, 0, v51);
      isUniquelyReferenced_nonNull_native = v68;
      if (v52)
      {
        v53 = v52;
        sub_21EF4();
        sub_93C8();
        sub_93F0();
        sub_1E79C(v54, v55, v56, v53);
        v57 = v53;
        sub_21F64();
        v58 = *(&dword_18 + (v77 & 0xFFFFFFFFFFFFFF8));
        if (*(&dword_10 + (v77 & 0xFFFFFFFFFFFFFF8)) >= v58 >> 1)
        {
          sub_945C(v58);
          sub_21FA4();
        }

        sub_9580();
        sub_21FD4();

        v67 = v77;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= v71)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v19 = isUniquelyReferenced_nonNull_native;
      v14 = v20;
      goto LABEL_13;
    }
  }

  v59 = sub_21E54();
  v60 = sub_220B4();
  if (sub_970C(v60))
  {
    v61 = sub_94C8();
    v62 = sub_94F8();
    v76[0] = v62;
    *v61 = 136315138;
    sub_8AF4(0, &qword_31600, PSSpecifier_ptr);
    v63 = sub_21F94();
    v65 = sub_E6C0(v63, v64, v76);

    *(v61 + 4) = v65;

    _os_log_impl(&dword_0, v59, v60, "#MessagingWithSiriController returning suggested languages : %s", v61, 0xCu);
    sub_91DC(v62);
    sub_93D4();
    sub_9474();
  }

  else
  {
  }

  return v67;
}

id sub_7A60(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup] = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink] = 0;
  v5 = &v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView] = 0;
  if (a2)
  {
    v6 = sub_21EE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for MessagingWithSiriController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_7BD4(void *a1)
{
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_messageWithoutConfSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_destinationSpecifierGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_headPhonesSpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_carPlaySpecifier] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_listOfSubscribedLanguages] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguageSpecifiers] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguagesGroup] = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_addTTSLanguageLink] = 0;
  v3 = &v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_suggestedLanguage];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC20SiriMessagesSettings27MessagingWithSiriController_tableView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MessagingWithSiriController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_7CF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagingWithSiriController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of TTSDownloader.localeToPercentageMap()
{
  sub_7E80(&qword_31558, &qword_22BA0);
  swift_allocObject();
  return sub_7F74();
}

uint64_t sub_7E80(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of ThreadSafeDictionary.dictionary()
{
  sub_9548();
  swift_getTupleTypeMetadata2();
  sub_21FB4();
  sub_9548();

  return sub_21ED4();
}

id variable initialization expression of ThreadSafeDictionary.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

uint64_t sub_7F74()
{
  *(v0 + 16) = sub_21ED4();
  *(v0 + 24) = [objc_allocWithZone(NSLock) init];
  return v0;
}

void sub_8000(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_8034();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_803C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_80A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_9360;

  return v7();
}

uint64_t sub_8188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_8270;

  return v8();
}

uint64_t sub_8270()
{
  sub_9574();
  sub_95B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_939C();
  *v4 = v3;

  sub_9510();

  return v5();
}

uint64_t sub_8350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_7E80(&qword_31688, &qword_22CA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_8ED4(a3, v24 - v10);
  v12 = sub_22044();
  if (sub_8F44(v11, 1, v12) == 1)
  {
    sub_8F6C(v11, &qword_31688, &qword_22CA8);
  }

  else
  {
    sub_22034();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    v13 = *(a5 + 24);
    v14 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v15 = sub_22004();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21F24() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_8F6C(a3, &qword_31688, &qword_22CA8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_8F6C(a3, &qword_31688, &qword_22CA8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_861C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8714;

  return v7(a1);
}

uint64_t sub_8714()
{
  sub_9574();
  sub_95B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_939C();
  *v4 = v3;

  sub_9510();

  return v5();
}

uint64_t sub_87F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_8830(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21EE4();

  v5 = [a3 groupSpecifierWithName:v4];

  return v5;
}

uint64_t sub_8894()
{
  sub_9688();

  return _swift_deallocObject();
}

uint64_t sub_88D0(void *a1)
{
  v1 = [a1 specifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21F84();

  return v3;
}

uint64_t sub_892C(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21EF4();

  return v3;
}

uint64_t sub_899C()
{
  v1 = *(v0 + 16);

  sub_9688();

  return _swift_deallocObject();
}

uint64_t sub_89D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_8A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_8A48()
{
  result = qword_31638;
  if (!qword_31638)
  {
    sub_8AAC(&qword_31630, &qword_23050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31638);
  }

  return result;
}

uint64_t sub_8AAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_8AF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int sub_8B84(uint64_t a1, Swift::UInt a2)
{
  sub_22314();
  sub_22324(a2);
  return sub_22334();
}

uint64_t sub_8BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_160DC() & 1;
}

uint64_t sub_8C18()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8C60()
{
  sub_95C8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8270;
  sub_9548();

  return v6();
}

uint64_t sub_8D10()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_9360;

  return sub_80A0(v2, v3, v5);
}

uint64_t sub_8DD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8E10(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = sub_9564(v7);
  *v8 = v9;
  v8[1] = sub_9360;

  return sub_8188(a1, v3, v4, v6);
}

uint64_t sub_8ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7E80(&qword_31688, &qword_22CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8F6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_7E80(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_8FCC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_9004()
{
  sub_95C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_9564(v3);
  *v4 = v5;
  v6 = sub_94A8(v4);

  return v7(v6);
}

uint64_t sub_9098()
{
  sub_95C8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_9564(v3);
  *v4 = v5;
  v6 = sub_94A8(v4);

  return v7(v6);
}

unint64_t sub_9188()
{
  result = qword_316A0;
  if (!qword_316A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316A0);
  }

  return result;
}

uint64_t sub_91DC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for TTSAssetProperty()
{
  if (!qword_316A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_316A8);
    }
  }
}

uint64_t sub_92C0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_9308(Swift::UInt a1)
{
  sub_22314();
  sub_22324(a1);
  return sub_22334();
}

uint64_t sub_9368()
{

  return swift_once();
}

uint64_t sub_93AC()
{
}

uint64_t sub_93D4()
{
}

uint64_t sub_93FC()
{
}

BOOL sub_9418(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_9474()
{
}

BOOL sub_948C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_94A8(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_94C8()
{

  return swift_slowAlloc();
}

uint64_t sub_94E0()
{

  return swift_slowAlloc();
}

uint64_t sub_94F8()
{

  return swift_slowAlloc();
}

uint64_t sub_9510()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

NSString sub_951C()
{

  return sub_21EE4();
}

BOOL sub_95E0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id sub_95FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{

  return sub_1E8A8(a1, a2, a3, a4, a5, 0, 6, 0, a9);
}

uint64_t sub_9618()
{
  v2 = *(v0 - 168);
}

uint64_t sub_9634()
{

  return swift_slowAlloc();
}

void sub_96B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_96D4@<X0>(uint64_t a1@<X8>)
{

  return static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000014, ((a1 - 32) | 0x8000000000000000));
}

uint64_t sub_96F4()
{

  return swift_dynamicCast();
}

BOOL sub_970C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_9724()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBlueColor];
    [v2 setTextColor:v3];

    v4 = static MessagesSettingsUtils.getLocalizedString(_:)(0x474E414C5F444441, 0xED00005345474155);
    sub_21744(v4, v5, v2);
    v10.receiver = v0;
    v10.super_class = type metadata accessor for AddLanguagesCell();
    objc_msgSendSuper2(&v10, "layoutSubviews");
  }

  else
  {
    if (qword_31548 != -1)
    {
      swift_once();
    }

    v6 = sub_21E64();
    sub_87F8(v6, qword_31EE0);
    oslog = sub_21E54();
    v7 = sub_220B4();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, oslog, v7, "#LanguageCell layoutSubviews textLabel nil", v8, 2u);
    }
  }
}

id sub_9914(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_21EE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for AddLanguagesCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_9A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_21EE4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AddLanguagesCell();
  v6 = objc_msgSendSuper2(&v8, "initWithStyle:reuseIdentifier:", a1, v5);

  return v6;
}

id sub_9AFC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddLanguagesCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_9B8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddLanguagesCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9BE4()
{
  if (qword_31510 != -1)
  {
    swift_once();
  }

  v0 = sub_21EE4();
  v1 = MGGetSInt32Answer();

  swift_beginAccess();
  v2 = sub_1ECA0(v1, qword_316E0);
  swift_endAccess();
  return v2;
}

Swift::Int sub_9CD8(unsigned __int8 a1)
{
  sub_22314();
  sub_22324(a1);
  return sub_22334();
}

Swift::Int sub_9D3C()
{
  v1 = *v0;
  sub_22314();
  sub_22324(v1);
  return sub_22334();
}

uint64_t sub_9D80()
{
  result = sub_21ED4();
  qword_316E0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MobileGestalt.DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MobileGestalt.DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x9F24);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_9F70()
{
  result = qword_316E8;
  if (!qword_316E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_316E8);
  }

  return result;
}

uint64_t sub_9FC4()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_A3C8(0xD00000000000001BLL, 0x80000000000236E0);
  if (!result)
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_221B4(79);
    v8._countAndFlagsBits = 0xD00000000000004DLL;
    v8._object = 0x8000000000023700;
    sub_21F44(v8);
    v9._object = 0x80000000000236E0;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    sub_21F44(v9);
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v2 = sub_21E64();
    sub_87F8(v2, qword_31EE0);

    v3 = sub_21E54();
    v4 = sub_220A4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_E6C0(0, 0xE000000000000000, v7);
      _os_log_impl(&dword_0, v3, v4, "Fatal error: %s", v5, 0xCu);
      sub_91DC(v6);
      sub_9474();
      sub_9474();
    }

    result = sub_22264();
    __break(1u);
  }

  return result;
}

void sub_A1B4(uint64_t a1, void *a2, void *a3)
{
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v6 = sub_21E64();
  sub_87F8(v6, qword_31EE0);

  v7 = sub_21E54();
  v8 = sub_220B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    v14 = 0x6269726373627553;
    *v9 = 136315138;
    v15 = 0xEA00000000002E65;
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    sub_21F44(v17);
    v11 = sub_E6C0(v14, 0xEA00000000002E65, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_0, v7, v8, "Disabling event '%s'", v9, 0xCu);
    sub_91DC(v10);
    sub_9474();
    sub_9474();
  }

  v14 = 0x6269726373627553;
  v15 = 0xEA00000000002E65;
  v18._countAndFlagsBits = a1;
  v18._object = a2;
  sub_21F44(v18);

  v19._countAndFlagsBits = 0x626173694473492ELL;
  v19._object = 0xEB0000000064656CLL;
  sub_21F44(v19);

  v12 = sub_21EE4();

  [a3 setBool:1 forKey:v12];
}

id sub_A3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21EE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_A480(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(&dword_10 + v14) + 32, (*(&dword_18 + v14) >> 1) - *(&dword_10 + v14), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t TTSDownloader.localeToPercentageMap.getter()
{
  sub_C45C();
  v1 = *(v0 + 16);
}

uint64_t TTSDownloader.localeToPercentageMap.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t TTSDownloader.onChangeActions.getter()
{
  sub_C45C();
  v1 = *(v0 + 24);
}

uint64_t TTSDownloader.onChangeActions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void sub_A6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v9 = sub_21E64();
  sub_87F8(v9, qword_31EE0);

  v10 = sub_21E54();
  v11 = sub_220B4();

  v36 = a1;
  if (os_log_type_enabled(v10, v11))
  {
    v35 = v5;
    v12 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v12 = 136315394;
    if (a2)
    {
      v13 = a1;
    }

    else
    {
      v13 = 7104878;
    }

    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = 0xE300000000000000;
    }

    v15 = sub_E6C0(v13, v14, &aBlock);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (a4)
    {
      v16 = a3;
    }

    else
    {
      v16 = 7104878;
    }

    if (a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_E6C0(v16, v17, &aBlock);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_0, v10, v11, "#TTSDownloadUtil triggerVoiceDownload locale %s, voiceName %s", v12, 0x16u);
    swift_arrayDestroy();
    sub_9474();
    v5 = v35;
    sub_9474();
  }

  if (!a2)
  {
    if (!a4)
    {
      goto LABEL_24;
    }

    v19 = sub_BB54(a3, a4);
    if (!v19)
    {
      goto LABEL_24;
    }

LABEL_23:
    v22 = [v19 primaryLanguage];
    sub_21EF4();

    sub_21DF4();
    v23 = objc_allocWithZone(sub_21D94());
    v24 = sub_21D74();
    v25 = [objc_allocWithZone(sub_21D14()) init];
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v25;
    v27 = v24;
    v28 = v25;
    sub_21CE4();

    v29 = swift_allocObject();
    *(v29 + 16) = v19;
    *(v29 + 24) = v5;
    v43 = sub_C324;
    v44 = v29;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_B5A8;
    v42 = &unk_2CE40;
    v30 = _Block_copy(&aBlock);
    v31 = v19;

    v43 = nullsub_1;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_B618;
    v42 = &unk_2CE68;
    v32 = _Block_copy(&aBlock);

    [v31 downloadWithReservation:0 useBattery:1 progress:v30 then:v32];

    _Block_release(v32);
    _Block_release(v30);
    return;
  }

  v19 = sub_B7EC(v36, a2);
  if (v19)
  {
    goto LABEL_23;
  }

  sub_21E44();
  v20 = sub_21E34();
  v19 = sub_B7EC(v20, v21);

  if (v19)
  {
    goto LABEL_23;
  }

LABEL_24:
  osloga = sub_21E54();
  v33 = sub_220A4();
  if (os_log_type_enabled(osloga, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, osloga, v33, "#TTSDownloadUtil ttsVoice is nil", v34, 2u);
    sub_9474();
  }
}

uint64_t sub_ABF4(id *a1, id *a2, unint64_t a3)
{
  if (qword_31548 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = sub_21E64();
    v7 = sub_87F8(v6, qword_31EE0);

    v53 = v7;
    v8 = sub_21E54();
    v9 = sub_220B4();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 136315138;
      sub_21DB4();
      v12 = sub_21F94();
      v14 = sub_E6C0(v12, v13, &v54);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v9, "#TTSDownloadUtil existingSubscriptions %s", v10, 0xCu);
      sub_91DC(v11);
    }

    v15 = sub_1EBC4(a1);
    v16 = &_swiftEmptyArrayStorage;
    v49 = a3;
    if (!v15)
    {
      break;
    }

    v17 = v15;
    v54 = &_swiftEmptyArrayStorage;
    result = sub_22224();
    if (v17 < 0)
    {
      __break(1u);
      return result;
    }

    v48 = a2;
    v20 = 0;
    v52 = a1 & 0xC000000000000001;
    v50 = a1 & 0xFFFFFFFFFFFFFF8;
    *&v19 = 138412290;
    v51 = v19;
    while (1)
    {
      a3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v52)
      {
        v21 = sub_221D4();
      }

      else
      {
        if (v20 >= *(v50 + 16))
        {
          goto LABEL_24;
        }

        v21 = a1[v20 + 4];
      }

      a2 = a1;
      v22 = v21;
      v23 = sub_21E54();
      v24 = sub_220B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = v51;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_0, v23, v24, "#TTSDownloadUtil subscribedVoices %@", v25, 0xCu);
        sub_C388(v26);
      }

      v28 = sub_21DA4();
      sub_21D84();

      v29 = sub_21DA4();
      sub_21D64();

      v30 = objc_allocWithZone(sub_21D94());
      sub_21D74();

      sub_22204();
      v31 = v54[2];
      sub_22234();
      sub_22244();
      sub_22214();
      ++v20;
      a1 = a2;
      if (a3 == v17)
      {
        v16 = v54;
        a2 = v48;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_16:
  v54 = a2;
  __chkstk_darwin();
  v47[2] = &v54;
  if ((sub_EF98(sub_C368, v47, v16) & 1) == 0)
  {

    v32 = sub_21E54();
    v33 = sub_220B4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      sub_21D94();
      v36 = sub_21F94();
      v38 = sub_E6C0(v36, v37, &v54);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v32, v33, "#TTSDownloadUtil current subscriptions %s", v34, 0xCu);
      sub_91DC(v35);
    }

    v39 = a2;
    v40 = sub_21E54();
    v41 = sub_220B4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_0, v40, v41, "#TTSDownloadUtil adding subscribe %@", v42, 0xCu);
      sub_C388(v43);
    }

    sub_7E80(&qword_31870, &unk_23020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EA0;
    *(inited + 32) = v39;
    v54 = v16;
    v46 = v39;
    sub_A480(inited, sub_1EBC4, sub_1B40C, sub_1B150);
    sub_21D04();
  }
}

void sub_B224(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);
  v9 = sub_21E54();
  v10 = sub_220B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218496;
    *(v11 + 4) = a4;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a1;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a2;
    _os_log_impl(&dword_0, v9, v10, "#TTSDownloadUtil time %f, done %ld, expected %ld", v11, 0x20u);
  }

  v12 = sub_21E54();
  v13 = sub_220B4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = ((a1 / a2) * 100.0);
    _os_log_impl(&dword_0, v12, v13, "#TTSDownloadUtil (done / expected * 100) %f", v14, 0xCu);
  }

  v15 = a3;
  v16 = sub_21E54();
  v17 = sub_220B4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    v20 = [v15 primaryLanguage];
    v21 = sub_21EF4();
    v22 = a2;
    v24 = v23;

    v25 = sub_E6C0(v21, v24, &v32);
    a2 = v22;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_0, v16, v17, "#TTSDownloadUtil ttsVoice.primaryLangue %s", v18, 0xCu);
    sub_91DC(v19);
  }

  v26 = (a1 / a2) * 100.0;
  if (COERCE_INT(fabs(v26)) > 2139095039)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v26 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v26 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v15 primaryLanguage];
  v29 = sub_21EF4();
  v31 = v30;

  sub_B684(v29, v31, v27);
}

uint64_t sub_B5A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

void sub_B618(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_C45C();
  v8 = *(v4 + 16);

  sub_C074(a1, a2, a3);

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v9 = sub_21E64();
  sub_87F8(v9, qword_31EE0);
  v10 = sub_21E54();
  v11 = sub_220B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#TTSDownloadUtil calling on change", v12, 2u);
    sub_9474();
  }

  result = sub_C45C();
  v14 = *(v4 + 24);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = (v14 + 40);
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;

      v18(v19);

      v16 += 2;
      --v15;
    }

    while (v15);
  }

  return result;
}

void *sub_B7EC(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_C210();
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 1;
  *(inited + 40) = a1;
  v27 = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_C254();
  v26 = a2;

  sub_21ED4();
  v6 = sub_21E04();

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);
  v8 = v6;
  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_94C8();
    v12 = sub_94F8();
    v28 = v12;
    *v11 = 136315138;
    v13 = v8;
    sub_7E80(&qword_31898, &unk_22F70);
    v14 = sub_21F14();
    v16 = sub_E6C0(v14, v15, &v28);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_0, v9, v10, "#TTSDownloadUtil voice: %s", v11, 0xCu);
    sub_91DC(v12);
    sub_9474();
    sub_9474();
  }

  v17 = v8;
  v18 = sub_21E54();
  v19 = sub_220B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_94C8();
    v21 = sub_94F8();
    v28 = v21;
    *v20 = 136315138;
    if (v6)
    {
      [v17 locallyAvailable];
    }

    sub_7E80(&qword_31890, &qword_23090);
    v22 = sub_21F14();
    v24 = sub_E6C0(v22, v23, &v28);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v18, v19, "#TTSDownloadUtil is locally available: %s", v20, 0xCu);
    sub_91DC(v21);
    sub_9474();
    sub_9474();
  }

  if (v6 && ([v17 locallyAvailable] & 1) == 0)
  {
    sub_B684(v27, v26, 0);
  }

  return v6;
}

void *sub_BB54(uint64_t a1, uint64_t a2)
{
  sub_21E14();
  sub_7E80(&qword_31870, &unk_23020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22EA0;
  sub_C210();
  *(v4 + 32) = sub_22074();
  sub_7E80(&qword_31880, &unk_22F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22EB0;
  *(inited + 64) = &type metadata for String;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  type metadata accessor for TTSAssetProperty();
  sub_C254();

  sub_21ED4();
  v6 = sub_21E04();

  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);
  v8 = v6;
  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_94C8();
    v12 = sub_94F8();
    v45 = v12;
    *v11 = 136315138;
    v13 = v8;
    sub_7E80(&qword_31898, &unk_22F70);
    v14 = sub_21F14();
    v16 = sub_E6C0(v14, v15, &v45);

    *(v11 + 4) = v16;
    sub_C43C(&dword_0, v17, v18, "#TTSDownloadUtil voice: %s");
    sub_91DC(v12);
    sub_9474();
    sub_9474();
  }

  v19 = v8;
  v20 = sub_21E54();
  v21 = sub_220B4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_94C8();
    v23 = sub_94F8();
    v45 = v23;
    *v22 = 136315138;
    if (v6)
    {
      [v19 locallyAvailable];
    }

    sub_7E80(&qword_31890, &qword_23090);
    v24 = sub_21F14();
    v26 = sub_E6C0(v24, v25, &v45);

    *(v22 + 4) = v26;
    sub_C43C(&dword_0, v27, v28, "#TTSDownloadUtil is locally available: %s");
    sub_91DC(v23);
    sub_9474();
    sub_9474();
  }

  else
  {
  }

  v29 = v19;
  v30 = sub_21E54();
  v31 = sub_220B4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = sub_94C8();
    v33 = sub_94F8();
    v45 = v33;
    *v32 = 136315138;
    if (v6)
    {
      v34 = [v29 primaryLanguage];
      v35 = sub_21EF4();
      v37 = v36;
    }

    else
    {
      v37 = 0xE300000000000000;
      v35 = 7104878;
    }

    v38 = sub_E6C0(v35, v37, &v45);

    *(v32 + 4) = v38;
    _os_log_impl(&dword_0, v30, v31, "#TTSDownloadUtil primaryLanguage: %s", v32, 0xCu);
    sub_91DC(v33);
    sub_9474();
    sub_9474();

    if (!v6)
    {
      return v6;
    }
  }

  else
  {

    if (!v6)
    {
      return v6;
    }
  }

  v39 = [v29 locallyAvailable];
  v40 = [v29 primaryLanguage];
  v41 = sub_21EF4();
  v43 = v42;

  if ((v39 & 1) == 0)
  {
    sub_B684(v41, v43, 0);
  }

  return v6;
}

uint64_t TTSDownloader.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t TTSDownloader.__deallocating_deinit()
{
  TTSDownloader.deinit();
  v0 = sub_C42C();

  return _swift_deallocClassInstance(v0);
}

uint64_t sub_C01C()
{
  sub_7E80(&qword_31558, &qword_22BA0);
  swift_allocObject();
  *(v0 + 16) = sub_7F74();
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  return v0;
}

id sub_C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  [v7 lock];
  swift_beginAccess();
  v8 = *(v3 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 16);
  sub_199D0(a3, a1, a2);
  *(v3 + 16) = v10;
  swift_endAccess();
  return [v7 unlock];
}

uint64_t ThreadSafeDictionary.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ThreadSafeDictionary.__deallocating_deinit()
{
  ThreadSafeDictionary.deinit();
  v0 = sub_C42C();

  return _swift_deallocClassInstance(v0);
}

unint64_t sub_C210()
{
  result = qword_31878;
  if (!qword_31878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_31878);
  }

  return result;
}

unint64_t sub_C254()
{
  result = qword_31888;
  if (!qword_31888)
  {
    type metadata accessor for TTSAssetProperty();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_31888);
  }

  return result;
}

uint64_t sub_C2AC()
{
  v1 = sub_C42C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_C2EC()
{
  v1 = *(v0 + 24);

  v2 = sub_C42C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C344(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1612C() & 1;
}

uint64_t sub_C388(uint64_t a1)
{
  v2 = sub_7E80(&qword_31680, &qword_22C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_C43C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_C45C()
{

  return swift_beginAccess();
}

uint64_t static MessagesSettingsUtils.getLocalizedString(_:)(uint64_t a1, void *a2)
{
  type metadata accessor for MessagingWithSiriController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v9._countAndFlagsBits = 0xE000000000000000;
  v11.value._object = 0x8000000000022F60;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = 0xD000000000000014;
  v6.super.isa = v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v7 = sub_21BF4(v10, v11, v6, v12, v9);

  return v7;
}

uint64_t *MessagesSettingsUtils.daemonSession.unsafeMutableAddressor()
{
  if (qword_31520 != -1)
  {
    sub_EDB4();
  }

  return &static MessagesSettingsUtils.daemonSession;
}

uint64_t sub_C57C(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_EC40(ObjCClassFromMetadata);
  if (!v3)
  {
    if (qword_31548 != -1)
    {
      sub_9368();
    }

    v6 = sub_21E64();
    sub_87F8(v6, qword_31EE0);
    v7 = sub_21E54();
    v8 = sub_220B4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "#SUICAssistantVoiceSettingsConnection assistantLanguageTitlesDictionary nil", v9, 2u);
      sub_9474();
    }

    return 0;
  }

  v4 = v3;

  sub_22174();
  sub_1ECEC(v10, v4, &v11);

  sub_912C(v10);
  if (!v12)
  {
    sub_ECAC(&v11);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_C700()
{
  v1 = v0;
  v2 = sub_21C94();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21C04();
  isa = sub_21C64().super.isa;
  (*(v3 + 8))(v6, v2);
  v8 = [v1 isEquivalentTo:isa];

  return v8;
}

uint64_t *MessagesSettingsUtils.readableLanguageToLocaleMap.unsafeMutableAddressor()
{
  if (qword_31530 != -1)
  {
    sub_EE34();
  }

  return &static MessagesSettingsUtils.readableLanguageToLocaleMap;
}

uint64_t *MessagesSettingsUtils.ttsDownloader.unsafeMutableAddressor()
{
  if (qword_31518 != -1)
  {
    sub_EDD4();
  }

  return &static MessagesSettingsUtils.ttsDownloader;
}

void sub_C890(uint64_t a1, unint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_22084();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 7104878;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_E6C0(v9, v10, &v22);

    *(v7 + 4) = v11;
    sub_EEB8(&dword_0, v12, v13, "#MessagingWithSiriController unsubscribing from %s");
    sub_91DC(v8);
    sub_9474();
    sub_9474();
  }

  if (a2)
  {

    sub_D194(a1, a2);
  }

  else
  {
    oslog = sub_21E54();
    v14 = sub_220A4();
    if (os_log_type_enabled(oslog, v14))
    {
      *swift_slowAlloc() = 0;
      sub_EED8(&dword_0, v15, v16, "#MessagingWithSiriController locale for unsubscribeVoice was nil", v17, v18, v19, v20, oslog);
      sub_9474();
    }
  }
}

uint64_t sub_CAA0()
{
  type metadata accessor for TTSDownloader();
  swift_allocObject();
  result = sub_C01C();
  static MessagesSettingsUtils.ttsDownloader = result;
  return result;
}

uint64_t static MessagesSettingsUtils.ttsDownloader.getter()
{
  if (qword_31518 != -1)
  {
    sub_EDD4();
  }

  sub_EE74();
}

uint64_t static MessagesSettingsUtils.ttsDownloader.modify()
{
  if (qword_31518 != -1)
  {
    sub_EDD4();
  }

  sub_EDF4();
  return sub_EE94();
}

id sub_CBD4()
{
  result = [objc_allocWithZone(sub_21D14()) init];
  static MessagesSettingsUtils.daemonSession = result;
  return result;
}

uint64_t static MessagesSettingsUtils.daemonSession.modify()
{
  if (qword_31520 != -1)
  {
    sub_EDB4();
  }

  sub_EDF4();
  return sub_EE94();
}

id sub_CCB4()
{
  result = [objc_allocWithZone(SUICAssistantVoiceSettingsConnection) init];
  static MessagesSettingsUtils.siriUISettingsConnection = result;
  return result;
}

uint64_t *MessagesSettingsUtils.siriUISettingsConnection.unsafeMutableAddressor()
{
  if (qword_31528 != -1)
  {
    sub_EE14();
  }

  return &static MessagesSettingsUtils.siriUISettingsConnection;
}

id sub_CD4C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_EE74();
  v3 = *a2;

  return v3;
}

void sub_CDC8(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t static MessagesSettingsUtils.siriUISettingsConnection.modify()
{
  if (qword_31528 != -1)
  {
    sub_EE14();
  }

  sub_EDF4();
  return sub_EE94();
}

uint64_t sub_CE94()
{
  result = sub_21ED4();
  static MessagesSettingsUtils.readableLanguageToLocaleMap = result;
  return result;
}

uint64_t static MessagesSettingsUtils.readableLanguageToLocaleMap.modify()
{
  if (qword_31530 != -1)
  {
    sub_EE34();
  }

  sub_EDF4();
  return sub_EE94();
}

uint64_t sub_CF90()
{
  result = sub_21ED4();
  static MessagesSettingsUtils.localeToPercentage = result;
  return result;
}

uint64_t *MessagesSettingsUtils.localeToPercentage.unsafeMutableAddressor()
{
  if (qword_31538 != -1)
  {
    sub_EE54();
  }

  return &static MessagesSettingsUtils.localeToPercentage;
}

uint64_t sub_D034(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_EE74();
  v3 = *a2;
}

uint64_t sub_D0B8(uint64_t a1, void *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = *a3;
  *a3 = a1;
  return a4(v7);
}

uint64_t static MessagesSettingsUtils.localeToPercentage.modify()
{
  if (qword_31538 != -1)
  {
    sub_EE54();
  }

  sub_EDF4();
  return sub_EE94();
}

void sub_D194(uint64_t a1, unint64_t a2)
{
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v4 = sub_21E64();
  sub_87F8(v4, qword_31EE0);

  v5 = sub_21E54();
  v6 = sub_22084();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 7104878;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v11 = sub_E6C0(v9, v10, &v26);

    *(v7 + 4) = v11;
    sub_EEB8(&dword_0, v12, v13, "#MessagingWithSiriController unsubscribing TTS subscription from %s");
    sub_91DC(v8);
    sub_9474();
    sub_9474();
  }

  if (a2)
  {
    v14 = qword_31520;

    if (v14 != -1)
    {
      sub_EDB4();
    }

    sub_EEF8();
    v15 = static MessagesSettingsUtils.daemonSession;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = v15;
    sub_21CE4();
  }

  else
  {
    oslog = sub_21E54();
    v18 = sub_220A4();
    if (os_log_type_enabled(oslog, v18))
    {
      *swift_slowAlloc() = 0;
      sub_EED8(&dword_0, v19, v20, "#MessagingWithSiriController locale for unsubscribeTTSVoice was nil", v21, v22, v23, v24, oslog);
      sub_9474();
    }
  }
}

void sub_D40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_31548 != -1)
  {
LABEL_30:
    swift_once();
  }

  v6 = sub_21E64();
  sub_87F8(v6, qword_31EE0);

  v7 = sub_21E54();
  v8 = sub_220B4();

  v37 = a1;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40[0] = v10;
    *v9 = 136315138;
    sub_21DB4();
    v11 = sub_21F94();
    v13 = sub_E6C0(v11, v12, v40);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "#MessagesSettingsUtils existingSubscriptions %s", v9, 0xCu);
    sub_91DC(v10);

    a1 = v37;
  }

  v40[0] = &_swiftEmptyArrayStorage;
  v14 = sub_1EBC4(a1);
  v15 = 0;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 & 0xC000000000000001;
  while (v14 != v15)
  {
    if (v39)
    {
      v16 = sub_221D4();
    }

    else
    {
      if (v15 >= *(v38 + 16))
      {
        goto LABEL_29;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v18 = sub_21DA4();
    sub_EF18();
    v20 = v19;
    v22 = v21;

    if (v20 == a2 && v22 == a3)
    {

      goto LABEL_18;
    }

    v24 = sub_222C4();

    if (v24)
    {

      goto LABEL_18;
    }

    v25 = sub_21DA4();
    sub_21D84();

    v26 = sub_21DA4();
    sub_21D64();

    v27 = objc_allocWithZone(sub_21D94());
    a1 = v37;
    v28 = sub_21D74();

    if (v28)
    {
      sub_21F64();
      if (*(&dword_10 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v40[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_21FA4();
      }

      sub_21FD4();
      ++v15;
    }

    else
    {
LABEL_18:
      ++v15;
    }
  }

  v29 = sub_21E54();
  v30 = sub_220B4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v31 = 136315138;
    sub_21D94();
    v33 = sub_21F94();
    v35 = sub_E6C0(v33, v34, v40);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_0, v29, v30, "#MessagesSettingsUtils after unsubscribing %s", v31, 0xCu);
    sub_91DC(v32);
  }

  if (qword_31520 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v36 = static MessagesSettingsUtils.daemonSession;
  sub_21D04();
}

uint64_t static MessagesSettingsUtils.chosenTTSAssetFor(language:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_31548 != -1)
  {
    sub_9368();
  }

  v8 = sub_21E64();
  sub_87F8(v8, qword_31EE0);

  v9 = sub_21E54();
  v10 = sub_220B4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_E6C0(a1, a2, &v17);
    _os_log_impl(&dword_0, v9, v10, "#MessagesSettingsUtils chosenTTSAssetFor: %s)", v11, 0xCu);
    sub_91DC(v12);
    sub_9474();
    sub_9474();
  }

  if (qword_31520 != -1)
  {
    sub_EDB4();
  }

  sub_EEF8();
  v13 = static MessagesSettingsUtils.daemonSession;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;

  v15 = v13;

  sub_21CE4();
}

void sub_DABC(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v7 = sub_21E64();
  sub_87F8(v7, qword_31EE0);

  v8 = sub_21E54();
  v9 = sub_220B4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v50 = v11;
    *v10 = 136315138;
    sub_21DB4();
    v12 = sub_21F94();
    v14 = sub_E6C0(v12, v13, &v50);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_0, v8, v9, "#MessagesSettingsUtils subscribedVoices: %s", v10, 0xCu);
    sub_91DC(v11);
  }

  v15 = sub_E0D0(a1, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = sub_21E54();
    v18 = sub_220B4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v50 = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      v23 = sub_21EF4();
      v25 = v24;

      v26 = sub_E6C0(v23, v25, &v50);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_0, v17, v18, "#MessagesSettingsUtils preferredVoice: %s", v19, 0xCu);
      sub_91DC(v20);
    }

    sub_21E14();
    sub_7E80(&qword_31870, &unk_23020);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22EA0;
    sub_8AF4(0, &qword_31878, TTSAssetType_ptr);
    *(v27 + 32) = sub_22074();
    sub_7E80(&qword_31880, &unk_22F60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EB0;
    *(inited + 32) = 0;
    v29 = sub_21DA4();
    v30 = sub_21D64();
    v32 = v31;

    *(inited + 64) = sub_7E80(&qword_318A8, &unk_22FC8);
    *(inited + 40) = v30;
    *(inited + 48) = v32;
    type metadata accessor for TTSAssetProperty();
    sub_C254();
    sub_21ED4();
    v33 = sub_21E04();

    v34 = v33;
    v35 = sub_21E54();
    v36 = sub_220B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v37 = 136315394;
      v38 = v34;
      sub_7E80(&qword_31898, &unk_22F70);
      v39 = sub_21F14();
      v41 = sub_E6C0(v39, v40, &v50);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      if (v33)
      {
        [v38 locallyAvailable];
      }

      sub_7E80(&qword_31890, &qword_23090);
      v46 = sub_21F14();
      v48 = sub_E6C0(v46, v47, &v50);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_0, v35, v36, "#MessagesSettingsUtils voice: %s, is locally available: %s", v37, 0x16u);
      swift_arrayDestroy();
    }

    a4(v33);
  }

  else
  {

    v42 = sub_21E54();
    v43 = sub_220B4();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_E6C0(a2, a3, &v50);
      _os_log_impl(&dword_0, v42, v43, "#MessagesSettingsUtils no subscribed voice for %s", v44, 0xCu);
      sub_91DC(v45);
    }

    a4(0);
  }
}

void *sub_E0D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v40 = sub_1EBC4(a1);
  if (v40)
  {
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    v4 = 0;
    v41 = a3;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_221D4();
      }

      else
      {
        if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_30;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v44 = v4 + 1;
      v7 = sub_21DA4();
      sub_21D84();

      v8 = sub_17804();
      v9 = [v8 languageCode];

      v10 = sub_21EF4();
      v12 = v11;

      v13 = sub_17804();
      v14 = [v13 languageCode];

      v15 = sub_21EF4();
      v17 = v16;

      if (qword_31548 != -1)
      {
        swift_once();
      }

      v18 = sub_21E64();
      sub_87F8(v18, qword_31EE0);

      v19 = sub_21E54();
      v20 = sub_220B4();

      v45 = v6;
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v46 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_E6C0(v10, v12, &v46);
        _os_log_impl(&dword_0, v19, v20, "#MessagesSettingsUtils voiceLanguage: %s", v21, 0xCu);
        sub_91DC(v22);
      }

      v23 = sub_21E54();
      v24 = sub_220B4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v46 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_E6C0(v15, v17, &v46);
        _os_log_impl(&dword_0, v23, v24, "#MessagesSettingsUtils languageOfText: %s", v25, 0xCu);
        sub_91DC(v26);
      }

      v27 = v45;
      v28 = v10 == v15 && v12 == v17;
      a3 = v41;
      if (v28)
      {
        break;
      }

      v29 = sub_222C4();

      if (v29)
      {
        goto LABEL_25;
      }

      ++v4;
      if (v44 == v40)
      {
        goto LABEL_20;
      }
    }

LABEL_25:

    v35 = sub_21E54();
    v36 = sub_220B4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_E6C0(a2, v41, &v46);
      _os_log_impl(&dword_0, v35, v36, "#MessagesSettingsUtils found subscribed voice for %s", v37, 0xCu);
      sub_91DC(v38);
    }
  }

  else
  {
LABEL_20:
    if (qword_31548 != -1)
    {
LABEL_31:
      swift_once();
    }

    v30 = sub_21E64();
    sub_87F8(v30, qword_31EE0);

    v31 = sub_21E54();
    v32 = sub_220B4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_E6C0(a2, a3, &v46);
      _os_log_impl(&dword_0, v31, v32, "#MessagesSettingsUtils did not find subscribed voice for %s", v33, 0xCu);
      sub_91DC(v34);
    }

    return 0;
  }

  return v27;
}

uint64_t sub_E674()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_E6C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_E794(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_ED54(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_91DC(v11);
  return v7;
}

unint64_t sub_E794(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_E894(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_221F4();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_E894(uint64_t a1, unint64_t a2)
{
  v4 = sub_E8E0(a1, a2);
  sub_E9F8(&off_2CA30);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_E8E0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21F54())
  {
    result = sub_EADC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_221A4();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_221F4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_E9F8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_EB4C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_EADC(uint64_t a1, uint64_t a2)
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

  sub_7E80(&qword_318A0, &qword_22FC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_EB4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_7E80(&qword_318A0, &qword_22FC0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_EC40(void *a1)
{
  v1 = [a1 assistantLanguageTitlesDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21EB4();

  return v3;
}

uint64_t sub_ECAC(uint64_t a1)
{
  v2 = sub_7E80(&qword_31610, &qword_23080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ED14()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_ED54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_EDB4()
{

  return swift_once();
}

uint64_t sub_EDD4()
{

  return swift_once();
}

uint64_t sub_EDF4()
{

  return swift_beginAccess();
}

uint64_t sub_EE14()
{

  return swift_once();
}

uint64_t sub_EE34()
{

  return swift_once();
}

uint64_t sub_EE54()
{

  return swift_once();
}

uint64_t sub_EE74()
{

  return swift_beginAccess();
}

void sub_EEB8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_EED8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 2u);
}

uint64_t sub_EEF8()
{

  return swift_beginAccess();
}

void sub_EF18()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = v0;
  v2 = sub_21D84();
  sub_170B8(v2, v3, v1, &selRef_getBaseLocale_);
  v5 = v4;

  if (!v5)
  {
LABEL_5:
    __break(1u);
  }
}

BOOL sub_EFC8()
{
  sub_176A0();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_F070(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a4(a3);
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = sub_221D4();
    }

    else
    {
      if (v7 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v9;
    v11 = a1(&v13);

    if (!v4)
    {
      v7 = v8 + 1;
      if ((v11 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void *sub_F168()
{
  v1 = v0;
  v2 = sub_951C();
  v3 = [v0 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47[0] = v45;
  v47[1] = v46;
  if (!*(&v46 + 1))
  {
    sub_8F6C(v47, &qword_31610, &qword_23080);
LABEL_12:
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v10 = sub_21E64();
    sub_9444(v10, qword_31EE0);
    v11 = sub_21E54();
    v12 = sub_220B4();
    if (sub_176F8(v12))
    {
      *sub_94E0() = 0;
      sub_17690();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_93FC();
    }

    v18 = sub_21E54();
    v19 = sub_220B4();
    if (sub_176F8(v19))
    {
      v20 = sub_94C8();
      v21 = sub_94F8();
      *&v47[0] = v21;
      *v20 = 136315138;
      if (qword_31530 != -1)
      {
        sub_EE34();
      }

      sub_C45C();

      v22 = sub_21EC4();
      v24 = v23;

      v25 = sub_E6C0(v22, v24, v47);

      *(v20 + 4) = v25;
      sub_17690();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_91DC(v21);
      sub_9474();
      sub_93FC();
    }

    sub_17144(v1, &selRef_title);
    if (v31)
    {
      if (qword_31530 != -1)
      {
        sub_EE34();
      }

      swift_beginAccess();
      v32 = sub_17684();
      sub_1ED50(v32, v33, v34);
      if (v35)
      {
        swift_endAccess();

        if (!*&v1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale])
        {
          sub_8AF4(0, &qword_315E8, NSLocale_ptr);
          sub_17610();
          v36 = sub_17804();
          v37 = [v36 languageCode];

          v38 = sub_21EF4();
          v40 = v39;

          sub_1772C();
          v41 = swift_allocObject();
          v41[2] = v1;
          v41[3] = v38;
          v41[4] = v40;
          v42 = v1;

          static MessagesSettingsUtils.chosenTTSAssetFor(language:_:)(v38, v40, sub_17548, v41);

          return &_swiftEmptyArrayStorage;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    return sub_F8A0();
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v4 = sub_21E64();
  sub_9444(v4, qword_31EE0);
  v5 = sub_21E54();
  v6 = sub_220B4();
  if (sub_17714(v6))
  {
    v7 = sub_94E0();
    sub_176B0(v7);
    sub_1777C(&dword_0, v8, v9, "#MessagesAutoConfirmSettingsController returning already initialized specifiers");
    sub_93D4();
  }

  sub_1CAA8(v44);
  sub_95A4();

  return v5;
}

uint64_t sub_F5BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    v7 = result;
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    v8 = v7;
    v9 = [v8 primaryLanguage];
    sub_21EF4();

    v10 = sub_17804();
    v11 = *(a2 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale);
    *(a2 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale) = v10;

    if (qword_31548 != -1)
    {
      swift_once();
    }

    v12 = sub_21E64();
    sub_87F8(v12, qword_31EE0);
    v13 = v8;

    v14 = sub_21E54();
    v15 = sub_220B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_E6C0(a3, a4, &v23);
      *(v16 + 12) = 2080;
      v17 = v13;
      v18 = [v17 description];
      v19 = sub_21EF4();
      v21 = v20;

      v22 = sub_E6C0(v19, v21, &v23);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_0, v14, v15, "#ReadingVoiceListController found asset for %s  %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    sub_F8A0();
  }

  return result;
}

uint64_t sub_F8A0()
{
  v1 = static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000010, 0x80000000000239F0);
  sub_1AF18(v1, v2, v0);
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v3 = sub_21E64();
  v4 = sub_87F8(v3, qword_31EE0);
  v5 = v0;
  v6 = sub_21E54();
  v7 = sub_220B4();

  v8 = &off_31000;
  v128 = v5;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = sub_94C8();
    *&v129[0] = sub_94F8();
    *v9 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
    if (v10)
    {
      v11 = v10;
      sub_10294();
      sub_17644();

      v5 = v128;
    }

    else
    {
      v8 = 7104878;
    }

    v12 = sub_1765C();
    sub_E6C0(v12, v13, v14);
    sub_176BC();
    *(v9 + 4) = v8;
    _os_log_impl(&dword_0, v6, v7, "ReadingVoiceListController current locale : %s", v9, 0xCu);
    sub_17558();
    sub_9474();
  }

  v131 = &_swiftEmptyArrayStorage;
  v15 = objc_opt_self();
  static MessagesSettingsUtils.getLocalizedString(_:)(0x5F59544549524156, 0xED0000454C544954);
  sub_93C8();
  v18 = sub_1E818(0x4779746569726176, 0xEC00000070756F72, v16, v17, v15);
  v19 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
  v20 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup] = v18;

  static MessagesSettingsUtils.getLocalizedString(_:)(0x49545F4543494F56, 0xEB00000000454C54);
  sub_93C8();
  v23 = sub_1E818(0x6F72476563696F76, 0xEA00000000007075, v21, v22, v15);
  v24 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
  v25 = *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup];
  *&v5[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup] = v23;

  v26 = v5;
  v27 = sub_21E54();
  v28 = sub_220B4();
  v127 = v4;
  if (sub_17714(v28))
  {
    v4 = v26;
    v29 = sub_94C8();
    v130[0] = sub_94F8();
    *v29 = 136315138;
    v30 = *&v5[v19];
    if (!v30)
    {
LABEL_74:

      __break(1u);
      goto LABEL_75;
    }

    v31 = v30;

    v32 = sub_21EF4();
    v34 = sub_16FAC(v32, v33, v31);

    if (v34)
    {
      sub_22124();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v129, 0, sizeof(v129));
    }

    sub_7E80(&qword_31610, &qword_23080);
    v35 = sub_21F14();
    v37 = sub_E6C0(v35, v36, v130);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_0, v27, v28, "#ReadingVoiceListController varietyGroup: %s", v29, 0xCu);
    sub_17558();
    sub_93FC();

    v4 = v127;
    v5 = v128;
  }

  else
  {
  }

  v126 = v19;
  v38 = *&v5[v19];
  if (!v38)
  {
    goto LABEL_70;
  }

  v39 = v38;
  isa = sub_21FE4().super.super.isa;
  v41 = sub_21EF4();
  sub_175A8(v41, v42);

  v43 = *&v5[v24];
  if (!v43)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v44 = v43;
  v45 = sub_21FE4().super.super.isa;
  v46 = sub_21EF4();
  sub_175A8(v46, v47);

  v48 = *&v5[v24];
  if (!v48)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v49 = v48;
  static MessagesSettingsUtils.getLocalizedString(_:)(0xD000000000000019, 0x8000000000023A10);
  v50 = sub_21EE4();

  v51 = sub_21EF4();
  sub_175A8(v51, v52);

  v53 = *&v5[v24];
  if (!v53)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v54 = v53;
  sub_21F64();
  if (*(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v131 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_21FA4();
  }

  sub_21FD4();
  v55 = v131;
  v56 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage;
  if (!sub_1EBC4(*&v26[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage]))
  {
    sub_10340();
  }

  sub_120EC();
  v57 = v26;
  v58 = sub_21E54();
  v59 = v26;
  v60 = sub_220B4();

  v123 = v59;
  v125 = v24;
  if (os_log_type_enabled(v58, v60))
  {
    v61 = sub_94C8();
    v62 = v55;
    v63 = sub_94F8();
    *&v129[0] = v63;
    *v61 = 136315138;
    v64 = *&v59[v56];
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);

    v65 = sub_21F94();
    v67 = v66;

    v68 = sub_E6C0(v65, v67, v129);

    *(v61 + 4) = v68;
    _os_log_impl(&dword_0, v58, v60, "#ReadingVoiceListController locales for language %s", v61, 0xCu);
    sub_91DC(v63);
    v55 = v62;
    sub_9474();
    v5 = v128;
    sub_9474();
  }

  v4 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  swift_beginAccess();
  if (sub_1EBC4(*&v57[v4]))
  {
    sub_11538();
  }

  else
  {
    v69 = *&v123[v56];
    v70 = sub_1EBC4(v69);
    if (v70)
    {
      v71 = v70;
      v124 = v55;
      if (v70 < 1)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      for (i = 0; i != v71; ++i)
      {
        if ((v69 & 0xC000000000000001) != 0)
        {
          v73 = sub_221D4();
        }

        else
        {
          v73 = *(v69 + 8 * i + 32);
        }

        v74 = v73;
        sub_108BC(v73);
        if (v75)
        {
          v76 = v75;
          sub_177D4();
          v77 = v76;
          sub_21F64();
          sub_17634(*&v57[v4]);
          if (v79)
          {
            sub_17624(v78);
            sub_21FA4();
          }

          sub_21FD4();
          swift_endAccess();

          v74 = v77;
        }
      }

      v5 = v128;
      v55 = v124;
    }
  }

  v80 = *&v57[v4];
  swift_bridgeObjectRetain_n();
  v130[0] = sub_1AF7C(v80);
  sub_16214(v130);

  v81 = *&v57[v4];
  *&v57[v4] = v130[0];

  if (sub_1EBC4(*&v57[v4]) <= 1)
  {
    goto LABEL_46;
  }

  v82 = *&v5[v126];
  if (!v82)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  sub_19CD8(0, v55);
  if (sub_19DD8(v55) < 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  v83 = sub_1EBC4(v55);
  v84 = v83 + 1;
  if (__OFADD__(v83, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v85 = v82;
  sub_1B40C(v84, 1);
  v86 = sub_17764();
  sub_19DFC(v86, v87, 1, v85);
  v88 = v131;
  v89 = *&v57[v4];
  if (sub_19DD8(v131) < 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v90 = sub_1EBC4(v89);
  v91 = sub_1EBC4(v88);
  v92 = v91 + v90;
  if (__OFADD__(v91, v90))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_1B40C(v92, 1);
  sub_19F3C(1, 1, v90, v89);
  v55 = v131;
LABEL_46:
  v93 = *&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
  if (!v93)
  {
LABEL_59:
    v121 = sub_1CAA8(v55);
    sub_1E9CC(v121, v57);
    v115 = sub_1CAA8(v55);

    return v115;
  }

  v94 = v93;
  sub_10294();
  sub_17644();
  v95 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_C45C();
  v96 = *&v57[v95];

  v97 = sub_1765C();
  v98 = sub_219D8(v97);

  if (!v98)
  {
LABEL_58:

    goto LABEL_59;
  }

  v99 = sub_1180C(v98);
  v100 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers;
  v101 = *&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers];
  *&v57[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers] = v99;

  v102 = *&v128[v125];
  if (v102)
  {
    v103 = v102;

    sub_1CC14(v103, v55);
    v105 = v104;
    v4 = v106;

    if (v4)
    {

      v107 = sub_21E54();
      v108 = sub_220B4();
      if (sub_17668(v108))
      {
        v109 = sub_94E0();
        sub_176B0(v109);
        sub_17600();
        _os_log_impl(v110, v111, v112, v113, v114, 2u);
        sub_93D4();
      }

      return 0;
    }

    v116 = __OFADD__(v105, 1);
    v117 = v105 + 1;
    if (!v116)
    {
      if ((v117 & 0x8000000000000000) == 0)
      {
        v4 = *&v57[v100];
        if (sub_19DD8(v55) >= v117)
        {
          v118 = sub_1EBC4(v4);
          v119 = sub_1EBC4(v55);
          v120 = v119 + v118;
          if (!__OFADD__(v119, v118))
          {

            sub_1B40C(v120, 1);
            sub_19F3C(v117, v117, v118, v4);
            v55 = v131;
            goto LABEL_58;
          }

          goto LABEL_69;
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_76:
  __break(1u);

  __break(1u);
  return result;
}

void sub_10294()
{
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v0 localeIdentifier];
  sub_21EF4();

  v4 = sub_17758();
  sub_170B8(v4, v5, v2, v6);
  v8 = v7;

  if (!v8)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_10340()
{
  if (qword_31548 != -1)
  {
LABEL_33:
    sub_A42C();
    swift_once();
  }

  v0 = sub_21E64();
  v65 = sub_87F8(v0, qword_31EE0);
  v1 = sub_21E54();
  v2 = sub_220B4();
  if (sub_176F8(v2))
  {
    v3 = sub_94C8();
    v4 = sub_94F8();
    v76 = v4;
    *v3 = 136315138;
    v5 = [sub_21E14() assistantVoiceMaps];
    sub_21DE4();

    sub_7E80(&qword_31938, &qword_23038);
    v6 = sub_21EC4();
    v8 = v7;

    v9 = sub_E6C0(v6, v8, &v76);

    *(v3 + 4) = v9;
    sub_17690();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_91DC(v4);
    sub_9474();
    sub_93FC();
  }

  v67 = &_swiftEmptyArrayStorage;
  v76 = &_swiftEmptyArrayStorage;
  v15 = [sub_21E14() assistantVoiceMaps];
  v16 = sub_21DE4();

  v18 = 0;
  v69 = 0;
  v19 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 64);
  v71 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
  v23 = (v20 + 63) >> 6;
  *&v17 = 136315138;
  v64 = v17;
  v24 = &MessagingWithSiriController;
  v70 = v23;
  v66 = v16;
LABEL_7:
  v25 = v18;
  while (v22)
  {
    v26 = v24;
    v18 = v25;
LABEL_14:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = (*(v16 + 48) + ((v18 << 10) | (16 * v27)));
    v29 = *v28;
    v30 = v28[1];
    sub_8AF4(0, &qword_315E8, NSLocale_ptr);
    sub_17738();

    sub_1765C();
    v31 = sub_17804();
    sub_10294();
    v33 = v32;
    v34 = v16;
    v36 = v35;

    v68 = v33;
    v37 = sub_17804();
    v38 = [v37 v26[28].weak_ivar_lyt];
    v39 = sub_21EF4();
    v41 = v40;

    v42 = *(v74 + v71);
    if (v42)
    {
      v72 = v36;
      v73 = v37;
      v43 = [v42 v26[28].weak_ivar_lyt];
      v44 = sub_21EF4();
      v46 = v45;

      if (v39 == v44 && v41 == v46)
      {

        v24 = &MessagingWithSiriController;
        v23 = v70;
LABEL_23:
        v50 = v73;
        v75 = v73;
        __chkstk_darwin(v49);
        v63[2] = &v75;
        v51 = v69;
        sub_F070(sub_174EC, v63, v67, sub_1EBC4);
        v69 = v51;
        v16 = v66;
        v52 = v72;
        if (v53)
        {
        }

        else
        {

          v54 = sub_21E54();
          v55 = sub_220B4();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = sub_94C8();
            v57 = sub_94F8();
            v75 = v57;
            *v56 = v64;
            v58 = sub_E6C0(v68, v52, &v75);

            *(v56 + 4) = v58;
            v16 = v66;
            sub_177EC(&dword_0, v54, v55, "#ReadingVoiceListController adding variety %s");
            sub_91DC(v57);
            sub_9474();
            sub_9474();
          }

          else
          {
          }

          sub_21F64();
          sub_17634(v76);
          v24 = &MessagingWithSiriController;
          if (v60)
          {
            sub_17624(v59);
            sub_21FA4();
          }

          sub_21FD4();
          v67 = v76;
        }

        goto LABEL_7;
      }

      v48 = sub_222C4();

      v24 = &MessagingWithSiriController;
      v23 = v70;
      if (v48)
      {
        goto LABEL_23;
      }

      v25 = v18;
      v16 = v66;
    }

    else
    {

      v25 = v18;
      v24 = v26;
      v16 = v34;
      v23 = v70;
    }
  }

  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v18 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v18);
    ++v25;
    if (v22)
    {
      v26 = v24;
      goto LABEL_14;
    }
  }

  v61 = *(v74 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage);
  *(v74 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeVarietiesWithinLanguage) = v67;
}

void sub_108BC(void *a1)
{
  v2 = v1;
  v4 = sub_21C94();
  v151 = *(v4 - 8);
  v152 = v4;
  v5 = *(v151 + 64);
  __chkstk_darwin(v4);
  v150 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14C58();
  v8 = v7;
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v9 = sub_21E64();
  v10 = sub_87F8(v9, qword_31EE0);
  v11 = a1;

  v12 = sub_21E54();
  v13 = sub_220B4();

  v14 = os_log_type_enabled(v12, v13);
  v160 = v1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = v8;
    v17 = sub_9634();
    v163[0] = sub_94F8();
    *v15 = 138412546;
    *(v15 + 4) = v11;
    *v17 = v11;
    *(v15 + 12) = 2080;
    sub_21E14();
    v18 = v11;
    v19 = sub_21F94();
    v21 = v11;
    v22 = sub_E6C0(v19, v20, v163);
    v2 = v160;

    *(v15 + 14) = v22;
    v11 = v21;
    _os_log_impl(&dword_0, v12, v13, "#ReadingVoiceListController all voices from locale : %@ : %s", v15, 0x16u);
    sub_8F6C(v17, &qword_31680, &qword_22C90);
    v8 = v16;
    sub_9474();
    sub_17558();
    sub_9474();
  }

  sub_10294();
  v24 = v23;
  v26 = v25;
  v27 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_177D4();

  v28 = *&v2[v27];
  swift_isUniquelyReferenced_nonNull_native();
  v162[0] = *&v2[v27];
  sub_19A94(v8, v24, v26);
  *&v2[v27] = v162[0];

  swift_endAccess();
  v29 = sub_17144(v11, &selRef_regionCode);
  if (!v30)
  {

    return;
  }

  v31 = v29;
  v32 = v30;

  v33 = sub_21E54();
  sub_220B4();

  v34 = sub_177BC();
  v153 = v32;
  v154 = v8;
  if (v34)
  {
    v35 = sub_94C8();
    v36 = sub_94F8();
    v163[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_E6C0(v31, v32, v163);
    sub_17650();
    _os_log_impl(v37, v38, v39, v40, v35, 0xCu);
    sub_91DC(v36);
    sub_9474();
    sub_1758C();
  }

  sub_10294();
  sub_17644();
  v41 = *&v2[v27];

  v42 = sub_1765C();
  v43 = sub_219D8(v42);

  v44 = v10;
  v158 = v10;
  if (v43)
  {

    v45 = sub_21E54();
    sub_220B4();

    v46 = sub_177BC();
    v155 = v11;
    if (v46)
    {
      v47 = sub_94C8();
      v163[0] = sub_94F8();
      *v47 = 136315138;
      sub_21E14();
      v48 = sub_21F94();
      v50 = sub_E6C0(v48, v49, v163);

      *(v47 + 4) = v50;
      sub_17600();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
      sub_17558();
      sub_93D4();
    }

    v56 = sub_1EBC4(v43);
    if (v56)
    {
      v58 = v56;
      if (v56 < 1)
      {
        __break(1u);
        goto LABEL_64;
      }

      v59 = 0;
      v60 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      *&v57 = 138412290;
      v157 = v57;
      *&v57 = 67109120;
      v156 = v57;
      v159 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      do
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v61 = sub_221D4();
        }

        else
        {
          v61 = *(v43 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = sub_21E54();
        v64 = sub_220B4();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = sub_94C8();
          v66 = sub_9634();
          *v65 = v157;
          *(v65 + 4) = v62;
          *v66 = v62;
          v67 = v62;
          _os_log_impl(&dword_0, v63, v64, "#ReadingVoiceListController voiceInRegion %@", v65, 0xCu);
          sub_8F6C(v66, &qword_31680, &qword_22C90);
          sub_93FC();
          v44 = v158;
          sub_9474();
        }

        v68 = v62;
        v69 = sub_21E54();
        v70 = sub_220B4();
        if (sub_17714(v70))
        {
          v71 = v44;
          v72 = sub_9634();
          *v72 = v156;
          *(v72 + 4) = [v68 locallyAvailable];

          _os_log_impl(&dword_0, v69, v70, "#ReadingVoiceListController voiceInRegion.locallyAvailable %{BOOL}d", v72, 8u);
          v44 = v71;
          v60 = v159;
          sub_9474();
        }

        else
        {

          v69 = v68;
        }

        if ([v68 locallyAvailable])
        {
          v73 = v160;
          if (!*&v60[v160])
          {
            sub_8AF4(0, &qword_315E8, NSLocale_ptr);
            sub_10294();
            v60 = v159;
            v74 = sub_17804();

            v68 = *&v60[v73];
            *&v60[v73] = v74;
          }
        }

        ++v59;
      }

      while (v58 != v59);
    }

    v11 = v155;
  }

  sub_8AF4(0, &qword_315E8, NSLocale_ptr);
  v75 = [v11 languageCode];
  sub_21EF4();

  v76 = sub_17804();
  v77 = v150;
  sub_21C04();
  isa = sub_21C64().super.isa;
  (*(v151 + 8))(v77, v152);
  LODWORD(v77) = [v76 isEquivalentTo:isa];

  if (v77)
  {
    sub_8AF4(0, &qword_315F0, SUICAssistantVoiceSettingsConnection_ptr);
    sub_10294();
    v80 = sub_C57C(v79);
    v82 = v81;

    if (v82)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (qword_31528 != -1)
    {
      swift_once();
    }

    sub_C45C();
    v109 = static MessagesSettingsUtils.siriUISettingsConnection;
    sub_10294();
    v80 = sub_170B8(v110, v111, v109, &selRef_dialectForLanguageIdentifier_);
    v82 = v112;

    if (v82)
    {
LABEL_29:
      v159 = v76;
      sub_10294();
      v84 = v83;
      v86 = v85;
      v87 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
      v88 = v160;
      sub_177D4();
      v89 = *&v88[v87];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161 = *&v88[v87];
      sub_19898(v84, v86, v80, v82, isUniquelyReferenced_nonNull_native);
      *&v88[v87] = v161;
      swift_endAccess();
      v91 = objc_opt_self();
      v97 = sub_176D4(v80, v82, v88, v92, v93, v94, v95, v96, v91);
      if (!v97)
      {

        return;
      }

      v98 = v11;
      v99 = v88;
      v100 = sub_21E54();
      v101 = sub_220B4();

      v102 = &off_31000;
      if (os_log_type_enabled(v100, v101))
      {
        v103 = swift_slowAlloc();
        v162[0] = swift_slowAlloc();
        *v103 = 136315394;
        v160 = v99;
        v104 = *&v99[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
        if (v104)
        {
          v102 = v104;
          sub_EF18();
          v106 = v105;
          v108 = v107;
        }

        else
        {
          v108 = 0x80000000000239D0;
          v106 = 0xD000000000000010;
        }

        sub_E6C0(v106, v108, v162);
        sub_95A4();

        *(v103 + 4) = v102;
        *(v103 + 12) = 2080;
        sub_10294();
        v122 = sub_E6C0(v120, v121, v162);

        *(v103 + 14) = v122;
        _os_log_impl(&dword_0, v100, v101, "#ReadingVoiceListController currentVoiceSubscription?.voice.language == locale.localeIdentifier %s %s", v103, 0x16u);
        swift_arrayDestroy();
        sub_93FC();
        sub_9474();

        v99 = v160;
      }

      else
      {
      }

      v123 = *&v99[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
      if (v123)
      {
        v124 = v123;
        sub_EF18();
        v126 = v125;
        v128 = v127;
      }

      else
      {
        v126 = 0;
        v128 = 0;
      }

      sub_10294();
      if (v128)
      {
        if (v126 == v129 && v128 == v130)
        {

LABEL_57:
          v133 = v97;
          v134 = sub_21E54();
          v135 = sub_220B4();
          if (sub_17714(v135))
          {
            v136 = v99;
            v137 = sub_94C8();
            v138 = sub_94F8();
            v162[0] = v138;
            *v137 = 136315138;
            v139 = sub_21884(v133);
            v141 = v140;

            if (!v141)
            {
LABEL_65:
              __break(1u);
              return;
            }

            v142 = sub_E6C0(v139, v141, v162);

            *(v137 + 4) = v142;
            _os_log_impl(&dword_0, v134, v135, "#ReadingVoiceListController setting checked specifier on variety group for %s", v137, 0xCu);
            sub_91DC(v138);
            sub_93FC();
            sub_9474();

            v143 = v159;
            v99 = v136;
          }

          else
          {

            v143 = v159;
          }

          v144 = *&v99[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
          if (v144)
          {
            v145 = v144;

            v146 = sub_21EF4();
            v148 = v147;
            v149 = v133;
            sub_1E79C(v97, v146, v148, v145);

            return;
          }

LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v132 = sub_222C4();

        if (v132)
        {
          goto LABEL_57;
        }
      }

      else
      {
      }

      return;
    }
  }

  v113 = sub_21E54();
  v114 = sub_220B4();
  if (sub_17668(v114))
  {
    v115 = sub_94E0();
    *v115 = 0;
    sub_17650();
    _os_log_impl(v116, v117, v118, v119, v115, 2u);
    sub_9474();
  }
}

uint64_t sub_11538()
{
  v1 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  result = sub_C45C();
  v40 = v0;
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
LABEL_37:
    result = sub_22274();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  v5 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  v35 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
  v38 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  v39 = v3 & 0xC000000000000001;

  v37 = v5;
  sub_C45C();
  v6 = 0;
  v34 = v3 & 0xFFFFFFFFFFFFFF8;
  v36 = v4;
  while (1)
  {
    if (v39)
    {
      sub_17770();
      v7 = sub_221D4();
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_36;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v40 + v38);
    if (v10)
    {
      v11 = v10;
      v12 = sub_21D84();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    result = sub_21884(v8);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v17 = v3;
    v18 = *(v40 + v37);
    if (*(v18 + 16))
    {
      v19 = result;
      v20 = *(v40 + v37);

      v21 = sub_214F4(v19, v16);
      v23 = v22;

      if (v23)
      {
        v24 = (*(v18 + 56) + 16 * v21);
        v26 = *v24;
        v25 = v24[1];
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else
    {
      v26 = 0;
      v25 = 0;
    }

    if (v14)
    {
      if (v25)
      {
        if (v12 == v26 && v14 == v25)
        {
        }

        else
        {
          v28 = sub_222C4();

          if ((v28 & 1) == 0)
          {
LABEL_31:

            goto LABEL_32;
          }
        }

LABEL_29:
        v29 = *(v40 + v35);
        if (!v29)
        {
          goto LABEL_40;
        }

        v30 = sub_21EF4();
        v32 = v31;
        v33 = v29;
        sub_1E79C(v8, v30, v32, v33);

        goto LABEL_31;
      }
    }

    else if (!v25)
    {
      goto LABEL_29;
    }

LABEL_32:
    ++v6;
    v3 = v17;
    if (v9 == v36)
    {
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void *sub_1180C(unint64_t a1)
{
  v4 = v1;
  v5 = a1;
  v107 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_59:
    v6 = sub_22274();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_3:
      type metadata accessor for MessagingWithSiriController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v94 = objc_opt_self();
      v7 = objc_opt_self();
      v8 = 0;
      v101 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
      v96 = v5 & 0xC000000000000001;
      v90 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
      v93 = v7;
      v88 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
      v89 = v5 & 0xFFFFFFFFFFFFFF8;
      v99 = &_swiftEmptyArrayStorage;
      v9 = 1;
      v102 = v4;
      v91 = v6;
      v92 = v5;
      while (1)
      {
        if (v96)
        {
          v10 = sub_221D4();
        }

        else
        {
          if (v8 >= *(v89 + 16))
          {
            goto LABEL_58;
          }

          v10 = *(v5 + 8 * v8 + 32);
        }

        v11 = v10;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v103 = v8;
        v104 = v8 + 1;
        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v12 = sub_21E64();
        sub_87F8(v12, qword_31EE0);
        v13 = v11;
        v14 = sub_21E54();
        v15 = sub_220B4();

        if (os_log_type_enabled(v14, v15))
        {
          v5 = sub_94C8();
          v16 = sub_94F8();
          sub_17744(v16);
          v17 = sub_21DF4();
          sub_E6C0(v17, v18, v106);
          sub_17738();

          *(v5 + 4) = v3;
          sub_177EC(&dword_0, v14, v15, "#ReadingVoiceListController adding variety voice %s");
          sub_91DC(v2);
          sub_93FC();
          sub_9474();
        }

        v19 = v4;
        v20 = sub_21E54();
        v21 = sub_220B4();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = sub_94C8();
          v106[0] = sub_94F8();
          *v22 = 136315138;
          v23 = *&v4[v101];
          if (!v23 || (v5 = v23, v24 = sub_21D64(), v26 = v25, v5, !v26))
          {

            v26 = 0xE400000000000000;
            v24 = 1818848800;
          }

          sub_E6C0(v24, v26, v106);
          sub_176BC();
          *(v22 + 4) = v5;
          _os_log_impl(&dword_0, v20, v21, "#ReadingVoiceListController current subscription %s", v22, 0xCu);
          sub_17558();
          sub_9474();

          v4 = v102;
        }

        else
        {
        }

        v27 = [v94 bundleForClass:ObjCClassFromMetadata];
        v87._countAndFlagsBits = 0xE000000000000000;
        v108._countAndFlagsBits = 0xD000000000000018;
        v108._object = 0x80000000000239B0;
        v109.value._object = 0x8000000000022FC0;
        v109.value._countAndFlagsBits = 0xD000000000000014;
        v28.super.isa = v27;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        sub_21BF4(v108, v109, v28, v110, v87);
        v3 = v29;

        sub_7E80(&qword_31950, &qword_23058);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_22EB0;
        v106[0] = v9;
        sub_17444();
        v31 = sub_22114();
        v2 = v32;
        *(v30 + 56) = &type metadata for String;
        *(v30 + 64) = sub_17498();
        *(v30 + 32) = v31;
        *(v30 + 40) = v2;
        v33 = sub_21F04();
        v5 = v34;
        v100 = sub_176D4(v33, v34, v4, v35, v36, v37, v38, v39, v93);
        if (v100)
        {
          break;
        }

LABEL_54:
        v5 = v92;

        v8 = v103 + 1;
        if (v104 == v91)
        {
          return v99;
        }
      }

      if (__OFADD__(v9++, 1))
      {
        goto LABEL_57;
      }

      v98 = v5;
      v97 = v33;
      v41 = v19;
      v42 = sub_21E54();
      v43 = sub_220B4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = v13;
        v45 = v9;
        v46 = sub_94C8();
        v47 = sub_94F8();
        v106[0] = v47;
        *v46 = 136315138;
        v48 = *&v102[v101];
        if (!v48 || (v2 = v48, sub_21D64(), sub_17644(), v2, !v2))
        {

          v5 = 7104878;
        }

        v49 = sub_1765C();
        sub_E6C0(v49, v50, v51);
        sub_176BC();
        *(v46 + 4) = v5;
        _os_log_impl(&dword_0, v42, v43, "#ReadingVoiceListController marking as currently subscribed voice %s", v46, 0xCu);
        sub_91DC(v47);
        sub_9474();
        sub_1758C();

        v9 = v45;
        v13 = v44;
      }

      else
      {
      }

      v52 = v41;
      v53 = sub_21E54();
      v54 = sub_220B4();

      if (os_log_type_enabled(v53, v54))
      {
        v2 = v9;
        v55 = sub_94C8();
        v105 = sub_94F8();
        *v55 = 136315138;
        v56 = *&v102[v101];
        if (v56)
        {
          v57 = v56;
          sub_21D64();
          sub_17644();
        }

        else
        {
          v52 = 0;
          v57 = 0;
        }

        v106[0] = v52;
        v106[1] = v57;
        sub_7E80(&qword_318A8, &unk_22FC8);
        v58 = sub_21F14();
        v52 = v59;
        sub_E6C0(v58, v59, &v105);
        sub_95A4();

        *(v55 + 4) = v57;
        _os_log_impl(&dword_0, v53, v54, "#ReadingVoiceListController currentVoiceSubscription name %s ", v55, 0xCu);
        sub_17558();
        sub_9474();

        v4 = v102;
      }

      else
      {

        v4 = v102;
      }

      v60 = v13;
      v61 = sub_21E54();
      v62 = sub_220B4();

      if (os_log_type_enabled(v61, v62))
      {
        v52 = sub_94C8();
        v63 = sub_94F8();
        sub_17744(v63);
        v64 = sub_21DF4();
        v66 = v13;
        v67 = v9;
        v68 = sub_E6C0(v64, v65, v106);

        *(v52 + 4) = v68;
        v9 = v67;
        v13 = v66;
        sub_177EC(&dword_0, v61, v62, "#ReadingVoiceListController voice name %s ");
        sub_91DC(v2);
        sub_93FC();
        sub_9474();
      }

      v69 = *&v4[v101];
      if (v69)
      {
        v70 = v69;
        v3 = sub_21D64();
        v72 = v71;
      }

      else
      {
        v3 = 0;
        v72 = 0;
      }

      v73 = sub_21DF4();
      if (v72)
      {
        if (v3 == v73 && v72 == v74)
        {

LABEL_49:
          v78 = *&v4[v88];
          if (!v78)
          {
            __break(1u);
            return result;
          }

          v79 = v78;
          sub_176BC();
          sub_21EF4();
          sub_93C8();
          v77 = v100;
          sub_1E79C(v100, v80, v81, v52);

          goto LABEL_51;
        }

        v52 = sub_222C4();

        if (v52)
        {
          goto LABEL_49;
        }
      }

      else
      {
      }

      v77 = v100;
LABEL_51:
      v82 = v77;
      sub_21F64();
      sub_17634(v107);
      if (v84)
      {
        sub_17624(v83);
        sub_21FA4();
      }

      sub_21FD4();
      v99 = v107;
      v2 = v90;
      sub_177D4();
      v85 = v60;
      v86 = *&v4[v90];
      swift_isUniquelyReferenced_nonNull_native();
      v105 = *&v4[v90];
      sub_19B6C(v85, v97, v98);
      *&v4[v90] = v105;

      swift_endAccess();

      goto LABEL_54;
    }
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_120EC()
{
  v1 = v0;
  if (qword_31548 != -1)
  {
    sub_A42C();
    swift_once();
  }

  v2 = sub_21E64();
  sub_9444(v2, qword_31EE0);
  v3 = sub_21E54();
  v4 = sub_220B4();
  if (sub_17714(v4))
  {
    v5 = sub_94E0();
    sub_176B0(v5);
    sub_1777C(&dword_0, v6, v7, "#ReadingVoiceListController setting currentVoiceSubscription");
    sub_93D4();
  }

  if (qword_31520 != -1)
  {
    sub_EDB4();
  }

  sub_C45C();
  v8 = static MessagesSettingsUtils.daemonSession;
  *(swift_allocObject() + 16) = v1;
  v9 = v8;
  v10 = v1;
  sub_21CE4();
}

void sub_12230(uint64_t a1, char *a2)
{
  v79 = sub_21E84();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v79);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21EA4();
  v7 = *(v77 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v77);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21C34();
  v10 = *(v85 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v85);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v14 = sub_21E64();
  v15 = sub_87F8(v14, qword_31EE0);

  v90 = v15;
  v16 = sub_21E54();
  v17 = sub_220B4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = sub_1EBC4(a1);

    _os_log_impl(&dword_0, v16, v17, "#ReadingVoiceListController voiceSubscriptions.count %ld", v18, 0xCu);
  }

  else
  {
  }

  v86 = sub_1EBC4(a1);
  if (v86)
  {
    if (v86 >= 1)
    {
      v20 = 0;
      v89 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
      v83 = a1 & 0xC000000000000001;
      v80 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
      v72 = 0x8000000000023990;
      v81 = (v10 + 8);
      v75 = v92;
      v74 = (v4 + 8);
      v73 = (v7 + 8);
      *&v19 = 136315138;
      v82 = v19;
      v87 = v13;
      v88 = a2;
      v84 = a1;
      while (1)
      {
        if (v83)
        {
          v21 = sub_221D4();
        }

        else
        {
          v21 = *(a1 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = sub_21DA4();
        sub_EF18();

        sub_21C44();
        v24 = v22;
        v25 = sub_21E54();
        v26 = sub_220B4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          aBlock[0] = v28;
          *v27 = v82;
          v29 = sub_21DA4();
          v30 = sub_21D64();
          v32 = v31;

          if (v32)
          {
            v33 = v30;
          }

          else
          {
            v33 = 7104878;
          }

          if (v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = 0xE300000000000000;
          }

          a1 = v84;
          v35 = sub_E6C0(v33, v34, aBlock);

          *(v27 + 4) = v35;
          a2 = v88;
          _os_log_impl(&dword_0, v25, v26, "#ReadingVoiceListController voiceSubscription.voice.name %s", v27, 0xCu);
          sub_91DC(v28);
        }

        v36 = a2;
        v37 = sub_21E54();
        v38 = sub_220B4();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          aBlock[0] = v40;
          *v39 = v82;
          v41 = *&a2[v89];
          if (v41)
          {
            v42 = [v41 languageCode];
            v43 = sub_21EF4();
            v45 = v44;
          }

          else
          {
            v43 = 0xD00000000000001ALL;
            v45 = v72;
          }

          v46 = sub_E6C0(v43, v45, aBlock);

          *(v39 + 4) = v46;
          _os_log_impl(&dword_0, v37, v38, "#ReadingVoiceListController self.currentlySubscribedLocale?.languageCode %s", v39, 0xCu);
          sub_91DC(v40);

          v13 = v87;
          a2 = v88;
          a1 = v84;
        }

        else
        {
        }

        v47 = *&a2[v89];
        if (v47)
        {
          v48 = v47;
          sub_10294();
          v50 = v49;
          v52 = v51;

          if (v50 == sub_21C14() && v52 == v53)
          {

LABEL_35:
            v56 = *&a2[v80];
            v57 = v56;
            v58 = sub_21DA4();
            v59 = v58;
            if (v56)
            {
              sub_21D94();
              v60 = sub_220F4();

              if (v60)
              {

LABEL_40:
                v13 = v87;
                (*v81)(v87, v85);
                goto LABEL_41;
              }
            }

            else
            {
            }

            v61 = sub_21DA4();
            v62 = *&a2[v80];
            *&a2[v80] = v61;

            sub_8AF4(0, &qword_31620, OS_dispatch_queue_ptr);
            v63 = sub_220C4();
            v64 = swift_allocObject();
            *(v64 + 16) = v36;
            v92[2] = sub_17394;
            v92[3] = v64;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            v92[0] = sub_55D0;
            v92[1] = &unk_2CF60;
            v65 = _Block_copy(aBlock);
            v66 = v36;

            v67 = a1;
            v68 = v76;
            sub_21E94();
            aBlock[0] = &_swiftEmptyArrayStorage;
            sub_173B4(&qword_31628, &type metadata accessor for DispatchWorkItemFlags);
            sub_7E80(&qword_31630, &qword_23050);
            sub_173FC(&qword_31638, &qword_31630, &qword_23050);
            v69 = v78;
            v70 = v79;
            sub_22134();
            sub_220D4();
            _Block_release(v65);

            (*v74)(v69, v70);
            v71 = v68;
            a1 = v67;
            a2 = v88;
            (*v73)(v71, v77);
            goto LABEL_40;
          }

          v55 = sub_222C4();

          if (v55)
          {
            goto LABEL_35;
          }

          v13 = v87;
          (*v81)(v87, v85);
        }

        else
        {

          (*v81)(v13, v85);
        }

LABEL_41:
        if (v86 == ++v20)
        {
          return;
        }
      }
    }

    __break(1u);
  }
}

void sub_12B54(char *a1)
{
  v2 = sub_21EE4();
  v3 = [a1 valueForKey:v2];

  if (v3)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110[0] = v108;
  v110[1] = v109;
  if (!*(&v109 + 1))
  {
    sub_8F6C(v110, &qword_31610, &qword_23080);
    return;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if (swift_dynamicCast())
  {
    v96 = v107[1];
    v4 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
    swift_beginAccess();
    v5 = *&a1[v4];
    v103 = sub_1EBC4(v5);
    v6 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
    v106 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;

    v100 = v6;
    swift_beginAccess();
    v98 = 0;
    v7 = 0;
    v105 = a1;
    while (1)
    {
      for (i = v7; ; ++i)
      {
        if (v103 == i)
        {

          if (!v98)
          {

            if (qword_31548 != -1)
            {
              goto LABEL_108;
            }

            goto LABEL_83;
          }

          v31 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup;
          v32 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
          if (v32)
          {
            v33 = sub_21EF4();
            sub_1E79C(v98, v33, v34, v32);
            v35 = *&a1[v106];
            v95 = v31;
            if (v35)
            {
              v36 = v35;
              sub_EF18();
              v38 = v37;

              v39 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
              swift_beginAccess();
              v40 = *&a1[v39];

              v41 = sub_219D8(v38);

              v42 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers];
              v43 = sub_1EBC4(v42);
              v99 = v42 & 0xFFFFFFFFFFFFFF8;
              v101 = v42 & 0xC000000000000001;
              v102 = v42;

              v97 = 0;
              v44 = 0;
              v104 = -v43;
              while (2)
              {
                v45 = v44 + 4;
LABEL_43:
                if (v104 + v45 == 4)
                {

                  goto LABEL_86;
                }

                v46 = v45 - 4;
                if (v101)
                {
                  v47 = sub_221D4();
                }

                else
                {
                  if (v46 >= *(v99 + 16))
                  {
                    goto LABEL_106;
                  }

                  v47 = *(v102 + 8 * v45);
                }

                v48 = v47;
                v44 = v45 - 3;
                if (__OFADD__(v46, 1))
                {
                  goto LABEL_105;
                }

                if (v41)
                {
                  if ((v41 & 0xC000000000000001) != 0)
                  {

                    v49 = sub_221D4();
                  }

                  else
                  {
                    if (v46 >= *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_107;
                    }

                    v49 = *(v41 + 8 * v45);
                  }

                  v50 = v49;
                  v51 = sub_21DF4();
                  v53 = v52;

                  v54 = *&v105[v106];
                  if (!v54)
                  {
                    v55 = v49;
                    if (!v53)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v56 = a1;
                  v49 = 0;
                  v53 = 0;
                  v51 = 0;
                  v55 = 0;
                  v54 = *&v56[v106];
                  if (!v54)
                  {
                    goto LABEL_72;
                  }
                }

                v57 = v54;
                v58 = sub_21D64();
                v60 = v59;

                if (v53)
                {
                  if (!v60)
                  {
                    goto LABEL_66;
                  }

                  if (v51 == v58 && v53 == v60)
                  {

LABEL_71:
                    v55 = v49;
LABEL_72:
                    if (qword_31548 != -1)
                    {
                      swift_once();
                    }

                    v63 = sub_21E64();
                    sub_87F8(v63, qword_31EE0);
                    v64 = v55;
                    v65 = sub_21E54();
                    v66 = sub_220B4();

                    if (os_log_type_enabled(v65, v66))
                    {
                      v67 = swift_slowAlloc();
                      v68 = swift_slowAlloc();
                      v107[0] = v68;
                      *v67 = 136315138;
                      if (v55)
                      {
                        v69 = v68;
                        sub_21DF4();
                      }

                      else
                      {
                        v69 = v68;
                      }

                      sub_7E80(&qword_318A8, &unk_22FC8);
                      v70 = sub_21F14();
                      v72 = sub_E6C0(v70, v71, v107);

                      *(v67 + 4) = v72;
                      _os_log_impl(&dword_0, v65, v66, "#ReadingVoiceListController found match for %s", v67, 0xCu);
                      sub_91DC(v69);
                    }

                    else
                    {
                    }

                    v97 = v48;
                    a1 = v105;
                    continue;
                  }

                  v62 = sub_222C4();

                  if (v62)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (!v60)
                  {
                    goto LABEL_71;
                  }

LABEL_66:
                }

                break;
              }

              ++v45;
              a1 = v105;
              goto LABEL_43;
            }

            v97 = 0;
LABEL_86:
            v77 = sub_1361C();
            if (!v77)
            {

              if (qword_31548 != -1)
              {
                swift_once();
              }

              v87 = sub_21E64();
              sub_87F8(v87, qword_31EE0);
              v88 = sub_21E54();
              v89 = sub_220A4();
              if (os_log_type_enabled(v88, v89))
              {
                v90 = swift_slowAlloc();
                *v90 = 0;
                _os_log_impl(&dword_0, v88, v89, "#ReadingVoiceListController unable to find variety specifier", v90, 2u);
              }

LABEL_101:
              return;
            }

            v78 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup;
            v79 = *&a1[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup];
            if (v79)
            {
              v80 = v77;
              v81 = sub_21EF4();
              sub_1E79C(v80, v81, v82, v79);
              v83 = sub_1CAA8(v96);

              v84 = objc_allocWithZone(PSSpecifierUpdates);
              v85 = sub_1E448(v83);
              if (v85)
              {
                v74 = v85;
                [a1 reloadSpecifier:v98];
                [a1 reloadSpecifier:*&a1[v95]];
                [a1 reloadSpecifier:v80];
                v86 = *&a1[v78];
                [a1 reloadSpecifier:v86];

                goto LABEL_90;
              }

              if (qword_31548 != -1)
              {
                swift_once();
              }

              v91 = sub_21E64();
              sub_87F8(v91, qword_31EE0);
              v92 = sub_21E54();
              v93 = sub_220A4();
              if (os_log_type_enabled(v92, v93))
              {
                v94 = swift_slowAlloc();
                *v94 = 0;
                _os_log_impl(&dword_0, v92, v93, "#MessagingWithSiriController handleURL failed to get updates", v94, 2u);
              }

              goto LABEL_101;
            }
          }

          else
          {
LABEL_110:
            __break(1u);
          }

          __break(1u);
          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = sub_221D4();
        }

        else
        {
          if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_104;
          }

          v9 = *(v5 + 8 * i + 32);
        }

        v10 = v9;
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          swift_once();
LABEL_83:
          v73 = sub_21E64();
          sub_87F8(v73, qword_31EE0);
          v74 = sub_21E54();
          v75 = sub_220A4();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&dword_0, v74, v75, "#ReadingVoiceListController unable to find variety specifier", v76, 2u);
          }

LABEL_90:

          return;
        }

        v11 = sub_1AE44(v9);
        if (!v12)
        {
          __break(1u);
          goto LABEL_110;
        }

        v13 = v12;
        v14 = *&a1[v100];
        if (*(v14 + 16))
        {
          v15 = v11;
          v16 = *&a1[v100];

          v17 = sub_214F4(v15, v13);
          v19 = v18;

          if (v19)
          {
            v20 = (*(v14 + 56) + 16 * v17);
            v21 = *v20;
            v22 = v20[1];
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        v23 = *&a1[v106];
        if (!v23)
        {
          if (!v22)
          {
            goto LABEL_36;
          }

LABEL_29:

          continue;
        }

        v24 = v23;
        sub_EF18();
        v26 = v25;
        v28 = v27;

        if (!v22)
        {
          a1 = v105;
          if (!v28)
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        a1 = v105;
        if (!v28)
        {
          goto LABEL_29;
        }

        if (v21 == v26 && v22 == v28)
        {
          break;
        }

        v30 = sub_222C4();

        if (v30)
        {
          goto LABEL_36;
        }

LABEL_32:
      }

LABEL_36:

      v98 = v10;
    }
  }
}

id sub_1361C()
{
  v41 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  v3 = *(v0 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription);
  if (!v3)
  {
    return 0;
  }

  v4 = v0;
  v5 = v3;
  sub_EF18();
  v7 = v6;

  v8 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_C45C();
  v9 = *(v4 + v8);

  v10 = sub_219D8(v7);

  v11 = *(v4 + OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers);
  v12 = sub_1EBC4(v11);
  v38 = v11 & 0xFFFFFFFFFFFFFF8;
  v39 = v11 & 0xC000000000000001;
  v42 = v11;

  v40 = -v12;
  for (i = 4; ; ++i)
  {
    if (v40 + i == 4)
    {

      return 0;
    }

    v14 = i - 4;
    if (v39)
    {
      v15 = sub_221D4();
    }

    else
    {
      if (v14 >= *(v38 + 16))
      {
        goto LABEL_48;
      }

      v15 = *(v42 + 8 * i);
    }

    v2 = v15;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v10)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {

        v1 = sub_221D4();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_49;
        }

        v1 = *(v10 + 8 * i);
      }

      v16 = v1;
      v17 = sub_21DF4();
      v19 = v18;

      v20 = *(v4 + v41);
      if (!v20)
      {
        v21 = v1;
        if (!v19)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v1 = 0;
      v19 = 0;
      v17 = 0;
      v21 = 0;
      v20 = *(v4 + v41);
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    v22 = v2;
    v23 = v4;
    v2 = v20;
    v24 = sub_21D64();
    v26 = v25;

    if (!v19)
    {
      break;
    }

    if (v26)
    {
      v27 = v17 == v24 && v19 == v26;
      v2 = v22;
      if (v27)
      {

LABEL_36:

        goto LABEL_39;
      }

      v28 = sub_222C4();

      if (v28)
      {

        goto LABEL_36;
      }

      goto LABEL_26;
    }

    v4 = v23;
    v2 = v22;
LABEL_28:

LABEL_29:
    ;
  }

  if (v26)
  {

LABEL_26:
    v4 = v23;
    goto LABEL_29;
  }

  v21 = v1;
  v2 = v22;
LABEL_38:

  v1 = v21;
LABEL_39:
  if (qword_31548 == -1)
  {
    goto LABEL_40;
  }

LABEL_50:
  sub_A42C();
  swift_once();
LABEL_40:
  v29 = sub_21E64();
  sub_9444(v29, qword_31EE0);
  v30 = v1;
  v31 = sub_21E54();
  v32 = sub_220B4();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = sub_94C8();
    v34 = sub_94F8();
    v43 = v34;
    *v33 = 136315138;
    if (v1)
    {
      sub_21DF4();
    }

    else
    {
      sub_17764();
    }

    sub_7E80(&qword_318A8, &unk_22FC8);
    v35 = sub_21F14();
    sub_E6C0(v35, v36, &v43);
    sub_17738();

    *(v33 + 4) = v1;
    _os_log_impl(&dword_0, v31, v32, "#ReadingVoiceListController found match for %s", v33, 0xCu);
    sub_91DC(v34);
    sub_9474();
    sub_1758C();
  }

  else
  {
  }

  return v2;
}

void sub_13A54(uint64_t a1)
{
  v2 = v1;
  isa = sub_21CA4().super.isa;
  v157.receiver = v1;
  v157.super_class = type metadata accessor for ReadingVoiceListController();
  objc_msgSendSuper2(&v157, "tableView:didSelectRowAtIndexPath:", a1, isa);

  v5 = sub_21CA4().super.isa;
  v6 = [v1 specifierAtIndexPath:v5];

  if (!v6)
  {
    goto LABEL_86;
  }

  v7 = v6;
  v8 = sub_1719C(v7);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v8;
  v11 = v9;
  v12 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyNameToLocale;
  sub_C45C();
  v151 = v12;
  v13 = *&v2[v12];

  v14 = sub_1ED50(v10, v11, v13);
  v16 = v15;

  if (!v16)
  {

LABEL_7:
    v24 = sub_1719C(v7);
    if (!v25)
    {
      goto LABEL_86;
    }

    v26 = v24;
    v27 = v25;
    v28 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceDisplayStringToVoice;
    sub_C45C();
    v29 = *&v2[v28];

    v30 = sub_1EDFC(v26, v27, v29);

    if (!v30)
    {
      goto LABEL_86;
    }

    v31 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
    if (v31)
    {
      v32 = v31;
      sub_10294();
      sub_D194(v33, v34);

      if (qword_31518 != -1)
      {
        sub_EDD4();
      }

      sub_C45C();

      sub_21DF4();
      v36 = v35;
      v37 = sub_17764();
      sub_A6DC(v37, v38, v39, v36);

      v40 = [v30 primaryLanguage];
      sub_21EF4();

      sub_21DF4();
      sub_17644();
      v41 = objc_allocWithZone(sub_21D94());
      v42 = sub_21D74();
      v43 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
      *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = v42;

      v44 = [v30 primaryLanguage];
      sub_21EF4();

      sub_21DF4();
      sub_14A64();

      v45 = sub_951C();
      v46 = [v2 valueForKey:v45];

      if (v46)
      {
        sub_22124();
        swift_unknownObjectRelease();
      }

      else
      {
        v153 = 0u;
        v154 = 0u;
      }

      v155 = v153;
      v156 = v154;
      if (!*(&v154 + 1))
      {

        sub_8F6C(&v155, &qword_31610, &qword_23080);
        goto LABEL_86;
      }

      sub_7E80(&qword_31618, &unk_22C50);
      if (swift_dynamicCast())
      {

        sub_10294();
        sub_17644();
        v92 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
        sub_C45C();
        v93 = *&v2[v92];

        v94 = sub_1765C();
        sub_219D8(v94);
        sub_176BC();

        if (v46)
        {
          sub_1180C(v46);

          [v2 reloadSpecifiers];
        }
      }
    }

LABEL_86:
    if (qword_31548 != -1)
    {
      sub_A42C();
      swift_once();
    }

    v117 = sub_21E64();
    sub_9444(v117, qword_31EE0);
    v56 = v6;
    v7 = sub_21E54();
    v118 = sub_220B4();

    if (os_log_type_enabled(v7, v118))
    {
      v119 = sub_94C8();
      v120 = sub_9634();
      *v119 = 138412290;
      *(v119 + 4) = v56;
      *v120 = v6;
      v121 = v56;
      sub_177EC(&dword_0, v7, v118, "#ListOfLanguagesController selected %@");
      sub_8F6C(v120, &qword_31680, &qword_22C90);
      sub_93D4();
      sub_9474();
      v56 = v7;
      v7 = v121;
    }

    goto LABEL_90;
  }

  v17 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale;
  v18 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentlySubscribedLocale];
  v146 = v6;
  if (v18)
  {
    v19 = v18;
    sub_10294();
    v21 = v20;
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_D194(v21, v23);

  v47 = sub_8AF4(0, &qword_315E8, NSLocale_ptr);

  v48 = sub_17804();
  v49 = *&v2[v17];
  *&v2[v17] = v48;

  v50 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_localeToVoiceMap;
  sub_C45C();
  v51 = *&v2[v50];

  sub_219D8(v14);
  sub_95A4();

  if (v47)
  {
    if (sub_1EBC4(v47))
    {
      sub_1EBCC(0, (v47 & 0xC000000000000001) == 0, v47);
      if ((v47 & 0xC000000000000001) != 0)
      {
        sub_221D4();
      }

      else
      {
        v52 = *(v47 + 32);
      }

      sub_176BC();
      sub_21DF4();
    }

    else
    {
    }
  }

  v53 = objc_allocWithZone(sub_21D94());

  v54 = sub_21D74();
  v55 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription];
  v150 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription;
  *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_currentVoiceSubscription] = v54;
  v56 = v54;

  if (!v56)
  {
LABEL_28:

    if (qword_31548 != -1)
    {
      goto LABEL_110;
    }

    goto LABEL_29;
  }

  v57 = sub_21D64();
  if (!v58)
  {

    goto LABEL_28;
  }

  v59 = v57;
  v60 = v58;
  if (qword_31518 != -1)
  {
    sub_EDD4();
  }

  sub_C45C();

  v61 = sub_17764();
  sub_A6DC(v61, v62, v59, v60);

  v145 = v60;
  sub_14A64();
  v63 = sub_951C();
  v64 = [v2 valueForKey:v63];

  if (v64)
  {
    sub_22124();
    swift_unknownObjectRelease();
  }

  else
  {
    v153 = 0u;
    v154 = 0u;
  }

  v155 = v153;
  v156 = v154;
  if (!*(&v154 + 1))
  {

    sub_8F6C(&v155, &qword_31610, &qword_23080);
LABEL_85:
    v6 = v146;
    goto LABEL_86;
  }

  sub_7E80(&qword_31618, &unk_22C50);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_84:

    goto LABEL_85;
  }

  v68 = *&v2[v17];
  if (!v68)
  {

    goto LABEL_84;
  }

  v69 = v68;
  sub_10294();
  sub_17644();
  v70 = *&v2[v50];

  v71 = sub_1765C();
  sub_219D8(v71);
  sub_176BC();

  v143 = v69;
  v72 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietySpecifiers;
  sub_C45C();
  v148 = *&v2[v72];
  v149 = sub_1EBC4(v148);

  v144 = 0;
  v73 = 0;
  v147 = v56;
  while (1)
  {
    if (v149 == v73)
    {

      if (!v144)
      {

        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v122 = sub_21E64();
        sub_9444(v122, qword_31EE0);
        v123 = sub_21E54();
        v124 = sub_220A4();
        if (sub_17668(v124))
        {
          v125 = sub_94E0();
          sub_176B0(v125);
          sub_17600();
          _os_log_impl(v126, v127, v128, v129, v130, 2u);
          sub_93D4();
        }

        goto LABEL_101;
      }

      v95 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_varietyGroup];
      if (!v95)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      sub_21EF4();
      sub_93C8();
      sub_1E79C(v144, v96, v97, v95);
      sub_1CAA8(v152);
      v98 = objc_allocWithZone(PSSpecifierUpdates);
      v99 = sub_95A4();
      v100 = sub_1E448(v99);
      v6 = v146;
      if (v100)
      {

        v101 = sub_1180C(v145);
        sub_1CAA8(v152);
        v102 = objc_allocWithZone(PSSpecifierUpdates);
        v103 = sub_95A4();
        v104 = sub_1E448(v103);
        if (v104)
        {
          v105 = v104;
          v106 = OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers;
          v107 = *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceSpecifiers];

          v109 = sub_1CAA8(v108);

          sub_1720C(v109, v105);
          v110 = *&v2[v106];
          *&v2[v106] = v101;

          v111 = sub_1CAA8(v101);
          sub_17274(v111, *&v2[OBJC_IVAR____TtC20SiriMessagesSettings26ReadingVoiceListController_voiceGroup], v105);
          v112 = [v105 context];
          if (!v112)
          {
LABEL_114:
            __break(1u);
            return;
          }

          v113 = v112;

          [v113 setAnimated:1];

          v114 = sub_1EA3C(v105);
          if (v114 && (v115 = sub_1C99C(v114), , v115))
          {

            v116 = v143;
          }

          else
          {
            v116 = v143;
            v115 = v152;
          }

          v140 = sub_1CAA8(v115);

          sub_1E9CC(v140, v2);
          [v2 reloadSpecifiers];

          goto LABEL_86;
        }

        v56 = v147;
        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v141 = sub_21E64();
        sub_9444(v141, qword_31EE0);
        v132 = sub_21E54();
        v142 = sub_220A4();
        if (!sub_17668(v142))
        {
          goto LABEL_100;
        }
      }

      else
      {

        if (qword_31548 != -1)
        {
          sub_A42C();
          swift_once();
        }

        v131 = sub_21E64();
        sub_9444(v131, qword_31EE0);
        v132 = sub_21E54();
        v133 = sub_220A4();
        v56 = v147;
        if (!sub_17668(v133))
        {
          goto LABEL_100;
        }
      }

      v134 = sub_94E0();
      sub_176B0(v134);
      sub_17600();
      _os_log_impl(v135, v136, v137, v138, v139, 2u);
      sub_93D4();
LABEL_100:

LABEL_101:
      goto LABEL_90;
    }

    if ((v148 & 0xC000000000000001) != 0)
    {
      v74 = sub_221D4();
    }

    else
    {
      if (v73 >= *(&dword_10 + (v148 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_109;
      }

      v74 = *(v148 + 8 * v73 + 32);
    }

    v75 = v74;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    sub_1AE44(v74);
    if (!v76)
    {
      __break(1u);
      goto LABEL_113;
    }

    v77 = v76;
    v78 = *&v2[v151];
    if (*(v78 + 16))
    {
      sub_17738();

      v79 = sub_214F4(v70, v77);
      v81 = v80;

      if (v81)
      {
        v82 = (*(v78 + 56) + 16 * v79);
        v70 = *v82;
        v83 = v82[1];
      }

      else
      {
        v70 = 0;
        v83 = 0;
      }
    }

    else
    {
      v70 = 0;
      v83 = 0;
    }

    v84 = *&v2[v150];
    if (!v84)
    {
      if (!v83)
      {
        goto LABEL_63;
      }

LABEL_57:

      goto LABEL_61;
    }

    v85 = v84;
    sub_EF18();
    v87 = v86;
    v89 = v88;

    if (!v83)
    {
      if (!v89)
      {
        goto LABEL_63;
      }

      goto LABEL_60;
    }

    if (!v89)
    {
      goto LABEL_57;
    }

    if (v70 == v87 && v83 == v89)
    {

      goto LABEL_63;
    }

    v91 = sub_222C4();

    if (v91)
    {
LABEL_63:

      v144 = v75;
      ++v73;
      v56 = v147;
    }

    else
    {
LABEL_60:

LABEL_61:
      ++v73;
      v56 = v147;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  sub_A42C();
  swift_once();
LABEL_29:
  v65 = sub_21E64();
  sub_9444(v65, qword_31EE0);
  v56 = sub_21E54();
  v66 = sub_220A4();
  if (os_log_type_enabled(v56, v66))
  {
    v67 = sub_94E0();
    *v67 = 0;
    _os_log_impl(&dword_0, v56, v66, "#ListOfLanguagesController could not get a name from the current voice subscription", v67, 2u);
    sub_9474();
  }

LABEL_90:
}

void sub_14A64()
{
  objc_allocWithZone(sub_21D94());

  sub_17684();
  v0 = sub_21D74();
  v1 = objc_allocWithZone(sub_21D54());
  v2 = v0;
  v3 = sub_21D44();
  if (qword_31520 != -1)
  {
    sub_EDB4();
  }

  sub_C45C();
  v4 = static MessagesSettingsUtils.daemonSession;
  sub_21CF4();
}

void sub_14B70()
{
  if (qword_31548 != -1)
  {
    swift_once();
  }

  v0 = sub_21E64();
  sub_87F8(v0, qword_31EE0);
  oslog = sub_21E54();
  v1 = sub_220B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "#ListOfLanguagesController preview voice finished", v2, 2u);
  }
}