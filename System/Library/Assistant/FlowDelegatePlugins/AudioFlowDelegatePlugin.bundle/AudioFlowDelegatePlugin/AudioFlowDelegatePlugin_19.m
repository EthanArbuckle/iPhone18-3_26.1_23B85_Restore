uint64_t sub_221EA0@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a3;
  v167 = a2;
  v6 = sub_2C8E80();
  v161 = *(v6 - 8);
  v162 = v6;
  v7 = *(v161 + 64);
  v8 = __chkstk_darwin(v6);
  v160 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v149 = &v147 - v10;
  v157 = sub_2CB900();
  v151 = *(v157 - 8);
  v11 = *(v151 + 64);
  __chkstk_darwin(v157);
  v156 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_2CB8B0();
  v158 = *(v155 - 8);
  v13 = *(v158 + 64);
  __chkstk_darwin(v155);
  v154 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20410(&unk_3519B0, &qword_2D1230);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v163 = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v170 = &v147 - v19;
  v20 = sub_2C8D90();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2CE000();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v169 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v166 = &v147 - v31;
  v32 = __chkstk_darwin(v30);
  v153 = &v147 - v33;
  v34 = __chkstk_darwin(v32);
  v159 = &v147 - v35;
  v36 = __chkstk_darwin(v34);
  v150 = &v147 - v37;
  __chkstk_darwin(v36);
  v39 = &v147 - v38;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v25, static Logger.default);
  swift_beginAccess();
  v41 = *(v26 + 16);
  v172 = v26 + 16;
  v173 = v40;
  v171 = v41;
  v41(v39, v40, v25);
  v42 = a1;
  v43 = sub_2CDFE0();
  v44 = sub_2CE690();

  v45 = os_log_type_enabled(v43, v44);
  v174 = a4;
  v175 = v26;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v148 = v20;
    v165 = v21;
    v48 = v47;
    v49 = swift_slowAlloc();
    v168 = v24;
    v50 = v49;
    v176 = v49;
    *v46 = 138412546;
    *(v46 + 4) = v42;
    *v48 = v42;
    *(v46 + 12) = 2082;
    v51 = v42;
    v52 = sub_2CCCA0();
    v54 = sub_3F08(v52, v53, &v176);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_0, v43, v44, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel from mediaItem: %@ %{public}s", v46, 0x16u);
    sub_30B8(v48, &unk_34FC00, &unk_2D0150);
    v21 = v165;
    v20 = v148;

    sub_306C(v50);
    v24 = v168;

    v55 = v175;
  }

  else
  {

    v55 = v26;
  }

  v56 = *(v55 + 8);
  v56(v39, v25);
  v57 = [v42 title];
  if (!v57)
  {
    v72 = v169;
    v171(v169, v173, v25);
    v73 = sub_2CDFE0();
    v74 = sub_2CE680();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v176 = v76;
      *v75 = 136446210;
      v77 = sub_2CCCA0();
      v79 = sub_3F08(v77, v78, &v176);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_0, v73, v74, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find a title for mediaItem return nil.%{public}s", v75, 0xCu);
      sub_306C(v76);
    }

    v70 = v72;
    v71 = v25;
    goto LABEL_14;
  }

  v58 = v25;
  v59 = v57;
  v60 = sub_2CE270();

  v61 = v170;
  sub_22305C(v42, v170);
  if ((*(v21 + 48))(v61, 1, v20) == 1)
  {

    sub_30B8(v61, &unk_3519B0, &qword_2D1230);
    v62 = v166;
    v171(v166, v173, v58);
    v63 = sub_2CDFE0();
    v64 = sub_2CE680();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v176 = v66;
      *v65 = 136446210;
      v67 = sub_2CCCA0();
      v69 = sub_3F08(v67, v68, &v176);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_0, v63, v64, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find an image for mediaItem return nil.%{public}s", v65, 0xCu);
      sub_306C(v66);
    }

    v70 = v62;
    v71 = v58;
LABEL_14:
    v56(v70, v71);
LABEL_15:
    v80 = 1;
    v81 = v174;
    goto LABEL_16;
  }

  (*(v21 + 32))(v24, v61, v20);
  v84 = v167;
  if (sub_224420())
  {
    v85 = sub_2246F8(v84, v42);
  }

  else
  {
    v85 = sub_225218(v164, v42);
    if (!v85)
    {

      v116 = v153;
      v171(v153, v173, v58);
      v117 = sub_2CDFE0();
      v118 = sub_2CE680();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v176 = v120;
        *v119 = 136446210;
        v121 = sub_2CCCA0();
        v173 = v58;
        v168 = v24;
        v123 = v21;
        v124 = sub_3F08(v121, v122, &v176);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_0, v117, v118, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel could not find a command for mediaItem return nil.%{public}s", v119, 0xCu);
        sub_306C(v120);

        v56(v116, v173);
        (*(v123 + 8))(v168, v20);
      }

      else
      {

        v56(v116, v58);
        (*(v21 + 8))(v24, v20);
      }

      goto LABEL_15;
    }
  }

  v169 = v60;
  v170 = v85;
  if (sub_224420())
  {
    v168 = v24;
    v165 = v21;
    v86 = [v42 identifier];
    if (v86 && (v87 = v86, sub_2CE270(), v87, v88 = sub_2CB910(), v89 = *(v88 + 48), v90 = *(v88 + 52), swift_allocObject(), sub_2CB920()))
    {
      v91 = *(v152 + 24);
      v92 = v154;
      sub_2CB8C0();
      v93 = v156;
      sub_2CB8A0();
      v94 = *(v158 + 8);
      v158 += 8;
      v167 = v94;
      v94(v92, v155);
      v95 = sub_195984(v93, v91);
      (*(v151 + 8))(v93, v157);
      if (v95)
      {
        v96 = v149;
        sub_2C8E70();
        v175 = sub_2C8E50();
        (*(v161 + 8))(v96, v162);
        v97 = [v42 artist];
        if (v97)
        {
          v98 = v97;
          sub_2CE270();
        }

        v144 = v165;
        v145 = v163;
        v146 = v168;
        (*(v165 + 16))(v163, v168, v20);
        (*(v144 + 56))(v145, 0, 1, v20);
        v81 = v174;
        sub_2CD1F0();

        (*(v144 + 8))(v146, v20);
        v80 = 0;
        goto LABEL_16;
      }

      v128 = v150;
      v171(v150, v173, v25);

      v129 = sub_2CDFE0();
      v130 = sub_2CE680();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v173 = v25;
        v176 = v132;
        *v131 = 136315394;
        v133 = v154;
        sub_2CB8C0();
        sub_2CB8A0();
        v167(v133, v155);
        v134 = sub_2CE2A0();
        v136 = sub_3F08(v134, v135, &v176);

        *(v131 + 4) = v136;
        *(v131 + 12) = 2082;
        v137 = sub_2CCCA0();
        v139 = sub_3F08(v137, v138, &v176);

        *(v131 + 14) = v139;
        _os_log_impl(&dword_0, v129, v130, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel the mediaItem identifier scheme %s is not allowed. Return nil.%{public}s", v131, 0x16u);
        swift_arrayDestroy();

        v127 = v150;
        v140 = v173;
      }

      else
      {

        v127 = v128;
        v140 = v25;
      }
    }

    else
    {

      v103 = v159;
      v171(v159, v173, v25);
      v104 = v42;
      v105 = sub_2CDFE0();
      v106 = sub_2CE680();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v176 = v109;
        *v107 = 138412546;
        v110 = [v104 identifier];
        if (v110)
        {
          v111 = v110;
          v173 = sub_2CE270();
          v113 = v112;

          sub_10C40();
          swift_allocError();
          *v114 = v173;
          v114[1] = v113;
          v25 = v58;
          v110 = _swift_stdlib_bridgeErrorToNSError();
          v115 = v110;
        }

        else
        {
          v115 = 0;
        }

        *(v107 + 4) = v110;
        *v108 = v115;
        *(v107 + 12) = 2082;
        v141 = sub_2CCCA0();
        v143 = sub_3F08(v141, v142, &v176);

        *(v107 + 14) = v143;
        _os_log_impl(&dword_0, v105, v106, "PlayMediaAlternativesSnippetProvider#alternativeItemSnippetModel failed to create PlaybackItem with identifier: %@. Return nil.%{public}s", v107, 0x16u);
        sub_30B8(v108, &unk_34FC00, &unk_2D0150);

        sub_306C(v109);

        v127 = v159;
      }

      else
      {

        v127 = v103;
      }

      v140 = v25;
    }

    v56(v127, v140);
    (*(v165 + 8))(v168, v20);
    goto LABEL_15;
  }

  v99 = v160;
  sub_2C8E70();
  sub_2C8E50();
  (*(v161 + 8))(v99, v162);
  v100 = [v42 artist];
  if (v100)
  {
    v101 = v24;
    v102 = v100;
    sub_2CE270();

    v24 = v101;
  }

  v125 = v163;
  (*(v21 + 16))(v163, v24, v20);
  (*(v21 + 56))(v125, 0, 1, v20);
  v126 = v24;
  v81 = v174;
  sub_2CD1F0();
  (*(v21 + 8))(v126, v20);
  v80 = 0;
LABEL_16:
  v82 = sub_2CD200();
  return (*(*(v82 - 8) + 56))(v81, v80, 1, v82);
}

uint64_t sub_22305C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = [a1 artwork];
  if (!v12)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v19 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v9, v19, v4);
    v20 = sub_2CDFE0();
    v21 = sub_2CE680();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v22 = 136446210;
      v24 = sub_2CCCA0();
      v26 = sub_3F08(v24, v25, &v38);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "PlayMediaAlternativesSnippetProvider#imageUrl could not find a mediaItem artwork. %{public}s", v22, 0xCu);
      sub_306C(v23);
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 _uri];
  if (!v14)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v27 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_2CDFE0();
    v29 = sub_2CE680();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v30 = 136446210;
      v31 = sub_2CCCA0();
      v33 = a2;
      v34 = sub_3F08(v31, v32, &v38);

      *(v30 + 4) = v34;
      a2 = v33;
      _os_log_impl(&dword_0, v28, v29, "PlayMediaAlternativesSnippetProvider#imageUrl could not find a image URI. %{public}s", v30, 0xCu);
      sub_306C(v37);
    }

    (*(v5 + 8))(v11, v4);
LABEL_16:
    v35 = sub_2C8D90();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  v15 = v14;
  sub_2C8D60();

  v16 = sub_2C8D90();
  v17 = *(*(v16 - 8) + 56);

  return v17(a2, 0, 1, v16);
}

uint64_t sub_2234D4()
{
  v1 = sub_2C8EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[8];
  sub_35E0(v0 + 4, v0[7]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v9 = sub_2CC620();

  (*(v2 + 8))(v5, v1);
  return v9;
}

BOOL sub_22365C(char *a1, uint64_t a2)
{
  v120 = a2;
  v3 = sub_2C8EC0();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = *(v114 + 64);
  __chkstk_darwin(v3);
  v113 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v110 = &v109 - v13;
  v14 = __chkstk_darwin(v12);
  v111 = &v109 - v15;
  v16 = __chkstk_darwin(v14);
  v116 = &v109 - v17;
  v18 = __chkstk_darwin(v16);
  v118 = &v109 - v19;
  __chkstk_darwin(v18);
  v21 = &v109 - v20;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  v23 = (v7 + 2);
  v121 = v7[2];
  v121(v21, v22, v6);

  v24 = sub_2CDFE0();
  v25 = sub_2CE690();

  v26 = os_log_type_enabled(v24, v25);
  v117 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v109 = v7;
    v119 = v6;
    v122 = v28;
    *v27 = 136315394;
    v29 = sub_2CE420();
    v31 = v22;
    v32 = sub_3F08(v29, v30, &v122);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2082;
    v33 = sub_2CCCA0();
    v35 = sub_3F08(v33, v34, &v122);

    *(v27 + 14) = v35;
    v22 = v31;
    v23 = (v7 + 2);
    _os_log_impl(&dword_0, v24, v25, "PlayMediaAlternativesSnippetProvider#subtitle making artists label with %s. %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    v6 = v119;
    v7 = v109;
  }

  v36 = v7[1];
  v36(v21, v6);
  if (*(a1 + 2))
  {
    result = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v120, &off_330B08);
    if (result)
    {
      v38 = v116;
      v121(v116, v22, v6);
      v39 = sub_2CDFE0();
      v40 = sub_2CE670();
      if (!os_log_type_enabled(v39, v40))
      {
LABEL_10:

        v36(v38, v6);
        return 0;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122 = v42;
      *v41 = 136446210;
      v43 = sub_2CCCA0();
      v45 = sub_3F08(v43, v44, &v122);

      *(v41 + 4) = v45;
      v46 = "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because we have a classical music request. %{public}s";
LABEL_9:
      _os_log_impl(&dword_0, v39, v40, v46, v41, 0xCu);
      sub_306C(v42);

      goto LABEL_10;
    }

    v59 = *(a1 + 2);
    if (!v59)
    {
      __break(1u);
      return result;
    }

    v120 = v23;
    v61 = *(a1 + 4);
    v60 = *(a1 + 5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v124 = a1;
    if (!isUniquelyReferenced_nonNull_native || (v59 - 1) > *(a1 + 3) >> 1)
    {
      a1 = sub_B90C4(isUniquelyReferenced_nonNull_native, v59, 1, a1);
      v124 = a1;
    }

    sub_224360(0, 1, 0);
    v63 = sub_2BDFB4(a1);

    if (*(v63 + 16) != 1)
    {
      goto LABEL_29;
    }

    if (sub_17F970(v61, v60, v63))
    {

      v38 = v111;
      v121(v111, v22, v6);
      v39 = sub_2CDFE0();
      v40 = sub_2CE670();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_10;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122 = v42;
      *v41 = 136446210;
      v64 = sub_2CCCA0();
      v66 = sub_3F08(v64, v65, &v122);

      *(v41 + 4) = v66;
      v46 = "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because the only alternative artist is the same as the current artist playing. %{public}s";
      goto LABEL_9;
    }

    if (*(v63 + 16) == 1)
    {
      v118 = v22;
      v67 = sub_17F970(v61, v60, v63);

      if ((v67 & 1) == 0)
      {
        v68 = sub_7F104(v63);
        if (v69)
        {
          v70 = v68;
          v71 = v69;

          v72 = v110;
          v121(v110, v118, v6);

          v73 = sub_2CDFE0();
          v74 = sub_2CE670();

          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            v76 = swift_slowAlloc();
            v119 = v6;
            v122 = v76;
            *v75 = 136315394;
            *(v75 + 4) = sub_3F08(v70, v71, &v122);
            *(v75 + 12) = 2082;
            v77 = sub_2CCCA0();
            v79 = sub_3F08(v77, v78, &v122);

            *(v75 + 14) = v79;
            _os_log_impl(&dword_0, v73, v74, "PlayMediaAlternativesSnippetProvider#subtitle returning %s since we only have one artist. %{public}s", v75, 0x16u);
            swift_arrayDestroy();

            v36(v110, v119);
          }

          else
          {

            v36(v72, v6);
          }

          return v70;
        }
      }
    }

    else
    {
LABEL_29:
      v118 = v22;
    }

    v116 = v36;
    v119 = v6;
    v80 = sub_7F104(v63);
    if (v81)
    {
      v82 = v80;
    }

    else
    {
      v82 = 0;
    }

    if (v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = 0xE000000000000000;
    }

    v84 = *(v63 + 16);

    v111 = (v84 - 1);
    v85 = v112[8];
    sub_35E0(v112 + 4, v112[7]);
    type metadata accessor for PlayMediaAlternativeSnippetProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v87 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v88 = v113;
    sub_2CB570();
    sub_2CC620();

    (*(v114 + 8))(v88, v115);
    sub_20410(&qword_34CEA8, &unk_2D0EB0);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_2D0E40;
    if (sub_2CE320() >= 19)
    {
      sub_C394C(17);

      v90 = sub_2CE2E0();
      v92 = v91;

      v122 = v90;
      v123 = v92;

      v125._countAndFlagsBits = 3026478;
      v125._object = 0xE300000000000000;
      sub_2CE350(v125);

      v82 = v122;
      v83 = v123;
    }

    v94 = v116;
    v93 = v117;
    *(v89 + 56) = &type metadata for String;
    v95 = sub_1087C();
    *(v89 + 32) = v82;
    *(v89 + 40) = v83;
    *(v89 + 96) = &type metadata for Int;
    *(v89 + 104) = &protocol witness table for Int;
    v96 = v111;
    *(v89 + 64) = v95;
    *(v89 + 72) = v96;
    v97 = sub_2CE280();
    v99 = v98;

    v100 = v119;
    v121(v93, v118, v119);

    v101 = sub_2CDFE0();
    v102 = sub_2CE670();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v103 = 136315394;
      *(v103 + 4) = sub_3F08(v97, v99, &v122);
      *(v103 + 12) = 2082;
      v104 = sub_2CCCA0();
      v106 = sub_3F08(v104, v105, &v122);

      *(v103 + 14) = v106;
      _os_log_impl(&dword_0, v101, v102, "PlayMediaAlternativesSnippetProvider#subtitle returning %s. %{public}s", v103, 0x16u);
      swift_arrayDestroy();

      v107 = v117;
      v108 = v119;
    }

    else
    {

      v107 = v93;
      v108 = v100;
    }

    v94(v107, v108);
    return v97;
  }

  else
  {
    v47 = v118;
    v121(v118, v22, v6);
    v48 = sub_2CDFE0();
    v49 = sub_2CE670();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v47;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v122 = v52;
      *v51 = 136446210;
      v53 = sub_2CCCA0();
      v55 = v6;
      v56 = sub_3F08(v53, v54, &v122);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_0, v48, v49, "PlayMediaAlternativesSnippetProvider#subtitle returning empty string because alternativeArtistSet is empty. %{public}s", v51, 0xCu);
      sub_306C(v52);

      v57 = v50;
      v58 = v55;
    }

    else
    {

      v57 = v47;
      v58 = v6;
    }

    v36(v57, v58);
    return 0;
  }
}

uint64_t sub_2242FC()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));

  return swift_deallocClassInstance();
}

unint64_t sub_224360(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_224420()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CCF90();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    if (v5 == sub_2CBE10() && v8 == v9)
    {
      goto LABEL_13;
    }

    v19 = sub_2CEEA0();

    if (v19)
    {
LABEL_14:

      return 1;
    }

    if (v7 == sub_2CBE30() && v8 == v20)
    {
LABEL_13:

      goto LABEL_14;
    }

    v21 = sub_2CEEA0();

    return v21 & 1;
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v10 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v10, v0);
    v11 = sub_2CDFE0();
    v12 = sub_2CE680();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136446210;
      v15 = sub_2CCCA0();
      v17 = sub_3F08(v15, v16, &v22);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "PlayMediaAlternativesSnippetProvider#isInternalApp null app identifier. %{public}s", v13, 0xCu);
      sub_306C(v14);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }
}

id sub_2246F8(uint64_t a1, void *a2)
{
  v75 = a2;
  v73 = a1;
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v71 - v4;
  v6 = sub_2C8E80();
  v77 = *(v6 - 8);
  v78 = v6;
  v7 = *(v77 + 64);
  __chkstk_darwin(v6);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v71 - v16;
  __chkstk_darwin(v15);
  v19 = &v71 - v18;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v20 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v79 = v10[2];
  v80 = (v10 + 2);
  v79(v19, v20, v9);
  v21 = sub_2CDFE0();
  v22 = sub_2CE690();
  v23 = os_log_type_enabled(v21, v22);
  v72 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v71 = v17;
    v74 = v10;
    v26 = v9;
    v27 = v25;
    v81 = v25;
    *v24 = 136446210;
    v28 = sub_2CCCA0();
    v30 = v20;
    v31 = v14;
    v32 = sub_3F08(v28, v29, &v81);

    *(v24 + 4) = v32;
    v14 = v31;
    v20 = v30;
    _os_log_impl(&dword_0, v21, v22, "PlayMediaAlternativesSnippetProvider#punchoutCommand... %{public}s", v24, 0xCu);
    sub_306C(v27);
    v9 = v26;
    v10 = v74;
    v17 = v71;
  }

  v33 = v10[1];
  v33(v19, v9);
  v34 = [v75 privateMediaItemValueData];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 punchoutURI];

    if (v36)
    {
      v74 = v10;
      sub_2CE270();

      v37 = [objc_allocWithZone(SAUIAppPunchOut) init];
      v38 = v76;
      sub_2C8E70();
      sub_2C8E50();
      (*(v77 + 8))(v38, v78);
      v39 = sub_2CE260();

      [v37 setAceId:v39];

      v40 = v72;
      sub_2C8D80();

      v41 = sub_2C8D90();
      v42 = *(v41 - 8);
      v44 = 0;
      if ((*(v42 + 48))(v40, 1, v41) != 1)
      {
        sub_2C8D50(v43);
        v44 = v45;
        (*(v42 + 8))(v40, v41);
      }

      [v37 setPunchOutUri:v44];

      v79(v17, v20, v9);
      v46 = sub_2CDFE0();
      v47 = sub_2CE690();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v81 = v49;
        *v48 = 136446210;
        v50 = sub_2CCCA0();
        v52 = v9;
        v53 = sub_3F08(v50, v51, &v81);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_0, v46, v47, "PlayMediaAlternativesSnippetProvider#punchoutCommand returning app punch out command. %{public}s", v48, 0xCu);
        sub_306C(v49);

        v54 = v17;
        v55 = v52;
LABEL_19:
        v33(v54, v55);
        return v37;
      }

      v54 = v17;
LABEL_18:
      v55 = v9;
      goto LABEL_19;
    }
  }

  v37 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v56 = v76;
  sub_2C8E70();
  sub_2C8E50();
  (*(v77 + 8))(v56, v78);
  v57 = sub_2CE260();

  [v37 setAceId:v57];

  sub_2CCF90();
  if (v58)
  {
    v59 = sub_2CE260();
  }

  else
  {
    v59 = 0;
  }

  [v37 setLaunchId:v59];

  v79(v14, v20, v9);
  v60 = sub_2CDFE0();
  v61 = sub_2CE690();
  if (!os_log_type_enabled(v60, v61))
  {

    v54 = v14;
    goto LABEL_18;
  }

  v62 = swift_slowAlloc();
  v63 = swift_slowAlloc();
  v80 = v33;
  v81 = v63;
  v64 = v14;
  v65 = v63;
  *v62 = 136446210;
  v66 = sub_2CCCA0();
  v68 = v9;
  v69 = sub_3F08(v66, v67, &v81);

  *(v62 + 4) = v69;
  _os_log_impl(&dword_0, v60, v61, "PlayMediaAlternativesSnippetProvider#punchoutCommand returning launch app command. %{public}s", v62, 0xCu);
  sub_306C(v65);

  v80(v64, v68);
  return v37;
}

uint64_t *sub_224EEC(void *a1, void *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 copy];
  sub_2CEC00();
  swift_unknownObjectRelease();
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (swift_dynamicCast())
  {
    v9 = v24;
    sub_20410(&unk_351900, &unk_2D0960);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2D0770;
    *(v10 + 32) = a2;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v11 = a2;
    isa = sub_2CE400().super.isa;

    v13 = sub_2CE260();
    [v9 setValue:isa forKey:v13];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_2CDFE0();
    v16 = sub_2CE680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      v19 = sub_2CCCA0();
      v21 = sub_3F08(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "PlayMediaAlternativesSnippetProvider#playMediaIntent failed to clone PlayMediaIntent.%{public}s", v17, 0xCu);
      sub_306C(v18);
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  return v9;
}

id sub_225218(void *a1, void *a2)
{
  v4 = sub_2C8E80();
  v68 = *(v4 - 8);
  v69 = v4;
  v5 = *(v68 + 64);
  __chkstk_darwin(v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v63 - v14;
  __chkstk_darwin(v13);
  v17 = &v63 - v16;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v19 = v8[2];
  v71 = v8 + 2;
  v72 = v18;
  v70 = v19;
  v19(v17, v18, v7);
  v20 = sub_2CDFE0();
  v21 = sub_2CE690();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v64 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v65 = v12;
    v66 = v15;
    v25 = v7;
    v26 = v8;
    v27 = v24;
    v73 = v24;
    *v23 = 136446210;
    v28 = sub_2CCCA0();
    v30 = a1;
    v31 = sub_3F08(v28, v29, &v73);

    *(v23 + 4) = v31;
    a1 = v30;
    _os_log_impl(&dword_0, v20, v21, "PlayMediaAlternativesSnippetProvider#intentCommand... %{public}s", v23, 0xCu);
    sub_306C(v27);
    v8 = v26;
    v7 = v25;
    v12 = v65;
    v15 = v66;

    a2 = v64;
  }

  v32 = v8[1];
  v32(v17, v7);
  v33 = sub_224EEC(a1, a2);
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(SAIntentGroupHandleIntent) init];
    v36 = v67;
    sub_2C8E70();
    sub_2C8E50();
    (*(v68 + 8))(v36, v69);
    v37 = sub_2CE260();

    [v35 setAceId:v37];

    v38 = [objc_allocWithZone(SAIntentGroupProtobufMessage) init];
    v39 = v34;
    v40 = [v39 typeName];
    if (!v40)
    {
      sub_2CE270();
      v40 = sub_2CE260();
    }

    [v38 setTypeName:v40];

    v41 = [v39 backingStore];
    isa = [v41 data];

    if (isa)
    {
      v43 = sub_2C8DC0();
      v45 = v44;

      isa = sub_2C8DB0().super.isa;
      sub_52628(v43, v45);
    }

    [v38 setData:isa];

    [v35 setIntent:v38];
    v70(v15, v72, v7);
    v46 = sub_2CDFE0();
    v47 = sub_2CE690();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v66 = v15;
      v50 = v49;
      v73 = v49;
      *v48 = 136446210;
      v51 = sub_2CCCA0();
      v72 = v32;
      v53 = sub_3F08(v51, v52, &v73);
      v71 = v7;
      v54 = v53;

      *(v48 + 4) = v54;
      _os_log_impl(&dword_0, v46, v47, "PlayMediaAlternativesSnippetProvider#intentCommand returning handle intent command. %{public}s", v48, 0xCu);
      sub_306C(v50);

      v72(v66, v71);
    }

    else
    {

      v32(v15, v7);
    }
  }

  else
  {
    v70(v12, v72, v7);
    v55 = sub_2CDFE0();
    v56 = sub_2CE680();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73 = v58;
      *v57 = 136446210;
      v59 = sub_2CCCA0();
      v61 = sub_3F08(v59, v60, &v73);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_0, v55, v56, "PlayMediaAlternativesSnippetProvider#intentCommand could not build play intent returning nil. %{public}s", v57, 0xCu);
      sub_306C(v58);
    }

    v32(v12, v7);
    return 0;
  }

  return v35;
}

unint64_t sub_2258FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_2CD200();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t DialogService.init(appNameResolver:morphunProvider:aceServiceInvoker:multiUserConnectionProvider:contactsManager:deviceProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  sub_EEAC(a1, v6 + 16);
  sub_EEAC(a2, v6 + 216);
  sub_EEAC(a3, v6 + 56);
  sub_EEAC(a4, v6 + 96);
  sub_EEAC(a6, v6 + 176);
  sub_F3F4(a5, &v18, qword_34C708, &qword_2D1620);
  if (v19)
  {
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    sub_F338(&v18, &v20);
  }

  else
  {
    sub_EEAC(a3, &v20);
    v13 = sub_2C9E60();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_2C9E50();
    v21 = v13;
    v22 = &protocol witness table for ContactsManager;
    *&v20 = v16;
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    if (v19)
    {
      sub_30B8(&v18, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v20, v6 + 136);
  return v6;
}

uint64_t *DialogService.deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);
  return v0;
}

uint64_t DialogService.fallbackUsername(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v34 = &v33 - v10;
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  v36 = v5[2];
  v36(v12, v13, v4);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "going to compute fallback username", v16, 2u);
  }

  v17 = v5[1];
  v17(v12, v4);
  sub_F3F4(a1, v37, &qword_34C6C0, &qword_2D0710);
  v18 = v38;
  if (!v38)
  {
    sub_30B8(v37, &qword_34C6C0, &qword_2D0710);
    return 0;
  }

  v19 = v39;
  sub_35E0(v37, v38);
  v20 = (*(v19 + 32))(v18, v19);
  v22 = v21;
  sub_306C(v37);
  if (!v22)
  {
    return 0;
  }

  sub_EEAC(v2 + 216, v37);
  sub_35E0(v37, v38);
  v23 = sub_2CBC80();
  sub_306C(v37);
  if (v23)
  {
    v24 = v34;
    v36(v34, v13, v4);
    v25 = sub_2CDFE0();
    v26 = sub_2CE690();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v25, v26, "has needed data to use morphun in fallback username", v27, 2u);
    }

    v17(v24, v4);
    return v20;
  }

  else
  {

    v29 = v35;
    v36(v35, v13, v4);
    v30 = sub_2CDFE0();
    v31 = sub_2CE690();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_0, v30, v31, "doesn't have needed data to use morphun in fallback username", v32, 2u);
    }

    v17(v29, v4);
    return 0;
  }
}

id sub_226074()
{
  type metadata accessor for DialogService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_35F848 = result;
  return result;
}

uint64_t sub_2260C8()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_3557D0 = v10;
  return result;
}

uint64_t DialogService.__allocating_init(appNameResolver:morphunProvider:aceServiceInvoker:multiUserConnectionProvider:contactsManager:deviceProvider:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  sub_EEAC(a1, v12 + 16);
  sub_EEAC(a2, v12 + 216);
  sub_EEAC(a3, v12 + 56);
  sub_EEAC(a4, v12 + 96);
  sub_EEAC(a6, v12 + 176);
  sub_F3F4(a5, &v18, qword_34C708, &qword_2D1620);
  if (v19)
  {
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    sub_F338(&v18, &v20);
  }

  else
  {
    sub_EEAC(a3, &v20);
    v13 = sub_2C9E60();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_2C9E50();
    v21 = v13;
    v22 = &protocol witness table for ContactsManager;
    *&v20 = v16;
    sub_306C(a6);
    sub_30B8(a5, qword_34C708, &qword_2D1620);
    sub_306C(a4);
    sub_306C(a3);
    sub_306C(a2);
    sub_306C(a1);
    if (v19)
    {
      sub_30B8(&v18, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v20, v12 + 136);
  return v12;
}

uint64_t sub_226430(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_F3F4(a2, v19, &qword_34C6C0, &qword_2D0710);
  v10 = v20;
  if (v20)
  {
    v11 = v21;
    sub_35E0(v19, v20);
    v12 = *(v11 + 80);

    v13 = v12(v10, v11);
    sub_306C(v19);
    if (v13)
    {
      v14 = swift_allocObject();
      v14[2] = sub_CE4A8;
      v14[3] = v9;
      v14[4] = a4;
      v15 = a3[21];
      sub_35E0(a3 + 17, a3[20]);
      v16 = swift_allocObject();
      v16[2] = sub_229D54;
      v16[3] = v14;
      v16[4] = a3;

      sub_2CA090();
    }
  }

  else
  {

    v18 = sub_30B8(v19, &qword_34C6C0, &qword_2D0710);
  }

  return v8(v18);
}

uint64_t sub_226610(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 16);
  *(a4 + 16) = a1;

  return a2(v8);
}

uint64_t sub_226688(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  v47 = a7;
  v48 = a8;
  v46 = a6;
  v44 = a5;
  v49 = sub_2CE000();
  v45 = *(v49 - 8);
  v12 = *(v45 + 8);
  __chkstk_darwin(v49);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = sub_20410(&qword_34CCD8, &unk_2D10D0);
  *(inited + 48) = v16;
  *(inited + 72) = v17;
  strcpy((inited + 80), "isDialogDriven");
  *(inited + 95) = -18;

  *(inited + 96) = sub_2CB590() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 6383735;
  *(inited + 136) = 0xE300000000000000;
  swift_beginAccess();
  *(inited + 144) = *(a2 + 16);
  v50 = v17;
  *(inited + 168) = v17;
  *(inited + 176) = 0x6976654445537369;
  *(inited + 184) = 0xEA00000000006563;
  v18 = a3[11];
  sub_35E0(a3 + 7, a3[10]);

  sub_2CA140();
  sub_35E0(v52, v53);
  sub_2CA3D0();
  v20 = v19;
  if (v19)
  {
  }

  sub_306C(v52);
  *(inited + 192) = v20 != 0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x6F696E61706D6F63;
  *(inited + 232) = 0xE90000000000006ELL;
  swift_beginAccess();
  *(inited + 240) = *(a4 + 16);
  *(inited + 264) = v50;
  *(inited + 272) = 0xD000000000000018;
  *(inited + 280) = 0x80000000002DFE50;
  sub_F3F4(v44, v52, &qword_34C6C0, &qword_2D0710);
  v21 = v53;
  if (v53)
  {
    v22 = v54;
    sub_35E0(v52, v53);
    v23 = *(v22 + 80);

    v24 = v23(v21, v22);
    sub_306C(v52);
  }

  else
  {

    sub_30B8(v52, &qword_34C6C0, &qword_2D0710);
    v24 = 0;
  }

  v25 = v45;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v24 & 1;
  v26 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = v49;
  v28 = sub_3ED0(v49, static Logger.default);
  swift_beginAccess();
  (*(v25 + 2))(v14, v28, v27);
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v31 = 136446466;
    v32 = sub_2CCCB0();
    v45 = v14;
    v34 = sub_3F08(v32, v33, v51);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;

    v35 = sub_2CE210();
    v37 = v36;

    v38 = sub_3F08(v35, v37, v51);

    *(v31 + 14) = v38;
    _os_log_impl(&dword_0, v29, v30, "CatService#execute %{public}s default params: %s", v31, 0x16u);
    swift_arrayDestroy();

    (*(v25 + 1))(v45, v49);
  }

  else
  {

    (*(v25 + 1))(v14, v27);
  }

  sub_20410(&qword_34CCD0, &unk_2D0E00);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_2D0E40;
  v40 = v46;
  swift_beginAccess();
  *(v39 + 32) = *(v40 + 16);
  *(v39 + 40) = v47;

  v41 = sub_E0370(v39, v26);

  swift_setDeallocating();
  swift_arrayDestroy();
  v48(v41);
}

uint64_t sub_226CD8(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(unint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v60 = a5;
  v61 = a4;
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  if (a2)
  {
    v16 = a2;
    goto LABEL_10;
  }

  if (sub_2CB650())
  {
    sub_F3F4(a3, v66, &qword_34C6C0, &qword_2D0710);
    v17 = v67;
    if (v67)
    {
      v18 = v12;
      v19 = v68;
      sub_35E0(v66, v67);
      v20 = *(v19 + 56);
      v21 = v19;
      v12 = v18;
      a1 = v20(v17, v21);
      v16 = v22;
      sub_306C(v66);
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
    }
  }

  a1 = 0;
  v16 = 0xE000000000000000;
LABEL_10:
  v23 = qword_34BF58;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v24, v11);
  sub_F3F4(a3, v66, &qword_34C6C0, &qword_2D0710);

  v25 = sub_2CDFE0();
  v26 = sub_2CE690();
  v27 = v16;
  v28 = v26;
  v58 = v27;

  if (os_log_type_enabled(v25, v28))
  {
    v54 = a1;
    v55 = v12;
    v56 = v11;
    v29 = 7104878;
    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65[0] = v53;
    *v30 = 67109890;
    *(v30 + 4) = sub_2CB650() & 1;
    *(v30 + 8) = 2080;
    if (a2)
    {
      v29 = v57;
      v31 = a2;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_3F08(v29, v31, v65);

    *(v30 + 10) = v32;
    *(v30 + 18) = 2080;
    sub_F3F4(v66, v62, &qword_34C6C0, &qword_2D0710);
    v33 = v63;
    if (v63)
    {
      v34 = v64;
      sub_35E0(v62, v63);
      v35 = (*(v34 + 56))(v33, v34);
      v37 = v36;
      sub_306C(v62);
      a1 = v54;
      if (v37)
      {
        sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
        v38 = v35;
LABEL_22:
        v40 = sub_3F08(v38, v37, v65);

        *(v30 + 20) = v40;
        *(v30 + 28) = 2080;
        v39 = v58;
        *(v30 + 30) = sub_3F08(a1, v58, v65);
        _os_log_impl(&dword_0, v25, v28, "isHomePod = %{BOOL}d, appName = %s, proxiedAppName = %s, localizedName = %s", v30, 0x26u);
        swift_arrayDestroy();

        (*(v55 + 8))(v15, v56);
        goto LABEL_23;
      }
    }

    else
    {
      sub_30B8(v62, &qword_34C6C0, &qword_2D0710);
      a1 = v54;
    }

    sub_30B8(v66, &qword_34C6C0, &qword_2D0710);

    v37 = 0xE300000000000000;
    v38 = 7104878;
    goto LABEL_22;
  }

  sub_30B8(v66, &qword_34C6C0, &qword_2D0710);
  (*(v12 + 8))(v15, v11);
  v39 = v58;
LABEL_23:
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  strcpy((inited + 32), "localizedName");
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 46) = -4864;
  *(inited + 48) = a1;
  *(inited + 56) = v39;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isFirstParty");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v42 = v59;
  *(inited + 96) = sub_2CBDB0() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x636973754D7369;
  *(inited + 136) = 0xE700000000000000;
  if (sub_2CBE10() == a6 && v43 == v42)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_2CEEA0();
  }

  *(inited + 144) = v44 & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x736163646F507369;
  *(inited + 184) = 0xEA00000000007374;
  if (sub_2CBE30() == a6 && v45 == v42)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_2CEEA0();
  }

  *(inited + 192) = v46 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x736B6F6F427369;
  *(inited + 232) = 0xE700000000000000;
  if (sub_2CBE00() == a6 && v47 == v42)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_2CEEA0();
  }

  *(inited + 240) = v48 & 1;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isSoundscapes");
  *(inited + 286) = -4864;
  if (sub_2CBD90() == a6 && v49 == v42)
  {
    v50 = 1;
  }

  else
  {
    v50 = sub_2CEEA0();
  }

  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v50 & 1;
  v51 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v61(v51);
}

uint64_t sub_227450(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v41 = a4;
  v7 = sub_20410(&qword_355908, &qword_2D7B60);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v42 = v40 - v9;
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v15 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = a1;
  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v40[1] = a3;
    v21 = a2;
    v22 = v20;
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = a1;
    v23 = v16;
    _os_log_impl(&dword_0, v17, v18, "DialogService#buildCompanionParams MeCard: %@", v19, 0xCu);
    sub_30B8(v22, &unk_34FC00, &unk_2D0150);
    a2 = v21;
  }

  (*(v11 + 8))(v14, v10);
  if (a1)
  {
    v24 = [v16 firstName];
    v25 = v42;
    if (v24)
    {
      v26 = v24;
      v27 = sub_2CE270();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v25 = v42;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 40) = 0x80000000002DFE70;
  v31 = sub_20410(&qword_34CCC0, &unk_2D0DE0);
  *(inited + 48) = v27;
  *(inited + 56) = v29;
  *(inited + 72) = v31;
  *(inited + 80) = 0x7954656369766564;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 120) = v31;
  v32 = v41[26];
  sub_35E0(v41 + 22, v41[25]);
  sub_2CBBE0();
  v33 = sub_2CB560();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v25, 1, v33) == 1)
  {
    sub_30B8(v25, &qword_355908, &qword_2D7B60);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = sub_2CB550();
    v36 = v37;
    (*(v34 + 8))(v25, v33);
  }

  *(inited + 96) = v35;
  *(inited + 104) = v36;
  v38 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  a2(v38);
}

uint64_t DialogService.__deallocating_deinit()
{
  sub_306C(v0 + 2);
  sub_306C(v0 + 7);
  sub_306C(v0 + 12);
  sub_306C(v0 + 17);
  sub_306C(v0 + 22);
  sub_306C(v0 + 27);

  return swift_deallocClassInstance();
}

unint64_t sub_227960()
{
  result = qword_3558F8;
  if (!qword_3558F8)
  {
    sub_2CCF00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3558F8);
  }

  return result;
}

uint64_t sub_2279B8(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v53 = a2;
  v54 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = sub_4F538(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2361B4();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_20410(&qword_34C6E0, &unk_2D0730);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_32;
  }

  sub_236798(v17, a3 & 1);
  v19 = *a4;
  v20 = sub_4F538(v8, v9);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_31:
    sub_2CEEE0();
    __break(1u);
LABEL_32:
    sub_2CECB0(30);
    v56._object = 0x80000000002DFEF0;
    v56._countAndFlagsBits = 0xD00000000000001BLL;
    sub_2CE350(v56);
    sub_2CED50();
    v57._countAndFlagsBits = 39;
    v57._object = 0xE100000000000000;
    sub_2CE350(v57);
    result = sub_2CED80();
    __break(1u);
    return result;
  }

  v14 = v20;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v24 = (v23[6] + 16 * v14);
  *v24 = v8;
  v24[1] = v9;
  v25 = (v23[7] + 16 * v14);
  *v25 = v10;
  v25[1] = v11;
  v26 = v23[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23[2] = v28;
  v29 = v53;
  v30 = v54[2];
  if (v30 != 1)
  {
    v31 = v54 + 7;
    v32 = v53 + 7;
    v33 = 1;
    while (v33 < v30)
    {
      v34 = v29[2];
      if (v33 == v34)
      {
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        goto LABEL_30;
      }

      v36 = *(v31 - 1);
      v35 = *v31;
      v37 = *(v32 - 1);
      v38 = *v32;
      v39 = *a4;

      v40 = sub_4F538(v36, v35);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v27 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v27)
      {
        goto LABEL_27;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_236798(v44, 1);
        v46 = *a4;
        v40 = sub_4F538(v36, v35);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v45)
      {
        goto LABEL_10;
      }

      v48 = *a4;
      *(*a4 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v49 = (v48[6] + 16 * v40);
      *v49 = v36;
      v49[1] = v35;
      v50 = (v48[7] + 16 * v40);
      *v50 = v37;
      v50[1] = v38;
      v51 = v48[2];
      v27 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      ++v33;
      v48[2] = v52;
      v29 = v53;
      v30 = v54[2];
      v31 += 2;
      v32 += 2;
      if (v33 == v30)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_227DD4(unint64_t a1, unint64_t a2, char a3, void *a4)
{
  v6 = a2;
  v7 = a1;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1 & 0xC000000000000001;
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v34 = a2 & 0xC000000000000001;

  v9 = 4;
  v37 = v7 >> 62;
  v35 = v6 >> 62;
  v32 = v8;
  v33 = v7;
  if (v7 >> 62)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = *(v38 + 16); ; i = sub_2CEDA0())
  {
    v11 = v9 - 4;
    if (v9 - 4 == i)
    {

      goto LABEL_33;
    }

    if (v36)
    {
      v12 = sub_2CECD0();
    }

    else
    {
      if (v11 >= *(v38 + 16))
      {
        goto LABEL_35;
      }

      v12 = *(v7 + 8 * v9);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v35)
    {
      if (v11 != sub_2CEDA0())
      {
        goto LABEL_11;
      }

LABEL_32:

LABEL_33:
    }

    if (v11 == *(v8 + 16))
    {
      goto LABEL_32;
    }

LABEL_11:
    if (v34)
    {
      v14 = v6;
      v15 = sub_2CECD0();
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_37;
      }

      v14 = v6;
      v15 = *(v6 + 8 * v9);
    }

    v16 = v15;
    v17 = *a4;
    v19 = sub_4F970(v13);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_36;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_236638();
        if (v23)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_237278(v22, a3 & 1);
      v24 = *a4;
      v25 = sub_4F970(v13);
      if ((v23 & 1) != (v26 & 1))
      {
        goto LABEL_39;
      }

      v19 = v25;
      if (v23)
      {
LABEL_29:
        swift_allocError();
        swift_willThrow();
        swift_errorRetain();
        sub_20410(&qword_34C6E0, &unk_2D0730);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        goto LABEL_40;
      }
    }

    v27 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(v27[6] + 8 * v19) = v13;
    *(v27[7] + 8 * v19) = v16;
    v28 = v27[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_38;
    }

    v27[2] = v30;
    ++v9;
    a3 = 1;
    v6 = v14;
    v8 = v32;
    v7 = v33;
    if (!v37)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  sub_2CEEE0();
  __break(1u);
LABEL_40:
  sub_2CECB0(30);
  v39._object = 0x80000000002DFEF0;
  v39._countAndFlagsBits = 0xD00000000000001BLL;
  sub_2CE350(v39);
  sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
  sub_2CED50();
  v40._countAndFlagsBits = 39;
  v40._object = 0xE100000000000000;
  sub_2CE350(v40);
  result = sub_2CED80();
  __break(1u);
  return result;
}

uint64_t sub_2281E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  return a6(&v8);
}

uint64_t sub_2282AC(uint64_t a1)
{
  v2 = sub_2CD430();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228378(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_2283A4(uint64_t *a1)
{
  v3 = *(sub_2CDFD0() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2281E0(a1, v5, v6, v10, v1 + v4, v8);
}

void *sub_22844C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [a1 intentSpeakerRooms];
    if (v2)
    {
      v3 = v2;
      v4 = sub_2CE410();

      v5 = *(v4 + 16);
      if (v5)
      {
        v24 = v1;
        sub_2DB78(0, v5, 0);
        v23 = v4;
        v6 = (v4 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;
          v9 = _swiftEmptyArrayStorage[2];
          v10 = _swiftEmptyArrayStorage[3];

          if (v9 >= v10 >> 1)
          {
            sub_2DB78((v10 > 1), v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v9 + 1;
          v11 = &_swiftEmptyArrayStorage[3 * v9];
          *(v11 + 4) = v7;
          *(v11 + 5) = v8;
          v11[48] = 1;
          v6 += 2;
          --v5;
        }

        while (v5);

        v1 = v24;
      }

      else
      {
      }

      sub_80B10(_swiftEmptyArrayStorage);
    }

    v12 = [v1 intentSpeakerNames];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2CE410();

      v15 = *(v14 + 16);
      if (v15)
      {
        sub_2DB78(0, v15, 0);
        v16 = (v14 + 40);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v20 = _swiftEmptyArrayStorage[2];
          v19 = _swiftEmptyArrayStorage[3];

          if (v20 >= v19 >> 1)
          {
            sub_2DB78((v19 > 1), v20 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v20 + 1;
          v21 = &_swiftEmptyArrayStorage[3 * v20];
          *(v21 + 4) = v18;
          *(v21 + 5) = v17;
          v21[48] = 0;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      sub_80B10(_swiftEmptyArrayStorage);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_228688(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_20410(&qword_34E178, &unk_2D1EC0);
    v5 = sub_2CEDE0();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v5;

  sub_2279B8(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_228754(void *a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 1);
  v4 = *(v3 + 8);
  v5 = __chkstk_darwin(v2);
  v7 = &v159 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v159 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v159 - v12;
  v14 = __chkstk_darwin(v11);
  v15 = __chkstk_darwin(v14);
  v17 = &v159 - v16;
  __chkstk_darwin(v15);
  if (!a1)
  {
    if (qword_34BF58 == -1)
    {
LABEL_5:
      v24 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      (*(v3 + 2))(v7, v24, v2);
      v25 = sub_2CDFE0();
      v26 = sub_2CE690();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_0, v25, v26, "No Whole House Audio Metadata present, passing empty app parameter values for CAT", v27, 2u);
      }

      (*(v3 + 1))(v7, v2);
      return sub_112C0(_swiftEmptyArrayStorage);
    }

LABEL_120:
    swift_once();
    goto LABEL_5;
  }

  v166 = &v159 - v18;
  v163 = v19;
  v20 = a1;
  v21 = sub_112C0(_swiftEmptyArrayStorage);
  v22 = [v20 numberOfHomeAutomationWords];
  v161 = v13;
  v162 = v10;
  if (v22)
  {
    v23 = v22;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v23;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Int;
    *&v172 = 0;
  }

  sub_E2DC(&v172, &v170);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v169 = v21;
  sub_237690(&v170, 0xD00000000000001BLL, 0x80000000002DAF40, isUniquelyReferenced_nonNull_native);
  v30 = v169;
  v31 = [v20 isAllSpeakers];
  if (v31)
  {
    v32 = v31;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v32;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  sub_E2DC(&v172, &v170);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v30;
  sub_237690(&v170, 0x6570536C6C417369, 0xED00007372656B61, v33);
  v34 = v169;
  v35 = [v20 isPauseOrStop];
  if (v35)
  {
    v36 = v35;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v36;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  sub_E2DC(&v172, &v170);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v34;
  sub_237690(&v170, 0x4F65737561507369, 0xED0000706F745372, v37);
  v38 = v169;
  v39 = [v20 isWholeHouseAudioCommand];
  if (v39)
  {
    v40 = v39;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v40;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  sub_E2DC(&v172, &v170);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v38;
  sub_237690(&v170, 0xD000000000000018, 0x80000000002DAF60, v41);
  v42 = v169;
  v43 = [v20 isInHere];
  if (v43)
  {
    v44 = v43;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v44;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  v165 = v3;
  sub_E2DC(&v172, &v170);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v42;
  sub_237690(&v170, 0x657265486E497369, 0xE800000000000000, v45);
  v46 = v169;
  v47 = [v20 hasExcept];
  if (v47)
  {
    v48 = v47;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v48;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  sub_E2DC(&v172, &v170);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v46;
  sub_237690(&v170, 0x7065637845736168, 0xE900000000000074, v49);
  v50 = v169;
  v51 = [v20 speakerRooms];
  if (v51)
  {
    v52 = v51;
    v53 = sub_2CE410();

    v54 = *(v53 + 16);

    v55 = v54 > 2;
  }

  else
  {
    v55 = 0;
  }

  v173 = &type metadata for Bool;
  LOBYTE(v172) = v55;
  sub_E2DC(&v172, &v170);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v50;
  sub_237690(&v170, 0xD000000000000013, 0x80000000002DAF80, v56);
  v57 = v169;
  v58 = [v20 speakerRooms];
  if (v58)
  {
    v59 = v58;
    v60 = sub_2CE410();

    v61 = *(v60 + 16);

    v62 = v61 > 1;
  }

  else
  {
    v62 = 0;
  }

  v3 = v165;
  v173 = &type metadata for Bool;
  LOBYTE(v172) = v62;
  sub_E2DC(&v172, &v170);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v57;
  sub_237690(&v170, 0xD000000000000011, 0x80000000002DAFC0, v63);
  v64 = v169;
  v65 = [v20 permanentNames];
  if (v65)
  {
    v66 = v65;
    v67 = sub_2CE410();

    v68 = *(v67 + 16);

    v69 = v68 != 0;
  }

  else
  {
    v69 = 0;
  }

  v173 = &type metadata for Bool;
  LOBYTE(v172) = v69;
  sub_E2DC(&v172, &v170);
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v64;
  sub_237690(&v170, 0x70756F7247736168, 0xE900000000000073, v70);
  v71 = v169;
  v72 = [v20 isParticipatingSpeaker];
  if (v72)
  {
    v73 = v72;
    v171 = sub_334A0(0, &qword_353110, NSNumber_ptr);
    *&v170 = v73;
    sub_E2DC(&v170, &v172);
  }

  else
  {
    v173 = &type metadata for Bool;
    LOBYTE(v172) = 0;
  }

  sub_E2DC(&v172, &v170);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v169 = v71;
  sub_237690(&v170, 0xD000000000000016, 0x80000000002DAFE0, v74);
  v28 = v169;
  v75 = v20;
  v76 = sub_22844C(a1);

  v77 = [v75 isParticipatingSpeaker];
  if (v77)
  {
    v78 = v77;
    if (v76[2] == 1 && [v77 BOOLValue])
    {

      if (qword_34BF58 != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_40;
    }
  }

  v84 = v76[2];
  v164 = v75;
  if (!v84)
  {
    goto LABEL_57;
  }

  v166 = v28;
  v85 = v76[4];
  v28 = v76[5];
  v86 = *(v76 + 48);
  v87 = qword_34BF58;

  if ((v86 & 1) == 0)
  {
    if (v87 != -1)
    {
      swift_once();
    }

    v95 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v160 = *(v3 + 2);
    v160(v17, v95, v2);
    v96 = sub_2CDFE0();
    v97 = sub_2CE690();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "Destination #1: Destination is an accesory. Setting speaker.firstSpeakerName to the groupName", v98, 2u);
      v3 = v165;
    }

    v93 = *(v3 + 1);
    v93(v17, v2);
    v94 = "firstSpeakerName";
    goto LABEL_55;
  }

  if (v87 != -1)
  {
    goto LABEL_122;
  }

  while (1)
  {
    v88 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    v89 = v163;
    v160 = *(v3 + 2);
    v160(v163, v88, v2);
    v90 = sub_2CDFE0();
    v91 = sub_2CE690();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "Destination #1: Destination is a room or zone. Setting speaker.firstSpeakerRoom to the groupName", v92, 2u);
    }

    v93 = *(v3 + 1);
    v93(v89, v2);
    v94 = "firstSpeakerRoom";
LABEL_55:
    v173 = &type metadata for String;
    v99 = v94 - 32;
    *&v172 = v85;
    *(&v172 + 1) = v28;
    sub_E2DC(&v172, &v170);

    v85 = v166;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v168 = v85;
    sub_237690(&v170, 0xD000000000000010, v99 | 0x8000000000000000, v100);

    v28 = v168;
    v75 = v164;
    if (v76[2] >= v84)
    {
      break;
    }

    __break(1u);
LABEL_122:
    swift_once();
  }

  if (v84 != 1)
  {
    v101 = v76[7];
    v3 = v76[8];
    v102 = *(v76 + 72);

    v103 = v93;
    if (v102)
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v104 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v105 = v162;
      v160(v162, v104, v2);
      v106 = sub_2CDFE0();
      v107 = sub_2CE690();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_0, v106, v107, "Destination #2: Destination is a room or zone. Setting speaker.secondSpeakerRoom to the groupName", v108, 2u);
      }

      v103(v105, v2);
      v109 = "secondSpeakerRoom";
    }

    else
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v110 = sub_3ED0(v2, static Logger.default);
      swift_beginAccess();
      v111 = v161;
      v160(v161, v110, v2);
      v112 = sub_2CDFE0();
      v113 = sub_2CE690();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_0, v112, v113, "Destination #2: Destination is an accesory. Setting speaker.secondSpeakerName to the groupName", v114, 2u);
      }

      v103(v111, v2);
      v109 = "secondSpeakerName";
    }

    v173 = &type metadata for String;
    v115 = v109 - 32;
    *&v172 = v101;
    *(&v172 + 1) = v3;
    sub_E2DC(&v172, &v170);

    v116 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v28;
    sub_237690(&v170, 0xD000000000000011, v115 | 0x8000000000000000, v116);

    v28 = v167;
  }

  else
  {
LABEL_57:
  }

  v117 = [v75 spokenEntityNames];
  if (v117)
  {
    v118 = v117;
    v119 = sub_2CE410();
  }

  else
  {
    v119 = &off_32F100;
  }

  v120 = [v75 spokenEntityTypes];
  v166 = v28;
  if (v120)
  {
    v121 = v120;
    v78 = sub_2CE410();
  }

  else
  {
    v78 = &off_32F130;
  }

  v7 = sub_228688(v119, v78);

  v122 = 0;
  v123 = 1 << v7[32];
  v124 = -1;
  if (v123 < 64)
  {
    v124 = ~(-1 << v123);
  }

  v125 = v124 & *(v7 + 8);
  v126 = (v123 + 63) >> 6;
  v127 = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage;
LABEL_79:
  v165 = v127;
LABEL_80:
  v128 = v2;
  while (1)
  {
    v2 = v128;
    if (!v125)
    {
      break;
    }

LABEL_86:
    v130 = __clz(__rbit64(v125));
    v125 &= v125 - 1;
    v131 = (v122 << 10) | (16 * v130);
    v132 = (*(v7 + 6) + v131);
    v133 = *v132;
    v134 = v132[1];
    v135 = (*(v7 + 7) + v131);
    v136 = *v135 == 1297043282 && v135[1] == 0xE400000000000000;
    if (v136 || (sub_2CEEA0() & 1) != 0)
    {
      v127 = 0;
      v3 = v165;
      if (v165)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_B90C4(0, *(v3 + 2) + 1, 1, v3);
        }

        v78 = *(v3 + 2);
        v139 = *(v3 + 3);
        v140 = v3;
        v3 = (v78 + 1);
        if (v78 >= v139 >> 1)
        {
          v140 = sub_B90C4((v139 > 1), v78 + 1, 1, v140);
        }

        *(v140 + 2) = v3;
        v141 = &v140[16 * v78];
        *(v141 + 4) = v133;
        *(v141 + 5) = v134;
        v127 = v140;
      }

      goto LABEL_79;
    }

    v128 = 0;
    if (v2)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_B90C4(0, *(v2 + 2) + 1, 1, v2);
      }

      v78 = *(v2 + 2);
      v137 = *(v2 + 3);
      v3 = (v78 + 1);
      if (v78 >= v137 >> 1)
      {
        v2 = sub_B90C4((v137 > 1), v78 + 1, 1, v2);
      }

      *(v2 + 2) = v3;
      v138 = &v2[16 * v78];
      *(v138 + 4) = v133;
      *(v138 + 5) = v134;
      goto LABEL_80;
    }
  }

  while (1)
  {
    v129 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v129 >= v126)
    {
      break;
    }

    v125 = *&v7[8 * v129 + 64];
    ++v122;
    if (v125)
    {
      v122 = v129;
      goto LABEL_86;
    }
  }

  if (!v2)
  {
    v3 = v164;
    v143 = v165;
    v28 = v166;
LABEL_108:
    if (v143)
    {
      goto LABEL_113;
    }

    goto LABEL_116;
  }

  v142 = *(v2 + 2);
  v3 = v164;
  v143 = v165;
  v28 = v166;
  if (!v142)
  {
    goto LABEL_108;
  }

  if (v142 == 1)
  {
    v144 = *(v2 + 4);
    v145 = *(v2 + 5);
    v173 = &type metadata for String;
    *&v172 = v144;
    *(&v172 + 1) = v145;
    sub_E2DC(&v172, &v170);

    v146 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v28;
    v147 = 0xD000000000000024;
    v148 = 0x80000000002DAEC0;
    goto LABEL_112;
  }

  v75 = "secondSpeakerRoom";
  v149 = *(v2 + 4);
  v150 = *(v2 + 5);
  v173 = &type metadata for String;
  *&v172 = v149;
  *(&v172 + 1) = v150;
  sub_E2DC(&v172, &v170);

  v151 = swift_isUniquelyReferenced_nonNull_native();
  v167 = v28;
  sub_237690(&v170, 0xD000000000000024, 0x80000000002DAEC0, v151);
  if (*(v2 + 2) >= 2uLL)
  {
    v152 = v167;
    v153 = *(v2 + 6);
    v154 = *(v2 + 7);
    v173 = &type metadata for String;
    *&v172 = v153;
    *(&v172 + 1) = v154;
    sub_E2DC(&v172, &v170);

    v146 = swift_isUniquelyReferenced_nonNull_native();
    v167 = v152;
    v147 = 0xD000000000000025;
    v148 = 0x80000000002DAEF0;
LABEL_112:
    sub_237690(&v170, v147, v148, v146);
    v28 = v167;
    if (v143)
    {
LABEL_113:
      if (*(v143 + 2) == 1)
      {
        v155 = *(v143 + 4);
        v156 = *(v143 + 5);
        v173 = &type metadata for String;
        *&v172 = v155;
        *(&v172 + 1) = v156;
        sub_E2DC(&v172, &v170);

        v157 = swift_isUniquelyReferenced_nonNull_native();
        v167 = v28;
        sub_237690(&v170, 0xD00000000000001FLL, 0x80000000002DAF20, v157);

        return v167;
      }
    }

LABEL_116:

    return v28;
  }

  __break(1u);
LABEL_124:
  swift_once();
LABEL_40:
  v79 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  v80 = v166;
  (*(v3 + 2))(v166, v79, v2);
  v81 = sub_2CDFE0();
  v82 = sub_2CE690();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_0, v81, v82, "Skipping destination because isParticipatingSpeaker = true", v83, 2u);
  }

  else
  {
  }

  (*(v3 + 1))(v80, v2);
  return v28;
}

void *sub_229BBC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_2CEDA0();
    if (!(a2 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!(a2 >> 62))
    {
LABEL_3:
      v5 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_4;
    }
  }

  v5 = sub_2CEDA0();
LABEL_4:
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_20410(qword_355918, &unk_2D7B70);
    v6 = sub_2CEDE0();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_227DD4(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_229CD0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

uint64_t sub_229D0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_229DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = sub_2CA810();
  v113 = *(v114 - 8);
  v4 = *(v113 + 64);
  v5 = __chkstk_darwin(v114);
  v108 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v106 - v8;
  __chkstk_darwin(v7);
  v116 = &v106 - v10;
  v11 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v130 = &v106 - v13;
  v126 = sub_2CD490();
  v132 = *(v126 - 8);
  v14 = *(v132 + 8);
  v15 = __chkstk_darwin(v126);
  v109 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v117 = &v106 - v18;
  __chkstk_darwin(v17);
  v118 = &v106 - v19;
  v128 = sub_2CA870();
  v127 = *(v128 - 8);
  v20 = *(v127 + 64);
  v21 = __chkstk_darwin(v128);
  v123 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v131 = &v106 - v23;
  v24 = sub_2CA7B0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2CE000();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v107 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v112 = &v106 - v35;
  v36 = __chkstk_darwin(v34);
  v115 = &v106 - v37;
  v38 = __chkstk_darwin(v36);
  v111 = &v106 - v39;
  __chkstk_darwin(v38);
  v41 = &v106 - v40;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v110 = v9;
  v42 = sub_3ED0(v29, static Logger.default);
  swift_beginAccess();
  v43 = v30[2];
  v122 = v42;
  v121 = v30 + 2;
  v120 = v43;
  v43(v41, v42, v29);
  v44 = *(v25 + 16);
  v129 = a1;
  v44(v28, a1, v24);
  v45 = sub_2CDFE0();
  v46 = sub_2CE690();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v125 = a2;
    v48 = v24;
    v49 = v47;
    v106 = swift_slowAlloc();
    v137[0] = v106;
    *v49 = 136315138;
    sub_22B7E8(&qword_34CD00, &type metadata accessor for Input);
    v50 = sub_2CEE70();
    v124 = v30;
    v119 = v29;
    v52 = v51;
    (*(v25 + 8))(v28, v48);
    v53 = sub_3F08(v50, v52, v137);
    a2 = v125;
    v29 = v119;
    v30 = v124;

    *(v49 + 4) = v53;
    _os_log_impl(&dword_0, v45, v46, "AppResolutionStrategy#actionForInput input:%s", v49, 0xCu);
    sub_306C(v106);
  }

  else
  {

    (*(v25 + 8))(v28, v24);
  }

  v54 = v30[1];
  v54(v41, v29);
  v55 = v131;
  sub_2CA790();
  v56 = v127;
  v57 = v128;
  v58 = (*(v127 + 88))(v55, v128);
  v59 = v130;
  if (v58 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v56 + 96))(v55, v57);
    v60 = *&v55[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];

    v61 = sub_2CAFE0();
    (*(*(v61 - 8) + 8))(v55, v61);
  }

  else
  {
    if (v58 == enum case for Parse.directInvocation(_:))
    {
      (*(v56 + 96))(v55, v57);
      v62 = v113;
      v63 = v116;
      v64 = v114;
      (*(v113 + 32))(v116, v55, v114);
      sub_238E4C(v63, v137);
      if (v138 == 3)
      {
        sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
        sub_2C9CE0();
        return (*(v62 + 8))(v63, v64);
      }

      else
      {
        v124 = v30;
        if (v138 != 255)
        {
          sub_30B8(v137, &qword_34CCB0, &qword_2D5710);
        }

        v132 = v54;
        v125 = a2;
        v65 = v112;
        v120(v112, v122, v29);
        v66 = v29;
        v67 = *(v62 + 16);
        v68 = v110;
        v67(v110, v63, v64);
        v69 = v62;
        v70 = sub_2CDFE0();
        v71 = sub_2CE680();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v119 = v66;
          v74 = v73;
          *&v135 = v73;
          *v72 = 136315138;
          v67(v108, v68, v64);
          v75 = sub_2CE2A0();
          v77 = v76;
          v78 = *(v69 + 8);
          v78(v68, v64);
          v79 = sub_3F08(v75, v77, &v135);

          *(v72 + 4) = v79;
          _os_log_impl(&dword_0, v70, v71, "AppResolutionStrategy#actionForInput received unsupported directInvocation: %s", v72, 0xCu);
          sub_306C(v74);

          v80 = v112;
          v81 = v119;
        }

        else
        {

          v78 = *(v69 + 8);
          v78(v68, v64);
          v80 = v65;
          v81 = v66;
        }

        v132(v80, v81);
        sub_2C9CF0();
        return (v78)(v116, v64);
      }
    }

    if (v58 != enum case for Parse.pommesResponse(_:) && v58 != enum case for Parse.uso(_:))
    {
      v96 = v107;
      v120(v107, v122, v29);
      v97 = sub_2CDFE0();
      v98 = sub_2CE680();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_0, v97, v98, "AppResolutionStrategy#actionForInput Ignoring unsupported parse", v99, 2u);
        v55 = v131;
      }

      v54(v96, v29);
      sub_2C9CF0();
      return (*(v56 + 8))(v55, v57);
    }

    (*(v56 + 8))(v55, v57);
  }

  v82 = v123;
  sub_2CA790();
  v83 = sub_D1D64(v82, &v135);
  (*(v56 + 8))(v82, v57, v83);
  if (v136)
  {
    sub_F338(&v135, v137);
    sub_35E0(v137, v137[3]);
    sub_2CD480();
    v84 = v132;
    v85 = v126;
    if ((*(v132 + 6))(v59, 1, v126) == 1)
    {
      sub_30B8(v59, &qword_34CCE8, &unk_2D0E20);
LABEL_20:
      sub_2C9CE0();
      return sub_306C(v137);
    }

    v119 = v29;
    v84[4](v118, v59, v85);
    v91 = v84[13];
    v91(v117, enum case for CommonAudio.Confirmation.cancel(_:), v85);
    sub_22B7E8(&qword_34CCF8, &type metadata accessor for CommonAudio.Confirmation);
    sub_2CE3E0();
    sub_2CE3E0();
    v125 = a2;
    v124 = v30;
    if (v135 == v133 && *(&v135 + 1) == v134)
    {
      v92 = 1;
    }

    else
    {
      v92 = sub_2CEEA0();
    }

    v93 = *(v132 + 1);
    v94 = v126;
    v132 = (v132 + 8);
    v93(v117, v126);

    if ((v92 & 1) == 0)
    {
      v95 = v109;
      v91(v109, enum case for CommonAudio.Confirmation.no(_:), v94);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v135 == v133 && *(&v135 + 1) == v134)
      {
        v93(v95, v94);
      }

      else
      {
        v100 = sub_2CEEA0();
        v93(v95, v94);

        if ((v100 & 1) == 0)
        {
          v93(v118, v94);
          goto LABEL_20;
        }
      }
    }

    v101 = v111;
    v102 = v119;
    v120(v111, v122, v119);
    v103 = sub_2CDFE0();
    v104 = sub_2CE690();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "AppResolutionStrategy#actionForInput cancelled", v105, 2u);
    }

    v54(v101, v102);
    sub_2C9CD0();
    v93(v118, v126);
    return sub_306C(v137);
  }

  sub_30B8(&v135, &qword_34CCF0, &unk_2D1270);
  v86 = v115;
  v120(v115, v122, v29);
  v87 = sub_2CDFE0();
  v88 = sub_2CE690();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_0, v87, v88, "AppResolutionStrategy#actionForInput received invalid intent", v89, 2u);
  }

  v54(v86, v29);
  return sub_2C9CF0();
}

uint64_t sub_22AE94(char *a1, uint64_t a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *))
{
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  v11 = *(*v4 + 96);
  v12 = type metadata accessor for AppResolutionStrategy();
  WitnessTable = swift_getWitnessTable();
  return sub_171ED0(a1, a2, a3, a4, v12, WitnessTable);
}

uint64_t sub_22AF64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 80);
  v10 = *(*v4 + 88);
  v11 = *(*v4 + 96);
  v12 = type metadata accessor for AppResolutionStrategy();
  WitnessTable = swift_getWitnessTable();
  return sub_178220(a1, a2, a3, a4, v12, WitnessTable);
}

uint64_t sub_22B034()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  sub_306C((v0 + 48));
  sub_306C((v0 + 88));
  sub_306C((v0 + 128));
  sub_306C((v0 + 168));

  return v0;
}

uint64_t sub_22B08C()
{
  sub_22B034();

  return swift_deallocClassInstance();
}

uint64_t sub_22B100@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = sub_22B718();
}

uint64_t sub_22B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a5[10];
  v13 = a5[11];
  v14 = a5[12];
  v15 = type metadata accessor for AppResolutionStrategy();

  return a7(a1, a2, a3, a4, v15, a6);
}

uint64_t sub_22B2E4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);

  return v1;
}

uint64_t sub_22B358(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v42 = a3;
  v8 = sub_2CA870();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v21 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  v36 = v17;
  v37 = v16;
  v22 = *(v9 + 16);
  v41 = a1;
  v22(v15, a1, v8);
  v23 = sub_2CDFE0();
  v24 = sub_2CE690();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v35 = a2;
    v26 = v25;
    v34 = swift_slowAlloc();
    v43[0] = v34;
    *v26 = 136315138;
    v22(v13, v15, v8);
    v27 = sub_2CE2A0();
    v29 = v28;
    (*(v9 + 8))(v15, v8);
    v30 = sub_3F08(v27, v29, v43);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_0, v23, v24, "AppResolutionStrategy#makeAppResolutionStateFromParse %s", v26, 0xCu);
    sub_306C(v34);

    a2 = v35;
  }

  else
  {

    (*(v9 + 8))(v15, v8);
  }

  (*(v36 + 8))(v20, v37);
  v31 = type metadata accessor for AppResolutionStrategy();
  WitnessTable = swift_getWitnessTable();
  sub_16D228(v41, v31, WitnessTable, v43);
  a2(v43);
  return sub_30B8(v43, &qword_355698, qword_2D7A40);
}

uint64_t sub_22B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 88);
  v9 = *(*v3 + 96);
  v10 = type metadata accessor for AppResolutionStrategy();
  WitnessTable = swift_getWitnessTable();
  return sub_17D10C(a1, a2, a3, v10, WitnessTable);
}

uint64_t sub_22B7E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22B830@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2CD540();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&off_339DA0 + a1);

  return v5(a2, v6, v4);
}

uint64_t getEnumTagSinglePayload for MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22BA00()
{
  result = qword_355A08;
  if (!qword_355A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A08);
  }

  return result;
}

uint64_t sub_22BA54(char a1)
{
  result = 0x636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x74736163646F70;
      break;
    case 2:
      result = 0x7473696C79616C70;
      break;
    case 3:
      result = 0x646956636973756DLL;
      break;
    case 4:
      result = 1735290739;
      break;
    case 5:
      result = 0x6F6F426F69647561;
      break;
    case 6:
      result = 0x6F65646976;
      break;
    case 7:
      result = 0x5573656E755469;
      break;
    case 8:
      result = 0x74616C69706D6F63;
      break;
    case 9:
      result = 0x6D75626C61;
      break;
    case 10:
      result = 0x776F68537674;
      break;
    case 11:
      result = 2003789939;
      break;
    case 12:
      result = 0x6F68536F69646172;
      break;
    case 13:
      result = 0x5374736163646F70;
      break;
    case 14:
      result = 0x616C50636973756DLL;
      break;
    case 15:
      result = 0x6E6F6974617473;
      break;
    case 16:
      result = 0x65646F73697065;
      break;
    case 17:
      result = 28773;
      break;
    case 18:
      result = 28780;
      break;
    case 19:
      result = 0x656C676E6973;
      break;
    case 20:
      result = 0x65726E6567;
      break;
    case 21:
      result = 1937204590;
      break;
    case 22:
      result = 0x656E6F74676E6972;
      break;
    case 23:
      result = 0x73646E756F73;
      break;
    case 24:
      result = 0x6569766F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BCA0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22BA54(*a1);
  v5 = v4;
  if (v3 == sub_22BA54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2CEEA0();
  }

  return v8 & 1;
}

Swift::Int sub_22BD28()
{
  v1 = *v0;
  sub_2CEF50();
  sub_22BA54(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_22BD8C()
{
  sub_22BA54(*v0);
  sub_2CE310();
}

Swift::Int sub_22BDE0()
{
  v1 = *v0;
  sub_2CEF50();
  sub_22BA54(v1);
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_22BE40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22C038();
  *a2 = result;
  return result;
}

uint64_t sub_22BE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22BA54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22BEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C08C();
  v5 = sub_22C0E0();
  v6 = sub_22C134();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_22BF24()
{
  result = qword_355A10;
  if (!qword_355A10)
  {
    sub_2DB30(&qword_355A18, &qword_2D7D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A10);
  }

  return result;
}

unint64_t sub_22BF8C()
{
  result = qword_355A20;
  if (!qword_355A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A20);
  }

  return result;
}

unint64_t sub_22BFE4()
{
  result = qword_355A28;
  if (!qword_355A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A28);
  }

  return result;
}

uint64_t sub_22C038()
{
  v0 = sub_2CEEC0();

  if (v0 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22C08C()
{
  result = qword_355A30;
  if (!qword_355A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A30);
  }

  return result;
}

unint64_t sub_22C0E0()
{
  result = qword_355A38;
  if (!qword_355A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A38);
  }

  return result;
}

unint64_t sub_22C134()
{
  result = qword_355A40;
  if (!qword_355A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_355A40);
  }

  return result;
}

id sub_22C188(uint64_t a1)
{
  v2 = sub_20410(&unk_3519B0, &qword_2D1230);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  v6 = sub_2C8D90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v11 = *(sub_2C8F80() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  sub_2C8F60();
  v14 = v13;
  sub_2C8F70();
  v16 = v15;
  sub_2C8F50();
  sub_2C8D80();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_30B8(v5, &unk_3519B0, &qword_2D1230);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_2C8D50(v18);
  v20 = v19;
  v21 = [objc_opt_self() imageWithURL:v19 width:v14 height:v16];

  (*(v7 + 8))(v10, v6);
  return v21;
}

uint64_t sub_22C3C8(uint64_t a1)
{
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C92B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.UNRECOGNIZED(_:))
  {
    (*(v8 + 96))(v11, v7);
    v13 = *v11;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v14 = sub_3ED0(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v6, v14, v2);
    v15 = sub_2CDFE0();
    v16 = sub_2CE690();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v13;
      _os_log_impl(&dword_0, v15, v16, "ConverterHelpers#convertAmpConfidenceLevel unrecognized AudioConfidenceLevel: %ld", v17, 0xCu);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (v12 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.low(_:))
  {
    return 1;
  }

  if (v12 == enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.medium(_:))
  {
    return 2;
  }

  if (v12 != enum case for Apple_Parsec_Siri_V2alpha_AudioConfidenceLevel.high(_:))
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return 3;
}

void *sub_22C6DC(uint64_t a1)
{
  v2 = sub_2C9110();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v28 = _swiftEmptyArrayStorage;
    sub_2CED20();
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v26 = *(v9 + 56);
    v27 = v10;
    v12 = (v9 - 8);
    while (1)
    {
      v15 = v9;
      v27(v6, v11, v2);
      v16 = sub_2C90F0();
      v18 = v17;
      v19 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {

        v18 = 0;
      }

      v20 = sub_2C9100();
      v22 = v21;
      v23 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23)
      {
        if (v18)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v22 = 0;
        if (v18)
        {
LABEL_13:
          v24 = sub_2CE260();

          if (!v22)
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        }
      }

      v24 = 0;
      if (!v22)
      {
LABEL_17:
        v13 = 0;
        goto LABEL_4;
      }

LABEL_3:
      v13 = sub_2CE260();

LABEL_4:
      [objc_allocWithZone(INMediaSubItem) initWithIdentifier:v24 assetInfo:v13];

      (*v12)(v6, v2);
      sub_2CED00();
      v14 = v28[2];
      sub_2CED30();
      sub_2CED40();
      sub_2CED10();
      v11 += v26;
      --v7;
      v9 = v15;
      if (!v7)
      {
        return v28;
      }
    }
  }

  return result;
}

uint64_t sub_22C940()
{
  v0 = sub_2CE000();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v2 = sub_2C91B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2C9090();
  sub_234704(&qword_355A70, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemDetails);
  v7 = sub_2CDA00();
  (*(v3 + 8))(v6, v2);
  return v7;
}

id sub_22CC18(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v2 = sub_20410(&qword_355A58, &qword_2D7E88);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v118 - v4;
  v6 = sub_2CB8E0();
  v150 = *(v6 - 8);
  v7 = *(v150 + 8);
  v8 = __chkstk_darwin(v6);
  v119 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v126 = v118 - v11;
  v12 = __chkstk_darwin(v10);
  v121 = v118 - v13;
  __chkstk_darwin(v12);
  isa = (v118 - v14);
  v15 = sub_2C92B0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2C9070();
  v22 = v21;
  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v130 = v20;
  }

  else
  {

    v130 = 0;
    v22 = 0;
  }

  v24 = sub_2C8F90();
  v26 = v25;
  v27 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = v24;
  }

  else
  {

    v28 = 0;
    v26 = 0;
  }

  v29 = sub_2C9060();
  v31 = HIBYTE(v30) & 0xF;
  v145 = v29;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v146 = v30;
  }

  else
  {

    v145 = 0;
    v146 = 0;
  }

  v32 = sub_2C90C0();
  v34 = HIBYTE(v33) & 0xF;
  v140 = v32;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v141 = v33;
  }

  else
  {

    v140 = 0;
    v141 = 0;
  }

  v35 = sub_2C8FF0();
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v128 = v35;
    v139 = v36;
  }

  else
  {

    v128 = 0;
    v139 = 0;
  }

  v38 = sub_2C9080();
  v144 = sub_22C188(v38);

  v39 = sub_2C9040();
  v41 = HIBYTE(v40) & 0xF;
  v137 = v39;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v138 = v40;
  }

  else
  {

    v137 = 0;
    v138 = 0;
  }

  v42 = sub_2C8FB0();
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v127 = v42;
    v136 = v43;
  }

  else
  {

    v127 = 0;
    v136 = 0;
  }

  v142 = sub_2C8FD0();
  sub_2C9010();
  sub_2C9000();
  v143 = sub_22C3C8(v19);
  (*(v16 + 8))(v19, v15);
  v45 = sub_2C9020();
  v46 = sub_2C90B0();
  v48 = v47;
  v49 = (v47 >> 56) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v125 = v46;
  }

  else
  {

    v125 = 0;
    v48 = 0;
  }

  v50 = v5;
  v51 = sub_2C8FA0();
  LODWORD(v132) = sub_2C90D0();
  v52 = sub_2C90A0();
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v124 = v52;
    v134 = v53;
  }

  else
  {

    v124 = 0;
    v134 = 0;
  }

  v55 = sub_2C9030();
  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v55 & 0xFFFFFFFFFFFFLL;
  }

  v148 = v22;
  if (v57)
  {
    v123 = v55;
    v133 = v56;
  }

  else
  {

    v123 = 0;
    v133 = 0;
  }

  v58 = sub_2C8FE0();
  v60 = v59;
  v61 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

    v58 = 0;
    v60 = 0;
  }

  v135 = v48;
  v147 = v26;
  v129 = v28;
  v122 = v58;
  if (v26)
  {
    v120 = v45;

    sub_2CB890();

    v62 = sub_2CB8B0();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v50, 1, v62) == 1)
    {
      sub_30B8(v50, &qword_355A58, &qword_2D7E88);
      goto LABEL_73;
    }

    v118[1] = v51;
    v64 = v121;
    sub_2CB880();
    (*(v63 + 8))(v50, v62);
    v65 = v150;
    (*(v150 + 4))(isa, v64, v6);
    v66 = v6;
    v67 = *(v65 + 13);
    v67(v126, enum case for PlaybackItem.ContentOrigin.device(_:), v66);
    sub_234704(&qword_355A68, &type metadata accessor for PlaybackItem.ContentOrigin);
    sub_2CE3E0();
    v121 = v66;
    sub_2CE3E0();
    if (v153 == v151 && v154 == v152)
    {
      v68 = 1;
    }

    else
    {
      v68 = sub_2CEEA0();
    }

    v69 = *(v150 + 1);
    v70 = v121;
    v150 = (v150 + 8);
    v69(v126, v121);

    if ((v68 & 1) == 0)
    {
      v71 = v119;
      v67(v119, enum case for PlaybackItem.ContentOrigin.sirisync(_:), v70);
      sub_2CE3E0();
      sub_2CE3E0();
      if (v153 == v151 && v154 == v152)
      {
        v69(v71, v70);
      }

      else
      {
        v72 = sub_2CEEA0();
        v69(v71, v70);

        if ((v72 & 1) == 0)
        {
          v69(isa, v70);
          goto LABEL_73;
        }
      }
    }

    v73 = v142;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_B90C4(0, *(v73 + 2) + 1, 1, v73);
    }

    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_B90C4((v74 > 1), v75 + 1, 1, v73);
    }

    (v69)(isa);
    *(v73 + 2) = v75 + 1;
    v76 = &v73[16 * v75];
    strcpy(v76 + 32, "SourceLibrary");
    *(v76 + 23) = -4864;
  }

LABEL_73:
  v77 = sub_2C8FC0();
  sub_22C6DC(v77);

  isa = sub_2CE480().super.super.isa;
  v142 = sub_2CE480().super.super.isa;
  v78.super.super.isa = sub_2CE480().super.super.isa;
  v150 = sub_2CE520().super.super.isa;
  v79 = sub_22C940();
  v81 = v80;
  if (v139)
  {
    v132 = sub_2CE260();

    if (v141)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v132 = 0;
    if (v141)
    {
LABEL_75:
      v141 = sub_2CE260();

      if (v138)
      {
        goto LABEL_76;
      }

LABEL_80:
      v140 = 0;
      if (v136)
      {
        goto LABEL_77;
      }

      goto LABEL_81;
    }
  }

  v141 = 0;
  if (!v138)
  {
    goto LABEL_80;
  }

LABEL_76:
  v140 = sub_2CE260();

  if (v136)
  {
LABEL_77:
    v139 = sub_2CE260();

    goto LABEL_82;
  }

LABEL_81:
  v139 = 0;
LABEL_82:
  if (v135)
  {
    v138 = sub_2CE260();
  }

  else
  {
    v138 = 0;
  }

  if (v134)
  {
    v82 = sub_2CE260();
  }

  else
  {
    v82 = 0;
  }

  if (v133)
  {
    v83 = sub_2CE260();

    if (v60)
    {
LABEL_90:
      v84 = sub_2CE260();

      goto LABEL_93;
    }
  }

  else
  {
    v83 = 0;
    if (v60)
    {
      goto LABEL_90;
    }
  }

  v84 = 0;
LABEL_93:
  v85.super.isa = sub_2CE400().super.isa;

  if (v81 >> 60 == 15)
  {
    v86 = 0;
  }

  else
  {
    v86 = sub_2C8DB0().super.isa;
    sub_5267C(v79, v81);
  }

  v136 = v86;
  v87 = objc_allocWithZone(INPrivateMediaItemValueData);
  sub_334A0(0, &qword_355A60, INMediaSubItem_ptr);
  v88 = sub_2CE400().super.isa;
  v137 = v88;

  v116 = v86;
  v117 = v88;
  v89 = v150;
  v115 = v85.super.isa;
  v113 = v83;
  v114 = v84;
  v111 = v78.super.super.isa;
  v112 = v82;
  v90 = v78.super.super.isa;
  v91 = v142;
  v92 = v87;
  v133 = v83;
  v93 = v132;
  v134 = v84;
  v94 = v141;
  v135 = v85.super.isa;
  v96 = v139;
  v95 = v140;
  v97 = v82;
  v98 = isa;
  v99 = v138;
  v143 = [v92 initWithRecommendationId:v132 assetInfo:v141 sharedUserIdFromPlayableMusicAccount:v140 punchoutURI:v139 requiresSubscription:isa provider:v138 isAvailable:v142 isHardBan:v111 bundleId:v112 universalResourceLink:v113 providerAppName:v114 internalSignals:v115 ampConfidenceScore:v150 ampConfidenceLevel:v143 pegasusMetaData:v116 mediaSubItems:v117];

  v100 = v143;
  if (v147)
  {
    v101 = v143;
    v102 = sub_2CE260();
  }

  else
  {
    v103 = v143;
    v102 = 0;
  }

  v104 = v148;
  if (!v146)
  {
    v105 = 0;
    if (v148)
    {
      goto LABEL_101;
    }

LABEL_103:
    v106 = 0;
    goto LABEL_104;
  }

  v105 = sub_2CE260();

  if (!v104)
  {
    goto LABEL_103;
  }

LABEL_101:
  v106 = sub_2CE260();

LABEL_104:
  v107 = objc_allocWithZone(INMediaItem);
  v108 = v144;
  v109 = [v107 initWithIdentifier:v102 title:v105 type:v149 artwork:v144 artist:v106 topics:0 namedEntities:0 privateMediaItemValueData:v100];

  return v109;
}

id sub_22D99C()
{
  v0 = sub_2CE000();
  v49 = *(v0 - 8);
  v1 = *(v49 + 64);
  v2 = __chkstk_darwin(v0);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v43 - v4;
  v6 = sub_2C9120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = (&v43 - v10);
  v50 = sub_2C90E0();
  v12 = *(v50 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v50);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  sub_2CDA80();
  sub_2C9050();
  v19 = (*(v7 + 88))(v11, v6);
  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.UNRECOGNIZED(_:))
  {
    (*(v7 + 96))(v11, v6);
    v20 = *v11;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v21 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    v22 = v49;
    (*(v49 + 16))(v5, v21, v0);
    v23 = sub_2CDFE0();
    v24 = sub_2CE690();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v50;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v20;
      _os_log_impl(&dword_0, v23, v24, "ConverterHelpers#convertAudioItems unrecognized AudioItemType: %ld", v27, 0xCu);
    }

    (*(v22 + 8))(v5, v0);
    v28 = sub_22CC18(v18, 0);
    (*(v12 + 8))(v18, v26);
    return v28;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.song(_:))
  {
    v29 = v18;
    v30 = 1;
LABEL_27:
    v28 = sub_22CC18(v29, v30);
    (*(v12 + 8))(v18, v50);
    return v28;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.album(_:))
  {
    v29 = v18;
    v30 = 2;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.artist(_:))
  {
    v29 = v18;
    v30 = 3;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.genre(_:))
  {
    v29 = v18;
    v30 = 4;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:))
  {
    v29 = v18;
    v30 = 5;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastShow(_:))
  {
    v29 = v18;
    v30 = 6;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastEpisode(_:))
  {
    v29 = v18;
    v30 = 7;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.audioBook(_:))
  {
    v29 = v18;
    v30 = 10;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastStation(_:))
  {
    v29 = v18;
    v30 = 15;
    goto LABEL_27;
  }

  if (v19 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.radioStation(_:))
  {
    v29 = v18;
    v30 = 16;
    goto LABEL_27;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v0, static Logger.default);
  swift_beginAccess();
  (*(v49 + 16))(v48, v32, v0);
  (*(v12 + 16))(v16, v18, v50);
  v33 = sub_2CDFE0();
  v47 = sub_2CE690();
  if (os_log_type_enabled(v33, v47))
  {
    v34 = swift_slowAlloc();
    v44 = v34;
    v46 = swift_slowAlloc();
    v51 = v46;
    *v34 = 136315138;
    v45 = v33;
    sub_2C9050();
    v43 = sub_2CE2A0();
    v36 = v35;
    v37 = *(v12 + 8);
    v37(v16, v50);
    v38 = sub_3F08(v43, v36, &v51);

    v39 = v44;
    *(v44 + 1) = v38;
    v40 = v45;
    _os_log_impl(&dword_0, v45, v47, "ConverterHelpers#convertAudioItems unrecognized AudioItemType type: %s", v39, 0xCu);
    sub_306C(v46);

    (*(v49 + 8))(v48, v0);
    v41 = v50;
  }

  else
  {

    v37 = *(v12 + 8);
    v42 = v50;
    v37(v16, v50);
    (*(v49 + 8))(v48, v0);
    v41 = v42;
  }

  v28 = sub_22CC18(v18, 0);
  v37(v18, v41);
  (*(v7 + 8))(v11, v6);
  return v28;
}

void *sub_22E0F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_2CEDA0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_2CECD0();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_22D99C();

      sub_2CE3F0();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v7 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        sub_2CE430();
      }

      sub_2CE460();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_22E23C(uint64_t a1)
{
  v151 = sub_2C9260();
  v150 = *(v151 - 8);
  v2 = *(v150 + 64);
  __chkstk_darwin(v151);
  v149 = &v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_2C9D60();
  v146 = *(v156 - 8);
  v4 = *(v146 + 64);
  v5 = __chkstk_darwin(v156);
  v142 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v145 = &v142 - v8;
  __chkstk_darwin(v7);
  v154 = &v142 - v9;
  v155 = sub_2C9D80();
  v158 = *(v155 - 1);
  v10 = *(v158 + 8);
  v11 = __chkstk_darwin(v155);
  v144 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v142 - v13;
  v15 = sub_2C91E0();
  v148 = *(v15 - 8);
  v16 = *(v148 + 64);
  __chkstk_darwin(v15);
  v147 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v163 = v18;
  v164 = v19;
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v162 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v152 = &v142 - v24;
  v25 = __chkstk_darwin(v23);
  v153 = &v142 - v26;
  v27 = __chkstk_darwin(v25);
  v143 = &v142 - v28;
  __chkstk_darwin(v27);
  v160 = (&v142 - v29);
  v30 = sub_20410(&qword_355A50, &qword_2D7E80);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v142 - v32;
  v34 = sub_2C9200();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v39 = &v142 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v142 - v40;
  sub_2CDB20();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_30B8(v33, &qword_355A50, &qword_2D7E80);
    v42 = sub_2CB460();
    v44 = v162;
    v43 = v163;
    if (v42)
    {
      v45 = v42;
      v157 = a1;
      sub_2CB100();
      sub_2CA3A0();

      isa = sub_2C9D50();
      v47 = v158 + 8;
      v46 = *(v158 + 1);
      v49 = v48;
      v46(v14, v155);
      if (v49)
      {
        v148 = v45;
        v152 = v49;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v158 = v47;
        v50 = sub_3ED0(v43, static Logger.default);
        swift_beginAccess();
        v51 = v143;
        v161 = *(v164 + 16);
        v161(v143, v50, v43);
        v52 = sub_2CDFE0();
        v53 = sub_2CE680();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v153;
        if (v54)
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_0, v52, v53, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext missing. Fetching multi user info from SiriEnvironment", v56, 2u);
        }

        v57 = v163;
        v59 = (v164 + 8);
        v58 = *(v164 + 8);
        v58(v51, v163);
        sub_2CB100();
        v60 = v144;
        sub_2CA3A0();

        v61 = v154;
        sub_2C9D70();
        v46(v60, v155);
        v161(v55, v50, v57);
        v62 = v146;
        v63 = v145;
        v64 = v156;
        v158 = *(v146 + 16);
        (v158)(v145, v61, v156);
        v65 = v152;

        v66 = sub_2CDFE0();
        v67 = sub_2CE670();

        v68 = os_log_type_enabled(v66, v67);
        v160 = v58;
        if (v68)
        {
          v69 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v165[0] = v144;
          *v69 = 136315394;
          v147 = v59;
          *(v69 + 4) = sub_3F08(isa, v65, v165);
          *(v69 + 12) = 2080;
          (v158)(v142, v63, v156);
          v70 = sub_2CE2A0();
          v71 = v63;
          v73 = v72;
          v74 = *(v62 + 8);
          v75 = v65;
          v155 = v74;
          v74(v71, v156);
          v76 = sub_3F08(v70, v73, v165);
          v64 = v156;

          *(v69 + 14) = v76;
          _os_log_impl(&dword_0, v66, v67, "ConverterHelpers#convertPrivateMediaIntentData SiriEnvironment sharedUserID: %s, confidence: %s", v69, 0x16u);
          swift_arrayDestroy();

          v160(v153, v163);
        }

        else
        {

          v103 = *(v62 + 8);
          v75 = v65;
          v155 = v103;
          v103(v63, v64);
          v58(v153, v163);
        }

        v166 = v64;
        v167 = &protocol witness table for IdentifiedUser.Classification;
        v104 = sub_F390(v165);
        v105 = v154;
        (v158)(v104, v154, v64);
        v106 = sub_2CEA10();
        sub_306C(v165);
        v107 = objc_allocWithZone(INSpeakerIDInfo);
        v108 = sub_2CE260();
        v97 = [v107 initWithSharedUserID:v108 speakerIDConfidence:v106];

        v155(v105, v64);
        v44 = v162;
        v43 = v163;
        v95 = v75;
        goto LABEL_24;
      }
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v98 = sub_3ED0(v43, static Logger.default);
    swift_beginAccess();
    v99 = v152;
    v161 = *(v164 + 16);
    v161(v152, v98, v43);
    v100 = sub_2CDFE0();
    v101 = sub_2CE680();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_0, v100, v101, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext missing and we don't have SiriEnvironment sharedUserId. There will be no speakerIDInfo for this request", v102, 2u);
    }

    v160 = *(v164 + 8);
    v160(v99, v43);
    v95 = 0;
    v97 = 0;
  }

  else
  {
    (*(v35 + 32))(v41, v33, v34);
    isa = sub_2C91C0();
    v78 = v77;
    v155 = v15;
    v166 = v15;
    v167 = &protocol witness table for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification;
    sub_F390(v165);
    sub_2C91F0();
    v156 = sub_2CEA10();
    sub_306C(v165);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v157 = a1;
    v43 = v163;
    v79 = sub_3ED0(v163, static Logger.default);
    swift_beginAccess();
    v80 = v160;
    v161 = *(v164 + 16);
    v161(v160, v79, v43);
    v81 = *(v35 + 16);
    v158 = v41;
    v81(v39, v41, v34);

    v82 = v78;
    v83 = sub_2CDFE0();
    v84 = sub_2CE670();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v169 = v86;
      *v85 = 136315650;
      *(v85 + 4) = sub_3F08(isa, v82, &v169);
      *(v85 + 12) = 2048;
      v87 = v147;
      v152 = v82;
      sub_2C91F0();
      v88 = sub_2C91D0();
      (*(v148 + 8))(v87, v155);
      v89 = *(v35 + 8);
      v89(v39, v34);
      *(v85 + 14) = v88;
      v82 = v152;
      *(v85 + 22) = 2048;
      v90 = v156;
      *(v85 + 24) = v156;
      _os_log_impl(&dword_0, v83, v84, "ConverterHelpers#convertPrivateMediaIntentData AudioExperience.multiuserContext sharedUserID: %s, userIdentificationClassification: %ld, speakerIDConfidence: %ld", v85, 0x20u);
      sub_306C(v86);
      v43 = v163;

      v91 = v160;
      v160 = *(v164 + 8);
      v160(v91, v43);
    }

    else
    {
      v92 = *(v35 + 8);
      v92(v39, v34);

      v93 = v80;
      v89 = v92;
      v160 = *(v164 + 8);
      v160(v93, v43);
      v90 = v156;
    }

    v94 = objc_allocWithZone(INSpeakerIDInfo);
    v95 = v82;
    v96 = sub_2CE260();
    v97 = [v94 initWithSharedUserID:v96 speakerIDConfidence:v90];

    v89(v158, v34);
    v44 = v162;
  }

LABEL_24:
  if (sub_2CDB40() || v109 != 0xE000000000000000)
  {
    v112 = sub_2CEEA0();

    v110 = 0;
    v111 = v97;
    if ((v112 & 1) == 0)
    {
      sub_2CDB40();
      v113 = v149;
      sub_2CDB30();
      sub_2C9250();
      (*(v150 + 8))(v113, v151);
      v114 = objc_allocWithZone(INAppIdentifier);
      v115 = sub_2CE260();
      v44 = v162;

      v116 = sub_2CE260();
      v111 = v97;

      v110 = [v114 initWithBundleIdentifier:v115 bundleVersion:0 appName:v116];
    }
  }

  else
  {

    v110 = 0;
    v111 = v97;
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v117.super.super.isa = sub_2CEAF0(1.0).super.super.isa;
  v118.super.super.isa = sub_2CEAF0(1.0).super.super.isa;
  v119 = v111;
  v120 = v110;
  v121 = v117.super.super.isa;
  v122 = v118.super.super.isa;
  if (v95)
  {
    v123 = sub_2CE260();
  }

  else
  {
    v123 = 0;
  }

  v124 = [objc_allocWithZone(INPrivateMediaIntentData) initWithSpeakerIDInfo:v111 proxiedThirdPartyAppInfo:v110 isAppAttributionRequired:0 useDialogMemoryForAttribution:0 isAppCorrection:0 fallbackUsername:0 wholeHouseAudioMetadata:0 nlConfidenceScore:v117.super.super.isa nlConfidenceLevel:0 asrConfidenceScore:v118.super.super.isa asrConfidenceLevel:0 resolvedSharedUserID:v123 homeAutomationEntityProvider:0];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v125 = sub_3ED0(v43, static Logger.default);
  swift_beginAccess();
  v161(v44, v125, v43);
  v126 = v124;
  v127 = sub_2CDFE0();
  v128 = sub_2CE690();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v161 = v110;
    v131 = v130;
    v168 = v130;
    *v129 = 136315138;
    v132 = v126;
    isa = v117.super.super.isa;
    v133 = v132;
    v134 = [v132 description];
    v135 = sub_2CE270();
    v158 = v111;
    v137 = v136;

    v138 = sub_3F08(v135, v137, &v168);

    *(v129 + 4) = v138;
    _os_log_impl(&dword_0, v127, v128, "ConverterHelpers#convertPrivateMediaIntentData privateMediaData: %s", v129, 0xCu);
    sub_306C(v131);

    v139 = v163;
    v140 = v162;
  }

  else
  {

    v140 = v44;
    v139 = v43;
  }

  v160(v140, v139);
  return v126;
}

uint64_t sub_22F4A0(uint64_t a1)
{
  v2 = sub_2CE000();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = sub_20410(&qword_353C88, &unk_2D6070);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_2C9240();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F3F4(a1, v10, &qword_353C88, &unk_2D6070);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_30B8(v10, &qword_353C88, &unk_2D6070);
    return 0;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_234704(&qword_355A48, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioIntentDetails);
  v16 = sub_2CDA00();
  v19 = v18;
  v20 = v16;
  v21 = v33;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v22 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v21 + 16))(v6, v22, v2);
  sub_525D4(v20, v19);
  v23 = sub_2CDFE0();
  v24 = sub_2CE690();
  if (!os_log_type_enabled(v23, v24))
  {

    sub_52628(v20, v19);
LABEL_18:
    (*(v21 + 8))(v6, v2);
    (*(v12 + 8))(v15, v11);
    return v20;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v25 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    v26 = v20;
    if (v25 != 2)
    {
      v27 = 0;
      goto LABEL_17;
    }

    v29 = *(v20 + 16);
    v28 = *(v20 + 24);
    v30 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (!v30)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else
  {
    v26 = v20;
    if (!v25)
    {
      v27 = BYTE6(v19);
LABEL_17:
      *(result + 4) = v27;
      v31 = result;
      sub_52628(v26, v19);
      _os_log_impl(&dword_0, v23, v24, "ConverterHelpers#audioIntentDetails: len=%ld", v31, 0xCu);

      v21 = v33;
      goto LABEL_18;
    }
  }

  LODWORD(v27) = HIDWORD(v26) - v26;
  if (!__OFSUB__(HIDWORD(v26), v26))
  {
    v27 = v27;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_22F9F8(uint64_t a1)
{
  v55 = a1;
  v1 = sub_2C92A0();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  __chkstk_darwin(v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_353C88, &unk_2D6070);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55 - v7;
  v9 = sub_2CE000();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v55 - v15;
  v17 = sub_2CDBD0();
  sub_22E0F0(v17);

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v18 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v19 = v10[2];
  v59 = v10 + 2;
  v60 = v18;
  v58 = v19;
  v19(v16, v18, v9);

  v20 = sub_2CDFE0();
  v21 = sub_2CE690();

  v22 = os_log_type_enabled(v20, v21);
  v63 = v14;
  v64 = v10;
  v62 = v9;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v65 = v24;
    *v23 = 136315138;
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v25 = sub_2CE420();
    v27 = sub_3F08(v25, v26, &v65);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_0, v20, v21, "ConverterHelpers#convertPrivateSearchForMediaIntentData audioSearchResults: %s", v23, 0xCu);
    sub_306C(v24);
    v9 = v62;

    v61 = v64[1];
  }

  else
  {

    v61 = v10[1];
  }

  v61(v16, v9);
  v28 = v55;
  v65 = sub_2CDB00();
  sub_80D34(&off_32F4E0);
  v29 = sub_22E23C(v28);
  sub_2CDB50();
  sub_2C9290();
  (*(v56 + 8))(v4, v57);
  v30 = sub_2C9240();
  (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
  v31 = sub_22F4A0(v8);
  v33 = v32;
  sub_30B8(v8, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v34.super.isa = sub_2CE400().super.isa;

  v35.super.isa = sub_2CE400().super.isa;

  isa = 0;
  if (v33 >> 60 != 15)
  {
    isa = sub_2C8DB0().super.isa;
    sub_5267C(v31, v33);
  }

  v37 = [objc_allocWithZone(INPrivateSearchForMediaIntentData) initWithPrivateMediaIntentData:v29 audioSearchResults:v34.super.isa internalSignals:v35.super.isa appInferred:0 pegasusMetaData:isa];

  v38 = v63;
  v58(v63, v60, v9);
  v39 = v37;
  v40 = v9;
  v41 = v39;
  v42 = sub_2CDFE0();
  v43 = sub_2CE690();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v65 = v45;
    *v44 = 136315138;
    v46 = v41;
    v47 = [v46 description];
    v48 = sub_2CE270();
    v50 = v49;

    v51 = sub_3F08(v48, v50, &v65);

    *(v44 + 4) = v51;
    _os_log_impl(&dword_0, v42, v43, "ConverterHelpers#convertPrivateSearchForMediaIntentData privateSearchForMediaIntentData: %s", v44, 0xCu);
    sub_306C(v45);

    v52 = v63;
    v53 = v62;
  }

  else
  {

    v52 = v38;
    v53 = v40;
  }

  v61(v52, v53);
  return v41;
}

uint64_t sub_230064()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2C92C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_2C91A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CDB10();
  sub_2C9190();
  (*(v11 + 8))(v14, v10);
  v15 = (*(v6 + 88))(v9, v5);
  if (v15 == enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.UNRECOGNIZED(_:))
  {
    (*(v6 + 96))(v9, v5);
    v16 = *v9;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v17 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v17, v0);
    v18 = sub_2CDFE0();
    v19 = sub_2CE690();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v16;
      _os_log_impl(&dword_0, v18, v19, "ConverterHelpers#convertPlaybackQueueLocation unrecognized playbackQueueLocation: %ld", v20, 0xCu);
    }

    (*(v1 + 8))(v4, v0);
    return 1;
  }

  if (v15 == enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.next(_:))
  {
    return 2;
  }

  if (v15 != enum case for Apple_Parsec_Siri_V2alpha_PlaybackQueueLocation.later(_:))
  {
    (*(v6 + 8))(v9, v5);
    return 1;
  }

  return 3;
}

id sub_2303EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  v67 = sub_2CE000();
  v65 = *(v67 - 8);
  v6 = *(v65 + 64);
  __chkstk_darwin(v67);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2C92A0();
  v8 = *(v64 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v64);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_353C88, &unk_2D6070);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v62 - v14;
  v16 = sub_2C91A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22E0F0(a2);
  if (v5 == 2)
  {
    sub_2CDB70();
  }

  isa = sub_2CE480().super.super.isa;
  sub_2CDB10();
  sub_2C9130();
  v21 = *(v17 + 8);
  v21(v20, v16);
  v22.super.super.isa = sub_2CE480().super.super.isa;
  sub_2CDB10();
  sub_2C9170();
  v21(v20, v16);
  v23.super.super.isa = sub_2CE480().super.super.isa;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v24.super.super.isa = sub_2CEB00(0).super.super.isa;
  v25 = sub_2CDB00();
  strcpy(v72, "PommesResponse");
  v72[15] = -18;
  __chkstk_darwin(v25);
  *(&v61 + 1) = v72;
  if ((sub_13964(sub_13A68, &v60 + 8, v25) & 1) == 0)
  {
    *v72 = v25;
    sub_80D34(&off_32F540);
  }

  v26 = v67;
  v27 = sub_22E23C(a1);
  isa = isa;
  v69 = v27;
  v28 = v22.super.super.isa;
  v29 = v23.super.super.isa;
  v68 = v24.super.super.isa;
  sub_2CDB50();
  sub_2C9290();
  (*(v8 + 8))(v11, v64);
  v30 = sub_2C9240();
  (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
  v31 = sub_22F4A0(v15);
  v33 = v32;
  sub_30B8(v15, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v34.super.isa = sub_2CE400().super.isa;

  v35.super.isa = sub_2CE400().super.isa;

  v36 = 0;
  if (v33 >> 60 != 15)
  {
    v36 = sub_2C8DB0().super.isa;
    sub_5267C(v31, v33);
  }

  v37 = objc_allocWithZone(INPrivatePlayMediaIntentData);
  v38 = v68;
  v40 = v69;
  v39 = isa;
  v41 = [v37 initWithAppSelectionEnabled:0 appInferred:isa audioSearchResults:v34.super.isa privateMediaIntentData:v69 appSelectionSignalsEnabled:0 appSelectionSignalsFrequencyDenominator:0 shouldSuppressCommonWholeHouseAudioRoutes:0 immediatelyStartPlayback:v28 isAmbiguousPlay:v29 isPersonalizedRequest:v68 internalSignals:v35.super.isa entityConfidenceSignalsEnabled:0 entityConfidenceSignalsFrequencyDenominatorInternal:0 entityConfidenceSignalsFrequencyDenominatorProd:0 entityConfidenceSignalsMaxItemsToDisambiguate:0 alternativeProviderBundleIdentifier:0 ampPAFDataSetID:v36 pegasusMetaData:?];

  v42 = v65;
  v43 = v66;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v44 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  (*(v42 + 16))(v43, v44, v26);
  v45 = v41;
  v46 = sub_2CDFE0();
  v47 = sub_2CE690();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v64 = v28;
    v50 = v42;
    v51 = v49;
    v71 = v49;
    *v48 = 136315138;
    v52 = v45;
    v53 = [v52 description];
    v63 = v29;
    v54 = v53;
    v55 = sub_2CE270();
    v57 = v56;

    v58 = sub_3F08(v55, v57, &v71);

    *(v48 + 4) = v58;
    _os_log_impl(&dword_0, v46, v47, "ConverterHelpers#convertPrivatePlayMediaIntentData privatePlayData: %s", v48, 0xCu);
    sub_306C(v51);

    (*(v50 + 8))(v66, v67);
  }

  else
  {

    (*(v42 + 8))(v43, v26);
  }

  return v45;
}

id sub_230B38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v47 = a3;
  v48 = a1;
  v5 = sub_2C8E80();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v43 - v13;
  v15 = [objc_allocWithZone(_INPBIntentMetadata) init];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v49 = v9[2];
  v49(v14, v16, v8);

  v17 = sub_2CDFE0();
  v18 = sub_2CE690();

  v19 = os_log_type_enabled(v17, v18);
  v53 = v15;
  if (!v19)
  {

    v50 = v9[1];
    v50(v14, v8);
    if (!v15)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = swift_slowAlloc();
  v43 = v9;
  v21 = v20;
  v22 = swift_slowAlloc();
  v55 = v22;
  *v21 = 136315138;
  *(v21 + 4) = sub_3F08(v48, a2, &v55);
  _os_log_impl(&dword_0, v17, v18, "ConverterHelpers#convertIntentMetadata Setting launchId to: %s", v21, 0xCu);
  sub_306C(v22);
  v15 = v53;

  v23 = v43;

  v50 = v23[1];
  v50(v14, v8);
  if (v15)
  {
LABEL_7:
    v24 = v15;
    v25 = sub_2CE260();
    [v24 setLaunchId:v25];

    v26 = v24;
    v27 = v44;
    sub_2C8E70();
    sub_2C8E50();
    (*(v45 + 8))(v27, v46);
    v28 = sub_2CE260();
    v15 = v53;

    [v26 setIntentId:v28];
  }

LABEL_8:
  if (v51)
  {
    v29 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v29 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v29 && v15)
    {
      v30 = v15;
      v31 = sub_2CE260();
      [v30 setSystemExtensionBundleId:v31];
    }
  }

  v32 = v52;
  v49(v52, v16, v8);
  v33 = v15;
  v34 = sub_2CDFE0();
  v35 = sub_2CE690();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54 = v15;
    v55 = v37;
    *v36 = 136315138;
    v38 = v33;
    sub_20410(&qword_355A90, &qword_2D7E98);
    v39 = sub_2CE2A0();
    v41 = sub_3F08(v39, v40, &v55);
    v15 = v53;

    *(v36 + 4) = v41;
    _os_log_impl(&dword_0, v34, v35, "ConverterHelpers#convertIntentMetadata intentMetadata: %s", v36, 0xCu);
    sub_306C(v37);
  }

  v50(v32, v8);
  return v15;
}

id sub_2310A0(uint64_t a1)
{
  v171 = sub_2CD540();
  v173 = *(v171 - 8);
  v2 = *(v173 + 64);
  __chkstk_darwin(v171);
  v159 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v4 = *(*(v170 - 8) + 64);
  v5 = __chkstk_darwin(v170);
  v161 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v175 = &v157 - v7;
  v8 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v158 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v160 = &v157 - v13;
  v14 = __chkstk_darwin(v12);
  v165 = &v157 - v15;
  v16 = __chkstk_darwin(v14);
  v163 = &v157 - v17;
  v18 = __chkstk_darwin(v16);
  v167 = &v157 - v19;
  __chkstk_darwin(v18);
  v168 = &v157 - v20;
  v176 = sub_2CD500();
  v174 = *(v176 - 1);
  v21 = *(v174 + 64);
  __chkstk_darwin(v176);
  v166 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CE000();
  v177 = *(v23 - 8);
  v178 = v23;
  v24 = *(v177 + 64);
  v25 = __chkstk_darwin(v23);
  v162 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v169 = &v157 - v28;
  __chkstk_darwin(v27);
  v172 = &v157 - v29;
  v30 = sub_2CD4A0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v164 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20410(&qword_34D690, &qword_2D1590);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v38 = &v157 - v37;
  v39 = sub_20410(&qword_34D698, &qword_2D1598);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v43 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v41);
  v46 = &v157 - v45;
  __chkstk_darwin(v44);
  v48 = &v157 - v47;
  v179 = a1;
  sub_2CD6A0();
  (*(v31 + 104))(v46, enum case for CommonAudio.Noun.library(_:), v30);
  (*(v31 + 56))(v46, 0, 1, v30);
  v49 = *(v35 + 56);
  sub_F3F4(v48, v38, &qword_34D698, &qword_2D1598);
  sub_F3F4(v46, &v38[v49], &qword_34D698, &qword_2D1598);
  v50 = *(v31 + 48);
  if (v50(v38, 1, v30) != 1)
  {
    sub_F3F4(v38, v43, &qword_34D698, &qword_2D1598);
    if (v50(&v38[v49], 1, v30) != 1)
    {
      v74 = &v38[v49];
      v75 = v164;
      (*(v31 + 32))(v164, v74, v30);
      sub_234704(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun);
      v76 = sub_2CE250();
      v77 = *(v31 + 8);
      v77(v75, v30);
      sub_30B8(v46, &qword_34D698, &qword_2D1598);
      sub_30B8(v48, &qword_34D698, &qword_2D1598);
      v77(v43, v30);
      sub_30B8(v38, &qword_34D698, &qword_2D1598);
      v51 = v176;
      if (v76)
      {
        goto LABEL_14;
      }

LABEL_7:
      v181 = v179;
      sub_20410(&qword_34D6D8, &qword_2D15D0);
      v52 = v174;
      v53 = *(v174 + 72);
      v54 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_2D10E0;
      v56 = v55 + v54;
      v57 = enum case for CommonAudio.Attribute.fromArtist(_:);
      v58 = *(v52 + 104);
      v58(v55 + v54, enum case for CommonAudio.Attribute.fromArtist(_:), v51);
      v59 = enum case for CommonAudio.Attribute.fromAlbum(_:);
      v58(v56 + v53, enum case for CommonAudio.Attribute.fromAlbum(_:), v51);
      v58(v56 + 2 * v53, enum case for CommonAudio.Attribute.fromSong(_:), v51);
      sub_186A50(v55);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2CD700();
      LOBYTE(v55) = sub_2CD950();

      if (v55)
      {
        v60 = v179;
        v181 = v179;
        v61 = v166;
        v58(v166, v57, v51);
        v62 = sub_2CD910();
        v63 = *(v52 + 8);
        v63(v61, v51);
        if (v62)
        {
          v64 = 3;
        }

        else
        {
          v181 = v60;
          v58(v61, v59, v51);
          v96 = sub_2CD910();
          v63(v61, v51);
          if (v96)
          {
            v64 = 2;
          }

          else
          {
            v64 = 1;
          }
        }

        v97 = v177;
        v98 = v169;
        v99 = objc_allocWithZone(INMediaItem);
        v100 = sub_2CE260();
        v101 = [v99 initWithIdentifier:v100 title:0 type:v64 artwork:0];

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v102 = v178;
        v103 = sub_3ED0(v178, static Logger.default);
        swift_beginAccess();
        (*(v97 + 16))(v98, v103, v102);
        v85 = v101;
        v104 = sub_2CDFE0();
        v105 = sub_2CE690();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = v97;
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v180 = v108;
          *v107 = 136315138;
          v109 = v85;
          v110 = [v109 description];
          v111 = sub_2CE270();
          v113 = v112;

          v114 = sub_3F08(v111, v113, &v180);

          *(v107 + 4) = v114;
          _os_log_impl(&dword_0, v104, v105, "ConverterHelpers#convertMediaContainer intent has fromArtist, fromAlbum or fromSong item: %s", v107, 0xCu);
          sub_306C(v108);

          (*(v106 + 8))(v169, v178);
          return v85;
        }

LABEL_54:

        (*(v97 + 8))(v98, v178);
        return v85;
      }

      v65 = v168;
      sub_2CD6F0();
      v66 = v173;
      v67 = v167;
      v68 = v171;
      v176 = *(v173 + 104);
      (v176)(v167, enum case for CommonAudio.MediaType.podcast(_:), v171);
      v174 = *(v66 + 56);
      (v174)(v67, 0, 1, v68);
      v69 = *(v170 + 48);
      v70 = v175;
      sub_F3F4(v65, v175, &qword_34D6D0, qword_2D34A0);
      v71 = v70;
      sub_F3F4(v67, v70 + v69, &qword_34D6D0, qword_2D34A0);
      v72 = *(v66 + 48);
      if (v72(v71, 1, v68) == 1)
      {
        sub_30B8(v67, &qword_34D6D0, qword_2D34A0);
        v73 = v175;
        sub_30B8(v65, &qword_34D6D0, qword_2D34A0);
        if (v72(v73 + v69, 1, v68) == 1)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v115 = v163;
        sub_F3F4(v71, v163, &qword_34D6D0, qword_2D34A0);
        if (v72(v71 + v69, 1, v68) != 1)
        {
          v123 = v173;
          v124 = v71 + v69;
          v125 = v159;
          (*(v173 + 32))(v159, v124, v68);
          sub_234704(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
          v126 = sub_2CE250();
          v127 = *(v123 + 8);
          v127(v125, v68);
          sub_30B8(v167, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v168, &qword_34D6D0, qword_2D34A0);
          v127(v163, v68);
          sub_30B8(v175, &qword_34D6D0, qword_2D34A0);
          if (v126)
          {
            goto LABEL_39;
          }

          goto LABEL_29;
        }

        sub_30B8(v167, &qword_34D6D0, qword_2D34A0);
        v73 = v175;
        sub_30B8(v168, &qword_34D6D0, qword_2D34A0);
        (*(v173 + 8))(v115, v68);
      }

      sub_30B8(v73, &qword_34D6A8, &unk_2D15A0);
LABEL_29:
      v116 = v165;
      sub_2CD6F0();
      v117 = v160;
      v118 = v171;
      (v176)(v160, enum case for CommonAudio.MediaType.podcastStation(_:), v171);
      v119 = v118;
      (v174)(v117, 0, 1, v118);
      v120 = *(v170 + 48);
      v121 = v161;
      sub_F3F4(v116, v161, &qword_34D6D0, qword_2D34A0);
      sub_F3F4(v117, v121 + v120, &qword_34D6D0, qword_2D34A0);
      if (v72(v121, 1, v118) == 1)
      {
        sub_30B8(v117, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v116, &qword_34D6D0, qword_2D34A0);
        if (v72(v121 + v120, 1, v118) == 1)
        {
          v73 = v121;
LABEL_32:
          sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
          goto LABEL_39;
        }

        goto LABEL_35;
      }

      v122 = v158;
      sub_F3F4(v121, v158, &qword_34D6D0, qword_2D34A0);
      if (v72(v121 + v120, 1, v118) == 1)
      {
        sub_30B8(v117, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v165, &qword_34D6D0, qword_2D34A0);
        (*(v173 + 8))(v122, v118);
LABEL_35:
        sub_30B8(v121, &qword_34D6A8, &unk_2D15A0);
        return 0;
      }

      v128 = v173;
      v129 = v121 + v120;
      v130 = v159;
      (*(v173 + 32))(v159, v129, v118);
      sub_234704(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
      v131 = sub_2CE250();
      v132 = *(v128 + 8);
      v132(v130, v119);
      sub_30B8(v117, &qword_34D6D0, qword_2D34A0);
      sub_30B8(v165, &qword_34D6D0, qword_2D34A0);
      v132(v122, v119);
      sub_30B8(v121, &qword_34D6D0, qword_2D34A0);
      if ((v131 & 1) == 0)
      {
        return 0;
      }

LABEL_39:
      v133 = sub_2CD5F0();
      if (v133[2])
      {
        v134 = v133[4];
        v135 = v133[5];

        v136 = HIBYTE(v135) & 0xF;
        if ((v135 & 0x2000000000000000) == 0)
        {
          v136 = v134 & 0xFFFFFFFFFFFFLL;
        }

        v97 = v177;
        v98 = v162;
        if (v136)
        {
          v137 = sub_2CD5F0();
          if (!v137[2])
          {
            goto LABEL_55;
          }

          goto LABEL_47;
        }
      }

      else
      {

        v97 = v177;
        v98 = v162;
      }

      v137 = sub_2CD6E0();
      if (!v137[2])
      {
LABEL_55:

        return 0;
      }

LABEL_47:
      v139 = v137[4];
      v138 = v137[5];
      swift_bridgeObjectRetain_n();

      v140 = HIBYTE(v138) & 0xF;
      if ((v138 & 0x2000000000000000) == 0)
      {
        v140 = v139 & 0xFFFFFFFFFFFFLL;
      }

      if (v140)
      {
        v141 = objc_allocWithZone(INMediaItem);
        v142 = sub_2CE260();

        v143 = [v141 initWithIdentifier:0 title:v142 type:0 artwork:0];

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v144 = v178;
        v145 = sub_3ED0(v178, static Logger.default);
        swift_beginAccess();
        (*(v97 + 16))(v98, v145, v144);
        v85 = v143;
        v104 = sub_2CDFE0();
        v146 = sub_2CE690();

        if (os_log_type_enabled(v104, v146))
        {
          v147 = v97;
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v180 = v149;
          *v148 = 136315138;
          v150 = v85;
          v151 = [v150 description];
          v152 = sub_2CE270();
          v154 = v153;

          v155 = sub_3F08(v152, v154, &v180);

          *(v148 + 4) = v155;
          _os_log_impl(&dword_0, v104, v146, "ConverterHelpers#convertMediaContainer intent has podcast or podcast station with not empty title item: %s", v148, 0xCu);
          sub_306C(v149);

          (*(v147 + 8))(v162, v178);
          return v85;
        }

        goto LABEL_54;
      }

      goto LABEL_55;
    }

    sub_30B8(v46, &qword_34D698, &qword_2D1598);
    sub_30B8(v48, &qword_34D698, &qword_2D1598);
    (*(v31 + 8))(v43, v30);
LABEL_6:
    sub_30B8(v38, &qword_34D690, &qword_2D1590);
    v51 = v176;
    goto LABEL_7;
  }

  sub_30B8(v46, &qword_34D698, &qword_2D1598);
  sub_30B8(v48, &qword_34D698, &qword_2D1598);
  if (v50(&v38[v49], 1, v30) != 1)
  {
    goto LABEL_6;
  }

  sub_30B8(v38, &qword_34D698, &qword_2D1598);
LABEL_14:
  v78 = objc_allocWithZone(INMediaItem);
  v79 = sub_2CE260();
  v80 = [v78 initWithIdentifier:v79 title:0 type:0 artwork:0];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v81 = v178;
  v82 = sub_3ED0(v178, static Logger.default);
  swift_beginAccess();
  v83 = v177;
  v84 = v172;
  (*(v177 + 16))(v172, v82, v81);
  v85 = v80;
  v86 = sub_2CDFE0();
  v87 = sub_2CE690();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v180 = v89;
    *v88 = 136315138;
    v90 = v85;
    v91 = [v90 description];
    v92 = sub_2CE270();
    v94 = v93;

    v95 = sub_3F08(v92, v94, &v180);

    *(v88 + 4) = v95;
    _os_log_impl(&dword_0, v86, v87, "ConverterHelpers#convertMediaContainer library noun found item: %s", v88, 0xCu);
    sub_306C(v89);

    (*(v83 + 8))(v172, v178);
  }

  else
  {

    (*(v83 + 8))(v84, v178);
  }

  return v85;
}

id sub_232644(uint64_t a1)
{
  v40 = sub_2CE000();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v40);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2C92A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_353C88, &unk_2D6070);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = sub_2CDBD0();
  sub_22E0F0(v13);

  v44[1] = sub_2CDB00();
  sub_80D34(&off_32F5A0);
  v43 = sub_22E23C(a1);
  sub_2CDB50();
  sub_2C9290();
  (*(v5 + 8))(v8, v4);
  v14 = sub_2C9240();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = sub_22F4A0(v12);
  v17 = v16;
  sub_30B8(v12, &qword_353C88, &unk_2D6070);
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v18.super.isa = sub_2CE400().super.isa;

  v19.super.isa = sub_2CE400().super.isa;

  isa = 0;
  if (v17 >> 60 != 15)
  {
    isa = sub_2C8DB0().super.isa;
    sub_5267C(v15, v17);
  }

  v21 = objc_allocWithZone(INPrivateAddMediaIntentData);
  v22 = v43;
  v23 = [v21 initWithPrivateMediaIntentData:v43 audioSearchResults:v18.super.isa internalSignals:v19.super.isa pegasusMetaData:isa];

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v24 = v40;
  v25 = sub_3ED0(v40, static Logger.default);
  swift_beginAccess();
  v27 = v41;
  v26 = v42;
  (*(v42 + 16))(v41, v25, v24);
  v28 = v23;
  v29 = sub_2CDFE0();
  v30 = sub_2CE690();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44[0] = v32;
    *v31 = 136315138;
    v33 = v28;
    v34 = [v33 description];
    v35 = sub_2CE270();
    v37 = v36;

    v38 = sub_3F08(v35, v37, v44);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_0, v29, v30, "ConverterHelpers#convertPrivateAddMediaIntentData privateAddMediaIntentData: %s", v31, 0xCu);
    sub_306C(v32);

    (*(v42 + 8))(v41, v24);
  }

  else
  {

    (*(v26 + 8))(v27, v24);
  }

  return v28;
}

unint64_t sub_232B38(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v209 = a2;
  v188 = sub_2C9120();
  v187 = *(v188 - 8);
  v3 = *(v187 + 64);
  v4 = __chkstk_darwin(v188);
  v186 = &v182[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v185 = &v182[-v6];
  v190 = sub_2C90E0();
  v7 = *(v190 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v190);
  v189 = &v182[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = sub_2CDA60();
  v196 = *(v197 - 8);
  v10 = *(v196 + 64);
  v11 = __chkstk_darwin(v197);
  v195 = &v182[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v194 = &v182[-v13];
  v226 = sub_2CE000();
  v228 = *(v226 - 8);
  v14 = *(v228 + 64);
  v15 = __chkstk_darwin(v226 - 8);
  v227 = &v182[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v184 = &v182[-v18];
  __chkstk_darwin(v17);
  v20 = &v182[-v19];
  v193 = sub_2CD500();
  v192 = *(v193 - 8);
  v21 = *(v192 + 64);
  __chkstk_darwin(v193);
  v191 = &v182[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = sub_2CD4A0();
  v217 = *(v211 - 8);
  v23 = *(v217 + 64);
  __chkstk_darwin(v211);
  v198 = &v182[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v210 = sub_20410(&qword_34D690, &qword_2D1590);
  v25 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v218 = &v182[-v26];
  v27 = sub_20410(&qword_34D698, &qword_2D1598);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v201 = &v182[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __chkstk_darwin(v29);
  v216 = &v182[-v32];
  __chkstk_darwin(v31);
  v219 = &v182[-v33];
  v34 = sub_2CD4C0();
  v225 = *(v34 - 8);
  v35 = *(v225 + 64);
  __chkstk_darwin(v34);
  v202 = &v182[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v37 = *(*(v220 - 8) + 64);
  v38 = __chkstk_darwin(v220);
  v214 = &v182[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v41 = &v182[-v40];
  v42 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v199 = &v182[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = __chkstk_darwin(v44);
  v212 = &v182[-v47];
  v48 = __chkstk_darwin(v46);
  v213 = &v182[-v49];
  v50 = __chkstk_darwin(v48);
  v52 = &v182[-v51];
  v53 = __chkstk_darwin(v50);
  v55 = &v182[-v54];
  __chkstk_darwin(v53);
  v57 = &v182[-v56];
  v58 = [objc_allocWithZone(_INPBMediaDestination) init];
  v59 = sub_2CD610();
  v60 = v59[2];
  v200 = v7;
  v221 = v58;
  v222 = v20;
  v223 = a1;
  if (v60)
  {
    v61 = v59[5];
    v215 = v59[4];
    v224 = v61;
  }

  else
  {
    v208 = v52;

    v62 = sub_2CD640();
    if (!v62[2])
    {
      goto LABEL_8;
    }

    v63 = v62[4];
    v64 = v62[5];

    v65 = HIBYTE(v64) & 0xF;
    v215 = v63;
    if ((v64 & 0x2000000000000000) == 0)
    {
      v65 = v63 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {
      v224 = v64;
    }

    else
    {
LABEL_8:

      v215 = 0;
      v224 = 0;
    }

    v52 = v208;
  }

  sub_2CD6C0();
  v66 = v225;
  v67 = *(v225 + 104);
  v205 = enum case for CommonAudio.Verb.update(_:);
  v207 = v225 + 104;
  v204 = v67;
  v67(v55);
  v68 = *(v66 + 56);
  v206 = v66 + 56;
  v203 = v68;
  v68(v55, 0, 1, v34);
  v69 = *(v220 + 48);
  sub_F3F4(v57, v41, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v55, &v41[v69], &qword_34D6B8, &qword_2D15B0);
  v70 = *(v66 + 48);
  v71 = (v70)(v41, 1, v34);
  v72 = &selRef_hasTwoOrMoreRooms;
  v208 = v70;
  if (v71 == 1)
  {
    sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
    v73 = (v70)(&v41[v69], 1, v34);
    v74 = v228;
    v75 = v222;
    if (v73 == 1)
    {
      sub_30B8(v41, &qword_34D6B8, &qword_2D15B0);
      v76 = v226;
      v77 = v219;
      if (!v224)
      {
        goto LABEL_17;
      }

LABEL_28:
      v97 = v221;
      [v221 v72[285]];
      v88 = v227;
      v86 = v224;
      goto LABEL_44;
    }

LABEL_16:
    sub_30B8(v41, &qword_34D6B0, &unk_2D4FC0);
    v77 = v219;
    goto LABEL_17;
  }

  sub_F3F4(v41, v52, &qword_34D6B8, &qword_2D15B0);
  if ((v70)(&v41[v69], 1, v34) == 1)
  {
    sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
    (*(v225 + 8))(v52, v34);
    goto LABEL_16;
  }

  v99 = v225;
  v100 = &v41[v69];
  v101 = v202;
  (*(v225 + 32))(v202, v100, v34);
  sub_234704(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v183 = sub_2CE250();
  v102 = *(v99 + 8);
  v102(v101, v34);
  sub_30B8(v55, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v57, &qword_34D6B8, &qword_2D15B0);
  v102(v52, v34);
  v72 = &selRef_hasTwoOrMoreRooms;
  sub_30B8(v41, &qword_34D6B8, &qword_2D15B0);
  v76 = v226;
  v74 = v228;
  v75 = v222;
  v77 = v219;
  if ((v183 & 1) != 0 && v224)
  {
    goto LABEL_28;
  }

LABEL_17:
  sub_2CD6A0();
  v79 = v216;
  v78 = v217;
  v80 = v211;
  (*(v217 + 104))(v216, enum case for CommonAudio.Noun.library(_:), v211);
  (*(v78 + 56))(v79, 0, 1, v80);
  v81 = *(v210 + 48);
  v82 = v218;
  sub_F3F4(v77, v218, &qword_34D698, &qword_2D1598);
  sub_F3F4(v79, &v82[v81], &qword_34D698, &qword_2D1598);
  v83 = *(v78 + 48);
  if (v83(v82, 1, v80) == 1)
  {
    sub_30B8(v79, &qword_34D698, &qword_2D1598);
    v84 = v218;
    sub_30B8(v77, &qword_34D698, &qword_2D1598);
    v85 = v83(&v84[v81], 1, v80);
    v86 = v224;
    v74 = v228;
    v76 = v226;
    if (v85 == 1)
    {
      sub_30B8(v84, &qword_34D698, &qword_2D1598);
      v87 = 1;
      v88 = v227;
LABEL_35:
      v97 = v221;
      v75 = v222;
      v98 = &selRef_hasTwoOrMoreRooms;
      goto LABEL_43;
    }

    goto LABEL_22;
  }

  v89 = v201;
  sub_F3F4(v82, v201, &qword_34D698, &qword_2D1598);
  if (v83(&v82[v81], 1, v80) == 1)
  {
    sub_30B8(v216, &qword_34D698, &qword_2D1598);
    v84 = v218;
    sub_30B8(v219, &qword_34D698, &qword_2D1598);
    (*(v217 + 8))(v89, v80);
    v86 = v224;
    v74 = v228;
LABEL_22:
    sub_30B8(v84, &qword_34D690, &qword_2D1590);
    v90 = v213;
    v91 = v212;
    goto LABEL_23;
  }

  v104 = v217;
  v105 = v198;
  (*(v217 + 32))(v198, &v82[v81], v80);
  sub_234704(&qword_34D6E8, &type metadata accessor for CommonAudio.Noun);
  v106 = v82;
  v107 = sub_2CE250();
  v108 = v89;
  v109 = *(v104 + 8);
  v109(v105, v80);
  sub_30B8(v216, &qword_34D698, &qword_2D1598);
  sub_30B8(v219, &qword_34D698, &qword_2D1598);
  v109(v108, v80);
  sub_30B8(v106, &qword_34D698, &qword_2D1598);
  v86 = v224;
  v74 = v228;
  v90 = v213;
  v91 = v212;
  if (v107)
  {
    v87 = 1;
    v76 = v226;
    v88 = v227;
    goto LABEL_35;
  }

LABEL_23:
  sub_2CD6C0();
  v204(v91, v205, v34);
  v203(v91, 0, 1, v34);
  v92 = *(v220 + 48);
  v93 = v214;
  sub_F3F4(v90, v214, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v91, &v93[v92], &qword_34D6B8, &qword_2D15B0);
  v94 = v208;
  if ((v208)(v93, 1, v34) != 1)
  {
    v103 = v199;
    sub_F3F4(v93, v199, &qword_34D6B8, &qword_2D15B0);
    if (v94(&v93[v92], 1, v34) != 1)
    {
      v110 = v225;
      v111 = &v93[v92];
      v112 = v202;
      (*(v225 + 32))(v202, v111, v34);
      sub_234704(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
      LODWORD(v220) = sub_2CE250();
      v113 = *(v110 + 8);
      v113(v112, v34);
      sub_30B8(v212, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v213, &qword_34D6B8, &qword_2D15B0);
      v113(v103, v34);
      v74 = v228;
      sub_30B8(v93, &qword_34D6B8, &qword_2D15B0);
      v76 = v226;
      v88 = v227;
      v97 = v221;
      v98 = &selRef_hasTwoOrMoreRooms;
      if (v220)
      {
        goto LABEL_37;
      }

      v87 = 1;
LABEL_32:
      v75 = v222;
      goto LABEL_43;
    }

    sub_30B8(v212, &qword_34D6B8, &qword_2D15B0);
    v95 = v214;
    sub_30B8(v213, &qword_34D6B8, &qword_2D15B0);
    (*(v225 + 8))(v103, v34);
    v97 = v221;
    v98 = &selRef_hasTwoOrMoreRooms;
    v76 = v226;
LABEL_31:
    sub_30B8(v95, &qword_34D6B0, &unk_2D4FC0);
    v87 = 1;
    v88 = v227;
    goto LABEL_32;
  }

  sub_30B8(v91, &qword_34D6B8, &qword_2D15B0);
  v95 = v214;
  sub_30B8(v90, &qword_34D6B8, &qword_2D15B0);
  v96 = v94(&v95[v92], 1, v34);
  v97 = v221;
  v98 = &selRef_hasTwoOrMoreRooms;
  v76 = v226;
  if (v96 != 1)
  {
    goto LABEL_31;
  }

  sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
LABEL_37:
  v231[3] = v223;
  v114 = v192;
  v115 = v191;
  v116 = v193;
  (*(v192 + 104))(v191, enum case for CommonAudio.Attribute.addToUnspecifiedPlaylist(_:), v193);
  sub_2CD700();
  v117 = sub_2CD910();
  (*(v114 + 8))(v115, v116);
  if (v117)
  {
    v75 = v222;
    if (v97)
    {
      sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
      v118 = v97;
      v119 = sub_2CE5E0();
      [v118 setPlaylistName:v119];
    }

    v87 = 2;
  }

  else
  {
    v87 = 1;
    v75 = v222;
  }

  v88 = v227;
LABEL_43:
  [v97 v98[285]];
  if (v86)
  {
LABEL_44:
    v120 = HIBYTE(v86) & 0xF;
    if ((v86 & 0x2000000000000000) == 0)
    {
      v120 = v215 & 0xFFFFFFFFFFFFLL;
    }

    if (!v120)
    {
      goto LABEL_74;
    }

    v121 = qword_34BF58;

    if (v121 != -1)
    {
      swift_once();
    }

    v122 = sub_3ED0(v76, static Logger.default);
    swift_beginAccess();
    v225 = *(v74 + 16);
    (v225)(v75, v122, v76);

    v123 = sub_2CDFE0();
    v124 = v74;
    v125 = sub_2CE690();

    if (os_log_type_enabled(v123, v125))
    {
      v126 = swift_slowAlloc();
      v223 = v122;
      v127 = v75;
      v128 = v126;
      v129 = swift_slowAlloc();
      v231[0] = v129;
      *v128 = 136315138;
      v230 = sub_2CDBE0();
      sub_20410(&qword_34D410, &qword_2D1250);
      v130 = sub_2CE2A0();
      v132 = sub_3F08(v130, v131, v231);

      *(v128 + 4) = v132;
      v76 = v226;
      _os_log_impl(&dword_0, v123, v125, "ConverterHelpers#convertMediaDestination targetPlaylists: %s", v128, 0xCu);
      sub_306C(v129);

      v133 = *(v124 + 8);
      v134 = v127;
      v122 = v223;
      v133(v134, v76);
    }

    else
    {

      v133 = *(v124 + 8);
      v133(v75, v76);
    }

    result = sub_2CDBE0();
    if (!result)
    {
      goto LABEL_63;
    }

    v136 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v169 = result;
      v170 = sub_2CEDA0();
      result = v169;
      if (v170)
      {
        goto LABEL_55;
      }
    }

    else if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_55:
      v223 = v133;
      if ((result & 0xC000000000000001) != 0)
      {
        v137 = sub_2CECD0();
      }

      else
      {
        if (!*(v136 + 16))
        {
          __break(1u);
          return result;
        }

        v137 = *(result + 32);
      }

      v138 = v137;

      v139 = v194;
      sub_2CDA70();
      v140 = v196;
      v141 = v195;
      v142 = v197;
      (*(v196 + 104))(v195, enum case for AudioResult.ItemSource.clientLocalDevice(_:), v197);
      sub_234704(&qword_355A80, &type metadata accessor for AudioResult.ItemSource);
      sub_2CE3E0();
      sub_2CE3E0();
      v143 = *(v140 + 8);
      v143(v141, v142);
      v143(v139, v142);
      if (v231[0] == v230)
      {
        v144 = v189;
        sub_2CDA80();
        v145 = v185;
        sub_2C9050();
        v146 = *(v200 + 8);
        v200 += 8;
        v222 = v146;
        v146(v144, v190);
        v147 = v187;
        v148 = v186;
        v149 = v188;
        (*(v187 + 104))(v186, enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:), v188);
        sub_234704(&qword_355A88, &type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType);
        sub_2CE3E0();
        sub_2CE3E0();
        v150 = *(v147 + 8);
        v150(v148, v149);
        v150(v145, v149);
        if (v231[0] == v230)
        {

          v151 = v184;
          v76 = v226;
          (v225)(v184, v122, v226);
          v152 = v138;
          v153 = sub_2CDFE0();
          v154 = sub_2CE690();

          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v156 = v151;
            v157 = swift_slowAlloc();
            v231[0] = v157;
            *v155 = 136315138;
            v158 = v189;
            sub_2CDA80();
            v159 = sub_2C9060();
            v161 = v160;
            v162 = v222;
            (v222)(v158, v190);
            v163 = sub_3F08(v159, v161, v231);
            v76 = v226;

            *(v155 + 4) = v163;
            _os_log_impl(&dword_0, v153, v154, "ConverterHelpers#convertMediaDestination correcting to destination playlist: %s", v155, 0xCu);
            sub_306C(v157);

            v223(v156, v76);
            v88 = v227;
          }

          else
          {

            v223(v151, v76);
            v88 = v227;
            v162 = v222;
          }

          v97 = v221;
          if (v221)
          {
            sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
            v166 = v97;
            v167 = v189;
            sub_2CDA80();
            sub_2C9060();
            v162(v167, v190);
            v168 = sub_2CE5E0();
            [v166 setPlaylistName:v168];
          }

          v74 = v228;
          goto LABEL_74;
        }
      }

      v76 = v226;
LABEL_63:
      v97 = v221;
      if (v221)
      {
LABEL_64:
        sub_334A0(0, &qword_34D3D0, _INPBString_ptr);
        v164 = v97;
        v165 = sub_2CE5E0();
        [v164 setPlaylistName:v165];

LABEL_73:
        v88 = v227;
        v74 = v228;
        goto LABEL_74;
      }

LABEL_72:

      goto LABEL_73;
    }

    v97 = v221;
    if (v221)
    {
      goto LABEL_64;
    }

    goto LABEL_72;
  }

LABEL_74:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v171 = sub_3ED0(v76, static Logger.default);
  swift_beginAccess();
  (*(v74 + 16))(v88, v171, v76);
  v172 = v97;
  v173 = sub_2CDFE0();
  v174 = sub_2CE690();

  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = v74;
    v177 = swift_slowAlloc();
    v229 = v97;
    v230 = v177;
    *v175 = 136315138;
    v178 = v172;
    sub_20410(&qword_355A78, &qword_2D7E90);
    v179 = sub_2CE2A0();
    v181 = sub_3F08(v179, v180, &v230);

    *(v175 + 4) = v181;
    _os_log_impl(&dword_0, v173, v174, "ConverterHelpers#convertMediaDestination mediaDestination: %s", v175, 0xCu);
    sub_306C(v177);

    (*(v176 + 8))(v227, v76);
  }

  else
  {

    (*(v74 + 8))(v88, v76);
  }

  return v97;
}

uint64_t sub_234704(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_234764(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v2 = sub_2CEDE0();
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
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_E2DC(&v25, v27);
        sub_E2DC(v27, v28);
        sub_E2DC(v28, &v26);
        result = sub_4F538(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_306C(v12);
          result = sub_E2DC(&v26, v12);
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
          result = sub_E2DC(&v26, (v2[7] + 32 * result));
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

unint64_t sub_2349AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20410(&qword_34E1C0, &unk_2D7FD0);
    v2 = sub_2CEDE0();
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
        sub_E2DC(&v27, v29);
        sub_E2DC(v29, v30);
        sub_E2DC(v30, &v28);
        result = sub_4F538(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_306C(v12);
          result = sub_E2DC(&v28, v12);
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
          result = sub_E2DC(&v28, (v2[7] + 32 * result));
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

id sub_234C04()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_235410();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(SKIDirectInvocationContext) init];
    [v7 setInputOrigin:SAInputOriginDialogButtonTapValue];
    [v7 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
    v8 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v7 payload:v6];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v9 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v9, v0);
    v10 = sub_2CDFE0();
    v11 = sub_2CE680();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "DirectInvocationUseCase#runSiriKitExecutorCommand could not build DirectInvocationPayload", v12, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v8;
}

uint64_t sub_234E48(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C67676F74;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656C62616E65;
    }

    else
    {
      v4 = 0x656C6261736964;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 0x656C67676F74;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x656C62616E65;
  if (a2 != 2)
  {
    v8 = 0x656C6261736964;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 7628147;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_234F70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x666E692065726F6DLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE90000000000006FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 7562617;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v8 = 0x666E692065726F6DLL;
    v7 = 0xE90000000000006FLL;
  }

  if (a2)
  {
    v2 = 28526;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_235094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D7269666E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463656A6572;
    }

    else
    {
      v4 = 0x6D7269666E6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6F666E4965726F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7463656A6572;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2CEEA0();
  }

  return v11 & 1;
}

uint64_t sub_2351C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000776FLL;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x73756F6976657270;
  if (a1 != 6)
  {
    v5 = 0x64656D616ELL;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x7478654E79616C70;
  if (a1 != 4)
  {
    v7 = 1954047342;
    v6 = 0xE400000000000000;
  }

  if (a1 > 5u)
  {
    v6 = v4;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x7473614C79616C70;
  v9 = 0xEB00000000747865;
  if (a1 == 2)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x4E676E6979616C70;
  }

  v10 = 0x4C676E6979616C70;
  if (a1)
  {
    v11 = 0xEB00000000747361;
  }

  else
  {
    v10 = 0x4E676E6979616C70;
    v11 = 0xEA0000000000776FLL;
  }

  if (a1 <= 1u)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (v3 <= 3)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x73756F6976657270)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v12 != 0x64656D616ELL)
        {
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v12 != 0x7478654E79616C70)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v2 = 0xE400000000000000;
      if (v12 != 1954047342)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE800000000000000;
        if (v12 != 0x7473614C79616C70)
        {
          goto LABEL_44;
        }

        goto LABEL_41;
      }

      v2 = 0xEB00000000747865;
    }

    else if (a2)
    {
      v2 = 0xEB00000000747361;
      if (v12 != 0x4C676E6979616C70)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    if (v12 != 0x4E676E6979616C70)
    {
LABEL_44:
      v14 = sub_2CEEA0();
      goto LABEL_45;
    }
  }

LABEL_41:
  if (v13 != v2)
  {
    goto LABEL_44;
  }

  v14 = 1;
LABEL_45:

  return v14 & 1;
}

id sub_235410()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 8);
  v13 = *(v1 + 56);
  if (v13 <= 1)
  {
    if (*(v1 + 56))
    {
      v46 = *(v1 + 8);

      v19 = sub_112C0(_swiftEmptyArrayStorage);
      if (v12)
      {
        *(&v60 + 1) = &type metadata for String;
        *&v59 = v2;
        *(&v59 + 1) = v12;
        sub_E2DC(&v59, v58);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v19;
        sub_237690(v58, 0x6C646E7542707061, 0xEB00000000644965, isUniquelyReferenced_nonNull_native);
        v19 = v62;
      }

      v48 = 0x80000000002DA380;
      v49 = 0xD00000000000002CLL;
    }

    else
    {
      sub_20410(&unk_353120, &unk_2D0B50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2D0090;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      *(inited + 72) = sub_20410(&qword_34CCC0, &unk_2D0DE0);
      *(inited + 48) = v2;
      *(inited + 56) = v12;

      v19 = sub_112C0(inited);
      swift_setDeallocating();
      sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
      if (v3)
      {
        v20 = objc_opt_self();
        *&v59 = 0;
        v21 = v3;
        v22 = [v20 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v59];
        v23 = v59;
        if (v22)
        {
          v24 = sub_2C8DC0();
          v26 = v25;

          *(&v60 + 1) = &type metadata for Data;
          *&v59 = v24;
          *(&v59 + 1) = v26;
          sub_E2DC(&v59, v58);
          sub_525D4(v24, v26);
          v27 = swift_isUniquelyReferenced_nonNull_native();
          v62 = v19;
          sub_237690(v58, 0x746E65746E69, 0xE600000000000000, v27);
          sub_52628(v24, v26);

          v19 = v62;
        }

        else
        {
          v50 = v23;
          sub_2C8D30();

          swift_willThrow();
        }
      }

      v49 = 0xD000000000000033;
      v48 = 0x80000000002DE4F0;
    }

    v45 = sub_237DEC(v49, v48, v19);
    goto LABEL_29;
  }

  if (v13 == 2)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_2D0090;
    *(v28 + 32) = 0x6E6F74747562;
    v29 = v28 + 32;
    v30 = 0xE600000000000000;
    *(v28 + 40) = 0xE600000000000000;
    if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v30 = 0xE800000000000000;
        v31 = 0x6F666E4965726F6DLL;
      }

      else
      {
        v31 = 0x6C65636E6163;
      }
    }

    else if (v2)
    {
      v31 = 0x7463656A6572;
    }

    else
    {
      v30 = 0xE700000000000000;
      v31 = 0x6D7269666E6F63;
    }

    *(v28 + 72) = &type metadata for String;
    v14 = "createRadioFromType";
    *(v28 + 48) = v31;
    *(v28 + 56) = v30;
    v16 = sub_112C0(v28);
    swift_setDeallocating();
    sub_30B8(v29, &qword_34CBA0, &unk_2D0FE0);
    v17 = 0xD000000000000031;
    goto LABEL_25;
  }

  if (v13 == 3)
  {
    v14 = "supportedParameters";
    sub_20410(&unk_353120, &unk_2D0B50);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_2D0090;
    *(v15 + 32) = 0x64496D657469;
    *(v15 + 72) = &type metadata for String;
    *(v15 + 40) = 0xE600000000000000;
    *(v15 + 48) = v2;
    *(v15 + 56) = v12;
    sub_D41D0(v1, &v59);
    v16 = sub_112C0(v15);
    swift_setDeallocating();
    sub_30B8(v15 + 32, &qword_34CBA0, &unk_2D0FE0);
    v17 = 0xD000000000000034;
LABEL_25:
    v45 = sub_237DEC(v17, v14 | 0x8000000000000000, v16);
LABEL_29:

    return v45;
  }

  if (qword_34BF58 != -1)
  {
    v52 = v9;
    swift_once();
    v9 = v52;
  }

  v32 = v9;
  v33 = sub_3ED0(v9, static Logger.default);
  swift_beginAccess();
  v34 = *(v7 + 16);
  v57 = v32;
  v34(v11, v33, v32);

  v35 = v2;

  v36 = sub_2CDFE0();
  v37 = sub_2CE680();
  sub_133410(v1);
  if (os_log_type_enabled(v36, v37))
  {
    v56 = v37;
    v38 = swift_slowAlloc();
    v54 = v35;
    v39 = v38;
    v55 = swift_slowAlloc();
    v62 = v55;
    *v39 = 136315138;
    v40 = *(v1 + 16);
    v59 = *v1;
    v60 = v40;
    v61[0] = *(v1 + 32);
    *(v61 + 9) = *(v1 + 41);
    v41 = v54;

    v42 = sub_2CE2A0();
    v44 = sub_3F08(v42, v43, &v62);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_0, v36, v56, "DirectInvocationUseCase#buildDirectInvocationPayload unsupported type: %s", v39, 0xCu);
    sub_306C(v55);
  }

  (*(v7 + 8))(v11, v57);
  return 0;
}

id sub_235B38()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_234C04();
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() wrapCommandInStartLocalRequest:v5];
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v8 = sub_3ED0(v0, static Logger.default);
    swift_beginAccess();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_2CDFE0();
    v10 = sub_2CE680();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v9, v10, "DirectInvocationUseCase#startLocalRequestWithRunSiriKitExecutorCommand could not build RSKE", v11, 2u);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v7;
}

uint64_t sub_235D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_E2DC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_237690(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_30B8(a1, &qword_34CEA0, &qword_2D0FC0);
    sub_236110(a2, a3, v10);

    return sub_30B8(v10, &qword_34CEA0, &qword_2D0FC0);
  }

  return result;
}

Swift::Int sub_235E00()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_235EB8()
{
  *v0;
  *v0;
  *v0;
  sub_2CE310();
}

Swift::Int sub_235F5C()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_236010@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238638(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_236040(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D7269666E6F63;
  v4 = 0xE800000000000000;
  v5 = 0x6F666E4965726F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2360B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2379B0(v5, v7) & 1;
}

double sub_236110@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_4F538(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23632C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_E2DC((*(v12 + 56) + 32 * v9), a3);
    sub_2374E0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_2361B4()
{
  v1 = v0;
  sub_20410(&qword_34E178, &unk_2D1EC0);
  v2 = *v0;
  v3 = sub_2CEDC0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_23632C()
{
  v1 = v0;
  sub_20410(&qword_34E1C0, &unk_2D7FD0);
  v2 = *v0;
  v3 = sub_2CEDC0();
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
        sub_E2FC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_E2DC(v25, (*(v4 + 56) + v22));
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

void *sub_2364D0()
{
  v1 = v0;
  sub_20410(&qword_34E180, &qword_2D7FE0);
  v2 = *v0;
  v3 = sub_2CEDC0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_236638()
{
  v1 = v0;
  sub_20410(qword_355918, &unk_2D7B70);
  v2 = *v0;
  v3 = sub_2CEDC0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_236798(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20410(&qword_34E178, &unk_2D1EC0);
  v40 = a2;
  result = sub_2CEDD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_236A58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20410(&qword_34E1C0, &unk_2D7FD0);
  v36 = a2;
  result = sub_2CEDD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_E2DC(v25, v37);
      }

      else
      {
        sub_E2FC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_E2DC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_236D10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20410(&qword_34E180, &qword_2D7FE0);
  v38 = a2;
  result = sub_2CEDD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2CEF50();
      sub_2CE310();
      result = sub_2CEF80();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_236FB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20410(&qword_355A98, &unk_2D7FE8);
  v33 = a2;
  result = sub_2CEDD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2CEF50();
      if (v22)
      {
        sub_2CEF70(1u);
        sub_2CE310();
      }

      else
      {
        sub_2CEF70(0);
      }

      result = sub_2CEF80();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_237278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20410(qword_355918, &unk_2D7B70);
  result = sub_2CEDD0();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_2CEB20(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}