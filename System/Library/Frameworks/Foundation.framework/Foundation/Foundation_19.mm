Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanDict()()
{
  v2 = v0;
  v3 = v293;
  v4 = *v0;
  v5 = v0[1];
  v436 = *(v0 + 4);
  v435[1] = v5;
  v435[0] = v4;
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v435);
  v6 = *(v0 + 5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v437 = v8 + 1;
  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = 9;
  *(v2 + 5) = v6;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of XMLPlistScanner.scanDict());
  v9 = 0;
  v10 = 1;
  while (1)
  {
    if (*(v2 + 4) == *(v2 + 3))
    {
      goto LABEL_140;
    }

    v11 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_dict);
    if (v12)
    {
      goto LABEL_138;
    }

    if (!v11)
    {
      goto LABEL_140;
    }

    v13 = XMLPlistScanner.peekXMLElement()()._0;
    if (v14)
    {
      goto LABEL_138;
    }

    if (v13 != Foundation_XMLPlistTag_key)
    {
      goto LABEL_148;
    }

    XMLPlistScanner.scanString(asKey:)(1);
    if (v15 || (XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_key), v16))
    {
LABEL_138:
      while (1)
      {
        v117 = v2[1];
        *(v3 + 2576) = *v2;
        *(v3 + 2592) = v117;
        v434 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v433);
        v118 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        v121 = v120 + 1;
        if (v120 >= v119 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v118);
        }

        *(v118 + 2) = v121;
        v122 = v118 + 32;
        *&v118[8 * v120 + 32] = 10;
        *&v118[8 * v437 + 32] = v121;
        v123 = v8 + 2;
        if (!__OFADD__(v8, 2))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_140:
        XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_dict);
        if (!v124)
        {
          goto LABEL_156;
        }

        v125 = v2[1];
        v291[0] = *v2;
        v291[1] = v125;
        v292 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v291);
        v118 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
        }

        v3 = *(v118 + 2);
        v126 = *(v118 + 3);
        v127 = (v3 + 1);
        if (v3 >= v126 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v3 + 1, 1, v118);
        }

        *(v118 + 2) = v127;
        v122 = v118 + 32;
        *&v118[8 * v3 + 32] = 10;
        *&v118[8 * v437 + 32] = v127;
        v123 = v8 + 2;
        if (!__OFADD__(v8, 2))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_148:
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v128 = 0xD000000000000028;
        *(v128 + 8) = 0x8000000181486440;
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;
        *(v128 + 32) = 5;
        swift_willThrow();
      }
    }

    v17 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_dict);
    if (v18)
    {
      goto LABEL_172;
    }

    if (!v17)
    {
      _StringGuts.grow(_:)(46);

      v129 = v2[1];
      v431[0] = *v2;
      v431[1] = v129;
      v432 = *(v2 + 4);
      BufferReader.lineNumber.getter();
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v130);

      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v131 = 0xD00000000000002CLL;
      *(v131 + 8) = 0x8000000181486470;
      *(v131 + 16) = 0;
      *(v131 + 24) = 0;
      *(v131 + 32) = 5;
      swift_willThrow();
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v431);
      v118 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
      }

      v133 = *(v118 + 2);
      v132 = *(v118 + 3);
      v134 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v118);
      }

      *(v118 + 2) = v134;
      v122 = v118 + 32;
      *&v118[8 * v133 + 32] = 10;
      *&v118[8 * v437 + 32] = v134;
      v123 = v8 + 2;
      if (!__OFADD__(v8, 2))
      {
        goto LABEL_177;
      }

      __break(1u);
LABEL_156:
      v135 = v2[1];
      v289[0] = *v2;
      v289[1] = v135;
      v290 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v289);
      v118 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
      }

      v3 = *(v118 + 2);
      v136 = *(v118 + 3);
      v137 = (v3 + 1);
      if (v3 >= v136 >> 1)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v3 + 1, 1, v118);
      }

      *(v118 + 2) = v137;
      v122 = v118 + 32;
      *&v118[8 * v3 + 32] = 10;
      *&v118[8 * v437 + 32] = v137;
      v123 = v8 + 2;
      if (!__OFADD__(v8, 2))
      {
        goto LABEL_177;
      }

      __break(1u);
LABEL_163:
      v138 = v2[1];
      *(v3 + 2400) = *v2;
      *(v3 + 2416) = v138;
      v425 = *(v2 + 4);
      goto LABEL_164;
    }

    LOBYTE(v19) = XMLPlistScanner.peekXMLElement()()._0;
    if (v20)
    {
      goto LABEL_172;
    }

    v1 = v19;
    if (v19 > 2u)
    {
      if (((1 << v19) & 0x1E0) != 0)
      {
        if ((v19 & 0x100) != 0)
        {
          goto LABEL_163;
        }

        LOWORD(v21) = 0;
        v22 = XMLPlistScanner.scanThroughCloseTag(_:)(v19);
        v24 = v23;
        v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v25 = v24 - v22;
        v26 = *(v2 + 1);
        v27 = v22 - *v2;
        v28 = *(v2 + 4);
        v426[0] = *v2;
        v426[1] = v26;
        v427 = v2[1];
        v428 = v28;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v426);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_18121D6B0;
        *(v29 + 32) = v1;
        *(v29 + 40) = v25;
        v3 = v293;
        *(v29 + 48) = v27;
      }

      else
      {
        if (((1 << v19) & 0x18) == 0)
        {
          if ((v19 & 0x100) != 0)
          {
            LOWORD(v21) = 0;
          }

          else
          {
            XMLPlistScanner.checkForCloseTag(_:)(v19);
            LOWORD(v21) = v35;
            if (v35)
            {
              goto LABEL_172;
            }
          }

          v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
          v51 = v2[1];
          v429[0] = *v2;
          v429[1] = v51;
          v430 = *(v2 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v429);
          v52 = *(v2 + 5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v52);
          }

          LOBYTE(v33) = v1;
          *(v52 + 2) = v54 + 1;
          *&v52[8 * v54 + 32] = v1;
          *(v2 + 5) = v52;
          v3 = v293;
          goto LABEL_130;
        }

        v30 = v19;
        if ((v19 & 0x100) == 0)
        {
          XMLPlistScanner.scanString(asKey:)(v19 == 3);
          if (v31)
          {
            goto LABEL_172;
          }

          v32 = v1;
LABEL_128:
          XMLPlistScanner.checkForCloseTag(_:)(v32);
LABEL_129:
          LOWORD(v21) = v34;
          if (v34)
          {
            goto LABEL_172;
          }

          goto LABEL_130;
        }

        LOWORD(v21) = 0;
        v49 = v2[1];
        v423[0] = *v2;
        v423[1] = v49;
        v424 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v423);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_18121D6B0;
        v50 = 12;
        if (v30 == 3)
        {
          v50 = 13;
        }

        *(v29 + 40) = 0;
        *(v29 + 48) = 0;
        *(v29 + 32) = v50;
      }

      goto LABEL_55;
    }

    if (!v19)
    {
      break;
    }

    if (v19 == 1)
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanArray()();
        goto LABEL_129;
      }

      LOWORD(v21) = 0;
      v55 = v2[1];
      v419[0] = *v2;
      v419[1] = v55;
      v420 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v419);
      v56 = *(*(v2 + 5) + 16);
      v57 = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        goto LABEL_237;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18121D6C0;
      v58 = 8;
    }

    else
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanDict()();
        goto LABEL_129;
      }

      LOWORD(v21) = 0;
      v59 = v2[1];
      v421[0] = *v2;
      v421[1] = v59;
      v422 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v421);
      v56 = *(*(v2 + 5) + 16);
      v57 = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        if (v56)
        {
          if (v56 == 1)
          {
            if ((v10 & 0x100) == 0)
            {
              XMLPlistScanner.scanArray()();
              if (!v209)
              {
                goto LABEL_268;
              }

LABEL_271:
              v3 = v293;
              goto LABEL_172;
            }

            v224 = v2[1];
            v311[0] = *v2;
            v311[1] = v224;
            v312 = *(v2 + 4);
            v225 = v311;
            v226 = 8;
LABEL_267:
            XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v226, v225);
            goto LABEL_268;
          }

          if ((v10 & 0x100) != 0)
          {
            v227 = v2[1];
            v313[0] = *v2;
            v313[1] = v227;
            v314 = *(v2 + 4);
            v225 = v313;
            v226 = 9;
            goto LABEL_267;
          }

          XMLPlistScanner.scanDict()();
          if (v220)
          {
            goto LABEL_271;
          }
        }

        else
        {
          if ((v10 & 0x100) != 0)
          {
            v223 = v2[1];
            v3 = v293;
            v304 = *v2;
            v305 = v223;
            v306 = *(v2 + 4);
            goto LABEL_168;
          }

          XMLPlistScanner.scanPlist()();
          if (v219)
          {
            goto LABEL_271;
          }
        }

LABEL_268:
        *(v2 + 3) = v1;
        _StringGuts.grow(_:)(77);
        MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
        v228 = *(v2 + 2);
        v229 = *(v2 + 4);
        v307 = *v2;
        v308 = v228;
        v309 = v1;
        v310 = v229;
LABEL_269:
        BufferReader.lineNumber.getter();
        v230 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v230);

        MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v231 = 0;
        *(v231 + 8) = 0xE000000000000000;
        *(v231 + 16) = 0;
        *(v231 + 24) = 0;
        *(v231 + 32) = 5;
        swift_willThrow();
        v3 = v293;
        goto LABEL_172;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18121D6C0;
      v58 = 9;
    }

    *(v29 + 32) = v58;
    *(v29 + 40) = v57;
    *(v29 + 48) = xmmword_181249E60;
LABEL_55:
    specialized Array.append<A>(contentsOf:)(v29);
LABEL_130:
    v116 = __OFADD__(v9, 2);
    v9 += 2;
    if (v116)
    {
      __break(1u);
      goto LABEL_183;
    }
  }

  if ((v19 & 0x100) != 0)
  {
    v141 = v2[1];
    v295 = *v2;
    v296 = v141;
    v297 = *(v2 + 4);
    goto LABEL_168;
  }

  v36 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v37)
  {
    goto LABEL_172;
  }

  if (!v36)
  {
    v142 = v2[1];
    v416 = *v2;
    v417 = v142;
    v418 = *(v2 + 4);
    goto LABEL_168;
  }

  LOBYTE(v38) = XMLPlistScanner.peekXMLElement()()._0;
  if (v39)
  {
    goto LABEL_172;
  }

  v1 = v38;
  if (v38 <= 2u)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        if ((v38 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v63)
          {
            goto LABEL_172;
          }

          goto LABEL_125;
        }

        v87 = v2[1];
        v402[0] = *v2;
        v402[1] = v87;
        v403 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v402);
        v88 = *(*(v2 + 5) + 16);
        v89 = v88 + 4;
        if (__OFADD__(v88, 4))
        {
          goto LABEL_273;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18121D6C0;
        v90 = 8;
      }

      else
      {
        if ((v38 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v83)
          {
            goto LABEL_172;
          }

          goto LABEL_125;
        }

        v91 = v2[1];
        v404[0] = *v2;
        v404[1] = v91;
        v405 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v404);
        v88 = *(*(v2 + 5) + 16);
        v89 = v88 + 4;
        if (__OFADD__(v88, 4))
        {
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18121D6C0;
        v90 = 9;
      }

      *(v48 + 32) = v90;
      *(v48 + 40) = v89;
      *(v48 + 48) = xmmword_181249E60;
LABEL_91:
      specialized Array.append<A>(contentsOf:)(v48);
      goto LABEL_125;
    }

    if ((v38 & 0x100) != 0)
    {
      v161 = v2[1];
      v298 = *v2;
      v299 = v161;
      v300 = *(v2 + 4);
      goto LABEL_168;
    }

    v70 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v71)
    {
      goto LABEL_172;
    }

    if (!v70)
    {
      v162 = v2[1];
      v399 = *v2;
      v400 = v162;
      v401 = *(v2 + 4);
      goto LABEL_168;
    }

    LOBYTE(v72) = XMLPlistScanner.peekXMLElement()()._0;
    if (v73)
    {
      goto LABEL_172;
    }

    LOBYTE(v1) = v72;
    if (v72 <= 2u)
    {
      if (v72)
      {
        if (v72 == 1)
        {
          if ((v72 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            if (v95)
            {
              goto LABEL_172;
            }

            goto LABEL_121;
          }

          v107 = v2[1];
          v385[0] = *v2;
          v385[1] = v107;
          v386 = *(v2 + 4);
          v108 = v385;
          v109 = 8;
        }

        else
        {
          if ((v72 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            if (v103)
            {
              goto LABEL_172;
            }

            goto LABEL_121;
          }

          v110 = v2[1];
          v387[0] = *v2;
          v387[1] = v110;
          v388 = *(v2 + 4);
          v108 = v387;
          v109 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v109, v108);
        goto LABEL_121;
      }

      if ((v72 & 0x100) != 0)
      {
        v210 = v2[1];
        v301 = *v2;
        v302 = v210;
        v303 = *(v2 + 4);
        goto LABEL_168;
      }

      XMLPlistScanner.scanPlist()();
      if (v102)
      {
        goto LABEL_172;
      }
    }

    else if (((1 << v72) & 0x1E0) != 0)
    {
      if ((v72 & 0x100) != 0)
      {
        v196 = v2[1];
        v391 = *v2;
        v392 = v196;
        v393 = *(v2 + 4);
        goto LABEL_164;
      }

      v74 = XMLPlistScanner.scanThroughCloseTag(_:)(v72);
      v76 = v75;
      v77 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v78 = v76 - v74;
      v79 = *(v2 + 1);
      v80 = v74 - *v2;
      v81 = *(v2 + 4);
      v394[0] = *v2;
      v394[1] = v79;
      v395 = v2[1];
      v396 = v81;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v394);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_18121D6B0;
      *(v82 + 32) = v77;
      *(v82 + 40) = v78;
      v3 = v293;
      *(v82 + 48) = v80;
      specialized Array.append<A>(contentsOf:)(v82);
    }

    else if (((1 << v72) & 0x18) != 0)
    {
      v92 = v72;
      if ((v72 & 0x100) != 0)
      {
        v104 = v2[1];
        v389[0] = *v2;
        v389[1] = v104;
        v390 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v389);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_18121D6B0;
        v106 = 12;
        if (v92 == 3)
        {
          v106 = 13;
        }

        *(v105 + 40) = 0;
        *(v105 + 48) = 0;
        *(v105 + 32) = v106;
        specialized Array.append<A>(contentsOf:)(v105);
      }

      else
      {
        XMLPlistScanner.scanString(asKey:)(v72 == 3);
        if (v93)
        {
          goto LABEL_172;
        }

        XMLPlistScanner.checkForCloseTag(_:)(v1);
        if (v94)
        {
          goto LABEL_172;
        }
      }
    }

    else
    {
      if ((v72 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v72);
        if (v96)
        {
          goto LABEL_172;
        }
      }

      v97 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v98 = v2[1];
      v397[0] = *v2;
      v397[1] = v98;
      v398 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v397);
      v99 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
      }

      v101 = *(v99 + 2);
      v100 = *(v99 + 3);
      if (v101 >= v100 >> 1)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99);
      }

      *(v99 + 2) = v101 + 1;
      *&v99[8 * v101 + 32] = v97;
      *(v2 + 5) = v99;
      v3 = v293;
    }

LABEL_121:
    v1 = *(v2 + 3);
    v111 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v112)
    {
      goto LABEL_172;
    }

    if (!v111)
    {
      v62 = Foundation_XMLPlistTag_plist;
LABEL_124:
      XMLPlistScanner.checkForCloseTag(_:)(v62);
      if (v113)
      {
        goto LABEL_172;
      }

      goto LABEL_125;
    }

    LOBYTE(v163) = XMLPlistScanner.peekXMLElement()()._0;
    if (v164)
    {
      goto LABEL_172;
    }

    v10 = v163;
    LODWORD(v56) = v163;
    if (v163 <= 2u)
    {
      goto LABEL_238;
    }

    if (((1 << v163) & 0x1E0) != 0)
    {
      if ((v163 & 0x100) != 0)
      {
        v211 = v2[1];
        v3 = v293;
        v317 = *v2;
        v318 = v211;
        v319 = *(v2 + 4);
        goto LABEL_245;
      }

      v165 = XMLPlistScanner.scanThroughCloseTag(_:)(v163);
      v167 = v166;
      v168 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v169 = v167 - v165;
      v170 = *(v2 + 1);
      v171 = v165 - *v2;
      v172 = *(v2 + 4);
      v320[0] = *v2;
      v320[1] = v170;
      v321 = v2[1];
      v322 = v172;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_18121D6B0;
      *(v173 + 32) = v168;
      *(v173 + 40) = v169;
      *(v173 + 48) = v171;
    }

    else
    {
      if (((1 << v163) & 0x18) == 0)
      {
        if ((v163 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v163);
          if (v212)
          {
            goto LABEL_271;
          }
        }

        v213 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
        v214 = v2[1];
        v323[0] = *v2;
        v323[1] = v214;
        v324 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v323);
        v215 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v215 + 2) + 1, 1, v215);
        }

        v217 = *(v215 + 2);
        v216 = *(v215 + 3);
        if (v217 >= v216 >> 1)
        {
          v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v215);
        }

        *(v215 + 2) = v217 + 1;
        *&v215[8 * v217 + 32] = v213;
        *(v2 + 5) = v215;
        goto LABEL_268;
      }

      v207 = v163;
      if ((v163 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v163 == 3);
        if (!v208)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v10);
          if (!v232)
          {
            goto LABEL_268;
          }

          goto LABEL_271;
        }

        goto LABEL_235;
      }

      v221 = v2[1];
      v315[0] = *v2;
      v315[1] = v221;
      v316 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v315);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_18121D6B0;
      v222 = 12;
      *(v173 + 40) = 0;
      *(v173 + 48) = 0;
      if (v207 == 3)
      {
        v222 = 13;
      }

      *(v173 + 32) = v222;
    }

    specialized Array.append<A>(contentsOf:)(v173);
    goto LABEL_268;
  }

  if (((1 << v38) & 0x1E0) != 0)
  {
    if ((v38 & 0x100) == 0)
    {
      v40 = XMLPlistScanner.scanThroughCloseTag(_:)(v38);
      v42 = v41;
      v43 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v44 = v42 - v40;
      v45 = *(v2 + 1);
      v46 = v40 - *v2;
      v47 = *(v2 + 4);
      v411[0] = *v2;
      v411[1] = v45;
      v412 = v2[1];
      v413 = v47;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v411);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_18121D6B0;
      *(v48 + 32) = v43;
      *(v48 + 40) = v44;
      v3 = v293;
      *(v48 + 48) = v46;
      goto LABEL_91;
    }

    v149 = v2[1];
    v408 = *v2;
    v409 = v149;
    v410 = *(v2 + 4);
LABEL_164:
    v139 = BufferReader.lineNumber.getter();
    v21 = v1;
    goto LABEL_165;
  }

  if (((1 << v38) & 0x18) != 0)
  {
    v60 = v38;
    if ((v38 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v38 == 3);
      if (v61)
      {
        goto LABEL_172;
      }

      v62 = v1;
      goto LABEL_124;
    }

    v84 = v2[1];
    v406[0] = *v2;
    v406[1] = v84;
    v407 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v406);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_18121D6B0;
    v86 = 12;
    if (v60 == 3)
    {
      v86 = 13;
    }

    *(v85 + 40) = 0;
    *(v85 + 48) = 0;
    *(v85 + 32) = v86;
    specialized Array.append<A>(contentsOf:)(v85);
  }

  else
  {
    if ((v38 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v38);
      if (v64)
      {
        goto LABEL_172;
      }
    }

    v65 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
    v66 = v2[1];
    v414[0] = *v2;
    v414[1] = v66;
    v415 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v414);
    v67 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    *&v67[8 * v69 + 32] = v65;
    *(v2 + 5) = v67;
    v3 = v293;
  }

LABEL_125:
  v1 = *(v2 + 3);
  v114 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v115)
  {
    goto LABEL_172;
  }

  if (!v114)
  {
    v32 = Foundation_XMLPlistTag_plist;
    goto LABEL_128;
  }

  LOBYTE(v144) = XMLPlistScanner.peekXMLElement()()._0;
  if (v145)
  {
    goto LABEL_172;
  }

  LOWORD(v21) = v144;
  if (v144 <= 2u)
  {
    if (v144)
    {
      if (v144 == 1)
      {
        if ((v144 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v160)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        v198 = v2[1];
        v371[0] = *v2;
        v371[1] = v198;
        v372 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v371);
        v199 = *(*(v2 + 5) + 16);
        v200 = v199 + 4;
        if (!__OFADD__(v199, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v157 = swift_allocObject();
          *(v157 + 16) = xmmword_18121D6C0;
          v201 = 8;
LABEL_229:
          *(v157 + 32) = v201;
          *(v157 + 40) = v200;
          *(v157 + 48) = xmmword_181249E60;
          goto LABEL_230;
        }

        __break(1u);
      }

      else
      {
        if ((v144 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v193)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        v202 = v2[1];
        v373[0] = *v2;
        v373[1] = v202;
        v374 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v373);
        v203 = *(*(v2 + 5) + 16);
        v200 = v203 + 4;
        if (!__OFADD__(v203, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v157 = swift_allocObject();
          *(v157 + 16) = xmmword_18121D6C0;
          v201 = 9;
          goto LABEL_229;
        }
      }

      __break(1u);
      goto LABEL_327;
    }

    if ((v144 & 0x100) != 0)
    {
      goto LABEL_224;
    }

    v181 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v182)
    {
      goto LABEL_172;
    }

    if (!v181)
    {
      v218 = v2[1];
      v3 = v293;
      v368 = *v2;
      v369 = v218;
      v370 = *(v2 + 4);
      goto LABEL_168;
    }

    LOBYTE(v183) = XMLPlistScanner.peekXMLElement()()._0;
    if (v184)
    {
      goto LABEL_235;
    }

    v10 = v183;
    if (v183 <= 2u)
    {
      if (!v183)
      {
        if ((v183 & 0x100) != 0)
        {
          v247 = v2[1];
          v3 = v293;
          v326 = *v2;
          v327 = v247;
          v328 = *(v2 + 4);
          goto LABEL_168;
        }

        XMLPlistScanner.scanPlist()();
        if (v243)
        {
          goto LABEL_235;
        }

        goto LABEL_306;
      }

      if (v183 == 1)
      {
        if ((v183 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v235)
          {
            goto LABEL_235;
          }

          goto LABEL_306;
        }

        v248 = v2[1];
        v354[0] = *v2;
        v354[1] = v248;
        v355 = *(v2 + 4);
        v249 = v354;
        v250 = 8;
      }

      else
      {
        if ((v183 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v244)
          {
            goto LABEL_235;
          }

          goto LABEL_306;
        }

        v251 = v2[1];
        v356[0] = *v2;
        v356[1] = v251;
        v357 = *(v2 + 4);
        v249 = v356;
        v250 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v250, v249);
LABEL_306:
      v252 = *(v2 + 3);
      v253 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
      if (!v254)
      {
        if (!v253)
        {
          XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_plist);
          v3 = v293;
          if (v266)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        LOBYTE(v255) = XMLPlistScanner.peekXMLElement()()._0;
        if (!v256)
        {
          LOBYTE(v10) = v255;
          if (v255 <= 2u)
          {
            if (!v255)
            {
              if ((v255 & 0x100) != 0)
              {
                v285 = v2[1];
                v3 = v293;
                v329 = *v2;
                v330 = v285;
                v331 = *(v2 + 4);
                goto LABEL_168;
              }

              XMLPlistScanner.scanPlist()();
              if (v280)
              {
                goto LABEL_271;
              }

              goto LABEL_345;
            }

            if (v255 == 1)
            {
              if ((v255 & 0x100) == 0)
              {
                XMLPlistScanner.scanArray()();
                if (v270)
                {
                  goto LABEL_271;
                }

                goto LABEL_345;
              }

              v282 = v2[1];
              v336[0] = *v2;
              v336[1] = v282;
              v337 = *(v2 + 4);
              v283 = v336;
              v284 = 8;
            }

            else
            {
              if ((v255 & 0x100) == 0)
              {
                XMLPlistScanner.scanDict()();
                if (v281)
                {
                  goto LABEL_271;
                }

                goto LABEL_345;
              }

              v286 = v2[1];
              v338[0] = *v2;
              v338[1] = v286;
              v339 = *(v2 + 4);
              v283 = v338;
              v284 = 9;
            }

            XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v284, v283);
LABEL_345:
            *(v2 + 3) = v252;
            _StringGuts.grow(_:)(77);
            MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
            v287 = *(v2 + 2);
            v288 = *(v2 + 4);
            v332 = *v2;
            v333 = v287;
            v334 = v252;
            v335 = v288;
            goto LABEL_269;
          }

          if (((1 << v255) & 0x1E0) != 0)
          {
            if ((v255 & 0x100) != 0)
            {
LABEL_327:
              v271 = v2[1];
              v3 = v293;
              v342 = *v2;
              v343 = v271;
              v344 = *(v2 + 4);
              goto LABEL_245;
            }

            v257 = XMLPlistScanner.scanThroughCloseTag(_:)(v255);
            v259 = v258;
            v260 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
            v261 = v259 - v257;
            v262 = *(v2 + 1);
            v263 = v257 - *v2;
            v264 = *(v2 + 4);
            v345[0] = *v2;
            v345[1] = v262;
            v346 = v2[1];
            v347 = v264;
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v345);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v265 = swift_allocObject();
            *(v265 + 16) = xmmword_18121D6B0;
            *(v265 + 32) = v260;
            *(v265 + 40) = v261;
            *(v265 + 48) = v263;
            goto LABEL_334;
          }

          if (((1 << v255) & 0x18) == 0)
          {
            if ((v255 & 0x100) == 0)
            {
              XMLPlistScanner.checkForCloseTag(_:)(v255);
              if (v272)
              {
                goto LABEL_271;
              }
            }

            v273 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
            v274 = v2[1];
            v348[0] = *v2;
            v348[1] = v274;
            v349 = *(v2 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v348);
            v275 = v273;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v276 = *(*(v2 + 5) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v276);
            v277 = *(v2 + 5);
            *(v277 + 16) = v276 + 1;
            *(v277 + 8 * v276 + 32) = v275;
            *(v2 + 5) = v277;
            goto LABEL_345;
          }

          v267 = v255;
          if ((v255 & 0x100) != 0)
          {
            v278 = v2[1];
            v340[0] = *v2;
            v340[1] = v278;
            v341 = *(v2 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v340);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
            v265 = swift_allocObject();
            *(v265 + 16) = xmmword_18121D6B0;
            v279 = 12;
            *(v265 + 40) = 0;
            *(v265 + 48) = 0;
            if (v267 == 3)
            {
              v279 = 13;
            }

            *(v265 + 32) = v279;
LABEL_334:
            specialized Array.append<A>(contentsOf:)(v265);
            goto LABEL_345;
          }

          XMLPlistScanner.scanString(asKey:)(v255 == 3);
          if (!v268)
          {
            XMLPlistScanner.checkForCloseTag(_:)(v10);
            if (v269)
            {
              goto LABEL_271;
            }

            goto LABEL_345;
          }
        }
      }

LABEL_235:
      v3 = v293;
      goto LABEL_172;
    }

    LODWORD(v88) = 1 << v183;
    if (((1 << v183) & 0x1E0) != 0)
    {
      if ((v183 & 0x100) == 0)
      {
        v185 = XMLPlistScanner.scanThroughCloseTag(_:)(v183);
        v187 = v186;
        v188 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
        v189 = *(v2 + 1);
        v190 = v185 - *v2;
        v191 = *(v2 + 4);
        v363[0] = *v2;
        v363[1] = v189;
        v364 = v2[1];
        v365 = v191;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v363);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v192 = swift_allocObject();
        *(v192 + 16) = xmmword_18121D6B0;
        *(v192 + 32) = v188;
        *(v192 + 40) = v187 - v185;
        *(v192 + 48) = v190;
LABEL_301:
        specialized Array.append<A>(contentsOf:)(v192);
        goto LABEL_306;
      }

      v236 = v2[1];
      v3 = v293;
      v360 = *v2;
      v361 = v236;
      v362 = *(v2 + 4);
LABEL_245:
      v139 = BufferReader.lineNumber.getter();
      v21 = v10;
      goto LABEL_165;
    }

LABEL_274:
    if ((v88 & 0x18) == 0)
    {
      if ((v10 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v10);
        if (v237)
        {
          goto LABEL_235;
        }
      }

      v238 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v239 = v2[1];
      v366[0] = *v2;
      v366[1] = v239;
      v367 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v366);
      v240 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v240 + 2) + 1, 1, v240);
      }

      v242 = *(v240 + 2);
      v241 = *(v240 + 3);
      if (v242 >= v241 >> 1)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v240);
      }

      *(v240 + 2) = v242 + 1;
      *&v240[8 * v242 + 32] = v238;
      *(v2 + 5) = v240;
      goto LABEL_306;
    }

    if ((v10 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v10 == 3);
      if (v233)
      {
        goto LABEL_235;
      }

      XMLPlistScanner.checkForCloseTag(_:)(v10);
      if (v234)
      {
        goto LABEL_235;
      }

      goto LABEL_306;
    }

    v245 = v2[1];
    v358[0] = *v2;
    v358[1] = v245;
    v359 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v192 = swift_allocObject();
    *(v192 + 16) = xmmword_18121D6B0;
    v246 = 12;
    *(v192 + 40) = 0;
    *(v192 + 48) = 0;
    if (v10 == 3)
    {
      v246 = 13;
    }

    *(v192 + 32) = v246;
    goto LABEL_301;
  }

  v33 = 1 << v144;
  if (((1 << v144) & 0x1E0) != 0)
  {
    if ((v144 & 0x100) == 0)
    {
      v150 = XMLPlistScanner.scanThroughCloseTag(_:)(v144);
      v152 = v151;
      v153 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v21);
      v154 = *(v2 + 1);
      v155 = v150 - *v2;
      v156 = *(v2 + 4);
      v380[0] = *v2;
      v380[1] = v154;
      v381 = v2[1];
      v382 = v156;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v380);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_18121D6B0;
      *(v157 + 32) = v153;
      *(v157 + 40) = v152 - v150;
      *(v157 + 48) = v155;
      v3 = v293;
      goto LABEL_230;
    }

    v174 = v2[1];
    v377 = *v2;
    v378 = v174;
    v379 = *(v2 + 4);
    v139 = BufferReader.lineNumber.getter();
    v21 = v21;
LABEL_165:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v140 = v21;
    goto LABEL_169;
  }

LABEL_183:
  if ((v33 & 0x18) == 0)
  {
    if ((v21 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v21);
      if (v175)
      {
        goto LABEL_172;
      }
    }

    v176 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v21);
    v177 = v2[1];
    v383[0] = *v2;
    v383[1] = v177;
    v384 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v383);
    v178 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
    }

    v180 = *(v178 + 2);
    v179 = *(v178 + 3);
    if (v180 >= v179 >> 1)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v178);
    }

    *(v178 + 2) = v180 + 1;
    *&v178[8 * v180 + 32] = v176;
    *(v2 + 5) = v178;
    v3 = v293;
    goto LABEL_231;
  }

  if ((v21 & 0x100) == 0)
  {
    XMLPlistScanner.scanString(asKey:)(v21 == 3);
    if (v158)
    {
      goto LABEL_172;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v21);
    if (v159)
    {
      goto LABEL_172;
    }

    goto LABEL_231;
  }

  v194 = v2[1];
  v375[0] = *v2;
  v375[1] = v194;
  v376 = *(v2 + 4);
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v375);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_18121D6B0;
  v195 = 12;
  *(v157 + 40) = 0;
  *(v157 + 48) = 0;
  if (v21 == 3)
  {
    v195 = 13;
  }

  *(v157 + 32) = v195;
LABEL_230:
  specialized Array.append<A>(contentsOf:)(v157);
LABEL_231:
  *(v2 + 3) = v1;
  _StringGuts.grow(_:)(77);
  MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
  v204 = *(v2 + 2);
  v205 = *(v2 + 4);
  v350 = *v2;
  v351 = v204;
  v352 = v1;
  v353 = v205;
  BufferReader.lineNumber.getter();
  v206 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v206);

  MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
  lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
  swift_allocError();
  *v140 = 0;
  *(v140 + 8) = 0xE000000000000000;
  *(v140 + 16) = 0;
  *(v140 + 24) = 0;
  for (i = 5; ; i = 2)
  {
    *(v140 + 32) = i;
    swift_willThrow();
LABEL_172:
    v146 = v2[1];
    v293[0] = *v2;
    *(v3 + 16) = v146;
    v294 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v293);
    v118 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
    }

    v3 = *(v118 + 2);
    v147 = *(v118 + 3);
    v148 = (v3 + 1);
    if (v3 >= v147 >> 1)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v3 + 1, 1, v118);
    }

    *(v118 + 2) = v148;
    v122 = v118 + 32;
    *&v118[8 * v3 + 32] = 10;
    *&v118[8 * v437 + 32] = v148;
    v123 = v8 + 2;
    if (!__OFADD__(v8, 2))
    {
      break;
    }

    __break(1u);
LABEL_224:
    v197 = v2[1];
    *(v3 + 544) = *v2;
    *(v3 + 560) = v197;
    v325 = *(v2 + 4);
LABEL_168:
    v139 = BufferReader.lineNumber.getter();
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v140 = 0;
LABEL_169:
    *(v140 + 8) = v139;
    *(v140 + 16) = 0;
    *(v140 + 24) = 0;
  }

LABEL_177:
  *&v122[8 * v123] = v9;
  *(v2 + 5) = v118;
}

uint64_t XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = (*(*v1 + 16) & 0x7FFLL) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return result;
  }

  v5 = *(result + 16);
  v6 = *(result + 32);
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = *result;
  if ((v5 - *result) < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v6 - v5;
  if (v8 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v7 + *(result + 8) - v6) < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8 / (*(result + 24) - v7) * v3;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v10 = v9;
  v11 = v1[1];
  if (!v11 || v10 / v11 > 1.25)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v10 > *(v2 + 24) >> 1)
    {
      if (v3 <= v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = v3;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 0, v2);
      v2 = result;
    }

    *v1 = v2;
    v1[1] = v10;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanString(asKey:)(Swift::Bool asKey)
{
  v4 = *(v1 + 8);
  *&v23 = *v1;
  *(&v23 + 1) = v4;
  v24 = *(v1 + 16);
  specialized static XMLPlistScanner.parseString(with:generate:)(&v23, 0, v20);
  if (!v2)
  {
    v5 = v20[0];
    v6 = v20[1];
    v7 = v21;
    v8 = v22;

    v9 = v23;
    v10 = v24;
    *v1 = v23;
    *(v1 + 16) = v10;
    *(v1 + 32) = v25;
    if (v7)
    {
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(&v23);
      v11 = *(v1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      if (v13 >= v12 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
      }

      *(v11 + 2) = v13 + 1;
      *&v11[8 * v13 + 32] = 11;
      *(v1 + 40) = v11;
    }

    else
    {
      v14 = 13;
      if (!v8)
      {
        v14 = 1;
      }

      v15 = 12;
      if (!v8)
      {
        v15 = 0;
      }

      if (asKey)
      {
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      v17 = v6 - v5;
      v18 = v5 - v9;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(&v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18121D6B0;
      *(inited + 32) = v16;
      *(inited + 40) = v17;
      *(inited + 48) = v18;
      specialized Array.append<A>(contentsOf:)(inited);
    }
  }
}

uint64_t *specialized static XMLPlistScanner.parseString(with:generate:)@<X0>(uint64_t *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v4 = result;
  v6 = result[3];
  v7 = result[4];
  v8 = (v6 + 5);
  v10 = *result;
  v9 = result[1];
  if (v7 < v6 + 5)
  {
    goto LABEL_9;
  }

  if (v10 + v9 < v6)
  {
    goto LABEL_84;
  }

  if ((v6 - v10) < 0)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v10 + v9 - v6) < 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (*v6 == 1819635236 && *(v6 + 4) == 108)
  {
    result = 0;
    v4[3] = v8;
    v16 = 1;
    v13 = 0xE000000000000000;
LABEL_69:
    v17 = 1;
    goto LABEL_70;
  }

LABEL_9:
  v12 = (v6 + 1);
  v28 = 0;
  v29 = 0;
  v27 = v9;
  if (v7 >= v6 + 1)
  {
    v18 = v10 + v9;
    if ((v10 + v9 - v7) >= 0)
    {
      result = v6;
      v8 = v6;
      while (1)
      {
        if (v7 < v8)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        if (&v8[-v10] < 0)
        {
          goto LABEL_74;
        }

        if ((v7 - v8) < 0)
        {
          goto LABEL_75;
        }

        v19 = *v8;
        if (v19 == 38)
        {
          break;
        }

        if (v19 == 60)
        {
          if (v7 < (v8 + 2) || v8[1] != 33)
          {
            goto LABEL_11;
          }

          if (v29)
          {
            if (v8 < result)
            {
              goto LABEL_80;
            }

            if (result - v10 < 0)
            {
              goto LABEL_81;
            }

            if (v8 - result < 0)
            {
              goto LABEL_82;
            }

            if (v18 - v8 < 0)
            {
              goto LABEL_83;
            }

            v20 = static String._tryFromUTF8(_:)();
            if (!v21)
            {
              goto LABEL_71;
            }

            MEMORY[0x1865CB0E0](v20);
          }

          else if (v30)
          {
            if (v8 < result)
            {
              goto LABEL_92;
            }

            if (result - v10 < 0)
            {
              goto LABEL_93;
            }

            if (v8 - result < 0)
            {
              goto LABEL_94;
            }

            if (v18 - v8 < 0)
            {
              goto LABEL_95;
            }

            v28 = static String._tryFromUTF8(_:)();
            v29 = v25;
            if (!v25)
            {
              goto LABEL_71;
            }
          }

          specialized static XMLPlistScanner.parseCDSect_pl(reader:string:)(v4, &v28);
          if (v3)
          {
          }

LABEL_60:
          result = v4[3];
          v12 = result;
          goto LABEL_23;
        }

        v4[3] = v12;
LABEL_23:
        v8 = v12;
        v12 = (v12 + 1);
        if (v7 < v12)
        {
          goto LABEL_11;
        }
      }

      if (v29)
      {
        if (v8 < result)
        {
          goto LABEL_76;
        }

        if (result - v10 < 0)
        {
          goto LABEL_77;
        }

        if (v8 - result < 0)
        {
          goto LABEL_78;
        }

        if (v18 - v8 < 0)
        {
          goto LABEL_79;
        }

        v22 = static String._tryFromUTF8(_:)();
        if (!v23)
        {
          goto LABEL_71;
        }

        MEMORY[0x1865CB0E0](v22);
      }

      else if (v30)
      {
        if (v8 < result)
        {
          goto LABEL_88;
        }

        if (result - v10 < 0)
        {
          goto LABEL_89;
        }

        if (v8 - result < 0)
        {
          goto LABEL_90;
        }

        if (v18 - v8 < 0)
        {
          goto LABEL_91;
        }

        v28 = static String._tryFromUTF8(_:)();
        v29 = v24;
        if (!v24)
        {
          goto LABEL_71;
        }
      }

      specialized static XMLPlistScanner.parseEntityReference(reader:string:)(v4, &v28);
      if (v3)
      {
      }

      goto LABEL_60;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v8 = v6;
  result = v6;
LABEL_11:
  if ((v30 & 1) == 0)
  {
    v17 = v6 == result;

    result = 0;
    v16 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_70;
  }

  v13 = v29;
  if (v29)
  {
    if (result >= v8)
    {
LABEL_19:
      v16 = 0;
      v17 = 0;
      result = v28;
LABEL_70:
      *a3 = v6;
      *(a3 + 8) = v8;
      *(a3 + 16) = result;
      *(a3 + 24) = v13;
      *(a3 + 32) = v16;
      *(a3 + 33) = v17;
      return result;
    }

    if (result - v10 >= 0)
    {
      if (v8 - result >= 0)
      {
        if (v10 + v27 - v8 >= 0)
        {
          v14 = static String._tryFromUTF8(_:)();
          if (v15)
          {
            MEMORY[0x1865CB0E0](v14);

            v13 = v29;
            goto LABEL_19;
          }

          goto LABEL_71;
        }

LABEL_102:
        __break(1u);
        return result;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v8 < v6)
  {
    goto LABEL_96;
  }

  if ((v6 - v10) < 0)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (&v8[-v6] < 0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v10 + v27 - v8 < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  result = static String._tryFromUTF8(_:)();
  if (v13)
  {
    v16 = 0;
    goto LABEL_69;
  }

LABEL_71:
  lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
  swift_allocError();
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 6;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.checkForCloseTag(_:)(Foundation::XMLPlistTag a1)
{
  v3 = v1[3];
  v2 = v1[4];
  if ((a1 - 2) > 7u)
  {
    v4 = 5;
  }

  else
  {
    v4 = qword_18124A218[(a1 - 2)];
  }

  if (v2 < &v3[v4 + 3])
  {
    goto LABEL_5;
  }

  v6 = *v1;
  if (&v3[-*v1] < 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  if ((v2 - v3) < 0)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v7 = v6 + v1[1];
  if ((v7 - v2) < 0)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v8 = (v3 + 2);
  v9 = *v3;
  if (v9 != 60 || (v9 = v3[1], v9 != 47))
  {
    v16 = BufferReader.lineNumber.getter();
    _StringGuts.grow(_:)(34);

    XMLPlistTag.tagName.getter(a1);
    v17 = StaticString.description.getter();
    MEMORY[0x1865CB0E0](v17);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v18 = v9;
    *(v18 + 8) = v16;
    *(v18 + 16) = 0xD000000000000020;
    *(v18 + 24) = 0x8000000181486410;
    goto LABEL_21;
  }

  v10 = v2 - v8;
  if (a1 <= Foundation_XMLPlistTag_string)
  {
    if (a1 <= Foundation_XMLPlistTag_array)
    {
      if (a1)
      {
        if (v10 < 5)
        {
          goto LABEL_88;
        }

        if (v7 < v8)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (v8 - v6 < 0)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if ((v7 - v8) < 0)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        v22 = bswap64(*(v3 + 2) | (v3[6] << 32));
        v23 = 0x6172726179000000;
      }

      else
      {
        if (v10 < 5)
        {
          goto LABEL_88;
        }

        if (v7 < v8)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        if (v8 - v6 < 0)
        {
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if ((v7 - v8) < 0)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v22 = bswap64(*(v3 + 2) | (v3[6] << 32));
        v23 = 0x706C697374000000;
      }
    }

    else
    {
      if (a1 == Foundation_XMLPlistTag_dict)
      {
        if (v10 >= 4)
        {
          if (v7 < v8)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (v8 - v6 < 0)
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          if ((v7 - v8) < 0)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          v24 = bswap32(*v8);
          v13 = v24 >= 0x64696374;
          v14 = v24 > 0x64696374;
          goto LABEL_81;
        }

        goto LABEL_88;
      }

      if (a1 == Foundation_XMLPlistTag_key)
      {
        if (v10 >= 3)
        {
          if (v7 < v8)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          if (v8 - v6 < 0)
          {
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          if ((v7 - v8) < 0)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v20 = bswap32(*(v3 + 1) | (v3[4] << 16));
          v13 = v20 >= 0x6B657900;
          v14 = v20 > 0x6B657900;
          goto LABEL_81;
        }

        goto LABEL_88;
      }

      if (v10 < 6)
      {
        goto LABEL_88;
      }

      if (v7 < v8)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      if (v8 - v6 < 0)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if ((v7 - v8) < 0)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v22 = bswap64(*(v3 + 2) | (*(v3 + 3) << 32));
      v23 = 0x737472696E670000;
    }

    goto LABEL_80;
  }

  if (a1 <= Foundation_XMLPlistTag_real)
  {
    if (a1 == Foundation_XMLPlistTag_data)
    {
      if (v10 >= 4)
      {
        if (v7 < v8)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (v8 - v6 < 0)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        if ((v7 - v8) < 0)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v25 = bswap32(*v8);
        v13 = v25 >= 0x64617461;
        v14 = v25 > 0x64617461;
        goto LABEL_81;
      }

      goto LABEL_88;
    }

    if (a1 == Foundation_XMLPlistTag_date)
    {
      if (v10 >= 4)
      {
        if (v7 < v8)
        {
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        if (v8 - v6 < 0)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if ((v7 - v8) < 0)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v12 = bswap32(*v8);
        v13 = v12 >= 0x64617465;
        v14 = v12 > 0x64617465;
        goto LABEL_81;
      }

LABEL_88:
      _StringGuts.grow(_:)(47);

      BufferReader.lineNumber.getter();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v29);

      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181486640);
      XMLPlistTag.tagName.getter(a1);
      v30 = StaticString.description.getter();
      MEMORY[0x1865CB0E0](v30);

      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v18 = 0xD000000000000012;
      *(v18 + 8) = 0x8000000181486620;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      v19 = 5;
      goto LABEL_89;
    }

    if (v10 < 4)
    {
      goto LABEL_88;
    }

    if (v7 < v8)
    {
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v8 - v6 < 0)
    {
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if ((v7 - v8) < 0)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    v26 = bswap32(*v8);
    v13 = v26 >= 0x7265616C;
    v14 = v26 > 0x7265616C;
LABEL_81:
    v27 = v14;
    v28 = !v13;
    if (v27 != v28)
    {
      goto LABEL_88;
    }

LABEL_92:
    v31 = XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(v8 + v4);
    if (v31 >= v2)
    {
LABEL_5:
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v5 = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0;
LABEL_90:
      swift_willThrow();
      return;
    }

    if ((&v31[-v6] & 0x8000000000000000) == 0 && (v7 - v31) >= 1)
    {
      v32 = *v31;
      if (v32 == 62)
      {
        v1[3] = (v31 + 1);
        return;
      }

      v33 = BufferReader.lineNumber.getter();
      _StringGuts.grow(_:)(34);

      XMLPlistTag.tagName.getter(a1);
      v34 = StaticString.description.getter();
      MEMORY[0x1865CB0E0](v34);

      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v18 = v32;
      *(v18 + 8) = v33;
      *(v18 + 16) = 0xD000000000000020;
      *(v18 + 24) = 0x8000000181486410;
LABEL_21:
      v19 = 3;
LABEL_89:
      *(v18 + 32) = v19;
      goto LABEL_90;
    }

    goto LABEL_101;
  }

  if (a1 == Foundation_XMLPlistTag_integer)
  {
    if (v10 >= 7)
    {
      if (v7 < v8)
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (v8 - v6 < 0)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if ((v7 - v8) < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (bswap32(*v8) == 1768846437 && bswap32(*(v3 + 5)) == 1701274994)
      {
        goto LABEL_92;
      }
    }

    goto LABEL_88;
  }

  if (a1 == Foundation_XMLPlistTag_true)
  {
    if (v10 < 4)
    {
      goto LABEL_88;
    }

    if (v7 < v8)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    if (v8 - v6 < 0)
    {
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    if ((v7 - v8) < 0)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v21 = bswap32(*v8);
    v13 = v21 >= 0x74727565;
    v14 = v21 > 0x74727565;
    goto LABEL_81;
  }

  if (v10 < 5)
  {
    goto LABEL_88;
  }

  if (v7 < v8)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v8 - v6 < 0)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if ((v7 - v8) >= 0)
  {
    v22 = bswap64(*(v3 + 2) | (v3[6] << 32));
    v23 = 0x66616C7365000000;
LABEL_80:
    v13 = v22 >= v23;
    v14 = v22 > v23;
    goto LABEL_81;
  }

LABEL_134:
  __break(1u);
}

uint64_t XMLPlistScanner.scanThroughCloseTag(_:)(uint64_t result)
{
  v3 = v1[3];
  v2 = v1[4];
  if (v2 < v3 + 1)
  {
LABEL_9:
    XMLPlistScanner.checkForCloseTag(_:)(result);
    return v3;
  }

  else
  {
    if ((*v1 + v1[1] - v2) >= 0)
    {
      v4 = v2 - v3;
      v5 = v3 - *v1;
      v6 = v1[3];
      while (v2 >= v6)
      {
        if (v5 < 0)
        {
          goto LABEL_11;
        }

        if (v4 < 0)
        {
          goto LABEL_12;
        }

        if (*v6 != 60)
        {
          v1[3] = v6 + 1;
          --v4;
          ++v5;
          v7 = v6 + 2;
          ++v6;
          if (v2 >= v7)
          {
            continue;
          }
        }

        goto LABEL_9;
      }

      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

char *static PropertyListDecoder.readQuotedEncoding(in:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (a2 && ((v3 = *result, v3 == 39) || v3 == 34))
  {
    if (a2 < 2)
    {
      v5 = 0;
    }

    else
    {
      v4 = 1;
      while (result[v4] != v3)
      {
        if (a2 == ++v4)
        {
          v4 = a2;
          break;
        }
      }

      v5 = v4 - 1;
    }

    return closure #1 in static PropertyListDecoder.readQuotedEncoding(in:)(result + 1, v5, a3);
  }

  else
  {
    *a3 = 4;
  }

  return result;
}

char *closure #1 in static PropertyListDecoder.readQuotedEncoding(in:)@<X0>(char *result@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (a2 == 5 && (v4 = result, v5 = _stringshims_strncasecmp_clocale(result, "utf-8", 5uLL), a2 = 5, v6 = v5, result = v4, !v6))
  {
    *a3 = 4;
  }

  else
  {
    v7 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCSRyAHG_Tt1B5(result, a2, 5);
    if (v8)
    {
      v9 = v8;
      v10 = v7;
      v11 = String._bridgeToObjectiveCImpl()();
      v12 = CFStringConvertIANACharSetNameToEncoding(v11);
      swift_unknownObjectRelease();
      if (v12 != -1)
      {

        result = CFStringConvertEncodingToNSStringEncoding(v12);
        *a3 = result;
        return result;
      }

      _StringGuts.grow(_:)(31);

      MEMORY[0x1865CB0E0](v10, v9);

      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      _CodingPathNode.path.getter(0x8000000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
    }

    else
    {
      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v15 = v14;
      _CodingPathNode.path.getter(0x8000000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v13 - 8) + 104))(v15, *MEMORY[0x1E69E6B00], v13);
    }

    return swift_willThrow();
  }

  return result;
}

void XMLPlistScanner.scanXMLPropertyList()()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  if (v2 == v1)
  {
LABEL_19:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v11 = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0;
LABEL_23:
    swift_willThrow();
    return;
  }

  while (1)
  {
    v22 = *v0;
    v3 = XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(v1);
    *(v0 + 3) = v3;
    if (v2 == v3)
    {
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v12 = 0xD000000000000014;
      *(v12 + 8) = 0x80000001814862C0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v13 = 5;
LABEL_22:
      *(v12 + 32) = v13;
      goto LABEL_23;
    }

    v4 = v3 + 1;
    v5 = *v3;
    *(v0 + 3) = v3 + 1;
    if (v5 != 60)
    {
      v14 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v12 = v5;
      *(v12 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      v13 = 3;
      goto LABEL_22;
    }

    v6 = v3 + 2;
    if (v2 < (v3 + 2))
    {
      goto LABEL_19;
    }

    if (&v4[-v22] < 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    if ((v2 - v4) < 0)
    {
      goto LABEL_32;
    }

    if ((v22 + *(&v22 + 1) - v2) < 0)
    {
      goto LABEL_33;
    }

    v7 = *v4;
    if (v7 == 33)
    {
      if (v2 >= (v3 + 4) && v3[2] == 45 && v3[3] == 45)
      {
        *(v0 + 3) = v3 + 4;
        XMLPlistScanner.skipXMLComment()();
        if (v10)
        {
          return;
        }
      }

      else
      {
        *(v0 + 3) = v6;
        XMLPlistScanner.skipDTD()();
        if (v9)
        {
          return;
        }
      }

      goto LABEL_18;
    }

    if (v7 != 63)
    {
      break;
    }

    *(v0 + 3) = v6;
    XMLPlistScanner.skipXMLProcessingInstruction()();
    if (v8)
    {
      return;
    }

LABEL_18:
    v1 = *(v0 + 3);
    if (v2 == v1)
    {
      goto LABEL_19;
    }
  }

  XMLPlistScanner.scanXMLElement()();
  if (!v15)
  {
    v16 = *(v0 + 2);
    v17 = *(v0 + 4);
    if (v17 < v16)
    {
      goto LABEL_34;
    }

    if ((v16 - *v0) < 0)
    {
      goto LABEL_35;
    }

    v18 = v17 - v16;
    if ((v17 - v16) < 0)
    {
      goto LABEL_36;
    }

    if ((*v0 + *(v0 + 1) - v17) < 0)
    {
      goto LABEL_37;
    }

    v19 = *(v0 + 5);
    type metadata accessor for XMLPlistMap();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA0D4ViewVys5UInt8VG6buffer_SVSg10allocationt_GMd);
    v21 = swift_allocObject();
    *(v21 + 40) = 0;
    *(v21 + 16) = v16;
    *(v21 + 24) = v18;
    *(v21 + 32) = 0;
    *(v20 + 24) = v21;
  }
}

void closure #2 in PropertyListDecoder._decode<A>(_:from:format:)(char *a1, uint64_t a2, uint64_t a3, void (*a4)(id *), uint64_t a5, void *a6)
{
  v131 = *MEMORY[0x1E69E9840];
  v125 = a1;
  v126 = a2;
  *&v127 = a1;
  *(&v127 + 1) = a1;
  v128 = &a1[a2];
  v129 = MEMORY[0x1E69E7CC0];
  v130 = 0;
  XMLPlistScanner.scanXMLPropertyList()();
  if (v6)
  {

    v120 = v6;
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (!swift_dynamicCast())
    {
      goto LABEL_165;
    }

    v115 = v121[6];
    v114 = v121[7];
    v112 = v122;
    v113 = v123;
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v19 = @"NSDebugDescription";
    v20 = v19;
    if (!isTaggedPointer)
    {
LABEL_10:
      LOBYTE(v116) = 0;
      v125 = 0;
      LOBYTE(v118) = 0;
      v119 = 0;
      if (__CFStringIsCF())
      {

LABEL_14:
        v22 = 0;
        v24 = 0xE000000000000000;
        goto LABEL_28;
      }

      v26 = v20;
      v27 = String.init(_nativeStorage:)();
      if (v28)
      {
        v22 = v27;
        v24 = v28;

        goto LABEL_28;
      }

      v125 = [(os_unfair_lock_s *)v26 length];
      if (!v125)
      {

        goto LABEL_14;
      }

      v22 = String.init(_cocoaString:)();
      v24 = v33;
LABEL_28:
      v121[0] = v22;
      v121[1] = v24;
      v111 = v124;
      if (v124 <= 2u)
      {
        if (!v124)
        {
          if (!v114)
          {
            v39 = 0x8000000181484E80;
            v38 = 0xD00000000000001ALL;
            goto LABEL_52;
          }

          v125 = 0xD00000000000001BLL;
          v126 = 0x8000000181484EA0;
          MEMORY[0x1865CB0E0](v115);
          goto LABEL_51;
        }

        if (v124 != 1)
        {
          _StringGuts.grow(_:)(33);

          v125 = 0xD000000000000013;
          v126 = 0x8000000181484E40;
          XMLPlistTag.tagName.getter(v115);
          v40 = StaticString.description.getter();
          MEMORY[0x1865CB0E0](v40);

          v41 = 0x6E696C206E6F203ELL;
          v42 = 0xEA00000000002065;
LABEL_48:
          MEMORY[0x1865CB0E0](v41, v42);
          v43 = &v132;
          goto LABEL_49;
        }

        _StringGuts.grow(_:)(24);

        v125 = 0xD000000000000016;
        v126 = 0x8000000181484E60;
      }

      else
      {
        if (v124 > 4u)
        {
          if (v124 == 5)
          {

            v38 = v115;
            v39 = v37;
          }

          else
          {
            v39 = 0x8000000181484DA0;
            v38 = 0xD00000000000002CLL;
          }

LABEL_52:
          v121[5] = MEMORY[0x1E69E6158];
          v121[2] = v38;
          v121[3] = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v45 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of FloatingPointRoundingRule?(v121, &v125, &_sSS_yptMd);

          outlined destroy of TermOfAddress?(v121, &_sSS_yptMd);
          v46 = v125;
          v47 = v126;
          v48 = specialized __RawDictionaryStorage.find<A>(_:)(v125, v126);
          v50 = v49;

          if (v50)
          {
            __break(1u);
          }

          else
          {
            v45[(v48 >> 6) + 8] |= 1 << v48;
            v51 = (v45[6] + 16 * v48);
            *v51 = v46;
            v51[1] = v47;
            outlined init with take of Any(&v127, (v45[7] + 32 * v48));
            v52 = v45[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (!v53)
            {
              v45[2] = v54;
              v20 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v55 = @"NSCocoaErrorDomain";
              v56 = v55;
              if (!v20)
              {
LABEL_59:
                LOBYTE(v116) = 0;
                v125 = 0;
                LOBYTE(v118) = 0;
                v119 = 0;
                IsCF = __CFStringIsCF();
                if (!IsCF)
                {
                  v59 = v56;
                  String.init(_nativeStorage:)();
                  if (v60 || (v125 = [(__CFString *)v59 length]) == 0)
                  {

                    goto LABEL_87;
                  }

                  goto LABEL_86;
                }

                if (v125)
                {
                  if (v119 == 1)
                  {
                    if (v116)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_87:
                    v67 = objc_allocWithZone(NSError);
                    v68 = String._bridgeToObjectiveCImpl()();

                    v69 = [v67 initWithDomain:v68 code:3840 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v70 = [v69 domain];
                    v110 = v15;
                    if (!v70)
                    {
                      goto LABEL_101;
                    }

                    v71 = v70;
                    v72 = _objc_isTaggedPointer(v70);
                    v73 = v71;
                    v74 = v73;
                    if ((v72 & 1) == 0)
                    {
LABEL_93:
                      LOBYTE(v116) = 0;
                      v125 = 0;
                      LOBYTE(v118) = 0;
                      v119 = 0;
                      v79 = __CFStringIsCF();
                      if (v79)
                      {
                        if (v125)
                        {
                          if (v119 == 1)
                          {
                            if (v116)
                            {
                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                            }

                            else
                            {
                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                            }

                            v86 = String.init<A>(_immortalCocoaString:count:encoding:)();
                            goto LABEL_123;
                          }

                          if (v118)
                          {
                            if (v116 != 1)
                            {
                              v79 = [v74 lengthOfBytesUsingEncoding_];
                            }

                            MEMORY[0x1EEE9AC00](v79);
                            v88 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v78 = v89;
                            v90 = HIBYTE(v89) & 0xF;
                            if ((v89 & 0x2000000000000000) == 0)
                            {
                              v90 = v88 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v90)
                            {
                              v76 = v88;
                              goto LABEL_107;
                            }
                          }

LABEL_122:
                          v86 = String.init(_cocoaString:)();
LABEL_123:
                          v76 = v86;
                          v78 = v87;
                          goto LABEL_124;
                        }
                      }

                      else
                      {
                        v80 = v74;
                        v81 = String.init(_nativeStorage:)();
                        if (v82)
                        {
                          v76 = v81;
                          v78 = v82;

                          goto LABEL_125;
                        }

                        v125 = [v80 length];
                        if (v125)
                        {
                          goto LABEL_122;
                        }
                      }

LABEL_101:
                      v76 = 0;
                      v78 = 0xE000000000000000;
                      goto LABEL_125;
                    }

                    TaggedPointerTag = _objc_getTaggedPointerTag(v73);
                    if (TaggedPointerTag)
                    {
                      if (TaggedPointerTag != 22)
                      {
                        if (TaggedPointerTag == 2)
                        {
                          MEMORY[0x1EEE9AC00](TaggedPointerTag);
                          v76 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v78 = v77;

LABEL_125:
                          v91 = v56;
                          v92 = v91;
                          if (!v20)
                          {
                            goto LABEL_130;
                          }

                          v93 = _objc_getTaggedPointerTag(v91);
                          if (!v93)
                          {
                            goto LABEL_142;
                          }

                          if (v93 != 22)
                          {
                            if (v93 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v93);
                              v94 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v96 = v95;

                              goto LABEL_160;
                            }

LABEL_130:
                            LOBYTE(v116) = 0;
                            v125 = 0;
                            LOBYTE(v118) = 0;
                            v119 = 0;
                            v97 = __CFStringIsCF();
                            if (v97)
                            {
                              if (v125)
                              {
                                if (v119 == 1)
                                {
                                  if (v116)
                                  {
                                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                  }

                                  else
                                  {
                                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                  }

                                  v104 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                  goto LABEL_159;
                                }

                                if (v118)
                                {
                                  if (v116 != 1)
                                  {
                                    v97 = [(__CFString *)v92 lengthOfBytesUsingEncoding:4];
                                  }

                                  MEMORY[0x1EEE9AC00](v97);
                                  v106 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                  v96 = v107;
                                  v108 = HIBYTE(v107) & 0xF;
                                  if ((v107 & 0x2000000000000000) == 0)
                                  {
                                    v108 = v106 & 0xFFFFFFFFFFFFLL;
                                  }

                                  if (v108)
                                  {
                                    v94 = v106;

                                    goto LABEL_160;
                                  }
                                }

LABEL_158:
                                v104 = String.init(_cocoaString:)();
LABEL_159:
                                v94 = v104;
                                v96 = v105;
LABEL_160:
                                if (v76 == v94 && v78 == v96)
                                {

                                  outlined consume of XMLPlistError(v115, v114, v112, v113, v111);
LABEL_164:
                                  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
                                  (*(*(v110 - 8) + 104))(v17, *MEMORY[0x1E69E6B00]);
                                  swift_willThrow();
LABEL_165:

                                  return;
                                }

                                v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                outlined consume of XMLPlistError(v115, v114, v112, v113, v111);
                                if (v109)
                                {
                                  goto LABEL_164;
                                }

LABEL_168:
                                __break(1u);
                              }
                            }

                            else
                            {
                              v98 = v92;
                              v99 = String.init(_nativeStorage:)();
                              if (v100)
                              {
                                v94 = v99;
                                v96 = v100;

                                goto LABEL_160;
                              }

                              v125 = [(__CFString *)v98 length];
                              if (v125)
                              {
                                goto LABEL_158;
                              }
                            }

                            v94 = 0;
                            v96 = 0xE000000000000000;
                            goto LABEL_160;
                          }

                          v101 = [(__CFString *)v92 UTF8String];
                          if (v101)
                          {
                            v102 = String.init(utf8String:)(v101);
                            if (v103)
                            {
                              goto LABEL_143;
                            }

                            __break(1u);
LABEL_142:
                            v118 = 0;
                            _CFIndirectTaggedPointerStringGetContents();
                            v102 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v103)
                            {
                              [(__CFString *)v92 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v94 = v116;
                              v96 = v117;
                              goto LABEL_160;
                            }

LABEL_143:
                            v94 = v102;
                            v96 = v103;

                            goto LABEL_160;
                          }

                          goto LABEL_171;
                        }

                        goto LABEL_93;
                      }

                      v83 = [v74 UTF8String];
                      if (!v83)
                      {
LABEL_172:
                        __break(1u);
                        os_unfair_lock_unlock(v20 + 10);
                        __break(1u);
                        return;
                      }

                      v84 = String.init(utf8String:)(v83);
                      if (v85)
                      {
LABEL_106:
                        v76 = v84;
                        v78 = v85;
LABEL_107:

LABEL_124:
                        goto LABEL_125;
                      }

                      __break(1u);
                    }

                    v118 = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v84 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v85)
                    {
                      [v74 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v76 = v116;
                      v78 = v117;
                      goto LABEL_124;
                    }

                    goto LABEL_106;
                  }

                  if (v118)
                  {
                    if (v116 != 1)
                    {
                      IsCF = [(__CFString *)v56 lengthOfBytesUsingEncoding:4];
                    }

                    MEMORY[0x1EEE9AC00](IsCF);
                    v64 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v66 = HIBYTE(v65) & 0xF;
                    if ((v65 & 0x2000000000000000) == 0)
                    {
                      v66 = v64 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v66)
                    {
                      goto LABEL_84;
                    }
                  }

LABEL_86:
                  String.init(_cocoaString:)();
                  goto LABEL_87;
                }

LABEL_84:

                goto LABEL_87;
              }

              v57 = _objc_getTaggedPointerTag(v55);
              if (!v57)
              {
LABEL_70:
                v118 = 0;
                _CFIndirectTaggedPointerStringGetContents();
                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v63)
                {
                  [(__CFString *)v56 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_87;
                }

                goto LABEL_84;
              }

              if (v57 != 22)
              {
                if (v57 == 2)
                {
                  MEMORY[0x1EEE9AC00](v57);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_87;
                }

                goto LABEL_59;
              }

              v61 = [(__CFString *)v56 UTF8String];
              if (v61)
              {
                String.init(utf8String:)(v61);
                if (v62)
                {
                  goto LABEL_84;
                }

                __break(1u);
                goto LABEL_70;
              }

LABEL_170:
              __break(1u);
LABEL_171:
              __break(1u);
              goto LABEL_172;
            }
          }

          __break(1u);
          goto LABEL_168;
        }

        if (v124 == 3)
        {
          if (v123)
          {
            v125 = 0;
            v126 = 0xE000000000000000;
            _StringGuts.grow(_:)(47);
            MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181484E10);
            static String._uncheckedFromUTF8(_:)();
            Character.write<A>(to:)();

            MEMORY[0x1865CB0E0](0x656E696C206E6F20, 0xE900000000000020);
            v116 = v114;
            v34 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v34);

            MEMORY[0x1865CB0E0](32, 0xE100000000000000);

            v35 = v122;
            v36 = v123;
LABEL_50:
            MEMORY[0x1865CB0E0](v35, v36);

LABEL_51:
            v38 = v125;
            v39 = v126;
            goto LABEL_52;
          }

          v125 = 0;
          v126 = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          MEMORY[0x1865CB0E0](0xD000000000000021, 0x8000000181484E10);
          v44 = (v115 + 1);
          if ((v115 & 0x80) != 0)
          {
            v44 = (((v115 & 0x3F) << 8) | (v115 >> 6)) + 33217;
          }

          v116 = (v44 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v44) >> 3))));
          static String._uncheckedFromUTF8(_:)();
          Character.write<A>(to:)();

          v41 = 0x656E696C206E6F20;
          v42 = 0xE900000000000020;
          goto LABEL_48;
        }

        v125 = 0;
        v126 = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        MEMORY[0x1865CB0E0](0xD000000000000036, 0x8000000181484DD0);
      }

      v43 = &v133;
LABEL_49:
      v116 = *(v43 - 32);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      goto LABEL_50;
    }

    v21 = _objc_getTaggedPointerTag(v19);
    if (v21)
    {
      if (v21 != 22)
      {
        if (v21 == 2)
        {
          MEMORY[0x1EEE9AC00](v21);
          v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v24 = v23;

          goto LABEL_28;
        }

        goto LABEL_10;
      }

      v29 = [(os_unfair_lock_s *)v20 UTF8String];
      if (!v29)
      {
        __break(1u);
        goto LABEL_170;
      }

      v30 = String.init(utf8String:)(v29);
      if (v31)
      {
LABEL_19:
        v22 = v30;
        v24 = v31;

        goto LABEL_28;
      }

      __break(1u);
    }

    v118 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v31)
    {
      [(os_unfair_lock_s *)v20 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v22 = v116;
      v24 = v117;
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v11 = v10;

  v12 = *(a3 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA23_XMLPlistDecodingFormatVGMd);
  swift_allocObject();

  v25 = specialized _PlistDecoder.init(referencing:options:codingPathNode:)(v11, v12, 0x8000000000000000);

  *(&v127 + 1) = v13;
  v128 = &protocol witness table for _PlistDecoder<A>;
  v125 = v25;

  a4(&v125);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  if (!swift_isUniquelyReferenced_nonNull_native() || !swift_isUniquelyReferenced_nonNull_native())
  {
    v32 = *(*(v25 + 3) + 24);

    os_unfair_lock_lock((v32 + 40));
    closure #1 in XMLPlistMap.copyInBuffer()((v32 + 16));
    os_unfair_lock_unlock((v32 + 40));
  }

  *a6 = 100;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.skipXMLProcessingInstruction()()
{
  v1 = v0[3];
  v2 = v0[4];
  if (v1 >= v2 - 2)
  {
LABEL_8:
    v0[3] = v1;
    _StringGuts.grow(_:)(57);
    MEMORY[0x1865CB0E0](0xD000000000000037, 0x8000000181486350);
    BufferReader.lineNumber.getter();
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v8);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0xE000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    swift_willThrow();
  }

  else
  {
    v3 = *v0 + v0[1];
    v4 = v2 - v1 - 2;
    v5 = v3 - v1;
    v6 = v1 - *v0;
    v7 = v0[3];
    while (v3 >= v7)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_11;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_12;
      }

      if (*v7 == 15935)
      {
        v0[3] = v7 + 1;
        return;
      }

      v7 = (v7 + 1);
      v0[3] = v7;
      --v5;
      ++v6;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }
}

uint64_t specialized XMLPlistMap.TypeDescriptor.init(_:)(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 == 9)
    {
      v2 = 6;
    }

    else
    {
      v2 = 7;
    }

    if (a1 == 8)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2;
    }

    if (a1 == 6)
    {
      v4 = 5;
    }

    else
    {
      v4 = 2;
    }

    if (a1 <= 7u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 2u)
  {
    if (a1 == 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 4;
    }

    if (a1 == 3)
    {
      return 1;
    }

    else
    {
      return v5;
    }
  }

  else if (a1 == 1)
  {
    return 8;
  }

  else if (a1 == 2)
  {
    return 9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t specialized _PlistDecoder.init(referencing:options:codingPathNode:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[3] = a1;
  v3[2] = MEMORY[0x1E69E7CC0];

  result = XMLPlistMap.loadValue(at:)(0);
  if ((~result & 0xF000000000000007) != 0)
  {
    v8 = result;
    v9 = v4[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[2] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      v4[2] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = v8;
    v4[2] = v9;
    v4[4] = a2;
    v4[5] = a3;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t XMLPlistMap.loadValue(at:)(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    _StringGuts.grow(_:)(39);

    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](41, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    JUMPOUT(0x18087242CLL);
  }

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    goto LABEL_37;
  }

  v5 = v3 + 32;
  v6 = *(v3 + 32 + 8 * a1);
  v7 = specialized XMLPlistMap.TypeDescriptor.init(rawValue:)(v6);
  result = 0x8000000000000000;
  switch(v7)
  {
    case 2:
      if (a1 + 1 >= v4)
      {
        goto LABEL_43;
      }

      v24 = a1 + 2;
      if (a1 + 2 >= v4)
      {
        goto LABEL_47;
      }

      v25 = *(v5 + 8 * (a1 + 1));
      v26 = *(v5 + 8 * v24);
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v25;
      return v27 | 0x6000000000000000;
    case 3:
      if (a1 + 1 >= v4)
      {
        goto LABEL_44;
      }

      v28 = a1 + 2;
      if (a1 + 2 >= v4)
      {
        goto LABEL_48;
      }

      v29 = *(v5 + 8 * (a1 + 1));
      v30 = *(v5 + 8 * v28);
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = v29;
      return v31 | 0x7000000000000000;
    case 4:
      if (a1 + 1 >= v4)
      {
        goto LABEL_42;
      }

      v20 = a1 + 2;
      if (a1 + 2 >= v4)
      {
        goto LABEL_46;
      }

      v21 = *(v5 + 8 * (a1 + 1));
      v22 = *(v5 + 8 * v20);
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v21;
      return v23 | 0x3000000000000000;
    case 5:
      if (a1 + 1 >= v4)
      {
        goto LABEL_45;
      }

      v32 = a1 + 2;
      if (a1 + 2 >= v4)
      {
        goto LABEL_49;
      }

      v33 = *(v5 + 8 * (a1 + 1));
      v34 = *(v5 + 8 * v32);
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      *(v35 + 24) = v33;
      return v35 | 0x4000000000000000;
    case 6:
      v19 = swift_allocObject();
      *(v19 + 16) = 1;
      return v19 | 0x5000000000000000;
    case 7:
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      return v19 | 0x5000000000000000;
    case 8:
      if (a1 + 2 >= v4)
      {
        goto LABEL_40;
      }

      v15 = *(v5 + 8 * (a1 + 2));
      v16 = swift_allocObject();
      *(v16 + 16) = a1 + 3;
      *(v16 + 24) = v15;
      return v16 | 0x1000000000000000;
    case 9:
      if (a1 + 2 >= v4)
      {
        goto LABEL_41;
      }

      v17 = *(v5 + 8 * (a1 + 2));
      v18 = a1 + 3;
      if (XMLPlistMap.detectUID(dictionaryReferenceCount:objectOffset:)(v17, v18))
      {
        return 0x8000000000000008;
      }

      v36 = swift_allocObject();
      *(v36 + 16) = v18;
      *(v36 + 24) = v17;
      return v36 | 0x2000000000000000;
    case 10:
      return 0xF000000000000007;
    case 11:
      return result;
    case 14:
      goto LABEL_50;
    default:
      if (a1 + 1 >= v4)
      {
        goto LABEL_38;
      }

      v9 = a1 + 2;
      if (a1 + 2 >= v4)
      {
        goto LABEL_39;
      }

      v10 = *(v5 + 8 * (a1 + 1));
      v11 = *(v5 + 8 * v9);
      v12 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 12;
      v14 = v6 == 13 || v6 == 1;
      result = swift_allocObject();
      *(result + 16) = v11;
      *(result + 24) = v10;
      *(result + 32) = v14;
      *(result + 33) = v12;
      return result;
  }
}

unint64_t specialized XMLPlistMap.TypeDescriptor.init(rawValue:)(unint64_t result)
{
  if (result >= 0xE)
  {
    return 14;
  }

  return result;
}

uint64_t XMLPlistMap.detectUID(dictionaryReferenceCount:objectOffset:)(uint64_t a1, unint64_t a2)
{
  if (a1 != 2)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4 <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v3 + 32;
  if (*(v5 + 8 * a2) != 13)
  {
    return 0;
  }

  if (a2 + 1 >= v4)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);

    __break(1u);
    return result;
  }

  if (*(v5 + 8 * (a2 + 1)) == 6)
  {
    if (a2 + 2 < v4)
    {
      v6 = *(v2 + 24);
      MEMORY[0x1EEE9AC00](2);

      os_unfair_lock_lock((v6 + 40));
      partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v6 + 16), &v9);
      os_unfair_lock_unlock((v6 + 40));
      v7 = v9;

      return v7;
    }

    goto LABEL_14;
  }

  return 0;
}

unint64_t get_enum_tag_for_layout_string_10Foundation11XMLPlistMapC5ValueO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t storeEnumTagSinglePayload for XMLPlistMap.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XMLPlistMap.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t static _XMLPlistDecodingFormat.container<A>(keyedBy:for:referencing:codingPathNode:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  if (a2 >> 60 != 2)
  {
    if (a2 >> 60 == 8 && a2 == 0x8000000000000000)
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      v10 = *(v5 + 40);

      _CodingPathNode.path.getter(v10);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    }

    else
    {
      v11 = *(a3 + 40);

      _CodingPathNode.path.getter(v11);

      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v12, a2, v13);
    }

    return swift_willThrow();
  }

  v15 = v4;
  v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v68 = MEMORY[0x1E69E7CC8];
  v18 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation11XMLPlistMapC5ValueOGMd);
  Dictionary.reserveCapacity(_:)(v18 / 2);
  v19 = v68;
  v20 = XMLPlistMap.loadValue(at:)(v17);
  if ((~v20 & 0xF000000000000007) == 0)
  {
LABEL_8:

    swift_retain_n();
    swift_retain_n();

    type metadata accessor for _PlistKeyedDecodingContainer();
    swift_getWitnessTable();
    KeyedDecodingContainer.init<A>(_:)();
  }

  v21 = v20;
  v67 = v5;
  v66 = a4;
  while (1)
  {
    v24 = XMLPlistMap.offset(after:)(v17);
    v25 = XMLPlistMap.loadValue(at:)(v24);
    if ((~v25 & 0xF000000000000007) == 0)
    {
      goto LABEL_48;
    }

    v26 = v25;
    v69 = XMLPlistMap.offset(after:)(v24);
    if (v21 == 0x8000000000000000)
    {

      v61 = type metadata accessor for DecodingError();
      swift_allocError();
      v63 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v63 = MEMORY[0x1E69E6158];
      _CodingPathNode.path.getter(a4);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v61 - 8) + 104))(v63, *MEMORY[0x1E69E6B08], v61);
      swift_willThrow();

      outlined consume of XMLPlistMap.Value(v26);
    }

    v27 = *(v5 + 24);

    v28 = _s10Foundation23_XMLPlistDecodingFormatV12unwrapString4from2in3for_SSAA0B3MapC5ValueO_AiA15_CodingPathNodeOxSgtKs0L3KeyRzlFZAA01_lO0O_Tt3g5(v21, v27, a4, 0, 0, 0, 255);
    if (v15)
    {

      outlined consume of XMLPlistMap.Value(v26);

      outlined consume of XMLPlistMap.Value(v21);
    }

    v30 = v28;
    v31 = v29;

    outlined copy of XMLPlistMap.Value(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
    v35 = *(v19 + 16);
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v38 = v33;
    if (*(v19 + 24) >= v37)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v37, isUniquelyReferenced_nonNull_native);
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
    if ((v38 & 1) != (v40 & 1))
    {
      goto LABEL_49;
    }

    v34 = v39;
    v15 = 0;
    if (v38)
    {
LABEL_10:

      v22 = *(v19 + 56);
      v23 = *(v22 + 8 * v34);
      *(v22 + 8 * v34) = v26;
      outlined consume of XMLPlistMap.Value(v23);
      outlined consume of XMLPlistMap.Value(v26);
      outlined consume of XMLPlistMap.Value(v21);
      goto LABEL_11;
    }

LABEL_22:
    *(v19 + 8 * (v34 >> 6) + 64) |= 1 << v34;
    v41 = (*(v19 + 48) + 16 * v34);
    *v41 = v30;
    v41[1] = v31;
    *(*(v19 + 56) + 8 * v34) = v26;
    outlined consume of XMLPlistMap.Value(v26);
    outlined consume of XMLPlistMap.Value(v21);
    v42 = *(v19 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_46;
    }

    *(v19 + 16) = v44;
LABEL_11:
    v17 = v69;
    v21 = XMLPlistMap.loadValue(at:)(v69);
    a4 = v66;
    v5 = v67;
    if ((~v21 & 0xF000000000000007) == 0)
    {
      goto LABEL_8;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v15 = 0;
    if (v33)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation11XMLPlistMapC5ValueOGMd);
  v65 = static _DictionaryStorage.copy(original:)();
  if (!*(v19 + 16))
  {
LABEL_40:

    v19 = v65;
    v15 = 0;
    if (v38)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v45 = (v65 + 64);
  v46 = (v19 + 64);
  v47 = ((1 << *(v65 + 32)) + 63) >> 6;
  if (v65 != v19 || v45 >= &v46[8 * v47])
  {
    memmove(v45, v46, 8 * v47);
  }

  v48 = 0;
  *(v65 + 16) = *(v19 + 16);
  v49 = 1 << *(v19 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v19 + 64);
  v52 = (v49 + 63) >> 6;
  if (v51)
  {
    do
    {
      v53 = __clz(__rbit64(v51));
      v64 = (v51 - 1) & v51;
LABEL_38:
      v56 = v53 | (v48 << 6);
      v57 = (*(v19 + 48) + 16 * v56);
      v58 = v57[1];
      v59 = *(*(v19 + 56) + 8 * v56);
      v60 = (*(v65 + 48) + 16 * v56);
      *v60 = *v57;
      v60[1] = v58;
      *(*(v65 + 56) + 8 * v56) = v59;

      outlined copy of XMLPlistMap.Value(v59);
      v51 = v64;
    }

    while (v64);
  }

  v54 = v48;
  while (1)
  {
    v48 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v48 >= v52)
    {
      goto LABEL_40;
    }

    v55 = *(v19 + 64 + 8 * v48);
    ++v54;
    if (v55)
    {
      v53 = __clz(__rbit64(v55));
      v64 = (v55 - 1) & v55;
      goto LABEL_38;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall XMLPlistMap.offset(after:)(Swift::Int after)
{
  if (after < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4 <= after)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v3 + 32;
  v6 = specialized XMLPlistMap.TypeDescriptor.init(rawValue:)(*(v3 + 32 + 8 * after));
  if (v6 > 5)
  {
    if (v6 <= 10)
    {
      if ((v6 - 6) >= 2)
      {
        if ((v6 - 8) >= 2)
        {
LABEL_18:
          _StringGuts.grow(_:)(68);
          MEMORY[0x1865CB0E0](0xD000000000000041, 0x8000000181482610);
          v8 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v8);

          MEMORY[0x1865CB0E0](41, 0xE100000000000000);
LABEL_20:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        if (after + 1 < v4)
        {
          return *(v5 + 8 * (after + 1));
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      return after + 1;
    }

    if ((v6 - 12) >= 2)
    {
LABEL_13:
      if (v6 != 11)
      {
        _StringGuts.grow(_:)(43);

        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v9);

        MEMORY[0x1865CB0E0](41, 0xE100000000000000);
        goto LABEL_20;
      }

      return after + 1;
    }
  }

  result = after + 3;
  if (__OFADD__(after, 3))
  {
    __break(1u);
    goto LABEL_13;
  }

  return result;
}

unint64_t specialized closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  result = specialized closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(a1, a2, a3, a4, a5, a6, *a7, *(a7 + 8), *(a7 + 16), *(a7 + 24));
  if (!v8)
  {
    *a8 = result;
    a8[1] = v11;
  }

  return result;
}

unint64_t specialized closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v11 = result;
  if (a5)
  {
    result = static String._tryFromUTF8(_:)();
    if (v15)
    {
      return result;
    }

    v11 = a10;
    v16 = a9;
    v71 = 0;
    v72 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000035, 0x8000000181486100);
    v69 = 1;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v17);

    if (a10 == 0xFF)
    {

LABEL_134:
      v55 = type metadata accessor for DecodingError();
      swift_allocError();
      v57 = v56;
      outlined copy of _CodingKey?(a7, a8, a9, a10);
      _CodingPathNode.path.getter(a6);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6B00], v55);

      return swift_willThrow();
    }

    v18 = swift_allocObject();
    v18[5] = &type metadata for _CodingKey;
    v18[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v19 = swift_allocObject();
    v18[2] = v19;
    *(v19 + 16) = a7;
    *(v19 + 24) = a8;
    *(v19 + 32) = a9;
    *(v19 + 40) = a10;
    v18[7] = a6;
    if (a6 >> 62)
    {
      if (a6 >> 62 != 1)
      {
        v54 = 1;
        goto LABEL_133;
      }

      v20 = ((a6 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = (a6 + 64);
    }

    v53 = *v20;

    v54 = v53 + 1;
    if (!__OFADD__(v53, 1))
    {
LABEL_133:
      v18[8] = v54;
      a6 = v18;
      goto LABEL_134;
    }

    __break(1u);
LABEL_137:
    a4 = v64;
    if (a7 < v11)
    {
      __break(1u);
      return v69;
    }

LABEL_10:
    if (&v11[-v16] >= 0)
    {
      if (a7 - v11 >= 0)
      {
        if (v16 + a4 - a7 >= 0)
        {
          result = static String._tryFromUTF8(_:)();
          if (v22)
          {
            return result;
          }

LABEL_14:
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v23 = 0u;
          *(v23 + 16) = 0u;
          v24 = 6;
          goto LABEL_175;
        }

        goto LABEL_212;
      }

LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v16 = a3;
  v21 = result + a2;
  v71 = a3;
  v72 = a4;
  v73 = result;
  v74 = result;
  v75 = result + a2;
  if (a2 >= 5)
  {
    if (a3 + a4 < result)
    {
LABEL_191:
      __break(1u);
      goto LABEL_192;
    }

    if ((result - a3) < 0)
    {
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
      goto LABEL_198;
    }

    if ((a3 + a4 - result) < 0)
    {
      goto LABEL_193;
    }

    if (*result == 1819635236 && *(result + 4) == 108)
    {
      return 0;
    }

    v69 = 0;
    v70 = 0;
  }

  else
  {
    v69 = 0;
    v70 = 0;
    if (a2 < 1)
    {
      a7 = result;
      goto LABEL_10;
    }
  }

  v26 = a3 + a4;
  if ((a3 + a4 - v21) < 0)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  v64 = a4;
  v27 = (result + 1);
  v67 = a4 + a3 - 9;
  v66 = 9 - a3;
  v65 = a2 + result - 11;
  a7 = result;
  while (1)
  {
    if (v21 < a7)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    if (&a7[-v16] < 0)
    {
      goto LABEL_184;
    }

    if ((v21 - a7) < 0)
    {
      goto LABEL_185;
    }

    v28 = *a7;
    if (v28 == 38)
    {
      break;
    }

    if (v28 == 60)
    {
      if (v21 < (a7 + 2) || *v27 != 33)
      {
LABEL_124:
        if (v70)
        {
          if (result >= a7)
          {
            return v69;
          }

          if ((result - v16) >= 0)
          {
            if (&a7[-result] >= 0)
            {
              if ((v26 - a7) >= 0)
              {
                v51 = static String._tryFromUTF8(_:)();
                if (v52)
                {
                  MEMORY[0x1865CB0E0](v51);

                  return v69;
                }

                goto LABEL_14;
              }

LABEL_227:
              __break(1u);
              return result;
            }

LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

LABEL_225:
          __break(1u);
          goto LABEL_226;
        }

        goto LABEL_137;
      }

      if (v70)
      {
        if (a7 < result)
        {
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        if ((result - v16) < 0)
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (&a7[-result] < 0)
        {
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if ((v26 - a7) < 0)
        {
          goto LABEL_201;
        }

        v29 = static String._tryFromUTF8(_:)();
        if (!v30)
        {
          goto LABEL_14;
        }

        MEMORY[0x1865CB0E0](v29);
      }

      else
      {
        if (a7 < result)
        {
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        if ((result - v16) < 0)
        {
LABEL_207:
          __break(1u);
          goto LABEL_208;
        }

        if (&a7[-result] < 0)
        {
LABEL_208:
          __break(1u);
          goto LABEL_209;
        }

        if ((v26 - a7) < 0)
        {
LABEL_209:
          __break(1u);
          goto LABEL_210;
        }

        v69 = static String._tryFromUTF8(_:)();
        v70 = v40;
        if (!v40)
        {
          goto LABEL_14;
        }
      }

      result = (a7 + 9);
      if (v21 < (a7 + 9))
      {
        goto LABEL_121;
      }

      if (v26 >= a7)
      {
        if ((v26 - a7) >= 0)
        {
          if (*a7 != 0x41544144435B213CLL || a7[8] != 91)
          {
            _StringGuts.grow(_:)(45);

            for (i = 1; v11 < a7; ++v11)
            {
              if (*v11 == 13)
              {
                v59 = __OFADD__(i++, 1);
                if (v59)
                {
                  goto LABEL_216;
                }

                if (v11 + 1 < a7 && v11[1] == 10)
                {
                  ++v11;
                }
              }

              else
              {
                if (v64 < 2)
                {
                  goto LABEL_215;
                }

                if (*(v16 + 1) == 10)
                {
                  v59 = __OFADD__(i++, 1);
                  if (v59)
                  {
                    __break(1u);
                    break;
                  }
                }
              }
            }

            v91 = i;
            v60 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v60);

            lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
            swift_allocError();
            *v23 = 0xD00000000000002BLL;
            *(v23 + 8) = 0x8000000181486140;
            *(v23 + 16) = 0;
            *(v23 + 24) = 0;
            v24 = 5;
            goto LABEL_175;
          }

          v74 = (a7 + 9);
          if (result < v21 - 2)
          {
            v42 = 0;
            v43 = v67 - a7;
            while (1)
            {
              v44 = &a7[v42 + 9];
              if (v26 < v44)
              {
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
              }

              if (&a7[v66 + v42] < 0)
              {
                goto LABEL_180;
              }

              if (v43 < 0)
              {
                goto LABEL_181;
              }

              if (*v44 == 23901 && a7[v42 + 11] == 62)
              {
                break;
              }

              ++v42;
              --v43;
              if (v65 - a7 == v42)
              {
                v74 = &a7[v42 + 9];
                goto LABEL_121;
              }
            }

            v46 = &a7[v42];
            v74 = (v46 + 9);
            if (!v70)
            {
LABEL_107:
              result = (v46 + 12);
              v74 = (v46 + 12);
              v27 = v46 + 12;
              goto LABEL_26;
            }

            if (v42 >= 0xFFFFFFFFFFFFFFF7)
            {
              goto LABEL_213;
            }

            if ((result - v16) >= 0)
            {
              v47 = static String._tryFromUTF8(_:)();
              if (!v48)
              {
                goto LABEL_14;
              }

              MEMORY[0x1865CB0E0](v47);

              goto LABEL_107;
            }

LABEL_214:
            __break(1u);
LABEL_215:
            __break(1u);
LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
LABEL_219:
            __break(1u);
LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
LABEL_222:
            __break(1u);
LABEL_223:
            __break(1u);
LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

LABEL_121:
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v50 = 0u;
          *(v50 + 16) = 0u;
          *(v50 + 32) = 0;
          goto LABEL_176;
        }

        goto LABEL_189;
      }

LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v74 = v27;
LABEL_26:
    a7 = v27++;
    if (v21 < v27)
    {
      goto LABEL_124;
    }
  }

  if (v70)
  {
    if (a7 < result)
    {
      goto LABEL_194;
    }

    if ((result - v16) < 0)
    {
      goto LABEL_195;
    }

    if (&a7[-result] < 0)
    {
      goto LABEL_196;
    }

    if ((v26 - a7) < 0)
    {
      goto LABEL_197;
    }

    v31 = static String._tryFromUTF8(_:)();
    if (!v32)
    {
      goto LABEL_14;
    }

    MEMORY[0x1865CB0E0](v31);
  }

  else
  {
    if (a7 < result)
    {
      goto LABEL_202;
    }

    if ((result - v16) < 0)
    {
      goto LABEL_203;
    }

    if (&a7[-result] < 0)
    {
      goto LABEL_204;
    }

    if ((v26 - a7) < 0)
    {
      goto LABEL_205;
    }

    result = static String._tryFromUTF8(_:)();
    v69 = result;
    v70 = v33;
    if (!v33)
    {
      goto LABEL_14;
    }
  }

  v34 = a7 + 1;
  v74 = (a7 + 1);
  v35 = v21 - (a7 + 1);
  if (v35 < 1)
  {
    goto LABEL_121;
  }

  v36 = a7 + 2;
  if (v21 < (a7 + 2))
  {
LABEL_140:
    v86 = v16;
    v87 = v64;
    v88 = v11;
    v89 = a7 + 1;
    v90 = v21;
LABEL_173:
    v63 = BufferReader.lineNumber.getter();
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v23 = v63;
    goto LABEL_174;
  }

  if (v21 < v34)
  {
    goto LABEL_186;
  }

  if (&v34[-v16] < 0)
  {
    goto LABEL_187;
  }

  v37 = *v34;
  if (v37 <= 0x66)
  {
    if (v37 == 35)
    {
      v74 = (a7 + 2);
      specialized static XMLPlistScanner.parseNumericEntityReference(reader:string:)(&v71);
      if (v10)
      {
      }

      v49 = v70;
      if (!v70)
      {
        goto LABEL_117;
      }

LABEL_116:
      v68 = v49;
      String.UnicodeScalarView.append(_:)();
      v70 = v68;
LABEL_117:
      result = v74;
      v27 = v74;
      goto LABEL_26;
    }

    if (v37 != 97)
    {
      goto LABEL_140;
    }

    if (v35 < 4)
    {
      goto LABEL_121;
    }

    if (v26 < v36)
    {
      goto LABEL_218;
    }

    if (v36 - v16 < 0)
    {
      goto LABEL_220;
    }

    if ((v26 - v36) < 0)
    {
      goto LABEL_222;
    }

    if (*v36 == 28781 && a7[4] == 59)
    {
      v38 = a7 + 5;
    }

    else
    {
      if (v35 == 4 || *v36 != 997420912)
      {
        v76 = v16;
        v77 = v64;
        v78 = v11;
        v79 = a7 + 1;
        v80 = v21;
        goto LABEL_173;
      }

      v38 = a7 + 6;
    }

LABEL_119:
    v74 = v38;
    v49 = v70;
    if (!v70)
    {
      goto LABEL_117;
    }

    goto LABEL_116;
  }

  if (v37 == 103)
  {
    goto LABEL_61;
  }

  if (v37 == 113)
  {
    if (v35 < 5)
    {
      goto LABEL_171;
    }

    if (v26 < v36)
    {
      goto LABEL_217;
    }

    if (v36 - v16 < 0)
    {
      goto LABEL_219;
    }

    if ((v26 - v36) < 0)
    {
      goto LABEL_221;
    }

    if (*v36 != 997486453)
    {
LABEL_171:
      v81 = v16;
      v82 = v64;
      v83 = v11;
      v84 = a7 + 1;
      v85 = v21;
      goto LABEL_173;
    }

    v38 = a7 + 6;
    goto LABEL_119;
  }

  if (v37 != 108)
  {
    goto LABEL_140;
  }

LABEL_61:
  v38 = a7 + 4;
  if (v21 >= (a7 + 4) && a7[2] == 116 && a7[3] == 59)
  {
    goto LABEL_119;
  }

  v61 = 1;
  if (v34 <= v11)
  {
    goto LABEL_170;
  }

  while (2)
  {
    if (*v11 == 13)
    {
      v59 = __OFADD__(v61++, 1);
      if (v59)
      {
        goto LABEL_224;
      }

      if (v11 < a7 && v11[1] == 10)
      {
        ++v11;
      }

LABEL_158:
      if (v11++ >= a7)
      {
        goto LABEL_170;
      }

      continue;
    }

    break;
  }

  if (v64 < 2)
  {
    goto LABEL_223;
  }

  if (*(v16 + 1) != 10)
  {
    goto LABEL_158;
  }

  v59 = __OFADD__(v61++, 1);
  if (!v59)
  {
    goto LABEL_158;
  }

  __break(1u);
LABEL_170:
  lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
  swift_allocError();
  *v23 = v61;
LABEL_174:
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = 4;
LABEL_175:
  *(v23 + 32) = v24;
LABEL_176:
  swift_willThrow();
}

uint64_t sub_180873B9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_180873BE0()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

unint64_t outlined copy of XMLPlistMap.Value(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

unint64_t outlined consume of XMLPlistMap.Value(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) > 3)
  {
    if (v1 > 5)
    {
      if (v1 == 6 || v1 == 7)
      {
      }
    }

    else if (v1 == 4 || v1 == 5)
    {
    }
  }

  else
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    if (v1 == 2 || v1 == 3)
    {
    }
  }

  return result;
}

unint64_t protocol witness for PlistDecodingMap.value(from:) in conformance XMLPlistMap@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return outlined copy of XMLPlistMap.Value(v2);
}

uint64_t _NSProgressFractionIsEqual(int64_t *a1, int64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = a2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  result = *a1 == *a2;
  if (v2 == v3)
  {
    return result;
  }

  if (!(v5 | v4))
  {
    return 1;
  }

  if (v4 != v2)
  {
    if (v4)
    {
      if (v5)
      {
        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  result = v5 == v3;
  if (v5 != v3 && v5)
  {
LABEL_12:
    if ((v5 * v2) >> 64 == (v5 * v2) >> 63)
    {
      v7 = a2[1];
      v8 = *a2;
      if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
      {
        return v5 * v2 == v3 * v4;
      }
    }

    else
    {
      v7 = a2[1];
      v8 = *a2;
    }

    do
    {
      v9 = v8;
      v8 = v7;
      v7 = v9 % v7;
    }

    while (v7);
    v10 = v2;
    v11 = v4;
    do
    {
      v12 = v11;
      v11 = v10;
      v10 = v12 % v10;
    }

    while (v10);
    v13 = v5 / v8 * (v2 / v11);
    if ((v5 / v8 * (v2 / v11)) >> 64 == v13 >> 63 && (v14 = v3 / v8, v15 = v4 / v11, v16 = v3 / v8 * v15, (v14 * v15) >> 64 == v16 >> 63))
    {
      return v13 == v16;
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
      if (((v4 | v2) & 0x8000000000000000) == 0)
      {
        v18 = v4 / v2;
      }

      if (((v5 | v3) & 0x8000000000000000) == 0)
      {
        v17 = v5 / v3;
      }

      return v18 == v17;
    }
  }

  return result;
}

void *keysChangedForFractionCompletedValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = v6;
  v8 = *(a1 + 16);
  if (v8 < 0)
  {
    v10 = 1;
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = (v9 | v8) == 0;
    if (v9 < 0)
    {
      v10 = 1;
    }
  }

  v11 = *(a1 + 32);
  if ((a3 | a2) < 0)
  {
    if (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (((a3 | a2) == 0) != v10)
  {
LABEL_8:
    [v6 addObject:@"indeterminate"];
  }

LABEL_9:
  v24 = *(a1 + 40);
  v25 = *(a1 + 56);
  v12 = *(a1 + 24);
  if (v12 != a3 && v12 >= 1)
  {
    v22 = a3;
    v23 = 0;
    v21 = v12;
    _NSProgressFractionMultiplyByFraction(&v24, &v21);
  }

  v21 = a2;
  v22 = a3;
  v23 = v11;
  _NSProgressFractionAddFraction(&v21, &v24);
  [a1 overallFraction];
  if ((_NSProgressFractionIsFractionCompletedEqual(&v21, &v20) & 1) == 0)
  {
    [v7 addObject:@"fractionCompleted"];
  }

  if (*(a1 + 24) != a3)
  {
    [v7 addObject:@"totalUnitCount"];
  }

  v13 = a2;
  if (*(a1 + 16) != a2)
  {
    [v7 addObject:@"completedUnitCount"];
    v13 = *(a1 + 16);
  }

  v14 = *(a1 + 24);
  if (v13 < 1 || v13 < v14 || v14 <= 0)
  {
    v15 = v13 > 0 && v14 == 0;
    if (a2 < 1 || a2 < a3 || a3 <= 0)
    {
      v19 = a2 > 0 && a3 == 0;
      if (v19 != v15)
      {
        goto LABEL_37;
      }

      return v7;
    }
  }

  else
  {
    LOBYTE(v15) = a2 >= a3;
    if (a3 <= 0)
    {
      LOBYTE(v15) = 0;
    }

    if (!a3)
    {
      LOBYTE(v15) = 1;
    }

    if (a2 < 1)
    {
      goto LABEL_37;
    }
  }

  if ((v15 & 1) == 0)
  {
LABEL_37:
    [v7 addObject:@"finished"];
  }

  return v7;
}

uint64_t _NSProgressFractionAddFraction(uint64_t result, int64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = a2[1];
      v5 = *(result + 8);
      do
      {
        v6 = v5;
        v5 = v4;
        v4 = v6 % v4;
      }

      while (v4);
      v7 = v3 / v5;
      v8 = v7 * v2;
      if ((v7 * v2) >> 64 == (v7 * v2) >> 63)
      {
        v13 = *result;
        v20 = v8 / v3 * *result;
        v14 = *a2;
        v21 = v8 / v2 * *a2;
        v22 = __OFADD__(v20, v21);
        v23 = v20 + v21;
      }

      else
      {
        v9 = *result;
        v10 = *(result + 8);
        v11 = *result;
        do
        {
          v12 = v11;
          v11 = v10;
          v10 = v12 % v10;
        }

        while (v10);
        v13 = v9 / v11;
        v3 /= v11;
        *result = v9 / v11;
        *(result + 8) = v3;
        v14 = *a2;
        v2 = a2[1];
        if (v2)
        {
          v15 = a2[1];
          v16 = *a2;
          do
          {
            v17 = v16;
            v16 = v15;
            v15 = v17 % v15;
          }

          while (v15);
          v18 = v14 / v16;
          v19 = v2 / v16;
        }

        else
        {
          v19 = 0;
          v18 = *a2;
        }

        v24 = v19;
        v25 = v3;
        do
        {
          v26 = v25;
          v25 = v24;
          v24 = v26 % v24;
        }

        while (v24);
        v27 = v3 / v25;
        v8 = v3 / v25 * v19;
        if ((v27 * v19) >> 64 != v8 >> 63)
        {
          goto LABEL_22;
        }

        v28 = v8 / v3 * v13;
        v29 = v8 / v19 * v18;
        v22 = __OFADD__(v28, v29);
        v23 = v28 + v29;
      }

      v30 = v22;
      if ((v30 & 1) == 0)
      {
        *result = v23;
LABEL_39:
        *(result + 8) = v8;
        return result;
      }

LABEL_22:
      *(result + 16) = 1;
      v31 = 0.0;
      v32 = 0.0;
      if ((v13 & 0x8000000000000000) == 0 && (v3 & 0x8000000000000000) == 0 && v13 | v3)
      {
        if (!v3)
        {
          v32 = 1.0;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

        v32 = v13 / v3;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_28:
        if ((v2 & 0x8000000000000000) == 0 && v14 | v2)
        {
          if (v2)
          {
            v31 = v14 / v2;
          }

          else
          {
            v31 = 1.0;
          }
        }
      }

LABEL_36:
      v33 = vcvtd_n_s64_f64(v32 + v31, 0x20uLL);
      v34 = 0x100000000;
      v35 = v33;
      do
      {
        v36 = v35;
        v35 = v34;
        v34 = v36 % v34;
      }

      while (v34);
      *result = v33 / v35;
      v8 = 0x100000000 / v35;
      goto LABEL_39;
    }
  }

  return result;
}

uint64_t _NSProgressFractionIsFractionCompletedEqual(int64_t *a1, int64_t *a2)
{
  if (_NSProgressFractionIsEqual(a1, a2))
  {
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    if (*a1)
    {
      LOBYTE(v5) = v5 >= 0 && a1[1] > 0;
    }

    v7 = *a2;
    if (*a2)
    {
      LOBYTE(v7) = v7 >= 0 && a2[1] > 0;
    }

    v4 = (v5 | v7) ^ 1;
  }

  return v4 & 1;
}

void *Calendar.locale.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v5 + 32))(&v15, ObjectType, v5);
  if (!v3)
  {
    if (!v15)
    {
      return result;
    }

    goto LABEL_10;
  }

  v13 = v3;
  v14 = v4;
  if (!v15)
  {
    swift_unknownObjectRetain();
LABEL_10:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v12 = v15;
  swift_unknownObjectRetain_n();
  v8 = specialized static Locale.== infix(_:_:)(&v13, &v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v8 & 1) == 0)
  {
LABEL_11:
    *&v15 = v3;
    *(&v15 + 1) = v4;
    v13 = 0;
    v14 = 0;
    v9 = (*(v5 + 112))(&v15, &v13, 0, 1, 0, 1, ObjectType, v5);
    v11 = v10;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *v2 = v9;
    v2[1] = v11;
    return result;
  }

  return swift_unknownObjectRelease();
}

id protocol witness for _CalendarProtocol.bridgeToNSCalendar() in conformance _CalendarICU(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _NSSwiftCalendar();
  v5 = objc_allocWithZone(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = v2;
  *(v6 + 24) = a2;
  *&v5[OBJC_IVAR____NSSwiftCalendar__lock] = v6;
  v7 = *MEMORY[0x1E695D850];
  v9.receiver = v5;
  v9.super_class = v4;

  result = objc_msgSendSuper2(&v9, sel_initWithCheckedCalendarIdentifier_, v7);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static TimeZone.nameForSecondsFromGMT(_:)(uint64_t a1)
{
  if ((a1 - 64801) < 0xFFFFFFFFFFFE05BFLL)
  {
    return 0;
  }

  result = 5524807;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  v4 = (v3 + 30) % 0xE10u;
  if (v3 > 0xDF1 || (v3 + 30) % 0xE10u >= 0x3C)
  {
    v5 = a1;
    if (v3 > 0x8C81)
    {
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v7 = v9;
    }

    else
    {
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v6);

      v8 = 48;
      v7 = 0xE100000000000000;
    }

    if (v4 > 0x257u)
    {
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v13;
    }

    else
    {
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v10);

      v12 = 48;
      v11 = 0xE100000000000000;
    }

    if (v5 >= 0)
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    MEMORY[0x1865CB0E0](v14, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v8, v7);

    MEMORY[0x1865CB0E0](v12, v11);

    return 5524807;
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation8TimeZoneVSgSg(uint64_t *a1)
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

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v148 = a1;
  v149 = a2;
  v11 = v4;
  v9 = *v4;
  v10 = v11[1];
  v12 = v7[2];
  v14 = *(a4 + 24);
  v157 = *(a4 + 16);
  v13 = v157;
  v158 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v156);
  v16 = *(v13 - 8);
  (*(v16 + 16))(boxed_opaque_existential_0, a3, v13);
  v17 = *(v9 + 152);
  if (!v17)
  {
    v20 = dispatch thunk of CodingKey.stringValue.getter();
    v21 = v28;
    goto LABEL_83;
  }

  if (v17 != 1)
  {
    v29 = *(v9 + 160);

    v30 = __JSONEncoder.codingPath.getter();
    v31 = _CodingPathNode.path.getter(v12);
    v153 = v30;
    specialized Array.append<A>(contentsOf:)(v31);
    v32 = v30;
    outlined init with copy of Hashable & Sendable(v156, &v153);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
    }

    v35 = v32[2];
    v34 = v32[3];
    v144 = v5;
    v143 = v10;
    v147 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = __swift_mutable_project_boxed_opaque_existential_1(&v153, v155);
    v37 = MEMORY[0x1EEE9AC00](v36);
    v39 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39, v37);
    v151 = v13;
    v152 = v14;
    v41 = __swift_allocate_boxed_opaque_existential_0(&v150);
    (*(v16 + 32))(v41, v39, v13);
    v32[2] = v147;
    outlined init with take of Equatable(&v150, &v32[5 * v35 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v153);
    (v17)(&v153, v32);

    __swift_project_boxed_opaque_existential_1(&v153, v155);
    v20 = dispatch thunk of CodingKey.stringValue.getter();
    v21 = v42;
    sub_1807A5C7C(v17);
    __swift_destroy_boxed_opaque_existential_1(&v153);
    goto LABEL_82;
  }

  v18 = dispatch thunk of CodingKey.stringValue.getter();
  v20 = v18;
  v21 = v19;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v17 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v22 = String.index(after:)();
    v23 = 7;
    if (((v21 >> 60) & ((v20 & 0x800000000000000) == 0)) != 0)
    {
      v23 = 11;
    }

    v141 = 4 * v17;
    if (4 * v17 < v22 >> 14)
    {
      __break(1u);
    }

    else
    {
      v140 = v23 | (v17 << 16);
      v159 = v20;
      v142 = v21;
      v24 = String.subscript.getter();
      v20 = v27;
      v144 = v5;
      v143 = v10;
      if ((v24 ^ v25) >= 0x4000)
      {
        v43 = v24;
        v44 = v25;
        v17 = v26;
        v145 = MEMORY[0x1E69E7CC0];
        v21 = 0x700030001;
        v147 = 15;
        while (1)
        {
          v10 = Substring.UnicodeScalarView.index(before:)();
          v45 = Substring.UnicodeScalarView.subscript.getter();
          v46 = v45;
          v47 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v45), 1u);
          v48 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v46, v47, 0x700030001);
          v49 = v43;
          if (!v48)
          {
            break;
          }

LABEL_20:
          v50 = Substring.UnicodeScalarView.index(after:)();

          v51 = v49 >> 14;
          v52 = v147;
          if (v49 >> 14 < v147 >> 14 || v50 >> 14 < v51)
          {
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          v12 = v145;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
          }

          v54 = *(v12 + 16);
          v53 = *(v12 + 24);
          if (v54 >= v53 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v12);
          }

          *(v12 + 16) = v54 + 1;
          v145 = v12;
          v55 = v12 + 16 * v54;
          *(v55 + 32) = v52;
          *(v55 + 40) = v49;
          v137 = v49 >> 14;
          if (v141 < v51)
          {
            goto LABEL_116;
          }

          v56 = String.subscript.getter();
          v20 = v59;
          if ((v56 ^ v57) < 0x4000)
          {
            goto LABEL_72;
          }

          v10 = v56;
          v44 = v57;
          v60 = v58;
          v147 = Substring.UnicodeScalarView.index(before:)();
          v61 = Substring.UnicodeScalarView.subscript.getter();
          v62 = v61;
          v6 = 0x700030000;
          v63 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v61), 0);
          v64 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v62, v63, 0x700030000);
          v65 = v10;
          v21 = v142;
          if (!v64)
          {
            v74 = HIBYTE(v20) & 0xF;
            if ((v20 & 0x2000000000000000) == 0)
            {
              v74 = v60 & 0xFFFFFFFFFFFFLL;
            }

            v146 = v74;
            v139 = v20 & 0xFFFFFFFFFFFFFFLL;
            v138 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v65 = v10;
            while ((v65 ^ v147) >= 0x4000)
            {
              v68 = _StringGuts.validateInclusiveScalarIndex(_:)(v65, v60, v20);
              v17 = v68 >> 16;
              if (v68 >> 16 >= v146)
              {
                goto LABEL_93;
              }

              if ((v20 & 0x1000000000000000) != 0)
              {
                v65 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v20 & 0x2000000000000000) != 0)
                {
                  v153 = v60;
                  v154 = v139;
                  v77 = *(&v153 + v17);
                }

                else
                {
                  v76 = v138;
                  if ((v60 & 0x1000000000000000) == 0)
                  {
                    v76 = _StringObject.sharedUTF8.getter();
                  }

                  v77 = *(v76 + v17);
                }

                v78 = v77;
                v79 = __clz(v77 ^ 0xFF) - 24;
                if (v78 >= 0)
                {
                  LOBYTE(v79) = 1;
                }

                v65 = ((v17 + v79) << 16) | 5;
              }

              v12 = Substring.UnicodeScalarView.subscript.getter();
              v75 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v12), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v12, v75, 0x700030000))
              {
                goto LABEL_29;
              }
            }

LABEL_72:
            v147 = v49;
            goto LABEL_73;
          }

LABEL_29:
          v66 = Substring.UnicodeScalarView.index(after:)();

          v12 = v65 >> 14;
          if (v66 >> 14 < v65 >> 14)
          {
            goto LABEL_117;
          }

          if (v12 == String.index(after:)() >> 14)
          {
            v147 = v49;
          }

          else
          {
            v147 = String.index(before:)();
            if (v137 > v147 >> 14)
            {
              goto LABEL_119;
            }

            v12 = *(v145 + 2);
            v80 = *(v145 + 3);
            if (v12 >= v80 >> 1)
            {
              v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v12 + 1, 1, v145);
            }

            v81 = v145;
            *(v145 + 2) = v12 + 1;
            v82 = &v81[16 * v12];
            v83 = v147;
            *(v82 + 4) = v49;
            *(v82 + 5) = v83;
          }

          if (v141 < v66 >> 14)
          {
            goto LABEL_118;
          }

          v43 = String.subscript.getter();
          v44 = v84;
          v17 = v85;
          v20 = v86;
          v21 = 0x700030001;
          if ((v43 ^ v84) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v20 & 0x2000000000000000) != 0)
        {
          v6 = HIBYTE(v20) & 0xF;
        }

        else
        {
          v6 = v17 & 0xFFFFFFFFFFFFLL;
        }

        v146 = v20 & 0xFFFFFFFFFFFFFFLL;
        v139 = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v49 = v43;
        while ((v49 ^ v10) >= 0x4000)
        {
          v68 = _StringGuts.validateInclusiveScalarIndex(_:)(v49, v17, v20);
          v69 = v68 >> 16;
          if (v68 >> 16 >= v6)
          {
            __break(1u);
LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

          if ((v20 & 0x1000000000000000) != 0)
          {
            v49 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v20 & 0x2000000000000000) != 0)
            {
              v153 = v17;
              v154 = v146;
              v71 = *(&v153 + v69);
            }

            else
            {
              v70 = v139;
              if ((v17 & 0x1000000000000000) == 0)
              {
                v70 = _StringObject.sharedUTF8.getter();
              }

              v71 = *(v70 + v69);
            }

            v72 = v71;
            v73 = __clz(v71 ^ 0xFF) - 24;
            if (v72 >= 0)
            {
              LOBYTE(v73) = 1;
            }

            v49 = ((v69 + v73) << 16) | 5;
          }

          v12 = Substring.UnicodeScalarView.subscript.getter();
          v21 = 0x700030001;
          v67 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v12), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v12, v67, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v147 = 15;
        v145 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v147;
      if (v141 >= v147 >> 14)
      {
        v12 = v145;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v88 = *(v12 + 16);
          v87 = *(v12 + 24);
          v89 = v88 + 1;
          if (v88 >= v87 >> 1)
          {
            v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1, v12);
          }

          *(v12 + 16) = v89;
          v90 = v12 + 16 * v88;
          v91 = v140;
          *(v90 + 32) = boxed_opaque_existential_0;
          *(v90 + 40) = v91;
          v153 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
          v92 = v153;
          v145 = v12;
          v93 = v12 + 40;
          do
          {
            String.subscript.getter();
            v94 = Substring.lowercased()();

            v153 = v92;
            v96 = v92[2];
            v95 = v92[3];
            if (v96 >= v95 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
              v92 = v153;
            }

            v93 += 16;
            v92[2] = v96 + 1;
            *&v92[2 * v96 + 4] = v94;
            --v89;
          }

          while (v89);

          v153 = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v20 = BidirectionalCollection<>.joined(separator:)();
          v17 = v97;

          v21 = v17;
LABEL_82:
          v6 = v144;
          v10 = v143;
          goto LABEL_83;
        }

LABEL_114:
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_114;
  }

LABEL_83:
  v98 = v149;
  __swift_destroy_boxed_opaque_existential_1(v156);

  v99 = swift_isUniquelyReferenced_nonNull_native();
  v156[0] = *(v10 + 16);
  v44 = v156[0];
  *(v10 + 16) = 0x8000000000000000;
  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  v101 = *(v44 + 16);
  v102 = (v100 & 1) == 0;
  v103 = __OFADD__(v101, v102);
  v104 = v101 + v102;
  if (v103)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    v159 = v20;
    v146 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v113 = static _DictionaryStorage.copy(original:)();
    v105 = v113;
    if (!*(v44 + 16))
    {
LABEL_110:

      v68 = v146;
      v98 = v149;
      v20 = v159;
      if (v17)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v114 = (v113 + 64);
    v115 = v44 + 64;
    v116 = ((1 << *(v105 + 32)) + 63) >> 6;
    if (v105 != v44 || v114 >= v115 + 8 * v116)
    {
      memmove(v114, (v44 + 64), 8 * v116);
    }

    v117 = 0;
    *(v105 + 16) = *(v44 + 16);
    v118 = 1 << *(v44 + 32);
    v119 = -1;
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    v120 = v119 & *(v44 + 64);
    v121 = (v118 + 63) >> 6;
    v144 = v6;
    v143 = v10;
    if (v120)
    {
      do
      {
        v122 = __clz(__rbit64(v120));
        v147 = (v120 - 1) & v120;
LABEL_108:
        v125 = v122 | (v117 << 6);
        v126 = 16 * v125;
        v127 = (*(v44 + 48) + 16 * v125);
        v129 = *v127;
        v128 = v127[1];
        v125 *= 24;
        v130 = *(v44 + 56) + v125;
        v131 = *v130;
        v132 = *(v130 + 8);
        v133 = (*(v105 + 48) + v126);
        v134 = *(v130 + 16);
        *v133 = v129;
        v133[1] = v128;
        v135 = *(v105 + 56) + v125;
        *v135 = v131;
        *(v135 + 8) = v132;
        *(v135 + 16) = v134;

        outlined copy of JSONFuture(v131, v132, v134);
        v10 = v143;
        v120 = v147;
      }

      while (v147);
    }

    v123 = v117;
    while (1)
    {
      v117 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      if (v117 >= v121)
      {
        goto LABEL_110;
      }

      v124 = *(v115 + 8 * v117);
      ++v123;
      if (v124)
      {
        v122 = __clz(__rbit64(v124));
        v147 = (v124 - 1) & v124;
        goto LABEL_108;
      }
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  LOBYTE(v17) = v100;
  if (*(v44 + 24) >= v104)
  {
    if (v99)
    {
      v105 = v44;
      if (v100)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_95;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, v99);
  v105 = v156[0];
  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  if ((v17 & 1) == (v106 & 1))
  {
    if (v17)
    {
LABEL_87:
      v107 = v68;

      v108 = *(v105 + 56) + 24 * v107;
      v109 = *v108;
      v110 = *(v108 + 8);
      *v108 = v148;
      *(v108 + 8) = v98;
      v111 = *(v108 + 16);
      *(v108 + 16) = 0;
      result = outlined consume of JSONFuture(v109, v110, v111);
LABEL_91:
      *(v10 + 16) = v105;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v68, v20, v21, v148, v98, 0, v105);
    goto LABEL_91;
  }

LABEL_121:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v6 = v5;
  v7 = v4;
  v156 = v4[1];
  v163[0] = a1;
  v163[1] = a2;
  v154 = dispatch thunk of CustomStringConvertible.description.getter();
  v155 = v10;
  v11 = *v4;
  v12 = v7[2];
  v14 = *(a4 + 24);
  v164 = *(a4 + 16);
  v13 = v164;
  v165 = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v163);
  v16 = *(v13 - 1);
  (*(v16 + 16))(boxed_opaque_existential_0, a3, v13);
  v17 = *(v11 + 152);
  if (!v17)
  {
    v20 = dispatch thunk of CodingKey.stringValue.getter();
    v21 = v29;
    goto LABEL_83;
  }

  if (v17 != 1)
  {
    v30 = *(v11 + 160);

    v31 = __JSONEncoder.codingPath.getter();
    v32 = _CodingPathNode.path.getter(v12);
    v160 = v31;
    specialized Array.append<A>(contentsOf:)(v32);
    v33 = v31;
    outlined init with copy of Hashable & Sendable(v163, &v160);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
    }

    v36 = v33[2];
    v35 = v33[3];
    v150 = v5;
    v153 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
    }

    v37 = __swift_mutable_project_boxed_opaque_existential_1(&v160, v162);
    v38 = MEMORY[0x1EEE9AC00](v37);
    v40 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v40, v38);
    v158 = v13;
    v159 = v14;
    v42 = __swift_allocate_boxed_opaque_existential_0(&v157);
    (*(v16 + 32))(v42, v40, v13);
    v33[2] = v153;
    outlined init with take of Equatable(&v157, &v33[5 * v36 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    (v17)(&v160, v33);

    __swift_project_boxed_opaque_existential_1(&v160, v162);
    v20 = dispatch thunk of CodingKey.stringValue.getter();
    v21 = v43;
    sub_1807A5C7C(v17);
    __swift_destroy_boxed_opaque_existential_1(&v160);
    goto LABEL_82;
  }

  v18 = dispatch thunk of CodingKey.stringValue.getter();
  v20 = v18;
  v21 = v19;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v17 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v22 = String.index(after:)();
    v23 = 7;
    if (((v21 >> 60) & ((v20 & 0x800000000000000) == 0)) != 0)
    {
      v23 = 11;
    }

    v148 = 4 * v17;
    if (4 * v17 < v22 >> 14)
    {
      __break(1u);
    }

    else
    {
      v147 = v23 | (v17 << 16);
      v149 = v21;
      v24 = String.subscript.getter();
      v28 = v27;
      v166 = v20;
      v150 = v5;
      if ((v24 ^ v25) >= 0x4000)
      {
        v44 = v24;
        v13 = v25;
        v17 = v26;
        v151 = MEMORY[0x1E69E7CC0];
        v21 = 0x700030001;
        v153 = 15;
        while (1)
        {
          v6 = Substring.UnicodeScalarView.index(before:)();
          v45 = Substring.UnicodeScalarView.subscript.getter();
          v46 = v45;
          v47 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v45), 1u);
          v48 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v46, v47, 0x700030001);
          v49 = v44;
          if (!v48)
          {
            break;
          }

LABEL_20:
          v50 = Substring.UnicodeScalarView.index(after:)();

          v51 = v49 >> 14;
          v52 = v153;
          if (v49 >> 14 < v153 >> 14 || v50 >> 14 < v51)
          {
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          v13 = v151;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v151 + 2) + 1, 1, v151);
          }

          v54 = *(v13 + 2);
          v53 = *(v13 + 3);
          if (v54 >= v53 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v13);
          }

          *(v13 + 2) = v54 + 1;
          v151 = v13;
          v55 = &v13[16 * v54];
          *(v55 + 4) = v52;
          *(v55 + 5) = v49;
          v144 = v49 >> 14;
          if (v148 < v51)
          {
            goto LABEL_117;
          }

          v56 = String.subscript.getter();
          v60 = v59;
          if ((v56 ^ v57) < 0x4000)
          {
            v153 = v49;
            goto LABEL_73;
          }

          v6 = v56;
          v44 = v57;
          v13 = v58;
          v153 = Substring.UnicodeScalarView.index(before:)();
          v61 = Substring.UnicodeScalarView.subscript.getter();
          v62 = v61;
          v20 = 0x700030000;
          v63 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v61), 0);
          v64 = BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v62, v63, 0x700030000);
          v65 = v6;
          v21 = v149;
          if (!v64)
          {
            v77 = HIBYTE(v60) & 0xF;
            if ((v60 & 0x2000000000000000) == 0)
            {
              v77 = v13 & 0xFFFFFFFFFFFFLL;
            }

            v152 = v77;
            v146 = v60 & 0xFFFFFFFFFFFFFFLL;
            v145 = (v60 & 0xFFFFFFFFFFFFFFFLL) + 32;
            v65 = v6;
            while ((v65 ^ v153) >= 0x4000)
            {
              v71 = _StringGuts.validateInclusiveScalarIndex(_:)(v65, v13, v60);
              v17 = v71 >> 16;
              if (v71 >> 16 >= v152)
              {
                goto LABEL_94;
              }

              if ((v60 & 0x1000000000000000) != 0)
              {
                v65 = String.UnicodeScalarView._foreignIndex(after:)();
              }

              else
              {
                if ((v60 & 0x2000000000000000) != 0)
                {
                  v160 = v13;
                  v161 = v146;
                  v82 = *(&v160 + v17);
                }

                else
                {
                  v81 = v145;
                  if ((v13 & 0x1000000000000000) == 0)
                  {
                    v81 = _StringObject.sharedUTF8.getter();
                  }

                  v82 = *(v81 + v17);
                }

                v83 = v82;
                v84 = __clz(v82 ^ 0xFF) - 24;
                if (v83 >= 0)
                {
                  LOBYTE(v84) = 1;
                }

                v65 = ((v17 + v84) << 16) | 5;
              }

              v78 = Substring.UnicodeScalarView.subscript.getter();
              v79 = v78;
              v80 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v78), 0);
              if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v79, v80, 0x700030000))
              {
                goto LABEL_29;
              }
            }

            v153 = v49;
            goto LABEL_73;
          }

LABEL_29:
          v66 = Substring.UnicodeScalarView.index(after:)();

          if (v66 >> 14 < v65 >> 14)
          {
            goto LABEL_118;
          }

          if (v65 >> 14 == String.index(after:)() >> 14)
          {
            v67 = v49;
          }

          else
          {
            v67 = String.index(before:)();
            if (v144 > v67 >> 14)
            {
              goto LABEL_120;
            }

            v86 = *(v151 + 2);
            v85 = *(v151 + 3);
            if (v86 >= v85 >> 1)
            {
              v92 = v67;
              v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v151);
              v67 = v92;
            }

            v87 = v151;
            *(v151 + 2) = v86 + 1;
            v88 = &v87[16 * v86];
            *(v88 + 4) = v49;
            *(v88 + 5) = v67;
          }

          v21 = 0x700030001;
          v153 = v67;
          if (v148 < v66 >> 14)
          {
            goto LABEL_119;
          }

          v44 = String.subscript.getter();
          v13 = v89;
          v17 = v90;
          v28 = v91;
          if ((v44 ^ v89) < 0x4000)
          {
            goto LABEL_73;
          }
        }

        if ((v28 & 0x2000000000000000) != 0)
        {
          v20 = HIBYTE(v28) & 0xF;
        }

        else
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        v152 = v28 & 0xFFFFFFFFFFFFFFLL;
        v146 = (v28 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v49 = v44;
        while ((v49 ^ v6) >= 0x4000)
        {
          v71 = _StringGuts.validateInclusiveScalarIndex(_:)(v49, v17, v28);
          v72 = v71 >> 16;
          if (v71 >> 16 >= v20)
          {
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          if ((v28 & 0x1000000000000000) != 0)
          {
            v49 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v28 & 0x2000000000000000) != 0)
            {
              v160 = v17;
              v161 = v152;
              v74 = *(&v160 + v72);
            }

            else
            {
              v73 = v146;
              if ((v17 & 0x1000000000000000) == 0)
              {
                v73 = _StringObject.sharedUTF8.getter();
              }

              v74 = *(v73 + v72);
            }

            v75 = v74;
            v76 = __clz(v74 ^ 0xFF) - 24;
            if (v75 >= 0)
            {
              LOBYTE(v76) = 1;
            }

            v49 = ((v72 + v76) << 16) | 5;
          }

          v68 = Substring.UnicodeScalarView.subscript.getter();
          v69 = v68;
          v21 = 0x700030001;
          v70 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v68), 1u);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v69, v70, 0x700030001))
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v153 = 15;
        v151 = MEMORY[0x1E69E7CC0];
      }

LABEL_73:

      boxed_opaque_existential_0 = v153;
      if (v148 >= v153 >> 14)
      {
        v13 = v151;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_75:
          v94 = *(v13 + 2);
          v93 = *(v13 + 3);
          v95 = v94 + 1;
          if (v94 >= v93 >> 1)
          {
            v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v13);
          }

          *(v13 + 2) = v95;
          v96 = &v13[16 * v94];
          v97 = v147;
          *(v96 + 4) = boxed_opaque_existential_0;
          *(v96 + 5) = v97;
          v160 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95, 0);
          v98 = v160;
          v151 = v13;
          v99 = v13 + 40;
          do
          {
            String.subscript.getter();
            v100 = Substring.lowercased()();

            v160 = v98;
            v102 = *(v98 + 2);
            v101 = *(v98 + 3);
            if (v102 >= v101 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
              v98 = v160;
            }

            v99 += 16;
            *(v98 + 2) = v102 + 1;
            *&v98[16 * v102 + 32] = v100;
            --v95;
          }

          while (v95);

          v160 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
          v20 = BidirectionalCollection<>.joined(separator:)();
          v17 = v103;

          v21 = v17;
LABEL_82:
          v6 = v150;
          goto LABEL_83;
        }

LABEL_115:
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_115;
  }

LABEL_83:
  v104 = v156;
  __swift_destroy_boxed_opaque_existential_1(v163);
  v105 = swift_isUniquelyReferenced_nonNull_native();
  v163[0] = *(v104 + 16);
  v44 = v163[0];
  *(v104 + 16) = 0x8000000000000000;
  v71 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  v107 = *(v44 + 16);
  v108 = (v106 & 1) == 0;
  v109 = __OFADD__(v107, v108);
  v110 = v107 + v108;
  if (v109)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    v152 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
    v120 = static _DictionaryStorage.copy(original:)();
    v111 = v120;
    if (!*(v44 + 16))
    {
LABEL_111:

      v71 = v152;
      v104 = v156;
      if (v17)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    v121 = (v120 + 64);
    v122 = v44 + 64;
    v123 = ((1 << *(v111 + 32)) + 63) >> 6;
    if (v111 != v44 || v121 >= v122 + 8 * v123)
    {
      memmove(v121, (v44 + 64), 8 * v123);
    }

    v124 = 0;
    *(v111 + 16) = *(v44 + 16);
    v125 = 1 << *(v44 + 32);
    v126 = -1;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    v127 = v126 & *(v44 + 64);
    v128 = (v125 + 63) >> 6;
    v166 = v20;
    v150 = v6;
    if (v127)
    {
      do
      {
        v129 = __clz(__rbit64(v127));
        v153 = (v127 - 1) & v127;
LABEL_109:
        v132 = v129 | (v124 << 6);
        v133 = 16 * v132;
        v134 = (*(v44 + 48) + 16 * v132);
        v136 = *v134;
        v135 = v134[1];
        v132 *= 24;
        v137 = *(v44 + 56) + v132;
        v138 = *v137;
        v139 = *(v137 + 8);
        v140 = (*(v111 + 48) + v133);
        v141 = *(v137 + 16);
        *v140 = v136;
        v140[1] = v135;
        v142 = *(v111 + 56) + v132;
        *v142 = v138;
        *(v142 + 8) = v139;
        *(v142 + 16) = v141;

        outlined copy of JSONFuture(v138, v139, v141);
        v20 = v166;
        v127 = v153;
      }

      while (v153);
    }

    v130 = v124;
    while (1)
    {
      v124 = v130 + 1;
      if (__OFADD__(v130, 1))
      {
        break;
      }

      if (v124 >= v128)
      {
        goto LABEL_111;
      }

      v131 = *(v122 + 8 * v124);
      ++v130;
      if (v131)
      {
        v129 = __clz(__rbit64(v131));
        v153 = (v131 - 1) & v131;
        goto LABEL_109;
      }
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  LOBYTE(v17) = v106;
  if (*(v44 + 24) >= v110)
  {
    if (v105)
    {
      v111 = v44;
      if (v106)
      {
        goto LABEL_87;
      }

      goto LABEL_90;
    }

    goto LABEL_96;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v110, v105);
  v111 = v163[0];
  v71 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  if ((v17 & 1) == (v112 & 1))
  {
    if (v17)
    {
LABEL_87:
      v113 = v71;

      v114 = *(v111 + 56) + 24 * v113;
      v115 = *v114;
      v116 = *(v114 + 8);
      v117 = v155;
      *v114 = v154;
      *(v114 + 8) = v117;
      v118 = *(v114 + 16);
      *(v114 + 16) = 1;
      result = outlined consume of JSONFuture(v115, v116, v118);
LABEL_91:
      *(v104 + 16) = v111;
      return result;
    }

LABEL_90:
    result = specialized _NativeDictionary._insert(at:key:value:)(v71, v20, v21, v154, v155, 1, v111);
    goto LABEL_91;
  }

LABEL_122:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _JSONKeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

{
  return _JSONKeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void __JSONEncoder.unkeyedContainer()(void *a1@<X8>)
{
  if (!*(v1 + 40))
  {
    v4 = *(v1 + 32);
    if (v4 == 255)
    {
      goto LABEL_17;
    }

    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    outlined copy of JSONEncoderValue(v6, v5, *(v1 + 32));
    v3 = JSONEncoderValue.convertedToArrayRef()(v6, v7, v4);
    outlined consume of JSONEncoderValue?(v6, v5, v4);
    if (v3)
    {
      v8 = *(v1 + 16);
      v9 = *(v1 + 24);
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      v10 = *(v1 + 32);
      *(v1 + 32) = -1;
      outlined consume of JSONEncoderValue?(v8, v9, v10);
LABEL_9:
      *(v1 + 40) = v3;

      goto LABEL_10;
    }

    if (*(v1 + 32) == 255)
    {
LABEL_17:
      if (!*(v1 + 48))
      {
        type metadata accessor for JSONFuture.RefArray();
        v3 = swift_allocObject();
        v11 = MEMORY[0x1E69E7CC0];
        *(v3 + 16) = MEMORY[0x1E69E7CC0];
        *(v3 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 10, 0, v11);
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v3 = *(v1 + 40);
LABEL_10:
  a1[3] = &unk_1EEEE7918;
  a1[4] = lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer();
  *a1 = v1;
  a1[1] = v3;
  a1[2] = 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer()
{
  result = lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer;
  if (!lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _JSONUnkeyedEncodingContainer and conformance _JSONUnkeyedEncodingContainer);
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __JSONEncoder(uint64_t result, uint64_t a2)
{
  v3 = *v2;
  if (*(*v2 + 32) == 255)
  {
    *(v3 + 16) = result;
    *(v3 + 24) = a2;
    *(v3 + 32) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSLocale_optional __swiftcall _NSSwiftLocale._localeWithNewCalendarIdentifier(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    v2 = String._bridgeToObjectiveCImpl()();
    static Calendar._fromNSCalendarIdentifier(_:)(v2, &v18);
    swift_unknownObjectRelease();
    v4 = v18;
    if (v18 == 27)
    {
      v1 = 0;
    }

    else
    {
      v6 = *&v1[OBJC_IVAR____NSSwiftLocale_locale + 8];
      ObjectType = swift_getObjectType();
      v18 = v4;
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v9 = v8(&v18, ObjectType, v6);
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = type metadata accessor for _NSSwiftLocale();
      v13 = objc_allocWithZone(v12);
      v14 = &v13[OBJC_IVAR____NSSwiftLocale_locale];
      *v14 = v9;
      v14[1] = v11;
      v15 = String._bridgeToObjectiveCImpl()();
      v17.receiver = v13;
      v17.super_class = v12;
      v1 = objc_msgSendSuper2(&v17, sel_initWithLocaleIdentifier_, v15);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = v1;
  }

  v16 = v1;
  result.value.super.isa = v16;
  result.is_nil = v3;
  return result;
}

uint64_t _LocaleICU.copy(newCalendarIdentifier:)(char *a1)
{
  v2 = v1;
  v3 = *a1;

  Locale.Components.init(identifier:)(__src);
  __src[96] = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = Locale.Components.icuIdentifier.getter();
  v6 = v5;
  v7 = *(v2 + 136);
  v8 = *(v2 + 168);
  v21[6] = *(v2 + 152);
  v22[0] = v8;
  *(v22 + 12) = *(v2 + 180);
  v9 = *(v2 + 72);
  v10 = *(v2 + 104);
  v21[2] = *(v2 + 88);
  v21[3] = v10;
  v21[4] = *(v2 + 120);
  v21[5] = v7;
  v21[0] = *(v2 + 56);
  v21[1] = v9;
  v11 = *(v2 + 136);
  v12 = *(v2 + 168);
  v18[6] = *(v2 + 152);
  v19[0] = v12;
  *(v19 + 12) = *(v2 + 180);
  v13 = *(v2 + 72);
  v14 = *(v2 + 104);
  v18[2] = *(v2 + 88);
  v18[3] = v14;
  v18[4] = *(v2 + 120);
  v18[5] = v11;
  v18[0] = *(v2 + 56);
  v18[1] = v13;
  v15 = swift_allocObject();
  outlined init with copy of FloatingPointRoundingRule?(v21, __dst, &_s10Foundation17LocalePreferencesVSgMd);
  _LocaleICU.init(identifier:prefs:)(v4, v6, v18);
  memcpy(__dst, __src, sizeof(__dst));
  outlined destroy of Locale.Components(__dst);
  lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, v16, type metadata accessor for _LocaleICU);
  return v15;
}

unint64_t Calendar.Identifier.cldrIdentifier.getter()
{
  result = 0x6169726F67657267;
  switch(*v0)
  {
    case 1:
      result = 0x7473696864647562;
      break;
    case 2:
      result = 0x6573656E696863;
      break;
    case 3:
      result = 0x636974706F63;
      break;
    case 4:
      result = 0x6369706F69687465;
      break;
    case 5:
      result = 0x61616F69687465;
      break;
    case 6:
      result = 0x776572626568;
      break;
    case 7:
      result = 0x313036386F7369;
      break;
    case 8:
      result = 0x6E6169646E69;
      break;
    case 9:
      result = 0x63696D616C7369;
      break;
    case 0xA:
    case 0xE:
      result = 0x2D63696D616C7369;
      break;
    case 0xB:
      result = 0x6573656E6170616ALL;
      break;
    case 0xC:
      result = 0x6E616973726570;
      break;
    case 0xD:
      result = 6516594;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0x616C676E6162;
      break;
    case 0x11:
      result = 0x69746172616A7567;
      break;
    case 0x12:
      result = 0x6164616E6E616BLL;
      break;
    case 0x13:
      result = 0x616C6179616C616DLL;
      break;
    case 0x14:
      result = 0x6968746172616DLL;
      break;
    case 0x15:
      result = 1634296943;
      break;
    case 0x16:
      result = 0x6C696D6174;
      break;
    case 0x17:
      result = 0x7567756C6574;
      break;
    case 0x18:
      result = 0x6D61726B6976;
      break;
    case 0x19:
      result = 0x69676E6164;
      break;
    case 0x1A:
      result = 0x656D616E74656976;
      break;
    default:
      return result;
  }

  return result;
}

void @objc _NSSwiftCalendar.firstWeekday.setter(char *a1, uint64_t a2, uint64_t a3, void (*a4)(os_unfair_lock_s *, uint64_t))
{
  v6 = *&a1[OBJC_IVAR____NSSwiftCalendar__lock];
  v7 = a1;
  os_unfair_lock_lock(v6 + 8);
  a4(v6 + 4, a3);
  os_unfair_lock_unlock(v6 + 8);
}

uint64_t _LocaleICU.__deallocating_deinit()
{
  v1 = *(v0 + 200);

  os_unfair_lock_lock(v1 + 134);
  _LocaleICU.State.NumberFormattersBox.cleanup()();
  os_unfair_lock_unlock(v1 + 134);

  v2 = *(v0 + 136);
  v3 = *(v0 + 168);
  v7[6] = *(v0 + 152);
  v8[0] = v3;
  *(v8 + 12) = *(v0 + 180);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  v7[2] = *(v0 + 88);
  v7[3] = v5;
  v7[4] = *(v0 + 120);
  v7[5] = v2;
  v7[0] = *(v0 + 56);
  v7[1] = v4;
  outlined destroy of TermOfAddress?(v7, &_s10Foundation17LocalePreferencesVSgMd);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall _LocaleICU.State.NumberFormattersBox.cleanup()()
{
  v1 = *v0 + 64;
  v2 = 1 << *(*v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*v0 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      *v0 = MEMORY[0x1E69E7CC8];
      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;
        unum_close();
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

uint64_t static Locale.legacyKey(forKey:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
  if (v6
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x7265746C616C6F63 && v3 == 0xEC0000006574616ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x776B6361626C6F63 && v3 == 0xEC00000073647261
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x66657361636C6F63 && v3 == 0xEC00000074737269
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x6C657361636C6F63 && v3 == 0xEC0000006C657665
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0xD000000000000015 && 0x800000018147FBC0 == v3
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x6F6974616C6C6F63 && v3 == 0xE90000000000006ELL
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0xD000000000000010 && 0x800000018147FBE0 == v3
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x72656D756E6C6F63 && v3 == 0xEA00000000006369
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x64726F65726C6F63 && v3 == 0xEA00000000007265
    || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
    || v4 == 0x6E657274736C6F63 && v3 == 0xEB00000000687467
    || ((v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 0x79636E6572727563) ? (v9 = v3 == 0xE800000000000000) : (v9 = 0),
        !v9 ? (v10 = 0) : (v10 = 1),
        (v8 & 1) != 0
     || (v10 & 1) != 0
     || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
     || v4 == 0x7372756F68 && v3 == 0xE500000000000000
     || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
     || v4 == 0x6572757361656DLL && v3 == 0xE700000000000000
     || ((v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 0x737265626D756ELL) ? (v12 = v3 == 0xE700000000000000) : (v12 = 0),
         !v12 ? (v13 = 0) : (v13 = 1),
         (v11 & 1) != 0
      || (v13 & 1) != 0
      || ((v14 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 0x656E6F7A656D6974) ? (v15 = v3 == 0xE800000000000000) : (v15 = 0),
          !v15 ? (v16 = 0) : (v16 = 1),
          (v14 & 1) != 0
       || (v16 & 1) != 0
       || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
       || v4 == 0x656C626169726176 && v3 == 0xEB00000000706F74
       || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0
       || v4 == 26211 && v3 == 0xE200000000000000
       || ((v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12388) ? (v18 = v3 == 0xE200000000000000) : (v18 = 0),
           !v18 ? (v19 = 0) : (v19 = 1),
           (v17 & 1) != 0
        || (v19 & 1) != 0
        || ((v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 30820) ? (v21 = v3 == 0xE200000000000000) : (v21 = 0),
            !v21 ? (v22 = 0) : (v22 = 1),
            (v20 & 1) != 0 || (v22 & 1) != 0 || ((v23 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 28005) ? (v24 = v3 == 0xE200000000000000) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), (v23 & 1) != 0 || (v25 & 1) != 0 || ((v26 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 30566) ? (v27 = v3 == 0xE200000000000000) : (v27 = 0), !v27 ? (v28 = 0) : (v28 = 1), (v26 & 1) != 0 || (v28 & 1) != 0 || ((v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12392) ? (v30 = v3 == 0xE200000000000000) : (v30 = 0), !v30 ? (v31 = 0) : (v31 = 1), (v29 & 1) != 0 || (v31 & 1) != 0 || ((v32 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12393) ? (v33 = v3 == 0xE200000000000000) : (v33 = 0), !v33 ? (v34 = 0) : (v34 = 1), (v32 & 1) != 0 || (v34 & 1) != 0 || ((v35 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12395) ? (v36 = v3 == 0xE200000000000000) : (v36 = 0), !v36 ? (v37 = 0) : (v37 = 1), (v35 & 1) != 0 || (v37 & 1) != 0 || ((v38 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 30315) ? (v39 = v3 == 0xE200000000000000) : (v39 = 0), !v39 ? (v40 = 0) : (v40 = 1), (v38 & 1) != 0 || (v40 & 1) != 0 || ((v41 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 25196) ? (v42 = v3 == 0xE200000000000000) : (v42 = 0), !v42 ? (v43 = 0) : (v43 = 1), (v41 & 1) != 0 || (v43 & 1) != 0 || ((v44 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 30572) ? (v45 = v3 == 0xE200000000000000) : (v45 = 0), !v45 ? (v46 = 0) : (v46 = 1), (v44 & 1) != 0 || (v46 & 1) != 0 || ((v47 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12397) ? (v48 = v3 == 0xE200000000000000) : (v48 = 0), !v48 ? (v49 = 0) : (v49 = 1), (v47 & 1) != 0 || (v49 & 1) != 0 || ((v50 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 26482) ? (v51 = v3 == 0xE200000000000000) : (v51 = 0), !v51 ? (v52 = 0) : (v52 = 1), (v50 & 1) != 0 || (v52 & 1) != 0 || ((v53 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12403) ? (v54 = v3 == 0xE200000000000000) : (v54 = 0), !v54 ? (v55 = 0) : (v55 = 1), (v53 & 1) != 0 || (v55 & 1) != 0 || ((v56 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 25715) ? (v57 = v3 == 0xE200000000000000) : (v57 = 0), !v57 ? (v58 = 0) : (v58 = 1), (v56 & 1) != 0 || (v58 & 1) != 0 || ((v59 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 29555) ? (v60 = v3 == 0xE200000000000000) : (v60 = 0), !v60 ? (v61 = 0) : (v61 = 1), (v59 & 1) != 0 || (v61 & 1) != 0 || ((v62 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12404) ? (v63 = v3 == 0xE200000000000000) : (v63 = 0), !v63 ? (v64 = 0) : (v64 = 1), (v62 & 1) != 0 || (v64 & 1) != 0 || ((v65 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 24950) ? (v66 = v3 == 0xE200000000000000) : (v66 = 0), !v66 ? (v67 = 0) : (v67 = 1), (v65 & 1) != 0 || (v67 & 1) != 0 || ((v68 = _stringCompareWithSmolCheck(_:_:expecting:)(), v4 == 12408) ? (v69 = v3 == 0xE200000000000000) : (v69 = 0), !v69 ? (v70 = 0) : (v70 = 1), (v68 & 1) != 0 || (v70 & 1) != 0 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0)))))))))))))))))))))))
  {

LABEL_36:
    *a3 = v4;
    a3[1] = v3;
    return result;
  }

  if (v4 == 24931 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE800000000000000;
    v4 = 0x7261646E656C6163;
    goto LABEL_36;
  }

  if (v4 == 24939 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x7265746C616C6F63;
    v3 = 0xEC0000006574616ELL;
    goto LABEL_36;
  }

  if (v4 == 25195 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x776B6361626C6F63;
    v3 = 0xEC00000073647261;
    goto LABEL_36;
  }

  if (v4 == 26219 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x66657361636C6F63;
    v3 = 0xEC00000074737269;
    goto LABEL_36;
  }

  if (v4 == 25451 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x6C657361636C6F63;
    v3 = 0xEC0000006C657665;
    goto LABEL_36;
  }

  if (v4 == 26731 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000018147FBC0;
    goto LABEL_36;
  }

  if (v4 == 28515 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x6F6974616C6C6F63;
    v3 = 0xE90000000000006ELL;
    goto LABEL_36;
  }

  if (v4 == 27499 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000018147FBE0;
    goto LABEL_36;
  }

  if (v4 == 28267 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x72656D756E6C6F63;
    v3 = 0xEA00000000006369;
    goto LABEL_36;
  }

  if (v4 == 29291 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x64726F65726C6F63;
    v3 = 0xEA00000000007265;
    goto LABEL_36;
  }

  if (v4 == 29547 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x6E657274736C6F63;
    v3 = 0xEB00000000687467;
    goto LABEL_36;
  }

  if (v4 == 30051 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE800000000000000;
    v4 = 0x79636E6572727563;
    goto LABEL_36;
  }

  if (v4 == 25448 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE500000000000000;
    v4 = 0x7372756F68;
    goto LABEL_36;
  }

  if (v4 == 29549 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE700000000000000;
    v4 = 0x6572757361656DLL;
    goto LABEL_36;
  }

  if (v4 == 30062 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE700000000000000;
    v4 = 0x737265626D756ELL;
    goto LABEL_36;
  }

  if (v4 == 31348 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v3 = 0xE800000000000000;
    v4 = 0x656E6F7A656D6974;
    goto LABEL_36;
  }

  if (v4 == 29814 && v3 == 0xE200000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    v4 = 0x656C626169726176;
    v3 = 0xEB00000000706F74;
    goto LABEL_36;
  }

  v71 = String.utf8CString.getter() + 32;
  v72 = uloc_toLegacyKey();
  if (v72)
  {
    if (v72 == v71)
    {
    }

    else
    {
      v4 = String.init(cString:)();
      v3 = v73;
    }

    goto LABEL_36;
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t ICU.Enumerator.__deallocating_deinit()
{
  uenum_close();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in _NSSwiftCalendar.firstWeekday.setter(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 56))(ObjectType, v4);
  if (result != a2)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v7 = (*(v4 + 112))(v11, v10, a2, 0, 0, 1, ObjectType, v4);
    v9 = v8;
    result = swift_unknownObjectRelease();
    *a1 = v7;
    a1[1] = v9;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ICULegacyKey and conformance ICULegacyKey()
{
  result = lazy protocol witness table cache variable for type ICULegacyKey and conformance ICULegacyKey;
  if (!lazy protocol witness table cache variable for type ICULegacyKey and conformance ICULegacyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICULegacyKey and conformance ICULegacyKey);
  }

  return result;
}

uint64_t NSNotificationCenter.notifications(named:object:)(void *a1)
{
  type metadata accessor for NSNotificationCenter.Notifications();
  v3 = swift_allocObject();
  swift_unknownObjectRetain();
  NSNotificationCenter.Notifications.init(center:name:object:)(v1, a1);
  return v3;
}

uint64_t closure #1 in NSNotificationCenter.Notifications.init(center:name:object:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_weakInit();
  v14 = partial apply for closure #1 in closure #1 in NSNotificationCenter.Notifications.init(center:name:object:);
  v15 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  ObjectType = &block_descriptor_15;
  v9 = _Block_copy(v12);

  v10 = [a2 _addObserverForName_object_queue_usingBlock_];
  _Block_release(v9);
  ObjectType = swift_getObjectType();
  v12[0] = v10;
  return outlined assign with take of NSNotificationCenter.Notifications.NotificationWrapper?(v12, a1 + 8, &_ss8Sendable_pSgMd);
}

uint64_t sub_1808778BC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t outlined assign with take of NSNotificationCenter.Notifications.NotificationWrapper?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t closure #1 in NSNotificationCenter.Notifications.Iterator.next()partial apply(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in NSNotificationCenter.AsyncMessageSequenceIterator.next();

  return closure #1 in NSNotificationCenter.Notifications.Iterator.next()(a1);
}

uint64_t NSNotificationCenter.Notifications.init(center:name:object:)(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo20NSNotificationCenterC10FoundationE13NotificationsC5StateVSo16os_unfair_lock_sVGMd);
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  v9 = v6 + 16;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = v8;
  *(v3 + 16) = a1;
  *(v3 + 24) = v6;

  v10 = a1;
  os_unfair_lock_lock(v7);
  partial apply for closure #1 in NSNotificationCenter.Notifications.init(center:name:object:)(v9);
  os_unfair_lock_unlock(v7);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t closure #1 in closure #1 in NSNotificationCenter.Notifications.next()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 + 5;
  v7 = a1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  *&v7[8 * v9 + 32] = a2;
  a1[5] = v7;
  outlined init with copy of FloatingPointRoundingRule?((a1 + 1), v15, &_ss8Sendable_pSgMd);
  v10 = v15[3];
  result = outlined destroy of TermOfAddress?(v15, &_ss8Sendable_pSgMd);
  if (v10)
  {
    v12 = *a1;
    if (*(*a1 + 16))
    {
      if (*(v7 + 2))
      {
        v13 = *(v7 + 4);
        result = specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        if (*(v12 + 16))
        {
          outlined init with copy of NSNotificationCenter.Notifications.NotificationWrapper(v12 + 32, v15);
          specialized Array.replaceSubrange<A>(_:with:)(0, 1);
          *(a3 + 40) = 0u;
          *(a3 + 24) = 0u;
          *(a3 + 8) = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySccySo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgs5NeverOGGMd);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_181218E20;
          *(v14 + 32) = v13;
          *a3 = v14;
          return outlined assign with take of NSNotificationCenter.Notifications.NotificationWrapper?(v15, a3 + 8, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 8) = 0u;
      *a3 = MEMORY[0x1E69E7CC0];
      result = outlined destroy of TermOfAddress?(a3 + 8, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
    }
  }

  else
  {
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *a3 = v7;

    outlined destroy of TermOfAddress?(a3 + 8, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;

    *v6 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.Notifications.Iterator()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  *v1 = v0;
  v1[1] = NSNotificationCenter.Notifications.Iterator.next();
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v2, &closure #1 in NSNotificationCenter.Notifications.Iterator.next()partial apply);
}

uint64_t closure #1 in NSNotificationCenter.Notifications.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.AsyncMessageSequenceIterator<A>;

  return NSNotificationCenter.Notifications.next()(a1);
}

uint64_t storeEnumTagSinglePayload for NSNotificationCenter.Notifications.State(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.Notifications.Iterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance NSNotificationCenter.Notifications.Iterator, 0, 0);
}

uint64_t NSNotificationCenter.Notifications.next()(uint64_t a1)
{
  *(v2 + 280) = a1;
  *(v2 + 288) = v1;
  return MEMORY[0x1EEE6DFA0](NSNotificationCenter.Notifications.next(), 0, 0);
}

uint64_t NSNotificationCenter.Notifications.next()()
{
  v1 = *(v0 + 288);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 184;
  *(v0 + 24) = NSNotificationCenter.Notifications.next();
  v2 = swift_continuation_init();
  v3 = *(v1 + 24);
  os_unfair_lock_lock((v3 + 64));
  closure #1 in closure #1 in NSNotificationCenter.Notifications.next()((v3 + 16), v2, v0 + 80);
  os_unfair_lock_unlock((v3 + 64));
  v4 = *(v0 + 80);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      outlined init with copy of FloatingPointRoundingRule?(v0 + 88, v0 + 232, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
      v8 = *(*(v7 + 64) + 40);
      v10 = *(v0 + 248);
      v9 = *(v0 + 264);
      *v8 = *(v0 + 232);
      v8[1] = v10;
      v8[2] = v9;
      swift_continuation_resume();
      --v5;
    }

    while (v5);
  }

  outlined destroy of NSNotificationCenter.Notifications.Resumption(v0 + 80);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v1 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 136);
  *(v0 + 96) = v1;
  *(v0 + 112) = *(v0 + 168);
  v2 = *(v0 + 280);
  if (*(v0 + 80))
  {
    outlined init with copy of Notification(v0 + 80, *(v0 + 280));
    outlined destroy of NSNotificationCenter.Notifications.NotificationWrapper(v0 + 80);
  }

  else
  {
    outlined destroy of TermOfAddress?(v0 + 80, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
    *v2 = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
  }

  v3 = *(v0 + 8);

  return v3();
}

{
  v1 = *v0;
  *(v1 + 136) = *(v1 + 184);
  *(v1 + 152) = *(v1 + 200);
  *(v1 + 168) = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](NSNotificationCenter.Notifications.next(), 0, 0);
}

uint64_t get_enum_tag_for_layout_string_So20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t type metadata instantiation function for PredicateExpressions.Variable()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void _encodeInt32(uint64_t a1, const void *a2, int a3)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  addValueToTopContainerE(a1, a2, v5);
  CFRelease(v5);
}

uint64_t closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(char *a1, int a2, __CFString *a3, id a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v167 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v28 = @"NSCocoaErrorDomain";
    v29 = v28;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v28);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_146;
          }

          goto LABEL_31;
        }

        v51 = [(__CFString *)v29 UTF8String];
        if (!v51)
        {
          __break(1u);
LABEL_246:
          __break(1u);
          goto LABEL_247;
        }

        String.init(utf8String:)(v51);
        if (v52)
        {
          goto LABEL_32;
        }

        __break(1u);
      }

      v162 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v53)
      {
        goto LABEL_32;
      }

      [(__CFString *)v29 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_146;
    }

LABEL_31:
    LOBYTE(v160) = 0;
    v164 = 0;
    LOBYTE(v162) = 0;
    v163 = 0;
    if (__CFStringIsCF())
    {
LABEL_32:

      goto LABEL_146;
    }

    v49 = v29;
    String.init(_nativeStorage:)();
    if (!v50 && (v164 = [(__CFString *)v49 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_146:
    v80 = objc_allocWithZone(NSError);
    v81 = String._bridgeToObjectiveCImpl()();

    v73 = _NativeDictionary.bridged()();
    a4 = [v80 initWithDomain:v81 code:514 userInfo:v73];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v82 = [a4 domain];
    if (!v82)
    {
LABEL_156:
      v86 = 0;
      v10 = 0xE000000000000000;
      goto LABEL_200;
    }

    v10 = v82;
    v83 = _objc_isTaggedPointer(v82);
    v84 = v10;
    v73 = v84;
    if ((v83 & 1) == 0)
    {
      goto LABEL_152;
    }

    v85 = _objc_getTaggedPointerTag(v84);
    if (v85)
    {
      if (v85 != 22)
      {
        if (v85 == 2)
        {
          MEMORY[0x1EEE9AC00](v85);
          v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v10 = v87;

LABEL_200:
          v127 = v29;
          v48 = v127;
          if (!isTaggedPointer)
          {
            goto LABEL_205;
          }

          v128 = _objc_getTaggedPointerTag(v127);
          if (!v128)
          {
            goto LABEL_213;
          }

          if (v128 != 22)
          {
            if (v128 == 2)
            {
              v73 = &v156;
              MEMORY[0x1EEE9AC00](v128);
              v129 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              a3 = v130;

LABEL_219:
              if (v86 == v129 && v10 == a3)
              {
              }

              else
              {
                v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v137 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_224;
                }
              }

              return swift_willThrow();
            }

LABEL_205:
            LOBYTE(v160) = 0;
            v164 = 0;
            LOBYTE(v162) = 0;
            v163 = 0;
            if (__CFStringIsCF())
            {
            }

            else
            {
              v73 = v48;
              v131 = String.init(_nativeStorage:)();
              if (v132)
              {
                v129 = v131;
                a3 = v132;

                goto LABEL_219;
              }

              v164 = [v73 length];
              if (v164)
              {
                v129 = String.init(_cocoaString:)();
                a3 = v136;
                goto LABEL_219;
              }
            }

            v129 = 0;
            a3 = 0xE000000000000000;
            goto LABEL_219;
          }

          v133 = [v48 UTF8String];
          if (v133)
          {
            v134 = String.init(utf8String:)(v133);
            if (v135)
            {
LABEL_214:
              v129 = v134;
              a3 = v135;

              goto LABEL_219;
            }

            __break(1u);
LABEL_213:
            v162 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v134 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v135)
            {
              [v48 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v129 = v160;
              a3 = v161;
              goto LABEL_219;
            }

            goto LABEL_214;
          }

          goto LABEL_246;
        }

LABEL_152:
        LOBYTE(v160) = 0;
        v164 = 0;
        LOBYTE(v162) = 0;
        v163 = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_156;
        }

        v88 = v73;
        v89 = String.init(_nativeStorage:)();
        if (v90)
        {
          v86 = v89;
          v10 = v90;

          goto LABEL_200;
        }

        v164 = [v88 length];
        if (!v164)
        {

          goto LABEL_156;
        }

        v86 = String.init(_cocoaString:)();
        v10 = v126;
LABEL_199:

        goto LABEL_200;
      }

      v91 = [v73 UTF8String];
      if (!v91)
      {
LABEL_247:
        __break(1u);
        goto LABEL_248;
      }

      v92 = String.init(utf8String:)(v91);
      if (v93)
      {
LABEL_161:
        v86 = v92;
        v10 = v93;

        goto LABEL_199;
      }

      __break(1u);
    }

    v162 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v92 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v93)
    {
      [v73 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v86 = v160;
      v10 = v161;
      goto LABEL_199;
    }

    goto LABEL_161;
  }

  if ((a2 & 2) != 0)
  {
    v19 = 3585;
  }

  else
  {
    v19 = 1537;
  }

  v21 = _NSOpenFileDescriptor_Protected(a1, v19, a2, 438);
  if ((v21 & 0x80000000) == 0)
  {
    v22 = v21;
    if ((a6 & 1) != 0 && (v23 = objc_opt_self(), (v24 = [v23 currentProgress]) != 0))
    {

      if (a7)
      {
        v25 = a8 - a7;
      }

      else
      {
        v25 = 0;
      }

      v26 = [v23 progressWithTotalUnitCount_];
    }

    else
    {
      v26 = 0;
    }

    v164 = a3;
    v165 = a4;
    v166 = a5 & 1;
    v31 = write(buffer:toFileDescriptor:path:parentProgress:)(a7, a8, v22, &v164, v26);
    if (!v9)
    {
      writeExtendedAttributes(fd:attributes:)(v22, a9);

      return close(v22);
    }

    v32 = MEMORY[0x1865CA7A0](v31);
    if (v26 && ([v26 isCancelled] & 1) != 0)
    {
      unlink(a1);
      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
      v33 = objc_allocWithZone(NSError);
      v34 = String._bridgeToObjectiveCImpl()();

      a4 = [v33 initWithDomain:v34 code:3072 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v35 = [a4 domain];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)(v35);
      v38 = v37;

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
      a3 = v40;
      if (v36 == v39 && v38 == v40)
      {

LABEL_197:
        swift_willThrow();

        return close(v22);
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_197;
      }

      __break(1u);
      goto LABEL_70;
    }

    v158 = v9;
    v159 = v26;
    if (a5)
    {
      if (v32 > 27)
      {
        if (v32 <= 62)
        {
          if (v32 != 28)
          {
            if (v32 == 30)
            {
              v54 = 642;
              goto LABEL_168;
            }

            goto LABEL_167;
          }
        }

        else
        {
          if (v32 == 63)
          {
            v54 = 514;
            goto LABEL_168;
          }

          if (v32 != 69)
          {
            if (v32 == 102)
            {
              swift_unknownObjectRetain();
              v44 = 0;
              v45 = 512;
LABEL_173:
              ObjectType = swift_getObjectType();
              (*(a4 + 30))(ObjectType, a4);
              v104 = String._bridgeToObjectiveCImpl()();

              v105 = (*(a4 + 54))(ObjectType, a4);
              outlined consume of PathOrURL(a3, a4, 1);
              if (v44)
              {
                v164 = v44;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v44 = v44;
                v106 = _getErrorEmbeddedNSError<A>(_:)();

                v26 = v159;
                if (v106)
                {
                }

                else
                {
                  swift_allocError();
                  *v108 = v44;
                }

                v11 = v158;
                v107 = _swift_stdlib_bridgeErrorToNSError();
              }

              else
              {
                v107 = 0;
                v11 = v158;
                v26 = v159;
              }

              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              goto LABEL_196;
            }

LABEL_167:
            v54 = 512;
LABEL_168:
            v157 = v54;
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v94 = POSIXErrorCode.rawValue.getter();
              v95 = objc_allocWithZone(NSError);
              v96 = String._bridgeToObjectiveCImpl()();

              v44 = [v95 initWithDomain:v96 code:v94 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v97 = [(__CFString *)v44 domain];
              v98 = static String._unconditionallyBridgeFromObjectiveC(_:)(v97);
              v100 = v99;

              if (v98 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v100 == v101)
              {

                v45 = v157;
                goto LABEL_173;
              }

              v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v45 = v157;
              if (v102)
              {
                goto LABEL_173;
              }

              goto LABEL_243;
            }

            goto LABEL_250;
          }
        }

        v54 = 640;
        goto LABEL_168;
      }

LABEL_70:
      if (v32 > 12)
      {
        if (v32 != 13)
        {
          if (v32 == 17)
          {
            v54 = 516;
            goto LABEL_168;
          }

          goto LABEL_167;
        }
      }

      else if (v32 != 1)
      {
        if (v32 == 2)
        {
          v54 = 4;
          goto LABEL_168;
        }

        goto LABEL_167;
      }

      v54 = 513;
      goto LABEL_168;
    }

    if (v32 > 27)
    {
      if (v32 > 62)
      {
        if (v32 == 63)
        {
          v55 = 514;
          goto LABEL_181;
        }

        if (v32 != 69)
        {
          if (v32 == 102)
          {
            v44 = 0;
            v157 = 512;
            goto LABEL_187;
          }

          goto LABEL_180;
        }

        goto LABEL_112;
      }

      if (v32 == 28)
      {
LABEL_112:
        v55 = 640;
        goto LABEL_181;
      }

      if (v32 == 30)
      {
        v55 = 642;
        goto LABEL_181;
      }

LABEL_180:
      v55 = 512;
      goto LABEL_181;
    }

    if (v32 > 12)
    {
      if (v32 != 13)
      {
        if (v32 != 17)
        {
          goto LABEL_180;
        }

        v55 = 516;
        goto LABEL_181;
      }
    }

    else if (v32 != 1)
    {
      if (v32 != 2)
      {
        goto LABEL_180;
      }

      v55 = 4;
LABEL_181:
      v157 = v55;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
LABEL_250:
        v164 = 0;
        v165 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v164 = 0xD000000000000014;
        v165 = 0x80000001814813E0;
        LODWORD(v160) = v32;
        goto LABEL_251;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v109 = POSIXErrorCode.rawValue.getter();
      v110 = objc_allocWithZone(NSError);
      v111 = String._bridgeToObjectiveCImpl()();

      v44 = [v110 initWithDomain:v111 code:v109 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v112 = [(__CFString *)v44 domain];
      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)(v112);
      v115 = v114;

      if (v113 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v115 == v116)
      {

        v11 = v158;
        v26 = v159;
      }

      else
      {
        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v159;
        if ((v117 & 1) == 0)
        {
          goto LABEL_244;
        }

        v11 = v158;
      }

LABEL_187:

      URL.init(_fileManagerFailableFileURLWithPath:)(a3, a4, &v164);
      outlined consume of PathOrURL(a3, a4, 0);
      v119 = v164;
      v118 = v165;
      v120 = String._bridgeToObjectiveCImpl()();
      if (v119)
      {
        v121 = swift_getObjectType();
        v122 = (*(v118 + 432))(v121, v118);
        swift_unknownObjectRelease();
        if (v44)
        {
LABEL_189:
          v160 = v44;
          lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
          v44 = v44;
          v123 = _getErrorEmbeddedNSError<A>(_:)();

          if (v123)
          {
          }

          else
          {
            swift_allocError();
            *v125 = v44;
          }

          v124 = _swift_stdlib_bridgeErrorToNSError();
          goto LABEL_195;
        }
      }

      else
      {
        v122 = 0;
        if (v44)
        {
          goto LABEL_189;
        }
      }

      v124 = 0;
LABEL_195:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

LABEL_196:
      goto LABEL_197;
    }

    v55 = 513;
    goto LABEL_181;
  }

  v41 = MEMORY[0x1865CA7A0]();
  LODWORD(v10) = v41;
  if ((a5 & 1) == 0)
  {
    if (v41 > 27)
    {
      if (v41 > 62)
      {
        if (v41 == 63)
        {
          v48 = 514;
          goto LABEL_129;
        }

        if (v41 != 69)
        {
          if (v41 == 102)
          {
            v47 = 0;
            v48 = 512;
            goto LABEL_231;
          }

          goto LABEL_128;
        }

        goto LABEL_95;
      }

      if (v41 == 28)
      {
LABEL_95:
        v48 = 640;
        goto LABEL_129;
      }

      if (v41 == 30)
      {
        v48 = 642;
        goto LABEL_129;
      }

LABEL_128:
      v48 = 512;
      goto LABEL_129;
    }

    if (v41 > 12)
    {
      if (v41 != 13)
      {
        if (v41 != 17)
        {
          goto LABEL_128;
        }

        v48 = 516;
        goto LABEL_129;
      }
    }

    else if (v41 != 1)
    {
      if (v41 != 2)
      {
        goto LABEL_128;
      }

      v48 = 4;
LABEL_129:
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_249;
      }

      v10 = @"NSPOSIXErrorDomain";
      v71 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v72 = @"NSPOSIXErrorDomain";
      v73 = v72;
      if (!v71)
      {
LABEL_135:
        LOBYTE(v160) = 0;
        v164 = 0;
        LOBYTE(v162) = 0;
        v163 = 0;
        if (!__CFStringIsCF())
        {
          v75 = v73;
          String.init(_nativeStorage:)();
          if (!v76 && (v164 = [v75 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_227:
          v138 = POSIXErrorCode.rawValue.getter();
          v139 = objc_allocWithZone(NSError);
          v140 = String._bridgeToObjectiveCImpl()();

          v47 = [v139 initWithDomain:v140 code:v138 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v141 = [(__CFString *)v47 domain];
          v142 = static String._unconditionallyBridgeFromObjectiveC(_:)(v141);
          v144 = v143;

          if (v142 == static String._unconditionallyBridgeFromObjectiveC(_:)(v10) && v144 == v145)
          {
          }

          else
          {
            v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v146 & 1) == 0)
            {
              goto LABEL_242;
            }
          }

LABEL_231:

          URL.init(_fileManagerFailableFileURLWithPath:)(a3, a4, &v164);
          outlined consume of PathOrURL(a3, a4, 0);
          v147 = v164;
          v148 = v165;
          v149 = String._bridgeToObjectiveCImpl()();
          if (v147)
          {
            v150 = swift_getObjectType();
            v151 = (*(v148 + 432))(v150, v148);
            swift_unknownObjectRelease();
            if (v47)
            {
LABEL_233:
              v160 = v47;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v47 = v47;
              v152 = _getErrorEmbeddedNSError<A>(_:)();

              if (v152)
              {
              }

              else
              {
                swift_allocError();
                *v154 = v47;
              }

              v153 = _swift_stdlib_bridgeErrorToNSError();
              goto LABEL_239;
            }
          }

          else
          {
            v151 = 0;
            if (v47)
            {
              goto LABEL_233;
            }
          }

          v153 = 0;
LABEL_239:
          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
          swift_unknownObjectRelease();

          return swift_willThrow();
        }

LABEL_225:

        goto LABEL_227;
      }

      v74 = _objc_getTaggedPointerTag(v72);
      if (!v74)
      {
        goto LABEL_141;
      }

      if (v74 != 22)
      {
        if (v74 == 2)
        {
          MEMORY[0x1EEE9AC00](v74);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_227;
        }

        goto LABEL_135;
      }

      v77 = [v73 UTF8String];
      if (v77)
      {
        String.init(utf8String:)(v77);
        if (v78)
        {
          goto LABEL_225;
        }

        __break(1u);
LABEL_141:
        v162 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v79)
        {
          goto LABEL_225;
        }

LABEL_224:
        [v73 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_227;
      }

LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v48 = 513;
    goto LABEL_129;
  }

  if (v41 <= 27)
  {
    if (v41 > 12)
    {
      if (v41 != 13)
      {
        if (v41 == 17)
        {
          v43 = 516;
          goto LABEL_116;
        }

        goto LABEL_115;
      }
    }

    else if (v41 != 1)
    {
      if (v41 == 2)
      {
        v43 = 4;
        goto LABEL_116;
      }

      goto LABEL_115;
    }

    v43 = 513;
    goto LABEL_116;
  }

  if (v41 <= 62)
  {
    if (v41 != 28)
    {
      if (v41 == 30)
      {
        v43 = 642;
        goto LABEL_116;
      }

      goto LABEL_115;
    }

LABEL_94:
    v43 = 640;
    goto LABEL_116;
  }

  switch(v41)
  {
    case '?':
      v43 = 514;
      goto LABEL_116;
    case 'E':
      goto LABEL_94;
    case 'f':
      swift_unknownObjectRetain();
      v42 = 0;
      v43 = 512;
LABEL_121:
      v65 = swift_getObjectType();
      (*(a4 + 30))(v65, a4);
      v66 = String._bridgeToObjectiveCImpl()();

      v67 = (*(a4 + 54))(v65, a4);
      outlined consume of PathOrURL(a3, a4, 1);
      if (v42)
      {
        v164 = v42;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v42 = v42;
        v68 = _getErrorEmbeddedNSError<A>(_:)();

        if (v68)
        {
        }

        else
        {
          swift_allocError();
          *v70 = v42;
        }

        v69 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v69 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      return swift_willThrow();
  }

LABEL_115:
  v43 = 512;
LABEL_116:
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v56 = POSIXErrorCode.rawValue.getter();
    v57 = objc_allocWithZone(NSError);
    v58 = String._bridgeToObjectiveCImpl()();

    v42 = [v57 initWithDomain:v58 code:v56 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v59 = [(__CFString *)v42 domain];
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)(v59);
    v62 = v61;

    if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v62 == v63)
    {

      goto LABEL_121;
    }

    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v64)
    {
      goto LABEL_121;
    }

    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
  }

LABEL_249:
  _StringGuts.grow(_:)(22);

  v164 = 0xD000000000000014;
  v165 = 0x80000001814813E0;
  LODWORD(v160) = v10;
LABEL_251:
  v155 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v155);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}