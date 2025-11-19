uint64_t specialized PSETrajectoryBuilder.extractFeatures(from:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[28] = a3;
  v7 = type metadata accessor for CharacterSet();
  v5[31] = v7;
  v8 = *(v7 - 8);
  v5[32] = v8;
  v9 = *(v8 + 64) + 15;
  v5[33] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v11 = type metadata accessor for PSEFeatureTemplate();
  v5[35] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v5[37] = v13;
  v14 = *(v13 - 8);
  v5[38] = v14;
  v15 = *(v14 + 64) + 15;
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  return _swift_task_switch(specialized PSETrajectoryBuilder.extractFeatures(from:for:), v16, v18);
}

uint64_t specialized PSETrajectoryBuilder.extractFeatures(from:for:)()
{
  v214 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 224);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);

  [v5 donatedTimestamp];
  Date.init(timeIntervalSinceReferenceDate:)();
  v6 = [v5 pseContents];
  type metadata accessor for ORCHSchemaORCHClientEvent(0, &lazy cache variable for type metadata for BMSiriPostSiriEngagementSignalContent, BMSiriPostSiriEngagementSignalContent_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 16))(v2, v1, v4);
  v8 = [v5 domain];
  if (v8)
  {
    v9 = v8;
    v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v207 = v10;
  }

  else
  {
    v202 = 0;
    v207 = 0xE000000000000000;
  }

  v210 = v7;
  v11 = [*(v0 + 224) action];
  if (v11)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);
    v204 = *(v0 + 248);
    v15 = v11;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v0 + 32) = v16;
    *(v0 + 40) = v18;
    *(v0 + 48) = 0x746E65746E69;
    *(v0 + 56) = 0xE600000000000000;
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    v19 = lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v22 = v21;

    *(v0 + 80) = v20;
    *(v0 + 88) = v22;
    *(v0 + 96) = 0x295D5A2D415B28;
    *(v0 + 104) = 0xE700000000000000;
    *(v0 + 112) = 3220512;
    *(v0 + 120) = 0xE300000000000000;
    *(v0 + 128) = v20;
    *(v0 + 136) = v22;
    *(v0 + 144) = v20;
    *(v0 + 152) = v22;
    v23 = type metadata accessor for Locale();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    StringProtocol.range<A>(of:options:range:locale:)();
    outlined destroy of NSObject?(v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v186 = v19;
    v187 = v19;
    v184 = &type metadata for String;
    v185 = v19;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v26 = v25;

    *(v0 + 160) = v24;
    *(v0 + 168) = v26;
    static CharacterSet.whitespacesAndNewlines.getter();
    v27 = StringProtocol.trimmingCharacters(in:)();
    v29 = v28;
    (*(v14 + 8))(v12, v204);

    *(v0 + 176) = v27;
    *(v0 + 184) = v29;
    v201 = StringProtocol.capitalized.getter();
    v205 = v30;
  }

  else
  {
    v201 = 0;
    v205 = 0xE000000000000000;
  }

  v32 = *(v0 + 304);
  v31 = *(v0 + 312);
  v33 = *(v0 + 288);
  v34 = *(v0 + 296);
  v35 = *(v0 + 280);
  v198 = v31;
  v199 = *(v0 + 224);
  v36 = *(v32 + 56);
  v36(v33, 1, 1, v34);
  v37 = v35[6];
  v38 = (v33 + v35[5]);
  v39 = (v33 + v35[8]);
  *v39 = 0;
  v39[1] = 0;
  v192 = v39;
  v40 = (v33 + v35[9]);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v33 + v35[10]);
  *v41 = 0;
  v41[1] = 0;
  v190 = v41;
  v42 = (v33 + v35[11]);
  *v42 = 0;
  v42[1] = 0;
  v189 = v42;
  v43 = (v33 + v35[12]);
  *v43 = 0;
  v43[1] = 0;
  v188 = v43;
  v44 = (v33 + v35[13]);
  *v44 = 0;
  v44[1] = 0;
  v191 = v44;
  v45 = v33 + v35[14];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = (v33 + v35[15]);
  *v46 = 0;
  v46[1] = 0;
  v197 = v46;
  v47 = (v33 + v35[16]);
  *v47 = 0;
  v47[1] = 0;
  v196 = v47;
  *(v33 + v35[17]) = 0;
  *(v33 + v35[18]) = 0;
  *(v33 + v35[19]) = 0;
  *(v33 + v35[20]) = 0;
  v48 = (v33 + v35[21]);
  *v48 = 0;
  v48[1] = 0;
  v49 = (v33 + v35[22]);
  *v49 = 0;
  v49[1] = 0;
  *(v33 + v35[23]) = 2;
  v50 = (v33 + v37);
  v51 = (v33 + v35[24]);
  *v51 = 0;
  v51[1] = 0;
  v52 = (v33 + v35[25]);
  *v52 = 0;
  v52[1] = 0;
  v53 = (v33 + v35[26]);
  *v53 = 0;
  v53[1] = 0;
  *(v33 + v35[27]) = 0;
  v54 = (v33 + v35[28]);
  *v54 = 0;
  v54[1] = 0;
  *(v33 + v35[29]) = 0;
  v55 = (v33 + v35[30]);
  *v55 = 0;
  v55[1] = 0;
  v195 = v55;
  v56 = (v33 + v35[31]);
  *v56 = 0;
  v56[1] = 0;
  v194 = v56;
  v57 = (v33 + v35[32]);
  *v57 = 0;
  v57[1] = 0;
  v193 = v57;
  v58 = v35[33];
  *(v33 + v58) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  outlined destroy of NSObject?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v32 + 32))(v33, v198, v34);
  v36(v33, 0, 1, v34);
  *v38 = v202;
  v38[1] = v207;
  v203 = v38;
  *v50 = v201;
  v50[1] = v205;
  v59 = v35[7];
  *(v33 + v59) = 0;
  v60 = [v199 domain];
  if (!v60)
  {
LABEL_11:
    v65 = v210;
    goto LABEL_23;
  }

  v61 = v60;
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65 = v210;
  if (v62 == 0x636E75614C707041 && v64 == 0xE900000000000068)
  {
  }

  else
  {
    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v66 & 1) == 0)
    {
LABEL_23:
      v77 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x42646574616E6F64, 0xED00006972695379);
      if (v78)
      {
        if (v77 == 1702195828 && v78 == 0xE400000000000000)
        {

LABEL_28:

          v80 = 1;
          *(v33 + v59) = 1;
          *v203 = xmmword_10002E7F0;
          goto LABEL_30;
        }

        v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v79)
        {
          goto LABEL_28;
        }
      }

      v80 = 0;
LABEL_30:
      v81 = *(v0 + 232);
      v82 = *(v0 + 240);

      v83 = specialized SupportedUseCases.init(from:)(v81, v82);
      v84 = v83;
      if (v83 == 5)
      {
LABEL_31:

        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Logger.inference);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v213[0] = v89;
          *v88 = 136315138;
          if (v84 == 5)
          {
            v90 = 4999502;
          }

          else
          {
            v90 = 0x6F70707553746F4ELL;
          }

          if (v84 == 5)
          {
            v91 = 0xE300000000000000;
          }

          else
          {
            v91 = 0xEC00000064657472;
          }

          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v213);

          *(v88 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v86, v87, "PSE %s Feature data not supported.", v88, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v89);
        }

        v93 = *(v0 + 320);
        v94 = *(v0 + 296);
        v95 = *(v0 + 304);
        v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
        (*(v95 + 8))(v93, v94);
        v80 = 0;
        goto LABEL_58;
      }

      if (v83 <= 1u)
      {
        if (!v83)
        {
          v121 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x6564496D72616C61, 0xEF7265696669746ELL);
          v123 = v122;

          if (v123)
          {
            *v192 = v121;
            v192[1] = v123;
          }

          goto LABEL_92;
        }

        v208 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x656C746974, 0xE500000000000000);
        v211 = v146;
        v147 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x747369747261, 0xE600000000000000);
        v149 = v148;
        v150 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x6D75626C61, 0xE500000000000000);
        v151 = v65;
        v153 = v152;
        specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v151, 0x65726E6567, 0xE500000000000000);

        v154 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v151, 0x6172754479616C70, 0xEC0000006E6F6974);
        v156 = v155;

        if (!v156)
        {
          *v190 = v208;
          v190[1] = v211;
          *v189 = v147;
          v189[1] = v149;
          *v188 = v150;
          v188[1] = v153;
          *v191 = 0;
          v191[1] = 0;
          goto LABEL_92;
        }

        v206 = v149;
        if (v154 == Double.description.getter() && v156 == v157)
        {
        }

        else
        {
          v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v162 & 1) == 0)
          {
            *(v0 + 208) = 0;
            v164 = specialized String.withCString<A>(_:)(v154, v156);

            if (v164)
            {
              v165 = ceil(*(v0 + 208));
              if ((*&v165 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

              if (v165 <= -9.22337204e18)
              {
LABEL_108:
                __break(1u);
                goto LABEL_109;
              }

              v166 = v206;
              if (v165 >= 9.22337204e18)
              {
LABEL_109:
                __break(1u);
                return result;
              }

              *(v0 + 216) = v165;
              v167 = dispatch thunk of CustomStringConvertible.description.getter();
            }

            else
            {
              v167 = 0;
              v168 = 0;
              v166 = v206;
            }

            *v190 = v208;
            v190[1] = v211;
            *v189 = v147;
            v189[1] = v166;
            *v188 = v150;
            v188[1] = v153;
            *v191 = v167;
            v191[1] = v168;
            goto LABEL_92;
          }
        }

        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v163 = type metadata accessor for Logger();
        __swift_project_value_buffer(v163, static Logger.inference);
        v105 = Logger.logObject.getter();
        v106 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v105, v106))
        {
          goto LABEL_52;
        }

        v107 = swift_slowAlloc();
        *v107 = 0;
        v108 = "Skip Music PSE event with playDuration == -1";
        goto LABEL_51;
      }

      if (v83 != 2)
      {
        if (v83 != 3)
        {
          goto LABEL_31;
        }

        v97 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x79546E6F69746361, 0xEA00000000006570);
        v99 = v98;
        v100 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x746E656449696F70, 0xED00007265696669);
        v102 = v101;

        *v197 = v97;
        v197[1] = v99;
        *v196 = v100;
        v196[1] = v102;
LABEL_92:
        v169 = *(v0 + 288);
        v96 = PSEFeatureTemplate.toDictionary()();
        if (one-time initialization token for inference != -1)
        {
          swift_once();
        }

        v170 = type metadata accessor for Logger();
        __swift_project_value_buffer(v170, static Logger.inference);

        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v213[0] = swift_slowAlloc();
          *v173 = 136315394;
          if (v84 > 1u)
          {
            if (v84 == 2)
            {
              v174 = 0xE500000000000000;
              v175 = 0x736C6C6143;
            }

            else
            {
              v174 = 0xE400000000000000;
              v175 = 1936744781;
            }
          }

          else
          {
            v174 = 0xE500000000000000;
            if (v84)
            {
              v175 = 0x636973754DLL;
            }

            else
            {
              v175 = 0x6D72616C41;
            }
          }

          v179 = *(v0 + 304);
          v209 = *(v0 + 296);
          v212 = *(v0 + 320);
          v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v175, v174, v213);

          *(v173 + 4) = v180;
          *(v173 + 12) = 2080;
          v181 = Dictionary.description.getter();
          v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v181, v182, v213);

          *(v173 + 14) = v183;
          _os_log_impl(&_mh_execute_header, v171, v172, "PSE %s Feature data: %s", v173, 0x16u);
          swift_arrayDestroy();

          (*(v179 + 8))(v212, v209);
        }

        else
        {
          v176 = *(v0 + 320);
          v177 = *(v0 + 296);
          v178 = *(v0 + 304);

          (*(v178 + 8))(v176, v177);
        }

        goto LABEL_58;
      }

      v133 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x4E79616C70736964, 0xEB00000000656D61);
      v135 = v134;
      v136 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v65, 0x617275446C6C6163, 0xEC0000006E6F6974);
      v138 = v137;
      if (!v137 || (*(v0 + 192) = 0, , v139 = specialized String.withCString<A>(_:)(v136, v138), result = , !v139))
      {
LABEL_72:
        v143 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v210, 0x6C6562616CLL, 0xE500000000000000);
        v145 = v144;

        *v193 = v136;
        v193[1] = v138;
        *v195 = v133;
        v195[1] = v135;
        *v194 = v143;
        v194[1] = v145;
        goto LABEL_92;
      }

      v140 = ceil(*(v0 + 192));
      if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v140 > -9.22337204e18)
      {
        if (v140 < 9.22337204e18)
        {
          *(v0 + 200) = v140;
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          v142 = v141;

          v138 = v142;
          goto LABEL_72;
        }

        goto LABEL_106;
      }

      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  v200 = v59;
  v67 = *(v0 + 224);
  v68 = specialized static PSEFeatureTemplate.extractValue(from:forKey:)(v210, 0xD000000000000011, 0x8000000100031530);
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0x6E776F6E6B6E55;
  }

  if (v69)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0xE700000000000000;
  }

  v72 = [v67 action];
  if (!v72)
  {
LABEL_53:
    if (v70 == 0xD000000000000017 && 0x8000000100031550 == v71 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v112 = *(v0 + 320);
      v113 = *(v0 + 296);
      v114 = *(v0 + 304);

      v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      (*(v114 + 8))(v112, v113);
      goto LABEL_57;
    }

    *(v0 + 16) = 46;
    *(v0 + 24) = 0xE100000000000000;
    v124 = swift_task_alloc();
    *(v124 + 16) = v0 + 16;
    v126 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v124, v70, v71, v125);

    v127 = v126[2];
    if (v127)
    {
      v128 = &v126[4 * v127];
      v130 = *v128;
      v129 = v128[1];
      v132 = v128[2];
      v131 = v128[3];
    }

    else
    {

      Substring.init(_:)();
    }

    v158 = static String._fromSubstring(_:)();
    v160 = v159;

    v213[0] = v158;
    v213[1] = v160;

    v161._countAndFlagsBits = 1886413088;
    v161._object = 0xE400000000000000;
    String.append(_:)(v161);

    *v203 = v158;
    v203[1] = v160;

    v59 = v200;
    *v50 = xmmword_10002E7E0;
    goto LABEL_11;
  }

  v73 = v72;
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  if (v74 != 1769105747 || v76 != 0xE400000000000000)
  {
    v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v103)
    {
      goto LABEL_47;
    }

    goto LABEL_53;
  }

LABEL_47:

  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  __swift_project_value_buffer(v104, static Logger.inference);
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v105, v106))
  {
    goto LABEL_52;
  }

  v107 = swift_slowAlloc();
  *v107 = 0;
  v108 = "Skip Siri app launch PSE event";
LABEL_51:
  _os_log_impl(&_mh_execute_header, v105, v106, v108, v107, 2u);

LABEL_52:
  v109 = *(v0 + 320);
  v110 = *(v0 + 296);
  v111 = *(v0 + 304);

  v96 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  (*(v111 + 8))(v109, v110);
LABEL_57:
  v80 = 0;
LABEL_58:
  v116 = *(v0 + 312);
  v115 = *(v0 + 320);
  v118 = *(v0 + 264);
  v117 = *(v0 + 272);
  outlined destroy of PSEFeatureTemplate(*(v0 + 288));

  v119 = *(v0 + 8);

  return v119(v96, v80);
}

uint64_t outlined destroy of PSEFeatureTemplate(uint64_t a1)
{
  v2 = type metadata accessor for PSEFeatureTemplate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.systemPromptID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserEngagementInferenceExtensionConfig(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UserEngagementInferenceExtensionConfig.systemPromptID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UserEngagementInferenceExtensionConfig(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UserEngagementInferenceExtensionConfig.disable.setter(char a1)
{
  result = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys()
{
  v1 = 0x726F63655278616DLL;
  v2 = 0x72506D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x656C6261736964;
  }

  if (*v0)
  {
    v1 = 0x72506D6574737973;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UserEngagementInferenceExtensionConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized UserEngagementInferenceExtensionConfig.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UserEngagementInferenceExtensionConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UserEngagementInferenceExtensionConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMd, &_ss22KeyedEncodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    v18[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
    v16 = *(v15 + 24);
    v18[13] = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + *(v15 + 28));
    v18[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys);
  }

  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_10002E9A0;
  *(a1 + 16) = 0xE000000000000000;
  v2 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v3 = a1 + *(v2 + 24);
  result = UUID.init()();
  *(a1 + *(v2 + 28)) = 0;
  return result;
}

uint64_t UserEngagementInferenceExtensionConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = type metadata accessor for UUID();
  v27 = *(v29 - 8);
  v3 = *(v27 + 64);
  __chkstk_darwin(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMd, &_ss22KeyedDecodingContainerVy18InferenceExtension014UserEngagementdE6ConfigV10CodingKeys33_7486101AE976CDEF82411786A6A08A1BLLOGMR);
  v28 = *(v30 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v30);
  v6 = &v25 - v5;
  v7 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = xmmword_10002E9A0;
  *(v11 + 2) = 0xE000000000000000;
  v12 = *(v8 + 32);
  UUID.init()();
  v13 = *(v8 + 36);
  v11[v13] = 0;
  v14 = a1[3];
  v15 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type UserEngagementInferenceExtensionConfig.CodingKeys and conformance UserEngagementInferenceExtensionConfig.CodingKeys();
  v16 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v31 = v12;
    v25 = v13;
    v17 = v28;
    v18 = v29;
    v36 = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = 1;
    v19 = v17;
    *(v11 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v11 + 2) = v20;
    v34 = 2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 40))(&v11[v31], 0, v18);
    v33 = 3;
    v22 = v30;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v19 + 8))(v6, v22);
    v24 = v26;
    v11[v25] = v23 & 1;
    outlined init with copy of UserEngagementInferenceExtensionConfig(v11, v24);
  }

  __swift_destroy_boxed_opaque_existential_0(v32);
  return outlined destroy of UserEngagementInferenceExtensionConfig(v11);
}

uint64_t outlined destroy of UserEngagementInferenceExtensionConfig(uint64_t a1)
{
  v2 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of UserEngagementInferenceExtensionConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UserEngagementInferenceExtensionConfig.init(maxRecords:systemPrompt:systemPromptID:disable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  v9 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(&a6[v10], a4, v11);
  a6[*(v9 + 28)] = a5;
  return result;
}

uint64_t InferenceExtension.shouldRun(context:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = InferenceExtension.shouldRun(context:);

  return (specialized InferenceExtension.shouldRun(context:))(a1, a2);
}

uint64_t InferenceExtension.doWork(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v4[31] = a3;
  v4[32] = v5;
  v4[29] = a1;
  v4[30] = a2;
  v4[33] = *v5;
  v7 = type metadata accessor for CancellationError();
  v4[34] = v7;
  v8 = *(v7 - 8);
  v4[35] = v8;
  v9 = *(v8 + 64) + 15;
  v4[36] = swift_task_alloc();
  v10 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v4[37] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMR) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  v4[41] = v13;
  v14 = *(v13 - 8);
  v4[42] = v14;
  v15 = *(v14 + 64) + 15;
  v4[43] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v4[44] = v16;
  v4[45] = v18;

  return _swift_task_switch(InferenceExtension.doWork(context:), v16, v18);
}

uint64_t InferenceExtension.doWork(context:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[46] = __swift_project_value_buffer(v1, static Logger.inference);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Begin work in PSELighthouseExtension", v4, 2u);
  }

  v5 = v0[31];

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v7, v8, "Context: %@", v10, 0xCu);
    outlined destroy of NSObject?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v14 = v0[32];
  v13 = v0[33];

  v0[25] = v14;
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  v0[47] = v16;
  v17 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension);
  v18 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  v19 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  *v16 = v0;
  v16[1] = InferenceExtension.doWork(context:);
  v20 = v0[40];
  v21 = v0[37];
  v22 = v0[31];

  return MLHostExtension.loadConfig<A>(context:)(v20, v22, v13, v21, v17, v18, v19);
}

{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v6 = *v0;

  v3 = *(v1 + 360);
  v4 = *(v1 + 352);

  return _swift_task_switch(InferenceExtension.doWork(context:), v4, v3);
}

{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[40];
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = v0[43];
  if (v5 == 1)
  {
    (*(v2 + 16))(v6, v0[32] + OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig, v1);
    if (v4(v3, 1, v1) != 1)
    {
      outlined destroy of NSObject?(v0[40], &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGSgMR);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
  }

  v7 = v0[43];
  v8 = v0[41];
  v9 = v0[39];
  v10 = v0[37];
  MLHostParameters.taskParameters.getter();
  LOBYTE(v7) = *(v9 + *(v10 + 28));
  outlined destroy of UserEngagementInferenceExtensionConfig(v9);
  if (v7)
  {
    v11 = v0[46];
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "UserEngagementInferenceExtension is disabled by configuration", v14, 2u);
    }

    v16 = v0[42];
    v15 = v0[43];
    v17 = v0[41];

    v18 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v19 = MLHostResult.init(status:policy:)();
    (*(v16 + 8))(v15, v17);
    v20 = v0[43];
    v22 = v0[39];
    v21 = v0[40];
    v23 = v0[38];
    v24 = v0[36];

    v25 = v0[1];

    return v25(v19);
  }

  else
  {
    v27 = v0[43];
    v28 = v0[41];
    v29 = v0[38];
    type metadata accessor for UserAlignmentScoreEvaluator();
    swift_allocObject();
    UserAlignmentScoreEvaluator.init()();
    v31 = v30;
    v0[48] = v30;
    MLHostParameters.taskParameters.getter();
    v32 = *(*v31 + 112);
    v38 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    v0[49] = v34;
    *v34 = v0;
    v34[1] = InferenceExtension.doWork(context:);
    v35 = v0[38];
    v37 = v0[29];
    v36 = v0[30];

    return v38(v37, v36, v35);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 400) = v0;

  outlined destroy of UserEngagementInferenceExtensionConfig(v4);
  v6 = *(v2 + 360);
  v7 = *(v2 + 352);
  if (v0)
  {
    v8 = InferenceExtension.doWork(context:);
  }

  else
  {
    v8 = InferenceExtension.doWork(context:);
  }

  return _swift_task_switch(v8, v7, v6);
}

{
  v27 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 248);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = MLHostExtensionContext.taskId.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v26);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = MLHostExtensionContext.taskName.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v26);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "MLHost Task completed: TaskId: %s, TaskName: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v0 + 384);
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v16 = *(v0 + 328);
  v17 = objc_allocWithZone(type metadata accessor for MLHostResult());
  v18 = MLHostResult.init(status:policy:)();

  (*(v15 + 8))(v14, v16);
  v19 = *(v0 + 344);
  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  v22 = *(v0 + 304);
  v23 = *(v0 + 288);

  v24 = *(v0 + 8);

  return v24(v18);
}

{
  v93 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);

  *(v0 + 208) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 400);
  if (v5)
  {
    v7 = *(v0 + 368);
    v8 = *(v0 + 248);
    v9 = *(v0 + 400);

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 248);
      v14 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v14 = 136315394;
      v15 = MLHostExtensionContext.taskId.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v92);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = MLHostExtensionContext.taskName.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v92);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "MLHostError: TaskId: %s, TaskName: %s \nInference task is cancelled, resume later", v14, 0x16u);
      swift_arrayDestroy();
    }

    v22 = *(v0 + 336);
    v21 = *(v0 + 344);
    v23 = *(v0 + 328);
    v25 = *(v0 + 280);
    v24 = *(v0 + 288);
    v26 = *(v0 + 272);
    v27 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v28 = MLHostResult.init(status:policy:)();
    (*(v22 + 8))(v21, v23);
    (*(v25 + 8))(v24, v26);
    v29 = *(v0 + 208);
    goto LABEL_13;
  }

  v30 = *(v0 + 208);

  *(v0 + 216) = v6;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground11MLHostError_pMd, &_s20LighthouseBackground11MLHostError_pMR);
  v31 = swift_dynamicCast();
  v32 = *(v0 + 400);
  v33 = *(v0 + 368);
  v34 = *(v0 + 248);
  if (v31)
  {
    v35 = (v0 + 56);
    v36 = (v0 + 96);
    v37 = v0 + 136;
    v38 = *(v0 + 400);

    outlined init with take of ConvertibleToGeneratedContent((v0 + 16), v0 + 56);
    outlined init with copy of MLHostError(v0 + 56, v0 + 96);
    v39 = v34;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 248);
      v43 = swift_slowAlloc();
      v92[0] = swift_slowAlloc();
      *v43 = 136315650;
      v44 = MLHostExtensionContext.taskId.getter();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v92);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      v47 = MLHostExtensionContext.taskName.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, v92);

      *(v43 + 14) = v49;
      *(v43 + 22) = 2080;
      v50 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1(v36, *(v0 + 120));
      v51 = *(v50 + 8);
      v52 = Error.localizedDescription.getter();
      v54 = v53;
      __swift_destroy_boxed_opaque_existential_0(v36);
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v92);

      *(v43 + 24) = v55;
      _os_log_impl(&_mh_execute_header, v40, v41, "MLHostError: TaskId: %s, TaskName: %s \nError:  %s", v43, 0x20u);
      swift_arrayDestroy();
      v37 = v0 + 136;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    v81 = *(v0 + 336);
    v80 = *(v0 + 344);
    v82 = *(v0 + 328);
    outlined init with copy of MLHostError(v35, v37);
    v83 = objc_allocWithZone(type metadata accessor for MLHostResult());
    v28 = MLHostResult.init(error:policy:)();
    __swift_destroy_boxed_opaque_existential_0(v35);
    (*(v81 + 8))(v80, v82);
    v84 = *(v0 + 216);
LABEL_13:

    goto LABEL_14;
  }

  v56 = *(v0 + 216);

  v57 = v34;
  swift_errorRetain();
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = *(v0 + 400);
    v61 = *(v0 + 248);
    v62 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v62 = 136315650;
    v63 = MLHostExtensionContext.taskId.getter();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v92);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v66 = MLHostExtensionContext.taskName.getter();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v92);

    *(v62 + 14) = v68;
    *(v62 + 22) = 2080;
    swift_getErrorValue();
    v70 = *(v0 + 176);
    v69 = *(v0 + 184);
    v71 = *(v0 + 192);
    v72 = Error.localizedDescription.getter();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v92);

    *(v62 + 24) = v74;
    _os_log_impl(&_mh_execute_header, v58, v59, "Error:  TaskId: %s, TaskName: %s \nError: %s", v62, 0x20u);
    swift_arrayDestroy();
  }

  v75 = *(v0 + 400);
  v77 = *(v0 + 336);
  v76 = *(v0 + 344);
  v78 = *(v0 + 328);
  v92[3] = &type metadata for InferenceExtension.PSEInferenceError;
  v92[4] = lazy protocol witness table accessor for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError();
  v79 = objc_allocWithZone(type metadata accessor for MLHostResult());
  v28 = MLHostResult.init(error:policy:)();

  (*(v77 + 8))(v76, v78);
LABEL_14:
  v85 = *(v0 + 344);
  v87 = *(v0 + 312);
  v86 = *(v0 + 320);
  v88 = *(v0 + 304);
  v89 = *(v0 + 288);

  v90 = *(v0 + 8);

  return v90(v28);
}

BOOL InferenceExtension.PSEInferenceError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InferenceExtension.PSEInferenceError.init(rawValue:), v2);

  return v3 != 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InferenceExtension.PSEInferenceError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InferenceExtension.PSEInferenceError()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceExtension.PSEInferenceError@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance InferenceExtension.PSEInferenceError, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t InferenceExtension.deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t InferenceExtension.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18InferenceExtension18InferenceExtension_defaultConfig;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMd, &_s20LighthouseBackground16MLHostParametersVy18InferenceExtension014UserEngagementeF6ConfigVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t InferenceExtension.__allocating_init()()
{
  v1 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  v6 = *(v0 + 52);
  v7 = swift_allocObject();
  *v4 = xmmword_10002E9A0;
  *(v4 + 2) = 0xE000000000000000;
  v8 = &v4[*(v1 + 24)];
  UUID.init()();
  v4[*(v1 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  MLHostParameters.init(taskParameters:)();
  return v7;
}

uint64_t InferenceExtension.init()()
{
  v1 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = xmmword_10002E9A0;
  *(v5 + 2) = 0xE000000000000000;
  v6 = &v5[*(v3 + 24)];
  UUID.init()();
  v5[*(v1 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  MLHostParameters.init(taskParameters:)();
  return v0;
}

uint64_t protocol witness for MLHostExtension.shouldRun(context:) in conformance InferenceExtension()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = UserAlignmentScoreReporter.reportWithMetaData(response:data:);

  return specialized InferenceExtension.shouldRun(context:)(0);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension, 0, 0);
}

{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = protocol witness for MLHostExtension.doWork(context:) in conformance InferenceExtension;
  v2 = v0[2];
  v3 = v0[3];

  return InferenceExtension.doWork(context:)(0, 0, v2);
}

uint64_t protocol witness for MLHostExtension.loadConfig<A>(context:) in conformance InferenceExtension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = dispatch thunk of SELFReporter.report(event:);

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t protocol witness for AppExtension.configuration.getter in conformance InferenceExtension(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t protocol witness for AppExtension.init() in conformance InferenceExtension@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for UserEngagementInferenceExtensionConfig(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 48);
  v9 = *(v2 + 52);
  v10 = swift_allocObject();
  *v7 = xmmword_10002E9A0;
  *(v7 + 2) = 0xE000000000000000;
  v11 = &v7[*(v4 + 24)];
  UUID.init()();
  v7[*(v4 + 28)] = 0;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
  result = MLHostParameters.init(taskParameters:)();
  *a1 = v10;
  return result;
}

unint64_t UserEngagementInferenceError.rawValue.getter(unsigned __int8 a1)
{
  if (a1)
  {
    v1 = 0xD000000000000012;
  }

  else
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UserEngagementInferenceError(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = UserEngagementInferenceError.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == UserEngagementInferenceError.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UserEngagementInferenceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  UserEngagementInferenceError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UserEngagementInferenceError()
{
  UserEngagementInferenceError.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UserEngagementInferenceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  UserEngagementInferenceError.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UserEngagementInferenceError@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UserEngagementInferenceError.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UserEngagementInferenceError@<X0>(unint64_t *a1@<X8>)
{
  result = UserEngagementInferenceError.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for InferenceExtension(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type InferenceExtension and conformance InferenceExtension, type metadata accessor for InferenceExtension);
  static AppExtension.main()();
  return 0;
}

uint64_t specialized UserEngagementInferenceExtensionConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F63655278616DLL && a2 == 0xEA00000000007364;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEC00000074706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEE00444974706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id specialized InferenceExtension.shouldSample()()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  static Locale.current.getter();
  v5 = SystemLanguageModel.supportsLocale(_:)();

  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    result = AFIsInternalInstall();
    if (!result)
    {
      return result;
    }

    result = [objc_opt_self() sharedConnection];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    if (v8 == 1)
    {
      v9 = [objc_opt_self() sharedPreferences];
      v10 = [v9 siriDataSharingOptInStatus];

      return (v10 == 1);
    }
  }

  return 0;
}

uint64_t specialized InferenceExtension.shouldRun(context:)(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
  }

  else
  {
    v1 = 0;
    v3 = 0;
  }

  return _swift_task_switch(specialized InferenceExtension.shouldRun(context:), v1, v3);
}

uint64_t specialized InferenceExtension.shouldRun(context:)()
{
  if ((specialized InferenceExtension.shouldSample()() & 1) == 0)
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.inference);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "should not sample", v4, 2u);
    }
  }

  objc_allocWithZone(type metadata accessor for MLHostResult());
  v5 = MLHostResult.init(status:policy:)();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t type metadata accessor for UserEngagementInferenceExtensionConfig(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError()
{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError;
  if (!lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceExtension.PSEInferenceError and conformance InferenceExtension.PSEInferenceError);
  }

  return result;
}

uint64_t outlined init with copy of MLHostError(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t specialized UserEngagementInferenceError.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UserEngagementInferenceError.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for UserEngagementInferenceExtensionConfig()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for InferenceExtension()
{
  type metadata accessor for MLHostParameters<UserEngagementInferenceExtensionConfig>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for MLHostParameters<UserEngagementInferenceExtensionConfig>()
{
  if (!lazy cache variable for type metadata for MLHostParameters<UserEngagementInferenceExtensionConfig>)
  {
    type metadata accessor for UserEngagementInferenceExtensionConfig(255);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UserEngagementInferenceExtensionConfig and conformance UserEngagementInferenceExtensionConfig, type metadata accessor for UserEngagementInferenceExtensionConfig);
    v0 = type metadata accessor for MLHostParameters();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MLHostParameters<UserEngagementInferenceExtensionConfig>);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceExtension.PSEInferenceError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for InferenceExtension.PSEInferenceError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserEngagementInferenceError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserEngagementInferenceError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static InferenceUtils.isSupportedLocale()()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  static Locale.current.getter();
  v5 = SystemLanguageModel.supportsLocale(_:)();

  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

id static InferenceUtils.isDiagnosticsSubmissionAllowed()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveBoolValueForSetting:MCFeatureDiagnosticsSubmissionAllowed];

    return (v2 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL static InferenceUtils.isSiriOptedIn()()
{
  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 siriDataSharingOptInStatus];

  return v1 == 1;
}

uint64_t Logger.inference.unsafeMutableAddressor()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.inference);
}

uint64_t one-time initialization function for inference()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.inference);
  __swift_project_value_buffer(v0, static Logger.inference);
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;
  return Logger.init(_:)();
}

uint64_t *Log.pseLog.unsafeMutableAddressor()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  return &static Log.pseLog;
}

uint64_t static Logger.inference.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.inference);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for pseLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.pseLog = result;
  return result;
}

id static Log.pseLog.getter()
{
  if (one-time initialization token for pseLog != -1)
  {
    swift_once();
  }

  v1 = static Log.pseLog;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)()
{
  return GeneratedContent.value<A>(_:forProperty:)();
}

{
  return GeneratedContent.value<A>(_:forProperty:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}