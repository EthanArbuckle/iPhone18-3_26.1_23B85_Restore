uint64_t sub_1920AEE6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[73] = v1;
  v3[74] = a1;
  v4 = v2[121];
  v8 = *v1;

  v5 = v2[115];
  v6 = v2[114];

  return MEMORY[0x1EEE6DFA0](sub_1920AEF94, v6, v5);
}

uint64_t sub_1920AEF94()
{
  v197 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 904);

  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  if (v1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

    v5 = sub_192096880(v4);

    v6 = *(v5 + 16);

    if (v6)
    {

      v8 = sub_19209BB80(v7);

      v9 = *(v8 + 16);
      v141 = v1;
      v159 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        v10 = *(v0 + 752);
        v11 = *(v0 + 696);
        v155 = *(v0 + 688);
        v196 = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v9, 0);
        v151 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v12 = v8 + v151;
        v192 = v196;
        v145 = (v10 + 16);
        v148 = *(v11 + 72);
        do
        {
          v187 = v9;
          v13 = *(v0 + 952);
          v14 = *(v0 + 928);
          v177 = *(v0 + 744);
          v182 = v12;
          v15 = *(v0 + 736);
          v16 = *(v0 + 728);
          sub_192084578(v12, v16, type metadata accessor for ViewableTimelineEntry);
          v173 = *(v16 + v155[5]);
          KeyPath = swift_getKeyPath();
          v165 = swift_getKeyPath();
          v162 = swift_getKeyPath();
          v17 = v14;
          v18 = v13;
          v19 = [v17 family];
          (*v145)(v15, v16, v177);
          *(v0 + 16) = v173;
          *(v0 + 24) = v17;
          *(v0 + 32) = v18;
          *(v0 + 40) = v19;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v165;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v162;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v20 = sub_192227570();
          v21 = v16 + v155[6];
          v22 = *v21;
          v23 = *(v21 + 8);
          LOBYTE(v18) = *(v21 + 16);
          sub_19202CFFC(v16 + v155[7], v15 + v155[7], &qword_1EADEEE60, &unk_192246DC0);
          v24 = (v16 + v155[8]);
          v25 = *v24;
          v26 = v24[1];
          sub_19206A874(*v24, v26);
          sub_1920B3484(v16, type metadata accessor for ViewableTimelineEntry);
          *(v15 + v155[5]) = v20;
          v27 = v15 + v155[6];
          *v27 = v22;
          *(v27 + 8) = v23;
          *(v27 + 16) = v18;
          v28 = (v15 + v155[8]);
          *v28 = v25;
          v28[1] = v26;
          v29 = v192;
          v196 = v192;
          v31 = v192[2];
          v30 = v192[3];
          if (v31 >= v30 >> 1)
          {
            sub_19209ACA4(v30 > 1, v31 + 1, 1);
            v29 = v196;
          }

          v192 = v29;
          v32 = *(v0 + 736);
          v29[2] = v31 + 1;
          sub_192084510(v32, v29 + v151 + v31 * v148, type metadata accessor for ViewableTimelineEntry);
          v12 = v182 + v148;
          v9 = v187 - 1;
        }

        while (v187 != 1);

        v1 = v141;
      }

      else
      {

        v192 = MEMORY[0x1E69E7CC0];
      }

      v56 = *(v0 + 944);
      v57 = *(v0 + 928);
      v58 = *(v0 + 768);
      v59 = *(v0 + 760);
      v60 = *(v0 + 752);
      v61 = *(v0 + 744);
      sub_192084578(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v62 = type metadata accessor for WidgetViewCollection();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      v65 = swift_allocObject();
      v66 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v67 = sub_192224E00();
      (*(*(v67 - 8) + 56))(v65 + v66, 1, 1, v67);
      v68 = v56;
      BundleStub.init(_:)([v57 extensionIdentity], v58);
      sub_192084510(v58, v65 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v60 + 32))(v65 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v59, v61);
      v196 = v192;

      sub_19209B0C4(&v196);
      v137 = v65;
      v139 = v62;
      v69 = *(v0 + 696);
      v70 = *(v0 + 688);
      v71 = *(v0 + 680);
      v72 = *(v0 + 672);

      v73 = v196;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v73;
      *(inited + 24) = 0;
      v75 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v153 = MEMORY[0x1E69E7CC0] + v75;
      v180 = *(v72 + 32);
      v190 = *(v69 + 56);
      v190(v71 + v180, 1, 1, v70);
      v171 = v69;
      v167 = inited;
      *v71 = inited;
      v71[1] = sub_1920DA3A8;
      v185 = v71;
      v71[2] = 0;
      v76 = (v69 + 48);

      v157 = 0;
      v77 = 0;
      while (2)
      {
        result = (v190)(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v78 = v73[2];
          if (v77 == v78)
          {
            v79 = 1;
          }

          else
          {
            if (v77 >= v78)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v73 + v75 + *(v171 + 72) * v77, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v79 = 0;
            *(v167 + 24) = ++v77;
          }

          v80 = *(v0 + 688);
          v81 = *(v0 + 656);
          v82 = *(v0 + 648);
          v83 = *(v0 + 640);
          v190(v82, v79, 1, v80);
          sub_192033970(v81, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v82, v81, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v81, v83, &qword_1EADEE9F8, &unk_19222A7D0);
          v84 = *v76;
          if ((*v76)(v83, 1, v80) == 1)
          {
            break;
          }

          v85 = *(v0 + 688);
          v86 = *(v0 + 656);
          v87 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v86, v87, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v84(v87, 1, v85) == 1)
          {
            v94 = (v0 + 632);
            goto LABEL_29;
          }

          v88 = *(v0 + 688);
          v89 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v185 + v180, v89, &qword_1EADEE9F8, &unk_19222A7D0);
          v90 = v84(v89, 1, v88);
          v91 = *(v0 + 712);
          if (v90 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v94 = (v0 + 624);
            goto LABEL_29;
          }

          v92 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v92, type metadata accessor for ViewableTimelineEntry);
          v93 = sub_192225120();
          sub_1920B3484(v92, type metadata accessor for ViewableTimelineEntry);
          result = sub_1920B3484(v91, type metadata accessor for ViewableTimelineEntry);
          if ((v93 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v94 = (v0 + 640);
LABEL_29:
        sub_192033970(*v94, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v95 = *(v0 + 688);
        v96 = *(v0 + 664);
        v97 = *(v0 + 656);
        sub_19209B16C(v97, v185 + v180);
        sub_19204E300(v97, v96, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v84(v96, 1, v95) == 1)
        {
          v116 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          result = sub_192033970(v116, &qword_1EADEE9F8, &unk_19222A7D0);
          v117 = v159[3];
          if (v117 >= 2)
          {
            v118 = v117 >> 1;
            v115 = __OFSUB__(v118, v157);
            v119 = v118 - v157;
            if (v115)
            {
LABEL_63:
              __break(1u);
              return result;
            }

            v159[2] = v119;
          }

          v120 = *(v0 + 944);
          v121 = *(v0 + 928);
          v122 = *(v0 + 776);
          v123 = *(v0 + 616);
          swift_setDeallocating();
          v124 = *(v167 + 16);

          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v159;
          v137[2] = v120;
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v121;
          sub_192084578(v122, v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v120) = byte_1ED74B5B8;
          sub_1920B3484(v122, type metadata accessor for TimelineReloadPolicy);
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v120;
          *(v137 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v125 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v139;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v137;
          v126 = *(v123 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v127 = sub_1920AD1B0(v137);
          sub_192170900((v0 + 344), v127, v125, v126);
          v128 = *(v0 + 952);
          v129 = *(v0 + 936);
          v130 = *(v0 + 896);
          v131 = *(v0 + 888);
          v132 = *(v0 + 880);
          v133 = *(v0 + 872);
          v135 = *(v0 + 848);
          v136 = *(v0 + 840);
          v134 = *(v0 + 816);
          v138 = *(v0 + 832);
          v140 = *(v0 + 808);
          v142 = *(v0 + 792);
          v143 = *(v0 + 776);
          v144 = *(v0 + 768);
          v147 = *(v0 + 760);
          v150 = *(v0 + 736);
          v154 = *(v0 + 728);
          v158 = *(v0 + 720);
          v161 = *(v0 + 712);
          v164 = *(v0 + 704);
          v168 = *(v0 + 680);
          v172 = *(v0 + 664);
          v176 = *(v0 + 656);
          v181 = *(v0 + 648);
          v186 = *(v0 + 640);
          v191 = *(v0 + 632);
          v195 = *(v0 + 624);

          sub_1920B3484(v133, type metadata accessor for WidgetDescriptor);
          (*(v131 + 8))(v130, v132);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v134, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v54 = *(v0 + 8);
          goto LABEL_11;
        }

        result = sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v98 = v153;
        if (v157)
        {
          v99 = v159;
          v100 = v157 - 1;
          if (!__OFSUB__(v157, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v101 = v159[3];
        if (((v101 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v102 = v101 & 0xFFFFFFFFFFFFFFFELL;
        if (v102 <= 1)
        {
          v103 = 1;
        }

        else
        {
          v103 = v102;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v104 = *(v171 + 72);
        v99 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v99);
        if (!v104)
        {
          goto LABEL_61;
        }

        v105 = result - v75;
        if (result - v75 == 0x8000000000000000 && v104 == -1)
        {
          goto LABEL_62;
        }

        v107 = v105 / v104;
        v99[2] = v103;
        v99[3] = 2 * (v105 / v104);
        v108 = v99 + v75;
        v109 = v159;
        v110 = v159[3] >> 1;
        v111 = v110 * v104;
        if (!v159[2])
        {
LABEL_52:
          v98 = &v108[v111];
          v114 = (v107 & 0x7FFFFFFFFFFFFFFFLL) - v110;

          v115 = __OFSUB__(v114, 1);
          v100 = v114 - 1;
          if (!v115)
          {
LABEL_53:
            v157 = v100;
            sub_192084510(*(v0 + 720), v98, type metadata accessor for ViewableTimelineEntry);
            v153 = v98 + *(v171 + 72);
            v159 = v99;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v99 < v159 || v108 >= v159 + v75 + v111)
      {
        v113 = *(v0 + 688);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v99 == v159)
        {
LABEL_51:
          v109[2] = 0;
          goto LABEL_52;
        }

        v112 = *(v0 + 688);
        swift_arrayInitWithTakeBackToFront();
      }

      v109 = v159;
      goto LABEL_51;
    }
  }

  v33 = *(v0 + 952);
  v174 = *(v0 + 936);
  v188 = *(v0 + 896);
  v34 = *(v0 + 888);
  v178 = *(v0 + 872);
  v183 = *(v0 + 880);
  v193 = *(v0 + 816);
  v35 = *MEMORY[0x1E69941E8];
  v36 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v37 = *MEMORY[0x1E696A278];
  v38 = sub_192227960();
  v40 = v39;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v196 = v36;
  sub_19213DB28((v0 + 480), v38, v40, isUniquelyReferenced_nonNull_native);

  v42 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v43 = sub_192227830();

  [v42 initWithDomain:v35 code:1101 userInfo:v43];

  swift_willThrow();

  sub_1920B3484(v178, type metadata accessor for WidgetDescriptor);
  (*(v34 + 8))(v188, v183);
  sub_1920B3484(v193, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v44 = *(v0 + 896);
  v45 = *(v0 + 872);
  v46 = *(v0 + 848);
  v47 = *(v0 + 840);
  v48 = *(v0 + 832);
  v49 = *(v0 + 816);
  v50 = *(v0 + 808);
  v51 = *(v0 + 792);
  v52 = *(v0 + 776);
  v53 = *(v0 + 768);
  v146 = *(v0 + 760);
  v149 = *(v0 + 736);
  v152 = *(v0 + 728);
  v156 = *(v0 + 720);
  v160 = *(v0 + 712);
  v163 = *(v0 + 704);
  v166 = *(v0 + 680);
  v170 = *(v0 + 664);
  v175 = *(v0 + 656);
  v179 = *(v0 + 648);
  v184 = *(v0 + 640);
  v189 = *(v0 + 632);
  v194 = *(v0 + 624);

  v54 = *(v0 + 8);
LABEL_11:

  return v54();
}

uint64_t sub_1920B0148()
{
  v1 = *v0;
  v2 = *(*v0 + 1000);
  v3 = *(*v0 + 992);
  v4 = *(*v0 + 984);
  v5 = *(*v0 + 976);
  v9 = *v0;

  v1[126] = v1[76];

  v6 = v1[115];
  v7 = v1[114];

  return MEMORY[0x1EEE6DFA0](sub_1920B02E0, v7, v6);
}

uint64_t sub_1920B02E0()
{
  v198 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 904);

  v3 = *(v0 + 1008);

  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);

    v6 = sub_192096880(v5);

    v7 = *(v6 + 16);

    if (v7)
    {

      v9 = sub_19209BB80(v8);

      v10 = *(v9 + 16);
      v142 = v3;
      v160 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v11 = *(v0 + 752);
        v12 = *(v0 + 696);
        v156 = *(v0 + 688);
        v197 = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v10, 0);
        v152 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v13 = v9 + v152;
        v193 = v197;
        v146 = (v11 + 16);
        v149 = *(v12 + 72);
        do
        {
          v188 = v10;
          v14 = *(v0 + 952);
          v15 = *(v0 + 928);
          v178 = *(v0 + 744);
          v183 = v13;
          v16 = *(v0 + 736);
          v17 = *(v0 + 728);
          sub_192084578(v13, v17, type metadata accessor for ViewableTimelineEntry);
          v174 = *(v17 + v156[5]);
          KeyPath = swift_getKeyPath();
          v166 = swift_getKeyPath();
          v163 = swift_getKeyPath();
          v18 = v15;
          v19 = v14;
          v20 = [v18 family];
          (*v146)(v16, v17, v178);
          *(v0 + 16) = v174;
          *(v0 + 24) = v18;
          *(v0 + 32) = v19;
          *(v0 + 40) = v20;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v166;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v163;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v21 = sub_192227570();
          v22 = v17 + v156[6];
          v23 = *v22;
          v24 = *(v22 + 8);
          LOBYTE(v19) = *(v22 + 16);
          sub_19202CFFC(v17 + v156[7], v16 + v156[7], &qword_1EADEEE60, &unk_192246DC0);
          v25 = (v17 + v156[8]);
          v26 = *v25;
          v27 = v25[1];
          sub_19206A874(*v25, v27);
          sub_1920B3484(v17, type metadata accessor for ViewableTimelineEntry);
          *(v16 + v156[5]) = v21;
          v28 = v16 + v156[6];
          *v28 = v23;
          *(v28 + 8) = v24;
          *(v28 + 16) = v19;
          v29 = (v16 + v156[8]);
          *v29 = v26;
          v29[1] = v27;
          v30 = v193;
          v197 = v193;
          v32 = v193[2];
          v31 = v193[3];
          if (v32 >= v31 >> 1)
          {
            sub_19209ACA4(v31 > 1, v32 + 1, 1);
            v30 = v197;
          }

          v193 = v30;
          v33 = *(v0 + 736);
          v30[2] = v32 + 1;
          sub_192084510(v33, v30 + v152 + v32 * v149, type metadata accessor for ViewableTimelineEntry);
          v13 = v183 + v149;
          v10 = v188 - 1;
        }

        while (v188 != 1);

        v3 = v142;
      }

      else
      {

        v193 = MEMORY[0x1E69E7CC0];
      }

      v57 = *(v0 + 944);
      v58 = *(v0 + 928);
      v59 = *(v0 + 768);
      v60 = *(v0 + 760);
      v61 = *(v0 + 752);
      v62 = *(v0 + 744);
      sub_192084578(v3 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v63 = type metadata accessor for WidgetViewCollection();
      v64 = *(v63 + 48);
      v65 = *(v63 + 52);
      v66 = swift_allocObject();
      v67 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v68 = sub_192224E00();
      (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
      v69 = v57;
      BundleStub.init(_:)([v58 extensionIdentity], v59);
      sub_192084510(v59, v66 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v61 + 32))(v66 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v60, v62);
      v197 = v193;

      sub_19209B0C4(&v197);
      v138 = v66;
      v140 = v63;
      v70 = *(v0 + 696);
      v71 = *(v0 + 688);
      v72 = *(v0 + 680);
      v73 = *(v0 + 672);

      v74 = v197;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v74;
      *(inited + 24) = 0;
      v76 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v154 = MEMORY[0x1E69E7CC0] + v76;
      v181 = *(v73 + 32);
      v191 = *(v70 + 56);
      v191(v72 + v181, 1, 1, v71);
      v172 = v70;
      v168 = inited;
      *v72 = inited;
      v72[1] = sub_1920DA3A8;
      v186 = v72;
      v72[2] = 0;
      v77 = (v70 + 48);

      v158 = 0;
      v78 = 0;
      while (2)
      {
        result = (v191)(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v79 = v74[2];
          if (v78 == v79)
          {
            v80 = 1;
          }

          else
          {
            if (v78 >= v79)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v74 + v76 + *(v172 + 72) * v78, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v80 = 0;
            *(v168 + 24) = ++v78;
          }

          v81 = *(v0 + 688);
          v82 = *(v0 + 656);
          v83 = *(v0 + 648);
          v84 = *(v0 + 640);
          v191(v83, v80, 1, v81);
          sub_192033970(v82, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v83, v82, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v82, v84, &qword_1EADEE9F8, &unk_19222A7D0);
          v85 = *v77;
          if ((*v77)(v84, 1, v81) == 1)
          {
            break;
          }

          v86 = *(v0 + 688);
          v87 = *(v0 + 656);
          v88 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v87, v88, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v85(v88, 1, v86) == 1)
          {
            v95 = (v0 + 632);
            goto LABEL_29;
          }

          v89 = *(v0 + 688);
          v90 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v186 + v181, v90, &qword_1EADEE9F8, &unk_19222A7D0);
          v91 = v85(v90, 1, v89);
          v92 = *(v0 + 712);
          if (v91 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v95 = (v0 + 624);
            goto LABEL_29;
          }

          v93 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v93, type metadata accessor for ViewableTimelineEntry);
          v94 = sub_192225120();
          sub_1920B3484(v93, type metadata accessor for ViewableTimelineEntry);
          result = sub_1920B3484(v92, type metadata accessor for ViewableTimelineEntry);
          if ((v94 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v95 = (v0 + 640);
LABEL_29:
        sub_192033970(*v95, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v96 = *(v0 + 688);
        v97 = *(v0 + 664);
        v98 = *(v0 + 656);
        sub_19209B16C(v98, v186 + v181);
        sub_19204E300(v98, v97, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v85(v97, 1, v96) == 1)
        {
          v117 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          result = sub_192033970(v117, &qword_1EADEE9F8, &unk_19222A7D0);
          v118 = v160[3];
          if (v118 >= 2)
          {
            v119 = v118 >> 1;
            v116 = __OFSUB__(v119, v158);
            v120 = v119 - v158;
            if (v116)
            {
LABEL_63:
              __break(1u);
              return result;
            }

            v160[2] = v120;
          }

          v121 = *(v0 + 944);
          v122 = *(v0 + 928);
          v123 = *(v0 + 776);
          v124 = *(v0 + 616);
          swift_setDeallocating();
          v125 = *(v168 + 16);

          *(v138 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v160;
          v138[2] = v121;
          *(v138 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v122;
          sub_192084578(v123, v138 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v121) = byte_1ED74B5B8;
          sub_1920B3484(v123, type metadata accessor for TimelineReloadPolicy);
          *(v138 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v121;
          *(v138 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v126 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v140;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v138;
          v127 = *(v124 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v128 = sub_1920AD1B0(v138);
          sub_192170900((v0 + 344), v128, v126, v127);
          v129 = *(v0 + 952);
          v130 = *(v0 + 936);
          v131 = *(v0 + 896);
          v132 = *(v0 + 888);
          v133 = *(v0 + 880);
          v134 = *(v0 + 872);
          v136 = *(v0 + 848);
          v137 = *(v0 + 840);
          v135 = *(v0 + 816);
          v139 = *(v0 + 832);
          v141 = *(v0 + 808);
          v143 = *(v0 + 792);
          v144 = *(v0 + 776);
          v145 = *(v0 + 768);
          v148 = *(v0 + 760);
          v151 = *(v0 + 736);
          v155 = *(v0 + 728);
          v159 = *(v0 + 720);
          v162 = *(v0 + 712);
          v165 = *(v0 + 704);
          v169 = *(v0 + 680);
          v173 = *(v0 + 664);
          v177 = *(v0 + 656);
          v182 = *(v0 + 648);
          v187 = *(v0 + 640);
          v192 = *(v0 + 632);
          v196 = *(v0 + 624);

          sub_1920B3484(v134, type metadata accessor for WidgetDescriptor);
          (*(v132 + 8))(v131, v133);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v135, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v55 = *(v0 + 8);
          goto LABEL_11;
        }

        result = sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v99 = v154;
        if (v158)
        {
          v100 = v160;
          v101 = v158 - 1;
          if (!__OFSUB__(v158, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v102 = v160[3];
        if (((v102 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v103 = v102 & 0xFFFFFFFFFFFFFFFELL;
        if (v103 <= 1)
        {
          v104 = 1;
        }

        else
        {
          v104 = v103;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v105 = *(v172 + 72);
        v100 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v100);
        if (!v105)
        {
          goto LABEL_61;
        }

        v106 = result - v76;
        if (result - v76 == 0x8000000000000000 && v105 == -1)
        {
          goto LABEL_62;
        }

        v108 = v106 / v105;
        v100[2] = v104;
        v100[3] = 2 * (v106 / v105);
        v109 = v100 + v76;
        v110 = v160;
        v111 = v160[3] >> 1;
        v112 = v111 * v105;
        if (!v160[2])
        {
LABEL_52:
          v99 = &v109[v112];
          v115 = (v108 & 0x7FFFFFFFFFFFFFFFLL) - v111;

          v116 = __OFSUB__(v115, 1);
          v101 = v115 - 1;
          if (!v116)
          {
LABEL_53:
            v158 = v101;
            sub_192084510(*(v0 + 720), v99, type metadata accessor for ViewableTimelineEntry);
            v154 = v99 + *(v172 + 72);
            v160 = v100;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v100 < v160 || v109 >= v160 + v76 + v112)
      {
        v114 = *(v0 + 688);
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v100 == v160)
        {
LABEL_51:
          v110[2] = 0;
          goto LABEL_52;
        }

        v113 = *(v0 + 688);
        swift_arrayInitWithTakeBackToFront();
      }

      v110 = v160;
      goto LABEL_51;
    }
  }

  v34 = *(v0 + 952);
  v175 = *(v0 + 936);
  v189 = *(v0 + 896);
  v35 = *(v0 + 888);
  v179 = *(v0 + 872);
  v184 = *(v0 + 880);
  v194 = *(v0 + 816);
  v36 = *MEMORY[0x1E69941E8];
  v37 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v38 = *MEMORY[0x1E696A278];
  v39 = sub_192227960();
  v41 = v40;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v197 = v37;
  sub_19213DB28((v0 + 480), v39, v41, isUniquelyReferenced_nonNull_native);

  v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v44 = sub_192227830();

  [v43 initWithDomain:v36 code:1101 userInfo:v44];

  swift_willThrow();

  sub_1920B3484(v179, type metadata accessor for WidgetDescriptor);
  (*(v35 + 8))(v189, v184);
  sub_1920B3484(v194, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v45 = *(v0 + 896);
  v46 = *(v0 + 872);
  v47 = *(v0 + 848);
  v48 = *(v0 + 840);
  v49 = *(v0 + 832);
  v50 = *(v0 + 816);
  v51 = *(v0 + 808);
  v52 = *(v0 + 792);
  v53 = *(v0 + 776);
  v54 = *(v0 + 768);
  v147 = *(v0 + 760);
  v150 = *(v0 + 736);
  v153 = *(v0 + 728);
  v157 = *(v0 + 720);
  v161 = *(v0 + 712);
  v164 = *(v0 + 704);
  v167 = *(v0 + 680);
  v171 = *(v0 + 664);
  v176 = *(v0 + 656);
  v180 = *(v0 + 648);
  v185 = *(v0 + 640);
  v190 = *(v0 + 632);
  v195 = *(v0 + 624);

  v55 = *(v0 + 8);
LABEL_11:

  return v55();
}

void sub_1920B1490(uint64_t a1)
{
  v2 = [objc_opt_self() sharedListener];
  v3 = [v2 listenerEndpoint];

  v4 = objc_opt_self();
  v5 = [objc_opt_self() tokenForCurrentProcess];
  [v5 realToken];
  v12 = v15;
  v13 = v14;

  v14 = v13;
  v15 = v12;
  v6 = [v4 if:&v14 dataWithAuditToken:?];
  if (v6)
  {
    v7 = v6;
    v8 = sub_192225080();
    v10 = v9;

    v11 = sub_192225050();
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  (*(a1 + 16))(a1, v3, v11, 0);

  sub_192046ED4(v8, v10);
}

uint64_t sub_1920B15E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192227710();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_192227790();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v14 = sub_192228080();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  aBlock[4] = sub_1920B3730;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_178;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1920B18D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1922258B0();
  __swift_project_value_buffer(v10, qword_1ED74CCC8);
  v11 = sub_192225890();
  v12 = sub_192227FB0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_192028000, v11, v12, "Attaching to preview agent.", v13, 2u);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  v14 = sub_1922279A0();
  v15 = dlopen((v14 + 32), 2);

  if (v15)
  {
    v16 = dlsym(v15, "_initializePreviewAgent");
    if (v16)
    {
      v17 = v16;
      if (a3)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v18 = 0;
      }

      v25 = v17(v18);

      v26 = *(a4 + OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_previewAgent);
      *(a4 + OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_previewAgent) = v25;

      v27 = [objc_opt_self() tokenForCurrentProcess];
      (*(a5 + 16))(a5, v27);
    }

    else
    {
      v22 = sub_192225890();
      v23 = sub_192227F80();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_192028000, v22, v23, "Failed to find Preview Agent initialization function symbol", v24, 2u);
        MEMORY[0x193B0C7F0](v24, -1, -1);
      }

      (*(a5 + 16))(a5, 0);
    }

    return dlclose(v15);
  }

  else
  {
    if (dlerror())
    {
      v19 = sub_1922279F0();
      v21 = v20;
    }

    else
    {
      v21 = 0xED0000726F727265;
      v19 = 0x206E776F6E6B6E75;
    }

    v29 = sub_192225890();
    v30 = sub_192227F80();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136446466;
      *(v31 + 4) = sub_19202B8CC(a1, a2, &v35);
      *(v31 + 12) = 2082;
      v33 = sub_19202B8CC(v19, v21, &v35);

      *(v31 + 14) = v33;
      _os_log_impl(&dword_192028000, v29, v30, "Failed to open Preview Agent framework: %{public}s, %{public}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v32, -1, -1);
      MEMORY[0x193B0C7F0](v31, -1, -1);
    }

    else
    {
    }

    v34 = *(a5 + 16);

    return v34(a5, 0);
  }
}

uint64_t sub_1920B1CF8(uint64_t a1)
{
  v1[26] = a1;
  sub_192227CC0();
  v1[27] = sub_192227CB0();
  v3 = sub_192227C70();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1920B1D90, v3, v2);
}

void sub_1920B1D90()
{
  if (xmmword_1ED74CC80)
  {
    v1 = *(v0 + 208);
    v2 = *(&xmmword_1ED74CC80 + 1);
    v3 = *xmmword_1ED74CC80;
    *(v0 + 200) = xmmword_1ED74CC80;
    v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control);

    sub_1921E7020(v4, v3, v2, (v0 + 16));
    v5 = *(v0 + 208);

    v6 = *(v5 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state);
    v7 = sub_1922254E0();
    sub_1920B2B7C(v0 + 64, v0 + 112);
    if (*(v0 + 152))
    {
      v8 = *(v0 + 216);

      sub_1920B2BD8(v0 + 112);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v9 = sub_1922258B0();
      __swift_project_value_buffer(v9, qword_1EAE00810);
      v10 = sub_192225890();
      v11 = sub_192227FA0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_192028000, v10, v11, "ModifyControlStateRequest is unsupported in the API", v12, 2u);
        MEMORY[0x193B0C7F0](v12, -1, -1);
      }

      sub_1920390EC(v0 + 16);
      v13 = *(v0 + 8);

      v13();
    }

    else
    {
      sub_19203832C((v0 + 112), v0 + 160);
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v14);
      v16 = (*(v15 + 8))(v14, v15);
      *(v0 + 240) = v16;
      v17 = *(v0 + 184);
      v18 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v17);
      v19 = *(v18 + 32);
      v22 = (v19 + *v19);
      v20 = v19[1];
      v21 = swift_task_alloc();
      *(v0 + 248) = v21;
      *v21 = v0;
      v21[1] = sub_1920B20F0;

      v22(v7, v16, v17, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920B20F0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_1920B22AC;
  }

  else
  {
    v7 = sub_1920B222C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1920B222C()
{
  v1 = *(v0 + 216);

  sub_1920390EC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1920B22AC()
{
  v1 = *(v0 + 216);

  sub_1920390EC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v2 = *(v0 + 256);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1920B232C(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v3 = sub_192227710();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_192227790();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922258B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityArchiver(0);
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v35 - v18);
  result = xmmword_1ED74CC80;
  if (xmmword_1ED74CC80)
  {
    v46 = *xmmword_1ED74CC80;
    v47 = qword_1ED74CC90;
    aBlock[0] = xmmword_1ED74CC80;
    v21 = *(v14 + 24);
    v22 = qword_1EADEDEB0;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v9, qword_1EAE007D8);
    (*(v10 + 16))(v13, v23, v9);
    sub_192225810();
    v24 = v37;
    *v19 = v37;
    sub_192033A64(aBlock, (v19 + 1));
    v25 = *(v14 + 28);
    v26 = v24;
    sub_192225820();
    sub_1922257E0();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v27 = sub_192228080();
    sub_192084578(v19, v17, type metadata accessor for ActivityArchiver);
    v28 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v29 = swift_allocObject();
    sub_192084510(v17, v29 + v28, type metadata accessor for ActivityArchiver);
    v30 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    v31 = v39;
    *v30 = v38;
    v30[1] = v31;
    v47 = sub_1920B28A0;
    v48 = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    v46 = &block_descriptor;
    v32 = _Block_copy(aBlock);

    sub_192227740();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v33 = v41;
    v34 = v44;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v8, v33, v32);
    _Block_release(v32);

    (*(v43 + 8))(v33, v34);
    (*(v40 + 8))(v8, v42);
    return sub_1920B3484(v19, type metadata accessor for ActivityArchiver);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920B28A0()
{
  v1 = *(type metadata accessor for ActivityArchiver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1920A9C2C(v0 + v2, v4);
}

uint64_t sub_1920B2930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A8158(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1920B2AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920B3B44;

  return sub_1920A78B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1920B2C2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A68E8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_38Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1920B2E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A5A9C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1920B2FE8()
{
  result = qword_1ED74ABF8;
  if (!qword_1ED74ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABF8);
  }

  return result;
}

unint64_t sub_1920B303C()
{
  result = qword_1EADEEE08;
  if (!qword_1EADEEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEEE08);
  }

  return result;
}

unint64_t sub_1920B3090()
{
  result = qword_1EADEE4C0;
  if (!qword_1EADEE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE4C0);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x193B0C7F0);
  }

  return result;
}

unint64_t sub_1920B3134()
{
  result = qword_1ED74B758;
  if (!qword_1ED74B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B758);
  }

  return result;
}

uint64_t sub_1920B3188(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1922258B0() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_192225800() - 8);
  v8 = (*(v7 + 64) + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v1 + 24);
  v20 = *(v1 + 16);
  v9 = *(v1 + 40);
  v18 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = v1 + v6;
  v13 = *(v1 + v6);
  v12 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1920B3B44;

  return sub_1920A255C(a1, v20, v19, v18, v9, v10, v1 + v5, v13);
}

unint64_t sub_1920B3350()
{
  result = qword_1ED7494C0;
  if (!qword_1ED7494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7494C0);
  }

  return result;
}

unint64_t sub_1920B33A4()
{
  result = qword_1ED74A4A8;
  if (!qword_1ED74A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE58, &unk_19222B7A0);
    sub_1920B3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A4A8);
  }

  return result;
}

unint64_t sub_1920B3430()
{
  result = qword_1ED74A498;
  if (!qword_1ED74A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A498);
  }

  return result;
}

uint64_t sub_1920B3484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1920B34E4(uint64_t a1)
{
  v3 = *(sub_1922258B0() - 8);
  v4 = ((*(v3 + 80) + 24) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0) - 8) + 80);
  v6 = *(v1 + 16);

  sub_1920A2D20(a1, v6);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t objectdestroy_157Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t objectdestroy_174Tm()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1920B37D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1920A59A8;

  return sub_1920A3758(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1920B38AC(void *a1)
{
  v3 = *(sub_192225800() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);

  return sub_19209E798(a1, v5, v6, v7, v8, v1 + v4, v10);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1920B39BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1920B3A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1920B3A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920B3AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1920B3AF0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1920B3B98(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = a1[5];
    v7 = a1[3];
    swift_getAssociatedTypeWitness();
    result = sub_192228240();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920B3C7C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v6 = a3[4];
  v7 = a3[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = a3[5];
  v12 = a3[3];
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = *(v14 + 80);
  v20 = *(*(v13 - 8) + 64);
  if (!v16)
  {
    ++v20;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v9 + 64) + v19;
  v22 = v20 + 7;
  if (v18 < a2)
  {
    v23 = ((((v22 + (v21 & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
    if (v23 <= 3)
    {
      v24 = ((a2 - v18 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v27 = *(a1 + v23);
        if (v27)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v23);
      if (*(a1 + v23))
      {
LABEL_27:
        v28 = (v27 - 1) << (8 * v23);
        if (v23 <= 3)
        {
          v29 = *a1;
        }

        else
        {
          v28 = 0;
          v29 = *a1;
        }

        return v18 + (v29 | v28) + 1;
      }
    }
  }

  if (v10 == v18)
  {
    v30 = *(v9 + 48);

    return v30(a1, v10, AssociatedTypeWitness);
  }

  v32 = (a1 + v21) & ~v19;
  if (v17 == v18)
  {
    if (v16 >= 2)
    {
      v34 = (*(v15 + 48))(v32);
      if (v34 >= 2)
      {
        return v34 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v33 = *(((((v22 + v32) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v33 >= 0xFFFFFFFF)
  {
    LODWORD(v33) = -1;
  }

  return (v33 + 1);
}

void sub_1920B3F50(_WORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[4];
  v9 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  v13 = a4[5];
  v14 = a4[3];
  v15 = 0;
  v16 = *(swift_getAssociatedTypeWitness() - 8);
  v17 = *(v16 + 84);
  v18 = *(v11 + 64);
  v19 = v17 - 1;
  if (!v17)
  {
    v19 = 0;
  }

  v20 = *(v16 + 80);
  if (v19 <= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v19;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  v22 = v18 + v20;
  v23 = (v18 + v20) & ~v20;
  if (v17)
  {
    v24 = *(v16 + 64);
  }

  else
  {
    v24 = *(v16 + 64) + 1;
  }

  v25 = v24 + 7;
  v26 = ((((v25 + v23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v21 < a3)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v21 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v27 = 2;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v15 = v28;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v21 >= a2)
  {
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        *(a1 + v26) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *(a1 + v26) = 0;
    }

    else if (v15)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if (v12 == v21)
    {
      v31 = *(v11 + 56);

      v31(a1, a2, v12, AssociatedTypeWitness);
    }

    else
    {
      v32 = (a1 + v22) & ~v20;
      if (v19 == v21)
      {
        v33 = *(v16 + 56);

        v33(v32, (a2 + 1));
      }

      else
      {
        v34 = ((((v25 + v32) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v34 = a2 & 0x7FFFFFFF;
          v34[1] = 0;
        }

        else
        {
          v34[1] = (a2 - 1);
        }
      }
    }

    return;
  }

  v29 = ~v21 + a2;
  bzero(a1, v26);
  if (v26 <= 3)
  {
    v30 = HIWORD(v29) + 1;
  }

  else
  {
    v30 = 1;
  }

  if (v26 <= 3)
  {
    *a1 = v29;
    if (v15 > 1)
    {
LABEL_29:
      if (v15 == 2)
      {
        *(a1 + v26) = v30;
      }

      else
      {
        *(a1 + v26) = v30;
      }

      return;
    }
  }

  else
  {
    *a1 = v29;
    if (v15 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v15)
  {
    *(a1 + v26) = v30;
  }
}

uint64_t sub_1920B4294(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_192228240();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920B4348(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v6 + 80);
  v13 = *(*(v5 - 8) + 64);
  v14 = *(v8 + 80);
  v15 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 < a2)
  {
    v16 = ((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFFFFFFFFFF8) + 27;
    v17 = (((((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + v15) & 0xFFFFFFF8) + 27) & 0xFFFFFFFB;
    v18 = (a2 - v11 + 0xFFFFFF) >> 24;
    v19 = v17 == 3 ? v18 + 1 : 2;
    v20 = v19 < 0x100 ? 1 : 2;
    v21 = v19 >= 2 ? v20 : 0;
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (*(a1 + v16))
        {
LABEL_25:
          v23 = (v22 << 24) - 0x1000000;
          if (v17 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = 0;
            v29 = *a1;
          }

          return v11 + (v29 | v23) + 1;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (*(a1 + v16))
        {
          goto LABEL_25;
        }
      }
    }
  }

  v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(v24, v7, v5);
  }

  v27 = (v24 + v13 + v14) & ~v14;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v30 = (*(v8 + 48))(v27);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((v27 + v15) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_1920B4584(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = v9 - 1;
  if (!v9)
  {
    v13 = 0;
  }

  if (v13 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = (v11 + v12 + ((v10 + 16) & ~v10)) & ~v12;
  if (v9)
  {
    v16 = *(v8 + 64);
  }

  else
  {
    v16 = *(v8 + 64) + 1;
  }

  v17 = ((v15 + v16) & 0xFFFFFFFFFFFFFFF8) + 27;
  if (((v15 + v16) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v18 = ((a3 - v14 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a3)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v14 >= a2)
  {
    if (v21)
    {
      if (v21 != 2)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

LABEL_39:
        v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 56);

          v25(v24);
        }

        else
        {
          v26 = (v24 + v11 + v12) & ~v12;
          if (v13 == v14)
          {
            v27 = *(v8 + 56);
            v28 = a2 + 1;

            v27(v26, v28, v9);
          }

          else
          {
            v29 = (v26 + v16) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v29 + 26) = 0;
              *(v29 + 24) = 0;
              *(v29 + 8) = a2 & 0x7FFFFFFF;
              *(v29 + 16) = 0;
            }

            else
            {
              *(v29 + 16) = a2 - 1;
            }
          }
        }

        return;
      }

      *&a1[v17] = 0;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  v22 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 == 3)
  {
    v23 = HIBYTE(v22) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    if (!v21)
    {
      return;
    }
  }

  else
  {
    *a1 = v22;
    if (!v21)
    {
      return;
    }
  }

  if (v21 == 2)
  {
    *&a1[v17] = v23;
  }

  else
  {
    a1[v17] = v23;
  }
}

uint64_t sub_1920B4834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1920B488C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000192249370 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4964616F6C796170 && a2 == 0xE900000000000044 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697472656C417369 && a2 == 0xEA0000000000676ELL || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7974746168437369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1922289A0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1920B4AD4(unsigned __int8 a1)
{
  sub_192228AD0();
  MEMORY[0x193B0BA90](a1);
  return sub_192228B30();
}

uint64_t sub_1920B4B1C(unsigned __int8 a1)
{
  v1 = 1952867692;
  v2 = 0x4964616F6C796170;
  v3 = 0x697472656C417369;
  if (a1 != 4)
  {
    v3 = 0x7974746168437369;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x7468676972;
  if (a1 != 1)
  {
    v4 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1920B4BF4()
{
  sub_192228AD0();
  sub_1920B4AAC(v2, *v0);
  return sub_192228B30();
}

uint64_t sub_1920B4C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920B488C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920B4C64@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_1920B6160();
  *a2 = result;
  return result;
}

uint64_t sub_1920B4C98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1920B4CEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1920B4D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v10 = type metadata accessor for CompositeViewStates.Metadata();
  v11 = v10[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a8 + v11, 1, 1, AssociatedTypeWitness);
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 32))(a8, a1, v13);
  v14 = sub_192228240();
  result = (*(*(v14 - 8) + 40))(a8 + v11, a2, v14);
  *(a8 + v10[14]) = a3;
  v16 = (a8 + v10[15]);
  *v16 = a4;
  v16[1] = a5;
  *(a8 + v10[16]) = a6;
  *(a8 + v10[17]) = a7;
  return result;
}

uint64_t sub_1920B4EE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_192228240();
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v46 - v14;
  v54 = swift_getAssociatedTypeWitness();
  v50 = *(v54 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - v16;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  type metadata accessor for CompositeViewStates.Metadata.CodingKeys();
  swift_getWitnessTable();
  v57 = sub_192228810();
  v53 = *(v57 - 8);
  v17 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v19 = &v46 - v18;
  v51 = a2;
  v52 = a4;
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v20 = type metadata accessor for CompositeViewStates.Metadata();
  v47 = *(v20 - 8);
  v21 = *(v47 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  v56 = v22;
  v25 = *(v22 + 52);
  v26 = *(*(AssociatedTypeWitness - 8) + 56);
  v59 = v24;
  v60 = v25;
  v26(&v24[v25], 1, 1, AssociatedTypeWitness);
  v27 = a1[3];
  v28 = a1[4];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = v58;
  sub_192228B70();
  if (v29)
  {
    v32 = v62;
    v33 = v59;
    __swift_destroy_boxed_opaque_existential_1(v67);
    return (*(v61 + 8))(&v33[v60], v32);
  }

  else
  {
    v30 = v50;
    LOBYTE(v63) = 0;
    v31 = v54;
    swift_getAssociatedConformanceWitness();
    sub_1922287C0();
    v34 = v31;
    v35 = v59;
    (*(v30 + 32))(v59, v55, v34);
    LOBYTE(v63) = 1;
    swift_getAssociatedConformanceWitness();
    v36 = v49;
    v58 = v19;
    sub_192228750();
    (*(v61 + 40))(&v35[v60], v36, v62);
    LOBYTE(v63) = 2;
    v37 = sub_1922287A0();
    v38 = v56;
    *&v35[*(v56 + 56)] = v37;
    LOBYTE(v63) = 3;
    v39 = sub_192228760();
    v40 = &v35[*(v38 + 60)];
    *v40 = v39;
    v40[1] = v41;
    LOBYTE(v63) = 4;
    v42 = sub_192228740();
    v35[*(v38 + 64)] = (v42 == 2) | v42 & 1;
    LOBYTE(v63) = 5;
    v43 = v38;
    LOBYTE(v38) = sub_192228740();
    (*(v53 + 8))(v58, v57);
    v35[*(v43 + 68)] = v38 & 1;
    v44 = v47;
    (*(v47 + 16))(v48, v35, v43);
    __swift_destroy_boxed_opaque_existential_1(v67);
    return (*(v44 + 8))(v35, v43);
  }
}

uint64_t sub_1920B5564(void *a1, int *a2)
{
  v3 = *(a2 + 2);
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  v25 = *(a2 + 3);
  v26 = a2;
  v29 = v3;
  v30 = v25;
  v31 = v5;
  v32 = v4;
  v24[1] = v4;
  type metadata accessor for CompositeViewStates.Metadata.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1922288F0();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v6;
  v12 = v27;
  sub_192228B90();
  LOBYTE(v29) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = v28;
  sub_1922288C0();
  if (v13)
  {
    return (*(v33 + 8))(v9, v11);
  }

  v15 = v26[13];
  LOBYTE(v29) = 1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_192228850();
  v16 = v26;
  v17 = *(v12 + v26[14]);
  LOBYTE(v29) = 2;
  sub_1922288A0();
  v18 = v33;
  v19 = (v12 + v16[15]);
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v29) = 3;
  sub_192228860();
  v22 = *(v12 + v16[16]);
  LOBYTE(v29) = 4;
  sub_192228870();
  v23 = *(v12 + v16[17]);
  LOBYTE(v29) = 5;
  sub_192228870();
  return (*(v18 + 8))(v9, v11);
}

uint64_t sub_1920B58D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 + 24);
  v34 = *(a1 + 40);
  v35 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_192228240();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = v2;
  v17 = v2 + *(a1 + 56);
  v18 = v36;
  result = (*(v10 + 56))(v11, v10);
  if (!v18)
  {
    v36 = 0;
    v29 = v12;
    v30 = AssociatedTypeWitness;
    v31 = v11;
    v20 = 1;
    if ((*(*(v35 - 8) + 48))(v16 + *(a1 + 60), 1))
    {
LABEL_3:
      (*(*(v30 - 8) + 56))(v9, v20, 1);
      v21 = *(v16 + 8);
      v22 = v16 + *(a1 + 68);
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 17);
      v26 = *(v22 + 18);

      return sub_1920B4D40(v15, v9, v21, v23, v24, v25, v26, v33);
    }

    v27 = v36;
    (*(v34 + 56))(v35);
    if (!v27)
    {
      v36 = 0;
      v20 = 0;
      goto LABEL_3;
    }

    return (*(v32 + 8))(v15, v29);
  }

  return result;
}

uint64_t sub_1920B5B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(v3 + 8);
  *(v3 + *(a3 + 64)) = v5 > a1;
  if (v5 <= a1)
  {
    v13 = v4;
    v17 = *(a3 + 24);
    result = (*(*(v17 - 8) + 48))(v3 + *(a3 + 60), 1, v17);
    if (!result)
    {
      result = a1 - v5;
      if (__OFSUB__(a1, v5))
      {
        __break(1u);
      }

      else
      {
        return (*(*(a3 + 40) + 64))(result, a2, *(v13 + *MEMORY[0x1E697C498] + 8), *(v13 + *MEMORY[0x1E697C498] + 24), v17);
      }
    }
  }

  else
  {
    v6 = *(a3 + 56);
    v7 = *(*(a3 + 32) + 64);
    v8 = *(a3 + 16);
    v9 = v4 + *MEMORY[0x1E697C498];
    v10 = *(v9 + 8);
    v11 = *(v9 + 24);
    return v7();
  }

  return result;
}

id sub_1920B5CF8(void *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v6 = sub_192228240();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a2 + 64)) == 1)
  {
    v16 = *(a2 + 56);
    return (*(*(a2 + 32) + 72))(a1, *(a2 + 16));
  }

  else
  {
    (*(v7 + 16))(v11, v2 + *(a2 + 60), v6);
    if ((*(v12 + 48))(v11, 1, v5) == 1)
    {
      (*(v7 + 8))(v11, v6);
      return a1;
    }

    else
    {
      (*(v12 + 32))(v15, v11, v5);
      v18 = v20[1];
      v19 = (*(*(a2 + 40) + 72))(a1, v5);
      result = (*(v12 + 8))(v15, v5);
      if (!v18)
      {
        return v19;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlTemplateButton.Option.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlTemplateButton.Option.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1920B6180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1920B61C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1920B622C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v41) = a5;
  v42 = a1;
  v45 = a6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  v9 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v41 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE98, &qword_19222BCF0);
  v12 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v41 - v13;
  v15 = sub_1922261D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v20 = a2;
  }

  else
  {

    sub_192227FA0();
    v21 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v16 + 8))(v19, v15);
    v20 = v47;
  }

  v22 = [v20 _isUnitScale];

  if (v22)
  {
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA0, &qword_19222BCF8);
    (*(*(v23 - 8) + 16))(v14, v42, v23);
    swift_storeEnumTagMultiPayload();
    sub_1920B689C();
    sub_1920B6900();
    return sub_1922266E0();
  }

  if ((a3 & 1) == 0)
  {

    sub_192227FA0();
    v33 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v16 + 8))(v19, v15);
    v25 = v47;
    if ((v41 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v32 = a4;
    goto LABEL_11;
  }

  v25 = a2;
  if (v41)
  {
    goto LABEL_10;
  }

LABEL_8:

  sub_192227FA0();
  v26 = sub_192226D00();
  v41 = v15;
  v27 = a3;
  v28 = v16;
  v29 = *&a4;
  v30 = v26;
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();
  v31 = v29;
  v16 = v28;
  a3 = v27;
  v15 = v41;
  sub_192049898(v31, 0);
  (*(v16 + 8))(v19, v15);
  v32 = *&v47;
LABEL_11:
  [v25 _rawSizePixelAlignedForDisplayScale_];

  sub_1922275F0();
  sub_192225AA0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA0, &qword_19222BCF8);
  (*(*(v34 - 8) + 16))(v11, v42, v34);
  v35 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEEA8, &qword_19222BD00) + 36)];
  v36 = v48;
  *v35 = v47;
  *(v35 + 1) = v36;
  *(v35 + 2) = v49;
  if (a3)
  {
    v37 = a2;
  }

  else
  {

    sub_192227FA0();
    v38 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    sub_19209561C(a2, 0);
    (*(v16 + 8))(v19, v15);
    v37 = v46;
  }

  [v37 scaleFactor];
  v40 = v39;

  *&v11[*(v44 + 36)] = v40;
  sub_1920B682C(v11, v14);
  swift_storeEnumTagMultiPayload();
  sub_1920B689C();
  sub_1920B6900();
  sub_1922266E0();
  return sub_1920B6A6C(v11);
}

uint64_t sub_1920B682C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1920B689C()
{
  result = qword_1ED74AEA0;
  if (!qword_1ED74AEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEA0, &qword_19222BCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEA0);
  }

  return result;
}

unint64_t sub_1920B6900()
{
  result = qword_1ED74AEC0;
  if (!qword_1ED74AEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE90, &qword_19222BCE8);
    sub_1920B698C();
    sub_1920B6A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEC0);
  }

  return result;
}

unint64_t sub_1920B698C()
{
  result = qword_1ED74AED0;
  if (!qword_1ED74AED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEA8, &qword_19222BD00);
    sub_1920B689C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AED0);
  }

  return result;
}

unint64_t sub_1920B6A18()
{
  result = qword_1ED749F60;
  if (!qword_1ED749F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749F60);
  }

  return result;
}

uint64_t sub_1920B6A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE90, &qword_19222BCE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1920B6AD4()
{
  result = qword_1ED74AEB8;
  if (!qword_1ED74AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEEB0, &qword_19222BD08);
    sub_1920B689C();
    sub_1920B6900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AEB8);
  }

  return result;
}

id JindoArchivedViewCollection.environment.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for JindoArchivedViewCollection() + 20));
  *a1 = v3;

  return v3;
}

uint64_t type metadata accessor for JindoArchivedViewCollection()
{
  result = qword_1EADED008;
  if (!qword_1EADED008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t JindoArchivedViewCollection.metadata(viewIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for JindoArchivedViewCollection();
  result = v4 - *v2;
  if (__OFSUB__(v4, *v2))
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + *(v5 + 20) + 8);
    if (*(v7 + 16) && (result = sub_1920B71E4(result), (v8 & 1) != 0))
    {
      v9 = *(v7 + 56) + 88 * result;
      v10 = *(v9 + 48);
      *(a2 + 32) = *(v9 + 32);
      *(a2 + 48) = v10;
      *(a2 + 64) = *(v9 + 64);
      *(a2 + 79) = *(v9 + 79);
      v11 = *(v9 + 16);
      *a2 = *v9;
      *(a2 + 16) = v11;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0;
      *(a2 + 40) = 2;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 79) = 0;
    }
  }

  return result;
}

void JindoArchivedViewCollection.index(for:in:)(WidgetKit::JindoViewTag a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(v3 + *(type metadata accessor for JindoArchivedViewCollection() + 20));
  v7 = v10;
  v8 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, MEMORY[0x1E69E7CC0]);
  LOBYTE(a2) = v9;

  if (a2)
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {

    JindoArchivedViewCollection.index(for:environmentAtIndex:)(a1, v8);
  }
}

WidgetKit::JindoArchivedViewCollection::ViewIndex_optional __swiftcall JindoArchivedViewCollection.index(for:environmentAtIndex:)(WidgetKit::JindoViewTag a1, Swift::Int environmentAtIndex)
{
  v4 = v3;
  v7 = v2;
  v8 = type metadata accessor for JindoArchivedViewCollection();
  v19 = *(v3 + *(v8 + 20));
  v9 = v19;
  v10 = WidgetEnvironment.enumeratedCount()();

  v13 = a1 * v10;
  if ((a1 * v10) >> 64 != v13 >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = __OFADD__(*v4, v13);
  v15 = *v4 + v13;
  if (v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = v15 + environmentAtIndex;
  if (__OFADD__(v15, environmentAtIndex))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = *(v8 + 24);
  sub_1922266C0();
  sub_19205E134(&qword_1EADEDD88, MEMORY[0x1E697C620]);
  sub_192227E00();
  sub_192227E60();
  v11 = sub_192227E50();
  if (v16 < v11)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  *v7 = v18;
  *(v7 + 8) = v16 >= v11;
LABEL_11:
  result.value.base = v11;
  result.is_nil = v12;
  return result;
}

uint64_t JindoArchivedViewCollection.view(at:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1 + *(type metadata accessor for JindoArchivedViewCollection() + 24);
  return sub_1922266B0();
}

uint64_t JindoArchivedViewCollection.view(for:in:)@<X0>(WidgetKit::JindoViewTag a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v9 = type metadata accessor for JindoArchivedViewCollection();
  v18 = *(v3 + *(v9 + 20));
  v10 = v18;
  v11 = WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a2, MEMORY[0x1E69E7CC0]);
  LOBYTE(a2) = v12;

  if (a2 & 1) != 0 || (JindoArchivedViewCollection.index(for:environmentAtIndex:)(a1, v11), (v17))
  {
    v13 = 1;
LABEL_4:
    v14 = sub_192225B70();
    return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
  }

  v16 = v5 + *(v9 + 24);
  result = sub_1922266B0();
  if (!v4)
  {
    v13 = 0;
    goto LABEL_4;
  }

  return result;
}

unint64_t sub_1920B70BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  sub_192140210(v6, a1);
  v4 = sub_192228B30();

  return sub_1920B7620(a1, v4);
}

unint64_t sub_1920B7128(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  sub_1921B0544();
  v4 = sub_192228B30();

  return sub_1920B76D8(a1, v4);
}

unint64_t sub_1920B7194(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1922281C0();
  return sub_1920B7B88(a1, v5, &qword_1EADEE610, 0x1E6994260);
}

unint64_t sub_1920B71E4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_192228AC0();

  return sub_1920B7834(a1, v4);
}

uint64_t sub_1920B7250()
{
  result = type metadata accessor for JindoViewStates.Metadata(319);
  if (v1 <= 0x3F)
  {
    result = sub_1922266C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JindoArchivedViewCollection.ViewIndex(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JindoArchivedViewCollection.ViewIndex(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1920B733C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  MEMORY[0x193B0BA90](a1);
  v4 = sub_192228B30();

  return sub_1920B7834(a1, v4);
}

unint64_t sub_1920B73A8(unsigned __int8 a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_192228AD0();
  MEMORY[0x193B0BA90](a1);
  sub_1922281E0();
  v6 = sub_192228B30();

  return sub_1920B78A0(a1, a2, v6);
}

unint64_t sub_1920B7428(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  sub_192225150();
  sub_19205E134(&qword_1EADEEEC0, MEMORY[0x1E6969530]);
  sub_192227890();
  v4 = *(a1 + *(type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0) + 20));
  v5 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v5);
  v6 = sub_192228B30();

  return sub_1920B799C(a1, v6);
}

unint64_t sub_1920B74F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1922281C0();
  return sub_1920B7B88(a1, v5, &qword_1ED74C500, 0x1E6994388);
}

unint64_t sub_1920B7548(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_192228AD0();
  sub_1922279B0();

  v4 = sub_192228B30();

  return sub_1920B7C54(a1, v4);
}

unint64_t sub_1920B75D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1922281C0();
  return sub_1920B7B88(a1, v5, &qword_1EADEEEB8, 0x1E696AD98);
}

unint64_t sub_1920B7620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_1920B7D48(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1920B76D8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SymbolLookupKey(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1920B7F00(*(v2 + 48) + v13 * v11, v9, type metadata accessor for SymbolLookupKey);
      v14 = MEMORY[0x193B09AD0](v9, a1);
      sub_1920B7F68(v9, type metadata accessor for SymbolLookupKey);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1920B7834(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1920B78A0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a1;
    v9 = ~v5;
    do
    {
      v10 = (*(v7 + 48) + 16 * v6);
      if (*v10 == v8)
      {
        v11 = *(v10 + 1);
        sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
        v12 = v11;
        v13 = sub_1922281D0();

        if (v13)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1920B799C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey(0);
  v6 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v3 + 32);
  v11 = a2 & ~v10;
  if ((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_1920B7F00(*(v3 + 48) + v13 * v11, v9, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      if (sub_192225120())
      {
        v14 = *(v22 + 20);
        v15 = *&v9[v14];
        v16 = *(a1 + v14);
        sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
        v17 = v15;
        v18 = v16;
        v19 = sub_1922281D0();
        sub_1920B7F68(v9, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);

        if (v19)
        {
          return v11;
        }
      }

      else
      {
        sub_1920B7F68(v9, type metadata accessor for WidgetArchiver.ArchivingDelegate.SelectableRegionKey);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v3 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1920B7B88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_19202A7A8(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1922281D0();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1920B7C54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1 << 56;
    while (*(*(v2 + 48) + v4) << 56 != v6)
    {
      v7 = sub_1922289A0();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

uint64_t sub_1920B7D48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_192228AD0();

    sub_1922279B0();
    v17 = sub_192228B30();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1922289A0() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1920B7F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920B7F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1920B7FC8(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a2 == 2)
  {
    if (a3 >= 3u)
    {
      if (a3 == 3)
      {
        if (a1 < 4u)
        {
          v14 = *(v3 + 176);
          v15 = *(v3 + 168);
          v3 += 160;
        }

        else if (a1 - 8 >= 3)
        {
          if (a1 == 4)
          {
            v20 = *(v3 + 200);
            v21 = *(v3 + 192);
            v3 += 184;
          }

          else
          {
            v24 = *(v3 + 216);
            v25 = *(v3 + 224);
            v3 += 208;
          }
        }

        else
        {
          v6 = *(v3 + 248);
          v7 = *(v3 + 240);
          v3 += 232;
        }
      }

      else if (a1 < 4u)
      {
        v16 = *(v3 + 272);
        v17 = *(v3 + 264);
        v3 += 256;
      }

      else if (a1 - 8 >= 3)
      {
        if (a1 == 4)
        {
          v22 = *(v3 + 296);
          v23 = *(v3 + 288);
          v3 += 280;
        }

        else
        {
          v26 = *(v3 + 312);
          v27 = *(v3 + 320);
          v3 += 304;
        }
      }

      else
      {
        v10 = *(v3 + 344);
        v11 = *(v3 + 336);
        v3 += 328;
      }
    }

    else if (a1 < 4u)
    {
      v8 = *(v3 + 80);
      v9 = *(v3 + 72);
      v3 += 64;
    }

    else if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v12 = *(v3 + 104);
        v13 = *(v3 + 96);
        v3 += 88;
      }

      else
      {
        v18 = *(v3 + 120);
        v19 = *(v3 + 128);
        v3 += 112;
      }
    }

    else
    {
      v4 = *(v3 + 152);
      v5 = *(v3 + 144);
      v3 += 136;
    }
  }

  else if (a2)
  {
    if (a1 < 4u)
    {
      v3 += 32;
    }

    else if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v3 += 40;
      }

      else
      {
        v3 += 48;
      }
    }

    else
    {
      v3 += 56;
    }
  }

  else if (a1 >= 4u)
  {
    if (a1 - 8 >= 3)
    {
      if (a1 == 4)
      {
        v3 += 8;
      }

      else
      {
        v3 += 16;
      }
    }

    else
    {
      v3 += 24;
    }
  }

  return *v3;
}

double sub_1920B81C0()
{
  xmmword_1EADEEEC8 = xmmword_19222BDC0;
  unk_1EADEEED8 = xmmword_19222BDD0;
  result = 22.0;
  xmmword_1EADEEEE8 = xmmword_19222BDE0;
  unk_1EADEEEF8 = xmmword_19222BDF0;
  qword_1EADEEF08 = 0x4036000000000000;
  unk_1EADEEF10 = 0x403A000000000000;
  byte_1EADEEF18 = 0;
  qword_1EADEEF20 = 0x402A000000000000;
  unk_1EADEEF28 = 0x4030000000000000;
  byte_1EADEEF30 = 0;
  qword_1EADEEF38 = 0x402A000000000000;
  unk_1EADEEF40 = 0x4030000000000000;
  byte_1EADEEF48 = 0;
  qword_1EADEEF50 = 0x4026000000000000;
  unk_1EADEEF58 = 0x402A000000000000;
  byte_1EADEEF60 = 0;
  qword_1EADEEF68 = 0x4036000000000000;
  unk_1EADEEF70 = 0x403A000000000000;
  byte_1EADEEF78 = 0;
  qword_1EADEEF80 = 0x402A000000000000;
  unk_1EADEEF88 = 0x4033000000000000;
  byte_1EADEEF90 = 0;
  qword_1EADEEF98 = 0x402A000000000000;
  unk_1EADEEFA0 = 0x4033000000000000;
  byte_1EADEEFA8 = 0;
  qword_1EADEEFB0 = 0x4024000000000000;
  unk_1EADEEFB8 = 0x402C000000000000;
  byte_1EADEEFC0 = 0;
  dword_1EADEEFC4 = *&v4[3];
  *algn_1EADEEFC1 = *v4;
  qword_1EADEEFC8 = 0x4036000000000000;
  unk_1EADEEFD0 = 0x403A000000000000;
  byte_1EADEEFD8 = 0;
  *(&dword_1EADEEFD9 + 3) = *&v3[3];
  dword_1EADEEFD9 = *v3;
  qword_1EADEEFE0 = 0x402A000000000000;
  unk_1EADEEFE8 = 0x4034000000000000;
  byte_1EADEEFF0 = 0;
  dword_1EADEEFF1 = *v2;
  *(&dword_1EADEEFF1 + 3) = *&v2[3];
  qword_1EADEEFF8 = 0x402A000000000000;
  unk_1EADEF000 = 0x4034000000000000;
  byte_1EADEF008 = 0;
  dword_1EADEF009 = *v1;
  *(&dword_1EADEF009 + 3) = *&v1[3];
  qword_1EADEF010 = 0x4024000000000000;
  unk_1EADEF018 = 0x402E000000000000;
  byte_1EADEF020 = 0;
  return result;
}

double sub_1920B8310()
{
  xmmword_1EADEF028 = xmmword_19222BE00;
  unk_1EADEF038 = xmmword_19222BDD0;
  result = 40.0;
  xmmword_1EADEF048 = xmmword_19222BE10;
  unk_1EADEF058 = xmmword_19222BDF0;
  qword_1EADEF068 = 0x4042000000000000;
  unk_1EADEF070 = 0x4040000000000000;
  byte_1EADEF078 = 0;
  qword_1EADEF080 = 0x402A000000000000;
  unk_1EADEF088 = 0x4030000000000000;
  byte_1EADEF090 = 0;
  qword_1EADEF098 = 0x402A000000000000;
  unk_1EADEF0A0 = 0x4030000000000000;
  byte_1EADEF0A8 = 0;
  qword_1EADEF0B0 = 0x4026000000000000;
  unk_1EADEF0B8 = 0x402A000000000000;
  byte_1EADEF0C0 = 0;
  qword_1EADEF0C8 = 0x4042000000000000;
  unk_1EADEF0D0 = 0x4043000000000000;
  byte_1EADEF0D8 = 0;
  qword_1EADEF0E0 = 0x402A000000000000;
  unk_1EADEF0E8 = 0x4033000000000000;
  byte_1EADEF0F0 = 0;
  qword_1EADEF0F8 = 0x402A000000000000;
  unk_1EADEF100 = 0x4033000000000000;
  byte_1EADEF108 = 0;
  qword_1EADEF110 = 0x4024000000000000;
  unk_1EADEF118 = 0x402C000000000000;
  byte_1EADEF120 = 0;
  dword_1EADEF124 = *&v4[3];
  *algn_1EADEF121 = *v4;
  qword_1EADEF128 = 0x4042000000000000;
  unk_1EADEF130 = 0x4043000000000000;
  byte_1EADEF138 = 0;
  *(&dword_1EADEF139 + 3) = *&v3[3];
  dword_1EADEF139 = *v3;
  qword_1EADEF140 = 0x402A000000000000;
  unk_1EADEF148 = 0x4034000000000000;
  byte_1EADEF150 = 0;
  dword_1EADEF151 = *v2;
  *(&dword_1EADEF151 + 3) = *&v2[3];
  qword_1EADEF158 = 0x402A000000000000;
  unk_1EADEF160 = 0x4034000000000000;
  byte_1EADEF168 = 0;
  dword_1EADEF169 = *v1;
  *(&dword_1EADEF169 + 3) = *&v1[3];
  qword_1EADEF170 = 0x4024000000000000;
  unk_1EADEF178 = 0x402E000000000000;
  byte_1EADEF180 = 0;
  return result;
}

double sub_1920B8464()
{
  xmmword_1ED748AD0 = xmmword_19222BE20;
  unk_1ED748AE0 = xmmword_19222BE30;
  result = 24.0;
  xmmword_1ED748AF0 = xmmword_19222BE40;
  unk_1ED748B00 = xmmword_19222BDD0;
  qword_1ED748B10 = 0x4038000000000000;
  unk_1ED748B18 = 0x403C000000000000;
  byte_1ED748B20 = 0;
  qword_1ED748B28 = 0x402E000000000000;
  unk_1ED748B30 = 0x4032000000000000;
  byte_1ED748B38 = 0;
  qword_1ED748B40 = 0x402E000000000000;
  unk_1ED748B48 = 0x4032000000000000;
  byte_1ED748B50 = 0;
  qword_1ED748B58 = 0x4026000000000000;
  unk_1ED748B60 = 0x402A000000000000;
  byte_1ED748B68 = 0;
  qword_1ED748B70 = 0x4038000000000000;
  unk_1ED748B78 = 0x403C000000000000;
  byte_1ED748B80 = 0;
  qword_1ED748B88 = 0x402C000000000000;
  unk_1ED748B90 = 0x4034000000000000;
  byte_1ED748B98 = 0;
  qword_1ED748BA0 = 0x402C000000000000;
  unk_1ED748BA8 = 0x4034000000000000;
  byte_1ED748BB0 = 0;
  qword_1ED748BB8 = 0x4024000000000000;
  unk_1ED748BC0 = 0x402C000000000000;
  byte_1ED748BC8 = 0;
  dword_1ED748BCC = *&v4[3];
  *algn_1ED748BC9 = *v4;
  qword_1ED748BD0 = 0x4038000000000000;
  unk_1ED748BD8 = 0x403C000000000000;
  byte_1ED748BE0 = 0;
  *(&dword_1ED748BE1 + 3) = *&v3[3];
  dword_1ED748BE1 = *v3;
  qword_1ED748BE8 = 0x402C000000000000;
  unk_1ED748BF0 = 0x4035000000000000;
  byte_1ED748BF8 = 0;
  dword_1ED748BF9 = *v2;
  *(&dword_1ED748BF9 + 3) = *&v2[3];
  qword_1ED748C00 = 0x402C000000000000;
  unk_1ED748C08 = 0x4035000000000000;
  byte_1ED748C10 = 0;
  dword_1ED748C11 = *v1;
  *(&dword_1ED748C11 + 3) = *&v1[3];
  qword_1ED748C18 = 0x4024000000000000;
  unk_1ED748C20 = 0x402E000000000000;
  byte_1ED748C28 = 0;
  return result;
}

double sub_1920B85B4()
{
  xmmword_1ED748DA8 = xmmword_19222BE50;
  unk_1ED748DB8 = xmmword_19222BE30;
  result = 42.0;
  xmmword_1ED748DC8 = xmmword_19222BE60;
  unk_1ED748DD8 = xmmword_19222BDD0;
  qword_1ED748DE8 = 0x4043000000000000;
  unk_1ED748DF0 = 0x4042000000000000;
  byte_1ED748DF8 = 0;
  qword_1ED748E00 = 0x402E000000000000;
  unk_1ED748E08 = 0x4032000000000000;
  byte_1ED748E10 = 0;
  qword_1ED748E18 = 0x402E000000000000;
  unk_1ED748E20 = 0x4032000000000000;
  byte_1ED748E28 = 0;
  qword_1ED748E30 = 0x4026000000000000;
  unk_1ED748E38 = 0x402A000000000000;
  byte_1ED748E40 = 0;
  qword_1ED748E48 = 0x4043000000000000;
  unk_1ED748E50 = 0x4044000000000000;
  byte_1ED748E58 = 0;
  qword_1ED748E60 = 0x402C000000000000;
  unk_1ED748E68 = 0x4034000000000000;
  byte_1ED748E70 = 0;
  qword_1ED748E78 = 0x402C000000000000;
  unk_1ED748E80 = 0x4034000000000000;
  byte_1ED748E88 = 0;
  qword_1ED748E90 = 0x4024000000000000;
  unk_1ED748E98 = 0x402C000000000000;
  byte_1ED748EA0 = 0;
  dword_1ED748EA4 = *&v4[3];
  *algn_1ED748EA1 = *v4;
  qword_1ED748EA8 = 0x4043000000000000;
  unk_1ED748EB0 = 0x4044000000000000;
  byte_1ED748EB8 = 0;
  *(&dword_1ED748EB9 + 3) = *&v3[3];
  dword_1ED748EB9 = *v3;
  qword_1ED748EC0 = 0x402C000000000000;
  unk_1ED748EC8 = 0x4035000000000000;
  byte_1ED748ED0 = 0;
  dword_1ED748ED1 = *v2;
  *(&dword_1ED748ED1 + 3) = *&v2[3];
  qword_1ED748ED8 = 0x402C000000000000;
  unk_1ED748EE0 = 0x4035000000000000;
  byte_1ED748EE8 = 0;
  dword_1ED748EE9 = *v1;
  *(&dword_1ED748EE9 + 3) = *&v1[3];
  qword_1ED748EF0 = 0x4024000000000000;
  unk_1ED748EF8 = 0x402E000000000000;
  byte_1ED748F00 = 0;
  return result;
}

double sub_1920B8708()
{
  xmmword_1ED749560 = xmmword_19222BE70;
  *algn_1ED749570 = xmmword_19222BE80;
  result = 26.0;
  xmmword_1ED749580 = xmmword_19222BE90;
  unk_1ED749590 = xmmword_19222BEA0;
  qword_1ED7495A0 = 0x403A000000000000;
  unk_1ED7495A8 = 0x403E000000000000;
  byte_1ED7495B0 = 0;
  qword_1ED7495B8 = 0x4031000000000000;
  unk_1ED7495C0 = 0x4034000000000000;
  byte_1ED7495C8 = 0;
  qword_1ED7495D0 = 0x4031000000000000;
  unk_1ED7495D8 = 0x4034000000000000;
  byte_1ED7495E0 = 0;
  qword_1ED7495E8 = 0x402A000000000000;
  unk_1ED7495F0 = 0x402E000000000000;
  byte_1ED7495F8 = 0;
  qword_1ED749600 = 0x403A000000000000;
  unk_1ED749608 = 0x403E000000000000;
  byte_1ED749610 = 0;
  qword_1ED749618 = 0x402E000000000000;
  unk_1ED749620 = 0x4035000000000000;
  byte_1ED749628 = 0;
  qword_1ED749630 = 0x402E000000000000;
  unk_1ED749638 = 0x4035000000000000;
  byte_1ED749640 = 0;
  qword_1ED749648 = 0x4026000000000000;
  unk_1ED749650 = 0x4030000000000000;
  byte_1ED749658 = 0;
  dword_1ED74965C = *&v4[3];
  *algn_1ED749659 = *v4;
  qword_1ED749660 = 0x403A000000000000;
  unk_1ED749668 = 0x403E000000000000;
  byte_1ED749670 = 0;
  *(&dword_1ED749671 + 3) = *&v3[3];
  dword_1ED749671 = *v3;
  qword_1ED749678 = 0x402E000000000000;
  unk_1ED749680 = 0x4036800000000000;
  byte_1ED749688 = 0;
  dword_1ED749689 = *v2;
  *(&dword_1ED749689 + 3) = *&v2[3];
  qword_1ED749690 = 0x402E000000000000;
  unk_1ED749698 = 0x4036800000000000;
  byte_1ED7496A0 = 0;
  dword_1ED7496A1 = *v1;
  *(&dword_1ED7496A1 + 3) = *&v1[3];
  qword_1ED7496A8 = 0x4026000000000000;
  unk_1ED7496B0 = 0x4031000000000000;
  byte_1ED7496B8 = 0;
  return result;
}

double sub_1920B885C()
{
  xmmword_1ED748F18 = xmmword_19222BEB0;
  unk_1ED748F28 = xmmword_19222BE80;
  result = 44.0;
  xmmword_1ED748F38 = xmmword_19222BEC0;
  unk_1ED748F48 = xmmword_19222BEA0;
  qword_1ED748F58 = 0x4044000000000000;
  unk_1ED748F60 = 0x4043000000000000;
  byte_1ED748F68 = 0;
  qword_1ED748F70 = 0x4031000000000000;
  unk_1ED748F78 = 0x4034000000000000;
  byte_1ED748F80 = 0;
  qword_1ED748F88 = 0x4031000000000000;
  unk_1ED748F90 = 0x4034000000000000;
  byte_1ED748F98 = 0;
  qword_1ED748FA0 = 0x402A000000000000;
  unk_1ED748FA8 = 0x402E000000000000;
  byte_1ED748FB0 = 0;
  qword_1ED748FB8 = 0x4044000000000000;
  unk_1ED748FC0 = 0x4045000000000000;
  byte_1ED748FC8 = 0;
  qword_1ED748FD0 = 0x402E000000000000;
  unk_1ED748FD8 = 0x4035000000000000;
  byte_1ED748FE0 = 0;
  qword_1ED748FE8 = 0x402E000000000000;
  unk_1ED748FF0 = 0x4035000000000000;
  byte_1ED748FF8 = 0;
  qword_1ED749000 = 0x4026000000000000;
  unk_1ED749008 = 0x4030000000000000;
  byte_1ED749010 = 0;
  dword_1ED749014 = *&v4[3];
  *algn_1ED749011 = *v4;
  qword_1ED749018 = 0x4044000000000000;
  unk_1ED749020 = 0x4045000000000000;
  byte_1ED749028 = 0;
  *(&dword_1ED749029 + 3) = *&v3[3];
  dword_1ED749029 = *v3;
  qword_1ED749030 = 0x402E000000000000;
  unk_1ED749038 = 0x4036800000000000;
  byte_1ED749040 = 0;
  dword_1ED749041 = *v2;
  *(&dword_1ED749041 + 3) = *&v2[3];
  qword_1ED749048 = 0x402E000000000000;
  unk_1ED749050 = 0x4036800000000000;
  byte_1ED749058 = 0;
  dword_1ED749059 = *v1;
  *(&dword_1ED749059 + 3) = *&v1[3];
  qword_1ED749060 = 0x4026000000000000;
  unk_1ED749068 = 0x4031000000000000;
  byte_1ED749070 = 0;
  return result;
}

double sub_1920B89DC(unsigned __int8 a1)
{
  (*(v1 + 200))(v10);
  if (qword_1ED74A010 != -1)
  {
    swift_once();
  }

  v3 = byte_1ED74C7A8;
  if (qword_1ED7499A8 != -1)
  {
    swift_once();
  }

  v4 = off_1ED7499B0;
  v5 = *(off_1ED7499B0 + 2);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  v7 = v4[24];
  if (v7 == 5)
  {
    v8 = sub_192225200();
    LOBYTE(v7) = sub_1921981B0(v8);

    v4[24] = v7;
  }

  os_unfair_lock_unlock(*(v5 + 16));

  return sub_1920B7FC8(a1, v3, v7);
}

double sub_1920B8B18(uint64_t a1)
{
  v3 = sub_192226F10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E6980EE8] || v8 == *MEMORY[0x1E6980F00] || v8 == *MEMORY[0x1E6980F08] || v8 == *MEMORY[0x1E6980F10])
  {
    (*(v1 + 208))();
  }

  else if (v8 == *MEMORY[0x1E6980F38])
  {
    sub_192226E40();
  }

  else if (v8 == *MEMORY[0x1E6980EF0] || v8 == *MEMORY[0x1E6980EF8] || v8 == *MEMORY[0x1E6980F18])
  {
    sub_192226E30();
  }

  else if (v8 == *MEMORY[0x1E6980F30] || v8 == *MEMORY[0x1E6980F20] || v8 == *MEMORY[0x1E6980F28])
  {
    sub_192226E20();
  }

  else
  {
    sub_192226E30();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    return v18;
  }

  return result;
}

unint64_t sub_1920B8D54(void **a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19222B480;
  v7 = *a1;
  *(inited + 32) = *a1;
  *(inited + 64) = a2;
  *(inited + 40) = a3;
  v8 = v7;
  v9 = sub_19207614C(inited);
  swift_setDeallocating();
  sub_192076558(inited + 32);
  return v9;
}

void *sub_1920B8E64@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8A8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1EADEEEC8, 0x159uLL);
}

void *sub_1920B8F00@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1EADEE8B0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1EADEF028, 0x159uLL);
}

void *sub_1920B8F9C@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748AC8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748AD0, 0x159uLL);
}

void *sub_1920B9038@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748DA0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748DA8, 0x159uLL);
}

void *sub_1920B90D4@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED749558 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED749560, 0x159uLL);
}

void *sub_1920B9170@<X0>(void *a1@<X8>)
{
  v2 = a1;
  if (qword_1ED748F10 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return memcpy(v2, &xmmword_1ED748F18, 0x159uLL);
}

uint64_t WidgetTexture.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t _s9WidgetKit11ControlSizeV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_1920B9414()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

unint64_t sub_1920B945C()
{
  result = qword_1EADEF198;
  if (!qword_1EADEF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF198);
  }

  return result;
}

unint64_t sub_1920B94D4()
{
  result = qword_1EADEF1A0;
  if (!qword_1EADEF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1A0);
  }

  return result;
}

unint64_t sub_1920B9528()
{
  result = qword_1EADEF1A8;
  if (!qword_1EADEF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1A8);
  }

  return result;
}

uint64_t type metadata accessor for ActivityViewCollection()
{
  result = qword_1EADED820;
  if (!qword_1EADED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1920B95FC()
{
  sub_1920B96B8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityMetricsDefinition();
    if (v1 <= 0x3F)
    {
      sub_1920B9710();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1920B96B8()
{
  if (!qword_1EADED8B0)
  {
    type metadata accessor for JindoViewCollection();
    v0 = sub_192228240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADED8B0);
    }
  }
}

void sub_1920B9710()
{
  if (!qword_1ED74AF50)
  {
    v0 = sub_192227C40();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74AF50);
    }
  }
}

unint64_t sub_1920B9764()
{
  result = qword_1EADEF1B8;
  if (!qword_1EADEF1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF1C0, &unk_192232A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1B8);
  }

  return result;
}

uint64_t sub_1920B97C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  v3 = *(*(v111 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v111);
  v112 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v116 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C8, &qword_19222C230);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v108 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v107 = &v100 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v104 = (&v100 - v17);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v100 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v115 = (&v100 - v20);
  v110 = type metadata accessor for JindoViewStates(0);
  v119 = *(v110 - 8);
  v21 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v102 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v23 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v25 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for ActivityMetricsDefinition();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ActivityViewStates(0);
  v31 = *(*(v30 - 1) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v106 = (&v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1EEE9AC00](v32);
  v101 = (&v100 - v35);
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v100 - v36;
  v37 = type metadata accessor for ActivityViewCollection();
  v38 = v37[5];
  v39 = *(v1 + v38);
  KeyPath = swift_getKeyPath();
  v41 = sub_19209A170(KeyPath);

  if (v41)
  {
    if (*(v41 + 16))
    {
      v42 = *(v41 + 32);
    }

    else
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = 1;
  }

  v43 = v42 | ~sub_19206CB1C(v42, *(v2 + v37[8]));
  v44 = *(v2 + v37[6]);
  sub_1920BA32C(v2 + v37[7], v29, type metadata accessor for ActivityMetricsDefinition);
  v45 = *(v2 + v38);
  v46 = v30[8];
  v113 = v37;
  v47 = v120;
  v120[v46] = 0;
  *&v47[v30[9]] = MEMORY[0x1E69E7CC8];
  v117 = v2;
  v48 = v30[10];
  v49 = type metadata accessor for MetricsRequest();
  (*(*(v49 - 8) + 56))(&v47[v48], 1, 1, v49);
  v50 = v30[11];
  v51 = sub_1922261D0();
  (*(*(v51 - 8) + 56))(&v47[v50], 1, 1, v51);
  sub_1920BA32C(v29, &v47[v30[6]], type metadata accessor for ActivityMetricsDefinition);
  v47[v30[12]] = v43 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1D0, &qword_19222C260);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_19222B480;
  *(v52 + 32) = v44;
  v53 = *(v114 + 20);
  v54 = v45;

  v55 = v117;
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v25 = v54;
  v56 = sub_19209C05C(v25);
  sub_19205BCCC(v25, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_19205BCCC(v29, type metadata accessor for ActivityMetricsDefinition);
  v57 = &v47[v30[7]];
  *v57 = v52;
  v57[1] = v56;
  *v47 = *(v56 + 16);
  *(v47 + 1) = v54;
  v58 = v116;
  sub_1920BA2BC(v55, v116);
  v59 = type metadata accessor for JindoViewCollection();
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    sub_192033970(v58, &qword_1EADEF1B0, qword_19222C1D0);
    v60 = *(v119 + 56);
    v61 = v115;
    v62 = v110;
    v60(v115, 1, 1, v110);
    sub_192033970(v61, &qword_1EADEF1C8, &qword_19222C230);
    v63 = v55;
    v64 = v106;
    sub_1920BA32C(v47, v106, type metadata accessor for ActivityViewStates);
    v65 = v107;
    v60(v107, 1, 1, v62);
    v66 = v112;
    v67 = v63 + v113[9];
    v68 = *(v67 + 8);
    v117 = *v67;
    v113 = v68;
    LODWORD(v116) = *(v67 + 16);
    LODWORD(v115) = *(v67 + 17);
    LODWORD(v114) = *(v67 + 18);
    v69 = v111;
    v70 = *(v111 + 60);
    v60(&v112[v70], 1, 1, v62);
    v66[v69[16]] = 1;
    sub_1920BA32C(v64, &v66[v69[14]], type metadata accessor for ActivityViewStates);
    v71 = v113;

    sub_1920BA394(v65, &v66[v70]);
    v72 = *v64;
    sub_19205BCCC(v64, type metadata accessor for ActivityViewStates);
    *(v66 + 1) = v72;
    v73 = &v66[v69[17]];
    *v73 = v117;
    *(v73 + 1) = v71;
    v73[16] = v116;
    v73[17] = v115;
    v73[18] = v114;
    v74 = v108;
    sub_19204E300(v65, v108, &qword_1EADEF1C8, &qword_19222C230);
    if ((*(v119 + 48))(v74, 1, v62) == 1)
    {
      result = sub_192033970(v74, &qword_1EADEF1C8, &qword_19222C230);
      v76 = 0;
    }

    else
    {
      v76 = *v74;
      result = sub_19205BCCC(v74, type metadata accessor for JindoViewStates);
    }

    v81 = v72 + v76;
    v58 = v120;
    if (!__OFADD__(v72, v76))
    {
      v82 = v112;
LABEL_20:
      *v82 = v81;
      sub_19204E300(v82, v109, &qword_1EADEF1C0, &unk_192232A90);
      v80 = type metadata accessor for ActivityViewStates;
      return sub_19205BCCC(v58, v80);
    }

    __break(1u);
  }

  else
  {
    v77 = v113;
    v78 = v115;
    v79 = v118;
    sub_192191874(v115);
    if (v79)
    {
      sub_19205BCCC(v47, type metadata accessor for ActivityViewStates);
      v80 = type metadata accessor for JindoViewCollection;
      return sub_19205BCCC(v58, v80);
    }

    v118 = 0;
    sub_19205BCCC(v58, type metadata accessor for JindoViewCollection);
    v83 = *(v119 + 56);
    v84 = v110;
    v83(v78, 0, 1, v110);
    v85 = v78;
    v86 = v102;
    sub_1920BA404(v85, v102);
    v87 = v101;
    sub_1920BA32C(v47, v101, type metadata accessor for ActivityViewStates);
    v88 = v103;
    sub_1920BA404(v86, v103);
    v83(v88, 0, 1, v84);
    v89 = v117 + v77[9];
    v90 = *(v89 + 8);
    v117 = *v89;
    v113 = v90;
    LODWORD(v116) = *(v89 + 16);
    LODWORD(v115) = *(v89 + 17);
    LODWORD(v114) = *(v89 + 18);
    v91 = v111;
    v92 = *(v111 + 60);
    v93 = v105;
    v83(&v105[v92], 1, 1, v84);
    *(v93 + v91[16]) = 1;
    sub_1920BA32C(v87, v93 + v91[14], type metadata accessor for ActivityViewStates);
    v94 = v113;

    sub_1920BA394(v88, v93 + v92);
    v95 = *v87;
    sub_19205BCCC(v87, type metadata accessor for ActivityViewStates);
    v93[1] = v95;
    v96 = v93 + v91[17];
    *v96 = v117;
    *(v96 + 1) = v94;
    v96[16] = v116;
    v96[17] = v115;
    v96[18] = v114;
    v97 = v104;
    sub_19204E300(v88, v104, &qword_1EADEF1C8, &qword_19222C230);
    if ((*(v119 + 48))(v97, 1, v84) == 1)
    {
      result = sub_192033970(v97, &qword_1EADEF1C8, &qword_19222C230);
      v98 = 0;
    }

    else
    {
      v98 = *v97;
      result = sub_19205BCCC(v97, type metadata accessor for JindoViewStates);
    }

    v99 = __OFADD__(v95, v98);
    v81 = v95 + v98;
    v58 = v120;
    if (!v99)
    {
      v82 = v93;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1920BA2BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1B0, qword_19222C1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920BA394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C8, &qword_19222C230);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JindoViewStates(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920BA468()
{
  dyld_get_active_platform();
  base_platform = dyld_get_base_platform();
  result = dyld_get_program_sdk_version();
  LODWORD(qword_1ED74BAA0) = base_platform;
  HIDWORD(qword_1ED74BAA0) = result;
  return result;
}

uint64_t (*static SystemVersion.currentProcessSDKVersion.modify())()
{
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1920BA574()
{
  result = dyld_get_program_sdk_version();
  dword_1EADEF1D8 = -1;
  *algn_1EADEF1DC = result;
  return result;
}

double sub_1920BA5C0@<D0>(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t sub_1920BA644(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = v4;
  return result;
}

uint64_t (*static SystemVersion.currentProcessSDKVersionForAnyPlatforms.modify())()
{
  if (qword_1EADEE8C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1920BA734@<D0>(void *a1@<X3>, double *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t sub_1920BA798(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v7;
  return result;
}

uint64_t sub_1920BA800()
{
  result = getWKSystemVersionSDK_AzulE();
  qword_1EADEF1E0 = result;
  return result;
}

uint64_t sub_1920BA848()
{
  result = getWKSystemVersionSDK_Sky();
  qword_1ED74C3B8 = result;
  return result;
}

uint64_t sub_1920BA890()
{
  result = getWKSystemVersionSDK_Sydney();
  qword_1ED74A640 = result;
  return result;
}

uint64_t sub_1920BA8D8()
{
  result = getWKSystemVersionSDK_SydneyC();
  qword_1EADEDA48 = result;
  return result;
}

uint64_t sub_1920BA944()
{
  result = getWKSystemVersionSDK_DawnC();
  qword_1ED749268 = result;
  return result;
}

uint64_t sub_1920BA98C()
{
  result = getWKSystemVersionSDK_Crystal();
  qword_1ED749D60 = result;
  return result;
}

uint64_t sub_1920BA9D4()
{
  result = getWKSystemVersionSDK_CrystalE();
  qword_1EADEDA38 = result;
  return result;
}

uint64_t sub_1920BAA40()
{
  result = getWKSystemVersionSDK_LuckB();
  qword_1EADEF1E8 = result;
  return result;
}

double sub_1920BAA88@<D0>(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

uint64_t SystemVersion.description.getter()
{
  v1 = v0[1];
  v4 = *v0;
  sub_1920BAB98();
  v5 = sub_192227A40();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v2 = sub_192227A40();
  MEMORY[0x193B0A990](v2);

  return v5;
}

unint64_t sub_1920BAB98()
{
  result = qword_1EADEF1F0;
  if (!qword_1EADEF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF1F0);
  }

  return result;
}

void SystemVersion.forAnyPlatform()(_DWORD *a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = -1;
  a1[1] = v2;
}

uint64_t sub_1920BAC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_1922289A0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7038067 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1922289A0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1920BAD10(uint64_t a1)
{
  v2 = sub_19203D1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920BAD4C(uint64_t a1)
{
  v2 = sub_19203D1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1F8, &qword_19222C268);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19203D1C8();
  sub_192228B90();
  v15 = 0;
  sub_1922288E0();
  if (!v2)
  {
    v14 = 1;
    sub_1922288E0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SystemVersion.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228B00();
  return sub_192228B00();
}

uint64_t SystemVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1920BAFC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

uint64_t sub_1920BB01C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228B00();
  return sub_192228B00();
}

uint64_t sub_1920BB058()
{
  v1 = *v0;
  v2 = v0[1];
  sub_192228AD0();
  sub_192228B00();
  sub_192228B00();
  return sub_192228B30();
}

unint64_t sub_1920BB0B4()
{
  result = qword_1EADEF208;
  if (!qword_1EADEF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF208);
  }

  return result;
}

uint64_t sub_1920BB108()
{
  v1 = v0[1];
  v4 = *v0;
  sub_1920BAB98();
  v5 = sub_192227A40();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v2 = sub_192227A40();
  MEMORY[0x193B0A990](v2);

  return v5;
}

unint64_t sub_1920BB1F8()
{
  result = qword_1EADEF210;
  if (!qword_1EADEF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF210);
  }

  return result;
}

uint64_t WidgetViewMetadata.cornerGaugeSegmented.setter(char a1)
{
  result = type metadata accessor for WidgetViewMetadata();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t WidgetViewMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetViewMetadata();
  v3 = v2[7];
  v4 = sub_192225020();
  v10 = *(*(v4 - 8) + 56);
  v10(a1 + v3, 1, 1, v4);
  v5 = v2[8];
  v6 = sub_192226BA0();
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  v8 = v2[9];
  v7(a1 + v8, 1, 1, v6);
  v11 = v2[10];
  *a1 = 0;
  *(a1 + 2) = 0;
  sub_192033970(a1 + v3, &qword_1EADEEE10, &unk_19222B630);
  v10(a1 + v3, 1, 1, v4);
  sub_192033970(a1 + v5, &qword_1EADEF218, &qword_19223B3F0);
  v7(a1 + v5, 1, 1, v6);
  sub_192033970(a1 + v8, &qword_1EADEF218, &qword_19223B3F0);
  result = (v7)(a1 + v8, 1, 1, v6);
  *(a1 + v11) = 2;
  return result;
}

uint64_t sub_1920BB7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1920BBBF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1920BB7FC(uint64_t a1)
{
  v2 = sub_19204D70C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920BB838(uint64_t a1)
{
  v2 = sub_19204D70C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetViewMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF220, &qword_19222C4B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204D70C();
  sub_192228B90();
  v11 = *v3;
  v27 = 0;
  sub_192228870();
  if (!v2)
  {
    v12 = v3[1];
    v26 = 1;
    sub_192228870();
    v13 = v3[2];
    v25 = 2;
    sub_192228840();
    v14 = type metadata accessor for WidgetViewMetadata();
    v15 = v14[7];
    v24 = 3;
    sub_192225020();
    sub_19203D6B4(&qword_1ED74BB38, MEMORY[0x1E6968FB0]);
    sub_192228850();
    v16 = v14[8];
    v23 = 4;
    sub_192226BA0();
    sub_19203D6B4(&qword_1ED74AE98, MEMORY[0x1E697CB40]);
    sub_192228850();
    v17 = v14[9];
    v22 = 5;
    sub_192228850();
    v18 = v3[v14[10]];
    v21 = 6;
    sub_192228840();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1920BBB9C()
{
  result = qword_1EADEF230;
  if (!qword_1EADEF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEF230);
  }

  return result;
}

uint64_t sub_1920BBBF0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000192249630 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000192249650 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000192249670 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1922289A0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000192249690 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001922496B0 == a2 || (sub_1922289A0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001922496D0 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1922289A0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t WidgetEnvironment.matches(_:ignoring:)(char *a1, char *a2)
{
  v5 = *v2;
  v6 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (*(*(v5 + v6) + 16))
  {
    WidgetEnvironment.findEnumeratedIndex(matching:ignoring:)(a1, a2);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_1920BBEE4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for WidgetDescriptor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_19207F348(v13, v11);
      v15 = a1(v11);
      if (v3)
      {
        return sub_19205BD2C(v11, type metadata accessor for WidgetDescriptor);
      }

      if (v15)
      {
        break;
      }

      sub_19205BD2C(v11, type metadata accessor for WidgetDescriptor);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1920C55EC(v11, v19, type metadata accessor for WidgetDescriptor);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t sub_1920BC09C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v66 = a1;
  v67 = a2;
  v60 = a3;
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v59 - v11;
  v12 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v59 - v19;
  v21 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19202CFFC(v71, v20, &qword_1EADEF258, &qword_19222C6C8);
  v63 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator;
  v26 = v16;
  v61 = v16;
  sub_1920C55EC(v20, v16, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v27 = *v16;
  v28 = *(v13 + 28);
  v29 = *(v22 + 28);
  v62 = v4;
  v30 = *(v4 + 16);
  v70 = v29;
  v71 = v3;
  v68 = v30;
  v69 = v4 + 16;
  v30(v25 + v29, v26 + v28, v3);
  v31 = v27;
  v32 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v73 = v31;
  v33 = v31;

  v34 = sub_192056340(&v73, v32);
  v36 = v35;
  v38 = v37;

  *v25 = v34;
  v25[1] = v36;
  v25[2] = v38;
  sub_19205BD2C(v61, v63);
  if (v36 >> 62)
  {
LABEL_29:
    v39 = sub_192228340();
  }

  else
  {
    v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v71;
  if (v39 >= 1)
  {
    v41 = (v62 + 32);
    v63 = (v62 + 8);
    while (1)
    {

      if ((sub_19205F34C(v39 - 1) & 1) == 0)
      {
        v42 = *v25;

        v43 = MEMORY[0x1E69E7CC0];
        *v25 = MEMORY[0x1E69E7CC0];
        v44 = v25[1];

        v25[1] = v43;
        v45 = v25[2];

        v25[2] = v43;
      }

      v68(v10, v25 + v70, v40);
      if (v36 >> 62)
      {
        v46 = sub_192228340();
        if (!v46)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v46 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v46)
        {
          goto LABEL_16;
        }
      }

      if (v46 < 1)
      {
        __break(1u);
        goto LABEL_29;
      }

      for (i = 0; i != v46; ++i)
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x193B0B410](i, v36);
        }

        else
        {
          v48 = *(v36 + 8 * i + 32);
        }

        (*(**(v48 + 16) + 112))(v10);
      }

LABEL_16:

      v49 = *v41;
      v50 = v64;
      v40 = v71;
      (*v41)(v64, v10, v71);
      v51 = v65;
      v49(v65, v50, v40);
      v52 = v72;
      v53 = v66(v51);
      if (v52)
      {
        (*v63)(v51, v40);
        return sub_19205BD2C(v25, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
      }

      if (v53)
      {
        sub_19205BD2C(v25, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
        v58 = v60;
        v49(v60, v51, v40);
        v56 = v58;
        v55 = 0;
        return (*(v62 + 56))(v56, v55, 1, v40);
      }

      v72 = 0;
      (*v63)(v51, v40);
      v36 = v25[1];
      if (v36 >> 62)
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          v54 = v25[1];
        }

        v39 = sub_192228340();
        if (v39 <= 0)
        {
          break;
        }
      }

      else
      {
        v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39 <= 0)
        {
          break;
        }
      }
    }
  }

  sub_19205BD2C(v25, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  v55 = 1;
  v56 = v60;
  return (*(v62 + 56))(v56, v55, 1, v40);
}

uint64_t WidgetEnvironment.environmentValues(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v70 = a2;
  v75 = sub_1922261D0();
  v71 = *(v75 - 8);
  v77 = v71;
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF250, &qword_19222C6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v66 - v8;
  v73 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF260, &qword_19222C6D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v66 - v18);
  v20 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = *v2;
  v28 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (!*(*&v27[v28] + 16))
  {
    return (*(v77 + 56))(v70, 1, 1, v75);
  }

  v68 = v26;
  v29 = v77;
  v30 = v19 + *(v73 + 20);
  result = _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v19 = v27;
  if (v76 < 0)
  {
    goto LABEL_28;
  }

  *(v19 + *(v16 + 36)) = v76;
  v67 = v19;
  sub_19202CFFC(v19, v15, &qword_1EADEF258, &qword_19222C6C8);
  v69 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator;
  sub_1920C55EC(v15, v11, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v32 = *v11;
  v33 = *(v73 + 20);
  v34 = *(v20 + 20);
  v35 = v29 + 16;
  v72 = *(v29 + 16);
  v73 = v34;
  v36 = v75;
  v77 = v35;
  v72(v23 + v34, v11 + v33, v75);
  v37 = v27;
  v38 = v32;
  v39 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v78 = v38;
  v40 = v38;

  v41 = sub_192056340(&v78, v39);
  v43 = v42;
  v45 = v44;
  v46 = v36;

  *v23 = v41;
  v23[1] = v43;
  v23[2] = v45;
  sub_19205BD2C(v11, v69);
  if (!v76)
  {
LABEL_24:
    v62 = &unk_1EADEF260;
    v63 = &qword_19222C6D0;
    v64 = v67;
LABEL_25:
    sub_192033970(v64, v62, v63);
    v65 = v68;
    sub_1920C55EC(v23, v68, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
    WidgetEnvironment.EnvironmentValuesEnumerator.Iterator.next()(v70);
    return sub_19205BD2C(v65, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  }

  v47 = 0;
  v48 = (v71 + 32);
  v71 += 56;
  while (1)
  {
    v50 = v23[1];
    if (v50 >> 62)
    {
      if (v50 < 0)
      {
        v60 = v23[1];
      }

      v51 = sub_192228340();
      if (v51 <= 0)
      {
LABEL_23:
        sub_192033970(v67, &unk_1EADEF260, &qword_19222C6D0);
        v61 = v74;
        (*v71)(v74, 1, 1, v46);
        v62 = &qword_1EADEF250;
        v63 = &qword_19222C6C0;
        v64 = v61;
        goto LABEL_25;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51 <= 0)
      {
        goto LABEL_23;
      }
    }

    v52 = v51 - 1;

    if ((sub_19205F34C(v52) & 1) == 0)
    {
      v53 = *v23;

      v54 = MEMORY[0x1E69E7CC0];
      *v23 = MEMORY[0x1E69E7CC0];
      v55 = v23[1];

      v23[1] = v54;
      v56 = v23[2];

      v23[2] = v54;
    }

    result = (v72)(v5, v23 + v73, v46);
    if (v50 >> 62)
    {
      break;
    }

    v57 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_14;
    }

LABEL_5:

    v49 = v74;
    v46 = v75;
    (*v48)(v74, v5, v75);
    (*v71)(v49, 0, 1, v46);
    sub_192033970(v49, &qword_1EADEF250, &qword_19222C6C0);
    if (++v47 == v76)
    {
      goto LABEL_24;
    }
  }

  result = sub_192228340();
  v57 = result;
  if (!result)
  {
    goto LABEL_5;
  }

LABEL_14:
  if (v57 >= 1)
  {
    for (i = 0; i != v57; ++i)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v59 = MEMORY[0x193B0B410](i, v50);
      }

      else
      {
        v59 = *(v50 + 8 * i + 32);
      }

      (*(**(v59 + 16) + 112))(v5);
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1920BCCB0(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_192224EA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF500, &unk_19222D8E0);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_19202CFFC(v16, v13, &qword_1EADEECD0, &qword_1922363D0);
    sub_19202CFFC(v32, &v13[v19], &qword_1EADEECD0, &qword_1922363D0);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_19202CFFC(v13, v33, &qword_1EADEECD0, &qword_1922363D0);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1920C80A8(&qword_1EADECF18, 255, MEMORY[0x1E6968278]);
    v29 = sub_192227910();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_192033970(v13, &qword_1EADEF500, &unk_19222D8E0);
    goto LABEL_5;
  }

  sub_192033970(v13, &qword_1EADEECD0, &qword_1922363D0);
  return 1;
}

uint64_t sub_1920BD078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_192225150();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_192033970(a1, &qword_1EADEED10, &unk_19222B0F0);
    sub_1921E0E14(a2, a3, v10);

    return sub_192033970(v10, &qword_1EADEED10, &unk_19222B0F0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_19213E56C(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1920BD250@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0450, &unk_19222F5A0) + 48);
  *a2 = a1;
  sub_192228430();
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v5 = sub_192228910();
  MEMORY[0x193B0A990](v5);

  sub_192228480();
  v6 = *MEMORY[0x1E69E6AF8];
  v7 = sub_1922284A0();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t sub_1920BD3C0(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  v3 = *a3;
  v4 = *a1;

  sub_19207762C(v4, v3);
}

uint64_t sub_1920BD420(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1ED74BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = sub_192046E20(a1, off_1ED74BF08);
  v4 = swift_endAccess();
  if (v3)
  {
    (*(**(v3 + 16) + 80))(v4);
    v7 = sub_1920702EC(v5, v6);

    if (v7)
    {
      MEMORY[0x1EEE9AC00](v8);
      v14 = *(v2 + *MEMORY[0x1E69E6CE8] + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
      sub_192031E74(&qword_1ED748A58, &qword_1EADEECB0, &unk_19222B0A0);
      v9 = sub_192227A90();
    }

    else
    {

      return 0;
    }

    return v9;
  }

  else
  {
    sub_192228400();
    MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
    v11 = (v2 + *MEMORY[0x1E69E6CE8]);
    v12 = *v11;
    v13 = v11[1];
    sub_192228580();
    sub_192228970();
    result = sub_192228620();
    __break(1u);
  }

  return result;
}

uint64_t (*WidgetEnvironment.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v3 = *v2;
  *a1 = sub_1920BD420(a2);
  return sub_1920BD724;
}

uint64_t sub_1920BD724(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = *a1;

    sub_19207762C(v4, v2);
  }

  else
  {
    v6 = a1[1];

    sub_19207762C(v4, v2);
  }
}

Swift::Void __swiftcall WidgetEnvironment.filterForExtensions()()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  v3 = *v0;
  sub_19204C8C0(0, KeyPath);

  v4 = swift_getKeyPath();
  sub_1920537A8();
  v5 = *v1;
  sub_19204C8C0(0, v4);
}

uint64_t WidgetEnvironment.filteredForExtensions()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = v3;
  KeyPath = swift_getKeyPath();
  v5 = v3;
  sub_1920537A8();
  v6 = *a1;
  sub_19204C8C0(0, KeyPath);

  v7 = swift_getKeyPath();
  sub_1920537A8();
  v8 = *a1;
  sub_19204C8C0(0, v7);
}

Swift::Void __swiftcall WidgetEnvironment.filterForControlArchiving()()
{
  v1 = v0;
  WidgetEnvironment.filterForArchiving()();
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  v3 = *v0;
  sub_19204C8C0(0, KeyPath);

  v4 = swift_getKeyPath();
  sub_1920537A8();
  v5 = *v1;
  sub_1920C5B1C(0, v4);

  v6 = swift_getKeyPath();
  sub_1920537A8();
  v7 = *v1;
  sub_1920C5E74(0, v6);

  v8 = swift_getKeyPath();
  sub_1920537A8();
  v9 = *v1;
  sub_1920C61CC(0, v8);

  v10 = swift_getKeyPath();
  sub_1920537A8();
  v11 = *v1;
  sub_1920583A4(0, v10);

  v12 = swift_getKeyPath();
  sub_1920537A8();
  v13 = *v1;
  sub_1920C65A4(0, v12);

  v14 = swift_getKeyPath();
  sub_1920537A8();
  v15 = *v1;
  sub_1920C5654(0, v14);
}

Swift::Void __swiftcall WidgetEnvironment.filterForArchiving()()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  sub_1920537A8();
  v3 = *v0;
  sub_19204C8C0(0, KeyPath);

  v4 = swift_getKeyPath();
  sub_1920537A8();
  v5 = *v1;
  sub_19204C8C0(0, v4);

  v6 = swift_getKeyPath();
  sub_1920537A8();
  v7 = *v1;
  sub_19204C8C0(0, v6);

  v8 = swift_getKeyPath();
  sub_1920537A8();
  v9 = *v1;
  sub_19204CC80(0, v8);

  v10 = swift_getKeyPath();
  sub_1920537A8();
  v11 = *v1;
  sub_19204C8C0(0, v10);

  v12 = swift_getKeyPath();
  sub_1920537A8();
  v13 = *v1;
  sub_1920C5654(0, v12);
}

void WidgetEnvironment.filteredForControlArchiving()(void **a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3;
  WidgetEnvironment.filterForControlArchiving()();
}

uint64_t sub_1920BDBDC@<X0>(_BYTE *a1@<X8>)
{
  sub_1920C86F0();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1920BDC2C(char *a1)
{
  v2 = *a1;
  sub_1920C86F0();
  return sub_1922261F0();
}

void WidgetEnvironment.filteredForArchiving()(void **a1@<X8>)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = v3;
  WidgetEnvironment.filterForArchiving()();
}

uint64_t sub_1920BDCEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDD9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDDF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226070();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BDF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19202CFFC(a1, &v6 - v4, &qword_1EADEF290, &qword_19222CA80);
  return sub_192225F50();
}

uint64_t sub_1920BE058@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192225FB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1920BE0D8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v11 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = &property descriptor for StorageBackedControlArchive.state;
  v58 = v5 + 64;
  v59 = v5;
  v57 = v11;
  v63 = v10;
  v60 = v2;
  if (v9)
  {
    while (1)
    {
      v14 = v2;
      v16 = __clz(__rbit64(v9)) | (v12 << 6);
      v17 = (*(v5 + 48) + 24 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = *(*(v5 + 56) + 8 * v16);
      v22 = objc_allocWithZone(MEMORY[0x1E695DFA0]);
      v64 = v18;

      v23 = v21;
      v66 = [v22 v13[372]];
      swift_beginAccess();
      v24 = *(v14 + v63);
      v65 = v19;
      if (!*(v24 + 16))
      {
        goto LABEL_12;
      }

LABEL_9:
      v25 = sub_19204437C(v19, v20);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        [v66 unionOrderedSet_];
      }

      else
      {
LABEL_12:
        swift_endAccess();
      }

      v28 = [objc_allocWithZone(MEMORY[0x1E695DFB8]) v13[372]];
      v2 = v60;
      swift_beginAccess();
      v29 = *(v60 + v63);
      if (v28)
      {
        break;
      }

      v43 = sub_19204437C(v65, v20);
      if (v44)
      {
        v45 = v43;
        v62 = v23;
        v46 = *(v60 + v63);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v60 + v63);
        *(v60 + v63) = 0x8000000000000000;
        v6 = v58;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_19207804C();
        }

        v49 = (*(v48 + 48) + 24 * v45);
        v50 = *v49;
        v51 = v49[2];

        sub_1920781D4(v45, v48);

        *(v60 + v63) = v48;
        v23 = v62;
        v5 = v59;
        goto LABEL_31;
      }

      v5 = v59;
LABEL_30:
      v6 = v58;
LABEL_31:
      v9 &= v9 - 1;
      swift_endAccess();

      v13 = &property descriptor for StorageBackedControlArchive.state;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v61 = v23;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v60 + v63);
    *(v60 + v63) = 0x8000000000000000;
    v32 = sub_19204437C(v65, v20);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      goto LABEL_35;
    }

    v38 = v33;
    if (v31[3] >= v37)
    {
      if ((v30 & 1) == 0)
      {
        v55 = v32;
        sub_19207804C();
        v32 = v55;
      }

      v39 = v65;
      if (v38)
      {
LABEL_18:
        v41 = v31[7];
        v42 = *(v41 + 8 * v32);
        *(v41 + 8 * v32) = v28;

LABEL_28:
        v2 = v60;
        v23 = v61;
        *(v60 + v63) = v31;
        v5 = v59;
        v11 = v57;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1920454D4(v37, v30);
      v39 = v65;
      v32 = sub_19204437C(v65, v20);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_37;
      }

      if (v38)
      {
        goto LABEL_18;
      }
    }

    v31[(v32 >> 6) + 8] |= 1 << v32;
    v52 = (v31[6] + 24 * v32);
    *v52 = v64;
    v52[1] = v39;
    v52[2] = v20;
    *(v31[7] + 8 * v32) = v28;
    v53 = v31[2];
    v36 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v36)
    {
      goto LABEL_36;
    }

    v31[2] = v54;
    goto LABEL_28;
  }

LABEL_5:
  while (1)
  {
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
    }

    v9 = *(v6 + 8 * v15);
    ++v12;
    if (v9)
    {
      v14 = v2;
      v12 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_192228A40();
  __break(1u);
  return result;
}

uint64_t WidgetEnvironment.DifferenceUsage.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t sub_1920BE5A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, char a7, uint64_t a8)
{
  v50 = a3;
  v49 = &v50;
  result = sub_192071474(sub_192071BAC, v48, a6);
  if ((result & 1) != 0 || !a4)
  {
    return result;
  }

  v15 = 0;
  v16 = a5 & 1;
  v17 = *(a4 + 16);
  v18 = (a4 + 32);
  while (v17 != v15)
  {
    v19 = v18[v15++];
    if (v19 == (a5 & 1))
    {
      return result;
    }
  }

  v47 = a1;
  if (v17)
  {
    v46 = a2;
    v53 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v17, 0);
    v20 = v53;
    do
    {
      v21 = *v18;
      v50 = 0;
      v51 = 0xE000000000000000;
      v52 = v21;
      result = sub_1922285A0();
      v22 = v50;
      v23 = v51;
      v53 = v20;
      v25 = v20[2];
      v24 = v20[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        result = sub_192071C64((v24 > 1), v25 + 1, 1);
        v20 = v53;
      }

      v20[2] = v26;
      v27 = &v20[2 * v25];
      v27[4] = v22;
      v27[5] = v23;
      ++v18;
      --v17;
    }

    while (v17);
    v16 = a5 & 1;
    a2 = v46;
    if (v26 > 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    if (!v26)
    {
      __break(1u);
      return result;
    }

    v28 = a2;
    v33 = v20[4];
    v32 = v20[5];

    goto LABEL_17;
  }

  v20 = MEMORY[0x1E69E7CC0];
  v26 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v26 <= 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  v28 = a2;
  v50 = 91;
  v51 = 0xE100000000000000;
  v53 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v29 = sub_1922278A0();
  v31 = v30;

  MEMORY[0x193B0A990](v29, v31);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v33 = v50;
  v32 = v51;
LABEL_17:
  if (a7)
  {
    v34 = 0x64657269736564;
  }

  else
  {
    v34 = 7824750;
  }

  if (a7)
  {
    v35 = 0xE700000000000000;
  }

  else
  {
    v35 = 0xE300000000000000;
  }

  if (a7)
  {
    v36 = 0x6C62616C69617661;
  }

  else
  {
    v36 = 6581359;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  if (a7)
  {
    v37 = 0xE900000000000065;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  sub_192228400();

  v50 = v47;
  v51 = v28;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v36, v37);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v33, v32);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  LOBYTE(v53) = v16;
  v38 = sub_192227990();
  MEMORY[0x193B0A990](v38);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v39 = v50;
  v40 = v51;
  swift_beginAccess();
  v41 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_192071CD0(0, *(v41 + 2) + 1, 1, v41);
    *(a8 + 16) = v41;
  }

  v44 = *(v41 + 2);
  v43 = *(v41 + 3);
  if (v44 >= v43 >> 1)
  {
    v41 = sub_192071CD0((v43 > 1), v44 + 1, 1, v41);
  }

  *(v41 + 2) = v44 + 1;
  v45 = &v41[16 * v44];
  *(v45 + 4) = v39;
  *(v45 + 5) = v40;
  *(a8 + 16) = v41;
  return swift_endAccess();
}

uint64_t sub_1920BEA14(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v16 = *(v54 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - v18;
  v57 = &v58;
  v58 = a3;
  result = sub_192071474(sub_192071BAC, v56, a6);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  result = sub_1920BCCB0(a5, a4);
  if (result)
  {
    return result;
  }

  v51 = a7;
  v52 = a1;
  v53 = a2;
  v20 = *(a4 + 16);
  if (v20)
  {
    v49 = a5;
    v50 = a8;
    v60 = MEMORY[0x1E69E7CC0];
    sub_192071C64(0, v20, 0);
    v21 = v60;
    v22 = a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v23 = *(v16 + 72);
    do
    {
      v24 = v55;
      sub_19202CFFC(v22, v55, &qword_1EADEECD0, &qword_1922363D0);
      v58 = 0;
      v59 = 0xE000000000000000;
      sub_1922285A0();
      v26 = v58;
      v25 = v59;
      result = sub_192033970(v24, &qword_1EADEECD0, &qword_1922363D0);
      v60 = v21;
      v28 = v21[2];
      v27 = v21[3];
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        result = sub_192071C64((v27 > 1), v28 + 1, 1);
        v21 = v60;
      }

      v21[2] = v29;
      v30 = &v21[2 * v28];
      v30[4] = v26;
      v30[5] = v25;
      v22 += v23;
      --v20;
    }

    while (v20);
    a5 = v49;
    a8 = v50;
    if (v29 > 1)
    {
      goto LABEL_10;
    }

LABEL_12:
    if (!v29)
    {
      __break(1u);
      return result;
    }

    v34 = v21[4];
    v35 = v21[5];

    goto LABEL_14;
  }

  v21 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v29 <= 1)
  {
    goto LABEL_12;
  }

LABEL_10:
  v58 = 91;
  v59 = 0xE100000000000000;
  v60 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v31 = sub_1922278A0();
  v33 = v32;

  MEMORY[0x193B0A990](v31, v33);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v34 = v58;
  v35 = v59;
LABEL_14:
  if (v51)
  {
    v36 = 0x64657269736564;
  }

  else
  {
    v36 = 7824750;
  }

  if (v51)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE300000000000000;
  }

  if (v51)
  {
    v38 = 0x6C62616C69617661;
  }

  else
  {
    v38 = 6581359;
  }

  v58 = 0;
  v59 = 0xE000000000000000;
  if (v51)
  {
    v39 = 0xE900000000000065;
  }

  else
  {
    v39 = 0xE300000000000000;
  }

  sub_192228400();

  v58 = v52;
  v59 = v53;

  MEMORY[0x193B0A990](10272, 0xE200000000000000);
  MEMORY[0x193B0A990](v38, v39);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  MEMORY[0x193B0A990](v34, v35);

  MEMORY[0x193B0A990](0x202E737620, 0xE500000000000000);
  MEMORY[0x193B0A990](v36, v37);

  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  sub_19202CFFC(a5, v55, &qword_1EADEECD0, &qword_1922363D0);
  v40 = sub_192227990();
  MEMORY[0x193B0A990](v40);

  MEMORY[0x193B0A990](41, 0xE100000000000000);
  v41 = v58;
  v42 = v59;
  swift_beginAccess();
  v43 = *(a8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_192071CD0(0, *(v43 + 2) + 1, 1, v43);
    *(a8 + 16) = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    v43 = sub_192071CD0((v45 > 1), v46 + 1, 1, v43);
  }

  *(v43 + 2) = v46 + 1;
  v47 = &v43[16 * v46];
  *(v47 + 4) = v41;
  *(v47 + 5) = v42;
  *(a8 + 16) = v43;
  return swift_endAccess();
}

uint64_t sub_1920BEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1920BF19C()
{
  (*(**(*v0 + 16) + 80))();
  sub_1922279B0();
}

uint64_t sub_1920BF21C()
{
  v1 = *v0;
  v2 = sub_192228AD0();
  (*(**(v1 + 16) + 80))(v2);
  sub_1922279B0();

  return sub_192228B30();
}

uint64_t sub_1920BF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  (*(**(a2 + 16) + 120))(a4, *(*a1 + 24), a3);
  if (v4)
  {

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v7, 1, a3);
}

uint64_t sub_1920BF39C()
{
  v1 = sub_192224FC0();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v54 = v0;
  v6 = *(v0 + v5);
  v7 = *(v6 + 16);
  v48 = v5;
  if (v7)
  {
    v8 = sub_19204C340(v7, 0);
    v9 = sub_1920C4A2C(&v61, v8 + 4, v7, v6);
    swift_bridgeObjectRetain_n();
    sub_19204C3D0();
    if (v9 != v7)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v5 = v48;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v61 = v8;
  sub_192058734(&v61);

  v10 = v61;
  v8 = *(v61 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC8];
  }

  v11 = 0;
  v53 = v61 + 32;
  v45 = (v55 + 8);
  v52 = MEMORY[0x1E69E7CC8];
  v47 = v61;
  v46 = v8;
  while (1)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = v54;
    v13 = (v53 + 24 * v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = v13[2];
    swift_beginAccess();
    v17 = *(v12 + v5);
    v18 = *(v17 + 16);
    v55 = v15;
    v19 = v16;
    v20 = v14;

    if (v18)
    {
      v21 = sub_19204437C(v14, v19);
      if (v22)
      {
        break;
      }
    }

    swift_endAccess();
LABEL_8:

LABEL_9:
    if (++v11 == v8)
    {

      return v52;
    }
  }

  v23 = *(*(v17 + 56) + 8 * v21);
  swift_endAccess();
  v24 = v23;
  if ([v24 count] <= 1)
  {

    goto LABEL_8;
  }

  v25 = [v24 count];
  v60 = MEMORY[0x1E69E7CC0];
  sub_192071C64(0, v25 & ~(v25 >> 63), 0);
  v8 = v60;
  sub_192227F60();
  if (v25 < 0)
  {
    goto LABEL_32;
  }

  v51 = v19;
  v50 = v20;
  v49 = v24;
  if (!v25)
  {
LABEL_23:
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0]);
    while (1)
    {
      sub_192228270();
      if (!v59)
      {
        break;
      }

      sub_19203BEDC(&v58, &v61);
      sub_19202A98C(&v61, &v58);
      swift_dynamicCast();
      v34 = *(v57 + 24);

      v36 = (*(**(v34 + 16) + 80))(v35);
      v38 = v37;

      __swift_destroy_boxed_opaque_existential_1(&v61);
      v60 = v8;
      v40 = v8[2];
      v39 = v8[3];
      if (v40 >= v39 >> 1)
      {
        sub_192071C64((v39 > 1), v40 + 1, 1);
        v8 = v60;
      }

      v8[2] = v40 + 1;
      v41 = &v8[2 * v40];
      v41[4] = v36;
      v41[5] = v38;
    }

    (*v45)(v4, v56);
    sub_192033970(&v58, &unk_1EADEF330, &unk_19222CD40);
    v42 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v42;
    sub_19213DDE4(v8, v50, v51, isUniquelyReferenced_nonNull_native);

    swift_bridgeObjectRelease_n();
    v52 = v61;
    v5 = v48;
    v10 = v47;
    v8 = v46;
    goto LABEL_9;
  }

  sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_192228270();
    if (!v62)
    {
      break;
    }

    sub_19202A98C(&v61, &v58);
    swift_dynamicCast();
    v26 = *(v57 + 24);

    v28 = (*(**(v26 + 16) + 80))(v27);
    v30 = v29;

    __swift_destroy_boxed_opaque_existential_1(&v61);
    v60 = v8;
    v32 = v8[2];
    v31 = v8[3];
    if (v32 >= v31 >> 1)
    {
      sub_192071C64((v31 > 1), v32 + 1, 1);
      v8 = v60;
    }

    v8[2] = v32 + 1;
    v33 = &v8[2 * v32];
    v33[4] = v28;
    v33[5] = v30;
    if (!--v25)
    {
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

char *sub_1920BF9DC()
{
  v1 = sub_192224FC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = *(v7 + 16);
  v58 = v0;
  v51 = v6;
  if (v8)
  {
    v57 = v2;
    v9 = sub_19204C340(v8, 0);
    v59 = sub_1920C4A2C(&v64, v9 + 4, v8, v7);
    swift_bridgeObjectRetain_n();
    sub_19204C3D0();
    if (v59 != v8)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v2 = v57;
    v0 = v58;
    v6 = v51;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = v9;
  sub_192058734(&v64);

  v9 = v64;
  v57 = *(v64 + 16);
  if (!v57)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v10 = 0;
  v56 = v64 + 32;
  v49 = (v2 + 8);
  v55 = MEMORY[0x1E69E7CC0];
  v50 = v64;
  while (1)
  {
    if (v10 >= v9[2])
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v11 = (v56 + 24 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    swift_beginAccess();
    v15 = *(v0 + v6);
    v16 = *(v15 + 16);
    v59 = v13;

    if (v16)
    {
      v17 = sub_19204437C(v12, v14);
      if (v18)
      {
        break;
      }
    }

    swift_endAccess();

LABEL_8:
    ++v10;
    v0 = v58;
    if (v10 == v57)
    {

      return v55;
    }
  }

  *(&v54 + 1) = v14;
  v19 = *(*(v15 + 56) + 8 * v17);
  swift_endAccess();
  v20 = v19;
  v21 = [v20 count];
  v63 = MEMORY[0x1E69E7CC0];
  sub_192071C64(0, v21 & ~(v21 >> 63), 0);
  v22 = v63;
  sub_192227F60();
  if (v21 < 0)
  {
    goto LABEL_34;
  }

  *&v54 = v12;
  v52 = v20;
  v53 = v10;
  if (!v21)
  {
LABEL_19:
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0]);
    sub_192228270();
    if (v62)
    {
      v30 = v52;
      do
      {
        sub_19203BEDC(&v61, &v64);
        sub_19202A98C(&v64, &v61);
        swift_dynamicCast();
        v31 = *(v60 + 24);

        v33 = (*(**(v31 + 16) + 80))(v32);
        v35 = v34;

        __swift_destroy_boxed_opaque_existential_1(&v64);
        v63 = v22;
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_192071C64((v36 > 1), v37 + 1, 1);
          v22 = v63;
        }

        *(v22 + 16) = v37 + 1;
        v38 = v22 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        sub_192228270();
      }

      while (v62);
    }

    else
    {
      v30 = v52;
    }

    (*v49)(v5, v1);
    sub_192033970(&v61, &unk_1EADEF330, &unk_19222CD40);
    *&v64 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
    v39 = sub_1922278A0();
    v41 = v40;

    v64 = v54;

    MEMORY[0x193B0A990](5972026, 0xE300000000000000);
    MEMORY[0x193B0A990](v39, v41);

    MEMORY[0x193B0A990](93, 0xE100000000000000);
    v42 = v64;
    v43 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_192071CD0(0, *(v43 + 2) + 1, 1, v43);
    }

    v10 = v53;
    v46 = *(v43 + 2);
    v45 = *(v43 + 3);
    v55 = v43;
    if (v46 >= v45 >> 1)
    {
      v55 = sub_192071CD0((v45 > 1), v46 + 1, 1, v55);
    }

    v47 = v55;
    *(v55 + 2) = v46 + 1;
    *&v47[16 * v46 + 32] = v42;
    v9 = v50;
    goto LABEL_8;
  }

  sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_192228270();
    if (!v65)
    {
      break;
    }

    sub_19202A98C(&v64, &v61);
    swift_dynamicCast();
    v23 = *(v60 + 24);

    v9 = (*(**(v23 + 16) + 80))(v24);
    v26 = v25;

    __swift_destroy_boxed_opaque_existential_1(&v64);
    v63 = v22;
    v28 = *(v22 + 16);
    v27 = *(v22 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_192071C64((v27 > 1), v28 + 1, 1);
      v22 = v63;
    }

    *(v22 + 16) = v28 + 1;
    v29 = v22 + 16 * v28;
    *(v29 + 32) = v9;
    *(v29 + 40) = v26;
    if (!--v21)
    {
      goto LABEL_19;
    }
  }

LABEL_36:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t WidgetEnvironment.Storage.description.getter()
{
  swift_getObjectType();
  sub_1920BF9DC();
  v4 = sub_192228BD0();
  MEMORY[0x193B0A990](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v0 = sub_1922278A0();
  v2 = v1;

  MEMORY[0x193B0A990](v0, v2);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return v4;
}

id WidgetEnvironment.Storage.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  *&v1[v5] = sub_192043788(MEMORY[0x1E69E7CC0]);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    sub_19202A7A8(0, &qword_1ED74C600, 0x1E695DEF0);
    v12 = sub_192228140();
    if (v12)
    {
      v13 = v12;
      v14 = sub_192224F30();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      sub_192224F20();
      v17 = v13;
      v18 = sub_192225080();
      v20 = v19;

      sub_1920C80A8(&qword_1ED74BE40, v21, type metadata accessor for WidgetEnvironment.Storage);
      sub_192224F00();

      sub_192039140(v18, v20);
      v8 = v25;
      goto LABEL_3;
    }

LABEL_8:
    v23 = *&v1[v5];

    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1920C80A8(&qword_1ED74BE40, v6, type metadata accessor for WidgetEnvironment.Storage);
  v7 = a1;
  sub_192228000();

  v8 = v25;
  if (!v25)
  {

    goto LABEL_8;
  }

LABEL_3:
  v9 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v10 = *&v8[v9];

  swift_beginAccess();
  v11 = *&v2[v5];
  *&v2[v5] = v10;

  v26.receiver = v2;
  v26.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v26, sel_init);

  return v22;
}

uint64_t sub_1920C0620(uint64_t a1, uint64_t a2)
{
  __s1[2] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_151:
    result = 1;
    goto LABEL_154;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_153;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            goto LABEL_151;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = v10 | (v4 << 6);
        v15 = *(*(v3 + 48) + 8 * v14);
        v16 = (*(v3 + 56) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];

        sub_1920367C8(v18, v17);
        result = v15 == 0;
        if (!v15)
        {
          goto LABEL_154;
        }

        v89 = v11;
        v20 = sub_1920B70BC(v15);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          goto LABEL_152;
        }

        v23 = (*(v2 + 56) + 16 * v20);
        v24 = *v23;
        v25 = v23[1];
        v26 = v25 >> 62;
        v27 = v17 >> 62;
        if (v25 >> 62 == 3)
        {
          if (v24)
          {
            v28 = 0;
          }

          else
          {
            v28 = v25 == 0xC000000000000000;
          }

          v29 = 0;
          v30 = v28 && v17 >> 62 == 3;
          if (v30 && !v18 && v17 == 0xC000000000000000)
          {
            v31 = 0;
            v32 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v27 <= 1)
          {
LABEL_37:
            if (!v27)
            {
              v36 = BYTE6(v17);
              goto LABEL_43;
            }

            LODWORD(v36) = HIDWORD(v18) - v18;
            if (!__OFSUB__(HIDWORD(v18), v18))
            {
              v36 = v36;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v26 > 1)
        {
          if (v26 == 2)
          {
            v38 = *(v24 + 16);
            v37 = *(v24 + 24);
            v35 = __OFSUB__(v37, v38);
            v29 = v37 - v38;
            if (!v35)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v29 = 0;
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v26)
        {
          LODWORD(v29) = HIDWORD(v24) - v24;
          if (__OFSUB__(HIDWORD(v24), v24))
          {
            goto LABEL_159;
          }

          v29 = v29;
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v29 = BYTE6(v25);
          if (v27 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v27 != 2)
        {
          if (v29)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v34 = *(v18 + 16);
        v33 = *(v18 + 24);
        v35 = __OFSUB__(v33, v34);
        v36 = v33 - v34;
        if (v35)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v29 != v36)
        {
LABEL_152:
          sub_192039140(v18, v17);
LABEL_153:
          result = 0;
LABEL_154:
          v78 = *MEMORY[0x1E69E9840];
          return result;
        }

        if (v29 >= 1)
        {
          break;
        }

LABEL_54:
        v31 = v18;
        v32 = v17;
LABEL_55:
        sub_192039140(v31, v32);
        v8 = v89;
      }

      if (v26 > 1)
      {
        break;
      }

      if (!v26)
      {
        __s1[0] = v24;
        LOWORD(__s1[1]) = v25;
        BYTE2(__s1[1]) = BYTE2(v25);
        BYTE3(__s1[1]) = BYTE3(v25);
        BYTE4(__s1[1]) = BYTE4(v25);
        BYTE5(__s1[1]) = BYTE5(v25);
        if (v27)
        {
          v87 = v24;
          if (v27 == 1)
          {
            v79 = ((v18 >> 32) - v18);
            if (v18 >> 32 < v18)
            {
              goto LABEL_164;
            }

            sub_1920367C8(v24, v25);
            v39 = sub_192224E30();
            if (!v39)
            {
              goto LABEL_183;
            }

            v40 = v39;
            v41 = sub_192224E50();
            if (__OFSUB__(v18, v41))
            {
              goto LABEL_168;
            }

            v42 = (v18 - v41 + v40);
            result = sub_192224E40();
            v8 = v89;
            if (!v42)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v65 = *(v18 + 16);
          v83 = *(v18 + 24);
          sub_1920367C8(v24, v25);
          v62 = sub_192224E30();
          v86 = v2;
          if (v62)
          {
            v66 = sub_192224E50();
            if (__OFSUB__(v65, v66))
            {
              goto LABEL_174;
            }

            v62 += v65 - v66;
          }

          v64 = &v83[-v65];
          if (__OFSUB__(v83, v65))
          {
            goto LABEL_166;
          }

          result = sub_192224E40();
          v8 = v89;
          if (!v62)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v85 = v2;
      v47 = v24;
      if (v24 > v24 >> 32)
      {
        goto LABEL_160;
      }

      v87 = v24;
      sub_1920367C8(v24, v25);
      v48 = sub_192224E30();
      if (v48)
      {
        v49 = v48;
        v50 = sub_192224E50();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_162;
        }

        v81 = (v47 - v50 + v49);
      }

      else
      {
        v81 = 0;
      }

      sub_192224E40();
      v3 = a1;
      if (v27 == 2)
      {
        v74 = *(v18 + 16);
        v73 = *(v18 + 24);
        v42 = sub_192224E30();
        if (v42)
        {
          v75 = sub_192224E50();
          if (__OFSUB__(v74, v75))
          {
            goto LABEL_176;
          }

          v42 += v74 - v75;
        }

        v35 = __OFSUB__(v73, v74);
        v76 = v73 - v74;
        if (v35)
        {
          goto LABEL_172;
        }

        v77 = sub_192224E40();
        if (v77 >= v76)
        {
          v58 = v76;
        }

        else
        {
          v58 = v77;
        }

        v8 = v89;
        result = v81;
        if (!v81)
        {
          goto LABEL_194;
        }

        v2 = v85;
        if (!v42)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v27 != 1)
        {
          result = v81;
          v2 = v85;
          __s1[0] = v18;
          LOWORD(__s1[1]) = v17;
          BYTE2(__s1[1]) = BYTE2(v17);
          BYTE3(__s1[1]) = BYTE3(v17);
          BYTE4(__s1[1]) = BYTE4(v17);
          BYTE5(__s1[1]) = BYTE5(v17);
          v8 = v89;
          if (!v81)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_171;
        }

        v42 = sub_192224E30();
        if (v42)
        {
          v59 = sub_192224E50();
          if (__OFSUB__(v18, v59))
          {
            goto LABEL_178;
          }

          v42 += v18 - v59;
        }

        v2 = v85;
        v60 = sub_192224E40();
        if (v60 >= (v18 >> 32) - v18)
        {
          v58 = (v18 >> 32) - v18;
        }

        else
        {
          v58 = v60;
        }

        result = v81;
        if (!v81)
        {
          goto LABEL_182;
        }

        v8 = v89;
        if (!v42)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v42)
      {
        v54 = v58;
        goto LABEL_145;
      }

      sub_192039140(v87, v25);
      sub_192039140(v18, v17);
      v3 = a1;
    }

    if (v26 == 2)
    {
      v84 = v2;
      v87 = v24;
      v43 = *(v24 + 16);
      sub_1920367C8(v24, v25);
      v44 = sub_192224E30();
      if (v44)
      {
        v45 = v44;
        v46 = sub_192224E50();
        if (__OFSUB__(v43, v46))
        {
          goto LABEL_161;
        }

        v80 = (v43 - v46 + v45);
      }

      else
      {
        v80 = 0;
      }

      sub_192224E40();
      v3 = a1;
      if (v27 == 2)
      {
        v69 = *(v18 + 16);
        v68 = *(v18 + 24);
        v42 = sub_192224E30();
        if (v42)
        {
          v70 = sub_192224E50();
          if (__OFSUB__(v69, v70))
          {
            goto LABEL_175;
          }

          v42 += v69 - v70;
        }

        v35 = __OFSUB__(v68, v69);
        v71 = v68 - v69;
        if (v35)
        {
          goto LABEL_170;
        }

        v72 = sub_192224E40();
        if (v72 >= v71)
        {
          v58 = v71;
        }

        else
        {
          v58 = v72;
        }

        v8 = v89;
        result = v80;
        if (!v80)
        {
          goto LABEL_187;
        }

        v2 = v84;
        if (!v42)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v27 != 1)
        {
          result = v80;
          v2 = v84;
          __s1[0] = v18;
          LOWORD(__s1[1]) = v17;
          BYTE2(__s1[1]) = BYTE2(v17);
          BYTE3(__s1[1]) = BYTE3(v17);
          BYTE4(__s1[1]) = BYTE4(v17);
          BYTE5(__s1[1]) = BYTE5(v17);
          v8 = v89;
          if (!v80)
          {
            goto LABEL_185;
          }

LABEL_148:
          v55 = memcmp(result, __s1, BYTE6(v17));
          sub_192039140(v87, v25);
          sub_192039140(v18, v17);
          goto LABEL_149;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_167;
        }

        v42 = sub_192224E30();
        if (v42)
        {
          v56 = sub_192224E50();
          if (__OFSUB__(v18, v56))
          {
            goto LABEL_177;
          }

          v42 += v18 - v56;
        }

        v2 = v84;
        v57 = sub_192224E40();
        if (v57 >= (v18 >> 32) - v18)
        {
          v58 = (v18 >> 32) - v18;
        }

        else
        {
          v58 = v57;
        }

        result = v80;
        if (!v80)
        {
          goto LABEL_189;
        }

        v8 = v89;
        if (!v42)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v27 == 2)
    {
      v61 = *(v18 + 16);
      v82 = *(v18 + 24);
      v87 = v24;
      sub_1920367C8(v24, v25);
      v62 = sub_192224E30();
      v86 = v2;
      if (v62)
      {
        v63 = sub_192224E50();
        if (__OFSUB__(v61, v63))
        {
          goto LABEL_173;
        }

        v62 += v61 - v63;
      }

      v64 = &v82[-v61];
      if (__OFSUB__(v82, v61))
      {
        goto LABEL_165;
      }

      result = sub_192224E40();
      v8 = v89;
      if (!v62)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v64)
      {
        v67 = v64;
      }

      else
      {
        v67 = result;
      }

      v55 = memcmp(__s1, v62, v67);
      sub_192039140(v87, v25);
      sub_192039140(v18, v17);
      v2 = v86;
      goto LABEL_146;
    }

    if (v27 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v18;
    v91 = v17;
    v92 = BYTE2(v17);
    v93 = BYTE3(v17);
    v94 = BYTE4(v17);
    v95 = BYTE5(v17);
    v55 = memcmp(__s1, &__s2, BYTE6(v17));
    sub_192039140(v18, v17);
    v8 = v89;
LABEL_149:
    result = 0;
    if (v55)
    {
      goto LABEL_154;
    }
  }

  v79 = ((v18 >> 32) - v18);
  if (v18 >> 32 < v18)
  {
    goto LABEL_163;
  }

  v87 = v24;
  sub_1920367C8(v24, v25);
  v51 = sub_192224E30();
  if (v51)
  {
    v52 = v51;
    v53 = sub_192224E50();
    if (__OFSUB__(v18, v53))
    {
      goto LABEL_169;
    }

    v42 = (v18 - v53 + v52);
    result = sub_192224E40();
    v8 = v89;
    if (!v42)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v79)
    {
      v54 = v79;
    }

    else
    {
      v54 = result;
    }

    result = __s1;
LABEL_145:
    v55 = memcmp(result, v42, v54);
    sub_192039140(v87, v25);
    sub_192039140(v18, v17);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  sub_192224E40();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = sub_192224E40();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

id WidgetEnvironment.Storage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WidgetEnvironment.init()@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
  *a1 = result;
  return result;
}

uint64_t WidgetEnvironment.hash(into:)()
{
  v1 = *v0;
  v2 = WidgetEnvironment.Storage.hash.getter();
  return MEMORY[0x193B0BA90](v2);
}

uint64_t static WidgetEnvironment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_19202A7A8(0, &qword_1ED74B690, 0x1E69E58C0);
  return sub_1922281D0() & 1;
}

uint64_t WidgetEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1920C1128()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

uint64_t sub_1920C1170()
{
  v1 = *v0;
  sub_192228AD0();
  v2 = WidgetEnvironment.Storage.hash.getter();
  MEMORY[0x193B0BA90](v2);
  return sub_192228B30();
}

unint64_t WidgetEnvironment.description.getter()
{
  v1 = [*v0 debugDescription];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  return 0xD000000000000012;
}

unint64_t WidgetEnvironment.prettyPrintedDescription.getter()
{
  v1 = *v0;
  sub_1920BF9DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
  sub_192031E74(&qword_1EADECF30, &unk_1EADEEA20, &qword_19222A7F0);
  v2 = sub_1922278A0();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  MEMORY[0x193B0A990](62, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1920C1394()
{
  v1 = [*v0 debugDescription];
  v2 = sub_192227960();
  v4 = v3;

  MEMORY[0x193B0A990](v2, v4);

  return 0xD000000000000012;
}

uint64_t WidgetEnvironment.environmentValues(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF258, &qword_19222C6C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *v3;
  v16 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  if (*(*&v15[v16] + 16))
  {
    v17 = v14 + *(v11 + 20);
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    *v14 = v15;
    sub_1920C55EC(v14, v10, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
    v18 = v15;
    sub_1920BC09C(a1, a2, a3);
    return sub_192033970(v10, &qword_1EADEF258, &qword_19222C6C8);
  }

  else
  {
    v20 = sub_1922261D0();
    return (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
  }
}

void WidgetEnvironment.EnvironmentValuesEnumerator.makeIterator()(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0) + 20);
  v5 = *(type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0) + 20);
  v6 = sub_1922261D0();
  (*(*(v6 - 8) + 16))(a1 + v5, v1 + v4, v6);
  v7 = v3;
  v8 = sub_192056208(MEMORY[0x1E69E7CC0]);
  v15 = v7;
  v9 = v7;

  v10 = sub_192056340(&v15, v8);
  v12 = v11;
  v14 = v13;

  *a1 = v10;
  a1[1] = v12;
  a1[2] = v14;
}

uint64_t sub_1920C16C0()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v8 = v0[1];
    }

    v9 = sub_192228340();
    v3 = v9 - 1;
    if (v9 >= 1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v2 - 1;
  if (v2 < 1)
  {
    return 0;
  }

LABEL_3:

  if ((sub_19205F34C(v3) & 1) == 0)
  {
    v4 = *v0;

    v5 = MEMORY[0x1E69E7CC0];
    *v0 = MEMORY[0x1E69E7CC0];
    v6 = v0[1];

    v0[1] = v5;
    v7 = v0[2];

    v0[2] = v5;
  }

  return v1;
}

uint64_t sub_1920C1764()
{
  v1 = sub_19209C05C(v0);
  sub_19205BD2C(v0, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  return v1;
}

uint64_t sub_1920C17B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1920C16C0();
  *a1 = result;
  return result;
}

void sub_1920C17D8(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v11 = v3;
  v5 = v3;

  v6 = sub_192056340(&v11, v4);
  v8 = v7;
  v10 = v9;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
}

uint64_t sub_1920C1854()
{
  v1 = *v0;
  v2 = sub_19209BE50(*v0, *(v0 + 8));

  return v2;
}

void sub_1920C18A4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_1920C18B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 0;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C18E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_1922289A0() ^ 1) & 1;
  }
}

uint64_t sub_1920C1928(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return (sub_1922289A0() ^ 1) & 1;
  }
}

uint64_t sub_1920C197C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C19A0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1920C19EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_1922279B0();
}

uint64_t sub_1920C19F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_1920C1A3C(uint64_t a1)
{
  v2 = sub_1920446A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C1A78(uint64_t a1)
{
  v2 = sub_1920446A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920C1AB4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1922289A0();
  }
}

uint64_t sub_1920C1D90()
{
  v1 = *(*v0 + 144);
  (*(*(*v0 + 152) + 48))();
  sub_1922282D0();
  return sub_192227990();
}

uint64_t sub_1920C1E10()
{
  v1 = *(*v0 + 144);
  (*(*(*v0 + 152) + 72))();
  v3 = v2;

  return v3;
}

uint64_t sub_1920C1E84()
{
  type metadata accessor for WidgetEnvironment.AnyKey.Storage();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t sub_1920C2038(uint64_t a1)
{
  v2 = sub_1920C8648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1920C2074(uint64_t a1)
{
  v2 = sub_1920C8648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1920C20B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF408, &unk_19222D810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920C8648();
  sub_192228B90();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1920C22F0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v8 - v6, v1 + *(v4 + 152), v2);
  return sub_192227990();
}

uint64_t sub_1920C23D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = *(v2 + 152);
    (*(v4 + 16))(v7, v8 + *(*v8 + 152), v3);
    v10 = *(v2 + 136);

    v11 = sub_1922278B0();

    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1920C2A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = MEMORY[0x193B0A990](a1, 0xE100000000000000);
  v8 = (*(**(*(v3 + *(*v3 + 168)) + 16) + 96))(v7);
  MEMORY[0x193B0A990](v8);

  MEMORY[0x193B0A990](a2, 0xE200000000000000);
  v9 = *(*v3 + 160);
  v10 = *(v6 + 144);
  sub_192228970();
  MEMORY[0x193B0A990](a3, 0xE100000000000000);
  return 0;
}

uint64_t sub_1920C2B10()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 144) - 8) + 8))(&v0[*(*v0 + 160)]);
  v3 = *&v0[*(*v0 + 168)];
}

unint64_t sub_1920C2C54(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_1920C2C74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF5F8, &unk_19222DA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1920C2D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4D8, &qword_19222D8B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1920C2EA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB90, &unk_19222AF70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1920C301C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF3D8, &unk_19222D7E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C3150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF438, &qword_19222D838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C328C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1920C3400(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4B0, &unk_19222AFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD0, &qword_1922349A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C3584(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF498, &qword_19222D888);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1920C36C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

size_t sub_1920C37E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}