uint64_t sub_1002D6090()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_100003ABC(&qword_10060F580);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50B0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1004BBE64();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1004BBE64();
  *(v0 + 88) = v4;
  sub_100003ABC(&qword_10060ACC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50A0;
  *(v7 + 32) = sub_1004BBE64();
  *(v7 + 40) = v8;
  isa = sub_1004BC284().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C50B0;
  *(v13 + 32) = sub_1004BBE64();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1004BBE64();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1004BBE64();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_1004BBE64();
  *(v13 + 88) = v17;
  v18 = sub_1004BC284().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_1004BBE64();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C50A0;
  *(v21 + 32) = sub_1004BBE64();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1004C50A0;
  *(v23 + 32) = sub_1004BBE64();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004C50A0;
  *(v25 + 32) = sub_1004BBE64();
  *(v25 + 40) = v26;
  v27 = sub_1004BC284().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_1002CFC70(v23);
  swift_setDeallocating();
  sub_100007214(v23 + 32, &qword_10060ACC8);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_1004BC284().super.isa;

  sub_1002DCCDC();
  v31 = sub_1004BBC24().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_1002CFC70(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_10060ACC8);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = sub_1004BC284().super.isa;

  v35 = sub_1004BBC24().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_1002D65EC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_1004BBEB4();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_1004BB384();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_1004B80B4();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_1004BAA84();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_1004BAA64();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_1004B64E4();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_1004B6634();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD18);
  v2[111] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD20);
  v2[112] = swift_task_alloc();
  v10 = sub_1004B6E44();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD28);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_1004B6E64();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD30);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_100003ABC(&qword_10060A210);
  v2[130] = swift_task_alloc();
  v12 = sub_1004B6B04();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_1002D6C20, 0, 0);
}

uint64_t sub_1002D6C20()
{
  v251 = v0;
  v1 = v0;
  sub_1004BB2B4();
  v248 = v0;
  if (!v2)
  {
    v45 = v0[90];
    v46 = v0[87];
    v47 = v0[86];
    v48 = Logger.lyrics.unsafeMutableAddressor();
    (*(v46 + 16))(v45, v48, v47);
    v49 = sub_1004B8094();
    v50 = sub_1004BC984();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchStoreLyrics: song has no storeID", v51, 2u);
    }

    v52 = v1[90];
    v53 = v1[87];
    v54 = v1[86];

    (*(v53 + 8))(v52, v54);
    sub_1002DB940();
    swift_allocError();
    v56 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v3 = BagProvider.bag.getter();
  v0[135] = v3;

  if (!v3)
  {
    v57 = v0[91];
    v58 = v0[87];
    v59 = v0[86];

    v60 = Logger.lyrics.unsafeMutableAddressor();
    (*(v58 + 16))(v57, v60, v59);
    v61 = sub_1004B8094();
    v62 = sub_1004BC984();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "fetchStoreLyrics: Bag is nil", v63, 2u);
    }

    v64 = v1[91];
    v65 = v1[87];
    v66 = v1[86];

    (*(v65 + 8))(v64, v66);
    sub_1002DB940();
    swift_allocError();
    v56 = 3;
LABEL_21:
    *v55 = v56;
    swift_willThrow();
LABEL_27:

    v78 = v248[1];

    return v78();
  }

  v4 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v5 = *(**v4 + 120);

  v6 = v3;
  v5(v3);

  v7 = [v6 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v7)
  {
LABEL_23:

LABEL_24:
    v67 = v1[92];
    v68 = v1[87];
    v69 = v1[86];
    v70 = Logger.lyrics.unsafeMutableAddressor();
    (*(v68 + 16))(v67, v70, v69);
    v71 = sub_1004B8094();
    v72 = sub_1004BC984();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "fetchStoreLyrics: Unable to get the domain from the bag", v73, 2u);
    }

    v74 = v1[92];
    v75 = v1[87];
    v76 = v1[86];

    (*(v75 + 8))(v74, v76);
    sub_1002DB940();
    swift_allocError();
    *v77 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v8 = v7;
  v9 = sub_1004BBE64();
  v11 = v10;

  v12 = [v6 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v12 || (v13 = v12, v14 = sub_1004BBC44(), v13, v15 = sub_10035089C(v14), , !v15))
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = sub_1004BBE64();
  if (!*(v15 + 16))
  {

    goto LABEL_31;
  }

  v18 = sub_1003740CC(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_31:

    v1 = v248;
    goto LABEL_24;
  }

  v1 = v248;
  v21 = v248 + 75;
  sub_10003D034(*(v15 + 56) + 40 * v18, (v248 + 23));

  sub_100003ABC(&qword_10060AD38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *v21;
  if (!*(*v21 + 16) || (v23 = sub_1003740CC(0x746C7561666564, 0xE700000000000000), (v24 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_10003D034(*(v22 + 56) + 40 * v23, (v248 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v243 = v248[132];
  v245 = v248[131];
  v241 = v248[130];
  v25 = v248[62];
  v26 = v248[63];
  sub_1004BD404(49);

  v249 = 0x2F2F3A7370747468;
  v250 = 0xE800000000000000;
  v253._countAndFlagsBits = v25;
  v253._object = v26;
  sub_1004BC024(v253);

  v254._countAndFlagsBits = 0x617461632F31762FLL;
  v254._object = 0xEC0000002F676F6CLL;
  sub_1004BC024(v254);
  v255._countAndFlagsBits = v9;
  v255._object = v11;
  sub_1004BC024(v255);
  v256._countAndFlagsBits = 0x2F73676E6F732FLL;
  v256._object = 0xE700000000000000;
  sub_1004BC024(v256);
  v27 = sub_1004BAD14();
  v29 = v28;

  v257._countAndFlagsBits = v27;
  v257._object = v29;
  sub_1004BC024(v257);

  v258._object = 0x8000000100507EC0;
  v258._countAndFlagsBits = 0xD000000000000010;
  sub_1004BC024(v258);
  sub_1004B6AC4();
  if ((*(v243 + 48))(v241, 1, v245) == 1)
  {
    v30 = v248[130];
    v31 = v248[93];
    v32 = v248[87];
    v33 = v248[86];

    sub_100007214(v30, &qword_10060A210);
    v34 = Logger.lyrics.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v34, v33);

    v35 = sub_1004B8094();
    v36 = sub_1004BC984();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v248[93];
    v39 = v248[87];
    v40 = v248[86];
    if (v37)
    {
      v41 = v248[93];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v249 = v43;
      *v42 = 136446210;
      v44 = sub_1002C4260(0x2F2F3A7370747468, 0xE800000000000000, &v249);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "fetchStoreLyrics: Couldn't build URL: %{public}s", v42, 0xCu);
      sub_100004C6C(v43);

      (*(v39 + 8))(v41, v40);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

    sub_1002DB940();
    swift_allocError();
    *v171 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v80 = v248[134];
  v81 = v248[132];
  v82 = v248[131];
  v83 = v248[130];
  v84 = v248[129];
  v85 = v248[124];
  v246 = v248[123];

  (*(v81 + 32))(v80, v83, v82);
  v232 = *(v85 + 56);
  v232(v84, 1, 1, v246);
  v86 = sub_1004B6D74();
  v87 = v86;
  v88 = *(v86 + 16);
  if (!v88)
  {
    v226 = 0;
    v227 = _swiftEmptyArrayStorage;
    v240 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v226 = 0;
  v89 = 0;
  v90 = v248[124];
  v236 = (v90 + 48);
  v231 = (v90 + 16);
  v91 = (v248[114] + 8);
  v92 = (v90 + 8);
  v93 = v86 + 40;
  v234 = -v88;
  v235 = v92;
  v227 = _swiftEmptyArrayStorage;
  v240 = _swiftEmptyArrayStorage;
  v237 = v86;
  v225 = v86 + 40;
  do
  {
    v94 = v93 + 16 * v89;
    v95 = v89 + 1;
    while (1)
    {
      v247 = v95;
      if ((v95 - 1) >= *(v87 + 16))
      {
        __break(1u);
      }

      v98 = v91;
      v99 = v1[129];
      v100 = v1[128];
      v101 = v1[123];
      v244 = v94;

      sub_1004B6D24();
      sub_1002DCFFC(v99, v100);
      if ((*v236)(v100, 1, v101) == 1)
      {
        v102 = v1[129];
        v103 = v1[128];
        v104 = v1[126];
        v105 = v1[123];
        sub_100007214(v102, &qword_10060AD30);
        sub_100007214(v103, &qword_10060AD30);
        (*v231)(v102, v104, v105);
        v232(v102, 0, 1, v105);
      }

      else
      {
        sub_100007214(v1[128], &qword_10060AD30);
      }

      v106 = v1[122];
      v107 = v1[119];
      v108 = v1[113];
      sub_1004B6E54();
      sub_1004B6E14();
      v242 = *v91;
      (*v91)(v107, v108);
      v109 = sub_1004B6D64();
      v110 = *(v109 - 8);
      v239 = *(v110 + 48);
      v238 = v110;
      if (v239(v106, 1, v109) == 1)
      {
        sub_100007214(v1[122], &qword_10060AD28);
      }

      else
      {
        v111 = v1[122];
        v112 = sub_1004B6D44();
        v113 = v110;
        v114 = v112;
        v116 = v115;
        (*(v113 + 8))(v111, v109);
        v1[64] = sub_1004B6D34();
        v1[65] = v117;
        v1[56] = 45;
        v1[57] = 0xE100000000000000;
        sub_1002C4D1C();
        LOBYTE(v111) = sub_1004BD264();

        if (v111)
        {

          v118 = sub_1004B6D34();
          v120 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_1003BEC84(0, v240[2] + 1, 1, v240);
          }

          v122 = v240[2];
          v121 = v240[3];
          if (v122 >= v121 >> 1)
          {
            v240 = sub_1003BEC84((v121 > 1), v122 + 1, 1, v240);
          }

          v240[2] = (v122 + 1);
          v123 = &v240[2 * v122];
          v123[4] = v118;
          v123[5] = v120;
        }

        else
        {
          v124 = v1[112];
          v249 = v114;
          v250 = v116;
          v259._countAndFlagsBits = 45;
          v259._object = 0xE100000000000000;
          sub_1004BC024(v259);
          sub_1004B6DE4();
          v125 = sub_1004B6DB4();
          v126 = v1;
          v127 = *(v125 - 8);
          v128 = (*(v127 + 48))(v124, 1, v125);
          v129 = v126[112];
          if (v128 == 1)
          {
            sub_100007214(v129, &qword_10060AD20);
            v130._countAndFlagsBits = sub_1004BBF44();
            object = v130._object;
          }

          else
          {
            v132 = sub_1004B6DA4();
            object = v133;
            (*(v127 + 8))(v129, v125);
            v130._countAndFlagsBits = v132;
          }

          v130._object = object;
          sub_1004BC024(v130);

          v134 = v249;
          v135 = v250;
          v1 = v248;
          v91 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_1003BEC84(0, v240[2] + 1, 1, v240);
          }

          v137 = v240[2];
          v136 = v240[3];
          if (v137 >= v136 >> 1)
          {
            v240 = sub_1003BEC84((v136 > 1), v137 + 1, 1, v240);
          }

          v240[2] = (v137 + 1);
          v138 = &v240[2 * v137];
          v138[4] = v134;
          v138[5] = v135;
        }
      }

      *(v1 + 1194) = 6;
      v139 = sub_1002DD06C();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v139) & 1) == 0)
      {
        (*v235)(v1[126], v1[123]);
LABEL_63:
        v87 = v237;
LABEL_64:
        v97 = v247;
        goto LABEL_37;
      }

      v233 = v109;
      v140 = v1[118];
      v141 = v1[113];
      v142 = v1[111];
      sub_1004B6E54();
      sub_1004B6E34();
      v242(v140, v141);
      v143 = sub_1004B6DD4();
      v144 = v91;
      v145 = *(v143 - 8);
      if ((*(v145 + 48))(v142, 1, v143) != 1)
      {
        break;
      }

      v96 = v1[111];
      (*v235)(v1[126], v1[123]);
      sub_100007214(v96, &qword_10060AD18);
      v87 = v237;
      v97 = v247;
      v91 = v144;
LABEL_37:
      v94 = v244 + 16;
      v95 = v97 + 1;
      if (v234 + v95 == 1)
      {
        goto LABEL_84;
      }
    }

    v146 = v1[121];
    v147 = v1;
    v148 = v1[117];
    v229 = v147[113];
    v149 = v147[111];
    v228 = sub_1004B6DC4();
    v230 = v150;
    (*(v145 + 8))(v149, v143);
    sub_1004B6E54();
    sub_1004B6E14();
    v242(v148, v229);
    v91 = v144;
    if (v239(v146, 1, v233) == 1)
    {
      v151 = v147[121];
      (*v235)(v147[126], v147[123]);

      sub_100007214(v151, &qword_10060AD28);
      v1 = v147;
      goto LABEL_63;
    }

    v152 = v147[121];
    v153 = sub_1004B6D44();
    v155 = v154;
    (*(v238 + 8))(v152, v233);
    v156 = Lyrics.scriptMap.unsafeMutableAddressor();
    v157 = *v156;
    v1 = v147;
    if (*(*v156 + 16))
    {

      v158 = v230;
      v159 = sub_1003740CC(v228, v230);
      if (v160)
      {
        v161 = (*(v157 + 56) + 16 * v159);
        v162 = v161[1];
        v228 = *v161;

        v158 = v162;
      }
    }

    else
    {
      v158 = v230;
    }

    v249 = v153;
    v250 = v155;
    v260._countAndFlagsBits = 45;
    v260._object = 0xE100000000000000;
    sub_1004BC024(v260);
    v261._countAndFlagsBits = v228;
    v261._object = v158;
    sub_1004BC024(v261);
    v163 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v227 = sub_1003BEC84(0, v227[2] + 1, 1, v227);
    }

    v165 = v227[2];
    v164 = v227[3];
    if (v165 >= v164 >> 1)
    {
      v227 = sub_1003BEC84((v164 > 1), v165 + 1, 1, v227);
    }

    v227[2] = (v165 + 1);
    v166 = &v227[2 * v165];
    v166[4] = v153;
    v166[5] = v163;
    v167 = Lyrics.defaultScript.unsafeMutableAddressor();
    v168 = v1[126];
    v169 = v1[123];
    if (v228 != *v167 || v158 != *(v167 + 1))
    {
      v170 = sub_1004BD9C4();

      (*v235)(v168, v169);
      v87 = v237;
      if (v170)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v235)(v168, v169);
    v87 = v237;
LABEL_79:
    v226 = 1;
    v89 = v247;
    v93 = v225;
  }

  while (v234 + v247);
LABEL_84:
  v172 = v1[129];
  v173 = v1[127];
  v174 = v1[124];
  v175 = v1[123];

  sub_1002DCFFC(v172, v173);
  if ((*(v174 + 48))(v173, 1, v175) == 1)
  {
    sub_100007214(v1[127], &qword_10060AD30);
  }

  else
  {
    (*(v1[124] + 32))(v1[125], v1[127], v1[123]);
    if ((v226 & 1) != 0 || (v176 = v1[116], v177 = v1[114], v178 = v1[113], v179 = *v4, , sub_1004B6E54(), v180 = (*(*v179 + 256))(v176), , v181 = *(v177 + 8), v181(v176, v178), (v180 & 1) == 0))
    {
      (*(v1[124] + 8))(v1[125], v1[123]);
    }

    else
    {
      v182 = v1[120];
      v183 = v1[115];
      v184 = v1[113];
      sub_1004B6E54();
      sub_1004B6E14();
      v181(v183, v184);
      v185 = sub_1004B6D64();
      v186 = *(v185 - 8);
      if ((*(v186 + 48))(v182, 1, v185) == 1)
      {
        v187 = v1[120];
        (*(v1[124] + 8))(v1[125], v1[123]);
        sub_100007214(v187, &qword_10060AD28);
      }

      else
      {
        v213 = v1[120];
        v214 = sub_1004B6D44();
        v216 = v215;
        (*(v186 + 8))(v213, v185);
        v249 = v214;
        v250 = v216;
        v262._countAndFlagsBits = 45;
        v262._object = 0xE100000000000000;
        sub_1004BC024(v262);
        v217 = Lyrics.defaultScript.unsafeMutableAddressor();
        v219 = *v217;
        v218 = v217[1];

        v263._countAndFlagsBits = v219;
        v263._object = v218;
        sub_1004BC024(v263);

        v221 = v249;
        v220 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_1003BEC84(0, v227[2] + 1, 1, v227);
        }

        v223 = v227[2];
        v222 = v227[3];
        if (v223 >= v222 >> 1)
        {
          v227 = sub_1003BEC84((v222 > 1), v223 + 1, 1, v227);
        }

        v1 = v248;
        (*(v248[124] + 8))(v248[125], v248[123]);
        v227[2] = (v223 + 1);
        v224 = &v227[2 * v223];
        v224[4] = v221;
        v224[5] = v220;
      }
    }
  }

  v1[72] = v240;
  sub_100003ABC(&qword_10060AD48);
  sub_1002DD0C0();
  sub_1004BBD34();

  sub_1004B6604();

  v188 = sub_1003BED90(0, 1, 1, _swiftEmptyArrayStorage);
  v190 = *(v188 + 16);
  v189 = *(v188 + 24);
  if (v190 >= v189 >> 1)
  {
    v188 = sub_1003BED90(v189 > 1, v190 + 1, 1, v188);
  }

  v191 = v1[110];
  v192 = v1[107];
  v193 = v1[106];
  *(v188 + 16) = v190 + 1;
  v195 = *(v192 + 32);
  v192 += 32;
  v194 = v195;
  v196 = (*(v192 + 48) + 32) & ~*(v192 + 48);
  v197 = *(v192 + 40);
  v195(v188 + v196 + v197 * v190, v191, v193);
  *(v1 + 1193) = 6;
  v198 = sub_1002DD06C();
  v1[136] = v198;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v198))
  {
    v1[76] = v227;
    sub_1004BBD34();

    sub_1004B6604();

    v200 = *(v188 + 16);
    v199 = *(v188 + 24);
    if (v200 >= v199 >> 1)
    {
      v188 = sub_1003BED90(v199 > 1, v200 + 1, 1, v188);
    }

    v201 = v1[109];
    v202 = v1[106];
    *(v188 + 16) = v200 + 1;
    v194(v188 + v196 + v200 * v197, v201, v202);
    sub_1004B6604();
    v204 = *(v188 + 16);
    v203 = *(v188 + 24);
    if (v204 >= v203 >> 1)
    {
      v188 = sub_1003BED90(v203 > 1, v204 + 1, 1, v188);
    }

    v205 = v1[108];
    v206 = v1[106];
    *(v188 + 16) = v204 + 1;
    v194(v188 + v196 + v204 * v197, v205, v206);
  }

  else
  {
  }

  v207 = v1[105];
  v208 = v1[104];
  v209 = v1[103];
  v210 = v1[102];
  sub_1004B6AE4();

  sub_1004B64C4();
  (*(v209 + 16))(v208, v207, v210);
  sub_1004BAA44();
  v211 = swift_task_alloc();
  v1[137] = v211;
  *v211 = v1;
  v211[1] = sub_1002D8750;
  v212 = v1[98];

  return MusicDataRequest.response()(v212);
}

uint64_t sub_1002D8750()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_1002D9C40;
  }

  else
  {
    v2 = sub_1002D8890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D8890()
{
  v121 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v119 = 0x3C726564616F4CLL;
  v120 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v123._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v123);

  v124._countAndFlagsBits = 62;
  v124._object = 0xE100000000000000;
  sub_1004BC024(v124);
  v8 = v120;
  v107 = v119;
  v9 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v9;
  v10 = *(v2 + 16);
  *(v0 + 1120) = v10;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v9;
  v110 = v10;
  v10(v1);
  (*(v4 + 16))(v3, v7, v5);

  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 696);
  v115 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  if (v13)
  {
    v105 = *(v0 + 760);
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_1002C4260(v107, v8, &v119);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_1002D2C8C();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_1002C4260(v21, v23, &v119);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v25 = *(v15 + 8);
    v25(v105, v115);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v15 + 8);
    v25(v14, v115);
  }

  *(v0 + 1136) = v25;
  v26 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v27 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26);
  if (v27)
  {
    v28 = 0xD000000000000011;
  }

  else
  {
    v28 = 1819112564;
  }

  if (v27)
  {
    v29 = 0x8000000100507EE0;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v30 = objc_opt_self();
  v31 = sub_1004BAA74();
  v33 = v32;
  isa = sub_1004B6B64().super.isa;
  sub_100004D90(v31, v33);
  *(v0 + 536) = 0;
  v35 = [v30 JSONObjectWithData:isa options:0 error:v0 + 536];

  v36 = *(v0 + 536);
  if (!v35)
  {
    v55 = *(v0 + 784);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = v36;

    sub_1004B69B4();

    swift_willThrow();
    (*(v56 + 8))(v55, v57);
LABEL_37:
    v73 = *(v0 + 712);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    swift_errorRetain();
    v77 = sub_1004B8094();
    v78 = sub_1004BC984();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v77, v78, "Data request error: %{public}@", v79, 0xCu);
      sub_100007214(v80, &qword_10060A750);
    }

    v106 = *(v0 + 1080);
    v82 = *(v0 + 1056);
    v114 = *(v0 + 1048);
    v118 = *(v0 + 1072);
    v111 = *(v0 + 840);
    v113 = *(v0 + 1032);
    v83 = *(v0 + 824);
    v109 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    v86 = *(v0 + 792);
    v87 = v77;
    v88 = *(v0 + 712);
    v89 = *(v0 + 696);
    v90 = *(v0 + 688);

    (*(v89 + 8))(v88, v90);
    swift_willThrow();

    (*(v85 + 8))(v84, v86);
    (*(v83 + 8))(v111, v109);
    sub_100007214(v113, &qword_10060AD30);
    (*(v82 + 8))(v118, v114);

    v91 = *(v0 + 8);

    return v91();
  }

  v37 = v36;
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100003ABC(&qword_10060AD58);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 528);
  }

  else
  {
    v38 = 0;
  }

  if (!v38 || !*(v38 + 16))
  {
    goto LABEL_32;
  }

  v39 = sub_1003740CC(1635017060, 0xE400000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v41 = v0 + 616;
  sub_100004DE4(*(v38 + 56) + 32 * v39, v0 + 384);

  sub_100003ABC(&qword_10060AD68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v41 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_100004DE4(*v41 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = *(v0 + 552);
  if (!*(v42 + 16))
  {
    goto LABEL_44;
  }

  v43 = sub_1003740CC(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_44;
  }

  v45 = (v0 + 568);
  sub_100004DE4(*(v42 + 56) + 32 * v43, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v46 = *v45;
  if (!*(*v45 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v47 = sub_1003740CC(v28, v29);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_100004DE4(*(v46 + 56) + 32 * v47, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v116 = v25;
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_1004BBEA4();
  v52 = sub_1004BBE74();
  v54 = v53;

  *(v0 + 1144) = v52;
  *(v0 + 1152) = v54;
  (*(v51 + 8))(v50, v108);
  if (v54 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v25 = v116;
LABEL_33:
    v110(*(v0 + 752), v112, *(v0 + 688));

    v59 = sub_1004B8094();
    v60 = sub_1004BC984();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 688);
    if (v61)
    {
      v64 = swift_slowAlloc();
      v117 = v25;
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136446210;
      *(v0 + 544) = v38;
      sub_100003ABC(&qword_10060AD60);
      v66 = sub_1004BBF04();
      v68 = sub_1002C4260(v66, v67, &v119);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Invalid response: %{public}s", v64, 0xCu);
      sub_100004C6C(v65);

      v117(v62, v63);
    }

    else
    {

      v25(v62, v63);
    }

    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    sub_1002DB940();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    (*(v70 + 8))(v69, v71);
    goto LABEL_37;
  }

  v25 = v116;
  if (!*(v46 + 16) || (v93 = sub_1003740CC(0x6172615079616C70, 0xEA0000000000736DLL), (v94 & 1) == 0))
  {
    sub_100004D7C(v52, v54);
    goto LABEL_32;
  }

  v95 = v54;
  v96 = (v0 + 584);
  sub_100004DE4(*(v46 + 56) + 32 * v93, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v97 = *v96;
  if (!*(*v96 + 16) || (v98 = sub_1003740CC(25705, 0xE200000000000000), (v99 & 1) == 0))
  {
    sub_100004D7C(v52, v95);
    goto LABEL_27;
  }

  sub_100004DE4(*(v97 + 56) + 32 * v98, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_100004D7C(v52, v95);
    goto LABEL_28;
  }

  v100 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v100;
  v101 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_10003E428(v52, v95);
  v102 = sub_1004B6B64().super.isa;
  v103 = [v101 initWithTTMLData:v102];
  *(v0 + 1176) = v103;

  sub_100004D7C(v52, v95);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_1002D973C;
  v104 = swift_continuation_init();
  *(v0 + 136) = sub_100003ABC(&qword_10060ACB0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002D5808;
  *(v0 + 104) = &unk_1005C06C8;
  *(v0 + 112) = v104;
  [v103 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1002D973C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_1002DA08C;
  }

  else
  {
    v2 = sub_1002D9880;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D9880()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_100004D7C(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_100007214(v21, &qword_10060AD30);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1002D9C40()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_1004B8094();
  v6 = sub_1004BC984();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Data request error: %{public}@", v7, 0xCu);
    sub_100007214(v8, &qword_10060A750);
  }

  v10 = v0[135];
  v11 = v0[132];
  v25 = v0[131];
  v26 = v0[134];
  v23 = v0[105];
  v24 = v0[129];
  v12 = v5;
  v13 = v0[103];
  v22 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v23, v22);
  sub_100007214(v24, &qword_10060AD30);
  (*(v11 + 8))(v26, v25);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002DA08C()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[88];
  v4 = v0[86];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_1004B8094();
  v6 = sub_1004BC984();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Parsing error: %{public}@", v7, 0xCu);
    sub_100007214(v8, &qword_10060A750);
  }

  v10 = v0[147];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[97];
  v42 = v0[96];
  v44 = v0[98];
  v15 = v0[88];
  v16 = v0[86];

  v13(v15, v16);
  swift_willThrow();

  sub_100004D7C(v12, v11);
  (*(v14 + 8))(v44, v42);
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];
  v20 = Logger.lyrics.unsafeMutableAddressor();
  (*(v18 + 16))(v17, v20, v19);
  swift_errorRetain();
  v21 = sub_1004B8094();
  v22 = sub_1004BC984();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Data request error: %{public}@", v23, 0xCu);
    sub_100007214(v24, &qword_10060A750);
  }

  v26 = v0[135];
  v27 = v0[132];
  v41 = v0[131];
  v43 = v0[134];
  v39 = v0[105];
  v40 = v0[129];
  v28 = v21;
  v29 = v0[103];
  v38 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[89];
  v34 = v0[87];
  v35 = v0[86];

  (*(v34 + 8))(v33, v35);
  swift_willThrow();

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v39, v38);
  sub_100007214(v40, &qword_10060AD30);
  (*(v27 + 8))(v43, v41);

  v36 = v0[1];

  return v36();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_1004BB384();
  v3 = *(v2 - 8);
  v196 = v2;
  v197 = v3;
  __chkstk_darwin(v2);
  v5 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v194 = &v185 - v7;
  __chkstk_darwin(v8);
  v193 = (&v185 - v9);
  __chkstk_darwin(v10);
  v192 = (&v185 - v11);
  __chkstk_darwin(v12);
  v187 = &v185 - v13;
  __chkstk_darwin(v14);
  v186 = &v185 - v15;
  __chkstk_darwin(v16);
  v18 = &v185 - v17;
  __chkstk_darwin(v19);
  v21 = &v185 - v20;
  __chkstk_darwin(v22);
  v189 = (&v185 - v23);
  __chkstk_darwin(v24);
  v188 = &v185 - v25;
  __chkstk_darwin(v26);
  v191 = &v185 - v27;
  __chkstk_darwin(v28);
  v30 = &v185 - v29;
  v31 = sub_1004B80B4();
  v32 = *(v31 - 8);
  v199 = v31;
  v200 = v32;
  __chkstk_darwin(v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v185 - v36;
  __chkstk_darwin(v37);
  v190 = &v185 - v38;
  __chkstk_darwin(v39);
  v41 = &v185 - v40;
  __chkstk_darwin(v42);
  v44 = &v185 - v43;
  __chkstk_darwin(v45);
  v47 = &v185 - v46;
  if ((sub_1004BB374() & 1) == 0 && (sub_1004BB284() & 1) == 0)
  {
    v75 = Logger.lyrics.unsafeMutableAddressor();
    v76 = v199;
    v77 = v200;
    (*(v200 + 16))(v34, v75, v199);
    v78 = v196;
    v79 = v197;
    (*(v197 + 16))(v5, a1, v196);
    v80 = sub_1004B8094();
    v81 = sub_1004BC9A4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204[0] = v83;
      *v82 = 136446210;
      v84 = sub_1002D2C8C();
      v85 = v78;
      v87 = v86;
      (*(v79 + 8))(v5, v85);
      v88 = sub_1002C4260(v84, v87, v204);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v82, 0xCu);
      sub_100004C6C(v83);

      (*(v200 + 8))(v34, v199);
    }

    else
    {

      (*(v79 + 8))(v5, v78);
      (*(v77 + 8))(v34, v76);
    }

    v159 = 0;
    return v159 & 1;
  }

  v198 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v48 = BagProvider.bag.getter();

  if (v48)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v48] & 1) == 0)
    {
      v89 = [v48 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v90 = v198;
      v91 = v196;
      if (v89)
      {

        v92 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v47, v92, v199);
        v93 = v197;
        v94 = *(v197 + 16);
        v94(v30, v90, v91);
        v95 = v191;
        v94(v191, v90, v91);
        v96 = sub_1004B8094();
        v97 = sub_1004BC9A4();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v195 = v48;
          v99 = v98;
          v194 = swift_slowAlloc();
          *&v204[0] = v194;
          *v99 = 136446466;
          v193 = v96;
          v100 = sub_1004BB284();
          if (v100)
          {
            v101 = 1702195828;
          }

          else
          {
            v101 = 0x65736C6166;
          }

          LODWORD(v192) = v97;
          v102 = v91;
          if (v100)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE500000000000000;
          }

          v104 = *(v93 + 8);
          v104(v30, v102);
          v105 = sub_1002C4260(v101, v103, v204);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2082;
          v106 = sub_1002D2C8C();
          v108 = v107;
          v104(v95, v102);
          v109 = sub_1002C4260(v106, v108, v204);

          *(v99 + 14) = v109;
          v110 = v193;
          _os_log_impl(&_mh_execute_header, v193, v192, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v99, 0x16u);
          swift_arrayDestroy();

          v48 = v195;
        }

        else
        {

          v180 = *(v93 + 8);
          v180(v95, v91);
          v180(v30, v91);
        }

        (*(v200 + 8))(v47, v199);
      }

      else
      {
        v160 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v44, v160, v199);
        v161 = v197;
        v162 = *(v197 + 16);
        v163 = v188;
        v162(v188, v90, v91);
        v164 = v189;
        v162(v189, v90, v91);
        v165 = sub_1004B8094();
        v166 = sub_1004BC9A4();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v195 = v48;
          v168 = v167;
          v193 = swift_slowAlloc();
          *&v204[0] = v193;
          *v168 = 136446466;
          v192 = v165;
          v169 = sub_1004BB284();
          if (v169)
          {
            v170 = 1702195828;
          }

          else
          {
            v170 = 0x65736C6166;
          }

          v194 = v44;
          v171 = v164;
          if (v169)
          {
            v172 = 0xE400000000000000;
          }

          else
          {
            v172 = 0xE500000000000000;
          }

          LODWORD(v191) = v166;
          v173 = *(v161 + 8);
          v173(v163, v91);
          v174 = sub_1002C4260(v170, v172, v204);

          *(v168 + 4) = v174;
          *(v168 + 12) = 2082;
          v175 = sub_1002D2C8C();
          v177 = v176;
          v173(v171, v91);
          v178 = sub_1002C4260(v175, v177, v204);

          *(v168 + 14) = v178;
          v179 = v192;
          _os_log_impl(&_mh_execute_header, v192, v191, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v168, 0x16u);
          swift_arrayDestroy();

          v48 = v195;

          (*(v200 + 8))(v194, v199);
        }

        else
        {

          v181 = *(v161 + 8);
          v181(v164, v91);
          v181(v163, v91);
          (*(v200 + 8))(v44, v199);
        }
      }

      v182 = sub_1004BB284();

      v159 = v182;
      return v159 & 1;
    }

    v49 = v199;
    v50 = v200;
    v52 = v196;
    v51 = v197;
    v53 = v192;
  }

  else
  {
    v54 = Logger.lyrics.unsafeMutableAddressor();
    v55 = v199;
    (*(v200 + 16))(v41, v54, v199);
    v51 = v197;
    v56 = v198;
    v57 = *(v197 + 16);
    v58 = v196;
    v57(v21, v198, v196);
    v57(v18, v56, v58);
    v59 = sub_1004B8094();
    v60 = sub_1004BC9A4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v204[0] = v191;
      *v61 = 136446466;
      v189 = v59;
      v62 = sub_1004BB284();
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = v196;
      LODWORD(v188) = v60;
      v66 = *(v197 + 8);
      v66(v21, v196);
      v67 = sub_1002C4260(v63, v64, v204);
      v51 = v197;

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = sub_1002D2C8C();
      v70 = v69;
      v66(v18, v65);
      v71 = v199;
      v50 = v200;
      v72 = sub_1002C4260(v68, v70, v204);

      *(v61 + 14) = v72;
      v73 = v189;
      _os_log_impl(&_mh_execute_header, v189, v188, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v74 = v41;
      v49 = v71;
      (*(v50 + 8))(v74, v71);
      v52 = v65;
      v53 = v192;
    }

    else
    {

      v111 = *(v51 + 8);
      v112 = v18;
      v52 = v196;
      v111(v112, v196);
      v111(v21, v52);
      v113 = v200;
      (*(v200 + 8))(v41, v55);
      v53 = v192;
      v49 = v55;
      v50 = v113;
    }
  }

  v114 = sub_1004BB374();
  v115 = v195;
  v116 = v193;
  if (v114 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v202), v117 = v203, , sub_100051DEC(v202), v118 = sub_1000FE42C(2, v117), , (v118))
  {
    static ApplicationCapabilities.shared.getter(v204);
    sub_100051DEC(v204);
    if (BYTE10(v204[0]))
    {
      v159 = 1;
      return v159 & 1;
    }

    v119 = Logger.lyrics.unsafeMutableAddressor();
    v120 = v190;
    (*(v50 + 16))(v190, v119, v49);
    v121 = *(v51 + 16);
    v122 = v186;
    v123 = v198;
    v121(v186, v198, v52);
    v124 = v51;
    v125 = v49;
    v126 = v187;
    v121(v187, v123, v52);
    v127 = sub_1004B8094();
    v128 = sub_1004BC9A4();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v129 = 67240450;
      v130 = sub_1004BB284() & 1;
      v131 = *(v124 + 8);
      v131(v122, v52);
      *(v129 + 4) = v130;
      *(v129 + 8) = 2082;
      v132 = sub_1002D2C8C();
      v133 = v126;
      v134 = v200;
      v136 = v135;
      v131(v133, v52);
      v137 = sub_1002C4260(v132, v136, &v201);

      *(v129 + 10) = v137;
      _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v129, 0x12u);
      sub_100004C6C(v197);

      (*(v134 + 8))(v190, v199);
    }

    else
    {
      v184 = *(v124 + 8);
      v184(v122, v52);

      v184(v126, v52);
      (*(v200 + 8))(v120, v125);
    }
  }

  else
  {
    v138 = Logger.lyrics.unsafeMutableAddressor();
    (*(v50 + 16))(v115, v138, v49);
    v139 = *(v51 + 16);
    v140 = v198;
    v139(v53, v198, v52);
    v141 = v116;
    v139(v116, v140, v52);
    v142 = v194;
    v139(v194, v140, v52);
    v143 = sub_1004B8094();
    v144 = sub_1004BC9A4();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v145 = 67240962;
      LODWORD(v192) = v144;
      v146 = sub_1004BB284() & 1;
      v147 = *(v51 + 8);
      v147(v53, v52);
      *(v145 + 4) = v146;
      v148 = v141;
      v149 = v200;
      *(v145 + 8) = 1026;
      v150 = sub_1004BB374() & 1;
      v147(v148, v52);
      *(v145 + 10) = v150;
      *(v145 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v204);
      v151 = v205;

      sub_100051DEC(v204);
      v152 = sub_1000FE42C(2, v151);

      *(v145 + 16) = v152 & 1;
      *(v145 + 20) = 2082;
      v153 = v194;
      v154 = sub_1002D2C8C();
      v156 = v155;
      v147(v153, v52);
      v157 = sub_1002C4260(v154, v156, &v201);

      *(v145 + 22) = v157;
      _os_log_impl(&_mh_execute_header, v143, v192, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v145, 0x1Eu);
      sub_100004C6C(v197);

      (*(v149 + 8))(v195, v199);
    }

    else
    {
      v158 = *(v51 + 8);
      v158(v141, v52);
      v158(v53, v52);

      v158(v142, v52);
      (*(v200 + 8))(v115, v199);
    }
  }

  v159 = sub_1004BB284();
  return v159 & 1;
}

unint64_t sub_1002DB940()
{
  result = qword_10060AC90;
  if (!qword_10060AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC90);
  }

  return result;
}

unint64_t sub_1002DB994()
{
  result = qword_10060ACA0;
  if (!qword_10060ACA0)
  {
    sub_1004BB384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ACA0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v194 = sub_1004B80B4();
  v2 = *(v194 - 8);
  __chkstk_darwin(v194);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v185 - v6;
  __chkstk_darwin(v8);
  v10 = &v185 - v9;
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  __chkstk_darwin(v14);
  v16 = &v185 - v15;
  __chkstk_darwin(v17);
  v19 = &v185 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v185 - v22;
  v193 = [a1 lyrics];
  if (v193)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v191 = v10;
    v192 = v2;
    v36 = v193;
    v37 = [v193 hasLibraryLyrics];
    if (([v36 hasStoreLyrics] & 1) == 0 && !v37)
    {
      v38 = Logger.lyrics.unsafeMutableAddressor();
      v39 = v192;
      v40 = v194;
      (*(v192 + 16))(v7, v38, v194);
      v41 = a1;
      v42 = v193;
      v43 = sub_1004B8094();
      v44 = sub_1004BC9A4();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v198[0] = v193;
        *v45 = 67240962;
        *(v45 + 4) = [v42 hasLibraryLyrics];
        *(v45 + 8) = 1026;
        *(v45 + 10) = [v42 hasStoreLyrics];

        *(v45 + 14) = 2082;
        v46 = [v41 title];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1004BBE64();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        *&v200[0] = v48;
        *(&v200[0] + 1) = v50;
        sub_100003ABC(&qword_100610D60);
        v92 = sub_1004BBF04();
        v94 = sub_1002C4260(v92, v93, v198);

        *(v45 + 16) = v94;
        *(v45 + 24) = 2082;
        v95 = [v41 identifiers];
        v96 = [v95 description];
        v97 = sub_1004BBE64();
        v99 = v98;

        v100 = sub_1002C4260(v97, v99, v198);

        *(v45 + 26) = v100;
        _os_log_impl(&_mh_execute_header, v43, v44, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v45, 0x22u);
        swift_arrayDestroy();

        (*(v192 + 8))(v7, v194);
      }

      else
      {

        (*(v39 + 8))(v7, v40);
      }

      return 0;
    }

    v190 = v37;
    BagProvider.shared.unsafeMutableAddressor();

    v51 = BagProvider.bag.getter();

    if (v51)
    {
      v52 = [objc_opt_self() supportsLyricsForURLBag:v51];
      v53 = v192;
      if ((v52 & 1) == 0)
      {
        v191 = v51;
        v79 = [v51 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v79)
        {

          v80 = Logger.lyrics.unsafeMutableAddressor();
          v81 = v194;
          (*(v53 + 16))(v23, v80, v194);
          v82 = v53;
          v83 = a1;
          v84 = sub_1004B8094();
          v85 = sub_1004BC9A4();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v86 = 67240706;
            *(v86 + 4) = v190;
            *(v86 + 8) = 2082;
            v87 = [v83 title];
            if (v87)
            {
              v88 = v87;
              v89 = sub_1004BBE64();
              v91 = v90;
            }

            else
            {
              v89 = 0;
              v91 = 0;
            }

            *&v200[0] = v89;
            *(&v200[0] + 1) = v91;
            sub_100003ABC(&qword_100610D60);
            v158 = sub_1004BBF04();
            v160 = sub_1002C4260(v158, v159, v198);

            *(v86 + 10) = v160;
            *(v86 + 18) = 2082;
            v161 = [v83 identifiers];
            v162 = [v161 description];
            v163 = sub_1004BBE64();
            v165 = v164;

            v166 = sub_1002C4260(v163, v165, v198);

            *(v86 + 20) = v166;
            _os_log_impl(&_mh_execute_header, v84, v85, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v86, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v23, v194);
            return v190;
          }

          (*(v82 + 8))(v23, v81);
        }

        else
        {
          v101 = Logger.lyrics.unsafeMutableAddressor();
          v102 = v194;
          (*(v53 + 16))(v19, v101, v194);
          v103 = v53;
          v104 = a1;
          v105 = sub_1004B8094();
          v106 = sub_1004BC9A4();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v107 = 67240706;
            *(v107 + 4) = v190;
            *(v107 + 8) = 2082;
            v108 = [v104 title];
            if (v108)
            {
              v109 = v108;
              v110 = sub_1004BBE64();
              v112 = v111;
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            *&v200[0] = v110;
            *(&v200[0] + 1) = v112;
            sub_100003ABC(&qword_100610D60);
            v167 = sub_1004BBF04();
            v169 = sub_1002C4260(v167, v168, v198);

            *(v107 + 10) = v169;
            *(v107 + 18) = 2082;
            v170 = [v104 identifiers];
            v171 = [v170 description];
            v172 = sub_1004BBE64();
            v174 = v173;

            v175 = sub_1002C4260(v172, v174, v198);

            *(v107 + 20) = v175;
            _os_log_impl(&_mh_execute_header, v105, v106, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v107, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v19, v194);
            return v190;
          }

          (*(v103 + 8))(v19, v102);
        }

        return v190;
      }

      v54 = v13;

      v55 = v194;
    }

    else
    {
      v66 = Logger.lyrics.unsafeMutableAddressor();
      v53 = v192;
      v55 = v194;
      (*(v192 + 16))(v16, v66, v194);
      v67 = a1;
      v68 = sub_1004B8094();
      v69 = sub_1004BC9A4();

      v54 = v13;
      if (os_log_type_enabled(v68, v69))
      {
        v187 = v69;
        v188 = v13;
        v189 = v68;
        v70 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v198[0] = v186;
        *v70 = 67240706;
        *(v70 + 4) = v190;
        v71 = v70;
        *(v70 + 8) = 2082;
        v72 = v67;
        v73 = [v67 title];
        v74 = &off_1005F2000;
        if (v73)
        {
          v75 = v73;
          v76 = sub_1004BBE64();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *&v200[0] = v76;
        *(&v200[0] + 1) = v78;
        sub_100003ABC(&qword_100610D60);
        v113 = sub_1004BBF04();
        v115 = sub_1002C4260(v113, v114, v198);

        *(v71 + 10) = v115;
        *(v71 + 18) = 2082;
        v116 = [v72 identifiers];
        v117 = [v116 description];
        v118 = sub_1004BBE64();
        v120 = v119;

        v121 = sub_1002C4260(v118, v120, v198);

        *(v71 + 20) = v121;
        v122 = v189;
        _os_log_impl(&_mh_execute_header, v189, v187, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v71, 0x1Cu);
        swift_arrayDestroy();

        v55 = v194;
        (*(v53 + 8))(v16, v194);
        v54 = v188;
LABEL_38:
        if ([v193 v74[489]] && (static ApplicationCapabilities.shared.getter(v198), v123 = v199, , sub_100051DEC(v198), v124 = sub_1000FE42C(2, v123), , (v124 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v200);
          sub_100051DEC(v200);
          if (BYTE10(v200[0]))
          {

            return 1;
          }

          v125 = Logger.lyrics.unsafeMutableAddressor();
          (*(v53 + 16))(v54, v125, v55);
          v126 = a1;
          v127 = sub_1004B8094();
          v128 = sub_1004BC9A4();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v197 = v191;
            *v129 = 67240706;
            *(v129 + 4) = v190;
            *(v129 + 8) = 2082;
            v130 = [v126 title];
            if (v130)
            {
              v131 = v130;
              v132 = sub_1004BBE64();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v195 = v132;
            v196 = v134;
            sub_100003ABC(&qword_100610D60);
            v176 = sub_1004BBF04();
            v178 = sub_1002C4260(v176, v177, &v197);

            *(v129 + 10) = v178;
            *(v129 + 18) = 2082;
            v179 = [v126 identifiers];
            v180 = [v179 description];
            v181 = sub_1004BBE64();
            v183 = v182;

            v184 = sub_1002C4260(v181, v183, &v197);

            *(v129 + 20) = v184;
            _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v129, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v54, v194);
            return v190;
          }

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v135 = Logger.lyrics.unsafeMutableAddressor();
          v136 = v191;
          (*(v53 + 16))(v191, v135, v55);
          v137 = a1;
          v138 = v193;
          v139 = sub_1004B8094();
          v140 = sub_1004BC9A4();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v197 = v193;
            *v141 = 67241218;
            *(v141 + 4) = v190;
            *(v141 + 8) = 1026;
            *(v141 + 10) = [v138 v74[489]];

            *(v141 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v200);
            v142 = v201;

            sub_100051DEC(v200);
            v143 = sub_1000FE42C(2, v142);

            *(v141 + 16) = v143 & 1;
            *(v141 + 20) = 2082;
            v144 = [v137 title];
            if (v144)
            {
              v145 = v144;
              v146 = sub_1004BBE64();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v195 = v146;
            v196 = v148;
            sub_100003ABC(&qword_100610D60);
            v149 = sub_1004BBF04();
            v151 = sub_1002C4260(v149, v150, &v197);

            *(v141 + 22) = v151;
            *(v141 + 30) = 2082;
            v152 = [v137 identifiers];
            v153 = [v152 description];
            v154 = sub_1004BBE64();
            v156 = v155;

            v157 = sub_1002C4260(v154, v156, &v197);

            *(v141 + 32) = v157;
            _os_log_impl(&_mh_execute_header, v139, v140, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v141, 0x28u);
            swift_arrayDestroy();

            (*(v192 + 8))(v191, v194);
            return v190;
          }

          (*(v53 + 8))(v136, v55);
        }

        return v190;
      }

      (*(v53 + 8))(v16, v55);
    }

    v74 = &off_1005F2000;
    goto LABEL_38;
  }

LABEL_4:
  v24 = Logger.lyrics.unsafeMutableAddressor();
  v25 = v194;
  (*(v2 + 16))(v4, v24, v194);
  v26 = v2;
  v27 = a1;
  v28 = sub_1004B8094();
  v29 = sub_1004BC9A4();

  if (os_log_type_enabled(v28, v29))
  {
    v192 = v26;
    v30 = swift_slowAlloc();
    *&v198[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = [v27 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1004BBE64();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *&v200[0] = v33;
    *(&v200[0] + 1) = v35;
    sub_100003ABC(&qword_100610D60);
    v56 = sub_1004BBF04();
    v58 = sub_1002C4260(v56, v57, v198);

    *(v30 + 4) = v58;
    *(v30 + 12) = 2082;
    v59 = [v27 identifiers];
    v60 = [v59 description];
    v61 = sub_1004BBE64();
    v63 = v62;

    v64 = sub_1002C4260(v61, v63, v198);

    *(v30 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v192 + 8))(v4, v194);
  }

  else
  {

    (*(v26 + 8))(v4, v25);
  }

  return 0;
}

unint64_t sub_1002DCCDC()
{
  result = qword_10060ACD0;
  if (!qword_10060ACD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060ACD0);
  }

  return result;
}

unint64_t sub_1002DCD50()
{
  result = qword_10060ACE0;
  if (!qword_10060ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ACE0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002DCDC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002DCE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002DCE7C()
{
  v1 = sub_100003ABC(&qword_10060AD10);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1002DCF28(void *a1, uint64_t a2)
{
  v5 = *(sub_100003ABC(&qword_10060AD10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1002D5B04(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1002DCFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002DCFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002DD06C()
{
  result = qword_10060AD40;
  if (!qword_10060AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AD40);
  }

  return result;
}

unint64_t sub_1002DD0C0()
{
  result = qword_10060AD50;
  if (!qword_10060AD50)
  {
    sub_100003B68(&qword_10060AD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AD50);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_1004B8724();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_1004B6CD4();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_1004BB384();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_1002DE400, v20);

  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B70F4();

  return v1;
}

uint64_t sub_1002DD5B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State);
  v10 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v8, a1);
  sub_1002EAA68(v8, type metadata accessor for Lyrics.StateManager.State);
  if (v10)
  {
    sub_1002EAA00(a1, v8, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v8, v1 + v9, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v5);
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v8, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  return sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002DD8A0(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  return result;
}

void sub_1002DD9BC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = sub_1004BCFA4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }
}

void sub_1002DDB20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_100009130(0, &qword_10060B3C0);
  v6 = v5;
  v7 = sub_1004BCFA4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }
}

uint64_t sub_1002DDC94(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060AE00);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v63 = v18;
    v20 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    v59 = v19;
    v60 = v20;
    sub_1004B7104();

    v21 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v18 + v21, v16, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v16, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v16, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    }

    v57 = v4;
    v58 = a1;
    v22 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(sub_100003ABC(&qword_10060ADE8) + 48);
    v28 = sub_1004BB384();
    v29 = (*(*(v28 - 8) + 8))(&v13[v27], v28);
    if (v26 != 1)
    {
    }

    v30 = v23;
    v55 = v25;
    v56 = v24;
    v31 = (*v22 + 312);
    v32 = *v31;
    v33 = v31;
    (*v31)(v29);
    v34 = type metadata accessor for Lyrics.Transliteration(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v53 = v34;
    if ((v36)(v10, 1) == 1)
    {

      sub_1002EBD88(v22, v30, v55, v56, 1);
      v37 = v10;
    }

    else
    {
      v52 = v35;
      v50 = v33;
      v51 = v32;
      v54 = v22;
      sub_100007214(v10, &qword_10060AE00);
      v38 = sub_1003A829C(3, v58);
      v39 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v39) = v39(3) & 1;

      if (v38 == v39)
      {
        sub_1002EBD88(v54, v30, v55, v56, 1);
      }

      v58 = v30;
      (*(*v54 + 440))(v40);
      swift_getKeyPath();
      v62 = v18;
      sub_1004B7104();

      v41 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_10000F778(v18 + v41, v7, &qword_10060AE00);
      v42 = v53;
      v43 = v36(v7, 1, v53);
      sub_100007214(v7, &qword_10060AE00);
      v44 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v45 = swift_beginAccess();
      if (*(v18 + v44) == 1)
      {
        *(v18 + v44) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v50 - 2) = v18;
        *(&v50 - 8) = 1;
        v61 = v18;
        sub_1004B70F4();
      }

      v47 = v57;
      if (v43 == 1)
      {
        (*(v52 + 56))(v57, 1, 1, v42);
        v48 = v54;
      }

      else
      {
        v48 = v54;
        v51(v45);
      }

      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v50 - 2) = v18;
      *(&v50 - 1) = v47;
      v61 = v18;
      sub_1004B70F4();
      sub_1002EBD88(v48, v58, v55, v56, 1);

      v37 = v47;
    }

    return sub_100007214(v37, &qword_10060AE00);
  }

  return result;
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  v1 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(v0, v3, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1002EAA68(v3, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v4 = *v3;
  v5 = v3[32];
  v6 = *(sub_100003ABC(&qword_10060ADE8) + 48);
  v7 = sub_1004BB384();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002DE560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003ABC(&qword_10060B3F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-v5];
  v7 = sub_1004B8724();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v85);
  v93 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100003ABC(&qword_10060AE00);
  __chkstk_darwin(v10 - 8);
  v88 = &v79[-v11];
  v12 = sub_100003ABC(&qword_10060ADF8);
  __chkstk_darwin(v12 - 8);
  v87 = &v79[-v13];
  v100 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v100);
  v90 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  v18 = sub_1004B80B4();
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v99);
  v86 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v79[-v23];
  __chkstk_darwin(v25);
  v27 = &v79[-v26];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v102[3] = v2;
  v29 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  v89 = v28;
  v94 = v29;
  sub_1004B7104();

  v30 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v98 = v30;
  sub_1002EAA00(v30, v27, type metadata accessor for Lyrics.StateManager.State);
  v95 = a1;
  LOBYTE(v30) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v27, a1);
  result = sub_1002EAA68(v27, type metadata accessor for Lyrics.StateManager.State);
  if ((v30 & 1) == 0)
  {
    v83 = v7;
    v84 = v6;
    v32 = Logger.lyrics.unsafeMutableAddressor();
    (*(v96 + 16))(v20, v32, v97);
    sub_1002EAA00(v95, v24, type metadata accessor for Lyrics.StateManager.State);

    v33 = sub_1004B8094();
    v34 = sub_1004BC9A4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v35 = 136446466;
      sub_1002EAA00(v24, v27, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_1004BBF04();
      v81 = v33;
      v37 = v36;
      v80 = v34;
      v39 = v38;
      sub_1002EAA68(v24, type metadata accessor for Lyrics.StateManager.State);
      v40 = sub_1002C4260(v37, v39, v102);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      swift_getKeyPath();
      v101 = v2;
      sub_1004B7104();

      v41 = v98;
      sub_1002EAA00(v98, v27, type metadata accessor for Lyrics.StateManager.State);
      v42 = sub_1004BBF04();
      v44 = sub_1002C4260(v42, v43, v102);

      *(v35 + 14) = v44;
      v45 = v81;
      _os_log_impl(&_mh_execute_header, v81, v80, "[State] changed from %{public}s to %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v96 + 8))(v20, v97);
    }

    else
    {

      sub_1002EAA68(v24, type metadata accessor for Lyrics.StateManager.State);
      (*(v96 + 8))(v20, v97);
      v41 = v98;
    }

    swift_getKeyPath();
    v102[0] = v2;
    sub_1004B7104();

    v46 = v86;
    sub_1002EAA00(v41, v86, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v46, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v46, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v17;
      v48 = v17[32];
      v49 = *(sub_100003ABC(&qword_10060ADE8) + 48);
      v50 = sub_1004BB384();
      (*(*(v50 - 8) + 8))(&v17[v49], v50);
      if (v48)
      {
        v51 = v90;
        v52 = v88;
        if (v47)
        {
          v53 = *(*v47 + 288);

          v55 = v87;
          v53(v54);

          v56 = type metadata accessor for Lyrics.Translation(0);
          v57 = 1;
          v58 = (*(*(v56 - 8) + 48))(v55, 1, v56);
          sub_100007214(v55, &qword_10060ADF8);
          if (v58 != 1)
          {
            goto LABEL_17;
          }

          v59 = *(*v47 + 312);

          v59(v60);

          v61 = type metadata accessor for Lyrics.Transliteration(0);
          v57 = 1;
          if ((*(*(v61 - 8) + 48))(v52, 1, v61) != 1)
          {
LABEL_16:
            sub_100007214(v52, &qword_10060AE00);
LABEL_17:
            v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v57 == *(v2 + v65))
            {
              *(v2 + v65) = v57;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              *&v79[-16] = v2;
              v79[-8] = v57;
              v101 = v2;
              sub_1004B70F4();
            }

            v67 = v84;
            swift_getKeyPath();
            v101 = v2;
            sub_1004B7104();

            v68 = v98;
            sub_1002EAA00(v98, v51, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v101 = v2;
            sub_1004B7104();

            v69 = v68 + *(v99 + 20);
            v70 = v93;
            sub_1002EAA00(v69, v93, type metadata accessor for Lyrics.StateManager.State.Display);
            v72 = v91;
            v71 = v92;
            v73 = v83;
            (*(v92 + 104))(v91, enum case for ScenePhase.active(_:), v83);
            v74 = sub_1004B8714();
            (*(v71 + 8))(v72, v73);
            if ((v74 & 1) != 0 && v70[*(v85 + 20)] == 1)
            {
              v75 = v70[*(v85 + 24)];
            }

            else
            {
              v75 = 0;
            }

            sub_1002EAA68(v70, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_1002EC360(v51, v67);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_1002EBD88(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
                v77 = *(sub_100003ABC(&qword_10060ADE8) + 48);
                v78 = sub_1004BB384();
                (*(*(v78 - 8) + 8))(v67 + v77, v78);
                if (v75)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_1002EAA68(v67, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_1002E8368(v95);
LABEL_30:
            sub_1002E7A44();
          }

LABEL_15:
          v57 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v62 = type metadata accessor for Lyrics.Translation(0);
        v63 = v87;
        (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
        sub_100007214(v63, &qword_10060ADF8);
        v64 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
        goto LABEL_15;
      }

      v51 = v90;
    }

    else
    {
      sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v51 = v90;
    }

    v52 = v88;
    goto LABEL_14;
  }

  return result;
}

void (*sub_1002DF26C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002EAA00(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_1002DF394;
}

void sub_1002DF394(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1002EAA00(*(*a1 + 96), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v5);
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_1002EAA00(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v6);
  }

  sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA68(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1002EAA00(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002DF5E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1002EAA00(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002DF6BC(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(a1, v4, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v4);
}

uint64_t sub_1002DF75C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1002EAA00(a2, &v12[-v8], type metadata accessor for Lyrics.StateManager.State);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(a1 + v10, v6, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1002EB154(v9, a1 + v10, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002DE560(v6);
  sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State);
  return sub_1002EAA68(v9, type metadata accessor for Lyrics.StateManager.State);
}

void (*Lyrics.StateManager.state.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002DF26C(v4);
  return sub_1002DF9D8;
}

uint64_t sub_1002DF9E4()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_10060AE00);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v55 - v6;
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v65 = v1;
  v61 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  v62 = v19;
  sub_1004B7104();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 vocalsControlCommand];
    if (v22)
    {
      v23 = [v22 isActive];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_getKeyPath();
        v64 = v1;
        sub_1004B7104();

        v24 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_1002EAA00(v1 + v24, v18, type metadata accessor for Lyrics.StateManager.State);
        sub_1002EAA00(v18, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_1002EAA68(v18, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v15;
          v26 = *(v15 + 1);
          v27 = *(v15 + 3);
          v58 = *(v15 + 2);
          v59 = v27;
          v28 = v15[32];
          v29 = *(sub_100003ABC(&qword_10060ADE8) + 48);
          v30 = sub_1004BB384();
          v31 = (*(*(v30 - 8) + 8))(&v15[v29], v30);
          if (v28 == 1)
          {
            v57 = v26;
            v32 = (*v25 + 312);
            v56 = *v32;
            v55[1] = v32;
            v56(v31);
            v33 = type metadata accessor for Lyrics.Transliteration(0);
            v34 = *(*(v33 - 8) + 48);
            if (v34(v12, 1, v33) == 1)
            {
              sub_1002EBD88(v25, v57, v58, v59, 1);
              sub_100007214(v12, &qword_10060AE00);
            }

            else
            {
              v55[0] = v25;
              sub_100007214(v12, &qword_10060AE00);
              swift_getKeyPath();
              v64 = v1;
              sub_1004B7104();

              v46 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_10000F778(v1 + v46, v9, &qword_10060AE00);
              v47 = v34(v9, 1, v33);
              v48 = v57;
              if (v47 == 1)
              {
                sub_100007214(v9, &qword_10060AE00);
                v49 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v49) = v49(2);

                v52 = v58;
                v51 = v59;
                if ((v49 & 1) == 0)
                {
                  v44 = v60;
                  v53 = v55[0];
                  v56(v50);
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  v55[-2] = v1;
                  v55[-1] = v44;
                  v64 = v1;
                  sub_1004B70F4();
                  sub_1002EBD88(v53, v48, v52, v51, 1);
                  goto LABEL_16;
                }

                sub_1002EBD88(v55[0], v48, v58, v59, 1);
              }

              else
              {
                sub_1002EBD88(v55[0], v57, v58, v59, 1);
                sub_100007214(v9, &qword_10060AE00);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_1002EAA68(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v64 = v1;
  sub_1004B7104();

  v35 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_10000F778(v1 + v35, v4, &qword_10060AE00);
  v36 = type metadata accessor for Lyrics.Transliteration(0);
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v4, 1, v36);
  result = sub_100007214(v4, &qword_10060AE00);
  if (v38 != 1)
  {
    v40 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v40) = v40(1);

    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v63 = v1;
      sub_1004B7104();

      v41 = *(v1 + v20);
      if (!v41 || (v42 = [v41 vocalsControlCommand]) == 0 || (v43 = objc_msgSend(v42, "isActive"), result = swift_unknownObjectRelease(), (v43 & 1) == 0))
      {
        v44 = v60;
        (*(v37 + 56))(v60, 1, 1, v36);
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v55[-2] = v1;
        v55[-1] = v44;
        v63 = v1;
        sub_1004B70F4();
LABEL_16:

        return sub_100007214(v44, &qword_10060AE00);
      }
    }
  }

  return result;
}

uint64_t (*sub_1002E02C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002E0324;
}

uint64_t sub_1002E0324(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1002DF9E4();
  }

  return result;
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1002E041C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009130(0, &qword_10060ADF0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1004BCFA4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v10 = v6;

  sub_1002DF9E4();
}

uint64_t sub_1002E06A0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  return sub_1002DF9E4();
}

void (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E02C0(v4);
  return sub_1002E0850;
}

uint64_t sub_1002E085C(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_1004BB384();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v41 = v2;
  v19 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  v38 = v18;
  v39 = v19;
  sub_1004B7104();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(&v2[v20], v11, &qword_10060ACB8);
  v21 = *(v13 + 48);
  if (v21(v11, 1, v12) == 1)
  {
    sub_100007214(v11, &qword_10060ACB8);
  }

  else
  {
    v35 = v5;
    v22 = *(v13 + 32);
    v22(v17, v11, v12);
    sub_10000F778(v37, v8, &qword_10060ACB8);
    if (v21(v8, 1, v12) == 1)
    {
      (*(v13 + 8))(v17, v12);
      sub_100007214(v8, &qword_10060ACB8);
    }

    else
    {
      v23 = v36;
      v22(v36, v8, v12);
      sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song);
      if (sub_1004BAC64())
      {
        v24 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v17);
        v25 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v23);
        v26 = *(v13 + 8);
        v26(v23, v12);
        result = (v26)(v17, v12);
        v5 = v35;
        if (((v24 ^ v25) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v28 = *(v13 + 8);
      v28(v23, v12);
      v28(v17, v12);
    }

    v5 = v35;
  }

LABEL_10:
  swift_getKeyPath();
  v40 = v2;
  sub_1004B7104();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_1004BC524();
    if (*&v2[v29])
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v35 - 2) = v2;
      *(&v35 - 1) = 0;
      v40 = v2;
      sub_1004B70F4();
    }
  }

  v31 = sub_1004BC4B4();
  (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
  sub_1004BC474();

  v32 = sub_1004BC464();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = &protocol witness table for MainActor;
  v33[4] = v2;
  sub_1002E0EEC(0, 0, v5, &unk_1004DD238, v33);

  sub_1002E42B0(v34);
}

uint64_t sub_1002E0E40()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002681F4;

  return sub_1002E46E8();
}

uint64_t sub_1002E0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F778(a3, v25 - v10, &qword_10060F8D0);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007214(v11, &qword_10060F8D0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_10060F8D0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002E11EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F778(a3, v25 - v10, &qword_10060F8D0);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007214(v11, &qword_10060F8D0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100003ABC(&qword_10060B3D8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_10060F8D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003ABC(&qword_10060B3D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002E1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000F778(a3, v25 - v10, &qword_10060F8D0);
  v12 = sub_1004BC4B4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007214(v11, &qword_10060F8D0);
  }

  else
  {
    sub_1004BC4A4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1004BC3E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1004BBF54() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_100003ABC(&unk_10060DB30);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007214(a3, &qword_10060F8D0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_100003ABC(&unk_10060DB30);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void (*sub_1002E1814(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100003ABC(&qword_10060ACB8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10000F778(v1 + v8, v7, &qword_10060ACB8);
  return sub_1002E1944;
}

void sub_1002E1944(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_10000F778(*(*a1 + 96), v6, &qword_10060ACB8);
    sub_10000F778(v7 + v4, v5, &qword_10060ACB8);
    swift_beginAccess();
    sub_10003F42C(v6, v7 + v4, &qword_10060ACB8);
    swift_endAccess();
    sub_1002E085C(v5);
    sub_100007214(v5, &qword_10060ACB8);
  }

  else
  {
    sub_10000F778(v7 + v4, v6, &qword_10060ACB8);
    swift_beginAccess();
    sub_10003F42C(v3, v7 + v4, &qword_10060ACB8);
    swift_endAccess();
    sub_1002E085C(v6);
  }

  sub_100007214(v6, &qword_10060ACB8);
  sub_100007214(v3, &qword_10060ACB8);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1002E1ADC(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000F778(a1, &v6 - v3, &qword_10060ACB8);
  return Lyrics.StateManager.song.setter(v4);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  v3 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(v1 + v9, v8, &qword_10060ACB8);
  v10 = sub_1002EAB54(v8, a1);
  sub_100007214(v8, &qword_10060ACB8);
  if (v10)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[2] = v1;
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  else
  {
    sub_10000F778(a1, v8, &qword_10060ACB8);
    sub_10000F778(v1 + v9, v5, &qword_10060ACB8);
    swift_beginAccess();
    sub_10003F42C(v8, v1 + v9, &qword_10060ACB8);
    swift_endAccess();
    sub_1002E085C(v5);
    sub_100007214(v5, &qword_10060ACB8);
    sub_100007214(v8, &qword_10060ACB8);
  }

  return sub_100007214(a1, &qword_10060ACB8);
}

uint64_t sub_1002E1DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_10000F778(a2, &v12[-v8], &qword_10060ACB8);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(a1 + v10, v6, &qword_10060ACB8);
  swift_beginAccess();
  sub_10003F42C(v9, a1 + v10, &qword_10060ACB8);
  swift_endAccess();
  sub_1002E085C(v6);
  sub_100007214(v6, &qword_10060ACB8);
  return sub_100007214(v9, &qword_10060ACB8);
}

void (*Lyrics.StateManager.song.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E1814(v4);
  return sub_1002E2088;
}

void (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2094();
  return sub_1002E2240;
}

uint64_t sub_1002E22C0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1002E2374@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E224C();
  return sub_1002E2574;
}

void (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2580();
  return sub_1002E276C;
}

uint64_t sub_1002E27FC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v7 = *a1;
  swift_beginAccess();
  return sub_10000F778(v9 + v7, a3, a2);
}

uint64_t sub_1002E28DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v8 = *a2;
  swift_beginAccess();
  return sub_10000F778(v7 + v8, a4, a3);
}

uint64_t sub_1002E29F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_10003F42C(a2, a1 + v7, a4);
  return swift_endAccess();
}

void (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2778();
  return sub_1002E2BA8;
}

uint64_t sub_1002E2C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_100003ABC(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_10000F778(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B70F4();

  return sub_100007214(v10, a5);
}

uint64_t sub_1002E2DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B70F4();

  return sub_100007214(a1, a4);
}

void (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2BB4();
  return sub_1002E2FC4;
}

void sub_1002E2FD0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1004B7114();

  free(v1);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_10060F8D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1004BC4B4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004BC474();

  v6 = sub_1004BC464();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_1002E0EEC(0, 0, v4, &unk_1004DCEB0, v7);
}

uint64_t sub_1002E3188()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100268008;

  return sub_1002E46E8();
}

uint64_t sub_1002E3234()
{
  v1 = sub_1004B8724();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v6 - 8);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v28 = type metadata accessor for Lyrics.StateManager.State(0);
  v11 = *(v28 + 24);
  sub_10000F778(v0 + v11, v10, &qword_10060DEF0);
  v12 = sub_1004B6CD4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v10, 1, v12);
  v15 = v10;
  v16 = v0;
  sub_100007214(v15, &qword_10060DEF0);
  if (v14 == 1)
  {
    sub_1002EAA00(v0, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1002EBD88(*v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), v5[32]);
      v17 = *(sub_100003ABC(&qword_10060ADE8) + 48);
      v18 = sub_1004BB384();
      (*(*(v18 - 8) + 8))(&v5[v17], v18);
      v19 = v29;
      v20 = v0 + *(v28 + 20);
      v22 = v30;
      v21 = v31;
      (*(v30 + 104))(v29, enum case for ScenePhase.active(_:), v31);
      LOBYTE(v17) = sub_1004B8714();
      (*(v22 + 8))(v19, v21);
      if (v17)
      {
        v23 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v20 + *(v23 + 20)) == 1 && *(v20 + *(v23 + 24)) == 1)
        {
          v24 = v27;
          sub_1004B6CA4();
          (*(v13 + 56))(v24, 0, 1, v12);
          return sub_1002EC13C(v24, v16 + v11);
        }
      }
    }

    else
    {
      sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_100007214(v16 + v11, &qword_10060DEF0);
  return (*(v13 + 56))(v16 + v11, 1, 1, v12);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  sub_1002EAA00(v1, &v11 - v7, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EB154(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(v1, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  v9 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v5, v8);
  sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v9 & 1) == 0)
  {
    sub_1002E3234();
  }

  sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1002EAA68(v8, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_1002EAA00(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1002E38A4;
}

void sub_1002E38A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_1002EAA00((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_1002E3234();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_1002EAA00(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_1002E3234();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_1002EAA68(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA68(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_1002EAA00(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1002EB154(a1, v1 + v9, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1002EAA00(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_1004B8714() & 1) != 0 && v5[*(v3 + 20)] == v8[*(v3 + 20)])
  {
    v11 = v5[*(v3 + 24)];
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v11 == v8[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_1002E3234();
LABEL_5:
  sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1002EAA68(v8, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_1002EAA00(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1002E3D48;
}

void sub_1002E3D48(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1002EAA00(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_1002EAA68(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(v2, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v8 = 0uLL;
  if (!result)
  {
    result = sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v10 = -1;
    v13 = 0uLL;
    goto LABEL_6;
  }

  v9 = *v6;
  v14 = *(v6 + 1);
  v15 = v9;
  v10 = v6[32];
  v11 = *(sub_100003ABC(&qword_10060ADE8) + 48);
  v12 = sub_1004BB384();
  result = (*(*(v12 - 8) + 8))(&v6[v11], v12);
  v13 = v14;
  v8 = v15;
LABEL_6:
  *a1 = v8;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1004B8714() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1002E41BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1004B8714() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1002E423C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

uint64_t sub_1002E42B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1004BC504();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_1002E4454()
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();
}

uint64_t sub_1002E44F8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1002E45D8()
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B70F4();
}

uint64_t sub_1002E46E8()
{
  v1[74] = v0;
  sub_100003ABC(&qword_10060AE00);
  v1[75] = swift_task_alloc();
  sub_100003ABC(&qword_10060ADF8);
  v1[76] = swift_task_alloc();
  v2 = sub_1004B80B4();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_100003ABC(&qword_10060ACB8);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_1004BB384();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_1004BC474();
  v1[119] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_1002E4AC0, v5, v4);
}

uint64_t sub_1002E4AC0()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(v4 + v5, v3, &qword_10060ACB8);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_100007214(v7, &qword_10060ACB8);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_1004B7104();

    v0[69] = v10;
    swift_getKeyPath();
    sub_1004B7124();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_1002E3234();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_1002EAA68(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v13);
    sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_1004B7114();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_1004B7104();

    v0[55] = v24;
    swift_getKeyPath();
    sub_1004B7124();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_1002E3234();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_1002EAA68(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v30);
    sub_1002EAA68(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_1004B7114();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = sub_1004B8094();
    v37 = sub_1004BC9A4();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song);
      v60 = v44;
      v62 = v42;
      v46 = sub_1004BD934();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_1002C4260(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_100004C6C(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    sub_1004B7104();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_1002E5588;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_1002E5588(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_1002E6CC4;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_1002E56B8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002E56B8()
{
  v163 = v0;

  if (sub_1004BC534())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10002FA24(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_1004B7104();

  sub_10000F778(v8 + v5, v7, &qword_10060ACB8);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10002FA24(v10, v9, v12 & 1);
    sub_100007214(v11, &qword_10060ACB8);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song);
  v13 = sub_1004BAC64();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10002FA24(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_10002FA14(v16, v15, v14 & 1);
  v21 = sub_1004B8094();
  v22 = sub_1004BC9A4();
  sub_10002FA24(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song);
    v27 = sub_1004BD934();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_1002C4260(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10002FA14(v23, v134, v132 & 1);
    v31 = sub_1004BBF04();
    v33 = sub_1002C4260(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_100003ABC(&qword_10060ADE8) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_1004B7104();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_1004B7124();

      sub_1002EAA00(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA00(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EB154(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_1002E3234();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_1002EAA68(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA68(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA00(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1002EB154(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002DE560(v47);
      sub_1002EAA68(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA68(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_1004B7114();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10002FA24(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_1004B7104();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_100003ABC(&qword_10060ADE8) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_10002FA14(v110, v133, 1);

      sub_1004B7104();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_1004B7124();

      sub_1002EAA00(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA00(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EB154(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_1002E3234();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_1002EAA68(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA68(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA00(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1002EB154(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002DE560(v124);
      sub_1002EAA68(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA68(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_1004B7114();

      sub_10002FA24(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_100003ABC(&qword_10060ADE8) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_10002FA14(v95, v136, 1);

    sub_1004B7104();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_1002E3234();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v107);
    sub_1002EAA68(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_1004B7114();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_1004B70F4();

    sub_100007214(v70, &qword_10060ADF8);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_1004B7104();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_1004B70F4();

    sub_100007214(v77, &qword_10060AE00);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_100003ABC(&qword_10060ADE8) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_1004B7104();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_1004B7124();

  sub_1002EAA00(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA00(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EB154(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_1002E3234();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_1002EAA68(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA68(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1002EB154(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002DE560(v92);
  sub_1002EAA68(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA68(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_1004B7114();

  sub_10002FA24(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_1002E6CC4()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_1004B8094();
    v12 = sub_1004BC9A4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_1004BD934();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_1002C4260(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_1004BBF04();
      v27 = sub_1002C4260(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_1004B7104();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_1002E3234();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v48);
    sub_1002EAA68(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_1004B7114();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_1004B8094();
    v31 = sub_1004BC9A4();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song);
      v35 = sub_1004BD934();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_1002C4260(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_1004BBF04();
      v41 = sub_1002C4260(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_1004B7104();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_1002E3234();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v63);
    sub_1002EAA68(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_1004B7114();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_1002E78D0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_1002E7980@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_1002E7A44()
{
  v1 = v0;
  v2 = sub_100003ABC(&qword_10060A210);
  __chkstk_darwin(v2 - 8);
  v53 = &v47[-v3];
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003ABC(&qword_10060AE08);
  __chkstk_darwin(v7 - 8);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v47[-v11];
  v13 = type metadata accessor for MetricsEvent.Page(0);
  v54 = *(*(v13 - 8) + 56);
  v54(v12, 1, 1, v13);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v57 = v1;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  v55 = v14;
  sub_1004B7104();

  v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(v1 + v15, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *(v6 + 1);
      v18 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v6[32] != 1)
      {
        sub_1002EBD88(*v6, v17, v18, v19, 0);
        sub_100007214(v12, &qword_10060AE08);
        v23 = sub_1004B6B04();
        v24 = *(*(v23 - 8) + 56);
        goto LABEL_24;
      }

      v49 = *v6;
      v50 = v17;
      v51 = v18;
      v52 = v19;
      swift_getKeyPath();
      *&v57 = v1;
      sub_1004B7104();

      v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v21 = *(v1 + v20);
      if (v21 && (v22 = [v21 vocalsControlCommand]) != 0)
      {
        v48 = [v22 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v48 = 1;
      }

      swift_getKeyPath();
      *&v57 = v1;
      sub_1004B7104();

      v25 = *(v1 + v20);
      if (v25)
      {
        v26 = [v25 playingItem];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 metadataObject];

          if (v28)
          {
            v29 = [v28 innermostModelObject];

            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              v31 = [v30 lyrics];

              if (v31)
              {
                v32 = [v31 hasStoreLyrics];

                v33 = v32 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v57);
                sub_100051DEC(&v57);
                if (*(v49 + 56))
                {
                  v34 = (v58 == 1) & ~(v48 | v33);
                  if (*(v49 + 56) == 1)
                  {
                    sub_1002EBD88(v49, v50, v51, v52, 1);
                    sub_100007214(v12, &qword_10060AE08);
                    v35 = sub_1004B6B04();
                    v36 = v53;
                    (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
                    v37 = 0x8000000100508060;
                    v46 = v34;
                    v38 = v9;
                    v39 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_1002EBD88(v49, v50, v51, v52, 1);
                    sub_100007214(v12, &qword_10060AE08);
                    v41 = sub_1004B6B04();
                    v36 = v53;
                    (*(*(v41 - 8) + 56))(v53, 1, 1, v41);
                    v46 = v34;
                    v39 = 0x795373636972794CLL;
                    v37 = 0xEE00656C62616C6CLL;
                    v38 = v9;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v39, v37, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v38, 1, 0, 0, v46);
                  goto LABEL_27;
                }

                sub_1002EBD88(v49, v50, v51, v52, 1);
                sub_100007214(v12, &qword_10060AE08);
                v23 = sub_1004B6B04();
                v24 = *(*(v23 - 8) + 56);
LABEL_24:
                v40 = v53;
                v24(v53, 1, 1, v23);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v40, 0, 0, 0, v9, 1, 0, 0, 2);
LABEL_27:
                v54(v9, 0, 1, v13);
                sub_1002EBE84(v9, v12);
                v42 = *(sub_100003ABC(&qword_10060ADE8) + 48);
                v43 = sub_1004BB384();
                (*(*(v43 - 8) + 8))(&v6[v42], v43);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v33 = 1;
      goto LABEL_20;
    }

    sub_100007214(v12, &qword_10060AE08);
  }

  else
  {
    sub_100007214(v12, &qword_10060AE08);
    sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v54(v12, 1, 1, v13);
LABEL_28:
  sub_10000F778(v12, v9, &qword_10060AE08);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v56 = v1;
  sub_1004B70F4();

  sub_100007214(v12, &qword_10060AE08);
  return sub_100007214(v9, &qword_10060AE08);
}

uint64_t sub_1002E8368(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060B3B8);
  __chkstk_darwin(v2 - 8);
  v170 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v171 = &v162 - v5;
  v6 = sub_100003ABC(&qword_10060AD28);
  __chkstk_darwin(v6 - 8);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v162 - v10;
  v12 = sub_100003ABC(&qword_10060AE00);
  __chkstk_darwin(v12 - 8);
  v177 = &v162 - v13;
  v14 = sub_100003ABC(&qword_10060ADF8);
  __chkstk_darwin(v14 - 8);
  v176 = &v162 - v15;
  v16 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v16 - 8);
  v175 = &v162 - v17;
  v188 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v188);
  v189 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v187 = &v162 - v20;
  __chkstk_darwin(v21);
  v173 = &v162 - v22;
  v192 = sub_1004B80B4();
  v190 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v162 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v179 = &v162 - v25;
  __chkstk_darwin(v26);
  v174 = &v162 - v27;
  v28 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v28 - 8);
  v180 = &v162 - v29;
  v184 = sub_1004B6CD4();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1004B8724();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v32 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v33);
  v35 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1004BB384();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v162 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_1002EAA00(a1, v35, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1002EAA68(v35, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v56 = v192;
    v55 = v190;
LABEL_12:
    v57 = Logger.lyrics.unsafeMutableAddressor();
    v58 = v191;
    (*(v55 + 16))(v191, v57, v56);
    v59 = v189;
    sub_1002EAA00(v40, v189, type metadata accessor for Lyrics.StateManager.State);
    v60 = sub_1004B8094();
    v61 = sub_1004BC9A4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v55;
      v64 = swift_slowAlloc();
      v196 = v64;
      *v62 = 136446210;
      sub_1002EAA00(v59, v187, type metadata accessor for Lyrics.StateManager.State);
      v65 = sub_1004BBF04();
      v67 = v66;
      sub_1002EAA68(v59, type metadata accessor for Lyrics.StateManager.State);
      v68 = sub_1002C4260(v65, v67, &v196);

      *(v62 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v60, v61, "Skipping Reporting lyrics for state=%{public}s", v62, 0xCu);
      sub_100004C6C(v64);

      return (*(v63 + 8))(v191, v192);
    }

    else
    {

      sub_1002EAA68(v59, type metadata accessor for Lyrics.StateManager.State);
      return (*(v55 + 8))(v58, v56);
    }
  }

  v163 = v11;
  v162 = v8;
  v41 = *(v35 + 1);
  v178 = *v35;
  v172 = v41;
  v42 = *(v35 + 2);
  v43 = *(v35 + 3);
  v44 = v35[32];
  v45 = sub_100003ABC(&qword_10060ADE8);
  (*(v37 + 32))(v39, &v35[*(v45 + 48)], v36);
  if ((sub_1004BB374() & 1) == 0)
  {
    (*(v37 + 8))(v39, v36);
    sub_1002EBD88(v178, v172, v42, v43, v44);
    goto LABEL_11;
  }

  v164 = v42;
  v165 = v43;
  v167 = v44;
  v168 = v39;
  v166 = v37;
  v169 = v36;
  v46 = v40 + *(v188 + 20);
  v47 = v185;
  v48 = v186;
  (v185[13])(v32, enum case for ScenePhase.active(_:), v186);
  v49 = sub_1004B8714();
  v47[1](v32, v48);
  if ((v49 & 1) == 0 || (v50 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v46 + *(v50 + 20)) != 1) || *(v46 + *(v50 + 24)) != 1)
  {
    sub_1002EBD88(v178, v172, v164, v165, v167);
    (*(v166 + 8))(v168, v169);
    goto LABEL_11;
  }

  v51 = v180;
  sub_10000F778(v40 + *(v188 + 24), v180, &qword_10060DEF0);
  v52 = v183;
  v53 = v184;
  v54 = (*(v183 + 48))(v51, 1, v184);
  v55 = v190;
  if (v54 == 1)
  {
    (*(v166 + 8))(v168, v169);
    sub_1002EBD88(v178, v172, v164, v165, v167);
    sub_100007214(v51, &qword_10060DEF0);
    v56 = v192;
    goto LABEL_12;
  }

  (*(v52 + 32))(v182, v51, v53);
  v70 = Logger.lyrics.unsafeMutableAddressor();
  v71 = *(v55 + 16);
  v72 = v174;
  v186 = v70;
  v73 = v192;
  v185 = v71;
  v180 = v55 + 16;
  (v71)(v174);
  v74 = v173;
  sub_1002EAA00(v40, v173, type metadata accessor for Lyrics.StateManager.State);
  v75 = sub_1004B8094();
  v76 = sub_1004BC9A4();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v196 = v78;
    *v77 = 136446210;
    sub_1002EAA00(v74, v187, type metadata accessor for Lyrics.StateManager.State);
    v79 = sub_1004BBF04();
    v81 = v80;
    v73 = v192;
    sub_1002EAA68(v74, type metadata accessor for Lyrics.StateManager.State);
    v82 = v79;
    v55 = v190;
    v83 = sub_1002C4260(v82, v81, &v196);

    *(v77 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v75, v76, "Reporting lyrics for state=%{public}s", v77, 0xCu);
    sub_100004C6C(v78);
  }

  else
  {

    sub_1002EAA68(v74, type metadata accessor for Lyrics.StateManager.State);
  }

  v188 = *(v55 + 8);
  (v188)(v72, v73);
  v84 = v165;
  sub_1004B6C74();
  v86 = -v85;
  v87 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v88 = v166;
  v89 = v175;
  v90 = v169;
  (*(v166 + 16))(v175, v168, v169);
  (*(v88 + 56))(v89, 0, 1, v90);
  sub_1004BCD54();
  swift_getKeyPath();
  v91 = v181;
  v196 = v181;
  v189 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager);
  sub_1004B7104();

  v92 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v93 = *(v91 + v92);
  if (v93)
  {
    v94 = v93;
    v95 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v95 = 0;
  }

  [v87 setModelPlayEvent:v95];

  [v87 setVisibleDuration:v86];
  swift_getKeyPath();
  v191 = v87;
  v96 = v181;
  v195[4] = v181;
  sub_1004B7104();

  v97 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v98 = v176;
  sub_10000F778(v96 + v97, v176, &qword_10060ADF8);
  v99 = type metadata accessor for Lyrics.Translation(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) != 1;
  sub_100007214(v98, &qword_10060ADF8);
  [v191 setDisplayTranslationEnabled:v100];
  swift_getKeyPath();
  v195[1] = v96;
  sub_1004B7104();

  v101 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v102 = v96 + v101;
  v103 = v177;
  sub_10000F778(v102, v177, &qword_10060AE00);
  v104 = type metadata accessor for Lyrics.Transliteration(0);
  v105 = (*(*(v104 - 8) + 48))(v103, 1, v104) != 1;
  v106 = v191;
  sub_100007214(v103, &qword_10060AE00);
  [v106 setDisplayTransliterationEnabled:v105];
  if (v167)
  {
    v107 = v178;
    v108 = v192;
    if (*(v178 + 24))
    {
      sub_1002EBE28(v178, v172, v164, v84, 1);

      v109 = sub_1004BBE24();
    }

    else
    {

      v109 = 0;
    }

    v118 = v171;
    [v191 setLyricsID:v109];

    (*(*v107 + 232))();
    v119 = sub_1004B6E44();
    v120 = *(v119 - 8);
    if ((*(v120 + 48))(v118, 1, v119) == 1)
    {
      sub_100007214(v118, &qword_10060B3B8);
      v121 = 0;
      v122 = v164;
      v123 = v172;
    }

    else
    {
      v124 = v163;
      sub_1004B6E14();
      (*(v120 + 8))(v118, v119);
      v125 = sub_1004B6D64();
      v126 = *(v125 - 8);
      if ((*(v126 + 48))(v124, 1, v125) == 1)
      {
        sub_100007214(v124, &qword_10060AD28);
        v121 = 0;
      }

      else
      {
        sub_1004B6D44();
        (*(v126 + 8))(v124, v125);
        v121 = sub_1004BBE24();
      }

      v84 = v165;
      v122 = v164;
      v123 = v172;
      v108 = v192;
    }

    v106 = v191;
    [v191 setLanguage:v121];

    v130 = v178;
    [v106 setDisplayType:*(v178 + 56)];
    sub_1002EBD88(v130, v123, v122, v84, 1);
    v110 = v179;
  }

  else
  {
    v110 = v179;
    v108 = v192;
    if (v84 && v84[3])
    {

      v111 = sub_1004BBE24();
    }

    else
    {

      v111 = 0;
    }

    [v106 setLyricsID:v111];

    if (v84)
    {
      v112 = *(*v84 + 232);

      v114 = v170;
      v112(v113);

      v115 = sub_1004B6E44();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_100007214(v114, &qword_10060B3B8);
        v117 = 0;
        v110 = v179;
        v108 = v192;
      }

      else
      {
        v127 = v162;
        sub_1004B6E14();
        (*(v116 + 8))(v114, v115);
        v128 = sub_1004B6D64();
        v129 = *(v128 - 8);
        if ((*(v129 + 48))(v127, 1, v128) == 1)
        {
          sub_100007214(v127, &qword_10060AD28);
          v117 = 0;
        }

        else
        {
          sub_1004B6D44();
          (*(v129 + 8))(v127, v128);
          v117 = sub_1004BBE24();
        }

        v110 = v179;
        v84 = v165;
        v106 = v191;
        v108 = v192;
      }
    }

    else
    {
      v117 = 0;
    }

    [v106 setLanguage:v117];

    [v106 setDisplayType:0];
  }

  v131 = sub_1004BBE24();
  [v106 setFeatureName:v131];

  [v106 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v132 = v181;
  v193 = v181;
  sub_1004B7104();

  [*(v132 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v106];
  (v185)(v110, v186, v108);
  v133 = v106;
  v134 = sub_1004B8094();
  v135 = sub_1004BC9A4();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v195[0] = swift_slowAlloc();
    *v136 = 136446978;
    v193 = [v133 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v137 = sub_1004BBF04();
    v139 = sub_1002C4260(v137, v138, v195);

    *(v136 + 4) = v139;
    *(v136 + 12) = 2082;
    v140 = [v133 lyricsID];
    if (v140)
    {
      v141 = v140;
      v142 = sub_1004BBE64();
      v144 = v143;
    }

    else
    {
      v142 = 0;
      v144 = 0;
    }

    v193 = v142;
    v194 = v144;
    sub_100003ABC(&qword_100610D60);
    v147 = sub_1004BBF04();
    v149 = sub_1002C4260(v147, v148, v195);

    *(v136 + 14) = v149;
    *(v136 + 22) = 2082;
    [v133 visibleDuration];
    v150 = sub_1004BC5C4();
    v152 = sub_1002C4260(v150, v151, v195);

    *(v136 + 24) = v152;
    *(v136 + 32) = 2082;
    v153 = [v133 modelSong];
    if (v153)
    {
      v154 = v153;
      v155 = [v153 humanDescription];

      v156 = sub_1004BBE64();
      v158 = v157;
    }

    else
    {
      v156 = 0;
      v158 = 0;
    }

    v193 = v156;
    v194 = v158;
    v159 = sub_1004BBF04();
    v161 = sub_1002C4260(v159, v160, v195);

    *(v136 + 34) = v161;
    _os_log_impl(&_mh_execute_header, v134, v135, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v136, 0x2Au);
    swift_arrayDestroy();

    sub_1002EBD88(v178, v172, v164, v165, v167);
    v145 = v179;
    v146 = v192;
  }

  else
  {

    sub_1002EBD88(v178, v172, v164, v84, v167);
    v145 = v110;
    v146 = v108;
  }

  (v188)(v145, v146);
  (*(v183 + 8))(v182, v184);
  return (*(v166 + 8))(v168, v169);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_1002EAA68(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_10060ACB8);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_10060ADF8);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_10060AE00);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_10060AE08);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_1004B7144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002E9DF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1002EC4C0;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_1004BD9C4() & 1) == 0 || (sub_1003296E8(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_100009130(0, &unk_1006111F0);
        return sub_1004BCFA4() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB384();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v40 - v8;
  v9 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_100003ABC(&qword_10060B3E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v19 = &v40 + *(v18 + 56) - v16;
  sub_1002EAA00(a1, &v40 - v16, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(a2, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1002EAA00(v17, v14, type metadata accessor for Lyrics.StateManager.State.Loading);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1002EC1DC(v30, v31);
      goto LABEL_11;
    }

    v32 = *v19;
    v33 = v19[8];
    if (v31)
    {
      if (v31 == 1)
      {
        if (v33 == 1)
        {
          v34 = *v19;
          sub_100009130(0, &unk_1006111F0);
          v35 = sub_1004BCFA4();
          sub_1002EC1DC(v34, 1);
          sub_1002EC1DC(v30, 1);
          if ((v35 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_1002EC1DC(v32, v33);
        v32 = v30;
        LOBYTE(v33) = 1;
      }

      else if (v30)
      {
        if (v33 == 2 && v32 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v33 == 2 && v32 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v19[8])
    {
      if (v32 != v30)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v28 = 1;
      return v28 & 1;
    }

    sub_1002EC1DC(v32, v33);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100007214(v17, &qword_10060B3E0);
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  sub_1002EAA00(v17, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
  v21 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v21;
  v43 = v11[32];
  v22 = *(sub_100003ABC(&qword_10060ADE8) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(&v11[v22], v4);
    sub_1002EC1AC(v42);
    goto LABEL_11;
  }

  v23 = *(v19 + 1);
  v44[0] = *v19;
  v44[1] = v23;
  v45 = v19[32];
  v24 = v41;
  v25 = *(v41 + 32);
  v26 = &v11[v22];
  v27 = v40;
  v25(v40, v26, v4);
  v25(v6, &v19[v22], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v42, v44) & 1) == 0)
  {
    sub_1002EC1AC(v44);
    sub_1002EC1AC(v42);
    v36 = *(v24 + 8);
    v36(v6, v4);
    v36(v27, v4);
LABEL_33:
    sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v28 = sub_1004BB314();
  sub_1002EC1AC(v44);
  sub_1002EC1AC(v42);
  v29 = *(v24 + 8);
  v29(v6, v4);
  v29(v27, v4);
  sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v28 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060DEF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_100003ABC(&qword_10060E520);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v27 = v5;
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  v15 = *(v14 + 20);
  v16 = a1 + v15;
  v17 = a2 + v15;
  if ((sub_1004B8714() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v16 + *(v18 + 20)) != *(v17 + *(v18 + 20)) || *(v16 + *(v18 + 24)) != *(v17 + *(v18 + 24)))
  {
    return 0;
  }

  v19 = *(v14 + 24);
  v20 = *(v11 + 48);
  sub_10000F778(a1 + v19, v13, &qword_10060DEF0);
  sub_10000F778(a2 + v19, &v13[v20], &qword_10060DEF0);
  v21 = v27;
  v22 = *(v27 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v20], 1, v4) == 1)
    {
      sub_100007214(v13, &qword_10060DEF0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_10000F778(v13, v10, &qword_10060DEF0);
  if (v22(&v13[v20], 1, v4) == 1)
  {
    (*(v21 + 8))(v10, v4);
LABEL_10:
    sub_100007214(v13, &qword_10060E520);
    return 0;
  }

  (*(v21 + 32))(v7, &v13[v20], v4);
  sub_1002EBF88(&qword_10060E550, &type metadata accessor for Date);
  v24 = sub_1004BBD84();
  v25 = *(v21 + 8);
  v25(v7, v4);
  v25(v10, v4);
  sub_100007214(v13, &qword_10060DEF0);
  return (v24 & 1) != 0;
}

uint64_t sub_1002EAA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EAA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002EAACC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_1002EAB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003ABC(&qword_10060ACB8);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100003ABC(&qword_10060B3E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_10000F778(a1, &v21 - v12, &qword_10060ACB8);
  sub_10000F778(a2, &v13[v15], &qword_10060ACB8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000F778(v13, v10, &qword_10060ACB8);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song);
      v18 = sub_1004BBD84();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100007214(v13, &qword_10060ACB8);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007214(v13, &qword_10060B3E8);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007214(v13, &qword_10060ACB8);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1002EB0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_1002E3188();
}

uint64_t sub_1002EB154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1002EB1C4()
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v0 <= 0x3F)
  {
    sub_1002EB798(319, &qword_10060AE48, &type metadata accessor for Song);
    if (v1 <= 0x3F)
    {
      sub_1002EB798(319, &qword_10060AE50, type metadata accessor for Lyrics.Translation);
      if (v2 <= 0x3F)
      {
        sub_1002EB798(319, &qword_10060AE58, type metadata accessor for Lyrics.Transliteration);
        if (v3 <= 0x3F)
        {
          sub_1002EB798(319, &unk_10060AE60, type metadata accessor for MetricsEvent.Page);
          if (v4 <= 0x3F)
          {
            sub_1004B7144();
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

uint64_t sub_1002EB428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100003ABC(&qword_10060DEF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002EB588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100003ABC(&qword_10060DEF0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002EB6E0()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v1 <= 0x3F)
    {
      sub_1002EB798(319, &unk_10060B238, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002EB798(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002EB7EC()
{
  sub_1002EB858();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1002EB858()
{
  if (!qword_10060B2F0)
  {
    sub_1004BB384();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10060B2F0);
    }
  }
}

uint64_t sub_1002EB8C0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1002EB900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B8724();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002EB9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004B8724();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1002EBA98()
{
  result = sub_1004B8724();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EBBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1002EBC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1002EBCD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

uint64_t sub_1002EBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }
}

uint64_t sub_1002EBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t sub_1002EBE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002EBEF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_1002EBF88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002EC044()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_1002EC084(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_1002EC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060DEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002EC1DC(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1002EC1F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_1002E9DF0(a1, v4);
}

uint64_t sub_1002EC2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_1002E0E40();
}

uint64_t sub_1002EC360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EC3C4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1002EC408(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v30.receiver = v4;
  v30.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x8000000100508080);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v12 = qword_100618C60;
  LOBYTE(v50[0]) = 1;
  *&v33 = 0x6F68706F7263694DLL;
  *(&v33 + 1) = 0xEA0000000000656ELL;
  *&v34 = qword_100618C60;
  *(&v34 + 1) = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 0x3FF0000000000000;
  v38 = 0;
  *&v39 = 0;
  *(&v39 + 1) = _swiftEmptyArrayStorage;
  v40 = 0;
  v41 = 0;
  v42 = 1;
  v43 = v33;
  v44 = v34;
  v49 = 1;
  v47 = v39;
  v48 = 0u;
  v13 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v45 = 0u;
  v46 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 2);
  v31[1] = *(v13 + 1);
  v31[2] = v15;
  v31[0] = v14;
  v16 = *(v13 + 3);
  v17 = *(v13 + 4);
  v18 = *(v13 + 5);
  v32 = v13[96];
  v31[4] = v17;
  v31[5] = v18;
  v31[3] = v16;
  v20 = *(v13 + 4);
  v19 = *(v13 + 5);
  v21 = *(v13 + 3);
  v51 = v13[96];
  v50[4] = v20;
  v50[5] = v19;
  v50[3] = v21;
  v22 = *v13;
  v23 = *(v13 + 2);
  v50[1] = *(v13 + 1);
  v50[2] = v23;
  v50[0] = v22;
  v24 = v48;
  *(v13 + 4) = v47;
  *(v13 + 5) = v24;
  v13[96] = v49;
  v25 = v44;
  *v13 = v43;
  *(v13 + 1) = v25;
  v26 = v46;
  *(v13 + 2) = v45;
  *(v13 + 3) = v26;
  v27 = v12;
  sub_1002EC870(v31, v29);
  sub_1002BA0E0(&v33, v29);
  sub_1002EC8E0(v50);
  sub_1003C6790(v31);
  sub_1002EC8E0(v31);
  sub_1002BB46C(&v33);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_1002EC870(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060B3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EC8E0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060B3F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EC96C()
{
  sub_1002EE088();
  result = sub_1004B8A04();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_100609B88 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_100609B88 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1004B8DC4())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_100003ABC(&qword_10060B428);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = sub_100003ABC(&qword_10060B430);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1002EE0DC;
}

uint64_t GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v63 = a2;
  v62 = sub_1004B8CE4();
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100003ABC(&qword_10060B438);
  v64 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v49 - v6;
  v71 = sub_1004B9D04();
  v55 = *(v71 - 8);
  __chkstk_darwin(v71);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v49 - v9;
  v10 = sub_100003ABC(&qword_10060B440);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v49 - v14);
  v16 = sub_1004B9D14();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003ABC(&qword_10060B448);
  __chkstk_darwin(v20 - 8);
  v22 = &v49 - v21;
  v23 = sub_100003ABC(&qword_10060B450);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v68 = sub_1002ED33C(a1, a3);
  (*(v17 + 16))(v22, a1, v16);
  v27 = v22;
  v28 = v26;
  (*(v17 + 32))(v19, v27, v16);
  sub_1002ED74C(&qword_10060B458);
  sub_1004BC124();
  v50 = *(v24 + 44);
  *&v26[v50] = 0;
  v29 = *(sub_100003ABC(&qword_10060B460) + 36);
  v30 = sub_1002ED74C(&qword_10060B468);
  v66 = 0;
  v51 = (v55 + 16);
  v70 = (v55 + 32);
  v31 = v64;
  v64 += 6;
  v65 = (v31 + 7);
  v54 = (v56 + 8);
  v53 = (v55 + 8);
  v56 = v29;
  v55 = v30;
  v59 = v15;
  v58 = v16;
  v57 = v12;
  while (1)
  {
    sub_1004BC764();
    if (*(v28 + v29) == v73[0])
    {
      v32 = 1;
      v33 = v69;
      goto LABEL_6;
    }

    v34 = sub_1004BC844();
    v35 = v52;
    v36 = v71;
    (*v51)(v52);
    v34(v73, 0);
    sub_1004BC774();
    v33 = v69;
    v37 = v70;
    v38 = *(v69 + 48);
    v40 = v66;
    v39 = v67;
    *v67 = v66;
    result = (*v37)(&v39[v38], v35, v36);
    if (__OFADD__(v40, 1))
    {
      break;
    }

    v66 = v40 + 1;
    *(v28 + v50) = v40 + 1;
    sub_100025B04(v67, v12, &qword_10060B438);
    v32 = 0;
LABEL_6:
    (*v65)(v12, v32, 1, v33);
    sub_100025B04(v12, v15, &qword_10060B440);
    if ((*v64)(v15, 1, v33) == 1)
    {
      sub_1002ED790(v28);
    }

    v42 = *v15;
    v43 = v15 + *(v33 + 48);
    v44 = v60;
    (*v70)(v60, v43, v71);
    v73[0] = *v63;
    __chkstk_darwin(v73[0]);
    *(&v49 - 4) = a3;
    v45 = v68;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;

    v46 = sub_1004B8CA4();
    v72 = v73[0];
    __chkstk_darwin(v46);
    *(&v49 - 4) = a3;
    *(&v49 - 3) = v44;
    *(&v49 - 2) = v45;
    *(&v49 - 1) = v42;
    v12 = v57;

    sub_1004B8CA4();
    v47 = v61;
    sub_1004B8CD4();
    sub_1004B8D14();
    (*v54)(v47, v62);
    sub_1004B8CB4();
    sub_1004B8CB4();

    v48 = v44;
    v15 = v59;
    (*v53)(v48, v71);
    v29 = v56;
  }

  __break(1u);
  return result;
}

id *sub_1002ED33C(uint64_t a1, double a2)
{
  v33 = sub_1004B9D04();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B9D14();
  sub_1002ED74C(&qword_10060B468);
  v7 = sub_1004BC734();
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
    v34 = _swiftEmptyArrayStorage;
    sub_1003BF7E8(0, v7 & ~(v7 >> 63), 0);
    v8 = v34;
    sub_1004BC724();
    if (v9 < 0)
    {
      goto LABEL_24;
    }

    v32 = (v4 + 16);
    do
    {
      v10 = sub_1004BC844();
      v11 = v33;
      (*v32)(v6);
      v10(v40, 0);
      sub_1004B9CF4();
      v41.origin.x = v35;
      v41.size.width = v37;
      v41.origin.y = v36 - v38;
      v41.size.height = v38 + v39;
      Width = CGRectGetWidth(v41);
      (*(v4 + 8))(v6, v11);
      v34 = v8;
      v13 = a1;
      v15 = v8[2];
      v14 = v8[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003BF7E8((v14 > 1), v15 + 1, 1);
        v8 = v34;
      }

      v8[2] = (v15 + 1);
      *&v8[v15 + 4] = Width;
      sub_1004BC774();
      --v9;
      a1 = v13;
    }

    while (v9);
  }

  v16 = v8[2];
  if (!v16)
  {
    v18 = 0.0;
    goto LABEL_16;
  }

  if (v16 <= 3)
  {
    v17 = 0;
    v18 = 0.0;
LABEL_14:
    v21 = v16 - v17;
    v22 = &v8[v17 + 4];
    do
    {
      v23 = *v22++;
      v18 = v18 + v23;
      --v21;
    }

    while (v21);
    goto LABEL_16;
  }

  v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  v19 = (v8 + 6);
  v18 = 0.0;
  v20 = v16 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = v18 + *(v19 - 2) + *(v19 - 1) + *v19 + v19[1];
    v19 += 4;
    v20 -= 4;
  }

  while (v20);
  if (v16 != v17)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_100003ABC(&qword_10060B4A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = 0;
  if (v16)
  {
    v25 = 0;
    while (v25 < v8[2])
    {
      v26 = *&v8[v25 + 4];
      v27 = v25 + 1;
      v28 = *(inited + 8 * v25 + 32);
      v29 = *(inited + 24);
      if (v25 + 1 >= v29 >> 1)
      {
        inited = sub_1003BEDB8((v29 > 1), v25 + 2, 1, inited);
      }

      *(inited + 16) = v25 + 2;
      *(inited + 8 * v25++ + 40) = v26 / v18 + v28;
      if (v16 == v27)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v40[0] = inited;
  v30 = sub_1002ED924(0, v16, v40, a2);

  return v30;
}

uint64_t sub_1002ED74C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1004B9D14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002ED790(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060B450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002ED850(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002ED8D0()
{
  result = qword_10060B470;
  if (!qword_10060B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B470);
  }

  return result;
}

id *sub_1002ED924(id *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_1003BF7C8(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = result[2];
      v15 = result[3];
      if (v16 >= v15 >> 1)
      {
        sub_1003BF7C8((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      result[2] = (v16 + 1);
      *&result[v16 + 4] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_1002EDAB8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1002EDAC4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1002EDAF0;
}

double sub_1002EDAF0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_1002EDB28()
{
  result = qword_10060B478;
  if (!qword_10060B478)
  {
    sub_100003B68(&qword_10060B430);
    sub_1000206D4(&qword_10060B480, &qword_10060B428);
    sub_1000206D4(&qword_10060B488, &qword_10060B490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B478);
  }

  return result;
}

uint64_t sub_1002EDC0C()
{
  v0 = sub_1004B8D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B4A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50C0;
  *(v4 + 32) = sub_1004BA2B4();
  *(v4 + 40) = sub_1004BA294();
  sub_1004BA6F4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  *&v10.origin.x = v6[13];
  *&v10.size.width = v6[15];
  v10.origin.y = *&v6[14] - v7;
  v10.size.height = v7 + v8;
  CGRectInset(v10, -14.0, 0.0);
  sub_1004B9C54();
  sub_1004B8CF4();

  sub_1004B8CC4();
  sub_1002EE034(v9);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002EDDE8()
{
  v0 = sub_1004B8D04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B498);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C50B0;
  sub_1004BA294();
  *(v4 + 32) = sub_1004BA6D4();
  *(v4 + 40) = v5;
  sub_1004BA2B4();
  *(v4 + 48) = sub_1004BA6D4();
  *(v4 + 56) = v6;
  sub_1004BA2B4();
  *(v4 + 64) = sub_1004BA6D4();
  *(v4 + 72) = v7;
  sub_1004BA294();
  *(v4 + 80) = sub_1004BA6D4();
  *(v4 + 88) = v8;
  sub_1004BA6E4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  *&v14.origin.x = v10[13];
  *&v14.size.width = v10[15];
  v14.origin.y = *&v10[14] - v11;
  v14.size.height = v11 + v12;
  CGRectInset(v14, -57.5, 0.0);
  sub_1004B9C54();
  sub_1004B8CF4();

  sub_1004B8CC4();
  sub_1002EE034(v13);
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1002EE088()
{
  result = qword_10060B4B0;
  if (!qword_10060B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4B0);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1004BBF84();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_1004BDBE4(v5);
    }

    else
    {

      sub_1004BBF84();
    }
  }

  else
  {
    sub_1004BBF84();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_1004BDBE4(v7);
    sub_1004BDBB4(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_1004BDBA4();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE310()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004BDBA4();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE378()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004BDBA4();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004BDBF4();
}

uint64_t sub_1002EE3D0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(double a1, double a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = a4;
  v8 = sub_1004BA254() & (a1 == a2);
  if (v7 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1004BA274();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_1004BDBE4(*&v6);
  sub_1004BDBB4(a4);
}

Swift::Int Border.hashValue.getter(double a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1004BDBA4();
  sub_1004BA274();
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  sub_1004BDBE4(*&v5);
  sub_1004BDBB4(a3);
  return sub_1004BDBF4();
}

void sub_1002EE570()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004BA274();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1004BDBE4(*&v3);
  sub_1004BDBB4(v2);
}

Swift::Int sub_1002EE5D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004BDBA4();
  sub_1004BA274();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1004BDBE4(*&v3);
  sub_1004BDBB4(v2);
  return sub_1004BDBF4();
}

BOOL sub_1002EE650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1004BA254();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)()
{
  sub_1004BA274();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004BDBE4(*&v1);
  v2 = v0[2];
  v3 = v0[3];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004BDBE4(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  sub_1004BDBE4(*&v4);
  v5 = v0[4];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1004BDBE4(*&v5);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_1004BDBA4();
  Shadow.hash(into:)();
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE808()
{
  sub_1004BDBA4();
  Shadow.hash(into:)();
  return sub_1004BDBF4();
}

BOOL sub_1002EE844(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_1004BA254();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1002EE8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_100003ABC(&qword_10060B4F8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100003ABC(&qword_10060B500);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_1002EE9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_1004B8854();

  v10 = sub_1004BA754();
  v12 = v11;
  v13 = sub_1004BA754();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_100003ABC(&qword_10060B508);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_100003ABC(&qword_10060B510) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_10000F778(&v27, &v23, &qword_10060B518);
  return sub_100007214(v35, &qword_10060B518);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *v5 = *a1;
  *&v5[8] = *(a1 + 8);
  *&v5[24] = *(a1 + 24);
  *&v5[40] = a2;
  *&v5[48] = a3;
  v5[56] = a4;

  sub_1004BA124();
  v6[0] = *v5;
  v6[1] = *&v5[16];
  v7[0] = *&v5[32];
  *(v7 + 9) = *&v5[41];
  return sub_1002F0794(v6);
}

uint64_t sub_1002EECD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060B540);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v36[-v9];
  v11 = *(a1 + 48);
  v39 = *(a1 + 40);
  v37 = *(a1 + 56);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  sub_1002F0E80(a1, v49);
  v16 = sub_1004B9964();
  sub_1004B86C4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v49[0]) = 0;
  v25 = *(v5 + 44);
  v26 = enum case for BlendMode.destinationOut(_:);
  v27 = sub_1004BA7E4();
  (*(*(v27 - 8) + 104))(&v10[v25], v26, v27);
  v28 = v39;
  *v10 = v39;
  *(v10 + 1) = v11;
  v29 = v11;
  v38 = v11;
  LOBYTE(v11) = v37;
  v10[16] = v37;
  *(v10 + 3) = 0;
  sub_10000F778(v10, v7, &qword_10060B540);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  LOBYTE(v43) = v11;
  *(&v43 + 1) = *v41;
  HIDWORD(v43) = *&v41[3];
  v44 = 0;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  *&v46 = v14;
  *(&v46 + 1) = v15;
  LOBYTE(v47) = v16;
  *(&v47 + 1) = *v40;
  DWORD1(v47) = *&v40[3];
  *(&v47 + 1) = v18;
  *&v48[0] = v20;
  *(&v48[0] + 1) = v22;
  *&v48[1] = v24;
  BYTE8(v48[1]) = 0;
  v30 = v43;
  *a2 = v42;
  a2[1] = v30;
  v31 = v45;
  v32 = v46;
  *(a2 + 89) = *(v48 + 9);
  v33 = v48[0];
  a2[4] = v47;
  a2[5] = v33;
  a2[2] = v31;
  a2[3] = v32;
  v34 = sub_100003ABC(&qword_10060B548);
  sub_10000F778(v7, a2 + *(v34 + 48), &qword_10060B540);
  sub_10000F778(&v42, v49, &qword_10060B550);
  sub_100007214(v10, &qword_10060B540);
  sub_100007214(v7, &qword_10060B540);
  v49[0] = v39;
  v49[1] = v38;
  v50 = v11;
  *v51 = *v41;
  *&v51[3] = *&v41[3];
  v52 = 0;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  *v58 = *v40;
  *&v58[3] = *&v40[3];
  v59 = v18;
  v60 = v20;
  v61 = v22;
  v62 = v24;
  v63 = 0;
  return sub_100007214(v49, &qword_10060B550);
}

uint64_t sub_1002EF090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_1004BA754();
  v8 = v7;
  v9 = (a2 + *(sub_100003ABC(&qword_10060B520) + 36));
  *v9 = sub_1004BA754();
  v9[1] = v10;
  v11 = sub_100003ABC(&qword_10060B528);
  sub_1002EECD0(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_100003ABC(&qword_10060B530) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_100003ABC(&qword_10060B538);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1002EF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a1;
  v18[1] = a2;
  v3 = sub_1004B9534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003ABC(&qword_10060B558);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = *v2;
  v11 = v2[1];
  v12 = *(v2 + 16);
  v13 = *(v2 + 3);
  v15 = v18 + *(v14 + 36) - v8;
  sub_100003ABC(&qword_10060B560);
  sub_1004B8EC4();
  *v15 = v10;
  *(v15 + 1) = v11;
  v15[16] = v12;
  *(v15 + 3) = -v13;
  v15[32] = 0;
  v16 = sub_100003ABC(&qword_10060B568);
  (*(*(v16 - 8) + 16))(v9, v18[0], v16);
  sub_1004B8EE4();
  sub_1002F0EB8();
  sub_1002F0F9C();
  sub_1004B9E54();
  (*(v4 + 8))(v6, v3);
  return sub_100007214(v9, &qword_10060B558);
}

void sub_1002EF438(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v48) = a3;
  v46 = a2;
  *&v47 = a1;
  v49 = a4;
  v14 = sub_100003ABC(&qword_10060B620);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_1004B9A14();
  v43 = *(v17 - 8);
  __chkstk_darwin(v17);
  v18 = sub_1004B9324();
  v44 = *(v18 - 8);
  v45 = v18;
  __chkstk_darwin(v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004B92C4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1004BA624();
  __chkstk_darwin(v25 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1004B8E64();
  v29 = __chkstk_darwin(v28);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v48)
  {
    v33 = v46;
    if (v46 == -1)
    {
      v40 = sub_1004B8E74();
      (*(v22 + 104))(&v31[*(v40 + 20)], enum case for RoundedCornerStyle.continuous(_:), v21);
      v41 = v47;
      *v31 = v47;
      *(v31 + 1) = v41;
      *&v31[*(v28 + 20)] = a9;
      sub_1004B8E54();
      v47 = v50;
      v48 = v51;
      v32 = v52;
      sub_1002F1614(v31, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v34 = *&v47;
      v54.origin.x = a5;
      v54.origin.y = a6;
      v54.size.width = a7;
      v54.size.height = a8;
      v55 = CGRectInset(v54, a9, a9);
      v35 = [objc_opt_self() bezierPathWithRoundedRect:v33 byRoundingCorners:v55.origin.x cornerRadii:{v55.origin.y, v55.size.width, v55.size.height, v34, v34}];
      v36 = [v35 CGPath];
      sub_1004B9C64();
      v47 = v50;
      v48 = v51;
      v32 = v52;
    }

    goto LABEL_8;
  }

  if (v48 == 1)
  {
    sub_1004B9A04();
    (*(v43 + 56))(v16, 0, 1, v17);
    sub_1004B99F4();
    sub_100007214(v16, &qword_10060B620);
    sub_1004B9314();
    v53.origin.x = a5;
    v53.origin.y = a6;
    v53.size.width = a7;
    v53.size.height = a8;
    CGRectInset(v53, a9, a9);
    sub_1004B9304();
    v47 = v50;
    v48 = v51;
    v32 = v52;
    (*(v44 + 8))(v20, v45);
LABEL_8:
    v39 = v47;
    v38 = v48;
    goto LABEL_9;
  }

  v37 = *(v22 + 104);
  v37(v27, enum case for RoundedCornerStyle.continuous(_:), v21, v29);
  (v37)(v24, enum case for RoundedCornerStyle.circular(_:), v21);
  sub_1004B92B4();
  (*(v22 + 8))(v24, v21);
  sub_1002F1614(v27, &type metadata accessor for Capsule);
  sub_1004BA614();
  v39 = v50;
  v38 = v51;
  v32 = v52;
LABEL_9:
  v42 = v49;
  *v49 = v39;
  v42[1] = v38;
  *(v42 + 32) = v32;
}

double sub_1002EF9B8@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1002EF9D8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1002EF438(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1002EFA28(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1004B8654();
  return sub_1002B1470;
}

uint64_t sub_1002EFAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F1568();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002EFB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F1568();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002EFB78(uint64_t a1)
{
  v2 = sub_1002F1568();

  return Shape.body.getter(a1, v2);
}

void sub_1002EFBC4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10060B4B8 = v1 == 6;
}

uint64_t sub_1002EFC28()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_100618FE0 = -1;
  byte_100618FE8 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_100609B98 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_100609B98 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_1002EFD44()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_100618FF8 = -1;
  byte_100619000 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_1002EFE60()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_100619010 = -1;
  byte_100619018 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_1002EFF7C()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_100619028 = -1;
  byte_100619030 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_100609BB0 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_100609BB0 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_1002F0098()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_100619040 = -1;
  byte_100619048 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_100609BB8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_100609BB8 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_1002F01B4()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1002F0290;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100399BF8;
  v3[3] = &unk_1005C0DF8;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_1004BA224();
  static Border.artwork = result;
  qword_100619058 = 0x3FE0000000000000;
  byte_100619060 = 0;
  return result;
}

id sub_1002F0290(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_1004D9B90[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_100619058;

  return v0;
}

double sub_1002F03F4()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.shallow = v0;
  unk_100619070 = xmmword_1004D9BA0;
  result = 2.0;
  unk_100619080 = xmmword_1004D9BB0;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_100609BC8 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_100619070;
  *(a1 + 24) = unk_100619080;
}

double sub_1002F0528()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.intermediate = v0;
  unk_100619098 = xmmword_1004D9BC0;
  result = 15.0;
  unk_1006190A8 = xmmword_1004D9BD0;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_100609BD0 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_100619098;
  *(a1 + 24) = unk_1006190A8;
}

double sub_1002F0660()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.deep = v0;
  unk_1006190C0 = xmmword_1004D9BE0;
  result = 25.0;
  unk_1006190D0 = xmmword_1004D9BF0;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_100609BD8 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BD8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = unk_1006190C0;
  *(a1 + 24) = unk_1006190D0;
}

unint64_t sub_1002F07C8()
{
  result = qword_10060B4C0;
  if (!qword_10060B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4C0);
  }

  return result;
}

unint64_t sub_1002F0820()
{
  result = qword_10060B4C8;
  if (!qword_10060B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4C8);
  }

  return result;
}

unint64_t sub_1002F0878()
{
  result = qword_10060B4D0;
  if (!qword_10060B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4D0);
  }

  return result;
}

unint64_t sub_1002F08D0()
{
  result = qword_10060B4D8;
  if (!qword_10060B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4D8);
  }

  return result;
}

uint64_t sub_1002F0924(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1002F096C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1002F09B0()
{
  result = qword_10060B4E0;
  if (!qword_10060B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4E0);
  }

  return result;
}

unint64_t sub_1002F0A24()
{
  result = qword_10060E010;
  if (!qword_10060E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E010);
  }

  return result;
}

unint64_t sub_1002F0A98()
{
  result = qword_10060B4E8;
  if (!qword_10060B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4E8);
  }

  return result;
}

uint64_t sub_1002F0B0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1004B8D64();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1002F0B7C()
{
  result = qword_10060B4F0;
  if (!qword_10060B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4F0);
  }

  return result;
}

__n128 sub_1002F0BD0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002F0BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F0C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002F0C98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1002F0CE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_1002F0D40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002F0D54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1002F0D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F0EB8()
{
  result = qword_10060B570;
  if (!qword_10060B570)
  {
    sub_100003B68(&qword_10060B558);
    sub_1000206D4(&qword_10060B578, &qword_10060B568);
    sub_1000206D4(&qword_10060B580, &qword_10060B560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B570);
  }

  return result;
}

unint64_t sub_1002F0F9C()
{
  result = qword_10060B588;
  if (!qword_10060B588)
  {
    sub_1004B9534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B588);
  }

  return result;
}

uint64_t sub_1002F0FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002F1054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002F10AC()
{
  result = qword_10060B590;
  if (!qword_10060B590)
  {
    sub_100003B68(&qword_10060B500);
    sub_1002F1164();
    sub_1000206D4(&qword_10060B5B0, &qword_10060B5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B590);
  }

  return result;
}

unint64_t sub_1002F1164()
{
  result = qword_10060B598;
  if (!qword_10060B598)
  {
    sub_100003B68(&qword_10060B5A0);
    sub_1000206D4(&qword_10060B5A8, &qword_10060B4F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B598);
  }

  return result;
}

unint64_t sub_1002F1220()
{
  result = qword_10060B5C0;
  if (!qword_10060B5C0)
  {
    sub_100003B68(&qword_10060B510);
    sub_1000206D4(&qword_10060B5C8, &qword_10060B508);
    sub_1000206D4(&qword_10060B5D0, &qword_10060B518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B5C0);
  }

  return result;
}

unint64_t sub_1002F1308()
{
  result = qword_10060B5D8;
  if (!qword_10060B5D8)
  {
    sub_100003B68(&qword_10060B520);
    sub_1000206D4(&qword_10060B5E0, &qword_10060B538);
    sub_1000206D4(&qword_10060B5E8, &qword_10060B530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B5D8);
  }

  return result;
}

uint64_t sub_1002F13EC()
{
  sub_100003B68(&qword_10060B558);
  sub_1004B9534();
  sub_1002F0EB8();
  sub_1002F0F9C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1002F14B8()
{
  result = qword_10060B600;
  if (!qword_10060B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B600);
  }

  return result;
}

unint64_t sub_1002F1510()
{
  result = qword_10060B608;
  if (!qword_10060B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B608);
  }

  return result;
}

unint64_t sub_1002F1568()
{
  result = qword_10060B610;
  if (!qword_10060B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B610);
  }

  return result;
}

unint64_t sub_1002F15C0()
{
  result = qword_10060B618;
  if (!qword_10060B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B618);
  }

  return result;
}

uint64_t sub_1002F1614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id *sub_1002F1688(uint64_t a1)
{
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003ABC(&qword_10060A210);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1003BF788(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003BF788(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = (v15 + 1);
      sub_1002AD424(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}