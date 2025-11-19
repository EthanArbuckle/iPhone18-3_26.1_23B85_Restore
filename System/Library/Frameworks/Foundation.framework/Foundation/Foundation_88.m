void *protocol witness for Sequence.makeIterator() in conformance Calendar.DatesByAdding@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1 + 40);
  memcpy(__dst, v1 + 6, 0x11BuLL);
  v7 = *(v1 + 331);
  v9 = *v1;
  memcpy(v12, v1, 0x14CuLL);
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(__dst, v10);
  outlined destroy of Calendar.DatesByAdding(v12);
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 16) = v3;
  *a1 = v9;
  result = memcpy((a1 + 48), __dst, 0x11BuLL);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 331) = v7;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Calendar.DatesByAdding()
{
  memcpy(__dst, v0, 0x14CuLL);
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(__dst);
  outlined destroy of Calendar.DatesByAdding(__dst);
  return v1;
}

uint64_t Calendar._adjustedDateForMismatchedLeapMonthOrDay(start:searchingDate:matchDate:matchingComponents:compsToMatch:nextHighestUnit:direction:matchingPolicy:repeatedTimePolicy:isExactMatch:isLeapDay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, _BYTE *a10, _BYTE *a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v175 = v19;
  v21 = *v20;
  v23 = *v22;
  v25 = *v24;
  v27 = v26[1];
  v256 = *v26;
  v257 = v27;
  v28 = v26[3];
  v258 = v26[2];
  v259 = v28;
  v169 = *(v26 + 8);
  v171 = *(v26 + 72);
  v29 = *(v26 + 73);
  v30 = *(v26 + 89);
  v162 = *(v26 + 14);
  *(v255 + 15) = *(v26 + 13);
  v254 = v29;
  v255[0] = v30;
  v161 = *(v26 + 120);
  v31 = *(v26 + 137);
  v32 = *(v26 + 153);
  v243 = *(v26 + 121);
  v244 = v31;
  v33 = *(v26 + 169);
  v34 = *(v26 + 201);
  v35 = *(v26 + 217);
  v247 = *(v26 + 185);
  v248 = v34;
  v245 = v32;
  v246 = v33;
  v36 = *(v26 + 233);
  v37 = *(v26 + 249);
  v38 = *(v26 + 265);
  v253 = *(v26 + 281);
  v251 = v37;
  v252 = v38;
  v249 = v35;
  v250 = v36;
  memcpy(v260, v39, 0x11BuLL);
  v163 = *v18;
  v172 = *v14;
  v165 = *a9;
  v168 = *v16;
  v40 = *v11;
  v41 = v11[1];
  *&v216[0] = 14;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v42 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v23)
  {
    v42 = v23;
  }

  if (*&static Date.validCalendarRange >= v42)
  {
    v43 = *&static Date.validCalendarRange;
  }

  else
  {
    v43 = v42;
  }

  ObjectType = swift_getObjectType();
  *v215 = v43;
  v45 = *(v41 + 192);
  v174 = ObjectType;
  v261 = v41;
  v164 = v45;
  v45(v237, v216, v215);
  v46 = v239;
  v47 = *&v260[4];
  if ((BYTE8(v260[5]) & 1) != 0 || (v242 & 1) == 0 && v241 == *&v260[5]) && (v239 != *&v260[4] ? (v48 = 1) : (v48 = v240), (BYTE8(v260[4]) & 1) != 0 || (v48 & 1) == 0) || (((v238 | v240) | (BYTE8(v260[5]) | BYTE8(v260[4]))))
  {
    result = outlined destroy of DateComponents(v237);
    *v175 = 0;
    *(v175 + 8) = 1;
    return result;
  }

  v50 = v237[6];
  v155 = *&v260[5];
  v158 = *(v261 + 24);
  v158(v216, v174);
  v160 = v40;
  if (!LOBYTE(v216[0]) && v47 == 2 && (v171 & 1) == 0 && v169 == 2)
  {
    v52 = v50 <= 0 ? -(-v50 & 3) : v50 & 3;
    if (v168)
    {
      v53 = v46 >= 2 && v52 == 0;
      v51.value = v53 ? -4 : -v52;
    }

    else
    {
      v51.value = 4 - v52;
    }

    LOBYTE(v213[0]) = 1;
    DateComponents.init(component:value:)(v51, v213, v214);
    memcpy(v215, v214, 0x11BuLL);
    memcpy(v216, v214, 0x11BuLL);
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(v216) != 1)
    {
      if (*(&static Date.validCalendarRange + 1) >= v23)
      {
        v54 = v23;
      }

      else
      {
        v54 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v54)
      {
        v55 = *&static Date.validCalendarRange;
      }

      else
      {
        v55 = v54;
      }

      memcpy(v214, v216, 0x11BuLL);
      if (*(&static Date.validCalendarRange + 1) >= v55)
      {
        v56 = v55;
      }

      else
      {
        v56 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v56)
      {
        v56 = *&static Date.validCalendarRange;
      }

      *__dst = v56;
      (*(v261 + 200))(v213, v214, __dst, 0, v174);
      v57 = *v213;
      v58 = BYTE8(v213[0]);
      if (one-time initialization token for compatibility2 != -1)
      {
        swift_once();
      }

      v59 = static Calendar.compatibility2;
      outlined destroy of TermOfAddress?(v215, &_s10Foundation14DateComponentsVSgMd);
      if (v59)
      {
        v60 = v57;
        if (v58)
        {
          v60 = v23;
        }
      }

      else
      {
        if (v58)
        {
          goto LABEL_60;
        }

        v60 = v57;
      }

      LOBYTE(__dst[0]) = 1;
      if (*(&static Date.validCalendarRange + 1) < v60)
      {
        v60 = *(&static Date.validCalendarRange + 1);
      }

      if (*&static Date.validCalendarRange >= v60)
      {
        v60 = *&static Date.validCalendarRange;
      }

      *v213 = v60;
      v61 = v261;
      (*(v261 + 160))(v214, __dst, v213, v174, v261);
      if ((v214[1] & 1) == 0)
      {
        *&v213[0] = v160;
        *(&v213[0] + 1) = v61;
        *__src = *&v214[0];
        memcpy(v214, v260, 0x11BuLL);
        LOBYTE(v209[0]) = 0;
        LOBYTE(v208[0]) = v172;
        LOBYTE(v203[0]) = v165;
        Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(__src, v214, v209, v208, v203, __dst);
        if (v12)
        {
          v62 = v237;
          return outlined destroy of DateComponents(v62);
        }

        v25 = *__dst;
        if (BYTE8(__dst[0]))
        {
          v119 = v237;
LABEL_208:
          result = outlined destroy of DateComponents(v119);
          v90 = v175;
          *v175 = v25;
          goto LABEL_130;
        }

        DateComponents.setUnits.getter(v202);
        v128 = v202[0];
        *&__dst[0] = *&v202[0];
        v129 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v25)
        {
          v129 = v25;
        }

        if (*&static Date.validCalendarRange >= v129)
        {
          v129 = *&static Date.validCalendarRange;
        }

        *__src = v129;
        v164(v213, __dst, __src, v174, v261);
        if ((v128 & 0x4000) != 0)
        {
          *&v213[0] = v160;
          *(&v213[0] + 1) = v261;
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          if (*&v213[1])
          {
            if (v160)
            {
              __dst[0] = v213[1];
              swift_unknownObjectRetain();
              Calendar.timeZone.setter(__dst);
            }
          }
        }

        memcpy(v214, v213, 0x11BuLL);
        if (*&v260[0])
        {
          v214[0] = v260[0];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          if (*&v214[1])
          {
            __dst[0] = v214[1];
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(__dst);
          }
        }

        if (*&v260[1])
        {
          __dst[0] = v260[1];
          swift_unknownObjectRetain();
          DateComponents.timeZone.setter(__dst);
        }

        memcpy(__src, v214, sizeof(__src));
        memcpy(v209, v214, 0x11BuLL);
        memcpy(v208, v260, 0x11BuLL);
        outlined init with copy of DateComponents(__src, v203);
        v130 = specialized static DateComponents.== infix(_:_:)(v209, v208);
        memcpy(__dst, v209, 0x11BuLL);
        outlined destroy of DateComponents(__dst);
        if (v130)
        {
          outlined destroy of DateComponents(v237);
          memcpy(v209, v214, 0x11BuLL);
          result = outlined destroy of DateComponents(v209);
          v74 = 0;
          goto LABEL_160;
        }

        memcpy(v208, v214, 0x11BuLL);
        memcpy(v209, v214, 0x11BuLL);
        outlined init with copy of DateComponents(v208, v203);
        outlined destroy of DateComponents(v209);
        memcpy(v203, v214, 0x11BuLL);
        outlined destroy of DateComponents(v203);
      }
    }
  }

LABEL_60:
  if (v172 == 3)
  {
    v63 = v261;
    (v158)(v216, v174, v261);
    if (LOBYTE(v216[0]))
    {
      LOBYTE(v213[0]) = v163;
      v64 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v23)
      {
        v64 = v23;
      }

      if (*&static Date.validCalendarRange >= v64)
      {
        v64 = *&static Date.validCalendarRange;
      }

      *v215 = v64;
      (*(v63 + 160))(v216, v213, v215, v174, v63);
      if (v216[1])
      {
        lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
        swift_allocError();
        *v65 = v163;
        *(v65 + 8) = v23;
        *(v65 + 16) = 0;
        swift_willThrow();
        return outlined destroy of DateComponents(v237);
      }

      v76 = *v216;
      if (v168)
      {
        v77 = v165;
        v78 = v162;
        v79 = v161;
        if (v163 == 3)
        {
          v76 = *v216 + -1.0;
          v80 = v161 | (v162 != 0);
        }

        else
        {
          v80 = 1;
        }
      }

      else
      {
        v80 = 0;
        v76 = *(v216 + 1) + *v216;
        v77 = v165;
        v78 = v162;
        v79 = v161;
      }

      *v213 = v76;
      v216[0] = v256;
      v216[1] = v257;
      v216[2] = v258;
      v216[3] = v259;
      *(&v216[4] + 9) = v254;
      *(&v216[5] + 9) = v255[0];
      *(&v216[16] + 9) = v252;
      *(&v216[14] + 9) = v250;
      *(&v216[15] + 9) = v251;
      *(&v216[10] + 9) = v246;
      *(&v216[11] + 9) = v247;
      *(&v216[12] + 9) = v248;
      *(&v216[13] + 9) = v249;
      *(&v216[7] + 9) = v243;
      *(&v216[8] + 9) = v244;
      *&v215[0] = v160;
      *(&v215[0] + 1) = v63;
      *&v216[4] = v169;
      BYTE8(v216[4]) = v171;
      *(&v216[6] + 1) = *(v255 + 15);
      *&v216[7] = v78;
      BYTE8(v216[7]) = v79;
      *(&v216[17] + 9) = v253;
      *(&v216[9] + 9) = v245;
      LOBYTE(__dst[0]) = v80 & 1;
      __src[0] = 3;
      LOBYTE(v209[0]) = v77;
      Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v213, v216, __dst, __src, v209, v214);
      if (v12)
      {
        return outlined destroy of DateComponents(v237);
      }

      result = outlined destroy of DateComponents(v237);
      v25 = *v214;
      v74 = BYTE8(v214[0]);
    }

    else
    {
      result = outlined destroy of DateComponents(v237);
      v74 = 0;
      *a10 = 0;
    }

LABEL_160:
    v108 = v175;
LABEL_161:
    *v108 = v25;
    *(v108 + 8) = v74;
    return result;
  }

  v66 = v260[0];
  v67 = v260[1];
  v236 = v260[2];
  v235 = BYTE8(v260[3]);
  *(v234 + 3) = HIDWORD(v260[3]);
  v234[0] = *(&v260[3] + 9);
  v152 = *&v260[4];
  v233 = BYTE8(v260[4]);
  *(v232 + 3) = HIDWORD(v260[4]);
  v232[0] = *(&v260[4] + 9);
  v148 = *&v260[3];
  v149 = *&v260[5];
  v231 = BYTE8(v260[5]);
  *&v230[15] = *(&v260[6] + 1);
  *v230 = *(&v260[5] + 9);
  v229 = BYTE8(v260[7]);
  *(v228 + 3) = HIDWORD(v260[7]);
  v228[0] = *(&v260[7] + 9);
  v142 = *&v260[7];
  v144 = *&v260[8];
  v227 = BYTE8(v260[8]);
  *(v226 + 3) = HIDWORD(v260[8]);
  v226[0] = *(&v260[8] + 9);
  v146 = *&v260[9];
  v140 = BYTE8(v260[9]);
  v225 = BYTE8(v260[9]);
  v219 = *(&v260[11] + 9);
  v220 = *(&v260[12] + 9);
  v217 = *(&v260[9] + 9);
  v218 = *(&v260[10] + 9);
  v223 = *(&v260[15] + 9);
  v224 = *(&v260[16] + 9);
  v221 = *(&v260[13] + 9);
  v222 = *(&v260[14] + 9);
  v159 = BYTE9(v260[17]);
  v170 = BYTE10(v260[17]);
  BYTE8(v216[2]) = 1;
  *&v216[3] = 0;
  BYTE8(v216[3]) = 1;
  *&v216[4] = 0;
  BYTE8(v216[4]) = 1;
  *&v216[5] = 0;
  BYTE8(v216[5]) = 1;
  *&v216[6] = 0;
  BYTE8(v216[6]) = 1;
  *&v216[7] = 0;
  BYTE8(v216[7]) = 1;
  *&v216[8] = 0;
  BYTE8(v216[8]) = 1;
  *&v216[9] = 0;
  BYTE8(v216[9]) = 1;
  *&v216[10] = 0;
  BYTE8(v216[10]) = 1;
  *&v216[11] = 0;
  BYTE8(v216[11]) = 1;
  *&v216[12] = 0;
  BYTE8(v216[12]) = 1;
  *&v216[13] = 0;
  BYTE8(v216[13]) = 1;
  *&v216[14] = 0;
  BYTE8(v216[14]) = 1;
  *&v216[15] = 0;
  BYTE8(v216[15]) = 1;
  *&v216[16] = 0;
  BYTE8(v216[16]) = 1;
  *&v216[17] = 0;
  BYTE8(v216[17]) = 1;
  *(&v216[17] + 9) = 514;
  memset(v216, 0, 40);
  outlined init with copy of DateComponents(v260, v215);
  if (*&v216[1] && *&v216[0])
  {
    v215[0] = v216[1];
    swift_unknownObjectRetain();
    Calendar.timeZone.setter(v215);
  }

  v215[0] = 0uLL;
  DateComponents.timeZone.setter(v215);
  *&v216[2] = 0;
  BYTE8(v216[2]) = 1;
  *&v216[7] = 0;
  BYTE8(v216[7]) = 1;
  *&v216[8] = 0;
  BYTE8(v216[8]) = 1;
  *&v216[9] = 0;
  BYTE8(v216[9]) = 1;
  *&v216[10] = 0;
  BYTE8(v216[10]) = 1;
  *&v216[11] = 0;
  BYTE8(v216[11]) = 1;
  *&v216[12] = 0;
  BYTE8(v216[12]) = 1;
  *&v216[13] = 0;
  BYTE8(v216[13]) = 1;
  *&v216[15] = 0;
  BYTE8(v216[15]) = 1;
  *&v216[16] = 0;
  BYTE8(v216[16]) = 1;
  *&v216[17] = 0;
  BYTE8(v216[17]) = 1;
  *&v216[6] = 0;
  BYTE8(v216[6]) = 1;
  v68 = v50 == 0x7FFFFFFFFFFFFFFFLL;
  if (v50 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v69 = 0;
  }

  else
  {
    v69 = v50;
  }

  *&v216[3] = v69;
  BYTE8(v216[3]) = v50 == 0x7FFFFFFFFFFFFFFFLL;
  if (v47 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v70 = 0;
  }

  else
  {
    v70 = v47;
  }

  *&v216[4] = v70;
  BYTE8(v216[4]) = v47 == 0x7FFFFFFFFFFFFFFFLL;
  *&v216[5] = 1;
  BYTE8(v216[5]) = 0;
  if (!v172)
  {
    if (BYTE8(v260[3]))
    {
      v173 = v69;
      v75 = v159;
    }

    else
    {
      v75 = v159;
      if (v50 <= *&v260[3])
      {
        v91 = *&v260[3];
      }

      else
      {
        v91 = v50;
      }

      v68 = v91 == 0x7FFFFFFFFFFFFFFFLL;
      if (v91 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v91 = 0;
      }

      v173 = v91;
    }

    v235 = v68;
    memcpy(v215, v216, 0x11BuLL);
    (*(v261 + 176))(&v196, v215, v174);
    v93 = v196;
    if (v197)
    {
      outlined destroy of DateComponents(v237);
      memcpy(v214, v216, 0x11BuLL);
      outlined destroy of DateComponents(v214);
      v215[2] = v236;
      *(&v215[5] + 9) = *v230;
      *(&v215[16] + 9) = v224;
      *(&v215[12] + 9) = v220;
      *(&v215[11] + 9) = v219;
      *(&v215[10] + 9) = v218;
      *(&v215[9] + 9) = v217;
      *(&v215[15] + 9) = v223;
      *(&v215[14] + 9) = v222;
      v215[0] = v66;
      v215[1] = v67;
      *&v215[3] = v173;
      BYTE8(v215[3]) = v235;
      *(&v215[3] + 9) = v234[0];
      HIDWORD(v215[3]) = *(v234 + 3);
      *&v215[4] = v152;
      BYTE8(v215[4]) = v233;
      HIDWORD(v215[4]) = *(v232 + 3);
      *(&v215[4] + 9) = v232[0];
      *&v215[5] = v149;
      BYTE8(v215[5]) = v231;
      *(&v215[6] + 1) = *&v230[15];
      *&v215[7] = v142;
      BYTE8(v215[7]) = v229;
      *(&v215[7] + 9) = v228[0];
      HIDWORD(v215[7]) = *(v228 + 3);
      *&v215[8] = v144;
      BYTE8(v215[8]) = v227;
      HIDWORD(v215[8]) = *(v226 + 3);
      *(&v215[8] + 9) = v226[0];
      *&v215[9] = v146;
      BYTE8(v215[9]) = v140;
      *(&v215[13] + 9) = v221;
      BYTE9(v215[17]) = v75;
      BYTE10(v215[17]) = v170;
      v94 = v215;
LABEL_129:
      result = outlined destroy of DateComponents(v94);
      v90 = v175;
      *v175 = v93;
      goto LABEL_130;
    }

    LOBYTE(v213[0]) = 2;
    v92.value = 1;
    DateComponents.init(component:value:)(v92, v213, v214);
    memcpy(v215, v214, 0x11BuLL);
    v25 = 0.0;
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(v215) == 1)
    {
      goto LABEL_123;
    }

    v102 = v93;
    if (*(&static Date.validCalendarRange + 1) >= v93)
    {
      v103 = v93;
    }

    else
    {
      v103 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v103)
    {
      v104 = *&static Date.validCalendarRange;
    }

    else
    {
      v104 = v103;
    }

    memcpy(v213, v215, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v104)
    {
      v105 = v104;
    }

    else
    {
      v105 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v105)
    {
      v105 = *&static Date.validCalendarRange;
    }

    *__src = v105;
    (*(v261 + 200))(__dst, v213, __src, 0, v174);
    v25 = *__dst;
    v106 = BYTE8(__dst[0]);
    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    v107 = static Calendar.compatibility2;
    outlined destroy of TermOfAddress?(v214, &_s10Foundation14DateComponentsVSgMd);
    if (v107 == 1)
    {
      if (v106)
      {
        v25 = v102;
      }
    }

    else if (v106)
    {
LABEL_123:
      outlined destroy of DateComponents(v237);
      memcpy(__dst, v216, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      v213[2] = v236;
      *(&v213[5] + 9) = *v230;
      *(&v213[16] + 9) = v224;
      *(&v213[12] + 9) = v220;
      *(&v213[11] + 9) = v219;
      *(&v213[10] + 9) = v218;
      *(&v213[9] + 9) = v217;
      *(&v213[15] + 9) = v223;
      *(&v213[14] + 9) = v222;
      v213[0] = v66;
      v213[1] = v67;
      *&v213[3] = v173;
      BYTE8(v213[3]) = v235;
      *(&v213[3] + 9) = v234[0];
      HIDWORD(v213[3]) = *(v234 + 3);
      *&v213[4] = v152;
      BYTE8(v213[4]) = v233;
      HIDWORD(v213[4]) = *(v232 + 3);
      *(&v213[4] + 9) = v232[0];
      *&v213[5] = v149;
      BYTE8(v213[5]) = v231;
      *(&v213[6] + 1) = *&v230[15];
      *&v213[7] = v142;
      BYTE8(v213[7]) = v229;
      *(&v213[7] + 9) = v228[0];
      HIDWORD(v213[7]) = *(v228 + 3);
      *&v213[8] = v144;
      BYTE8(v213[8]) = v227;
      HIDWORD(v213[8]) = *(v226 + 3);
      *(&v213[8] + 9) = v226[0];
      *&v213[9] = v146;
      BYTE8(v213[9]) = v140;
      *(&v213[13] + 9) = v221;
      BYTE9(v213[17]) = v75;
      BYTE10(v213[17]) = v170;
      v95 = v213;
      goto LABEL_124;
    }

    v120 = v261;
    *&__dst[0] = v160;
    *(&__dst[0] + 1) = v261;
    *__src = 4;
    *v209 = v25;
    Calendar._dateComponents(_:from:)(__src, v209, v213);
    outlined destroy of DateComponents(v213);
    v121 = *&v213[4];
    if (BYTE8(v213[4]))
    {
      v121 = 0;
    }

    v233 = v121 == 0x7FFFFFFFFFFFFFFFLL;
    if (v121 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v122 = 0;
    }

    else
    {
      v122 = v121;
    }

    v231 = 0;
    *&v207 = v160;
    *(&v207 + 1) = v120;
    v193 = v21;
    __dst[0] = v66;
    __dst[1] = v67;
    __dst[2] = v236;
    *&__dst[3] = v173;
    v150 = v235;
    BYTE8(__dst[3]) = v235;
    HIDWORD(__dst[3]) = *(v234 + 3);
    *(&__dst[3] + 9) = v234[0];
    v156 = v122;
    *&__dst[4] = v122;
    v153 = v233;
    BYTE8(__dst[4]) = v233;
    HIDWORD(__dst[4]) = *(v232 + 3);
    *(&__dst[4] + 9) = v232[0];
    *&__dst[5] = 1;
    BYTE8(__dst[5]) = 0;
    *(&__dst[6] + 1) = *&v230[15];
    *(&__dst[5] + 9) = *v230;
    *&__dst[7] = v142;
    v123 = v229;
    BYTE8(__dst[7]) = v229;
    HIDWORD(__dst[7]) = *(v228 + 3);
    *(&__dst[7] + 9) = v228[0];
    *&__dst[8] = v144;
    v124 = v227;
    BYTE8(__dst[8]) = v227;
    HIDWORD(__dst[8]) = *(v226 + 3);
    *(&__dst[8] + 9) = v226[0];
    *&__dst[9] = v146;
    BYTE8(__dst[9]) = v140;
    *(&__dst[16] + 9) = v224;
    *(&__dst[12] + 9) = v220;
    *(&__dst[11] + 9) = v219;
    *(&__dst[10] + 9) = v218;
    *(&__dst[9] + 9) = v217;
    *(&__dst[15] + 9) = v223;
    *(&__dst[14] + 9) = v222;
    *(&__dst[13] + 9) = v221;
    BYTE9(__dst[17]) = v75;
    BYTE10(__dst[17]) = v170;
    memcpy(__src, __dst, sizeof(__src));
    v211 = v168;
    v192 = 0;
    v191 = v165;
    outlined init with copy of DateComponents(__dst, v209);
    Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(&v193, __src, &v211, &v192, &v191, &v194);
    if (v12)
    {
      memcpy(v203, __src, 0x11BuLL);
      outlined destroy of DateComponents(v203);
      outlined destroy of DateComponents(v237);
      memcpy(v208, v216, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      v209[0] = v66;
      v209[1] = v67;
      v209[2] = v236;
      *&v209[3] = v173;
      BYTE8(v209[3]) = v150;
      *(&v209[3] + 9) = v234[0];
      HIDWORD(v209[3]) = *(v234 + 3);
      *&v209[4] = v156;
      BYTE8(v209[4]) = v153;
      *(&v209[4] + 9) = v232[0];
      HIDWORD(v209[4]) = *(v232 + 3);
      *&v209[5] = 1;
      BYTE8(v209[5]) = 0;
      *(&v209[6] + 1) = *&v230[15];
      *(&v209[5] + 9) = *v230;
      *&v209[7] = v142;
      BYTE8(v209[7]) = v123;
      HIDWORD(v209[7]) = *(v228 + 3);
      *(&v209[7] + 9) = v228[0];
      *&v209[8] = v144;
      BYTE8(v209[8]) = v124;
      HIDWORD(v209[8]) = *(v226 + 3);
      *(&v209[8] + 9) = v226[0];
      *&v209[9] = v146;
      BYTE8(v209[9]) = v140;
      *(&v209[16] + 9) = v224;
      *(&v209[12] + 9) = v220;
      *(&v209[11] + 9) = v219;
      *(&v209[10] + 9) = v218;
      *(&v209[9] + 9) = v217;
      *(&v209[15] + 9) = v223;
      *(&v209[14] + 9) = v222;
      *(&v209[13] + 9) = v221;
      BYTE9(v209[17]) = v75;
      BYTE10(v209[17]) = v170;
      v62 = v209;
      return outlined destroy of DateComponents(v62);
    }

    memcpy(v209, __src, 0x11BuLL);
    outlined destroy of DateComponents(v209);
    v25 = v194;
    if ((v195 & 1) == 0)
    {
      v190 = v236;
      *(v189 + 15) = *&v230[15];
      v189[0] = *v230;
      v182 = v220;
      v181 = v219;
      v180[1] = v218;
      v180[0] = v217;
      v186 = v224;
      v185 = v223;
      v184 = v222;
      v183 = v221;
      v208[2] = v236;
      *(&v208[6] + 1) = *&v230[15];
      *(&v208[5] + 9) = *v230;
      *(&v208[16] + 9) = v224;
      v206[0] = v234[0];
      *(v206 + 3) = *(v234 + 3);
      v205[0] = v232[0];
      *(v205 + 3) = *(v232 + 3);
      *&v188[3] = *(v228 + 3);
      *v188 = v228[0];
      *&v187[3] = *(v226 + 3);
      *v187 = v226[0];
      v208[0] = v66;
      v208[1] = v67;
      *&v208[3] = v173;
      BYTE8(v208[3]) = v150;
      *(&v208[3] + 9) = v234[0];
      HIDWORD(v208[3]) = *(v234 + 3);
      *&v208[4] = v156;
      BYTE8(v208[4]) = v153;
      HIDWORD(v208[4]) = *(v232 + 3);
      *(&v208[4] + 9) = v232[0];
      *&v208[5] = 1;
      BYTE8(v208[5]) = 0;
      *&v208[7] = v142;
      BYTE8(v208[7]) = v123;
      HIDWORD(v208[7]) = *(v228 + 3);
      *(&v208[7] + 9) = v228[0];
      *&v208[8] = v144;
      v167 = v124;
      BYTE8(v208[8]) = v124;
      HIDWORD(v208[8]) = *(v226 + 3);
      *(&v208[8] + 9) = v226[0];
      *&v208[9] = v146;
      BYTE8(v208[9]) = v140;
      *(&v208[12] + 9) = v220;
      *(&v208[11] + 9) = v219;
      *(&v208[10] + 9) = v218;
      *(&v208[9] + 9) = v217;
      *(&v208[15] + 9) = v223;
      *(&v208[14] + 9) = v222;
      *(&v208[13] + 9) = v221;
      BYTE9(v208[17]) = v75;
      BYTE10(v208[17]) = v170;
      DateComponents.setUnits.getter(&v179);
      v135 = LOWORD(v179);
      v203[0] = v179;
      v136 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v25)
      {
        v136 = v25;
      }

      if (*&static Date.validCalendarRange >= v136)
      {
        v136 = *&static Date.validCalendarRange;
      }

      *v202 = v136;
      v164(v178, v203, v202, v174, v261);
      if ((v135 & 0x4000) != 0)
      {
        *&v178[0] = v160;
        *(&v178[0] + 1) = v261;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*&v178[1])
        {
          if (v160)
          {
            *v203 = v178[1];
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(v203);
          }
        }
      }

      if (v66)
      {
        v178[0] = v66;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*&v178[1])
        {
          *v203 = v178[1];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(v203);
        }
      }

      if (v67)
      {
        *v203 = v67;
        swift_unknownObjectRetain();
        DateComponents.timeZone.setter(v203);
      }

      memcpy(v202, v178, 0x11BuLL);
      memcpy(v201, v178, 0x11BuLL);
      v200[0] = v66;
      v200[1] = v67;
      v200[2] = v190;
      *&v200[3] = v173;
      BYTE8(v200[3]) = v150;
      *(&v200[3] + 9) = v206[0];
      HIDWORD(v200[3]) = *(v206 + 3);
      *&v200[4] = v156;
      BYTE8(v200[4]) = v153;
      *(&v200[4] + 9) = v205[0];
      HIDWORD(v200[4]) = *(v205 + 3);
      *&v200[5] = 1;
      BYTE8(v200[5]) = 0;
      *(&v200[5] + 9) = v189[0];
      *(&v200[6] + 1) = *(v189 + 15);
      *&v200[7] = v142;
      BYTE8(v200[7]) = v123;
      *(&v200[7] + 9) = *v188;
      HIDWORD(v200[7]) = *&v188[3];
      *&v200[8] = v144;
      BYTE8(v200[8]) = v124;
      *(&v200[8] + 9) = *v187;
      HIDWORD(v200[8]) = *&v187[3];
      *&v200[9] = v146;
      BYTE8(v200[9]) = v140;
      *(&v200[16] + 9) = v186;
      *(&v200[12] + 9) = v182;
      *(&v200[11] + 9) = v181;
      *(&v200[10] + 9) = v180[1];
      *(&v200[9] + 9) = v180[0];
      *(&v200[15] + 9) = v185;
      *(&v200[14] + 9) = v184;
      *(&v200[13] + 9) = v183;
      BYTE9(v200[17]) = v75;
      BYTE10(v200[17]) = v170;
      outlined init with copy of DateComponents(v202, v199);
      v137 = specialized static DateComponents.== infix(_:_:)(v201, v200);
      memcpy(v203, v201, 0x11BuLL);
      outlined destroy of DateComponents(v203);
      if (!v137)
      {
        memcpy(v200, v178, 0x11BuLL);
        outlined init with copy of DateComponents(v200, v201);
        outlined destroy of DateComponents(v237);
        memcpy(v201, v178, 0x11BuLL);
        outlined destroy of DateComponents(v201);
        memcpy(v177, v178, 0x11BuLL);
        outlined destroy of DateComponents(v177);
        memcpy(v198, v216, 0x11BuLL);
        outlined destroy of DateComponents(v198);
        v199[2] = v236;
        *(&v199[5] + 9) = *v230;
        *(&v199[16] + 9) = v224;
        *(&v199[12] + 9) = v220;
        *(&v199[11] + 9) = v219;
        *(&v199[10] + 9) = v218;
        *(&v199[9] + 9) = v217;
        *(&v199[15] + 9) = v223;
        *(&v199[14] + 9) = v222;
        v199[0] = v66;
        v199[1] = v67;
        *&v199[3] = v173;
        BYTE8(v199[3]) = v150;
        *(&v199[3] + 9) = v234[0];
        HIDWORD(v199[3]) = *(v234 + 3);
        *&v199[4] = v156;
        BYTE8(v199[4]) = v153;
        *(&v199[4] + 9) = v232[0];
        HIDWORD(v199[4]) = *(v232 + 3);
        v74 = 1;
        *&v199[5] = 1;
        BYTE8(v199[5]) = 0;
        *(&v199[6] + 1) = *&v230[15];
        *&v199[7] = v142;
        BYTE8(v199[7]) = v123;
        *(&v199[7] + 9) = v228[0];
        HIDWORD(v199[7]) = *(v228 + 3);
        *&v199[8] = v144;
        BYTE8(v199[8]) = v167;
        *(&v199[8] + 9) = v226[0];
        HIDWORD(v199[8]) = *(v226 + 3);
        *&v199[9] = v146;
        BYTE8(v199[9]) = v225;
        *(&v199[13] + 9) = v221;
        BYTE9(v199[17]) = v75;
        BYTE10(v199[17]) = v170;
        result = outlined destroy of DateComponents(v199);
        v25 = 0.0;
        goto LABEL_265;
      }

      memcpy(v201, v178, 0x11BuLL);
      outlined destroy of DateComponents(v201);
      v176 = 3;
      v138 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v25)
      {
        v138 = v25;
      }

      if (*&static Date.validCalendarRange >= v138)
      {
        v138 = *&static Date.validCalendarRange;
      }

      *v177 = v138;
      (*(v261 + 160))(v198, &v176, v177, v174);
      outlined destroy of DateComponents(v237);
      memcpy(v199, v216, 0x11BuLL);
      outlined destroy of DateComponents(v199);
      v200[2] = v236;
      *(&v200[5] + 9) = *v230;
      *(&v200[16] + 9) = v224;
      *(&v200[12] + 9) = v220;
      *(&v200[11] + 9) = v219;
      *(&v200[10] + 9) = v218;
      *(&v200[9] + 9) = v217;
      *(&v200[15] + 9) = v223;
      *(&v200[14] + 9) = v222;
      v200[0] = v66;
      v200[1] = v67;
      *&v200[3] = v173;
      BYTE8(v200[3]) = v150;
      *(&v200[3] + 9) = v234[0];
      HIDWORD(v200[3]) = *(v234 + 3);
      *&v200[4] = v156;
      BYTE8(v200[4]) = v153;
      *(&v200[4] + 9) = v232[0];
      HIDWORD(v200[4]) = *(v232 + 3);
      *&v200[5] = 1;
      BYTE8(v200[5]) = 0;
      *(&v200[6] + 1) = *&v230[15];
      *&v200[7] = v142;
      BYTE8(v200[7]) = v123;
      *(&v200[7] + 9) = v228[0];
      HIDWORD(v200[7]) = *(v228 + 3);
      *&v200[8] = v144;
      BYTE8(v200[8]) = v124;
      *(&v200[8] + 9) = v226[0];
      HIDWORD(v200[8]) = *(v226 + 3);
      *&v200[9] = v146;
      BYTE8(v200[9]) = v225;
      *(&v200[13] + 9) = v221;
      BYTE9(v200[17]) = v75;
      BYTE10(v200[17]) = v170;
      result = outlined destroy of DateComponents(v200);
      if ((v198[2] & 1) == 0)
      {
        v74 = 0;
        v25 = *v198;
        goto LABEL_265;
      }

      goto LABEL_261;
    }

    outlined destroy of DateComponents(v237);
    memcpy(v203, v216, 0x11BuLL);
    outlined destroy of DateComponents(v203);
    *(&v208[16] + 9) = v224;
    v208[2] = v236;
    *(&v208[5] + 9) = *v230;
    *(&v208[12] + 9) = v220;
    *(&v208[11] + 9) = v219;
    *(&v208[10] + 9) = v218;
    *(&v208[9] + 9) = v217;
    *(&v208[15] + 9) = v223;
    *(&v208[14] + 9) = v222;
    v208[0] = v66;
    v208[1] = v67;
    *&v208[3] = v173;
    BYTE8(v208[3]) = v150;
    *(&v208[3] + 9) = v234[0];
    HIDWORD(v208[3]) = *(v234 + 3);
    *&v208[4] = v156;
    BYTE8(v208[4]) = v153;
    *(&v208[4] + 9) = v232[0];
    HIDWORD(v208[4]) = *(v232 + 3);
    *&v208[5] = 1;
    BYTE8(v208[5]) = 0;
    *(&v208[6] + 1) = *&v230[15];
    *&v208[7] = v142;
    BYTE8(v208[7]) = v123;
    *(&v208[7] + 9) = v228[0];
    HIDWORD(v208[7]) = *(v228 + 3);
    *&v208[8] = v144;
    BYTE8(v208[8]) = v124;
    *(&v208[8] + 9) = v226[0];
    HIDWORD(v208[8]) = *(v226 + 3);
    *&v208[9] = v146;
    BYTE8(v208[9]) = v140;
    *(&v208[13] + 9) = v221;
    BYTE9(v208[17]) = v75;
    BYTE10(v208[17]) = v170;
    v95 = v208;
LABEL_124:
    result = outlined destroy of DateComponents(v95);
    *v175 = v25;
    *(v175 + 8) = 1;
    return result;
  }

  *&v214[0] = 112;
  v71 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v21)
  {
    v71 = v21;
  }

  if (*&static Date.validCalendarRange >= v71)
  {
    v71 = *&static Date.validCalendarRange;
  }

  *v213 = v71;
  v164(v215, v214, v213, v174, v261);
  memcpy(v214, v215, 0x11BuLL);
  outlined destroy of DateComponents(v214);
  if (BYTE8(v260[7]) == 1)
  {
    v72 = *&v214[7];
    if (BYTE8(v214[7]))
    {
      v73 = 1;
      goto LABEL_94;
    }
  }

  else
  {
    v72 = *&v260[7];
  }

  v73 = v72 == 0x7FFFFFFFFFFFFFFFLL;
  if (v72 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v72 = 0;
  }

LABEL_94:
  v145 = v72;
  v229 = v73;
  if (BYTE8(v260[8]) == 1)
  {
    v81 = *&v214[8];
    if (BYTE8(v214[8]))
    {
      v82 = 1;
      goto LABEL_100;
    }
  }

  else
  {
    v81 = *&v260[8];
  }

  v82 = v81 == 0x7FFFFFFFFFFFFFFFLL;
  if (v81 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v81 = 0;
  }

LABEL_100:
  v227 = v82;
  if (BYTE8(v260[9]) == 1)
  {
    v83 = *&v214[9];
    if (BYTE8(v214[9]))
    {
      v84 = 1;
      goto LABEL_106;
    }
  }

  else
  {
    v83 = *&v260[9];
  }

  v84 = v83 == 0x7FFFFFFFFFFFFFFFLL;
  if (v83 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v83 = 0;
  }

LABEL_106:
  v225 = v84;
  v147 = v81;
  if (v172 == 1)
  {
    if ((BYTE8(v260[3]) & 1) == 0 && v50 <= *&v260[3])
    {
      v50 = *&v260[3];
    }

    if (v50 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v85 = 0;
      v86 = 1;
      v235 = 1;
    }

    else
    {
      v86 = 0;
      v235 = 0;
      v85 = v50;
    }

    *&v216[3] = v85;
    BYTE8(v216[3]) = v86;
    memcpy(v213, v216, 0x11BuLL);
    (*(v261 + 176))(v208, v213, v174);
    v93 = *v208;
    if (BYTE8(v208[0]))
    {
      outlined destroy of DateComponents(v237);
      memcpy(__dst, v216, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      v213[2] = v236;
      *(&v213[5] + 9) = *v230;
      *(&v213[16] + 9) = v224;
      *(&v213[12] + 9) = v220;
      *(&v213[11] + 9) = v219;
      *(&v213[10] + 9) = v218;
      *(&v213[9] + 9) = v217;
      *(&v213[15] + 9) = v223;
      *(&v213[14] + 9) = v222;
      v213[0] = v66;
      v213[1] = v67;
      *&v213[3] = v85;
      BYTE8(v213[3]) = v235;
      *(&v213[3] + 9) = v234[0];
      HIDWORD(v213[3]) = *(v234 + 3);
      *&v213[4] = v152;
      BYTE8(v213[4]) = v233;
      HIDWORD(v213[4]) = *(v232 + 3);
      *(&v213[4] + 9) = v232[0];
      *&v213[5] = v149;
      BYTE8(v213[5]) = v231;
      *(&v213[6] + 1) = *&v230[15];
      *&v213[7] = v145;
      BYTE8(v213[7]) = v229;
      *(&v213[7] + 9) = v228[0];
      HIDWORD(v213[7]) = *(v228 + 3);
      *&v213[8] = v147;
      BYTE8(v213[8]) = v227;
      HIDWORD(v213[8]) = *(v226 + 3);
      *(&v213[8] + 9) = v226[0];
      *&v213[9] = v83;
      BYTE8(v213[9]) = v225;
      *(&v213[13] + 9) = v221;
      BYTE9(v213[17]) = v159;
      BYTE10(v213[17]) = v170;
      v94 = v213;
      goto LABEL_129;
    }

    v148 = v85;
    __src[0] = 2;
    LOBYTE(v87) = 1;
    v98 = __src;
    v96.value = 1;
    DateComponents.init(component:value:)(v96, __src, __dst);
    memcpy(v213, __dst, 0x11BuLL);
    v25 = 0.0;
    if (_s10Foundation13URLComponentsV01_B0VSgWOg(v213) == 1)
    {
LABEL_138:
      outlined destroy of DateComponents(v237);
      memcpy(v209, v216, 0x11BuLL);
      outlined destroy of DateComponents(v209);
      *&__src[32] = v236;
      *&__src[89] = *v230;
      v101 = v223;
      *(v98 + 265) = v224;
      *&__src[201] = v220;
      *&__src[185] = v219;
      *&__src[169] = v218;
      *&__src[153] = v217;
      *&__src[249] = v101;
      *&__src[233] = v222;
      *__src = v66;
      *&__src[16] = v67;
      *&__src[48] = v148;
      __src[56] = v235;
      *&__src[57] = v234[0];
      *&__src[60] = *(v234 + 3);
      *&__src[64] = v152;
      __src[72] = v233;
      *&__src[76] = *(v232 + 3);
      *&__src[73] = v232[0];
      *&__src[80] = v149;
      __src[88] = v231;
      *&__src[104] = *&v230[15];
      *&__src[112] = v145;
      __src[120] = v229;
      *&__src[121] = v228[0];
      *&__src[124] = *(v228 + 3);
      *&__src[128] = v147;
      __src[136] = v227;
      *&__src[140] = *(v226 + 3);
      *&__src[137] = v226[0];
      *&__src[144] = v83;
      __src[152] = v225;
      *&__src[217] = v221;
      __src[281] = v159;
      __src[282] = v170;
      result = outlined destroy of DateComponents(__src);
      *v175 = v25;
      *(v175 + 8) = v87;
      return result;
    }

    v21 = v93;
    if (*(&static Date.validCalendarRange + 1) >= v93)
    {
      v115 = v93;
    }

    else
    {
      v115 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v115)
    {
      v116 = *&static Date.validCalendarRange;
    }

    else
    {
      v116 = v115;
    }

    memcpy(__src, v213, sizeof(__src));
    if (*(&static Date.validCalendarRange + 1) >= v116)
    {
      v117 = v116;
    }

    else
    {
      v117 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v117)
    {
      v117 = *&static Date.validCalendarRange;
    }

    v203[0] = v117;
    (*(v261 + 200))(v209, __src, v203, 0, v174);
    v25 = *v209;
    v88 = BYTE8(v209[0]);
    if (one-time initialization token for compatibility2 == -1)
    {
      goto LABEL_178;
    }

    goto LABEL_267;
  }

  memcpy(v213, v216, 0x11BuLL);
  v87 = v261;
  v88 = v160;
  (*(v261 + 176))(__src, v213, v174, v261);
  v89 = *__src;
  if (__src[8])
  {
    outlined destroy of DateComponents(v237);
    memcpy(__dst, v216, 0x11BuLL);
    outlined destroy of DateComponents(__dst);
    v213[2] = v236;
    *(&v213[5] + 9) = *v230;
    *(&v213[16] + 9) = v224;
    *(&v213[12] + 9) = v220;
    *(&v213[11] + 9) = v219;
    *(&v213[10] + 9) = v218;
    *(&v213[9] + 9) = v217;
    *(&v213[15] + 9) = v223;
    *(&v213[14] + 9) = v222;
    v213[0] = v66;
    v213[1] = v67;
    *&v213[3] = v148;
    BYTE8(v213[3]) = v235;
    *(&v213[3] + 9) = v234[0];
    HIDWORD(v213[3]) = *(v234 + 3);
    *&v213[4] = v152;
    BYTE8(v213[4]) = v233;
    HIDWORD(v213[4]) = *(v232 + 3);
    *(&v213[4] + 9) = v232[0];
    *&v213[5] = v149;
    BYTE8(v213[5]) = v231;
    *(&v213[6] + 1) = *&v230[15];
    *&v213[7] = v145;
    BYTE8(v213[7]) = v229;
    *(&v213[7] + 9) = v228[0];
    HIDWORD(v213[7]) = *(v228 + 3);
    *&v213[8] = v147;
    BYTE8(v213[8]) = v227;
    HIDWORD(v213[8]) = *(v226 + 3);
    *(&v213[8] + 9) = v226[0];
    *&v213[9] = v83;
    BYTE8(v213[9]) = v225;
    *(&v213[13] + 9) = v221;
    BYTE9(v213[17]) = v159;
    BYTE10(v213[17]) = v170;
    result = outlined destroy of DateComponents(v213);
    v90 = v175;
    *v175 = v89;
LABEL_130:
    *(v90 + 8) = 1;
    return result;
  }

  v97 = *__src;
  LOBYTE(__dst[0]) = 3;
  __src[0] = 2;
  if (*(&static Date.validCalendarRange + 1) < v89)
  {
    v97 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v97)
  {
    v97 = *&static Date.validCalendarRange;
  }

  *v213 = v97;
  v98 = v213;
  result = (*(v87 + 144))(__dst, __src, v213, v174, v87);
  if (v100)
  {
    outlined destroy of DateComponents(v237);
    memcpy(__dst, v216, 0x11BuLL);
    outlined destroy of DateComponents(__dst);
    v213[2] = v236;
    *(&v213[5] + 9) = *v230;
    *(&v213[16] + 9) = v224;
    *(&v213[12] + 9) = v220;
    *(&v213[11] + 9) = v219;
    *(&v213[10] + 9) = v218;
    *(&v213[9] + 9) = v217;
    *(&v213[15] + 9) = v223;
    *(&v213[14] + 9) = v222;
    v213[0] = v66;
    v213[1] = v67;
    *&v213[3] = v148;
    BYTE8(v213[3]) = v235;
    *(&v213[3] + 9) = v234[0];
    HIDWORD(v213[3]) = *(v234 + 3);
    *&v213[4] = v152;
    BYTE8(v213[4]) = v233;
    HIDWORD(v213[4]) = *(v232 + 3);
    *(&v213[4] + 9) = v232[0];
    *&v213[5] = v149;
    BYTE8(v213[5]) = v231;
    *(&v213[6] + 1) = *&v230[15];
    *&v213[7] = v145;
    BYTE8(v213[7]) = v229;
    *(&v213[7] + 9) = v228[0];
    HIDWORD(v213[7]) = *(v228 + 3);
    *&v213[8] = v147;
    BYTE8(v213[8]) = v227;
    HIDWORD(v213[8]) = *(v226 + 3);
    *(&v213[8] + 9) = v226[0];
    *&v213[9] = v83;
    BYTE8(v213[9]) = v225;
    *(&v213[13] + 9) = v221;
    BYTE9(v213[17]) = v159;
    BYTE10(v213[17]) = v170;
    result = outlined destroy of DateComponents(v213);
    v90 = v175;
    *v175 = 0;
    goto LABEL_130;
  }

  v109 = v99 - result;
  if (__OFSUB__(v99, result))
  {
    __break(1u);
LABEL_267:
    swift_once();
LABEL_178:
    v118 = static Calendar.compatibility2;
    outlined destroy of TermOfAddress?(__dst, &_s10Foundation14DateComponentsVSgMd);
    if (v118 == 1)
    {
      if (v88)
      {
        v25 = v21;
      }
    }

    else if (v88)
    {
      goto LABEL_138;
    }

    v112 = v160;
    v114 = v261;
    *&v209[0] = v160;
    *(&v209[0] + 1) = v261;
    *&v203[0] = 4;
    *v202 = v25;
    Calendar._dateComponents(_:from:)(v203, v202, __src);
    outlined destroy of DateComponents(__src);
    v125 = *&__src[64];
    if (__src[72])
    {
      v125 = 0;
    }

    if (v125 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v110 = 0;
    }

    else
    {
      v110 = v125;
    }

    v233 = v125 == 0x7FFFFFFFFFFFFFFFLL;
    v231 = 0;
    v113 = 1;
    v111 = v67;
    goto LABEL_203;
  }

  v110 = v152;
  v111 = v67;
  v112 = v160;
  if (v155 >= v109)
  {
    if (v109 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v113 = 0;
    }

    else
    {
      v113 = v99 - result;
    }

    v231 = v109 == 0x7FFFFFFFFFFFFFFFLL;
    v114 = v261;
    goto LABEL_203;
  }

  v113 = v155 - 1;
  v114 = v261;
  if (!__OFSUB__(v155, 1))
  {
    v231 = 0;
LABEL_203:
    v157 = v113;
    *&v189[0] = v112;
    *(&v189[0] + 1) = v114;
    v196 = v23;
    v213[0] = v66;
    *&v213[1] = v111;
    *(&v213[1] + 1) = *(&v67 + 1);
    v213[2] = v236;
    *&v213[3] = v148;
    v139 = v235;
    BYTE8(v213[3]) = v235;
    *(&v213[3] + 9) = v234[0];
    HIDWORD(v213[3]) = *(v234 + 3);
    *&v213[4] = v110;
    v141 = v233;
    BYTE8(v213[4]) = v233;
    HIDWORD(v213[4]) = *(v232 + 3);
    *(&v213[4] + 9) = v232[0];
    *&v213[5] = v113;
    v143 = v231;
    BYTE8(v213[5]) = v231;
    *(&v213[6] + 1) = *&v230[15];
    *(&v213[5] + 9) = *v230;
    *&v213[7] = v145;
    v151 = v229;
    BYTE8(v213[7]) = v229;
    HIDWORD(v213[7]) = *(v228 + 3);
    *(&v213[7] + 9) = v228[0];
    *&v213[8] = v147;
    v126 = v227;
    BYTE8(v213[8]) = v227;
    HIDWORD(v213[8]) = *(v226 + 3);
    *(&v213[8] + 9) = v226[0];
    *&v213[9] = v83;
    v127 = v225;
    BYTE8(v213[9]) = v225;
    *(&v213[16] + 9) = v224;
    *(&v213[12] + 9) = v220;
    *(&v213[11] + 9) = v219;
    *(&v213[10] + 9) = v218;
    *(&v213[9] + 9) = v217;
    *(&v213[15] + 9) = v223;
    *(&v213[14] + 9) = v222;
    *(&v213[13] + 9) = v221;
    BYTE9(v213[17]) = v159;
    BYTE10(v213[17]) = v170;
    memcpy(__dst, v213, 0x11BuLL);
    v188[0] = v168;
    v187[0] = v172;
    v211 = v165;
    outlined init with copy of DateComponents(v213, __src);
    Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(&v196, __dst, v188, v187, &v211, &v190);
    if (v12)
    {
      memcpy(v208, __dst, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      outlined destroy of DateComponents(v237);
      memcpy(v209, v216, 0x11BuLL);
      outlined destroy of DateComponents(v209);
      *__src = v66;
      *&__src[16] = v67;
      *&__src[32] = v236;
      *&__src[48] = v148;
      __src[56] = v139;
      *&__src[57] = v234[0];
      *&__src[60] = *(v234 + 3);
      *&__src[64] = v110;
      __src[72] = v141;
      *&__src[73] = v232[0];
      *&__src[76] = *(v232 + 3);
      *&__src[80] = v157;
      __src[88] = v143;
      *&__src[104] = *&v230[15];
      *&__src[89] = *v230;
      *&__src[112] = v145;
      __src[120] = v151;
      *&__src[124] = *(v228 + 3);
      *&__src[121] = v228[0];
      *&__src[128] = v147;
      __src[136] = v126;
      *&__src[140] = *(v226 + 3);
      *&__src[137] = v226[0];
      *&__src[144] = v83;
      __src[152] = v127;
      *&__src[265] = v224;
      *&__src[201] = v220;
      *&__src[185] = v219;
      *&__src[169] = v218;
      *&__src[153] = v217;
      *&__src[249] = v223;
      *&__src[233] = v222;
      *&__src[217] = v221;
      __src[281] = v159;
      __src[282] = v170;
      v62 = __src;
      return outlined destroy of DateComponents(v62);
    }

    v166 = v126;
    v154 = v110;
    memcpy(__src, __dst, sizeof(__src));
    outlined destroy of DateComponents(__src);
    v25 = *&v190;
    if (BYTE8(v190))
    {
      outlined destroy of DateComponents(v237);
      memcpy(v208, v216, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      *(&v209[16] + 9) = v224;
      v209[2] = v236;
      *(&v209[5] + 9) = *v230;
      *(&v209[12] + 9) = v220;
      *(&v209[11] + 9) = v219;
      *(&v209[10] + 9) = v218;
      *(&v209[9] + 9) = v217;
      *(&v209[15] + 9) = v223;
      *(&v209[14] + 9) = v222;
      v209[0] = v66;
      v209[1] = v67;
      *&v209[3] = v148;
      BYTE8(v209[3]) = v139;
      *(&v209[3] + 9) = v234[0];
      HIDWORD(v209[3]) = *(v234 + 3);
      *&v209[4] = v110;
      BYTE8(v209[4]) = v141;
      *(&v209[4] + 9) = v232[0];
      HIDWORD(v209[4]) = *(v232 + 3);
      *&v209[5] = v157;
      BYTE8(v209[5]) = v143;
      *(&v209[6] + 1) = *&v230[15];
      *&v209[7] = v145;
      BYTE8(v209[7]) = v151;
      *(&v209[7] + 9) = v228[0];
      HIDWORD(v209[7]) = *(v228 + 3);
      *&v209[8] = v147;
      BYTE8(v209[8]) = v126;
      *(&v209[8] + 9) = v226[0];
      HIDWORD(v209[8]) = *(v226 + 3);
      *&v209[9] = v83;
      BYTE8(v209[9]) = v127;
      *(&v209[13] + 9) = v221;
      BYTE9(v209[17]) = v159;
      BYTE10(v209[17]) = v170;
      v119 = v209;
      goto LABEL_208;
    }

    v207 = v236;
    *(v180 + 15) = *&v230[15];
    v180[0] = *v230;
    v177[2] = v219;
    v177[3] = v220;
    v177[0] = v217;
    v177[1] = v218;
    v177[6] = v223;
    v177[7] = v224;
    v177[4] = v221;
    v177[5] = v222;
    v209[2] = v236;
    *(&v209[6] + 1) = *&v230[15];
    *(&v209[5] + 9) = *v230;
    *(&v209[16] + 9) = v224;
    LODWORD(v193) = v234[0];
    *(&v193 + 3) = *(v234 + 3);
    LODWORD(v179) = v232[0];
    *(&v179 + 3) = *(v232 + 3);
    *(v206 + 3) = *(v228 + 3);
    v206[0] = v228[0];
    *(v205 + 3) = *(v226 + 3);
    v205[0] = v226[0];
    v209[0] = v66;
    v209[1] = v67;
    *&v209[3] = v148;
    BYTE8(v209[3]) = v139;
    *(&v209[3] + 9) = v234[0];
    HIDWORD(v209[3]) = *(v234 + 3);
    *&v209[4] = v110;
    BYTE8(v209[4]) = v141;
    HIDWORD(v209[4]) = *(v232 + 3);
    *(&v209[4] + 9) = v232[0];
    *&v209[5] = v157;
    BYTE8(v209[5]) = v143;
    *&v209[7] = v145;
    BYTE8(v209[7]) = v151;
    HIDWORD(v209[7]) = *(v228 + 3);
    *(&v209[7] + 9) = v228[0];
    *&v209[8] = v147;
    BYTE8(v209[8]) = v126;
    HIDWORD(v209[8]) = *(v226 + 3);
    *(&v209[8] + 9) = v226[0];
    *&v209[9] = v83;
    BYTE8(v209[9]) = v127;
    *(&v209[12] + 9) = v220;
    *(&v209[11] + 9) = v219;
    *(&v209[10] + 9) = v218;
    *(&v209[9] + 9) = v217;
    *(&v209[15] + 9) = v223;
    *(&v209[14] + 9) = v222;
    *(&v209[13] + 9) = v221;
    BYTE9(v209[17]) = v159;
    BYTE10(v209[17]) = v170;
    DateComponents.setUnits.getter(&v194);
    v131 = LOWORD(v194);
    *v208 = v194;
    v132 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v25)
    {
      v132 = v25;
    }

    if (*&static Date.validCalendarRange >= v132)
    {
      v132 = *&static Date.validCalendarRange;
    }

    v203[0] = v132;
    v133 = v261;
    v164(v204, v208, v203, v174, v261);
    if ((v131 & 0x4000) != 0)
    {
      *&v204[0] = v160;
      *(&v204[0] + 1) = v133;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*&v204[1])
      {
        if (v160)
        {
          v208[0] = v204[1];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(v208);
        }
      }
    }

    if (v66)
    {
      v204[0] = v66;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*&v204[1])
      {
        v208[0] = v204[1];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v208);
      }
    }

    if (v67)
    {
      v208[0] = v67;
      swift_unknownObjectRetain();
      DateComponents.timeZone.setter(v208);
    }

    memcpy(v203, v204, 0x11BuLL);
    memcpy(v202, v204, 0x11BuLL);
    v201[2] = v207;
    *(&v201[5] + 9) = v180[0];
    *(&v201[16] + 9) = v177[7];
    *(&v201[12] + 9) = v177[3];
    *(&v201[11] + 9) = v177[2];
    *(&v201[10] + 9) = v177[1];
    *(&v201[9] + 9) = v177[0];
    *(&v201[15] + 9) = v177[6];
    *(&v201[14] + 9) = v177[5];
    v201[0] = v66;
    v201[1] = v67;
    *&v201[3] = v148;
    BYTE8(v201[3]) = v139;
    *(&v201[3] + 9) = LODWORD(v193);
    HIDWORD(v201[3]) = *(&v193 + 3);
    *&v201[4] = v154;
    BYTE8(v201[4]) = v141;
    *(&v201[4] + 9) = LODWORD(v179);
    HIDWORD(v201[4]) = *(&v179 + 3);
    *&v201[5] = v157;
    BYTE8(v201[5]) = v143;
    *(&v201[6] + 1) = *(v180 + 15);
    *&v201[7] = v145;
    BYTE8(v201[7]) = v151;
    *(&v201[7] + 9) = v206[0];
    HIDWORD(v201[7]) = *(v206 + 3);
    *&v201[8] = v147;
    BYTE8(v201[8]) = v166;
    *(&v201[8] + 9) = v205[0];
    HIDWORD(v201[8]) = *(v205 + 3);
    *&v201[9] = v83;
    BYTE8(v201[9]) = v127;
    *(&v201[13] + 9) = v177[4];
    BYTE9(v201[17]) = v159;
    BYTE10(v201[17]) = v170;
    outlined init with copy of DateComponents(v203, v200);
    v134 = specialized static DateComponents.== infix(_:_:)(v202, v201);
    memcpy(v208, v202, 0x11BuLL);
    outlined destroy of DateComponents(v208);
    if (!v134)
    {
      memcpy(v201, v204, 0x11BuLL);
      outlined init with copy of DateComponents(v201, v202);
      outlined destroy of DateComponents(v237);
      memcpy(v202, v204, 0x11BuLL);
      outlined destroy of DateComponents(v202);
      memcpy(v198, v204, 0x11BuLL);
      outlined destroy of DateComponents(v198);
      memcpy(v199, v216, 0x11BuLL);
      outlined destroy of DateComponents(v199);
      v200[0] = v66;
      v200[1] = v67;
      v200[2] = v236;
      *&v200[3] = v148;
      BYTE8(v200[3]) = v139;
      *(&v200[3] + 9) = v234[0];
      HIDWORD(v200[3]) = *(v234 + 3);
      *&v200[4] = v154;
      BYTE8(v200[4]) = v141;
      *(&v200[4] + 9) = v232[0];
      HIDWORD(v200[4]) = *(v232 + 3);
      *&v200[5] = v157;
      BYTE8(v200[5]) = v143;
      *(&v200[6] + 1) = *&v230[15];
      *(&v200[5] + 9) = *v230;
      *&v200[7] = v145;
      BYTE8(v200[7]) = v151;
      HIDWORD(v200[7]) = *(v228 + 3);
      *(&v200[7] + 9) = v228[0];
      *&v200[8] = v147;
      BYTE8(v200[8]) = v166;
      HIDWORD(v200[8]) = *(v226 + 3);
      *(&v200[8] + 9) = v226[0];
      *&v200[9] = v83;
      BYTE8(v200[9]) = v127;
      *(&v200[16] + 9) = v224;
      *(&v200[12] + 9) = v220;
      *(&v200[11] + 9) = v219;
      *(&v200[10] + 9) = v218;
      *(&v200[9] + 9) = v217;
      *(&v200[15] + 9) = v223;
      *(&v200[14] + 9) = v222;
      *(&v200[13] + 9) = v221;
      BYTE9(v200[17]) = v159;
      BYTE10(v200[17]) = v170;
      result = outlined destroy of DateComponents(v200);
      v74 = 1;
      v25 = 0.0;
      goto LABEL_265;
    }

    outlined destroy of DateComponents(v237);
    memcpy(v200, v204, 0x11BuLL);
    outlined destroy of DateComponents(v200);
    memcpy(v201, v216, 0x11BuLL);
    outlined destroy of DateComponents(v201);
    v202[0] = v66;
    v202[1] = v67;
    v202[2] = v236;
    *&v202[3] = v148;
    BYTE8(v202[3]) = v139;
    *(&v202[3] + 9) = v234[0];
    HIDWORD(v202[3]) = *(v234 + 3);
    *&v202[4] = v154;
    BYTE8(v202[4]) = v141;
    *(&v202[4] + 9) = v232[0];
    HIDWORD(v202[4]) = *(v232 + 3);
    *&v202[5] = v157;
    BYTE8(v202[5]) = v143;
    *(&v202[6] + 1) = *&v230[15];
    *(&v202[5] + 9) = *v230;
    *&v202[7] = v145;
    BYTE8(v202[7]) = v151;
    HIDWORD(v202[7]) = *(v228 + 3);
    *(&v202[7] + 9) = v228[0];
    *&v202[8] = v147;
    BYTE8(v202[8]) = v166;
    HIDWORD(v202[8]) = *(v226 + 3);
    *(&v202[8] + 9) = v226[0];
    *&v202[9] = v83;
    BYTE8(v202[9]) = v127;
    *(&v202[16] + 9) = v224;
    *(&v202[12] + 9) = v220;
    *(&v202[11] + 9) = v219;
    *(&v202[10] + 9) = v218;
    *(&v202[9] + 9) = v217;
    *(&v202[15] + 9) = v223;
    *(&v202[14] + 9) = v222;
    *(&v202[13] + 9) = v221;
    BYTE9(v202[17]) = v159;
    BYTE10(v202[17]) = v170;
    result = outlined destroy of DateComponents(v202);
LABEL_261:
    v74 = 0;
LABEL_265:
    v108 = v175;
    *a10 = 0;
    *a11 = 1;
    goto LABEL_161;
  }

  __break(1u);
  return result;
}

uint64_t Calendar.preserveSmallerUnits(_:compsToMatch:compsToModify:)(double *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a2 + 112);
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  v9 = *(a2 + 136);
  v10 = *(a2 + 144);
  v11 = *(a2 + 152);
  v12 = *(v3 + 8);
  v27 = 112;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v13 = v5;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v14 = *&static Date.validCalendarRange;
  }

  else
  {
    v14 = v13;
  }

  ObjectType = swift_getObjectType();
  v26 = v14;
  (*(v12 + 192))(v20, &v27, &v26, ObjectType, v12);
  result = outlined destroy of DateComponents(v20);
  if (v7 && (v6 = v20[14], (v21 & 1) != 0))
  {
    v17 = 1;
  }

  else
  {
    v17 = v6 == 0x7FFFFFFFFFFFFFFFLL;
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }
  }

  *(a3 + 112) = v6;
  *(a3 + 120) = v17;
  if (v9 && (v8 = v22, (v23 & 1) != 0))
  {
    v18 = 1;
  }

  else
  {
    v18 = v8 == 0x7FFFFFFFFFFFFFFFLL;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }
  }

  *(a3 + 128) = v8;
  *(a3 + 136) = v18;
  if (v11 && (v10 = v24, (v25 & 1) != 0))
  {
    v19 = 1;
  }

  else
  {
    v19 = v10 == 0x7FFFFFFFFFFFFFFFLL;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }
  }

  *(a3 + 144) = v10;
  *(a3 + 152) = v19;
  return result;
}

uint64_t Calendar._adjustedDateForMismatchedChineseLeapMonth(start:searchingDate:matchDate:matchingComponents:compsToMatch:direction:matchingPolicy:repeatedTimePolicy:isExactMatch:isLeapDay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, _BYTE *a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v93 = v18;
  v20 = *v19;
  v22 = *v21;
  v24 = *v23;
  v26 = *(v25 + 281);
  memcpy(v159, v27, 0x11BuLL);
  v88 = *v17;
  v89 = *v15;
  v28 = *v13;
  v30 = *v10;
  v29 = v10[1];
  v140[0] = 15;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v31 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v24)
  {
    v31 = v24;
  }

  if (*&static Date.validCalendarRange >= v31)
  {
    v32 = *&static Date.validCalendarRange;
  }

  else
  {
    v32 = v31;
  }

  ObjectType = swift_getObjectType();
  *v137 = v32;
  v34 = *(*&v29 + 192);
  v94 = ObjectType;
  v160 = v29;
  v92 = v34;
  (v34)(v157, v140, v137);
  if (v158 == 2 || (v158 & 1) != 0 || (v26 & 1) == 0)
  {
    result = outlined destroy of DateComponents(v157);
    *v93 = v24;
    *(v93 + 8) = 0;
    return result;
  }

  v85 = v28;
  *a9 = 0;
  memcpy(v141, v159, 0x11BuLL);
  v154 = v159[14];
  v155 = v159[15];
  v156[0] = v159[16];
  *(v156 + 9) = *(&v159[16] + 9);
  v150 = v159[10];
  v151 = v159[11];
  v152 = v159[12];
  v153 = v159[13];
  v146 = v159[6];
  v147 = v159[7];
  v148 = v159[8];
  v149 = v159[9];
  v142 = v159[2];
  v143 = v159[3];
  v144 = v159[4];
  v145 = v159[5];
  *&v138[9] = *(&v159[16] + 9);
  v137[14] = v159[14];
  v137[15] = v159[15];
  *v138 = v159[16];
  v137[10] = v159[10];
  v137[11] = v159[11];
  v137[12] = v159[12];
  v137[13] = v159[13];
  v137[6] = v159[6];
  v137[7] = v159[7];
  v137[8] = v159[8];
  v137[9] = v159[9];
  v137[2] = v159[2];
  v137[3] = v159[3];
  BYTE9(v141[17]) = 0;
  v35 = *&v141[0];
  v137[0] = v141[0];
  v90 = *&v141[1];
  v91 = *(&v141[0] + 1);
  v87 = *(&v141[1] + 1);
  v137[1] = v141[1];
  v137[4] = v159[4];
  v137[5] = v159[5];
  v139 = __PAIR16__(BYTE10(v141[17]), 0);
  v86 = BYTE10(v141[17]);
  DateComponents.setUnits.getter(&v136);
  v36 = v136;
  v133[0] = v136;
  v37 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v24)
  {
    v37 = v24;
  }

  if (*&static Date.validCalendarRange >= v37)
  {
    v37 = *&static Date.validCalendarRange;
  }

  *v132 = v37;
  outlined init with copy of DateComponents(v159, v134);
  v92(v135, v133, v132, v94, *&v160);
  if ((v36 & 0x4000) != 0)
  {
    *v135 = v30;
    *&v135[1] = v160;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v135[2])
    {
      if (v30 != 0.0)
      {
        v134[0] = v135[2];
        v134[1] = v135[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v134);
      }
    }
  }

  memcpy(v140, v135, 0x11BuLL);
  if (v35)
  {
    v140[0] = v35;
    v140[1] = v91;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v140[2])
    {
      v134[0] = v140[2];
      v134[1] = v140[3];
      swift_unknownObjectRetain();
      Calendar.timeZone.setter(v134);
    }
  }

  v38 = v90;
  if (v90)
  {
    v134[0] = v90;
    v134[1] = v87;
    swift_unknownObjectRetain();
    DateComponents.timeZone.setter(v134);
    v38 = v90;
  }

  memcpy(v133, v140, 0x11BuLL);
  memcpy(v132, v140, 0x11BuLL);
  *&__dst[0] = v35;
  *(&__dst[0] + 1) = v91;
  *&__dst[1] = v38;
  *(&__dst[1] + 1) = v87;
  *(&__dst[16] + 9) = *(v156 + 9);
  __dst[14] = v154;
  __dst[15] = v155;
  __dst[16] = v156[0];
  __dst[10] = v150;
  __dst[11] = v151;
  __dst[12] = v152;
  __dst[13] = v153;
  __dst[6] = v146;
  __dst[7] = v147;
  __dst[8] = v148;
  __dst[9] = v149;
  __dst[2] = v142;
  __dst[3] = v143;
  __dst[4] = v144;
  __dst[5] = v145;
  BYTE9(__dst[17]) = 0;
  BYTE10(__dst[17]) = v86;
  outlined init with copy of DateComponents(v133, v130);
  v39 = specialized static DateComponents.== infix(_:_:)(v132, __dst);
  memcpy(v134, v132, 0x11BuLL);
  outlined destroy of DateComponents(v134);
  if (v39)
  {
    *&v84 = v24;
    memcpy(v132, v140, 0x11BuLL);
    outlined destroy of DateComponents(v132);
    v40 = v11;
    goto LABEL_26;
  }

  memcpy(__dst, v140, 0x11BuLL);
  memcpy(v132, v140, 0x11BuLL);
  outlined init with copy of DateComponents(__dst, v130);
  outlined destroy of DateComponents(v132);
  memcpy(v129, v140, 0x11BuLL);
  outlined destroy of DateComponents(v129);
  v126[0] = v30;
  v126[1] = v160;
  v125 = v22;
  memcpy(v130, v141, 0x11BuLL);
  v124 = v88;
  v123 = v89;
  v122 = v85;
  outlined init with copy of DateComponents(v130, __src);
  Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(&v125, v141, &v124, &v123, &v122, &v127);
  if (v11)
  {
    memcpy(v120, v141, 0x11BuLL);
    outlined destroy of DateComponents(v120);
    outlined destroy of DateComponents(v157);
    memcpy(__src, v141, sizeof(__src));
    return outlined destroy of DateComponents(__src);
  }

  memcpy(__src, v141, sizeof(__src));
  outlined destroy of DateComponents(__src);
  v48 = v127;
  if ((v128 & 1) == 0)
  {
    v117 = v141[14];
    v118 = v141[15];
    v119[0] = v141[16];
    *(v119 + 9) = *(&v141[16] + 9);
    v113 = v141[10];
    v114 = v141[11];
    v115 = v141[12];
    v116 = v141[13];
    v109 = v141[6];
    v110 = v141[7];
    v111 = v141[8];
    v112 = v141[9];
    v105 = v141[2];
    v106 = v141[3];
    v107 = v141[4];
    v108 = v141[5];
    *(&v120[16] + 9) = *(&v141[16] + 9);
    v120[14] = v141[14];
    v120[15] = v141[15];
    v120[16] = v141[16];
    v120[10] = v141[10];
    v120[11] = v141[11];
    v120[12] = v141[12];
    v120[13] = v141[13];
    v120[6] = v141[6];
    v120[7] = v141[7];
    v120[8] = v141[8];
    v120[9] = v141[9];
    v120[2] = v141[2];
    v120[3] = v141[3];
    *&v84 = v127;
    v24 = v127;
    *&v120[0] = v35;
    *(&v120[0] + 1) = v91;
    *&v120[1] = v90;
    *(&v120[1] + 1) = v87;
    v120[4] = v141[4];
    v120[5] = v141[5];
    BYTE9(v120[17]) = 0;
    BYTE10(v120[17]) = v86;
    DateComponents.setUnits.getter(&v103);
    v56 = v103;
    v101[0] = v103;
    v57 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v48)
    {
      v57 = v48;
    }

    if (*&static Date.validCalendarRange >= v57)
    {
      v57 = *&static Date.validCalendarRange;
    }

    *v100 = v57;
    v92(v102, v101, v100, v94, *&v160);
    if ((v56 & 0x4000) != 0)
    {
      v102[0] = v30;
      v102[1] = v160;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (*&v102[2])
      {
        if (v30 != 0.0)
        {
          *v101 = v102[2];
          *&v101[1] = v102[3];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(v101);
        }
      }
    }

    memcpy(v104, v102, 0x11BuLL);
    if (v35)
    {
      v104[0] = v35;
      v104[1] = v91;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (v104[2])
      {
        v101[0] = v104[2];
        v101[1] = v104[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v101);
      }
    }

    v40 = v11;
    v58 = v90;
    if (v90)
    {
      v101[0] = v90;
      v101[1] = v87;
      swift_unknownObjectRetain();
      DateComponents.timeZone.setter(v101);
      v58 = v90;
    }

    memcpy(v100, v104, 0x11BuLL);
    memcpy(v99, v104, 0x11BuLL);
    *&v98[0] = v35;
    *(&v98[0] + 1) = v91;
    *&v98[1] = v58;
    *(&v98[1] + 1) = v87;
    *(&v98[16] + 9) = *(v119 + 9);
    v98[14] = v117;
    v98[15] = v118;
    v98[16] = v119[0];
    v98[10] = v113;
    v98[11] = v114;
    v98[12] = v115;
    v98[13] = v116;
    v98[6] = v109;
    v98[7] = v110;
    v98[8] = v111;
    v98[9] = v112;
    v98[2] = v105;
    v98[3] = v106;
    v98[4] = v107;
    v98[5] = v108;
    BYTE9(v98[17]) = 0;
    BYTE10(v98[17]) = v86;
    outlined init with copy of DateComponents(v100, v97);
    v59 = specialized static DateComponents.== infix(_:_:)(v99, v98);
    memcpy(v101, v99, 0x11BuLL);
    outlined destroy of DateComponents(v101);
    if (!v59)
    {
      memcpy(v98, v104, 0x11BuLL);
      outlined init with copy of DateComponents(v98, v99);
      outlined destroy of DateComponents(v157);
      memcpy(v99, v104, 0x11BuLL);
      outlined destroy of DateComponents(v99);
      memcpy(v96, v104, 0x11BuLL);
      outlined destroy of DateComponents(v96);
      memcpy(v97, v141, 0x11BuLL);
      v60 = v97;
LABEL_75:
      result = outlined destroy of DateComponents(v60);
      v49 = v93;
      *v93 = 0;
      goto LABEL_76;
    }

    memcpy(v99, v104, 0x11BuLL);
    outlined destroy of DateComponents(v99);
LABEL_26:
    LOBYTE(__dst[0]) = 2;
    v41 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v24)
    {
      v41 = v24;
    }

    if (*&static Date.validCalendarRange >= v41)
    {
      v41 = *&static Date.validCalendarRange;
    }

    *v132 = v41;
    v42 = v160;
    v83 = *(*&v160 + 160);
    v83(v97, __dst, v132, v94, *&v160);
    if (LOBYTE(v97[2]))
    {
      memcpy(v132, v141, 0x11BuLL);
      outlined destroy of DateComponents(v132);
      result = outlined destroy of DateComponents(v157);
      v44 = v93;
      *v93 = *&v84;
LABEL_32:
      *(v44 + 8) = 0;
      return result;
    }

    v45 = v97[0];
    BYTE9(v141[17]) = 1;
    v46 = v97[1] + v97[0];
    *v96 = v30;
    *&v96[1] = v42;
    v126[0] = v97[1] + v97[0];
    memcpy(v132, v141, 0x11BuLL);
    v47 = v89;
    LOBYTE(v125) = v88;
    LOBYTE(v103) = v89;
    v124 = v85;
    outlined init with copy of DateComponents(v132, __dst);
    Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v126, v141, &v125, &v103, &v124, &v105);
    if (v40)
    {
      memcpy(v130, v141, 0x11BuLL);
      outlined destroy of DateComponents(v130);
      outlined destroy of DateComponents(v157);
      memcpy(__dst, v141, 0x11BuLL);
      return outlined destroy of DateComponents(__dst);
    }

    memcpy(__dst, v141, 0x11BuLL);
    outlined destroy of DateComponents(__dst);
    if ((BYTE8(v105) & 1) == 0)
    {
      v98[12] = v141[14];
      v98[13] = v141[15];
      v98[14] = v141[16];
      *(&v98[14] + 9) = *(&v141[16] + 9);
      v98[8] = v141[10];
      v98[9] = v141[11];
      v98[10] = v141[12];
      v98[11] = v141[13];
      v98[4] = v141[6];
      v98[5] = v141[7];
      v98[6] = v141[8];
      v98[7] = v141[9];
      v98[0] = v141[2];
      v98[1] = v141[3];
      v98[2] = v141[4];
      v98[3] = v141[5];
      *(&v129[16] + 9) = *(&v141[16] + 9);
      v129[14] = v141[14];
      v129[15] = v141[15];
      v129[16] = v141[16];
      v129[10] = v141[10];
      v129[11] = v141[11];
      v129[12] = v141[12];
      v129[13] = v141[13];
      v129[6] = v141[6];
      v129[7] = v141[7];
      v129[8] = v141[8];
      v129[9] = v141[9];
      v50 = *&v105;
      v129[2] = v141[2];
      v129[3] = v141[3];
      *&v129[0] = v35;
      *(&v129[0] + 1) = v91;
      *&v129[1] = v90;
      *(&v129[1] + 1) = v87;
      v129[4] = v141[4];
      v129[5] = v141[5];
      BYTE9(v129[17]) = 1;
      BYTE10(v129[17]) = v86;
      DateComponents.setUnits.getter(&v127);
      v51 = LOWORD(v127);
      *v120 = v127;
      v52 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v50)
      {
        v52 = v50;
      }

      if (*&static Date.validCalendarRange >= v52)
      {
        v52 = *&static Date.validCalendarRange;
      }

      v102[0] = v52;
      v92(__src, v120, v102, v94, *&v160);
      if ((v51 & 0x4000) != 0)
      {
        *__src = v30;
        *&__src[8] = v160;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*&__src[16])
        {
          if (v30 != 0.0)
          {
            v120[0] = *&__src[16];
            swift_unknownObjectRetain();
            Calendar.timeZone.setter(v120);
          }
        }
      }

      memcpy(v130, __src, 0x11BuLL);
      v53 = v87;
      if (v35)
      {
        *&v130[0] = v35;
        *(&v130[0] + 1) = v91;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (*&v130[1])
        {
          v120[0] = v130[1];
          swift_unknownObjectRetain();
          Calendar.timeZone.setter(v120);
          v53 = v87;
        }
      }

      v54 = v90;
      if (v90)
      {
        *&v120[0] = v90;
        *(&v120[0] + 1) = v53;
        swift_unknownObjectRetain();
        DateComponents.timeZone.setter(v120);
        v53 = v87;
        v54 = v90;
      }

      memcpy(v102, v130, 0x11BuLL);
      memcpy(v101, v130, 0x11BuLL);
      *&v100[0] = v35;
      *(&v100[0] + 1) = v91;
      *&v100[1] = v54;
      *(&v100[1] + 1) = v53;
      *(&v100[16] + 9) = *(&v98[14] + 9);
      v100[14] = v98[12];
      v100[15] = v98[13];
      v100[16] = v98[14];
      v100[10] = v98[8];
      v100[11] = v98[9];
      v100[12] = v98[10];
      v100[13] = v98[11];
      v100[6] = v98[4];
      v100[7] = v98[5];
      v100[8] = v98[6];
      v100[9] = v98[7];
      v100[2] = v98[0];
      v100[3] = v98[1];
      v100[4] = v98[2];
      v100[5] = v98[3];
      BYTE9(v100[17]) = 1;
      BYTE10(v100[17]) = v86;
      outlined init with copy of DateComponents(v102, v99);
      v55 = specialized static DateComponents.== infix(_:_:)(v101, v100);
      memcpy(v120, v101, 0x11BuLL);
      outlined destroy of DateComponents(v120);
      v47 = v89;
      if (v55)
      {
        outlined destroy of DateComponents(v157);
        memcpy(v100, v130, 0x11BuLL);
        outlined destroy of DateComponents(v100);
        memcpy(v101, v141, 0x11BuLL);
        result = outlined destroy of DateComponents(v101);
        v44 = v93;
        *v93 = v50;
        goto LABEL_32;
      }

      memcpy(v100, v130, 0x11BuLL);
      memcpy(v101, v130, 0x11BuLL);
      outlined init with copy of DateComponents(v100, v99);
      outlined destroy of DateComponents(v101);
      memcpy(v99, v130, 0x11BuLL);
      outlined destroy of DateComponents(v99);
    }

    if (v47 == 3)
    {
      memcpy(v130, v141, 0x11BuLL);
      outlined destroy of DateComponents(v130);
      v60 = v157;
      goto LABEL_75;
    }

    v99[0] = 4;
    v61 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v46)
    {
      v61 = v46;
    }

    if (*&static Date.validCalendarRange >= v61)
    {
      v61 = *&static Date.validCalendarRange;
    }

    *v129 = v61;
    v92(v130, v99, v129, v94, *&v160);
    outlined destroy of DateComponents(v130);
    if (BYTE9(v130[17]) == 2 || (BYTE9(v130[17]) & 1) == 0)
    {
      if (v89)
      {
        BYTE9(v141[17]) = 0;
        *__src = v30;
        v65 = *&v160;
        *&__src[8] = v160;
        *&v120[0] = v20;
        memcpy(v129, v159, 0x11BuLL);
        Calendar.preserveSmallerUnits(_:compsToMatch:compsToModify:)(v120, v129, v141);
        if (v89 != 1)
        {
          v102[0] = v30;
          *&v102[1] = v65;
          *v100 = v45;
          memcpy(v129, v141, 0x11BuLL);
          LOBYTE(v98[0]) = 0;
          LOBYTE(v127) = v89;
          v123 = v85;
          outlined init with copy of DateComponents(v129, __src);
          Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v100, v141, v98, &v127, &v123, v101);
          memcpy(v120, v141, 0x11BuLL);
          outlined destroy of DateComponents(v120);
          outlined destroy of DateComponents(v157);
          memcpy(__src, v141, sizeof(__src));
          result = outlined destroy of DateComponents(__src);
          v71 = v101[0];
          v72 = LOBYTE(v101[1]);
          goto LABEL_115;
        }

        *&v98[0] = 4;
        v66 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v46)
        {
          v66 = v46;
        }

        if (*&static Date.validCalendarRange >= v66)
        {
          v66 = *&static Date.validCalendarRange;
        }

        *__src = v66;
        v92(v129, v98, __src, v94, v65);
        outlined destroy of DateComponents(v129);
        v67 = *&v129[4];
        if (BYTE8(v129[4]))
        {
          v67 = 0;
        }

        v68 = v67 == 0x7FFFFFFFFFFFFFFFLL;
        if (v67 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = 0;
        }

        *&v141[4] = v67;
        v69 = v68;
        BYTE8(v141[4]) = v69;
        *v101 = v30;
        v101[1] = v65;
        v127 = v46;
        memcpy(__src, v141, sizeof(__src));
        v123 = 0;
        v122 = 1;
        v95 = v85;
        outlined init with copy of DateComponents(__src, v120);
        Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(&v127, v141, &v123, &v122, &v95, v100);
        memcpy(v102, v141, 0x11BuLL);
        outlined destroy of DateComponents(v102);
        outlined destroy of DateComponents(v157);
        memcpy(v120, v141, 0x11BuLL);
        v64 = v120;
        goto LABEL_113;
      }

      memcpy(v129, v141, 0x11BuLL);
      outlined destroy of DateComponents(v129);
      result = outlined destroy of DateComponents(v157);
      v70 = v46;
    }

    else
    {
      if (!v89)
      {
        LOBYTE(v102[0]) = 2;
        v73 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v46)
        {
          v73 = v46;
        }

        if (*&static Date.validCalendarRange >= v73)
        {
          v73 = *&static Date.validCalendarRange;
        }

        *v120 = v73;
        v83(__src, v102, v120, v94, *&v160);
        outlined destroy of DateComponents(v157);
        memcpy(v129, v141, 0x11BuLL);
        result = outlined destroy of DateComponents(v129);
        if (__src[16])
        {
          v70 = *&v84;
        }

        else
        {
          v70 = *&__src[8] + *__src;
        }

        goto LABEL_125;
      }

      *__src = v30;
      v62 = *&v160;
      *&__src[8] = v160;
      *&v120[0] = v20;
      memcpy(v129, v159, 0x11BuLL);
      Calendar.preserveSmallerUnits(_:compsToMatch:compsToModify:)(v120, v129, v141);
      if (v89 == 1)
      {
        BYTE9(v141[17]) = 0;
        *&v141[5] = 1;
        BYTE8(v141[5]) = 0;
        __src[0] = 3;
        v63 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v46)
        {
          v63 = v46;
        }

        if (*&static Date.validCalendarRange >= v63)
        {
          v63 = *&static Date.validCalendarRange;
        }

        *v129 = v63;
        v83(v102, __src, v129, v94, v62);
        if ((LOBYTE(v102[2]) & 1) == 0)
        {
          *v101 = v30;
          v101[1] = v62;
          *v98 = v102[1] + v102[0];
          memcpy(v129, v141, 0x11BuLL);
          LOBYTE(v127) = 0;
          v123 = 1;
          v122 = v85;
          outlined init with copy of DateComponents(v129, __src);
          Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v98, v141, &v127, &v123, &v122, v100);
          memcpy(v120, v141, 0x11BuLL);
          outlined destroy of DateComponents(v120);
          outlined destroy of DateComponents(v157);
          memcpy(__src, v141, sizeof(__src));
          v64 = __src;
LABEL_113:
          result = outlined destroy of DateComponents(v64);
          v71 = *&v100[0];
LABEL_114:
          v72 = BYTE8(v100[0]);
LABEL_115:
          v70 = *&v84;
          if (!v72)
          {
            v70 = *&v71;
          }

          goto LABEL_125;
        }
      }

      else
      {
        LOBYTE(v120[0]) = 2;
        v74 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v46)
        {
          v74 = v46;
        }

        if (*&static Date.validCalendarRange >= v74)
        {
          v74 = *&static Date.validCalendarRange;
        }

        *v129 = v74;
        v83(__src, v120, v129, v94, v62);
        if ((__src[16] & 1) == 0)
        {
          v75 = *&__src[8] + *__src + -1.0;
          *__src = 12;
          v76 = *(&static Date.validCalendarRange + 1);
          if (*(&static Date.validCalendarRange + 1) >= v75)
          {
            v76 = v75;
          }

          if (*&static Date.validCalendarRange >= v76)
          {
            v76 = *&static Date.validCalendarRange;
          }

          *v120 = v76;
          v92(v129, __src, v120, v94, v62);
          v77 = *&v129[4];
          if (*&v129[4] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v78 = 0;
          }

          else
          {
            v78 = *&v129[4];
          }

          if (*&v129[4] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v79 = 1;
          }

          else
          {
            v79 = BYTE8(v129[4]);
          }

          if (!BYTE8(v129[4]))
          {
            v77 = v78;
          }

          *&v141[4] = v77;
          BYTE8(v141[4]) = v79;
          v80 = *&v129[5];
          if (*&v129[5] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v81 = 0;
          }

          else
          {
            v81 = *&v129[5];
          }

          if (*&v129[5] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v82 = 1;
          }

          else
          {
            v82 = BYTE8(v129[5]);
          }

          if (!BYTE8(v129[5]))
          {
            v80 = v81;
          }

          *&v141[5] = v80;
          BYTE8(v141[5]) = v82;
          BYTE9(v141[17]) = 1;
          *v101 = v30;
          v101[1] = v62;
          *v98 = v75;
          memcpy(__src, v141, sizeof(__src));
          LOBYTE(v127) = 1;
          v123 = v89;
          v122 = v85;
          outlined init with copy of DateComponents(__src, v120);
          Calendar._matchingDate(after:matching:direction:matchingPolicy:repeatedTimePolicy:)(v98, v141, &v127, &v123, &v122, v100);
          memcpy(v102, v141, 0x11BuLL);
          outlined destroy of DateComponents(v102);
          outlined destroy of DateComponents(v129);
          outlined destroy of DateComponents(v157);
          memcpy(v120, v141, 0x11BuLL);
          result = outlined destroy of DateComponents(v120);
          v71 = *&v100[0];
          goto LABEL_114;
        }
      }

      memcpy(v129, v141, 0x11BuLL);
      outlined destroy of DateComponents(v129);
      result = outlined destroy of DateComponents(v157);
      v70 = *&v84;
    }

LABEL_125:
    *a10 = 1;
    v44 = v93;
    *v93 = v70;
    goto LABEL_32;
  }

  memcpy(v120, v141, 0x11BuLL);
  outlined destroy of DateComponents(v120);
  result = outlined destroy of DateComponents(v157);
  v49 = v93;
  *v93 = v48;
LABEL_76:
  *(v49 + 8) = 1;
  return result;
}

uint64_t Calendar.dateIfEraHasYear(era:year:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[1] = 0;
  __dst[0] = 0;
  DateComponents.timeZone.setter(__dst);
  v116 = a1;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  __src[4] = v8;
  LOBYTE(__src[5]) = a1 == 0x7FFFFFFFFFFFFFFFLL;
  v112 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  __src[6] = v9;
  LOBYTE(__src[7]) = a2 == 0x7FFFFFFFFFFFFFFFLL;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  ObjectType = swift_getObjectType();
  memcpy(v163, __src, 0x11BuLL);
  (*(v7 + 176))(&v166, v163, ObjectType, v7);
  result = outlined destroy of DateComponents(__dst);
  v12 = v166;
  if (v167)
  {
    *a3 = v166;
    *(a3 + 8) = 1;
    return result;
  }

  v105 = a3;
  v162[0] = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v12)
  {
    v13 = v12;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v13 = *&static Date.validCalendarRange;
  }

  *v127 = v13;
  v115 = ObjectType;
  v114 = *(v7 + 192);
  v114(v163, v162, v127, ObjectType, v7);
  v15 = v163[0];
  v14 = v163[1];
  v98 = *&v163[2];
  v16 = BYTE8(v163[2]);
  v17 = *&v163[3];
  v18 = BYTE8(v163[3]);
  v19 = *&v163[4];
  v20 = *&v163[5];
  v21 = BYTE8(v163[5]);
  v22 = *&v163[6];
  v23 = BYTE8(v163[9]);
  v24 = *&v163[10];
  v25 = BYTE8(v163[10]);
  v26 = *&v163[11];
  v27 = BYTE8(v163[11]);
  v28 = *&v163[12];
  v104 = BYTE8(v163[12]);
  v103 = *&v163[13];
  v29 = BYTE8(v163[13]);
  v30 = *&v163[14];
  v102 = BYTE8(v163[14]);
  v101 = *&v163[15];
  v100 = BYTE8(v163[15]);
  v99 = BYTE8(v163[16]);
  v31 = *&v163[16];
  v97 = *&v163[17];
  v96 = BYTE8(v163[17]);
  v95 = BYTE9(v163[17]);
  v94 = BYTE10(v163[17]);
  v122 = BYTE8(v163[4]);
  v111 = BYTE8(v163[6]);
  v110 = *&v163[7];
  v109 = BYTE8(v163[7]);
  v108 = *&v163[8];
  v107 = BYTE8(v163[8]);
  v106 = *&v163[9];
  if (v112 == 1)
  {
    v93 = v163[1];
    BYTE8(v163[2]) = 1;
    *&v163[3] = 0;
    BYTE8(v163[3]) = 1;
    *&v163[4] = 0;
    BYTE8(v163[4]) = 1;
    *&v163[5] = 0;
    BYTE8(v163[5]) = 1;
    *&v163[6] = 0;
    BYTE8(v163[6]) = 1;
    *&v163[7] = 0;
    BYTE8(v163[7]) = 1;
    *&v163[8] = 0;
    BYTE8(v163[8]) = 1;
    *&v163[9] = 0;
    BYTE8(v163[9]) = 1;
    *&v163[10] = 0;
    BYTE8(v163[10]) = 1;
    *&v163[11] = 0;
    BYTE8(v163[11]) = 1;
    *&v163[12] = 0;
    BYTE8(v163[12]) = 1;
    *&v163[13] = 0;
    BYTE8(v163[13]) = 1;
    *&v163[14] = 0;
    BYTE8(v163[14]) = 1;
    *&v163[15] = 0;
    BYTE8(v163[15]) = 1;
    BYTE8(v163[16]) = 1;
    *&v163[16] = 0;
    *&v163[17] = 0;
    BYTE8(v163[17]) = 1;
    *(&v163[17] + 9) = 514;
    memset(v163, 0, 40);
    v127[0] = 0uLL;
    v121 = v18;
    v117 = v19;
    v118 = v31;
    v92 = v15;
    v90 = v22;
    v91 = v17;
    v120 = v20;
    v119 = v21;
    v89 = v23;
    v88 = v24;
    v87 = v25;
    DateComponents.timeZone.setter(v127);
    *&v163[2] = 0;
    BYTE8(v163[2]) = 1;
    *&v163[3] = 0;
    BYTE8(v163[3]) = 1;
    *&v163[4] = 0;
    BYTE8(v163[4]) = 1;
    *&v163[5] = 1;
    BYTE8(v163[5]) = 0;
    *&v163[7] = 0;
    BYTE8(v163[7]) = 1;
    *&v163[8] = 0;
    BYTE8(v163[8]) = 1;
    *&v163[9] = 0;
    BYTE8(v163[9]) = 1;
    *&v163[10] = 0;
    BYTE8(v163[10]) = 1;
    *&v163[11] = 0;
    BYTE8(v163[11]) = 1;
    *&v163[12] = 0;
    BYTE8(v163[12]) = 1;
    *&v163[13] = 0;
    BYTE8(v163[13]) = 1;
    *&v163[15] = 0;
    BYTE8(v163[15]) = 1;
    BYTE8(v163[16]) = 1;
    *&v163[16] = 0;
    *&v163[17] = 0;
    BYTE8(v163[17]) = 1;
    *&v163[6] = 0;
    BYTE8(v163[6]) = 1;
    memcpy(v162, v163, 0x11BuLL);
    v32 = v28;
    v33 = v27;
    v34 = v26;
    v35 = v87;
    v36 = v88;
    v37 = v89;
    v38 = v106;
    v39 = v107;
    v40 = v108;
    v41 = v109;
    v42 = v110;
    v43 = v111;
    v45 = v90;
    v44 = v91;
    v47 = v92;
    v46 = v93;
    v113 = v7;
    v48 = v104;
    v49 = v29;
    v50 = v103;
    v51 = v102;
    v52 = v101;
    v54 = v99;
    v53 = v100;
    v55 = v97;
    v56 = v98;
    v58 = v95;
    v57 = v96;
    for (i = v94; ; i = BYTE10(v126[17]))
    {
      v130 = v44;
      v132 = v117;
      v129 = v16 & 1;
      v127[0] = v47;
      v127[1] = v46;
      v128 = v56;
      v131 = v121 & 1;
      v133 = v122 & 1;
      v134 = v120;
      v135 = v119 & 1;
      v136 = v45;
      v137 = v43 & 1;
      v138 = v42;
      v139 = v41 & 1;
      v140 = v40;
      v141 = v39 & 1;
      v142 = v38;
      v143 = v37 & 1;
      v144 = v36;
      v145 = v35 & 1;
      v146 = v34;
      v147 = v33 & 1;
      v148 = v32;
      v149 = v48 & 1;
      v150 = v50;
      v151 = v49 & 1;
      v152 = v30;
      v153 = v51 & 1;
      v154 = v52;
      v155 = v53 & 1;
      v157 = v54 & 1;
      v156 = v118;
      v158 = v55;
      v159 = v57 & 1;
      v160 = v58;
      v161 = i;
      if ((v16 & 1) != 0 || v56 >= v116)
      {
        break;
      }

      memcpy(v126, v162, 0x11BuLL);
      v60 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v12)
      {
        v60 = v12;
      }

      if (*&static Date.validCalendarRange >= v60)
      {
        v60 = *&static Date.validCalendarRange;
      }

      v125 = v60;
      (*(v113 + 200))(&v123, v126, &v125, 0, v115, v113);
      v61 = *&v123;
      if (v124)
      {
        outlined destroy of DateComponents(v127);
        result = outlined destroy of DateComponents(v162);
        v86 = v105;
        *v105 = v61;
        goto LABEL_43;
      }

      v12 = *&v123;
      v123 = 1;
      v62 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v61)
      {
        v62 = v61;
      }

      if (*&static Date.validCalendarRange >= v62)
      {
        v62 = *&static Date.validCalendarRange;
      }

      v125 = v62;
      v114(v126, &v123, &v125, v115, v113);
      outlined destroy of DateComponents(v127);
      v47 = v126[0];
      v46 = v126[1];
      v56 = *&v126[2];
      LOBYTE(v16) = BYTE8(v126[2]);
      v44 = *&v126[3];
      v121 = BYTE8(v126[3]);
      v117 = *&v126[4];
      v122 = BYTE8(v126[4]);
      v120 = *&v126[5];
      v119 = BYTE8(v126[5]);
      v45 = *&v126[6];
      v43 = BYTE8(v126[6]);
      v42 = *&v126[7];
      v41 = BYTE8(v126[7]);
      v40 = *&v126[8];
      v39 = BYTE8(v126[8]);
      v38 = *&v126[9];
      v37 = BYTE8(v126[9]);
      v36 = *&v126[10];
      v35 = BYTE8(v126[10]);
      v34 = *&v126[11];
      v33 = BYTE8(v126[11]);
      v32 = *&v126[12];
      v48 = BYTE8(v126[12]);
      v50 = *&v126[13];
      v49 = BYTE8(v126[13]);
      v30 = *&v126[14];
      v51 = BYTE8(v126[14]);
      v52 = *&v126[15];
      v53 = BYTE8(v126[15]);
      v54 = BYTE8(v126[16]);
      v118 = *&v126[16];
      v55 = *&v126[17];
      v57 = BYTE8(v126[17]);
      v58 = BYTE9(v126[17]);
    }

    v123 = 3;
    v83 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v12)
    {
      v83 = v12;
    }

    if (*&static Date.validCalendarRange >= v83)
    {
      v83 = *&static Date.validCalendarRange;
    }

    v125 = v83;
    v114(v126, &v123, &v125, v115, v113);
    outlined destroy of DateComponents(v162);
    outlined destroy of DateComponents(v127);
    v15 = v126[0];
    v14 = v126[1];
    v77 = *&v126[2];
    v16 = BYTE8(v126[2]);
    v17 = *&v126[3];
    v18 = BYTE8(v126[3]);
    v19 = *&v126[4];
    v122 = BYTE8(v126[4]);
    v78 = *&v126[5];
    v81 = BYTE8(v126[5]);
    v75 = *&v126[6];
    v111 = BYTE8(v126[6]);
    v110 = *&v126[7];
    v109 = BYTE8(v126[7]);
    v108 = *&v126[8];
    v107 = BYTE8(v126[8]);
    v106 = *&v126[9];
    v64 = BYTE8(v126[9]);
    v24 = *&v126[10];
    v74 = BYTE8(v126[10]);
    v26 = *&v126[11];
    v71 = BYTE8(v126[11]);
    v68 = *&v126[12];
    v63 = BYTE8(v126[12]);
    v65 = *&v126[13];
    v66 = BYTE8(v126[13]);
    v67 = *&v126[14];
    v69 = BYTE8(v126[14]);
    v70 = *&v126[15];
    v72 = BYTE8(v126[15]);
    v73 = BYTE8(v126[16]);
    v79 = BYTE8(v126[17]);
    v31 = *&v126[16];
    v76 = *&v126[17];
    v80 = BYTE9(v126[17]);
    v82 = BYTE10(v126[17]);
  }

  else
  {
    v63 = BYTE8(v163[12]);
    v64 = BYTE8(v163[9]);
    v65 = *&v163[13];
    v66 = BYTE8(v163[13]);
    v67 = *&v163[14];
    v68 = *&v163[12];
    v69 = BYTE8(v163[14]);
    v70 = *&v163[15];
    v71 = BYTE8(v163[11]);
    v73 = BYTE8(v163[16]);
    v72 = BYTE8(v163[15]);
    v74 = BYTE8(v163[10]);
    v75 = *&v163[6];
    v76 = *&v163[17];
    v77 = *&v163[2];
    v78 = *&v163[5];
    v80 = BYTE9(v163[17]);
    v79 = BYTE8(v163[17]);
    v81 = BYTE8(v163[5]);
    v82 = BYTE10(v163[17]);
  }

  *&v163[4] = v19;
  v163[0] = v15;
  v163[1] = v14;
  *&v163[2] = v77;
  BYTE8(v163[2]) = v16;
  v84 = v17;
  *&v163[3] = v17;
  v85 = v18;
  BYTE8(v163[3]) = v18;
  BYTE8(v163[4]) = v122;
  *&v163[5] = v78;
  BYTE8(v163[5]) = v81;
  *&v163[6] = v75;
  BYTE8(v163[6]) = v111;
  *&v163[7] = v110;
  BYTE8(v163[7]) = v109;
  *&v163[8] = v108;
  BYTE8(v163[8]) = v107;
  *&v163[9] = v106;
  BYTE8(v163[9]) = v64;
  *&v163[10] = v24;
  BYTE8(v163[10]) = v74;
  *&v163[11] = v26;
  BYTE8(v163[11]) = v71;
  *&v163[12] = v68;
  BYTE8(v163[12]) = v63;
  *&v163[13] = v65;
  BYTE8(v163[13]) = v66;
  *&v163[14] = v67;
  BYTE8(v163[14]) = v69;
  *&v163[15] = v70;
  BYTE8(v163[15]) = v72;
  BYTE8(v163[16]) = v73;
  *&v163[16] = v31;
  *&v163[17] = v76;
  BYTE8(v163[17]) = v79;
  BYTE9(v163[17]) = v80;
  BYTE10(v163[17]) = v82;
  result = outlined destroy of DateComponents(v163);
  if (!v16)
  {
    v86 = v105;
    if (v77 != v116)
    {
      goto LABEL_41;
    }

LABEL_39:
    if (v85)
    {
      if (v112 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_41;
      }
    }

    else if (v84 != v112)
    {
      goto LABEL_41;
    }

    *v86 = v12;
    *(v86 + 8) = 0;
    return result;
  }

  v86 = v105;
  if (v116 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_39;
  }

LABEL_41:
  *v86 = 0.0;
LABEL_43:
  *(v86 + 8) = 1;
  return result;
}

void *Calendar.dateIfEraHasYearForWeekOfYear(era:yearForWeekOfYear:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 8);
  LOBYTE(__src[5]) = 1;
  __src[6] = 0;
  LOBYTE(__src[7]) = 1;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[28] = 0;
  LOBYTE(__src[29]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  *(&__src[35] + 1) = 514;
  memset(__src, 0, 40);
  __dst[1] = 0;
  __dst[0] = 0;
  DateComponents.timeZone.setter(__dst);
  v122 = a1;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = a1;
  }

  __src[4] = v8;
  LOBYTE(__src[5]) = a1 == 0x7FFFFFFFFFFFFFFFLL;
  v118 = a2;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  __src[6] = v9;
  LOBYTE(__src[7]) = a2 == 0x7FFFFFFFFFFFFFFFLL;
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  __src[14] = 0;
  LOBYTE(__src[15]) = 1;
  __src[16] = 0;
  LOBYTE(__src[17]) = 1;
  __src[18] = 0;
  LOBYTE(__src[19]) = 1;
  __src[20] = 0;
  LOBYTE(__src[21]) = 1;
  __src[22] = 0;
  LOBYTE(__src[23]) = 1;
  __src[24] = 0;
  LOBYTE(__src[25]) = 1;
  __src[26] = 0;
  LOBYTE(__src[27]) = 1;
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  ObjectType = swift_getObjectType();
  memcpy(v170, __src, 0x11BuLL);
  (*(v7 + 176))(&v173, v170, ObjectType, v7);
  result = outlined destroy of DateComponents(__dst);
  v12 = v173;
  if (v174)
  {
    goto LABEL_42;
  }

  v114 = a3;
  v169[0] = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v13 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v12)
  {
    v13 = v12;
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v13 = *&static Date.validCalendarRange;
  }

  *v134 = v13;
  v120 = ObjectType;
  v119 = *(v7 + 192);
  v119(v170, v169, v134, ObjectType, v7);
  v15 = v170[0];
  v14 = v170[1];
  v117 = *&v170[2];
  v106 = BYTE8(v170[2]);
  v16 = *&v170[3];
  v17 = BYTE8(v170[3]);
  v105 = *&v170[4];
  v18 = *&v170[6];
  v19 = BYTE8(v170[6]);
  v20 = BYTE8(v170[7]);
  v21 = *&v170[8];
  v22 = BYTE8(v170[8]);
  v23 = *&v170[9];
  v24 = BYTE8(v170[9]);
  v25 = *&v170[10];
  v26 = BYTE8(v170[10]);
  v27 = *&v170[11];
  v28 = BYTE8(v170[11]);
  v29 = *&v170[12];
  v30 = BYTE8(v170[12]);
  v113 = BYTE8(v170[13]);
  v112 = *&v170[14];
  v111 = BYTE8(v170[14]);
  v110 = *&v170[15];
  v109 = BYTE8(v170[15]);
  v108 = BYTE8(v170[16]);
  v107 = *&v170[16];
  v104 = *&v170[17];
  v103 = BYTE8(v170[17]);
  v102 = BYTE9(v170[17]);
  v101 = BYTE10(v170[17]);
  v121 = v7;
  v129 = BYTE8(v170[4]);
  v128 = *&v170[5];
  v127 = BYTE8(v170[5]);
  v115 = *&v170[13];
  v116 = *&v170[7];
  if (v118 == 1)
  {
    v98 = v170[1];
    BYTE8(v170[2]) = 1;
    *&v170[3] = 0;
    BYTE8(v170[3]) = 1;
    *&v170[4] = 0;
    BYTE8(v170[4]) = 1;
    *&v170[5] = 0;
    BYTE8(v170[5]) = 1;
    *&v170[6] = 0;
    BYTE8(v170[6]) = 1;
    *&v170[7] = 0;
    BYTE8(v170[7]) = 1;
    *&v170[8] = 0;
    BYTE8(v170[8]) = 1;
    *&v170[9] = 0;
    BYTE8(v170[9]) = 1;
    *&v170[10] = 0;
    BYTE8(v170[10]) = 1;
    *&v170[11] = 0;
    BYTE8(v170[11]) = 1;
    *&v170[12] = 0;
    BYTE8(v170[12]) = 1;
    *&v170[13] = 0;
    BYTE8(v170[13]) = 1;
    *&v170[14] = 0;
    BYTE8(v170[14]) = 1;
    *&v170[15] = 0;
    BYTE8(v170[15]) = 1;
    BYTE8(v170[16]) = 1;
    *&v170[16] = 0;
    *&v170[17] = 0;
    BYTE8(v170[17]) = 1;
    v99 = v16;
    *(&v170[17] + 9) = 514;
    memset(v170, 0, 40);
    v134[0] = 0uLL;
    v93 = v22;
    v123 = v30;
    v125 = v17;
    v97 = v15;
    v124 = v18;
    v95 = v20;
    v96 = v19;
    v94 = v21;
    v92 = v23;
    v91 = v24;
    v90 = v26;
    v89 = v27;
    v88 = v28;
    v87 = v29;
    DateComponents.timeZone.setter(v134);
    *&v170[2] = 0;
    BYTE8(v170[2]) = 1;
    *&v170[3] = 0;
    BYTE8(v170[3]) = 1;
    *&v170[4] = 0;
    BYTE8(v170[4]) = 1;
    *&v170[5] = 1;
    BYTE8(v170[5]) = 0;
    *&v170[7] = 0;
    BYTE8(v170[7]) = 1;
    *&v170[8] = 0;
    BYTE8(v170[8]) = 1;
    *&v170[9] = 0;
    BYTE8(v170[9]) = 1;
    *&v170[10] = 0;
    BYTE8(v170[10]) = 1;
    *&v170[11] = 0;
    BYTE8(v170[11]) = 1;
    *&v170[12] = 0;
    BYTE8(v170[12]) = 1;
    *&v170[13] = 0;
    BYTE8(v170[13]) = 1;
    *&v170[15] = 0;
    BYTE8(v170[15]) = 1;
    BYTE8(v170[16]) = 1;
    *&v170[16] = 0;
    *&v170[17] = 0;
    BYTE8(v170[17]) = 1;
    *&v170[6] = 0;
    BYTE8(v170[6]) = 1;
    memcpy(v169, v170, 0x11BuLL);
    v32 = v115;
    v31 = v116;
    v33 = v87;
    v34 = v88;
    v35 = v89;
    v36 = v90;
    v37 = v25;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    v41 = v94;
    v43 = v95;
    v42 = v96;
    v44 = v99;
    v46 = v97;
    v45 = v98;
    v47 = v113;
    v48 = v112;
    v49 = v111;
    v50 = v110;
    v51 = v108;
    v52 = v109;
    v53 = v107;
    v54 = v117;
    v55 = v106;
    v57 = v104;
    v56 = v105;
    v59 = v102;
    v58 = v103;
    for (i = v101; ; i = BYTE10(v133[17]))
    {
      v137 = v44;
      v139 = v56;
      v136 = v55 & 1;
      v134[0] = v46;
      v134[1] = v45;
      v135 = v54;
      v138 = v125 & 1;
      v140 = v129 & 1;
      v141 = v128;
      v142 = v127 & 1;
      v143 = v124;
      v144 = v42 & 1;
      v145 = v31;
      v146 = v43 & 1;
      v147 = v41;
      v148 = v40 & 1;
      v149 = v39;
      v150 = v38 & 1;
      v151 = v37;
      v152 = v36 & 1;
      v153 = v35;
      v154 = v34 & 1;
      v155 = v33;
      v156 = v123 & 1;
      v157 = v32;
      v158 = v47 & 1;
      v159 = v48;
      v160 = v49 & 1;
      v161 = v50;
      v162 = v52 & 1;
      v164 = v51 & 1;
      v163 = v53;
      v165 = v57;
      v166 = v58 & 1;
      v167 = v59;
      v168 = i;
      if ((v55 & 1) != 0 || v54 >= v122)
      {
        break;
      }

      memcpy(v133, v169, 0x11BuLL);
      v61 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v12)
      {
        v61 = v12;
      }

      if (*&static Date.validCalendarRange >= v61)
      {
        v61 = *&static Date.validCalendarRange;
      }

      v132 = v61;
      (*(v121 + 200))(&v130, v133, &v132, 0, v120, v121);
      v12 = *&v130;
      if (v131)
      {
        outlined destroy of DateComponents(v134);
        result = outlined destroy of DateComponents(v169);
        a3 = v114;
        goto LABEL_42;
      }

      v130 = 1;
      v62 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v12)
      {
        v62 = v12;
      }

      if (*&static Date.validCalendarRange >= v62)
      {
        v62 = *&static Date.validCalendarRange;
      }

      v132 = v62;
      v119(v133, &v130, &v132, v120, v121);
      outlined destroy of DateComponents(v134);
      v46 = v133[0];
      v45 = v133[1];
      v54 = *&v133[2];
      v55 = BYTE8(v133[2]);
      v44 = *&v133[3];
      v125 = BYTE8(v133[3]);
      v56 = *&v133[4];
      v129 = BYTE8(v133[4]);
      v128 = *&v133[5];
      v127 = BYTE8(v133[5]);
      v124 = *&v133[6];
      v42 = BYTE8(v133[6]);
      v31 = *&v133[7];
      v43 = BYTE8(v133[7]);
      v41 = *&v133[8];
      v40 = BYTE8(v133[8]);
      v39 = *&v133[9];
      v38 = BYTE8(v133[9]);
      v37 = *&v133[10];
      v36 = BYTE8(v133[10]);
      v35 = *&v133[11];
      v34 = BYTE8(v133[11]);
      v33 = *&v133[12];
      v123 = BYTE8(v133[12]);
      v32 = *&v133[13];
      v47 = BYTE8(v133[13]);
      v48 = *&v133[14];
      v49 = BYTE8(v133[14]);
      v50 = *&v133[15];
      v52 = BYTE8(v133[15]);
      v51 = BYTE8(v133[16]);
      v53 = *&v133[16];
      v57 = *&v133[17];
      v58 = BYTE8(v133[17]);
      v59 = BYTE9(v133[17]);
    }

    v130 = 3;
    v82 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v12)
    {
      v82 = v12;
    }

    if (*&static Date.validCalendarRange >= v82)
    {
      v82 = *&static Date.validCalendarRange;
    }

    v132 = v82;
    v119(v133, &v130, &v132, v120, v121);
    outlined destroy of DateComponents(v169);
    outlined destroy of DateComponents(v134);
    v15 = v133[0];
    v14 = v133[1];
    v117 = *&v133[2];
    v70 = BYTE8(v133[2]);
    v16 = *&v133[3];
    v17 = BYTE8(v133[3]);
    v71 = *&v133[4];
    v129 = BYTE8(v133[4]);
    v128 = *&v133[5];
    v127 = BYTE8(v133[5]);
    v76 = *&v133[6];
    v80 = BYTE8(v133[6]);
    v116 = *&v133[7];
    v20 = BYTE8(v133[7]);
    v21 = *&v133[8];
    v22 = BYTE8(v133[8]);
    v23 = *&v133[9];
    v73 = BYTE8(v133[9]);
    v74 = *&v133[10];
    v26 = BYTE8(v133[10]);
    v75 = *&v133[11];
    v79 = BYTE8(v133[11]);
    v29 = *&v133[12];
    v30 = BYTE8(v133[12]);
    v115 = *&v133[13];
    v63 = BYTE8(v133[13]);
    v64 = *&v133[14];
    v65 = BYTE8(v133[14]);
    v66 = *&v133[15];
    v68 = BYTE8(v133[15]);
    v67 = BYTE8(v133[16]);
    v77 = BYTE8(v133[17]);
    v69 = *&v133[16];
    v72 = *&v133[17];
    v78 = BYTE9(v133[17]);
    v81 = BYTE10(v133[17]);
  }

  else
  {
    v63 = BYTE8(v170[13]);
    v64 = *&v170[14];
    v65 = BYTE8(v170[14]);
    v66 = *&v170[15];
    v67 = BYTE8(v170[16]);
    v68 = BYTE8(v170[15]);
    v69 = *&v170[16];
    v70 = BYTE8(v170[2]);
    v72 = *&v170[17];
    v71 = *&v170[4];
    v73 = BYTE8(v170[9]);
    v74 = *&v170[10];
    v75 = *&v170[11];
    v76 = *&v170[6];
    v78 = BYTE9(v170[17]);
    v77 = BYTE8(v170[17]);
    v79 = BYTE8(v170[11]);
    v80 = BYTE8(v170[6]);
    v81 = BYTE10(v170[17]);
  }

  *&v170[4] = v71;
  v170[0] = v15;
  v170[1] = v14;
  *&v170[2] = v117;
  BYTE8(v170[2]) = v70;
  v100 = v16;
  *&v170[3] = v16;
  v126 = v17;
  BYTE8(v170[3]) = v17;
  BYTE8(v170[4]) = v129;
  *&v170[5] = v128;
  BYTE8(v170[5]) = v127;
  *&v170[6] = v76;
  BYTE8(v170[6]) = v80;
  *&v170[7] = v116;
  BYTE8(v170[7]) = v20;
  *&v170[8] = v21;
  BYTE8(v170[8]) = v22;
  *&v170[9] = v23;
  BYTE8(v170[9]) = v73;
  *&v170[10] = v74;
  BYTE8(v170[10]) = v26;
  *&v170[11] = v75;
  BYTE8(v170[11]) = v79;
  *&v170[12] = v29;
  BYTE8(v170[12]) = v30;
  *&v170[13] = v115;
  BYTE8(v170[13]) = v63;
  *&v170[14] = v64;
  BYTE8(v170[14]) = v65;
  *&v170[15] = v66;
  BYTE8(v170[15]) = v68;
  BYTE8(v170[16]) = v67;
  *&v170[16] = v69;
  *&v170[17] = v72;
  BYTE8(v170[17]) = v77;
  BYTE9(v170[17]) = v78;
  BYTE10(v170[17]) = v81;
  result = outlined destroy of DateComponents(v170);
  if (v70)
  {
    v83 = 0x7FFFFFFFFFFFFFFFLL;
    v84 = v122;
  }

  else
  {
    v83 = v122;
    v84 = v117;
  }

  a3 = v114;
  if (v84 != v83)
  {
LABEL_40:
    v12 = 0.0;
LABEL_42:
    *a3 = v12;
    *(a3 + 8) = 1;
    return result;
  }

  if (v126)
  {
    if (v118 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_40;
    }
  }

  else if (v100 != v118)
  {
    goto LABEL_40;
  }

  LOBYTE(v133[0]) = 12;
  v85 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v12)
  {
    v85 = v12;
  }

  if (*&static Date.validCalendarRange >= v85)
  {
    v85 = *&static Date.validCalendarRange;
  }

  *v134 = v85;
  result = (*(v121 + 160))(v169, v133, v134, v120);
  if (v169[2])
  {
    lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError();
    swift_allocError();
    *v86 = 12;
    *(v86 + 8) = v12;
    *(v86 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    *v114 = v169[0];
    *(v114 + 8) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CalendarEnumerationError and conformance CalendarEnumerationError()
{
  result = lazy protocol witness table cache variable for type CalendarEnumerationError and conformance CalendarEnumerationError;
  if (!lazy protocol witness table cache variable for type CalendarEnumerationError and conformance CalendarEnumerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalendarEnumerationError and conformance CalendarEnumerationError);
  }

  return result;
}

uint64_t outlined init with copy of (label: String?, value: Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg5label_yp5valuetMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Calendar.SearchStepResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar.SearchStepResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByAdding.Iterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t storeEnumTagSinglePayload for Calendar.DatesByAdding.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByMatching.Iterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 377))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar.DatesByMatching.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 377) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 377) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int _CalendarGregorian._algorithmA(smaller:larger:at:)(char *a1, char *a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  *&v5._time = *a3;
  v12 = *a2;
  time = v5._time;
  _CalendarGregorian.dateInterval(of:for:)(&v12, v5);
  if (v15)
  {
    return 0;
  }

  v7 = v13._time;
  v6 = v14;
  LOBYTE(time) = v3;
  v12 = v4;
  v13._time = v13._time + 0.1;
  v16 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v12, v13);
  if (v16.is_nil)
  {
    return 0;
  }

  value = v16.value;
  LOBYTE(time) = v3;
  v12 = v4;
  v13._time = v6 + v7 + -0.1;
  v17 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v12, v13);
  if (v17.is_nil)
  {
    return 0;
  }

  v10 = v17.value;
  result = value;
  if (v10 >= value)
  {
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else if (v10 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int _CalendarGregorian._algorithmB(smaller:larger:at:)(char *a1, char *a2, Swift::Double *a3)
{
  v3 = *a1;
  v4._time = *a3;
  v30 = *a2;
  time = v4._time;
  _CalendarGregorian.dateInterval(of:for:)(&v30, v4);
  if (v33)
  {
    goto LABEL_2;
  }

  v7 = v31._time;
  v6 = v32;
  v30 = 2;
  time = v31._time + 1.0;
  _CalendarGregorian.dateInterval(of:for:)(&v30, COERCE_FOUNDATION_DATE(v31._time + 1.0));
  if (v33)
  {
    v8 = 0;
LABEL_5:
    v5.value = v8;
    return v5.value;
  }

  v10 = v31._time;
  v9 = v32;
  LOBYTE(time) = v3;
  v30 = 2;
  v31._time = v31._time + 0.1;
  v34 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v30, v31);
  if (!v34.is_nil)
  {
    value = v34.value;
    LOBYTE(time) = v3;
    v30 = 2;
    v12 = v9 + v10;
    v31._time = v12 + -0.1;
    v5 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v30, COERCE_FOUNDATION_DATE(v12 + -0.1));
    if (!v5.is_nil)
    {
      v13 = v5.value;
      v5.value = value;
      if (v13 < value)
      {
        return v5.value;
      }

      *&v5.is_nil = v13 + 1;
      if (__OFADD__(v13, 1))
      {
LABEL_39:
        __break(1u);
      }

      else if (*&v5.is_nil >= value)
      {
        v15 = v6 + v7 + -1.0;
        v16._time = v12 + 1.0;
        if (v12 + 1.0 >= v15)
        {
          return v5.value;
        }

        v17 = -13;
        v8 = value;
        while (1)
        {
          v18 = *&v5.is_nil;
          v30 = 2;
          time = v16._time;
          _CalendarGregorian.dateInterval(of:for:)(&v30, v16);
          if (v33)
          {
            goto LABEL_5;
          }

          v20 = v31._time;
          v19 = v32;
          LOBYTE(time) = v3;
          v30 = 2;
          v31._time = v31._time + 0.1;
          v35 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v30, v31);
          if (v35.is_nil || (v21 = v35.value, LOBYTE(time) = v3, v30 = 2, v22 = v19 + v20, v31._time = v22 + -0.1, v5 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v30, COERCE_FOUNDATION_DATE(v22 + -0.1)), v5.is_nil))
          {
            v5.value = v8;
            return v5.value;
          }

          if (v8 == v18)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v23 = v5.value;
          if (v21 >= v8)
          {
            v5.value = v8;
          }

          else
          {
            v5.value = v21;
          }

          v24 = v18 - v8;
          if (__OFSUB__(v18, v8))
          {
            goto LABEL_35;
          }

          v25 = __OFADD__(v5.value, v24);
          v26 = v5.value + v24;
          if (v25)
          {
            goto LABEL_36;
          }

          *&v5.is_nil = v26 + v23;
          if (__OFADD__(v26, v23))
          {
            goto LABEL_37;
          }

          if (*&v5.is_nil < v5.value)
          {
            goto LABEL_38;
          }

          v16._time = v22 + 1.0;
          v27 = v22 + 1.0 >= v15 || v17++ == 0;
          v8 = v5.value;
          if (v27)
          {
            return v5.value;
          }
        }
      }

      __break(1u);
      return v5.value;
    }
  }

LABEL_2:
  v5.value = 0;
  return v5.value;
}

Swift::Int _CalendarGregorian._algorithmC(smaller:larger:at:)(char *a1, char *a2, void *a3)
{
  v3 = *a1;
  *&v4._time = *a3;
  v11 = *a2;
  time = v4._time;
  _CalendarGregorian.dateInterval(of:for:)(&v11, v4);
  if (v14)
  {
    return 0;
  }

  v7 = v12._time;
  v6 = v13;
  LOBYTE(time) = v3;
  v11 = 1;
  v12._time = v12._time + 0.1;
  v15 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v11, v12);
  if (v15.is_nil)
  {
    return 0;
  }

  value = v15.value;
  LOBYTE(time) = v3;
  v11 = 1;
  v12._time = v6 + v7 + -0.1;
  v16 = _CalendarGregorian.ordinality(of:in:for:)(&time, &v11, v12);
  if (v16.is_nil)
  {
    return 0;
  }

  v9 = v16.value;
  result = value;
  if (v9 >= value)
  {
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else if (v9 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

Swift::Int _CalendarGregorian._algorithmD(at:)(uint64_t *a1, double a2)
{
  v2 = *a1;
  v14 = 10;
  v13 = v2;
  v3 = _CalendarGregorian.dateInterval(of:for:)(&v14, *&a2);
  if (v17)
  {
    return 0;
  }

  v5 = v15;
  v4 = v16;
  v14 = 2;
  v13 = v2;
  _CalendarGregorian.dateInterval(of:for:)(&v14, v3);
  if (v17)
  {
    return 0;
  }

  v7 = v15;
  v6 = v16;
  v8 = v5 >= v15 ? v5 : v15;
  LOBYTE(v13) = 3;
  v14 = 2;
  v15 = v8 + 0.1;
  v18 = _CalendarGregorian.ordinality(of:in:for:)(&v13, &v14, COERCE_FOUNDATION_DATE(v8 + 0.1));
  if (v18.is_nil)
  {
    return 0;
  }

  value = v18.value;
  v10 = v4 + v5;
  if (v4 + v5 >= v6 + v7)
  {
    v10 = v6 + v7;
  }

  LOBYTE(v13) = 3;
  v14 = 2;
  v15 = v10 + -0.1;
  v19 = _CalendarGregorian.ordinality(of:in:for:)(&v13, &v14, COERCE_FOUNDATION_DATE(v10 + -0.1));
  if (v19.is_nil)
  {
    return 0;
  }

  v12 = v19.value;
  result = value;
  if (v12 >= value)
  {
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    else if (v12 + 1 >= value)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t actualMax #1 (inRange:) in _CalendarGregorian.minMaxRange(of:in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v7 = a2;
    v8 = result;
    if (a2 != result)
    {
      _CalendarGregorian.date(from:)(a4, __dst);
      if (__dst[1])
      {
        return 0;
      }

      else
      {
        v12 = __dst[0];
        if (*(a4 + 16))
        {
          v13 = *(a4 + 24);
          v14 = *(a4 + 16);
        }

        else
        {
          v14 = *(a3 + 112);
          v13 = *(a3 + 120);
          swift_unknownObjectRetain();
        }

        v15 = v8 + 1;
        v16 = __OFADD__(v8, 1);
        swift_unknownObjectRetain();
        if (!v16)
        {
          v6 = v8;
          while (1)
          {
            v30 = a5;
            v29 = v12;
            v28[0] = v14;
            v28[1] = v13;
            _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v30, &v29, 1, v28, v27, &v31, v17, v18);
            v24 = a6;
            v23 = v31;
            v22[0] = v14;
            v22[1] = v13;
            _CalendarGregorian.dateComponents(_:from:in:)(&v24, &v23, v22, __src);
            memcpy(__dst, __src, 0x11BuLL);
            switch(a5)
            {
              case 1:
                outlined destroy of DateComponents(__dst);
                if (__dst[7])
                {
                  goto LABEL_49;
                }

                v19 = __dst[6];
                goto LABEL_44;
              case 2:
                outlined destroy of DateComponents(__dst);
                if (__dst[9])
                {
                  goto LABEL_49;
                }

                v19 = __dst[8];
                goto LABEL_44;
              case 3:
                outlined destroy of DateComponents(__dst);
                if (__dst[11])
                {
                  goto LABEL_49;
                }

                v19 = __dst[10];
                goto LABEL_44;
              case 4:
                outlined destroy of DateComponents(__dst);
                if (__dst[15])
                {
                  goto LABEL_49;
                }

                v19 = __dst[14];
                goto LABEL_44;
              case 5:
                outlined destroy of DateComponents(__dst);
                if (__dst[17])
                {
                  goto LABEL_49;
                }

                v19 = __dst[16];
                goto LABEL_44;
              case 6:
                outlined destroy of DateComponents(__dst);
                if (__dst[19])
                {
                  goto LABEL_49;
                }

                v19 = __dst[18];
                goto LABEL_44;
              case 7:
                outlined destroy of DateComponents(__dst);
                if (__dst[23])
                {
                  goto LABEL_49;
                }

                v19 = __dst[22];
                goto LABEL_44;
              case 8:
                outlined destroy of DateComponents(__dst);
                if (__dst[25])
                {
                  goto LABEL_49;
                }

                v19 = __dst[24];
                goto LABEL_44;
              case 9:
                outlined destroy of DateComponents(__dst);
                if (__dst[27])
                {
                  goto LABEL_49;
                }

                v19 = __dst[26];
                goto LABEL_44;
              case 10:
                outlined destroy of DateComponents(__dst);
                if (__dst[31])
                {
                  goto LABEL_49;
                }

                v19 = __dst[30];
                goto LABEL_44;
              case 11:
                outlined destroy of DateComponents(__dst);
                if (__dst[33])
                {
                  goto LABEL_49;
                }

                v19 = __dst[32];
                goto LABEL_44;
              case 12:
                outlined destroy of DateComponents(__dst);
                if (__dst[35])
                {
                  goto LABEL_49;
                }

                v19 = __dst[34];
                goto LABEL_44;
              case 13:
                outlined destroy of DateComponents(__dst);
                if (__dst[21])
                {
                  goto LABEL_49;
                }

                v19 = __dst[20];
                goto LABEL_44;
              case 14:
              case 15:
              case 16:
              case 17:
                swift_unknownObjectRelease();
                outlined destroy of DateComponents(__dst);
                return v8;
              case 18:
                outlined destroy of DateComponents(__dst);
                if (__dst[13])
                {
                  goto LABEL_49;
                }

                v19 = __dst[12];
                goto LABEL_44;
              default:
                outlined destroy of DateComponents(__dst);
                if (__dst[5])
                {
                  goto LABEL_49;
                }

                v19 = __dst[4];
LABEL_44:
                if (v19 != v15)
                {
                  goto LABEL_49;
                }

                if (v15 == v7)
                {
                  swift_unknownObjectRelease();
                  return v7;
                }

                v6 = v15;
                if (__OFADD__(v15++, 1))
                {
                  goto LABEL_48;
                }

                break;
            }
          }
        }

LABEL_48:
        __break(1u);
LABEL_49:
        swift_unknownObjectRelease();
        return v6;
      }
    }

    return v7;
  }

  return result;
}

Foundation::Date_optional __swiftcall _CalendarGregorian.start(of:at:)(Foundation::Calendar::Component of, Foundation::Date at)
{
  v5 = v3;
  v6 = *of;
  v7 = *v2;
  if (v6 <= 5)
  {
    if (*of > 3u)
    {
      if (v6 == 4)
      {
        v9 = *(v4 + 120);
        ObjectType = swift_getObjectType();
        v29[0] = v7;
        v11 = *(v9 + 40);
        swift_unknownObjectRetain();
        v12 = v11(v29, ObjectType, v9);
        of = swift_unknownObjectRelease();
        at._time = floor((v7 + v12) / 3600.0) * 3600.0 - v12;
      }

      else
      {
        at._time = floor(v7 / 60.0) * 60.0;
      }

      goto LABEL_33;
    }

    if (v6 - 1 >= 3)
    {
      at._time = -6.3113904e10;
      if (v7 >= -6.3113904e10)
      {
        v8 = 0xC22D63C37F000000;
      }

      else
      {
        v8 = 0xC2903AC786FE0000;
      }

      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v6 > 0x12)
  {
LABEL_15:
    if (v6 - 7 >= 2)
    {
      at._time = floor(v7);
      goto LABEL_33;
    }

    LOBYTE(v6) = 3;
    goto LABEL_17;
  }

  if (((1 << v6) & 0x41E00) != 0)
  {
LABEL_17:
    LOBYTE(v28) = v6;
    v31 = *&v7;
    at._time = _CalendarGregorian._firstInstant(of:at:)(&v28, at)._time;
    if (*&v13._time)
    {
      v31 = *&v13._time;
      v14 = v13._time;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      if (!swift_dynamicCast())
      {

        of = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_37;
      }

      if (v30 < 0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static _CalendarGregorian.logger);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_31;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v19;
        *v18 = 136446466;
        v25 = Calendar.Component.debugDescription.getter();
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v28);

        *(v18 + 4) = v27;
        *(v18 + 12) = 2050;
        *(v18 + 14) = v7;
        v23 = "Not advancing in firstInstant(of:at:). unit: %{public}s, at: %{public}f";
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        __swift_project_value_buffer(v15, static _CalendarGregorian.logger);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_31;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v28 = v19;
        *v18 = 136446466;
        v20 = Calendar.Component.debugDescription.getter();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v28);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2050;
        *(v18 + 14) = v7;
        v23 = "Overflowing in firstInstant(of:at:). unit: %{public}s, at: %{public}f";
      }

      _os_log_impl(&dword_18075C000, v16, v17, v23, v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1865D2690](v19, -1, -1);
      MEMORY[0x1865D2690](v18, -1, -1);
LABEL_31:

      *v5 = 0;
      *(v5 + 8) = 1;

      goto LABEL_37;
    }

    v8 = *&v29[0];
LABEL_25:
    *v5 = v8;
LABEL_34:
    *(v5 + 8) = 0;
    goto LABEL_37;
  }

  if (((1 << v6) & 0x3C000) == 0)
  {
    if (v6 == 13)
    {
      at._time = floor(v7 * 1000000000.0) * 0.000000001;
LABEL_33:
      *v5 = at._time;
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  *v3 = 0;
  *(v3 + 8) = 1;
LABEL_37:
  result.value = at;
  result.is_nil = of;
  return result;
}

uint64_t _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(double *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = v5;
  a5.n128_u64[0] = *a2;
  __src[0] = 128;
  v59 = a5;
  *&v64[0] = a5.n128_u64[0];
  __dst[0] = *(v5 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(__src, v64, __dst, v67);
  swift_unknownObjectRelease();
  result = outlined destroy of DateComponents(v67);
  if (v69)
  {
    goto LABEL_77;
  }

  if (v68 == a3)
  {
    result = 0;
    v10 = v59.n128_f64[0];
LABEL_57:
    *a1 = v10;
    return result;
  }

  v55 = a1;
  v11 = 0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  v58 = v13;
  v57 = a3;
  v14 = v59;
  while (1)
  {
    v15 = *(v6 + 112);
    v16 = *(v6 + 120);
    *v13.i64 = *v14.i64 - trunc(*v14.i64);
    v13.i64[0] = vbslq_s8(v58, v13, v14).i64[0];
    v17 = *v13.i64 >= 0.0 ? *v13.i64 : *v13.i64 + 1.0;
    *&v63[0] = 112;
    v60 = *v14.i64;
    v61[0] = *v14.i64;
    v18 = *v13.i64 >= 0.0 ? *v14.i64 - *v13.i64 : *v14.i64 - *v13.i64 + -1.0;
    *&v64[0] = v15;
    *(&v64[0] + 1) = v16;
    swift_unknownObjectRetain_n();
    _CalendarGregorian.dateComponents(_:from:in:)(v63, v61, v64, __src);
    swift_unknownObjectRelease();
    result = memcpy(__dst, __src, 0x11BuLL);
    if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
    {
      break;
    }

    v19 = *&__dst[7];
    v20 = *&__dst[8];
    v21 = *&__dst[9];
    result = outlined destroy of DateComponents(__dst);
    v22 = 3600 * v19;
    if ((v19 * 3600) >> 64 != (3600 * v19) >> 63)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      break;
    }

    v23 = 60 * v20;
    if ((v20 * 60) >> 64 != (60 * v20) >> 63)
    {
      goto LABEL_59;
    }

    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_60;
    }

    v24 = __OFADD__(v25, v21);
    v26 = v25 + v21;
    if (v24)
    {
      goto LABEL_61;
    }

    v27 = v18 + 86400.0;
    *&v61[0] = 112;
    v70 = v18 + 86400.0;
    *v63 = *(v6 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v61, &v70, v63, v64);
    swift_unknownObjectRelease();
    result = memcpy(__src, v64, 0x11BuLL);
    if (__src[15] & 1) != 0 || (__src[17] & 1) != 0 || (__src[19])
    {
      goto LABEL_74;
    }

    v28 = __src[14];
    v29 = __src[16];
    v30 = __src[18];
    result = outlined destroy of DateComponents(__src);
    v31 = 3600 * v28;
    if ((v28 * 3600) >> 64 != (3600 * v28) >> 63)
    {
      goto LABEL_62;
    }

    v32 = 60 * v29;
    if ((v29 * 60) >> 64 != (60 * v29) >> 63)
    {
      goto LABEL_63;
    }

    v24 = __OFADD__(v31, v32);
    v33 = v31 + v32;
    if (v24)
    {
      goto LABEL_64;
    }

    v24 = __OFADD__(v33, v30);
    v34 = v33 + v30;
    if (v24)
    {
      goto LABEL_65;
    }

    v35 = v26;
    if (v26 == v34)
    {
      v36 = v27;
      if (v27 < -3187299600.0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      ObjectType = swift_getObjectType();
      *v64 = v27;
      v38 = *(v16 + 40);
      v39 = v38(v64, ObjectType, v16);
      *v64 = v60;
      result = v38(v64, ObjectType, v16);
      if (v39 == result)
      {
        v36 = v27;
      }

      else
      {
        v40 = result;
        if (__OFSUB__(result, v39))
        {
          goto LABEL_67;
        }

        v36 = v27 + (result - v39);
        *&v70 = 112;
        v62 = v36;
        *v61 = *(v6 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(&v70, &v62, v61, v63);
        swift_unknownObjectRelease();
        result = memcpy(v64, v63, 0x11BuLL);
        if (BYTE8(v64[7]) & 1) != 0 || (BYTE8(v64[8]) & 1) != 0 || (BYTE8(v64[9]))
        {
          goto LABEL_76;
        }

        v41 = *&v64[7];
        v42 = *&v64[8];
        v43 = *&v64[9];
        result = outlined destroy of DateComponents(v64);
        v44 = 3600 * v41;
        if ((v41 * 3600) >> 64 != (3600 * v41) >> 63)
        {
          goto LABEL_68;
        }

        v45 = 60 * v42;
        if ((v42 * 60) >> 64 != (60 * v42) >> 63)
        {
          goto LABEL_69;
        }

        v24 = __OFADD__(v44, v45);
        v46 = v44 + v45;
        if (v24)
        {
          goto LABEL_70;
        }

        v24 = __OFADD__(v46, v43);
        v47 = v46 + v43;
        if (v24)
        {
          goto LABEL_71;
        }

        if (v47 != v35 && v40 < v39)
        {
          v36 = v27;
        }
      }

      a3 = v57;
      if (v36 < -3187299600.0)
      {
LABEL_45:
        swift_unknownObjectRelease();
LABEL_46:
        v50 = v60;
        goto LABEL_47;
      }
    }

    v48 = swift_getObjectType();
    v63[0] = v36 + -172800.0;
    (*(v16 + 88))(v64, v63, v48, v16);
    if (BYTE8(v64[0]))
    {
      goto LABEL_45;
    }

    v49 = *v64;
    if (*v64 >= v36 + -172800.0 + 345600000.0 || v36 < *v64)
    {
      goto LABEL_45;
    }

    *v64 = *v64 + -1.0;
    v51 = *(v16 + 40);
    v52 = v51(v64, v48, v16);
    *v64 = v49 + 1.0;
    v53 = v51(v64, v48, v16);
    result = swift_unknownObjectRelease();
    v54 = v52 - v53;
    if (__OFSUB__(v52, v53))
    {
      goto LABEL_72;
    }

    a3 = v57;
    if (v54 < 1)
    {
      goto LABEL_46;
    }

    v50 = v60;
    if (v36 < v49 + v54)
    {
      v36 = v36 - v54;
    }

LABEL_47:
    if (v50 >= v17 + v36)
    {
      *a4 = v17 + v36 + 0.0;
      *(a4 + 8) = v50;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0x80;
      *v64 = v17 + v36 + 0.0;
      *(v64 + 1) = v50;
      v64[1] = 0uLL;
      LOBYTE(v64[2]) = 0x80;
      lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
      return swift_willThrowTypedImpl();
    }

    *&v61[0] = 128;
    v70 = v17 + v36 + 0.0;
    v64[0] = *(v6 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v61, &v70, v64, v63);
    swift_unknownObjectRelease();
    memcpy(v64, v63, 0x11BuLL);
    result = outlined destroy of DateComponents(v64);
    if (BYTE8(v64[11]))
    {
      goto LABEL_75;
    }

    result = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_66;
    }

    ++v11;
    *v14.i64 = v17 + v36 + 0.0;
    if (*&v64[11] == a3)
    {
      v10 = v17 + v36 + 0.0;
      a1 = v55;
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t _s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKF(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - 2;
  if (__OFSUB__(a2, 2))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = result + 4716;
  if (__OFADD__(result, 4716))
  {
LABEL_8:
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    result = swift_willThrowTypedImpl();
    *a4 = xmmword_18121FA20;
    *(a4 + 16) = xmmword_18121B2B0;
    *(a4 + 32) = 1;
    return result;
  }

  if (__OFSUB__(12, v5))
  {
    goto LABEL_38;
  }

  v8 = (14 - a2) / 12;
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (__OFSUB__(v5, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (__OFADD__(a2 - 3, 12))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ((v10 * 1461) >> 64 != (1461 * v10) >> 63)
  {
    goto LABEL_8;
  }

  v11 = a3 + 1461 * v10 / 4;
  if (__OFADD__(a3, 1461 * v10 / 4))
  {
    goto LABEL_42;
  }

  v9 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v9)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v9 = __OFSUB__(v12, 1401);
  v13 = v12 - 1401;
  if (v9)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = 26215 * (153 * ((a2 + 9) % 12) + 2);
  v9 = __OFADD__(v13, ((v14 >> 17) + (v14 >> 31)));
  v15 = v13 + ((v14 >> 17) + (v14 >> 31));
  if (v9)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v16 = 3 * ((v10 + 184) / 100);
  v17 = v15 - v16 / 4;
  if (__OFSUB__(v15, v16 / 4))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v18 = v17 + 38;
  if (__OFADD__(v17, 38))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v19 = *(v4 + 64);
  v20 = result & 3;
  if (v19 <= result)
  {
    if ((result & 3) != 0)
    {
      v21 = &_s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKFTv_r;
      v22 = a2 - 1;
      if (a2 < 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (__ROR8__(0x8F5C28F5C28F5C29 * result + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
      {
        goto LABEL_36;
      }

      v21 = &_s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKFTv0_r;
      v22 = a2 - 1;
      if (a2 < 1)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    while (1)
    {
      v21 = v20 ? &_s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKFTv_r : &_s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKFTv0_r;
      v22 = a2 - 1;
      if (a2 >= 1)
      {
        break;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      v20 = result % 400;
    }
  }

  if (v22 >= v21[2])
  {
    goto LABEL_48;
  }

  v23 = result;
  v24 = *(v4 + 56);
  v25 = v21[v22 + 4];

  result = v25 + a3;
  if (__OFADD__(v25, a3))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v18 >= v24 && v19 == v23)
  {
    v28 = v23 - 1;
    if (!__OFSUB__(v23, 1))
    {
      v29 = ((v28 * 0x5C28F5C28F5C28F5) >> 64) - v28;
      v30 = v28 / 400 + (v29 >> 6) + (v29 >> 63) + 2;
      v9 = __OFADD__(result, v30);
      result += v30;
      if (!v9)
      {
        return result;
      }

LABEL_51:
      __break(1u);
      return result;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  return result;
}

uint64_t _s10Foundation18_CalendarGregorianC9julianDay20usingJulianReference18resolvedComponentsSiSb_AA012ResolvedDateJ0OtAA0cB5ErrorOYKF(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 40) >> 5;
  v7 = 1;
  if (v6 != 3)
  {
    v7 = *(a2 + 8);
  }

  v8 = 1;
  if ((v6 - 1) < 2)
  {
    v8 = *(a2 + 8);
  }

  if (*(a2 + 40) >> 5 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v9 - 2;
  if (__OFSUB__(v9, 2))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v12 = v4 + 4716;
  if (__OFADD__(v4, 4716))
  {
LABEL_15:
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    result = swift_willThrowTypedImpl();
    *a3 = xmmword_18121FA20;
    *(a3 + 16) = xmmword_18121B2B0;
    *(a3 + 32) = 1;
    return result;
  }

  if (__OFSUB__(12, v10))
  {
    goto LABEL_80;
  }

  v13 = (14 - v9) / 12;
  v14 = __OFSUB__(v12, v13);
  v15 = v12 - v13;
  if (v14)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (__OFSUB__(v10, 1))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (__OFADD__(v9 - 3, 12))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((v15 * 1461) >> 64 != (1461 * v15) >> 63)
  {
    goto LABEL_15;
  }

  v16 = v9 + 9 - 12 * (((((v9 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 63) + ((((v9 + 9) * 0x2AAAAAAAAAAAAAABLL) >> 64) >> 1));
  v17 = 1461 * v15 / 4 + (((26215 * (153 * v16 + 2)) >> 17) + ((26215 * (153 * v16 + 2)) >> 31)) - 1402;
  v18 = v17 - 3 * ((v15 + 184) / 100) / 4 + 38;
  if (result)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = a2;
  v21 = _CalendarGregorian.relativeWeekday(fromJulianDay:)(v19 + 1);
  v22 = v20;
  v23 = *(v20 + 16);
  v24 = *(v20 + 17);
  v25 = v24 | ((*(v20 + 21) | (*(v20 + 23) << 16)) << 32);
  v26 = *(v20 + 24);
  if (v6 > 1)
  {
    v20 = v21;
    v24 = *(v22 + 25) | ((*(v22 + 29) | (*(v22 + 31) << 16)) << 32);
    LOBYTE(v22) = *(v22 + 32);
    if (v6 != 2)
    {
      if (v6 != 3)
      {
        if (v22)
        {
          result = 0;
        }

        else
        {
          result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v26 | (v24 << 8));
        }

        v5 = v23 | (v25 << 8);
        v23 = result - v20;
        v28 = result - v20 + 1;
        if (*(v3 + 152) == 1)
        {
          v4 = *(v3 + 96);
          if (!v4)
          {
LABEL_68:
            v36 = v5 - 1;
            if (__OFSUB__(v5, 1))
            {
LABEL_84:
              __break(1u);
              goto LABEL_85;
            }

            v37 = 7 * v36;
            if ((v36 * 7) >> 64 != (7 * v36) >> 63)
            {
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            v38 = v28 + v37;
            if (__OFADD__(v28, v37))
            {
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            result = v19 + v38;
            if (!__OFADD__(v19, v38))
            {
              return result;
            }

            __break(1u);
            goto LABEL_74;
          }

          v9 = *(v3 + 104);
          ObjectType = swift_getObjectType();
          v32 = *(v9 + 344);
          swift_unknownObjectRetain();
          v33 = v32(ObjectType, v9);
          result = swift_unknownObjectRelease();
LABEL_66:
          if (7 - v20 < v33)
          {
            v28 = v23 + 8;
          }

          goto LABEL_68;
        }

LABEL_65:
        v33 = *(v3 + 144);
        goto LABEL_66;
      }

      if (v22)
      {
        result = 0;
        goto LABEL_48;
      }

LABEL_47:
      result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v26 | (v24 << 8));
LABEL_48:
      v28 = result - v20;
      v29 = result - v20 + 1;
      if (*(v3 + 152) == 1)
      {
        v4 = *(v3 + 96);
        if (!v4)
        {
LABEL_58:
          if ((v23 & 1) == 0)
          {
            v34 = v5 - 1;
            if (__OFSUB__(v5, 1))
            {
LABEL_88:
              __break(1u);
              goto LABEL_89;
            }

            v35 = 7 * v34;
            if ((v34 * 7) >> 64 != (7 * v34) >> 63)
            {
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            v14 = __OFADD__(v29, v35);
            v29 += v35;
            if (v14)
            {
LABEL_90:
              __break(1u);
              goto LABEL_91;
            }
          }

          result = v19 + v29;
          if (!__OFADD__(v19, v29))
          {
            return result;
          }

          __break(1u);
          goto LABEL_65;
        }

        v9 = *(v3 + 104);
        v30 = swift_getObjectType();
        v41 = *(v9 + 344);
        swift_unknownObjectRetain();
        v3 = v41(v30, v9);
        result = swift_unknownObjectRelease();
      }

      else
      {
        v3 = *(v3 + 144);
      }

      if (7 - v20 < v3)
      {
        v29 = v28 + 8;
      }

      goto LABEL_58;
    }

LABEL_28:
    v5 = v25 << 8;
    if (v22)
    {
      result = 0;
LABEL_39:
      v23 = v23 | (v25 << 8);
      if ((result - v20) <= 0x7FFFFFFFFFFFFFFELL)
      {
        v20 = result - v20 + 1;
      }

      else
      {
        v20 = result - v20 + 8;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
LABEL_74:
        result = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v9, v4);
        v39 = v23 + ((((37 * (result - v20)) >> 8) + (((result - v20 - ((37 * (result - v20)) >> 8)) & 0xFE) >> 1)) >> 2) + 1;
        v40 = 7 * v39;
        if ((v39 * 7) >> 64 != (7 * v39) >> 63)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v14 = __OFADD__(v20, v40);
        v26 = v20 + v40;
        if (v14)
        {
LABEL_92:
          __break(1u);
          return result;
        }

LABEL_76:
        result = v19 + v26;
        if (!__OFADD__(v19, v26))
        {
          return result;
        }

        __break(1u);
        goto LABEL_79;
      }

      v24 = 8 * (v23 - 1);
      v27 = 7 * (v23 - 1);
      if (((v23 - 1) * 7) >> 64 != v27 >> 63)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v14 = __OFADD__(v20, v27);
      v26 = v20 + v27;
      if (!v14)
      {
        goto LABEL_76;
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_38:
    result = _CalendarGregorian.wrapAroundRelativeWeekday(_:)(v26 | (v24 << 8));
    goto LABEL_39;
  }

  if (!v6)
  {
    result = v19 + v5;
    if (!__OFADD__(v19, v5))
    {
      return result;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v26)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23 | (v25 << 8);
  }

  result = v19 + v26;
  if (__OFADD__(v19, v26))
  {
    __break(1u);
    goto LABEL_38;
  }

  return result;
}

Swift::Int __swiftcall _CalendarGregorian.relativeWeekdayForLastDayOfPeriod(periodLength:referenceDayOfPeriod:referenceDayWeekday:)(Swift::Int periodLength, Swift::Int referenceDayOfPeriod, Swift::Int referenceDayWeekday)
{
  v4 = periodLength - referenceDayOfPeriod;
  if (__OFSUB__(periodLength, referenceDayOfPeriod))
  {
    goto LABEL_15;
  }

  v5 = v4 + referenceDayWeekday;
  if (__OFADD__(v4, referenceDayWeekday))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(v3 + 136) != 1)
  {
    goto LABEL_9;
  }

  if (!*(v3 + 96))
  {
    v12 = v5 - 1;
    if (!__OFSUB__(v5, 1))
    {
      return v12 % 7;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v3 + 104);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 328);
  swift_unknownObjectRetain();
  v8(&v13, ObjectType, v6);
  periodLength = specialized Collection<>.firstIndex(of:)(v13, outlined read-only object #0 of one-time initialization function for weekdays);
  if ((v9 & 1) == 0)
  {
    v3 = periodLength;
    periodLength = swift_unknownObjectRelease();
    v10 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
LABEL_10:
      v11 = __OFSUB__(v5, v10);
      v12 = v5 - v10;
      if (!v11)
      {
        return v12 % 7;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_9:
    v10 = *(v3 + 128);
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return periodLength;
}

uint64_t _CalendarGregorian.dayOfMonthConsideringGregorianCutover(_:inTimeZone:)(double *a1, double *a2, __int128 *a3)
{
  v5 = *a2;
  v17 = 14;
  v16 = v5;
  v15 = *a3;
  result = _CalendarGregorian.dateComponents(_:from:in:)(&v17, &v16, &v15, v18);
  if (v20 & 1) != 0 || (v22 & 1) != 0 || (v24)
  {
    goto LABEL_21;
  }

  v7 = year;
  v8 = v23;
  v9 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(_, year);
  result = outlined destroy of DateComponents(v18);
  if (v7 == *(v3 + 64))
  {
    v10 = *(v3 + 72);
    v11 = v8;
    if (v5 >= v10)
    {
      v11 = v8 - 10;
      if (__OFSUB__(v8, 10))
      {
        goto LABEL_20;
      }
    }

    v12 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
      if ((v12 * 86400) >> 64 == (86400 * v12) >> 63)
      {
        v13 = v5 - (86400 * v12);
        *a1 = v13;
        if (v13 < v10 && v13 + (86400 * (v9 - 10)) >= v10)
        {
          return v11;
        }

        return v8;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v14 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      if ((v14 * 86400) >> 64 == (86400 * v14) >> 63)
      {
        *a1 = v5 - (86400 * v14);
        return v8;
      }

      goto LABEL_18;
    }

    __break(1u);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(_BYTE *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>, Foundation::Date a7@<D0>)
{
  v10 = *a2;
  if (!a3)
  {
LABEL_260:
    *a6 = v10;
    return;
  }

  v11 = v7;
  v12 = *a1;
  v14 = *a4;
  v13 = a4[1];
  v15 = 24;
  v16 = 3600;
  v17 = a3;
  switch(*a1)
  {
    case 1:
      v18 = a5;
      v173 = a6;
      *&v174 = *a4;
      *&v209[0] = 8319;
      *v208 = v10;
      *&__dst[0] = v14;
      *(&v174 + 1) = v13;
      *(&__dst[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v209, v208, __dst, __src);
      if (__src[7])
      {
        goto LABEL_323;
      }

      v19 = v17;
      if ((__src[5] & 1) == 0)
      {
        v19 = v17;
        if (!__src[4])
        {
          v19 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_290;
          }
        }
      }

      v20 = __src[6] + v19;
      if (__OFADD__(__src[6], v19))
      {
        goto LABEL_276;
      }

      if (v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = 0;
      }

      else
      {
        v21 = __src[6] + v19;
      }

      if (v20 < 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      __src[6] = v22;
      LOBYTE(__src[7]) = v20 == 0x7FFFFFFFFFFFFFFFLL;
      if ((__src[11] & 1) != 0 || (__src[9] & 1) != 0 || v20 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_21;
      }

      v23 = __src[10];
      v24 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(__src[8], v22);
      if (v24 < v23)
      {
        goto LABEL_20;
      }

      if (v23 <= 0)
      {
        v24 = 1;
LABEL_20:
        __src[10] = v24;
        LOBYTE(__src[11]) = 0;
      }

LABEL_21:
      memcpy(__dst, __src, 0x11BuLL);
      v177[0] = v174;
      LOBYTE(v200) = 1;
      outlined init with copy of DateComponents(__dst, v209);
      _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(__src, v177, &v200, v205, &v183);
      if (v8)
      {
        memcpy(v208, __src, 0x11BuLL);
        outlined destroy of DateComponents(v208);
        v25 = __src;
        goto LABEL_131;
      }

      memcpy(v208, __src, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      v124 = __src;
      goto LABEL_255;
    case 2:
      v18 = a5;
      v173 = a6;
      *&v174 = *a4;
      *&v209[0] = 8319;
      *v208 = v10;
      *&__dst[0] = v14;
      *(&v174 + 1) = v13;
      *(&__dst[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v209, v208, __dst, v176);
      if (v176[9])
      {
        goto LABEL_322;
      }

      v32 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v17, v176[8], 1, 13);
      if (v32 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      v176[8] = v33;
      LOBYTE(v176[9]) = v32 == 0x7FFFFFFFFFFFFFFFLL;
      if (v176[11] & 1) != 0 || v32 == 0x7FFFFFFFFFFFFFFFLL || (v176[7])
      {
        goto LABEL_43;
      }

      v34 = v176[10];
      v35 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v32, v176[6]);
      if (v35 < v34)
      {
        goto LABEL_42;
      }

      if (v34 <= 0)
      {
        v35 = 1;
LABEL_42:
        v176[10] = v35;
        LOBYTE(v176[11]) = 0;
      }

LABEL_43:
      memcpy(__dst, v176, 0x11BuLL);
      v177[0] = v174;
      LOBYTE(v200) = 0;
      outlined init with copy of DateComponents(__dst, v209);
      _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v176, v177, &v200, v205, &v183);
      if (v8)
      {
        memcpy(v208, v176, 0x11BuLL);
        outlined destroy of DateComponents(v208);
        v25 = v176;
        goto LABEL_131;
      }

      memcpy(v208, v176, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      v124 = v176;
      goto LABEL_255;
    case 3:
      v173 = a6;
      *v208 = *a2;
      *&__dst[0] = v14;
      *(&__dst[0] + 1) = v13;
      v67 = v13;
      _CalendarGregorian.dayOfMonthConsideringGregorianCutover(_:inTimeZone:)(v209, v208, __dst);
      if (v69)
      {
        v70 = 86400 * v68;
        if ((v68 * 86400) >> 64 != (86400 * v68) >> 63)
        {
          goto LABEL_289;
        }

        if ((v17 * 86400) >> 64 == (86400 * v17) >> 63)
        {
          v71 = *v209;
          v72 = v10 - *v209;
          v73 = v70;
          v74 = remainder(v72 + (86400 * v17), v70);
          if (v74 < 0.0)
          {
            v74 = v74 + v73;
          }

          *v173 = v71 + v74;
          return;
        }

        goto LABEL_292;
      }

      *&v208[0] = 8319;
      *v205 = v10;
      *&v174 = v14;
      *(&v174 + 1) = v67;
      *&v209[0] = v14;
      *(&v209[0] + 1) = v67;
      _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, v204);
      *&v208[0] = 8;
      *v205 = v10;
      v209[0] = *(v11 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, __dst);
      swift_unknownObjectRelease();
      outlined destroy of DateComponents(__dst);
      if (BYTE8(__dst[5]))
      {
        goto LABEL_327;
      }

      if (v204[9] & 1) != 0 || (v204[7])
      {
        goto LABEL_326;
      }

      v104 = *&__dst[5];
      v105 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v204[8], v204[6]);
      v106 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v17, v104, 1, v105 + 1);
      if (v106 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v107 = 0;
      }

      else
      {
        v107 = v106;
      }

      v204[10] = v107;
      LOBYTE(v204[11]) = v106 == 0x7FFFFFFFFFFFFFFFLL;
      memcpy(v209, v204, 0x11BuLL);
      v183 = v174;
      LOBYTE(v178[0]) = 1;
      outlined init with copy of DateComponents(v209, v208);
      _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v204, &v183, v178, v177, &v200);
      if (v8)
      {
        memcpy(v205, v204, 0x11BuLL);
        outlined destroy of DateComponents(v205);
        memcpy(v208, v204, 0x11BuLL);
        outlined destroy of DateComponents(v208);
        v108 = v177[2];
        v109 = v177[1];
        *a5 = v177[0];
        *(a5 + 16) = v109;
        *(a5 + 32) = v108;
        return;
      }

      memcpy(v205, v204, 0x11BuLL);
      outlined destroy of DateComponents(v205);
      v127 = v204;
      goto LABEL_179;
    case 4:
      goto LABEL_73;
    case 5:
      v16 = 60;
      v15 = 60;
      goto LABEL_73;
    case 6:
      v15 = 60;
      v16 = 1;
LABEL_73:
      v58 = a6;
      LOBYTE(v209[0]) = *a1;
      *__dst = v10;
      v59 = _CalendarGregorian.dateComponent(_:from:)(v209, a7);
      v60 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v17, v59, 0, v15);
      v61 = v60;
      if (v60 >= v59 || v17 < 1)
      {
        v61 = v60 - v59;
        if (__OFSUB__(v60, v59))
        {
          goto LABEL_270;
        }

        v9 = 0.0;
      }

      else
      {
        *&v208[0] = 8288;
        *v205 = v10;
        v209[0] = *(v11 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, __dst);
        swift_unknownObjectRelease();
        if (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]) & 1) != 0 || (BYTE8(__dst[10]))
        {
          goto LABEL_317;
        }

        v17 = *&__dst[8];
        v62 = *&__dst[9];
        v63 = *&__dst[10];
        outlined destroy of DateComponents(__dst);
        v64._time = v63 / 1000000000.0;
        v9 = v64._time + 0.0;
        if (v12 != 6)
        {
          v64._time = v62;
          v9 = v9 + v62;
          if (v12 != 5)
          {
            v65 = 60 * v17;
            if ((v17 * 60) >> 64 != (60 * v17) >> 63)
            {
LABEL_296:
              __break(1u);
LABEL_297:
              __break(1u);
LABEL_298:
              __break(1u);
LABEL_299:
              __break(1u);
LABEL_300:
              __break(1u);
              goto LABEL_301;
            }

            v64._time = v65;
            v9 = v9 + v65;
          }
        }

        LOBYTE(v205[0]) = v12 - 1;
        *v208 = v10;
        _CalendarGregorian.firstInstant(of:at:)(v205, v64);
        if ((BYTE8(v209[0]) & 1) == 0)
        {
          v10 = *v209;
        }
      }

      if ((v61 * v16) >> 64 == (v61 * v16) >> 63)
      {
        *v58 = v9 + v10 + (v61 * v16);
        return;
      }

      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      swift_once();
LABEL_101:
      v78 = xmmword_1ED440468;
      v208[0] = xmmword_1ED440468;
      swift_unknownObjectRetain_n();
      _CalendarGregorian.dateComponents(_:from:in:)(v205, v177, v208, v209);
      swift_unknownObjectRelease();
      memcpy(__dst, v209, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (BYTE8(__dst[11]))
      {
        goto LABEL_324;
      }

      v79 = *&__dst[11];
      *v205 = v10;
      v209[0] = v78;
      v80 = _CalendarGregorian.dayOfMonthConsideringGregorianCutover(_:inTimeZone:)(v208, v205, v209);
      v82 = v81;
      v84 = v83;
      swift_unknownObjectRelease();
      v85 = *v208;
      v86 = _CalendarGregorian.firstWeekday.getter();
      if (__OFSUB__(v79, v86))
      {
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
      }

      else
      {
        v87 = v79 - v86 + (v79 - v86 < 0 ? 7uLL : 0);
        v45 = __OFSUB__(v87, v80);
        v88 = v87 - v80;
        if (!v45)
        {
          v166 = v84;
          v45 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (!v45)
          {
            v90 = v89 % 7;
            if (v90 >= 0)
            {
              v91 = v90;
            }

            else
            {
              v91 = v90 + 7;
            }

            if (*(v11 + 152) == 1)
            {
              if (!*(v11 + 96))
              {
                goto LABEL_145;
              }

              v92 = *(v11 + 104);
              ObjectType = swift_getObjectType();
              v162 = *(v92 + 344);
              swift_unknownObjectRetain();
              v94 = v162(ObjectType, v92);
              swift_unknownObjectRelease();
            }

            else
            {
              v94 = *(v11 + 144);
            }

            if (7 - v91 < v94)
            {
              v111 = 8;
              goto LABEL_146;
            }

LABEL_145:
            v111 = 1;
LABEL_146:
            v112 = _CalendarGregorian.relativeWeekdayForLastDayOfPeriod(periodLength:referenceDayOfPeriod:referenceDayWeekday:)(v82, v80, v79);
            v113 = v82 + 7 - v112;
            if (!__OFADD__(v82, 7 - v112))
            {
              if ((v17 * 7) >> 64 == (7 * v17) >> 63)
              {
                if (v113 >= v111 - v91)
                {
                  v114 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(7 * v17, v80, v111 - v91, v113);
                  if (v82 >= v114)
                  {
                    v115 = v114;
                  }

                  else
                  {
                    v115 = v82;
                  }

                  if (v114 < 1)
                  {
                    v116 = 1;
                  }

                  else
                  {
                    v116 = v115;
                  }

                  if (v166)
                  {
                    v117 = v116 - 1;
                    if (!__OFSUB__(v116, 1))
                    {
                      v118 = 86400 * v117;
                      v119 = (v117 * 86400) >> 64 == (86400 * v117) >> 63;
                      a6 = v173;
                      if (v119)
                      {
                        v75 = v85 + v118 - v9;
LABEL_160:
                        *a6 = v75;
                        return;
                      }

                      goto LABEL_295;
                    }

LABEL_294:
                    __break(1u);
LABEL_295:
                    __break(1u);
                    goto LABEL_296;
                  }

                  *&v208[0] = 8319;
                  *v205 = v10;
                  v209[0] = v78;
                  swift_unknownObjectRetain();
                  _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, v206);
                  swift_unknownObjectRelease();
                  if (*(&v78 + 1) == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v120 = 0;
                  }

                  else
                  {
                    v120 = v116;
                  }

                  v206[10] = v120;
                  LOBYTE(v206[11]) = v116 == 0x7FFFFFFFFFFFFFFFLL;
                  memcpy(v209, v206, 0x11BuLL);
                  v183 = v174;
                  LOBYTE(v178[0]) = 1;
                  outlined init with copy of DateComponents(v209, v208);
                  _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v206, &v183, v178, v177, &v200);
                  if (v169)
                  {
                    memcpy(v205, v206, 0x11BuLL);
                    outlined destroy of DateComponents(v205);
                    memcpy(v208, v206, 0x11BuLL);
                    outlined destroy of DateComponents(v208);
                    v121 = v177[2];
                    v122 = v177[0];
                    v123 = v177[1];
                    goto LABEL_253;
                  }

                  memcpy(v205, v206, 0x11BuLL);
                  outlined destroy of DateComponents(v205);
                  v127 = v206;
LABEL_179:
                  memcpy(v208, v127, 0x11BuLL);
                  outlined destroy of DateComponents(v208);
                  v10 = *&v200;
                  goto LABEL_256;
                }

LABEL_288:
                __break(1u);
LABEL_289:
                __break(1u);
LABEL_290:
                __break(1u);
LABEL_291:
                __break(1u);
LABEL_292:
                __break(1u);
LABEL_293:
                __break(1u);
                goto LABEL_294;
              }

LABEL_286:
              __break(1u);
LABEL_287:
              __break(1u);
              goto LABEL_288;
            }

LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
            goto LABEL_286;
          }

LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
          goto LABEL_284;
        }
      }

      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    case 7:
      v174 = *a4;
      v173 = a6;
      LOBYTE(v209[0]) = 7;
      *__dst = v10;
      v26 = _CalendarGregorian.dateComponent(_:from:)(v209, a7);
      v27 = _CalendarGregorian.firstWeekday.getter();
      v28 = v26 - v27;
      if (__OFSUB__(v26, v27))
      {
        goto LABEL_271;
      }

      v29 = v28 + 7;
      if (v28 >= 0)
      {
        v29 = v26 - v27;
      }

      if ((v29 * 86400) >> 64 != (86400 * v29) >> 63)
      {
        goto LABEL_278;
      }

      if ((v17 * 86400) >> 64 != (86400 * v17) >> 63)
      {
        goto LABEL_281;
      }

      v30 = v10 - (86400 * v29);
      v31 = remainder(v10 + (86400 * v17) - v30, 604800.0);
      if (v31 < 0.0)
      {
        v31 = v31 + 604800.0;
      }

      v10 = v30 + v31;
      goto LABEL_256;
    case 8:
      v173 = a6;
      *&v174 = *a4;
      *&v208[0] = 14;
      *v205 = v10;
      *&v209[0] = v14;
      *(&v174 + 1) = v13;
      *(&v209[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, __dst);
      if (BYTE8(__dst[3]) & 1) != 0 || (BYTE8(__dst[5]) & 1) != 0 || (BYTE8(__dst[4]))
      {
        goto LABEL_319;
      }

      v47 = *&__dst[5];
      v48 = *&__dst[5] - 1;
      if (__OFSUB__(*&__dst[5], 1))
      {
        goto LABEL_275;
      }

      v49 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(*&__dst[4], *&__dst[3]);
      if (__OFSUB__(v49, v47))
      {
        goto LABEL_280;
      }

      v50 = 604800 * (v48 / 7);
      if ((v48 / 7 * 604800) >> 64 != v50 >> 63)
      {
        goto LABEL_283;
      }

      if ((v17 * 604800) >> 64 != (604800 * v17) >> 63)
      {
        goto LABEL_285;
      }

      v51 = v48 / 7 + (v49 - v47) / 7 + 1;
      v52 = 604800 * v51;
      if ((v51 * 604800) >> 64 != (604800 * v51) >> 63)
      {
        goto LABEL_287;
      }

      v53 = v10 - v50;
      v54 = v10 + (604800 * v17);
      v55 = v52;
      v56 = remainder(v54 - v53, v52);
      outlined destroy of DateComponents(__dst);
      v57 = v56 + v55;
      if (v56 >= 0.0)
      {
        v57 = v56;
      }

      v10 = v53 + v57;
      goto LABEL_256;
    case 0xA:
      v172 = a5;
      v173 = a6;
      v169 = v8;
      v76 = a4[1];
      v77 = swift_getObjectType();
      *v209 = v10;
      *&v174 = v14;
      *(&v174 + 1) = v76;
      v9 = (*(v76 + 40))(v209, v77, v76);
      v10 = v10 + v9;
      *&v205[0] = 128;
      *v177 = v10;
      if (one-time initialization token for cache == -1)
      {
        goto LABEL_101;
      }

      goto LABEL_272;
    case 0xB:
      v172 = a5;
      v173 = a6;
      v170 = v8;
      *&v209[0] = 14577;
      *v208 = v10;
      *&v174 = v14;
      *(&v174 + 1) = v13;
      *&__dst[0] = v14;
      *(&__dst[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v209, v208, __dst, v207);
      if (v207[33] & 1) != 0 || (v207[35] & 1) != 0 || (v207[23])
      {
        goto LABEL_318;
      }

      v36 = v207[32];
      v37 = v207[32] + v17;
      if (__OFADD__(v207[32], v17))
      {
        goto LABEL_274;
      }

      if ((v37 - 53) > 0xFFFFFFFFFFFFFFCBLL)
      {
        goto LABEL_251;
      }

      v38 = v207[34];
      v39 = v207[22];
      *&v208[0] = 14;
      *v205 = v10;
      v209[0] = *(v11 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, __dst);
      swift_unknownObjectRelease();
      if (BYTE8(__dst[4]) & 1) != 0 || (BYTE8(__dst[3]) & 1) != 0 || (BYTE8(__dst[5]))
      {
        goto LABEL_321;
      }

      v40 = *&__dst[4];
      v41 = *&__dst[4] - 2;
      if (__OFSUB__(*&__dst[4], 2))
      {
        goto LABEL_293;
      }

      v42 = *&__dst[3];
      v43 = *&__dst[3] + 4716;
      if (__OFADD__(*&__dst[3], 4716))
      {
        goto LABEL_60;
      }

      if (__OFSUB__(12, v41))
      {
        goto LABEL_297;
      }

      v44 = (14 - *&__dst[4]) / 12;
      v45 = __OFSUB__(v43, v44);
      v46 = v43 - v44;
      if (v45)
      {
        goto LABEL_298;
      }

      if (__OFSUB__(v41, 1))
      {
        goto LABEL_299;
      }

      if (__OFADD__(*&__dst[4] - 3, 12))
      {
        goto LABEL_300;
      }

      if ((v46 * 1461) >> 64 != (1461 * v46) >> 63)
      {
LABEL_60:
        v208[0] = xmmword_18121FA20;
        v208[1] = xmmword_18121B2B0;
        LOBYTE(v208[2]) = 1;
        lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
        swift_willThrowTypedImpl();
        outlined destroy of DateComponents(__dst);
        memcpy(v209, v207, 0x11BuLL);
        outlined destroy of DateComponents(v209);
        *v172 = xmmword_18121FA20;
        *(v172 + 16) = xmmword_18121B2B0;
        *(v172 + 32) = 1;
        return;
      }

      v128 = *&__dst[5] + 1461 * v46 / 4;
      if (__OFADD__(*&__dst[5], 1461 * v46 / 4))
      {
LABEL_301:
        __break(1u);
      }

      else
      {
        v45 = __OFSUB__(v128, 1);
        v129 = v128 - 1;
        if (!v45)
        {
          v45 = __OFSUB__(v129, 1401);
          v130 = v129 - 1401;
          if (!v45)
          {
            v131 = 26215 * (153 * ((LOWORD(__dst[4]) + 9) % 12) + 2);
            v45 = __OFADD__(v130, ((v131 >> 17) + (v131 >> 31)));
            v132 = v130 + ((v131 >> 17) + (v131 >> 31));
            if (!v45)
            {
              v133 = 3 * ((v46 + 184) / 100);
              v134 = v132 - v133 / 4;
              if (!__OFSUB__(v132, v133 / 4))
              {
                v135 = v134 + 38;
                if (!__OFADD__(v134, 38))
                {
                  v136 = __dst[3] & 3;
                  if (*&__dst[3] >= *(v11 + 64))
                  {
                    if ((__dst[3] & 3) != 0)
                    {
                      v137 = v39;
                      v138 = &_s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKFTv_r;
                      goto LABEL_196;
                    }

                    if (__ROR8__(0x8F5C28F5C28F5C29 * *&__dst[3] + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL)
                    {
                      v137 = v39;
                      v138 = &_s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKFTv0_r;
                      goto LABEL_196;
                    }

                    v136 = *&__dst[3] % 400;
                  }

                  v137 = v39;
                  if (v136)
                  {
                    v138 = &_s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKFTv_r;
                  }

                  else
                  {
                    v138 = &_s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKFTv0_r;
                  }

LABEL_196:
                  v165 = v37;
                  v168 = v38;
                  v139 = *&__dst[4] - 1;
                  if (*&__dst[4] >= 1)
                  {
                    v163 = *(v11 + 64);
                    referenceDayWeekday = v137;
                    if (v139 < v138[2])
                    {
                      v140 = v135;
                      v141 = *&__dst[5];
                      v142 = *(v11 + 56);
                      v143 = v138[v139 + 4];

                      v144 = v143 + v141;
                      if (!__OFADD__(v143, v141))
                      {
                        if (v140 >= v142)
                        {
                          v145 = referenceDayWeekday;
                          v146 = v168;
                          if (v42 != v163)
                          {
                            goto LABEL_206;
                          }

                          v147 = v42 - 1;
                          if (__OFSUB__(v42, 1))
                          {
LABEL_313:
                            __break(1u);
LABEL_314:
                            __break(1u);
                            goto LABEL_315;
                          }

                          v148 = ((v147 * 0x5C28F5C28F5C28F5) >> 64) - v147;
                          v149 = v147 / 400 + (v148 >> 6) + (v148 >> 63) + 2;
                          v45 = __OFADD__(v144, v149);
                          v144 += v149;
                          if (!v45)
                          {
LABEL_206:
                            if (v40 != 1)
                            {
                              if (v36 != 1)
                              {
                                v150 = *(v11 + 64);
                                goto LABEL_232;
                              }

                              v151 = v146 - 1;
                              if (__OFSUB__(v146, 1))
                              {
LABEL_315:
                                __break(1u);
                                goto LABEL_316;
                              }

                              v150 = *(v11 + 64);
                              if (v150 > v151)
                              {
                                if ((v151 & 3) == 0)
                                {
                                  goto LABEL_231;
                                }

                                goto LABEL_222;
                              }

                              if ((v151 & 3) != 0)
                              {
                                goto LABEL_222;
                              }

LABEL_230:
                              if (__ROR8__(0x8F5C28F5C28F5C29 * v151 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(v151 % 400))
                              {
LABEL_231:
                                v45 = __OFSUB__(v144, 366);
                                v144 -= 366;
                                if (v45)
                                {
LABEL_316:
                                  __break(1u);
LABEL_317:
                                  __break(1u);
LABEL_318:
                                  __break(1u);
LABEL_319:
                                  __break(1u);
LABEL_320:
                                  __break(1u);
LABEL_321:
                                  __break(1u);
LABEL_322:
                                  __break(1u);
LABEL_323:
                                  __break(1u);
LABEL_324:
                                  __break(1u);
LABEL_325:
                                  __break(1u);
LABEL_326:
                                  __break(1u);
LABEL_327:
                                  __break(1u);
                                  return;
                                }

LABEL_232:
                                if (v150 <= v146)
                                {
                                  if ((v146 & 3) == 0 && (__ROR8__(0x8F5C28F5C28F5C29 * v146 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(v146 % 400)))
                                  {
                                    goto LABEL_238;
                                  }
                                }

                                else if ((v146 & 3) == 0)
                                {
LABEL_238:
                                  v152 = 366;
LABEL_239:
                                  v153 = _CalendarGregorian.relativeWeekdayForLastDayOfPeriod(periodLength:referenceDayOfPeriod:referenceDayWeekday:)(v152, v144, v145);
                                  if (*(v11 + 152) == 1)
                                  {
                                    if (!*(v11 + 96))
                                    {
                                      if (v153 > 5)
                                      {
LABEL_245:
                                        v159 = _CalendarGregorian.weekNumber(desiredDay:dayOfPeriod:weekday:)(v152, v152, v153 + 1);
                                        outlined destroy of DateComponents(__dst);
                                        v160 = v165 + v159;
                                        if (!__OFADD__(v165, v159))
                                        {
                                          v45 = __OFSUB__(v160, 1);
                                          v161 = v160 - 1;
                                          if (!v45)
                                          {
                                            if (v159)
                                            {
                                              if (v161 != 0x8000000000000000 || v159 != -1)
                                              {
                                                v37 = v161 % v159 + 1;
LABEL_251:
                                                v207[32] = v37;
                                                LOBYTE(v207[33]) = 0;
                                                memcpy(__dst, v207, 0x11BuLL);
                                                v177[0] = v174;
                                                LOBYTE(v200) = 1;
                                                outlined init with copy of DateComponents(__dst, v209);
                                                _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v207, v177, &v200, v205, &v183);
                                                if (v170)
                                                {
                                                  memcpy(v208, v207, 0x11BuLL);
                                                  outlined destroy of DateComponents(v208);
                                                  memcpy(v209, v207, 0x11BuLL);
                                                  outlined destroy of DateComponents(v209);
                                                  v121 = v205[2];
                                                  v122 = v205[0];
                                                  v123 = v205[1];
                                                  goto LABEL_253;
                                                }

                                                memcpy(v208, v207, 0x11BuLL);
                                                outlined destroy of DateComponents(v208);
                                                v124 = v207;
LABEL_255:
                                                memcpy(v209, v124, 0x11BuLL);
                                                outlined destroy of DateComponents(v209);
                                                v10 = *&v183;
                                                goto LABEL_256;
                                              }

                                              goto LABEL_314;
                                            }

                                            goto LABEL_312;
                                          }

LABEL_311:
                                          __break(1u);
LABEL_312:
                                          __break(1u);
                                          goto LABEL_313;
                                        }

LABEL_310:
                                        __break(1u);
                                        goto LABEL_311;
                                      }

LABEL_244:
                                      v152 -= 7;
                                      goto LABEL_245;
                                    }

                                    v154 = *(v11 + 104);
                                    v155 = v153;
                                    v156 = swift_getObjectType();
                                    v157 = *(v154 + 344);
                                    swift_unknownObjectRetain();
                                    v158 = v157(v156, v154);
                                    swift_unknownObjectRelease();
                                    v153 = v155;
                                  }

                                  else
                                  {
                                    v158 = *(v11 + 144);
                                  }

                                  if (6 - v153 < v158)
                                  {
                                    goto LABEL_245;
                                  }

                                  goto LABEL_244;
                                }

                                v152 = 365;
                                goto LABEL_239;
                              }

LABEL_222:
                              v45 = __OFSUB__(v144, 365);
                              v144 -= 365;
                              if (v45)
                              {
                                goto LABEL_316;
                              }

                              goto LABEL_232;
                            }

                            v150 = *(v11 + 64);
                            if (v36 < 53)
                            {
                              goto LABEL_232;
                            }

                            if (v150 <= v146)
                            {
                              if ((v146 & 3) == 0 && (__ROR8__(0x8F5C28F5C28F5C29 * v146 + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(v146 % 400)))
                              {
LABEL_227:
                                v151 = 366;
                                v45 = __OFADD__(v144, 366);
                                v144 += 366;
                                if (!v45)
                                {
                                  goto LABEL_232;
                                }

                                goto LABEL_229;
                              }
                            }

                            else if ((v146 & 3) == 0)
                            {
                              goto LABEL_227;
                            }

                            v151 = 365;
                            v45 = __OFADD__(v144, 365);
                            v144 += 365;
                            if (!v45)
                            {
                              goto LABEL_232;
                            }

LABEL_229:
                            __break(1u);
                            goto LABEL_230;
                          }

                          __break(1u);
                        }

                        v145 = referenceDayWeekday;
                        v146 = v168;
                        goto LABEL_206;
                      }

LABEL_309:
                      __break(1u);
                      goto LABEL_310;
                    }

LABEL_308:
                    __break(1u);
                    goto LABEL_309;
                  }

LABEL_307:
                  __break(1u);
                  goto LABEL_308;
                }

LABEL_306:
                __break(1u);
                goto LABEL_307;
              }

LABEL_305:
              __break(1u);
              goto LABEL_306;
            }

LABEL_304:
            __break(1u);
            goto LABEL_305;
          }

LABEL_303:
          __break(1u);
          goto LABEL_304;
        }
      }

      __break(1u);
      goto LABEL_303;
    case 0xC:
      v18 = a5;
      v173 = a6;
      *&v174 = *a4;
      *&v209[0] = 14577;
      *v208 = v10;
      *&__dst[0] = v14;
      *(&v174 + 1) = v13;
      *(&__dst[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v209, v208, __dst, v211);
      if (v211[35])
      {
        goto LABEL_325;
      }

      v95 = v17;
      if ((v211[5] & 1) == 0)
      {
        v95 = v17;
        if (!v211[4])
        {
          v95 = -v17;
          if (__OFSUB__(0, v17))
          {
            goto LABEL_291;
          }
        }
      }

      v96 = v211[34] + v95;
      if (__OFADD__(v211[34], v95))
      {
        goto LABEL_277;
      }

      v97 = v96 == 0x7FFFFFFFFFFFFFFFLL;
      if (v96 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v98 = 0;
      }

      else
      {
        v98 = v96;
      }

      if (v96 < 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = v98;
      }

      v211[34] = v99;
      LOBYTE(v211[35]) = v97;
      if (v211[11] & 1) != 0 || (v211[9] & 1) != 0 || (v211[7])
      {
        goto LABEL_129;
      }

      v100 = v211[10];
      v101 = _CalendarGregorian.numberOfDaysInMonth(_:year:)(v211[8], v211[6]);
      if (v101 < v100)
      {
        goto LABEL_128;
      }

      if (v100 <= 0)
      {
        v101 = 1;
LABEL_128:
        v211[10] = v101;
        LOBYTE(v211[11]) = 0;
      }

LABEL_129:
      memcpy(__dst, v211, 0x11BuLL);
      v177[0] = v174;
      LOBYTE(v200) = 1;
      outlined init with copy of DateComponents(__dst, v209);
      _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v211, v177, &v200, v205, &v183);
      if (!v8)
      {
        memcpy(v208, v211, 0x11BuLL);
        outlined destroy of DateComponents(v208);
        v124 = v211;
        goto LABEL_255;
      }

      memcpy(v208, v211, 0x11BuLL);
      outlined destroy of DateComponents(v208);
      v25 = v211;
LABEL_131:
      memcpy(v209, v25, 0x11BuLL);
      outlined destroy of DateComponents(v209);
      v102 = v205[2];
      v103 = v205[1];
      *v18 = v205[0];
      *(v18 + 16) = v103;
      *(v18 + 32) = v102;
      return;
    case 0xD:
      v75 = a3 * 0.000000001 + v10;
      goto LABEL_160;
    case 0x12:
      v172 = a5;
      v173 = a6;
      *&v208[0] = 270463;
      *v205 = v10;
      *&v174 = v14;
      *(&v174 + 1) = v13;
      *&v209[0] = v14;
      *(&v209[0] + 1) = v13;
      _CalendarGregorian.dateComponents(_:from:in:)(v208, v205, v209, __dst);
      if (BYTE8(__dst[3]) & 1) != 0 || (BYTE8(__dst[6]))
      {
        goto LABEL_320;
      }

      if (*&__dst[3] >= *(v11 + 64))
      {
        if ((__dst[3] & 3) == 0 && (__ROR8__(0x8F5C28F5C28F5C29 * *&__dst[3] + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(*&__dst[3] % 400)))
        {
          goto LABEL_170;
        }

LABEL_141:
        v110 = 366;
        goto LABEL_171;
      }

      if ((__dst[3] & 3) != 0)
      {
        goto LABEL_141;
      }

LABEL_170:
      v110 = 367;
LABEL_171:
      v125 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v17, *&__dst[6], 1, v110);
      v200 = __dst[0];
      v201 = __dst[1];
      v202 = __dst[2];
      v203 = __dst[3];
      v186 = *(&__dst[9] + 9);
      v185 = *(&__dst[8] + 9);
      v183 = *(&__dst[6] + 9);
      v184 = *(&__dst[7] + 9);
      v190 = *(&__dst[13] + 9);
      v189 = *(&__dst[12] + 9);
      v188 = *(&__dst[11] + 9);
      v187 = *(&__dst[10] + 9);
      v193 = *(&__dst[16] + 9);
      v192 = *(&__dst[15] + 9);
      v191 = *(&__dst[14] + 9);
      v198[0] = *(&__dst[4] + 9);
      *(v198 + 3) = HIDWORD(__dst[4]);
      *(v196 + 3) = HIDWORD(__dst[5]);
      v196[0] = *(&__dst[5] + 9);
      v194 = *(&__dst[17] + 9);
      v199 = 1;
      v197 = 1;
      if (v125 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v126 = 0;
      }

      else
      {
        v126 = v125;
      }

      v195 = v125 == 0x7FFFFFFFFFFFFFFFLL;
      v209[0] = __dst[0];
      v209[1] = __dst[1];
      v209[2] = __dst[2];
      v209[3] = __dst[3];
      *&v209[4] = 0;
      BYTE8(v209[4]) = 1;
      *(&v209[4] + 9) = *(&__dst[4] + 9);
      HIDWORD(v209[4]) = HIDWORD(__dst[4]);
      *&v209[5] = 0;
      BYTE8(v209[5]) = 1;
      HIDWORD(v209[5]) = HIDWORD(__dst[5]);
      *(&v209[5] + 9) = *(&__dst[5] + 9);
      v171 = v126;
      *&v209[6] = v126;
      v167 = v125 == 0x7FFFFFFFFFFFFFFFLL;
      BYTE8(v209[6]) = v125 == 0x7FFFFFFFFFFFFFFFLL;
      *(&v209[17] + 9) = *(&__dst[17] + 9);
      *(&v209[16] + 9) = *(&__dst[16] + 9);
      *(&v209[14] + 9) = *(&__dst[14] + 9);
      *(&v209[15] + 9) = *(&__dst[15] + 9);
      *(&v209[9] + 9) = *(&__dst[9] + 9);
      *(&v209[8] + 9) = *(&__dst[8] + 9);
      *(&v209[7] + 9) = *(&__dst[7] + 9);
      *(&v209[6] + 9) = *(&__dst[6] + 9);
      *(&v209[13] + 9) = *(&__dst[13] + 9);
      *(&v209[12] + 9) = *(&__dst[12] + 9);
      *(&v209[11] + 9) = *(&__dst[11] + 9);
      *(&v209[10] + 9) = *(&__dst[10] + 9);
      memcpy(v208, v209, 0x11BuLL);
      v181 = v174;
      v180 = 0;
      outlined init with copy of DateComponents(__dst, v205);
      outlined init with copy of DateComponents(v209, v205);
      _s10Foundation18_CalendarGregorianC4date4from10inTimeZone011dstRepeatedG6Policy0i7SkippedgK0AA4DateVAA0M10ComponentsV_AA0gH0VAN014DaylightSavinggK0OAPtAA0cB5ErrorOYKF(v208, &v181, &v180, v178, &v182);
      if (!v8)
      {
        outlined destroy of DateComponents(__dst);
        memcpy(v177, v208, 0x11BuLL);
        outlined destroy of DateComponents(v177);
        v205[0] = v200;
        v205[1] = v201;
        v205[2] = v202;
        v205[3] = v203;
        *(&v205[16] + 9) = v193;
        *(&v205[9] + 9) = v186;
        *(&v205[8] + 9) = v185;
        *(&v205[7] + 9) = v184;
        *(&v205[6] + 9) = v183;
        *(&v205[13] + 9) = v190;
        *(&v205[12] + 9) = v189;
        *(&v205[11] + 9) = v188;
        *(&v205[10] + 9) = v187;
        *(&v205[15] + 9) = v192;
        *&v205[4] = 0;
        BYTE8(v205[4]) = 1;
        *(&v205[4] + 9) = v198[0];
        HIDWORD(v205[4]) = *(v198 + 3);
        *&v205[5] = 0;
        BYTE8(v205[5]) = 1;
        HIDWORD(v205[5]) = *(v196 + 3);
        *(&v205[5] + 9) = v196[0];
        *&v205[6] = v171;
        BYTE8(v205[6]) = v167;
        *(&v205[17] + 9) = v194;
        *(&v205[14] + 9) = v191;
        outlined destroy of DateComponents(v205);
        v10 = v182;
LABEL_256:
        if (v17 >= 1)
        {
          *v208 = v10;
          v209[0] = v174;
          _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v208, v209, __dst);
          if ((__dst[1] & 1) == 0)
          {
            v10 = v10 - *(__dst + 1);
          }
        }

        a6 = v173;
        goto LABEL_260;
      }

      outlined destroy of DateComponents(__dst);
      memcpy(v177, v208, 0x11BuLL);
      outlined destroy of DateComponents(v177);
      v205[0] = v200;
      v205[1] = v201;
      v205[2] = v202;
      v205[3] = v203;
      *(&v205[16] + 9) = v193;
      *(&v205[14] + 9) = v191;
      *(&v205[15] + 9) = v192;
      *(&v205[10] + 9) = v187;
      *(&v205[11] + 9) = v188;
      *(&v205[12] + 9) = v189;
      *(&v205[13] + 9) = v190;
      *(&v205[6] + 9) = v183;
      *(&v205[7] + 9) = v184;
      *(&v205[8] + 9) = v185;
      *&v205[4] = 0;
      BYTE8(v205[4]) = 1;
      *(&v205[4] + 9) = v198[0];
      HIDWORD(v205[4]) = *(v198 + 3);
      *&v205[5] = 0;
      BYTE8(v205[5]) = 1;
      HIDWORD(v205[5]) = *(v196 + 3);
      *(&v205[5] + 9) = v196[0];
      *&v205[6] = v171;
      BYTE8(v205[6]) = v167;
      *(&v205[17] + 9) = v194;
      *(&v205[9] + 9) = v186;
      outlined destroy of DateComponents(v205);
      v121 = v179;
      v122 = v178[0];
      v123 = v178[1];
LABEL_253:
      *v172 = v122;
      *(v172 + 16) = v123;
      *(v172 + 32) = v121;
      return;
    default:
      goto LABEL_260;
  }
}

Swift::Int _s10Foundation18_CalendarGregorianC4date19byAddingAndWrapping2toAA4DateVAA0J10ComponentsV_AHtAA0cB5ErrorOYKF@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v78 = *(a1 + 64);
  v8 = *(a1 + 72);
  v73 = *(a1 + 88);
  v68 = *(a1 + 104);
  v63 = *(a1 + 120);
  v69 = *(a1 + 128);
  v70 = *(a1 + 112);
  v65 = *(a1 + 80);
  v66 = *(a1 + 144);
  v61 = *(a1 + 152);
  v62 = *(a1 + 136);
  v57 = *(a1 + 160);
  v58 = *(a1 + 96);
  v59 = *(a1 + 168);
  v64 = *(a1 + 184);
  v79 = *(a1 + 192);
  v67 = *(a1 + 224);
  v74 = *(a1 + 200);
  v75 = *(a1 + 232);
  v71 = *(a1 + 176);
  v72 = *(a1 + 240);
  v77 = *(a1 + 248);
  v9 = *a2;
  v76 = *(a1 + 256);
  v80 = *(a1 + 264);
  v10 = *(a1 + 272);
  v11 = *(a1 + 280);
  if (*(a1 + 16))
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 16);
    if (*(a1 + 56))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *(v4 + 120);
    v13 = *(v4 + 112);
    swift_unknownObjectRetain();
    if (v7)
    {
LABEL_3:
      swift_unknownObjectRetain();
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  LOBYTE(v84) = 1;
  *&v82 = v9;
  __src[0] = v13;
  __src[1] = v12;
  swift_unknownObjectRetain();
  _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v6, __src, __dst, v85, v15);
  if (v5)
  {
    goto LABEL_42;
  }

  v9 = v85[0];
  if (v11)
  {
LABEL_4:
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_14:
    LOBYTE(v84) = 2;
    *&v82 = v9;
    __src[0] = v13;
    __src[1] = v12;
    _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v78, __src, __dst, v85, v14);
    if (v5)
    {
      goto LABEL_42;
    }

    v9 = v85[0];
    if (v80)
    {
      goto LABEL_6;
    }

LABEL_16:
    LOBYTE(v84) = 11;
    *&v82 = v9;
    __src[0] = v13;
    __src[1] = v12;
    _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v76, __src, __dst, v85, v14);
    if (v5)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

LABEL_12:
  LOBYTE(v84) = 12;
  *&v82 = v9;
  __src[0] = v13;
  __src[1] = v12;
  _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v10, __src, __dst, v85, v14);
  if (v5)
  {
    goto LABEL_42;
  }

  v9 = v85[0];
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v80 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v75)
  {
    goto LABEL_18;
  }

  LOBYTE(v84) = 11;
  *&v82 = v9;
  __src[0] = v13;
  __src[1] = v12;
  _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v67, __src, __dst, v85, v14);
  if (v5)
  {
    goto LABEL_42;
  }

LABEL_17:
  v9 = v85[0];
LABEL_18:
  if ((v77 & 1) == 0)
  {
    LOBYTE(v84) = 10;
    *&v82 = v9;
    __src[0] = v13;
    __src[1] = v12;
    _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v72, __src, __dst, v85, v14);
    if (v5)
    {
      goto LABEL_42;
    }

    v9 = v85[0];
  }

  v16 = v74;
  if (!v79)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    *&v82 = 14;
    v84 = *&v9;
    *&v85[0] = v13;
    *&v85[1] = v12;
    _CalendarGregorian.dateComponents(_:from:in:)(&v82, &v84, v85, __src);
    result = memcpy(__dst, __src, 0x11BuLL);
    if (BYTE8(__dst[3]) & 1) != 0 || (BYTE8(__dst[5]) & 1) != 0 || (BYTE8(__dst[4]))
    {
      goto LABEL_123;
    }

    v18 = *&__dst[5];
    v19 = *&__dst[5] - 1;
    if (__OFSUB__(*&__dst[5], 1))
    {
      __break(1u);
    }

    else
    {
      result = _CalendarGregorian.numberOfDaysInMonth(_:year:)(*&__dst[4], *&__dst[3]);
      if (!__OFSUB__(result, v18))
      {
        v20 = 604800 * (v19 / 7);
        if ((v19 / 7 * 604800) >> 64 == v20 >> 63)
        {
          if ((v79 * 604800) >> 64 == (604800 * v79) >> 63)
          {
            v21 = v19 / 7 + (result - v18) / 7 + 1;
            v22 = 604800 * v21;
            if ((v21 * 604800) >> 64 == (604800 * v21) >> 63)
            {
              v23 = v9 - v20;
              v24 = v9 + (604800 * v79);
              v25 = v22;
              v26 = remainder(v24 - v23, v22);
              outlined destroy of DateComponents(__dst);
              v14._time = v26 + v25;
              if (v26 >= 0.0)
              {
                v14._time = v26;
              }

              v9 = v23 + v14._time;
              if (v79 > 0)
              {
                *&v82 = v23 + v14._time;
                *&v85[0] = v13;
                *&v85[1] = v12;
                _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v82, v85, __src);
                if ((__src[2] & 1) == 0)
                {
                  *&v14._time = __src[1];
                  v9 = v9 - *&__src[1];
                }
              }

              goto LABEL_37;
            }

LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

LABEL_111:
        __break(1u);
        goto LABEL_112;
      }
    }

    __break(1u);
    goto LABEL_111;
  }

LABEL_37:
  if (v73)
  {
    goto LABEL_40;
  }

  LOBYTE(v84) = 3;
  *&v82 = v9;
  __src[0] = v13;
  __src[1] = v12;
  _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v65, __src, __dst, v85, v14);
  if (v5)
  {
LABEL_42:
    result = swift_unknownObjectRelease();
    v27 = __dst[2];
    v28 = __dst[1];
    *a3 = __dst[0];
    *(a3 + 16) = v28;
    *(a3 + 32) = v27;
    return result;
  }

  v9 = v85[0];
LABEL_40:
  if ((v68 & 1) == 0)
  {
    LOBYTE(v84) = 18;
    *&v82 = v9;
    __src[0] = v13;
    __src[1] = v12;
    _s10Foundation18_CalendarGregorianC10addAndWrap_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0jK0VtAA0cB5ErrorOYKF(&v84, &v82, v58, __src, __dst, v85, v14);
    if (v5)
    {
      goto LABEL_42;
    }

    v9 = v85[0];
  }

  v29 = v64;
  if (!v71)
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0)
  {
    *&v82 = 128;
    v84 = *&v9;
    *v85 = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(&v82, &v84, v85, __src);
    swift_unknownObjectRelease();
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    if (BYTE8(__dst[11]))
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v30 = *&__dst[11];
    result = _CalendarGregorian.firstWeekday.getter();
    v31 = v30 - result;
    if (!__OFSUB__(v30, result))
    {
      v32 = v31 + 7;
      if (v31 >= 0)
      {
        v32 = v30 - result;
      }

      if ((v32 * 86400) >> 64 == (86400 * v32) >> 63)
      {
        if ((v71 * 86400) >> 64 == (86400 * v71) >> 63)
        {
          v33 = v9 - (86400 * v32);
          v34 = remainder(v9 + (86400 * v71) - v33, 604800.0);
          if (v34 < 0.0)
          {
            v34 = v34 + 604800.0;
          }

          v9 = v33 + v34;
          if (v71 > 0)
          {
            *&v82 = v33 + v34;
            *&v85[0] = v13;
            *&v85[1] = v12;
            _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v82, v85, __src);
            if ((__src[2] & 1) == 0)
            {
              v9 = v9 - *&__src[1];
            }
          }

          goto LABEL_58;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_58:
  if (v70)
  {
    v35 = v63;
  }

  else
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    *&v85[0] = 16;
    *&v82 = v9;
    __dst[0] = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v85, &v82, __dst, __src);
    swift_unknownObjectRelease();
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    if (BYTE8(__dst[7]))
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v36 = *&__dst[7];
    result = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v70, *&__dst[7], 0, 24);
    v37 = result;
    if (v70 < 1 || result >= v36)
    {
      v37 = result - v36;
      if (__OFSUB__(result, v36))
      {
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v42 = 0.0;
    }

    else
    {
      v84 = 8288;
      v83 = v9;
      v82 = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v84, &v83, &v82, v85);
      swift_unknownObjectRelease();
      result = memcpy(__src, v85, 0x11BuLL);
      if (__src[17] & 1) != 0 || (__src[19] & 1) != 0 || (__src[21])
      {
        goto LABEL_124;
      }

      v38 = __src[16];
      v39 = __src[18];
      v40 = __src[20];
      result = outlined destroy of DateComponents(__src);
      if ((v38 * 60) >> 64 != (60 * v38) >> 63)
      {
        goto LABEL_120;
      }

      v41._time = v40 / 1000000000.0 + 0.0 + v39;
      v42 = v41._time + (60 * v38);
      LOBYTE(v84) = 3;
      *&v82 = v9;
      *(&result - 1) = _CalendarGregorian.firstInstant(of:at:)(&v84, v41);
      if ((LOBYTE(v85[1]) & 1) == 0)
      {
        v9 = v85[0];
      }
    }

    if ((v37 * 3600) >> 64 == (3600 * v37) >> 63)
    {
      v9 = v42 + v9 + (3600 * v37);
      goto LABEL_75;
    }

LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

LABEL_75:
  v43 = v62;
  if (!v69)
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    *&v85[0] = 32;
    *&v82 = v9;
    __dst[0] = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v85, &v82, __dst, __src);
    swift_unknownObjectRelease();
    memcpy(__dst, __src, 0x11BuLL);
    result = outlined destroy of DateComponents(__dst);
    if (BYTE8(__dst[8]))
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v44 = *&__dst[8];
    result = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v69, *&__dst[8], 0, 60);
    v45 = result;
    if (v69 < 1 || result >= v44)
    {
      v45 = result - v44;
      if (__OFSUB__(result, v44))
      {
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v49 = 0.0;
    }

    else
    {
      v84 = 8288;
      v83 = v9;
      v82 = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v84, &v83, &v82, v85);
      swift_unknownObjectRelease();
      result = memcpy(__src, v85, 0x11BuLL);
      if (__src[17] & 1) != 0 || (__src[19] & 1) != 0 || (__src[21])
      {
        goto LABEL_125;
      }

      v46 = __src[18];
      v47 = __src[20];
      outlined destroy of DateComponents(__src);
      v48._time = v47 / 1000000000.0 + 0.0;
      v49 = v48._time + v46;
      LOBYTE(v84) = 4;
      *&v82 = v9;
      *(&result - 1) = _CalendarGregorian.firstInstant(of:at:)(&v84, v48);
      if ((LOBYTE(v85[1]) & 1) == 0)
      {
        v9 = v85[0];
      }
    }

    if ((v45 * 60) >> 64 == (60 * v45) >> 63)
    {
      v9 = v49 + v9 + (60 * v45);
      goto LABEL_90;
    }

    goto LABEL_118;
  }

LABEL_90:
  if (v61 || !v66)
  {
    result = swift_unknownObjectRelease();
    v55 = a4;
    if (v59)
    {
LABEL_104:
      *v55 = v9;
      return result;
    }

LABEL_102:
    if (v57)
    {
      v9 = v57 * 0.000000001 + v9;
    }

    goto LABEL_104;
  }

  *&v85[0] = 64;
  *&v82 = v9;
  __dst[0] = *(v4 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v85, &v82, __dst, __src);
  swift_unknownObjectRelease();
  memcpy(__dst, __src, 0x11BuLL);
  result = outlined destroy of DateComponents(__dst);
  if ((BYTE8(__dst[9]) & 1) == 0)
  {
    v50 = *&__dst[9];
    v51 = specialized _CalendarGregorian.add(amount:to:wrappingTo:)(v66, *&__dst[9], 0, 60);
    if (v51 < v50 && v66 >= 1)
    {
      v84 = 8288;
      v83 = v9;
      v82 = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v84, &v83, &v82, v85);
      swift_unknownObjectRelease();
      result = memcpy(__src, v85, 0x11BuLL);
      if ((__src[17] & 1) == 0 && (__src[19] & 1) == 0 && (__src[21] & 1) == 0)
      {
        v52 = __src[20];
        outlined destroy of DateComponents(__src);
        v53._time = v52 / 1000000000.0;
        v54 = v53._time + 0.0;
        LOBYTE(v84) = 5;
        *&v82 = v9;
        _CalendarGregorian.firstInstant(of:at:)(&v84, v53);
        if ((LOBYTE(v85[1]) & 1) == 0)
        {
          v9 = v85[0];
        }

        result = swift_unknownObjectRelease();
LABEL_107:
        v55 = a4;
        v9 = v54 + v9 + v51;
        if (v59)
        {
          goto LABEL_104;
        }

        goto LABEL_102;
      }

      goto LABEL_129;
    }

    result = swift_unknownObjectRelease();
    v56 = __OFSUB__(v51, v50);
    v51 -= v50;
    if (!v56)
    {
      v54 = 0.0;
      goto LABEL_107;
    }

    goto LABEL_122;
  }

LABEL_130:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError()
{
  result = lazy protocol witness table cache variable for type GregorianCalendarError and conformance GregorianCalendarError;
  if (!lazy protocol witness table cache variable for type GregorianCalendarError and conformance GregorianCalendarError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GregorianCalendarError and conformance GregorianCalendarError);
  }

  return result;
}

uint64_t specialized _CalendarGregorian.add(amount:to:wrappingTo:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    return a2;
  }

  v4 = a2 + result;
  if (__OFADD__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4 - a3;
  if (__OFSUB__(v4, a3))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_17;
  }

  v7 = v5 % v6;
  if (v7 < 0)
  {
    v8 = __OFADD__(v7, v6);
    v7 += v6;
    if (v8)
    {
      goto LABEL_18;
    }
  }

  a2 = v7 + a3;
  if (!__OFADD__(v7, a3))
  {
    return a2;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GregorianCalendarError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for GregorianCalendarError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for GregorianCalendarError(uint64_t result, char a2)
{
  v2 = *(result + 32) & 1 | (a2 << 7);
  *(result + 16) &= 1uLL;
  *(result + 32) = v2;
  return result;
}

uint64_t _CalendarProtocol.localeIdentifier.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(v6);
  if (!v6[0])
  {
    return 0;
  }

  v2 = v6[1];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t protocol witness for _CalendarProtocol.localeIdentifier.getter in conformance _CalendarICU()
{
  if (!*(v0 + 104))
  {
    return 0;
  }

  v1 = *(v0 + 112);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 64);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t _CalendarProtocol.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0xE000000000000000;
  (*(a2 + 24))(&v3);
  _print_unlocked<A, B>(_:_:)();
  return v4;
}

uint64_t specialized _CalendarProtocol.localeIdentifier.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 32));
  if (!v1)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v29 = *(&static LocaleCache.cache + 8);
    v3 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v3 + 32));
    if (!v5)
    {
      LocaleCache.preferences()(&v40);
      v7 = v6;
      type metadata accessor for _LocaleICU();
      v4 = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v8 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      if (v7)
      {
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v3 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v3 + 16), v33);
        os_unfair_lock_unlock((v3 + 32));
        outlined destroy of LocalePreferences(&v40);

        v4 = *(&v33[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 200))(&v40, ObjectType, v4);
    swift_unknownObjectRelease();
    v10 = v40;
    if (v40 && v40 != 7)
    {
      *&v29 = type metadata accessor for _CalendarICU();
      v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v12 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v29 = type metadata accessor for _CalendarGregorian();
      v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v12 = type metadata accessor for _CalendarGregorian;
    }

    v13 = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(v11, v12);
    v31 = v10;
    v30[0] = 0;
    v30[1] = 0;
    v14 = static LocaleCache.cache;
    v28 = *(&static LocaleCache.cache + 8);
    v15 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 32));
    if (!v17)
    {
      v27[1] = 0;
      *&v33[0] = v14;
      *(v33 + 8) = v28;
      LocaleCache.preferences()(&v40);
      v19 = v18;
      type metadata accessor for _LocaleICU();
      v16 = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v20 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      v17 = v20;
      if (v19)
      {
        *&v28 = v27;
        MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock((v15 + 32));
        partial apply for closure #2 in LocaleCache._currentAndCache.getter((v15 + 16), v33);
        os_unfair_lock_unlock((v15 + 32));
        outlined destroy of LocalePreferences(&v40);

        v16 = *(&v33[0] + 1);
        v17 = *&v33[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    *&v40 = v17;
    *(&v40 + 1) = v16;
    *&v33[0] = 0;
    BYTE8(v33[0]) = 1;
    v21 = (*(v13 + 16))(&v31, v30, &v40, 0, 1, 0, 1, v33, v29, v13);
    MEMORY[0x1EEE9AC00](v21);
    os_unfair_lock_lock((v0 + 32));
    partial apply for closure #2 in CalendarCache.current.getter((v0 + 16), &v40);
    os_unfair_lock_unlock((v0 + 32));
    swift_unknownObjectRelease();
    v2 = *(&v40 + 1);
  }

  v22 = swift_getObjectType();
  (*(v2 + 32))(v48, v22, v2);
  swift_unknownObjectRelease();
  if (!v48[0])
  {
    return 0;
  }

  v23 = v48[1];
  v24 = swift_getObjectType();
  v25 = (*(v23 + 64))(v24, v23);
  swift_unknownObjectRelease();
  return v25;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByRecurring(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for Calendar.DatesByRecurring(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByRecurring.Iterator and conformance Calendar.DatesByRecurring.Iterator()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByRecurring.Iterator and conformance Calendar.DatesByRecurring.Iterator;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByRecurring.Iterator and conformance Calendar.DatesByRecurring.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByRecurring.Iterator and conformance Calendar.DatesByRecurring.Iterator);
  }

  return result;
}

uint64_t Calendar.DatesByRecurring.Iterator.init(start:matching:range:)@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, int8x16_t a5@<Q0>)
{
  a5.i64[0] = *a1;
  v82 = a5;
  v7 = a2[5];
  v112 = a2[4];
  v113 = v7;
  v114 = a2[6];
  v115 = *(a2 + 14);
  v8 = a2[1];
  v108 = *a2;
  v109 = v8;
  v9 = a2[3];
  v110 = a2[2];
  v111 = v9;
  v76 = *a3;
  v72 = *(a3 + 8);
  v10 = *(a3 + 16);
  v12 = *(&v108 + 1);
  v11 = v108;
  v79 = v109;
  v13 = BYTE1(v109);
  v78 = SBYTE2(v109);
  v14 = BYTE2(v109);
  v94 = *(a2 + 67);
  v95 = *(a2 + 83);
  v96[0] = *(a2 + 99);
  *(v96 + 13) = *(a2 + 14);
  v91 = *(a2 + 19);
  v92 = *(a2 + 35);
  v93 = *(a2 + 51);
  v83[0] = v108;
  type metadata accessor for _CalendarAutoupdating();
  __src[0] = swift_initStaticObject();
  __src[1] = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating();
  outlined init with copy of Calendar.RecurrenceRule(&v108, v86);
  swift_unknownObjectRetain();
  v15 = specialized static Calendar.== infix(_:_:)(v83, __src);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15)
  {
    static Calendar.current.getter(v86);
    v16 = v13;
    v17 = v86[0];
    v12 = v86[1];
    swift_unknownObjectRelease();
    v11 = v17;
    v13 = v16;
  }

  LOBYTE(v18) = 0;
  *&v89 = v11;
  *(&v89 + 1) = v12;
  v90[0] = v79;
  v90[1] = v13;
  v90[2] = v14;
  *&v90[67] = *(a2 + 83);
  *&v90[83] = *(a2 + 99);
  *&v90[35] = *(a2 + 51);
  *&v90[51] = *(a2 + 67);
  *&v90[96] = *(a2 + 14);
  *&v90[3] = *(a2 + 19);
  *&v90[19] = *(a2 + 35);
  v104 = *&v90[48];
  v105 = *&v90[64];
  v106 = *&v90[80];
  v107 = *&v90[96];
  v100 = v89;
  v101 = *v90;
  v102 = *&v90[16];
  v103 = *&v90[32];
  v99 = v10;
  v19 = *(*&v90[88] + 16);
  v20 = v19 != 0;
  v21 = v14 != 5;
  if (v14 != 5)
  {
    v20 = 0;
  }

  v73 = v20;
  v22 = *(*&v90[80] + 16);
  v23 = 2;
  if (!v22)
  {
    v21 = 2;
  }

  v74 = v21;
  v24 = *(*&v90[72] + 16);
  if (v24)
  {
    v81 = 2;
    if (v14 > 5)
    {
      goto LABEL_12;
    }

    v18 = 0x23u >> v14;
    v25 = (0x202020101uLL >> (8 * (v14 & 0x1Fu))) & 3;
  }

  else
  {
    LOBYTE(v25) = 2;
  }

  v81 = v25;
LABEL_12:
  v26 = v18;
  v27 = *(*&v90[64] + 16);
  v28 = v27 != 0;
  v29 = 0x2010101uLL >> (8 * v14);
  if (!v27)
  {
    LOBYTE(v29) = 2;
  }

  v75 = v29;
  if (*(*&v90[56] + 16))
  {
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v23 = 0;
      }

      else
      {
        v23 = v27 != 0;
        if (v14 != 4)
        {
          v23 = (v24 | v19 | v27) != 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  v77 = v23;
  v70 = *(*&v90[40] + 16);
  v71 = *(*&v90[48] + 16);
  v69 = *(*&v90[32] + 16);
  if (v10)
  {
    v98 = 1;
    outlined init with copy of Calendar.RecurrenceRule(&v89, v86);
    v68 = 0;
  }

  else
  {
    LOBYTE(__src[0]) = 0x1020A030405uLL >> (8 * v14);
    outlined init with copy of Calendar.RecurrenceRule(&v89, v86);
    v30 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v76)
    {
      v31 = v76;
    }

    if (*&static Date.validCalendarRange >= v31)
    {
      v32 = *&static Date.validCalendarRange;
    }

    else
    {
      v32 = v31;
    }

    ObjectType = swift_getObjectType();
    *v83 = v32;
    (*(v12 + 160))(v86, __src, v83, ObjectType, v12);
    swift_unknownObjectRelease();
    v34 = v86[0];
    if (LOBYTE(v86[2]))
    {
      v34 = 0;
    }

    v68 = v34;
    v98 = v86[2];
  }

  v35 = v73;
  v36 = qword_181233098[v78];
  v86[0] = v11;
  v86[1] = v12;
  *&v83[0] = v36;
  v87[0] = *v82.i64;
  swift_unknownObjectRetain();
  Calendar._dateComponents(_:from:)(v83, v87, __src);
  swift_unknownObjectRelease();
  if ((v26 & ((v81 & 1) == 0)) != 0)
  {
    v37 = 1;
    v38 = v77;
  }

  else
  {
    v39 = v28 & (0x37u >> v14);
    if (v75)
    {
      LOBYTE(v39) = 0;
    }

    v38 = v77;
    v40 = v39 | (v73 || v77 == 0);
    if (!v22 || (v74 & 1) != 0)
    {
      v53 = v73 | v40;
      v37 = v73;
      if ((v53 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v40 & 1) == 0)
      {
LABEL_45:
        if ((__src[9] & 1) == 0)
        {
          __src[8] = 1;
          LOBYTE(__src[9]) = 0;
          BYTE1(__src[35]) = 2;
        }

        goto LABEL_47;
      }

      v37 = 1;
    }
  }

  if ((__src[11] & 1) == 0)
  {
    __src[10] = 1;
    LOBYTE(__src[11]) = 0;
  }

  if (v37)
  {
    goto LABEL_45;
  }

LABEL_47:
  if (v73 && (v38 == 2 || (v38 & 1) != 0))
  {
    v67 = v13;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    BYTE1(__src[35]) = 2;
    v41 = swift_getObjectType();
    LOBYTE(v86[0]) = 7;
    v42 = *(v12 + 136);
    swift_unknownObjectRetain();
    v43 = v42(v86, v41, v12);
    v45 = v44;
    v35 = v46;
    result = swift_unknownObjectRelease();
    if (v35)
    {
      goto LABEL_81;
    }

    outlined destroy of Calendar.RecurrenceRule(&v108);
    v48 = v45 - v43;
    if (__OFSUB__(v45, v43))
    {
      __break(1u);
    }

    else
    {
      *&v83[0] = 0x40000;
      v35 = v73;
      if (one-time initialization token for validCalendarRange == -1)
      {
LABEL_53:
        v49 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= *v82.i64)
        {
          v49 = *v82.i64;
        }

        if (*&static Date.validCalendarRange >= v49)
        {
          v49 = *&static Date.validCalendarRange;
        }

        v87[0] = v49;
        (*(v12 + 192))(v86, v83, v87, v41, v12);
        result = outlined destroy of DateComponents(v86);
        v50 = v86[12];
        if (LOBYTE(v86[13]))
        {
          v50 = 0;
        }

        if (v48)
        {
          if (v50 != 0x8000000000000000 || v48 != -1)
          {
            v51 = v50 % v48;
            v52 = v51 == 0x7FFFFFFFFFFFFFFFLL;
            if (v51 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v51 = 0;
            }

            __src[12] = v51;
            LOBYTE(__src[13]) = v52;
            v13 = v67;
            goto LABEL_67;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_81:
        __break(1u);
        return result;
      }
    }

    swift_once();
    goto LABEL_53;
  }

LABEL_66:
  outlined destroy of Calendar.RecurrenceRule(&v108);
LABEL_67:
  memcpy(__dst, __src, 0x11BuLL);
  memcpy(&v84[7], __src, 0x11BuLL);
  v84[296] = 1;
  *&v83[0] = v11;
  *(&v83[0] + 1) = v12;
  v83[1] = v82.u64[0];
  *&v83[2] = 0;
  BYTE8(v83[2]) = 1;
  memcpy(&v83[2] + 9, v84, 0x122uLL);
  BYTE11(v83[20]) = v79;
  WORD6(v83[20]) = v13 & 1;
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(__dst, v86);
  Calendar.DatesByMatching.makeIterator()(v97);
  memcpy(v86, v83, 0x14EuLL);
  outlined destroy of Calendar.DatesByMatching(v86);
  memcpy(v87, __src, 0x11BuLL);
  outlined destroy of DateComponents(v87);
  v55 = qword_1812330C8[v78];
  if (v35)
  {
    v56 = 0;
  }

  else
  {
    v56 = 2;
  }

  if (v70)
  {
    v57 = v14 == 0;
  }

  else
  {
    v57 = 2;
  }

  v58 = v13;
  if (v71)
  {
    v59 = v14 < 2;
  }

  else
  {
    v59 = 2;
  }

  *&v83[0] = v11;
  *(&v83[0] + 1) = v12;
  LOBYTE(v83[1]) = v79;
  BYTE1(v83[1]) = v58;
  BYTE2(v83[1]) = v14;
  *(&v83[4] + 3) = v94;
  *v54.i64 = *v82.i64 - trunc(*v82.i64);
  *(&v83[5] + 3) = v95;
  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  v80 = vbslq_s8(vnegq_f64(v60), v54, v82).u64[0];
  *(&v83[6] + 3) = v96[0];
  *&v83[7] = *(v96 + 13);
  *(&v83[1] + 3) = v91;
  *(&v83[2] + 3) = v92;
  *(&v83[3] + 3) = v93;
  outlined destroy of Calendar.RecurrenceRule(v83);
  *a4 = v82.i64[0];
  v61 = v105;
  *(a4 + 72) = v104;
  *(a4 + 88) = v61;
  *(a4 + 104) = v106;
  v62 = v101;
  *(a4 + 8) = v100;
  *(a4 + 24) = v62;
  v63 = v103;
  *(a4 + 40) = v102;
  v64 = v99;
  v65 = v98;
  v66 = v107;
  *(a4 + 56) = v63;
  *(a4 + 120) = v66;
  *(a4 + 128) = v76;
  *(a4 + 136) = v72;
  *(a4 + 144) = v64;
  *(a4 + 152) = v68;
  *(a4 + 160) = v65;
  *(a4 + 168) = v80;
  *(a4 + 184) = v74;
  *(a4 + 185) = v56;
  *(a4 + 186) = v81;
  *(a4 + 187) = v75;
  *(a4 + 188) = v77;
  *(a4 + 189) = v59;
  *(a4 + 190) = v57;
  *(a4 + 191) = 2 * (v69 == 0);
  result = memcpy((a4 + 192), v97, 0x179uLL);
  *(a4 + 576) = 0;
  *(a4 + 584) = 0;
  *(a4 + 592) = v55;
  *(a4 + 600) = 0;
  *(a4 + 608) = MEMORY[0x1E69E7CC0];
  return result;
}

Swift::Void __swiftcall Calendar.DatesByRecurring.Iterator.nextGroup()()
{
  if (*(v1 + 584))
  {
    goto LABEL_177;
  }

  v0 = v1;
  next #1 () in Calendar.DatesByRecurring.Iterator.nextGroup()(v1, &v213);
  if (v214)
  {
LABEL_3:
    *(v1 + 584) = 1;
    return;
  }

  v4 = &v200;
  while (1)
  {
    v7 = *(v1 + 576);
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v10 = *(v1 + 32);
    if (!v10)
    {
      goto LABEL_172;
    }

    if (v9 == 0x8000000000000000 && v10 == -1)
    {
      goto LABEL_173;
    }

    if (!(v9 % v10))
    {
      v6 = v213;
      if ((*(v1 + 160) & 1) != 0 || v213 >= *(v1 + 152))
      {
        break;
      }
    }

    next #1 () in Calendar.DatesByRecurring.Iterator.nextGroup()(v1, &v213);
    if (v214)
    {
      goto LABEL_3;
    }
  }

  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v5 = v1 + 8;
  v228 = 327932;
  v12 = one-time initialization token for validCalendarRange;
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v13 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v13 = v6;
    }

    if (*&static Date.validCalendarRange >= v13)
    {
      v14 = *&static Date.validCalendarRange;
    }

    else
    {
      v14 = v13;
    }

    ObjectType = swift_getObjectType();
    v203 = v14;
    (*(v2 + 192))(&v213, &v228, &v203, ObjectType, v2);
    if ((*(v0 + 26) & 0xFE) != 4)
    {
      swift_bridgeObjectRelease_n();
      *&v189 = 0.0;
      *&v190 = 0.0;
      goto LABEL_26;
    }

    v16 = *(v0 + 186);
    if (v16 != 2 && (v16 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      v190 = *(v0 + 96);

      *&v189 = 0.0;
LABEL_26:
      v17 = 0;
      goto LABEL_36;
    }

    v17 = *(v0 + 104);
    if (*(v17 + 16))
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV14RecurrenceRuleV5MonthVGMd);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_181218E20;
      if (v216)
      {
        goto LABEL_184;
      }

      v17 = v18;
      v19 = v227;
      *(v18 + 32) = v215;
      *(v18 + 40) = v19 & 1;
    }

    if (*(*(v0 + 88) + 16))
    {
      v189 = *(v0 + 88);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      *&v20 = COERCE_DOUBLE(swift_allocObject());
      *(v20 + 16) = xmmword_181218E20;
      if (v218)
      {
        goto LABEL_185;
      }

      v189 = v20;
      *(v20 + 32) = v217;
    }

    swift_bridgeObjectRelease_n();
    *&v190 = 0.0;
LABEL_36:
    v21 = *(v0 + 188);
    if (v21 == 2 || (v21 & 1) != 0)
    {
      break;
    }

    v187 = *(v0 + 80);

    if (*(v0 + 26) != 5)
    {
      goto LABEL_51;
    }

    v22 = *(v0 + 184);
    if (v22 != 2 && (v22 & 1) == 0)
    {
      goto LABEL_51;
    }

    *&v189 = 0.0;
    *&v190 = 0.0;
    v17 = 0;
LABEL_52:
    v188 = 0;
    v27 = *(v0 + 185);
    if (v27 != 2 && (v27 & 1) == 0)
    {
      v188 = *(v0 + 112);

      v17 = 0;
    }

    v186 = v17;
    if (*(v0 + 26) >= 2u)
    {
      v28 = *(v0 + 189);
      if (v28 != 2 && (v28 & 1) == 0)
      {
        v185 = *(v0 + 72);

        goto LABEL_64;
      }

      if (v220)
      {

        v185 = 0;
      }

      else
      {
        v29 = v219;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_181218E20;
        v185 = v30;
        *(v30 + 32) = v29;
LABEL_64:
      }

      if (!*(v0 + 26))
      {
        goto LABEL_71;
      }

      goto LABEL_66;
    }

    v185 = 0;
    if (!*(v0 + 26))
    {
      goto LABEL_71;
    }

LABEL_66:
    v31 = *(v0 + 190);
    if (v31 != 2 && (v31 & 1) == 0)
    {
      v184 = *(v0 + 64);

LABEL_73:

      goto LABEL_74;
    }

    if ((v222 & 1) == 0)
    {
      v32 = v221;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_181218E20;
      v184 = v33;
      *(v33 + 32) = v32;
      goto LABEL_73;
    }

LABEL_71:
    v184 = 0;
LABEL_74:
    v34 = *(v0 + 191);
    if (v34 == 2 || (v34 & 1) != 0)
    {
      if (v224)
      {

        v183 = 0;
        goto LABEL_81;
      }

      v35 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_181218E20;
      v183 = v36;
      *(v36 + 32) = v35;
    }

    else
    {
      v183 = *(v0 + 56);
    }

LABEL_81:
    LOBYTE(v192) = 0x1020A030405uLL >> (8 * *(v0 + 26));
    v37 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v6)
    {
      v37 = v6;
    }

    if (*&static Date.validCalendarRange >= v37)
    {
      v37 = *&static Date.validCalendarRange;
    }

    v200 = v37;
    (*(v2 + 160))(&v203, &v192, &v200, ObjectType, v2);
    if (v205)
    {
      goto LABEL_183;
    }

    v38 = v203;
    v39 = v204 + v203;
    v40 = *&v189;
    if (v204 + v203 < v203)
    {
      __break(1u);
LABEL_180:
      ObjectType = specialized _ArrayBuffer._consumeAndCreateNew()(ObjectType);
      goto LABEL_116;
    }

    v203 = *&v3;
    v204 = *&v2;
    *&v192 = v38;
    v230[0] = v189;
    v230[1] = v190;
    v230[2] = v188;
    v230[3] = v186;
    v230[4] = v187;
    v230[5] = v185;
    v230[6] = v184;
    v230[7] = v183;
    v200 = v38;
    v201 = v39;
    LOBYTE(v191) = *(v0 + 24);
    v212 = *(v0 + 25);
    dates._rawValue = Calendar._dates(startingAfter:matching:in:matchingPolicy:repeatedTimePolicy:)(&v192, v230, &v200, &v191, &v212);
    if (*(v0 + 184))
    {
      v42 = *(v5 + 64);
      v41 = *(v5 + 80);
      v43 = *(v5 + 48);
      *(v4 + 4) = v42;
      *(v4 + 5) = v41;
      v44 = *(v5 + 80);
      *(v4 + 6) = *(v5 + 96);
      v45 = *(v5 + 16);
      *v4 = *v5;
      *(v4 + 1) = v45;
      v46 = *(v5 + 48);
      v48 = *v5;
      v47 = *(v5 + 16);
      v49 = *(v5 + 32);
      *(v4 + 2) = v49;
      *(v4 + 3) = v46;
      v196 = v42;
      v197 = v44;
      v198 = *(v5 + 96);
      v192 = v48;
      v193 = v47;
      v202 = *(v5 + 112);
      v199 = *(v5 + 112);
      v194 = v49;
      v195 = v43;
      v191 = v6;
      outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
      Calendar.RecurrenceRule._limitMonths(dates:anchor:)(&dates, v50);
      v51 = v197;
      *(v4 + 12) = v196;
      *(v4 + 13) = v51;
      *(v4 + 14) = v198;
      v211 = v199;
      v52 = v193;
      *(v4 + 8) = v192;
      *(v4 + 9) = v52;
      v53 = v195;
      *(v4 + 10) = v194;
      *(v4 + 11) = v53;
      outlined destroy of Calendar.RecurrenceRule(&v203);
      if ((*(v0 + 186) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if ((*(v0 + 186) & 1) == 0)
    {
LABEL_89:
      if (*(v0 + 187))
      {
        goto LABEL_90;
      }

      goto LABEL_103;
    }

    v97 = *(v5 + 64);
    v96 = *(v5 + 80);
    v98 = *(v5 + 48);
    *(v4 + 4) = v97;
    *(v4 + 5) = v96;
    v99 = *(v5 + 80);
    *(v4 + 6) = *(v5 + 96);
    v100 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 1) = v100;
    v101 = *(v5 + 48);
    v103 = *v5;
    v102 = *(v5 + 16);
    v104 = *(v5 + 32);
    *(v4 + 2) = v104;
    *(v4 + 3) = v101;
    v196 = v97;
    v197 = v99;
    v198 = *(v5 + 96);
    v192 = v103;
    v193 = v102;
    v202 = *(v5 + 112);
    v199 = *(v5 + 112);
    v194 = v104;
    v195 = v98;
    outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
    Calendar.RecurrenceRule._limitDaysOfTheYear(dates:anchor:)(&dates, v105);
    v106 = v197;
    *(v4 + 12) = v196;
    *(v4 + 13) = v106;
    *(v4 + 14) = v198;
    v211 = v199;
    v107 = v193;
    *(v4 + 8) = v192;
    *(v4 + 9) = v107;
    v108 = v195;
    *(v4 + 10) = v194;
    *(v4 + 11) = v108;
    outlined destroy of Calendar.RecurrenceRule(&v203);
    if (*(v0 + 187))
    {
LABEL_90:
      v55 = *(v5 + 64);
      v54 = *(v5 + 80);
      v56 = *(v5 + 48);
      *(v4 + 4) = v55;
      *(v4 + 5) = v54;
      v57 = *(v5 + 80);
      *(v4 + 6) = *(v5 + 96);
      v58 = *(v5 + 16);
      *v4 = *v5;
      *(v4 + 1) = v58;
      v59 = *(v5 + 48);
      v61 = *v5;
      v60 = *(v5 + 16);
      v62 = *(v5 + 32);
      *(v4 + 2) = v62;
      *(v4 + 3) = v59;
      v196 = v55;
      v197 = v57;
      v198 = *(v5 + 96);
      v192 = v61;
      v193 = v60;
      v202 = *(v5 + 112);
      v199 = *(v5 + 112);
      v194 = v62;
      v195 = v56;
      outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
      Calendar.RecurrenceRule._limitDaysOfTheMonth(dates:anchor:)(&dates, v63);
      v64 = v197;
      *(v4 + 12) = v196;
      *(v4 + 13) = v64;
      *(v4 + 14) = v198;
      v211 = v199;
      v65 = v193;
      *(v4 + 8) = v192;
      *(v4 + 9) = v65;
      v66 = v195;
      *(v4 + 10) = v194;
      *(v4 + 11) = v66;
      outlined destroy of Calendar.RecurrenceRule(&v203);
      if ((v21 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_104;
    }

LABEL_103:
    if ((v21 & 1) == 0)
    {
LABEL_91:
      if (*(v0 + 189))
      {
        goto LABEL_92;
      }

      goto LABEL_105;
    }

LABEL_104:
    v110 = *(v5 + 64);
    v109 = *(v5 + 80);
    v111 = *(v5 + 48);
    *(v4 + 4) = v110;
    *(v4 + 5) = v109;
    v112 = *(v5 + 80);
    *(v4 + 6) = *(v5 + 96);
    v113 = *(v5 + 16);
    *v4 = *v5;
    *(v4 + 1) = v113;
    v114 = *(v5 + 48);
    v116 = *v5;
    v115 = *(v5 + 16);
    v117 = *(v5 + 32);
    *(v4 + 2) = v117;
    *(v4 + 3) = v114;
    v196 = v110;
    v197 = v112;
    v198 = *(v5 + 96);
    v192 = v116;
    v193 = v115;
    v202 = *(v5 + 112);
    v199 = *(v5 + 112);
    v194 = v117;
    v195 = v111;
    v191 = v6;
    outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
    Calendar.RecurrenceRule._limitWeekdays(dates:anchor:)(&dates, v118);
    v119 = v197;
    *(v4 + 12) = v196;
    *(v4 + 13) = v119;
    *(v4 + 14) = v198;
    v211 = v199;
    v120 = v193;
    *(v4 + 8) = v192;
    *(v4 + 9) = v120;
    v121 = v195;
    *(v4 + 10) = v194;
    *(v4 + 11) = v121;
    outlined destroy of Calendar.RecurrenceRule(&v203);
    if (*(v0 + 189))
    {
LABEL_92:
      v68 = *(v5 + 64);
      v67 = *(v5 + 80);
      v69 = *(v5 + 48);
      *(v4 + 4) = v68;
      *(v4 + 5) = v67;
      v70 = *(v5 + 80);
      *(v4 + 6) = *(v5 + 96);
      v71 = *(v5 + 16);
      *v4 = *v5;
      *(v4 + 1) = v71;
      v72 = *(v5 + 48);
      v74 = *v5;
      v73 = *(v5 + 16);
      v75 = *(v5 + 32);
      *(v4 + 2) = v75;
      *(v4 + 3) = v72;
      v196 = v68;
      v197 = v70;
      v198 = *(v5 + 96);
      v192 = v74;
      v193 = v73;
      v202 = *(v5 + 112);
      v199 = *(v5 + 112);
      v194 = v75;
      v195 = v69;
      LOBYTE(v191) = 4;
      outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
      Calendar.RecurrenceRule._limitTimeComponent(_:dates:anchor:)(&v191, &dates, v76);
      v77 = v197;
      *(v4 + 12) = v196;
      *(v4 + 13) = v77;
      *(v4 + 14) = v198;
      v211 = v199;
      v78 = v193;
      *(v4 + 8) = v192;
      *(v4 + 9) = v78;
      v79 = v195;
      *(v4 + 10) = v194;
      *(v4 + 11) = v79;
      outlined destroy of Calendar.RecurrenceRule(&v203);
      if (*(v0 + 190))
      {
        goto LABEL_106;
      }

      goto LABEL_93;
    }

LABEL_105:
    if (*(v0 + 190))
    {
LABEL_106:
      v123 = *(v5 + 64);
      v122 = *(v5 + 80);
      v124 = *(v5 + 48);
      *(v4 + 4) = v123;
      *(v4 + 5) = v122;
      v125 = *(v5 + 80);
      *(v4 + 6) = *(v5 + 96);
      v126 = *(v5 + 16);
      *v4 = *v5;
      *(v4 + 1) = v126;
      v127 = *(v5 + 48);
      v129 = *v5;
      v128 = *(v5 + 16);
      v130 = *(v5 + 32);
      *(v4 + 2) = v130;
      *(v4 + 3) = v127;
      v196 = v123;
      v197 = v125;
      v198 = *(v5 + 96);
      v192 = v129;
      v193 = v128;
      v202 = *(v5 + 112);
      v199 = *(v5 + 112);
      v194 = v130;
      v195 = v124;
      LOBYTE(v191) = 5;
      outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
      Calendar.RecurrenceRule._limitTimeComponent(_:dates:anchor:)(&v191, &dates, v131);
      v132 = v197;
      *(v4 + 12) = v196;
      *(v4 + 13) = v132;
      *(v4 + 14) = v198;
      v211 = v199;
      v133 = v193;
      *(v4 + 8) = v192;
      *(v4 + 9) = v133;
      v134 = v195;
      *(v4 + 10) = v194;
      *(v4 + 11) = v134;
      outlined destroy of Calendar.RecurrenceRule(&v203);
      if ((v34 & 1) == 0)
      {
        goto LABEL_95;
      }

LABEL_94:
      v81 = *(v5 + 64);
      v80 = *(v5 + 80);
      v82 = *(v5 + 48);
      *(v4 + 4) = v81;
      *(v4 + 5) = v80;
      v83 = *(v5 + 80);
      *(v4 + 6) = *(v5 + 96);
      v84 = *(v5 + 16);
      *v4 = *v5;
      *(v4 + 1) = v84;
      v85 = *(v5 + 48);
      v87 = *v5;
      v86 = *(v5 + 16);
      v88 = *(v5 + 32);
      *(v4 + 2) = v88;
      *(v4 + 3) = v85;
      v196 = v81;
      v197 = v83;
      v198 = *(v5 + 96);
      v192 = v87;
      v193 = v86;
      v202 = *(v5 + 112);
      v199 = *(v5 + 112);
      v194 = v88;
      v195 = v82;
      LOBYTE(v191) = 6;
      outlined init with copy of Calendar.RecurrenceRule(&v200, &v203);
      Calendar.RecurrenceRule._limitTimeComponent(_:dates:anchor:)(&v191, &dates, v89);
      v90 = v197;
      *(v4 + 12) = v196;
      *(v4 + 13) = v90;
      *(v4 + 14) = v198;
      v211 = v199;
      v91 = v193;
      *(v4 + 8) = v192;
      *(v4 + 9) = v91;
      v92 = v195;
      *(v4 + 10) = v194;
      *(v4 + 11) = v92;
      outlined destroy of Calendar.RecurrenceRule(&v203);
      goto LABEL_95;
    }

LABEL_93:
    if (v34)
    {
      goto LABEL_94;
    }

LABEL_95:
    rawValue = dates._rawValue;
    if (*(v0 + 168) > 0.0)
    {
      v94 = *(dates._rawValue + 2);
      if (v94)
      {
        v181 = *(v0 + 168);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
        }

        if (v94 < 4)
        {
          v95 = 0;
          goto LABEL_111;
        }

        v95 = v94 & 0x7FFFFFFFFFFFFFFCLL;
        v135 = vdupq_lane_s64(v181, 0);
        v136 = rawValue + 3;
        v137 = v94 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v138 = vaddq_f64(v135, *v136);
          v136[-1] = vaddq_f64(v135, v136[-1]);
          *v136 = v138;
          v136 += 2;
          v137 -= 4;
        }

        while (v137);
        if (v94 != v95)
        {
LABEL_111:
          v139 = v94 - v95;
          v140 = &rawValue[2].f64[v95];
          do
          {
            *v140 = *&v181 + *v140;
            ++v140;
            --v139;
          }

          while (v139);
        }

        dates._rawValue = rawValue;
      }
    }

    ObjectType = specialized _ArrayProtocol.filter(_:)(rawValue, v0);

    if (!*(v0 + 48))
    {
      v154 = ObjectType[2];
      if (v154)
      {
        v6 = *(v0 + 40);
        *&v155 = MEMORY[0x1E69E7CC0];
        v156 = 4;
        do
        {
          v159 = *&ObjectType[v156];
          if (v6 >= v159)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v203 = *&v155;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v155 + 16) + 1, 1);
              *&v155 = v203;
            }

            v158 = *(v155 + 16);
            v157 = *(v155 + 24);
            if (v158 >= v157 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v157 > 1), v158 + 1, 1);
              *&v155 = v203;
            }

            *(v155 + 16) = v158 + 1;
            *(v155 + 8 * v158 + 32) = v159;
          }

          ++v156;
          --v154;
        }

        while (v154);

        if (!*(v155 + 16))
        {
          outlined destroy of DateComponents(&v213);
          swift_unknownObjectRelease();
          *(v0 + 584) = 1;
          v203 = *&v189;
          v204 = *&v190;
          v205 = v188;
          v206 = v186;
          v207 = v187;
          v208 = v185;
          v209 = v184;
          v210 = v183;
          outlined destroy of Calendar._DateComponentCombinations(&v203);

          return;
        }

        ObjectType = v155;
      }

      else
      {

        ObjectType = MEMORY[0x1E69E7CC0];
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_180;
    }

LABEL_116:
    v141 = ObjectType[2];
    v182 = ObjectType + 4;
    *&v203 = ObjectType + 4;
    v204 = *&v141;
    v142 = _minimumMergeRunLength(_:)(v141);
    if (v142 >= v141)
    {
      if (v141 >= 2)
      {
        v146 = -1;
        v147 = 1;
        v148 = (ObjectType + 4);
        do
        {
          v149 = *&v182[v147];
          v150 = v146;
          v151 = v148;
          do
          {
            v152 = *v151;
            if (v149 >= *v151)
            {
              break;
            }

            *v151 = v149;
            v151[1] = v152;
            --v151;
          }

          while (!__CFADD__(v150++, 1));
          ++v147;
          ++v148;
          --v146;
        }

        while (v147 != v141);
      }
    }

    else
    {
      v143 = v142;
      v144 = v141 >> 1;
      if (v141 >= 2)
      {
        v145 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v145 + 16) = v144;
      }

      else
      {
        v145 = MEMORY[0x1E69E7CC0];
      }

      *&v200 = v145 + 32;
      v201 = *&v144;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(&v200, &v192, &v203, v143);
      *(v145 + 16) = 0;
    }

    dates._rawValue = ObjectType;
    v161 = *(v0 + 120);
    v162 = *(v161 + 16);
    if (!v162)
    {
      goto LABEL_168;
    }

    v203 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v162, 0);
    *&v5 = v203;
    v2 = v161 + 32;
    do
    {
      v164 = *v2;
      v2 += 8;
      v163 = v164;
      if (v164 < 0)
      {
        v165 = ObjectType[2] + v163;
      }

      else
      {
        v165 = v163 - 1;
      }

      v203 = *&v5;
      v167 = *(v5 + 16);
      v166 = *(v5 + 24);
      if (v167 >= v166 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v167 + 1, 1);
        *&v5 = v203;
      }

      *(v5 + 16) = v167 + 1;
      *(v5 + 8 * v167 + 32) = v165;
      --v162;
    }

    while (v162);
    *&v3 = 0.0;
    v168 = ObjectType[2];
    v4 = (v167 + 1);
    v169 = MEMORY[0x1E69E7CC0];
    *&v170 = MEMORY[0x1E69E7CC0];
    while (v4 != v3)
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_174;
      }

      v2 = *(v5 + 8 * v3++ + 32);
      if ((v2 & 0x8000000000000000) == 0 && v2 < v168)
      {
        v171 = swift_isUniquelyReferenced_nonNull_native();
        v203 = *&v170;
        if ((v171 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v170 + 16) + 1, 1);
          *&v170 = v203;
        }

        v173 = *(v170 + 16);
        v172 = *(v170 + 24);
        v174 = v173 + 1;
        if (v173 >= v172 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1);
          v174 = v173 + 1;
          v169 = MEMORY[0x1E69E7CC0];
          *&v170 = v203;
        }

        *(v170 + 16) = v174;
        *(v170 + 8 * v173 + 32) = *&v2;
      }
    }

    v2 = *(v170 + 16);
    if (*&v2 == 0.0)
    {

      v40 = *&v189;
LABEL_168:

      v180 = specialized Sequence.reversed()(v179);
      outlined destroy of DateComponents(&v213);
      swift_unknownObjectRelease();

      *(v0 + 608) = v180;
      v203 = v40;
      v204 = *&v190;
      v205 = v188;
      v206 = v186;
      v207 = v187;
      v208 = v185;
      v209 = v184;
      v210 = v183;
      outlined destroy of Calendar._DateComponentCombinations(&v203);

      return;
    }

    v203 = v169;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = 32;
    *&v175 = v203;
    v40 = *&v189;
    v5 = (ObjectType + 4);
    while (1)
    {
      v176 = *(v170 + v3);
      if ((v176 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v176 >= ObjectType[2])
      {
        goto LABEL_176;
      }

      v6 = *&v182[v176];
      v203 = *&v175;
      v178 = *(v175 + 16);
      v177 = *(v175 + 24);
      v4 = (v178 + 1);
      if (v178 >= v177 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v177 > 1), v178 + 1, 1);
        *&v175 = v203;
      }

      *(v175 + 16) = v4;
      *(v175 + 8 * v178 + 32) = v6;
      v3 += 8;
      --v2;
      if (*&v2 == 0.0)
      {

        goto LABEL_168;
      }
    }

LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    swift_once();
  }

  if (*(v0 + 26) != 3)
  {
    v187 = 0;
    v23 = *(v0 + 185);
    if (v23 == 2 || (v23 & 1) != 0)
    {
      goto LABEL_52;
    }
  }

  if (v226)
  {
LABEL_49:
    v187 = 0;
    goto LABEL_52;
  }

  if (v225 >= 0xFFFFFFFF80000000)
  {
    if (v225 > 0x7FFFFFFF)
    {
      goto LABEL_182;
    }

    if ((v225 - 8) >= 0xFFFFFFFFFFFFFFF9)
    {
      v24 = v17;
      v25 = outlined read-only object #0 of one-time initialization function for weekdays[v225 + 31];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV14RecurrenceRuleV7WeekdayOGMd);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_181218E20;
      *(v26 + 32) = v25;
      v17 = v24;
      v187 = v26;
      *(v26 + 40) = 0;

LABEL_51:
      *&v189 = 0.0;
      *&v190 = 0.0;
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}