uint64_t ConfigurableIntBucketStrategy.__allocating_init(configurationStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t ConfigurableIntBucketStrategy.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Int __swiftcall ConfigurableIntBucketStrategy.bucketFor(value:)(Swift::Int value)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  (*(v4 + 8))(&v15, v3, v4);
  v6 = v15;
  v5 = v16;
  v7 = v17;
  v8 = sub_1BAF33500(value, &v15);
  if (v9)
  {
    v15 = v6;
    v16 = v5;
    v17 = v7;
    v10 = sub_1BAF33604(value, &v15);
    v12 = v11;

    if (v12)
    {
      return v6;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v14 = v8;

    return v14;
  }
}

uint64_t sub_1BAF33500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    v9 = (v6 + 24 * v5);
    v10 = *v9;
    if ((v9[2] & 1) == 0)
    {
      break;
    }

    v7 = v9[1];
    if (v10 <= a1 && v7 >= a1)
    {
      return a1;
    }

LABEL_8:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = *(v10 + 40);
  v12 = sub_1BAF8F598();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = ~v13;
  while (*(*(v10 + 48) + 8 * v14) != a1)
  {
    v14 = (v14 + 1) & v15;
    if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  return a1;
}

uint64_t sub_1BAF33604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  while (1)
  {
    v7 = (v6 + 16 * v5);
    v8 = v7[1];
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

LABEL_18:
    if (++v5 == v3)
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = *v7;
  v12 = v8 + 32;
  while (1)
  {
    v15 = (v12 + 24 * v10);
    v16 = *v15;
    if ((v15[2] & 1) == 0)
    {
      break;
    }

    v13 = v15[1];
    if (v16 <= a1 && v13 >= a1)
    {
      return v11;
    }

LABEL_10:
    if (++v10 == v9)
    {
      goto LABEL_18;
    }
  }

  if (!*(v16 + 16))
  {
    goto LABEL_10;
  }

  v17 = *(v16 + 40);
  v18 = sub_1BAF8F598();
  v19 = -1 << *(v16 + 32);
  v20 = v18 & ~v19;
  if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = ~v19;
  while (*(*(v16 + 48) + 8 * v20) != a1)
  {
    v20 = (v20 + 1) & v21;
    if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  return v11;
}

size_t randomBytes(size:)(size_t a1)
{
  result = sub_1BAF337C0(a1);
  if (v3 >> 60 == 15)
  {
    return sub_1BAF3387C(a1);
  }

  return result;
}

size_t sub_1BAF337C0(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_1BAF8EEE8();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
      v1 = *(MEMORY[0x1E69E7CC0] + 16);
    }

    if (SecRandomCopyBytes(*MEMORY[0x1E697B308], v1, (v2 + 32)))
    {

      return 0;
    }

    else
    {
      v3 = sub_1BAF60614((v2 + 32), *(v2 + 16));

      return v3;
    }
  }

  return result;
}

int64_t sub_1BAF3387C(int64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v8 = MEMORY[0x1E69E7CC0];
      sub_1BAF6FB6C(0, result, 0);
      v2 = v8;
      do
      {
        v7 = 0;
        MEMORY[0x1BFB06170](&v7, 8);
        v3 = v7;
        v8 = v2;
        v5 = *(v2 + 16);
        v4 = *(v2 + 24);
        if (v5 >= v4 >> 1)
        {
          sub_1BAF6FB6C((v4 > 1), v5 + 1, 1);
          v2 = v8;
        }

        *(v2 + 16) = v5 + 1;
        *(v2 + v5 + 32) = v3;
        --v1;
      }

      while (v1);
    }

    v6 = sub_1BAF2EF34(v2);

    return v6;
  }

  return result;
}

uint64_t sub_1BAF33964()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    result = sub_1BAF8F048();
  }

  else
  {
    result = sub_1BAF8F028();
  }

  byte_1EDBA20A0 = result;
  return result;
}

uint64_t static os_log_type_t.defaultOnInternalInstall.getter()
{
  if (qword_1EDBA2098 != -1)
  {
    swift_once();
  }

  return byte_1EDBA20A0;
}

uint64_t sub_1BAF33A2C(uint64_t a1)
{
  v42 = a1;
  v2 = sub_1BAF8E958();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1BAF8E728();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = v7;
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8F098();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAF8F078();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAF8E988();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_transaction_create();
  v41 = result;
  if (result)
  {
    v19 = *(*(*sub_1BADC8524((v1 + 104), *(v1 + 128)) + 16) + 24);
    v20 = sub_1BAF8EC28();
    sub_1BAF30DFC(0, &qword_1EDBA2088, off_1E7F1C150);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1BAF8EE98();
    [v19 executeQuery:v20 withParameters:v22];

    sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
    v33 = v1;
    sub_1BAF8E978();
    aBlock[0] = v21;
    sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v36 + 104))(v35, *MEMORY[0x1E69E8090], v37);
    v23 = sub_1BAF8F0B8();
    v25 = v39;
    v24 = v40;
    (*(v5 + 16))(v39, v42, v40);
    v26 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v27 = swift_allocObject();
    v28 = v33;
    *(v27 + 16) = v41;
    *(v27 + 24) = v28;
    (*(v5 + 32))(v27 + v26, v25, v24);
    aBlock[4] = sub_1BAF3BA48;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAF4CF6C;
    aBlock[3] = &unk_1F38F4E98;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    sub_1BAF8E968();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v30 = v45;
    v31 = v47;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v17, v30, v29);
    _Block_release(v29);
    swift_unknownObjectRelease();

    (*(v46 + 8))(v30, v31);
    (*(v43 + 8))(v17, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF34060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BAF8F028();
  sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
  v5 = sub_1BAF8F0C8();
  sub_1BAF8E8B8();

  return sub_1BAF3413C(a3, a1);
}

uint64_t sub_1BAF3413C(uint64_t a1, uint64_t a2)
{
  v297 = a2;
  v296 = a1;
  v300 = type metadata accessor for WorkCommand();
  v295 = *(v300 - 8);
  v3 = *(v295 + 64);
  v4 = MEMORY[0x1EEE9AC00](v300);
  v302 = &v255 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v267 = &v255 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v266 = &v255 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v280 = &v255 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v260 = &v255 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v261 = &v255 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v271 = &v255 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v259 = &v255 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v258 = &v255 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v294 = &v255 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v265 = &v255 - v23;
  v24 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v275 = &v255 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v285 = &v255 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v289 = &v255 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v264 = &v255 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v274 = &v255 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v279 = &v255 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v263 = &v255 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v255 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v278 = &v255 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v284 = &v255 - v45;
  v304 = sub_1BAF8E728();
  v298 = *(v304 - 8);
  v46 = *(v298 + 8);
  v47 = MEMORY[0x1EEE9AC00](v304);
  v273 = &v255 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v272 = &v255 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v288 = &v255 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v268 = &v255 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v270 = &v255 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v262 = &v255 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v269 = &v255 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v277 = &v255 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v281 = &v255 - v63;
  v64 = type metadata accessor for WorkOrder();
  v301 = *(v64 - 1);
  v65 = *(v301 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v67 = (&v255 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v71 = &v255 - v70;
  v72 = *(v2 + 128);
  v303 = v2;
  v73 = *sub_1BADC8524((v2 + 104), v72);
  sub_1BAF55A94(&v307);
  v74 = v308;
  v75 = sub_1BADC8524(&v307, v308);
  v76 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  (*(v78 + 16))(&v255 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1BAF3BAAC(&v310);
  sub_1BAF8EE28();
  sub_1BADC5BE0(&v307);
  v301 += 48;
  v293 = v3 + 7;
  v283 = "firstRunSinceReboot";
  v299 = (v298 + 48);
  v292 = (v298 + 32);
  v282 = (v298 + 56);
  v290 = (v298 + 16);
  v286 = (v298 + 8);
  v276 = v42;
  v287 = v64;
  v298 = v71;
  while (1)
  {
    sub_1BAF3BB10(&v310, AssociatedTypeWitness);
    sub_1BAF8F128();
    if ((*v301)(v71, 1, v64) == 1)
    {
      return sub_1BADC5BE0(&v310);
    }

    sub_1BAF3BBC4(v71, v67, type metadata accessor for WorkOrder);
    if (*(v67 + v64[7]))
    {
      if (*(v67 + v64[7]) != 1)
      {
        v87 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        v88 = v302;
        sub_1BAF3B9E0(v67, v302, type metadata accessor for WorkOrder);
        *(v88 + v87) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v306)
        {
          sub_1BADC5B38(&v305, &v307);
          v79 = v308;
          v80 = v309;
          v291 = sub_1BADC8524(&v307, v308);
          v81 = v294;
          sub_1BAF3B9E0(v302, v294, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v307, &v305);
          v82 = (*(v295 + 80) + 24) & ~*(v295 + 80);
          v83 = (v293 + v82) & 0xFFFFFFFFFFFFFFF8;
          v84 = swift_allocObject();
          *(v84 + 16) = v303;
          sub_1BAF3BBC4(v81, v84 + v82, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v305, v84 + v83);
          v85 = v80[1];

          v85(v302, sub_1BAF3BC2C, v84, v79, v80);
          v71 = v298;

          sub_1BAF3B6CC(v302, type metadata accessor for WorkCommand);
          sub_1BADC5BE0(&v307);
        }

        else
        {
          sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
          v89 = v302;
          sub_1BAF36F10(v302);
          sub_1BAF3B6CC(v89, type metadata accessor for WorkCommand);
        }

        sub_1BAF8F038();
        sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
        v86 = sub_1BAF8F0C8();
        sub_1BAF8E8B8();
      }

      sub_1BAF3B6CC(v67, type metadata accessor for WorkOrder);
    }

    else
    {
      v90 = v64[9];
      v91 = v284;
      sub_1BAF32F64(v67 + v90, v284, &unk_1EBC36750, &qword_1BAF95590);
      v92 = *v299;
      v93 = (*v299)(v91, 1, v304);
      v94 = v285;
      if (v93 != 1)
      {
        v113 = v91;
        v114 = *v292;
        (*v292)(v281, v113, v304);
        v115 = sub_1BAF8E698();
        v116 = v276;
        if (v115)
        {
          v307 = 0;
          MEMORY[0x1BFB06170](&v307, 8);
          if ((0x20000000000001 * v307) >= 0x1FFFFFFFFFF801)
          {
            v117 = v290;
          }

          else
          {
            v117 = v290;
            do
            {
              v307 = 0;
              MEMORY[0x1BFB06170](&v307, 8);
            }

            while ((0x20000000000001 * v307) < 0x1FFFFFFFFFF801);
          }

          v154 = v277;
          sub_1BAF8E6A8();
          v155 = *v117;
          v156 = v278;
          v157 = v154;
          v158 = v304;
          (*v117)(v278, v157, v304);
          (*v282)(v156, 0, 1, v158);
          v159 = v156;
          v160 = v158;
          v161 = v116;
          sub_1BAF32F64(v159, v116, &unk_1EBC36750, &qword_1BAF95590);
          if (v92(v116, 1, v160) != 1)
          {
            v192 = v269;
            v193 = v304;
            v114(v269, v161, v304);
            v194 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v195 = v265;
            v196 = &v265[*(v194 + 48)];
            v197 = *(v194 + 64);
            v155(v265, v192, v193);
            v198 = v67[1];
            *v196 = *v67;
            *(v196 + 1) = v198;
            *(v195 + v197) = v297;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v306)
            {
              sub_1BADC5B38(&v305, &v307);
              v291 = v308;
              v256 = v309;
              v257 = sub_1BADC8524(&v307, v308);
              v199 = v294;
              sub_1BAF3B9E0(v195, v294, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v307, &v305);
              v200 = (*(v295 + 80) + 24) & ~*(v295 + 80);
              v201 = (v293 + v200) & 0xFFFFFFFFFFFFFFF8;
              v202 = swift_allocObject();
              *(v202 + 16) = v303;
              sub_1BAF3BBC4(v199, v202 + v200, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v305, v202 + v201);
              v203 = v256;
              v204 = v256[1];

              swift_unknownObjectRetain();

              v204(v195, sub_1BAF3C0BC, v202, v291, v203);

              sub_1BAF3B6CC(v195, type metadata accessor for WorkCommand);
              v205 = *v286;
              (*v286)(v269, v193);
              sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
              v205(v277, v193);
              v205(v281, v193);
              goto LABEL_50;
            }

            swift_unknownObjectRetain();
            sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
            sub_1BAF36F10(v195);
            sub_1BAF3B6CC(v195, type metadata accessor for WorkCommand);
            v220 = *v286;
            (*v286)(v192, v193);
            sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
            v220(v277, v193);
            v222 = v281;
            v223 = v193;
            goto LABEL_57;
          }

          sub_1BAF32F04(v116, &unk_1EBC36750, &qword_1BAF95590);
          v162 = v67 + v90;
          v163 = v263;
          sub_1BAF32F64(v162, v263, &unk_1EBC36750, &qword_1BAF95590);
          v164 = v92(v163, 1, v304);
          v165 = v262;
          if (v164 != 1)
          {
            v118 = v304;
            v114(v262, v163, v304);
            v224 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v225 = v258;
            v226 = &v258[*(v224 + 48)];
            v227 = *(v224 + 64);
            v155(v258, v165, v118);
            v228 = v67[1];
            *v226 = *v67;
            *(v226 + 1) = v228;
            *(v225 + v227) = v297;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v306)
            {
              sub_1BADC5B38(&v305, &v307);
              v291 = v308;
              v256 = v309;
              v257 = sub_1BADC8524(&v307, v308);
              v229 = v294;
              sub_1BAF3B9E0(v225, v294, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v307, &v305);
              v230 = (*(v295 + 80) + 24) & ~*(v295 + 80);
              v231 = (v293 + v230) & 0xFFFFFFFFFFFFFFF8;
              v232 = swift_allocObject();
              *(v232 + 16) = v303;
              sub_1BAF3BBC4(v229, v232 + v230, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v305, v232 + v231);
              v233 = v256;
              v234 = v256[1];
              swift_unknownObjectRetain();
              v235 = v304;

              v234(v225, sub_1BAF3C0BC, v232, v291, v233);

              sub_1BAF3B6CC(v225, type metadata accessor for WorkCommand);
              v236 = *v286;
              (*v286)(v165, v235);
              sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
              v236(v277, v235);
              v236(v281, v235);
              goto LABEL_50;
            }

            swift_unknownObjectRetain();

            sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
            sub_1BAF36F10(v225);
            sub_1BAF3B6CC(v225, type metadata accessor for WorkCommand);
            v220 = *v286;
            (*v286)(v165, v118);
            sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
            v220(v277, v118);
            v221 = &v308;
            goto LABEL_43;
          }

          sub_1BAF32F04(v163, &unk_1EBC36750, &qword_1BAF95590);
          v166 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
          v167 = v259;
          sub_1BAF3B9E0(v67, v259, type metadata accessor for WorkOrder);
          *(v167 + v166) = 0;
          swift_storeEnumTagMultiPayload();
          sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
          if (v306)
          {
            sub_1BADC5B38(&v305, &v307);
            v168 = v309;
            v291 = v308;
            v257 = sub_1BADC8524(&v307, v308);
            v169 = v294;
            sub_1BAF3B9E0(v167, v294, type metadata accessor for WorkCommand);
            sub_1BAF3BB60(&v307, &v305);
            v170 = (*(v295 + 80) + 24) & ~*(v295 + 80);
            v171 = (v293 + v170) & 0xFFFFFFFFFFFFFFF8;
            v172 = v167;
            v173 = swift_allocObject();
            *(v173 + 16) = v303;
            sub_1BAF3BBC4(v169, v173 + v170, type metadata accessor for WorkCommand);
            sub_1BADC5B38(&v305, v173 + v171);
            v174 = v168[1];
            v175 = v304;

            v174(v172, sub_1BAF3C0BC, v173, v291, v168);

            sub_1BAF3B6CC(v172, type metadata accessor for WorkCommand);
            sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
            v176 = *v286;
            (*v286)(v277, v175);
            goto LABEL_49;
          }

          sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
          sub_1BAF36F10(v167);
          sub_1BAF3B6CC(v167, type metadata accessor for WorkCommand);
          sub_1BAF32F04(v278, &unk_1EBC36750, &qword_1BAF95590);
          v220 = *v286;
          v251 = v304;
          (*v286)(v277, v304);
        }

        else
        {
          v136 = v274;
          if (*(v67 + v64[10]))
          {
            v291 = swift_unknownObjectRetain();
          }

          else
          {
            v291 = 0;
          }

          v177 = v279;
          v178 = v304;
          (*v282)(v279, 1, 1, v304);
          sub_1BAF32F64(v177, v136, &unk_1EBC36750, &qword_1BAF95590);
          if (v92(v136, 1, v178) == 1)
          {
            sub_1BAF32F04(v136, &unk_1EBC36750, &qword_1BAF95590);
            v179 = v67 + v90;
            v180 = v264;
            sub_1BAF32F64(v179, v264, &unk_1EBC36750, &qword_1BAF95590);
            v181 = v92(v180, 1, v304);
            v182 = v268;
            if (v181 == 1)
            {
              sub_1BAF32F04(v180, &unk_1EBC36750, &qword_1BAF95590);
              v183 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
              v184 = v260;
              sub_1BAF3B9E0(v67, v260, type metadata accessor for WorkOrder);
              *(v184 + v183) = 0;
              swift_storeEnumTagMultiPayload();
              sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
              if (v306)
              {
                sub_1BADC5B38(&v305, &v307);
                v186 = v308;
                v185 = v309;
                v257 = sub_1BADC8524(&v307, v308);
                v187 = v294;
                sub_1BAF3B9E0(v184, v294, type metadata accessor for WorkCommand);
                sub_1BAF3BB60(&v307, &v305);
                v188 = (*(v295 + 80) + 24) & ~*(v295 + 80);
                v189 = (v293 + v188) & 0xFFFFFFFFFFFFFFF8;
                v190 = swift_allocObject();
                *(v190 + 16) = v303;
                sub_1BAF3BBC4(v187, v190 + v188, type metadata accessor for WorkCommand);
                sub_1BADC5B38(&v305, v190 + v189);
                v191 = v185[1];

                v191(v184, sub_1BAF3C0BC, v190, v186, v185);

                swift_unknownObjectRelease();
                sub_1BAF3B6CC(v184, type metadata accessor for WorkCommand);
                sub_1BAF32F04(v279, &unk_1EBC36750, &qword_1BAF95590);
                (*v286)(v281, v304);
                goto LABEL_50;
              }

              sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
              sub_1BAF36F10(v184);
              swift_unknownObjectRelease();
              sub_1BAF3B6CC(v184, type metadata accessor for WorkCommand);
              sub_1BAF32F04(v279, &unk_1EBC36750, &qword_1BAF95590);
              (*v286)(v281, v304);
              goto LABEL_59;
            }

            v237 = v180;
            v238 = v304;
            v114(v268, v237, v304);
            v239 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v208 = v261;
            v240 = &v261[*(v239 + 48)];
            v241 = *(v239 + 64);
            (*v290)(v261, v182, v238);
            v242 = v67[1];
            *v240 = *v67;
            *(v240 + 1) = v242;
            *(v208 + v241) = v291;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v306)
            {
              sub_1BADC5B38(&v305, &v307);
              v243 = v309;
              v257 = v308;
              v256 = sub_1BADC8524(&v307, v308);
              v244 = v294;
              sub_1BAF3B9E0(v208, v294, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v307, &v305);
              v245 = (*(v295 + 80) + 24) & ~*(v295 + 80);
              v246 = (v293 + v245) & 0xFFFFFFFFFFFFFFF8;
              v247 = swift_allocObject();
              *(v247 + 16) = v303;
              v248 = v244;
              v175 = v304;
              sub_1BAF3BBC4(v248, v247 + v245, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v305, v247 + v246);
              v249 = v243[1];
              swift_unknownObjectRetain();

              v250 = v261;
              v249(v261, sub_1BAF3C0BC, v247, v257, v243);
              swift_unknownObjectRelease();

              sub_1BAF3B6CC(v250, type metadata accessor for WorkCommand);
              v176 = *v286;
              (*v286)(v268, v175);
LABEL_48:
              sub_1BAF32F04(v279, &unk_1EBC36750, &qword_1BAF95590);
LABEL_49:
              v176(v281, v175);
LABEL_50:
              sub_1BAF3B6CC(v67, type metadata accessor for WorkOrder);
              sub_1BADC5BE0(&v307);
              goto LABEL_60;
            }
          }

          else
          {
            v182 = v270;
            v206 = v304;
            v114(v270, v136, v304);
            v207 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
            v208 = v271;
            v209 = &v271[*(v207 + 48)];
            v210 = *(v207 + 64);
            (*v290)(v271, v182, v206);
            v211 = v67[1];
            *v209 = *v67;
            *(v209 + 1) = v211;
            *(v208 + v210) = v291;
            swift_storeEnumTagMultiPayload();
            sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
            if (v306)
            {
              sub_1BADC5B38(&v305, &v307);
              v257 = v308;
              v255 = v309;
              v256 = sub_1BADC8524(&v307, v308);
              v212 = v294;
              sub_1BAF3B9E0(v208, v294, type metadata accessor for WorkCommand);
              sub_1BAF3BB60(&v307, &v305);
              v213 = (*(v295 + 80) + 24) & ~*(v295 + 80);
              v214 = (v293 + v213) & 0xFFFFFFFFFFFFFFF8;
              v215 = swift_allocObject();
              *(v215 + 16) = v303;
              v216 = v212;
              v175 = v304;
              sub_1BAF3BBC4(v216, v215 + v213, type metadata accessor for WorkCommand);
              sub_1BADC5B38(&v305, v215 + v214);
              v217 = v255;
              v218 = v255[1];
              swift_unknownObjectRetain();

              v219 = v271;
              v218(v271, sub_1BAF3C0BC, v215, v257, v217);
              swift_unknownObjectRelease();

              sub_1BAF3B6CC(v219, type metadata accessor for WorkCommand);
              v176 = *v286;
              (*v286)(v270, v175);
              goto LABEL_48;
            }
          }

          swift_unknownObjectRetain();

          sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
          sub_1BAF36F10(v208);
          swift_unknownObjectRelease();
          sub_1BAF3B6CC(v208, type metadata accessor for WorkCommand);
          v220 = *v286;
          v251 = v304;
          (*v286)(v182, v304);
          sub_1BAF32F04(v279, &unk_1EBC36750, &qword_1BAF95590);
        }

        v222 = v281;
        v223 = v251;
        goto LABEL_57;
      }

      sub_1BAF32F04(v91, &unk_1EBC36750, &qword_1BAF95590);
      do
      {
        v307 = 0;
        MEMORY[0x1BFB06170](&v307, 8);
      }

      while ((0x20000000000001 * v307) < 0x1FFFFFFFFFF801);
      v95 = v288;
      sub_1BAF8E6A8();
      v96 = *v290;
      v97 = v289;
      v98 = v95;
      v99 = v304;
      (*v290)(v289, v98, v304);
      (*v282)(v97, 0, 1, v99);
      sub_1BAF32F64(v97, v94, &unk_1EBC36750, &qword_1BAF95590);
      if (v92(v94, 1, v99) != 1)
      {
        v118 = v304;
        v119 = v272;
        (*v292)(v272, v94, v304);
        v120 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
        v121 = v280;
        v122 = (v280 + *(v120 + 48));
        v123 = *(v120 + 64);
        v96(v280, v119, v118);
        v124 = v67[1];
        *v122 = *v67;
        v122[1] = v124;
        *(v121 + v123) = v297;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v306)
        {
          sub_1BADC5B38(&v305, &v307);
          v125 = v121;
          v126 = v308;
          v127 = v309;
          v291 = sub_1BADC8524(&v307, v308);
          v128 = v294;
          sub_1BAF3B9E0(v125, v294, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v307, &v305);
          v129 = v303;
          v130 = (*(v295 + 80) + 24) & ~*(v295 + 80);
          v131 = (v293 + v130) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          *(v132 + 16) = v129;
          sub_1BAF3BBC4(v128, v132 + v130, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v305, v132 + v131);
          v133 = v127[1];
          swift_unknownObjectRetain();

          v133(v280, sub_1BAF3C0BC, v132, v126, v127);
          v134 = v304;

          sub_1BAF3B6CC(v280, type metadata accessor for WorkCommand);
          v135 = *v286;
          (*v286)(v119, v134);
          sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
          v135(v288, v134);
          goto LABEL_50;
        }

        swift_unknownObjectRetain();

        sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v121);
        sub_1BAF3B6CC(v121, type metadata accessor for WorkCommand);
        v220 = *v286;
        (*v286)(v119, v118);
        sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
        v221 = &v313;
LABEL_43:
        v222 = *(v221 - 32);
        v223 = v118;
LABEL_57:
        v220(v222, v223);
LABEL_59:
        sub_1BAF3B6CC(v67, type metadata accessor for WorkOrder);
        goto LABEL_60;
      }

      sub_1BAF32F04(v94, &unk_1EBC36750, &qword_1BAF95590);
      v100 = v67 + v90;
      v101 = v275;
      sub_1BAF32F64(v100, v275, &unk_1EBC36750, &qword_1BAF95590);
      v102 = v92(v101, 1, v304);
      v103 = v273;
      if (v102 == 1)
      {
        sub_1BAF32F04(v101, &unk_1EBC36750, &qword_1BAF95590);
        v104 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        v105 = v267;
        sub_1BAF3B9E0(v67, v267, type metadata accessor for WorkOrder);
        *(v105 + v104) = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
        if (v306)
        {
          sub_1BADC5B38(&v305, &v307);
          v106 = v308;
          v107 = v309;
          v291 = sub_1BADC8524(&v307, v308);
          v108 = v294;
          sub_1BAF3B9E0(v105, v294, type metadata accessor for WorkCommand);
          sub_1BAF3BB60(&v307, &v305);
          v109 = (*(v295 + 80) + 24) & ~*(v295 + 80);
          v110 = (v293 + v109) & 0xFFFFFFFFFFFFFFF8;
          v111 = swift_allocObject();
          *(v111 + 16) = v303;
          sub_1BAF3BBC4(v108, v111 + v109, type metadata accessor for WorkCommand);
          sub_1BADC5B38(&v305, v111 + v110);
          v112 = v107[1];

          v112(v105, sub_1BAF3C0BC, v111, v106, v107);

          sub_1BAF3B6CC(v105, type metadata accessor for WorkCommand);
          sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
          (*v286)(v288, v304);
          goto LABEL_50;
        }

        sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v105);
        sub_1BAF3B6CC(v105, type metadata accessor for WorkCommand);
        sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
        (*v286)(v288, v304);
        goto LABEL_59;
      }

      v137 = v101;
      v138 = v304;
      (*v292)(v273, v137, v304);
      v139 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
      v140 = v266;
      v141 = &v266[*(v139 + 48)];
      v142 = *(v139 + 64);
      v96(v266, v103, v138);
      v143 = v67[1];
      *v141 = *v67;
      *(v141 + 1) = v143;
      v144 = v140;
      *(v140 + v142) = v297;
      swift_storeEnumTagMultiPayload();
      sub_1BAF32F64(v303 + 16, &v305, &qword_1EBC367C0, &qword_1BAF955F8);
      if (v306)
      {
        sub_1BADC5B38(&v305, &v307);
        v145 = v309;
        v291 = v308;
        v257 = sub_1BADC8524(&v307, v308);
        v146 = v294;
        sub_1BAF3B9E0(v144, v294, type metadata accessor for WorkCommand);
        sub_1BAF3BB60(&v307, &v305);
        v147 = (*(v295 + 80) + 24) & ~*(v295 + 80);
        v148 = v303;
        v149 = (v293 + v147) & 0xFFFFFFFFFFFFFFF8;
        v150 = swift_allocObject();
        *(v150 + 16) = v148;
        sub_1BAF3BBC4(v146, v150 + v147, type metadata accessor for WorkCommand);
        sub_1BADC5B38(&v305, v150 + v149);
        v151 = v145[1];
        swift_unknownObjectRetain();

        v151(v144, sub_1BAF3C0BC, v150, v291, v145);
        v152 = v304;

        sub_1BAF3B6CC(v144, type metadata accessor for WorkCommand);
        v153 = *v286;
        (*v286)(v103, v152);
        sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
        v153(v288, v152);
        sub_1BAF3B6CC(v67, type metadata accessor for WorkOrder);
        sub_1BADC5BE0(&v307);
      }

      else
      {
        swift_unknownObjectRetain();

        sub_1BAF32F04(&v305, &qword_1EBC367C0, &qword_1BAF955F8);
        sub_1BAF36F10(v140);
        sub_1BAF3B6CC(v140, type metadata accessor for WorkCommand);
        v252 = *v286;
        v253 = v304;
        (*v286)(v103, v304);
        sub_1BAF32F04(v289, &unk_1EBC36750, &qword_1BAF95590);
        v252(v288, v253);
        sub_1BAF3B6CC(v67, type metadata accessor for WorkOrder);
      }

LABEL_60:
      v64 = v287;
      v71 = v298;
    }
  }
}

uint64_t sub_1BAF36C9C(uint64_t a1)
{
  v3 = type metadata accessor for WorkCommand();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF32F64(v1 + 16, &v14, &qword_1EBC367C0, &qword_1BAF955F8);
  if (v15)
  {
    sub_1BADC5B38(&v14, v16);
    v7 = v17;
    v8 = v18;
    sub_1BADC8524(v16, v17);
    sub_1BAF3B9E0(a1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkCommand);
    sub_1BAF3BB60(v16, &v14);
    v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    sub_1BAF3BBC4(v6, v11 + v9, type metadata accessor for WorkCommand);
    sub_1BADC5B38(&v14, v11 + v10);
    v12 = *(v8 + 8);

    v12(a1, sub_1BAF3C0BC, v11, v7, v8);

    return sub_1BADC5BE0(v16);
  }

  else
  {
    sub_1BAF32F04(&v14, &qword_1EBC367C0, &qword_1BAF955F8);
    return sub_1BAF36F10(a1);
  }
}

uint64_t sub_1BAF36E9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1BAF36F10(a2);
  v5 = a3[3];
  v6 = a3[4];
  sub_1BADC8524(a3, v5);
  return (*(v6 + 16))(a2, v5, v6);
}

uint64_t sub_1BAF36F10(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC367A0, &qword_1BAF955D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v89 - v4;
  v6 = sub_1BAF8E728();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for WorkOrder();
  v11 = *(*(v99 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v99);
  v14 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  ObjectType = (&v89 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v89 - v17);
  v19 = type metadata accessor for WorkCommand();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v89 - v24);
  sub_1BAF3B9E0(a1, &v89 - v24, type metadata accessor for WorkCommand);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v52 = *v25;
      v51 = v25[1];
      v53 = v25[2];
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v54 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1BAF95190;
      *(v55 + 56) = MEMORY[0x1E69E6158];
      *(v55 + 64) = sub_1BAF30E44();
      *(v55 + 32) = v52;
      *(v55 + 40) = v51;

      sub_1BAF8E8B8();

      sub_1BAF38848(v52, v51, v53);

      return swift_unknownObjectRelease();
    }

    else
    {
      v70 = *(v25 + *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48));
      sub_1BAF3BBC4(v25, v14, type metadata accessor for WorkOrder);
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v71 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1BAF954D0;
      v74 = *v14;
      v73 = v14[1];
      v75 = MEMORY[0x1E69E6158];
      *(v72 + 56) = MEMORY[0x1E69E6158];
      v76 = sub_1BAF30E44();
      *(v72 + 32) = v74;
      *(v72 + 40) = v73;
      v77 = 0x6572756C696166;
      if (v70)
      {
        v77 = 0x73736563637573;
      }

      *(v72 + 96) = v75;
      *(v72 + 104) = v76;
      *(v72 + 64) = v76;
      *(v72 + 72) = v77;
      *(v72 + 80) = 0xE700000000000000;

      sub_1BAF8E8B8();

      sub_1BAF3AA00(v14);
      return sub_1BAF3B6CC(v14, type metadata accessor for WorkOrder);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v27 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
      v28 = (v25 + v27[12]);
      v29 = v28[1];
      v92 = *v28;
      v95 = *(v25 + v27[16]);
      v96 = v29;
      v30 = (v25 + v27[20]);
      v32 = *v30;
      v31 = v30[1];
      v97 = v32;
      v94 = v31;
      sub_1BAF3BBC4(v25, v18, type metadata accessor for WorkOrder);
      if (qword_1EDBA2098 != -1)
      {
        swift_once();
      }

      v93 = byte_1EDBA20A0;
      sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
      v33 = sub_1BAF8F0C8();
      sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1BAF954D0;
      v35 = v99;
      v36 = (v18 + *(v99 + 44));
      v38 = *v36;
      v37 = v36[1];
      v39 = MEMORY[0x1E69E6158];
      *(v34 + 56) = MEMORY[0x1E69E6158];
      v40 = sub_1BAF30E44();
      *(v34 + 32) = v38;
      *(v34 + 40) = v37;
      v41 = *v18;
      v42 = v18[1];
      *(v34 + 96) = v39;
      *(v34 + 104) = v40;
      *(v34 + 64) = v40;
      *(v34 + 72) = v41;
      v90 = v41;
      *(v34 + 80) = v42;

      v91 = v42;

      sub_1BAF8E8B8();

      v43 = v100;
      v44 = sub_1BAF3A820(v38, v37, v100);
      if (!v44)
      {
        v78 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
        sub_1BAF3B9E0(v18, v23, type metadata accessor for WorkOrder);
        v23[v78] = 0;
        swift_storeEnumTagMultiPayload();
        sub_1BAF36C9C(v23);
        sub_1BAEFD9A4(v97);
        sub_1BAF3B6CC(v23, type metadata accessor for WorkCommand);
        swift_unknownObjectRelease();
LABEL_25:
        sub_1BAF3B6CC(v18, type metadata accessor for WorkOrder);
      }

      v46 = v44;
      v47 = v45;
      v48 = v35;
      v49 = v97;
      if (*(v18 + *(v35 + 28)) == 1)
      {
        v50 = v91;

        if (!v49)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v79 = ObjectType;
        sub_1BAF3B9E0(v18, ObjectType, type metadata accessor for WorkOrder);
        *(v79 + *(v48 + 28)) = 1;
        v80 = *sub_1BADC8524((v43 + 104), *(v43 + 128));
        v50 = v91;

        sub_1BAF55800(v79);
        sub_1BAF3B6CC(v79, type metadata accessor for WorkOrder);
        if (!v49)
        {
LABEL_24:
          ObjectType = swift_getObjectType();
          v81 = (v18 + *(v48 + 32));
          v82 = *v81;
          v83 = v81[1];
          v84 = swift_allocObject();
          v85 = v90;
          v84[2] = v100;
          v84[3] = v85;
          v86 = v47;
          v87 = v95;
          v84[4] = v50;
          v84[5] = v87;
          v88 = *(v86 + 8);

          swift_unknownObjectRetain();
          v88(v82, v83, v92, v96, sub_1BAF3B9B4, v84, ObjectType, v86);
          swift_unknownObjectRelease();
          sub_1BAEFD9A4(v97);
          swift_unknownObjectRelease();

          goto LABEL_25;
        }
      }

      v49(v46, v47);
      sub_1BAEFD9A4(v49);
      goto LABEL_24;
    }

    v57 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
    v58 = (v25 + *(v57 + 48));
    v59 = *v58;
    v60 = v58[1];
    ObjectType = *(v25 + *(v57 + 64));
    v99 = v6;
    v61 = v7;
    (*(v7 + 32))(v10, v25, v6);
    if (qword_1EDBA2098 != -1)
    {
      swift_once();
    }

    LODWORD(v97) = byte_1EDBA20A0;
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v62 = sub_1BAF8F0C8();
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BAF954D0;
    *(v63 + 56) = MEMORY[0x1E69E6158];
    v64 = sub_1BAF30E44();
    *(v63 + 64) = v64;
    *(v63 + 32) = v59;
    *(v63 + 40) = v60;

    sub_1BAF8E7B8();
    v65 = sub_1BAF8E7C8();
    (*(*(v65 - 8) + 56))(v5, 0, 1, v65);
    v66 = sub_1BAF8E668();
    v67 = v59;
    v69 = v68;
    sub_1BAF32F04(v5, &qword_1EBC367A0, &qword_1BAF955D8);
    *(v63 + 96) = MEMORY[0x1E69E6158];
    *(v63 + 104) = v64;
    *(v63 + 72) = v66;
    *(v63 + 80) = v69;
    sub_1BAF8E8B8();

    sub_1BAF3818C(v10, v67, v60, ObjectType);

    swift_unknownObjectRelease();
    return (*(v61 + 8))(v10, v99);
  }
}

uint64_t sub_1BAF37AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v75 = a1;
  v76 = a2;
  v6 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = &v64 - v8;
  v67 = type metadata accessor for WorkCommand();
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BAF8E728();
  v74 = *(v66 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v71 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for WorkResult();
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for WorkOrder();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v64 - v25;
  v27 = *(v4 + 128);
  v72 = v4;
  v28 = *(*sub_1BADC8524((v4 + 104), v27) + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 32) = v76;
  v30 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v30;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 40) = a3;

  sub_1BAF5EA9C(0xD000000000000028, 0x80000001BAFA25F0, inited, v28, v18);
  v31 = v75;
  v76 = v24;
  v33 = v73;
  v32 = v74;
  swift_setDeallocating();
  v34 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  swift_arrayDestroy();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_1BAF32F04(v18, &unk_1EBC36780, &qword_1BAF955C8);
  }

  v36 = v19;
  v37 = v26;
  sub_1BAF3BBC4(v18, v26, type metadata accessor for WorkOrder);
  v38 = v31;
  v39 = v33;
  sub_1BAF3B9E0(v38, v33, type metadata accessor for WorkResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v33;
    v41 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
    v42 = v65;
    sub_1BAF3B9E0(v26, v65, type metadata accessor for WorkOrder);
    *(v42 + v41) = v40;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v42);
    sub_1BAF3B6CC(v42, type metadata accessor for WorkCommand);
  }

  else
  {
    v43 = *v33;
    v44 = *(v33 + 8);
    v45 = sub_1BAF2DB10(&qword_1EBC367B8, &qword_1BAF955F0);
    v46 = *(v45 + 48);
    v47 = v33 + *(v45 + 64);
    v48 = *v47;
    LODWORD(v75) = *(v47 + 8);
    v49 = v32;
    v50 = *(v32 + 32);
    v51 = v71;
    v52 = v66;
    v50(v71, v39 + v46, v66);
    v26[v36[7]] = 0;
    v53 = v36[8];
    v54 = &v26[v53];
    v55 = *(v37 + v53 + 8);

    *v54 = v43;
    *(v54 + 1) = v44;
    v56 = v36[9];
    sub_1BAF32F04(v37 + v56, &unk_1EBC36750, &qword_1BAF95590);
    (*(v49 + 16))(v37 + v56, v51, v52);
    v57 = *(v49 + 56);
    v57(v37 + v56, 0, 1, v52);
    v58 = v36[10];
    if (v75)
    {
      v48 = *(v37 + v58);
    }

    else
    {
      *(v37 + v58) = v48;
    }

    v59 = v37;
    v60 = v69;
    v61 = v48 << 63 >> 63;
    v62 = *sub_1BADC8524((v72 + 104), *(v72 + 128));
    sub_1BAF55800(v59);
    v63 = v76;
    sub_1BAF3B9E0(v59, v76, type metadata accessor for WorkOrder);
    v57(v60, 1, 1, v52);
    sub_1BAF398A4(v63, v60, v61 & v68);
    sub_1BAF32F04(v60, &unk_1EBC36750, &qword_1BAF95590);
    sub_1BAF3B6CC(v63, type metadata accessor for WorkOrder);
    (*(v49 + 8))(v71, v52);
    v37 = v59;
  }

  return sub_1BAF3B6CC(v37, type metadata accessor for WorkOrder);
}

uint64_t sub_1BAF3818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v42 = sub_1BAF8E9A8();
  v40 = *(v42 - 8);
  v7 = *(v40 + 64);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v38 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = v33 - v10;
  v11 = sub_1BAF8F098();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v35 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BAF8F078();
  v14 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33[1] = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAF8E988();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = sub_1BAF8E958();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a2;
  v21[4] = a3;
  v22 = swift_allocObject();
  v22[2] = sub_1BAF3B92C;
  v22[3] = v21;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a4;
  aBlock[4] = sub_1BAF3B938;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F4E20;
  _Block_copy(aBlock);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  v23 = sub_1BAF8E9D8();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_1BAF8E9B8();

  sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
  sub_1BAF8E978();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
  sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
  sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
  sub_1BAF8F198();
  (*(v36 + 104))(v35, *MEMORY[0x1E69E8090], v37);
  v26 = sub_1BAF8F0B8();
  v27 = v38;
  sub_1BAF8E998();
  sub_1BAF8E6B8();
  v28 = v39;
  sub_1BAF8E9F8();
  v29 = *(v40 + 8);
  v30 = v27;
  v31 = v42;
  v29(v30, v42);
  sub_1BAF8F088();

  v29(v28, v31);
}

uint64_t sub_1BAF3873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for WorkCommand();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v12 = a5;
    v12[1] = a6;
    v12[2] = a3;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();

    sub_1BAF36C9C(v12);

    return sub_1BAF3B6CC(v12, type metadata accessor for WorkCommand);
  }

  return result;
}

uint64_t sub_1BAF38848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v31 = a1;
  v4 = sub_1BAF8E958();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BAF8F098();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF8F078();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1BAF8E988();
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v5;
  v38 = v4;
  v35 = v17;
  v36 = v8;
  if (a3)
  {
    v29 = a3;
LABEL_5:
    v28 = sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
    swift_unknownObjectRetain();
    sub_1BAF8E968();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF8F198();
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v30);
    v21 = sub_1BAF8F0B8();
    v22 = swift_allocObject();
    v23 = v31;
    v22[2] = v32;
    v22[3] = v23;
    v24 = v29;
    v22[4] = v33;
    v22[5] = v24;
    aBlock[4] = sub_1BAF3B788;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAF4CF6C;
    aBlock[3] = &unk_1F38F4D58;
    v25 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_1BAF8E968();
    v39 = MEMORY[0x1E69E7CC0];
    sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v26 = v36;
    v27 = v38;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v19, v26, v25);
    _Block_release(v25);
    swift_unknownObjectRelease();

    (*(v37 + 8))(v26, v27);
    (*(v34 + 8))(v19, v35);
  }

  result = os_transaction_create();
  if (result)
  {
    v29 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF38D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v29 = type metadata accessor for WorkCommand();
  v6 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF2DB10(&unk_1EBC36780, &qword_1BAF955C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for WorkOrder();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v20 = *sub_1BADC8524((a1 + 104), *(a1 + 128));
  sub_1BAF55CCC(a2, v31, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BAF32F04(v12, &unk_1EBC36780, &qword_1BAF955C8);
  }

  sub_1BAF3BBC4(v12, v19, type metadata accessor for WorkOrder);
  sub_1BAF3B9E0(v19, v17, type metadata accessor for WorkOrder);
  v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v23 = swift_allocObject();
  sub_1BAF3BBC4(v17, v23 + v22, type metadata accessor for WorkOrder);
  *(v23 + ((v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v24 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v25 = &v8[v24[12]];
  v26 = v24[16];
  v27 = &v8[v24[20]];
  sub_1BAF3B9E0(v19, v8, type metadata accessor for WorkOrder);
  *v25 = sub_1BAF3B848;
  v25[1] = v23;
  *&v8[v26] = v30;
  *v27 = 0;
  *(v27 + 1) = 0;
  swift_storeEnumTagMultiPayload();

  swift_unknownObjectRetain();
  sub_1BAF36C9C(v8);

  sub_1BAF3B6CC(v8, type metadata accessor for WorkCommand);
  return sub_1BAF3B6CC(v19, type metadata accessor for WorkOrder);
}

uint64_t sub_1BAF39078(uint64_t a1, uint64_t a2)
{
  v37 = sub_1BAF8E4F8();
  v34 = *(v37 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_1BAF8E598();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = (a1 + *(type metadata accessor for WorkOrder() + 24));
  v21 = v20[1];
  if (!v21)
  {
    return 0;
  }

  v32 = *v20;
  v33 = v2;
  v22 = *sub_1BADC8524((a2 + 144), *(a2 + 168));
  v23 = OBJC_IVAR____TtC12APFoundation13WorkDataStore_basePath;
  swift_beginAccess();
  sub_1BAF32F64(v22 + v23, v11, &qword_1EBC36CC0, &qword_1BAF955D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BAF32F04(v11, &qword_1EBC36CC0, &qword_1BAF955D0);
    sub_1BAF3B8D8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    v35 = v32;
    v36 = v21;
    v25 = v34;
    v26 = v37;
    (*(v34 + 104))(v7, *MEMORY[0x1E6968F70], v37);
    sub_1BAF2DB58();
    sub_1BAF8E578();
    (*(v25 + 8))(v7, v26);
    v27 = v33;
    v28 = sub_1BAF8E5A8();
    if (v27)
    {
      v29 = *(v13 + 8);
      v29(v17, v12);
      return (v29)(v19, v12);
    }

    else
    {
      v30 = *(v13 + 8);
      v31 = v28;
      v30(v17, v12);
      v30(v19, v12);
      return v31;
    }
  }
}

uint64_t sub_1BAF39424()
{
  sub_1BAF32F04((v0 + 2), &qword_1EBC367C0, &qword_1BAF955F8);
  v1 = v0[7];

  sub_1BADC5BE0(v0 + 8);
  sub_1BADC5BE0(v0 + 13);
  sub_1BADC5BE0(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkCommand()
{
  result = qword_1EDBA3708;
  if (!qword_1EDBA3708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF39550()
{
  sub_1BAF395EC(319);
  if (v0 <= 0x3F)
  {
    sub_1BAF39738();
    if (v1 <= 0x3F)
    {
      sub_1BAF397C0();
      if (v2 <= 0x3F)
      {
        sub_1BAF39838();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1BAF395EC(uint64_t a1)
{
  if (!qword_1EDBA2298)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for WorkOrder();
    sub_1BAF2F048(&qword_1EBC36720, &unk_1BAF95558);
    sub_1BAF2F048(&qword_1EBC36728, &qword_1BAF95568);
    sub_1BAF2F048(&unk_1EBC36730, &qword_1BAF95570);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDBA2298);
    }
  }
}

void sub_1BAF39738()
{
  if (!qword_1EDBA38B8)
  {
    sub_1BAF8E728();
    sub_1BAF2F048(&unk_1EBC36740, &qword_1BAF95578);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBA38B8);
    }
  }
}

void sub_1BAF397C0()
{
  if (!qword_1EDBA20F8)
  {
    sub_1BAF2F048(&unk_1EBC36740, &qword_1BAF95578);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBA20F8);
    }
  }
}

void sub_1BAF39838()
{
  if (!qword_1EDBA22A0[0])
  {
    type metadata accessor for WorkOrder();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBA22A0);
    }
  }
}

uint64_t sub_1BAF398A4(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a1;
  v4 = type metadata accessor for WorkCommand();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = sub_1BAF8E728();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v30 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30 - v20;
  sub_1BAF32F64(a2, v14, &unk_1EBC36750, &qword_1BAF95590);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_1BAF32F04(v14, &unk_1EBC36750, &qword_1BAF95590);
    v23 = type metadata accessor for WorkOrder();
    sub_1BAF32F64(v32 + *(v23 + 36), v12, &unk_1EBC36750, &qword_1BAF95590);
    if (v22(v12, 1, v15) == 1)
    {
      sub_1BAF32F04(v12, &unk_1EBC36750, &qword_1BAF95590);
      v24 = *(sub_1BAF2DB10(&qword_1EBC367A8, &qword_1BAF955E0) + 48);
      sub_1BAF3B9E0(v32, v7, type metadata accessor for WorkOrder);
      v7[v24] = 0;
      swift_storeEnumTagMultiPayload();
      sub_1BAF36C9C(v7);
      return sub_1BAF3B6CC(v7, type metadata accessor for WorkCommand);
    }

    v21 = v30;
    (*(v16 + 32))(v30, v12, v15);
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
  }

  v26 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
  v27 = &v7[*(v26 + 48)];
  v28 = *(v26 + 64);
  (*(v16 + 16))(v7, v21, v15);
  v29 = v32[1];
  *v27 = *v32;
  *(v27 + 1) = v29;
  *&v7[v28] = v31;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();

  sub_1BAF36C9C(v7);
  sub_1BAF3B6CC(v7, type metadata accessor for WorkCommand);
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_1BAF39C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v97 = a8;
  v104 = a6;
  v91 = a5;
  v103 = a4;
  v100 = a3;
  *&v99 = a2;
  v98 = a1;
  v80 = type metadata accessor for WorkCommand();
  v13 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v84 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for WorkOrder();
  v15 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v102 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1BAF8E788();
  v88 = *(v89 - 8);
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BAF8E728();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v79 - v25;
  v27 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v83 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v79 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v79 - v34;
  v96 = *a12;
  v95 = *(a12 + 8);
  (*(v20 + 16))(&v79 - v34, a7, v19);
  v36 = *(v20 + 56);
  v36(v35, 0, 1, v19);
  v37 = type metadata accessor for WorkOrderBuilder();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  *(v40 + 3) = 0;
  *(v40 + 4) = 0;
  *(v40 + 2) = 0;
  v94 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v36(&v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v19);
  v92 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v41 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v41 = 0;
  *(v41 + 1) = 0;
  v93 = v41;
  v42 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v42 = 0;
  *(v42 + 1) = 0;
  v82 = v20 + 56;
  v81 = v36;
  v36(&v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v19);
  v43 = &v40[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v43 = 0;
  *(v43 + 1) = 0;
  v105 = v35;
  sub_1BAF32F64(v35, v33, &unk_1EBC36750, &qword_1BAF95590);
  v44 = *(v20 + 48);
  if (v44(v33, 1, v19) == 1)
  {
    v85 = v44;
    v86 = v20 + 48;
    sub_1BAF32F04(v33, &unk_1EBC36750, &qword_1BAF95590);
    v45 = 1;
    v46 = v105;
    v47 = v19;
  }

  else
  {
    (*(v20 + 32))(v26, v33, v19);
    sub_1BAF8E718();
    v48 = sub_1BAF8E688();
    v49 = *(v20 + 8);
    v49(v24, v19);
    v49(v26, v19);
    if ((v48 & 1) == 0)
    {

      v68 = 0;
      v46 = v105;
LABEL_21:
      sub_1BAF32F04(v46, &unk_1EBC36750, &qword_1BAF95590);
      return v68;
    }

    v47 = v19;
    v85 = v44;
    v86 = v20 + 48;
    v45 = 0;
    v46 = v105;
  }

  v40[v92] = v45;
  v50 = v104 >> 60;
  if (v104 >> 60 != 15)
  {
    v51 = v87;
    sub_1BAF8E778();
    v52 = sub_1BAF8E748();
    v54 = v53;
    (*(v88 + 8))(v51, v89);
    *(v40 + 2) = v52;
    *(v40 + 3) = v54;
    v46 = v105;
  }

  v55 = v94;
  swift_beginAccess();
  sub_1BAF3B5C0(v46, &v40[v55]);
  swift_endAccess();
  v56 = v93;
  *v93 = v97;
  v56[1] = a9;
  *v42 = a10;
  *(v42 + 1) = a11;
  v57 = v96;
  if (v95)
  {
    v57 = 0;
  }

  *(v40 + 4) = v57;

  v58 = v102;
  sub_1BAF7184C(v98, v99, v100, v103, v102);
  v59 = *(v58 + 1);
  v103 = *v58;
  v60 = v101;
  v61 = *sub_1BADC8524((v101 + 104), *(v101 + 128));

  sub_1BAF553D0(v58);
  if (v50 <= 0xE)
  {
    v62 = &v58[*(v90 + 24)];
    v63 = *(v62 + 1);
    if (v63)
    {
      v100 = v59;
      v64 = *v62;
      v65 = *sub_1BADC8524((v60 + 144), *(v60 + 168));
      v66 = v91;
      v67 = v104;
      sub_1BAF3B678(v91, v104);
      sub_1BAF5C160(v64, v63, v66, v67);
      sub_1BAF3B72C(v66, v67);
      v59 = v100;
    }
  }

  if (v85(v46, 1, v47) != 1)
  {
    if (v58[*(v90 + 40)])
    {
      result = os_transaction_create();
      v77 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v77 = 0;
    }

    v78 = v83;
    v81(v83, 1, 1, v47);
    sub_1BAF398A4(v58, v78, v77);

    swift_unknownObjectRelease();
    sub_1BAF32F04(v78, &unk_1EBC36750, &qword_1BAF95590);
    goto LABEL_20;
  }

  v100 = v59;
  v69 = swift_allocObject();
  v70 = v91;
  v71 = v104;
  *(v69 + 16) = v91;
  *(v69 + 24) = v71;
  v72 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v73 = v84;
  v74 = (v84 + v72[12]);
  sub_1BAF3B9E0(v58, v84, type metadata accessor for WorkOrder);
  *v74 = sub_1BAF3C0B8;
  v74[1] = v69;
  sub_1BAF3B664(v70, v71);

  result = os_transaction_create();
  if (result)
  {
    v76 = (v73 + v72[20]);
    *(v73 + v72[16]) = result;
    *v76 = 0;
    v76[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v73);

    sub_1BAF3B6CC(v73, type metadata accessor for WorkCommand);
LABEL_20:
    sub_1BAF3B6CC(v58, type metadata accessor for WorkOrder);
    v68 = v103;
    goto LABEL_21;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1BAF3A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = type metadata accessor for WorkCommandProcessor();
  v16[4] = &off_1F38F4CC8;
  v16[0] = a3;

  v6 = sub_1BAF8EC28();
  v7 = NSClassFromString(v6);

  if (v7 && (ObjCClassMetadata = swift_getObjCClassMetadata(), (v9 = swift_conformsToProtocol2()) != 0) && ObjCClassMetadata)
  {
    v10 = v9;
    sub_1BAF3BB60(v16, v15);
    v11 = (*(v10 + 16))(v15, ObjCClassMetadata, v10);
  }

  else
  {
    sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v12 = sub_1BAF8F0C8();
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1BAF95190;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1BAF30E44();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    sub_1BAF8E8B8();

    v11 = 0;
  }

  sub_1BADC5BE0(v16);
  return v11;
}

uint64_t sub_1BAF3AA00(uint64_t *a1)
{
  v2 = v1;
  v4 = a1 + *(type metadata accessor for WorkOrder() + 24);
  v5 = *(v4 + 1);
  v6 = MEMORY[0x1E69E6158];
  if (v5)
  {
    v7 = *v4;
    v8 = *sub_1BADC8524((v1 + 144), *(v1 + 168));
    sub_1BAF5CB00(v7, v5);
  }

  v9 = sub_1BADC8524((v2 + 104), *(v2 + 128));
  v11 = *a1;
  v10 = a1[1];
  v12 = *(*v9 + 16);
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = v6;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = v11;
  *(inited + 40) = v10;

  sub_1BADC826C(0xD000000000000026, 0x80000001BAFA2470, inited);
  swift_setDeallocating();
  v14 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  return swift_arrayDestroy();
}

uint64_t sub_1BAF3AC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v81 = a8;
  v79 = a7;
  v87 = a6;
  v85 = a5;
  *&v84 = a4;
  v83 = a3;
  v82 = a2;
  v80 = a1;
  v74 = type metadata accessor for WorkCommand();
  v11 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for WorkOrder();
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v86 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1BAF8E788();
  v68 = *(v69 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8E728();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v73 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = &v68 - v22;
  v23 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v68 - v28;
  v78 = *a11;
  v77 = *(a11 + 8);
  v30 = *(v18 + 56);
  v30(&v68 - v28, 1, 1, v17);
  v31 = type metadata accessor for WorkOrderBuilder();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  *(v34 + 3) = 0;
  *(v34 + 4) = 0;
  *(v34 + 2) = 0;
  v76 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  v30(&v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v17);
  v35 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
  v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
  v36 = &v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
  *v37 = 0;
  *(v37 + 1) = 0;
  v30(&v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v17);
  v38 = &v34[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
  *v38 = 0;
  *(v38 + 1) = 0;
  v89 = v29;
  sub_1BAF32F64(v29, v27, &unk_1EBC36750, &qword_1BAF95590);
  if ((*(v18 + 48))(v27, 1, v17) == 1)
  {
    sub_1BAF32F04(v27, &unk_1EBC36750, &qword_1BAF95590);
    v39 = 1;
  }

  else
  {
    v40 = v72;
    (*(v18 + 32))(v72, v27, v17);
    v41 = v73;
    sub_1BAF8E718();
    v42 = sub_1BAF8E688();
    v43 = *(v18 + 8);
    v43(v41, v17);
    v43(v40, v17);
    if ((v42 & 1) == 0)
    {

      v53 = 0;
LABEL_15:
      sub_1BAF32F04(v89, &unk_1EBC36750, &qword_1BAF95590);
      return v53;
    }

    v39 = 0;
  }

  v34[v35] = v39;
  v44 = v87 >> 60;
  if (v87 >> 60 != 15)
  {
    v45 = v71;
    sub_1BAF8E778();
    v46 = sub_1BAF8E748();
    v48 = v47;
    (*(v68 + 8))(v45, v69);
    *(v34 + 2) = v46;
    *(v34 + 3) = v48;
  }

  v49 = v76;
  swift_beginAccess();
  sub_1BAF3B5C0(v89, &v34[v49]);
  swift_endAccess();
  v50 = v81;
  *v36 = v79;
  *(v36 + 1) = v50;
  *v37 = a9;
  *(v37 + 1) = a10;
  v51 = v78;
  if (v77)
  {
    v51 = 0;
  }

  *(v34 + 4) = v51;

  v52 = v86;
  sub_1BAF7184C(v80, v82, v83, v84, v86);
  v53 = *v52;
  v54 = *(v52 + 1);
  v55 = *sub_1BADC8524(v88 + 13, v88[16]);

  sub_1BAF553D0(v52);
  v56 = v87;
  v57 = v85;
  if (v44 <= 0xE)
  {
    v58 = &v52[*(v70 + 24)];
    v59 = *(v58 + 1);
    if (v59)
    {
      v60 = *v58;
      v61 = *sub_1BADC8524(v88 + 18, v88[21]);
      sub_1BAF3B678(v57, v56);
      sub_1BAF5C160(v60, v59, v57, v56);
      sub_1BAF3B72C(v57, v56);
    }
  }

  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  *(v62 + 24) = v56;
  v63 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
  v64 = v75;
  v65 = (v75 + v63[12]);
  sub_1BAF3B9E0(v52, v75, type metadata accessor for WorkOrder);
  *v65 = sub_1BAF3B630;
  v65[1] = v62;
  sub_1BAF3B664(v57, v56);

  result = os_transaction_create();
  if (result)
  {
    v67 = (v64 + v63[20]);
    *(v64 + v63[16]) = result;
    *v67 = 0;
    v67[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BAF36C9C(v64);

    sub_1BAF3B6CC(v64, type metadata accessor for WorkCommand);
    sub_1BAF3B6CC(v52, type metadata accessor for WorkOrder);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF3B5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF3B630()
{
  v1 = *(v0 + 16);
  sub_1BAF3B664(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1BAF3B664(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAF3B678(a1, a2);
  }

  return a1;
}

uint64_t sub_1BAF3B678(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BAF3B6CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BAF3B72C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BAF2DABC(a1, a2);
  }

  return a1;
}

uint64_t sub_1BAF3B740()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1BAF2DABC(*(v0 + 16), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BAF3B794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF3B7AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAF3B7F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF3B848()
{
  v1 = *(type metadata accessor for WorkOrder() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_1BAF39078(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1BAF3B8D8()
{
  result = qword_1EBC36790;
  if (!qword_1EBC36790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36790);
  }

  return result;
}

uint64_t sub_1BAF3B96C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BAF3B9B4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  return sub_1BAF37AB0(a1, v2, v3, v4);
}

uint64_t sub_1BAF3B9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAF3BA48()
{
  v1 = *(sub_1BAF8E728() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1BAF34060(v2, v3, v4);
}

uint64_t *sub_1BAF3BAAC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BAF3BB10(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1BAF3BB60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BAF3BBC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BAF3BC30()
{
  v1 = *(type metadata accessor for WorkCommand() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v44 = *(v6 + 8);

      v45 = *(v6 + 16);
LABEL_15:
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v48 = v4;
      v12 = *(v6 + 8);

      v13 = type metadata accessor for WorkOrder();
      v14 = v13[5];
      v15 = sub_1BAF8E728();
      v16 = *(v15 - 8);
      v17 = v6 + v14;
      v18 = *(v16 + 8);
      v18(v17, v15);
      v19 = *(v6 + v13[6] + 8);

      v20 = *(v6 + v13[8] + 8);

      v21 = v13[9];
      if (!(*(v16 + 48))(v6 + v21, 1, v15))
      {
        v18(v6 + v21, v15);
      }

      v22 = *(v6 + v13[11] + 8);

      v23 = *(v6 + v13[12] + 8);

      v24 = *(v6 + v13[13] + 8);

      v25 = *(v6 + v13[14] + 8);

      v4 = v48;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_16;
      }

      v8 = sub_1BAF8E728();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v9 = sub_1BAF2DB10(&qword_1EBC367B0, &qword_1BAF955E8);
      v10 = *(v6 + *(v9 + 48) + 8);

      v11 = *(v6 + *(v9 + 64));
      goto LABEL_15;
    }

    v49 = v4;
    v26 = *(v6 + 8);

    v27 = type metadata accessor for WorkOrder();
    v28 = v27[5];
    v29 = sub_1BAF8E728();
    v30 = *(v29 - 8);
    v31 = *(v30 + 8);
    v31(v6 + v28, v29);
    v32 = *(v6 + v27[6] + 8);

    v33 = *(v6 + v27[8] + 8);

    v34 = v27[9];
    if (!(*(v30 + 48))(v6 + v34, 1, v29))
    {
      v31(v6 + v34, v29);
    }

    v35 = *(v6 + v27[11] + 8);

    v36 = *(v6 + v27[12] + 8);

    v37 = *(v6 + v27[13] + 8);

    v38 = *(v6 + v27[14] + 8);

    v39 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
    v40 = *(v6 + v39[12] + 8);

    v41 = *(v6 + v39[16]);
    swift_unknownObjectRelease();
    v42 = (v6 + v39[20]);
    v4 = v49;
    if (*v42)
    {
      v43 = v42[1];
    }
  }

LABEL_16:
  v46 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1BADC5BE0((v0 + v46));

  return MEMORY[0x1EEE6BDD0](v0, v46 + 40, v2 | 7);
}

uint64_t sub_1BAF3C020()
{
  v1 = *(type metadata accessor for WorkCommand() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BAF36E9C(v3, v0 + v2, v4);
}

uint64_t sub_1BAF3C0C8()
{
  v0 = sub_1BAF8E7D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAF8E848();
  sub_1BADC4B44(v5, qword_1EDBA3888);
  sub_1BADC4BA8(v5, qword_1EDBA3888);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1BAF8E7E8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t static Calendar.gregorian.setter(uint64_t a1)
{
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E848();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3888);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Calendar.gregorian.modify())()
{
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v0 = sub_1BAF8E848();
  sub_1BADC4BA8(v0, qword_1EDBA3888);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t MemoizingCohortCandidateSource.__allocating_init(backingSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t MemoizingCohortCandidateSource.init(backingSource:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  sub_1BADC5B38(a1, v1 + 16);
  return v1;
}

APFoundation::CohortCandidate __swiftcall MemoizingCohortCandidateSource.candidate()()
{
  v2 = v0;
  if (*(v1 + 64))
  {
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    sub_1BADC8524((v1 + 16), v3);
    (*(v4 + 8))(&v6, v3, v4);
    result.value = v6;
    *(v1 + 56) = v6;
    *(v1 + 64) = 0;
  }

  else
  {
    *&result.value = *(v1 + 56);
  }

  v2->value = result.value;
  return result;
}

uint64_t MemoizingCohortCandidateSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1BAF3C4FC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 64))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    sub_1BADC8524((v3 + 16), v4);
    result = (*(v5 + 8))(&v8, v4, v5);
    v7 = v8;
    *(v3 + 56) = v8;
    *(v3 + 64) = 0;
  }

  else
  {
    v7 = *(v3 + 56);
  }

  *a1 = v7;
  return result;
}

uint64_t type metadata accessor for WorkResult()
{
  result = qword_1EDBA3830;
  if (!qword_1EDBA3830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF3C628()
{
  sub_1BAF3C69C();
  if (v0 <= 0x3F)
  {
    sub_1BAF3C740();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BAF3C69C()
{
  if (!qword_1EDBA20E8)
  {
    sub_1BAF2F048(&qword_1EBC367C8, &qword_1BAF956B0);
    sub_1BAF8E728();
    sub_1BAF2F048(&qword_1EBC367D0, &qword_1BAF956B8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDBA20E8);
    }
  }
}

uint64_t sub_1BAF3C740()
{
  result = qword_1EDBA20B0;
  if (!qword_1EDBA20B0)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EDBA20B0);
  }

  return result;
}

uint64_t String.containsOnlyCharactersIn(characterSet:)()
{
  v0 = sub_1BAF8E3E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1BAF8E3A8();
  (*(v1 + 16))(v5, v10, v0);
  sub_1BAF3C940(&qword_1EBC36578);
  sub_1BAF8F178();
  sub_1BAF3C940(&qword_1EBC36580);
  v11 = sub_1BAF8EC18();
  v12 = *(v1 + 8);
  v12(v8, v0);
  v12(v10, v0);
  return v11 & 1;
}

uint64_t sub_1BAF3C940(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF8E3E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t String.init(_:)(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_1BAF8ECF8();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_1BAF8ECF8();
    }

LABEL_9:
    __break(1u);
    return sub_1BAF8ECF8();
  }

  __break(1u);
  return result;
}

APFoundation::JWTAudience __swiftcall JWTAudience.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
  result.audiences._rawValue = swift_allocObject();
  *(result.audiences._rawValue + 1) = xmmword_1BAF95190;
  *(result.audiences._rawValue + 4) = countAndFlagsBits;
  *(result.audiences._rawValue + 5) = object;
  v4->audiences._rawValue = result.audiences._rawValue;
  return result;
}

uint64_t JWTAudience.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF8F298();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF8F618();
  if (!v2)
  {
    sub_1BADC8524(v13, v13[3]);
    v8 = sub_1BAF8F4D8();
    v10 = v9;
    sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BAF95190;
    *(v11 + 32) = v8;
    *(v11 + 40) = v10;
    sub_1BADC5BE0(v13);
    *a2 = v11;
  }

  return sub_1BADC5BE0(a1);
}

uint64_t JWTAudience.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF8F638();
  if (v2[2] == 1)
  {
    v4 = v2[4];
    v5 = v2[5];
    sub_1BAF3BB10(v7, v8);

    sub_1BAF8F4F8();
  }

  else
  {
    v9 = v2;
    sub_1BAF3BB10(v7, v8);
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF3CF88(&qword_1EDBA20D0);
    sub_1BAF8F508();
  }

  return sub_1BADC5BE0(v7);
}

uint64_t sub_1BAF3CF88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF2F048(&qword_1EBC367E0, &qword_1BAF956D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BAF3D000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    if (*i)
    {
      break;
    }

    if (*v3)
    {
      goto LABEL_16;
    }

    v11 = sub_1BAF4854C(*(i - 2), *(v3 - 2));
    sub_1BAF3D694(v9, v8, 0);
    sub_1BAF3D694(v6, v5, 0);
    sub_1BAF3D688(v6, v5, 0);
    sub_1BAF3D688(v9, v8, 0);
    if ((v11 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  if (*v3)
  {
    sub_1BAF3D688(*(i - 2), *(i - 1), 1);
    sub_1BAF3D688(v9, v8, 1);
    result = 0;
    if (v6 != v9 || v5 != v8)
    {
      return result;
    }

    goto LABEL_5;
  }

  v12 = *(v3 - 2);
LABEL_16:

  sub_1BAF3D688(v6, v5, v7);
  sub_1BAF3D688(v9, v8, v7 ^ 1);
  return 0;
}

uint64_t sub_1BAF3D154(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_55;
    }

    v6 = (v4 + 16 * v3);
    v7 = (v5 + 16 * v3);
    if (*v6 != *v7)
    {
      return 0;
    }

    v8 = v6[1];
    v9 = v7[1];
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = !v10 || v8 == v9;
    if (!v11)
    {
      break;
    }

LABEL_13:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v45 = v3;
  v46 = v5;
  v47 = v4;
  v48 = v2;
  v12 = v8 + 32;
  v13 = v9 + 32;

  v14 = 0;
  v52 = v8 + 32;
  v53 = v8;
  v51 = v9 + 32;
  while (1)
  {
    if (v14 >= *(v8 + 16))
    {
      goto LABEL_53;
    }

    if (v14 >= *(v9 + 16))
    {
      goto LABEL_54;
    }

    v16 = v12 + 24 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = v13 + 24 * v14;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if ((*(v16 + 16) & 1) == 0)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
      v39 = *(v16 + 8);

      sub_1BAF3D688(v18, v39, 1);
      v40 = v20;
      v41 = v21;
      v42 = 0;
LABEL_48:
      sub_1BAF3D688(v40, v41, v42);
LABEL_49:

LABEL_50:

      return 0;
    }

    v23 = v10;
    v24 = *(v16 + 8);
    sub_1BAF3D688(v18, v17, 1);
    result = sub_1BAF3D688(v20, v21, 1);
    if (v18 != v20)
    {
      goto LABEL_49;
    }

    v11 = v24 == v21;
    v10 = v23;
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_16:
    if (++v14 == v10)
    {

      v4 = v47;
      v2 = v48;
      v3 = v45;
      v5 = v46;
      goto LABEL_13;
    }
  }

  if (v22)
  {
    v43 = *(v16 + 8);

    sub_1BAF3D688(v44, v43, 0);
    v40 = v20;
    v41 = v21;
    v42 = 1;
    goto LABEL_48;
  }

  v54 = v21;
  if (v18 == v20)
  {
LABEL_15:
    v15 = v17;
    sub_1BAF3D694(v18, v17, 0);
    sub_1BAF3D694(v20, v54, 0);
    sub_1BAF3D688(v18, v15, 0);
    result = sub_1BAF3D688(v20, v54, 0);
    v12 = v52;
    v8 = v53;
    v13 = v51;
    goto LABEL_16;
  }

  v49 = *(v16 + 8);
  v50 = v9;
  if (*(v18 + 16) != *(v20 + 16))
  {
LABEL_45:
    sub_1BAF3D694(v18, v49, 0);
    sub_1BAF3D694(v20, v54, 0);
    sub_1BAF3D688(v18, v49, 0);
    sub_1BAF3D688(v20, v54, 0);

    goto LABEL_50;
  }

  v25 = 0;
  v26 = 1 << *(v18 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v18 + 56);
  v29 = (v26 + 63) >> 6;
  v30 = v20 + 56;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
LABEL_38:
    v34 = *(*(v18 + 48) + 8 * (v31 | (v25 << 6)));
    v35 = *(v20 + 40);
    result = sub_1BAF8F598();
    v36 = -1 << *(v20 + 32);
    v37 = result & ~v36;
    if (((*(v30 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
    {
      goto LABEL_45;
    }

    v38 = ~v36;
    while (*(*(v20 + 48) + 8 * v37) != v34)
    {
      v37 = (v37 + 1) & v38;
      if (((*(v30 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
      {
        goto LABEL_45;
      }
    }
  }

  v32 = v25;
  v17 = v49;
  v9 = v50;
  while (1)
  {
    v25 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v25 >= v29)
    {
      goto LABEL_15;
    }

    v33 = *(v18 + 56 + 8 * v25);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v28 = (v33 - 1) & v33;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1BAF3D528(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BAF8F4C8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BAF3D5F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BAF3D63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BAF3D688(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BAF3D694(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1BAF3D6DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF3D718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BAF3D72C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF3D774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_1BAF3D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF3DC34;
}

uint64_t (*sub_1BAF3D914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF3DB4C;
}

uint64_t sub_1BAF3DA40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_1BAF3DA6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t (*sub_1BAF3DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>))()
{
  v10 = (*(a4 + 32))(a3, a4);
  v12 = v11;
  v13 = sub_1BAF3D7E8(a1, a2, a3, a4);
  v15 = v14;
  result = sub_1BAF3D914(a1, a2, a3, a4);
  *a5 = v10;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v15;
  a5[4] = result;
  a5[5] = v17;
  return result;
}

uint64_t sub_1BAF3DBB4()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t PopulatedDictionary.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v40 = a6;
  v41 = a7;
  v38 = a2;
  v11 = sub_1BAF8F0D8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = &v33 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  v15 = v35;
  v16 = *(v35 + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v34 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  v36 = a4;
  v24 = *(a4 - 8);
  (*(v24 + 32))(&v33 - v22, a1, a4);
  v25 = *(a5 - 8);
  v26 = *(v25 + 32);
  v26(&v23[*(TupleTypeMetadata2 + 48)], v38, a5);
  v42 = a3;
  v27 = *(v15 + 16);
  v27(v21, v23, TupleTypeMetadata2);
  v38 = *(TupleTypeMetadata2 + 48);
  v28 = v37;
  v27(v37, v23, TupleTypeMetadata2);
  v29 = v39;
  v26(v39, &v28[*(TupleTypeMetadata2 + 48)], a5);
  (*(v25 + 56))(v29, 0, 1, a5);
  v30 = v36;
  sub_1BAF8EB88();
  v31 = v34;
  sub_1BAF8EBA8();
  (*(v35 + 8))(v23, TupleTypeMetadata2);
  (*(v24 + 8))(v28, v30);
  result = (*(v25 + 8))(&v31[v38], a5);
  *v41 = v42;
  return result;
}

uint64_t PopulatedDictionary.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BAF8EB88();
  swift_getWitnessTable();
  result = Collection.isPopulated.getter();
  if ((result & 1) == 0)
  {

    a1 = 0;
  }

  *a2 = a1;
  return result;
}

uint64_t sub_1BAF3E054(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static PopulatedDictionary<>.== infix(_:_:)(a1, a2);
}

uint64_t PopulatedDictionary.debugDescription.getter(void *a1)
{
  v6 = *v1;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_1BAF8EB88();
  swift_getWitnessTable();
  sub_1BAF8F4A8();
  return 0;
}

uint64_t sub_1BAF3E0F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1BAF8F0D8();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1BAF3E1A4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_1BAF8F0D8();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t Worker.__allocating_init(workCreator:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Worker.init(workCreator:)(a1);
  return v5;
}

uint64_t *Worker.init(workCreator:)(uint64_t *a1)
{
  v2 = *v1;
  sub_1BADC5BE0(a1);
  (*(*(*(v2 + 80) - 8) + 56))(v1 + *(*v1 + 104), 1, 1);
  return v1;
}

void sub_1BAF3E340(void **a1)
{
  v1 = *a1;
  v2 = sub_1BAF8F038();
  sub_1BAF3E4B0();
  log = sub_1BAF8F0C8();
  if (os_log_type_enabled(log, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    sub_1BAF3FDB0();
    swift_allocError();
    *v5 = v1;
    sub_1BAF3FE04(v1);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    _os_log_impl(&dword_1BADC1000, log, v2, "Error: %{public}@", v3, 0xCu);
    sub_1BAF32F04(v4, &qword_1EBC36800, &qword_1BAF96670);
    MEMORY[0x1BFB06160](v4, -1, -1);
    MEMORY[0x1BFB06160](v3, -1, -1);
  }
}

unint64_t sub_1BAF3E4B0()
{
  result = qword_1EDBA38D0;
  if (!qword_1EDBA38D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBA38D0);
  }

  return result;
}

uint64_t static Worker.start(task:)(uint64_t result)
{
  v1 = off_1EDBA31E0;
  if (off_1EDBA31E0)
  {
    v2 = result;

    sub_1BAF3E55C(v2, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF3E55C(char *a1, void *a2)
{
  v115 = a2;
  v106 = type metadata accessor for WorkCommand();
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v112 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for WorkOrder();
  v6 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1BAF8E788();
  v109 = *(v110 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E728();
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = v116[8];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v107 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v94 - v14;
  v16 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v94 - v22;
  v24 = *(v2 + 80);
  *&v114 = *(v24 - 8);
  v25 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = *(v2 + 96);
  v27 = static Tools.codableToBinaryData<A>(_:)();
  v100 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  v102 = v20;
  v97 = v15;
  v105 = v23;
  if (v28 >> 60 != 15)
  {
    v94 = 0;
    v103 = v27;
    v104 = v28;
    v118[3] = swift_getMetatypeMetadata();
    v118[0] = v2;
    v96 = _s12APFoundation5ToolsO13fullClassNameySSypFZ_0(v118);
    v99 = v30;
    v31 = sub_1BADC5BE0(v118);
    v95 = (*(v2 + 136))(v31);
    v98 = v32;
    v33 = v114;
    v34 = v100;
    v35 = v24;
    (*(v114 + 16))(v100, v101, v24);
    v36 = (*(v33 + 80) + 40) & ~*(v33 + 80);
    v37 = swift_allocObject();
    v38 = *(v2 + 88);
    *(v37 + 2) = v35;
    *(v37 + 3) = v38;
    *(v37 + 4) = v26;
    (*(v33 + 32))(&v37[v36], v34, v35);
    *&v37[(v25 + v36 + 7) & 0xFFFFFFFFFFFFFFF8] = v2;
    v39 = v116;
    v115 = v115[2];
    v40 = v116[7];
    v41 = v105;
    v42 = v117;
    v40(v105, 1, 1, v117);
    v43 = type metadata accessor for WorkOrderBuilder();
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    *(v46 + 3) = 0;
    *(v46 + 4) = 0;
    *(v46 + 2) = 0;
    v47 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
    v40(&v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime], 1, 1, v42);
    *&v114 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state;
    v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state] = 0;
    v48 = &v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId];
    *v48 = 0;
    *(v48 + 1) = 0;
    v49 = &v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData];
    *v49 = 0;
    *(v49 + 1) = 0;
    v40(&v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created], 1, 1, v42);
    v50 = &v46[OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState];
    *v50 = 0;
    *(v50 + 1) = 0;
    v51 = v102;
    sub_1BAF400F4(v41, v102);
    if ((v39[6])(v51, 1, v42) == 1)
    {
      v117 = v37;
      sub_1BAF3B678(v103, v104);
      sub_1BAF32F04(v51, &unk_1EBC36750, &qword_1BAF95590);
      v52 = 1;
    }

    else
    {
      v101 = v48;
      v53 = v97;
      (v39[4])(v97, v51, v42);
      sub_1BAF3B678(v103, v104);
      v54 = v107;
      sub_1BAF8E718();
      v55 = sub_1BAF8E688();
      v56 = v39[1];
      v56(v54, v42);
      v56(v53, v42);
      if ((v55 & 1) == 0)
      {

        v82 = v103;
        v83 = v104;
        sub_1BAF3B72C(v103, v104);
        sub_1BAF3B72C(v82, v83);

        v61 = v105;
        return sub_1BAF32F04(v61, &unk_1EBC36750, &qword_1BAF95590);
      }

      v117 = v37;
      v52 = 0;
      v48 = v101;
    }

    v46[v114] = v52;
    v57 = v108;
    sub_1BAF8E778();
    v58 = sub_1BAF8E748();
    v60 = v59;
    (*(v109 + 8))(v57, v110);
    *(v46 + 2) = v58;
    *(v46 + 3) = v60;
    swift_beginAccess();
    v61 = v105;
    sub_1BAF3B5C0(v105, &v46[v47]);
    swift_endAccess();
    *v48 = 0;
    *(v48 + 1) = 0;
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v46 + 4) = 1;
    v62 = v113;
    sub_1BAF7184C(v96, v99, v95, v98, v113);
    v63 = v115;
    v64 = *sub_1BADC8524(v115 + 13, v115[16]);
    sub_1BAF553D0(v62);
    v65 = &v62[*(v111 + 24)];
    v66 = *(v65 + 1);
    v67 = v112;
    if (v66)
    {
      v68 = *v65;
      v69 = *sub_1BADC8524(v63 + 18, v63[21]);
      v70 = v103;
      v71 = v104;
      sub_1BAF3B678(v103, v104);
      v72 = v94;
      sub_1BAF5C160(v68, v66, v70, v71);
      if (v72)
      {

        sub_1BAF8F038();
        sub_1BAF3E4B0();
        v73 = sub_1BAF8F0C8();
        sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
        v74 = swift_allocObject();
        v114 = xmmword_1BAF95190;
        *(v74 + 16) = xmmword_1BAF95190;
        v116 = v72;
        v75 = v62;
        v76 = *v62;
        v77 = *(v75 + 1);
        *(v74 + 56) = MEMORY[0x1E69E6158];
        *(v74 + 64) = sub_1BAF30E44();
        *(v74 + 32) = v76;
        *(v74 + 40) = v77;

        sub_1BAF8E8B8();

        v78 = *(*sub_1BADC8524(v115 + 13, v115[16]) + 16);
        sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
        inited = swift_initStackObject();
        *(inited + 16) = v114;
        *(inited + 56) = MEMORY[0x1E69E6158];
        *(inited + 64) = &protocol witness table for String;
        *(inited + 32) = v76;
        *(inited + 40) = v77;

        sub_1BADC826C(0xD000000000000026, 0x80000001BAFA2470, inited);
        sub_1BAF3B72C(v70, v71);

        sub_1BAF3B72C(v70, v71);
        sub_1BAF3B72C(v70, v71);
        swift_setDeallocating();
        v80 = *(inited + 16);
        sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
        v61 = v105;
        swift_arrayDestroy();
        v81 = v75;
LABEL_15:
        sub_1BAF401D0(v81, type metadata accessor for WorkOrder);
        return sub_1BAF32F04(v61, &unk_1EBC36750, &qword_1BAF95590);
      }

      sub_1BAF3B72C(v70, v71);
    }

    v84 = swift_allocObject();
    v85 = v103;
    v86 = v104;
    *(v84 + 16) = v103;
    *(v84 + 24) = v86;
    v87 = sub_1BAF2DB10(&qword_1EBC36880, &qword_1BAF95598);
    v88 = (v67 + v87[12]);
    sub_1BAF4016C(v62, v67);
    *v88 = sub_1BAF40164;
    v88[1] = v84;
    sub_1BAF3B664(v85, v86);

    result = os_transaction_create();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v89 = result;

    v90 = v87[16];
    v91 = v87[20];

    v92 = (v67 + v91);
    *(v67 + v90) = v89;
    v93 = v117;
    *v92 = sub_1BAF40088;
    v92[1] = v93;
    swift_storeEnumTagMultiPayload();

    sub_1BAF36C9C(v67);

    sub_1BAF3B72C(v85, v86);

    sub_1BAF3B72C(v85, v86);
    sub_1BAF401D0(v67, type metadata accessor for WorkCommand);
    v81 = v62;
    goto LABEL_15;
  }

  v118[0] = 1;
  return (*(v2 + 152))(v118);
}

void sub_1BAF3F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BAF8F0D8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  if (swift_dynamicCastClass())
  {
    v11 = *(a5 - 8);
    (*(v11 + 16))(v10, a3, a5);
    (*(v11 + 56))(v10, 0, 1, a5);
    swift_unknownObjectRetain();
    sub_1BAF3E1A4(v10);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BAF8F038();
    sub_1BAF3E4B0();
    v12 = sub_1BAF8F0C8();
    sub_1BAF8E8B8();

    v18 = 0;
    v19 = 0xE000000000000000;
    sub_1BAF8F268();

    v18 = 0xD000000000000013;
    v19 = 0x80000001BAFA28C0;
    v13 = sub_1BAF8F678();
    MEMORY[0x1BFB048C0](v13);

    MEMORY[0x1BFB048C0](46, 0xE100000000000000);
    v14 = sub_1BAF8EC28();

    v17 = sub_1BAF8EC28();
    CreateDiagnosticReport(v14, 0, v17);

    v15 = v17;
  }
}

uint64_t sub_1BAF3F3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v29 = a3;
  v30 = a4;
  v31 = a1;
  v32 = a2;
  v27 = *v6;
  v28 = type metadata accessor for WorkResult();
  v7 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = *(v27 + 80);
  v9 = sub_1BAF8F0D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  v15 = *(v8 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v27 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  sub_1BAF3E0F8(v14);
  if ((*(v15 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v9);
    v25 = objc_autoreleasePoolPush();
    sub_1BAF3F7CC(v29, v19);
    objc_autoreleasePoolPop(v25);
    (*(v15 + 32))(v22, v19, v8);
    (*(*v6 + 168))(v22, v31, v32, v33, v34);
    return (*(v15 + 8))(v22, v8);
  }

  else
  {
    (*(v15 + 32))(v24, v14, v8);
    (*(*v6 + 168))(v24, v31, v32, v33, v34);
    return (*(v15 + 8))(v24, v8);
  }
}

uint64_t sub_1BAF3F7CC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_1BAF8F0D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v32 - v11;
  result = a1(v10);
  if (!v3)
  {
    v15 = v33;
    if (v14 >> 60 == 15)
    {
      sub_1BAF2DB10(&qword_1EBC36808, &qword_1BAF959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BAF95190;
      v17 = *MEMORY[0x1E696A578];
      *(inited + 32) = sub_1BAF8EC38();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v18;
      *(inited + 48) = 0xD000000000000011;
      *(inited + 56) = 0x80000001BAFA2860;
      sub_1BAF328C0(inited);
      swift_setDeallocating();
      sub_1BAF32F04(inited + 32, &unk_1EBC36810, &qword_1BAF95248);
      v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v20 = sub_1BAF8EC28();
      v21 = sub_1BAF8EB78();

      [v19 initWithDomain:v20 code:100 userInfo:v21];

      return swift_willThrow();
    }

    else
    {
      v22 = v8;
      v23 = *(v5 + 88);
      v24 = result;
      v32 = v14;
      static Tools.codableFromBinaryData<A>(_:type:)(result, v14);
      v25 = *(v6 - 8);
      if ((*(v25 + 48))(v12, 1, v6) == 1)
      {
        (*(v22 + 8))(v12, v7);
        sub_1BAF2DB10(&qword_1EBC36808, &qword_1BAF959E0);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1BAF95190;
        v27 = *MEMORY[0x1E696A578];
        *(v26 + 32) = sub_1BAF8EC38();
        *(v26 + 72) = MEMORY[0x1E69E6158];
        *(v26 + 40) = v28;
        *(v26 + 48) = 0xD00000000000001DLL;
        *(v26 + 56) = 0x80000001BAFA2880;
        sub_1BAF328C0(v26);
        swift_setDeallocating();
        sub_1BAF32F04(v26 + 32, &unk_1EBC36810, &qword_1BAF95248);
        v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v30 = sub_1BAF8EC28();
        v31 = sub_1BAF8EB78();

        [v29 initWithDomain:v30 code:101 userInfo:v31];

        swift_willThrow();
        return sub_1BAF3B72C(v24, v32);
      }

      else
      {
        sub_1BAF3B72C(v24, v32);
        return (*(v25 + 32))(v15, v12, v6);
      }
    }
  }

  return result;
}

uint64_t Worker.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = sub_1BAF8F0D8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t Worker.__deallocating_deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = sub_1BAF8F0D8();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1BAF3FDB0()
{
  result = qword_1EBC367F8;
  if (!qword_1EBC367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC367F8);
  }

  return result;
}

id sub_1BAF3FE04(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_1BAF3FE14(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1BAF3FE24(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF3FE48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF3FEA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BAF3FF00(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_1BAF3FF40(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1BAF8F0D8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1BAF40088(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  sub_1BAF3F138(a1, a2, v2 + v5, *(v2 + ((*(*(v2[2] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), v2[2]);
}

uint64_t sub_1BAF400F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF4016C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkOrder();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF401D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BAF4029C(uint64_t a1, void *a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    v5 = a2[3];
    v6 = a2[4];
    sub_1BADC8524(a2, v5);
    (*(v6 + 8))(v5, v6);
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF409E0();
    sub_1BAF8EBF8();

    sub_1BAF8F328();

    sub_1BAF8F328();
    *a3 = 1;
  }

  v7 = a2[3];
  v8 = a2[4];
  sub_1BADC8524(a2, v7);
  v9 = *((*(v8 + 8))(v7, v8) + 16);

  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = a2[3];
      v12 = a2[4];
      result = sub_1BADC8524(a2, v13);
      if (v10 == 0x80000000)
      {
        break;
      }

      v15 = (*(v12 + 88))(v10, v13, v12);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 1280070990;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE400000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1BAF4F124(0, *(v11 + 2) + 1, 1, v11);
      }

      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_1BAF4F124((v19 > 1), v20 + 1, 1, v11);
      }

      ++v10;
      *(v11 + 2) = v20 + 1;
      v21 = &v11[16 * v20];
      *(v21 + 4) = v17;
      *(v21 + 5) = v18;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF409E0();
    sub_1BAF8EBF8();

    sub_1BAF8F328();

    return sub_1BAF8F328();
  }

  return result;
}

void *sub_1BAF40560(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  return sub_1BAF4029C(a1, a2, *(v2 + 32));
}

uint64_t sub_1BAF40580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t *, uint64_t *))
{
  v11 = sub_1BAF5F9DC(a1, a2, a3);
  if (v7)
  {
    return v6;
  }

  v12 = v11;
  [v11[4] lock];
  v27 = a4;
  v28 = a5 & 1;
  v13 = *(v12 + 24);
  if (v13)
  {
    while (1)
    {
      v14 = sqlite3_step(v13);
      *(v12 + 16) = v14;
      if (v14 != 100)
      {
        break;
      }

      v25 = type metadata accessor for DatabaseCursorInternal();
      v26 = &off_1F38F6DD0;
      v23 = v12;

      a6(&v27, &v23);
      sub_1BADC5BE0(&v23);
      v13 = *(v12 + 24);
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    if (!*(v12 + 24))
    {
      goto LABEL_10;
    }

    sqlite3_finalize(*(v12 + 24));
    *(v12 + 24) = 0;
  }

LABEL_9:
  v14 = *(v12 + 16);
LABEL_10:
  if (v14 == 101)
  {
    v6 = v27;
  }

  else
  {
    sub_1BAF8F038();
    v15 = *(v6 + 16);
    sub_1BAF2DB10(&unk_1EBC36CA0, &unk_1BAF955A0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1BAF95190;
    v17 = *(v12 + 16);
    v18 = MEMORY[0x1E69E7358];
    *(v16 + 56) = MEMORY[0x1E69E72F0];
    *(v16 + 64) = v18;
    *(v16 + 32) = v17;
    sub_1BAF8E8B8();

    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1BAF8F268();

    v23 = 0xD00000000000001BLL;
    v24 = 0x80000001BAFA2900;
    LODWORD(v29) = *(v12 + 16);
    v19 = sub_1BAF8F478();
    MEMORY[0x1BFB048C0](v19);

    v6 = v23;
    v20 = v24;
    sub_1BAF4098C();
    swift_allocError();
    *v21 = v6;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0;
    swift_willThrow();
  }

  [*(v12 + 32) unlock];

  return v6;
}

unint64_t sub_1BAF4098C()
{
  result = qword_1EBC36888;
  if (!qword_1EBC36888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36888);
  }

  return result;
}

unint64_t sub_1BAF409E0()
{
  result = qword_1EBC36898;
  if (!qword_1EBC36898)
  {
    sub_1BAF2F048(&qword_1EBC367E0, &qword_1BAF956D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36898);
  }

  return result;
}

uint64_t Territory.country.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Territory.administrativeArea.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void __swiftcall Territory.init(country:administrativeArea:)(APFoundation::Territory *__return_ptr retstr, APFoundation::CountryCode country, APFoundation::CountrySubdivisionCode_optional administrativeArea)
{
  v3 = *(country.value._countAndFlagsBits + 8);
  retstr->country.value._countAndFlagsBits = *country.value._countAndFlagsBits;
  retstr->country.value._object = v3;
  retstr->administrativeArea.value = *country.value._object;
}

uint64_t Territory.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAF8ED18();
  if (!v4)
  {
    return sub_1BAF8F5C8();
  }

  sub_1BAF8F5C8();

  return sub_1BAF8ED18();
}

uint64_t Territory.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v4)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF40B7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v4)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF40C08()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAF8ED18();
  if (!v4)
  {
    return sub_1BAF8F5C8();
  }

  sub_1BAF8F5C8();

  return sub_1BAF8ED18();
}

uint64_t sub_1BAF40C84()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1BAF8F5A8();
  sub_1BAF8ED18();
  sub_1BAF8F5C8();
  if (v4)
  {
    sub_1BAF8ED18();
  }

  return sub_1BAF8F5E8();
}

uint64_t Territory.debugDescription.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
    sub_1BAF8F318();
    MEMORY[0x1BFB048C0](47, 0xE100000000000000);
    sub_1BAF8F318();
  }

  else
  {
    v3 = *v0;
    v4 = v0[1];
    sub_1BAF8F318();
    MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  }

  return 0;
}

BOOL _s12APFoundation9TerritoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        return v9 || (sub_1BAF8F4C8() & 1) != 0;
      }
    }

    else if (!v4)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1BAF40EE0()
{
  result = qword_1EBC368A0;
  if (!qword_1EBC368A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368A0);
  }

  return result;
}

__n128 sub_1BAF40F34(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BAF40F40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF40F88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static APTestingRigUtil.subscribeFor<A>(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BAF8EC28();
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a6;
    v13[4] = a3;
    v13[5] = a4;
    v15[4] = sub_1BAF414C8;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1BAF41704;
    v15[3] = &unk_1F38F5460;
    v14 = _Block_copy(v15);

    [v11 subscribeForMessage:v12 handler:v14];
    _Block_release(v14);
  }
}

void sub_1BAF41120(void *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a5;
  v31 = a4;
  v32 = a3;
  v33 = a2;
  v10 = sub_1BAF8F0D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2])
  {
    v21 = a1[4];
    v20 = a1[5];
  }

  else
  {
    v20 = 0;
  }

  fromJSON<A>(_:)(v20, a6, a7, v15);

  if ((*(v16 + 48))(v15, 1, a6) == 1)
  {
    (*(v11 + 8))(v15, v10);
    sub_1BAF41BEC();
    v22 = swift_allocError();
    *v23 = 0xD00000000000001DLL;
    v23[1] = 0x80000001BAFA2970;
    swift_willThrow();
    v35 = v22;
    v25 = v22;
    sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
    if (swift_dynamicCast())
    {

      strcpy(v34, "Parse Error: ");
      HIWORD(v34[1]) = -4864;
      MEMORY[0x1BFB048C0](v34[6], v34[7]);

      (v33)(v34[0], v34[1]);

      v26 = v35;
    }

    else
    {

      swift_getErrorValue();
      sub_1BAF8F548();
      v27 = sub_1BAF8ECD8();
      v29 = v28;

      (v33)(v27, v29);

      v26 = v22;
    }
  }

  else
  {
    (*(v16 + 32))(v19, v15, a6);
    v24 = v31(v19);
    v33(v24);

    (*(v16 + 8))(v19, a6);
  }
}

uint64_t fromJSON<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = sub_1BAF8EC78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  v21[1] = a3;
  v14 = sub_1BAF8E368();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1BAF8E358();
  sub_1BAF8EC68();
  v17 = sub_1BAF8EC48();
  v19 = v18;
  (*(v10 + 8))(v13, v9);
  if (v19 >> 60 == 15)
  {
    (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    sub_1BAF8E348();
    if (!v4)
    {
      (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
    }

    sub_1BAF3B72C(v17, v19);
  }
}

uint64_t sub_1BAF41704(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_1BAF8EEA8();
  v7 = _Block_copy(a3);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v5(v6, sub_1BAF41BE4, v8);
}

uint64_t sub_1BAF417C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BAF417E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = sub_1BAF8EC28();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void static APTestingRigUtil.subscribeFor(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BAF8EC28();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
    v11[4] = sub_1BAF41A54;
    v11[5] = v9;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1BAF41704;
    v11[3] = &unk_1F38F54B0;
    v10 = _Block_copy(v11);

    [v7 subscribeForMessage:v8 handler:v10];
    _Block_release(v10);
  }
}

uint64_t sub_1BAF41970(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  a2(v5);
}

__n128 sub_1BAF41A5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BAF41A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF41AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APTestingRigUtil(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for APTestingRigUtil(_WORD *result, int a2, int a3)
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

unint64_t sub_1BAF41BEC()
{
  result = qword_1EBC368A8;
  if (!qword_1EBC368A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368A8);
  }

  return result;
}

APFoundation::CohortCandidate __swiftcall RandomCohortCandidateSource.candidate()()
{
  v2 = v1;
  sub_1BAF41D10(v0, 0.0, 1.0);
  if (result.value >= 0.0 && result.value < 1.0)
  {
    *v2 = result.value;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF41CC4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = sub_1BAF41D10(a1, 0.0, 1.0);
  if (v4 >= 0.0 && v4 < 1.0)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF41D10(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1BFB06170](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1BAF41D10(v6, a2, a3);
  }

  return result;
}

uint64_t ExpirationDate.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BAF8E728();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ExpirationDate.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BAF8E728();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

BOOL ExpirationDate.isExpired(at:)()
{
  sub_1BAF8E728();
  sub_1BAF41F30();
  return (sub_1BAF8EC08() & 1) == 0;
}

unint64_t sub_1BAF41F30()
{
  result = qword_1EBC368B0;
  if (!qword_1EBC368B0)
  {
    sub_1BAF8E728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC368B0);
  }

  return result;
}

uint64_t ExpirationDate.isValid(at:)()
{
  sub_1BAF8E728();
  sub_1BAF41F30();
  return sub_1BAF8EC08() & 1;
}

uint64_t type metadata accessor for ExpirationDate()
{
  result = qword_1EDBA33C0;
  if (!qword_1EDBA33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF42060()
{
  result = sub_1BAF8E728();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF420CC()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368B8);
  sub_1BADC4BA8(v0, qword_1EBC368B8);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF42158()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368D0);
  sub_1BADC4BA8(v0, qword_1EBC368D0);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF421E0()
{
  v0 = sub_1BAF8E3E8();
  sub_1BADC4B44(v0, qword_1EBC368E8);
  sub_1BADC4BA8(v0, qword_1EBC368E8);
  return sub_1BAF8E3A8();
}

uint64_t sub_1BAF42268@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAF8E3E8();
  v6 = sub_1BADC4BA8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id static NSUserDefaults.generalPurposeSuite.getter()
{
  if (qword_1EDBA4040 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBA4048;

  return v1;
}

uint64_t PrimitiveCountrySubdivisionCodeSource.dataSource.setter(__int128 *a1)
{
  swift_beginAccess();
  sub_1BADC5BE0((v1 + 16));
  sub_1BADC5B38(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t PrimitiveCountrySubdivisionCodeSource.__allocating_init(dataSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t PrimitiveCountrySubdivisionCodeSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::String __swiftcall Date.utcFormatted()()
{
  v0 = sub_1BAF8E4E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31[0] = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BAF8E848();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1BAF8E7C8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1BAF8E888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF2DB10(&qword_1EBC36900, &qword_1BAF95C98);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v31 - v14;
  v16 = sub_1BAF2DB10(&qword_1EBC36908, &qword_1BAF95CA0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v31 - v18;
  v20 = sub_1BAF8E658();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BAF8E638();
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  v26 = sub_1BAF8E628();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v27 = sub_1BADC4BA8(v7, qword_1EDBA3868);
  (*(v8 + 16))(v11, v27, v7);
  sub_1BAF8E7A8();
  sub_1BAF8E818();
  sub_1BAF8E4D8();
  sub_1BAF8E648();
  sub_1BAF42A98();
  sub_1BAF8E708();
  (*(v21 + 8))(v24, v20);
  v28 = v31[2];
  v29 = v31[3];
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

unint64_t sub_1BAF42A98()
{
  result = qword_1EBC36910;
  if (!qword_1EBC36910)
  {
    sub_1BAF8E658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36910);
  }

  return result;
}

uint64_t sub_1BAF42AF0()
{
  v0 = sub_1BAF2DB10(&qword_1EBC36CC0, &qword_1BAF955D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1BAF8E4F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8E598();
  sub_1BADC4B44(v9, qword_1EDBA3C90);
  sub_1BADC4BA8(v9, qword_1EDBA3C90);
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F58], v4);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  return sub_1BAF8E568();
}

uint64_t sub_1BAF42C9C()
{
  v0 = sub_1BAF8E4F8();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAF8E598();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v18 - v12;
  sub_1BADC4B44(v11, qword_1EDBA3C48);
  v21 = sub_1BADC4BA8(v5, qword_1EDBA3C48);
  if (qword_1EDBA3C88 != -1)
  {
    swift_once();
  }

  v14 = sub_1BADC4BA8(v5, qword_1EDBA3C90);
  (*(v6 + 16))(v10, v14, v5);
  v22 = 0xD00000000000001DLL;
  v23 = 0x80000001BAFA2A80;
  v20 = *MEMORY[0x1E6968F70];
  v19 = v1[13];
  v19(v4);
  v18 = sub_1BAF2DB58();
  sub_1BAF8E588();
  v15 = v1[1];
  v15(v4, v0);
  v16 = *(v6 + 8);
  v16(v10, v5);
  v22 = 0x646572616873;
  v23 = 0xE600000000000000;
  (v19)(v4, v20, v0);
  sub_1BAF8E588();
  v15(v4, v0);
  return (v16)(v13, v5);
}

uint64_t sub_1BAF42F8C()
{
  v0 = sub_1BAF8E4F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAF8E598();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BADC4B44(v8, qword_1EDBA3C70);
  sub_1BADC4BA8(v5, qword_1EDBA3C70);
  if (qword_1EDBA3C40 != -1)
  {
    swift_once();
  }

  v11 = sub_1BADC4BA8(v5, qword_1EDBA3C48);
  (*(v6 + 16))(v10, v11, v5);
  v13[0] = 7105633;
  v13[1] = 0xE300000000000000;
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F70], v0);
  sub_1BAF2DB58();
  sub_1BAF8E588();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1BAF431D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1BAF8E4F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8E598();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BADC4B44(v13, a2);
  sub_1BADC4BA8(v10, a2);
  if (qword_1EDBA3C68 != -1)
  {
    swift_once();
  }

  v16 = sub_1BADC4BA8(v10, qword_1EDBA3C70);
  (*(v11 + 16))(v15, v16, v10);
  v18[0] = a3;
  v18[1] = 0xE200000000000000;
  (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v5);
  sub_1BAF2DB58();
  sub_1BAF8E588();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1BAF43458@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAF8E598();
  v6 = sub_1BADC4BA8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Day.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAF8E498();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v14 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v8, v14, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v15 = sub_1BAF8E888();
  sub_1BADC4BA8(v15, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v8, v4);
  result = sub_1BAF8E468();
  if (v17)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = result;
  result = sub_1BAF8E478();
  if (v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  result = sub_1BAF8E448();
  if ((v21 & 1) == 0)
  {
    v22 = result;
    v23 = sub_1BAF8E728();
    (*(*(v23 - 8) + 8))(a1, v23);
    result = (*(v10 + 8))(v13, v9);
    *a2 = v18;
    a2[1] = v20;
    a2[2] = v22;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t Day.startOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_1BAF2DB10(&qword_1EBC36938, &qword_1BAF95CD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = sub_1BAF8E498();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAF8E848();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v32 - v21;
  v23 = v1[1];
  v35 = *v1;
  v36 = v23;
  v34 = v1[2];
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v24 = sub_1BADC4BA8(v14, qword_1EDBA3888);
  swift_beginAccess();
  v25 = *(v15 + 16);
  v25(v18, v24, v14);
  v25(v9, v24, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v26 = sub_1BAF8E888();
  v27 = sub_1BADC4BA8(v26, qword_1EDBA3868);
  v28 = *(v26 - 8);
  (*(v28 + 16))(v5, v27, v26);
  (*(v28 + 56))(v5, 0, 1, v26);
  sub_1BAF8E488();
  sub_1BAF8E828();
  (*(v37 + 8))(v13, v38);
  (*(v15 + 8))(v18, v14);
  v29 = sub_1BAF8E728();
  v30 = *(v29 - 8);
  result = (*(v30 + 48))(v22, 1, v29);
  if (result != 1)
  {
    return (*(v30 + 32))(v33, v22, v29);
  }

  __break(1u);
  return result;
}

APFoundation::Day __swiftcall Day.init(year:month:day:)(Swift::Int year, Swift::Int month, Swift::Int day)
{
  *v3 = year;
  v3[1] = month;
  v3[2] = day;
  result.day = day;
  result.month = month;
  result.year = year;
  return result;
}

Swift::Int __swiftcall Day.distanceTo(_:)(APFoundation::Day a1)
{
  year = a1.year;
  v3 = sub_1BAF8E848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8E498();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF8E728();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  v34 = *year;
  v19 = *(year + 16);
  v20 = *(v1 + 2);
  v39 = *v1;
  v40 = v20;
  Day.startOfDay.getter(&v34 - v17);
  v39 = v34;
  v40 = v19;
  Day.startOfDay.getter(v16);
  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v21 = sub_1BADC4BA8(v3, qword_1EDBA3888);
  swift_beginAccess();
  (*(v4 + 16))(v7, v21, v3);
  sub_1BAF2DB10(&qword_1EBC36940, &qword_1BAF95CD8);
  v22 = sub_1BAF8E838();
  v23 = *(v22 - 8);
  *&v34 = v3;
  v24 = v23;
  v25 = *(v23 + 72);
  v26 = v4;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1BAF95190;
  (*(v24 + 104))(v28 + v27, *MEMORY[0x1E6969A48], v22);
  sub_1BAF445F0(v28);
  swift_setDeallocating();
  (*(v24 + 8))(v28 + v27, v22);
  swift_deallocClassInstance();
  sub_1BAF8E808();

  (*(v26 + 8))(v7, v34);
  v29 = sub_1BAF8E448();
  LOBYTE(v28) = v30;
  (*(v37 + 8))(v11, v38);
  v31 = v36;
  v32 = *(v35 + 8);
  v32(v16, v36);
  v32(v18, v31);
  if (v28)
  {
    return 0;
  }

  else
  {
    return v29;
  }
}

uint64_t Day.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB05110](*v0);
  MEMORY[0x1BFB05110](v1);
  return MEMORY[0x1BFB05110](v2);
}

uint64_t Day.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF44194()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF44200()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1BFB05110](*v0);
  MEMORY[0x1BFB05110](v1);
  return MEMORY[0x1BFB05110](v2);
}

uint64_t sub_1BAF44248()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  MEMORY[0x1BFB05110](v2);
  MEMORY[0x1BFB05110](v3);
  return sub_1BAF8F5E8();
}

BOOL static Day.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = v3 == v5;
  v7 = v3 < v5;
  if (v6)
  {
    v7 = a1[2] < a2[2];
  }

  v6 = v2 == v4;
  v8 = v2 < v4;
  if (v6)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

BOOL sub_1BAF44314(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    return v5;
  }

  else
  {
    return *a1 < *a2;
  }
}

BOOL sub_1BAF4434C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a2 < *a1;
  }

  return !v6;
}

BOOL sub_1BAF44388(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    v5 = a1[2] < a2[2];
  }

  if (*a1 == *a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *a1 < *a2;
  }

  return !v6;
}

BOOL sub_1BAF443C4(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    v5 = a2[2] < a1[2];
  }

  if (*a2 == *a1)
  {
    return v5;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t Day.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v6 = v0[1];
  v7 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  v3 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v3);

  MEMORY[0x1BFB048C0](47, 0xE100000000000000);
  v4 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v4);

  return v7;
}

uint64_t sub_1BAF444D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1BAF2DB10(&qword_1EBC36950, &qword_1BAF95DF0);
    v3 = sub_1BAF8F228();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_1BAF8F598();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1BAF445F0(uint64_t a1)
{
  v2 = sub_1BAF8E838();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1BAF2DB10(&qword_1EBC36958, &unk_1BAF95DF8);
    v10 = sub_1BAF8F228();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1BAF449AC(&qword_1EBC36960);
      v18 = sub_1BAF8EBB8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1BAF449AC(&qword_1EBC36968);
          v25 = sub_1BAF8EC18();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1BAF448E8()
{
  result = qword_1EBC36948;
  if (!qword_1EBC36948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36948);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Day(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Day(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1BAF449AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BAF8E838();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static Dictionary<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1BAF44AE4(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44AE4(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  sub_1BAF44DB0(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  if (!a1)
  {
    return 0;
  }

  sub_1BAF44DB0(a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(a2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_1BAF44AE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v2 = sub_1BAF8F3A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1BAF2DB10(&qword_1EBC36978, &qword_1BAF95E08);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BAF32E44(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BAF32E44(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1BAF8F1D8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1BAF32E44(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1BAF44DB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC36970, &qword_1BAF95230);
    v2 = sub_1BAF8F3A8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1BAF45388(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1BAF32E44(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1BAF32E44(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1BAF32E44(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1BAF8F1D8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1BAF32E44(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL static Optional<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      sub_1BAF44AE4(a1);
      v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v4 = sub_1BAF8EB78();

      v5 = [v3 initWithDictionary_];

      sub_1BAF44AE4(a2);
      v6 = sub_1BAF8EB78();

      v7 = [v5 isEqualToDictionary_];

      return v7;
    }

    return 0;
  }

  return !a2;
}

id static PopulatedDictionary<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1BAF44AE4(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44AE4(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

{
  v2 = *a2;
  sub_1BAF44DB0(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

BOOL static Optional<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      sub_1BAF44AE4(v2);
      v4 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v5 = sub_1BAF8EB78();

      v6 = [v4 initWithDictionary_];

      sub_1BAF44AE4(v3);
      v7 = sub_1BAF8EB78();

      v8 = [v6 isEqualToDictionary_];

      return v8;
    }

    return 0;
  }

  return !v3;
}

{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      sub_1BAF44DB0(v2);
      v4 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v5 = sub_1BAF8EB78();

      v6 = [v4 initWithDictionary_];

      sub_1BAF44DB0(v3);
      v7 = sub_1BAF8EB78();

      v8 = [v6 isEqualToDictionary_];

      return v8;
    }

    return 0;
  }

  return !v3;
}

uint64_t sub_1BAF45388(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

APFoundation::CohortCandidate_optional __swiftcall CohortCandidate.init(_:)(Swift::Double a1)
{
  v2 = a1 < 0.0;
  if (a1 >= 1.0)
  {
    v2 = 1;
  }

  v3 = a1;
  if (v2)
  {
    v3 = 0.0;
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  result.value = *&a1;
  return result;
}

uint64_t static CohortCandidate.randomValue()@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = sub_1BAF41D10(a1, 0.0, 1.0);
  if (v4 >= 0.0 && v4 < 1.0)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Ability.hashValue.getter(char a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1 & 1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF45530()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t sub_1BAF455A4()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF455EC()
{
  result = qword_1EBC36980;
  if (!qword_1EBC36980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Ability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Ability(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static UnknownError.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t _s12APFoundation11CountryCodeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t UnknownError.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1BAF459FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static Passthrough<A>.== infix(_:_:)();
}

uint64_t sub_1BAF45A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BAF45A80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1BAF45BC0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

APFoundation::JWTHeader __swiftcall JWTHeader.init(alg:typ:)(Swift::String alg, Swift::String typ)
{
  *v2 = alg;
  v2[1] = typ;
  result.typ = typ;
  result.alg = alg;
  return result;
}

uint64_t static JWTHeader.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BAF8F4C8();
    }
  }

  return result;
}

uint64_t sub_1BAF45E90()
{
  if (*v0)
  {
    return 7371124;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_1BAF45EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (sub_1BAF8F4C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7371124 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BAF8F4C8();

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

uint64_t sub_1BAF45FA8(uint64_t a1)
{
  v2 = sub_1BAF461B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAF45FE4(uint64_t a1)
{
  v2 = sub_1BAF461B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JWTHeader.encode(to:)(void *a1)
{
  v3 = sub_1BAF2DB10(&qword_1EBC36988, &qword_1BAF96130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF461B4();
  sub_1BAF8F648();
  v16 = 0;
  v12 = v14[3];
  sub_1BAF8F438();
  if (!v12)
  {
    v15 = 1;
    sub_1BAF8F438();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1BAF461B4()
{
  result = qword_1EBC36990;
  if (!qword_1EBC36990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36990);
  }

  return result;
}

uint64_t JWTHeader.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC36998, &qword_1BAF96138);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF461B4();
  sub_1BAF8F628();
  if (v2)
  {
    return sub_1BADC5BE0(a1);
  }

  v21 = 0;
  v11 = sub_1BAF8F3D8();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1BAF8F3D8();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  sub_1BADC5BE0(a1);
}

uint64_t sub_1BAF46438(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BAF8F4C8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BAF8F4C8();
    }
  }

  return result;
}

unint64_t sub_1BAF46500()
{
  result = qword_1EBC369A0;
  if (!qword_1EBC369A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369A0);
  }

  return result;
}

unint64_t sub_1BAF46558()
{
  result = qword_1EBC369A8;
  if (!qword_1EBC369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369A8);
  }

  return result;
}

unint64_t sub_1BAF465B0()
{
  result = qword_1EBC369B0;
  if (!qword_1EBC369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369B0);
  }

  return result;
}

uint64_t PurposeBoundary.hashValue.getter()
{
  v1 = *v0;
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](v1);
  return sub_1BAF8F5E8();
}

uint64_t PurposeConfiguration.debugDescription.getter()
{
  v1 = *v0;
  MEMORY[0x1BFB048C0](0x797261646E756F62, 0xEA0000000000203ALL);
  sub_1BAF8F318();
  return 0;
}

uint64_t sub_1BAF467AC()
{
  v1 = *v0;
  MEMORY[0x1BFB048C0](0x797261646E756F62, 0xEA0000000000203ALL);
  sub_1BAF8F318();
  return 0;
}

uint64_t PurposeBoundary.debugDescription.getter()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

unint64_t sub_1BAF46854()
{
  result = qword_1EBC369B8;
  if (!qword_1EBC369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC369B8);
  }

  return result;
}

uint64_t sub_1BAF468A8()
{
  if (*v0)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_1BAF46900(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = sub_1BAF8EAE8();
      v7 = 0x3438335345;
    }

    else
    {
      v6 = sub_1BAF8EB28();
      v7 = 0x3231355345;
    }
  }

  else
  {
    v6 = sub_1BAF8EAA8();
    v7 = 0x3635325345;
  }

  (*(*(v6 - 8) + 8))(v3);
  return v7;
}

void *JWT.verifySignature(using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = sub_1BAF8EC78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v4[1];
  v14 = *(a2 + 16);
  v45 = *(a2 + 24);
  v46 = v14;
  v15 = type metadata accessor for JWT.Verifier();
  v51 = a1;
  if (v12 == sub_1BAF46900(v15) && v13 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_1BAF8F4C8();

    if ((v17 & 1) == 0)
    {
      sub_1BAF46DB4();
      swift_allocError();
      v19 = 3;
LABEL_12:
      *v18 = v19;
      return swift_willThrow();
    }
  }

  v20 = (v4 + *(a2 + 44));
  v22 = *v20;
  v21 = v20[1];
  v49 = v22;
  v50 = v21;
  v47 = 46;
  v48 = 0xE100000000000000;
  sub_1BAF2DB58();
  result = sub_1BAF8F138();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = result;
  v26 = result[4];
  v25 = result[5];
  v49 = v26;
  v50 = v25;

  result = MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  if (v24[2] < 2uLL)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v44 = v3;
  v27 = v24[6];
  v28 = v24[7];

  MEMORY[0x1BFB048C0](v27, v28);

  sub_1BAF8EC68();
  v29 = sub_1BAF8EC48();
  v31 = v30;

  (*(v8 + 8))(v11, v7);
  if (v31 >> 60 == 15)
  {
    sub_1BAF46DB4();
    swift_allocError();
    v19 = 2;
    goto LABEL_12;
  }

  v32 = (v4 + *(a2 + 40));
  v33 = *v32;
  v34 = v32[1];

  v35 = Data.init(base64URLEncoded:)();
  if (v36 >> 60 == 15)
  {
    sub_1BAF46DB4();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
  }

  else
  {
    v38 = v35;
    v39 = v36;
    v40 = v44;
    v41 = sub_1BAF47554(v35, v36, v29, v31, v51);
    if (!v40 && (v41 & 1) == 0)
    {
      sub_1BAF46DB4();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
    }

    sub_1BAF3B72C(v38, v39);
  }

  return sub_1BAF3B72C(v29, v31);
}

unint64_t sub_1BAF46DB4()
{
  result = qword_1EBC369C0[0];
  if (!qword_1EBC369C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC369C0);
  }

  return result;
}

uint64_t sub_1BAF46E08(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_1BAF8EB38();
      sub_1BAF48414(&qword_1EBC36A88, MEMORY[0x1E6966620]);
      result = sub_1BAF8EA18();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1BAF47474(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966620], &qword_1EBC36A88, MEMORY[0x1E6966620]);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF4702C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_1BAF8EB48();
      sub_1BAF48414(&qword_1EBC36A78, MEMORY[0x1E6966630]);
      result = sub_1BAF8EA18();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1BAF47474(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966630], &qword_1EBC36A78, MEMORY[0x1E6966630]);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF47250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_1BAF8EB58();
      sub_1BAF48414(&qword_1EBC36A60, MEMORY[0x1E6966640]);
      result = sub_1BAF8EA18();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1BAF47474(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x1E6966640], &qword_1EBC36A60, MEMORY[0x1E6966640]);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF47474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_1BAF8E408();
  if (!result || (result = sub_1BAF8E428(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1BAF8E418();
      a5(0);
      sub_1BAF48414(a6, a7);
      return sub_1BAF8EA18();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF47554(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v104 = a5;
  v106 = a3;
  v107 = a4;
  v111 = a2;
  v108 = a1;
  v79 = sub_1BAF8EB08();
  v78 = *(v79 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v100 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8EB58();
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v92 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAF8EA68();
  v98 = *(v10 - 8);
  v99 = v10;
  v11 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BAF8EB28();
  v97 = *(v103 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v95 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BAF8EAC8();
  v76 = *(v77 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v91 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1BAF8EB48();
  v84 = *(v82 - 8);
  v17 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BAF8EA58();
  v89 = *(v90 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v86 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1BAF8EAE8();
  v87 = *(v88 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BAF8EA88();
  v75 = *(v23 - 8);
  v24 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BAF8EB38();
  v80 = *(v26 - 8);
  v27 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v74 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BAF8EA48();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BAF8EAA8();
  v101 = *(v35 - 8);
  v102 = v35;
  v36 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for JWT.Verifier();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v74 - v41;
  (*(v43 + 16))(&v74 - v41, v104, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v45 = v87;
      v46 = v85;
      v47 = v88;
      (*(v87 + 32))(v85, v42, v88);
      sub_1BAF48414(&qword_1EBC36A78, MEMORY[0x1E6966630]);
      v48 = v81;
      v49 = v82;
      sub_1BAF8EA38();
      v51 = v106;
      v50 = v107;
      sub_1BAF3B678(v106, v107);
      v52 = v105;
      sub_1BAF4702C(v51, v50, v48);
      v53 = v52;
      sub_1BAF2DABC(v51, v50);
      v54 = v86;
      sub_1BAF8EA28();
      (*(v84 + 8))(v48, v49);
      v109 = v108;
      v110 = v111;
      sub_1BAF3B678(v108, v111);
      sub_1BAF483C0();
      v55 = v91;
      sub_1BAF8EAB8();
      if (!v52)
      {
        sub_1BAF48414(&qword_1EBC36A80, MEMORY[0x1E6966408]);
        v71 = v90;
        v69 = sub_1BAF8EAD8();
        (*(v76 + 8))(v55, v77);
        (*(v89 + 8))(v54, v71);
        (*(v45 + 8))(v46, v47);
        return v69 & 1;
      }

      (*(v89 + 8))(v54, v90);
      (*(v45 + 8))(v46, v47);
    }

    else
    {
      v60 = v97;
      v61 = v95;
      (*(v97 + 32))(v95, v42, v103);
      sub_1BAF48414(&qword_1EBC36A60, MEMORY[0x1E6966640]);
      v62 = v92;
      v63 = v94;
      sub_1BAF8EA38();
      v65 = v106;
      v64 = v107;
      sub_1BAF3B678(v106, v107);
      v66 = v105;
      sub_1BAF47250(v65, v64, v62);
      v53 = v66;
      sub_1BAF2DABC(v65, v64);
      v67 = v96;
      sub_1BAF8EA28();
      (*(v93 + 8))(v62, v63);
      v109 = v108;
      v110 = v111;
      sub_1BAF3B678(v108, v111);
      sub_1BAF483C0();
      v68 = v100;
      sub_1BAF8EAF8();
      if (!v66)
      {
        sub_1BAF48414(&qword_1EBC36A70, MEMORY[0x1E6966420]);
        v73 = v99;
        v69 = sub_1BAF8EB18();
        (*(v78 + 8))(v68, v79);
        (*(v98 + 8))(v67, v73);
        (*(v60 + 8))(v61, v103);
        return v69 & 1;
      }

      (*(v98 + 8))(v67, v99);
      (*(v60 + 8))(v61, v103);
    }
  }

  else
  {
    v103 = v31;
    v104 = v30;
    (*(v101 + 32))(v38, v42, v102);
    sub_1BAF48414(&qword_1EBC36A88, MEMORY[0x1E6966620]);
    sub_1BAF8EA38();
    v57 = v106;
    v56 = v107;
    sub_1BAF3B678(v106, v107);
    v58 = v105;
    sub_1BAF46E08(v57, v56, v29);
    sub_1BAF2DABC(v57, v56);
    sub_1BAF8EA28();
    (*(v80 + 8))(v29, v26);
    v109 = v108;
    v110 = v111;
    sub_1BAF3B678(v108, v111);
    sub_1BAF483C0();
    v59 = v83;
    sub_1BAF8EA78();
    v53 = v58;
    if (!v58)
    {
      sub_1BAF48414(&qword_1EBC36A90, MEMORY[0x1E69663E0]);
      v72 = v104;
      v69 = sub_1BAF8EA98();
      (*(v75 + 8))(v59, v23);
      (*(v103 + 8))(v34, v72);
      (*(v101 + 8))(v38, v102);
      return v69 & 1;
    }

    (*(v103 + 8))(v34, v104);
    (*(v101 + 8))(v38, v102);
  }

  v69 = 0;
  return v69 & 1;
}

void sub_1BAF48298()
{
  sub_1BAF48374(319, &qword_1EBC36A48, MEMORY[0x1E6966570]);
  if (v0 <= 0x3F)
  {
    sub_1BAF48374(319, &qword_1EBC36A50, MEMORY[0x1E69665D8]);
    if (v1 <= 0x3F)
    {
      sub_1BAF48374(319, &qword_1EBC36A58, MEMORY[0x1E6966610]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BAF48374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BAF483C0()
{
  result = qword_1EBC36A68;
  if (!qword_1EBC36A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36A68);
  }

  return result;
}

uint64_t sub_1BAF48414(unint64_t *a1, void (*a2)(uint64_t))
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

APFoundation::IntBucketConfiguration __swiftcall IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(Swift::Int unknownBucketName, Swift::OpaquePointer discreteBuckets, Swift::OpaquePointer classifiedBuckets)
{
  v3->_rawValue = unknownBucketName;
  v3[1]._rawValue = discreteBuckets._rawValue;
  v3[2]._rawValue = classifiedBuckets._rawValue;
  result.classifiedBuckets = classifiedBuckets;
  result.discreteBuckets = discreteBuckets;
  result.unknownBucketName = unknownBucketName;
  return result;
}

uint64_t static IntBucketConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1BAF3D000(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BAF3D154(v3, v2);
}

uint64_t sub_1BAF484E4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a1[2];
  if ((sub_1BAF3D000(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  return sub_1BAF3D154(v3, v2);
}

uint64_t sub_1BAF4854C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_1BAF8F598();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

APFoundation::ClassifiedIntBucket __swiftcall ClassifiedIntBucket.init(name:contents:)(Swift::Int name, Swift::OpaquePointer contents)
{
  v2->_rawValue = name;
  v2[1]._rawValue = contents._rawValue;
  result.contents = contents;
  result.name = name;
  return result;
}

uint64_t static ClassifiedIntBucket.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BAF3D000(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BAF486E0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_1BAF3D000(a1[1], a2[1]);
  }

  else
  {
    return 0;
  }
}

BOOL _s12APFoundation17IntBucketContentsO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    v10 = *a1;
    if ((*(a2 + 16) & 1) == 0)
    {
      v11 = sub_1BAF4854C(v10, *a2);
      sub_1BAF3D694(v6, v5, 0);
      sub_1BAF3D694(v3, v2, 0);
      sub_1BAF3D688(v3, v2, 0);
      sub_1BAF3D688(v6, v5, 0);
      return v11 & 1;
    }

LABEL_11:
    sub_1BAF3D694(v6, v5, v7);
    sub_1BAF3D688(v3, v2, v4);
    sub_1BAF3D688(v6, v5, v7);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  sub_1BAF3D688(*a1, v2, 1);
  sub_1BAF3D688(v6, v5, 1);
  return v3 == v6 && v2 == v5;
}

uint64_t sub_1BAF4880C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BAF48854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1BAF488B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BAF488C4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BAF4890C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t JSONIntBucketConfigurationStore.__allocating_init(jsonSource:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BADC5B38(a1, v4 + 16);
  sub_1BADC5B38(a2, v4 + 56);
  return v4;
}

uint64_t JSONIntBucketConfigurationStore.init(jsonSource:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_1BADC5B38(a1, v2 + 16);
  sub_1BADC5B38(a2, v2 + 56);
  return v2;
}

uint64_t JSONIntBucketConfigurationStore.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));
  return v0;
}

uint64_t JSONIntBucketConfigurationStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));

  return swift_deallocClassInstance();
}

APFoundation::IntBucketConfiguration __swiftcall JSONIntBucketConfigurationStore.configuration()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  if (v5 && (sub_1BAF597C0(v5, &v13), v6 = , (v9 = v14) != 0))
  {
    v10 = v15;
    *v2 = v13;
    v2[1] = v9;
    v2[2] = v10;
  }

  else
  {
    v11 = v1[10];
    v12 = v1[11];
    sub_1BADC8524(v1 + 7, v11);
    v6 = (*(v12 + 8))(v11, v12);
  }

  result.classifiedBuckets._rawValue = v8;
  result.discreteBuckets._rawValue = v7;
  result.unknownBucketName = v6;
  return result;
}

uint64_t DebugFileTextStream.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DebugFileTextStream() + 20);
  v4 = sub_1BAF8E598();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DebugFileTextStream()
{
  result = qword_1EBC36AA0;
  if (!qword_1EBC36AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BAF48C88@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1BAF8E598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for DebugFileTextStream();
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v40 = v11;
  v16 = *(v11 + 20);
  v17 = *(v4 + 16);
  v42 = v14;
  v38 = v16;
  v17(&v14[v16], a1, v3);
  sub_1BAF8E558();
  v18 = sub_1BAF8EC28();

  v43 = v15;
  LOBYTE(v11) = [v15 fileExistsAtPath_];

  if (v11 & 1) != 0 || (sub_1BAF8E558(), v19 = sub_1BAF8EC28(), , v20 = [v43 createFileAtPath:v19 contents:0 attributes:0], v19, (v20))
  {
    sub_1BAF30DFC(0, &qword_1EBC36AB0, 0x1E696AC00);
    v17(v8, a1, v3);
    v21 = sub_1BAF492D0(v8);
    v22 = v42;
    *v42 = v21;
    v23 = v21;
    sub_1BAF8F008();

    (*(v4 + 8))(a1, v3);
    v34 = v41;
    sub_1BAF49860(v22, v41);
    (*(v39 + 56))(v34, 0, 1, v40);
    return sub_1BAF498C4(v22);
  }

  else
  {
    v24 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v25 = sub_1BAF8F0C8();
    v17(v10, a1, v3);
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v37 = v24;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44 = v28;
      *v27 = 136315138;
      v36 = sub_1BAF8E558();
      v30 = v29;
      v31 = *(v4 + 8);
      v31(v10, v3);
      v32 = sub_1BAF49CF8(v36, v30, &v44);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1BADC1000, v25, v37, "Failed to create DebugFileTextStream at %s", v27, 0xCu);
      sub_1BADC5BE0(v28);
      MEMORY[0x1BFB06160](v28, -1, -1);
      MEMORY[0x1BFB06160](v27, -1, -1);

      v33 = a1;
    }

    else
    {

      v31 = *(v4 + 8);
      v31(a1, v3);
      v33 = v10;
    }

    v31(v33, v3);
    v31(&v42[v38], v3);
    return (*(v39 + 56))(v41, 1, 1, v40);
  }
}

id sub_1BAF492D0(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BAF8E518();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_1BAF8E598();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_1BAF8E4C8();

    swift_willThrow();
    v9 = sub_1BAF8E598();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

Swift::Void __swiftcall DebugFileTextStream.write(_:)(Swift::String a1)
{
  v2 = sub_1BAF8EC78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8EC68();
  v7 = sub_1BAF8EC48();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 != 15)
  {
    v10 = *v1;
    v11 = sub_1BAF8E5D8();
    [v10 writeData_];

    sub_1BAF3B72C(v7, v9);
  }
}

Swift::Void __swiftcall DebugFileTextStream.close()()
{
  v1 = v0;
  v27[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for DebugFileTextStream();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v27[0] = 0;
  v7 = [v6 closeAndReturnError_];
  v8 = v27[0];
  if (v7)
  {
    v9 = *MEMORY[0x1E69E9840];

    v10 = v8;
  }

  else
  {
    v26 = v27[0];
    v11 = v27[0];
    v12 = sub_1BAF8E4C8();

    swift_willThrow();
    v13 = sub_1BAF8F038();
    sub_1BAF30DFC(0, &qword_1EDBA38D0, 0x1E69E9BF8);
    v14 = sub_1BAF8F0C8();
    sub_1BAF49860(v1, v5);
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27[0] = v17;
      *v15 = 136315394;
      v18 = *(v2 + 20);
      sub_1BAF8E598();
      sub_1BAF49CA0();
      v19 = sub_1BAF8F478();
      v21 = v20;
      sub_1BAF498C4(v5);
      v22 = sub_1BAF49CF8(v19, v21, v27);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2112;
      v23 = v12;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v24;
      *v16 = v24;
      _os_log_impl(&dword_1BADC1000, v14, v13, "Can't close DebugFileTextStream %s file. %@", v15, 0x16u);
      sub_1BAF49DC4(v16);
      MEMORY[0x1BFB06160](v16, -1, -1);
      sub_1BADC5BE0(v17);
      MEMORY[0x1BFB06160](v17, -1, -1);
      MEMORY[0x1BFB06160](v15, -1, -1);
    }

    else
    {

      sub_1BAF498C4(v5);
    }

    v25 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1BAF49860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugFileTextStream();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF498C4(uint64_t a1)
{
  v2 = type metadata accessor for DebugFileTextStream();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DebugFileTextStream.createTemporaryTextStream()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BAF8E788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BAF8E598();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 temporaryDirectory];

  sub_1BAF8E548();
  sub_1BAF8E778();
  sub_1BAF8E748();
  (*(v3 + 8))(v6, v2);
  sub_1BAF8E528();

  v17 = *(v8 + 8);
  v17(v12, v7);
  (*(v8 + 16))(v12, v14, v7);
  sub_1BAF48C88(v12, a1);
  return (v17)(v14, v7);
}

uint64_t sub_1BAF49B6C()
{
  v1 = sub_1BAF8EC78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8EC68();
  v6 = sub_1BAF8EC48();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  if (v8 >> 60 != 15)
  {
    v10 = *v0;
    v11 = sub_1BAF8E5D8();
    [v10 writeData_];

    return sub_1BAF3B72C(v6, v8);
  }

  return result;
}

unint64_t sub_1BAF49CA0()
{
  result = qword_1EBC36A98;
  if (!qword_1EBC36A98)
  {
    sub_1BAF8E598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36A98);
  }

  return result;
}

uint64_t sub_1BAF49CF8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BAF49EE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BAF45388(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1BADC5BE0(v11);
  return v7;
}

uint64_t sub_1BAF49DC4(uint64_t a1)
{
  v2 = sub_1BAF2DB10(&qword_1EBC36800, &qword_1BAF96670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BAF49E54()
{
  result = sub_1BAF30DFC(319, &qword_1EBC36AB0, 0x1E696AC00);
  if (v1 <= 0x3F)
  {
    result = sub_1BAF8E598();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BAF49EE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BAF49FF4(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_1BAF8F2B8();
    a6 = v11;
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

uint64_t sub_1BAF49FF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BAF4A040(a1, a2);
  sub_1BAF4A170(&unk_1F38F4A80);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BAF4A040(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BAF2DC14(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BAF8F2B8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BAF8ED98();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BAF2DC14(v10, 0);
        result = sub_1BAF8F238();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1BAF4A170(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1BAF4A25C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BAF4A25C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t UserDefaultsKeyValueStore.__allocating_init(userDefaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool_optional __swiftcall UserDefaultsKeyValueStore.BOOLFor(key:)(Swift::String key)
{
  v2 = *(v1 + 16);
  v3 = sub_1BAF8EC28();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1BAF8F168();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1BADC5C2C(v9);
    return 2;
  }
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(double:forKey:)(Swift::Double a1, Swift::String forKey)
{
  v4 = *(v2 + 16);
  v5 = sub_1BAF8EC28();
  [v4 setDouble:v5 forKey:a1];
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(BOOL:forKey:)(Swift::Bool a1, Swift::String forKey)
{
  v4 = *(v2 + 16);
  v5 = sub_1BAF8EC28();
  [v4 setBool:a1 forKey:v5];
}

Swift::Void __swiftcall UserDefaultsKeyValueStore.set(string:forKey:)(Swift::String string, Swift::String forKey)
{
  v3 = *(v2 + 16);
  v4 = sub_1BAF8EC28();
  v5 = sub_1BAF8EC28();
  [v3 setObject:v4 forKey:v5];
}

uint64_t UserDefaultsKeyValueStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1BAF4A604(double a1)
{
  v3 = *(*v1 + 16);
  v4 = sub_1BAF8EC28();
  [v3 setDouble:v4 forKey:a1];
}

void sub_1BAF4A670(char a1)
{
  v3 = *(*v1 + 16);
  v4 = sub_1BAF8EC28();
  [v3 setBool:a1 & 1 forKey:v4];
}

void sub_1BAF4A6DC()
{
  v1 = *(*v0 + 16);
  v2 = sub_1BAF8EC28();
  v3 = sub_1BAF8EC28();
  [v1 setObject:v2 forKey:v3];
}

APFoundation::Day __swiftcall APClock.today()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1BAF8E848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1BAF8E498();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BAF8E728();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v2 now];
  sub_1BAF8E6E8();

  if (qword_1EDBA3880 != -1)
  {
    swift_once();
  }

  v19 = sub_1BADC4BA8(v4, qword_1EDBA3888);
  swift_beginAccess();
  (*(v5 + 16))(v8, v19, v4);
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v20 = sub_1BAF8E888();
  sub_1BADC4BA8(v20, qword_1EDBA3868);
  sub_1BAF8E7F8();
  (*(v5 + 8))(v8, v4);
  v21 = sub_1BAF8E468();
  if (v22)
  {
    __break(1u);
    goto LABEL_10;
  }

  v24 = v21;
  v21 = sub_1BAF8E478();
  if (v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v21;
  v21 = sub_1BAF8E448();
  if (v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = v21;
  (*(v9 + 8))(v12, v27);
  v21 = (*(v14 + 8))(v17, v13);
  *v3 = v24;
  v3[1] = v25;
  v3[2] = v26;
LABEL_12:
  result.day = v23;
  result.month = v22;
  result.year = v21;
  return result;
}

id sub_1BAF4AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BADC880C();
  v7[3] = a2;
  v7[0] = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, a3, v7);
}

id Int32.dbParam.getter(int a1)
{
  sub_1BADC880C();
  v3[3] = MEMORY[0x1E69E72F0];
  LODWORD(v3[0]) = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, 7, v3);
}

id sub_1BAF4ABE4(uint64_t a1)
{
  v3 = *v1;
  sub_1BADC880C();
  v5[3] = a1;
  LODWORD(v5[0]) = v3;
  return sub_1BADC85C4(0, 0xE000000000000000, 7, v5);
}

id String.dbParam.getter(uint64_t a1, uint64_t a2)
{
  sub_1BADC880C();
  v5[3] = MEMORY[0x1E69E6158];
  v5[0] = a1;
  v5[1] = a2;

  return sub_1BADC85C4(0, 0xE000000000000000, 3, v5);
}

id sub_1BAF4ACB0(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1BADC880C();
  v6[3] = a1;
  v6[0] = v4;
  v6[1] = v3;

  return sub_1BADC85C4(0, 0xE000000000000000, 3, v6);
}

id Double.dbParam.getter(double a1)
{
  sub_1BADC880C();
  v3[3] = MEMORY[0x1E69E63B0];
  *v3 = a1;
  return sub_1BADC85C4(0, 0xE000000000000000, 2, v3);
}

id Date.dbParam.getter()
{
  sub_1BADC880C();
  v1 = sub_1BAF8E728();
  v4[3] = v1;
  v2 = sub_1BAF3BAAC(v4);
  (*(*(v1 - 8) + 16))(v2, v0, v1);
  return sub_1BADC85C4(0, 0xE000000000000000, 4, v4);
}

id sub_1BAF4AE10(uint64_t a1)
{
  sub_1BADC880C();
  v5[3] = a1;
  v3 = sub_1BAF3BAAC(v5);
  (*(*(a1 - 8) + 16))(v3, v1, a1);
  return sub_1BADC85C4(0, 0xE000000000000000, 4, v5);
}

id Bool.dbParam.getter(char a1)
{
  v2[3] = MEMORY[0x1E69E6530];
  v2[0] = a1 & 1;
  sub_1BADC880C();
  return sub_1BADC85C4(0, 0xE000000000000000, 0, v2);
}

id sub_1BAF4AEF8()
{
  v1 = *v0;
  v3[3] = MEMORY[0x1E69E6530];
  v3[0] = v1;
  sub_1BADC880C();
  return sub_1BADC85C4(0, 0xE000000000000000, 0, v3);
}

id UUID.dbParam.getter()
{
  sub_1BADC880C();
  v0 = sub_1BAF8E748();
  v3[3] = MEMORY[0x1E69E6158];
  v3[0] = v0;
  v3[1] = v1;
  return sub_1BADC85C4(0, 0xE000000000000000, 3, v3);
}

id sub_1BAF4AFAC()
{
  sub_1BADC880C();
  v0 = sub_1BAF8E748();
  v3[3] = MEMORY[0x1E69E6158];
  v3[0] = v0;
  v3[1] = v1;
  return sub_1BADC85C4(0, 0xE000000000000000, 3, v3);
}

id Data.dbParam.getter(uint64_t a1, unint64_t a2)
{
  sub_1BADC880C();
  v5[3] = MEMORY[0x1E6969080];
  v5[0] = a1;
  v5[1] = a2;
  sub_1BAF3B678(a1, a2);
  return sub_1BADC85C4(0, 0xE000000000000000, 6, v5);
}

id sub_1BAF4B07C(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1BADC880C();
  v6[3] = a1;
  v6[0] = v4;
  v6[1] = v3;
  sub_1BAF3B678(v4, v3);
  return sub_1BADC85C4(0, 0xE000000000000000, 6, v6);
}

uint64_t sub_1BAF4B138()
{
  v0 = sub_1BAF2DB10(&qword_1EBC36930, &qword_1BAF95CC8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1BAF8E888();
  sub_1BADC4B44(v4, qword_1EDBA3868);
  v5 = sub_1BADC4BA8(v4, qword_1EDBA3868);
  sub_1BAF8E858();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static TimeZone.utc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDBA3860 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAF8E888();
  v3 = sub_1BADC4BA8(v2, qword_1EDBA3868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JWT.init(tokenString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v55 = *(a3 - 8);
  v56 = a4;
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF8E328();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v58 = a2;
  v61 = 46;
  v62 = 0xE100000000000000;
  sub_1BAF2DB58();
  v17 = sub_1BAF8F138();
  if (v17[2] != 3)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v52 = a3;
  v53 = v11;
  v50 = a5;
  v51 = a1;
  v18 = v17[4];
  v19 = v17[5];
  v20 = v17[7];
  v54 = v17[6];
  v21 = v17[9];
  v49 = v17[8];

  v22 = sub_1BAF8E368();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1BAF8E358();
  (*(v13 + 104))(v16, *MEMORY[0x1E6967F10], v12);
  sub_1BAF8E338();
  v25 = Data.init(base64URLEncoded:)();
  if (v26 >> 60 == 15)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
  }

  v30 = v25;
  v31 = v26;
  v32 = v21;
  v33 = Data.init(base64URLEncoded:)();
  if (v34 >> 60 == 15)
  {

    sub_1BAF46DB4();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();
    sub_1BAF3B72C(v30, v31);
  }

  v36 = v33;
  v37 = v34;
  sub_1BAF4B8AC();
  v38 = v63;
  sub_1BAF8E348();
  if (v38)
  {

    sub_1BAF3B72C(v30, v31);
    sub_1BAF3B72C(v36, v37);
  }

  else
  {
    v63 = v58;
    v47 = v59;
    v48 = v57;
    v54 = v60;
    v39 = *(v56 + 8);
    v40 = v52;
    sub_1BAF8E348();

    sub_1BAF3B72C(v30, v31);
    sub_1BAF3B72C(v36, v37);
    v41 = v50;
    v42 = v63;
    *v50 = v48;
    *(v41 + 1) = v42;
    v43 = v54;
    *(v41 + 2) = v47;
    *(v41 + 3) = v43;
    v44 = type metadata accessor for JWT();
    result = (*(v55 + 32))(&v41[v44[9]], v53, v40);
    v45 = &v41[v44[10]];
    *v45 = v49;
    *(v45 + 1) = v32;
    v46 = &v41[v44[11]];
    *v46 = v51;
    *(v46 + 1) = a2;
  }

  return result;
}

unint64_t sub_1BAF4B8AC()
{
  result = qword_1EBC36AC0[0];
  if (!qword_1EBC36AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC36AC0);
  }

  return result;
}

uint64_t static JWT.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[2];
  v8 = a1[3];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (!v11 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v12 = v7 == v9 && v8 == v10;
  if (!v12 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for JWT();
  v14 = v13[9];
  v15 = *(a4 + 24);
  if ((sub_1BAF8EC18() & 1) == 0)
  {
    return 0;
  }

  v16 = v13[10];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_1BAF8F4C8() & 1) == 0)
  {
    return 0;
  }

  v21 = v13[11];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if (v22 == *v24 && v23 == v24[1])
  {
    return 1;
  }

  return sub_1BAF8F4C8();
}