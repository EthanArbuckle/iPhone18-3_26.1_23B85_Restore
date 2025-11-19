uint64_t Collaboration.Management.Model.__allocating_init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_10034946C(a1, a2);

  return v4;
}

uint64_t Collaboration.Management.Model.init(manager:playlist:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_10034946C(a1, a2);

  return v2;
}

uint64_t property wrapper backing initializer of Collaboration.Management.Model.playlist(char *a1)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v13 - v8;
  v10 = *(v3 + 16);
  (v10)(&v13 - v8, a1, v2, v7);
  v10(v5, v9, v2);
  sub_1004B8564();
  v11 = *(v3 + 8);
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t sub_10032A870()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    static ApplicationCapabilities.shared.getter(v1);
    sub_100051DEC(v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_1004B85B4();
  }

  return result;
}

uint64_t sub_10032A90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100003ABC(&qword_10060E4C0);
  v5[7] = swift_task_alloc();
  v6 = sub_100003ABC(&qword_10060E4C8);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_100003ABC(&qword_10060E4D0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_10060E4D8);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10032AAE0, 0, 0);
}

uint64_t sub_10032AAE0()
{
  sub_1004BBA84();
  sub_1004BB7D4();
  sub_10034A084(&qword_10060E4E0, &type metadata accessor for Playlist.Collaborator);
  sub_1004BAC34();
  swift_getKeyPath();
  v0[2] = sub_1004BB974();
  v0[3] = v1;
  sub_1004BAC24();

  sub_1004BC474();
  v0[17] = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_10032AC4C, v3, v2);
}

uint64_t sub_10032AC4C()
{

  sub_1000206D4(&qword_10060E4E8, &qword_10060E4D8);
  *(v0 + 144) = sub_1004B7774();

  return _swift_task_switch(sub_10032ACF8, 0, 0);
}

uint64_t sub_10032ACF8()
{
  v1 = v0[13];
  v15 = v0[14];
  v16 = v0[16];
  v13 = v0[12];
  v14 = v0[15];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v11 = v0[8];
  v12 = v0[11];
  v5 = v0[6];
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = v0[18];

  sub_1004B7794();

  sub_100009130(0, &qword_10060E4F0);
  v6 = sub_1004BCB44();
  v0[4] = v6;
  v7 = sub_1004BCB24();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_1000206D4(&qword_10060E4F8, &qword_10060E4C8);
  sub_10034FDC0();
  sub_1004B8614();
  sub_100007214(v4, &qword_10060E4C0);

  (*(v3 + 8))(v2, v11);
  swift_allocObject();
  swift_weakInit();
  sub_1000206D4(&qword_10060E508, &qword_10060E4D0);
  v8 = sub_1004B8644();

  (*(v13 + 8))(v1, v12);
  (*(v14 + 8))(v16, v15);
  *(v5 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = v8;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032AFC0(uint64_t a1, uint64_t a2)
{
  v244 = a1;
  v3 = sub_100003ABC(&unk_10060DB30);
  __chkstk_darwin(v3 - 8);
  v240 = &v206 - v4;
  v5 = sub_1004BB7D4();
  v238 = *(v5 - 8);
  __chkstk_darwin(v5);
  v252 = &v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v237 = &v206 - v8;
  __chkstk_darwin(v9);
  v255 = &v206 - v10;
  __chkstk_darwin(v11);
  v247 = &v206 - v12;
  v249 = sub_100003ABC(&qword_10060E510);
  v229 = *(v249 - 8);
  __chkstk_darwin(v249);
  v228 = &v206 - v13;
  v227 = sub_100003ABC(&qword_10060E518);
  __chkstk_darwin(v227);
  v248 = &v206 - v14;
  v220 = sub_1004B6CD4();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v213 = &v206 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_100003ABC(&qword_10060E520);
  __chkstk_darwin(v217);
  v219 = &v206 - v16;
  v226 = sub_1004BBA84();
  v225 = *(v226 - 1);
  __chkstk_darwin(v226);
  v223 = &v206 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v224 = &v206 - v19;
  __chkstk_darwin(v20);
  v216 = &v206 - v21;
  v22 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v22 - 8);
  v214 = &v206 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v206 - v25;
  __chkstk_darwin(v26);
  v222 = &v206 - v27;
  v28 = sub_100003ABC(&qword_10060DF08);
  __chkstk_darwin(v28 - 8);
  v246 = (&v206 - v29);
  v239 = sub_1004BB794();
  v234 = *(v239 - 8);
  __chkstk_darwin(v239);
  v232 = &v206 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v233 = &v206 - v32;
  v253 = sub_1004BB844();
  v254 = *(v253 - 8);
  __chkstk_darwin(v253);
  v235 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = sub_100003ABC(&qword_10060E528);
  v259 = *(v258 - 8);
  __chkstk_darwin(v258);
  v241 = &v206 - v34;
  v256 = sub_1004B80B4();
  v250 = *(v256 - 8);
  __chkstk_darwin(v256);
  v242 = (&v206 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v36);
  v231 = &v206 - v37;
  __chkstk_darwin(v38);
  v230 = (&v206 - v39);
  __chkstk_darwin(v40);
  v251 = &v206 - v41;
  v236 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v236);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v245 = &v206 - v44;
  __chkstk_darwin(v45);
  v47 = &v206 - v46;
  __chkstk_darwin(v48);
  v50 = &v206 - v49;
  __chkstk_darwin(v51);
  v260 = &v206 - v52;
  v53 = sub_100003ABC(&qword_10060E530);
  __chkstk_darwin(v53 - 8);
  v55 = &v206 - v54;
  v56 = sub_100003ABC(&qword_10060E538);
  __chkstk_darwin(v56);
  v243 = (&v206 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v58);
  v60 = &v206 - v59;
  __chkstk_darwin(v61);
  v63 = &v206 - v62;
  __chkstk_darwin(v64);
  v66 = &v206 - v65;
  __chkstk_darwin(v67);
  v261 = &v206 - v68;
  swift_beginAccess();
  v257 = a2;
  result = swift_weakLoadStrong();
  if (result)
  {
    v70 = *(result + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse);

    if (v70)
    {
      v71 = sub_1004B7784();

      if (v71)
      {
        v212 = v5;
        sub_10000F778(v244, v55, &qword_10060E530);
        v72 = sub_100003ABC(&qword_10060E540);
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v55, 1, v72) == 1)
        {
          sub_100007214(v55, &qword_10060E530);
        }

        else
        {
          v74 = sub_1004BAC54();
          (*(v73 + 8))(v55, v72);
          if (*(v74 + 16))
          {
            v75 = v258;
            (*(v259 + 16))(v261, v74 + ((*(v259 + 80) + 32) & ~*(v259 + 80)), v258);

            v76 = 0;
            v77 = v260;
            goto LABEL_10;
          }
        }

        v76 = 1;
        v77 = v260;
        v75 = v258;
LABEL_10:
        v78 = v259;
        v79 = v261;
        (*(v259 + 56))(v261, v76, 1, v75);
        sub_10000F778(v79, v66, &qword_10060E538);
        v80 = *(v78 + 48);
        v209 = v78 + 48;
        v208 = v80;
        if (v80(v66, 1, v75) == 1)
        {
          sub_100007214(v66, &qword_10060E538);
          v81 = v254;
          (*(v254 + 56))(v77, 1, 1, v253);
        }

        else
        {
          swift_getKeyPath();
          sub_1004BAB54();
          v77 = v260;

          (*(v78 + 8))(v66, v75);
          v81 = v254;
        }

        v82 = v251;
        v83 = Logger.collaboration.unsafeMutableAddressor();
        v84 = v250;
        v85 = *(v250 + 16);
        v210 = v83;
        v86 = v256;
        v244 = v250 + 16;
        v211 = v85;
        (v85)(v82);
        sub_10000F778(v261, v63, &qword_10060E538);
        sub_10000F778(v77, v50, &qword_10060DEE8);
        v87 = sub_1004B8094();
        v207 = sub_1004BC9A4();
        if (os_log_type_enabled(v87, v207))
        {
          v88 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v263 = v206;
          *v88 = 136446466;
          sub_10000F778(v63, v60, &qword_10060E538);
          v89 = sub_1004BBF04();
          v91 = v90;
          sub_100007214(v63, &qword_10060E538);
          v92 = sub_1002C4260(v89, v91, &v263);

          *(v88 + 4) = v92;
          *(v88 + 12) = 2082;
          sub_10000F778(v50, v47, &qword_10060DEE8);
          v93 = sub_1004BBF04();
          v95 = v94;
          sub_100007214(v50, &qword_10060DEE8);
          v96 = v93;
          v81 = v254;
          v97 = sub_1002C4260(v96, v95, &v263);

          *(v88 + 14) = v97;
          _os_log_impl(&_mh_execute_header, v87, v207, "    [Management] Did update collaborative playlist with:\n        playlist=%{public}s)\n        collaboration=%{public}s", v88, 0x16u);
          swift_arrayDestroy();

          v86 = v256;

          v98 = *(v84 + 8);
          v98(v251, v86);
        }

        else
        {

          sub_100007214(v50, &qword_10060DEE8);
          sub_100007214(v63, &qword_10060E538);
          v98 = *(v84 + 8);
          v98(v82, v86);
        }

        v99 = v259;
        v100 = v253;
        v101 = v243;
        sub_10000F778(v261, v243, &qword_10060E538);
        v102 = v258;
        v103 = v208(v101, 1, v258);
        v104 = v246;
        v105 = v245;
        if (v103 == 1)
        {
          sub_100007214(v101, &qword_10060E538);
LABEL_25:
          v121 = v242;
          v211(v242, v210, v86);
          v122 = sub_1004B8094();
          v123 = sub_1004BC9A4();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v122, v123, "[Management] Dismissing management sheet", v124, 2u);
          }

          v98(v121, v86);
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v264 = 1;
            sub_1004B85B4();
          }

LABEL_29:
          sub_100007214(v260, &qword_10060DEE8);
          return sub_100007214(v261, &qword_10060E538);
        }

        v106 = v101;
        v107 = v241;
        (*(v99 + 32))(v241, v106, v102);
        sub_10000F778(v260, v105, &qword_10060DEE8);
        v251 = *(v81 + 48);
        if ((v251)(v105, 1, v100) == 1)
        {
          (*(v99 + 8))(v107, v102);
          sub_100007214(v105, &qword_10060DEE8);
          v86 = v256;
          goto LABEL_25;
        }

        v236 = v98;
        v108 = v235;
        (*(v81 + 32))(v235, v105, v100);
        sub_1004BB814();
        v109 = v234;
        v110 = v239;
        if ((*(v234 + 48))(v104, 1, v239) == 1)
        {
          (*(v81 + 8))(v108, v100);
          (*(v99 + 8))(v241, v258);
          sub_100007214(v104, &qword_10060DF08);
LABEL_24:
          v86 = v256;
          v98 = v236;
          goto LABEL_25;
        }

        v111 = v233;
        (*(v109 + 32))(v233, v104, v110);
        v112 = v232;
        (*(v109 + 104))(v232, enum case for Playlist.Collaborator.Status.notJoined(_:), v110);
        sub_10034A084(&unk_10060DF10, &type metadata accessor for Playlist.Collaborator.Status);
        v113 = v109;
        v114 = sub_1004BBD84();
        v115 = v239;
        v116 = v114;
        v118 = *(v113 + 8);
        v117 = v113 + 8;
        v119 = v112;
        v120 = v118;
        v118(v119, v239);
        if (v116)
        {
          v120(v111, v115);
          (*(v254 + 8))(v235, v100);
          (*(v99 + 8))(v241, v258);
          goto LABEL_24;
        }

        v234 = v117;
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        v126 = v254;
        if (!Strong || (swift_getKeyPath(), swift_getKeyPath(), sub_1004B85A4(), , , , v263 != 1))
        {
LABEL_47:
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            v144 = v224;
            sub_1004BAB44();
            swift_getKeyPath();
            swift_getKeyPath();
            v145 = v225;
            v146 = v226;
            (*(v225 + 16))(v223, v144, v226);
            sub_1004B85B4();
            (*(v145 + 8))(v144, v146);
          }

          swift_beginAccess();
          v147 = swift_weakLoadStrong();
          v148 = v248;
          if (v147)
          {
            v149 = Playlist.Collaboration.isOpenInvitation.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v263) = v149 & 1;
            sub_1004B85B4();
          }

          v226 = v120;
          v150 = v228;
          sub_1004BAB64();
          v151 = v229;
          v152 = v249;
          (*(v229 + 16))(v148, v150, v249);
          v153 = *(v227 + 36);
          v154 = sub_1000206D4(&qword_10060E548, &qword_10060E510);
          sub_1004BC724();
          (*(v151 + 8))(v150, v152);
          swift_beginAccess();
          sub_1004BC764();
          if (*&v153[v148] == v263)
          {
            v242 = _swiftEmptyArrayStorage;
            v246 = _swiftEmptyArrayStorage;
          }

          else
          {
            v169 = v238;
            v251 = (v238 + 16);
            v170 = (v238 + 32);
            v243 = (v238 + 8);
            v232 = (v238 + 56);
            v246 = _swiftEmptyArrayStorage;
            v242 = _swiftEmptyArrayStorage;
            v245 = v153;
            do
            {
              v176 = v154;
              v177 = sub_1004BC844();
              v178 = *v251;
              v179 = v247;
              v180 = v212;
              (*v251)(v247);
              v177(&v263, 0);
              v154 = v176;
              sub_1004BC774();
              v181 = *v170;
              v182 = v255;
              (*v170)(v255, v179, v180);
              v183 = sub_1004BB7C4();
              if (v183 == 2 || (v183 & 1) == 0)
              {
                v178(v252, v182, v180);
                v188 = v246;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_1003BEEBC(0, *(v188 + 16) + 1, 1, v188);
                }

                v190 = *(v188 + 16);
                v189 = *(v188 + 24);
                if (v190 >= v189 >> 1)
                {
                  v188 = sub_1003BEEBC(v189 > 1, v190 + 1, 1, v188);
                }

                *(v188 + 16) = v190 + 1;
                v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
                v246 = v188;
                v181(v188 + v191 + *(v169 + 72) * v190, v252, v180);
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v171 = sub_1004B8594();
                  v172 = v240;
                  v173 = v255;
                  sub_100347BA0(v255, v240);
                  v174 = v172;
                  v169 = v238;
                  sub_100007214(v174, &unk_10060DB30);
                  v171(&v263, 0);
                  v175 = v173;
                  v154 = v176;

                  (*v243)(v175, v212);
                }

                else
                {
                  (*v243)(v255, v180);
                  v192 = v240;
                  (*v232)(v240, 1, 1, v180);
                  sub_100007214(v192, &unk_10060DB30);
                }
              }

              else
              {
                v178(v237, v182, v180);
                v184 = v242;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v184 = sub_1003BEEBC(0, *(v184 + 16) + 1, 1, v184);
                }

                v242 = v184;
                v186 = *(v184 + 16);
                v185 = *(v184 + 24);
                if (v186 >= v185 >> 1)
                {
                  v242 = sub_1003BEEBC(v185 > 1, v186 + 1, 1, v242);
                }

                (*(v169 + 8))(v182, v180);
                v187 = v242;
                v242[2] = (v186 + 1);
                v181(v187 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v186, v237, v180);
              }

              v148 = v248;
              sub_1004BC764();
            }

            while (*&v245[v148] != v263);
          }

          sub_100007214(v148, &qword_10060E518);
          swift_beginAccess();
          v155 = swift_weakLoadStrong();
          v156 = v246;
          if (v155)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[1] = v156;

            sub_1004B85B4();
          }

          swift_beginAccess();
          v157 = swift_weakLoadStrong();
          v158 = v230;
          v159 = v242;
          if (v157)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v262[0] = v159;

            sub_1004B85B4();
          }

          v160 = v256;
          v211(v158, v210, v256);

          v161 = sub_1004B8094();
          v162 = sub_1004BC974();

          if (os_log_type_enabled(v161, v162))
          {
            v163 = swift_slowAlloc();
            v164 = swift_slowAlloc();
            v262[0] = v164;
            *v163 = 136315138;
            v165 = sub_1004BC2B4();
            v167 = v166;

            v168 = sub_1002C4260(v165, v167, v262);

            *(v163 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v161, v162, "[Management] pendingCollaborators=%s", v163, 0xCu);
            sub_100004C6C(v164);
          }

          else
          {
          }

          v193 = v158;
          v194 = v236;
          v236(v193, v160);
          v195 = v231;
          v211(v231, v210, v160);

          v196 = sub_1004B8094();
          v197 = sub_1004BC974();

          if (os_log_type_enabled(v196, v197))
          {
            v198 = v195;
            v199 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v262[0] = v200;
            *v199 = 136315138;
            v201 = sub_1004BC2B4();
            v202 = v194;
            v204 = v203;

            v205 = sub_1002C4260(v201, v204, v262);

            *(v199 + 4) = v205;
            _os_log_impl(&_mh_execute_header, v196, v197, "[Management] activeCollaborators=%s", v199, 0xCu);
            sub_100004C6C(v200);

            v202(v198, v256);
          }

          else
          {

            v194(v195, v160);
          }

          (v226)(v233, v239);
          (*(v254 + 8))(v235, v253);
          (*(v259 + 8))(v241, v258);
          goto LABEL_29;
        }

        swift_beginAccess();
        v127 = swift_weakLoadStrong();
        v128 = v218;
        v129 = v221;
        if (v127)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v130 = v216;
          sub_1004B85A4();

          v131 = v215;
          sub_1004BB854();
          (*(v225 + 8))(v130, v226);
          if ((v251)(v131, 1, v100) != 1)
          {
            v132 = v222;
            sub_1004BB834();
            (*(v126 + 8))(v131, v100);
            v133 = v220;
LABEL_38:
            sub_1004BB834();
            v134 = *(v217 + 48);
            v135 = v219;
            sub_10000F778(v132, v219, &qword_10060DEF0);
            sub_10000F778(v129, v135 + v134, &qword_10060DEF0);
            v136 = v128;
            v137 = *(v128 + 48);
            if (v137(v135, 1, v133) == 1)
            {
              sub_100007214(v129, &qword_10060DEF0);
              sub_100007214(v132, &qword_10060DEF0);
              if (v137(v135 + v134, 1, v133) == 1)
              {
                sub_100007214(v135, &qword_10060DEF0);
                goto LABEL_47;
              }
            }

            else
            {
              v138 = v214;
              sub_10000F778(v135, v214, &qword_10060DEF0);
              if (v137(v135 + v134, 1, v133) != 1)
              {
                v139 = v135 + v134;
                v140 = v213;
                (*(v136 + 32))(v213, v139, v133);
                sub_10034A084(&qword_10060E550, &type metadata accessor for Date);
                v141 = v138;
                v142 = sub_1004BBD84();
                v143 = *(v136 + 8);
                v143(v140, v133);
                sub_100007214(v221, &qword_10060DEF0);
                sub_100007214(v222, &qword_10060DEF0);
                v143(v141, v133);
                sub_100007214(v135, &qword_10060DEF0);
                if (v142)
                {
                  goto LABEL_47;
                }

LABEL_44:
                swift_beginAccess();
                if (swift_weakLoadStrong())
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  LOBYTE(v263) = 0;
                  sub_1004B85B4();
                }

                goto LABEL_47;
              }

              sub_100007214(v221, &qword_10060DEF0);
              sub_100007214(v222, &qword_10060DEF0);
              (*(v136 + 8))(v138, v133);
            }

            sub_100007214(v135, &qword_10060E520);
            goto LABEL_44;
          }

          sub_100007214(v131, &qword_10060DEE8);
        }

        v132 = v222;
        v133 = v220;
        (*(v128 + 56))(v222, 1, 1, v220);
        goto LABEL_38;
      }
    }
  }

  return result;
}

uint64_t sub_10032D4CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();
}

uint64_t sub_10032D544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();
}

uint64_t sub_10032D5C0(uint64_t a1)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  sub_1004B85B4();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10032D780()
{
  v0 = sub_1004BB794();
  v33 = *(v0 - 8);
  __chkstk_darwin(v0);
  v31 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003ABC(&qword_10060DF00);
  __chkstk_darwin(v34);
  v3 = &v30 - v2;
  v4 = sub_1004BBA84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_100003ABC(&qword_10060DF08);
  __chkstk_darwin(v11 - 8);
  v32 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  __chkstk_darwin(v16);
  v18 = &v30 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BB854();
  (*(v5 + 8))(v7, v4);
  v19 = sub_1004BB844();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    sub_100007214(v10, &qword_10060DEE8);
    v21 = v33;
    (*(v33 + 56))(v18, 1, 1, v0);
  }

  else
  {
    sub_1004BB814();
    (*(v20 + 8))(v10, v19);
    v21 = v33;
  }

  (*(v21 + 104))(v15, enum case for Playlist.Collaborator.Status.pending(_:), v0);
  (*(v21 + 56))(v15, 0, 1, v0);
  v22 = *(v34 + 48);
  sub_10000F778(v18, v3, &qword_10060DF08);
  sub_10000F778(v15, &v3[v22], &qword_10060DF08);
  v23 = *(v21 + 48);
  if (v23(v3, 1, v0) != 1)
  {
    v25 = v32;
    sub_10000F778(v3, v32, &qword_10060DF08);
    if (v23(&v3[v22], 1, v0) != 1)
    {
      v26 = v31;
      (*(v21 + 32))(v31, &v3[v22], v0);
      sub_10034A084(&unk_10060DF10, &type metadata accessor for Playlist.Collaborator.Status);
      v27 = v25;
      v24 = sub_1004BBD84();
      v28 = *(v21 + 8);
      v28(v26, v0);
      sub_100007214(v15, &qword_10060DF08);
      sub_100007214(v18, &qword_10060DF08);
      v28(v27, v0);
      sub_100007214(v3, &qword_10060DF08);
      return v24 & 1;
    }

    sub_100007214(v15, &qword_10060DF08);
    sub_100007214(v18, &qword_10060DF08);
    (*(v21 + 8))(v25, v0);
    goto LABEL_9;
  }

  sub_100007214(v15, &qword_10060DF08);
  sub_100007214(v18, &qword_10060DF08);
  if (v23(&v3[v22], 1, v0) != 1)
  {
LABEL_9:
    sub_100007214(v3, &qword_10060DF00);
    v24 = 0;
    return v24 & 1;
  }

  sub_100007214(v3, &qword_10060DF08);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_10032DDBC()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v6[15] == 1 && (sub_10032E4DC() & 1) == 0)
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    v4 = sub_1004BB924();
    (*(v1 + 8))(v3, v0);
  }

  return v4 & 1;
}

uint64_t sub_10032DF34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    sub_1002CBD78(v1);
  }

  return v1;
}

uint64_t sub_10032E098()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1004BBDF4();
  __chkstk_darwin(v8 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v9 = *(v16 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10 = *(v16 + 16);

  if (v10 == 1)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1004BBDE4();
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    sub_1004BBDD4(v17);
    v16 = v9;
    sub_1004BBDB4();
    v11._countAndFlagsBits = 0xD000000000000012;
    v11._object = 0x8000000100508EE0;
  }

  else
  {
    sub_1004BBDE4();
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    sub_1004BBDD4(v18);
    v16 = v10;
    sub_1004BBDB4();
    if (v9)
    {
      v19._countAndFlagsBits = 0x2064656E696F6A20;
      v19._object = 0xAC00000020A280E2;
      sub_1004BBDD4(v19);
      v16 = v9;
      sub_1004BBDB4();
      v11._countAndFlagsBits = 0x676E69646E657020;
      v11._object = 0xE800000000000000;
    }

    else
    {
      v11._object = 0x8000000100508EC0;
      v11._countAndFlagsBits = 0xD000000000000011;
    }
  }

  sub_1004BBDD4(v11);
  sub_1004BBE04();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v13 = qword_100618C60;
  sub_1004B6DF4();
  v12 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v12;
}

uint64_t sub_10032E4DC()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1004B6CD4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v22 = &v22 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BB854();
  (*(v1 + 8))(v3, v0);
  v15 = sub_1004BB844();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v6, 1, v15) == 1)
  {
    sub_100007214(v6, &qword_10060DEE8);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  else
  {
    sub_1004BB834();
    (*(v16 + 8))(v6, v15);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v18 = v22;
      (*(v11 + 32))(v22, v9, v10);
      v19 = v23;
      sub_1004B6CC4();
      v17 = sub_1004B6C44();
      v20 = *(v11 + 8);
      v20(v19, v10);
      v20(v18, v10);
      return v17 & 1;
    }
  }

  sub_100007214(v9, &qword_10060DEF0);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10032E8AC()
{
  v1 = v0;
  v2 = sub_1004BBDF4();
  __chkstk_darwin(v2 - 8);
  v68 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B6F34();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B67C4();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004BBE14();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v70 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v66 - v13;
  v14 = sub_1004BBA84();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v66 - v18;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  v22 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v22 - 8);
  v24 = &v66 - v23;
  v25 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v25 - 8);
  v27 = &v66 - v26;
  v28 = sub_1004B6CD4();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v75 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v84 = &v66 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  v83 = v1;
  sub_1004B85A4();

  sub_1004BB854();
  v33 = *(v15 + 8);
  v82 = v14;
  v33(v21, v14);
  v34 = sub_1004BB844();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v24, 1, v34) == 1)
  {
    sub_100007214(v24, &qword_10060DEE8);
    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_4:
    sub_100007214(v27, &qword_10060DEF0);
    return 0;
  }

  sub_1004BB834();
  (*(v35 + 8))(v24, v34);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_4;
  }

  v37 = *(v29 + 32);
  v66 = v28;
  v37(v84, v27, v28);
  v38 = v29;
  if (sub_10032E4DC() & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), v39 = v69, sub_1004B85A4(), , , v40 = sub_1004BB924(), v33(v39, v82), v40 != 2) && (v40)
  {
    v41 = v72;
    sub_1004BBDA4();
    v43 = v73;
    v42 = v74;
    (*(v73 + 16))(v70, v41, v74);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v44 = qword_100618C60;
    sub_1004B6DF4();
    v45 = sub_1004BBED4();
    (*(v43 + 8))(v41, v42);
    (*(v38 + 8))(v84, v66);
  }

  else
  {
    v46 = v76;
    sub_1004B6EC4();
    sub_100003ABC(&qword_10060DEF8);
    v47 = sub_1004B6F24();
    v48 = *(v47 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1004C50A0;
    (*(v48 + 104))(v50 + v49, enum case for Calendar.Component.day(_:), v47);
    sub_1002C6C58(v50);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v47);
    swift_deallocClassInstance();
    v51 = v75;
    sub_1004B6CC4();
    v52 = v79;
    v53 = v84;
    sub_1004B6EB4();

    v54 = *(v38 + 8);
    v55 = v66;
    v54(v51, v66);
    (*(v77 + 8))(v46, v78);
    v56 = sub_1004B6794();
    if (v57)
    {
      (*(v80 + 8))(v52, v81);
      v54(v53, v55);
      return 0;
    }

    v58 = v56;
    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v67;
    sub_1004B85A4();

    v60 = sub_1004BB924();
    v33(v59, v82);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      sub_1004BBDE4();
      v87._object = 0x8000000100508DC0;
      v87._countAndFlagsBits = 0xD000000000000010;
      sub_1004BBDD4(v87);
      v85 = v58;
      sub_1004BBDB4();
      v61._countAndFlagsBits = 0x2E29732879616420;
      v61._object = 0xE800000000000000;
    }

    else
    {
      sub_1004BBDE4();
      v86._object = 0x8000000100508DC0;
      v86._countAndFlagsBits = 0xD000000000000010;
      sub_1004BBDD4(v86);
      v85 = v58;
      sub_1004BBDB4();
      v61._countAndFlagsBits = 0xD00000000000006CLL;
      v61._object = 0x8000000100508DE0;
    }

    sub_1004BBDD4(v61);
    v62 = v72;
    sub_1004BBE04();
    v64 = v73;
    v63 = v74;
    (*(v73 + 16))(v70, v62, v74);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v65 = qword_100618C60;
    sub_1004B6DF4();
    v45 = sub_1004BBED4();
    (*(v64 + 8))(v62, v63);
    (*(v80 + 8))(v52, v81);
    v54(v53, v66);
  }

  return v45;
}

uint64_t sub_10032F420@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  if (sub_10032E4DC())
  {
    v9 = sub_1004B6B04();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004B85A4();

    sub_1004BB854();
    (*(v3 + 8))(v5, v2);
    v12 = sub_1004BB844();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      sub_100007214(v8, &qword_10060DEE8);
      v14 = sub_1004B6B04();
      return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
    }

    else
    {
      sub_1004BB7E4();
      return (*(v13 + 8))(v8, v12);
    }
  }
}

uint64_t sub_10032F6D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003ABC(&qword_10060D318);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  swift_beginAccess();
  sub_10000F778(v1 + v9, v8, &qword_10060D318);
  v10 = sub_100003ABC(&qword_10060EF20);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100025B04(v8, a1, &qword_10060EF20);
  }

  sub_100007214(v8, &qword_10060D318);
  sub_10032F8E4(a1);
  sub_10000F778(a1, v5, &qword_10060EF20);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_100047A5C(v5, v1 + v9, &qword_10060D318);
  return swift_endAccess();
}

uint64_t sub_10032F8E4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1004BBA84();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BB6C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_1004BBA64();
  (*(v5 + 8))(v7, v4);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_100007214(v3, &unk_10060EBE0);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v12 - 8) + 56))(v19, 1, 1, v12);
  }

  else
  {
    (*(v9 + 32))(v11, v3, v8);
    v14 = v19;
    (*(v9 + 16))(v19, v11, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    sub_1004BB5B4();
    (*(v9 + 8))(v11, v8);
    v17 = sub_1004BB634();
    (*(*(v17 - 8) + 56))(v14 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }
}

uint64_t sub_10032FC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = sub_1004BBA84();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10032FCFC, 0, 0);
}

uint64_t sub_10032FCFC()
{
  *(v0 + 56) = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10032FE04;
  v2 = *(v0 + 48);
  v3 = *(v0 + 80);

  return Collaboration.Manager.updateShareOption(_:for:)(v3, v2);
}

uint64_t sub_10032FE04()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100350884;
  }

  else
  {
    (*(v4 + 8))(v2[6], v2[4]);

    v6 = sub_10032FFC0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10032FFC0()
{
  **(v0 + 16) = *(v0 + 72) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004BBA84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_100330100, 0, 0);
}

uint64_t sub_100330100()
{
  v0[7] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100330204;
  v3 = v0[5];
  v2 = v0[6];

  return Collaboration.Manager.end(_:)(v2, v3);
}

uint64_t sub_100330204()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_100330400;
  }

  else
  {
    v5 = v2[5];
    v4 = v2[6];
    v8 = v2 + 3;
    v6 = v2[3];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100330398;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100330398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330400()
{
  v0[10] = *(v0[2] + 16);
  sub_1004BC474();

  v0[11] = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_1003304A8, v2, v1);
}

uint64_t sub_1003304A8()
{
  v1 = *(v0 + 72);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100330524, 0, 0);
}

uint64_t sub_100330524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1004BBA84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1004B6B04();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003306B0, 0, 0);
}

uint64_t sub_1003306B0()
{
  v0[9] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1003307B8;
  v2 = v0[8];
  v3 = v0[5];

  return Collaboration.Manager.resetInvitationURL(_:)(v2, v3);
}

uint64_t sub_1003307B8()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v3 = sub_1003309C8;
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v10 = v2 + 3;
    v8 = v2[3];
    v9 = v10[1];

    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
    v3 = sub_10033095C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10033095C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003309C8()
{
  v1 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = 0;

  sub_1004B85B4();
  *(v0 + 96) = *(v1 + 16);
  sub_1004BC474();

  *(v0 + 104) = sub_1004BC464();
  v3 = sub_1004BC3E4();

  return _swift_task_switch(sub_100330ABC, v3, v2);
}

uint64_t sub_100330ABC()
{
  v1 = *(v0 + 88);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100330B38, 0, 0);
}

uint64_t sub_100330B38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330BAC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  v5 = sub_100003ABC(&unk_10060DB30);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_1004BB7D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v20 - v13;
  sub_10000F778(a1, v7, &unk_10060DB30);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007214(v7, &unk_10060DB30);
    result = sub_1004BD624();
    __break(1u);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    v16 = sub_1004BC4B4();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    (*(v9 + 16))(v11, v14, v8);
    v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = v20[1];
    v15(&v18[v17], v11, v8);

    sub_1002E0EEC(0, 0, v4, &unk_1004E1410, v18);

    return (*(v9 + 8))(v14, v8);
  }

  return result;
}

uint64_t sub_100330EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1004BBA84();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100330FBC, 0, 0);
}

uint64_t sub_100330FBC()
{
  v0[8] = *(v0[2] + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1003310C4;
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[3];

  return Collaboration.Manager.remove(collaborator:in:)(v2, v4, v3);
}

uint64_t sub_1003310C4()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    v3 = sub_1003312C0;
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v8 = v2 + 4;
    v6 = v2[4];
    v7 = v8[1];

    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    v3 = sub_100331258;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100331258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003312C0()
{
  v0[11] = *(v0[2] + 16);
  sub_1004BC474();

  v0[12] = sub_1004BC464();
  v2 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331368, v2, v1);
}

uint64_t sub_100331368()
{
  v1 = *(v0 + 80);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_1003313E4, 0, 0);
}

uint64_t sub_1003313E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331454(uint64_t a1, int a2)
{
  v21 = a1;
  v23 = a2;
  v3 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v3 - 8);
  v22 = &v20 - v4;
  v5 = sub_1004BB7D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(v8, a1, v5, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = sub_1004B8594();
  sub_100348A00(v12, v8);
  (*(v6 + 8))(v12, v5);
  v14(v24, 0);

  v15 = sub_1004BC4B4();
  v16 = v22;
  (*(*(v15 - 8) + 56))(v22, 1, 1, v15);
  (v13)(v12, v21, v5);
  v17 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v20;
  *(v18 + 40) = v23 & 1;
  (*(v6 + 32))(v18 + v17, v12, v5);

  sub_1002E0EEC(0, 0, v16, &unk_1004E13E8, v18);
}

uint64_t sub_100331728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a5;
  *(v6 + 16) = a4;
  *(v6 + 24) = a6;
  v7 = sub_1004BB7D4();
  *(v6 + 32) = v7;
  v8 = *(v7 - 8);
  *(v6 + 40) = v8;
  *(v6 + 48) = *(v8 + 64);
  *(v6 + 56) = swift_task_alloc();
  sub_100003ABC(&qword_10060F8D0);
  *(v6 + 64) = swift_task_alloc();
  v9 = sub_1004BBA84();
  *(v6 + 72) = v9;
  *(v6 + 80) = *(v9 - 8);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100331888, 0, 0);
}

uint64_t sub_100331888()
{
  v1 = *(v0 + 136);
  *(v0 + 96) = *(*(v0 + 16) + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1004B85A4();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100331998;
  v3 = *(v0 + 88);
  v4 = *(v0 + 24);

  return Collaboration.Manager.moderate(_:collaborator:in:)(v1 & 1, v4, v3);
}

uint64_t sub_100331998()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {

    return _swift_task_switch(sub_100331B84, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100331B84()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v4, v5);
  sub_1004BC474();

  v8 = sub_1004BC464();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v8;
  *(v10 + 3) = &protocol witness table for MainActor;
  *(v10 + 4) = v6;
  (*(v3 + 32))(&v10[v9], v2, v5);
  sub_1002E1500(0, 0, v1, &unk_1004E13F8, v10);

  v0[15] = *(v6 + 16);

  v0[16] = sub_1004BC464();
  v12 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331D44, v12, v11);
}

uint64_t sub_100331D44()
{
  v1 = *(v0 + 112);

  Collaboration.Manager.handleError(_:)(v1);

  return _swift_task_switch(sub_100331DC0, 0, 0);
}

uint64_t sub_100331DC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100331E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  sub_1004BC474();
  v5[9] = sub_1004BC464();
  v7 = sub_1004BC3E4();

  return _swift_task_switch(sub_100331ED8, v7, v6);
}

uint64_t sub_100331ED8()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_1004B8594();
  sub_100347BA0(v1, v2);
  v3(v0 + 2, 0);

  v4 = v0[1];

  return v4();
}

uint64_t Collaboration.Management.Model.deinit()
{

  v1 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  v2 = sub_100003ABC(&qword_10060D2B8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators, v2);
  v4 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  v5 = sub_100003ABC(&qword_10060D2D0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__playlist;
  v7 = sub_100003ABC(&qword_10060D2E0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isOpen;
  v9 = sub_100003ABC(&qword_10060D2F0);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss, v9);
  v10(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity, v9);
  sub_100007214(v0 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel, &qword_10060D318);

  return v0;
}

uint64_t Collaboration.Management.Model.__deallocating_deinit()
{
  Collaboration.Management.Model.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100332244@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Collaboration.Management.Model(0);
  result = sub_1004B8534();
  *a1 = result;
  return result;
}

uint64_t Collaboration.Management.View.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = v2[5];
  *(a1 + v3) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E80);
  swift_storeEnumTagMultiPayload();
  v4 = v2[6];
  *(a1 + v4) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340);
  swift_storeEnumTagMultiPayload();
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  sub_100003ABC(&unk_100609E90);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  sub_100003ABC(&qword_10060D350);
  sub_1004BA414();
  *(a1 + v6) = v13;
  v7 = a1 + v2[9];
  sub_1004BA414();
  *v7 = v13;
  *(v7 + 1) = *(&v13 + 1);
  v8 = a1 + v2[10];
  sub_1004BA414();
  *v8 = v13;
  *(v8 + 1) = *(&v13 + 1);
  v9 = a1 + v2[11];
  sub_1004BA414();
  *v9 = v13;
  *(v9 + 1) = *(&v13 + 1);
  v10 = a1 + v2[12];
  sub_1004BA414();
  *v10 = v13;
  *(v10 + 1) = *(&v13 + 1);
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model);
  result = sub_1004B8B74();
  *a1 = result;
  a1[1] = v12;
  return result;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.shareSheet()
{
  sub_100003ABC(&qword_10060D350);
  sub_1004BA414();
  return v1;
}

uint64_t property wrapper backing initializer of Collaboration.Management.View.viewModel()
{
  type metadata accessor for Collaboration.Management.Model(0);
  sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model);

  return sub_1004B8B74();
}

uint64_t Collaboration.Management.View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_100003ABC(&qword_10060D360);
  v6 = *(v5 - 8);
  v24 = v5;
  v25 = v6;
  __chkstk_darwin(v5);
  v8 = v22 - v7;
  v27 = v2;
  v22[1] = sub_100003ABC(&qword_10060D368);
  v9 = sub_100003B68(&qword_10060D370);
  v10 = sub_100003B68(&qword_10060D378);
  v11 = sub_100003B68(&qword_10060D380);
  v12 = sub_1004B95B4();
  v13 = sub_100349E64();
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_100003B68(&qword_10060D3B0);
  v16 = sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0);
  v28 = v15;
  v29 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v28 = v9;
  v29 = v10;
  v30 = OpaqueTypeConformance2;
  v31 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1004B8D74();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_10034BD68(v2, v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_10034BDD4(v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for Collaboration.Management.View);
  sub_1000206D4(&unk_10060D3C0, &qword_10060D360);
  v20 = v24;
  sub_1004BA144();

  return (*(v25 + 8))(v8, v20);
}

uint64_t sub_100332968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1004B95B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060D380);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v25 = sub_100003ABC(&qword_10060D370);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v24 = a1;
  v27 = a1;
  sub_100003ABC(&qword_10060E058);
  sub_1000206D4(&qword_10060E060, &qword_10060E058);
  sub_1004B9B64();
  KeyPath = swift_getKeyPath();
  if (qword_100609C40 != -1)
  {
    v22 = KeyPath;
    swift_once();
    KeyPath = v22;
  }

  v14 = qword_10060D1F8;
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v14;
  sub_1004B95A4();
  v16 = sub_100349E64();
  sub_1004BA1A4();
  (*(v4 + 8))(v6, v3);
  v17 = sub_100007214(v9, &qword_10060D380);
  __chkstk_darwin(v17);
  *(&v23 - 2) = v24;
  sub_100003ABC(&qword_10060D378);
  v28 = v7;
  v29 = v3;
  v30 = v16;
  v31 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v18 = sub_100003B68(&qword_10060D3B0);
  v19 = sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0);
  v28 = v18;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_1004BA114();
  return (*(v10 + 8))(v12, v20);
}

uint64_t sub_100332D68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v168 = a2;
  v166 = sub_100003ABC(&qword_10060E078);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v131 = &v130 - v3;
  v162 = sub_1004BBA84();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060E080);
  __chkstk_darwin(v5 - 8);
  v167 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v164 = &v130 - v8;
  v9 = sub_100003ABC(&qword_10060E088);
  v171 = *(v9 - 8);
  v172 = v9;
  __chkstk_darwin(v9);
  v139 = &v130 - v10;
  v138 = sub_100003ABC(&qword_10060E090);
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v151 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v150 = &v130 - v13;
  v135 = sub_100003ABC(&qword_10060E098);
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v130 - v14;
  v15 = sub_100003ABC(&qword_10060E0A0);
  __chkstk_darwin(v15 - 8);
  v136 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v149 = &v130 - v18;
  v19 = sub_1004B6E64();
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1004BBE14();
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v169 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v170 = &v130 - v23;
  v148 = sub_100003ABC(&qword_10060E0A8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v144 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v152 = &v130 - v26;
  v147 = sub_1004BB7D4();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v133 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v143 = &v130 - v29;
  v30 = sub_100003ABC(&qword_10060E0B0);
  __chkstk_darwin(v30 - 8);
  v163 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v175 = &v130 - v33;
  v156 = sub_1004B8704();
  v34 = *(v156 - 8);
  __chkstk_darwin(v156);
  v36 = &v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100003ABC(&qword_10060E0B8);
  __chkstk_darwin(v173);
  v38 = &v130 - v37;
  v154 = sub_100003ABC(&qword_10060E0C0);
  v155 = *(v154 - 8);
  __chkstk_darwin(v154);
  v40 = &v130 - v39;
  v159 = sub_100003ABC(&qword_10060E0C8);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v130 - v43;
  v174 = a1;
  v176 = a1;
  sub_100336DB8(a1, v38);
  v153 = sub_100003ABC(&qword_10060E0D0);
  v45 = sub_100003B68(&qword_10060E0D8);
  v46 = sub_100003B68(&qword_10060E0E0);
  v47 = sub_10034E114();
  v48 = sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &unk_1004E17C8, sub_10034E274);
  v177 = v45;
  v178 = v46;
  v179 = v47;
  v180 = v48;
  swift_getOpaqueTypeConformance2();
  sub_10034E3B8();
  sub_1004BA6A4();
  v49 = v156;
  (*(v34 + 104))(v36, enum case for Prominence.increased(_:), v156);
  sub_10034E468();
  v173 = v44;
  v50 = v154;
  sub_1004B9F34();
  v51 = v36;
  v52 = v175;
  (*(v34 + 8))(v51, v49);
  (*(v155 + 8))(v40, v50);
  v53 = *(v174 + 8);
  v54 = sub_10032D780();
  v56 = v171;
  v55 = v172;
  if ((v54 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (!*(v177 + 16))
  {

    v52 = v175;
    v56 = v171;
    v55 = v172;
LABEL_9:
    (*(v56 + 56))(v52, 1, 1, v55);
    v79 = v164;
    v80 = v170;
    goto LABEL_11;
  }

  v57 = v145;
  v58 = v133;
  v59 = v147;
  (*(v145 + 16))(v133, v177 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v147);

  v60 = (*(v57 + 32))(v143, v58, v59);
  __chkstk_darwin(v60);
  v61 = v170;
  sub_1004BBDA4();
  v62 = v140;
  v63 = v142;
  (*(v140 + 16))(v169, v61, v142);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v64 = qword_100618C60;
  sub_1004B6DF4();
  v65 = sub_1004BBED4();
  v67 = v66;
  (*(v62 + 8))(v61, v63);
  v177 = v65;
  v178 = v67;
  sub_1002C4D1C();
  v177 = sub_1004B9D84();
  v178 = v68;
  LOBYTE(v179) = v69 & 1;
  v180 = v70;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_1004BA6A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v156 = v53;
  if (v177 == 1)
  {
    __chkstk_darwin(v71);
    sub_100003ABC(&qword_10060E1C0);
    v72 = sub_100003B68(&qword_10060E1C8);
    v73 = sub_100003B68(&qword_10060E1D0);
    v74 = sub_1004B9594();
    v75 = sub_1000206D4(&qword_10060E1D8, &qword_10060E1D0);
    v76 = sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle);
    v177 = v73;
    v178 = v74;
    v179 = v75;
    v180 = v76;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v177 = v72;
    v178 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v78 = v132;
    sub_1004BA6C4();
    v84 = v134;
    v82 = v149;
    v83 = v135;
    (*(v134 + 32))(v149, v78, v135);
    v81 = 0;
  }

  else
  {
    v81 = 1;
    v82 = v149;
    v83 = v135;
    v84 = v134;
  }

  v85 = (*(v84 + 56))(v82, v81, 1, v83);
  __chkstk_darwin(v85);
  sub_10033BF6C(&v177);
  sub_100003ABC(&qword_10060E1A8);
  sub_10034E5C8();
  v86 = v150;
  sub_1004BA6A4();
  v87 = *(v146 + 16);
  v88 = v144;
  v89 = v148;
  v87(v144, v152, v148);
  v90 = v82;
  v91 = v136;
  sub_10000F778(v90, v136, &qword_10060E0A0);
  v92 = v137;
  v93 = *(v137 + 16);
  v94 = v138;
  v93(v151, v86, v138);
  v95 = v139;
  v87(v139, v88, v89);
  v96 = sub_100003ABC(&qword_10060E1B8);
  sub_10000F778(v91, v95 + *(v96 + 48), &qword_10060E0A0);
  v97 = v151;
  v93((v95 + *(v96 + 64)), v151, v94);
  v98 = *(v92 + 8);
  v98(v150, v94);
  sub_100007214(v149, &qword_10060E0A0);
  v99 = *(v146 + 8);
  v100 = v148;
  v99(v152, v148);
  v98(v97, v94);
  sub_100007214(v91, &qword_10060E0A0);
  v99(v144, v100);
  v52 = v175;
  sub_100025B04(v95, v175, &qword_10060E088);
  (*(v171 + 56))(v52, 0, 1, v172);
  (*(v145 + 8))(v143, v147);
  v80 = v170;
  v79 = v164;
LABEL_11:
  v101 = v169;
  swift_getKeyPath();
  swift_getKeyPath();
  v102 = v160;
  sub_1004B85A4();

  v103 = sub_1004BB924();
  (*(v161 + 8))(v102, v162);
  if (v103 != 2 && (v103 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), sub_1004B85A4(), , v104 = , v177 == 1))
  {
    __chkstk_darwin(v104);
    sub_1004BBDA4();
    v105 = v140;
    v106 = v142;
    (*(v140 + 16))(v101, v80, v142);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v107 = qword_100618C60;
    sub_1004B6DF4();
    v108 = sub_1004BBED4();
    v110 = v109;
    (*(v105 + 8))(v80, v106);
    v177 = v108;
    v178 = v110;
    sub_1002C4D1C();
    v181 = sub_1004B9D84();
    v182 = v111;
    v183 = v112 & 1;
    v184 = v113;
    sub_10033C8B4(&v177);
    sub_100003ABC(&unk_10060E170);
    sub_100003ABC(&qword_10060C328);
    sub_1000206D4(&unk_10060E180, &unk_10060E170);
    sub_100307870();
    v114 = v131;
    sub_1004BA6B4();
    v115 = v165;
    v116 = v114;
    v117 = v166;
    (*(v165 + 32))(v79, v116, v166);
    v118 = v117;
    v119 = 0;
  }

  else
  {
    v119 = 1;
    v118 = v166;
    v115 = v165;
  }

  (*(v115 + 56))(v79, v119, 1, v118);
  v120 = v158;
  v121 = *(v158 + 16);
  v122 = v157;
  v123 = v159;
  v121(v157, v173, v159);
  v124 = v163;
  sub_10000F778(v52, v163, &qword_10060E0B0);
  v125 = v167;
  sub_10000F778(v79, v167, &qword_10060E080);
  v126 = v168;
  v121(v168, v122, v123);
  v127 = sub_100003ABC(&qword_10060E168);
  sub_10000F778(v124, &v126[*(v127 + 48)], &qword_10060E0B0);
  sub_10000F778(v125, &v126[*(v127 + 64)], &qword_10060E080);
  sub_100007214(v79, &qword_10060E080);
  sub_100007214(v175, &qword_10060E0B0);
  v128 = *(v120 + 8);
  v128(v173, v123);
  sub_100007214(v125, &qword_10060E080);
  sub_100007214(v124, &qword_10060E0B0);
  return (v128)(v122, v123);
}

uint64_t sub_1003344B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100003ABC(&qword_10060E158);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v71 = &v61 - v4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060E1A8);
  v67 = *(v7 - 8);
  v68 = v7;
  __chkstk_darwin(v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v61 - v10;
  v11 = sub_1004B9754();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003ABC(&qword_10060E388);
  __chkstk_darwin(v15);
  v17 = &v61 - v16;
  v18 = sub_100003ABC(&qword_10060E390);
  v64 = *(v18 - 8);
  v65 = v18;
  __chkstk_darwin(v18);
  v69 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v61 - v21;
  v23 = a1;
  if (sub_10032D780())
  {
    v24 = v73;
    v25 = *(v72 + 56);
    v26 = v74;

    return v25(v26, 1, 1, v24);
  }

  else
  {
    *v17 = sub_1004B9204();
    *(v17 + 1) = 0x4028000000000000;
    v17[16] = 0;
    v28 = sub_100003ABC(&qword_10060E398);
    sub_100334C68(a1, &v17[*(v28 + 44)]);
    v29 = sub_1004B9954();
    sub_1004B86C4();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = &v17[*(sub_100003ABC(&qword_10060E3A0) + 36)];
    *v38 = v29;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    v39 = &v17[*(sub_100003ABC(&qword_10060E3A8) + 36)];
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = sub_1004B9334();
    v41 = &v17[*(v15 + 36)];
    *v41 = v40;
    v41[1] = sub_100336D90;
    v41[2] = 0;
    sub_1004B9744();
    sub_10034F2B4();
    v61 = v22;
    sub_1004B9FF4();
    (*(v12 + 8))(v14, v11);
    sub_100007214(v17, &qword_10060E388);
    v75 = sub_10032DF34();
    v42 = v23;
    v43 = v63;
    sub_10034BD68(v42, v63, type metadata accessor for Collaboration.Management.View);
    v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v45 = swift_allocObject();
    sub_10034BDD4(v43, v45 + v44, type metadata accessor for Collaboration.Management.View);
    sub_100003ABC(&qword_10060D2A0);
    _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
    sub_1000206D4(&qword_10060E208, &qword_10060D2A0);
    sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    sub_10034A084(&qword_10060E210, &type metadata accessor for Playlist.Collaborator);
    v46 = v70;
    sub_1004BA664();
    v48 = v64;
    v47 = v65;
    v49 = *(v64 + 16);
    v50 = v69;
    v49(v69, v61, v65);
    v52 = v66;
    v51 = v67;
    v53 = *(v67 + 16);
    v54 = v46;
    v55 = v68;
    v53(v66, v54, v68);
    v49(v71, v50, v47);
    v56 = sub_100003ABC(&qword_10060E3D8);
    v57 = v71;
    v53(&v71[*(v56 + 48)], v52, v55);
    v58 = *(v51 + 8);
    v58(v70, v55);
    v59 = *(v48 + 8);
    v59(v61, v47);
    v58(v52, v55);
    v59(v69, v47);
    v60 = v74;
    sub_100025B04(v57, v74, &qword_10060E158);
    return (*(v72 + 56))(v60, 0, 1, v73);
  }
}

uint64_t sub_100334C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v3 = sub_100003ABC(&qword_10060E3E0);
  v167 = *(v3 - 8);
  v168 = v3;
  __chkstk_darwin(v3);
  v162 = (&v138 - v4);
  v161 = sub_100003ABC(&qword_10060DE78);
  __chkstk_darwin(v161);
  v153 = &v138 - v5;
  v6 = type metadata accessor for Collaboration.Management.View(0);
  v146 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = v7;
  v148 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100003ABC(&qword_10060E3E8);
  __chkstk_darwin(v150);
  v149 = &v138 - v8;
  v145 = sub_100003ABC(&qword_10060E3F0);
  __chkstk_darwin(v145);
  v151 = &v138 - v9;
  v158 = sub_100003ABC(&qword_10060E3F8);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v152 = &v138 - v10;
  v11 = sub_100003ABC(&qword_10060E400);
  v159 = *(v11 - 8);
  v160 = v11;
  __chkstk_darwin(v11);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v155 = &v138 - v14;
  v15 = sub_1004B6E64();
  __chkstk_darwin(v15 - 8);
  v142 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BBE14();
  v143 = *(v17 - 8);
  v144 = v17;
  __chkstk_darwin(v17);
  v19 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v141 = &v138 - v21;
  v22 = sub_1004BBA84();
  v139 = *(v22 - 8);
  v140 = v22;
  __chkstk_darwin(v22);
  v138 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003ABC(&qword_10060E408);
  __chkstk_darwin(v24 - 8);
  v166 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v170 = &v138 - v27;
  v164 = sub_100003ABC(&qword_10060E410);
  v28 = *(v164 - 8);
  __chkstk_darwin(v164);
  v30 = &v138 - v29;
  v31 = sub_1004B8C94();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v138 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v138 - v36;
  v38 = sub_100003ABC(&qword_10060E418);
  __chkstk_darwin(v38 - 8);
  v165 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v171 = a1;
  v172 = &v138 - v41;
  v154 = v6;
  sub_100308A40(v37);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v42 = sub_100007084(v31, qword_10060D250);
  (*(v32 + 16))(v34, v42, v31);
  sub_10034A084(&qword_10060AC48, &type metadata accessor for DynamicTypeSize);
  v43 = sub_1004BBD54();
  v44 = *(v32 + 8);
  v44(v34, v31);
  v44(v37, v31);
  if (v43)
  {
    (*(v28 + 56))(v172, 1, 1, v164);
    v45 = v19;
  }

  else
  {
    v46 = sub_1004BA324();
    v45 = v19;
    if (qword_100609C38 != -1)
    {
      swift_once();
    }

    v47 = qword_10060D1F0;
    KeyPath = swift_getKeyPath();
    v49 = qword_100609C88;

    if (v49 != -1)
    {
      swift_once();
    }

    sub_1004BA754();
    sub_1004B8994();
    v50 = &v30[*(sub_100003ABC(&qword_10060E420) + 36)];
    v51 = *(sub_100003ABC(&qword_10060E428) + 28);
    sub_1004B9374();
    v52 = sub_1004B9384();
    (*(*(v52 - 8) + 56))(v50 + v51, 0, 1, v52);
    *v50 = swift_getKeyPath();
    *v30 = v46;
    *(v30 + 1) = KeyPath;
    *(v30 + 2) = v47;
    *(v30 + 56) = *&v177[16];
    v53 = v176;
    *(v30 + 40) = *v177;
    *(v30 + 24) = v53;
    if (qword_100609C90 != -1)
    {
      swift_once();
    }

    v54 = qword_10060D248;
    v55 = swift_getKeyPath();
    v56 = v164;
    v57 = &v30[*(v164 + 36)];
    *v57 = v55;
    v57[1] = v54;
    v58 = v172;
    sub_100025B04(v30, v172, &qword_10060E410);
    (*(v28 + 56))(v58, 0, 1, v56);
  }

  v164 = sub_1004B9354();
  v59 = 1;
  LOBYTE(v176) = 1;
  v60 = v171;
  sub_100336078(v171, v180);
  *&v179[7] = v180[0];
  *&v179[23] = v180[1];
  *&v179[39] = v180[2];
  *&v179[55] = v180[3];
  v163 = v176;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v176 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v61 = v138;
    sub_1004B85A4();

    v62 = sub_1004BB924();
    (*(v139 + 8))(v61, v140);
    if (v62 == 2 || (v62 & 1) == 0)
    {
      v63 = v141;
    }

    else
    {
      v63 = v141;
    }

    sub_1004BBDA4();
    v65 = v143;
    v64 = v144;
    (*(v143 + 16))(v45, v63, v144);
    v66 = v145;
    v67 = v151;
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v68 = qword_100618C60;
    sub_1004B6DF4();
    v69 = sub_1004BBED4();
    v71 = v70;
    (*(v65 + 8))(v63, v64);
    v145 = v69;
    *&v176 = v69;
    *(&v176 + 1) = v71;
    v72 = v148;
    sub_10034BD68(v60, v148, type metadata accessor for Collaboration.Management.View);
    v73 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v74 = swift_allocObject();
    sub_10034BDD4(v72, v74 + v73, type metadata accessor for Collaboration.Management.View);
    sub_1002C4D1C();

    v75 = v149;
    sub_1004BA4A4();
    v76 = sub_1004B9A34();
    v77 = swift_getKeyPath();
    v78 = (v75 + *(v150 + 36));
    *v78 = v77;
    v78[1] = v76;
    sub_1004B9AA4();
    sub_10034F5F4();
    sub_1004B9DE4();
    sub_100007214(v75, &qword_10060E3E8);
    v79 = sub_1004BA2B4();
    v80 = swift_getKeyPath();
    v81 = &v67[*(sub_100003ABC(&qword_10060E448) + 36)];
    *v81 = v80;
    v81[1] = v79;
    if (qword_100609C78 != -1)
    {
      swift_once();
    }

    sub_1004BA754();
    sub_1004B8994();
    v82 = &v67[*(sub_100003ABC(&qword_10060E450) + 36)];
    v83 = v180[5];
    *v82 = v180[4];
    *(v82 + 1) = v83;
    *(v82 + 2) = v180[6];
    v84 = sub_1004B9954();
    sub_1004B86C4();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = &v67[*(sub_100003ABC(&qword_10060E458) + 36)];
    *v93 = v84;
    *(v93 + 1) = v86;
    *(v93 + 2) = v88;
    *(v93 + 3) = v90;
    *(v93 + 4) = v92;
    v93[40] = 0;
    if (qword_100609AC0 != -1)
    {
      swift_once();
    }

    v151 = v71;
    v94 = static UIColor.MusicTint.normal;
    v95 = sub_1004BA304();
    v96 = sub_1004B9964();
    v97 = &v67[*(sub_100003ABC(&qword_10060E460) + 36)];
    *v97 = v95;
    v97[8] = v96;
    v98 = &v67[*(v66 + 36)];
    v99 = enum case for RoundedCornerStyle.continuous(_:);
    v100 = sub_1004B92C4();
    (*(*(v100 - 8) + 104))(v98, v99, v100);
    *&v98[*(sub_100003ABC(&qword_10060E468) + 36)] = 256;
    v101 = v66;
    v102 = v67;
    if (qword_100609CA0 != -1)
    {
      swift_once();
    }

    v103 = v161;
    v104 = sub_100007084(v161, qword_10060D268);
    v105 = v153;
    sub_10000F778(v104, v153, &qword_10060DE78);
    v150 = sub_10034F6D8();
    v106 = sub_1000206D4(&qword_10060DEB0, &qword_10060DE78);
    v107 = v152;
    sub_1004B9EE4();
    sub_100007214(v105, &qword_10060DE78);
    sub_100007214(v102, &qword_10060E3F0);
    v108 = (v171 + *(v154 + 11));
    v109 = *v108;
    v110 = *(v108 + 1);
    LOBYTE(v173) = v109;
    v174 = v110;
    sub_100003ABC(&qword_10060C3C8);
    v111 = sub_1004BA444();
    v154 = &v138;
    __chkstk_darwin(v111);
    v112 = v145;
    *(&v138 - 4) = v113;
    *(&v138 - 3) = v112;
    *(&v138 - 2) = v151;
    *&v176 = v101;
    *(&v176 + 1) = v103;
    *v177 = v150;
    *&v177[8] = v106;
    swift_getOpaqueTypeConformance2();
    v114 = v155;
    v115 = v158;
    sub_1004BA074();

    (*(v156 + 8))(v107, v115);
    v117 = v159;
    v116 = v160;
    v118 = *(v159 + 16);
    v119 = v157;
    v118(v157, v114, v160);
    v120 = v162;
    *v162 = 0;
    *(v120 + 8) = 1;
    v121 = sub_100003ABC(&qword_10060E4B0);
    v118((v120 + *(v121 + 48)), v119, v116);
    v122 = *(v117 + 8);
    v122(v114, v116);
    v122(v119, v116);
    sub_100025B04(v120, v170, &qword_10060E3E0);
    v59 = 0;
  }

  v123 = v170;
  (*(v167 + 56))(v170, v59, 1, v168);
  v124 = v172;
  v125 = v165;
  sub_10000F778(v172, v165, &qword_10060E418);
  v126 = v166;
  sub_10000F778(v123, v166, &qword_10060E408);
  v127 = v169;
  sub_10000F778(v125, v169, &qword_10060E418);
  v128 = sub_100003ABC(&qword_10060E430);
  v129 = v127 + *(v128 + 48);
  v130 = v164;
  v173 = v164;
  v174 = 0;
  v131 = v163;
  v175[0] = v163;
  *&v175[1] = *v179;
  *&v175[17] = *&v179[16];
  *&v175[33] = *&v179[32];
  *&v175[49] = *&v179[48];
  v132 = *&v179[63];
  *&v175[64] = *&v179[63];
  v133 = *v175;
  *v129 = v164;
  *(v129 + 16) = v133;
  v134 = *&v175[16];
  v135 = *&v175[32];
  v136 = *&v175[48];
  *(v129 + 80) = v132;
  *(v129 + 48) = v135;
  *(v129 + 64) = v136;
  *(v129 + 32) = v134;
  sub_10000F778(v126, v127 + *(v128 + 64), &qword_10060E408);
  sub_10000F778(&v173, &v176, &qword_10060E438);
  sub_100007214(v123, &qword_10060E408);
  sub_100007214(v124, &qword_10060E418);
  sub_100007214(v126, &qword_10060E408);
  v176 = v130;
  v177[0] = v131;
  *&v177[17] = *&v179[16];
  *&v177[33] = *&v179[32];
  *v178 = *&v179[48];
  *&v178[15] = *&v179[63];
  *&v177[1] = *v179;
  sub_100007214(&v176, &qword_10060E438);
  return sub_100007214(v125, &qword_10060E418);
}

uint64_t sub_100336078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v3 = sub_1004B6E64();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v56[-v9];
  sub_1004BBDA4();
  (*(v5 + 16))(v7, v10, v4);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v11 = qword_100618C60;
  sub_1004B6DF4();
  v12 = sub_1004BBED4();
  v14 = v13;
  (*(v5 + 8))(v10, v4);
  v61 = v12;
  v62 = v14;
  sub_1002C4D1C();
  v15 = sub_1004B9D84();
  v17 = v16;
  v19 = v18;
  LODWORD(v61) = sub_1004B9624();
  v20 = sub_1004B9C84();
  v22 = v21;
  v24 = v23;
  sub_10002FA24(v15, v17, v19 & 1);

  sub_1004B9B14();
  v25 = sub_1004B9CE4();
  v59 = v26;
  v28 = v27;
  v30 = v29;

  sub_10002FA24(v20, v22, v24 & 1);

  v31 = sub_10032E098();
  if (v32)
  {
    v61 = v31;
    v62 = v32;
    v33 = sub_1004B9D84();
    v35 = v34;
    v37 = v36;
    LODWORD(v61) = sub_1004B9654();
    v38 = sub_1004B9C84();
    v40 = v39;
    v57 = v28;
    v42 = v41;
    v60 = v30;
    sub_10002FA24(v33, v35, v37 & 1);

    sub_1004B9B24();
    v43 = sub_1004B9CE4();
    v45 = v44;
    v58 = a2;
    v46 = v25;
    v48 = v47;
    v50 = v49;

    v51 = v42 & 1;
    LOBYTE(v28) = v57;
    sub_10002FA24(v38, v40, v51);
    v30 = v60;

    v52 = v48 & 1;
    v25 = v46;
    a2 = v58;
    sub_10002FA14(v43, v45, v52);
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v52 = 0;
    v50 = 0;
  }

  v53 = v28 & 1;
  v54 = v59;
  sub_10002FA14(v25, v59, v53);

  sub_10034C318(v43, v45, v52, v50);
  sub_10034C3B0(v43, v45, v52, v50);
  LOBYTE(v61) = v53;
  *a2 = v25;
  *(a2 + 8) = v54;
  *(a2 + 16) = v53;
  *(a2 + 24) = v30;
  *(a2 + 32) = v43;
  *(a2 + 40) = v45;
  *(a2 + 48) = v52;
  *(a2 + 56) = v50;
  sub_10034C3B0(v43, v45, v52, v50);
  sub_10002FA24(v25, v54, v53);
}

uint64_t sub_1003364FC(uint64_t a1)
{
  v2 = sub_1004B80B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Stop/Leave button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003366A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a2;
  v52 = a3;
  v59 = a4;
  v5 = type metadata accessor for Collaboration.Management.View(0);
  v53 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v54 = v6;
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BA214();
  __chkstk_darwin(v7 - 8);
  v58 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = v46 - v10;
  v11 = sub_1004B6E64();
  __chkstk_darwin(v11 - 8);
  v50 = sub_1004BBE14();
  v12 = *(v50 - 8);
  __chkstk_darwin(v50);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = sub_1004BBA84();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v22 = sub_1004BB924();
  (*(v19 + 8))(v21, v18);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1004BBDA4();
    v23 = *(v12 + 16);
    v24 = v50;
    v23(v14, v17, v50);
    if (qword_100609A20 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  sub_1004BBDA4();
  v23 = *(v12 + 16);
  v24 = v50;
  v23(v14, v17, v50);
  if (qword_100609A20 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v25 = qword_100618C60;
  sub_1004B6DF4();
  v26 = v25;
  v49 = sub_1004BBED4();
  v28 = v27;
  v29 = *(v12 + 8);
  v29(v17, v24);
  sub_1004BBDA4();
  v23(v14, v17, v24);
  sub_1004B6DF4();
  v30 = sub_1004BBED4();
  v32 = v31;
  v29(v17, v24);
  v60 = v49;
  v61 = v28;
  sub_1002C4D1C();
  v33 = sub_1004B9D84();
  v49 = v34;
  v50 = v33;
  v47 = v35;
  v48 = v36;
  v60 = v30;
  v61 = v32;
  sub_1004B9D84();
  v46[1] = v37;
  v60 = v51;
  v61 = v52;

  v38 = sub_1004B9D84();
  v40 = v39;
  LOBYTE(v28) = v41;
  v42 = v55;
  sub_10034BD68(v56, v55, type metadata accessor for Collaboration.Management.View);
  v43 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v44 = swift_allocObject();
  sub_10034BDD4(v42, v44 + v43, type metadata accessor for Collaboration.Management.View);
  sub_1004BA1E4();
  sub_10002FA24(v38, v40, v28 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_100336DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100003ABC(&qword_10060E0D8);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *v9 = sub_1004B9344();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = sub_100003ABC(&unk_10060E220);
  sub_100337084(a1, &v9[*(v10 + 44)]);
  v11 = &v9[*(v7 + 36)];
  v11[32] = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = a1 + *(v4 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v19 = v13;
  v20 = v14;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  sub_10034BD68(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_10034BDD4(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060E0E0);
  sub_10034E114();
  sub_10034E1F8(&qword_10060E110, &qword_10060E0E0, &unk_1004E17C8, sub_10034E274);
  sub_1004B9F14();

  return sub_100007214(v9, &qword_10060E0D8);
}

uint64_t sub_100337084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v240 = a2;
  v239 = sub_100003ABC(&qword_10060E238);
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v217 = &v195 - v3;
  v4 = sub_100003ABC(&qword_10060E240);
  __chkstk_darwin(v4 - 8);
  v200 = &v195 - v5;
  v197 = sub_100003ABC(&qword_10060E248);
  __chkstk_darwin(v197);
  v209 = &v195 - v6;
  v207 = sub_100003ABC(&qword_10060E250);
  __chkstk_darwin(v207);
  v206 = &v195 - v7;
  v204 = sub_100003ABC(&qword_10060E258);
  __chkstk_darwin(v204);
  v203 = &v195 - v8;
  v199 = sub_100003ABC(&qword_10060E260);
  __chkstk_darwin(v199);
  v202 = &v195 - v9;
  v198 = sub_100003ABC(&qword_10060E268);
  __chkstk_darwin(v198);
  v205 = &v195 - v10;
  v201 = sub_100003ABC(&qword_10060E270);
  __chkstk_darwin(v201);
  v212 = &v195 - v11;
  v211 = sub_100003ABC(&qword_10060E278);
  __chkstk_darwin(v211);
  v216 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v210 = &v195 - v14;
  __chkstk_darwin(v15);
  v215 = &v195 - v16;
  v196 = sub_100003ABC(&qword_10060E280);
  __chkstk_darwin(v196);
  v214 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v213 = (&v195 - v19);
  v20 = sub_100003ABC(&qword_10060E288);
  __chkstk_darwin(v20 - 8);
  v237 = &v195 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v242 = &v195 - v23;
  v235 = sub_1004BBA84();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v233 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v25 - 8);
  v227 = &v195 - v26;
  v230 = sub_1004BB634();
  v228 = *(v230 - 8);
  __chkstk_darwin(v230);
  v226 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v28 - 8);
  v220 = &v195 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v219 = &v195 - v31;
  v231 = sub_1004B7D94();
  v229 = *(v231 - 8);
  __chkstk_darwin(v231);
  v244 = &v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v222 = &v195 - v34;
  __chkstk_darwin(v35);
  v225 = &v195 - v36;
  __chkstk_darwin(v37);
  v224 = &v195 - v38;
  v39 = sub_1004B7D04();
  v246 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ArtworkImage.Placeholder(0);
  v243 = *(v42 - 8);
  v43 = *(v243 + 8);
  __chkstk_darwin(v42 - 8);
  v44 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v195 - v46;
  v48 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v48 - 8);
  v218 = &v195 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v195 - v51;
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v232 = sub_100003ABC(&qword_10060E290);
  __chkstk_darwin(v232);
  v236 = &v195 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v241 = &v195 - v58;
  v208 = a1;
  v247 = *(a1 + 8);
  sub_10032F6D4(v55);
  v59 = enum case for Playlist.Variant.regular(_:);
  v60 = sub_1004BB914();
  v61 = *(v60 - 8);
  (*(v61 + 104))(v47, v59, v60);
  (*(v61 + 56))(v47, 0, 1, v60);
  v62 = sub_100003ABC(&unk_10060DD30);
  (*(*(v62 - 8) + 56))(v47, 0, 11, v62);
  v262 = 1;
  v260 = 1;
  v258 = 1;
  v63 = *(v246 + 104);
  v245 = v41;
  v223 = v39;
  v63(v41, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v39);
  v221 = v47;
  sub_10034BD68(v47, v44, type metadata accessor for ArtworkImage.Placeholder);
  v64 = (v243[80] + 16) & ~v243[80];
  v65 = (v43 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_10034BDD4(v44, v66 + v64, type metadata accessor for ArtworkImage.Placeholder);
  v67 = v66 + v65;
  *v67 = 0;
  *(v67 + 8) = v262;
  *(v67 + 9) = *v261;
  *(v67 + 12) = *&v261[3];
  *(v67 + 16) = 0;
  *(v67 + 24) = v260;
  *(v67 + 25) = *v259;
  *(v67 + 28) = *&v259[3];
  *(v67 + 32) = 0;
  *(v67 + 40) = v258;
  *(v67 + 41) = 2;
  v243 = v55;
  sub_10000F778(v55, v52, &qword_10060EF20);
  v68 = type metadata accessor for ArtworkImage.ViewModel(0);
  v69 = *(*(v68 - 8) + 48);
  if (v69(v52, 1, v68) == 1)
  {
    sub_100007214(v52, &qword_10060EF20);
    v70 = sub_1004BB6C4();
    v71 = v219;
    (*(*(v70 - 8) + 56))(v219, 1, 1, v70);
  }

  else
  {
    v72 = sub_1004BB6C4();
    v73 = *(v72 - 8);
    v71 = v219;
    (*(v73 + 16))(v219, v52, v72);
    sub_10034C2B8(v52, type metadata accessor for ArtworkImage.ViewModel);
    (*(v73 + 56))(v71, 0, 1, v72);
  }

  sub_10000F778(v71, v220, &unk_10060EBE0);
  v74 = v224;
  sub_1004B7D84();
  sub_100007214(v71, &unk_10060EBE0);
  sub_1004B7D34();
  v75 = v218;
  sub_10000F778(v243, v218, &qword_10060EF20);
  if (v69(v75, 1, v68) == 1)
  {
    sub_100007214(v75, &qword_10060EF20);
    v76 = v228;
    v77 = v227;
    v78 = v230;
    (*(v228 + 56))(v227, 1, 1, v230);
    v79 = v241;
  }

  else
  {
    v77 = v227;
    sub_10000F778(v75 + *(v68 + 20), v227, &qword_10060DD10);
    sub_10034C2B8(v75, type metadata accessor for ArtworkImage.ViewModel);
    v76 = v228;
    v78 = v230;
    v80 = (*(v228 + 48))(v77, 1, v230);
    v79 = v241;
    if (v80 != 1)
    {
      v81 = v226;
      (*(v76 + 32))(v226, v77, v78);
      goto LABEL_12;
    }
  }

  v81 = v226;
  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v82 = sub_100007084(v78, static Artwork.CropStyle.fallback);
  (*(v76 + 16))(v81, v82, v78);
  if ((*(v76 + 48))(v77, 1, v78) != 1)
  {
    sub_100007214(v77, &qword_10060DD10);
  }

LABEL_12:
  v83 = v222;
  v84 = v244;
  sub_1004B7D14();
  (*(v76 + 8))(v81, v78);
  v85 = *(v229 + 8);
  v86 = v231;
  v85(v84, v231);
  v87 = v225;
  sub_1004B7D44();
  v85(v83, v86);
  sub_100003ABC(&qword_10060C998);
  sub_1003169C4();
  sub_1004B7D24();

  v85(v87, v86);
  v85(v74, v86);
  (*(v246 + 8))(v245, v223);
  sub_10034C2B8(v221, type metadata accessor for ArtworkImage.Placeholder);
  sub_100007214(v243, &qword_10060EF20);
  if (qword_100609C80 != -1)
  {
    swift_once();
  }

  sub_1004BA754();
  sub_1004B8994();
  v88 = (v79 + *(sub_100003ABC(&qword_10060E298) + 36));
  v89 = v249;
  *v88 = v248;
  v88[1] = v89;
  v88[2] = v250;
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  v90 = static Corner.small;
  v91 = *algn_100618FF8;
  v92 = byte_100619000;
  v93 = v79 + *(sub_100003ABC(&qword_10060E2A0) + 36);
  *v93 = v90;
  *(v93 + 8) = v91;
  *(v93 + 16) = v92;
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v94 = static Border.artwork;
  v95 = qword_100619058;
  v96 = byte_100619060;
  v97 = v79 + *(sub_100003ABC(&qword_10060E2A8) + 36);
  *v97 = v94;
  *(v97 + 8) = v95;
  *(v97 + 16) = v96;
  *(v97 + 24) = v90;
  *(v97 + 32) = v91;
  *(v97 + 40) = v92;

  sub_1004BA284();
  v98 = sub_1004BA2C4();

  v99 = v79 + *(v232 + 36);
  *v99 = v98;
  *(v99 + 8) = xmmword_1004D9BA0;
  *(v99 + 24) = 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v100 = v233;
  sub_1004B85A4();

  v101 = sub_1004BB994();
  v103 = v102;
  (*(v234 + 8))(v100, v235);
  *&v251 = v101;
  *(&v251 + 1) = v103;
  sub_1002C4D1C();
  v104 = sub_1004B9D84();
  v106 = v105;
  v108 = v107;
  LODWORD(v251) = sub_1004B9624();
  v109 = sub_1004B9C84();
  v111 = v110;
  v113 = v112;
  sub_10002FA24(v104, v106, v108 & 1);

  if (qword_100609C30 != -1)
  {
    swift_once();
  }

  v114 = sub_1004B9CE4();
  v116 = v115;
  v118 = v117;

  sub_10002FA24(v109, v111, v113 & 1);

  sub_1004B9AA4();
  v245 = sub_1004B9C74();
  v244 = v119;
  LODWORD(v121) = v120;
  v246 = v122;
  sub_10002FA24(v114, v116, v118 & 1);

  v123 = sub_10032DDBC();
  v124 = 1;
  if (v123)
  {
    v125 = sub_1004B91F4();
    v126 = v213;
    *v213 = v125;
    *(v126 + 8) = 0x4020000000000000;
    *(v126 + 16) = 0;
    v127 = sub_100003ABC(&qword_10060E2B8);
    v128 = v208;
    sub_100338C9C(v208, (v126 + *(v127 + 44)));
    *(v126 + *(sub_100003ABC(&qword_10060E2C0) + 36)) = 256;
    v129 = sub_1004B9974();
    if (qword_100609C68 != -1)
    {
      swift_once();
    }

    LODWORD(v247) = v121;
    sub_1004B86C4();
    v130 = v126 + *(v196 + 36);
    *v130 = v129;
    *(v130 + 8) = v131;
    *(v130 + 16) = v132;
    *(v130 + 24) = v133;
    *(v130 + 32) = v134;
    *(v130 + 40) = 0;
    v135 = v200;
    sub_100339D98(v128, v200);
    sub_1004BA764();
    sub_1004B8E94();
    v136 = v209;
    sub_100025B04(v135, v209, &qword_10060E240);
    v137 = (v136 + *(v197 + 36));
    v138 = v256;
    v137[4] = v255;
    v137[5] = v138;
    v137[6] = v257;
    v139 = v252;
    *v137 = v251;
    v137[1] = v139;
    v140 = v254;
    v137[2] = v253;
    v137[3] = v140;
    KeyPath = swift_getKeyPath();
    v142 = v136;
    v143 = v206;
    sub_100025B04(v142, v206, &qword_10060E248);
    v144 = v143 + *(v207 + 36);
    *v144 = KeyPath;
    *(v144 + 8) = 0;
    *(v144 + 16) = 1;
    v145 = v143;
    v146 = v203;
    sub_100025B04(v145, v203, &qword_10060E250);
    *(v146 + *(v204 + 36)) = 256;
    LODWORD(KeyPath) = sub_1004B9654();
    v147 = v146;
    v148 = v202;
    sub_100025B04(v147, v202, &qword_10060E258);
    *(v148 + *(v199 + 36)) = KeyPath;
    v149 = sub_1004B9B44();
    v150 = swift_getKeyPath();
    v151 = v148;
    v152 = v205;
    sub_100025B04(v151, v205, &qword_10060E260);
    v153 = (v152 + *(v198 + 36));
    *v153 = v150;
    v153[1] = v149;
    LOBYTE(v149) = sub_1004B9954();
    sub_1004B86C4();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v162 = v152;
    v163 = v212;
    sub_100025B04(v162, v212, &qword_10060E268);
    v164 = v163 + *(v201 + 36);
    *v164 = v149;
    *(v164 + 8) = v155;
    *(v164 + 16) = v157;
    *(v164 + 24) = v159;
    *(v164 + 32) = v161;
    *(v164 + 40) = 0;
    v165 = sub_1004B9974();
    if (qword_100609C70 != -1)
    {
      swift_once();
    }

    sub_1004B86C4();
    v167 = v166;
    v169 = v168;
    v171 = v170;
    v173 = v172;
    v174 = v163;
    v175 = v210;
    sub_100025B04(v174, v210, &qword_10060E270);
    v176 = v175 + *(v211 + 36);
    *v176 = v165;
    *(v176 + 8) = v167;
    *(v176 + 16) = v169;
    *(v176 + 24) = v171;
    *(v176 + 32) = v173;
    *(v176 + 40) = 0;
    v177 = v215;
    sub_100025B04(v175, v215, &qword_10060E278);
    v178 = v214;
    sub_10000F778(v126, v214, &qword_10060E280);
    v179 = v216;
    sub_10000F778(v177, v216, &qword_10060E278);
    v121 = v126;
    v180 = v217;
    sub_10000F778(v178, v217, &qword_10060E280);
    v181 = sub_100003ABC(&qword_10060E2C8);
    sub_10000F778(v179, v180 + *(v181 + 48), &qword_10060E278);
    v182 = v180 + *(v181 + 64);
    sub_100007214(v177, &qword_10060E278);
    sub_100007214(v121, &qword_10060E280);
    *v182 = 0x3FF0000000000000;
    *(v182 + 8) = 0;
    sub_100007214(v179, &qword_10060E278);
    sub_100007214(v178, &qword_10060E280);
    sub_100025B04(v180, v242, &qword_10060E238);
    v124 = 0;
    v79 = v241;
    LOBYTE(v121) = v247;
  }

  v183 = v242;
  (*(v238 + 56))(v242, v124, 1, v239);
  v247 = sub_1004B9204();
  v184 = v236;
  sub_10000F778(v79, v236, &qword_10060E290);
  v185 = v237;
  sub_10000F778(v183, v237, &qword_10060E288);
  v186 = v240;
  sub_10000F778(v184, v240, &qword_10060E290);
  v187 = v79;
  v188 = sub_100003ABC(&qword_10060E2B0);
  v189 = v186 + v188[12];
  v190 = v245;
  v191 = v244;
  *v189 = v245;
  *(v189 + 8) = v191;
  v192 = v121 & 1;
  *(v189 + 16) = v192;
  *(v189 + 24) = v246;
  sub_10000F778(v185, v186 + v188[16], &qword_10060E288);
  v193 = v186 + v188[20];
  sub_10002FA14(v190, v191, v192);

  sub_100007214(v183, &qword_10060E288);
  sub_100007214(v187, &qword_10060E290);
  *v193 = v247;
  *(v193 + 8) = 0;
  *(v193 + 16) = 1;
  *(v193 + 24) = 0;
  *(v193 + 32) = 1;
  sub_100007214(v185, &qword_10060E288);
  sub_10002FA24(v190, v191, v192);

  return sub_100007214(v184, &qword_10060E290);
}

uint64_t sub_100338C9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v110 = a2;
  v104 = sub_100003ABC(&qword_10060E330);
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v99 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v87 - v5;
  v6 = sub_100003ABC(&qword_10060E338);
  __chkstk_darwin(v6 - 8);
  v109 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = v87 - v9;
  v10 = sub_100003ABC(&qword_10060A210);
  __chkstk_darwin(v10 - 8);
  v96 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v87 - v13;
  v15 = type metadata accessor for Collaboration.Management.View(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  __chkstk_darwin(v15);
  v111 = v18;
  v19 = (v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  __chkstk_darwin(v20);
  v95 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v87 - v23;
  v102 = sub_100003ABC(&qword_10060E340);
  __chkstk_darwin(v102);
  v94 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = v87 - v27;
  v28 = sub_100003ABC(&qword_10060E348);
  v106 = *(v28 - 8);
  v107 = v28;
  __chkstk_darwin(v28);
  v105 = v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v113 = v87 - v31;
  v101 = type metadata accessor for Collaboration.Management.View;
  sub_10034BD68(a1, v19, type metadata accessor for Collaboration.Management.View);
  v32 = *(v17 + 80);
  v33 = swift_allocObject();
  v100 = type metadata accessor for Collaboration.Management.View;
  sub_10034BDD4(v19, v33 + ((v32 + 16) & ~v32), type metadata accessor for Collaboration.Management.View);
  *&v24[*(v20 + 24)] = swift_getKeyPath();
  v91 = sub_100003ABC(&qword_10060DE10);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v24 = 0;
  *(v24 + 1) = sub_10034F0D4;
  *(v24 + 2) = v33;
  v93 = v20;
  v35 = &v24[*(v20 + 28)];
  *v35 = KeyPath;
  v35[8] = 0;
  v36 = a1;
  v90 = *(a1 + 8);
  sub_10032F420(v14);
  v37 = sub_1004B6B04();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v89 = v37;
  v88 = v39;
  v87[1] = v38 + 48;
  v40 = (v39)(v14, 1) == 1;
  sub_100007214(v14, &qword_10060A210);
  v41 = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  v43 = v112;
  sub_10034BDD4(v24, v112, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v44 = v102;
  v45 = (v43 + *(v102 + 36));
  *v45 = v41;
  v45[1] = sub_10034F128;
  v45[2] = v42;
  v46 = v36 + *(v16 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);
  v114 = v47;
  v115 = v48;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  v97 = v36;
  sub_10034BD68(v36, v19, v101);
  v92 = v32;
  v49 = (v32 + 16) & ~v32;
  v50 = swift_allocObject();
  v101 = v19;
  sub_10034BDD4(v19, v50 + v49, v100);
  sub_100003ABC(&qword_10060E350);
  sub_10034F1A0();
  v51 = v104;
  sub_10034E1F8(&qword_10060E378, &qword_10060E350, &unk_1004E1A30, sub_10034BA70);
  v52 = v44;
  v53 = v112;
  sub_1004BA0B4();

  v54 = 1;
  v55 = v103;

  sub_100007214(v53, &qword_10060E340);
  v56 = [objc_opt_self() currentTraitCollection];
  v57 = [v56 userInterfaceIdiom];

  if (v57 != 6)
  {
    v58 = v101;
    sub_10034BD68(v97, v101, type metadata accessor for Collaboration.Management.View);
    v59 = swift_allocObject();
    sub_10034BDD4(v58, v59 + v49, type metadata accessor for Collaboration.Management.View);
    v60 = swift_getKeyPath();
    v61 = v93;
    v62 = v95;
    *&v95[*(v93 + 24)] = v60;
    swift_storeEnumTagMultiPayload();
    v63 = swift_getKeyPath();
    *v62 = 1;
    *(v62 + 8) = sub_10034F288;
    *(v62 + 16) = v59;
    v64 = v62 + *(v61 + 28);
    *v64 = v63;
    *(v64 + 8) = 0;
    v65 = v96;
    sub_10032F420(v96);
    v66 = v88(v65, 1, v89) == 1;
    sub_100007214(v65, &qword_10060A210);
    v67 = swift_getKeyPath();
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    v69 = v94;
    sub_10034BDD4(v62, v94, _s10ManagementO4ViewV5ShareO6ButtonVMa);
    v70 = (v69 + *(v52 + 36));
    *v70 = v67;
    v70[1] = sub_100350888;
    v70[2] = v68;
    v71 = v69;
    v72 = v99;
    sub_100025B04(v71, v99, &qword_10060E340);
    v73 = (v72 + *(v51 + 36));
    *v73 = sub_100339D70;
    v73[1] = 0;
    v74 = v72;
    v75 = v98;
    sub_100025B04(v74, v98, &qword_10060E330);
    sub_100025B04(v75, v55, &qword_10060E330);
    v54 = 0;
  }

  v76 = v55;
  (*(v108 + 56))(v55, v54, 1, v51);
  v78 = v105;
  v77 = v106;
  v79 = *(v106 + 16);
  v80 = v113;
  v81 = v107;
  v79(v105, v113, v107);
  v82 = v109;
  sub_10000F778(v55, v109, &qword_10060E338);
  v83 = v110;
  v79(v110, v78, v81);
  v84 = sub_100003ABC(&qword_10060E380);
  sub_10000F778(v82, &v83[*(v84 + 48)], &qword_10060E338);
  sub_100007214(v76, &qword_10060E338);
  v85 = *(v77 + 8);
  v85(v80, v81);
  sub_100007214(v82, &qword_10060E338);
  return (v85)(v78, v81);
}

uint64_t sub_100339778(uint64_t a1)
{
  v2 = sub_1004B80B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Share Sheet button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100339920@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1004BBA84();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060A210);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F420(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_100007214(v8, &qword_10060A210);
    v14 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    swift_getKeyPath();
    v16 = v2;
    swift_getKeyPath();

    sub_1004B85A4();

    v14 = Collaboration.Manager.activityViewController(for:url:)();

    (*(v3 + 8))(v5, v16);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v14;
  return result;
}

uint64_t sub_100339BC8(uint64_t a1)
{
  v2 = sub_1004B80B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 40));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] QRCode button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100339D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Collaboration.Management.View(0);
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060E2D0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_100003ABC(&qword_10060E2D8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100003ABC(&qword_10060E2E0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v40 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if (v43 == 1)
  {
    *v13 = sub_1004B9204();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v14 = sub_100003ABC(&qword_10060E320);
    sub_10033A2B0(&v13[*(v14 + 44)]);
    sub_10000F778(v13, v10, &qword_10060E2E0);
    swift_storeEnumTagMultiPayload();
    sub_1000206D4(&qword_10060E2F8, &qword_10060E2E0);
    sub_10034EEB0();
    v15 = v42;
    sub_1004B9514();
    sub_100007214(v13, &qword_10060E2E0);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v37 = v8;
    v38 = v11;
    v17 = v42;
    sub_10032E8AC();
    if (v18)
    {
      sub_1004B92A4();
      v19 = sub_1004B9D64();
      v34 = v20;
      v35 = v19;
      v33 = v21;
      v36 = v22;
      v32 = sub_1004BA234();
      KeyPath = swift_getKeyPath();
      v24 = swift_getKeyPath();
      v25 = v41;
      sub_10034BD68(v40, v41, type metadata accessor for Collaboration.Management.View);
      v26 = (*(v39 + 80) + 16) & ~*(v39 + 80);
      v27 = swift_allocObject();
      sub_10034BDD4(v25, v27 + v26, type metadata accessor for Collaboration.Management.View);
      v28 = &v7[*(v5 + 36)];
      sub_100003ABC(&qword_10060E2F0);
      sub_1004B8AA4();
      *v28 = v24;
      v29 = v34;
      *v7 = v35;
      *(v7 + 1) = v29;
      v7[16] = v33 & 1;
      *(v7 + 3) = v36;
      *(v7 + 4) = KeyPath;
      *(v7 + 5) = v32;
      sub_10000F778(v7, v10, &qword_10060E2D0);
      swift_storeEnumTagMultiPayload();
      sub_1000206D4(&qword_10060E2F8, &qword_10060E2E0);
      sub_10034EEB0();
      sub_1004B9514();
      sub_100007214(v7, &qword_10060E2D0);
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }
  }

  v30 = sub_100003ABC(&qword_10060E2E8);
  return (*(*(v30 - 8) + 56))(v17, v16, 1, v30);
}

uint64_t sub_10033A2B0@<X0>(char *a1@<X8>)
{
  v35 = a1;
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_100003ABC(&qword_10060DDC8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  sub_1004B8904();
  sub_1004BBDA4();
  (*(v3 + 16))(v5, v8, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v16 = qword_100618C60;
  sub_1004B6DF4();
  v17 = sub_1004BBED4();
  v19 = v18;
  (*(v3 + 8))(v8, v2);
  v36 = v17;
  v37 = v19;
  sub_1002C4D1C();
  v20 = sub_1004B9D84();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v10 + 16);
  v27(v12, v15, v9);
  v34 = v15;
  v28 = v12;
  v29 = v35;
  v27(v35, v28, v9);
  v30 = &v29[*(sub_100003ABC(&qword_10060E328) + 48)];
  *v30 = v20;
  *(v30 + 1) = v22;
  v30[16] = v24 & 1;
  *(v30 + 3) = v26;
  sub_10002FA14(v20, v22, v24 & 1);
  v31 = *(v10 + 8);

  v31(v34, v9);
  sub_10002FA24(v20, v22, v24 & 1);

  return (v31)(v28, v9);
}

uint64_t sub_10033A690(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10[-v4];
  v6 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v10[15] = 1;

  sub_1004B85B4();
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1002E0EEC(0, 0, v5, &unk_1004E1978, v8);

  return sub_1004B8A94();
}

uint64_t sub_10033A7FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003ABC(&qword_10060A210);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1004B6B04();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10032F420(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_100007214(v4, &qword_10060A210);
    v10 = 0;
    v11 = 0;
LABEL_6:
    v18 = 0;
    v20 = 0;
    v22 = 0;
    v24 = 0;
    v26 = 0;
    v25 = 0uLL;
    goto LABEL_7;
  }

  (*(v6 + 32))(v8, v4, v5);
  v12 = sub_1004B6A34();
  v14 = QRCode.init(data:errorCorrectionLevel:)(v12, v13, 76, &v28);
  v15 = *(&v28 + 1);
  v16 = v29;
  v17 = v30;
  result = (*(v6 + 8))(v8, v5, v14);
  v11 = v30;
  if (!v30)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v18 = v31;
  v10 = v29;
  v27 = v28;
  sub_10003E428(v15, v16);
  v19 = v17;
  v20 = sub_1004B8D84();
  v21 = sub_1004B9964();
  v22 = sub_1004BA754();
  v24 = v23;
  result = sub_100007214(&v28, &qword_10060E230);
  v25 = v27;
  v26 = v21;
LABEL_7:
  *a1 = v25;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v18;
  *(a1 + 40) = v20;
  *(a1 + 48) = v26;
  *(a1 + 56) = v22;
  *(a1 + 64) = v24;
  return result;
}

uint64_t sub_10033AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003ABC(&unk_10060DB30);
  __chkstk_darwin(v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = sub_1004BB7D4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a3, a1, v12);
  v14 = *(a2 + 8);
  KeyPath = swift_getKeyPath();
  v16 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  *(a3 + v16[9]) = KeyPath;
  sub_100003ABC(&unk_100609E90);
  swift_storeEnumTagMultiPayload();
  *(a3 + v16[5]) = v14;
  v17 = a3 + v16[6];
  v21[15] = 0;

  sub_1004BA414();
  v18 = v22;
  *v17 = v21[16];
  *(v17 + 8) = v18;
  (*(v13 + 56))(v11, 1, 1, v12);
  sub_10000F778(v11, v8, &unk_10060DB30);
  sub_1004BA414();
  sub_100007214(v11, &unk_10060DB30);
  v19 = v16[8];
  *(a3 + v19) = swift_getKeyPath();
  sub_100003ABC(&unk_10060D340);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10033AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v36 = a2;
  v3 = sub_1004B9594();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Collaboration.Management.View(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_100003ABC(&qword_10060E1D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = sub_100003ABC(&qword_10060E1C8);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  __chkstk_darwin(v15);
  v18 = &v31 - v17;
  sub_10034BD68(a1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v19 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_10034BDD4(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060E1E8);
  sub_10034E6B0();
  sub_1004BA474();
  sub_1004B9584();
  v21 = sub_1000206D4(&qword_10060E1D8, &qword_10060E1D0);
  v22 = sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle);
  v23 = v32;
  sub_1004B9E14();
  v24 = v23;
  (*(v33 + 8))(v6, v23);
  (*(v12 + 8))(v14, v11);
  v25 = v31;
  v26 = v31 + *(v8 + 56);
  v27 = *v26;
  v28 = *(v26 + 8);
  v42 = v27;
  v43 = v28;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  v37 = v25;
  v38 = v11;
  v39 = v24;
  v40 = v21;
  v41 = v22;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_1004BA074();

  return (*(v35 + 8))(v18, v29);
}

uint64_t sub_10033B130(uint64_t a1)
{
  v2 = sub_1004B80B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for Collaboration.Management.View(0) + 48));
  v7 = *v6;
  v8 = *(v6 + 1);
  v14[16] = v7;
  v15 = v8;
  v14[15] = 1;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  v9 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v9, v2);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "[Management] Remove Join Request button tapped", v12, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

__n128 sub_10033B2D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  sub_1004BBDA4();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  *&v27[0] = v11;
  *(&v27[0] + 1) = v13;
  sub_1002C4D1C();
  v14 = sub_1004B9D84();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1004BA754();
  sub_1004B8E94();
  v21 = v18 & 1;
  v28 = v18 & 1;
  v22 = sub_1004BA264();
  KeyPath = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v21;
  *(a1 + 24) = v20;
  v24 = v27[5];
  *(a1 + 96) = v27[4];
  *(a1 + 112) = v24;
  *(a1 + 128) = v27[6];
  v25 = v27[1];
  *(a1 + 32) = v27[0];
  *(a1 + 48) = v25;
  result = v27[3];
  *(a1 + 64) = v27[2];
  *(a1 + 80) = result;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v22;
  return result;
}

uint64_t sub_10033B580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BA214();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004BBE14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_1004BBDA4();
  v16 = *(v10 + 16);
  v48[4] = v10 + 16;
  v49 = v16;
  v16(v12, v15, v9);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v17 = qword_100618C60;
  v18 = qword_100618C60;
  v63 = v17;
  v19 = v18;
  sub_1004B6DF4();
  v20 = v19;
  v21 = sub_1004BBED4();
  v23 = v22;
  v24 = *(v10 + 8);
  v24(v15, v9);
  v48[1] = v10 + 8;
  v64 = v21;
  v65 = v23;
  v48[0] = sub_1002C4D1C();
  v25 = sub_1004B9D84();
  v54 = v26;
  v55 = v25;
  v52 = v27;
  v53 = v28;
  sub_1004BBDA4();
  v29 = v49;
  v49(v12, v15, v9);
  sub_1004B6DF4();
  v30 = sub_1004BBED4();
  v32 = v31;
  v24(v15, v9);
  v64 = v30;
  v65 = v32;
  v51 = sub_1004B9D84();
  v48[3] = v33;
  v50 = v34;
  v48[2] = v35 & 1;
  sub_1004BBDA4();
  v29(v12, v15, v9);
  sub_1004B6DF4();
  v36 = sub_1004BBED4();
  v38 = v37;
  v24(v15, v9);
  v64 = v36;
  v65 = v38;
  v39 = sub_1004B9D84();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_10034BD68(v58, v59, type metadata accessor for Collaboration.Management.View);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_10034BDD4(v44, v46 + v45, type metadata accessor for Collaboration.Management.View);
  sub_1004BA1E4();
  sub_10002FA24(v39, v41, v43 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_10033BB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004B8A24();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *(a1 + 8);
  v13 = sub_1004BC4B4();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;

  sub_1002E0EEC(0, 0, v11, a3, v14);

  type metadata accessor for Collaboration.Management.View(0);
  sub_100308E98(v8);
  sub_1004B8A14();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10033BCFC(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  sub_10034BD68(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10034BDD4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for Collaboration.Management.View);
  sub_100003ABC(&qword_10060D2A0);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_1000206D4(&qword_10060E208, &qword_10060D2A0);
  sub_10034A084(&qword_10060E1A0, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_10034A084(&qword_10060E210, &type metadata accessor for Playlist.Collaborator);
  return sub_1004BA664();
}

uint64_t sub_10033BF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_1004BBDF4();
  __chkstk_darwin(v10 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v11 = *(v21 + 16);

  sub_1004BBDE4();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1004BBDD4(v23);
  v21 = v11;
  sub_1004BBDB4();
  v24._object = 0x8000000100508FA0;
  v24._countAndFlagsBits = 0xD000000000000010;
  sub_1004BBDD4(v24);
  sub_1004BBE04();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v12 = qword_100618C60;
  sub_1004B6DF4();
  v13 = sub_1004BBED4();
  v15 = v14;
  (*(v4 + 8))(v9, v3);
  v21 = v13;
  v22 = v15;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_10033C26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Collaboration.Management.View(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  *a2 = sub_1004B9204();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v13 = *(sub_100003ABC(&qword_10060E218) + 44);
  sub_10034BD68(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  sub_1004BC474();
  v7 = sub_1004BC464();
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_10034BDD4(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for Collaboration.Management.View);
  sub_10034BD68(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v10 = sub_1004BC464();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_10034BDD4(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v8, type metadata accessor for Collaboration.Management.View);
  sub_1004BA5C4();
  return sub_1004BA544();
}

uint64_t sub_10033C4AC@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  *a1 = (v3 & 1) == 0;
  return result;
}

uint64_t sub_10033C534(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-v7];
  v9 = *a1;
  v10 = *(a4 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = (v9 & 1) == 0;
  v15[15] = v11;

  sub_1004B85B4();
  v12 = sub_1004BC4B4();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v10;
  *(v13 + 40) = v11;

  sub_1002E11EC(0, 0, v8, &unk_1004E1878, v13);
}

uint64_t sub_10033C6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004BBDA4();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

__n128 sub_10033C8B4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  if ((v43 & 1) == 0)
  {
    sub_1004BBDA4();
    (*(v4 + 16))(v6, v9, v3);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v23 = qword_100618C60;
    sub_1004B6DF4();
    v24 = sub_1004BBED4();
    v26 = v25;
    (*(v4 + 8))(v9, v3);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    sub_1002C4D1C();
    v16 = sub_1004B9D84();
    v18 = v16;
    v19 = v17;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v21 = v27 & 1;
    v41.n128_u64[0] = v27 & 1;
    v41.n128_u64[1] = v28;
    LOBYTE(v42) = 0;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v10 = *(v43 + 16);

  v11 = (v4 + 16);
  if (v10)
  {
    sub_1004BBDA4();
    (*v11)(v6, v9, v3);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v12 = qword_100618C60;
    sub_1004B6DF4();
    v13 = sub_1004BBED4();
    v15 = v14;
    (*(v4 + 8))(v9, v3);
    *&v43 = v13;
    *(&v43 + 1) = v15;
    sub_1002C4D1C();
    v16 = sub_1004B9D84();
    v18 = v16;
    v19 = v17;
    v21 = v20 & 1;
    *&v40 = v16;
    *(&v40 + 1) = v17;
    v41.n128_u64[0] = v20 & 1;
    v41.n128_u64[1] = v22;
    LOBYTE(v42) = 1;
LABEL_9:
    sub_10002FA14(v16, v17, v21);

    sub_1004B9514();
    v40 = v43;
    v41 = v44;
    v42 = v45;
    sub_100003ABC(&qword_10060C330);
    sub_1003078FC();
    sub_1004B9514();
    sub_10002FA24(v18, v19, v21);

    goto LABEL_10;
  }

  sub_1004BBDA4();
  (*v11)(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v32 = qword_100618C60;
  sub_1004B6DF4();
  v33 = sub_1004BBED4();
  v35 = v34;
  (*(v4 + 8))(v9, v3);
  *&v43 = v33;
  *(&v43 + 1) = v35;
  sub_1002C4D1C();
  *&v40 = sub_1004B9D84();
  *(&v40 + 1) = v36;
  v41.n128_u64[0] = v37 & 1;
  v41.n128_u64[1] = v38;
  v42 = 256;
  sub_100003ABC(&qword_10060C330);
  sub_1003078FC();
  sub_1004B9514();
LABEL_10:
  result = v44;
  v30 = v45;
  v31 = v46;
  *a1 = v43;
  *(a1 + 16) = result;
  *(a1 + 32) = v30;
  *(a1 + 33) = v31;
  return result;
}

uint64_t sub_10033CE78(uint64_t a1)
{
  v2 = sub_1004B9564();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100003ABC(&qword_10060D3B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1004B9554();
  v9 = a1;
  sub_100003ABC(&qword_10060E068);
  sub_1000206D4(&qword_10060E070, &qword_10060E068);
  sub_1004B8864();
  sub_1000206D4(&qword_10060D3B8, &qword_10060D3B0);
  sub_1004B95F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10033D064(uint64_t a1)
{
  v2 = type metadata accessor for Collaboration.Management.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_1004B86B4();
  __chkstk_darwin(v5 - 8);
  sub_1004B8694();
  sub_10034BD68(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Collaboration.Management.View);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_10034BDD4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for Collaboration.Management.View);
  return sub_1004BA484();
}

uint64_t sub_10033D1E0(uint64_t a1)
{
  v16 = sub_1004B9184();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&unk_100609E80);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1004B8A24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Collaboration.Management.View(0);
  sub_10000F778(a1 + *(v12 + 20), v7, &unk_100609E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_1004B8A14();
  return (*(v9 + 8))(v11, v8);
}

void sub_10033D468(uint64_t a1, _BYTE *a2)
{
  v3 = sub_1004B8A24();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    type metadata accessor for Collaboration.Management.View(0);
    sub_100308E98(v6);
    sub_1004B8A14();
    (*(v4 + 8))(v6, v3);
  }
}

void sub_10033D55C()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_10060D1E0 = v1 == 6;
}

uint64_t sub_10033D5F4()
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    result = sub_1004B9A24();
    v1 = result;
  }

  else
  {
    sub_1004B9AD4();
    v1 = sub_1004B9A54();
  }

  qword_10060D1F0 = v1;
  return result;
}

uint64_t sub_10033D67C()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 56.0;
  if (byte_10060D1E0)
  {
    v0 = 68.0;
  }

  qword_10060D1F8 = *&v0;
  return result;
}

uint64_t sub_10033D788(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  if (qword_100609C28 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  if (byte_10060D1E0 == 1)
  {
    result = a2();
  }

  else
  {
    result = a3();
  }

  *a4 = result;
  return result;
}

uint64_t sub_10033D818()
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    result = sub_1004B9AA4();
  }

  else
  {
    result = sub_1004B9A94();
  }

  qword_10060D218 = v1;
  return result;
}

uint64_t sub_10033D880()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (byte_10060D1E0)
  {
    v0 = 0.0;
  }

  qword_10060D220 = *&v0;
  return result;
}

uint64_t sub_10033D8E8()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = -4.0;
  if (byte_10060D1E0)
  {
    v0 = 0.0;
  }

  qword_10060D228 = *&v0;
  return result;
}

uint64_t sub_10033D950()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 32.0;
  if (byte_10060D1E0)
  {
    v0 = 44.0;
  }

  qword_10060D230 = *&v0;
  return result;
}

uint64_t sub_10033D9C0()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 84.0;
  if (byte_10060D1E0)
  {
    v0 = 169.0;
  }

  qword_10060D238 = *&v0;
  return result;
}

uint64_t sub_10033DA34()
{
  if (qword_100609C28 != -1)
  {
    result = swift_once();
  }

  v0 = 38.0;
  if (byte_10060D1E0)
  {
    v0 = 48.0;
  }

  qword_10060D240 = *&v0;
  return result;
}

uint64_t sub_10033DAA4()
{
  if (qword_100609C28 != -1)
  {
    swift_once();
  }

  if (byte_10060D1E0 == 1)
  {
    result = sub_1004BA234();
  }

  else
  {
    if (qword_100609AC0 != -1)
    {
      swift_once();
    }

    v1 = static UIColor.MusicTint.normal;
    result = sub_1004BA304();
  }

  qword_10060D248 = result;
  return result;
}

uint64_t sub_10033DB4C()
{
  v0 = sub_1004B8C94();
  sub_100007108(v0, qword_10060D250);
  v1 = sub_100007084(v0, qword_10060D250);
  v2 = enum case for DynamicTypeSize.accessibility2(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10033DBD4()
{
  v0 = sub_1004B8C94();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&qword_10060DE78);
  sub_100007108(v4, qword_10060D268);
  v5 = sub_100007084(v4, qword_10060D268);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v6 = sub_100007084(v0, qword_10060D250);
  (*(v1 + 16))(v3, v6, v0);
  sub_10034A084(&unk_10060DEC0, &type metadata accessor for DynamicTypeSize);
  result = sub_1004BBD84();
  if (result)
  {
    return (*(v1 + 32))(v5, v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10033DDA4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_1004B92E4();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1004B9754();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&qword_10060DC48);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v30 = sub_100003ABC(&qword_10060DC50);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v9 = &v29 - v8;
  v32 = sub_100003ABC(&qword_10060DC58);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - v10;
  v34 = sub_100003ABC(&qword_10060DC60);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v29 - v12;
  *v7 = sub_1004B9204();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v13 = sub_100003ABC(&qword_10060DC68);
  sub_10033E3C4(v1, &v7[*(v13 + 44)]);
  v7[*(v5 + 36)] = 0;
  v44 = v1;
  v14 = sub_100003ABC(&qword_10060DC70);
  v15 = sub_10034BB98();
  v16 = sub_10034E1F8(&unk_10060DCA0, &qword_10060DC70, &unk_1004E1168, sub_10034BC7C);
  sub_1004B9E74();
  sub_100007214(v7, &qword_10060DC48);
  v17 = v1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v49 = v18;
  v50 = v19;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA444();
  v43 = v1;
  v45 = v5;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_1004BA074();

  (*(v31 + 8))(v9, v21);
  v22 = v36;
  sub_1004B9744();
  v45 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v24 = v29;
  v25 = v32;
  sub_1004B9FF4();
  (*(v37 + 8))(v22, v38);
  (*(v33 + 8))(v11, v25);
  v26 = v39;
  sub_1004B92D4();
  v45 = v25;
  v46 = v23;
  swift_getOpaqueTypeConformance2();
  v27 = v34;
  sub_1004BA014();
  (*(v40 + 8))(v26, v42);
  return (*(v35 + 8))(v24, v27);
}

uint64_t sub_10033E3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v126 = v4;
  v127 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100003ABC(&qword_10060DCF0);
  __chkstk_darwin(v129);
  v132 = &v124 - v5;
  v131 = sub_100003ABC(&qword_10060DCF8);
  __chkstk_darwin(v131);
  v128 = &v124 - v6;
  v7 = sub_100003ABC(&qword_10060DD00);
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v130 = &v124 - v8;
  v9 = sub_1004BBA84();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v154 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003ABC(&qword_10060DD08);
  __chkstk_darwin(v11 - 8);
  v161 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v163 = &v124 - v14;
  v15 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v15 - 8);
  v143 = &v124 - v16;
  v17 = sub_1004BB634();
  v144 = *(v17 - 8);
  v145 = v17;
  __chkstk_darwin(v17);
  v142 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v19 - 8);
  v138 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v137 = &v124 - v22;
  v23 = sub_1004B7D94();
  v146 = *(v23 - 8);
  v147 = v23;
  __chkstk_darwin(v23);
  v149 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v139 = &v124 - v26;
  __chkstk_darwin(v27);
  v141 = &v124 - v28;
  __chkstk_darwin(v29);
  v151 = &v124 - v30;
  v152 = sub_1004B7D04();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v165 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ArtworkImage.Placeholder(0);
  v133 = *(v32 - 8);
  v33 = *(v133 + 64);
  __chkstk_darwin(v32 - 8);
  v134 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v148 = &v124 - v35;
  v36 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v36 - 8);
  v136 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v135 = &v124 - v39;
  __chkstk_darwin(v40);
  v164 = &v124 - v41;
  v167 = sub_100003ABC(&qword_10060DD18);
  v153 = *(v167 - 8);
  __chkstk_darwin(v167);
  v140 = &v124 - v42;
  v43 = sub_1004B8C94();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v124 - v48;
  v50 = sub_100003ABC(&unk_10060DD20);
  __chkstk_darwin(v50 - 8);
  v158 = &v124 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v54 = &v124 - v53;
  v157 = v3;
  v55 = a1;
  sub_100308A40(v49);
  if (qword_100609C98 != -1)
  {
    swift_once();
  }

  v56 = sub_100007084(v43, qword_10060D250);
  (*(v44 + 16))(v46, v56, v43);
  sub_10034A084(&qword_10060AC48, &type metadata accessor for DynamicTypeSize);
  v57 = sub_1004BBD54();
  v58 = *(v44 + 8);
  v58(v46, v43);
  v58(v49, v43);
  v59 = 1;
  v60 = 1;
  v61 = v55;
  v62 = v54;
  v63 = v167;
  v166 = v54;
  if ((v57 & 1) == 0)
  {
    v64 = v164;
    sub_10033FAA0(v164);
    v65 = sub_100003ABC(&unk_10060DD30);
    v66 = v148;
    (*(*(v65 - 8) + 56))(v148, 8, 11, v65);
    v190 = 1;
    v188 = 1;
    v186 = 1;
    (*(v150 + 104))(v165, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v152);
    v67 = v134;
    sub_10034BD68(v66, v134, type metadata accessor for ArtworkImage.Placeholder);
    v68 = (*(v133 + 80) + 16) & ~*(v133 + 80);
    v69 = swift_allocObject();
    sub_10034BDD4(v67, v69 + v68, type metadata accessor for ArtworkImage.Placeholder);
    v134 = v69;
    v70 = v69 + ((v33 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v70 = 0;
    *(v70 + 8) = v190;
    *(v70 + 9) = *v189;
    *(v70 + 12) = *&v189[3];
    *(v70 + 16) = 0;
    *(v70 + 24) = v188;
    *(v70 + 25) = *v187;
    *(v70 + 28) = *&v187[3];
    *(v70 + 32) = 0;
    *(v70 + 40) = v186;
    *(v70 + 41) = 2;
    v71 = v135;
    sub_10000F778(v64, v135, &qword_10060EF20);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = *(*(v72 - 8) + 48);
    if (v73(v71, 1, v72) == 1)
    {
      sub_100007214(v71, &qword_10060EF20);
      v74 = sub_1004BB6C4();
      v75 = v137;
      (*(*(v74 - 8) + 56))(v137, 1, 1, v74);
    }

    else
    {
      v76 = sub_1004BB6C4();
      v77 = *(v76 - 8);
      v75 = v137;
      (*(v77 + 16))(v137, v71, v76);
      sub_10034C2B8(v71, type metadata accessor for ArtworkImage.ViewModel);
      (*(v77 + 56))(v75, 0, 1, v76);
    }

    sub_10000F778(v75, v138, &unk_10060EBE0);
    sub_1004B7D84();
    sub_100007214(v75, &unk_10060EBE0);
    sub_1004B7D34();
    v78 = v136;
    sub_10000F778(v164, v136, &qword_10060EF20);
    v79 = v73(v78, 1, v72);
    v124 = v61;
    if (v79 == 1)
    {
      sub_100007214(v78, &qword_10060EF20);
      v80 = v143;
      v81 = v144;
      v82 = v145;
      (*(v144 + 56))(v143, 1, 1, v145);
      v83 = v142;
      v59 = 1;
    }

    else
    {
      v80 = v143;
      sub_10000F778(v78 + *(v72 + 20), v143, &qword_10060DD10);
      sub_10034C2B8(v78, type metadata accessor for ArtworkImage.ViewModel);
      v81 = v144;
      v82 = v145;
      v84 = (*(v144 + 48))(v80, 1, v145);
      v83 = v142;
      v59 = 1;
      if (v84 != 1)
      {
        (*(v81 + 32))(v142, v80, v82);
LABEL_15:
        v86 = v139;
        v87 = v149;
        sub_1004B7D14();
        (*(v81 + 8))(v83, v82);
        v88 = v147;
        v89 = *(v146 + 8);
        v89(v87, v147);
        v90 = v141;
        sub_1004B7D44();
        v89(v86, v88);
        sub_100003ABC(&qword_10060C998);
        sub_1003169C4();
        v91 = v140;
        sub_1004B7D24();

        v89(v90, v88);
        v89(v151, v88);
        (*(v150 + 8))(v165, v152);
        sub_10034C2B8(v148, type metadata accessor for ArtworkImage.Placeholder);
        sub_100007214(v164, &qword_10060EF20);
        v92 = v91 + *(sub_100003ABC(&qword_10060DD90) + 36);
        *v92 = 0;
        *(v92 + 8) = 0;
        *(v92 + 16) = 2;
        if (qword_100609C88 != -1)
        {
          swift_once();
        }

        sub_1004BA754();
        sub_1004B8994();
        v93 = (v91 + *(sub_100003ABC(&qword_10060DD98) + 36));
        v94 = v181;
        *v93 = v180;
        v93[1] = v94;
        v93[2] = v182;
        v62 = v166;
        v63 = v167;
        v95 = v91 + *(v167 + 36);
        *v95 = 0;
        *(v95 + 8) = 257;
        sub_100025B04(v91, v62, &qword_10060DD18);
        v60 = 0;
        v61 = v124;
        goto LABEL_18;
      }
    }

    if (qword_100609C08 != -1)
    {
      swift_once();
    }

    v85 = sub_100007084(v82, static Artwork.CropStyle.fallback);
    (*(v81 + 16))(v83, v85, v82);
    if ((*(v81 + 48))(v80, 1, v82) != 1)
    {
      sub_100007214(v80, &qword_10060DD10);
    }

    goto LABEL_15;
  }

LABEL_18:
  (*(v153 + 56))(v62, v60, 1, v63);
  v167 = sub_1004B9354();
  LOBYTE(v170[0]) = 1;
  sub_10033FF3C(v61, v178);
  *&v177[23] = v178[1];
  *&v177[39] = v178[2];
  *&v177[55] = v178[3];
  v177[71] = v179;
  *&v177[7] = v178[0];
  LODWORD(v165) = LOBYTE(v170[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v96 = v154;
  sub_1004B85A4();

  v97 = sub_1004BB924();
  (*(v155 + 8))(v96, v156);
  if (v97 != 2 && (v97 & 1) != 0)
  {
    v98 = sub_1004BB7C4();
    if (v98 != 2 && (v98 & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1004B85A4();

      v99 = sub_1003A837C(v61, v170[0]);

      if (v99)
      {
        v100 = v128;
        sub_1004B8904();
        if (qword_100609C78 != -1)
        {
          swift_once();
        }

        sub_1004BA754();
        sub_1004B8994();
        v101 = (v100 + *(v131 + 36));
        v102 = v184;
        *v101 = v183;
        v101[1] = v102;
        v101[2] = v185;
        sub_10000F778(v100, v132, &qword_10060DCF8);
        swift_storeEnumTagMultiPayload();
        sub_100003ABC(&qword_10060DDB0);
        sub_10034C200();
        sub_1000206D4(&unk_10060DDD0, &qword_10060DDB0);
        v103 = v130;
        sub_1004B9514();
        sub_100007214(v100, &qword_10060DCF8);
      }

      else
      {
        v104 = v127;
        sub_10034BD68(v61, v127, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v105 = (*(v125 + 80) + 16) & ~*(v125 + 80);
        v106 = swift_allocObject();
        sub_10034BDD4(v104, v106 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        sub_10034BD68(v61, v104, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
        v107 = swift_allocObject();
        sub_10034BDD4(v104, v107 + v105, _s10ManagementO4ViewV19CollaboratorRowViewVMa);

        v108 = v132;
        *v132 = 1;
        *(v108 + 1) = sub_10034C16C;
        *(v108 + 2) = v106;
        v108[24] = 0;
        *(v108 + 4) = sub_10034C17C;
        *(v108 + 5) = v107;

        swift_storeEnumTagMultiPayload();
        sub_100003ABC(&qword_10060DDB0);
        sub_10034C200();
        sub_1000206D4(&unk_10060DDD0, &qword_10060DDB0);
        v103 = v130;
        sub_1004B9514();
      }

      sub_100025B04(v103, v163, &qword_10060DD00);
      v59 = 0;
    }
  }

  v109 = v163;
  (*(v159 + 56))(v163, v59, 1, v160);
  v110 = v62;
  v111 = v158;
  sub_10000F778(v110, v158, &unk_10060DD20);
  v112 = v161;
  sub_10000F778(v109, v161, &qword_10060DD08);
  v113 = v162;
  sub_10000F778(v111, v162, &unk_10060DD20);
  v114 = sub_100003ABC(&qword_10060DDA0);
  v115 = (v113 + v114[12]);
  v116 = v167;
  v168[0] = v167;
  v168[1] = 0;
  v117 = v165;
  LOBYTE(v169[0]) = v165;
  *(v169 + 1) = *v177;
  *(&v169[1] + 1) = *&v177[16];
  *(&v169[2] + 1) = *&v177[32];
  *(&v169[3] + 1) = *&v177[48];
  *(&v169[4] + 1) = *&v177[64];
  v118 = v169[0];
  *v115 = v167;
  v115[1] = v118;
  v119 = v169[1];
  v120 = v169[2];
  v121 = v169[3];
  *(v115 + 73) = *(&v169[3] + 9);
  v115[3] = v120;
  v115[4] = v121;
  v115[2] = v119;
  v122 = v113 + v114[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  sub_10000F778(v112, v113 + v114[20], &qword_10060DD08);
  sub_10000F778(v168, v170, &qword_10060DDA8);
  sub_100007214(v109, &qword_10060DD08);
  sub_100007214(v166, &unk_10060DD20);
  sub_100007214(v112, &qword_10060DD08);
  v170[0] = v116;
  v170[1] = 0;
  v171 = v117;
  v173 = *&v177[16];
  v174 = *&v177[32];
  v175 = *&v177[48];
  v176 = *&v177[64];
  v172 = *v177;
  sub_100007214(v170, &qword_10060DDA8);
  return sub_100007214(v111, &unk_10060DD20);
}

uint64_t sub_10033FAA0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1004BB6C4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v31 = &v28 - v9;
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v14 = __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = *(v2 + 56);
  v17(&v28 - v15, 1, 1, v1, v14);
  sub_1004BB7B4();
  v33 = *(v2 + 48);
  if (v33(v12, 1, v1) == 1)
  {
    v29 = v17;
    sub_100007214(v12, &unk_10060EBE0);
    sub_100009130(0, &qword_10060A758);
    v18 = sub_1004BB774();
    v30 = v7;
    v20 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v18, v19, 0, 1);
    v7 = v30;

    if (v20)
    {
      v21 = v31;
      sub_1004BB584();
      sub_100007214(v16, &unk_10060EBE0);
      (v29)(v21, 0, 1, v1);
      sub_100025B04(v21, v16, &unk_10060EBE0);
    }
  }

  else
  {
    sub_100007214(v16, &unk_10060EBE0);
    (*(v2 + 32))(v16, v12, v1);
    (v17)(v16, 0, 1, v1);
  }

  sub_10000F778(v16, v7, &unk_10060EBE0);
  if (v33(v7, 1, v1) == 1)
  {
    sub_100007214(v16, &unk_10060EBE0);
    sub_100007214(v7, &unk_10060EBE0);
    v22 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    v24 = v32;
    (*(v2 + 16))(v32, v4, v1);
    v25 = type metadata accessor for ArtworkImage.ViewModel(0);
    v26 = *(v25 + 20);
    sub_1004BB5B4();
    (*(v2 + 8))(v4, v1);
    sub_100007214(v16, &unk_10060EBE0);
    v27 = sub_1004BB634();
    (*(*(v27 - 8) + 56))(v24 + v26, 0, 1, v27);
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }
}

uint64_t sub_10033FF3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = sub_1004BBDF4();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004B6E64();
  __chkstk_darwin(v4 - 8);
  v98 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = v93 - v10;
  v11 = sub_1004BBA84();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(_s10ManagementO4ViewV19CollaboratorRowViewVMa(0) + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v93[1] = v15;
  sub_1004B85A4();

  v16 = sub_1004BB924();
  (*(v12 + 8))(v14, v11);
  v17 = sub_1003408DC(v16 & 1);
  if (v18)
  {
    v94 = v7;
    v95 = v6;
    v106 = v17;
    v107 = v18;
    sub_1002C4D1C();
    v19 = sub_1004B9D84();
    v21 = v20;
    v23 = v22;
    LODWORD(v106) = sub_1004B9624();
    v24 = sub_1004B9C84();
    v26 = v25;
    v28 = v27;
    sub_10002FA24(v19, v21, v23 & 1);

    if (qword_100609C48 != -1)
    {
      swift_once();
    }

    v29 = sub_1004B9CE4();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_10002FA24(v24, v26, v28 & 1);

    v36 = v31 & 1;
    sub_10002FA14(v29, v35, v31 & 1);
    v99 = v33;

    v6 = v95;
    v7 = v94;
  }

  else
  {
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v99 = 0;
  }

  v37 = sub_1004BB7C4();
  if (v37 == 2 || (v37 & 1) == 0 || (sub_10032D780() & 1) != 0)
  {
    v38 = sub_1004BB7A4();
    if (!v39)
    {
      v64 = 0;
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v68 = -1;
      goto LABEL_17;
    }

    v40 = v38;
    v41 = v39;
    v95 = v35;
    sub_1004BBDE4();
    v111._countAndFlagsBits = 64;
    v111._object = 0xE100000000000000;
    sub_1004BBDD4(v111);
    v112._countAndFlagsBits = v40;
    v112._object = v41;
    sub_1004BBDC4(v112);

    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    sub_1004BBDD4(v113);
    v42 = v97;
    sub_1004BBE04();
    (*(v7 + 16))(v96, v42, v6);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v94 = v29;
    v43 = qword_100618C60;
    sub_1004B6DF4();
    v44 = sub_1004BBED4();
    v46 = v45;
    (*(v7 + 8))(v42, v6);
    v106 = v44;
    v107 = v46;
    sub_1002C4D1C();
    v47 = sub_1004B9D84();
    v49 = v48;
    v51 = v50;
    LODWORD(v106) = sub_1004B9654();
    v52 = sub_1004B9C84();
    v54 = v53;
    v56 = v55;
    sub_10002FA24(v47, v49, v51 & 1);

    if (qword_100609C50 != -1)
    {
      swift_once();
    }

    v57 = sub_1004B9CE4();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_10002FA24(v52, v54, v56 & 1);

    v101 = v57;
    v102 = v59;
    v103 = v61 & 1;
    v104 = v63;
    v105 = 1;
    sub_1004B9514();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10034C374(v106, v107, v108);
    v29 = v94;
  }

  else
  {
    v95 = v35;
    v72 = v97;
    sub_1004BBDA4();
    (*(v7 + 16))(v96, v72, v6);
    if (qword_100609A20 != -1)
    {
      swift_once();
    }

    v73 = qword_100618C60;
    sub_1004B6DF4();
    v74 = sub_1004BBED4();
    v76 = v75;
    (*(v7 + 8))(v72, v6);
    v106 = v74;
    v107 = v76;
    sub_1002C4D1C();
    v77 = sub_1004B9D84();
    v79 = v78;
    v81 = v80;
    LODWORD(v106) = sub_1004B9654();
    v82 = sub_1004B9C84();
    v84 = v83;
    v86 = v85;
    sub_10002FA24(v77, v79, v81 & 1);

    if (qword_100609C50 != -1)
    {
      swift_once();
    }

    v87 = sub_1004B9CE4();
    v89 = v88;
    v91 = v90;
    v98 = v92;

    sub_10002FA24(v82, v84, v86 & 1);

    v101 = v87;
    v102 = v89;
    v103 = v91 & 1;
    v104 = v98;
    v105 = 0;
    sub_1004B9514();
    v64 = v106;
    v65 = v107;
    v66 = v108;
    v67 = v109;
    v68 = v110;
    sub_10034C374(v106, v107, v108);
  }

  v35 = v95;
LABEL_17:
  v69 = v99;
  sub_10034C318(v29, v35, v36, v99);
  sub_10034C35C(v64, v65, v66, v67, v68);
  sub_10034C3B0(v29, v35, v36, v69);
  sub_10034C3F4(v64, v65, v66, v67, v68);
  v70 = v100;
  *v100 = v29;
  v70[1] = v35;
  v70[2] = v36;
  v70[3] = v69;
  v70[4] = v64;
  v70[5] = v65;
  v70[6] = v66;
  v70[7] = v67;
  *(v70 + 64) = v68;
  sub_10034C3F4(v64, v65, v66, v67, v68);
  return sub_10034C3B0(v29, v35, v36, v69);
}

uint64_t sub_1003408DC(char a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1004BBDF4();
  __chkstk_darwin(v4 - 8);
  result = sub_1004BB774();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (Playlist.Collaborator.isHost.getter())
    {
      sub_1004BBDE4();
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      sub_1004BBDD4(v10);
      v11._countAndFlagsBits = v7;
      v11._object = v8;
      sub_1004BBDC4(v11);

      v12._countAndFlagsBits = 0x2972656E774F2820;
      v12._object = 0xE800000000000000;
      sub_1004BBDD4(v12);
      sub_1004BBE04();
      if (a1)
      {
        if (qword_100609A20 != -1)
        {
          swift_once();
        }
      }

      else if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v9 = qword_100618C60;
      sub_1004B6DF4();
      return sub_1004BBEC4();
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_100340B58(uint64_t a1, const char *a2, int a3)
{
  v6 = sub_1004B80B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.collaboration.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  return sub_100331454(a1, a3);
}

uint64_t sub_100340CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003ABC(&unk_10060EE90);
  __chkstk_darwin(v5 - 8);
  v32 = &v29 - v6;
  v7 = sub_100003ABC(&qword_10060DCB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v30 = &v29 - v9;
  v10 = sub_1004BBA84();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v14 = sub_1004BB924();
  (*(v11 + 8))(v13, v10);
  if (v14 == 2 || (v14 & 1) == 0 || (Playlist.Collaborator.isHost.getter() & 1) != 0 || (v15 = sub_1004BB7C4(), v15 == 2) || (v15 & 1) != 0)
  {
    v16 = 1;
    v17 = v34;
  }

  else
  {
    v19 = v32;
    sub_1004B86A4();
    v20 = sub_1004B86B4();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    v21 = v33;
    sub_10034BD68(a1, v33, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v23 = swift_allocObject();
    sub_10034BDD4(v21, v23 + v22, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
    v24 = v30;
    sub_1004BA464();
    v25 = sub_1004BA264();
    KeyPath = swift_getKeyPath();
    v27 = (v24 + *(v7 + 36));
    *v27 = KeyPath;
    v27[1] = v25;
    v28 = v34;
    sub_100025B04(v24, v34, &qword_10060DCB0);
    v17 = v28;
    v16 = 0;
  }

  return (*(v8 + 56))(v17, v16, 1, v7);
}

uint64_t sub_100341100(uint64_t a1)
{
  v2 = sub_1004B80B4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100003ABC(&unk_10060DB30);
  __chkstk_darwin(v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = sub_1004BB7D4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_10000F778(v11, v8, &unk_10060DB30);
  sub_100003ABC(&qword_10060DAB8);
  sub_1004BA434();
  sub_100007214(v11, &unk_10060DB30);
  v15 = (a1 + *(v14 + 24));
  v16 = *v15;
  v17 = *(v15 + 1);
  v23[16] = v16;
  v24 = v17;
  v23[15] = 1;
  sub_100003ABC(&qword_10060C3C8);
  sub_1004BA434();
  v18 = Logger.collaboration.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v18, v2);
  v19 = sub_1004B8094();
  v20 = sub_1004BC9A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[Management] Remove swipe action triggered", v21, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003413F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  sub_1004BBDA4();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v10 = qword_100618C60;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  v13 = v12;
  (*(v4 + 8))(v9, v3);
  v18[1] = v11;
  v18[2] = v13;
  sub_1002C4D1C();
  result = sub_1004B9D84();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_1003415FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v62 = a2;
  v2 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v56 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v57 = v3;
  v59 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BA214();
  __chkstk_darwin(v4 - 8);
  v61 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = v48 - v7;
  v8 = sub_1004B6E64();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1004BBE14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  sub_1004BBDA4();
  v49 = *(v10 + 16);
  v49(v12, v15, v9);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v16 = qword_100618C60;
  v17 = qword_100618C60;
  v48[3] = v16;
  v18 = v17;
  sub_1004B6DF4();
  v19 = v18;
  v20 = sub_1004BBED4();
  v22 = v21;
  v23 = *(v10 + 8);
  v23(v15, v9);
  v48[1] = v10 + 8;
  v63 = v20;
  v64 = v22;
  v48[2] = sub_1002C4D1C();
  v24 = sub_1004B9D84();
  v54 = v25;
  v55 = v24;
  v52 = v26;
  v53 = v27;
  sub_1004BBDA4();
  v28 = v49;
  v49(v12, v15, v9);
  sub_1004B6DF4();
  v48[0] = v10 + 16;
  v29 = sub_1004BBED4();
  v31 = v30;
  v23(v15, v9);
  v63 = v29;
  v64 = v31;
  v32 = sub_1004B9D84();
  v50 = v33;
  v51 = v32;
  v48[4] = v34 & 1;
  v48[5] = v35;
  sub_1004BBDA4();
  v28(v12, v15, v9);
  sub_1004B6DF4();
  v36 = sub_1004BBED4();
  v38 = v37;
  v23(v15, v9);
  v63 = v36;
  v64 = v38;
  v39 = sub_1004B9D84();
  v41 = v40;
  v43 = v42;
  v44 = v59;
  sub_10034BD68(v58, v59, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  v45 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v46 = swift_allocObject();
  sub_10034BDD4(v44, v46 + v45, _s10ManagementO4ViewV19CollaboratorRowViewVMa);
  sub_1004BA1E4();
  sub_10002FA24(v39, v41, v43 & 1);

  sub_1004BA1F4();
  return sub_1004BA1D4();
}

uint64_t sub_100341BA4()
{
  v0 = sub_100003ABC(&unk_10060DB30);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  sub_100003ABC(&qword_10060DAB8);
  sub_1004BA424();
  sub_100330BAC(v2);
  return sub_100007214(v2, &unk_10060DB30);
}

uint64_t sub_100341C80()
{
  v0 = sub_1004B6E64();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100618C60;
  sub_1004B6DF4();
  v9 = sub_1004BBED4();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100341E84@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_1004B87C4();
  v2 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v5;
  v6 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_100003ABC(&qword_10060DDF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = sub_100003ABC(&qword_10060DE00);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v52 = sub_100003ABC(&qword_10060DE08);
  __chkstk_darwin(v52);
  v53 = &v52 - v17;
  sub_10034BD68(v1, &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_10034BDD4(&v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s10ManagementO4ViewV5ShareO6ButtonVMa);
  v58 = v1;
  sub_100003ABC(&qword_10060DE18);
  sub_10034C6F4();
  sub_1004BA474();
  sub_1004BA754();
  sub_1004B8E94();
  (*(v10 + 32))(v16, v12, v9);
  v20 = &v16[*(v14 + 44)];
  v21 = v64;
  *(v20 + 4) = v63;
  *(v20 + 5) = v21;
  *(v20 + 6) = v65;
  v22 = v60;
  *v20 = v59;
  *(v20 + 1) = v22;
  v23 = v62;
  *(v20 + 2) = v61;
  *(v20 + 3) = v23;
  if (sub_100342C44())
  {
    if (qword_100609C90 != -1)
    {
      swift_once();
    }

    v24 = qword_10060D248;
  }

  else
  {
    v25 = [objc_opt_self() tertiaryLabelColor];
    v24 = sub_1004BA304();
  }

  KeyPath = swift_getKeyPath();
  v27 = v53;
  sub_100025B04(v16, v53, &qword_10060DE00);
  v28 = (v27 + *(v52 + 36));
  *v28 = KeyPath;
  v28[1] = v24;
  v29 = v54;
  sub_100342D9C(v54);
  v31 = v55;
  v30 = v56;
  (*(v2 + 104))(v55, enum case for ColorScheme.light(_:), v56);
  v32 = sub_1004B87B4();
  v33 = *(v2 + 8);
  v33(v31, v30);
  v33(v29, v30);
  v34 = objc_opt_self();
  v35 = &selRef_systemBackgroundColor;
  if ((v32 & 1) == 0)
  {
    v35 = &selRef_secondarySystemBackgroundColor;
  }

  v36 = [v34 *v35];
  v37 = sub_1004BA304();
  v38 = sub_100003ABC(&qword_10060DE68);
  v39 = v57;
  v40 = (v57 + *(v38 + 36));
  v41 = sub_100003ABC(&qword_10060DE70);
  v42 = v40 + *(v41 + 52);
  v43 = *(sub_1004B8E74() + 20);
  v44 = enum case for RoundedCornerStyle.continuous(_:);
  v45 = sub_1004B92C4();
  (*(*(v45 - 8) + 104))(&v42[v43], v44, v45);
  __asm { FMOV            V0.2D, #10.0 }

  *v42 = _Q0;
  *v40 = v37;
  *(v40 + *(v41 + 56)) = 256;
  return sub_100025B04(v27, v39, &qword_10060DE08);
}

__n128 sub_10034249C@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060DE40);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v18 - v6;
  v8 = sub_100003ABC(&qword_10060DE30);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  *v7 = sub_1004B9344();
  *(v7 + 1) = 0x4008000000000000;
  v7[16] = 0;
  sub_100342694(a1, &v7[*(v5 + 52)]);
  if (*a1)
  {
    v12 = 2.5;
  }

  else
  {
    v12 = 0.0;
  }

  sub_100025B04(v7, v11, &qword_10060DE40);
  v13 = &v11[*(v9 + 44)];
  *v13 = 0;
  *(v13 + 1) = v12;
  sub_1004BA754();
  sub_1004B8E94();
  sub_100025B04(v11, a2, &qword_10060DE30);
  v14 = a2 + *(sub_100003ABC(&qword_10060DE18) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_100342694@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v50 = sub_100003ABC(&qword_10060DE78);
  __chkstk_darwin(v50);
  v4 = v47 - v3;
  v5 = sub_100003ABC(&qword_10060DE80);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v7 = v47 - v6;
  v8 = sub_100003ABC(&qword_10060DE88);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v51 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v47 - v11;
  v47[1] = *a1;
  v13 = sub_1004BA324();
  v14 = sub_1004B9A44();
  KeyPath = swift_getKeyPath();
  v56 = v13;
  v57 = KeyPath;
  v58 = v14;
  sub_1004B9AA4();
  v16 = sub_100003ABC(&qword_10060DE90);
  v17 = sub_10034C900();
  sub_1004B9DE4();

  if (qword_100609CA0 != -1)
  {
    swift_once();
  }

  v18 = sub_100007084(v50, qword_10060D268);
  sub_10000F778(v18, v4, &qword_10060DE78);
  v56 = v16;
  v57 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000206D4(&qword_10060DEB0, &qword_10060DE78);
  v55 = v12;
  v19 = v49;
  sub_1004B9EE4();
  sub_100007214(v4, &qword_10060DE78);
  (*(v48 + 8))(v7, v19);
  v56 = sub_100341C80();
  v57 = v20;
  sub_1002C4D1C();
  v21 = sub_1004B9D84();
  v23 = v22;
  v25 = v24;
  if (qword_100609C58 != -1)
  {
    swift_once();
  }

  v26 = sub_1004B9CE4();
  v28 = v27;
  v30 = v29;

  sub_10002FA24(v21, v23, v25 & 1);

  if (qword_100609C60 != -1)
  {
    swift_once();
  }

  v31 = sub_1004B9C74();
  v33 = v32;
  v35 = v34;
  v50 = v36;
  sub_10002FA24(v26, v28, v30 & 1);

  v37 = v51;
  v38 = v52;
  v39 = *(v52 + 16);
  v40 = v53;
  v39(v51, v55, v53);
  v41 = v54;
  *v54 = 0;
  *(v41 + 8) = 1;
  v42 = sub_100003ABC(&qword_10060DEB8);
  v39(v41 + v42[12], v37, v40);
  v43 = v41 + v42[16];
  *v43 = v31;
  *(v43 + 1) = v33;
  v35 &= 1u;
  v43[16] = v35;
  *(v43 + 3) = v50;
  v44 = v41 + v42[20];
  *v44 = 0x4020000000000000;
  v44[8] = 0;
  sub_10002FA14(v31, v33, v35);
  v45 = *(v38 + 8);

  v45(v55, v40);
  sub_10002FA24(v31, v33, v35);

  return (v45)(v37, v40);
}

uint64_t sub_100342C44()
{
  v1 = sub_1004B9184();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(_s10ManagementO4ViewV5ShareO6ButtonVMa(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1004BC994();
    v7 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();
    sub_10034C67C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_100342D9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060DE10);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  sub_10000F778(v1 + *(v10 + 24), v9, &qword_10060DE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1004B87C4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1004BC994();
    v13 = sub_1004B9904();
    sub_1004B7F84();

    sub_1004B9174();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100342FA8()
{
  sub_1004BA7A4();
  sub_1004B8B24();
}

uint64_t sub_100343034@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100003ABC(&qword_10060DE78);
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v16 = sub_1004BA324();
  sub_1004B9A34();
  v6 = sub_1004B9A54();

  KeyPath = swift_getKeyPath();
  v8 = sub_1004BA2B4();
  v9 = swift_getKeyPath();
  if (qword_100609C78 != -1)
  {
    swift_once();
  }

  sub_1004BA754();
  sub_1004B8994();
  if (a1)
  {
    v10 = sub_1004BA264();
  }

  else
  {
    v10 = sub_1004BA2A4();
  }

  v11 = v10;
  v12 = sub_1004B9964();
  *&v20[8] = v22[2];
  *&v20[24] = v22[3];
  *&v18 = v16;
  *(&v18 + 1) = KeyPath;
  *&v19 = v6;
  *(&v19 + 1) = v9;
  *v20 = v8;
  *&v20[40] = v22[4];
  *&v20[56] = v11;
  v20[64] = v12;
  *&v20[65] = 256;
  if (qword_100609CA0 != -1)
  {
    swift_once();
  }

  v13 = sub_100007084(v3, qword_10060D268);
  sub_10000F778(v13, v5, &qword_10060DE78);
  sub_100003ABC(&qword_10060E5B0);
  sub_100350340();
  sub_1000206D4(&qword_10060DEB0, &qword_10060DE78);
  sub_1004B9EE4();
  sub_100007214(v5, &qword_10060DE78);
  v21[4] = *&v20[32];
  v22[0] = *&v20[48];
  *(v22 + 15) = *&v20[63];
  v21[0] = v18;
  v21[1] = v19;
  v21[2] = *v20;
  v21[3] = *&v20[16];
  return sub_100007214(v21, &qword_10060E5B0);
}

uint64_t sub_100343318@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1004B9594();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003ABC(&qword_10060E5A0);
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = &v22 - v7;
  v9 = *v1;
  v11 = *(v1 + 1);
  v10 = *(v1 + 2);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v26 = v9;
  v27 = v11;
  v28 = v10;

  sub_100003ABC(&qword_10060E5A8);
  v13 = sub_100003B68(&qword_10060E5B0);
  v14 = sub_100003B68(&qword_10060DE78);
  v15 = sub_100350340();
  v16 = sub_1000206D4(&qword_10060DEB0, &qword_10060DE78);
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  sub_1004BA474();
  sub_1004B9584();
  sub_1000206D4(&qword_10060E600, &qword_10060E5A0);
  sub_10034A084(&qword_10060E1E0, &type metadata accessor for BorderlessButtonStyle);
  v17 = v25;
  v19 = v22;
  v18 = v23;
  sub_1004B9E14();
  (*(v24 + 8))(v5, v18);
  (*(v6 + 8))(v8, v19);
  v20 = (v17 + *(sub_100003ABC(&qword_10060E608) + 36));
  sub_100003ABC(&qword_10060E610);
  sub_1004B8EB4();
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t Collaboration.Management.ViewController.__allocating_init(model:)()
{
  v1 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = objc_allocWithZone(v0);

  Collaboration.Management.View.init(model:)(v3);
  v5 = sub_1004B93F4();

  return v5;
}

uint64_t Collaboration.Management.ViewController.init(model:)()
{
  v0 = type metadata accessor for Collaboration.Management.View(0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));

  Collaboration.Management.View.init(model:)(v2);
  v3 = sub_1004B93F4();

  return v3;
}

Swift::Void __swiftcall Collaboration.Management.ViewController.viewWillLayoutSubviews()()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 effectiveGeometry];

      v6 = [v5 coordinateSpace];
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = 0;
      v12 = v8;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v11 = 1;
    }

    sub_100343AB8(v12, v13, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_100343960(void *a1)
{
  v1 = a1;
  Collaboration.Management.ViewController.viewWillLayoutSubviews()();
}

id Collaboration.Management.ViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  sub_100343AB8(*&a2, *&a3, 0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  return objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
}

void sub_100343A18(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v11 = a1;
  sub_100343AB8(*&a2, *&a3, 0);
  v12.receiver = v11;
  v12.super_class = type metadata accessor for Collaboration.Management.ViewController(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100343AB8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = objc_opt_self();
  v8 = [v7 currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = 512.0;
  }

  else
  {
    v10 = 540.0;
  }

  if (v9 == 6)
  {
    v11 = 620.0;
  }

  else
  {
    v11 = 700.0;
  }

  v12 = [v7 currentTraitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && (a3 & 1) == 0)
  {
    if (qword_100609B80 != -1)
    {
      swift_once();
    }

    v14 = *&qword_100618FC8 + *&qword_100618FC8;
    if (v11 + *&qword_100618FC8 + *&qword_100618FC8 > *&a2)
    {
      v11 = *&a2 - (*&qword_100618FC8 + *&qword_100618FC8);
    }

    if (v10 + v14 > *&a1)
    {
      v10 = *&a1 - v14;
    }
  }

  [v3 preferredContentSize];
  if (v10 != v16 || v11 != v15)
  {
    [v3 setPreferredContentSize:{v10, v11}];
    v18 = [v3 navigationController];
    if (v18)
    {
      v19 = v18;
      [v18 setPreferredContentSize:{v10, v11}];
    }
  }
}

uint64_t sub_100343D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C4EC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100343D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C4EC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100343DE4()
{
  sub_10034C4EC();
  sub_1004B9834();
  __break(1u);
}

char *sub_100343E0C()
{
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v16 - v7;
  v9 = *(v0 + 16);
  v18[0] = *v0;
  v18[1] = v9;
  v19 = *(v0 + 32);
  sub_10034C460(v0, v17);
  sub_1004BBDA4();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v11 = qword_100618C60;
  sub_1004B6DF4();
  v12 = v11;
  v16[1] = sub_1004BBED4();
  v13 = *(v3 + 8);
  v13(v8, v2);
  sub_1004BBDA4();
  v10(v5, v8, v2);
  sub_1004B6DF4();
  sub_1004BBED4();
  v13(v8, v2);
  v14 = objc_allocWithZone(type metadata accessor for QRCodeOverlayViewController());
  return QRCodeOverlayViewController.init(qrCode:title:subtitle:)(v18);
}

uint64_t sub_100344110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C498();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100344174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C498();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003441D8()
{
  sub_10034C498();
  sub_1004B9834();
  __break(1u);
}

uint64_t PlaylistCurators.Curator.init(name:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for PlaylistCurators.Curator(0);
  return sub_100025B04(a3, a4 + *(v6 + 20), &unk_10060EBE0);
}

uint64_t sub_100344264@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B9184();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060D3D0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlaylistCurators.View(0);
  sub_10000F778(v1 + *(v10 + 20), v9, &qword_10060D3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100025B04(v9, a1, &qword_10060A208);
  }

  sub_1004BC994();
  v12 = sub_1004B9904();
  sub_1004B7F84();

  sub_1004B9174();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t PlaylistCurators.View.init(configuration:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for PlaylistCurators.View(0) + 20);
  *(a2 + v4) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t PlaylistCurators.View.body.getter()
{
  v1 = sub_100003ABC(&qword_10060D3D8);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = sub_1004B9204();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_100003ABC(&qword_10060D3E0);
  sub_1003445EC(v0, &v3[*(v4 + 44)]);
  sub_1000206D4(&qword_10060D3E8, &qword_10060D3D8);
  sub_1004B9DA4();
  return sub_100007214(v3, &qword_10060D3D8);
}

uint64_t sub_1003445EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1004B9664();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v51 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100003ABC(&unk_10060D3F0);
  __chkstk_darwin(v53);
  v6 = &v49 - v5;
  v7 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v7 - 8);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v58 = &v49 - v13;
  v14 = sub_100003ABC(&qword_10060DF40);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - v15;
  v17 = sub_100003ABC(&qword_10060DF48);
  __chkstk_darwin(v17);
  v56 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  *v16 = sub_1004B9204();
  *(v16 + 1) = 0x4018000000000000;
  v16[16] = 0;
  v25 = sub_100003ABC(&qword_10060DF50);
  sub_100344CD0(a1, &v16[*(v25 + 44)]);
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  v26 = unk_100619010;
  v27 = byte_100619018;
  if (byte_100619018)
  {
    v28 = *&static Corner.medium;
  }

  else
  {
    v28 = *&static Corner.medium + -3.0;
  }

  sub_100025B04(v16, v21, &qword_10060DF40);
  v29 = &v21[*(v17 + 36)];
  *v29 = v28;
  *(v29 + 1) = v26;
  v29[16] = v27;
  *(v29 + 3) = 0x4008000000000000;
  *(v29 + 4) = 0;
  *(v29 + 20) = 257;
  sub_100025B04(v21, v24, &qword_10060DF48);
  v30 = v58;
  sub_100344264(v58);
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v11, enum case for UserInterfaceSizeClass.regular(_:), v55);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = *(v53 + 48);
  sub_10000F778(v30, v6, &qword_10060A208);
  sub_10000F778(v11, &v6[v33], &qword_10060A208);
  v34 = *(v32 + 48);
  v35 = v34(v6, 1, v31);
  v53 = v24;
  if (v35 != 1)
  {
    v50 = v11;
    v38 = v52;
    sub_10000F778(v6, v52, &qword_10060A208);
    v39 = v31;
    if (v34(&v6[v33], 1, v31) != 1)
    {
      v40 = &v6[v33];
      v41 = v51;
      (*(v32 + 32))(v51, v40, v31);
      sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass);
      v42 = v38;
      v36 = sub_1004BBD84();
      v43 = *(v32 + 8);
      v43(v41, v39);
      sub_100007214(v50, &qword_10060A208);
      sub_100007214(v58, &qword_10060A208);
      v43(v42, v39);
      v37 = v53;
      sub_100007214(v6, &qword_10060A208);
      goto LABEL_13;
    }

    sub_100007214(v50, &qword_10060A208);
    sub_100007214(v58, &qword_10060A208);
    (*(v32 + 8))(v38, v31);
    goto LABEL_11;
  }

  sub_100007214(v11, &qword_10060A208);
  sub_100007214(v58, &qword_10060A208);
  if (v34(&v6[v33], 1, v31) != 1)
  {
LABEL_11:
    sub_100007214(v6, &unk_10060D3F0);
    v36 = 0;
    v37 = v53;
    goto LABEL_13;
  }

  sub_100007214(v6, &qword_10060A208);
  v36 = 1;
  v37 = v53;
LABEL_13:
  v44 = v56;
  sub_10000F778(v37, v56, &qword_10060DF48);
  v45 = v37;
  v46 = v57;
  sub_10000F778(v44, v57, &qword_10060DF48);
  v47 = v46 + *(sub_100003ABC(&qword_10060DF58) + 48);
  *v47 = 0;
  *(v47 + 8) = v36 & 1;
  *(v47 + 9) = (v36 & 1) == 0;
  sub_100007214(v45, &qword_10060DF48);
  return sub_100007214(v44, &qword_10060DF48);
}

uint64_t sub_100344CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_100003ABC(&qword_10060DF60);
  __chkstk_darwin(v3 - 8);
  v70 = &v55[-v4];
  v5 = sub_1004B9B54();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin(v5);
  v67 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1004B9D34();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v61 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = sub_100003ABC(&qword_10060DF68) - 8;
  __chkstk_darwin(v68);
  v69 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v55[-v11];
  v12 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v12 - 8);
  v14 = &v55[-v13];
  v15 = sub_100003ABC(&qword_10060DF70);
  __chkstk_darwin(v15 - 8);
  v66 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v55[-v18];
  sub_100344264(v14);
  v20 = sub_10034CFDC(v14);
  sub_100007214(v14, &qword_10060A208);
  *v19 = sub_1004B9204();
  v19[1] = v20;
  *(v19 + 16) = 0;
  v65 = v19;
  sub_100003ABC(&qword_10060DF78);
  v62 = a1;
  sub_100345400(a1);
  v74 = sub_1003467B4();
  v75 = v21;
  sub_1002C4D1C();
  v58 = sub_1004B9D84();
  v57 = v22;
  v59 = v23;
  v74 = v58;
  v75 = v22;
  v56 = v24 & 1;
  v76 = v24 & 1;
  v77 = v23;
  String.nonBreakingSpace.unsafeMutableAddressor();

  sub_1004BA324();

  v25 = sub_1004B9D94();
  v27 = v26;
  v29 = v28;
  v30 = sub_1004B9CB4();
  v32 = v31;
  v34 = v33;
  sub_10002FA24(v25, v27, v29 & 1);

  v35 = v61;
  sub_1004B9D24();
  sub_10002FA24(v30, v32, v34 & 1);

  v36 = v60;
  sub_1004B9E04();
  (*(v63 + 8))(v35, v64);
  sub_10002FA24(v58, v57, v56);

  KeyPath = swift_getKeyPath();
  v38 = v36 + *(sub_100003ABC(&qword_10060DF80) + 36);
  *v38 = KeyPath;
  *(v38 + 8) = 1;
  *(v38 + 16) = 0;
  v39 = (v36 + *(sub_100003ABC(&qword_10060DF88) + 36));
  v40 = *(sub_100003ABC(&qword_10060DF90) + 28);
  v41 = enum case for Image.Scale.small(_:);
  v42 = sub_1004BA374();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = swift_getKeyPath();
  v43 = v67;
  PlaylistCurators.View.fontTextStyle.getter(v67);
  v44 = sub_1004B9A64();
  v45 = v70;
  (*(*(v44 - 8) + 56))(v70, 1, 1, v44);
  v46 = sub_1004B9AC4();
  sub_100007214(v45, &qword_10060DF60);
  (*(v71 + 8))(v43, v72);
  v47 = swift_getKeyPath();
  v48 = (v36 + *(v68 + 44));
  *v48 = v47;
  v48[1] = v46;
  v50 = v65;
  v49 = v66;
  sub_10000F778(v65, v66, &qword_10060DF70);
  v51 = v69;
  sub_10000F778(v36, v69, &qword_10060DF68);
  v52 = v73;
  sub_10000F778(v49, v73, &qword_10060DF70);
  v53 = sub_100003ABC(&qword_10060DF98);
  sub_10000F778(v51, v52 + *(v53 + 48), &qword_10060DF68);
  sub_100007214(v36, &qword_10060DF68);
  sub_100007214(v50, &qword_10060DF70);
  sub_100007214(v51, &qword_10060DF68);
  return sub_100007214(v49, &qword_10060DF70);
}

uint64_t sub_100345400(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistCurators.View(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  if (*(*a1 + 16) <= 3uLL)
  {
  }

  else
  {
    v6 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
    sub_1002BD990(v5, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 7uLL);
    v5 = v7;
  }

  sub_1003D28E4(v8);
  v10 = v9;

  v15[1] = v10;
  swift_getKeyPath();
  sub_10034BD68(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.View);
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  sub_10034BDD4(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PlaylistCurators.View);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10034D59C;
  *(v13 + 24) = v12;
  sub_100003ABC(&qword_10060DFA0);
  sub_100003ABC(&qword_10060DFA8);
  sub_1000206D4(&qword_10060DFB0, &qword_10060DFA0);
  sub_10034D6C8();
  return sub_1004BA654();
}

uint64_t sub_10034568C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = __OFSUB__(v5, result);
  v7 = v5 - result;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    sub_1003456F4(a2, a4);
    result = sub_100003ABC(&qword_10060DFA8);
    *(a4 + *(result + 36)) = v8;
  }

  return result;
}

uint64_t sub_1003456F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v125 = a2;
  v2 = sub_1004BB634();
  v129 = *(v2 - 8);
  __chkstk_darwin(v2);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004B7D94();
  v123 = *(v4 - 8);
  v124 = v4;
  __chkstk_darwin(v4);
  v127 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = &v95 - v7;
  __chkstk_darwin(v8);
  v121 = &v95 - v9;
  __chkstk_darwin(v10);
  v119 = &v95 - v11;
  v12 = sub_1004B7D04();
  v128 = *(v12 - 8);
  __chkstk_darwin(v12);
  v130 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14 - 8);
  v101 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v126 = &v95 - v17;
  v18 = sub_100003ABC(&qword_10060DD10);
  __chkstk_darwin(v18 - 8);
  v105 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v95 - v21;
  v23 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v23 - 8);
  v106 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v102 = &v95 - v26;
  __chkstk_darwin(v27);
  v29 = &v95 - v28;
  v30 = sub_100003ABC(&qword_10060EF20);
  __chkstk_darwin(v30 - 8);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v98 = &v95 - v33;
  __chkstk_darwin(v34);
  v36 = &v95 - v35;
  v116 = sub_100003ABC(&unk_10060E030);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v95 - v37;
  v104 = sub_100003ABC(&qword_10060DFF8);
  __chkstk_darwin(v104);
  v111 = &v95 - v38;
  v108 = sub_100003ABC(&qword_10060DFE8);
  __chkstk_darwin(v108);
  v109 = &v95 - v39;
  v107 = sub_100003ABC(&qword_10060DFD8);
  __chkstk_darwin(v107);
  v115 = &v95 - v40;
  v112 = sub_100003ABC(&qword_10060DFC8);
  __chkstk_darwin(v112);
  v113 = &v95 - v41;
  v42 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v42 - 8);
  v44 = &v95 - v43;
  sub_100344264(&v95 - v43);
  v45 = sub_10034DA1C(v44);
  sub_100007214(v44, &qword_10060A208);
  v46 = type metadata accessor for PlaylistCurators.Curator(0);
  sub_10000F778(v122 + *(v46 + 20), v29, &unk_10060EBE0);
  sub_1004BB5B4();
  v47 = *(v129 + 56);
  v122 = v2;
  v97 = v129 + 56;
  v96 = v47;
  v47(v22, 0, 1, v2);
  v48 = sub_1004BB6C4();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v29, 1, v48) == 1)
  {
    sub_100007214(v22, &qword_10060DD10);
    sub_100007214(v29, &unk_10060EBE0);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
  }

  else
  {
    (*(v49 + 32))(v36, v29, v48);
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_100025B04(v22, &v36[*(v50 + 20)], &qword_10060DD10);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
  }

  v51 = sub_100003ABC(&unk_10060DD30);
  v52 = v126;
  (*(*(v51 - 8) + 56))(v126, 8, 11, v51);
  v100 = v45;
  v138 = 0;
  v136 = 0;
  v134 = 1;
  v53 = *(v128 + 104);
  v120 = v12;
  v53(v130, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v12);
  v54 = v101;
  sub_10034BD68(v52, v101, type metadata accessor for ArtworkImage.Placeholder);
  v55 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v56 = (v15 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_10034BDD4(v54, v57 + v55, type metadata accessor for ArtworkImage.Placeholder);
  v58 = v57 + v56;
  *v58 = v45;
  *(v58 + 8) = v138;
  *(v58 + 9) = *v137;
  *(v58 + 12) = *&v137[3];
  *(v58 + 16) = v45;
  *(v58 + 24) = v136;
  *(v58 + 25) = *v135;
  *(v58 + 28) = *&v135[3];
  *(v58 + 32) = 0;
  *(v58 + 40) = v134;
  *(v58 + 41) = 1;
  v59 = v98;
  sub_10000F778(v36, v98, &qword_10060EF20);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v60 = *(*(v50 - 8) + 48);
  v61 = v36;
  if (v60(v59, 1, v50) == 1)
  {
    sub_100007214(v59, &qword_10060EF20);
    v62 = 1;
    v63 = v102;
  }

  else
  {
    v63 = v102;
    (*(v49 + 16))(v102, v59, v48);
    sub_10034C2B8(v59, type metadata accessor for ArtworkImage.ViewModel);
    v62 = 0;
  }

  (*(v49 + 56))(v63, v62, 1, v48);
  sub_10000F778(v63, v106, &unk_10060EBE0);
  v64 = v119;
  sub_1004B7D54();
  sub_100007214(v63, &unk_10060EBE0);
  sub_1004B7D34();
  v106 = v61;
  v65 = v103;
  sub_10000F778(v61, v103, &qword_10060EF20);
  v66 = v60(v65, 1, v50);
  v67 = v120;
  if (v66 == 1)
  {
    sub_100007214(v65, &qword_10060EF20);
    v68 = v105;
    v69 = v122;
    v96(v105, 1, 1, v122);
    v70 = v129;
    v71 = v118;
  }

  else
  {
    v68 = v105;
    sub_10000F778(v65 + *(v50 + 20), v105, &qword_10060DD10);
    sub_10034C2B8(v65, type metadata accessor for ArtworkImage.ViewModel);
    v70 = v129;
    v69 = v122;
    v72 = (*(v129 + 48))(v68, 1, v122);
    v71 = v118;
    if (v72 != 1)
    {
      (*(v70 + 32))(v118, v68, v69);
      goto LABEL_15;
    }
  }

  if (qword_100609C08 != -1)
  {
    swift_once();
  }

  v73 = sub_100007084(v69, static Artwork.CropStyle.fallback);
  (*(v70 + 16))(v71, v73, v69);
  if ((*(v70 + 48))(v68, 1, v69) != 1)
  {
    sub_100007214(v68, &qword_10060DD10);
  }

LABEL_15:
  v74 = v117;
  v75 = v127;
  sub_1004B7D14();
  (*(v70 + 8))(v71, v69);
  v76 = v124;
  v77 = *(v123 + 8);
  v77(v75, v124);
  v78 = v121;
  sub_1004B7D44();
  v77(v74, v76);
  sub_100003ABC(&qword_10060C998);
  sub_1003169C4();
  v79 = v110;
  sub_1004B7D24();

  v77(v78, v76);
  v77(v64, v76);
  (*(v128 + 8))(v130, v67);
  sub_10034C2B8(v126, type metadata accessor for ArtworkImage.Placeholder);
  sub_100007214(v106, &qword_10060EF20);
  v80 = v111;
  v81 = &v111[*(v104 + 36)];
  v82 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v81 + v82) = swift_getKeyPath();
  sub_100003ABC(&qword_100609E68);
  swift_storeEnumTagMultiPayload();
  *v81 = sub_100347018;
  v81[1] = 0;
  (*(v114 + 32))(v80, v79, v116);
  sub_1004BA754();
  sub_1004B8994();
  v83 = v109;
  sub_100025B04(v80, v109, &qword_10060DFF8);
  v84 = (v83 + *(v108 + 36));
  v85 = v132;
  *v84 = v131;
  v84[1] = v85;
  v84[2] = v133;
  v86 = v115;
  sub_100025B04(v83, v115, &qword_10060DFE8);
  v87 = v86 + *(v107 + 36);
  *v87 = 0;
  *(v87 + 8) = 0;
  *(v87 + 16) = 2;
  if (qword_100609CB0 != -1)
  {
    swift_once();
  }

  v88 = qword_10060D288;
  v89 = qword_10060D290;
  v90 = byte_10060D298;
  v91 = v86;
  v92 = v113;
  sub_100025B04(v91, v113, &qword_10060DFD8);
  v93 = v92 + *(v112 + 36);
  *v93 = v88;
  *(v93 + 8) = v89;
  *(v93 + 16) = v90;
  *(v93 + 24) = 0;
  *(v93 + 32) = 0;
  *(v93 + 40) = 2;
  sub_100025B04(v92, v125, &qword_10060DFC8);
}

uint64_t sub_1003467B4()
{
  v1 = sub_1004B6E64();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_1004BBDF4();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for PlaylistCurators.Curator(0) - 8;
  __chkstk_darwin(v10);
  v13 = (v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*v0 + 16);
  if (v14)
  {
    sub_10034BD68(*v0 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaylistCurators.Curator);
    v15 = v14 - 1;
    if (v15)
    {
      sub_1004BBDE4();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      sub_1004BBDD4(v20);
      sub_1004BBDC4(*v13);
      v21._countAndFlagsBits = 2106912;
      v21._object = 0xE300000000000000;
      sub_1004BBDD4(v21);
      v19[1] = v15;
      sub_1004BBDB4();
      v22._countAndFlagsBits = 0x7328726568744F20;
      v22._object = 0xE900000000000029;
      sub_1004BBDD4(v22);
      sub_1004BBE04();
      (*(v3 + 16))(v5, v8, v2);
      if (qword_100609A20 != -1)
      {
        swift_once();
      }

      v17 = qword_100618C60;
      sub_1004B6DF4();
      countAndFlagsBits = sub_1004BBED4();
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      countAndFlagsBits = v13->_countAndFlagsBits;
    }

    sub_10034C2B8(v13, type metadata accessor for PlaylistCurators.Curator);
    return countAndFlagsBits;
  }

  else
  {
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

uint64_t PlaylistCurators.View.fontTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1004B9664();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003ABC(&unk_10060D3F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v8 - 8);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  sub_100344264(&v27 - v14);
  (*(v2 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v12, 0, 1, v1);
  v16 = *(v5 + 56);
  sub_10000F778(v15, v7, &qword_10060A208);
  sub_10000F778(v12, &v7[v16], &qword_10060A208);
  v17 = *(v2 + 48);
  if (v17(v7, 1, v1) == 1)
  {
    sub_100007214(v12, &qword_10060A208);
    sub_100007214(v15, &qword_10060A208);
    if (v17(&v7[v16], 1, v1) == 1)
    {
      sub_100007214(v7, &qword_10060A208);
LABEL_9:
      v18 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_10000F778(v7, v29, &qword_10060A208);
  if (v17(&v7[v16], 1, v1) == 1)
  {
    sub_100007214(v12, &qword_10060A208);
    sub_100007214(v15, &qword_10060A208);
    (*(v2 + 8))(v29, v1);
LABEL_6:
    sub_100007214(v7, &unk_10060D3F0);
    goto LABEL_7;
  }

  v19 = &v7[v16];
  v20 = v28;
  (*(v2 + 32))(v28, v19, v1);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass);
  v21 = v29;
  v22 = sub_1004BBD84();
  v23 = *(v2 + 8);
  v23(v20, v1);
  sub_100007214(v12, &qword_10060A208);
  sub_100007214(v15, &qword_10060A208);
  v23(v21, v1);
  sub_100007214(v7, &qword_10060A208);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = &enum case for Font.TextStyle.title2(_:);
LABEL_10:
  v24 = *v18;
  v25 = sub_1004B9B54();
  return (*(*(v25 - 8) + 104))(v30, v24, v25);
}

uint64_t sub_100347018(uint64_t a1)
{
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  v4[3] = &type metadata for Color;
  v4[4] = &protocol witness table for Color;
  v4[0] = sub_1004BA304();
  return sub_100047A5C(v4, a1 + 40, &qword_10060E040);
}

uint64_t sub_100347098()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_100347160;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100399BF8;
  v4[3] = &unk_1005C2A50;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_10060D280 = v2;
  return result;
}

id sub_100347160(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
    if (v4 == 2)
    {
      v3 = &selRef_blackColor;
    }
  }

  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_100347200()
{
  if (qword_100609CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_10060D280;
  result = sub_1004BA224();
  qword_10060D288 = result;
  qword_10060D290 = 0x3FF0000000000000;
  byte_10060D298 = 1;
  return result;
}

uint64_t PlaylistCurators.ViewController.configuration.setter(uint64_t a1)
{
  v3 = direct field offset for PlaylistCurators.ViewController.configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = sub_1004B9404();
  *v5 = a1;

  return v4(v7, 0);
}

void (*PlaylistCurators.ViewController.configuration.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v4 = direct field offset for PlaylistCurators.ViewController.configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  swift_beginAccess();
  return sub_1003473D4;
}

void sub_1003473D4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[4] + v3[5]);

    v5 = sub_1004B9404();
    *v6 = v4;

    v5(v3, 0);
  }

  free(v3);
}

uint64_t PlaylistCurators.ViewController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = objc_allocWithZone(v1);
  *&v7[direct field offset for PlaylistCurators.ViewController.configuration] = a1;
  v8 = *(v4 + 28);
  *(v6 + v8) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0);
  swift_storeEnumTagMultiPayload();
  *v6 = a1;

  return sub_1004B93F4();
}

uint64_t PlaylistCurators.ViewController.init(configuration:)(uint64_t a1)
{
  v3 = type metadata accessor for PlaylistCurators.View(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v1 + direct field offset for PlaylistCurators.ViewController.configuration) = a1;
  v7 = *(v6 + 28);
  *(v5 + v7) = swift_getKeyPath();
  sub_100003ABC(&qword_10060D3D0);
  swift_storeEnumTagMultiPayload();
  *v5 = a1;

  return sub_1004B93F4();
}

id sub_1003476E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003479FC()
{
  type metadata accessor for ClearBackground.Controller();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_100347A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C40C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100347A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10034C40C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100347B00()
{
  sub_10034C40C();
  sub_1004B9834();
  __break(1u);
}

uint64_t sub_100347B28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1004B85B4();
}

uint64_t sub_100347BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1004BB7D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
  v31 = a1;
  v10 = sub_1004BBCD4();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator);
      v19 = sub_1004BBD84();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100347E48();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1003486F8(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void *sub_100347E48()
{
  v1 = v0;
  v2 = sub_1004BB7D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEE0);
  v6 = *v0;
  v7 = sub_1004BD3B4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100348080()
{
  v1 = v0;
  v32 = sub_1004BB7D4();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_100003ABC(&qword_10060DEE0);
  v6 = sub_1004BD3C4();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
      result = sub_1004BBCD4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10034839C()
{
  v1 = v0;
  v35 = sub_1004BB7D4();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_100003ABC(&qword_10060DEE0);
  result = sub_1004BD3C4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
      result = sub_1004BBCD4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

void sub_1003486F8(int64_t a1)
{
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1004BD2F4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
        v23 = sub_1004BBCD4();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_100348A00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
  v33 = a2;
  v11 = sub_1004BBCD4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator);
      v21 = sub_1004BBD84();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100348CE0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100348CE0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034839C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_100347E48();
      goto LABEL_12;
    }

    sub_100348080();
  }

  v13 = *v3;
  sub_10034A084(&qword_10060DED0, &type metadata accessor for Playlist.Collaborator);
  v14 = sub_1004BBCD4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_10034A084(&qword_10060DED8, &type metadata accessor for Playlist.Collaborator);
      v22 = sub_1004BBD84();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1004BDA94();
  __break(1u);
  return result;
}

uint64_t sub_100348F84(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060E4B8);
  __chkstk_darwin(v2 - 8);
  sub_10000F778(a1, &v5 - v3, &qword_10060E4B8);
  return sub_1004B9044();
}

uint64_t sub_10034902C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL _s11MusicCoreUI16PlaylistCuratorsO7CuratorV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004BB6C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&unk_10060EBE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_100003ABC(&qword_10060E048);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 && a1[1] == a2[1] || (v14 = sub_1004BD9C4(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for PlaylistCurators.Curator(0) + 20);
    v17 = *(v11 + 48);
    sub_10000F778(a1 + v16, v13, &unk_10060EBE0);
    sub_10000F778(a2 + v16, &v13[v17], &unk_10060EBE0);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_100007214(v13, &unk_10060EBE0);
        return 1;
      }
    }

    else
    {
      sub_10000F778(v13, v10, &unk_10060EBE0);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_10034A084(&qword_10060E050, &type metadata accessor for Artwork);
        v20 = sub_1004BBD84();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_100007214(v13, &unk_10060EBE0);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_100007214(v13, &qword_10060E048);
    return 0;
  }

  return result;
}

uint64_t sub_10034946C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v64 = a1;
  v4 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v4 - 8);
  v66 = &v56 - v5;
  v6 = sub_100003ABC(&qword_10060DEE8);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v68 = sub_1004BBA84();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v62 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v8;
  __chkstk_darwin(v9);
  v61 = &v56 - v10;
  v60 = sub_100003ABC(&qword_10060D2F0);
  v59 = *(v60 - 1);
  __chkstk_darwin(v60);
  v12 = &v56 - v11;
  v57 = sub_100003ABC(&qword_10060D2D0);
  v13 = *(v57 - 8);
  __chkstk_darwin(v57);
  v15 = &v56 - v14;
  v16 = sub_100003ABC(&qword_10060D2B8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__pendingCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_100003ABC(&qword_10060D2A0);
  sub_1004B8564();
  v21 = *(v17 + 32);
  v21(v3 + v20, v19, v16);
  v22 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__activeCollaborators;
  *&v71[0] = _swiftEmptyArrayStorage;
  sub_1004B8564();
  v21(v3 + v22, v19, v16);
  v23 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__transientCollaborators;
  *&v71[0] = &_swiftEmptySetSingleton;
  sub_100003ABC(&qword_10060D2A8);
  sub_1004B8564();
  (*(v13 + 32))(v3 + v23, v15, v57);
  v24 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__isResetingURL;
  LOBYTE(v71[0]) = 0;
  sub_1004B8564();
  v25 = *(v59 + 32);
  v26 = v60;
  v25(v3 + v24, v12, v60);
  v27 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__shouldDismiss;
  LOBYTE(v71[0]) = 0;
  sub_1004B8564();
  v25(v3 + v27, v12, v26);
  v28 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model__hasNetworkConnectivity;
  static ApplicationCapabilities.shared.getter(v71);
  sub_100051DEC(v71);
  v70 = BYTE1(v71[0]);
  sub_1004B8564();
  v25(v3 + v28, v12, v26);
  v29 = v63;
  v30 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model____lazy_storage___artworkViewModel;
  v31 = sub_100003ABC(&qword_10060EF20);
  (*(*(v31 - 8) + 56))(v3 + v30, 1, 1, v31);
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponse) = 0;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_autoupdatingResponseSubscription) = 0;
  v59 = OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver;
  *(v3 + OBJC_IVAR____TtCOE11MusicCoreUIO9MusicCore13Collaboration10Management5Model_networkConnectivityNotificationObserver) = 0;
  *(v3 + 16) = v64;
  v32 = v67;
  v33 = *(v67 + 16);
  v34 = v61;
  v35 = v68;
  v33(v61, v29, v68);
  swift_beginAccess();
  v60 = v33;
  v33(v62, v34, v35);

  v36 = v35;
  sub_1004B8564();
  v37 = *(v32 + 8);
  v38 = v34;
  v64 = v32 + 8;
  v62 = v37;
  v37(v34, v36);
  swift_endAccess();
  v39 = v58;
  v40 = v29;
  sub_1004BB854();
  v41 = sub_1004BB844();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v39, 1, v41) == 1)
  {
    sub_100007214(v39, &qword_10060DEE8);
    v43 = 0;
  }

  else
  {
    v43 = Playlist.Collaboration.isOpenInvitation.getter();
    (*(v42 + 8))(v39, v41);
  }

  swift_beginAccess();
  v69 = v43 & 1;
  sub_1004B8564();
  swift_endAccess();
  v44 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v45 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v46 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v47 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v44, v45, 1, 1, sub_10034FB78, v46);
  *(v3 + v59) = v47;

  v48 = sub_1004BC4B4();
  v49 = v66;
  (*(*(v48 - 8) + 56))(v66, 1, 1, v48);
  v50 = v68;
  (v60)(v34, v40, v68);
  v51 = v67;
  v52 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v53 = (v65 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  (*(v51 + 32))(v54 + v52, v38, v50);
  *(v54 + v53) = v3;

  sub_1002E0EEC(0, 0, v49, &unk_1004E1B60, v54);

  v62(v40, v50);
  return v3;
}

unint64_t sub_100349E64()
{
  result = qword_10060D388;
  if (!qword_10060D388)
  {
    sub_100003B68(&qword_10060D380);
    sub_1000206D4(&qword_10060D390, &qword_10060D398);
    sub_1000206D4(&qword_10060D3A0, &qword_10060D3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060D388);
  }

  return result;
}

void sub_100349F9C(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for Collaboration.Management.View(0);

  sub_10033D468(a1, a2);
}

uint64_t sub_10034A084(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10034A124(uint64_t a1)
{
  result = sub_10034A084(&qword_10060D410, type metadata accessor for PlaylistCurators.View);
  *(a1 + 8) = result;
  return result;
}

void sub_10034A194()
{
  sub_10034B5D4(319, &qword_10060D450, &qword_10060D2A0, &unk_1004E08C0, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_10034B5D4(319, &qword_10060D458, &qword_10060D2A8, &unk_1004E08C8, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_10034B940(319, &qword_10060D460, &type metadata accessor for Playlist, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_10034B9A4(319, &qword_10060D468, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_10034B5D4(319, qword_10060D470, &qword_10060EF20, &unk_1004D9F00, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10034A414(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100003ABC(&unk_10060D7C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_100003ABC(&qword_10060D7D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_10034A5B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100003ABC(&unk_10060D7C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_100003ABC(&qword_10060D7D0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

void sub_10034A748()
{
  sub_10034A908();
  if (v0 <= 0x3F)
  {
    sub_10034B940(319, &qword_10060D848, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10034B940(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10034B940(319, &qword_10060D858, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10034B5D4(319, qword_10060D860, &qword_10060D350, &unk_1004E09A0, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10034B9A4(319, &unk_10060C188, &type metadata accessor for State);
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

void sub_10034A908()
{
  if (!qword_10060D840)
  {
    type metadata accessor for Collaboration.Management.Model(255);
    sub_10034A084(&qword_10060D358, type metadata accessor for Collaboration.Management.Model);
    v0 = sub_1004B8BA4();
    if (!v1)
    {
      atomic_store(v0, &qword_10060D840);
    }
  }
}

uint64_t sub_10034AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&unk_10060EBE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034AAD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&unk_10060EBE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034AB88()
{
  sub_10034B940(319, &qword_10060D970, &type metadata accessor for Artwork, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034AC48(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003ABC(&qword_10060D9A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034AD18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060D9A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034ADC8()
{
  sub_10034B5D4(319, &unk_10060DA10, &qword_10060A208, &unk_1004E0AA0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10034AEFC()
{
  sub_100003B68(&qword_10060D360);
  sub_1000206D4(&unk_10060D3C0, &qword_10060D360);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034AFA8()
{
  sub_100003B68(&qword_10060D3D8);
  sub_1000206D4(&qword_10060D3E8, &qword_10060D3D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10034B054(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1004BB7D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100003ABC(&qword_10060DAB8);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = sub_100003ABC(&qword_10060D7D0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_10034B248(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1004BB7D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003ABC(&qword_10060DAB8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100003ABC(&qword_10060C1D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = sub_100003ABC(&qword_10060D7D0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

void sub_10034B448()
{
  sub_1004BB7D4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Collaboration.Management.Model(319);
    if (v1 <= 0x3F)
    {
      sub_10034B9A4(319, &unk_10060C188, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10034B5D4(319, &qword_10060DB28, &unk_10060DB30, &unk_1004DD160, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_10034B940(319, &qword_10060D850, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10034B940(319, &qword_10060D858, &type metadata accessor for OpenURLAction, &type metadata accessor for Environment);
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

void sub_10034B5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003B68(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10034B648(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10034B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_10060DB70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10034B778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003ABC(&qword_10060DB70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034B848()
{
  sub_100316910();
  if (v0 <= 0x3F)
  {
    sub_10034B940(319, &qword_10060DBE8, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10034B9A4(319, &qword_10060DBF0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10034B940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10034B9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
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

unint64_t sub_10034BA18()
{
  result = qword_10060DC28;
  if (!qword_10060DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC28);
  }

  return result;
}

unint64_t sub_10034BA70()
{
  result = qword_10060DC30;
  if (!qword_10060DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC30);
  }

  return result;
}

unint64_t sub_10034BAC8()
{
  result = qword_10060DC38;
  if (!qword_10060DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC38);
  }

  return result;
}

unint64_t sub_10034BB20()
{
  result = qword_10060DC40;
  if (!qword_10060DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC40);
  }

  return result;
}

unint64_t sub_10034BB98()
{
  result = qword_10060DC78;
  if (!qword_10060DC78)
  {
    sub_100003B68(&qword_10060DC48);
    sub_1000206D4(&qword_10060DC80, &qword_10060DC88);
    sub_1000206D4(&qword_10060DC90, &qword_10060DC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DC78);
  }

  return result;
}

unint64_t sub_10034BC7C()
{
  result = qword_10060EFB0;
  if (!qword_10060EFB0)
  {
    sub_100003B68(&qword_10060DCB0);
    sub_1000206D4(&qword_10060DCB8, &unk_10060DCC0);
    sub_1000206D4(&unk_10060EFC0, &unk_10060DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060EFB0);
  }

  return result;
}

uint64_t sub_10034BD68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034BDD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034BE70()
{
  v1 = _s10ManagementO4ViewV19CollaboratorRowViewVMa(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1004BB7D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);

  v6 = v2 + v1[7];
  if (!(*(v4 + 48))(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_100003ABC(&qword_10060DAB8);

  v7 = v1[8];
  sub_100003ABC(&unk_10060D340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1004B8C94();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  sub_100003ABC(&unk_100609E90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1004B8AB4();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_10034C200()
{
  result = qword_10060DDB8;
  if (!qword_10060DDB8)
  {
    sub_100003B68(&qword_10060DCF8);
    sub_1000206D4(&qword_10060DDC0, &qword_10060DDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDB8);
  }

  return result;
}

uint64_t sub_10034C2B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10034C318(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA14(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10034C35C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10034C374(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10034C374(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002FA14(a1, a2, a3 & 1);
}

uint64_t sub_10034C3B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002FA24(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10034C3F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1003079CC(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_10034C40C()
{
  result = qword_10060DDE0;
  if (!qword_10060DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDE0);
  }

  return result;
}

unint64_t sub_10034C498()
{
  result = qword_10060DDE8;
  if (!qword_10060DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDE8);
  }

  return result;
}

unint64_t sub_10034C4EC()
{
  result = qword_10060DDF0;
  if (!qword_10060DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DDF0);
  }

  return result;
}

uint64_t sub_10034C540()
{
  v1 = _s10ManagementO4ViewV5ShareO6ButtonVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  sub_100003ABC(&qword_10060DE10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004B87C4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10034C67C(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_10034C67C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_10034C6F4()
{
  result = qword_10060DE20;
  if (!qword_10060DE20)
  {
    sub_100003B68(&qword_10060DE18);
    sub_10034C780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE20);
  }

  return result;
}

unint64_t sub_10034C780()
{
  result = qword_10060DE28;
  if (!qword_10060DE28)
  {
    sub_100003B68(&qword_10060DE30);
    sub_10034C80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE28);
  }

  return result;
}

unint64_t sub_10034C80C()
{
  result = qword_10060DE38;
  if (!qword_10060DE38)
  {
    sub_100003B68(&qword_10060DE40);
    sub_1000206D4(&qword_10060DE48, &qword_10060DE50);
    sub_1000206D4(&qword_10060DE58, &qword_10060DE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE38);
  }

  return result;
}

unint64_t sub_10034C900()
{
  result = qword_10060DE98;
  if (!qword_10060DE98)
  {
    sub_100003B68(&qword_10060DE90);
    sub_1000206D4(&unk_10060DEA0, &qword_10060C338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DE98);
  }

  return result;
}

uint64_t sub_10034C9B8()
{
  v1 = sub_1004BB7D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034CA84(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001384C;

  return sub_100331728(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10034CB90(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_100331E3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10034CC88()
{
  v1 = sub_1004BB7D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034CD54(uint64_t a1)
{
  v4 = *(sub_1004BB7D4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001384C;

  return sub_100330EF0(a1, v6, v7, v8, v1 + v5);
}

double sub_10034CFDC(uint64_t a1)
{
  v2 = sub_1004B9664();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060D3F0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_10000F778(a1, v9, &qword_10060A208);
  sub_10000F778(v16, &v9[v17], &qword_10060A208);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_100007214(v16, &qword_10060A208);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_100007214(v9, &qword_10060A208);
      return -9.0;
    }

    goto LABEL_6;
  }

  sub_10000F778(v9, v12, &qword_10060A208);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_100007214(v16, &qword_10060A208);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_100007214(v9, &unk_10060D3F0);
    return -12.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1004BBD84();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_100007214(v16, &qword_10060A208);
  v21(v12, v2);
  sub_100007214(v9, &qword_10060A208);
  result = -9.0;
  if ((v20 & 1) == 0)
  {
    return -12.0;
  }

  return result;
}

uint64_t sub_10034D420()
{
  v1 = (type metadata accessor for PlaylistCurators.View(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v0 + v2;

  v4 = v1[7];
  sub_100003ABC(&qword_10060D3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1004B9664();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10034D59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaylistCurators.View(0);
  v7 = *(v3 + 16);

  return sub_10034568C(a1, a2, v7, a3);
}

uint64_t sub_10034D628()
{

  return swift_deallocObject();
}

uint64_t sub_10034D660(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = sub_100003ABC(&qword_10060E028);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_10034D6C8()
{
  result = qword_10060DFB8;
  if (!qword_10060DFB8)
  {
    sub_100003B68(&qword_10060DFA8);
    sub_10034D780();
    sub_1000206D4(&qword_10060E018, &qword_10060E020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFB8);
  }

  return result;
}

unint64_t sub_10034D780()
{
  result = qword_10060DFC0;
  if (!qword_10060DFC0)
  {
    sub_100003B68(&qword_10060DFC8);
    sub_10034D80C();
    sub_1002F0A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFC0);
  }

  return result;
}

unint64_t sub_10034D80C()
{
  result = qword_10060DFD0;
  if (!qword_10060DFD0)
  {
    sub_100003B68(&qword_10060DFD8);
    sub_10034D898();
    sub_1002F09B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFD0);
  }

  return result;
}

unint64_t sub_10034D898()
{
  result = qword_10060DFE0;
  if (!qword_10060DFE0)
  {
    sub_100003B68(&qword_10060DFE8);
    sub_10034D924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFE0);
  }

  return result;
}

unint64_t sub_10034D924()
{
  result = qword_10060DFF0;
  if (!qword_10060DFF0)
  {
    sub_100003B68(&qword_10060DFF8);
    sub_100003B68(&qword_10060C998);
    sub_1003169C4();
    swift_getOpaqueTypeConformance2();
    sub_10034A084(&unk_10060E000, type metadata accessor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060DFF0);
  }

  return result;
}

double sub_10034DA1C(uint64_t a1)
{
  v2 = sub_1004B9664();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&unk_10060D3F0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_100003ABC(&qword_10060A208);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v3 + 104))(&v22 - v15, enum case for UserInterfaceSizeClass.compact(_:), v2, v14);
  (*(v3 + 56))(v16, 0, 1, v2);
  v17 = *(v7 + 56);
  sub_10000F778(a1, v9, &qword_10060A208);
  sub_10000F778(v16, &v9[v17], &qword_10060A208);
  v18 = *(v3 + 48);
  if (v18(v9, 1, v2) == 1)
  {
    sub_100007214(v16, &qword_10060A208);
    if (v18(&v9[v17], 1, v2) == 1)
    {
      sub_100007214(v9, &qword_10060A208);
      return 25.0;
    }

    goto LABEL_6;
  }

  sub_10000F778(v9, v12, &qword_10060A208);
  if (v18(&v9[v17], 1, v2) == 1)
  {
    sub_100007214(v16, &qword_10060A208);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_100007214(v9, &unk_10060D3F0);
    return 29.0;
  }

  (*(v3 + 32))(v5, &v9[v17], v2);
  sub_10034A084(&qword_10060D400, &type metadata accessor for UserInterfaceSizeClass);
  v20 = sub_1004BBD84();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_100007214(v16, &qword_10060A208);
  v21(v12, v2);
  sub_100007214(v9, &qword_10060A208);
  result = 25.0;
  if ((v20 & 1) == 0)
  {
    return 29.0;
  }

  return result;
}