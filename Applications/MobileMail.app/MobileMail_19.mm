uint64_t sub_100431978()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[92] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100437C8C;
  }

  else
  {

    v2 = v5[87];
    v3 = sub_100431B18;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100431B18()
{
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  v0[18] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v6 + 744) = v4;
  *v4 = *(v6 + 144);
  v4[1] = sub_100431BF8;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100431BF8()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[94] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100437EC4;
  }

  else
  {
    v2 = v5[87];
    v3 = sub_100431D7C;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100431D7C()
{
  v217 = v0;
  *(v0 + 144) = v0;
  v191 = *(v0 + 752);
  v192 = sub_1003D6B10();
  v1 = sub_10035333C();
  v193 = v1;
  if (!v1)
  {
    v24 = *(v190 + 624);
    v39 = *(v190 + 608);
    v38 = *(v190 + 616);
    _objc_release(v192);
    v25 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v38 + 16))(v24, v25, v39);
    v41 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v42 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v41, v40))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v35 = sub_1002641E8(0);
      v36 = sub_1002641E8(0);
      *(v190 + 160) = v34;
      *(v190 + 168) = v35;
      *(v190 + 176) = v36;
      sub_10026423C(0, (v190 + 160));
      sub_10026423C(0, (v190 + 160));
      *(v190 + 184) = v42;
      v37 = swift_task_alloc();
      v37[2] = v190 + 160;
      v37[3] = v190 + 168;
      v37[4] = v190 + 176;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v191)
      {
      }

      _os_log_impl(&_mh_execute_header, v41, v40, "#SiriMail could not find an active email composition, doing nothing.", v34, 2u);
      sub_10026429C(v35);
      sub_10026429C(v36);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v28 = *(v190 + 624);
    v29 = *(v190 + 608);
    v32 = *(v190 + 456);
    v33 = *(v190 + 440);
    v30 = *(v190 + 368);
    v27 = *(v190 + 616);
    v31 = *(v190 + 448);
    _objc_release(v41);
    (*(v27 + 8))(v28, v29);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v30);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v31 + 8))(v32, v33);
    goto LABEL_48;
  }

  *(v190 + 192) = v1;
  _objc_release(v192);
  v2 = [v193 sendButtonItem];
  v189 = v2;
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v188 = [v2 isEnabled];
  _objc_release(v189);
  if ((v188 & 1) == 0)
  {
    v22 = *(v190 + 632);
    v55 = *(v190 + 608);
    v54 = *(v190 + 616);
    v23 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v54 + 16))(v22, v23, v55);
    v57 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v58 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v57, v56))
    {

      goto LABEL_41;
    }

    v50 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v51 = sub_1002641E8(0);
    v52 = sub_1002641E8(0);
    *(v190 + 200) = v50;
    *(v190 + 208) = v51;
    *(v190 + 216) = v52;
    sub_10026423C(0, (v190 + 200));
    sub_10026423C(0, (v190 + 200));
    *(v190 + 224) = v58;
    v53 = swift_task_alloc();
    v53[2] = v190 + 200;
    v53[3] = v190 + 208;
    v53[4] = v190 + 216;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v191)
    {

      _os_log_impl(&_mh_execute_header, v57, v56, "#SiriMail send button is disabled, user is missing vital information in the message", v50, 2u);
      sub_10026429C(v51);
      sub_10026429C(v52);
      UnsafeMutablePointer.deallocate()();

LABEL_41:
      v44 = *(v190 + 632);
      v45 = *(v190 + 608);
      v48 = *(v190 + 456);
      v49 = *(v190 + 440);
      v46 = *(v190 + 368);
      v43 = *(v190 + 616);
      v47 = *(v190 + 448);
      _objc_release(v57);
      (*(v43 + 8))(v44, v45);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v46);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v47 + 8))(v48, v49);
      _objc_release(v193);
      goto LABEL_48;
    }
  }

  v187 = *(v190 + 544);
  v186 = *(v190 + 536);
  v185 = *(v190 + 552);
  sub_10042D0A0();
  if ((*(v185 + 48))(v186, 1, v187) != 1)
  {
    v180 = *(v190 + 528);
    v181 = *(v190 + 512);
    v176 = *(v190 + 504);
    v177 = *(v190 + 488);
    v179 = *(v190 + 520);
    v175 = *(v190 + 496);
    (*(*(v190 + 552) + 32))(*(v190 + 568), *(v190 + 536), *(v190 + 544));
    static Date.FormatStyle.DateStyle.omitted.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v183._countAndFlagsBits = Date.formatted(date:time:)();
    v183._object = v4;
    v178 = *(v175 + 8);
    v178(v176, v177);
    v182 = *(v179 + 8);
    v182(v180, v181);
    *(v190 + 112) = v183;
    v184 = [v193 compositionContext];
    if (v184)
    {
      v167 = *(v190 + 560);
      v166 = *(v190 + 544);
      v172 = *(v190 + 480);
      v171 = *(v190 + 464);
      v165 = *(v190 + 552);
      v170 = *(v190 + 472);
      (*(v165 + 16))(v167);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v168 = *(v165 + 8);
      v168(v167, v166);
      [v184 setSendLaterDate:isa];
      _objc_release(isa);
      _objc_release(v184);
      [v193 performSend];
      static Calendar.current.getter();
      v174 = Calendar.isDateInToday(_:)();
      v173 = *(v170 + 8);
      v173(v172, v171);
      if (v174)
      {
        v5 = *(v190 + 664);
        v156 = *(v190 + 608);
        v155 = *(v190 + 616);
        v6 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v155 + 16))(v5, v6, v156);

        v157 = swift_allocObject();
        *(v157 + 16) = v183;
        oslog = Logger.logObject.getter();
        v164 = static os_log_type_t.info.getter();
        v159 = swift_allocObject();
        *(v159 + 16) = 32;
        v160 = swift_allocObject();
        *(v160 + 16) = 8;
        v158 = swift_allocObject();
        *(v158 + 16) = sub_10035728C;
        *(v158 + 24) = v157;
        v161 = swift_allocObject();
        *(v161 + 16) = sub_10026EE84;
        *(v161 + 24) = v158;
        sub_10025C9B0(&unk_1006D7720);
        _allocateUninitializedArray<A>(_:)();
        v162 = v7;

        *v162 = sub_10026434C;
        v162[1] = v159;

        v162[2] = sub_10026434C;
        v162[3] = v160;

        v162[4] = sub_10026EF2C;
        v162[5] = v161;
        sub_1002612B0();

        if (os_log_type_enabled(oslog, v164))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v153 = sub_1002641E8(0);
          v154 = sub_1002641E8(1);
          v212 = buf;
          v213 = v153;
          v214 = v154;
          sub_10026423C(2, &v212);
          sub_10026423C(1, &v212);
          v215 = sub_10026434C;
          v216 = v159;
          sub_100264250(&v215, &v212, &v213, &v214);
          if (v191)
          {
          }

          v215 = sub_10026434C;
          v216 = v160;
          sub_100264250(&v215, &v212, &v213, &v214);
          v215 = sub_10026EF2C;
          v216 = v161;
          sub_100264250(&v215, &v212, &v213, &v214);
          _os_log_impl(&_mh_execute_header, oslog, v164, "#SiriMail scheduling the message to be sent for today at %s", buf, 0xCu);
          sub_10026429C(v153);
          sub_10026429C(v154);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v139 = *(v190 + 664);
        v140 = *(v190 + 608);
        v150 = *(v190 + 568);
        v151 = *(v190 + 544);
        v148 = *(v190 + 456);
        v149 = *(v190 + 440);
        v144 = *(v190 + 424);
        v142 = *(v190 + 416);
        v145 = *(v190 + 408);
        v143 = *(v190 + 392);
        v146 = *(v190 + 368);
        v138 = *(v190 + 616);
        v147 = *(v190 + 448);
        v141 = *(v190 + 400);
        _objc_release(oslog);
        (*(v138 + 8))(v139, v140);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v183);
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);

        (*(v141 + 16))(v142, v144, v143);
        (*(v141 + 32))(v145, v142, v143);
        (*(v141 + 8))(v144, v143);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v146);
        v208 = "Dialog to show and say when message will be sent later today.";
        v209 = 61;
        v210 = 2;
        v211 = 0;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        static IntentResult.result<>(dialog:)();
        (*(v147 + 8))(v148, v149);

        v168(v150, v151);
        _objc_release(v193);
      }

      else
      {
        v136 = *(v190 + 480);
        v135 = *(v190 + 464);
        static Calendar.current.getter();
        v137 = Calendar.isDateInTomorrow(_:)();
        v173(v136, v135);
        if (v137)
        {
          v10 = *(v190 + 656);
          v126 = *(v190 + 608);
          v125 = *(v190 + 616);
          v11 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v125 + 16))(v10, v11, v126);

          v127 = swift_allocObject();
          *(v127 + 16) = v183;
          log = Logger.logObject.getter();
          v134 = static os_log_type_t.info.getter();
          v129 = swift_allocObject();
          *(v129 + 16) = 32;
          v130 = swift_allocObject();
          *(v130 + 16) = 8;
          v128 = swift_allocObject();
          *(v128 + 16) = sub_10035728C;
          *(v128 + 24) = v127;
          v131 = swift_allocObject();
          *(v131 + 16) = sub_10026EE84;
          *(v131 + 24) = v128;
          sub_10025C9B0(&unk_1006D7720);
          _allocateUninitializedArray<A>(_:)();
          v132 = v12;

          *v132 = sub_10026434C;
          v132[1] = v129;

          v132[2] = sub_10026434C;
          v132[3] = v130;

          v132[4] = sub_10026EF2C;
          v132[5] = v131;
          sub_1002612B0();

          if (os_log_type_enabled(log, v134))
          {
            v122 = static UnsafeMutablePointer.allocate(capacity:)();
            sub_10025C9B0(&qword_1006D7290);
            v123 = sub_1002641E8(0);
            v124 = sub_1002641E8(1);
            v203 = v122;
            v204 = v123;
            v205 = v124;
            sub_10026423C(2, &v203);
            sub_10026423C(1, &v203);
            v206 = sub_10026434C;
            v207 = v129;
            sub_100264250(&v206, &v203, &v204, &v205);
            if (v191)
            {
            }

            v206 = sub_10026434C;
            v207 = v130;
            sub_100264250(&v206, &v203, &v204, &v205);
            v206 = sub_10026EF2C;
            v207 = v131;
            sub_100264250(&v206, &v203, &v204, &v205);
            _os_log_impl(&_mh_execute_header, log, v134, "#SiriMail scheduling the message to be sent for tomorrow at %s", v122, 0xCu);
            sub_10026429C(v123);
            sub_10026429C(v124);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v109 = *(v190 + 656);
          v110 = *(v190 + 608);
          v120 = *(v190 + 568);
          v121 = *(v190 + 544);
          v118 = *(v190 + 456);
          v119 = *(v190 + 440);
          v114 = *(v190 + 424);
          v112 = *(v190 + 416);
          v115 = *(v190 + 408);
          v113 = *(v190 + 392);
          v116 = *(v190 + 368);
          v108 = *(v190 + 616);
          v117 = *(v190 + 448);
          v111 = *(v190 + 400);
          _objc_release(log);
          (*(v108 + 8))(v109, v110);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v183);
          v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

          (*(v111 + 16))(v112, v114, v113);
          (*(v111 + 32))(v115, v112, v113);
          (*(v111 + 8))(v114, v113);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v116);
          v199 = "Dialog to show and say when message will be sent some time tomorrow.";
          v200 = 68;
          v201 = 2;
          v202 = 0;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v117 + 8))(v118, v119);

          v168(v120, v121);
          _objc_release(v193);
        }

        else
        {
          v92 = *(v190 + 648);
          v98 = *(v190 + 608);
          v95 = *(v190 + 528);
          v96 = *(v190 + 512);
          v93 = *(v190 + 504);
          v94 = *(v190 + 488);
          v97 = *(v190 + 616);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v99._countAndFlagsBits = Date.formatted(date:time:)();
          v99._object = v15;
          v178(v93, v94);
          v182(v95, v96);
          *(v190 + 128) = v99;
          v16 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v97 + 16))(v92, v16, v98);

          v100 = swift_allocObject();
          *(v100 + 16) = v99;
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.info.getter();
          v102 = swift_allocObject();
          *(v102 + 16) = 32;
          v103 = swift_allocObject();
          *(v103 + 16) = 8;
          v101 = swift_allocObject();
          *(v101 + 16) = sub_10035728C;
          *(v101 + 24) = v100;
          v104 = swift_allocObject();
          *(v104 + 16) = sub_10026EE84;
          *(v104 + 24) = v101;
          sub_10025C9B0(&unk_1006D7720);
          _allocateUninitializedArray<A>(_:)();
          v105 = v17;

          *v105 = sub_10026434C;
          v105[1] = v102;

          v105[2] = sub_10026434C;
          v105[3] = v103;

          v105[4] = sub_10026EF2C;
          v105[5] = v104;
          sub_1002612B0();

          if (os_log_type_enabled(v106, v107))
          {
            v89 = static UnsafeMutablePointer.allocate(capacity:)();
            sub_10025C9B0(&qword_1006D7290);
            v90 = sub_1002641E8(0);
            v91 = sub_1002641E8(1);
            v194 = v89;
            v195 = v90;
            v196 = v91;
            sub_10026423C(2, &v194);
            sub_10026423C(1, &v194);
            v197 = sub_10026434C;
            v198 = v102;
            sub_100264250(&v197, &v194, &v195, &v196);
            if (v191)
            {
            }

            v197 = sub_10026434C;
            v198 = v103;
            sub_100264250(&v197, &v194, &v195, &v196);
            v197 = sub_10026EF2C;
            v198 = v104;
            sub_100264250(&v197, &v194, &v195, &v196);
            _os_log_impl(&_mh_execute_header, v106, v107, "#SiriMail scheduling the message to be sent for %s", v89, 0xCu);
            sub_10026429C(v90);
            sub_10026429C(v91);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v76 = *(v190 + 648);
          v77 = *(v190 + 608);
          v87 = *(v190 + 568);
          v88 = *(v190 + 544);
          v85 = *(v190 + 456);
          v86 = *(v190 + 440);
          v81 = *(v190 + 424);
          v79 = *(v190 + 416);
          v82 = *(v190 + 408);
          v80 = *(v190 + 392);
          v83 = *(v190 + 368);
          v75 = *(v190 + 616);
          v84 = *(v190 + 448);
          v78 = *(v190 + 400);
          _objc_release(v106);
          (*(v75 + 8))(v76, v77);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v99);
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

          (*(v78 + 16))(v79, v81, v80);
          (*(v78 + 32))(v82, v79, v80);
          (*(v78 + 8))(v81, v80);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v83);
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v84 + 8))(v85, v86);

          v168(v87, v88);
          _objc_release(v193);
        }
      }

      goto LABEL_48;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v20 = *(v190 + 640);
  v71 = *(v190 + 608);
  v70 = *(v190 + 616);
  sub_1002A70C0(*(v190 + 536));
  v21 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v70 + 16))(v20, v21, v71);
  v73 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();
  sub_10025C9B0(&unk_1006D7720);
  v74 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v73, v72))
  {
    v66 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v67 = sub_1002641E8(0);
    v68 = sub_1002641E8(0);
    *(v190 + 232) = v66;
    *(v190 + 240) = v67;
    *(v190 + 248) = v68;
    sub_10026423C(0, (v190 + 232));
    sub_10026423C(0, (v190 + 232));
    *(v190 + 256) = v74;
    v69 = swift_task_alloc();
    v69[2] = v190 + 232;
    v69[3] = v190 + 240;
    v69[4] = v190 + 248;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v191)
    {
    }

    _os_log_impl(&_mh_execute_header, v73, v72, "#SiriMail sending the message now", v66, 2u);
    sub_10026429C(v67);
    sub_10026429C(v68);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v60 = *(v190 + 640);
  v61 = *(v190 + 608);
  v64 = *(v190 + 456);
  v65 = *(v190 + 440);
  v62 = *(v190 + 368);
  v59 = *(v190 + 616);
  v63 = *(v190 + 448);
  _objc_release(v73);
  (*(v59 + 8))(v60, v61);
  [v193 performSend];
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v62);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  (*(v63 + 8))(v64, v65);
  _objc_release(v193);
LABEL_48:

  v26 = *(*(v190 + 144) + 8);

  return v26();
}

uint64_t sub_100434AF4()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[99] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_1004380E4;
  }

  else
  {

    v2 = v5[87];
    v3 = sub_100434C94;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100434C94()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v0[18] = v0;
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v6 + 800) = v4;
  *v4 = *(v6 + 144);
  v4[1] = sub_100434D78;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100434D78()
{
  v5 = *v1;
  v5[18] = *v1;
  v5[101] = v0;

  if (v0)
  {
    v2 = v5[87];
    v3 = sub_100438338;
  }

  else
  {
    v2 = v5[87];
    v3 = sub_100434EFC;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100434EFC()
{
  v218 = v0;
  v1 = v0[95];
  v0[18] = v0;
  _objc_release(v1);
  v192 = v0[101];
  v193 = sub_1003D6B10();
  v2 = sub_10035333C();
  v194 = v2;
  if (!v2)
  {
    v25 = *(v191 + 624);
    v40 = *(v191 + 608);
    v39 = *(v191 + 616);
    _objc_release(v193);
    v26 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v39 + 16))(v25, v26, v40);
    v42 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v43 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v42, v41))
    {
      v35 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v36 = sub_1002641E8(0);
      v37 = sub_1002641E8(0);
      *(v191 + 160) = v35;
      *(v191 + 168) = v36;
      *(v191 + 176) = v37;
      sub_10026423C(0, (v191 + 160));
      sub_10026423C(0, (v191 + 160));
      *(v191 + 184) = v43;
      v38 = swift_task_alloc();
      v38[2] = v191 + 160;
      v38[3] = v191 + 168;
      v38[4] = v191 + 176;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v192)
      {
      }

      _os_log_impl(&_mh_execute_header, v42, v41, "#SiriMail could not find an active email composition, doing nothing.", v35, 2u);
      sub_10026429C(v36);
      sub_10026429C(v37);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v29 = *(v191 + 624);
    v30 = *(v191 + 608);
    v33 = *(v191 + 456);
    v34 = *(v191 + 440);
    v31 = *(v191 + 368);
    v28 = *(v191 + 616);
    v32 = *(v191 + 448);
    _objc_release(v42);
    (*(v28 + 8))(v29, v30);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("There's nothing to send.", 0x18uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v31);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    static IntentResult.result<>(dialog:)();
    (*(v32 + 8))(v33, v34);
    goto LABEL_48;
  }

  *(v191 + 192) = v2;
  _objc_release(v193);
  v3 = [v194 sendButtonItem];
  v190 = v3;
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v189 = [v3 isEnabled];
  _objc_release(v190);
  if ((v189 & 1) == 0)
  {
    v23 = *(v191 + 632);
    v56 = *(v191 + 608);
    v55 = *(v191 + 616);
    v24 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v55 + 16))(v23, v24, v56);
    v58 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v59 = _allocateUninitializedArray<A>(_:)();
    if (!os_log_type_enabled(v58, v57))
    {

      goto LABEL_41;
    }

    v51 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v52 = sub_1002641E8(0);
    v53 = sub_1002641E8(0);
    *(v191 + 200) = v51;
    *(v191 + 208) = v52;
    *(v191 + 216) = v53;
    sub_10026423C(0, (v191 + 200));
    sub_10026423C(0, (v191 + 200));
    *(v191 + 224) = v59;
    v54 = swift_task_alloc();
    v54[2] = v191 + 200;
    v54[3] = v191 + 208;
    v54[4] = v191 + 216;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (!v192)
    {

      _os_log_impl(&_mh_execute_header, v58, v57, "#SiriMail send button is disabled, user is missing vital information in the message", v51, 2u);
      sub_10026429C(v52);
      sub_10026429C(v53);
      UnsafeMutablePointer.deallocate()();

LABEL_41:
      v45 = *(v191 + 632);
      v46 = *(v191 + 608);
      v49 = *(v191 + 456);
      v50 = *(v191 + 440);
      v47 = *(v191 + 368);
      v44 = *(v191 + 616);
      v48 = *(v191 + 448);
      _objc_release(v58);
      (*(v44 + 8))(v45, v46);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Sorry, I cannot send the email yet.", 0x23uLL, 1);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v47);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      static IntentResult.result<>(dialog:)();
      (*(v48 + 8))(v49, v50);
      _objc_release(v194);
      goto LABEL_48;
    }
  }

  v188 = *(v191 + 544);
  v187 = *(v191 + 536);
  v186 = *(v191 + 552);
  sub_10042D0A0();
  if ((*(v186 + 48))(v187, 1, v188) != 1)
  {
    v181 = *(v191 + 528);
    v182 = *(v191 + 512);
    v177 = *(v191 + 504);
    v178 = *(v191 + 488);
    v180 = *(v191 + 520);
    v176 = *(v191 + 496);
    (*(*(v191 + 552) + 32))(*(v191 + 568), *(v191 + 536), *(v191 + 544));
    static Date.FormatStyle.DateStyle.omitted.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v184._countAndFlagsBits = Date.formatted(date:time:)();
    v184._object = v5;
    v179 = *(v176 + 8);
    v179(v177, v178);
    v183 = *(v180 + 8);
    v183(v181, v182);
    *(v191 + 112) = v184;
    v185 = [v194 compositionContext];
    if (v185)
    {
      v168 = *(v191 + 560);
      v167 = *(v191 + 544);
      v173 = *(v191 + 480);
      v172 = *(v191 + 464);
      v166 = *(v191 + 552);
      v171 = *(v191 + 472);
      (*(v166 + 16))(v168);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v169 = *(v166 + 8);
      v169(v168, v167);
      [v185 setSendLaterDate:isa];
      _objc_release(isa);
      _objc_release(v185);
      [v194 performSend];
      static Calendar.current.getter();
      v175 = Calendar.isDateInToday(_:)();
      v174 = *(v171 + 8);
      v174(v173, v172);
      if (v175)
      {
        v6 = *(v191 + 664);
        v157 = *(v191 + 608);
        v156 = *(v191 + 616);
        v7 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v156 + 16))(v6, v7, v157);

        v158 = swift_allocObject();
        *(v158 + 16) = v184;
        oslog = Logger.logObject.getter();
        v165 = static os_log_type_t.info.getter();
        v160 = swift_allocObject();
        *(v160 + 16) = 32;
        v161 = swift_allocObject();
        *(v161 + 16) = 8;
        v159 = swift_allocObject();
        *(v159 + 16) = sub_10035728C;
        *(v159 + 24) = v158;
        v162 = swift_allocObject();
        *(v162 + 16) = sub_10026EE84;
        *(v162 + 24) = v159;
        sub_10025C9B0(&unk_1006D7720);
        _allocateUninitializedArray<A>(_:)();
        v163 = v8;

        *v163 = sub_10026434C;
        v163[1] = v160;

        v163[2] = sub_10026434C;
        v163[3] = v161;

        v163[4] = sub_10026EF2C;
        v163[5] = v162;
        sub_1002612B0();

        if (os_log_type_enabled(oslog, v165))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v154 = sub_1002641E8(0);
          v155 = sub_1002641E8(1);
          v213 = buf;
          v214 = v154;
          v215 = v155;
          sub_10026423C(2, &v213);
          sub_10026423C(1, &v213);
          v216 = sub_10026434C;
          v217 = v160;
          sub_100264250(&v216, &v213, &v214, &v215);
          if (v192)
          {
          }

          v216 = sub_10026434C;
          v217 = v161;
          sub_100264250(&v216, &v213, &v214, &v215);
          v216 = sub_10026EF2C;
          v217 = v162;
          sub_100264250(&v216, &v213, &v214, &v215);
          _os_log_impl(&_mh_execute_header, oslog, v165, "#SiriMail scheduling the message to be sent for today at %s", buf, 0xCu);
          sub_10026429C(v154);
          sub_10026429C(v155);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        v140 = *(v191 + 664);
        v141 = *(v191 + 608);
        v151 = *(v191 + 568);
        v152 = *(v191 + 544);
        v149 = *(v191 + 456);
        v150 = *(v191 + 440);
        v145 = *(v191 + 424);
        v143 = *(v191 + 416);
        v146 = *(v191 + 408);
        v144 = *(v191 + 392);
        v147 = *(v191 + 368);
        v139 = *(v191 + 616);
        v148 = *(v191 + 448);
        v142 = *(v191 + 400);
        _objc_release(oslog);
        (*(v139 + 8))(v140, v141);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it today at ", 0x1AuLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v184);
        v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

        (*(v142 + 16))(v143, v145, v144);
        (*(v142 + 32))(v146, v143, v144);
        (*(v142 + 8))(v145, v144);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v147);
        v209 = "Dialog to show and say when message will be sent later today.";
        v210 = 61;
        v211 = 2;
        v212 = 0;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        static IntentResult.result<>(dialog:)();
        (*(v148 + 8))(v149, v150);

        v169(v151, v152);
        _objc_release(v194);
      }

      else
      {
        v137 = *(v191 + 480);
        v136 = *(v191 + 464);
        static Calendar.current.getter();
        v138 = Calendar.isDateInTomorrow(_:)();
        v174(v137, v136);
        if (v138)
        {
          v11 = *(v191 + 656);
          v127 = *(v191 + 608);
          v126 = *(v191 + 616);
          v12 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v126 + 16))(v11, v12, v127);

          v128 = swift_allocObject();
          *(v128 + 16) = v184;
          log = Logger.logObject.getter();
          v135 = static os_log_type_t.info.getter();
          v130 = swift_allocObject();
          *(v130 + 16) = 32;
          v131 = swift_allocObject();
          *(v131 + 16) = 8;
          v129 = swift_allocObject();
          *(v129 + 16) = sub_10035728C;
          *(v129 + 24) = v128;
          v132 = swift_allocObject();
          *(v132 + 16) = sub_10026EE84;
          *(v132 + 24) = v129;
          sub_10025C9B0(&unk_1006D7720);
          _allocateUninitializedArray<A>(_:)();
          v133 = v13;

          *v133 = sub_10026434C;
          v133[1] = v130;

          v133[2] = sub_10026434C;
          v133[3] = v131;

          v133[4] = sub_10026EF2C;
          v133[5] = v132;
          sub_1002612B0();

          if (os_log_type_enabled(log, v135))
          {
            v123 = static UnsafeMutablePointer.allocate(capacity:)();
            sub_10025C9B0(&qword_1006D7290);
            v124 = sub_1002641E8(0);
            v125 = sub_1002641E8(1);
            v204 = v123;
            v205 = v124;
            v206 = v125;
            sub_10026423C(2, &v204);
            sub_10026423C(1, &v204);
            v207 = sub_10026434C;
            v208 = v130;
            sub_100264250(&v207, &v204, &v205, &v206);
            if (v192)
            {
            }

            v207 = sub_10026434C;
            v208 = v131;
            sub_100264250(&v207, &v204, &v205, &v206);
            v207 = sub_10026EF2C;
            v208 = v132;
            sub_100264250(&v207, &v204, &v205, &v206);
            _os_log_impl(&_mh_execute_header, log, v135, "#SiriMail scheduling the message to be sent for tomorrow at %s", v123, 0xCu);
            sub_10026429C(v124);
            sub_10026429C(v125);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v110 = *(v191 + 656);
          v111 = *(v191 + 608);
          v121 = *(v191 + 568);
          v122 = *(v191 + 544);
          v119 = *(v191 + 456);
          v120 = *(v191 + 440);
          v115 = *(v191 + 424);
          v113 = *(v191 + 416);
          v116 = *(v191 + 408);
          v114 = *(v191 + 392);
          v117 = *(v191 + 368);
          v109 = *(v191 + 616);
          v118 = *(v191 + 448);
          v112 = *(v191 + 400);
          _objc_release(log);
          (*(v109 + 8))(v110, v111);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it tomorrow at ", 0x1DuLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v184);
          v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);

          (*(v112 + 16))(v113, v115, v114);
          (*(v112 + 32))(v116, v113, v114);
          (*(v112 + 8))(v115, v114);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v117);
          v200 = "Dialog to show and say when message will be sent some time tomorrow.";
          v201 = 68;
          v202 = 2;
          v203 = 0;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v118 + 8))(v119, v120);

          v169(v121, v122);
          _objc_release(v194);
        }

        else
        {
          v93 = *(v191 + 648);
          v99 = *(v191 + 608);
          v96 = *(v191 + 528);
          v97 = *(v191 + 512);
          v94 = *(v191 + 504);
          v95 = *(v191 + 488);
          v98 = *(v191 + 616);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v100._countAndFlagsBits = Date.formatted(date:time:)();
          v100._object = v16;
          v179(v94, v95);
          v183(v96, v97);
          *(v191 + 128) = v100;
          v17 = Logger.appIntentLogger.unsafeMutableAddressor();
          (*(v98 + 16))(v93, v17, v99);

          v101 = swift_allocObject();
          *(v101 + 16) = v100;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.info.getter();
          v103 = swift_allocObject();
          *(v103 + 16) = 32;
          v104 = swift_allocObject();
          *(v104 + 16) = 8;
          v102 = swift_allocObject();
          *(v102 + 16) = sub_10035728C;
          *(v102 + 24) = v101;
          v105 = swift_allocObject();
          *(v105 + 16) = sub_10026EE84;
          *(v105 + 24) = v102;
          sub_10025C9B0(&unk_1006D7720);
          _allocateUninitializedArray<A>(_:)();
          v106 = v18;

          *v106 = sub_10026434C;
          v106[1] = v103;

          v106[2] = sub_10026434C;
          v106[3] = v104;

          v106[4] = sub_10026EF2C;
          v106[5] = v105;
          sub_1002612B0();

          if (os_log_type_enabled(v107, v108))
          {
            v90 = static UnsafeMutablePointer.allocate(capacity:)();
            sub_10025C9B0(&qword_1006D7290);
            v91 = sub_1002641E8(0);
            v92 = sub_1002641E8(1);
            v195 = v90;
            v196 = v91;
            v197 = v92;
            sub_10026423C(2, &v195);
            sub_10026423C(1, &v195);
            v198 = sub_10026434C;
            v199 = v103;
            sub_100264250(&v198, &v195, &v196, &v197);
            if (v192)
            {
            }

            v198 = sub_10026434C;
            v199 = v104;
            sub_100264250(&v198, &v195, &v196, &v197);
            v198 = sub_10026EF2C;
            v199 = v105;
            sub_100264250(&v198, &v195, &v196, &v197);
            _os_log_impl(&_mh_execute_header, v107, v108, "#SiriMail scheduling the message to be sent for %s", v90, 0xCu);
            sub_10026429C(v91);
            sub_10026429C(v92);
            UnsafeMutablePointer.deallocate()();
          }

          else
          {
          }

          v77 = *(v191 + 648);
          v78 = *(v191 + 608);
          v88 = *(v191 + 568);
          v89 = *(v191 + 544);
          v86 = *(v191 + 456);
          v87 = *(v191 + 440);
          v82 = *(v191 + 424);
          v80 = *(v191 + 416);
          v83 = *(v191 + 408);
          v81 = *(v191 + 392);
          v84 = *(v191 + 368);
          v76 = *(v191 + 616);
          v85 = *(v191 + 448);
          v79 = *(v191 + 400);
          _objc_release(v107);
          (*(v76 + 8))(v77, v78);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it on ", 0x14uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v100);
          v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);

          (*(v79 + 16))(v80, v82, v81);
          (*(v79 + 32))(v83, v80, v81);
          (*(v79 + 8))(v82, v81);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v84);
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          static IntentResult.result<>(dialog:)();
          (*(v85 + 8))(v86, v87);

          v169(v88, v89);
          _objc_release(v194);
        }
      }

      goto LABEL_48;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v21 = *(v191 + 640);
  v72 = *(v191 + 608);
  v71 = *(v191 + 616);
  sub_1002A70C0(*(v191 + 536));
  v22 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v71 + 16))(v21, v22, v72);
  v74 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  sub_10025C9B0(&unk_1006D7720);
  v75 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v74, v73))
  {
    v67 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v68 = sub_1002641E8(0);
    v69 = sub_1002641E8(0);
    *(v191 + 232) = v67;
    *(v191 + 240) = v68;
    *(v191 + 248) = v69;
    sub_10026423C(0, (v191 + 232));
    sub_10026423C(0, (v191 + 232));
    *(v191 + 256) = v75;
    v70 = swift_task_alloc();
    v70[2] = v191 + 232;
    v70[3] = v191 + 240;
    v70[4] = v191 + 248;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v192)
    {
    }

    _os_log_impl(&_mh_execute_header, v74, v73, "#SiriMail sending the message now", v67, 2u);
    sub_10026429C(v68);
    sub_10026429C(v69);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v61 = *(v191 + 640);
  v62 = *(v191 + 608);
  v65 = *(v191 + 456);
  v66 = *(v191 + 440);
  v63 = *(v191 + 368);
  v60 = *(v191 + 616);
  v64 = *(v191 + 448);
  _objc_release(v74);
  (*(v60 + 8))(v61, v62);
  [v194 performSend];
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I'll send it.", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v63);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  (*(v64 + 8))(v65, v66);
  _objc_release(v194);
LABEL_48:

  v27 = *(*(v191 + 144) + 8);

  return v27();
}

uint64_t sub_100437C8C()
{
  *(v0 + 144) = v0;

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_100437EC4()
{
  *(v0 + 144) = v0;

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_1004380E4()
{
  v3 = *(v0 + 760);
  *(v0 + 144) = v0;

  _objc_release(v3);

  v1 = *(*(v0 + 144) + 8);

  return v1();
}

uint64_t sub_100438338()
{
  v1 = *(v0 + 760);
  *(v0 + 144) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 144) + 8);

  return v2();
}

uint64_t sub_100438590()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0290;
  sub_10002094C(v7, qword_1006F0290);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1004386D0();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1004386D0()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendDraftIntent", 0xFuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1004387A8()
{
  if (qword_1006D60D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0290);
}

uint64_t sub_100438814@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004387A8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004388A8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_10042DA04(a1, v6, v7, v8);
}

uint64_t sub_100438980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10042CA64();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

uint64_t sub_1004389E4@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for IntentParameter.DateKind.dateTime<A>(_:);
  v1 = type metadata accessor for IntentParameter.DateKind();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

unint64_t sub_100438A78()
{
  v2 = qword_1006DC490;
  if (!qword_1006DC490)
  {
    sub_10025CAA4(&qword_1006DC498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438B00()
{
  v2 = qword_1006DCB80;
  if (!qword_1006DCB80)
  {
    sub_10025CAA4(&qword_1006DC4A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438BB8()
{
  v2 = qword_1006DC4A8;
  if (!qword_1006DC4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438C34(uint64_t a1)
{
  result = sub_10032C4C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100438C60(uint64_t a1)
{
  result = sub_100438C8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100438C8C()
{
  v2 = qword_1006DC4B0;
  if (!qword_1006DC4B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438D20()
{
  v2 = qword_1006DC4B8;
  if (!qword_1006DC4B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100438DB4()
{
  v2 = qword_1006DC4C0;
  if (!qword_1006DC4C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100438E9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  memset(__b, 0, sizeof(__b));
  v42 = a1;
  v41 = a2 & 1;
  v39 = a3;
  v40 = a4 & 1;
  v37 = a5;
  v38 = a6 & 1;
  v35 = a7;
  v36 = a8 & 1;
  v33 = a10;
  v34 = a11 & 1;
  _allocateUninitializedArray<A>(_:)();
  sub_100439478();
  SetAlgebra<>.init(arrayLiteral:)();
  v30 = *__b;
  v31 = *&__b[16];
  if (a2)
  {
    result = sub_10043B978();
    v12 = *(result + 8);
    v13 = *(result + 16);
    v14 = *(result + 24);
    v15 = *(result + 32);
    *__b = *result;
    *&__b[8] = v12;
    *&__b[16] = v13;
    *&__b[24] = v14;
    *&__b[32] = v15;
    *&v30 = a1;
    if ((a4 & 1) == 0 && a3 > 0)
    {
      sub_10043BA74();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *(&v30 + 1) = a3;
    }

    if ((a6 & 1) == 0 && a5 > 0)
    {
      sub_10043BA74();
      sub_10043BCCC();
      result = OptionSet<>.contains(_:)();
      if (result)
      {
        sub_10043BB70();
        result = OptionSet<>.insert(_:)();
        *&v31 = a5;
      }
    }
  }

  else
  {
    result = sub_10043B87C();
    v16 = *(result + 8);
    v17 = *(result + 16);
    v18 = *(result + 24);
    v19 = *(result + 32);
    *__b = *result;
    *&__b[8] = v16;
    *&__b[16] = v17;
    *&__b[24] = v18;
    *&__b[32] = v19;
    if ((a6 & 1) == 0 && a5 > 0)
    {
      sub_10043BB70();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *&v31 = a5;
    }
  }

  if ((a11 & 1) != 0 || a10 <= 0)
  {
    if ((a8 & 1) == 0 && a7 > 0)
    {
      sub_10043BC6C();
      sub_10043BCCC();
      result = OptionSet<>.insert(_:)();
      *(&v31 + 1) = a7;
    }
  }

  else
  {
    sub_10043BDE4();
    sub_10043BCCC();
    result = OptionSet<>.insert(_:)();
    *(&v31 + 1) = a10;
  }

  v20 = *&__b[32];
  *a9 = v30;
  *(a9 + 16) = v31;
  *(a9 + 32) = v20;
  return result;
}

unint64_t sub_100439478()
{
  v2 = qword_1006DC4E0;
  if (!qword_1006DC4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004394F4()
{
  v483 = 0;
  v478 = 0;
  v479 = 0;
  v470 = 0;
  v471 = 0;
  v468 = 0;
  v469 = 0;
  v466 = 0;
  v467 = 0;
  v484 = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ALL MESSAGES", 0xCuLL, 1);
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  bundle = sub_10028FEB4();
  v4._countAndFlagsBits = sub_100015E30();
  v4._object = v5;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, bundle, v4, v3);

  _objc_release(bundle);

  v482 = v6;
  v495 = *v0;
  v496 = v0[1];
  v480 = MUIBucket.localizedTitle.getter();
  v481 = v7;
  sub_1002686CC();
  v311 = StringProtocol.localizedUppercase.getter();
  v312 = v8;
  v478 = v311;
  v479 = v8;

  v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_MESSAGE_COUNT", 0x28uLL, 1);
  v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v313 = sub_10028FEB4();
  v12._countAndFlagsBits = sub_100015E30();
  v12._object = v13;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v313, v12, v11);

  _objc_release(v313);

  sub_10025C9B0(&qword_1006DB0A8);
  _allocateUninitializedArray<A>(_:)();
  v315 = v14;
  memcpy(__dst, __src, sizeof(__dst));
  v15 = sub_10043BB70();
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v19 = v15[4];
  v472 = *v15;
  v473 = v16;
  v474 = v17;
  v475 = v18;
  v476 = v19;
  sub_10043BCCC();
  if (OptionSet<>.contains(_:)())
  {
    v491 = *__src;
    v492 = __src[1];
    v309 = v492;
  }

  else
  {
    v493 = *__src;
    v494 = __src[1];
    v309 = *(&v493 + 1);
  }

  v315[3] = &type metadata for Int;
  v315[4] = &protocol witness table for Int;
  *v315 = v309;
  sub_1002612B0();
  v300 = static String.localizedStringWithFormat(_:_:)();
  v301 = v20;

  v470 = v300;
  v471 = v301;
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%lld NEW", 8uLL, 1);
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Number of new messages", 0x16uLL, 1);
  v302 = sub_10028FEB4();
  v24._countAndFlagsBits = sub_100015E30();
  v24._object = v25;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v302, v24, v23);

  _objc_release(v302);

  _allocateUninitializedArray<A>(_:)();
  v488 = *__src;
  v489 = __src[1];
  v490 = *(&v489 + 1);
  v26[3] = &type metadata for Int;
  v26[4] = &protocol witness table for Int;
  *v26 = v490;
  sub_1002612B0();
  v303 = static String.localizedStringWithFormat(_:_:)();
  v304 = v27;

  v468 = v303;
  v469 = v304;
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("%lld UNREAD", 0xBuLL, 1);
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v30 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Number of unread messages", 0x19uLL, 1);
  v305 = sub_10028FEB4();
  v31._countAndFlagsBits = sub_100015E30();
  v31._object = v32;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v305, v31, v30);

  _objc_release(v305);

  _allocateUninitializedArray<A>(_:)();
  v485 = *__src;
  v486 = __src[1];
  v487 = *(&v486 + 1);
  v33[3] = &type metadata for Int;
  v33[4] = &protocol witness table for Int;
  *v33 = v487;
  sub_1002612B0();
  v306 = static String.localizedStringWithFormat(_:_:)();
  v307 = v34;

  v466 = v306;
  v467 = v307;
  memcpy(v465, __src, sizeof(v465));
  _allocateUninitializedArray<A>(_:)();
  v308 = v35;
  v36 = sub_10043B978();
  v37 = v36[1];
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[4];
  *v308 = *v36;
  v308[1] = v37;
  v308[2] = v38;
  v308[3] = v39;
  v308[4] = v40;
  v41 = sub_10043BA74();
  v42 = v41[1];
  v43 = v41[2];
  v44 = v41[3];
  v45 = v41[4];
  v308[5] = *v41;
  v308[6] = v42;
  v308[7] = v43;
  v308[8] = v44;
  v308[9] = v45;
  v46 = sub_10043BB70();
  v47 = v46[1];
  v48 = v46[2];
  v49 = v46[3];
  v50 = v46[4];
  v308[10] = *v46;
  v308[11] = v47;
  v308[12] = v48;
  v308[13] = v49;
  v308[14] = v50;
  v51 = sub_10043BDE4();
  v52 = *v51;
  v53 = v51[1];
  v54 = v51[2];
  v55 = v51[3];
  v56 = v51[4];
  v308[15] = v52;
  v308[16] = v53;
  v308[17] = v54;
  v308[18] = v55;
  v308[19] = v56;
  sub_1002612B0();
  sub_100439478();
  SetAlgebra<>.init(arrayLiteral:)();
  v455 = v460;
  v456 = v461;
  v457 = v462;
  v458 = v463;
  v459 = v464;
  sub_10043BE44();
  if (== infix<A>(_:_:)())
  {
    v298 = _allocateUninitializedArray<A>(_:)();
    v299 = v57;
    *v57 = sub_10043BF10();
    v299[1] = v58;

    v299[2] = v300;
    v299[3] = v301;

    v299[4] = v303;
    v299[5] = v304;
    sub_1002612B0();

    v483 = v298;
  }

  else
  {
    memcpy(v454, __src, sizeof(v454));
    _allocateUninitializedArray<A>(_:)();
    v297 = v59;
    v60 = sub_10043B978();
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[3];
    v64 = v60[4];
    *v297 = *v60;
    v297[1] = v61;
    v297[2] = v62;
    v297[3] = v63;
    v297[4] = v64;
    v65 = sub_10043BA74();
    v66 = v65[1];
    v67 = v65[2];
    v68 = v65[3];
    v69 = v65[4];
    v297[5] = *v65;
    v297[6] = v66;
    v297[7] = v67;
    v297[8] = v68;
    v297[9] = v69;
    v70 = sub_10043BB70();
    v71 = v70[1];
    v72 = v70[2];
    v73 = v70[3];
    v74 = v70[4];
    v297[10] = *v70;
    v297[11] = v71;
    v297[12] = v72;
    v297[13] = v73;
    v297[14] = v74;
    v75 = sub_10043BC6C();
    v76 = v75[1];
    v77 = v75[2];
    v78 = v75[3];
    v79 = v75[4];
    v297[15] = *v75;
    v297[16] = v76;
    v297[17] = v77;
    v297[18] = v78;
    v297[19] = v79;
    sub_1002612B0();
    SetAlgebra<>.init(arrayLiteral:)();
    v444 = v449;
    v445 = v450;
    v446 = v451;
    v447 = v452;
    v448 = v453;
    if (== infix<A>(_:_:)())
    {
      v295 = _allocateUninitializedArray<A>(_:)();
      v296 = v80;
      *v80 = sub_10043BF10();
      v296[1] = v81;

      v296[2] = v300;
      v296[3] = v301;

      v296[4] = v306;
      v296[5] = v307;
      sub_1002612B0();

      v483 = v295;
    }

    else
    {
      memcpy(v443, __src, sizeof(v443));
      _allocateUninitializedArray<A>(_:)();
      v294 = v82;
      v83 = sub_10043B978();
      v84 = v83[1];
      v85 = v83[2];
      v86 = v83[3];
      v87 = v83[4];
      *v294 = *v83;
      v294[1] = v84;
      v294[2] = v85;
      v294[3] = v86;
      v294[4] = v87;
      v88 = sub_10043BA74();
      v89 = v88[1];
      v90 = v88[2];
      v91 = v88[3];
      v92 = v88[4];
      v294[5] = *v88;
      v294[6] = v89;
      v294[7] = v90;
      v294[8] = v91;
      v294[9] = v92;
      v93 = sub_10043BB70();
      v94 = v93[1];
      v95 = v93[2];
      v96 = v93[3];
      v97 = v93[4];
      v294[10] = *v93;
      v294[11] = v94;
      v294[12] = v95;
      v294[13] = v96;
      v294[14] = v97;
      sub_1002612B0();
      SetAlgebra<>.init(arrayLiteral:)();
      v433 = v438;
      v434 = v439;
      v435 = v440;
      v436 = v441;
      v437 = v442;
      if (== infix<A>(_:_:)())
      {
        v292 = _allocateUninitializedArray<A>(_:)();
        v293 = v98;
        *v98 = sub_10043BF10();
        v293[1] = v99;

        v293[2] = v300;
        v293[3] = v301;
        sub_1002612B0();

        v483 = v292;
      }

      else
      {
        memcpy(v432, __src, sizeof(v432));
        _allocateUninitializedArray<A>(_:)();
        v291 = v100;
        v101 = sub_10043B978();
        v102 = v101[1];
        v103 = v101[2];
        v104 = v101[3];
        v105 = v101[4];
        *v291 = *v101;
        v291[1] = v102;
        v291[2] = v103;
        v291[3] = v104;
        v291[4] = v105;
        v106 = sub_10043BA74();
        v107 = v106[1];
        v108 = v106[2];
        v109 = v106[3];
        v110 = v106[4];
        v291[5] = *v106;
        v291[6] = v107;
        v291[7] = v108;
        v291[8] = v109;
        v291[9] = v110;
        v111 = sub_10043BDE4();
        v112 = v111[1];
        v113 = v111[2];
        v114 = v111[3];
        v115 = v111[4];
        v291[10] = *v111;
        v291[11] = v112;
        v291[12] = v113;
        v291[13] = v114;
        v291[14] = v115;
        sub_1002612B0();
        SetAlgebra<>.init(arrayLiteral:)();
        v422 = v427;
        v423 = v428;
        v424 = v429;
        v425 = v430;
        v426 = v431;
        if (== infix<A>(_:_:)())
        {
          v289 = _allocateUninitializedArray<A>(_:)();
          v290 = v116;

          *v290 = v311;
          v290[1] = v312;

          v290[2] = v300;
          v290[3] = v301;

          v290[4] = v303;
          v290[5] = v304;
          sub_1002612B0();

          v483 = v289;
        }

        else
        {
          memcpy(v421, __src, sizeof(v421));
          _allocateUninitializedArray<A>(_:)();
          v288 = v117;
          v118 = sub_10043B978();
          v119 = v118[1];
          v120 = v118[2];
          v121 = v118[3];
          v122 = v118[4];
          *v288 = *v118;
          v288[1] = v119;
          v288[2] = v120;
          v288[3] = v121;
          v288[4] = v122;
          v123 = sub_10043BA74();
          v124 = v123[1];
          v125 = v123[2];
          v126 = v123[3];
          v127 = v123[4];
          v288[5] = *v123;
          v288[6] = v124;
          v288[7] = v125;
          v288[8] = v126;
          v288[9] = v127;
          v128 = sub_10043BC6C();
          v129 = v128[1];
          v130 = v128[2];
          v131 = v128[3];
          v132 = v128[4];
          v288[10] = *v128;
          v288[11] = v129;
          v288[12] = v130;
          v288[13] = v131;
          v288[14] = v132;
          sub_1002612B0();
          SetAlgebra<>.init(arrayLiteral:)();
          v411 = v416;
          v412 = v417;
          v413 = v418;
          v414 = v419;
          v415 = v420;
          if (== infix<A>(_:_:)())
          {
            v286 = _allocateUninitializedArray<A>(_:)();
            v287 = v133;

            *v287 = v311;
            v287[1] = v312;

            v287[2] = v300;
            v287[3] = v301;

            v287[4] = v306;
            v287[5] = v307;
            sub_1002612B0();

            v483 = v286;
          }

          else
          {
            memcpy(v410, __src, sizeof(v410));
            _allocateUninitializedArray<A>(_:)();
            v285 = v134;
            v135 = sub_10043B978();
            v136 = v135[1];
            v137 = v135[2];
            v138 = v135[3];
            v139 = v135[4];
            *v285 = *v135;
            v285[1] = v136;
            v285[2] = v137;
            v285[3] = v138;
            v285[4] = v139;
            v140 = sub_10043BA74();
            v141 = v140[1];
            v142 = v140[2];
            v143 = v140[3];
            v144 = v140[4];
            v285[5] = *v140;
            v285[6] = v141;
            v285[7] = v142;
            v285[8] = v143;
            v285[9] = v144;
            sub_1002612B0();
            SetAlgebra<>.init(arrayLiteral:)();
            v400 = v405;
            v401 = v406;
            v402 = v407;
            v403 = v408;
            v404 = v409;
            if (== infix<A>(_:_:)())
            {
              v283 = _allocateUninitializedArray<A>(_:)();
              v284 = v145;

              *v284 = v311;
              v284[1] = v312;

              v284[2] = v300;
              v284[3] = v301;
              sub_1002612B0();

              v483 = v283;
            }

            else
            {
              memcpy(v399, __src, sizeof(v399));
              _allocateUninitializedArray<A>(_:)();
              v282 = v146;
              v147 = sub_10043B978();
              v148 = v147[1];
              v149 = v147[2];
              v150 = v147[3];
              v151 = v147[4];
              *v282 = *v147;
              v282[1] = v148;
              v282[2] = v149;
              v282[3] = v150;
              v282[4] = v151;
              v152 = sub_10043BDE4();
              v153 = v152[1];
              v154 = v152[2];
              v155 = v152[3];
              v156 = v152[4];
              v282[5] = *v152;
              v282[6] = v153;
              v282[7] = v154;
              v282[8] = v155;
              v282[9] = v156;
              sub_1002612B0();
              SetAlgebra<>.init(arrayLiteral:)();
              v389 = v394;
              v390 = v395;
              v391 = v396;
              v392 = v397;
              v393 = v398;
              if (== infix<A>(_:_:)())
              {
                v280 = _allocateUninitializedArray<A>(_:)();
                v281 = v157;

                *v281 = v311;
                v281[1] = v312;

                v281[2] = v303;
                v281[3] = v304;
                sub_1002612B0();

                v483 = v280;
              }

              else
              {
                memcpy(v388, __src, sizeof(v388));
                _allocateUninitializedArray<A>(_:)();
                v279 = v158;
                v159 = sub_10043B978();
                v160 = v159[1];
                v161 = v159[2];
                v162 = v159[3];
                v163 = v159[4];
                *v279 = *v159;
                v279[1] = v160;
                v279[2] = v161;
                v279[3] = v162;
                v279[4] = v163;
                v164 = sub_10043BC6C();
                v165 = v164[1];
                v166 = v164[2];
                v167 = v164[3];
                v168 = v164[4];
                v279[5] = *v164;
                v279[6] = v165;
                v279[7] = v166;
                v279[8] = v167;
                v279[9] = v168;
                sub_1002612B0();
                SetAlgebra<>.init(arrayLiteral:)();
                v378 = v383;
                v379 = v384;
                v380 = v385;
                v381 = v386;
                v382 = v387;
                if (== infix<A>(_:_:)())
                {
                  v277 = _allocateUninitializedArray<A>(_:)();
                  v278 = v169;

                  *v278 = v311;
                  v278[1] = v312;

                  v278[2] = v306;
                  v278[3] = v307;
                  sub_1002612B0();

                  v483 = v277;
                }

                else
                {
                  memcpy(v377, __src, sizeof(v377));
                  _allocateUninitializedArray<A>(_:)();
                  v276 = v170;
                  v171 = sub_10043B87C();
                  v172 = v171[1];
                  v173 = v171[2];
                  v174 = v171[3];
                  v175 = v171[4];
                  *v276 = *v171;
                  v276[1] = v172;
                  v276[2] = v173;
                  v276[3] = v174;
                  v276[4] = v175;
                  v176 = sub_10043BB70();
                  v177 = v176[1];
                  v178 = v176[2];
                  v179 = v176[3];
                  v180 = v176[4];
                  v276[5] = *v176;
                  v276[6] = v177;
                  v276[7] = v178;
                  v276[8] = v179;
                  v276[9] = v180;
                  v181 = sub_10043BDE4();
                  v182 = v181[1];
                  v183 = v181[2];
                  v184 = v181[3];
                  v185 = v181[4];
                  v276[10] = *v181;
                  v276[11] = v182;
                  v276[12] = v183;
                  v276[13] = v184;
                  v276[14] = v185;
                  sub_1002612B0();
                  SetAlgebra<>.init(arrayLiteral:)();
                  v367 = v372;
                  v368 = v373;
                  v369 = v374;
                  v370 = v375;
                  v371 = v376;
                  if (OptionSet<>.contains(_:)())
                  {
                    v274 = _allocateUninitializedArray<A>(_:)();
                    v275 = v186;

                    *v275 = v6;

                    v275[1]._countAndFlagsBits = v300;
                    v275[1]._object = v301;

                    v275[2]._countAndFlagsBits = v303;
                    v275[2]._object = v304;
                    sub_1002612B0();

                    v483 = v274;
                  }

                  else
                  {
                    memcpy(v366, __src, sizeof(v366));
                    _allocateUninitializedArray<A>(_:)();
                    v273 = v187;
                    v188 = sub_10043B87C();
                    v189 = v188[1];
                    v190 = v188[2];
                    v191 = v188[3];
                    v192 = v188[4];
                    *v273 = *v188;
                    v273[1] = v189;
                    v273[2] = v190;
                    v273[3] = v191;
                    v273[4] = v192;
                    v193 = sub_10043BB70();
                    v194 = v193[1];
                    v195 = v193[2];
                    v196 = v193[3];
                    v197 = v193[4];
                    v273[5] = *v193;
                    v273[6] = v194;
                    v273[7] = v195;
                    v273[8] = v196;
                    v273[9] = v197;
                    v198 = sub_10043BC6C();
                    v199 = v198[1];
                    v200 = v198[2];
                    v201 = v198[3];
                    v202 = v198[4];
                    v273[10] = *v198;
                    v273[11] = v199;
                    v273[12] = v200;
                    v273[13] = v201;
                    v273[14] = v202;
                    sub_1002612B0();
                    SetAlgebra<>.init(arrayLiteral:)();
                    v356 = v361;
                    v357 = v362;
                    v358 = v363;
                    v359 = v364;
                    v360 = v365;
                    if (OptionSet<>.contains(_:)())
                    {
                      v271 = _allocateUninitializedArray<A>(_:)();
                      v272 = v203;

                      *v272 = v6;

                      v272[1]._countAndFlagsBits = v300;
                      v272[1]._object = v301;

                      v272[2]._countAndFlagsBits = v306;
                      v272[2]._object = v307;
                      sub_1002612B0();

                      v483 = v271;
                    }

                    else
                    {
                      memcpy(v355, __src, sizeof(v355));
                      _allocateUninitializedArray<A>(_:)();
                      v270 = v204;
                      v205 = sub_10043B87C();
                      v206 = v205[1];
                      v207 = v205[2];
                      v208 = v205[3];
                      v209 = v205[4];
                      *v270 = *v205;
                      v270[1] = v206;
                      v270[2] = v207;
                      v270[3] = v208;
                      v270[4] = v209;
                      v210 = sub_10043BB70();
                      v211 = v210[1];
                      v212 = v210[2];
                      v213 = v210[3];
                      v214 = v210[4];
                      v270[5] = *v210;
                      v270[6] = v211;
                      v270[7] = v212;
                      v270[8] = v213;
                      v270[9] = v214;
                      sub_1002612B0();
                      SetAlgebra<>.init(arrayLiteral:)();
                      v345 = v350;
                      v346 = v351;
                      v347 = v352;
                      v348 = v353;
                      v349 = v354;
                      if (OptionSet<>.contains(_:)())
                      {
                        v268 = _allocateUninitializedArray<A>(_:)();
                        v269 = v215;

                        *v269 = v6;

                        v269[1]._countAndFlagsBits = v300;
                        v269[1]._object = v301;
                        sub_1002612B0();

                        v483 = v268;
                      }

                      else
                      {
                        memcpy(v344, __src, sizeof(v344));
                        _allocateUninitializedArray<A>(_:)();
                        v267 = v216;
                        v217 = sub_10043B87C();
                        v218 = v217[1];
                        v219 = v217[2];
                        v220 = v217[3];
                        v221 = v217[4];
                        *v267 = *v217;
                        v267[1] = v218;
                        v267[2] = v219;
                        v267[3] = v220;
                        v267[4] = v221;
                        v222 = sub_10043BDE4();
                        v223 = v222[1];
                        v224 = v222[2];
                        v225 = v222[3];
                        v226 = v222[4];
                        v267[5] = *v222;
                        v267[6] = v223;
                        v267[7] = v224;
                        v267[8] = v225;
                        v267[9] = v226;
                        sub_1002612B0();
                        SetAlgebra<>.init(arrayLiteral:)();
                        v334 = v339;
                        v335 = v340;
                        v336 = v341;
                        v337 = v342;
                        v338 = v343;
                        if (OptionSet<>.contains(_:)())
                        {
                          v265 = _allocateUninitializedArray<A>(_:)();
                          v266 = v227;

                          *v266 = v6;

                          v266[1]._countAndFlagsBits = v303;
                          v266[1]._object = v304;
                          sub_1002612B0();

                          v483 = v265;
                        }

                        else
                        {
                          memcpy(v333, __src, sizeof(v333));
                          _allocateUninitializedArray<A>(_:)();
                          v264 = v228;
                          v229 = sub_10043B87C();
                          v230 = v229[1];
                          v231 = v229[2];
                          v232 = v229[3];
                          v233 = v229[4];
                          *v264 = *v229;
                          v264[1] = v230;
                          v264[2] = v231;
                          v264[3] = v232;
                          v264[4] = v233;
                          v234 = sub_10043BC6C();
                          v235 = v234[1];
                          v236 = v234[2];
                          v237 = v234[3];
                          v238 = v234[4];
                          v264[5] = *v234;
                          v264[6] = v235;
                          v264[7] = v236;
                          v264[8] = v237;
                          v264[9] = v238;
                          sub_1002612B0();
                          SetAlgebra<>.init(arrayLiteral:)();
                          v323 = v328;
                          v324 = v329;
                          v325 = v330;
                          v326 = v331;
                          v327 = v332;
                          if (OptionSet<>.contains(_:)())
                          {
                            v262 = _allocateUninitializedArray<A>(_:)();
                            v263 = v239;

                            *v263 = v6;

                            v263[1]._countAndFlagsBits = v306;
                            v263[1]._object = v307;
                            sub_1002612B0();

                            v483 = v262;
                          }

                          else
                          {
                            memcpy(v322, __src, sizeof(v322));
                            v240 = sub_10043B978();
                            v241 = v240[1];
                            v242 = v240[2];
                            v243 = v240[3];
                            v244 = v240[4];
                            v317 = *v240;
                            v318 = v241;
                            v319 = v242;
                            v320 = v243;
                            v321 = v244;
                            if (== infix<A>(_:_:)())
                            {
                              v260 = _allocateUninitializedArray<A>(_:)();
                              v261 = v245;

                              *v261 = v311;
                              v261[1] = v312;
                              sub_1002612B0();

                              v483 = v260;
                            }

                            else
                            {
                              memcpy(v316, __src, sizeof(v316));
                              sub_10043B87C();
                              if (== infix<A>(_:_:)())
                              {
                                v258 = _allocateUninitializedArray<A>(_:)();
                                v259 = v246;

                                *v259 = v6;
                                sub_1002612B0();

                                v483 = v258;
                              }

                              else
                              {
                                v257 = _allocateUninitializedArray<A>(_:)();

                                v483 = v257;
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

  v247 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" • ", 5uLL, 0);
  v248 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
  v249 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  v255 = sub_10028FEB4();
  v250._countAndFlagsBits = sub_100015E30();
  v250._object = v251;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v247, v248, v255, v250, v249);

  _objc_release(v255);

  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  v256 = Collection.isEmpty.getter();

  if (v256)
  {
    v254 = 0;
  }

  else
  {

    sub_1002C8C78();
    v253 = BidirectionalCollection<>.joined(separator:)();
    sub_100264880();
    v254 = v253;
  }

  sub_100264880();
  return v254;
}

uint64_t sub_10043B800@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v2 = sub_10043B77C();
  result = a1;
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = a1;
  return result;
}

void *sub_10043B87C()
{
  if (qword_1006D60D8 != -1)
  {
    swift_once();
  }

  return &unk_1006F02A8;
}

void *sub_10043B8DC@<X0>(void *a1@<X8>)
{
  result = sub_10043B87C();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043B978()
{
  if (qword_1006D60E0 != -1)
  {
    swift_once();
  }

  return &unk_1006F02D0;
}

void *sub_10043B9D8@<X0>(void *a1@<X8>)
{
  result = sub_10043B978();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BA74()
{
  if (qword_1006D60E8 != -1)
  {
    swift_once();
  }

  return &unk_1006F02F8;
}

void *sub_10043BAD4@<X0>(void *a1@<X8>)
{
  result = sub_10043BA74();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BB70()
{
  if (qword_1006D60F0 != -1)
  {
    swift_once();
  }

  return &unk_1006F0320;
}

void *sub_10043BBD0@<X0>(void *a1@<X8>)
{
  result = sub_10043BB70();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BC6C()
{
  if (qword_1006D60F8 != -1)
  {
    swift_once();
  }

  return &unk_1006F0348;
}

unint64_t sub_10043BCCC()
{
  v2 = qword_1006DC4E8;
  if (!qword_1006DC4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043BD48@<X0>(void *a1@<X8>)
{
  result = sub_10043BC6C();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

void *sub_10043BDE4()
{
  if (qword_1006D6100 != -1)
  {
    swift_once();
  }

  return &unk_1006F0370;
}

unint64_t sub_10043BE44()
{
  v2 = qword_1006DC4F0;
  if (!qword_1006DC4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4F0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043BEC0@<X0>(void *a1@<X8>)
{
  result = sub_10043BDE4();
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *a1 = *result;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  return result;
}

uint64_t sub_10043BF10()
{
  v28 = *v0;
  if (*v0 == 2)
  {
    v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_TRANSACTIONS_COUNT", 0x2DuLL, 1);
    v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    bundle = sub_10028FEB4();
    v4._countAndFlagsBits = sub_100015E30();
    v4._object = v5;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, bundle, v4, v3);

    _objc_release(bundle);

    sub_10025C9B0(&qword_1006DB0A8);
    _allocateUninitializedArray<A>(_:)();
    v29 = *(v27 + 8);
    v6[3] = &type metadata for Int;
    v6[4] = &protocol witness table for Int;
    *v6 = v29;
    sub_1002612B0();
    v25 = static String.localizedStringWithFormat(_:_:)();

    return v25;
  }

  else if (v28 == 3)
  {
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_UPDATES_COUNT", 0x28uLL, 1);
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v9 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v22 = sub_10028FEB4();
    v10._countAndFlagsBits = sub_100015E30();
    v10._object = v11;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v22, v10, v9);

    _objc_release(v22);

    sub_10025C9B0(&qword_1006DB0A8);
    _allocateUninitializedArray<A>(_:)();
    v30 = *(v27 + 8);
    v12[3] = &type metadata for Int;
    v12[4] = &protocol witness table for Int;
    *v12 = v30;
    sub_1002612B0();
    v23 = static String.localizedStringWithFormat(_:_:)();

    return v23;
  }

  else if (v28 == 4)
  {
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SENDER_HEADER_BUTTON_TITLE_PROMOTIONS_COUNT", 0x2BuLL, 1);
    v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, 1);
    v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v20 = sub_10028FEB4();
    v16._countAndFlagsBits = sub_100015E30();
    v16._object = v17;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v20, v16, v15);

    _objc_release(v20);

    sub_10025C9B0(&qword_1006DB0A8);
    _allocateUninitializedArray<A>(_:)();
    v31 = *(v27 + 8);
    v18[3] = &type metadata for Int;
    v18[4] = &protocol witness table for Int;
    *v18 = v31;
    sub_1002612B0();
    v21 = static String.localizedStringWithFormat(_:_:)();

    return v21;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10043C4B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v4 = result;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_10043C510()
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.init()();
}

uint64_t sub_10043C714()
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formUnion(_:)();
}

uint64_t sub_10043C758()
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t sub_10043C79C()
{
  sub_10043BCCC();
  sub_100267BF4();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t sub_10043C7E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10043B800(*a1, v8);
  v3 = v8[1];
  v4 = v8[2];
  v5 = v8[3];
  v6 = v8[4];
  *a2 = v8[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10043C848@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10043C4C4();
  *a1 = result;
  return result;
}

uint64_t sub_10043C950(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 40))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10043CA30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3)
    {
      *(result + 40) = 1;
    }
  }

  else if (a3)
  {
    *(result + 40) = 0;
  }

  return result;
}

unint64_t sub_10043CC54()
{
  v2 = qword_1006DC4F8;
  if (!qword_1006DC4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10043CCE8()
{
  v2 = qword_1006DC500;
  if (!qword_1006DC500)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC500);
    return WitnessTable;
  }

  return v2;
}

void *sub_10043CD64@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x88uLL);
}

uint64_t sub_10043CDE8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043CE50()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10043CEA4()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043CF00()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0398);
  sub_1000208F4(v1, qword_1006F0398);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10043CF5C()
{
  if (qword_1006D6108 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0398);
}

uint64_t sub_10043CFC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10043CF5C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10043D038@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Send an email";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendMail", 8uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 13;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10043D21C()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D290(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D328()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

void (*sub_10043D380(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

void (*sub_10043D418(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D4B0()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D538(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 24);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D5D0(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 32);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

void (*sub_10043D6A8(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 32);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D740(char *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D9B50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100358DBC(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100358F78(v6);
}

void (*sub_10043D818(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 40);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043D8B0()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10043D90C()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10043D980(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 48);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

void *sub_10043DA18(uint64_t *a1)
{
  v7 = a1;
  v6 = v1;

  sub_10043DAA0(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  return sub_10043DCB8(a1);
}

void *sub_10043DAA0(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;

    *a2 = v3;
    v4 = a1[1];

    a2[1] = v4;
    v5 = a1[2];

    a2[2] = v5;
    v6 = a1[3];

    a2[3] = v6;
    v7 = a1[4];

    a2[4] = v7;
    v8 = a1[5];

    a2[5] = v8;
    v9 = a1[6];

    a2[6] = v9;
    v10 = a1[7];

    a2[7] = v10;
    v11 = a1[8];

    a2[8] = v11;
    v12 = a1[9];

    a2[9] = v12;
    v13 = a1[10];

    a2[10] = v13;
    v14 = a1[11];

    a2[11] = v14;
    v15 = a1[12];

    a2[12] = v15;
    v16 = a1[13];

    a2[13] = v16;
    v17 = a1[14];

    a2[14] = v17;
    a2[15] = a1[15];
    v18 = a1[16];

    a2[16] = v18;
  }

  else
  {
    memcpy(a2, a1, 0x88uLL);
  }

  return a2;
}

void *sub_10043DCB8(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void (*sub_10043DDAC(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 56);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10043DE44(uint64_t a1)
{
  v2[4] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[3] = v1;
  v2[5] = sub_10043E118();
  sub_1003D40AC();
  v3 = swift_task_alloc();
  *(v5 + 48) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10043DF24;

  return sub_1003D41E8(v6);
}

uint64_t sub_10043DF24(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 16) = *v1;
  *(v3 + 56) = a1;

  return _swift_task_switch(sub_10043E040, 0);
}

uint64_t sub_10043E040()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;
  v2 = sub_10043ECA0(v1, 1, sub_10043E17C, 0);
  _objc_release(v2);
  static IntentResult.result<>()();
  v3 = *(*(v0 + 16) + 8);

  return v3();
}

unint64_t sub_10043E118()
{
  v2 = qword_1006DC508;
  if (!qword_1006DC508)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC508);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_10043E17C(uint64_t a1, uint64_t a2)
{
  v96 = a2;
  v88 = a1;
  v108 = 0;
  v107 = 0;
  v87 = 0;
  v102 = 0;
  v89 = type metadata accessor for Logger();
  v90 = *(v89 - 8);
  v91 = v90;
  v92 = *(v90 + 64);
  v2 = __chkstk_darwin(v96);
  v94 = (v92 + 15) & 0xFFFFFFFFFFFFFFF0;
  v93 = v28 - v94;
  v3 = __chkstk_darwin(v2);
  v95 = v28 - v94;
  v108 = v4;
  v107 = v3;
  swift_errorRetain();
  if (v96)
  {
    v86 = v96;
    v7 = v93;
    v61 = v96;
    v102 = v96;
    v8 = sub_1003D4110();
    (*(v91 + 16))(v7, v8, v89);
    swift_errorRetain();
    v69 = 7;
    v70 = swift_allocObject();
    *(v70 + 16) = v61;
    v80 = Logger.logObject.getter();
    v62 = v80;
    v79 = static os_log_type_t.error.getter();
    v63 = v79;
    v64 = 17;
    v73 = swift_allocObject();
    v65 = v73;
    v66 = 32;
    *(v73 + 16) = 32;
    v9 = swift_allocObject();
    v10 = v66;
    v74 = v9;
    v67 = v9;
    *(v9 + 16) = 8;
    v68 = v10;
    v11 = swift_allocObject();
    v12 = v70;
    v71 = v11;
    *(v11 + 16) = sub_100441398;
    *(v11 + 24) = v12;
    v13 = swift_allocObject();
    v14 = v71;
    v77 = v13;
    v72 = v13;
    *(v13 + 16) = sub_10026EE84;
    *(v13 + 24) = v14;
    v78 = sub_10025C9B0(&unk_1006D7720);
    v75 = _allocateUninitializedArray<A>(_:)();
    v76 = v15;

    v16 = v73;
    v17 = v76;
    *v76 = sub_10026434C;
    v17[1] = v16;

    v18 = v74;
    v19 = v76;
    v76[2] = sub_10026434C;
    v19[3] = v18;

    v20 = v76;
    v21 = v77;
    v76[4] = sub_10026EF2C;
    v20[5] = v21;
    sub_1002612B0();

    if (os_log_type_enabled(v80, v79))
    {
      v23 = v87;
      v54 = static UnsafeMutablePointer.allocate(capacity:)();
      v51 = v54;
      v52 = sub_10025C9B0(&qword_1006D7290);
      v55 = sub_1002641E8(0);
      v53 = v55;
      v57 = 1;
      v56 = sub_1002641E8(1);
      v101 = v54;
      v100 = v55;
      v99 = v56;
      v58 = &v101;
      sub_10026423C(2, &v101);
      sub_10026423C(v57, v58);
      v97 = sub_10026434C;
      v98 = v65;
      sub_100264250(&v97, v58, &v100, &v99);
      v59 = v23;
      v60 = v23;
      if (v23)
      {
        v49 = 0;

        __break(1u);
      }

      else
      {
        v97 = sub_10026434C;
        v98 = v67;
        sub_100264250(&v97, &v101, &v100, &v99);
        v47 = 0;
        v48 = 0;
        v97 = sub_10026EF2C;
        v98 = v72;
        sub_100264250(&v97, &v101, &v100, &v99);
        v45 = 0;
        v46 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "#SiriMail SendMail.perform: failed with error: %s", v51, 0xCu);
        sub_10026429C(v53);
        sub_10026429C(v56);
        UnsafeMutablePointer.deallocate()();

        v50 = v45;
      }
    }

    else
    {
      v24 = v87;

      v50 = v24;
    }

    v43 = v50;

    (*(v91 + 8))(v93, v89);

    return v43;
  }

  else
  {
    v5 = v95;
    v6 = sub_1003D4110();
    (*(v91 + 16))(v5, v6, v89);
    v84 = Logger.logObject.getter();
    v81 = v84;
    v83 = static os_log_type_t.info.getter();
    v82 = v83;
    sub_10025C9B0(&unk_1006D7720);
    v85 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v84, v83))
    {
      v25 = v87;
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      v30 = v34;
      v31 = sub_10025C9B0(&qword_1006D7290);
      v32 = 0;
      v35 = sub_1002641E8(0);
      v33 = v35;
      v36 = sub_1002641E8(v32);
      v106 = v34;
      v105 = v35;
      v104 = v36;
      v37 = 0;
      v38 = &v106;
      sub_10026423C(0, &v106);
      sub_10026423C(v37, v38);
      v103 = v85;
      v39 = v28;
      __chkstk_darwin(v28);
      v40 = &v28[-6];
      v28[-4] = v26;
      v28[-3] = &v105;
      v28[-2] = &v104;
      v41 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v42 = v25;
      if (v25)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v81, v82, "#SiriMail SendMail.perform: MSSendMail invoked", v30, 2u);
        v28[1] = 0;
        sub_10026429C(v33);
        sub_10026429C(v36);
        UnsafeMutablePointer.deallocate()();

        v29 = v42;
      }
    }

    else
    {

      v29 = v87;
    }

    v28[0] = v29;

    (*(v91 + 8))(v95, v89);
    return v28[0];
  }
}

id sub_10043ECA0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v15 = a3;
    v16 = a4;
    aBlock = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = 0;
    v13 = sub_10043FF28;
    v14 = &unk_1006601C8;
    v6 = _Block_copy(&aBlock);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() sendEmail:a1 playSound:a2 & 1 completionBlock:v7];
  _Block_release(v7);
  _objc_release(a1);
  return v5;
}

void *sub_10043EDC8@<X0>(void *a1@<X8>)
{
  v92 = a1;
  v21 = "To recipients field";
  v27 = "Cc recipients field";
  v32 = "Bcc recipients field";
  v38 = "Subject field";
  v43 = "Body field";
  v48 = "Account field";
  v56 = "Attachments field";
  v64 = "In reply to field";
  v89 = v122;
  v91 = 64;
  v67 = 0;
  memset(v122, 0, sizeof(v122));
  v53 = sub_10025C9B0(&qword_1006D9B50);
  v10 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v54 = &v10 - v10;
  v45 = sub_10025C9B0(&unk_1006D7380);
  v11 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v45);
  v46 = &v10 - v11;
  v1 = sub_10025C9B0(&unk_1006D8270);
  v12 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v42 = &v10 - v12;
  v51 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v13 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v87 = &v10 - v13;
  v3 = sub_10025C9B0(&unk_1006D7080);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v86 = &v10 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v10 - v14);
  v85 = &v10 - v15;
  v16 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v83 = &v10 - v16;
  v17 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v71 = &v10 - v17;
  v18 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v70 = &v10 - v18;
  v19 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v68 = &v10 - v19;
  v72 = type metadata accessor for LocalizedStringResource();
  v23 = *(v72 - 8);
  v24 = v72 - 8;
  v20 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v72);
  v82 = &v10 - v20;
  v31 = sub_10025C9B0(&qword_1006DC538);
  v26 = 2;
  v76 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("To", 2uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v62 = "AppIntents";
  v63 = 10;
  v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v119[1] = v21;
  v28 = 19;
  v119[2] = 19;
  v66 = 2;
  v120 = 2;
  v121 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74 = *(v23 + 56);
  v73 = v23 + 56;
  v74(v83, v76, v76, v72);
  v25 = v119;
  v119[0] = 0;
  v77 = type metadata accessor for IntentDialog();
  v5 = *(v77 - 8);
  v79 = *(v5 + 56);
  v78 = v5 + 56;
  v79(v85, v76);
  (v79)(v86, v76, v76, v77);
  v34 = sub_10025C9B0(&qword_1006DA330);
  v35 = sub_100441050();
  v37 = sub_1002B9E5C();
  sub_1003BD8F8(v87);
  v122[0] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cc", v26, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v116[1] = v27;
  v116[2] = v28;
  v117 = v66;
  v118 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v30 = v116;
  v116[0] = 0;
  (v79)(v85, v76, v76, v77);
  (v79)(v86, v76, v76, v77);
  sub_1003BD8F8(v87);
  v122[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Bcc", 3uLL, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v33 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v113[1] = v32;
  v113[2] = 20;
  v114 = v66;
  v115 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v36 = v113;
  v113[0] = 0;
  (v79)(v85, v76, v76, v77);
  (v79)(v86, v76, v76, v77);
  sub_1003BD8F8(v87);
  v122[2] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430);
  v47 = 7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Subject", 7uLL, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v110[2] = v38;
  v49 = 13;
  v110[3] = 13;
  v111 = v66;
  v112 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v41 = v110;
  v110[0] = 0;
  v110[1] = 0;
  v6 = type metadata accessor for String.IntentInputOptions();
  (*(*(v6 - 8) + 56))(v42, v76);
  (v79)(v85, v76, v76, v77);
  v40 = sub_10025C9B0(&unk_1006D7340);
  sub_10028DF54();
  sub_1003BD8F8(v87);
  v122[3] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Body", 4uLL, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v106 = v43;
  v107 = v63;
  v108 = v66;
  v109 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 56))(v46, v76);
  (v79)(v85, v76, v76, v77);
  sub_10028E064();
  sub_1003BD8F8(v87);
  v122[4] = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DC548);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Account", v47, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v50 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v102 = v48;
  v103 = v49;
  v104 = v66;
  v105 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v8 = type metadata accessor for MailAccountEntity();
  (*(*(v8 - 8) + 56))(v54, v76);
  (v79)(v85, v76, v76, v77);
  (v79)(v86, v76, v76, v77);
  v52 = sub_10035A384();
  v55 = sub_10034C204();
  sub_1003BD8F8(v87);
  v122[5] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Attachments", 0xBuLL, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v57 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v99[1] = v56;
  v65 = 17;
  v99[2] = 17;
  v100 = v66;
  v101 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v60 = v99;
  v99[0] = 0;
  (v79)(v85, v76, v76, v77);
  v59 = sub_10025C9B0(&unk_1006D7270);
  v58 = sub_10028E214();
  v61 = sub_1004410E8();
  sub_1003BD8F8(v87);
  v122[6] = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DC550);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("InReplyTo", 9uLL, v76 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v69 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v62, v63, v76 & 1);
  sub_100015CC0();
  sub_10025D410(v71);
  v95 = v64;
  v96 = v65;
  v97 = v66;
  v98 = v67 & 1 & v76;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v74(v83, v76, v76, v72);
  v75 = v123;
  sub_1004411BC(v123);
  v84 = v94;
  memcpy(v94, v75, sizeof(v94));
  (v79)(v85, v76, v76, v77);
  (v79)(v86, v76, v76, v77);
  v81 = sub_10025C9B0(&qword_1006DC558);
  v80 = sub_100441204();
  v88 = sub_1002B9DE4();
  sub_1003BD8F8(v87);
  v122[7] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v90 = __dst;
  memcpy(__dst, v89, v91);
  sub_10028B3B4(v90, v93);
  sub_10028E32C();
  return memcpy(v92, v90, v91);
}

uint64_t sub_10043FF28(uint64_t a1, void *a2, void *a3)
{
  v16 = a1;
  v21 = a2;
  v10 = a3;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v15 = v5 - v14;
  v17 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v16);
  v18 = v5 - v17;
  v19 = *(v3 + 32);
  v20 = *(v3 + 40);

  _objc_retain(v21);
  if (v21)
  {
    v9 = v21;
    v8 = v21;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v12 + 32))(v18, v15, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
    _objc_release(v8);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  _objc_retain(v10);
  if (v10)
  {
    v7 = v10;
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v5[1] = v6;
  v19(v18);

  sub_100286140(v18);
}

void (*sub_100440224(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D290(v3 + 8);
  return sub_1004402BC;
}

void sub_1004402BC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 96))();
  free(v1);
}

void (*sub_100440388(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D380(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440468(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D418(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440590(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D538(v3 + 8);
  return sub_1004402BC;
}

void (*sub_1004406B8(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D6A8(v3 + 8);
  return sub_1004402BC;
}

void (*sub_100440798(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D818(v3 + 8);
  return sub_1004402BC;
}

void (*sub_1004408B8(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043D980(v3 + 8);
  return sub_1004402BC;
}

void *sub_100440950@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_10043CD64(v4);
  return memcpy(a1, v4, 0x88uLL);
}

void *sub_1004409B0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __srca, sizeof(v4));
  return sub_10043DA18(__dst);
}

void (*sub_100440A10(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x68uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x40uLL);
  v3[12] = sub_10043DDAC(v3 + 8);
  return sub_1004402BC;
}

uint64_t sub_100440AA8(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return PreparableIntent.prepare()(a1, a2);
}

uint64_t sub_100440B7C(uint64_t a1)
{
  *(v2 + 80) = v2;
  memcpy((v2 + 16), v1, 0x40uLL);
  v3 = swift_task_alloc();
  *(v5 + 88) = v3;
  *v3 = *(v5 + 80);
  v3[1] = sub_10028D168;

  return sub_10043DE44(a1);
}

unint64_t sub_100440CB4()
{
  v2 = qword_1006DC510;
  if (!qword_1006DC510)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440D48()
{
  v2 = qword_1006DC518;
  if (!qword_1006DC518)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440DF4()
{
  v2 = qword_1006DC520;
  if (!qword_1006DC520)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440E9C()
{
  v2 = qword_1006DC528;
  if (!qword_1006DC528)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100440F30()
{
  v2 = qword_1006DC530;
  if (!qword_1006DC530)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100441050()
{
  v2 = qword_1006DC540;
  if (!qword_1006DC540)
  {
    sub_10025CAA4(&qword_1006DA330);
    sub_100352270();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC540);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004410E8()
{
  sub_10025C9B0(&unk_1006DC568);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  v2 = sub_10044129C(v0, 1);
  static UTType.item.getter();
  result = v2;
  sub_1002700CC();
  return result;
}

void *sub_1004411BC(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  return result;
}

unint64_t sub_100441204()
{
  v2 = qword_1006DC560;
  if (!qword_1006DC560)
  {
    sub_10025CAA4(&qword_1006DC558);
    sub_10038360C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC560);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10044129C(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  type metadata accessor for UTType();

  return a1;
}

uint64_t sub_100441334(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1004413A0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F03B0);
  sub_1000208F4(v1, qword_1006F03B0);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1004413FC()
{
  if (qword_1006D6110 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F03B0);
}

uint64_t sub_100441468@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004413FC();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004414CC()
{
  v9 = "Mark an email message as read";
  v4 = 0;
  v2 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v1 - v2;
  v3 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v13 = &v1 - v3;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v11 = &v1 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v6 = qword_1006F03C8;
  sub_10002094C(v7, qword_1006F03C8);
  v10 = sub_1000208F4(v7, v6);
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SetMailMessageIsRead", 0x14uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 29;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1004416DC()
{
  if (qword_1006D6118 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  return sub_1000208F4(v0, qword_1006F03C8);
}

uint64_t sub_100441748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004416DC();
  v1 = type metadata accessor for LocalizedStringResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *sub_1004417BC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  v11 = a4;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v7, sizeof(__dst));

  return memcpy(a5, __dst, 0x88uLL);
}

uint64_t *sub_100441864(uint64_t *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[22] = a1;
  v8[17] = a2;
  v8[18] = a3;
  v8[19] = a4;
  v8[20] = a5;

  sub_1003814E0(a1, v8);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_1003816C8();
  return result;
}

void (*sub_100441900(void *a1, uint64_t a2, uint64_t a3))(void **a1)
{
  v5 = sub_100294700(0x30uLL);
  *a1 = v5;
  v5[4] = a3;

  v5[5] = IntentParameter.wrappedValue.modify();
  return sub_10034F1C0;
}

uint64_t sub_1004419C8()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

uint64_t sub_100441A34()
{

  IntentParameter.wrappedValue.getter();

  return v1 & 1;
}

uint64_t sub_100441AA8()
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_100441B28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1)
{
  v6 = sub_100294700(0x30uLL);
  *a1 = v6;
  v6[4] = a4;

  v6[5] = IntentParameter.wrappedValue.modify();
  return sub_10034F1C0;
}

uint64_t sub_100441BF0()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

uint64_t sub_100441C90()
{
  v50 = v62;
  v19 = "Email message to mark";
  v30 = "Is Read field";
  v51 = v63;
  memset(v63, 0, 32);
  v0 = sub_10025C9B0(&unk_1006DB310);
  v10 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v46 = &v9 - v10;
  v49 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v11 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v48 = &v9 - v11;
  v2 = sub_10025C9B0(&unk_1006D7080);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v26 = &v9 - v12;
  v13 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v12);
  v47 = &v9 - v13;
  v14 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v44 = &v9 - v14;
  v15 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v34 = &v9 - v15;
  v16 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v33 = &v9 - v16;
  v17 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v31 = &v9 - v17;
  v35 = type metadata accessor for LocalizedStringResource();
  v21 = *(v35 - 8);
  v22 = v35 - 8;
  v18 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v35);
  v43 = &v9 - v18;
  v63[0] = 0;
  sub_10025C9B0(&qword_1006DC578);
  v39 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v28 = "AppIntents";
  v29 = 10;
  v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v34);
  v4 = v50;
  *v50 = v19;
  v4[1] = 21;
  v38 = 2;
  v62[16] = 2;
  v52 = 0;
  v62[17] = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = *(v21 + 56);
  v36 = v21 + 56;
  v37(v44, v39, v39, v35);
  v23 = v64;
  sub_1004411BC(v64);
  v25 = v61;
  memcpy(v61, v23, sizeof(v61));
  v40 = type metadata accessor for IntentDialog();
  v5 = *(v40 - 8);
  v42 = *(v5 + 56);
  v41 = v5 + 56;
  v42(v47, v39);
  (v42)(v26, v39, v39, v40);
  v24 = sub_10038360C();
  v27 = sub_1002B9DE4();
  sub_1003BD8F8(v48);
  v53 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v50[4] = v53;
  sub_10025C9B0(&qword_1006DB330);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("IsRead", 6uLL, v39 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v28, v29, v39 & 1);
  sub_100015CC0();
  sub_10025D410(v34);
  v57 = v30;
  v58 = 13;
  v59 = v38;
  v60 = v52 & 1 & v39;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37(v44, v39, v39, v35);
  v45 = &v56;
  v56 = v38;
  v6 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v6 - 8) + 56))(v46, v39);
  (v42)(v47, v39, v39, v40);
  sub_1003424B8();
  sub_1003BD8F8(v48);
  v54 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  v50[5] = v54;
  sub_10025C6A0();
  v55 = sub_10025C704();
  _objc_retain(v55);
  v7 = v51;
  v50[6] = v55;
  sub_1004451D8(v7);
  return v52 & 1;
}

uint64_t sub_100442400(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 344) = a5;
  *(v5 + 336) = a4;
  *(v5 + 328) = a3;
  *(v5 + 376) = a2 & 1;
  *(v5 + 320) = a1;
  *(v5 + 296) = v5;
  *(v5 + 248) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 280) = 0;
  *(v5 + 288) = 0;
  *(v5 + 312) = 0;
  v6 = type metadata accessor for Logger();
  *(v5 + 352) = v6;
  *(v5 + 360) = *(v6 - 8);
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 248) = a2;
  *(v5 + 256) = a3;
  *(v5 + 264) = a4;
  *(v5 + 272) = a5;

  return _swift_task_switch(sub_10044254C, 0);
}

uint64_t sub_10044254C()
{
  v46 = v0;
  v1 = *(v0 + 368);
  v29 = *(v0 + 360);
  v30 = *(v0 + 352);
  v2 = *(v0 + 344);
  v28 = v2;
  v27 = *(v0 + 336);
  v26 = *(v0 + 328);
  v25 = *(v0 + 376);
  *(v0 + 296) = v0;
  _objc_retain(v2);
  v24 = [v28 messageRepository];
  *(v0 + 304) = v24;
  _objc_release(v28);
  sub_1004417BC(v25 & 1, v26, v27, v28, (v0 + 16));

  v31 = String.uniqueIdentifier.getter();
  v32 = v3;
  *(v0 + 280) = v31;
  *(v0 + 288) = v3;

  sub_1003816C8();
  v4 = sub_1004413FC();
  (*(v29 + 16))(v1, v4, v30);

  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v32;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1002B77BC;
  *(v34 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10026EE84;
  *(v37 + 24) = v34;
  sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v38 = v5;

  *v38 = sub_10026434C;
  v38[1] = v35;

  v38[2] = sub_10026434C;
  v38[3] = v36;

  v38[4] = sub_10026EF2C;
  v38[5] = v37;
  sub_1002612B0();

  if (os_log_type_enabled(v39, v40))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v21 = sub_1002641E8(0);
    v22 = sub_1002641E8(1);
    v41 = buf;
    v42 = v21;
    v43 = v22;
    sub_10026423C(2, &v41);
    sub_10026423C(1, &v41);
    v44 = sub_10026434C;
    v45 = v35;
    sub_100264250(&v44, &v41, &v42, &v43);
    v44 = sub_10026434C;
    v45 = v36;
    sub_100264250(&v44, &v41, &v42, &v43);
    v44 = sub_10026EF2C;
    v45 = v37;
    sub_100264250(&v44, &v41, &v42, &v43);
    _os_log_impl(&_mh_execute_header, v39, v40, "#SiriMail SetMailMessageIsRead fetching message for ID %s", buf, 0xCu);
    sub_10026429C(v21);
    sub_10026429C(v22);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v19 = *(v23 + 368);
  v10 = *(v23 + 352);
  v15 = *(v23 + 344);
  v14 = *(v23 + 336);
  v13 = *(v23 + 328);
  v12 = *(v23 + 376);
  v9 = *(v23 + 360);
  _objc_release(v39);
  (*(v9 + 8))(v19, v10);

  v11 = String._bridgeToObjectiveC()();

  v18 = [v24 messageForSearchableItemIdentifier:v11];
  _objc_release(v11);
  *(v23 + 312) = v18;
  _objc_retain(v24);

  _objc_retain(v15);
  v6 = swift_allocObject();
  *(v6 + 16) = v24;
  *(v6 + 24) = v31;
  *(v6 + 32) = v32;
  *(v6 + 40) = v12;
  *(v6 + 48) = v13;
  *(v6 + 56) = v14;
  *(v6 + 64) = v15;
  *(v23 + 184) = sub_1004452CC;
  *(v23 + 192) = v6;
  *(v23 + 152) = _NSConcreteStackBlock;
  *(v23 + 160) = 1107296256;
  *(v23 + 164) = 0;
  *(v23 + 168) = sub_1002919E0;
  *(v23 + 176) = &unk_1006603A8;
  aBlock = _Block_copy((v23 + 152));

  [v18 addSuccessBlock:aBlock];
  _Block_release(aBlock);
  *(v23 + 232) = sub_1004448A0;
  *(v23 + 240) = 0;
  *(v23 + 200) = _NSConcreteStackBlock;
  *(v23 + 208) = 1107296256;
  *(v23 + 212) = 0;
  *(v23 + 216) = sub_100291B2C;
  *(v23 + 224) = &unk_1006603D0;
  v17 = _Block_copy((v23 + 200));
  [v18 addFailureBlock:?];
  _Block_release(v17);
  static IntentResult.result<>()();
  _objc_release(v18);

  _objc_release(v24);

  v7 = *(*(v23 + 296) + 8);

  return v7();
}

void sub_100442EBC(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  v75 = a8;
  v74 = a7;
  v73 = a6;
  v72 = a5;
  v71 = a4;
  v70 = a3;
  v77 = a2;
  v76 = a1;
  v68 = a5;
  v86 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0u;
  v110 = 0u;
  v109 = 0;
  v108 = 0;
  v69 = 0;
  v83 = type metadata accessor for Logger();
  v78 = v83;
  v79 = *(v83 - 8);
  v82 = v79;
  v80 = v79;
  v8 = __chkstk_darwin(v76);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v10;
  v115 = v8;
  v114 = v11;
  v112 = v12;
  v113 = v13;
  LOBYTE(v110) = v14;
  *(&v110 + 1) = v15;
  *&v111 = v16;
  *(&v111 + 1) = v17;
  v18 = sub_1004413FC();
  (*(v82 + 16))(v10, v18, v83);
  v88 = Logger.logObject.getter();
  v84 = v88;
  v87 = static os_log_type_t.info.getter();
  v85 = v87;
  sub_10025C9B0(&unk_1006D7720);
  v89 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v88, v87))
  {
    v19 = v69;
    v59 = static UnsafeMutablePointer.allocate(capacity:)();
    v55 = v59;
    v56 = sub_10025C9B0(&qword_1006D7290);
    v57 = 0;
    v60 = sub_1002641E8(0);
    v58 = v60;
    v61 = sub_1002641E8(v57);
    v93 = v59;
    v92 = v60;
    v91 = v61;
    v62 = 0;
    v63 = &v93;
    sub_10026423C(0, &v93);
    sub_10026423C(v62, v63);
    v90 = v89;
    v64 = v41;
    __chkstk_darwin(v41);
    v65 = &v41[-6];
    v41[-4] = v20;
    v41[-3] = &v92;
    v41[-2] = &v91;
    v66 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v67 = v19;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v84, v85, "#SiriMail SetMailMessageIsRead: got message for ID, marking read", v55, 2u);
      v53 = 0;
      sub_10026429C(v58);
      sub_10026429C(v61);
      UnsafeMutablePointer.deallocate()();

      v54 = v67;
    }
  }

  else
  {

    v54 = v69;
  }

  (*(v80 + 8))(v81, v78);
  sub_1004456AC();
  v41[1] = sub_10025C9B0(&unk_1006D7220);
  v42 = _allocateUninitializedArray<A>(_:)();
  v41[0] = v21;
  v22 = v76;
  v23 = v42;
  *v41[0] = v76;
  sub_1002612B0();
  v43 = v23;
  v24 = [objc_opt_self() setRead];
  v52 = sub_10044378C(v43, 6, 2, v24);
  v109 = v52;
  v51 = [v77 performMessageChangeActionReturningUndoAction:?];
  v108 = v51;

  v25 = v75;
  v45 = 64;
  v46 = 7;
  v26 = swift_allocObject();
  v27 = v68;
  v28 = v71;
  v29 = v73;
  v30 = v74;
  v31 = v75;
  *(v26 + 16) = v70;
  *(v26 + 24) = v28;
  v47 = v27 & 1;
  *(v26 + 32) = v27 & 1;
  *(v26 + 40) = v29;
  *(v26 + 48) = v30;
  *(v26 + 56) = v31;
  v106 = sub_100445710;
  v107 = v26;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v102 = 1107296256;
  v49 = 0;
  v103 = 0;
  v104 = sub_1002919E0;
  v105 = &unk_100660570;
  v44 = _Block_copy(&aBlock);

  [v51 addSuccessBlock:v44];
  _Block_release(v44);

  v32 = v75;
  v33 = swift_allocObject();
  v34 = v71;
  v35 = v47;
  v36 = v73;
  v37 = v74;
  v38 = v75;
  v39 = v48;
  v40 = v49;
  *(v33 + 16) = v70;
  *(v33 + 24) = v34;
  *(v33 + 32) = v35;
  *(v33 + 40) = v36;
  *(v33 + 48) = v37;
  *(v33 + 56) = v38;
  v99 = sub_100445794;
  v100 = v33;
  v94 = _NSConcreteStackBlock;
  v95 = v39;
  v96 = v40;
  v97 = sub_100291B2C;
  v98 = &unk_1006605C0;
  v50 = _Block_copy(&v94);

  [v51 addFailureBlock:v50];
  _Block_release(v50);
}

uint64_t sub_1004437E4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a1;
  v49 = a2;
  v50 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v52 = sub_1002B77BC;
  v56 = sub_10026EE84;
  v58 = sub_10026434C;
  v60 = sub_10026434C;
  v63 = sub_10026EF2C;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0u;
  v75 = 0u;
  v38 = 0;
  v48 = type metadata accessor for Logger();
  v46 = *(v48 - 8);
  v47 = v48 - 8;
  v44 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v30 - v44;
  v45 = v30 - v44;
  v78 = __chkstk_darwin(v43);
  v76 = v8;
  v77 = v9;
  LOBYTE(v74) = v10;
  *(&v74 + 1) = v11;
  *&v75 = v12;
  *(&v75 + 1) = v13;
  v14 = sub_1004413FC();
  (*(v46 + 16))(v7, v14, v48);

  v53 = 32;
  v54 = 7;
  v15 = swift_allocObject();
  v16 = v50;
  v55 = v15;
  *(v15 + 16) = v49;
  *(v15 + 24) = v16;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.info.getter();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v55;
  v57 = v17;
  *(v17 + 16) = v52;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v57;
  v64 = v19;
  *(v19 + 16) = v56;
  *(v19 + 24) = v20;
  v66 = sub_10025C9B0(&unk_1006D7720);
  v62 = _allocateUninitializedArray<A>(_:)();
  v65 = v21;

  v22 = v59;
  v23 = v65;
  *v65 = v58;
  v23[1] = v22;

  v24 = v61;
  v25 = v65;
  v65[2] = v60;
  v25[3] = v24;

  v26 = v64;
  v27 = v65;
  v65[4] = v63;
  v27[5] = v26;
  sub_1002612B0();

  if (os_log_type_enabled(v67, v68))
  {
    v28 = v38;
    v31 = static UnsafeMutablePointer.allocate(capacity:)();
    v30[2] = sub_10025C9B0(&qword_1006D7290);
    v32 = sub_1002641E8(0);
    v33 = sub_1002641E8(1);
    v34 = &v73;
    v73 = v31;
    v35 = &v72;
    v72 = v32;
    v36 = &v71;
    v71 = v33;
    sub_10026423C(2, &v73);
    sub_10026423C(1, v34);
    v69 = v58;
    v70 = v59;
    sub_100264250(&v69, v34, v35, v36);
    v37 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_100264250(&v69, &v73, &v72, &v71);
      v30[0] = 0;
      v69 = v63;
      v70 = v64;
      sub_100264250(&v69, &v73, &v72, &v71);
      _os_log_impl(&_mh_execute_header, v67, v68, "#SiriMail SetMailMessageIsRead: marked message %s as read", v31, 0xCu);
      sub_10026429C(v32);
      sub_10026429C(v33);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v67);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_100443E84(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a1;
  v59 = a2;
  v60 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v62 = sub_1002B77BC;
  v64 = sub_10026EE84;
  v69 = sub_100441398;
  v73 = sub_10026EE84;
  v75 = sub_10026434C;
  v77 = sub_10026434C;
  v79 = sub_10026EF2C;
  v81 = sub_10026434C;
  v83 = sub_10026434C;
  v86 = sub_10026EF2C;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0u;
  v98 = 0u;
  v49 = 0;
  v58 = type metadata accessor for Logger();
  v56 = *(v58 - 8);
  v57 = v58 - 8;
  v54 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = v40 - v54;
  v55 = v40 - v54;
  v101 = __chkstk_darwin(v61);
  v99 = v8;
  v100 = v9;
  LOBYTE(v97) = v10;
  *(&v97 + 1) = v11;
  *&v98 = v12;
  *(&v98 + 1) = v13;
  v14 = sub_1004413FC();
  (*(v56 + 16))(v7, v14, v58);

  v70 = 32;
  v71 = 7;
  v15 = swift_allocObject();
  v16 = v60;
  v63 = v15;
  *(v15 + 16) = v59;
  *(v15 + 24) = v16;
  swift_errorRetain();
  v72 = swift_allocObject();
  *(v72 + 16) = v61;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();
  v67 = 17;
  v76 = swift_allocObject();
  v66 = 32;
  *(v76 + 16) = 32;
  v78 = swift_allocObject();
  v68 = 8;
  *(v78 + 16) = 8;
  v17 = swift_allocObject();
  v18 = v63;
  v65 = v17;
  *(v17 + 16) = v62;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v65;
  v80 = v19;
  *(v19 + 16) = v64;
  *(v19 + 24) = v20;
  v82 = swift_allocObject();
  *(v82 + 16) = v66;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v21 = swift_allocObject();
  v22 = v72;
  v74 = v21;
  *(v21 + 16) = v69;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  v24 = v74;
  v87 = v23;
  *(v23 + 16) = v73;
  *(v23 + 24) = v24;
  v89 = sub_10025C9B0(&unk_1006D7720);
  v85 = _allocateUninitializedArray<A>(_:)();
  v88 = v25;

  v26 = v76;
  v27 = v88;
  *v88 = v75;
  v27[1] = v26;

  v28 = v78;
  v29 = v88;
  v88[2] = v77;
  v29[3] = v28;

  v30 = v80;
  v31 = v88;
  v88[4] = v79;
  v31[5] = v30;

  v32 = v82;
  v33 = v88;
  v88[6] = v81;
  v33[7] = v32;

  v34 = v84;
  v35 = v88;
  v88[8] = v83;
  v35[9] = v34;

  v36 = v87;
  v37 = v88;
  v88[10] = v86;
  v37[11] = v36;
  sub_1002612B0();

  if (os_log_type_enabled(v90, v91))
  {
    v38 = v49;
    v41 = static UnsafeMutablePointer.allocate(capacity:)();
    v40[5] = sub_10025C9B0(&qword_1006D7290);
    v42 = sub_1002641E8(0);
    v43 = sub_1002641E8(2);
    v45 = &v96;
    v96 = v41;
    v46 = &v95;
    v95 = v42;
    v47 = &v94;
    v94 = v43;
    v44 = 2;
    sub_10026423C(2, &v96);
    sub_10026423C(v44, v45);
    v92 = v75;
    v93 = v76;
    sub_100264250(&v92, v45, v46, v47);
    v48 = v38;
    if (v38)
    {

      __break(1u);
    }

    else
    {
      v92 = v77;
      v93 = v78;
      sub_100264250(&v92, &v96, &v95, &v94);
      v40[3] = 0;
      v92 = v79;
      v93 = v80;
      sub_100264250(&v92, &v96, &v95, &v94);
      v40[2] = 0;
      v92 = v81;
      v93 = v82;
      sub_100264250(&v92, &v96, &v95, &v94);
      v40[1] = 0;
      v92 = v83;
      v93 = v84;
      sub_100264250(&v92, &v96, &v95, &v94);
      v40[0] = 0;
      v92 = v86;
      v93 = v87;
      sub_100264250(&v92, &v96, &v95, &v94);
      _os_log_impl(&_mh_execute_header, v90, v91, "#SiriMail SetMailMessageIsRead: failed to mark message %s as read %s", v41, 0x16u);
      sub_10026429C(v42);
      sub_10026429C(v43);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v90);
  return (*(v56 + 8))(v55, v58);
}

uint64_t sub_1004448A0(uint64_t a1)
{
  v30 = a1;
  v32 = sub_100441398;
  v36 = sub_10026EE84;
  v38 = sub_10026434C;
  v40 = sub_10026434C;
  v43 = sub_10026EF2C;
  v54 = 0;
  v24 = 0;
  v29 = type metadata accessor for Logger();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v25 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v16 - v25;
  v26 = v16 - v25;
  v54 = __chkstk_darwin(v30);
  v2 = sub_1004413FC();
  (*(v27 + 16))(v1, v2, v29);
  swift_errorRetain();
  v34 = 7;
  v35 = swift_allocObject();
  *(v35 + 16) = v30;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  v31 = 17;
  v39 = swift_allocObject();
  *(v39 + 16) = 32;
  v41 = swift_allocObject();
  *(v41 + 16) = 8;
  v33 = 32;
  v3 = swift_allocObject();
  v4 = v35;
  v37 = v3;
  *(v3 + 16) = v32;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v37;
  v44 = v5;
  *(v5 + 16) = v36;
  *(v5 + 24) = v6;
  v46 = sub_10025C9B0(&unk_1006D7720);
  v42 = _allocateUninitializedArray<A>(_:)();
  v45 = v7;

  v8 = v39;
  v9 = v45;
  *v45 = v38;
  v9[1] = v8;

  v10 = v41;
  v11 = v45;
  v45[2] = v40;
  v11[3] = v10;

  v12 = v44;
  v13 = v45;
  v45[4] = v43;
  v13[5] = v12;
  sub_1002612B0();

  if (os_log_type_enabled(v47, v48))
  {
    v14 = v24;
    v17 = static UnsafeMutablePointer.allocate(capacity:)();
    v16[3] = sub_10025C9B0(&qword_1006D7290);
    v18 = sub_1002641E8(0);
    v19 = sub_1002641E8(1);
    v20 = &v53;
    v53 = v17;
    v21 = &v52;
    v52 = v18;
    v22 = &v51;
    v51 = v19;
    sub_10026423C(2, &v53);
    sub_10026423C(1, v20);
    v49 = v38;
    v50 = v39;
    sub_100264250(&v49, v20, v21, v22);
    v23 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v49 = v40;
      v50 = v41;
      sub_100264250(&v49, &v53, &v52, &v51);
      v16[1] = 0;
      v49 = v43;
      v50 = v44;
      sub_100264250(&v49, &v53, &v52, &v51);
      _os_log_impl(&_mh_execute_header, v47, v48, "#SiriMail SetMailMessageIsRead: failed to get EMMessage from EMMessageRepository: %s", v17, 0xCu);
      sub_10026429C(v18);
      sub_10026429C(v19);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v47);
  return (*(v27 + 8))(v26, v29);
}

void (*sub_100444F04(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_100441900(v3, *v1 & 1, *(v1 + 8));
  return sub_10034C098;
}

void (*sub_100444FE8(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x28uLL);
  *a1 = v3;
  v3[4] = sub_100441B28(v3, *v1 & 1, *(v1 + 8), *(v1 + 16));
  return sub_10034C098;
}

uint64_t sub_100445084(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v9 = *(v1 + 3);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100442400(a1, v6 & 1, v7, v8, v9);
}

uint64_t sub_10044516C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100441C90();
  *a1 = result & 1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t sub_1004451D8(uint64_t a1)
{

  _objc_release(*(a1 + 24));
  return a1;
}

id sub_100445224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10025C9B0(&unk_1006D7220);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v5 initWithMessageListItems:? origin:? actor:? flagChange:?];
  _objc_release(a4);
  _objc_release(isa);

  return v8;
}

uint64_t sub_1004452F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100445354(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1004453B8()
{
  v2 = qword_1006DC588;
  if (!qword_1006DC588)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10044544C()
{
  v2 = qword_1006DC590;
  if (!qword_1006DC590)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC590);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004454F8()
{
  v2 = qword_1006DC5A0;
  if (!qword_1006DC5A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10044558C()
{
  v2 = qword_1006DC5A8;
  if (!qword_1006DC5A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004456AC()
{
  v2 = qword_1006DC5B0;
  if (!qword_1006DC5B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC5B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100445730(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1004457B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_100445818()
{
  v17 = "Email messages to remind about";
  v31 = "Date to remind on";
  v53 = &v72;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v0 = sub_10025C9B0(&qword_1006DC4D0);
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v50 = &v6 - v6;
  v22 = 0;
  v1 = type metadata accessor for InputConnectionBehavior();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v52 = &v6 - v7;
  v2 = sub_10025C9B0(&unk_1006D7080);
  v8 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v26 = &v6 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v8);
  v51 = &v6 - v9;
  v10 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v49 = &v6 - v10;
  v11 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v37 = &v6 - v11;
  v12 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v36 = &v6 - v12;
  v13 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v34 = &v6 - v13;
  v39 = type metadata accessor for LocalizedStringResource();
  v20 = *(v39 - 8);
  v21 = v39 - 8;
  v14 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v39);
  v48 = &v6 - v14;
  sub_10025C9B0(&unk_1006D7090);
  v15 = v71;
  memset(v71, 0, sizeof(v71));
  sub_10000B074();
  sub_1003DC7F0();
  v56 = AppDependency.__allocating_init(key:manager:)();

  v72 = v56;
  sub_10025C9B0(&unk_1006D70A0);
  v42 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v29 = "AppIntents";
  v30 = 10;
  v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v68 = v17;
  v18 = 30;
  v69 = 30;
  v33 = 2;
  v70 = 2;
  v38 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_ENTITY_DESCRIPTION", 0x1CuLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v65[1] = v17;
  v65[2] = v18;
  v66 = v33;
  v67 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41 = *(v20 + 56);
  v40 = v20 + 56;
  v41(v49, v38, v42, v39);
  v25 = v65;
  v65[0] = 0;
  v43 = type metadata accessor for IntentDialog();
  v4 = *(v43 - 8);
  v45 = *(v4 + 56);
  v44 = v4 + 56;
  v45(v51, v42);
  (v45)(v26, v42, v42, v43);
  v24 = sub_10025C9B0(&unk_1006D6FF0);
  v23 = sub_10027D124();
  v27 = sub_10027EAAC();
  sub_1003BD8F8(v52);
  v54 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v73 = v54;
  sub_10025C9B0(&qword_1006DC4D8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date", 4uLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v28 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v61 = v31;
  v32 = 17;
  v62 = 17;
  v63 = v33;
  v64 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_DATE_DESCRIPTION", 0x1AuLL, v42 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v35 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v29, v30, v42 & 1);
  sub_100015CC0();
  sub_10025D410(v37);
  v57 = v31;
  v58 = v32;
  v59 = v33;
  v60 = v38 & 1 & v42;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v41(v49, v38, v42, v39);
  (v45)(v51, v42, v42, v43);
  v46 = sub_10025C9B0(&qword_1006D8740);
  v47 = sub_100341F40();
  sub_1004389E4(v50);
  sub_1003BD8F8(v52);
  v55 = IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)();

  v74 = v55;
  sub_1002FE5E4();
  return v56;
}

uint64_t sub_100446308()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_100446374()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1004463F8()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_10044645C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v8[0] = a2;
  v8[1] = a3;
  v11 = a4;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v9 = (*(*(sub_10025C9B0(&qword_1006D8740) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v8 - v9;
  v16 = __chkstk_darwin(v12);
  v13 = v5;
  v14 = v6;
  v15 = a4;

  sub_1002F29E4(v12, v10);
  IntentParameter.wrappedValue.setter();

  return sub_1002A70C0(v12);
}

uint64_t sub_100446554@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Mark one or more email messages to be reminded about";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("REMIND_ME_DESCRIPTION", 0x15uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 52;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_100446894@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Mark one or more email messages to be reminded about";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Set Read Later", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 52;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100446A78@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_10025C9B0(&qword_1006DC5C0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v27 = &v8 - v8;
  v20 = sub_10025C9B0(&qword_1006DC5C8);
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v9 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v22 = &v8 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v9);
  v17 = &v8 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v10);
  v21 = &v8 - v11;
  v26 = sub_10033F294();
  v25 = &unk_1006608D0;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remind me to read ", 0x12uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC5D8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" on ", 4uLL, v23 & 1);
  v14 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v15 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006DC5E0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v23 & 1);
  v16 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  (*(v18 + 16))(v17, v21, v20);
  (*(v18 + 32))(v22, v17, v20);
  (*(v18 + 8))(v21, v20);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100446E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v4[51] = a3;
  v4[50] = a2;
  v4[49] = a1;
  v4[44] = v4;
  v4[22] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[45] = 0;
  v4[46] = 0;
  v4[38] = 0;
  v4[39] = 0;
  v4[40] = 0;
  v4[41] = 0;
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v4[53] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[54] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[55] = swift_task_alloc();
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v4[61] = swift_task_alloc();
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v4[62] = v6;
  v4[63] = *(v6 - 8);
  v4[64] = swift_task_alloc();
  v7 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4[65] = v7;
  v4[66] = *(v7 - 8);
  v4[67] = swift_task_alloc();
  v8 = type metadata accessor for IntentDialog();
  v4[68] = v8;
  v4[69] = *(v8 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Component();
  v4[72] = v9;
  v4[73] = *(v9 - 8);
  v4[74] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v4[75] = v10;
  v4[76] = *(v10 - 8);
  v4[77] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D8740);
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[81] = v11;
  v4[82] = *(v11 - 8);
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();
  v4[22] = a2;
  v4[23] = a3;
  v4[24] = a4;
  type metadata accessor for MainActor();
  v4[86] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[87] = v17;
  v4[88] = v12;

  return _swift_task_switch(sub_1004473CC, v17);
}

uint64_t sub_1004473CC()
{
  *(v0 + 352) = v0;
  v9 = sub_1003D6B10();
  sub_10035277C();
  v4 = v8[52];
  v3 = v8[51];
  v5 = v8[50];
  _objc_release(v9);
  v8[25] = v5;
  v8[26] = v3;
  v8[27] = v4;
  v7 = sub_100446308();
  v8[89] = v7;
  v6 = sub_1003D6B10();
  v8[90] = v6;
  v1 = swift_task_alloc();
  v8[91] = v1;
  v8[92] = sub_100449878();
  *v1 = v8[44];
  v1[1] = sub_100447708;

  return sub_10045F520(v7, v6);
}

uint64_t sub_100447708(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[44] = *v2;
  v7[93] = a1;
  v7[94] = v1;

  if (v1)
  {
    v3 = *(v6 + 680);
    v4 = sub_100449688;
  }

  else
  {

    v3 = *(v6 + 680);
    v4 = sub_1004478AC;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1004478AC()
{
  v1 = v0[94];
  v108 = v0[93];
  v0[44] = v0;
  v0[45] = v108;
  v109 = sub_1003D6B10();
  sub_100352C0C(v108);
  v0[95] = v1;
  if (v1)
  {
    _objc_release(v109);

    v13 = *(*(v107 + 352) + 8);

    return v13();
  }

  else
  {
    v98 = *(v107 + 744);
    v105 = *(v107 + 648);
    v104 = *(v107 + 640);
    v100 = *(v107 + 416);
    v99 = *(v107 + 408);
    v101 = *(v107 + 400);
    v103 = *(v107 + 656);
    _objc_release(v109);
    sub_1002C058C();

    v95 = sub_1003D6B10();
    v96 = sub_100353058();
    _objc_release(v95);
    *(v107 + 224) = v101;
    *(v107 + 232) = v99;
    *(v107 + 240) = v100;
    v97 = sub_10028E57C();
    *(v107 + 248) = v101;
    *(v107 + 256) = v99;
    *(v107 + 264) = v100;
    v2 = sub_10028E5B4();
    v102 = sub_10027D364(v98, v96, v97, v2);
    *(v107 + 768) = v102;
    *(v107 + 368) = v102;
    sub_1004463F8();
    v106 = *(v103 + 48);
    if (v106(v104, 1, v105) == 1)
    {
      v87 = *(v107 + 672);
      v94 = *(v107 + 648);
      v93 = *(v107 + 632);
      v91 = *(v107 + 616);
      v92 = *(v107 + 600);
      v88 = *(v107 + 592);
      v89 = *(v107 + 576);
      v86 = *(v107 + 656);
      v90 = *(v107 + 608);
      v85 = *(v107 + 584);
      static Calendar.current.getter();
      (*(v85 + 104))(v88, enum case for Calendar.Component.hour(_:), v89);
      static Date.now.getter();
      variable initialization expression of ConversationNavigationBarItemsManager.showSupplementaryButtonItem();
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*(v86 + 8))(v87, v94);
      (*(v85 + 8))(v88, v89);
      (*(v90 + 8))(v91, v92);
      if (v106(v93, 1, v94) == 1)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v83 = *(v107 + 648);
      v84 = *(v107 + 640);
      (*(*(v107 + 656) + 32))(*(v107 + 680), *(v107 + 632));
      if (v106(v84, 1, v83) != 1)
      {
        sub_1002A70C0(*(v107 + 640));
      }
    }

    else
    {
      (*(*(v107 + 656) + 32))(*(v107 + 680), *(v107 + 640), *(v107 + 648));
    }

    v79 = *(v107 + 680);
    v82 = *(v107 + 648);
    v81 = *(v107 + 624);
    v80 = [v102 state];
    sub_1003CE220(v79);
    _objc_release(v80);
    sub_1004463F8();
    if (v106(v81, 1, v82) == 1)
    {
      v20 = *(v107 + 568);
      v21 = *(v107 + 560);
      v22 = *(v107 + 544);
      v18 = *(v107 + 424);
      v19 = *(v107 + 552);
      sub_1002A70C0(*(v107 + 624));
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you.", 0x15uLL, 0);
      String.LocalizationValue.init(stringLiteral:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v18);
      v14 = "Dialog to show and say when we are reminding the user about their message.";
      v15 = 74;
      LOWORD(v16) = 2;
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      (*(v19 + 32))(v20, v21, v22);
    }

    else
    {
      v76 = *(v107 + 616);
      v75 = *(v107 + 600);
      v70 = *(v107 + 536);
      v71 = *(v107 + 520);
      v66 = *(v107 + 512);
      v67 = *(v107 + 496);
      v74 = *(v107 + 608);
      v69 = *(v107 + 528);
      v65 = *(v107 + 504);
      (*(*(v107 + 656) + 32))(*(v107 + 664), *(v107 + 624), *(v107 + 648));
      static Date.FormatStyle.DateStyle.omitted.getter();
      static Date.FormatStyle.TimeStyle.shortened.getter();
      v73._countAndFlagsBits = Date.formatted(date:time:)();
      v73._object = v4;
      v68 = *(v65 + 8);
      v68(v66, v67);
      v72 = *(v69 + 8);
      v72(v70, v71);
      *(v107 + 304) = v73;
      static Calendar.current.getter();
      v78 = Calendar.isDateInToday(_:)();
      v77 = *(v74 + 8);
      v77(v76, v75);
      if (v78)
      {
        v62 = *(v107 + 568);
        v63 = *(v107 + 560);
        v64 = *(v107 + 544);
        v58 = *(v107 + 480);
        v56 = *(v107 + 472);
        v59 = *(v107 + 464);
        v57 = *(v107 + 448);
        v60 = *(v107 + 424);
        v61 = *(v107 + 552);
        v55 = *(v107 + 456);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you today at ", 0x1EuLL, 0);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);

        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v73);
        v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);

        (*(v55 + 16))(v56, v58, v57);
        (*(v55 + 32))(v59, v56, v57);
        (*(v55 + 8))(v58, v57);
        String.LocalizationValue.init(stringInterpolation:)();
        String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
        sub_100015CC0();
        sub_10025D410(v60);
        v14 = "Dialog to show and say when we are reminding the user about their message at a later time today.";
        v15 = 96;
        LOWORD(v16) = 2;
        LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        (*(v61 + 32))(v62, v63, v64);
      }

      else
      {
        v53 = *(v107 + 616);
        v52 = *(v107 + 600);
        static Calendar.current.getter();
        v54 = Calendar.isDateInTomorrow(_:)();
        v77(v53, v52);
        if (v54)
        {
          v49 = *(v107 + 568);
          v50 = *(v107 + 560);
          v51 = *(v107 + 544);
          v45 = *(v107 + 480);
          v43 = *(v107 + 472);
          v46 = *(v107 + 464);
          v44 = *(v107 + 448);
          v47 = *(v107 + 424);
          v48 = *(v107 + 552);
          v42 = *(v107 + 456);
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you tomorrow at ", 0x21uLL, 0);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);

          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v73);
          v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);

          (*(v42 + 16))(v43, v45, v44);
          (*(v42 + 32))(v46, v43, v44);
          (*(v42 + 8))(v45, v44);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v47);
          v14 = "Dialog to show and say when we are reminding the user about their message some time tomorrow.";
          v15 = 93;
          LOWORD(v16) = 2;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          (*(v48 + 32))(v49, v50, v51);
        }

        else
        {
          v38 = *(v107 + 568);
          v39 = *(v107 + 560);
          v40 = *(v107 + 544);
          v28 = *(v107 + 536);
          v29 = *(v107 + 520);
          v26 = *(v107 + 512);
          v27 = *(v107 + 496);
          v34 = *(v107 + 480);
          v32 = *(v107 + 472);
          v35 = *(v107 + 464);
          v33 = *(v107 + 448);
          v36 = *(v107 + 424);
          v37 = *(v107 + 552);
          v31 = *(v107 + 456);
          static Date.FormatStyle.DateStyle.abbreviated.getter();
          static Date.FormatStyle.TimeStyle.shortened.getter();
          v30 = Date.formatted(date:time:)();
          v41 = v9;
          v68(v26, v27);
          v72(v28, v29);
          *(v107 + 320) = v30;
          *(v107 + 328) = v41;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, Iʼll remind you on ", 0x18uLL, 0);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

          v11._countAndFlagsBits = v30;
          v11._object = v41;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
          v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".", 1uLL, 1);
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);

          (*(v31 + 16))(v32, v34, v33);
          (*(v31 + 32))(v35, v32, v33);
          (*(v31 + 8))(v34, v33);
          String.LocalizationValue.init(stringInterpolation:)();
          String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
          sub_100015CC0();
          sub_10025D410(v36);
          v14 = "Dialog to show and say when we are reminding the user about their message on a later date.";
          v15 = 90;
          LOWORD(v16) = 2;
          LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
          IntentDialog.init(_:)();
          (*(v37 + 32))(v38, v39, v40);
        }
      }

      v24 = *(v107 + 664);
      v25 = *(v107 + 648);
      v23 = *(v107 + 656);

      (*(v23 + 8))(v24, v25);
    }

    _objc_retain(v102);
    sub_1003D6B10();
    [v102 setDelegate:{v14, v15, v16}];
    swift_unknownObjectRelease();
    _objc_release(v102);
    *(v107 + 16) = *(v107 + 352);
    *(v107 + 56) = v107 + 336;
    *(v107 + 24) = sub_100448DE4;
    v17 = swift_continuation_init();
    *(v107 + 136) = sub_10025C9B0(&unk_1006D7CE0);
    *(v107 + 112) = v17;
    *(v107 + 80) = _NSConcreteStackBlock;
    *(v107 + 88) = 1107296256;
    *(v107 + 92) = 0;
    *(v107 + 96) = sub_10027D41C;
    *(v107 + 104) = &unk_100660840;
    [v102 performInteractionWithCompletion:?];

    return _swift_continuation_await(v107 + 16);
  }
}

uint64_t sub_100448DE4()
{
  v3 = *v0;
  *(*v0 + 352) = *v0;
  v1 = *(v3 + 696);

  return _swift_task_switch(sub_100448EFC, v1);
}

uint64_t sub_100448EFC()
{
  *(v0 + 352) = v0;
  _objc_release(*(v0 + 336));
  v25 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidSetReminder");
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  if (*(v0 + 168))
  {
    object = v24[10]._object;
    v18 = sub_10027EC3C(&v24[9]._countAndFlagsBits, object);
    v19 = *(object - 8);
    v21 = swift_task_alloc();
    (*(v19 + 16))(v21, v18, object);
    v22 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v19 + 8))(v21, object);

    sub_1000160F4(&v24[9]);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v1 = v24[47]._object;
  sub_10025C9B0(&unk_1006DB9F0);
  _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  v24[17] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailMessageIDs", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v24[23]._object = sub_100446308();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  result = Sequence.compactMap<A>(_:)();
  v17 = result;
  if (!v1)
  {
    countAndFlagsBits = v24[48]._countAndFlagsBits;
    v13 = v24[42]._object;
    v11 = v24[40]._object;
    v14 = v24[35]._object;
    v15 = v24[35]._countAndFlagsBits;
    v9 = v24[34]._countAndFlagsBits;
    v6 = v24[41]._countAndFlagsBits;
    v8 = v24[34]._object;
    sub_100264880();
    v16[8] = sub_10025C9B0(&unk_1006D69B0);
    v16[5] = v17;
    v24[18] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("date", 4uLL, 1);
    _convertToAnyHashable<A>(_:)();
    v16[17] = v11;
    v4 = sub_10026AC9C(v16 + 14);
    (*(v6 + 16))(v4, v13, v11);
    sub_1002612B0();
    sub_100268744();
    sub_100268744();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v25 postNotificationName:@"AppIntentDidSetReminder" object:v23 userInfo:isa];
    _objc_release(isa);
    swift_unknownObjectRelease();
    _objc_release(@"AppIntentDidSetReminder");
    _objc_release(v25);
    v24[24]._countAndFlagsBits = sub_100446308();
    v8[2](v15, v14, v9);
    sub_10027D124();
    static IntentResult.result<A>(value:dialog:)();
    v10 = v8[1];
    (v10)(v15, v9);
    sub_100264880();
    (v10)(v14, v9);
    (*(v6 + 8))(v13, v11);
    _objc_release(countAndFlagsBits);

    v5 = *(v24[22]._countAndFlagsBits + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100449688()
{
  v1 = *(v0 + 720);
  *(v0 + 352) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 352) + 8);

  return v2();
}

unint64_t sub_100449878()
{
  v2 = qword_1006DC5E8;
  if (!qword_1006DC5E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC5E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100449934@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v21 = 0;
  v2 = sub_10025C9B0(&qword_1006D7DF0);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v17 = &v9 - v14;
  v15 = *v3;
  v16 = v3[1];
  v21 = v3;

  MailMessageEntityID.init(with:)();
  v18 = type metadata accessor for MailMessageEntityID();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    result = sub_1002C1698(v17);
    v5 = v12;
    *v12 = 0;
    v5[1] = 0;
  }

  else
  {
    v10 = MailMessageEntityID.mailMessageID.getter();
    v11 = v6;
    (*(v19 + 8))(v17, v18);
    result = v10;
    v7 = v12;
    v8 = v11;
    *v12 = v10;
    v7[1] = v8;
  }

  return result;
}

uint64_t sub_100449AC4()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

uint64_t sub_100449C98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100446E20(a1, v6, v7, v8);
}

uint64_t sub_100449D70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100445818();
  *a1 = result;
  a1[1] = v2;
  a1[2] = v3;
  return result;
}

unint64_t sub_100449E4C()
{
  v2 = qword_1006DC600;
  if (!qword_1006DC600)
  {
    sub_10025CAA4(&qword_1006DC608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100449ED4(uint64_t a1)
{
  result = sub_10033F294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449F18()
{
  v2 = qword_1006DC618;
  if (!qword_1006DC618)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC618);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100449FAC()
{
  v2 = qword_1006DC620;
  if (!qword_1006DC620)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC620);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10044A094@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent);
  swift_beginAccess();
  sub_10044A0F8(v3, a1);
  return swift_endAccess();
}

char *sub_10044A0F8(char *a1, char *a2)
{
  v4 = *a1;

  *a2 = v4;
  v5 = *(a1 + 1);

  *(a2 + 1) = v5;
  v6 = *(sub_10025C9B0(&qword_1006DC638) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 16))(&a2[v6], &a1[v6]);
  return a2;
}

uint64_t sub_10044A1C4(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(type metadata accessor for SiriMailComposeViewRepresentable() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_10044A0F8(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent);
  v6 = &v8;
  swift_beginAccess();
  sub_10044A29C(v4, v5);
  swift_endAccess();
  return sub_10044A360(v7);
}

char *sub_10044A29C(char *a1, char *a2)
{
  *a2 = *a1;

  *(a2 + 1) = *(a1 + 1);

  v4 = *(sub_10025C9B0(&qword_1006DC638) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 40))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t sub_10044A360(uint64_t a1)
{

  v3 = *(sub_10025C9B0(&qword_1006DC638) + 32);
  v1 = type metadata accessor for _SiriMailMessage();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_10044A528()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10044A670(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_10044A778()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_10044A7EC(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_10044A8F4@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v7 = 0;
  v2 = type metadata accessor for SiriMailComposeViewRepresentable();
  v4 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v6 = &v4 - v4;
  v7 = v1;
  sub_10044A094(&v4 - v4);
  sub_100452254(v5);
  return sub_10044A360(v6);
}

uint64_t sub_10044A994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void sub_10044A9FC(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  _objc_release(a1);
}

void (*sub_10044AA94(void *a1))(id **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_controller;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10044AB40;
}

void sub_10044AB40(id **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4[3];
    _objc_retain(v2);
    swift_unknownObjectWeakAssign();
    _objc_release(v2);
    sub_10026A58C(v4 + 3);
  }

  else
  {
    v3 = v4[3];
    swift_unknownObjectWeakAssign();
    _objc_release(v3);
  }

  swift_endAccess();
  free(v4);
}

id sub_10044AC48(char *a1)
{
  v21 = a1;
  v29 = 0;
  type metadata accessor for SiriMailComposeViewRepresentable();
  v2 = __chkstk_darwin(v21);
  v23 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  v35 = v1;
  v4 = &v1[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_bodyWithoutSignature];
  *v4 = v5;
  *(v4 + 1) = v5;
  v6 = &v35[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_signature];
  *v6 = v5;
  *(v6 + 1) = v5;
  swift_unknownObjectWeakInit();
  v22 = v35;
  sub_10044A0F8(v21, v23);
  sub_10044AF44(v23, &v22[OBJC_IVAR____TtC10MobileMail26SiriMailComposeCoordinator_parent]);
  v24 = v35;
  v7 = type metadata accessor for SiriMailComposeCoordinator();
  v33.receiver = v24;
  v33.super_class = v7;
  v26 = objc_msgSendSuper2(&v33, "init");
  v25 = v26;
  v8 = v26;
  v35 = v26;
  v27 = [objc_opt_self() defaultCenter];
  v9 = v26;
  v28 = "onHostAction:";
  v30 = static NSNotificationName.onReceiveActionFromHost.getter();
  v31[0] = v29;
  v31[1] = v29;
  v31[2] = v29;
  v32 = v29;
  if (v29)
  {
    v15 = v32;
    v18 = v31;
    sub_10027EC3C(v31, v32);
    v13 = *(v15 - 8);
    v14 = v13;
    v17 = v12;
    __chkstk_darwin(v12);
    v16 = v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))();
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v16, v15);
    sub_1000160F4(v18);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v12[1] = v20;
  [v27 addObserver:v25 selector:v28 name:v30 object:?];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10044A360(v21);

  return v25;
}

char *sub_10044AF44(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  v4 = *(sub_10025C9B0(&qword_1006DC638) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  return a2;
}

uint64_t type metadata accessor for SiriMailComposeCoordinator()
{
  v1 = qword_1006DC6F8;
  if (!qword_1006DC6F8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10044B060(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C000;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290);
    v36 = sub_1002641E8(0);
    v37 = sub_1002641E8(1);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setSubject %s", v35, 0xCu);
      sub_10026429C(v36);
      sub_10026429C(v37);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044B7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  type metadata accessor for _SiriMailMessage();
  v6[9] = swift_task_alloc();
  v6[10] = sub_10025C9B0(&qword_1006DC638);
  v6[11] = swift_task_alloc();
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044B964, v7);
}

uint64_t sub_10044B964()
{
  v1 = *(v0 + 88);
  v4 = v1;
  *(v0 + 32) = v0;
  sub_10044A8F4(v1);

  Binding.wrappedValue.getter();
  _SiriMailMessage.subject.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_10044BB04(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C018;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290);
    v36 = sub_1002641E8(0);
    v37 = sub_1002641E8(1);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setBody %s", v35, 0xCu);
      sub_10026429C(v36);
      sub_10026429C(v37);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[8] = v6;
  v6[9] = 0;
  v6[2] = 0;
  v6[3] = 0;
  type metadata accessor for _SiriMailMessage();
  v6[13] = swift_task_alloc();
  v6[14] = sub_10025C9B0(&qword_1006DC638);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for CharacterSet();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[9] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044C450, v8);
}

uint64_t sub_10044C450()
{
  v11 = v0[18];
  v4 = v0[17];
  v10 = v0[16];
  v12 = v0[15];
  v8 = v0[12];
  v7 = v0[11];
  v0[8] = v0;
  v0[4] = v7;
  v0[5] = v8;
  static CharacterSet.whitespaces.getter();
  sub_1002686CC();
  v5 = StringProtocol.trimmingCharacters(in:)();
  v6 = v1;
  v9 = *(v4 + 8);
  v9(v11, v10);
  sub_10044A670(v5, v6);
  sub_10044A8F4(v12);
  v0[6] = v7;
  v0[7] = v8;
  static CharacterSet.whitespaces.getter();
  StringProtocol.trimmingCharacters(in:)();
  v9(v11, v10);
  Binding.wrappedValue.getter();
  _SiriMailMessage.body.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v12);

  v2 = *(v0[8] + 8);

  return v2();
}

uint64_t sub_10044C6E4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v56 = sub_10044B7E8;
  v60 = sub_10026EE84;
  v62 = sub_10026434C;
  v64 = sub_10026434C;
  v67 = sub_10026EF2C;
  v42 = &protocol witness table for MainActor;
  v43 = &unk_10050C028;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v44 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8);
  v45 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v46 = &v30 - v45;
  v48 = type metadata accessor for Logger();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v53);
  v52 = &v30 - v51;
  v79 = v3;
  v80 = v4;
  v78 = v5;
  static Logger.siriMail.getter();

  v57 = 32;
  v58 = 7;
  v6 = swift_allocObject();
  v7 = v54;
  v59 = v6;
  *(v6 + 16) = v53;
  *(v6 + 24) = v7;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.debug.getter();
  v55 = 17;
  v63 = swift_allocObject();
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  *(v65 + 16) = 8;
  v8 = swift_allocObject();
  v9 = v59;
  v61 = v8;
  *(v8 + 16) = v56;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v61;
  v68 = v10;
  *(v10 + 16) = v60;
  *(v10 + 24) = v11;
  v70 = sub_10025C9B0(&unk_1006D7720);
  v66 = _allocateUninitializedArray<A>(_:)();
  v69 = v12;

  v13 = v63;
  v14 = v69;
  *v69 = v62;
  v14[1] = v13;

  v15 = v65;
  v16 = v69;
  v69[2] = v64;
  v16[3] = v15;

  v17 = v68;
  v18 = v69;
  v69[4] = v67;
  v18[5] = v17;
  sub_1002612B0();

  if (os_log_type_enabled(v71, v72))
  {
    v19 = v44;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v34 = sub_10025C9B0(&qword_1006D7290);
    v36 = sub_1002641E8(0);
    v37 = sub_1002641E8(1);
    v38 = &v77;
    v77 = v35;
    v39 = &v76;
    v76 = v36;
    v40 = &v75;
    v75 = v37;
    sub_10026423C(2, &v77);
    sub_10026423C(1, v38);
    v73 = v62;
    v74 = v63;
    sub_100264250(&v73, v38, v39, v40);
    v41 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v73 = v64;
      v74 = v65;
      sub_100264250(&v73, &v77, &v76, &v75);
      v33 = 0;
      v73 = v67;
      v74 = v68;
      sub_100264250(&v73, &v77, &v76, &v75);
      _os_log_impl(&_mh_execute_header, v71, v72, "#SiriMailComposeCoordinator setSignature %s", v35, 0xCu);
      sub_10026429C(v36);
      sub_10026429C(v37);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v71);
  (*(v49 + 8))(v52, v48);
  v31 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v46, 1);
  _objc_retain(v47);

  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v22 = v42;
  v23 = v47;
  v24 = v53;
  v25 = v54;
  v26 = v31;
  v27 = v46;
  v28 = v43;
  v21[2] = v32;
  v21[3] = v22;
  v21[4] = v23;
  v21[5] = v24;
  v21[6] = v25;
  sub_1002C7DB4(v26, v26, v27, v28, v21, &type metadata for () + 8);
}

uint64_t sub_10044CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a6;
  v6[7] = a5;
  v6[6] = a4;
  v6[4] = v6;
  v6[5] = 0;
  v6[2] = 0;
  v6[3] = 0;
  v6[5] = a4;
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044CF28, v7);
}

uint64_t sub_10044CF28()
{
  v4 = v0[8];
  v3 = v0[7];
  v0[4] = v0;

  sub_10044A7EC(v3, v4);

  v1 = *(v0[4] + 8);

  return v1();
}

uint64_t sub_10044D06C(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C038;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290);
    v31 = sub_1002641E8(0);
    v32 = sub_1002641E8(1);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setToRecipients %s", v30, 0xCu);
      sub_10026429C(v31);
      sub_10026429C(v32);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044D7B4()
{
  sub_100451AA0();
  Array.debugDescription.getter();
  v1 = String.partiallyRedactedString.getter();

  return v1;
}

uint64_t sub_10044D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044D968, v6);
}

uint64_t sub_10044D968()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.to.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044DA7C()
{
  sub_10025C9B0(&qword_1006DC640);
  type metadata accessor for _SiriMailMessage.Account();
  sub_100451A18();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_10044DBC0(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C050;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290);
    v31 = sub_1002641E8(0);
    v32 = sub_1002641E8(1);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setCcRecipients %s", v30, 0xCu);
      sub_10026429C(v31);
      sub_10026429C(v32);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044E464, v6);
}

uint64_t sub_10044E464()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.cc.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044E60C(uint64_t a1)
{
  v48 = a1;
  v50 = sub_10045192C;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C060;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();

  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290);
    v31 = sub_1002641E8(0);
    v32 = sub_1002641E8(1);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setBccRecipients %s", v30, 0xCu);
      sub_10026429C(v31);
      sub_10026429C(v32);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);

  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v5[8] = sub_10025C9B0(&qword_1006DC638);
  v5[9] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044EEB0, v6);
}

uint64_t sub_10044EEB0()
{
  v1 = *(v0 + 72);
  v4 = v1;
  *(v0 + 16) = v0;
  sub_10044A8F4(v1);
  sub_10044DA7C();
  Binding.wrappedValue.getter();
  _SiriMailMessage.bcc.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v4);

  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t sub_10044F058(void *a1)
{
  v48 = a1;
  v50 = sub_100451CCC;
  v54 = sub_10026EE84;
  v56 = sub_10026434C;
  v58 = sub_10026434C;
  v61 = sub_10026EF2C;
  v37 = &protocol witness table for MainActor;
  v38 = &unk_10050C070;
  v73 = 0;
  v72 = 0;
  v39 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v40 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v41 = &v25 - v40;
  v43 = type metadata accessor for Logger();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v48);
  v47 = &v25 - v46;
  v73 = v2;
  v72 = v3;
  static Logger.siriMail.getter();
  _objc_retain(v48);
  v52 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v48;
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.debug.getter();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v4 = swift_allocObject();
  v5 = v53;
  v55 = v4;
  *(v4 + 16) = v50;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v55;
  v62 = v6;
  *(v6 + 16) = v54;
  *(v6 + 24) = v7;
  v64 = sub_10025C9B0(&unk_1006D7720);
  v60 = _allocateUninitializedArray<A>(_:)();
  v63 = v8;

  v9 = v57;
  v10 = v63;
  *v63 = v56;
  v10[1] = v9;

  v11 = v59;
  v12 = v63;
  v63[2] = v58;
  v12[3] = v11;

  v13 = v62;
  v14 = v63;
  v63[4] = v61;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v65, v66))
  {
    v15 = v39;
    v30 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = sub_10025C9B0(&qword_1006D7290);
    v31 = sub_1002641E8(0);
    v32 = sub_1002641E8(1);
    v33 = &v71;
    v71 = v30;
    v34 = &v70;
    v70 = v31;
    v35 = &v69;
    v69 = v32;
    sub_10026423C(2, &v71);
    sub_10026423C(1, v33);
    v67 = v56;
    v68 = v57;
    sub_100264250(&v67, v33, v34, v35);
    v36 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_100264250(&v67, &v71, &v70, &v69);
      v28 = 0;
      v67 = v61;
      v68 = v62;
      sub_100264250(&v67, &v71, &v70, &v69);
      _os_log_impl(&_mh_execute_header, v65, v66, "#SiriMailComposeCoordinator setFocusedField %s", v30, 0xCu);
      sub_10026429C(v31);
      sub_10026429C(v32);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v44 + 8))(v47, v43);
  v26 = 0;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v41, 1);
  _objc_retain(v42);
  _objc_retain(v48);
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = v37;
  v19 = v42;
  v20 = v48;
  v21 = v26;
  v22 = v41;
  v23 = v38;
  v17[2] = v27;
  v17[3] = v18;
  v17[4] = v19;
  v17[5] = v20;
  sub_1002C7DB4(v21, v21, v22, v23, v17, &type metadata for () + 8);
}

uint64_t sub_10044F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  sub_10025C9B0(&qword_1006DC710);
  v5[8] = swift_task_alloc();
  v5[9] = sub_10025C9B0(&qword_1006DC638);
  v5[10] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044F960, v6);
}

uint64_t sub_10044F960()
{
  v1 = v0[10];
  v5 = v1;
  v4 = v0[6];
  v0[2] = v0;
  sub_10044A8F4(v1);
  sub_100261924(v4);
  _SiriMailMessage.Field.init(rawValue:)();
  Binding.wrappedValue.getter();
  _SiriMailMessage.focusedField.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v5);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_10044FAFC(void *a1)
{
  v68 = a1;
  v70 = sub_100451CCC;
  v74 = sub_10026EE84;
  v76 = sub_10026434C;
  v78 = sub_10026434C;
  v81 = sub_10026EF2C;
  v45 = &protocol witness table for MainActor;
  v46 = &unk_10050C088;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v47 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED8);
  v48 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v49 = &v28 - v48;
  v2 = sub_10025C9B0(&qword_1006DC658);
  v50 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v51 = &v28 - v50;
  v52 = 0;
  v53 = type metadata accessor for _SiriMailMessage.State();
  v55 = *(v53 - 8);
  v54 = v53 - 8;
  v56 = v55;
  v57 = *(v55 + 64);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v52);
  v59 = &v28 - v58;
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v61 = &v28 - v60;
  v94 = &v28 - v60;
  v63 = type metadata accessor for Logger();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v68);
  v67 = &v28 - v66;
  v93 = v5;
  v92 = v6;
  static Logger.siriMail.getter();
  _objc_retain(v68);
  v72 = 7;
  v73 = swift_allocObject();
  *(v73 + 16) = v68;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v69 = 17;
  v77 = swift_allocObject();
  *(v77 + 16) = 32;
  v79 = swift_allocObject();
  *(v79 + 16) = 8;
  v71 = 32;
  v7 = swift_allocObject();
  v8 = v73;
  v75 = v7;
  *(v7 + 16) = v70;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v75;
  v82 = v9;
  *(v9 + 16) = v74;
  *(v9 + 24) = v10;
  v84 = sub_10025C9B0(&unk_1006D7720);
  v80 = _allocateUninitializedArray<A>(_:)();
  v83 = v11;

  v12 = v77;
  v13 = v83;
  *v83 = v76;
  v13[1] = v12;

  v14 = v79;
  v15 = v83;
  v83[2] = v78;
  v15[3] = v14;

  v16 = v82;
  v17 = v83;
  v83[4] = v81;
  v17[5] = v16;
  sub_1002612B0();

  if (os_log_type_enabled(v85, v86))
  {
    v18 = v47;
    v38 = static UnsafeMutablePointer.allocate(capacity:)();
    v37 = sub_10025C9B0(&qword_1006D7290);
    v39 = sub_1002641E8(0);
    v40 = sub_1002641E8(1);
    v41 = &v91;
    v91 = v38;
    v42 = &v90;
    v90 = v39;
    v43 = &v89;
    v89 = v40;
    sub_10026423C(2, &v91);
    sub_10026423C(1, v41);
    v87 = v76;
    v88 = v77;
    sub_100264250(&v87, v41, v42, v43);
    v44 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v87 = v78;
      v88 = v79;
      sub_100264250(&v87, &v91, &v90, &v89);
      v36 = 0;
      v87 = v81;
      v88 = v82;
      sub_100264250(&v87, &v91, &v90, &v89);
      _os_log_impl(&_mh_execute_header, v85, v86, "#SiriMailComposeCoordinator setState %s", v38, 0xCu);
      sub_10026429C(v39);
      sub_10026429C(v40);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v85);
  (*(v64 + 8))(v67, v63);
  sub_100261924(v68);
  _SiriMailMessage.State.init(rawValue:)();
  if ((*(v55 + 48))(v51, 1, v53) == 1)
  {
    return sub_100451DB8(v51);
  }

  v29 = v56;
  v33 = *(v55 + 32);
  v32 = v55 + 32;
  v33(v61, v51, v53);
  v34 = 0;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v49, 1);
  _objc_retain(v62);
  (*(v55 + 16))(v59, v61, v53);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v21 = swift_allocObject();
  v22 = v45;
  v23 = v62;
  v24 = v31;
  v25 = v59;
  v26 = v33;
  v27 = v53;
  v35 = v21;
  v21[2] = v30;
  v21[3] = v22;
  v21[4] = v23;
  v26(v21 + v24, v25, v27);
  sub_1002C7DB4(v34, v34, v49, v46, v35, &type metadata for () + 8);

  return (*(v55 + 8))(v61, v53);
}

uint64_t sub_10045058C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  type metadata accessor for _SiriMailMessage();
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for _SiriMailMessage.State();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_10025C9B0(&qword_1006DC638);
  v5[12] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100450754, v7);
}

uint64_t sub_100450754()
{
  v1 = v0[12];
  v7 = v1;
  v8 = v0[10];
  v4 = v0[9];
  v6 = v0[8];
  v5 = v0[6];
  v0[2] = v0;
  sub_10044A8F4(v1);
  (*(v4 + 16))(v8, v5, v6);
  Binding.wrappedValue.getter();
  _SiriMailMessage.state.setter();
  Binding.wrappedValue.setter();
  sub_10044A360(v7);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_100450914(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v3 = v23;
  v27 = v2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v39 = 0;
  v40 = 0;
  v24 = 0;
  v4 = sub_10025C9B0(&qword_1006DC660);
  v25 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v26 = &v8 - v25;
  v28 = type metadata accessor for SiriMailAction();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  v32 = *(v29 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v33 = &v8 - v31;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v8 - v31);
  v35 = &v8 - v34;
  v45 = &v8 - v34;
  v44 = v3;
  v43 = v5;
  Notification.object.getter();
  if (v42)
  {
    result = swift_dynamicCast();
    if (result)
    {
      v21 = v36;
      v22 = v37;
    }

    else
    {
      v21 = 0;
      v22 = 0xF000000000000000;
    }

    v19 = v21;
    v20 = v22;
  }

  else
  {
    result = sub_10000B0D8(v41);
    v19 = 0;
    v20 = 0xF000000000000000;
  }

  v17 = v20;
  v18 = v19;
  if ((v20 & 0xF000000000000000) != 0xF000000000000000)
  {
    v15 = v18;
    v16 = v17;
    v7 = v24;
    v13 = v17;
    v12 = v18;
    v39 = v18;
    v40 = v17;
    type metadata accessor for JSONDecoder();
    v11 = JSONDecoder.__allocating_init()();
    sub_100451F80();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v14 = v7;
    if (v7)
    {
      v8 = v14;

      (*(v29 + 56))(v26, 1, 1, v28);
    }

    else
    {

      (*(v29 + 56))(v26, 0, 1, v28);
    }

    if ((*(v29 + 48))(v26, 1, v28) == 1)
    {
      sub_100452000(v26);
      return sub_100288010(v12, v13);
    }

    else
    {
      (*(v29 + 32))(v35, v26, v28);
      (*(v29 + 16))(v33, v35, v28);
      if ((*(v29 + 88))(v33, v28) == enum case for SiriMailAction.send(_:))
      {
        v38 = sub_10044A994();
        if (v38)
        {
          v9 = &v38;
          v10 = v38;
          _objc_retain(v38);
          sub_10026A58C(v9);
          [v10 performSend];
          _objc_release(v10);
        }

        else
        {
          sub_10026A58C(&v38);
        }
      }

      else
      {
        (*(v29 + 8))(v33, v28);
      }

      (*(v29 + 8))(v35, v28);
      return sub_100288010(v12, v13);
    }
  }

  return result;
}

id sub_100451060()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriMailComposeCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100451120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = a1;
  v35 = "Fatal error";
  v36 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v37 = "MobileMail/SiriMailComposeCoordinator.swift";
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v39 = type metadata accessor for CharacterSet();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = v8 - v42;
  v44 = *__chkstk_darwin(v38);
  v50 = v44;
  v45 = [v44 address];
  if (v45)
  {
    v33 = v45;
    v28 = v45;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v2;
    _objc_release(v28);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v26 = v32;
  v27 = v31;
  if (v32)
  {
    v24 = v27;
    v25 = v26;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v21 = v49;
  v49[0] = v24;
  v49[1] = v25;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1002686CC();
  v22 = StringProtocol.trimmingCharacters(in:)();
  v23 = v3;
  (*(v40 + 8))(v43, v39);
  sub_100268744();
  v47 = v22;
  v48 = v23;
  v46 = [v44 contact];
  v20 = v46 != 0;
  v19 = v20;
  sub_10026A58C(&v46);
  if (v19)
  {
    v18 = [v44 contact];
    if (v18)
    {
      v17 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v15 = v17;
    v16 = [v17 displayName];
    if (v16)
    {
      v14 = v16;
      v9 = v16;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v4;
      _objc_release(v9);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v8[2] = v13;
    v8[1] = v12;
    _objc_release(v15);
    _SiriMailMessage.Account.init(name:address:)();
    v5 = type metadata accessor for _SiriMailMessage.Account();
    return (*(*(v5 - 8) + 56))(v34, 0, 1);
  }

  else
  {

    _SiriMailMessage.Account.init(name:address:)();
    v7 = type metadata accessor for _SiriMailMessage.Account();
    return (*(*(v7 - 8) + 56))(v34, 0, 1);
  }
}

uint64_t sub_10045165C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044B7F4(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_10045174C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044C274(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_10045183C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044CE54(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_100451934(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044D80C(a1, v6, v7, v8, v9);
}

unint64_t sub_100451A18()
{
  v2 = qword_1006DC648;
  if (!qword_1006DC648)
  {
    sub_10025CAA4(&qword_1006DC640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100451AA0()
{
  v2 = qword_1006DC650;
  if (!qword_1006DC650)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC650);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100451B04(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044E308(a1, v6, v7, v8, v9);
}

uint64_t sub_100451BE8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044ED54(a1, v6, v7, v8, v9);
}

uint64_t sub_100451CD4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_10044F7C8(a1, v6, v7, v8, v9);
}

uint64_t sub_100451DB8(uint64_t a1)
{
  v3 = type metadata accessor for _SiriMailMessage.State();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_100451E60(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for _SiriMailMessage.State() - 8);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_10045058C(a1, v7, v8, v9, v1 + v10);
}

unint64_t sub_100451F80()
{
  v2 = qword_1006DC668;
  if (!qword_1006DC668)
  {
    type metadata accessor for SiriMailAction();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC668);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452000(uint64_t a1)
{
  v3 = type metadata accessor for SiriMailAction();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1004520C4()
{
  updated = sub_1004521B8();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1004521B8()
{
  v4 = qword_1006DC708;
  if (!qword_1006DC708)
  {
    type metadata accessor for _SiriMailMessage();
    v3 = type metadata accessor for Binding();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006DC708);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_100452254@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006DC638);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_10044A0F8(v7, &v2 - v3);
  Binding.projectedValue.getter();
  return sub_10044A360(v6);
}

uint64_t sub_100452314()
{

  sub_10025C9B0(&qword_1006DC718);
  sub_100452380();
  v1 = EnvironmentObject.wrappedValue.getter();

  return v1;
}

unint64_t sub_100452380()
{
  v2 = qword_1006DC720;
  if (!qword_1006DC720)
  {
    sub_10025CAA4(&qword_1006DC718);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC720);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452408()
{

  sub_10025C9B0(&qword_1006DC718);
  sub_100452380();
  v1 = EnvironmentObject.projectedValue.getter();

  return v1;
}

uint64_t sub_1004524A4(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1004524EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v25 = a1;
  v22 = a2;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v14 = 0;
  v35 = type metadata accessor for _SiriMailMessage.State();
  v31 = *(v35 - 8);
  v32 = v35 - 8;
  v11 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(0);
  v33 = &v10 - v11;
  v12 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v34 = &v10 - v12;
  v29 = type metadata accessor for _SiriMailMessage();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v28 = &v10 - v13;
  v15 = (*(*(sub_10025C9B0(&qword_1006DC638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v20 = &v10 - v15;
  v38 = type metadata accessor for SiriMailComposeViewRepresentable();
  v16 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v40 = &v10 - v16;
  v42 = sub_10025C9B0(&qword_1006DC728);
  v17 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v25);
  v44 = &v10 - v17;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v45 = &v10 - v18;
  v48 = &v10 - v18;
  v46 = v7;
  v47 = v8;

  v23 = sub_10025C9B0(&qword_1006DC718);
  v24 = sub_100452380();
  v19 = EnvironmentObject.projectedValue.getter();

  KeyPath = swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_100452DD4(v20, v40);

  v30 = EnvironmentObject.wrappedValue.getter();

  SnippetClientContext.viewModel.getter();
  _SiriMailMessage.state.getter();
  (*(v26 + 8))(v28, v29);

  (*(v31 + 104))(v33, enum case for _SiriMailMessage.State.draft(_:), v35);
  sub_100452DF0();
  v39 = == infix<A>(_:_:)();
  v37 = *(v31 + 8);
  v36 = v31 + 8;
  v37(v33, v35);
  v37(v34, v35);
  sub_100452E70();
  View.allowsHitTesting(_:)();
  sub_10044A360(v40);
  v43 = sub_100452EF0();
  sub_1002EC85C(v44, v42, v45);
  sub_10044A360(v44);
  sub_100452F94(v45, v44);
  sub_1002EC85C(v44, v42, v41);
  sub_10044A360(v44);
  return sub_10044A360(v45);
}

uint64_t type metadata accessor for SiriMailComposeViewRepresentable()
{
  v1 = qword_1006DC7F0;
  if (!qword_1006DC7F0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_100452A80()
{
  v2 = qword_1006DC730;
  if (!qword_1006DC730)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452B00()
{
  v2 = qword_1006DC738;
  if (!qword_1006DC738)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452B80()
{
  v2 = qword_1006DC740;
  if (!qword_1006DC740)
  {
    type metadata accessor for _SiriMailMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100452C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = type metadata accessor for _SiriMailMessage();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v5 = *__chkstk_darwin(v3);

  v12 = v5;
  v11 = v5;
  SnippetClientContext.viewModel.getter();
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_100452CF4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = type metadata accessor for _SiriMailMessage();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  SnippetClientContext.viewModel.setter();
}

unint64_t sub_100452DF0()
{
  v2 = qword_1006DC748;
  if (!qword_1006DC748)
  {
    type metadata accessor for _SiriMailMessage.State();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC748);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452E70()
{
  v2 = qword_1006DC750;
  if (!qword_1006DC750)
  {
    type metadata accessor for SiriMailComposeViewRepresentable();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100452EF0()
{
  v2 = qword_1006DC758;
  if (!qword_1006DC758)
  {
    sub_10025CAA4(&qword_1006DC728);
    sub_100452E70();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC758);
    return WitnessTable;
  }

  return v2;
}

char *sub_100452F94(char *a1, char *a2)
{
  v5 = *a1;

  *a2 = v5;
  v6 = *(a1 + 1);

  *(a2 + 1) = v6;
  v7 = *(sub_10025C9B0(&qword_1006DC638) + 32);
  v2 = type metadata accessor for _SiriMailMessage();
  (*(*(v2 - 8) + 16))(&a2[v7], &a1[v7]);
  v3 = sub_10025C9B0(&qword_1006DC728);
  result = a2;
  a2[*(v3 + 36)] = a1[*(v3 + 36)];
  return result;
}

uint64_t sub_100453098()
{
  sub_10025C9B0(&qword_1006DC718);
  sub_100452380();
  v1 = EnvironmentObject.init()();

  sub_100268928();
  return v1;
}

uint64_t sub_100453138@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v7 = 0;
  v5 = sub_10025C9B0(&qword_1006DC638);
  v3 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = &v2 - v3;
  v7 = __chkstk_darwin(v2);
  sub_10044A0F8(v7, &v2 - v3);
  Binding.wrappedValue.getter();
  return sub_10044A360(v6);
}

uint64_t sub_1004531F8(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = type metadata accessor for _SiriMailMessage();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v4[0] = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v7 = v4 - v4[0];
  v6 = sub_10025C9B0(&qword_1006DC638);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v4[1]);
  v8 = v4 - v5;
  v14 = v2;
  v13 = v1;
  sub_10044A0F8(v1, v4 - v5);
  (*(v9 + 16))(v7, v12, v11);
  Binding.wrappedValue.setter();
  sub_10044A360(v8);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1004533A8(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006DC638) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_10044A0F8(v1, v3 - v3[0]);
  sub_10044A29C(v4, v3[1]);
  return sub_10044A360(v5);
}

id sub_10045344C()
{
  v6 = 0;
  v2[1] = 0;
  v3 = (*(*(type metadata accessor for SiriMailComposeViewRepresentable() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v5 = v2 - v3;
  v6 = v0;
  type metadata accessor for SiriMailComposeCoordinator();
  sub_10044A0F8(v4, v5);
  return sub_10044AC0C(v5);
}

void *sub_1004534F8(uint64_t a1)
{
  v43 = a1;
  v51 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v60 = 0;
  v59 = 0;
  v42 = 0;
  v44 = type metadata accessor for Logger();
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  v48 = &v11 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __chkstk_darwin(v43);
  v69 = v1;
  static Logger.siriMail.getter();
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.debug.getter();
  v50 = v52;
  sub_10025C9B0(&unk_1006D7720);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v2 = v42;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v29 = v33;
    v30 = sub_10025C9B0(&qword_1006D7290);
    v31 = 0;
    v34 = sub_1002641E8(0);
    v32 = v34;
    v35 = sub_1002641E8(v31);
    v58[0] = v33;
    v57 = v34;
    v56 = v35;
    v36 = 0;
    v37 = v58;
    sub_10026423C(0, v58);
    sub_10026423C(v36, v37);
    v55 = v54;
    v38 = &v11;
    __chkstk_darwin(&v11);
    v39 = &v11 - 6;
    v40 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v41 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v49, v50, "#SiriMailComposeView makeUIViewController()", v29, 2u);
      v27 = 0;
      sub_10026429C(v32);
      sub_10026429C(v35);
      UnsafeMutablePointer.deallocate()();

      v28 = v41;
    }
  }

  else
  {

    v28 = v42;
  }

  (*(v46 + 8))(v48, v44);
  v24 = 0;
  sub_10028D4AC();
  v25 = sub_100453C64(v24);
  v23 = v25;
  v68 = v25;
  sub_100453CA4();
  v3 = v25;
  v26 = sub_100453D08(v25);
  if (v26)
  {
    v22 = v26;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v19 = v22;
  v67 = v22;
  v17 = sub_10025C9B0(&qword_1006DC768);
  UIViewControllerRepresentableContext.coordinator.getter();
  v16 = v66;
  [v19 setComposeCoordinator:?];
  swift_unknownObjectRelease();
  UIViewControllerRepresentableContext.coordinator.getter();
  v18 = v65;
  v4 = v19;
  sub_10044A9FC(v19);

  v5 = v19;
  v21 = [v19 view];
  v20 = v21;

  if (v21)
  {
    v15 = v20;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v12 = v15;
  height = UILayoutFittingCompressedSize.height;
  width = UILayoutFittingCompressedSize.width;
  v64 = height;
  [v15 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
  v62 = v7;
  v61 = v8;
  v14 = v7;
  v13 = v8;

  v59 = v13;
  v60 = v14;
  v9 = v19;
  v58[1] = v13;
  v58[2] = v14;
  [v19 setPreferredContentSize:{*&v13, *&v14}];

  return v19;
}

unint64_t sub_100453CA4()
{
  v2 = qword_1006DC760;
  if (!qword_1006DC760)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC760);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_100453D50(void *a1, uint64_t a2)
{
  v555 = a2;
  v554 = a1;
  v541 = 0;
  v624 = 0;
  v623 = 0;
  v622 = 0;
  v621 = 0;
  v534 = 0;
  v617 = 0;
  v615 = 0;
  v611 = 0;
  v609 = 0;
  v605 = 0;
  v603 = 0;
  v587 = 0;
  v586 = 0;
  v581 = 0;
  v580 = 0;
  v535 = sub_10025C9B0(&qword_1006DC768);
  v536 = *(v535 - 8);
  v537 = v536;
  v538 = *(v536 + 64);
  v539 = (v538 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v540 = &v146 - v539;
  v542 = type metadata accessor for _SiriMailMessage();
  v543 = *(v542 - 8);
  v544 = v543;
  v550 = *(v543 + 64);
  v3 = __chkstk_darwin(v541);
  v552 = (v550 + 15) & 0xFFFFFFFFFFFFFFF0;
  v545 = &v146 - v552;
  v4 = __chkstk_darwin(v3);
  v546 = &v146 - v552;
  v5 = __chkstk_darwin(v4);
  v547 = &v146 - v552;
  v6 = __chkstk_darwin(v5);
  v548 = &v146 - v552;
  v7 = __chkstk_darwin(v6);
  v549 = &v146 - v552;
  v8 = __chkstk_darwin(v7);
  v551 = &v146 - v552;
  __chkstk_darwin(v8);
  v553 = &v146 - v552;
  v556 = type metadata accessor for Logger();
  v557 = *(v556 - 8);
  v558 = v557;
  v562 = *(v557 + 64);
  v9 = __chkstk_darwin(v554);
  v564 = (v562 + 15) & 0xFFFFFFFFFFFFFFF0;
  v559 = &v146 - v564;
  v10 = __chkstk_darwin(v9);
  v560 = &v146 - v564;
  v11 = __chkstk_darwin(v10);
  v561 = &v146 - v564;
  v12 = __chkstk_darwin(v11);
  v563 = &v146 - v564;
  v13 = __chkstk_darwin(v12);
  v565 = &v146 - v564;
  v624 = v13;
  v623 = v14;
  v622 = v2;
  v566 = [v13 mailComposeView];
  if (!v566)
  {
    return v534;
  }

  v533 = v566;
  v526 = v566;
  v621 = v566;
  static Logger.siriMail.getter();
  v531 = Logger.logObject.getter();
  v527 = v531;
  v530 = static os_log_type_t.debug.getter();
  v528 = v530;
  v529 = sub_10025C9B0(&unk_1006D7720);
  v532 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v531, v530))
  {
    v15 = v534;
    v517 = static UnsafeMutablePointer.allocate(capacity:)();
    v513 = v517;
    v514 = sub_10025C9B0(&qword_1006D7290);
    v515 = 0;
    v518 = sub_1002641E8(0);
    v516 = v518;
    v519 = sub_1002641E8(v515);
    v570 = v517;
    v569 = v518;
    v568 = v519;
    v520 = 0;
    v521 = &v570;
    sub_10026423C(0, &v570);
    sub_10026423C(v520, v521);
    v567 = v532;
    v522 = &v146;
    __chkstk_darwin(&v146);
    v523 = &v146 - 6;
    v524 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v525 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v527, v528, "#SiriMailComposeView updateUIViewController()", v513, 2u);
      v511 = 0;
      sub_10026429C(v516);
      sub_10026429C(v519);
      UnsafeMutablePointer.deallocate()();

      v512 = v525;
    }
  }

  else
  {

    v512 = v534;
  }

  v507 = v512;

  v508 = *(v558 + 8);
  v509 = (v558 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v508(v565, v556);
  v510 = [v526 subjectField];
  if (v510)
  {
    v506 = v510;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v504 = v506;
  v505 = [v506 text];
  if (v505)
  {
    v503 = v505;
    v498 = v505;
    v499 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v500 = v16;

    v501 = v499;
    v502 = v500;
  }

  else
  {
    v501 = 0;
    v502 = 0;
  }

  v494 = v502;
  v493 = v501;

  sub_100453138(v553);
  v492 = _SiriMailMessage.subject.getter();
  v495 = v17;
  v489 = v17;
  v490 = *(v544 + 8);
  v491 = (v544 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v490(v553, v542);

  v496 = v619;
  v497 = v620;
  v619[0] = v493;
  v619[1] = v494;
  v620[0] = v492;
  v620[1] = v495;
  if (v494)
  {
    sub_100268860(v496, &v572);
    if (v497[1])
    {
      v571 = *v497;
      v487 = static String.== infix(_:_:)();
      sub_100268744();
      sub_100268744();
      sub_100268744();
      v488 = v487;
      goto LABEL_19;
    }

    sub_100268744();
    goto LABEL_21;
  }

  if (v497[1])
  {
LABEL_21:
    sub_100268828();
    v488 = 0;
    goto LABEL_19;
  }

  sub_100268744();
  v488 = 1;
LABEL_19:
  v486 = v488;

  if ((v486 & 1) == 0)
  {
    sub_100453138(v551);
    v484 = _SiriMailMessage.subject.getter();
    v485 = v18;
    if (v18)
    {
      v482 = v484;
      v483 = v485;
      v479 = v485;
      v480 = String._bridgeToObjectiveC()();

      v481 = v480;
    }

    else
    {
      v481 = 0;
    }

    v478 = v481;
    v490(v551, v542);
    [v554 setSubject:v478];
  }

  sub_100453138(v549);
  v476 = _SiriMailMessage.body.getter();
  v477 = v19;
  if (!v19)
  {
    v490(v549, v542);
    v473 = v507;
    goto LABEL_58;
  }

  v474 = v476;
  v475 = v477;
  v472 = v477;
  v471 = v476;
  v586 = v476;
  v587 = v477;
  v490(v549, v542);
  v20 = String.isEmpty.getter();
  if (v20)
  {
    goto LABEL_57;
  }

  UIViewControllerRepresentableContext.coordinator.getter();
  v464 = v585[2];
  v467 = sub_10044A528();
  v468 = v21;
  v465 = v21;

  v466 = v472;

  v469 = v584;
  v470 = v585;
  v584[0] = v467;
  v584[1] = v468;
  v585[0] = v471;
  v585[1] = v472;
  if (v468)
  {
    sub_100268860(v469, &v574);
    if (v470[1])
    {
      v573 = *v470;
      v462 = static String.== infix(_:_:)();
      sub_100268744();
      sub_100268744();
      sub_100268744();
      v463 = v462;
      goto LABEL_37;
    }

    sub_100268744();
    goto LABEL_39;
  }

  if (v470[1])
  {
LABEL_39:
    sub_100268828();
    v463 = 0;
    goto LABEL_37;
  }

  sub_100268744();
  v463 = 1;
LABEL_37:
  v461 = v463;

  if (v461)
  {
LABEL_57:

    v473 = v507;
    goto LABEL_58;
  }

  static Logger.siriMail.getter();
  (*(v537 + 16))(v540, v555, v535);
  v433 = (*(v537 + 80) + 16) & ~*(v537 + 80);
  v438 = swift_allocObject();
  (*(v537 + 32))(v438 + v433, v540, v535);

  v441 = 32;
  v446 = 32;
  v447 = 7;
  v22 = swift_allocObject();
  v23 = v472;
  v448 = v22;
  *(v22 + 16) = v471;
  *(v22 + 24) = v23;
  v460 = Logger.logObject.getter();
  v434 = v460;
  v459 = static os_log_type_t.debug.getter();
  v435 = v459;
  v442 = 17;
  v451 = swift_allocObject();
  v436 = v451;
  *(v451 + 16) = v441;
  v452 = swift_allocObject();
  v437 = v452;
  v444 = 8;
  *(v452 + 16) = 8;
  v24 = swift_allocObject();
  v25 = v438;
  v439 = v24;
  *(v24 + 16) = sub_100458194;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v439;
  v453 = v26;
  v440 = v26;
  *(v26 + 16) = sub_10026EE84;
  *(v26 + 24) = v27;
  v454 = swift_allocObject();
  v443 = v454;
  *(v454 + 16) = v441;
  v455 = swift_allocObject();
  v445 = v455;
  *(v455 + 16) = v444;
  v28 = swift_allocObject();
  v29 = v448;
  v449 = v28;
  *(v28 + 16) = sub_1002B77BC;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v449;
  v458 = v30;
  v450 = v30;
  *(v30 + 16) = sub_10026EE84;
  *(v30 + 24) = v31;
  v456 = _allocateUninitializedArray<A>(_:)();
  v457 = v32;

  v33 = v451;
  v34 = v457;
  *v457 = sub_10026434C;
  v34[1] = v33;

  v35 = v452;
  v36 = v457;
  v457[2] = sub_10026434C;
  v36[3] = v35;

  v37 = v453;
  v38 = v457;
  v457[4] = sub_10026EF2C;
  v38[5] = v37;

  v39 = v454;
  v40 = v457;
  v457[6] = sub_10026434C;
  v40[7] = v39;

  v41 = v455;
  v42 = v457;
  v457[8] = sub_10026434C;
  v42[9] = v41;

  v43 = v457;
  v44 = v458;
  v457[10] = sub_10026EF2C;
  v43[11] = v44;
  sub_1002612B0();

  if (os_log_type_enabled(v460, v459))
  {
    v45 = v507;
    v426 = static UnsafeMutablePointer.allocate(capacity:)();
    v423 = v426;
    v424 = sub_10025C9B0(&qword_1006D7290);
    v427 = sub_1002641E8(0);
    v425 = v427;
    v429 = 2;
    v428 = sub_1002641E8(2);
    v579[0] = v426;
    v578 = v427;
    v577 = v428;
    v430 = v579;
    sub_10026423C(v429, v579);
    sub_10026423C(v429, v430);
    v575 = sub_10026434C;
    v576 = v436;
    sub_100264250(&v575, v430, &v578, &v577);
    v431 = v45;
    v432 = v45;
    if (v45)
    {
      v421 = 0;

      __break(1u);
    }

    else
    {
      v575 = sub_10026434C;
      v576 = v437;
      sub_100264250(&v575, v579, &v578, &v577);
      v419 = 0;
      v420 = 0;
      v575 = sub_10026EF2C;
      v576 = v440;
      sub_100264250(&v575, v579, &v578, &v577);
      v417 = 0;
      v418 = 0;
      v575 = sub_10026434C;
      v576 = v443;
      sub_100264250(&v575, v579, &v578, &v577);
      v415 = 0;
      v416 = 0;
      v575 = sub_10026434C;
      v576 = v445;
      sub_100264250(&v575, v579, &v578, &v577);
      v413 = 0;
      v414 = 0;
      v575 = sub_10026EF2C;
      v576 = v450;
      sub_100264250(&v575, v579, &v578, &v577);
      v411 = 0;
      v412 = 0;
      _os_log_impl(&_mh_execute_header, v434, v435, "#SiriMailComposeView our cached body %s vs %s", v423, 0x16u);
      sub_10026429C(v425);
      sub_10026429C(v428);
      UnsafeMutablePointer.deallocate()();

      v422 = v411;
    }
  }

  else
  {
    v46 = v507;

    v422 = v46;
  }

  v406 = v422;

  v508(v563, v556);
  UIViewControllerRepresentableContext.coordinator.getter();
  v407 = v583;

  sub_10044A670(v471, v472);

  UIViewControllerRepresentableContext.coordinator.getter();
  v408 = v582;
  v409 = sub_10044A778();
  v410 = v47;
  if (v47)
  {
    v404 = v409;
    v405 = v410;
    v401 = v410;
    v400 = v409;
    v580 = v409;
    v581 = v410;

    UIViewControllerRepresentableContext.coordinator.getter();
    v402 = v579[1];

    sub_10044A7EC(v400, v401);

    v48 = [v526 composeWebView];
    v403 = v48;
    if (v48)
    {
      v399 = v403;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v398 = v399;

    v397 = String._bridgeToObjectiveC()();

    [v398 setMarkupString:v397];
  }

  else
  {
  }

  v396 = [v526 composeWebView];
  if (v396)
  {
    v395 = v396;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v394 = v395;

  v393 = String._bridgeToObjectiveC()();

  [v394 prependMarkupString:v393 quote:0];

  v473 = v406;
LABEL_58:
  v49 = v473;
  sub_100453138(v548);
  v387 = _SiriMailMessage.to.getter();
  v490(v548, v542);
  v618 = v387;
  v389 = sub_10025C9B0(&qword_1006DC770);
  v388 = v389;
  v390 = sub_10045807C();
  v51 = sub_10025E9D8(sub_1004578A8, 0, v389, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v50);
  v391 = v49;
  v392 = v51;
  if (v49)
  {
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v385 = v392;
  sub_100264880();
  v617 = v385;
  v386 = [v554 csPeopleForField:1];
  if (v386)
  {
    v384 = v386;
    v381 = v386;
    v380 = sub_1002B9CB8();
    v382 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v383 = v382;
  }

  else
  {
    v383 = 0;
  }

  v379 = v383;
  if (v383)
  {
    v378 = v379;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v52 = v391;
  v616 = v378;
  v372 = sub_10025C9B0(&qword_1006D7B58);
  v369 = v372;
  v373 = sub_10025C9B0(&unk_1006D69B0);
  v370 = v373;
  v374 = sub_100458104();
  v371 = v374;
  v375 = sub_1002688A0();
  v53 = Sequence.flatMap<A>(_:)();
  v376 = v52;
  v377 = v53;
  if (v52)
  {
    goto LABEL_119;
  }

  v367 = v377;
  sub_100264880();
  v615 = v367;
  v614 = v367;
  v613 = v385;
  v368 = sub_1002B76F0();
  if (Collection<>.contains<A>(_:)())
  {
    v311 = v376;
  }

  else
  {
    static Logger.siriMail.getter();

    v338 = 24;
    v353 = 7;
    v337 = swift_allocObject();
    *(v337 + 16) = v367;

    v347 = 32;
    v352 = 32;
    v54 = swift_allocObject();
    v55 = v337;
    v344 = v54;
    *(v54 + 16) = sub_10045818C;
    *(v54 + 24) = v55;

    v339 = swift_allocObject();
    *(v339 + 16) = v385;

    v56 = swift_allocObject();
    v57 = v339;
    v354 = v56;
    *(v56 + 16) = sub_10045818C;
    *(v56 + 24) = v57;

    v366 = Logger.logObject.getter();
    v340 = v366;
    v365 = static os_log_type_t.debug.getter();
    v341 = v365;
    v348 = 17;
    v357 = swift_allocObject();
    v342 = v357;
    *(v357 + 16) = v347;
    v358 = swift_allocObject();
    v343 = v358;
    v350 = 8;
    *(v358 + 16) = 8;
    v58 = swift_allocObject();
    v59 = v344;
    v345 = v58;
    *(v58 + 16) = sub_1004282FC;
    *(v58 + 24) = v59;
    v60 = swift_allocObject();
    v61 = v345;
    v359 = v60;
    v346 = v60;
    *(v60 + 16) = sub_10026EE84;
    *(v60 + 24) = v61;
    v360 = swift_allocObject();
    v349 = v360;
    *(v360 + 16) = v347;
    v361 = swift_allocObject();
    v351 = v361;
    *(v361 + 16) = v350;
    v62 = swift_allocObject();
    v63 = v354;
    v355 = v62;
    *(v62 + 16) = sub_1004282FC;
    *(v62 + 24) = v63;
    v64 = swift_allocObject();
    v65 = v355;
    v364 = v64;
    v356 = v64;
    *(v64 + 16) = sub_10026EE84;
    *(v64 + 24) = v65;
    v362 = _allocateUninitializedArray<A>(_:)();
    v363 = v66;

    v67 = v357;
    v68 = v363;
    *v363 = sub_10026434C;
    v68[1] = v67;

    v69 = v358;
    v70 = v363;
    v363[2] = sub_10026434C;
    v70[3] = v69;

    v71 = v359;
    v72 = v363;
    v363[4] = sub_10026EF2C;
    v72[5] = v71;

    v73 = v360;
    v74 = v363;
    v363[6] = sub_10026434C;
    v74[7] = v73;

    v75 = v361;
    v76 = v363;
    v363[8] = sub_10026434C;
    v76[9] = v75;

    v77 = v363;
    v78 = v364;
    v363[10] = sub_10026EF2C;
    v77[11] = v78;
    sub_1002612B0();

    if (os_log_type_enabled(v366, v365))
    {
      v79 = v376;
      v330 = static UnsafeMutablePointer.allocate(capacity:)();
      v327 = v330;
      v328 = sub_10025C9B0(&qword_1006D7290);
      v331 = sub_1002641E8(0);
      v329 = v331;
      v333 = 2;
      v332 = sub_1002641E8(2);
      v592 = v330;
      v591 = v331;
      v590 = v332;
      v334 = &v592;
      sub_10026423C(v333, &v592);
      sub_10026423C(v333, v334);
      v588 = sub_10026434C;
      v589 = v342;
      sub_100264250(&v588, v334, &v591, &v590);
      v335 = v79;
      v336 = v79;
      if (v79)
      {
        v325 = 0;

        __break(1u);
      }

      else
      {
        v588 = sub_10026434C;
        v589 = v343;
        sub_100264250(&v588, &v592, &v591, &v590);
        v323 = 0;
        v324 = 0;
        v588 = sub_10026EF2C;
        v589 = v346;
        sub_100264250(&v588, &v592, &v591, &v590);
        v321 = 0;
        v322 = 0;
        v588 = sub_10026434C;
        v589 = v349;
        sub_100264250(&v588, &v592, &v591, &v590);
        v319 = 0;
        v320 = 0;
        v588 = sub_10026434C;
        v589 = v351;
        sub_100264250(&v588, &v592, &v591, &v590);
        v317 = 0;
        v318 = 0;
        v588 = sub_10026EF2C;
        v589 = v356;
        sub_100264250(&v588, &v592, &v591, &v590);
        v315 = 0;
        v316 = 0;
        _os_log_impl(&_mh_execute_header, v340, v341, "#SiriMailComposeView to existingTo: %s, newTo: %s", v327, 0x16u);
        sub_10026429C(v329);
        sub_10026429C(v332);
        UnsafeMutablePointer.deallocate()();

        v326 = v315;
      }
    }

    else
    {
      v80 = v376;

      v326 = v80;
    }

    v313 = v326;

    v508(v561, v556);
    v314 = [v526 toField];
    if (v314)
    {
      v312 = v314;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v310 = v312;
    sub_100453138(v547);
    v304 = _SiriMailMessage.to.getter();
    v490(v547, v542);
    v308 = sub_100457A7C();

    v305 = sub_100451AA0();
    v306 = &type metadata for Any + 8;
    v307 = _arrayForceCast<A, B>(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v310 setRecipients:isa];

    v311 = v313;
  }

  v81 = v311;
  sub_100453138(v546);
  v301 = _SiriMailMessage.cc.getter();
  v490(v546, v542);
  v612 = v301;
  v83 = sub_10025E9D8(sub_1004578A8, 0, v388, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v82);
  v302 = v81;
  v303 = v83;
  if (v81)
  {
    goto LABEL_120;
  }

  v299 = v303;
  sub_100264880();
  v611 = v299;
  v300 = [v554 csPeopleForField:2];
  if (v300)
  {
    v298 = v300;
    v295 = v300;
    v294 = sub_1002B9CB8();
    v296 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v297 = v296;
  }

  else
  {
    v297 = 0;
  }

  v293 = v297;
  if (v297)
  {
    v292 = v293;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v84 = v302;
  v610 = v292;
  v85 = Sequence.flatMap<A>(_:)();
  v290 = v84;
  v291 = v85;
  if (v84)
  {
    goto LABEL_121;
  }

  v289 = v291;
  sub_100264880();
  v609 = v289;
  v608 = v289;
  v607 = v299;
  if (Collection<>.contains<A>(_:)())
  {
    v233 = v290;
  }

  else
  {
    static Logger.siriMail.getter();

    v260 = 24;
    v275 = 7;
    v259 = swift_allocObject();
    *(v259 + 16) = v289;

    v269 = 32;
    v274 = 32;
    v86 = swift_allocObject();
    v87 = v259;
    v266 = v86;
    *(v86 + 16) = sub_10045818C;
    *(v86 + 24) = v87;

    v261 = swift_allocObject();
    *(v261 + 16) = v299;

    v88 = swift_allocObject();
    v89 = v261;
    v276 = v88;
    *(v88 + 16) = sub_10045818C;
    *(v88 + 24) = v89;

    v288 = Logger.logObject.getter();
    v262 = v288;
    v287 = static os_log_type_t.debug.getter();
    v263 = v287;
    v270 = 17;
    v279 = swift_allocObject();
    v264 = v279;
    *(v279 + 16) = v269;
    v280 = swift_allocObject();
    v265 = v280;
    v272 = 8;
    *(v280 + 16) = 8;
    v90 = swift_allocObject();
    v91 = v266;
    v267 = v90;
    *(v90 + 16) = sub_1004282FC;
    *(v90 + 24) = v91;
    v92 = swift_allocObject();
    v93 = v267;
    v281 = v92;
    v268 = v92;
    *(v92 + 16) = sub_10026EE84;
    *(v92 + 24) = v93;
    v282 = swift_allocObject();
    v271 = v282;
    *(v282 + 16) = v269;
    v283 = swift_allocObject();
    v273 = v283;
    *(v283 + 16) = v272;
    v94 = swift_allocObject();
    v95 = v276;
    v277 = v94;
    *(v94 + 16) = sub_1004282FC;
    *(v94 + 24) = v95;
    v96 = swift_allocObject();
    v97 = v277;
    v286 = v96;
    v278 = v96;
    *(v96 + 16) = sub_10026EE84;
    *(v96 + 24) = v97;
    v284 = _allocateUninitializedArray<A>(_:)();
    v285 = v98;

    v99 = v279;
    v100 = v285;
    *v285 = sub_10026434C;
    v100[1] = v99;

    v101 = v280;
    v102 = v285;
    v285[2] = sub_10026434C;
    v102[3] = v101;

    v103 = v281;
    v104 = v285;
    v285[4] = sub_10026EF2C;
    v104[5] = v103;

    v105 = v282;
    v106 = v285;
    v285[6] = sub_10026434C;
    v106[7] = v105;

    v107 = v283;
    v108 = v285;
    v285[8] = sub_10026434C;
    v108[9] = v107;

    v109 = v285;
    v110 = v286;
    v285[10] = sub_10026EF2C;
    v109[11] = v110;
    sub_1002612B0();

    if (os_log_type_enabled(v288, v287))
    {
      v111 = v290;
      v252 = static UnsafeMutablePointer.allocate(capacity:)();
      v249 = v252;
      v250 = sub_10025C9B0(&qword_1006D7290);
      v253 = sub_1002641E8(0);
      v251 = v253;
      v255 = 2;
      v254 = sub_1002641E8(2);
      v597 = v252;
      v596 = v253;
      v595 = v254;
      v256 = &v597;
      sub_10026423C(v255, &v597);
      sub_10026423C(v255, v256);
      v593 = sub_10026434C;
      v594 = v264;
      sub_100264250(&v593, v256, &v596, &v595);
      v257 = v111;
      v258 = v111;
      if (v111)
      {
        v247 = 0;

        __break(1u);
      }

      else
      {
        v593 = sub_10026434C;
        v594 = v265;
        sub_100264250(&v593, &v597, &v596, &v595);
        v245 = 0;
        v246 = 0;
        v593 = sub_10026EF2C;
        v594 = v268;
        sub_100264250(&v593, &v597, &v596, &v595);
        v243 = 0;
        v244 = 0;
        v593 = sub_10026434C;
        v594 = v271;
        sub_100264250(&v593, &v597, &v596, &v595);
        v241 = 0;
        v242 = 0;
        v593 = sub_10026434C;
        v594 = v273;
        sub_100264250(&v593, &v597, &v596, &v595);
        v239 = 0;
        v240 = 0;
        v593 = sub_10026EF2C;
        v594 = v278;
        sub_100264250(&v593, &v597, &v596, &v595);
        v237 = 0;
        v238 = 0;
        _os_log_impl(&_mh_execute_header, v262, v263, "#SiriMailComposeView cc existingCc: %s, newCc: %s", v249, 0x16u);
        sub_10026429C(v251);
        sub_10026429C(v254);
        UnsafeMutablePointer.deallocate()();

        v248 = v237;
      }
    }

    else
    {
      v112 = v290;

      v248 = v112;
    }

    v235 = v248;

    v508(v560, v556);
    v236 = [v526 ccField];
    if (v236)
    {
      v234 = v236;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v232 = v234;
    sub_100453138(v547);
    v226 = _SiriMailMessage.cc.getter();
    v490(v547, v542);
    v230 = sub_100457A7C();

    v227 = sub_100451AA0();
    v228 = &type metadata for Any + 8;
    v229 = _arrayForceCast<A, B>(_:)();
    v231 = Array._bridgeToObjectiveC()().super.isa;

    [v232 setRecipients:v231];

    v233 = v235;
  }

  v113 = v233;
  sub_100453138(v545);
  v223 = _SiriMailMessage.bcc.getter();
  v490(v545, v542);
  v606 = v223;
  v115 = sub_10025E9D8(sub_1004578A8, 0, v388, &type metadata for String, &type metadata for Never, v390, &protocol witness table for Never, v114);
  v224 = v113;
  v225 = v115;
  if (v113)
  {
    goto LABEL_122;
  }

  v221 = v225;
  sub_100264880();
  v605 = v221;
  v222 = [v554 csPeopleForField:3];
  if (v222)
  {
    v220 = v222;
    v217 = v222;
    v216 = sub_1002B9CB8();
    v218 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v219 = v218;
  }

  else
  {
    v219 = 0;
  }

  v215 = v219;
  if (v219)
  {
    v214 = v215;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v116 = v224;
  v604 = v214;
  v117 = Sequence.flatMap<A>(_:)();
  v212 = v116;
  v213 = v117;
  if (!v116)
  {
    v211 = v213;
    sub_100264880();
    v603 = v211;
    v602[2] = v211;
    v602[1] = v221;
    if (Collection<>.contains<A>(_:)())
    {
      v155 = v212;
    }

    else
    {
      static Logger.siriMail.getter();

      v182 = 24;
      v197 = 7;
      v181 = swift_allocObject();
      *(v181 + 16) = v211;

      v191 = 32;
      v196 = 32;
      v118 = swift_allocObject();
      v119 = v181;
      v188 = v118;
      *(v118 + 16) = sub_10045818C;
      *(v118 + 24) = v119;

      v183 = swift_allocObject();
      *(v183 + 16) = v221;

      v120 = swift_allocObject();
      v121 = v183;
      v198 = v120;
      *(v120 + 16) = sub_10045818C;
      *(v120 + 24) = v121;

      v210 = Logger.logObject.getter();
      v184 = v210;
      v209 = static os_log_type_t.debug.getter();
      v185 = v209;
      v192 = 17;
      v201 = swift_allocObject();
      v186 = v201;
      *(v201 + 16) = v191;
      v202 = swift_allocObject();
      v187 = v202;
      v194 = 8;
      *(v202 + 16) = 8;
      v122 = swift_allocObject();
      v123 = v188;
      v189 = v122;
      *(v122 + 16) = sub_1004282FC;
      *(v122 + 24) = v123;
      v124 = swift_allocObject();
      v125 = v189;
      v203 = v124;
      v190 = v124;
      *(v124 + 16) = sub_10026EE84;
      *(v124 + 24) = v125;
      v204 = swift_allocObject();
      v193 = v204;
      *(v204 + 16) = v191;
      v205 = swift_allocObject();
      v195 = v205;
      *(v205 + 16) = v194;
      v126 = swift_allocObject();
      v127 = v198;
      v199 = v126;
      *(v126 + 16) = sub_1004282FC;
      *(v126 + 24) = v127;
      v128 = swift_allocObject();
      v129 = v199;
      v208 = v128;
      v200 = v128;
      *(v128 + 16) = sub_10026EE84;
      *(v128 + 24) = v129;
      v206 = _allocateUninitializedArray<A>(_:)();
      v207 = v130;

      v131 = v201;
      v132 = v207;
      *v207 = sub_10026434C;
      v132[1] = v131;

      v133 = v202;
      v134 = v207;
      v207[2] = sub_10026434C;
      v134[3] = v133;

      v135 = v203;
      v136 = v207;
      v207[4] = sub_10026EF2C;
      v136[5] = v135;

      v137 = v204;
      v138 = v207;
      v207[6] = sub_10026434C;
      v138[7] = v137;

      v139 = v205;
      v140 = v207;
      v207[8] = sub_10026434C;
      v140[9] = v139;

      v141 = v207;
      v142 = v208;
      v207[10] = sub_10026EF2C;
      v141[11] = v142;
      sub_1002612B0();

      if (os_log_type_enabled(v210, v209))
      {
        v143 = v212;
        v174 = static UnsafeMutablePointer.allocate(capacity:)();
        v171 = v174;
        v172 = sub_10025C9B0(&qword_1006D7290);
        v175 = sub_1002641E8(0);
        v173 = v175;
        v177 = 2;
        v176 = sub_1002641E8(2);
        v602[0] = v174;
        v601 = v175;
        v600 = v176;
        v178 = v602;
        sub_10026423C(v177, v602);
        sub_10026423C(v177, v178);
        v598 = sub_10026434C;
        v599 = v186;
        sub_100264250(&v598, v178, &v601, &v600);
        v179 = v143;
        v180 = v143;
        if (v143)
        {
          v169 = 0;

          __break(1u);
        }

        else
        {
          v598 = sub_10026434C;
          v599 = v187;
          sub_100264250(&v598, v602, &v601, &v600);
          v167 = 0;
          v168 = 0;
          v598 = sub_10026EF2C;
          v599 = v190;
          sub_100264250(&v598, v602, &v601, &v600);
          v165 = 0;
          v166 = 0;
          v598 = sub_10026434C;
          v599 = v193;
          sub_100264250(&v598, v602, &v601, &v600);
          v163 = 0;
          v164 = 0;
          v598 = sub_10026434C;
          v599 = v195;
          sub_100264250(&v598, v602, &v601, &v600);
          v161 = 0;
          v162 = 0;
          v598 = sub_10026EF2C;
          v599 = v200;
          sub_100264250(&v598, v602, &v601, &v600);
          v159 = 0;
          v160 = 0;
          _os_log_impl(&_mh_execute_header, v184, v185, "#SiriMailComposeView bcc existingBcc: %s, newBcc: %s", v171, 0x16u);
          sub_10026429C(v173);
          sub_10026429C(v176);
          UnsafeMutablePointer.deallocate()();

          v170 = v159;
        }
      }

      else
      {
        v144 = v212;

        v170 = v144;
      }

      v157 = v170;

      v508(v559, v556);
      v158 = [v526 bccField];
      if (v158)
      {
        v156 = v158;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v154 = v156;
      sub_100453138(v547);
      v148 = _SiriMailMessage.bcc.getter();
      v490(v547, v542);
      v152 = sub_100457A7C();

      v149 = sub_100451AA0();
      v150 = &type metadata for Any + 8;
      v151 = _arrayForceCast<A, B>(_:)();
      v153 = Array._bridgeToObjectiveC()().super.isa;

      [v154 setRecipients:v153];

      v155 = v157;
    }

    v146 = v155;

    return v146;
  }

LABEL_123:
  result = 0;
  __break(1u);
  return result;
}