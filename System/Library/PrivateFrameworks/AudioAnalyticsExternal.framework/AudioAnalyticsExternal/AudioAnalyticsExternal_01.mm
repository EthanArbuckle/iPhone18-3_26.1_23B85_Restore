uint64_t sub_2239DE3E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  result = sub_223A20780();
  v7 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v8 = 0;
    v9 = (result + 40);
    while (v8 < *(v7 + 16))
    {
      if (!*(a1 + 16))
      {
        goto LABEL_9;
      }

      v10 = *(v9 - 1);
      v11 = *v9;

      v12 = sub_2239CDC74(v10, v11);
      if ((v13 & 1) == 0)
      {

LABEL_9:

        v18 = sub_223A20680();
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
        sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
        return 0;
      }

      v14 = v12;
      ++v8;
      v15 = *(a1 + 56);
      v16 = sub_223A20680();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v5, v15 + *(v17 + 72) * v14, v16);

      (*(v17 + 56))(v5, 0, 1, v16);
      result = sub_2239CDCEC(v5, &qword_27D0A4928, &qword_223A22B40);
      v9 += 2;
      if (v20 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return 1;
  }

  return result;
}

uint64_t sub_2239DE62C(uint64_t a1, void *a2)
{
  v4 = sub_223A20680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v8 = *(*(v74 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v74);
  v65 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = (&v56 - v14);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v64 = v5 + 16;
  v69 = v5 + 32;
  v66 = v5;
  v67 = a1;
  v57 = (v5 + 40);
  v58 = (v5 + 8);

  v21 = 0;
  v59 = v20;
  v60 = a1 + 64;
  v72 = a2;
  v61 = v13;
  v62 = v4;
  v63 = v15;
  while (v19)
  {
LABEL_11:
    v24 = __clz(__rbit64(v19)) | (v21 << 6);
    v25 = v66;
    v26 = *(v67 + 56);
    v27 = (*(v67 + 48) + 16 * v24);
    v29 = *v27;
    v28 = v27[1];
    v70 = *(v66 + 72);
    (*(v66 + 16))(v15 + *(v74 + 48), v26 + v70 * v24, v4);
    *v15 = v29;
    v15[1] = v28;
    sub_2239D8C48(v15, v13, &qword_27D0A4B60, &qword_223A23760);
    v30 = v13[1];
    v71 = *v13;
    v31 = v15;
    v32 = v65;
    sub_2239D8C48(v31, v65, &qword_27D0A4B60, &qword_223A23760);
    v33 = *(v32 + 8);

    v34 = v32 + *(v74 + 48);
    v68 = *(v25 + 32);
    v68(v73, v34, v4);
    v35 = v72;
    v36 = *v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *v35;
    v38 = v75;
    v39 = v71;
    v40 = v30;
    v42 = sub_2239CDC74(v71, v30);
    v43 = v38[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_22;
    }

    v46 = v41;
    if (v38[3] >= v45)
    {
      v15 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2239DAF30();
      }
    }

    else
    {
      sub_2239D9194(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_2239CDC74(v39, v40);
      v15 = v63;
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_24;
      }

      v42 = v47;
    }

    v49 = v62;
    v50 = v75;
    if (v46)
    {
      v4 = v62;
      (*v57)(v75[7] + v42 * v70, v73, v62);
    }

    else
    {
      v75[(v42 >> 6) + 8] |= 1 << v42;
      v51 = (v50[6] + 16 * v42);
      *v51 = v39;
      v51[1] = v40;
      v4 = v49;
      v68((v50[7] + v42 * v70), v73, v49);
      v52 = v50[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_23;
      }

      v50[2] = v54;
    }

    v19 &= v19 - 1;
    v22 = *(v74 + 48);
    *v72 = v50;
    v13 = v61;
    (*v58)(v61 + v22, v4);
    sub_2239CDCEC(v15, &qword_27D0A4B60, &qword_223A23760);
    v20 = v59;
    v16 = v60;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_2239DEAB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2239CDC74(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2239DAF30();
      goto LABEL_7;
    }

    sub_2239D9194(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2239CDC74(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_223A21910();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_223A20680();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2239DEC38(v12, a2, a3, a1, v18);
}

uint64_t sub_2239DEC38(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_223A20680();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_2239DECE8(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v28 - v7);
  v9 = sub_223A20B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 3)
  {
    result = swift_beginAccess();
    v15 = *(v2 + 16);
    v16 = *(v15 + 16);
    if (v16)
    {
      v28[2] = a1;
      v29 = v2;
      v17 = *MEMORY[0x277CEF9B0];
      v18 = *(v10 + 104);
      v28[1] = v14;
      v18(v14, v17, v9);
      v19 = sub_2239D83E0(v16, 0);
      v20 = sub_2239D86F4(&v31, v19 + 4, v16, v15);
      swift_bridgeObjectRetain_n();
      sub_2239CE254();
      if (v20 == v16)
      {
        v31 = v19;
        sub_2239D8090(&v31);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
        sub_2239D18A4();
        v21 = sub_223A211D0();
        v23 = v22;

        *v8 = v21;
        v8[1] = v23;
        v24 = *MEMORY[0x277CEF860];
        v25 = sub_223A20680();
        v26 = *(v25 - 8);
        (*(v26 + 104))(v8, v24, v25);
        (*(v26 + 56))(v8, 0, 1, v25);
        sub_223A21160();
        v27 = v29;
        swift_beginAccess();
        if (*(*(v27 + 16) + 16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v30 = *(v27 + 16);
          *(v27 + 16) = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B68, &unk_223A23710);
          sub_223A21670();
          *(v27 + 16) = v30;
        }

        return swift_endAccess();
      }

      else
      {
        __break(1u);

        __break(1u);
      }
    }
  }

  return result;
}

size_t sub_2239DF02C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

unint64_t sub_2239DF230()
{
  result = qword_2813336F8;
  if (!qword_2813336F8)
  {
    sub_223A20680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813336F8);
  }

  return result;
}

void SummaryDecoratorWorker.addDecoratorData(_:operatingSystem:)(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v217 = sub_223A207D0();
  v4 = *(v217 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v217);
  v216 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_223A20900();
  v7 = *(v223 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v223);
  v222 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v192 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v204 = (&v181 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v186 = &v181 - v17;
  MEMORY[0x28223BE20](v16);
  v207 = &v181 - v18;
  v230 = sub_223A20B90();
  v202 = *(v230 - 8);
  v19 = *(v202 + 64);
  v20 = MEMORY[0x28223BE20](v230);
  v22 = (&v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20);
  v188 = &v181 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v189 = &v181 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v191 = &v181 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v203 = &v181 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v185 = &v181 - v32;
  MEMORY[0x28223BE20](v31);
  v206 = &v181 - v33;
  v244 = sub_223A20680();
  v245 = *(v244 - 8);
  v34 = v245[8];
  v35 = MEMORY[0x28223BE20](v244);
  v37 = (&v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v240 = (&v181 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v235 = &v181 - v41;
  v42 = sub_223A20D20();
  v237 = *(v42 - 8);
  v43 = *(v237 + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v224 = &v181 - v47;
  *&v48 = COERCE_DOUBLE(sub_2239E1088());
  if ((v51 & 1) == 0)
  {
    v52 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
    v251 = v42;
    if (v52 >> 62)
    {
      goto LABEL_101;
    }

    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v183 = v22;
    v184 = a1;
    v54 = *&v48;
    v55 = v49;
    if (v53)
    {
      v187 = 0;
      v212 = v2;
      v211 = (v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session);
      v210 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
      v234 = v52 & 0xC000000000000001;
      v214 = v52 & 0xFFFFFFFFFFFFFF8;
      v228 = v52;
      v213 = v52 + 4;
      v232 = (v237 + 48);
      v219 = v237 + 32;
      v22 = (v237 + 8);
      v252 = "decoratorRunningMessage";
      v249 = v245 + 2;
      v250 = v245 + 11;
      LODWORD(v248) = *MEMORY[0x277CEF858];
      v243 = (v245 + 1);
      v242 = (v245 + 12);
      v200 = *MEMORY[0x277CEF958];
      v227 = (v202 + 104);
      v190 = *MEMORY[0x277CEF848];
      v181 = *MEMORY[0x277CEF930];
      v199 = (v7 + 104);
      v48 = v7 + 8;
      v198 = (v7 + 8);
      v7 = 0;
      v193 = *MEMORY[0x277CEF860];
      v209 = (v4 + 16);
      v208 = (v4 + 8);
      v197 = *MEMORY[0x277CEF980];
      *&v50 = 136381187;
      v194 = v50;
      v218 = xmmword_223A23280;
      v196 = *MEMORY[0x277CEF8C0];
      v56 = 0.0;
      v182 = *MEMORY[0x277CEF968];
      v57 = 0.0;
      v226 = (v202 + 8);
      v225 = (v245 + 6);
      a1 = v244;
      v231 = v37;
      v37 = (v237 + 16);
      v52 = v240;
      v2 = v235;
      v233 = v53;
      v246 = v237 + 16;
      while (1)
      {
        if (v234)
        {
          *&v48 = COERCE_DOUBLE(MEMORY[0x223DF07F0](v7, v228));
          v4 = v48;
          v58 = __OFADD__(v7++, 1);
          if (v58)
          {
            goto LABEL_99;
          }
        }

        else
        {
          if (v7 >= *(v214 + 16))
          {
            goto LABEL_100;
          }

          v4 = *&v213[v7];
          *&v48 = COERCE_DOUBLE();
          v58 = __OFADD__(v7++, 1);
          if (v58)
          {
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            v178 = v48;
            v179 = v49;
            v180 = sub_223A21780();
            v49 = v179;
            v42 = v251;
            v53 = v180;
            v48 = v178;
            goto LABEL_4;
          }
        }

        v59 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage;
        swift_beginAccess();
        sub_2239E1310(v4 + v59, v2);
        v60 = (*v232)(v2, 1, v42);
        v238 = v7;
        v239 = v4;
        if (v60 == 1)
        {
          sub_2239CDCEC(v2, &qword_27D0A4B38, " >");
          v61 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages;
          swift_beginAccess();
          v62 = *(v4 + v61);

          v4 = *(v63 + 16);
          if (v4)
          {
            break;
          }

          goto LABEL_83;
        }

        v114 = v237;
        v115 = v224;
        (*(v237 + 32))(v224, v2, v42);
        v116 = OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages;
        swift_beginAccess();
        v117 = *(v4 + v116);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BE0, &unk_223A23A10);
        v118 = *(v114 + 72);
        v119 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v218;
        (*(v114 + 16))(v120 + v119, v115, v251);
        v256 = v117;

        v121 = v120;
        v42 = v251;
        sub_223A15F7C(v121, sub_2239DF208, MEMORY[0x277CEFA10]);
        v122 = v115;
        a1 = v244;
        (*(v114 + 8))(v122, v42);
        v63 = v256;
        v4 = *(v256 + 16);
        if (v4)
        {
          break;
        }

LABEL_83:

        v123 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
        v253 = *v209;
        v124 = v239;
        v125 = v216;
        v126 = v217;
        (v253)(v216, v239 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config, v217);

        v127 = sub_223A20700();
        v128 = *v208;
        (*v208)(v125, v126);
        v241 = MEMORY[0x223DEFF80](v127);
        v247 = v129;
        (v253)(v125, v124 + v123, v126);

        v130 = sub_223A20740();
        v131 = v126;
        v132 = v247;
        v128(v125, v131);
        v133 = MEMORY[0x223DEFFA0](v130);
        v4 = v134;
        v135 = v211[4];
        __swift_project_boxed_opaque_existential_1(v211, v211[3]);
        v136 = sub_223A20950();

        v137 = sub_223A20FB0();
        v138 = sub_223A214D0();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v253 = v136;
          v140 = v139;
          v141 = swift_slowAlloc();
          v256 = v141;
          *v140 = v194;
          v142 = sub_2239E1910(v241, v132, &v256);

          *(v140 + 4) = v142;
          *(v140 + 12) = 2081;
          v143 = sub_2239E1910(v133, v4, &v256);

          *(v140 + 14) = v143;
          *(v140 + 22) = 2048;
          *(v140 + 24) = v253;
          _os_log_impl(&dword_2239C7000, v137, v138, "No decorator data found. { audioEventType=%{private}s, audioEventCategory=%{private}s, reporterID=%lld }", v140, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DF1300](v141, -1, -1);
          MEMORY[0x223DF1300](v140, -1, -1);
        }

        else
        {
        }

        a1 = v244;
        v52 = v240;
        v42 = v251;
        v37 = v246;
LABEL_7:
        v7 = v238;
        v2 = v235;
        if (v238 == v233)
        {
          goto LABEL_88;
        }
      }

      v64 = (*(v237 + 80) + 32) & ~*(v237 + 80);
      v236 = v63;
      v65 = v63 + v64;
      v66 = *(v237 + 72);
      v253 = *(v237 + 16);
      v247 = v66;
      (v253)(v46, v63 + v64, v42);
      while (1)
      {
        v67 = sub_223A20C40();
        if (!*(v67 + 16) || (v68 = sub_2239CDC74(0xD000000000000011, v252 | 0x8000000000000000), (v69 & 1) == 0))
        {

          (*v22)(v46, v42);
          goto LABEL_18;
        }

        v70 = v245;
        v71 = v245[9];
        v72 = v245[2];
        v72(v52, *(v67 + 56) + v71 * v68, a1);

        v73 = v70[11];
        v74 = v73(v52, a1);
        if (v74 != v248)
        {
          v42 = v251;
          (*v22)(v46, v251);
          (*v243)(v52, a1);
          goto LABEL_37;
        }

        v241 = *v242;
        v241(v52, a1);
        v75 = *v52;
        v76 = sub_223A20C40();
        if (!*(v76 + 16) || (v77 = sub_2239CDC74(0x7972616D6D75735FLL, 0xEF656D6954646E45), (v78 & 1) == 0))
        {

          v42 = v251;
          (*v22)(v46, v251);
          a1 = v244;
          goto LABEL_36;
        }

        v79 = *(v76 + 56) + v77 * v71;
        v80 = v231;
        a1 = v244;
        v72(v231, v79, v244);

        v81 = v73(v80, a1);
        if (v81 != v248)
        {
          v42 = v251;
          (*v22)(v46, v251);
          (*v243)(v80, a1);
          goto LABEL_36;
        }

        v241(v80, a1);
        v82 = *v80;
        if (v75 < v54)
        {
          v83 = v54;
        }

        else
        {
          v83 = v75;
        }

        if (v82 >= v55)
        {
          v82 = v55;
        }

        if (v83 >= v82)
        {
          v42 = v251;
          (*v22)(v46, v251);
LABEL_36:
          v52 = v240;
LABEL_37:
          v37 = v246;
LABEL_38:
          v66 = v247;
          goto LABEL_18;
        }

        v84 = v82 - v83;
        v85 = sub_223A20C40();
        v86 = v206;
        v87 = v230;
        v221 = *v227;
        v221(v206, v200, v230);
        v88 = v207;
        v229 = v85;
        sub_223A21150();
        v89 = *v226;
        (*v226)(v86, v87);
        v220 = *v225;
        if (v220(v88, 1, a1) == 1)
        {
LABEL_33:
          sub_2239CDCEC(v88, &qword_27D0A4928, &qword_223A22B40);
          goto LABEL_52;
        }

        v90 = v73(v88, a1);
        if (v90 != v190)
        {
          goto LABEL_51;
        }

        v241(v88, a1);
        if (*v88 != 1)
        {
          goto LABEL_52;
        }

        v91 = v185;
        v92 = v230;
        v221(v185, v181, v230);
        v88 = v186;
        sub_223A21150();
        v89(v91, v92);
        if (v220(v88, 1, a1) == 1)
        {
          goto LABEL_33;
        }

        v93 = v73(v88, a1);
        if (v93 == v193)
        {
          v241(v88, a1);
          v94 = *v88;
          v95 = *(v88 + 8);
          if (v94 == 28271 && v95 == 0xE200000000000000)
          {
            v96 = 1;
          }

          else
          {
            v96 = sub_223A218F0();
            if (v94 == 6710895 && v95 == 0xE300000000000000)
            {

              if (v96)
              {
LABEL_80:
                v42 = v251;
                (*v22)(v46, v251);

                v52 = v240;
                v37 = v246;
                v66 = v247;
                goto LABEL_64;
              }

LABEL_81:
              v42 = v251;
              (*v22)(v46, v251);

              v52 = v240;
              v37 = v246;
              v66 = v247;
              goto LABEL_73;
            }
          }

          v97 = sub_223A218F0();

          if (v96)
          {
            goto LABEL_80;
          }

          if (v97)
          {
            goto LABEL_81;
          }
        }

        else
        {
LABEL_51:
          (*v243)(v88, a1);
        }

LABEL_52:
        v98 = v203;
        v99 = v230;
        v221(v203, v197, v230);
        v100 = v204;
        sub_223A21150();
        v89(v98, v99);
        v101 = v220(v100, 1, a1);
        v201 = v89;
        if (v101 == 1)
        {
          sub_2239CDCEC(v100, &qword_27D0A4928, &qword_223A22B40);
        }

        else
        {
          v102 = v73(v100, a1);
          if (v102 == v193)
          {
            v103 = (v241)(v100, a1);
            v104 = v100[1];
            v256 = *v100;
            v257 = v104;
            MEMORY[0x28223BE20](v103);
            *(&v181 - 2) = &v256;
            v105 = v187;
            v215 = sub_2239CF3F4(sub_2239D9828, (&v181 - 8), &unk_283702C40);
            v187 = v105;
            swift_arrayDestroy();

            a1 = v244;
            goto LABEL_58;
          }

          (*v243)(v100, a1);
        }

        v215 = 0;
LABEL_58:
        (*v199)(v222, v196, v223);
        sub_223A16444(&qword_2813336F0, MEMORY[0x277CEF8C8]);
        sub_223A21350();
        sub_223A21350();
        if (v256 == v254 && v257 == v255)
        {
          (*v198)(v222, v223);

          v52 = v240;
          v37 = v246;
LABEL_62:
          v42 = v251;
          (*v22)(v46, v251);

LABEL_63:
          v66 = v247;
          if ((v215 & 1) == 0)
          {
            goto LABEL_18;
          }

LABEL_64:
          v57 = v57 + v84;
          goto LABEL_18;
        }

        v195 = sub_223A218F0();
        (*v198)(v222, v223);

        v52 = v240;
        v37 = v246;
        if (v195)
        {
          goto LABEL_62;
        }

        v106 = v191;
        v107 = v230;
        v221(v191, v182, v230);
        v108 = v192;
        sub_223A21150();

        v109 = v107;
        v110 = v108;
        v201(v106, v109);
        if (v220(v108, 1, a1) == 1)
        {
          v42 = v251;
          (*v22)(v46, v251);
          sub_2239CDCEC(v110, &qword_27D0A4928, &qword_223A22B40);
          v52 = v240;
          v37 = v246;
          goto LABEL_72;
        }

        v111 = v73(v108, a1);
        v52 = v240;
        v42 = v251;
        v37 = v246;
        if (v111 != v193)
        {
          (*v22)(v46, v251);
          (*v243)(v110, a1);
LABEL_72:
          v66 = v247;
          if ((v215 & 1) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_73;
        }

        v241(v110, a1);
        if (*v110 == 49 && *(v110 + 1) == 0xE100000000000000)
        {

          (*v22)(v46, v42);
          goto LABEL_63;
        }

        v112 = *(v110 + 1);
        v113 = sub_223A218F0();

        (*v22)(v46, v42);
        if ((v215 & 1) == 0)
        {
          goto LABEL_38;
        }

        v66 = v247;
        if (v113)
        {
          goto LABEL_64;
        }

LABEL_73:
        v56 = v56 + v84;
LABEL_18:
        v65 += v66;
        if (!--v4)
        {

          *&v48 = COERCE_DOUBLE();
          goto LABEL_7;
        }

        (v253)(v46, v65, v42);
      }
    }

    v56 = 0.0;
    v57 = 0.0;
LABEL_88:
    v144 = round(v55 - v54 - v57 - v56);
    if ((*&v144 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v144 > -9.22337204e18)
    {
      if (v144 < 9.22337204e18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DA0, &unk_223A24290);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        v146 = (*(*(v145 - 8) + 80) + 32) & ~*(*(v145 - 8) + 80);
        v253 = *(*(v145 - 8) + 72);
        v147 = swift_allocObject();
        *(v147 + 16) = xmmword_223A224A0;
        v148 = (v147 + v146);
        v149 = *(v145 + 48);
        v150 = *MEMORY[0x277CEF998];
        v151 = v202;
        v152 = v189;
        v153 = v230;
        v252 = *(v202 + 104);
        (v252)(v189, v150, v230);
        v154 = sub_223A20B80();
        v156 = v155;
        v157 = *(v151 + 8);
        v202 = v151 + 8;
        v251 = v157;
        v157(v152, v153);
        *v148 = v154;
        v148[1] = v156;
        v158 = round(v57);
        if ((*&v158 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v158 > -9.22337204e18)
          {
            if (v158 < 9.22337204e18)
            {
              v249 = v147;
              *(v148 + v149) = v158;
              v159 = *MEMORY[0x277CEF840];
              v247 = v245[13];
              v247(v148 + v149, v159, v244);
              v248 = v148;
              v160 = (v148 + v253);
              v250 = v145;
              v161 = *(v145 + 48);
              v162 = v188;
              v163 = v230;
              (v252)(v188, *MEMORY[0x277CEF990], v230);
              v164 = sub_223A20B80();
              v166 = v165;
              v251(v162, v163);
              *v160 = v164;
              v160[1] = v166;
              v167 = round(v56);
              if ((*&v167 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v167 > -9.22337204e18)
                {
                  if (v167 < 9.22337204e18)
                  {
                    v246 = v144;
                    *(v160 + v161) = v167;
                    v168 = v159;
                    v169 = v244;
                    LODWORD(v245) = v159;
                    v170 = v247;
                    v247(v160 + v161, v168, v244);
                    v171 = (v248 + 2 * v253);
                    v172 = *(v250 + 12);
                    v173 = v183;
                    v174 = v230;
                    (v252)(v183, *MEMORY[0x277CEF978], v230);
                    v175 = sub_223A20B80();
                    v177 = v176;
                    v251(v173, v174);
                    *v171 = v175;
                    v171[1] = v177;
                    *(v171 + v172) = v246;
                    v170(v171 + v172, v245, v169);
                    sub_2239D4EE0(v249);
                    swift_setDeallocating();
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    sub_223A20C00();

                    return;
                  }

LABEL_110:
                  __break(1u);
                  return;
                }

LABEL_109:
                __break(1u);
                goto LABEL_110;
              }

LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    __break(1u);
    goto LABEL_104;
  }
}

uint64_t sub_2239E1088()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (v22 - v6);
  v8 = sub_223A20C40();
  if (!*(v8 + 16))
  {
    goto LABEL_8;
  }

  v9 = sub_2239CDC74(0xD000000000000011, 0x8000000223A25560);
  if ((v10 & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(v1 + 72);
  v12 = *(v8 + 56) + v11 * v9;
  v24 = *(v1 + 16);
  v24(v7, v12, v0);

  v13 = *(v1 + 88);
  v14 = v13(v7, v0);
  if (v14 != *MEMORY[0x277CEF858])
  {
    (*(v1 + 8))(v7, v0);
    return 0;
  }

  v23 = v14;
  v22[0] = *(v1 + 96);
  v22[1] = v1 + 96;
  (v22[0])(v7, v0);
  v15 = *v7;
  v16 = sub_223A20C40();
  if (*(v16 + 16) && (v17 = sub_2239CDC74(0x7972616D6D75735FLL, 0xEF656D6954646E45), (v18 & 1) != 0))
  {
    v24(v5, *(v16 + 56) + v17 * v11, v0);

    v19 = v13(v5, v0);
    if (v19 == v23)
    {
      (v22[0])(v5, v0);
      v20 = *v5;
      return v15;
    }

    (*(v1 + 8))(v5, v0);
  }

  else
  {
LABEL_8:
  }

  return 0;
}

uint64_t sub_2239E1310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2239E13A4()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  if (*(v0 + v1) & 1) != 0 || (result = sub_2239EFF04(), *(v0 + v1) = result & 1, (result))
  {
    v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
    result = swift_beginAccess();
    if (*(v0 + v3) == 1)
    {
      v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
      swift_beginAccess();
      if (*(v0 + v4))
      {
        result = sub_2239F01FC();
        if ((v5 & 1) == 0)
        {
          if (qword_27D0A47C0 != -1)
          {
            swift_once();
          }

          v6 = *(qword_27D0A4E10 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentOutputGain);

          sub_223A20F30();
        }
      }

      else
      {

        v7 = sub_223A20FB0();
        v8 = sub_223A214D0();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 134217984;
          v10 = v0[6];
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          *(v9 + 4) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v7, v8, "Found AV device, starting AV session. { reporterID=%lld }", v9, 0xCu);
          MEMORY[0x223DF1300](v9, -1, -1);
        }

        else
        {
        }

        if (qword_27D0A47C0 != -1)
        {
          swift_once();
        }

        v11 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v12 = sub_223A20950();
        v13 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v14 = sub_223A209C0();
        sub_2239ECD44(v12, v14, v15);

        *(v0 + v4) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_2239E1670@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_2239E16FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v5 = sub_223A20BC0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_2239E1778@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *sub_2239E1804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_2239E1910(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2239E19DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2239D17A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2239E19DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2239E6EC8(a5, a6);
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
    result = sub_223A21720();
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

Swift::Void __swiftcall InferenceSummaryWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v71 - v4;
  v6 = sub_223A20D20();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A20B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v16 = type metadata accessor for InferenceSummaryState(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  swift_beginAccess();
  *(v1 + 16) = 0;
  v23 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState);
  swift_beginAccess();
  sub_2239CF7E0(v23, v22);
  if ((v22[16] & 1) != 0 || *(v22 + 3))
  {
    sub_2239D62FC(v22, type metadata accessor for InferenceSummaryState);
  }

  else
  {
    v70 = *(*(v22 + 5) + 16);
    sub_2239D62FC(v22, type metadata accessor for InferenceSummaryState);
    if (!v70)
    {
      goto LABEL_28;
    }
  }

  v78 = v10;
  v79 = v9;
  v72 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  v25 = inited;
  *(inited + 16) = xmmword_223A23B90;
  *(inited + 32) = 0x65646F6D5F757063;
  v77 = inited + 32;
  *(inited + 40) = 0xE90000000000006CLL;
  v26 = *v23;
  v27 = v23[1];
  v28 = MEMORY[0x277D837D0];
  if (!v27)
  {
    v26 = 0x6E776F6E6B6E75;
  }

  v29 = 0xE700000000000000;
  if (v27)
  {
    v29 = v23[1];
  }

  *(inited + 48) = v26;
  *(inited + 56) = v29;
  *(inited + 72) = v28;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x8000000223A25CE0;
  v30 = MEMORY[0x277D839F8];
  *(inited + 96) = v23[4];
  *(inited + 120) = v30;
  *(inited + 128) = 0xD000000000000017;
  *(inited + 136) = 0x8000000223A25D00;
  v31 = MEMORY[0x277D84D38];
  *(inited + 144) = v23[3];
  *(inited + 168) = v31;
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000223A25D20;
  sub_2239CF7E0(v23, v20);
  v32 = *(v20 + 3);
  v81 = v1;
  if (v32)
  {
    v33 = *(v20 + 4);

    sub_2239D62FC(v20, type metadata accessor for InferenceSummaryState);
    v34 = 0.0;
    if (v33 > 0.0)
    {
      v34 = v32 / v33;
    }
  }

  else
  {

    sub_2239D62FC(v20, type metadata accessor for InferenceSummaryState);
    v34 = 0.0;
  }

  *(v25 + 192) = v34;
  *(v25 + 216) = v30;
  *(v25 + 224) = 0xD00000000000001ALL;
  *(v25 + 232) = 0x8000000223A25D40;
  *(v25 + 240) = v23[6];
  *(v25 + 264) = v30;
  *(v25 + 272) = 0xD000000000000012;
  *(v25 + 280) = 0x8000000223A25D60;
  *(v25 + 288) = v23[7];
  *(v25 + 312) = v30;
  *(v25 + 320) = 0xD00000000000001ELL;
  *(v25 + 328) = 0x8000000223A25D80;
  v35 = v23[8];
  *(v25 + 360) = v30;
  *(v25 + 336) = v35;
  v36 = *MEMORY[0x277CEF910];
  v38 = v78;
  v37 = v79;
  v76 = *(v78 + 104);
  v76(v15, v36, v79);
  v39 = sub_223A20B80();
  v41 = v40;
  v78 = *(v38 + 8);
  (v78)(v15, v37);
  *(v25 + 368) = v39;
  *(v25 + 376) = v41;
  v42 = (v81 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session);
  v43 = *(v81 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v81 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session), *(v81 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session + 24));
  v44 = sub_223A209C0();
  *(v25 + 408) = MEMORY[0x277D837D0];
  *(v25 + 384) = v44;
  *(v25 + 392) = v45;
  v46 = v80;
  v76(v80, *MEMORY[0x277CEF900], v37);
  v47 = sub_223A20B80();
  v49 = v48;
  (v78)(v46, v37);
  *(v25 + 416) = v47;
  *(v25 + 424) = v49;
  v51 = v23[9];
  v50 = v23[10];
  *(v25 + 456) = MEMORY[0x277D837D0];
  if (!v50)
  {
    v51 = 0x6E776F6E6B6E75;
  }

  v52 = 0xE700000000000000;
  if (v50)
  {
    v52 = v50;
  }

  *(v25 + 432) = v51;
  *(v25 + 440) = v52;

  v53 = sub_2239DC6E4(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  swift_arrayDestroy();
  v54 = v23[5];

  v56 = sub_2239E23D0(v55);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v53;
  sub_2239E2618(v56, sub_223A10484, 0, isUniquelyReferenced_nonNull_native, v82);

  v58 = sub_223A21170();

  if (v58)
  {
    v59 = sub_223A20CA0();
    (*(*(v59 - 8) + 56))(v72, 1, 1, v59);
    v60 = v73;
    sub_223A20CB0();
    v61 = v42[4];
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    if ((sub_223A20980() & 1) == 0)
    {

      v62 = sub_223A20FB0();
      v63 = sub_223A214E0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        v65 = v42[4];
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        *(v64 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v62, v63, "Summary message dropped { reporterID=%lld }", v64, 0xCu);
        MEMORY[0x223DF1300](v64, -1, -1);
      }

      else
      {
      }
    }

    (*(v74 + 8))(v60, v75);
  }

  else
  {

    v66 = sub_223A20FB0();
    v67 = sub_223A214E0();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      v69 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v42[3]);
      *(v68 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v66, v67, "Could not convert summary contents to SimpleType! Dropping. { reporterID=%lld }", v68, 0xCu);
      MEMORY[0x223DF1300](v68, -1, -1);
    }

    else
    {
    }
  }

LABEL_28:
  sub_2239E4AB4();
}

unint64_t sub_2239E23D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_2239DA0A8(&v25, v27);
        sub_2239DA0A8(v27, v28);
        sub_2239DA0A8(v28, &v26);
        result = sub_2239CDC74(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2239DA0A8(&v26, v12);
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
          result = sub_2239DA0A8(&v26, (v2[7] + 32 * result));
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

unint64_t sub_2239E2618(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_2239E4954(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_2239DA0A8(v49, v47);
  v14 = *a5;
  result = sub_2239CDC74(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_223A08DF4(v20, a4 & 1);
    v22 = *a5;
    result = sub_2239CDC74(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_223A21910();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_223A096DC();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_2239D17A8(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0((v26 + v25));
    sub_2239DA0A8(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_2239DA0A8(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_2239E4954(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_2239DA0A8(v49, v47);
        v35 = *a5;
        result = sub_2239CDC74(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_223A08DF4(v39, 1);
          v40 = *a5;
          result = sub_2239CDC74(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_2239D17A8(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0((v34 + v33));
          sub_2239DA0A8(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_2239DA0A8(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_2239E4954(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_2239CE254();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2239E2978()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  result = swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
    result = swift_beginAccess();
    if (*(v0 + v4) == 1)
    {

      v5 = sub_223A20FB0();
      v6 = sub_223A214D0();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        v8 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        *(v7 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v5, v6, "Stopping AV session. { reporterID=%lld }", v7, 0xCu);
        MEMORY[0x223DF1300](v7, -1, -1);
      }

      else
      {
      }

      if (qword_27D0A47C0 != -1)
      {
        swift_once();
      }

      v9 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v10 = sub_223A20950();
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v12 = sub_223A209C0();
      sub_2239ED638(v10, v12, v13);

      v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
      result = swift_beginAccess();
      *(v1 + v14) = 0;
      *(v1 + v4) = 0;
    }

    *(v1 + v2) = 0;
  }

  return result;
}

uint64_t sub_2239E2BC0()
{
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_isAirPodSession) == 1)
    {
      if (qword_27D0A47D8 != -1)
      {
        result = swift_once();
      }

      if (qword_27D0A4E18)
      {
        v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session + 32);
        __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session + 24));
        v3 = sub_223A20950();
        result = sub_2239F137C(v3);
      }
    }

    *(v0 + 16) = 0;
  }

  return result;
}

uint64_t sub_2239E2CA0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), *(*v0 + 48));
  if ((sub_223A20940() & 1) == 0)
  {
    sub_2239E2D20(1886352499, 0xE400000000000000);
  }

  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_2239E2D20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - v8;
  v10 = sub_223A20D20();
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  if ((*(v3 + 82) & 1) == 0)
  {
    v17 = *(*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState) + 80);
    v18 = (v17 * 10) >> 64;
    v19 = 10 * v17;
    if (v18 != v19 >> 63)
    {
      __break(1u);
      return result;
    }

    if (v19 >= 60)
    {
      v45 = v15;
      v46 = v9;
      v47 = v13;
      v48 = result;
      v49 = *(v3 + 80);
      v20 = *(v3 + 56);
      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      sub_223A20970();
      v21 = sub_223A20E50();
      v23 = v22;

      v24 = *(v3 + 56);
      __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
      v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      v26 = sub_223A11188(v21, v23, v25, a1, a2);

      if (v26)
      {

        v27 = sub_223A20FB0();
        v28 = sub_223A214D0();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v50 = v30;
          *v29 = 134218243;
          v31 = *(v3 + 56);
          __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
          *(v29 + 4) = sub_223A20950();

          *(v29 + 12) = 2081;
          v32 = sub_223A21120();
          v34 = sub_2239E1910(v32, v33, &v50);

          *(v29 + 14) = v34;
          _os_log_impl(&dword_2239C7000, v27, v28, "Sending RMS message to PowerLog. { reporterID=%lld, message=%{private}s }", v29, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v30);
          MEMORY[0x223DF1300](v30, -1, -1);
          MEMORY[0x223DF1300](v29, -1, -1);
        }

        else
        {
        }

        v37 = sub_223A211F0();
        v38 = sub_223A21100();
        PLLogRegisteredEvent();

        v39 = sub_223A21170();

        if (v39)
        {
          sub_223A20E70();
          v40 = sub_223A20CA0();
          (*(*(v40 - 8) + 56))(v46, 1, 1, v40);
          v41 = v45;
          sub_223A20CB0();
          v42 = *(v3 + 56);
          __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
          sub_223A20980();
          (*(v47 + 8))(v41, v48);
        }

        v43 = *(v3 + v16);
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        *(v43 + 32) = 0;
        *(v43 + 40) = 0xFF7FFFFF7F7FFFFFLL;
        v44 = *(v43 + 56);
        *(v43 + 48) = 0;
        *(v43 + 56) = 0xE000000000000000;

        *(v43 + 64) = 0;
        *(v43 + 72) = 1;
        *(v43 + 80) = 0;
      }

      v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
    }
  }

  v35 = *(v3 + v16);
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  v36 = *(v35 + 56);
  *(v35 + 48) = 0;
  *(v35 + 56) = 0xE000000000000000;

  *(v35 + 64) = 0;
  *(v35 + 72) = 1;
  *(v35 + 80) = 0;
}

Swift::Void __swiftcall SummaryDecoratorWorker.stop()()
{
  v1 = sub_223A20680();
  v94 = *(v1 - 8);
  v2 = *(v94 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v95 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v88 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v75 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v75 - v19;
  v21 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates);
  if (v21 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_223A21780())
  {
    v23 = 0;
    v80 = v21 & 0xC000000000000001;
    v76 = v21 & 0xFFFFFFFFFFFFFF8;
    v75 = v21 + 32;
    v93 = (v94 + 16);
    v24 = (v94 + 32);
    v86 = v94 + 40;
    v90 = v16;
    v77 = i;
    v87 = (v94 + 32);
    v91 = v12;
    v92 = v10;
    v79 = v20;
    v78 = v21;
    while (1)
    {
      if (v80)
      {
        v25 = MEMORY[0x223DF07F0](v23, v21);
      }

      else
      {
        if (v23 >= *(v76 + 16))
        {
          goto LABEL_50;
        }

        v26 = *(v75 + 8 * v23);
      }

      v27 = __OFADD__(v23, 1);
      v28 = v23 + 1;
      if (v27)
      {
        break;
      }

      v29 = *(v25 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1;
      v83 = v28;
      v30 = v25;
      if (v29)
      {
        sub_2239DD3B0(0, v20);
      }

      else
      {
        v31 = sub_223A20D20();
        (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
      }

      sub_2239CDCEC(v20, &qword_27D0A4B38, " >");
      v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
      v32 = *(sub_223A206F0() + 16);

      if (v32 + 0x4000000000000000 < 0)
      {
        goto LABEL_49;
      }

      v33 = MEMORY[0x223DF0210](2 * v32, MEMORY[0x277D837D0], v1, MEMORY[0x277D837E0]);
      v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
      swift_beginAccess();
      v34 = *(v30 + v10);
      *(v30 + v10) = v33;

      v35 = sub_223A206F0();
      swift_beginAccess();
      v36 = *(v30 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v30 + v10);
      v82 = v30;
      v81 = v10;
      *(v30 + v10) = 0x8000000000000000;
      v99 = v38;
      v39 = *(v35 + 64);
      v85 = v35 + 64;
      v40 = 1 << *(v35 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v21 = v41 & v39;
      v84 = (v40 + 63) >> 6;
      v89 = v35;
      v16 = v38;

      for (j = 0; ; j = v96)
      {
        v98 = v16;
        v97 = isUniquelyReferenced_nonNull_native;
        if (!v21)
        {
          if (v84 <= j + 1)
          {
            v44 = j + 1;
          }

          else
          {
            v44 = v84;
          }

          while (1)
          {
            v20 = j + 1;
            if (__OFADD__(j, 1))
            {
              break;
            }

            if (v20 >= v84)
            {
              v96 = v44 - 1;
              v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
              v53 = v91;
              (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
              v21 = 0;
              goto LABEL_29;
            }

            v21 = *(v85 + 8 * v20);
            ++j;
            if (v21)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v20 = j;
LABEL_28:
        v45 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v46 = v45 | (v20 << 6);
        v47 = v88;
        v48 = (*(v89 + 48) + 16 * v46);
        v50 = *v48;
        v49 = v48[1];
        v51 = v94;
        (*(v94 + 16))(v88, *(v89 + 56) + *(v94 + 72) * v46, v1);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v52 = *(v12 + 12);
        v53 = v91;
        *v91 = v50;
        *(v53 + 8) = v49;
        v54 = v47;
        v24 = v87;
        (*(v51 + 32))(v53 + v52, v54, v1);
        (*(*(v12 - 1) + 56))(v53, 0, 1, v12);

        v96 = v20;
LABEL_29:
        v55 = v92;
        sub_2239D0F08(v53, v92);
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v16 = v90;
          (*(*(v57 - 8) + 56))(v90, 1, 1, v57);
        }

        else
        {
          v58 = *(v56 + 48);
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v60 = *v55;
          v12 = *(v55 + 1);
          v16 = v90;
          (*v93)(v90 + *(v59 + 48), &v55[v58], v1);
          *v16 = v60;
          v16[1] = v12;

          sub_2239CDCEC(v55, &qword_27D0A4B60, &qword_223A23760);
          (*(*(v59 - 8) + 56))(v16, 0, 1, v59);
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        if ((*(*(v10 - 8) + 48))(v16, 1, v10) == 1)
        {
          break;
        }

        v12 = *v16;
        v20 = v16[1];
        v61 = *v24;
        v62 = v1;
        (*v24)(v95, v16 + *(v10 + 48), v1);
        v63 = v98;
        v1 = sub_2239CDC74(v12, v20);
        v65 = v63[2];
        v66 = (v64 & 1) == 0;
        v67 = v65 + v66;
        if (__OFADD__(v65, v66))
        {
          goto LABEL_46;
        }

        v10 = v64;
        if (v63[3] >= v67)
        {
          if (v97)
          {
            v16 = v99;
            if (v64)
            {
              goto LABEL_18;
            }
          }

          else
          {
            sub_2239DAF30();
            v16 = v99;
            if (v10)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
          sub_2239D9194(v67, v97 & 1);
          v68 = sub_2239CDC74(v12, v20);
          if ((v10 & 1) != (v69 & 1))
          {
            sub_223A21910();
            __break(1u);
            return;
          }

          v1 = v68;
          v16 = v99;
          if (v10)
          {
LABEL_18:

            v43 = v16[7] + *(v94 + 72) * v1;
            v1 = v62;
            (*(v94 + 40))(v43, v95, v62);
            goto LABEL_19;
          }
        }

        v16[(v1 >> 6) + 8] |= 1 << v1;
        v70 = (v16[6] + 16 * v1);
        *v70 = v12;
        v70[1] = v20;
        v71 = v16[7] + *(v94 + 72) * v1;
        v1 = v62;
        v61(v71, v95, v62);
        v72 = v16[2];
        v27 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v27)
        {
          goto LABEL_47;
        }

        v16[2] = v73;
LABEL_19:
        isUniquelyReferenced_nonNull_native = 1;
      }

      v16 = v82;
      *(v82 + v81) = v98;
      swift_endAccess();

      v23 = v83;
      v20 = v79;
      v21 = v78;
      if (v83 == v77)
      {
        return;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }
}

Swift::Void __swiftcall DurationSummaryWorker.stop()()
{
  v121 = sub_223A20680();
  v116 = *(v121 - 8);
  v1 = *(v116 + 64);
  v2 = MEMORY[0x28223BE20](v121);
  v117 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v109 = &v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = (&v87 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B80, &unk_223A23730);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v111 = (&v87 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B38, " >");
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v87 - v16;
  v18 = sub_223A20D20();
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v97 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates;
  swift_beginAccess();
  v23 = *(v0 + v22);
  v89 = v0;
  if (v23 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v0 = v89)
  {
    v95 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session);
    v100 = v23 & 0xC000000000000001;
    v88 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
    v91 = v23 & 0xFFFFFFFFFFFFFF8;
    v90 = v23 + 32;
    v94 = (v19 + 56);
    v115 = (v116 + 16);
    v110 = (v116 + 32);
    v108 = v116 + 40;
    v98 = (v19 + 48);
    v93 = (v19 + 32);
    v92 = (v19 + 8);
    v96 = v23;

    v19 = 0;
    *&v25 = 134217984;
    v87 = v25;
    v99 = i;
    v113 = v9;
    v102 = v17;
    v101 = v18;
    while (v100)
    {
      v23 = MEMORY[0x223DF07F0](v19, v96);
      v26 = v23;
      v27 = __OFADD__(v19++, 1);
      if (v27)
      {
        goto LABEL_60;
      }

LABEL_12:
      v28 = *(v26 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_isRunning) == 1;
      v104 = v19;
      if (v28)
      {
        sub_2239DD3B0(0, v17);
      }

      else
      {
        (*v94)(v17, 1, 1, v18);
      }

      v29 = v26;
      v19 = *(sub_223A206F0() + 16);

      if ((v19 + 0x4000000000000000) < 0)
      {
        goto LABEL_61;
      }

      v30 = MEMORY[0x223DF0210](2 * v19, MEMORY[0x277D837D0], v121, MEMORY[0x277D837E0]);
      v31 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues;
      swift_beginAccess();
      v32 = *(v26 + v31);
      *(v26 + v31) = v30;

      v33 = sub_223A206F0();
      swift_beginAccess();
      v34 = *(v26 + v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v26 + v31);
      v105 = v29;
      v103 = v31;
      *(v29 + v31) = 0x8000000000000000;
      v122 = v36;
      v37 = *(v33 + 64);
      v107 = v33 + 64;
      v38 = 1 << *(v33 + 32);
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v9 = v39 & v37;
      v106 = (v38 + 63) >> 6;
      v112 = v33;

      v40 = 0;
      v41 = v111;
      v18 = v110;
      while (1)
      {
        v120 = v36;
        v119 = isUniquelyReferenced_nonNull_native;
        if (!v9)
        {
          if (v106 <= v40 + 1)
          {
            v44 = v40 + 1;
          }

          else
          {
            v44 = v106;
          }

          while (1)
          {
            v43 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v43 >= v106)
            {
              v118 = v44 - 1;
              v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
              v79 = v114;
              (*(*(v78 - 8) + 56))(v114, 1, 1, v78);
              v56 = v79;
              v9 = 0;
              goto LABEL_32;
            }

            v9 = *(v107 + 8 * v43);
            ++v40;
            if (v9)
            {
              v42 = v121;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_56:

          v0 = v89;
          goto LABEL_57;
        }

        v42 = v121;
        v43 = v40;
LABEL_31:
        v45 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v46 = v45 | (v43 << 6);
        v47 = (*(v112 + 48) + 16 * v46);
        v49 = *v47;
        v48 = v47[1];
        v50 = v116;
        v51 = v109;
        (*(v116 + 16))(v109, *(v112 + 56) + *(v116 + 72) * v46, v42);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        v53 = *(v52 + 48);
        v54 = v114;
        *v114 = v49;
        *(v54 + 1) = v48;
        v55 = v51;
        v18 = v110;
        (*(v50 + 32))(&v54[v53], v55, v42);
        (*(*(v52 - 8) + 56))(v54, 0, 1, v52);

        v118 = v43;
        v56 = v54;
        v41 = v111;
LABEL_32:
        v57 = v113;
        sub_2239CE130(v56, v113, &qword_27D0A4BC0, &unk_223A23780);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
        {
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          (*(*(v59 - 8) + 56))(v41, 1, 1, v59);
        }

        else
        {
          v60 = *(v58 + 48);
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
          v63 = *v57;
          v62 = v57[1];
          (*v115)(v41 + *(v61 + 48), v57 + v60, v121);
          *v41 = v63;
          v41[1] = v62;

          sub_2239CDCEC(v57, &qword_27D0A4B60, &qword_223A23760);
          (*(*(v61 - 8) + 56))(v41, 0, 1, v61);
        }

        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B88, &qword_223A237C0);
        if ((*(*(v64 - 8) + 48))(v41, 1, v64) == 1)
        {
          break;
        }

        v65 = *v41;
        v17 = v41[1];
        v19 = *v18;
        v66 = v121;
        (*v18)(v117, v41 + *(v64 + 48));
        v67 = v120;
        v69 = sub_2239CDC74(v65, v17);
        v70 = v67[2];
        v71 = (v68 & 1) == 0;
        v23 = v70 + v71;
        if (__OFADD__(v70, v71))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v72 = v68;
        if (v67[3] >= v23)
        {
          if (v119)
          {
            v36 = v122;
            if (v68)
            {
              goto LABEL_20;
            }
          }

          else
          {
            sub_2239DAF30();
            v36 = v122;
            if (v72)
            {
              goto LABEL_20;
            }
          }
        }

        else
        {
          sub_2239D9194(v23, v119 & 1);
          v73 = sub_2239CDC74(v65, v17);
          if ((v72 & 1) != (v74 & 1))
          {
            sub_223A21910();
            __break(1u);
            return;
          }

          v69 = v73;
          v36 = v122;
          if (v72)
          {
LABEL_20:

            (*(v116 + 40))(v36[7] + *(v116 + 72) * v69, v117, v66);
            goto LABEL_21;
          }
        }

        v36[(v69 >> 6) + 8] |= 1 << v69;
        v75 = (v36[6] + 16 * v69);
        *v75 = v65;
        v75[1] = v17;
        v23 = (v19)(v36[7] + *(v116 + 72) * v69, v117, v66);
        v76 = v36[2];
        v27 = __OFADD__(v76, 1);
        v77 = v76 + 1;
        if (v27)
        {
          goto LABEL_59;
        }

        v36[2] = v77;
LABEL_21:
        isUniquelyReferenced_nonNull_native = 1;
        v40 = v118;
      }

      *(v105 + v103) = v120;
      swift_endAccess();
      v17 = v102;
      v18 = v101;
      if ((*v98)(v102, 1, v101) == 1)
      {

        v23 = sub_2239CDCEC(v17, &qword_27D0A4B38, " >");
      }

      else
      {
        v80 = v97;
        (*v93)(v97, v17, v18);
        v81 = v95[4];
        __swift_project_boxed_opaque_existential_1(v95, v95[3]);
        if (sub_223A20980())
        {
          (*v92)(v80, v18);
        }

        else
        {

          v82 = sub_223A20FB0();
          v83 = sub_223A214E0();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = v87;
            v85 = v95[4];
            __swift_project_boxed_opaque_existential_1(v95, v95[3]);
            v18 = v101;
            v17 = v102;
            *(v84 + 4) = sub_223A20950();

            _os_log_impl(&dword_2239C7000, v82, v83, "Summary message dropped { reporterID=%lld }", v84, 0xCu);
            MEMORY[0x223DF1300](v84, -1, -1);
          }

          else
          {
          }

          v23 = (*v92)(v97, v18);
        }
      }

      v19 = v104;
      if (v104 == v99)
      {
        goto LABEL_56;
      }
    }

    if (v19 >= *(v91 + 16))
    {
      goto LABEL_62;
    }

    v26 = *(v90 + 8 * v19);

    v27 = __OFADD__(v19++, 1);
    if (!v27)
    {
      goto LABEL_12;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v86 = v23;
    i = sub_223A21780();
    v23 = v86;
  }

LABEL_57:
  swift_beginAccess();
  *(v0 + 16) = 0;
}

uint64_t sub_2239E4954@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2239D17A8(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_2239DA0A8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2239CDCEC(v22, &qword_27D0A4AA8, &unk_223A23930);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2239E4AB4()
{
  v1 = type metadata accessor for InferenceSummaryState(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 0;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0;
  *(v5 + 5) = MEMORY[0x277D84F98];
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  *(v5 + 11) = 0xD000000000000026;
  *(v5 + 12) = 0x8000000223A25CB0;
  v6 = &v5[v2[16]];
  sub_223A20F70();
  v5[v2[17]] = 0;
  v7 = &v5[v2[18]];
  *v7 = 0;
  v7[8] = 1;
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState;
  swift_beginAccess();
  sub_2239D5D3C(v5, v0 + v8);
  return swift_endAccess();
}

unint64_t sub_2239E4BE4()
{
  result = qword_281332770;
  if (!qword_281332770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332770);
  }

  return result;
}

unint64_t sub_2239E4C38()
{
  result = qword_281332768;
  if (!qword_281332768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281332768);
  }

  return result;
}

uint64_t sub_2239E4C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_223A20680();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2239CDCEC(a1, &qword_27D0A4928, &qword_223A22B40);
    sub_223A12940(a2, a3, v10);

    return sub_2239CDCEC(v10, &qword_27D0A4928, &qword_223A22B40);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2239DEAB8(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t PowerLogWorker.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2239E4F58()
{
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SessionSummaryWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v89 - v4;
  v6 = sub_223A20D20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223A20B90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &v89 - v17;
  swift_beginAccess();
  *(v1 + 16) = 0;
  v18 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount;
  if (*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalMessageCount))
  {
    v102 = v12;
    v104 = v16;
    v105 = v11;
    v90 = v5;
    v91 = v10;
    v19 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount;
    v20 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount);
    v92 = v7;
    v93 = v6;
    if (v20)
    {
      v21 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) / v20;
    }

    else
    {
      v21 = 0.0;
    }

    v23 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session);
    v24 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session + 24));
    sub_223A20960();
    sub_223A20EB0();
    v25 = sub_223A21250();
    v103 = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_223A24030;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x8000000223A26240;
    v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime;
    v29 = MEMORY[0x277D839F8];
    *(inited + 48) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime);
    *(inited + 72) = v29;
    strcpy((inited + 80), "active_count");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v30 = MEMORY[0x277D84D38];
    *(inited + 96) = *(v1 + v19);
    *(inited + 120) = v30;
    strcpy((inited + 128), "overload_count");
    *(inited + 143) = -18;
    v31 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount;
    *(inited + 144) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount);
    *(inited + 168) = v30;
    *(inited + 176) = 0xD000000000000016;
    *(inited + 184) = 0x8000000223A26260;
    v32 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount;
    v33 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount);
    *(inited + 192) = v33;
    *(inited + 216) = v30;
    *(inited + 224) = 0xD000000000000018;
    *(inited + 232) = 0x8000000223A26280;
    v34 = MEMORY[0x277D839B0];
    *(inited + 240) = v33 != 0;
    *(inited + 264) = v34;
    *(inited + 272) = 0xD000000000000018;
    *(inited + 280) = 0x8000000223A262A0;
    *(inited + 288) = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount);
    *(inited + 312) = v30;
    *(inited + 320) = 0xD000000000000013;
    *(inited + 328) = 0x8000000223A262C0;
    *(inited + 336) = v21;
    *(inited + 360) = v29;
    strcpy((inited + 368), "num_messages");
    *(inited + 381) = 0;
    *(inited + 382) = -5120;
    v35 = *(v1 + v18);
    *(inited + 384) = v35;
    *(inited + 408) = v30;
    *(inited + 416) = 0xD000000000000013;
    *(inited + 424) = 0x8000000223A262E0;
    v36 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
    v37 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
    *(inited + 432) = v37;
    *(inited + 456) = v30;
    *(inited + 464) = 0xD000000000000016;
    *(inited + 472) = 0x8000000223A26300;
    v38 = v35 >= v37;
    v39 = v35 - v37;
    if (!v38)
    {
      __break(1u);
      return;
    }

    v97 = v1;
    v98 = v36;
    v99 = v32;
    v100 = v31;
    v101 = v28;
    v106 = v19;
    v107 = v18;
    *(inited + 480) = v39;
    *(inited + 504) = v30;
    *(inited + 512) = 0xD000000000000014;
    *(inited + 520) = 0x8000000223A26320;
    v94 = v25;
    v95 = inited + 32;
    v40 = v23[4];
    v41 = v34;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v42 = sub_223A20940();
    *(inited + 552) = v41;
    *(inited + 528) = v42 & 1;
    v43 = *MEMORY[0x277CEF938];
    v44 = v102;
    v96 = v23;
    v45 = *(v102 + 104);
    v46 = v108;
    v47 = v105;
    v45(v108, v43, v105);
    v48 = sub_223A20B80();
    v50 = v49;
    v51 = *(v44 + 8);
    v51(v46, v47);
    *(inited + 560) = v48;
    *(inited + 568) = v50;
    *(inited + 600) = MEMORY[0x277D837D0];
    *(inited + 576) = v94;
    v52 = v104;
    *(inited + 584) = v103;
    v45(v52, *MEMORY[0x277CEF910], v47);
    v53 = v96;
    v54 = sub_223A20B80();
    v56 = v55;
    v51(v52, v47);
    *(inited + 608) = v54;
    *(inited + 616) = v56;
    v57 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v58 = sub_223A209C0();
    v59 = MEMORY[0x277D837D0];
    *(inited + 648) = MEMORY[0x277D837D0];
    *(inited + 624) = v58;
    *(inited + 632) = v60;
    *(inited + 656) = 0xD000000000000011;
    *(inited + 664) = 0x8000000223A26340;
    v61 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    v62 = sub_223A20990();
    *(inited + 696) = v59;
    *(inited + 672) = v62;
    *(inited + 680) = v63;
    strcpy((inited + 704), "thermal_state");
    *(inited + 718) = -4864;
    sub_223A208A0();
    v64 = sub_223A208E0();
    *(inited + 744) = v59;
    *(inited + 720) = v64;
    *(inited + 728) = v65;
    *(inited + 752) = 0xD000000000000011;
    *(inited + 760) = 0x8000000223A26360;
    v66 = sub_223A20890();
    *(inited + 792) = MEMORY[0x277D83B88];
    *(inited + 768) = v66 & 1;
    sub_2239DC6E4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
    swift_arrayDestroy();
    v67 = sub_223A21170();

    if (v67)
    {
      v68 = sub_223A20CA0();
      (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
      v69 = v91;
      sub_223A20CB0();
      v70 = sub_223A20CD0();
      sub_223A20C90();
      v70(&v109, 0);
      v71 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      v72 = sub_223A20980();
      v74 = v106;
      v73 = v107;
      v75 = v97;
      if ((v72 & 1) == 0)
      {

        v76 = sub_223A20FB0();
        v77 = sub_223A214E0();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 134217984;
          v79 = v53[4];
          __swift_project_boxed_opaque_existential_1(v53, v53[3]);
          v74 = v106;
          v73 = v107;
          *(v78 + 4) = sub_223A20950();

          _os_log_impl(&dword_2239C7000, v76, v77, "Summary message dropped { reporterID=%lld }", v78, 0xCu);
          MEMORY[0x223DF1300](v78, -1, -1);
        }

        else
        {
        }
      }

      (*(v92 + 8))(v69, v93);
      v88 = v100;
      *(v75 + v101) = 0;
      *(v75 + v74) = 0;
      *(v75 + v88) = 0;
      v22 = v98;
      *(v75 + v99) = 0;
      *(v75 + v73) = 0;
    }

    else
    {
      v80 = v97;

      v81 = sub_223A20FB0();
      v82 = sub_223A214E0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 134217984;
        v84 = v53[4];
        __swift_project_boxed_opaque_existential_1(v53, v53[3]);
        *(v83 + 4) = sub_223A20950();

        _os_log_impl(&dword_2239C7000, v81, v82, "Could not convert summary contents to SimpleType! Dropping. { reporterID=%lld }", v83, 0xCu);
        MEMORY[0x223DF1300](v83, -1, -1);
      }

      else
      {
      }

      v86 = v106;
      v85 = v107;
      *(v80 + v101) = 0;
      *(v80 + v86) = 0;
      v87 = v99;
      *(v80 + v100) = 0;
      *(v80 + v87) = 0;
      *(v80 + v85) = 0;
      v22 = v98;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_totalActiveTime) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_activeCount) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_overloadCount) = 0;
    *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = 0;
    *(v1 + v18) = 0;
    v22 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_uniqueMessageCount);
  }

  *v22 = 0;
}

uint64_t sub_2239E5950()
{
  v1 = *v0;
  result = swift_beginAccess();
  *(v1 + 16) = 0;
  return result;
}

Swift::Void __swiftcall RTCWorker.stop()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A80, &qword_223A23270);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v79 - v4;
  v6 = sub_223A20D20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v79 - v13;
  v97 = sub_223A20680();
  v15 = *(v97 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v97);
  v96 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = (&v79 - v19);
  v21 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  if (*(v1 + v21) != 1 || (v22 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting)) == 0)
  {

    v35 = sub_223A20FB0();
    v36 = sub_223A214D0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      v38 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v37 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v35, v36, "RTC worker not started, skipping stop. { reporterID=%lld }", v37, 0xCu);
      MEMORY[0x223DF1300](v37, -1, -1);
    }

    else
    {
    }

    goto LABEL_31;
  }

  v93 = v20;
  v94 = v15;
  v23 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24);
  v24 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
  v85 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), v23);
  v91 = v22;
  if ((sub_223A20940() & 1) != 0 || (v25 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents, swift_beginAccess(), v26 = *(v1 + v25), !*(v26 + 16)))
  {
LABEL_30:
    v78 = v91;
    [v91 flushMessages];

LABEL_31:
    sub_2239E889C();
    return;
  }

  v79 = v14;
  v80 = v10;
  v81 = v7;
  v82 = v5;
  v83 = v6;
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v95 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
  v31 = (v28 + 63) >> 6;
  v89 = *MEMORY[0x277CEF860];
  v32 = v94;
  v90 = (v94 + 104);
  v92 = (v94 + 32);
  v84 = v94 + 40;

  v34 = 0;
  v87 = v27;
  v86 = v31;
  v88 = v33;
  while (v30)
  {
LABEL_18:
    v42 = __clz(__rbit64(v30)) | (v34 << 6);
    v43 = (*(v33 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    v99 = *(*(v33 + 56) + 8 * v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A90, &unk_223A233A0);
    sub_2239D18A4();
    v46 = sub_223A211D0();
    v48 = v47;

    v49 = v93;
    *v93 = v46;
    v49[1] = v48;
    v50 = v97;
    (*v90)(v49, v89, v97);
    v51 = v95;
    swift_beginAccess();
    v52 = *v92;
    (*v92)(v96, v49, v50);
    v53 = *(v1 + v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = *(v1 + v51);
    v55 = v98;
    *(v1 + v51) = 0x8000000000000000;
    v57 = sub_2239CDC74(v45, v44);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_33;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v56)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_2239DAF30();
        if (v61)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      sub_2239D9194(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_2239CDC74(v45, v44);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_35;
      }

      v57 = v62;
      if (v61)
      {
LABEL_11:

        v39 = v98;
        v32 = v94;
        (*(v94 + 40))(v98[7] + *(v94 + 72) * v57, v96, v97);
        goto LABEL_12;
      }
    }

    v64 = v97;
    v39 = v98;
    v98[(v57 >> 6) + 8] |= 1 << v57;
    v65 = (v39[6] + 16 * v57);
    *v65 = v45;
    v65[1] = v44;
    v32 = v94;
    v52((v39[7] + *(v94 + 72) * v57), v96, v64);
    v66 = v39[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_34;
    }

    v39[2] = v68;
LABEL_12:
    v31 = v86;
    v30 &= v30 - 1;
    v40 = *(v1 + v95);
    *(v1 + v95) = v39;

    swift_endAccess();
    v27 = v87;
    v33 = v88;
  }

  while (1)
  {
    v41 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v41 >= v31)
    {

      v69 = v32;
      v70 = v85[4];
      __swift_project_boxed_opaque_existential_1(v85, v85[3]);
      v71 = sub_223A20960();
      v72 = v79;
      *v79 = v71;
      v73 = v97;
      (*(v69 + 104))(v72, *MEMORY[0x277CEF850], v97);
      (*(v69 + 56))(v72, 0, 1, v73);
      v74 = v95;
      swift_beginAccess();
      sub_2239E4C8C(v72, 0xD000000000000018, 0x8000000223A26110);
      swift_endAccess();
      v75 = *(v1 + v74);
      v76 = sub_223A20CA0();
      (*(*(v76 - 8) + 56))(v82, 1, 1, v76);

      v77 = v80;
      sub_223A20CB0();
      sub_2239D7728(v77);
      (*(v81 + 8))(v77, v83);
      goto LABEL_30;
    }

    v30 = *(v27 + 8 * v41);
    ++v34;
    if (v30)
    {
      v34 = v41;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_223A21910();
  __break(1u);
}

uint64_t DurationSummaryWorker.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_summaryStates];

  v5 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_dynamicSummaryConfigs];

  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session]);
  v6 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_config];

  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  v8 = sub_223A20FC0();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryState.__deallocating_deinit()
{
  DurationSummaryState.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryState.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_config;
  v3 = sub_223A207D0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_2239CDCEC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentMessage, &qword_27D0A4B38, " >");
  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_currentFlattenedMessage);

  v7 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_requiredKeyValues);

  v8 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_previousValues);

  v9 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DurationSummaryState_seenFields);

  return v0;
}

uint64_t InferenceSummaryWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_2239D62FC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState, type metadata accessor for InferenceSummaryState);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SessionSummaryWorker.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields];

  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session]);
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_logger;
  v6 = sub_223A20FC0();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t CoreAnalyticsWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal19CoreAnalyticsWorker_nonAlphaNumerics;
  v4 = sub_223A20290();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SummaryDecoratorWorker.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v3 = sub_223A20BC0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  __swift_destroy_boxed_opaque_existential_0(&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session]);
  v4 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_config];

  v5 = *&v0[OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_summaryDecoratorStates];

  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  v7 = sub_223A20FC0();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall DriverSnapshotWorker.start()()
{
  v1 = v0;
  if (qword_281332DD8 != -1)
  {
    swift_once();
  }

  v2 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session + 24));
  v4 = sub_223A20960();
  if ((sub_2239E8BFC(v4) & 1) == 0)
  {
    swift_retain_n();
    v9 = sub_223A20FB0();
    v20 = sub_223A214D0();
    if (os_log_type_enabled(v9, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136446466;
      v23 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_223A20960();
      v24 = sub_223A20EB0();
      v26 = sub_2239E1910(v24, v25, v40);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      v27 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v28 = sub_223A20950();

      *(v21 + 14) = v28;

      _os_log_impl(&dword_2239C7000, v9, v20, "DriverSnapshotManager.shouldRun == false. { serviceType=%{public}s, reporterID=%lld }", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DF1300](v22, -1, -1);
      v29 = v21;
LABEL_11:
      MEMORY[0x223DF1300](v29, -1, -1);

      return 0;
    }

LABEL_12:

    return 0;
  }

  v5 = sub_2239E9454();
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample;
  v7 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_startSample) = v5;

  v8 = *(v1 + v6);
  swift_retain_n();
  v9 = sub_223A20FB0();
  v10 = sub_223A214D0();
  v11 = os_log_type_enabled(v9, v10);
  if (!v8)
  {
    if (v11)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v30 = 136446466;
      v32 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      sub_223A20960();
      v33 = sub_223A20EB0();
      v35 = sub_2239E1910(v33, v34, v40);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2048;
      v36 = v2[4];
      __swift_project_boxed_opaque_existential_1(v2, v2[3]);
      v37 = sub_223A20950();

      *(v30 + 14) = v37;

      _os_log_impl(&dword_2239C7000, v9, v10, "Retrieving initial snapshot failed. { serviceType=%{public}s, reporterID=%lld }", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223DF1300](v31, -1, -1);
      v29 = v30;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40[0] = v13;
    *v12 = 136446466;
    v14 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_223A20960();
    v15 = sub_223A20EB0();
    v17 = sub_2239E1910(v15, v16, v40);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v19 = sub_223A20950();

    *(v12 + 14) = v19;

    _os_log_impl(&dword_2239C7000, v9, v10, "Snapshot retrieved. { serviceType=%{public}s, reporterID=%lld }", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DF1300](v13, -1, -1);
    MEMORY[0x223DF1300](v12, -1, -1);
  }

  else
  {
  }

  v38 = 1;
  swift_beginAccess();
  *(v1 + 16) = 1;
  return v38;
}

void *sub_2239E6D24(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4A98, &unk_223A23470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2239E6D98(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2239E6D24(v5, 0);
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

  result = sub_223A21720();
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
        v10 = sub_223A212C0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2239E6D24(v10, 0);
        result = sub_223A216E0();
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

uint64_t sub_2239E6EC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2239E6D98(a1, a2);
  sub_2239E6F14(&unk_283702878);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2239E6F14(uint64_t result)
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

  result = sub_223A02BC8(result, v12, 1, v3);
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

void sub_2239E7000()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 1;
  v2 = [objc_opt_self() newHierarchyTokenFromParentToken_];
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = v2;

  v4 = sub_2239E733C();
  v6 = v5;
  sub_2239E85C4(v4);

  sub_2239E85C4(v6);

  v7 = objc_allocWithZone(MEMORY[0x277D43FE8]);
  v8 = sub_223A21100();

  v9 = sub_223A21100();

  v10 = [v7 initWithSessionInfo:v8 userInfo:v9 frameworksToCheck:0];

  v11 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = v10;
  v19 = v10;

  if (v19)
  {
    [v19 startConfigurationWithCompletionHandler:0];

    v12 = sub_223A20FB0();
    v13 = sub_223A214D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v14 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v12, v13, "RTC started { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DF1300](v14, -1, -1);

LABEL_6:

      return;
    }
  }

  else
  {

    v19 = sub_223A20FB0();
    v16 = sub_223A214E0();
    if (os_log_type_enabled(v19, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      v18 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v17 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v19, v16, "Failed to unwrap RTC Reporting object { reporterID=%lld }", v17, 0xCu);
      MEMORY[0x223DF1300](v17, -1, -1);
      goto LABEL_6;
    }
  }
}

uint64_t sub_2239E733C()
{
  v112 = sub_223A20680();
  v114 = *(v112 - 8);
  v1 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  v111 = v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  if (!v3)
  {

    v48 = sub_223A20FB0();
    v49 = sub_223A214E0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      v51 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
      *(v50 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v48, v49, "Failed to unwrap RTC reporting token { reporterID=%lld }", v50, 0xCu);
      MEMORY[0x223DF1300](v50, -1, -1);
    }

    else
    {
    }

    v102 = MEMORY[0x277D84F90];
    v103 = sub_2239E7FBC(MEMORY[0x277D84F90]);
    sub_2239E7FBC(v102);
    return v103;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D48, "j8");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A234B0;
  if (!*MEMORY[0x277D44038])
  {
    goto LABEL_57;
  }

  v6 = inited;
  v7 = sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
  v8 = v3;
  v6[4] = sub_223A215C0();
  v9 = sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  v10 = sub_223A21590();
  v6[8] = v9;
  v6[5] = v10;
  if (!*MEMORY[0x277D44048])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *(&v116 + 1) = v8;
  v115 = v4;
  v6[9] = sub_223A215C0();
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v6[13] = v9;
  v6[10] = v11;
  if (!*MEMORY[0x277D44078])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v6[14] = sub_223A215C0();
  v12 = (v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session);
  v13 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
  v6[18] = v9;
  v6[15] = v14;
  if (!*MEMORY[0x277D44018])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6[19] = sub_223A215C0();
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6[23] = v9;
  v6[20] = v15;
  v16 = *(&v116 + 1);
  if (!*MEMORY[0x277D44060])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v6[24] = sub_223A215C0();
  v6[28] = sub_2239E7EF4(0, &qword_2813326E8, 0x277D82BB8);
  v6[25] = v16;
  if (!*MEMORY[0x277D44020])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v113 = v9;
  v106 = v16;
  v6[29] = sub_223A215C0();
  v17 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_223A209C0();
  v18 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v19 = sub_223A211F0();

  v20 = [v18 initWithString_];

  v6[33] = v7;
  v6[30] = v20;
  v105 = sub_2239E7FBC(v6);
  swift_setDeallocating();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C28, &qword_223A23920);
  swift_arrayDestroy();
  v21 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_223A20960();
  sub_223A20EB0();
  *&v116 = sub_223A21250();
  *(&v116 + 1) = v22;

  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_223A224A0;
  if (*MEMORY[0x277D44088])
  {
    *(v23 + 32) = sub_223A215C0();
    v24 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v25 = sub_223A211F0();
    v26 = [v24 initWithString_];

    *(v23 + 64) = v7;
    *(v23 + 40) = v26;
    v27 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v28 = sub_223A211F0();
    v29 = [v27 initWithString_];

    *(v23 + 72) = v29;
    v30 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    v32 = v113;
    *(v23 + 104) = v113;
    *(v23 + 80) = v31;
    v33 = *MEMORY[0x277D440A0];
    if (*MEMORY[0x277D440A0])
    {
      v34 = *MEMORY[0x277D440A0];
      *(v23 + 112) = sub_223A215C0();
      *&v119 = 0x6E6F69737365735FLL;
      *(&v119 + 1) = 0xE800000000000000;
      v118[0] = v116;

      v35 = MEMORY[0x277D837D0];
      *&v118[0] = sub_223A21330();
      *(&v118[0] + 1) = v36;
      sub_223A212A0();
      v37 = v118[0];
      *(v23 + 144) = v35;
      *(v23 + 120) = v37;
      v38 = sub_2239E7FBC(v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (sub_223A208C0())
      {
        v39 = sub_223A211F0();
        v40 = v12[4];
        __swift_project_boxed_opaque_existential_1(v12, v12[3]);
        v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
        v121 = v32;
        *&v119 = v41;
        sub_2239DA0A8(&v119, v118);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v38;
        sub_2239E81FC(v118, v39, isUniquelyReferenced_nonNull_native);

        v38 = v117;
      }

      v43 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v44 = sub_223A20940();
      v104[1] = v7;
      if (v44)
      {
        v45 = v33;
        v46 = sub_223A211F0();

        v121 = v7;
        *&v119 = v46;
        sub_2239DA0A8(&v119, v118);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v38;
        sub_2239E81FC(v118, v45, v47);

        v38 = v117;
      }

      else
      {
      }

      v52 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v53 = sub_223A20970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
      v54 = sub_223A217A0();
      v55 = v54;
      v56 = 0;
      v58 = v53 + 64;
      v57 = *(v53 + 64);
      v113 = v53;
      v59 = 1 << *(v53 + 32);
      v60 = -1;
      if (v59 < 64)
      {
        v60 = ~(-1 << v59);
      }

      v61 = v60 & v57;
      v62 = (v59 + 63) >> 6;
      v108 = v114 + 8;
      v109 = v114 + 16;
      v63 = v54 + 64;
      v110 = v54;
      *(&v116 + 1) = v54 + 64;
      v107 = v38;
      if (v61)
      {
LABEL_20:
        v64 = __clz(__rbit64(v61));
        v115 = (v61 - 1) & v61;
        goto LABEL_26;
      }

LABEL_21:
      v65 = v56;
      while (1)
      {
        v56 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v56 >= v62)
        {
          break;
        }

        v66 = *(v58 + 8 * v56);
        ++v65;
        if (v66)
        {
          v64 = __clz(__rbit64(v66));
          v115 = (v66 - 1) & v66;
LABEL_26:
          v67 = v64 | (v56 << 6);
          v68 = v114;
          v69 = *(v113 + 56);
          v70 = (*(v113 + 48) + 16 * v67);
          v71 = v70[1];
          *&v116 = *v70;
          v72 = v111;
          v73 = v112;
          (*(v114 + 16))(v111, v69 + *(v114 + 72) * v67, v112);

          sub_223A20670();
          (*(v68 + 8))(v72, v73);
          v63 = *(&v116 + 1);
          *(*(&v116 + 1) + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
          v55 = v110;
          v74 = (*(v110 + 48) + 16 * v67);
          *v74 = v116;
          v74[1] = v71;
          sub_2239DA0A8(&v119, (*(v55 + 56) + 32 * v67));
          v75 = *(v55 + 16);
          v76 = __OFADD__(v75, 1);
          v77 = v75 + 1;
          if (v76)
          {
            goto LABEL_54;
          }

          *(v55 + 16) = v77;
          v38 = v107;
          v61 = v115;
          if (v115)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }
      }

      v78 = 1 << *(v55 + 32);
      v79 = -1;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      v80 = v79 & *(v55 + 64);
      v81 = (v78 + 63) >> 6;

      v82 = 0;
      while (1)
      {
        if (!v80)
        {
          while (1)
          {
            v84 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              break;
            }

            if (v84 >= v81)
            {

              return v105;
            }

            v80 = *(v63 + 8 * v84);
            ++v82;
            if (v80)
            {
              v82 = v84;
              goto LABEL_39;
            }
          }

LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

LABEL_39:
        v85 = __clz(__rbit64(v80)) | (v82 << 6);
        v86 = (*(v55 + 48) + 16 * v85);
        v87 = *v86;
        v88 = v86[1];
        sub_2239D17A8(*(v55 + 56) + 32 * v85, &v120);
        *&v119 = v87;
        *(&v119 + 1) = v88;

        v89 = sub_223A211F0();
        sub_2239D17A8(&v120, v118);
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v117 = v38;
        v91 = sub_2239E80E4(v89);
        v93 = v38[2];
        v94 = (v92 & 1) == 0;
        v76 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v76)
        {
          goto LABEL_55;
        }

        v96 = v92;
        if (v38[3] < v95)
        {
          break;
        }

        if (v90)
        {
          goto LABEL_44;
        }

        v100 = v91;
        sub_223A09C50();
        v91 = v100;
        v38 = v117;
        if (v96)
        {
LABEL_32:
          v83 = (v38[7] + 32 * v91);
          __swift_destroy_boxed_opaque_existential_0(v83);
          sub_2239DA0A8(v118, v83);

          goto LABEL_33;
        }

LABEL_45:
        v38[(v91 >> 6) + 8] |= 1 << v91;
        *(v38[6] + 8 * v91) = v89;
        sub_2239DA0A8(v118, (v38[7] + 32 * v91));
        v98 = v38[2];
        v76 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v76)
        {
          goto LABEL_56;
        }

        v38[2] = v99;
LABEL_33:
        v80 &= v80 - 1;
        sub_2239CDCEC(&v119, &qword_27D0A4AA8, &unk_223A23930);
        v63 = *(&v116 + 1);
      }

      sub_2239E834C(v95, v90);
      v91 = sub_2239E80E4(v89);
      if ((v96 & 1) != (v97 & 1))
      {
        goto LABEL_65;
      }

LABEL_44:
      v38 = v117;
      if (v96)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }

    goto LABEL_64;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_223A21910();
  __break(1u);
  return result;
}

uint64_t sub_2239E7EF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2239E7F3C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch;
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___shouldBatch);
  if (v2 == 2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session + 24));
    LOBYTE(v2) = sub_223A20960() != 12;
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

unint64_t sub_2239E7FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
    v3 = sub_223A217C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239D8C48(v4, &v11, &qword_27D0A4C28, &qword_223A23920);
      v5 = v11;
      result = sub_2239E80E4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2239DA0A8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2239E80E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_223A215A0();

  return sub_2239E8128(a1, v5);
}

unint64_t sub_2239E8128(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_223A215B0();

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

_OWORD *sub_2239E81FC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2239E80E4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_223A09C50();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2239E834C(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_2239E80E4(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
      result = sub_223A21910();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2239DA0A8(a1, v20);
  }

  else
  {
    sub_223A13360(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_2239E834C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
  result = sub_223A217B0();
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_2239DA0A8(v22, v34);
      }

      else
      {
        sub_2239D17A8(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_223A215A0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_2239DA0A8(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

uint64_t sub_2239E85C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_2239D17A8(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    sub_2239E7EF4(0, &qword_2813326E0, 0x277CCACA8);
    v15 = v14;
    swift_dynamicCast();
    sub_2239DA0A8((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2239DA0A8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2239DA0A8(v31, v32);
    v16 = *(v2 + 40);
    result = sub_223A21680();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2239DA0A8(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2239E889C()
{
  v1 = MEMORY[0x277D84F98];
  if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_underTest) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvent;
    swift_beginAccess();
    v3 = *(v0 + v2);
    *(v0 + v2) = v1;
  }

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_summaryEvents;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = v1;

  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReporting) = 0;

  v7 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken);
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcReportingToken) = 0;

  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  result = swift_beginAccess();
  *(v0 + v8) = 0;
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_startAttempted) = 0;
  return result;
}

uint64_t AirPodWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_session));
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2239E8A80()
{
  v0 = DurationSummaryState.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_completeDecoratorMessages);

  sub_2239CDCEC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal29DurationSummaryDecoratorState_decoratorRunningMessage, &qword_27D0A4B38, " >");

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2239E8B24(uint64_t a1)
{
  if (qword_281332DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_281332DD0;
  os_unfair_lock_lock((qword_281332DD0 + 16));
  if ((*(v1 + 17) & 1) == 0)
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1;

    *(v1 + 17) = 1;
    *(v1 + 16) = sub_223A0042C() & 1;
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_2239E8BFC(__int16 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B50, &qword_223A23558);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_223A203C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  if (qword_281332DC8 != -1)
  {
    swift_once();
  }

  v16 = qword_281332DD0;
  os_unfair_lock_lock((qword_281332DD0 + 16));
  swift_beginAccess();
  v17 = *(v1 + 32);
  if (*(v17 + 16) && (v18 = sub_2239C9110(a1), (v19 & 1) != 0))
  {
    (*(v9 + 16))(v15, *(v17 + 56) + *(v9 + 72) * v18, v8);
    sub_223A203B0();
    sub_223A20380();
    v21 = v20;
    v22 = v13;
    v23 = *(v9 + 8);
    v23(v22, v8);
    if (v21 >= *(v2 + 40))
    {
      v34 = *(v9 + 56);
      v36 = v23;
      v32 = 1;
      v34(v7, 1, 1, v8);
      swift_beginAccess();
      sub_2239E8FF0(v7, a1);
      swift_endAccess();
      v36(v15, v8);
    }

    else
    {
      v24 = sub_223A20FB0();
      v25 = sub_223A214D0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v36 = v23;
        v37[0] = v27;
        v28 = v27;
        *v26 = 136446210;
        v29 = sub_223A20EB0();
        v31 = sub_2239E1910(v29, v30, v37);

        *(v26 + 4) = v31;
        _os_log_impl(&dword_2239C7000, v24, v25, "Skipping IOReporting, as has run recently. { serviceType=%{public}s }", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x223DF1300](v28, -1, -1);
        MEMORY[0x223DF1300](v26, -1, -1);

        v36(v15, v8);
      }

      else
      {

        v23(v15, v8);
      }

      v32 = 0;
    }
  }

  else
  {
    sub_223A203B0();
    v32 = 1;
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();
    sub_2239E8FF0(v7, a1);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v16 + 4);
  return v32;
}

uint64_t sub_2239E8FF0(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B50, &qword_223A23558);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_223A203C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2239CDCEC(a1, &qword_27D0A4B50, &qword_223A23558);
    v15 = *v3;
    v16 = sub_2239C9110(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_223A09880();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_223A12C60(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2239CDCEC(v9, &qword_27D0A4B50, &qword_223A23558);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2239E9240(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_2239E9240(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2239C9110(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_223A09880();
      goto LABEL_7;
    }

    sub_223A090AC(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_2239C9110(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for AudioServiceType(0);
    result = sub_223A21910();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_223A203C0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2239E93A8(v10, a2, a1, v16);
}

uint64_t sub_2239E93A8(unint64_t a1, __int16 a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 2 * a1) = a2;
  v7 = a4[7];
  v8 = sub_223A203C0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2239E9454()
{
  if (*(v0 + 16) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subscription);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DriverSnapshotManager_subbedChannelsManaged);
  return IOReportCreateSamples();
}

uint64_t DriverSnapshotWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20DriverSnapshotWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2239E9614@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2239E9684()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2239E96DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239E97A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2239E9870(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49C0, &qword_223A22C78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2239E9928@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2239E9970(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_2239E99BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal12AirPodWorker_neededPreviousFields;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2239E9A1C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_223A20FC0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2239E9B4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_223A20FC0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2239E9C8C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239E9CCC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2239E9D04()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2239E9D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2239E9D64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2239E9D74()
{
  v1 = sub_223A20350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2239E9E08()
{
  v1 = sub_223A20350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2239E9E90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_223A20350();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2239E9F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_223A20350();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2239E9FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_223A20FC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2239EA08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_223A20FC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2239EA134@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

uint64_t sub_2239EA184()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239EA1BC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t get_enum_tag_for_layout_string_22AudioAnalyticsExternal15TailspinRequestV12NotificationV08InternalF0O_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2239EA210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_2239EA374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2239EA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
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

uint64_t sub_2239EA5BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void *sub_2239EA690(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_2239EA6B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2239EA6E8()
{
  v1 = sub_223A20D20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = (v0 + v6);
  if (*(v0 + v6))
  {
    v10 = v9[1];
  }

  if (v9[2])
  {
    v11 = v9[3];
  }

  v12 = (v6 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;

  v14 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v3 | 7);
}

uint64_t sub_2239EA81C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = qword_281334130;
}

uint64_t sub_2239EA8A8()
{
  v0 = sub_223A20FC0();
  __swift_allocate_value_buffer(v0, qword_27D0A47A8);
  __swift_project_value_buffer(v0, qword_27D0A47A8);
  return sub_223A20F50();
}

uint64_t sub_2239EA8F4()
{
  v0 = type metadata accessor for AdaptiveVolumeManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = AdaptiveVolumeManager.init()();
  qword_27D0A4E10 = v3;
  return result;
}

uint64_t AdaptiveVolumeManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AdaptiveVolumeManager.init()();
  return v3;
}

uint64_t AdaptiveVolumeManager.init()()
{
  v1 = v0;
  v2 = sub_223A21520();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_223A21540();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A21090();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v25[0] = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21080();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  v25[1] = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_281332720, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v0 + 16) = sub_223A21570();
  sub_223A20F50();
  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidManager;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D0EEF8]) initWithOptions_];
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_biomeStreamSource;
  v13 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v14 = [v13 Audio];
  swift_unknownObjectRelease();
  v15 = [v14 AdaptiveVolume];
  swift_unknownObjectRelease();
  v16 = [v15 source];

  *(v1 + v12) = v16;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService) = 0;
  v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
  v18 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry);
  v19 = MEMORY[0x277D84F90];
  *v18 = MEMORY[0x277D84F90];
  v18[1] = v19;
  v20 = (v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
  *v20 = 0;
  v20[1] = 0;
  v21 = v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket;
  *v21 = 0;
  *(v21 + 2) = 0;
  *(v21 + 8) = 0;
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentOutputGain;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4880, &qword_223A224B8);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = 0x406FE00000000000;
  *(v1 + v22) = v23;
  *(v1 + v17) = 1;
  sub_2239EAD74();
  return v1;
}

uint64_t sub_2239EAD74()
{
  v1 = v0;
  v2 = sub_223A20FB0();
  v3 = sub_223A214D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2239C7000, v2, v3, "Starting IO Kit operations", v4, 2u);
    MEMORY[0x223DF1300](v4, -1, -1);
  }

  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer;
  if (!*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer))
  {
    v6 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    *(v1 + v5) = v6;
    IONotificationPortSetDispatchQueue(v6, v1[2]);
  }

  v7 = sub_223A20FB0();
  v8 = sub_223A214D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2239C7000, v7, v8, "Add matching notifications", v9, 2u);
    MEMORY[0x223DF1300](v9, -1, -1);
  }

  v10 = *(v1 + v5);
  if (qword_27D0A47C8 != -1)
  {
    swift_once();
  }

  v11 = sub_223A21100();
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;
  swift_beginAccess();
  IOServiceAddMatchingNotification(v10, "IOServiceMatched", v11, sub_2239EB07C, v1, (v1 + v12));
  swift_endAccess();
  v13 = sub_223A20FB0();
  v14 = sub_223A214D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2239C7000, v13, v14, "Kicking off service matching", v15, 2u);
    MEMORY[0x223DF1300](v15, -1, -1);
  }

  return sub_2239EB0EC(*(v1 + v12));
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2239EB07C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;

    swift_beginAccess();
    *(v3 + v4) = a2;
    sub_2239EB0EC(a2);
  }

  return result;
}

uint64_t sub_2239EB0EC(uint64_t a1)
{
  v2 = v1;
  entryID[4] = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_logger;
  v5 = sub_223A20FB0();
  v6 = sub_223A214D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2239C7000, v5, v6, "Iterating through services", v7, 2u);
    MEMORY[0x223DF1300](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService;
  result = IOIteratorNext(a1);
  if (result)
  {
    v10 = result;
    v11 = *MEMORY[0x277CD2898];
    v31 = v2;
    while (1)
    {
      entryID[0] = 0;
      IORegistryEntryGetRegistryEntryID(v10, entryID);
      v13 = IORegistryEntryIDMatching(entryID[0]);
      if (!v13)
      {
        break;
      }

      v14 = v13;
      MatchingService = IOServiceGetMatchingService(v11, v14);
      if (MatchingService)
      {
        v16 = MatchingService;
        if (*(v2 + v8) == MatchingService)
        {

          goto LABEL_17;
        }

        v17 = sub_223A20FB0();
        v18 = sub_223A214D0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = v11;
          v20 = a1;
          v21 = v8;
          v22 = v4;
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_2239C7000, v17, v18, "Found matching service.", v23, 2u);
          v24 = v23;
          v4 = v22;
          v8 = v21;
          a1 = v20;
          v11 = v19;
          v2 = v31;
          MEMORY[0x223DF1300](v24, -1, -1);
        }

        v12 = sub_2239EB3E8(v16);
        if (v12)
        {
          v28 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
          *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) = v12;
          v29 = v12;

          *(v2 + v8) = v16;
          sub_2239EB56C();

          goto LABEL_17;
        }
      }

      IOObjectRelease(v10);
      result = IOIteratorNext(a1);
      v10 = result;
      if (!result)
      {
        goto LABEL_18;
      }
    }

    v25 = sub_223A20FB0();
    v26 = sub_223A214D0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134283521;
      swift_beginAccess();
      *(v27 + 4) = entryID[0];
      _os_log_impl(&dword_2239C7000, v25, v26, "Couldn't find IO Registry Entry ID. { regID=%{private}llu }", v27, 0xCu);
      MEMORY[0x223DF1300](v27, -1, -1);
    }

LABEL_17:
    result = IOObjectRelease(v10);
  }

LABEL_18:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2239EB3E8(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD2850]) initWithService_];
  if (!v1)
  {
    v4 = sub_223A20FB0();
    v9 = sub_223A214D0();
    if (!os_log_type_enabled(v4, v9))
    {
      v2 = 0;
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2239C7000, v4, v9, "Couldn't create HID device from matching service", v6, 2u);
    v2 = 0;
    goto LABEL_6;
  }

  v2 = v1;
  v3 = v1;
  v4 = sub_223A20FB0();
  v5 = sub_223A214D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138477827;
    *(v6 + 4) = v3;
    *v7 = v2;
    v8 = v3;
    _os_log_impl(&dword_2239C7000, v4, v5, "Created HID device. { hidDevice=%{private}@ }", v6, 0xCu);
    sub_2239EEFC8(v7);
    MEMORY[0x223DF1300](v7, -1, -1);
LABEL_6:
    MEMORY[0x223DF1300](v6, -1, -1);
  }

LABEL_8:

  return v2;
}

void sub_2239EB56C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
  if (v1)
  {
    v2 = v0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2239EBFE4;
    v15 = &block_descriptor_66;
    v3 = _Block_copy(&v12);
    v4 = v1;

    [v4 setInputReportHandler_];
    _Block_release(v3);
    v16 = sub_2239EF07C;
    v17 = v2;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_2239EC158;
    v15 = &block_descriptor_69;
    v5 = _Block_copy(&v12);

    [v4 setCancelHandler_];
    _Block_release(v5);
    v6 = sub_223A20FB0();
    v7 = sub_223A214D0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2239C7000, v6, v7, "Setting dispatch queue and opening HID device", v8, 2u);
      MEMORY[0x223DF1300](v8, -1, -1);
    }

    [v4 setDispatchQueue_];
    [v4 activate];
    [v4 open];
    v9 = sub_223A20FB0();
    v10 = sub_223A214D0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2239C7000, v9, v10, "Turning on Non-DRC HID packet streaming.", v11, 2u);
      MEMORY[0x223DF1300](v11, -1, -1);
    }

    sub_2239EC19C(0xC801uLL);
  }
}

void sub_2239EB808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v9 = sub_223A21040();
  isa = v9[-1].isa;
  v54 = v9;
  v10 = *(isa + 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_223A21090();
  v50 = *(v52 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_223A21030();
  v48 = *(v14 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_223A210B0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (a4 > 0xFF)
  {
    goto LABEL_27;
  }

  v26 = sub_223A20360();
  if (a4 > 2u)
  {
    if (a4 == 3)
    {
      LOWORD(aBlock[0]) = 0;
      BYTE2(aBlock[0]) = 0;
      v55 = v26;
      [v26 getBytes:aBlock length:3];
      v37 = aBlock[0];
      v38 = BYTE2(aBlock[0]);
      sub_223A21410();
      v40 = v39;

      v41 = a7 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket;
      *v41 = v37;
      *(v41 + 2) = v38;
      *(v41 + 8) = v40;
      goto LABEL_17;
    }

    if (a4 != 4)
    {
      goto LABEL_11;
    }

LABEL_15:
    v36 = *MEMORY[0x277D85DE8];
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v55 = v26;
    sub_2239ECB24(v26);
    v26 = v55;
    goto LABEL_15;
  }

  if (a4 != 2)
  {
LABEL_11:
    v55 = v26;
    v54 = sub_223A20FB0();
    v33 = sub_223A214F0();
    if (os_log_type_enabled(v54, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134283521;
      *(v34 + 4) = a4;
      _os_log_impl(&dword_2239C7000, v54, v33, "Unexpected AVClientReportID received { reportID=%{private}ld }", v34, 0xCu);
      MEMORY[0x223DF1300](v34, -1, -1);
    }

    v35 = *MEMORY[0x277D85DE8];
    v26 = v54;
    goto LABEL_23;
  }

  v55 = v26;
  v27 = sub_2239EDC1C(v26);
  if (v27)
  {
    if (v27 == 1)
    {
      sub_223A210A0();
      *v17 = 1;
      v28 = v48;
      (*(v48 + 104))(v17, *MEMORY[0x277D85188], v14);
      MEMORY[0x223DF01B0](v23, v17);
      (*(v28 + 8))(v17, v14);
      v48 = *(v19 + 8);
      (v48)(v23, v18);
      v47 = *(a7 + 16);
      aBlock[4] = sub_2239EF0D8;
      aBlock[5] = a7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_72;
      v29 = _Block_copy(aBlock);

      v30 = v49;
      sub_223A21050();
      v56 = MEMORY[0x277D84F90];
      sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
      sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
      v31 = v51;
      v32 = v54;
      sub_223A21640();
      MEMORY[0x223DF0610](v25, v30, v31, v29);

      _Block_release(v29);
      (*(isa + 1))(v31, v32);
      (*(v50 + 8))(v30, v52);
      (v48)(v25, v18);

LABEL_17:
      v42 = *MEMORY[0x277D85DE8];
      return;
    }

    v43 = sub_223A20FB0();
    v44 = sub_223A214D0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2239C7000, v43, v44, "Report ID 2. Trying to turn on Non-DRC HID packet streaming", v45, 2u);
      MEMORY[0x223DF1300](v45, -1, -1);
    }

    sub_2239EC19C(0xC801uLL);
  }

  else
  {
    *(a7 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
    sub_2239EC470();
  }

  v46 = *MEMORY[0x277D85DE8];
  v26 = v55;
LABEL_23:
}

void sub_2239EBF38()
{
  v0 = sub_223A20FB0();
  v1 = sub_223A214D0();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2239C7000, v0, v1, "Report ID 2. Trying to turn on Non-DRC HID packet streaming", v2, 2u);
    MEMORY[0x223DF1300](v2, -1, -1);
  }

  sub_2239EC19C(0xC801uLL);
}

uint64_t sub_2239EBFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v13 = a2;
  v14 = a6;
  v15 = sub_223A20370();
  v17 = v16;

  v12(v13, a3, a4, a5, v15, v17);
  sub_2239EF084(v15, v17);
}

void sub_2239EC0AC()
{
  oslog = sub_223A20FB0();
  v0 = sub_223A214D0();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_2239C7000, oslog, v0, "The HID device has been cancelled", v1, 2u);
    MEMORY[0x223DF1300](v1, -1, -1);
  }
}

uint64_t sub_2239EC158(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_2239EC19C(unint64_t a1)
{
  v2 = v1;
  v24[3] = *MEMORY[0x277D85DE8];
  v22 = a1;
  v23 = a1 >> 8;
  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 16843265;
    swift_beginAccess();
    *(v5 + 4) = v22;
    *(v5 + 5) = 1025;
    *(v5 + 7) = v23;
    _os_log_impl(&dword_2239C7000, v3, v4, "Firing packet { reportID=%{private}hhu, interval=%{private}u }", v5, 0xBu);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v6 = *(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice);
  if (v6)
  {
    swift_beginAccess();
    v21 = 0;
    v7 = v6;
    v8 = [v7 setReport:&v22 reportLength:5 withIdentifier:v22 forType:2 error:&v21];
    v9 = v21;
    swift_endAccess();
    v10 = v9;

    if (!v8)
    {
      v11 = sub_223A202A0();

      swift_willThrow();
      v12 = v11;
      v13 = sub_223A20FB0();
      v14 = sub_223A214E0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24[0] = v16;
        *v15 = 16843523;
        *(v15 + 4) = v22;
        *(v15 + 5) = 1025;
        *(v15 + 7) = v23;
        *(v15 + 11) = 2081;
        swift_getErrorValue();
        v17 = sub_223A21920();
        v19 = sub_2239E1910(v17, v18, v24);

        *(v15 + 13) = v19;
        _os_log_impl(&dword_2239C7000, v13, v14, "Error setting HID report. { reportID=%{private}hhu, interval=%{private}u, error=%{private}s }", v15, 0x15u);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x223DF1300](v16, -1, -1);
        MEMORY[0x223DF1300](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_2239EC470()
{
  v1 = v0;
  v2 = sub_223A20FB0();
  v3 = sub_223A214D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2239C7000, v2, v3, "Turning off Non-DRC HID packet streaming.", v4, 2u);
    MEMORY[0x223DF1300](v4, -1, -1);
  }

  sub_2239EC19C(1uLL);
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice;
  [*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice) cancel];
  [*(v1 + v5) close];
  v6 = *(v1 + v5);
  *(v1 + v5) = 0;

  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentMatchedService) = 0;
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer;
  v8 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_notificationPointer);
  if (v8)
  {
    IONotificationPortDestroy(v8);
    *(v1 + v7) = 0;
  }
}

uint64_t sub_2239EC574()
{
  v1 = sub_223A21040();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A21090();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A210B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = sub_223A210C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v26[1] = v21;
  LOBYTE(v21) = sub_223A210F0();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    sub_223A210A0();
    sub_223A21440();
    sub_223A210E0();
    v26[0] = *(v9 + 8);
    (v26[0])(v13, v8);
    aBlock[4] = sub_2239EF06C;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2239EC158;
    aBlock[3] = &block_descriptor;
    v23 = _Block_copy(aBlock);

    sub_223A21050();
    v32 = MEMORY[0x277D84F90];
    sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
    sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
    v24 = v27;
    v25 = v31;
    sub_223A21640();
    MEMORY[0x223DF0610](v15, v7, v24, v23);
    _Block_release(v23);
    (*(v30 + 8))(v24, v25);
    (*(v28 + 8))(v7, v29);
    (v26[0])(v15, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2239EC9E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown;
  v3 = *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown);
  oslog = sub_223A20FB0();
  v4 = sub_223A214D0();
  v5 = os_log_type_enabled(oslog, v4);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2239C7000, oslog, v4, "HID device teardown cancelled", v6, 2u);
      MEMORY[0x223DF1300](v6, -1, -1);
    }
  }

  else
  {
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2239C7000, oslog, v4, "Tearing down HID device", v7, 2u);
      MEMORY[0x223DF1300](v7, -1, -1);
    }

    sub_2239EC470();
    *(a1 + v2) = 1;
  }
}

void sub_2239ECB24(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16))
  {
    v8 = sub_223A20FB0();
    v9 = sub_223A214D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Dropping HID report. { reason=no active sessions }";
LABEL_9:
      _os_log_impl(&dword_2239C7000, v8, v9, v11, v10, 2u);
      MEMORY[0x223DF1300](v10, -1, -1);
    }

LABEL_10:

    goto LABEL_11;
  }

  if ((sub_223A208C0() & 1) != 0 && !*(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8))
  {
    v8 = sub_223A20FB0();
    v9 = sub_223A214D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Dropping HID report. { reason=unknown serial number }";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v15 = 0u;
  memset(v16, 0, 22);
  v13 = 0u;
  v14 = 0u;
  [a1 getBytes:&v13 length:70];
  v18[0] = v16[0];
  *(v18 + 14) = *(v16 + 14);
  v17[1] = v14;
  v17[2] = v15;
  v17[0] = v13;
  v4 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket + 2);
  v5 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket + 8);
  v6 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentDrcPacket);
  v7 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentOutputGain);

  sub_223A20F10();

  sub_2239EDD58(v17, v5);
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2239ECD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223A21040();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_223A21090();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v4 + 16);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_2239EF1C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_81;
  v18 = _Block_copy(aBlock);

  sub_223A21050();
  v22 = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);
}

uint64_t sub_2239ED018(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  if (!*(*(a1 + v8) + 16))
  {
    *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 1;
    if (*(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_hidDevice))
    {
      v9 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_iter;
      swift_beginAccess();
      sub_2239EB0EC(*(a1 + v9));
      if ((sub_223A208C0() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_2239EAD74();
      if ((sub_223A208C0() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v10 = sub_2239ED1E8();
    if (v10[2])
    {
      v12 = v10[4];
      v11 = v10[5];
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = (a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
    v14 = *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8);
    *v13 = v12;
    v13[1] = v11;

    if (!v13[1])
    {
      v15 = sub_223A20FB0();
      v16 = sub_223A214D0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2239C7000, v15, v16, "No supported AirPods found.", v17, 2u);
        MEMORY[0x223DF1300](v17, -1, -1);
      }
    }
  }

LABEL_13:
  swift_beginAccess();
  sub_2239ED3D0(a2, a3, a4);
  return swift_endAccess();
}

uint64_t sub_2239ED1E8()
{
  sub_223A209F0();
  sub_223A209E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_223A209D0();

  v0 = *&v25[0];
  v1 = *(*&v25[0] + 16);
  if (v1)
  {
    v38 = MEMORY[0x277D84F90];
    sub_2239D32E0(0, v1, 0);
    v2 = v38;
    v3 = v1 - 1;
    for (i = 32; ; i += 216)
    {
      v5 = *(v0 + i + 16);
      v25[0] = *(v0 + i);
      v25[1] = v5;
      v6 = *(v0 + i + 32);
      v7 = *(v0 + i + 48);
      v8 = *(v0 + i + 80);
      v28 = *(v0 + i + 64);
      v29 = v8;
      v26 = v6;
      v27 = v7;
      v9 = *(v0 + i + 96);
      v10 = *(v0 + i + 112);
      v11 = *(v0 + i + 144);
      v32 = *(v0 + i + 128);
      v33 = v11;
      v30 = v9;
      v31 = v10;
      v12 = *(v0 + i + 160);
      v13 = *(v0 + i + 176);
      v14 = *(v0 + i + 192);
      v37 = *(v0 + i + 208);
      v35 = v13;
      v36 = v14;
      v34 = v12;
      v15 = v30;
      v23 = *(&v26 + 1);
      v24 = v27;
      sub_2239EF1D4(v25, v22);

      MEMORY[0x223DF0390](95, 0xE100000000000000);
      MEMORY[0x223DF0390](v15, *(&v15 + 1));

      sub_2239EF230(v25);
      v16 = v23;
      v17 = v24;
      v38 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2239D32E0((v18 > 1), v19 + 1, 1);
        v2 = v38;
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      if (!v3)
      {
        break;
      }

      --v3;
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void sub_2239ED3D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_223A0DE84(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_223A0DE84((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  *&v7[8 * v9 + 32] = a1;
  *v3 = v7;
  v10 = v3[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2239E1804(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2239E1804((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  v3[1] = v10;
  v14 = *(v7 + 2);
  if (qword_27D0A47A0 != -1)
  {
    swift_once();
  }

  v15 = sub_223A20FC0();
  __swift_project_value_buffer(v15, qword_27D0A47A8);

  oslog = sub_223A20FB0();
  v16 = sub_223A214D0();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 134284035;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2081;
    *(v17 + 14) = sub_2239E1910(a2, a3, &v20);
    *(v17 + 22) = 2048;
    *(v17 + 24) = v14;
    _os_log_impl(&dword_2239C7000, oslog, v16, "Registered session. { reporterID=%{private}lld, appName=%{private}s, numActiveSessions=%ld }", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DF1300](v18, -1, -1);
    MEMORY[0x223DF1300](v17, -1, -1);
  }
}

void sub_2239ED638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223A21040();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_223A21090();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = sub_2239EF0E0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_75;
  v17 = _Block_copy(aBlock);

  sub_223A21050();
  v24 = MEMORY[0x277D84F90];
  sub_2239CA1D0(&qword_27D0A48C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v15, v11, v17);
  _Block_release(v17);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);

  v18 = sub_223A20FB0();
  v19 = sub_223A214D0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2239C7000, v18, v19, "Stopping AV manager", v20, 2u);
    MEMORY[0x223DF1300](v20, -1, -1);
  }
}

uint64_t sub_2239ED988(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  sub_2239EDA24(a2, a3, a4);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_cancelHIDTeardown) = 0;
    return sub_2239EC574();
  }

  return result;
}

void sub_2239EDA24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(*v3 + 16);
  if (v4)
  {
    v6 = 0;
    while (*(*v3 + 32 + 8 * v6) != a1)
    {
      if (v4 == ++v6)
      {
        return;
      }
    }

    sub_2239EE514(v6);
    sub_2239EE59C(v6);

    v9 = *(*v3 + 16);
    if (qword_27D0A47A0 != -1)
    {
      swift_once();
    }

    v10 = sub_223A20FC0();
    __swift_project_value_buffer(v10, qword_27D0A47A8);

    oslog = sub_223A20FB0();
    v11 = sub_223A214D0();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 134284035;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_2239E1910(a2, a3, &v15);
      *(v12 + 22) = 2048;
      *(v12 + 24) = v9;
      _os_log_impl(&dword_2239C7000, oslog, v11, "Unregistered session. { reporterID=%{private}lld, appName=%{private}s, numActiveSessions=%ld }", v12, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DF1300](v13, -1, -1);
      MEMORY[0x223DF1300](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_2239EDC1C(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0;
  [a1 getBytes:&v7 length:2];
  v1 = sub_223A20FB0();
  v2 = sub_223A214D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 16843009;
    swift_beginAccess();
    v3[4] = HIBYTE(v7);
    _os_log_impl(&dword_2239C7000, v1, v2, "setReportInputHandler report contents { errorStatus=%{private}hhu }", v3, 5u);
    MEMORY[0x223DF1300](v3, -1, -1);
  }

  swift_beginAccess();
  v4 = sub_2239EF058(HIBYTE(v7));
  if (v4 == 3)
  {
    result = 2;
  }

  else
  {
    result = v4 == 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2239EDD58(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry;
  swift_beginAccess();
  v7 = *(v6 + 8);
  if (*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8))
  {
    v8 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber);
    v9 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8);
  }

  sub_2239E7EF4(0, &qword_27D0A48B8, 0x277CF1088);

  v10 = BMDeviceAdaptiveVolume.init(nonDrcPayload:drcPayload:sessionInfo:serialNumber:drcAVClientTimestamp:routedDrcGain:)(a1, a2);
  v11 = sub_223A20FB0();
  v12 = sub_223A214D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138477827;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_2239C7000, v11, v12, "Writing event to biome. { event=%{private}@ }", v13, 0xCu);
    sub_2239EEFC8(v14);
    MEMORY[0x223DF1300](v14, -1, -1);
    MEMORY[0x223DF1300](v13, -1, -1);
  }

  [*(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_biomeStreamSource) sendEvent_];
}

uint64_t sub_2239EDF2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A224A0;
  *(inited + 32) = 0x6469766F72504F49;
  v1 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF7373616C437265;
  *(inited + 48) = 0x7665444449484F49;
  *(inited + 56) = 0xEB00000000656369;
  v2 = MEMORY[0x277D83B88];
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000223A24D30;
  *(inited + 96) = 65333;
  *(inited + 120) = v2;
  strcpy((inited + 128), "PrimaryUsage");
  *(inited + 168) = v2;
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  *(inited + 144) = 1;
  v3 = sub_2239DC6E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
  result = swift_arrayDestroy();
  qword_27D0A47D0 = v3;
  return result;
}

uint64_t AdaptiveVolumeManager.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v4 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_sessionRegistry + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_activeAirPodSerialNumber + 8);

  v6 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21AdaptiveVolumeManager_currentOutputGain);

  return v0;
}

uint64_t AdaptiveVolumeManager.__deallocating_deinit()
{
  AdaptiveVolumeManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdaptiveVolumeManager()
{
  result = qword_27D0A4888;
  if (!qword_27D0A4888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239EE1F0()
{
  result = sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2239EE354(uint64_t a1)
{
  type metadata accessor for CFDictionary(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AdaptiveVolumeManager.AVClientDrcReportTimestampAppended(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AdaptiveVolumeManager.AVClientDrcReportTimestampAppended(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2239EE418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2239EE460(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2239EE4B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2239EE4D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2239EE514(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239EF044(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2239EE59C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2239EF030(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_2239EE628(uint64_t a1@<X0>, char **a2@<X8>)
{
  if (a1)
  {
    v4 = sub_2239F0844(a1);
    if (v4)
    {
      v5 = v4;
      v27 = a2;
      v58 = v2;
      *&v56[0] = MEMORY[0x277D84F90];
      v6 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v4 >> 62)
      {
        v7 = sub_223A21780();
        if (v7)
        {
LABEL_5:
          v8 = 0;
          do
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x223DF07F0](v8, v5);
            }

            else
            {
              if (v8 >= *(v6 + 16))
              {
                goto LABEL_24;
              }

              v10 = *(v5 + 8 * v8 + 32);
            }

            v11 = v10;
            a2 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_24:
              __break(1u);
              goto LABEL_25;
            }

            v12 = [v10 productId];
            if (v12 - 8212 > 0x10 || ((1 << (v12 - 20)) & 0x114A1) == 0)
            {
            }

            else
            {
              sub_223A21730();
              v9 = *(*&v56[0] + 16);
              sub_223A21760();
              sub_223A21770();
              sub_223A21740();
            }

            ++v8;
          }

          while (a2 != v7);
          v19 = *&v56[0];
LABEL_28:

          if (v19 < 0 || (v19 & 0x4000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v20 = *(v19 + 16);
          if (v20)
          {
LABEL_31:
            v18 = MEMORY[0x277D84F90];
            v21 = 0;
            while (1)
            {
              if ((v19 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x223DF07F0](v21, v19);
                v23 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if (v21 >= *(v19 + 16))
                {
                  goto LABEL_47;
                }

                v22 = *(v19 + 8 * v21 + 32);
                v23 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  v20 = sub_223A21780();
                  if (!v20)
                  {
                    break;
                  }

                  goto LABEL_31;
                }
              }

              sub_2239F7144(v22, &v42);
              v38 = v52;
              v39 = v53;
              v40 = v54;
              v34 = v48;
              v35 = v49;
              v36 = v50;
              v37 = v51;
              v30 = v44;
              v31 = v45;
              v32 = v46;
              v33 = v47;
              v28 = v42;
              v29 = v43;
              v56[10] = v52;
              v56[11] = v53;
              v56[12] = v54;
              v56[6] = v48;
              v56[7] = v49;
              v56[8] = v50;
              v56[9] = v51;
              v56[2] = v44;
              v56[3] = v45;
              v56[4] = v46;
              v56[5] = v47;
              v41 = v55;
              v57 = v55;
              v56[0] = v42;
              v56[1] = v43;
              if (sub_2239EF284(v56) == 1)
              {
                ++v21;
                if (v23 == v20)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_223A0DF88(0, *(v18 + 2) + 1, 1, v18);
                }

                v25 = *(v18 + 2);
                v24 = *(v18 + 3);
                if (v25 >= v24 >> 1)
                {
                  v18 = sub_223A0DF88((v24 > 1), v25 + 1, 1, v18);
                }

                *(v18 + 2) = v25 + 1;
                v26 = &v18[216 * v25];
                *(v26 + 2) = v28;
                *(v26 + 3) = v29;
                *(v26 + 6) = v32;
                *(v26 + 7) = v33;
                *(v26 + 4) = v30;
                *(v26 + 5) = v31;
                *(v26 + 10) = v36;
                *(v26 + 11) = v37;
                *(v26 + 8) = v34;
                *(v26 + 9) = v35;
                *(v26 + 30) = v41;
                *(v26 + 13) = v39;
                *(v26 + 14) = v40;
                *(v26 + 12) = v38;
                if (v23 == v20)
                {
                  goto LABEL_50;
                }

                v21 = v23;
              }
            }
          }

          v18 = MEMORY[0x277D84F90];
LABEL_50:

          a2 = v27;
          goto LABEL_51;
        }
      }

      else
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_5;
        }
      }

      v19 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }
  }

  if (qword_27D0A47A0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v14 = sub_223A20FC0();
  __swift_project_value_buffer(v14, qword_27D0A47A8);
  v15 = sub_223A20FB0();
  v16 = sub_223A214E0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2239C7000, v15, v16, "Failed to interpret connected bluetooth devices.", v17, 2u);
    MEMORY[0x223DF1300](v17, -1, -1);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_51:
  *a2 = v18;
}

uint64_t sub_2239EEA9C()
{
  v1 = *v0;
  sub_223A21940();
  sub_223A21960();
  return sub_223A21970();
}

uint64_t sub_2239EEB10()
{
  v1 = *v0;
  sub_223A21940();
  sub_223A21960();
  return sub_223A21970();
}

_DWORD *sub_2239EEB54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

_WORD *sub_2239EEBB8@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_2239EEBD0(uint64_t a1, id *a2)
{
  result = sub_223A21200();
  *a2 = 0;
  return result;
}

uint64_t sub_2239EEC48(uint64_t a1, id *a2)
{
  v3 = sub_223A21210();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2239EECC8@<X0>(uint64_t *a1@<X8>)
{
  sub_223A21220();
  v2 = sub_223A211F0();

  *a1 = v2;
  return result;
}

uint64_t sub_2239EED0C()
{
  v1 = *v0;
  v2 = sub_223A21220();
  v3 = MEMORY[0x223DF0400](v2);

  return v3;
}

uint64_t sub_2239EED48()
{
  v1 = *v0;
  sub_223A21220();
  sub_223A21290();
}

uint64_t sub_2239EED9C()
{
  v1 = *v0;
  sub_223A21220();
  sub_223A21940();
  sub_223A21290();
  v2 = sub_223A21970();

  return v2;
}

uint64_t sub_2239EEE10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_223A21220();
  v6 = v5;
  if (v4 == sub_223A21220() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_223A218F0();
  }

  return v9 & 1;
}

uint64_t sub_2239EEE98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_223A211F0();

  *a2 = v5;
  return result;
}

uint64_t sub_2239EEEE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_223A21220();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2239EEF0C(uint64_t a1)
{
  v2 = sub_2239CA1D0(&qword_27D0A4918, type metadata accessor for FileAttributeKey);
  v3 = sub_2239CA1D0(&qword_27D0A4920, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2239EEFC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48C0, &unk_223A227F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2239EF058(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2239EF084(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2239EF284(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_2239EF2D8(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t sub_2239EF320(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

void sub_2239EF3A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t AdaptiveVolumeWorker.__allocating_init(with:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_223A20F50();
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v6 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v7 = *MEMORY[0x277CEF9C8];
  v8 = sub_223A20BC0();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *(v5 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  sub_2239CB264(a1, v5 + 16);
  return v5;
}

uint64_t AdaptiveVolumeWorker.init(with:)(__int128 *a1)
{
  sub_223A20F50();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession) = 0;
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart) = 0;
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = *MEMORY[0x277CEF9C8];
  v5 = sub_223A20BC0();
  (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields) = 0;
  sub_2239CB264(a1, v1 + 16);
  return v1;
}

uint64_t sub_2239EF6A0()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF6E4(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF794()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF7D8(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isAVSession;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF88C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2239EF8D0(char a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_hasMarkedAVSessionStart;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2239EF980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2239EFA0C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_223A20BC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_2239EFB24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2239EFBAC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2239EFC9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2239EFD04()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2239EFD4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AdaptiveVolumeWorker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_neededPreviousFields);

  return v0;
}

uint64_t sub_2239EFEBC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal20AdaptiveVolumeWorker_isStarted;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_2239EFF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (v23 - v2);
  v4 = sub_223A20B90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20C40();
  (*(v5 + 104))(v8, *MEMORY[0x277CEF900], v4);
  sub_223A21150();

  (*(v5 + 8))(v8, v4);
  v9 = sub_223A20680();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_2239C9F88(v3);
  }

  else if ((*(v10 + 88))(v3, v9) == *MEMORY[0x277CEF860])
  {
    (*(v10 + 96))(v3, v9);
    v12 = *v3;
    v11 = v3[1];
    if (qword_281332B28 != -1)
    {
LABEL_14:
      swift_once();
    }

    v13 = qword_2813359C0;
    v14 = qword_2813359C0 + 40;
    v15 = -*(qword_2813359C0 + 16);
    v16 = -1;
    while (v15 + v16 != -1)
    {
      if (++v16 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_14;
      }

      v17 = v14 + 16;
      v20 = v14 - 8;
      v18 = *(v14 - 8);
      v19 = *(v20 + 8);
      v23[2] = v12;
      v23[3] = v11;
      v23[0] = v18;
      v23[1] = v19;
      sub_2239D1804();
      v21 = sub_223A21630();
      v14 = v17;
      if (v21)
      {

        return 1;
      }
    }
  }

  else
  {
    (*(v10 + 8))(v3, v9);
  }

  return 0;
}

uint64_t sub_2239F01FC()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A20C40();
  if (*(v5 + 16) && (v6 = sub_2239CDC74(0x757074754F435244, 0xED00006E69614774), (v7 & 1) != 0))
  {
    (*(v1 + 16))(v4, *(v5 + 56) + *(v1 + 72) * v6, v0);

    v8 = sub_223A20640();
    (*(v1 + 8))(v4, v0);
    return v8;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_2239F0358()
{
  result = qword_281333138[0];
  if (!qword_281333138[0])
  {
    type metadata accessor for AdaptiveVolumeWorker();
    result = swift_getWitnessTable();
    atomic_store(result, qword_281333138);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_2239F045C()
{
  result = sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_223A20BC0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2239F0844(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_223A21750();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2239D17A8(i, v6);
    sub_2239E7EF4(0, &qword_27D0A49A0, 0x277CF3240);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_223A21730();
    v4 = *(v7 + 16);
    sub_223A21760();
    sub_223A21770();
    sub_223A21740();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_2239F0950()
{
  v0 = type metadata accessor for AirPodManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = AirPodManager.init()();
  qword_27D0A4E18 = result;
  return result;
}

uint64_t AirPodManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AirPodManager.init()();
}

uint64_t AirPodManager.init()()
{
  v1 = v0;
  v2 = sub_223A20FC0();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A21520();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_223A21540();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223A21090();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v0 + 16) = v14;
  v41 = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21070();
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v7);
  v42 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_281332720, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v0 + 24) = sub_223A21570();
  v15 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;
  sub_223A20FA0();
  v16 = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation) = v16;
  v17 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample;
  sub_223A20930();
  sub_223A21440();
  *(v0 + v17) = sub_223A20910();
  v42 = sub_223A20A30();
  v43 = v18;
  MEMORY[0x223DF0390](0x65726F696475612ELL, 0xE900000000000067);
  v19 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v20 = sub_223A211F0();

  v21 = [v19 initWithSuiteName_];

  if (v21)
  {
    *(v1 + 32) = v21;
  }

  else
  {
    v22 = v38;
    v23 = v39;
    v24 = v40;
    (*(v39 + 16))(v38, v1 + v15, v40);
    v25 = sub_223A20FB0();
    v26 = sub_223A214E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v22;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2239C7000, v25, v26, "Unable to initialize AudioRegistrationWorker userDefaults.", v28, 2u);
      v29 = v28;
      v22 = v27;
      MEMORY[0x223DF1300](v29, -1, -1);
    }

    v30 = *(v23 + 8);
    v30(v22, v24);
    v31 = *(v1 + 16);

    v30((v1 + v15), v24);
    v32 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation);

    v33 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation);

    v34 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample);

    type metadata accessor for AirPodManager();
    v35 = *(*v1 + 48);
    v36 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for AirPodManager()
{
  result = qword_27D0A4960;
  if (!qword_27D0A4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2239F0F2C()
{
  v1 = v0;
  v2 = sub_223A21040();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_223A21090();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20FB0();
  v11 = sub_223A214D0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2239C7000, v10, v11, "Marking start of AirPod session.", v12, 2u);
    MEMORY[0x223DF1300](v12, -1, -1);
  }

  v13 = *(v1 + 24);
  aBlock[4] = sub_2239F3E70;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);

  sub_223A21050();
  v19 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_27D0A48C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v9, v5, v14);
  _Block_release(v14);
  (*(v18 + 8))(v5, v2);
  (*(v6 + 8))(v9, v17);
}

uint64_t sub_2239F1248(uint64_t a1)
{
  v2 = *(a1 + 16);

  sub_223A20EE0();

  if (!v5)
  {
    sub_2239F1808();
    v4 = *(a1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_periodicSample);

    sub_223A20920();
  }

  return result;
}

uint64_t sub_2239F12F4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation;
  result = swift_beginAccess();
  if (*(*(a1 + v2) + 16))
  {
    v4 = *(a1 + v2);

    v6 = sub_2239F2018(v5);

    if (v6)
    {
      v7 = *(a1 + v2);
      *(a1 + v2) = MEMORY[0x277D84FA0];
    }
  }

  return result;
}

uint64_t sub_2239F137C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A21040();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_223A21090();
  v8 = *(v20 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_223A20FB0();
  v13 = sub_223A214D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2239C7000, v12, v13, "Marking end of AirPod session.", v14, 2u);
    MEMORY[0x223DF1300](v14, -1, -1);
  }

  v15 = *(v2 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  aBlock[4] = sub_2239F3E68;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239EC158;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);

  sub_223A21050();
  v22 = MEMORY[0x277D84F90];
  sub_2239CA218(&qword_27D0A48C8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
  sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
  sub_223A21640();
  MEMORY[0x223DF0640](0, v11, v7, v17);
  _Block_release(v17);
  (*(v21 + 8))(v7, v4);
  (*(v8 + 8))(v11, v20);
}

void sub_2239F16B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);

  sub_223A20EF0();

  v5 = *(a1 + 32);
  v6 = sub_223A211F0();
  [v5 doubleForKey_];
  v8 = v7;

  sub_223A21410();
  if (v8 <= v9)
  {
    if (sub_2239F28D0(a2))
    {
      sub_2239F2580();
      sub_223A21430();
    }

    else
    {
      sub_223A21450();
    }

    v11 = v10;
    sub_223A21410();
    v13 = v11 + v12;
    v14 = sub_223A211F0();
    [v5 setDouble:v14 forKey:v13];
  }
}

uint64_t sub_2239F1808()
{
  v1 = v0;
  sub_223A209F0();
  sub_223A209E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_223A209D0();

  v2 = v14;

  v3 = sub_223A20FB0();
  v4 = sub_223A214D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136380675;
    v7 = MEMORY[0x223DF0470](v2, &type metadata for AirPodInformation);
    v9 = sub_2239E1910(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2239C7000, v3, v4, "sampleConnectedDevices() { sampledAirPods=%{private}s }", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223DF1300](v6, -1, -1);
    MEMORY[0x223DF1300](v5, -1, -1);
  }

  v10 = sub_2239F3BFC(v2);

  v11 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_sampledAirPodInformation;
  swift_beginAccess();
  sub_2239F1E88(v10);
  swift_endAccess();
  v12 = *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation);
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_lastSampledAirPodInformation) = *(v1 + v11);
}

void sub_2239F19F0(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = v2;
  if (!a1 || (v5 = sub_2239F0844(a1)) == 0)
  {
    v22 = sub_223A20FB0();
    v23 = sub_223A214E0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2239C7000, v22, v23, "Failed to interpret connected bluetooth devices.", v24, 2u);
      MEMORY[0x223DF1300](v24, -1, -1);
    }

    v25 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v37 = a2;
  *&v67[0] = MEMORY[0x277D84F90];
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_26:
    v27 = v5;
    v7 = sub_223A21780();
    v5 = v27;
    if (v7)
    {
LABEL_5:
      v35 = v3;
      v8 = 0;
      v69 = v5 & 0xC000000000000001;
      v36 = v5;
      v38 = v5 + 32;
      v9 = 0x27D0A4000uLL;
      v10 = 0x27D0A4000uLL;
      v3 = 0x2784EB000uLL;
      do
      {
        if (v69)
        {
          v5 = MEMORY[0x223DF07F0](v8, v36);
        }

        else
        {
          if (v8 >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v5 = *(v38 + 8 * v8);
        }

        v11 = v5;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v13 = v7;
        if (*(v9 + 2016) != -1)
        {
          swift_once();
        }

        v14 = *(v10 + 2352);
        v15 = [v11 productId];
        v16 = *(v14 + 16);
        v17 = (v14 + 32);
        do
        {
          if (!v16)
          {

            goto LABEL_7;
          }

          v18 = *v17++;
          --v16;
        }

        while (v18 != v15);
        sub_223A21730();
        v19 = v10;
        v20 = v9;
        v21 = *(*&v67[0] + 16);
        sub_223A21760();
        v9 = v20;
        v10 = v19;
        sub_223A21770();
        v5 = sub_223A21740();
LABEL_7:
        v7 = v13;
      }

      while (v8 != v13);
      v26 = *&v67[0];

      if ((*&v67[0] & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  v26 = MEMORY[0x277D84F90];

  if (v26 < 0)
  {
    goto LABEL_47;
  }

LABEL_28:
  if ((v26 & 0x4000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v28 = *(v26 + 16);
  if (!v28)
  {
    goto LABEL_48;
  }

  do
  {
    v25 = MEMORY[0x277D84F90];
    v29 = 0;
    while ((v26 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x223DF07F0](v29, v26);
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_45;
      }

LABEL_34:
      sub_2239F7144(v30, &v53);
      v49 = v63;
      v50 = v64;
      v51 = v65;
      v45 = v59;
      v46 = v60;
      v47 = v61;
      v48 = v62;
      v41 = v55;
      v42 = v56;
      v43 = v57;
      v44 = v58;
      v39 = v53;
      v40 = v54;
      v67[10] = v63;
      v67[11] = v64;
      v67[12] = v65;
      v67[6] = v59;
      v67[7] = v60;
      v67[8] = v61;
      v67[9] = v62;
      v67[2] = v55;
      v67[3] = v56;
      v67[4] = v57;
      v67[5] = v58;
      v52 = v66;
      v68 = v66;
      v67[0] = v53;
      v67[1] = v54;
      if (sub_2239EF284(v67) == 1)
      {
        ++v29;
        if (v31 == v28)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_223A0DF88(0, *(v25 + 2) + 1, 1, v25);
        }

        v33 = *(v25 + 2);
        v32 = *(v25 + 3);
        if (v33 >= v32 >> 1)
        {
          v25 = sub_223A0DF88((v32 > 1), v33 + 1, 1, v25);
        }

        *(v25 + 2) = v33 + 1;
        v34 = &v25[216 * v33];
        *(v34 + 2) = v39;
        *(v34 + 3) = v40;
        *(v34 + 6) = v43;
        *(v34 + 7) = v44;
        *(v34 + 4) = v41;
        *(v34 + 5) = v42;
        *(v34 + 10) = v47;
        *(v34 + 11) = v48;
        *(v34 + 8) = v45;
        *(v34 + 9) = v46;
        *(v34 + 30) = v52;
        *(v34 + 13) = v50;
        *(v34 + 14) = v51;
        *(v34 + 12) = v49;
        if (v31 == v28)
        {
          goto LABEL_49;
        }

        v29 = v31;
      }
    }

    if (v29 >= *(v26 + 16))
    {
      goto LABEL_46;
    }

    v30 = *(v26 + 8 * v29 + 32);
    v31 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      goto LABEL_34;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v28 = sub_223A21780();
  }

  while (v28);
LABEL_48:
  v25 = MEMORY[0x277D84F90];
LABEL_49:

  a2 = v37;
LABEL_50:
  *a2 = v25;
}

uint64_t sub_2239F1E88(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_2239EF230(v23))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 216 * (v9 | (v8 << 6));
    v11 = *(v10 + 16);
    v25[0] = *v10;
    v25[1] = v11;
    v12 = *(v10 + 80);
    v14 = *(v10 + 32);
    v13 = *(v10 + 48);
    v25[4] = *(v10 + 64);
    v25[5] = v12;
    v25[2] = v14;
    v25[3] = v13;
    v15 = *(v10 + 144);
    v17 = *(v10 + 96);
    v16 = *(v10 + 112);
    v25[8] = *(v10 + 128);
    v25[9] = v15;
    v25[6] = v17;
    v25[7] = v16;
    v19 = *(v10 + 176);
    v18 = *(v10 + 192);
    v20 = *(v10 + 160);
    v26 = *(v10 + 208);
    v25[11] = v19;
    v25[12] = v18;
    v25[10] = v20;
    sub_2239EF1D4(v25, v23);
    sub_223A04AB0(v21, v25);
    v23[10] = v21[10];
    v23[11] = v21[11];
    v23[12] = v21[12];
    v24 = v22;
    v23[6] = v21[6];
    v23[7] = v21[7];
    v23[8] = v21[8];
    v23[9] = v21[9];
    v23[2] = v21[2];
    v23[3] = v21[3];
    v23[4] = v21[4];
    v23[5] = v21[5];
    v23[0] = v21[0];
    v23[1] = v21[1];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2239F2018(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2239F2670();

  v5 = sub_2239F3BFC(v4);

  v6 = sub_2239F23DC(v5, a1);
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = sub_223A04790(*(v6 + 16), 0);
    v10 = sub_223A0742C(&v31, v9 + 32, v8, v7);
    sub_2239CE254();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:

  v11 = sub_223A20FB0();
  v12 = sub_223A214D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136380675;
    v15 = MEMORY[0x223DF0470](v9, &type metadata for AirPodInformation);
    v17 = sub_2239E1910(v15, v16, &v31);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2239C7000, v11, v12, "storeConnectedAirPodsInDefaults() { airPodInformationList=%{private}s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223DF1300](v14, -1, -1);
    MEMORY[0x223DF1300](v13, -1, -1);
  }

  v18 = sub_223A20260();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_223A20250();
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
  sub_2239F3D2C(&qword_27D0A4988, sub_2239F3DA4);
  v21 = sub_223A20240();
  v23 = v22;

  v24 = *(v2 + 32);
  v25 = sub_223A20360();
  v26 = sub_223A211F0();
  [v24 setObject:v25 forKey:v26];

  v27 = sub_223A20FB0();
  v28 = sub_223A214D0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2239C7000, v27, v28, "Succesfully stored AirPodInformation in defaults", v29, 2u);
    MEMORY[0x223DF1300](v29, -1, -1);
  }

  sub_2239EF084(v21, v23);

  return 1;
}

uint64_t sub_2239F23DC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v26 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_2239EF230(v24))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + 216 * (v10 | (v9 << 6));
    v12 = *(v11 + 16);
    v27[0] = *v11;
    v27[1] = v12;
    v13 = *(v11 + 80);
    v15 = *(v11 + 32);
    v14 = *(v11 + 48);
    v27[4] = *(v11 + 64);
    v27[5] = v13;
    v27[2] = v15;
    v27[3] = v14;
    v16 = *(v11 + 144);
    v18 = *(v11 + 96);
    v17 = *(v11 + 112);
    v27[8] = *(v11 + 128);
    v27[9] = v16;
    v27[6] = v18;
    v27[7] = v17;
    v20 = *(v11 + 176);
    v19 = *(v11 + 192);
    v21 = *(v11 + 160);
    v28 = *(v11 + 208);
    v27[11] = v20;
    v27[12] = v19;
    v27[10] = v21;
    sub_2239EF1D4(v27, v24);
    sub_223A04AB0(v22, v27);
    v24[10] = v22[10];
    v24[11] = v22[11];
    v24[12] = v22[12];
    v25 = v23;
    v24[6] = v22[6];
    v24[7] = v22[7];
    v24[8] = v22[8];
    v24[9] = v22[9];
    v24[2] = v22[2];
    v24[3] = v22[3];
    v24[4] = v22[4];
    v24[5] = v22[5];
    v24[0] = v22[0];
    v24[1] = v22[1];
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v26;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2239F2580()
{
  v1 = *(v0 + 32);
  v2 = sub_223A211F0();
  [v1 removeObjectForKey_];

  oslog = sub_223A20FB0();
  v3 = sub_223A214D0();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2239C7000, oslog, v3, "Succesfully removed defaults", v4, 2u);
    MEMORY[0x223DF1300](v4, -1, -1);
  }
}

uint64_t sub_2239F2670()
{
  v1 = *(v0 + 32);
  v2 = sub_223A211F0();
  v3 = [v1 dataForKey_];

  if (v3)
  {
    v4 = sub_223A20370();
    v6 = v5;

    v7 = sub_223A20230();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_223A20220();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E0, &unk_223A22800);
    sub_2239F3D2C(&qword_27D0A4978, sub_2239F3BA8);
    sub_223A20210();

    sub_2239EF084(v4, v6);
    return v14;
  }

  else
  {
    v10 = sub_223A20FB0();
    v11 = sub_223A214E0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2239C7000, v10, v11, "No airPodInformationList found in defaults.", v12, 2u);
      MEMORY[0x223DF1300](v12, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2239F28D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_223A21030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_223A210B0();
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v54 - v14;
  v16 = sub_2239F2670();
  if (*(v16 + 16))
  {
    v17 = sub_2239F3408(a1);
    if (v17)
    {
      v55 = v17;
      v56 = v5;
      v57 = v4;
      v58 = v9;
      v59 = v15;
      v18 = OBJC_IVAR____TtC22AudioAnalyticsExternal13AirPodManager_logger;

      v54[1] = v18;
      v19 = sub_223A20FB0();
      v20 = sub_223A214D0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        aBlock[0] = v22;
        *v21 = 136380675;
        v23 = MEMORY[0x223DF0470](v16, &type metadata for AirPodInformation);
        v25 = sub_2239E1910(v23, v24, aBlock);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_2239C7000, v19, v20, "publishConnectedAirPods() { %{private}s }", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x223DF1300](v22, -1, -1);
        MEMORY[0x223DF1300](v21, -1, -1);
      }

      v26 = swift_allocObject();
      *(v26 + 16) = 1;
      v54[0] = v26 + 16;
      v27 = dispatch_group_create();
      dispatch_group_enter(v27);
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = v2;
      v28[4] = v26;
      v28[5] = v16;
      v29 = v55;
      v28[6] = v55;
      aBlock[4] = sub_2239F3B98;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239F3388;
      aBlock[3] = &block_descriptor_0;
      v30 = _Block_copy(aBlock);
      v31 = v27;

      v32 = v29;

      [v32 startConfigurationWithCompletionHandler_];
      _Block_release(v30);
      sub_223A210A0();
      *v8 = 10;
      v34 = v56;
      v33 = v57;
      (*(v56 + 104))(v8, *MEMORY[0x277D85188], v57);
      v35 = v59;
      MEMORY[0x223DF01B0](v13, v8);
      (*(v34 + 8))(v8, v33);
      v36 = *(v60 + 8);
      v37 = v13;
      v38 = v31;
      v39 = v58;
      v36(v37, v58);
      if ((sub_223A21510() & 1) == 0)
      {
        v36(v35, v39);

        swift_beginAccess();
        v53 = *(v26 + 16);

        return v53;
      }

      v40 = sub_223A20FB0();
      v41 = sub_223A214E0();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = v39;
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_2239C7000, v40, v41, "AirPodWorker RTC upload timed out.", v43, 2u);
        MEMORY[0x223DF1300](v43, -1, -1);

        v44 = v59;
        v45 = v42;
      }

      else
      {

        v44 = v59;
        v45 = v39;
      }

      v36(v44, v45);
    }

    else
    {

      v50 = sub_223A20FB0();
      v51 = sub_223A214E0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = a1;
        _os_log_impl(&dword_2239C7000, v50, v51, "Unable to create RTCReportingSession. { sessionID=%lld }", v52, 0xCu);
        MEMORY[0x223DF1300](v52, -1, -1);
      }
    }

    return 0;
  }

  else
  {

    v46 = sub_223A20FB0();
    v47 = sub_223A214D0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2239C7000, v46, v47, "AirPodInformationList is empty. Returning early.", v48, 2u);
      MEMORY[0x223DF1300](v48, -1, -1);
    }

    return 1;
  }
}

void sub_2239F2EF8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  group = a2;
  v46 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    sub_223A20E80();
    v7 = *(a5 + 16);
    if (v7)
    {
      v8 = a5 + 32;
      swift_beginAccess();
      do
      {
        v10 = *(v8 + 176);
        v44[10] = *(v8 + 160);
        v44[11] = v10;
        v44[12] = *(v8 + 192);
        v45 = *(v8 + 208);
        v11 = *(v8 + 112);
        v44[6] = *(v8 + 96);
        v44[7] = v11;
        v12 = *(v8 + 144);
        v44[8] = *(v8 + 128);
        v44[9] = v12;
        v13 = *(v8 + 48);
        v44[2] = *(v8 + 32);
        v44[3] = v13;
        v14 = *(v8 + 80);
        v44[4] = *(v8 + 64);
        v44[5] = v14;
        v15 = *(v8 + 16);
        v44[0] = *v8;
        v44[1] = v15;
        sub_2239EF1D4(v44, v43);
        v16 = sub_2239F3E90();
        sub_2239EF230(v44);

        v17 = sub_223A20FB0();
        v18 = sub_223A214D0();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v43[0] = v20;
          *v19 = 136380675;
          v21 = sub_223A21120();
          v23 = sub_2239E1910(v21, v22, v43);

          *(v19 + 4) = v23;
          _os_log_impl(&dword_2239C7000, v17, v18, "Sending RTC message. { airPodInformation=%{private}s }", v19, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          MEMORY[0x223DF1300](v20, -1, -1);
          MEMORY[0x223DF1300](v19, -1, -1);
        }

        sub_2239D6C54(v16);

        v24 = sub_223A21100();

        v43[0] = 0;
        v25 = [a6 sendMessageWithCategory:17 type:11 payload:v24 error:{v43, group}];

        if (v25)
        {
          v9 = v43[0];
        }

        else
        {
          v26 = v43[0];
          v27 = sub_223A202A0();

          swift_willThrow();
          v28 = v27;
          v29 = sub_223A20FB0();
          v30 = sub_223A214E0();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v43[0] = v32;
            *v31 = 136380675;
            swift_getErrorValue();
            v33 = sub_223A21920();
            v35 = sub_2239E1910(v33, v34, v43);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_2239C7000, v29, v30, "Error sending RTC message. { error=%{private}s }", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v32);
            MEMORY[0x223DF1300](v32, -1, -1);
            MEMORY[0x223DF1300](v31, -1, -1);
          }

          else
          {
          }

          *(a4 + 16) = 0;
        }

        v8 += 216;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v36 = sub_223A20FB0();
    v37 = sub_223A214E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2239C7000, v36, v37, "No RTC backends found. This iteration will not get sent to the server.", v38, 2u);
      MEMORY[0x223DF1300](v38, -1, -1);
    }

    swift_beginAccess();
    *(a4 + 16) = 0;
  }

  dispatch_group_leave(group);
  v39 = *MEMORY[0x277D85DE8];
}