uint64_t ArrayCombineOperator.combine(_:_:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*v4)
  {
    v5 = a1;
    a1 = a2;
    a2 = v5;
  }

  return MEMORY[0x2821FC290](a1, a2, *(a4 + 16));
}

uint64_t ArrayCombineOperator.currentValue(_:restricts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  sub_20E4C65E0();
  swift_getWitnessTable();
  return sub_20E4C65A0() & 1;
}

uint64_t sub_20E47ABEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ArrayCombineOperator.combine(_:_:scope:)(*a1, *a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_20E47AC1C(uint64_t a1, char **a2)
{
  v13 = *a2;
  v4 = *(a1 + 16);

  v5 = v13;
  if (v4)
  {
    v6 = (a1 + 64);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v12[0] = *(v6 - 4);
      v12[1] = v9;
      v12[2] = v10;
      v12[3] = v8;
      v12[4] = v7;

      sub_20E47AD28(&v13, v12);

      v6 += 5;
      --v4;
    }

    while (v4);
    v5 = v13;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_20E47AD28(char **a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[3];
  v28 = a2[2];
  v30 = a2[4];
  v6 = *a1;
  v7 = *(*a1 + 2);
  v8 = 64;
  while (v7 != v2)
  {
    v9 = v2;
    v10 = v8;
    v11 = &v6[v8];
    v12 = *&v6[v8 - 24];
    if (*&v6[v8 - 32] == v4 && v12 == v3)
    {
      goto LABEL_9;
    }

    ++v2;
    v14 = sub_20E4C6910();
    v8 = v10 + 40;
    if (v14)
    {
      v15 = &v6[v8];
      v4 = *(v15 - 9);
      v12 = *(v15 - 8);
LABEL_9:
      v5 = *(v11 - 1);
      v28 = *(v11 - 2);
      v7 = *v11;
      v31 = *v11;
      v16 = v12;

      swift_bridgeObjectRetain_n();

      v3 = &v31;
      sub_20E48A684(v17);
      v18 = v31;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_20E48A77C(v6);
      }

      if (v9 < *(v6 + 2))
      {
        v19 = &v6[v10];
        v20 = *&v6[v10 - 24];
        v22 = *&v6[v10 - 8];
        v21 = *&v6[v10];
        *(v19 - 4) = v4;
        *(v19 - 3) = v16;
        *(v19 - 2) = v28;
        *(v19 - 1) = v5;
        *v19 = v18;

        v24 = a1;
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  v18 = v30;

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    goto LABEL_14;
  }

LABEL_19:
  result = sub_20E450928(0, v7 + 1, 1, v6);
  v6 = result;
LABEL_14:
  v24 = a1;
  v26 = *(v6 + 2);
  v25 = *(v6 + 3);
  if (v26 >= v25 >> 1)
  {
    result = sub_20E450928((v25 > 1), v26 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v26 + 1;
  v27 = &v6[40 * v26];
  *(v27 + 4) = v4;
  *(v27 + 5) = v3;
  *(v27 + 6) = v28;
  *(v27 + 7) = v5;
  *(v27 + 8) = v18;
LABEL_17:
  *v24 = v6;
  return result;
}

uint64_t ArrayCombineOperator<>.currentValue(_:restricts:)(uint64_t a1, Swift::String_optional *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    countAndFlagsBits = a2->value._countAndFlagsBits;
    object = a2->value._object;
    v17 = a2[1];
    v6 = a1 + 32;
    v7 = a2[2].value._countAndFlagsBits;
    v16 = a1 + 32;
    while (2)
    {
      v8 = *(v6 + 40 * v3++ + 32);
      v9 = *(v8 + 16);

      v11 = (v8 + 64);
      v12 = -1;
      while (v12 - v9 != -1)
      {
        if (++v12 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v13 = v11 + 5;
        v14 = *v11;
        v15 = *(v11 - 3);
        *&v18.children.is_nil = *(v11 - 4);
        v19 = v15;
        v20 = *(v11 - 1);
        v21 = v14;
        v18.title._countAndFlagsBits = countAndFlagsBits;
        v18.title._object = object;
        v18.url = v17;
        v18.children.value._rawValue = v7;
        result = Bookmark.contains(_:)(&v18);
        v11 = v13;
        if (result)
        {

          return 1;
        }
      }

      v6 = v16;
      if (v3 != v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

uint64_t ComparableDictionaryCombineOperator.currentValue(_:for:causes:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27[1] = a3;
  v6 = a4[3];
  v7 = sub_20E4C6780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v27 - v12;
  v14 = *(v6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11, v16);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v4;
  v20 = a4[2];
  v21 = a4[5];
  sub_20E4C6400();
  if ((*(v14 + 48))(v13, 1, v6) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v22 = 0;
  }

  else
  {
    (*(v14 + 32))(v18, v13, v6);
    v23 = a4[7];
    v24 = (v14 + 8);
    if (v19)
    {
      v25 = sub_20E4C6460();
    }

    else
    {
      v25 = sub_20E4C6450();
    }

    v22 = v25;
    (*v24)(v18, v6);
  }

  return v22 & 1;
}

uint64_t sub_20E47B294(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_20E4C69C0();
  a4(v6);
  return sub_20E4C69F0();
}

uint64_t sub_20E47B2D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = ComparableDictionaryCombineOperator.combine(_:_:scope:)(*a1, *a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t ActivityCategoryPolicyCombineOperator.currentValue(_:restricts:including:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v38 = a4;
  v6 = *(a4 + 16);
  v7 = sub_20E4C6780();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v37 - v16;
  v18 = *(v6 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v15, v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - v25;
  v27 = *(a1 + 8);
  v39 = *a1;
  v28 = *(a1 + 16);
  v29 = a2[1];
  v41[0] = *a2;
  v41[1] = v29;
  v41[2] = a2[2];
  if (v28)
  {
    if (v28 != 1)
    {
      v31 = 0;
      return v31 & 1;
    }

    (*(v8 + 16))(v13, v40, v7);
    if ((*(v18 + 48))(v13, 1, v6) != 1)
    {
      (*(v18 + 32))(v23, v13, v6);
      v32 = *(v38 + 40);
      v33 = sub_20E4C6670();
      (*(v18 + 8))(v23, v6);
      v31 = v33 ^ 1;
      return v31 & 1;
    }

    (*(v8 + 8))(v13, v7);
    goto LABEL_9;
  }

  (*(v8 + 16))(v17, v40, v7);
  if ((*(v18 + 48))(v17, 1, v6) == 1)
  {
    (*(v8 + 8))(v17, v7);
    if (qword_27C8CEC78 != -1)
    {
      swift_once();
    }

    v42 = xmmword_27C8CF368;
    v43 = xmmword_27C8CF378;
    v44 = xmmword_27C8CF388;
    v30 = v39;
    if ((sub_20E478BD0(&v42, v39) & 1) == 0)
    {
      v31 = sub_20E478BD0(v41, v30);
      return v31 & 1;
    }

LABEL_9:
    v31 = 1;
    return v31 & 1;
  }

  (*(v18 + 32))(v26, v17, v6);
  if (qword_27C8CEC78 != -1)
  {
    swift_once();
  }

  v42 = xmmword_27C8CF368;
  v43 = xmmword_27C8CF378;
  v44 = xmmword_27C8CF388;
  v34 = v39;
  if (sub_20E478BD0(&v42, v39) & 1) != 0 || (sub_20E478BD0(v41, v34))
  {
    v35 = *(v38 + 40);
    v31 = sub_20E4C6670() ^ 1;
  }

  else
  {
    v31 = 0;
  }

  (*(v18 + 8))(v26, v6);
  return v31 & 1;
}

uint64_t ActivityCategoryPolicyCombineOperator.hashValue.getter()
{
  sub_20E4C69C0();
  MEMORY[0x20F32F300](0);
  return sub_20E4C69F0();
}

uint64_t ActivityCategoryPolicyCombineOperator<>.currentValue(_:restricts:including:shouldUsePatternMatching:)(uint64_t a1, _OWORD *a2, uint64_t *a3, char a4)
{
  v240 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = a2[1];
  v236[0] = *a2;
  v236[1] = v8;
  v236[2] = a2[2];
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v228 = a3[3];
  v229 = v10;
  v12 = a3[4];
  v226 = a3[5];
  if (v7)
  {
    if (v7 != 1)
    {
      v189 = 0;
      goto LABEL_345;
    }

    if (v10 != 1)
    {
      v13 = v5 + 56;
      v14 = 1 << *(v5 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(v5 + 56);
      v223 = *a3;
      sub_20E48C360(v9, v10, v11, v228);
      sub_20E48C804(v5, v6, 1);
      v17 = 0;
      v18 = (v14 + 63) >> 6;
      if (v11)
      {
        v19 = 0;
      }

      else
      {
        v19 = v228 == 0xC000000000000000;
      }

      v20 = !v19;
      v210 = v20;
      v212 = v228 >> 62;
      v202 = HIDWORD(v11);
      v21 = __OFSUB__(HIDWORD(v11), v11);
      v207 = v21;
      v216 = v11;
      v217 = v12;
      v204 = v11;
      v206 = HIDWORD(v11) - v11;
      v198 = (v11 >> 32) - v11;
      v200 = v11 >> 32;
      v219 = v5;
      while (1)
      {
        if (v16)
        {
          v22 = v229;
          goto LABEL_23;
        }

        v22 = v229;
        do
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_348;
          }

          if (v23 >= v18)
          {
            sub_20E48C3C4(v223, v229, v216, v228);

            v189 = 1;
            goto LABEL_345;
          }

          v16 = *(v13 + 8 * v23);
          ++v17;
        }

        while (!v16);
        v17 = v23;
LABEL_23:
        v24 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v25 = (*(v5 + 48) + 48 * (v24 | (v17 << 6)));
        v26 = v25[1];
        v27 = v25[2];
        v28 = v25[3];
        v29 = v25[4];
        v224 = v25[5];
        v221 = v26;
        if (!v26)
        {
          if (!v22)
          {
            goto LABEL_34;
          }

LABEL_32:
          sub_20E41B8A8(v27, v28);

          if ((a4 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_97;
        }

        if (!v22)
        {

          v31 = v27;
          v32 = v28;
          sub_20E41B8A8(v27, v28);

          goto LABEL_102;
        }

        if (*v25 != v223 || v26 != v22)
        {
          v214 = *v25;
          if ((sub_20E4C6910() & 1) == 0)
          {

            goto LABEL_32;
          }
        }

LABEL_34:
        if (v28 >> 60 != 15)
        {
          if (v228 >> 60 == 15)
          {
            goto LABEL_39;
          }

          v34 = v28 >> 62;
          if (v28 >> 62 == 3)
          {
            if (v27)
            {
              v35 = 0;
            }

            else
            {
              v35 = v28 == 0xC000000000000000;
            }

            v36 = v228 >> 62;
            v38 = !v35 || v228 >> 62 != 3;
            if (((v38 | v210) & 1) == 0)
            {
              v196 = v29;

              sub_20E41B8A8(0, 0xC000000000000000);
              v33 = v224;

              sub_20E41B8A8(0, 0xC000000000000000);
              sub_20E41B8A8(0, 0xC000000000000000);
              v39 = 0;
              v40 = 0xC000000000000000;
              goto LABEL_86;
            }

LABEL_61:
            v41 = 0;
            goto LABEL_62;
          }

          v36 = v228 >> 62;
          if (v34 > 1)
          {
            if (v34 != 2)
            {
              goto LABEL_61;
            }

            v43 = *(v27 + 16);
            v42 = *(v27 + 24);
            v44 = __OFSUB__(v42, v43);
            v41 = v42 - v43;
            if (v44)
            {
              goto LABEL_355;
            }

LABEL_62:
            if (v36 > 1)
            {
              goto LABEL_68;
            }
          }

          else
          {
            if (!v34)
            {
              v41 = BYTE6(v28);
              if (v212 <= 1)
              {
                goto LABEL_63;
              }

LABEL_68:
              if (v36 == 2)
              {
                v47 = *(v216 + 16);
                v46 = *(v216 + 24);
                v44 = __OFSUB__(v46, v47);
                v45 = v46 - v47;
                if (!v44)
                {
                  goto LABEL_70;
                }

LABEL_352:
                __break(1u);
LABEL_353:
                __break(1u);
LABEL_354:
                __break(1u);
LABEL_355:
                __break(1u);
LABEL_356:
                __break(1u);
LABEL_357:
                __break(1u);
LABEL_358:
                __break(1u);
LABEL_359:
                __break(1u);
LABEL_360:
                __break(1u);
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
LABEL_363:
                __break(1u);
LABEL_364:
                __break(1u);
LABEL_365:
                __break(1u);
LABEL_366:
                __break(1u);
              }

              if (v41)
              {
LABEL_82:

                sub_20E41B8A8(v27, v28);

                sub_20E41B8A8(v27, v28);
                v4 = v228;
                sub_20E41B8A8(v216, v228);
                sub_20E4167F8(v216, v228);
                goto LABEL_83;
              }

LABEL_85:
              v196 = v29;

              sub_20E41B8A8(v27, v28);
              v33 = v224;

              sub_20E41B8A8(v27, v28);
              sub_20E41B8A8(v216, v228);
              v39 = v216;
              v40 = v228;
LABEL_86:
              sub_20E4167F8(v39, v40);
LABEL_87:
              v5 = v27;
              v4 = v28;
              sub_20E4167F8(v27, v28);
              if (v33)
              {
                v22 = v229;
                if (!v226)
                {
                  if ((a4 & 1) == 0)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_97;
                }

                v53 = v196 == v217 && v224 == v226;
                if (v53 || (sub_20E4C6910() & 1) != 0)
                {
LABEL_351:

                  sub_20E48C3C4(v223, v22, v216, v228);

                  sub_20E4167F8(v5, v4);

                  v189 = 0;
                  goto LABEL_345;
                }
              }

              else
              {
                v22 = v229;
                if (!v226)
                {
                  goto LABEL_351;
                }
              }

              if ((a4 & 1) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_97;
            }

            LODWORD(v41) = HIDWORD(v27) - v27;
            if (__OFSUB__(HIDWORD(v27), v27))
            {
              goto LABEL_356;
            }

            v41 = v41;
            if (v212 > 1)
            {
              goto LABEL_68;
            }
          }

LABEL_63:
          v45 = BYTE6(v228);
          if (v36)
          {
            v45 = v206;
            if (v207)
            {
              __break(1u);
              goto LABEL_352;
            }
          }

LABEL_70:
          if (v41 != v45)
          {
            goto LABEL_82;
          }

          if (v41 < 1)
          {
            goto LABEL_85;
          }

          v196 = v29;
          if (v34 <= 1)
          {
            if (!v34)
            {
              *&__s1 = v27;
              WORD4(__s1) = v28;
              BYTE10(__s1) = BYTE2(v28);
              BYTE11(__s1) = BYTE3(v28);
              BYTE12(__s1) = BYTE4(v28);
              BYTE13(__s1) = BYTE5(v28);
              if (v36)
              {
                if (v36 == 1)
                {
                  if (v200 >= v204)
                  {

                    sub_20E41B8A8(v27, v28);

                    sub_20E41B8A8(v27, v28);
                    sub_20E41B8A8(v216, v228);
                    v48 = sub_20E4C5FC0();
                    if (v48)
                    {
                      v49 = v48;
                      v50 = sub_20E4C5FE0();
                      if (!__OFSUB__(v204, v50))
                      {
                        v51 = (v204 - v50 + v49);
                        result = sub_20E4C5FD0();
                        if (!v51)
                        {
LABEL_402:
                          __break(1u);
                          goto LABEL_403;
                        }

LABEL_135:
                        if (result >= v198)
                        {
                          v78 = v198;
                        }

                        else
                        {
                          v78 = result;
                        }

                        v4 = memcmp(&__s1, v51, v78);
                        sub_20E4167F8(v216, v228);
                        v33 = v224;
                        if (!v4)
                        {
                          goto LABEL_87;
                        }

LABEL_83:
                        sub_20E4167F8(v27, v28);
                        v22 = v229;
                        if ((a4 & 1) == 0)
                        {
                          goto LABEL_33;
                        }

                        goto LABEL_97;
                      }

LABEL_376:
                      __break(1u);
LABEL_377:
                      __break(1u);
LABEL_378:
                      __break(1u);
LABEL_379:
                      __break(1u);
LABEL_380:
                      __break(1u);
LABEL_381:
                      __break(1u);
LABEL_382:
                      __break(1u);
LABEL_383:
                      __break(1u);
LABEL_384:
                      __break(1u);
LABEL_385:
                      __break(1u);
LABEL_386:
                      __break(1u);
                    }

                    sub_20E4C5FD0();
                    __break(1u);
LABEL_388:
                    sub_20E4C5FD0();
                    goto LABEL_389;
                  }

LABEL_368:
                  __break(1u);
LABEL_369:
                  __break(1u);
LABEL_370:
                  __break(1u);
LABEL_371:
                  __break(1u);
LABEL_372:
                  __break(1u);
LABEL_373:
                  __break(1u);
LABEL_374:
                  __break(1u);
LABEL_375:
                  __break(1u);
                  goto LABEL_376;
                }

                v72 = *(v216 + 16);
                v4 = *(v216 + 24);

                sub_20E41B8A8(v27, v28);

                sub_20E41B8A8(v27, v28);
                sub_20E41B8A8(v216, v228);
                v68 = sub_20E4C5FC0();
                if (v68)
                {
                  v73 = sub_20E4C5FE0();
                  if (__OFSUB__(v72, v73))
                  {
                    goto LABEL_382;
                  }

                  v74 = v4;
                  v68 += v72 - v73;
                }

                else
                {
                  v74 = v4;
                }

                v44 = __OFSUB__(v74, v72);
                v79 = v74 - v72;
                if (v44)
                {
                  goto LABEL_372;
                }

                result = sub_20E4C5FD0();
                if (v68)
                {
LABEL_147:
                  if (result >= v79)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = result;
                  }

                  v81 = memcmp(&__s1, v68, v80);
                  sub_20E4167F8(v216, v228);
                  v33 = v224;
                  if (!v81)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_83;
                }

LABEL_401:
                __break(1u);
                goto LABEL_402;
              }

LABEL_122:
              __s2 = v216;
              v4 = v228;
              v231 = v202;
              v232 = *(&v216 + 5);
              v233 = HIBYTE(v216);
              v234 = v228;
              v235 = WORD2(v228);

              sub_20E41B8A8(v27, v28);
              v33 = v224;

              sub_20E41B8A8(v27, v28);
              sub_20E41B8A8(v216, v228);
              v71 = memcmp(&__s1, &__s2, BYTE6(v228));
              sub_20E4167F8(v216, v228);
              if (!v71)
              {
                goto LABEL_87;
              }

              goto LABEL_83;
            }

            if (v27 >> 32 < v27)
            {
              goto LABEL_359;
            }

            sub_20E41B8A8(v27, v28);

            sub_20E41B8A8(v27, v28);
            sub_20E41B8A8(v216, v228);
            v63 = sub_20E4C5FC0();
            if (v63)
            {
              v64 = v63;
              v65 = sub_20E4C5FE0();
              if (__OFSUB__(v27, v65))
              {
                goto LABEL_365;
              }

              v66 = v27 - v65 + v64;
            }

            else
            {
              v66 = 0;
            }

            sub_20E4C5FD0();
            v62 = v66;
LABEL_126:
            v4 = 0;
            sub_20E47FDB4(v62, v216, v228, &__s1);
            sub_20E4167F8(v216, v228);
            v33 = v224;
            if (__s1)
            {
              goto LABEL_87;
            }

            goto LABEL_83;
          }

          if (v34 == 2)
          {
            v59 = *(v27 + 16);
            v58 = *(v27 + 24);

            sub_20E41B8A8(v27, v28);

            sub_20E41B8A8(v27, v28);
            sub_20E41B8A8(v216, v228);
            v60 = sub_20E4C5FC0();
            if (v60)
            {
              v61 = sub_20E4C5FE0();
              if (__OFSUB__(v59, v61))
              {
                goto LABEL_363;
              }

              v60 += v59 - v61;
            }

            if (__OFSUB__(v58, v59))
            {
              goto LABEL_361;
            }

            sub_20E4C5FD0();
            v62 = v60;
            goto LABEL_126;
          }

          *(&__s1 + 6) = 0;
          *&__s1 = 0;
          if (!v36)
          {
            goto LABEL_122;
          }

          if (v36 == 2)
          {
            v67 = *(v216 + 16);
            v4 = *(v216 + 24);

            sub_20E41B8A8(v27, v28);

            sub_20E41B8A8(v27, v28);
            sub_20E41B8A8(v216, v228);
            v68 = sub_20E4C5FC0();
            if (v68)
            {
              v69 = sub_20E4C5FE0();
              if (__OFSUB__(v67, v69))
              {
                goto LABEL_381;
              }

              v70 = v4;
              v68 += v67 - v69;
            }

            else
            {
              v70 = v4;
            }

            v44 = __OFSUB__(v70, v67);
            v79 = v70 - v67;
            if (v44)
            {
              goto LABEL_371;
            }

            result = sub_20E4C5FD0();
            if (v68)
            {
              goto LABEL_147;
            }

            goto LABEL_400;
          }

          if (v200 < v204)
          {
            __break(1u);
            goto LABEL_368;
          }

          sub_20E41B8A8(v27, v28);

          sub_20E41B8A8(v27, v28);
          sub_20E41B8A8(v216, v228);
          v75 = sub_20E4C5FC0();
          if (v75)
          {
            v76 = v75;
            v77 = sub_20E4C5FE0();
            if (__OFSUB__(v204, v77))
            {
              goto LABEL_375;
            }

            v51 = (v204 - v77 + v76);
            result = sub_20E4C5FD0();
            if (v51)
            {
              goto LABEL_135;
            }

LABEL_393:
            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
            goto LABEL_396;
          }

LABEL_392:
          result = sub_20E4C5FD0();
          goto LABEL_393;
        }

        if (v228 >> 60 == 15)
        {
          v196 = v29;

          sub_20E41B8A8(v27, v28);
          v33 = v224;

          sub_20E41B8A8(v27, v28);
          sub_20E41B8A8(v216, v228);
          goto LABEL_87;
        }

LABEL_39:

        sub_20E41B8A8(v27, v28);

        sub_20E41B8A8(v27, v28);
        v4 = v228;
        sub_20E41B8A8(v216, v228);
        sub_20E4167F8(v27, v28);
        v22 = v229;
        sub_20E4167F8(v216, v228);
        if ((a4 & 1) == 0)
        {
LABEL_33:
          v31 = v27;
          v32 = v28;
          goto LABEL_102;
        }

LABEL_97:
        if (!v22)
        {
          v31 = v27;
          v32 = v28;
LABEL_102:

          sub_20E4167F8(v31, v32);
LABEL_103:
          v5 = v219;

          continue;
        }

        if (!v221)
        {

          sub_20E4167F8(v27, v28);
          goto LABEL_103;
        }

        LOBYTE(__s1) = 0;
        v54 = objc_opt_self();
        v55 = sub_20E4C6490();
        v4 = v28;
        v56 = v27;
        v57 = sub_20E4C6490();
        LOBYTE(v54) = [v54 compareDomain:v55 withDomainPattern:v57 outExactMatch:&__s1];

        sub_20E4167F8(v56, v4);

        v5 = v219;

        if (v54)
        {

          sub_20E48C3C4(v223, v229, v216, v228);
          v189 = 0;
          goto LABEL_345;
        }
      }
    }

LABEL_156:
    v189 = 1;
    goto LABEL_345;
  }

  if (v10 == 1)
  {
    if (qword_27C8CEC78 != -1)
    {
      swift_once();
    }

    __s1 = xmmword_27C8CF368;
    v238 = xmmword_27C8CF378;
    v239 = xmmword_27C8CF388;
    if ((sub_20E478BD0(&__s1, v5) & 1) == 0)
    {
      v189 = sub_20E478BD0(v236, v5);
      goto LABEL_345;
    }

    goto LABEL_156;
  }

  v211 = v6 + 56;
  v222 = v6;
  v223 = *a3;
  v82 = 1 << *(v6 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v6 + 56);
  sub_20E48C360(v9, v10, v11, v228);
  v213 = (v82 + 63) >> 6;
  __n = v228 >> 62;
  if (v11)
  {
    v85 = 0;
  }

  else
  {
    v85 = v228 == 0xC000000000000000;
  }

  v86 = !v85;
  v208 = v86;
  v199 = HIDWORD(v11);
  v87 = __OFSUB__(HIDWORD(v11), v11);
  v205 = v87;
  v216 = v11;
  v201 = v11;
  v203 = HIDWORD(v11) - v11;
  v195 = (v11 >> 32) - v11;
  v197 = v11 >> 32;

  v88 = 0;
  v218 = v12;
  v220 = v5;
  while (1)
  {
    if (v84)
    {
      v22 = v229;
      goto LABEL_177;
    }

    v22 = v229;
    do
    {
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
LABEL_348:
        __break(1u);
        goto LABEL_351;
      }

      if (v89 >= v213)
      {

        v189 = 1;
        goto LABEL_338;
      }

      v84 = *(v211 + 8 * v89);
      ++v88;
    }

    while (!v84);
    v88 = v89;
LABEL_177:
    v90 = __clz(__rbit64(v84));
    v84 &= v84 - 1;
    v91 = (*(v222 + 48) + 48 * (v90 | (v88 << 6)));
    v92 = v91[1];
    v94 = v91[2];
    v93 = v91[3];
    v95 = v91[4];
    v96 = v91[5];
    v225 = v93;
    if (!v92)
    {
      v97 = 0;
      if (v22)
      {
        sub_20E41B8A8(v94, v93);

        v101 = 0;
        goto LABEL_252;
      }

      goto LABEL_187;
    }

    if (!v22)
    {
      v104 = v91[3];

      sub_20E41B8A8(v94, v104);

      goto LABEL_257;
    }

    v97 = v91[1];
    if (*v91 != v223 || v92 != v22)
    {
      v215 = *v91;
      v4 = v91[5];
      v99 = v91[4];
      v100 = sub_20E4C6910();
      v95 = v99;
      v93 = v225;
      if ((v100 & 1) == 0)
      {

        v101 = v97;
        sub_20E41B8A8(v94, v225);

        goto LABEL_252;
      }
    }

LABEL_187:
    if (v93 >> 60 == 15)
    {
      v102 = v228;
      v101 = v97;
      if (v228 >> 60 == 15)
      {
        v193 = v95;
        v103 = v93;

        sub_20E41B8A8(v94, v103);

        sub_20E41B8A8(v94, v103);
        sub_20E41B8A8(v216, v228);
        goto LABEL_242;
      }

LABEL_192:
      v4 = v12;
      v105 = v93;

      sub_20E41B8A8(v94, v105);

      sub_20E41B8A8(v94, v105);
      sub_20E41B8A8(v216, v102);
      v106 = v105;
      v12 = v4;
      sub_20E4167F8(v94, v106);
      sub_20E4167F8(v216, v102);
      v22 = v229;
      v5 = v220;
      goto LABEL_252;
    }

    v102 = v228;
    v101 = v97;
    if (v228 >> 60 == 15)
    {
      goto LABEL_192;
    }

    v107 = v93 >> 62;
    if (v93 >> 62 == 3)
    {
      if (v94)
      {
        v108 = 0;
      }

      else
      {
        v108 = v93 == 0xC000000000000000;
      }

      v109 = v228 >> 62;
      v111 = !v108 || v228 >> 62 != 3;
      if (((v111 | v208) & 1) == 0)
      {
        v193 = v95;
        v103 = v93;

        sub_20E41B8A8(0, 0xC000000000000000);

        sub_20E41B8A8(0, 0xC000000000000000);
        sub_20E41B8A8(0, 0xC000000000000000);
        v112 = 0;
        v113 = 0xC000000000000000;
LABEL_241:
        sub_20E4167F8(v112, v113);
LABEL_242:
        v5 = v220;
        goto LABEL_243;
      }

LABEL_213:
      v114 = 0;
      goto LABEL_214;
    }

    v109 = v228 >> 62;
    if (v107 > 1)
    {
      if (v107 != 2)
      {
        goto LABEL_213;
      }

      v116 = *(v94 + 16);
      v115 = *(v94 + 24);
      v44 = __OFSUB__(v115, v116);
      v114 = v115 - v116;
      if (v44)
      {
        goto LABEL_357;
      }

LABEL_214:
      if (v109 > 1)
      {
        goto LABEL_220;
      }

      goto LABEL_215;
    }

    if (v107)
    {
      LODWORD(v114) = HIDWORD(v94) - v94;
      if (__OFSUB__(HIDWORD(v94), v94))
      {
        goto LABEL_358;
      }

      v114 = v114;
      if (__n > 1)
      {
        goto LABEL_220;
      }

LABEL_215:
      v117 = BYTE6(v228);
      if (v109)
      {
        v117 = v203;
        if (v205)
        {
          goto LABEL_353;
        }
      }

      goto LABEL_222;
    }

    v114 = BYTE6(v93);
    if (__n <= 1)
    {
      goto LABEL_215;
    }

LABEL_220:
    if (v109 != 2)
    {
      if (!v114)
      {
LABEL_240:
        v193 = v95;

        v103 = v225;
        sub_20E41B8A8(v94, v225);

        sub_20E41B8A8(v94, v225);
        sub_20E41B8A8(v216, v228);
        v112 = v216;
        v113 = v228;
        goto LABEL_241;
      }

LABEL_238:

      v103 = v225;
      sub_20E41B8A8(v94, v225);

      sub_20E41B8A8(v94, v225);
      sub_20E41B8A8(v216, v228);
      sub_20E4167F8(v216, v228);
      v5 = v220;
      goto LABEL_239;
    }

    v119 = *(v216 + 16);
    v118 = *(v216 + 24);
    v44 = __OFSUB__(v118, v119);
    v117 = v118 - v119;
    if (v44)
    {
      goto LABEL_354;
    }

LABEL_222:
    if (v114 != v117)
    {
      goto LABEL_238;
    }

    if (v114 < 1)
    {
      goto LABEL_240;
    }

    v192 = v96;
    v193 = v95;
    v194 = v97;
    if (v107 > 1)
    {
      break;
    }

    if (!v107)
    {
      *&__s1 = v94;
      v103 = v225;
      DWORD2(__s1) = v225;
      WORD6(__s1) = WORD2(v225);
      if (!v109)
      {
        __s2 = v216;
        v231 = v199;
        v232 = *(&v216 + 5);
        v233 = HIBYTE(v216);
        v234 = v228;
        v235 = WORD2(v228);

        sub_20E41B8A8(v94, v225);

        sub_20E41B8A8(v94, v225);
        sub_20E41B8A8(v216, v228);
        v158 = memcmp(&__s1, &__s2, BYTE6(v228));
        v101 = v97;
        sub_20E4167F8(v216, v228);
        v5 = v220;
        if (!v158)
        {
          goto LABEL_243;
        }

        goto LABEL_239;
      }

      v5 = v220;
      v191 = v94;
      if (v109 == 1)
      {
        if (v197 < v201)
        {
          goto LABEL_369;
        }

        v120 = v94;
        v121 = v101;

        sub_20E41B8A8(v120, v225);

        sub_20E41B8A8(v120, v225);
        sub_20E41B8A8(v216, v228);
        v122 = sub_20E4C5FC0();
        if (v122)
        {
          v123 = v122;
          v124 = sub_20E4C5FE0();
          if (__OFSUB__(v201, v124))
          {
            goto LABEL_377;
          }

          v125 = (v201 - v124 + v123);
          v126 = sub_20E4C5FD0();
          if (v125)
          {
            if (v126 >= v195)
            {
              v127 = v195;
            }

            else
            {
              v127 = v126;
            }

            v128 = memcmp(&__s1, v125, v127);
            sub_20E4167F8(v216, v228);
            v103 = v225;
            v101 = v121;
            v94 = v191;
            if (!v128)
            {
              goto LABEL_243;
            }

            goto LABEL_239;
          }

LABEL_391:
          __break(1u);
          goto LABEL_392;
        }

LABEL_390:
        sub_20E4C5FD0();
        goto LABEL_391;
      }

      v161 = *(v216 + 16);
      v160 = *(v216 + 24);

      sub_20E41B8A8(v94, v225);

      sub_20E41B8A8(v94, v225);
      v150 = v216;
      sub_20E41B8A8(v216, v228);
      v4 = sub_20E4C5FC0();
      if (v4)
      {
        v162 = sub_20E4C5FE0();
        if (__OFSUB__(v161, v162))
        {
          goto LABEL_384;
        }

        v4 += v161 - v162;
      }

      v44 = __OFSUB__(v160, v161);
      v152 = v160 - v161;
      if (v44)
      {
        goto LABEL_374;
      }

      v153 = v228;
      result = sub_20E4C5FD0();
      if (v4)
      {
LABEL_295:
        if (result >= v152)
        {
          v163 = v152;
        }

        else
        {
          v163 = result;
        }

        v164 = memcmp(&__s1, v4, v163);
        sub_20E4167F8(v150, v153);
        v5 = v220;
LABEL_313:
        v94 = v191;
        v96 = v192;
        v103 = v225;
        v101 = v194;
        if (!v164)
        {
          goto LABEL_243;
        }

        goto LABEL_239;
      }

LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
      goto LABEL_401;
    }

    v143 = v216;
    v4 = v94;
    if (v94 > v94 >> 32)
    {
      goto LABEL_360;
    }

    sub_20E41B8A8(v94, v225);

    v191 = v94;
    sub_20E41B8A8(v94, v225);
    sub_20E41B8A8(v216, v228);
    v144 = sub_20E4C5FC0();
    if (v144)
    {
      v145 = v144;
      v146 = sub_20E4C5FE0();
      if (__OFSUB__(v94, v146))
      {
        goto LABEL_366;
      }

      v147 = (v94 - v146 + v145);
    }

    else
    {
      v147 = 0;
    }

    v5 = v220;
    result = sub_20E4C5FD0();
    if (__n == 2)
    {
      v174 = *(v216 + 16);
      v190 = *(v216 + 24);
      v175 = sub_20E4C5FC0();
      if (v175)
      {
        v4 = v175;
        v176 = sub_20E4C5FE0();
        if (__OFSUB__(v174, v176))
        {
          goto LABEL_385;
        }

        v177 = v174 - v176 + v4;
      }

      else
      {
        v177 = 0;
      }

      v178 = v177;
      v44 = __OFSUB__(v190, v174);
      v179 = v190 - v174;
      if (v44)
      {
        goto LABEL_380;
      }

      result = sub_20E4C5FD0();
      if (result >= v179)
      {
        v180 = v179;
      }

      else
      {
        v180 = result;
      }

      if (v147)
      {
        if (v178)
        {
          v5 = v220;
          v181 = v178;
          v19 = v147 == v178;
          v101 = v97;
          if (v19)
          {
            sub_20E4167F8(v216, v228);
            v94 = v191;
            v96 = v192;
            v103 = v225;
            goto LABEL_243;
          }

          v182 = memcmp(v147, v181, v180);
          sub_20E4167F8(v216, v228);
          v94 = v191;
          v96 = v192;
          v103 = v225;
          if (v182)
          {
            goto LABEL_239;
          }

          goto LABEL_243;
        }

LABEL_398:
        __break(1u);
        goto LABEL_399;
      }

LABEL_397:
      __break(1u);
      goto LABEL_398;
    }

    if (__n != 1)
    {
      LODWORD(__s1) = v216;
      v165 = v228;
      BYTE4(__s1) = v199;
      *(&__s1 + 5) = *(&v216 + 5);
      BYTE7(__s1) = HIBYTE(v216);
      DWORD2(__s1) = v228;
      WORD6(__s1) = WORD2(v228);
      if (!v147)
      {
        goto LABEL_394;
      }

      p_s1 = &__s1;
      v172 = v147;
      v171 = BYTE6(v228);
LABEL_312:
      v164 = memcmp(v172, p_s1, v171);
      sub_20E4167F8(v143, v165);
      goto LABEL_313;
    }

    if (v197 < v201)
    {
      goto LABEL_379;
    }

    v154 = sub_20E4C5FC0();
    if (v154)
    {
      v155 = v154;
      v156 = sub_20E4C5FE0();
      if (__OFSUB__(v201, v156))
      {
        goto LABEL_386;
      }

      v4 = v147;
      v157 = (v201 - v156 + v155);
    }

    else
    {
      v4 = v147;
      v157 = 0;
    }

    v101 = v194;
    result = sub_20E4C5FD0();
    v183 = v195;
    if (result < v195)
    {
      v183 = result;
    }

    v94 = v191;
    v96 = v192;
    if (!v4)
    {
      goto LABEL_395;
    }

    if (!v157)
    {
LABEL_396:
      __break(1u);
      goto LABEL_397;
    }

    if (v4 == v157)
    {
      sub_20E4167F8(v216, v228);
      v103 = v225;
      goto LABEL_243;
    }

    v184 = memcmp(v4, v157, v183);
    sub_20E4167F8(v216, v228);
    v103 = v225;
    if (v184)
    {
      goto LABEL_239;
    }

LABEL_243:
    sub_20E4167F8(v94, v103);
    if (!v96)
    {
      v22 = v229;
      v12 = v218;
      if (v226)
      {
        goto LABEL_252;
      }

LABEL_350:

      sub_20E4167F8(v94, v225);

      v189 = 0;
      goto LABEL_338;
    }

    v22 = v229;
    v12 = v218;
    if (v226)
    {
      v129 = v193 == v218 && v96 == v226;
      if (v129 || (sub_20E4C6910() & 1) != 0)
      {
        goto LABEL_350;
      }
    }

LABEL_252:
    if ((a4 & 1) != 0 && v22 && v101)
    {
      LOBYTE(__s1) = 0;
      v130 = objc_opt_self();
      v131 = v5;
      v132 = sub_20E4C6490();
      v133 = sub_20E4C6490();
      LOBYTE(v130) = [v130 compareDomain:v132 withDomainPattern:v133 outExactMatch:&__s1];

      sub_20E4167F8(v94, v225);

      v5 = v131;
      v12 = v218;

      if (v130)
      {

        v189 = 0;
        v22 = v229;
LABEL_338:
        if (qword_27C8CEC78 != -1)
        {
          swift_once();
        }

        __s1 = xmmword_27C8CF368;
        v238 = xmmword_27C8CF378;
        v239 = xmmword_27C8CF388;
        if (sub_20E478BD0(&__s1, v5))
        {
          sub_20E48C3C4(v223, v22, v216, v228);
        }

        else
        {
          v185 = sub_20E478BD0(v236, v5);
          v186 = v22;
          v187 = v185;
          sub_20E48C3C4(v223, v186, v216, v228);
          if ((v187 & 1) == 0)
          {
            v189 = 0;
          }
        }

LABEL_345:
        v188 = *MEMORY[0x277D85DE8];
        return v189 & 1;
      }
    }

    else
    {
LABEL_257:

      sub_20E4167F8(v94, v225);
    }
  }

  if (v107 == 2)
  {
    v135 = *(v94 + 16);
    v134 = *(v94 + 24);

    v103 = v225;
    sub_20E41B8A8(v94, v225);

    sub_20E41B8A8(v94, v225);
    sub_20E41B8A8(v216, v228);
    v136 = sub_20E4C5FC0();
    v137 = v94;
    if (v136)
    {
      v138 = v135;
      v139 = v134;
      v140 = v136;
      v141 = sub_20E4C5FE0();
      if (__OFSUB__(v138, v141))
      {
        goto LABEL_364;
      }

      v142 = v138 - v141 + v140;
      v103 = v225;
      v134 = v139;
    }

    else
    {
      v142 = 0;
      v138 = v135;
    }

    if (__OFSUB__(v134, v138))
    {
      goto LABEL_362;
    }

    sub_20E4C5FD0();
    v4 = 0;
    sub_20E47FDB4(v142, v216, v228, &__s1);
    sub_20E4167F8(v216, v228);
    v5 = v220;
    v94 = v137;
    v101 = v194;
    if (__s1)
    {
      goto LABEL_243;
    }

LABEL_239:
    sub_20E4167F8(v94, v103);
    v22 = v229;
    v12 = v218;
    goto LABEL_252;
  }

  *(&__s1 + 6) = 0;
  *&__s1 = 0;
  v5 = v220;
  v191 = v94;
  if (!v109)
  {
    __s2 = v216;
    v231 = v199;
    v232 = *(&v216 + 5);
    v233 = HIBYTE(v216);
    v234 = v228;
    v235 = WORD2(v228);
    v101 = v97;

    v103 = v225;
    sub_20E41B8A8(v94, v225);

    sub_20E41B8A8(v94, v225);
    sub_20E41B8A8(v216, v228);
    v159 = memcmp(&__s1, &__s2, BYTE6(v228));
    sub_20E4167F8(v216, v228);
    if (!v159)
    {
      goto LABEL_243;
    }

    goto LABEL_239;
  }

  if (v109 != 2)
  {
    if (v197 < v201)
    {
      goto LABEL_370;
    }

    sub_20E41B8A8(v94, v225);

    sub_20E41B8A8(v94, v225);
    v143 = v216;
    v165 = v228;
    sub_20E41B8A8(v216, v228);
    v166 = sub_20E4C5FC0();
    if (!v166)
    {
      goto LABEL_388;
    }

    v167 = v166;
    v168 = sub_20E4C5FE0();
    if (__OFSUB__(v201, v168))
    {
      goto LABEL_378;
    }

    v169 = (v201 - v168 + v167);
    v170 = sub_20E4C5FD0();
    if (!v169)
    {
LABEL_389:
      __break(1u);
      goto LABEL_390;
    }

    if (v170 >= v195)
    {
      v171 = v195;
    }

    else
    {
      v171 = v170;
    }

    v172 = &__s1;
    p_s1 = v169;
    goto LABEL_312;
  }

  v149 = *(v216 + 16);
  v148 = *(v216 + 24);

  sub_20E41B8A8(v94, v225);

  sub_20E41B8A8(v94, v225);
  v150 = v216;
  sub_20E41B8A8(v216, v228);
  v4 = sub_20E4C5FC0();
  if (v4)
  {
    v151 = sub_20E4C5FE0();
    if (__OFSUB__(v149, v151))
    {
      goto LABEL_383;
    }

    v4 += v149 - v151;
  }

  v44 = __OFSUB__(v148, v149);
  v152 = v148 - v149;
  if (v44)
  {
    goto LABEL_373;
  }

  v153 = v228;
  result = sub_20E4C5FD0();
  if (v4)
  {
    goto LABEL_295;
  }

LABEL_403:
  __break(1u);
  return result;
}

unint64_t UserSafetyScanningPolicyCombineOperator.currentValue(_:causes:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v4 == 1)
      {
        if (v2)
        {
          v5 = 1852138868;
        }

        else
        {
          v5 = 0x646C696863;
        }

        if (v2)
        {
          v6 = 0xE400000000000000;
        }

        else
        {
          v6 = 0xE500000000000000;
        }

        if (v3)
        {
          v7 = 1852138868;
        }

        else
        {
          v7 = 0x646C696863;
        }

        if (v3)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }

        if (v5 == v7 && v6 == v8)
        {

          v11 = 1;
        }

        else
        {
          v10 = sub_20E4C6910();

          v11 = (v10 & 1) != 0 || (v3 & 1u) >= (v2 & 1);
        }

        return v11 & 1;
      }

      goto LABEL_28;
    }

    v11 = v4 > 1;
    return v11 & 1;
  }

  if (*(a2 + 16))
  {
    v11 = v4 != 1;
    return v11 & 1;
  }

  v12 = *(a2 + 8);
  v13 = *(a1 + 8);
  if (sub_20E47FB18(*a1, *a2) & 1) != 0 && (sub_20E47FC20(v13, v12))
  {
LABEL_28:
    v11 = 1;
    return v11 & 1;
  }

  v14 = 1;
  v15 = 1 << *(v3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v3 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  while (1)
  {
    v21 = v14;
    if (!v17)
    {
      break;
    }

    v22 = v17;
LABEL_38:
    v14 = 0;
    v17 = (v22 - 1) & v22;
    if (v21)
    {
      v14 = 0;
      if (*(v2 + 16))
      {
        v24 = __clz(__rbit64(v22)) | (v20 << 6);
        v25 = *(*(v3 + 56) + v24);
        result = sub_20E429A8C(*(*(v3 + 48) + v24));
        v14 = 0;
        if (v26)
        {
          v14 = v25 ^ *(*(v2 + 56) + result) ^ 1;
        }
      }
    }
  }

  while (1)
  {
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v23 >= v18)
    {
      break;
    }

    v22 = *(v3 + 64 + 8 * v23);
    ++v20;
    if (v22)
    {
      v20 = v23;
      goto LABEL_38;
    }
  }

  v27 = 1;
  v28 = 1 << *(v12 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v12 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  while (1)
  {
    v33 = v27;
    if (!v30)
    {
      break;
    }

LABEL_51:
    v27 = 0;
    v35 = __clz(__rbit64(v30)) | (v32 << 6);
    v36 = (*(v12 + 48) + 48 * v35);
    v38 = v36[1];
    v37 = v36[2];
    v30 &= v30 - 1;
    v44[0] = *v36;
    v44[1] = v38;
    v44[2] = v37;
    if (v33)
    {
      v27 = 0;
      if (*(v13 + 16))
      {
        v39 = *(*(v12 + 56) + v35);
        sub_20E45CAA4(v44, &v43);
        v40 = sub_20E429A50(v44);
        if (v41)
        {
          v42 = *(*(v13 + 56) + v40);
          result = sub_20E45CB00(v44);
          v27 = v39 ^ v42 ^ 1;
        }

        else
        {
          result = sub_20E45CB00(v44);
          v27 = 0;
        }
      }
    }
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      v11 = v21 & v27;
      return v11 & 1;
    }

    v30 = *(v12 + 64 + 8 * v34);
    ++v32;
    if (v30)
    {
      v32 = v34;
      goto LABEL_51;
    }
  }

LABEL_59:
  __break(1u);
  return result;
}

uint64_t WebContentFilterPolicyCombineOperator.currentValue(_:restricts:shouldUsePatternMatching:)(uint64_t *a1, uint64_t *a2, char a3)
{
  v212[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v204 = *a2;
  v206 = a2[1];
  v5 = a2[3];
  v203 = a2[2];
  v192 = a2[4];
  v193 = a2[5];
  v197 = *a1;
  v198 = v5;
  if (*(a1 + 16) <= 1u)
  {
    if (!*(a1 + 16))
    {
      v6 = v4 + 56;
      v7 = 1 << *(v4 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      if (v203)
      {
        v11 = 0;
      }

      else
      {
        v11 = v5 == 0xC000000000000000;
      }

      v12 = !v11;
      v194 = v12;
      v199 = v5 >> 62;
      v13 = __OFSUB__(HIDWORD(v203), v203);
      v185 = v13;
      v188 = BYTE6(v5);

      v14 = 0;
      while (1)
      {
        while (1)
        {
          if (v9)
          {
            v15 = v206;
          }

          else
          {
            v15 = v206;
            do
            {
              v16 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_393;
              }

              if (v16 >= v10)
              {
                goto LABEL_303;
              }

              v9 = *(v6 + 8 * v16);
              ++v14;
            }

            while (!v9);
            v14 = v16;
          }

          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v18 = (*(v4 + 48) + 48 * (v17 | (v14 << 6)));
          v19 = v18[1];
          v20 = v18[2];
          v3 = v18[3];
          v21 = v18[4];
          v207 = v18[5];
          if (v19)
          {
            if (!v15)
            {

              sub_20E41B8A8(v20, v3);

              goto LABEL_91;
            }

            v22 = *v18 == v204 && v19 == v15;
            if (!v22 && (sub_20E4C6910() & 1) == 0)
            {

LABEL_31:
              sub_20E41B8A8(v20, v3);

              if ((a3 & 1) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_62;
            }
          }

          else if (v15)
          {
            goto LABEL_31;
          }

          if (v3 >> 60 != 15)
          {
            break;
          }

          v23 = v198;
          if (v198 >> 60 == 15)
          {

            sub_20E41B8A8(v20, v3);

            sub_20E41B8A8(v20, v3);
            sub_20E41B8A8(v203, v198);
            v4 = v197;
            goto LABEL_36;
          }

LABEL_46:

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v203, v23);
          sub_20E4167F8(v20, v3);
          sub_20E4167F8(v203, v23);
          v4 = v197;
          if ((a3 & 1) == 0)
          {
            goto LABEL_91;
          }

LABEL_62:
          if (!v206 || !v19)
          {
            goto LABEL_91;
          }

          LOBYTE(v212[0]) = 0;
          v30 = objc_opt_self();
          v31 = sub_20E4C6490();
          v32 = sub_20E4C6490();
          LOBYTE(v30) = [v30 compareDomain:v31 withDomainPattern:v32 outExactMatch:v212];

          sub_20E4167F8(v20, v3);

          v4 = v197;

          if (v30)
          {
            goto LABEL_387;
          }
        }

        v23 = v198;
        if (v198 >> 60 == 15)
        {
          goto LABEL_46;
        }

        v25 = v3 >> 62;
        if (v3 >> 62 == 3)
        {
          break;
        }

        v27 = v199;
        if (v25 > 1)
        {
          if (v25 != 2)
          {
            goto LABEL_74;
          }

          v35 = *(v20 + 16);
          v34 = *(v20 + 24);
          v36 = __OFSUB__(v34, v35);
          v33 = v34 - v35;
          if (v36)
          {
            goto LABEL_417;
          }
        }

        else if (v25)
        {
          LODWORD(v33) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            goto LABEL_419;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v3);
        }

LABEL_77:
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            if (v33)
            {
LABEL_89:

              sub_20E41B8A8(v20, v3);

              sub_20E41B8A8(v20, v3);
              sub_20E41B8A8(v203, v198);
              sub_20E4167F8(v203, v198);
              v4 = v197;
LABEL_90:
              sub_20E4167F8(v20, v3);
              if ((a3 & 1) == 0)
              {
                goto LABEL_91;
              }

              goto LABEL_62;
            }

LABEL_92:

            sub_20E41B8A8(v20, v3);

            sub_20E41B8A8(v20, v3);
            sub_20E41B8A8(v203, v198);
            sub_20E4167F8(v203, v198);
            v4 = v197;
            goto LABEL_36;
          }

          v39 = *(v203 + 16);
          v38 = *(v203 + 24);
          v36 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (v36)
          {
            goto LABEL_409;
          }
        }

        else
        {
          v37 = v188;
          if (v27)
          {
            v37 = HIDWORD(v203) - v203;
            if (v185)
            {
              goto LABEL_407;
            }
          }
        }

        if (v33 != v37)
        {
          goto LABEL_89;
        }

        if (v33 < 1)
        {
          goto LABEL_92;
        }

        v179 = v21;
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v41 = *(v20 + 16);
            v180 = *(v20 + 24);
            goto LABEL_96;
          }

          memset(v212, 0, 14);
          sub_20E41B8A8(v203, v198);

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);
          sub_20E47FDB4(v212, v203, v198, &v211);
          sub_20E4167F8(v203, v198);
          sub_20E4167F8(v203, v198);
          sub_20E424BA4(v203, v198);
          v40 = v211;
          v4 = v197;
        }

        else
        {
          if (v25)
          {
            v41 = v20;
            v180 = v20 >> 32;
            if (v20 >> 32 < v20)
            {
              goto LABEL_422;
            }

LABEL_96:
            sub_20E41B8A8(v203, v198);
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v20, v3);

            sub_20E41B8A8(v20, v3);
            sub_20E41B8A8(v203, v198);
            sub_20E41B8A8(v203, v198);
            LODWORD(v180) = sub_20E48A8DC(v41, v180, v3 & 0x3FFFFFFFFFFFFFFFLL, v203, v198);
            sub_20E4167F8(v203, v198);
            sub_20E4167F8(v203, v198);
            sub_20E424BA4(v203, v198);
            sub_20E424BA4(v203, v198);
            v4 = v197;
            v21 = v179;
            if ((v180 & 1) == 0)
            {
              goto LABEL_90;
            }

            goto LABEL_36;
          }

          v212[0] = v20;
          LOWORD(v212[1]) = v3;
          BYTE2(v212[1]) = BYTE2(v3);
          BYTE3(v212[1]) = BYTE3(v3);
          BYTE4(v212[1]) = BYTE4(v3);
          BYTE5(v212[1]) = BYTE5(v3);
          v180 = v212 + BYTE6(v3);
          sub_20E41B8A8(v203, v198);

          sub_20E41B8A8(v20, v3);

          sub_20E41B8A8(v20, v3);
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);
          sub_20E47FDB4(v212, v203, v198, &v211);
          sub_20E4167F8(v203, v198);
          sub_20E4167F8(v203, v198);
          sub_20E424BA4(v203, v198);
          v40 = v211;
          v4 = v197;
        }

        if (!v40)
        {
          goto LABEL_90;
        }

LABEL_36:
        sub_20E4167F8(v20, v3);
        if (v207)
        {
          if (v193)
          {
            v180 = v20;
            v24 = v21 == v192 && v207 == v193;
            if (v24 || (sub_20E4C6910() & 1) != 0)
            {
              goto LABEL_43;
            }
          }
        }

        else if (!v193)
        {

          sub_20E4167F8(v20, v3);
          goto LABEL_399;
        }

        if (a3)
        {
          goto LABEL_62;
        }

LABEL_91:

        sub_20E4167F8(v20, v3);
      }

      if (v20)
      {
        v26 = 0;
      }

      else
      {
        v26 = v3 == 0xC000000000000000;
      }

      v27 = v199;
      v29 = !v26 || v199 < 3;
      v4 = v197;
      if (((v29 | v194) & 1) == 0)
      {

        sub_20E41B8A8(0, 0xC000000000000000);

        sub_20E41B8A8(0, 0xC000000000000000);
        sub_20E41B8A8(0, 0xC000000000000000);
        sub_20E4167F8(0, 0xC000000000000000);
        goto LABEL_36;
      }

LABEL_74:
      v33 = 0;
      goto LABEL_77;
    }

    v196 = a1[1];
    v90 = v4 + 56;
    v91 = 1 << *(v4 + 32);
    v92 = -1;
    if (v91 < 64)
    {
      v92 = ~(-1 << v91);
    }

    v93 = v92 & *(v4 + 56);
    v209 = (v91 + 63) >> 6;
    if (v203)
    {
      v94 = 0;
    }

    else
    {
      v94 = v5 == 0xC000000000000000;
    }

    v95 = !v94;
    v184 = v95;
    v187 = v5 >> 62;
    v96 = __OFSUB__(HIDWORD(v203), v203);
    LODWORD(v180) = v96;
    v182 = BYTE6(v5);

    v97 = 0;
    while (1)
    {
      if (v93)
      {
        v98 = v206;
        goto LABEL_221;
      }

      v98 = v206;
      do
      {
        v99 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          goto LABEL_392;
        }

        if (v99 >= v209)
        {

          v191 = 0;
          goto LABEL_305;
        }

        v93 = *(v90 + 8 * v99);
        ++v97;
      }

      while (!v93);
      v97 = v99;
LABEL_221:
      v100 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v101 = (*(v4 + 48) + 48 * (v100 | (v97 << 6)));
      v102 = v101[1];
      v3 = v101[3];
      v201 = v101[2];
      v103 = v101[4];
      v104 = v101[5];
      if (!v102)
      {
        if (!v98)
        {
          goto LABEL_232;
        }

LABEL_230:
        sub_20E41B8A8(v201, v3);

        if ((a3 & 1) == 0)
        {
          goto LABEL_291;
        }

        goto LABEL_261;
      }

      if (!v98)
      {

        sub_20E41B8A8(v201, v3);

        goto LABEL_291;
      }

      if (*v101 != v204 || v102 != v98)
      {
        v106 = v98;
        v107 = v101[4];
        v108 = sub_20E4C6910();
        v103 = v107;
        v98 = v106;
        if ((v108 & 1) == 0)
        {

          goto LABEL_230;
        }
      }

LABEL_232:
      if (v3 >> 60 != 15)
      {
        break;
      }

      v109 = v198;
      if (v198 >> 60 == 15)
      {
        v190 = v103;
        sub_20E41B8A8(v203, v198);

        sub_20E41B8A8(v201, v3);
        v110 = v104;

        sub_20E41B8A8(v201, v3);
        v4 = v197;
        goto LABEL_235;
      }

LABEL_245:
      sub_20E41B8A8(v203, v109);

      sub_20E41B8A8(v201, v3);

      sub_20E41B8A8(v201, v3);
      sub_20E4167F8(v201, v3);
      sub_20E4167F8(v203, v109);
      v4 = v197;
      if ((a3 & 1) == 0)
      {
LABEL_291:

        sub_20E4167F8(v201, v3);

        continue;
      }

LABEL_261:
      if (!v98 || !v102)
      {
        goto LABEL_291;
      }

      LOBYTE(v212[0]) = 0;
      v117 = objc_opt_self();
      v118 = v3;
      v3 = v201;
      v119 = sub_20E4C6490();
      v120 = sub_20E4C6490();
      LOBYTE(v117) = [v117 compareDomain:v119 withDomainPattern:v120 outExactMatch:v212];

      sub_20E4167F8(v201, v118);

      v4 = v197;

      if (v117)
      {

        goto LABEL_397;
      }
    }

    v109 = v198;
    if (v198 >> 60 == 15)
    {
      goto LABEL_245;
    }

    v112 = v3 >> 62;
    if (v3 >> 62 == 3)
    {
      if (v201)
      {
        v113 = 0;
      }

      else
      {
        v113 = v3 == 0xC000000000000000;
      }

      v114 = v187;
      v116 = !v113 || v187 < 3;
      v4 = v197;
      if (((v116 | v184) & 1) == 0)
      {
        v190 = v103;
        sub_20E41B8A8(0, 0xC000000000000000);

        sub_20E41B8A8(0, 0xC000000000000000);
        v110 = v104;

        sub_20E41B8A8(0, 0xC000000000000000);
        sub_20E4167F8(0, 0xC000000000000000);
        goto LABEL_235;
      }

LABEL_274:
      v121 = 0;
      goto LABEL_275;
    }

    v114 = v187;
    if (v112 > 1)
    {
      if (v112 != 2)
      {
        goto LABEL_274;
      }

      v123 = *(v201 + 16);
      v122 = *(v201 + 24);
      v36 = __OFSUB__(v122, v123);
      v121 = v122 - v123;
      if (v36)
      {
        goto LABEL_418;
      }

LABEL_275:
      if (v114 > 1)
      {
        goto LABEL_281;
      }
    }

    else
    {
      if (!v112)
      {
        v121 = BYTE6(v3);
        if (v187 <= 1)
        {
          goto LABEL_276;
        }

LABEL_281:
        if (v114 == 2)
        {
          v124 = v201;
          v127 = *(v203 + 16);
          v126 = *(v203 + 24);
          v36 = __OFSUB__(v126, v127);
          v125 = v126 - v127;
          if (!v36)
          {
            goto LABEL_283;
          }

LABEL_410:
          __break(1u);
LABEL_411:
          __break(1u);
LABEL_412:
          __break(1u);
LABEL_413:
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
LABEL_416:
          __break(1u);
LABEL_417:
          __break(1u);
LABEL_418:
          __break(1u);
LABEL_419:
          __break(1u);
LABEL_420:
          __break(1u);
LABEL_421:
          __break(1u);
LABEL_422:
          __break(1u);
LABEL_423:
          __break(1u);
LABEL_424:
          __break(1u);
        }

        v124 = v201;
        if (v121)
        {
LABEL_289:
          sub_20E41B8A8(v203, v198);

          sub_20E41B8A8(v124, v3);

          sub_20E41B8A8(v124, v3);
          sub_20E4167F8(v203, v198);
          v4 = v197;
          v98 = v206;
          goto LABEL_290;
        }

LABEL_292:
        v190 = v103;
        sub_20E41B8A8(v203, v198);

        sub_20E41B8A8(v124, v3);
        v110 = v104;

        sub_20E41B8A8(v124, v3);
        sub_20E4167F8(v203, v198);
        v4 = v197;
        v98 = v206;
LABEL_235:
        sub_20E4167F8(v201, v3);
        if (v110)
        {
          if (v193)
          {
            v111 = v190 == v192 && v104 == v193;
            if (v111 || (sub_20E4C6910() & 1) != 0)
            {
              goto LABEL_396;
            }
          }

LABEL_260:
          if ((a3 & 1) == 0)
          {
            goto LABEL_291;
          }

          goto LABEL_261;
        }

        if (v193)
        {
          goto LABEL_260;
        }

LABEL_396:

        sub_20E4167F8(v201, v3);

LABEL_397:
        v191 = 1;
LABEL_305:
        v139 = 1 << *(v196 + 32);
        v140 = -1;
        if (v139 < 64)
        {
          v140 = ~(-1 << v139);
        }

        v141 = v140 & *(v196 + 56);
        v142 = (v139 + 63) >> 6;

        v143 = 0;
        while (1)
        {
          if (v141)
          {
            v144 = v206;
          }

          else
          {
            v144 = v206;
            do
            {
              v145 = v143 + 1;
              if (__OFADD__(v143, 1))
              {
                goto LABEL_394;
              }

              if (v145 >= v142)
              {
                goto LABEL_387;
              }

              v141 = *(v196 + 56 + 8 * v145);
              ++v143;
            }

            while (!v141);
            v143 = v145;
          }

          v146 = __clz(__rbit64(v141));
          v141 &= v141 - 1;
          v147 = (*(v196 + 48) + 48 * (v146 | (v143 << 6)));
          v3 = *v147;
          v148 = v147[1];
          v149 = v147[2];
          v210 = v147[3];
          v150 = v147[4];
          v151 = v147[5];
          if (v148)
          {
            if (!v144)
            {

              sub_20E41B8A8(v149, v210);

              goto LABEL_386;
            }

            v152 = v3 == v204 && v148 == v144;
            if (!v152 && (sub_20E4C6910() & 1) == 0)
            {

LABEL_324:
              sub_20E41B8A8(v149, v210);

              if ((a3 & 1) == 0)
              {
                goto LABEL_386;
              }

              goto LABEL_380;
            }
          }

          else if (v144)
          {
            goto LABEL_324;
          }

          v202 = v3;
          if (v210 >> 60 == 15)
          {
            if (v198 >> 60 != 15)
            {
              goto LABEL_331;
            }

            v178 = v150;
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v149, v210);
            v153 = v151;

            sub_20E41B8A8(v149, v210);
          }

          else
          {
            if (v198 >> 60 == 15)
            {
LABEL_331:
              sub_20E41B8A8(v203, v198);

              sub_20E41B8A8(v149, v210);

              sub_20E41B8A8(v149, v210);
              sub_20E4167F8(v149, v210);
              v144 = v206;
              sub_20E4167F8(v203, v198);
              if ((a3 & 1) == 0)
              {
                goto LABEL_386;
              }

              goto LABEL_380;
            }

            v154 = v210 >> 62;
            if (v210 >> 62 == 3)
            {
              if (v149)
              {
                v155 = 0;
              }

              else
              {
                v155 = v210 == 0xC000000000000000;
              }

              v156 = v187;
              v158 = !v155 || v187 < 3;
              if (((v158 | v184) & 1) == 0)
              {
                v178 = v150;
                sub_20E41B8A8(0, 0xC000000000000000);

                sub_20E41B8A8(0, 0xC000000000000000);
                v153 = v151;

                sub_20E41B8A8(0, 0xC000000000000000);
                v160 = 0;
                v161 = 0xC000000000000000;
                goto LABEL_369;
              }

              v159 = 0;
            }

            else
            {
              v156 = v187;
              if (v154 == 2)
              {
                v163 = *(v149 + 16);
                v162 = *(v149 + 24);
                v36 = __OFSUB__(v162, v163);
                v159 = v162 - v163;
                if (v36)
                {
                  goto LABEL_415;
                }
              }

              else if (v154 == 1)
              {
                LODWORD(v159) = HIDWORD(v149) - v149;
                if (__OFSUB__(HIDWORD(v149), v149))
                {
                  goto LABEL_414;
                }

                v159 = v159;
              }

              else
              {
                v159 = BYTE6(v210);
              }
            }

            if (v156 > 1)
            {
              if (v156 != 2)
              {
                if (v159)
                {
LABEL_365:
                  sub_20E41B8A8(v203, v198);

                  sub_20E41B8A8(v149, v210);

                  sub_20E41B8A8(v149, v210);
                  sub_20E4167F8(v203, v198);
LABEL_366:
                  sub_20E4167F8(v149, v210);
                  v3 = v202;
                  if ((a3 & 1) == 0)
                  {
                    goto LABEL_386;
                  }

                  goto LABEL_380;
                }

LABEL_368:
                v178 = v150;
                sub_20E41B8A8(v203, v198);

                sub_20E41B8A8(v149, v210);
                v153 = v151;

                sub_20E41B8A8(v149, v210);
                v160 = v203;
                v161 = v198;
LABEL_369:
                sub_20E4167F8(v160, v161);
                goto LABEL_370;
              }

              v166 = *(v203 + 16);
              v165 = *(v203 + 24);
              v36 = __OFSUB__(v165, v166);
              v164 = v165 - v166;
              if (v36)
              {
                goto LABEL_412;
              }
            }

            else
            {
              v164 = v182;
              if (v156)
              {
                v164 = HIDWORD(v203) - v203;
                if (v180)
                {
                  goto LABEL_413;
                }
              }
            }

            if (v159 != v164)
            {
              goto LABEL_365;
            }

            if (v159 < 1)
            {
              goto LABEL_368;
            }

            v178 = v150;
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v149, v210);
            v153 = v151;

            sub_20E41B8A8(v149, v210);
            sub_20E41B8A8(v203, v198);
            v175 = sub_20E47FFE4(v149, v210, v203, v198);
            v144 = v206;
            sub_20E4167F8(v203, v198);
            if ((v175 & 1) == 0)
            {
              goto LABEL_366;
            }
          }

LABEL_370:
          sub_20E4167F8(v149, v210);
          if (v153)
          {
            if (!v193)
            {
              v3 = v202;
              v144 = v206;
              if ((a3 & 1) == 0)
              {
                goto LABEL_386;
              }

              goto LABEL_380;
            }

            v167 = v178 == v192 && v151 == v193;
            v3 = v202;
            if (v167 || (v144 = v206, (sub_20E4C6910() & 1) != 0))
            {
LABEL_401:

              sub_20E4167F8(v149, v210);

LABEL_402:
              if (v191)
              {
                result = 1;
                goto LABEL_405;
              }

LABEL_404:
              result = 0;
              goto LABEL_405;
            }
          }

          else
          {
            v3 = v202;
            v144 = v206;
            if (!v193)
            {
              goto LABEL_401;
            }
          }

          if ((a3 & 1) == 0)
          {
            goto LABEL_386;
          }

LABEL_380:
          if (v144 && v148)
          {
            LOBYTE(v212[0]) = 0;
            v168 = objc_opt_self();
            v169 = sub_20E4C6490();
            v3 = sub_20E4C6490();
            LOBYTE(v168) = [v168 compareDomain:v169 withDomainPattern:v3 outExactMatch:v212];

            sub_20E4167F8(v149, v210);

            if (v168)
            {

              goto LABEL_402;
            }
          }

          else
          {
LABEL_386:

            sub_20E4167F8(v149, v210);
          }
        }
      }

      LODWORD(v121) = HIDWORD(v201) - v201;
      if (__OFSUB__(HIDWORD(v201), v201))
      {
        goto LABEL_420;
      }

      v121 = v121;
      if (v187 > 1)
      {
        goto LABEL_281;
      }
    }

LABEL_276:
    v124 = v201;
    v125 = v182;
    if (v114)
    {
      v125 = HIDWORD(v203) - v203;
      if (v180)
      {
        goto LABEL_408;
      }
    }

LABEL_283:
    if (v121 != v125)
    {
      goto LABEL_289;
    }

    if (v121 < 1)
    {
      goto LABEL_292;
    }

    v190 = v103;
    if (v112 > 1)
    {
      if (v112 != 2)
      {
        memset(v212, 0, 14);
        v128 = v198;
        sub_20E41B8A8(v203, v198);
        sub_20E41B8A8(v203, v198);

        sub_20E41B8A8(v201, v3);
        v110 = v104;

        sub_20E41B8A8(v201, v3);
        v130 = v203;
        sub_20E41B8A8(v203, v198);
        v129 = v203;
LABEL_300:
        sub_20E47FDB4(v212, v129, v128, &v211);
        sub_20E4167F8(v130, v128);
        sub_20E4167F8(v130, v128);
        sub_20E424BA4(v130, v128);
        v98 = v206;
        v4 = v197;
        if (v211)
        {
          goto LABEL_235;
        }

LABEL_290:
        sub_20E4167F8(v201, v3);
        if ((a3 & 1) == 0)
        {
          goto LABEL_291;
        }

        goto LABEL_261;
      }

      v131 = v203;
      v171 = *(v201 + 16);
      v173 = *(v201 + 24);
      sub_20E41B8A8(v203, v198);
      sub_20E41B8A8(v203, v198);
      sub_20E41B8A8(v203, v198);

      sub_20E41B8A8(v201, v3);
      v110 = v104;

      sub_20E41B8A8(v201, v3);
      sub_20E41B8A8(v203, v198);
      v132 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v133 = v171;
      v134 = v173;
      v135 = v203;
      v136 = v198;
      v137 = v198;
    }

    else
    {
      if (!v112)
      {
        v212[0] = v201;
        LOWORD(v212[1]) = v3;
        BYTE2(v212[1]) = BYTE2(v3);
        BYTE3(v212[1]) = BYTE3(v3);
        BYTE4(v212[1]) = BYTE4(v3);
        BYTE5(v212[1]) = BYTE5(v3);
        v128 = v198;
        sub_20E41B8A8(v203, v198);
        sub_20E41B8A8(v203, v198);

        sub_20E41B8A8(v201, v3);
        v110 = v104;

        sub_20E41B8A8(v201, v3);
        sub_20E41B8A8(v203, v198);
        v129 = v203;
        v130 = v203;
        goto LABEL_300;
      }

      if (v201 >> 32 < v201)
      {
        goto LABEL_423;
      }

      v131 = v203;
      sub_20E41B8A8(v203, v198);
      sub_20E41B8A8(v203, v198);
      sub_20E41B8A8(v203, v198);

      sub_20E41B8A8(v201, v3);
      v110 = v104;

      sub_20E41B8A8(v201, v3);
      v137 = v198;
      sub_20E41B8A8(v203, v198);
      v132 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v133 = v201;
      v134 = v201 >> 32;
      v135 = v203;
      v136 = v198;
    }

    v174 = sub_20E48A8DC(v133, v134, v132, v135, v136);
    sub_20E4167F8(v131, v137);
    sub_20E4167F8(v131, v137);
    sub_20E424BA4(v131, v137);
    sub_20E424BA4(v131, v137);
    v98 = v206;
    v4 = v197;
    if (v174)
    {
      goto LABEL_235;
    }

    goto LABEL_290;
  }

  if (*(a1 + 16) != 2)
  {
    goto LABEL_404;
  }

  v42 = v4 + 56;
  v43 = 1 << *(v4 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v4 + 56);
  v208 = (v43 + 63) >> 6;
  if (v203)
  {
    v46 = 0;
  }

  else
  {
    v46 = v5 == 0xC000000000000000;
  }

  v47 = !v46;
  v186 = v47;
  v189 = v5 >> 62;
  v48 = __OFSUB__(HIDWORD(v203), v203);
  v181 = v48;
  v180 = HIDWORD(v203) - v203;
  v183 = BYTE6(v5);

  v49 = 0;
LABEL_114:
  if (v45)
  {
    v50 = v206;
    goto LABEL_121;
  }

  v50 = v206;
  while (1)
  {
    v51 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v51 >= v208)
    {
LABEL_387:

      result = 1;
      goto LABEL_405;
    }

    v45 = *(v42 + 8 * v51);
    ++v49;
    if (v45)
    {
      v49 = v51;
LABEL_121:
      v52 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v53 = (*(v4 + 48) + 48 * (v52 | (v49 << 6)));
      v54 = v53[1];
      v3 = v53[3];
      v200 = v53[2];
      v55 = v53[4];
      v56 = v53[5];
      if (!v54)
      {
        if (!v50)
        {
          goto LABEL_132;
        }

LABEL_130:
        sub_20E41B8A8(v200, v3);

        if ((a3 & 1) == 0)
        {
          goto LABEL_191;
        }

        goto LABEL_161;
      }

      if (!v50)
      {

        sub_20E41B8A8(v200, v3);

        goto LABEL_191;
      }

      if (*v53 != v204 || v54 != v50)
      {
        v58 = v50;
        v59 = v53[4];
        v60 = sub_20E4C6910();
        v55 = v59;
        v50 = v58;
        if ((v60 & 1) == 0)
        {

          goto LABEL_130;
        }
      }

LABEL_132:
      if (v3 >> 60 != 15)
      {
        v61 = v198;
        if (v198 >> 60 == 15)
        {
          goto LABEL_145;
        }

        v64 = v3 >> 62;
        if (v3 >> 62 == 3)
        {
          if (v200)
          {
            v65 = 0;
          }

          else
          {
            v65 = v3 == 0xC000000000000000;
          }

          v66 = v189;
          v68 = !v65 || v189 < 3;
          v4 = v197;
          if (((v68 | v186) & 1) == 0)
          {
            v195 = v55;
            sub_20E41B8A8(0, 0xC000000000000000);

            sub_20E41B8A8(0, 0xC000000000000000);
            v62 = v56;

            sub_20E41B8A8(0, 0xC000000000000000);
            sub_20E4167F8(0, 0xC000000000000000);
            goto LABEL_135;
          }

LABEL_174:
          v73 = 0;
          goto LABEL_175;
        }

        v66 = v189;
        if (v64 > 1)
        {
          if (v64 != 2)
          {
            goto LABEL_174;
          }

          v75 = *(v200 + 16);
          v74 = *(v200 + 24);
          v36 = __OFSUB__(v74, v75);
          v73 = v74 - v75;
          if (v36)
          {
            goto LABEL_416;
          }

LABEL_175:
          if (v66 > 1)
          {
            goto LABEL_181;
          }
        }

        else
        {
          if (!v64)
          {
            v73 = BYTE6(v3);
            if (v189 <= 1)
            {
              goto LABEL_176;
            }

LABEL_181:
            if (v66 == 2)
            {
              v76 = v200;
              v79 = *(v203 + 16);
              v78 = *(v203 + 24);
              v36 = __OFSUB__(v78, v79);
              v77 = v78 - v79;
              if (!v36)
              {
                goto LABEL_183;
              }

              __break(1u);
LABEL_407:
              __break(1u);
LABEL_408:
              __break(1u);
LABEL_409:
              __break(1u);
              goto LABEL_410;
            }

            v76 = v200;
            if (v73)
            {
LABEL_189:
              sub_20E41B8A8(v203, v198);

              sub_20E41B8A8(v76, v3);

              sub_20E41B8A8(v76, v3);
              sub_20E4167F8(v203, v198);
              v4 = v197;
              v50 = v206;
              goto LABEL_190;
            }

LABEL_192:
            v195 = v55;
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v76, v3);
            v62 = v56;

            sub_20E41B8A8(v76, v3);
            sub_20E4167F8(v203, v198);
            v4 = v197;
            v50 = v206;
LABEL_135:
            sub_20E4167F8(v200, v3);
            if (v62)
            {
              if (v193)
              {
                v63 = v195 == v192 && v56 == v193;
                if (v63 || (sub_20E4C6910() & 1) != 0)
                {
                  goto LABEL_400;
                }
              }
            }

            else if (!v193)
            {
LABEL_400:

              sub_20E4167F8(v200, v3);

              result = 0;
              goto LABEL_405;
            }

            if ((a3 & 1) == 0)
            {
              goto LABEL_191;
            }

            goto LABEL_161;
          }

          LODWORD(v73) = HIDWORD(v200) - v200;
          if (__OFSUB__(HIDWORD(v200), v200))
          {
            goto LABEL_421;
          }

          v73 = v73;
          if (v189 > 1)
          {
            goto LABEL_181;
          }
        }

LABEL_176:
        v76 = v200;
        v77 = v183;
        if (v66)
        {
          v77 = HIDWORD(v203) - v203;
          if (v181)
          {
            goto LABEL_411;
          }
        }

LABEL_183:
        if (v73 != v77)
        {
          goto LABEL_189;
        }

        if (v73 < 1)
        {
          goto LABEL_192;
        }

        v195 = v55;
        if (v64 > 1)
        {
          if (v64 != 2)
          {
            memset(v212, 0, 14);
            v80 = v198;
            sub_20E41B8A8(v203, v198);
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v200, v3);
            v62 = v56;

            sub_20E41B8A8(v200, v3);
            v82 = v203;
            sub_20E41B8A8(v203, v198);
            v81 = v203;
            goto LABEL_200;
          }

          v83 = v203;
          v172 = *(v200 + 16);
          v176 = *(v200 + 24);
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);

          sub_20E41B8A8(v200, v3);
          v62 = v56;

          sub_20E41B8A8(v200, v3);
          sub_20E41B8A8(v203, v198);
          v84 = v3 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v172;
          v86 = v176;
          v87 = v203;
          v88 = v198;
          v89 = v198;
        }

        else
        {
          if (!v64)
          {
            v212[0] = v200;
            LOWORD(v212[1]) = v3;
            BYTE2(v212[1]) = BYTE2(v3);
            BYTE3(v212[1]) = BYTE3(v3);
            BYTE4(v212[1]) = BYTE4(v3);
            BYTE5(v212[1]) = BYTE5(v3);
            v80 = v198;
            sub_20E41B8A8(v203, v198);
            sub_20E41B8A8(v203, v198);

            sub_20E41B8A8(v200, v3);
            v62 = v56;

            sub_20E41B8A8(v200, v3);
            sub_20E41B8A8(v203, v198);
            v81 = v203;
            v82 = v203;
LABEL_200:
            sub_20E47FDB4(v212, v81, v80, &v211);
            sub_20E4167F8(v82, v80);
            sub_20E4167F8(v82, v80);
            sub_20E424BA4(v82, v80);
            v50 = v206;
            v4 = v197;
            if (v211)
            {
              goto LABEL_135;
            }

LABEL_190:
            sub_20E4167F8(v200, v3);
            if ((a3 & 1) == 0)
            {
              goto LABEL_191;
            }

            goto LABEL_161;
          }

          if (v200 >> 32 < v200)
          {
            goto LABEL_424;
          }

          v83 = v203;
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);
          sub_20E41B8A8(v203, v198);

          sub_20E41B8A8(v200, v3);
          v62 = v56;

          sub_20E41B8A8(v200, v3);
          v89 = v198;
          sub_20E41B8A8(v203, v198);
          v84 = v3 & 0x3FFFFFFFFFFFFFFFLL;
          v85 = v200;
          v86 = v200 >> 32;
          v87 = v203;
          v88 = v198;
        }

        v177 = sub_20E48A8DC(v85, v86, v84, v87, v88);
        sub_20E4167F8(v83, v89);
        sub_20E4167F8(v83, v89);
        sub_20E424BA4(v83, v89);
        sub_20E424BA4(v83, v89);
        v50 = v206;
        v4 = v197;
        if (v177)
        {
          goto LABEL_135;
        }

        goto LABEL_190;
      }

      v61 = v198;
      if (v198 >> 60 == 15)
      {
        v195 = v55;
        sub_20E41B8A8(v203, v198);

        sub_20E41B8A8(v200, v3);
        v62 = v56;

        sub_20E41B8A8(v200, v3);
        v4 = v197;
        goto LABEL_135;
      }

LABEL_145:
      sub_20E41B8A8(v203, v61);

      sub_20E41B8A8(v200, v3);

      sub_20E41B8A8(v200, v3);
      sub_20E4167F8(v200, v3);
      sub_20E4167F8(v203, v61);
      v4 = v197;
      if ((a3 & 1) == 0)
      {
LABEL_191:

        sub_20E4167F8(v200, v3);

        goto LABEL_114;
      }

LABEL_161:
      if (!v50 || !v54)
      {
        goto LABEL_191;
      }

      LOBYTE(v212[0]) = 0;
      v69 = objc_opt_self();
      v70 = v3;
      v3 = v200;
      v71 = sub_20E4C6490();
      v72 = sub_20E4C6490();
      LOBYTE(v69) = [v69 compareDomain:v71 withDomainPattern:v72 outExactMatch:v212];

      sub_20E4167F8(v200, v70);

      v4 = v197;

      if (v69)
      {
LABEL_303:

        result = 0;
        goto LABEL_405;
      }

      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_43:

  sub_20E4167F8(v180, v3);
LABEL_399:

  result = 1;
LABEL_405:
  v170 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_20E47FB18(unint64_t result, uint64_t a2)
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
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_20E429A8C(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E47FC20(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v23 = (v4 + 63) >> 6;
  v24 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v26 = (v6 - 1) & v6;
LABEL_13:
    v10 = v7 | (v2 << 6);
    v11 = (*(result + 48) + 48 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v17 = v11[4];
    v16 = v11[5];
    v18 = *(*(result + 56) + v10);

    sub_20E41B8A8(v14, v15);

    v19 = v13 == 1;
    if (v13 != 1)
    {
      v27[0] = v12;
      v27[1] = v13;
      v27[2] = v14;
      v27[3] = v15;
      v27[4] = v17;
      v27[5] = v16;
      v20 = sub_20E429A50(v27);
      v22 = v21;
      sub_20E45CB00(v27);
      if (v22)
      {
        result = v24;
        v6 = v26;
        if (v18 == *(*(a2 + 56) + v20))
        {
          continue;
        }
      }
    }

    return v19;
  }

  v8 = v2;
  while (1)
  {
    v2 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v2 >= v23)
    {
      return 1;
    }

    v9 = *(v3 + 8 * v2);
    ++v8;
    if (v9)
    {
      v7 = __clz(__rbit64(v9));
      v26 = (v9 - 1) & v9;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E47FDB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_20E4C5FC0();
    if (v10)
    {
      v11 = sub_20E4C5FE0();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_20E4C5FD0();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_20E4C5FC0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_20E4C5FE0();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_20E4C5FD0();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_20E47FFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_20E48A8DC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_20E424BA4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_20E47FDB4(v14, a3, a4, &v13);
  v10 = v4;
  sub_20E424BA4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_20E480174(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_20E48C3C4(v14, *(&v14 + 1), v15, v16))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + 48 * (v10 | (v9 << 6)));
      v13 = v11[1];
      v12 = v11[2];
      v17[0] = *v11;
      v17[1] = v13;
      v17[2] = v12;
      sub_20E45CBC4(v17, &v14);
      sub_20E48876C(v17, &v14);
      sub_20E45CC20(v17);
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20E480298(uint64_t a1, uint64_t a2)
{
  v233 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v91 = MEMORY[0x277D84FA0];
    goto LABEL_338;
  }

  v2 = a1;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v212 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v225 = a2;
  v218 = (a2 + 56);
  v10 = v228;
  v9 = v229;
  v11 = v230;
  v12 = 0;
  v204 = 0;
  v211 = v8;
  v209 = a1 + 56;

LABEL_8:
  if (v7)
  {
    goto LABEL_14;
  }

  v14 = v12;
  do
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      v228 = v10;
      v229 = v9;
      v230 = v11;
      __break(1u);
      goto LABEL_340;
    }

    if (v15 >= v8)
    {
      v228 = v10;
      v229 = v9;
      v230 = v11;
      sub_20E418D5C();
      v91 = v225;
      goto LABEL_338;
    }

    v7 = *(v4 + 8 * v15);
    ++v14;
  }

  while (!v7);
  v12 = v15;
LABEL_14:
  v16 = __clz(__rbit64(v7));
  v17 = (v7 - 1) & v7;
  v18 = v2;
  v19 = (*(v2 + 48) + 48 * (v16 | (v12 << 6)));
  v20 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  v22 = v19[3];
  v24 = v19[5];
  v214 = v19[4];
  v231 = v12;
  v232 = v17;
  v25 = *(v225 + 40);
  sub_20E4C69C0();
  v217 = v24;
  v219 = v21;
  sub_20E4C69E0();
  if (v21)
  {

    sub_20E41B8A8(v23, v22);

    sub_20E4C6530();
  }

  else
  {
    sub_20E41B8A8(v23, v22);
  }

  v220 = v22 >> 60;
  sub_20E4C69E0();
  if (v22 >> 60 != 15)
  {
    sub_20E4C6130();
  }

  v221 = v22;
  v222 = v23;
  v216 = v12;
  v215 = v17;
  sub_20E4C69E0();
  if (v217)
  {
    sub_20E4C6530();
  }

  v26 = v219;
  v27 = sub_20E4C69F0();
  v28 = -1 << *(v225 + 32);
  v12 = v27 & ~v28;
  v8 = v12 >> 6;
  v29 = v218;
  v7 = 1 << v12;
  if (((1 << v12) & v218[v12 >> 6]) == 0)
  {

    sub_20E4167F8(v222, v221);
    v2 = v18;
    goto LABEL_7;
  }

  v223 = v20;
  v224 = ~v28;
  v213 = v221 >> 62;
  if (v222)
  {
    v30 = 0;
  }

  else
  {
    v30 = v221 == 0xC000000000000000;
  }

  v31 = !v30;
  LODWORD(v210) = v31;
  v201 = HIDWORD(v222);
  v32 = __OFSUB__(HIDWORD(v222), v222);
  LODWORD(v206) = v32;
  v205 = HIDWORD(v222) - v222;
  v207 = BYTE6(v221);
  v202 = v222;
  v200 = v222 >> 32;
  v199 = (v222 >> 32) - v222;
  while (2)
  {
    v33 = (*(v225 + 48) + 48 * v12);
    v35 = v33[1];
    v34 = v33[2];
    v37 = v33[3];
    v36 = v33[4];
    v4 = v33[5];
    if (!v35)
    {
      if (!v26)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    }

    if (!v26)
    {
      goto LABEL_33;
    }

    if (*v33 != v223 || v35 != v26)
    {
      v39 = v33[1];
      if ((sub_20E4C6910() & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_43:
    if (v37 >> 60 == 15)
    {
      if (v220 > 0xE)
      {

        sub_20E41B8A8(v34, v37);

        sub_20E41B8A8(v34, v37);
        sub_20E41B8A8(v222, v221);
        goto LABEL_82;
      }

LABEL_32:
      sub_20E41B8A8(v34, v37);
      sub_20E41B8A8(v222, v221);
      sub_20E4167F8(v34, v37);
      v26 = v219;
      sub_20E4167F8(v222, v221);
LABEL_33:
      v12 = (v12 + 1) & v224;
      v8 = v12 >> 6;
      v7 = 1 << v12;
      if ((v29[v12 >> 6] & (1 << v12)) != 0)
      {
        continue;
      }

      sub_20E4167F8(v222, v221);
      v4 = v209;
      v2 = v208;
LABEL_7:

      v11 = v212;
      v9 = v4;
      v10 = v2;
      v12 = v216;
      v7 = v215;
      v8 = v211;
      goto LABEL_8;
    }

    break;
  }

  if (v220 > 0xE)
  {
    goto LABEL_32;
  }

  v40 = v37 >> 62;
  if (v37 >> 62 != 3)
  {
    v42 = v213;
    if (v40 <= 1)
    {
      if (v40)
      {
        LODWORD(v47) = HIDWORD(v34) - v34;
        if (__OFSUB__(HIDWORD(v34), v34))
        {
          goto LABEL_344;
        }

        v47 = v47;
        if (v213 > 1)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v47 = BYTE6(v37);
        if (v213 > 1)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_66;
    }

    if (v40 != 2)
    {
      goto LABEL_69;
    }

    v49 = *(v34 + 16);
    v48 = *(v34 + 24);
    v50 = __OFSUB__(v48, v49);
    v47 = v48 - v49;
    if (v50)
    {
      goto LABEL_343;
    }

    if (v213 <= 1)
    {
      goto LABEL_66;
    }

LABEL_70:
    if (v42 == 2)
    {
      v53 = *(v222 + 16);
      v52 = *(v222 + 24);
      v50 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (v50)
      {
        goto LABEL_342;
      }

      goto LABEL_72;
    }

    if (!v47)
    {
      goto LABEL_80;
    }

LABEL_78:

    sub_20E41B8A8(v34, v37);

    sub_20E41B8A8(v34, v37);
    sub_20E41B8A8(v222, v221);
    v26 = v219;
    sub_20E4167F8(v222, v221);
    goto LABEL_79;
  }

  if (v34)
  {
    v41 = 0;
  }

  else
  {
    v41 = v37 == 0xC000000000000000;
  }

  v42 = v213;
  v44 = !v41 || v213 < 3;
  if (((v44 | v210) & 1) == 0)
  {

    sub_20E41B8A8(0, 0xC000000000000000);

    sub_20E41B8A8(0, 0xC000000000000000);
    sub_20E41B8A8(0, 0xC000000000000000);
    v45 = 0;
    v46 = 0xC000000000000000;
    goto LABEL_81;
  }

LABEL_69:
  v47 = 0;
  if (v42 > 1)
  {
    goto LABEL_70;
  }

LABEL_66:
  v51 = v207;
  if (v42)
  {
    v51 = v205;
    if (v206)
    {
      goto LABEL_341;
    }
  }

LABEL_72:
  if (v47 != v51)
  {
    goto LABEL_78;
  }

  if (v47 < 1)
  {
LABEL_80:

    sub_20E41B8A8(v34, v37);

    sub_20E41B8A8(v34, v37);
    sub_20E41B8A8(v222, v221);
    v45 = v222;
    v26 = v219;
    v46 = v221;
    goto LABEL_81;
  }

  v203 = v36;
  if (v40 <= 1)
  {
    if (!v40)
    {
      __s2[0] = v34;
      LOWORD(__s2[1]) = v37;
      BYTE2(__s2[1]) = BYTE2(v37);
      BYTE3(__s2[1]) = BYTE3(v37);
      BYTE4(__s2[1]) = BYTE4(v37);
      BYTE5(__s2[1]) = BYTE5(v37);
      v198 = __s2 + BYTE6(v37);

      sub_20E41B8A8(v34, v37);

      sub_20E41B8A8(v34, v37);
      v54 = v222;
      v55 = v221;
      sub_20E41B8A8(v222, v221);
      goto LABEL_104;
    }

    v198 = v34;
    if (v34 <= v34 >> 32)
    {

      sub_20E41B8A8(v34, v37);

      sub_20E41B8A8(v34, v37);
      sub_20E41B8A8(v222, v221);
      v61 = sub_20E4C5FC0();
      if (v61)
      {
        v62 = v61;
        v29 = (v37 & 0x3FFFFFFFFFFFFFFFLL);
        v63 = sub_20E4C5FE0();
        if (__OFSUB__(v198, v63))
        {
          goto LABEL_353;
        }

        v198 = &v198[v62 - v63];
      }

      else
      {
        v198 = 0;
      }

      sub_20E4C5FD0();
      v36 = v203;
      if (v213 != 2)
      {
        if (v213 == 1)
        {
          if (v200 < v202)
          {
            goto LABEL_359;
          }

          v66 = sub_20E4C5FC0();
          if (v66)
          {
            v197 = v66;
            v67 = sub_20E4C5FE0();
            if (__OFSUB__(v202, v67))
            {
              goto LABEL_366;
            }

            v36 = &v197[v202 - v67];
          }

          else
          {
            v36 = 0;
          }

          v89 = sub_20E4C5FD0();
          v85 = v199;
          if (v89 < v199)
          {
            v85 = v89;
          }

          v86 = v198;
          if (!v198)
          {
            goto LABEL_379;
          }

          if (!v36)
          {
            goto LABEL_378;
          }

LABEL_161:
          if (v86 == v36)
          {
            sub_20E4167F8(v222, v221);
            v36 = v203;
            goto LABEL_82;
          }

          v90 = memcmp(v86, v36, v85);
          sub_20E4167F8(v222, v221);
          v36 = v203;
          if (!v90)
          {
LABEL_82:
            sub_20E4167F8(v34, v37);
            if (v4)
            {
              v29 = v218;
              if (v217)
              {
                if (v36 == v214 && v4 == v217)
                {
LABEL_170:
                  v228 = v208;
                  v229 = v209;
                  v230 = v212;

                  sub_20E4167F8(v34, v37);

                  sub_20E4167F8(v222, v221);
                }

                else
                {
                  v57 = sub_20E4C6910();

                  sub_20E4167F8(v34, v37);

                  if ((v57 & 1) == 0)
                  {
                    v26 = v219;
                    goto LABEL_33;
                  }

                  v228 = v208;
                  v229 = v209;
                  v230 = v212;

                  sub_20E4167F8(v222, v221);
                }

                v94 = *(v225 + 32);
                v4 = ((1 << v94) + 63) >> 6;
                v13 = 8 * v4;
                if ((v94 & 0x3Fu) > 0xD)
                {
                  goto LABEL_347;
                }

                while (1)
                {
                  v197 = v4;
                  v198 = &v193;
                  MEMORY[0x28223BE20](v92, v93);
                  v96 = &v193 - ((v95 + 15) & 0x3FFFFFFFFFFFFFF0);
                  memcpy(v96, v29, v95);
                  v97 = *(v225 + 16);
                  v98 = *&v96[8 * v8] & ~v7;
                  v200 = v96;
                  *&v96[8 * v8] = v98;
                  v199 = v97 - 1;
LABEL_174:
                  v99 = v209;
                  v12 = v208;
                  v4 = v216;
                  v100 = v215;
                  v101 = v211;
LABEL_175:
                  if (v100)
                  {
                    break;
                  }

                  v102 = v4;
                  while (1)
                  {
                    v103 = v102 + 1;
                    if (__OFADD__(v102, 1))
                    {
                      break;
                    }

                    if (v103 >= v101)
                    {
                      v91 = sub_20E487DBC(v200, v197, v199, v225, &qword_27C8CF298, &qword_20E4C95D8, sub_20E42E740);
                      goto LABEL_337;
                    }

                    v100 = *(v99 + 8 * v103);
                    ++v102;
                    if (v100)
                    {
                      v4 = v103;
                      goto LABEL_181;
                    }
                  }

LABEL_340:
                  __break(1u);
LABEL_341:
                  v228 = v208;
                  v229 = v209;
                  v230 = v212;
                  __break(1u);
LABEL_342:
                  v228 = v208;
                  v229 = v209;
                  v230 = v212;
                  __break(1u);
LABEL_343:
                  v228 = v208;
                  v229 = v209;
                  v230 = v212;
                  __break(1u);
LABEL_344:
                  v228 = v208;
                  v229 = v209;
                  v230 = v212;
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
LABEL_347:
                  v191 = v13;

                  v29 = v191;
                  if (!swift_stdlib_isStackAllocationSafe())
                  {
                    goto LABEL_354;
                  }

                  v29 = v218;
                }

LABEL_181:
                v104 = (*(v12 + 48) + 48 * (__clz(__rbit64(v100)) | (v4 << 6)));
                v105 = *v104;
                v7 = v104[1];
                v107 = v104[2];
                v106 = v104[3];
                v108 = v104[4];
                v109 = v104[5];
                v228 = v12;
                v229 = v99;
                v230 = v212;
                v231 = v4;
                v216 = v4;
                v215 = (v100 - 1) & v100;
                v232 = v215;
                v110 = v225;
                v111 = *(v225 + 40);
                v223 = v105;
                v227[0] = v105;
                v227[1] = v7;
                v227[2] = v107;
                v227[3] = v106;
                v214 = v108;
                v227[4] = v108;
                v227[5] = v109;
                sub_20E4C69C0();

                sub_20E41B8A8(v107, v106);
                v220 = v109;

                WebDomain.hash(into:)();
                v112 = sub_20E4C69F0();
                v113 = -1 << *(v110 + 32);
                v4 = v112 & ~v113;
                v8 = v4 >> 6;
                v29 = v218;
                v114 = 1 << v4;
                v30 = ((1 << v4) & v218[v4 >> 6]) == 0;
                v222 = v106;
                v221 = v107;
                if (v30)
                {
LABEL_173:

                  sub_20E4167F8(v221, v222);

                  goto LABEL_174;
                }

                v224 = ~v113;
                v217 = v106 >> 62;
                if (v107)
                {
                  v115 = 0;
                }

                else
                {
                  v115 = v106 == 0xC000000000000000;
                }

                v116 = !v115;
                LODWORD(v213) = v116;
                v203 = HIDWORD(v107);
                v117 = __OFSUB__(HIDWORD(v107), v107);
                LODWORD(v207) = v117;
                v206 = HIDWORD(v107) - v107;
                v210 = BYTE6(v106);
                v205 = v107;
                v202 = v107 >> 32;
                v201 = (v107 >> 32) - v107;
                while (2)
                {
                  v119 = (*(v225 + 48) + 48 * v4);
                  v120 = v119[1];
                  v12 = v119[2];
                  v26 = v119[3];
                  v121 = v119[4];
                  v122 = v119[5];
                  if (!v120)
                  {
                    if (!v7)
                    {
                      goto LABEL_203;
                    }

                    goto LABEL_193;
                  }

                  if (!v7)
                  {
                    goto LABEL_193;
                  }

                  if (*v119 != v223 || v120 != v7)
                  {
                    v124 = v119[1];
                    v125 = v119[3];
                    v126 = v119[2];
                    v127 = v119[5];
                    v128 = v7;
                    v129 = v119[4];
                    v130 = sub_20E4C6910();
                    v121 = v129;
                    v7 = v128;
                    v122 = v127;
                    v12 = v126;
                    v26 = v125;
                    if ((v130 & 1) == 0)
                    {
                      goto LABEL_193;
                    }
                  }

LABEL_203:
                  if (v26 >> 60 == 15)
                  {
                    v131 = v222;
                    if (v222 >> 60 == 15)
                    {
                      v219 = v121;

                      sub_20E41B8A8(v12, v26);

                      sub_20E41B8A8(v12, v26);
                      sub_20E41B8A8(v221, v131);
                      goto LABEL_243;
                    }

LABEL_192:
                    sub_20E41B8A8(v12, v26);
                    v118 = v221;
                    sub_20E41B8A8(v221, v131);
                    sub_20E4167F8(v12, v26);
                    sub_20E4167F8(v118, v131);
LABEL_193:
                    v4 = (v4 + 1) & v224;
                    v8 = v4 >> 6;
                    v114 = 1 << v4;
                    if ((v29[v4 >> 6] & (1 << v4)) == 0)
                    {
                      goto LABEL_173;
                    }

                    continue;
                  }

                  break;
                }

                v131 = v222;
                if (v222 >> 60 == 15)
                {
                  goto LABEL_192;
                }

                v132 = v26 >> 62;
                if (v26 >> 62 == 3)
                {
                  if (v12)
                  {
                    v133 = 0;
                  }

                  else
                  {
                    v133 = v26 == 0xC000000000000000;
                  }

                  v134 = v217;
                  v136 = !v133 || v217 < 3;
                  if (((v136 | v213) & 1) == 0)
                  {
                    v219 = v121;

                    sub_20E41B8A8(0, 0xC000000000000000);

                    sub_20E41B8A8(0, 0xC000000000000000);
                    sub_20E41B8A8(0, 0xC000000000000000);
                    v137 = 0;
                    v138 = 0xC000000000000000;
LABEL_242:
                    sub_20E4167F8(v137, v138);
LABEL_243:
                    sub_20E4167F8(v12, v26);
LABEL_244:
                    if (v122)
                    {
                      v29 = v218;
                      if (v220)
                      {
                        if (v219 == v214 && v122 == v220)
                        {

                          sub_20E4167F8(v12, v26);

                          sub_20E4167F8(v221, v222);
                          goto LABEL_332;
                        }

                        v152 = sub_20E4C6910();

                        sub_20E4167F8(v12, v26);

                        if (v152)
                        {
                          goto LABEL_331;
                        }

                        goto LABEL_251;
                      }

                      sub_20E4167F8(v12, v26);
                    }

                    else
                    {

                      sub_20E4167F8(v12, v26);
                      v29 = v218;
                      if (!v220)
                      {

LABEL_331:

                        sub_20E4167F8(v221, v222);
LABEL_332:

                        v187 = *(v200 + 8 * v8);
                        *(v200 + 8 * v8) = v187 & ~v114;
                        v99 = v209;
                        v12 = v208;
                        v4 = v216;
                        v100 = v215;
                        v101 = v211;
                        if ((v187 & v114) != 0)
                        {
                          v188 = v199 - 1;
                          if (__OFSUB__(v199, 1))
                          {
                            goto LABEL_375;
                          }

                          --v199;
                          if (!v188)
                          {

                            v91 = MEMORY[0x277D84FA0];
                            goto LABEL_337;
                          }
                        }

                        goto LABEL_175;
                      }
                    }

                    goto LABEL_193;
                  }

LABEL_229:
                  v139 = 0;
                  if (v134 > 1)
                  {
                    goto LABEL_230;
                  }

LABEL_226:
                  v142 = v210;
                  if (v134)
                  {
                    v142 = v206;
                    if (v207)
                    {
                      goto LABEL_346;
                    }
                  }

LABEL_232:
                  if (v139 == v142)
                  {
                    if (v139 >= 1)
                    {
                      v219 = v121;
                      if (v132 > 1)
                      {
                        v153 = v221;
                        if (v132 != 2)
                        {
                          memset(__s2, 0, 14);

                          sub_20E41B8A8(v12, v26);

                          sub_20E41B8A8(v12, v26);
                          v161 = v222;
                          sub_20E41B8A8(v153, v222);
                          v162 = v153;
                          v36 = v204;
                          sub_20E47FDB4(__s2, v162, v161, v227);
                          v204 = v36;
                          if (v36)
                          {
                            goto LABEL_395;
                          }

                          v147 = v221;
                          v148 = v161;
                          goto LABEL_270;
                        }

                        v196 = *(v12 + 16);

                        sub_20E41B8A8(v12, v26);

                        sub_20E41B8A8(v12, v26);
                        sub_20E41B8A8(v153, v222);
                        v154 = sub_20E4C5FC0();
                        if (v154)
                        {
                          v155 = v154;
                          v156 = sub_20E4C5FE0();
                          if (__OFSUB__(v196, v156))
                          {
                            goto LABEL_361;
                          }

                          v196 = &v196[v155 - v156];
                        }

                        else
                        {
                          v196 = 0;
                        }

                        sub_20E4C5FD0();
                        if (v217 != 2)
                        {
                          v36 = v222;
                          if (v217 == 1)
                          {
                            if (v202 < v205)
                            {
                              goto LABEL_367;
                            }

                            v36 = sub_20E4C5FC0();
                            if (v36)
                            {
                              v164 = sub_20E4C5FE0();
                              if (__OFSUB__(v205, v164))
                              {
                                goto LABEL_373;
                              }

                              v36 += v205 - v164;
                            }

                            v165 = sub_20E4C5FD0();
                            v166 = v201;
                            if (v165 < v201)
                            {
                              v166 = v165;
                            }

                            v167 = v196;
                            if (!v196)
                            {
                              goto LABEL_393;
                            }

                            if (!v36)
                            {
                              goto LABEL_392;
                            }

                            goto LABEL_295;
                          }

                          v176 = v196;
                          v177 = v221;
                          LODWORD(__s2[0]) = v221;
                          BYTE4(__s2[0]) = v203;
                          *(__s2 + 5) = *(&v221 + 5);
                          HIBYTE(__s2[0]) = HIBYTE(v221);
                          LODWORD(__s2[1]) = v222;
                          WORD2(__s2[1]) = WORD2(v222);
                          if (!v196)
                          {
                            goto LABEL_388;
                          }

                          goto LABEL_306;
                        }

                        v172 = *(v221 + 24);
                        v195 = *(v221 + 16);
                        v194 = v172;
                        v173 = sub_20E4C5FC0();
                        if (v173)
                        {
                          v193 = v173;
                          v174 = sub_20E4C5FE0();
                          v175 = v195;
                          if (__OFSUB__(v195, v174))
                          {
                            goto LABEL_371;
                          }

                          v193 = &v195[v193 - v174];
                        }

                        else
                        {
                          v193 = 0;
                          v175 = v195;
                        }

                        v36 = (v194 - v175);
                        if (__OFSUB__(v194, v175))
                        {
                          goto LABEL_368;
                        }

                        v183 = sub_20E4C5FD0();
                        if (v183 >= v36)
                        {
                          v184 = v36;
                        }

                        else
                        {
                          v184 = v183;
                        }

                        v167 = v196;
                        if (!v196)
                        {
                          goto LABEL_385;
                        }

                        v171 = v193;
                        if (!v193)
                        {
                          goto LABEL_394;
                        }
                      }

                      else
                      {
                        if (!v132)
                        {
                          __s2[0] = v12;
                          LOWORD(__s2[1]) = v26;
                          BYTE2(__s2[1]) = BYTE2(v26);
                          BYTE3(__s2[1]) = BYTE3(v26);
                          BYTE4(__s2[1]) = BYTE4(v26);
                          BYTE5(__s2[1]) = BYTE5(v26);
                          v196 = __s2 + BYTE6(v26);

                          sub_20E41B8A8(v12, v26);

                          sub_20E41B8A8(v12, v26);
                          v145 = v221;
                          sub_20E41B8A8(v221, v131);
                          v146 = v131;
                          v36 = v204;
                          sub_20E47FDB4(__s2, v145, v146, v227);
                          v204 = v36;
                          if (v36)
                          {
                            goto LABEL_395;
                          }

                          v147 = v145;
                          v148 = v222;
LABEL_270:
                          sub_20E4167F8(v147, v148);
                          v163 = v227[0];
                          sub_20E4167F8(v12, v26);
                          if (v163)
                          {
                            goto LABEL_244;
                          }

LABEL_240:

                          sub_20E4167F8(v12, v26);

LABEL_251:
                          v29 = v218;
                          goto LABEL_193;
                        }

                        v196 = v12;
                        v157 = v221;
                        if (v12 > v12 >> 32)
                        {
                          __break(1u);
LABEL_357:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_358:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_359:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_360:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_361:
                          __break(1u);
LABEL_362:
                          __break(1u);
LABEL_363:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_364:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_365:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_366:
                          v228 = v208;
                          v229 = v209;
                          v230 = v212;
                          __break(1u);
LABEL_367:
                          __break(1u);
LABEL_368:
                          __break(1u);
LABEL_369:
                          __break(1u);
LABEL_370:
                          __break(1u);
LABEL_371:
                          __break(1u);
LABEL_372:
                          __break(1u);
LABEL_373:
                          __break(1u);
LABEL_374:
                          __break(1u);
LABEL_375:
                          __break(1u);
                        }

                        sub_20E41B8A8(v12, v26);

                        sub_20E41B8A8(v12, v26);
                        sub_20E41B8A8(v157, v222);
                        v158 = sub_20E4C5FC0();
                        if (v158)
                        {
                          v159 = v158;
                          v160 = sub_20E4C5FE0();
                          if (__OFSUB__(v196, v160))
                          {
                            goto LABEL_362;
                          }

                          v196 = &v196[v159 - v160];
                        }

                        else
                        {
                          v196 = 0;
                        }

                        sub_20E4C5FD0();
                        if (v217 != 2)
                        {
                          v36 = v222;
                          if (v217 == 1)
                          {
                            if (v202 < v205)
                            {
                              goto LABEL_369;
                            }

                            v36 = sub_20E4C5FC0();
                            if (v36)
                            {
                              v168 = sub_20E4C5FE0();
                              if (__OFSUB__(v205, v168))
                              {
                                goto LABEL_374;
                              }

                              v36 += v205 - v168;
                            }

                            v169 = sub_20E4C5FD0();
                            v166 = v201;
                            if (v169 < v201)
                            {
                              v166 = v169;
                            }

                            v167 = v196;
                            if (!v196)
                            {
                              goto LABEL_390;
                            }

                            if (!v36)
                            {
                              goto LABEL_389;
                            }

LABEL_295:
                            if (v167 != v36)
                            {
                              v170 = v166;
                              v171 = v36;
                              goto LABEL_326;
                            }

                            goto LABEL_324;
                          }

                          v176 = v196;
                          v177 = v221;
                          LODWORD(__s2[0]) = v221;
                          BYTE4(__s2[0]) = v203;
                          *(__s2 + 5) = *(&v221 + 5);
                          HIBYTE(__s2[0]) = HIBYTE(v221);
                          LODWORD(__s2[1]) = v222;
                          WORD2(__s2[1]) = WORD2(v222);
                          if (!v196)
                          {
                            goto LABEL_391;
                          }

LABEL_306:
                          LODWORD(v196) = memcmp(v176, __s2, v210);
                          sub_20E4167F8(v177, v36);
                          sub_20E4167F8(v12, v26);
                          if (!v196)
                          {
                            goto LABEL_244;
                          }

                          goto LABEL_240;
                        }

                        v178 = *(v221 + 24);
                        v195 = *(v221 + 16);
                        v194 = v178;
                        v179 = sub_20E4C5FC0();
                        if (v179)
                        {
                          v193 = v179;
                          v180 = sub_20E4C5FE0();
                          v181 = v195;
                          if (__OFSUB__(v195, v180))
                          {
                            goto LABEL_372;
                          }

                          v182 = &v195[v193 - v180];
                        }

                        else
                        {
                          v182 = 0;
                          v181 = v195;
                        }

                        v195 = v182;
                        v36 = (v194 - v181);
                        if (__OFSUB__(v194, v181))
                        {
                          goto LABEL_370;
                        }

                        v185 = sub_20E4C5FD0();
                        if (v185 >= v36)
                        {
                          v184 = v36;
                        }

                        else
                        {
                          v184 = v185;
                        }

                        v167 = v196;
                        if (!v196)
                        {
                          goto LABEL_387;
                        }

                        v171 = v195;
                        if (!v195)
                        {
                          goto LABEL_386;
                        }
                      }

                      if (v167 != v171)
                      {
                        v170 = v184;
LABEL_326:
                        v186 = memcmp(v167, v171, v170);
                        sub_20E4167F8(v221, v222);
                        sub_20E4167F8(v12, v26);
                        if (!v186)
                        {
                          goto LABEL_244;
                        }

                        goto LABEL_240;
                      }

LABEL_324:
                      v137 = v221;
                      v138 = v222;
                      goto LABEL_242;
                    }

LABEL_241:
                    v219 = v121;

                    sub_20E41B8A8(v12, v26);

                    sub_20E41B8A8(v12, v26);
                    v150 = v221;
                    sub_20E41B8A8(v221, v131);
                    v137 = v150;
                    v138 = v131;
                    goto LABEL_242;
                  }
                }

                else
                {
                  v134 = v217;
                  if (v132 <= 1)
                  {
                    if (v132)
                    {
                      LODWORD(v139) = HIDWORD(v12) - v12;
                      if (__OFSUB__(HIDWORD(v12), v12))
                      {
                        __break(1u);
LABEL_350:
                        __break(1u);
                        goto LABEL_351;
                      }

                      v139 = v139;
                      if (v217 > 1)
                      {
                        goto LABEL_230;
                      }
                    }

                    else
                    {
                      v139 = BYTE6(v26);
                      if (v217 > 1)
                      {
                        goto LABEL_230;
                      }
                    }

                    goto LABEL_226;
                  }

                  if (v132 != 2)
                  {
                    goto LABEL_229;
                  }

                  v141 = *(v12 + 16);
                  v140 = *(v12 + 24);
                  v50 = __OFSUB__(v140, v141);
                  v139 = v140 - v141;
                  if (v50)
                  {
                    goto LABEL_350;
                  }

                  if (v217 <= 1)
                  {
                    goto LABEL_226;
                  }

LABEL_230:
                  if (v134 == 2)
                  {
                    v144 = *(v221 + 16);
                    v143 = *(v221 + 24);
                    v50 = __OFSUB__(v143, v144);
                    v142 = v143 - v144;
                    if (v50)
                    {
                      goto LABEL_345;
                    }

                    goto LABEL_232;
                  }

                  if (!v139)
                  {
                    goto LABEL_241;
                  }
                }

                sub_20E41B8A8(v12, v26);

                sub_20E41B8A8(v12, v26);
                v149 = v221;
                sub_20E41B8A8(v221, v131);
                sub_20E4167F8(v149, v131);
                sub_20E4167F8(v12, v26);
                goto LABEL_240;
              }
            }

            else
            {
              v29 = v218;
              if (!v217)
              {
                goto LABEL_170;
              }
            }

            sub_20E4167F8(v34, v37);

            goto LABEL_33;
          }

LABEL_79:
          sub_20E4167F8(v34, v37);

          sub_20E4167F8(v34, v37);

          v29 = v218;
          goto LABEL_33;
        }

        v73 = v198;
        LODWORD(__s2[0]) = v222;
        v74 = v221;
        BYTE4(__s2[0]) = v201;
        *(__s2 + 5) = *(&v222 + 5);
        HIBYTE(__s2[0]) = HIBYTE(v222);
        LODWORD(__s2[1]) = v221;
        WORD2(__s2[1]) = WORD2(v221);
        if (!v198)
        {
          goto LABEL_377;
        }

LABEL_129:
        LODWORD(v198) = memcmp(v73, __s2, v207);
        sub_20E4167F8(v222, v74);
        if (!v198)
        {
          goto LABEL_82;
        }

        goto LABEL_79;
      }

      v75 = *(v222 + 24);
      v197 = *(v222 + 16);
      v196 = v75;
      v76 = sub_20E4C5FC0();
      if (v76)
      {
        v195 = v76;
        v77 = sub_20E4C5FE0();
        v78 = v197;
        if (__OFSUB__(v197, v77))
        {
          goto LABEL_365;
        }

        v79 = &v197[v195 - v77];
      }

      else
      {
        v79 = 0;
        v78 = v197;
      }

      v197 = v79;
      v36 = &v196[-v78];
      if (__OFSUB__(v196, v78))
      {
        goto LABEL_360;
      }

      v87 = sub_20E4C5FD0();
      if (v87 >= v36)
      {
        v81 = v36;
      }

      else
      {
        v81 = v87;
      }

      v82 = v198;
      if (!v198)
      {
        goto LABEL_381;
      }

      v36 = v203;
      v83 = v197;
      if (!v197)
      {
        goto LABEL_380;
      }

      goto LABEL_152;
    }

LABEL_351:
    v228 = v208;
    v229 = v209;
    v230 = v212;
    __break(1u);
LABEL_352:
    v228 = v208;
    v229 = v209;
    v230 = v212;
    __break(1u);
LABEL_353:
    v228 = v208;
    v229 = v209;
    v230 = v212;
    __break(1u);
LABEL_354:
    v26 = swift_slowAlloc();
    memcpy(v26, v218, v29);
    v36 = v204;
    sub_20E4895E4(v26, v4, v225, v12, &v228);
    v91 = v192;

    if (v36)
    {
      goto LABEL_396;
    }

    MEMORY[0x20F32FA80](v26, -1, -1);
    v212 = v230;
LABEL_337:
    sub_20E418D5C();
LABEL_338:
    v189 = *MEMORY[0x277D85DE8];
    return v91;
  }

  if (v40 != 2)
  {
    memset(__s2, 0, 14);

    sub_20E41B8A8(v34, v37);

    sub_20E41B8A8(v34, v37);
    v54 = v222;
    v55 = v221;
    sub_20E41B8A8(v222, v221);
LABEL_104:
    sub_20E47FDB4(__s2, v54, v55, v227);
    sub_20E4167F8(v222, v55);
    v36 = v203;
    if (v227[0])
    {
      goto LABEL_82;
    }

    goto LABEL_79;
  }

  v198 = *(v34 + 16);

  sub_20E41B8A8(v34, v37);

  sub_20E41B8A8(v34, v37);
  sub_20E41B8A8(v222, v221);
  v58 = sub_20E4C5FC0();
  if (v58)
  {
    v59 = v58;
    v29 = (v37 & 0x3FFFFFFFFFFFFFFFLL);
    v60 = sub_20E4C5FE0();
    if (__OFSUB__(v198, v60))
    {
      goto LABEL_352;
    }

    v198 = &v198[v59 - v60];
  }

  else
  {
    v198 = 0;
  }

  sub_20E4C5FD0();
  v36 = v203;
  if (v213 != 2)
  {
    if (v213 == 1)
    {
      if (v200 < v202)
      {
        goto LABEL_357;
      }

      v64 = sub_20E4C5FC0();
      if (v64)
      {
        v197 = v64;
        v65 = sub_20E4C5FE0();
        if (__OFSUB__(v202, v65))
        {
          goto LABEL_364;
        }

        v36 = &v197[v202 - v65];
      }

      else
      {
        v36 = 0;
      }

      v84 = sub_20E4C5FD0();
      v85 = v199;
      if (v84 < v199)
      {
        v85 = v84;
      }

      v86 = v198;
      if (!v198)
      {
        goto LABEL_384;
      }

      if (!v36)
      {
        goto LABEL_383;
      }

      goto LABEL_161;
    }

    v73 = v198;
    LODWORD(__s2[0]) = v222;
    v74 = v221;
    BYTE4(__s2[0]) = v201;
    *(__s2 + 5) = *(&v222 + 5);
    HIBYTE(__s2[0]) = HIBYTE(v222);
    LODWORD(__s2[1]) = v221;
    WORD2(__s2[1]) = WORD2(v221);
    if (!v198)
    {
      goto LABEL_382;
    }

    goto LABEL_129;
  }

  v68 = *(v222 + 24);
  v197 = *(v222 + 16);
  v196 = v68;
  v69 = sub_20E4C5FC0();
  if (v69)
  {
    v195 = v69;
    v70 = sub_20E4C5FE0();
    v71 = v197;
    if (__OFSUB__(v197, v70))
    {
      goto LABEL_363;
    }

    v72 = &v197[v195 - v70];
  }

  else
  {
    v72 = 0;
    v71 = v197;
  }

  v197 = v72;
  v36 = &v196[-v71];
  if (__OFSUB__(v196, v71))
  {
    goto LABEL_358;
  }

  v80 = sub_20E4C5FD0();
  if (v80 >= v36)
  {
    v81 = v36;
  }

  else
  {
    v81 = v80;
  }

  v82 = v198;
  if (!v198)
  {
    goto LABEL_376;
  }

  v36 = v203;
  v83 = v197;
  if (v197)
  {
LABEL_152:
    if (v82 != v83)
    {
      v88 = memcmp(v82, v83, v81);
      sub_20E4167F8(v222, v221);
      if (!v88)
      {
        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v45 = v222;
    v46 = v221;
LABEL_81:
    sub_20E4167F8(v45, v46);
    goto LABEL_82;
  }

  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_376:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_377:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_378:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_379:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_380:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_381:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_382:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_383:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_384:
  v228 = v208;
  v229 = v209;
  v230 = v212;
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
  v228 = v208;
  v229 = v209;
  v230 = v212;
LABEL_395:

  __break(1u);
LABEL_396:

  result = MEMORY[0x20F32FA80](v26, -1, -1);
  __break(1u);
  return result;
}

void *sub_20E482820(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t), void (*a4)(uint64_t, unint64_t), uint64_t *a5, uint64_t *a6)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v12 = *(a2 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v17);
    bzero(v23 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);
    sub_20E482DEC((v23 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0)), v14, a2, a1, a3, a4, a5, a6, a3);
    v19 = v18;
  }

  else
  {
    v22 = swift_slowAlloc();

    v19 = sub_20E482C88(v22, v14, a2, a1, a3, a4, a5, a6);

    MEMORY[0x20F32FA80](v22, -1, -1);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void *sub_20E482A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v13);
    bzero(v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(v18 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v17 = swift_slowAlloc();

    v14 = sub_20E482D54(v17, v10, a2, a1, a4);

    MEMORY[0x20F32FA80](v17, -1, -1);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void *sub_20E482C08(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85DE8];

  return sub_20E482A2C(a1, a2, sub_20E486454, sub_20E486454);
}

void *sub_20E482C88(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), void (*a6)(uint64_t, unint64_t), uint64_t *a7, uint64_t *a8)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v11 = a2;
      v12 = a8;
      v13 = a7;
      v14 = a6;
      v15 = a5;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v11;
      a5 = v15;
      a6 = v14;
      a7 = v13;
      a8 = v12;
    }

    sub_20E482DEC(result, a2, a3, a4, a5, a6, a7, a8, a5);
    v17 = v16;

    return v17;
  }

  return result;
}

void *sub_20E482D54(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_20E482DEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, unint64_t), void (*a6)(uint64_t, unint64_t), uint64_t *a7, uint64_t *a8, void (*a9)(uint64_t, unint64_t))
{
  v9 = a4;
  v10 = a3;
  v238 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_173;
  }

  v197 = 0;
  v11 = 0;
  v12 = a4 + 56;
  v13 = 1 << *(a4 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  v16 = (v13 + 63) >> 6;
  v233 = a3 + 56;
  v193 = v16;
  v195 = a4 + 56;
  while (2)
  {
    while (2)
    {
      if (v15)
      {
        v201 = v11;
        v203 = (v15 - 1) & v15;
        v17 = __clz(__rbit64(v15)) | (v11 << 6);
      }

      else
      {
        v18 = v11;
        do
        {
          v19 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_350;
          }

          if (v19 >= v16)
          {
LABEL_348:

            sub_20E487DBC(a1, a2, v197, v10, a7, a8, a9);
            v172 = *MEMORY[0x277D85DE8];
            return;
          }

          v20 = *(v12 + 8 * v19);
          ++v18;
        }

        while (!v20);
        v201 = v19;
        v203 = (v20 - 1) & v20;
        v17 = __clz(__rbit64(v20)) | (v19 << 6);
      }

      v21 = (*(v9 + 48) + 48 * v17);
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[3];
      v226 = v21[2];
      v25 = v21[5];
      v207 = v21[4];
      v26 = *(v10 + 40);
      sub_20E4C69C0();
      v228 = v22;
      sub_20E4C69E0();
      if (v22)
      {

        a5(v226, v24);

        sub_20E4C6530();
      }

      else
      {
        a5(v226, v24);
      }

      v218 = v24 >> 60;
      sub_20E4C69E0();
      if (v24 >> 60 != 15)
      {
        sub_20E4C6130();
      }

      v211 = v25;
      v221 = v24;
      sub_20E4C69E0();
      if (v25)
      {
        sub_20E4C6530();
      }

      v27 = sub_20E4C69F0();
      v10 = a3;
      v28 = -1 << *(a3 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if (((1 << v29) & *(v233 + 8 * (v29 >> 6))) == 0)
      {
LABEL_6:

        a6(v226, v221);

        v9 = a4;
        v16 = v193;
        v12 = v195;
        v11 = v201;
        v15 = v203;
        continue;
      }

      break;
    }

    v223 = v23;
    v231 = ~v28;
    v205 = v24 >> 62;
    if (v226)
    {
      v32 = 0;
    }

    else
    {
      v32 = v24 == 0xC000000000000000;
    }

    v33 = !v32;
    v199 = v33;
    v34 = __OFSUB__(HIDWORD(v226), v226);
    v191 = v34;
    v181 = (v226 >> 32) - v226;
    v183 = v226 >> 32;
    v35 = v228;
    while (1)
    {
      v36 = (*(v10 + 48) + 48 * v29);
      v38 = v36[1];
      v37 = v36[2];
      v40 = v36[3];
      v39 = v36[4];
      v41 = v36[5];
      if (v38)
      {
        if (!v35)
        {
          goto LABEL_34;
        }

        if (*v36 != v223 || v38 != v35)
        {
          v43 = v36[4];
          v44 = sub_20E4C6910();
          v39 = v43;
          v35 = v228;
          if ((v44 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else if (v35)
      {
        goto LABEL_34;
      }

      if (v40 >> 60 != 15)
      {
        break;
      }

      if (v218 > 0xE)
      {
        v209 = v39;

        a5(v37, v40);

        a5(v37, v40);
        a5(v226, v221);
        v45 = a6;
        goto LABEL_47;
      }

LABEL_32:
      a5(v37, v40);
      a5(v226, v221);
      a6(v37, v40);
      a6(v226, v221);
LABEL_33:
      v35 = v228;
LABEL_34:
      v29 = (v29 + 1) & v231;
      v30 = v29 >> 6;
      v31 = 1 << v29;
      if ((*(v233 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v218 > 0xE)
    {
      goto LABEL_32;
    }

    v48 = v40 >> 62;
    if (v40 >> 62 != 3)
    {
      v53 = a6;
      v50 = v205;
      if (v48 <= 1)
      {
        if (v48)
        {
          LODWORD(v54) = HIDWORD(v37) - v37;
          if (__OFSUB__(HIDWORD(v37), v37))
          {
            goto LABEL_356;
          }

          v54 = v54;
          if (v205 > 1)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v54 = BYTE6(v40);
          if (v205 > 1)
          {
            goto LABEL_83;
          }
        }

        goto LABEL_79;
      }

      if (v48 != 2)
      {
        goto LABEL_82;
      }

      v56 = *(v37 + 16);
      v55 = *(v37 + 24);
      v57 = __OFSUB__(v55, v56);
      v54 = v55 - v56;
      if (v57)
      {
        goto LABEL_358;
      }

      if (v205 <= 1)
      {
        goto LABEL_79;
      }

LABEL_83:
      if (v50 == 2)
      {
        v60 = *(v226 + 16);
        v59 = *(v226 + 24);
        v57 = __OFSUB__(v59, v60);
        v58 = v59 - v60;
        if (v57)
        {
          goto LABEL_353;
        }

        goto LABEL_85;
      }

      if (v54)
      {
LABEL_91:

        a5(v37, v40);

        a5(v37, v40);
        a5(v226, v221);
        v53(v226, v221);
        v45 = v53;
LABEL_92:
        v45(v37, v40);

        v45(v37, v40);

        v10 = a3;
        goto LABEL_33;
      }

      goto LABEL_93;
    }

    if (v37)
    {
      v49 = 0;
    }

    else
    {
      v49 = v40 == 0xC000000000000000;
    }

    v50 = v205;
    v52 = !v49 || v205 < 3;
    v53 = a6;
    if (((v52 | v199) & 1) == 0)
    {
      v209 = v39;

      a5(0, 0xC000000000000000);

      a5(0, 0xC000000000000000);
      a5(0, 0xC000000000000000);
      a6(0, 0xC000000000000000);
      v45 = a6;
      a6(v37, v40);
      goto LABEL_48;
    }

LABEL_82:
    v54 = 0;
    if (v50 > 1)
    {
      goto LABEL_83;
    }

LABEL_79:
    v58 = BYTE6(v221);
    if (v50)
    {
      v58 = HIDWORD(v226) - v226;
      if (v191)
      {
        goto LABEL_354;
      }
    }

LABEL_85:
    if (v54 != v58)
    {
      goto LABEL_91;
    }

    if (v54 < 1)
    {
LABEL_93:
      v209 = v39;

      a5(v37, v40);

      a5(v37, v40);
      a5(v226, v221);
      v45 = a6;
      a6(v226, v221);
      a6(v37, v40);
      goto LABEL_48;
    }

    v185 = v41;
    v209 = v39;
    if (v48 > 1)
    {
      if (v48 != 2)
      {
        *&__s2[6] = 0;
        *__s2 = 0;

        a5(v37, v40);

        a5(v37, v40);
        v61 = v226;
        v62 = v221;
        a5(v226, v221);
        goto LABEL_118;
      }

      v63 = *(v37 + 16);

      a5(v37, v40);

      a5(v37, v40);
      a5(v226, v221);
      v64 = sub_20E4C5FC0();
      if (v64)
      {
        v65 = sub_20E4C5FE0();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_362;
        }

        v64 += v63 - v65;
      }

      sub_20E4C5FD0();
      if (v205 != 2)
      {
        if (v205 == 1)
        {
          if (v183 < v226)
          {
            goto LABEL_366;
          }

          v66 = sub_20E4C5FC0();
          if (v66)
          {
            v213 = v64;
            v67 = v66;
            v68 = sub_20E4C5FE0();
            if (__OFSUB__(v226, v68))
            {
              goto LABEL_375;
            }

            v69 = (v226 - v68 + v67);
            v64 = v213;
          }

          else
          {
            v69 = 0;
          }

          v88 = sub_20E4C5FD0();
          v89 = (v226 >> 32) - v226;
          if (v88 < v181)
          {
            v89 = v88;
          }

          if (!v64)
          {
            goto LABEL_396;
          }

          if (!v69)
          {
            goto LABEL_393;
          }

          goto LABEL_159;
        }

        *__s2 = v226;
        v77 = v221;
        *&__s2[8] = v221;
        *&__s2[12] = WORD2(v221);
        if (!v64)
        {
          goto LABEL_398;
        }

        goto LABEL_130;
      }

      v215 = v64;
      v74 = *(v226 + 16);
      v177 = *(v226 + 24);
      v75 = sub_20E4C5FC0();
      if (v75)
      {
        v173 = v75;
        v76 = sub_20E4C5FE0();
        if (__OFSUB__(v74, v76))
        {
          goto LABEL_373;
        }

        v69 = (v74 - v76 + v173);
      }

      else
      {
        v69 = 0;
      }

      v57 = __OFSUB__(v177, v74);
      v84 = v177 - v74;
      if (v57)
      {
        goto LABEL_367;
      }

      v85 = sub_20E4C5FD0();
      if (v85 >= v84)
      {
        v86 = v84;
      }

      else
      {
        v86 = v85;
      }

      v87 = v215;
      if (!v215)
      {
        goto LABEL_397;
      }

      if (!v69)
      {
        goto LABEL_395;
      }

LABEL_152:
      if (v87 == v69)
      {
        goto LABEL_160;
      }

      v92 = v86;
      goto LABEL_162;
    }

    if (!v48)
    {
      *__s2 = v37;
      *&__s2[8] = v40;
      __s2[10] = BYTE2(v40);
      __s2[11] = BYTE3(v40);
      __s2[12] = BYTE4(v40);
      __s2[13] = BYTE5(v40);

      a5(v37, v40);

      a5(v37, v40);
      v61 = v226;
      v62 = v221;
      a5(v226, v221);
LABEL_118:
      sub_20E47FDB4(__s2, v61, v62, &v236);
      if (v200)
      {
        goto LABEL_400;
      }

      v45 = a6;
      a6(v226, v62);
      v41 = v185;
      if (!v236)
      {
        goto LABEL_92;
      }

LABEL_47:
      v45(v37, v40);
      goto LABEL_48;
    }

    if (v37 > v37 >> 32)
    {
      goto LABEL_359;
    }

    a5(v37, v40);

    a5(v37, v40);
    a5(v226, v221);
    v64 = sub_20E4C5FC0();
    if (v64)
    {
      v70 = sub_20E4C5FE0();
      if (__OFSUB__(v37, v70))
      {
        goto LABEL_363;
      }

      v64 += v37 - v70;
    }

    sub_20E4C5FD0();
    if (v205 == 2)
    {
      v216 = v64;
      v78 = *(v226 + 16);
      v178 = *(v226 + 24);
      v79 = sub_20E4C5FC0();
      if (v79)
      {
        v174 = v79;
        v80 = sub_20E4C5FE0();
        if (__OFSUB__(v78, v80))
        {
          goto LABEL_378;
        }

        v69 = (v78 - v80 + v174);
      }

      else
      {
        v69 = 0;
      }

      v57 = __OFSUB__(v178, v78);
      v90 = v178 - v78;
      if (v57)
      {
        goto LABEL_371;
      }

      v91 = sub_20E4C5FD0();
      if (v91 >= v90)
      {
        v86 = v90;
      }

      else
      {
        v86 = v91;
      }

      v87 = v216;
      if (!v216)
      {
        goto LABEL_390;
      }

      if (!v69)
      {
        goto LABEL_399;
      }

      goto LABEL_152;
    }

    if (v205 != 1)
    {
      *__s2 = v226;
      v77 = v221;
      *&__s2[8] = v221;
      *&__s2[12] = WORD2(v221);
      if (!v64)
      {
        goto LABEL_394;
      }

LABEL_130:
      v81 = memcmp(v64, __s2, BYTE6(v221));
      v82 = v226;
      v83 = v77;
      goto LABEL_163;
    }

    if (v183 < v226)
    {
      goto LABEL_369;
    }

    v71 = sub_20E4C5FC0();
    if (v71)
    {
      v214 = v64;
      v72 = v71;
      v73 = sub_20E4C5FE0();
      if (__OFSUB__(v226, v73))
      {
        goto LABEL_380;
      }

      v69 = (v226 - v73 + v72);
      v64 = v214;
    }

    else
    {
      v69 = 0;
    }

    v93 = sub_20E4C5FD0();
    v89 = (v226 >> 32) - v226;
    if (v93 < v181)
    {
      v89 = v93;
    }

    if (!v64)
    {
      goto LABEL_392;
    }

    if (!v69)
    {
      goto LABEL_391;
    }

LABEL_159:
    if (v64 != v69)
    {
      v92 = v89;
      v87 = v64;
LABEL_162:
      v81 = memcmp(v87, v69, v92);
      v82 = v226;
      v83 = v221;
LABEL_163:
      v45 = a6;
      a6(v82, v83);
      v41 = v185;
      if (v81)
      {
        goto LABEL_92;
      }

      goto LABEL_47;
    }

LABEL_160:
    v45 = a6;
    a6(v226, v221);
    v41 = v185;
    a6(v37, v40);
LABEL_48:
    if (v41)
    {
      v10 = a3;
      if (v211)
      {
        if (v209 == v207 && v41 == v211)
        {

          a6(v37, v40);

          a6(v226, v221);
          goto LABEL_169;
        }

        v47 = sub_20E4C6910();

        a6(v37, v40);

        if (v47)
        {

          a6(v226, v221);

          v10 = a3;
          goto LABEL_170;
        }

        v10 = a3;
      }

      else
      {

        a6(v37, v40);
      }

      goto LABEL_33;
    }

    v45(v37, v40);
    v10 = a3;
    if (v211)
    {

      goto LABEL_33;
    }

    a6(v226, v221);
LABEL_169:

LABEL_170:
    v16 = v193;
    a1[v30] |= v31;
    v12 = v195;
    v57 = __OFADD__(v197++, 1);
    v9 = a4;
    v11 = v201;
    v15 = v203;
    if (!v57)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_173:
  v197 = 0;
  v94 = 0;
  v95 = v10 + 56;
  v96 = 1 << *(v10 + 32);
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  else
  {
    v97 = -1;
  }

  v98 = v97 & *(v10 + 56);
  v99 = (v96 + 63) >> 6;
  v234 = v9 + 56;
  __n = v10 + 56;
  v196 = v99;
  while (1)
  {
LABEL_179:
    if (v98)
    {
      v204 = v94;
      v206 = (v98 - 1) & v98;
      v100 = __clz(__rbit64(v98)) | (v94 << 6);
      goto LABEL_186;
    }

    v101 = v94;
    do
    {
      v102 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
LABEL_376:
        __break(1u);
LABEL_377:
        __break(1u);
LABEL_378:
        __break(1u);
LABEL_379:
        __break(1u);
LABEL_380:
        __break(1u);
      }

      if (v102 >= v99)
      {
        goto LABEL_348;
      }

      v103 = *(v95 + 8 * v102);
      ++v101;
    }

    while (!v103);
    v204 = v102;
    v206 = (v103 - 1) & v103;
    v100 = __clz(__rbit64(v103)) | (v102 << 6);
LABEL_186:
    v104 = (*(v10 + 48) + 48 * v100);
    v106 = *v104;
    v105 = v104[1];
    v107 = v104[3];
    v229 = v104[2];
    v108 = v104[5];
    v210 = v104[4];
    v109 = *(v9 + 40);
    sub_20E4C69C0();
    v219 = v105;
    sub_20E4C69E0();
    if (v105)
    {

      a5(v229, v107);

      sub_20E4C6530();
    }

    else
    {
      a5(v229, v107);
    }

    v222 = v107 >> 60;
    sub_20E4C69E0();
    if (v107 >> 60 != 15)
    {
      sub_20E4C6130();
    }

    v217 = v108;
    v224 = v107;
    sub_20E4C69E0();
    if (v108)
    {
      sub_20E4C6530();
    }

    v110 = v105;
    v111 = sub_20E4C69F0();
    v112 = -1 << *(v9 + 32);
    v113 = v111 & ~v112;
    if (((*(v234 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
    {

      a6(v229, v107);
      v10 = a3;
      goto LABEL_178;
    }

    v227 = v106;
    v186 = v100;
    v232 = ~v112;
    v208 = v107 >> 62;
    if (v229)
    {
      v114 = 0;
    }

    else
    {
      v114 = v107 == 0xC000000000000000;
    }

    v115 = !v114;
    v202 = v115;
    v116 = __OFSUB__(HIDWORD(v229), v229);
    v194 = v116;
    v182 = (v229 >> 32) - v229;
    v184 = v229 >> 32;
    v10 = a3;
LABEL_206:
    v117 = (*(v9 + 48) + 48 * v113);
    v119 = v117[1];
    v118 = v117[2];
    v120 = v117[3];
    v121 = v117[4];
    v122 = v117[5];
    if (!v119)
    {
      if (!v110)
      {
        goto LABEL_213;
      }

      goto LABEL_205;
    }

    if (!v110)
    {
      goto LABEL_205;
    }

    v123 = *v117 == v227 && v119 == v110;
    if (!v123 && (sub_20E4C6910() & 1) == 0)
    {
      goto LABEL_205;
    }

LABEL_213:
    if (v120 >> 60 != 15)
    {
      break;
    }

    if (v222 > 0xE)
    {
      v212 = v121;

      a5(v118, v120);

      a5(v118, v120);
      a5(v229, v224);
      v124 = a6;
      a6(v118, v120);
      goto LABEL_257;
    }

LABEL_217:
    a5(v118, v120);
    a5(v229, v224);
    a6(v118, v120);
    a6(v229, v224);
LABEL_218:
    v9 = a4;
LABEL_205:
    v113 = (v113 + 1) & v232;
    if ((*(v234 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113))
    {
      goto LABEL_206;
    }

    a6(v229, v224);
LABEL_178:

    v95 = __n;
    v99 = v196;
    v94 = v204;
    v98 = v206;
  }

  if (v222 > 0xE)
  {
    goto LABEL_217;
  }

  v125 = v120 >> 62;
  if (v120 >> 62 != 3)
  {
    v129 = a6;
    if (v125 <= 1)
    {
      if (v125)
      {
        LODWORD(v132) = HIDWORD(v118) - v118;
        if (__OFSUB__(HIDWORD(v118), v118))
        {
          goto LABEL_355;
        }

        v132 = v132;
        if (v208 > 1)
        {
          goto LABEL_242;
        }
      }

      else
      {
        v132 = BYTE6(v120);
        if (v208 > 1)
        {
          goto LABEL_242;
        }
      }

      goto LABEL_238;
    }

    if (v125 != 2)
    {
      goto LABEL_241;
    }

    v134 = *(v118 + 16);
    v133 = *(v118 + 24);
    v57 = __OFSUB__(v133, v134);
    v132 = v133 - v134;
    if (v57)
    {
      goto LABEL_357;
    }

    if (v208 <= 1)
    {
      goto LABEL_238;
    }

LABEL_242:
    if (v208 == 2)
    {
      v137 = *(v229 + 16);
      v136 = *(v229 + 24);
      v57 = __OFSUB__(v136, v137);
      v135 = v136 - v137;
      if (v57)
      {
        goto LABEL_351;
      }

      goto LABEL_244;
    }

    if (v132)
    {
LABEL_252:

      a5(v118, v120);

      a5(v118, v120);
      a5(v229, v224);
      v129(v229, v224);
      v124 = v129;
      v110 = v219;
LABEL_253:
      v124(v118, v120);

      v124(v118, v120);

      v10 = a3;
      goto LABEL_218;
    }

    goto LABEL_254;
  }

  if (v118)
  {
    v126 = 0;
  }

  else
  {
    v126 = v120 == 0xC000000000000000;
  }

  v128 = !v126 || v208 < 3;
  v129 = a6;
  if (((v128 | v202) & 1) == 0)
  {
    v212 = v121;

    a5(0, 0xC000000000000000);

    a5(0, 0xC000000000000000);
    a5(0, 0xC000000000000000);
    v130 = 0;
    v131 = 0xC000000000000000;
    goto LABEL_255;
  }

LABEL_241:
  v132 = 0;
  if (v208 > 1)
  {
    goto LABEL_242;
  }

LABEL_238:
  v135 = BYTE6(v224);
  if (v208)
  {
    v135 = HIDWORD(v229) - v229;
    if (v194)
    {
      goto LABEL_352;
    }
  }

LABEL_244:
  if (v132 != v135)
  {
    goto LABEL_252;
  }

  if (v132 < 1)
  {
LABEL_254:
    v212 = v121;

    a5(v118, v120);

    a5(v118, v120);
    a5(v229, v224);
    v130 = v229;
    v131 = v224;
LABEL_255:
    v129(v130, v131);
    v124 = v129;
    v110 = v219;
    goto LABEL_256;
  }

  v190 = v122;
  v212 = v121;
  if (v125 <= 1)
  {
    if (!v125)
    {
      *__s2 = v118;
      *&__s2[8] = v120;
      __s2[10] = BYTE2(v120);
      __s2[11] = BYTE3(v120);
      __s2[12] = BYTE4(v120);
      __s2[13] = BYTE5(v120);

      a5(v118, v120);

      a5(v118, v120);
      a5(v229, v224);
      sub_20E47FDB4(__s2, v229, v224, &v236);
      v110 = v219;
      if (v200)
      {
        goto LABEL_400;
      }

      v124 = a6;
      a6(v229, v224);
      if (!v236)
      {
        goto LABEL_253;
      }

      goto LABEL_256;
    }

    v110 = v219;
    if (v118 > v118 >> 32)
    {
      goto LABEL_360;
    }

    a5(v118, v120);

    a5(v118, v120);
    a5(v229, v224);
    v142 = sub_20E4C5FC0();
    if (v142)
    {
      v144 = sub_20E4C5FE0();
      if (__OFSUB__(v118, v144))
      {
        goto LABEL_364;
      }

      v142 += v118 - v144;
    }

    sub_20E4C5FD0();
    if (v208 != 2)
    {
      if (v208 == 1)
      {
        if (v184 < v229)
        {
          goto LABEL_370;
        }

        v145 = sub_20E4C5FC0();
        if (v145)
        {
          v146 = v145;
          v147 = sub_20E4C5FE0();
          if (__OFSUB__(v229, v147))
          {
            goto LABEL_379;
          }

          v148 = (v229 - v147 + v146);
        }

        else
        {
          v148 = 0;
        }

        v171 = sub_20E4C5FD0();
        v168 = (v229 >> 32) - v229;
        if (v171 < v182)
        {
          v168 = v171;
        }

        if (!v142)
        {
          goto LABEL_387;
        }

        if (!v148)
        {
          goto LABEL_386;
        }

        goto LABEL_334;
      }

      *__s2 = v229;
      v156 = v224;
      *&__s2[8] = v224;
      *&__s2[12] = WORD2(v224);
      if (!v142)
      {
        goto LABEL_385;
      }

LABEL_305:
      v161 = memcmp(v142, __s2, BYTE6(v224));
      v162 = v229;
      v163 = v156;
LABEL_338:
      v124 = a6;
      a6(v162, v163);
      v122 = v190;
      if (v161)
      {
        goto LABEL_253;
      }

      goto LABEL_256;
    }

    v176 = v142;
    v157 = *(v229 + 16);
    v180 = *(v229 + 24);
    v158 = sub_20E4C5FC0();
    if (v158)
    {
      v159 = v158;
      v160 = sub_20E4C5FE0();
      if (__OFSUB__(v157, v160))
      {
        goto LABEL_377;
      }

      v148 = (v157 - v160 + v159);
    }

    else
    {
      v148 = 0;
    }

    if (__OFSUB__(v180, v157))
    {
      goto LABEL_372;
    }

    v169 = sub_20E4C5FD0();
    if (v169 >= v180 - v157)
    {
      v165 = v180 - v157;
    }

    else
    {
      v165 = v169;
    }

    v166 = v176;
    if (!v176)
    {
      goto LABEL_389;
    }

    if (!v148)
    {
      goto LABEL_388;
    }

LABEL_327:
    if (v166 != v148)
    {
      v170 = v165;
LABEL_337:
      v161 = memcmp(v166, v148, v170);
      v162 = v229;
      v163 = v224;
      goto LABEL_338;
    }

    goto LABEL_335;
  }

  if (v125 != 2)
  {
    *&__s2[6] = 0;
    *__s2 = 0;

    a5(v118, v120);

    a5(v118, v120);
    a5(v229, v224);
    sub_20E47FDB4(__s2, v229, v224, &v236);
    if (v200)
    {
      goto LABEL_400;
    }

    v129(v229, v224);
    v124 = v129;
    v110 = v219;
    if (!v236)
    {
      goto LABEL_253;
    }

LABEL_256:
    v124(v118, v120);
    goto LABEL_257;
  }

  v141 = *(v118 + 16);

  a5(v118, v120);

  a5(v118, v120);
  a5(v229, v224);
  v142 = sub_20E4C5FC0();
  if (v142)
  {
    v143 = sub_20E4C5FE0();
    v110 = v219;
    if (__OFSUB__(v141, v143))
    {
      goto LABEL_361;
    }

    v142 += v141 - v143;
  }

  else
  {
    v110 = v219;
  }

  sub_20E4C5FD0();
  if (v208 == 2)
  {
    v175 = v142;
    v152 = *(v229 + 16);
    v179 = *(v229 + 24);
    v153 = sub_20E4C5FC0();
    if (v153)
    {
      v154 = v153;
      v155 = sub_20E4C5FE0();
      if (__OFSUB__(v152, v155))
      {
        goto LABEL_374;
      }

      v148 = (v152 - v155 + v154);
    }

    else
    {
      v148 = 0;
    }

    if (__OFSUB__(v179, v152))
    {
      goto LABEL_368;
    }

    v164 = sub_20E4C5FD0();
    if (v164 >= v179 - v152)
    {
      v165 = v179 - v152;
    }

    else
    {
      v165 = v164;
    }

    v166 = v175;
    if (!v175)
    {
      goto LABEL_384;
    }

    if (!v148)
    {
      goto LABEL_383;
    }

    goto LABEL_327;
  }

  if (v208 == 1)
  {
    if (v184 < v229)
    {
      goto LABEL_365;
    }

    v149 = sub_20E4C5FC0();
    if (v149)
    {
      v150 = v149;
      v151 = sub_20E4C5FE0();
      if (__OFSUB__(v229, v151))
      {
        goto LABEL_376;
      }

      v148 = (v229 - v151 + v150);
    }

    else
    {
      v148 = 0;
    }

    v167 = sub_20E4C5FD0();
    v168 = (v229 >> 32) - v229;
    if (v167 < v182)
    {
      v168 = v167;
    }

    if (!v142)
    {
      goto LABEL_382;
    }

    if (!v148)
    {
      goto LABEL_381;
    }

LABEL_334:
    if (v142 != v148)
    {
      v170 = v168;
      v166 = v142;
      goto LABEL_337;
    }

LABEL_335:
    v124 = a6;
    a6(v229, v224);
    v122 = v190;
    a6(v118, v120);
LABEL_257:
    if (v122)
    {
      v9 = a4;
      if (v217)
      {
        if (v212 == v210 && v122 == v217)
        {

          v124(v118, v120);

          v124(v229, v224);
          goto LABEL_344;
        }

        v139 = v124;
        v140 = sub_20E4C6910();

        v139(v118, v120);

        if (v140)
        {

          a6(v229, v224);

          v10 = a3;
          v9 = a4;
          goto LABEL_345;
        }

        v10 = a3;
        v9 = a4;
      }

      else
      {

        v124(v118, v120);

        v10 = a3;
      }

      v110 = v219;
      goto LABEL_205;
    }

    v124(v118, v120);
    v9 = a4;
    if (v217)
    {

      v10 = a3;
      goto LABEL_205;
    }

    v124(v229, v224);
LABEL_344:

    v10 = a3;
LABEL_345:
    v94 = v204;
    v98 = v206;
    *(a1 + ((v186 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v186;
    v95 = __n;
    v57 = __OFADD__(v197++, 1);
    v99 = v196;
    if (v57)
    {
      __break(1u);
      goto LABEL_348;
    }

    goto LABEL_179;
  }

  *__s2 = v229;
  v156 = v224;
  *&__s2[8] = v224;
  *&__s2[12] = WORD2(v224);
  if (v142)
  {
    goto LABEL_305;
  }

  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:
  __break(1u);
LABEL_400:

  __break(1u);
}

void sub_20E484AF8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v238 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) < *(a3 + 16))
  {
    v214 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v229 = a3 + 56;
    v189 = v11;
    v195 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v212 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            sub_20E4880F8(a1, a2, v214, v5);
            v177 = *MEMORY[0x277D85DE8];
            return;
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v212 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_20E4C69C0();
      sub_20E424B50(v17, v16);
      v225 = v17;
      v227 = v16;
      sub_20E4C6130();
      v19 = sub_20E4C69F0();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v229 + 8 * (v21 >> 6))) == 0)
      {
LABEL_6:
        sub_20E424BA4(v225, v227);
        v4 = a4;
        v11 = v189;
        v7 = v195;
        v10 = v212;
        continue;
      }

      v24 = ~v20;
      v25 = v16 >> 62;
      if (v17)
      {
        v26 = 0;
      }

      else
      {
        v26 = v16 == 0xC000000000000000;
      }

      v27 = !v26;
      v222 = v27;
      v206 = HIDWORD(v17);
      v28 = __OFSUB__(HIDWORD(v17), v17);
      v216 = v28;
      v202 = (v17 >> 32) - v17;
      v204 = v17 >> 32;
      v217 = v24;
      v218 = v16 >> 62;
      while (1)
      {
        v29 = (*(v5 + 48) + 16 * v21);
        v31 = *v29;
        v30 = v29[1];
        v32 = v30 >> 62;
        if (v30 >> 62 == 3)
        {
          if (v31)
          {
            v33 = 0;
          }

          else
          {
            v33 = v30 == 0xC000000000000000;
          }

          v35 = !v33 || v25 < 3;
          if (((v35 | v222) & 1) == 0)
          {
            v88 = 0;
            v89 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v36 = 0;
          if (v25 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_49;
          }

          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          v39 = __OFSUB__(v37, v38);
          v36 = v37 - v38;
          if (v39)
          {
            goto LABEL_332;
          }

          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v32)
        {
          LODWORD(v36) = HIDWORD(v31) - v31;
          if (__OFSUB__(HIDWORD(v31), v31))
          {
            goto LABEL_333;
          }

          v36 = v36;
          if (v25 <= 1)
          {
LABEL_46:
            v40 = BYTE6(v227);
            if (v25)
            {
              v40 = HIDWORD(v225) - v225;
              if (v216)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v36 = BYTE6(v30);
          if (v25 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v25 != 2)
        {
          if (!v36)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v42 = *(v225 + 16);
        v41 = *(v225 + 24);
        v39 = __OFSUB__(v41, v42);
        v40 = v41 - v42;
        if (v39)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v36 != v40)
        {
          goto LABEL_26;
        }

        if (v36 < 1)
        {
          goto LABEL_161;
        }

        if (v32 > 1)
        {
          break;
        }

        if (v32)
        {
          if (v31 > v31 >> 32)
          {
            goto LABEL_335;
          }

          sub_20E424B50(v31, v30);
          v52 = sub_20E4C5FC0();
          if (v52)
          {
            v53 = v52;
            v54 = sub_20E4C5FE0();
            if (__OFSUB__(v31, v54))
            {
              goto LABEL_339;
            }

            v198 = (v31 - v54 + v53);
          }

          else
          {
            v198 = 0;
          }

          sub_20E4C5FD0();
          v25 = v218;
          v5 = a3;
          if (v218 == 2)
          {
            v179 = *(v225 + 24);
            v185 = *(v225 + 16);
            v61 = sub_20E4C5FC0();
            if (v61)
            {
              v74 = sub_20E4C5FE0();
              v75 = v185;
              if (__OFSUB__(v185, v74))
              {
                goto LABEL_368;
              }

              v61 += v185 - v74;
            }

            else
            {
              v75 = v185;
            }

            v85 = v179 - v75;
            if (__OFSUB__(v179, v75))
            {
              goto LABEL_358;
            }

            v86 = sub_20E4C5FD0();
            if (v86 >= v85)
            {
              v82 = v85;
            }

            else
            {
              v82 = v86;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v61)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v218 != 1)
            {
              v73 = v198;
              *__s1 = v225;
              __s1[4] = v206;
              *&__s1[5] = *(&v225 + 5);
              __s1[7] = HIBYTE(v225);
              *&__s1[8] = v227;
              *&__s1[12] = WORD2(v227);
              if (!v198)
              {
                goto LABEL_378;
              }

LABEL_115:
              v70 = memcmp(v73, __s1, BYTE6(v227));
              sub_20E424BA4(v31, v30);
              v24 = v217;
              goto LABEL_116;
            }

            if (v204 < v225)
            {
              goto LABEL_357;
            }

            v62 = sub_20E4C5FC0();
            if (v62)
            {
              v182 = v62;
              v63 = sub_20E4C5FE0();
              if (__OFSUB__(v225, v63))
              {
                goto LABEL_369;
              }

              v61 = (v225 - v63 + v182);
            }

            else
            {
              v61 = 0;
            }

            v87 = sub_20E4C5FD0();
            v82 = (v225 >> 32) - v225;
            if (v87 < v202)
            {
              v82 = v87;
            }

            v83 = v198;
            if (!v198)
            {
              goto LABEL_396;
            }

            if (!v61)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v31;
        *&__s1[8] = v30;
        __s1[10] = BYTE2(v30);
        __s1[11] = BYTE3(v30);
        __s1[12] = BYTE4(v30);
        __s1[13] = BYTE5(v30);
        if (!v25)
        {
          goto LABEL_79;
        }

        if (v25 == 1)
        {
          if (v204 < v225)
          {
            goto LABEL_350;
          }

          sub_20E424B50(v31, v30);
          v43 = sub_20E4C5FC0();
          if (!v43)
          {
            goto LABEL_388;
          }

          v44 = v43;
          v45 = sub_20E4C5FE0();
          if (__OFSUB__(v225, v45))
          {
            goto LABEL_354;
          }

          v46 = (v225 - v45 + v44);
          v47 = sub_20E4C5FD0();
          if (!v46)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v200 = *(v225 + 16);
        v183 = *(v225 + 24);
        sub_20E424B50(v31, v30);
        v55 = sub_20E4C5FC0();
        if (v55)
        {
          v64 = sub_20E4C5FE0();
          v65 = v200;
          if (__OFSUB__(v200, v64))
          {
            goto LABEL_364;
          }

          v55 = &v200[v55 - v64];
        }

        else
        {
          v65 = v200;
        }

        v76 = v183 - v65;
        if (__OFSUB__(v183, v65))
        {
          goto LABEL_351;
        }

        v77 = sub_20E4C5FD0();
        if (!v55)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v77 >= v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = v77;
        }

        v79 = memcmp(__s1, v55, v78);
        sub_20E424BA4(v31, v30);
        v5 = a3;
LABEL_158:
        v24 = v217;
        v25 = v218;
        if (!v79)
        {
          goto LABEL_161;
        }

LABEL_26:
        v21 = (v21 + 1) & v24;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v229 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v32 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v25)
        {
LABEL_79:
          __s2 = v225;
          v232 = v206;
          v233 = *(&v225 + 5);
          v234 = HIBYTE(v225);
          v235 = v227;
          v236 = WORD2(v227);
          v58 = memcmp(__s1, &__s2, BYTE6(v227));
          v24 = v217;
          if (!v58)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v25 != 2)
        {
          if (v204 < v225)
          {
            goto LABEL_349;
          }

          sub_20E424B50(v31, v30);
          v66 = sub_20E4C5FC0();
          if (!v66)
          {
            goto LABEL_382;
          }

          v67 = v66;
          v68 = sub_20E4C5FE0();
          if (__OFSUB__(v225, v68))
          {
            goto LABEL_355;
          }

          v46 = (v225 - v68 + v67);
          v47 = sub_20E4C5FD0();
          if (!v46)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v47 >= v202)
          {
            v69 = (v225 >> 32) - v225;
          }

          else
          {
            v69 = v47;
          }

          v70 = memcmp(__s1, v46, v69);
          sub_20E424BA4(v31, v30);
          v5 = a3;
          v24 = v217;
          v25 = v218;
LABEL_116:
          if (!v70)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v199 = *(v225 + 16);
        v180 = *(v225 + 24);
        sub_20E424B50(v31, v30);
        v55 = sub_20E4C5FC0();
        if (v55)
        {
          v56 = sub_20E4C5FE0();
          v57 = v199;
          if (__OFSUB__(v199, v56))
          {
            goto LABEL_365;
          }

          v55 = &v199[v55 - v56];
        }

        else
        {
          v57 = v199;
        }

        v76 = v180 - v57;
        if (__OFSUB__(v180, v57))
        {
          goto LABEL_352;
        }

        v77 = sub_20E4C5FD0();
        if (!v55)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v48 = *(v31 + 16);
      sub_20E424B50(v31, v30);
      v49 = sub_20E4C5FC0();
      if (v49)
      {
        v50 = v49;
        v51 = sub_20E4C5FE0();
        if (__OFSUB__(v48, v51))
        {
          goto LABEL_338;
        }

        v197 = (v48 - v51 + v50);
      }

      else
      {
        v197 = 0;
      }

      sub_20E4C5FD0();
      v25 = v218;
      v5 = a3;
      if (v218 == 2)
      {
        v178 = *(v225 + 24);
        v184 = *(v225 + 16);
        v61 = sub_20E4C5FC0();
        if (v61)
        {
          v71 = sub_20E4C5FE0();
          v72 = v184;
          if (__OFSUB__(v184, v71))
          {
            goto LABEL_366;
          }

          v61 += v184 - v71;
        }

        else
        {
          v72 = v184;
        }

        v80 = v178 - v72;
        if (__OFSUB__(v178, v72))
        {
          goto LABEL_356;
        }

        v81 = sub_20E4C5FD0();
        if (v81 >= v80)
        {
          v82 = v80;
        }

        else
        {
          v82 = v81;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v61)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v218 != 1)
        {
          v73 = v197;
          *__s1 = v225;
          __s1[4] = v206;
          *&__s1[5] = *(&v225 + 5);
          __s1[7] = HIBYTE(v225);
          *&__s1[8] = v227;
          *&__s1[12] = WORD2(v227);
          if (!v197)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v204 < v225)
        {
          goto LABEL_353;
        }

        v59 = sub_20E4C5FC0();
        if (v59)
        {
          v181 = v59;
          v60 = sub_20E4C5FE0();
          if (__OFSUB__(v225, v60))
          {
            goto LABEL_367;
          }

          v61 = (v225 - v60 + v181);
        }

        else
        {
          v61 = 0;
        }

        v84 = sub_20E4C5FD0();
        v82 = (v225 >> 32) - v225;
        if (v84 < v202)
        {
          v82 = v84;
        }

        v83 = v197;
        if (!v197)
        {
          goto LABEL_392;
        }

        if (!v61)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v83 != v61)
      {
        v79 = memcmp(v83, v61, v82);
        sub_20E424BA4(v31, v30);
        goto LABEL_158;
      }

      sub_20E424BA4(v31, v30);
LABEL_161:
      v88 = v225;
      v89 = v227;
LABEL_162:
      sub_20E424BA4(v88, v89);
      a1[v22] |= v23;
      v39 = __OFADD__(v214++, 1);
      v4 = a4;
      v11 = v189;
      v7 = v195;
      v10 = v212;
      if (v39)
      {
        __break(1u);
        break;
      }
    }
  }

  v214 = 0;
  v90 = 0;
  v196 = v5 + 56;
  v91 = 1 << *(v5 + 32);
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  else
  {
    v92 = -1;
  }

  v93 = v92 & *(v5 + 56);
  v94 = (v91 + 63) >> 6;
  v203 = v94;
  v95 = v4 + 56;
  v223 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v93)
    {
      v96 = __clz(__rbit64(v93));
      v97 = (v93 - 1) & v93;
      goto LABEL_177;
    }

    v98 = v90;
    do
    {
      v90 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v90 >= v94)
      {
        goto LABEL_323;
      }

      v99 = *(v196 + 8 * v90);
      ++v98;
    }

    while (!v99);
    v96 = __clz(__rbit64(v99));
    v97 = (v99 - 1) & v99;
LABEL_177:
    v100 = v96 | (v90 << 6);
    v215 = v97;
    v101 = (*(v5 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    v104 = *(v4 + 40);
    sub_20E4C69C0();
    sub_20E424B50(v103, v102);
    sub_20E4C6130();
    v105 = sub_20E4C69F0();
    v106 = -1 << *(v4 + 32);
    v107 = v105 & ~v106;
    v108 = v95;
    v230 = v102;
    if ((*(v95 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107))
    {
      break;
    }

LABEL_169:
    v95 = v108;
    sub_20E424BA4(v103, v230);
    v5 = a3;
    v94 = v203;
    v93 = v215;
  }

  v201 = v100;
  v109 = ~v106;
  v110 = v102 >> 62;
  if (v103)
  {
    v111 = 0;
  }

  else
  {
    v111 = v102 == 0xC000000000000000;
  }

  v112 = !v111;
  v226 = v112;
  v113 = __OFSUB__(HIDWORD(v103), v103);
  v219 = v113;
  v228 = BYTE6(v102);
  v213 = v103 >> 32;
  v205 = (v103 >> 32) - v103;
  __n = v109;
  while (1)
  {
    v114 = (*(v4 + 48) + 16 * v107);
    v115 = *v114;
    v116 = v114[1];
    v117 = v116 >> 62;
    if (v116 >> 62 == 3)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        v118 = v116 == 0xC000000000000000;
      }

      v120 = !v118 || v110 < 3;
      if (((v120 | v226) & 1) == 0)
      {
        v95 = v108;
        v174 = 0;
        v175 = 0xC000000000000000;
LABEL_318:
        sub_20E424BA4(v174, v175);
        v176 = v214;
        goto LABEL_319;
      }

LABEL_212:
      v121 = 0;
      if (v110 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v117 > 1)
    {
      if (v117 != 2)
      {
        goto LABEL_212;
      }

      v123 = *(v115 + 16);
      v122 = *(v115 + 24);
      v39 = __OFSUB__(v122, v123);
      v121 = v122 - v123;
      if (v39)
      {
        goto LABEL_330;
      }

      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v117)
    {
      LODWORD(v121) = HIDWORD(v115) - v115;
      if (__OFSUB__(HIDWORD(v115), v115))
      {
        goto LABEL_331;
      }

      v121 = v121;
      if (v110 <= 1)
      {
LABEL_209:
        v124 = v228;
        if (v110)
        {
          v124 = HIDWORD(v103) - v103;
          if (v219)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v121 = BYTE6(v116);
      if (v110 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v110 != 2)
    {
      if (!v121)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v126 = *(v103 + 16);
    v125 = *(v103 + 24);
    v39 = __OFSUB__(v125, v126);
    v124 = v125 - v126;
    if (v39)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v121 != v124)
    {
      goto LABEL_189;
    }

    if (v121 < 1)
    {
      goto LABEL_317;
    }

    if (v117 > 1)
    {
      break;
    }

    if (v117)
    {
      if (v115 > v115 >> 32)
      {
        goto LABEL_334;
      }

      sub_20E424B50(v115, v116);
      v133 = sub_20E4C5FC0();
      if (v133)
      {
        v134 = v133;
        v135 = sub_20E4C5FE0();
        if (__OFSUB__(v115, v135))
        {
          goto LABEL_337;
        }

        v208 = (v115 - v135 + v134);
      }

      else
      {
        v208 = 0;
      }

      sub_20E4C5FD0();
      v4 = a4;
      v109 = __n;
      if (v110 == 2)
      {
        v194 = *(v103 + 16);
        v187 = *(v103 + 24);
        v143 = sub_20E4C5FC0();
        if (v143)
        {
          v159 = sub_20E4C5FE0();
          v160 = v194;
          if (__OFSUB__(v194, v159))
          {
            goto LABEL_362;
          }

          v143 += v194 - v159;
        }

        else
        {
          v160 = v194;
        }

        v170 = v187 - v160;
        if (__OFSUB__(v187, v160))
        {
          goto LABEL_348;
        }

        v171 = sub_20E4C5FD0();
        if (v171 >= v170)
        {
          v167 = v170;
        }

        else
        {
          v167 = v171;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v143)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v110 == 1)
      {
        if (v213 < v103)
        {
          goto LABEL_347;
        }

        v144 = sub_20E4C5FC0();
        if (v144)
        {
          v192 = v144;
          v145 = sub_20E4C5FE0();
          if (__OFSUB__(v103, v145))
          {
            goto LABEL_363;
          }

          v143 = (v103 - v145 + v192);
        }

        else
        {
          v143 = 0;
        }

        v172 = sub_20E4C5FD0();
        v167 = (v103 >> 32) - v103;
        if (v172 < v205)
        {
          v167 = v172;
        }

        v168 = v208;
        if (!v208)
        {
          goto LABEL_385;
        }

        if (!v143)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v158 = v208;
      *__s1 = v103;
      *&__s1[8] = v230;
      *&__s1[12] = WORD2(v230);
      if (!v208)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v115;
    *&__s1[8] = v116;
    __s1[10] = BYTE2(v116);
    __s1[11] = BYTE3(v116);
    __s1[12] = BYTE4(v116);
    __s1[13] = BYTE5(v116);
    if (!v110)
    {
      goto LABEL_240;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_342;
      }

      sub_20E424B50(v115, v116);
      v127 = sub_20E48C2A8(v103, v213, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v127;
      sub_20E424BA4(v115, v116);
    }

    else
    {
      v146 = *(v103 + 16);
      v147 = *(v103 + 24);
      sub_20E424B50(v115, v116);
      v148 = sub_20E48C2A8(v146, v147, v230 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v211)
      {
        goto LABEL_399;
      }

      v128 = v148;
      sub_20E424BA4(v115, v116);
      v4 = a4;
    }

    v108 = v223;
    if (v128)
    {
      goto LABEL_317;
    }

LABEL_189:
    v107 = (v107 + 1) & v109;
    if (((*(v108 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v117 == 2)
  {
    v129 = *(v115 + 16);
    sub_20E424B50(v115, v116);
    v130 = sub_20E4C5FC0();
    if (v130)
    {
      v131 = v130;
      v132 = sub_20E4C5FE0();
      if (__OFSUB__(v129, v132))
      {
        goto LABEL_336;
      }

      v207 = (v129 - v132 + v131);
    }

    else
    {
      v207 = 0;
    }

    sub_20E4C5FD0();
    v4 = a4;
    v109 = __n;
    if (v110 == 2)
    {
      v193 = *(v103 + 16);
      v186 = *(v103 + 24);
      v143 = sub_20E4C5FC0();
      if (v143)
      {
        v156 = sub_20E4C5FE0();
        v157 = v193;
        if (__OFSUB__(v193, v156))
        {
          goto LABEL_360;
        }

        v143 += v193 - v156;
      }

      else
      {
        v157 = v193;
      }

      v165 = v186 - v157;
      if (__OFSUB__(v186, v157))
      {
        goto LABEL_346;
      }

      v166 = sub_20E4C5FD0();
      if (v166 >= v165)
      {
        v167 = v165;
      }

      else
      {
        v167 = v166;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v143)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v110 == 1)
    {
      if (v213 < v103)
      {
        goto LABEL_344;
      }

      v141 = sub_20E4C5FC0();
      if (v141)
      {
        v191 = v141;
        v142 = sub_20E4C5FE0();
        if (__OFSUB__(v103, v142))
        {
          goto LABEL_361;
        }

        v143 = (v103 - v142 + v191);
      }

      else
      {
        v143 = 0;
      }

      v169 = sub_20E4C5FD0();
      v167 = (v103 >> 32) - v103;
      if (v169 < v205)
      {
        v167 = v169;
      }

      v168 = v207;
      if (!v207)
      {
        goto LABEL_387;
      }

      if (!v143)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v168 == v143)
      {
        sub_20E424BA4(v115, v116);
        sub_20E424BA4(v103, v230);
        v176 = v214;
        v95 = v223;
LABEL_319:
        v93 = v215;
        *(a1 + ((v201 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v201;
        v214 = v176 + 1;
        v5 = a3;
        v94 = v203;
        if (__OFADD__(v176, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v173 = memcmp(v168, v143, v167);
      sub_20E424BA4(v115, v116);
      v108 = v223;
      v109 = __n;
      if (!v173)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v158 = v207;
    *__s1 = v103;
    *&__s1[8] = v230;
    *&__s1[12] = WORD2(v230);
    if (!v207)
    {
      goto LABEL_374;
    }

LABEL_277:
    v155 = memcmp(v158, __s1, v228);
    sub_20E424BA4(v115, v116);
LABEL_278:
    v108 = v223;
    if (!v155)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v110)
  {
LABEL_240:
    LOWORD(__s2) = v103;
    BYTE2(__s2) = BYTE2(v103);
    HIBYTE(__s2) = BYTE3(v103);
    v232 = BYTE4(v103);
    LOBYTE(v233) = BYTE5(v103);
    HIBYTE(v233) = BYTE6(v103);
    v234 = HIBYTE(v103);
    v235 = v230;
    v236 = WORD2(v230);
    v139 = v108;
    v140 = memcmp(__s1, &__s2, v228);
    v108 = v139;
    if (!v140)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v110 != 2)
  {
    if (v213 < v103)
    {
      goto LABEL_341;
    }

    sub_20E424B50(v115, v116);
    v149 = sub_20E4C5FC0();
    if (!v149)
    {
      goto LABEL_372;
    }

    v150 = v149;
    v151 = sub_20E4C5FE0();
    if (__OFSUB__(v103, v151))
    {
      goto LABEL_345;
    }

    v152 = (v103 - v151 + v150);
    v153 = sub_20E4C5FD0();
    if (!v152)
    {
      goto LABEL_373;
    }

    if (v153 >= v205)
    {
      v154 = (v103 >> 32) - v103;
    }

    else
    {
      v154 = v153;
    }

    v155 = memcmp(__s1, v152, v154);
    sub_20E424BA4(v115, v116);
    v4 = a4;
    v109 = __n;
    goto LABEL_278;
  }

  v209 = *(v103 + 16);
  v190 = *(v103 + 24);
  sub_20E424B50(v115, v116);
  v136 = sub_20E4C5FC0();
  if (v136)
  {
    v137 = sub_20E4C5FE0();
    v138 = v209;
    if (__OFSUB__(v209, v137))
    {
      goto LABEL_359;
    }

    v136 = &v209[v136 - v137];
  }

  else
  {
    v138 = v209;
  }

  v161 = v190 - v138;
  if (__OFSUB__(v190, v138))
  {
    goto LABEL_343;
  }

  v162 = sub_20E4C5FD0();
  if (v136)
  {
    if (v162 >= v161)
    {
      v163 = v161;
    }

    else
    {
      v163 = v162;
    }

    v164 = memcmp(__s1, v136, v163);
    sub_20E424BA4(v115, v116);
    v4 = a4;
    v108 = v223;
    v109 = __n;
    if (!v164)
    {
LABEL_317:
      v95 = v108;
      v174 = v103;
      v175 = v230;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  sub_20E4C5FD0();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  sub_20E4C5FD0();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  sub_20E4C5FD0();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
}