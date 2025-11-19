uint64_t sub_14D0(void *a1)
{
  v2 = sub_5A94();
  v3 = sub_565C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_56DC();
  v137 = v8;
  sub_5720();
  v10 = __chkstk_darwin(v9);
  v12 = &v126 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v126 - v14;
  __chkstk_darwin(v13);
  sub_584C();
  v134 = v16;
  v17 = sub_482C(&qword_C4F0, &qword_6258);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  sub_584C();
  v142 = v22;
  v130 = sub_5B14();
  v23 = sub_565C(v130);
  v129 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_57E0();
  v29 = v28 - v27;
  sub_5AA4();
  sub_5798();
  v141 = v29;
  sub_5B04();
  v30 = [a1 matchingRecordSet];
  v131 = a1;
  v31 = [a1 recipe];
  v32 = [v31 recipeUserInfo];

  v128 = sub_5B34();
  sub_5614(&qword_C4F8, &type metadata accessor for UUID);
  v132 = sub_5B44();
  v143 = v30;
  v33 = [v30 nativeRecordInfo];
  sub_482C(&qword_C448, &qword_61E0);
  v151 = v2;
  v34 = sub_5B34();

  v35 = 0;
  v149 = 0;
  v36 = v34[8];
  v135 = v5;
  v136 = v34;
  v37 = *(v34 + 32);
  sub_5698();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v44 = (v5 + 16);
  v147 = (v5 + 32);
  v140 = (v5 + 8);
  v45 = v15;
  *&v46 = 136315138;
  v133 = v46;
  v145 = v21;
  v146 = v12;
  v150 = v15;
  v138 = v43;
  v139 = v38;
  v144 = v44;
  while (1)
  {
    if (v41)
    {
      v47 = v35;
      goto LABEL_8;
    }

    do
    {
      v47 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v47 >= v43)
      {
        sub_482C(&qword_C500, &qword_6260);
        sub_593C();
        sub_48D4(v86, v87, v88, v89);
        v41 = 0;
        goto LABEL_9;
      }

      v41 = *(v38 + 8 * v47);
      ++v35;
    }

    while (!v41);
    v35 = v47;
LABEL_8:
    v48 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v49 = v48 | (v47 << 6);
    v51 = v135;
    v50 = v136;
    v52 = v134;
    v53 = v151;
    (*(v135 + 16))(v134, v136[6] + *(v135 + 72) * v49, v151);
    v34 = *(v50[7] + 8 * v49);
    v54 = sub_482C(&qword_C500, &qword_6260);
    v55 = *(v54 + 48);
    v56 = *(v51 + 32);
    v21 = v145;
    v56(v145, v52, v53);
    *&v21[v55] = v34;
    sub_597C();
    sub_48D4(v57, v58, v59, v54);

    v12 = v146;
    v45 = v150;
LABEL_9:
    v60 = v142;
    sub_53F0(v21, v142, &qword_C4F0, &qword_6258);
    v61 = sub_5988();
    sub_482C(v61, v62);
    v63 = sub_58FC();
    if (sub_4954(v63, v64, v65) == 1)
    {
      break;
    }

    v66 = *(v60 + *(v34 + 12));

    v67 = v151;
    (*v147)(v45, v60, v151);
    v68 = *v144;
    (*v144)(v12, v45, v67);
    isa = sub_5A84().super.isa;
    v152 = 0;
    v70 = [v143 nativeRecordDataForRecordUUID:isa error:&v152];

    if (!v70)
    {
      v71 = *v140;
      v72 = v152;
      v73 = v151;
      v149 = v71;
      v71(v12, v151);
      v74 = sub_5A44();

      v148 = v74;
      swift_willThrow();
      v75 = v137;
      v68(v137, v150, v73);
      v76 = sub_5AF4();
      v77 = sub_5BE4();
      if (os_log_type_enabled(v76, v77))
      {
        sub_57C4();
        v78 = swift_slowAlloc();
        sub_57B8();
        v79 = swift_slowAlloc();
        v152 = v79;
        *v78 = v133;
        v80 = sub_5A74();
        v82 = v81;
        v83 = v75;
        v84 = v149;
        v149(v83, v151);
        v34 = sub_49D4(v80, v82, &v152);

        *(v78 + 4) = v34;
        _os_log_impl(&dword_0, v76, v77, "failure retrieving native record data for %s; skipping from collection", v78, 0xCu);
        sub_4F44(v79);
        sub_5714();

        sub_5714();

        v45 = v150;
        v84(v150, v151);
      }

      else
      {

        v34 = v151;
        v85 = v149;
        v149(v75, v151);
        v45 = v150;
        v85(v150, v34);
      }

      v149 = 0;
      v21 = v145;
      v12 = v146;
      v43 = v138;
      v38 = v139;
      continue;
    }

    v90 = v152;
    v91 = sub_5A64();
    v148 = v92;

    sub_5738();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = v70;
    sub_5008(v12);
    sub_57F0();
    v98 = v96 + v97;
    if (__OFADD__(v96, v97))
    {
      goto LABEL_31;
    }

    v99 = v94;
    v100 = v95;
    sub_482C(&qword_C508, qword_6268);
    if (sub_5C54(isUniquelyReferenced_nonNull_native, v98))
    {
      v12 = v146;
      v101 = sub_5008(v146);
      v45 = v150;
      v21 = v145;
      if ((v100 & 1) != (v102 & 1))
      {
        result = sub_5CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v101 = v99;
      v21 = v145;
      v12 = v146;
      v45 = v150;
    }

    v34 = v152;
    v132 = v152;
    if (v100)
    {
      v103 = (*(v152 + 7) + 16 * v101);
      v104 = *v103;
      v105 = v103[1];
      v106 = v148;
      *v103 = v91;
      v103[1] = v106;
      sub_497C(v104, v105);
      v34 = *v140;
      v107 = v151;
      (*v140)(v12, v151);
      (v34)(v45, v107);
      goto LABEL_25;
    }

    v108 = v101;
    sub_5968(v152 + 8 * (v101 >> 6));
    v111 = v110 + *(v135 + 72) * v109;
    v127 = v91;
    v112 = v151;
    v68(v111, v12, v151);
    v113 = (v34[7] + 16 * v108);
    v114 = v148;
    *v113 = v127;
    v113[1] = v114;
    v115 = *(v135 + 8);
    v115(v12, v112);
    v115(v45, v112);
    v116 = v34[2];
    v117 = __OFADD__(v116, 1);
    v118 = v116 + 1;
    if (v117)
    {
      goto LABEL_32;
    }

    v34[2] = v118;
LABEL_25:
    v43 = v138;
    v38 = v139;
  }

  v119 = v149;
  sub_1F6C(v128, v132);

  if (v119)
  {
    v120 = sub_5A34();
    v121 = sub_591C();
    [v121 v122];
  }

  else
  {
    v120 = sub_5B24().super.isa;

    v123 = sub_591C();
    [v123 v124];
  }

  return (*(v129 + 8))(v141, v130);
}

uint64_t sub_1F6C(uint64_t a1, uint64_t a2)
{
  v341 = a2;
  v4 = sub_5AE4();
  v5 = sub_565C(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v10);
  sub_584C();
  v337 = v11;
  v12 = sub_482C(&qword_C460, &qword_61F8);
  v13 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12 - 8);
  sub_5800(v306 - v14);
  v347 = sub_5AD4();
  v15 = sub_565C(v347);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15);
  sub_57E0();
  sub_5800(v21 - v20);
  v22 = sub_5A94();
  v23 = sub_565C(v22);
  v340 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v27);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v28);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v29);
  sub_5758();
  v350 = v30;
  sub_5720();
  __chkstk_darwin(v31);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v32);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v33);
  sub_5758();
  sub_5688();
  __chkstk_darwin(v34);
  sub_584C();
  v338 = v35;
  v36 = sub_482C(&qword_C468, &qword_6200);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  sub_56DC();
  sub_5688();
  __chkstk_darwin(v38);
  sub_5758();
  v349 = v39;
  sub_5720();
  __chkstk_darwin(v40);
  sub_5758();
  v351 = v41;
  sub_5720();
  __chkstk_darwin(v42);
  sub_584C();
  sub_5800(v43);
  v44 = sub_5B14();
  v45 = sub_565C(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  sub_57E0();
  v52 = v51 - v50;
  sub_5AA4();
  sub_5798();
  v344 = v52;
  sub_5B04();
  sub_3FF8(1701667182, 0xE400000000000000, a1, &v358);
  v339 = v22;
  v321 = v44;
  v320 = v47;
  v317 = v2;
  v319 = a1;
  if (!*(&v359 + 1))
  {
    sub_50FC(&v358, &qword_C470, &qword_6208);
LABEL_10:
    v334 = sub_482C(&qword_C448, &qword_61E0);
    v330 = sub_5B44();
    v55 = sub_58D0();
    v57 = (v55 + 64);
    v56 = *(v55 + 64);
    v58 = *(v55 + 32);
    sub_5698();
    v353 = v60 & v59;
    v62 = ((v61 + 63) >> 6);
    v347 = (v340 + 16);
    v348 = (v340 + 32);
    v335 = (v340 + 8);
    v329 = "v24@0:8@16";

    v64 = 0;
    *&v65 = 136315138;
    v333 = v65;
    v328 = xmmword_6190;
    v337 = v57;
    v336 = v62;
    while (1)
    {
      v66 = v346;
      v67 = v349;
      while (1)
      {
        v68 = v353;
        if (v353)
        {
          goto LABEL_18;
        }

        v17 = v343;
        v69 = v350;
        v70 = v345;
        do
        {
          v71 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v71 >= v62)
          {
            v83 = v22;
            sub_482C(&qword_C478, &qword_6210);
            sub_593C();
            sub_48D4(v124, v125, v126, v127);
            v353 = 0;
            goto LABEL_19;
          }

          v68 = *(v57 + v71);
          ++v64;
        }

        while (!v68);
        v64 = v71;
LABEL_18:
        v353 = (v68 - 1) & v68;
        sub_5858();
        v73 = *(v72 - 256);
        v75 = v338;
        (*(v73 + 16))(v338, v74 + *(v73 + 72) * v17, v22);
        v76 = (*(v62 + 7) + 16 * v17);
        v77 = *v76;
        v78 = v76[1];
        v79 = sub_482C(&qword_C478, &qword_6210);
        v80 = (v346 + *(v79 + 48));
        v81 = *(v73 + 32);
        v66 = v346;
        v82 = v75;
        v83 = v22;
        v81(v346, v82, v22);
        *v80 = v77;
        v80[1] = v78;
        sub_597C();
        sub_48D4(v84, v85, v86, v79);
        sub_48FC(v77, v78);
        v70 = v345;
        v17 = v343;
        v67 = v349;
        v69 = v350;
LABEL_19:
        sub_53F0(v66, v67, &qword_C468, &qword_6200);
        sub_482C(&qword_C478, &qword_6210);
        v87 = sub_58FC();
        if (sub_4954(v87, v88, v89) == 1)
        {
          sub_58D0();

          sub_5764();
          if (*(&v359 + 1))
          {
            sub_5930();
            swift_dynamicCast();
            sub_56B4();
            sub_5954();
            if (v142 && (v354 & 1) != 0)
            {
              v63 = sub_44C4(v64);
              if (v70)
              {
                sub_5738();
                v17 = sub_5AF4();
                v143 = sub_5BE4();
                if (sub_5870(v143))
                {
                  *sub_59EC() = 0;
                  sub_59B4(&dword_0, v144, v145, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
                  sub_5714();
                }

                sub_428C(v64, &qword_C448, &qword_61E0);
                sub_59D4();
LABEL_119:

                v297 = sub_56C8();
                v298(v297);
                return v17;
              }

LABEL_125:
              v17 = v63;
              v302 = sub_56C8();
              v303(v302);
              goto LABEL_128;
            }
          }

          else
          {
            sub_50FC(&v358, &qword_C470, &qword_6208);
            sub_56B4();
            sub_5954();
          }

          sub_428C(v64, &qword_C448, &qword_61E0);
          sub_59D4();
LABEL_122:
          v299 = sub_56C8();
          v300(v299);
          return v17;
        }

        v90 = (v67 + dword_C4A8);
        v92 = *v90;
        v91 = v90[1];
        v93 = *v348;
        v94 = sub_58C4();
        v96 = v95;
        v97(v94);
        v98 = objc_opt_self();
        v351 = v96;
        v352 = v92;
        isa = sub_5A54().super.isa;
        *&v358 = 0;
        v100 = [v98 JSONObjectWithData:isa options:0 error:&v358];

        v101 = v358;
        if (!v100)
        {
          v17 = v358;
          v62 = sub_5A44();

          v342 = v62;
          v57 = v62;
          swift_willThrow();
          (*v347)(v70, v69, v83);
          sub_5738();
          v111 = v83;
          v112 = sub_5AF4();
          sub_5BE4();
          sub_5834();
          if (os_log_type_enabled(v112, v113))
          {
            sub_57C4();
            v17 = swift_slowAlloc();
            sub_57B8();
            v114 = swift_slowAlloc();
            *v17 = sub_57D0(v114).n128_u32[0];
            v115 = sub_5A74();
            v117 = v116;
            v118 = *v335;
            (*v335)(v345, v111);
            v62 = sub_49D4(v115, v117, &v358);
            v66 = v346;

            *(v17 + 4) = v62;
            _os_log_impl(&dword_0, v112, v101, "Unable to decode record %s, skipping", v17, 0xCu);
            sub_4F44(v114);
            sub_5714();

            sub_5714();

            sub_497C(v352, v351);

            v22 = v339;
            (v118)(v350, v339);
            sub_5948();
          }

          else
          {
            sub_497C(v352, v351);

            sub_59A8(&v360);
            (v17)(v70, v83);
            (v17)(v350, v83);
            sub_5948();
            v22 = v83;
          }

          goto LABEL_35;
        }

        v102 = v358;
        sub_5C14();
        swift_unknownObjectRelease();
        sub_5930();
        if (swift_dynamicCast())
        {
          break;
        }

        v22 = v83;
        (*v347)(v17, v69, v83);
        sub_5738();
        v119 = sub_5AF4();
        sub_5BD4();
        sub_5834();
        v62 = v17;
        if (os_log_type_enabled(v119, v120))
        {
          sub_57C4();
          v22 = swift_slowAlloc();
          sub_57B8();
          v17 = swift_slowAlloc();
          *v22 = sub_57D0(v17).n128_u32[0];
          v331 = sub_5A74();
          v122 = v121;
          v123 = *v335;
          sub_58DC();
          v123();
          v62 = sub_49D4(v331, v122, &v358);

          *(v22 + 4) = v62;
          _os_log_impl(&dword_0, v119, v101, "Couldn't decode data for %s into a record, skipping", v22, 0xCu);
          sub_4F44(v17);
          sub_5714();

          sub_56F0();
          sub_497C(v352, v351);

          (v123)(v350, v22);
        }

        else
        {
          sub_497C(v352, v351);

          v17 = *v335;
          (*v335)(v62, v83);
          (v17)(v69, v83);
        }

LABEL_34:
        v66 = v346;
LABEL_35:
        v67 = v349;
        sub_58B0();
      }

      v103 = v354;
      if (*(v354 + 16))
      {
        v22 = v83;
        v62 = v354;
        v104 = sub_4F90(0x79546C616E676973, 0xEA00000000006570);
        if (v105)
        {
          sub_50A0(*(v103 + 56) + 32 * v104, &v358);

          sub_50FC(&v358, &qword_C470, &qword_6208);
          v17 = v332;
          (*v347)(v332, v69, v83);
          sub_5738();
          v106 = sub_5AF4();
          sub_5BD4();
          sub_5834();
          if (os_log_type_enabled(v106, v107))
          {
            sub_57C4();
            v22 = swift_slowAlloc();
            sub_57B8();
            v108 = swift_slowAlloc();
            *v22 = sub_57D0(v108).n128_u32[0];
            v62 = v17;
            sub_5A74();
            sub_5910();
            v17 = v109;
            v110 = *v335;
            sub_58DC();
            v110();
            sub_49D4(v62, v17, &v358);
            sub_5910();

            *(v22 + 4) = v62;
            _os_log_impl(&dword_0, v106, v101, "Record %s looks like a CustomSignal, skipping", v22, 0xCu);
            sub_4F44(v108);
            sub_5714();

            sub_56F0();
            sub_497C(v352, v351);

            (v110)(v350, v22);
          }

          else
          {
            sub_497C(v352, v351);

            sub_59A8(&v360);
            (v17)();
            (v17)(v69, v83);
          }

          goto LABEL_34;
        }
      }

      v358 = 0u;
      v359 = 0u;
      sub_50FC(&v358, &qword_C470, &qword_6208);
      sub_5738();
      v128 = sub_5AF4();
      sub_5BD4();
      sub_5834();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = sub_59EC();
        *v130 = 0;
        _os_log_impl(&dword_0, v128, v101, "SiriInference dodML plugin ran succesfully", v130, 2u);
        sub_5714();
      }

      *&v358 = 0;
      *(&v358 + 1) = 0xE000000000000000;
      sub_5C34(24);
      v131 = sub_5AA4();
      v133 = v132;

      *&v358 = v131;
      *(&v358 + 1) = v133;
      v362._object = (v329 | 0x8000000000000000);
      v362._countAndFlagsBits = 0xD000000000000016;
      sub_5BA4(v362);
      v134 = sub_5B74();

      sub_482C(&qword_C480, &qword_6218);
      inited = swift_initStackObject();
      *(inited + 16) = v328;
      *(inited + 32) = 0x656D6F6374756FLL;
      *(inited + 40) = 0xE700000000000000;
      v136 = sub_515C(0, &qword_C488, NSString_ptr);
      *(inited + 48) = sub_5C04();
      sub_515C(0, &qword_C490, NSObject_ptr);
      sub_5910();
      sub_5B44();
      sub_5B24();
      sub_5910();

      AnalyticsSendEvent();

      v17 = sub_5A74();
      v138 = v137;
      v139 = v330;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v358 = v139;
      v62 = &v358;
      sub_51A4(v103, v17, v138, isUniquelyReferenced_nonNull_native);
      sub_497C(v352, v351);

      sub_572C(&v360);
      v22 = v339;
      v141(v69, v339);
      v330 = v358;
      sub_58B0();
    }
  }

  sub_5930();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  if (v354 == 0x536F747541736D73 && v355 == 0xEB00000000646E65)
  {

    goto LABEL_49;
  }

  v54 = sub_5C94();

  if ((v54 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_49:
  *&v328 = v4;
  v146 = sub_5A24();
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  v345 = sub_5A14();
  sub_482C(&qword_C498, &qword_6220);
  v316 = sub_5B44();
  v149 = sub_58D0();
  v150 = v149 + 64;
  v151 = 1 << *(v149 + 32);
  if (v151 < 64)
  {
    v152 = ~(-1 << v151);
  }

  else
  {
    v152 = -1;
  }

  v153 = v152 & *(v149 + 64);
  v329 = (v151 + 63) >> 6;
  v346 = v340 + 16;
  v348 = (v340 + 32);
  v332 = (v340 + 8);
  v327 = v17 + 32;
  v326 = enum case for CustomSignalType.messagesAutoSend(_:);
  v325 = v7 + 104;
  v324 = (v7 + 8);
  v323 = v17 + 8;

  *&v154 = 136315138;
  v322 = v154;
  v155 = v347;
  v156 = v336;
  v343 = v150;
LABEL_53:
  sub_5810();
  v159 = v351;
  while (1)
  {
    if (!v153)
    {
      while (1)
      {
        v160 = v158 + 1;
        if (__OFADD__(v158, 1))
        {
          break;
        }

        if (v160 >= v329)
        {
          v175 = v155;
          v353 = v158;
          v171 = v22;
          v216 = sub_5988();
          sub_482C(v216, v217);
          sub_593C();
          sub_48D4(v218, v219, v220, v221);
          v352 = 0;
          goto LABEL_61;
        }

        v153 = *(v150 + 8 * v160);
        ++v158;
        if (v153)
        {
          v353 = v160;
          goto LABEL_60;
        }
      }

      __break(1u);
      goto LABEL_127;
    }

    v353 = v158;
LABEL_60:
    v161 = (v153 - 1) & v153;
    v352 = v161;
    sub_5858();
    v163 = *(v162 - 256);
    v47 = v338;
    (*(v163 + 16))(v338, v164 + *(v163 + 72) * v159, v22);
    v165 = (*(v161 + 56) + 16 * v159);
    v167 = *v165;
    v166 = v165[1];
    v168 = sub_482C(&qword_C478, &qword_6210);
    v159 = v351;
    v169 = (v351 + *(v168 + 48));
    v170 = *(v163 + 32);
    v171 = v22;
    v170(v351, v47, v22);
    *v169 = v167;
    v169[1] = v166;
    sub_597C();
    sub_48D4(v172, v173, v174, v168);
    sub_48FC(v167, v166);
    sub_5810();
    v175 = v347;
    v156 = v336;
LABEL_61:
    v176 = v335;
    sub_53F0(v159, v335, &qword_C468, &qword_6200);
    v177 = sub_5988();
    v17 = sub_482C(v177, v178);
    if (sub_4954(v176, 1, v17) == 1)
    {
      break;
    }

    v179 = (v176 + *(v17 + 48));
    v47 = v156;
    v181 = *v179;
    v180 = v179[1];
    v22 = v171;
    (*v348)(v47, v176, v171);
    sub_5614(&qword_C4A0, &type metadata accessor for CustomSignal);
    v182 = v333;
    v349 = v181;
    v350 = v180;
    v153 = v345;
    v150 = v342;
    sub_5A04();
    if (v150)
    {

      sub_593C();
      sub_48D4(v183, v184, v185, v175);
      sub_50FC(v182, &qword_C460, &qword_61F8);
      sub_572C(&v361);
      v186 = v331;
      v187(v331, v47, v171);
      sub_5738();
      v159 = sub_5AF4();
      sub_5BD4();
      v156 = v47;
      sub_5834();
      if (os_log_type_enabled(v159, v188))
      {
        sub_57C4();
        v189 = swift_slowAlloc();
        sub_57B8();
        v190 = swift_slowAlloc();
        *v189 = sub_5994(v190).n128_u32[0];
        v191 = sub_5A74();
        v47 = v192;
        v193 = *v332;
        sub_58DC();
        v193();
        v153 = sub_49D4(v191, v47, &v358);

        *(v189 + 4) = v153;
        _os_log_impl(&dword_0, v159, v175, "Unable to decode %s to CustomSignal, so not an SMS record", v189, 0xCu);
        sub_4F44(v171);
        sub_56F0();
        sub_5810();
        sub_5714();

        sub_497C(v349, v350);

        v194 = sub_5840();
        (v193)(v194);
        v155 = v347;
        sub_5948();
        goto LABEL_82;
      }

      sub_497C(v349, v350);

      sub_59A8(v357);
      (v159)(v186, v171);
      v215 = sub_5840();
      (v159)(v215);
      sub_5948();
      sub_5744();
      v155 = v175;
    }

    else
    {
      v342 = 0;
      sub_597C();
      sub_48D4(v195, v196, v197, v175);
      sub_572C(v356);
      v198(v334, v182, v175);
      sub_5AB4();
      sub_572C(&v354);
      v199 = v330;
      v200 = v328;
      v201(v330, v326, v328);
      sub_5614(&dword_C4A8, &type metadata accessor for CustomSignalType);
      sub_5BC4();
      sub_5BC4();
      v153 = *(&v358 + 1);
      v159 = v355;
      if (v358 == v354 && *(&v358 + 1) == v355)
      {
        v47 = v324;
        v222 = *v324;
        (*v324)(v199, v200);
        v223 = sub_58C4();
        v222(v223);

LABEL_75:
        sub_515C(0, &qword_C4B0, NSKeyedUnarchiver_ptr);
        sub_515C(0, &qword_C488, NSString_ptr);
        sub_515C(0, &qword_C4B8, NSNumber_ptr);
        v224 = sub_5AC4();
        v226 = v225;
        v150 = v342;
        v227 = sub_5BF4();
        v153 = v150;
        if (v150)
        {

          sub_497C(v224, v226);
          v153 = 0;
          v155 = v347;
        }

        else
        {
          v228 = v227;
          sub_497C(v224, v226);
          v155 = v347;
          if (v228)
          {
            v314 = sub_5B44();
            v22 = v339;
            v156 = v336;
            if ((v228 & 0xC000000000000001) != 0)
            {
              v239 = sub_5C64();
              v308 = 0;
              v240 = 0;
              v241 = 0;
              v307 = v239 | 0x8000000000000000;
            }

            else
            {
              v242 = -1 << *(v228 + 32);
              v240 = ~v242;
              v243 = *(v228 + 64);
              v308 = v228 + 64;
              v244 = -v242;
              if (v244 < 64)
              {
                v245 = ~(-1 << v244);
              }

              else
              {
                v245 = -1;
              }

              v241 = v245 & v243;
              v307 = v228;
            }

            v306[1] = v240;
            v342 = 0;
            sub_581C();
            *(v250 - 256) = v249;
            if (v248 < 0)
            {
LABEL_91:
              v47 = v246;
              v251 = sub_5C74();
              if (v251)
              {
                v253 = v252;
                v354 = v251;
                swift_dynamicCast();
                v315 = v358;
                v354 = v253;
                swift_dynamicCast();
                v254 = v358;
                v313 = v241;
                goto LABEL_98;
              }
            }

            else
            {
              while (1)
              {
                v255 = v246;
                v256 = v241;
                v47 = v246;
                if (!v241)
                {
                  while (1)
                  {
                    v47 = v255 + 1;
                    if (__OFADD__(v255, 1))
                    {
                      break;
                    }

                    if (v47 >= v249)
                    {
                      goto LABEL_110;
                    }

                    v256 = *(v247 + 8 * v47);
                    ++v255;
                    if (v256)
                    {
                      goto LABEL_97;
                    }
                  }

                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
                }

LABEL_97:
                v313 = (v256 - 1) & v256;
                v257 = (v47 << 9) | (8 * __clz(__rbit64(v256)));
                v258 = *(*(v248 + 48) + v257);
                v312 = *(*(v248 + 56) + v257);
                v315 = v258;
                v254 = v312;
LABEL_98:
                if (!v315)
                {
                  break;
                }

                v259 = sub_5B84();
                v261 = v260;
                v312 = v254;
                v311 = [v254 integerValue];
                v262 = v314;
                v309 = swift_isUniquelyReferenced_nonNull_native();
                *&v358 = v262;
                v310 = v259;
                v263 = v259;
                v264 = v261;
                sub_4F90(v263, v261);
                sub_57F0();
                v269 = v267 + v268;
                if (__OFADD__(v267, v268))
                {
                  goto LABEL_130;
                }

                v270 = v265;
                v271 = v266;
                sub_482C(&qword_C4C0, &qword_6228);
                if (sub_5C54(v309, v269))
                {
                  v272 = sub_4F90(v310, v264);
                  v274 = v336;
                  v155 = v347;
                  if ((v271 & 1) != (v273 & 1))
                  {
                    result = sub_5CA4();
                    __break(1u);
                    return result;
                  }

                  v270 = v272;
                }

                else
                {
                  v274 = v336;
                  v155 = v347;
                }

                v275 = v271;
                v156 = v274;
                if (v275)
                {

                  v314 = v358;
                  sub_588C(*(v358 + 56));
                }

                else
                {
                  v276 = v358;
                  sub_5968(v358 + 8 * (v270 >> 6));
                  v278 = (v277 + 16 * v270);
                  *v278 = v310;
                  v278[1] = v264;
                  sub_588C(*(v276 + 56));

                  v279 = *(v276 + 16);
                  v280 = __OFADD__(v279, 1);
                  v281 = v279 + 1;
                  if (v280)
                  {
                    goto LABEL_131;
                  }

                  v314 = v276;
                  *(v276 + 16) = v281;
                }

                v22 = v339;
                sub_581C();
                v249 = *(v282 - 256);
                v246 = v47;
                v241 = v313;
                if (v248 < 0)
                {
                  goto LABEL_91;
                }
              }
            }

LABEL_110:
            sub_519C();

            v283 = sub_5A74();
            v285 = v284;
            v286 = v316;
            v287 = swift_isUniquelyReferenced_nonNull_native();
            *&v358 = v286;
            sub_51A4(v314, v283, v285, v287);

            sub_497C(v349, v350);
            v288 = sub_5670();
            v289(v288, v155);
            sub_572C(v357);
            v290 = sub_5840();
            v291(v290);
            v316 = v358;
            v150 = v343;
            v153 = v352;
            goto LABEL_53;
          }
        }

        v342 = 0;
        sub_5738();
        v159 = sub_5AF4();
        v229 = sub_5BE4();
        v230 = sub_5870(v229);
        v22 = v339;
        v156 = v336;
        if (v230)
        {
          v231 = sub_59EC();
          *v231 = 0;
          _os_log_impl(&dword_0, v159, OS_LOG_TYPE_DEFAULT, "SiriInference dodML plugin tried to decode smsAutoSend record but failed - skipping", v231, 2u);
          sub_5714();
        }

        sub_497C(v349, v350);

        v232 = sub_5670();
        v233(v232, v155);
        sub_572C(v357);
        v234 = sub_5840();
        v235(v234);
        goto LABEL_81;
      }

      v47 = sub_5C94();
      v203 = *v324;
      (*v324)(v199, v200);
      v204 = sub_58C4();
      v203(v204);

      if (v47)
      {
        goto LABEL_75;
      }

      sub_572C(&v361);
      v47 = v336;
      v205(v318, v336, v22);
      sub_5738();
      v206 = sub_5AF4();
      v207 = sub_5BD4();
      if (os_log_type_enabled(v206, v207))
      {
        sub_57C4();
        v208 = swift_slowAlloc();
        sub_57B8();
        v209 = swift_slowAlloc();
        *v208 = sub_5994(v209).n128_u32[0];
        v210 = sub_5A74();
        v212 = v211;
        v47 = *v332;
        sub_58DC();
        (v47)();
        v159 = sub_49D4(v210, v212, &v358);

        *(v208 + 4) = v159;
        _os_log_impl(&dword_0, v206, v207, "Record %s was not an SMS auto-send record, skipping", v208, 0xCu);
        sub_4F44(v22);
        sub_56F0();
        v153 = v336;
        sub_5714();

        sub_497C(v349, v350);

        v213 = sub_5670();
        v155 = v347;
        v214(v213, v347);
        (v47)(v153, v22);
        v156 = v153;
LABEL_81:
        sub_5810();
LABEL_82:
        sub_5744();
      }

      else
      {
        sub_497C(v349, v350);

        sub_59A8(v357);
        v236 = sub_5840();
        (v159)(v236);
        v237 = sub_5670();
        v155 = v347;
        v238(v237, v347);
        (v159)(v47, v22);
        sub_5810();
        sub_5744();
        v156 = v47;
      }
    }
  }

  sub_58D0();

  sub_5764();
  if (!*(&v359 + 1))
  {
    sub_50FC(&v358, &qword_C470, &qword_6208);
    sub_56B4();
    sub_58E8();
LABEL_121:
    sub_428C(v47, &qword_C498, &qword_6220);
    sub_59D4();

    goto LABEL_122;
  }

  sub_5930();
  swift_dynamicCast();
  sub_56B4();
  sub_58E8();
  if (!v292 || (v354 & 1) == 0)
  {
    goto LABEL_121;
  }

  v293 = sub_405C(v47);
  v157 = sub_44C4(v293);
  if (v175)
  {

    sub_5738();
    v17 = sub_5AF4();
    v294 = sub_5BE4();
    if (sub_5870(v294))
    {
      *sub_59EC() = 0;
      sub_59B4(&dword_0, v295, v296, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
      sub_5714();
    }

    sub_428C(v47, &qword_C498, &qword_6220);
    sub_59D4();

    goto LABEL_119;
  }

LABEL_127:
  v17 = v157;
  v304 = sub_56C8();
  v305(v304);

LABEL_128:

  return v17;
}

double sub_3FF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_4F90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_50A0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_405C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_482C(&qword_C4D0, &qword_6238);
    v2 = sub_5C84();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(a1 + 56) + 8 * v11);

    sub_482C(&qword_C498, &qword_6220);
    sub_482C(&qword_C448, &qword_61E0);
    swift_dynamicCast();
    result = sub_4F90(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      v18 = v17[1];
      *v17 = v14;
      v17[1] = v13;

      v19 = v2[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v26;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      *(v2[7] + 8 * result) = v26;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_428C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    sub_482C(&qword_C4D8, &qword_6240);
    v4 = sub_5C84();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  sub_5698();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  while (v9)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v31 = *(*(a1 + 56) + 8 * v16);

    sub_482C(a2, a3);
    swift_dynamicCast();
    sub_5328(&v32, v34);
    sub_5328(v34, v35);
    sub_5328(v35, &v33);
    result = sub_4F90(v19, v18);
    v20 = result;
    if (v21)
    {
      v22 = (v4[6] + 16 * result);
      v23 = v22[1];
      *v22 = v19;
      v22[1] = v18;

      v24 = (v4[7] + 32 * v20);
      sub_4F44(v24);
      result = sub_5328(&v33, v24);
      v13 = v14;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v4[6] + 16 * result);
      *v25 = v19;
      v25[1] = v18;
      result = sub_5328(&v33, (v4[7] + 32 * result));
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v4[2] = v28;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v4;
    }

    v9 = *(a1 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_44C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_482C(&qword_C450, &qword_61E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_6190;
    *(inited + 32) = 0x73736572706D6F63;
    *(inited + 40) = 0xEA00000000006465;
    v3 = sub_45D4();
    if (v1)
    {
      v5 = *(inited + 40);

      *(inited + 16) = 0;
      swift_setDeallocating();
      return sub_4874();
    }

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
  }

  return sub_5B44();
}

uint64_t sub_45D4()
{
  v0 = objc_opt_self();
  sub_482C(&qword_C448, &qword_61E0);
  isa = sub_5B24().super.isa;
  v12 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v12];

  v3 = v12;
  if (v2)
  {
    v12 = 0;
    v4 = v3;
    v5 = [v2 compressedDataUsingAlgorithm:3 error:&v12];
    if (v5)
    {
      v6 = v5;
      v7 = v12;
      v8 = [v6 base64EncodedStringWithOptions:0];
      sub_5B84();
    }

    else
    {
      v10 = v12;
      sub_5A44();

      swift_willThrow();
    }
  }

  else
  {
    v9 = v12;
    sub_5A44();

    swift_willThrow();
  }

  return sub_58C4();
}

id sub_477C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_47D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_482C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_4874()
{
  v1 = *(v0 + 16);
  sub_482C(&qword_C458, &qword_61F0);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_48FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_497C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_49D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4A98(v11, 0, 0, 1, a1, a2);
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
    sub_50A0(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_4F44(v11);
  return v7;
}

unint64_t sub_4A98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4B98(a5, a6);
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
    result = sub_5C44();
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

char *sub_4B98(uint64_t a1, unint64_t a2)
{
  v4 = sub_4BE4(a1, a2);
  sub_4CFC(&off_84C8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4BE4(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_5BB4())
  {
    result = sub_4DE0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_5C24();
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
          result = sub_5C44();
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

uint64_t sub_4CFC(uint64_t result)
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

    result = sub_4E50(result, v8, 1, v3);
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

void *sub_4DE0(uint64_t a1, uint64_t a2)
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

  sub_482C(&qword_C4E8, &qword_6250);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_4E50(char *result, int64_t a2, char a3, char *a4)
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
    sub_482C(&qword_C4E8, &qword_6250);
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

uint64_t sub_4F44(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_4F90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_5CB4();
  sub_5B94();
  v6 = sub_5CC4();

  return sub_5338(a1, a2, v6);
}

unint64_t sub_5008(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_5A94();
  sub_5614(&qword_C4F8, &type metadata accessor for UUID);
  v5 = sub_5B54();

  return sub_5458(a1, v5);
}

uint64_t sub_50A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_50FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_482C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_515C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_51A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  sub_4F90(a2, a3);
  sub_57F0();
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  v18 = sub_5988();
  sub_482C(v18, v19);
  if (!sub_5C54(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v20 = *v5;
  v21 = sub_4F90(a2, a3);
  if ((v17 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_5CA4();
    __break(1u);
    return result;
  }

  v16 = v21;
LABEL_5:
  v23 = *v5;
  if (v17)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v16);
    *(v24 + 8 * v16) = a1;
  }

  else
  {
    sub_52E0(v16, a2, a3, a1, v23);
  }
}

unint64_t sub_52E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_5328(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_5338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_5C94() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_53F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_482C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_5458(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_5A94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_5614(&unk_C510, &type metadata accessor for UUID);
    v10 = sub_5B64();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_5614(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_56F0()
{
  v2 = *(v0 - 320);
}

void sub_5744()
{
  v1 = *(v0 - 224);
  v2 = *(v0 - 216);
  v3 = *(v0 - 288);
  v4 = *(v0 - 208);
}

double sub_5764()
{
  v2 = *(v0 - 520);

  return sub_3FF8(0x73736572706D6F63, 0xEA00000000006465, v2, (v0 - 128));
}

BOOL sub_5870(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_588C(uint64_t a1@<X8>)
{
  *(a1 + 8 * v1) = *(v2 - 584);
  v4 = *(v2 - 576);
}

void sub_59B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_59D4()
{
}

uint64_t sub_59EC()
{

  return swift_slowAlloc();
}