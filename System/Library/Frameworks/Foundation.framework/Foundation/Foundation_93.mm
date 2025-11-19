uint64_t NSDecimalSubtract(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = *MEMORY[0x1E69E9840];
  v120 = *a3;
  v121 = *(a3 + 16);
  v118 = *a3;
  v119 = *(a3 + 16);
  if (_So9NSDecimala__length_getter(&v118))
  {
    v118 = *a3;
    v119 = *(a3 + 16);
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v118);
    _So9NSDecimala__isNegative_setter(isNegative_getter ^ 1u, &v120);
  }

  v118 = *a2;
  v119 = *(a2 + 16);
  if (!_So9NSDecimala__length_getter(&v118) && (v118 = *a2, v119 = *(a2 + 16), _So9NSDecimala__isNegative_getter(&v118)) || (v118 = v120, v119 = v121, !_So9NSDecimala__length_getter(&v118)) && (v118 = v120, v119 = v121, _So9NSDecimala__isNegative_getter(&v118)))
  {
LABEL_54:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v28 = swift_allocError();
    *v29 = 0;
    swift_willThrow();
LABEL_55:
    *&v118 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      v31 = qword_181234EC8[v116];
    }

    else
    {
      v31 = 0;
    }

    *&v113[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v113);
    _So9NSDecimala__length_setter(0, v113);
    _So9NSDecimala__isNegative_setter(1, v113);
    _So9NSDecimala__isCompact_setter(v113);
    _So9NSDecimala__reserved_setter(v113);
    *a1 = *v113;
    *(a1 + 16) = *&v113[16];

    return v31;
  }

  v116 = *a2;
  v117 = *(a2 + 16);
  if (!_So9NSDecimala__length_getter(&v116))
  {
    v118 = v120;
    v32 = v121;
LABEL_61:
    v119 = v32;
LABEL_62:
    v31 = 0;
    *a1 = v118;
    *(a1 + 16) = v119;
    return v31;
  }

  v116 = v120;
  v117 = v121;
  if (!_So9NSDecimala__length_getter(&v116))
  {
    v118 = *a2;
    v32 = *(a2 + 16);
    goto LABEL_61;
  }

  v116 = *a2;
  v117 = *(a2 + 16);
  v114 = v120;
  v115 = v121;
  specialized static NSDecimal._normalize(a:b:roundingMode:)(&v116, &v114);
  v111 = v116;
  v112 = v117;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v118 = v114;
    v32 = v115;
    goto LABEL_61;
  }

  v111 = v114;
  v112 = v115;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v118 = v116;
    v32 = v117;
    goto LABEL_61;
  }

  v111 = v116;
  v112 = v117;
  v109 = v116;
  v110 = v117;
  v9 = _So9NSDecimala__isNegative_getter(&v109);
  v109 = v114;
  v110 = v115;
  if (v9 != _So9NSDecimala__isNegative_getter(&v109))
  {
    v34 = v117;
    v105 = *(&v116 + 1);
    v107 = v116;
    NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
    v36 = v35;
    v37 = v114;
    v38 = v115;
    NSDecimal.asVariableLengthInteger()(v114, *(&v114 + 1), v115);
    v17 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v36, v39);

    switch(v17)
    {
      case 0xFFFFFFFFFFFFFFFFLL:
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v38);
        v17 = v41;
        NSDecimal.asVariableLengthInteger()(v107, v105, v34);
        v43 = v42;
        v44 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v44;
        *(v44 + 32) = 0;
        v45 = (v44 + 32);
        *(v44 + 16) = 8;
        *(v44 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v43 + 16);
        if (v20 >= v21)
        {
          v46 = *(v17 + 16);
        }

        else
        {
          v46 = *(v43 + 16);
        }

        if (v46)
        {
          if (!v21)
          {
            goto LABEL_305;
          }

          if (!v20)
          {
            goto LABEL_306;
          }

          v47 = ((*(v17 + 32) | 0x10000) - *(v43 + 32)) >> 16;
          *v45 = *(v17 + 32) - *(v43 + 32);
          if (v46 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_305;
            }

            if (v20 == 1)
            {
              goto LABEL_306;
            }

            v48 = v47 + *(v17 + 34) - *(v43 + 34) + 0xFFFF;
            v47 = HIWORD(v48);
            *(v44 + 34) = v48;
            if (v46 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_305;
              }

              if (v20 == 2)
              {
                goto LABEL_306;
              }

              v49 = v47 + *(v17 + 36) - *(v43 + 36) + 0xFFFF;
              v47 = HIWORD(v49);
              *(v44 + 36) = v49;
              if (v46 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_305;
                }

                if (v20 == 3)
                {
                  goto LABEL_306;
                }

                v50 = v47 + *(v17 + 38) - *(v43 + 38) + 0xFFFF;
                v47 = HIWORD(v50);
                *(v44 + 38) = v50;
                if (v46 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_305;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_306;
                  }

                  v51 = v47 + *(v17 + 40) - *(v43 + 40) + 0xFFFF;
                  v47 = HIWORD(v51);
                  *(v44 + 40) = v51;
                  if (v46 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_305;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_306;
                    }

                    v52 = v47 + *(v17 + 42) - *(v43 + 42) + 0xFFFF;
                    v47 = HIWORD(v52);
                    *(v44 + 42) = v52;
                    if (v46 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_305;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_306;
                      }

                      v53 = v47 + *(v17 + 44) - *(v43 + 44) + 0xFFFF;
                      v47 = HIWORD(v53);
                      *(v44 + 44) = v53;
                      if (v46 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_305;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_306;
                        }

                        v54 = v47 + *(v17 + 46) - *(v43 + 46) + 0xFFFF;
                        *(v44 + 46) = v54;
                        if (v46 != 8)
                        {
                          goto LABEL_302;
                        }

                        v47 = HIWORD(v54);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v47 = 1;
        }

        if (v20 < v21)
        {
          v81 = v17 + 32;
          while (!v47)
          {
            if (v46 >= *(v44 + 16))
            {
              goto LABEL_283;
            }

            v47 = (*(v81 + 2 * v46) + 0xFFFF) >> 16;
            v45[v46] = *(v81 + 2 * v46) - 1;
            if (v21 == ++v46)
            {
              v46 = v21;
              goto LABEL_192;
            }
          }

          do
          {
            if (v46 >= v21)
            {
              goto LABEL_279;
            }

            if (v46 >= *(v44 + 16))
            {
              goto LABEL_281;
            }

            v45[v46] = *(v81 + 2 * v46);
            ++v46;
          }

          while (v46 < v21);
        }

LABEL_192:
        if (v46 < v20)
        {
          if (v46 <= v20)
          {
            v82 = v20;
          }

          else
          {
            v82 = v46;
          }

          do
          {
            if (v82 == v46)
            {
              goto LABEL_273;
            }

            if (v46 >= *(v44 + 16))
            {
              goto LABEL_275;
            }

            v83 = v47 + (*(v43 + 32 + 2 * v46) ^ 0xFFFF);
            v47 = HIWORD(v83);
            v45[v46++] = v83;
          }

          while (v20 != v46);
        }

        if (!v47)
        {
          goto LABEL_252;
        }

        for (i = *(v44 + 16); i; *(v44 + 16) = --i)
        {
          if (*(v44 + 30 + 2 * i))
          {
            break;
          }
        }

        v85 = *(v12 + 16);
        if (HIDWORD(v85))
        {
          goto LABEL_289;
        }

        _So9NSDecimala__length_setter(v85, &v111);
        v109 = v114;
        v86 = v115;
        break;
      case 0uLL:
        v118 = 0uLL;
        v119 = 0;
        goto LABEL_62;
      case 1uLL:
        NSDecimal.asVariableLengthInteger()(v107, v105, v34);
        v17 = v55;
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v38);
        v57 = v56;
        v58 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v58;
        *(v58 + 32) = 0;
        v59 = (v58 + 32);
        *(v58 + 16) = 8;
        *(v58 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v57 + 16);
        if (v20 >= v21)
        {
          v60 = *(v17 + 16);
        }

        else
        {
          v60 = *(v57 + 16);
        }

        if (v60)
        {
          if (!v21)
          {
            goto LABEL_310;
          }

          if (!v20)
          {
            goto LABEL_311;
          }

          v61 = ((*(v17 + 32) | 0x10000) - *(v57 + 32)) >> 16;
          *v59 = *(v17 + 32) - *(v57 + 32);
          if (v60 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_310;
            }

            if (v20 == 1)
            {
              goto LABEL_311;
            }

            v62 = v61 + *(v17 + 34) - *(v57 + 34) + 0xFFFF;
            v61 = HIWORD(v62);
            *(v58 + 34) = v62;
            if (v60 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_310;
              }

              if (v20 == 2)
              {
                goto LABEL_311;
              }

              v63 = v61 + *(v17 + 36) - *(v57 + 36) + 0xFFFF;
              v61 = HIWORD(v63);
              *(v58 + 36) = v63;
              if (v60 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_310;
                }

                if (v20 == 3)
                {
                  goto LABEL_311;
                }

                v64 = v61 + *(v17 + 38) - *(v57 + 38) + 0xFFFF;
                v61 = HIWORD(v64);
                *(v58 + 38) = v64;
                if (v60 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_310;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_311;
                  }

                  v65 = v61 + *(v17 + 40) - *(v57 + 40) + 0xFFFF;
                  v61 = HIWORD(v65);
                  *(v58 + 40) = v65;
                  if (v60 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_310;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_311;
                    }

                    v66 = v61 + *(v17 + 42) - *(v57 + 42) + 0xFFFF;
                    v61 = HIWORD(v66);
                    *(v58 + 42) = v66;
                    if (v60 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_310;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_311;
                      }

                      v67 = v61 + *(v17 + 44) - *(v57 + 44) + 0xFFFF;
                      v61 = HIWORD(v67);
                      *(v58 + 44) = v67;
                      if (v60 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_310;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_311;
                        }

                        v68 = v61 + *(v17 + 46) - *(v57 + 46) + 0xFFFF;
                        *(v58 + 46) = v68;
                        if (v60 != 8)
                        {
                          goto LABEL_307;
                        }

                        v61 = HIWORD(v68);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v61 = 1;
        }

        if (v20 < v21)
        {
          v87 = v17 + 32;
          while (!v61)
          {
            if (v60 >= *(v58 + 16))
            {
              goto LABEL_284;
            }

            v61 = (*(v87 + 2 * v60) + 0xFFFF) >> 16;
            v59[v60] = *(v87 + 2 * v60) - 1;
            if (v21 == ++v60)
            {
              v60 = v21;
              goto LABEL_215;
            }
          }

          do
          {
            if (v60 >= v21)
            {
              goto LABEL_280;
            }

            if (v60 >= *(v58 + 16))
            {
              goto LABEL_282;
            }

            v59[v60] = *(v87 + 2 * v60);
            ++v60;
          }

          while (v60 < v21);
        }

LABEL_215:
        if (v60 < v20)
        {
          if (v60 <= v20)
          {
            v88 = v20;
          }

          else
          {
            v88 = v60;
          }

          do
          {
            if (v88 == v60)
            {
              goto LABEL_274;
            }

            if (v60 >= *(v58 + 16))
            {
              goto LABEL_276;
            }

            v89 = v61 + (*(v57 + 32 + 2 * v60) ^ 0xFFFF);
            v61 = HIWORD(v89);
            v59[v60++] = v89;
          }

          while (v20 != v60);
        }

        if (!v61)
        {
          goto LABEL_252;
        }

        for (j = *(v58 + 16); j; *(v58 + 16) = --j)
        {
          if (*(v58 + 30 + 2 * j))
          {
            break;
          }
        }

        v91 = *(v12 + 16);
        if (HIDWORD(v91))
        {
          goto LABEL_290;
        }

        _So9NSDecimala__length_setter(v91, &v111);
        v109 = v116;
        v86 = v117;
        break;
      default:
LABEL_312:
        type metadata accessor for NSComparisonResult(0);
        *&v109 = v17;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_313;
    }

    v110 = v86;
    v92 = _So9NSDecimala__isNegative_getter(&v109);
    _So9NSDecimala__isNegative_setter(v92, &v111);
    goto LABEL_229;
  }

  v109 = v116;
  v110 = v117;
  v10 = _So9NSDecimala__isNegative_getter(&v109);
  _So9NSDecimala__isNegative_setter(v10, &v111);
  NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
  v12 = v11;
  NSDecimal.asVariableLengthInteger()(v114, *(&v114 + 1), v115);
  v14 = v13;
  v15 = *(v12 + 16);
  v16 = *(v13 + 16);
  if (v16 >= v15)
  {
    v17 = *(v12 + 16);
  }

  else
  {
    v17 = *(v13 + 16);
  }

  v18 = 9;
  v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v19 + 16) = 9;
  *(v19 + 32) = 0;
  v22 = (v19 + 32);
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_300;
    }

    if (!v16)
    {
      goto LABEL_301;
    }

    v21 = *(v12 + 32) + *(v14 + 32);
    v20 = WORD1(v21);
    *v22 = *(v12 + 32) + *(v14 + 32);
    if (v17 != 1)
    {
      if (v15 == 1)
      {
        goto LABEL_300;
      }

      if (v16 == 1)
      {
        goto LABEL_301;
      }

      v21 = v20 + *(v12 + 34) + *(v14 + 34);
      v20 = WORD1(v21);
      *(v19 + 34) = v21;
      if (v17 != 2)
      {
        if (v15 == 2)
        {
          goto LABEL_300;
        }

        if (v16 == 2)
        {
          goto LABEL_301;
        }

        v21 = v20 + *(v12 + 36) + *(v14 + 36);
        v20 = WORD1(v21);
        *(v19 + 36) = v21;
        if (v17 != 3)
        {
          if (v15 == 3)
          {
            goto LABEL_300;
          }

          if (v16 == 3)
          {
            goto LABEL_301;
          }

          v21 = v20 + *(v12 + 38) + *(v14 + 38);
          v20 = WORD1(v21);
          *(v19 + 38) = v21;
          if (v17 != 4)
          {
            if (v15 == 4)
            {
              goto LABEL_300;
            }

            if (v16 == 4)
            {
              goto LABEL_301;
            }

            v21 = v20 + *(v12 + 40) + *(v14 + 40);
            v20 = WORD1(v21);
            *(v19 + 40) = v21;
            if (v17 != 5)
            {
              if (v15 == 5)
              {
                goto LABEL_300;
              }

              if (v16 == 5)
              {
                goto LABEL_301;
              }

              v21 = v20 + *(v12 + 42) + *(v14 + 42);
              v20 = WORD1(v21);
              *(v19 + 42) = v21;
              if (v17 != 6)
              {
                if (v15 == 6)
                {
                  goto LABEL_300;
                }

                if (v16 == 6)
                {
                  goto LABEL_301;
                }

                v21 = v20 + *(v12 + 44) + *(v14 + 44);
                v20 = WORD1(v21);
                *(v19 + 44) = v21;
                if (v17 != 7)
                {
                  if (v15 == 7)
                  {
                    goto LABEL_300;
                  }

                  if (v16 == 7)
                  {
                    goto LABEL_301;
                  }

                  v21 = v20 + *(v12 + 46) + *(v14 + 46);
                  v20 = WORD1(v21);
                  *(v19 + 46) = v21;
                  if (v17 != 8)
                  {
                    if (v15 == 8)
                    {
                      goto LABEL_300;
                    }

                    if (v16 == 8)
                    {
                      goto LABEL_301;
                    }

                    v23 = *(v14 + 48);
                    v21 = v20 + *(v12 + 48) + v23;
                    *(v19 + 48) = v20 + *(v12 + 48) + v23;
                    if (v17 != 9)
                    {
                      goto LABEL_297;
                    }

                    LODWORD(v20) = WORD1(v21);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v16 < v15)
    {
      if (v21 < 0x10000)
      {
        goto LABEL_70;
      }

      if (v17 > 8)
      {
        goto LABEL_286;
      }

      LODWORD(v20) = (*(v12 + 32 + 2 * v17) + 1) >> 16;
      v22[v17] = *(v12 + 32 + 2 * v17) + 1;
      if (v17 + 1 != v15)
      {
        v24 = 2 * v17 + 34;
        v25 = (v19 + v24);
        v26 = (v12 + v24);
        ++v17;
        while (v20)
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_286;
          }

          v27 = *v26++;
          LODWORD(v20) = (v27 + 1) >> 16;
          *v25++ = v27 + 1;
          if (v15 == ++v17)
          {
            goto LABEL_50;
          }
        }

LABEL_70:
        if (v17 <= v15)
        {
          v40 = v15;
        }

        else
        {
          v40 = v17;
        }

        do
        {
          if (v40 == v17)
          {
            goto LABEL_266;
          }

          if (v17 >= *(v19 + 16))
          {
            goto LABEL_267;
          }

          *(v19 + 2 * v17 + 32) = *(v12 + 32 + 2 * v17);
          ++v17;
        }

        while (v17 < v15);
        if (v17 >= v16)
        {
          goto LABEL_157;
        }

        goto LABEL_151;
      }

LABEL_50:
      v17 = v15;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_70;
    }

    LODWORD(v20) = 0;
  }

  if (v17 < v16)
  {
    if (!v20)
    {
LABEL_151:
      if (v17 <= v16)
      {
        v73 = v16;
      }

      else
      {
        v73 = v17;
      }

      do
      {
        if (v73 == v17)
        {
          goto LABEL_268;
        }

        if (v17 >= *(v19 + 16))
        {
          goto LABEL_269;
        }

        *(v19 + 2 * v17 + 32) = *(v14 + 32 + 2 * v17);
        ++v17;
      }

      while (v17 < v16);
LABEL_157:
      *&v109 = v19;
      goto LABEL_158;
    }

    if (v17 >= *(v19 + 16))
    {
      goto LABEL_285;
    }

    LODWORD(v20) = (*(v14 + 32 + 2 * v17) + 1) >> 16;
    v22[v17] = *(v14 + 32 + 2 * v17) + 1;
    if (v17 + 1 != v16)
    {
      v69 = 2 * v17 + 34;
      v70 = (v19 + v69);
      v71 = (v14 + v69);
      ++v17;
      while (v20)
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_285;
        }

        v72 = *v71++;
        LODWORD(v20) = (v72 + 1) >> 16;
        *v70++ = v72 + 1;
        if (v16 == ++v17)
        {
          goto LABEL_146;
        }
      }

      goto LABEL_151;
    }

LABEL_146:
    v17 = v16;
  }

  *&v109 = v19;
  if (!v20)
  {
LABEL_158:
    v74 = *(v19 + 16);
    if (__OFSUB__(v74, v17))
    {
      goto LABEL_287;
    }

    specialized RangeReplaceableCollection<>.removeLast(_:)(v74 - v17);

    v108 = v109;
    v75 = *(v109 + 16);
    if (v75 > 8)
    {

      if (v75 == 9)
      {
        v18 = 0;
        LODWORD(v14) = 0;
        LODWORD(v17) = 0;
        v12 = v108;
      }

      else
      {
        v106 = a4;
        v78 = 0;
        LODWORD(v14) = 0;
        LODWORD(v17) = 0;
        v15 = v108;
        do
        {
          if (v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = v17;
          }

          v79 = specialized static NSDecimal._integerDivideByShort(_:_:)(v15, 0x2710u);
          v14 = v80;

          v18 = v78 + 4;
          if (__OFADD__(v78, 4))
          {
            goto LABEL_278;
          }

          v16 = *(v79 + 16);
          v78 += 4;
          v15 = v79;
        }

        while (v16 > 9);
        v12 = v79;
        a4 = v106;
        if (v16 != 9)
        {
          goto LABEL_178;
        }
      }

      v15 = v12;
      do
      {
        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = v17;
        }

        v12 = specialized static NSDecimal._integerDivideByShort(_:_:)(v15, 0xAu);
        v14 = v76;

        v77 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_277;
        }

        v16 = *(v12 + 16);
        ++v18;
        v15 = v12;
      }

      while (v16 > 8);
      v18 = v77;
LABEL_178:
      if (v17)
      {
        if (!v14 || v14 == 5)
        {
          v14 = (v14 + 1);
        }
      }

      else if (!v14)
      {
        goto LABEL_257;
      }

      if (a4 <= 1)
      {
        if (a4)
        {
          goto LABEL_257;
        }

        goto LABEL_243;
      }

      if (a4 == 2)
      {
        goto LABEL_245;
      }

      if (a4 != 3)
      {
        goto LABEL_257;
      }

      if (v14 != 5)
      {
LABEL_243:
        if (v14 <= 4)
        {
LABEL_257:

          while (1)
          {
            v109 = v111;
            v110 = v112;
            v100 = _So9NSDecimala__exponent_getter(&v109);
            if (v18 < 0xFFFFFFFF80000000)
            {
              goto LABEL_291;
            }

            if (v18 > 0x7FFFFFFF)
            {
              goto LABEL_292;
            }

            if (__OFADD__(v100, v18))
            {
              goto LABEL_293;
            }

            if (v100 + v18 > 127)
            {
              break;
            }

            v109 = v111;
            v110 = v112;
            v101 = _So9NSDecimala__exponent_getter(&v109);
            v102 = __OFADD__(v101, v18);
            v103 = (v101 + v18);
            if (v102)
            {
              __break(1u);
LABEL_295:
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v14, 1, a4);
LABEL_254:
              *(a4 + 16) = v14;
              *(a4 + 2 * v15 + 32) = 1;
              if (*(a4 + 16) >= v16)
              {
                goto LABEL_256;
              }

              v19 = specialized static NSDecimal._integerDivideByShort(_:_:)(a4, 0xAu);
            }

            else
            {
              v19 = _So9NSDecimala__exponent_setter(v103, &v111);
              v75 = *(v12 + 16);
              if (!HIDWORD(v75))
              {
                goto LABEL_170;
              }

              __break(1u);
LABEL_266:
              __break(1u);
LABEL_267:
              __break(1u);
LABEL_268:
              __break(1u);
LABEL_269:
              __break(1u);
            }

            v16 = v19;

            v102 = __OFADD__(v18++, 1);
            if (v102)
            {
              __break(1u);
LABEL_273:
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
LABEL_279:
              __break(1u);
LABEL_280:
              __break(1u);
LABEL_281:
              __break(1u);
LABEL_282:
              __break(1u);
LABEL_283:
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
LABEL_286:
              __break(1u);
LABEL_287:
              __break(1u);
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
            }
          }

          goto LABEL_54;
        }

LABEL_245:
        if (!v16)
        {
          a4 = MEMORY[0x1E69E7CC0];
          v15 = *(MEMORY[0x1E69E7CC0] + 16);
          v94 = 1;
LABEL_251:
          if (v15 != v94)
          {
            v99 = *(a4 + 24);
            v14 = v15 + 1;
            if (v15 >= v99 >> 1)
            {
              goto LABEL_295;
            }

            goto LABEL_254;
          }

LABEL_252:

          lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
          v28 = swift_allocError();
          *v98 = 0;
          swift_willThrow();

          goto LABEL_55;
        }

LABEL_246:
        v94 = v16 + 1;
        a4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(a4 + 16) = v16;
        bzero((a4 + 32), 2 * v16);
        v95 = 0;
        v96 = 1;
        do
        {
          v97 = v96 + *(v12 + 32 + 2 * v95);
          v96 = HIWORD(v97);
          *(a4 + 2 * v95++ + 32) = v97;
        }

        while (v16 != v95);
        v15 = v16;
        if (v97 < 0x10000)
        {
LABEL_256:

          goto LABEL_257;
        }

        goto LABEL_251;
      }

      if (v16)
      {
        if (*(v12 + 32))
        {
          goto LABEL_257;
        }

        goto LABEL_246;
      }

      __break(1u);
LABEL_297:
      if (v15 != 9)
      {
        if (v16 != 9)
        {
          __break(1u);
          goto LABEL_300;
        }

LABEL_301:
        __break(1u);
LABEL_302:
        if (v21 != 8)
        {
          if (v20 != 8)
          {
            __break(1u);
            goto LABEL_305;
          }

LABEL_306:
          __break(1u);
LABEL_307:
          if (v21 != 8)
          {
            if (v20 != 8)
            {
              __break(1u);
              goto LABEL_310;
            }

LABEL_311:
            __break(1u);
            goto LABEL_312;
          }

LABEL_310:
          __break(1u);
          goto LABEL_311;
        }

LABEL_305:
        __break(1u);
        goto LABEL_306;
      }

LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v12 = v109;
LABEL_170:
    _So9NSDecimala__length_setter(v75, &v111);
LABEL_229:
    NSDecimal.copyVariableLengthInteger(_:)(v12);
    if (v93)
    {
      v28 = v93;

      goto LABEL_55;
    }

    _So9NSDecimala__isCompact_setter(&v111);
    NSDecimal.compact()();
    v118 = v111;
    v32 = v112;
    goto LABEL_61;
  }

  if (v17 <= 9)
  {
    if (v17 >= *(v19 + 16))
    {
      goto LABEL_288;
    }

    v22[v17] = 1;
    *&v109 = v19;
    ++v17;
    goto LABEL_158;
  }

LABEL_313:

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  *v104 = 0;
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t NSDecimalMultiply(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NSDecimal._multiply(by:roundingMode:)(*(a3 + 16), *a3, *(a3 + 8));
  if (v7)
  {
    v13 = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      v9 = qword_181234EC8[v12];
    }

    else
    {
      v9 = 0;
    }

    *&v11[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v11);
    _So9NSDecimala__length_setter(0, v11);
    _So9NSDecimala__isNegative_setter(1, v11);
    _So9NSDecimala__isCompact_setter(v11);
    _So9NSDecimala__reserved_setter(v11);
    *a1 = *v11;
    *(a1 + 16) = *&v11[16];
  }

  else
  {
    v9 = 0;
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return v9;
}

uint64_t NSDecimalDivide(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = specialized NSDecimal._divide(by:roundingMode:)(*a3, *(a3 + 8), *(a3 + 16), *a2, *(a2 + 8), *(a2 + 16));
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return 0;
}

uint64_t NSDecimalPower(_:_:_:_:)(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  *&v6 = *(a2 + 1);
  v7 = *(a2 + 3);
  *v76 = *a2;
  v64 = v6;
  v65 = v7;
  *(&v6 + 1) = v7;
  *v67 = v6;
  *&v76[4] = v6;
  if (_So9NSDecimala__length_getter(v76) || (*v76 = v5, *&v76[4] = *v67, !_So9NSDecimala__isNegative_getter(v76)))
  {
    if (!a3)
    {
      v33 = specialized NSDecimal.init(_:)(1uLL);
      v36 = v33 & 0xFFFF000000000000;
      v37 = v34 & 0xFFFF000000000000;
LABEL_65:
      v54 = 0;
      *a1 = v33 & 0xFFFFFFFFFFFFLL | v36;
      *(a1 + 8) = v34 & 0xFFFFFFFFFFFFLL | v37;
      *(a1 + 16) = v35;
      return v54;
    }

    v62 = a1;
    v63 = a3;
    *v76 = v5;
    *&v76[4] = *v67;
    v8 = _So9NSDecimala__exponent_getter(v76);
    memset(v76, 0, sizeof(v76));
    if (v8 == _So9NSDecimala__exponent_getter(v76))
    {
      *v76 = v5;
      *&v76[4] = *v67;
      v9 = _So9NSDecimala__length_getter(v76);
      memset(v76, 0, sizeof(v76));
      if (v9 == _So9NSDecimala__length_getter(v76))
      {
        *v76 = v5;
        *&v76[4] = *v67;
        isNegative_getter = _So9NSDecimala__isNegative_getter(v76);
        memset(v76, 0, sizeof(v76));
        if (isNegative_getter == _So9NSDecimala__isNegative_getter(v76))
        {
          *v76 = v5;
          *&v76[4] = *v67;
          isCompact_getter = _So9NSDecimala__isCompact_getter(v76);
          memset(v76, 0, sizeof(v76));
          if (isCompact_getter == _So9NSDecimala__isCompact_getter(v76))
          {
            *v76 = v5;
            *&v12 = v64;
            *(&v12 + 1) = v65;
            *&v76[4] = v12;
            v13 = _So9NSDecimala__reserved_getter(v76);
            memset(v76, 0, sizeof(v76));
            if (v13 == _So9NSDecimala__reserved_getter(v76) && !*&vorr_s8(v64, v65))
            {
LABEL_40:
              if (v63 <= 0)
              {
                *&v76[4] = 0uLL;
                _So9NSDecimala__exponent_setter(0, v76);
                _So9NSDecimala__length_setter(0, v76);
                _So9NSDecimala__isNegative_setter(1, v76);
                _So9NSDecimala__isCompact_setter(v76);
                _So9NSDecimala__reserved_setter(v76);
                v33 = *v76;
                v34 = *&v76[8];
                v35 = *&v76[16];
                v36 = *v76 & 0xFFFF000000000000;
                v37 = *&v76[8] & 0xFFFF000000000000;
              }

              else
              {
                v35 = 0;
                v34 = 0;
                v37 = 0;
                v33 = 0;
                v36 = 0;
              }

              a1 = v62;
              goto LABEL_65;
            }
          }
        }
      }
    }

    *v76 = v5;
    LOWORD(v14) = v64.i16[0];
    *&v15 = v64;
    *(&v15 + 1) = v65;
    *&v76[4] = v15;
    v16 = v64.u16[1];
    v17 = v64.u16[2];
    LOWORD(v18) = v64.i16[3];
    LOWORD(v19) = v65.i16[0];
    v20 = v65.u16[1];
    if (!_So9NSDecimala__length_getter(v76))
    {
      *v76 = v5;
      *&v76[4] = v64;
      *&v76[12] = v65;
      if (_So9NSDecimala__isNegative_getter(v76))
      {
        memset(v76, 0, sizeof(v76));
        if (_So9NSDecimala__length_getter(v76))
        {
          goto LABEL_46;
        }

        memset(v76, 0, sizeof(v76));
        if (!_So9NSDecimala__isNegative_getter(v76))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }
    }

    memset(v76, 0, sizeof(v76));
    if (!_So9NSDecimala__length_getter(v76) && (memset(v76, 0, sizeof(v76)), _So9NSDecimala__isNegative_getter(v76)) || (*v76 = v5, *&v76[4] = v64, *&v76[12] = v65, v68 = _So9NSDecimala__isNegative_getter(v76), memset(v76, 0, sizeof(v76)), _So9NSDecimala__isNegative_getter(v76) < v68) || (*v76 = v5, *&v76[4] = v64, *&v76[12] = v65, v69 = _So9NSDecimala__isNegative_getter(v76), memset(v76, 0, sizeof(v76)), v69 < _So9NSDecimala__isNegative_getter(v76)))
    {
LABEL_46:
      while (1)
      {
        v28 = v63;
        if ((v63 & 0x8000000000000000) == 0)
        {
          break;
        }

        v28 = -v63;
        if (!__OFSUB__(0, v63))
        {
          break;
        }

        __break(1u);
LABEL_68:
        v66 = 0;
LABEL_38:

        v72 = *v76;
        v73 = *&v76[16];
        if (_So9NSDecimala__isNegative_getter(&v72))
        {
          if (v28)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v38 = v66;
LABEL_45:
          if (!v38)
          {
            goto LABEL_40;
          }
        }
      }

      specialized NSDecimal.init(_:)(1uLL);
      v70 = HIWORD(v41);
      if (v28 < 2)
      {
        v51 = v64.u16[1];
        LOWORD(v50) = v64.i16[3];
        LOWORD(v48) = v64.i16[2];
        v49 = v20;
LABEL_56:
        NSDecimal._multiply(by:roundingMode:)(v70, (v5 | (v14 << 32) | (v51 << 48)), (v48 | (v50 << 16) | (v19 << 32) | (v49 << 48)));
        if (!v32)
        {
          a1 = v62;
          if (v63 < 0)
          {
            v56 = v33;
            v57 = v35;
            v58 = v34;
            v59 = specialized NSDecimal.init(_:)(1uLL);
            v33 = specialized NSDecimal._divide(by:roundingMode:)(v56, v58, v57, v59, v60, v61);
          }

          v37 = v34 & 0xFFFF000000000000;
          v36 = v33 & 0xFFFF000000000000;
          goto LABEL_65;
        }
      }

      else
      {
        while (1)
        {
          v42 = (v5 | (v14 << 32) | (v16 << 48));
          v43 = v17 | (v18 << 16) | (v19 << 32);
          v44 = v43 | (v20 << 48);
          if (v28)
          {
            NSDecimal._multiply(by:roundingMode:)(v70, v42, v44);
            if (v32)
            {
              break;
            }

            v70 = HIWORD(v46);
            --v28;
            v43 = v45;
          }

          NSDecimal._multiply(by:roundingMode:)(v43, v42, v44);
          if (v32)
          {
            break;
          }

          v49 = HIWORD(v48);
          v19 = HIDWORD(v48);
          v50 = v48 >> 16;
          v5 = v47;
          v20 = HIWORD(v48);
          v51 = HIWORD(v47);
          v14 = HIDWORD(v47);
          v18 = v48 >> 16;
          v17 = v48;
          v16 = HIWORD(v47);
          v52 = v28 > 3;
          v28 = v28 >> 1;
          if (!v52)
          {
            goto LABEL_56;
          }
        }
      }

      a1 = v62;
      goto LABEL_58;
    }

    *v76 = v5;
    *&v76[4] = v64;
    *&v76[12] = v65;
    if (!_So9NSDecimala__length_getter(v76))
    {
      memset(v76, 0, sizeof(v76));
      if (_So9NSDecimala__length_getter(v76))
      {
        v38 = -1;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_45;
    }

    memset(v76, 0, sizeof(v76));
    if (!_So9NSDecimala__length_getter(v76))
    {
      *v76 = v5;
      *&v76[4] = v64;
      *&v76[12] = v65;
      v38 = _So9NSDecimala__length_getter(v76) != 0;
      goto LABEL_45;
    }

    *v76 = v5;
    *&v76[4] = v64;
    *&v76[12] = v65;
    v74 = 0uLL;
    v75 = 0;
    specialized static NSDecimal._normalize(a:b:roundingMode:)(v76, &v74);
    NSDecimal.asVariableLengthInteger()(*v76, *&v76[8], *&v76[16]);
    v22 = v21;
    NSDecimal.asVariableLengthInteger()(v74, *(&v74 + 1), v75);
    v24 = v23;
    v25 = v22;
    v26 = *(v22 + 16);
    v27 = *(v24 + 16);
    if (v27 >= v26)
    {
      if (v26 < v27)
      {
        LOBYTE(v28) = 0;
LABEL_36:
        v29 = -1;
LABEL_37:
        v66 = v29;
        goto LABEL_38;
      }

      while (1)
      {
        LOBYTE(v28) = v26 == 0;
        if (!v26)
        {
          goto LABEL_68;
        }

        v39 = *(v25 + 30 + 2 * v26);
        v40 = *(v24 + 30 + 2 * v26);
        if (v40 < v39)
        {
          break;
        }

        --v26;
        if (v39 < v40)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    v29 = 1;
    goto LABEL_37;
  }

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  v30 = swift_allocError();
  *v31 = 0;
  swift_willThrow();
  v32 = v30;
LABEL_58:
  *v76 = v32;
  v53 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v54 = qword_181234EC8[v74];
  }

  else
  {
    v54 = 0;
  }

  *&v71[4] = 0uLL;
  _So9NSDecimala__exponent_setter(0, v71);
  _So9NSDecimala__length_setter(0, v71);
  _So9NSDecimala__isNegative_setter(1, v71);
  _So9NSDecimala__isCompact_setter(v71);
  _So9NSDecimala__reserved_setter(v71);
  *a1 = *v71;
  *(a1 + 16) = *&v71[16];

  return v54;
}

uint64_t NSDecimalMultiplyByPowerOf10(_:_:_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = specialized NSDecimal._multiplyByPowerOfTen(power:roundingMode:)(a3, *a2, *(a2 + 8), *(a2 + 16));
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return 0;
}

uint64_t NSDecimalCompare(_:_:)(uint64_t a1, uint64_t a2)
{

  return _NSDecimalCompare(_:_:)(a1, a2);
}

uint64_t _NSDecimalCompare(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v13 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(a1 + 16);
  if (!_So9NSDecimala__length_getter(&v11))
  {
    goto LABEL_12;
  }

  do
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    if (!_So9NSDecimala__length_getter(&v11))
    {
      v11 = *a2;
      v12 = *(a2 + 16);
      if (_So9NSDecimala__isNegative_getter(&v11))
      {
        return 1;
      }
    }

    v11 = *v3;
    v12 = *(v3 + 16);
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v11);
    v11 = *a2;
    v12 = *(a2 + 16);
    if (_So9NSDecimala__isNegative_getter(&v11) < isNegative_getter)
    {
      return -1;
    }

    v11 = *v3;
    v12 = *(v3 + 16);
    v5 = _So9NSDecimala__isNegative_getter(&v11);
    v11 = *a2;
    v12 = *(a2 + 16);
    if (v5 < _So9NSDecimala__isNegative_getter(&v11))
    {
      return 1;
    }

    v11 = *v3;
    v12 = *(v3 + 16);
    if (!_So9NSDecimala__length_getter(&v11))
    {
      v11 = *a2;
      v12 = *(a2 + 16);
      if (_So9NSDecimala__length_getter(&v11))
      {
        return -1;
      }

      else
      {
        return 0;
      }
    }

    v11 = *a2;
    v12 = *(a2 + 16);
    if (!_So9NSDecimala__length_getter(&v11))
    {
      v11 = *v3;
      v12 = *(v3 + 16);
      return _So9NSDecimala__length_getter(&v11) != 0;
    }

    v9 = *v3;
    v10 = *(v3 + 16);
    v11 = *a2;
    v12 = *(a2 + 16);
    specialized static NSDecimal._normalize(a:b:roundingMode:)(&v9, &v11);
    NSDecimal.asVariableLengthInteger()(v9, *(&v9 + 1), v10);
    v3 = v6;
    NSDecimal.asVariableLengthInteger()(v11, *(&v11 + 1), v12);
    a2 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v3, v7);

    if (!_So9NSDecimala__isNegative_getter(&v9))
    {
      return a2;
    }

    switch(a2)
    {
      case -1:
        return 1;
      case 1:
        return -1;
      case 0:
        return 0;
    }

    type metadata accessor for NSComparisonResult(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
LABEL_12:
    v11 = *v3;
    v12 = *(v3 + 16);
  }

  while (!_So9NSDecimala__isNegative_getter(&v11));
  v11 = *a2;
  v12 = *(a2 + 16);
  if (_So9NSDecimala__length_getter(&v11))
  {
    return -1;
  }

  v11 = *a2;
  v12 = *(a2 + 16);
  if (!_So9NSDecimala__isNegative_getter(&v11))
  {
    return -1;
  }

  return 0;
}

double NSDecimalCompact(_:)(__int128 *a1)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  NSDecimal.compact()();
  result = *&v3;
  *a1 = v3;
  *(a1 + 4) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError()
{
  result = lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError;
  if (!lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError;
  if (!lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError);
  }

  return result;
}

uint64_t specialized _NSDecimalDivide(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = specialized NSDecimal._divide(by:roundingMode:)(*a3, *(a3 + 8), *(a3 + 16), *a2, *(a2 + 8), *(a2 + 16));
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return 0;
}

uint64_t specialized __NSDecimalNormalize(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(a1 + 16);
  v6 = *a2;
  v7 = *(a2 + 16);
  v4 = specialized static NSDecimal._normalize(a:b:roundingMode:)(&v8, &v6);
  *a1 = v8;
  *(a1 + 16) = v9;
  *a2 = v6;
  *(a2 + 16) = v7;
  return v4 & 1;
}

uint64_t NSDecimal.description.getter(uint64_t a1, uint64_t a2, int a3)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;
  v41 = a3;
  if (!_So9NSDecimala__length_getter(&v40))
  {
    *&v40 = a1;
    *(&v40 + 1) = a2;
    v41 = a3;
    if (_So9NSDecimala__isNegative_getter(&v40))
    {
      return 5136718;
    }
  }

  *&v40 = a1;
  *(&v40 + 1) = a2;
  v41 = a3;
  if (!_So9NSDecimala__length_getter(&v40))
  {
    return 48;
  }

  *&v39 = 0;
  *(&v39 + 1) = 0xE000000000000000;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  v41 = a3;
  v37 = v40;
  v38 = a3;
  if (_So9NSDecimala__exponent_getter(&v37) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v37 = v40;
      v38 = v41;
      v6 = _So9NSDecimala__exponent_getter(&v37);
      _So9NSDecimala__exponent_setter((v6 - 1), &v40);
      v37 = v40;
      v38 = v41;
    }

    while (_So9NSDecimala__exponent_getter(&v37) > 0);
  }

  v37 = v40;
  v38 = v41;
  if (!_So9NSDecimala__exponent_getter(&v37))
  {
    _So9NSDecimala__exponent_setter(1, &v40);
  }

  v37 = v40;
  v38 = v41;
  if (_So9NSDecimala__length_getter(&v37))
  {
    while (1)
    {
      v37 = v40;
      v38 = v41;
      if (!_So9NSDecimala__exponent_getter(&v37))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v37 = v40;
      v38 = v41;
      v7 = _So9NSDecimala__exponent_getter(&v37);
      _So9NSDecimala__exponent_setter((v7 + 1), &v40);
      v8 = v40;
      v9 = WORD2(v40);
      v10 = WORD4(v40);
      v11 = WORD5(v40);
      v30 = WORD3(v40);
      v34 = WORD6(v40);
      v32 = HIWORD(v40);
      v33 = v41;
      v31 = HIWORD(v41);
      NSDecimal.asVariableLengthInteger()(v40 | (WORD2(v40) << 32) | (WORD3(v40) << 48), WORD4(v40) | (WORD5(v40) << 16) | (WORD6(v40) << 32) | (HIWORD(v40) << 48), v41 | (HIWORD(v41) << 16));
      v13 = v12;
      v14 = *(v12 + 16);
      v15._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v14);
      *&v37 = v15;
      if (v14)
      {
        break;
      }

      v21 = 48;
LABEL_20:
      while (1)
      {
        v22 = *(v15._rawValue + 2);
        if (!v22 || *(v15._rawValue + v22 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v37 + 16) - 1);
        }

        v15._rawValue = v37;
      }

      LODWORD(v37) = v8;
      WORD2(v37) = v9;
      WORD3(v37) = v30;
      WORD4(v37) = v10;
      WORD5(v37) = v11;
      WORD6(v37) = v34;
      HIWORD(v37) = v32;
      LOWORD(v38) = v33;
      HIWORD(v38) = v31;
      NSDecimal.copyVariableLengthInteger(_:)(v15);
      if (v23)
      {
        goto LABEL_41;
      }

      v24 = *(v15._rawValue + 2);

      if (HIDWORD(v24))
      {
        goto LABEL_40;
      }

      _So9NSDecimala__length_setter(v24, &v37);
      v40 = v37;
      v41 = v38;
      *&v35 = v21;
      v25 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v25);

      v35 = v40;
      v36 = v41;
      if (!_So9NSDecimala__length_getter(&v35))
      {
        goto LABEL_27;
      }
    }

    v28 = v11;
    v29 = v9;
    v16 = v8;
    v17 = 0;
    v18 = v14 + 15;
    while ((v18 - 15) <= *(v13 + 16))
    {
      v19 = *(v13 + 2 * v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v15._rawValue);
      }

      if ((v18 - 15) > *(v15._rawValue + 2))
      {
        goto LABEL_39;
      }

      v20 = v19 | (v17 << 16);
      *(v15._rawValue + v18) = v20 / 0xA;
      v17 = v20 % 0xA;
      if (--v18 == 15)
      {

        *&v37 = v15;
        v21 = v17 | 0x30;
        v8 = v16;
        v9 = v29;
        v11 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_27:
    v37 = v40;
    v38 = v41;
    if (_So9NSDecimala__exponent_getter(&v37) <= 0)
    {
      while (1)
      {
        v37 = v40;
        v38 = v41;
        if (!_So9NSDecimala__exponent_getter(&v37))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v37 = v40;
        v38 = v41;
        v26 = _So9NSDecimala__exponent_getter(&v37);
        _So9NSDecimala__exponent_setter((v26 + 1), &v40);
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v37 = v40;
    v38 = v41;
    if (_So9NSDecimala__isNegative_getter(&v37))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v37 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
    lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
    return String.init<A>(_:)();
  }

  return result;
}

void static NSDecimal.*= infix(_:_:)(NSDecimal *by@<X1>, NSRoundingMode roundingMode@<X2>, uint64_t a3@<X0>, NSDecimal *a4@<X8>)
{
  NSDecimal._multiply(by:roundingMode:)(a4, by, roundingMode);
  if (v8)
  {
    *&v9[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v9);
    _So9NSDecimala__length_setter(0, v9);
    _So9NSDecimala__isNegative_setter(1, v9);
    _So9NSDecimala__isCompact_setter_0(0, v9);
    _So9NSDecimala__reserved_setter(v9);

    *a3 = *v9;
    *(a3 + 16) = *&v9[16];
  }

  else
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }
}

uint64_t static NSDecimal./= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  result = specialized NSDecimal._divide(by:roundingMode:)(a2, a3, a4, *a1, *(a1 + 8), *(a1 + 16));
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 10) = v7;
  *(a1 + 12) = v8;
  *(a1 + 14) = v9;
  *(a1 + 16) = v10;
  *(a1 + 18) = v11;
  return result;
}

double one-time initialization function for leastFiniteMagnitude()
{
  *&v1[4] = -1;
  *&v1[12] = -1;
  _So9NSDecimala__exponent_setter(127, v1);
  _So9NSDecimala__length_setter(8, v1);
  _So9NSDecimala__isNegative_setter(1, v1);
  _So9NSDecimala__isCompact_setter_0(1, v1);
  _So9NSDecimala__reserved_setter(v1);
  result = *v1;
  static NSDecimal.leastFiniteMagnitude = *v1;
  dword_1EA7B6A90 = *&v1[16];
  return result;
}

uint64_t static NSDecimal.leastFiniteMagnitude.getter()
{
  if (one-time initialization token for leastFiniteMagnitude != -1)
  {
    swift_once();
  }

  return static NSDecimal.leastFiniteMagnitude;
}

double one-time initialization function for greatestFiniteMagnitude()
{
  *&v1[4] = -1;
  *&v1[12] = -1;
  _So9NSDecimala__exponent_setter(127, v1);
  _So9NSDecimala__length_setter(8, v1);
  _So9NSDecimala__isNegative_setter(0, v1);
  _So9NSDecimala__isCompact_setter_0(1, v1);
  _So9NSDecimala__reserved_setter(v1);
  result = *v1;
  static NSDecimal.greatestFiniteMagnitude = *v1;
  dword_1EA7B6AA4 = *&v1[16];
  return result;
}

uint64_t static NSDecimal.greatestFiniteMagnitude.getter()
{
  if (one-time initialization token for greatestFiniteMagnitude != -1)
  {
    swift_once();
  }

  return static NSDecimal.greatestFiniteMagnitude;
}

double one-time initialization function for leastNormalMagnitude()
{
  *&v1[4] = 1;
  *&v1[6] = 0;
  *&v1[12] = 0;
  _So9NSDecimala__exponent_setter(4294967169, v1);
  _So9NSDecimala__length_setter(1, v1);
  _So9NSDecimala__isNegative_setter(0, v1);
  _So9NSDecimala__isCompact_setter_0(1, v1);
  _So9NSDecimala__reserved_setter(v1);
  result = *v1;
  static NSDecimal.leastNormalMagnitude = *v1;
  dword_1EA7B6AB8 = *&v1[16];
  return result;
}

uint64_t static NSDecimal.leastNormalMagnitude.getter()
{
  if (one-time initialization token for leastNormalMagnitude != -1)
  {
    swift_once();
  }

  return static NSDecimal.leastNormalMagnitude;
}

double one-time initialization function for leastNonzeroMagnitude()
{
  *&v1[4] = 1;
  *&v1[6] = 0;
  *&v1[12] = 0;
  _So9NSDecimala__exponent_setter(4294967169, v1);
  _So9NSDecimala__length_setter(1, v1);
  _So9NSDecimala__isNegative_setter(0, v1);
  _So9NSDecimala__isCompact_setter_0(1, v1);
  _So9NSDecimala__reserved_setter(v1);
  result = *v1;
  static NSDecimal.leastNonzeroMagnitude = *v1;
  dword_1EA7B6ACC = *&v1[16];
  return result;
}

uint64_t static NSDecimal.leastNonzeroMagnitude.getter()
{
  if (one-time initialization token for leastNonzeroMagnitude != -1)
  {
    swift_once();
  }

  return static NSDecimal.leastNonzeroMagnitude;
}

double one-time initialization function for pi()
{
  *&v1[4] = xmmword_181234EE0;
  _So9NSDecimala__exponent_setter(4294967258, v1);
  _So9NSDecimala__length_setter(8, v1);
  _So9NSDecimala__isNegative_setter(0, v1);
  _So9NSDecimala__isCompact_setter_0(1, v1);
  _So9NSDecimala__reserved_setter(v1);
  result = *v1;
  static NSDecimal.pi = *v1;
  dword_1EA7B6AE0 = *&v1[16];
  return result;
}

uint64_t static NSDecimal.pi.getter()
{
  if (one-time initialization token for pi != -1)
  {
    swift_once();
  }

  return static NSDecimal.pi;
}

uint64_t static NSDecimal.nan.getter()
{
  *(&v1[1] + 4) = 0;
  *(v1 + 4) = 0;
  _So9NSDecimala__exponent_setter(0, v1);
  _So9NSDecimala__length_setter(0, v1);
  _So9NSDecimala__isNegative_setter(1, v1);
  _So9NSDecimala__isCompact_setter_0(0, v1);
  _So9NSDecimala__reserved_setter(v1);
  return v1[0];
}

void __swiftcall NSDecimal.init(_:)(NSDecimal *__return_ptr retstr, Swift::Int8 a2)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  v6[0] = specialized NSDecimal.init(_:)(v3);
  v6[1] = v4;
  v7 = v5;
  if (a2 < 0)
  {
    _So9NSDecimala__isNegative_setter(1, v6);
  }
}

unint64_t NSDecimal.init(integerLiteral:)(int64_t a1)
{
  v1 = a1;
  if (a1 < 0)
  {
    a1 = -a1;
  }

  result = specialized NSDecimal.init(_:)(a1);
  v5[0] = result;
  v5[1] = v3;
  v6 = v4;
  if (v1 < 0)
  {
    _So9NSDecimala__isNegative_setter(1, v5);
    return v5[0];
  }

  return result;
}

void __swiftcall NSDecimal.init(_:)(NSDecimal *__return_ptr retstr, Swift::Int16 a2)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  v6[0] = specialized NSDecimal.init(_:)(v3);
  v6[1] = v4;
  v7 = v5;
  if (a2 < 0)
  {
    _So9NSDecimala__isNegative_setter(1, v6);
  }
}

void __swiftcall NSDecimal.init(_:)(NSDecimal *__return_ptr retstr, Swift::Int32 a2)
{
  v2 = a2;
  if (a2 >= 0)
  {
    *&a2 = a2;
  }

  else
  {
    *&a2 = -a2;
  }

  v5[0] = specialized NSDecimal.init(_:)(*&a2);
  v5[1] = v3;
  v6 = v4;
  if (v2 < 0)
  {
    _So9NSDecimala__isNegative_setter(1, v5);
  }
}

uint64_t NSDecimal.init(sign:exponent:significand:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v9 = result;
  if (one-time initialization token for compatibility1 != -1)
  {
    result = swift_once();
  }

  if (static NSDecimal.compatibility1 != 1)
  {
    v15 = 0x7FFFLL;
    if (a2 < 0x7FFF)
    {
      v15 = a2;
    }

    if (v15 <= -32768)
    {
      v16 = -32768;
    }

    else
    {
      v16 = v15;
    }

    *&v23 = specialized NSDecimal._multiplyByPowerOfTen(power:roundingMode:)(v16, a3, a4, a5);
    DWORD2(v23) = v17;
    WORD6(v23) = v18;
    HIWORD(v23) = v19;
    v24 = v20;
    if (v9)
    {
      v25 = v23;
      v26 = v24;
      if (_So9NSDecimala__length_getter(&v25))
      {
        v25 = v23;
        v26 = v24;
        isNegative_getter = _So9NSDecimala__isNegative_getter(&v25);
        _So9NSDecimala__isNegative_setter(isNegative_getter ^ 1u, &v23);
      }
    }

    return v23;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *&v25 = a3;
  v10 = HIDWORD(a3);
  v11 = HIWORD(a3);
  *(&v25 + 1) = a4;
  v26 = a5;
  result = _So9NSDecimala__exponent_getter(&v25);
  v12 = __OFADD__(a2, result);
  v13 = (a2 + result);
  if (!v12)
  {
    *&v25 = a3;
    *(&v25 + 1) = a4;
    v26 = a5;
    v22 = _So9NSDecimala__length_getter(&v25);
    *&v25 = a3;
    *(&v25 + 1) = a4;
    v26 = a5;
    isCompact_getter = _So9NSDecimala__isCompact_getter(&v25);
    WORD2(v23) = v10;
    WORD3(v23) = v11;
    *(&v23 + 1) = a4;
    v24 = a5;
    _So9NSDecimala__exponent_setter(v13, &v23);
    _So9NSDecimala__length_setter(v22, &v23);
    _So9NSDecimala__isNegative_setter(v9 & 1, &v23);
    _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v23);
    _So9NSDecimala__reserved_setter(&v23);
    return v23;
  }

LABEL_19:
  __break(1u);
  return result;
}

Swift::Void __swiftcall NSDecimal.negate()()
{
  v2 = *v0;
  v3 = v0[4];
  if (_So9NSDecimala__length_getter(&v2))
  {
    v2 = *v0;
    v3 = v0[4];
    v1 = _So9NSDecimala__isNegative_getter(&v2) ^ 1;

    _So9NSDecimala__isNegative_setter(v1, v0);
  }
}

void __swiftcall NSDecimal.init(signOf:magnitudeOf:)(NSDecimal *__return_ptr retstr, NSDecimal *signOf, NSDecimal *magnitudeOf)
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v13 = _So9NSDecimala__exponent_getter(&v17);
  v17 = v9;
  v18 = v8;
  v19 = v7;
  v14 = _So9NSDecimala__length_getter(&v17);
  v17 = signOf;
  v18 = magnitudeOf;
  v19 = v10;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v17);
  v17 = v9;
  v18 = v8;
  v19 = v7;
  isCompact_getter = _So9NSDecimala__isCompact_getter(&v17);
  HIDWORD(v17) = HIDWORD(v9);
  v18 = v8;
  v19 = v7;
  _So9NSDecimala__exponent_setter(v13, &v17);
  _So9NSDecimala__length_setter(v14, &v17);
  _So9NSDecimala__isNegative_setter(isNegative_getter, &v17);
  _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v17);
  _So9NSDecimala__reserved_setter(&v17);
}

uint64_t NSDecimal.exponent.getter(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  return _So9NSDecimala__exponent_getter(v4);
}

uint64_t NSDecimal.significand.getter(uint64_t a1, uint64_t a2, int a3)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v6 = _So9NSDecimala__length_getter(&v9);
  v9 = a1;
  v10 = a2;
  v11 = a3;
  isCompact_getter = _So9NSDecimala__isCompact_getter(&v9);
  HIDWORD(v9) = HIDWORD(a1);
  v10 = a2;
  v11 = a3;
  _So9NSDecimala__exponent_setter(0, &v9);
  _So9NSDecimala__length_setter(v6, &v9);
  _So9NSDecimala__isNegative_setter(0, &v9);
  _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v9);
  _So9NSDecimala__reserved_setter(&v9);
  return v9;
}

uint64_t NSDecimal.sign.getter(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  return _So9NSDecimala__isNegative_getter(v4);
}

uint64_t NSDecimal.ulp.getter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  *v30 = a1;
  *&v30[8] = a2;
  *&v30[16] = a3;
  if (!_So9NSDecimala__length_getter(v30))
  {
    *v30 = a1;
    *&v30[8] = a2;
    *&v30[16] = a3;
    if (_So9NSDecimala__isNegative_getter(v30))
    {
      *&v30[4] = 0uLL;
      _So9NSDecimala__exponent_setter(0, v30);
      _So9NSDecimala__length_setter(0, v30);
      _So9NSDecimala__isNegative_setter(1, v30);
      v19 = 0;
      goto LABEL_40;
    }
  }

  *v30 = a1;
  *&v30[8] = a2;
  *&v30[16] = a3;
  if (!_So9NSDecimala__length_getter(v30))
  {
    *v30 = a1;
    *&v30[8] = a2;
    *&v30[16] = a3;
    if (!_So9NSDecimala__isNegative_getter(v30))
    {
      v21 = 4294967168;
      goto LABEL_39;
    }
  }

  if (one-time initialization token for _powersOfTenDividingUInt128Max != -1)
  {
    goto LABEL_45;
  }

LABEL_5:
  rawValue = _powersOfTenDividingUInt128Max._rawValue;
  v7 = *(_powersOfTenDividingUInt128Max._rawValue + 2);
  if (v7)
  {
    v8 = 0;
    v9 = _powersOfTenDividingUInt128Max._rawValue + 32;
    v10 = v7 - 1;
    v23 = v7 - 1;
    while (1)
    {
      *&v28 = a1;
      *(&v28 + 1) = a2;
      v29 = a3;
      v11 = _So9NSDecimala__length_getter(&v28);
      *&v28 = a1;
      *(&v28 + 1) = a2;
      v29 = a3;
      isCompact_getter = _So9NSDecimala__isCompact_getter(&v28);
      DWORD1(v28) = HIDWORD(a1);
      *(&v28 + 1) = a2;
      v29 = a3;
      _So9NSDecimala__exponent_setter(0, &v28);
      _So9NSDecimala__length_setter(v11, &v28);
      _So9NSDecimala__isNegative_setter(0, &v28);
      _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v28);
      _So9NSDecimala__reserved_setter(&v28);
      *v30 = v28;
      *&v30[16] = v29;
      v28 = *v9;
      v29 = *(v9 + 4);
      if (_So9NSDecimala__length_getter(&v28) || (v28 = *v9, v29 = *(v9 + 4), !_So9NSDecimala__isNegative_getter(&v28)))
      {
        v28 = *v30;
        v29 = *&v30[16];
        if (_So9NSDecimala__length_getter(&v28) || (v28 = *v30, v29 = *&v30[16], !_So9NSDecimala__isNegative_getter(&v28)))
        {
          v28 = *v9;
          v29 = *(v9 + 4);
          isNegative_getter = _So9NSDecimala__isNegative_getter(&v28);
          v28 = *v30;
          v29 = *&v30[16];
          if (_So9NSDecimala__isNegative_getter(&v28) < isNegative_getter)
          {
            goto LABEL_35;
          }

          v28 = *v9;
          v29 = *(v9 + 4);
          v14 = _So9NSDecimala__isNegative_getter(&v28);
          v28 = *v30;
          v29 = *&v30[16];
          if (v14 >= _So9NSDecimala__isNegative_getter(&v28))
          {
            v28 = *v9;
            v29 = *(v9 + 4);
            if (_So9NSDecimala__length_getter(&v28))
            {
              v28 = *v30;
              v29 = *&v30[16];
              if (_So9NSDecimala__length_getter(&v28))
              {
                v28 = *v9;
                v29 = *(v9 + 4);
                v26 = *v30;
                v27 = *&v30[16];
                specialized static NSDecimal._normalize(a:b:roundingMode:)(&v28, &v26);
                NSDecimal.asVariableLengthInteger()(v28, *(&v28 + 1), v29);
                v16 = v15;
                NSDecimal.asVariableLengthInteger()(v26, *(&v26 + 1), v27);
                v18 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v16, v17);

                v24 = v28;
                v25 = v29;
                if (_So9NSDecimala__isNegative_getter(&v24))
                {
                  type metadata accessor for NSComparisonResult(0);
                  if (v18 == -1)
                  {
                    v10 = v23;
                    if (v23 == v8)
                    {
LABEL_31:
                      v8 = rawValue[2];
                      goto LABEL_35;
                    }

                    goto LABEL_28;
                  }

                  v10 = v23;
                  if (v18)
                  {
                    if (v18 == 1)
                    {
                      goto LABEL_35;
                    }

                    *&v24 = v18;
                    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                    __break(1u);
LABEL_44:
                    __break(1u);
LABEL_45:
                    swift_once();
                    goto LABEL_5;
                  }
                }

                else
                {
                  v10 = v23;
                  if (v18 == -1)
                  {
                    goto LABEL_35;
                  }
                }
              }
            }

            else
            {
              v28 = *v30;
              v29 = *&v30[16];
              if (_So9NSDecimala__length_getter(&v28))
              {
                goto LABEL_35;
              }
            }
          }
        }
      }

      else
      {
        v28 = *v30;
        v29 = *&v30[16];
        if (_So9NSDecimala__length_getter(&v28))
        {
          goto LABEL_35;
        }

        v28 = *v30;
        v29 = *&v30[16];
        if (!_So9NSDecimala__isNegative_getter(&v28))
        {
          goto LABEL_35;
        }
      }

      if (v10 == v8)
      {
        goto LABEL_31;
      }

LABEL_28:
      ++v8;
      v9 += 20;
      if (v8 >= rawValue[2])
      {
        goto LABEL_44;
      }
    }
  }

  v8 = 0;
LABEL_35:
  *v30 = a1;
  *&v30[8] = a2;
  *&v30[16] = a3;
  v20 = _So9NSDecimala__exponent_getter(v30);
  if (v8 >> 31)
  {
    __break(1u);
  }

  if (v20 - v8 <= -128)
  {
    v21 = 4294967168;
  }

  else
  {
    v21 = (v20 - v8);
  }

LABEL_39:
  *&v30[4] = 1;
  *&v30[6] = 0;
  *&v30[12] = 0;
  _So9NSDecimala__exponent_setter(v21, v30);
  _So9NSDecimala__length_setter(1, v30);
  _So9NSDecimala__isNegative_setter(0, v30);
  v19 = 1;
LABEL_40:
  _So9NSDecimala__isCompact_setter_0(v19, v30);
  _So9NSDecimala__reserved_setter(v30);
  return *v30;
}

BOOL NSDecimal.isFinite.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v13 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v14 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v15 = a3;
  if (_So9NSDecimala__length_getter(&v13))
  {
    return 1;
  }

  LODWORD(v13) = v5;
  WORD2(v13) = v6;
  HIWORD(v13) = v7;
  LOWORD(v14) = v4;
  WORD1(v14) = v8;
  WORD2(v14) = v9;
  HIWORD(v14) = v10;
  LOWORD(v15) = v3;
  HIWORD(v15) = v11;
  return _So9NSDecimala__isNegative_getter(&v13) == 0;
}

BOOL NSDecimal.isZero.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v13 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v14 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v15 = a3;
  if (_So9NSDecimala__length_getter(&v13))
  {
    return 0;
  }

  LODWORD(v13) = v5;
  WORD2(v13) = v6;
  HIWORD(v13) = v7;
  LOWORD(v14) = v4;
  WORD1(v14) = v8;
  WORD2(v14) = v9;
  HIWORD(v14) = v10;
  LOWORD(v15) = v3;
  HIWORD(v15) = v11;
  return _So9NSDecimala__isNegative_getter(&v13) == 0;
}

uint64_t NSDecimal.floatingPointClass.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v13 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v14 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v15 = a3;
  if (!_So9NSDecimala__length_getter(&v13))
  {
    LODWORD(v13) = v5;
    WORD2(v13) = v6;
    HIWORD(v13) = v7;
    LOWORD(v14) = v4;
    WORD1(v14) = v8;
    WORD2(v14) = v9;
    HIWORD(v14) = v10;
    LOWORD(v15) = v3;
    HIWORD(v15) = v11;
    if (_So9NSDecimala__isNegative_getter(&v13))
    {
      return 1;
    }
  }

  LODWORD(v13) = v5;
  WORD2(v13) = v6;
  HIWORD(v13) = v7;
  LOWORD(v14) = v4;
  WORD1(v14) = v8;
  WORD2(v14) = v9;
  HIWORD(v14) = v10;
  LOWORD(v15) = v3;
  HIWORD(v15) = v11;
  if (!_So9NSDecimala__length_getter(&v13))
  {
    return 6;
  }

  LODWORD(v13) = v5;
  WORD2(v13) = v6;
  HIWORD(v13) = v7;
  LOWORD(v14) = v4;
  WORD1(v14) = v8;
  WORD2(v14) = v9;
  HIWORD(v14) = v10;
  LOWORD(v15) = v3;
  HIWORD(v15) = v11;
  if (_So9NSDecimala__isNegative_getter(&v13))
  {
    return 3;
  }

  else
  {
    return 8;
  }
}

BOOL NSDecimal.isSignMinus.getter(uint64_t a1, uint64_t a2, int a3)
{
  v4[0] = a1;
  v4[1] = a2;
  v5 = a3;
  return _So9NSDecimala__isNegative_getter(v4) != 0;
}

uint64_t NSDecimal.isNormal.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v13 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v14 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v15 = a3;
  if (_So9NSDecimala__length_getter(&v13) || (LODWORD(v13) = v5, WORD2(v13) = v6, HIWORD(v13) = v7, LOWORD(v14) = v4, WORD1(v14) = v8, WORD2(v14) = v9, HIWORD(v14) = v10, LOWORD(v15) = v3, HIWORD(v15) = v11, result = _So9NSDecimala__isNegative_getter(&v13), result))
  {
    LODWORD(v13) = v5;
    WORD2(v13) = v6;
    HIWORD(v13) = v7;
    LOWORD(v14) = v4;
    WORD1(v14) = v8;
    WORD2(v14) = v9;
    HIWORD(v14) = v10;
    LOWORD(v15) = v3;
    HIWORD(v15) = v11;
    if (_So9NSDecimala__length_getter(&v13))
    {
      return 1;
    }

    else
    {
      LODWORD(v13) = v5;
      WORD2(v13) = v6;
      HIWORD(v13) = v7;
      LOWORD(v14) = v4;
      WORD1(v14) = v8;
      WORD2(v14) = v9;
      HIWORD(v14) = v10;
      LOWORD(v15) = v3;
      HIWORD(v15) = v11;
      return _So9NSDecimala__isNegative_getter(&v13) == 0;
    }
  }

  return result;
}

uint64_t NSDecimal.nextUp.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  LODWORD(v3) = a1;
  v62 = *MEMORY[0x1E69E9840];
  *v61 = a1;
  v4 = WORD2(a1);
  v5 = HIWORD(a1);
  v6 = a2;
  *&v61[8] = a2;
  LODWORD(v7) = WORD1(a2);
  v8 = WORD2(a2);
  v9 = HIWORD(a2);
  v10 = a3;
  LODWORD(isCompact_getter) = HIWORD(a3);
  *&v61[16] = a3;
  if (_So9NSDecimala__isNegative_getter(v61))
  {
    *v61 = v3;
    *&v61[4] = v4;
    *&v61[6] = v5;
    *&v61[8] = v6;
    *&v61[10] = v7;
    *&v61[12] = v8;
    *&v61[14] = v9;
    *&v61[16] = v10;
    *&v61[18] = isCompact_getter;
    if (_So9NSDecimala__exponent_getter(v61) >= -127 && v4 == 39322 && v5 == 39321 && v6 == 39321 && v7 == 39321 && v8 == 39321 && v9 == 39321 && v10 == 39321 && isCompact_getter == 6553)
    {
      *v61 = v3;
      *&v61[4] = -26214;
      *&v61[6] = -26215;
      *&v61[8] = -1717986919;
      *&v61[12] = -26215;
      *&v61[14] = -26215;
      *&v61[16] = 429496729;
      v12 = _So9NSDecimala__exponent_getter(v61);
      *&v61[12] = -1;
      *&v61[4] = -1;
      _So9NSDecimala__exponent_setter((v12 - 1), v61);
      _So9NSDecimala__length_setter(8, v61);
      v13 = 1;
LABEL_22:
      _So9NSDecimala__isNegative_setter(v13, v61);
      _So9NSDecimala__isCompact_setter_0(1, v61);
      _So9NSDecimala__reserved_setter(v61);
      return *v61;
    }
  }

  else
  {
    *v61 = v3;
    *&v61[4] = v4;
    *&v61[6] = v5;
    *&v61[8] = v6;
    *&v61[10] = v7;
    *&v61[12] = v8;
    *&v61[14] = v9;
    *&v61[16] = v10;
    *&v61[18] = isCompact_getter;
    if (_So9NSDecimala__exponent_getter(v61) <= 126 && v4 == 0xFFFF && v5 == 0xFFFF && v6 == 0xFFFF && v7 == 0xFFFF && v8 == 0xFFFF && v9 == 0xFFFF && v10 == 0xFFFF && isCompact_getter == 0xFFFF)
    {
      *v61 = v3;
      *&v61[4] = -1;
      *&v61[6] = -1;
      *&v61[8] = -1;
      *&v61[12] = -1;
      *&v61[14] = -1;
      *&v61[16] = -1;
      v14 = _So9NSDecimala__exponent_getter(v61);
      *&v61[4] = -26214;
      *&v61[6] = 0x9999999999999999;
      *&v61[14] = -1717986919;
      *&v61[18] = 6553;
      _So9NSDecimala__exponent_setter((v14 + 1), v61);
      _So9NSDecimala__length_setter(8, v61);
      v13 = 0;
      goto LABEL_22;
    }
  }

  *v61 = v3;
  *&v61[4] = v4;
  *&v61[6] = v5;
  *&v61[8] = v6;
  *&v61[10] = v7;
  *&v61[12] = v8;
  *&v61[14] = v9;
  *&v61[16] = v10;
  *&v61[18] = isCompact_getter;
  if (!_So9NSDecimala__length_getter(v61))
  {
LABEL_52:
    *v61 = v3;
    *&v61[4] = v4;
    *&v61[6] = v5;
    *&v61[8] = v6;
    *&v61[10] = v7;
    *&v61[12] = v8;
    *&v61[14] = v9;
    *&v61[16] = v10;
    *&v61[18] = isCompact_getter;
    if (_So9NSDecimala__isNegative_getter(v61))
    {
      *&v61[12] = 0;
      *&v61[4] = 0;
      _So9NSDecimala__exponent_setter(0, v61);
      _So9NSDecimala__length_setter(0, v61);
      _So9NSDecimala__isNegative_setter(1, v61);
      v20 = 0;
LABEL_65:
      _So9NSDecimala__isCompact_setter_0(v20, v61);
      _So9NSDecimala__reserved_setter(v61);
      v31 = *v61;
      v32 = *&v61[4];
      v33 = *&v61[6];
      v34 = *&v61[8];
      v35 = *&v61[10];
      v36 = *&v61[12];
      v37 = *&v61[14];
      v38 = *&v61[16];
      v39 = *&v61[18];
      *v61 = v3;
      *&v61[4] = v4;
      *&v61[6] = v5;
      *&v61[8] = v6;
      *&v61[10] = v7;
      *&v61[12] = v8;
      *&v61[14] = v9;
      *&v61[16] = v10;
      *&v61[18] = isCompact_getter;
      specialized static NSDecimal.+= infix(_:_:)(v61, v31 | (v32 << 32) | (v33 << 48), v34 | (v35 << 16) | (v36 << 32) | (v37 << 48), v38 | (v39 << 16));
      return *v61;
    }
  }

  *v61 = v3;
  *&v61[4] = v4;
  *&v61[6] = v5;
  *&v61[8] = v6;
  *&v61[10] = v7;
  *&v61[12] = v8;
  *&v61[14] = v9;
  *&v61[16] = v10;
  *&v61[18] = isCompact_getter;
  if (!_So9NSDecimala__length_getter(v61))
  {
    *v61 = v3;
    *&v61[4] = v4;
    *&v61[6] = v5;
    *&v61[8] = v6;
    *&v61[10] = v7;
    *&v61[12] = v8;
    *&v61[14] = v9;
    *&v61[16] = v10;
    *&v61[18] = isCompact_getter;
    if (!_So9NSDecimala__isNegative_getter(v61))
    {
      v27 = 4294967168;
LABEL_64:
      *&v61[4] = 1;
      *&v61[6] = 0;
      *&v61[12] = 0;
      _So9NSDecimala__exponent_setter(v27, v61);
      _So9NSDecimala__length_setter(1, v61);
      _So9NSDecimala__isNegative_setter(0, v61);
      v20 = 1;
      goto LABEL_65;
    }
  }

  if (one-time initialization token for _powersOfTenDividingUInt128Max != -1)
  {
    swift_once();
  }

  v15 = *(_powersOfTenDividingUInt128Max._rawValue + 2);
  v50 = v5;
  if (!v15)
  {
    v21 = v10;
    v22 = 0;
    v23 = v7;
    v24 = v8;
    v25 = isCompact_getter;
    v26 = v9;
LABEL_59:
    *v61 = v3;
    *&v61[4] = v4;
    *&v61[6] = v5;
    v28 = v6;
    *&v61[8] = v6;
    LOWORD(v7) = v23;
    *&v61[10] = v23;
    LOWORD(v8) = v24;
    *&v61[12] = v24;
    LOWORD(v9) = v26;
    *&v61[14] = v26;
    v29 = v21;
    *&v61[16] = v21;
    LOWORD(isCompact_getter) = v25;
    *&v61[18] = v25;
    v30 = _So9NSDecimala__exponent_getter(v61);
    if (v22 >> 31)
    {
      __break(1u);
    }

    if (v30 - v22 <= -128)
    {
      v27 = 4294967168;
    }

    else
    {
      v27 = (v30 - v22);
    }

    LOWORD(v10) = v29;
    LOWORD(v6) = v28;
    LOWORD(v5) = v50;
    goto LABEL_64;
  }

  v43 = v4;
  v44 = v10;
  v45 = v9;
  v46 = isCompact_getter;
  v47 = v7;
  v48 = v6;
  v49 = v3;
  v16 = 0;
  v7 = _powersOfTenDividingUInt128Max._rawValue + 32;
  v41 = v15 - 1;
  rawValue = _powersOfTenDividingUInt128Max._rawValue;
  LOWORD(v10) = v9;
  LOWORD(v5) = isCompact_getter;
  while (1)
  {
    v52 = v16;
    v59 = *v7;
    v60 = *(v7 + 4);
    LOWORD(v6) = v50;
    LODWORD(v57) = v49;
    WORD2(v57) = v4;
    WORD3(v57) = v50;
    LODWORD(v3) = v7;
    WORD4(v57) = v48;
    LOWORD(v9) = v47;
    WORD5(v57) = v47;
    WORD6(v57) = v8;
    HIWORD(v57) = v10;
    LOWORD(v58) = v44;
    HIWORD(v58) = v5;
    v51 = _So9NSDecimala__length_getter(&v57);
    LODWORD(v57) = v49;
    WORD2(v57) = v4;
    WORD3(v57) = v50;
    WORD4(v57) = v48;
    WORD5(v57) = v47;
    WORD6(v57) = v8;
    HIWORD(v57) = v10;
    LOWORD(v58) = v44;
    HIWORD(v58) = v5;
    isCompact_getter = _So9NSDecimala__isCompact_getter(&v57);
    WORD2(v57) = v4;
    WORD3(v57) = v50;
    WORD4(v57) = v48;
    WORD5(v57) = v47;
    WORD6(v57) = v8;
    HIWORD(v57) = v10;
    LOWORD(v58) = v44;
    HIWORD(v58) = v5;
    _So9NSDecimala__exponent_setter(0, &v57);
    _So9NSDecimala__length_setter(v51, &v57);
    _So9NSDecimala__isNegative_setter(0, &v57);
    _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v57);
    _So9NSDecimala__reserved_setter(&v57);
    *v61 = v57;
    *&v61[16] = v58;
    v57 = *v7;
    v58 = *(v7 + 4);
    if (!_So9NSDecimala__length_getter(&v57))
    {
      v57 = *v7;
      v58 = *(v7 + 4);
      if (_So9NSDecimala__isNegative_getter(&v57))
      {
        v57 = *v61;
        v58 = *&v61[16];
        v4 = v43;
        if (_So9NSDecimala__length_getter(&v57))
        {
          goto LABEL_58;
        }

        v57 = *v61;
        v58 = *&v61[16];
        if (!_So9NSDecimala__isNegative_getter(&v57))
        {
          goto LABEL_58;
        }

        goto LABEL_49;
      }
    }

    v57 = *v61;
    v58 = *&v61[16];
    if (!_So9NSDecimala__length_getter(&v57))
    {
      v57 = *v61;
      v58 = *&v61[16];
      if (_So9NSDecimala__isNegative_getter(&v57))
      {
        v4 = v43;
        goto LABEL_49;
      }
    }

    v57 = *v7;
    v58 = *(v7 + 4);
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v57);
    v57 = *v61;
    v58 = *&v61[16];
    v4 = v43;
    if (_So9NSDecimala__isNegative_getter(&v57) < isNegative_getter)
    {
      goto LABEL_58;
    }

    v57 = v59;
    v58 = v60;
    LODWORD(v3) = _So9NSDecimala__isNegative_getter(&v57);
    v57 = *v61;
    v58 = *&v61[16];
    if (v3 >= _So9NSDecimala__isNegative_getter(&v57))
    {
      break;
    }

LABEL_49:
    if (v41 == v52)
    {
      v22 = rawValue[2];
      LODWORD(v3) = v49;
      LOWORD(v5) = v50;
      LOWORD(v6) = v48;
      v23 = v47;
      v25 = v46;
      v26 = v45;
      v21 = v44;
      v24 = v8;
      goto LABEL_59;
    }

    v16 = v52 + 1;
    v7 += 20;
    if (v52 + 1 >= rawValue[2])
    {
      __break(1u);
      goto LABEL_52;
    }
  }

  v57 = v59;
  v58 = v60;
  if (!_So9NSDecimala__length_getter(&v57))
  {
    v57 = *v61;
    v58 = *&v61[16];
    if (_So9NSDecimala__length_getter(&v57))
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  v57 = *v61;
  v58 = *&v61[16];
  if (!_So9NSDecimala__length_getter(&v57))
  {
    goto LABEL_49;
  }

  v57 = v59;
  v58 = v60;
  v55 = *v61;
  v56 = *&v61[16];
  specialized static NSDecimal._normalize(a:b:roundingMode:)(&v57, &v55);
  NSDecimal.asVariableLengthInteger()(v57, *(&v57 + 1), v58);
  isCompact_getter = v18;
  NSDecimal.asVariableLengthInteger()(v55, *(&v55 + 1), v56);
  LOWORD(v6) = v19;
  v3 = specialized static NSDecimal._integerCompare(lhs:rhs:)(isCompact_getter, v19);

  v53 = v57;
  v54 = v58;
  if (!_So9NSDecimala__isNegative_getter(&v53))
  {
    if (v3 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_49;
  }

  type metadata accessor for NSComparisonResult(0);
  if (v3 == -1 || !v3)
  {
    goto LABEL_49;
  }

  if (v3 == 1)
  {
LABEL_58:
    LODWORD(v3) = v49;
    LOWORD(v5) = v50;
    LOWORD(v6) = v48;
    v23 = v47;
    v25 = v46;
    v26 = v45;
    v21 = v44;
    v24 = v8;
    v22 = v52;
    goto LABEL_59;
  }

  *&v53 = v3;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static NSDecimal.+ infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6[1] = a2;
  v7 = a3;
  specialized static NSDecimal.+= infix(_:_:)(v6, a4, a5, a6);
}

uint64_t NSDecimal.nextDown.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = a1;
  v51 = *MEMORY[0x1E69E9840];
  *&v49 = a1;
  *(&v49 + 1) = a2;
  v50 = a3;
  v48[0] = v49;
  LODWORD(v48[1]) = a3;
  if (_So9NSDecimala__length_getter(v48))
  {
    v48[0] = v49;
    LODWORD(v48[1]) = v50;
    isNegative_getter = _So9NSDecimala__isNegative_getter(v48);
    _So9NSDecimala__isNegative_setter(isNegative_getter ^ 1u, &v49);
    v5 = v49;
    v7 = WORD2(v49);
    v8 = WORD3(v49);
    LODWORD(isCompact_getter) = WORD4(v49);
    LODWORD(v10) = WORD5(v49);
    LODWORD(v11) = WORD6(v49);
    LODWORD(v12) = HIWORD(v49);
    v13 = v50;
    LODWORD(v14) = HIWORD(v50);
  }

  else
  {
    v7 = WORD2(v5);
    LODWORD(isCompact_getter) = a2;
    LODWORD(v10) = WORD1(a2);
    LODWORD(v11) = WORD2(a2);
    v12 = HIWORD(a2);
    v8 = HIWORD(v5);
    v13 = a3;
    LODWORD(v14) = HIWORD(a3);
  }

  LODWORD(v48[0]) = v5;
  WORD2(v48[0]) = v7;
  WORD3(v48[0]) = v8;
  WORD4(v48[0]) = isCompact_getter;
  WORD5(v48[0]) = v10;
  WORD6(v48[0]) = v11;
  HIWORD(v48[0]) = v12;
  LOWORD(v48[1]) = v13;
  WORD1(v48[1]) = v14;
  if (_So9NSDecimala__isNegative_getter(v48))
  {
    LODWORD(v48[0]) = v5;
    WORD2(v48[0]) = v7;
    WORD3(v48[0]) = v8;
    WORD4(v48[0]) = isCompact_getter;
    WORD5(v48[0]) = v10;
    WORD6(v48[0]) = v11;
    HIWORD(v48[0]) = v12;
    LOWORD(v48[1]) = v13;
    WORD1(v48[1]) = v14;
    if (_So9NSDecimala__exponent_getter(v48) > -128 && v7 == 39322 && v8 == 39321 && isCompact_getter == 39321 && v10 == 39321 && v11 == 39321 && v12 == 39321 && v13 == 39321 && v14 == 6553)
    {
      LODWORD(v48[0]) = v5;
      WORD2(v48[0]) = -26214;
      *(v48 + 6) = 0x9999999999999999;
      *(v48 + 14) = -1717986919;
      WORD1(v48[1]) = 6553;
      v15 = _So9NSDecimala__exponent_getter(v48);
      *&v39[4] = -1;
      *&v39[12] = -1;
      _So9NSDecimala__exponent_setter((v15 - 1), v39);
      _So9NSDecimala__length_setter(8, v39);
      v16 = 1;
LABEL_25:
      _So9NSDecimala__isNegative_setter(v16, v39);
      _So9NSDecimala__isCompact_setter_0(1, v39);
      _So9NSDecimala__reserved_setter(v39);
      goto LABEL_69;
    }
  }

  else
  {
    LODWORD(v48[0]) = v5;
    WORD2(v48[0]) = v7;
    WORD3(v48[0]) = v8;
    WORD4(v48[0]) = isCompact_getter;
    WORD5(v48[0]) = v10;
    WORD6(v48[0]) = v11;
    HIWORD(v48[0]) = v12;
    LOWORD(v48[1]) = v13;
    WORD1(v48[1]) = v14;
    if (_So9NSDecimala__exponent_getter(v48) < 127 && v7 == 0xFFFF && v8 == 0xFFFF && isCompact_getter == 0xFFFF && v10 == 0xFFFF && v11 == 0xFFFF && v12 == 0xFFFF && v13 == 0xFFFF && v14 == 0xFFFF)
    {
      LODWORD(v48[0]) = v5;
      *(v48 + 4) = -1;
      *(v48 + 12) = -1;
      v17 = _So9NSDecimala__exponent_getter(v48);
      *&v39[4] = -26214;
      *&v39[6] = 0x9999999999999999;
      *&v39[14] = -1717986919;
      *&v39[18] = 6553;
      _So9NSDecimala__exponent_setter((v17 + 1), v39);
      _So9NSDecimala__length_setter(8, v39);
      v16 = 0;
      goto LABEL_25;
    }
  }

  LODWORD(v48[0]) = v5;
  WORD2(v48[0]) = v7;
  WORD3(v48[0]) = v8;
  WORD4(v48[0]) = isCompact_getter;
  WORD5(v48[0]) = v10;
  WORD6(v48[0]) = v11;
  HIWORD(v48[0]) = v12;
  LOWORD(v48[1]) = v13;
  WORD1(v48[1]) = v14;
  if (_So9NSDecimala__length_getter(v48))
  {
    goto LABEL_27;
  }

LABEL_57:
  LODWORD(v48[0]) = v5;
  WORD2(v48[0]) = v7;
  WORD3(v48[0]) = v8;
  WORD4(v48[0]) = isCompact_getter;
  WORD5(v48[0]) = v10;
  WORD6(v48[0]) = v11;
  HIWORD(v48[0]) = v12;
  LOWORD(v48[1]) = v13;
  WORD1(v48[1]) = v14;
  if (!_So9NSDecimala__isNegative_getter(v48))
  {
LABEL_27:
    LODWORD(v48[0]) = v5;
    WORD2(v48[0]) = v7;
    WORD3(v48[0]) = v8;
    WORD4(v48[0]) = isCompact_getter;
    WORD5(v48[0]) = v10;
    WORD6(v48[0]) = v11;
    HIWORD(v48[0]) = v12;
    LOWORD(v48[1]) = v13;
    WORD1(v48[1]) = v14;
    if (!_So9NSDecimala__length_getter(v48))
    {
      LODWORD(v48[0]) = v5;
      WORD2(v48[0]) = v7;
      WORD3(v48[0]) = v8;
      WORD4(v48[0]) = isCompact_getter;
      WORD5(v48[0]) = v10;
      WORD6(v48[0]) = v11;
      HIWORD(v48[0]) = v12;
      LOWORD(v48[1]) = v13;
      WORD1(v48[1]) = v14;
      if (!_So9NSDecimala__isNegative_getter(v48))
      {
        v25 = 4294967168;
        goto LABEL_67;
      }
    }

    if (one-time initialization token for _powersOfTenDividingUInt128Max != -1)
    {
      goto LABEL_75;
    }

LABEL_30:
    v33 = v14;
    v34 = v13;
    v35 = v12;
    v36 = v11;
    v37 = v10;
    v18 = *(_powersOfTenDividingUInt128Max._rawValue + 2);
    if (v18)
    {
      v30 = v5;
      v31 = isCompact_getter;
      v10 = 0;
      v11 = _powersOfTenDividingUInt128Max._rawValue + 32;
      v28 = v18 - 1;
      v32 = v8;
      rawValue = _powersOfTenDividingUInt128Max._rawValue;
      v19 = isCompact_getter;
      while (1)
      {
        v46 = *v11;
        v47 = *(v11 + 4);
        LODWORD(v44) = v5;
        WORD2(v44) = v7;
        WORD3(v44) = v8;
        WORD4(v44) = v19;
        LOWORD(v14) = v11;
        LOWORD(v12) = v36;
        WORD5(v44) = v37;
        WORD6(v44) = v36;
        LOWORD(v13) = v35;
        HIWORD(v44) = v35;
        LOWORD(v45) = v34;
        HIWORD(v45) = v33;
        v38 = _So9NSDecimala__length_getter(&v44);
        LODWORD(v44) = v5;
        WORD2(v44) = v7;
        WORD3(v44) = v8;
        WORD4(v44) = v19;
        WORD5(v44) = v37;
        WORD6(v44) = v36;
        HIWORD(v44) = v35;
        LOWORD(v45) = v34;
        HIWORD(v45) = v33;
        isCompact_getter = _So9NSDecimala__isCompact_getter(&v44);
        WORD2(v44) = v7;
        WORD3(v44) = v8;
        WORD4(v44) = v19;
        WORD5(v44) = v37;
        WORD6(v44) = v36;
        HIWORD(v44) = v35;
        LOWORD(v45) = v34;
        HIWORD(v45) = v33;
        _So9NSDecimala__exponent_setter(0, &v44);
        _So9NSDecimala__length_setter(v38, &v44);
        _So9NSDecimala__isNegative_setter(0, &v44);
        _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v44);
        _So9NSDecimala__reserved_setter(&v44);
        v48[0] = v44;
        LODWORD(v48[1]) = v45;
        v44 = *v11;
        v45 = *(v11 + 4);
        if (_So9NSDecimala__length_getter(&v44) || (v44 = *v11, v45 = *(v11 + 4), !_So9NSDecimala__isNegative_getter(&v44)))
        {
          v44 = v48[0];
          v45 = v48[1];
          if (_So9NSDecimala__length_getter(&v44) || (v44 = v48[0], v45 = v48[1], !_So9NSDecimala__isNegative_getter(&v44)))
          {
            v44 = *v11;
            v45 = *(v11 + 4);
            v20 = _So9NSDecimala__isNegative_getter(&v44);
            v44 = v48[0];
            v45 = v48[1];
            v5 = v30;
            v8 = v32;
            if (_So9NSDecimala__isNegative_getter(&v44) < v20)
            {
              goto LABEL_61;
            }

            v44 = v46;
            v45 = v47;
            LODWORD(v14) = _So9NSDecimala__isNegative_getter(&v44);
            v44 = v48[0];
            v45 = v48[1];
            if (v14 >= _So9NSDecimala__isNegative_getter(&v44))
            {
              v44 = v46;
              v45 = v47;
              if (_So9NSDecimala__length_getter(&v44))
              {
                v44 = v48[0];
                v45 = v48[1];
                if (_So9NSDecimala__length_getter(&v44))
                {
                  v44 = v46;
                  v45 = v47;
                  v42 = v48[0];
                  v43 = v48[1];
                  specialized static NSDecimal._normalize(a:b:roundingMode:)(&v44, &v42);
                  NSDecimal.asVariableLengthInteger()(v44, *(&v44 + 1), v45);
                  isCompact_getter = v21;
                  NSDecimal.asVariableLengthInteger()(v42, *(&v42 + 1), v43);
                  LOWORD(v13) = v22;
                  v14 = specialized static NSDecimal._integerCompare(lhs:rhs:)(isCompact_getter, v22);

                  v40 = v44;
                  v41 = v45;
                  if (_So9NSDecimala__isNegative_getter(&v40))
                  {
                    type metadata accessor for NSComparisonResult(0);
                    if (v14 == -1)
                    {
                      v8 = v32;
                    }

                    else
                    {
                      v8 = v32;
                      if (v14)
                      {
                        if (v14 == 1)
                        {
                          goto LABEL_61;
                        }

                        *&v40 = v14;
                        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                        __break(1u);
LABEL_75:
                        swift_once();
                        goto LABEL_30;
                      }
                    }
                  }

                  else
                  {
                    v8 = v32;
                    if (v14 == -1)
                    {
                      goto LABEL_61;
                    }
                  }
                }
              }

              else
              {
                v44 = v48[0];
                v45 = v48[1];
                if (_So9NSDecimala__length_getter(&v44))
                {
                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            v5 = v30;
            v8 = v32;
          }
        }

        else
        {
          v44 = v48[0];
          v45 = v48[1];
          v5 = v30;
          v8 = v32;
          if (_So9NSDecimala__length_getter(&v44))
          {
            goto LABEL_61;
          }

          v44 = v48[0];
          v45 = v48[1];
          if (!_So9NSDecimala__isNegative_getter(&v44))
          {
            goto LABEL_61;
          }
        }

        if (v28 == v10)
        {
          v10 = rawValue[2];
LABEL_61:
          LOWORD(isCompact_getter) = v31;
          goto LABEL_62;
        }

        ++v10;
        v11 += 20;
        if (v10 >= rawValue[2])
        {
          __break(1u);
          goto LABEL_57;
        }
      }
    }

    v10 = 0;
LABEL_62:
    LODWORD(v48[0]) = v5;
    WORD2(v48[0]) = v7;
    WORD3(v48[0]) = v8;
    WORD4(v48[0]) = isCompact_getter;
    WORD5(v48[0]) = v37;
    WORD6(v48[0]) = v36;
    HIWORD(v48[0]) = v35;
    LOWORD(v48[1]) = v34;
    WORD1(v48[1]) = v33;
    v24 = _So9NSDecimala__exponent_getter(v48);
    if (v10 >> 31)
    {
      __break(1u);
    }

    if (v24 - v10 <= -128)
    {
      v25 = 4294967168;
    }

    else
    {
      v25 = (v24 - v10);
    }

    LOWORD(v11) = v36;
    LOWORD(v10) = v37;
    LOWORD(v12) = v35;
    LOWORD(v14) = v33;
    LOWORD(v13) = v34;
LABEL_67:
    WORD2(v48[0]) = 1;
    *(v48 + 6) = 0;
    *(v48 + 12) = 0;
    _So9NSDecimala__exponent_setter(v25, v48);
    _So9NSDecimala__length_setter(1, v48);
    _So9NSDecimala__isNegative_setter(0, v48);
    v23 = 1;
    goto LABEL_68;
  }

  *(v48 + 4) = 0uLL;
  _So9NSDecimala__exponent_setter(0, v48);
  _So9NSDecimala__length_setter(0, v48);
  _So9NSDecimala__isNegative_setter(1, v48);
  v23 = 0;
LABEL_68:
  _So9NSDecimala__isCompact_setter_0(v23, v48);
  _So9NSDecimala__reserved_setter(v48);
  *v39 = v5;
  *&v39[4] = v7;
  *&v39[6] = v8;
  *&v39[8] = isCompact_getter;
  *&v39[10] = v10;
  *&v39[12] = v11;
  *&v39[14] = v12;
  *&v39[16] = v13;
  *&v39[18] = v14;
  specialized static NSDecimal.+= infix(_:_:)(v39, LODWORD(v48[0]) | (WORD2(v48[0]) << 32) | (WORD3(v48[0]) << 48), WORD4(v48[0]) | (WORD5(v48[0]) << 16) | (WORD6(v48[0]) << 32) | (HIWORD(v48[0]) << 48), LOWORD(v48[1]) | (WORD1(v48[1]) << 16));
LABEL_69:
  v48[0] = *v39;
  LODWORD(v48[1]) = *&v39[16];
  if (_So9NSDecimala__length_getter(v48))
  {
    v48[0] = *v39;
    LODWORD(v48[1]) = *&v39[16];
    v26 = _So9NSDecimala__isNegative_getter(v48);
    _So9NSDecimala__isNegative_setter(v26 ^ 1u, v39);
  }

  return *v39;
}

Swift::Bool __swiftcall NSDecimal.isEqual(to:)(NSDecimal *to)
{
  v6 = v4;
  v7 = v2;
  v8 = v1;
  v9 = to;
  v10 = to >> 32;
  v64 = v1 >> 16;
  v65 = to >> 48;
  v70 = *MEMORY[0x1E69E9840];
  *&v68 = v3;
  v59 = HIDWORD(v3);
  v62 = HIWORD(v3);
  v63 = v3;
  v11 = HIDWORD(v1);
  v61 = v4 >> 16;
  *(&v68 + 1) = v4;
  v12 = HIWORD(v1);
  v13 = HIDWORD(v4);
  v14 = HIWORD(v4);
  v55 = v5;
  v15 = HIWORD(v5);
  v69 = v5;
  v60 = HIWORD(v2);
  v58 = _So9NSDecimala__exponent_getter(&v68);
  LODWORD(v68) = v9;
  WORD2(v68) = v10;
  WORD3(v68) = v65;
  WORD4(v68) = v8;
  WORD5(v68) = v64;
  v53 = v12;
  v54 = v11;
  WORD6(v68) = v11;
  HIWORD(v68) = v12;
  LOWORD(v69) = v7;
  HIWORD(v69) = v60;
  v16 = _So9NSDecimala__exponent_getter(&v68);
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v8;
  v21 = v61;
  v22 = v62;
  v23 = v9;
  v24 = v63;
  v57 = v14;
  v56 = v19;
  if (v58 == v16)
  {
    LODWORD(v68) = v63;
    WORD2(v68) = v59;
    WORD3(v68) = v62;
    WORD4(v68) = v6;
    WORD5(v68) = v61;
    WORD6(v68) = v19;
    HIWORD(v68) = v14;
    LOWORD(v69) = v55;
    HIWORD(v69) = v15;
    v25 = _So9NSDecimala__length_getter(&v68);
    LODWORD(v68) = v23;
    WORD2(v68) = v10;
    WORD3(v68) = v65;
    WORD4(v68) = v20;
    WORD5(v68) = v64;
    WORD6(v68) = v54;
    HIWORD(v68) = v12;
    LOWORD(v69) = v7;
    HIWORD(v69) = v60;
    v26 = _So9NSDecimala__length_getter(&v68);
    v17 = v15;
    v18 = v14;
    v19 = v56;
    v27 = v25 == v26;
    v21 = v61;
    v22 = v62;
    v24 = v63;
    if (v27)
    {
      LODWORD(v68) = v63;
      WORD2(v68) = v59;
      WORD3(v68) = v62;
      WORD4(v68) = v6;
      WORD5(v68) = v61;
      WORD6(v68) = v56;
      HIWORD(v68) = v14;
      LOWORD(v69) = v55;
      HIWORD(v69) = v15;
      isNegative_getter = _So9NSDecimala__isNegative_getter(&v68);
      LODWORD(v68) = v23;
      WORD2(v68) = v10;
      WORD3(v68) = v65;
      WORD4(v68) = v20;
      WORD5(v68) = v64;
      WORD6(v68) = v54;
      HIWORD(v68) = v12;
      LOWORD(v69) = v7;
      HIWORD(v69) = v60;
      v29 = _So9NSDecimala__isNegative_getter(&v68);
      v17 = v15;
      v18 = v14;
      v19 = v56;
      v27 = isNegative_getter == v29;
      v21 = v61;
      v22 = v62;
      v24 = v63;
      if (v27)
      {
        LODWORD(v68) = v63;
        WORD2(v68) = v59;
        WORD3(v68) = v62;
        WORD4(v68) = v6;
        WORD5(v68) = v61;
        WORD6(v68) = v56;
        HIWORD(v68) = v14;
        LOWORD(v69) = v55;
        HIWORD(v69) = v15;
        isCompact_getter = _So9NSDecimala__isCompact_getter(&v68);
        LODWORD(v68) = v23;
        WORD2(v68) = v10;
        WORD3(v68) = v65;
        WORD4(v68) = v20;
        WORD5(v68) = v64;
        WORD6(v68) = v54;
        HIWORD(v68) = v12;
        LOWORD(v69) = v7;
        HIWORD(v69) = v60;
        v31 = _So9NSDecimala__isCompact_getter(&v68);
        v17 = v15;
        v18 = v14;
        v19 = v56;
        v27 = isCompact_getter == v31;
        v21 = v61;
        v22 = v62;
        v24 = v63;
        if (v27)
        {
          LODWORD(v68) = v63;
          WORD2(v68) = v59;
          WORD3(v68) = v62;
          WORD4(v68) = v6;
          WORD5(v68) = v61;
          WORD6(v68) = v56;
          HIWORD(v68) = v14;
          LOWORD(v69) = v55;
          HIWORD(v69) = v15;
          v32 = _So9NSDecimala__reserved_getter(&v68);
          LODWORD(v68) = v23;
          WORD2(v68) = v10;
          WORD3(v68) = v65;
          WORD4(v68) = v20;
          WORD5(v68) = v64;
          WORD6(v68) = v54;
          HIWORD(v68) = v12;
          LOWORD(v69) = v7;
          HIWORD(v69) = v60;
          v33 = _So9NSDecimala__reserved_getter(&v68);
          v17 = v15;
          v18 = v14;
          v19 = v56;
          v27 = v32 == v33;
          v21 = v61;
          v22 = v62;
          v24 = v63;
          if (v27 && WORD2(v63) == v10 && v62 == v65 && v6 == v20 && v61 == v64 && v56 == v54 && v14 == v12 && v55 == v7 && v15 == v60)
          {
            return 1;
          }
        }
      }
    }
  }

  v51 = v10;
  v52 = v20;
  LODWORD(v68) = v24;
  WORD2(v68) = v59;
  WORD3(v68) = v22;
  WORD4(v68) = v6;
  WORD5(v68) = v21;
  WORD6(v68) = v19;
  HIWORD(v68) = v18;
  LOWORD(v69) = v55;
  HIWORD(v69) = v17;
  v35 = v19;
  v36 = v18;
  v37 = v17;
  v38 = v21;
  if (_So9NSDecimala__length_getter(&v68) || (LODWORD(v68) = v24, WORD2(v68) = v59, WORD3(v68) = v22, WORD4(v68) = v6, WORD5(v68) = v38, WORD6(v68) = v35, HIWORD(v68) = v36, LOWORD(v69) = v55, HIWORD(v69) = v37, !_So9NSDecimala__isNegative_getter(&v68)))
  {
    LODWORD(v68) = v23;
    WORD2(v68) = v51;
    WORD3(v68) = v65;
    WORD4(v68) = v52;
    WORD5(v68) = v64;
    WORD6(v68) = v54;
    HIWORD(v68) = v53;
    LOWORD(v69) = v7;
    HIWORD(v69) = v60;
    if (_So9NSDecimala__length_getter(&v68) || (LODWORD(v68) = v23, WORD2(v68) = v51, WORD3(v68) = v65, WORD4(v68) = v52, WORD5(v68) = v64, WORD6(v68) = v54, HIWORD(v68) = v53, LOWORD(v69) = v7, HIWORD(v69) = v60, !_So9NSDecimala__isNegative_getter(&v68)))
    {
      LODWORD(v68) = v63;
      WORD2(v68) = v59;
      WORD3(v68) = v62;
      WORD4(v68) = v6;
      WORD5(v68) = v61;
      WORD6(v68) = v56;
      HIWORD(v68) = v57;
      LOWORD(v69) = v55;
      HIWORD(v69) = v15;
      v39 = _So9NSDecimala__isNegative_getter(&v68);
      LODWORD(v68) = v23;
      WORD2(v68) = v51;
      WORD3(v68) = v65;
      WORD4(v68) = v52;
      WORD5(v68) = v64;
      WORD6(v68) = v54;
      HIWORD(v68) = v53;
      LOWORD(v69) = v7;
      HIWORD(v69) = v60;
      if (_So9NSDecimala__isNegative_getter(&v68) >= v39)
      {
        LODWORD(v68) = v63;
        WORD2(v68) = v59;
        WORD3(v68) = v62;
        WORD4(v68) = v6;
        WORD5(v68) = v61;
        WORD6(v68) = v56;
        HIWORD(v68) = v57;
        LOWORD(v69) = v55;
        HIWORD(v69) = v15;
        v40 = _So9NSDecimala__isNegative_getter(&v68);
        LODWORD(v68) = v23;
        WORD2(v68) = v51;
        WORD3(v68) = v65;
        WORD4(v68) = v52;
        WORD5(v68) = v64;
        WORD6(v68) = v54;
        HIWORD(v68) = v53;
        LOWORD(v69) = v7;
        HIWORD(v69) = v60;
        if (v40 >= _So9NSDecimala__isNegative_getter(&v68))
        {
          LODWORD(v68) = v63;
          WORD2(v68) = v59;
          WORD3(v68) = v62;
          WORD4(v68) = v6;
          WORD5(v68) = v61;
          WORD6(v68) = v56;
          HIWORD(v68) = v57;
          LOWORD(v69) = v55;
          HIWORD(v69) = v15;
          if (_So9NSDecimala__length_getter(&v68))
          {
            LODWORD(v68) = v23;
            WORD2(v68) = v51;
            WORD3(v68) = v65;
            WORD4(v68) = v52;
            WORD5(v68) = v64;
            WORD6(v68) = v54;
            HIWORD(v68) = v53;
            LOWORD(v69) = v7;
            HIWORD(v69) = v60;
            if (_So9NSDecimala__length_getter(&v68))
            {
              LODWORD(v66) = v63;
              WORD2(v66) = v59;
              WORD3(v66) = v62;
              WORD4(v66) = v6;
              WORD5(v66) = v61;
              WORD6(v66) = v56;
              HIWORD(v66) = v57;
              LOWORD(v67) = v55;
              HIWORD(v67) = v15;
              LODWORD(v68) = v23;
              WORD2(v68) = v51;
              WORD3(v68) = v65;
              WORD4(v68) = v52;
              WORD5(v68) = v64;
              WORD6(v68) = v54;
              HIWORD(v68) = v53;
              LOWORD(v69) = v7;
              HIWORD(v69) = v60;
              specialized static NSDecimal._normalize(a:b:roundingMode:)(&v66, &v68);
              NSDecimal.asVariableLengthInteger()(v66, *(&v66 + 1), v67);
              v42 = v41;
              NSDecimal.asVariableLengthInteger()(v68, *(&v68 + 1), v69);
              v44 = v43;
              v45 = v42;
              v46 = *(v42 + 16);
              v47 = *(v44 + 16);
              if (v47 >= v46)
              {
                if (v46 < v47)
                {
LABEL_43:
                  v48 = -1;
                }

                else
                {
                  v48 = 1;
                  while (v46)
                  {
                    v49 = *(v45 + 30 + 2 * v46);
                    v50 = *(v44 + 30 + 2 * v46);
                    if (v50 < v49)
                    {
                      goto LABEL_44;
                    }

                    --v46;
                    if (v49 < v50)
                    {
                      goto LABEL_43;
                    }
                  }

                  v48 = 0;
                }
              }

              else
              {
                v48 = 1;
              }

LABEL_44:

              if (_So9NSDecimala__isNegative_getter(&v66))
              {
                v48 = qword_1812354A0[v48 + 1];
              }
            }

            else
            {
              LODWORD(v68) = v63;
              WORD2(v68) = v59;
              WORD3(v68) = v62;
              WORD4(v68) = v6;
              WORD5(v68) = v61;
              WORD6(v68) = v56;
              HIWORD(v68) = v57;
              LOWORD(v69) = v55;
              HIWORD(v69) = v15;
              v48 = _So9NSDecimala__length_getter(&v68) != 0;
            }
          }

          else
          {
            LODWORD(v68) = v23;
            WORD2(v68) = v51;
            WORD3(v68) = v65;
            WORD4(v68) = v52;
            WORD5(v68) = v64;
            WORD6(v68) = v54;
            HIWORD(v68) = v53;
            LOWORD(v69) = v7;
            HIWORD(v69) = v60;
            if (_So9NSDecimala__length_getter(&v68))
            {
              v48 = -1;
            }

            else
            {
              v48 = 0;
            }
          }

          return v48 == 0;
        }
      }
    }

    goto LABEL_32;
  }

  LODWORD(v68) = v23;
  WORD2(v68) = v51;
  WORD3(v68) = v65;
  WORD4(v68) = v52;
  WORD5(v68) = v64;
  WORD6(v68) = v54;
  HIWORD(v68) = v53;
  LOWORD(v69) = v7;
  HIWORD(v69) = v60;
  if (_So9NSDecimala__length_getter(&v68) || (LODWORD(v68) = v23, WORD2(v68) = v51, WORD3(v68) = v65, WORD4(v68) = v52, WORD5(v68) = v64, WORD6(v68) = v54, HIWORD(v68) = v53, LOWORD(v69) = v7, HIWORD(v69) = v60, !_So9NSDecimala__isNegative_getter(&v68)))
  {
LABEL_32:
    v48 = -1;
    return v48 == 0;
  }

  v48 = 0;
  return v48 == 0;
}

Swift::Bool __swiftcall NSDecimal.isLess(than:)(NSDecimal *than)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  LODWORD(v9) = v2;
  v10 = v1;
  v22 = *MEMORY[0x1E69E9840];
  *&v20 = v3;
  *(&v20 + 1) = v4;
  v21 = v5;
  if (!_So9NSDecimala__length_getter(&v20))
  {
    goto LABEL_12;
  }

  while (1)
  {
    *&v20 = than;
    *(&v20 + 1) = v10;
    v21 = v9;
    if (!_So9NSDecimala__length_getter(&v20))
    {
      *&v20 = than;
      *(&v20 + 1) = v10;
      v21 = v9;
      if (_So9NSDecimala__isNegative_getter(&v20))
      {
        goto LABEL_18;
      }
    }

    *&v20 = v8;
    *(&v20 + 1) = v7;
    v21 = v6;
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v20);
    *&v20 = than;
    *(&v20 + 1) = v10;
    v21 = v9;
    if (_So9NSDecimala__isNegative_getter(&v20) < isNegative_getter)
    {
      goto LABEL_14;
    }

    *&v20 = v8;
    *(&v20 + 1) = v7;
    v21 = v6;
    v13 = _So9NSDecimala__isNegative_getter(&v20);
    *&v20 = than;
    *(&v20 + 1) = v10;
    v21 = v9;
    if (v13 < _So9NSDecimala__isNegative_getter(&v20))
    {
      goto LABEL_18;
    }

    *&v20 = v8;
    *(&v20 + 1) = v7;
    v21 = v6;
    if (!_So9NSDecimala__length_getter(&v20))
    {
      *&v20 = than;
      *(&v20 + 1) = v10;
      v21 = v9;
      LOBYTE(v14) = _So9NSDecimala__length_getter(&v20) != 0;
      return v14;
    }

    *&v20 = than;
    *(&v20 + 1) = v10;
    v21 = v9;
    v14 = _So9NSDecimala__length_getter(&v20);
    if (!v14)
    {
      return v14;
    }

    *&v18 = v8;
    *(&v18 + 1) = v7;
    v19 = v6;
    *&v20 = than;
    *(&v20 + 1) = v10;
    v21 = v9;
    specialized static NSDecimal._normalize(a:b:roundingMode:)(&v18, &v20);
    NSDecimal.asVariableLengthInteger()(v18, *(&v18 + 1), v19);
    v10 = v15;
    NSDecimal.asVariableLengthInteger()(v20, *(&v20 + 1), v21);
    than = v16;
    v9 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v10, v16);

    if (!_So9NSDecimala__isNegative_getter(&v18))
    {
      break;
    }

    switch(v9)
    {
      case -1:
        goto LABEL_18;
      case 1:
        goto LABEL_14;
      case 0:
        goto LABEL_18;
    }

    type metadata accessor for NSComparisonResult(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
LABEL_12:
    *&v20 = v8;
    *(&v20 + 1) = v7;
    v21 = v6;
    if (_So9NSDecimala__isNegative_getter(&v20))
    {
      *&v20 = than;
      *(&v20 + 1) = v10;
      v21 = v9;
      if (_So9NSDecimala__length_getter(&v20) || (*&v20 = than, *(&v20 + 1) = v10, v21 = v9, !_So9NSDecimala__isNegative_getter(&v20)))
      {
LABEL_14:
        LOBYTE(v14) = 1;
        return v14;
      }

LABEL_18:
      LOBYTE(v14) = 0;
      return v14;
    }
  }

  LOBYTE(v14) = v9 == -1;
  return v14;
}

Swift::Bool __swiftcall NSDecimal.isLessThanOrEqualTo(_:)(NSDecimal *a1)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  LODWORD(v9) = v2;
  v10 = v1;
  v21 = *MEMORY[0x1E69E9840];
  *&v19 = v3;
  *(&v19 + 1) = v4;
  v20 = v5;
  if (!_So9NSDecimala__length_getter(&v19))
  {
    goto LABEL_12;
  }

  do
  {
    *&v19 = a1;
    *(&v19 + 1) = v10;
    v20 = v9;
    if (!_So9NSDecimala__length_getter(&v19))
    {
      *&v19 = a1;
      *(&v19 + 1) = v10;
      v20 = v9;
      if (_So9NSDecimala__isNegative_getter(&v19))
      {
        goto LABEL_16;
      }
    }

    *&v19 = v8;
    *(&v19 + 1) = v7;
    v20 = v6;
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v19);
    *&v19 = a1;
    *(&v19 + 1) = v10;
    v20 = v9;
    if (_So9NSDecimala__isNegative_getter(&v19) < isNegative_getter)
    {
      goto LABEL_14;
    }

    *&v19 = v8;
    *(&v19 + 1) = v7;
    v20 = v6;
    v13 = _So9NSDecimala__isNegative_getter(&v19);
    *&v19 = a1;
    *(&v19 + 1) = v10;
    v20 = v9;
    if (v13 < _So9NSDecimala__isNegative_getter(&v19))
    {
LABEL_16:
      v9 = 1;
      return (v9 + 1) < 2;
    }

    *&v19 = v8;
    *(&v19 + 1) = v7;
    v20 = v6;
    if (!_So9NSDecimala__length_getter(&v19))
    {
      *&v19 = a1;
      *(&v19 + 1) = v10;
      v20 = v9;
      if (_So9NSDecimala__length_getter(&v19))
      {
        v9 = -1;
      }

      else
      {
        v9 = 0;
      }

      return (v9 + 1) < 2;
    }

    *&v19 = a1;
    *(&v19 + 1) = v10;
    v20 = v9;
    if (!_So9NSDecimala__length_getter(&v19))
    {
      *&v19 = v8;
      *(&v19 + 1) = v7;
      v20 = v6;
      v9 = _So9NSDecimala__length_getter(&v19) != 0;
      return (v9 + 1) < 2;
    }

    *&v17 = v8;
    *(&v17 + 1) = v7;
    v18 = v6;
    *&v19 = a1;
    *(&v19 + 1) = v10;
    v20 = v9;
    specialized static NSDecimal._normalize(a:b:roundingMode:)(&v17, &v19);
    NSDecimal.asVariableLengthInteger()(v17, *(&v17 + 1), v18);
    v10 = v14;
    NSDecimal.asVariableLengthInteger()(v19, *(&v19 + 1), v20);
    a1 = v15;
    v9 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v10, v15);

    if (!_So9NSDecimala__isNegative_getter(&v17))
    {
      return (v9 + 1) < 2;
    }

    switch(v9)
    {
      case -1:
        goto LABEL_16;
      case 1:
        goto LABEL_14;
      case 0:
        return (v9 + 1) < 2;
    }

    type metadata accessor for NSComparisonResult(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
LABEL_12:
    *&v19 = v8;
    *(&v19 + 1) = v7;
    v20 = v6;
  }

  while (!_So9NSDecimala__isNegative_getter(&v19));
  *&v19 = a1;
  *(&v19 + 1) = v10;
  v20 = v9;
  if (_So9NSDecimala__length_getter(&v19) || (*&v19 = a1, *(&v19 + 1) = v10, v20 = v9, !_So9NSDecimala__isNegative_getter(&v19)))
  {
LABEL_14:
    v9 = -1;
    return (v9 + 1) < 2;
  }

  v9 = 0;
  return (v9 + 1) < 2;
}

Swift::Bool __swiftcall NSDecimal.isTotallyOrdered(belowOrEqualTo:)(NSDecimal *belowOrEqualTo)
{
  LODWORD(v6) = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  v10 = v1;
  v30 = *MEMORY[0x1E69E9840];
  *&v28 = v3;
  *(&v28 + 1) = v4;
  v29 = v5;
  if (!_So9NSDecimala__length_getter(&v28))
  {
    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    if (_So9NSDecimala__isNegative_getter(&v28))
    {
      return 0;
    }
  }

  v12 = 0;
  *&v28 = v8;
  *(&v28 + 1) = v7;
  v29 = v6;
  if (_So9NSDecimala__length_getter(&v28) || (*&v28 = v8, *(&v28 + 1) = v7, v29 = v6, !_So9NSDecimala__isNegative_getter(&v28)))
  {
    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
    if (!_So9NSDecimala__length_getter(&v28))
    {
      *&v28 = belowOrEqualTo;
      *(&v28 + 1) = v10;
      v29 = v9;
      if (_So9NSDecimala__isNegative_getter(&v28))
      {
        goto LABEL_25;
      }
    }

    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v28);
    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
    if (_So9NSDecimala__isNegative_getter(&v28) >= isNegative_getter)
    {
      *&v28 = v8;
      *(&v28 + 1) = v7;
      v29 = v6;
      v14 = _So9NSDecimala__isNegative_getter(&v28);
      *&v28 = belowOrEqualTo;
      *(&v28 + 1) = v10;
      v29 = v9;
      if (v14 < _So9NSDecimala__isNegative_getter(&v28))
      {
        goto LABEL_25;
      }

      *&v28 = v8;
      *(&v28 + 1) = v7;
      v29 = v6;
      if (_So9NSDecimala__length_getter(&v28))
      {
        *&v28 = belowOrEqualTo;
        *(&v28 + 1) = v10;
        v29 = v9;
        if (!_So9NSDecimala__length_getter(&v28))
        {
          goto LABEL_25;
        }

        *&v26 = v8;
        *(&v26 + 1) = v7;
        v27 = v6;
        *&v28 = belowOrEqualTo;
        *(&v28 + 1) = v10;
        v29 = v9;
        specialized static NSDecimal._normalize(a:b:roundingMode:)(&v26, &v28);
        NSDecimal.asVariableLengthInteger()(v26, *(&v26 + 1), v27);
        v16 = v15;
        NSDecimal.asVariableLengthInteger()(v28, *(&v28 + 1), v29);
        v18 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v16, v17);

        if (_So9NSDecimala__isNegative_getter(&v26))
        {
          if (v18 == -1)
          {
            goto LABEL_25;
          }

          if (v18 != 1)
          {
            if (v18)
            {
              type metadata accessor for NSComparisonResult(0);
              goto LABEL_38;
            }

            goto LABEL_25;
          }
        }

        else if (v18 != -1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *&v28 = belowOrEqualTo;
        *(&v28 + 1) = v10;
        v29 = v9;
        if (!_So9NSDecimala__length_getter(&v28))
        {
          goto LABEL_25;
        }
      }
    }

    return 1;
  }

  *&v28 = belowOrEqualTo;
  *(&v28 + 1) = v10;
  v29 = v9;
  if (_So9NSDecimala__length_getter(&v28))
  {
    return 1;
  }

  *&v28 = belowOrEqualTo;
  *(&v28 + 1) = v10;
  v29 = v9;
  if (!_So9NSDecimala__isNegative_getter(&v28))
  {
    return 1;
  }

LABEL_25:
  *&v28 = belowOrEqualTo;
  *(&v28 + 1) = v10;
  v29 = v9;
  if (!_So9NSDecimala__length_getter(&v28))
  {
    goto LABEL_39;
  }

  do
  {
    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    if (!_So9NSDecimala__length_getter(&v28))
    {
      *&v28 = v8;
      *(&v28 + 1) = v7;
      v29 = v6;
      if (_So9NSDecimala__isNegative_getter(&v28))
      {
        goto LABEL_43;
      }
    }

    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
    v20 = _So9NSDecimala__isNegative_getter(&v28);
    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    if (_So9NSDecimala__isNegative_getter(&v28) < v20)
    {
      goto LABEL_41;
    }

    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
    v21 = _So9NSDecimala__isNegative_getter(&v28);
    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    if (v21 < _So9NSDecimala__isNegative_getter(&v28))
    {
LABEL_43:
      v6 = 1;
      return v6 != -1;
    }

    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
    if (!_So9NSDecimala__length_getter(&v28))
    {
      *&v28 = v8;
      *(&v28 + 1) = v7;
      v29 = v6;
      if (_So9NSDecimala__length_getter(&v28))
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }

      return v6 != -1;
    }

    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    if (!_So9NSDecimala__length_getter(&v28))
    {
      *&v28 = belowOrEqualTo;
      *(&v28 + 1) = v10;
      v29 = v9;
      v6 = _So9NSDecimala__length_getter(&v28) != 0;
      return v6 != -1;
    }

    *&v24 = belowOrEqualTo;
    *(&v24 + 1) = v10;
    v25 = v9;
    *&v28 = v8;
    *(&v28 + 1) = v7;
    v29 = v6;
    specialized static NSDecimal._normalize(a:b:roundingMode:)(&v24, &v28);
    if (v12)
    {
    }

    NSDecimal.asVariableLengthInteger()(v24, *(&v24 + 1), v25);
    v7 = v22;
    NSDecimal.asVariableLengthInteger()(v28, *(&v28 + 1), v29);
    v12 = v23;
    v6 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v7, v23);

    if (!_So9NSDecimala__isNegative_getter(&v24))
    {
      return v6 != -1;
    }

    switch(v6)
    {
      case -1:
        goto LABEL_43;
      case 1:
        goto LABEL_41;
      case 0:
        return v6 != -1;
    }

    type metadata accessor for NSComparisonResult(0);
LABEL_38:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
LABEL_39:
    *&v28 = belowOrEqualTo;
    *(&v28 + 1) = v10;
    v29 = v9;
  }

  while (!_So9NSDecimala__isNegative_getter(&v28));
  *&v28 = v8;
  *(&v28 + 1) = v7;
  v29 = v6;
  if (_So9NSDecimala__length_getter(&v28))
  {
LABEL_41:
    v6 = -1;
    return v6 != -1;
  }

  *&v28 = v8;
  *(&v28 + 1) = v7;
  v29 = v6;
  v6 = (_So9NSDecimala__isNegative_getter(&v28) - 1);
  return v6 != -1;
}

void protocol witness for ExpressibleByFloatLiteral.init(floatLiteral:) in conformance NSDecimal(double *a1@<X0>, uint64_t a2@<X8>)
{
  specialized NSDecimal.init(_:)(*a1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

double protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance NSDecimal@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  *&v8 = specialized NSDecimal.init(_:)(v4);
  *(&v8 + 1) = v5;
  v9 = v6;
  if (v3 < 0)
  {
    _So9NSDecimala__isNegative_setter(1, &v8);
  }

  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t NSDecimal.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  NSDecimal.doubleValue.getter(a2, a3, a4);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1865CD090](*&v4);
}

Swift::Int NSDecimal.hashValue.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  Hasher.init(_seed:)();
  NSDecimal.doubleValue.getter(a1, a2, a3);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x1865CD090](*&v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSDecimal()
{
  v1 = *(v0 + 16);
  v4 = v0;
  v2 = *v0;
  v3 = *(v4 + 8);
  Hasher.init(_seed:)();
  NSDecimal.doubleValue.getter(v2, v3, v1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1865CD090](*&v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSDecimal()
{
  NSDecimal.doubleValue.getter(*v0, *(v0 + 8), *(v0 + 16));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1865CD090](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal()
{
  v1 = *(v0 + 16);
  v4 = v0;
  v2 = *v0;
  v3 = *(v4 + 8);
  Hasher.init(_seed:)();
  NSDecimal.doubleValue.getter(v2, v3, v1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1865CD090](*&v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NSDecimal.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746E656E6F707865;
  v3 = 0x69746167654E7369;
  v4 = 0x6361706D6F437369;
  if (v1 != 3)
  {
    v4 = 0x61737369746E616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874676E656CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NSDecimal.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance NSDecimal.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FormatStyleCapitalizationContext.Option.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *NSDecimal.init(from:)(void *a1)
{
  result = specialized NSDecimal.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t NSDecimal.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v6 = a2;
  v24 = a3 >> 16;
  v25 = HIDWORD(a2);
  v22 = HIWORD(a2);
  v23 = HIDWORD(a3);
  v21 = HIWORD(a3);
  v8 = HIWORD(a4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE10CodingKeys33_8BAFFE19353E871E4B5E8D714CF82099LLOGMd);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys();
  v12 = v9;
  v13 = v8;
  v14 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v6;
  v26 = v6;
  v27 = v25;
  v28 = v14;
  v29 = a3;
  v30 = v24;
  v31 = v23;
  v16 = v21;
  v32 = v21;
  v33 = a4;
  v34 = v13;
  _So9NSDecimala__exponent_getter(&v26);
  LOBYTE(v26) = 0;
  v17 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v17)
  {
    return (*(v20 + 8))(v11, v12);
  }

  v26 = v15;
  v27 = v25;
  v28 = v14;
  v29 = a3;
  v30 = v24;
  v31 = v23;
  v32 = v16;
  v33 = a4;
  v34 = v13;
  _So9NSDecimala__length_getter(&v26);
  LOBYTE(v26) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = v15;
  v27 = v25;
  v28 = v14;
  v29 = a3;
  v30 = v24;
  v31 = v23;
  v32 = v16;
  v33 = a4;
  v34 = v13;
  _So9NSDecimala__isNegative_getter(&v26);
  LOBYTE(v26) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = v15;
  v27 = v25;
  v28 = v14;
  v29 = a3;
  v30 = v24;
  v31 = v23;
  v32 = v16;
  v33 = a4;
  v34 = v13;
  _So9NSDecimala__isCompact_getter(&v26);
  LOBYTE(v26) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = a3;
  v36 = a4;
  v37 = 4;
  KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  LODWORD(v25) = v13;
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  __swift_mutable_project_boxed_opaque_existential_1(&v26, v35);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  (*(v20 + 8))(v11, v12);
  return __swift_destroy_boxed_opaque_existential_1(&v26);
}

char *protocol witness for Decodable.init(from:) in conformance NSDecimal@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized NSDecimal.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t NSDecimal.magnitude.getter(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a1;
  v10 = a1;
  v11 = a2;
  v12 = a3;
  if (_So9NSDecimala__length_getter(&v10))
  {
    v10 = v5;
    v11 = a2;
    v12 = a3;
    v6 = _So9NSDecimala__exponent_getter(&v10);
    v10 = v5;
    v11 = a2;
    v12 = a3;
    v7 = _So9NSDecimala__length_getter(&v10);
    v10 = v5;
    v11 = a2;
    v12 = a3;
    isCompact_getter = _So9NSDecimala__isCompact_getter(&v10);
    HIDWORD(v10) = HIDWORD(v5);
    v11 = a2;
    v12 = a3;
    _So9NSDecimala__exponent_setter(v6, &v10);
    _So9NSDecimala__length_setter(v7, &v10);
    _So9NSDecimala__isNegative_setter(0, &v10);
    _So9NSDecimala__isCompact_setter_0(isCompact_getter, &v10);
    _So9NSDecimala__reserved_setter(&v10);
    return v10;
  }

  return v5;
}

uint64_t NSDecimal.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v105 = a1;
  v5 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  v107 = *(swift_getAssociatedConformanceWitness() + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v110 = swift_checkMetadataState();
  v102 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v103 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v90[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v113 = &v90[-v11];
  v104 = v5;
  v12 = *(v5 + 16);
  v13 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v90[-v14];
  v16 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v90[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90[-v20];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v96 = v13;
  v94 = AssociatedConformanceWitness;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v95 = v15;
  v23 = v105;
  v97 = v12;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v98 = *(*(a3 + 16) + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v24 = *(v16 + 8);
    v24(v23, a2);
    v24(v21, a2);
    result = 0;
    v26 = 0;
    goto LABEL_41;
  }

  v108 = a3;
  v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v101 = v21;
  v106 = v9;
  v99 = v16;
  v93 = (v27 & 1) != 0 && (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0;
  dispatch thunk of Numeric.magnitude.getter();
  v28 = v110;
  v29 = AssociatedTypeWitness;
  v30 = swift_getAssociatedConformanceWitness();
  v111 = 0;
  v31 = (v102 + 8);
  v32 = &unk_181235048;
  v33 = v106;
  v109 = a2;
  while (1)
  {
    v34 = v32;
    v35 = v29;
    v36 = v30;
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    AssociatedTypeWitness = swift_getAssociatedConformanceWitness();
    v37 = dispatch thunk of BinaryInteger.isMultiple(of:)();
    v38 = *v31;
    (*v31)(v33, v28);
    v39 = v111;
    if ((v37 & 1) == 0 || v111 > 0x7E)
    {
      break;
    }

    ++v111;
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v33 = v106;
    v28 = v110;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger./= infix(_:_:)();
    v38(v33, v28);
    v32 = v34;
    v30 = v36;
    v29 = v35;
  }

  v40 = v113;
  v41 = v110;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 129)
  {
    v92 = v38;
    *v114 = 128;
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    if ((v42 ^ dispatch thunk of static BinaryInteger.isSigned.getter()))
    {
      v91 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v91)
      {
        v45 = v100;
        if (v44 < v43)
        {
          (*(v99 + 16))(v100, v101, v109);
          v46 = v106;
          v41 = v110;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          swift_getAssociatedConformanceWitness();
          v47 = v103;
          v48 = dispatch thunk of static Equatable.== infix(_:_:)();
          v38 = v92;
          v92(v46, v41);
          v38(v47, v41);
          goto LABEL_22;
        }

        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v72 = v106;
        v41 = v110;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v73 = v109;
        swift_getAssociatedConformanceWitness();
        v74 = v103;
        v75 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v38 = v92;
        v92(v72, v41);
        if ((v75 & 1) == 0)
        {
          v38(v74, v41);
          v40 = v113;
LABEL_39:
          v86 = *(v99 + 8);
          v87 = v109;
          v86(v105, v109);
          v38(v40, v41);
          v86(v101, v87);
LABEL_40:
          result = 0;
          v26 = 1;
          goto LABEL_41;
        }

        (*(v102 + 16))(v72, v74, v41);
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v76 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v99 + 8))(v45, v73);
        v77 = v74;
LABEL_36:
        v38(v77, v41);
        v40 = v113;
        v39 = v111;
        if (v76)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

      v55 = v100;
      v56 = (v99 + 8);
      if (v43 >= v44)
      {
        v107 = v31;
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v78 = v109;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v79 = v55;
        v80 = v101;
        v81 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v82 = *v56;
        (*v56)(v55, v78);
        v83 = v106;
        if ((v81 & 1) == 0)
        {
          v82(v105, v78);
          v88 = v110;
          v89 = v92;
          v92(v103, v110);
          v89(v113, v88);
          v82(v80, v78);
          goto LABEL_40;
        }

        (*(v99 + 16))(v79, v80, v78);
        v41 = v110;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        swift_getAssociatedConformanceWitness();
        v84 = v103;
        v76 = dispatch thunk of static Equatable.== infix(_:_:)();
        v85 = v83;
        v38 = v92;
        v92(v85, v41);
        v77 = v84;
        goto LABEL_36;
      }

      v57 = v103;
      v41 = v110;
      (*(v102 + 16))(v106, v103, v110);
      v58 = v109;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v56)(v55, v58);
      v54 = v57;
    }

    else
    {
      v49 = v103;
      v50 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v51 = v101;
      if (v50 >= dispatch thunk of BinaryInteger.bitWidth.getter())
      {
        (*(v99 + 16))(v100, v51, v109);
        v59 = v106;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        swift_getAssociatedConformanceWitness();
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38 = v92;
        v92(v59, v41);
        v38(v49, v41);
LABEL_22:
        v40 = v113;
        if (v48)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

      (*(v102 + 16))(v106, v49, v41);
      v52 = v100;
      v53 = v109;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v99 + 8))(v52, v53);
      v54 = v49;
    }

    v38 = v92;
    v92(v54, v41);
    goto LABEL_22;
  }

LABEL_23:
  v60 = dispatch thunk of BinaryInteger._lowWord.getter();
  v61 = (79 - __clz(v60)) >> 4;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v67 = 0;
    LOWORD(v66) = 0;
    LOWORD(v65) = 0;
    v68 = 0;
  }

  else
  {
    *v114 = 64;
    lazy protocol witness table accessor for type Int and conformance Int();
    v62 = v106;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v63 = dispatch thunk of BinaryInteger._lowWord.getter();
    v38(v62, v41);
    v64 = ((79 - __clz(v63)) >> 4) + 4;
    v65 = v63 >> 16;
    v66 = HIDWORD(v63);
    if (v63)
    {
      v61 = v64;
      v67 = HIWORD(v63);
    }

    else
    {
      v67 = 0;
    }

    if (v63)
    {
      v68 = v63;
    }

    else
    {
      LOWORD(v66) = 0;
      LOWORD(v65) = 0;
      v68 = 0;
    }
  }

  v69 = v101;
  *&v114[4] = v60;
  v115 = v68;
  v116 = v65;
  v117 = v66;
  v118 = v67;
  _So9NSDecimala__exponent_setter(v39, v114);
  _So9NSDecimala__length_setter(v61, v114);
  _So9NSDecimala__isNegative_setter(v93, v114);
  _So9NSDecimala__isCompact_setter_0(1, v114);
  _So9NSDecimala__reserved_setter(v114);
  v70 = *(v99 + 8);
  v71 = v109;
  v70(v105, v109);
  v38(v40, v41);
  v70(v69, v71);
  v26 = 0;
  result = *v114;
LABEL_41:
  v114[0] = v26;
  return result;
}

void static NSDecimal.* infix(_:_:)(int a1, NSDecimal *retstr, int a3, NSDecimal *by, NSRoundingMode roundingMode)
{
  NSDecimal._multiply(by:roundingMode:)(retstr, by, roundingMode);
  if (v5)
  {
    v8 = 0;
    v7 = 0;
    _So9NSDecimala__exponent_setter(0, &v6);
    _So9NSDecimala__length_setter(0, &v6);
    _So9NSDecimala__isNegative_setter(1, &v6);
    _So9NSDecimala__isCompact_setter_0(0, &v6);
    _So9NSDecimala__reserved_setter(&v6);
  }
}

uint64_t protocol witness for static SignedNumeric.- prefix(_:) in conformance NSDecimal@<X0>(__int128 *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  a2[4] = *(a1 + 4);
  v6 = *a1;
  v7 = *(a1 + 4);
  result = _So9NSDecimala__length_getter(&v6);
  if (result)
  {
    v6 = *a1;
    v7 = *(a1 + 4);
    v5 = _So9NSDecimala__isNegative_getter(&v6) ^ 1;

    return _So9NSDecimala__isNegative_setter(v5, a2);
  }

  return result;
}

uint64_t protocol witness for SignedNumeric.negate() in conformance NSDecimal()
{
  v3 = *v0;
  v4 = v0[4];
  result = _So9NSDecimala__length_getter(&v3);
  if (result)
  {
    v3 = *v0;
    v4 = v0[4];
    v2 = _So9NSDecimala__isNegative_getter(&v3) ^ 1;

    return _So9NSDecimala__isNegative_setter(v2, v0);
  }

  return result;
}

uint64_t protocol witness for Numeric.init<A>(exactly:) in conformance NSDecimal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = NSDecimal.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 20) = v8 & 1;
  return result;
}

double protocol witness for Numeric.magnitude.getter in conformance NSDecimal@<D0>(uint64_t a1@<X8>)
{
  v8 = *v1;
  v9 = *(v1 + 4);
  if (_So9NSDecimala__length_getter(&v8))
  {
    v8 = *v1;
    v9 = *(v1 + 4);
    v3 = _So9NSDecimala__exponent_getter(&v8);
    v8 = *v1;
    v9 = *(v1 + 4);
    v4 = _So9NSDecimala__length_getter(&v8);
    v8 = *v1;
    v9 = *(v1 + 4);
    isCompact_getter = _So9NSDecimala__isCompact_getter(&v8);
    *&v7[4] = *(v1 + 4);
    _So9NSDecimala__exponent_setter(v3, v7);
    _So9NSDecimala__length_setter(v4, v7);
    _So9NSDecimala__isNegative_setter(0, v7);
    _So9NSDecimala__isCompact_setter_0(isCompact_getter, v7);
    _So9NSDecimala__reserved_setter(v7);
  }

  else
  {
    *v7 = *v1;
    *&v7[16] = *(v1 + 4);
  }

  result = *v7;
  *a1 = *v7;
  *(a1 + 16) = *&v7[16];
  return result;
}

void protocol witness for static Numeric.* infix(_:_:) in conformance NSDecimal(NSDecimal **a1@<X1>, uint64_t a2@<X8>)
{
  NSDecimal._multiply(by:roundingMode:)(a1[1], *a1, a1[1]);
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    _So9NSDecimala__exponent_setter(0, &v13);
    _So9NSDecimala__length_setter(0, &v13);
    _So9NSDecimala__isNegative_setter(1, &v13);
    _So9NSDecimala__isCompact_setter_0(0, &v13);
    _So9NSDecimala__reserved_setter(&v13);

    LODWORD(v3) = v13;
    LOWORD(v7) = v14;
    LOWORD(v8) = WORD1(v14);
    LOWORD(v4) = WORD2(v14);
    LOWORD(v9) = HIWORD(v14);
    LOWORD(v10) = v15;
    LOWORD(v11) = WORD1(v15);
    LOWORD(v5) = WORD2(v15);
    LOWORD(v12) = HIWORD(v15);
  }

  else
  {
    v12 = HIWORD(v5);
    v11 = HIWORD(v4);
    v10 = HIDWORD(v4);
    v9 = v4 >> 16;
    v8 = HIWORD(v3);
    v7 = HIDWORD(v3);
  }

  *a2 = v3;
  *(a2 + 4) = v7;
  *(a2 + 6) = v8;
  *(a2 + 8) = v4;
  *(a2 + 10) = v9;
  *(a2 + 12) = v10;
  *(a2 + 14) = v11;
  *(a2 + 16) = v5;
  *(a2 + 18) = v12;
}

void protocol witness for static Numeric.*= infix(_:_:) in conformance NSDecimal(uint64_t a1, NSDecimal **a2)
{
  NSDecimal._multiply(by:roundingMode:)(a2[1], *a2, a2[1]);
  if (v6)
  {
    *&v7[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v7);
    _So9NSDecimala__length_setter(0, v7);
    _So9NSDecimala__isNegative_setter(1, v7);
    _So9NSDecimala__isCompact_setter_0(0, v7);
    _So9NSDecimala__reserved_setter(v7);

    *a1 = *v7;
    *(a1 + 16) = *&v7[16];
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

void protocol witness for static AdditiveArithmetic.zero.getter in conformance NSDecimal(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance NSDecimal@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 4);
  specialized static NSDecimal.+= infix(_:_:)(&v5, *a2, *(a2 + 8), *(a2 + 16));
  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  return result;
}

uint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance NSDecimal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = NSDecimal.distance(to:)(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16));
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  return result;
}

void __swiftcall NSDecimal.distance(to:)(NSDecimal *__return_ptr retstr, NSDecimal *to)
{

  NSDecimal.distance(to:)(to, v2, v3, v4, v5, v6);
}

void __swiftcall NSDecimal.advanced(by:)(NSDecimal *__return_ptr retstr, NSDecimal *by)
{
  v7 = v4;
  v8 = v5;
  v9 = v6;
  specialized static NSDecimal.+= infix(_:_:)(&v7, by, v2, v3);
}

void protocol witness for Strideable.distance(to:) in conformance NSDecimal(NSDecimal **a1@<X0>, uint64_t a2@<X8>)
{
  NSDecimal.distance(to:)(a2, *a1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

double protocol witness for Strideable.advanced(by:) in conformance NSDecimal@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v6 = *v2;
  v7 = *(v2 + 4);
  specialized static NSDecimal.+= infix(_:_:)(&v6, *a1, *(a1 + 8), v4);
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  return result;
}

uint64_t protocol witness for static Strideable._step(after:from:by:) in conformance NSDecimal(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 16);
  v9 = *a4;
  v10 = *(a4 + 4);
  specialized static NSDecimal.+= infix(_:_:)(&v9, *a6, *(a6 + 8), v7);
  *a1 = v9;
  *(a1 + 16) = v10;
  return 0;
}

double one-time initialization function for _powersOfTenDividingUInt128Max()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo9NSDecimalaGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_181234EF0;
  *&v44[4] = 0x9999999999999999;
  *&v44[10] = 0x9999999999999999;
  *&v44[18] = 6553;
  _So9NSDecimala__exponent_setter(0, v44);
  _So9NSDecimala__length_setter(8, v44);
  _So9NSDecimala__isNegative_setter(0, v44);
  _So9NSDecimala__isCompact_setter_0(1, v44);
  _So9NSDecimala__reserved_setter(v44);
  *(v0 + 32) = *v44;
  *(v0 + 48) = *&v44[16];
  *&v43[4] = xmmword_181234F00;
  _So9NSDecimala__exponent_setter(0, v43);
  _So9NSDecimala__length_setter(8, v43);
  _So9NSDecimala__isNegative_setter(0, v43);
  _So9NSDecimala__isCompact_setter_0(1, v43);
  _So9NSDecimala__reserved_setter(v43);
  *(v0 + 52) = *v43;
  *(v0 + 68) = *&v43[16];
  *&v42[4] = xmmword_181234F10;
  _So9NSDecimala__exponent_setter(0, v42);
  _So9NSDecimala__length_setter(8, v42);
  _So9NSDecimala__isNegative_setter(0, v42);
  _So9NSDecimala__isCompact_setter_0(1, v42);
  _So9NSDecimala__reserved_setter(v42);
  *(v0 + 72) = *v42;
  *(v0 + 88) = *&v42[16];
  *&v41[4] = xmmword_181234F20;
  _So9NSDecimala__exponent_setter(0, v41);
  _So9NSDecimala__length_setter(8, v41);
  _So9NSDecimala__isNegative_setter(0, v41);
  _So9NSDecimala__isCompact_setter_0(1, v41);
  _So9NSDecimala__reserved_setter(v41);
  *(v0 + 92) = *v41;
  *(v0 + 108) = *&v41[16];
  *&v40[4] = xmmword_181234F30;
  _So9NSDecimala__exponent_setter(0, v40);
  _So9NSDecimala__length_setter(7, v40);
  _So9NSDecimala__isNegative_setter(0, v40);
  _So9NSDecimala__isCompact_setter_0(1, v40);
  _So9NSDecimala__reserved_setter(v40);
  *(v0 + 112) = *v40;
  *(v0 + 128) = *&v40[16];
  *&v39[4] = xmmword_181234F40;
  _So9NSDecimala__exponent_setter(0, v39);
  _So9NSDecimala__length_setter(7, v39);
  _So9NSDecimala__isNegative_setter(0, v39);
  _So9NSDecimala__isCompact_setter_0(1, v39);
  _So9NSDecimala__reserved_setter(v39);
  *(v0 + 132) = *v39;
  *(v0 + 148) = *&v39[16];
  *&v38[4] = xmmword_181234F50;
  _So9NSDecimala__exponent_setter(0, v38);
  _So9NSDecimala__length_setter(7, v38);
  _So9NSDecimala__isNegative_setter(0, v38);
  _So9NSDecimala__isCompact_setter_0(1, v38);
  _So9NSDecimala__reserved_setter(v38);
  *(v0 + 152) = *v38;
  *(v0 + 168) = *&v38[16];
  *&v37[4] = xmmword_181234F60;
  _So9NSDecimala__exponent_setter(0, v37);
  _So9NSDecimala__length_setter(7, v37);
  _So9NSDecimala__isNegative_setter(0, v37);
  _So9NSDecimala__isCompact_setter_0(1, v37);
  _So9NSDecimala__reserved_setter(v37);
  *(v0 + 172) = *v37;
  *(v0 + 188) = *&v37[16];
  *&v36[4] = xmmword_181234F70;
  _So9NSDecimala__exponent_setter(0, v36);
  _So9NSDecimala__length_setter(7, v36);
  _So9NSDecimala__isNegative_setter(0, v36);
  _So9NSDecimala__isCompact_setter_0(1, v36);
  _So9NSDecimala__reserved_setter(v36);
  *(v0 + 192) = *v36;
  *(v0 + 208) = *&v36[16];
  *&v35[4] = xmmword_181234F80;
  _So9NSDecimala__exponent_setter(0, v35);
  _So9NSDecimala__length_setter(6, v35);
  _So9NSDecimala__isNegative_setter(0, v35);
  _So9NSDecimala__isCompact_setter_0(1, v35);
  _So9NSDecimala__reserved_setter(v35);
  *(v0 + 212) = *v35;
  *(v0 + 228) = *&v35[16];
  *&v34[4] = xmmword_181234F90;
  _So9NSDecimala__exponent_setter(0, v34);
  _So9NSDecimala__length_setter(6, v34);
  _So9NSDecimala__isNegative_setter(0, v34);
  _So9NSDecimala__isCompact_setter_0(1, v34);
  _So9NSDecimala__reserved_setter(v34);
  *(v0 + 232) = *v34;
  *(v0 + 248) = *&v34[16];
  *&v33[4] = xmmword_181234FA0;
  _So9NSDecimala__exponent_setter(0, v33);
  _So9NSDecimala__length_setter(6, v33);
  _So9NSDecimala__isNegative_setter(0, v33);
  _So9NSDecimala__isCompact_setter_0(1, v33);
  _So9NSDecimala__reserved_setter(v33);
  *(v0 + 252) = *v33;
  *(v0 + 268) = *&v33[16];
  *&v32[4] = xmmword_181234FB0;
  _So9NSDecimala__exponent_setter(0, v32);
  _So9NSDecimala__length_setter(6, v32);
  _So9NSDecimala__isNegative_setter(0, v32);
  _So9NSDecimala__isCompact_setter_0(0, v32);
  _So9NSDecimala__reserved_setter(v32);
  *(v0 + 272) = *v32;
  *(v0 + 288) = *&v32[16];
  *&v31[4] = xmmword_181234FC0;
  _So9NSDecimala__exponent_setter(0, v31);
  _So9NSDecimala__length_setter(6, v31);
  _So9NSDecimala__isNegative_setter(0, v31);
  _So9NSDecimala__isCompact_setter_0(1, v31);
  _So9NSDecimala__reserved_setter(v31);
  *(v0 + 292) = *v31;
  *(v0 + 308) = *&v31[16];
  *&v30[4] = xmmword_181234FD0;
  _So9NSDecimala__exponent_setter(0, v30);
  _So9NSDecimala__length_setter(5, v30);
  _So9NSDecimala__isNegative_setter(0, v30);
  _So9NSDecimala__isCompact_setter_0(1, v30);
  _So9NSDecimala__reserved_setter(v30);
  *(v0 + 312) = *v30;
  *(v0 + 328) = *&v30[16];
  *&v29[4] = xmmword_181234FE0;
  _So9NSDecimala__exponent_setter(0, v29);
  _So9NSDecimala__length_setter(5, v29);
  _So9NSDecimala__isNegative_setter(0, v29);
  _So9NSDecimala__isCompact_setter_0(1, v29);
  _So9NSDecimala__reserved_setter(v29);
  *(v0 + 332) = *v29;
  *(v0 + 348) = *&v29[16];
  *&v28[4] = xmmword_181234FF0;
  _So9NSDecimala__exponent_setter(0, v28);
  _So9NSDecimala__length_setter(5, v28);
  _So9NSDecimala__isNegative_setter(0, v28);
  _So9NSDecimala__isCompact_setter_0(1, v28);
  _So9NSDecimala__reserved_setter(v28);
  *(v0 + 352) = *v28;
  *(v0 + 368) = *&v28[16];
  *&v27[4] = xmmword_181235000;
  _So9NSDecimala__exponent_setter(0, v27);
  _So9NSDecimala__length_setter(5, v27);
  _So9NSDecimala__isNegative_setter(0, v27);
  _So9NSDecimala__isCompact_setter_0(1, v27);
  _So9NSDecimala__reserved_setter(v27);
  *(v0 + 372) = *v27;
  *(v0 + 388) = *&v27[16];
  *&v26[4] = xmmword_181235010;
  _So9NSDecimala__exponent_setter(0, v26);
  _So9NSDecimala__length_setter(5, v26);
  _So9NSDecimala__isNegative_setter(0, v26);
  _So9NSDecimala__isCompact_setter_0(1, v26);
  _So9NSDecimala__reserved_setter(v26);
  *(v0 + 392) = *v26;
  *(v0 + 408) = *&v26[16];
  *&v25[4] = 0x2F394219248446BALL;
  *&v25[12] = 0;
  _So9NSDecimala__exponent_setter(0, v25);
  _So9NSDecimala__length_setter(4, v25);
  _So9NSDecimala__isNegative_setter(0, v25);
  _So9NSDecimala__isCompact_setter_0(1, v25);
  _So9NSDecimala__reserved_setter(v25);
  *(v0 + 412) = *v25;
  *(v0 + 428) = *&v25[16];
  *&v24[4] = 0x4B8ED0283A6D3DFLL;
  *&v24[12] = 0;
  _So9NSDecimala__exponent_setter(0, v24);
  _So9NSDecimala__length_setter(4, v24);
  _So9NSDecimala__isNegative_setter(0, v24);
  _So9NSDecimala__isCompact_setter_0(1, v24);
  _So9NSDecimala__reserved_setter(v24);
  *(v0 + 432) = *v24;
  *(v0 + 448) = *&v24[16];
  *&v23[4] = 0x78E480405D7B96;
  *&v23[12] = 0;
  _So9NSDecimala__exponent_setter(0, v23);
  _So9NSDecimala__length_setter(4, v23);
  _So9NSDecimala__isNegative_setter(0, v23);
  _So9NSDecimala__isCompact_setter_0(1, v23);
  _So9NSDecimala__reserved_setter(v23);
  *(v0 + 452) = *v23;
  *(v0 + 468) = *&v23[16];
  *&v22[4] = 0xC16D9A0095928;
  *&v22[12] = 0;
  _So9NSDecimala__exponent_setter(0, v22);
  _So9NSDecimala__length_setter(4, v22);
  _So9NSDecimala__isNegative_setter(0, v22);
  _So9NSDecimala__isCompact_setter_0(1, v22);
  _So9NSDecimala__reserved_setter(v22);
  *(v0 + 472) = *v22;
  *(v0 + 488) = *&v22[16];
  *&v21[4] = 0x1357C299A88EALL;
  *&v21[12] = 0;
  _So9NSDecimala__exponent_setter(0, v21);
  _So9NSDecimala__length_setter(4, v21);
  _So9NSDecimala__isNegative_setter(0, v21);
  _So9NSDecimala__isCompact_setter_0(1, v21);
  _So9NSDecimala__reserved_setter(v21);
  *(v0 + 492) = *v21;
  *(v0 + 508) = *&v21[16];
  *&v20[4] = -9603;
  *&v20[6] = -12043;
  *&v20[8] = 7922;
  *&v20[10] = 0;
  *&v20[18] = 0;
  _So9NSDecimala__exponent_setter(0, v20);
  _So9NSDecimala__length_setter(3, v20);
  _So9NSDecimala__isNegative_setter(0, v20);
  _So9NSDecimala__isCompact_setter_0(1, v20);
  _So9NSDecimala__reserved_setter(v20);
  *(v0 + 512) = *v20;
  *(v0 + 528) = *&v20[16];
  *&v19[4] = 1209570777;
  *&v19[8] = 792;
  *&v19[10] = 0;
  *&v19[18] = 0;
  _So9NSDecimala__exponent_setter(0, v19);
  _So9NSDecimala__length_setter(3, v19);
  _So9NSDecimala__isNegative_setter(0, v19);
  _So9NSDecimala__isCompact_setter_0(1, v19);
  _So9NSDecimala__reserved_setter(v19);
  *(v0 + 532) = *v19;
  *(v0 + 548) = *&v19[16];
  *&v18[4] = -9272;
  strcpy(&v18[6], "h:O");
  *&v18[10] = 0;
  *&v18[18] = 0;
  _So9NSDecimala__exponent_setter(0, v18);
  _So9NSDecimala__length_setter(3, v18);
  _So9NSDecimala__isNegative_setter(0, v18);
  _So9NSDecimala__isCompact_setter_0(0, v18);
  _So9NSDecimala__reserved_setter(v18);
  *(v0 + 552) = *v18;
  *(v0 + 568) = *&v18[16];
  *&v17[4] = -20588;
  *&v17[6] = -5059;
  *&v17[8] = 7;
  *&v17[10] = 0;
  *&v17[18] = 0;
  _So9NSDecimala__exponent_setter(0, v17);
  _So9NSDecimala__length_setter(3, v17);
  _So9NSDecimala__isNegative_setter(0, v17);
  _So9NSDecimala__isCompact_setter_0(1, v17);
  _So9NSDecimala__reserved_setter(v17);
  *(v0 + 572) = *v17;
  *(v0 + 588) = *&v17[16];
  DWORD1(v15) = -892143627;
  *(&v15 + 1) = 0;
  v16 = 0;
  _So9NSDecimala__exponent_setter(0, &v15);
  _So9NSDecimala__length_setter(2, &v15);
  _So9NSDecimala__isNegative_setter(0, &v15);
  _So9NSDecimala__isCompact_setter_0(1, &v15);
  _So9NSDecimala__reserved_setter(&v15);
  *(v0 + 592) = v15;
  *(v0 + 608) = v16;
  DWORD1(v13) = 340282366;
  *(&v13 + 1) = 0;
  v14 = 0;
  _So9NSDecimala__exponent_setter(0, &v13);
  _So9NSDecimala__length_setter(2, &v13);
  _So9NSDecimala__isNegative_setter(0, &v13);
  _So9NSDecimala__isCompact_setter_0(1, &v13);
  _So9NSDecimala__reserved_setter(&v13);
  *(v0 + 612) = v13;
  *(v0 + 628) = v14;
  DWORD1(v11) = 34028236;
  *(&v11 + 1) = 0;
  v12 = 0;
  _So9NSDecimala__exponent_setter(0, &v11);
  _So9NSDecimala__length_setter(2, &v11);
  _So9NSDecimala__isNegative_setter(0, &v11);
  _So9NSDecimala__isCompact_setter_0(1, &v11);
  _So9NSDecimala__reserved_setter(&v11);
  *(v0 + 632) = v11;
  *(v0 + 648) = v12;
  DWORD1(v9) = 3402823;
  *(&v9 + 1) = 0;
  v10 = 0;
  _So9NSDecimala__exponent_setter(0, &v9);
  _So9NSDecimala__length_setter(2, &v9);
  _So9NSDecimala__isNegative_setter(0, &v9);
  _So9NSDecimala__isCompact_setter_0(1, &v9);
  _So9NSDecimala__reserved_setter(&v9);
  *(v0 + 652) = v9;
  *(v0 + 668) = v10;
  DWORD1(v7) = 340282;
  *(&v7 + 1) = 0;
  v8 = 0;
  _So9NSDecimala__exponent_setter(0, &v7);
  _So9NSDecimala__length_setter(2, &v7);
  _So9NSDecimala__isNegative_setter(0, &v7);
  _So9NSDecimala__isCompact_setter_0(1, &v7);
  _So9NSDecimala__reserved_setter(&v7);
  *(v0 + 672) = v7;
  *(v0 + 688) = v8;
  *&v6[4] = -31508;
  *&v6[6] = 0;
  *&v6[12] = 0;
  _So9NSDecimala__exponent_setter(0, v6);
  _So9NSDecimala__length_setter(1, v6);
  _So9NSDecimala__isNegative_setter(0, v6);
  _So9NSDecimala__isCompact_setter_0(1, v6);
  _So9NSDecimala__reserved_setter(v6);
  *(v0 + 692) = *v6;
  *(v0 + 708) = *&v6[16];
  *&v5[4] = 3402;
  *&v5[6] = 0;
  *&v5[12] = 0;
  _So9NSDecimala__exponent_setter(0, v5);
  _So9NSDecimala__length_setter(1, v5);
  _So9NSDecimala__isNegative_setter(0, v5);
  _So9NSDecimala__isCompact_setter_0(1, v5);
  _So9NSDecimala__reserved_setter(v5);
  *(v0 + 712) = *v5;
  *(v0 + 728) = *&v5[16];
  *&v4[4] = 340;
  *&v4[6] = 0;
  *&v4[12] = 0;
  _So9NSDecimala__exponent_setter(0, v4);
  _So9NSDecimala__length_setter(1, v4);
  _So9NSDecimala__isNegative_setter(0, v4);
  _So9NSDecimala__isCompact_setter_0(0, v4);
  _So9NSDecimala__reserved_setter(v4);
  *(v0 + 732) = *v4;
  *(v0 + 748) = *&v4[16];
  strcpy(&v3[4], "");
  *&v3[6] = 0;
  *&v3[12] = 0;
  _So9NSDecimala__exponent_setter(0, v3);
  _So9NSDecimala__length_setter(1, v3);
  _So9NSDecimala__isNegative_setter(0, v3);
  _So9NSDecimala__isCompact_setter_0(1, v3);
  _So9NSDecimala__reserved_setter(v3);
  *(v0 + 752) = *v3;
  *(v0 + 768) = *&v3[16];
  *&v2[4] = 3;
  *&v2[6] = 0;
  *&v2[12] = 0;
  _So9NSDecimala__exponent_setter(0, v2);
  _So9NSDecimala__length_setter(1, v2);
  _So9NSDecimala__isNegative_setter(0, v2);
  _So9NSDecimala__isCompact_setter_0(1, v2);
  _So9NSDecimala__reserved_setter(v2);
  result = *v2;
  *(v0 + 772) = *v2;
  *(v0 + 788) = *&v2[16];
  _powersOfTenDividingUInt128Max._rawValue = v0;
  return result;
}

unint64_t specialized NSDecimal.init(_:)(unint64_t result)
{
  v4 = 0uLL;
  v5 = 0;
  if (!result)
  {
    return v4;
  }

  v1 = result;
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * result, 1) > 0x1999999999999999uLL)
  {
    v2 = 0;
LABEL_7:
    _So9NSDecimala__isCompact_setter_0(1, &v4);
    _So9NSDecimala__exponent_setter(v2, &v4);
    _So9NSDecimala__length_setter((79 - __clz(v1)) >> 4, &v4);
    *(&v4 + 4) = v1;
    return v4;
  }

  v3 = 0;
  while (1)
  {
    v2 = (v3 + 1);
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v1 /= 0xAuLL;
    ++v3;
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v1, 1) >= 0x199999999999999AuLL)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static NSDecimal.== infix(_:_:)(unint64_t a1, unint64_t a2, unsigned int a3, unint64_t a4, unint64_t a5, unsigned int a6)
{
  v6 = a6;
  v50 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v60 = HIDWORD(a1);
  v61 = HIWORD(a1);
  v49 = a2 >> 16;
  v67 = *MEMORY[0x1E69E9840];
  *&v65 = a1;
  v56 = HIDWORD(a2);
  v58 = HIWORD(a2);
  v59 = a3;
  v57 = HIWORD(a3);
  v11 = HIDWORD(a4);
  *(&v65 + 1) = a2;
  v12 = HIWORD(a4);
  v53 = a5 >> 16;
  v13 = HIDWORD(a5);
  v14 = HIWORD(a5);
  v66 = a3;
  v15 = HIWORD(a6);
  v51 = _So9NSDecimala__exponent_getter(&v65);
  LODWORD(v65) = v8;
  v55 = v12;
  WORD2(v65) = v11;
  WORD3(v65) = v12;
  WORD4(v65) = v7;
  WORD5(v65) = v53;
  v62 = v13;
  WORD6(v65) = v13;
  v16 = v14;
  HIWORD(v65) = v14;
  LOWORD(v66) = v6;
  HIWORD(v66) = v15;
  v17 = _So9NSDecimala__exponent_getter(&v65);
  v18 = v60;
  v19 = v61;
  v20 = v7;
  v21 = v9;
  v22 = a1;
  v54 = a1;
  if (v51 == v17)
  {
    LODWORD(v65) = a1;
    WORD2(v65) = v60;
    WORD3(v65) = v61;
    WORD4(v65) = v9;
    WORD5(v65) = v49;
    WORD6(v65) = v56;
    HIWORD(v65) = v58;
    LOWORD(v66) = v59;
    HIWORD(v66) = v57;
    v23 = _So9NSDecimala__length_getter(&v65);
    LODWORD(v65) = v8;
    WORD2(v65) = v11;
    WORD3(v65) = v12;
    WORD4(v65) = v7;
    WORD5(v65) = v53;
    WORD6(v65) = v62;
    HIWORD(v65) = v16;
    LOWORD(v66) = v50;
    HIWORD(v66) = v15;
    v24 = _So9NSDecimala__length_getter(&v65);
    v20 = v7;
    v22 = a1;
    v21 = v9;
    v25 = v23 == v24;
    v18 = v60;
    v19 = v61;
    if (v25)
    {
      LODWORD(v65) = a1;
      WORD2(v65) = v60;
      WORD3(v65) = v61;
      WORD4(v65) = v9;
      WORD5(v65) = v49;
      WORD6(v65) = v56;
      HIWORD(v65) = v58;
      LOWORD(v66) = v59;
      HIWORD(v66) = v57;
      isNegative_getter = _So9NSDecimala__isNegative_getter(&v65);
      LODWORD(v65) = v8;
      WORD2(v65) = v11;
      WORD3(v65) = v12;
      WORD4(v65) = v7;
      WORD5(v65) = v53;
      WORD6(v65) = v62;
      HIWORD(v65) = v16;
      LOWORD(v66) = v50;
      HIWORD(v66) = v15;
      v27 = _So9NSDecimala__isNegative_getter(&v65);
      v20 = v7;
      v22 = a1;
      v21 = v9;
      v25 = isNegative_getter == v27;
      v18 = v60;
      v19 = v61;
      if (v25)
      {
        LODWORD(v65) = a1;
        WORD2(v65) = v60;
        WORD3(v65) = v61;
        WORD4(v65) = v9;
        WORD5(v65) = v49;
        WORD6(v65) = v56;
        HIWORD(v65) = v58;
        LOWORD(v66) = v59;
        HIWORD(v66) = v57;
        isCompact_getter = _So9NSDecimala__isCompact_getter(&v65);
        LODWORD(v65) = v8;
        WORD2(v65) = v11;
        WORD3(v65) = v12;
        WORD4(v65) = v7;
        WORD5(v65) = v53;
        WORD6(v65) = v62;
        HIWORD(v65) = v16;
        LOWORD(v66) = v50;
        HIWORD(v66) = v15;
        v29 = _So9NSDecimala__isCompact_getter(&v65);
        v20 = v7;
        v22 = a1;
        v21 = v9;
        v25 = isCompact_getter == v29;
        v18 = v60;
        v19 = v61;
        if (v25)
        {
          LODWORD(v65) = a1;
          WORD2(v65) = v60;
          WORD3(v65) = v61;
          WORD4(v65) = v9;
          WORD5(v65) = v49;
          WORD6(v65) = v56;
          HIWORD(v65) = v58;
          LOWORD(v66) = v59;
          HIWORD(v66) = v57;
          v30 = _So9NSDecimala__reserved_getter(&v65);
          LODWORD(v65) = v8;
          WORD2(v65) = v11;
          WORD3(v65) = v12;
          WORD4(v65) = v7;
          WORD5(v65) = v53;
          WORD6(v65) = v62;
          HIWORD(v65) = v16;
          LOWORD(v66) = v50;
          HIWORD(v66) = v15;
          v31 = _So9NSDecimala__reserved_getter(&v65);
          v20 = v7;
          v22 = a1;
          v21 = v9;
          v25 = v30 == v31;
          v18 = v60;
          v19 = v61;
          if (v25 && WORD2(a1) == v11 && v61 == v12 && v9 == v7 && v49 == v53 && v56 == v62 && v58 == v16 && v59 == v50 && v57 == v15)
          {
            return 1;
          }
        }
      }
    }
  }

  v48 = v20;
  v52 = v16;
  LODWORD(v65) = v22;
  WORD2(v65) = v18;
  WORD3(v65) = v19;
  WORD4(v65) = v21;
  WORD5(v65) = v49;
  WORD6(v65) = v56;
  HIWORD(v65) = v58;
  LOWORD(v66) = v59;
  HIWORD(v66) = v57;
  v33 = v18;
  v34 = v21;
  v35 = v22;
  if (_So9NSDecimala__length_getter(&v65) || (LODWORD(v65) = v35, WORD2(v65) = v33, WORD3(v65) = v19, WORD4(v65) = v34, WORD5(v65) = v49, WORD6(v65) = v56, HIWORD(v65) = v58, LOWORD(v66) = v59, HIWORD(v66) = v57, !_So9NSDecimala__isNegative_getter(&v65)))
  {
    LODWORD(v65) = v8;
    WORD2(v65) = v11;
    WORD3(v65) = v55;
    WORD4(v65) = v48;
    WORD5(v65) = v53;
    WORD6(v65) = v62;
    HIWORD(v65) = v52;
    LOWORD(v66) = v50;
    HIWORD(v66) = v15;
    if (_So9NSDecimala__length_getter(&v65) || (LODWORD(v65) = v8, WORD2(v65) = v11, WORD3(v65) = v55, WORD4(v65) = v48, WORD5(v65) = v53, WORD6(v65) = v62, HIWORD(v65) = v52, LOWORD(v66) = v50, HIWORD(v66) = v15, !_So9NSDecimala__isNegative_getter(&v65)))
    {
      LODWORD(v65) = v54;
      WORD2(v65) = v60;
      WORD3(v65) = v61;
      WORD4(v65) = v9;
      WORD5(v65) = v49;
      WORD6(v65) = v56;
      HIWORD(v65) = v58;
      LOWORD(v66) = v59;
      HIWORD(v66) = v57;
      v36 = _So9NSDecimala__isNegative_getter(&v65);
      LODWORD(v65) = v8;
      WORD2(v65) = v11;
      WORD3(v65) = v55;
      WORD4(v65) = v48;
      WORD5(v65) = v53;
      WORD6(v65) = v62;
      HIWORD(v65) = v52;
      LOWORD(v66) = v50;
      HIWORD(v66) = v15;
      if (_So9NSDecimala__isNegative_getter(&v65) >= v36)
      {
        LODWORD(v65) = v54;
        WORD2(v65) = v60;
        WORD3(v65) = v61;
        WORD4(v65) = v9;
        WORD5(v65) = v49;
        WORD6(v65) = v56;
        HIWORD(v65) = v58;
        LOWORD(v66) = v59;
        HIWORD(v66) = v57;
        v37 = _So9NSDecimala__isNegative_getter(&v65);
        LODWORD(v65) = v8;
        WORD2(v65) = v11;
        WORD3(v65) = v55;
        WORD4(v65) = v48;
        WORD5(v65) = v53;
        WORD6(v65) = v62;
        HIWORD(v65) = v52;
        LOWORD(v66) = v50;
        HIWORD(v66) = v15;
        if (v37 >= _So9NSDecimala__isNegative_getter(&v65))
        {
          LODWORD(v65) = v54;
          WORD2(v65) = v60;
          WORD3(v65) = v61;
          WORD4(v65) = v9;
          WORD5(v65) = v49;
          WORD6(v65) = v56;
          HIWORD(v65) = v58;
          LOWORD(v66) = v59;
          HIWORD(v66) = v57;
          if (_So9NSDecimala__length_getter(&v65))
          {
            LODWORD(v65) = v8;
            WORD2(v65) = v11;
            WORD3(v65) = v55;
            WORD4(v65) = v48;
            WORD5(v65) = v53;
            WORD6(v65) = v62;
            HIWORD(v65) = v52;
            LOWORD(v66) = v50;
            HIWORD(v66) = v15;
            if (_So9NSDecimala__length_getter(&v65))
            {
              LODWORD(v63) = v54;
              WORD2(v63) = v60;
              WORD3(v63) = v61;
              WORD4(v63) = v9;
              WORD5(v63) = v49;
              WORD6(v63) = v56;
              HIWORD(v63) = v58;
              LOWORD(v64) = v59;
              HIWORD(v64) = v57;
              LODWORD(v65) = v8;
              WORD2(v65) = v11;
              WORD3(v65) = v55;
              WORD4(v65) = v48;
              WORD5(v65) = v53;
              WORD6(v65) = v62;
              HIWORD(v65) = v52;
              LOWORD(v66) = v50;
              HIWORD(v66) = v15;
              specialized static NSDecimal._normalize(a:b:roundingMode:)(&v63, &v65);
              NSDecimal.asVariableLengthInteger()(v63, *(&v63 + 1), v64);
              v39 = v38;
              NSDecimal.asVariableLengthInteger()(v65, *(&v65 + 1), v66);
              v41 = v40;
              v42 = v39;
              v43 = *(v39 + 16);
              v44 = *(v41 + 16);
              if (v44 >= v43)
              {
                if (v43 < v44)
                {
LABEL_44:
                  v45 = -1;
                }

                else
                {
                  v45 = 1;
                  while (v43)
                  {
                    v46 = *(v42 + 30 + 2 * v43);
                    v47 = *(v41 + 30 + 2 * v43);
                    if (v47 < v46)
                    {
                      goto LABEL_45;
                    }

                    --v43;
                    if (v46 < v47)
                    {
                      goto LABEL_44;
                    }
                  }

                  v45 = 0;
                }
              }

              else
              {
                v45 = 1;
              }

LABEL_45:

              if (_So9NSDecimala__isNegative_getter(&v63))
              {
                v45 = qword_1812354A0[v45 + 1];
              }
            }

            else
            {
              LODWORD(v65) = v54;
              WORD2(v65) = v60;
              WORD3(v65) = v61;
              WORD4(v65) = v9;
              WORD5(v65) = v49;
              WORD6(v65) = v56;
              HIWORD(v65) = v58;
              LOWORD(v66) = v59;
              HIWORD(v66) = v57;
              v45 = _So9NSDecimala__length_getter(&v65) != 0;
            }
          }

          else
          {
            LODWORD(v65) = v8;
            WORD2(v65) = v11;
            WORD3(v65) = v55;
            WORD4(v65) = v48;
            WORD5(v65) = v53;
            WORD6(v65) = v62;
            HIWORD(v65) = v52;
            LOWORD(v66) = v50;
            HIWORD(v66) = v15;
            if (_So9NSDecimala__length_getter(&v65))
            {
              v45 = -1;
            }

            else
            {
              v45 = 0;
            }
          }

          return v45 == 0;
        }
      }
    }

    goto LABEL_32;
  }

  LODWORD(v65) = v8;
  WORD2(v65) = v11;
  WORD3(v65) = v55;
  WORD4(v65) = v48;
  WORD5(v65) = v53;
  WORD6(v65) = v62;
  HIWORD(v65) = v52;
  LOWORD(v66) = v50;
  HIWORD(v66) = v15;
  if (_So9NSDecimala__length_getter(&v65) || (LODWORD(v65) = v8, WORD2(v65) = v11, WORD3(v65) = v55, WORD4(v65) = v48, WORD5(v65) = v53, WORD6(v65) = v62, HIWORD(v65) = v52, LOWORD(v66) = v50, HIWORD(v66) = v15, !_So9NSDecimala__isNegative_getter(&v65)))
  {
LABEL_32:
    v45 = -1;
    return v45 == 0;
  }

  v45 = 0;
  return v45 == 0;
}

uint64_t specialized static NSDecimal.< infix(_:_:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v21 = *MEMORY[0x1E69E9840];
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  if (!_So9NSDecimala__length_getter(&v19))
  {
    goto LABEL_12;
  }

  while (1)
  {
    *&v19 = a4;
    *(&v19 + 1) = a5;
    v20 = v6;
    if (!_So9NSDecimala__length_getter(&v19))
    {
      *&v19 = a4;
      *(&v19 + 1) = a5;
      v20 = v6;
      if (_So9NSDecimala__isNegative_getter(&v19))
      {
        return 0;
      }
    }

    *&v19 = a1;
    *(&v19 + 1) = a2;
    v20 = a3;
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v19);
    *&v19 = a4;
    *(&v19 + 1) = a5;
    v20 = v6;
    if (_So9NSDecimala__isNegative_getter(&v19) < isNegative_getter)
    {
      return 1;
    }

    *&v19 = a1;
    *(&v19 + 1) = a2;
    v20 = a3;
    v13 = _So9NSDecimala__isNegative_getter(&v19);
    *&v19 = a4;
    *(&v19 + 1) = a5;
    v20 = v6;
    if (v13 < _So9NSDecimala__isNegative_getter(&v19))
    {
      return 0;
    }

    *&v19 = a1;
    *(&v19 + 1) = a2;
    v20 = a3;
    if (!_So9NSDecimala__length_getter(&v19))
    {
      *&v19 = a4;
      *(&v19 + 1) = a5;
      v20 = v6;
      return _So9NSDecimala__length_getter(&v19) != 0;
    }

    *&v19 = a4;
    *(&v19 + 1) = a5;
    v20 = v6;
    result = _So9NSDecimala__length_getter(&v19);
    if (!result)
    {
      return result;
    }

    *&v17 = a1;
    *(&v17 + 1) = a2;
    v18 = a3;
    *&v19 = a4;
    *(&v19 + 1) = a5;
    v20 = v6;
    specialized static NSDecimal._normalize(a:b:roundingMode:)(&v17, &v19);
    NSDecimal.asVariableLengthInteger()(v17, *(&v17 + 1), v18);
    a5 = v15;
    NSDecimal.asVariableLengthInteger()(v19, *(&v19 + 1), v20);
    a4 = v16;
    v6 = specialized static NSDecimal._integerCompare(lhs:rhs:)(a5, v16);

    if (!_So9NSDecimala__isNegative_getter(&v17))
    {
      break;
    }

    switch(v6)
    {
      case -1:
        return 0;
      case 1:
        return 1;
      case 0:
        return 0;
    }

    type metadata accessor for NSComparisonResult(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
LABEL_12:
    *&v19 = a1;
    *(&v19 + 1) = a2;
    v20 = a3;
    if (_So9NSDecimala__isNegative_getter(&v19))
    {
      *&v19 = a4;
      *(&v19 + 1) = a5;
      v20 = v6;
      if (_So9NSDecimala__length_getter(&v19))
      {
        return 1;
      }

      *&v19 = a4;
      *(&v19 + 1) = a5;
      v20 = v6;
      return !_So9NSDecimala__isNegative_getter(&v19);
    }
  }

  return v6 == -1;
}

void specialized static NSDecimal.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v136 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 4);
  *&v134 = *a1;
  *(&v134 + 1) = v9;
  v135 = v10;
  if (!_So9NSDecimala__length_getter(&v134) && (*&v134 = v8, *(&v134 + 1) = v9, v135 = v10, _So9NSDecimala__isNegative_getter(&v134)) || (*&v134 = a2, *(&v134 + 1) = a3, v135 = a4, !_So9NSDecimala__length_getter(&v134)) && (*&v134 = a2, *(&v134 + 1) = a3, v135 = a4, _So9NSDecimala__isNegative_getter(&v134)))
  {
LABEL_54:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v34 = swift_allocError();
    *v35 = 0;
    swift_willThrow();
LABEL_55:
    *&v131[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v131);
    _So9NSDecimala__length_setter(0, v131);
    _So9NSDecimala__isNegative_setter(1, v131);
    _So9NSDecimala__isCompact_setter_0(0, v131);
    _So9NSDecimala__reserved_setter(v131);

    *a1 = *v131;
    *(a1 + 4) = *&v131[16];
    return;
  }

  *&v134 = v8;
  *(&v134 + 1) = v9;
  v135 = v10;
  if (!_So9NSDecimala__length_getter(&v134))
  {
    goto LABEL_57;
  }

  *&v134 = a2;
  *(&v134 + 1) = a3;
  v135 = a4;
  if (!_So9NSDecimala__length_getter(&v134))
  {
    a2 = v8;
    a3 = v9;
    a4 = v10;
    goto LABEL_57;
  }

  *&v134 = v8;
  *(&v134 + 1) = v9;
  v135 = v10;
  *&v132 = a2;
  *(&v132 + 1) = a3;
  v133 = a4;
  specialized static NSDecimal._normalize(a:b:roundingMode:)(&v134, &v132);
  v129 = v134;
  v130 = v135;
  if (!_So9NSDecimala__length_getter(&v129))
  {
    a3 = *(&v132 + 1);
    a2 = v132;
    a4 = v133;
    goto LABEL_57;
  }

  v129 = v132;
  v130 = v133;
  if (!_So9NSDecimala__length_getter(&v129))
  {
    a3 = *(&v134 + 1);
    a2 = v134;
    a4 = v135;
    goto LABEL_57;
  }

  v129 = v134;
  v130 = v135;
  v127 = v134;
  v128 = v135;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v127);
  v127 = v132;
  v128 = v133;
  if (isNegative_getter == _So9NSDecimala__isNegative_getter(&v127))
  {
    v127 = v134;
    v128 = v135;
    v12 = _So9NSDecimala__isNegative_getter(&v127);
    _So9NSDecimala__isNegative_setter(v12, &v129);
    NSDecimal.asVariableLengthInteger()(v134, *(&v134 + 1), v135);
    v14 = v13;
    NSDecimal.asVariableLengthInteger()(v132, *(&v132 + 1), v133);
    v16 = v15;
    v17 = *(v14 + 16);
    v18 = *(v15 + 16);
    if (v18 >= v17)
    {
      v19 = *(v14 + 16);
    }

    else
    {
      v19 = *(v15 + 16);
    }

    v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v22 = v20;
    *(v20 + 16) = 9;
    *(v20 + 32) = 0;
    v23 = (v20 + 32);
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    if (!v19)
    {
      if (v17)
      {
        goto LABEL_124;
      }

      v27 = 0;
LABEL_156:

      if (v19 < v18)
      {
        if (!v27)
        {
          goto LABEL_171;
        }

        if (v19 >= *(v16 + 16))
        {
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        if (v19 >= *(v22 + 16))
        {
LABEL_272:
          __break(1u);
          goto LABEL_273;
        }

        v27 = (*(v16 + 32 + 2 * v19) + 1) >> 16;
        v23[v19] = *(v16 + 32 + 2 * v19) + 1;
        if (v19 + 1 != v18)
        {
          v89 = 2 * v19 + 34;
          v90 = (v22 + v89);
          v91 = (v16 + v89);
          ++v19;
          while (v27)
          {
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_271;
            }

            if (v19 >= *(v22 + 16))
            {
              goto LABEL_272;
            }

            v92 = *v91++;
            v27 = (v92 + 1) >> 16;
            *v90++ = v92 + 1;
            if (v18 == ++v19)
            {
              goto LABEL_166;
            }
          }

          goto LABEL_171;
        }

LABEL_166:
        v19 = v18;
      }

      *&v127 = v22;

      if (!v27)
      {
        goto LABEL_178;
      }

      if (v19 < 0xA)
      {
        if (v19 >= *(v22 + 16))
        {
          goto LABEL_277;
        }

        v23[v19] = 1;
        *&v127 = v22;
        ++v19;
        goto LABEL_178;
      }

LABEL_299:

      lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
      swift_allocError();
      *v126 = 0;
      swift_willThrow();
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v24 = *(v14 + 16);
    if (!v24)
    {
      goto LABEL_292;
    }

    v25 = *(v16 + 16);
    if (!v25)
    {
      goto LABEL_293;
    }

    v26 = *(v16 + 32);
    v21 = *(v14 + 32) + v26;
    v27 = WORD1(v21);
    *v23 = *(v14 + 32) + v26;
    if (v19 == 1)
    {
      goto LABEL_40;
    }

    if (v24 == 1)
    {
      goto LABEL_292;
    }

    if (v25 == 1)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 34) + *(v16 + 34);
    v27 = WORD1(v21);
    *(v20 + 34) = v21;
    if (v19 == 2)
    {
      goto LABEL_40;
    }

    if (v24 == 2)
    {
      goto LABEL_292;
    }

    if (v25 == 2)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 36) + *(v16 + 36);
    v27 = WORD1(v21);
    *(v20 + 36) = v21;
    if (v19 == 3)
    {
      goto LABEL_40;
    }

    if (v24 == 3)
    {
      goto LABEL_292;
    }

    if (v25 == 3)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 38) + *(v16 + 38);
    v27 = WORD1(v21);
    *(v20 + 38) = v21;
    if (v19 == 4)
    {
      goto LABEL_40;
    }

    if (v24 == 4)
    {
      goto LABEL_292;
    }

    if (v25 == 4)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 40) + *(v16 + 40);
    v27 = WORD1(v21);
    *(v20 + 40) = v21;
    if (v19 == 5)
    {
      goto LABEL_40;
    }

    if (v24 == 5)
    {
      goto LABEL_292;
    }

    if (v25 == 5)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 42) + *(v16 + 42);
    v27 = WORD1(v21);
    *(v20 + 42) = v21;
    if (v19 == 6)
    {
      goto LABEL_40;
    }

    if (v24 == 6)
    {
      goto LABEL_292;
    }

    if (v25 == 6)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 44) + *(v16 + 44);
    v27 = WORD1(v21);
    *(v20 + 44) = v21;
    if (v19 == 7)
    {
      goto LABEL_40;
    }

    if (v24 == 7)
    {
      goto LABEL_292;
    }

    if (v25 == 7)
    {
      goto LABEL_293;
    }

    v21 = v27 + *(v14 + 46) + *(v16 + 46);
    v27 = WORD1(v21);
    *(v20 + 46) = v21;
    if (v19 == 8)
    {
      goto LABEL_40;
    }

    if (v24 == 8)
    {
      goto LABEL_292;
    }

    if (v25 == 8)
    {
      goto LABEL_293;
    }

    v28 = *(v16 + 48);
    v21 = v27 + *(v14 + 48) + v28;
    *(v20 + 48) = v27 + *(v14 + 48) + v28;
    if (v19 == 9)
    {
      v27 = WORD1(v21);
LABEL_40:
      if (v18 < v17)
      {
        if (v21 < 0x10000)
        {
          goto LABEL_124;
        }

        if (v19 >= *(v14 + 16))
        {
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        if (v19 > 8)
        {
LABEL_274:
          __break(1u);
          goto LABEL_275;
        }

        v29 = *(v14 + 32 + 2 * v19) + 1;
        v27 = HIWORD(v29);
        v23[v19] = v29;
        if (v19 + 1 != v17)
        {
          v30 = 2 * v19 + 34;
          v31 = (v20 + v30);
          v32 = (v14 + v30);
          ++v19;
          while (v27)
          {
            if (v19 >= *(v14 + 16))
            {
              goto LABEL_273;
            }

            if (v19 >= *(v20 + 16))
            {
              goto LABEL_274;
            }

            v33 = *v32++;
            v27 = (v33 + 1) >> 16;
            *v31++ = v33 + 1;
            if (v17 == ++v19)
            {
              goto LABEL_50;
            }
          }

LABEL_124:
          v77 = *(v14 + 16);
          v78 = v77 >= v19;
          v79 = v77 - v19;
          if (!v78)
          {
            v79 = 0;
          }

          v80 = v19 + 16;
          do
          {
            if (!v79)
            {
              goto LABEL_254;
            }

            if (v80 - 16 >= *(v20 + 16))
            {
              goto LABEL_255;
            }

            *(v20 + 2 * v80) = *(v14 + 2 * v80);
            --v79;
            v81 = v80 + 1;
            v82 = v80 - 15;
            ++v80;
          }

          while (v82 < v17);

          v19 = v81 - 16;
          if (v19 >= v18)
          {
            *&v127 = v22;

LABEL_178:
            v98 = *(v22 + 16);
            if (__OFSUB__(v98, v19))
            {
LABEL_275:
              __break(1u);
              goto LABEL_276;
            }

            specialized RangeReplaceableCollection<>.removeLast(_:)(v98 - v19);
            v99 = v127;
            v100 = *(v127 + 16);
            if (v100 <= 8)
            {
              v50 = v127;
LABEL_190:
              _So9NSDecimala__length_setter(v100, &v129);
              goto LABEL_226;
            }

            if (v100 == 9)
            {
              v101 = 0;
              LODWORD(v102) = 0;
              LODWORD(v103) = 0;
              v50 = v99;
LABEL_182:
              v104 = v50;
              do
              {
                if (v102)
                {
                  v103 = 1;
                }

                else
                {
                  v103 = v103;
                }

                v50 = specialized static NSDecimal._integerDivideByShort(_:_:)(v104, 0xAu);
                v102 = v105;

                v106 = v101 + 1;
                if (__OFADD__(v101, 1))
                {
                  goto LABEL_265;
                }

                v107 = *(v50 + 16);
                ++v101;
                v104 = v50;
              }

              while (v107 > 8);
              v101 = v106;
LABEL_198:
              if (v103)
              {
                if (!v102 || v102 == 5)
                {
                  v102 = (v102 + 1);
                }
              }

              else if (!v102)
              {
                goto LABEL_245;
              }

              if (v102 <= 4)
              {
                goto LABEL_245;
              }

              if (v107)
              {
                v102 = static Array._allocateBufferUninitialized(minimumCapacity:)();
                *(v102 + 16) = v107;
                bzero((v102 + 32), 2 * v107);
                v117 = 0;
                v118 = 1;
                do
                {
                  v119 = v118 + *(v50 + 32 + 2 * v117);
                  v118 = HIWORD(v119);
                  *(v102 + 2 * v117++ + 32) = v119;
                }

                while (v107 != v117);
                v103 = v107;
                if (v119 >= 0x10000)
                {
LABEL_239:
                  v121 = *(v102 + 24);
                  v104 = v103 + 1;
                  if (v103 >= v121 >> 1)
                  {
                    goto LABEL_283;
                  }

                  goto LABEL_240;
                }

LABEL_244:

LABEL_245:

                while (1)
                {
                  v127 = v129;
                  v128 = v130;
                  v123 = _So9NSDecimala__exponent_getter(&v127);
                  if (v101 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_279;
                  }

                  if (v101 > 0x7FFFFFFF)
                  {
                    goto LABEL_280;
                  }

                  if (__OFADD__(v123, v101))
                  {
                    goto LABEL_281;
                  }

                  if (v123 + v101 > 127)
                  {

                    goto LABEL_54;
                  }

                  v127 = v129;
                  v128 = v130;
                  v124 = _So9NSDecimala__exponent_getter(&v127);
                  v122 = __OFADD__(v124, v101);
                  v125 = (v124 + v101);
                  if (!v122)
                  {
                    break;
                  }

                  __break(1u);
LABEL_283:
                  v102 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v104, 1, v102);
LABEL_240:
                  *(v102 + 16) = v104;
                  *(v102 + 2 * v103 + 32) = 1;
                  if (*(v102 + 16) >= v107)
                  {
                    goto LABEL_244;
                  }

                  v107 = 0;
                  v104 = specialized static NSDecimal._integerDivideByShort(_:_:)(v102, 0xAu);

                  v122 = __OFADD__(v101++, 1);
                  if (v122)
                  {
                    __break(1u);
                    goto LABEL_244;
                  }
                }

                _So9NSDecimala__exponent_setter(v125, &v129);
                v100 = *(v50 + 16);
                if (HIDWORD(v100))
                {
                  __break(1u);
LABEL_254:
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
                  goto LABEL_258;
                }

                goto LABEL_190;
              }

              v102 = MEMORY[0x1E69E7CC0];
              v103 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v103 != 1)
              {
                goto LABEL_239;
              }

LABEL_238:

              lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
              v34 = swift_allocError();
              *v120 = 0;
              swift_willThrow();

              goto LABEL_55;
            }

            v108 = 0;
            LODWORD(v102) = 0;
            LODWORD(v103) = 0;
            v104 = v99;
            while (1)
            {
              v103 = v102 ? 1 : v103;
              v50 = specialized static NSDecimal._integerDivideByShort(_:_:)(v104, 0x2710u);
              v102 = v109;

              v101 = v108 + 4;
              if (__OFADD__(v108, 4))
              {
                break;
              }

              v107 = *(v50 + 16);
              v108 += 4;
              v104 = v50;
              if (v107 <= 9)
              {
                if (v107 != 9)
                {
                  goto LABEL_198;
                }

                goto LABEL_182;
              }
            }

            __break(1u);
            goto LABEL_268;
          }

LABEL_171:
          v93 = *(v16 + 16);
          v78 = v93 >= v19;
          v94 = v93 - v19;
          if (!v78)
          {
            v94 = 0;
          }

          v95 = v19 + 16;
          do
          {
            if (!v94)
            {
              goto LABEL_256;
            }

            if ((v95 - 16) >= *(v22 + 16))
            {
              goto LABEL_257;
            }

            *(v22 + 2 * v95) = *(v16 + 2 * v95);
            --v94;
            v96 = v95 + 1;
            v97 = v95 - 15;
            ++v95;
          }

          while (v97 < v18);

          *&v127 = v22;
          v19 = v96 - 16;
          goto LABEL_178;
        }

LABEL_50:
        v19 = v17;
      }

      goto LABEL_156;
    }

LABEL_289:
    if (v24 == 9)
    {
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    if (v25 != 9)
    {
      __break(1u);
      goto LABEL_292;
    }

LABEL_293:
    __break(1u);
LABEL_294:
    if (v21 != 8)
    {
      if (v24 != 8)
      {
        __break(1u);
        goto LABEL_297;
      }

LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  v36 = v134;
  v37 = v135;
  NSDecimal.asVariableLengthInteger()(v134, *(&v134 + 1), v135);
  v39 = v38;
  v40 = v132;
  v41 = v133;
  NSDecimal.asVariableLengthInteger()(v132, *(&v132 + 1), v133);
  v43 = *(v39 + 16);
  v44 = *(v42 + 16);
  if (v44 < v43)
  {
LABEL_61:

    NSDecimal.asVariableLengthInteger()(v36, *(&v36 + 1), v37);
    v46 = v45;
    NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
    v48 = v47;
    v49 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v50 = v49;
    *(v49 + 32) = 0;
    v51 = (v49 + 32);
    *(v49 + 16) = 8;
    *(v49 + 40) = 0;
    v21 = *(v46 + 16);
    v24 = *(v48 + 16);
    if (v24 >= v21)
    {
      v25 = *(v46 + 16);
    }

    else
    {
      v25 = *(v48 + 16);
    }

    if (!v25)
    {
      v52 = 1;
LABEL_133:
      if (v24 >= v21)
      {
        goto LABEL_142;
      }

      v83 = v46 + 32;
      do
      {
        if (v52)
        {
          while (v25 < v21)
          {
            if (v25 >= *(v49 + 16))
            {
              goto LABEL_263;
            }

            v51[v25] = *(v83 + 2 * v25);
            if (++v25 >= v21)
            {
              goto LABEL_142;
            }
          }

          goto LABEL_262;
        }

        if (v25 >= *(v49 + 16))
        {
          goto LABEL_264;
        }

        v52 = (*(v83 + 2 * v25) + 0xFFFF) >> 16;
        v51[v25] = *(v83 + 2 * v25) - 1;
        ++v25;
      }

      while (v21 != v25);
      v25 = v21;
LABEL_142:
      if (v25 < v24)
      {
        if (v25 <= v24)
        {
          v84 = v24;
        }

        else
        {
          v84 = v25;
        }

        while (v84 != v25)
        {
          if (v25 >= *(v49 + 16))
          {
            goto LABEL_259;
          }

          v85 = v52 + (*(v48 + 32 + 2 * v25) ^ 0xFFFF);
          v52 = HIWORD(v85);
          v51[v25++] = v85;
          if (v24 == v25)
          {
            goto LABEL_149;
          }
        }

LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

LABEL_149:
      if (v52)
      {
        for (i = *(v49 + 16); i; *(v49 + 16) = --i)
        {
          if (*(v49 + 30 + 2 * i))
          {
            break;
          }
        }

        v87 = *(v50 + 16);
        if (!HIDWORD(v87))
        {
          _So9NSDecimala__length_setter(v87, &v129);
          v127 = v134;
          v88 = v135;
          goto LABEL_225;
        }

LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
      }

      goto LABEL_238;
    }

    if (!v21)
    {
      goto LABEL_287;
    }

    if (v24)
    {
      v52 = ((*(v46 + 32) | 0x10000) - *(v48 + 32)) >> 16;
      *v51 = *(v46 + 32) - *(v48 + 32);
      if (v25 == 1)
      {
        goto LABEL_133;
      }

      if (v21 == 1)
      {
        goto LABEL_287;
      }

      if (v24 != 1)
      {
        v53 = v52 + *(v46 + 34) - *(v48 + 34) + 0xFFFF;
        v52 = HIWORD(v53);
        *(v49 + 34) = v53;
        if (v25 == 2)
        {
          goto LABEL_133;
        }

        if (v21 == 2)
        {
          goto LABEL_287;
        }

        if (v24 != 2)
        {
          v54 = v52 + *(v46 + 36) - *(v48 + 36) + 0xFFFF;
          v52 = HIWORD(v54);
          *(v49 + 36) = v54;
          if (v25 == 3)
          {
            goto LABEL_133;
          }

          if (v21 == 3)
          {
            goto LABEL_287;
          }

          if (v24 != 3)
          {
            v55 = v52 + *(v46 + 38) - *(v48 + 38) + 0xFFFF;
            v52 = HIWORD(v55);
            *(v49 + 38) = v55;
            if (v25 == 4)
            {
              goto LABEL_133;
            }

            if (v21 == 4)
            {
              goto LABEL_287;
            }

            if (v24 != 4)
            {
              v56 = v52 + *(v46 + 40) - *(v48 + 40) + 0xFFFF;
              v52 = HIWORD(v56);
              *(v49 + 40) = v56;
              if (v25 == 5)
              {
                goto LABEL_133;
              }

              if (v21 == 5)
              {
                goto LABEL_287;
              }

              if (v24 != 5)
              {
                v57 = v52 + *(v46 + 42) - *(v48 + 42) + 0xFFFF;
                v52 = HIWORD(v57);
                *(v49 + 42) = v57;
                if (v25 == 6)
                {
                  goto LABEL_133;
                }

                if (v21 == 6)
                {
                  goto LABEL_287;
                }

                if (v24 != 6)
                {
                  v58 = v52 + *(v46 + 44) - *(v48 + 44) + 0xFFFF;
                  v52 = HIWORD(v58);
                  *(v49 + 44) = v58;
                  if (v25 == 7)
                  {
                    goto LABEL_133;
                  }

                  if (v21 == 7)
                  {
                    goto LABEL_287;
                  }

                  if (v24 != 7)
                  {
                    v59 = v52 + *(v46 + 46) - *(v48 + 46) + 0xFFFF;
                    *(v49 + 46) = v59;
                    if (v25 == 8)
                    {
                      v52 = HIWORD(v59);
                      goto LABEL_133;
                    }

                    if (v21 == 8)
                    {
                      goto LABEL_287;
                    }

                    if (v24 != 8)
                    {
                      __break(1u);
LABEL_287:
                      __break(1u);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
    goto LABEL_289;
  }

  if (v43 >= v44)
  {
    do
    {
      if (!v43)
      {
        goto LABEL_266;
      }

      v60 = *(v39 + 2 * v43 + 30);
      v61 = *(v42 + 2 * v43 + 30);
      if (v61 < v60)
      {
        goto LABEL_61;
      }

      --v43;
    }

    while (v60 >= v61);
  }

  NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
  v63 = v62;
  NSDecimal.asVariableLengthInteger()(v36, *(&v36 + 1), v37);
  v65 = v64;
  v66 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v50 = v66;
  *(v66 + 32) = 0;
  v67 = (v66 + 32);
  *(v66 + 16) = 8;
  *(v66 + 40) = 0;
  v21 = *(v63 + 16);
  v24 = *(v65 + 16);
  if (v24 >= v21)
  {
    v68 = *(v63 + 16);
  }

  else
  {
    v68 = *(v65 + 16);
  }

  if (v68)
  {
    if (!v21)
    {
      goto LABEL_297;
    }

    if (!v24)
    {
      goto LABEL_298;
    }

    v69 = ((*(v63 + 32) | 0x10000) - *(v65 + 32)) >> 16;
    *v67 = *(v63 + 32) - *(v65 + 32);
    if (v68 != 1)
    {
      if (v21 == 1)
      {
        goto LABEL_297;
      }

      if (v24 == 1)
      {
        goto LABEL_298;
      }

      v70 = v69 + *(v63 + 34) - *(v65 + 34) + 0xFFFF;
      v69 = HIWORD(v70);
      *(v66 + 34) = v70;
      if (v68 != 2)
      {
        if (v21 == 2)
        {
          goto LABEL_297;
        }

        if (v24 == 2)
        {
          goto LABEL_298;
        }

        v71 = v69 + *(v63 + 36) - *(v65 + 36) + 0xFFFF;
        v69 = HIWORD(v71);
        *(v66 + 36) = v71;
        if (v68 != 3)
        {
          if (v21 == 3)
          {
            goto LABEL_297;
          }

          if (v24 == 3)
          {
            goto LABEL_298;
          }

          v72 = v69 + *(v63 + 38) - *(v65 + 38) + 0xFFFF;
          v69 = HIWORD(v72);
          *(v66 + 38) = v72;
          if (v68 != 4)
          {
            if (v21 == 4)
            {
              goto LABEL_297;
            }

            if (v24 == 4)
            {
              goto LABEL_298;
            }

            v73 = v69 + *(v63 + 40) - *(v65 + 40) + 0xFFFF;
            v69 = HIWORD(v73);
            *(v66 + 40) = v73;
            if (v68 != 5)
            {
              if (v21 == 5)
              {
                goto LABEL_297;
              }

              if (v24 == 5)
              {
                goto LABEL_298;
              }

              v74 = v69 + *(v63 + 42) - *(v65 + 42) + 0xFFFF;
              v69 = HIWORD(v74);
              *(v66 + 42) = v74;
              if (v68 != 6)
              {
                if (v21 == 6)
                {
                  goto LABEL_297;
                }

                if (v24 == 6)
                {
                  goto LABEL_298;
                }

                v75 = v69 + *(v63 + 44) - *(v65 + 44) + 0xFFFF;
                v69 = HIWORD(v75);
                *(v66 + 44) = v75;
                if (v68 != 7)
                {
                  if (v21 == 7)
                  {
                    goto LABEL_297;
                  }

                  if (v24 == 7)
                  {
                    goto LABEL_298;
                  }

                  v76 = v69 + *(v63 + 46) - *(v65 + 46) + 0xFFFF;
                  *(v66 + 46) = v76;
                  if (v68 != 8)
                  {
                    goto LABEL_294;
                  }

                  v69 = HIWORD(v76);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v69 = 1;
  }

  if (v24 >= v21)
  {
    goto LABEL_212;
  }

  v110 = v63 + 32;
  do
  {
    if (v69)
    {
      while (v68 < v21)
      {
        if (v68 >= *(v66 + 16))
        {
          goto LABEL_269;
        }

        v67[v68] = *(v110 + 2 * v68);
        if (++v68 >= v21)
        {
          goto LABEL_212;
        }
      }

LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    if (v68 >= *(v66 + 16))
    {
      goto LABEL_270;
    }

    v69 = (*(v110 + 2 * v68) + 0xFFFF) >> 16;
    v67[v68] = *(v110 + 2 * v68) - 1;
    ++v68;
  }

  while (v21 != v68);
  v68 = v21;
LABEL_212:
  if (v68 >= v24)
  {
LABEL_219:
    if (v69)
    {
      for (j = *(v66 + 16); j; *(v66 + 16) = --j)
      {
        if (*(v66 + 30 + 2 * j))
        {
          break;
        }
      }

      v114 = *(v50 + 16);
      if (HIDWORD(v114))
      {
        goto LABEL_278;
      }

      _So9NSDecimala__length_setter(v114, &v129);
      v127 = v132;
      v88 = v133;
LABEL_225:
      v128 = v88;
      v115 = _So9NSDecimala__isNegative_getter(&v127);
      _So9NSDecimala__isNegative_setter(v115, &v129);
LABEL_226:
      NSDecimal.copyVariableLengthInteger(_:)(v50);
      v34 = v116;

      if (!v116)
      {
        _So9NSDecimala__isCompact_setter_0(0, &v129);
        NSDecimal.compact()();
        a3 = *(&v129 + 1);
        a2 = v129;
        a4 = v130;
        goto LABEL_57;
      }

      goto LABEL_55;
    }

    goto LABEL_238;
  }

  if (v68 <= v24)
  {
    v111 = v24;
  }

  else
  {
    v111 = v68;
  }

  while (1)
  {
    if (v111 == v68)
    {
      goto LABEL_260;
    }

    if (v68 >= *(v66 + 16))
    {
      break;
    }

    v112 = v69 + (*(v65 + 32 + 2 * v68) ^ 0xFFFF);
    v69 = HIWORD(v112);
    v67[v68++] = v112;
    if (v24 == v68)
    {
      goto LABEL_219;
    }
  }

LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:

  a2 = 0;
  a3 = 0;
  a4 = 0;
LABEL_57:
  *a1 = a2;
  a1[1] = a3;
  *(a1 + 4) = a4;
}

uint64_t NSDecimal.distance(to:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v121 = *MEMORY[0x1E69E9840];
  *&v119 = a4;
  *(&v119 + 1) = a5;
  v120 = a6;
  *v118 = v119;
  *&v118[16] = a6;
  if (_So9NSDecimala__length_getter(v118))
  {
    *v118 = v119;
    *&v118[16] = v120;
    isNegative_getter = _So9NSDecimala__isNegative_getter(v118);
    _So9NSDecimala__isNegative_setter(isNegative_getter ^ 1u, &v119);
    v7 = *(&v119 + 1);
    v8 = v119;
    v6 = v120;
  }

  *v118 = a1;
  *&v118[8] = a2;
  *&v118[16] = a3;
  if (!_So9NSDecimala__length_getter(v118) && (*v118 = a1, *&v118[8] = a2, *&v118[16] = a3, _So9NSDecimala__isNegative_getter(v118)) || (*v118 = v8, *&v118[8] = v7, *&v118[16] = v6, !_So9NSDecimala__length_getter(v118)) && (*v118 = v8, *&v118[8] = v7, *&v118[16] = v6, _So9NSDecimala__isNegative_getter(v118)))
  {
LABEL_54:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v31 = swift_allocError();
    *v32 = 0;
    swift_willThrow();
    goto LABEL_55;
  }

  *v118 = a1;
  *&v118[8] = a2;
  *&v118[16] = a3;
  if (!_So9NSDecimala__length_getter(v118))
  {
    return v8;
  }

  *v118 = v8;
  *&v118[8] = v7;
  *&v118[16] = v6;
  if (!_So9NSDecimala__length_getter(v118))
  {
    return a1;
  }

  *v118 = a1;
  *&v118[8] = a2;
  *&v118[16] = a3;
  *&v116 = v8;
  *(&v116 + 1) = v7;
  v117 = v6;
  specialized static NSDecimal._normalize(a:b:roundingMode:)(v118, &v116);
  v114 = *v118;
  v115 = *&v118[16];
  if (!_So9NSDecimala__length_getter(&v114))
  {
    return v116;
  }

  v114 = v116;
  v115 = v117;
  if (!_So9NSDecimala__length_getter(&v114))
  {
    return *v118;
  }

  v114 = *v118;
  v115 = *&v118[16];
  v112 = *v118;
  v113 = *&v118[16];
  v13 = _So9NSDecimala__isNegative_getter(&v112);
  v112 = v116;
  v113 = v117;
  if (v13 != _So9NSDecimala__isNegative_getter(&v112))
  {
    v34 = *v118;
    v35 = *&v118[8];
    v36 = *&v118[16];
    NSDecimal.asVariableLengthInteger()(*v118, *&v118[8], *&v118[16]);
    v38 = v37;
    v39 = v116;
    v40 = v117;
    NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
    v18 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v38, v41);

    switch(v18)
    {
      case -1:
        NSDecimal.asVariableLengthInteger()(v39, *(&v39 + 1), v40);
        v18 = v43;
        NSDecimal.asVariableLengthInteger()(v34, v35, v36);
        v45 = v44;
        v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v47 = v46;
        *(v46 + 32) = 0;
        v48 = (v46 + 32);
        *(v46 + 16) = 8;
        *(v46 + 40) = 0;
        v24 = *(v18 + 16);
        v23 = *(v45 + 16);
        if (v23 >= v24)
        {
          v49 = *(v18 + 16);
        }

        else
        {
          v49 = *(v45 + 16);
        }

        if (v49)
        {
          if (!v24)
          {
            goto LABEL_286;
          }

          if (!v23)
          {
            goto LABEL_287;
          }

          v50 = ((*(v18 + 32) | 0x10000) - *(v45 + 32)) >> 16;
          *v48 = *(v18 + 32) - *(v45 + 32);
          if (v49 != 1)
          {
            if (v24 == 1)
            {
              goto LABEL_286;
            }

            if (v23 == 1)
            {
              goto LABEL_287;
            }

            v51 = v50 + *(v18 + 34) - *(v45 + 34) + 0xFFFF;
            v50 = HIWORD(v51);
            *(v46 + 34) = v51;
            if (v49 != 2)
            {
              if (v24 == 2)
              {
                goto LABEL_286;
              }

              if (v23 == 2)
              {
                goto LABEL_287;
              }

              v52 = v50 + *(v18 + 36) - *(v45 + 36) + 0xFFFF;
              v50 = HIWORD(v52);
              *(v46 + 36) = v52;
              if (v49 != 3)
              {
                if (v24 == 3)
                {
                  goto LABEL_286;
                }

                if (v23 == 3)
                {
                  goto LABEL_287;
                }

                v53 = v50 + *(v18 + 38) - *(v45 + 38) + 0xFFFF;
                v50 = HIWORD(v53);
                *(v46 + 38) = v53;
                if (v49 != 4)
                {
                  if (v24 == 4)
                  {
                    goto LABEL_286;
                  }

                  if (v23 == 4)
                  {
                    goto LABEL_287;
                  }

                  v54 = v50 + *(v18 + 40) - *(v45 + 40) + 0xFFFF;
                  v50 = HIWORD(v54);
                  *(v46 + 40) = v54;
                  if (v49 != 5)
                  {
                    if (v24 == 5)
                    {
                      goto LABEL_286;
                    }

                    if (v23 == 5)
                    {
                      goto LABEL_287;
                    }

                    v55 = v50 + *(v18 + 42) - *(v45 + 42) + 0xFFFF;
                    v50 = HIWORD(v55);
                    *(v46 + 42) = v55;
                    if (v49 != 6)
                    {
                      if (v24 == 6)
                      {
                        goto LABEL_286;
                      }

                      if (v23 == 6)
                      {
                        goto LABEL_287;
                      }

                      v56 = v50 + *(v18 + 44) - *(v45 + 44) + 0xFFFF;
                      v50 = HIWORD(v56);
                      *(v46 + 44) = v56;
                      if (v49 != 7)
                      {
                        if (v24 == 7)
                        {
                          goto LABEL_286;
                        }

                        if (v23 == 7)
                        {
                          goto LABEL_287;
                        }

                        v57 = v50 + *(v18 + 46) - *(v45 + 46) + 0xFFFF;
                        *(v46 + 46) = v57;
                        if (v49 != 8)
                        {
                          goto LABEL_283;
                        }

                        v50 = HIWORD(v57);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v50 = 1;
        }

        if (v23 >= v24)
        {
          goto LABEL_186;
        }

        v89 = v18 + 32;
        while (!v50)
        {
          if (v49 >= *(v46 + 16))
          {
            goto LABEL_265;
          }

          v50 = (*(v89 + 2 * v49) + 0xFFFF) >> 16;
          v48[v49] = *(v89 + 2 * v49) - 1;
          if (v24 == ++v49)
          {
            v49 = v24;
LABEL_186:
            if (v49 < v23)
            {
              if (v49 <= v23)
              {
                v90 = v23;
              }

              else
              {
                v90 = v49;
              }

              while (v90 != v49)
              {
                if (v49 >= *(v46 + 16))
                {
                  goto LABEL_257;
                }

                v91 = v50 + (*(v45 + 32 + 2 * v49) ^ 0xFFFF);
                v50 = HIWORD(v91);
                v48[v49++] = v91;
                if (v23 == v49)
                {
                  goto LABEL_193;
                }
              }

LABEL_255:
              __break(1u);
              goto LABEL_256;
            }

LABEL_193:
            if (v50)
            {
              for (i = *(v46 + 16); i; *(v46 + 16) = --i)
              {
                if (*(v46 + 30 + 2 * i))
                {
                  break;
                }
              }

              v93 = *(v47 + 16);
              if (!HIDWORD(v93))
              {
                _So9NSDecimala__length_setter(v93, &v114);
                v112 = v116;
                v94 = v117;
LABEL_222:
                v113 = v94;
                v100 = _So9NSDecimala__isNegative_getter(&v112);
                _So9NSDecimala__isNegative_setter(v100, &v114);
                goto LABEL_223;
              }

LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
LABEL_273:
              __break(1u);
LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
            }

LABEL_235:

            lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
            v31 = swift_allocError();
            *v105 = 0;
            swift_willThrow();

LABEL_55:
            *&v118[4] = 0uLL;
            _So9NSDecimala__exponent_setter(0, v118);
            _So9NSDecimala__length_setter(0, v118);
            _So9NSDecimala__isNegative_setter(1, v118);
            _So9NSDecimala__isCompact_setter_0(0, v118);
            _So9NSDecimala__reserved_setter(v118);

            return *v118;
          }
        }

        while (1)
        {
          if (v49 >= v24)
          {
            goto LABEL_261;
          }

          if (v49 >= *(v46 + 16))
          {
            break;
          }

          v48[v49] = *(v89 + 2 * v49);
          if (++v49 >= v24)
          {
            goto LABEL_186;
          }
        }

        break;
      case 0:
        return 0;
      case 1:
        NSDecimal.asVariableLengthInteger()(v34, v35, v36);
        v18 = v58;
        NSDecimal.asVariableLengthInteger()(v39, *(&v39 + 1), v40);
        v60 = v59;
        v61 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v47 = v61;
        *(v61 + 32) = 0;
        v62 = (v61 + 32);
        *(v61 + 16) = 8;
        *(v61 + 40) = 0;
        v24 = *(v18 + 16);
        v23 = *(v60 + 16);
        if (v23 >= v24)
        {
          v63 = *(v18 + 16);
        }

        else
        {
          v63 = *(v60 + 16);
        }

        if (v63)
        {
          if (!v24)
          {
            goto LABEL_291;
          }

          if (!v23)
          {
            goto LABEL_292;
          }

          v64 = ((*(v18 + 32) | 0x10000) - *(v60 + 32)) >> 16;
          *v62 = *(v18 + 32) - *(v60 + 32);
          if (v63 != 1)
          {
            if (v24 == 1)
            {
              goto LABEL_291;
            }

            if (v23 == 1)
            {
              goto LABEL_292;
            }

            v65 = v64 + *(v18 + 34) - *(v60 + 34) + 0xFFFF;
            v64 = HIWORD(v65);
            *(v61 + 34) = v65;
            if (v63 != 2)
            {
              if (v24 == 2)
              {
                goto LABEL_291;
              }

              if (v23 == 2)
              {
                goto LABEL_292;
              }

              v66 = v64 + *(v18 + 36) - *(v60 + 36) + 0xFFFF;
              v64 = HIWORD(v66);
              *(v61 + 36) = v66;
              if (v63 != 3)
              {
                if (v24 == 3)
                {
                  goto LABEL_291;
                }

                if (v23 == 3)
                {
                  goto LABEL_292;
                }

                v67 = v64 + *(v18 + 38) - *(v60 + 38) + 0xFFFF;
                v64 = HIWORD(v67);
                *(v61 + 38) = v67;
                if (v63 != 4)
                {
                  if (v24 == 4)
                  {
                    goto LABEL_291;
                  }

                  if (v23 == 4)
                  {
                    goto LABEL_292;
                  }

                  v68 = v64 + *(v18 + 40) - *(v60 + 40) + 0xFFFF;
                  v64 = HIWORD(v68);
                  *(v61 + 40) = v68;
                  if (v63 != 5)
                  {
                    if (v24 == 5)
                    {
                      goto LABEL_291;
                    }

                    if (v23 == 5)
                    {
                      goto LABEL_292;
                    }

                    v69 = v64 + *(v18 + 42) - *(v60 + 42) + 0xFFFF;
                    v64 = HIWORD(v69);
                    *(v61 + 42) = v69;
                    if (v63 != 6)
                    {
                      if (v24 == 6)
                      {
                        goto LABEL_291;
                      }

                      if (v23 == 6)
                      {
                        goto LABEL_292;
                      }

                      v70 = v64 + *(v18 + 44) - *(v60 + 44) + 0xFFFF;
                      v64 = HIWORD(v70);
                      *(v61 + 44) = v70;
                      if (v63 != 7)
                      {
                        if (v24 == 7)
                        {
                          goto LABEL_291;
                        }

                        if (v23 == 7)
                        {
                          goto LABEL_292;
                        }

                        v71 = v64 + *(v18 + 46) - *(v60 + 46) + 0xFFFF;
                        *(v61 + 46) = v71;
                        if (v63 != 8)
                        {
                          goto LABEL_288;
                        }

                        v64 = HIWORD(v71);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v64 = 1;
        }

        if (v23 >= v24)
        {
          goto LABEL_209;
        }

        v95 = v18 + 32;
        do
        {
          if (v64)
          {
            while (v63 < v24)
            {
              if (v63 >= *(v61 + 16))
              {
                goto LABEL_264;
              }

              v62[v63] = *(v95 + 2 * v63);
              if (++v63 >= v24)
              {
                goto LABEL_209;
              }
            }

            goto LABEL_262;
          }

          if (v63 >= *(v61 + 16))
          {
            goto LABEL_266;
          }

          v64 = (*(v95 + 2 * v63) + 0xFFFF) >> 16;
          v62[v63] = *(v95 + 2 * v63) - 1;
          ++v63;
        }

        while (v24 != v63);
        v63 = v24;
LABEL_209:
        if (v63 >= v23)
        {
LABEL_216:
          if (v64)
          {
            for (j = *(v61 + 16); j; *(v61 + 16) = --j)
            {
              if (*(v61 + 30 + 2 * j))
              {
                break;
              }
            }

            v99 = *(v47 + 16);
            if (!HIDWORD(v99))
            {
              _So9NSDecimala__length_setter(v99, &v114);
              v112 = *v118;
              v94 = *&v118[16];
              goto LABEL_222;
            }

            goto LABEL_272;
          }

          goto LABEL_235;
        }

        if (v63 <= v23)
        {
          v96 = v23;
        }

        else
        {
          v96 = v63;
        }

        while (v96 != v63)
        {
          if (v63 >= *(v61 + 16))
          {
            goto LABEL_258;
          }

          v97 = v64 + (*(v60 + 32 + 2 * v63) ^ 0xFFFF);
          v64 = HIWORD(v97);
          v62[v63++] = v97;
          if (v23 == v63)
          {
            goto LABEL_216;
          }
        }

LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
        break;
      default:
        goto LABEL_293;
    }

    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v112 = *v118;
  v113 = *&v118[16];
  v14 = _So9NSDecimala__isNegative_getter(&v112);
  _So9NSDecimala__isNegative_setter(v14, &v114);
  NSDecimal.asVariableLengthInteger()(*v118, *&v118[8], *&v118[16]);
  v16 = v15;
  NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
  v18 = v17;
  v19 = *(v16 + 16);
  v20 = *(v17 + 16);
  if (v20 >= v19)
  {
    v21 = *(v16 + 16);
  }

  else
  {
    v21 = *(v17 + 16);
  }

  v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v22 + 16) = 9;
  *(v22 + 32) = 0;
  v25 = (v22 + 32);
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  if (!v21)
  {
    if (v19)
    {
      goto LABEL_64;
    }

    LODWORD(v23) = 0;
LABEL_132:
    if (v21 >= v20)
    {
LABEL_141:
      *&v112 = v22;
      if (!v23)
      {
        goto LABEL_152;
      }

      if (v21 <= 9)
      {
        if (v21 < *(v22 + 16))
        {
          v25[v21] = 1;
          *&v112 = v22;
          ++v21;
          goto LABEL_152;
        }

        goto LABEL_270;
      }

LABEL_294:

      lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
      swift_allocError();
      *v111 = 0;
      swift_willThrow();

      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (!v23)
    {
      goto LABEL_145;
    }

    if (v21 < *(v22 + 16))
    {
      LODWORD(v23) = (*(v18 + 32 + 2 * v21) + 1) >> 16;
      v25[v21] = *(v18 + 32 + 2 * v21) + 1;
      if (v21 + 1 != v20)
      {
        v72 = 2 * v21 + 34;
        v73 = (v22 + v72);
        v74 = (v18 + v72);
        ++v21;
        while (v23)
        {
          if (v21 >= *(v22 + 16))
          {
            goto LABEL_267;
          }

          v75 = *v74++;
          LODWORD(v23) = (v75 + 1) >> 16;
          *v73++ = v75 + 1;
          if (v20 == ++v21)
          {
            goto LABEL_140;
          }
        }

        goto LABEL_145;
      }

LABEL_140:
      v21 = v20;
      goto LABEL_141;
    }

    goto LABEL_267;
  }

  if (!v19)
  {
    goto LABEL_281;
  }

  if (!v20)
  {
    goto LABEL_282;
  }

  v24 = *(v16 + 32) + *(v18 + 32);
  v23 = WORD1(v24);
  *v25 = *(v16 + 32) + *(v18 + 32);
  if (v21 == 1)
  {
    goto LABEL_42;
  }

  if (v19 == 1)
  {
    goto LABEL_281;
  }

  if (v20 == 1)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 34) + *(v18 + 34);
  v23 = WORD1(v24);
  *(v22 + 34) = v24;
  if (v21 == 2)
  {
    goto LABEL_42;
  }

  if (v19 == 2)
  {
    goto LABEL_281;
  }

  if (v20 == 2)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 36) + *(v18 + 36);
  v23 = WORD1(v24);
  *(v22 + 36) = v24;
  if (v21 == 3)
  {
    goto LABEL_42;
  }

  if (v19 == 3)
  {
    goto LABEL_281;
  }

  if (v20 == 3)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 38) + *(v18 + 38);
  v23 = WORD1(v24);
  *(v22 + 38) = v24;
  if (v21 == 4)
  {
    goto LABEL_42;
  }

  if (v19 == 4)
  {
    goto LABEL_281;
  }

  if (v20 == 4)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 40) + *(v18 + 40);
  v23 = WORD1(v24);
  *(v22 + 40) = v24;
  if (v21 == 5)
  {
    goto LABEL_42;
  }

  if (v19 == 5)
  {
    goto LABEL_281;
  }

  if (v20 == 5)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 42) + *(v18 + 42);
  v23 = WORD1(v24);
  *(v22 + 42) = v24;
  if (v21 == 6)
  {
    goto LABEL_42;
  }

  if (v19 == 6)
  {
    goto LABEL_281;
  }

  if (v20 == 6)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 44) + *(v18 + 44);
  v23 = WORD1(v24);
  *(v22 + 44) = v24;
  if (v21 == 7)
  {
    goto LABEL_42;
  }

  if (v19 == 7)
  {
    goto LABEL_281;
  }

  if (v20 == 7)
  {
    goto LABEL_282;
  }

  v24 = v23 + *(v16 + 46) + *(v18 + 46);
  v23 = WORD1(v24);
  *(v22 + 46) = v24;
  if (v21 == 8)
  {
    goto LABEL_42;
  }

  if (v19 == 8)
  {
    goto LABEL_281;
  }

  if (v20 == 8)
  {
    goto LABEL_282;
  }

  v26 = *(v18 + 48);
  v24 = v23 + *(v16 + 48) + v26;
  *(v22 + 48) = v23 + *(v16 + 48) + v26;
  if (v21 != 9)
  {
    if (v19 == 9)
    {
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    if (v20 != 9)
    {
      __break(1u);
      goto LABEL_281;
    }

LABEL_282:
    __break(1u);
LABEL_283:
    if (v24 != 8)
    {
      if (v23 != 8)
      {
        __break(1u);
        goto LABEL_286;
      }

LABEL_287:
      __break(1u);
LABEL_288:
      if (v24 != 8)
      {
        if (v23 != 8)
        {
          __break(1u);
          goto LABEL_291;
        }

LABEL_292:
        __break(1u);
LABEL_293:
        type metadata accessor for NSComparisonResult(0);
        *&v112 = v18;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_294;
      }

LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  LODWORD(v23) = WORD1(v24);
LABEL_42:
  if (v20 >= v19)
  {
    goto LABEL_132;
  }

  if (v24 >= 0x10000)
  {
    if (v21 > 8)
    {
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    LODWORD(v23) = (*(v16 + 32 + 2 * v21) + 1) >> 16;
    v25[v21] = *(v16 + 32 + 2 * v21) + 1;
    if (v21 + 1 != v19)
    {
      v27 = 2 * v21 + 34;
      v28 = (v22 + v27);
      v29 = (v16 + v27);
      ++v21;
      while (v23)
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_268;
        }

        v30 = *v29++;
        LODWORD(v23) = (v30 + 1) >> 16;
        *v28++ = v30 + 1;
        if (v19 == ++v21)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_64;
    }

LABEL_50:
    v21 = v19;
    goto LABEL_132;
  }

LABEL_64:
  if (v21 <= v19)
  {
    v42 = v19;
  }

  else
  {
    v42 = v21;
  }

  do
  {
    if (v42 == v21)
    {
      goto LABEL_251;
    }

    if (v21 >= *(v22 + 16))
    {
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    *(v22 + 2 * v21 + 32) = *(v16 + 32 + 2 * v21);
    ++v21;
  }

  while (v21 < v19);
  if (v21 < v20)
  {
LABEL_145:
    if (v21 <= v20)
    {
      v76 = v20;
    }

    else
    {
      v76 = v21;
    }

    while (v76 != v21)
    {
      if (v21 >= *(v22 + 16))
      {
        goto LABEL_254;
      }

      *(v22 + 2 * v21 + 32) = *(v18 + 32 + 2 * v21);
      if (++v21 >= v20)
      {
        goto LABEL_151;
      }
    }

    goto LABEL_253;
  }

LABEL_151:
  *&v112 = v22;
LABEL_152:
  v77 = *(v22 + 16);
  if (__OFSUB__(v77, v21))
  {
    goto LABEL_269;
  }

  specialized RangeReplaceableCollection<>.removeLast(_:)(v77 - v21);

  v78 = v112;
  v79 = *(v112 + 16);
  if (v79 <= 8)
  {
    v47 = v112;
    goto LABEL_164;
  }

  if (v79 == 9)
  {
    v80 = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    v47 = v78;
    goto LABEL_156;
  }

  v87 = 0;
  LODWORD(v81) = 0;
  LODWORD(v82) = 0;
  v83 = v78;
  do
  {
    if (v81)
    {
      v82 = 1;
    }

    else
    {
      v82 = v82;
    }

    v47 = specialized static NSDecimal._integerDivideByShort(_:_:)(v83, 0x2710u);
    v81 = v88;

    v80 = v87 + 4;
    if (__OFADD__(v87, 4))
    {
      goto LABEL_260;
    }

    v86 = *(v47 + 16);
    v87 += 4;
    v83 = v47;
  }

  while (v86 > 9);
  if (v86 == 9)
  {
LABEL_156:
    v83 = v47;
    do
    {
      if (v81)
      {
        v82 = 1;
      }

      else
      {
        v82 = v82;
      }

      v47 = specialized static NSDecimal._integerDivideByShort(_:_:)(v83, 0xAu);
      v81 = v84;

      v85 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_259;
      }

      v86 = *(v47 + 16);
      ++v80;
      v83 = v47;
    }

    while (v86 > 8);
    v80 = v85;
  }

  if (!v82)
  {
    if (v81)
    {
      goto LABEL_227;
    }

    goto LABEL_242;
  }

  if (!v81 || v81 == 5)
  {
    v81 = (v81 + 1);
  }

LABEL_227:
  if (v81 > 4)
  {
    if (v86)
    {
      v81 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v81 + 16) = v86;
      bzero((v81 + 32), 2 * v86);
      v102 = 0;
      v103 = 1;
      do
      {
        v104 = v103 + *(v47 + 32 + 2 * v102);
        v103 = HIWORD(v104);
        *(v81 + 2 * v102++ + 32) = v104;
      }

      while (v86 != v102);
      v82 = v86;
      if (v104 < 0x10000)
      {
LABEL_241:

        goto LABEL_242;
      }
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
      v82 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v82 == 1)
      {
        goto LABEL_235;
      }
    }

    v106 = *(v81 + 24);
    v83 = v82 + 1;
    if (v82 >= v106 >> 1)
    {
      goto LABEL_277;
    }

    goto LABEL_237;
  }

LABEL_242:

  while (1)
  {
    v112 = v114;
    v113 = v115;
    v108 = _So9NSDecimala__exponent_getter(&v112);
    if (v80 < 0xFFFFFFFF80000000)
    {
      goto LABEL_273;
    }

    if (v80 > 0x7FFFFFFF)
    {
      goto LABEL_274;
    }

    if (__OFADD__(v108, v80))
    {
      goto LABEL_275;
    }

    if (v108 + v80 > 127)
    {

      goto LABEL_54;
    }

    v112 = v114;
    v113 = v115;
    v109 = _So9NSDecimala__exponent_getter(&v112);
    v107 = __OFADD__(v109, v80);
    v110 = (v109 + v80);
    if (!v107)
    {
      break;
    }

    __break(1u);
LABEL_277:
    v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v83, 1, v81);
LABEL_237:
    *(v81 + 16) = v83;
    *(v81 + 2 * v82 + 32) = 1;
    if (*(v81 + 16) >= v86)
    {
      goto LABEL_241;
    }

    v86 = 0;
    v83 = specialized static NSDecimal._integerDivideByShort(_:_:)(v81, 0xAu);

    v107 = __OFADD__(v80++, 1);
    if (v107)
    {
      __break(1u);
      goto LABEL_241;
    }
  }

  _So9NSDecimala__exponent_setter(v110, &v114);
  v79 = *(v47 + 16);
  if (HIDWORD(v79))
  {
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

LABEL_164:
  _So9NSDecimala__length_setter(v79, &v114);
LABEL_223:
  NSDecimal.copyVariableLengthInteger(_:)(v47);
  v31 = v101;

  if (v101)
  {
    goto LABEL_55;
  }

  _So9NSDecimala__isCompact_setter_0(0, &v114);
  NSDecimal.compact()();
  return v114;
}

uint64_t specialized NSDecimal.init(string:locale:)(unint64_t a1, unint64_t a2, void *a3)
{
  if (*a3 && (v5 = a3[1], ObjectType = swift_getObjectType(), v7 = (*(v5 + 224))(ObjectType, v5), v8))
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {

    v10 = 0xE100000000000000;
    v9 = 46;
  }

  specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a2, v9, v10, 0, &v12);

  if (v13)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}

char *specialized NSDecimal.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE10CodingKeys33_8BAFFE19353E871E4B5E8D714CF82099LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.CodingKeys and conformance NSDecimal.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v26[0] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v26[0] = 1;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v26[0] = 2;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v26[0] = 3;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v19) = 4;
    KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
    v18 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v17 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v18 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v16 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v18 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v15 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v18 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    LODWORD(v18) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v14 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    LODWORD(v14) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v13 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    LODWORD(v13) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v12 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    LODWORD(v12) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v11[1] = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    WORD2(v19) = v17;
    HIWORD(v19) = v16;
    v20 = v15;
    v21 = v18;
    v22 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v10;
    _So9NSDecimala__exponent_setter(v7, &v19);
    _So9NSDecimala__length_setter(v8, &v19);
    _So9NSDecimala__isNegative_setter(v30 & 1, &v19);
    _So9NSDecimala__isCompact_setter_0(v29 & 1, &v19);
    _So9NSDecimala__reserved_setter(&v19);
    (*(v4 + 8))(v6, v3);
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

void specialized static NSDecimal.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v120 = *MEMORY[0x1E69E9840];
  *&v118 = a2;
  *(&v118 + 1) = a3;
  v119 = a4;
  v116 = v118;
  v117 = a4;
  if (_So9NSDecimala__length_getter(&v116))
  {
    v116 = v118;
    v117 = v119;
    isNegative_getter = _So9NSDecimala__isNegative_getter(&v116);
    _So9NSDecimala__isNegative_setter(isNegative_getter ^ 1u, &v118);
  }

  v116 = *a1;
  v117 = *(a1 + 16);
  if (!_So9NSDecimala__length_getter(&v116) && (v116 = *a1, v117 = *(a1 + 16), _So9NSDecimala__isNegative_getter(&v116)) || (v116 = v118, v117 = v119, !_So9NSDecimala__length_getter(&v116)) && (v116 = v118, v117 = v119, _So9NSDecimala__isNegative_getter(&v116)))
  {
LABEL_54:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();
    goto LABEL_55;
  }

  v114 = *a1;
  v115 = *(a1 + 16);
  if (!_So9NSDecimala__length_getter(&v114))
  {
    v116 = v118;
    v27 = v119;
    goto LABEL_58;
  }

  v114 = v118;
  v115 = v119;
  if (!_So9NSDecimala__length_getter(&v114))
  {
    v116 = *a1;
    v27 = *(a1 + 16);
    goto LABEL_58;
  }

  v114 = *a1;
  v115 = *(a1 + 16);
  v112 = v118;
  v113 = v119;
  specialized static NSDecimal._normalize(a:b:roundingMode:)(&v114, &v112);
  v109 = v114;
  v110 = v115;
  if (!_So9NSDecimala__length_getter(&v109))
  {
    v116 = v112;
    v27 = v113;
    goto LABEL_58;
  }

  v109 = v112;
  v110 = v113;
  if (!_So9NSDecimala__length_getter(&v109))
  {
    v116 = v114;
    v27 = v115;
    goto LABEL_58;
  }

  v109 = v114;
  v110 = v115;
  v107 = v114;
  v108 = v115;
  v6 = _So9NSDecimala__isNegative_getter(&v107);
  v107 = v112;
  v108 = v113;
  if (v6 != _So9NSDecimala__isNegative_getter(&v107))
  {
    v28 = v115;
    v104 = *(&v114 + 1);
    v105 = v114;
    NSDecimal.asVariableLengthInteger()(v114, *(&v114 + 1), v115);
    v30 = v29;
    v31 = v112;
    v32 = v113;
    NSDecimal.asVariableLengthInteger()(v112, *(&v112 + 1), v113);
    v11 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v30, v33);

    switch(v11)
    {
      case -1:
        NSDecimal.asVariableLengthInteger()(v31, *(&v31 + 1), v32);
        v11 = v35;
        NSDecimal.asVariableLengthInteger()(v105, v104, v28);
        v37 = v36;
        v38 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v39 = v38;
        *(v38 + 32) = 0;
        v40 = (v38 + 32);
        *(v38 + 16) = 8;
        *(v38 + 40) = 0;
        v17 = *(v11 + 16);
        v16 = *(v37 + 16);
        if (v16 >= v17)
        {
          v41 = *(v11 + 16);
        }

        else
        {
          v41 = *(v37 + 16);
        }

        if (v41)
        {
          if (!v17)
          {
            goto LABEL_287;
          }

          if (!v16)
          {
            goto LABEL_288;
          }

          v42 = ((*(v11 + 32) | 0x10000) - *(v37 + 32)) >> 16;
          *v40 = *(v11 + 32) - *(v37 + 32);
          if (v41 != 1)
          {
            if (v17 == 1)
            {
              goto LABEL_287;
            }

            if (v16 == 1)
            {
              goto LABEL_288;
            }

            v43 = v42 + *(v11 + 34) - *(v37 + 34) + 0xFFFF;
            v42 = HIWORD(v43);
            *(v38 + 34) = v43;
            if (v41 != 2)
            {
              if (v17 == 2)
              {
                goto LABEL_287;
              }

              if (v16 == 2)
              {
                goto LABEL_288;
              }

              v44 = v42 + *(v11 + 36) - *(v37 + 36) + 0xFFFF;
              v42 = HIWORD(v44);
              *(v38 + 36) = v44;
              if (v41 != 3)
              {
                if (v17 == 3)
                {
                  goto LABEL_287;
                }

                if (v16 == 3)
                {
                  goto LABEL_288;
                }

                v45 = v42 + *(v11 + 38) - *(v37 + 38) + 0xFFFF;
                v42 = HIWORD(v45);
                *(v38 + 38) = v45;
                if (v41 != 4)
                {
                  if (v17 == 4)
                  {
                    goto LABEL_287;
                  }

                  if (v16 == 4)
                  {
                    goto LABEL_288;
                  }

                  v46 = v42 + *(v11 + 40) - *(v37 + 40) + 0xFFFF;
                  v42 = HIWORD(v46);
                  *(v38 + 40) = v46;
                  if (v41 != 5)
                  {
                    if (v17 == 5)
                    {
                      goto LABEL_287;
                    }

                    if (v16 == 5)
                    {
                      goto LABEL_288;
                    }

                    v47 = v42 + *(v11 + 42) - *(v37 + 42) + 0xFFFF;
                    v42 = HIWORD(v47);
                    *(v38 + 42) = v47;
                    if (v41 != 6)
                    {
                      if (v17 == 6)
                      {
                        goto LABEL_287;
                      }

                      if (v16 == 6)
                      {
                        goto LABEL_288;
                      }

                      v48 = v42 + *(v11 + 44) - *(v37 + 44) + 0xFFFF;
                      v42 = HIWORD(v48);
                      *(v38 + 44) = v48;
                      if (v41 != 7)
                      {
                        if (v17 == 7)
                        {
                          goto LABEL_287;
                        }

                        if (v16 == 7)
                        {
                          goto LABEL_288;
                        }

                        v49 = v42 + *(v11 + 46) - *(v37 + 46) + 0xFFFF;
                        *(v38 + 46) = v49;
                        if (v41 != 8)
                        {
                          goto LABEL_284;
                        }

                        v42 = HIWORD(v49);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v42 = 1;
        }

        if (v16 >= v17)
        {
          goto LABEL_187;
        }

        v81 = v11 + 32;
        while (!v42)
        {
          if (v41 >= *(v38 + 16))
          {
            goto LABEL_266;
          }

          v42 = (*(v81 + 2 * v41) + 0xFFFF) >> 16;
          v40[v41] = *(v81 + 2 * v41) - 1;
          if (v17 == ++v41)
          {
            v41 = v17;
LABEL_187:
            if (v41 < v16)
            {
              if (v41 <= v16)
              {
                v82 = v16;
              }

              else
              {
                v82 = v41;
              }

              while (v82 != v41)
              {
                if (v41 >= *(v38 + 16))
                {
                  goto LABEL_258;
                }

                v83 = v42 + (*(v37 + 32 + 2 * v41) ^ 0xFFFF);
                v42 = HIWORD(v83);
                v40[v41++] = v83;
                if (v16 == v41)
                {
                  goto LABEL_194;
                }
              }

LABEL_256:
              __break(1u);
              goto LABEL_257;
            }

LABEL_194:
            if (v42)
            {
              for (i = *(v38 + 16); i; *(v38 + 16) = --i)
              {
                if (*(v38 + 30 + 2 * i))
                {
                  break;
                }
              }

              v85 = *(v39 + 16);
              if (!HIDWORD(v85))
              {
                _So9NSDecimala__length_setter(v85, &v109);
                v107 = v112;
                v86 = v113;
LABEL_223:
                v108 = v86;
                v92 = _So9NSDecimala__isNegative_getter(&v107);
                _So9NSDecimala__isNegative_setter(v92, &v109);
                goto LABEL_224;
              }

LABEL_272:
              __break(1u);
LABEL_273:
              __break(1u);
LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
            }

LABEL_236:

            lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
            v24 = swift_allocError();
            *v97 = 0;
            swift_willThrow();

LABEL_55:
            *&v111[4] = 0uLL;
            _So9NSDecimala__exponent_setter(0, v111);
            _So9NSDecimala__length_setter(0, v111);
            _So9NSDecimala__isNegative_setter(1, v111);
            _So9NSDecimala__isCompact_setter_0(0, v111);
            _So9NSDecimala__reserved_setter(v111);

            *a1 = *v111;
            v26 = *&v111[16];
            goto LABEL_60;
          }
        }

        while (1)
        {
          if (v41 >= v17)
          {
            goto LABEL_262;
          }

          if (v41 >= *(v38 + 16))
          {
            break;
          }

          v40[v41] = *(v81 + 2 * v41);
          if (++v41 >= v17)
          {
            goto LABEL_187;
          }
        }

        break;
      case 0:
        v116 = 0uLL;
        v117 = 0;
        goto LABEL_59;
      case 1:
        NSDecimal.asVariableLengthInteger()(v105, v104, v28);
        v11 = v50;
        NSDecimal.asVariableLengthInteger()(v31, *(&v31 + 1), v32);
        v52 = v51;
        v53 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v39 = v53;
        *(v53 + 32) = 0;
        v54 = (v53 + 32);
        *(v53 + 16) = 8;
        *(v53 + 40) = 0;
        v17 = *(v11 + 16);
        v16 = *(v52 + 16);
        if (v16 >= v17)
        {
          v55 = *(v11 + 16);
        }

        else
        {
          v55 = *(v52 + 16);
        }

        if (v55)
        {
          if (!v17)
          {
            goto LABEL_292;
          }

          if (!v16)
          {
            goto LABEL_293;
          }

          v56 = ((*(v11 + 32) | 0x10000) - *(v52 + 32)) >> 16;
          *v54 = *(v11 + 32) - *(v52 + 32);
          if (v55 != 1)
          {
            if (v17 == 1)
            {
              goto LABEL_292;
            }

            if (v16 == 1)
            {
              goto LABEL_293;
            }

            v57 = v56 + *(v11 + 34) - *(v52 + 34) + 0xFFFF;
            v56 = HIWORD(v57);
            *(v53 + 34) = v57;
            if (v55 != 2)
            {
              if (v17 == 2)
              {
                goto LABEL_292;
              }

              if (v16 == 2)
              {
                goto LABEL_293;
              }

              v58 = v56 + *(v11 + 36) - *(v52 + 36) + 0xFFFF;
              v56 = HIWORD(v58);
              *(v53 + 36) = v58;
              if (v55 != 3)
              {
                if (v17 == 3)
                {
                  goto LABEL_292;
                }

                if (v16 == 3)
                {
                  goto LABEL_293;
                }

                v59 = v56 + *(v11 + 38) - *(v52 + 38) + 0xFFFF;
                v56 = HIWORD(v59);
                *(v53 + 38) = v59;
                if (v55 != 4)
                {
                  if (v17 == 4)
                  {
                    goto LABEL_292;
                  }

                  if (v16 == 4)
                  {
                    goto LABEL_293;
                  }

                  v60 = v56 + *(v11 + 40) - *(v52 + 40) + 0xFFFF;
                  v56 = HIWORD(v60);
                  *(v53 + 40) = v60;
                  if (v55 != 5)
                  {
                    if (v17 == 5)
                    {
                      goto LABEL_292;
                    }

                    if (v16 == 5)
                    {
                      goto LABEL_293;
                    }

                    v61 = v56 + *(v11 + 42) - *(v52 + 42) + 0xFFFF;
                    v56 = HIWORD(v61);
                    *(v53 + 42) = v61;
                    if (v55 != 6)
                    {
                      if (v17 == 6)
                      {
                        goto LABEL_292;
                      }

                      if (v16 == 6)
                      {
                        goto LABEL_293;
                      }

                      v62 = v56 + *(v11 + 44) - *(v52 + 44) + 0xFFFF;
                      v56 = HIWORD(v62);
                      *(v53 + 44) = v62;
                      if (v55 != 7)
                      {
                        if (v17 == 7)
                        {
                          goto LABEL_292;
                        }

                        if (v16 == 7)
                        {
                          goto LABEL_293;
                        }

                        v63 = v56 + *(v11 + 46) - *(v52 + 46) + 0xFFFF;
                        *(v53 + 46) = v63;
                        if (v55 != 8)
                        {
                          goto LABEL_289;
                        }

                        v56 = HIWORD(v63);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v56 = 1;
        }

        if (v16 >= v17)
        {
          goto LABEL_210;
        }

        v87 = v11 + 32;
        do
        {
          if (v56)
          {
            while (v55 < v17)
            {
              if (v55 >= *(v53 + 16))
              {
                goto LABEL_265;
              }

              v54[v55] = *(v87 + 2 * v55);
              if (++v55 >= v17)
              {
                goto LABEL_210;
              }
            }

            goto LABEL_263;
          }

          if (v55 >= *(v53 + 16))
          {
            goto LABEL_267;
          }

          v56 = (*(v87 + 2 * v55) + 0xFFFF) >> 16;
          v54[v55] = *(v87 + 2 * v55) - 1;
          ++v55;
        }

        while (v17 != v55);
        v55 = v17;
LABEL_210:
        if (v55 >= v16)
        {
LABEL_217:
          if (v56)
          {
            for (j = *(v53 + 16); j; *(v53 + 16) = --j)
            {
              if (*(v53 + 30 + 2 * j))
              {
                break;
              }
            }

            v91 = *(v39 + 16);
            if (!HIDWORD(v91))
            {
              _So9NSDecimala__length_setter(v91, &v109);
              v107 = v114;
              v86 = v115;
              goto LABEL_223;
            }

            goto LABEL_273;
          }

          goto LABEL_236;
        }

        if (v55 <= v16)
        {
          v88 = v16;
        }

        else
        {
          v88 = v55;
        }

        while (v88 != v55)
        {
          if (v55 >= *(v53 + 16))
          {
            goto LABEL_259;
          }

          v89 = v56 + (*(v52 + 32 + 2 * v55) ^ 0xFFFF);
          v56 = HIWORD(v89);
          v54[v55++] = v89;
          if (v16 == v55)
          {
            goto LABEL_217;
          }
        }

LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
        break;
      default:
        goto LABEL_294;
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v107 = v114;
  v108 = v115;
  v7 = _So9NSDecimala__isNegative_getter(&v107);
  _So9NSDecimala__isNegative_setter(v7, &v109);
  NSDecimal.asVariableLengthInteger()(v114, *(&v114 + 1), v115);
  v9 = v8;
  NSDecimal.asVariableLengthInteger()(v112, *(&v112 + 1), v113);
  v11 = v10;
  v12 = *(v9 + 16);
  v13 = *(v10 + 16);
  if (v13 >= v12)
  {
    v14 = *(v9 + 16);
  }

  else
  {
    v14 = *(v10 + 16);
  }

  v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v15 + 16) = 9;
  *(v15 + 32) = 0;
  v18 = (v15 + 32);
  *(v15 + 40) = 0;
  *(v15 + 48) = 0;
  if (!v14)
  {
    if (v12)
    {
      goto LABEL_67;
    }

    LODWORD(v16) = 0;
LABEL_135:
    if (v14 >= v13)
    {
LABEL_144:
      *&v107 = v15;
      if (!v16)
      {
        goto LABEL_155;
      }

      if (v14 <= 9)
      {
        if (v14 < *(v15 + 16))
        {
          v18[v14] = 1;
          *&v107 = v15;
          ++v14;
          goto LABEL_155;
        }

        goto LABEL_271;
      }

LABEL_295:

      lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
      swift_allocError();
      *v103 = 0;
      swift_willThrow();

      swift_unexpectedError();
      __break(1u);
      return;
    }

    if (!v16)
    {
      goto LABEL_148;
    }

    if (v14 < *(v15 + 16))
    {
      LODWORD(v16) = (*(v11 + 32 + 2 * v14) + 1) >> 16;
      v18[v14] = *(v11 + 32 + 2 * v14) + 1;
      if (v14 + 1 != v13)
      {
        v64 = 2 * v14 + 34;
        v65 = (v15 + v64);
        v66 = (v11 + v64);
        ++v14;
        while (v16)
        {
          if (v14 >= *(v15 + 16))
          {
            goto LABEL_268;
          }

          v67 = *v66++;
          LODWORD(v16) = (v67 + 1) >> 16;
          *v65++ = v67 + 1;
          if (v13 == ++v14)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_148;
      }

LABEL_143:
      v14 = v13;
      goto LABEL_144;
    }

    goto LABEL_268;
  }

  if (!v12)
  {
    goto LABEL_282;
  }

  if (!v13)
  {
    goto LABEL_283;
  }

  v17 = *(v9 + 32) + *(v11 + 32);
  v16 = WORD1(v17);
  *v18 = *(v9 + 32) + *(v11 + 32);
  if (v14 == 1)
  {
    goto LABEL_42;
  }

  if (v12 == 1)
  {
    goto LABEL_282;
  }

  if (v13 == 1)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 34) + *(v11 + 34);
  v16 = WORD1(v17);
  *(v15 + 34) = v17;
  if (v14 == 2)
  {
    goto LABEL_42;
  }

  if (v12 == 2)
  {
    goto LABEL_282;
  }

  if (v13 == 2)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 36) + *(v11 + 36);
  v16 = WORD1(v17);
  *(v15 + 36) = v17;
  if (v14 == 3)
  {
    goto LABEL_42;
  }

  if (v12 == 3)
  {
    goto LABEL_282;
  }

  if (v13 == 3)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 38) + *(v11 + 38);
  v16 = WORD1(v17);
  *(v15 + 38) = v17;
  if (v14 == 4)
  {
    goto LABEL_42;
  }

  if (v12 == 4)
  {
    goto LABEL_282;
  }

  if (v13 == 4)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 40) + *(v11 + 40);
  v16 = WORD1(v17);
  *(v15 + 40) = v17;
  if (v14 == 5)
  {
    goto LABEL_42;
  }

  if (v12 == 5)
  {
    goto LABEL_282;
  }

  if (v13 == 5)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 42) + *(v11 + 42);
  v16 = WORD1(v17);
  *(v15 + 42) = v17;
  if (v14 == 6)
  {
    goto LABEL_42;
  }

  if (v12 == 6)
  {
    goto LABEL_282;
  }

  if (v13 == 6)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 44) + *(v11 + 44);
  v16 = WORD1(v17);
  *(v15 + 44) = v17;
  if (v14 == 7)
  {
    goto LABEL_42;
  }

  if (v12 == 7)
  {
    goto LABEL_282;
  }

  if (v13 == 7)
  {
    goto LABEL_283;
  }

  v17 = v16 + *(v9 + 46) + *(v11 + 46);
  v16 = WORD1(v17);
  *(v15 + 46) = v17;
  if (v14 == 8)
  {
    goto LABEL_42;
  }

  if (v12 == 8)
  {
    goto LABEL_282;
  }

  if (v13 == 8)
  {
    goto LABEL_283;
  }

  v19 = *(v11 + 48);
  v17 = v16 + *(v9 + 48) + v19;
  *(v15 + 48) = v16 + *(v9 + 48) + v19;
  if (v14 != 9)
  {
    if (v12 == 9)
    {
LABEL_282:
      __break(1u);
      goto LABEL_283;
    }

    if (v13 != 9)
    {
      __break(1u);
      goto LABEL_282;
    }

LABEL_283:
    __break(1u);
LABEL_284:
    if (v17 != 8)
    {
      if (v16 != 8)
      {
        __break(1u);
        goto LABEL_287;
      }

LABEL_288:
      __break(1u);
LABEL_289:
      if (v17 != 8)
      {
        if (v16 != 8)
        {
          __break(1u);
          goto LABEL_292;
        }

LABEL_293:
        __break(1u);
LABEL_294:
        type metadata accessor for NSComparisonResult(0);
        *&v107 = v11;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_295;
      }

LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  LODWORD(v16) = WORD1(v17);
LABEL_42:
  if (v13 >= v12)
  {
    goto LABEL_135;
  }

  if (v17 >= 0x10000)
  {
    if (v14 > 8)
    {
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    LODWORD(v16) = (*(v9 + 32 + 2 * v14) + 1) >> 16;
    v18[v14] = *(v9 + 32 + 2 * v14) + 1;
    if (v14 + 1 != v12)
    {
      v20 = 2 * v14 + 34;
      v21 = (v15 + v20);
      v22 = (v9 + v20);
      ++v14;
      while (v16)
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_269;
        }

        v23 = *v22++;
        LODWORD(v16) = (v23 + 1) >> 16;
        *v21++ = v23 + 1;
        if (v12 == ++v14)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_67;
    }

LABEL_50:
    v14 = v12;
    goto LABEL_135;
  }

LABEL_67:
  if (v14 <= v12)
  {
    v34 = v12;
  }

  else
  {
    v34 = v14;
  }

  do
  {
    if (v34 == v14)
    {
      goto LABEL_252;
    }

    if (v14 >= *(v15 + 16))
    {
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

    *(v15 + 2 * v14 + 32) = *(v9 + 32 + 2 * v14);
    ++v14;
  }

  while (v14 < v12);
  if (v14 < v13)
  {
LABEL_148:
    if (v14 <= v13)
    {
      v68 = v13;
    }

    else
    {
      v68 = v14;
    }

    while (v68 != v14)
    {
      if (v14 >= *(v15 + 16))
      {
        goto LABEL_255;
      }

      *(v15 + 2 * v14 + 32) = *(v11 + 32 + 2 * v14);
      if (++v14 >= v13)
      {
        goto LABEL_154;
      }
    }

    goto LABEL_254;
  }

LABEL_154:
  *&v107 = v15;
LABEL_155:
  v69 = *(v15 + 16);
  v70 = v69 - v14;
  if (__OFSUB__(v69, v14))
  {
    goto LABEL_270;
  }

  v71 = &v107;
  specialized RangeReplaceableCollection<>.removeLast(_:)(v70);

  v106 = v107;
  v72 = *(v107 + 16);
  if (v72 <= 8)
  {
    v39 = v107;
    goto LABEL_166;
  }

  if (v72 == 9)
  {
    v73 = 0;
    LODWORD(v74) = 0;
    v75 = 0;
    v39 = v106;
    goto LABEL_159;
  }

  v71 = 0;
  LODWORD(v74) = 0;
  v75 = 0;
  v76 = v106;
  do
  {
    if (v74)
    {
      v75 = 1;
    }

    v39 = specialized static NSDecimal._integerDivideByShort(_:_:)(v76, 0x2710u);
    v74 = v80;

    v73 = v71 + 4;
    if (__OFADD__(v71, 4))
    {
      goto LABEL_261;
    }

    v79 = *(v39 + 16);
    v71 += 4;
    v76 = v39;
  }

  while (v79 > 9);
  if (v79 == 9)
  {
LABEL_159:
    v76 = v39;
    do
    {
      if (v74)
      {
        v75 = 1;
      }

      v39 = specialized static NSDecimal._integerDivideByShort(_:_:)(v76, 0xAu);
      v74 = v77;

      v78 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        goto LABEL_260;
      }

      v79 = *(v39 + 16);
      ++v73;
      v76 = v39;
    }

    while (v79 > 8);
    v73 = v78;
  }

  if (!v75)
  {
    if (v74)
    {
      goto LABEL_228;
    }

    goto LABEL_243;
  }

  if (!v74 || v74 == 5)
  {
    v74 = (v74 + 1);
  }

LABEL_228:
  if (v74 > 4)
  {
    if (v79)
    {
      v74 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v74 + 16) = v79;
      bzero((v74 + 32), 2 * v79);
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = v95 + *(v39 + 32 + 2 * v94);
        v95 = HIWORD(v96);
        *(v74 + 2 * v94++ + 32) = v96;
      }

      while (v79 != v94);
      v71 = v79;
      if (v96 < 0x10000)
      {
LABEL_242:

        goto LABEL_243;
      }
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
      v71 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v71 == 1)
      {
        goto LABEL_236;
      }
    }

    v98 = *(v74 + 24);
    v76 = v71 + 1;
    if (v71 >= v98 >> 1)
    {
      goto LABEL_278;
    }

    goto LABEL_238;
  }

LABEL_243:

  while (1)
  {
    v107 = v109;
    v108 = v110;
    v100 = _So9NSDecimala__exponent_getter(&v107);
    if (v73 < 0xFFFFFFFF80000000)
    {
      goto LABEL_274;
    }

    if (v73 > 0x7FFFFFFF)
    {
      goto LABEL_275;
    }

    if (__OFADD__(v100, v73))
    {
      goto LABEL_276;
    }

    if (v100 + v73 > 127)
    {

      goto LABEL_54;
    }

    v107 = v109;
    v108 = v110;
    v101 = _So9NSDecimala__exponent_getter(&v107);
    v99 = __OFADD__(v101, v73);
    v102 = (v101 + v73);
    if (!v99)
    {
      break;
    }

    __break(1u);
LABEL_278:
    v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v76, 1, v74);
LABEL_238:
    *(v74 + 16) = v76;
    *(v74 + 2 * v71 + 32) = 1;
    if (*(v74 + 16) >= v79)
    {
      goto LABEL_242;
    }

    v79 = 0;
    v76 = specialized static NSDecimal._integerDivideByShort(_:_:)(v74, 0xAu);

    v99 = __OFADD__(v73++, 1);
    if (v99)
    {
      __break(1u);
      goto LABEL_242;
    }
  }

  _So9NSDecimala__exponent_setter(v102, &v109);
  v72 = *(v39 + 16);
  if (HIDWORD(v72))
  {
    __break(1u);
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

LABEL_166:
  _So9NSDecimala__length_setter(v72, &v109);
LABEL_224:
  NSDecimal.copyVariableLengthInteger(_:)(v39);
  v24 = v93;

  if (v93)
  {
    goto LABEL_55;
  }

  _So9NSDecimala__isCompact_setter_0(0, &v109);
  NSDecimal.compact()();
  v116 = v109;
  v27 = v110;
LABEL_58:
  v117 = v27;
LABEL_59:
  *a1 = v116;
  v26 = v117;
LABEL_60:
  *(a1 + 16) = v26;
}