uint64_t sub_10003E358()
{
  v1 = v0[433];
  v2 = v0[385];
  v3 = v0[383];
  v4 = v0[382];
  v124 = v0[389];
  v126 = v0[381];
  v5 = v0[375];
  v6 = v0[373];
  v7 = v0[372];
  v8 = v0[371];
  v9 = v0[370];
  v10 = v0[369];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_100007BC0(v124, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v126);
  v127 = v0[446];
  v11 = v0[432];
  v12 = v0[431];
  v13 = v0[429];
  v14 = v0[428];
  v15 = v0[427];
  v16 = v0[426];
  v17 = v0[425];
  v18 = v0[424];
  v21 = v0[423];
  v22 = v0[422];
  v23 = v0[421];
  v24 = v0[420];
  v25 = v0[419];
  v26 = v0[418];
  v27 = v0[417];
  v28 = v0[416];
  v29 = v0[415];
  v30 = v0[414];
  v31 = v0[413];
  v32 = v0[412];
  v33 = v0[411];
  v34 = v0[408];
  v35 = v0[407];
  v36 = v0[406];
  v37 = v0[405];
  v38 = v0[404];
  v39 = v0[403];
  v40 = v0[402];
  v41 = v0[401];
  v42 = v0[400];
  v43 = v0[399];
  v44 = v0[398];
  v45 = v0[397];
  v46 = v0[396];
  v47 = v0[395];
  v48 = v0[394];
  v49 = v0[393];
  v50 = v0[392];
  v51 = v0[389];
  v52 = v0[388];
  v53 = v0[387];
  v54 = v0[386];
  v55 = v0[385];
  v56 = v0[384];
  v57 = v0[381];
  v58 = v0[380];
  v59 = v0[377];
  v60 = v0[375];
  v61 = v0[374];
  v62 = v0[371];
  v63 = v0[368];
  v64 = v0[367];
  v65 = v0[366];
  v66 = v0[365];
  v67 = v0[364];
  v68 = v0[363];
  v69 = v0[362];
  v70 = v0[361];
  v71 = v0[358];
  v72 = v0[357];
  v73 = v0[356];
  v74 = v0[354];
  v75 = v0[351];
  v76 = v0[350];
  v77 = v0[349];
  v78 = v0[346];
  v79 = v0[343];
  v80 = v0[340];
  v81 = v0[337];
  v82 = v0[334];
  v83 = v0[333];
  v84 = v0[330];
  v85 = v0[329];
  v86 = v0[328];
  v87 = v0[327];
  v88 = v0[324];
  v89 = v0[323];
  v90 = v0[322];
  v91 = v0[321];
  v92 = v0[320];
  v93 = v0[319];
  v94 = v0[318];
  v95 = v0[317];
  v96 = v0[316];
  v97 = v0[315];
  v98 = v0[312];
  v99 = v0[311];
  v100 = v0[310];
  v101 = v0[309];
  v102 = v0[308];
  v103 = v0[305];
  v104 = v0[304];
  v105 = v0[303];
  v106 = v0[300];
  v107 = v0[297];
  v108 = v0[294];
  v109 = v0[293];
  v110 = v0[292];
  v111 = v0[291];
  v112 = v0[288];
  v113 = v0[287];
  v114 = v0[284];
  v115 = v0[281];
  v116 = v0[278];
  v117 = v0[275];
  v118 = v0[272];
  v119 = v0[269];
  v120 = v0[268];
  v121 = v0[265];
  v122 = v0[264];
  v123 = v0[263];
  v125 = v0[262];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v13 + 8))(v11, v14);

  v19 = v0[1];

  return v19();
}

uint64_t sub_10003EAD8()
{
  (*(v0[353] + 8))(v0[354], v0[352]);
  v1 = v0[264];
  v2 = v0[260];
  v0[256] = v0[450];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = v0[444];
    v27 = v0[442];
    v28 = v0[437];
    v29 = v0[433];
    v30 = v0[392];

    v31 = v0[256];

    sub_10004DC60();
    swift_errorRetain();
    v32 = sub_10004DC70();
    v33 = sub_10004DEB0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "#GenPhotoReq | OnScreenContentRequest | error = %@", v34, 0xCu);
      sub_100007BC0(v35, &qword_100061DC0, &unk_100050840);
    }

    v37 = v0[439];
    v38 = v0[392];
    v39 = v0[391];
    v40 = v0[390];
    v341 = v0[385];
    v346 = v0[389];
    v41 = v0[383];
    v351 = v0[381];
    v357 = v0[432];
    v331 = v0[375];
    v336 = v0[382];
    v42 = v0[373];
    v321 = v0[371];
    v326 = v0[372];
    v43 = v0[370];
    v316 = v0[369];

    v37(v38, v40);
    v44 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v45 = swift_allocObject();
    *(v45 + 16) = v44;
    *(v45 + 24) = 0;
    v46 = sub_10004D0F0();
    sub_10004AAE4(0, v46);

    swift_willThrow();
    (*(v43 + 8))(v321, v316);
    (*(v42 + 8))(v331, v326);
    (*(v41 + 8))(v341, v336);
    sub_100007BC0(v346, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v351);
    goto LABEL_15;
  }

  v3 = v0[264];
  v4 = v0[263];
  v5 = v0[261];
  v6 = v0[260];

  (*(v5 + 32))(v4, v3, v6);
  v7 = sub_10004D900();
  LOBYTE(v4) = sub_100044DE4(v4, v7);

  if ((v4 & 1) == 0)
  {
    v47 = v0[444];
    v48 = v0[442];
    v49 = v0[437];
    v50 = v0[433];
    v51 = v0[393];
    v52 = v0[263];
    v53 = v0[262];
    v54 = v0[261];
    v55 = v0[260];

    sub_10004DC60();
    v358 = *(v54 + 16);
    v358(v53, v52, v55);
    v56 = sub_10004DC70();
    v57 = sub_10004DEB0();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v0[262];
    v60 = v0[261];
    v61 = v0[260];
    if (v58)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
      swift_allocError();
      v358(v64, v59, v61);
      v65 = _swift_stdlib_bridgeErrorToNSError();
      v352 = *(v60 + 8);
      v352(v59, v61);
      *(v62 + 4) = v65;
      *v63 = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, "#GenPhotoReq | OnScreenContentRequest | error = %@", v62, 0xCu);
      sub_100007BC0(v63, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v352 = *(v60 + 8);
      v352(v59, v61);
    }

    v298 = v0[432];
    v334 = v0[385];
    v339 = v0[389];
    v324 = v0[383];
    v329 = v0[382];
    v344 = v0[381];
    v310 = v0[373];
    v314 = v0[372];
    v319 = v0[375];
    v94 = v0[370];
    v302 = v0[369];
    v306 = v0[371];
    v95 = v0[263];
    v96 = v0[260];
    v97 = (v0[391] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v0[439])(v0[393], v0[390]);
    v98 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v358(v100, v95, v96);
    v101 = sub_10004D0F0();
    sub_10004AAE4(0, v101);

    swift_allocError();
    v358(v102, v95, v96);
    swift_willThrow();
    v352(v95, v96);
    (*(v94 + 8))(v306, v302);
    (*(v310 + 8))(v319, v314);
    (*(v324 + 8))(v334, v329);
    sub_100007BC0(v339, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v344);
    v103 = v0[256];

LABEL_15:
    v104 = v0[432];
    v105 = v0[431];
    v106 = v0[429];
    v107 = v0[428];
    v108 = v0[427];
    v109 = v0[426];
    v110 = v0[425];
    v111 = v0[424];
    v112 = v0[423];
    v114 = v0[422];
    v116 = v0[421];
    v118 = v0[420];
    v120 = v0[419];
    v122 = v0[418];
    v124 = v0[417];
    v126 = v0[416];
    v128 = v0[415];
    v130 = v0[414];
    v132 = v0[413];
    v134 = v0[412];
    v136 = v0[411];
    v138 = v0[408];
    v140 = v0[407];
    v142 = v0[406];
    v144 = v0[405];
    v146 = v0[404];
    v148 = v0[403];
    v150 = v0[402];
    v152 = v0[401];
    v154 = v0[400];
    v156 = v0[399];
    v158 = v0[398];
    v160 = v0[397];
    v162 = v0[396];
    v164 = v0[395];
    v166 = v0[394];
    v168 = v0[393];
    v170 = v0[392];
    v172 = v0[389];
    v174 = v0[388];
    v176 = v0[387];
    v178 = v0[386];
    v180 = v0[385];
    v182 = v0[384];
    v184 = v0[381];
    v186 = v0[380];
    v188 = v0[377];
    v190 = v0[375];
    v192 = v0[374];
    v194 = v0[371];
    v196 = v0[368];
    v198 = v0[367];
    v200 = v0[366];
    v202 = v0[365];
    v204 = v0[364];
    v206 = v0[363];
    v208 = v0[362];
    v210 = v0[361];
    v212 = v0[358];
    v214 = v0[357];
    v216 = v0[356];
    v218 = v0[354];
    v220 = v0[351];
    v222 = v0[350];
    v224 = v0[349];
    v226 = v0[346];
    v228 = v0[343];
    v230 = v0[340];
    v232 = v0[337];
    v234 = v0[334];
    v236 = v0[333];
    v238 = v0[330];
    v240 = v0[329];
    v242 = v0[328];
    v244 = v0[327];
    v246 = v0[324];
    v248 = v0[323];
    v250 = v0[322];
    v252 = v0[321];
    v254 = v0[320];
    v256 = v0[319];
    v258 = v0[318];
    v260 = v0[317];
    v262 = v0[316];
    v264 = v0[315];
    v266 = v0[312];
    v268 = v0[311];
    v270 = v0[310];
    v272 = v0[309];
    v274 = v0[308];
    v276 = v0[305];
    v278 = v0[304];
    v280 = v0[303];
    v282 = v0[300];
    v284 = v0[297];
    v286 = v0[294];
    v289 = v0[293];
    v292 = v0[292];
    v295 = v0[291];
    v299 = v0[288];
    v303 = v0[287];
    v307 = v0[284];
    v311 = v0[281];
    v315 = v0[278];
    v320 = v0[275];
    v325 = v0[272];
    v330 = v0[269];
    v335 = v0[268];
    v340 = v0[265];
    v345 = v0[264];
    v349 = v0[263];
    v355 = v0[262];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v106 + 8))(v104, v107);

    v93 = v0[1];
    goto LABEL_16;
  }

  v8 = v0[398];
  v9 = v0[265];
  v10 = v0[263];
  v11 = v0[261];
  v12 = v0[260];
  sub_10004DC60();
  v13 = *(v11 + 16);
  v13(v9, v10, v12);
  v14 = sub_10004DC70();
  v15 = sub_10004DEB0();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[265];
  v18 = v0[263];
  v19 = v0[261];
  v20 = v0[260];
  if (v16)
  {
    v350 = v13;
    v21 = swift_slowAlloc();
    v356 = v18;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v350(v23, v17, v20);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    v25 = *(v19 + 8);
    v25(v17, v20);
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v21, 0xCu);
    sub_100007BC0(v22, &qword_100061DC0, &unk_100050840);

    v25(v356, v20);
  }

  else
  {

    v66 = *(v19 + 8);
    v66(v18, v20);
    v66(v17, v20);
  }

  v67 = v0[381];
  v68 = v0[379];
  v69 = v0[378];
  v70 = v0[356];
  v71 = v0[391] + 8;
  (v0[439])(v0[398], v0[390]);
  v72 = v0[256];

  sub_100014EBC(v67, v70);
  (*(v68 + 56))(v70, 0, 1, v69);
  v73 = *(v67 + *(v69 + 32));
  result = sub_10004CC20();
  v75 = v0[239];
  if (!v75)
  {
    __break(1u);
    return result;
  }

  v296 = v0[238];
  v76 = v0[444];
  v290 = v0[442];
  v77 = v0[437];
  v78 = v0[433];
  v353 = v0[385];
  v359 = v0[389];
  v342 = v0[383];
  v347 = v0[382];
  v79 = v0[381];
  v332 = v0[372];
  v337 = v0[375];
  v322 = v0[371];
  v327 = v0[373];
  v312 = v0[370];
  v317 = v0[369];
  v80 = v0[361];
  v81 = v0[360];
  v300 = v0[356];
  v304 = v0[355];
  v308 = v0[359];
  v82 = v0[305];
  v83 = v0[302];
  v84 = v0[301];
  v287 = v0[259];
  v293 = v0[258];

  (*(v83 + 104))(v82, enum case for CatId.empty(_:), v84);
  sub_1000448AC(v296, v75, v82, v79, v80);

  (*(v83 + 8))(v82, v84);
  sub_100014F20();
  sub_10004CBD0();
  (*(v81 + 8))(v80, v308);
  sub_100007BC0(v300, &qword_1000614A0, &unk_10004F640);
  (*(v312 + 8))(v322, v317);
  (*(v327 + 8))(v337, v332);
  (*(v342 + 8))(v353, v347);
  sub_100007BC0(v359, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v79);
  v85 = v0[432];
  v86 = v0[431];
  v87 = v0[429];
  v88 = v0[428];
  v89 = v0[427];
  v90 = v0[426];
  v91 = v0[425];
  v92 = v0[424];
  v113 = v0[423];
  v115 = v0[422];
  v117 = v0[421];
  v119 = v0[420];
  v121 = v0[419];
  v123 = v0[418];
  v125 = v0[417];
  v127 = v0[416];
  v129 = v0[415];
  v131 = v0[414];
  v133 = v0[413];
  v135 = v0[412];
  v137 = v0[411];
  v139 = v0[408];
  v141 = v0[407];
  v143 = v0[406];
  v145 = v0[405];
  v147 = v0[404];
  v149 = v0[403];
  v151 = v0[402];
  v153 = v0[401];
  v155 = v0[400];
  v157 = v0[399];
  v159 = v0[398];
  v161 = v0[397];
  v163 = v0[396];
  v165 = v0[395];
  v167 = v0[394];
  v169 = v0[393];
  v171 = v0[392];
  v173 = v0[389];
  v175 = v0[388];
  v177 = v0[387];
  v179 = v0[386];
  v181 = v0[385];
  v183 = v0[384];
  v185 = v0[381];
  v187 = v0[380];
  v189 = v0[377];
  v191 = v0[375];
  v193 = v0[374];
  v195 = v0[371];
  v197 = v0[368];
  v199 = v0[367];
  v201 = v0[366];
  v203 = v0[365];
  v205 = v0[364];
  v207 = v0[363];
  v209 = v0[362];
  v211 = v0[361];
  v213 = v0[358];
  v215 = v0[357];
  v217 = v0[356];
  v219 = v0[354];
  v221 = v0[351];
  v223 = v0[350];
  v225 = v0[349];
  v227 = v0[346];
  v229 = v0[343];
  v231 = v0[340];
  v233 = v0[337];
  v235 = v0[334];
  v237 = v0[333];
  v239 = v0[330];
  v241 = v0[329];
  v243 = v0[328];
  v245 = v0[327];
  v247 = v0[324];
  v249 = v0[323];
  v251 = v0[322];
  v253 = v0[321];
  v255 = v0[320];
  v257 = v0[319];
  v259 = v0[318];
  v261 = v0[317];
  v263 = v0[316];
  v265 = v0[315];
  v267 = v0[312];
  v269 = v0[311];
  v271 = v0[310];
  v273 = v0[309];
  v275 = v0[308];
  v277 = v0[305];
  v279 = v0[304];
  v281 = v0[303];
  v283 = v0[300];
  v285 = v0[297];
  v288 = v0[294];
  v291 = v0[293];
  v294 = v0[292];
  v297 = v0[291];
  v301 = v0[288];
  v305 = v0[287];
  v309 = v0[284];
  v313 = v0[281];
  v318 = v0[278];
  v323 = v0[275];
  v328 = v0[272];
  v333 = v0[269];
  v338 = v0[268];
  v343 = v0[265];
  v348 = v0[264];
  v354 = v0[263];
  v360 = v0[262];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v87 + 8))(v85, v88);

  v93 = v0[1];
LABEL_16:

  return v93();
}

uint64_t sub_100040344()
{
  v1 = v0[354];
  v2 = v0[353];
  v3 = v0[352];
  (*(v0[342] + 8))(v0[343], v0[341]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[264];
  v5 = v0[260];
  v0[256] = v0[454];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = v0[444];
    v30 = v0[442];
    v31 = v0[437];
    v32 = v0[433];
    v33 = v0[392];

    v34 = v0[256];

    sub_10004DC60();
    swift_errorRetain();
    v35 = sub_10004DC70();
    v36 = sub_10004DEB0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "#GenPhotoReq | OnScreenContentRequest | error = %@", v37, 0xCu);
      sub_100007BC0(v38, &qword_100061DC0, &unk_100050840);
    }

    v40 = v0[439];
    v41 = v0[392];
    v42 = v0[391];
    v43 = v0[390];
    v344 = v0[385];
    v349 = v0[389];
    v44 = v0[383];
    v354 = v0[381];
    v360 = v0[432];
    v334 = v0[375];
    v339 = v0[382];
    v45 = v0[373];
    v324 = v0[371];
    v329 = v0[372];
    v46 = v0[370];
    v319 = v0[369];

    v40(v41, v43);
    v47 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v48 = swift_allocObject();
    *(v48 + 16) = v47;
    *(v48 + 24) = 0;
    v49 = sub_10004D0F0();
    sub_10004AAE4(0, v49);

    swift_willThrow();
    (*(v46 + 8))(v324, v319);
    (*(v45 + 8))(v334, v329);
    (*(v44 + 8))(v344, v339);
    sub_100007BC0(v349, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v354);
    goto LABEL_15;
  }

  v6 = v0[264];
  v7 = v0[263];
  v8 = v0[261];
  v9 = v0[260];

  (*(v8 + 32))(v7, v6, v9);
  v10 = sub_10004D900();
  LOBYTE(v7) = sub_100044DE4(v7, v10);

  if ((v7 & 1) == 0)
  {
    v50 = v0[444];
    v51 = v0[442];
    v52 = v0[437];
    v53 = v0[433];
    v54 = v0[393];
    v55 = v0[263];
    v56 = v0[262];
    v57 = v0[261];
    v58 = v0[260];

    sub_10004DC60();
    v361 = *(v57 + 16);
    v361(v56, v55, v58);
    v59 = sub_10004DC70();
    v60 = sub_10004DEB0();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v0[262];
    v63 = v0[261];
    v64 = v0[260];
    if (v61)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
      swift_allocError();
      v361(v67, v62, v64);
      v68 = _swift_stdlib_bridgeErrorToNSError();
      v355 = *(v63 + 8);
      v355(v62, v64);
      *(v65 + 4) = v68;
      *v66 = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "#GenPhotoReq | OnScreenContentRequest | error = %@", v65, 0xCu);
      sub_100007BC0(v66, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v355 = *(v63 + 8);
      v355(v62, v64);
    }

    v301 = v0[432];
    v337 = v0[385];
    v342 = v0[389];
    v327 = v0[383];
    v332 = v0[382];
    v347 = v0[381];
    v313 = v0[373];
    v317 = v0[372];
    v322 = v0[375];
    v97 = v0[370];
    v305 = v0[369];
    v309 = v0[371];
    v98 = v0[263];
    v99 = v0[260];
    v100 = (v0[391] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v0[439])(v0[393], v0[390]);
    v101 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    *(v102 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v361(v103, v98, v99);
    v104 = sub_10004D0F0();
    sub_10004AAE4(0, v104);

    swift_allocError();
    v361(v105, v98, v99);
    swift_willThrow();
    v355(v98, v99);
    (*(v97 + 8))(v309, v305);
    (*(v313 + 8))(v322, v317);
    (*(v327 + 8))(v337, v332);
    sub_100007BC0(v342, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v347);
    v106 = v0[256];

LABEL_15:
    v107 = v0[432];
    v108 = v0[431];
    v109 = v0[429];
    v110 = v0[428];
    v111 = v0[427];
    v112 = v0[426];
    v113 = v0[425];
    v114 = v0[424];
    v115 = v0[423];
    v117 = v0[422];
    v119 = v0[421];
    v121 = v0[420];
    v123 = v0[419];
    v125 = v0[418];
    v127 = v0[417];
    v129 = v0[416];
    v131 = v0[415];
    v133 = v0[414];
    v135 = v0[413];
    v137 = v0[412];
    v139 = v0[411];
    v141 = v0[408];
    v143 = v0[407];
    v145 = v0[406];
    v147 = v0[405];
    v149 = v0[404];
    v151 = v0[403];
    v153 = v0[402];
    v155 = v0[401];
    v157 = v0[400];
    v159 = v0[399];
    v161 = v0[398];
    v163 = v0[397];
    v165 = v0[396];
    v167 = v0[395];
    v169 = v0[394];
    v171 = v0[393];
    v173 = v0[392];
    v175 = v0[389];
    v177 = v0[388];
    v179 = v0[387];
    v181 = v0[386];
    v183 = v0[385];
    v185 = v0[384];
    v187 = v0[381];
    v189 = v0[380];
    v191 = v0[377];
    v193 = v0[375];
    v195 = v0[374];
    v197 = v0[371];
    v199 = v0[368];
    v201 = v0[367];
    v203 = v0[366];
    v205 = v0[365];
    v207 = v0[364];
    v209 = v0[363];
    v211 = v0[362];
    v213 = v0[361];
    v215 = v0[358];
    v217 = v0[357];
    v219 = v0[356];
    v221 = v0[354];
    v223 = v0[351];
    v225 = v0[350];
    v227 = v0[349];
    v229 = v0[346];
    v231 = v0[343];
    v233 = v0[340];
    v235 = v0[337];
    v237 = v0[334];
    v239 = v0[333];
    v241 = v0[330];
    v243 = v0[329];
    v245 = v0[328];
    v247 = v0[327];
    v249 = v0[324];
    v251 = v0[323];
    v253 = v0[322];
    v255 = v0[321];
    v257 = v0[320];
    v259 = v0[319];
    v261 = v0[318];
    v263 = v0[317];
    v265 = v0[316];
    v267 = v0[315];
    v269 = v0[312];
    v271 = v0[311];
    v273 = v0[310];
    v275 = v0[309];
    v277 = v0[308];
    v279 = v0[305];
    v281 = v0[304];
    v283 = v0[303];
    v285 = v0[300];
    v287 = v0[297];
    v289 = v0[294];
    v292 = v0[293];
    v295 = v0[292];
    v298 = v0[291];
    v302 = v0[288];
    v306 = v0[287];
    v310 = v0[284];
    v314 = v0[281];
    v318 = v0[278];
    v323 = v0[275];
    v328 = v0[272];
    v333 = v0[269];
    v338 = v0[268];
    v343 = v0[265];
    v348 = v0[264];
    v352 = v0[263];
    v358 = v0[262];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v109 + 8))(v107, v110);

    v96 = v0[1];
    goto LABEL_16;
  }

  v11 = v0[398];
  v12 = v0[265];
  v13 = v0[263];
  v14 = v0[261];
  v15 = v0[260];
  sub_10004DC60();
  v16 = *(v14 + 16);
  v16(v12, v13, v15);
  v17 = sub_10004DC70();
  v18 = sub_10004DEB0();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[265];
  v21 = v0[263];
  v22 = v0[261];
  v23 = v0[260];
  if (v19)
  {
    v353 = v16;
    v24 = swift_slowAlloc();
    v359 = v21;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v353(v26, v20, v23);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    v28 = *(v22 + 8);
    v28(v20, v23);
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v24, 0xCu);
    sub_100007BC0(v25, &qword_100061DC0, &unk_100050840);

    v28(v359, v23);
  }

  else
  {

    v69 = *(v22 + 8);
    v69(v21, v23);
    v69(v20, v23);
  }

  v70 = v0[381];
  v71 = v0[379];
  v72 = v0[378];
  v73 = v0[356];
  v74 = v0[391] + 8;
  (v0[439])(v0[398], v0[390]);
  v75 = v0[256];

  sub_100014EBC(v70, v73);
  (*(v71 + 56))(v73, 0, 1, v72);
  v76 = *(v70 + *(v72 + 32));
  result = sub_10004CC20();
  v78 = v0[239];
  if (!v78)
  {
    __break(1u);
    return result;
  }

  v299 = v0[238];
  v79 = v0[444];
  v293 = v0[442];
  v80 = v0[437];
  v81 = v0[433];
  v356 = v0[385];
  v362 = v0[389];
  v345 = v0[383];
  v350 = v0[382];
  v82 = v0[381];
  v335 = v0[372];
  v340 = v0[375];
  v325 = v0[371];
  v330 = v0[373];
  v315 = v0[370];
  v320 = v0[369];
  v83 = v0[361];
  v84 = v0[360];
  v303 = v0[356];
  v307 = v0[355];
  v311 = v0[359];
  v85 = v0[305];
  v86 = v0[302];
  v87 = v0[301];
  v290 = v0[259];
  v296 = v0[258];

  (*(v86 + 104))(v85, enum case for CatId.empty(_:), v87);
  sub_1000448AC(v299, v78, v85, v82, v83);

  (*(v86 + 8))(v85, v87);
  sub_100014F20();
  sub_10004CBD0();
  (*(v84 + 8))(v83, v311);
  sub_100007BC0(v303, &qword_1000614A0, &unk_10004F640);
  (*(v315 + 8))(v325, v320);
  (*(v330 + 8))(v340, v335);
  (*(v345 + 8))(v356, v350);
  sub_100007BC0(v362, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v82);
  v88 = v0[432];
  v89 = v0[431];
  v90 = v0[429];
  v91 = v0[428];
  v92 = v0[427];
  v93 = v0[426];
  v94 = v0[425];
  v95 = v0[424];
  v116 = v0[423];
  v118 = v0[422];
  v120 = v0[421];
  v122 = v0[420];
  v124 = v0[419];
  v126 = v0[418];
  v128 = v0[417];
  v130 = v0[416];
  v132 = v0[415];
  v134 = v0[414];
  v136 = v0[413];
  v138 = v0[412];
  v140 = v0[411];
  v142 = v0[408];
  v144 = v0[407];
  v146 = v0[406];
  v148 = v0[405];
  v150 = v0[404];
  v152 = v0[403];
  v154 = v0[402];
  v156 = v0[401];
  v158 = v0[400];
  v160 = v0[399];
  v162 = v0[398];
  v164 = v0[397];
  v166 = v0[396];
  v168 = v0[395];
  v170 = v0[394];
  v172 = v0[393];
  v174 = v0[392];
  v176 = v0[389];
  v178 = v0[388];
  v180 = v0[387];
  v182 = v0[386];
  v184 = v0[385];
  v186 = v0[384];
  v188 = v0[381];
  v190 = v0[380];
  v192 = v0[377];
  v194 = v0[375];
  v196 = v0[374];
  v198 = v0[371];
  v200 = v0[368];
  v202 = v0[367];
  v204 = v0[366];
  v206 = v0[365];
  v208 = v0[364];
  v210 = v0[363];
  v212 = v0[362];
  v214 = v0[361];
  v216 = v0[358];
  v218 = v0[357];
  v220 = v0[356];
  v222 = v0[354];
  v224 = v0[351];
  v226 = v0[350];
  v228 = v0[349];
  v230 = v0[346];
  v232 = v0[343];
  v234 = v0[340];
  v236 = v0[337];
  v238 = v0[334];
  v240 = v0[333];
  v242 = v0[330];
  v244 = v0[329];
  v246 = v0[328];
  v248 = v0[327];
  v250 = v0[324];
  v252 = v0[323];
  v254 = v0[322];
  v256 = v0[321];
  v258 = v0[320];
  v260 = v0[319];
  v262 = v0[318];
  v264 = v0[317];
  v266 = v0[316];
  v268 = v0[315];
  v270 = v0[312];
  v272 = v0[311];
  v274 = v0[310];
  v276 = v0[309];
  v278 = v0[308];
  v280 = v0[305];
  v282 = v0[304];
  v284 = v0[303];
  v286 = v0[300];
  v288 = v0[297];
  v291 = v0[294];
  v294 = v0[293];
  v297 = v0[292];
  v300 = v0[291];
  v304 = v0[288];
  v308 = v0[287];
  v312 = v0[284];
  v316 = v0[281];
  v321 = v0[278];
  v326 = v0[275];
  v331 = v0[272];
  v336 = v0[269];
  v341 = v0[268];
  v346 = v0[265];
  v351 = v0[264];
  v357 = v0[263];
  v363 = v0[262];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v90 + 8))(v88, v91);

  v96 = v0[1];
LABEL_16:

  return v96();
}

uint64_t sub_100041BD4()
{
  v1 = v0[354];
  v2 = v0[353];
  v3 = v0[352];
  v4 = v0[351];
  v5 = v0[348];
  v6 = v0[347];
  v7 = v0[330];
  v8 = v0[324];
  (*(v0[314] + 8))(v0[315], v0[313]);
  sub_100007BC0(v8, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v7, &unk_100061490, &qword_10004F630);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v9 = v0[264];
  v10 = v0[260];
  v0[256] = v0[472];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = v0[444];
    v35 = v0[442];
    v36 = v0[437];
    v37 = v0[433];
    v38 = v0[392];

    v39 = v0[256];

    sub_10004DC60();
    swift_errorRetain();
    v40 = sub_10004DC70();
    v41 = sub_10004DEB0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "#GenPhotoReq | OnScreenContentRequest | error = %@", v42, 0xCu);
      sub_100007BC0(v43, &qword_100061DC0, &unk_100050840);
    }

    v45 = v0[439];
    v46 = v0[392];
    v47 = v0[391];
    v48 = v0[390];
    v349 = v0[385];
    v354 = v0[389];
    v49 = v0[383];
    v359 = v0[381];
    v365 = v0[432];
    v339 = v0[375];
    v344 = v0[382];
    v50 = v0[373];
    v329 = v0[371];
    v334 = v0[372];
    v51 = v0[370];
    v324 = v0[369];

    v45(v46, v48);
    v52 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = 0;
    v54 = sub_10004D0F0();
    sub_10004AAE4(0, v54);

    swift_willThrow();
    (*(v51 + 8))(v329, v324);
    (*(v50 + 8))(v339, v334);
    (*(v49 + 8))(v349, v344);
    sub_100007BC0(v354, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v359);
    goto LABEL_15;
  }

  v11 = v0[264];
  v12 = v0[263];
  v13 = v0[261];
  v14 = v0[260];

  (*(v13 + 32))(v12, v11, v14);
  v15 = sub_10004D900();
  LOBYTE(v12) = sub_100044DE4(v12, v15);

  if ((v12 & 1) == 0)
  {
    v55 = v0[444];
    v56 = v0[442];
    v57 = v0[437];
    v58 = v0[433];
    v59 = v0[393];
    v60 = v0[263];
    v61 = v0[262];
    v62 = v0[261];
    v63 = v0[260];

    sub_10004DC60();
    v366 = *(v62 + 16);
    v366(v61, v60, v63);
    v64 = sub_10004DC70();
    v65 = sub_10004DEB0();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[262];
    v68 = v0[261];
    v69 = v0[260];
    if (v66)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *v70 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
      swift_allocError();
      v366(v72, v67, v69);
      v73 = _swift_stdlib_bridgeErrorToNSError();
      v360 = *(v68 + 8);
      v360(v67, v69);
      *(v70 + 4) = v73;
      *v71 = v73;
      _os_log_impl(&_mh_execute_header, v64, v65, "#GenPhotoReq | OnScreenContentRequest | error = %@", v70, 0xCu);
      sub_100007BC0(v71, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v360 = *(v68 + 8);
      v360(v67, v69);
    }

    v306 = v0[432];
    v342 = v0[385];
    v347 = v0[389];
    v332 = v0[383];
    v337 = v0[382];
    v352 = v0[381];
    v318 = v0[373];
    v322 = v0[372];
    v327 = v0[375];
    v102 = v0[370];
    v310 = v0[369];
    v314 = v0[371];
    v103 = v0[263];
    v104 = v0[260];
    v105 = (v0[391] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v0[439])(v0[393], v0[390]);
    v106 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v107 = swift_allocObject();
    *(v107 + 16) = v106;
    *(v107 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v366(v108, v103, v104);
    v109 = sub_10004D0F0();
    sub_10004AAE4(0, v109);

    swift_allocError();
    v366(v110, v103, v104);
    swift_willThrow();
    v360(v103, v104);
    (*(v102 + 8))(v314, v310);
    (*(v318 + 8))(v327, v322);
    (*(v332 + 8))(v342, v337);
    sub_100007BC0(v347, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v352);
    v111 = v0[256];

LABEL_15:
    v112 = v0[432];
    v113 = v0[431];
    v114 = v0[429];
    v115 = v0[428];
    v116 = v0[427];
    v117 = v0[426];
    v118 = v0[425];
    v119 = v0[424];
    v120 = v0[423];
    v122 = v0[422];
    v124 = v0[421];
    v126 = v0[420];
    v128 = v0[419];
    v130 = v0[418];
    v132 = v0[417];
    v134 = v0[416];
    v136 = v0[415];
    v138 = v0[414];
    v140 = v0[413];
    v142 = v0[412];
    v144 = v0[411];
    v146 = v0[408];
    v148 = v0[407];
    v150 = v0[406];
    v152 = v0[405];
    v154 = v0[404];
    v156 = v0[403];
    v158 = v0[402];
    v160 = v0[401];
    v162 = v0[400];
    v164 = v0[399];
    v166 = v0[398];
    v168 = v0[397];
    v170 = v0[396];
    v172 = v0[395];
    v174 = v0[394];
    v176 = v0[393];
    v178 = v0[392];
    v180 = v0[389];
    v182 = v0[388];
    v184 = v0[387];
    v186 = v0[386];
    v188 = v0[385];
    v190 = v0[384];
    v192 = v0[381];
    v194 = v0[380];
    v196 = v0[377];
    v198 = v0[375];
    v200 = v0[374];
    v202 = v0[371];
    v204 = v0[368];
    v206 = v0[367];
    v208 = v0[366];
    v210 = v0[365];
    v212 = v0[364];
    v214 = v0[363];
    v216 = v0[362];
    v218 = v0[361];
    v220 = v0[358];
    v222 = v0[357];
    v224 = v0[356];
    v226 = v0[354];
    v228 = v0[351];
    v230 = v0[350];
    v232 = v0[349];
    v234 = v0[346];
    v236 = v0[343];
    v238 = v0[340];
    v240 = v0[337];
    v242 = v0[334];
    v244 = v0[333];
    v246 = v0[330];
    v248 = v0[329];
    v250 = v0[328];
    v252 = v0[327];
    v254 = v0[324];
    v256 = v0[323];
    v258 = v0[322];
    v260 = v0[321];
    v262 = v0[320];
    v264 = v0[319];
    v266 = v0[318];
    v268 = v0[317];
    v270 = v0[316];
    v272 = v0[315];
    v274 = v0[312];
    v276 = v0[311];
    v278 = v0[310];
    v280 = v0[309];
    v282 = v0[308];
    v284 = v0[305];
    v286 = v0[304];
    v288 = v0[303];
    v290 = v0[300];
    v292 = v0[297];
    v294 = v0[294];
    v297 = v0[293];
    v300 = v0[292];
    v303 = v0[291];
    v307 = v0[288];
    v311 = v0[287];
    v315 = v0[284];
    v319 = v0[281];
    v323 = v0[278];
    v328 = v0[275];
    v333 = v0[272];
    v338 = v0[269];
    v343 = v0[268];
    v348 = v0[265];
    v353 = v0[264];
    v357 = v0[263];
    v363 = v0[262];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v114 + 8))(v112, v115);

    v101 = v0[1];
    goto LABEL_16;
  }

  v16 = v0[398];
  v17 = v0[265];
  v18 = v0[263];
  v19 = v0[261];
  v20 = v0[260];
  sub_10004DC60();
  v21 = *(v19 + 16);
  v21(v17, v18, v20);
  v22 = sub_10004DC70();
  v23 = sub_10004DEB0();
  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[265];
  v26 = v0[263];
  v27 = v0[261];
  v28 = v0[260];
  if (v24)
  {
    v358 = v21;
    v29 = swift_slowAlloc();
    v364 = v26;
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors);
    swift_allocError();
    v358(v31, v25, v28);
    v32 = _swift_stdlib_bridgeErrorToNSError();
    v33 = *(v27 + 8);
    v33(v25, v28);
    *(v29 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v29, 0xCu);
    sub_100007BC0(v30, &qword_100061DC0, &unk_100050840);

    v33(v364, v28);
  }

  else
  {

    v74 = *(v27 + 8);
    v74(v26, v28);
    v74(v25, v28);
  }

  v75 = v0[381];
  v76 = v0[379];
  v77 = v0[378];
  v78 = v0[356];
  v79 = v0[391] + 8;
  (v0[439])(v0[398], v0[390]);
  v80 = v0[256];

  sub_100014EBC(v75, v78);
  (*(v76 + 56))(v78, 0, 1, v77);
  v81 = *(v75 + *(v77 + 32));
  result = sub_10004CC20();
  v83 = v0[239];
  if (!v83)
  {
    __break(1u);
    return result;
  }

  v304 = v0[238];
  v84 = v0[444];
  v298 = v0[442];
  v85 = v0[437];
  v86 = v0[433];
  v361 = v0[385];
  v367 = v0[389];
  v350 = v0[383];
  v355 = v0[382];
  v87 = v0[381];
  v340 = v0[372];
  v345 = v0[375];
  v330 = v0[371];
  v335 = v0[373];
  v320 = v0[370];
  v325 = v0[369];
  v88 = v0[361];
  v89 = v0[360];
  v308 = v0[356];
  v312 = v0[355];
  v316 = v0[359];
  v90 = v0[305];
  v91 = v0[302];
  v92 = v0[301];
  v295 = v0[259];
  v301 = v0[258];

  (*(v91 + 104))(v90, enum case for CatId.empty(_:), v92);
  sub_1000448AC(v304, v83, v90, v87, v88);

  (*(v91 + 8))(v90, v92);
  sub_100014F20();
  sub_10004CBD0();
  (*(v89 + 8))(v88, v316);
  sub_100007BC0(v308, &qword_1000614A0, &unk_10004F640);
  (*(v320 + 8))(v330, v325);
  (*(v335 + 8))(v345, v340);
  (*(v350 + 8))(v361, v355);
  sub_100007BC0(v367, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v87);
  v93 = v0[432];
  v94 = v0[431];
  v95 = v0[429];
  v96 = v0[428];
  v97 = v0[427];
  v98 = v0[426];
  v99 = v0[425];
  v100 = v0[424];
  v121 = v0[423];
  v123 = v0[422];
  v125 = v0[421];
  v127 = v0[420];
  v129 = v0[419];
  v131 = v0[418];
  v133 = v0[417];
  v135 = v0[416];
  v137 = v0[415];
  v139 = v0[414];
  v141 = v0[413];
  v143 = v0[412];
  v145 = v0[411];
  v147 = v0[408];
  v149 = v0[407];
  v151 = v0[406];
  v153 = v0[405];
  v155 = v0[404];
  v157 = v0[403];
  v159 = v0[402];
  v161 = v0[401];
  v163 = v0[400];
  v165 = v0[399];
  v167 = v0[398];
  v169 = v0[397];
  v171 = v0[396];
  v173 = v0[395];
  v175 = v0[394];
  v177 = v0[393];
  v179 = v0[392];
  v181 = v0[389];
  v183 = v0[388];
  v185 = v0[387];
  v187 = v0[386];
  v189 = v0[385];
  v191 = v0[384];
  v193 = v0[381];
  v195 = v0[380];
  v197 = v0[377];
  v199 = v0[375];
  v201 = v0[374];
  v203 = v0[371];
  v205 = v0[368];
  v207 = v0[367];
  v209 = v0[366];
  v211 = v0[365];
  v213 = v0[364];
  v215 = v0[363];
  v217 = v0[362];
  v219 = v0[361];
  v221 = v0[358];
  v223 = v0[357];
  v225 = v0[356];
  v227 = v0[354];
  v229 = v0[351];
  v231 = v0[350];
  v233 = v0[349];
  v235 = v0[346];
  v237 = v0[343];
  v239 = v0[340];
  v241 = v0[337];
  v243 = v0[334];
  v245 = v0[333];
  v247 = v0[330];
  v249 = v0[329];
  v251 = v0[328];
  v253 = v0[327];
  v255 = v0[324];
  v257 = v0[323];
  v259 = v0[322];
  v261 = v0[321];
  v263 = v0[320];
  v265 = v0[319];
  v267 = v0[318];
  v269 = v0[317];
  v271 = v0[316];
  v273 = v0[315];
  v275 = v0[312];
  v277 = v0[311];
  v279 = v0[310];
  v281 = v0[309];
  v283 = v0[308];
  v285 = v0[305];
  v287 = v0[304];
  v289 = v0[303];
  v291 = v0[300];
  v293 = v0[297];
  v296 = v0[294];
  v299 = v0[293];
  v302 = v0[292];
  v305 = v0[291];
  v309 = v0[288];
  v313 = v0[287];
  v317 = v0[284];
  v321 = v0[281];
  v326 = v0[278];
  v331 = v0[275];
  v336 = v0[272];
  v341 = v0[269];
  v346 = v0[268];
  v351 = v0[265];
  v356 = v0[264];
  v362 = v0[263];
  v368 = v0[262];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v95 + 8))(v93, v96);

  v101 = v0[1];
LABEL_16:

  return v101();
}

uint64_t sub_1000434C0(uint64_t a1)
{
  v2 = sub_10004DC80();
  v18 = *(v2 - 8);
  v19 = v2;
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAF0();
  v10 = sub_10004DC00();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10004D6C0();

  sub_100007BC0(v9, &unk_100061550, &unk_1000501C0);
  sub_10004D6F0();
  sub_10004D6E0();

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB90();

  sub_10004DC60();
  swift_unknownObjectRetain();
  v11 = sub_10004DC70();
  v12 = sub_10004DEA0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v21);
    *(v13 + 12) = 2080;
    v20 = a1;
    swift_unknownObjectRetain();
    sub_1000026D8(&unk_100061EB0, &qword_1000507D0);
    v14 = sub_10004DD70();
    v16 = sub_10001E340(v14, v15, &v21);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "(Self.self).%s disposing %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v18 + 8))(v5, v19);
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_10004CB90();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = sub_10004DA90();
  v5[22] = v9;
  v10 = *(v9 - 8);
  v5[23] = v10;
  v11 = *(v10 + 64) + 15;
  v5[24] = swift_task_alloc();
  v12 = *(*(sub_1000026D8(&unk_100061B20, &qword_100050D50) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  sub_10004DE50();
  v5[26] = sub_10004DE40();
  v14 = sub_10004DE20();
  v5[27] = v14;
  v5[28] = v13;

  return _swift_task_switch(sub_100043984, v14, v13);
}

uint64_t sub_100043984()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v16 = v0[17];
  v17 = v0[18];
  v5 = v0[15];
  v6 = v0[14];
  v7 = *(v0[16] + 152);
  v0[29] = sub_10004CCE0();
  sub_10004D8E0();
  sub_10004D8D0();
  (*(v4 + 104))(v2, enum case for CatId.acmeAsks(_:), v3);
  sub_1000026D8(&unk_100061540, &unk_1000507C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = 0x6E6F697473657571;
  *(inited + 40) = 0xE800000000000000;
  v9 = sub_10004DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_100045F74(inited);
  swift_setDeallocating();
  sub_100007BC0(inited + 32, &unk_100061E40, qword_10004F6E0);
  sub_10004D8B0();

  (*(v4 + 8))(v2, v3);
  sub_10004CBA0();
  v11 = sub_10004CBB0();
  (*(*(v11 - 8) + 56))(v1, 0, 1, v11);
  v12 = async function pointer to IntentParameter.requestValue(_:)[1];
  v13 = swift_task_alloc();
  v0[30] = v13;
  *v13 = v0;
  v13[1] = sub_100043BCC;
  v14 = v0[25];

  return IntentParameter.requestValue(_:)(v0 + 12, v14);
}

uint64_t sub_100043BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 232);
  v5 = *(*v1 + 200);
  v6 = *v1;
  *(*v1 + 248) = v0;

  sub_100007BC0(v5, &unk_100061B20, &qword_100050D50);

  v7 = *(v2 + 224);
  v8 = *(v2 + 216);
  if (v0)
  {
    v9 = sub_100013F50;
  }

  else
  {
    v9 = sub_100043D58;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100043D58()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  v7 = v0[16];

  v8 = v0[13];
  v11 = v0[12];
  sub_10004DBC0();
  sub_10004DBB0();
  sub_100021468();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v4, v6);
  sub_10004DB80();

  v9 = v0[1];

  return v9(v11, v8);
}

uint64_t sub_100043E8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 120) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_10004CB90();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  sub_10004DE50();
  *(v5 + 72) = sub_10004DE40();
  v10 = sub_10004DE20();
  *(v5 + 80) = v10;
  *(v5 + 88) = v9;

  return _swift_task_switch(sub_100043F88, v10, v9);
}

uint64_t sub_100043F88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_10004B450(0);

  v6 = v2[3];
  v5 = v2[4];
  v7 = sub_100014E78(v2, v6);
  v8 = async function pointer to AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)[1];
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  v10 = sub_100021468();
  *(v0 + 104) = v10;
  *v9 = v0;
  v9[1] = sub_1000440C4;
  v11 = *(v0 + 40);
  v12 = *(v0 + 120);
  v13 = *(v0 + 24);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v7, v13, v12, &type metadata for GenerateRichContentFromMediaIntent, v6, v10, v5);
}

uint64_t sub_1000440C4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_1000133A4;
  }

  else
  {
    v7 = sub_100044200;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100044200()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v3, v4);
  sub_10004DB80();

  v7 = v0[1];

  return v7();
}

void sub_100044304()
{
  sub_1000469C0();
  v0 = sub_10004CFD0();
  v1 = sub_10004D650();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setTotalUnitCount:v1 - 1];

    v2 = sub_10004CFD0();
    [v2 setTotalUnitCount:sub_10004D650()];
  }
}

void sub_1000443B0(uint64_t a1)
{
  sub_1000469C0();
  v2 = sub_10004CFD0();
  v3 = sub_10004DD00();
  [v2 setLocalizedDescription:v3];

  v4 = sub_10004CFD0();
  [v4 setCompletedUnitCount:a1];
}

uint64_t sub_10004447C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10004CB90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10004DE50();
  v1[6] = sub_10004DE40();
  v6 = sub_10004DE20();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100044570, v6, v5);
}

uint64_t sub_100044570()
{
  v1 = *(v0 + 16);
  sub_10004DB10();
  v2 = sub_10004DD00();

  v3 = *(v1 + 128);
  sub_10004CCC0();
  v4 = [objc_opt_self() montaraEnablementWithBundleIdentifier:v2 source:0 isExplicitRequest:*(v0 + 104) & 1];
  *(v0 + 72) = v4;

  v5 = async function pointer to AppIntent.requestConfirmation(systemStyle:)[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_100021468();
  *(v0 + 88) = v7;
  *v6 = v0;
  v6[1] = sub_10004468C;
  v8 = *(v0 + 16);

  return AppIntent.requestConfirmation(systemStyle:)(v4, &type metadata for GenerateRichContentFromMediaIntent, v7);
}

uint64_t sub_10004468C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_100013840;
  }

  else
  {

    v4 = *(v2 + 56);
    v5 = *(v2 + 64);
    v6 = sub_1000447A8;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1000447A8()
{
  v1 = v0[11];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v3, v4);
  sub_10004DB80();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000448AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a4;
  v51 = a2;
  v52 = a3;
  v49 = a5;
  v50 = a1;
  v5 = sub_10004DA90();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v43 - v10;
  v11 = sub_10004D240();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004CEF0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v43 - v23;
  sub_100021468();
  sub_10004CA80();
  sub_10004CED0();
  (*(v17 + 8))(v20, v16);
  v25 = sub_10004CEC0();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100007BC0(v24, &qword_1000614D8, &unk_100050DA0);
LABEL_5:
    sub_10004D230();
    v44 = sub_10004D220();
    v45 = v30;
    (*(v12 + 8))(v15, v11);

    goto LABEL_6;
  }

  v27 = sub_10004CE90();
  v29 = v28;
  (*(v26 + 8))(v24, v25);
  if (!v29)
  {
    goto LABEL_5;
  }

  v44 = v27;
  v45 = v29;
LABEL_6:
  v31 = v46;
  v32 = *(v46 + 104);
  v32(v9, enum case for CatId.empty(_:), v5);
  sub_100046A14(&unk_100061500, &type metadata accessor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  if (v55 == v53 && v56 == v54)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_10004DFA0();
  }

  v34 = *(v31 + 8);
  v34(v9, v5);

  v43 = v5;
  if (v33)
  {
    v35 = v48;
    v32(v48, enum case for CatId.generateRichContentFromMediaResponse(_:), v5);
  }

  else
  {
    v36 = *(v31 + 16);
    v35 = v48;
    v36(v48, v52, v5);
  }

  sub_10004D8A0();
  v37 = type metadata accessor for GenerativeResponseEntity(0);
  v38 = v47;
  v39 = *(v47 + v37[8]);
  sub_10004CC20();
  v40 = *(v38 + v37[10]);
  sub_10004CC20();
  v41 = *(v38 + v37[11]);
  sub_10004CC20();
  sub_10004D890();

  return (v34)(v35, v43);
}

BOOL sub_100044DE4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_10004D910() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100046A14(&qword_100061E28, &type metadata accessor for ContentRequestErrors);
  }

  while ((sub_10004DCC0() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100044EF0()
{
  v1 = *(v0 + 160);
  sub_10004CCC0();
  return sub_10004CF00();
}

uint64_t sub_100044F30()
{
  v1 = *(v0 + 128);
  sub_10004CCC0();
  return v3;
}

unint64_t sub_100044F68()
{
  result = qword_100061D60;
  if (!qword_100061D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D60);
  }

  return result;
}

unint64_t sub_100044FC0()
{
  result = qword_100061D68;
  if (!qword_100061D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D68);
  }

  return result;
}

uint64_t sub_100045064@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061030 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, qword_1000624F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004510C()
{
  v0 = sub_1000026D8(&qword_100061EC0, &qword_100050E10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10004CF90();
  return sub_10004CF80();
}

uint64_t sub_1000451E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return sub_100033FD8(a1);
}

uint64_t sub_100045284(uint64_t a1)
{
  v2 = sub_10004544C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000452D0(uint64_t a1)
{
  v2 = sub_100021468();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10004530C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100045348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100045390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004544C()
{
  result = qword_100061D80;
  if (!qword_100061D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D80);
  }

  return result;
}

unint64_t sub_1000454A0()
{
  result = qword_100061D98;
  if (!qword_100061D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D98);
  }

  return result;
}

unint64_t sub_10004555C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004DFC0();
  sub_10004DDB0();

  v5 = sub_10004DFD0();

  return sub_100045744(a1 & 1, v5);
}

unint64_t sub_100045600(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004DD30();
  sub_10004DFC0();
  sub_10004DDB0();
  v4 = sub_10004DFD0();

  return sub_100045888(a1, v4);
}

unint64_t sub_100045690(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10004DFC0();
  type metadata accessor for CFString(0);
  sub_100046A14(&qword_100061EE8, type metadata accessor for CFString);
  sub_10004D2E0();
  v4 = sub_10004DFD0();

  return sub_10004598C(a1, v4);
}

unint64_t sub_100045744(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x726568746FLL;
    }

    else
    {
      v6 = 0x54504774616863;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x726568746FLL : 0x54504774616863;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10004DFA0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100045888(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004DD30();
      v9 = v8;
      if (v7 == sub_10004DD30() && v9 == v10)
      {
        break;
      }

      v12 = sub_10004DFA0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004598C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100046A14(&qword_100061EE8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004D2D0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

size_t sub_100045A98(size_t a1, int64_t a2, char a3)
{
  result = sub_100045AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100045AB8(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026D8(&qword_100061E20, &qword_100050E08);
  v10 = *(sub_10004D3F0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10004D3F0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100045C90(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F10, &qword_10004F290);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000026D8(&qword_100061F18, qword_100050E50);
    v8 = sub_10004DF50();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001564C(v10, v6, &qword_100061F10, &qword_10004F290);
      v12 = *v6;
      result = sub_10004555C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_10004CF30();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100045E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E18, &qword_100050E00);
    v3 = sub_10004DF50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000079D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100045F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E10, &unk_10004F310);
    v3 = sub_10004DF50();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001564C(v4, &v13, &unk_100061E40, qword_10004F6E0);
      v5 = v13;
      v6 = v14;
      result = sub_1000079D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007DE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000460EC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000026D8(a2, a3);
    v9 = sub_10004DF50();
    v10 = a1 + 32;

    while (1)
    {
      sub_10001564C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_100045600(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100007DE8(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100046204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061EE0, &qword_100050E30);
    v3 = sub_10004DF50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100045690(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100046304(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100046330()
{
  v1 = *(v0 + 40);
  sub_10004DFC0();
  sub_10004DDB0();
  v2 = sub_10004DFD0();

  return sub_100046304(v2);
}

unint64_t sub_10004639C(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F00, &unk_1000512C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000026D8(&qword_100061F08, &unk_100050E40);
    v8 = sub_10004DF50();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001564C(v9, v6, &qword_100061F00, &unk_1000512C0);
      result = sub_100046330();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_10004CF30();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100046568()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);
  v1 = v0[12];

  sub_100007B00(v0 + 13);
  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];

  v6 = v0[22];

  v7 = v0[24];

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1000465E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 184);
  v7 = *(v2 + 192);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100015400;

  return sub_1000437F4(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_1000466A4()
{
  v1 = sub_10004D210();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007B00((v0 + v5));
  sub_100007B00((v0 + v5 + 40));
  v6 = *(v0 + v5 + 80);

  sub_100007B00((v0 + v5 + 88));
  v7 = *(v0 + v5 + 128);

  v8 = *(v0 + v5 + 136);

  v9 = *(v0 + v5 + 144);

  v10 = *(v0 + v5 + 152);

  v11 = *(v0 + v5 + 160);

  return _swift_deallocObject(v0, v5 + 168, v3 | 7);
}

uint64_t sub_100046784(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(sub_10004D210() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100002414;

  return sub_100043E8C(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_1000468AC()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);
  v1 = v0[12];

  sub_100007B00(v0 + 13);
  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];

  v6 = v0[22];

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10004692C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001578C;

  return sub_10004447C(v0 + 16);
}

unint64_t sub_1000469C0()
{
  result = qword_100061E30;
  if (!qword_100061E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E30);
  }

  return result;
}

uint64_t sub_100046A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100046A88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1000026D8(&qword_100062120, &qword_100050F98) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100046B24, 0, 0);
}

uint64_t sub_100046B24()
{
  v1 = *(v0[3] + 16);
  if (sub_10004D970())
  {
    v2 = v0[4];
    v3 = v0[2];
    v4 = type metadata accessor for GenerativeResponseEntity(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(&async function pointer to dispatch thunk of PartnerStreamWrapper.getStreamedResponse() + 1);
    v10 = (&async function pointer to dispatch thunk of PartnerStreamWrapper.getStreamedResponse() + async function pointer to dispatch thunk of PartnerStreamWrapper.getStreamedResponse());
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_100046C64;
    v9 = v0[4];

    return v10(v9);
  }
}

uint64_t sub_100046C64()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_100046D60, 0, 0);
}

uint64_t sub_100046D60()
{
  v1 = v0[4];
  v2 = sub_10004D870();
  v0[6] = v2;
  v3 = *(v2 - 8);
  v0[7] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007BC0(v1, &qword_100062120, &qword_100050F98);
    v4 = v0[4];
    v5 = v0[2];
    v6 = type metadata accessor for GenerativeResponseEntity(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_100046F08;
    v10 = v0[4];
    v11 = v0[2];

    return sub_100047108(v11);
  }
}

uint64_t sub_100046F08()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100047060, 0, 0);
}

uint64_t sub_100047060()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100047108(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_10004D410();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_10004D760();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100047230, 0, 0);
}

uint64_t sub_100047230()
{
  v1 = *(v0 + 48);
  sub_1000157A0(v1);
  v2 = sub_10004D7F0();
  v4 = v3;
  v5 = type metadata accessor for GenerativeResponseEntity(0);
  v6 = *(v1 + *(v5 + 32));
  *(v0 + 16) = v2;
  *(v0 + 24) = v4;
  sub_10004CC30();
  v7 = sub_10004D860();
  v8 = *(v1 + *(v5 + 36));
  *(v0 + 32) = v7;
  *(v0 + 40) = v9;
  sub_10004CC30();
  v10 = sub_10004D810();
  *(v0 + 120) = v10;
  v11 = *(v10 + 16);
  *(v0 + 128) = v11;
  if (v11)
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v13 + 16);
    v13 += 16;
    v15 = *(v13 + 64);
    *(v0 + 192) = v15;
    *(v0 + 136) = *(v13 + 56);
    *(v0 + 144) = v14;
    *(v0 + 152) = 0;
    *(v0 + 160) = &_swiftEmptyArrayStorage;
    v14(*(v0 + 112), v10 + ((v15 + 32) & ~v15), v12);
    v16 = swift_task_alloc();
    *(v0 + 168) = v16;
    *v16 = v0;
    v16[1] = sub_10004741C;
    v17 = *(v0 + 112);
    v18 = *(v0 + 88);

    return sub_100004E18(v18);
  }

  else
  {

    *(v0 + 176) = &_swiftEmptyArrayStorage;
    v20 = swift_task_alloc();
    *(v0 + 184) = v20;
    *v20 = v0;
    v20[1] = sub_100047810;
    v21 = *(v0 + 48);

    return sub_100015B24(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10004741C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_100047574, 0, 0);
}

uint64_t sub_100047574()
{
  v1 = *(v0 + 160);
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1000484AC(0, v3[2] + 1, 1, *(v0 + 160), &qword_100062140, &unk_100050FC0, &type metadata accessor for RichContentResultSegment);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1000484AC(v4 > 1, v5 + 1, 1, v3, &qword_100062140, &unk_100050FC0, &type metadata accessor for RichContentResultSegment);
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 80);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  v10 = *(v0 + 152) + 1;
  (*(v9 + 8))(*(v0 + 88), v8);
  v3[2] = v5 + 1;
  (*(v9 + 32))(v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v5, v7, v8);
  if (v10 == v6)
  {
    v11 = *(v0 + 120);

    *(v0 + 176) = v3;
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_100047810;
    v13 = *(v0 + 48);

    return sub_100015B24(v3);
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 152) + 1;
    *(v0 + 152) = v16;
    *(v0 + 160) = v3;
    v17 = *(v0 + 104) + 16;
    v15(*(v0 + 112), *(v0 + 120) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 136) * v16, *(v0 + 96));
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = sub_10004741C;
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);

    return sub_100004E18(v20);
  }
}

uint64_t sub_100047810()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return _swift_task_switch(sub_100047928, 0, 0);
}

uint64_t sub_100047928()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  sub_100017588();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000479B0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100047A0C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100047AA8;

  return sub_100046A88(a1);
}

uint64_t sub_100047AA8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100047BA0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    swift_getObjectType();
    v4 = sub_10004DE20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  return _swift_task_switch(sub_100047C30, v4, v6);
}

uint64_t sub_100047C30()
{
  v1 = **(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_100047CCC;
  v3 = *(v0 + 16);

  return sub_100046A88(v3);
}

uint64_t sub_100047CCC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100047DC4()
{
  sub_100007BC0(v0 + OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity, &qword_1000614A0, &unk_10004F640);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyGenerativeResponseIterator()
{
  result = qword_100062090;
  if (!qword_100062090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100047E8C()
{
  sub_100047F1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100047F1C()
{
  if (!qword_1000620A0)
  {
    type metadata accessor for GenerativeResponseEntity(255);
    v0 = sub_10004DEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000620A0);
    }
  }
}

uint64_t sub_100047F80(uint64_t a1)
{
  v2[8] = a1;
  v3 = *(*(sub_1000026D8(&qword_1000614A0, &unk_10004F640) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = *v1;

  return _swift_task_switch(sub_100048024, 0, 0);
}

uint64_t sub_100048024()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity;
  swift_beginAccess();
  sub_100048688(v2 + v4, v3);
  v5 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  swift_beginAccess();
  sub_1000486F8(v1, v2 + v4);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100048128(uint64_t a1, uint64_t a2)
{
  v3[8] = a1;
  v3[9] = v2;
  v5 = *(*(sub_1000026D8(&qword_1000614A0, &unk_10004F640) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_10004DE20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_1000481FC, v6, v8);
}

uint64_t sub_100048224()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity;
  swift_beginAccess();
  sub_100048688(v2 + v4, v3);
  v5 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  swift_beginAccess();
  sub_1000486F8(v1, v2 + v4);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

char *sub_100048328(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026D8(&qword_100062130, &qword_100050FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000484AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026D8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100048688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000486F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100048768(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000026D8(&qword_100062148, &unk_100050FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000026D8(&qword_100061A00, &qword_100050178);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t DirectInvocationClient.clientId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DirectInvocationClientID.visualIntelligence(_:);
  v3 = sub_10004D5B0();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1000489A4()
{
  v0 = sub_1000026D8(&unk_100061B30, "zS");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_10004D130();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10004D020();
  sub_1000037AC(v7, static DirectInvocationClient.typeDisplayRepresentation);
  sub_100003774(v7, static DirectInvocationClient.typeDisplayRepresentation);
  sub_10004D110();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_10004D010();
}

uint64_t DirectInvocationClient.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();

  return sub_100003774(v0, static DirectInvocationClient.typeDisplayRepresentation);
}

uint64_t static DirectInvocationClient.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DirectInvocationClient.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DirectInvocationClient.typeDisplayRepresentation.modify())()
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();
  sub_100003774(v0, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL DirectInvocationClient.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DD40;
  v6._object = a2;
  v4 = sub_10004DF70(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100048E18()
{
  sub_10004DFC0();
  sub_10004DDB0();
  return sub_10004DFD0();
}

Swift::Int sub_100048E8C()
{
  sub_10004DFC0();
  sub_10004DDB0();
  return sub_10004DFD0();
}

uint64_t sub_100048EE0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005DDA0;
  v7._object = v3;
  v5 = sub_10004DF70(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100048F54(uint64_t a1)
{
  v2 = sub_1000454A0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100048FA0(uint64_t a1)
{
  v2 = sub_10004950C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s28GenerativeAssistantExtension22DirectInvocationClientO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = sub_1000026D8(&qword_100061308, "zS");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_1000026D8(&unk_100061B30, "zS");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_10004D130();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000026D8(&qword_1000621B8, &qword_1000512B8);
  v11 = *(sub_1000026D8(&qword_100061F00, &unk_1000512C0) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10004F380;
  sub_10004D110();
  (*(v9 + 56))(v7, 1, 1, v8);
  v15 = sub_10004CF10();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_10004CF20();
  v16 = sub_10004639C(v14);
  swift_setDeallocating();
  sub_100049800(v14 + v13);
  swift_deallocClassInstance();
  return v16;
}

unint64_t sub_1000492A4()
{
  result = qword_100062150;
  if (!qword_100062150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062150);
  }

  return result;
}

unint64_t sub_1000492FC()
{
  result = qword_100062158;
  if (!qword_100062158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062158);
  }

  return result;
}

unint64_t sub_100049354()
{
  result = qword_100062160;
  if (!qword_100062160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062160);
  }

  return result;
}

unint64_t sub_1000493AC()
{
  result = qword_100062168;
  if (!qword_100062168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062168);
  }

  return result;
}

unint64_t sub_100049404()
{
  result = qword_100062170;
  if (!qword_100062170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062170);
  }

  return result;
}

unint64_t sub_10004945C()
{
  result = qword_100062178;
  if (!qword_100062178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062178);
  }

  return result;
}

unint64_t sub_1000494B4()
{
  result = qword_100062180;
  if (!qword_100062180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062180);
  }

  return result;
}

unint64_t sub_10004950C()
{
  result = qword_100062188;
  if (!qword_100062188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062188);
  }

  return result;
}

unint64_t sub_1000495B4()
{
  result = qword_100062190;
  if (!qword_100062190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062190);
  }

  return result;
}

unint64_t sub_10004960C()
{
  result = qword_100062198;
  if (!qword_100062198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062198);
  }

  return result;
}

unint64_t sub_100049664()
{
  result = qword_1000621A0;
  if (!qword_1000621A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621A0);
  }

  return result;
}

unint64_t sub_1000496BC()
{
  result = qword_1000621A8;
  if (!qword_1000621A8)
  {
    sub_100002AEC(&qword_1000621B0, &qword_100051238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationClient(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DirectInvocationClient(_WORD *result, int a2, int a3)
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

uint64_t sub_100049800(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F00, &unk_1000512C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049870(uint64_t a1)
{
  v2 = sub_100049B38();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000498BC()
{
  v0 = sub_10004D520();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026D8(&qword_1000621D0, &qword_100051388);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10004F380;
  v6 = sub_10004DB20();
  *(v5 + 56) = v6;
  v7 = sub_100014CF4((v5 + 32));
  (*(*(v6 - 8) + 104))(v7, enum case for DummyEnum.dummy(_:), v6);
  sub_10004DFB0();

  sub_10004D510();
  sub_10004D4E0();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100049A90();
  sub_10004D330();
  return 0;
}

unint64_t sub_100049A90()
{
  result = qword_1000621C0;
  if (!qword_1000621C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621C0);
  }

  return result;
}

unint64_t sub_100049B38()
{
  result = qword_1000621C8;
  if (!qword_1000621C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621C8);
  }

  return result;
}

uint64_t sub_100049B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = sub_10004DC80();
  *(v8 + 56) = v9;
  v10 = *(v9 - 8);
  *(v8 + 64) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100049C88, 0, 0);
}

uint64_t sub_100049C88()
{
  v54 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  *(v0 + 96) = sub_10002EBC4();
  sub_10004DC20();

  v4 = sub_10004DC70();
  v5 = sub_10004DEA0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (v6)
  {
    v10 = *(v0 + 32);
    v51 = *(v0 + 40);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10001E340(v12, v11, &v53);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10001E340(v10, v51, &v53);
    _os_log_impl(&_mh_execute_header, v4, v5, "Taking an AutoBugCapture snapshot, subType '%s', subTypeContext '%s'.", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v52 = *(v8 + 8);
  v52(v7, v9);
  v14 = *(v0 + 128);
  v15 = *(*(v0 + 48) + 16);
  v16 = sub_10004DD00();
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  v21 = sub_10004DD00();

  v22 = sub_10004DD00();
  v23 = sub_10004DD00();
  v24 = sub_10004DD00();
  v25 = [v15 signatureWithDomain:v16 type:v21 subType:v22 subtypeContext:v23 detectedProcess:v24 triggerThresholdValues:0];

  if (v25 && (v53 = 0, sub_10004DCA0(), v25, v26 = v53, *(v0 + 104) = v53, v26))
  {
    v27 = *(v0 + 72);
    sub_10004DC20();
    v28 = sub_10004DC70();
    v29 = sub_10004DEA0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "AutoBugCapture signature created.", v30, 2u);
    }

    v32 = *(v0 + 64);
    v31 = *(v0 + 72);
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);

    v52(v31, v33);
    v35 = swift_task_alloc();
    *(v0 + 112) = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = v26;
    v36 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v37 = swift_task_alloc();
    *(v0 + 120) = v37;
    *v37 = v0;
    v37[1] = sub_10004A1E8;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {
    v38 = *(v0 + 80);
    sub_10004DC20();
    v39 = sub_10004DC70();
    v40 = sub_10004DEB0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to create an AutoBugCapture signature.", v41, 2u);
    }

    v42 = *(v0 + 80);
    v43 = *(v0 + 56);
    v44 = *(v0 + 64);

    v52(v42, v43);
    v45 = *(v0 + 88);
    v46 = *(v0 + 96);
    v48 = *(v0 + 72);
    v47 = *(v0 + 80);
    sub_10002EA54();

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_10004A1E8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v5 = *v0;

  return _swift_task_switch(sub_10004A31C, 0, 0);
}

uint64_t sub_10004A31C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_10002EA54();

  v5 = v0[1];

  return v5();
}

void sub_10004A3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000622B8, &qword_100051428);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 16);
  isa = sub_10004DC90().super.isa;
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_10004B96C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004A794;
  aBlock[3] = &unk_10005E5F0;
  v13 = _Block_copy(aBlock);

  [v9 snapshotWithSignature:isa duration:0 event:0 payload:v13 reply:0.0];
  _Block_release(v13);
}

uint64_t sub_10004A59C(uint64_t a1)
{
  v2 = sub_10004DC80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC20();

  v7 = sub_10004DC70();
  v8 = sub_10004DEA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = a1;
    v16 = v10;
    *v9 = 136315138;

    sub_1000026D8(&qword_1000622C0, &qword_100051430);
    v11 = sub_10004DD70();
    v13 = sub_10001E340(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Done with AutoBugCapture snapshotting. Response: %s", v9, 0xCu);
    sub_100007B00(v10);
  }

  (*(v3 + 8))(v6, v2);
  sub_1000026D8(&qword_1000622B8, &qword_100051428);
  return sub_10004DE30();
}

uint64_t sub_10004A794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_10004DCB0();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_10004A824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000026D8(&qword_1000622B0, "h>");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10004B1D0(a3, v27 - v11);
  v13 = sub_10004DE70();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10004B240(v12);
  }

  else
  {
    sub_10004DE60();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_10004DE20();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_10004DD80() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10004B240(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10004B240(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10004AAE4(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = sub_1000026D8(&qword_1000622B0, "h>");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = sub_10004DC80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC20();
  v13 = a2;
  v14 = sub_10004DC70();
  v15 = sub_10004DEA0();
  v16 = &unk_100060000;
  if (os_log_type_enabled(v14, v15))
  {
    v45 = v8;
    v46 = v7;
    v17 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v17 = 136315906;
    v47 = v3;
    if (v3)
    {
      if (v3 == 1)
      {
        v18 = 0xD000000000000019;
      }

      else
      {
        v18 = 0xD00000000000001FLL;
      }

      if (v3 == 1)
      {
        v19 = "generateKnowledgeResponseIntent";
      }

      else
      {
        v19 = "diagnosticReporter";
      }
    }

    else
    {
      v18 = 0xD000000000000022;
      v19 = "generateRichContentIntent";
    }

    v20 = sub_10001E340(v18, v19 | 0x8000000000000000, &v50);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = [v13 domain];
    v22 = sub_10004DD30();
    v24 = v23;

    v25 = sub_10001E340(v22, v24, &v50);

    *(v17 + 14) = v25;
    *(v17 + 22) = 2048;
    v26 = [v13 code];

    *(v17 + 24) = v26;
    *(v17 + 32) = 2080;
    v27 = [v13 localizedDescription];
    v28 = sub_10004DD30();
    v3 = v29;

    v30 = v28;
    v16 = &unk_100060000;
    v31 = sub_10001E340(v30, v3, &v50);

    *(v17 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v14, v15, "Reporting Error to AutoBugCapture. %s throws Domain=%s Code=%ld LocalizedDescription=%s", v17, 0x2Au);
    swift_arrayDestroy();

    (*(v9 + 8))(v12, v45);
    LOBYTE(v3) = v47;
    v7 = v46;
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v32 = [v13 v16[469]];
  v33 = sub_10004DD30();
  v35 = v34;

  v50 = v33;
  v51 = v35;
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  sub_10004DDC0(v52);
  v49 = [v13 code];
  v53._countAndFlagsBits = sub_10004DF80();
  sub_10004DDC0(v53);

  v36 = v50;
  v37 = v51;
  v38 = sub_10004DE70();
  (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v36;
  *(v39 + 40) = v37;
  *(v39 + 48) = 0;
  *(v39 + 56) = 0xE000000000000000;
  v40 = v48;
  *(v39 + 64) = v48;
  *(v39 + 72) = v3;

  v41 = sub_10004A824(0, 0, v7, &unk_100051408, v39);
  v42 = *(v40 + 24);
  *(v40 + 24) = v41;
}

uint64_t sub_10004AF80()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10004AFE4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100047AA8;

  return v7(a1);
}

uint64_t sub_10004B0E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10001578C;

  return sub_100049B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10004B1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000622B0, "h>");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004B240(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_1000622B0, "h>");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B2A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001578C;

  return sub_10004AFE4(a1, v5);
}

uint64_t sub_10004B360()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B398(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002414;

  return sub_10004AFE4(a1, v5);
}

uint64_t sub_10004B450(int a1)
{
  v2 = v1;
  v4 = sub_1000026D8(&qword_1000622B0, "h>");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_10004DC80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004D210();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D200();
  sub_10004D1F0();
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  v20 = a1;
  if (a1)
  {
    v21 = 0.1;
  }

  else
  {
    v21 = 2.0;
  }

  sub_10004DC20();
  v22 = sub_10004DC70();
  v23 = sub_10004DEA0();
  if (os_log_type_enabled(v22, v23))
  {
    v33 = v7;
    v35 = v2;
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v24 = 136315906;
    *(v24 + 4) = sub_10001E340(0xD000000000000015, 0x8000000100054300, &v36);
    *(v24 + 12) = 2080;
    v34 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v25 = 0xD000000000000019;
      }

      else
      {
        v25 = 0xD00000000000001FLL;
      }

      if (a1 == 1)
      {
        v26 = "generateKnowledgeResponseIntent";
      }

      else
      {
        v26 = "diagnosticReporter";
      }
    }

    else
    {
      v25 = 0xD000000000000022;
      v26 = "generateRichContentIntent";
    }

    v28 = sub_10001E340(v25, v26 | 0x8000000000000000, &v36);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v19;
    *(v24 + 32) = 2048;
    *(v24 + 34) = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Duration for %s in %s was %fs, AutoBugCapture threshold was %fs.", v24, 0x2Au);
    swift_arrayDestroy();

    result = (*(v9 + 8))(v12, v8);
    v2 = v35;
    v20 = v34;
    v7 = v33;
    if (v21 < v19)
    {
      goto LABEL_16;
    }
  }

  else
  {

    result = (*(v9 + 8))(v12, v8);
    if (v21 < v19)
    {
LABEL_16:
      v29 = sub_10004DE70();
      (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0xD000000000000015;
      *(v30 + 40) = 0x8000000100054300;
      *(v30 + 48) = 0x776F6C536F6F54;
      *(v30 + 56) = 0xE700000000000000;
      *(v30 + 64) = v2;
      *(v30 + 72) = v20;

      v31 = sub_10004A824(0, 0, v7, &unk_100051438, v30);
      v32 = *(v2 + 24);
      *(v2 + 24) = v31;
    }
  }

  return result;
}

uint64_t sub_10004B8D8()
{
  v1 = sub_1000026D8(&qword_1000622B8, &qword_100051428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004B96C(uint64_t a1)
{
  v2 = *(*(sub_1000026D8(&qword_1000622B8, &qword_100051428) - 8) + 80);

  return sub_10004A59C(a1);
}

uint64_t sub_10004B9E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004BA00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10004BA50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100002414;

  return sub_100049B9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t type metadata accessor for GeneratedText()
{
  result = qword_100062380;
  if (!qword_100062380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BBDC()
{
  v0 = sub_10004D020();
  sub_1000037AC(v0, qword_100062528);
  sub_100003774(v0, qword_100062528);
  return sub_10004D000();
}

uint64_t sub_10004BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004CF00();
  v4 = *(a1 + 24);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  return sub_10004D0C0();
}

uint64_t sub_10004BDC8(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000623F8, type metadata accessor for GeneratedText);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_10004BFAC(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000623F8, type metadata accessor for GeneratedText);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_10004C028@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061040 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, qword_100062528);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004C114(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_1000622C8, type metadata accessor for GeneratedText);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004C1D8(uint64_t a1)
{
  v2 = sub_10004C9C0(&qword_100062308, type metadata accessor for GeneratedText);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004C270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for GeneratedText() + 24);
  v5 = sub_10004D0D0();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_10004C2EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for GeneratedText() + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10004C33C@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = sub_1000026D8(&qword_1000623D0, "j<");
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v18 - v3;
  v18[0] = sub_1000026D8(&qword_1000623D8, "~<");
  v5 = *(v18[0] - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v18[0]);
  v8 = v18 - v7;
  v9 = sub_1000026D8(&qword_1000623E0, &qword_100051718);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  sub_10004D0D0();
  sub_10004C9C0(&qword_1000623E8, &type metadata accessor for AttributedString);
  sub_10004D310();
  sub_10004C96C();
  sub_10004D310();
  v14 = *(v1 + 48);
  (*(v10 + 16))(v4, v13, v9);
  v15 = &v4[v14];
  v16 = v18[0];
  (*(v5 + 16))(v15, v8, v18[0]);
  sub_10004D320();
  (*(v5 + 8))(v8, v16);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_10004C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004CF30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10004D0D0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004C774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004CF30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10004D0D0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10004C89C()
{
  result = sub_10004CF30();
  if (v1 <= 0x3F)
  {
    result = sub_10004D0D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10004C96C()
{
  result = qword_1000623F0;
  if (!qword_1000623F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000623F0);
  }

  return result;
}

uint64_t sub_10004C9C0(unint64_t *a1, void (*a2)(uint64_t))
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